unint64_t sub_229622480()
{
  result = qword_27D87E190;
  if (!qword_27D87E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E190);
  }

  return result;
}

uint64_t sub_2296224D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22962253C(uint64_t a1, uint64_t a2)
{
  v4 = sub_229773768();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (!*(v4 + 16))
  {
    goto LABEL_11;
  }

  v6 = sub_229543DBC(a1, a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_2295404B0(*(v5 + 56) + 32 * v6, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v11 + 16) || (v8 = sub_229543DBC(0x726F737365636341, 0xED0000656D614E79), (v9 & 1) == 0))
  {
LABEL_11:

    return 0;
  }

  sub_2295404B0(*(v11 + 56) + 32 * v8, v12);

  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t HMDAccessory.isDemoAccessory.getter()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    return [v1 communicationProtocol] == 3;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = v0;
    if (([v3 variant] & 0x20) != 0)
    {

      return 1;
    }

    else
    {
      v5 = [v4 isCurrentDemoAccessory];

      return v5;
    }
  }

  return result;
}

void *HMDAccessory.isCurrentDemoAccessory.getter()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return (([result variant] >> 7) & 1);
  }

  return result;
}

Swift::Void __swiftcall HMDAccessory.renameDemoAccessory(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  ObjectType = swift_getObjectType();
  v6 = sub_22A4DD26C();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22A4DD29C();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v2 workQueue];
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = countAndFlagsBits;
  v13[4] = object;
  v13[5] = ObjectType;
  aBlock[4] = sub_229628540;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_8;
  v14 = _Block_copy(aBlock);
  v15 = v2;

  sub_22A4DD28C();
  v19 = MEMORY[0x277D84F90];
  sub_22953E140(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
  sub_22A4DE03C();
  MEMORY[0x22AAD0F80](0, v11, v8, v14);
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

void sub_229622AF4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 name];
  v13 = sub_22A4DD5EC();
  v15 = v14;

  if (v13 == a2 && v15 == a3)
  {
  }

  else
  {
    v17 = sub_22A4DE60C();

    if ((v17 & 1) == 0)
    {
      v44 = v9;
      v18 = [objc_opt_self() allMessageDestinations];
      v19 = [objc_allocWithZone(MEMORY[0x277D0F818]) initWithName:@"HomeUtilAddDemoModeAccessory" destination:v18 payload:0];

      v20 = swift_allocObject();
      v20[2] = a1;
      v20[3] = v19;
      v20[4] = a4;
      aBlock[4] = sub_229628A5C;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2297986BC;
      aBlock[3] = &block_descriptor_40;
      v21 = _Block_copy(aBlock);
      v22 = a1;
      v23 = v19;

      [v23 setResponseHandler_];
      _Block_release(v21);
      sub_22A4DDBFC();
      v24 = v22;

      v25 = sub_22A4DD05C();
      v26 = sub_22A4DDCCC();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        aBlock[0] = v42;
        *v27 = 136315650;
        v28 = [v24 logIdentifier];
        v29 = sub_22A4DD5EC();
        v43 = v23;
        v30 = v29;
        HIDWORD(v41) = v26;
        v32 = v31;

        v33 = sub_2295A3E30(v30, v32, aBlock);

        *(v27 + 4) = v33;
        *(v27 + 12) = 2080;
        v34 = [v24 name];
        v35 = sub_22A4DD5EC();
        v37 = v36;

        v38 = sub_2295A3E30(v35, v37, aBlock);

        *(v27 + 14) = v38;
        v23 = v43;
        *(v27 + 22) = 2080;
        *(v27 + 24) = sub_2295A3E30(a2, a3, aBlock);
        _os_log_impl(&dword_229538000, v25, BYTE4(v41), "[%s] Updating accessory name: %s to %s", v27, 0x20u);
        v39 = v42;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v39, -1, -1);
        MEMORY[0x22AAD4E50](v27, -1, -1);
      }

      (*(v44 + 8))(v11, v8);
      v40 = sub_22A4DD5AC();
      [v24 _renameAccessory_resetName_message_];
    }
  }
}

uint64_t sub_229622F68(void *a1, unint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v53 - v14;
  if (a1)
  {
    v16 = a1;
    sub_22A4DDBFC();
    v17 = a1;
    v18 = a3;
    v19 = a4;
    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCEC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v55 = v10;
      v24 = v23;
      v53 = swift_slowAlloc();
      v56 = v53;
      *v22 = 136315650;
      v25 = [v18 logIdentifier];
      v26 = sub_22A4DD5EC();
      v54 = v9;
      v27 = v26;
      v29 = v28;

      v30 = sub_2295A3E30(v27, v29, &v56);

      *(v22 + 4) = v30;
      *(v22 + 12) = 2112;
      *(v22 + 14) = v19;
      *v24 = v19;
      *(v22 + 22) = 2112;
      v31 = a1;
      v32 = v19;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 24) = v33;
      v24[1] = v33;
      _os_log_impl(&dword_229538000, v20, v21, "%s Responded to %@ with %@", v22, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v24, -1, -1);
      v34 = v53;
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x22AAD4E50](v34, -1, -1);
      MEMORY[0x22AAD4E50](v22, -1, -1);

      return (*(v55 + 8))(v15, v54);
    }

    else
    {

      return (*(v10 + 8))(v15, v9);
    }
  }

  else
  {
    v55 = v10;
    sub_22A4DDBFC();

    v36 = a3;
    v37 = a4;
    v38 = sub_22A4DD05C();
    v39 = sub_22A4DDCCC();

    if (os_log_type_enabled(v38, v39))
    {
      v54 = v9;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v56 = v53;
      *v40 = 136315650;
      v42 = [v36 logIdentifier];
      v43 = sub_22A4DD5EC();
      v45 = v44;

      v46 = sub_2295A3E30(v43, v45, &v56);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v37;
      *v41 = v37;
      *(v40 + 22) = 2080;
      v47 = v37;
      if (!a2)
      {
        sub_22956AC5C(MEMORY[0x277D84F90]);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v48 = sub_22A4DD4AC();
      v50 = v49;

      v51 = sub_2295A3E30(v48, v50, &v56);

      *(v40 + 24) = v51;
      _os_log_impl(&dword_229538000, v38, v39, "%s Responded to %@ with %s", v40, 0x20u);
      sub_22953EAE4(v41, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v41, -1, -1);
      v52 = v53;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v52, -1, -1);
      MEMORY[0x22AAD4E50](v40, -1, -1);

      return (*(v55 + 8))(v13, v54);
    }

    else
    {

      return (*(v55 + 8))(v13, v9);
    }
  }
}

id sub_2296234F4()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 appData];
  if (!result)
  {
    v7 = [v1 uuid];
    sub_22A4DB79C();

    v8 = objc_allocWithZone(HMDApplicationData);
    v9 = sub_22A4DB77C();
    v10 = [v8 initWithParentUUID_];

    (*(v3 + 8))(v5, v2);
    return v10;
  }

  return result;
}

uint64_t sub_229623634(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  return MEMORY[0x2822009F8](sub_229623658, 0, 0);
}

uint64_t sub_229623658()
{
  v1 = v0[17];
  if (v1)
  {
    v2 = v0[16];
  }

  else
  {
    v2 = 0x53555F6E65;
  }

  if (v1)
  {
    v3 = v0[17];
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = sub_229773768();
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = v4;
  if (!*(v4 + 16))
  {

    goto LABEL_17;
  }

  v6 = sub_229543DBC(v2, v3);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  sub_2295404B0(*(v5 + 56) + 32 * v6, (v0 + 2));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v20 = 0;
    goto LABEL_19;
  }

  v9 = v0[14];
  v0[19] = v9;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v12 = v0[16];
    v11 = v0[17];
    v13 = [v10 services];
    sub_229562F68(0, &unk_27D87D360, off_278666310);
    v14 = sub_22A4DD83C();
    v0[20] = v14;

    v0[15] = v14;
    v15 = swift_task_alloc();
    v0[21] = v15;
    *(v15 + 16) = v12;
    *(v15 + 24) = v11;
    v16 = swift_task_alloc();
    v0[22] = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D520, &qword_22A578828);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3A8, &qword_22A576E88);
    v19 = sub_229579858(&qword_27D87E198, &qword_27D87D520, &qword_22A578828);
    *v16 = v0;
    v16[1] = sub_22962392C;

    return MEMORY[0x282167810](&unk_22A57B350, v15, v17, v18, v19);
  }

  v20 = v9;
LABEL_19:
  v21 = v0[1];

  return v21(v20);
}

uint64_t sub_22962392C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_229623CA4;
  }

  else
  {
    v4 = sub_229623A64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_229623A64()
{
  v17 = v0;
  v1 = 0;
  v2 = v0[23];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v5 = *(v2 + 32 + 8 * v1++);
    if (v5)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_22958A770(0, v4[2] + 1, 1, v4);
      }

      v7 = v4[2];
      v6 = v4[3];
      if (v7 >= v6 >> 1)
      {
        v4 = sub_22958A770((v6 > 1), v7 + 1, 1, v4);
      }

      v4[2] = v7 + 1;
      v4[v7 + 4] = v5;
    }
  }

  if (v4[2])
  {
    v8 = v0[19];
    v0[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    v0[6] = v4;
    sub_229543C58((v0 + 6), (v0 + 10));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v8;
    v10 = v0[13];
    v11 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 10), v10);
    v12 = *(v10 - 8);
    v13 = swift_task_alloc();
    (*(v12 + 16))(v13, v11, v10);
    sub_2297FED58(*v13, 0x7365636976726553, 0xE800000000000000, isUniquelyReferenced_nonNull_native, &v16);
    __swift_destroy_boxed_opaque_existential_0(v0 + 10);

    v14 = v16;
  }

  else
  {

    v14 = v0[19];
  }

  v15 = v0[1];

  v15(v14);
}

uint64_t sub_229623CA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229623D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_229592790;

  return sub_22976F760(a3, a4);
}

uint64_t sub_229623DB4(uint64_t a1)
{
  v2[66] = v1;
  v2[65] = a1;
  v3 = sub_22A4DB7DC();
  v2[67] = v3;
  v2[68] = *(v3 - 8);
  v2[69] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229623E78, 0, 0);
}

uint64_t sub_229623E78()
{
  v1 = *(v0 + 520);
  if (!*(v1 + 16) || (v2 = sub_229543DBC(0x726F737365636341, 0xED0000656D614E79), (v3 & 1) == 0))
  {
    v16 = *(v0 + 528);
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    sub_22953EAE4(v0 + 336, &unk_27D87FC20, &unk_22A578810);
    type metadata accessor for HMError(0);
    *(v0 + 456) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 16) = xmmword_22A576180;
    *(inited + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v18 = [v16 shortDescription];
    v19 = sub_22A4DD5EC();
    v21 = v20;

    MEMORY[0x22AAD08C0](v19, v21);

    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = 0xD00000000000001BLL;
    *(inited + 56) = 0x800000022A58DD80;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    goto LABEL_22;
  }

  v4 = *(v0 + 520);
  sub_2295404B0(*(v4 + 56) + 32 * v2, v0 + 336);
  sub_22953EAE4(v0 + 336, &unk_27D87FC20, &unk_22A578810);
  if (!*(v1 + 16))
  {
    goto LABEL_21;
  }

  v5 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
  if ((v6 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_2295404B0(*(v4 + 56) + 32 * v5, v0 + 368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v7 = *(v0 + 552);
  v8 = *(v0 + 544);
  v9 = *(v0 + 536);
  v11 = *(v0 + 432);
  v10 = *(v0 + 440);
  v12 = [*(v0 + 528) uuid];
  sub_22A4DB79C();

  v13 = sub_22A4DB76C();
  v15 = v14;
  (*(v8 + 8))(v7, v9);
  if (v13 != v11 || v15 != v10)
  {
    v22 = sub_22A4DE60C();

    if (v22)
    {
      goto LABEL_11;
    }

LABEL_21:
    v31 = MEMORY[0x277D837D0];
    v32 = *(v0 + 528);
    type metadata accessor for HMError(0);
    *(v0 + 472) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v33 = swift_initStackObject();
    *(v33 + 32) = 0x6E6F73616552;
    *(v33 + 16) = xmmword_22A576180;
    *(v33 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v34 = [v32 shortDescription];
    v35 = sub_22A4DD5EC();
    v37 = v36;

    MEMORY[0x22AAD08C0](v35, v37);

    *(v33 + 72) = v31;
    *(v33 + 48) = 0xD00000000000002CLL;
    *(v33 + 56) = 0x800000022A58DDA0;
    sub_22956AD8C(v33);
    swift_setDeallocating();
    sub_22953EAE4(v33 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    goto LABEL_22;
  }

LABEL_11:
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_28;
  }

  if (*(v1 + 16))
  {
    v23 = sub_229543DBC(0x7365636976726553, 0xE800000000000000);
    if (v24)
    {
      sub_2295404B0(*(v4 + 56) + 32 * v23, v0 + 400);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      if (swift_dynamicCast())
      {
        result = *(v0 + 496);
        *(v0 + 560) = result;
        v26 = *(result + 16);
        *(v0 + 568) = v26;
        if (v26)
        {
          *(v0 + 576) = 0;
          if (!*(result + 16))
          {
            __break(1u);
            return result;
          }

          v27 = *(result + 32);
          *(v0 + 584) = v27;

          v29 = sub_229624C90(v28);
          *(v0 + 592) = v29;
          if (v29)
          {
            v30 = swift_task_alloc();
            *(v0 + 600) = v30;
            *v30 = v0;
            v30[1] = sub_2296247FC;

            return sub_22976F8D0(v27);
          }

          v45 = *(v0 + 528);

          type metadata accessor for HMError(0);
          *(v0 + 512) = 3;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
          v46 = swift_initStackObject();
          *(v46 + 32) = 0x6E6F73616552;
          *(v46 + 16) = xmmword_22A576180;
          *(v46 + 40) = 0xE600000000000000;
          sub_22A4DE1FC();

          v47 = [v45 shortDescription];
          v48 = sub_22A4DD5EC();
          v50 = v49;

          MEMORY[0x22AAD08C0](v48, v50);

          *(v46 + 72) = MEMORY[0x277D837D0];
          *(v46 + 48) = 0xD00000000000002ALL;
          *(v46 + 56) = 0x800000022A58DE00;
          sub_22956AD8C(v46);
          swift_setDeallocating();
          sub_22953EAE4(v46 + 32, &qword_27D87CDA0, &unk_22A57A930);
          sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
          sub_22A4DB3CC();
          goto LABEL_22;
        }

LABEL_28:

        v38 = *(v0 + 8);
        goto LABEL_23;
      }
    }
  }

  v39 = *(v0 + 528);
  type metadata accessor for HMError(0);
  *(v0 + 488) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  v40 = swift_initStackObject();
  *(v40 + 32) = 0x6E6F73616552;
  *(v40 + 16) = xmmword_22A576180;
  *(v40 + 40) = 0xE600000000000000;
  sub_22A4DE1FC();

  v41 = [v39 shortDescription];
  v42 = sub_22A4DD5EC();
  v44 = v43;

  MEMORY[0x22AAD08C0](v42, v44);

  *(v40 + 72) = MEMORY[0x277D837D0];
  *(v40 + 48) = 0xD000000000000027;
  *(v40 + 56) = 0x800000022A58DDD0;
  sub_22956AD8C(v40);
  swift_setDeallocating();
  sub_22953EAE4(v40 + 32, &qword_27D87CDA0, &unk_22A57A930);
  sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
  sub_22A4DB3CC();
LABEL_22:
  swift_willThrow();

  v38 = *(v0 + 8);
LABEL_23:

  return v38();
}

uint64_t sub_2296247FC()
{
  *(*v1 + 608) = v0;

  if (v0)
  {

    v2 = sub_229624C24;
  }

  else
  {
    v2 = sub_229624924;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_229624924()
{
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];

  if (v2 + 1 == v3)
  {

    v4 = v0[1];
LABEL_9:

    v4();
    return;
  }

  v5 = v0[72] + 1;
  v0[72] = v5;
  v6 = v0[70];
  if (v5 >= *(v6 + 16))
  {
    __break(1u);
    return;
  }

  v7 = *(v6 + 8 * v5 + 32);
  v0[73] = v7;

  v9 = sub_229624C90(v8);
  v0[74] = v9;
  if (!v9)
  {
    v11 = v0[66];

    type metadata accessor for HMError(0);
    v0[64] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 16) = xmmword_22A576180;
    *(inited + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v13 = [v11 shortDescription];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    MEMORY[0x22AAD08C0](v14, v16);

    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = 0xD00000000000002ALL;
    *(inited + 56) = 0x800000022A58DE00;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    swift_willThrow();

    v4 = v0[1];
    goto LABEL_9;
  }

  v10 = swift_task_alloc();
  v0[75] = v10;
  *v10 = v0;
  v10[1] = sub_2296247FC;

  sub_22976F8D0(v7);
}

uint64_t sub_229624C24()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_229624C90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17[-v3];
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 16))
  {
    v9 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
    if (v10)
    {
      sub_2295404B0(*(a1 + 56) + 32 * v9, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      if (swift_dynamicCast())
      {
        sub_22A4DB75C();

        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {
          sub_22953EAE4(v4, &unk_27D87D2A0, &unk_22A578BD0);
        }

        else
        {
          (*(v6 + 32))(v8, v4, v5);
          objc_opt_self();
          v11 = swift_dynamicCastObjCClass();
          if (v11)
          {
            v12 = [v11 services];
            sub_229562F68(0, &unk_27D87D360, off_278666310);
            v13 = sub_22A4DD83C();

            MEMORY[0x28223BE20](v14);
            *&v17[-16] = v8;
            v15 = sub_22968FFF0(sub_2296285FC, &v17[-32], v13);

            if (v15)
            {
              (*(v6 + 8))(v8, v5);
              return v15;
            }
          }

          (*(v6 + 8))(v8, v5);
        }
      }
    }
  }

  return 0;
}

void *sub_229624F78()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 name];
  v7 = sub_22A4DD5EC();
  v9 = v8;

  v10 = MEMORY[0x277D837D0];
  v49 = MEMORY[0x277D837D0];
  v47 = v7;
  v48 = v9;
  sub_229543C58(&v47, v45);
  v11 = MEMORY[0x277D84F98];
  LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
  v44 = v11;
  v12 = __swift_mutable_project_boxed_opaque_existential_0(v45, v46);
  MEMORY[0x28223BE20](v12);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  sub_2297FE940(*v14, v14[1], 0x726F737365636341, 0xED0000656D614E79, v7, &v44);
  __swift_destroy_boxed_opaque_existential_0(v45);
  v16 = v44;
  v17 = [v1 uuid];
  sub_22A4DB79C();

  v18 = sub_22A4DB76C();
  v20 = v19;
  (*(v3 + 8))(v5, v2);
  v49 = v10;
  v47 = v18;
  v48 = v20;
  sub_229543C58(&v47, v45);
  LOBYTE(v5) = swift_isUniquelyReferenced_nonNull_native();
  v44 = v16;
  v21 = __swift_mutable_project_boxed_opaque_existential_0(v45, v46);
  MEMORY[0x28223BE20](v21);
  v23 = (&v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  sub_2297FE940(*v23, v23[1], 0x696669746E656449, 0xEA00000000007265, v5, &v44);
  __swift_destroy_boxed_opaque_existential_0(v45);
  v25 = v44;
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (!v26)
  {
    return v25;
  }

  v27 = [v26 services];
  sub_229562F68(0, &unk_27D87D360, off_278666310);
  v28 = sub_22A4DD83C();

  if (!(v28 >> 62))
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_4;
    }

LABEL_14:

    v32 = MEMORY[0x277D84F90];
LABEL_15:
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    v47 = v32;
    sub_229543C58(&v47, v45);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v25;
    v39 = __swift_mutable_project_boxed_opaque_existential_0(v45, v46);
    MEMORY[0x28223BE20](v39);
    v41 = (&v43 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v42 + 16))(v41);
    sub_2297FED58(*v41, 0x7365636976726553, 0xE800000000000000, isUniquelyReferenced_nonNull_native, &v44);
    __swift_destroy_boxed_opaque_existential_0(v45);
    return v44;
  }

  v29 = sub_22A4DE0EC();
  if (!v29)
  {
    goto LABEL_14;
  }

