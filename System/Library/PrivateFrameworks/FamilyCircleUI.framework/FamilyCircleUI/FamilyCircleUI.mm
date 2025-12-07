uint64_t static FamilySettingsFactory.sharedProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280BD7EB8 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_21BB3A35C(&qword_280BD7EC0, v1);
}

void sub_21BB38DF4()
{
  v0 = [objc_opt_self() defaultStore];
  v1 = [v0 aa_primaryAppleAccount];

  v2 = type metadata accessor for FamilyViewsProvider(0);
  swift_allocObject();
  v3 = sub_21BB38FD8(v1);

  qword_280BD7ED8 = v2;
  unk_280BD7EE0 = &off_282D8BE00;
  qword_280BD7EC0 = v3;
}

uint64_t type metadata accessor for FamilyViewsProvider(uint64_t a1)
{
  result = qword_280BD8208;
  if (!qword_280BD8208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BB38EE8(uint64_t a1)
{
  result = sub_21BE2626C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void *sub_21BB38FD8(void *a1)
{
  v2 = v1;
  v34 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_21BE2626C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  v10 = qword_280BD7CD0;
  v1[2] = qword_280BD7CD0;
  v11 = qword_280BD79D8;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v2[3] = qword_280BD79E0;
  v13 = qword_280BD86B0;

  if (v13 != -1)
  {
    swift_once();
  }

  v2[4] = qword_280BD86B8;
  v14 = qword_280BD83C0;

  if (v14 != -1)
  {
    swift_once();
  }

  v2[5] = qword_280BDCBF0;
  if (MEMORY[0x277D84F90] >> 62 && sub_21BE2951C())
  {

    v15 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {

    v15 = MEMORY[0x277D84FA0];
  }

  v2[6] = v15;
  v2[7] = 0;
  *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_activeAccount) = 0;
  v16 = (v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_imageHint);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_marqueeImages);
  if (qword_280BD84F8 != -1)
  {
    swift_once();
  }

  v18 = *algn_280BD8508;
  v19 = qword_280BD8510;
  v20 = unk_280BD8518;
  *v17 = qword_280BD8500;
  v17[1] = v18;
  v17[2] = v19;
  v17[3] = v20;
  v21 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_rowCache;
  type metadata accessor for FamilyRowCache();
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  swift_allocObject();

  *(v2 + v21) = FamilyRowCache.init(defaults:)(v35);
  *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView) = 0;
  *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastRowStatus) = 5;
  v22 = v2[7];
  if (v22)
  {
    v23 = v2[7];
  }

  else
  {
    v23 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    v22 = 0;
  }

  v24 = v22;
  sub_21BE2909C();
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_invitationStatus, v9, v6);
  v25 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_activeAccount);
  v26 = v34;
  *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_activeAccount) = v34;
  v27 = v26;

  v28 = sub_21BE28DAC();
  (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
  sub_21BE28D7C();

  v29 = sub_21BE28D6C();
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D85700];
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = v2;
  sub_21BBA932C(0, 0, v5, &unk_21BE39E48, v30);

  sub_21BB42168();

  return v2;
}

id sub_21BB39468()
{
  result = [objc_allocWithZone(type metadata accessor for FamilySettingsApplication(0)) init];
  qword_280BD7CD0 = result;
  return result;
}

