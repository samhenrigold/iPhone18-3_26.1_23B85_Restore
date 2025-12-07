uint64_t sub_265B699FC(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C98, &qword_265B798B8);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  if (a2)
  {
    v20[0] = a1;
    v21 = 1;
    v16 = a1;
    a5(v20);
    return sub_265B63408(v20);
  }

  else
  {
    a3(v13);
    v18 = sub_265B76BD0();
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;

    v18(sub_265B6A1C4, v19);

    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_265B69B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v33[3] = a8;
  v33[4] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a3, a8);
  v32[3] = a7;
  v32[4] = a10;
  v20 = __swift_allocate_boxed_opaque_existential_1(v32);
  (*(*(a7 - 8) + 32))(v20, a4, a7);
  v31[3] = a9;
  v31[4] = a12;
  v21 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(a9 - 8) + 32))(v21, a5, a9);
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0;
  *(a6 + 104) = 2;
  sub_265B76C30();
  swift_allocObject();
  *(a6 + 112) = sub_265B76C20();
  *(a6 + 32) = a1;
  *(a6 + 40) = a2;
  sub_265B41D44(v33, a6 + 120);
  sub_265B41D44(v32, a6 + 160);
  sub_265B41D44(v31, a6 + 200);
  v22 = *(a10 + 8);

  v23 = v22(a1, a2, a7, a10);
  v25 = v24;

  *(a6 + 48) = v23;
  *(a6 + 56) = v25;
  ObjectType = swift_getObjectType();
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = *(v25 + 16);

  v28(sub_265B6A74C, v27, ObjectType, v25);
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v33);

  __swift_destroy_boxed_opaque_existential_1(v32);
  return a6;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t get_enum_tag_for_layout_string_21SeymourClientServices18SystemAppInstallerC5StateO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_265B6A050(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265B6A08C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_265B6A0D8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_265B6A148(uint64_t a1, double a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t sub_265B6A1C4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_265B6A254()
{
  result = qword_280035CA0;
  if (!qword_280035CA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280035CA0);
  }

  return result;
}

id sub_265B6A2A8(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_265B6A2B4(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_265B6A2F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = (v6 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_265B69518(a1, a2, v6 + v14, *v15, v15[1], a3, a4, a5, a6);
}

uint64_t objectdestroy_8Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 16, v5 | 7);
}

uint64_t sub_265B6A46C(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035C80, &unk_265B797A0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_265B695D8(a1, a2, v2 + v6, v8, v9);
}

unint64_t sub_265B6A560()
{
  result = qword_280035CA8;
  if (!qword_280035CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035CA8);
  }

  return result;
}

uint64_t objectdestroy_27Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_265B6A600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C90, &qword_265B795C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_30Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
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

uint64_t ASDApp.bundleIdentifier.getter()
{
  v1 = [v0 bundleID];
  v2 = sub_265B77030();

  return v2;
}

uint64_t ASDApp.installIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 installID];
  if (v3)
  {
    v4 = v3;
    sub_265B76370();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_265B76390();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id ASDApp.installProgress.getter()
{
  v1 = [v0 progress];

  return v1;
}

uint64_t sub_265B6A8D8()
{
  v1 = [*v0 localizedName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_265B77030();

  return v3;
}

uint64_t sub_265B6A940()
{
  v1 = [*v0 bundleID];
  v2 = sub_265B77030();

  return v2;
}

uint64_t sub_265B6A9BC@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 installID];
  if (v3)
  {
    v4 = v3;
    sub_265B76370();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_265B76390();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id sub_265B6AA60()
{
  v1 = [*v0 installError];

  return v1;
}

id sub_265B6AA98()
{
  v1 = [*v0 progress];

  return v1;
}

uint64_t static ASDInstallApps.requestInstall(for:)(uint64_t *a1)
{
  v2 = v1;
  v3 = sub_265B76F60();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B76E50();
  sub_265B76F40();
  (*(v4 + 8))(v6, v3);
  v7 = objc_allocWithZone(MEMORY[0x277CEC4B0]);
  v8 = sub_265B77000();
  v9 = [v7 initWithBundleID_];

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v2;
  return sub_265B76BB0();
}

uint64_t sub_265B6ACE4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v6 = sub_265B76F70();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_265B76FA0();
  v9 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265B76F80();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_265B6A254();
  (*(v13 + 104))(v15, *MEMORY[0x277D851B8], v12);

  v17 = sub_265B772B0();
  (*(v13 + 8))(v15, v12);
  v18 = swift_allocObject();
  v20 = v25;
  v19 = v26;
  v18[2] = v25;
  v18[3] = v19;
  v18[4] = sub_265B6B9F4;
  v18[5] = v16;
  aBlock[4] = sub_265B6BA34;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265B639B8;
  aBlock[3] = &block_descriptor_2;
  v21 = _Block_copy(aBlock);
  v22 = v20;
  sub_265B76F90();
  v29 = MEMORY[0x277D84F90];
  sub_265B63328();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035BD8, &qword_265B795B0);
  sub_265B63380();
  sub_265B77370();
  MEMORY[0x26676B680](0, v11, v8, v21);
  _Block_release(v21);

  (*(v28 + 8))(v8, v6);
  (*(v9 + 8))(v11, v27);
}

void sub_265B6B074(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_265B76F60();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B76E50();
  v12 = a1;
  v13 = sub_265B76F50();
  v14 = sub_265B77280();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v34 = v8;
    v16 = v15;
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v16 = 141558274;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2080;
    v17 = v12;
    v36 = a4;
    v18 = v17;
    v19 = a3;
    v20 = v12;
    v21 = [v17 description];
    v22 = sub_265B77030();
    v35 = a2;
    v23 = v22;
    v32 = v14;
    v25 = v24;

    a4 = v36;
    v12 = v20;
    a3 = v19;
    v26 = sub_265B402B4(v23, v25, aBlock);

    *(v16 + 14) = v26;
    _os_log_impl(&dword_265B3E000, v13, v32, "Requesting to install %{mask.hash}s", v16, 0x16u);
    v27 = v33;
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x26676C0C0](v27, -1, -1);
    MEMORY[0x26676C0C0](v16, -1, -1);

    (*(v9 + 8))(v11, v34);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = swift_allocObject();
  *(v29 + 16) = a3;
  *(v29 + 24) = a4;
  aBlock[4] = sub_265B6BA40;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265B6B7F8;
  aBlock[3] = &block_descriptor_12_0;
  v30 = _Block_copy(aBlock);

  [ObjCClassFromMetadata installApp:v12 withCompletionHandler:v30];
  _Block_release(v30);
}

uint64_t sub_265B6B374(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v7 = sub_265B76F70();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_265B76FA0();
  v11 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_265B76390();
  v15 = (*(*(v14 - 8) + 48))(a1, 1, v14);
  sub_265B6A254();
  v16 = sub_265B77290();
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  if (v15 == 1)
  {
    v18 = v22;
    v17[4] = v22;
    v28 = sub_265B6BAB0;
    v29 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v25 = 1107296256;
    v26 = sub_265B639B8;
    v27 = &block_descriptor_18;
    v19 = _Block_copy(&aBlock);

    v20 = v18;
  }

  else
  {
    v28 = sub_265B6BABC;
    v29 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v25 = 1107296256;
    v26 = sub_265B639B8;
    v27 = &block_descriptor_24;
    v19 = _Block_copy(&aBlock);
  }

  sub_265B76F90();
  aBlock = MEMORY[0x277D84F90];
  sub_265B63328();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035BD8, &qword_265B795B0);
  sub_265B63380();
  sub_265B77370();
  MEMORY[0x26676B680](0, v13, v10, v19);
  _Block_release(v19);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v23);
}