LABEL_4:
  v47 = MEMORY[0x277D84F90];
  result = sub_229583714(0, v29 & ~(v29 >> 63), 0);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v31 = 0;
    v32 = v47;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x22AAD13F0](v31, v28);
      }

      else
      {
        v33 = *(v28 + 8 * v31 + 32);
      }

      v34 = v33;
      v35 = sub_229770AB8();

      v47 = v32;
      v37 = *(v32 + 16);
      v36 = *(v32 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_229583714((v36 > 1), v37 + 1, 1);
        v32 = v47;
      }

      ++v31;
      *(v32 + 16) = v37 + 1;
      *(v32 + 8 * v37 + 32) = v35;
    }

    while (v29 != v31);

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_229625510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v8 = swift_task_alloc();
  v5[20] = v8;
  *v8 = v5;
  v8[1] = sub_2296255C0;

  return sub_229623634(a3, a4);
}

uint64_t sub_2296255C0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_229625A34;
  }

  else
  {
    v4 = sub_2296256D4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2296256D4()
{
  v16 = v0;
  if (v0[21])
  {
    v1 = v0[21];
  }

  else
  {
    v1 = sub_229624F78();
  }

  v3 = v0[15];
  v2 = v0[16];

  v4 = sub_2296286A4(v1, sub_229628A88);
  swift_bridgeObjectRelease_n();
  v0[14] = v4;
  sub_2297FCFD4(0x7365636976726553, 0xE800000000000000, v0 + 2);
  sub_22953EAE4((v0 + 2), &unk_27D87FC20, &unk_22A578810);
  v0[9] = MEMORY[0x277D837D0];
  v0[6] = v3;
  v0[7] = v2;
  sub_229543C58((v0 + 6), (v0 + 10));

  v5 = v0[14];
  LOBYTE(v2) = swift_isUniquelyReferenced_nonNull_native();
  v15 = v5;
  v6 = v0[13];
  v7 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 10), v6);
  v8 = *(v6 - 8);
  v9 = swift_task_alloc();
  (*(v8 + 16))(v9, v7, v6);
  sub_2297FE940(*v9, v9[1], 0x726F737365636341, 0xED0000656D614E79, v2, &v15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);

  v10 = v15;
  v0[23] = v15;
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_229625918;
  v12 = v0[18];
  v13 = v0[17];

  return sub_229625AB0(v10, v13, v12);
}

uint64_t sub_229625918()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_229625A4C;
  }

  else
  {

    v2 = sub_229566EE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229625A4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229625AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[38] = a3;
  v4[39] = v3;
  v4[36] = a1;
  v4[37] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v4[40] = swift_task_alloc();
  v5 = sub_22A4DB7DC();
  v4[41] = v5;
  v4[42] = *(v5 - 8);
  v4[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229625BAC, 0, 0);
}

uint64_t sub_229625BAC()
{
  if (!*(v0[36] + 16) || (v1 = sub_229543DBC(0x7365636976726553, 0xE800000000000000), (v2 & 1) == 0) || (sub_2295404B0(*(v0[36] + 56) + 32 * v1, (v0 + 12)), v0[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_18:
    v24 = v0[39];
    v0[34] = sub_2296286A4(v0[36], sub_22959E60C);
    sub_2297FCFD4(0x7365636976726553, 0xE800000000000000, v0 + 16);
    sub_22953EAE4((v0 + 16), &unk_27D87FC20, &unk_22A578810);
    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    v0[5] = sub_229562F68(0, &qword_281401C30, off_278665FE8);
    v0[6] = &off_283CDE980;
    v0[2] = v24;
    v25 = v0[34];
    v0[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
    v0[20] = v25;
    v26 = v24;
    v27 = swift_task_alloc();
    v0[52] = v27;
    *v27 = v0;
    v27[1] = sub_229626744;
    v28 = v0[37];
    v29 = v0[38];
    v30 = (v0 + 2);
    v31 = (v0 + 20);
LABEL_19:

    return sub_229709F5C(v30, v31, v28, v29);
  }

  result = v0[35];
  v0[45] = result;
  v4 = *(result + 16);
  v0[46] = v4;
  if (!v4)
  {
LABEL_17:

    goto LABEL_18;
  }

  v5 = 0;
  while (1)
  {
    v0[47] = v5;
    v6 = v0[45];
    if (v5 >= *(v6 + 16))
    {
      break;
    }

    v7 = *(v6 + 8 * v5 + 32);
    v0[48] = v7;
    if (*(v7 + 16))
    {

      v8 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
      if (v9 & 1) != 0 && (sub_2295404B0(*(v7 + 56) + 32 * v8, (v0 + 24)), (swift_dynamicCast()))
      {
        v11 = v0[41];
        v10 = v0[42];
        v12 = v0[40];
        sub_22A4DB75C();

        if ((*(v10 + 48))(v12, 1, v11) == 1)
        {
          v13 = v0[40];

          result = sub_22953EAE4(v13, &unk_27D87D2A0, &unk_22A578BD0);
        }

        else
        {
          (*(v0[42] + 32))(v0[43], v0[40], v0[41]);
          objc_opt_self();
          v14 = swift_dynamicCastObjCClass();
          if (v14)
          {
            v15 = v0[43];
            v16 = [v14 services];
            v17 = sub_229562F68(0, &unk_27D87D360, off_278666310);
            v18 = sub_22A4DD83C();

            v19 = swift_task_alloc();
            *(v19 + 16) = v15;
            v20 = sub_22968FFF0(sub_229628A6C, v19, v18);
            v0[49] = v20;

            if (v20)
            {
              (*(v0[42] + 8))(v0[43], v0[41]);
              v32 = sub_2297728CC(v7);
              sub_229562F68(0, &qword_27D87D4D8, off_278666048);
              v0[10] = v17;
              v0[11] = &off_283CE3BD8;
              v0[7] = v20;
              v0[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
              v0[28] = v32;
              v33 = v20;
              v34 = swift_task_alloc();
              v0[50] = v34;
              *v34 = v0;
              v34[1] = sub_2296260CC;
              v28 = v0[37];
              v29 = v0[38];
              v30 = (v0 + 7);
              v31 = (v0 + 28);
              goto LABEL_19;
            }
          }

          v22 = v0[42];
          v21 = v0[43];
          v23 = v0[41];

          result = (*(v22 + 8))(v21, v23);
        }
      }

      else
      {
      }
    }

    v5 = v0[47] + 1;
    if (v5 == v0[46])
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2296260CC()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {

    v3 = sub_2296266A8;
  }

  else
  {
    sub_22953EAE4(v2 + 224, &unk_27D87FC20, &unk_22A578810);
    __swift_destroy_boxed_opaque_existential_0((v2 + 56));
    v3 = sub_229626208;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229626208()
{
  v2 = v0[49];

  v3 = v0[47] + 1;
  if (v3 == v0[46])
  {
LABEL_2:

    v4 = v0[39];
    v0[34] = sub_2296286A4(v0[36], sub_22959E60C);
    sub_2297FCFD4(0x7365636976726553, 0xE800000000000000, v0 + 16);
    sub_22953EAE4((v0 + 16), &unk_27D87FC20, &unk_22A578810);
    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    v0[5] = sub_229562F68(0, &qword_281401C30, off_278665FE8);
    v0[6] = &off_283CDE980;
    v0[2] = v4;
    v5 = v0[34];
    v0[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
    v0[20] = v5;
    v6 = v4;
    v7 = swift_task_alloc();
    v0[52] = v7;
    *v7 = v0;
    v7[1] = sub_229626744;
    v8 = v0[37];
    v9 = v0[38];
    v10 = (v0 + 2);
    v11 = (v0 + 20);
  }

  else
  {
    while (1)
    {
      v0[47] = v3;
      v13 = v0[45];
      if (v3 >= *(v13 + 16))
      {
        break;
      }

      v2 = *(v13 + 8 * v3 + 32);
      v0[48] = v2;
      if (v2[2])
      {

        v14 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
        if (v15 & 1) != 0 && (v1 = v0[44], sub_2295404B0(v2[7] + 32 * v14, (v0 + 24)), (swift_dynamicCast()))
        {
          v17 = v0[41];
          v16 = v0[42];
          v18 = v0[40];
          sub_22A4DB75C();

          if ((*(v16 + 48))(v18, 1, v17) == 1)
          {
            v1 = v0[40];

            sub_22953EAE4(v1, &unk_27D87D2A0, &unk_22A578BD0);
          }

          else
          {
            (*(v0[42] + 32))(v0[43], v0[40], v0[41]);
            objc_opt_self();
            v19 = swift_dynamicCastObjCClass();
            if (v19)
            {
              v20 = v0[43];
              v21 = [v19 services];
              v29 = sub_229562F68(0, &unk_27D87D360, off_278666310);
              v22 = sub_22A4DD83C();

              v23 = swift_task_alloc();
              *(v23 + 16) = v20;
              v1 = sub_22968FFF0(sub_229628A6C, v23, v22);
              v0[49] = v1;

              if (v1)
              {
                goto LABEL_19;
              }
            }

            v24 = v0[42];
            v1 = v0[43];
            v25 = v0[41];

            (*(v24 + 8))(v1, v25);
          }
        }

        else
        {
        }
      }

      v3 = v0[47] + 1;
      if (v3 == v0[46])
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_19:
    (*(v0[42] + 8))(v0[43], v0[41]);
    v26 = sub_2297728CC(v2);
    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    v0[10] = v29;
    v0[11] = &off_283CE3BD8;
    v0[7] = v1;
    v0[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
    v0[28] = v26;
    v27 = v1;
    v28 = swift_task_alloc();
    v0[50] = v28;
    *v28 = v0;
    v28[1] = sub_2296260CC;
    v8 = v0[37];
    v9 = v0[38];
    v10 = (v0 + 7);
    v11 = (v0 + 28);
  }

  return sub_229709F5C(v10, v11, v8, v9);
}

uint64_t sub_2296266A8()
{
  v1 = v0[49];

  sub_22953EAE4((v0 + 28), &unk_27D87FC20, &unk_22A578810);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v2 = v0[1];

  return v2();
}

uint64_t sub_229626744()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = sub_2296268E8;
  }

  else
  {
    sub_22953EAE4(v2 + 160, &unk_27D87FC20, &unk_22A578810);
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v3 = sub_229626878;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229626878()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296268E8()
{
  sub_22953EAE4(v0 + 160, &unk_27D87FC20, &unk_22A578810);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229626978(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v6 = swift_task_alloc();
  v3[11] = v6;
  *v6 = v3;
  v6[1] = sub_229626A24;

  return sub_229623634(a1, a2);
}

uint64_t sub_229626A24(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_229626B58, 0, 0);
  }
}

uint64_t sub_229626B58()
{
  if (*(v0 + 96))
  {
    v1 = sub_22962253C(*(v0 + 64), *(v0 + 72));
    *(v0 + 104) = v2;
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      v5 = [*(v0 + 80) name];
      v6 = sub_22A4DD5EC();
      v8 = v7;

      if (v6 == v3 && v4 == v8)
      {
      }

      else
      {
        v10 = sub_22A4DE60C();

        if ((v10 & 1) == 0)
        {
          v11 = swift_task_alloc();
          *(v0 + 112) = v11;
          *v11 = v0;
          v11[1] = sub_229626E48;

          return sub_2295A7CFC(v3, v4);
        }
      }
    }

    if (*(*(v0 + 96) + 16) && (v13 = sub_229543DBC(0x7365636976726553, 0xE800000000000000), (v14 & 1) != 0))
    {
      sub_2295404B0(*(*(v0 + 96) + 56) + 32 * v13, v0 + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      if (swift_dynamicCast())
      {
        v17 = *(v0 + 72);
        v16 = *(v0 + 80);
        v18 = *(v0 + 64);
        v19 = *(v0 + 48);
        *(v0 + 128) = v19;
        *(v0 + 56) = v19;
        v20 = swift_task_alloc();
        *(v0 + 136) = v20;
        v20[2] = v16;
        v20[3] = v18;
        v20[4] = v17;
        v21 = swift_task_alloc();
        *(v0 + 144) = v21;
        v22 = sub_229579858(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
        *v21 = v0;
        v21[1] = sub_229627148;

        return MEMORY[0x282167808](&unk_22A57B340, v20, v15, v22);
      }
    }

    else
    {
    }
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_229626E48()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_229627290;
  }

  else
  {
    v2 = sub_229626F5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229626F5C()
{

  if (*(v0[12] + 16) && (v1 = sub_229543DBC(0x7365636976726553, 0xE800000000000000), (v2 & 1) != 0))
  {
    sub_2295404B0(*(v0[12] + 56) + 32 * v1, (v0 + 2));

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    if (swift_dynamicCast())
    {
      v5 = v0[9];
      v4 = v0[10];
      v6 = v0[8];
      v7 = v0[6];
      v0[16] = v7;
      v0[7] = v7;
      v8 = swift_task_alloc();
      v0[17] = v8;
      v8[2] = v4;
      v8[3] = v6;
      v8[4] = v5;
      v9 = swift_task_alloc();
      v0[18] = v9;
      v10 = sub_229579858(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
      *v9 = v0;
      v9[1] = sub_229627148;

      return MEMORY[0x282167808](&unk_22A57B340, v8, v3, v10);
    }
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_229627148()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2296272FC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_229627290()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296272FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229627368(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v5 = *a1;
  v4[4] = a4;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_229627390, 0, 0);
}

uint64_t sub_229627390()
{
  v1 = sub_229624C90(v0[5]);
  v0[6] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_229598D74;
    v4 = v0[3];
    v3 = v0[4];

    return sub_229771444(v4, v3);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

void sub_22962748C()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = [v1 services];
    v0[13] = sub_229562F68(0, &unk_27D87D360, off_278666310);
    v3 = sub_22A4DD83C();
    v0[14] = v3;

    if (v3 >> 62)
    {
      v18 = sub_22A4DE0EC();
      v0[15] = v18;
      if (v18)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0[15] = v4;
      if (v4)
      {
LABEL_4:
        v5 = v0[14];
        if ((v5 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x22AAD13F0](0);
        }

        else
        {
          if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v6 = *(v5 + 32);
        }

        v0[16] = v6;
        v0[17] = 1;
        v7 = sub_22976ED74(0x53555F6E65, 0xE500000000000000);
        v0[18] = v8;
        if (v8)
        {
          v9 = v7;
          v10 = v8;
          v11 = swift_task_alloc();
          v0[19] = v11;
          *v11 = v0;
          v11[1] = sub_229627810;

          sub_2298079DC(v9, v10);
          return;
        }

        v12 = v0[16];
        v13 = v0[13];
        sub_229562F68(0, &qword_27D87D4D8, off_278666048);
        v0[10] = v13;
        v0[11] = &off_283CE3BD8;
        v0[7] = v12;
        v14 = (v0 + 7);
        v15 = v12;
        v16 = swift_task_alloc();
        v0[21] = v16;
        *v16 = v0;
        v17 = sub_229627A80;
        goto LABEL_20;
      }
    }
  }

  v19 = sub_22962253C(0x53555F6E65, 0xE500000000000000);
  v0[23] = v20;
  if (!v20)
  {
    v24 = v0[12];
    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    v0[5] = sub_229562F68(0, &qword_281401C30, off_278665FE8);
    v0[6] = &off_283CDE980;
    v0[2] = v24;
    v14 = (v0 + 2);
    v25 = v24;
    v16 = swift_task_alloc();
    v0[26] = v16;
    *v16 = v0;
    v17 = sub_229628128;
LABEL_20:
    v16[1] = v17;

    sub_22970A4FC(v14, 0);
    return;
  }

  v21 = v19;
  v22 = v20;
  v23 = swift_task_alloc();
  v0[24] = v23;
  *v23 = v0;
  v23[1] = sub_229627F1C;

  sub_2295A7CFC(v21, v22);
}

uint64_t sub_229627810()
{
  *(*v1 + 160) = v0;

  if (v0)
  {

    v2 = sub_229627A1C;
  }

  else
  {
    v2 = sub_229627938;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229627938()
{

  v1 = v0[16];
  v2 = v0[13];
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  v0[10] = v2;
  v0[11] = &off_283CE3BD8;
  v0[7] = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_229627A80;

  return sub_22970A4FC((v0 + 7), 0);
}

uint64_t sub_229627A1C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229627A80()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {

    v3 = sub_229627EB0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 56));
    v3 = sub_229627BA4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_229627BA4()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);

  if (v1 == v2)
  {

    v3 = sub_22962253C(0x53555F6E65, 0xE500000000000000);
    *(v0 + 184) = v4;
    if (v4)
    {
      v5 = v3;
      v6 = v4;
      v7 = swift_task_alloc();
      *(v0 + 192) = v7;
      *v7 = v0;
      v7[1] = sub_229627F1C;

      sub_2295A7CFC(v5, v6);
      return;
    }

    v11 = *(v0 + 96);
    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    *(v0 + 40) = sub_229562F68(0, &qword_281401C30, off_278665FE8);
    *(v0 + 48) = &off_283CDE980;
    *(v0 + 16) = v11;
    v12 = v0 + 16;
    v13 = v11;
    v14 = swift_task_alloc();
    *(v0 + 208) = v14;
    *v14 = v0;
    v15 = sub_229628128;
    goto LABEL_17;
  }

  v8 = *(v0 + 136);
  v9 = *(v0 + 112);
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x22AAD13F0](*(v0 + 136));
  }

  else
  {
    if (v8 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_21:
      __break(1u);
      return;
    }

    v10 = *(v9 + 8 * v8 + 32);
  }

  *(v0 + 128) = v10;
  *(v0 + 136) = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v16 = sub_22976ED74(0x53555F6E65, 0xE500000000000000);
  *(v0 + 144) = v17;
  if (!v17)
  {
    v21 = *(v0 + 128);
    v22 = *(v0 + 104);
    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    *(v0 + 80) = v22;
    *(v0 + 88) = &off_283CE3BD8;
    *(v0 + 56) = v21;
    v12 = v0 + 56;
    v23 = v21;
    v14 = swift_task_alloc();
    *(v0 + 168) = v14;
    *v14 = v0;
    v15 = sub_229627A80;
LABEL_17:
    v14[1] = v15;

    sub_22970A4FC(v12, 0);
    return;
  }

  v18 = v16;
  v19 = v17;
  v20 = swift_task_alloc();
  *(v0 + 152) = v20;
  *v20 = v0;
  v20[1] = sub_229627810;

  sub_2298079DC(v18, v19);
}

uint64_t sub_229627EB0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229627F1C()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_229628264;
  }

  else
  {
    v2 = sub_229628030;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229628030()
{

  v1 = v0[12];
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  v0[5] = sub_229562F68(0, &qword_281401C30, off_278665FE8);
  v0[6] = &off_283CDE980;
  v0[2] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_229628128;

  return sub_22970A4FC((v0 + 2), 0);
}

uint64_t sub_229628128()
{
  v2 = *v1;
  v2[27] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2296282C8, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_229628264()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296282C8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22962832C(id *a1, uint64_t a2)
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uuid];
  sub_22A4DB79C();

  v8 = sub_22A4DB78C();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_22962845C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_229569B30;

  return sub_229625510(a1, a2, a3, a4);
}

uint64_t sub_22962854C(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229569B30;

  return sub_229627368(a1, v4, v5, v6);
}

unint64_t *sub_22962861C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_229628810(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_2296286A4(uint64_t a1, uint64_t (*a2)(void *, __n128))
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_229628810(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_22962861C(v10, v6, v4, a2);
  result = MEMORY[0x22AAD4E50](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

unint64_t *sub_229628810(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  v21 = 0;
  v22 = a4;
  v19 = a2;
  v20 = result;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v24 + 48) + 16 * v13);
    v15 = v14[1];
    v23[0] = *v14;
    v23[1] = v15;
    MEMORY[0x28223BE20](result);
    v18[2] = v23;

    v16 = sub_22986A5E0(v22, v18, &unk_283CDA2E8);

    if ((v16 & 1) == 0)
    {
      *(v20 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_229772BD4(v20, v19, v21, v24);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_229772BD4(v20, v19, v21, v24);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2296289A8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_229586D38;

  return sub_229623D08(a1, a2, v7, v6);
}

uint64_t sub_229628AA8()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_281401F50);
  __swift_project_value_buffer(v0, qword_281401F50);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

id sub_229628B24()
{
  type metadata accessor for FindMyHandler(0);
  swift_allocObject();
  result = sub_22962C990();
  qword_2814050C8 = result;
  return result;
}

uint64_t sub_229628B98()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229628C34, v0, 0);
}

uint64_t sub_229628C34()
{
  if (qword_281401F48 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_281401F50);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Starting find my handler", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = v0[2];

  if (*(v5 + 112) == 1)
  {
    v6 = sub_22A4DD05C();
    v7 = sub_22A4DDCEC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_229538000, v6, v7, "Find my handler has already been started. Cannot start again.", v8, 2u);
      MEMORY[0x22AAD4E50](v8, -1, -1);
    }
  }

  else
  {
    v9 = v0[2];
    v10 = v0[3];
    *(v5 + 112) = 1;
    v11 = sub_22A4DD9DC();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = sub_22962D2EC();
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = v12;
    v13[4] = v9;
    swift_retain_n();
    sub_22957F3C0(0, 0, v10, &unk_22A57B478, v13);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_229628E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v6 = sub_22A4DB95C();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E220, &qword_22A57B480);
  v4[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E228, &qword_22A57B488);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E230, &qword_22A57B490);
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E200, &qword_22A57B428);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v9 = sub_22A4DB9BC();
  v4[25] = v9;
  v4[26] = *(v9 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v10 = sub_22A4DB92C();
  v4[29] = v10;
  v4[30] = *(v10 - 8);
  v4[31] = swift_task_alloc();
  v11 = sub_22A4DB93C();
  v4[32] = v11;
  v4[33] = *(v11 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229629220, a4, 0);
}

uint64_t sub_229629220()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  (*(v0[30] + 104))(v0[31], *MEMORY[0x277D09060], v0[29]);
  sub_22A4DB94C();
  (*(v4 + 16))(v1, v2, v3);
  sub_22A4DB9EC();
  swift_allocObject();
  v5 = swift_task_alloc();
  v0[36] = v5;
  *v5 = v0;
  v5[1] = sub_229629338;
  v6 = v0[34];

  return MEMORY[0x28215FBB8](v6);
}

uint64_t sub_229629338(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 256);
  v5 = *(*v1 + 56);
  *(*v1 + 296) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_2296294AC, v5, 0);
}

uint64_t sub_2296294AC()
{
  *(v0[7] + 120) = v0[37];

  v1 = swift_task_alloc();
  v0[38] = v1;
  *v1 = v0;
  v1[1] = sub_229629564;
  v2 = v0[37];
  v3 = v0[24];

  return sub_22962B4EC(v3, v2);
}

uint64_t sub_229629564()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_229629674, v1, 0);
}

uint64_t sub_229629674()
{
  v36 = v0;
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = *(v2 + 48);
  v0[39] = v4;
  v0[40] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_22953EAE4(v3, &qword_27D87E200, &qword_22A57B428);
  }

  else
  {
    (*(v2 + 32))(v0[28], v3, v1);
    if (qword_281401F48 != -1)
    {
      swift_once();
    }

    v5 = v0[27];
    v6 = v0[28];
    v7 = v0[25];
    v8 = v0[26];
    v9 = sub_22A4DD07C();
    __swift_project_value_buffer(v9, qword_281401F50);
    v10 = *(v8 + 16);
    v10(v5, v6, v7);
    v11 = sub_22A4DD05C();
    v12 = sub_22A4DDCCC();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[26];
    v14 = v0[27];
    v16 = v0[25];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35 = v33;
      *v17 = 136315138;
      v31 = sub_22A4DB99C();
      v34 = v10;
      v19 = v18;
      v32 = v12;
      v20 = *(v15 + 8);
      v20(v14, v16);
      v21 = v20;
      v22 = sub_2295A3E30(v31, v19, &v35);
      v10 = v34;

      *(v17 + 4) = v22;
      _os_log_impl(&dword_229538000, v11, v32, "Found designated ME device %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AAD4E50](v33, -1, -1);
      MEMORY[0x22AAD4E50](v17, -1, -1);
    }

    else
    {

      v23 = *(v15 + 8);
      v23(v14, v16);
      v21 = v23;
    }

    v24 = v0[28];
    v25 = v0[25];
    v26 = v0[26];
    v27 = v0[23];
    v10(v27, v24, v25);
    (*(v26 + 56))(v27, 0, 1, v25);
    sub_22962BF34(v27);
    sub_22953EAE4(v27, &qword_27D87E200, &qword_22A57B428);
    v21(v24, v25);
  }

  v28 = swift_task_alloc();
  v0[41] = v28;
  *v28 = v0;
  v28[1] = sub_2296299C0;
  v29 = v0[19];

  return MEMORY[0x28215FB78](v29);
}

