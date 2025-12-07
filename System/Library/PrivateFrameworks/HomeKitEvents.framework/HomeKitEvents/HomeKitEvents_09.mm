uint64_t sub_2541FA6F8(uint64_t a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90F8, &unk_25425CBB0);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_254148218(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_2541FBE9C(v11, v4);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_254148218((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_2541FBF0C(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_2541FA910(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2541FA978(uint64_t a1, uint64_t a2)
{
  v3 = sub_25424DAA8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LoggedObject.logger.getter(a2, &off_28663A688, v6);
  v7 = sub_25424DA88();
  v8 = sub_25424E408();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_254124000, v7, v8, "Connection invalidated", v9, 2u);
    MEMORY[0x259C07330](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 24);
    v12 = *(result + 32);
    sub_25412DCB8(v11, v12);

    if (v11)
    {
      v11(result);
      return sub_25412DC98(v11, v12);
    }
  }

  return result;
}

uint64_t sub_2541FAB24(uint64_t a1, uint64_t a2)
{
  v3 = sub_25424DAA8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LoggedObject.logger.getter(a2, &off_28663A688, v6);
  v7 = sub_25424DA88();
  v8 = sub_25424E428();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_254124000, v7, v8, "Connection interrupted", v9, 2u);
    MEMORY[0x259C07330](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 40);
    v12 = *(result + 48);
    sub_25412DCB8(v11, v12);

    if (v11)
    {
      v11(result);
      return sub_25412DC98(v11, v12);
    }
  }

  return result;
}

void sub_2541FACD0()
{
  if (!v0[2])
  {
    v1 = *v0;
    v2 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v3 = sub_25424DCA8();
    v4 = [v2 initWithMachServiceName:v3 options:0];

    v5 = objc_opt_self();
    v6 = [v5 interfaceWithProtocol_];
    [v4 setExportedInterface_];

    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v1;
    v19 = sub_2541FBFA0;
    v20 = v8;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_2541FA910;
    v18 = &block_descriptor_112;
    v9 = _Block_copy(&v15);

    [v4 setInvalidationHandler_];
    _Block_release(v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v1;
    v19 = sub_2541FBFA4;
    v20 = v11;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_2541FA910;
    v18 = &block_descriptor_120;
    v12 = _Block_copy(&v15);

    [v4 setInterruptionHandler_];
    _Block_release(v12);
    v13 = [v5 interfaceWithProtocol_];
    [v4 setRemoteObjectInterface_];

    [v4 resume];
    v14 = v0[2];
    v0[2] = v4;
  }
}

void sub_2541FAFB4()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = *v0;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v11 = sub_2541FBE80;
    v12 = v3;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v9 = sub_2541FB128;
    v10 = &block_descriptor_104;
    v4 = _Block_copy(&aBlock);
    v5 = v1;

    v6 = [v5 remoteObjectProxyWithErrorHandler_];
    _Block_release(v4);

    sub_25424E5D8();
    swift_unknownObjectRelease();
    sub_25412DCA8(&aBlock, &v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB9D8, &unk_25425FCD0);
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

void sub_2541FB128(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_2541FB1B8()
{
  if (!v0[2])
  {
    v1 = *v0;
    v2 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v3 = sub_25424DCA8();
    v4 = [v2 initWithMachServiceName:v3 options:0];

    v5 = objc_opt_self();
    v6 = [v5 interfaceWithProtocol_];
    [v4 setExportedInterface_];

    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v1;
    v24 = sub_2541FBFA0;
    v25 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_2541FA910;
    v23 = &block_descriptor_90;
    v9 = _Block_copy(&aBlock);

    [v4 setInvalidationHandler_];
    _Block_release(v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v1;
    v24 = sub_2541FBFA4;
    v25 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_2541FA910;
    v23 = &block_descriptor_98;
    v12 = _Block_copy(&aBlock);

    [v4 setInterruptionHandler_];
    _Block_release(v12);
    v13 = [v5 interfaceWithProtocol_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8FD0, &qword_254254308);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25425CD20;
    *(inited + 32) = sub_254148D7C(0, &qword_27F5BB9B8, 0x277CBEAC0);
    *(inited + 40) = sub_254148D7C(0, &qword_27F5BB9C0, 0x277CCAD78);
    *(inited + 48) = sub_254148D7C(0, &qword_27F5BB9C8, 0x277CBEA60);
    *(inited + 56) = sub_254148D7C(0, &qword_27F5BB9D0, 0x277CCABB0);
    *(inited + 64) = sub_254148D7C(0, &qword_27F5B9238, 0x277CBEA90);
    sub_2541FA5E8(inited);
    v15 = objc_allocWithZone(MEMORY[0x277CBEB98]);
    v16 = sub_25424DF88();

    v17 = [v15 initWithArray_];

    aBlock = 0;
    sub_25424E2B8();
    if (aBlock)
    {
      swift_setDeallocating();

      v18 = sub_25424E2A8();

      [v13 setClasses:v18 forSelector:sel_hmvutilDumpLocalDatabaseWithReply_ argumentIndex:0 ofReply:1];

      [v4 setRemoteObjectInterface_];
      [v4 resume];

      v19 = v0[2];
      v0[2] = v4;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2541FB634()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = *v0;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v11 = sub_2541FBFC8;
    v12 = v3;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v9 = sub_2541FB128;
    v10 = &block_descriptor_82;
    v4 = _Block_copy(&aBlock);
    v5 = v1;

    v6 = [v5 remoteObjectProxyWithErrorHandler_];
    _Block_release(v4);

    sub_25424E5D8();
    swift_unknownObjectRelease();
    sub_25412DCA8(&aBlock, &v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB9B0, &unk_25425FCC0);
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

void sub_2541FB7CC()
{
  if (!v0[2])
  {
    v1 = *v0;
    v2 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v3 = sub_25424DCA8();
    v4 = [v2 initWithMachServiceName:v3 options:0];

    v5 = objc_opt_self();
    v6 = [v5 interfaceWithProtocol_];
    [v4 setExportedInterface_];

    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v1;
    v19 = sub_2541FBE70;
    v20 = v8;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_2541FA910;
    v18 = &block_descriptor_69;
    v9 = _Block_copy(&v15);

    [v4 setInvalidationHandler_];
    _Block_release(v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v1;
    v19 = sub_2541FBE78;
    v20 = v11;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_2541FA910;
    v18 = &block_descriptor_76;
    v12 = _Block_copy(&v15);

    [v4 setInterruptionHandler_];
    _Block_release(v12);
    v13 = [v5 interfaceWithProtocol_];
    [v4 setRemoteObjectInterface_];

    [v4 resume];
    v14 = v0[2];
    v0[2] = v4;
  }
}

void sub_2541FBAB0()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = *v0;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v11 = sub_2541FBFC8;
    v12 = v3;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v9 = sub_2541FB128;
    v10 = &block_descriptor_14;
    v4 = _Block_copy(&aBlock);
    v5 = v1;

    v6 = [v5 remoteObjectProxyWithErrorHandler_];
    _Block_release(v4);

    sub_25424E5D8();
    swift_unknownObjectRelease();
    sub_25412DCA8(&aBlock, &v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB9A8, qword_25425FCA8);
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2541FBC24(void *a1, uint64_t a2)
{
  v4 = sub_25424DAA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LoggedObject.logger.getter(a2, &off_28663A688, v7);
  v8 = a1;
  v9 = sub_25424DA88();
  v10 = sub_25424E428();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    v13 = a1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_254124000, v9, v10, "Failed to construct proxy: %{public}@", v11, 0xCu);
    sub_2541A4278(v12);
    MEMORY[0x259C07330](v12, -1, -1);
    MEMORY[0x259C07330](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2541FBDD0()
{
  v1 = v0[2];
  if (v1)
  {
    [v1 invalidate];
    v2 = v0[2];
  }

  else
  {
    v2 = 0;
  }

  sub_25412DC98(v0[3], v0[4]);
  sub_25412DC98(v0[5], v0[6]);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2541FBE9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90F8, &unk_25425CBB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2541FBF0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DatabaseConfiguration.configure<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = *v4;
  *(v5 + 64) = *(v4 + 16);
  return MEMORY[0x2822009F8](sub_2541FC000, 0, 0);
}

uint64_t sub_2541FC000()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  if (v1 < 0)
  {
    v6 = *(v0 + 64);
    if (v1)
    {
      v7 = &selRef_sharedCloudDatabase;
    }

    else
    {
      v7 = &selRef_privateCloudDatabase;
    }

    *(v0 + 80) = [*(v0 + 48) *v7];
    if (v6)
    {
      v8 = *(v0 + 64);
      v9 = v8;
    }

    else
    {
      v9 = _s13HomeKitEvents21DatabaseConfigurationO21defaultOperationGroup9containerSo011CKOperationH0CSo11CKContainerC_tFZ_0(v2);
      v8 = 0;
    }

    *(v0 + 88) = v9;
    v10 = *(v0 + 40);
    v11 = swift_task_alloc();
    *(v0 + 96) = v11;
    v12 = *(v0 + 24);
    *(v11 + 16) = v10;
    *(v11 + 24) = v12;
    v13 = v8;
    v14 = v9;
    v15 = swift_task_alloc();
    *(v0 + 104) = v15;
    *v15 = v0;
    v15[1] = sub_2541FC328;
    v16 = *(v0 + 40);
    v17 = *(v0 + 16);

    return MEMORY[0x28210DEC0](v17, 0, v9, &unk_25425FCF0, v11, v16);
  }

  else
  {
    v18 = (*(v0 + 24) + **(v0 + 24));
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_2541FC234;
    v4 = *(v0 + 16);

    return v18(v4, v2);
  }
}

uint64_t sub_2541FC234()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2541FC328()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_25414CF48;
  }

  else
  {

    v3 = sub_2541FC44C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2541FC44C()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

void DatabaseConfiguration.scope.getter(char *a1@<X8>)
{
  v3 = *(v1 + 8);
  if (v3 < 0)
  {
    v6 = v3 & 1;
    goto LABEL_7;
  }

  v4 = *v1;
  v5 = [*v1 scope];
  if (v5 == 2)
  {
    v6 = 0;
LABEL_7:
    *a1 = v6;
    return;
  }

  if (v5 == 3)
  {
    v6 = 1;
    goto LABEL_7;
  }

  sub_25424E688();

  [v4 0x279771478];
  v7 = sub_25424E468();
  MEMORY[0x259C05CA0](v7);

  sub_25424E858();
  __break(1u);
}

uint64_t DatabaseConfiguration.configure<A, B>(isolatedTo:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  *(v8 + 72) = *v7;
  *(v8 + 88) = *(v7 + 16);
  v10 = sub_25424E058();
  *(v8 + 96) = v10;
  *(v8 + 104) = v9;

  return MEMORY[0x2822009F8](sub_2541FC65C, v10, v9);
}

uint64_t sub_2541FC65C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  if (v1 < 0)
  {
    v7 = *(v0 + 88);
    if (v1)
    {
      v8 = &selRef_sharedCloudDatabase;
    }

    else
    {
      v8 = &selRef_privateCloudDatabase;
    }

    *(v0 + 120) = [*(v0 + 72) *v8];
    if (v7)
    {
      v9 = *(v0 + 88);
      v10 = v9;
    }

    else
    {
      v10 = _s13HomeKitEvents21DatabaseConfigurationO21defaultOperationGroup9containerSo011CKOperationH0CSo11CKContainerC_tFZ_0(v2);
      v9 = 0;
    }

    *(v0 + 128) = v10;
    v11 = *(v0 + 64);
    v12 = *(v0 + 24);
    v13 = swift_task_alloc();
    *(v0 + 136) = v13;
    v14 = *(v0 + 32);
    *(v13 + 16) = *(v0 + 48);
    *(v13 + 32) = v11;
    *(v13 + 40) = v14;
    *(v13 + 56) = v12;
    v15 = v9;
    v16 = v10;
    v17 = swift_task_alloc();
    *(v0 + 144) = v17;
    *v17 = v0;
    v17[1] = sub_2541FC998;
    v18 = *(v0 + 56);
    v19 = *(v0 + 16);

    return MEMORY[0x28210DEC0](v19, 0, v10, &unk_25425FD08, v13, v18);
  }

  else
  {
    v20 = (*(v0 + 32) + **(v0 + 32));
    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    *v3 = v0;
    v3[1] = sub_2541FC8A4;
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);

    return v20(v4, v5, v2);
  }
}

uint64_t sub_2541FC8A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2541FC998()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_2541FCB24;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_2541FCABC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2541FCABC()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2541FCB24()
{
  v1 = v0[16];
  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2541FCBA4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v11 = (a3 + *a3);
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_25412F724;

  return v11(a1, a5, a2);
}

unint64_t DatabaseConfiguration.description.getter()
{
  v1 = *v0;
  if ((*(v0 + 8) & 0x8000000000000000) != 0)
  {
    v3 = *(v0 + 16);
    v10 = 0;
    v11 = 0xE000000000000000;
    sub_25424E688();
    MEMORY[0x259C05CA0](0xD000000000000018, 0x8000000254251610);
    v4 = sub_2541FCF50(v1);
    MEMORY[0x259C05CA0](v4);

    MEMORY[0x259C05CA0](0x3D65706F6373202CLL, 0xE800000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB9E0, &qword_25425FD10);
    v5 = sub_25424DD08();
    MEMORY[0x259C05CA0](v5);

    MEMORY[0x259C05CA0](3022906, 0xE300000000000000);
    v6 = sub_25424DD08();
    MEMORY[0x259C05CA0](v6);

    MEMORY[0x259C05CA0](62, 0xE100000000000000);
    MEMORY[0x259C05CA0](60, 0xE100000000000000);

    MEMORY[0x259C05CA0](0xD000000000000011, 0x8000000254251630);
    v7 = sub_2541FD2B8(v3);
    MEMORY[0x259C05CA0](v7);

    MEMORY[0x259C05CA0](41, 0xE100000000000000);
  }

  else
  {
    sub_25424E688();

    v10 = 0xD000000000000015;
    v11 = 0x8000000254251650;
    v2 = sub_2541FD140(v1);
    MEMORY[0x259C05CA0](v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB9E8, &qword_25425FD18);
  v8 = sub_25424DD08();
  MEMORY[0x259C05CA0](v8);

  MEMORY[0x259C05CA0](8250, 0xE200000000000000);
  MEMORY[0x259C05CA0](v10, v11);

  MEMORY[0x259C05CA0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_2541FCF50(void *a1)
{
  if (!a1)
  {
    return 7104878;
  }

  v1 = a1;
  sub_25424E688();

  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA00, &qword_25425FE00);
  v2 = sub_25424DD08();
  MEMORY[0x259C05CA0](v2);

  MEMORY[0x259C05CA0](0x69746E656469203ALL, 0xEE00223D72656966);
  v3 = [v1 containerID];
  v4 = [v3 containerIdentifier];

  v5 = sub_25424DCB8();
  v7 = v6;

  MEMORY[0x259C05CA0](v5, v7);

  MEMORY[0x259C05CA0](0x7269766E65202C22, 0xEF3D746E656D6E6FLL);
  v8 = [v1 containerID];
  [v8 environment];

  v9 = CKContainerEnvironmentString();
  v10 = sub_25424DCB8();
  v12 = v11;

  MEMORY[0x259C05CA0](v10, v12);

  MEMORY[0x259C05CA0](62, 0xE100000000000000);

  return 60;
}

uint64_t sub_2541FD140(void *a1)
{
  sub_25424E688();

  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB9F0, &qword_25425FDF0);
  v2 = sub_25424DD08();
  MEMORY[0x259C05CA0](v2);

  MEMORY[0x259C05CA0](0x3D65706F6373203ALL, 0xE800000000000000);
  [a1 scope];
  v3 = CKDatabaseScopeString();
  v4 = sub_25424DCB8();
  v6 = v5;

  MEMORY[0x259C05CA0](v4, v6);

  MEMORY[0x259C05CA0](0x6961746E6F63202CLL, 0xEC0000003D72656ELL);
  v7 = [a1 container];
  v8 = sub_2541FCF50(v7);
  v10 = v9;

  MEMORY[0x259C05CA0](v8, v10);

  MEMORY[0x259C05CA0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_2541FD2B8(void *a1)
{
  if (!a1)
  {
    return 7104878;
  }

  v1 = 0xE000000000000000;
  v2 = a1;
  sub_25424E688();

  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB9F8, &qword_25425FDF8);
  v3 = sub_25424DD08();
  MEMORY[0x259C05CA0](v3);

  MEMORY[0x259C05CA0](0x3D6469203ALL, 0xE500000000000000);
  v4 = [v2 operationGroupID];
  v5 = sub_25424DCB8();
  v7 = v6;

  MEMORY[0x259C05CA0](v5, v7);

  MEMORY[0x259C05CA0](0x223D656D616E202CLL, 0xE800000000000000);
  v8 = [v2 name];
  if (v8)
  {
    v9 = v8;
    v10 = sub_25424DCB8();
    v1 = v11;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x259C05CA0](v10, v1);

  MEMORY[0x259C05CA0](15906, 0xE200000000000000);

  return 60;
}

id _s13HomeKitEvents21DatabaseConfigurationO21defaultOperationGroup9containerSo011CKOperationH0CSo11CKContainerC_tFZ_0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBC4F8]) init];
  v15[2] = 0;
  v15[3] = 0xE000000000000000;
  v15[0] = 47;
  v15[1] = 0xE100000000000000;
  v14[2] = v15;
  v3 = sub_2541D870C(0x7FFFFFFFFFFFFFFFLL, 1, sub_254148F24, v14, 0xD000000000000029, 0x8000000254250550, "eryMetricsObserver");
  if (v3[2])
  {
    v4 = v3[4];
    v5 = v3[5];
    v6 = v3[6];
    v7 = v3[7];

    v8 = MEMORY[0x259C05BF0](v4, v5, v6, v7);
    v10 = v9;

    MEMORY[0x259C05CA0](v8, v10);

    v11 = sub_25424DCA8();

    [v2 setName_];

    result = [v2 defaultConfiguration];
    if (result)
    {
      v13 = result;
      [result setContainer_];

      return v2;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2541FD5E0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25412F818;

  return sub_254168384(a1, a2, v6);
}

uint64_t sub_2541FD6A4(uint64_t a1, uint64_t a2)
{
  v6 = v2[5];
  v8 = v2[6];
  v7 = v2[7];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25412F724;

  return sub_2541FCBA4(a1, a2, v6, v8, v7);
}

uint64_t sub_2541FD78C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_2541FD7DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static HMVCommands.createEvent(eventData:scope:uploadOnly:saveOnly:skipZoneCreation:)(uint64_t a1, uint64_t a2, _BYTE *a3, char a4, char a5, char a6)
{
  *(v6 + 66) = a6;
  *(v6 + 65) = a5;
  *(v6 + 64) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 67) = *a3;
  return MEMORY[0x2822009F8](sub_2541FD88C, 0, 0);
}

uint64_t sub_2541FD88C()
{
  v1 = *(v0 + 67);
  v2 = *(v0 + 66);
  v3 = *(v0 + 65);
  v4 = *(v0 + 64);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9270, &qword_254253EF0);
  v7 = swift_allocObject();
  *(v0 + 32) = v7;
  *(v7 + 16) = xmmword_254254360;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  sub_254140660(v5, v6);
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  *(v8 + 25) = v4;
  *(v8 + 26) = v3;
  *(v8 + 27) = v2;
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  v9[1] = sub_2541FD9D8;

  return sub_25412FDA0(sub_25412FDA0, sub_2541FDDC4, v8);
}

uint64_t sub_2541FD9D8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2541FDAFC;
  }

  else
  {

    v2 = sub_2541B2DAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2541FDAFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static HMVCommands.createEvents(eventsData:scope:uploadOnly:saveOnly:skipZoneCreation:)(uint64_t a1, _BYTE *a2, char a3, char a4, char a5)
{
  *(v5 + 50) = a5;
  *(v5 + 49) = a4;
  *(v5 + 48) = a3;
  *(v5 + 16) = a1;
  *(v5 + 51) = *a2;
  return MEMORY[0x2822009F8](sub_2541FDB9C, 0, 0);
}

uint64_t sub_2541FDB9C()
{
  v1 = *(v0 + 51);
  v2 = *(v0 + 50);
  v3 = *(v0 + 49);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  *(v6 + 25) = v4;
  *(v6 + 26) = v3;
  *(v6 + 27) = v2;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = sub_25412F910;

  return (sub_25412FDA0)();
}

void sub_2541FDCA0(void *a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, char a7)
{
  v13 = sub_25424DF88();
  v15[4] = sub_2541FDFD8;
  v15[5] = a2;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_2541ED26C;
  v15[3] = &block_descriptor_15;
  v14 = _Block_copy(v15);

  [a1 hmvutilCreateEventsWithEventsData:v13 scope:(a4 & 1u) + 1 uploadOnly:a5 & 1 saveOnly:a6 & 1 skipZoneCreation:a7 & 1 reply:v14];

  _Block_release(v14);
}

uint64_t sub_2541FDDE0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = sub_25424E128();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a2;
    v9[5] = sub_25412F60C;
    v9[6] = v7;

    v10 = a1;
    v11 = &unk_25425FE18;
    v12 = v6;
    v13 = v9;
  }

  else
  {
    v14 = sub_25424E128();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a2;
    v15[5] = sub_25412F540;
    v15[6] = 0;

    v11 = &unk_254252CB0;
    v12 = v6;
    v13 = v15;
  }

  sub_25419CC1C(0, 0, v12, v11, v13);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2541FE020()
{
  result = qword_27F5BBA08;
  if (!qword_27F5BBA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBA08);
  }

  return result;
}

uint64_t static HMVCommands.uploadEvents(batchCount:)(uint64_t a1, char a2)
{
  *(v2 + 48) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2541FE098, 0, 0);
}

void sub_2541FE098()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  if ((v1 & 1) != 0 || v2 >= 1)
  {
    v3 = swift_task_alloc();
    *(v0 + 24) = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1 & 1;
    v4 = swift_task_alloc();
    *(v0 + 32) = v4;
    *v4 = v0;
    v4[1] = sub_25412F910;

    sub_25412FDA0(sub_25412FDA0, sub_2541FE27C, v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_2541FE18C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_25424E308();
  }

  v8[4] = sub_2541FE480;
  v8[5] = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2541ED26C;
  v8[3] = &block_descriptor_16;
  v7 = _Block_copy(v8);

  [a1 hmvutilUploadEventsWithBatchCount:v6 reply:v7];
  _Block_release(v7);
}

uint64_t sub_2541FE288(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = sub_25424E128();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a2;
    v9[5] = sub_25412F60C;
    v9[6] = v7;

    v10 = a1;
    v11 = &unk_254254328;
    v12 = v6;
    v13 = v9;
  }

  else
  {
    v14 = sub_25424E128();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a2;
    v15[5] = sub_25412F540;
    v15[6] = 0;

    v11 = &unk_254252CB0;
    v12 = v6;
    v13 = v15;
  }

  sub_25419CC1C(0, 0, v12, v11, v13);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2541FE4A0(void *a1, uint64_t a2, void *a3, char a4)
{
  v5 = a3;
  if (a3)
  {
    sub_25424D948();
    v5 = sub_25424DF88();
  }

  v9[4] = sub_2541FF498;
  v9[5] = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2541ED26C;
  v9[3] = &block_descriptor_10;
  v8 = _Block_copy(v9);

  [a1 clearEventsWithHomes:v5 deleteCloudZones:a4 & 1 reply:v8];
  _Block_release(v8);
}

uint64_t sub_2541FE5A0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = sub_25424E128();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a2;
    v9[5] = sub_25412F60C;
    v9[6] = v7;

    v10 = a1;
    v11 = &unk_25425FF10;
    v12 = v6;
    v13 = v9;
  }

  else
  {
    v14 = sub_25424E128();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a2;
    v15[5] = sub_25412F540;
    v15[6] = 0;

    v11 = &unk_254252CB0;
    v12 = v6;
    v13 = v15;
  }

  sub_25419CC1C(0, 0, v12, v11, v13);
}