uint64_t type metadata accessor for FamilySettingsApplication(uint64_t a1)
{
  result = qword_280BD7CA8;
  if (!qword_280BD7CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BB394E8(uint64_t a1)
{
  sub_21BB395DC();
  if (v1 <= 0x3F)
  {
    sub_21BE25D1C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21BB395DC()
{
  if (!qword_280BD6A88)
  {
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_280BD6A88);
    }
  }
}

id sub_21BB3962C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &aBlock - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB8, &qword_21BE45DE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &aBlock - v7;
  v9 = OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication__state;
  aBlock = 0;
  v39 = 0;
  v40 = 0x8000000000000000;
  sub_21BE26C6C();
  (*(v6 + 32))(&v1[v9], v8, v5);
  v10 = OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_familyCircleStore;
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  *&v1[v10] = qword_280BD79E0;
  v11 = OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_servicesStore;
  v12 = qword_280BD76F0;

  if (v12 != -1)
  {
    swift_once();
  }

  *&v1[v11] = qword_280BDCB98;
  v13 = OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_checklistRankingConfigStore;
  v14 = qword_280BD6CD0;

  if (v14 != -1)
  {
    swift_once();
  }

  *&v1[v13] = qword_280BDCB48;
  v15 = OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_navigationPathSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFC0, &qword_21BE45DF0);
  swift_allocObject();

  *&v1[v15] = sub_21BE26C2C();
  v16 = OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_appleCardStore;
  if (qword_280BD7508 != -1)
  {
    swift_once();
  }

  *&v1[v16] = qword_280BDCB60;

  sub_21BE25D0C();
  v17 = [objc_opt_self() defaultStore];
  if (v17)
  {
    v18 = v17;
    *&v1[OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_accountStore] = v17;
    v19 = objc_allocWithZone(MEMORY[0x277CED1D0]);
    v20 = v18;
    v21 = [v19 initWithAccountStore_];
    *&v1[OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_aidaAccountManager] = v21;
    v22 = objc_allocWithZone(MEMORY[0x277CED1E8]);
    v23 = v21;
    v24 = [v22 initWithAccountStore_];
    *&v1[OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_servicesOwnerManager] = v24;
    v25 = type metadata accessor for FamilySettingsApplication(0);
    v44.receiver = v1;
    v44.super_class = v25;
    v26 = objc_msgSendSuper2(&v44, sel_init);
    [v23 setDelegate_];
    v27 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v42 = sub_21BD43BDC;
    v43 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_21BE012D4;
    v41 = &block_descriptor_23_0;
    v28 = _Block_copy(&aBlock);
    v29 = v26;

    [v23 addAccountChangeObserver:v29 handler:v28];
    _Block_release(v28);

    v30 = sub_21BE28DAC();
    v31 = *(*(v30 - 8) + 56);
    v31(v4, 1, 1, v30);
    sub_21BE28D7C();
    v32 = sub_21BE28D6C();
    v33 = swift_allocObject();
    v34 = MEMORY[0x277D85700];
    v33[2] = v32;
    v33[3] = v34;
    v33[4] = v29;
    sub_21BBA932C(0, 0, v4, &unk_21BE45E00, v33);

    v31(v4, 1, 1, v30);
    v35 = sub_21BE28D6C();
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = v34;
    sub_21BBA932C(0, 0, v4, &unk_21BE45E10, v36);

    sub_21BB3DD30();
    sub_21BB3E2EC();

    return v29;
  }

  else
  {
    result = sub_21BE2978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BB39C14()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_21BB39C50()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

char *sub_21BB39CD0()
{
  memset(v4, 0, sizeof(v4));
  v5 = 0;
  v0 = objc_allocWithZone(type metadata accessor for AccountStatusObserver());
  v1 = sub_21BB39D64(v4);
  type metadata accessor for FamilyCircleStore(0);
  v2 = swift_allocObject();
  result = sub_21BB3A990(v1);
  qword_280BD79E0 = v2;
  return result;
}

char *sub_21BB39D64(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC14FamilyCircleUI21AccountStatusObserver_accountStore];
  v4 = type metadata accessor for AccountStatusObserver();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v24.receiver = v1;
  v24.super_class = v4;
  v5 = objc_msgSendSuper2(&v24, sel_init);
  sub_21BB3A078(a1, &v19);
  if (v20)
  {
    sub_21BB3D104(&v19, v21);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC880, &qword_21BE32F40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BE32770;
    *(inited + 32) = sub_21BE28A0C();
    *(inited + 40) = v7;
    v8 = v5;
    sub_21BB3A0E8(inited);
    swift_setDeallocating();
    sub_21BB3A250(inited + 32);
    v9 = objc_allocWithZone(MEMORY[0x277CB8F80]);
    v10 = v8;
    v11 = sub_21BE28E3C();

    v12 = [v9 initWithAccountTypes:v11 delegate:v10];

    v22 = sub_21BB3A2A4(0, &qword_280BD6918, 0x277CB8F80);
    v23 = &off_282D95F48;

    v21[0] = v12;
    if (v20)
    {
      sub_21BB3A4CC(&v19, &qword_27CDBC818, &qword_21BE4B448);
    }
  }

  v13 = v5 + OBJC_IVAR____TtC14FamilyCircleUI21AccountStatusObserver_accountStore;
  swift_beginAccess();
  sub_21BB3A2EC(v21, v13);
  swift_endAccess();
  swift_beginAccess();
  if (*(v13 + 24))
  {
    sub_21BB3A35C(v13, v21);
    swift_endAccess();
    v14 = v22;
    v15 = v23;
    __swift_project_boxed_opaque_existential_1Tm(v21, v22);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = v15[1];

    v17(sub_21BB3A7F8, v16, v14, v15);

    sub_21BB3A4CC(a1, &qword_27CDBC818, &qword_21BE4B448);

    __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  else
  {
    sub_21BB3A4CC(a1, &qword_27CDBC818, &qword_21BE4B448);
    swift_endAccess();
  }

  return v5;
}

uint64_t sub_21BB3A040()
{
  MEMORY[0x21CF05D90](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB3A078(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC818, &qword_21BE4B448);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB3A0E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6E70, qword_21BE361F0);
    v3 = sub_21BE295CC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_21BE29ACC();

      sub_21BE28ABC();
      result = sub_21BE29B0C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_21BE2995C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_21BB3A2A4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_21BB3A2EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC818, &qword_21BE4B448);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB3A35C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_21BB3A404(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_21BB3A73C;
  v5[3] = &block_descriptor_113;
  v4 = _Block_copy(v5);

  [v3 registerWithCompletion_];
  _Block_release(v4);
}

uint64_t block_copy_helper_111(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21BB3A4CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

uint64_t sub_21BB3A598(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BB3A5D0(uint64_t a1)
{
  sub_21BB3A6E8(319, &qword_280BD6A68, &qword_27CDB5990, &qword_21BE36DA0);
  if (v1 <= 0x3F)
  {
    sub_21BB3A6E8(319, &qword_280BD6A48, &unk_27CDBC730, &qword_21BE4B290);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_21BB3A6E8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21BE26CCC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_21BB3A73C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_21BB3A2A4(0, &qword_280BD68E0, 0x277CB8F30);
    v4 = sub_21BE28C3C();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_21BB3A830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v4 = [objc_opt_self() defaultCenter];
    if (qword_280BD7E90 != -1)
    {
      swift_once();
    }

    [v4 postNotificationName:qword_280BDCBD8 object:0 userInfo:0 deliverImmediately:1];
  }
}

uint64_t sub_21BB3A958()
{
  result = sub_21BE289CC();
  qword_280BDCBD8 = result;
  return result;
}

char *sub_21BB3A990(void *a1)
{
  v2 = v1;
  v45[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v42 - v5;
  v6 = sub_21BE26A4C();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC710, &qword_21BE35920);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - v15;
  v17 = qword_280BD7A28[0];
  v45[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5990, &qword_21BE36DA0);
  sub_21BE26C6C();
  (*(v14 + 32))(&v2[v17], v16, v13);
  v18 = qword_280BD7A00;
  v45[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC730, &qword_21BE4B290);
  sub_21BE26C6C();
  (*(v10 + 32))(&v2[v18], v12, v9);
  *&v2[qword_280BD7A08] = 0;
  v2[qword_280BD7A18] = 0;
  *&v2[qword_280BD79F0] = a1;
  if (MEMORY[0x277D84F90] >> 62 && sub_21BE2951C())
  {
    v41 = a1;
    v20 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v19 = a1;
    v20 = MEMORY[0x277D84FA0];
  }

  *(v2 + 4) = v20;
  *(v2 + 5) = 0;
  *(v2 + 2) = 0xD000000000000011;
  *(v2 + 3) = 0x800000021BE4B230;
  v21 = objc_opt_self();
  swift_retain_n();
  v22 = [v21 defaultCenter];
  [v22 addObserver:v2 selector:sel_familyDidChange name:*MEMORY[0x277D080E0] object:0];

  v23 = [v21 defaultCenter];
  if (qword_280BD7E90 != -1)
  {
    swift_once();
  }

  [v23 addObserver:v2 selector:? name:? object:?];

  v24 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  [v24 setCachePolicy_];
  v45[0] = 0;
  v25 = [v24 fetchCachedFamilyCircle_];
  v26 = v45[0];
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v28 = v26;
    v29 = sub_21BE25A8C();

    swift_willThrow();
    v27 = 0;
  }

  sub_21BE2613C();
  v30 = v25;
  v31 = sub_21BE26A2C();
  v32 = sub_21BE28FFC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v27;
    *v34 = v27;
    v35 = v30;
    _os_log_impl(&dword_21BB35000, v31, v32, "Circle store request fetched %@", v33, 0xCu);
    sub_21BB3A4CC(v34, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v34, -1, -1);
    MEMORY[0x21CF05C50](v33, -1, -1);
  }

  v37 = v42;
  v36 = v43;
  (*(v42 + 8))(v8, v43);
  swift_retain_n();

  v38 = v44;
  sub_21BE2613C();
  (*(v37 + 56))(v38, 0, 1, v36);
  v45[0] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC860, &qword_21BE4B4C8);
  swift_allocObject();
  v39 = v30;
  *(v2 + 5) = sub_21BE262AC();

  sub_21BD9C948();

  return v2;
}

uint64_t sub_21BB3B038(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BB3B080()
{
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for ServicesStore(0);
  v0 = swift_allocObject();
  v1 = swift_retain_n();
  v2 = sub_21BB3B274(v1, v0);

  qword_280BDCB98 = v2;
  return result;
}

uint64_t type metadata accessor for ServicesStore(uint64_t a1)
{
  result = qword_280BD76D8;
  if (!qword_280BD76D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BB3B160(uint64_t a1)
{
  sub_21BB3B210(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_21BB3B210(uint64_t a1)
{
  if (!qword_280BD6A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB76A8, &qword_21BE38780);
    v1 = sub_21BE26CCC();
    if (!v2)
    {
      atomic_store(v1, &qword_280BD6A78);
    }
  }
}

uint64_t sub_21BB3B274(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69F0, &qword_21BE35CC8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20[-1] - v9;
  v20[3] = type metadata accessor for FamilyCircleStore(0);
  v20[4] = &protocol witness table for FamilyCircleStore;
  v20[0] = a1;
  v11 = qword_280BD76E8;
  v12 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB76A8, &qword_21BE38780);
  sub_21BE26C6C();
  (*(v8 + 32))(a2 + v11, v10, v7);
  *(a2 + qword_280BDCB88) = 1;
  *(a2 + qword_280BDCB90) = 0;
  sub_21BB3A35C(v20, a2 + 48);
  if (v12 >> 62 && sub_21BE2951C())
  {
    v13 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v13 = MEMORY[0x277D84FA0];
  }

  *(a2 + 32) = v13;
  *(a2 + 40) = 0;
  strcpy((a2 + 16), "ServicesStore");
  *(a2 + 30) = -4864;
  swift_retain_n();
  sub_21BE2613C();
  v14 = sub_21BE26A4C();
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC890, &qword_21BE4B4E0);
  swift_allocObject();

  *(a2 + 40) = sub_21BE262AC();

  sub_21BB3B610();

  v15 = objc_opt_self();
  v16 = [v15 defaultCenter];
  [v16 addObserver:a2 selector:sel_updateNotification name:*MEMORY[0x277D08138] object:0];

  v17 = [v15 defaultCenter];
  [v17 addObserver:a2 selector:sel_updateNotification name:*MEMORY[0x277D080E0] object:0];

  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  return a2;
}

void sub_21BB3B610()
{
  if (*(v0 + 40))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC890, &qword_21BE4B4E0);
    sub_21BB3B038(&qword_280BD89A8, &unk_27CDBC890, &qword_21BE4B4E0, MEMORY[0x277D08000]);
    sub_21BE26C0C();

    swift_allocObject();
    swift_weakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BB3B758()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

char *sub_21BB3B794()
{
  type metadata accessor for ChecklistRankingConfigStore(0);
  swift_allocObject();
  result = sub_21BB3B920();
  qword_280BDCB48 = result;
  return result;
}

uint64_t type metadata accessor for ChecklistRankingConfigStore(uint64_t a1)
{
  result = qword_280BD6CB8;
  if (!qword_280BD6CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BB3B820(uint64_t a1)
{
  sub_21BB3B8C0();
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_21BB3B8C0()
{
  if (!qword_280BD6A80)
  {
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_280BD6A80);
    }
  }
}

char *sub_21BB3B920()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6888, &qword_21BE35808);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  sub_21BE264CC();
  swift_allocObject();
  *(v0 + 6) = sub_21BE264BC();
  v9 = qword_280BD6CD8;
  *&v14 = 0x6B6361626C6C6166;
  *(&v14 + 1) = 0xE800000000000000;
  v10 = MEMORY[0x277D84F90];
  *&v15 = 1;
  *(&v15 + 1) = MEMORY[0x277D84F90];
  sub_21BE26C6C();
  (*(v6 + 32))(&v1[v9], v8, v5);
  if (v10 >> 62 && sub_21BE2951C())
  {
    v11 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  *(v1 + 4) = v11;
  *(v1 + 5) = 0;
  *(v1 + 2) = 0xD000000000000015;
  *(v1 + 3) = 0x800000021BE605F0;
  swift_retain_n();
  sub_21BE2613C();
  v12 = sub_21BE26A4C();
  (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
  v14 = 0u;
  v15 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBF0, &unk_21BE488C0);
  swift_allocObject();
  *(v1 + 5) = sub_21BE262AC();

  sub_21BB3BC4C();

  return v1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21BB3BC04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

void sub_21BB3BC4C()
{
  if (*(v0 + 40))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBF0, &unk_21BE488C0);
    sub_21BB3B038(&qword_280BD89C0, &qword_27CDBBBF0, &unk_21BE488C0, MEMORY[0x277D08000]);
    sub_21BE26C0C();

    swift_allocObject();
    swift_weakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_21BB3BD98()
{
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v0 = objc_allocWithZone(FAAppleCardUtilities);

  v1 = [v0 init];
  type metadata accessor for AppleCardStore(0);
  v2 = swift_allocObject();

  v4 = sub_21BB3C114(v3, v1, v2);

  qword_280BDCB60 = v4;
}

Class __getPKAppleCardUtilitiesClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!PassKitUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __PassKitUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782F3E38;
    v6 = 0;
    PassKitUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (PassKitUILibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PKAppleCardUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPKAppleCardUtilitiesClass_block_invoke_cold_1();
  }

  getPKAppleCardUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t type metadata accessor for AppleCardStore(uint64_t a1)
{
  result = qword_280BD74F0;
  if (!qword_280BD74F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BB3BFF4(uint64_t a1)
{
  sub_21BB3C0BC(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_21BB3C0BC(uint64_t a1)
{
  if (!qword_280BD6A98)
  {
    sub_21BE25D1C();
    v1 = sub_21BE26CCC();
    if (!v2)
    {
      atomic_store(v1, &qword_280BD6A98);
    }
  }
}

uint64_t sub_21BB3C114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v44 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v44 - v17;
  v19 = sub_21BE25D1C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v44 - v24;
  v55[3] = type metadata accessor for FamilyCircleStore(0);
  v55[4] = &protocol witness table for FamilyCircleStore;
  v55[0] = a1;
  *(a3 + qword_280BDCB78) = 0;
  *(a3 + qword_280BDCB80) = 0;
  *(a3 + qword_280BDCB58) = 0;
  v26 = a3 + qword_280BD7510;
  *v26 = sub_21BBDC524;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  sub_21BB3A35C(v55, a3 + qword_280BDCB68);
  *(a3 + qword_280BDCB70) = a2;
  swift_unknownObjectRetain();
  sub_21BE25D0C();
  swift_beginAccess();
  (*(v20 + 16))(v23, v25, v19);
  sub_21BE26C6C();
  (*(v20 + 8))(v25, v19);
  swift_endAccess();
  if (MEMORY[0x277D84F90] >> 62 && sub_21BE2951C())
  {
    v27 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v27 = MEMORY[0x277D84FA0];
  }

  *(a3 + 32) = v27;
  *(a3 + 40) = 0;
  strcpy((a3 + 16), "AppleCardStore");
  *(a3 + 31) = -18;
  swift_retain_n();
  sub_21BE2613C();
  v28 = sub_21BE26A4C();
  (*(*(v28 - 8) + 56))(v18, 0, 1, v28);
  (*(v20 + 56))(v15, 1, 1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7E8, &qword_21BE4B428);
  swift_allocObject();

  *(a3 + 40) = sub_21BE262AC();

  sub_21BB3CA64();

  sub_21BB3A35C(a3 + qword_280BDCB68, v52);
  v29 = v53;
  v30 = v54;
  __swift_project_boxed_opaque_existential_1Tm(v52, v53);
  (*(v30 + 32))(v29, v30);
  v31 = swift_allocObject();
  swift_weakInit();

  sub_21BE2635C();
  swift_allocObject();
  v32 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180, MEMORY[0x277CBCEC8]);
  sub_21BB3CCDC();
  v33 = v44;
  v34 = v48;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70, MEMORY[0x277CBCBE0]);
  v35 = v49;
  v36 = v46;
  sub_21BE26CFC();
  (*(v45 + 8))(v33, v36);
  v37 = swift_allocObject();
  v37[2] = v32;
  v37[3] = &unk_21BE50AB8;
  v37[4] = v31;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0, MEMORY[0x277CBCC18]);

  v38 = v51;
  sub_21BE26D1C();

  (*(v50 + 8))(v35, v38);
  (*(v47 + 8))(v12, v34);
  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  swift_beginAccess();

  sub_21BE26BBC();
  swift_endAccess();

  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = [ObjCClassFromMetadata defaultCenter];
  [v40 addObserver:a3 selector:sel_serviceAccountDidChange name:*MEMORY[0x277D38358] object:0];

  v41 = [ObjCClassFromMetadata defaultCenter];
  v42 = qword_280BD6B10;

  if (v42 != -1)
  {
    swift_once();
  }

  [v41 addObserver:a3 selector:sel_serviceApplicationDidChange name:qword_280BD6B18 object:0];

  __swift_destroy_boxed_opaque_existential_0Tm(v55);
  return a3;
}

uint64_t sub_21BB3CA14()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_21BB3CA64()
{
  if (*(v0 + 40))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7E8, &qword_21BE4B428);
    sub_21BB3B038(&unk_280BD89B0, &unk_27CDBC7E8, &qword_21BE4B428, MEMORY[0x277D08000]);
    sub_21BE26C0C();

    swift_allocObject();
    swift_weakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BB3CBB0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_21BE26C7C();
  return swift_endAccess();
}

uint64_t sub_21BB3CC48(unint64_t *a1, unint64_t *a2, void *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_21BB3A2A4(255, a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BB3CC8C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_21BB3A2A4(255, a2, a3);
    result = swift_getWitnessTable(MEMORY[0x277D85380], v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BB3CCDC()
{
  result = qword_280BD6978;
  if (!qword_280BD6978)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5990, &qword_21BE36DA0);
    v4[0] = sub_21BB3CC48(&qword_280BD6970, &qword_280BD6980, 0x277D08248, MEMORY[0x277D85380]);
    result = swift_getWitnessTable(MEMORY[0x277D84F50], v3, v4);
    atomic_store(result, &qword_280BD6978);
  }

  return result;
}

uint64_t sub_21BB3CD8C()
{
  result = sub_21BE289CC();
  qword_280BD6B18 = result;
  return result;
}

uint64_t block_copy_helper_21_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21BB3CDDC()
{
  v0 = sub_21BE26D8C();
  swift_allocObject();
  v12[3] = v0;
  v12[4] = &off_282D8CF10;
  v12[0] = sub_21BE26D7C();
  type metadata accessor for FamilyNetworkMonitor(0);
  v1 = swift_allocObject();
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v12, v0);
  MEMORY[0x28223BE20](v2);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v4);
  v6 = *v4;
  v10 = v0;
  v11 = &off_282D8CF10;
  *&v9 = v6;
  v8[15] = 1;

  sub_21BE26C6C();
  *(v1 + OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_lastStatus) = 0;
  *(v1 + OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_running) = 0;
  sub_21BB3D104(&v9, v1 + OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_monitor);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);

  qword_280BD7FE0 = v1;
  return result;
}

uint64_t type metadata accessor for FamilyNetworkMonitor(uint64_t a1)
{
  result = qword_280BD7FB8;
  if (!qword_280BD7FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BB3CFB8(uint64_t a1)
{
  sub_21BB3D064();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21BB3D064()
{
  if (!qword_280BD6A70)
  {
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_280BD6A70);
    }
  }
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

uint64_t sub_21BB3D104(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21BB3D11C()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v36 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v8 = sub_21BE2924C();
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21BE2922C();
  MEMORY[0x28223BE20](v11);
  v12 = sub_21BE2874C();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_running;
  if (*(v1 + OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_running))
  {
    sub_21BE2618C();
    v14 = sub_21BE26A2C();
    v15 = sub_21BE28FFC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v38[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_21BB3D81C(0x6E6F4D7472617473, 0xEE002928726F7469, v38);
      _os_log_impl(&dword_21BB35000, v14, v15, "%s Monitor is already running", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x21CF05C50](v17, -1, -1);
      MEMORY[0x21CF05C50](v16, -1, -1);
    }

    return (*(v36 + 8))(v5, v2);
  }

  else
  {
    v34 = v2;
    v32 = OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_monitor;
    sub_21BB3A35C(v1 + OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_monitor, v38);
    v31 = __swift_project_boxed_opaque_existential_1Tm(v38, v39);
    v19 = sub_21BB3D724();
    v29 = "s";
    v30 = v19;
    sub_21BE2872C();
    v37 = MEMORY[0x277D84F90];
    sub_21BB3D770(&unk_280BD6938, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    v33 = v7;
    v28 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8278, &qword_21BE3B5F8);
    sub_21BB3D7B8(&qword_280BD6998, &qword_27CDB8278, &qword_21BE3B5F8);
    sub_21BE294DC();
    (*(v35 + 104))(v10, *MEMORY[0x277D85260], v28);
    v20 = sub_21BE2927C();
    sub_21BE26D6C();

    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    *(v1 + v13) = 1;
    sub_21BB3A35C(v1 + v32, v38);
    __swift_project_boxed_opaque_existential_1Tm(v38, v39);
    v21 = swift_allocObject();
    *(v21 + 16) = sub_21BB3E654;
    *(v21 + 24) = v1;
    swift_retain_n();
    sub_21BB3D80C(sub_21BB3E4F4, v21);
    v22 = v33;
    sub_21BE26D5C();

    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    sub_21BE2618C();
    v23 = sub_21BE26A2C();
    v24 = sub_21BE28FFC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_21BB3D81C(0x6E6F4D7472617473, 0xEE002928726F7469, v38);
      _os_log_impl(&dword_21BB35000, v23, v24, "%s Monitor started", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x21CF05C50](v26, -1, -1);
      MEMORY[0x21CF05C50](v25, -1, -1);
    }

    return (*(v36 + 8))(v22, v34);
  }
}

uint64_t sub_21BB3D6EC()
{

  return swift_deallocObject();
}

unint64_t sub_21BB3D724()
{
  result = qword_280BD6930;
  if (!qword_280BD6930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BD6930);
  }

  return result;
}

uint64_t sub_21BB3D770(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BB3D7B8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BB3D80C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_21BB3D81C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21BB3D8E8(v11, 0, 0, 1, a1, a2);
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
    sub_21BB3DCD4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_21BB3D8E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21BB3D9F4(a5, a6);
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
    result = sub_21BE2967C();
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

void *sub_21BB3D9F4(uint64_t a1, unint64_t a2)
{
  v3 = sub_21BB3DA40(a1, a2);
  sub_21BB3DBE8(&unk_282D84DC8);
  return v3;
}

void *sub_21BB3DA40(uint64_t a1, unint64_t a2)
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

  v6 = sub_21BB3DB70(v5, 0);
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

  result = sub_21BE2967C();
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
        v10 = sub_21BE28B1C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21BB3DB70(v10, 0);
        result = sub_21BE295DC();
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

void *sub_21BB3DB70(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AE8, &qword_21BE33040);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_21BB3DBE8(uint64_t result)
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

  result = sub_21BBBE01C(result, v11, 1, v3);
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

uint64_t sub_21BB3DCD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21BB3DD30()
{
  v24 = sub_21BE2870C();
  v27 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21BE2874C();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BE2876C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = [objc_opt_self() defaultCenter];
  if (qword_280BD6FA0 != -1)
  {
    swift_once();
  }

  [v13 addObserver:v0 selector:? name:? object:?];
  if (qword_280BD6CE8 != -1)
  {
    swift_once();
  }

  [v13 addObserver:v0 selector:? name:? object:?];
  sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
  v14 = sub_21BE2925C();
  v22 = v13;
  v15 = v14;
  sub_21BE2875C();
  sub_21BE2877C();
  v23 = *(v7 + 8);
  v23(v10, v6);
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  aBlock[4] = sub_21BD445C4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BB42A18;
  aBlock[3] = &block_descriptor_37_1;
  v17 = _Block_copy(aBlock);
  v18 = v0;
  sub_21BE2872C();
  v28 = MEMORY[0x277D84F90];
  sub_21BB3E240(&qword_280BD69E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BB3E288();
  v19 = v24;
  sub_21BE294DC();
  MEMORY[0x21CF043E0](v12, v5, v2, v17);
  _Block_release(v17);

  (*(v27 + 8))(v2, v19);
  (*(v25 + 8))(v5, v26);
  v23(v12, v6);
}

uint64_t sub_21BB3E1D4()
{

  return swift_deallocObject();
}

uint64_t sub_21BB3E240(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BB3E288()
{
  result = qword_280BD69A0;
  if (!qword_280BD69A0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBAF0, &unk_21BE3B600);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_280BD69A0);
  }

  return result;
}

void sub_21BB3E2EC()
{
  sub_21BE287FC();
  v0 = sub_21BE287EC();
  sub_21BB3E4A0();
  sub_21BE287DC();

  v1 = sub_21BE287EC();
  type metadata accessor for FamilyMemberToggleRowRUI(0);
  sub_21BB3E240(&qword_280BD7E80, type metadata accessor for FamilyMemberToggleRowRUI, byte_21BE41D3C);
  sub_21BE287DC();

  v2 = sub_21BE287EC();
  sub_21BB400A4();
  sub_21BE287DC();

  v3 = sub_21BE287EC();
  type metadata accessor for FamilyManagePaymentsLinkRUI(0);
  sub_21BB3E240(&qword_280BD7C90, type metadata accessor for FamilyManagePaymentsLinkRUI, aOF_0);
  sub_21BE287DC();
}

unint64_t sub_21BB3E4A0()
{
  result = qword_280BD7EA8;
  if (!qword_280BD7EA8)
  {
    result = swift_getWitnessTable(byte_21BE370A8, &type metadata for FamilyMemberLabelRowRUI, v0, v1);
    atomic_store(result, &qword_280BD7EA8);
  }

  return result;
}

uint64_t sub_21BB3E500(uint64_t a1, void (*a2)(uint64_t *))
{
  v4 = sub_21BE26DCC();
  v7[3] = v4;
  v7[4] = &off_282D8CEF8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a1, v4);
  a2(v7);
  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

unint64_t sub_21BB3E59C()
{
  result = qword_280BD7EA0;
  if (!qword_280BD7EA0)
  {
    result = swift_getWitnessTable(byte_21BE37030, &type metadata for FamilyMemberLabelRowRUI, v0, v1);
    atomic_store(result, &qword_280BD7EA0);
  }

  return result;
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

uint64_t sub_21BB3E660(void *a1, uint64_t a2)
{
  v80 = a2;
  v77 = sub_21BE26DAC();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v79 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_21BE26A4C();
  v81 = *(v82 - 8);
  v4 = MEMORY[0x28223BE20](v82);
  v73 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v75 = &v71 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v71 = &v71 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v72 = &v71 - v11;
  MEMORY[0x28223BE20](v10);
  v78 = &v71 - v12;
  v13 = sub_21BE26D2C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v17);
  v18 = sub_21BE26D9C();
  v19 = sub_21BB3F214(v18);

  v21 = *(v19 + 16);
  if (!v21)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_19:

    if (*(v24 + 16))
    {
      v37 = v78;
      sub_21BE2618C();

      v38 = sub_21BE26A2C();
      v39 = sub_21BE28FCC();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *&v93 = v41;
        *v40 = 136315394;
        *(v40 + 4) = sub_21BB3D81C(0x6E6F4D7472617473, 0xEE002928726F7469, &v93);
        *(v40 + 12) = 2048;
        v42 = *(v24 + 16);

        *(v40 + 14) = v42;

        _os_log_impl(&dword_21BB35000, v38, v39, "%s Network interfaces %ld", v40, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        MEMORY[0x21CF05C50](v41, -1, -1);
        MEMORY[0x21CF05C50](v40, -1, -1);
      }

      else
      {
      }

      v48 = *(v81 + 8);
      v49 = v37;
      v50 = v82;
      v48(v49, v82);
      v51 = v77;
      v52 = v76;
      v53 = v79;
      v54 = v75;
      __swift_project_boxed_opaque_existential_1Tm(v74, v74[3]);
      sub_21BE26DBC();
      v55 = (*(v52 + 88))(v53, v51);
      if (v55 == *MEMORY[0x277CD8F78])
      {
        v56 = v72;
        sub_21BE2618C();
        v57 = sub_21BE26A2C();
        v58 = sub_21BE28FFC();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          *&v93 = v60;
          *v59 = 136315138;
          *(v59 + 4) = sub_21BB3D81C(0x6E6F4D7472617473, 0xEE002928726F7469, &v93);
          _os_log_impl(&dword_21BB35000, v57, v58, "%s Network satisfied", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v60);
          MEMORY[0x21CF05C50](v60, -1, -1);
          MEMORY[0x21CF05C50](v59, -1, -1);
        }

        v48(v56, v50);
        *(v80 + OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_lastStatus) = 0;
        return sub_21BB3F774();
      }

      if (v55 != *MEMORY[0x277CD8F68] && v55 != *MEMORY[0x277CD8F70])
      {
        sub_21BE2618C();
        v61 = sub_21BE26A2C();
        v62 = sub_21BE28FDC();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *&v93 = v64;
          *v63 = 136315138;
          *(v63 + 4) = sub_21BB3D81C(0x6E6F4D7472617473, 0xEE002928726F7469, &v93);
          _os_log_impl(&dword_21BB35000, v61, v62, "%s Unknown monitor state", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v64);
          MEMORY[0x21CF05C50](v64, -1, -1);
          v65 = v63;
          v53 = v79;
          MEMORY[0x21CF05C50](v65, -1, -1);
        }

        v48(v54, v50);
        return (*(v52 + 8))(v53, v51);
      }

      v66 = v71;
      sub_21BE2618C();
      v67 = sub_21BE26A2C();
      v68 = sub_21BE28FFC();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *&v93 = v70;
        *v69 = 136315138;
        *(v69 + 4) = sub_21BB3D81C(0x6E6F4D7472617473, 0xEE002928726F7469, &v93);
        _os_log_impl(&dword_21BB35000, v67, v68, "%s Network unsatisfied/requiresConnection", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v70);
        MEMORY[0x21CF05C50](v70, -1, -1);
        MEMORY[0x21CF05C50](v69, -1, -1);
      }

      v48(v66, v50);
    }

    else
    {

      v43 = v73;
      sub_21BE2618C();
      v44 = sub_21BE26A2C();
      v45 = sub_21BE28FFC();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *&v93 = v47;
        *v46 = 136315138;
        *(v46 + 4) = sub_21BB3D81C(0x6E6F4D7472617473, 0xEE002928726F7469, &v93);
        _os_log_impl(&dword_21BB35000, v44, v45, "%s No useful network interfaces found", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v47);
        MEMORY[0x21CF05C50](v47, -1, -1);
        MEMORY[0x21CF05C50](v46, -1, -1);
      }

      (*(v81 + 8))(v43, v82);
    }

    *(v80 + OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_lastStatus) = 1;
    return sub_21BB3F774();
  }

  v22 = 0;
  v23 = v19 + 32;
  v88 = *MEMORY[0x277CD8CA8];
  v87 = *MEMORY[0x277CD8CB8];
  v86 = *MEMORY[0x277CD8CA0];
  v83 = (v14 + 8);
  v24 = MEMORY[0x277D84F90];
  v84 = v21;
  v85 = v13;
  while (v22 < *(v19 + 16))
  {
    sub_21BB3A35C(v23, &v93);
    __swift_project_boxed_opaque_existential_1Tm(&v93, v94);
    sub_21BE26D3C();
    v25 = (*(v14 + 88))(v16, v13);
    if (v25 == v88 || v25 == v87 || v25 == v86)
    {
      sub_21BB3D104(&v93, v92);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21BB3F444(0, *(v24 + 16) + 1, 1);
        v24 = v95;
      }

      v30 = *(v24 + 16);
      v29 = *(v24 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_21BB3F444((v29 > 1), v30 + 1, 1);
      }

      v31 = __swift_mutable_project_boxed_opaque_existential_1(v92, v92[3]);
      MEMORY[0x28223BE20](v31);
      v33 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v34 + 16))(v33);
      v35 = sub_21BE26D4C();
      v90 = v35;
      v91 = &off_282D8CEE8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v89);
      (*(*(v35 - 8) + 32))(boxed_opaque_existential_1, v33, v35);
      v24 = v95;
      *(v95 + 16) = v30 + 1;
      sub_21BB3D104(&v89, v24 + 40 * v30 + 32);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v92);
      v21 = v84;
      v13 = v85;
    }

    else
    {
      (*v83)(v16, v13);
      result = __swift_destroy_boxed_opaque_existential_0Tm(&v93);
    }

    ++v22;
    v23 += 40;
    if (v21 == v22)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21BB3F1C0()
{
  result = qword_280BD7E98;
  if (!qword_280BD7E98)
  {
    result = swift_getWitnessTable(byte_21BE36FF8, &type metadata for FamilyMemberLabelRowRUI, v0, v1);
    atomic_store(result, &qword_280BD7E98);
  }

  return result;
}