uint64_t sub_2296299C0()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_22962A8EC;
  }

  else
  {
    v4 = sub_229629AEC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229629AEC()
{
  sub_22A4DDA3C();
  v1 = sub_22962D2EC();
  v2 = OBJC_IVAR____TtC13HomeKitDaemon13FindMyHandler_fmfDevice;
  *(v0 + 344) = v1;
  *(v0 + 352) = v2;
  *(v0 + 384) = *MEMORY[0x277D091A0];
  *(v0 + 388) = *MEMORY[0x277D09178];
  *(v0 + 392) = *MEMORY[0x277D09198];
  *(v0 + 396) = *MEMORY[0x277D09180];
  v3 = *(v0 + 336);
  *(v0 + 360) = @"HMDFMFStatusUpdateNotification";
  *(v0 + 368) = v3;
  v4 = *(v0 + 56);
  v5 = swift_task_alloc();
  *(v0 + 376) = v5;
  *v5 = v0;
  v5[1] = sub_229629C10;
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);

  return MEMORY[0x2822003E8](v6, v4, v1, v7);
}

uint64_t sub_229629C10()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_229629D20, v1, 0);
}

void sub_229629D20()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 112);
    v9 = *(v0 + 120);

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);

    v10 = *(v0 + 8);

    v10();
    return;
  }

  v11 = *(v0 + 384);
  v12 = *(v0 + 96);
  (*(v3 + 32))(v12, v1, v2);
  v13 = (*(v3 + 88))(v12, v2);
  if (v13 != v11)
  {
    if (v13 == *(v0 + 388))
    {
      v29 = *(v0 + 96);
      (*(*(v0 + 88) + 96))(v29, *(v0 + 80));
      v30 = *v29;
      if (qword_281401F48 != -1)
      {
        swift_once();
      }

      v31 = sub_22A4DD07C();
      __swift_project_value_buffer(v31, qword_281401F50);
      v32 = sub_22A4DD05C();
      v33 = sub_22A4DDCCC();
      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_23;
      }

      v34 = swift_slowAlloc();
      *v34 = 67109120;
      *(v34 + 4) = v30;
      v35 = "myLocation enabled: %{BOOL}d";
    }

    else
    {
      if (v13 != *(v0 + 392))
      {
        if (v13 == *(v0 + 396))
        {
          if (qword_281401F48 != -1)
          {
            swift_once();
          }

          v57 = sub_22A4DD07C();
          __swift_project_value_buffer(v57, qword_281401F50);
          v58 = sub_22A4DD05C();
          v59 = sub_22A4DDCCC();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            *v60 = 0;
            _os_log_impl(&dword_229538000, v58, v59, "FindMy Session created. Going to query the ME device.", v60, 2u);
            MEMORY[0x22AAD4E50](v60, -1, -1);
          }

          v61 = *(v0 + 344);
          v63 = *(v0 + 64);
          v62 = *(v0 + 72);
          v64 = *(v0 + 56);

          v65 = sub_22A4DD9DC();
          v66 = *(v65 - 8);
          (*(v66 + 56))(v62, 1, 1, v65);
          v67 = swift_allocObject();
          v67[2] = v64;
          v67[3] = v61;
          v67[4] = v64;
          sub_229564F88(v62, v63, &unk_27D87D8F0, &qword_22A578D70);
          LODWORD(v62) = (*(v66 + 48))(v63, 1, v65);
          swift_retain_n();

          v68 = *(v0 + 64);
          if (v62 == 1)
          {
            sub_22953EAE4(*(v0 + 64), &unk_27D87D8F0, &qword_22A578D70);
          }

          else
          {
            sub_22A4DD9CC();
            (*(v66 + 8))(v68, v65);
          }

          v81 = v67[2];
          swift_unknownObjectRetain();

          if (v81)
          {
            swift_getObjectType();
            v82 = sub_22A4DD8CC();
            v84 = v83;
            swift_unknownObjectRelease();
          }

          else
          {
            v82 = 0;
            v84 = 0;
          }

          sub_22953EAE4(*(v0 + 72), &unk_27D87D8F0, &qword_22A578D70);
          v85 = swift_allocObject();
          *(v85 + 16) = &unk_22A57B4A0;
          *(v85 + 24) = v67;
          if (v84 | v82)
          {
            *(v0 + 16) = 0;
            *(v0 + 24) = 0;
            *(v0 + 32) = v82;
            *(v0 + 40) = v84;
          }

          swift_task_create();
        }

        else
        {
          if (qword_281401F48 != -1)
          {
            swift_once();
          }

          v69 = sub_22A4DD07C();
          __swift_project_value_buffer(v69, qword_281401F50);
          v70 = sub_22A4DD05C();
          v71 = sub_22A4DDCEC();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            *v72 = 0;
            _os_log_impl(&dword_229538000, v70, v71, "FindMy async stream : unknown case", v72, 2u);
            MEMORY[0x22AAD4E50](v72, -1, -1);
          }

          v74 = *(v0 + 88);
          v73 = *(v0 + 96);
          v75 = *(v0 + 80);

          (*(v74 + 8))(v73, v75);
        }

        goto LABEL_24;
      }

      v37 = *(v0 + 96);
      (*(*(v0 + 88) + 96))(v37, *(v0 + 80));
      v38 = *v37;
      if (qword_281401F48 != -1)
      {
        swift_once();
      }

      v39 = sub_22A4DD07C();
      __swift_project_value_buffer(v39, qword_281401F50);
      v32 = sub_22A4DD05C();
      v33 = sub_22A4DDCCC();
      if (!os_log_type_enabled(v32, v33))
      {
LABEL_23:

LABEL_24:
        v40 = *(v0 + 368);
LABEL_43:
        *(v0 + 368) = v40;
        v76 = *(v0 + 344);
        v77 = *(v0 + 56);
        v78 = swift_task_alloc();
        *(v0 + 376) = v78;
        *v78 = v0;
        v78[1] = sub_229629C10;
        v79 = *(v0 + 104);
        v80 = *(v0 + 112);

        MEMORY[0x2822003E8](v79, v77, v76, v80);
        return;
      }

      v34 = swift_slowAlloc();
      *v34 = 67109120;
      *(v34 + 4) = v38;
      v35 = "friendRequests allowed: %{BOOL}d";
    }

    _os_log_impl(&dword_229538000, v32, v33, v35, v34, 8u);
    MEMORY[0x22AAD4E50](v34, -1, -1);
    goto LABEL_23;
  }

  v14 = *(v0 + 176);
  v15 = *(v0 + 96);
  (*(*(v0 + 88) + 96))(v15, *(v0 + 80));
  sub_22962CE44(v15, v14);
  if (qword_281401F48 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 168);
  v17 = *(v0 + 176);
  v18 = sub_22A4DD07C();
  __swift_project_value_buffer(v18, qword_281401F50);
  sub_229564F88(v17, v16, &qword_27D87E200, &qword_22A57B428);
  v19 = sub_22A4DD05C();
  v20 = sub_22A4DDCCC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 312);
    v22 = *(v0 + 200);
    v24 = *(v0 + 160);
    v23 = *(v0 + 168);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *(v0 + 48) = v26;
    *v25 = 136315138;
    sub_229564F88(v23, v24, &qword_27D87E200, &qword_22A57B428);
    if (v21(v24, 1, v22) == 1)
    {
      sub_22953EAE4(*(v0 + 160), &qword_27D87E200, &qword_22A57B428);
      v27 = 0xE400000000000000;
      v28 = 1701736302;
    }

    else
    {
      v41 = *(v0 + 200);
      v42 = *(v0 + 208);
      v43 = *(v0 + 160);
      v28 = sub_22A4DB99C();
      v27 = v44;
      (*(v42 + 8))(v43, v41);
    }

    sub_22953EAE4(*(v0 + 168), &qword_27D87E200, &qword_22A57B428);
    v45 = sub_2295A3E30(v28, v27, (v0 + 48));

    *(v25 + 4) = v45;
    _os_log_impl(&dword_229538000, v19, v20, "meDevice changed: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x22AAD4E50](v26, -1, -1);
    MEMORY[0x22AAD4E50](v25, -1, -1);
  }

  else
  {
    v36 = *(v0 + 168);

    sub_22953EAE4(v36, &qword_27D87E200, &qword_22A57B428);
  }

  v46 = *(v0 + 368);
  v47 = *(v0 + 176);
  v48 = *(v0 + 56);
  v49 = (v48 + *(v0 + 352));
  os_unfair_lock_lock(v49);
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880E00, &qword_22A57B438) + 28);
  sub_22953EAE4(v49 + v50, &qword_27D87E200, &qword_22A57B428);
  sub_229564F88(v47, v49 + v50, &qword_27D87E200, &qword_22A57B428);
  os_unfair_lock_unlock(v49);
  v51 = sub_22962CEB4(v47);
  os_unfair_lock_lock((v48 + 128));
  sub_22962C038((v48 + 136), v51, (v0 + 400));
  os_unfair_lock_unlock((v48 + 128));
  if (!v46)
  {
    if (*(v0 + 400))
    {
      v52 = *(v0 + 56);
      v53 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
      os_unfair_lock_lock((v52 + 128));
      v54 = *(v52 + 136);
      os_unfair_lock_unlock((v52 + 128));
      v55 = [objc_opt_self() fmfStatusWithValue_];
      [v55 addToPayload_];

      v56 = v53;
      sub_22A4DD48C();

      logAndPostNotification(*(v0 + 360), *(v0 + 56), 0);
    }

    sub_22953EAE4(*(v0 + 176), &qword_27D87E200, &qword_22A57B428);
    v40 = 0;
    goto LABEL_43;
  }
}