void sub_2541FE798(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_25424D948();
  sub_25414BDD4();
  v10 = sub_25424E2A8();
  v11 = sub_25424E2A8();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a2;
  v14[4] = sub_2541FF090;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2541FF2B8;
  v14[3] = &block_descriptor_17;
  v13 = _Block_copy(v14);

  [a1 clearEnergyKitDataWithPrivateHomeIdentifiers:v10 sharedHomeIdentifiers:v11 deletePrivateCloudZones:a5 & 1 reply:v13];
  _Block_release(v13);
}

uint64_t sub_2541FE900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v90 - v9;
  v11 = sub_25424D948();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v96 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v104 = &v90 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v102 = &v90 - v18;
  MEMORY[0x28223BE20](v17);
  v100 = &v90 - v19;
  v20 = *(a2 + 16);
  v21 = *(a3 + 16);
  v22 = v20 + v21;
  if (!__OFADD__(v20, v21))
  {
    v91 = v10;
    v92 = a4;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA10, &qword_25425FF00);
    v24 = sub_25414BDD4();
    v25 = MEMORY[0x259C05A50](v22, v11, v23, v24);

    v27 = sub_2541FF09C(v26, a2);
    v28 = 0;
    v30 = v27 + 56;
    v29 = *(v27 + 56);
    v101 = v27;
    v31 = 1 << *(v27 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & v29;
    v34 = (v31 + 63) >> 6;
    v106 = v12 + 16;
    v98 = (v12 + 8);
    v99 = v12 + 32;
    v35 = v102;
    v93 = a1;
    v94 = v11;
    v97 = v12;
    v95 = v27 + 56;
    while (v33)
    {
      v40 = v28;
LABEL_11:
      v41 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v42 = v100;
      v43 = *(v101 + 48);
      v103 = *(v12 + 72);
      v105 = *(v12 + 16);
      v105(v100, v43 + v103 * (v41 | (v40 << 6)), v11);
      (*(v12 + 32))(v35, v42, v11);
      if (*(a1 + 16) && (v44 = sub_2542209D4(v35), (v45 & 1) != 0))
      {
        v46 = *(*(a1 + 56) + 8 * v44);
        v47 = v96;
        v105(v96, v35, v11);
        v48 = v46;
        v49 = v46;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v107 = v25;
        v52 = sub_2542209D4(v47);
        v53 = v25[2];
        v54 = (v51 & 1) == 0;
        v55 = v53 + v54;
        if (__OFADD__(v53, v54))
        {
          goto LABEL_37;
        }

        v56 = v51;
        if (v25[3] >= v55)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_254223284();
          }
        }

        else
        {
          sub_254221E34(v55, isUniquelyReferenced_nonNull_native);
          v57 = sub_2542209D4(v96);
          if ((v56 & 1) != (v58 & 1))
          {
            goto LABEL_41;
          }

          v52 = v57;
        }

        v11 = v94;
        v25 = v107;
        if (v56)
        {
          v75 = v107[7] + 16 * v52;
          v76 = *v75;
          v77 = *(v75 + 8);
          *v75 = v46;
          *(v75 + 8) = 1;
          sub_2541A1114(v76, v77);

          v78 = *v98;
          (*v98)(v96, v11);
          v35 = v102;
          v78(v102, v11);
        }

        else
        {
          v107[(v52 >> 6) + 8] |= 1 << v52;
          v79 = v96;
          v105((v25[6] + v52 * v103), v96, v11);
          v80 = v25[7] + 16 * v52;
          *v80 = v46;
          *(v80 + 8) = 1;

          v81 = *v98;
          (*v98)(v79, v11);
          v35 = v102;
          v81(v102, v11);
          v82 = v25[2];
          v65 = __OFADD__(v82, 1);
          v83 = v82 + 1;
          if (v65)
          {
            goto LABEL_39;
          }

          v25[2] = v83;
        }

        v28 = v40;
        a1 = v93;
        v12 = v97;
      }

      else
      {
        v59 = v104;
        v105(v104, v35, v11);
        v60 = swift_isUniquelyReferenced_nonNull_native();
        v107 = v25;
        v61 = sub_2542209D4(v59);
        v63 = v25[2];
        v64 = (v62 & 1) == 0;
        v65 = __OFADD__(v63, v64);
        v66 = v63 + v64;
        if (v65)
        {
          goto LABEL_35;
        }

        v67 = v62;
        if (v25[3] >= v66)
        {
          if ((v60 & 1) == 0)
          {
            v84 = v61;
            sub_254223284();
            v61 = v84;
          }
        }

        else
        {
          sub_254221E34(v66, v60);
          v61 = sub_2542209D4(v104);
          if ((v67 & 1) != (v68 & 1))
          {
            goto LABEL_40;
          }
        }

        v35 = v102;
        v25 = v107;
        if (v67)
        {
          v36 = v107[7] + 16 * v61;
          v37 = *v36;
          v38 = *(v36 + 8);
          *v36 = 0;
          *(v36 + 8) = 0;
          sub_2541A1114(v37, v38);
          v39 = *v98;
          (*v98)(v104, v11);
          v39(v35, v11);
          v28 = v40;
          v12 = v97;
        }

        else
        {
          v107[(v61 >> 6) + 8] |= 1 << v61;
          v69 = v104;
          v70 = v61;
          v105((v25[6] + v61 * v103), v104, v11);
          v71 = v25[7] + 16 * v70;
          *v71 = 0;
          *(v71 + 8) = 0;
          v72 = *v98;
          (*v98)(v69, v11);
          v72(v35, v11);
          v73 = v25[2];
          v65 = __OFADD__(v73, 1);
          v74 = v73 + 1;
          if (v65)
          {
            goto LABEL_36;
          }

          v25[2] = v74;
          v28 = v40;
          v12 = v97;
          v30 = v95;
        }
      }
    }

    while (1)
    {
      v40 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v40 >= v34)
      {

        v85 = swift_allocObject();
        *(v85 + 16) = v25;
        v86 = sub_25424E128();
        v87 = v91;
        (*(*(v86 - 8) + 56))(v91, 1, 1, v86);
        v88 = swift_allocObject();
        v88[2] = 0;
        v88[3] = 0;
        v88[4] = v92;
        v88[5] = sub_2541FF3C8;
        v88[6] = v85;

        sub_25419CC1C(0, 0, v87, &unk_25425FF08, v88);
      }

      v33 = *(v30 + 8 * v40);
      ++v28;
      if (v33)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  sub_25424EB38();
  __break(1u);
LABEL_41:
  result = sub_25424EB38();
  __break(1u);
  return result;
}

uint64_t sub_2541FF09C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25424D948();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v25 - v10;
  result = MEMORY[0x28223BE20](v9);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      sub_2541695FC(v11, v8);
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2541FF2B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_25424D948();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
  sub_25414BDD4();
  v3 = sub_25424DB78();

  v2(v3);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2541FF374(uint64_t a1, uint64_t *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8858, &qword_254252D30);
  return sub_25424E088();
}

uint64_t sub_2541FF3D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25412F724;

  return sub_2541315F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2541FF4A8(uint64_t a1)
{
  v2 = sub_2541FF884();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2541FF4E4(uint64_t a1)
{
  v2 = sub_2541FF884();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t HomeKitEventsError.errorCode.getter()
{
  if (*(v0 + 8))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2541FF56C()
{
  if (*(v0 + 8))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t HomeKitEventsError.description.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x20636972656E6547;
  }

  v2 = *v0;
  sub_25424E688();

  MEMORY[0x259C05CA0](v2, v1);
  return 0xD000000000000012;
}

uint64_t sub_2541FF62C()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x20636972656E6547;
  }

  v2 = *v0;
  sub_25424E688();

  MEMORY[0x259C05CA0](v2, v1);
  return 0xD000000000000012;
}

uint64_t HomeKitEventsError.localizedDescription.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x20636972656E6547;
  }

  v2 = *v0;
  sub_25424E688();

  MEMORY[0x259C05CA0](v2, v1);
  return 0xD000000000000012;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2541FF798(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2541FF7E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_2541FF83C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2541FF854(void *result, int a2)
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

unint64_t sub_2541FF884()
{
  result = qword_27F5BBA18;
  if (!qword_27F5BBA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBA18);
  }

  return result;
}

uint64_t sub_2541FF8DC(uint64_t a1, char a2)
{
  sub_25424DD88();
}

uint64_t sub_2541FF91C(uint64_t a1, unsigned __int8 a2)
{
  sub_25424DD88();
}

uint64_t sub_2541FFA7C()
{
  if (*(v0 + 8) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    v1 = *v0;
    sub_25424EBF8();
    MEMORY[0x259C06AA0](v1);
  }

  if (*(v0 + 24) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    v2 = v0[2];
    sub_25424EBF8();
    MEMORY[0x259C06AA0](v2);
  }

  if (*(v0 + 40) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    v3 = v0[4];
    sub_25424EBF8();
    MEMORY[0x259C06AA0](v3);
  }

  if (*(v0 + 56) == 1)
  {
    return sub_25424EBF8();
  }

  v5 = v0[6];
  sub_25424EBF8();
  return MEMORY[0x259C06AA0](v5);
}

uint64_t sub_2541FFB58()
{
  if (*(v0 + 8) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    v1 = *v0;
    sub_25424EBF8();
    MEMORY[0x259C06AA0](v1);
  }

  if (*(v0 + 24) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    v2 = v0[2];
    sub_25424EBF8();
    MEMORY[0x259C06AA0](v2);
  }

  if (*(v0 + 40) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    v3 = v0[4];
    sub_25424EBF8();
    MEMORY[0x259C06AA0](v3);
  }

  if (*(v0 + 56) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    v4 = v0[6];
    sub_25424EBF8();
    MEMORY[0x259C06AA0](v4);
  }

  if (*(v0 + 72) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    v5 = v0[8];
    sub_25424EBF8();
    MEMORY[0x259C06AA0](v5);
  }

  if (*(v0 + 88) == 1)
  {
    return sub_25424EBF8();
  }

  v7 = v0[10];
  sub_25424EBF8();
  return MEMORY[0x259C06AA0](v7);
}

void *EnergyKit.LoadSessionEvent.LevelRange.init(start:end:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

uint64_t EnergyKit.LoadSessionEvent.LevelRange.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x259C06AA0](*v0);
  return MEMORY[0x259C06AA0](v1);
}

uint64_t EnergyKit.LoadSessionEvent.LevelRange.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v1);
  MEMORY[0x259C06AA0](v2);
  return sub_25424EC28();
}

uint64_t sub_2541FFDD0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v1);
  MEMORY[0x259C06AA0](v2);
  return sub_25424EC28();
}

uint64_t sub_2541FFE2C()
{
  v1 = v0[1];
  MEMORY[0x259C06AA0](*v0);
  return MEMORY[0x259C06AA0](v1);
}

uint64_t sub_2541FFE68(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v2);
  MEMORY[0x259C06AA0](v3);
  return sub_25424EC28();
}

__n128 EnergyKit.LoadSessionEvent.Block.tariffByEnergy.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *(a1 + 32) = *(v1 + 56);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 88);
  *(a1 + 73) = *(v1 + 97);
  result = *(v1 + 24);
  v4 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 EnergyKit.LoadSessionEvent.Block.tariffByDuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  *(a1 + 32) = *(v1 + 152);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 184);
  *(a1 + 73) = *(v1 + 193);
  result = *(v1 + 120);
  v4 = *(v1 + 136);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 EnergyKit.LoadSessionEvent.Block.cleanlinessByEnergy.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  *a1 = *(v1 + 216);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 248);
  result = *(v1 + 257);
  *(a1 + 41) = result;
  return result;
}

__n128 EnergyKit.LoadSessionEvent.Block.cleanlinessByDuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 296);
  *a1 = *(v1 + 280);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 312);
  result = *(v1 + 321);
  *(a1 + 41) = result;
  return result;
}

__n128 EnergyKit.LoadSessionEvent.Block.level.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 344);
  *a1 = result;
  return result;
}

__n128 EnergyKit.LoadSessionEvent.Block.init(offsetFromStart:energy:duration:tariffByEnergy:tariffByDuration:cleanlinessByEnergy:cleanlinessByDuration:level:didFollowGuidance:)@<Q0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, _OWORD *a6@<X5>, _OWORD *a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v10 = *a2;
  v11 = *a3;
  *&v19[39] = a5[2];
  *&v19[55] = a5[3];
  *&v19[71] = a5[4];
  *&v19[80] = *(a5 + 73);
  *&v19[7] = *a5;
  *&v19[23] = a5[1];
  *&v18[48] = *(a6 + 41);
  *&v18[39] = a6[2];
  *&v18[23] = a6[1];
  *&v18[7] = *a6;
  *&v17[48] = *(a7 + 41);
  *&v17[39] = a7[2];
  *&v17[23] = a7[1];
  *&v17[7] = *a7;
  *a9 = *a1;
  *(a9 + 8) = v10;
  *(a9 + 16) = v11;
  v12 = *a4;
  *(a9 + 40) = a4[1];
  *(a9 + 24) = v12;
  v13 = a4[2];
  v14 = a4[3];
  v15 = a4[4];
  *(a9 + 97) = *(a4 + 73);
  *(a9 + 88) = v15;
  *(a9 + 72) = v14;
  *(a9 + 56) = v13;
  *(a9 + 129) = *&v19[16];
  *(a9 + 113) = *v19;
  *(a9 + 193) = *&v19[80];
  *(a9 + 177) = *&v19[64];
  *(a9 + 161) = *&v19[48];
  *(a9 + 145) = *&v19[32];
  *(a9 + 257) = *&v18[48];
  *(a9 + 241) = *&v18[32];
  *(a9 + 225) = *&v18[16];
  *(a9 + 209) = *v18;
  *(a9 + 305) = *&v17[32];
  *(a9 + 321) = *&v17[48];
  *(a9 + 273) = *v17;
  *(a9 + 289) = *&v17[16];
  result = *a8;
  *(a9 + 344) = *a8;
  *(a9 + 360) = a10;
  return result;
}

uint64_t EnergyKit.LoadSessionEvent.Block.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[43];
  v4 = v0[44];
  MEMORY[0x259C06AA0](*v0);
  MEMORY[0x259C06AA0](v1);
  MEMORY[0x259C06AA0](v2);
  sub_2541FFB58();
  sub_2541FFB58();
  sub_2541FFA7C();
  sub_2541FFA7C();
  MEMORY[0x259C06AA0](v3);
  MEMORY[0x259C06AA0](v4);
  return sub_25424EBF8();
}

uint64_t EnergyKit.LoadSessionEvent.Block.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v5 = v0[43];
  v4 = v0[44];
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v2);
  MEMORY[0x259C06AA0](v1);
  MEMORY[0x259C06AA0](v3);
  sub_2541FFB58();
  sub_2541FFB58();
  sub_2541FFA7C();
  sub_2541FFA7C();
  MEMORY[0x259C06AA0](v5);
  MEMORY[0x259C06AA0](v4);
  sub_25424EBF8();
  return sub_25424EC28();
}

uint64_t sub_254200390(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v6 = v1[43];
  v5 = v1[44];
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v3);
  MEMORY[0x259C06AA0](v2);
  MEMORY[0x259C06AA0](v4);
  sub_2541FFB58();
  sub_2541FFB58();
  sub_2541FFA7C();
  sub_2541FFA7C();
  MEMORY[0x259C06AA0](v6);
  MEMORY[0x259C06AA0](v5);
  sub_25424EBF8();
  return sub_25424EC28();
}

uint64_t EnergyKit.LoadSessionEvent.init(dateInterval:homeIdentifier:siteIdentifier:sourceIdentifier:deviceIdentifier:sessionIdentifier:loadType:consumptionBlocks:productionBlocks:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12)
{
  v34 = *a10;
  sub_25424D1D8();
  v16 = type metadata accessor for EventBase(0);
  v17 = v16[5];
  v18 = sub_25424D948();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(a9 + v17, a2, v18);
  v21 = type metadata accessor for EnergyKit.EventBase(0);
  v20(a9 + v21[5], a3, v18);
  *(a9 + v16[6]) = 5;
  v22 = (a9 + v16[7]);
  v22[1] = 0;
  v22[2] = 0;
  *v22 = 15;
  v23 = (a9 + v21[6]);
  *v23 = a4;
  v23[1] = a5;
  v24 = (a9 + v21[7]);
  *v24 = a6;
  v24[1] = a7;
  v25 = a9 + *(type metadata accessor for EnergyKit.LoadSessionEvent(0) + 20);
  sub_25424D1F8();
  v26 = *(v19 + 8);
  v26(a3, v18);
  v26(a2, v18);
  v27 = sub_25424D218();
  (*(*(v27 - 8) + 8))(a1, v27);
  SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
  result = (*(v19 + 32))(v25 + SessionEventV5StateVMa[5], a8, v18);
  *(v25 + SessionEventV5StateVMa[6]) = v34;
  *(v25 + SessionEventV5StateVMa[7]) = a11;
  *(v25 + SessionEventV5StateVMa[8]) = a12;
  return result;
}

uint64_t EnergyKit.LoadSessionEvent.init(dateInterval:homeIdentifier:siteIdentifier:sourceIdentifier:deviceIdentifier:sessionIdentifier:loadType:consumptionBlocks:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 *a10, uint64_t a11)
{
  v51 = a3;
  v52 = a8;
  v48 = a6;
  v49 = a7;
  v46 = a4;
  v47 = a5;
  v40 = a2;
  v43 = a1;
  v50 = a11;
  v14 = sub_25424D948();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  v42 = sub_25424D218();
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *a10;
  (*(v23 + 16))(v22, a1);
  v24 = *(v15 + 16);
  v39 = v20;
  v24(v20, a2, v14);
  v25 = v18;
  v24(v18, v51, v14);
  v26 = a9 + *(type metadata accessor for EnergyKit.LoadSessionEvent(0) + 20);
  SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
  v24((v26 + *(SessionEventV5StateVMa + 20)), v52, v14);
  sub_25424D1D8();
  v27 = type metadata accessor for EventBase(0);
  v24((a9 + v27[5]), v20, v14);
  v28 = type metadata accessor for EnergyKit.EventBase(0);
  v24((a9 + v28[5]), v25, v14);
  *(a9 + v27[6]) = 5;
  v29 = (a9 + v27[7]);
  v29[1] = 0;
  v29[2] = 0;
  *v29 = 15;
  v30 = (a9 + v28[6]);
  v31 = v47;
  *v30 = v46;
  v30[1] = v31;
  v32 = (a9 + v28[7]);
  v33 = v49;
  *v32 = v48;
  v32[1] = v33;
  sub_25424D1F8();
  v34 = *(v15 + 8);
  v34(v52, v14);
  v34(v51, v14);
  v34(v40, v14);
  v35 = *(v44 + 8);
  v36 = v42;
  v35(v43, v42);
  v34(v25, v14);
  v34(v39, v14);
  result = (v35)(v22, v36);
  v38 = SessionEventV5StateVMa;
  *(v26 + *(SessionEventV5StateVMa + 24)) = v45;
  *(v26 + *(v38 + 28)) = v50;
  *(v26 + *(v38 + 32)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t EnergyKit.LoadSessionEvent.init(dateInterval:homeIdentifier:siteIdentifier:sourceIdentifier:deviceIdentifier:sessionIdentifier:loadType:productionBlocks:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 *a10, uint64_t a11)
{
  v51 = a3;
  v52 = a8;
  v48 = a6;
  v49 = a7;
  v46 = a4;
  v47 = a5;
  v40 = a2;
  v43 = a1;
  v50 = a11;
  v14 = sub_25424D948();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  v42 = sub_25424D218();
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *a10;
  (*(v23 + 16))(v22, a1);
  v24 = *(v15 + 16);
  v39 = v20;
  v24(v20, a2, v14);
  v25 = v18;
  v24(v18, v51, v14);
  v26 = a9 + *(type metadata accessor for EnergyKit.LoadSessionEvent(0) + 20);
  SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
  v24((v26 + *(SessionEventV5StateVMa + 20)), v52, v14);
  sub_25424D1D8();
  v27 = type metadata accessor for EventBase(0);
  v24((a9 + v27[5]), v20, v14);
  v28 = type metadata accessor for EnergyKit.EventBase(0);
  v24((a9 + v28[5]), v25, v14);
  *(a9 + v27[6]) = 5;
  v29 = (a9 + v27[7]);
  v29[1] = 0;
  v29[2] = 0;
  *v29 = 15;
  v30 = (a9 + v28[6]);
  v31 = v47;
  *v30 = v46;
  v30[1] = v31;
  v32 = (a9 + v28[7]);
  v33 = v49;
  *v32 = v48;
  v32[1] = v33;
  sub_25424D1F8();
  v34 = *(v15 + 8);
  v34(v52, v14);
  v34(v51, v14);
  v34(v40, v14);
  v35 = *(v44 + 8);
  v36 = v42;
  v35(v43, v42);
  v34(v25, v14);
  v34(v39, v14);
  result = (v35)(v22, v36);
  v38 = SessionEventV5StateVMa;
  *(v26 + *(SessionEventV5StateVMa + 24)) = v45;
  *(v26 + *(v38 + 28)) = MEMORY[0x277D84F90];
  *(v26 + *(v38 + 32)) = v50;
  return result;
}

uint64_t EnergyKit.LoadSessionEvent.sessionIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EnergyKit.LoadSessionEvent(0) + 20);
  v4 = *(_s16LoadSessionEventV5StateVMa(0) + 20);
  v5 = sub_25424D948();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t EnergyKit.LoadSessionEvent.loadType.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EnergyKit.LoadSessionEvent(0) + 20);
  result = _s16LoadSessionEventV5StateVMa(0);
  *a1 = *(v3 + *(result + 24));
  return result;
}

uint64_t EnergyKit.LoadSessionEvent.consumptionBlocks.getter()
{
  type metadata accessor for EnergyKit.LoadSessionEvent(0);
  _s16LoadSessionEventV5StateVMa(0);
}

uint64_t EnergyKit.LoadSessionEvent.productionBlocks.getter()
{
  type metadata accessor for EnergyKit.LoadSessionEvent(0);
  _s16LoadSessionEventV5StateVMa(0);
}