uint64_t sub_21BB3F214(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v25 = MEMORY[0x277D84F90];
    sub_21BB3F444(0, v1, 0);
    v2 = v25;
    v4 = sub_21BE26D4C();
    v5 = 0;
    v6 = *(v4 - 8);
    v18 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v17[0] = v6;
    v17[1] = v6 + 16;
    v7 = (v6 + 32);
    do
    {
      v23 = v4;
      v24 = &off_282D8CEE8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
      (*(v17[0] + 16))(boxed_opaque_existential_1, v18 + *(v17[0] + 72) * v5, v4);
      v25 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_21BB3F444((v9 > 1), v10 + 1, 1);
      }

      ++v5;
      v11 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      MEMORY[0x28223BE20](v11);
      v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v13);
      v20 = v4;
      v21 = &off_282D8CEE8;
      v15 = __swift_allocate_boxed_opaque_existential_1(&v19);
      (*v7)(v15, v13, v4);
      v2 = v25;
      *(v25 + 16) = v10 + 1;
      sub_21BB3D104(&v19, v2 + 40 * v10 + 32);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
    }

    while (v1 != v5);
  }

  return v2;
}

void *sub_21BB3F444(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21BB3F4B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_21BB3F464()
{
  result = qword_280BD7EB0;
  if (!qword_280BD7EB0)
  {
    result = swift_getWitnessTable(aA_1, &type metadata for FamilyMemberLabelRowRUI, v0, v1);
    atomic_store(result, &qword_280BD7EB0);
  }

  return result;
}

uint64_t type metadata accessor for FamilyMemberToggleRowRUI(uint64_t a1)
{
  result = qword_280BD7E60;
  if (!qword_280BD7E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BB3F528(uint64_t a1)
{
  sub_21BB3FA30(319, &qword_280BD69C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21BE2881C();
    if (v2 <= 0x3F)
    {
      sub_21BB3FEF0(319);
      if (v3 <= 0x3F)
      {
        sub_21BB3FA30(319, &qword_280BD6A00, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void *sub_21BB3F62C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_21BB3F774()
{
  v1 = sub_21BE2870C();
  v11 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21BE2874C();
  v4 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BB3D724();
  v7 = sub_21BE2925C();
  aBlock[4] = sub_21BB42A5C;
  v13 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BB42A18;
  aBlock[3] = &block_descriptor_19;
  v8 = _Block_copy(aBlock);

  sub_21BE2872C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21BB3D770(&qword_280BD69E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BB3D7B8(&qword_280BD69A0, &qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BE294DC();
  MEMORY[0x21CF04410](0, v6, v3, v8);
  _Block_release(v8);

  (*(v11 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v10);
}

void sub_21BB3FA30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21BB3FA80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
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

{
  return sub_21BB3DCD4(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  return sub_21BB3DCD4(a2 + 32, a1 + 32);
}

{
  return sub_21BB3DCD4(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_21BB3DCD4(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  return sub_21BB3DCD4(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  return sub_21BB3DCD4(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_21BB3FEF0(uint64_t a1)
{
  if (!qword_280BD6A10)
  {
    sub_21BE2883C();
    sub_21BB3FF84(&qword_280BD69D8, MEMORY[0x277D461B0], MEMORY[0x277D461A8]);
    v1 = sub_21BE2728C();
    if (!v2)
    {
      atomic_store(v1, &qword_280BD6A10);
    }
  }
}

uint64_t sub_21BB3FF84(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BB400A4()
{
  result = qword_280BD7058;
  if (!qword_280BD7058)
  {
    result = swift_getWitnessTable(aF_4, &type metadata for PaymentStackRowRUI, v0, v1);
    atomic_store(result, &qword_280BD7058);
  }

  return result;
}

unint64_t sub_21BB400FC()
{
  result = qword_280BD7048;
  if (!qword_280BD7048)
  {
    result = swift_getWitnessTable(aMiFd, &type metadata for PaymentStackRowRUI, v0, v1);
    atomic_store(result, &qword_280BD7048);
  }

  return result;
}

unint64_t sub_21BB40154()
{
  result = qword_280BD7040;
  if (!qword_280BD7040)
  {
    result = swift_getWitnessTable(aEoF, &type metadata for PaymentStackRowRUI, v0, v1);
    atomic_store(result, &qword_280BD7040);
  }

  return result;
}

unint64_t sub_21BB401AC()
{
  result = qword_280BD7060;
  if (!qword_280BD7060)
  {
    result = swift_getWitnessTable(byte_21BE458C4, &type metadata for PaymentStackRowRUI, v0, v1);
    atomic_store(result, &qword_280BD7060);
  }

  return result;
}

uint64_t type metadata accessor for FamilyManagePaymentsLinkRUI(uint64_t a1)
{
  result = qword_280BD7C70;
  if (!qword_280BD7C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BB4024C(uint64_t a1)
{
  sub_21BB40310();
  if (v1 <= 0x3F)
  {
    sub_21BB4035C(319);
    if (v2 <= 0x3F)
    {
      sub_21BB403C0();
      if (v3 <= 0x3F)
      {
        sub_21BB40410(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_21BB40310()
{
  result = qword_280BD6900;
  if (!qword_280BD6900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BD6900);
  }

  return result;
}

void sub_21BB4035C(uint64_t a1)
{
  if (!qword_280BD6A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB57F0, &qword_21BE328A0);
    v1 = sub_21BE2842C();
    if (!v2)
    {
      atomic_store(v1, &qword_280BD6A08);
    }
  }
}

void sub_21BB403C0()
{
  if (!qword_280BD6A00)
  {
    v0 = sub_21BE2842C();
    if (!v1)
    {
      atomic_store(v0, &qword_280BD6A00);
    }
  }
}

void sub_21BB40410(uint64_t a1)
{
  if (!qword_280BD6A40)
  {
    sub_21BE26F5C();
    v1 = sub_21BE26E8C();
    if (!v2)
    {
      atomic_store(v1, &qword_280BD6A40);
    }
  }
}

uint64_t sub_21BB40468(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_21BB40588()
{
  type metadata accessor for FamilyMarqueStore(0);
  memset(v2, 0, sizeof(v2));
  v3 = 0;
  v0 = swift_allocObject();
  result = sub_21BB40740(v2);
  qword_280BD86B8 = v0;
  return result;
}

uint64_t type metadata accessor for FamilyMarqueStore(uint64_t a1)
{
  result = qword_280BD8698;
  if (!qword_280BD8698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BB4062C(uint64_t a1)
{
  sub_21BB406E0();
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_21BB406E0()
{
  if (!qword_280BD6A90)
  {
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_280BD6A90);
    }
  }
}

void *sub_21BB40740(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v63 - v5;
  v7 = qword_280BD86C8;
  *(v2 + v7) = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  *(v2 + qword_280BD86C0) = MEMORY[0x277D84F90];
  v63[0] = a1;
  sub_21BB41118(a1, &v68);
  if (v69)
  {
    sub_21BB3D104(&v68, &aBlock);
  }

  else
  {
    sub_21BB41188(&v68);
    if (qword_280BD8A50 != -1)
    {
      swift_once();
    }

    v8 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v9 = sub_21BE289CC();
    v10 = [v8 initWithSuiteName_];

    *(&v65 + 1) = sub_21BB41228();
    v66 = MEMORY[0x277D08080];
    if (!v10)
    {
      v10 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
    }

    *&aBlock = v10;
  }

  sub_21BB3D104(&aBlock, v2 + qword_280BD86D0);
  v11 = qword_280BD86D0;
  sub_21BB3A35C(v2 + qword_280BD86D0, &aBlock);
  __swift_project_boxed_opaque_existential_1Tm(&aBlock, *(&v65 + 1));
  v12 = sub_21BE264AC();
  sub_21BE2647C();
  v13 = sub_21BE2604C();
  v15 = v14;

  sub_21BB3A35C(v2 + v11, &v68);
  __swift_project_boxed_opaque_existential_1Tm(&v68, v69);
  v63[1] = v12;
  sub_21BE2646C();
  v16 = sub_21BE2604C();
  v18 = v17;

  if (v15 && (v19 = sub_21BB41E7C(v13, v15), v21 = v20, , v21))
  {
    if (!v18)
    {
      goto LABEL_14;
    }
  }

  else
  {

    v19 = 0;
    v21 = 0xE000000000000000;
    if (!v18)
    {
LABEL_14:

      v22 = 0;
      v24 = 0xE000000000000000;
      goto LABEL_15;
    }
  }

  v22 = sub_21BB41E7C(v16, v18);
  v24 = v23;

  if (!v24)
  {
    goto LABEL_14;
  }

LABEL_15:
  __swift_destroy_boxed_opaque_existential_0Tm(&v68);
  __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
  swift_beginAccess();
  *&aBlock = v19;
  *(&aBlock + 1) = v21;
  *&v65 = v22;
  *(&v65 + 1) = v24;
  sub_21BE26C6C();
  swift_endAccess();
  if (MEMORY[0x277D84F90] >> 62 && sub_21BE2951C())
  {
    v25 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v25 = MEMORY[0x277D84FA0];
  }

  v2[4] = v25;
  v2[5] = 0;
  v2[2] = 0xD000000000000011;
  v2[3] = 0x800000021BE42F60;
  swift_retain_n();
  sub_21BE2613C();
  v26 = sub_21BE26A4C();
  (*(*(v26 - 8) + 56))(v6, 0, 1, v26);
  aBlock = 0u;
  v65 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC840, &unk_21BE42FE0);
  swift_allocObject();
  v2[5] = sub_21BE262AC();

  sub_21BB41274();

  v27 = qword_280BD86C8;
  v28 = *(v2 + qword_280BD86C8);
  v29 = (v2 + qword_280BD86D0);
  v30 = *(v2 + qword_280BD86D0 + 24);
  v31 = __swift_project_boxed_opaque_existential_1Tm((v2 + qword_280BD86D0), v30);
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = v63 - v33;
  (*(v32 + 16))(v63 - v33);
  v35 = v28;
  v36 = sub_21BE2994C();
  (*(v32 + 8))(v34, v30);
  sub_21BE2647C();
  v37 = sub_21BE289CC();

  v38 = swift_allocObject();
  swift_weakInit();
  v66 = sub_21BD0D84C;
  v67 = v38;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v65 = sub_21BD0CC7C;
  *(&v65 + 1) = &block_descriptor_35;
  v39 = _Block_copy(&aBlock);

  v40 = [v35 na:v36 addNotificationBlockObserverForObject:v37 keyPath:1 options:v39 usingBlock:?];

  swift_unknownObjectRelease();
  _Block_release(v39);
  sub_21BE294BC();
  swift_unknownObjectRelease();
  v41 = qword_280BD86C0;
  swift_beginAccess();
  v42 = *(v2 + v41);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v41) = v42;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = sub_21BB413C0(0, *(v42 + 2) + 1, 1, v42);
    *(v2 + v41) = v42;
  }

  v45 = *(v42 + 2);
  v44 = *(v42 + 3);
  if (v45 >= v44 >> 1)
  {
    v42 = sub_21BB413C0((v44 > 1), v45 + 1, 1, v42);
  }

  *(v42 + 2) = v45 + 1;
  sub_21BB414D0(&aBlock, &v42[32 * v45 + 32]);
  *(v2 + v41) = v42;
  swift_endAccess();
  v46 = *(v2 + v27);
  v47 = v29[3];
  v48 = __swift_project_boxed_opaque_existential_1Tm(v29, v47);
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v48);
  v51 = v63 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v49 + 16))(v51);
  v52 = v46;
  v53 = sub_21BE2994C();
  (*(v49 + 8))(v51, v47);
  sub_21BE2646C();
  v54 = sub_21BE289CC();

  v55 = swift_allocObject();
  swift_weakInit();

  v66 = sub_21BD0D854;
  v67 = v55;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v65 = sub_21BD0CC7C;
  *(&v65 + 1) = &block_descriptor_23;
  v56 = _Block_copy(&aBlock);

  v57 = [v52 na:v53 addNotificationBlockObserverForObject:v54 keyPath:1 options:v56 usingBlock:?];

  swift_unknownObjectRelease();
  _Block_release(v56);
  sub_21BE294BC();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v58 = *(v2 + v41);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v41) = v58;
  if ((v59 & 1) == 0)
  {
    v58 = sub_21BB413C0(0, *(v58 + 2) + 1, 1, v58);
    *(v2 + v41) = v58;
  }

  v61 = *(v58 + 2);
  v60 = *(v58 + 3);
  if (v61 >= v60 >> 1)
  {
    v58 = sub_21BB413C0((v60 > 1), v61 + 1, 1, v58);
  }

  *(v58 + 2) = v61 + 1;
  sub_21BB414D0(&aBlock, &v58[32 * v61 + 32]);
  *(v2 + v41) = v58;
  swift_endAccess();
  sub_21BB41188(v63[0]);

  return v2;
}

uint64_t sub_21BB410E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21BB41118(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA2C8, &qword_21BE42FC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB41188(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA2C8, &qword_21BE42FC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BB411F0()
{
  sub_21BE25FEC();
  result = sub_21BE25FDC();
  qword_280BDCC00 = result;
  *algn_280BDCC08 = v1;
  return result;
}

unint64_t sub_21BB41228()
{
  result = qword_280BD8A28;
  if (!qword_280BD8A28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BD8A28);
  }

  return result;
}

void sub_21BB41274()
{
  if (*(v0 + 40))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC840, &unk_21BE42FE0);
    sub_21BB3B038(&qword_280BD89C8, &unk_27CDBC840, &unk_21BE42FE0, MEMORY[0x277D08000]);
    sub_21BE26C0C();

    swift_allocObject();
    swift_weakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

char *sub_21BB413C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AD0, &qword_21BE39190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_OWORD *sub_21BB414D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21BB414E0()
{
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for FamilyPictureStore(0);
  v0 = swift_allocObject();
  v1 = swift_retain_n();
  v2 = sub_21BB41698(v1, v0);

  qword_280BDCBF0 = v2;
  return result;
}

void sub_21BB41594(uint64_t a1)
{
  sub_21BB41630(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_21BB41630(uint64_t a1)
{
  if (!qword_280BD6A58)
  {
    sub_21BB3A2A4(255, &qword_280BD8A10, off_2782F0CC0);
    v1 = sub_21BE26CCC();
    if (!v2)
    {
      atomic_store(v1, &qword_280BD6A58);
    }
  }
}

void *sub_21BB41698(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v32 - v14;
  v16 = type metadata accessor for FamilyCircleStore(0);
  v41[3] = v16;
  v41[4] = &protocol witness table for FamilyCircleStore;
  v41[0] = a1;
  sub_21BB3A35C(v41, (a2 + 6));
  v17 = sub_21BB41D84(v16, &protocol witness table for FamilyCircleStore);
  if (!v17)
  {
    v17 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v18 = v17;
  v19 = [objc_allocWithZone(FAProfilePictureStore) initWithFamilyCircle_];

  swift_beginAccess();
  v39 = v19;
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BE26C6C();
  swift_endAccess();
  if (MEMORY[0x277D84F90] >> 62 && sub_21BE2951C())
  {
    v20 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v20 = MEMORY[0x277D84FA0];
  }

  a2[4] = v20;
  a2[5] = 0;
  a2[2] = 0xD000000000000012;
  a2[3] = 0x800000021BE4B2F0;
  swift_retain_n();
  sub_21BE2613C();
  v21 = sub_21BE26A4C();
  (*(*(v21 - 8) + 56))(v15, 0, 1, v21);
  v22 = sub_21BB41D84(v16, &protocol witness table for FamilyCircleStore);
  if (!v22)
  {
    v22 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v23 = v22;
  v24 = [objc_allocWithZone(FAProfilePictureStore) initWithFamilyCircle_];

  v40 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C8, &qword_21BE4B3B0);
  swift_allocObject();
  swift_retain_n();
  a2[5] = sub_21BE262AC();

  sub_21BD9CA90();

  sub_21BB3CC2C(v16, &protocol witness table for FamilyCircleStore);
  v25 = swift_allocObject();
  swift_weakInit();

  sub_21BE2635C();
  swift_allocObject();
  v26 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180, MEMORY[0x277CBCEC8]);
  sub_21BB3CCDC();
  v27 = v36;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70, MEMORY[0x277CBCBE0]);
  v28 = v34;
  sub_21BE26CFC();
  (*(v33 + 8))(v6, v28);
  v29 = swift_allocObject();
  v29[2] = v26;
  v29[3] = &unk_21BE4B3C0;
  v29[4] = v25;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0, MEMORY[0x277CBCC18]);

  v30 = v38;
  sub_21BE26D1C();

  (*(v37 + 8))(v9, v30);
  (*(v35 + 8))(v12, v27);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v41);
  return a2;
}

uint64_t sub_21BB41DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v5;
}

uint64_t sub_21BB41E14()
{
  v0 = sub_21BB41E7C(0, 0xE000000000000000);
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  result = sub_21BB41E7C(0, 0xE000000000000000);
  if (v5)
  {
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  qword_280BD8500 = v2;
  *algn_280BD8508 = v3;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  qword_280BD8510 = v6;
  unk_280BD8518 = v7;
  return result;
}

uint64_t sub_21BB41E7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BE257FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = a1;
  v13[1] = a2;
  sub_21BE257DC();
  sub_21BB41FA4();
  v8 = sub_21BE2948C();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    return 0;
  }

  return v8;
}

unint64_t sub_21BB41FA4()
{
  result = qword_280BD69D0;
  if (!qword_280BD69D0)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83820], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_280BD69D0);
  }

  return result;
}

uint64_t FamilyRowCache.init(defaults:)(uint64_t a1)
{
  v2 = v1;
  sub_21BB41118(a1, &v8);
  if (v9)
  {
    sub_21BB3A4CC(a1, &qword_27CDBA2C8, &qword_21BE42FC8);
    sub_21BB3D104(&v8, &v10);
  }

  else
  {
    sub_21BE25FEC();
    sub_21BE25FDC();
    v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v5 = sub_21BE289CC();

    v6 = [v4 initWithSuiteName_];

    v11 = sub_21BB41228();
    v12 = MEMORY[0x277D08080];
    if (!v6)
    {
      v6 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
    }

    *&v10 = v6;
    sub_21BB3A4CC(a1, &qword_27CDBA2C8, &qword_21BE42FC8);
    if (v9)
    {
      sub_21BB3A4CC(&v8, &qword_27CDBA2C8, &qword_21BE42FC8);
    }
  }

  sub_21BB3D104(&v10, v2 + 16);
  return v2;
}

void sub_21BB42168()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x277D76670];
  v5[4] = sub_21BC504D0;
  v6 = v0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_21BC4E8BC;
  v5[3] = &block_descriptor_13;
  v3 = _Block_copy(v5);

  v4 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v3];
  _Block_release(v3);
  swift_unknownObjectRelease();
}

FamilyCircleUI::FamilyRowStatus sub_21BB422BC@<W0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v47 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v47 - v12;
  sub_21BE260FC();
  v14 = sub_21BE26A2C();
  v15 = sub_21BE28FCC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v48 = a1;
    v17 = v16;
    v18 = v8;
    v19 = v11;
    v20 = v4;
    v21 = v5;
    v22 = swift_slowAlloc();
    v49 = v22;
    *v17 = 136315138;
    *(v17 + 4) = sub_21BB3D81C(0x7574617453776F72, 0xE900000000000073, &v49);
    _os_log_impl(&dword_21BB35000, v14, v15, "%s request for current status ", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    v23 = v22;
    v5 = v21;
    v4 = v20;
    v11 = v19;
    v8 = v18;
    MEMORY[0x21CF05C50](v23, -1, -1);
    v24 = v17;
    a1 = v48;
    MEMORY[0x21CF05C50](v24, -1, -1);
  }

  v25 = *(v5 + 8);
  v25(v13, v4);
  if (*(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_activeAccount))
  {
    v26 = *(v2 + 56);
    if (v26)
    {
      goto LABEL_5;
    }

    result = FamilyRowCache.rowStatusFromCache()().value;
    LOBYTE(v29) = v49;
    if (v49 != 5)
    {
      goto LABEL_27;
    }

    v26 = *(v2 + 56);
    if (v26)
    {
LABEL_5:
      v27 = v26;
    }

    else
    {
      v27 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
      v26 = 0;
    }

    v28 = v26;
    FAFamilyCircle.rowStatusForFamily()();
    v29 = v49;
    sub_21BE260FC();
    v30 = sub_21BE26A2C();
    v31 = sub_21BE28FCC();
    if (os_log_type_enabled(v30, v31))
    {
      v47[0] = v25;
      v47[1] = v5;
      v48 = a1;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v49 = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_21BB3D81C(0x7574617453776F72, 0xE900000000000073, &v49);
      *(v32 + 12) = 2080;
      v34 = 0x6E6564646968;
      v35 = 0xEA00000000006574;
      v36 = 0x69766E49746E6573;
      v37 = 0xEE00657469766E49;
      v38 = 0x6465766965636572;
      if (v29 != 3)
      {
        v38 = 0xD000000000000013;
        v37 = 0x800000021BE54640;
      }

      if (v29 != 2)
      {
        v36 = v38;
        v35 = v37;
      }

      if (v29)
      {
        v34 = 0x796C696D6166;
      }

      if (v29 <= 1)
      {
        v39 = v34;
      }

      else
      {
        v39 = v36;
      }

      if (v29 <= 1)
      {
        v40 = 0xE600000000000000;
      }

      else
      {
        v40 = v35;
      }

      v41 = sub_21BB3D81C(v39, v40, &v49);

      *(v32 + 14) = v41;
      _os_log_impl(&dword_21BB35000, v30, v31, "%s returned %s ", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v33, -1, -1);
      MEMORY[0x21CF05C50](v32, -1, -1);

      result = (v47[0])(v11, v4);
      a1 = v48;
    }

    else
    {

      result = v25(v11, v4);
    }
  }

  else
  {
    sub_21BE260FC();
    v43 = sub_21BE26A2C();
    v44 = sub_21BE28FFC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v49 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_21BB3D81C(0x7574617453776F72, 0xE900000000000073, &v49);
      _os_log_impl(&dword_21BB35000, v43, v44, "%s not logged in iCloud", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x21CF05C50](v46, -1, -1);
      MEMORY[0x21CF05C50](v45, -1, -1);
    }

    result = v25(v8, v4);
    LOBYTE(v29) = 0;
  }

LABEL_27:
  *a1 = v29;
  return result;
}

uint64_t sub_21BB42864(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x796C696D6166;
    }

    else
    {
      v5 = 0x6E6564646968;
    }

    v6 = 0xE600000000000000;
  }

  else
  {
    v3 = 0x6465766965636572;
    v4 = 0xEE00657469766E49;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
      v4 = 0x800000021BE54640;
    }

    if (a1 == 2)
    {
      v5 = 0x69766E49746E6573;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xEA00000000006574;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x796C696D6166;
    }

    else
    {
      v11 = 0x6E6564646968;
    }

    v10 = 0xE600000000000000;
    if (v5 != v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v7 = 0x6465766965636572;
    v8 = 0x800000021BE54640;
    if (a2 == 3)
    {
      v8 = 0xEE00657469766E49;
    }

    else
    {
      v7 = 0xD000000000000013;
    }

    if (a2 == 2)
    {
      v9 = 0x69766E49746E6573;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xEA00000000006574;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_32;
    }
  }

  if (v6 != v10)
  {
LABEL_32:
    v12 = sub_21BE2995C();
    goto LABEL_33;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_21BB42A18(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_21BB42A64(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_lastStatus))
  {
    sub_21BE2995C();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t block_destroy_helper_3(uint64_t a1)
{
}

{
  return __swift_destroy_boxed_opaque_existential_0Tm((a1 + 32));
}

uint64_t block_destroy_helper_12(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_0Tm((a1 + 32));
}

{
  return __swift_destroy_boxed_opaque_existential_0Tm((a1 + 32));
}

uint64_t block_destroy_helper_14(uint64_t a1)
{
}

{
  return __swift_destroy_boxed_opaque_existential_0Tm((a1 + 32));
}

uint64_t sub_21BB42E80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BB42FF0(a1, v4);
}

uint64_t sub_21BB42F38(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBA6A64;

  return sub_21BB42FF0(a1, v4);
}

uint64_t sub_21BB42FF0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BC706A0;

  return v6(a1);
}

uint64_t sub_21BB430E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BB4319C(a1, v4, v5, v6);
}

uint64_t sub_21BB4319C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_21BE28D7C();
  v4[4] = sub_21BE28D6C();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_21BB447B0;

  return sub_21BB4324C();
}

uint64_t sub_21BB4324C()
{
  v1[20] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DB8, &qword_21BE39C58);
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DC0, &unk_21BE39C60);
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DC8, &qword_21BE42EA0);
  v1[27] = v4;
  v1[28] = *(v4 - 8);
  v1[29] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v1[30] = v5;
  v1[31] = *(v5 - 8);
  v1[32] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v1[33] = v6;
  v1[34] = *(v6 - 8);
  v1[35] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD0, &unk_21BE39C80);
  v1[36] = v7;
  v1[37] = *(v7 - 8);
  v1[38] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC720, &unk_21BE41BD0);
  v1[39] = v8;
  v1[40] = *(v8 - 8);
  v1[41] = swift_task_alloc();
  sub_21BE28D7C();
  v1[42] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BB435BC, v10, v9);
}