uint64_t sub_22962A8EC()
{

  if (qword_281401F48 != -1)
  {
    swift_once();
  }

  v1 = v0[42];
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_281401F50);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCFC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[42];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_229538000, v4, v5, "According to FindMy team this should never happen. Please file a radar if you see this. %@", v8, 0xCu);
    sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  else
  {
  }

  *(v0[7] + 112) = 0;

  v12 = v0[1];

  return v12();
}

uint64_t sub_22962AB7C()
{
  v1 = *(v0[2] + 120);
  v0[3] = v1;

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_22962AC30;

  return sub_22962AD40(v1);
}

uint64_t sub_22962AC30()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22962AD40(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E200, &qword_22A57B428);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v3 = sub_22A4DB9BC();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22962AE50, v1, 0);
}

uint64_t sub_22962AE50()
{
  if (qword_281401F48 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  v0[10] = __swift_project_value_buffer(v1, qword_281401F50);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Going to query & process ME device", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = v0[2];

  if (v5)
  {
    v6 = v0[2];

    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_22962B088;
    v8 = v0[5];

    return sub_22962B4EC(v8, v6);
  }

  else
  {
    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDCFC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_229538000, v10, v11, "Unable to open FindMyLocate session", v12, 2u);
      MEMORY[0x22AAD4E50](v12, -1, -1);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_22962B088()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_22962B198, v1, 0);
}

uint64_t sub_22962B198()
{
  v31 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_22953EAE4(v3, &qword_27D87E200, &qword_22A57B428);
    v4 = sub_22A4DD05C();
    v5 = sub_22A4DDCEC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_229538000, v4, v5, "Unable to query the ME device from FindMyLocate", v6, 2u);
      MEMORY[0x22AAD4E50](v6, -1, -1);
    }
  }

  else
  {
    v8 = v0[8];
    v7 = v0[9];
    (*(v2 + 32))(v7, v3, v1);
    v9 = *(v2 + 16);
    v9(v8, v7, v1);
    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDCCC();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[6];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30 = v27;
      *v16 = 136315138;
      v26 = sub_22A4DB99C();
      v28 = v9;
      v18 = v17;
      v29 = *(v14 + 8);
      v29(v13, v15);
      v19 = sub_2295A3E30(v26, v18, &v30);
      v9 = v28;

      *(v16 + 4) = v19;
      _os_log_impl(&dword_229538000, v10, v11, "Found designated ME device %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);
    }

    else
    {

      v29 = *(v14 + 8);
      v29(v13, v15);
    }

    v20 = v0[9];
    v21 = v0[6];
    v22 = v0[7];
    v23 = v0[4];
    v9(v23, v20, v21);
    (*(v22 + 56))(v23, 0, 1, v21);
    sub_22962BF34(v23);

    sub_22953EAE4(v23, &qword_27D87E200, &qword_22A57B428);
    v29(v20, v21);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_22962B4EC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = sub_22A4DB7DC();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[9] = v6;
  *v6 = v3;
  v6[1] = sub_22962B60C;

  return MEMORY[0x28215FB40](a1, 1);
}

uint64_t sub_22962B60C()
{
  v2 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_22962B7EC;
  }

  else
  {
    v3 = sub_22962B734;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_22962B734()
{
  v1 = *(v0 + 16);
  v2 = sub_22A4DB9BC();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22962B7EC()
{
  if (qword_281401F48 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_22A4DD07C();
  v0[11] = __swift_project_value_buffer(v2, qword_281401F50);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_229538000, v4, v5, "Could not find the me device from cache %@. Going to force fetch from the FindMy daemon", v7, 0xCu);
    sub_22953EAE4(v8, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_22962B9C0;
  v12 = v0[2];

  return MEMORY[0x28215FB40](v12, 0);
}

uint64_t sub_22962B9C0()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_22962BBAC;
  }

  else
  {
    v4 = sub_22962BAEC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22962BAEC()
{
  v1 = *(v0 + 16);
  v2 = sub_22A4DB9BC();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22962BBAC()
{
  v1 = v0[13];
  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCEC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_229538000, v3, v4, "Unable to fetch the FindMy device from daemon. %@.", v6, 0xCu);
    sub_22953EAE4(v7, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v7, -1, -1);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  if (isInternalBuild() && (v10 = [objc_opt_self() sharedPreferences], v11 = sub_22A4DD5AC(), v12 = objc_msgSend(v10, sel_preferenceForKey_, v11), v11, v10, LODWORD(v10) = objc_msgSend(v12, sel_BOOLValue), v12, v10))
  {
    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCCC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_229538000, v13, v14, "Preference 'fakeCurrentDeviceAsDesignatedMeDevice' is enabled, returning a fake device as Me device", v15, 2u);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }

    v16 = v0[13];
    v18 = v0[7];
    v17 = v0[8];
    v19 = v0[5];
    v20 = v0[6];
    v28 = v0[10];

    sub_22A4DB7CC();
    sub_22A4DB76C();
    v21 = *(v20 + 8);
    v21(v17, v19);
    sub_22A4DB7CC();
    sub_22A4DB76C();
    v21(v18, v19);
    sub_22A4DB98C();
    v22 = v28;
    v23 = 0;
  }

  else
  {
    v16 = v0[13];
    v22 = v0[10];
    v23 = 1;
  }

  v24 = v0[2];
  v25 = sub_22A4DB9BC();
  (*(*(v25 - 8) + 56))(v24, v23, 1, v25);

  v26 = v0[1];

  return v26();
}

void sub_22962BF34(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC13HomeKitDaemon13FindMyHandler_fmfDevice);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC13HomeKitDaemon13FindMyHandler_fmfDevice));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880E00, &qword_22A57B438) + 28);
  sub_22953EAE4(v3 + v4, &qword_27D87E200, &qword_22A57B428);
  sub_229564F88(a1, v3 + v4, &qword_27D87E200, &qword_22A57B428);
  os_unfair_lock_unlock(v3);
  v5 = sub_22962CEB4(a1);
  os_unfair_lock_lock((v1 + 128));
  sub_22962C038((v1 + 136), v5, &v6);
  os_unfair_lock_unlock((v1 + 128));
  if (v6 == 1)
  {

    sub_22962C368();
  }
}

void sub_22962C038(unint64_t *a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  if (*a1 == a2)
  {
    if (qword_281401F48 != -1)
    {
      swift_once();
    }

    v6 = sub_22A4DD07C();
    __swift_project_value_buffer(v6, qword_281401F50);
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCCC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35 = v10;
      *v9 = 136315138;
      v11 = HMDFMFStatusAsString(a2);
      v12 = sub_22A4DD5EC();
      v14 = v13;

      v15 = sub_2295A3E30(v12, v14, &v35);

      *(v9 + 4) = v15;
      _os_log_impl(&dword_229538000, v7, v8, "FMF status is not changing from %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AAD4E50](v10, -1, -1);
      MEMORY[0x22AAD4E50](v9, -1, -1);
    }

    v16 = 0;
  }

  else
  {
    if (qword_281401F48 != -1)
    {
      swift_once();
    }

    v18 = sub_22A4DD07C();
    __swift_project_value_buffer(v18, qword_281401F50);
    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCCC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136315394;
      v23 = HMDFMFStatusAsString(v5);
      v34 = a3;
      v24 = sub_22A4DD5EC();
      v26 = v25;

      v27 = sub_2295A3E30(v24, v26, &v35);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2080;
      v28 = HMDFMFStatusAsString(a2);
      v29 = sub_22A4DD5EC();
      v31 = v30;

      v32 = v29;
      a3 = v34;
      v33 = sub_2295A3E30(v32, v31, &v35);

      *(v21 + 14) = v33;
      _os_log_impl(&dword_229538000, v19, v20, "FMF status is changing from %s to %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v22, -1, -1);
      MEMORY[0x22AAD4E50](v21, -1, -1);
    }

    *a1 = a2;
    v16 = 1;
  }

  *a3 = v16;
}

void sub_22962C368()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  os_unfair_lock_lock((v0 + 128));
  v2 = *(v0 + 136);
  os_unfair_lock_unlock((v0 + 128));
  v3 = [objc_opt_self() fmfStatusWithValue_];
  [v3 addToPayload_];

  v4 = v1;
  sub_22A4DD48C();

  logAndPostNotification(@"HMDFMFStatusUpdateNotification", v0, 0);
}

uint64_t sub_22962C620(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_22962C69C, a2, 0);
}

uint64_t sub_22962C69C()
{
  v1 = *(v0[2] + 120);
  v0[4] = v1;

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22962C750;

  return sub_22962AD40(v1);
}

uint64_t sub_22962C750()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_22962C87C, v1, 0);
}

uint64_t sub_22962C87C()
{
  v1 = v0[2];
  v2 = v0[3];
  os_unfair_lock_lock((v1 + 128));
  v3 = *(v1 + 136);
  os_unfair_lock_unlock((v1 + 128));
  v4 = [objc_opt_self() fmfStatusWithValue_];

  (v2)[2](v2, v4);
  _Block_release(v2);

  v5 = v0[1];

  return v5();
}

id sub_22962C990()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E200, &qword_22A57B428);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  v4 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon13FindMyHandler_fmfDevice);
  v5 = sub_22A4DB9BC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  *v4 = 0;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880E00, &qword_22A57B438) + 28);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E218, &qword_22A57B468);
  bzero(v4 + v6, *(*(v7 - 8) + 64));
  sub_22962CE44(v3, v4 + v6);
  MyHandler = type metadata accessor for FindMyHandler(0);
  v10.receiver = v0;
  v10.super_class = MyHandler;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_22962CB04()
{

  v1 = v0 + OBJC_IVAR____TtC13HomeKitDaemon13FindMyHandler_fmfDevice;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880E00, &qword_22A57B438);
  sub_22953EAE4(v1 + *(v2 + 28), &qword_27D87E200, &qword_22A57B428);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

HMDFMFHandlerFactory __swiftcall HMDFMFHandlerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t type metadata accessor for FindMyHandler(uint64_t a1)
{
  result = qword_281402D30;
  if (!qword_281402D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22962CCA4(uint64_t a1)
{
  sub_22962CD5C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22962CD5C(uint64_t a1)
{
  if (!qword_281401D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87E200, &qword_22A57B428);
    v1 = sub_22A4DC1EC();
    if (!v2)
    {
      atomic_store(v1, &qword_281401D00);
    }
  }
}

unint64_t type metadata accessor for HMDFMFHandlerFactory()
{
  result = qword_27D87E210;
  if (!qword_27D87E210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D87E210);
  }

  return result;
}

uint64_t sub_22962CE44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E200, &qword_22A57B428);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22962CEB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E200, &qword_22A57B428);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  v5 = sub_22A4DB9BC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  sub_229564F88(a1, v4, &qword_27D87E200, &qword_22A57B428);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_22953EAE4(v4, &qword_27D87E200, &qword_22A57B428);
    if (qword_281401F48 != -1)
    {
      swift_once();
    }

    v12 = sub_22A4DD07C();
    __swift_project_value_buffer(v12, qword_281401F50);
    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCCC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_229538000, v13, v14, "There is no designated ME device on this account", v15, 2u);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }

    return 1;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    if (qword_281401F48 != -1)
    {
      swift_once();
    }

    v17 = sub_22A4DD07C();
    __swift_project_value_buffer(v17, qword_281401F50);
    (*(v6 + 16))(v9, v11, v5);
    v18 = sub_22A4DD05C();
    v19 = sub_22A4DDCCC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v20 = 136315138;
      v21 = sub_22A4DB99C();
      v23 = v22;
      v24 = *(v6 + 8);
      v24(v9, v5);
      v25 = sub_2295A3E30(v21, v23, &v29);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_229538000, v18, v19, "Designated ME device : %s", v20, 0xCu);
      v26 = v28;
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v20, -1, -1);
    }

    else
    {

      v24 = *(v6 + 8);
      v24(v9, v5);
    }

    if (sub_22A4DB96C())
    {
      v24(v11, v5);
      return 2;
    }

    else
    {
      v27 = sub_22A4DB9AC();
      v24(v11, v5);
      if (v27)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_22962D2EC()
{
  result = qword_281402D40;
  if (!qword_281402D40)
  {
    type metadata accessor for FindMyHandler(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281402D40);
  }

  return result;
}

uint64_t sub_22962D344(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_229628E7C(a1, v4, v5, v6);
}

uint64_t sub_22962D3F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_22962AB5C(a1, v4, v5, v6);
}

uint64_t sub_22962D4AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229569B30;

  return sub_22962C620(v2, v3);
}

uint64_t objectdestroy_37Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22962D5C0(uint64_t a1)
{
  v2 = sub_22A4DE04C();
  if (v2 == 1 << *(a1 + 32))
  {
    return 43;
  }

  v4 = *(a1 + 36);

  return sub_22962F648(v2, v4, 0, a1);
}

uint64_t sub_22962D64C(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_22A4DE08C();
    v9 = v8;
    v10 = sub_22A4DE14C();
    v12 = v11;
    v13 = MEMORY[0x22AAD1290](v7, v9, v10, v11);
    sub_22962F424(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_22962F424(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v7 = sub_22A4DE04C();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_22962F430(v7, v9, v6 != 0, a1, a2, a3);
  v16 = v15;
  sub_22962F424(v7, v9, v6 != 0);
  return v16;
}

uint64_t sub_22962D780(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v5 = sub_22A4DB49C();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_22A4DB57C();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a1;
  v3[14] = v7;
  v3[15] = v8;

  return MEMORY[0x2822009F8](sub_22962D8B0, 0, 0);
}

uint64_t sub_22962D8B0()
{
  v1 = [*(v0 + 120) paymentNetworkIdentifier];
  if (v1 == 139)
  {
    sub_22A4DE1FC();

    sub_22962E16C();
    v7 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v7);

    sub_22A4DBD0C();

    v8 = swift_task_alloc();
    *(v0 + 176) = v8;
    *v8 = v0;
    v8[1] = sub_22962DE50;
    v9 = *(v0 + 120);
    v10 = *(v0 + 56);

    return sub_22962E9E0(v9, v10);
  }

  else if (v1 == 133)
  {
    sub_22A4DE1FC();

    sub_22962E16C();
    v2 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v2);

    sub_22A4DBD0C();

    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = sub_22962DB34;
    v4 = *(v0 + 120);
    v5 = *(v0 + 56);

    return sub_22962E1C4(v4, v5);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_22962DB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v5;
  v8[17] = a1;
  v8[18] = a2;
  v8[19] = v4;

  if (v4)
  {

    v9 = v8[1];

    return v9();
  }

  else
  {
    v8[20] = a4;
    v8[21] = a3;

    return MEMORY[0x2822009F8](sub_22962DCA0, 0, 0);
  }
}

uint64_t sub_22962DCA0()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  MEMORY[0x22AAD08C0](v0[21], v0[20]);

  v0[4] = 0x33313038314F5349;
  v0[5] = 0xE90000000000002DLL;
  (*(v1 + 104))(v2, *MEMORY[0x277CC91D8], v3);
  sub_22962F254();
  sub_22A4DB56C();
  (*(v1 + 8))(v2, v3);

  sub_22A4DB64C();
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  sub_2295798D4(v0[17], v0[18]);
  (*(v6 + 8))(v4, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22962DE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v5;
  v8[23] = a1;
  v8[24] = a2;
  v8[25] = v4;

  if (v4)
  {

    v9 = v8[1];

    return v9();
  }

  else
  {
    v8[26] = a4;
    v8[27] = a3;

    return MEMORY[0x2822009F8](sub_22962DFBC, 0, 0);
  }
}

uint64_t sub_22962DFBC()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  MEMORY[0x22AAD08C0](v0[27], v0[26]);

  v0[2] = 0x33313038314F5349;
  v0[3] = 0xE90000000000002DLL;
  (*(v1 + 104))(v2, *MEMORY[0x277CC91D8], v3);
  sub_22962F254();
  sub_22A4DB56C();
  (*(v1 + 8))(v2, v3);

  sub_22A4DB64C();
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  sub_2295798D4(v0[23], v0[24]);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

unint64_t sub_22962E16C()
{
  result = qword_27D87E238;
  if (!qword_27D87E238)
  {
    sub_22A4DB57C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E238);
  }

  return result;
}