void sub_265B6B6EC(void (*a1)(void *, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035950, &unk_265B78860);
  sub_265B77630();
  a1(v2, v3);
  sub_265B6A2B4(v2, v3);
}

void sub_265B6B768(void (*a1)(id, uint64_t), int a2, id a3)
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    sub_265B63470();
    v5 = swift_allocError();
    *v6 = 5;
  }

  v7 = a3;
  a1(v5, 1);
}

uint64_t sub_265B6B7F8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035CB0, &unk_265B79970);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_265B76370();
    v10 = sub_265B76390();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_265B76390();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_265B6BA48(v8);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_265B6B94C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_265B6B994(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_265B6B9F4(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_265B6BA48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035CB0, &unk_265B79970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppInstallerProvider.makeSystemAppInstaller(for:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B76DA0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265B76D90();
  type metadata accessor for SystemAppInstaller();
  v8 = swift_allocObject();
  v20[3] = &type metadata for AppInstallRequestProvider;
  v20[4] = &protocol witness table for AppInstallRequestProvider;
  v19[3] = &type metadata for AppRecordObserverProvider;
  v19[4] = &protocol witness table for AppRecordObserverProvider;
  v18[3] = v4;
  v18[4] = MEMORY[0x277D4F358];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(v5 + 16))(boxed_opaque_existential_1, v7, v4);
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0;
  *(v8 + 104) = 2;
  sub_265B76C30();
  swift_allocObject();
  *(v8 + 112) = sub_265B76C20();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  sub_265B41D44(v20, v8 + 120);
  sub_265B41D44(v19, v8 + 160);
  sub_265B41D44(v18, v8 + 200);
  v10 = objc_allocWithZone(type metadata accessor for AppRecordObserver());
  swift_bridgeObjectRetain_n();
  v11 = sub_265B619D4(a1, a2);
  *(v8 + 48) = v11;
  *(v8 + 56) = &off_2877702F8;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = &v11[OBJC_IVAR____TtC21SeymourClientServices17AppRecordObserver_onRecordUpdated];
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  *v13 = sub_265B6A74C;
  v13[1] = v12;

  sub_265B63998(v14, v15);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v20);

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v8;
}

char *AppRecordObserverProvider.makeAppRecordObserver(for:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for AppRecordObserver());

  return sub_265B619D4(a1, a2);
}

char *sub_265B6BE08(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for AppRecordObserver());

  return sub_265B619D4(a1, a2);
}

void sub_265B6BE88(void *a1)
{
  sub_265B5F724(0x697274656D6F6962, 0xEF65746174537363);
  v118 = sub_265B5F658(1684632420, 0xE400000000000000);
  v119 = a1;
  v2 = sub_265B5F56C(0xD000000000000028, 0x8000000265B79E50);
  if (!v2)
  {
    v2 = sub_265B66348(MEMORY[0x277D84F90]);
  }

  v3 = v2;
  v124 = sub_265B6624C(MEMORY[0x277D84F90]);
  v4 = (v3 + 64);
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v123 = (v3 + 64);
  v125 = v3;
  while (v7)
  {
    v11 = v9;
LABEL_13:
    v12 = __clz(__rbit64(v7)) | (v11 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);
    swift_bridgeObjectRetain_n();
    v17 = v16;
    v129 = [v17 BOOLValue];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v133 = v124;
    v19 = sub_265B65E98(v15, v14);
    v21 = v124[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_95;
    }

    v25 = v20;
    if (v124[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = v19;
        sub_265B6E060();
        v19 = v30;
      }
    }

    else
    {
      sub_265B64924(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_265B65E98(v15, v14);
      if ((v25 & 1) != (v26 & 1))
      {
LABEL_118:
        sub_265B775A0();
        __break(1u);
        return;
      }
    }

    v7 &= v7 - 1;
    if (v25)
    {
      v10 = v19;

      *(v124[7] + v10) = v129;
    }

    else
    {
      v124[(v19 >> 6) + 8] |= 1 << v19;
      v27 = (v124[6] + 16 * v19);
      *v27 = v15;
      v27[1] = v14;
      *(v124[7] + v19) = v129;

      v28 = v124[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        while (1)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          v132 = v7 & 0xFFFFFFFFFFFFFF8;
          v98 = sub_265B774C0();
          if (!v98)
          {
            goto LABEL_102;
          }

LABEL_73:
          v99 = 0;
          v128 = v7 & 0xC000000000000001;
          v121 = v98;
LABEL_74:
          v100 = v99;
          while (1)
          {
            if (v128)
            {
              v101 = MEMORY[0x26676B830](v100, v7);
            }

            else
            {
              if (v100 >= *(v132 + 16))
              {
                goto LABEL_94;
              }

              v101 = *(v7 + 8 * v100 + 32);
            }

            v102 = v101;
            v99 = v100 + 1;
            if (__OFADD__(v100, 1))
            {
              break;
            }

            v103 = [v101 properties];
            if (v103)
            {
              v104 = v103;
              type metadata accessor for HTTPCookiePropertyKey();
              v105 = v7;
              sub_265B6E1C8();
              sub_265B76FC0();

              v106 = objc_allocWithZone(sub_265B76760());
              v107 = sub_265B76FB0();

              v108 = [v106 initWithProperties_];

              v7 = v105;
              v98 = v121;
              if (v108)
              {
                MEMORY[0x26676B500]();
                if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_265B77170();
                }

                sub_265B77190();
                if (v99 != v121)
                {
                  goto LABEL_74;
                }

                goto LABEL_102;
              }
            }

            else
            {
            }

            ++v100;
            if (v99 == v98)
            {
              goto LABEL_102;
            }
          }

LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
        }
      }

      v124[2] = v29;
    }

    v9 = v11;
    v3 = v125;
    v4 = v123;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = v4[v11];
    ++v9;
    if (v7)
    {
      goto LABEL_13;
    }
  }

  v31 = v119;
  v32 = [v119 ams_privacyAcknowledgement];
  if (v32)
  {
    v33 = v32;
    sub_265B5C6B8(0, &qword_280035B30, 0x277CCABB0);
    v34 = sub_265B76FC0();

    v123 = sub_265B6644C(MEMORY[0x277D84F90]);
    v35 = (v34 + 64);
    v36 = 1 << *(v34 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v34 + 64);
    v39 = (v36 + 63) >> 6;
    v126 = v34;

    v40 = 0;
    v120 = v39;
    v122 = (v34 + 64);
    while (v38)
    {
      v41 = v40;
LABEL_33:
      v42 = __clz(__rbit64(v38)) | (v41 << 6);
      v43 = (*(v126 + 48) + 16 * v42);
      v44 = *v43;
      v45 = v43[1];
      v46 = *(*(v126 + 56) + 8 * v42);
      swift_bridgeObjectRetain_n();
      v47 = v46;
      v7 = [v47 unsignedIntegerValue];
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v130 = v44;
      v133 = v123;
      v50 = sub_265B65E98(v44, v45);
      v51 = v123[2];
      v52 = (v49 & 1) == 0;
      v53 = v51 + v52;
      if (__OFADD__(v51, v52))
      {
        goto LABEL_96;
      }

      v54 = v49;
      if (v123[3] >= v53)
      {
        if ((v48 & 1) == 0)
        {
          sub_265B6DF08(&qword_280035C40, &qword_265B79600);
        }
      }

      else
      {
        sub_265B64678(v53, v48);
        v55 = sub_265B65E98(v130, v45);
        if ((v54 & 1) != (v56 & 1))
        {
          goto LABEL_118;
        }

        v50 = v55;
      }

      v38 &= v38 - 1;
      if (v54)
      {

        *(v123[7] + 8 * v50) = v7;
      }

      else
      {
        v123[(v50 >> 6) + 8] |= 1 << v50;
        v57 = (v123[6] + 16 * v50);
        *v57 = v130;
        v57[1] = v45;
        *(v123[7] + 8 * v50) = v7;

        v58 = v123[2];
        v23 = __OFADD__(v58, 1);
        v59 = v58 + 1;
        if (v23)
        {
          goto LABEL_99;
        }

        v123[2] = v59;
      }

      v40 = v41;
      v39 = v120;
      v35 = v122;
    }

    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_91;
      }

      if (v41 >= v39)
      {
        break;
      }

      v38 = v35[v41];
      ++v40;
      if (v38)
      {
        goto LABEL_33;
      }
    }

    v31 = v119;
  }

  else
  {
    v123 = 0;
  }

  v60 = [v31 ams_pushRegistrationThrottleMap];
  if (v60)
  {
    v61 = v60;
    sub_265B5C6B8(0, &qword_280035B30, 0x277CCABB0);
    v62 = sub_265B76FC0();

    v122 = sub_265B65F10(MEMORY[0x277D84F90]);
    v63 = v62 + 64;
    v64 = 1 << *(v62 + 32);
    v65 = -1;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    v66 = v65 & *(v62 + 64);
    v67 = (v64 + 63) >> 6;
    v131 = v62;

    v68 = 0;
    v127 = v62 + 64;
    while (v66)
    {
      v70 = v68;
LABEL_55:
      v71 = __clz(__rbit64(v66)) | (v70 << 6);
      v72 = (*(v131 + 48) + 16 * v71);
      v7 = *v72;
      v73 = v72[1];
      v74 = *(*(v131 + 56) + 8 * v71);
      swift_bridgeObjectRetain_n();
      v75 = v74;
      [v75 doubleValue];
      v77 = v76;
      v78 = swift_isUniquelyReferenced_nonNull_native();
      v133 = v122;
      v79 = sub_265B65E98(v7, v73);
      v81 = v122[2];
      v82 = (v80 & 1) == 0;
      v23 = __OFADD__(v81, v82);
      v83 = v81 + v82;
      if (v23)
      {
        goto LABEL_97;
      }

      v84 = v80;
      if (v122[3] >= v83)
      {
        if ((v78 & 1) == 0)
        {
          v89 = v79;
          sub_265B6DBE8();
          v79 = v89;
        }
      }

      else
      {
        sub_265B64108(v83, v78);
        v79 = sub_265B65E98(v7, v73);
        if ((v84 & 1) != (v85 & 1))
        {
          goto LABEL_118;
        }
      }

      v66 &= v66 - 1;
      if (v84)
      {
        v69 = v79;

        *(v122[7] + 8 * v69) = v77;
      }

      else
      {
        v122[(v79 >> 6) + 8] |= 1 << v79;
        v86 = (v122[6] + 16 * v79);
        *v86 = v7;
        v86[1] = v73;
        *(v122[7] + 8 * v79) = v77;

        v87 = v122[2];
        v23 = __OFADD__(v87, 1);
        v88 = v87 + 1;
        if (v23)
        {
          goto LABEL_100;
        }

        v122[2] = v88;
      }

      v68 = v70;
      v63 = v127;
    }

    while (1)
    {
      v70 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        goto LABEL_92;
      }

      if (v70 >= v67)
      {
        break;
      }

      v66 = *(v63 + 8 * v70);
      ++v68;
      if (v66)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
    v122 = 0;
  }

  v90 = v119;
  sub_265B5F45C(0x46746E756F636361, 0xEC0000007367616CLL);
  sub_265B5F470(0xD000000000000010, 0x8000000265B79F00);
  v91 = [v119 ams_altDSID];
  if (v91)
  {
    v92 = v91;
    sub_265B77030();
  }

  v93 = [v119 ams_automaticDownloadKinds];
  v94 = MEMORY[0x277D84F90];
  if (v93)
  {
    v95 = v93;
    sub_265B77140();
  }

  v96 = [v119 ams_cookies];
  if (v96)
  {
    v97 = v96;
    sub_265B5C6B8(0, &qword_280035CB8, 0x277CCAA30);
    v7 = sub_265B77140();

    v133 = v94;
    if (v7 >> 62)
    {
      goto LABEL_101;
    }

    v132 = v7 & 0xFFFFFFFFFFFFFF8;
    v98 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v98)
    {
      goto LABEL_73;
    }