uint64_t sub_21BB435BC()
{
  v1 = v0[41];
  v15 = v0[39];
  v2 = v0[38];
  v16 = v0[37];
  v17 = v0[40];
  v3 = v0[36];
  v30 = v0[35];
  v21 = v0[34];
  v18 = v0[33];
  v31 = v0[32];
  v19 = v0[30];
  v20 = v0[31];
  v22 = v0[29];
  v23 = v0[27];
  v25 = v0[26];
  v28 = v0[25];
  v29 = v0[28];
  v27 = v0[24];
  v34 = v0[23];
  v26 = v0[22];
  v24 = v0[21];

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DD8, &qword_21BE39C90);
  sub_21BE26C7C();
  swift_endAccess();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_21BE2635C();
  swift_allocObject();
  v5 = sub_21BE2634C();
  v33 = MEMORY[0x277CBCEC8];
  sub_21BB3B038(&unk_280BD6AA0, &unk_27CDBC720, &unk_21BE41BD0, MEMORY[0x277CBCEC8]);
  sub_21BB43D80();
  sub_21BE26D0C();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &unk_21BE39CA0;
  v6[4] = v4;
  v32 = MEMORY[0x277CBCBE0];
  sub_21BB3B038(&unk_280BD6AE0, &qword_27CDB7DD0, &unk_21BE39C80, MEMORY[0x277CBCBE0]);

  sub_21BE26D1C();

  (*(v16 + 8))(v2, v3);
  (*(v17 + 8))(v1, v15);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC710, &qword_21BE35920);
  sub_21BE26C7C();
  swift_endAccess();
  v7 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v8 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180, v33);
  sub_21BB3CCDC();
  sub_21BE26D0C();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &unk_21BE39CB0;
  v9[4] = v7;
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70, v32);

  sub_21BE26D1C();

  (*(v20 + 8))(v31, v19);
  (*(v21 + 8))(v30, v18);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DE0, &qword_21BE39CC0);
  sub_21BE26C7C();
  swift_endAccess();
  v10 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v11 = sub_21BE2634C();
  sub_21BB3B038(&unk_280BD6AC0, &qword_27CDB7DC8, &qword_21BE42EA0, v33);
  sub_21BB4429C();
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF8, &qword_27CDB7DB8, &qword_21BE39C58, v32);
  sub_21BE26CFC();
  (*(v26 + 8))(v34, v24);
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &unk_21BE39CD0;
  v12[4] = v10;
  sub_21BB3B038(&qword_280BD6AD8, &qword_27CDB7DC0, &unk_21BE39C60, MEMORY[0x277CBCC18]);

  sub_21BE26D1C();

  (*(v28 + 8))(v25, v27);
  (*(v29 + 8))(v22, v23);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  v13 = v0[1];

  return v13();
}