uint64_t EnergyKit.LoadSessionEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
  v6 = MEMORY[0x28223BE20](SessionEventV5StateVMa);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = type metadata accessor for EnergyKit.EventBase(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  sub_254137E94(v14, v8, a1);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_254204E6C(v14, v16, type metadata accessor for EnergyKit.EventBase);
  sub_254204E6C(v8, v10, _s16LoadSessionEventV5StateVMa);
  v17 = *(type metadata accessor for EventBase(0) + 24);
  if (v16[v17] != 5)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_25424E688();
    MEMORY[0x259C05CA0](0xD000000000000012, 0x80000002542503A0);
    MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254260040);
    MEMORY[0x259C05CA0](0xD000000000000020, 0x80000002542503C0);
    LOBYTE(v27) = v16[v17];
LABEL_10:
    sub_25424E7D8();
    goto LABEL_11;
  }

  if (!*(*&v10[*(SessionEventV5StateVMa + 28)] + 16) && !*(*&v10[*(SessionEventV5StateVMa + 32)] + 16))
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_25424E688();
    MEMORY[0x259C05CA0](0xD000000000000012, 0x80000002542503A0);
    MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254260040);
    MEMORY[0x259C05CA0](0xD000000000000029, 0x8000000254251720);
LABEL_11:
    sub_25424E6F8();
    swift_allocError();
    static DecodingError.dataCorruptedError<A>(_:_:)(v22);

    swift_willThrow();
    sub_254204ED4(v16, type metadata accessor for EnergyKit.EventBase);
    sub_254204ED4(v10, _s16LoadSessionEventV5StateVMa);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = *&v10[*(SessionEventV5StateVMa + 28)];

  sub_2542046AC(v18);
  v19 = *(v25 + 16) + 1;
  v20 = 32;
  while (--v19)
  {
    v21 = *(v25 + v20);
    v20 += 368;
    if (v21 < 0)
    {

      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_25424E688();
      MEMORY[0x259C05CA0](0xD000000000000012, 0x80000002542503A0);
      MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254260040);
      MEMORY[0x259C05CA0](0xD000000000000040, 0x80000002542516D0);
      v27 = v21;
      goto LABEL_10;
    }
  }

  sub_254204E6C(v16, a2, type metadata accessor for EnergyKit.EventBase);
  SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
  sub_254204E6C(v10, a2 + *(SessionEvent + 20), _s16LoadSessionEventV5StateVMa);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EnergyKit.LoadSessionEvent.encode(to:)(void *a1)
{
  v2 = v1;
  v24 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8CD8, &qword_254253D10);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v23 = *(type metadata accessor for EnergyKit.LoadSessionEvent(0) + 20);
  v7 = sub_25424D8B8();
  (*(*(v7 - 8) + 16))(v6, v1, v7);
  v8 = type metadata accessor for EventBase(0);
  v9 = *(v8 + 20);
  v10 = v4[13];
  v11 = sub_25424D948();
  v12 = *(*(v11 - 8) + 16);
  v12(&v6[v10], v2 + v9, v11);
  LOBYTE(v10) = *(v2 + *(v8 + 24));
  v13 = type metadata accessor for EnergyKit.EventBase(0);
  v12(&v6[v4[15]], v2 + v13[5], v11);
  v14 = v13[7];
  v15 = (v2 + v13[6]);
  v16 = *v15;
  v17 = v15[1];
  v19 = *(v2 + v14);
  v18 = *(v2 + v14 + 8);
  sub_254204F34(v2 + v23, &v6[v4[18]]);
  v6[v4[14]] = v10;
  v20 = &v6[v4[16]];
  *v20 = v16;
  *(v20 + 1) = v17;
  v21 = &v6[v4[17]];
  *v21 = v19;
  *(v21 + 1) = v18;

  sub_25413C298(v24);
  return sub_254204F98(v6);
}

uint64_t sub_25420165C(void *a1, uint64_t a2)
{
  v4 = v2;
  v26 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8CD8, &qword_254253D10);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v25 = *(a2 + 20);
  v9 = sub_25424D8B8();
  (*(*(v9 - 8) + 16))(v8, v2, v9);
  v10 = type metadata accessor for EventBase(0);
  v11 = *(v10 + 20);
  v12 = v6[13];
  v13 = sub_25424D948();
  v14 = *(*(v13 - 8) + 16);
  v14(&v8[v12], v4 + v11, v13);
  LOBYTE(v12) = *(v4 + *(v10 + 24));
  v15 = type metadata accessor for EnergyKit.EventBase(0);
  v14(&v8[v6[15]], v4 + v15[5], v13);
  v16 = v15[7];
  v17 = (v4 + v15[6]);
  v18 = *v17;
  v19 = v17[1];
  v21 = *(v4 + v16);
  v20 = *(v4 + v16 + 8);
  sub_254204F34(v4 + v25, &v8[v6[18]]);
  v8[v6[14]] = v12;
  v22 = &v8[v6[16]];
  *v22 = v18;
  *(v22 + 1) = v19;
  v23 = &v8[v6[17]];
  *v23 = v21;
  *(v23 + 1) = v20;

  sub_25413C298(v26);
  return sub_254204F98(v8);
}

uint64_t sub_254201870@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t EnergyKit.LoadSessionEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t static EnergyKit.LoadSessionEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EventBase(0);
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  if (qword_2542608B8[*(a1 + *(v4 + 24))] != qword_2542608B8[*(a2 + *(v4 + 24))])
  {
    return 0;
  }

  v5 = type metadata accessor for EnergyKit.EventBase(0);
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_25424EAB8() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v5 + 28);
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_25424EAB8() & 1) == 0)
  {
    return 0;
  }

  v16 = *(type metadata accessor for EnergyKit.LoadSessionEvent(0) + 20);

  return sub_254204A80(a1 + v16, a2 + v16);
}

uint64_t EnergyKit.LoadSessionEvent.hash(into:)(uint64_t a1)
{
  sub_25424D8B8();
  sub_254205000(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  v3 = type metadata accessor for EventBase(0);
  sub_25424D948();
  sub_254205000(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_2542608B8[*(v1 + *(v3 + 24))]);
  type metadata accessor for EnergyKit.EventBase(0);
  sub_25424DC28();
  sub_25424DD88();
  sub_25424DD88();
  v4 = v1 + *(type metadata accessor for EnergyKit.LoadSessionEvent(0) + 20);
  sub_25424DC28();
  SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
  sub_25424DC28();
  sub_25424DD88();

  sub_25420479C(a1, *(v4 + *(SessionEventV5StateVMa + 28)));
  v6 = *(v4 + *(SessionEventV5StateVMa + 32));

  return sub_25420479C(a1, v6);
}

uint64_t EnergyKit.LoadSessionEvent.hashValue.getter()
{
  sub_25424EBD8();
  EnergyKit.LoadSessionEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_254201CDC()
{
  sub_25424EBD8();
  EnergyKit.LoadSessionEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_254201D20(uint64_t a1)
{
  sub_25424EBD8();
  EnergyKit.LoadSessionEvent.hash(into:)(v2);
  return sub_25424EC28();
}

uint64_t sub_254201D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for EventBase(0);
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  if (qword_2542608B8[*(a1 + *(v6 + 24))] != qword_2542608B8[*(a2 + *(v6 + 24))])
  {
    return 0;
  }

  v7 = type metadata accessor for EnergyKit.EventBase(0);
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v7 + 24);
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v9 == *v11 && v10 == v11[1];
  if (!v12 && (sub_25424EAB8() & 1) == 0)
  {
    return 0;
  }

  v13 = *(v7 + 28);
  v14 = *(a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v14 == *v16 && v15 == v16[1];
  if (!v17 && (sub_25424EAB8() & 1) == 0)
  {
    return 0;
  }

  v18 = *(a3 + 20);

  return sub_254204A80(a1 + v18, a2 + v18);
}

uint64_t EnergyKit.LoadSessionEvent.sourceIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergyKit.EventBase(0) + 24));

  return v1;
}

uint64_t EnergyKit.LoadSessionEvent.deviceIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergyKit.EventBase(0) + 28));

  return v1;
}

uint64_t sub_254201F2C()
{
  sub_25424EBD8();
  sub_25424D8B8();
  sub_254205000(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
  sub_25424D948();
  sub_254205000(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  sub_25424DD88();

  sub_25420479C(v3, *(v0 + *(SessionEventV5StateVMa + 28)));
  sub_25420479C(v3, *(v0 + *(SessionEventV5StateVMa + 32)));
  return sub_25424EC28();
}

uint64_t sub_2542020B0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBB80, &qword_254260728);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254205AF4();
  sub_25424EC78();
  LOBYTE(v12) = 0;
  sub_25424D8B8();
  sub_254205000(&qword_27F5B8C78, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_25424EA18();
  if (!v2)
  {
    SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
    LOBYTE(v12) = 1;
    sub_25424D948();
    sub_254205000(&qword_27F5B89D8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_25424EA18();
    LOBYTE(v12) = *(v3 + SessionEventV5StateVMa[6]);
    v13 = 2;
    sub_25413EF3C();
    sub_25424EA18();
    v12 = *(v3 + SessionEventV5StateVMa[7]);
    v13 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBB68, &qword_254260720);
    sub_254205B9C(&qword_27F5BBB88, sub_254205C14, MEMORY[0x277D83948]);
    sub_25424EA18();
    v12 = *(v3 + SessionEventV5StateVMa[8]);
    v13 = 4;
    sub_25424EA18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2542023C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_25424D948();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25424D8B8();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v25 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBB58, &qword_254260718);
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = &v20 - v8;
  SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
  MEMORY[0x28223BE20](SessionEventV5StateVMa);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254205AF4();
  v26 = v9;
  v13 = v28;
  sub_25424EC68();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v5;
  v15 = v22;
  v16 = v23;
  LOBYTE(v29) = 0;
  sub_254205000(&qword_27F5B8CA8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_25424E978();
  v17 = *(v21 + 32);
  v28 = v6;
  v17(v12, v25);
  LOBYTE(v29) = 1;
  sub_254205000(&qword_27F5B89F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_25424E978();
  (*(v15 + 32))(&v12[SessionEventV5StateVMa[5]], v14, v16);
  v30 = 2;
  sub_25413F0F8();
  sub_25424E978();
  v12[SessionEventV5StateVMa[6]] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBB68, &qword_254260720);
  v30 = 3;
  sub_254205B9C(&qword_27F5BBB70, sub_254205B48, MEMORY[0x277D83978]);
  v25 = v12;
  sub_25424E978();
  *&v25[SessionEventV5StateVMa[7]] = v29;
  v30 = 4;
  sub_25424E978();
  (*(v24 + 8))(v26, v27);
  v18 = v25;
  *&v25[SessionEventV5StateVMa[8]] = v29;
  sub_254204F34(v18, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_254204ED4(v18, _s16LoadSessionEventV5StateVMa);
}

unint64_t sub_25420299C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x74657366666FLL;
    v6 = 0x6E6F697461727564;
    if (a1 != 2)
    {
      v6 = 0x7942666669726174;
    }

    if (a1)
    {
      v5 = 0x796772656E65;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000015;
    v2 = 0x6C6576656CLL;
    if (a1 != 7)
    {
      v2 = 0x65636E6164697567;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_254202ACC(uint64_t a1, int *a2)
{
  sub_25424D8B8();
  sub_254205000(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  sub_25424D948();
  sub_254205000(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  sub_25424DD88();

  sub_25420479C(a1, *(v2 + a2[7]));
  v5 = *(v2 + a2[8]);

  return sub_25420479C(a1, v5);
}

uint64_t sub_254202C44(uint64_t a1, int *a2)
{
  sub_25424EBD8();
  sub_25424D8B8();
  sub_254205000(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  sub_25424D948();
  sub_254205000(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  sub_25424DD88();

  sub_25420479C(v5, *(v2 + a2[7]));
  sub_25420479C(v5, *(v2 + a2[8]));
  return sub_25424EC28();
}

uint64_t sub_254202DCC()
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254202EB0(uint64_t a1)
{
  sub_25424DD88();
}

uint64_t sub_254202F80(uint64_t a1)
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

unint64_t sub_254203060@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_254205D80(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_254203090(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7472617473;
  v5 = 0xE400000000000000;
  v6 = 1701869940;
  v7 = 0xEB000000006E6F69;
  v8 = 0x74706D75736E6F63;
  if (v2 != 3)
  {
    v8 = 0x69746375646F7270;
    v7 = 0xEA00000000006E6FLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E6F6973736573;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_254203130()
{
  v1 = *v0;
  v2 = 0x7472617473;
  v3 = 1701869940;
  v4 = 0x74706D75736E6F63;
  if (v1 != 3)
  {
    v4 = 0x69746375646F7270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F6973736573;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_2542031CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254205D80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2542031F4(uint64_t a1)
{
  v2 = sub_254205AF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254203230(uint64_t a1)
{
  v2 = sub_254205AF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2542032A8()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_2541FF91C(v3, v1);
  return sub_25424EC28();
}

uint64_t sub_2542032F8(uint64_t a1)
{
  v2 = *v1;
  sub_25424EBD8();
  sub_2541FF91C(v4, v2);
  return sub_25424EC28();
}

unint64_t sub_25420333C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_254205AA8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_25420336C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25420299C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2542033B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254205AA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2542033E8(uint64_t a1)
{
  v2 = sub_254205048();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254203424(uint64_t a1)
{
  v2 = sub_254205048();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnergyKit.LoadSessionEvent.Block.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA20, "Ʃ");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v10 = *v3;
  v9 = v3[1];
  v22 = v3[2];
  v23 = v9;
  v11 = v3[43];
  v20 = v3[44];
  v21 = v11;
  v28 = *(v3 + 360);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254205048();
  sub_25424EC78();
  *&v24 = v10;
  v29 = 0;
  sub_2541F7C5C();
  sub_25424EA18();
  if (!v2)
  {
    v12 = v22;
    *&v24 = v23;
    v29 = 1;
    sub_25413ECF0();
    sub_25424EA18();
    *&v24 = v12;
    v29 = 2;
    sub_25424EA18();
    v13 = *(v3 + 9);
    *v26 = *(v3 + 7);
    *&v26[16] = v13;
    v27[0] = *(v3 + 11);
    *(v27 + 9) = *(v3 + 97);
    v14 = *(v3 + 5);
    v24 = *(v3 + 3);
    v25 = v14;
    v29 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA30, &qword_254260088);
    sub_25414081C(&qword_27F5BBA38, &qword_27F5BBA30, &qword_254260088, &protocol conformance descriptor for EnergyKit.TariffPeak<A>);
    sub_25424EA18();
    v15 = *(v3 + 21);
    *v26 = *(v3 + 19);
    *&v26[16] = v15;
    v27[0] = *(v3 + 23);
    *(v27 + 9) = *(v3 + 193);
    v16 = *(v3 + 17);
    v24 = *(v3 + 15);
    v25 = v16;
    v29 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA40, &qword_254260090);
    sub_25414081C(&qword_27F5BBA48, &qword_27F5BBA40, &qword_254260090, &protocol conformance descriptor for EnergyKit.TariffPeak<A>);
    sub_25424EA18();
    v17 = *(v3 + 29);
    v24 = *(v3 + 27);
    v25 = v17;
    *v26 = *(v3 + 31);
    *&v26[9] = *(v3 + 257);
    v29 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA50, &qword_254260098);
    sub_25414081C(&qword_27F5BBA58, &qword_27F5BBA50, &qword_254260098, &protocol conformance descriptor for EnergyKit.GridCleanliness<A>);
    sub_25424EA18();
    v18 = *(v3 + 37);
    v24 = *(v3 + 35);
    v25 = v18;
    *v26 = *(v3 + 39);
    *&v26[9] = *(v3 + 321);
    v29 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA60, &qword_2542600A0);
    sub_25414081C(&qword_27F5BBA68, &qword_27F5BBA60, &qword_2542600A0, &protocol conformance descriptor for EnergyKit.GridCleanliness<A>);
    sub_25424EA18();
    *&v24 = v21;
    *(&v24 + 1) = v20;
    v29 = 7;
    sub_25420509C();
    sub_25424EA18();
    LOBYTE(v24) = 8;
    sub_25424E9E8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t EnergyKit.LoadSessionEvent.Block.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA78, &qword_2542600A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_254205048();
  sub_25424EC68();
  if (!v2)
  {
    v34 = a2;
    v35 = v6;
    LOBYTE(v48) = 0;
    sub_2541F7C08();
    v10 = v5;
    sub_25424E978();
    v11 = v54;
    LOBYTE(v48) = 1;
    sub_25413EE40();
    sub_25424E978();
    v33 = v11;
    v12 = v54;
    LOBYTE(v48) = 2;
    sub_25424E978();
    v14 = v12;
    v15 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA30, &qword_254260088);
    v53 = 3;
    sub_25414081C(&qword_27F5BBA80, &qword_27F5BBA30, &qword_254260088, &protocol conformance descriptor for EnergyKit.TariffPeak<A>);
    sub_25424E978();
    v32 = v15;
    v64 = v56;
    v65 = v57;
    v66[0] = v58[0];
    *(v66 + 9) = *(v58 + 9);
    v62 = v54;
    v63 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA40, &qword_254260090);
    v47 = 4;
    sub_25414081C(&qword_27F5BBA88, &qword_27F5BBA40, &qword_254260090, &protocol conformance descriptor for EnergyKit.TariffPeak<A>);
    sub_25424E978();
    *(&v61[2] + 7) = v50;
    *(&v61[3] + 7) = v51;
    *(&v61[4] + 7) = *v52;
    v61[5] = *&v52[9];
    *(v61 + 7) = v48;
    *(&v61[1] + 7) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA50, &qword_254260098);
    v43 = 5;
    sub_25414081C(&qword_27F5BBA90, &qword_27F5BBA50, &qword_254260098, &protocol conformance descriptor for EnergyKit.GridCleanliness<A>);
    sub_25424E978();
    *(v60 + 7) = v44;
    *(&v60[1] + 7) = v45;
    *(&v60[2] + 7) = *v46;
    v60[3] = *&v46[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA60, &qword_2542600A0);
    v39 = 6;
    sub_25414081C(&qword_27F5BBA98, &qword_27F5BBA60, &qword_2542600A0, &protocol conformance descriptor for EnergyKit.GridCleanliness<A>);
    sub_25424E978();
    *(v59 + 7) = v40;
    *(&v59[1] + 7) = v41;
    *(&v59[2] + 7) = *v42;
    v59[3] = *&v42[9];
    v36 = 7;
    sub_2542050F0();
    sub_25424E978();
    v17 = v37;
    v16 = v38;
    LOBYTE(v37) = 8;
    v18 = sub_25424E948();
    (*(v35 + 8))(v8, v10);
    v19 = v34;
    *v34 = v33;
    v19[1] = v14;
    v19[2] = v32;
    v20 = v65;
    *(v19 + 7) = v64;
    *(v19 + 9) = v20;
    *(v19 + 11) = v66[0];
    *(v19 + 97) = *(v66 + 9);
    v21 = v63;
    *(v19 + 3) = v62;
    *(v19 + 5) = v21;
    v22 = v61[0];
    *(v19 + 129) = v61[1];
    *(v19 + 113) = v22;
    v23 = v61[2];
    v24 = v61[3];
    v25 = v61[4];
    *(v19 + 193) = v61[5];
    *(v19 + 177) = v25;
    *(v19 + 161) = v24;
    *(v19 + 145) = v23;
    v26 = v60[0];
    v27 = v60[1];
    v28 = v60[2];
    *(v19 + 257) = v60[3];
    *(v19 + 241) = v28;
    *(v19 + 225) = v27;
    *(v19 + 209) = v26;
    v29 = v59[0];
    v30 = v59[1];
    v31 = v59[3];
    *(v19 + 305) = v59[2];
    *(v19 + 321) = v31;
    *(v19 + 273) = v29;
    *(v19 + 289) = v30;
    v19[43] = v17;
    v19[44] = v16;
    *(v19 + 360) = v18 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v67);
}

uint64_t sub_254203F64(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 6581861;
  }

  else
  {
    v3 = 0x7472617473;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 6581861;
  }

  else
  {
    v5 = 0x7472617473;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25424EAB8();
  }

  return v8 & 1;
}

uint64_t sub_254204000()
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254204078(uint64_t a1)
{
  sub_25424DD88();
}

uint64_t sub_2542040DC(uint64_t a1)
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254204150@<X0>(char *a2@<X8>)
{
  v3 = sub_25424E8E8();

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

void sub_2542041B0(uint64_t *a1@<X8>)
{
  v2 = 6581861;
  if (!*v1)
  {
    v2 = 0x7472617473;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2542041E4()
{
  if (*v0)
  {
    return 6581861;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_254204214@<X0>(char *a3@<X8>)
{
  v4 = sub_25424E8E8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_254204278(uint64_t a1)
{
  v2 = sub_254205144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2542042B4(uint64_t a1)
{
  v2 = sub_254205144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnergyKit.LoadSessionEvent.LevelRange.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBAA8, &qword_2542600B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254205144();
  sub_25424EC78();
  v12 = v8;
  v11 = 0;
  sub_25413EFE4();
  sub_25424EA18();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_25424EA18();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t EnergyKit.LoadSessionEvent.LevelRange.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBAB8, &qword_2542600B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254205144();
  sub_25424EC68();
  if (!v2)
  {
    v13 = 0;
    sub_25413F1A0();
    sub_25424E978();
    v9 = v14;
    v13 = 1;
    sub_25424E978();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

char *sub_2542046AC(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_2541B116C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[368 * v7 + 32], v6 + 32, 368 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25420479C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x259C06AA0](v3);
  if (v3)
  {
    v5 = (a2 + 248);
    do
    {
      v6 = *(v5 - 26);
      v7 = *(v5 - 25);
      v8 = *v5;
      v9 = *(v5 + 8);
      v10 = *(v5 + 24);
      v12 = v5[2];
      v13 = v5[4];
      v11 = *(v5 + 40);
      v14 = v5[6];
      v15 = v5[8];
      v19 = *(v5 + 56);
      v20 = *(v5 + 72);
      v16 = v5[10];
      v17 = v5[12];
      v21 = *(v5 + 88);
      v22 = *(v5 + 104);
      v18 = v5[14];
      v23 = *(v5 + 120);
      v24 = v5[16];
      v25 = v5[17];
      MEMORY[0x259C06AA0](*(v5 - 27));
      MEMORY[0x259C06AA0](v6);
      MEMORY[0x259C06AA0](v7);
      sub_2541FFB58();
      sub_2541FFB58();
      if (v9 == 1)
      {
        sub_25424EBF8();
        if (v10)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_25424EBF8();
        MEMORY[0x259C06AA0](v8);
        if (v10)
        {
LABEL_7:
          sub_25424EBF8();
          if (v11)
          {
            goto LABEL_8;
          }

          goto LABEL_16;
        }
      }

      sub_25424EBF8();
      MEMORY[0x259C06AA0](v12);
      if (v11)
      {
LABEL_8:
        sub_25424EBF8();
        if (v19)
        {
          goto LABEL_9;
        }

        goto LABEL_17;
      }

LABEL_16:
      sub_25424EBF8();
      MEMORY[0x259C06AA0](v13);
      if (v19)
      {
LABEL_9:
        sub_25424EBF8();
        if (v20)
        {
          goto LABEL_10;
        }

        goto LABEL_18;
      }

LABEL_17:
      sub_25424EBF8();
      MEMORY[0x259C06AA0](v14);
      if (v20)
      {
LABEL_10:
        sub_25424EBF8();
        if (v21)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }

LABEL_18:
      sub_25424EBF8();
      MEMORY[0x259C06AA0](v15);
      if (v21)
      {
LABEL_11:
        sub_25424EBF8();
        if (v22)
        {
          goto LABEL_12;
        }

        goto LABEL_20;
      }

LABEL_19:
      sub_25424EBF8();
      MEMORY[0x259C06AA0](v16);
      if (v22)
      {
LABEL_12:
        sub_25424EBF8();
        if (!v23)
        {
          goto LABEL_21;
        }

        goto LABEL_3;
      }

LABEL_20:
      sub_25424EBF8();
      MEMORY[0x259C06AA0](v17);
      if (!v23)
      {
LABEL_21:
        sub_25424EBF8();
        MEMORY[0x259C06AA0](v18);
        goto LABEL_4;
      }

LABEL_3:
      sub_25424EBF8();
LABEL_4:
      MEMORY[0x259C06AA0](v24);
      MEMORY[0x259C06AA0](v25);
      result = sub_25424EBF8();
      v5 += 46;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_254204A80(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  v5 = SessionEventV5StateVMa[6];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (v6 == 1)
    {
      v8 = 0xE400000000000000;
      v9 = 1667331688;
      if (!v7)
      {
LABEL_12:
        v10 = 0xE500000000000000;
        if (v9 != 0x726568746FLL)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v9 = 0x6369727463656C65;
      v8 = 0xEF656C6369686556;
      if (!v7)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v8 = 0xE500000000000000;
    v9 = 0x726568746FLL;
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  if (v7 == 1)
  {
    v10 = 0xE400000000000000;
    if (v9 != 1667331688)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = 0xEF656C6369686556;
    if (v9 != 0x6369727463656C65)
    {
      goto LABEL_17;
    }
  }

LABEL_15:
  if (v8 == v10)
  {

    goto LABEL_18;
  }

LABEL_17:
  v11 = sub_25424EAB8();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  if ((sub_25420DDB0(*(a1 + SessionEventV5StateVMa[7]), *(a2 + SessionEventV5StateVMa[7])) & 1) == 0)
  {
    return 0;
  }

  v12 = SessionEventV5StateVMa[8];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);

  return sub_25420DDB0(v13, v14);
}

uint64_t _s13HomeKitEvents06EnergyB0O16LoadSessionEventV5BlockV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  result = 0;
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 9);
  v55[2] = *(a1 + 7);
  v55[3] = v7;
  v56[0] = *(a1 + 11);
  *(v56 + 9) = *(a1 + 97);
  v8 = *(a1 + 5);
  v55[0] = *(a1 + 3);
  v55[1] = v8;
  v9 = *(a1 + 17);
  v51[0] = *(a1 + 15);
  v51[1] = v9;
  v10 = *(a1 + 19);
  v11 = *(a1 + 21);
  v12 = *(a1 + 23);
  *(v52 + 9) = *(a1 + 193);
  v51[3] = v11;
  v52[0] = v12;
  v51[2] = v10;
  v13 = *(a1 + 27);
  v14 = *(a1 + 29);
  v15 = *(a1 + 31);
  *(v48 + 9) = *(a1 + 257);
  v47[1] = v14;
  v48[0] = v15;
  v47[0] = v13;
  v16 = *(a1 + 35);
  v17 = *(a1 + 37);
  v18 = *(a1 + 39);
  *&v44[9] = *(a1 + 321);
  v43[1] = v17;
  *v44 = v18;
  v43[0] = v16;
  v20 = a1[43];
  v19 = a1[44];
  v21 = *(a1 + 360);
  v23 = *a2;
  v22 = a2[1];
  *(v54 + 9) = *(a2 + 193);
  v24 = *(a2 + 257);
  v25 = a2[2];
  v26 = *(a2 + 5);
  v57[0] = *(a2 + 3);
  v57[1] = v26;
  v27 = *(a2 + 7);
  v28 = *(a2 + 9);
  *&v58[9] = *(a2 + 97);
  v29 = *(a2 + 11);
  v57[3] = v28;
  *v58 = v29;
  v57[2] = v27;
  v30 = *(a2 + 17);
  v53[0] = *(a2 + 15);
  v53[1] = v30;
  v31 = *(a2 + 19);
  v32 = *(a2 + 23);
  v53[3] = *(a2 + 21);
  v54[0] = v32;
  v53[2] = v31;
  v33 = *(a2 + 27);
  v34 = *(a2 + 29);
  v35 = *(a2 + 31);
  *(v50 + 9) = v24;
  v49[1] = v34;
  v50[0] = v35;
  v49[0] = v33;
  v36 = *(a2 + 35);
  v37 = *(a2 + 37);
  v38 = *(a2 + 39);
  *&v46[9] = *(a2 + 321);
  v45[1] = v37;
  *v46 = v38;
  v45[0] = v36;
  if (__PAIR128__(v4, v5) == __PAIR128__(v22, v23) && v6 == v25)
  {
    v40 = a2[43];
    v39 = a2[44];
    v41 = *(a2 + 360);
    if (sub_254226694(v55, v57) & 1) != 0 && (sub_254226694(v51, v53) & 1) != 0 && (sub_2542265D0(v47, v49))
    {
      v42 = sub_2542265D0(v43, v45);
      result = 0;
      if ((v42 & 1) != 0 && v20 == v40 && v19 == v39)
      {
        return v21 ^ v41 ^ 1u;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_254204E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_254204ED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_254204F34(uint64_t a1, uint64_t a2)
{
  SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
  (*(*(SessionEventV5StateVMa - 8) + 16))(a2, a1, SessionEventV5StateVMa);
  return a2;
}

uint64_t sub_254204F98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8CD8, &qword_254253D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254205000(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_254205048()
{
  result = qword_27F5BBA28;
  if (!qword_27F5BBA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBA28);
  }

  return result;
}

unint64_t sub_25420509C()
{
  result = qword_27F5BBA70;
  if (!qword_27F5BBA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBA70);
  }

  return result;
}

unint64_t sub_2542050F0()
{
  result = qword_27F5BBAA0;
  if (!qword_27F5BBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBAA0);
  }

  return result;
}

unint64_t sub_254205144()
{
  result = qword_27F5BBAB0;
  if (!qword_27F5BBAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBAB0);
  }

  return result;
}

unint64_t sub_25420519C()
{
  result = qword_27F5BBAC0;
  if (!qword_27F5BBAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBAC0);
  }

  return result;
}

unint64_t sub_2542051F4()
{
  result = qword_27F5BBAC8;
  if (!qword_27F5BBAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBAC8);
  }

  return result;
}

uint64_t sub_254205248(void *a1)
{
  a1[1] = sub_254205000(&qword_27F5BA360, type metadata accessor for EnergyKit.LoadSessionEvent, &protocol conformance descriptor for EnergyKit.LoadSessionEvent);
  a1[2] = sub_254205000(&qword_27F5BA328, type metadata accessor for EnergyKit.LoadSessionEvent, &protocol conformance descriptor for EnergyKit.LoadSessionEvent);
  result = sub_254205000(&qword_27F5BBAD0, type metadata accessor for EnergyKit.LoadSessionEvent, &protocol conformance descriptor for EnergyKit.LoadSessionEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_25420533C(uint64_t a1)
{
  *(a1 + 8) = sub_254205000(&qword_27F5BBAE8, type metadata accessor for EnergyKit.LoadSessionEvent, &protocol conformance descriptor for EnergyKit.LoadSessionEvent);
  result = sub_254205000(&qword_27F5BBAF0, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_254260264);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2542053E8(uint64_t a1)
{
  result = type metadata accessor for EnergyKit.EventBase(319);
  if (v2 <= 0x3F)
  {
    result = _s16LoadSessionEventV5StateVMa(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t _s16LoadSessionEventV10LevelRangeVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16LoadSessionEventV10LevelRangeVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2542054CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 361))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 360);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_254205520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 361) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 361) = 0;
    }

    if (a2)
    {
      *(result + 360) = a2 + 1;
    }
  }

  return result;
}

uint64_t _s16LoadSessionEventV5BlockV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16LoadSessionEventV5BlockV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_25420575C(uint64_t a1)
{
  sub_25424D8B8();
  if (v1 <= 0x3F)
  {
    sub_25424D948();
    if (v2 <= 0x3F)
    {
      sub_254205800();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_254205800()
{
  if (!qword_27F5BBB18)
  {
    v0 = sub_25424E048();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5BBB18);
    }
  }
}

unint64_t sub_25420589C()
{
  result = qword_27F5BBB28;
  if (!qword_27F5BBB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBB28);
  }

  return result;
}

unint64_t sub_2542058F4()
{
  result = qword_27F5BBB30;
  if (!qword_27F5BBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBB30);
  }

  return result;
}

unint64_t sub_25420594C()
{
  result = qword_27F5BBB38;
  if (!qword_27F5BBB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBB38);
  }

  return result;
}

unint64_t sub_2542059A4()
{
  result = qword_27F5BBB40;
  if (!qword_27F5BBB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBB40);
  }

  return result;
}

unint64_t sub_2542059FC()
{
  result = qword_27F5BBB48;
  if (!qword_27F5BBB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBB48);
  }

  return result;
}

unint64_t sub_254205A54()
{
  result = qword_27F5BBB50;
  if (!qword_27F5BBB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBB50);
  }

  return result;
}

unint64_t sub_254205AA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_25424E8E8();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_254205AF4()
{
  result = qword_27F5BBB60;
  if (!qword_27F5BBB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBB60);
  }

  return result;
}

unint64_t sub_254205B48()
{
  result = qword_27F5BBB78;
  if (!qword_27F5BBB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBB78);
  }

  return result;
}

uint64_t sub_254205B9C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BBB68, &qword_254260720);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_254205C14()
{
  result = qword_27F5BBB90;
  if (!qword_27F5BBB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBB90);
  }

  return result;
}

unint64_t sub_254205C7C()
{
  result = qword_27F5BBB98;
  if (!qword_27F5BBB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBB98);
  }

  return result;
}

unint64_t sub_254205CD4()
{
  result = qword_27F5BBBA0;
  if (!qword_27F5BBBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBBA0);
  }

  return result;
}

unint64_t sub_254205D2C()
{
  result = qword_27F5BBBA8;
  if (!qword_27F5BBBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBBA8);
  }

  return result;
}

unint64_t sub_254205D80(uint64_t a1, uint64_t a2)
{
  v2 = sub_25424E8E8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t static HMVCommands.ensureDigests(homeIdentifier:customCreationDate:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_254205DFC, 0, 0);
}

uint64_t sub_254205DFC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_2541B244C;

  return sub_25412FDA0(sub_25412FDA0, sub_2542060A0, v1);
}

void sub_254205ECC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = aBlock - v8;
  v10 = sub_25424D8E8();
  sub_2542060A8(a4, v9);
  v11 = sub_25424D8B8();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    v13 = sub_25424D818();
    (*(v12 + 8))(v9, v11);
  }

  aBlock[4] = sub_254206310;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2541ED26C;
  aBlock[3] = &block_descriptor_18;
  v14 = _Block_copy(aBlock);

  [a1 hmvutilEnsureDigestsWithHomeIdentifier:v10 customCreationDate:v13 reply:v14];
  _Block_release(v14);
}