uint64_t sub_22962E1C4(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E240, &qword_22A57B4F8);
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22962E290, 0, 0);
}

uint64_t sub_22962E290()
{
  v1 = v0[23];
  v2 = v1 + *(type metadata accessor for HomePassState(0) + 48);
  v3 = *(v2 + *(type metadata accessor for HomePassData(0) + 80));
  v0[27] = v3;
  if (v3)
  {
    v4 = v0[22];
    v5 = v3;
    v6 = [v4 subcredentials];
    if (v6)
    {
      v7 = v6;
      sub_229562F68(0, &qword_27D87E250, 0x277D37D48);
      sub_22962F2FC();
      v8 = sub_22A4DDB6C();

      v9 = sub_22962D64C(v8, &qword_27D87E250, 0x277D37D48);

      if (!v9 || (v10 = [v9 transactionKey], v9, !v10))
      {
        sub_22962F2A8();
        swift_allocError();
        *v29 = 0xD000000000000038;
        *(v29 + 8) = 0x800000022A58DFC0;
        *(v29 + 16) = 0;
        swift_willThrow();
LABEL_14:

        goto LABEL_15;
      }

      v11 = v0[22];
      v12 = sub_22A4DB62C();
      v14 = v13;

      v0[28] = v12;
      v0[29] = v14;
      v6 = [v11 subcredentials];
      if (v6)
      {
        v15 = v6;
        v16 = sub_22A4DDB6C();

        v17 = sub_22962D64C(v16, &qword_27D87E250, 0x277D37D48);

        if (v17)
        {
          v18 = [v17 identifier];

          if (v18)
          {
            v19 = v0[25];
            v34 = v0[26];
            v20 = v0[24];
            v21 = sub_22A4DD5EC();
            v23 = v22;
            v0[20] = v21;
            v0[21] = v22;

            v0[30] = v23;
            v24 = objc_allocWithZone(HMDHomeWalletKeyISOCredential);
            v25 = v5;
            sub_22956C148(v12, v14);
            v26 = sub_22A4DB61C();
            v27 = [v24 initWithHAPPairingIdentity:v25 deviceCredentialKeyExternalRepresentation:v26];
            v0[31] = v27;

            sub_2295798D4(v12, v14);
            v0[2] = v0;
            v0[7] = v0 + 18;
            v0[3] = sub_22962E788;
            swift_continuation_init();
            v0[17] = v20;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
            sub_22A4DD8DC();
            (*(v19 + 32))(boxed_opaque_existential_1, v34, v20);
            v0[10] = MEMORY[0x277D85DD0];
            v0[11] = 1107296256;
            v0[12] = sub_22962F364;
            v0[13] = &block_descriptor_9;
            [v27 encodeWithCompletion_];
            (*(v19 + 8))(boxed_opaque_existential_1, v20);
            v6 = v0 + 2;

            return MEMORY[0x282200938](v6);
          }
        }

        sub_22962F2A8();
        swift_allocError();
        *v31 = 0xD00000000000003FLL;
        *(v31 + 8) = 0x800000022A58E000;
        *(v31 + 16) = 0;
        swift_willThrow();
        sub_2295798D4(v12, v14);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x282200938](v6);
  }

  sub_22962F2A8();
  swift_allocError();
  *v30 = xmmword_22A57B4C0;
  *(v30 + 16) = 3;
  swift_willThrow();
LABEL_15:

  v32 = v0[1];

  return v32();
}

uint64_t sub_22962E788()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {

    v3 = sub_22962E948;
  }

  else
  {
    *(v1 + 264) = *(v1 + 160);
    v3 = sub_22962E8A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22962E8A8()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);

  sub_2295798D4(v2, v3);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);

  v6 = *(v0 + 8);
  v7 = *(v0 + 264);
  v8 = *(v0 + 240);

  return v6(v5, v4, v7, v8);
}

uint64_t sub_22962E948(uint64_t a1)
{
  v2 = v1[31];
  v3 = v1[28];
  v4 = v1[29];
  v5 = v1[27];
  swift_willThrow();

  sub_2295798D4(v3, v4);

  v6 = v1[1];

  return v6();
}

uint64_t sub_22962E9E0(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E240, &qword_22A57B4F8);
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22962EAAC, 0, 0);
}

uint64_t sub_22962EAAC()
{
  v1 = v0[23];
  v2 = v1 + *(type metadata accessor for HomePassState(0) + 48);
  v3 = (v2 + *(type metadata accessor for HomePassData(0) + 84));
  v4 = *v3;
  v0[27] = *v3;
  v5 = v3[1];
  v0[28] = v5;
  if (v5 >> 60 != 15)
  {
    v7 = v0[22];
    sub_22956C148(v4, v5);
    v8 = [v7 subcredentials];
    if (v8)
    {
      v9 = v8;
      sub_229562F68(0, &qword_27D87E250, 0x277D37D48);
      sub_22962F2FC();
      v10 = sub_22A4DDB6C();

      v11 = sub_22962D64C(v10, &qword_27D87E250, 0x277D37D48);

      if (!v11 || (v12 = [v11 transactionKey], v11, !v12))
      {
        sub_22962F2A8();
        swift_allocError();
        *v30 = 0xD00000000000003BLL;
        *(v30 + 8) = 0x800000022A58E060;
        *(v30 + 16) = 0;
        swift_willThrow();
        goto LABEL_14;
      }

      v13 = v0[22];
      v14 = sub_22A4DB62C();
      v16 = v15;

      v0[29] = v14;
      v0[30] = v16;
      v8 = [v13 subcredentials];
      if (v8)
      {
        v17 = v8;
        v18 = sub_22A4DDB6C();

        v19 = sub_22962D64C(v18, &qword_27D87E250, 0x277D37D48);

        if (v19)
        {
          v20 = [v19 identifier];

          if (v20)
          {
            v21 = v0[25];
            v35 = v0[26];
            v34 = v0[24];
            v22 = sub_22A4DD5EC();
            v24 = v23;
            v0[20] = v22;
            v0[21] = v23;

            v0[31] = v24;
            v25 = objc_allocWithZone(HMDHomeWalletKeyISOCredentialACWG);
            sub_2295AEF1C(v4, v5);
            sub_22956C148(v14, v16);
            v26 = sub_22A4DB61C();
            v27 = sub_22A4DB61C();
            v28 = [v25 initWithIssuerKeyPairExternalRepresentation:v26 deviceCredentialPublicKeyExternalRepresentation:v27];
            v0[32] = v28;

            sub_2295798D4(v14, v16);
            sub_229590D18(v4, v5);
            v0[2] = v0;
            v0[7] = v0 + 18;
            v0[3] = sub_22962EFE8;
            swift_continuation_init();
            v0[17] = v34;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
            sub_22A4DD8DC();
            (*(v21 + 32))(boxed_opaque_existential_1, v35, v34);
            v0[10] = MEMORY[0x277D85DD0];
            v0[11] = 1107296256;
            v0[12] = sub_22962F364;
            v0[13] = &block_descriptor_7;
            [v28 encodeWithCompletion_];
            (*(v21 + 8))(boxed_opaque_existential_1, v34);
            v8 = v0 + 2;

            return MEMORY[0x282200938](v8);
          }
        }

        sub_22962F2A8();
        swift_allocError();
        *v31 = 0xD000000000000042;
        *(v31 + 8) = 0x800000022A58E0A0;
        *(v31 + 16) = 0;
        swift_willThrow();
        sub_2295798D4(v14, v16);
LABEL_14:
        sub_229590D18(v4, v5);
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x282200938](v8);
  }

  sub_22962F2A8();
  swift_allocError();
  *v6 = xmmword_22A57B4D0;
  *(v6 + 16) = 3;
  swift_willThrow();
LABEL_15:

  v32 = v0[1];

  return v32();
}

uint64_t sub_22962EFE8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {

    v3 = sub_22962F1AC;
  }

  else
  {
    *(v1 + 272) = *(v1 + 160);
    v3 = sub_22962F108;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22962F108()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  sub_229590D18(v0[27], v0[28]);
  sub_2295798D4(v2, v3);

  v5 = v0[18];
  v4 = v0[19];

  v6 = v0[1];
  v7 = v0[34];
  v8 = v0[31];

  return v6(v5, v4, v7, v8);
}

uint64_t sub_22962F1AC(uint64_t a1)
{
  v2 = v1[32];
  v3 = v1[29];
  v4 = v1[30];
  v6 = v1[27];
  v5 = v1[28];
  swift_willThrow();
  sub_229590D18(v6, v5);
  sub_2295798D4(v3, v4);

  v7 = v1[1];

  return v7();
}

unint64_t sub_22962F254()
{
  result = qword_27D881ED0;
  if (!qword_27D881ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881ED0);
  }

  return result;
}

unint64_t sub_22962F2A8()
{
  result = qword_27D87E248;
  if (!qword_27D87E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E248);
  }

  return result;
}

unint64_t sub_22962F2FC()
{
  result = qword_27D87E258;
  if (!qword_27D87E258)
  {
    sub_229562F68(255, &qword_27D87E250, 0x277D37D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E258);
  }

  return result;
}

void sub_22962F364(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E240, &qword_22A57B4F8);
    sub_22A4DD8EC();
  }

  else
  {
    v6 = a2;
    sub_22A4DB62C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E240, &qword_22A57B4F8);
    sub_22A4DD8FC();
  }
}

uint64_t sub_22962F424(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_22962F430(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AAD12E0](a1, a2, v11);
      sub_229562F68(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_229562F68(0, a5, a6);
    if (sub_22A4DE0CC() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_22A4DE0DC();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_22A4DDECC();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_22A4DDEDC();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

uint64_t sub_22962F648(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t static HMDHomeNFCReaderKeyManagerOverrides.keychainPullOverride.getter()
{
  swift_beginAccess();
  v0 = static HMDHomeNFCReaderKeyManagerOverrides.keychainPullOverride;
  sub_2295A1C30(static HMDHomeNFCReaderKeyManagerOverrides.keychainPullOverride, unk_27D8AB740);
  return v0;
}

uint64_t static HMDHomeNFCReaderKeyManagerOverrides.keychainPullOverride.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = static HMDHomeNFCReaderKeyManagerOverrides.keychainPullOverride;
  v5 = unk_27D8AB740;
  static HMDHomeNFCReaderKeyManagerOverrides.keychainPullOverride = a1;
  unk_27D8AB740 = a2;
  return sub_2295571A0(v4, v5);
}

uint64_t sub_22962F804()
{
  swift_beginAccess();
  v0 = static HMDHomeNFCReaderKeyManagerOverrides.keychainPullOverride;
  v1 = unk_27D8AB740;
  if (static HMDHomeNFCReaderKeyManagerOverrides.keychainPullOverride)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    *(v2 + 24) = v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E260, &qword_22A57B600);
  swift_allocObject();
  sub_2295A1C30(v0, v1);
  result = sub_22A4DE8BC();
  static HMDHomeNFCReaderKeyManagerOverrides.$taskLocalKeychainPullOverride = result;
  return result;
}

uint64_t *HMDHomeNFCReaderKeyManagerOverrides.$taskLocalKeychainPullOverride.unsafeMutableAddressor()
{
  if (qword_27D87B958 != -1)
  {
    swift_once();
  }

  return &static HMDHomeNFCReaderKeyManagerOverrides.$taskLocalKeychainPullOverride;
}

uint64_t static HMDHomeNFCReaderKeyManagerOverrides.$taskLocalKeychainPullOverride.getter()
{
  if (qword_27D87B958 != -1)
  {
    swift_once();
  }
}

uint64_t (*static HMDHomeNFCReaderKeyManagerOverrides.taskLocalKeychainPullOverride.getter())()
{
  if (qword_27D87B958 != -1)
  {
    swift_once();
  }

  sub_22A4DE8CC();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_22962FA28;
}

uint64_t HMDHomeNFCReaderKeyManager.pullFromKeychain(flow:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_22962FAC8, 0, 0);
}

uint64_t sub_22962FAC8()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 24);
  v3 = sub_22A4DD5EC();
  v5 = v4;
  *(v0 + 48) = v4;
  v6 = sub_22A4DBCEC();
  v8 = v7;
  *(v0 + 56) = v7;
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_22962FBF0;

  return MEMORY[0x2821677F0](v9, v1, v3, v5, v6, v8, &unk_22A57B530, v2);
}

uint64_t sub_22962FBF0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_22962FD20;
  }

  else
  {

    v2 = sub_229566EE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22962FD20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22962FDB4()
{
  sub_22A4DBD0C();
  if (qword_27D87B958 != -1)
  {
    swift_once();
  }

  sub_22A4DE8CC();
  v1 = v0[5];
  if (v1)
  {
    sub_2295571A0(v1, v0[6]);
    v2 = sub_22A4DE8CC();
    v3 = v0[7];
    if (v3)
    {
      v4 = v0[8];
      v3(v2);
      sub_2295571A0(v3, v4);
    }

    v5 = v0[1];
    goto LABEL_13;
  }

  if ((sub_229631788() & 1) == 0)
  {
    sub_22A4DBD0C();
    [objc_opt_self() hmfErrorWithCode_];
LABEL_12:
    swift_willThrow();
    v5 = v0[1];
LABEL_13:

    return v5();
  }

  if (!*MEMORY[0x277CDC190])
  {
    sub_22A4DBD3C();
    [objc_opt_self() hmfErrorWithCode_];
    swift_willThrow();
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000029, 0x800000022A58E1A0);
    swift_getErrorValue();
    sub_22A4DE5EC();
    sub_22A4DBD0C();

    goto LABEL_12;
  }

  v6 = sub_22A4DD5EC();
  v8 = v7;
  sub_229631A04();
  v9 = sub_2296D0354(1);
  v0[10] = v9;
  v11 = v9;
  v12 = swift_allocObject();
  v0[11] = v12;
  v12[2] = v11;
  v12[3] = v6;
  v12[4] = v8;
  v13 = v11;
  v14 = swift_task_alloc();
  v0[12] = v14;
  v14[2] = &unk_22A57B5A8;
  v14[3] = v12;
  v14[4] = 0x4024000000000000;
  v15 = swift_task_alloc();
  v0[13] = v15;
  *v15 = v0;
  v15[1] = sub_229630138;

  return MEMORY[0x282200740]();
}

uint64_t sub_229630138()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2296302BC;
  }

  else
  {

    v2 = sub_229630254;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229630254()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2296302BC()
{
  v1 = *(v0 + 80);

  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000029, 0x800000022A58E1A0);
  swift_getErrorValue();
  sub_22A4DE5EC();
  sub_22A4DBD0C();

  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2296303B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22962FD98();
}

uint64_t sub_22963046C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22963053C, 0, 0);
}

uint64_t sub_22963053C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v10 = v1[18];
  v7 = sub_22A4DD5AC();
  v1[24] = v7;
  v1[2] = v1;
  v1[3] = sub_229630704;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DD8DC();
  (*(v5 + 32))(boxed_opaque_existential_1, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_229787290;
  v1[13] = &block_descriptor_10;
  [v10 rpcFetchAndProcessChangesIfNoRecentFetch:v7 reply:v3];
  (*(v5 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_229630704()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_229630880;
  }

  else
  {
    v2 = sub_229630814;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229630814()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229630880(uint64_t a1)
{
  v2 = *(v1 + 192);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_229630A84(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_229630B48;

  return HMDHomeNFCReaderKeyManager.pullFromKeychain(flow:)(v6);
}

uint64_t sub_229630B48()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = sub_22A4DB3DC();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_229630CE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_229630A84(v2, v3, v4);
}

uint64_t sub_229630D98(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a1;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 16) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  *(v5 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229630E3C, 0, 0);
}

uint64_t sub_229630E3C()
{
  v1 = v0[6];
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_22A4DD9DC();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v3;

  sub_229773AF0(v1, &unk_22A57B5C8, v7);
  sub_229631C7C(v1);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  sub_229773AF0(v1, &unk_22A57B5D8, v8);
  sub_229631C7C(v1);
  v9 = swift_task_alloc();
  v0[7] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F310, &unk_22A57B5E0);
  *v9 = v0;
  v9[1] = sub_22963101C;

  return MEMORY[0x2822004D0](v0 + 9, 0, 0, v10);
}

uint64_t sub_22963101C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_22963126C;
  }

  else
  {
    v2 = sub_229631130;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229631130()
{
  if (*(v0 + 72) == 1)
  {
    [objc_opt_self() hmfErrorWithCode_];
    swift_willThrow();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DDAEC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22963126C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DDAEC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229631318(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_229569B30;

  return v7();
}

uint64_t sub_229631420(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 24) = v5;
  *v5 = v1;
  v5[1] = sub_229631508;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_229631508()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_229631638, 0, 0);
  }
}

uint64_t sub_229631638()
{
  [objc_opt_self() hmfErrorWithCode_];
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296316C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_229859E88(v2, v3, v4);
}

uint64_t sub_229631788()
{
  v13[3] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() driver];
  v1 = [v0 homeManager];

  v2 = [objc_opt_self() sharedSettings];
  if (([v2 isKeychainSyncEnabled] & 1) == 0)
  {
    goto LABEL_6;
  }

  result = [v1 reachabilityMonitor];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [result isReachable];

  if (v5)
  {
    v6 = [objc_allocWithZone(HMDCloudKitReachabilitySource) init];
    v13[0] = 0;
    v7 = [v6 areCloudKitServersReachableWithError_];
    v8 = v13[0];
    if (v7 == 1)
    {
      v9 = v13[0];
      sub_22A4DBD0C();

      return 1;
    }

    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    v10 = v8;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000036, 0x800000022A58E220);
    v13[2] = v8;
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2D0, &qword_22A57B5F8);
    v12 = sub_22A4DD64C();
    MEMORY[0x22AAD08C0](v12);

    sub_22A4DBD3C();
  }

  else
  {
LABEL_6:
    sub_22A4DBD3C();
  }

  return 0;
}