uint64_t sub_21BB43D28()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_21BB43D80()
{
  result = qword_280BD68D0;
  if (!qword_280BD68D0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDBC730, &qword_21BE4B290);
    v4[0] = sub_21BB3CC8C(&qword_280BD68C8, &qword_280BD68E0, 0x277CB8F30);
    result = swift_getWitnessTable(MEMORY[0x277D84F50], v3, v4);
    atomic_store(result, &qword_280BD68D0);
  }

  return result;
}

uint64_t sub_21BB43E60(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v10 = v8;

  sub_21BE2633C();
}

uint64_t sub_21BB43F28()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return sub_21BB43FD8(v2, v3, v0 + 4);
}

uint64_t sub_21BB43FD8(int *a1, uint64_t a2, void *a3)
{
  *(v3 + 16) = *a3;
  v6 = (a1 + *a1);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_21BC4F798;

  return v6(v3 + 16);
}

uint64_t sub_21BB440D4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BB4416C(a1, v1);
}

uint64_t sub_21BB4416C(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2[6] = swift_task_alloc();
  v3 = sub_21BE26A4C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = sub_21BE28D7C();
  v2[11] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC4B5E8, v5, v4);
}

unint64_t sub_21BB4429C()
{
  result = qword_280BD84F0;
  if (!qword_280BD84F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyMarqueeData, &type metadata for FamilyMarqueeData, v0, v1);
    atomic_store(result, &qword_280BD84F0);
  }

  return result;
}

uint64_t sub_21BB442F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return sub_21BB44438(v2, v3, v0 + 4);
}

uint64_t sub_21BB443A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BB44534(a1, v1);
}

uint64_t sub_21BB44438(int *a1, uint64_t a2, void *a3)
{
  *(v3 + 16) = *a3;
  v6 = (a1 + *a1);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_21BC085C8;

  return v6(v3 + 16);
}

uint64_t sub_21BB44534(uint64_t a1, uint64_t a2)
{
  v2[24] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2[25] = swift_task_alloc();
  v2[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DE8, &qword_21BE39D48);
  v2[27] = swift_task_alloc();
  v3 = sub_21BE2626C();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DF0, &qword_21BE39D50);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v4 = sub_21BE26A4C();
  v2[37] = v4;
  v2[38] = *(v4 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = sub_21BE28D7C();
  v2[41] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC4B848, v6, v5);
}

uint64_t sub_21BB44770(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BB447B0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_21BC4C608;

  return sub_21BB448F0();
}

uint64_t sub_21BB448F0()
{
  v1[9] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = sub_21BE28D7C();
  v1[14] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[15] = v3;
  v1[16] = v2;

  return MEMORY[0x2822009F8](sub_21BB449DC, v3, v2);
}

uint64_t sub_21BB449DC(uint64_t a1)
{
  v1[17] = *(v1[9] + 24);
  v1[18] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[19] = v3;
  v1[20] = v2;

  return MEMORY[0x2822009F8](sub_21BB44A74, v3, v2);
}

void sub_21BB44A74()
{
  v1 = *(v0[17] + 40);
  v0[21] = v1;
  if (v1)
  {
    v2 = v0[12];
    v3 = sub_21BE28DAC();
    v0[22] = v3;
    v4 = *(v3 - 8);
    v5 = *(v4 + 56);
    v0[23] = v5;
    v0[24] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v5(v2, 1, 1, v3);
    v8 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v6 = swift_task_alloc();
    v0[25] = v6;
    *v6 = v0;
    v6[1] = sub_21BC4A978;
    v7 = v0[12];

    v8(v0 + 6, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BB44BCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_21BB3B038(a5, a3, a4, protocol conformance descriptor for AsyncStore<A>);
    sub_21BE26C0C();

    sub_21BE26C4C();
  }

  return result;
}

uint64_t sub_21BB44C94(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_21BE2715C();
  }

  else
  {
    sub_21BE2701C();
  }

  return sub_21BE2719C();
}