LABEL_102:

    v90 = v119;
  }

  v109 = [v90 ams_creditsString];
  if (v109)
  {
    v110 = v109;
    sub_265B77030();
  }

  sub_265B5F4A4(0xD000000000000016, 0x8000000265B79EC0);
  [v90 ams_didAgreeToTerms];
  if (v118)
  {
    v111 = [v118 stringValue];
    sub_265B77030();
  }

  v112 = [v90 ams_firstName];
  if (v112)
  {
    v113 = v112;
    sub_265B77030();
  }

  [v90 ams_freePasswordPromptSetting];
  [v90 ams_isiCloudFamily];
  [v90 ams_isInGoodStanding];
  [v90 ams_isDemoAccount];
  [v90 ams_isManagedAppleID];
  [v90 ams_isValidPayment];
  v114 = [v90 ams_lastName];
  if (v114)
  {
    v115 = v114;
    sub_265B77030();
  }

  [v90 ams_lastAuthenticationCredentialSource];
  [v90 ams_mergedPrivacyAcknowledgement];
  [v90 ams_paidPasswordPromptSetting];
  if (!v123)
  {
    sub_265B6644C(MEMORY[0x277D84F90]);
  }

  if (!v122)
  {
    sub_265B65F10(MEMORY[0x277D84F90]);
  }

  v116 = [v90 ams_storefront];
  if (v116)
  {
    v117 = v116;
    sub_265B77030();
  }

  sub_265B76A10();
}

