uint64_t type metadata accessor for PMDebugSettingsManager(uint64_t a1)
{
  result = qword_27CDEB110;
  if (!qword_27CDEB110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6E7DE0(uint64_t a1)
{
  sub_21C6E7ED8();
  if (v1 <= 0x3F)
  {
    sub_21C6E7F28(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21C6E7ED8()
{
  if (!qword_27CDEAEE0)
  {
    v0 = sub_21CB81DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEAEE0);
    }
  }
}

void sub_21C6E7F28(uint64_t a1)
{
  if (!qword_27CDEB120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB128, &qword_21CBC4E20);
    v1 = sub_21CB81DD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEB120);
    }
  }
}

void sub_21C6E7F8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t ObservedObject.init(dependency:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  PMDependency.init(_:)(a1, &v9);
  v3 = *(v2 + *MEMORY[0x277D84DE8] + 8);
  v4 = v9;

  v10[1] = v4;
  type metadata accessor for PMDependency(0, v3, v5, v6);
  PMDependency.wrappedValue.getter(v10);
  v7 = sub_21CB82674();

  return v7;
}

uint64_t sub_21C6E8180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21C6E81C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v6 = sub_21CB85E54();
  v7 = sub_21CB85E54();
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = *(v6 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v31 - v19;
  v21 = *(a2 + 16);
  v33 = a1;
  if (v21 && (v22 = sub_21CB10910(a1), (v23 & 1) != 0))
  {
    sub_21C7A3394(*(a2 + 56) + 32 * v22, v35);
    v24 = swift_dynamicCast();
    v25 = *(v5 - 8);
    v26 = *(v25 + 56);
    if (!v24)
    {
      v26(v16, 1, 1, v5);
      (*(v10 + 8))(v16, v6);
      (*(v10 + 56))(v9, 1, 1, v6);
      (*(v32 + 8))(v9, v7);
      goto LABEL_10;
    }

    v27 = *(v5 - 8);
    v28 = *(v25 + 56);
    v26(v16, 0, 1, v5);
    (*(v27 + 32))(v9, v16, v5);
    v28(v9, 0, 1, v5);
  }

  else
  {
    v27 = *(v5 - 8);
    (*(v27 + 56))(v9, 1, 1, v5, v18);
  }

  (*(v10 + 56))(v9, 0, 1, v6);
  v29 = *(v10 + 32);
  v29(v20, v9, v6);
  v29(v13, v20, v6);
  if ((*(v27 + 48))(v13, 1, v5) != 1)
  {
    return (*(v27 + 32))(v34, v13, v5);
  }

  (*(v10 + 8))(v13, v6);
LABEL_10:
  if (qword_27CDEA3C8 != -1)
  {
    swift_once();
  }

  v35[0] = qword_27CE184E8;

  swift_getAtKeyPath();
}

void *sub_21C6E8658()
{
  type metadata accessor for PMDependencyStore();
  v0 = swift_allocObject();
  result = sub_21C6E8694();
  qword_27CE184E8 = v0;
  return result;
}

void *sub_21C6E8694()
{
  v1 = v0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED220, &qword_21CBA6458);
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB560, &unk_21CBB4090);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = 1;
  v9 = [objc_opt_self() sharedStore];
  type metadata accessor for PMGeneratedPasswordStore(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC17PasswordManagerUI24PMGeneratedPasswordStore__generatedPasswords;
  *&aBlock = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEA8, &unk_21CBA38A0);
  sub_21CB81D74();
  (*(v6 + 32))(v10 + v11, v8, v5);
  *(v10 + 16) = v9;
  *(v10 + 24) = 0;
  v12 = v9;
  sub_21C6E9BB8();
  v13 = objc_opt_self();
  v14 = [v13 defaultCenter];
  v15 = *MEMORY[0x277D49C10];
  *&v32 = sub_21C95CDB4;
  *(&v32 + 1) = v10;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v31 = sub_21C7ADA6C;
  *(&v31 + 1) = &block_descriptor_5;
  v16 = _Block_copy(&aBlock);
  v17 = v12;

  v18 = [v14 addObserverForName:v15 object:v17 queue:0 usingBlock:v16];
  _Block_release(v16);
  swift_unknownObjectRelease();

  v1[5] = v10;
  *(&v31 + 1) = &type metadata for PMGroupMemberImageProviderMain;
  *&v32 = &off_282E55730;
  type metadata accessor for PMGroupMemberImageCache();
  v19 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&aBlock, &type metadata for PMGroupMemberImageProviderMain);
  v37 = &type metadata for PMGroupMemberImageProviderMain;
  v38 = &off_282E55730;
  swift_defaultActor_initialize();
  *(v19 + 112) = MEMORY[0x277D84F98];
  sub_21C6EA568(&v36, v19 + 120);
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v1[6] = v19;
  type metadata accessor for PMGroupsStore(0);
  v20 = swift_allocObject();
  v1[7] = sub_21C6E98D4(v20);
  v1[8] = 0;
  type metadata accessor for PMPasswordManager(0);
  swift_allocObject();
  sub_21C6EBF3C(0, 0);
  v1[9] = v21;
  v1[10] = &off_282E59B38;
  v22 = type metadata accessor for PMTipsProviderMain();
  v23 = swift_allocObject();
  *(v23 + 16) = MEMORY[0x277D84FA0];
  v24 = [v13 defaultCenter];
  [v24 addObserver:v23 selector:sel_refreshTips name:*MEMORY[0x277D49C18] object:0];

  v37 = v22;
  v38 = sub_21C6ECC3C();
  *&v36 = v23;
  type metadata accessor for PMTipsStore(0);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore__tip;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  aBlock = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED230, &unk_21CBA6460);
  sub_21CB81D74();
  (*(v2 + 32))(v25 + v26, v4, v29);
  *(v25 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_observeTipsHandle) = 0;
  sub_21C6E9A08(&v36, v25 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider);
  sub_21C6ED308(v23);
  __swift_destroy_boxed_opaque_existential_0(&v36);
  v1[11] = v25;
  v1[12] = [objc_opt_self() pm_defaults];
  v1[13] = [objc_allocWithZone(type metadata accessor for PMNotificationManager(0)) init];
  type metadata accessor for PMAppStoreReviewController();
  swift_allocObject();
  v1[14] = sub_21C6ED710();
  type metadata accessor for PMWiFiNetworksStore(0);
  swift_allocObject();
  v1[15] = PMWiFiNetworksStore.init()();
  type metadata accessor for PMDebugSettingsManager(0);
  swift_allocObject();
  v1[16] = sub_21C6EDC14();
  v1[17] = 0;
  v1[18] = 0;
  v1[19] = 0;
  return v1;
}

uint64_t sub_21C6E8C44(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PMDependency.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C6E81C8(v3, v5, a1);
}