unint64_t sub_229631A04()
{
  result = qword_281401C60;
  if (!qword_281401C60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281401C60);
  }

  return result;
}

uint64_t sub_229631A50()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_22963046C(v2, v3, v4);
}

uint64_t sub_229631AF8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_229569B30;

  return sub_229630D98(v8, a1, a2, v6, v7);
}

uint64_t sub_229631BBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_229631318(a1, v4, v5, v6);
}

uint64_t sub_229631C7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_229631CE4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_229586D38;

  return sub_229631400(v2);
}

char *sub_229631EFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CCC0, &unk_22A5779A0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 16) = xmmword_22A5761B0;
  *(inited + 40) = 0x800000022A58E350;
  v3 = [v1 availableStreamHandlerCount];
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0xD000000000000017;
  *(inited + 64) = 0x800000022A58E370;
  v4 = [v1 inUseStreamHandlerCount];
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0xD000000000000028;
  *(inited + 88) = 0x800000022A58E400;
  v5 = [v1 availableStreamHandlerCount];
  result = [v1 inUseStreamHandlerCount];
  if (__OFADD__(v5, result))
  {
    __break(1u);
  }

  else
  {
    *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v7 = sub_22956AC48(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD90, &qword_22A5779F0);
    swift_arrayDestroy();
    return v7;
  }

  return result;
}

void __swiftcall HMDCameraSettingProactiveReaderLogEvent.init()(HMDCameraSettingProactiveReaderLogEvent *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void __swiftcall HMDCameraSettingProactiveReaderLogEvent.init(startTime:)(HMDCameraSettingProactiveReaderLogEvent *__return_ptr retstr, Swift::Double startTime)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v3 initWithStartTime_];
}

uint64_t sub_2296321FC()
{

  return swift_deallocClassInstance();
}

uint64_t _s9LifeCycleOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s9LifeCycleOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2296323AC()
{
  result = qword_27D87E298;
  if (!qword_27D87E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E298);
  }

  return result;
}

uint64_t sub_229632400()
{
  type metadata accessor for HomePassState(0);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_2296324C4;

  return sub_229633120(v1);
}

uint64_t sub_2296324C4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_229656528;
  }

  else
  {
    v2 = sub_2296325D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296325D8()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v1 = static PassUpdater.shared;
  *(v0 + 88) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229632674, v1, 0);
}

uint64_t sub_229632674()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = swift_task_alloc();
  v0[12] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v4 = v0;
  v4[1] = sub_22963277C;

  return v7(v0 + 2, &unk_22A57BA60, v3, v5);
}

uint64_t sub_22963277C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_229632A60;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_2296328A0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296328A0()
{

  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_22963294C;
  v2 = *(v0 + 64);

  return sub_229633730(v2);
}

uint64_t sub_22963294C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_229656538;
  }

  else
  {
    v4 = sub_229632AC8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229632A60()
{

  return MEMORY[0x2822009F8](sub_229656534, 0, 0);
}

uint64_t sub_229632AC8()
{
  if (v0[16])
  {
    if (qword_281402F18 != -1)
    {
      swift_once();
    }

    v1 = static PassLibrary.shared;
    v0[18] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_229632C04, v1, 0);
  }

  else
  {
    v2 = v0[8];
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD000000000000023;
    v3[1] = 0x800000022A58E4B0;
    swift_willThrow();
    sub_229656184(v2);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_229632C04()
{
  v1 = v0[16];
  v2 = swift_task_alloc();
  v0[19] = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_229632CF0;

  return v5();
}

uint64_t sub_229632CF0()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_229632FBC;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_229632E14;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229632E14()
{
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_229632EA8;
  v2 = *(v0 + 64);

  return sub_229633730(v2);
}

uint64_t sub_229632EA8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_229656514;
  }

  else
  {
    v4 = sub_229633024;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229632FBC()
{

  return MEMORY[0x2822009F8](sub_229656510, 0, 0);
}

uint64_t sub_229633024()
{
  v1 = v0[23];
  v2 = v0[16];
  v3 = v0[8];
  if (v1)
  {
    sub_2296561E0();
    swift_allocError();
    *v4 = 0xD000000000000020;
    v4[1] = 0x800000022A58EBE0;
    swift_willThrow();
  }

  else
  {
  }

  sub_229656184(v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_229633120(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_22A4DB7DC();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = type metadata accessor for HomePassData(0);
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229633234, 0, 0);
}

uint64_t sub_229633234(uint64_t a1)
{
  sub_22A4DB7CC();
  sub_22A4DB7CC();
  sub_22A4DB7CC();
  sub_229647574((v1 + 16));
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  v4 = *(v1 + 104);
  sub_22A4DB7CC();
  v5 = sub_22A4DB76C();
  v7 = v6;
  (*(v3 + 8))(v2, v4);
  v8 = sub_2295ACB54(4, v5, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x22AAD0860](v8, v10, v12, v14);
  v17 = v16;

  v18 = productClass();
  v19 = [objc_opt_self() createGroupResolvingKey];
  if (v19)
  {
    v20 = v19;
    v21 = sub_22A4DB62C();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xF000000000000000;
  }

  *(v1 + 80) = v21;
  *(v1 + 88) = v23;
  v47 = MEMORY[0x277CC9318];
  sub_22A4DBD4C();
  sub_229590D18(*(v1 + 80), *(v1 + 88));
  v51 = *(v1 + 72);
  v52 = *(v1 + 64);
  v25 = [objc_opt_self() systemStore];
  v50 = [v25 getPreferredHH2ControllerKey];

  v26 = [objc_opt_self() createNIST256KeyPair];
  v54 = v15;
  v55 = v17;
  v53 = v18;
  if (v26)
  {
    v27 = v26;
    v28 = sub_22A4DB62C();
    v48 = v29;
    v49 = v28;
  }

  else
  {
    v48 = 0xF000000000000000;
    v49 = 0;
  }

  v30 = *(v1 + 152);
  v31 = *(v1 + 160);
  v32 = *(v1 + 136);
  v33 = *(v1 + 128);
  v35 = *(v1 + 104);
  v34 = *(v1 + 112);
  v36 = *(v1 + 96);
  *v31 = 1;
  v37 = *(v34 + 32);
  v37(&v31[v30[5]]);
  (v37)(&v31[v30[6]], v32, v35);
  (v37)(&v31[v30[7]], v33, v35);
  v38 = &v31[v30[8]];
  v39 = *(v1 + 16);
  v40 = *(v1 + 48);
  v38[1] = *(v1 + 32);
  v38[2] = v40;
  *v38 = v39;
  v41 = &v31[v30[9]];
  *v41 = v54;
  v41[1] = v55;
  *&v31[v30[10]] = v53;
  v31[v30[11]] = 1;
  v31[v30[12]] = 0;
  *&v31[v30[13]] = 0;
  *&v31[v30[14]] = xmmword_22A57B6B0;
  v42 = &v31[v30[15]];
  *v42 = v52;
  v42[1] = v51;
  *&v31[v30[16]] = MEMORY[0x277D84F90];
  v31[v30[17]] = 1;
  v31[v30[18]] = 1;
  v31[v30[19]] = 1;
  *&v31[v30[20]] = v50;
  v43 = &v31[v30[21]];
  *v43 = v49;
  v43[1] = v48;
  v44 = &v31[v30[22]];
  *v44 = 0;
  v44[1] = 0;
  v31[v30[23]] = 1;
  *v36 = MEMORY[0x277D84FA0];
  *(v36 + 8) = 512;
  *(v36 + 10) = 16843009;
  *(v36 + 16) = 6;
  *(v36 + 24) = 0;
  v45 = type metadata accessor for HomePassState(0);
  sub_229656450(v31, v36 + *(v45 + 48));

  v46 = *(v1 + 8);

  return v46();
}

uint64_t sub_229633750()
{
  v1 = objc_opt_self();
  type metadata accessor for HomePassState(0);
  type metadata accessor for HomePassData(0);
  v2 = sub_22A4DB77C();
  v3 = sub_22A4DB77C();
  v4 = [v1 passSerialNumberWithHomeUUID:v2 userUUID:v3];

  v5 = sub_22A4DD5EC();
  v7 = v6;

  v0[4] = v5;
  v0[5] = v7;
  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  v8 = static PassLibrary.shared;
  v0[6] = static PassLibrary.shared;
  if (qword_281402FC0 != -1)
  {
    v10 = v8;
    swift_once();
    v8 = v10;
  }

  v9 = unk_281405100;
  v0[7] = qword_2814050F8;
  v0[8] = v9;

  return MEMORY[0x2822009F8](sub_2296338D8, v8, 0);
}

uint64_t sub_2296338D8()
{
  v7 = *(v0 + 56);
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E2C0, &qword_22A585A30);
  *v4 = v0;
  v4[1] = sub_2296339F0;

  return v8(v0 + 16, &unk_22A57B7C0, v3, v5);
}

uint64_t sub_2296339F0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_229633B44;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_229633B28;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229633B44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229633BB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229569B30;

  return sub_229632400();
}

uint64_t sub_229633C40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_2296348D4();
}

uint64_t sub_229633CCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22963581C();
}

uint64_t sub_229633D58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_229636618();
}

uint64_t sub_229633DE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_229637500();
}

uint64_t sub_229633E70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_229638270();
}

uint64_t sub_229633EFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_2296390A8();
}

uint64_t sub_229633F88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_229639D38();
}

uint64_t sub_229634014()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22963A94C();
}

uint64_t sub_2296340A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22963B550();
}

uint64_t sub_22963412C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22963C220();
}

uint64_t sub_2296341B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22963CF9C();
}

uint64_t sub_229634244()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22963ED38();
}

uint64_t sub_2296342D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_2296417E8();
}

uint64_t sub_22963435C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_229642754();
}

uint64_t sub_2296343E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_2296430D0();
}

uint64_t sub_229634474()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_2296438A4();
}

uint64_t sub_229634500()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_229644788();
}

uint64_t sub_22963458C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22964550C();
}

uint64_t sub_229634618()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_2296479B0();
}

uint64_t sub_2296346A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_2296494D0();
}

uint64_t sub_229634730()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22964AF94();
}

uint64_t sub_2296347BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22964F018();
}

uint64_t sub_229634848()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_229654A30();
}

uint64_t sub_2296348D4()
{
  v0[14] = type metadata accessor for HomePassState(0);
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_22963499C;

  return sub_229633120(v1);
}

uint64_t sub_22963499C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_2296356D4;
  }

  else
  {
    v2 = sub_229634AB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229634AB0()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v1 = static PassUpdater.shared;
  *(v0 + 144) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229634B4C, v1, 0);
}

uint64_t sub_229634B4C()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[19] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[20] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[21] = v5;
  *v4 = v0;
  v4[1] = sub_229634C58;

  return v7(v0 + 2, &unk_22A57BA48, v3, v5);
}

uint64_t sub_229634C58()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_229634F3C;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_229634D7C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229634D7C()
{

  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_229634E28;
  v2 = *(v0 + 120);

  return sub_229633730(v2);
}