unint64_t sub_265B6CC88()
{
  v0 = sub_265B66028(MEMORY[0x277D84F90]);
  v1 = sub_265B76A20();
  v2 = v1;
  if (v1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035B18, &qword_265B79470);
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  v72 = v2;
  v75 = v1;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x46746E756F636361, 0xEC0000007367616CLL, isUniquelyReferenced_nonNull_native);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v4 = sub_265B76A30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035B10, &qword_265B79468);
  v75 = v5;
  v72 = v4;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0xD000000000000010, 0x8000000265B79F00, v6);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v7 = sub_265B76A40();
  if (v8)
  {
    v9 = MEMORY[0x277D837D0];
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v74 = 0;
  }

  v72 = v7;
  v73 = v8;
  v75 = v9;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x44495344746C61, 0xE700000000000000, v10);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v11 = sub_265B76B00();
  v75 = v5;
  v72 = v11;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0xD000000000000016, 0x8000000265B79EE0, v12);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v13 = sub_265B76AD0();
  v75 = MEMORY[0x277D83B88];
  v72 = v13;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x697274656D6F6962, 0xEF65746174537363, v14);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v15 = sub_265B76B60();
  v16 = v15;
  if (v15)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035CD0, &unk_265B79A40);
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  v72 = v16;
  v75 = v15;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x7365696B6F6F63, 0xE700000000000000, v17);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v18 = sub_265B76B70();
  if (v19)
  {
    v20 = MEMORY[0x277D837D0];
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v74 = 0;
  }

  v72 = v18;
  v73 = v19;
  v75 = v20;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x43746E756F636361, 0xEE00737469646572, v21);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v22 = sub_265B76A50();
  if (v23)
  {
    v24 = MEMORY[0x277D837D0];
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v74 = 0;
  }

  v72 = v22;
  v73 = v23;
  v75 = v24;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0xD000000000000016, 0x8000000265B79EC0, v25);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v26 = sub_265B76AE0();
  v27 = MEMORY[0x277D839B0];
  v75 = MEMORY[0x277D839B0];
  LOBYTE(v72) = v26 & 1;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x6565726741646964, 0xEF736D7265546F54, v28);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v29 = sub_265B76A70();
  if (v30)
  {
    v31 = MEMORY[0x277D837D0];
  }

  else
  {
    v29 = 0;
    v31 = 0;
    v74 = 0;
  }

  v72 = v29;
  v73 = v30;
  v75 = v31;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 1684632420, 0xE400000000000000, v32);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v33 = sub_265B76B90();
  if (v34)
  {
    v35 = MEMORY[0x277D837D0];
  }

  else
  {
    v33 = 0;
    v35 = 0;
    v74 = 0;
  }

  v72 = v33;
  v73 = v34;
  v75 = v35;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x6D614E7473726966, 0xE900000000000065, v36);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v37 = sub_265B76B30();
  v38 = MEMORY[0x277D83E88];
  v75 = MEMORY[0x277D83E88];
  v72 = v37;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0xD00000000000001CLL, 0x8000000265B79EA0, v39);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v40 = sub_265B76AA0();
  v75 = v27;
  LOBYTE(v72) = v40 & 1;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x614664756F6C4369, 0xEC000000796C696DLL, v41);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v42 = sub_265B76AB0();
  v75 = v27;
  LOBYTE(v72) = v42 & 1;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x7453646F6F476E69, 0xEE00676E69646E61, v43);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v44 = sub_265B76A60();
  v75 = v27;
  LOBYTE(v72) = v44 & 1;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x63416F6D65447369, 0xED0000746E756F63, v45);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v46 = sub_265B76A80();
  v75 = v27;
  LOBYTE(v72) = v46 & 1;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0xD000000000000010, 0x8000000265B79E80, v47);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v48 = sub_265B76AC0();
  v75 = v27;
  LOBYTE(v72) = v48 & 1;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x79615064696C6176, 0xEC000000746E656DLL, v49);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v50 = sub_265B76B80();
  if (v51)
  {
    v52 = MEMORY[0x277D837D0];
  }

  else
  {
    v50 = 0;
    v52 = 0;
    v74 = 0;
  }

  v72 = v50;
  v73 = v51;
  v75 = v52;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x656D614E7473616CLL, 0xE800000000000000, v53);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v54 = sub_265B76B50();
  v75 = v38;
  v72 = v54;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0xD000000000000020, 0x8000000265B79E20, v55);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v56 = sub_265B76B20();
  v75 = v27;
  LOBYTE(v72) = v56 & 1;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0xD00000000000001DLL, 0x8000000265B79E00, v57);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v58 = sub_265B76B40();
  v75 = v38;
  v72 = v58;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0xD00000000000001CLL, 0x8000000265B79DE0, v59);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v60 = sub_265B76AF0();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035CC0, &qword_265B79A30);
  v72 = v60;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0xD000000000000016, 0x8000000265B79DC0, v61);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v62 = sub_265B76B10();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035CC8, &qword_265B79A38);
  v72 = v62;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0xD00000000000001BLL, 0x8000000265B79DA0, v63);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v64 = sub_265B76A90();
  if (v65)
  {
    v66 = MEMORY[0x277D837D0];
  }

  else
  {
    v64 = 0;
    v66 = 0;
    v74 = 0;
  }

  v72 = v64;
  v73 = v65;
  v75 = v66;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x6F726665726F7473, 0xEC0000004449746ELL, v67);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  return v0;
}

void *sub_265B6DBE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C48, &qword_265B79608);
  v2 = *v0;
  v3 = sub_265B774D0();
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

void *sub_265B6DD64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C58, &qword_265B79618);
  v2 = *v0;
  v3 = sub_265B774D0();
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
        sub_265B4073C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_265B5FC9C(v25, (*(v4 + 56) + v22));
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

void *sub_265B6DF08(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_265B774D0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + 8 * v19);
        v24 = (*(v6 + 48) + 16 * v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v23;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_265B6E060()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C30, &qword_265B795F0);
  v2 = *v0;
  v3 = sub_265B774D0();
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

unint64_t sub_265B6E1C8()
{
  result = qword_280035760;
  if (!qword_280035760)
  {
    type metadata accessor for HTTPCookiePropertyKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035760);
  }

  return result;
}

uint64_t AccountProviding.fetchCurrentAccount(accountType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = *MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v6 + 32))(v10 + v9, &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  *(v10 + v9 + v7) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = "SeymourClientServices/AccountProvider.swift";
  *(v11 + 24) = 43;
  *(v11 + 32) = 2;
  *(v11 + 40) = 39;
  *(v11 + 48) = &unk_265B79A58;
  *(v11 + 56) = v10;
  sub_265B401DC();
  return sub_265B76BB0();
}

uint64_t AccountProviding.fetchMatchingAccount(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v21[0] = a3;
  v21[1] = a4;
  v8 = sub_265B766B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  (*(v13 + 16))(v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a2);
  (*(v9 + 16))(v12, a1, v8);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = (v14 + *(v9 + 80) + v15) & ~*(v9 + 80);
  v17 = swift_allocObject();
  v18 = v21[0];
  *(v17 + 16) = a2;
  *(v17 + 24) = v18;
  (*(v13 + 32))(v17 + v15, v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  (*(v9 + 32))(v17 + v16, v12, v8);
  v19 = swift_allocObject();
  *(v19 + 16) = "SeymourClientServices/AccountProvider.swift";
  *(v19 + 24) = 43;
  *(v19 + 32) = 2;
  *(v19 + 40) = 43;
  *(v19 + 48) = &unk_265B79A68;
  *(v19 + 56) = v17;
  sub_265B401DC();
  return sub_265B76BB0();
}

uint64_t AccountProviding.fetchPrimaryAccount()(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v5 + 32))(v8 + v7, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v9 = swift_allocObject();
  *(v9 + 16) = "SeymourClientServices/AccountProvider.swift";
  *(v9 + 24) = 43;
  *(v9 + 32) = 2;
  *(v9 + 40) = 47;
  *(v9 + 48) = &unk_265B79A78;
  *(v9 + 56) = v8;
  sub_265B401DC();
  return sub_265B76BB0();
}

uint64_t sub_265B6E7BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265B761CC;

  return AccountProviding.fetchCurrentAccountFirstName()(a1, a2);
}

uint64_t sub_265B6E860()
{
  *(v1 + 96) = v0;
  v2 = sub_265B76F60();
  *(v1 + 104) = v2;
  *(v1 + 112) = *(v2 - 8);
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 184) = 1;
  v3 = swift_task_alloc();
  *(v1 + 136) = v3;
  *v3 = v1;
  v3[1] = sub_265B6E968;

  return AccountProvider.fetchCurrentAccount(accountType:)((v1 + 184));
}