uint64_t sub_21BB44CFC(uint64_t *a1)
{
  v1 = a1[1];
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_21BE2715C();
    v2 = sub_21BE2719C();
    v8 = sub_21BBA2694();
    return swift_getWitnessTable(MEMORY[0x277CDFAD8], v2, &v7, v5, v6, v1, v8);
  }

  else
  {
    sub_21BE2701C();
    v4 = sub_21BE2719C();
    v6 = sub_21BBA4B1C(&qword_27CDB5058, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    return swift_getWitnessTable(MEMORY[0x277CDFAD8], v4, &v5, v1, v6, v7, v8);
  }
}

uint64_t sub_21BB44DF0(uint64_t *a1)
{
  v1 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_21BE279DC();

    return sub_21BE2719C();
  }

  else
  {
    v3 = sub_21BE2724C();
    v4 = MEMORY[0x277CDFC18];
    swift_getWitnessTable(MEMORY[0x277CDFC18], v3);
    sub_21BE2793C();
    sub_21BE2719C();
    v5 = sub_21BE2946C();
    v7 = v1;
    swift_getWitnessTable(MEMORY[0x277D84F48], v5, &v7);
    v6 = sub_21BE2724C();
    swift_getWitnessTable(v4, v6);
    sub_21BE2793C();
    return sub_21BE2719C();
  }
}

uint64_t sub_21BB44F54(uint64_t *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    v3 = sub_21BE279DC();
    v4 = sub_21BE2719C();
    v19[0] = v2;
    v19[1] = swift_getWitnessTable(MEMORY[0x277CE0750], v3);
    return swift_getWitnessTable(MEMORY[0x277CDFAD8], v4, v19);
  }

  else
  {
    v6 = sub_21BE2724C();
    v7 = MEMORY[0x277CDFC18];
    swift_getWitnessTable(MEMORY[0x277CDFC18], v6);
    v8 = sub_21BE2793C();
    v9 = sub_21BE2719C();
    v10 = sub_21BE2946C();
    v18 = v1;
    swift_getWitnessTable(MEMORY[0x277D84F48], v10, &v18);
    v11 = sub_21BE2724C();
    swift_getWitnessTable(v7, v11);
    v12 = sub_21BE2793C();
    v13 = sub_21BE2719C();
    v14 = MEMORY[0x277CE04A0];
    v17[0] = v2;
    v17[1] = swift_getWitnessTable(MEMORY[0x277CE04A0], v8);
    v15 = MEMORY[0x277CDFAD8];
    v16[0] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v9, v17);
    v16[1] = swift_getWitnessTable(v14, v12);
    return swift_getWitnessTable(v15, v13, v16);
  }
}

uint64_t sub_21BB45180@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BE28A0C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21BB451D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BE28EBC();
  *a1 = result;
  return result;
}

void *sub_21BB451FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for BorderView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BorderView(uint64_t result, int a2, int a3)
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

uint64_t sub_21BB45310()
{

  return swift_deallocObject();
}