uint64_t sub_2542060A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254206118(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = sub_25424E128();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a2;
    v9[5] = sub_25412F60C;
    v9[6] = v7;

    v10 = a1;
    v11 = &unk_254254328;
    v12 = v6;
    v13 = v9;
  }

  else
  {
    v14 = sub_25424E128();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a2;
    v15[5] = sub_25412F540;
    v15[6] = 0;

    v11 = &unk_254252CB0;
    v12 = v6;
    v13 = v15;
  }

  sub_25419CC1C(0, 0, v12, v11, v13);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

HomeKitEvents::GarageDoorEvent::State_optional __swiftcall GarageDoorEvent.State.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t GarageDoorEvent.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for GarageDoorEvent(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for GarageDoorEvent(uint64_t a1)
{
  result = qword_27F5BBC20;
  if (!qword_27F5BBC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GarageDoorEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D8B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GarageDoorEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t GarageDoorEvent.roomName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));

  return v1;
}

uint64_t GarageDoorEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GarageDoorEvent.accessoryName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));

  return v1;
}

uint64_t GarageDoorEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

BOOL static GarageDoorEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for GarageDoorEvent(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t GarageDoorEvent.hash(into:)(uint64_t a1)
{
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_25424D8B8();
  sub_254207204(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  v9 = type metadata accessor for EventBase(0);
  sub_254207204(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254260C10[*(v1 + *(v9 + 24))]);
  v10 = type metadata accessor for AccessoryEventBase(0);
  sub_25424DC28();
  sub_25424DD88();
  sub_25424DC28();
  sub_25424DD88();
  sub_254149770(v1 + *(v10 + 36), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v3 + 8))(v5, v2);
  }

  v11 = type metadata accessor for GarageDoorEvent(0);
  return MEMORY[0x259C06AA0](*(v1 + *(v11 + 20)));
}

uint64_t GarageDoorEvent.hashValue.getter()
{
  sub_25424EBD8();
  GarageDoorEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_25420697C()
{
  sub_25424EBD8();
  GarageDoorEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_2542069C0(uint64_t a1)
{
  sub_25424EBD8();
  GarageDoorEvent.hash(into:)(v2);
  return sub_25424EC28();
}

uint64_t GarageDoorEvent.init(date:homeIdentifier:roomIdentifier:roomName:accessoryIdentifier:accessoryName:state:userIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11)
{
  v30 = *a10;
  v17 = sub_25424D8B8();
  (*(*(v17 - 8) + 32))(a9, a1, v17);
  v18 = type metadata accessor for EventBase(0);
  v19 = v18[5];
  v20 = sub_25424D948();
  v21 = *(*(v20 - 8) + 32);
  v21(a9 + v19, a2, v20);
  *(a9 + v18[6]) = 1;
  v22 = (a9 + v18[7]);
  *v22 = 15;
  v23 = type metadata accessor for AccessoryEventBase(0);
  v22[1] = 0;
  v22[2] = 0;
  v21(a9 + v23[5], a3, v20);
  v24 = (a9 + v23[6]);
  *v24 = a4;
  v24[1] = a5;
  v21(a9 + v23[7], a6, v20);
  v25 = (a9 + v23[8]);
  *v25 = a7;
  v25[1] = a8;
  sub_25414A348(a11, a9 + v23[9]);
  result = type metadata accessor for GarageDoorEvent(0);
  *(a9 + *(result + 20)) = v30;
  return result;
}

uint64_t GarageDoorEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AccessoryEventBaseLegacy(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v11);
  sub_254231924(v11, v7);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_2541491A4(a1, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v9 = v11[0];
  sub_25414A414(v7, a2);
  result = type metadata accessor for GarageDoorEvent(0);
  *(a2 + *(result + 20)) = v9;
  return result;
}

uint64_t GarageDoorEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E60, &qword_254254A10);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  result = sub_254231F94(a1);
  if (!v2)
  {
    v9[15] = *(v1 + *(type metadata accessor for GarageDoorEvent(0) + 20));
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25412F1C4();
    sub_25424EC78();
    v9[14] = 1;
    sub_254206EF8();
    sub_25424EA18();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

unint64_t sub_254206EF8()
{
  result = qword_27F5BBBB0;
  if (!qword_27F5BBBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBBB0);
  }

  return result;
}

unint64_t sub_254206F50()
{
  result = qword_27F5BBBB8;
  if (!qword_27F5BBBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBBB8);
  }

  return result;
}

unint64_t sub_254206FA8()
{
  result = qword_27F5BBBC0;
  if (!qword_27F5BBBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BBBC8, &qword_254260998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBBC0);
  }

  return result;
}

unint64_t sub_254207010()
{
  result = qword_27F5BBBD0;
  if (!qword_27F5BBBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBBD0);
  }

  return result;
}