uint64_t sub_265B6E968(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_265B6EC08;
  }

  else
  {
    v4 = sub_265B6EA7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

id sub_265B6EA7C()
{
  v1 = [*(v0 + 144) aa_firstName];
  if (v1)
  {
    v2 = v1;
    sub_265B77030();
  }

  v3 = sub_265B772F0();

  if (v3)
  {

    *(v0 + 185) = 0;
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *v4 = v0;
    v4[1] = sub_265B6EE1C;

    return AccountProvider.fetchCurrentAccount(accountType:)((v0 + 185));
  }

  else
  {
    result = [*(v0 + 144) aa_firstName];
    if (result)
    {
      v6 = result;
      v7 = *(v0 + 144);
      v8 = sub_265B77030();
      v10 = v9;

      v11 = *(v0 + 8);

      return v11(v8, v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_265B6EC08(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 152);
  sub_265B76E50();
  v3 = v2;
  v4 = sub_265B76F50();
  v5 = sub_265B77270();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 152);
    v19 = *(v1 + 128);
    v8 = *(v1 + 104);
    v7 = *(v1 + 112);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x26676B990](*(v1 + 48), *(v1 + 56));
    v13 = sub_265B402B4(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_265B3E000, v4, v5, "Failed fetching Apple Account while fetching first name: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x26676C0C0](v10, -1, -1);
    MEMORY[0x26676C0C0](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v14 = *(v1 + 128);
    v15 = *(v1 + 104);
    v16 = *(v1 + 112);

    (*(v16 + 8))(v14, v15);
  }

  *(v1 + 185) = 0;
  v17 = swift_task_alloc();
  *(v1 + 160) = v17;
  *v17 = v1;
  v17[1] = sub_265B6EE1C;

  return AccountProvider.fetchCurrentAccount(accountType:)((v1 + 185));
}

uint64_t sub_265B6EE1C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_265B6F0A4;
  }

  else
  {
    v4 = sub_265B6EF30;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_265B6EF30()
{
  v1 = [*(v0 + 168) ams_firstName];
  if (!v1)
  {

    goto LABEL_5;
  }

  v2 = *(v0 + 168);
  v3 = v1;
  v4 = sub_265B77030();
  v6 = v5;

  *(v0 + 64) = v4;
  *(v0 + 72) = v6;
  sub_265B43C20();
  LOBYTE(v3) = sub_265B77350();

  if (v3)
  {

LABEL_5:
    sub_265B4ACC0();
    swift_allocError();
    *v7 = 4;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }

  v10 = *(v0 + 8);

  return v10(v4, v6);
}

uint64_t sub_265B6F0A4(uint64_t a1)
{
  v22 = v1;
  v2 = *(v1 + 176);
  sub_265B76E50();
  v3 = v2;
  v4 = sub_265B76F50();
  v5 = sub_265B77270();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 176);
    v7 = *(v1 + 112);
    v20 = *(v1 + 120);
    v8 = *(v1 + 104);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x26676B990](*(v1 + 24), *(v1 + 32));
    v13 = sub_265B402B4(v11, v12, &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_265B3E000, v4, v5, "Failed fetching iTunes Account while fetching first name: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x26676C0C0](v10, -1, -1);
    MEMORY[0x26676C0C0](v9, -1, -1);

    (*(v7 + 8))(v20, v8);
  }

  else
  {
    v15 = *(v1 + 112);
    v14 = *(v1 + 120);
    v16 = *(v1 + 104);

    (*(v15 + 8))(v14, v16);
  }

  sub_265B4ACC0();
  swift_allocError();
  *v17 = 4;
  swift_willThrow();

  v18 = *(v1 + 8);

  return v18();
}

uint64_t AccountProviding.fetchCurrentAccountFirstName()(uint64_t a1, uint64_t a2)
{
  *(v3 + 104) = a2;
  *(v3 + 112) = v2;
  *(v3 + 96) = a1;
  v6 = sub_265B76F60();
  *(v3 + 120) = v6;
  *(v3 + 128) = *(v6 - 8);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 216) = 1;
  v7 = *(a2 + 8);
  *(v3 + 152) = v7;
  *(v3 + 160) = (a2 + 8) & 0xFFFFFFFFFFFFLL | 0x49FB000000000000;
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v3 + 168) = v8;
  *v8 = v3;
  v8[1] = sub_265B6F468;

  return v10(v3 + 216, a1, a2);
}

{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v5 + 32))(v8 + v7, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v9 = swift_allocObject();
  *(v9 + 16) = "SeymourClientServices/AccountProvider.swift";
  *(v9 + 24) = 43;
  *(v9 + 32) = 2;
  *(v9 + 40) = 51;
  *(v9 + 48) = &unk_265B79A98;
  *(v9 + 56) = v8;
  return sub_265B76BB0();
}

uint64_t sub_265B6F468(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_265B6F9F4;
  }

  else
  {
    v4 = sub_265B6F57C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

id sub_265B6F57C()
{
  v1 = [*(v0 + 176) aa_firstName];
  if (v1)
  {
    v2 = v1;
    sub_265B77030();
  }

  v3 = sub_265B772F0();

  if (v3)
  {

    v4 = *(v0 + 152);
    *(v0 + 217) = 0;
    v15 = (v4 + *v4);
    v5 = swift_task_alloc();
    *(v0 + 192) = v5;
    *v5 = v0;
    v5[1] = sub_265B6F76C;
    v6 = *(v0 + 104);
    v7 = *(v0 + 96);

    return v15(v0 + 217, v7, v6);
  }

  else
  {
    result = [*(v0 + 176) aa_firstName];
    if (result)
    {
      v9 = result;
      v10 = *(v0 + 176);
      v11 = sub_265B77030();
      v13 = v12;

      v14 = *(v0 + 8);

      return v14(v11, v13);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_265B6F76C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v4 = sub_265B6FC64;
  }

  else
  {
    v4 = sub_265B6F880;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_265B6F880()
{
  v1 = [*(v0 + 200) ams_firstName];
  if (!v1)
  {

    goto LABEL_5;
  }

  v2 = *(v0 + 200);
  v3 = v1;
  v4 = sub_265B77030();
  v6 = v5;

  *(v0 + 64) = v4;
  *(v0 + 72) = v6;
  sub_265B43C20();
  LOBYTE(v3) = sub_265B77350();

  if (v3)
  {

LABEL_5:
    sub_265B4ACC0();
    swift_allocError();
    *v7 = 4;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }

  v10 = *(v0 + 8);

  return v10(v4, v6);
}

uint64_t sub_265B6F9F4(uint64_t a1)
{
  v25 = v1;
  v2 = *(v1 + 184);
  sub_265B76E50();
  v3 = v2;
  v4 = sub_265B76F50();
  v5 = sub_265B77270();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 184);
    v22 = *(v1 + 144);
    v8 = *(v1 + 120);
    v7 = *(v1 + 128);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x26676B990](*(v1 + 48), *(v1 + 56));
    v13 = sub_265B402B4(v11, v12, &v24);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_265B3E000, v4, v5, "Failed fetching Apple Account while fetching first name: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x26676C0C0](v10, -1, -1);
    MEMORY[0x26676C0C0](v9, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v14 = *(v1 + 144);
    v15 = *(v1 + 120);
    v16 = *(v1 + 128);

    (*(v16 + 8))(v14, v15);
  }

  v17 = *(v1 + 152);
  *(v1 + 217) = 0;
  v23 = (v17 + *v17);
  v18 = swift_task_alloc();
  *(v1 + 192) = v18;
  *v18 = v1;
  v18[1] = sub_265B6F76C;
  v19 = *(v1 + 104);
  v20 = *(v1 + 96);

  return v23(v1 + 217, v20, v19);
}

uint64_t sub_265B6FC64(uint64_t a1)
{
  v22 = v1;
  v2 = *(v1 + 208);
  sub_265B76E50();
  v3 = v2;
  v4 = sub_265B76F50();
  v5 = sub_265B77270();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 208);
    v7 = *(v1 + 128);
    v20 = *(v1 + 136);
    v8 = *(v1 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x26676B990](*(v1 + 24), *(v1 + 32));
    v13 = sub_265B402B4(v11, v12, &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_265B3E000, v4, v5, "Failed fetching iTunes Account while fetching first name: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x26676C0C0](v10, -1, -1);
    MEMORY[0x26676C0C0](v9, -1, -1);

    (*(v7 + 8))(v20, v8);
  }

  else
  {
    v15 = *(v1 + 128);
    v14 = *(v1 + 136);
    v16 = *(v1 + 120);

    (*(v15 + 8))(v14, v16);
  }

  sub_265B4ACC0();
  swift_allocError();
  *v17 = 4;
  swift_willThrow();

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_265B6FFA8(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 24) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_265B700E4, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_265B700FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 48) = a3 & 1;
  v10 = (*(a5 + 8) + **(a5 + 8));
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_265B70234;

  return v10(v5 + 48, a4, a5);
}