uint64_t sub_21BB45394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21BB45460(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB455FC()
{

  return swift_deallocObject();
}

uint64_t sub_21BB45634@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

id sub_21BB456EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2__presenter;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21BB45758()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB45790()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_21BB457E0()
{
  _Block_release(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_21BB45834()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21BB45880()
{

  return swift_deallocObject();
}

uint64_t sub_21BB458B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB45900()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5920, &qword_21BE32AF0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21BB459A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5920, &qword_21BE32AF0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21BB45A64()
{
  MEMORY[0x21CF05D90](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB45A9C()
{

  return swift_deallocObject();
}

id sub_21BB45B34(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_21BE289CC();
  v5 = [v3 BOOLForKey_];

  return v5;
}

void sub_21BB45BA0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_21BE289CC();
  [v3 removeObjectForKey_];
}

uint64_t sub_21BB45C3C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 sub_21BB45C90(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21BB45CA4()
{

  return swift_deallocObject();
}

uint64_t sub_21BB45D0C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5BC8, &qword_21BE33388);
  sub_21BBC7140();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB45D84()
{

  return swift_deallocObject();
}

uint64_t sub_21BB45DFC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB45E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RecoveryContactDataItem(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB45F3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RecoveryContactDataItem(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB45FE0()
{
  v1 = type metadata accessor for RecoveryContactNotSetupCell(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_21BBC9024(*v2, *(v2 + 8));

  v3 = v2 + v1[6];
  v4 = *(type metadata accessor for RecoveryContactDataItem(0) + 20);
  v5 = sub_21BE25D1C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB46174()
{
  v1 = type metadata accessor for RecoveryContactNotSetupCell(0);
  v9 = *(*(v1 - 1) + 64);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_21BBC9024(*(v0 + v2), *(v0 + v2 + 8));

  v4 = v0 + v2 + v1[6];
  v5 = *(type metadata accessor for RecoveryContactDataItem(0) + 20);
  v6 = sub_21BE25D1C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v4 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB46320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5EB0, &unk_21BE38920);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_21BE25B9C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_21BB46444(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5EB0, &unk_21BE38920);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_21BE25B9C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21BB46558()
{
  MyButton = type metadata accessor for FindMyButton(0);
  v2 = (*(*(MyButton - 8) + 80) + 16) & ~*(*(MyButton - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21BE26FEC();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = *(MyButton + 20);
  v6 = sub_21BE25B9C();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_21BB46700@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BBBF5B8();
  *a1 = result;
  return result;
}

__n128 sub_21BB46764(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21BB46770()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB467B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB4686C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB4696C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BE274DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21BB469C4()
{
  v1 = (type metadata accessor for AppleCardFamilySettingsCell(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21BE27B0C();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BB46AE8()
{
  v1 = (type metadata accessor for AppleCardFamilySettingsCell(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v4 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21BE27B0C();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BB46CC0()
{

  return swift_deallocObject();
}

uint64_t sub_21BB46CFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI28PSControllerURLHandlingRelay_resourceDictionary;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21BB46D5C()
{
  MEMORY[0x21CF05D90](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB46D94()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB46DE0()
{

  return swift_deallocObject();
}

uint64_t sub_21BB46E18()
{

  return swift_deallocObject();
}

uint64_t sub_21BB46E50()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21BB46EA0()
{

  return swift_deallocObject();
}

uint64_t sub_21BB46EEC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21BB46F24()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB46FAC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB46FF0()
{
  v1 = *(v0 + qword_27CDB63F0);

  return v1;
}

uint64_t sub_21BB47220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21BB472EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB473BC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB47450()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6608, &qword_21BE34E78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6620, &qword_21BE34E90);
  sub_21BBF2DB4();
  sub_21BB3B038(&qword_27CDB6640, &qword_27CDB6620, &qword_21BE34E90, MEMORY[0x277CDDA18]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB47514()
{

  return swift_deallocObject();
}

uint64_t sub_21BB47564()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB475AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB47668(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB47718()
{
  v1 = (type metadata accessor for FamilyPrivacyDisclosureView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21BE27B0C();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BB47834(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6760, &unk_21BE353B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB478A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(aImF, a3);
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21BB4792C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable(aImF, a4);

  return sub_21BE28EFC();
}

uint64_t sub_21BB479B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(aImF, a3);
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21BB47BC4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB47C04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21BB47C58()
{
  MEMORY[0x21CF05D90](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB47C90()
{

  return swift_deallocObject();
}

uint64_t sub_21BB47CD0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8](a1, a2);
  }

  else
  {
  }
}

uint64_t sub_21BB47D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68C8, &unk_21BE35AF0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68D0, qword_21BE4EA10);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21BB47E4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68C8, &unk_21BE35AF0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68D0, qword_21BE4EA10);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21BB48064()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4809C()
{
  v1 = type metadata accessor for FamilyLandingPageMainView(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v4 = v0 + v3;
  sub_21BB47CD0(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16));

  v5 = v0 + v3 + v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5740, &qword_21BE327B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68B0, &qword_21BE35938) + 32);
    v8 = sub_21BE2722C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21BE2690C();
    (*(*(v10 - 8) + 8))(v4 + v9, v10);
  }

  else
  {
  }

  MEMORY[0x21CF05D90](v4 + v1[13]);

  sub_21BB47CD0(*(v4 + v1[15]), *(v4 + v1[15] + 8), *(v4 + v1[15] + 16));
  sub_21BB47CE0(*(v4 + v1[16]), *(v4 + v1[16] + 8));
  sub_21BB47CE0(*(v4 + v1[17]), *(v4 + v1[17] + 8));

  sub_21BB47CE0(*(v4 + v1[20]), *(v4 + v1[20] + 8));

  return swift_deallocObject();
}

uint64_t sub_21BB48388()
{

  return swift_deallocObject();
}

uint64_t sub_21BB483C0()
{

  return swift_deallocObject();
}

uint64_t sub_21BB48400()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6968, &qword_21BE35C48);
  type metadata accessor for FAFamilyImageLoader(255);
  sub_21BC0B100(&qword_27CDB6970, &qword_27CDB6968, &qword_21BE35C48, sub_21BC09438);
  sub_21BC089F4(&qword_27CDB69A8, 255, type metadata accessor for FAFamilyImageLoader, protocol conformance descriptor for FAFamilyImageLoader);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB48534()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EE8, &unk_21BE36250) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_21BE2575C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB48654()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21BB4868C()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BB486D4()
{
  MEMORY[0x21CF05D90](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB4870C()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4874C()
{

  return swift_deallocObject();
}

uint64_t sub_21BB48784()
{

  return swift_deallocObject();
}

uint64_t sub_21BB487C4()
{
  MEMORY[0x21CF05D90](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB487FC()
{

  return swift_deallocObject();
}

uint64_t sub_21BB48854@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BE2743C();
  *a1 = result;
  return result;
}

uint64_t sub_21BB488AC()
{

  return swift_deallocObject();
}

uint64_t sub_21BB48928@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BE274DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21BB48990()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7048, &unk_21BE36610);
  sub_21BB3B038(&qword_27CDB7050, &qword_27CDB7048, &unk_21BE36610, MEMORY[0x277CE04B0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB48A2C()
{

  return swift_deallocObject();
}

uint64_t sub_21BB48AC0(uint64_t *a1)
{
  v1 = a1[3];
  v2 = *(a1 + 2);
  v7[0] = *(a1 + 1);
  v7[1] = v2;
  v3 = type metadata accessor for FamilyDestinationModifier(255, v7);
  v4 = sub_21BE2719C();
  v6[0] = v1;
  v6[1] = swift_getWitnessTable(byte_21BE36938, v3);
  return swift_getWitnessTable(MEMORY[0x277CDFAD8], v4, v6);
}

uint64_t sub_21BB48B64(void *a1)
{
  v1 = a1[1];
  v2 = sub_21BE2719C();
  v4[0] = v1;
  v4[1] = sub_21BC16790();
  return swift_getWitnessTable(MEMORY[0x277CDFAD8], v2, v4);
}

uint64_t sub_21BB48BCC()
{

  return swift_deallocObject();
}

uint64_t sub_21BB48C24()
{

  return swift_deallocObject();
}

uint64_t sub_21BB48C60()
{

  return swift_deallocObject();
}

uint64_t sub_21BB48C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21BB48CDC(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v43 = *a1;
  v44 = v1;
  v4 = v43;
  v35 = v1;
  v36 = v43;
  v5 = v1;
  v45 = v2;
  v46 = v3;
  v6 = v2;
  v33 = v3;
  v34 = v2;
  v7 = v3;
  v8 = type metadata accessor for FamilyDestinationModifier(255, &v43);
  swift_getWitnessTable(byte_21BE36938, v8);
  v9 = sub_21BE2794C();
  v43 = v4;
  v44 = v5;
  v45 = v6;
  v46 = v7;
  v10 = type metadata accessor for FamilyDestinationModifier.DestinationSheet(255, &v43);
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE04B0], v9);
  v12 = swift_getWitnessTable(byte_21BE36B00, v10);
  v43 = v9;
  v44 = v10;
  v45 = WitnessTable;
  v46 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7138, &qword_21BE36988);
  v43 = v9;
  v44 = v10;
  v45 = WitnessTable;
  v46 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_21BC177EC();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7148, &unk_21BE36990);
  v15 = type metadata accessor for NavigationManager(255);
  v16 = sub_21BC17840();
  v17 = sub_21BC16738();
  v43 = v14;
  v44 = v15;
  v45 = v16;
  v46 = v17;
  v18 = swift_getOpaqueTypeConformance2();
  v43 = OpaqueTypeMetadata2;
  v44 = &type metadata for AnyLinkDestination;
  v45 = v38;
  v46 = OpaqueTypeConformance2;
  v47 = v37;
  v48 = v18;
  swift_getOpaqueTypeMetadata2();
  v43 = v36;
  v44 = v35;
  v45 = v34;
  v46 = v33;
  v19 = type metadata accessor for FamilyDestinationModifier.DestinationContent(255, &v43);
  v20 = swift_getWitnessTable(asc_21BE36AB0, v19);
  v43 = v19;
  v44 = v15;
  v45 = v20;
  v46 = v17;
  v21 = swift_getOpaqueTypeMetadata2();
  v43 = v19;
  v44 = v15;
  v45 = v20;
  v46 = v17;
  v22 = swift_getOpaqueTypeConformance2();
  v43 = MEMORY[0x277CE1428];
  v44 = v21;
  v45 = MEMORY[0x277CE1410];
  v46 = v22;
  v23 = sub_21BE270BC();
  v24 = sub_21BE2719C();
  v42[0] = swift_getWitnessTable(MEMORY[0x277CDD938], v23);
  v42[1] = sub_21BC17798();
  v25 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable(MEMORY[0x277CDFAD8], v24, v42);
  v26 = sub_21BE2782C();
  v27 = sub_21BE2719C();
  v28 = sub_21BE2719C();
  v29 = sub_21BE2785C();
  v43 = OpaqueTypeMetadata2;
  v44 = &type metadata for AnyLinkDestination;
  v45 = v38;
  v46 = OpaqueTypeConformance2;
  v47 = v37;
  v48 = v18;
  v30 = swift_getOpaqueTypeConformance2();
  v41[0] = OpaqueTypeConformance2;
  v41[1] = swift_getWitnessTable(MEMORY[0x277CE0328], v26);
  v40[0] = swift_getWitnessTable(v25, v27, v41);
  v40[1] = MEMORY[0x277CE0790];
  v39[0] = v30;
  v39[1] = swift_getWitnessTable(v25, v28, v40);
  return swift_getWitnessTable(MEMORY[0x277CE0340], v29, v39);
}

uint64_t sub_21BB4911C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = sub_21BE2946C();
  v3 = sub_21BE2946C();
  v7 = v1;
  v4 = MEMORY[0x277CE1550];
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE1550], v2, &v7);
  return swift_getWitnessTable(v4, v3, &WitnessTable);
}

uint64_t sub_21BB491A8(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = sub_21BE2946C();
  v4 = v1;
  return swift_getWitnessTable(MEMORY[0x277CE1550], v2, &v4);
}

uint64_t sub_21BB49210()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21BB49248()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4928C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21BB49358(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB49428()
{

  return swift_deallocObject();
}

uint64_t sub_21BB49470()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB49550@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_21BB49624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21BE25B9C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB496D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21BE25B9C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB49774()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21BB497B4()
{
  v1 = type metadata accessor for PurchaseSharingItem(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  v4 = v1[5];
  v5 = sub_21BE25B9C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB49908()
{
  v1 = (type metadata accessor for PurchaseSharingItemView(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];
  v4 = type metadata accessor for PurchaseSharingItem(0);
  v5 = v4[5];
  v6 = sub_21BE25B9C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB49A74()
{

  return swift_deallocObject();
}

uint64_t sub_21BB49B00()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB49B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5EB0, &unk_21BE38920);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 52);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21BB49C80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5EB0, &unk_21BE38920);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 52);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21BB49DC0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB49E2C()
{
  v1 = type metadata accessor for FamilyMemberAccountDetails(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21BE26FEC();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
  }

  v6 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21BE27B0C();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BB4A054()
{
  v1 = type metadata accessor for FamilyMemberAccountDetails(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21BE26FEC();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BE27B0C();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BB4A294()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7890, &qword_21BE38AB8);
  sub_21BE25D6C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7898, &unk_21BE38AC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5060, &qword_21BE31038);
  sub_21BC3510C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21BC35B30(&qword_27CDB78D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB4A41C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4A464()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4A4AC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4A4F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4A554@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_21BB4A60C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4A65C()
{
  MEMORY[0x21CF05D90](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21BB4A694()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4A6CC()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4A71C()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4A758()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4A7A4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21BB4A7DC()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21BB4A834()
{
  v1 = v0[2];
  v6[0] = v0[1];
  v5 = *&v6[0];
  v2 = v0[3];
  v6[1] = v1;
  v6[2] = v2;
  v3 = *(type metadata accessor for EnumeratedForEach(0, v6) - 8);
  (*(*(v5 - 8) + 8))(v0 + ((*(v3 + 80) + 64) & ~*(v3 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21BB4A938()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4A970(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = sub_21BE268BC();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE4688], v4);
  v8[1] = v4;
  v9 = *(a1 + 8);
  v10 = WitnessTable;
  v11 = v2;
  v6 = sub_21BE285DC();
  v8[0] = v3;
  return swift_getWitnessTable(MEMORY[0x277CE1290], v6, v8);
}

uint64_t sub_21BB4AA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ParentalControlDataItem(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21BB4AAD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ParentalControlDataItem(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB4ABEC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  swift_unknownObjectRelease();

  v4 = sub_21BE25B9C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB4AD30(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21BB4ADEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB4AE9C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4AFE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BE2735C();
  *a1 = result;
  return result;
}

uint64_t sub_21BB4B03C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BE2740C();
  *a1 = result;
  return result;
}

uint64_t sub_21BB4B09C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4B11C()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4B194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RecoveryContactDataItem(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21BB4B250(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RecoveryContactDataItem(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB4B314()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EC0, &qword_21BE39F98);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21BB4B3A8()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4B3E8()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21BB4B470()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4B4C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4B52C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4B5C8()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4B600()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4B68C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7F88, &qword_21BE3AA38);
  sub_21BC5E0E4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB4B6F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___FAPickerSelectMemberHook_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_21BB4B758()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21BB4B790()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4B7D0()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4B810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB80E8, &unk_21BE3AE00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB4BA48()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4BA98()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4BAD0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4BB30()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4BB68()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4BBB8()
{
  MEMORY[0x21CF05D90](v0 + 7);

  return swift_deallocObject();
}

uint64_t sub_21BB4BC50()
{
  swift_unknownObjectRelease();

  MEMORY[0x21CF05D90](v0 + 11);

  return swift_deallocObject();
}

uint64_t sub_21BB4BCF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB4BDB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB4BE64()
{
  v1 = (type metadata accessor for AskToBuyMemberView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_21BE25B9C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB4BFE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BE2729C();
  *a1 = result;
  return result;
}

uint64_t sub_21BB4C054()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4C0AC()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4C0EC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB84D8, &qword_21BE3BE10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7AB0, &qword_21BE39110);
  sub_21BC7B2E0();
  sub_21BC7B400();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB4C180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ParentalControlDataItem(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB4C22C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ParentalControlDataItem(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB4C2D0()
{
  v1 = type metadata accessor for ParentalControlCell(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 24);
  v4 = type metadata accessor for ParentalControlDataItem(0);
  v5 = *(v4 + 20);
  v6 = sub_21BE25D1C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB4C458()
{
  v1 = type metadata accessor for ParentalControlCell(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v9 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + *(v1 + 24);
  v4 = type metadata accessor for ParentalControlDataItem(0);
  v5 = *(v4 + 20);
  v6 = sub_21BE25D1C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB4C604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommLimitsItem(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21BB4C670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommLimitsItem(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21BB4C6E4()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4C758(void *a1)
{
  v1 = sub_21BE284DC();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CDF068], v1);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6DF8, &qword_21BE3B850);
  v3 = sub_21BE2719C();
  v5[2] = v1;
  v5[3] = WitnessTable;
  v5[0] = swift_getOpaqueTypeConformance2();
  v5[1] = sub_21BC89FC0();
  return swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
}

uint64_t sub_21BB4C854()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4C88C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4C8EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_21BE28CBC();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for PersonPickerCell(255, v1, v2, v4);
  WitnessTable = swift_getWitnessTable(byte_21BE3C9B8, v5);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v33 = swift_getWitnessTable(MEMORY[0x277D83980], v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = sub_21BE285DC();
  v30 = v5;
  v31 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable(MEMORY[0x277CE1290], v7, &OpaqueTypeConformance2);
  v8 = sub_21BE2848C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8778, &qword_21BE3C8C0);
  v9 = sub_21BE2719C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8780, &qword_21BE3C8C8);
  v10 = sub_21BE2719C();
  v28[0] = swift_getWitnessTable(MEMORY[0x277CE1138], v8);
  v28[1] = sub_21BB3B038(&qword_27CDB8788, &qword_27CDB8778, &qword_21BE3C8C0, MEMORY[0x277CE0328]);
  v11 = MEMORY[0x277CDFAD8];
  v27[0] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v9, v28);
  v27[1] = sub_21BB3B038(&qword_27CDB8790, &qword_27CDB8780, &qword_21BE3C8C8, MEMORY[0x277CE07C8]);
  swift_getWitnessTable(v11, v10, v27);
  v12 = sub_21BE26E2C();
  v13 = sub_21BE2719C();
  v14 = swift_getWitnessTable(MEMORY[0x277CDD6E0], v12);
  v15 = MEMORY[0x277CDF678];
  v26[0] = v14;
  v26[1] = MEMORY[0x277CDF678];
  v16 = swift_getWitnessTable(v11, v13, v26);
  v30 = v13;
  v31 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v30 = v13;
  v31 = v16;
  v18 = swift_getOpaqueTypeConformance2();
  v30 = v17;
  v31 = v18;
  swift_getOpaqueTypeMetadata2();
  v19 = sub_21BE2719C();
  v30 = v17;
  v31 = v18;
  v25[0] = swift_getOpaqueTypeConformance2();
  v25[1] = MEMORY[0x277CDFB28];
  v20 = swift_getWitnessTable(v11, v19, v25);
  v30 = v19;
  v31 = v20;
  swift_getOpaqueTypeMetadata2();
  v30 = v19;
  v31 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = sub_21BE2705C();
  v22 = sub_21BE2719C();
  v24[0] = swift_getWitnessTable(MEMORY[0x277CDF7D8], v21);
  v24[1] = v15;
  return swift_getWitnessTable(v11, v22, v24);
}

uint64_t sub_21BB4CD58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PersonPickerCell.SelectionView(255, *a1, a1[1], a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8848, &qword_21BE3CA08);
  swift_getTupleTypeMetadata2();
  v4 = sub_21BE286EC();
  v5 = MEMORY[0x277CE14C0];
  swift_getWitnessTable(MEMORY[0x277CE14C0], v4);
  sub_21BE2851C();
  sub_21BE2719C();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8850, &qword_21BE3CA10);
  v12[4] = MEMORY[0x277CE0BD8];
  v12[5] = v6;
  v12[6] = MEMORY[0x277CE0BD8];
  swift_getTupleTypeMetadata();
  v7 = sub_21BE286EC();
  swift_getWitnessTable(v5, v7);
  v8 = sub_21BE284FC();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE1198], v8);
  swift_getOpaqueTypeMetadata2();
  sub_21BE27AEC();
  v10 = sub_21BE2719C();
  v12[2] = v8;
  v12[3] = WitnessTable;
  v12[0] = swift_getOpaqueTypeConformance2();
  v12[1] = sub_21BC8E498(&qword_27CDB6790, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  return swift_getWitnessTable(MEMORY[0x277CDFAD8], v10, v12);
}

uint64_t sub_21BB4CF78()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21BB4CFB0()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4D04C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4D118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21BB4D1E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB4D2B4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4D33C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B48, qword_21BE3D4E8);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_21BB4D484(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B48, qword_21BE3D4E8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21BB4D5CC()
{
  v1 = type metadata accessor for MemberDetailsScreentimeWrapper(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*(v1 - 8) + 64);
  v4 = sub_21BE2694C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v3;

  swift_unknownObjectRelease();
  v8 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21BE27B0C();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21BE288BC();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v3 + v13 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_21BB4D82C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_21BB4D88C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4D8CC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4D98C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x21CF02600]();
  *a1 = result;
  return result;
}

uint64_t sub_21BB4DC00()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4DC38()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4DC90()
{

  return swift_deallocObject();
}

void sub_21BB4DCD4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21BCA80CC(v1);
}

void sub_21BB4DD08(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21BCA7B98(v1);
}

uint64_t sub_21BB4DD38(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21BE25B9C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21BB4DDE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21BE25B9C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB4DE88()
{
  v1 = (type metadata accessor for FAAMSWebView(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = sub_21BE25B9C();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_21BB4DFA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21BB4E004(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21BB4E070()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4E0F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E08, &qword_21BE3E2E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BB4E22C()
{
  v1 = type metadata accessor for TapToRadarDraft(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  if (*(v0 + v2 + 48))
  {
  }

  v3 = v0 + v2 + *(v1 + 44);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8FC0, &qword_21BE49120) + 36);
  v5 = sub_21BE25D1C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB4E500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CommLimitsItem(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB4E5AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CommLimitsItem(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB4E650()
{
  v1 = (type metadata accessor for CommLimitsManagedCell(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v2 + v1[11];
  v4 = type metadata accessor for CommLimitsItem(0);
  v5 = *(v4 + 20);
  v6 = sub_21BE25D1C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(&v3[v5], 1, v6))
  {
    (*(v7 + 8))(&v3[v5], v6);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB4E7C8()
{
  v1 = (type metadata accessor for CommLimitsManagedCell(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v0 + v2 + v1[11];
  v5 = type metadata accessor for CommLimitsItem(0);
  v6 = *(v5 + 20);
  v7 = sub_21BE25D1C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB4E950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9038, &qword_21BE3E778);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9040, &unk_21BE3E780);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21BB4EA8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9038, &qword_21BE3E778);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9040, &unk_21BE3E780);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21BB4EBE4()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4ECD8(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5EB0, &unk_21BE38920);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B48, qword_21BE3D4E8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[12]];

  return v16(v17, a2, v15);
}

char *sub_21BB4EEBC(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5EB0, &unk_21BE38920);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B48, qword_21BE3D4E8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[12]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_21BB4F0A8()
{
  v1 = type metadata accessor for AgeRangeSharingView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21BE26FEC();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_21BCBC920(*(v2 + v1[9]), *(v2 + v1[9] + 8));
  v5 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BE288BC();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21BE27B0C();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  v9 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21BE26F5C();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BB4F378()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4F408()
{
  v1 = type metadata accessor for AgeRangeSharingView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 20) & ~*(*(v1 - 1) + 80));

  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21BE26FEC();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_21BCBC920(*(v2 + v1[9]), *(v2 + v1[9] + 8));
  v5 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BE288BC();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21BE27B0C();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  v9 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21BE26F5C();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BB4F6C4()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4F6FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9168, &qword_21BE3ED30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9170, &unk_21BE3ED38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9190, &qword_21BE3EDA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5078, &unk_21BE31050);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9178, &qword_21BE3ED48);
  sub_21BE25D6C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9180, &unk_21BE3ED50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8130, &qword_21BE3ED60);
  sub_21BB3B038(&qword_27CDB9188, &qword_27CDB9180, &unk_21BE3ED50, aY_2);
  sub_21BB41FA4();
  sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60, MEMORY[0x277CE14C0]);
  swift_getOpaqueTypeConformance2();
  sub_21BCBEAF0(&qword_27CDB78D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21BCBD140(&qword_27CDB9198, &qword_27CDB9190, &qword_21BE3EDA8, sub_21BCBCACC);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB4F9C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9330, &unk_21BE3F1B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB4FA7C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93B0, &qword_21BE3F490);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93D0, &qword_21BE439B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93A8, &qword_21BE3F488);
  sub_21BCC01D0();
  sub_21BBF32A0();
  swift_getOpaqueTypeConformance2();
  sub_21BB41FA4();
  sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0, MEMORY[0x277CE14C0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB4FBBC()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4FC0C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93E8, &qword_21BE3F548);
  sub_21BB3B038(&qword_27CDB93F0, &qword_27CDB93E8, &qword_21BE3F548, MEMORY[0x277CE04B0]);
  sub_21BBF32A0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB4FCCC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4FD0C()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4FD5C()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4FDA4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4FE00()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4FE50()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4FEA0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB4FF40()
{

  return swift_deallocObject();
}

uint64_t sub_21BB4FF90(void *a1)
{
  v1 = sub_21BE2846C();
  v2 = sub_21BE2721C();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CDF028], v1);
  v4 = sub_21BCC83F4();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v8 = type metadata accessor for NavigationControllerReader(255, OpaqueTypeMetadata2, OpaqueTypeConformance2, v7);
  return swift_getWitnessTable(byte_21BE477F8, v8, v1, v2, WitnessTable, v4);
}

uint64_t sub_21BB50080()
{

  return swift_deallocObject();
}

uint64_t sub_21BB500D8()
{

  return swift_deallocObject();
}

uint64_t sub_21BB50130()
{

  return swift_deallocObject();
}

uint64_t sub_21BB50180(void *a1)
{
  v1 = sub_21BE2846C();
  v2 = MEMORY[0x277CDF028];

  return swift_getWitnessTable(v2, v1);
}

uint64_t sub_21BB501D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_21BE2934C();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_21BB50314(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_21BE2934C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21BB50454()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB96A8, &qword_21BE3FF40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB55A0, &unk_21BE32460);
  sub_21BB3B038(&qword_27CDB96B8, &qword_27CDB96A8, &qword_21BE3FF40, MEMORY[0x277CDDB50]);
  sub_21BB41FA4();
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460, MEMORY[0x277CDF028]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB505B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9718, &unk_21BE40070);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21BB50648()
{

  return swift_deallocObject();
}

id sub_21BB506E4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_27CDB9740;
  *a1 = qword_27CDB9740;

  return v2;
}

uint64_t sub_21BB50854()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9808, &qword_21BE40588);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21BB508F8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21BB50940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CommLimitsItem(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB509EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CommLimitsItem(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB50A90()
{
  v1 = (type metadata accessor for CommLimitsNotManagedCell(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[10];
  v4 = type metadata accessor for CommLimitsItem(0);
  v5 = *(v4 + 20);
  v6 = sub_21BE25D1C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB50C00()
{
  v1 = (type metadata accessor for CommLimitsNotManagedCell(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v0 + v2 + v1[10];
  v5 = type metadata accessor for CommLimitsItem(0);
  v6 = *(v5 + 20);
  v7 = sub_21BE25D1C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB50E10()
{

  return swift_deallocObject();
}

uint64_t sub_21BB50E58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB98D8, &qword_21BE40928);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21BB50F54(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9978, &qword_21BE40A90);
  swift_getTupleTypeMetadata3();
  v1 = sub_21BE286EC();
  swift_getWitnessTable(MEMORY[0x277CE14C0], v1);
  v2 = sub_21BE2848C();
  v3 = sub_21BE2719C();
  v5[0] = swift_getWitnessTable(MEMORY[0x277CE1138], v2);
  v5[1] = MEMORY[0x277CDF918];
  swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB51074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9998, &qword_21BE40B30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB510FC(uint64_t a1)
{
  v1 = *(a1 + 24);
  v5[2] = *(a1 + 8);
  v5[3] = MEMORY[0x277D84A98];
  v5[4] = v1;
  v5[5] = MEMORY[0x277CE1538];
  v2 = sub_21BE270BC();
  v3 = sub_21BE2785C();
  v5[0] = v1;
  v5[1] = swift_getWitnessTable(MEMORY[0x277CDD938], v2);
  return swift_getWitnessTable(MEMORY[0x277CE0340], v3, v5);
}

uint64_t sub_21BB511C0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB51200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for PurchaseSharingItem(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB512A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for PurchaseSharingItem(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB51344()
{
  v1 = (type metadata accessor for PurchaseSharingItemView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];
  v4 = type metadata accessor for PurchaseSharingItem(0);
  v5 = v4[5];
  v6 = sub_21BE25B9C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB514A4(uint64_t *a1)
{
  v3 = MEMORY[0x277D84A98];
  v4 = *a1;
  v5 = MEMORY[0x277D84AA8];
  v6 = a1[1];
  v1 = sub_21BE27D2C();
  return swift_getWitnessTable(MEMORY[0x277CDE5A0], v1, v3, v4, v5, v6);
}

uint64_t sub_21BB51504()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB51544()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB5157C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB51638(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB516F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB517A8()
{

  sub_21BCEFCC0(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_21BBC9024(*(v0 + 80), *(v0 + 88));
  v1 = *(v0 + 104);
  if (v1 >> 60 != 15)
  {
    sub_21BBBEF94(*(v0 + 96), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB5181C()
{
  swift_unknownObjectRelease();

  sub_21BCEFCC0(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  sub_21BBC9024(*(v0 + 96), *(v0 + 104));
  v1 = *(v0 + 120);
  if (v1 >> 60 != 15)
  {
    sub_21BBBEF94(*(v0 + 112), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB518AC()
{

  return swift_deallocObject();
}

uint64_t sub_21BB51950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21BE2881C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB519FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21BE2881C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB51AA0()
{
  v1 = (type metadata accessor for FamilyMemberToggleRowRUI(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_21BE2881C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_21BB51DB4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA030, &qword_21BE426A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA060, &qword_21BE426C8);
  sub_21BD089E0();
  sub_21BC354E4();
  sub_21BD08D5C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB51E60()
{

  sub_21BD09234(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_21BB51EC4()
{

  return swift_deallocObject();
}

uint64_t sub_21BB51EFC()
{

  return swift_deallocObject();
}

uint64_t sub_21BB51F44()
{
  swift_unknownObjectRelease();

  sub_21BB47CE0(*(v0 + 80), *(v0 + 88));
  sub_21BB47CE0(*(v0 + 104), *(v0 + 112));

  MEMORY[0x21CF05D90](v0 + 160);

  return swift_deallocObject();
}

void *sub_21BB52038@<X0>(void *a1@<X8>)
{
  sub_21BD0A07C();
  result = sub_21BE2755C();
  *a1 = v3;
  return result;
}

uint64_t sub_21BB5209C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA0D0, &qword_21BE42A50);
  sub_21BD090B4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB52114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EmergencyContactDataItem(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21BB521D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for EmergencyContactDataItem(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB52288()
{
  v1 = *(type metadata accessor for EmergencyContactView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(type metadata accessor for EmergencyContactDataItem(0) + 28);
  v4 = sub_21BE25D1C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB5240C()
{
  _Block_release(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_21BB52460()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA2F8, &unk_21BE430F8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21BB52530()
{

  return swift_deallocObject();
}

uint64_t sub_21BB52568()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA300, &qword_21BE43108);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21BB52608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB526C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB52780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21BB5284C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB52920(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA3D0, &qword_21BE43350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BB529B8()
{
  v1 = type metadata accessor for SharedFamilyGroceryIntroView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21BE26F5C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BB52B48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5090, &qword_21BE43430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB52BB8()
{
  v1 = type metadata accessor for SharedFamilyGroceryIntroView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21BE26F5C();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BB52D54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BE2751C();
  *a1 = result;
  return result;
}

uint64_t sub_21BB52DAC()
{
  v1 = type metadata accessor for SharedFamilyGroceryIntroView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21BE26F5C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BB52F44()
{

  sub_21BD16CA8(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_21BB52FC0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B48, qword_21BE3D4E8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_21BB53150(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B48, qword_21BE3D4E8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_21BB53358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BeneficiaryItemDataItem(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21BB53414(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BeneficiaryItemDataItem(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

id sub_21BB534D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_account;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21BB5353C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_21BE2934C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21BB5366C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_21BE2934C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21BB537B0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB537E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA800, &unk_21BE44448);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BB53850()
{
  v1 = type metadata accessor for MultipleInviteViewForInvitee(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;

  v5 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BE26F5C();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 28);
  v9 = sub_21BE2934C();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_21BB539E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA800, &unk_21BE44448);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA880, &unk_21BE44510);
  sub_21BD2B0E4();
  sub_21BD2B308();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB53A8C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21BB53ADC()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_21BB53B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA960, qword_21BE44750);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21BB53C98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA960, qword_21BE44750);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21BB53DD8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_21BE25B9C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB53F08()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA970, &unk_21BE44888);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA978, &unk_21BE448A8);
  sub_21BD300A8();
  sub_21BD301F0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB54048()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BB54090()
{

  return swift_deallocObject();
}

uint64_t sub_21BB540D4(void *a1)
{
  v1 = a1[1];
  v2 = sub_21BE2946C();
  v4 = v1;
  return swift_getWitnessTable(MEMORY[0x277CE1550], v2, &v4);
}

uint64_t sub_21BB54128(int8x16_t *a1)
{
  v2 = sub_21BE2785C();
  v4 = vextq_s8(a1[1], a1[1], 8uLL);
  return swift_getWitnessTable(MEMORY[0x277CE0340], v2, &v4);
}

uint64_t sub_21BB541B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21BB54284(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB54350()
{
  type metadata accessor for StaticSelectableCellTemplate(255);
  sub_21BD3A4A4(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate, aA7F);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB543E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppleCashItem(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21BB544A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppleCashItem(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB54558()
{
  v1 = *(type metadata accessor for AppleCashItemView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = type metadata accessor for AppleCashItem(0);
  v4 = v3[5];
  v5 = sub_21BE25B9C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_21BB546E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAEA8, &qword_21BE459C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB5479C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAEA8, &qword_21BE459C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB5484C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBAE38, &qword_21BE45960);
  sub_21BD3F110(&qword_27CDBAE48, &qword_27CDBAE38, &qword_21BE45960, sub_21BD3F0E0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB548F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB549AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB54A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21BB54B68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB54C30()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB000, &unk_21BE45F08);
  sub_21BD4A978();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB54CB4()
{
  v1 = sub_21BE25B9C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21BB54DD4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21BB54E40()
{
  if (*v0)
  {
    return 0x6F50746369727473;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_21BB54EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5EB0, &unk_21BE38920);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21BB54F8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5EB0, &unk_21BE38920);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB55064()
{

  return swift_deallocObject();
}

uint64_t sub_21BB550E0()
{
  v1 = type metadata accessor for SharedFamilyGroceryIntroView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21BE26F5C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BB55268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21BB55334(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB553FC()
{
  type metadata accessor for StaticSelectableCellTemplate(255);
  sub_21BD3A4A4(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate, aA7F);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB55494(void *a1)
{
  sub_21BE2719C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB5F0, &qword_21BE47618);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB5F8, &qword_21BE47620);
  swift_getTupleTypeMetadata3();
  v1 = sub_21BE286EC();
  swift_getWitnessTable(MEMORY[0x277CE14C0], v1);
  v2 = sub_21BE284FC();
  v3 = sub_21BE2719C();
  v4 = sub_21BE2719C();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE1198], v2);
  v6 = MEMORY[0x277CDF918];
  v10[0] = WitnessTable;
  v10[1] = MEMORY[0x277CDF918];
  v7 = MEMORY[0x277CDFAD8];
  v9[0] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v10);
  v9[1] = v6;
  return swift_getWitnessTable(v7, v4, v9);
}

uint64_t sub_21BB555EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for NavigationControllerReader.ReaderRepresentable(255, *a1, v4, a4);
  v6 = sub_21BE2719C();
  v12[0] = swift_getWitnessTable(aQ_9, v5);
  v12[1] = MEMORY[0x277CDF900];
  v7 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable(MEMORY[0x277CDFAD8], v6, v12);
  v8 = sub_21BE2782C();
  v9 = sub_21BE2719C();
  v11[0] = v4;
  v11[1] = swift_getWitnessTable(MEMORY[0x277CE0328], v8);
  return swift_getWitnessTable(v7, v9, v11);
}

uint64_t sub_21BB556EC()
{

  return swift_deallocObject();
}

id sub_21BB55834@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BD64E2C();
  *a1 = result;
  return result;
}

void sub_21BB55860(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController);
  *(*a2 + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController) = *a1;
  v3 = v2;
}

uint64_t sub_21BB55900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21BB559CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21BB55AA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB9A0, &qword_21BE48008);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BB55B28(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5D50, &qword_21BE36430);
  sub_21BE2719C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC520, &qword_21BE38BA0);
  sub_21BE2719C();
  sub_21BE2946C();
  swift_getTupleTypeMetadata2();
  v1 = sub_21BE286EC();
  v2 = MEMORY[0x277CE14C0];
  swift_getWitnessTable(MEMORY[0x277CE14C0], v1);
  sub_21BE284FC();
  swift_getTupleTypeMetadata2();
  v3 = sub_21BE286EC();
  swift_getWitnessTable(v2, v3);
  v4 = sub_21BE2848C();
  v5 = MEMORY[0x277CE1138];

  return swift_getWitnessTable(v5, v4);
}

uint64_t sub_21BB55C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RecoveryContactDataItem(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21BB55D1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RecoveryContactDataItem(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21BB55DD0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBA48, &qword_21BE481F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBA50, &qword_21BE48228);
  sub_21BBC24D4();
  sub_21BD6A3DC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BB55EA0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[13];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_21BB55FE4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60F0, qword_21BE33E00);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[13];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_21BB56144()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_21BB56194(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21BE25B9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56C0, qword_21BE32630);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[8]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_21BE2934C();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}