uint64_t sub_21C6E8D44(uint64_t a1)
{
  result = type metadata accessor for PMGeneratedPassword.ID(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PMGeneratedPassword.Storage(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21C6E8DE8(uint64_t a1)
{
  sub_21C6E8F4C(319, &qword_27CDEAFA0, 0x277D49A38);
  if (v1 <= 0x3F)
  {
    sub_21C6E8F94(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_21C6E8E6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFABF8, &qword_21CBD0270);
  swift_allocObject();
  result = sub_21CB86534();
  qword_27CE18778 = result;
  return result;
}

uint64_t sub_21C6E8ED0(uint64_t a1)
{
  result = sub_21CB80DD4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21C6E8F4C(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_21C6E8F94(uint64_t a1)
{
  if (!qword_27CDF31F8)
  {
    sub_21C6E8F4C(255, &qword_27CDEAC38, 0x277CCAD08);
    sub_21CB80DD4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CDF31F8);
    }
  }
}

void sub_21C6E9048(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21CB862E4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PMGeneratedPassword(0);
        v6 = sub_21CB85844();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PMGeneratedPassword(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21C9A9C38(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21C9A9700(0, v2, 1, a1);
  }
}

void sub_21C6E9174(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
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

void sub_21C6E9240(uint64_t a1)
{
  sub_21C6EA5CC(319, &qword_27CDF52C8, &qword_27CDEDBA8, &qword_21CBA9380);
  if (v1 <= 0x3F)
  {
    sub_21C6E7ED8();
    if (v2 <= 0x3F)
    {
      sub_21C6EA5CC(319, &qword_27CDF52D0, &qword_27CDEFEB8, &unk_21CBADD00);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21C6E939C(uint64_t a1)
{
  sub_21CB85C44();
  if (v1 <= 0x3F)
  {
    sub_21C6E9428();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C6E9428()
{
  if (!qword_27CDEE458)
  {
    v0 = sub_21CB85864();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEE458);
    }
  }
}

uint64_t sub_21C6E9478(uint64_t a1, uint64_t a2, uint64_t (*a3)(__n128), uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v40 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA8, &qword_21CBADCD0);
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x28223BE20](v8);
  v36 = &v32 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEB8, &unk_21CBADD00);
  MEMORY[0x28223BE20](v35);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v33 = &v32 - v12;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v13 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC68, &qword_21CBBD620);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  v43[3] = a2;
  v43[4] = a3(v18);
  *(a1 + 16) = swift_getKeyPath(byte_21CBBD7A0);
  v21 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__invitations;
  v22 = MEMORY[0x277D84F90];
  v41 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBA8, &qword_21CBA9380);
  sub_21CB81D74();
  v23 = *(v17 + 32);
  v23(a1 + v21, v20, v16);
  v24 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__groups;
  v41 = v22;
  sub_21CB81D74();
  v23(a1 + v24, v20, v16);
  v25 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__hasLoadedGroups;
  LOBYTE(v41) = 0;
  sub_21CB81D74();
  (*(v13 + 32))(a1 + v25, v15, v32);
  v26 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_invitationsAndGroupsPublisher;
  v41 = v22;
  v42 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3FB8, &qword_21CBBD7C0);
  swift_allocObject();
  *(a1 + v26) = sub_21CB81D34();
  v27 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__newlyCreatedGroup;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEC0, &qword_21CBC32C0);
  v29 = v33;
  (*(*(v28 - 8) + 56))(v33, 1, 1, v28);
  sub_21C6EA724(v29, v34);
  v30 = v36;
  sub_21CB81D74();
  sub_21C6EA794(v29, &qword_27CDEFEB8, &unk_21CBADD00);
  (*(v37 + 32))(a1 + v27, v30, v38);
  *(a1 + OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_observeGroupsHandle) = 0;
  sub_21C6E9A08(v43, a1 + OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_provider);
  sub_21C6EA7F4(v39, v40);
  __swift_destroy_boxed_opaque_existential_0(v43);
  return a1;
}

uint64_t type metadata accessor for PMTipsStore(uint64_t a1)
{
  result = qword_27CDFA0F8;
  if (!qword_27CDFA0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6E9964(uint64_t a1)
{
  sub_21C6EA6C0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21C6E9A08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for PMGeneratedPasswordStore(uint64_t a1)
{
  result = qword_27CDF38A8;
  if (!qword_27CDF38A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6E9AB8(uint64_t a1)
{
  if (!qword_27CDF38B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBEA8, &unk_21CBA38A0);
    v1 = sub_21CB81DD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF38B8);
    }
  }
}

void sub_21C6E9B1C(uint64_t a1)
{
  sub_21C6E9AB8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21C6E9BB8()
{
  v1 = type metadata accessor for PMGeneratedPassword(0);
  v40 = *(v1 - 8);
  v41 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = (v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = v35 - v5;
  if ((*(v0 + 24) & 1) == 0)
  {
    v7 = *(v0 + 16);
    v8 = [v7 allUnexpiredGeneratedPasswords];
    sub_21C6E8F4C(0, &qword_27CDEAFA0, 0x277D49A38);
    v9 = sub_21CB85824();

    v10 = v9;
    if (v9 >> 62)
    {
      v33 = v9;
      v11 = sub_21CB85FA4();
      v10 = v33;
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_4:
        v12 = v10;
        v35[1] = v0;
        v42 = MEMORY[0x277D84F90];
        sub_21C7B0B84(0, v11 & ~(v11 >> 63), 0);
        if (v11 < 0)
        {
          __break(1u);

          __break(1u);
          return;
        }

        v35[0] = v7;
        v13 = 0;
        v14 = v42;
        v15 = v12;
        v36 = v12 & 0xC000000000000001;
        v37 = v11;
        v38 = v12;
        v39 = v6;
        do
        {
          if (v36)
          {
            v16 = MEMORY[0x21CF15BD0](v13, v15);
          }

          else
          {
            v16 = *(v15 + 8 * v13 + 32);
          }

          v17 = v16;
          *(v3 + *(v41 + 20)) = v16;
          type metadata accessor for PMGeneratedPassword.Storage(0);
          swift_storeEnumTagMultiPayload();
          v18 = v17;
          v19 = [v18 protectionSpace];
          if (v19)
          {
            v20 = v19;
            v21 = [v19 host];
          }

          else
          {
            v21 = [objc_opt_self() privateBrowsingSentinel];
          }

          v22 = sub_21CB855C4();
          v24 = v23;

          v25 = [v18 password];
          v26 = sub_21CB855C4();
          v28 = v27;

          v29 = [v18 generationDate];
          type metadata accessor for PMGeneratedPassword.ID(0);
          sub_21CB80D94();

          *v3 = v22;
          v3[1] = v24;
          v3[2] = v26;
          v3[3] = v28;
          v30 = v39;
          sub_21C7D5F48(v3, v39);
          v42 = v14;
          v32 = *(v14 + 16);
          v31 = *(v14 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_21C7B0B84((v31 > 1), v32 + 1, 1);
            v14 = v42;
          }

          ++v13;
          *(v14 + 16) = v32 + 1;
          sub_21C7D5F48(v30, v14 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32);
          v15 = v38;
        }

        while (v37 != v13);

        v7 = v35[0];
        goto LABEL_18;
      }
    }

    v14 = MEMORY[0x277D84F90];
LABEL_18:
    v42 = v14;

    sub_21C6E9FD0(&v42);

    v34 = v42;
    swift_getKeyPath(asc_21CBB8430);
    swift_getKeyPath(asc_21CBB8458);
    v42 = v34;

    sub_21CB81DC4();
    sub_21C6E9174(v7, 0);
  }
}

void sub_21C6E9FD0(uint64_t *a1)
{
  v2 = *(type metadata accessor for PMGeneratedPassword(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21C6EA078(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_21C6E9048(v5);
  *a1 = v3;
}

void *sub_21C6EA08C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
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

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
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

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_21C7A3394(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
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

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_21C7A3394(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
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

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
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

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
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

uint64_t sub_21C6EA568(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t type metadata accessor for PMGroupsStore(uint64_t a1)
{
  result = qword_27CDF52B8;
  if (!qword_27CDF52B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6EA5CC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21CB81DD4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata accessor for PMSharingGroup(uint64_t a1)
{
  result = qword_27CDF8FE0;
  if (!qword_27CDF8FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21C6EA66C()
{
  result = qword_27CDF5300;
  if (!qword_27CDF5300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5300);
  }

  return result;
}

void sub_21C6EA6C0(uint64_t a1)
{
  if (!qword_27CDFA108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDED230, &unk_21CBA6460);
    v1 = sub_21CB81DD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDFA108);
    }
  }
}

uint64_t sub_21C6EA724(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEB8, &unk_21CBADD00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6EA794(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21C6EA7F4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_21CB858E4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_21CB858B4();

  v10 = sub_21CB858A4();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;

  *(v4 + OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_observeGroupsHandle) = sub_21C98B308(0, 0, v7, a2, v11);
}

uint64_t sub_21C6EA958()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t type metadata accessor for PMPasswordManager(uint64_t a1)
{
  result = qword_27CDF7638;
  if (!qword_27CDF7638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6EA9FC(uint64_t a1)
{
  type metadata accessor for PMAccount.UniqueID(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PMAccount.Storage(319);
    if (v2 <= 0x3F)
    {
      sub_21C6EE344(319, &qword_27CDEB2F0, &type metadata for PMSecurityRecommendation, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21C6EAACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB85E54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C6EAB20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB85E54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C6EAB74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB85E54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21C6EABC8(uint64_t a1)
{
  result = sub_21C6E8F4C(319, &qword_27CDF76E0, 0x277D49B20);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PMAccount.MockData(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21C6EAC80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for PMAccount.UniqueID(0);
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
      v13 = type metadata accessor for PMAccount.Storage(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21C6EADA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C6EADEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21C6EAE34(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21C6EAE88(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_21CB81C84();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_21CB81C94();
}

uint64_t sub_21C6EAF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_21C6EE6C0();
  result = sub_21CB85E44();
  *a4 = result;
  return result;
}

void sub_21C6EAFA0(uint64_t a1)
{
  sub_21C6E7ED8();
  if (v1 <= 0x3F)
  {
    sub_21C6EA5CC(319, &qword_27CDEAED0, &qword_27CDEAED8, &unk_21CBA0730);
    if (v2 <= 0x3F)
    {
      sub_21C6EA5CC(319, &qword_27CDED800, &qword_27CDED808, &qword_21CBA7578);
      if (v3 <= 0x3F)
      {
        sub_21C6EA5CC(319, &qword_27CDED810, &qword_27CDED818, &unk_21CBA7580);
        if (v4 <= 0x3F)
        {
          sub_21C6EA5CC(319, &qword_27CDED820, &qword_27CDED828, &qword_21CBAF0E0);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_21C6EB1B4(uint64_t a1)
{
  sub_21CB80E34();
  if (v1 <= 0x3F)
  {
    sub_21C6E7ED8();
    if (v2 <= 0x3F)
    {
      sub_21C6EB2D8(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21C6EB2D8(uint64_t a1)
{
  if (!qword_27CDEAED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAED8, &unk_21CBA0730);
    v1 = sub_21CB81DD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEAED0);
    }
  }
}

char *sub_21C6EB34C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED7D0, &qword_21CBA74D0);
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x28223BE20](v2);
  v64 = &v56 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED780, &qword_21CBA74C8);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v56 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD78, &qword_21CBA5730);
  v7 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v67 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v69 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - v15;
  *(v0 + 3) = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF80, &unk_21CBA0A30);
  swift_allocObject();
  *(v0 + 4) = sub_21CB81D14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF90, &qword_21CBA77E0);
  swift_allocObject();
  *(v0 + 5) = sub_21CB81D14();
  v17 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__loadedAccounts;
  LOBYTE(v73) = 0;
  v68 = v16;
  sub_21CB81D74();
  v18 = *(v14 + 32);
  v70 = v14 + 32;
  v71 = v18;
  v18(&v1[v17], v16, v13);
  v19 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accounts;
  v73 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  sub_21CB81D74();
  v21 = *(v10 + 32);
  v21(&v1[v19], v12, v9);
  v22 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accountsInPersonalKeychain;
  v73 = v20;
  sub_21CB81D74();
  v21(&v1[v22], v12, v9);
  v23 = v10 + 32;
  v24 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accountsByGroupID;
  v73 = MEMORY[0x277D84F98];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED808, &qword_21CBA7578);
  v25 = v67;
  sub_21CB81D74();
  v26 = *(v7 + 32);
  v59 = v7 + 32;
  v60 = v26;
  v26(&v1[v24], v25, v72);
  v27 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__inProgressBulkOperation;
  v73 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED818, &unk_21CBA7580);
  sub_21CB81D74();
  (*(v62 + 32))(&v1[v27], v6, v63);
  v28 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accountsWithNeverSaveMarker;
  v29 = MEMORY[0x277D84F90];
  v73 = MEMORY[0x277D84F90];
  sub_21CB81D74();
  v21(&v1[v28], v12, v9);
  v30 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accountsWithPasskeys;
  v73 = v29;
  sub_21CB81D74();
  v57 = v9;
  v21(&v1[v30], v12, v9);
  v58 = v21;
  v56 = v23;
  v31 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accountsWithTOTPGenerators;
  v73 = v29;
  v32 = v29;
  sub_21CB81D74();
  v21(&v1[v31], v12, v9);
  v33 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__showHiddenSecurityRecommendations;
  v34 = [objc_opt_self() pm_defaults];
  v35 = sub_21CB85584();
  LOBYTE(v31) = [v34 BOOLForKey:v35 withDefault:0];

  LOBYTE(v73) = v31;
  v36 = v68;
  sub_21CB81D74();
  v37 = v71;
  v71(&v1[v33], v36, v69);
  v38 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__recentlyDeletedAccounts;
  v39 = v32;
  v73 = v32;
  sub_21CB81D74();
  v40 = v57;
  v41 = v58;
  v58(&v1[v38], v12, v57);
  v42 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__recentlyDeletedAccountsInPersonalKeychain;
  v73 = v32;
  sub_21CB81D74();
  v41(&v1[v42], v12, v40);
  v43 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__recentlyDeletedAccountsByGroupID;
  v73 = MEMORY[0x277D84F98];
  v44 = v67;
  sub_21CB81D74();
  v60(&v1[v43], v44, v72);
  v45 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__hasUnacknowledgedHighPriorityWarnings;
  LOBYTE(v73) = 1;
  v46 = v68;
  sub_21CB81D74();
  v47 = v69;
  v37(&v1[v45], v46, v69);
  v48 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__highPrioritySecurityRecommendations;
  v73 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED828, &qword_21CBAF0E0);
  v49 = v64;
  sub_21CB81D74();
  v50 = v66;
  v51 = *(v65 + 32);
  v51(&v1[v48], v49, v66);
  v52 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__standardPrioritySecurityRecommendations;
  v73 = v39;
  sub_21CB81D74();
  v51(&v1[v52], v49, v50);
  v53 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__hiddenSecurityRecommendations;
  v73 = v39;
  sub_21CB81D74();
  v51(&v1[v53], v49, v50);
  v54 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__loadedSecurityRecommendations;
  LOBYTE(v73) = 0;
  sub_21CB81D74();
  v71(&v1[v54], v46, v47);
  return v1;
}

void sub_21C6EBB68(uint64_t a1)
{
  if (!qword_27CDF7648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDF7650, &qword_21CBADD58);
    v1 = sub_21CB85E54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF7648);
    }
  }
}

uint64_t sub_21C6EBBEC(uint64_t a1)
{
  result = type metadata accessor for PMAccount.CombinedUniqueID(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PMAccount.SIWAUniqueID(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21C6EBC60(uint64_t a1)
{
  sub_21C6EE344(319, &qword_27CDEB308, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21C6EE344(319, &qword_27CDEB318, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_21C6EAACC(319, &qword_27CDEB330, MEMORY[0x277D49960]);
      if (v3 <= 0x3F)
      {
        sub_21C6EAACC(319, &qword_27CDEB328, MEMORY[0x277D49948]);
        if (v4 <= 0x3F)
        {
          sub_21C6EAACC(319, &qword_27CDEABC0, MEMORY[0x277D49978]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21C6EBDC8(uint64_t a1)
{
  sub_21C6EE344(319, &qword_27CDEB308, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21CB85B74();
    if (v2 <= 0x3F)
    {
      sub_21C6EAACC(319, &qword_27CDEABC0, MEMORY[0x277D49978]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21C6EBED4(uint64_t a1)
{
  if (!qword_27CDEB320)
  {
    sub_21C6E8F4C(255, &qword_27CDEB030, 0x277D49B78);
    v1 = sub_21CB85E54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEB320);
    }
  }
}

void sub_21C6EBF3C(void *a1, void *a2)
{
  v3 = v2;
  v69 = a2;
  v70 = a1;
  v61 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v58 - v5;
  v63 = sub_21CB80BE4();
  v60 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB85CE4();
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB85CC4();
  MEMORY[0x28223BE20](v10);
  v11 = sub_21CB85404();
  MEMORY[0x28223BE20](v11 - 8);
  v2[3] = 0;
  v2[4] = 0;
  v12 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_lastModifiedAccounts;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7650, &qword_21CBADD58);
  (*(*(v13 - 8) + 56))(v2 + v12, 1, 1, v13);
  v66 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_queueForLoadingAccounts;
  v14 = sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v64 = "pmui.accounts.fetch";
  v65 = v14;
  sub_21CB853E4();
  v15 = MEMORY[0x277D84F90];
  v71[0] = MEMORY[0x277D84F90];
  sub_21C6EADA4(&unk_27CDF8670, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7700, &unk_21CBC5B60);
  sub_21C6EAE34(&qword_27CDF8680, &unk_27CDF7700, &unk_21CBC5B60);
  sub_21CB85F14();
  (*(v67 + 104))(v9, *MEMORY[0x277D85260], v68);
  *(v2 + v66) = sub_21CB85D14();
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_isIgnoringAccountStoreChangeNotifications) = 0;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedSavedAccounts) = v15;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedAccountsWithNeverSaveMarker) = v15;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedWarnings) = v15;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedRecentlyDeletedSavedAccounts) = v15;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedAccountsWithTOTPGenerators) = v15;
  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v16 = sub_21CB81C84();
  __swift_project_value_buffer(v16, qword_27CE186E0);
  v17 = sub_21CB81C64();
  v18 = sub_21CB85AE4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v71[0] = v20;
    *v19 = 136446210;
    v21 = sub_21CB86554();
    v23 = sub_21C98E004(v21, v22, v71);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_21C6E5000, v17, v18, "[%{public}s] initialized", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x21CF16D90](v20, -1, -1);
    MEMORY[0x21CF16D90](v19, -1, -1);
  }

  v25 = v69;
  v24 = v70;
  if (v69)
  {
    *(v3 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_autoFillQuirksManager) = v69;
    if (v24)
    {
LABEL_7:
      v26 = v25;
      v27 = v24;
LABEL_14:
      *(v3 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore) = v27;
      v47 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_autoFillQuirksManager;
      swift_beginAccess();
      v48 = *(v3 + v47);
      v49 = objc_opt_self();
      v50 = v24;
      v51 = v27;
      v52 = v48;
      v53 = [v49 safari_browserDefaults];
      sub_21C6E8F4C(0, &unk_27CDF7710, 0x277D49AA0);
      v54 = [objc_allocWithZone(MEMORY[0x277D49AA8]) initWithMetadataEntryClass_];
      v55 = [objc_allocWithZone(MEMORY[0x277D49AC8]) initWithSavedAccountStore:v51 autoFillQuirksManager:v52 userDefaults:v53 highLevelDomainsProvider:0 websiteMetadataStore:v54];

      *(v3 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_passwordWarningManager) = v55;
      type metadata accessor for PMAccountsState(0);
      swift_allocObject();
      v56 = sub_21C6EB34C();
      v3[2] = v56;
      *(v56 + 3) = &off_282E59B38;
      swift_unknownObjectWeakAssign();
      sub_21C6EC92C();
      v57 = [objc_opt_self() defaultCenter];
      [v57 addObserver:v3 selector:sel_accountStoreDidChange name:*MEMORY[0x277D49D78] object:0];

      return;
    }

LABEL_13:
    v45 = objc_opt_self();
    v46 = v25;
    v27 = [v45 sharedStore];
    goto LABEL_14;
  }

  v28 = [objc_opt_self() safari_safariCoreBundle];
  v29 = sub_21CB85584();
  v30 = sub_21CB85584();
  v31 = [v28 URLForResource:v29 withExtension:v30];

  if (v31)
  {
    sub_21CB80B94();

    v32 = [objc_opt_self() defaultManager];
    v33 = [v32 safari_autoFillQuirksDownloadDirectoryURL];

    v34 = v59;
    sub_21CB80B94();

    v35 = v60;
    v36 = v63;
    (*(v60 + 56))(v34, 0, 1, v63);
    v37 = *MEMORY[0x277D49D10];
    v38 = sub_21CB80B74();
    if ((*(v35 + 48))(v34, 1, v36) == 1)
    {
      v39 = 0;
    }

    else
    {
      v39 = sub_21CB80B74();
      (*(v35 + 8))(v34, v36);
    }

    v40 = v35;
    v41 = objc_allocWithZone(MEMORY[0x277D499D8]);
    v42 = sub_21CB85584();
    v43 = sub_21CB85584();
    v44 = [v41 initWithBuiltInQuirksURL:v38 downloadsDirectoryURL:v39 resourceName:v42 resourceVersion:v43 updateDateDefaultsKey:v37 updateInterval:86400.0];

    (*(v40 + 8))(v62, v63);
    *(v3 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_autoFillQuirksManager) = v44;
    [v44 beginLoadingQuirksFromDisk];
    if (v24)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  __break(1u);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for PMBulkOperationProgress(uint64_t a1)
{
  result = qword_27CDF2050;
  if (!qword_27CDF2050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C6EC92C()
{
  v1 = sub_21CB853D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CB85404();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_queueForLoadingAccounts);
  aBlock[4] = sub_21C6ECC94;
  v14 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_225;
  v8 = _Block_copy(aBlock);

  sub_21CB853E4();
  v12 = MEMORY[0x277D84F90];
  sub_21C6EADA4(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EAE34(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

uint64_t sub_21C6ECBD4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_21C6ECC3C()
{
  result = qword_27CDF2510;
  if (!qword_27CDF2510)
  {
    type metadata accessor for PMTipsProviderMain();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2510);
  }

  return result;
}

uint64_t sub_21C6ECC9C(uint64_t a1)
{
  v2 = sub_21CB853D4();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_21CB85404();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB81C54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB85D34();
  if (qword_27CDEA458 != -1)
  {
    swift_once();
  }

  v9 = qword_27CE186B8;
  sub_21CB81C44();
  v37 = v9;
  sub_21CB81C34();
  v36 = *(v6 + 8);
  v36(v8, v5);
  v10 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore;
  v11 = [*(a1 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore) savedAccounts];
  sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
  v35 = sub_21CB85824();

  v12 = [*(a1 + v10) allRecentlyDeletedSavedAccounts];
  if (v12)
  {
    v13 = v12;
    v34 = sub_21CB85824();
  }

  else
  {
    v34 = 0;
  }

  v14 = [*(a1 + v10) savedAccountsWithNeverSaveMarker];
  if (v14)
  {
    v15 = v14;
    v33 = sub_21CB85824();
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v16 = [*(a1 + v10) savedAccountsWithTOTPGenerators];
  v17 = sub_21CB85824();

  v18 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedSavedAccounts;
  swift_beginAccess();
  v19 = *(a1 + v18);
  v20 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedRecentlyDeletedSavedAccounts;
  swift_beginAccess();
  v21 = *(a1 + v20);
  v22 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedAccountsWithNeverSaveMarker);
  v23 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedAccountsWithTOTPGenerators);

  sub_21CB85D24();
  sub_21CB81C44();
  sub_21CB81C34();
  v36(v8, v5);
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v24 = sub_21CB85CF4();
  v25 = swift_allocObject();
  v26 = v35;
  v25[2] = a1;
  v25[3] = v26;
  v27 = v33;
  v25[4] = v34;
  v25[5] = v27;
  v25[6] = v17;
  v25[7] = v19;
  v25[8] = v21;
  v25[9] = v22;
  v25[10] = v23;
  aBlock[4] = sub_21CACA5BC;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_231;
  v28 = _Block_copy(aBlock);

  v29 = v38;
  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C6EADA4(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EAE34(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
  v30 = v40;
  v31 = v43;
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v29, v30, v28);
  _Block_release(v28);

  (*(v42 + 8))(v30, v31);
  return (*(v39 + 8))(v29, v41);
}

uint64_t sub_21C6ED290()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_21C6ED308(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_21CB858E4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  sub_21CB858B4();

  v9 = sub_21CB858A4();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a1;
  v10[5] = v8;

  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_observeTipsHandle) = sub_21C98B308(0, 0, v6, &unk_21CBA6790, v10);
}

uint64_t sub_21C6ED484()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C6ED4BC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_21C6ED504(uint64_t a1)
{
  sub_21C6EE7A4(319);
  if (v1 <= 0x3F)
  {
    sub_21CB81114();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

char *PMNotificationManager.init()()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI21PMNotificationManager_notificationManager;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D49AE0]) initIfAvailable];
  v2 = OBJC_IVAR____TtC17PasswordManagerUI21PMNotificationManager__notifiedAccount;
  v3 = type metadata accessor for PMAccount(0);
  v4 = *(*(v3 - 8) + 56);
  v4(&v0[v2], 1, 1, v3);
  v4(&v0[v2], 1, 1, v3);
  sub_21CB81104();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PMNotificationManager(0);
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = *&v5[OBJC_IVAR____TtC17PasswordManagerUI21PMNotificationManager_notificationManager];
  if (v6)
  {
    [v6 setDelegate_];
  }

  return v5;
}

void *sub_21C6ED710()
{
  v1 = v0;
  v0[3] = 0xD000000000000027;
  v0[4] = 0x800000021CB932B0;
  v2 = objc_opt_self();
  v3 = [v2 bagSubProfile];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 bagSubProfileVersion];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() bagForProfile:v4 profileVersion:v5];

      v8 = [objc_allocWithZone(MEMORY[0x277CEE690]) initWithBag_];
      v1[2] = v8;
      return v1;
    }
  }

  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v9 = sub_21CB81C84();
  __swift_project_value_buffer(v9, qword_27CE186E0);
  v10 = sub_21CB81C64();
  v11 = sub_21CB85AF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_21C6E5000, v10, v11, "AMS failed to return bagSubProfile data.", v12, 2u);
    MEMORY[0x21CF16D90](v12, -1, -1);
  }

  type metadata accessor for PMAppStoreReviewController();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t type metadata accessor for PMWiFiNetworksStore(uint64_t a1)
{
  result = qword_27CDFA6B0;
  if (!qword_27CDFA6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6ED94C(uint64_t a1)
{
  sub_21C6EDA64();
  if (v1 <= 0x3F)
  {
    sub_21C6EAB74(319, &qword_27CDEB310, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CWFSecurityType(319);
      if (v3 <= 0x3F)
      {
        sub_21C6EAB74(319, &qword_27CDFA728, sub_21C6EE9BC);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C6EDA64()
{
  if (!qword_27CDEB308)
  {
    v0 = sub_21CB85E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEB308);
    }
  }
}

uint64_t sub_21C6EDAF0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C6EDBAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

char *sub_21C6EDC14()
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB108, &qword_21CBA0FE8);
  v1 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v3 = &v28 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v28 - v7;
  *(v0 + 2) = swift_getKeyPath(byte_21CBA1120, v6);
  sub_21CB855C4();
  v9 = objc_opt_self();
  v10 = [v9 pm_defaults];
  *(v0 + 3) = sub_21CB81E74();
  v36 = [objc_opt_self() isPasswordsAppInstalled];
  v11 = [v9 safari_browserDefaults];
  sub_21C6EE1F8();
  *(v0 + 4) = sub_21CB81E84();
  sub_21CB855C4();
  v12 = [v9 &selRef_requestAccessForMediaType_completionHandler_ + 5];
  *(v0 + 5) = sub_21CB81E74();
  v13 = [v9 &selRef_requestAccessForMediaType_completionHandler_ + 5];
  *(v0 + 6) = sub_21CB81E74();
  v14 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isShowingPasswordOptionsSheet;
  v35 = 0;
  sub_21CB81D74();
  v15 = *(v5 + 32);
  v15(&v0[v14], v8, v4);
  v16 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isShowingFetchWebsiteNameDebuggerSheet;
  v34 = 0;
  sub_21CB81D74();
  v15(&v0[v16], v8, v4);
  v17 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isShowingAcceptICloudTermsAndConditionsAlert;
  v33 = 0;
  sub_21CB81D74();
  v15(&v0[v17], v8, v4);
  v18 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__hideDebugMenuUntilRelaunch;
  v32 = 0;
  sub_21CB81D74();
  v15(&v0[v18], v8, v4);
  v19 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__tipOverride;
  v30 = 0;
  v31 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB128, &qword_21CBC4E20);
  sub_21CB81D74();
  (*(v1 + 32))(&v0[v19], v3, v28);
  v20 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__alwaysShowSharedGroupOnboarding;
  v29 = 0;
  sub_21CB81D74();
  v15(&v0[v20], v8, v4);
  v21 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isFuzzySearchEnabled;
  sub_21CB855C4();
  v22 = [v9 pm_defaults];
  *&v0[v21] = sub_21CB81E74();
  v23 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isPromotePasskeyUpgradesEnabled;
  sub_21CB855C4();
  v24 = [v9 pm_defaults];
  *&v0[v23] = sub_21CB81E74();
  v25 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isPasswordsAppiPadNavigationViewEnabled;
  v26 = [v9 pm_defaults];
  *&v0[v25] = sub_21CB81E74();
  return v0;
}

uint64_t sub_21C6EE100(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21C7033D8;

  return v6(a1);
}

unint64_t sub_21C6EE1F8()
{
  result = qword_27CDEB130;
  if (!qword_27CDEB130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB130);
  }

  return result;
}

void sub_21C6EE24C(uint64_t a1)
{
  sub_21C6EBB68(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21C6EE344(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21C6EE394(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21CB85E54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C6EE3E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21C6EE450(uint64_t a1)
{
  sub_21C6EE344(319, &qword_27CDEB308, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21C6EAACC(319, &qword_27CDEB310, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      sub_21C6EE344(319, &qword_27CDEB318, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_21C6EBED4(319);
        if (v4 <= 0x3F)
        {
          sub_21C6EAACC(319, &qword_27CDEB328, MEMORY[0x277D49948]);
          if (v5 <= 0x3F)
          {
            sub_21C6EAACC(319, &qword_27CDEB330, MEMORY[0x277D49960]);
            if (v6 <= 0x3F)
            {
              sub_21C6EAACC(319, &qword_27CDEABC0, MEMORY[0x277D49978]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
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

unint64_t sub_21C6EE6C0()
{
  result = qword_27CDF7A60;
  if (!qword_27CDF7A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDF7A60);
  }

  return result;
}

uint64_t type metadata accessor for PMAccountsState(uint64_t a1)
{
  result = qword_27CDED7F0;
  if (!qword_27CDED7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PMNotificationManager(uint64_t a1)
{
  result = qword_27CDF62C0;
  if (!qword_27CDF62C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6EE7A4(uint64_t a1)
{
  if (!qword_27CDF62D0)
  {
    type metadata accessor for PMAccount(255);
    v1 = sub_21CB85E54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF62D0);
    }
  }
}

void sub_21C6EE820(uint64_t a1)
{
  sub_21C6EA5CC(319, &qword_27CDFA6C0, &qword_27CDEE680, &qword_21CBAA1C0);
  if (v1 <= 0x3F)
  {
    sub_21C6EA5CC(319, &qword_27CDFA6C8, &qword_27CDEE678, &unk_21CBBA210);
    if (v2 <= 0x3F)
    {
      sub_21C6E7ED8();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t type metadata accessor for PMWiFiNetwork(uint64_t a1)
{
  result = qword_27CDFA718;
  if (!qword_27CDFA718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21C6EE9BC()
{
  result = qword_27CDFA6D0;
  if (!qword_27CDFA6D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDFA6D0);
  }

  return result;
}

uint64_t PMWiFiNetworksStore.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v34 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA690, &qword_21CBCEF38);
  v6 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE668, &qword_21CBAA0F0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - v17;
  v19 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__savedNetworks;
  v42 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE680, &qword_21CBAA1C0);
  sub_21CB81D74();
  (*(v16 + 32))(v1 + v19, v18, v15);
  v20 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__activeWiFiNetwork;
  v21 = type metadata accessor for PMWiFiNetwork(0);
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  sub_21C6EF0A0(v14, v11);
  sub_21CB81D74();
  sub_21C6EA794(v14, &qword_27CDEE678, &unk_21CBBA210);
  (*(v6 + 32))(v1 + v20, v8, v36);
  v22 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__loadedNetworks;
  v41 = 0;
  v23 = v37;
  sub_21CB81D74();
  (*(v38 + 32))(v1 + v22, v23, v39);
  v24 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__showDemoWiFiNetworks;
  v25 = [objc_opt_self() pm_defaults];
  *(v1 + v24) = sub_21CB81E74();
  v26 = [objc_allocWithZone(MEMORY[0x277D02B18]) init];
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore_interface) = v26;

  sub_21CB81E94();

  if ((v40 & 1) != 0 || ([objc_opt_self() isRunningInStoreDemoMode] & 1) != 0 || (v27 = objc_msgSend(objc_opt_self(), sel_processInfo), v28 = objc_msgSend(v27, sel_safari_isPasswordManagerTestMode), v27, v28))
  {
    sub_21CB64580();
  }

  else
  {
    v30 = sub_21CB858E4();
    v31 = v35;
    (*(*(v30 - 8) + 56))(v35, 1, 1, v30);
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v32;
    sub_21C9E6C0C(0, 0, v31, &unk_21CBCEF90, v33);

    sub_21C6EA794(v31, &qword_27CDF1D50, &qword_21CBA0C00);
  }

  return v1;
}

uint64_t sub_21C6EEFA0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C6EEFF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C6EF0A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6EF110(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C6F35D0;

  return sub_21C6EF280(a1, v4, v5, v6);
}

uint64_t storeEnumTagSinglePayload for PMSortOption(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21C6EF2A0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21C704F58();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21C6EF374();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C6EF374()
{
  v64[1] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v1 - 8);
  v54 = v50 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  v50[0] = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v50 - v6;
  v50[1] = v8;
  MEMORY[0x28223BE20](v9);
  v11 = v50 - v10;
  v62 = type metadata accessor for PMWiFiNetwork(0);
  v56 = *(v62 - 8);
  *&v12 = MEMORY[0x28223BE20](v62).n128_u64[0];
  v60 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore_interface);
  v14 = [v61 knownNetworkProfilesWithProperties_];
  if (v14)
  {
    v15 = v14;
    sub_21C6EE9BC();
    v16 = sub_21CB85824();

    if (!(v16 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v52 = v0;
      v53 = v7;
      if (v17)
      {
        goto LABEL_4;
      }

LABEL_23:
      v63 = MEMORY[0x277D84F90];
      goto LABEL_24;
    }
  }

  v17 = sub_21CB85FA4();
  v52 = v0;
  v53 = v7;
  if (!v17)
  {
    goto LABEL_23;
  }

LABEL_4:
  v18 = 0;
  v55 = 0;
  v58 = v16 & 0xFFFFFFFFFFFFFF8;
  v59 = v16 & 0xC000000000000001;
  v63 = MEMORY[0x277D84F90];
  v57 = (v56 + 48);
  do
  {
    if (v59)
    {
      v19 = MEMORY[0x21CF15BD0](v18, v16);
    }

    else
    {
      if (v18 >= *(v58 + 16))
      {
        goto LABEL_28;
      }

      v19 = *(v16 + 8 * v18 + 32);
    }

    v20 = v19;
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
    }

    v22 = v16;
    v64[0] = 0;
    v23 = [v61 passwordForKnownNetworkProfile:v19 error:v64];
    v24 = v64[0];
    if (v23)
    {
      v25 = v23;
      v26 = sub_21CB855C4();
      v28 = v27;
      v29 = v24;
    }

    else
    {
      v30 = v64[0];
      v31 = sub_21CB80B14();

      swift_willThrow();
      v26 = 0;
      v28 = 0;
      v55 = 0;
    }

    sub_21C6F0958(v20, v26, v28, v11);
    if ((*v57)(v11, 1, v62) == 1)
    {
      sub_21C6EA794(v11, &qword_27CDEE678, &unk_21CBBA210);
      v16 = v22;
    }

    else
    {
      sub_21C6F0E30(v11, v60);
      v16 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_21C6F0E94(0, v63[2] + 1, 1, v63);
      }

      v33 = v63[2];
      v32 = v63[3];
      if (v33 >= v32 >> 1)
      {
        v63 = sub_21C6F0E94((v32 > 1), v33 + 1, 1, v63);
      }

      v34 = v63;
      v63[2] = v33 + 1;
      sub_21C6F0E30(v60, v34 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v33);
    }

    ++v18;
  }

  while (v21 != v17);
LABEL_24:

  v35 = v53;
  (*(v56 + 56))(v53, 1, 1, v62);
  v36 = [v61 currentKnownNetworkProfile];
  v37 = v51;
  if (v36)
  {
    v38 = v36;
    v39 = sub_21C6F3480(v36);
    sub_21C6F0958(v38, v39, v40, v37);
    sub_21C6EA794(v35, &qword_27CDEE678, &unk_21CBBA210);
    sub_21C6F3560(v37, v35);
  }

  v41 = sub_21CB858E4();
  v42 = v54;
  (*(*(v41 - 8) + 56))(v54, 1, 1, v41);
  v43 = swift_allocObject();
  swift_weakInit();
  sub_21C6EF0A0(v35, v37);
  sub_21CB858B4();

  v44 = sub_21CB858A4();
  v45 = (*(v50[0] + 80) + 48) & ~*(v50[0] + 80);
  v46 = swift_allocObject();
  v47 = MEMORY[0x277D85700];
  v46[2] = v44;
  v46[3] = v47;
  v48 = v63;
  v46[4] = v43;
  v46[5] = v48;
  sub_21C6F3560(v37, v46 + v45);

  sub_21C98B308(0, 0, v42, &unk_21CBCF020, v46);

  return sub_21C6EA794(v35, &qword_27CDEE678, &unk_21CBBA210);
}

uint64_t sub_21C6EF9CC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = type metadata accessor for PMWiFiNetwork(0);
  if (!(*(*(v6 - 1) + 48))(v0 + v3, 1, v6))
  {
    v13 = v4;

    v7 = v6[7];
    v8 = sub_21CB80DD4();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    if (!v10(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }

    v11 = v6[8];
    if (!v10(v5 + v11, 1, v8))
    {
      (*(v9 + 8))(v5 + v11, v8);
    }

    v4 = v13;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_21C6EFBC8(uint64_t a1)
{
  sub_21C6EFE5C(319);
  if (v1 <= 0x3F)
  {
    sub_21C705370(319, &qword_27CDEB8A8, type metadata accessor for PMWiFiDetailsModel, MEMORY[0x277CDD7D0]);
    if (v2 <= 0x3F)
    {
      sub_21C705370(319, &qword_27CDEF190, type metadata accessor for PMAppRootNavigationModel, MEMORY[0x277CDD7D0]);
      if (v3 <= 0x3F)
      {
        sub_21C705370(319, &qword_27CDEF198, type metadata accessor for PMAppAccountsListModel, MEMORY[0x277CDD7D0]);
        if (v4 <= 0x3F)
        {
          sub_21C705370(319, &qword_27CDEF1A0, type metadata accessor for PMAppSecurityRecommendationsModel, MEMORY[0x277CDD7D0]);
          if (v5 <= 0x3F)
          {
            sub_21C705370(319, &qword_27CDEBD50, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_21C705370(319, &qword_27CDEC860, MEMORY[0x277CDDAF0], MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                sub_21C705B34(319);
                if (v8 <= 0x3F)
                {
                  sub_21C705CFC(319);
                  if (v9 <= 0x3F)
                  {
                    sub_21C706378(319);
                    if (v10 <= 0x3F)
                    {
                      sub_21C70640C(319);
                      if (v11 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_21C6EFE5C(uint64_t a1)
{
  if (!qword_27CDEB8A0)
  {
    type metadata accessor for PMCombinedAccountDetailsModel(255);
    sub_21C6F06B8(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
    v1 = sub_21CB823D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEB8A0);
    }
  }
}

void sub_21C6EFEF0(uint64_t a1)
{
  sub_21C6F0320(319, &qword_27CDF63E8, type metadata accessor for PMAccount);
  if (v1 <= 0x3F)
  {
    sub_21C6F0320(319, &qword_27CDF63F0, type metadata accessor for _ASDeleteKind);
    if (v2 <= 0x3F)
    {
      sub_21C6EA5CC(319, &qword_27CDF63F8, &qword_27CDF6400, &qword_21CBC0820);
      if (v3 <= 0x3F)
      {
        sub_21C6F039C(319, &qword_27CDEAEE0, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_21C6F039C(319, &qword_27CDEAEC8, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            sub_21C6EA5CC(319, &qword_27CDF6408, &qword_27CDF6410, &unk_21CBC0828);
            if (v6 <= 0x3F)
            {
              sub_21C6EA5CC(319, &qword_27CDF6418, &qword_27CDEE100, &unk_21CBA95B0);
              if (v7 <= 0x3F)
              {
                sub_21C6EA5CC(319, &qword_27CDF6420, &qword_27CDF6428, &qword_21CBC0838);
                if (v8 <= 0x3F)
                {
                  sub_21C6EA5CC(319, &qword_27CDF6430, &qword_27CDF0138, &qword_21CBC0840);
                  if (v9 <= 0x3F)
                  {
                    sub_21C6EA5CC(319, &qword_27CDF6438, &qword_27CDF6440, &qword_21CBC0848);
                    if (v10 <= 0x3F)
                    {
                      sub_21C6F0320(319, &qword_27CDF6448, type metadata accessor for PMAccountHistoryModel);
                      if (v11 <= 0x3F)
                      {
                        swift_updateClassMetadata2();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_21C6F0320(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB81DD4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C6F039C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21CB81DD4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C6F03E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21C6F0438(uint64_t a1)
{
  sub_21C704B10();
  if (v1 <= 0x3F)
  {
    sub_21C6F04AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21C6F04AC()
{
  if (!qword_27CDF6468)
  {
    v0 = sub_21CB80E34();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF6468);
    }
  }
}

uint64_t type metadata accessor for PMAccountHistoryModel(uint64_t a1)
{
  result = qword_27CDF20A0;
  if (!qword_27CDF20A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C6F0588(uint64_t a1)
{
  result = type metadata accessor for PMAccount(319);
  if (v2 <= 0x3F)
  {
    result = sub_21CB81114();
    if (v3 <= 0x3F)
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

uint64_t sub_21C6F0670(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C6F06B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C6F0700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C6F0748(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21C6F0790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB85E54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C6F07E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21C6F0848(uint64_t a1)
{
  if (!qword_27CDEABC0)
  {
    sub_21CB85C44();
    v1 = sub_21CB85E54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEABC0);
    }
  }
}

uint64_t sub_21C6F08A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21C702EFC;

  return sub_21C6EE100(a1, v4);
}

uint64_t sub_21C6F0958@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for PMWiFiNetwork(0);
  v47 = *(v14 - 1);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = (&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = [a1 identifier];
  if (v18)
  {
    v46 = a4;
    v19 = v18;
    v44 = sub_21CB855C4();
    v45 = v20;

    v21 = [a1 networkName];
    if (v21)
    {
      v22 = v21;
      v23 = sub_21CB855C4();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    if ([a1 isPasspoint])
    {
      v26 = [a1 displayedOperatorName];
      if (v26)
      {
        v27 = v26;

        v23 = sub_21CB855C4();
        v25 = v28;

LABEL_10:
        v29 = [a1 addReason] == 9 || objc_msgSend(a1, sel_addReason) == 10;
        v30 = [a1 isProfileBased] | v29;
        v31 = v45;
        *v17 = v44;
        v17[1] = v31;
        v17[2] = v23;
        v17[3] = v25;
        if (a3)
        {
          v32 = HIBYTE(a3) & 0xF;
          if ((a3 & 0x2000000000000000) == 0)
          {
            v32 = a2 & 0xFFFFFFFFFFFFLL;
          }

          if (!v32)
          {
            goto LABEL_18;
          }
        }

        if (v30)
        {
LABEL_18:

          a2 = 0;
          a3 = 0;
        }

        v17[4] = a2;
        v17[5] = a3;
        v33 = [a1 addedAt];
        if (v33)
        {
          v34 = v33;
          sub_21CB80D94();

          v35 = sub_21CB80DD4();
          (*(*(v35 - 8) + 56))(v13, 0, 1, v35);
        }

        else
        {
          v36 = sub_21CB80DD4();
          (*(*(v36 - 8) + 56))(v13, 1, 1, v36);
        }

        sub_21C6F1098(v13, v17 + v14[7]);
        v37 = [a1 lastJoinedOnAnyDeviceAt];
        if (v37)
        {
          v38 = v37;
          sub_21CB80D94();

          v39 = 0;
        }

        else
        {
          v39 = 1;
        }

        v40 = sub_21CB80DD4();
        (*(*(v40 - 8) + 56))(v10, v39, 1, v40);
        sub_21C6F1098(v10, v17 + v14[8]);
        *(v17 + v14[9]) = v30 & 1;
        *(v17 + v14[10]) = [a1 hiddenState] == 1;
        *(v17 + v14[11]) = [a1 supportedSecurityTypes];
        *(v17 + v14[12]) = [a1 strongestSupportedSecurityType];
        *(v17 + v14[13]) = [a1 isPersonalHotspot];
        *(v17 + v14[14]) = a1;
        v41 = v46;
        sub_21C6F0E30(v17, v46);
        return (*(v47 + 56))(v41, 0, 1, v14);
      }
    }

    if (v25)
    {
      goto LABEL_10;
    }

    a4 = v46;
  }

  else
  {
  }

  v43 = *(v47 + 56);

  return v43(a4, 1, 1, v14);
}

uint64_t sub_21C6F0E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMWiFiNetwork(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_21C6F0EBC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_21C6F1098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6F116C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C702EFC;

  return sub_21C6F1234(a1, v4, v5, sub_21C6F1234, v6);
}

uint64_t sub_21C6F1234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_21C702EFC;

  return sub_21C7025D0(a1, a2, a3, a5);
}

uint64_t sub_21C6F12EC()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  *v2 = 1;
  (*(v1 + 104))(v2, *MEMORY[0x277D85768], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF52F0, &unk_21CBBD7F8);
  sub_21CB85924();
  sub_21C6EADEC(&qword_27CDED3E0, &qword_27CDF90C0, &qword_21CBCADE0, MEMORY[0x277D857C0]);
  sub_21CB85964();
  swift_beginAccess();
  v4 = sub_21CB858A4();
  v0[38] = v4;
  sub_21C6EADEC(&qword_27CDF52F8, &qword_27CDF52E8, &qword_21CBBD7F0, MEMORY[0x277D857B0]);
  v5 = swift_task_alloc();
  v0[39] = v5;
  *v5 = v0;
  v5[1] = sub_21C6F330C;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 5, v4, v6);
}

id sub_21C6F14E4(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v17 = a2;
  ObjectType = swift_getObjectType();
  v14 = sub_21CB85CE4();
  v3 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB85CC4();
  MEMORY[0x28223BE20](v6);
  v7 = sub_21CB85404();
  MEMORY[0x28223BE20](v7 - 8);
  v13 = OBJC_IVAR____TtCV17PasswordManagerUI27PMSharingGroupsProviderMain18GroupUpdateHandler_queue;
  v8 = sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v12[0] = "I.GroupUpdateHandler";
  v12[1] = v8;
  sub_21CB853F4();
  v19 = MEMORY[0x277D84F90];
  sub_21C6F17EC(&unk_27CDF8670, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7700, &unk_21CBC5B60);
  sub_21C6EADEC(&qword_27CDF8680, &unk_27CDF7700, &unk_21CBC5B60, MEMORY[0x277D83970]);
  sub_21CB85F14();
  (*(v3 + 104))(v5, *MEMORY[0x277D85260], v14);
  *&v2[v13] = sub_21CB85D14();
  v9 = &v2[OBJC_IVAR____TtCV17PasswordManagerUI27PMSharingGroupsProviderMain18GroupUpdateHandler_callback];
  v10 = v17;
  *v9 = v16;
  v9[1] = v10;
  v18.receiver = v2;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_21C6F17A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C6F17EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C6F1834(void *a1)
{
  v3 = sub_21CB853D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21CB85404();
  v7 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *&v1[OBJC_IVAR____TtCV17PasswordManagerUI27PMSharingGroupsProviderMain18GroupUpdateHandler_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_21C6F2278;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_42;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  v13 = a1;
  sub_21CB853E4();
  v17 = MEMORY[0x277D84F90];
  sub_21C6F17EC(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0, MEMORY[0x277D83970]);
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16);
}

uint64_t sub_21C6F1B0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_21C6F1B88()
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0A0, &unk_21CBCD948);
  v1 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v21 - v2;
  swift_beginAccess();
  v22 = *(v0 + 16);
  if ((v22 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_21CB85F64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7258, &qword_21CBC4710);
    sub_21C6EADEC(&qword_27CDFA0A8, &qword_27CDF7258, &qword_21CBC4710, &unk_21CBCD8E0);
    result = sub_21CB85A14();
    v5 = v27;
    v4 = v28;
    v7 = v29;
    v6 = v30;
    v8 = v31;
  }

  else
  {
    v9 = -1 << *(v22 + 32);
    v4 = v22 + 56;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v22 + 56);
    v5 = v22;
    result = swift_bridgeObjectRetain_n();
    v6 = 0;
  }

  v21 = v7;
  v12 = (v7 + 64) >> 6;
  v13 = (v1 + 8);
  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v6;
    v15 = v8;
    v16 = v6;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_18:
      sub_21C6F1E7C(v5);
    }

    while (1)
    {
      v20 = v23;
      sub_21CB85904();

      result = (*v13)(v20, v24);
      v6 = v16;
      v8 = v17;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v19 = sub_21CB85FE4();
      if (v19)
      {
        v25 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7258, &qword_21CBC4710);
        swift_dynamicCast();
        v16 = v6;
        v17 = v8;
        if (v26)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
      goto LABEL_18;
    }

    v15 = *(v4 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_21C6F1E84(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for PMSharingGroup(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v38 - v9;
  v11 = *(a1 + OBJC_IVAR____TtCV17PasswordManagerUI27PMSharingGroupsProviderMain18GroupUpdateHandler_callback);
  v12 = *(a1 + OBJC_IVAR____TtCV17PasswordManagerUI27PMSharingGroupsProviderMain18GroupUpdateHandler_callback + 8);
  v13 = [a2 cachedInvitations];
  v14 = sub_21C6E8F4C(0, &qword_27CDF90A0, 0x277CDBD08);
  v15 = sub_21CB85824();

  if (v15 >> 62)
  {
    v16 = sub_21CB85FA4();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = v12;
  v41 = v11;
  if (v16)
  {
    v43 = MEMORY[0x277D84F90];
    result = sub_21C7B1188(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
      goto LABEL_30;
    }

    v38 = v14;
    v39 = a2;
    v18 = 0;
    v19 = v43;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x21CF15BD0](v18, v15);
      }

      else
      {
        v20 = *(v15 + 8 * v18 + 32);
      }

      v21 = v20;
      sub_21C7B9304(v10);

      v43 = v19;
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_21C7B1188((v22 > 1), v23 + 1, 1);
        v19 = v43;
      }

      ++v18;
      *(v19 + 16) = v23 + 1;
      sub_21C9C9820(v10, v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23);
    }

    while (v16 != v18);

    v24 = v42;
    a2 = v39;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
    v24 = v42;
  }

  v25 = [a2 cachedGroups];
  v26 = sub_21CB85824();

  if (!(v26 >> 62))
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_16;
    }

LABEL_27:

    v30 = MEMORY[0x277D84F90];
LABEL_28:
    v41(v19, v30);
  }

  v27 = sub_21CB85FA4();
  if (!v27)
  {
    goto LABEL_27;
  }

LABEL_16:
  v28 = v26;
  v43 = MEMORY[0x277D84F90];
  result = sub_21C7B1188(0, v27 & ~(v27 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v29 = 0;
    v30 = v43;
    v31 = v28;
    v42 = (v28 & 0xC000000000000001);
    v32 = v28;
    do
    {
      if (v42)
      {
        v33 = MEMORY[0x21CF15BD0](v29, v31);
      }

      else
      {
        v33 = *(v31 + 8 * v29 + 32);
      }

      v34 = v33;
      sub_21C7B9304(v24);

      v43 = v30;
      v35 = v24;
      v37 = *(v30 + 16);
      v36 = *(v30 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_21C7B1188((v36 > 1), v37 + 1, 1);
        v30 = v43;
      }

      ++v29;
      *(v30 + 16) = v37 + 1;
      sub_21C9C9820(v35, v30 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v37);
      v24 = v35;
      v31 = v32;
    }

    while (v27 != v29);

    goto LABEL_28;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_21C6F2280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C702EFC;

  return sub_21C6F234C(a1, v4, v5, v1 + 4, v6);
}

uint64_t sub_21C6F234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = *a4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21C702EFC;

  return sub_21C6F2414(a1, a2, a3, v10, a5);
}

uint64_t sub_21C6F2414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[49] = a4;
  v5[50] = a5;
  v5[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED3C0, &qword_21CBA67A0);
  v5[52] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED3C8, &qword_21CBA67A8);
  v5[53] = v6;
  v5[54] = *(v6 - 8);
  v5[55] = swift_task_alloc();
  v5[56] = sub_21CB858B4();
  v5[57] = sub_21CB858A4();
  v8 = sub_21CB85874();
  v5[58] = v8;
  v5[59] = v7;

  return MEMORY[0x2822009F8](sub_21C6F2BB4, v8, v7);
}

uint64_t sub_21C6F2554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF90B0, &qword_21CBCADD8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[0] = a1;
  v9[1] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF90A8, &unk_21CBCADC8);
  sub_21CB85914();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21C6F2664(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF90A8, &unk_21CBCADC8);

  return sub_21C6F2554(a1, a2);
}

uint64_t sub_21C6F26F0@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0A0, &unk_21CBCD948);
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v22 = &v22 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0B0, &qword_21CBCD958);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0B8, &qword_21CBCD960);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  sub_21C6F2D24(&v22 - v15, v9);
  (*(v4 + 16))(v6, v9, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7258, &qword_21CBC4710);
  v17 = swift_allocObject();
  (*(v4 + 32))(v17 + *(*v17 + 88), v6, v3);
  swift_beginAccess();

  sub_21C7028AC(&v26, v17);
  swift_endAccess();

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;

  sub_21CB858F4();
  v20 = v22;
  sub_21CB85904();
  (*(v23 + 8))(v20, v24);
  (*(v11 + 16))(v13, v16, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED230, &unk_21CBA6460);
  sub_21C6EADEC(&qword_27CDFA0C0, &qword_27CDFA0B8, &qword_21CBCD960, MEMORY[0x277D857C0]);
  sub_21CB861B4();

  (*(v4 + 8))(v9, v3);
  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_21C6F2B3C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C6F2B74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C6F2BB4()
{
  sub_21C6F26F0(v0[52]);
  sub_21C6EADEC(&qword_27CDED3D0, &qword_27CDED3C0, &qword_21CBA67A0, MEMORY[0x277D85990]);
  sub_21CB85964();
  swift_beginAccess();
  v1 = sub_21CB858A4();
  v0[60] = v1;
  sub_21C6EADEC(&qword_27CDED3D8, &qword_27CDED3C8, &qword_21CBA67A8, MEMORY[0x277D85980]);
  v2 = swift_task_alloc();
  v0[61] = v2;
  *v2 = v0;
  v2[1] = sub_21C70427C;
  v3 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 2, v1, v3);
}

uint64_t sub_21C6F2D24(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v20 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0D0, &qword_21CBCD980);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0B8, &qword_21CBCD960);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0D8, &qword_21CBCD988);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0B0, &qword_21CBCD958);
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  v21 = v15;
  (*(v3 + 104))(v5, *MEMORY[0x277D85778], v2);
  sub_21CB85924();
  (*(v7 + 16))(v20, v9, v6);
  sub_21C703874(v15, v12);
  result = (*(v17 + 48))(v12, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    (*(v17 + 32))(v19, v12, v16);
    return sub_21C702844(v15);
  }

  return result;
}

uint64_t sub_21C6F3030(uint64_t a1, uint64_t a2)
{
  sub_21C702844(a2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0B0, &qword_21CBCD958);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_21C6F3120(uint64_t a1)
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

void sub_21C6F31B4(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21CA99764(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_21CA9E9B4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_21C702ABC(v5 + 1);
  }

  v8 = *v3;
  sub_21CB86484();
  MEMORY[0x21CF15F90](result);
  v9 = sub_21CB864D4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7258, &qword_21CBC4710);
  sub_21CB863A4();
  __break(1u);
}

uint64_t sub_21C6F330C()
{
  v2 = *v1;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_21CA1DB18;
  }

  else
  {
    v5 = sub_21C7038E4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C6F3480(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore_interface);
  v12[0] = 0;
  v4 = [v3 passwordForKnownNetworkProfile:a1 error:v12];
  v5 = v12[0];
  if (v4)
  {
    v6 = v4;
    v7 = sub_21CB855C4();
    v8 = v5;
  }

  else
  {
    v9 = v12[0];
    v10 = sub_21CB80B14();

    swift_willThrow();
    return 0;
  }

  return v7;
}

uint64_t sub_21C6F3560(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6F35D4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importTask) = *(v0 + 24);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for PMAppTOTPMigrationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB158, &unk_21CBA12F0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB823B4();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(type metadata accessor for PMSafariSettingsBreadcrumbs(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21CB82484();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_2()
{
  v1 = v0;
  v2 = type metadata accessor for PMShareAccountButton(0);
  v3 = *(*(v2 - 8) + 80);
  v133 = *(*(v2 - 8) + 64);
  v134 = (v3 + 16) & ~v3;
  v4 = v0 + v134;
  v5 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v134, 1, v5))
  {

    v6 = type metadata accessor for PMAccount(0);
    v7 = v4 + v6[5];
    type metadata accessor for PMAccount.UniqueID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

    v125 = v6;
    if (EnumCaseMultiPayload == 1)
    {

      v9 = type metadata accessor for PMAccount.SIWAUniqueID(0);
      v10 = *(v9 + 28);
      v11 = sub_21CB85B74();
      (*(*(v11 - 8) + 8))(v7 + v10, v11);

      v12 = *(v9 + 36);
      v13 = sub_21CB85C44();
      v14 = *(v13 - 8);
      if (!(*(v14 + 48))(v7 + v12, 1, v13))
      {
        (*(v14 + 8))(v7 + v12, v13);
      }
    }

    else
    {
      v15 = v0;

      v16 = type metadata accessor for PMAccount.CombinedUniqueID(0);
      v17 = v16[7];
      v18 = sub_21CB85C04();
      v19 = *(v18 - 8);
      if (!(*(v19 + 48))(v7 + v17, 1, v18))
      {
        (*(v19 + 8))(v7 + v17, v18);
      }

      v20 = v16[8];
      v21 = sub_21CB85BB4();
      v22 = *(v21 - 8);
      if (!(*(v22 + 48))(v7 + v20, 1, v21))
      {
        (*(v22 + 8))(v7 + v20, v21);
      }

      v23 = v16[9];
      v24 = sub_21CB85C44();
      v25 = *(v24 - 8);
      v1 = v15;
      v6 = v125;
      if (!(*(v25 + 48))(v7 + v23, 1, v24))
      {
        (*(v25 + 8))(v7 + v23, v24);
      }
    }

    v26 = (v4 + v6[6]);
    type metadata accessor for PMAccount.Storage(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v128 = v2;
      v130 = v3;
      v126 = v1;

      v27 = type metadata accessor for PMAccount.MockData(0);
      v28 = v27[8];
      v29 = sub_21CB80DD4();
      v30 = *(v29 - 8);
      v31 = *(v30 + 48);
      if (!v31(v26 + v28, 1, v29))
      {
        (*(v30 + 8))(v26 + v28, v29);
      }

      v32 = v27[12];
      if (!v31(v26 + v32, 1, v29))
      {
        (*(v30 + 8))(v26 + v32, v29);
      }

      v33 = v27[15];
      v34 = sub_21CB85BB4();
      v35 = *(v34 - 8);
      v3 = v130;
      if (!(*(v35 + 48))(v26 + v33, 1, v34))
      {
        (*(v35 + 8))(v26 + v33, v34);
      }

      v36 = v27[16];
      v37 = sub_21CB85C04();
      v38 = *(v37 - 8);
      v2 = v128;
      if (!(*(v38 + 48))(v26 + v36, 1, v37))
      {
        (*(v38 + 8))(v26 + v36, v37);
      }

      v39 = v27[18];
      v40 = sub_21CB85C44();
      v41 = *(v40 - 8);
      v1 = v126;
      v6 = v125;
      if (!(*(v41 + 48))(v26 + v39, 1, v40))
      {
        (*(v41 + 8))(v26 + v39, v40);
      }
    }

    else
    {
    }

    v42 = v4 + v6[7];
    if (*(v42 + 8))
    {
    }

    v43 = v4 + *(v5 + 20);
    v44 = type metadata accessor for PMSharingGroup(0);
    v45 = *(*(v44 - 8) + 48);
    if (!v45(v43, 1, v44))
    {
      v46 = sub_21CB85C44();
      (*(*(v46 - 8) + 8))(v43, v46);
    }

    v47 = v4 + *(v5 + 24);
    if (!v45(v47, 1, v44))
    {
      v48 = sub_21CB85C44();
      (*(*(v48 - 8) + 8))(v47, v48);
    }
  }

  v49 = v4 + *(type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0) + 20);
  v50 = type metadata accessor for PMAccount(0);
  if (!(*(*(v50 - 1) + 48))(v49, 1, v50))
  {

    v51 = v49 + v50[5];
    type metadata accessor for PMAccount.UniqueID(0);
    v52 = swift_getEnumCaseMultiPayload();

    v129 = v2;
    if (v52 == 1)
    {

      v53 = type metadata accessor for PMAccount.SIWAUniqueID(0);
      v54 = *(v53 + 28);
      v55 = sub_21CB85B74();
      (*(*(v55 - 8) + 8))(v51 + v54, v55);

      v56 = *(v53 + 36);
      v57 = sub_21CB85C44();
      v58 = *(v57 - 8);
      if (!(*(v58 + 48))(v51 + v56, 1, v57))
      {
        (*(v58 + 8))(v51 + v56, v57);
      }
    }

    else
    {
      v59 = v1;

      v60 = type metadata accessor for PMAccount.CombinedUniqueID(0);
      v61 = v60[7];
      v62 = sub_21CB85C04();
      v63 = *(v62 - 8);
      if (!(*(v63 + 48))(v51 + v61, 1, v62))
      {
        (*(v63 + 8))(v51 + v61, v62);
      }

      v64 = v60[8];
      v65 = sub_21CB85BB4();
      v66 = *(v65 - 8);
      if (!(*(v66 + 48))(v51 + v64, 1, v65))
      {
        (*(v66 + 8))(v51 + v64, v65);
      }

      v67 = v60[9];
      v68 = sub_21CB85C44();
      v69 = *(v68 - 8);
      v1 = v59;
      v2 = v129;
      if (!(*(v69 + 48))(v51 + v67, 1, v68))
      {
        (*(v69 + 8))(v51 + v67, v68);
      }
    }

    v70 = (v49 + v50[6]);
    type metadata accessor for PMAccount.Storage(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v131 = v3;
      v127 = v1;

      v71 = type metadata accessor for PMAccount.MockData(0);
      v72 = v71[8];
      v73 = sub_21CB80DD4();
      v74 = *(v73 - 8);
      v75 = *(v74 + 48);
      if (!v75(v70 + v72, 1, v73))
      {
        (*(v74 + 8))(v70 + v72, v73);
      }

      v76 = v71[12];
      if (!v75(v70 + v76, 1, v73))
      {
        (*(v74 + 8))(v70 + v76, v73);
      }

      v77 = v71[15];
      v78 = sub_21CB85BB4();
      v79 = *(v78 - 8);
      v3 = v131;
      if (!(*(v79 + 48))(v70 + v77, 1, v78))
      {
        (*(v79 + 8))(v70 + v77, v78);
      }

      v80 = v71[16];
      v81 = sub_21CB85C04();
      v82 = *(v81 - 8);
      if (!(*(v82 + 48))(v70 + v80, 1, v81))
      {
        (*(v82 + 8))(v70 + v80, v81);
      }

      v83 = v71[18];
      v84 = sub_21CB85C44();
      v85 = *(v84 - 8);
      v1 = v127;
      v2 = v129;
      if (!(*(v85 + 48))(v70 + v83, 1, v84))
      {
        (*(v85 + 8))(v70 + v83, v84);
      }
    }

    else
    {
    }

    v86 = v49 + v50[7];
    if (*(v86 + 8))
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB688, &unk_21CBA2410);

  v87 = v4 + *(v2 + 20);
  v88 = sub_21CB80E34();
  (*(*(v88 - 8) + 8))(v87, v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB690, &unk_21CBA2A30);

  v89 = v4 + *(v2 + 32);

  v90 = v89 + v50[5];
  type metadata accessor for PMAccount.UniqueID(0);
  v91 = swift_getEnumCaseMultiPayload();

  if (v91 == 1)
  {

    v92 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v93 = *(v92 + 28);
    v94 = sub_21CB85B74();
    (*(*(v94 - 8) + 8))(v90 + v93, v94);

    v95 = *(v92 + 36);
    v96 = sub_21CB85C44();
    v97 = *(v96 - 8);
    if ((*(v97 + 48))(v90 + v95, 1, v96))
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v116 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v117 = v116[7];
  v118 = sub_21CB85C04();
  v119 = *(v118 - 8);
  if (!(*(v119 + 48))(v90 + v117, 1, v118))
  {
    (*(v119 + 8))(v90 + v117, v118);
  }

  v120 = v116[8];
  v121 = sub_21CB85BB4();
  v122 = *(v121 - 8);
  if (!(*(v122 + 48))(v90 + v120, 1, v121))
  {
    (*(v122 + 8))(v90 + v120, v121);
  }

  v95 = v116[9];
  v96 = sub_21CB85C44();
  v97 = *(v96 - 8);
  if (!(*(v97 + 48))(v90 + v95, 1, v96))
  {
LABEL_55:
    (*(v97 + 8))(v90 + v95, v96);
  }

LABEL_56:
  v98 = (v89 + v50[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v99 = v1;
    v132 = v3;

    v100 = type metadata accessor for PMAccount.MockData(0);
    v101 = v100[8];
    v102 = sub_21CB80DD4();
    v103 = *(v102 - 8);
    v104 = *(v103 + 48);
    if (!v104(v98 + v101, 1, v102))
    {
      (*(v103 + 8))(v98 + v101, v102);
    }

    v105 = v100[12];
    if (!v104(v98 + v105, 1, v102))
    {
      (*(v103 + 8))(v98 + v105, v102);
    }

    v106 = v100[15];
    v107 = sub_21CB85BB4();
    v108 = *(v107 - 8);
    v1 = v99;
    if (!(*(v108 + 48))(v98 + v106, 1, v107))
    {
      (*(v108 + 8))(v98 + v106, v107);
    }

    v109 = v100[16];
    v110 = sub_21CB85C04();
    v111 = *(v110 - 8);
    v3 = v132;
    if (!(*(v111 + 48))(v98 + v109, 1, v110))
    {
      (*(v111 + 8))(v98 + v109, v110);
    }

    v112 = v100[18];
    v113 = sub_21CB85C44();
    v114 = *(v113 - 8);
    v115 = v134;
    if (!(*(v114 + 48))(v98 + v112, 1, v113))
    {
      (*(v114 + 8))(v98 + v112, v113);
    }
  }

  else
  {

    v115 = v134;
  }

  v123 = v89 + v50[7];
  if (*(v123 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v115 + v133, v3 | 7);
}

uint64_t objectdestroyTm_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for PMAccountFieldRow(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  v10 = v4 + v8;

  v11 = v6[12];
  v12 = *(v5 - 8);
  if (!(*(v12 + 48))(v4 + v8 + v11, 1, v5))
  {
    (*(v12 + 8))(v10 + v11, v5);
  }

  sub_21C7E3CFC(*(v10 + v6[27]), *(v10 + v6[27] + 8), *(v10 + v6[27] + 16));
  sub_21C7025C4(*(v10 + v6[28]), *(v10 + v6[28] + 8));
  v13 = v6[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21CB82834();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
  }

  else
  {
  }

  v15 = v6[31];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEB7F0, &unk_21CBA2600);
  (*(*(v16 - 8) + 8))(v10 + v15, v16);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for PMAccountIcon(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[11];
  v7 = sub_21CB85B74();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  if (*(v5 + v1[15] + 8) != 1)
  {
  }

  if (*(v5 + v1[16] + 48) != 1)
  {
  }

  sub_21C70AC30(*(v5 + v1[17]), *(v5 + v1[17] + 8));
  v9 = v5 + v1[18];
  v10 = sub_21CB80E34();
  (*(*(v10 - 8) + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB690, &unk_21CBA2A30);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_5()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccountPickerRow(0);
  v3 = *(*(v2 - 8) + 80);
  v41 = *(*(v2 - 8) + 64);
  v42 = (v3 + 16) & ~v3;
  v4 = v0 + v42;

  v5 = type metadata accessor for PMAccount(0);
  v6 = v0 + v42 + v5[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v9 = *(v8 + 28);
    v10 = sub_21CB85B74();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);

    v11 = *(v8 + 36);
    v12 = sub_21CB85C44();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v6 + v11, 1, v12))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v30 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v31 = v30[7];
  v32 = sub_21CB85C04();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v6 + v31, 1, v32))
  {
    (*(v33 + 8))(v6 + v31, v32);
  }

  v34 = v30[8];
  v35 = sub_21CB85BB4();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v6 + v34, 1, v35))
  {
    (*(v36 + 8))(v6 + v34, v35);
  }

  v11 = v30[9];
  v12 = sub_21CB85C44();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v6 + v11, 1, v12))
  {
LABEL_3:
    (*(v13 + 8))(v6 + v11, v12);
  }

LABEL_4:
  v14 = (v4 + v5[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = v1;

    v15 = type metadata accessor for PMAccount.MockData(0);
    v16 = v15[8];
    v17 = sub_21CB80DD4();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    if (!v19(v14 + v16, 1, v17))
    {
      (*(v18 + 8))(v14 + v16, v17);
    }

    v20 = v15[12];
    if (!v19(v14 + v20, 1, v17))
    {
      (*(v18 + 8))(v14 + v20, v17);
    }

    v21 = v15[15];
    v22 = sub_21CB85BB4();
    v23 = *(v22 - 8);
    v1 = v40;
    if (!(*(v23 + 48))(v14 + v21, 1, v22))
    {
      (*(v23 + 8))(v14 + v21, v22);
    }

    v24 = v15[16];
    v25 = sub_21CB85C04();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v14 + v24, 1, v25))
    {
      (*(v26 + 8))(v14 + v24, v25);
    }

    v27 = v15[18];
    v28 = sub_21CB85C44();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v14 + v27, 1, v28))
    {
      (*(v29 + 8))(v14 + v27, v28);
    }
  }

  else
  {
  }

  v37 = v4 + v5[7];
  if (*(v37 + 8))
  {
  }

  v38 = v4 + *(v2 + 24);
  if (*(v38 + 16) >= 5uLL)
  {
  }

  if (*(v38 + 32) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v1, v42 + v41, v3 | 7);
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for PMAccountPickerViewContent(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CB82484();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_7()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t objectdestroyTm_8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for PMAccountsListOverflowButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000) + 32);
  v7 = sub_21CB85114();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_10()
{
  sub_21C70AC30(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t objectdestroyTm_11()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for PMAccountsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 40);
  v6 = sub_21CB85C44();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8);

  sub_21C7025C4(*(v0 + v3 + *(v1 + 44)), *(v0 + v3 + *(v1 + 44) + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_13()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccountsViewAccountCell(0);
  v3 = *(*(v2 - 8) + 80);
  v44 = *(*(v2 - 8) + 64);
  v45 = (v3 + 16) & ~v3;

  v4 = v0 + v45 + *(v2 + 20);

  v5 = type metadata accessor for PMAccount(0);
  v6 = v4 + v5[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v9 = *(v8 + 28);
    v10 = sub_21CB85B74();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);

    v11 = *(v8 + 36);
    v12 = sub_21CB85C44();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v6 + v11, 1, v12))
    {
      (*(v13 + 8))(v6 + v11, v12);
    }
  }

  else
  {

    v14 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v15 = v14[7];
    v16 = sub_21CB85C04();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v6 + v15, 1, v16))
    {
      (*(v17 + 8))(v6 + v15, v16);
    }

    v18 = v14[8];
    v19 = sub_21CB85BB4();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v6 + v18, 1, v19))
    {
      (*(v20 + 8))(v6 + v18, v19);
    }

    v21 = v14[9];
    v22 = sub_21CB85C44();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v6 + v21, 1, v22))
    {
      (*(v23 + 8))(v6 + v21, v22);
    }
  }

  v24 = (v4 + v5[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = v3;
    v43 = v1;

    v25 = type metadata accessor for PMAccount.MockData(0);
    v26 = v25[8];
    v27 = sub_21CB80DD4();
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);
    if (!v29(v24 + v26, 1, v27))
    {
      (*(v28 + 8))(v24 + v26, v27);
    }

    v30 = v25[12];
    if (!v29(v24 + v30, 1, v27))
    {
      (*(v28 + 8))(v24 + v30, v27);
    }

    v31 = v25[15];
    v32 = sub_21CB85BB4();
    v33 = *(v32 - 8);
    v1 = v43;
    if (!(*(v33 + 48))(v24 + v31, 1, v32))
    {
      (*(v33 + 8))(v24 + v31, v32);
    }

    v34 = v25[16];
    v35 = sub_21CB85C04();
    v36 = *(v35 - 8);
    v3 = v42;
    if (!(*(v36 + 48))(v24 + v34, 1, v35))
    {
      (*(v36 + 8))(v24 + v34, v35);
    }

    v37 = v25[18];
    v38 = sub_21CB85C44();
    v39 = *(v38 - 8);
    if (!(*(v39 + 48))(v24 + v37, 1, v38))
    {
      (*(v39 + 8))(v24 + v37, v38);
    }
  }

  else
  {
  }

  v40 = v4 + v5[7];
  if (*(v40 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v45 + v44, v3 | 7);
}

uint64_t objectdestroyTm_14()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t objectdestroyTm_15()
{
  v1 = type metadata accessor for PMAddAccountView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB823B4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_21C7025C4(*(v5 + *(v1 + 36)), *(v5 + *(v1 + 36) + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_16()
{
  v1 = v0;
  v2 = type metadata accessor for PMEditAccountWebsitesView(0);
  v3 = *(*(v2 - 1) + 80);
  v50 = *(*(v2 - 1) + 64);
  v51 = (v3 + 16) & ~v3;
  v4 = v0 + v51;

  v5 = type metadata accessor for PMAccount(0);
  v6 = v0 + v51 + v5[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v9 = *(v8 + 28);
    v10 = sub_21CB85B74();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);

    v11 = *(v8 + 36);
    v12 = sub_21CB85C44();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v6 + v11, 1, v12))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v30 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v31 = v30[7];
  v32 = sub_21CB85C04();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v6 + v31, 1, v32))
  {
    (*(v33 + 8))(v6 + v31, v32);
  }

  v34 = v30[8];
  v35 = sub_21CB85BB4();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v6 + v34, 1, v35))
  {
    (*(v36 + 8))(v6 + v34, v35);
  }

  v11 = v30[9];
  v12 = sub_21CB85C44();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v6 + v11, 1, v12))
  {
LABEL_3:
    (*(v13 + 8))(v6 + v11, v12);
  }

LABEL_4:
  v14 = (v4 + v5[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = v1;

    v15 = type metadata accessor for PMAccount.MockData(0);
    v16 = v15[8];
    v17 = sub_21CB80DD4();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    if (!v19(v14 + v16, 1, v17))
    {
      (*(v18 + 8))(v14 + v16, v17);
    }

    v20 = v15[12];
    if (!v19(v14 + v20, 1, v17))
    {
      (*(v18 + 8))(v14 + v20, v17);
    }

    v21 = v15[15];
    v22 = sub_21CB85BB4();
    v23 = *(v22 - 8);
    v1 = v49;
    if (!(*(v23 + 48))(v14 + v21, 1, v22))
    {
      (*(v23 + 8))(v14 + v21, v22);
    }

    v24 = v15[16];
    v25 = sub_21CB85C04();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v14 + v24, 1, v25))
    {
      (*(v26 + 8))(v14 + v24, v25);
    }

    v27 = v15[18];
    v28 = sub_21CB85C44();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v14 + v27, 1, v28))
    {
      (*(v29 + 8))(v14 + v27, v28);
    }
  }

  else
  {
  }

  v37 = v4 + v5[7];
  if (*(v37 + 8))
  {
  }

  v38 = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = sub_21CB823B4();
    (*(*(v39 - 8) + 8))(v4 + v38, v39);
  }

  else
  {
  }

  v40 = v2[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = sub_21CB82484();
    (*(*(v41 - 8) + 8))(v4 + v40, v41);
  }

  else
  {
  }

  v42 = v4 + v2[10];
  v43 = sub_21CB80E34();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  if (!v45(v42, 1, v43))
  {
    (*(v44 + 8))(v42, v43);
  }

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE0E0, &unk_21CBA9580);

  v47 = *(v46 + 40);
  if (!v45(v42 + v47, 1, v43))
  {
    (*(v44 + 8))(v42 + v47, v43);
  }

  return MEMORY[0x2821FE8E8](v1, v51 + v50, v3 | 7);
}

uint64_t objectdestroyTm_17()
{
  v1 = type metadata accessor for PMOnboardingRootView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB823B4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB82484();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_18()
{
  v1 = type metadata accessor for PMAppAccountsList(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB82834();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB82A34();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21CB83834();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v5 + v11, 1, v12))
    {
      (*(v13 + 8))(v5 + v11, v12);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_19(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroyTm_20()
{
  v1 = type metadata accessor for PMAppRecentlyDeletedAccountsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB823B4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB82A34();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB83834();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  sub_21C7025C4(*(v5 + v1[9]), *(v5 + v1[9] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_21()
{
  v1 = type metadata accessor for PMAppRootNavigationView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v0 + v3 + v1[5];

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA8, &qword_21CBAE138) + 32);
  v9 = sub_21CB83AD4();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);

  v10 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB83834();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  v13 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEADD0, &qword_21CBA6F70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21CB81FE4();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_22()
{
  v1 = (type metadata accessor for PMAppSecurityRecommendationsList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB83834();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for PMImageBadgeModifier(0, v5, *(v4 + 24), a4);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = *(v7 + 64);
  (*(*(v5 - 8) + 8))(v4 + *(v6 + 52) + v9, v5);

  return MEMORY[0x2821FE8E8](v4, v9 + v10, v8 | 7);
}

uint64_t objectdestroyTm_24()
{
  v1 = type metadata accessor for PMAppSourceList(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  sub_21C7025C4(*(v5 + *(v1 + 36)), *(v5 + *(v1 + 36) + 8));
  v7 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB83834();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_25()
{
  v1 = v0;
  v2 = type metadata accessor for PMChangePasswordOnWebsiteLink(0);
  v3 = *(*(v2 - 8) + 80);
  v44 = *(*(v2 - 8) + 64);
  v43 = (v3 + 16) & ~v3;
  v4 = v0 + v43;
  sub_21C79C1F4(*(v0 + v43), *(v0 + v43 + 8), *(v0 + v43 + 16));
  v5 = v0 + v43 + *(v2 + 20);

  v6 = type metadata accessor for PMAccount(0);
  v7 = v5 + v6[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v42 = v6;
  if (EnumCaseMultiPayload == 1)
  {

    v9 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v10 = *(v9 + 28);
    v11 = sub_21CB85B74();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);

    v12 = *(v9 + 36);
    v13 = sub_21CB85C44();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v7 + v12, 1, v13))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v31 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v32 = v31[7];
  v33 = sub_21CB85C04();
  v34 = *(v33 - 8);
  if (!(*(v34 + 48))(v7 + v32, 1, v33))
  {
    (*(v34 + 8))(v7 + v32, v33);
  }

  v35 = v31[8];
  v36 = sub_21CB85BB4();
  v37 = *(v36 - 8);
  if (!(*(v37 + 48))(v7 + v35, 1, v36))
  {
    (*(v37 + 8))(v7 + v35, v36);
  }

  v12 = v31[9];
  v13 = sub_21CB85C44();
  v14 = *(v13 - 8);
  v6 = v42;
  if (!(*(v14 + 48))(v7 + v12, 1, v13))
  {
LABEL_3:
    (*(v14 + 8))(v7 + v12, v13);
  }

LABEL_4:
  v15 = (v5 + v6[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = v3;
    v41 = v1;

    v16 = type metadata accessor for PMAccount.MockData(0);
    v17 = v16[8];
    v18 = sub_21CB80DD4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 48);
    if (!v20(v15 + v17, 1, v18))
    {
      (*(v19 + 8))(v15 + v17, v18);
    }

    v21 = v16[12];
    if (!v20(v15 + v21, 1, v18))
    {
      (*(v19 + 8))(v15 + v21, v18);
    }

    v22 = v16[15];
    v23 = sub_21CB85BB4();
    v24 = *(v23 - 8);
    v1 = v41;
    if (!(*(v24 + 48))(v15 + v22, 1, v23))
    {
      (*(v24 + 8))(v15 + v22, v23);
    }

    v25 = v16[16];
    v26 = sub_21CB85C04();
    v27 = *(v26 - 8);
    v3 = v40;
    if (!(*(v27 + 48))(v15 + v25, 1, v26))
    {
      (*(v27 + 8))(v15 + v25, v26);
    }

    v28 = v16[18];
    v29 = sub_21CB85C44();
    v30 = *(v29 - 8);
    v6 = v42;
    if (!(*(v30 + 48))(v15 + v28, 1, v29))
    {
      (*(v30 + 8))(v15 + v28, v29);
    }
  }

  else
  {
  }

  v38 = v5 + v6[7];
  if (*(v38 + 8))
  {
  }

  if (*(v4 + *(v2 + 36)))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v43 + v44, v3 | 7);
}

uint64_t objectdestroyTm_26()
{
  v1 = type metadata accessor for PMCombinedAccountDetailsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  sub_21C79C1F4(*(v5 + 48), *(v5 + 56), *(v5 + 64));
  sub_21C940E04(*(v5 + 72), *(v5 + 80));
  sub_21C7025C4(*(v5 + 88), *(v5 + 96));
  v6 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB82834();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_21C7025C4(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  v8 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB83834();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  sub_21C7025C4(*(v5 + v1[13]), *(v5 + v1[13] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_27()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_28()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t objectdestroyTm_29()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_30()
{
  v1 = (type metadata accessor for PMEditGroupFlow(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_21CB85C44();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for PMSharingGroup(0);

  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[8]));
  v6 = v0 + v3 + v1[9];
  v7 = sub_21CB82644();
  (*(*(v7 - 8) + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);

  v8 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB823B4();
    (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_31()
{

  sub_21C79C1F4(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t objectdestroyTm_32()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroyTm_33()
{
  v1 = *(type metadata accessor for PMICloudTermsAndConditionsAlert(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21CB82484();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for PMProgressView(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 1) + 80);
  v8 = *(*(v6 - 1) + 64);
  v9 = (v7 + 32) & ~v7;
  v10 = v4 + v9;
  (*(*(v5 - 8) + 8))(v4 + v9, v5);

  j__swift_release(*(v4 + v9 + v6[10]));
  v11 = v6[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B18, &unk_21CBB3F50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21CB83E64();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  else
  {
  }

  v13 = v6[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21CB82834();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v4, v9 + v8, v7 | 7);
}

uint64_t objectdestroyTm_35()
{
  v1 = type metadata accessor for PMGeneratedPasswordsLogView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  MEMORY[0x21CF16E70](v0 + v3);
  v5 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CB823B4();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_36()
{
  v1 = *(type metadata accessor for PMWebsiteNameFetchingDebuggerView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21CB823B4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_37()
{
  v1 = type metadata accessor for PMGeneratedPasswordsSearchResultsRow(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_21C7025C4(*(v5 + 16), *(v5 + 24));
  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB82834();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_38()
{
  v1 = type metadata accessor for PMGroupInvitationAcceptanceFlow(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_21CB85C44();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for PMSharingGroup(0);

  v6 = v0 + v3 + *(v1 + 20);
  v7 = sub_21CB82644();
  (*(*(v7 - 8) + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);

  v8 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB823B4();
    (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_39()
{
  v1 = (type metadata accessor for PMGroupInvitationDetails(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_21CB85C44();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for PMSharingGroup(0);

  v6 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB823B4();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_40()
{
  v1 = (type metadata accessor for PMGroupInvitationOnboardingView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_21CB85C44();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for PMSharingGroup(0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_41()
{
  v1 = type metadata accessor for PMGroupInvitationsList(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE8, &qword_21CBAE7D0);
  if (swift_getEnumCaseMultiPayload() != 1 || (v7 = sub_21CB823B4(), (*(*(v7 - 8) + 8))(v6, v7), *(v6 + *(type metadata accessor for PMDismissAction(0) + 20))))
  {
  }

  v8 = v5 + v1[7];
  v9 = sub_21CB85C44();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8);

  sub_21C7025C4(*(v5 + v1[8]), *(v5 + v1[8] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_42()
{
  v1 = type metadata accessor for PMAccountHistoryView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CB823B4();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_43()
{
  v1 = (type metadata accessor for PMGroupInvitationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_21CB85C44();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for PMSharingGroup(0);

  sub_21C7025C4(*(v0 + v3 + v1[12]), *(v0 + v3 + v1[12] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_44()
{
  v1 = type metadata accessor for PMEmptyStateDetailView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  v7 = sub_21CB85C44();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 6, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v5 + *(v1 + 40);
  v10 = type metadata accessor for PMSharingGroup(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    (*(v8 + 8))(v9, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4658, &unk_21CBBAEF0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_45()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroyTm_46()
{
  v1 = type metadata accessor for PMCredentialExchangeOnboardingView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB83834();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB823B4();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21CB82054();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  v13 = v5 + v1[10];
  v14 = sub_21CB818C4();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v13, 1, v14))
  {
    (*(v15 + 8))(v13, v14);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A48, &qword_21CBBC058);

  if (*(v5 + v1[13]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_47()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroyTm_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PMGroupMembersList(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);

  v9 = v4 + v7 + *(v5 + 76);
  v10 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v11 = v9 + *(v10 + 24);
    v12 = sub_21CB85C44();
    (*(*(v12 - 8) + 8))(v11, v12);
    type metadata accessor for PMSharingGroup(0);

    v13 = v9 + *(v10 + 28);
    if (*(v13 + 40))
    {
    }
  }

  sub_21C7025C4(*(v4 + v7 + *(v5 + 88)), *(v4 + v7 + *(v5 + 88) + 8));

  return MEMORY[0x2821FE8E8](v4, v7 + v8, v6 | 7);
}

uint64_t objectdestroyTm_49()
{
  v1 = (type metadata accessor for PMAppAccountsCollectionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  v6 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB83834();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_50()
{
  v1 = type metadata accessor for PMWiFiList(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB82A34();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_21C7025C4(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB83834();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5 + v9, 1, v10))
    {
      (*(v11 + 8))(v5 + v9, v10);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_51()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t objectdestroyTm_52()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroyTm_53()
{
  v1 = type metadata accessor for PMWiFiDetailsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CB82834();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB823B4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = *(v1 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_54()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroyTm_55()
{

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t objectdestroyTm_56()
{
  v1 = v0;
  v2 = type metadata accessor for PMLargeTypeView(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;

  v7 = v0 + v4 + v2[5];
  v8 = type metadata accessor for PMLargeTypeView.Icon(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    goto LABEL_32;
  }

  v61 = v5;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v59 = v0;

    v10 = type metadata accessor for PMWiFiNetwork(0);
    v11 = v10[7];
    v12 = sub_21CB80DD4();
    v13 = *(v12 - 8);
    v14 = *(v13 + 48);
    if (!v14(v7 + v11, 1, v12))
    {
      (*(v13 + 8))(v7 + v11, v12);
    }

    v15 = v10[8];
    if (!v14(v7 + v15, 1, v12))
    {
      (*(v13 + 8))(v7 + v15, v12);
    }

    v16 = (v7 + v10[14]);
    v1 = v59;
    v5 = v61;
    v4 = (v3 + 16) & ~v3;
    goto LABEL_31;
  }

  v17 = type metadata accessor for PMAccount(0);
  v18 = v7 + v17[5];
  type metadata accessor for PMAccount.UniqueID(0);
  v19 = swift_getEnumCaseMultiPayload();

  v58 = v17;
  if (v19 == 1)
  {

    v20 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v21 = *(v20 + 28);
    v22 = sub_21CB85B74();
    (*(*(v22 - 8) + 8))(v18 + v21, v22);

    v23 = *(v20 + 36);
    v24 = sub_21CB85C44();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v18 + v23, 1, v24))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v41 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v42 = v41[7];
  v43 = sub_21CB85C04();
  v44 = *(v43 - 8);
  if (!(*(v44 + 48))(v18 + v42, 1, v43))
  {
    (*(v44 + 8))(v18 + v42, v43);
  }

  v45 = v41[8];
  v46 = sub_21CB85BB4();
  v47 = *(v46 - 8);
  if (!(*(v47 + 48))(v18 + v45, 1, v46))
  {
    (*(v47 + 8))(v18 + v45, v46);
  }

  v23 = v41[9];
  v24 = sub_21CB85C44();
  v25 = *(v24 - 8);
  v17 = v58;
  if (!(*(v25 + 48))(v18 + v23, 1, v24))
  {
LABEL_10:
    (*(v25 + 8))(v18 + v23, v24);
  }

LABEL_11:
  v26 = (v7 + v17[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = v1;

    v27 = type metadata accessor for PMAccount.MockData(0);
    v28 = v27[8];
    v29 = sub_21CB80DD4();
    v57 = *(v29 - 8);
    v30 = *(v57 + 48);
    if (!v30(v26 + v28, 1, v29))
    {
      (*(v57 + 8))(v26 + v28, v29);
    }

    v31 = v27[12];
    if (!v30(v26 + v31, 1, v29))
    {
      (*(v57 + 8))(v26 + v31, v29);
    }

    v32 = v27[15];
    v33 = sub_21CB85BB4();
    v34 = *(v33 - 8);
    v1 = v60;
    if (!(*(v34 + 48))(v26 + v32, 1, v33))
    {
      (*(v34 + 8))(v26 + v32, v33);
    }

    v35 = v27[16];
    v36 = sub_21CB85C04();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(v26 + v35, 1, v36))
    {
      (*(v37 + 8))(v26 + v35, v36);
    }

    v38 = v27[18];
    v39 = sub_21CB85C44();
    v40 = *(v39 - 8);
    v17 = v58;
    if (!(*(v40 + 48))(v26 + v38, 1, v39))
    {
      (*(v40 + 8))(v26 + v38, v39);
    }
  }

  else
  {
  }

  v48 = v7 + v17[7];
  v5 = v61;
  v4 = (v3 + 16) & ~v3;
  if (*(v48 + 8))
  {

    v16 = (v48 + 24);
LABEL_31:
  }

LABEL_32:
  v49 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = sub_21CB823B4();
    (*(*(v50 - 8) + 8))(v6 + v49, v50);
  }

  else
  {
  }

  v51 = v2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = sub_21CB83834();
    v53 = *(v52 - 8);
    if (!(*(v53 + 48))(v6 + v51, 1, v52))
    {
      (*(v53 + 8))(v6 + v51, v52);
    }
  }

  else
  {
  }

  v54 = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = sub_21CB82054();
    (*(*(v55 - 8) + 8))(v6 + v54, v55);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_57()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t objectdestroyTm_58()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroyTm_59()
{
  v1 = (type metadata accessor for PMImportView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF60C8, &unk_21CBC02A0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB823B4();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_60()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroyTm_61()
{
  v1 = v0;
  v2 = type metadata accessor for PMMoveAccountToGroupAlert(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = v1 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB82484();
    (*(*(v7 - 8) + 8))(v1 + v4, v7);
  }

  else
  {
  }

  v8 = v6 + *(v2 + 20);

  v9 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78) + 32);
  v10 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v94 = v10;
    v98 = v5;
    v100 = (v3 + 16) & ~v3;
    v102 = v3;

    v11 = type metadata accessor for PMAccount(0);
    v12 = v9 + v11[5];
    type metadata accessor for PMAccount.UniqueID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

    if (EnumCaseMultiPayload == 1)
    {

      v14 = type metadata accessor for PMAccount.SIWAUniqueID(0);
      v15 = *(v14 + 28);
      v16 = sub_21CB85B74();
      (*(*(v16 - 8) + 8))(v12 + v15, v16);

      v17 = *(v14 + 36);
      v18 = sub_21CB85C44();
      v19 = *(v18 - 8);
      if (!(*(v19 + 48))(v12 + v17, 1, v18))
      {
        (*(v19 + 8))(v12 + v17, v18);
      }
    }

    else
    {
      v20 = v2;

      v21 = type metadata accessor for PMAccount.CombinedUniqueID(0);
      v22 = v21[7];
      v23 = sub_21CB85C04();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(v12 + v22, 1, v23))
      {
        (*(v24 + 8))(v12 + v22, v23);
      }

      v25 = v21[8];
      v26 = sub_21CB85BB4();
      v27 = *(v26 - 8);
      if (!(*(v27 + 48))(v12 + v25, 1, v26))
      {
        (*(v27 + 8))(v12 + v25, v26);
      }

      v28 = v21[9];
      v29 = sub_21CB85C44();
      v30 = *(v29 - 8);
      v2 = v20;
      if (!(*(v30 + 48))(v12 + v28, 1, v29))
      {
        (*(v30 + 8))(v12 + v28, v29);
      }
    }

    v31 = (v9 + v11[6]);
    type metadata accessor for PMAccount.Storage(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v93 = v11;
      v95 = v2;
      v96 = v1;

      v32 = type metadata accessor for PMAccount.MockData(0);
      v33 = v32[8];
      v34 = sub_21CB80DD4();
      v35 = *(v34 - 8);
      v36 = *(v35 + 48);
      if (!v36(v31 + v33, 1, v34))
      {
        (*(v35 + 8))(v31 + v33, v34);
      }

      v37 = v32[12];
      if (!v36(v31 + v37, 1, v34))
      {
        (*(v35 + 8))(v31 + v37, v34);
      }

      v38 = v32[15];
      v39 = sub_21CB85BB4();
      v40 = *(v39 - 8);
      v1 = v96;
      if (!(*(v40 + 48))(v31 + v38, 1, v39))
      {
        (*(v40 + 8))(v31 + v38, v39);
      }

      v41 = v32[16];
      v42 = sub_21CB85C04();
      v43 = *(v42 - 8);
      v11 = v93;
      if (!(*(v43 + 48))(v31 + v41, 1, v42))
      {
        (*(v43 + 8))(v31 + v41, v42);
      }

      v44 = v32[18];
      v45 = sub_21CB85C44();
      v46 = *(v45 - 8);
      v2 = v95;
      if (!(*(v46 + 48))(v31 + v44, 1, v45))
      {
        (*(v46 + 8))(v31 + v44, v45);
      }
    }

    else
    {
    }

    v47 = v9 + v11[7];
    if (*(v47 + 8))
    {
    }

    v48 = v9 + *(v94 + 20);
    v49 = type metadata accessor for PMSharingGroup(0);
    v50 = *(*(v49 - 8) + 48);
    if (!v50(v48, 1, v49))
    {
      v51 = sub_21CB85C44();
      (*(*(v51 - 8) + 8))(v48, v51);
    }

    v52 = v9 + *(v94 + 24);
    v53 = v50(v52, 1, v49);
    v4 = v100;
    v3 = v102;
    v5 = v98;
    if (!v53)
    {
      v54 = sub_21CB85C44();
      (*(*(v54 - 8) + 8))(v52, v54);
    }
  }

  v55 = v6 + *(v2 + 32);
  v56 = type metadata accessor for PMAccount(0);
  if (!(*(*(v56 - 1) + 48))(v55, 1, v56))
  {
    v101 = v4;
    v103 = v3;

    v57 = v55 + v56[5];
    type metadata accessor for PMAccount.UniqueID(0);
    v58 = swift_getEnumCaseMultiPayload();

    v99 = v5;
    if (v58 == 1)
    {

      v59 = type metadata accessor for PMAccount.SIWAUniqueID(0);
      v60 = *(v59 + 28);
      v61 = sub_21CB85B74();
      (*(*(v61 - 8) + 8))(v57 + v60, v61);

      v62 = *(v59 + 36);
      v63 = sub_21CB85C44();
      v64 = *(v63 - 8);
      if (!(*(v64 + 48))(v57 + v62, 1, v63))
      {
        (*(v64 + 8))(v57 + v62, v63);
      }
    }

    else
    {

      v65 = type metadata accessor for PMAccount.CombinedUniqueID(0);
      v66 = v65[7];
      v67 = sub_21CB85C04();
      v68 = *(v67 - 8);
      if (!(*(v68 + 48))(v57 + v66, 1, v67))
      {
        (*(v68 + 8))(v57 + v66, v67);
      }

      v69 = v65[8];
      v70 = sub_21CB85BB4();
      v71 = *(v70 - 8);
      if (!(*(v71 + 48))(v57 + v69, 1, v70))
      {
        (*(v71 + 8))(v57 + v69, v70);
      }

      v72 = v65[9];
      v73 = sub_21CB85C44();
      v74 = *(v73 - 8);
      v5 = v99;
      if (!(*(v74 + 48))(v57 + v72, 1, v73))
      {
        (*(v74 + 8))(v57 + v72, v73);
      }
    }

    v75 = (v55 + v56[6]);
    type metadata accessor for PMAccount.Storage(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v97 = v1;

      v76 = type metadata accessor for PMAccount.MockData(0);
      v77 = v76[8];
      v78 = sub_21CB80DD4();
      v79 = *(v78 - 8);
      v80 = *(v79 + 48);
      if (!v80(v75 + v77, 1, v78))
      {
        (*(v79 + 8))(v75 + v77, v78);
      }

      v81 = v76[12];
      if (!v80(v75 + v81, 1, v78))
      {
        (*(v79 + 8))(v75 + v81, v78);
      }

      v82 = v76[15];
      v83 = sub_21CB85BB4();
      v84 = *(v83 - 8);
      v1 = v97;
      if (!(*(v84 + 48))(v75 + v82, 1, v83))
      {
        (*(v84 + 8))(v75 + v82, v83);
      }

      v85 = v76[16];
      v86 = sub_21CB85C04();
      v87 = *(v86 - 8);
      if (!(*(v87 + 48))(v75 + v85, 1, v86))
      {
        (*(v87 + 8))(v75 + v85, v86);
      }

      v88 = v76[18];
      v89 = sub_21CB85C44();
      v90 = *(v89 - 8);
      v5 = v99;
      if (!(*(v90 + 48))(v75 + v88, 1, v89))
      {
        (*(v90 + 8))(v75 + v88, v89);
      }
    }

    else
    {
    }

    v91 = v55 + v56[7];
    v4 = v101;
    v3 = v103;
    if (*(v91 + 8))
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80);

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_62()
{
  v1 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v203 = *(*(v1 - 8) + 80);
  v2 = (v203 + 16) & ~v203;
  v3 = *(*(v1 - 8) + 64);
  v204 = v0;
  v4 = v0 + v2;

  v5 = type metadata accessor for PMAccount(0);
  v6 = v0 + v2 + v5[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v206 = v5;
  if (EnumCaseMultiPayload == 1)
  {

    v8 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v9 = *(v8 + 28);
    v10 = sub_21CB85B74();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);

    v11 = *(v8 + 36);
    v12 = sub_21CB85C44();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v6 + v11, 1, v12))
    {
      (*(v13 + 8))(v6 + v11, v12);
    }
  }

  else
  {

    v14 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v15 = v14[7];
    v16 = sub_21CB85C04();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v6 + v15, 1, v16))
    {
      (*(v17 + 8))(v6 + v15, v16);
    }

    v18 = v14[8];
    v19 = sub_21CB85BB4();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v6 + v18, 1, v19))
    {
      (*(v20 + 8))(v6 + v18, v19);
    }

    v21 = v14[9];
    v22 = sub_21CB85C44();
    v23 = *(v22 - 8);
    v5 = v206;
    if (!(*(v23 + 48))(v6 + v21, 1, v22))
    {
      (*(v23 + 8))(v6 + v21, v22);
    }
  }

  v24 = (v4 + v5[6]);
  type metadata accessor for PMAccount.Storage(0);
  v205 = v4;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v1;

    v26 = type metadata accessor for PMAccount.MockData(0);
    v27 = v26[8];
    v28 = sub_21CB80DD4();
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);
    if (!v30(v24 + v27, 1, v28))
    {
      (*(v29 + 8))(v24 + v27, v28);
    }

    v31 = v26[12];
    if (!v30(v24 + v31, 1, v28))
    {
      (*(v29 + 8))(v24 + v31, v28);
    }

    v32 = v26[15];
    v33 = sub_21CB85BB4();
    v34 = *(v33 - 8);
    v1 = v25;
    v5 = v206;
    if (!(*(v34 + 48))(v24 + v32, 1, v33))
    {
      (*(v34 + 8))(v24 + v32, v33);
    }

    v35 = v26[16];
    v36 = sub_21CB85C04();
    v37 = *(v36 - 8);
    v2 = (v203 + 16) & ~v203;
    if (!(*(v37 + 48))(v24 + v35, 1, v36))
    {
      (*(v37 + 8))(v24 + v35, v36);
    }

    v38 = v26[18];
    v39 = sub_21CB85C44();
    v40 = *(v39 - 8);
    v4 = v205;
    if (!(*(v40 + 48))(v24 + v38, 1, v39))
    {
      (*(v40 + 8))(v24 + v38, v39);
    }
  }

  else
  {
  }

  v41 = v4 + v5[7];
  if (*(v41 + 8))
  {
  }

  v42 = v4 + *(v1 + 40);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  if (!(*(*(v43 - 8) + 48))(v42, 2, v43))
  {
    v44 = sub_21CB85C44();
    v45 = *(v44 - 8);
    if (!(*(v45 + 48))(v42, 1, v44))
    {
      (*(v45 + 8))(v42, v44);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30);

  v46 = v4 + *(v1 + 44);
  type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v47 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488) + 32);
    v48 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
    if (!(*(*(v48 - 8) + 48))(v47, 1, v48))
    {

      v49 = v47 + v5[5];
      v50 = swift_getEnumCaseMultiPayload();

      if (v50 == 1)
      {

        v51 = type metadata accessor for PMAccount.SIWAUniqueID(0);
        v52 = *(v51 + 28);
        v53 = sub_21CB85B74();
        (*(*(v53 - 8) + 8))(v49 + v52, v53);

        v54 = *(v51 + 36);
        v55 = sub_21CB85C44();
        v56 = *(v55 - 8);
        if (!(*(v56 + 48))(v49 + v54, 1, v55))
        {
          (*(v56 + 8))(v49 + v54, v55);
        }
      }

      else
      {
        v66 = v3;
        v67 = v2;

        v68 = type metadata accessor for PMAccount.CombinedUniqueID(0);
        v69 = v68[7];
        v70 = sub_21CB85C04();
        v71 = *(v70 - 8);
        if (!(*(v71 + 48))(v49 + v69, 1, v70))
        {
          (*(v71 + 8))(v49 + v69, v70);
        }

        v72 = v68[8];
        v73 = sub_21CB85BB4();
        v74 = *(v73 - 8);
        if (!(*(v74 + 48))(v49 + v72, 1, v73))
        {
          (*(v74 + 8))(v49 + v72, v73);
        }

        v75 = v68[9];
        v76 = sub_21CB85C44();
        v77 = *(v76 - 8);
        v2 = v67;
        v3 = v66;
        v5 = v206;
        if (!(*(v77 + 48))(v49 + v75, 1, v76))
        {
          (*(v77 + 8))(v49 + v75, v76);
        }
      }

      v78 = (v47 + v5[6]);
      v199 = v2;
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v79 = type metadata accessor for PMAccount.MockData(0);
        v80 = v79[8];
        v81 = sub_21CB80DD4();
        v82 = *(v81 - 8);
        v83 = *(v82 + 48);
        if (!v83(v78 + v80, 1, v81))
        {
          (*(v82 + 8))(v78 + v80, v81);
        }

        v84 = v79[12];
        if (!v83(v78 + v84, 1, v81))
        {
          (*(v82 + 8))(v78 + v84, v81);
        }

        v85 = v79[15];
        v86 = sub_21CB85BB4();
        v87 = *(v86 - 8);
        if (!(*(v87 + 48))(v78 + v85, 1, v86))
        {
          (*(v87 + 8))(v78 + v85, v86);
        }

        v88 = v79[16];
        v89 = sub_21CB85C04();
        v90 = *(v89 - 8);
        v5 = v206;
        if (!(*(v90 + 48))(v78 + v88, 1, v89))
        {
          (*(v90 + 8))(v78 + v88, v89);
        }

        v91 = v79[18];
        v92 = sub_21CB85C44();
        v93 = *(v92 - 8);
        if (!(*(v93 + 48))(v78 + v91, 1, v92))
        {
          (*(v93 + 8))(v78 + v91, v92);
        }
      }

      else
      {
      }

      v121 = v47 + v5[7];
      if (*(v121 + 8))
      {
      }

      v122 = v47 + *(v48 + 20);
      v123 = type metadata accessor for PMSharingGroup(0);
      v124 = *(*(v123 - 8) + 48);
      if (!v124(v122, 1, v123))
      {
        v125 = sub_21CB85C44();
        (*(*(v125 - 8) + 8))(v122, v125);
      }

      v126 = v47 + *(v48 + 24);
      v2 = v199;
      if (!v124(v126, 1, v123))
      {
        v127 = sub_21CB85C44();
        (*(*(v127 - 8) + 8))(v126, v127);
      }
    }

    v128 = v47 + *(type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0) + 20);
    if (!(*(*(v5 - 1) + 48))(v128, 1, v5))
    {

      v129 = v128 + v5[5];
      v130 = swift_getEnumCaseMultiPayload();

      if (v130 == 1)
      {

        v131 = type metadata accessor for PMAccount.SIWAUniqueID(0);
        v132 = *(v131 + 28);
        v133 = sub_21CB85B74();
        (*(*(v133 - 8) + 8))(v129 + v132, v133);

        v134 = *(v131 + 36);
        v135 = sub_21CB85C44();
        v136 = *(v135 - 8);
        if (!(*(v136 + 48))(v129 + v134, 1, v135))
        {
          (*(v136 + 8))(v129 + v134, v135);
        }
      }

      else
      {

        v152 = type metadata accessor for PMAccount.CombinedUniqueID(0);
        v153 = v152[7];
        v154 = sub_21CB85C04();
        v155 = *(v154 - 8);
        if (!(*(v155 + 48))(v129 + v153, 1, v154))
        {
          (*(v155 + 8))(v129 + v153, v154);
        }

        v156 = v152[8];
        v157 = sub_21CB85BB4();
        v158 = *(v157 - 8);
        if (!(*(v158 + 48))(v129 + v156, 1, v157))
        {
          (*(v158 + 8))(v129 + v156, v157);
        }

        v159 = v152[9];
        v160 = sub_21CB85C44();
        v161 = *(v160 - 8);
        v5 = v206;
        if (!(*(v161 + 48))(v129 + v159, 1, v160))
        {
          (*(v161 + 8))(v129 + v159, v160);
        }
      }

      v162 = (v128 + v5[6]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v163 = type metadata accessor for PMAccount.MockData(0);
        v164 = v163[8];
        v165 = sub_21CB80DD4();
        v166 = *(v165 - 8);
        v167 = *(v166 + 48);
        if (!v167(v162 + v164, 1, v165))
        {
          (*(v166 + 8))(v162 + v164, v165);
        }

        v168 = v163[12];
        if (!v167(v162 + v168, 1, v165))
        {
          (*(v166 + 8))(v162 + v168, v165);
        }

        v169 = v163[15];
        v170 = sub_21CB85BB4();
        v171 = *(v170 - 8);
        if (!(*(v171 + 48))(v162 + v169, 1, v170))
        {
          (*(v171 + 8))(v162 + v169, v170);
        }

        v172 = v163[16];
        v173 = sub_21CB85C04();
        v174 = *(v173 - 8);
        if ((*(v174 + 48))(v162 + v172, 1, v173))
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      }

      goto LABEL_124;
    }
  }

  else
  {
    v57 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
    if (!(*(*(v57 - 8) + 48))(v46, 1, v57))
    {

      v202 = v46;
      v58 = v46 + v5[5];
      v59 = swift_getEnumCaseMultiPayload();

      if (v59 == 1)
      {

        v60 = type metadata accessor for PMAccount.SIWAUniqueID(0);
        v61 = *(v60 + 28);
        v62 = sub_21CB85B74();
        (*(*(v62 - 8) + 8))(v58 + v61, v62);

        v63 = *(v60 + 36);
        v64 = sub_21CB85C44();
        v65 = *(v64 - 8);
        if (!(*(v65 + 48))(v58 + v63, 1, v64))
        {
          (*(v65 + 8))(v58 + v63, v64);
        }
      }

      else
      {

        v94 = type metadata accessor for PMAccount.CombinedUniqueID(0);
        v95 = v94[7];
        v96 = sub_21CB85C04();
        v97 = *(v96 - 8);
        if (!(*(v97 + 48))(v58 + v95, 1, v96))
        {
          (*(v97 + 8))(v58 + v95, v96);
        }

        v98 = v94[8];
        v99 = sub_21CB85BB4();
        v100 = *(v99 - 8);
        if (!(*(v100 + 48))(v58 + v98, 1, v99))
        {
          (*(v100 + 8))(v58 + v98, v99);
        }

        v101 = v94[9];
        v102 = sub_21CB85C44();
        v103 = *(v102 - 8);
        if (!(*(v103 + 48))(v58 + v101, 1, v102))
        {
          (*(v103 + 8))(v58 + v101, v102);
        }
      }

      v104 = (v202 + v5[6]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v200 = v3;
        v105 = v2;

        v106 = type metadata accessor for PMAccount.MockData(0);
        v107 = v106[8];
        v108 = sub_21CB80DD4();
        v109 = *(v108 - 8);
        v110 = *(v109 + 48);
        if (!v110(v104 + v107, 1, v108))
        {
          (*(v109 + 8))(v104 + v107, v108);
        }

        v111 = v106[12];
        if (!v110(v104 + v111, 1, v108))
        {
          (*(v109 + 8))(v104 + v111, v108);
        }

        v112 = v106[15];
        v113 = sub_21CB85BB4();
        v114 = *(v113 - 8);
        v5 = v206;
        if (!(*(v114 + 48))(v104 + v112, 1, v113))
        {
          (*(v114 + 8))(v104 + v112, v113);
        }

        v115 = v106[16];
        v116 = sub_21CB85C04();
        v117 = *(v116 - 8);
        v2 = v105;
        if (!(*(v117 + 48))(v104 + v115, 1, v116))
        {
          (*(v117 + 8))(v104 + v115, v116);
        }

        v118 = v106[18];
        v119 = sub_21CB85C44();
        v120 = *(v119 - 8);
        v3 = v200;
        if (!(*(v120 + 48))(v104 + v118, 1, v119))
        {
          (*(v120 + 8))(v104 + v118, v119);
        }
      }

      else
      {
      }

      v46 = v202;
      v137 = v202 + v5[7];
      if (*(v137 + 8))
      {
      }

      v138 = v202 + *(v57 + 20);
      v139 = type metadata accessor for PMSharingGroup(0);
      v140 = *(*(v139 - 8) + 48);
      if (!v140(v138, 1, v139))
      {
        v141 = sub_21CB85C44();
        (*(*(v141 - 8) + 8))(v138, v141);
      }

      v142 = v202 + *(v57 + 24);
      if (!v140(v142, 1, v139))
      {
        v143 = sub_21CB85C44();
        (*(*(v143 - 8) + 8))(v142, v143);
      }
    }

    v128 = v46 + *(type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0) + 20);
    if (!(*(*(v5 - 1) + 48))(v128, 1, v5))
    {

      v144 = v128 + v5[5];
      v145 = swift_getEnumCaseMultiPayload();

      if (v145 == 1)
      {

        v146 = type metadata accessor for PMAccount.SIWAUniqueID(0);
        v147 = *(v146 + 28);
        v148 = sub_21CB85B74();
        (*(*(v148 - 8) + 8))(v144 + v147, v148);

        v149 = *(v146 + 36);
        v150 = sub_21CB85C44();
        v151 = *(v150 - 8);
        if (!(*(v151 + 48))(v144 + v149, 1, v150))
        {
          (*(v151 + 8))(v144 + v149, v150);
        }
      }

      else
      {

        v178 = type metadata accessor for PMAccount.CombinedUniqueID(0);
        v179 = v178[7];
        v180 = sub_21CB85C04();
        v181 = *(v180 - 8);
        if (!(*(v181 + 48))(v144 + v179, 1, v180))
        {
          (*(v181 + 8))(v144 + v179, v180);
        }

        v182 = v178[8];
        v183 = sub_21CB85BB4();
        v184 = *(v183 - 8);
        if (!(*(v184 + 48))(v144 + v182, 1, v183))
        {
          (*(v184 + 8))(v144 + v182, v183);
        }

        v185 = v178[9];
        v186 = sub_21CB85C44();
        v187 = *(v186 - 8);
        v5 = v206;
        if (!(*(v187 + 48))(v144 + v185, 1, v186))
        {
          (*(v187 + 8))(v144 + v185, v186);
        }
      }

      v162 = (v128 + v5[6]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v201 = v3;
        v188 = v2;

        v163 = type metadata accessor for PMAccount.MockData(0);
        v189 = v163[8];
        v190 = sub_21CB80DD4();
        v191 = *(v190 - 8);
        v192 = *(v191 + 48);
        if (!v192(v162 + v189, 1, v190))
        {
          (*(v191 + 8))(v162 + v189, v190);
        }

        v193 = v163[12];
        if (!v192(v162 + v193, 1, v190))
        {
          (*(v191 + 8))(v162 + v193, v190);
        }

        v194 = v163[15];
        v195 = sub_21CB85BB4();
        v196 = *(v195 - 8);
        v2 = v188;
        if (!(*(v196 + 48))(v162 + v194, 1, v195))
        {
          (*(v196 + 8))(v162 + v194, v195);
        }

        v172 = v163[16];
        v173 = sub_21CB85C04();
        v174 = *(v173 - 8);
        v3 = v201;
        if ((*(v174 + 48))(v162 + v172, 1, v173))
        {
          goto LABEL_107;
        }

LABEL_106:
        (*(v174 + 8))(v162 + v172, v173);
LABEL_107:

        v175 = v163[18];
        v176 = sub_21CB85C44();
        v177 = *(v176 - 8);
        if (!(*(v177 + 48))(v162 + v175, 1, v176))
        {
          (*(v177 + 8))(v162 + v175, v176);
        }

        goto LABEL_125;
      }

LABEL_124:

LABEL_125:
      v197 = v128 + v206[7];
      if (*(v197 + 8))
      {
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0);

  return MEMORY[0x2821FE8E8](v204, v2 + v3, v203 | 7);
}

uint64_t objectdestroyTm_63()
{
  v1 = v0;
  v2 = type metadata accessor for PMNewGroupFlow(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;
  v7 = type metadata accessor for PMAccount(0);
  if ((*(*(v7 - 1) + 48))(v0 + v4, 1, v7))
  {
    goto LABEL_25;
  }

  v88 = v5;

  v90 = v7;
  v8 = v6 + v7[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {

    v32 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v33 = v32[7];
    v34 = sub_21CB85C04();
    v35 = *(v34 - 8);
    if (!(*(v35 + 48))(v8 + v33, 1, v34))
    {
      (*(v35 + 8))(v8 + v33, v34);
    }

    v36 = v32[8];
    v37 = sub_21CB85BB4();
    v38 = *(v37 - 8);
    if (!(*(v38 + 48))(v8 + v36, 1, v37))
    {
      (*(v38 + 8))(v8 + v36, v37);
    }

    v13 = v32[9];
    v14 = sub_21CB85C44();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v8 + v13, 1, v14))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v10 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v11 = *(v10 + 28);
  v12 = sub_21CB85B74();
  (*(*(v12 - 8) + 8))(v8 + v11, v12);

  v13 = *(v10 + 36);
  v14 = sub_21CB85C44();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v8 + v13, 1, v14))
  {
LABEL_4:
    (*(v15 + 8))(v8 + v13, v14);
  }

LABEL_5:
  v16 = (v6 + v90[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v84 = (v3 + 16) & ~v3;
    v86 = v3;

    v17 = type metadata accessor for PMAccount.MockData(0);
    v18 = v17[8];
    v19 = sub_21CB80DD4();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (!v21(v16 + v18, 1, v19))
    {
      (*(v20 + 8))(v16 + v18, v19);
    }

    v22 = v17[12];
    if (!v21(v16 + v22, 1, v19))
    {
      (*(v20 + 8))(v16 + v22, v19);
    }

    v23 = v17[15];
    v24 = sub_21CB85BB4();
    v25 = *(v24 - 8);
    v4 = v84;
    if (!(*(v25 + 48))(v16 + v23, 1, v24))
    {
      (*(v25 + 8))(v16 + v23, v24);
    }

    v26 = v17[16];
    v27 = sub_21CB85C04();
    v28 = *(v27 - 8);
    v3 = v86;
    if (!(*(v28 + 48))(v16 + v26, 1, v27))
    {
      (*(v28 + 8))(v16 + v26, v27);
    }

    v29 = v17[18];
    v30 = sub_21CB85C44();
    v31 = *(v30 - 8);
    if (!(*(v31 + 48))(v16 + v29, 1, v30))
    {
      (*(v31 + 8))(v16 + v29, v30);
    }
  }

  else
  {
  }

  v5 = v88;
  v7 = v90;
  v39 = v6 + v90[7];
  if (*(v39 + 8))
  {
  }

LABEL_25:

  __swift_destroy_boxed_opaque_existential_0((v6 + v2[6]));
  v40 = v6 + v2[7];
  v41 = sub_21CB82644();
  (*(*(v41 - 8) + 8))(v40, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);

  v42 = v6 + v2[9];
  v43 = type metadata accessor for MoveAccountFailureAlertData(0);
  if ((*(*(v43 - 8) + 48))(v42, 1, v43))
  {
    goto LABEL_50;
  }

  v83 = v43;
  v87 = v3;
  v89 = v5;

  v44 = v42 + v7[5];
  type metadata accessor for PMAccount.UniqueID(0);
  v45 = swift_getEnumCaseMultiPayload();

  v91 = v7;
  if (v45 != 1)
  {
    v68 = v4;

    v69 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v70 = v69[7];
    v71 = sub_21CB85C04();
    v72 = *(v71 - 8);
    if (!(*(v72 + 48))(v44 + v70, 1, v71))
    {
      (*(v72 + 8))(v44 + v70, v71);
    }

    v73 = v69[8];
    v74 = sub_21CB85BB4();
    v75 = *(v74 - 8);
    if (!(*(v75 + 48))(v44 + v73, 1, v74))
    {
      (*(v75 + 8))(v44 + v73, v74);
    }

    v49 = v69[9];
    v50 = sub_21CB85C44();
    v51 = *(v50 - 8);
    v4 = v68;
    v7 = v91;
    if ((*(v51 + 48))(v44 + v49, 1, v50))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v46 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v47 = *(v46 + 28);
  v48 = sub_21CB85B74();
  (*(*(v48 - 8) + 8))(v44 + v47, v48);

  v49 = *(v46 + 36);
  v50 = sub_21CB85C44();
  v51 = *(v50 - 8);
  if (!(*(v51 + 48))(v44 + v49, 1, v50))
  {
LABEL_28:
    (*(v51 + 8))(v44 + v49, v50);
  }

LABEL_29:
  v52 = (v42 + v7[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v85 = v4;
    v82 = v1;

    v53 = type metadata accessor for PMAccount.MockData(0);
    v54 = v53[8];
    v55 = sub_21CB80DD4();
    v56 = *(v55 - 8);
    v57 = *(v56 + 48);
    if (!v57(v52 + v54, 1, v55))
    {
      (*(v56 + 8))(v52 + v54, v55);
    }

    v58 = v53[12];
    if (!v57(v52 + v58, 1, v55))
    {
      (*(v56 + 8))(v52 + v58, v55);
    }

    v59 = v53[15];
    v60 = sub_21CB85BB4();
    v61 = *(v60 - 8);
    if (!(*(v61 + 48))(v52 + v59, 1, v60))
    {
      (*(v61 + 8))(v52 + v59, v60);
    }

    v62 = v53[16];
    v63 = sub_21CB85C04();
    v64 = *(v63 - 8);
    v1 = v82;
    v7 = v91;
    if (!(*(v64 + 48))(v52 + v62, 1, v63))
    {
      (*(v64 + 8))(v52 + v62, v63);
    }

    v65 = v53[18];
    v66 = sub_21CB85C44();
    v67 = *(v66 - 8);
    v4 = v85;
    if (!(*(v67 + 48))(v52 + v65, 1, v66))
    {
      (*(v67 + 8))(v52 + v65, v66);
    }
  }

  else
  {
  }

  v76 = v42 + v7[7];
  if (*(v76 + 8))
  {
  }

  v77 = v42 + *(v83 + 20);
  v78 = sub_21CB85C44();
  (*(*(v78 - 8) + 8))(v77, v78);
  type metadata accessor for PMSharingGroup(0);

  v3 = v87;
  v5 = v89;
LABEL_50:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D60, &unk_21CBC2FE8);

  v79 = v2[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v80 = sub_21CB823B4();
    (*(*(v80 - 8) + 8))(v6 + v79, v80);
  }

  else
  {
  }

  sub_21C7025C4(*(v6 + v2[14]), *(v6 + v2[14] + 8));

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_64()
{
  v1 = *(type metadata accessor for PMNotifyGroupMembersView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_21CB85C44();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for PMSharingGroup(0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_65()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroyTm_66()
{
  v1 = type metadata accessor for PMExportAccountSelectionView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB823B4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_21CAB0D98(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB83834();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5 + v9, 1, v10))
    {
      (*(v11 + 8))(v5 + v9, v10);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_67()
{
  v1 = type metadata accessor for PMPasswordsSecurityView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB823B4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + v1[11];
  if (*(v8 + 8))
  {
  }

  sub_21C7025C4(*(v5 + v1[12]), *(v5 + v1[12] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_68()
{
  v1 = v0;
  v2 = *(type metadata accessor for PMRecentlyDeletedAccountRow(0) - 8);
  v3 = *(v2 + 80);
  v40 = *(v2 + 64);
  v41 = (v3 + 16) & ~v3;
  v4 = v0 + v41;

  v5 = type metadata accessor for PMAccount(0);
  v6 = v0 + v41 + v5[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v9 = *(v8 + 28);
    v10 = sub_21CB85B74();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);

    v11 = *(v8 + 36);
    v12 = sub_21CB85C44();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v6 + v11, 1, v12))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v30 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v31 = v30[7];
  v32 = sub_21CB85C04();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v6 + v31, 1, v32))
  {
    (*(v33 + 8))(v6 + v31, v32);
  }

  v34 = v30[8];
  v35 = sub_21CB85BB4();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v6 + v34, 1, v35))
  {
    (*(v36 + 8))(v6 + v34, v35);
  }

  v11 = v30[9];
  v12 = sub_21CB85C44();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v6 + v11, 1, v12))
  {
LABEL_3:
    (*(v13 + 8))(v6 + v11, v12);
  }

LABEL_4:
  v14 = (v4 + v5[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = v1;

    v15 = type metadata accessor for PMAccount.MockData(0);
    v16 = v15[8];
    v17 = sub_21CB80DD4();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    if (!v19(v14 + v16, 1, v17))
    {
      (*(v18 + 8))(v14 + v16, v17);
    }

    v20 = v15[12];
    if (!v19(v14 + v20, 1, v17))
    {
      (*(v18 + 8))(v14 + v20, v17);
    }

    v21 = v15[15];
    v22 = sub_21CB85BB4();
    v23 = *(v22 - 8);
    v1 = v39;
    if (!(*(v23 + 48))(v14 + v21, 1, v22))
    {
      (*(v23 + 8))(v14 + v21, v22);
    }

    v24 = v15[16];
    v25 = sub_21CB85C04();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v14 + v24, 1, v25))
    {
      (*(v26 + 8))(v14 + v24, v25);
    }

    v27 = v15[18];
    v28 = sub_21CB85C44();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v14 + v27, 1, v28))
    {
      (*(v29 + 8))(v14 + v27, v28);
    }
  }

  else
  {
  }

  v37 = v4 + v5[7];
  if (*(v37 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v41 + v40, v3 | 7);
}

uint64_t objectdestroyTm_69()
{
  v1 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  v7 = sub_21CB85C44();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 2, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v5 + v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE8, &qword_21CBAE7D0);
  if (swift_getEnumCaseMultiPayload() != 1 || (v10 = sub_21CB823B4(), (*(*(v10 - 8) + 8))(v9, v10), *(v9 + *(type metadata accessor for PMDismissAction(0) + 20))))
  {
  }

  sub_21C7025C4(*(v5 + v1[8]), *(v5 + v1[8] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_70()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroyTm_71()
{
  v1 = (type metadata accessor for _PMRemoveDuplicateAccountsList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CB823B4();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_72()
{
  v1 = (type metadata accessor for PMNeverSavedPasswordsView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CB823B4();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_73()
{
  v1 = v0;
  v2 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;

  v7 = v0 + v4 + v2[5];
  v8 = type metadata accessor for PMAccount(0);
  if ((*(*(v8 - 1) + 48))(v7, 1, v8))
  {
    goto LABEL_25;
  }

  v48 = v5;
  v49 = (v3 + 16) & ~v3;

  v9 = v7 + v8[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v47 = v7;
  if (EnumCaseMultiPayload != 1)
  {

    v33 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v34 = v33[7];
    v35 = sub_21CB85C04();
    v36 = *(v35 - 8);
    if (!(*(v36 + 48))(v9 + v34, 1, v35))
    {
      (*(v36 + 8))(v9 + v34, v35);
    }

    v37 = v33[8];
    v38 = sub_21CB85BB4();
    v39 = *(v38 - 8);
    if (!(*(v39 + 48))(v9 + v37, 1, v38))
    {
      (*(v39 + 8))(v9 + v37, v38);
    }

    v14 = v33[9];
    v15 = sub_21CB85C44();
    v16 = *(v15 - 8);
    v7 = v47;
    if ((*(v16 + 48))(v9 + v14, 1, v15))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v11 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v12 = *(v11 + 28);
  v13 = sub_21CB85B74();
  (*(*(v13 - 8) + 8))(v9 + v12, v13);

  v14 = *(v11 + 36);
  v15 = sub_21CB85C44();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v9 + v14, 1, v15))
  {
LABEL_4:
    (*(v16 + 8))(v9 + v14, v15);
  }

LABEL_5:
  v17 = (v7 + v8[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = v3;
    v46 = v1;

    v18 = type metadata accessor for PMAccount.MockData(0);
    v19 = v18[8];
    v20 = sub_21CB80DD4();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    if (!v22(v17 + v19, 1, v20))
    {
      (*(v21 + 8))(v17 + v19, v20);
    }

    v23 = v18[12];
    if (!v22(v17 + v23, 1, v20))
    {
      (*(v21 + 8))(v17 + v23, v20);
    }

    v24 = v18[15];
    v25 = sub_21CB85BB4();
    v26 = *(v25 - 8);
    v1 = v46;
    if (!(*(v26 + 48))(v17 + v24, 1, v25))
    {
      (*(v26 + 8))(v17 + v24, v25);
    }

    v27 = v18[16];
    v28 = sub_21CB85C04();
    v29 = *(v28 - 8);
    v3 = v45;
    if (!(*(v29 + 48))(v17 + v27, 1, v28))
    {
      (*(v29 + 8))(v17 + v27, v28);
    }

    v30 = v18[18];
    v31 = sub_21CB85C44();
    v32 = *(v31 - 8);
    v7 = v47;
    if (!(*(v32 + 48))(v17 + v30, 1, v31))
    {
      (*(v32 + 8))(v17 + v30, v31);
    }
  }

  else
  {
  }

  v40 = v7 + v8[7];
  v5 = v48;
  v4 = v49;
  if (*(v40 + 8))
  {
  }

LABEL_25:

  v41 = *(v6 + v2[9]);
  if (v41 >= 3)
  {
  }

  v42 = v2[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = sub_21CB82484();
    (*(*(v43 - 8) + 8))(v6 + v42, v43);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_74()
{
  v1 = v0;
  v2 = type metadata accessor for PMSignInWithAppleAccountDetailsView(0);
  v3 = *(*(v2 - 1) + 80);
  v48 = *(*(v2 - 1) + 64);
  v49 = (v3 + 16) & ~v3;
  v4 = v0 + v49;

  v5 = v2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CB823B4();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB82834();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
  }

  v9 = v4 + v2[8];
  if (*v9)
  {
  }

  sub_21C7025C4(*(v4 + v2[9]), *(v4 + v2[9] + 8));

  sub_21C940E04(*(v4 + v2[12]), *(v4 + v2[12] + 8));
  v10 = v4 + v2[13];

  v11 = type metadata accessor for PMAccount(0);
  v12 = v10 + v11[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v50 = v1;
  if (EnumCaseMultiPayload == 1)
  {

    v14 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v15 = *(v14 + 28);
    v16 = sub_21CB85B74();
    (*(*(v16 - 8) + 8))(v12 + v15, v16);

    v17 = *(v14 + 36);
    v18 = sub_21CB85C44();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v12 + v17, 1, v18))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v36 = v11;

  v37 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v38 = v37[7];
  v39 = sub_21CB85C04();
  v40 = *(v39 - 8);
  if (!(*(v40 + 48))(v12 + v38, 1, v39))
  {
    (*(v40 + 8))(v12 + v38, v39);
  }

  v41 = v37[8];
  v42 = sub_21CB85BB4();
  v43 = *(v42 - 8);
  if (!(*(v43 + 48))(v12 + v41, 1, v42))
  {
    (*(v43 + 8))(v12 + v41, v42);
  }

  v17 = v37[9];
  v18 = sub_21CB85C44();
  v19 = *(v18 - 8);
  v11 = v36;
  v1 = v50;
  if (!(*(v19 + 48))(v12 + v17, 1, v18))
  {
LABEL_11:
    (*(v19 + 8))(v12 + v17, v18);
  }

LABEL_12:
  v20 = (v10 + v11[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = v11;
    v47 = v3;

    v21 = type metadata accessor for PMAccount.MockData(0);
    v22 = v21[8];
    v23 = sub_21CB80DD4();
    v24 = *(v23 - 8);
    v25 = *(v24 + 48);
    if (!v25(v20 + v22, 1, v23))
    {
      (*(v24 + 8))(v20 + v22, v23);
    }

    v26 = v21[12];
    if (!v25(v20 + v26, 1, v23))
    {
      (*(v24 + 8))(v20 + v26, v23);
    }

    v27 = v21[15];
    v28 = sub_21CB85BB4();
    v29 = *(v28 - 8);
    v1 = v50;
    if (!(*(v29 + 48))(v20 + v27, 1, v28))
    {
      (*(v29 + 8))(v20 + v27, v28);
    }

    v30 = v21[16];
    v31 = sub_21CB85C04();
    v32 = *(v31 - 8);
    v3 = v47;
    if (!(*(v32 + 48))(v20 + v30, 1, v31))
    {
      (*(v32 + 8))(v20 + v30, v31);
    }

    v33 = v21[18];
    v34 = sub_21CB85C44();
    v35 = *(v34 - 8);
    v11 = v46;
    if (!(*(v35 + 48))(v20 + v33, 1, v34))
    {
      (*(v35 + 8))(v20 + v33, v34);
    }
  }

  else
  {
  }

  v44 = v10 + v11[7];
  if (*(v44 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v49 + v48, v3 | 7);
}

uint64_t objectdestroyTm_75()
{
  v1 = (type metadata accessor for PMTipView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[13];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_76()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroyTm_77()
{
  v1 = v0;
  v2 = type metadata accessor for PMVerificationCodeRow(0);
  v3 = *(*(v2 - 8) + 80);
  v43 = *(*(v2 - 8) + 64);
  v44 = (v3 + 16) & ~v3;
  v4 = v0 + v44;

  v5 = type metadata accessor for PMAccount(0);
  v6 = v0 + v44 + v5[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v9 = *(v8 + 28);
    v10 = sub_21CB85B74();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);

    v11 = *(v8 + 36);
    v12 = sub_21CB85C44();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v6 + v11, 1, v12))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v30 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v31 = v30[7];
  v32 = sub_21CB85C04();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v6 + v31, 1, v32))
  {
    (*(v33 + 8))(v6 + v31, v32);
  }

  v34 = v30[8];
  v35 = sub_21CB85BB4();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v6 + v34, 1, v35))
  {
    (*(v36 + 8))(v6 + v34, v35);
  }

  v11 = v30[9];
  v12 = sub_21CB85C44();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v6 + v11, 1, v12))
  {
LABEL_3:
    (*(v13 + 8))(v6 + v11, v12);
  }

LABEL_4:
  v14 = (v4 + v5[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = v1;

    v15 = type metadata accessor for PMAccount.MockData(0);
    v16 = v15[8];
    v17 = sub_21CB80DD4();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    if (!v19(v14 + v16, 1, v17))
    {
      (*(v18 + 8))(v14 + v16, v17);
    }

    v20 = v15[12];
    if (!v19(v14 + v20, 1, v17))
    {
      (*(v18 + 8))(v14 + v20, v17);
    }

    v21 = v15[15];
    v22 = sub_21CB85BB4();
    v23 = *(v22 - 8);
    v1 = v42;
    if (!(*(v23 + 48))(v14 + v21, 1, v22))
    {
      (*(v23 + 8))(v14 + v21, v22);
    }

    v24 = v15[16];
    v25 = sub_21CB85C04();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v14 + v24, 1, v25))
    {
      (*(v26 + 8))(v14 + v24, v25);
    }

    v27 = v15[18];
    v28 = sub_21CB85C44();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v14 + v27, 1, v28))
    {
      (*(v29 + 8))(v14 + v27, v28);
    }
  }

  else
  {
  }

  v37 = v4 + v5[7];
  if (*(v37 + 8))
  {
  }

  v38 = *(v2 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = sub_21CB83834();
    v40 = *(v39 - 8);
    if (!(*(v40 + 48))(v4 + v38, 1, v39))
    {
      (*(v40 + 8))(v4 + v38, v39);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v1, v44 + v43, v3 | 7);
}

uint64_t objectdestroyTm_78()
{
  v1 = type metadata accessor for PMVerificationCodesList(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  sub_21C79C1F4(*(v5 + v1[6]), *(v5 + v1[6] + 8), *(v5 + v1[6] + 16));
  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB82A34();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB83834();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5 + v9, 1, v10))
    {
      (*(v11 + 8))(v5 + v9, v10);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_79()
{
  sub_21C79C1F4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 90, 7);
}

uint64_t objectdestroyTm_80()
{
  v1 = type metadata accessor for PMSecurityRecommendationPlatter(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB83834();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB823B4();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC08, &qword_21CBD0408);
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  v13 = v5 + v1[9];
  if (*(v13 + 8))
  {
  }

  v14 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v14 + 32, v2 | 7);
}

uint64_t sub_21C7025C4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_21C7025D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v4[19] = *(type metadata accessor for PMSharingGroup(0) - 8);
  v4[20] = swift_task_alloc();
  v5 = sub_21CB85C44();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF52E0, &unk_21CBBD7E0);
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF90C0, &qword_21CBCADE0);
  v4[30] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF52E8, &qword_21CBBD7F0);
  v4[31] = v7;
  v4[32] = *(v7 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = sub_21CB858B4();
  v4[35] = sub_21CB858A4();
  v9 = sub_21CB85874();
  v4[36] = v9;
  v4[37] = v8;

  return MEMORY[0x2822009F8](sub_21C6F12EC, v9, v8);
}

uint64_t sub_21C702844(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0D8, &qword_21CBCD988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C7028AC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_21CB85FB4();

    if (v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7258, &qword_21CBC4710);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_21CB85FA4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_21CA977CC(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_21CA99764(v17 + 1);
    }

    sub_21CA9A3EC(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_21CB86484();
  MEMORY[0x21CF15F90](a2);
  v10 = sub_21CB864D4();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_21C6F31B4(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(v6 + 48) + 8 * v12) != a2)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_21C702ABC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7250, &qword_21CBC4708);
  result = sub_21CB86054();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_21CB86484();
      MEMORY[0x21CF15F90](v16);
      result = sub_21CB864D4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t block_destroy_helper_10(uint64_t a1)
{
}

{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

uint64_t block_destroy_helper_30(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

uint64_t sub_21C702EFC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21C702FF0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21C702EFC;

  return sub_21C703100(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_21C703100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  sub_21CB858B4();
  v6[17] = sub_21CB858A4();
  v8 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C7031E0, v8, v7);
}

uint64_t sub_21C7031E0()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 104);
    swift_getKeyPath(byte_21CBCEEA0);
    swift_getKeyPath(byte_21CBCEEC8);
    *(v0 + 88) = v1;

    sub_21CB81DC4();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = *(v0 + 120);
    v2 = *(v0 + 128);
    sub_21C6EF0A0(*(v0 + 112), v2);
    swift_getKeyPath(byte_21CBCEEF0);
    swift_getKeyPath(byte_21CBCEF18);
    sub_21C6EF0A0(v2, v3);
    sub_21CB81DC4();
    sub_21C6EA794(v2, &qword_27CDEE678, &unk_21CBBA210);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath(asc_21CBCEF40);
    swift_getKeyPath(asc_21CBCEF68);
    *(v0 + 144) = 1;
    sub_21CB81DC4();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21C7033D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21C7034FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21C6F35D0;

  return sub_21C98EBD4(a1, v4);
}

void sub_21C7035B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF90A8, &unk_21CBCADC8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  (*(v3 + 16))(&v15 - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  v9 = objc_allocWithZone(type metadata accessor for PMSharingGroupsProviderMain.GroupUpdateHandler());
  v10 = sub_21C6F14E4(sub_21C6F2664, v8);
  *(swift_allocObject() + 16) = v10;
  v11 = v10;
  sub_21CB858F4();
  v12 = objc_opt_self();
  v13 = [v12 sharedProvider];
  [v13 addSubscriber_];

  v14 = [v12 sharedProvider];
  sub_21C6F1834(v14);
}

uint64_t sub_21C7037A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF90A8, &unk_21CBCADC8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21C70383C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C703874(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0D8, &qword_21CBCD988);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7038E4()
{
  v1 = v0 + 40;
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = *(v0 + 48);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      swift_getKeyPath(byte_21CBBD6C0);
      swift_getKeyPath(byte_21CBBD6E8);
      *(v0 + 88) = v2;

      sub_21CB81DC4();
      swift_getKeyPath(byte_21CBBD710);
      swift_getKeyPath(asc_21CBBD738);
      *(v0 + 96) = v3;

      sub_21CB81DC4();
      v6 = [objc_opt_self() sharedProvider];
      v7 = [v6 hasLoadedGroups];

      swift_getKeyPath(byte_21CBBD808);
      swift_getKeyPath(byte_21CBBD830);
      *(v0 + 320) = v7;

      sub_21CB81DC4();
      *(v0 + 56) = v2;
      *(v0 + 64) = v3;

      sub_21CB81D24();

      swift_getKeyPath(byte_21CBBD6C0);
      swift_getKeyPath(byte_21CBBD6E8);
      sub_21CB81DB4();

      swift_getKeyPath(byte_21CBBD710);
      swift_getKeyPath(asc_21CBBD738);
      sub_21CB81DB4();

      v8 = *(v0 + 112);
      v9 = *(v8 + 16);
      v43 = v5;
      if (v9)
      {
        v10 = *(v0 + 152);
        *(v0 + 120) = MEMORY[0x277D84F90];
        sub_21C7B0BC8(0, v9, 0);
        v11 = *(v0 + 120);
        v12 = v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v13 = *(v10 + 72);
        do
        {
          v14 = *(v0 + 192);
          v16 = *(v0 + 168);
          v15 = *(v0 + 176);
          v17 = *(v0 + 160);
          sub_21C94B4A8(v12, v17);
          (*(v15 + 16))(v14, v17, v16);
          sub_21C979EE8(v17);
          *(v0 + 120) = v11;
          v19 = *(v11 + 16);
          v18 = *(v11 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_21C7B0BC8((v18 > 1), v19 + 1, 1);
            v11 = *(v0 + 120);
          }

          v20 = *(v0 + 192);
          v21 = *(v0 + 168);
          v22 = *(v0 + 176);
          *(v11 + 16) = v19 + 1;
          (*(v22 + 32))(v11 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19, v20, v21);
          v12 += v13;
          --v9;
        }

        while (v9);

        v5 = v43;
      }

      else
      {

        v11 = MEMORY[0x277D84F90];
      }

      v25 = *(v0 + 168);
      v26 = *(v11 + 16);
      v27 = sub_21C703FA8();
      *(v0 + 128) = MEMORY[0x21CF154F0](v26, v25, v27);
      v28 = *(v11 + 16);
      if (v28)
      {
        v29 = *(v0 + 176);
        v30 = v11 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
        v44 = *(v29 + 16);
        v45 = *(v29 + 72);
        do
        {
          v31 = *(v0 + 200);
          v32 = *(v0 + 176);
          v33 = *(v0 + 184);
          v34 = *(v0 + 168);
          v44(v31, v30, v34);
          sub_21CA93D98(v33, v31);
          (*(v32 + 8))(v33, v34);
          v30 += v45;
          --v28;
        }

        while (v28);

        v1 = v0 + 40;
        v5 = v43;
      }

      else
      {
      }

      v35 = *(v5 + 16);
      v36 = qword_27CDEA4C0;

      if (v36 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      v37 = sub_21C704000(v35, *(v0 + 136));

      v38 = *(v37 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider + 24);
      v39 = *(v37 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider + 32);
      __swift_project_boxed_opaque_existential_0((v37 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider), v38);
      (*(v39 + 40))(v38, v39);

      v40 = sub_21CB858A4();
      *(v0 + 304) = v40;
      sub_21C6EADEC(&qword_27CDF52F8, &qword_27CDF52E8, &qword_21CBBD7F0, MEMORY[0x277D857B0]);
      v41 = swift_task_alloc();
      *(v0 + 312) = v41;
      *v41 = v0;
      v41[1] = sub_21C6F330C;
      v42 = MEMORY[0x277D85700];

      return MEMORY[0x282200310](v1, v40, v42);
    }

    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
  }

  else
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
  }

  v23 = *(v0 + 8);

  return v23();
}

unint64_t sub_21C703FA8()
{
  result = qword_27CDF8950;
  if (!qword_27CDF8950)
  {
    sub_21CB85C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8950);
  }

  return result;
}

unint64_t sub_21C704000(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16) || (v3 = sub_21CB10910(a1), (v4 & 1) == 0) || (sub_21C7A3394(*(a2 + 56) + 32 * v3, v6), type metadata accessor for PMTipsStore(0), (swift_dynamicCast() & 1) == 0) || (result = v7, v7 <= 1))
  {
    if (qword_27CDEA3C8 != -1)
    {
      swift_once();
    }

    v7 = qword_27CE184E8;

    swift_getAtKeyPath();

    return v6[0];
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_21C704154()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_21C70467C;
  v2 = swift_continuation_init();
  v0[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0C8, &qword_21CBCD978);
  v0[21] = MEMORY[0x277D85DD0];
  v0[22] = 1107296256;
  v0[23] = sub_21C704620;
  v0[24] = &block_descriptor_44;
  v0[25] = v2;
  [v1 fetchTipToShow_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21C70427C()
{
  v2 = *v1;

  v3 = *(v2 + 464);
  v4 = *(v2 + 472);
  if (v0)
  {
    v5 = sub_21C826504;
  }

  else
  {
    v5 = sub_21C70439C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21C70439C()
{
  v1 = *(v0 + 32);
  *(v0 + 104) = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);
  *(v0 + 136) = v2;
  *(v0 + 152) = v3;
  v4 = *(v0 + 80);
  *(v0 + 168) = v4;
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  *(v0 + 184) = v5;
  *(v0 + 120) = v1;
  v7 = *(v0 + 112);
  *(v0 + 344) = v5;
  *(v0 + 312) = v3;
  *(v0 + 328) = v4;
  *(v0 + 280) = v1;
  *(v0 + 296) = v2;
  if (v7 == 1)
  {
    (*(*(v0 + 432) + 8))(*(v0 + 440), *(v0 + 424));

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath(byte_21CBA6578);
      swift_getKeyPath(aP_11);
      *(v0 + 192) = v6;
      *(v0 + 200) = v7;
      v10 = *(v0 + 328);
      *(v0 + 240) = *(v0 + 312);
      *(v0 + 256) = v10;
      *(v0 + 272) = *(v0 + 344);
      v11 = *(v0 + 296);
      *(v0 + 208) = *(v0 + 280);
      *(v0 + 224) = v11;
      sub_21CB81DC4();
    }

    else
    {
      sub_21C6EA794(v0 + 104, &qword_27CDED2A8, &qword_21CBA65C0);
    }

    v12 = sub_21CB858A4();
    *(v0 + 480) = v12;
    sub_21C6EADEC(&qword_27CDED3D8, &qword_27CDED3C8, &qword_21CBA67A8, MEMORY[0x277D85980]);
    v13 = swift_task_alloc();
    *(v0 + 488) = v13;
    *v13 = v0;
    v13[1] = sub_21C70427C;
    v14 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v0 + 16, v12, v14);
  }
}

uint64_t sub_21C7045D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_21C704620(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_21C70467C()
{

  return MEMORY[0x2822009F8](sub_21C70475C, 0, 0);
}

uint64_t sub_21C70475C()
{
  v1 = *(v0 + 240);
  sub_21C7047E0(*(v0 + 232), (v0 + 80));
  v2 = *(v0 + 96);
  *v1 = *(v0 + 80);
  *(v1 + 16) = v2;
  v3 = *(v0 + 112);
  v4 = *(v0 + 128);
  v5 = *(v0 + 144);
  *(v1 + 80) = *(v0 + 160);
  *(v1 + 48) = v4;
  *(v1 + 64) = v5;
  *(v1 + 32) = v3;
  v6 = *(v0 + 8);

  return v6();
}

void sub_21C7047E0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v4 = [objc_opt_self() contentForTipType_];
    v5 = [v4 imageName];
    sub_21CB855C4();

    v28 = sub_21CB84BB4();
    v27 = [v4 hasBorderedImage];
    v6 = [v4 title];
    v7 = sub_21CB855C4();
    v25 = v8;
    v26 = v7;

    v9 = [v4 subtitle];
    v10 = sub_21CB855C4();
    v12 = v11;

    v13 = [v4 buttonTitle];
    v14 = sub_21CB855C4();
    v16 = v15;

    v17 = [v4 declineButtonTitle];
    v18 = sub_21CB855C4();
    v20 = v19;

    v22 = v25;
    v21 = v26;
    v23 = v28;
    v24 = v27;
  }

  else
  {
    v23 = 0;
    v21 = 0;
    v22 = 0;
    v10 = 0;
    v12 = 0;
    v14 = 0;
    v16 = 0;
    v18 = 0;
    v20 = 0;
    v24 = 0;
  }

  *a2 = a1;
  a2[1] = v23;
  a2[2] = v24;
  a2[3] = v21;
  a2[4] = v22;
  a2[5] = v10;
  a2[6] = v12;
  a2[7] = v14;
  a2[8] = v16;
  a2[9] = v18;
  a2[10] = v20;
}

uint64_t sub_21C704A8C(uint64_t a1)
{
  result = sub_21CB80E34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21C704B10()
{
  result = qword_27CDF6460;
  if (!qword_27CDF6460)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27CDF6460);
  }

  return result;
}

uint64_t sub_21C704B40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21C704B88(uint64_t a1)
{
  if (!qword_27CDEFE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFE40, &unk_21CBAE4E0);
    v1 = sub_21CB85E54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEFE38);
    }
  }
}

uint64_t sub_21C704BF4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21C704C64(uint64_t a1)
{
  v1 = sub_21CB85C44();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

id PMSceneDelegate.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate__lockPolicyEnforcer;
  KeyPath = swift_getKeyPath(byte_21CBD0740);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v4 = &v1[v2];
  sub_21CB86544();
  sub_21C704E4C(KeyPath, v11);

  type metadata accessor for PMSecureWindowLockPolicyEnforcer(0);
  sub_21C706AA8();
  v5 = sub_21CB82674();
  v7 = v6;

  *v4 = v5;
  v4[1] = v7;
  v8 = OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_selectedQuickAction;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAD18, &qword_21CBD0768);
  swift_allocObject();
  *&v1[v8] = sub_21CB81D14();
  *&v1[OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_shortcutItemForInitialLaunch] = 0;
  *&v1[OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_keyWindow] = 0;
  *&v1[OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_lockedWindow] = 0;
  *&v1[OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_animator] = 0;
  *&v1[OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate____lazy_storage___blurEffectView] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for PMSceneDelegate();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_21C704E64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16) || (v5 = sub_21CB10910(a1), (v6 & 1) == 0) || (sub_21C7A3394(*(a2 + 56) + 32 * v5, v8), a3(0), (swift_dynamicCast() & 1) == 0) || (result = v9) == 0)
  {
    if (qword_27CDEA3C8 != -1)
    {
      swift_once();
    }

    v9 = qword_27CE184E8;

    swift_getAtKeyPath();

    return v8[0];
  }

  return result;
}

void sub_21C704F58()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore_interface);
  v2 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_21CB65384;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21CB0C8A8;
  aBlock[3] = &block_descriptor_45;
  v3 = _Block_copy(aBlock);

  [v1 setEventHandler_];
  _Block_release(v3);
  [v1 activate];
  aBlock[0] = 0;
  v4 = [v1 startMonitoringEventType:30 error:aBlock];
  v5 = aBlock[0];
  if (v4 && (aBlock[0] = 0, v6 = v5, v7 = [v1 startMonitoringEventType:2 error:aBlock], v5 = aBlock[0], v7))
  {

    v8 = v5;
  }

  else
  {
    v9 = v5;
    v10 = sub_21CB80B14();

    swift_willThrow();
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v11 = sub_21CB81C84();
    __swift_project_value_buffer(v11, qword_27CE186E0);
    v12 = v10;
    v13 = sub_21CB81C64();
    v14 = sub_21CB85AF4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136446210;
      swift_getErrorValue();
      v17 = sub_21CB86414();
      v19 = sub_21C98E004(v17, v18, aBlock);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_21C6E5000, v13, v14, "Failed to start monitoring Wi-Fi network events. %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x21CF16D90](v16, -1, -1);
      MEMORY[0x21CF16D90](v15, -1, -1);
    }

    else
    {
    }
  }
}