uint64_t sub_265B70234(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v5 = sub_265B761C8;
  }

  else
  {
    *(v4 + 40) = a1;
    v5 = sub_265B761C4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_265B7035C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80));
  v7 = *(v6 + *(*(v4 - 8) + 64));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_265B4221C;

  return sub_265B700FC(a1, v6, v7, v4, v5);
}

uint64_t sub_265B7046C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v11 = (*(a5 + 16) + **(a5 + 16));
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_265B705A0;

  return v11(a3, a4, a5);
}

uint64_t sub_265B705A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_265B761C0, 0, 0);
  }
}

uint64_t sub_265B706EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v9 = (*(a4 + 24) + **(a4 + 24));
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_265B7080C;

  return v9(a3, a4);
}

uint64_t sub_265B7080C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_265B70958, 0, 0);
  }
}

uint64_t sub_265B70B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v9 = (*(a4 + 56) + **(a4 + 56));
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_265B70C20;

  return v9(a3, a4);
}

uint64_t sub_265B70C20(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return MEMORY[0x2822009F8](sub_265B70D7C, 0, 0);
  }
}

uint64_t sub_265B70D7C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 40);
  v2[1] = v1;
  return (*(v0 + 8))();
}

void *AccountProvider.init(eventHub:accountStore:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  swift_defaultActor_initialize();
  v3[21] = 0;
  sub_265B3FF48(a3, (v3 + 14));
  v3[19] = a1;
  v3[20] = a2;
  return v3;
}

uint64_t AccountProvider.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = [objc_opt_self() SMUACDAccountStoreDidChangeNotification];
  [v1 removeObserver:v0 name:v2 object:0];

  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AccountProvider.__deallocating_deinit()
{
  AccountProvider.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_265B70ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_265B76F60();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265B70F90, 0, 0);
}

uint64_t sub_265B70F90(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[3];
  sub_265B76E50();
  sub_265B76F40();
  (*(v3 + 8))(v2, v4);
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  v5[1] = sub_265B71088;

  return sub_265B71244();
}