uint64_t sub_254207064(void *a1)
{
  a1[1] = sub_254207204(qword_27F5BB2D8, type metadata accessor for GarageDoorEvent, &protocol conformance descriptor for GarageDoorEvent);
  a1[2] = sub_254207204(&qword_27F5BBBE0, type metadata accessor for GarageDoorEvent, &protocol conformance descriptor for GarageDoorEvent);
  result = sub_254207204(&qword_27F5BBBE8, type metadata accessor for GarageDoorEvent, &protocol conformance descriptor for GarageDoorEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_254207158(void *a1)
{
  a1[1] = sub_254207204(&qword_27F5BBBF8, type metadata accessor for GarageDoorEvent, &protocol conformance descriptor for GarageDoorEvent);
  a1[2] = sub_254207204(&qword_27F5BBC00, type metadata accessor for GarageDoorEvent, &unk_254260AC8);
  result = sub_254207204(&qword_27F5BBC08, type metadata accessor for GarageDoorEvent, &protocol conformance descriptor for GarageDoorEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_254207204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_254207294(void *a1)
{
  a1[1] = sub_25414AC80();
  a1[2] = sub_254206EF8();
  result = sub_2542072CC();
  a1[3] = result;
  return result;
}

unint64_t sub_2542072CC()
{
  result = qword_27F5BBC10;
  if (!qword_27F5BBC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBC10);
  }

  return result;
}

unint64_t sub_254207320(uint64_t a1)
{
  result = sub_254207348();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_254207348()
{
  result = qword_27F5BBC18;
  if (!qword_27F5BBC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBC18);
  }

  return result;
}

unint64_t sub_25420739C(uint64_t a1)
{
  result = sub_254207010();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2542073EC(uint64_t a1)
{
  result = type metadata accessor for AccessoryEventBaseLegacy(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_254207470()
{
  result = qword_27F5BBC30[0];
  if (!qword_27F5BBC30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5BBC30);
  }

  return result;
}

uint64_t (*TypedAsyncSequence.init<A>(source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X0>(uint64_t *a1@<X8>)
{
  v8 = *(a3 - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = a2;
  *(v10 + 3) = a3;
  *(v10 + 4) = a4;
  (*(v8 + 32))(&v10[v9], a1, a3);
  return sub_254207768;
}

uint64_t sub_2542075E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *x8_0@<X8>)
{
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v17 - v13;
  (*(v9 + 16))(v11, a1, a3);
  sub_25424E208();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_2542077A8(v14, a2, AssociatedTypeWitness, AssociatedConformanceWitness, x8_0);
}

uint64_t sub_2542077A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  v10 = swift_allocBox();
  (*(*(a3 - 8) + 32))(v11, a1, a3);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = v10;
  result = sub_25412DC98(*a5, a5[1]);
  *a5 = &unk_254260DD8;
  a5[1] = v12;
  return result;
}

uint64_t TypedAsyncSequence.AsyncIterator.nextClosure.getter()
{
  v0 = sub_25420838C();
  sub_25412DCB8(v0, v1);
  return v0;
}

uint64_t TypedAsyncSequence.AsyncIterator.nextClosure.setter(uint64_t a1, uint64_t a2)
{
  result = sub_25412DC98(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_25420791C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v5[8] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_254207990, 0, 0);
}

uint64_t sub_254207990()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_254207A40;
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[6];

  return MEMORY[0x282200308](v3, v4, v2);
}

uint64_t sub_254207A40()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_254207B7C, 0, 0);
  }

  else
  {
    swift_endAccess();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_254207B7C()
{
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t TypedAsyncSequence.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *(a2 + 16);
  v4 = sub_25424E598();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254207CA8, 0, 0);
}

uint64_t sub_254207CA8()
{
  if ((sub_25424E1C8() & 1) == 0)
  {
    v1 = v0[3];
    v2 = *v1;
    v0[8] = *v1;
    v3 = v1[1];
    v0[9] = v3;
    if (v2)
    {
      sub_25412DCB8(v2, v3);
      v11 = (v2 + *v2);
      v4 = swift_task_alloc();
      v0[10] = v4;
      *v4 = v0;
      v4[1] = sub_254207EA4;
      v5 = v0[7];

      return v11(v5);
    }

    (*(*(v0[4] - 8) + 56))(v0[7], 1, 1);
    (*(v0[6] + 8))(v0[7], v0[5]);
  }

  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];
  sub_25412DC98(*v8, v8[1]);
  *v8 = 0;
  v8[1] = 0;
  (*(*(v7 - 8) + 56))(v9, 1, 1, v7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_254207EA4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_254208138;
  }

  else
  {
    v2 = sub_254207FB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_254207FB8()
{
  v1 = v0[7];
  v2 = v0[4];
  sub_25412DC98(v0[8], v0[9]);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    v5 = v0[3];
    v4 = v0[4];
    v6 = v0[2];
    sub_25412DC98(*v5, v5[1]);
    *v5 = 0;
    v5[1] = 0;
    (*(*(v4 - 8) + 56))(v6, 1, 1, v4);
  }

  else
  {
    v7 = v0[4];
    v8 = v0[2];
    (*(v3 + 32))(v8, v0[7], v7);
    (*(v3 + 56))(v8, 0, 1, v7);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_254208138()
{
  sub_25412DC98(v0[8], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2542081A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25412F724;

  return TypedAsyncSequence.AsyncIterator.next()(a1, a2);
}

uint64_t sub_254208250()
{
  TypedAsyncSequence.makeAsyncIterator()(*v0);
}

uint64_t (*AsyncSequence.typeErased.getter(uint64_t a1, uint64_t a2))@<X0>(uint64_t *a1@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v2, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TypedAsyncSequence.init<A>(source:)(v6, AssociatedTypeWitness, a1, a2);
  return sub_254207768;
}

uint64_t sub_2542083B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2542083F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_254208440(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_254208494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_xSgs5Error_pRi_zRi0_zlyxIsegHrzo_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2542084E8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_254208544(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2542085AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25412F724;

  return sub_25420791C(a1, v6, v4, v5, v7);
}

HomeKitEvents::DoorEvent::State_optional __swiftcall DoorEvent.State.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DoorEvent.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DoorEvent(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for DoorEvent(uint64_t a1)
{
  result = qword_27F5BBDA8;
  if (!qword_27F5BBDA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DoorEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D8B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DoorEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t DoorEvent.roomName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));

  return v1;
}

uint64_t DoorEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DoorEvent.accessoryName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));

  return v1;
}

uint64_t DoorEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

BOOL static DoorEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for DoorEvent(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t DoorEvent.hash(into:)(uint64_t a1)
{
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_25424D8B8();
  sub_254209540(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  v9 = type metadata accessor for EventBase(0);
  sub_254209540(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_2542610F0[*(v1 + *(v9 + 24))]);
  v10 = type metadata accessor for AccessoryEventBase(0);
  sub_25424DC28();
  sub_25424DD88();
  sub_25424DC28();
  sub_25424DD88();
  sub_254149770(v1 + *(v10 + 36), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v3 + 8))(v5, v2);
  }

  v11 = type metadata accessor for DoorEvent(0);
  return MEMORY[0x259C06AA0](*(v1 + *(v11 + 20)));
}

uint64_t DoorEvent.hashValue.getter()
{
  sub_25424EBD8();
  DoorEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_254208CB8()
{
  sub_25424EBD8();
  DoorEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_254208CFC(uint64_t a1)
{
  sub_25424EBD8();
  DoorEvent.hash(into:)(v2);
  return sub_25424EC28();
}

uint64_t DoorEvent.init(date:homeIdentifier:roomIdentifier:roomName:accessoryIdentifier:accessoryName:state:userIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11)
{
  v30 = *a10;
  v17 = sub_25424D8B8();
  (*(*(v17 - 8) + 32))(a9, a1, v17);
  v18 = type metadata accessor for EventBase(0);
  v19 = v18[5];
  v20 = sub_25424D948();
  v21 = *(*(v20 - 8) + 32);
  v21(a9 + v19, a2, v20);
  *(a9 + v18[6]) = 1;
  v22 = (a9 + v18[7]);
  *v22 = 15;
  v23 = type metadata accessor for AccessoryEventBase(0);
  v22[1] = 0;
  v22[2] = 0;
  v21(a9 + v23[5], a3, v20);
  v24 = (a9 + v23[6]);
  *v24 = a4;
  v24[1] = a5;
  v21(a9 + v23[7], a6, v20);
  v25 = (a9 + v23[8]);
  *v25 = a7;
  v25[1] = a8;
  sub_25414A348(a11, a9 + v23[9]);
  result = type metadata accessor for DoorEvent(0);
  *(a9 + *(result + 20)) = v30;
  return result;
}

uint64_t DoorEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AccessoryEventBaseLegacy(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v11);
  sub_254231924(v11, v7);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_2541491D8(a1, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v9 = v11[0];
  sub_25414A414(v7, a2);
  result = type metadata accessor for DoorEvent(0);
  *(a2 + *(result + 20)) = v9;
  return result;
}

uint64_t DoorEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E60, &qword_254254A10);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  result = sub_254231F94(a1);
  if (!v2)
  {
    v9[15] = *(v1 + *(type metadata accessor for DoorEvent(0) + 20));
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25412F1C4();
    sub_25424EC78();
    v9[14] = 1;
    sub_254209234();
    sub_25424EA18();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

unint64_t sub_254209234()
{
  result = qword_27F5BBD38;
  if (!qword_27F5BBD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBD38);
  }

  return result;
}

unint64_t sub_25420928C()
{
  result = qword_27F5BBD40;
  if (!qword_27F5BBD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBD40);
  }

  return result;
}

unint64_t sub_2542092E4()
{
  result = qword_27F5BBD48;
  if (!qword_27F5BBD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BBD50, &qword_254260E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBD48);
  }

  return result;
}

unint64_t sub_25420934C()
{
  result = qword_27F5BBD58;
  if (!qword_27F5BBD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBD58);
  }

  return result;
}

uint64_t sub_2542093A0(void *a1)
{
  a1[1] = sub_254209540(&qword_27F5BB2D0, type metadata accessor for DoorEvent, &protocol conformance descriptor for DoorEvent);
  a1[2] = sub_254209540(&qword_27F5BBD68, type metadata accessor for DoorEvent, &protocol conformance descriptor for DoorEvent);
  result = sub_254209540(&qword_27F5BBD70, type metadata accessor for DoorEvent, &protocol conformance descriptor for DoorEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_254209494(void *a1)
{
  a1[1] = sub_254209540(&qword_27F5BBD80, type metadata accessor for DoorEvent, &protocol conformance descriptor for DoorEvent);
  a1[2] = sub_254209540(&qword_27F5BBD88, type metadata accessor for DoorEvent, &unk_254260FB0);
  result = sub_254209540(&qword_27F5BBD90, type metadata accessor for DoorEvent, &protocol conformance descriptor for DoorEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_254209540(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2542095D0(void *a1)
{
  a1[1] = sub_25414AC2C();
  a1[2] = sub_254209234();
  result = sub_254209608();
  a1[3] = result;
  return result;
}

unint64_t sub_254209608()
{
  result = qword_27F5BBD98;
  if (!qword_27F5BBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBD98);
  }

  return result;
}

unint64_t sub_25420965C(uint64_t a1)
{
  result = sub_254209684();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_254209684()
{
  result = qword_27F5BBDA0;
  if (!qword_27F5BBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBDA0);
  }

  return result;
}

unint64_t sub_2542096D8(uint64_t a1)
{
  result = sub_25420934C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254209728(uint64_t a1)
{
  result = type metadata accessor for AccessoryEventBaseLegacy(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2542097AC()
{
  result = qword_27F5BBDB8;
  if (!qword_27F5BBDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBDB8);
  }

  return result;
}

uint64_t sub_254209864(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_25424E688();
  v11 = a1(0);
  v22 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = sub_25424DD08();
  MEMORY[0x259C05CA0](v12);

  MEMORY[0x259C05CA0](0x74617473207B203ALL, 0xEB00000000203A65);
  LOBYTE(v22) = *(v4 + *(v11 + 20));
  sub_25424E7D8();
  MEMORY[0x259C05CA0](0x6F6765746163202CLL, 0xEC000000203A7972);
  LOBYTE(v22) = *(v4 + *(type metadata accessor for EventBase(0) + 24));
  v13 = sub_25424DD08();
  MEMORY[0x259C05CA0](v13);

  MEMORY[0x259C05CA0](0x203A65746164202CLL, 0xE800000000000000);
  sub_25424D8B8();
  sub_25420B5EC(&qword_27F5B9208, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v14 = sub_25424EA58();
  MEMORY[0x259C05CA0](v14);

  MEMORY[0x259C05CA0](0x203A656D6F68202CLL, 0xE800000000000000);
  sub_25424D948();
  sub_25420B5EC(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v15 = sub_25424EA58();
  MEMORY[0x259C05CA0](v15);

  MEMORY[0x259C05CA0](0x203A6D6F6F72202CLL, 0xE800000000000000);
  v16 = type metadata accessor for AccessoryEventBase(0);
  v17 = sub_25424EA58();
  MEMORY[0x259C05CA0](v17);

  MEMORY[0x259C05CA0](0x737365636361202CLL, 0xED0000203A79726FLL);
  v18 = sub_25424EA58();
  MEMORY[0x259C05CA0](v18);

  MEMORY[0x259C05CA0](0x203A72657375202CLL, 0xE800000000000000);
  sub_254149770(v4 + *(v16 + 36), v10);
  v19 = sub_25424DD08();
  MEMORY[0x259C05CA0](v19);

  MEMORY[0x259C05CA0](32032, 0xE200000000000000);
  return v23;
}

uint64_t sub_254209C2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - v2;
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_25424E688();
  v4 = type metadata accessor for ThermostatAutomationFailureEvent(0);
  v15 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE70, &qword_254261460);
  v5 = sub_25424DD08();
  MEMORY[0x259C05CA0](v5);

  MEMORY[0x259C05CA0](0x74617473207B203ALL, 0xEB00000000203A65);
  LOBYTE(v15) = *(v0 + *(v4 + 20));
  sub_25424E7D8();
  MEMORY[0x259C05CA0](0x6F6765746163202CLL, 0xEC000000203A7972);
  LOBYTE(v15) = *(v0 + *(type metadata accessor for EventBase(0) + 24));
  v6 = sub_25424DD08();
  MEMORY[0x259C05CA0](v6);

  MEMORY[0x259C05CA0](0x203A65746164202CLL, 0xE800000000000000);
  sub_25424D8B8();
  sub_25420B5EC(&qword_27F5B9208, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v7 = sub_25424EA58();
  MEMORY[0x259C05CA0](v7);

  MEMORY[0x259C05CA0](0x203A656D6F68202CLL, 0xE800000000000000);
  sub_25424D948();
  sub_25420B5EC(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v8 = sub_25424EA58();
  MEMORY[0x259C05CA0](v8);

  MEMORY[0x259C05CA0](0x203A6D6F6F72202CLL, 0xE800000000000000);
  v9 = type metadata accessor for AccessoryEventBase(0);
  v10 = sub_25424EA58();
  MEMORY[0x259C05CA0](v10);

  MEMORY[0x259C05CA0](0x737365636361202CLL, 0xED0000203A79726FLL);
  v11 = sub_25424EA58();
  MEMORY[0x259C05CA0](v11);

  MEMORY[0x259C05CA0](0x203A72657375202CLL, 0xE800000000000000);
  sub_254149770(v0 + *(v9 + 36), v3);
  v12 = sub_25424DD08();
  MEMORY[0x259C05CA0](v12);

  MEMORY[0x259C05CA0](32032, 0xE200000000000000);
  return v16;
}

uint64_t sub_254209FEC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_25424E688();
  v22 = a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = sub_25424DD08();
  MEMORY[0x259C05CA0](v12);

  MEMORY[0x259C05CA0](0x74617473207B203ALL, 0xEB00000000203A65);
  a4(0);
  sub_25424E7D8();
  MEMORY[0x259C05CA0](0x6F6765746163202CLL, 0xEC000000203A7972);
  LOBYTE(v22) = *(v4 + *(type metadata accessor for EventBase(0) + 24));
  v13 = sub_25424DD08();
  MEMORY[0x259C05CA0](v13);

  MEMORY[0x259C05CA0](0x203A65746164202CLL, 0xE800000000000000);
  sub_25424D8B8();
  sub_25420B5EC(&qword_27F5B9208, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v14 = sub_25424EA58();
  MEMORY[0x259C05CA0](v14);

  MEMORY[0x259C05CA0](0x203A656D6F68202CLL, 0xE800000000000000);
  sub_25424D948();
  sub_25420B5EC(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v15 = sub_25424EA58();
  MEMORY[0x259C05CA0](v15);

  MEMORY[0x259C05CA0](0x203A6D6F6F72202CLL, 0xE800000000000000);
  v16 = type metadata accessor for AccessoryEventBase(0);
  v17 = sub_25424EA58();
  MEMORY[0x259C05CA0](v17);

  MEMORY[0x259C05CA0](0x737365636361202CLL, 0xED0000203A79726FLL);
  v18 = sub_25424EA58();
  MEMORY[0x259C05CA0](v18);

  MEMORY[0x259C05CA0](0x203A72657375202CLL, 0xE800000000000000);
  sub_254149770(v4 + *(v16 + 36), v11);
  v19 = sub_25424DD08();
  MEMORY[0x259C05CA0](v19);

  MEMORY[0x259C05CA0](32032, 0xE200000000000000);
  return v23;
}

HomeKitEvents::ContactSensorEvent::State_optional __swiftcall ContactSensorEvent.State.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ContactSensorEvent.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ContactSensorEvent(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for ContactSensorEvent(uint64_t a1)
{
  result = qword_27F5BBE30;
  if (!qword_27F5BBE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContactSensorEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D8B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ContactSensorEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ContactSensorEvent.roomName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));

  return v1;
}

uint64_t ContactSensorEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContactSensorEvent.accessoryName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));

  return v1;
}

uint64_t ContactSensorEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

BOOL static ContactSensorEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for ContactSensorEvent(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t ContactSensorEvent.hash(into:)(uint64_t a1)
{
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_25424D8B8();
  sub_25420B5EC(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  v9 = type metadata accessor for EventBase(0);
  sub_25420B5EC(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254261490[*(v1 + *(v9 + 24))]);
  v10 = type metadata accessor for AccessoryEventBase(0);
  sub_25424DC28();
  sub_25424DD88();
  sub_25424DC28();
  sub_25424DD88();
  sub_254149770(v1 + *(v10 + 36), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v3 + 8))(v5, v2);
  }

  v11 = type metadata accessor for ContactSensorEvent(0);
  return MEMORY[0x259C06AA0](*(v1 + *(v11 + 20)));
}

uint64_t ContactSensorEvent.hashValue.getter()
{
  sub_25424EBD8();
  ContactSensorEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_25420AA8C()
{
  sub_25424EBD8();
  ContactSensorEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_25420AAD0(uint64_t a1)
{
  sub_25424EBD8();
  ContactSensorEvent.hash(into:)(v2);
  return sub_25424EC28();
}

uint64_t ContactSensorEvent.init(date:homeIdentifier:roomIdentifier:roomName:accessoryIdentifier:accessoryName:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v28 = *a10;
  v16 = type metadata accessor for AccessoryEventBase(0);
  v17 = v16[9];
  v18 = sub_25424D948();
  v19 = *(v18 - 8);
  (*(v19 + 56))(a9 + v17, 1, 1, v18);
  v20 = sub_25424D8B8();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for EventBase(0);
  v22 = *(v19 + 32);
  v22(a9 + v21[5], a2, v18);
  *(a9 + v21[6]) = 1;
  v23 = (a9 + v21[7]);
  v23[1] = 0;
  v23[2] = 0;
  *v23 = 15;
  v22(a9 + v16[5], a3, v18);
  v24 = (a9 + v16[6]);
  *v24 = a4;
  v24[1] = a5;
  v22(a9 + v16[7], a6, v18);
  v25 = (a9 + v16[8]);
  *v25 = a7;
  v25[1] = a8;
  result = type metadata accessor for ContactSensorEvent(0);
  *(a9 + *(result + 20)) = v28;
  return result;
}

uint64_t ContactSensorEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AccessoryEventBaseLegacy(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v11);
  sub_254231924(v11, v7);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_25414920C(a1, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v9 = v11[0];
  sub_25414A414(v7, a2);
  result = type metadata accessor for ContactSensorEvent(0);
  *(a2 + *(result + 20)) = v9;
  return result;
}

uint64_t ContactSensorEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E60, &qword_254254A10);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  result = sub_254231F94(a1);
  if (!v2)
  {
    v9[15] = *(v1 + *(type metadata accessor for ContactSensorEvent(0) + 20));
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25412F1C4();
    sub_25424EC78();
    v9[14] = 1;
    sub_25420B068();
    sub_25424EA18();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

unint64_t sub_25420B068()
{
  result = qword_27F5BBDC0;
  if (!qword_27F5BBDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBDC0);
  }

  return result;
}

unint64_t sub_25420B0C0()
{
  result = qword_27F5BBDC8;
  if (!qword_27F5BBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBDC8);
  }

  return result;
}

unint64_t sub_25420B118()
{
  result = qword_27F5BBDD0;
  if (!qword_27F5BBDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BBDD8, &qword_2542611D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBDD0);
  }

  return result;
}

unint64_t sub_25420B180()
{
  result = qword_27F5BBDE0;
  if (!qword_27F5BBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBDE0);
  }

  return result;
}

uint64_t sub_25420B1D4(void *a1)
{
  a1[1] = sub_25420B5EC(&qword_27F5BB2C8, type metadata accessor for ContactSensorEvent, &protocol conformance descriptor for ContactSensorEvent);
  a1[2] = sub_25420B5EC(&qword_27F5BBDF0, type metadata accessor for ContactSensorEvent, &protocol conformance descriptor for ContactSensorEvent);
  result = sub_25420B5EC(&qword_27F5BBDF8, type metadata accessor for ContactSensorEvent, &protocol conformance descriptor for ContactSensorEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_25420B2C8(void *a1)
{
  a1[1] = sub_25420B5EC(&qword_27F5BBE08, type metadata accessor for ContactSensorEvent, &protocol conformance descriptor for ContactSensorEvent);
  a1[2] = sub_25420B5EC(&qword_27F5BBE10, type metadata accessor for ContactSensorEvent, &unk_254261300);
  result = sub_25420B5EC(&qword_27F5BBE18, type metadata accessor for ContactSensorEvent, &protocol conformance descriptor for ContactSensorEvent);
  a1[3] = result;
  return result;
}

unint64_t sub_25420B3BC(void *a1)
{
  a1[1] = sub_25414ABD8();
  a1[2] = sub_25420B068();
  result = sub_25420B3F4();
  a1[3] = result;
  return result;
}

unint64_t sub_25420B3F4()
{
  result = qword_27F5BBE20;
  if (!qword_27F5BBE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBE20);
  }

  return result;
}

unint64_t sub_25420B448(uint64_t a1)
{
  result = sub_25420B470();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25420B470()
{
  result = qword_27F5BBE28;
  if (!qword_27F5BBE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBE28);
  }

  return result;
}

unint64_t sub_25420B4C4(uint64_t a1)
{
  result = sub_25420B180();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25420B514(uint64_t a1)
{
  result = type metadata accessor for AccessoryEventBaseLegacy(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25420B598()
{
  result = qword_27F5BBE40;
  if (!qword_27F5BBE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBE40);
  }

  return result;
}

uint64_t sub_25420B5EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25420B638@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v59 = *MEMORY[0x277D85DE8];
  v7 = sub_25424DB08();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25424D948();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v49 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_25424DB38();
  result = MEMORY[0x28223BE20](v51);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    v19 = BYTE6(a2);
    if (v18)
    {
      v19 = a1 >> 32;
      v20 = a1;
    }

    else
    {
      v20 = 0;
    }

    if (v20 == v19)
    {
      goto LABEL_41;
    }

    goto LABEL_9;
  }

  if (v18 == 2 && *(a1 + 16) != *(a1 + 24))
  {
LABEL_9:
    v48 = v12;
    v21 = v50;
    v22 = *(v50 + 16);
    if (!v22)
    {
      goto LABEL_39;
    }

    v40 = v11;
    v41 = v10;
    v42 = v8;
    v43 = v7;
    v44 = v15;
    v45 = a4;
    sub_25424DB28();
    sub_254140660(a1, a2);
    sub_25420BCC0(a1, a2, v17);
    v39[1] = 0;
    v46 = a1;
    v47 = a2;
    sub_254134D04(a1, a2);
    v23 = 0;
    v24 = (v21 + 40);
    v25 = v21;
    while (1)
    {
      if (v23 >= *(v25 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
      }

      v27 = *(v24 - 1);
      v26 = *v24;
      v28 = *v24 >> 62;
      if (v28 > 1)
      {
        if (v28 != 2)
        {
          goto LABEL_40;
        }

        v29 = *(v27 + 16);
        v30 = *(v27 + 24);
        if (v29 == v30)
        {
          goto LABEL_33;
        }

        sub_254140660(*(v24 - 1), *v24);
        if (sub_25424D268() && __OFSUB__(v29, sub_25424D298()))
        {
          goto LABEL_37;
        }

        if (__OFSUB__(v30, v29))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (!v28)
        {
          if (!BYTE6(v26))
          {
            goto LABEL_32;
          }

          v54 = *(v24 - 1);
          v55 = v26;
          v56 = WORD2(v26);
          sub_25420BF80(&qword_281407068, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
          sub_25424DAF8();
          sub_254134D04(v27, v26);
          goto LABEL_13;
        }

        if (v27 >> 32 == v27)
        {
          goto LABEL_34;
        }

        if (v27 >> 32 < v27)
        {
          goto LABEL_35;
        }

        sub_254140660(*(v24 - 1), *v24);
        if (sub_25424D268() && __OFSUB__(v27, sub_25424D298()))
        {
          goto LABEL_38;
        }
      }

      sub_25424D288();
      sub_25420BF80(&qword_281407068, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      sub_25424DAF8();
      sub_254134D04(v27, v26);
      v25 = v50;
LABEL_13:
      ++v23;
      v24 += 2;
      if (v22 == v23)
      {

        v31 = v49;
        sub_25424D938();
        sub_25424D928();
        (*(v48 + 8))(v31, v40);
        v32 = v41;
        v39[0] = v17;
        sub_25424DB18();
        v33 = v43;
        v57 = v43;
        v58 = sub_25420BF80(&unk_281407070, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
        v34 = __swift_allocate_boxed_opaque_existential_1(&v54);
        v35 = v42;
        (*(v42 + 16))(v34, v32, v33);
        __swift_project_boxed_opaque_existential_1(&v54, v57);
        sub_25424D308();
        (*(v35 + 8))(v32, v33);
        v36 = v52;
        v37 = v53;
        __swift_destroy_boxed_opaque_existential_1(&v54);
        sub_254140660(v36, v37);
        v38 = sub_25412C128(v36, v37);
        LODWORD(v43) = *(v38 + 41);
        LODWORD(v50) = *(v38 + 39);
        LODWORD(v49) = *(v38 + 37);
        LODWORD(v48) = *(v38 + 36);

        sub_25424D918();
        sub_254134D04(v36, v37);
        sub_254134D04(v46, v47);
        return (*(v44 + 8))(v39[0], v51);
      }
    }
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_25420BCC0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_25424DB38();
      sub_25420BF80(&qword_281407068, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_25424DAF8();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_25420BEA0(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_25420BEA0(v5, v6);
  }

  sub_25424DB38();
  sub_25420BF80(&qword_281407068, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_25424DAF8();
}

uint64_t sub_25420BEA0(uint64_t a1, uint64_t a2)
{
  result = sub_25424D268();
  if (!result || (result = sub_25424D298(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_25424D288();
      sub_25424DB38();
      sub_25420BF80(&qword_281407068, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_25424DAF8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25420BF80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static LoggedObject.logger.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v39 = a3;
  v4 = sub_25424DAA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v38 = &v33 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v33 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - v19;
  type metadata accessor for LoggedObjectPropertyKey();
  inited = swift_initStaticObject();
  *&v41 = a1;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v22 = sub_25424EAA8();
  v37 = inited;
  v23 = objc_getAssociatedObject(v22, inited);
  swift_unknownObjectRelease();
  if (v23)
  {
    sub_25424E5D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v40 = v10;
  v43[0] = v41;
  v43[1] = v42;
  if (*(&v42 + 1))
  {
    v24 = swift_dynamicCast();
    v25 = *(v5 + 56);
    v25(v20, v24 ^ 1u, 1, v4);
  }

  else
  {
    sub_254132E5C(v43, &qword_27F5BA568, &qword_254259B88);
    v25 = *(v5 + 56);
    v25(v20, 1, 1, v4);
  }

  sub_25420C4E0(v20, v18);
  v26 = *(v5 + 48);
  v27 = v26(v18, 1, v4);
  sub_254132E5C(v18, &qword_27F5BBE98, &unk_2542614D0);
  if (v27 == 1)
  {
    (*(v36 + 16))(a1);
    sub_25424DA98();
    v25(v15, 0, 1, v4);
    sub_25420C5F0(v15, v20);
    *&v43[0] = a1;
    v28 = sub_25424EAA8();
    v29 = v38;
    sub_25420C4E0(v20, v38);
    if (v26(v29, 1, v4) == 1)
    {
      v30 = 0;
    }

    else
    {
      (*(v5 + 16))(v34, v29, v4);
      v30 = sub_25424EB18();
      (*(v5 + 8))(v29, v4);
    }

    objc_setAssociatedObject(v28, v37, v30, 0x301);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v31 = v40;
  sub_25420C4E0(v20, v40);
  result = v26(v31, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v39, v31, v4);
    return sub_254132E5C(v20, &qword_27F5BBE98, &unk_2542614D0);
  }

  return result;
}

uint64_t sub_25420C4E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static Log.logger(category:)(uint64_t a1, uint64_t a2)
{

  return sub_25424DA98();
}

uint64_t sub_25420C5F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static LoggedObject<>.logger.getter(uint64_t a1)
{
  swift_getMetatypeMetadata();
  sub_25424DD08();
  return sub_25424DA98();
}

uint64_t sub_25420C7A4(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3 == 1)
  {
    return result;
  }

  v5 = result;
  v7 = *v2;
  v6 = *(v2 + 8);
  if (result == 91 && a2 == 0xE100000000000000 || (sub_25424EAB8() & 1) != 0)
  {
    if (v3)
    {
      v8 = 2;

      return sub_25420D484(v8);
    }

    result = swift_beginAccess();
    v9 = *(v7 + 16);
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = *(v9 + v10 + 31);
      if ((v11 - 2) < 2)
      {
        v8 = 2;
        return sub_25420D484(v8);
      }

      goto LABEL_32;
    }

    goto LABEL_186;
  }

  if (v5 == 93 && a2 == 0xE100000000000000 || (sub_25424EAB8() & 1) != 0)
  {
    if (v3)
    {
      v12 = v2;
      sub_25424E688();

      goto LABEL_18;
    }

    result = swift_beginAccess();
    v16 = *(v7 + 16);
    v17 = *(v16 + 16);
    if (!v17)
    {
      goto LABEL_186;
    }

    v18 = v2;
    v19 = *(v16 + v17 + 31);
    switch(v19)
    {
      case 4:

        sub_25420D918();
        swift_beginAccess();
        v26 = *(v7 + 16);
        v27 = *(v26 + 16);
        if (v27)
        {
          if (*(v26 + v27 + 31) == 2)
          {

            sub_25420D918();
            sub_254183380(v7, v6, 0);
LABEL_41:
            swift_beginAccess();
            v28 = *(*(v7 + 16) + 16);
            result = sub_254183380(v7, v6, 0);
            if (!v28)
            {
              result = sub_254183380(v7, v6, 0);
              *v18 = 0;
              *(v18 + 8) = 0;
              *(v18 + 16) = 2;
            }

            return result;
          }

          v35 = 0;
          v36 = v7;
          v37 = v6;
        }

        else
        {
          sub_254183380(v7, v6, 0);
          *v2 = 0;
          *(v2 + 8) = 0;
          *(v2 + 16) = 2;
          v33 = *(v7 + 16);
          v34 = *(v33 + 16);
          if (!v34)
          {
            goto LABEL_186;
          }

          if (*(v33 + v34 + 31) == 2)
          {
            result = sub_254183380(v7, v6, 0);
            *v2 = xmmword_254261570;
LABEL_66:
            *(v2 + 16) = 1;
            return result;
          }

          v36 = 0;
          v37 = 0;
          v35 = 2;
        }

        v41 = sub_25420DB04(v36, v37, v35);
        MEMORY[0x259C05CA0](v41);

        sub_254183380(v7, v6, 0);
        result = sub_254183380(v36, v37, v35);
        break;
      case 3:
        sub_25420E078(v7, v6, 0);
        v25 = sub_25420DB04(v7, v6, 0);
        MEMORY[0x259C05CA0](v25);

        sub_254183380(v7, v6, 0);
        result = sub_254183380(v7, v6, 0);
        break;
      case 2:

        sub_25420D918();
        goto LABEL_41;
      default:
        return result;
    }

    *v2 = 0xD000000000000014;
    *(v2 + 8) = 0x8000000254251940;
    goto LABEL_66;
  }

  if (v5 == 123 && a2 == 0xE100000000000000 || (sub_25424EAB8() & 1) != 0)
  {
    if (!v3)
    {
      result = swift_beginAccess();
      v21 = *(v7 + 16);
      v22 = *(v21 + 16);
      if (v22)
      {
        v11 = *(v21 + v22 + 31);
        if ((v11 - 2) < 2)
        {
          v8 = 3;
          return sub_25420D484(v8);
        }

LABEL_32:
        if (v11 != 4)
        {
          return result;
        }

        goto LABEL_33;
      }

LABEL_186:
      result = sub_25424E858();
      __break(1u);
      return result;
    }

LABEL_28:
    v20 = sub_25420DB04(v7, v6, v3);
    MEMORY[0x259C05CA0](v20);

    *v2 = 0xD000000000000018;
    *(v2 + 8) = 0x80000002542518C0;
    *(v2 + 16) = 1;
    return result;
  }

  if ((v5 != 125 || a2 != 0xE100000000000000) && (sub_25424EAB8() & 1) == 0)
  {
    if (v5 == 92 && a2 == 0xE100000000000000 || (sub_25424EAB8() & 1) != 0)
    {
      if (v3)
      {
        goto LABEL_28;
      }

      swift_beginAccess();
      v38 = *(v7 + 16);
      v39 = *(v38 + 16);
      if (!v39)
      {
        goto LABEL_186;
      }

      v40 = *(v38 + v39 + 31);
      if ((v40 - 2) < 2)
      {
        v23 = "Expected string, not ";
        goto LABEL_34;
      }

      if (v40 == 4)
      {
LABEL_33:
        v23 = "Expected number, not ";
LABEL_34:
        v87 = (v23 - 32) | 0x8000000000000000;
        sub_25420E078(v7, v6, 0);
        v24 = sub_25420DB04(v7, v6, 0);
        v12 = v2;
LABEL_35:
        MEMORY[0x259C05CA0](v24);

        sub_254183380(v7, v6, 0);
        result = sub_254183380(v7, v6, 0);
        v14 = 0xD000000000000015;
        v15 = v87;
        goto LABEL_36;
      }

      sub_25420E078(v7, v6, 0);
      v46 = (v40 & 1) == 0;
LABEL_79:
      sub_25420DA10(v46);
      return sub_254183380(v7, v6, 0);
    }

    if (v5 == 34 && a2 == 0xE100000000000000 || (sub_25424EAB8() & 1) != 0)
    {
      if (v3)
      {
        goto LABEL_28;
      }

      swift_beginAccess();
      v43 = *(v7 + 16);
      v44 = *(v43 + 16);
      if (!v44)
      {
        goto LABEL_186;
      }

      v45 = *(v43 + v44 + 31);
      if ((v45 - 2) < 2)
      {
        v8 = 0;
        return sub_25420D484(v8);
      }

      v12 = v2;
      if (v45 == 4)
      {
LABEL_87:
        v32 = "Expected number, not ";
LABEL_88:
        v87 = (v32 - 32) | 0x8000000000000000;
        sub_25420E078(v7, v6, 0);
        v24 = sub_25420DB04(v7, v6, 0);
        goto LABEL_35;
      }

      sub_25420E078(v7, v6, 0);
      if ((v45 & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_171;
    }

    if (v5 == 48 && a2 == 0xE100000000000000 || ((v49 = sub_25424EAB8(), v5 == 49) ? (v50 = a2 == 0xE100000000000000) : (v50 = 0), !v50 ? (v51 = 0) : (v51 = 1), (v49 & 1) != 0 || (v51 & 1) != 0 || ((v52 = sub_25424EAB8(), v5 == 50) ? (v53 = a2 == 0xE100000000000000) : (v53 = 0), !v53 ? (v54 = 0) : (v54 = 1), (v52 & 1) != 0 || (v54 & 1) != 0 || ((v55 = sub_25424EAB8(), v5 == 51) ? (v56 = a2 == 0xE100000000000000) : (v56 = 0), !v56 ? (v57 = 0) : (v57 = 1), (v55 & 1) != 0 || (v57 & 1) != 0 || ((v58 = sub_25424EAB8(), v5 == 52) ? (v59 = a2 == 0xE100000000000000) : (v59 = 0), !v59 ? (v60 = 0) : (v60 = 1), (v58 & 1) != 0 || (v60 & 1) != 0 || ((v61 = sub_25424EAB8(), v5 == 53) ? (v62 = a2 == 0xE100000000000000) : (v62 = 0), !v62 ? (v63 = 0) : (v63 = 1), (v61 & 1) != 0 || (v63 & 1) != 0 || ((v64 = sub_25424EAB8(), v5 == 54) ? (v65 = a2 == 0xE100000000000000) : (v65 = 0), !v65 ? (v66 = 0) : (v66 = 1), (v64 & 1) != 0 || (v66 & 1) != 0 || ((v67 = sub_25424EAB8(), v5 == 55) ? (v68 = a2 == 0xE100000000000000) : (v68 = 0), !v68 ? (v69 = 0) : (v69 = 1), (v67 & 1) != 0 || (v69 & 1) != 0 || ((v70 = sub_25424EAB8(), v5 == 56) ? (v71 = a2 == 0xE100000000000000) : (v71 = 0), !v71 ? (v72 = 0) : (v72 = 1), (v70 & 1) != 0 || (v72 & 1) != 0 || ((v73 = sub_25424EAB8(), v5 == 57) ? (v74 = a2 == 0xE100000000000000) : (v74 = 0), !v74 ? (v75 = 0) : (v75 = 1), (v73 & 1) != 0 || (v75 & 1) != 0 || (sub_25424EAB8() & 1) != 0))))))))))
    {
      v12 = v2;
      if (!v3)
      {
        result = swift_beginAccess();
        v47 = *(v7 + 16);
        v48 = *(v47 + 16);
        if (v48)
        {
          if (*(v47 + v48 + 31) != 2)
          {
            return result;
          }

          v8 = 4;
          return sub_25420D484(v8);
        }

        goto LABEL_186;
      }

LABEL_18:
      v13 = sub_25420DB04(v7, v6, v3);
      MEMORY[0x259C05CA0](v13);

      v14 = 0xD000000000000018;
      v15 = 0x80000002542518C0;
LABEL_36:
      *v12 = v14;
      *(v12 + 8) = v15;
      *(v12 + 16) = 1;
      return result;
    }

    v76 = v2;
    if (v5 == 44 && a2 == 0xE100000000000000 || (sub_25424EAB8() & 1) != 0)
    {
      if (v3)
      {
        v88 = 0xD000000000000018;
        v89 = 0x80000002542518C0;
        v77 = sub_25420DB04(v7, v6, v3);
        MEMORY[0x259C05CA0](v77);

        goto LABEL_167;
      }
    }

    else
    {
      result = sub_25424DC38();
      if ((result & 1) == 0)
      {
        if (!v3)
        {
          result = swift_beginAccess();
          v84 = *(v7 + 16);
          v85 = *(v84 + 16);
          if (!v85)
          {
            goto LABEL_186;
          }

          v86 = *(v84 + v85 + 31);
          if ((v86 - 2) < 2)
          {
            return result;
          }

          if (v86 != 4)
          {
            if ((v86 & 1) == 0)
            {
              return result;
            }

            sub_25420E078(v7, v6, 0);
LABEL_171:
            v46 = 0;
            goto LABEL_79;
          }

          sub_25420E078(v7, v6, 0);
          sub_25424E688();
          MEMORY[0x259C05CA0](0xD000000000000016, 0x8000000254251850);
          sub_25424DC48();
          MEMORY[0x259C05CA0](39, 0xE100000000000000);
          sub_254183380(v7, v6, 0);
          result = sub_254183380(v7, v6, 0);
          v78 = 0;
          v79 = 0xE000000000000000;
          goto LABEL_168;
        }

        v88 = 0;
        v89 = 0xE000000000000000;
        sub_25424E688();
        MEMORY[0x259C05CA0](0xD00000000000002FLL, 0x8000000254251890);
        sub_25424DC48();
        result = MEMORY[0x259C05CA0](39, 0xE100000000000000);
LABEL_167:
        v78 = v88;
        v79 = v89;
LABEL_168:
        *v2 = v78;
        *(v2 + 8) = v79;
        v80 = 1;
        goto LABEL_169;
      }

      if (v3)
      {
        return result;
      }
    }

    result = swift_beginAccess();
    v81 = *(v7 + 16);
    v82 = *(v81 + 16);
    if (!v82)
    {
      goto LABEL_186;
    }

    if (*(v81 + v82 + 31) != 4)
    {
      return result;
    }

    sub_25420E078(v7, v6, 0);
    sub_25420D918();
    swift_beginAccess();
    v83 = *(*(v7 + 16) + 16);
    result = sub_254183380(v7, v6, 0);
    if (v83)
    {
      return result;
    }

    result = sub_254183380(v7, v6, 0);
    *v76 = 0;
    *(v76 + 8) = 0;
    v80 = 2;
LABEL_169:
    *(v76 + 16) = v80;
    return result;
  }

  if (v3)
  {
    goto LABEL_28;
  }

  result = swift_beginAccess();
  v29 = *(v7 + 16);
  v30 = *(v29 + 16);
  if (!v30)
  {
    goto LABEL_186;
  }

  v12 = v2;
  v31 = *(v29 + v30 + 31);
  if (v31 == 4)
  {
    goto LABEL_87;
  }

  if (v31 != 3)
  {
    if (v31 != 2)
    {
      return result;
    }

    v32 = "Expected object, not ";
    goto LABEL_88;
  }

  sub_25420E078(v7, v6, 0);
LABEL_68:
  sub_25420D918();
  swift_beginAccess();
  v42 = *(*(v7 + 16) + 16);
  result = sub_254183380(v7, v6, 0);
  if (!v42)
  {
    result = sub_254183380(v7, v6, 0);
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 2;
  }

  return result;
}

uint64_t sub_25420D484(uint64_t result)
{
  v2 = result;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) != 1)
    {
      type metadata accessor for JSONArrayScanner.InternalState.Stack();
      v3 = swift_allocObject();
      v4 = MEMORY[0x277D84F90];
      *(v3 + 16) = MEMORY[0x277D84F90];
      swift_beginAccess();
      *(v3 + 16) = v4;
      v5 = sub_2541B0AEC(0, 1, 1, v4);
      *(v3 + 16) = v5;
      v7 = *(v5 + 2);
      v6 = *(v5 + 3);
      if (v7 >= v6 >> 1)
      {
        v5 = sub_2541B0AEC((v6 > 1), v7 + 1, 1, v5);
      }

      *(v5 + 2) = v7 + 1;
      v5[v7 + 32] = v2;
      *(v3 + 16) = v5;
      result = swift_endAccess();
      *v1 = v3;
      *(v1 + 8) = 0;
      *(v1 + 16) = 0;
    }
  }

  else
  {
    v9 = *v1;
    v8 = *(v1 + 8);
    swift_beginAccess();
    v10 = *(v9 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 16) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_2541B0AEC(0, *(v10 + 2) + 1, 1, v10);
      *(v9 + 16) = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_2541B0AEC((v12 > 1), v13 + 1, 1, v10);
    }

    *(v10 + 2) = v13 + 1;
    v10[v13 + 32] = v2;
    *(v9 + 16) = v10;
    swift_endAccess();
    return sub_254183380(v9, v8, 0);
  }

  return result;
}

uint64_t sub_25420D628(char a1)
{
  switch(a1)
  {
    case 2:
      return 0x7961727261;
    case 3:
      return 0x7463656A626FLL;
    case 4:
      return 0x7265626D756ELL;
  }

  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x259C05CA0](v2, v3);

  MEMORY[0x259C05CA0](v2, v3);

  MEMORY[0x259C05CA0](41, 0xE100000000000000);
  return 0x2820676E69727473;
}

BOOL sub_25420D73C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 2:
      return v3 == 2;
    case 3:
      return v3 == 3;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 2) < 3)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t sub_25420D7AC()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t get_enum_tag_for_layout_string_13HomeKitEvents16JSONArrayScannerV13InternalState33_16E2CA6E7C5E738EB4F331A231BC499FLLO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for JSONArrayScanner.Container(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_25420D8D4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_25420D8F0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_25420D918()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (*(v1 + 2))
  {
    swift_beginAccess();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v2 = *(v1 + 2);
      if (v2)
      {
LABEL_4:
        v3 = v2 - 1;
        *(v1 + 2) = v3;
        v4 = v1[v3 + 32];
        *(v0 + 16) = v1;
        swift_endAccess();
        return v4;
      }
    }

    else
    {
      v1 = sub_2541EADBC(v1);
      v2 = *(v1 + 2);
      if (v2)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  result = sub_25424E858();
  __break(1u);
  return result;
}

uint64_t sub_25420DA10(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v3 + 2);
  if (v4)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 16) = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_2541EADBC(v3);
    }

    if (v4 <= *(v3 + 2))
    {
      v3[v4 + 31] = a1;
      *(v1 + 16) = v3;
      return swift_endAccess();
    }

    __break(1u);
  }

  result = sub_25424E858();
  __break(1u);
  return result;
}

unint64_t sub_25420DB04(uint64_t a1, uint64_t a2, char a3)
{
  result = 1819047278;
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x259C05CA0](a1, a2);
      return 0x203A726F727265;
    }
  }

  else
  {
    swift_beginAccess();
    v5 = *(a1 + 16);
    v6 = *(v5 + 16);
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = 1953460082;
      }

      else
      {
        v7 = 0x64657473656ELL;
      }

      if (v6 == 1)
      {
        v8 = 0xE400000000000000;
      }

      else
      {
        v8 = 0xE600000000000000;
      }

      if (*(v5 + v6 + 31) == 2)
      {
        sub_25424E688();

        v9 = 0xD000000000000012;
      }

      else
      {
        sub_25424E688();

        v9 = 0xD000000000000013;
      }

      MEMORY[0x259C05CA0](v7, v8);

      MEMORY[0x259C05CA0](41, 0xE100000000000000);
      return v9;
    }

    else
    {
      return 1819047278;
    }
  }

  return result;
}

uint64_t sub_25420DD10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6 == 2)
      {
        if (v7 != 2)
        {
          return 0;
        }
      }

      else if (v5 == 3)
      {
        if (v7 != 3)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v7 != 4)
        {
          return 0;
        }
      }

      else if (v7 - 2) < 3 || ((v7 ^ v5))
      {
        return 0;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_25420DDB0(uint64_t a1, uint64_t a2)
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

  for (i = 0; ; i += 368)
  {
    v7 = *(a1 + i + 32);
    v6 = *(a1 + i + 40);
    v8 = *(a1 + i + 48);
    v9 = *(a1 + i + 104);
    v57[2] = *(a1 + i + 88);
    v57[3] = v9;
    v58[0] = *(a1 + i + 120);
    *(v58 + 9) = *(a1 + i + 129);
    v10 = *(a1 + i + 72);
    v57[0] = *(a1 + i + 56);
    v57[1] = v10;
    v11 = *(a1 + i + 168);
    v53[0] = *(a1 + i + 152);
    v53[1] = v11;
    v12 = *(a1 + i + 184);
    v13 = *(a1 + i + 200);
    v14 = *(a1 + i + 216);
    *(v54 + 9) = *(a1 + i + 225);
    v53[3] = v13;
    v54[0] = v14;
    v53[2] = v12;
    v15 = *(a1 + i + 248);
    v16 = *(a1 + i + 264);
    v17 = *(a1 + i + 280);
    *(v50 + 9) = *(a1 + i + 289);
    v49[1] = v16;
    v50[0] = v17;
    v49[0] = v15;
    v18 = *(a1 + i + 312);
    v19 = *(a1 + i + 328);
    v20 = *(a1 + i + 344);
    *&v46[9] = *(a1 + i + 353);
    v45[1] = v19;
    *v46 = v20;
    v45[0] = v18;
    result = 0;
    v23 = *(a1 + i + 376);
    v22 = *(a1 + i + 384);
    v24 = *(a1 + i + 392);
    v25 = a2 + i;
    v27 = *(a2 + i + 32);
    v26 = *(a2 + i + 40);
    v28 = *(a2 + i + 104);
    v59[2] = *(a2 + i + 88);
    v59[3] = v28;
    v60[0] = *(a2 + i + 120);
    *(v60 + 9) = *(a2 + i + 129);
    v29 = *(a2 + i + 72);
    v59[0] = *(a2 + i + 56);
    v59[1] = v29;
    v30 = *(a2 + i + 168);
    v55[0] = *(a2 + i + 152);
    v55[1] = v30;
    v31 = *(a2 + i + 184);
    v32 = *(a2 + i + 200);
    v33 = *(a2 + i + 216);
    *(v56 + 9) = *(a2 + i + 225);
    v55[3] = v32;
    v56[0] = v33;
    v55[2] = v31;
    v34 = *(a2 + i + 248);
    v35 = *(a2 + i + 264);
    v36 = *(a2 + i + 280);
    *(v52 + 9) = *(a2 + i + 289);
    v51[1] = v35;
    v52[0] = v36;
    v51[0] = v34;
    v37 = *(a2 + i + 312);
    v38 = *(a2 + i + 328);
    v39 = *(a2 + i + 344);
    v40 = *(a2 + i + 48);
    *&v48[9] = *(a2 + i + 353);
    v47[1] = v38;
    *v48 = v39;
    v47[0] = v37;
    if (v7 != v27 || v6 != v26 || v8 != v40)
    {
      break;
    }

    v42 = *(v25 + 376);
    v41 = *(v25 + 384);
    v43 = *(v25 + 392);
    if ((sub_254226694(v57, v59) & 1) == 0 || (sub_254226694(v53, v55) & 1) == 0 || (sub_2542265D0(v49, v51) & 1) == 0)
    {
      return 0;
    }

    v44 = sub_2542265D0(v45, v47);
    result = 0;
    if (v44 & 1) == 0 || v23 != v42 || v22 != v41 || ((v24 ^ v43))
    {
      return result;
    }

    if (!--v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_25420E000(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == *a2)
  {
    v5 = 1;
  }

  else
  {
    swift_beginAccess();
    v4 = *(v2 + 16);
    swift_beginAccess();
    v5 = sub_25420DD10(v4, *(v3 + 16));
  }

  return v5 & 1;
}

uint64_t sub_25420E078(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return v3;
}

uint64_t sub_25420E098(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      if (a1 != a4)
      {
        swift_beginAccess();
        v10 = *(a1 + 16);
        swift_beginAccess();
        return sub_25420DD10(v10, *(a4 + 16)) & 1;
      }

      return 1;
    }

    return 0;
  }

  if (a3 != 1)
  {
    return a6 == 2 && !(a5 | a4);
  }

  if (a6 != 1)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_25424EAB8();
}

uint64_t sub_25420E228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a3;
  v30 = a2;
  v3 = sub_25424D8B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0);
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v29);
  v9 = &v25 - v8;
  v26 = &v25 - v8;
  v10 = type metadata accessor for CKQueryAsyncSequence(0);
  v28 = *(v10 - 8);
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v16 = sub_25424E128();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_25420F954(v30, v12);
  v17 = v9;
  v18 = v29;
  (*(v6 + 16))(v17, v31, v29);
  v19 = v3;
  (*(v4 + 16))(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v3);
  v20 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v21 = (v11 + *(v6 + 80) + v20) & ~*(v6 + 80);
  v22 = (v7 + *(v4 + 80) + v21) & ~*(v4 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_25420F9B8(v12, v23 + v20);
  (*(v6 + 32))(v23 + v21, v26, v18);
  (*(v4 + 32))(v23 + v22, v27, v19);
  sub_25419CC1C(0, 0, v15, &unk_254261808, v23);
}