uint64_t sub_229634E28(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_229635738;
  }

  else
  {
    v4 = sub_229635010;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229634F3C()
{

  return MEMORY[0x2822009F8](sub_229634FA4, 0, 0);
}

uint64_t sub_229634FA4()
{
  sub_229656184(*(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229635010()
{
  if (v0[24])
  {
    v1 = v0[18];
    *(v0[15] + *(v0[14] + 48)) = 0;

    return MEMORY[0x2822009F8](sub_22963511C, v1, 0);
  }

  else
  {
    v2 = v0[15];
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD000000000000023;
    v3[1] = 0x800000022A58E4B0;
    swift_willThrow();
    sub_229656184(v2);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_22963511C()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[26] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_229635210;
  v5 = v0[21];

  return v7(v0 + 8, &unk_22A57BA50, v3, v5);
}

uint64_t sub_229635210()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_2296354F8;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_229635338;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229635338()
{

  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_2296353E4;
  v2 = *(v0 + 120);

  return sub_229633730(v2);
}

uint64_t sub_2296353E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v4 = sub_2296357A4;
  }

  else
  {
    v4 = sub_2296355D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2296354F8()
{

  return MEMORY[0x2822009F8](sub_229635560, 0, 0);
}

uint64_t sub_229635560()
{
  v1 = *(v0 + 120);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2296355D8()
{
  v1 = v0[30];
  v2 = v0[24];
  v3 = v0[15];
  if (v1)
  {
    sub_2296561E0();
    swift_allocError();
    *v4 = 0xD000000000000014;
    v4[1] = 0x800000022A58E730;
    swift_willThrow();
  }

  else
  {
  }

  sub_229656184(v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2296356D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229635738()
{
  sub_229656184(*(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296357A4()
{
  v1 = *(v0 + 120);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22963581C()
{
  type metadata accessor for HomePassState(0);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_2296358E0;

  return sub_229633120(v1);
}

uint64_t sub_2296358E0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_229656528;
  }

  else
  {
    v2 = sub_2296359F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296359F4()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v1 = static PassUpdater.shared;
  *(v0 + 88) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229635A90, v1, 0);
}

uint64_t sub_229635A90()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = swift_task_alloc();
  v0[12] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v4 = v0;
  v4[1] = sub_229635B98;

  return v7(v0 + 2, &unk_22A57BA38, v3, v5);
}

uint64_t sub_229635B98()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_229632A60;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_229635CBC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229635CBC()
{

  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_229635D68;
  v2 = *(v0 + 64);

  return sub_229633730(v2);
}

uint64_t sub_229635D68(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_229636534;
  }

  else
  {
    v4 = sub_229635E7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229635E7C()
{
  if (v0[16])
  {
    v1 = v0[11];
    v0[18] = sub_22A4DBCDC();

    return MEMORY[0x2822009F8](sub_229635F88, v1, 0);
  }

  else
  {
    v2 = v0[8];
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD000000000000023;
    v3[1] = 0x800000022A58E4B0;
    swift_willThrow();
    sub_229656184(v2);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_229635F88()
{
  v1 = v0[18];
  v2 = v0[11];
  v3 = swift_task_alloc();
  v0[19] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v6 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_229636078;

  return v6();
}

uint64_t sub_229636078()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_229636350;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_2296361A0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296361A0()
{
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_22963623C;
  v2 = *(v0 + 64);

  return sub_229633730(v2);
}

uint64_t sub_22963623C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_2296365A0;
  }

  else
  {
    v4 = sub_229636438;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229636350()
{

  return MEMORY[0x2822009F8](sub_2296363C0, 0, 0);
}

uint64_t sub_2296363C0()
{
  v1 = *(v0 + 64);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229636438()
{
  v1 = v0[23];
  v2 = v0[16];
  v3 = v0[8];
  if (v1)
  {
    sub_2296561E0();
    swift_allocError();
    *v4 = 0xD000000000000014;
    v4[1] = 0x800000022A58E730;
    swift_willThrow();
  }

  else
  {
  }

  sub_229656184(v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_229636534()
{
  sub_229656184(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296365A0()
{
  v1 = *(v0 + 64);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229636618()
{
  v0[14] = type metadata accessor for HomePassState(0);
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_2296366E0;

  return sub_229633120(v1);
}

uint64_t sub_2296366E0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_22965652C;
  }

  else
  {
    v2 = sub_2296367F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296367F4()
{
  v1 = *(v0 + 120);
  v2 = *(*(v0 + 112) + 48);
  *(v0 + 60) = v2;
  v3 = v1 + v2;
  v4 = type metadata accessor for HomePassData(0);
  *(v0 + 144) = v4;
  *(v3 + *(v4 + 72)) = 2;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v5 = static PassUpdater.shared;
  *(v0 + 152) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_2296368B8, v5, 0);
}

uint64_t sub_2296368B8()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[21] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[22] = v5;
  *v4 = v0;
  v4[1] = sub_2296369C4;

  return v7(v0 + 2, &unk_22A57BA20, v3, v5);
}

uint64_t sub_2296369C4()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_229636CBC;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_229636AE8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229636AE8()
{

  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_229636B94;
  v2 = *(v0 + 120);

  return sub_229633730(v2);
}

uint64_t sub_229636B94(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = sub_229656550;
  }

  else
  {
    *(v4 + 208) = a1;
    v5 = sub_229636D90;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229636CBC()
{

  return MEMORY[0x2822009F8](sub_229636D24, 0, 0);
}

uint64_t sub_229636D24()
{
  sub_229656184(*(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229636D90()
{
  v1 = *(v0 + 208);
  if (v1 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v2 = *(v0 + 152);
    *(*(v0 + 120) + *(v0 + 60) + *(*(v0 + 144) + 68)) = 0;

    return MEMORY[0x2822009F8](sub_229636ED0, v2, 0);
  }

  else
  {
    v3 = *(v0 + 120);
    sub_2296561E0();
    swift_allocError();
    *v4 = 0xD000000000000023;
    v4[1] = 0x800000022A58E4B0;
    swift_willThrow();

    sub_229656184(v3);

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_229636ED0()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[27] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[28] = v4;
  *v4 = v0;
  v4[1] = sub_229636FC4;
  v5 = v0[22];

  return v7(v0 + 8, &unk_22A57BA28, v3, v5);
}

uint64_t sub_229636FC4()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_2296372AC;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_2296370EC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296370EC()
{

  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_229637198;
  v2 = *(v0 + 120);

  return sub_229633730(v2);
}

uint64_t sub_229637198(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v4 = sub_229637488;
  }

  else
  {
    v4 = sub_22963738C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2296372AC()
{

  return MEMORY[0x2822009F8](sub_229637314, 0, 0);
}

uint64_t sub_229637314()
{
  v1 = *(v0 + 120);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22963738C()
{
  v1 = v0[31];
  v2 = v0[26];
  v3 = v0[15];
  if (v1)
  {
    sub_2296561E0();
    swift_allocError();
    *v4 = 0xD000000000000014;
    v4[1] = 0x800000022A58E730;
    swift_willThrow();
  }

  else
  {
  }

  sub_229656184(v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_229637488()
{
  v1 = *(v0 + 120);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229637500()
{
  v0[14] = type metadata accessor for HomePassState(0);
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_2296375C8;

  return sub_229633120(v1);
}

uint64_t sub_2296375C8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_22965652C;
  }

  else
  {
    v2 = sub_2296376DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296376DC()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v1 = static PassUpdater.shared;
  *(v0 + 144) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229637778, v1, 0);
}

uint64_t sub_229637778()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[19] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[20] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[21] = v5;
  *v4 = v0;
  v4[1] = sub_229637884;

  return v7(v0 + 2, &unk_22A57BA08, v3, v5);
}

uint64_t sub_229637884()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_229637B7C;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_2296379A8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296379A8()
{

  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_229637A54;
  v2 = *(v0 + 120);

  return sub_229633730(v2);
}

uint64_t sub_229637A54(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_22965654C;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_229637BE4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229637B7C()
{

  return MEMORY[0x2822009F8](sub_22965653C, 0, 0);
}

uint64_t sub_229637BE4()
{
  v1 = v0[25];
  if (v1 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v2 = v0[18];
    v3 = v0[15] + *(v0[14] + 48);
    *(v3 + *(type metadata accessor for HomePassData(0) + 92)) = 0;

    return MEMORY[0x2822009F8](sub_229637D30, v2, 0);
  }

  else
  {
    v4 = v0[15];
    sub_2296561E0();
    swift_allocError();
    *v5 = 0xD000000000000023;
    v5[1] = 0x800000022A58E4B0;
    swift_willThrow();

    sub_229656184(v4);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_229637D30()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[26] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_229637E24;
  v5 = v0[21];

  return v7(v0 + 8, &unk_22A57BA10, v3, v5);
}

uint64_t sub_229637E24()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_22963810C;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_229637F4C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229637F4C()
{

  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_229637FF8;
  v2 = *(v0 + 120);

  return sub_229633730(v2);
}

uint64_t sub_229637FF8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v4 = sub_229656520;
  }

  else
  {
    v4 = sub_229638174;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22963810C()
{

  return MEMORY[0x2822009F8](sub_22965651C, 0, 0);
}

uint64_t sub_229638174()
{
  v1 = v0[30];
  v2 = v0[25];
  v3 = v0[15];
  if (v1)
  {
    sub_2296561E0();
    swift_allocError();
    *v4 = 0xD000000000000014;
    v4[1] = 0x800000022A58E730;
    swift_willThrow();
  }

  else
  {
  }

  sub_229656184(v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_229638270()
{
  type metadata accessor for HomePassState(0);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_229638334;

  return sub_229633120(v1);
}

uint64_t sub_229638334()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_229656528;
  }

  else
  {
    v2 = sub_229638448;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229638448()
{
  v1 = *(v0 + 64);
  *(v1 + 16) = 6;
  *(v1 + 24) = 0;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v2 = static PassUpdater.shared;
  *(v0 + 88) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_2296384F4, v2, 0);
}

uint64_t sub_2296384F4()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = swift_task_alloc();
  v0[12] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v4 = v0;
  v4[1] = sub_2296385FC;

  return v7(v0 + 2, &unk_22A57B9F0, v3, v5);
}

uint64_t sub_2296385FC()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_2296388D8;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_229638720;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229638720()
{

  *(v0 + 120) = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_2296387A0, 0, 0);
}

uint64_t sub_2296387A0()
{
  if (v0[15] == 3)
  {
    v1 = swift_task_alloc();
    v0[16] = v1;
    *v1 = v0;
    v1[1] = sub_2296389AC;
    v2 = v0[8];

    return sub_229633730(v2);
  }

  else
  {
    v4 = v0[8];
    sub_2296561E0();
    swift_allocError();
    *v5 = 0xD000000000000021;
    v5[1] = 0x800000022A58EA30;
    swift_willThrow();
    sub_229656184(v4);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2296388D8()
{

  return MEMORY[0x2822009F8](sub_229638940, 0, 0);
}

uint64_t sub_229638940()
{
  sub_229656184(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296389AC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_22963903C;
  }

  else
  {
    v4 = sub_229638AC0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229638AC0()
{
  if (v0[17])
  {
    if (qword_281402F18 != -1)
    {
      swift_once();
    }

    v1 = static PassLibrary.shared;
    v0[19] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_229638BFC, v1, 0);
  }

  else
  {
    v2 = v0[8];
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD000000000000023;
    v3[1] = 0x800000022A58E4B0;
    swift_willThrow();
    sub_229656184(v2);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_229638BFC()
{
  v1 = *(v0 + 17);
  v2 = swift_task_alloc();
  *(v0 + 20) = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 21) = v3;
  *v3 = v0;
  v3[1] = sub_229638CEC;

  return v5(v0 + 57, &unk_22A57B9F8, v2, &type metadata for ExpressSettings);
}

uint64_t sub_229638CEC()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_229638F5C;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_229638E10;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229638E10()
{
  v0[59] = v0[57];
  v0[60] = v0[58];
  return MEMORY[0x2822009F8](sub_229638E3C, 0, 0);
}

uint64_t sub_229638E3C()
{
  if (*(v0 + 59) == 1)
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 64);
    if (*(v0 + 60))
    {

      sub_229656184(v2);

      v3 = *(v0 + 8);
      goto LABEL_7;
    }

    v4 = 541218645;
  }

  else
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 64);
    v4 = 541279822;
  }

  sub_2296561E0();
  swift_allocError();
  *v5 = v4 | 0x20746F6E00000000;
  v5[1] = 0xEF64656C62616E65;
  swift_willThrow();

  sub_229656184(v2);

  v3 = *(v0 + 8);
LABEL_7:

  return v3();
}

uint64_t sub_229638F5C()
{

  return MEMORY[0x2822009F8](sub_229638FC4, 0, 0);
}

uint64_t sub_229638FC4()
{
  v1 = *(v0 + 64);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22963903C()
{
  sub_229656184(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296390A8()
{
  type metadata accessor for HomePassState(0);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_22963916C;

  return sub_229633120(v1);
}

uint64_t sub_22963916C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_229656528;
  }

  else
  {
    v2 = sub_229639280;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229639280()
{
  v1 = *(v0 + 64);
  *(v1 + 16) = 2;
  *(v1 + 24) = 0;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v2 = static PassUpdater.shared;
  *(v0 + 88) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_22963932C, v2, 0);
}

uint64_t sub_22963932C()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = swift_task_alloc();
  v0[12] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v4 = v0;
  v4[1] = sub_229639434;

  return v7(v0 + 2, &unk_22A57B9D8, v3, v5);
}

uint64_t sub_229639434()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_229632A60;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_229639558;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229639558()
{

  *(v0 + 120) = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_2296395D8, 0, 0);
}

uint64_t sub_2296395D8()
{
  if (v0[15] == 1)
  {
    v1 = swift_task_alloc();
    v0[16] = v1;
    *v1 = v0;
    v1[1] = sub_229639710;
    v2 = v0[8];

    return sub_229633730(v2);
  }

  else
  {
    v4 = v0[8];
    sub_2296561E0();
    swift_allocError();
    *v5 = 0xD00000000000001DLL;
    v5[1] = 0x800000022A58EBC0;
    swift_willThrow();
    sub_229656184(v4);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_229639710(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_229656540;
  }

  else
  {
    v4 = sub_229639824;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229639824()
{
  if (v0[17])
  {
    if (qword_281402F18 != -1)
    {
      swift_once();
    }

    v1 = static PassLibrary.shared;
    v0[19] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_229639960, v1, 0);
  }

  else
  {
    v2 = v0[8];
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD000000000000023;
    v3[1] = 0x800000022A58E4B0;
    swift_willThrow();
    sub_229656184(v2);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_229639960()
{
  v1 = *(v0 + 17);
  v2 = swift_task_alloc();
  *(v0 + 20) = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 21) = v3;
  *v3 = v0;
  v3[1] = sub_229639A50;

  return v5(v0 + 57, &unk_22A57B9E0, v2, &type metadata for ExpressSettings);
}

uint64_t sub_229639A50()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_229639CD0;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_229639B74;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229639B74()
{
  v0[59] = v0[57];
  v0[60] = v0[58];
  return MEMORY[0x2822009F8](sub_229639BA0, 0, 0);
}

uint64_t sub_229639BA0()
{
  if (*(v0 + 59) != 1)
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 64);
    v3 = 0xEF64656C62616E65;
    v4 = 0x20746F6E2043464ELL;
    goto LABEL_5;
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 64);
  if (*(v0 + 60))
  {
    v3 = 0x800000022A58EB00;
    v4 = 0xD000000000000021;
LABEL_5:
    sub_2296561E0();
    swift_allocError();
    *v5 = v4;
    v5[1] = v3;
    swift_willThrow();

    sub_229656184(v2);

    v6 = *(v0 + 8);
    goto LABEL_7;
  }

  sub_229656184(v2);

  v6 = *(v0 + 8);
LABEL_7:

  return v6();
}

uint64_t sub_229639CD0()
{

  return MEMORY[0x2822009F8](sub_229656518, 0, 0);
}

uint64_t sub_229639D38()
{
  type metadata accessor for HomePassState(0);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_229639DFC;

  return sub_229633120(v1);
}

uint64_t sub_229639DFC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_229656528;
  }

  else
  {
    v2 = sub_229639F10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229639F10()
{
  v1 = *(v0 + 64);
  *(v1 + 16) = 4;
  *(v1 + 24) = 0;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v2 = static PassUpdater.shared;
  *(v0 + 88) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229639FBC, v2, 0);
}

uint64_t sub_229639FBC()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = swift_task_alloc();
  v0[12] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v4 = v0;
  v4[1] = sub_22963A0C4;

  return v7(v0 + 2, &unk_22A57B9C0, v3, v5);
}

uint64_t sub_22963A0C4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_229632A60;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_22963A1E8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22963A1E8()
{

  *(v0 + 120) = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_22963A268, 0, 0);
}

uint64_t sub_22963A268()
{
  if (v0[15] == 2)
  {
    v1 = swift_task_alloc();
    v0[16] = v1;
    *v1 = v0;
    v1[1] = sub_22963A3A0;
    v2 = v0[8];

    return sub_229633730(v2);
  }

  else
  {
    v4 = v0[8];
    sub_2296561E0();
    swift_allocError();
    *v5 = 0xD00000000000001DLL;
    v5[1] = 0x800000022A58EBA0;
    swift_willThrow();
    sub_229656184(v4);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22963A3A0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_229656540;
  }

  else
  {
    v4 = sub_22963A4B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22963A4B4()
{
  if (v0[17])
  {
    if (qword_281402F18 != -1)
    {
      swift_once();
    }

    v1 = static PassLibrary.shared;
    v0[19] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_22963A5F0, v1, 0);
  }

  else
  {
    v2 = v0[8];
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD000000000000023;
    v3[1] = 0x800000022A58E4B0;
    swift_willThrow();
    sub_229656184(v2);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_22963A5F0()
{
  v1 = *(v0 + 17);
  v2 = swift_task_alloc();
  *(v0 + 20) = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 21) = v3;
  *v3 = v0;
  v3[1] = sub_22963A6E0;

  return v5(v0 + 57, &unk_22A57B9C8, v2, &type metadata for ExpressSettings);
}

uint64_t sub_22963A6E0()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_229639CD0;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_22963A804;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22963A804()
{
  v0[59] = v0[57];
  v0[60] = v0[58];
  return MEMORY[0x2822009F8](sub_22963A830, 0, 0);
}

uint64_t sub_22963A830()
{
  v1 = 0xD000000000000013;
  if (*(v0 + 59))
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 64);
    v4 = " was not enabled";
    v1 = 0xD000000000000021;
  }

  else
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 64);
    if (*(v0 + 60))
    {

      sub_229656184(v3);

      v5 = *(v0 + 8);
      goto LABEL_7;
    }

    v4 = "NFC was not enabled";
  }

  v6 = v4 | 0x8000000000000000;
  sub_2296561E0();
  swift_allocError();
  *v7 = v1;
  v7[1] = v6;
  swift_willThrow();

  sub_229656184(v3);

  v5 = *(v0 + 8);
LABEL_7:

  return v5();
}

uint64_t sub_22963A94C()
{
  type metadata accessor for HomePassState(0);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_22963AA10;

  return sub_229633120(v1);
}

uint64_t sub_22963AA10()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_229656528;
  }

  else
  {
    v2 = sub_22963AB24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22963AB24()
{
  v1 = *(v0 + 64);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v2 = static PassUpdater.shared;
  *(v0 + 88) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_22963ABCC, v2, 0);
}

uint64_t sub_22963ABCC()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = swift_task_alloc();
  v0[12] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v4 = v0;
  v4[1] = sub_22963ACD4;

  return v7(v0 + 2, &unk_22A57B9A8, v3, v5);
}

uint64_t sub_22963ACD4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_229632A60;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_22963ADF8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22963ADF8()
{

  *(v0 + 120) = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_22963AE78, 0, 0);
}

uint64_t sub_22963AE78()
{
  if (v0[15])
  {
    v1 = v0[8];
    sub_2296561E0();
    swift_allocError();
    *v2 = 0xD00000000000001CLL;
    v2[1] = 0x800000022A58EB80;
    swift_willThrow();
    sub_229656184(v1);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_22963AFAC;
    v6 = v0[8];

    return sub_229633730(v6);
  }
}

uint64_t sub_22963AFAC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_229656540;
  }

  else
  {
    v4 = sub_22963B0C0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22963B0C0()
{
  if (v0[17])
  {
    if (qword_281402F18 != -1)
    {
      swift_once();
    }

    v1 = static PassLibrary.shared;
    v0[19] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_22963B1FC, v1, 0);
  }

  else
  {
    v2 = v0[8];
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD000000000000023;
    v3[1] = 0x800000022A58E4B0;
    swift_willThrow();
    sub_229656184(v2);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_22963B1FC()
{
  v1 = *(v0 + 17);
  v2 = swift_task_alloc();
  *(v0 + 20) = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 21) = v3;
  *v3 = v0;
  v3[1] = sub_22963B2EC;

  return v5(v0 + 57, &unk_22A57B9B0, v2, &type metadata for ExpressSettings);
}

uint64_t sub_22963B2EC()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_229639CD0;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_22963B410;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22963B410()
{
  v0[59] = v0[57];
  v0[60] = v0[58];
  return MEMORY[0x2822009F8](sub_22963B43C, 0, 0);
}

uint64_t sub_22963B43C()
{
  if (*(v0 + 59))
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 64);
    v3 = "NFC was enabled but should not be";
LABEL_5:
    v4 = (v3 - 32) | 0x8000000000000000;
    sub_2296561E0();
    swift_allocError();
    *v5 = 0xD000000000000021;
    v5[1] = v4;
    swift_willThrow();

    sub_229656184(v2);

    v6 = *(v0 + 8);
    goto LABEL_7;
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 64);
  if (*(v0 + 60))
  {
    v3 = "UWB was enabled but should not be";
    goto LABEL_5;
  }

  sub_229656184(v2);

  v6 = *(v0 + 8);
LABEL_7:

  return v6();
}

uint64_t sub_22963B550()
{
  v0[8] = type metadata accessor for HomePassState(0);
  v1 = swift_task_alloc();
  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_22963B618;

  return sub_229633120(v1);
}

uint64_t sub_22963B618()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_229656530;
  }

  else
  {
    v2 = sub_22963B72C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22963B72C()
{
  v2 = v0[8];
  v1 = v0[9];
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v3 = v1 + *(v2 + 48);
  *(v3 + *(type metadata accessor for HomePassData(0) + 40)) = 1;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v4 = static PassUpdater.shared;
  v0[12] = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_22963B7F0, v4, 0);
}

uint64_t sub_22963B7F0()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = swift_task_alloc();
  v0[13] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[14] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v4 = v0;
  v4[1] = sub_22963B8F8;

  return v7(v0 + 2, &unk_22A57B990, v3, v5);
}

uint64_t sub_22963B8F8()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = sub_22963BBDC;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_22963BA1C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22963BA1C()
{

  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_22963BAC8;
  v2 = *(v0 + 72);

  return sub_229633730(v2);
}

uint64_t sub_22963BAC8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_22963C1B4;
  }

  else
  {
    v4 = sub_22963BC44;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22963BBDC()
{

  return MEMORY[0x2822009F8](sub_229656544, 0, 0);
}

uint64_t sub_22963BC44()
{
  if (v0[17])
  {
    if (qword_281402F18 != -1)
    {
      swift_once();
    }

    v1 = static PassLibrary.shared;
    v0[19] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_22963BD80, v1, 0);
  }

  else
  {
    v2 = v0[9];
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD000000000000023;
    v3[1] = 0x800000022A58E4B0;
    swift_willThrow();
    sub_229656184(v2);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_22963BD80()
{
  v1 = *(v0 + 17);
  v2 = swift_task_alloc();
  *(v0 + 20) = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 21) = v3;
  *v3 = v0;
  v3[1] = sub_22963BE70;

  return v5(v0 + 57, &unk_22A57B998, v2, &type metadata for ExpressSettings);
}

uint64_t sub_22963BE70()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_22963C0D4;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_22963BF94;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22963BF94()
{
  v0[59] = v0[57];
  v0[60] = v0[58];
  return MEMORY[0x2822009F8](sub_22963BFC0, 0, 0);
}

uint64_t sub_22963BFC0()
{
  if (*(v0 + 59))
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 72);
    v3 = "NFC was enabled but should not be";
LABEL_5:
    v4 = (v3 - 32) | 0x8000000000000000;
    sub_2296561E0();
    swift_allocError();
    *v5 = 0xD000000000000021;
    v5[1] = v4;
    swift_willThrow();

    sub_229656184(v2);

    v6 = *(v0 + 8);
    goto LABEL_7;
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 72);
  if (*(v0 + 60))
  {
    v3 = "UWB was enabled but should not be";
    goto LABEL_5;
  }

  sub_229656184(v2);

  v6 = *(v0 + 8);
LABEL_7:

  return v6();
}

uint64_t sub_22963C0D4()
{

  return MEMORY[0x2822009F8](sub_22963C13C, 0, 0);
}

uint64_t sub_22963C13C()
{
  v1 = *(v0 + 72);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22963C1B4()
{
  sub_229656184(*(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22963C220()
{
  v0[8] = type metadata accessor for HomePassState(0);
  v1 = swift_task_alloc();
  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_22963C2E8;

  return sub_229633120(v1);
}

uint64_t sub_22963C2E8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_229656530;
  }

  else
  {
    v2 = sub_22963C3FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22963C3FC()
{
  v2 = v0[8];
  v1 = v0[9];
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v3 = v1 + *(v2 + 48);
  *(v3 + *(type metadata accessor for HomePassData(0) + 40)) = 5;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v4 = static PassUpdater.shared;
  v0[12] = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_22963C4C4, v4, 0);
}

uint64_t sub_22963C4C4()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = swift_task_alloc();
  v0[13] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[14] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v4 = v0;
  v4[1] = sub_22963C5CC;

  return v7(v0 + 2, &unk_22A57B978, v3, v5);
}

uint64_t sub_22963C5CC()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = sub_22963BBDC;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_22963C6F0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22963C6F0()
{

  *(v0 + 128) = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_22963C770, 0, 0);
}

uint64_t sub_22963C770()
{
  if (v0[16] == 3)
  {
    v1 = swift_task_alloc();
    v0[17] = v1;
    *v1 = v0;
    v1[1] = sub_22963C8A8;
    v2 = v0[9];

    return sub_229633730(v2);
  }

  else
  {
    v4 = v0[9];
    sub_2296561E0();
    swift_allocError();
    *v5 = 0xD000000000000021;
    v5[1] = 0x800000022A58EA30;
    swift_willThrow();
    sub_229656184(v4);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22963C8A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_22963CF30;
  }

  else
  {
    v4 = sub_22963C9BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22963C9BC()
{
  if (v0[18])
  {
    if (qword_281402F18 != -1)
    {
      swift_once();
    }

    v1 = static PassLibrary.shared;
    v0[20] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_22963CAF8, v1, 0);
  }

  else
  {
    v2 = v0[9];
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD000000000000023;
    v3[1] = 0x800000022A58E4B0;
    swift_willThrow();
    sub_229656184(v2);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_22963CAF8()
{
  v1 = *(v0 + 18);
  v2 = swift_task_alloc();
  *(v0 + 21) = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 22) = v3;
  *v3 = v0;
  v3[1] = sub_22963CBE8;

  return v5(v0 + 57, &unk_22A57B980, v2, &type metadata for ExpressSettings);
}

uint64_t sub_22963CBE8()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = sub_22963CE50;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_22963CD0C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22963CD0C()
{
  v0[59] = v0[57];
  v0[60] = v0[58];
  return MEMORY[0x2822009F8](sub_22963CD38, 0, 0);
}

uint64_t sub_22963CD38()
{
  if (*(v0 + 59) == 1)
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 72);
    if (*(v0 + 60))
    {

      sub_229656184(v2);

      v3 = *(v0 + 8);
      goto LABEL_7;
    }

    v4 = "UWB was not enabled";
  }

  else
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 72);
    v4 = "NFC was not enabled";
  }

  v5 = (v4 - 32) | 0x8000000000000000;
  sub_2296561E0();
  swift_allocError();
  *v6 = 0xD000000000000013;
  v6[1] = v5;
  swift_willThrow();

  sub_229656184(v2);

  v3 = *(v0 + 8);
LABEL_7:

  return v3();
}

uint64_t sub_22963CE50()
{

  return MEMORY[0x2822009F8](sub_22963CEB8, 0, 0);
}

uint64_t sub_22963CEB8()
{
  v1 = *(v0 + 72);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22963CF30()
{
  sub_229656184(*(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22963CF9C()
{
  v0[20] = type metadata accessor for HomePassState(0);
  v1 = swift_task_alloc();
  v0[21] = v1;
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_22963D064;

  return sub_229633120(v1);
}

uint64_t sub_22963D064()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_22963EC68;
  }

  else
  {
    v2 = sub_22963D178;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22963D178()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  *(v1 + 16) = 6;
  *(v1 + 24) = 0;
  v3 = *(v2 + 48);
  *(v0 + 108) = v3;
  v4 = v1 + v3;
  v5 = type metadata accessor for HomePassData(0);
  *(v4 + *(v5 + 68)) = 1;
  v6 = *(v5 + 72);
  *(v0 + 156) = v6;
  *(v4 + v6) = 1;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v7 = static PassUpdater.shared;
  *(v0 + 192) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_22963D250, v7, 0);
}

uint64_t sub_22963D250()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = swift_task_alloc();
  v0[25] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[26] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[27] = v5;
  *v4 = v0;
  v4[1] = sub_22963D35C;

  return v7(v0 + 2, &unk_22A57B940, v3, v5);
}

uint64_t sub_22963D35C()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = sub_22963D640;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_22963D480;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22963D480()
{

  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_22963D52C;
  v2 = *(v0 + 168);

  return sub_229633730(v2);
}

uint64_t sub_22963D52C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v4 = sub_22963ECCC;
  }

  else
  {
    v4 = sub_22963D714;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22963D640()
{

  return MEMORY[0x2822009F8](sub_22963D6A8, 0, 0);
}

uint64_t sub_22963D6A8()
{
  sub_229656184(*(v0 + 168));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22963D714()
{
  if (v0[30])
  {
    if (qword_281402F18 != -1)
    {
      swift_once();
    }

    v1 = static PassLibrary.shared;
    v0[32] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_22963D850, v1, 0);
  }

  else
  {
    v2 = v0[21];
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD000000000000023;
    v3[1] = 0x800000022A58E4B0;
    swift_willThrow();
    sub_229656184(v2);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_22963D850()
{
  v1 = *(v0 + 30);
  v2 = swift_task_alloc();
  *(v0 + 33) = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 34) = v3;
  *v3 = v0;
  v3[1] = sub_22963D940;

  return v5(v0 + 57, &unk_22A57B948, v2, &type metadata for ExpressSettings);
}

uint64_t sub_22963D940()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 256);
    v4 = sub_22963DBE4;
  }

  else
  {
    v5 = *(v2 + 256);

    v4 = sub_22963DA64;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22963DA64()
{
  v0[63] = v0[57];
  v0[105] = v0[58];
  return MEMORY[0x2822009F8](sub_22963DA90, 0, 0);
}

uint64_t sub_22963DA90()
{
  if (*(v0 + 63) == 1)
  {
    if (*(v0 + 105) == 1)
    {
      v1 = *(v0 + 192);
      v2 = *(v0 + 156);
      v3 = *(v0 + 168);
      v4 = v3 + *(v0 + 108);
      *(v3 + 16) = 0;
      *(v3 + 24) = 1;
      *(v4 + v2) = 2;

      return MEMORY[0x2822009F8](sub_22963DCC4, v1, 0);
    }

    v5 = "UWB was not enabled";
  }

  else
  {
    v5 = "NFC was not enabled";
  }

  v6 = *(v0 + 168);
  v7 = *(v0 + 240);
  v8 = (v5 - 32) | 0x8000000000000000;
  sub_2296561E0();
  swift_allocError();
  *v9 = 0xD000000000000013;
  v9[1] = v8;
  swift_willThrow();

  sub_229656184(v6);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22963DBE4()
{

  return MEMORY[0x2822009F8](sub_22963DC4C, 0, 0);
}

uint64_t sub_22963DC4C()
{
  v1 = *(v0 + 168);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22963DCC4()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = swift_task_alloc();
  v0[36] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[37] = v4;
  *v4 = v0;
  v4[1] = sub_22963DDB8;
  v5 = v0[27];

  return v7(v0 + 8, &unk_22A57B950, v3, v5);
}

uint64_t sub_22963DDB8()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = sub_22963E174;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_22963DEE0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22963DEE0()
{
  v1 = *(v0 + 256);

  return MEMORY[0x2822009F8](sub_22963DF5C, v1, 0);
}

uint64_t sub_22963DF5C()
{
  v1 = *(v0 + 30);
  v2 = swift_task_alloc();
  *(v0 + 39) = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_22963E04C;

  return v5(v0 + 59, &unk_22A57B958, v2, &type metadata for ExpressSettings);
}

uint64_t sub_22963E04C()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = *(v2 + 256);
    v4 = sub_22963E3CC;
  }

  else
  {
    v5 = *(v2 + 256);

    v4 = sub_22963E254;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22963E174()
{

  return MEMORY[0x2822009F8](sub_22963E1DC, 0, 0);
}

uint64_t sub_22963E1DC()
{
  v1 = *(v0 + 168);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22963E254()
{
  v0[106] = v0[59];
  v0[107] = v0[60];
  return MEMORY[0x2822009F8](sub_22963E280, 0, 0);
}

uint64_t sub_22963E280()
{
  v1 = 0xD000000000000013;
  if (*(v0 + 106) != 1)
  {
    v2 = "pass was not in wallet";
    goto LABEL_5;
  }

  if (*(v0 + 107))
  {
    v2 = "as newly enabled";
    v1 = 0xD000000000000021;
LABEL_5:
    v3 = *(v0 + 168);
    v4 = *(v0 + 240);
    v5 = v2 | 0x8000000000000000;
    sub_2296561E0();
    swift_allocError();
    *v6 = v1;
    v6[1] = v5;
    swift_willThrow();

    sub_229656184(v3);

    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 192);
  *(*(v0 + 168) + *(v0 + 108) + *(v0 + 156)) = 1;

  return MEMORY[0x2822009F8](sub_22963E4AC, v9, 0);
}

uint64_t sub_22963E3CC()
{

  return MEMORY[0x2822009F8](sub_22963E434, 0, 0);
}

uint64_t sub_22963E434()
{
  v1 = *(v0 + 168);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22963E4AC()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = swift_task_alloc();
  v0[42] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[43] = v4;
  *v4 = v0;
  v4[1] = sub_22963E5A0;
  v5 = v0[27];

  return v7(v0 + 14, &unk_22A57B960, v3, v5);
}

uint64_t sub_22963E5A0()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = sub_22963E95C;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_22963E6C8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22963E6C8()
{
  v1 = *(v0 + 256);

  return MEMORY[0x2822009F8](sub_22963E744, v1, 0);
}

uint64_t sub_22963E744()
{
  v1 = *(v0 + 30);
  v2 = swift_task_alloc();
  *(v0 + 45) = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 46) = v3;
  *v3 = v0;
  v3[1] = sub_22963E834;

  return v5(v0 + 61, &unk_22A57B968, v2, &type metadata for ExpressSettings);
}

uint64_t sub_22963E834()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = *(v2 + 256);
    v4 = sub_22963EB88;
  }

  else
  {
    v5 = *(v2 + 256);

    v4 = sub_22963EA3C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22963E95C()
{

  return MEMORY[0x2822009F8](sub_22963E9C4, 0, 0);
}

uint64_t sub_22963E9C4()
{
  v1 = *(v0 + 168);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22963EA3C()
{
  v0[153] = v0[61];
  v0[154] = v0[62];
  return MEMORY[0x2822009F8](sub_22963EA68, 0, 0);
}

uint64_t sub_22963EA68()
{
  v1 = 0xD000000000000013;
  if (*(v0 + 153) != 1)
  {
    v2 = *(v0 + 240);
    v4 = "pass was not in wallet";
    v3 = *(v0 + 168);
    goto LABEL_5;
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 168);
  if (*(v0 + 154))
  {
    v4 = "as newly enabled";
    v1 = 0xD000000000000021;
LABEL_5:
    v5 = v4 | 0x8000000000000000;
    sub_2296561E0();
    swift_allocError();
    *v6 = v1;
    v6[1] = v5;
    swift_willThrow();

    sub_229656184(v3);

    v7 = *(v0 + 8);
    goto LABEL_7;
  }

  sub_229656184(v3);

  v7 = *(v0 + 8);
LABEL_7:

  return v7();
}

uint64_t sub_22963EB88()
{

  return MEMORY[0x2822009F8](sub_22963EBF0, 0, 0);
}

uint64_t sub_22963EBF0()
{
  v1 = *(v0 + 168);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22963EC68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22963ECCC()
{
  sub_229656184(*(v0 + 168));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22963ED38()
{
  v0[27] = type metadata accessor for HomePassState(0);
  v1 = swift_task_alloc();
  v0[28] = v1;
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_22963EE00;

  return sub_229633120(v1);
}

uint64_t sub_22963EE00()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_229641718;
  }

  else
  {
    v2 = sub_22963EF14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22963EF14()
{
  v1 = *(v0 + 224);
  v2 = *(*(v0 + 216) + 48);
  *(v0 + 68) = v2;
  v3 = v1 + v2;
  v4 = type metadata accessor for HomePassData(0);
  *(v3 + v4[17]) = 1;
  v5 = v4[18];
  *(v0 + 116) = v5;
  *(v3 + v5) = 1;
  *(v3 + v4[10]) = 5;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v6 = static PassUpdater.shared;
  *(v0 + 248) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_22963EFEC, v6, 0);
}

uint64_t sub_22963EFEC()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = swift_task_alloc();
  v0[32] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[33] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[34] = v5;
  *v4 = v0;
  v4[1] = sub_22963F0F8;

  return v7(v0 + 2, &unk_22A57B8F8, v3, v5);
}

uint64_t sub_22963F0F8()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 248);
    v4 = sub_22963F408;
  }

  else
  {
    v5 = *(v2 + 248);

    v4 = sub_22963F21C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22963F21C()
{

  *(v0 + 288) = *(v0 + 48);
  *(v0 + 65) = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_22963F2A4, 0, 0);
}

uint64_t sub_22963F2A4()
{
  v1 = 0xD000000000000021;
  if (*(v0 + 288) == 3)
  {
    if (*(v0 + 65) == 1)
    {
      v2 = swift_task_alloc();
      *(v0 + 296) = v2;
      *v2 = v0;
      v2[1] = sub_22963F4DC;
      v3 = *(v0 + 224);

      return sub_229633730(v3);
    }

    v5 = "n't newly enabled";
    v1 = 0xD000000000000023;
  }

  else
  {
    v5 = "addedPaymentApps";
  }

  v6 = *(v0 + 224);
  v7 = v5 | 0x8000000000000000;
  sub_2296561E0();
  swift_allocError();
  *v8 = v1;
  v8[1] = v7;
  swift_willThrow();
  sub_229656184(v6);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22963F408()
{

  return MEMORY[0x2822009F8](sub_22963F470, 0, 0);
}

uint64_t sub_22963F470()
{
  sub_229656184(*(v0 + 224));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22963F4DC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v1;

  if (v1)
  {
    v4 = sub_22964177C;
  }

  else
  {
    v4 = sub_22963F5F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22963F5F0()
{
  v1 = v0[38];
  if (v1)
  {
    v2 = qword_281402F18;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = static PassLibrary.shared;
    v0[40] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_22963F730, v4, 0);
  }

  else
  {
    v5 = v0[28];
    sub_2296561E0();
    swift_allocError();
    *v6 = 0xD000000000000023;
    v6[1] = 0x800000022A58E4B0;
    swift_willThrow();
    sub_229656184(v5);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22963F730()
{
  v1 = *(v0 + 38);
  v2 = swift_task_alloc();
  *(v0 + 41) = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 42) = v3;
  *v3 = v0;
  v3[1] = sub_22963F820;

  return v5(v0 + 57, &unk_22A57B900, v2, &type metadata for ExpressSettings);
}

uint64_t sub_22963F820()
{
  v2 = *v1;
  *(v2 + 344) = v0;

  v3 = *(v2 + 320);
  if (v0)
  {

    v4 = sub_22963FB08;
  }

  else
  {

    v4 = sub_22963F984;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22963F984()
{
  v0[66] = v0[57];
  v0[67] = v0[58];
  return MEMORY[0x2822009F8](sub_22963F9B0, 0, 0);
}

uint64_t sub_22963F9B0()
{
  if (*(v0 + 66) == 1)
  {
    if (*(v0 + 67) == 1)
    {
      v1 = *(v0 + 248);
      v2 = *(v0 + 116);
      v3 = *(v0 + 224);
      v4 = v3 + *(v0 + 68);
      *(v3 + 16) = 0;
      *(v3 + 24) = 1;
      *(v4 + v2) = 2;

      return MEMORY[0x2822009F8](sub_22963FB9C, v1, 0);
    }

    v5 = "UWB was not enabled";
  }

  else
  {
    v5 = "NFC was not enabled";
  }

  v6 = (v5 - 32) | 0x8000000000000000;
  v7 = *(v0 + 304);
  v8 = *(v0 + 224);

  sub_2296561E0();
  swift_allocError();
  *v9 = 0xD000000000000013;
  v9[1] = v6;
  swift_willThrow();

  sub_229656184(v8);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22963FB24()
{
  v1 = *(v0 + 224);

  sub_229656184(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22963FB9C()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = swift_task_alloc();
  v0[44] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[45] = v4;
  *v4 = v0;
  v4[1] = sub_22963FC90;
  v5 = v0[34];

  return v7(v0 + 9, &unk_22A57B908, v3, v5);
}