uint64_t sub_265B71088(void *a1)
{

  if (v1)
  {

    v3 = sub_265B761D4;
  }

  else
  {

    v3 = sub_265B711A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_265B711A8()
{
  swift_getObjectType();
  sub_265B74118();
  sub_265B76C70();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265B71244()
{
  v1[8] = v0;
  v2 = sub_265B76F60();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265B71310, v0, 0);
}

uint64_t sub_265B71310()
{
  v1 = *(v0 + 64);
  v2 = v1[17];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_265B71438;

  return v6(v2, v3);
}

uint64_t sub_265B71438(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v5 = *(v3 + 64);
  if (v1)
  {
    v6 = sub_265B717AC;
  }

  else
  {
    v6 = sub_265B7156C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_265B7156C()
{
  v30 = v0;
  v1 = v0[14];
  v2 = v0[8];
  v3 = *(v2 + 168);
  *(v2 + 168) = v1;
  v4 = v1;

  sub_265B76E50();
  v5 = v4;
  v6 = sub_265B76F50();
  v7 = sub_265B77280();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136315138;
    v11 = [v8 accountDescription];
    if (v11)
    {
      v12 = v11;
      v13 = sub_265B77030();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v28 = v0[12];
    v20 = v0[9];
    v19 = v0[10];
    v0[5] = v13;
    v0[6] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359D8, "r%");
    v21 = sub_265B772E0();
    v23 = v22;

    v24 = sub_265B402B4(v21, v23, &v29);

    *(v9 + 4) = v24;
    _os_log_impl(&dword_265B3E000, v6, v7, "Successfully fetched Primary Account: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x26676C0C0](v10, -1, -1);
    MEMORY[0x26676C0C0](v9, -1, -1);

    (*(v19 + 8))(v28, v20);
  }

  else
  {
    v16 = v0[12];
    v17 = v0[9];
    v18 = v0[10];

    (*(v18 + 8))(v16, v17);
  }

  v25 = v0[1];
  v26 = v0[14];

  return v25(v26);
}

uint64_t sub_265B717AC(uint64_t a1)
{
  v20 = v1;
  v2 = v1[15];
  sub_265B76E50();
  v3 = v2;
  v4 = sub_265B76F50();
  v5 = sub_265B77280();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v1[10];
    v6 = v1[11];
    v8 = v1[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x26676B990](v1[3], v1[4]);
    v13 = sub_265B402B4(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_265B3E000, v4, v5, "Failed to fetch Primary Account: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x26676C0C0](v10, -1, -1);
    MEMORY[0x26676C0C0](v9, -1, -1);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v15 = v1[10];
    v14 = v1[11];
    v16 = v1[9];

    (*(v15 + 8))(v14, v16);
  }

  swift_willThrow();

  v17 = v1[1];

  return v17();
}

uint64_t sub_265B71AA0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v4[12] = v1;

  v5 = v3[8];
  if (v1)
  {
    v6 = sub_265B71EFC;
  }

  else
  {
    v6 = sub_265B71BD4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_265B71BD4()
{
  v1 = *(v0 + 24);

  swift_unknownObjectRelease_n();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_265B71C4C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v4[16] = v1;

  v5 = v3[8];
  if (v1)
  {
    v6 = sub_265B71F6C;
  }

  else
  {
    v6 = sub_265B71D80;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_265B71D80()
{
  v1 = *(v0 + 48);

  swift_unknownObjectRelease_n();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_265B71DFC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_265B71EFC()
{

  swift_unknownObjectRelease_n();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265B71F6C()
{

  swift_unknownObjectRelease_n();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t AccountProvider.fetchMatchingAccount(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_265B766B0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265B720A0, v1, 0);
}

uint64_t sub_265B720A0()
{
  v14 = v0;
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  sub_265B401DC();
  (*(v2 + 16))(v1, v4, v3);
  ACAccount.init(_:)(v1);
  v6 = v5;
  *(v0 + 56) = v5;
  ACAccount.type.getter(v13);
  v7 = v13[0];
  *(v0 + 89) = v13[0];
  if (v7 == 2)
  {
    v8 = sub_265B76590();
    sub_265B5FC44();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51BD0], v8);
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    *(v0 + 88) = v7 & 1;
    v12 = swift_task_alloc();
    *(v0 + 64) = v12;
    *v12 = v0;
    v12[1] = sub_265B72264;

    return AccountProvider.fetchCurrentAccount(accountType:)((v0 + 88));
  }
}

uint64_t sub_265B72264(uint64_t a1)
{
  v3 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  v4 = v3[3];
  if (v1)
  {
    v5 = sub_265B725B8;
  }

  else
  {
    v5 = sub_265B7237C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_265B7237C()
{
  v1 = *(v0 + 72);
  if (*(v0 + 89))
  {
    v2 = [v1 aa_altDSID];
    if (v2)
    {
      v3 = v2;
      v4 = sub_265B77030();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v10 = [*(v0 + 56) aa_altDSID];
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = [v1 ams_altDSID];
    if (v7)
    {
      v8 = v7;
      v4 = sub_265B77030();
      v6 = v9;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v10 = [*(v0 + 56) ams_altDSID];
    if (!v10)
    {
LABEL_8:
      if (!v6)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }
  }

  v11 = v10;
  v12 = sub_265B77030();
  v14 = v13;

  if (!v6)
  {
    if (!v14)
    {
      goto LABEL_24;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!v14)
  {
    goto LABEL_19;
  }

  if (v4 == v12 && v6 == v14)
  {
    v15 = *(v0 + 56);

LABEL_25:

    v22 = *(v0 + 8);
    v23 = *(v0 + 72);

    return v22(v23);
  }

  v21 = sub_265B77580();

  if (v21)
  {
LABEL_24:
    v15 = *(v0 + 56);
    goto LABEL_25;
  }

LABEL_20:
  v16 = *(v0 + 72);
  v17 = *(v0 + 56);
  sub_265B4ACC0();
  swift_allocError();
  *v18 = 1;
  swift_willThrow();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_265B725B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265B72644()
{
  v1 = *(v0[2] + 168);
  if (v1)
  {
    v5 = v0[1];
    v2 = v1;

    return v5(v2);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[3] = v4;
    *v4 = v0;
    v4[1] = sub_265B72720;

    return sub_265B71244();
  }
}

uint64_t sub_265B72720(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t AccountProvider.fetchAccountState()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_265B72840, v1, 0);
}

uint64_t sub_265B72840()
{
  v1 = v0[3];
  v2 = *(v1 + 168);
  if (v2)
  {
    v0[6] = v2;
    v3 = v2;

    return MEMORY[0x2822009F8](sub_265B72A4C, v1, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_265B72920;

    return sub_265B71244();
  }
}

uint64_t sub_265B72920(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = *(v4 + 24);
    v6 = sub_265B72ADC;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = *(v4 + 24);
    v6 = sub_265B72A4C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_265B72A4C()
{
  v1 = *(v0 + 48);
  v2 = [v1 isEnabledForDataclass_];

  **(v0 + 16) = v2 ^ 1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_265B72ADC()
{
  **(v0 + 16) = 2;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265B72B4C(_BYTE *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265B41608;

  return AccountProvider.fetchCurrentAccount(accountType:)(a1);
}

uint64_t sub_265B72BE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265B5A110;

  return AccountProvider.fetchMatchingAccount(_:)(a1);
}

uint64_t sub_265B72C7C()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_265B72C9C, v2, 0);
}

uint64_t sub_265B72C9C()
{
  v1 = *(v0[2] + 168);
  if (v1)
  {
    v5 = v0[1];
    v2 = v1;

    return v5(v2);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[3] = v4;
    *v4 = v0;
    v4[1] = sub_265B761D8;

    return sub_265B71244();
  }
}

uint64_t sub_265B72D78(uint64_t a1)
{
  v3 = sub_265B766B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *v1;
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = swift_allocObject();
  *(v9 + 16) = "SeymourClientServices/AccountProvider.swift";
  *(v9 + 24) = 43;
  *(v9 + 32) = 2;
  *(v9 + 40) = 43;
  *(v9 + 48) = &unk_265B79BE8;
  *(v9 + 56) = v8;
  sub_265B401DC();

  return sub_265B76BB0();
}

uint64_t sub_265B72F18()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = "SeymourClientServices/AccountProvider.swift";
  *(v2 + 24) = 43;
  *(v2 + 32) = 2;
  *(v2 + 40) = 47;
  *(v2 + 48) = &unk_265B79BD8;
  *(v2 + 56) = v1;
  sub_265B401DC();

  return sub_265B76BB0();
}

uint64_t sub_265B72FD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_265B73078;

  return sub_265B6E860();
}

uint64_t sub_265B73078(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_265B73188(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265B41970;

  return AccountProvider.fetchAccountState()(a1);
}

uint64_t sub_265B73244(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(*(v5 - 8) + 64);
  v8 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v9 = *(sub_265B766B0() - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_265B4221C;

  return sub_265B7046C(a1, v1 + v8, v1 + v10, v5, v6);
}

uint64_t sub_265B7338C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265B4221C;

  return sub_265B706EC(a1, v1 + v6, v4, v5);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_265B734F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265B4221C;

  return sub_265B70B00(a1, v1 + v6, v4, v5);
}

uint64_t sub_265B735DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v47 = a7;
  v48 = a8;
  v11 = a5;
  v49 = a10;
  v46 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035958, &qword_265B78FD0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v40 - v17;
  v19 = sub_265B76F60();
  v44 = *(v19 - 8);
  v45 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_265B40228(0x65uLL);
  sub_265B76E40();
  v22 = sub_265B76F50();
  v23 = sub_265B77280();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v42 = a1;
    v25 = v24;
    v40 = swift_slowAlloc();
    v51 = v40;
    *v25 = 134218498;
    *(v25 + 4) = v50;
    *(v25 + 12) = 2080;
    v26 = sub_265B77440();
    v43 = a6;
    v41 = v18;
    v28 = a4;
    v29 = v11;
    v30 = a2;
    v31 = sub_265B402B4(v26, v27, &v51);
    v32 = a3;
    v33 = v43;

    *(v25 + 14) = v31;
    a2 = v30;
    v11 = v29;
    a4 = v28;
    *(v25 + 22) = 2048;
    a6 = v33;
    *(v25 + 24) = v33;
    a3 = v32;
    v18 = v41;
    _os_log_impl(&dword_265B3E000, v22, v23, "Converting from Async-Await to Promise Main: %ld:%s:%lu", v25, 0x20u);
    v34 = v40;
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x26676C0C0](v34, -1, -1);
    v35 = v25;
    a1 = v42;
    MEMORY[0x26676C0C0](v35, -1, -1);
  }

  (*(v44 + 8))(v21, v45);
  v36 = sub_265B77230();
  (*(*(v36 - 8) + 56))(v18, 1, 1, v36);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v47;
  v38 = v50;
  *(v37 + 40) = v48;
  *(v37 + 48) = v38;
  *(v37 + 56) = a3;
  *(v37 + 64) = a4;
  *(v37 + 72) = v11;
  *(v37 + 80) = a6;
  *(v37 + 88) = a1;
  *(v37 + 96) = a2;

  sub_265B75418(0, 0, v18, v49, v37);
}

uint64_t dispatch thunk of AccountProviding.fetchCurrentAccount(accountType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_265B4C6BC;

  return v9(a1, a2, a3);
}

{
  return (*(a3 + 32))(a1, a2);
}

uint64_t dispatch thunk of AccountProviding.fetchMatchingAccount(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_265B566A8;

  return v9(a1, a2, a3);
}

{
  return (*(a3 + 40))(a1, a2);
}

uint64_t dispatch thunk of AccountProviding.fetchPrimaryAccount()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265B566A8;

  return v7(a1, a2);
}

{
  return (*(a2 + 48))(a1);
}

uint64_t dispatch thunk of AccountProviding.fetchCurrentAccountFirstName()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265B73DDC;

  return v7(a1, a2);
}

uint64_t sub_265B73DDC(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of AccountProviding.fetchAccountState()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_265B41970;

  return v9(a1, a2, a3);
}

uint64_t sub_265B74064(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265B4221C;

  return sub_265B70ED0(a1, v4, v5, v6);
}

unint64_t sub_265B74118()
{
  result = qword_280CEBA48;
  if (!qword_280CEBA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CEBA48);
  }

  return result;
}

uint64_t sub_265B7416C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 48) = v16;
  *(v8 + 160) = v15;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v10 = sub_265B76F60();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 104) = v11;
  *v11 = v8;
  v11[1] = sub_265B742F4;

  return v13(v8 + 16);
}

uint64_t sub_265B742F4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_265B74764;
  }

  else
  {
    v2 = sub_265B74408;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_265B74408()
{
  *(v0 + 120) = sub_265B77210();
  *(v0 + 128) = sub_265B77200();
  v2 = sub_265B771C0();

  return MEMORY[0x2822009F8](sub_265B744A0, v2, v1);
}

uint64_t sub_265B744A0()
{
  v24 = v0;

  v1 = v0[2];
  v0[17] = v1;
  sub_265B77200();
  sub_265B771C0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_265B76E40();
  v2 = sub_265B76F50();
  v3 = sub_265B77280();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  if (v4)
  {
    v18 = v0[6];
    v20 = v0[9];
    v8 = v0[3];
    v19 = v0[12];
    v9 = swift_slowAlloc();
    v21 = v1;
    v22 = swift_slowAlloc();
    v10 = v22;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    v11 = sub_265B77440();
    v13 = sub_265B402B4(v11, v12, &v22);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v18;
    _os_log_impl(&dword_265B3E000, v2, v3, "Finished Main A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v14 = v10;
    v1 = v21;
    MEMORY[0x26676C0C0](v14, -1, -1);
    MEMORY[0x26676C0C0](v9, -1, -1);

    (*(v6 + 8))(v19, v20);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v15 = v0[7];
  v22 = v1;
  v23 = 0;
  v16 = v1;
  v15(&v22);

  return MEMORY[0x2822009F8](sub_265B746F4, 0, 0);
}

uint64_t sub_265B746F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265B74764()
{
  *(v0 + 144) = sub_265B77210();
  *(v0 + 152) = sub_265B77200();
  v2 = sub_265B771C0();

  return MEMORY[0x2822009F8](sub_265B747FC, v2, v1);
}

uint64_t sub_265B747FC()
{
  v22 = v0;

  sub_265B77200();
  sub_265B771C0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_265B76E40();
  v1 = sub_265B76F50();
  v2 = sub_265B77280();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  if (v3)
  {
    v17 = v0[6];
    v7 = v0[3];
    v19 = v0[9];
    v8 = swift_slowAlloc();
    v18 = v4;
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 134218498;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v10 = sub_265B77440();
    v12 = sub_265B402B4(v10, v11, &v20);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2048;
    *(v8 + 24) = v17;
    _os_log_impl(&dword_265B3E000, v1, v2, "Finished Main A->P conversion: %ld:%s:%lu", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26676C0C0](v9, -1, -1);
    MEMORY[0x26676C0C0](v8, -1, -1);

    (*(v5 + 8))(v18, v19);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v13 = v0[14];
  v14 = v0[7];
  v20 = v13;
  v21 = 1;
  v15 = v13;
  v14(&v20);

  return MEMORY[0x2822009F8](sub_265B74A50, 0, 0);
}

uint64_t sub_265B74A50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265B74AC0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v17;
  *(v8 + 56) = v16;
  *(v8 + 168) = v15;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 32) = a6;
  v10 = sub_265B76F60();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 112) = v11;
  *v11 = v8;
  v11[1] = sub_265B74C48;

  return v13(v8 + 16);
}

uint64_t sub_265B74C48()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_265B750BC;
  }

  else
  {
    v2 = sub_265B74D5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_265B74D5C()
{
  *(v0 + 128) = sub_265B77210();
  *(v0 + 136) = sub_265B77200();
  v2 = sub_265B771C0();

  return MEMORY[0x2822009F8](sub_265B74DF4, v2, v1);
}

uint64_t sub_265B74DF4()
{
  v22 = v0;

  v2 = v0[2];
  v1 = v0[3];
  v0[18] = v1;
  sub_265B77200();
  sub_265B771C0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_265B76E40();
  v3 = sub_265B76F50();
  v4 = sub_265B77280();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  if (v5)
  {
    v17 = v0[7];
    v19 = v2;
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v18 = v7;
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v10 = 134218498;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2080;
    v12 = sub_265B77440();
    v14 = sub_265B402B4(v12, v13, v20);

    *(v10 + 14) = v14;
    v2 = v19;
    *(v10 + 22) = 2048;
    *(v10 + 24) = v17;
    _os_log_impl(&dword_265B3E000, v3, v4, "Finished Main A->P conversion: %ld:%s:%lu", v10, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x26676C0C0](v11, -1, -1);
    MEMORY[0x26676C0C0](v10, -1, -1);

    (*(v8 + 8))(v6, v18);
  }

  else
  {

    (*(v8 + 8))(v6, v7);
  }

  v15 = v0[8];
  v20[0] = v2;
  v20[1] = v1;
  v21 = 0;

  v15(v20);

  return MEMORY[0x2822009F8](sub_265B7504C, 0, 0);
}

uint64_t sub_265B7504C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265B750BC()
{
  *(v0 + 152) = sub_265B77210();
  *(v0 + 160) = sub_265B77200();
  v2 = sub_265B771C0();

  return MEMORY[0x2822009F8](sub_265B75154, v2, v1);
}

uint64_t sub_265B75154()
{
  v22 = v0;

  sub_265B77200();
  sub_265B771C0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_265B76E40();
  v1 = sub_265B76F50();
  v2 = sub_265B77280();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  if (v3)
  {
    v17 = v0[7];
    v7 = v0[4];
    v19 = v0[10];
    v8 = swift_slowAlloc();
    v18 = v4;
    v9 = swift_slowAlloc();
    v20[0] = v9;
    *v8 = 134218498;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v10 = sub_265B77440();
    v12 = sub_265B402B4(v10, v11, v20);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2048;
    *(v8 + 24) = v17;
    _os_log_impl(&dword_265B3E000, v1, v2, "Finished Main A->P conversion: %ld:%s:%lu", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26676C0C0](v9, -1, -1);
    MEMORY[0x26676C0C0](v8, -1, -1);

    (*(v5 + 8))(v18, v19);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v13 = v0[15];
  v14 = v0[8];
  v20[0] = v13;
  v20[1] = 0;
  v21 = 1;
  v15 = v13;
  v14(v20);

  return MEMORY[0x2822009F8](sub_265B753A8, 0, 0);
}

uint64_t sub_265B753A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265B75418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035958, &qword_265B78FD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_265B5A09C(a3, v23 - v10);
  v12 = sub_265B77230();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_265B408F0(v11);
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

  sub_265B77220();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_265B771C0();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_265B77050() + 32;
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

    sub_265B408F0(a3);

    return v21;
  }

LABEL_8:
  sub_265B408F0(a3);
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

uint64_t sub_265B756D4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  *(v3 + 48) = a3 & 1;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_265B75778;

  return AccountProvider.fetchCurrentAccount(accountType:)((v3 + 48));
}

uint64_t sub_265B75778(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v5 = sub_265B758C4;
  }

  else
  {
    *(v4 + 40) = a1;
    v5 = sub_265B758A0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_265B758DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_265B705A0;

  return AccountProvider.fetchMatchingAccount(_:)(a3);
}

uint64_t sub_265B75978(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_265B75998, v3, 0);
}

uint64_t sub_265B75998()
{
  v1 = *(v0[3] + 168);
  if (v1)
  {
    v0[5] = v1;
    v2 = v1;

    return MEMORY[0x2822009F8](sub_265B761C4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_265B75A78;

    return sub_265B71244();
  }
}

uint64_t sub_265B75A78(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_265B761C4, 0, 0);
  }
}

uint64_t sub_265B75BC4(uint64_t a1)
{
  *(v2 + 16) = v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_265B75C7C;

  return sub_265B75978(a1, (v2 + 16));
}

uint64_t sub_265B75C7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_265B75D70(uint64_t a1)
{
  v4 = *(sub_265B766B0() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265B4221C;

  return sub_265B758DC(a1, v1 + 16, v1 + v5);
}

uint64_t sub_265B75E5C(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265B4221C;

  return sub_265B756D4(a1, v1 + 16, v4);
}

void sub_265B75F50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_265B41970;

  JUMPOUT(0x265B74AC0);
}

uint64_t objectdestroy_103Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

void sub_265B760AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_265B4221C;

  JUMPOUT(0x265B7416CLL);
}

uint64_t getEnumTagSinglePayload for DataError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DataError(uint64_t result, int a2, int a3)
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