uint64_t sub_25420E58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = sub_25424E0A8();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v8 = sub_25424D8B8();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = type metadata accessor for CKQueryAsyncSequence(0);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v9 = sub_25424DAA8();
  v6[29] = v9;
  v6[30] = *(v9 - 8);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25420E7BC, 0, 0);
}

uint64_t sub_25420E7BC()
{
  v35 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[11];
  sub_25421BB60(v0[35]);
  sub_25420F954(v3, v1);
  sub_25420F954(v3, v2);
  v4 = sub_25424DA88();
  v5 = sub_25424E408();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[35];
  v8 = v0[29];
  v9 = v0[30];
  v11 = v0[27];
  v10 = v0[28];
  if (v6)
  {
    v30 = v0[26];
    v33 = v0[29];
    v12 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v12 = 136446466;
    sub_25424D948();
    v32 = v7;
    sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_25424EA58();
    v15 = v14;
    sub_254213C94(v10);
    v16 = sub_2542203C4(v13, v15, &v34);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    sub_25420F954(v11, v30);
    v17 = sub_25424DD08();
    v19 = v18;
    sub_254213C94(v11);
    v20 = sub_2542203C4(v17, v19, &v34);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_254124000, v4, v5, "[%{public}s] Beginning query: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v31, -1, -1);
    MEMORY[0x259C07330](v12, -1, -1);

    v21 = *(v9 + 8);
    v21(v32, v33);
  }

  else
  {

    sub_254213C94(v11);
    sub_254213C94(v10);
    v21 = *(v9 + 8);
    v21(v7, v8);
  }

  v0[36] = v21;
  v22 = swift_task_alloc();
  v23 = *(v0 + 11);
  v24 = v0[11];
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[2];
  v0[37] = v22;
  *(v22 + 16) = v23;
  v28 = swift_task_alloc();
  v0[38] = v28;
  *v28 = v0;
  v28[1] = sub_25420EAD8;

  return sub_25414CFC8(sub_25414CFC8, &unk_254261818, v22, v25, v26, v27);
}

uint64_t sub_25420EAD8()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_25420F030;
  }

  else
  {
    v2 = sub_25420EC08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25420EC08()
{
  v37 = v0;
  v1 = v0[25];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = v0[13];
  v6 = v0[11];
  sub_25421BB60(v0[34]);
  sub_25420F954(v6, v1);
  (*(v3 + 16))(v2, v5, v4);
  v7 = sub_25424DA88();
  v8 = sub_25424E408();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[25];
    v10 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v10 = 136446466;
    sub_25424D948();
    sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v11 = sub_25424EA58();
    v13 = v12;
    sub_254213C94(v9);
    v14 = sub_2542203C4(v11, v13, &v36);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    sub_25424D868();
    v15 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    [v15 setMaximumFractionDigits_];
    v16 = sub_25424E288();
    v17 = [v15 stringForObjectValue_];

    if (v17)
    {
      v18 = sub_25424DCB8();
      v20 = v19;
    }

    else
    {
      v18 = sub_25424E298();
      v20 = v28;
    }

    v29 = v0[36];
    v30 = v0[34];
    v31 = v0[29];
    (*(v0[19] + 8))(v0[20], v0[18]);
    v32 = sub_2542203C4(v18, v20, &v36);

    *(v10 + 14) = v32;
    _os_log_impl(&dword_254124000, v7, v8, "[%{public}s] Finished in %{public}s seconds", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v35, -1, -1);
    MEMORY[0x259C07330](v10, -1, -1);

    v29(v30, v31);
  }

  else
  {
    v21 = v0[36];
    v22 = v0[34];
    v23 = v0[29];
    v24 = v0[25];
    v26 = v0[19];
    v25 = v0[20];
    v27 = v0[18];

    (*(v26 + 8))(v25, v27);
    sub_254213C94(v24);
    v21(v22, v23);
  }

  v0[10] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0);
  sub_25424E238();

  v33 = v0[1];

  return v33();
}

uint64_t sub_25420F030()
{
  v83 = v0;
  v1 = *(v0 + 312);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 312);
  if ((v3 & 1) == 0)
  {

    *(v0 + 24) = v4;
    v25 = v4;
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v26 = *(v0 + 32);
      *(v0 + 48) = v26;
      sub_254148E24(&unk_27F5B8E40, type metadata accessor for CKError, &unk_254252978);
      sub_25424D358();
      if (*(v0 + 56) == 20)
      {
        v27 = *(v0 + 256);
        v28 = *(v0 + 184);
        v29 = *(v0 + 88);

        sub_25421BB60(v27);
        sub_25420F954(v29, v28);
        v30 = sub_25424DA88();
        v31 = sub_25424E408();
        v32 = os_log_type_enabled(v30, v31);
        v33 = *(v0 + 288);
        v34 = *(v0 + 256);
        v35 = *(v0 + 232);
        v36 = *(v0 + 184);
        if (v32)
        {
          v80 = *(v0 + 288);
          v77 = *(v0 + 232);
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v82 = v38;
          *v37 = 136446210;
          sub_25424D948();
          v73 = v34;
          sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v39 = sub_25424EA58();
          v41 = v40;
          sub_254213C94(v36);
          v42 = sub_2542203C4(v39, v41, &v82);

          *(v37 + 4) = v42;
          _os_log_impl(&dword_254124000, v30, v31, "[%{public}s] Canceled", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v38);
          MEMORY[0x259C07330](v38, -1, -1);
          MEMORY[0x259C07330](v37, -1, -1);

          v80(v73, v77);
        }

        else
        {

          sub_254213C94(v36);
          v33(v34, v35);
        }

        *(v0 + 64) = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0);
        sub_25424E238();
        v48 = *(v0 + 24);
        goto LABEL_10;
      }
    }

    v49 = *(v0 + 312);
    v50 = *(v0 + 248);
    v51 = *(v0 + 176);
    v52 = *(v0 + 88);

    sub_25421BB60(v50);
    sub_25420F954(v52, v51);
    v53 = v49;
    v54 = sub_25424DA88();
    v55 = sub_25424E428();

    if (os_log_type_enabled(v54, v55))
    {
      v78 = *(v0 + 248);
      v81 = *(v0 + 288);
      v72 = *(v0 + 312);
      v75 = *(v0 + 232);
      v56 = *(v0 + 176);
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v82 = v59;
      *v57 = 136446466;
      sub_25424D948();
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v60 = sub_25424EA58();
      v62 = v61;
      sub_254213C94(v56);
      v63 = sub_2542203C4(v60, v62, &v82);

      *(v57 + 4) = v63;
      *(v57 + 12) = 2114;
      v64 = v72;
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 14) = v65;
      *v58 = v65;
      _os_log_impl(&dword_254124000, v54, v55, "[%{public}s] Failed: %{public}@", v57, 0x16u);
      sub_2541A4278(v58);
      MEMORY[0x259C07330](v58, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x259C07330](v59, -1, -1);
      MEMORY[0x259C07330](v57, -1, -1);

      v81(v78, v75);
    }

    else
    {
      v66 = *(v0 + 288);
      v67 = *(v0 + 248);
      v68 = *(v0 + 232);
      v69 = *(v0 + 176);

      sub_254213C94(v69);
      v66(v67, v68);
    }

    *(v0 + 40) = *(v0 + 312);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0);
    sub_25424E238();
    goto LABEL_16;
  }

  v5 = *(v0 + 264);
  v6 = *(v0 + 192);
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v9 = *(v0 + 112);
  v10 = *(v0 + 120);
  v11 = *(v0 + 88);

  (*(v10 + 32))(v8, v7, v9);
  sub_25421BB60(v5);
  sub_25420F954(v11, v6);
  v12 = sub_25424DA88();
  v13 = sub_25424E408();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 288);
  v16 = *(v0 + 264);
  v17 = *(v0 + 232);
  v18 = *(v0 + 192);
  if (v14)
  {
    v79 = *(v0 + 288);
    v76 = *(v0 + 232);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v82 = v20;
    *v19 = 136446210;
    sub_25424D948();
    v74 = v16;
    sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v21 = sub_25424EA58();
    v23 = v22;
    sub_254213C94(v18);
    v24 = sub_2542203C4(v21, v23, &v82);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_254124000, v12, v13, "[%{public}s] Canceled", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x259C07330](v20, -1, -1);
    MEMORY[0x259C07330](v19, -1, -1);

    v79(v74, v76);
  }

  else
  {

    sub_254213C94(v18);
    v15(v16, v17);
  }

  v44 = *(v0 + 120);
  v43 = *(v0 + 128);
  v45 = *(v0 + 112);
  sub_254148E24(&qword_27F5B90E0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
  v46 = swift_allocError();
  (*(v44 + 16))(v47, v43, v45);
  *(v0 + 72) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0);
  sub_25424E238();
  (*(v44 + 8))(v43, v45);
  v48 = *(v0 + 16);
LABEL_10:

LABEL_16:

  v70 = *(v0 + 8);

  return v70();
}

uint64_t type metadata accessor for CKQueryAsyncSequence(uint64_t a1)
{
  result = qword_27F5BBEF0;
  if (!qword_27F5BBEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25420F954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKQueryAsyncSequence(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25420F9B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKQueryAsyncSequence(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25420FA1C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CKQueryAsyncSequence(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_25424D8B8() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_25412F724;

  return sub_25420E58C(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_25420FBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return MEMORY[0x2822009F8](sub_25420FC00, 0, 0);
}

uint64_t sub_25420FC00()
{
  v1 = v0[2].i64[0];
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  v2[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  v0[3].i64[0] = v3;
  *v3 = v0;
  v3[1] = sub_25414C1D4;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000023, 0x80000002542519E0, sub_254213DA4, v2, v4);
}

void sub_25420FD00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v90 = a4;
  v84 = a3;
  v80 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  v82 = *(v5 - 8);
  v83 = v5;
  v81 = *(v82 + 64);
  MEMORY[0x28223BE20](v5);
  v91 = v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0);
  v93 = *(v7 - 8);
  v94 = v7;
  v89 = *(v93 + 64);
  MEMORY[0x28223BE20](v7);
  v92 = v72 - v8;
  v9 = type metadata accessor for CKQueryAsyncSequence(0);
  v78 = *(v9 - 1);
  v10 = MEMORY[0x28223BE20](v9);
  v79 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = v72 - v12;
  v14 = sub_25424DAA8();
  v87 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25424D948();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 + v9[12]);
  v85 = a2;
  if (v21)
  {
    v22 = v9[7];
    v86 = v13;
    v77 = v14;
    v23 = v9;
    v24 = v16;
    v25 = *(v18 + 16);
    v25(v20, a2 + v22, v17);
    LogEvent = type metadata accessor for CloudKitQueryLogEvent(0);
    v27 = objc_allocWithZone(LogEvent);
    v25(&v27[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_queryIdentifier], v20, v17);
    v16 = v24;
    v9 = v23;
    v14 = v77;
    v13 = v86;
    v27[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state] = 0;
    *&v27[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_numFetchedRecords] = 0;
    *&v27[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_totalRecordSize] = 0;
    v95.receiver = v27;
    v95.super_class = LogEvent;
    v28 = objc_msgSendSuper2(&v95, sel_init);
    (*(v18 + 8))(v20, v17);
    [v21 submitLogEvent_];

    a2 = v85;
  }

  sub_25421BB60(v16);
  sub_25420F954(a2, v13);
  v29 = sub_25424DA88();
  v30 = sub_25424E408();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v86 = v16;
    v32 = a2;
    v33 = v31;
    v34 = swift_slowAlloc();
    v96 = v34;
    *v33 = 136446210;
    sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v35 = sub_25424EA58();
    v36 = v13;
    v38 = v37;
    sub_254213C94(v36);
    v39 = sub_2542203C4(v35, v38, &v96);

    *(v33 + 4) = v39;
    _os_log_impl(&dword_254124000, v29, v30, "[%{public}s] Query starting", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x259C07330](v34, -1, -1);
    v40 = v33;
    a2 = v32;
    MEMORY[0x259C07330](v40, -1, -1);

    (*(v87 + 8))(v86, v14);
  }

  else
  {

    sub_254213C94(v13);
    (*(v87 + 8))(v16, v14);
  }

  v41 = [objc_allocWithZone(MEMORY[0x277CBC590]) initWithQuery_];
  v42 = *(a2 + 24);
  v43 = v41;
  [v43 setZoneID_];

  sub_25424E478();

  v44 = a2 + v9[11];
  if ((*(v44 + 8) & 1) == 0)
  {
    [v43 setQualityOfService_];
  }

  v45 = a2 + v9[10];
  if ((*(v45 + 8) & 1) == 0)
  {
    [v43 setResultsLimit_];
  }

  v87 = swift_allocObject();
  *(v87 + 16) = 0;
  v86 = swift_allocObject();
  *(v86 + 16) = 0;
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = v79;
  sub_25420F954(a2, v79);
  v48 = v93;
  v49 = *(v93 + 16);
  v74 = v93 + 16;
  v75 = v49;
  v49(v92, v90, v94);
  v50 = v78[80];
  v51 = (v50 + 16) & ~v50;
  v73 = v88 + 7;
  v52 = &v88[v51 + 7] & 0xFFFFFFFFFFFFFFF8;
  v76 = *(v48 + 80);
  v77 = v76 + 8;
  v88 = v43;
  v53 = (v76 + 8 + v52) & ~v76;
  v72[1] = v50 | v76 | 7;
  v54 = (v89 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  sub_25420F9B8(v47, v55 + v51);
  *(v55 + v52) = v86;
  v56 = *(v48 + 32);
  v93 = v48 + 32;
  v78 = v56;
  v57 = v55 + v53;
  v58 = v92;
  v59 = v94;
  (v56)(v57, v92, v94);
  *(v55 + v54) = v87;
  *(v55 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8)) = v46;

  sub_25424E498();

  sub_25420F954(v85, v47);
  v61 = v82;
  v60 = v83;
  (*(v82 + 16))(v91, v80, v83);
  v75(v58, v90, v59);
  v62 = (v50 + 32) & ~v50;
  v63 = &v73[v62] & 0xFFFFFFFFFFFFFFF8;
  v64 = (v63 + *(v61 + 80) + 8) & ~*(v61 + 80);
  v65 = (v81 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v77 + v65) & ~v76;
  v67 = swift_allocObject();
  v68 = v87;
  *(v67 + 16) = 0;
  *(v67 + 24) = v68;
  sub_25420F9B8(v47, v67 + v62);
  *(v67 + v63) = v86;
  (*(v61 + 32))(v67 + v64, v91, v60);
  v69 = v84;
  *(v67 + v65) = v84;
  (v78)(v67 + v66, v92, v94);

  v70 = v69;
  v71 = v88;
  sub_25424E488();
  [v70 addOperation_];
}

void sub_254210630(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v215 = a8;
  v213 = a7;
  v216 = a6;
  v218 = a1;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEE0, &qword_254261828);
  v226 = *(v222 - 8);
  v12 = MEMORY[0x28223BE20](v222);
  v208 = &v205 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v211 = &v205 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v221 = (&v205 - v17);
  MEMORY[0x28223BE20](v16);
  v225 = (&v205 - v18);
  v227 = sub_25424D948();
  v220 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v219 = &v205 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = type metadata accessor for CKQueryAsyncSequence(0);
  v20 = MEMORY[0x28223BE20](v228);
  v214 = &v205 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v210 = &v205 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v209 = &v205 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v205 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v205 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v205 - v32;
  v224 = sub_25424DAA8();
  v223 = *(v224 - 8);
  v34 = MEMORY[0x28223BE20](v224);
  v35 = MEMORY[0x28223BE20](v34);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v205 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v205 - v41;
  MEMORY[0x28223BE20](v40);
  v47 = &v205 - v43;
  v217 = a2;
  if (a3)
  {
    sub_25421BB60(&v205 - v43);
    sub_25420F954(a4, v33);
    v48 = v218;
    sub_25412C5A0(a2);
    v49 = sub_25424DA88();
    v50 = sub_25424E428();

    sub_25412C594(a2);
    v51 = a4;
    if (os_log_type_enabled(v49, v50))
    {
      v52 = swift_slowAlloc();
      v225 = swift_slowAlloc();
      v226 = swift_slowAlloc();
      v236 = v226;
      *v52 = 136446722;
      v53 = v228;
      LODWORD(v222) = v50;
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v54 = sub_25424EA58();
      v55 = v51;
      v57 = v56;
      sub_254213C94(v33);
      v58 = sub_2542203C4(v54, v57, &v236);
      v51 = v55;

      *(v52 + 4) = v58;
      *(v52 + 12) = 2082;
      v59 = [v48 recordName];
      v60 = sub_25424DCB8();
      v62 = v61;

      v63 = sub_2542203C4(v60, v62, &v236);

      *(v52 + 14) = v63;
      *(v52 + 22) = 2114;
      v64 = a2;
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 24) = v65;
      v66 = v225;
      *v225 = v65;
      _os_log_impl(&dword_254124000, v49, v222, "[%{public}s] Failed to fetch %{public}s: %{public}@", v52, 0x20u);
      sub_2541A4278(v66);
      MEMORY[0x259C07330](v66, -1, -1);
      v67 = v226;
      swift_arrayDestroy();
      MEMORY[0x259C07330](v67, -1, -1);
      MEMORY[0x259C07330](v52, -1, -1);

      (*(v223 + 8))(v47, v224);
    }

    else
    {

      sub_254213C94(v33);
      (*(v223 + 8))(v47, v224);
      v53 = v228;
    }

    v89 = *(v51 + *(v53 + 48));
    if (v89)
    {
      v90 = v220;
      v91 = *(v220 + 16);
      v92 = v51 + *(v53 + 28);
      v93 = v219;
      v94 = v227;
      v91(v219, v92, v227);
      LogEvent = type metadata accessor for CloudKitQueryLogEvent(0);
      v96 = objc_allocWithZone(LogEvent);
      v91(&v96[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_queryIdentifier], v93, v94);
      v96[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state] = 8;
      *&v96[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_numFetchedRecords] = 0;
      *&v96[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_totalRecordSize] = 0;
      v229.receiver = v96;
      v229.super_class = LogEvent;
      v97 = objc_msgSendSuper2(&v229, sel_init);
      (*(v90 + 8))(v93, v94);
      v98 = sub_25424D398();
      [v89 submitLogEvent:v97 error:v98];
    }

    return;
  }

  v207 = v46;
  v206 = v45;
  v218 = v44;
  v212 = a4;
  v68 = [a2 size];
  swift_beginAccess();
  v69 = *(a5 + 16);
  v70 = __OFADD__(v69, v68);
  v71 = &v68[v69];
  if (v70)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    return;
  }

  *(a5 + 16) = v71;
  v235 = a2;
  v72 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0);
  v73 = v225;
  sub_25424E228();
  v74 = v226;
  v75 = *(v226 + 16);
  v76 = v221;
  v77 = v73;
  v78 = v222;
  v75(v221, v77, v222);
  v79 = (*(v74 + 88))(v76, v78);
  if (v79 == *MEMORY[0x277D85888])
  {
    (*(v74 + 96))(v76, v78);
    v80 = *v76;
    if (*v76 > 99)
    {
      (*(v74 + 8))(v225, v78);
    }

    else
    {
      sub_25421BB60(v42);
      sub_25420F954(v212, v31);
      v81 = sub_25424DA88();
      v82 = sub_25424E408();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v235 = v84;
        *v83 = 136446466;
        sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v85 = sub_25424EA58();
        v87 = v86;
        sub_254213C94(v31);
        v88 = sub_2542203C4(v85, v87, &v235);

        *(v83 + 4) = v88;
        *(v83 + 12) = 2048;
        *(v83 + 14) = v80;
        _os_log_impl(&dword_254124000, v81, v82, "[%{public}s] Running out of queue space, %ld slots left", v83, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v84);
        MEMORY[0x259C07330](v84, -1, -1);
        MEMORY[0x259C07330](v83, -1, -1);
      }

      else
      {

        sub_254213C94(v31);
      }

      (*(v223 + 8))(v42, v224);
      (*(v226 + 8))(v225, v222);
    }

    v131 = v213;
    swift_beginAccess();
    v132 = *(v131 + 16);
    v70 = __OFADD__(v132, 1);
    v133 = v132 + 1;
    if (!v70)
    {
      *(v131 + 16) = v133;
      return;
    }

    goto LABEL_46;
  }

  if (v79 == *MEMORY[0x277D85880])
  {
    v99 = *(v74 + 8);
    v100 = v221;
    v226 = v74 + 8;
    v221 = v99;
    (v99)(v100, v78);
    v101 = v207;
    sub_25421BB60(v207);
    v102 = v212;
    sub_25420F954(v212, v28);
    v103 = v72;
    v104 = sub_25424DA88();
    v105 = sub_25424E428();
    sub_25412C594(v217);
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v216 = v103;
      v107 = v106;
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v235 = v109;
      *v107 = 136446466;
      v110 = v228;
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v111 = sub_25424EA58();
      v113 = v112;
      sub_254213C94(v28);
      v114 = sub_2542203C4(v111, v113, &v235);
      v115 = v212;

      *(v107 + 4) = v114;
      *(v107 + 12) = 2112;
      v116 = v216;
      *(v107 + 14) = v216;
      *v108 = v217;
      v117 = v116;
      _os_log_impl(&dword_254124000, v104, v105, "[%{public}s] Yield dropped record: %@", v107, 0x16u);
      sub_2541A4278(v108);
      v118 = v108;
      v102 = v115;
      MEMORY[0x259C07330](v118, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v109);
      MEMORY[0x259C07330](v109, -1, -1);
      MEMORY[0x259C07330](v107, -1, -1);

      v119 = *(v223 + 8);
      v119(v101, v224);
    }

    else
    {

      sub_254213C94(v28);
      v119 = *(v223 + 8);
      v119(v101, v224);
      v110 = v228;
    }

    v134 = *(v102 + *(v110 + 48));
    if (v134)
    {
      v135 = v220;
      v136 = *(v220 + 16);
      v137 = v219;
      v138 = v227;
      v136(v219, v102 + *(v110 + 28), v227);
      v139 = type metadata accessor for CloudKitQueryLogEvent(0);
      v140 = objc_allocWithZone(v139);
      v136(&v140[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_queryIdentifier], v137, v138);
      v140[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state] = 5;
      *&v140[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_numFetchedRecords] = 0;
      *&v140[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_totalRecordSize] = 0;
      v230.receiver = v140;
      v230.super_class = v139;
      v141 = objc_msgSendSuper2(&v230, sel_init);
      (*(v135 + 8))(v137, v138);
      [v134 submitLogEvent_];
    }

    (v221)(v225, v222);
  }

  else if (v79 == *MEMORY[0x277D85878])
  {
    sub_25421BB60(v38);
    v102 = v212;
    v120 = v209;
    sub_25420F954(v212, v209);
    v121 = sub_25424DA88();
    v122 = sub_25424E408();
    v123 = os_log_type_enabled(v121, v122);
    v124 = v228;
    if (v123)
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v235 = v126;
      *v125 = 136446210;
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v127 = sub_25424EA58();
      v129 = v128;
      sub_254213C94(v120);
      v130 = sub_2542203C4(v127, v129, &v235);
      v124 = v228;

      *(v125 + 4) = v130;
      _os_log_impl(&dword_254124000, v121, v122, "[%{public}s] Yield indicated that the stream is terminated", v125, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v126);
      MEMORY[0x259C07330](v126, -1, -1);
      MEMORY[0x259C07330](v125, -1, -1);
    }

    else
    {

      sub_254213C94(v120);
    }

    v119 = *(v223 + 8);
    v119(v38, v224);
    v134 = *(v102 + *(v124 + 48));
    if (v134)
    {
      v164 = v220;
      v165 = *(v220 + 16);
      v166 = v102 + *(v124 + 28);
      v167 = v219;
      v168 = v227;
      v165(v219, v166, v227);
      v169 = type metadata accessor for CloudKitQueryLogEvent(0);
      v170 = objc_allocWithZone(v169);
      v165(&v170[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_queryIdentifier], v167, v168);
      v170[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state] = 6;
      *&v170[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_numFetchedRecords] = 0;
      *&v170[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_totalRecordSize] = 0;
      v231.receiver = v170;
      v231.super_class = v169;
      v171 = objc_msgSendSuper2(&v231, sel_init);
      (*(v164 + 8))(v167, v168);
      [v134 submitLogEvent_];
    }

    (*(v226 + 8))(v225, v222);
  }

  else
  {
    v142 = v206;
    sub_25421BB60(v206);
    v143 = v210;
    sub_25420F954(v212, v210);
    v144 = v211;
    v75(v211, v225, v78);
    v145 = sub_25424DA88();
    v146 = sub_25424E438();
    v147 = os_log_type_enabled(v145, v146);
    v148 = v228;
    if (v147)
    {
      v149 = v144;
      v150 = v78;
      v151 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      v235 = v217;
      *v151 = 136446466;
      LODWORD(v216) = v146;
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v152 = sub_25424EA58();
      v153 = v143;
      v155 = v154;
      sub_254213C94(v153);
      v156 = sub_2542203C4(v152, v155, &v235);

      *(v151 + 4) = v156;
      *(v151 + 12) = 2082;
      v75(v208, v149, v150);
      v157 = sub_25424DD08();
      v159 = v158;
      v160 = v149;
      v161 = *(v226 + 8);
      v161(v160, v150);
      v162 = sub_2542203C4(v157, v159, &v235);

      *(v151 + 14) = v162;
      _os_log_impl(&dword_254124000, v145, v216, "[%{public}s] Yield result not handled: %{public}s", v151, 0x16u);
      v163 = v217;
      swift_arrayDestroy();
      MEMORY[0x259C07330](v163, -1, -1);
      MEMORY[0x259C07330](v151, -1, -1);
    }

    else
    {

      v161 = *(v226 + 8);
      v161(v144, v78);
      sub_254213C94(v143);
    }

    v119 = *(v223 + 8);
    v119(v142, v224);
    v172 = v221;
    v102 = v212;
    v134 = *(v212 + *(v148 + 48));
    if (v134)
    {
      v173 = *(v148 + 28);
      v174 = v220;
      v175 = *(v220 + 16);
      v176 = v119;
      v177 = v219;
      v178 = v227;
      v175(v219, v212 + v173, v227);
      v179 = type metadata accessor for CloudKitQueryLogEvent(0);
      v180 = objc_allocWithZone(v179);
      v175(&v180[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_queryIdentifier], v177, v178);
      v172 = v221;
      v180[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state] = 7;
      *&v180[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_numFetchedRecords] = 0;
      *&v180[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_totalRecordSize] = 0;
      v232.receiver = v180;
      v232.super_class = v179;
      v181 = objc_msgSendSuper2(&v232, sel_init);
      v182 = v177;
      v119 = v176;
      v102 = v212;
      (*(v174 + 8))(v182, v178);
      [v134 submitLogEvent_];
    }

    v183 = v222;
    v161(v225, v222);
    v161(v172, v183);
  }

  v184 = v214;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v186 = Strong;
    v226 = v119;
    v187 = v218;
    sub_25421BB60(v218);
    sub_25420F954(v102, v184);
    v188 = sub_25424DA88();
    v189 = sub_25424E408();
    if (os_log_type_enabled(v188, v189))
    {
      v190 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      v233 = v191;
      *v190 = 136446210;
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v192 = sub_25424EA58();
      v194 = v193;
      sub_254213C94(v184);
      v195 = sub_2542203C4(v192, v194, &v233);

      *(v190 + 4) = v195;
      _os_log_impl(&dword_254124000, v188, v189, "[%{public}s] Canceling operation", v190, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v191);
      v196 = v191;
      v102 = v212;
      MEMORY[0x259C07330](v196, -1, -1);
      MEMORY[0x259C07330](v190, -1, -1);
    }

    else
    {

      sub_254213C94(v184);
    }

    (v226)(v187, v224);
    if (v134)
    {
      v197 = v227;
      v198 = v220;
      v199 = *(v220 + 16);
      v200 = v102 + *(v228 + 28);
      v201 = v219;
      v199(v219, v200, v227);
      v202 = type metadata accessor for CloudKitQueryLogEvent(0);
      v203 = objc_allocWithZone(v202);
      v199(&v203[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_queryIdentifier], v201, v197);
      v203[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state] = 3;
      *&v203[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_numFetchedRecords] = 0;
      *&v203[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_totalRecordSize] = 0;
      v234.receiver = v203;
      v234.super_class = v202;
      v204 = objc_msgSendSuper2(&v234, sel_init);
      (*(v198 + 8))(v201, v197);
      [v134 submitLogEvent_];
    }

    [v186 cancel];
  }
}

void sub_254211DA4(void (*a1)(uint64_t, uint64_t), int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, char *a9)
{
  v261 = a8;
  v292 = a5;
  LODWORD(v287) = a2;
  v289 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  v260 = *(v13 - 8);
  v259 = *(v260 + 64);
  MEMORY[0x28223BE20](v13);
  v271 = &v255 - v14;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0);
  v274 = *(v275 - 8);
  v270 = *(v274 + 64);
  MEMORY[0x28223BE20](v275);
  v273 = &v255 - v15;
  v16 = type metadata accessor for CKQueryAsyncSequence(0);
  v257 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v278 = &v255 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v255 = &v255 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v268 = &v255 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v258 = &v255 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v263 = &v255 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v280 = &v255 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v262 = &v255 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v265 = &v255 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v277 = &v255 - v34;
  v256 = v35;
  MEMORY[0x28223BE20](v33);
  v279 = &v255 - v36;
  v288 = sub_25424DAA8();
  v290 = *(v288 - 8);
  v37 = MEMORY[0x28223BE20](v288);
  v282 = &v255 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v264 = &v255 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v272 = &v255 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v267 = &v255 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v281 = (&v255 - v46);
  v47 = MEMORY[0x28223BE20](v45);
  v266 = &v255 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v269 = &v255 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v276 = &v255 - v52;
  MEMORY[0x28223BE20](v51);
  v283 = &v255 - v53;
  v54 = sub_25424D948();
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v57 = &v255 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v58 = a4;
  v59 = *(a4 + 16);
  v60 = (a3 + v59);
  if (__OFADD__(a3, v59))
  {
    __break(1u);
    goto LABEL_73;
  }

  v285 = a7;
  v286 = v13;
  v291 = v16;
  v61 = *(v16 + 28);
  v62 = *(v55 + 16);
  v62(v57, v292 + v61, v54);
  swift_beginAccess();
  v63 = *(a6 + 16);
  LogEvent = type metadata accessor for CloudKitQueryLogEvent(0);
  v65 = objc_allocWithZone(LogEvent);
  v62(&v65[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_queryIdentifier], v57, v54);
  v65[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state] = 2;
  *&v65[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_numFetchedRecords] = v60;
  *&v65[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_totalRecordSize] = v63;
  v296.receiver = v65;
  v296.super_class = LogEvent;
  v66 = objc_msgSendSuper2(&v296, sel_init);
  v67 = *(v55 + 8);
  v284 = v54;
  v67(v57, v54);
  if (v287)
  {
    v68 = v289;
    v293 = v289;
    v69 = v289;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v70 = v295;
      v293 = v295;
      sub_254148E24(&unk_27F5B8E40, type metadata accessor for CKError, &unk_254252978);
      sub_25424D358();
      v71 = v292;
      v72 = v282;
      if (v295 == 20)
      {
        v183 = v264;
        sub_25421BB60(v264);
        v184 = v255;
        sub_25420F954(v71, v255);
        v185 = v70;
        v186 = sub_25424DA88();
        v187 = sub_25424E408();

        if (os_log_type_enabled(v186, v187))
        {
          v188 = swift_slowAlloc();
          v289 = v185;
          v189 = v184;
          v190 = v188;
          v191 = swift_slowAlloc();
          v192 = swift_slowAlloc();
          v294 = v192;
          *v190 = 136446466;
          v193 = v291;
          sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v194 = sub_25424EA58();
          v196 = v195;
          v197 = v189;
          v185 = v289;
          sub_254213C94(v197);
          v198 = sub_2542203C4(v194, v196, &v294);

          *(v190 + 4) = v198;
          *(v190 + 12) = 2112;
          v199 = v185;
          v200 = _swift_stdlib_bridgeErrorToNSError();
          *(v190 + 14) = v200;
          *v191 = v200;
          _os_log_impl(&dword_254124000, v186, v187, "[%{public}s] Query cancelled: %@", v190, 0x16u);
          sub_2541A4278(v191);
          MEMORY[0x259C07330](v191, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v192);
          MEMORY[0x259C07330](v192, -1, -1);
          MEMORY[0x259C07330](v190, -1, -1);

          v290[1](v264, v288);
        }

        else
        {

          sub_254213C94(v184);
          v290[1](v183, v288);
          v193 = v291;
        }

        *(v66 + OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state) = 3;
        v254 = *(v292 + v193[12]);
        if (v254)
        {
          [v254 submitLogEvent_];
        }

        sub_25424E088();

        goto LABEL_71;
      }

      v73 = v278;
      if (v295 == 28 || v295 == 26)
      {
        v74 = v272;
        sub_25421BB60(v272);
        v75 = v268;
        sub_25420F954(v71, v268);
        v76 = sub_25424DA88();
        v77 = sub_25424E408();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v293 = v79;
          *v78 = 136446210;
          v80 = v291;
          sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v81 = sub_25424EA58();
          v82 = v75;
          v84 = v83;
          sub_254213C94(v82);
          v85 = sub_2542203C4(v81, v84, &v293);

          *(v78 + 4) = v85;
          _os_log_impl(&dword_254124000, v76, v77, "[%{public}s] Query completed: Zone not found or deleted", v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v79);
          MEMORY[0x259C07330](v79, -1, -1);
          MEMORY[0x259C07330](v78, -1, -1);

          v290[1](v272, v288);
        }

        else
        {

          sub_254213C94(v75);
          v290[1](v74, v288);
          v80 = v291;
        }

        v182 = *(v292 + v80[12]);
        if (v182)
        {
          [v182 submitLogEvent_];
        }

        sub_25424E088();

LABEL_71:
        return;
      }
    }

    else
    {
      v71 = v292;
      v73 = v278;
      v72 = v282;
    }

    sub_25421BB60(v72);
    sub_25420F954(v71, v73);
    v107 = v68;
    v108 = sub_25424DA88();
    v109 = sub_25424E428();
    sub_25412C594(v68);
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v287 = v66;
      v111 = v73;
      v112 = v110;
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v293 = v114;
      *v112 = 136446466;
      v115 = v291;
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v116 = sub_25424EA58();
      v118 = v117;
      v119 = v111;
      v66 = v287;
      sub_254213C94(v119);
      v120 = sub_2542203C4(v116, v118, &v293);

      *(v112 + 4) = v120;
      *(v112 + 12) = 2112;
      v121 = v68;
      v122 = _swift_stdlib_bridgeErrorToNSError();
      *(v112 + 14) = v122;
      *v113 = v122;
      _os_log_impl(&dword_254124000, v108, v109, "[%{public}s] Query failed: %@", v112, 0x16u);
      sub_2541A4278(v113);
      MEMORY[0x259C07330](v113, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v114);
      v123 = v114;
      v71 = v292;
      MEMORY[0x259C07330](v123, -1, -1);
      MEMORY[0x259C07330](v112, -1, -1);

      v290[1](v282, v288);
    }

    else
    {

      sub_254213C94(v73);
      v290[1](v72, v288);
      v115 = v291;
    }

    *(v66 + OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state) = 9;
    v156 = *(v71 + v115[12]);
    if (v156)
    {
      v157 = sub_25424D398();
      [v156 submitLogEvent:v66 error:v157];
    }

    v293 = v68;
    v158 = v68;
    sub_25424E078();
    goto LABEL_71;
  }

  v282 = v60;
  v287 = v66;
  v86 = v283;
  sub_25421BB60(v283);
  v87 = v292;
  v88 = v279;
  sub_25420F954(v292, v279);
  v89 = v58;
  swift_retain_n();
  v90 = v289;
  sub_25412C5A0(v289);
  v91 = sub_25424DA88();
  v92 = sub_25424E408();
  sub_25412C594(v90);
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v295 = v94;
    *v93 = 136446978;
    v95 = v291;
    sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v96 = sub_25424EA58();
    v97 = v88;
    v99 = v98;
    sub_254213C94(v97);
    v100 = sub_2542203C4(v96, v99, &v295);

    *(v93 + 4) = v100;
    *(v93 + 12) = 2048;
    swift_beginAccess();
    v101 = *(v89 + 16);

    *(v93 + 14) = v101;

    *(v93 + 22) = 2048;
    *(v93 + 24) = v282;
    *(v93 + 32) = 2082;
    if (v90)
    {
      v102 = 0;
    }

    else
    {
      v102 = 7302688;
    }

    if (v90)
    {
      v103 = 0xE000000000000000;
    }

    else
    {
      v103 = 0xE300000000000000;
    }

    v104 = sub_2542203C4(v102, v103, &v295);

    *(v93 + 34) = v104;
    v87 = v292;
    _os_log_impl(&dword_254124000, v91, v92, "[%{public}s] Query found %ld matching records on this iteration (%ld total),%{public}s cursor available", v93, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v94, -1, -1);
    MEMORY[0x259C07330](v93, -1, -1);

    v105 = v290[1];
    v106 = v288;
    v105(v283, v288);
  }

  else
  {

    sub_254213C94(v88);
    v105 = v290[1];
    v106 = v288;
    v105(v86, v288);
    v95 = v291;
  }

  v124 = v281;
  v125 = v87 + v95[10];
  v126 = *v125;
  v127 = *(v125 + 8);
  v128 = v280;
  if ((v127 & 1) == 0 && v282 >= v126)
  {
    v129 = v276;
    sub_25421BB60(v276);
    v130 = v277;
    sub_25420F954(v87, v277);
    v131 = sub_25424DA88();
    v132 = sub_25424E408();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v295 = v134;
      *v133 = 136446466;
      v289 = v105;
      v135 = v129;
      v136 = v291;
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v137 = sub_25424EA58();
      v138 = v130;
      v140 = v139;
      sub_254213C94(v138);
      v141 = sub_2542203C4(v137, v140, &v295);

      *(v133 + 4) = v141;
      *(v133 + 12) = 2048;
      *(v133 + 14) = v126;
      _os_log_impl(&dword_254124000, v131, v132, "[%{public}s] Reached result limit %ld, finishing early", v133, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v134);
      v142 = v134;
      v87 = v292;
      MEMORY[0x259C07330](v142, -1, -1);
      MEMORY[0x259C07330](v133, -1, -1);

      v289(v135, v106);
    }

    else
    {

      sub_254213C94(v130);
      v105(v129, v106);
      v136 = v291;
    }

    v159 = v287;
    *(v287 + OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state) = 4;
    v160 = *(v87 + v136[12]);
    if (!v160)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (!v289)
  {
    v161 = v269;
    sub_25421BB60(v269);
    v162 = v265;
    sub_25420F954(v87, v265);
    v163 = sub_25424DA88();
    v164 = sub_25424E408();
    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v295 = v166;
      *v165 = 136446210;
      v167 = v291;
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v168 = sub_25424EA58();
      v170 = v169;
      sub_254213C94(v162);
      v171 = sub_2542203C4(v168, v170, &v295);

      *(v165 + 4) = v171;
      _os_log_impl(&dword_254124000, v163, v164, "[%{public}s] Query completed", v165, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v166);
      v172 = v166;
      v87 = v292;
      MEMORY[0x259C07330](v172, -1, -1);
      MEMORY[0x259C07330](v165, -1, -1);

      v105(v269, v106);
    }

    else
    {

      sub_254213C94(v162);
      v105(v161, v106);
      v167 = v291;
    }

    v160 = *(v87 + v167[12]);
    v159 = v287;
    if (!v160)
    {
      goto LABEL_36;
    }

LABEL_35:
    [v160 submitLogEvent_];
LABEL_36:
    sub_25424E088();

    return;
  }

  v143 = v289;
  if ((sub_25424E1C8() & 1) == 0)
  {
    v283 = v143;
    sub_25421BB60(v124);
    sub_25420F954(v87, v128);
    v173 = sub_25424DA88();
    v174 = sub_25424E408();
    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      v295 = v176;
      *v175 = 136446210;
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v177 = sub_25424EA58();
      v179 = v178;
      sub_254213C94(v128);
      v180 = sub_2542203C4(v177, v179, &v295);
      v106 = v288;

      *(v175 + 4) = v180;
      _os_log_impl(&dword_254124000, v173, v174, "[%{public}s] Running cursor query", v175, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v176);
      MEMORY[0x259C07330](v176, -1, -1);
      v181 = v175;
      v87 = v292;
      MEMORY[0x259C07330](v181, -1, -1);
    }

    else
    {

      sub_254213C94(v128);
    }

    v105(v281, v106);
    v205 = v291;
    v206 = v263;
    v207 = v267;
    *(v287 + OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state) = 1;
    v208 = *(v87 + v205[12]);
    v209 = v283;
    if (v208)
    {
      [v208 submitLogEvent_];
    }

    sub_25412C5A0(v289);
    v210 = v209;
    sub_25421BB60(v207);
    sub_25420F954(v87, v206);
    v211 = sub_25424DA88();
    v212 = sub_25424E408();
    if (os_log_type_enabled(v211, v212))
    {
      v213 = swift_slowAlloc();
      v281 = swift_slowAlloc();
      v295 = v281;
      *v213 = 136446210;
      v283 = v210;
      v214 = v291;
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v215 = sub_25424EA58();
      v217 = v216;
      sub_254213C94(v206);
      v218 = sub_2542203C4(v215, v217, &v295);

      *(v213 + 4) = v218;
      _os_log_impl(&dword_254124000, v211, v212, "[%{public}s] Cursor query starting", v213, 0xCu);
      v219 = v281;
      __swift_destroy_boxed_opaque_existential_1(v281);
      MEMORY[0x259C07330](v219, -1, -1);
      v220 = v213;
      v221 = v214;
      v210 = v283;
      MEMORY[0x259C07330](v220, -1, -1);

      v105(v267, v288);
    }

    else
    {

      sub_254213C94(v206);
      v105(v207, v106);
      v221 = v291;
    }

    v222 = [objc_allocWithZone(MEMORY[0x277CBC590]) initWithCursor_];
    sub_25412C594(v289);
    v223 = v292;
    v224 = *(v292 + 24);
    v225 = v222;
    [v225 setZoneID_];

    sub_25424E478();

    v226 = v223 + v221[11];
    if ((*(v226 + 8) & 1) == 0)
    {
      [v225 setQualityOfService_];
    }

    if (v127)
    {
      goto LABEL_66;
    }

    if (!__OFSUB__(v126, v282))
    {
      [v225 setResultsLimit_];
LABEL_66:
      v283 = a9;
      v277 = swift_allocObject();
      *(v277 + 16) = 0;
      v227 = swift_allocObject();
      *(v227 + 16) = 0;
      v228 = v227;
      v272 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v229 = v258;
      sub_25420F954(v223, v258);
      v230 = v274;
      v231 = *(v274 + 16);
      v280 = (v274 + 16);
      v281 = v231;
      (v231)(v273, a9, v275);
      v232 = *(v257 + 80);
      v233 = (v232 + 16) & ~v232;
      v279 = v256 + 7;
      v234 = (v256 + 7 + v233) & 0xFFFFFFFFFFFFFFF8;
      v284 = *(v230 + 80);
      v288 = v284 + 8;
      v291 = v225;
      v235 = (v284 + 8 + v234) & ~v284;
      v278 = (v232 | v284 | 7);
      v236 = (v270 + v235 + 7) & 0xFFFFFFFFFFFFFFF8;
      v237 = swift_allocObject();
      sub_25420F9B8(v229, v237 + v233);
      v276 = v228;
      *(v237 + v234) = v228;
      v238 = *(v230 + 32);
      v274 = v230 + 32;
      v290 = v238;
      v239 = v273;
      v240 = v275;
      (v238)(v237 + v235, v273, v275);
      v241 = v277;
      *(v237 + v236) = v277;
      *(v237 + ((v236 + 15) & 0xFFFFFFFFFFFFFFF8)) = v272;

      sub_25424E498();

      sub_25420F954(v292, v229);
      v242 = v260;
      v243 = v286;
      (*(v260 + 16))(v271, v285, v286);
      (v281)(v239, v283, v240);
      v244 = (v232 + 32) & ~v232;
      v245 = (v279 + v244) & 0xFFFFFFFFFFFFFFF8;
      v246 = (v245 + *(v242 + 80) + 8) & ~*(v242 + 80);
      v247 = (v259 + v246 + 7) & 0xFFFFFFFFFFFFFFF8;
      v248 = (v288 + v247) & ~v284;
      v249 = swift_allocObject();
      *(v249 + 16) = v282;
      *(v249 + 24) = v241;
      sub_25420F9B8(v229, v249 + v244);
      *(v249 + v245) = v276;
      (*(v242 + 32))(v249 + v246, v271, v243);
      v250 = v261;
      *(v249 + v247) = v261;
      (v290)(v249 + v248, v273, v275);

      v251 = v250;
      v252 = v291;
      sub_25424E488();
      [v251 addOperation_];

      v253 = v289;
      sub_25412C594(v289);
      sub_25412C594(v253);

      return;
    }

LABEL_73:
    __break(1u);
    return;
  }

  v144 = v266;
  sub_25421BB60(v266);
  v145 = v262;
  sub_25420F954(v87, v262);
  v146 = sub_25424DA88();
  v147 = sub_25424E408();
  if (os_log_type_enabled(v146, v147))
  {
    v148 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v295 = v149;
    *v148 = 136446210;
    v150 = v291;
    sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v151 = sub_25424EA58();
    v153 = v152;
    sub_254213C94(v145);
    v154 = sub_2542203C4(v151, v153, &v295);

    *(v148 + 4) = v154;
    _os_log_impl(&dword_254124000, v146, v147, "[%{public}s] Task was canceled", v148, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v149);
    v155 = v149;
    v87 = v292;
    MEMORY[0x259C07330](v155, -1, -1);
    MEMORY[0x259C07330](v148, -1, -1);

    v105(v266, v106);
  }

  else
  {

    sub_254213C94(v145);
    v105(v144, v106);
    v150 = v291;
  }

  v201 = v289;
  v202 = *(v87 + v150[12]);
  v203 = v287;
  if (v202)
  {
    [v202 submitLogEvent_];
  }

  sub_25424E0A8();
  sub_254148E24(&qword_27F5B90E0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
  v204 = swift_allocError();
  sub_25424DB58();
  v295 = v204;
  sub_25424E078();
  sub_25412C594(v201);
}