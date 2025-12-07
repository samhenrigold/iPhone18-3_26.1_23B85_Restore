Swift::Void __swiftcall _JetTraceReporter.start()()
{
  v1 = *v0;
  v2 = *(v1 + 80);
  [v2 lock];
  sub_24F2E2100(v1);

  [v2 unlock];
}

uint64_t sub_24F2FE250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _JetTraceReporter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F2FE2B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _JetTraceReporter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F2FE31C(uint64_t a1)
{
  type metadata accessor for _JetTraceReporter(0);
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = v2;
  return sub_24F2FDA24(v5);
}

uint64_t objectdestroyTm_62()
{
  v1 = (type metadata accessor for _JetTraceReporter(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  __swift_destroy_boxed_opaque_existential_1((v2 + 8));

  v3 = v1[9];
  v4 = sub_24F928BC8();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F2FE4C4(unint64_t *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_24F928BC8();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_24F2FE584(void *result, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_24F928BC8();
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_24F2FE628(uint64_t a1)
{
  result = type metadata accessor for _JetTraceAggregator();
  if (v2 <= 0x3F)
  {
    result = sub_24F2FE6CC();
    if (v3 <= 0x3F)
    {
      result = sub_24F928BC8();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_24F2FE6CC()
{
  result = qword_27F23E780;
  if (!qword_27F23E780)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F23E780);
  }

  return result;
}

id sub_24F2FE734(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC12GameStoreKit12JSUserObject_accounts] = a1;
  *&v3[OBJC_IVAR____TtC12GameStoreKit12JSUserObject_onDevicePersonalizationDataManager] = a2;
  v7 = objc_allocWithZone(MEMORY[0x277CCA930]);
  v8 = a2;

  v9 = [v7 initWithCondition_];
  *&v3[OBJC_IVAR____TtC12GameStoreKit12JSUserObject_fitnessAppInstallationAllowedConditionLock] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBF0, &qword_24F99A9B0);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC12GameStoreKit12JSUserObject_isFitnessAppInstallationAllowedBox] = sub_24EA4ED84(2);
  v18.receiver = v3;
  v18.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v18, sel_init);
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17[4] = sub_24F2FFB90;
  v17[5] = v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_24EBFFB64;
  v17[3] = &block_descriptor_8_0;
  v13 = _Block_copy(v17);
  v14 = v10;

  [v11 fetchIsFitnessAvailableForDeviceWithCompletion_];
  _Block_release(v13);
  v15 = [objc_opt_self() defaultCenter];
  [v15 addObserver:v14 selector:sel_queryFitnessAppInstallationAllowed name:*MEMORY[0x277CF0120] object:0];

  return v14;
}

uint64_t sub_24F2FE978(SEL *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0, &unk_24F9694C0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  MEMORY[0x2530504F0](v3);
  v6 = sub_24F92AB18();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_24E601704(v5, &qword_27F2330E0, &unk_24F9694C0);
  }

  else
  {
    v8 = sub_24F92AB08();
    (*(v7 + 8))(v5, v6);
    v9 = [v8 *a1];
    if (v9)
    {
      v10 = v9;
      v11 = sub_24F92B0D8();

      return v11;
    }
  }

  return 0;
}

id sub_24F2FEAFC(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  sub_24F2FE978(a3);
  v6 = v5;

  if (v6)
  {
    v7 = sub_24F92B098();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_24F2FEBF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0, &unk_24F9694C0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - v2;
  MEMORY[0x2530504F0](v1);
  v4 = sub_24F92AB18();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_24E601704(v3, &qword_27F2330E0, &unk_24F9694C0);
  }

  else
  {
    v6 = sub_24F92AB08();
    (*(v5 + 8))(v3, v4);
    v7 = [v6 ams_DSID];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 stringValue];

      v10 = sub_24F92B0D8();
      return v10;
    }
  }

  return 0;
}

uint64_t sub_24F2FEF64()
{
  v1 = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2383C8, &unk_24F9C4EF0);
  sub_24F92BF18();

  v2 = v6;
  if (v6 == 2)
  {
    v3 = OBJC_IVAR____TtC12GameStoreKit12JSUserObject_fitnessAppInstallationAllowedConditionLock;
    v4 = [*(v1 + OBJC_IVAR____TtC12GameStoreKit12JSUserObject_fitnessAppInstallationAllowedConditionLock) lockWhenCondition_];
    MEMORY[0x28223BE20](v4);

    sub_24F92BF18();

    v2 = (v6 == 2) | v6;
    [*(v1 + v3) unlock];
  }

  return v2 & 1;
}

void sub_24F2FF0E4(char a1, uint64_t a2)
{
  v3 = sub_24F927D88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = OBJC_IVAR____TtC12GameStoreKit12JSUserObject_fitnessAppInstallationAllowedConditionLock;
    v9 = Strong;
    v10 = [*(Strong + OBJC_IVAR____TtC12GameStoreKit12JSUserObject_fitnessAppInstallationAllowedConditionLock) lock];
    v14[0] = v14;
    v11 = *&v9[OBJC_IVAR____TtC12GameStoreKit12JSUserObject_isFitnessAppInstallationAllowedBox];
    MEMORY[0x28223BE20](v10);
    LOBYTE(v14[-2]) = a1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_24F93DE60;

    sub_24F927D78();
    v14[2] = v12;
    sub_24E858250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E8582A8();
    v13 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v13);
    v14[-4] = sub_24F2FFB44;
    v14[-3] = &v14[-4];
    v14[-2] = v11;
    sub_24F92BF08();
    (*(v4 + 8))(v6, v3);

    [*&v9[v8] unlockWithCondition_];
  }
}

uint64_t sub_24F2FF4A8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0, &unk_24F9694C0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13[-v4];
  MEMORY[0x2530504F0](v3);
  v6 = sub_24F92AB18();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v8 = &qword_27F2330E0;
    v9 = &unk_24F9694C0;
    v10 = v5;
LABEL_10:
    sub_24E601704(v10, v8, v9);
    return 0;
  }

  v11 = sub_24F92AB08();
  (*(v7 + 8))(v5, v6);
  if ([v11 ams:*a1 accountFlagValueForAccountFlag:?])
  {
    sub_24F92C648();

    swift_unknownObjectRelease();
  }

  else
  {

    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {
    v8 = &qword_27F2129B0;
    v9 = &unk_24F945320;
    v10 = v16;
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    return v13[15];
  }

  return 0;
}

id sub_24F2FF67C(uint64_t a1)
{
  if (!*(v1 + OBJC_IVAR____TtC12GameStoreKit12JSUserObject_onDevicePersonalizationDataManager))
  {
    v37 = MEMORY[0x277D84F90];
    v38 = sub_24E60CE98(MEMORY[0x277D84F90]);
    v39 = sub_24E608448(v37);
    v40 = type metadata accessor for OnDevicePersonalizationDataContainer();
    v41 = objc_allocWithZone(v40);
    *&v41[OBJC_IVAR____TtC12GameStoreKit36OnDevicePersonalizationDataContainer_personalizationData] = v38;
    *&v41[OBJC_IVAR____TtC12GameStoreKit36OnDevicePersonalizationDataContainer_metricsData] = v39;
    v49 = v41;
    v42 = &v49;
    goto LABEL_30;
  }

  v3 = sub_24EA4C270();
  v5 = v4;
  v6 = *(a1 + 16);
  if (!v6)
  {
    v9 = MEMORY[0x277D84F98];
    goto LABEL_29;
  }

  v7 = 0;
  v8 = a1 + 40;
  v9 = MEMORY[0x277D84F98];
  v46 = v8;
  while (2)
  {
    v10 = (v8 + 16 * v7);
    v11 = v7;
    while (1)
    {
      if (v11 >= v6)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v7 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_32;
      }

      v13 = *(v10 - 1);
      v12 = *v10;
      v14 = *(v3 + 16);

      if (v14)
      {
        v15 = sub_24E76D644(v13, v12);
        if (v16)
        {
          break;
        }
      }

      v17 = sub_24E76D644(v13, v12);
      if (v18)
      {
        v19 = v17;
        v48 = v9;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_24E8B0EBC();
          v9 = v48;
        }

        sub_24EB5BA04(v19, v9, v20);

        goto LABEL_25;
      }

      ++v11;
      v10 += 2;
      if (v7 == v6)
      {
        goto LABEL_29;
      }
    }

    v21 = v5;
    v45 = *(*(v3 + 56) + 8 * v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v9;
    v23 = sub_24E76D644(v13, v12);
    v25 = v9[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v29 = v24;
    if (v9[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = v23;
        sub_24E8B0EBC();
        v23 = v36;
      }
    }

    else
    {
      sub_24E89E8F4(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_24E76D644(v13, v12);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_35;
      }
    }

    v5 = v21;
    v9 = v48;
    if ((v29 & 1) == 0)
    {
      v48[(v23 >> 6) + 8] |= 1 << v23;
      v33 = (v9[6] + 16 * v23);
      *v33 = v13;
      v33[1] = v12;
      *(v9[7] + 8 * v23) = v45;
      v34 = v9[2];
      v27 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (!v27)
      {
        v9[2] = v35;
        goto LABEL_25;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }

    v31 = v48[7];
    v32 = *(v31 + 8 * v23);
    *(v31 + 8 * v23) = v45;

LABEL_25:
    v8 = v46;
    if (v7 != v6)
    {
      continue;
    }

    break;
  }

LABEL_29:

  v40 = type metadata accessor for OnDevicePersonalizationDataContainer();
  v43 = objc_allocWithZone(v40);
  *&v43[OBJC_IVAR____TtC12GameStoreKit36OnDevicePersonalizationDataContainer_personalizationData] = v9;
  *&v43[OBJC_IVAR____TtC12GameStoreKit36OnDevicePersonalizationDataContainer_metricsData] = v5;
  v47.receiver = v43;
  v42 = &v47;
LABEL_30:
  v42->super_class = v40;
  return [(objc_super *)v42 init];
}

uint64_t sub_24F2FFAEC()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t block_copy_helper_143(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t GamesSettingsList.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211AB0, &qword_24F9E1EF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v30 = v3;
  sub_24F2FFF58(&v24 - v5);
  sub_24F92B7F8();

  v7 = sub_24F92B7E8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v3;
  v10 = sub_24F92B858();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v24 - v13;
  sub_24F92B818();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v27 = sub_24F923DD8();
    v28 = &v24;
    v26 = *(v27 - 8);
    MEMORY[0x28223BE20](v27);
    v24 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = v6;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_24F92C888();

    v30 = 0xD000000000000031;
    v31 = 0x800000024FA73880;
    v29 = 38;
    v16 = sub_24F92CD88();
    MEMORY[0x253050C20](v16);

    v18 = MEMORY[0x28223BE20](v17);
    (*(v11 + 16))(&v24 - v13, &v24 - v13, v10, v18);
    v19 = v24;
    sub_24F923DC8();
    (*(v11 + 8))(v14, v10);
    sub_24F30079C(v25, a1);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211AB8, &unk_24F9355B0);
    return (*(v26 + 32))(a1 + *(v20 + 36), v19, v27);
  }

  else
  {
    v22 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211AC0, &qword_24F9E1F10) + 36));
    v23 = sub_24F923AD8();
    (*(v11 + 32))(&v22[*(v23 + 20)], &v24 - v13, v10);
    *v22 = &unk_24F9E1F00;
    *(v22 + 1) = v8;
    return sub_24F30079C(v6, a1);
  }
}

uint64_t sub_24F2FFF58@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E7B8, &qword_24F9E1FB8);
  v33 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v3 = &v30 - v2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E7B0, &qword_24F9E1FB0);
  v34 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v5 = &v30 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E7C8, &qword_24F9E1FC0);
  v36 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v35 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E7D0, &qword_24F9E1FC8);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215FD0, &qword_24F9415F0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v14 = *v1;
  swift_getKeyPath();
  v41 = v14;
  sub_24F300CA8();
  sub_24F91FD88();

  if (*(v14 + 18))
  {
    v30 = v7;
    v31 = v9;
    v32 = v10;
    v15 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E7D8, &qword_24F9E1FF8);
    sub_24E602068(&qword_27F23E7E0, &qword_27F23E7D8, &qword_24F9E1FF8, MEMORY[0x277CE14C0]);
    sub_24F925A98();
    v16 = sub_24E602068(&qword_27F23E7C0, &qword_27F23E7B8, &qword_24F9E1FB8, MEMORY[0x277CDE5A0]);
    v17 = v38;
    sub_24F926028();
    (*(v33 + 8))(v3, v17);
    if (qword_27F211758 != -1)
    {
      swift_once();
    }

    v41 = qword_27F39EF78;
    v42 = unk_27F39EF80;
    sub_24E600AEC();

    v18 = sub_24F925E18();
    v20 = v19;
    v22 = v21;
    v41 = v17;
    v42 = v16;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v24 = v35;
    sub_24F926448();
    sub_24E600B40(v18, v20, v22 & 1);

    (*(v34 + 8))(v5, v15);
    v25 = v36;
    v26 = v39;
    (*(v36 + 16))(v31, v24, v39);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F255080, &qword_27F215FD0, &qword_24F9415F0, MEMORY[0x277CDD7F8]);
    v41 = v15;
    v42 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    return (*(v25 + 8))(v24, v26);
  }

  else
  {
    sub_24F923798();
    (*(v11 + 16))(v9, v13, v10);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F255080, &qword_27F215FD0, &qword_24F9415F0, MEMORY[0x277CDD7F8]);
    v28 = sub_24E602068(&qword_27F23E7C0, &qword_27F23E7B8, &qword_24F9E1FB8, MEMORY[0x277CDE5A0]);
    v41 = v38;
    v42 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    v41 = v37;
    v42 = v29;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_24F300608()
{
  v0[2] = sub_24F92B7F8();
  v0[3] = sub_24F92B7E8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24E8FAC50;

  return sub_24ECC19D4();
}

uint64_t sub_24F3006B4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F3006F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E614970;

  return sub_24F300608();
}

uint64_t sub_24F30079C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211AB0, &qword_24F9E1EF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F300828@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for ShareGameActivitySettingsSection(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v24[-v9];
  v11 = sub_24F921D98();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v24[-v16];
  sub_24F921D88();
  v18 = &v10[*(v5 + 28)];
  v24[15] = 0;

  sub_24F926F28();
  v19 = v25;
  *v18 = v24[16];
  *(v18 + 1) = v19;
  type metadata accessor for GamesSettings(0);
  sub_24F300CA8();
  sub_24F927378();
  v20 = *(v12 + 16);
  v20(v14, v17, v11);
  sub_24EF526D4(v10, v7);
  v20(a2, v14, v11);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E7E8, &qword_24F9E2000);
  sub_24EF526D4(v7, &a2[*(v21 + 48)]);
  *&a2[*(v21 + 64)] = a1;
  swift_retain_n();
  sub_24F300D08(v10);
  v22 = *(v12 + 8);
  v22(v17, v11);

  sub_24F300D08(v7);
  return (v22)(v14, v11);
}

uint64_t sub_24F300AD0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211AB0, &qword_24F9E1EF0);
  sub_24F300B34();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F300B34()
{
  result = qword_27F23E7A8;
  if (!qword_27F23E7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211AB0, &qword_24F9E1EF0);
    sub_24E602068(&qword_27F255080, &qword_27F215FD0, &qword_24F9415F0, MEMORY[0x277CDD7F8]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23E7B0, &qword_24F9E1FB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23E7B8, &qword_24F9E1FB8);
    sub_24E602068(&qword_27F23E7C0, &qword_27F23E7B8, &qword_24F9E1FB8, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E7A8);
  }

  return result;
}

unint64_t sub_24F300CA8()
{
  result = qword_27F22D4C0;
  if (!qword_27F22D4C0)
  {
    type metadata accessor for GamesSettings(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D4C0);
  }

  return result;
}

uint64_t sub_24F300D08(uint64_t a1)
{
  v2 = type metadata accessor for ShareGameActivitySettingsSection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FlowAction.pageData<A>(as:or:)@<X0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v35[1] = a3;
  v36 = a2;
  v38 = a5;
  v7 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v37 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F92C4A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v35 - v14;
  v16 = (v5 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData);
  swift_beginAccess();
  v17 = v16[3];
  if (v17)
  {
    v18 = v16[4];
    v19 = __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v35[0] = v35;
    v20 = v9;
    v21 = *(v17 - 8);
    v22 = MEMORY[0x28223BE20](v19);
    v24 = v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24, v22);
    (*(v18 + 8))(v39, v17, v18);
    (*(v21 + 8))(v24, v17);
    v9 = v20;
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
  v25 = swift_dynamicCast();
  v26 = *(v7 + 56);
  v26(v15, v25 ^ 1u, 1, a4);
  (*(v10 + 16))(v12, v15, v9);
  if ((*(v7 + 48))(v12, 1, a4) == 1)
  {
    v27 = *(v10 + 8);
    v37 = v9;
    v28 = v27(v12, v9);
    v36(v39, v28);
    v29 = v38;
    v30 = swift_dynamicCast();
    v26(v29, v30 ^ 1u, 1, a4);
    return v27(v15, v37);
  }

  else
  {
    v32 = *(v7 + 32);
    v33 = v37;
    v32(v37, v12, a4);
    v34 = v38;
    v32(v38, v33, a4);
    v26(v34, 0, 1, a4);
    return (*(v10 + 8))(v15, v9);
  }
}

void *FlowAction.__allocating_init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, char *a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v57 = a8;
  v61 = a2;
  v62 = a3;
  v63 = a17;
  v64 = a4;
  v59 = a1;
  v60 = a15;
  v58 = a16;
  v65 = a10;
  v56 = sub_24F91F6B8();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v22 = *a5;
  v23 = *(a9 + 32);
  LOBYTE(a5) = *(a9 + 40);
  v24 = *a12;
  v25 = *a13;
  v26 = *a14;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v27 = v21 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  v28 = (v21 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v28 = 0;
  v28[1] = 0;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = v22;
  v66 = a6;
  sub_24E60169C(a6, v21 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);
  v29 = (v21 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  v30 = v57;
  *v29 = a7;
  v29[1] = v30;
  v31 = v21 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  v32 = *(a9 + 16);
  *v31 = *a9;
  *(v31 + 1) = v32;
  *(v31 + 4) = v23;
  v31[40] = a5;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = v24;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = v25;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = v26;
  v33 = v59;
  v34 = (v21 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  v35 = v63;
  *v34 = v58;
  v34[1] = v35;
  sub_24E60169C(v33, v72, &qword_27F235830, &qword_24F93B8C0);
  v36 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v37 = sub_24F928AD8();
  v38 = *(v37 - 8);
  v39 = *(v38 + 16);
  v63 = a11;
  v39(v21 + v36, a11, v37);
  v40 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v41 = sub_24F929608();
  (*(*(v41 - 8) + 56))(v21 + v40, 1, 1, v41);
  v42 = (v21 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v42 = 0u;
  v42[1] = 0u;
  v43 = v21 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v72, &v69, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v70 + 1))
  {
    v44 = v70;
    *v43 = v69;
    *(v43 + 1) = v44;
    *(v43 + 4) = v71;
    v45 = v64;
  }

  else
  {
    v45 = v64;

    v46 = v54;
    sub_24F91F6A8();
    v47 = sub_24F91F668();
    v49 = v48;
    (*(v55 + 8))(v46, v56);
    v67 = v47;
    v68 = v49;
    sub_24F92C7F8();
    sub_24E601704(&v69, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v72, &qword_27F235830, &qword_24F93B8C0);
  v50 = v62;
  v21[2] = v61;
  v21[3] = v50;
  v51 = v60;
  v21[4] = v45;
  v21[5] = v51;

  v52 = v65;
  FlowAction.setPageData(_:)(v65);

  (*(v38 + 8))(v63, v37);
  sub_24E601704(v52, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(v66, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v33, &qword_27F235830, &qword_24F93B8C0);
  return v21;
}

uint64_t FlowAction.setPageData(_:)(uint64_t a1)
{
  sub_24E60169C(a1, v8, &qword_27F2129B0, &unk_24F945320);
  if (v8[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E808, &unk_24F9E2018);
    if (swift_dynamicCast())
    {
      if (*(&v10 + 1))
      {
        sub_24E612C80(&v9, &v12);
        sub_24E612C80(&v12, &v9);
        v3 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
        swift_beginAccess();
        v4 = &v9;
        goto LABEL_9;
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }
  }

  else
  {
    sub_24E601704(v8, &qword_27F2129B0, &unk_24F945320);
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  sub_24E601704(&v9, &qword_27F23E7F8, &qword_24F9E2008);
  sub_24E60169C(a1, &v12, &qword_27F2129B0, &unk_24F945320);
  if (!*(&v13 + 1))
  {
    sub_24E601704(&v12, &qword_27F2129B0, &unk_24F945320);
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v6 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
    swift_beginAccess();
    sub_24F303608(&v12, v1 + v6);
    return swift_endAccess();
  }

  sub_24E612B0C(&v12, &v9);
  sub_24E643A9C(&v9, &v12);
  v5 = swift_allocObject();
  sub_24E612B0C(&v12, (v5 + 16));
  *(&v13 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E800, &qword_24F9E2010);
  v14 = &off_286218388;
  __swift_allocate_boxed_opaque_existential_1(&v12);
  sub_24F92A4B8();
  __swift_destroy_boxed_opaque_existential_1(&v9);
  v3 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  swift_beginAccess();
  v4 = &v12;
LABEL_9:
  sub_24F303608(v4, v1 + v3);
  return swift_endAccess();
}

GameStoreKit::FlowPage_optional __swiftcall FlowPage.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CF18();

  v5 = 0;
  v6 = 37;
  switch(v3)
  {
    case 0:
      goto LABEL_51;
    case 1:
      v5 = 1;
      goto LABEL_51;
    case 2:
      v5 = 2;
      goto LABEL_51;
    case 3:
      v5 = 3;
      goto LABEL_51;
    case 4:
      v5 = 4;
      goto LABEL_51;
    case 5:
      v5 = 5;
      goto LABEL_51;
    case 6:
      v5 = 6;
      goto LABEL_51;
    case 7:
      v5 = 7;
      goto LABEL_51;
    case 8:
      v5 = 8;
      goto LABEL_51;
    case 9:
      v5 = 9;
      goto LABEL_51;
    case 10:
      v5 = 10;
      goto LABEL_51;
    case 11:
      v5 = 11;
      goto LABEL_51;
    case 12:
      v5 = 12;
      goto LABEL_51;
    case 13:
      v5 = 13;
      goto LABEL_51;
    case 14:
      v5 = 14;
      goto LABEL_51;
    case 15:
      v5 = 15;
      goto LABEL_51;
    case 16:
      v5 = 16;
      goto LABEL_51;
    case 17:
      v5 = 17;
      goto LABEL_51;
    case 18:
      v5 = 18;
      goto LABEL_51;
    case 19:
      v5 = 19;
      goto LABEL_51;
    case 20:
      v5 = 20;
      goto LABEL_51;
    case 21:
      v5 = 21;
      goto LABEL_51;
    case 22:
      v5 = 22;
      goto LABEL_51;
    case 23:
      v5 = 23;
      goto LABEL_51;
    case 24:
      v5 = 24;
      goto LABEL_51;
    case 25:
      v5 = 25;
      goto LABEL_51;
    case 26:
      v5 = 26;
      goto LABEL_51;
    case 27:
      v5 = 27;
      goto LABEL_51;
    case 28:
      v5 = 28;
      goto LABEL_51;
    case 29:
      v5 = 29;
      goto LABEL_51;
    case 30:
      v5 = 30;
      goto LABEL_51;
    case 31:
      v5 = 31;
      goto LABEL_51;
    case 32:
      v5 = 32;
      goto LABEL_51;
    case 33:
      v5 = 33;
      goto LABEL_51;
    case 34:
      v5 = 34;
      goto LABEL_51;
    case 35:
      v5 = 35;
      goto LABEL_51;
    case 36:
      v5 = 36;
LABEL_51:
      v6 = v5;
      break;
    case 37:
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    case 52:
      v6 = 52;
      break;
    case 53:
      v6 = 53;
      break;
    case 54:
      v6 = 54;
      break;
    default:
      v6 = 55;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t FlowPage.rawValue.getter()
{
  result = 0x686372616573;
  switch(*v0)
  {
    case 1:
      result = 0x746375646F7270;
      break;
    case 2:
      result = 0x5563696D616E7964;
      break;
    case 3:
      result = 0x77656956626577;
      break;
    case 4:
      result = 0x6E776F6E6B6E75;
      break;
    case 5:
      result = 0x746E6F4377656976;
      break;
    case 6:
      result = 0x7972656C6C6167;
      break;
    case 7:
      result = 0x6F65646976;
      break;
    case 8:
      result = 1701273968;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 0xA:
      result = 0x7472616843706F74;
      break;
    case 0xB:
      result = 0x73657461647075;
      break;
    case 0xC:
      result = 0x7961646F74;
      break;
    case 0xD:
      result = 0x656C6369747261;
      break;
    case 0xE:
      result = 0x6573616863727570;
      break;
    case 0xF:
    case 0x21:
    case 0x2C:
      result = 0xD000000000000014;
      break;
    case 0x10:
      result = 0x7665526574697277;
      break;
    case 0x11:
      result = 0x73776569766572;
      break;
    case 0x12:
      result = 0x746E756F636361;
      break;
    case 0x13:
      result = 0x65636E616E6966;
      break;
    case 0x14:
      result = 0x75506E6564646968;
      break;
    case 0x15:
      result = 7304045;
      break;
    case 0x16:
      result = 0x486E6F6973726576;
      break;
    case 0x17:
      result = 0x696472616F626E6FLL;
      break;
    case 0x18:
      result = 0x6544776569766572;
      break;
    case 0x19:
      result = 0xD000000000000013;
      break;
    case 0x1A:
      result = 0x656461637261;
      break;
    case 0x1B:
      result = 0x7553656461637261;
      break;
    case 0x1C:
      result = 0xD000000000000013;
      break;
    case 0x1D:
    case 0x20:
      result = 0xD000000000000011;
      break;
    case 0x1E:
      result = 0x6557656461637261;
      break;
    case 0x1F:
      result = 0xD00000000000001CLL;
      break;
    case 0x22:
    case 0x31:
      result = 0xD000000000000010;
      break;
    case 0x23:
      result = 0xD000000000000013;
      break;
    case 0x24:
    case 0x34:
      result = 0xD000000000000016;
      break;
    case 0x25:
      result = 0xD000000000000017;
      break;
    case 0x26:
      result = 0x434174726F706572;
      break;
    case 0x27:
      result = 0xD00000000000001ALL;
      break;
    case 0x28:
      result = 0x6568536572616873;
      break;
    case 0x29:
      result = 0x6563614665676170;
      break;
    case 0x2A:
      result = 0x4479636176697270;
      break;
    case 0x2B:
      result = 0xD000000000000012;
      break;
    case 0x2D:
      result = 0x746E657645707061;
      break;
    case 0x2E:
    case 0x33:
      result = 0xD000000000000015;
      break;
    case 0x2F:
      result = 0x657449726566666FLL;
      break;
    case 0x30:
      result = 0x6472614374786574;
      break;
    case 0x32:
      result = 0x7465536775626564;
      break;
    case 0x35:
      result = 0xD00000000000001BLL;
      break;
    case 0x36:
      result = 0x73656D6167;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24F302294()
{
  v0 = FlowPage.rawValue.getter();
  v2 = v1;
  if (v0 == FlowPage.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24F92CE08();
  }

  return v5 & 1;
}

uint64_t sub_24F302330()
{
  sub_24F92D068();
  FlowPage.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F302398(uint64_t a1)
{
  FlowPage.rawValue.getter();
  sub_24F92B218();
}

uint64_t sub_24F3023FC()
{
  sub_24F92D068();
  FlowPage.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24F30246C@<X0>(unint64_t *a1@<X8>)
{
  result = FlowPage.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FlowPresentationContext.presentationStyle.getter()
{
  v1 = *v0;
  if (v1 <= 5)
  {
    if (v1 == 4)
    {
      return 2;
    }

    if (v1 == 5)
    {
      return 1;
    }
  }

  else
  {
    switch(v1)
    {
      case 6u:
        return 0;
      case 7u:
        return 5;
      case 8u:
        return 7;
    }
  }

  return 0;
}

GameStoreKit::FlowPresentationContext_optional __swiftcall FlowPresentationContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FlowPresentationContext.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x7265666E69;
    v8 = 1752397168;
    v9 = 0x4D746E6573657270;
    if (v1 != 3)
    {
      v9 = 0xD000000000000015;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x61746544776F6873;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0xD000000000000013;
    v3 = 0x7463656C6573;
    if (v1 != 9)
    {
      v3 = 0x6563616C706572;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000015;
    v5 = 0xD00000000000001ALL;
    if (v1 == 6)
    {
      v5 = 0xD000000000000016;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F3026DC()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F203A14(v3, v1);
  return sub_24F92D0B8();
}

uint64_t sub_24F30272C()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F203A14(v3, v1);
  return sub_24F92D0B8();
}

unint64_t sub_24F30277C@<X0>(unint64_t *a1@<X8>)
{
  result = FlowPresentationContext.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

GameStoreKit::FlowAnimationBehavior_optional __swiftcall FlowAnimationBehavior.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FlowAnimationBehavior.rawValue.getter()
{
  v1 = 0x726576656ELL;
  if (*v0 != 1)
  {
    v1 = 0x737961776C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265666E69;
  }
}

uint64_t sub_24F302850(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x726576656ELL;
  if (v2 != 1)
  {
    v5 = 0x737961776C61;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x7265666E69;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x726576656ELL;
  if (*a2 != 1)
  {
    v8 = 0x737961776C61;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7265666E69;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F30293C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F3029D4(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F302A58()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F302AF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x726576656ELL;
  if (v2 != 1)
  {
    v5 = 0x737961776C61;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7265666E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t static FlowOrigin.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C616E7265747865;
  }

  else
  {
    v3 = 0x7070616E69;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C616E7265747865;
  }

  else
  {
    v5 = 0x7070616E69;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
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
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t FlowOrigin.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C616E7265747865;
  }

  else
  {
    return 0x7070616E69;
  }
}

GameStoreKit::FlowOrigin_optional __swiftcall FlowOrigin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

uint64_t sub_24F302C8C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F302D0C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F302D78()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F302DF4@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

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

void sub_24F302E54(uint64_t *a1@<X8>)
{
  v2 = 0x7070616E69;
  if (*v1)
  {
    v2 = 0x6C616E7265747865;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24F302E90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C616E7265747865;
  }

  else
  {
    v3 = 0x7070616E69;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C616E7265747865;
  }

  else
  {
    v5 = 0x7070616E69;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
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
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

unint64_t FlowAction.debugDescription.getter()
{
  sub_24F92C888();

  v0 = sub_24F92C7A8();
  MEMORY[0x253050C20](v0);

  MEMORY[0x253050C20](0x3A65676170202C22, 0xE900000000000020);
  v1 = FlowPage.rawValue.getter();
  MEMORY[0x253050C20](v1);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return 0xD000000000000010;
}

void *FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, char *a13, unsigned __int8 *a14, uint64_t a15, uint64_t a16, char *a17)
{
  v18 = v17;
  v62 = a8;
  v61 = a7;
  v69 = a4;
  v68 = a3;
  v67 = a2;
  v63 = a1;
  v65 = a17;
  v66 = a15;
  v64 = a16;
  v71 = a14;
  v72 = a11;
  v70 = a10;
  v58 = sub_24F91F6B8();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v56 - v23;
  v25 = sub_24F928AD8();
  v60 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v26) = *a5;
  v28 = *(a9 + 32);
  v29 = *(a9 + 40);
  v30 = *a12;
  v31 = *a13;
  v59 = *v71;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v32 = v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v32 = 0u;
  *(v32 + 1) = 0u;
  *(v32 + 4) = 0;
  v33 = (v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v33 = 0;
  v33[1] = 0;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = v26;
  v71 = a6;
  sub_24E60169C(a6, v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);
  v34 = (v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  v35 = v62;
  *v34 = v61;
  v34[1] = v35;
  v36 = v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  v37 = *(a9 + 16);
  *v36 = *a9;
  *(v36 + 1) = v37;
  *(v36 + 4) = v28;
  v38 = v63;
  v36[40] = v29;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = v30;
  v39 = v60;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = v31;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = v59;
  v40 = (v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  v41 = v65;
  *v40 = v64;
  v40[1] = v41;
  sub_24E60169C(v38, v81, &qword_27F235830, &qword_24F93B8C0);
  v42 = *(v39 + 16);
  v65 = v27;
  v42(v27, v72, v25);
  v43 = sub_24F929608();
  (*(*(v43 - 8) + 56))(v24, 1, 1, v43);
  v44 = (v18 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v44 = 0u;
  v44[1] = 0u;
  sub_24E60169C(v81, &v75, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v76 + 1))
  {
    v78 = v75;
    v79 = v76;
    v80 = v77;
    v45 = v69;
  }

  else
  {
    v45 = v69;

    v46 = v56;
    sub_24F91F6A8();
    v47 = sub_24F91F668();
    v49 = v48;
    (*(v57 + 8))(v46, v58);
    v73 = v47;
    v74 = v49;
    sub_24F92C7F8();
    sub_24E601704(&v75, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v81, &qword_27F235830, &qword_24F93B8C0);
  v50 = v18 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v50 + 4) = v80;
  v51 = v79;
  *v50 = v78;
  *(v50 + 1) = v51;
  sub_24E6009C8(v24, v18 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v52 = v68;
  v18[2] = v67;
  v18[3] = v52;
  v53 = v66;
  v18[4] = v45;
  v18[5] = v53;
  (*(v39 + 32))(v18 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v65, v25);

  v54 = v70;
  FlowAction.setPageData(_:)(v70);

  (*(v39 + 8))(v72, v25);
  sub_24E601704(v54, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(v71, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v38, &qword_27F235830, &qword_24F93B8C0);
  return v18;
}

uint64_t sub_24F303608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E7F8, &qword_24F9E2008);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *FlowAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v75 = a2;
  v6 = *v4;
  v73 = v3;
  v74 = v6;
  v7 = sub_24F9285B8();
  v78 = *(v7 - 8);
  v79 = v7;
  MEMORY[0x28223BE20](v7);
  v72 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v66 - v12;
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v68 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v70 = &v66 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v66 - v20;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v22 = v4 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  v23 = (v4 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v23 = 0;
  v23[1] = 0;
  v76 = a1;
  sub_24F928398();
  sub_24F307B08();
  sub_24F928248();
  v71 = v15;
  v25 = *(v15 + 8);
  v24 = v15 + 8;
  v77 = v14;
  v26 = v14;
  v27 = v25;
  (v25)(v21, v26);
  v28 = v82;
  if (v82 == 55)
  {
    v29 = sub_24F92AC38();
    sub_24F30A374(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v30 = 1701273968;
    v31 = v74;
    v30[1] = 0xE400000000000000;
    v30[2] = v31;
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D22530], v29);
    swift_willThrow();
    (*(v78 + 8))(v75, v79);
    (v27)(v76, v77);

    sub_24E601704(v22, &qword_27F23E7F8, &qword_24F9E2008);
    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = v82;
    v32 = v76;
    v66 = v28;
    sub_24F928398();
    sub_24F928268();
    v33 = v77;
    (v27)(v21);
    sub_24E6009C8(v13, v4 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);
    sub_24F928398();
    sub_24F307B5C();
    sub_24F928208();
    (v27)(v21, v33);
    *(v4 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = v82;
    sub_24F928398();
    sub_24F307BB0();
    sub_24F928208();
    (v27)(v21, v33);
    *(v4 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = v82;
    sub_24F928398();
    sub_24F307C04();
    sub_24F928208();
    (v27)(v21, v33);
    *(v4 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = v82;
    sub_24F928398();
    v34 = sub_24F928348();
    v36 = v35;
    (v27)(v21, v33);
    v37 = (v4 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
    *v37 = v34;
    v37[1] = v36;
    sub_24F928398();
    v38 = v75;
    v67 = *(v78 + 16);
    v67(v69, v75, v79);
    sub_24EC55728();
    sub_24F929548();
    v39 = v84;
    v40 = v85;
    v41 = v4 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
    v42 = v83;
    *v41 = v82;
    *(v41 + 1) = v42;
    *(v41 + 4) = v39;
    v41[40] = v40;
    sub_24F928398();
    sub_24F307C58();
    sub_24F928248();
    v43 = v77;
    v69 = v27;
    (v27)(v21, v77);
    v44 = *(&v82 + 1);
    v45 = v32;
    v46 = v43;
    v47 = v24;
    if (*(&v82 + 1))
    {
      v48 = v38;
      v49 = v82;
    }

    else if (v66 <= 0x31 && ((1 << v66) & 0x31400135D000CLL) != 0)
    {
      v48 = v38;
      v49 = sub_24F929D08();
    }

    else
    {
      v48 = v38;
      v49 = sub_24F929D18();
    }

    v50 = v79;
    v51 = (v4 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
    *v51 = v49;
    v51[1] = v44;
    v52 = v70;
    (*(v71 + 16))(v70, v45, v46);
    v53 = v72;
    v67(v72, v48, v50);
    v54 = v73;
    v55 = Action.init(deserializing:using:)(v52, v53);
    v56 = v78;
    if (v54)
    {
      (*(v78 + 8))(v48, v50);
      (v69)(v45, v46);
    }

    else
    {
      v4 = v55;
      v73 = v47;
      v57 = v46;
      v86 = v66;
      v58 = v68;
      sub_24F928398();
      v59 = sub_24F304090(&v86, v58, v48, &v82);
      v60 = v69;
      (v69)(v58, v57, v59);
      v61 = *(&v83 + 1);
      if (*(&v83 + 1))
      {
        v62 = __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
        *(&v81 + 1) = v61;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v80);
        v64 = v62;
        v60 = v69;
        (*(*(v61 - 8) + 16))(boxed_opaque_existential_1, v64, v61);
        __swift_destroy_boxed_opaque_existential_1(&v82);
      }

      else
      {
        sub_24E601704(&v82, &qword_27F23E7F8, &qword_24F9E2008);
        v80 = 0u;
        v81 = 0u;
      }

      FlowAction.setPageData(_:)(&v80);
      (*(v56 + 8))(v75, v79);
      v60(v76, v57);
      sub_24E601704(&v80, &qword_27F2129B0, &unk_24F945320);
    }
  }

  return v4;
}

double sub_24F304090@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v327 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v323 - v8;
  v10 = sub_24F92AC28();
  v325 = *(v10 - 8);
  v326 = v10;
  v11 = *(v325 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v323 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v323 - v14;
  v334 = sub_24F9285B8();
  v329 = *(v334 - 8);
  MEMORY[0x28223BE20](v334);
  v328 = v16;
  v333 = &v323 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = sub_24F928388();
  v17 = *(v332 - 1);
  MEMORY[0x28223BE20](v332);
  v330 = v18;
  v331 = &v323 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  if (sub_24F928328())
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    v324 = a4;
    switch(v19)
    {
      case 0:
        v21 = v331;
        v22 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v23 = v329;
        v24 = v333;
        v25 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v26 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v27 = (v330 + *(v23 + 80) + v26) & ~*(v23 + 80);
        v28 = swift_allocObject();
        (*(v17 + 32))(v28 + v26, v21, v22);
        (*(v23 + 32))(v28 + v27, v24, v25);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E918, &qword_24F9E2658);
        v30 = v324;
        *(v324 + 24) = v29;
        v30[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v30);
        type metadata accessor for SearchAction(0);
        goto LABEL_38;
      case 1:
        v163 = v331;
        v164 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v165 = v329;
        v166 = v333;
        v167 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v168 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v169 = (v330 + *(v165 + 80) + v168) & ~*(v165 + 80);
        v170 = swift_allocObject();
        (*(v17 + 32))(v170 + v168, v163, v164);
        (*(v165 + 32))(v170 + v169, v166, v167);
        v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E960, &unk_24F9E26A0);
        v172 = v324;
        *(v324 + 24) = v171;
        v172[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v172);
        type metadata accessor for ShelfBasedProductPage(0);
        goto LABEL_38;
      case 2:
        v113 = v331;
        v114 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v115 = v329;
        v116 = v333;
        v117 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v118 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v119 = (v330 + *(v115 + 80) + v118) & ~*(v115 + 80);
        v120 = swift_allocObject();
        (*(v17 + 32))(v120 + v118, v113, v114);
        (*(v115 + 32))(v120 + v119, v116, v117);
        v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8D0, &qword_24F9E2608);
        v122 = v324;
        *(v324 + 24) = v121;
        v122[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v122);
        type metadata accessor for DynamicUIRequestInfo();
        goto LABEL_38;
      case 6:
        sub_24F9282B8();
        v223 = v325;
        v224 = v326;
        if ((*(v325 + 48))(v9, 1, v326) == 1)
        {
          sub_24E601704(v9, &qword_27F2213B0, &qword_24F965EC0);
          result = 0.0;
          v225 = v324;
          *v324 = 0u;
          *(v225 + 16) = 0u;
          *(v225 + 32) = 0;
        }

        else
        {
          v332 = *(v223 + 32);
          (v332)(v15, v9, v224);
          (*(v223 + 16))(v12, v15, v224);
          v317 = v329;
          (*(v329 + 16))(v333, v327, v334);
          v318 = (*(v223 + 80) + 16) & ~*(v223 + 80);
          v319 = (v11 + *(v317 + 80) + v318) & ~*(v317 + 80);
          v320 = swift_allocObject();
          (v332)(v320 + v318, v12, v224);
          (*(v317 + 32))(v320 + v319, v333, v334);
          v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E950, &qword_24F9E2690);
          v322 = v324;
          *(v324 + 24) = v321;
          v322[4] = &off_286218388;
          __swift_allocate_boxed_opaque_existential_1(v322);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E958, &qword_24F9E2698);
          sub_24F92A4B8();
          (*(v223 + 8))(v15, v224);
        }

        return result;
      case 7:
        v226 = v331;
        v227 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v228 = v329;
        v229 = v333;
        v230 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v231 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v232 = (v330 + *(v228 + 80) + v231) & ~*(v228 + 80);
        v233 = swift_allocObject();
        (*(v17 + 32))(v233 + v231, v226, v227);
        (*(v228 + 32))(v233 + v232, v229, v230);
        v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E948, &qword_24F9E2688);
        v235 = v324;
        *(v324 + 24) = v234;
        v235[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v235);
        type metadata accessor for Video(0);
        goto LABEL_38;
      case 8:
      case 22:
      case 42:
      case 43:
      case 44:
      case 48:
        v306 = v331;
        v307 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v308 = v329;
        v309 = v333;
        v310 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v311 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v312 = (v330 + *(v308 + 80) + v311) & ~*(v308 + 80);
        v313 = swift_allocObject();
        (*(v17 + 32))(v313 + v311, v306, v307);
        (*(v308 + 32))(v313 + v312, v309, v310);
        v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8B0, &qword_24F9E25E8);
        v315 = v324;
        *(v324 + 24) = v314;
        v315[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v315);
        type metadata accessor for GenericPage(0);
        goto LABEL_38;
      case 10:
        v173 = v331;
        v174 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v175 = v329;
        v176 = v333;
        v177 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v178 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v179 = (v330 + *(v175 + 80) + v178) & ~*(v175 + 80);
        v180 = swift_allocObject();
        (*(v17 + 32))(v180 + v178, v173, v174);
        (*(v175 + 32))(v180 + v179, v176, v177);
        v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E940, &qword_24F9E2680);
        v182 = v324;
        *(v324 + 24) = v181;
        v182[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v182);
        type metadata accessor for TopChartsPage(0);
        goto LABEL_38;
      case 12:
        v183 = v331;
        v184 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v185 = v329;
        v186 = v333;
        v187 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v188 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v189 = (v330 + *(v185 + 80) + v188) & ~*(v185 + 80);
        v190 = swift_allocObject();
        (*(v17 + 32))(v190 + v188, v183, v184);
        (*(v185 + 32))(v190 + v189, v186, v187);
        v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E938, &qword_24F9E2678);
        v192 = v324;
        *(v324 + 24) = v191;
        v192[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v192);
        type metadata accessor for TodayPage(0);
        goto LABEL_38;
      case 13:
        v246 = v331;
        v247 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v248 = v329;
        v249 = v333;
        v250 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v251 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v252 = (v330 + *(v248 + 80) + v251) & ~*(v248 + 80);
        v253 = swift_allocObject();
        (*(v17 + 32))(v253 + v251, v246, v247);
        (*(v248 + 32))(v253 + v252, v249, v250);
        v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E930, &qword_24F9E2670);
        v255 = v324;
        *(v324 + 24) = v254;
        v255[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v255);
        type metadata accessor for ArticlePage(0);
        goto LABEL_38;
      case 15:
        v236 = v331;
        v237 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v238 = v329;
        v239 = v333;
        v240 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v241 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v242 = (v330 + *(v238 + 80) + v241) & ~*(v238 + 80);
        v243 = swift_allocObject();
        (*(v17 + 32))(v243 + v241, v236, v237);
        (*(v238 + 32))(v243 + v242, v239, v240);
        v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E928, &qword_24F9E2668);
        v245 = v324;
        *(v324 + 24) = v244;
        v245[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v245);
        type metadata accessor for InAppPurchaseInstallPage(0);
        goto LABEL_38;
      case 16:
        v67 = sub_24F928348();
        v69 = v324;
        if (v68)
        {
          v70 = v67;
          v71 = v68;
          v72 = swift_allocObject();
          *(v72 + 16) = v70;
          *(v72 + 24) = v71;
          *(v69 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E910, &qword_24F9E2650);
          *(v69 + 32) = &off_286218388;
          __swift_allocate_boxed_opaque_existential_1(v69);
LABEL_38:
          sub_24F92A4B8();
        }

        else
        {
          *(v324 + 32) = 0;
          result = 0.0;
          *v69 = 0u;
          *(v69 + 16) = 0u;
        }

        break;
      case 17:
        v143 = v331;
        v144 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v145 = v329;
        v146 = v333;
        v147 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v148 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v149 = (v330 + *(v145 + 80) + v148) & ~*(v145 + 80);
        v150 = swift_allocObject();
        (*(v17 + 32))(v150 + v148, v143, v144);
        (*(v145 + 32))(v150 + v149, v146, v147);
        v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E920, &qword_24F9E2660);
        v152 = v324;
        *(v324 + 24) = v151;
        v152[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v152);
        type metadata accessor for ReviewsPage(0);
        goto LABEL_38;
      case 18:
        v93 = v331;
        v94 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v95 = v329;
        v96 = v333;
        v97 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v98 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v99 = (v330 + *(v95 + 80) + v98) & ~*(v95 + 80);
        v100 = swift_allocObject();
        (*(v17 + 32))(v100 + v98, v93, v94);
        (*(v95 + 32))(v100 + v99, v96, v97);
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E908, &qword_24F9E2648);
        v102 = v324;
        *(v324 + 24) = v101;
        v102[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v102);
        type metadata accessor for GenericAccountPage(0);
        goto LABEL_38;
      case 24:
        v193 = v331;
        v194 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v195 = v329;
        v196 = v333;
        v197 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v198 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v199 = (v330 + *(v195 + 80) + v198) & ~*(v195 + 80);
        v200 = swift_allocObject();
        (*(v17 + 32))(v200 + v198, v193, v194);
        (*(v195 + 32))(v200 + v199, v196, v197);
        v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E880, &qword_24F9E25B8);
        v202 = v324;
        *(v324 + 24) = v201;
        v202[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v202);
        type metadata accessor for Review(0);
        goto LABEL_38;
      case 25:
        v203 = v331;
        v204 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v205 = v329;
        v206 = v333;
        v207 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v208 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v209 = (v330 + *(v205 + 80) + v208) & ~*(v205 + 80);
        v210 = swift_allocObject();
        (*(v17 + 32))(v210 + v208, v203, v204);
        (*(v205 + 32))(v210 + v209, v206, v207);
        v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E878, &qword_24F9E25B0);
        v212 = v324;
        *(v324 + 24) = v211;
        v212[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v212);
        type metadata accessor for EditorsChoice(0);
        goto LABEL_38;
      case 26:
        v276 = v331;
        v277 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v278 = v329;
        v279 = v333;
        v280 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v281 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v282 = (v330 + *(v278 + 80) + v281) & ~*(v278 + 80);
        v283 = swift_allocObject();
        (*(v17 + 32))(v283 + v281, v276, v277);
        (*(v278 + 32))(v283 + v282, v279, v280);
        v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E900, &qword_24F9E2640);
        v285 = v324;
        *(v324 + 24) = v284;
        v285[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v285);
        type metadata accessor for ArcadePage(0);
        goto LABEL_38;
      case 27:
        v256 = v331;
        v257 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v258 = v329;
        v259 = v333;
        v260 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v261 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v262 = (v330 + *(v258 + 80) + v261) & ~*(v258 + 80);
        v263 = swift_allocObject();
        (*(v17 + 32))(v263 + v261, v256, v257);
        (*(v258 + 32))(v263 + v262, v259, v260);
        v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8F8, &qword_24F9E2638);
        v265 = v324;
        *(v324 + 24) = v264;
        v265[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v265);
        type metadata accessor for ArcadeSubscribePage(0);
        goto LABEL_38;
      case 28:
        v31 = v331;
        v32 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v33 = v329;
        v34 = v333;
        v35 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v36 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v37 = (v330 + *(v33 + 80) + v36) & ~*(v33 + 80);
        v38 = swift_allocObject();
        (*(v17 + 32))(v38 + v36, v31, v32);
        (*(v33 + 32))(v38 + v37, v34, v35);
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8D8, &qword_24F9E2610);
        v40 = v324;
        *(v324 + 24) = v39;
        v40[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v40);
        type metadata accessor for MarketingItemRequestInfo();
        goto LABEL_38;
      case 29:
        v103 = v331;
        v104 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v105 = v329;
        v106 = v333;
        v107 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v108 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v109 = (v330 + *(v105 + 80) + v108) & ~*(v105 + 80);
        v110 = swift_allocObject();
        (*(v17 + 32))(v110 + v108, v103, v104);
        (*(v105 + 32))(v110 + v109, v106, v107);
        v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8E8, &qword_24F9E2628);
        v112 = v324;
        *(v324 + 24) = v111;
        v112[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v112);
        type metadata accessor for ArcadeSeeAllGamesPage(0);
        goto LABEL_38;
      case 30:
        v286 = v331;
        v287 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v288 = v329;
        v289 = v333;
        v290 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v291 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v292 = (v330 + *(v288 + 80) + v291) & ~*(v288 + 80);
        v293 = swift_allocObject();
        (*(v17 + 32))(v293 + v291, v286, v287);
        (*(v288 + 32))(v293 + v292, v289, v290);
        v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8F0, &qword_24F9E2630);
        v295 = v324;
        *(v324 + 24) = v294;
        v295[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v295);
        type metadata accessor for ArcadeWelcomePage(0);
        goto LABEL_38;
      case 31:
        v42 = v331;
        v41 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v43 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v44 = swift_allocObject();
        (*(v17 + 32))(v44 + v43, v42, v41);
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8E0, &unk_24F9E2618);
        v46 = v324;
        *(v324 + 24) = v45;
        v46[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v46);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
        goto LABEL_38;
      case 35:
        v83 = v331;
        v84 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v85 = v329;
        v86 = v333;
        v87 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v88 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v89 = (v330 + *(v85 + 80) + v88) & ~*(v85 + 80);
        v90 = swift_allocObject();
        (*(v17 + 32))(v90 + v88, v83, v84);
        (*(v85 + 32))(v90 + v89, v86, v87);
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E890, &qword_24F9E25C8);
        v92 = v324;
        *(v324 + 24) = v91;
        v92[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v92);
        type metadata accessor for GameCenterDashboardAction(0);
        goto LABEL_38;
      case 37:
        v57 = v331;
        v58 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v59 = v329;
        v60 = v333;
        v61 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v62 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v63 = (v330 + *(v59 + 80) + v62) & ~*(v59 + 80);
        v64 = swift_allocObject();
        (*(v17 + 32))(v64 + v62, v57, v58);
        (*(v59 + 32))(v64 + v63, v60, v61);
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E898, &qword_24F9E25D0);
        v66 = v324;
        *(v324 + 24) = v65;
        v66[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v66);
        type metadata accessor for GameCenterPlayerProfileAction(0);
        goto LABEL_38;
      case 39:
        v153 = v331;
        v154 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v155 = v329;
        v156 = v333;
        v157 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v158 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v159 = (v330 + *(v155 + 80) + v158) & ~*(v155 + 80);
        v160 = swift_allocObject();
        (*(v17 + 32))(v160 + v158, v153, v154);
        (*(v155 + 32))(v160 + v159, v156, v157);
        v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E888, &qword_24F9E25C0);
        v162 = v324;
        *(v324 + 24) = v161;
        v162[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v162);
        type metadata accessor for ReviewSummaryReportConcernAction(0);
        goto LABEL_38;
      case 40:
        v47 = v331;
        v48 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v49 = v329;
        v50 = v333;
        v51 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v52 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v53 = (v330 + *(v49 + 80) + v52) & ~*(v49 + 80);
        v54 = swift_allocObject();
        (*(v17 + 32))(v54 + v52, v47, v48);
        (*(v49 + 32))(v54 + v53, v50, v51);
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8A0, &qword_24F9E25D8);
        v56 = v324;
        *(v324 + 24) = v55;
        v56[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v56);
        type metadata accessor for ShareSheetAction(0);
        goto LABEL_38;
      case 45:
        v123 = v331;
        v124 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v125 = v329;
        v126 = v333;
        v127 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v128 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v129 = (v330 + *(v125 + 80) + v128) & ~*(v125 + 80);
        v130 = swift_allocObject();
        (*(v17 + 32))(v130 + v128, v123, v124);
        (*(v125 + 32))(v130 + v129, v126, v127);
        v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8C8, &qword_24F9E2600);
        v132 = v324;
        *(v324 + 24) = v131;
        v132[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v132);
        type metadata accessor for AppEventDetailPage(0);
        goto LABEL_38;
      case 46:
        v213 = v331;
        v214 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v215 = v329;
        v216 = v333;
        v217 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v218 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v219 = (v330 + *(v215 + 80) + v218) & ~*(v215 + 80);
        v220 = swift_allocObject();
        (*(v17 + 32))(v220 + v218, v213, v214);
        (*(v215 + 32))(v220 + v219, v216, v217);
        v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8C0, &qword_24F9E25F8);
        v222 = v324;
        *(v324 + 24) = v221;
        v222[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v222);
        type metadata accessor for ContingentOfferDetailPage(0);
        goto LABEL_38;
      case 47:
        v133 = v331;
        v134 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v135 = v329;
        v136 = v333;
        v137 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v138 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v139 = (v330 + *(v135 + 80) + v138) & ~*(v135 + 80);
        v140 = swift_allocObject();
        (*(v17 + 32))(v140 + v138, v133, v134);
        (*(v135 + 32))(v140 + v139, v136, v137);
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8B8, &qword_24F9E25F0);
        v142 = v324;
        *(v324 + 24) = v141;
        v142[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v142);
        type metadata accessor for OfferItemDetailPage(0);
        goto LABEL_38;
      case 49:
        v73 = v331;
        v74 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v75 = v329;
        v76 = v333;
        v77 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v78 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v79 = (v330 + *(v75 + 80) + v78) & ~*(v75 + 80);
        v80 = swift_allocObject();
        (*(v17 + 32))(v80 + v78, v73, v74);
        (*(v75 + 32))(v80 + v79, v76, v77);
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8A8, &qword_24F9E25E0);
        v82 = v324;
        *(v324 + 24) = v81;
        v82[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v82);
        goto LABEL_38;
      case 53:
        v266 = v331;
        v267 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v268 = v329;
        v269 = v333;
        v270 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v271 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v272 = (v330 + *(v268 + 80) + v271) & ~*(v268 + 80);
        v273 = swift_allocObject();
        (*(v17 + 32))(v273 + v271, v266, v267);
        (*(v268 + 32))(v273 + v272, v269, v270);
        v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E870, &qword_24F9E25A8);
        v275 = v324;
        *(v324 + 24) = v274;
        v275[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v275);
        type metadata accessor for PersonalizationTransparencyPage(0);
        goto LABEL_38;
      case 54:
        v296 = v331;
        v297 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v298 = v329;
        v299 = v333;
        v300 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v301 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v302 = (v330 + *(v298 + 80) + v301) & ~*(v298 + 80);
        v303 = swift_allocObject();
        (*(v17 + 32))(v303 + v301, v296, v297);
        (*(v298 + 32))(v303 + v302, v299, v300);
        v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E868, &qword_24F9E25A0);
        v305 = v324;
        *(v324 + 24) = v304;
        v305[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v305);
        goto LABEL_38;
      default:
        v316 = v324;
        *(v324 + 32) = 0;
        result = 0.0;
        *v316 = 0u;
        v316[1] = 0u;
        return result;
    }
  }

  return result;
}

uint64_t FlowAction.referrerUrl.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);

  return v1;
}

double FlowAction.referrerData.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 8);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 16);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 24);
  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = *(v2 + 40);
  *(a1 + 40) = v8;
  return sub_24EA145F0(v3, v4, v5, v6, v7, v8);
}

double FlowAction.pageDataPageRenderMetrics.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void FlowAction.presentationContext.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void FlowAction.presentationContext.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

void FlowAction.animationBehavior.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void FlowAction.animationBehavior.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

void FlowAction.origin.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void FlowAction.origin.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t FlowAction.presentation.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t FlowAction.presentation.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

double FlowAction.appStateController.getter()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

double FlowAction.appStateController.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  swift_unknownObjectRelease();
  return result;
}

double sub_24F307254()
{
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);

  sub_24EA14B54(*(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData), *(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 40));

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData, &qword_27F23E7F8, &qword_24F9E2008);

  swift_unknownObjectRelease();
  return result;
}

uint64_t FlowAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);

  sub_24EA14B54(*(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData), *(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 40));

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData, &qword_27F23E7F8, &qword_24F9E2008);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t FlowAction.__deallocating_deinit()
{
  FlowAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F307510()
{
  v1 = (*v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

char *sub_24F307594(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v26 = sub_24F9285B8();
  v3 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v25 = &v25 - v6;
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  v28 = v9;
  v16 = *(v9 + 16);
  v16(&v25 - v14, a1, v8, v13);
  v30 = v3;
  v17 = *(v3 + 16);
  v18 = v7;
  v19 = v26;
  v17(v18, v29, v26);
  type metadata accessor for GameCenterDashboardAction(0);
  swift_allocObject();
  v29 = v8;
  (v16)(v11, v15, v8);
  v20 = v19;
  v21 = v25;
  v22 = v27;
  v17(v27, v25, v20);
  v23 = Action.init(deserializing:using:)(v11, v22);
  (*(v30 + 8))(v21, v20);
  (*(v28 + 8))(v15, v29);
  return v23;
}

uint64_t sub_24F30780C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a1, v11);
  (*(v7 + 16))(v9, a2, v6);
  return Annotation.init(deserializing:using:)(v13, v9, a3);
}

uint64_t sub_24F30798C(void x0_0, uint64_t a1)
{
  v3 = sub_24F9285B8();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  MEMORY[0x253050800](v6);
  sub_24F30A3BC();
  sub_24F9282E8();
}

uint64_t sub_24F307AA0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_24F307B08()
{
  result = qword_27F23E810;
  if (!qword_27F23E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E810);
  }

  return result;
}

unint64_t sub_24F307B5C()
{
  result = qword_27F23E818;
  if (!qword_27F23E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E818);
  }

  return result;
}

unint64_t sub_24F307BB0()
{
  result = qword_27F23E820;
  if (!qword_27F23E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E820);
  }

  return result;
}

unint64_t sub_24F307C04()
{
  result = qword_27F23E828;
  if (!qword_27F23E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E828);
  }

  return result;
}

unint64_t sub_24F307C58()
{
  result = qword_27F23E830;
  if (!qword_27F23E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E830);
  }

  return result;
}

uint64_t FlowAction.replacingPageData(_:)(uint64_t a1)
{
  v3 = sub_24F91F6B8();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F928AD8();
  v67 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  sub_24E65864C(&v1[OBJC_IVAR____TtC12GameStoreKit6Action_id], v75);
  LODWORD(v60) = v1[OBJC_IVAR____TtC12GameStoreKit10FlowAction_page];
  v12 = *(v1 + 2);
  v59 = *(v1 + 3);
  v13 = *(v1 + 4);
  v57 = v12;
  v58 = v13;
  sub_24E60169C(&v1[OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl], v11, &qword_27F228530, &unk_24F93C6E0);
  v14 = *&v1[OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl];
  v54 = *&v1[OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl + 8];
  v55 = v14;
  v15 = *&v1[OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData];
  v53 = *&v1[OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 8];
  v16 = *&v1[OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 16];
  v64 = *&v1[OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 24];
  v65 = v16;
  v63 = *&v1[OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 32];
  v62 = v1[OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 40];
  sub_24E60169C(a1, v74, &qword_27F2129B0, &unk_24F945320);
  v61 = v6;
  v52 = *(v6 + 16);
  v52(v8, &v1[OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics], v5);
  v17 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext;
  swift_beginAccess();
  v51 = v1[v17];
  v18 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior;
  swift_beginAccess();
  LOBYTE(v18) = v1[v18];
  v19 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin;
  swift_beginAccess();
  LOBYTE(v8) = v1[v19];
  v56 = *(v1 + 5);
  v20 = &v1[OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation];
  swift_beginAccess();
  v22 = *v20;
  v21 = v20[1];
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v24 = v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v25 = 0;
  v25[1] = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = v60;
  v60 = v11;
  sub_24E60169C(v11, v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);
  v26 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  v27 = v54;
  *v26 = v55;
  v26[1] = v27;
  v28 = v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  v55 = v15;
  *v28 = v15;
  v29 = v53;
  v31 = v64;
  v30 = v65;
  *(v28 + 8) = v53;
  *(v28 + 16) = v30;
  v32 = v63;
  *(v28 + 24) = v31;
  *(v28 + 32) = v32;
  *(v28 + 40) = v62;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = v51;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = v18;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = v8;
  v33 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v33 = v22;
  v33[1] = v21;
  sub_24E60169C(v75, v73, &qword_27F235830, &qword_24F93B8C0);
  v52((v23 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics), v66, v67);
  v34 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v35 = sub_24F929608();
  (*(*(v35 - 8) + 56))(v23 + v34, 1, 1, v35);
  v36 = (v23 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v36 = 0u;
  v36[1] = 0u;
  v37 = v23 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v73, &v70, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v71 + 1))
  {
    v38 = v71;
    *v37 = v70;
    *(v37 + 16) = v38;
    *(v37 + 32) = v72;

    v39 = v59;

    v40 = v58;

    sub_24EA145F0(v55, v29, v65, v64, v63, v62);
  }

  else
  {

    v39 = v59;

    v40 = v58;

    sub_24EA145F0(v55, v29, v65, v64, v63, v62);

    v41 = v48;
    sub_24F91F6A8();
    v42 = sub_24F91F668();
    v44 = v43;
    (*(v49 + 8))(v41, v50);
    v68 = v42;
    v69 = v44;
    sub_24F92C7F8();
    sub_24E601704(&v70, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v73, &qword_27F235830, &qword_24F93B8C0);
  *&v45 = v57;
  *(&v45 + 1) = v39;
  *&v46 = v40;
  *(&v46 + 1) = v56;
  *(v23 + 16) = v45;
  *(v23 + 32) = v46;

  FlowAction.setPageData(_:)(v74);

  (*(v61 + 8))(v66, v67);
  sub_24E601704(v74, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(v60, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v75, &qword_27F235830, &qword_24F93B8C0);
  return v23;
}

uint64_t Lazy.anyWrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = sub_24F92C4A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  sub_24F92A4A8();
  v8 = *(v3 - 8);
  if ((*(v8 + 48))(v7, 1, v3) == 1)
  {
    result = (*(v5 + 8))(v7, v4);
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *(a2 + 24) = v3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (*(v8 + 32))(boxed_opaque_existential_1, v7, v3);
  }

  return result;
}

unint64_t sub_24F308500()
{
  result = qword_27F23E838;
  if (!qword_27F23E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E838);
  }

  return result;
}

unint64_t sub_24F308558()
{
  result = qword_27F23E840;
  if (!qword_27F23E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E840);
  }

  return result;
}

unint64_t sub_24F3085B0()
{
  result = qword_27F23E848;
  if (!qword_27F23E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E848);
  }

  return result;
}

unint64_t sub_24F308608()
{
  result = qword_27F23E850;
  if (!qword_27F23E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E850);
  }

  return result;
}

uint64_t type metadata accessor for FlowAction(uint64_t a1)
{
  result = qword_27F23E858;
  if (!qword_27F23E858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlowPage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCA)
  {
    goto LABEL_17;
  }

  if (a2 + 54 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 54) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 54;
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

      return (*a1 | (v4 << 8)) - 54;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 54;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x37;
  v8 = v6 - 55;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FlowPage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 54 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 54) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCA)
  {
    v4 = 0;
  }

  if (a2 > 0xC9)
  {
    v5 = ((a2 - 202) >> 8) + 1;
    *result = a2 + 54;
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
    *result = a2 + 54;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_24F30887C(uint64_t a1)
{
  sub_24E6D4C08(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F3089C0()
{
  v2 = *(sub_24F928388() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_24F9285B8() - 8);
  return sub_24F30798C(v1 + v3, v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80)));
}

uint64_t sub_24F308AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928388();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1, v12);
  (*(v8 + 16))(v10, a2, v7);
  result = sub_24ECB9BB4(v14, v10);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24F308C68@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_24F928388() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_24F9285B8() - 8);
  return sub_24F308AE4(v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

uint64_t sub_24F308D8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, unint64_t, uint64_t, uint64_t))
{
  v7 = *(sub_24F928388() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_24F9285B8() - 8);
  return a3(v3 + v8, v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), a1, a2);
}

char *sub_24F308ED8@<X0>(char **a1@<X8>)
{
  v4 = *(sub_24F928388() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_24F9285B8() - 8);
  result = sub_24F307594(v1 + v5, v1 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80)));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24F309054@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_24F928388() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_24F9285B8() - 8);
  return sub_24F30780C(v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

uint64_t sub_24F309124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a5)(char *, char *)@<X4>, uint64_t *a6@<X8>)
{
  v22 = a5;
  v21 = a6;
  v10 = sub_24F9285B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F928388();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, a1, v15);
  (*(v11 + 16))(v13, a2, v10);
  a3(0);
  swift_allocObject();
  result = v22(v17, v13);
  if (!v6)
  {
    *v21 = result;
  }

  return result;
}

uint64_t sub_24F3092E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, __n128)@<X2>, uint64_t (*a4)(char *, char *)@<X3>, uint64_t a5@<X8>)
{
  v20 = a4;
  v19[0] = a5;
  v8 = sub_24F9285B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(0, v14);
  (*(v13 + 16))(v16, a1, v12);
  (*(v9 + 16))(v11, a2, v8);
  v17 = v19[1];
  result = v20(v16, v11);
  if (!v17)
  {
    *v19[0] = result;
  }

  return result;
}

uint64_t sub_24F309634@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a3)(char *, char *)@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(sub_24F928388() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_24F9285B8() - 8);
  return sub_24F309124(v4 + v9, v4 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80)), a1, a3, a4);
}

uint64_t sub_24F309770()
{
  v1 = sub_24F928388();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F3097F8@<X0>(uint64_t *a1@<X8>)
{
  sub_24F928388();
  result = sub_24F928348();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24F309A28()
{

  return swift_deallocObject();
}

double sub_24F309A60@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t sub_24F309CCC@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219650, qword_24F974DB0);
  result = sub_24F92ABD8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24F309D60@<X0>(uint64_t *a1@<X8>)
{
  sub_24F92AC28();
  sub_24F9285B8();
  return sub_24F309CCC(a1);
}

uint64_t sub_24F309E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928388();
  v12 = MEMORY[0x28223BE20](v11);
  (*(v14 + 16))(&v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  (*(v8 + 16))(v10, a2, v7);
  type metadata accessor for Artwork(0);
  sub_24F30A374(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  result = sub_24F92B678();
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24F309FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(char *, char *)@<X3>, uint64_t *a5@<X8>)
{
  v21 = a5;
  v10 = sub_24F9285B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F928388();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, a1, v15);
  (*(v11 + 16))(v13, a2, v10);
  a3(0);
  swift_allocObject();
  result = a4(v17, v13);
  if (!v5)
  {
    *v21 = result;
  }

  return result;
}

uint64_t objectdestroy_28Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_24F30A374(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F30A3BC()
{
  result = qword_27F23E968;
  if (!qword_27F23E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E968);
  }

  return result;
}

uint64_t sub_24F30A4B8()
{
  swift_getKeyPath();
  sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  sub_24F91FD88();

  result = *(v0 + 120);
  if ((*(v0 + 136) & 1) == 0)
  {
    v2 = *(v0 + 120);
    swift_getKeyPath();
    sub_24F91FD88();

    v3 = v2 - *(v0 + 24);
    swift_getKeyPath();
    sub_24F91FD88();

    v4 = v3 - *(v0 + 40);
    swift_getKeyPath();
    sub_24F91FD88();

    swift_getKeyPath();
    sub_24F91FD88();

    return *&v4;
  }

  return result;
}

uint64_t sub_24F30A668@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F5500F8();
  *a1 = result;
  return result;
}

uint64_t sub_24F30A6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = xmmword_24F9E26B0;
  *(a7 + 16) = xmmword_24F9E26C0;
  *(a7 + 32) = xmmword_24F9E26D0;
  *(a7 + 48) = 0;
  v13 = type metadata accessor for CardHeroView(0, a4, a5, a6);
  (*(*(a5 - 8) + 32))(a7 + v13[14], a1, a5);
  (*(*(a4 - 8) + 32))(a7 + v13[15], a2, a4);
  v14 = v13[16];
  v15 = sub_24F923E98();
  (*(*(v15 - 8) + 32))(a7 + v14, a3, v15);
  v16 = a7 + v13[17];
  *v16 = sub_24F30B784(0, 0, 1);
  *(v16 + 8) = v17;
  *(v16 + 16) = v18 & 1;
  *(v16 + 24) = v19;
  v20 = (a7 + v13[18]);
  memset(&v31[3], 0, 32);
  v32 = 1;
  sub_24F30B7DC(v31);
  v21 = v31[1];
  *v20 = v31[0];
  v20[1] = v21;
  v20[2] = v31[2];
  sub_24F30B8B8(sub_24F30B850, 0, v22, v23, v24, &unk_286218BB0, type metadata accessor for HeroSafeAreaMetrics, sub_24E94DF50);
  sub_24F30B8B8(sub_24E8CA6B0, 0, v25, v26, v27, &unk_286218B88, type metadata accessor for CardSafeArea, sub_24E8D23E0);
  v28 = a7 + v13[21];
  *v28 = swift_getKeyPath();
  *(v28 + 8) = 0;
  v29 = a7 + v13[22];
  result = swift_getKeyPath();
  *v29 = result;
  *(v29 + 8) = 0;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = 0;
  return result;
}

uint64_t sub_24F30A934()
{
  swift_getKeyPath();
  sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  sub_24F91FD88();

  return *(v0 + 120);
}

__n128 sub_24F30A9D8@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  sub_24F91FD88();

  v3 = *(v1 + 112);
  result = *(v1 + 80);
  v5 = *(v1 + 96);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

double sub_24F30AA88()
{
  swift_getKeyPath();
  sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  sub_24F91FD88();

  return *(v0 + 48);
}

double sub_24F30AB2C@<D0>(_OWORD *a1@<X8>)
{
  sub_24EA98A3C();
  sub_24F924868();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double sub_24F30ABC8()
{
  swift_getKeyPath();
  sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  sub_24F91FD88();

  return *(v0 + 16);
}

__n128 sub_24F30AC6C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  sub_24F91FD88();

  result = *(v3 + 16);
  v5 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

void sub_24F30AD40(double a1, double a2, double a3, double a4)
{
  if (sub_24F923308())
  {
    v4[2] = a1;
    v4[3] = a2;
    v4[4] = a3;
    v4[5] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
    sub_24F91FD78();
  }
}

__n128 sub_24F30AE88@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  sub_24F91FD88();

  result = *(v3 + 48);
  v5 = *(v3 + 64);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

void sub_24F30AF5C(double a1, double a2, double a3, double a4)
{
  if (sub_24F923308())
  {
    v4[6] = a1;
    v4[7] = a2;
    v4[8] = a3;
    v4[9] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
    sub_24F91FD78();
  }
}

double *sub_24F30B0A4(double *result, double a2, double a3, double a4, double a5)
{
  result[6] = a2;
  result[7] = a3;
  result[8] = a4;
  result[9] = a5;
  return result;
}

__n128 sub_24F30B0B0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  sub_24F91FD88();

  v4 = *(v3 + 112);
  result = *(v3 + 80);
  v6 = *(v3 + 96);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

double sub_24F30B160(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_24F30B1A0(v3);
}

double sub_24F30B1A0(CGFloat *a1)
{
  if (*(v1 + 112))
  {
    if ((a1[4] & 1) == 0)
    {
LABEL_7:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
      sub_24F91FD78();

      return *&v3;
    }
  }

  else
  {
    if (a1[4])
    {
      goto LABEL_7;
    }

    v7.origin.x = *a1;
    v7.origin.y = a1[1];
    v7.size.width = a1[2];
    v7.size.height = a1[3];
    if (!CGRectEqualToRect(*(v1 + 80), v7))
    {
      goto LABEL_7;
    }
  }

  v3 = *a1;
  v4 = *(a1 + 1);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v4;
  *(v1 + 112) = *(a1 + 32);
  return *&v3;
}

__n128 sub_24F30B2E4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 80) = *a2;
  *(a1 + 96) = v3;
  *(a1 + 112) = *(a2 + 32);
  return result;
}

__n128 sub_24F30B2F8@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  sub_24F91FD88();

  v4 = *(v3 + 136);
  result = *(v3 + 120);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

void sub_24F30B3DC(uint64_t a1, uint64_t a2, char a3)
{
  if ((*(v3 + 136) & 1) == 0)
  {
    if ((a3 & 1) == 0 && *(v3 + 120) == *&a1 && *(v3 + 128) == *&a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
    sub_24F91FD78();

    return;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v3 + 120) = *&a1;
  *(v3 + 128) = *&a2;
  *(v3 + 136) = a3 & 1;
}

uint64_t sub_24F30B52C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit19HeroSafeAreaMetrics___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeroSafeAreaMetrics(uint64_t a1)
{
  result = qword_27F23E978;
  if (!qword_27F23E978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F30B61C(uint64_t a1)
{
  result = sub_24F91FDC8();
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

uint64_t sub_24F30B6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F316524();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_24F30B748()
{
  sub_24F314A98();
  sub_24F924868();
  return v1;
}

uint64_t sub_24F30B784(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D88, &qword_24F9EC890);
  sub_24F926F28();
  return v4;
}

double sub_24F30B7DC@<D0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E990, &unk_24F9E27D0);
  sub_24F926F28();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return result;
}

uint64_t sub_24F30B850()
{
  type metadata accessor for HeroSafeAreaMetrics(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 1;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  sub_24F91FDB8();
  return v0;
}

uint64_t sub_24F30B8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  a7(0);

  return sub_24F9233C8();
}

uint64_t sub_24F30B93C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F5500F8();
  *a1 = result;
  return result;
}

unint64_t sub_24F30B990()
{
  result = qword_27F23E988;
  if (!qword_27F23E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E988);
  }

  return result;
}

uint64_t sub_24F30B9E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v170 = a2;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8, &qword_24F957520);
  MEMORY[0x28223BE20](v216);
  v215 = &v155 - v3;
  v214 = *(a1 - 1);
  MEMORY[0x28223BE20](v4);
  v223 = v5;
  v213 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F924848();
  v7 = *(v6 - 8);
  v211 = v6;
  v212 = v7;
  MEMORY[0x28223BE20](v6);
  v210 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA38, &qword_24F9E2868);
  v236 = v9;
  v224 = a1;
  v10 = a1[3];
  v226 = a1[2];
  v228 = v10;
  v227 = a1[4];
  type metadata accessor for CardHeroView.ContentView(255, v226, v10, v227);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA40, &qword_24F9E2870);
  sub_24F924038();
  v11 = MEMORY[0x277CE1180];
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  v218 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_24F927108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A578, &unk_24F9EE3C0);
  v237 = sub_24F924038();
  v238 = v11;
  v239 = v9;
  swift_getTupleTypeMetadata();
  v196 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_24F927018();
  v208 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v222 = &v155 - v13;
  v14 = sub_24F924038();
  v206 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v205 = &v155 - v15;
  v209 = v12;
  v202 = swift_getWitnessTable();
  v262 = v202;
  v263 = MEMORY[0x277CDF918];
  v16 = swift_getWitnessTable();
  v236 = v14;
  v237 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98, &qword_24F940DC0);
  v18 = sub_24F924038();
  v207 = v14;
  v236 = v14;
  v200 = v16;
  v237 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_24E8F20E4();
  v21 = sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
  v260 = OpaqueTypeConformance2;
  v261 = v21;
  v22 = swift_getWitnessTable();
  v236 = OpaqueTypeMetadata2;
  v237 = &type metadata for IsDebugFocusOverlayEnabled;
  v238 = v18;
  v239 = OpaqueTypeConformance2;
  v240 = v20;
  v241 = v22;
  v23 = MEMORY[0x277CE0E68];
  v24 = swift_getOpaqueTypeMetadata2();
  v189 = OpaqueTypeMetadata2;
  v190 = v24;
  v236 = OpaqueTypeMetadata2;
  v237 = &type metadata for IsDebugFocusOverlayEnabled;
  v238 = v18;
  v194 = OpaqueTypeConformance2;
  v239 = OpaqueTypeConformance2;
  v192 = v20;
  v240 = v20;
  v241 = v22;
  v25 = swift_getOpaqueTypeConformance2();
  v185 = v23;
  v186 = v25;
  v236 = OpaqueTypeMetadata2;
  v237 = &type metadata for IsDebugFocusOverlayEnabled;
  v238 = v24;
  v239 = OpaqueTypeConformance2;
  v240 = v20;
  v241 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v201 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v219 = &v155 - v27;
  v203 = v28;
  v220 = sub_24F924038();
  v199 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v197 = &v155 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA48, &qword_24F9E2878);
  v221 = sub_24F924038();
  v204 = *(v221 - 1);
  MEMORY[0x28223BE20](v221);
  v198 = &v155 - v30;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = sub_24F924038();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = sub_24F314458();
  v217 = v34;
  v35 = sub_24F3144AC();
  v258 = AssociatedConformanceWitness;
  v259 = v35;
  v36 = swift_getWitnessTable();
  v236 = AssociatedTypeWitness;
  v237 = &type metadata for IsDebugComponentNameOverlayEnabledPredicate;
  v238 = v32;
  v239 = AssociatedConformanceWitness;
  v240 = v34;
  v241 = v36;
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924038();
  v193 = sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA60, &qword_24F9E2880);
  v37 = sub_24F924038();
  v38 = type metadata accessor for HeroSafeAreaMetrics(255);
  v39 = sub_24E602068(&qword_27F23EA68, &qword_27F23EA60, &qword_24F9E2880, MEMORY[0x277CE0868]);
  v256 = AssociatedConformanceWitness;
  v257 = v39;
  v40 = swift_getWitnessTable();
  v41 = sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  v236 = v37;
  v237 = v38;
  v238 = v40;
  v239 = v41;
  v172 = MEMORY[0x277CE0C50];
  v42 = swift_getOpaqueTypeMetadata2();
  v43 = sub_24F924038();
  v236 = v37;
  v237 = v38;
  v238 = v40;
  v239 = v41;
  v44 = swift_getOpaqueTypeConformance2();
  v254 = v44;
  v255 = v35;
  v45 = swift_getWitnessTable();
  v236 = v42;
  v237 = &type metadata for IsDebugComponentNameOverlayEnabledPredicate;
  v238 = v43;
  v239 = v44;
  v240 = v217;
  v241 = v45;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA70, &qword_24F9E2888);
  swift_getTupleTypeMetadata3();
  v46 = sub_24F927808();
  v187 = swift_getWitnessTable();
  v188 = v46;
  sub_24F924E08();
  v47 = sub_24F924038();
  v191 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v217 = &v155 - v48;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216590, &unk_24F9E2890);
  v49 = sub_24F924038();
  v193 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v218 = &v155 - v50;
  v51 = type metadata accessor for CardHeroView.HeroLayoutAttributes(255, v226, v228, v227);
  v236 = v189;
  v237 = &type metadata for IsDebugFocusOverlayEnabled;
  v238 = v190;
  v239 = v194;
  v240 = v192;
  v241 = v186;
  v173 = swift_getOpaqueTypeConformance2();
  v252 = v173;
  v253 = MEMORY[0x277CDF918];
  v52 = swift_getWitnessTable();
  v53 = sub_24E602068(&qword_27F23EA78, &qword_27F23EA48, &qword_24F9E2878, MEMORY[0x277CDE2D0]);
  v174 = v52;
  v250 = v52;
  v251 = v53;
  v54 = swift_getWitnessTable();
  v55 = swift_getWitnessTable();
  v175 = v54;
  v248 = v54;
  v249 = v55;
  v192 = v47;
  v56 = swift_getWitnessTable();
  v57 = sub_24E602068(&qword_27F216588, &qword_27F216590, &unk_24F9E2890, MEMORY[0x277CE06A8]);
  v178 = v56;
  v246 = v56;
  v247 = v57;
  v58 = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v236 = v49;
  v237 = v51;
  v238 = v58;
  v239 = v59;
  v60 = swift_getOpaqueTypeMetadata2();
  v185 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v181 = &v155 - v61;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223340, &qword_24F939830);
  v186 = v60;
  v62 = sub_24F924038();
  v180 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v179 = &v155 - v63;
  type metadata accessor for FocusableItemScrollViewOffsetModifier(255);
  v64 = sub_24F924038();
  v168 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v189 = &v155 - v65;
  v190 = v51;
  v194 = v49;
  v236 = v49;
  v237 = v51;
  v184 = v58;
  v238 = v58;
  v182 = v59;
  v239 = v59;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
  v177 = v66;
  v244 = v66;
  v245 = v67;
  v183 = v62;
  v68 = swift_getWitnessTable();
  v69 = sub_24F314F04(&qword_27F2201B0, type metadata accessor for FocusableItemScrollViewOffsetModifier, &unk_24FA1CE10);
  v176 = v68;
  v242 = v68;
  v243 = v69;
  v70 = swift_getWitnessTable();
  v71 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
  v236 = v64;
  v72 = v216;
  v237 = v216;
  v238 = v70;
  v239 = v71;
  v73 = swift_getOpaqueTypeMetadata2();
  v166 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v165 = &v155 - v74;
  v75 = type metadata accessor for CardSafeArea(255);
  v169 = v64;
  v236 = v64;
  v237 = v72;
  v161 = v70;
  v238 = v70;
  v159 = v71;
  v239 = v71;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = sub_24F314F04(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  v167 = v73;
  v236 = v73;
  v164 = v75;
  v237 = v75;
  v160 = v76;
  v238 = v76;
  v158 = v77;
  v239 = v77;
  v78 = swift_getOpaqueTypeMetadata2();
  v162 = *(v78 - 8);
  v163 = v78;
  MEMORY[0x28223BE20](v78);
  v156 = &v155 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v80);
  v157 = &v155 - v81;
  v82 = v224;
  v83 = v225;
  v84 = sub_24F30D464(v224);
  v229 = v226;
  v230 = v228;
  v231 = v227;
  LODWORD(v172) = v84;
  v232 = v84;
  v233 = v83;
  v234 = 0xD000000000000014;
  v171 = 0x800000024FA73A90;
  v235 = 0x800000024FA73A90;
  sub_24F9249A8();
  sub_24F927008();
  v85 = v83 + *(v82 + 22);
  v87 = *v85;
  v86 = *(v85 + 8);
  v89 = *(v85 + 16);
  v88 = *(v85 + 24);
  v90 = *(v85 + 32);
  if (v90 == 1)
  {
    v91 = *v85;
    v92 = v211;
  }

  else
  {

    sub_24F92BDC8();
    v93 = sub_24F9257A8();
    sub_24F921FD8();

    v94 = v210;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v87, v86, v89, v88, 0);
    v92 = v211;
    (*(v212 + 8))(v94, v211);
    v91 = *&v236;
  }

  v95 = sub_24F925868();
  sub_24EA91914(v95, v91);
  v96 = v205;
  v97 = v209;
  v98 = v222;
  sub_24F926A38();
  (*(v208 + 8))(v98, v97);
  v99 = v207;
  View.platformFocusSection()(v207, v200, v219);
  (*(v206 + 8))(v96, v99);
  if (v90)
  {
    v100 = *&v87;
  }

  else
  {

    sub_24F92BDC8();
    v101 = v92;
    v102 = sub_24F9257A8();
    sub_24F921FD8();

    v103 = v210;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v87, v86, v89, v88, 0);
    (*(v212 + 8))(v103, v101);
    v100 = *&v236;
  }

  v104 = sub_24F9257F8();
  sub_24EA91914(v104, v100);
  v105 = v197;
  v106 = v203;
  v107 = v219;
  sub_24F926A38();
  (*(v201 + 8))(v107, v106);
  v236 = 0xD000000000000014;
  v237 = v171;
  v108 = v198;
  v109 = v220;
  sub_24F9263C8();
  (*(v199 + 8))(v105, v109);
  v110 = sub_24F927608();
  MEMORY[0x28223BE20](v110);
  v111 = v226;
  *(&v155 - 6) = v226;
  v112 = v111;
  v113 = v227;
  *(&v155 - 5) = v228;
  *(&v155 - 4) = v113;
  v114 = v225;
  *(&v155 - 3) = v225;
  LOBYTE(v154) = v172;
  v115 = v221;
  sub_24F926088();
  (*(v204 + 8))(v108, v115);
  type metadata accessor for CGSize(0);
  v117 = v116;
  v119 = v213;
  v118 = v214;
  v222 = *(v214 + 16);
  v120 = v224;
  (v222)(v213, v114, v224);
  v121 = (*(v118 + 80) + 40) & ~*(v118 + 80);
  v122 = swift_allocObject();
  v123 = v228;
  v122[2] = v112;
  v122[3] = v123;
  v122[4] = v227;
  v221 = *(v118 + 32);
  (v221)(v122 + v121, v119, v120);
  v154 = sub_24F314F04(&qword_27F224B90, type metadata accessor for CGSize, MEMORY[0x277CBF298]);
  v124 = v117;
  v125 = v192;
  v126 = v117;
  v127 = v217;
  sub_24E8D5070(v124, sub_24E67A5CC, 0, sub_24F314544, v122, v192, v126, v178, v154);

  v128 = v125;
  v129 = v225;
  (*(v191 + 8))(v127, v128);
  v130 = sub_24F3103C0(v120, &v236);
  (v222)(v119, v129, v120, v130);
  v131 = swift_allocObject();
  v132 = v228;
  v131[2] = v226;
  v131[3] = v132;
  v131[4] = v227;
  (v221)(v131 + v121, v119, v120);
  swift_checkMetadataState();
  v133 = v181;
  v134 = v194;
  v135 = v218;
  sub_24F926AB8();

  (*(v193 + 8))(v135, v134);
  sub_24F115AD8();
  v136 = v179;
  v137 = v186;
  sub_24F926268();
  (*(v185 + 8))(v133, v137);
  v138 = v189;
  v139 = v183;
  sub_24F6C3D64(v183, v176, 0.0, 0.0, 0.0, 0.0);
  (*(v180 + 8))(v136, v139);
  v140 = *MEMORY[0x277CDF998];
  v141 = sub_24F923E98();
  v142 = v215;
  (*(*(v141 - 8) + 104))(v215, v140, v141);
  sub_24F314F04(&qword_27F22DF90, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_24F92AFF8();
  if (result)
  {
    v144 = v165;
    v145 = v169;
    sub_24F9263F8();
    sub_24E601704(v142, &qword_27F21CCC8, &qword_24F957520);
    (*(v168 + 8))(v138, v145);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68, &unk_24F964F90);
    sub_24F9233D8();
    v146 = v156;
    v147 = v167;
    v148 = v164;
    v149 = v160;
    v150 = v158;
    sub_24F9261A8();

    (*(v166 + 8))(v144, v147);
    v236 = v147;
    v237 = v148;
    v238 = v149;
    v239 = v150;
    swift_getOpaqueTypeConformance2();
    v151 = v157;
    v152 = v163;
    sub_24E7896B8();
    v153 = *(v162 + 8);
    v153(v146, v152);
    sub_24E7896B8();
    return (v153)(v151, v152);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_24F30D464(uint64_t a1)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 84);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = *v7;
  }

  else
  {

    sub_24F92BDC8();
    v10 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v8, 0);
    (*(v4 + 8))(v6, v3);
    v9 = v12[15];
  }

  return v9 == 0;
}

uint64_t sub_24F30D5C4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v47 = a5;
  v48 = a6;
  v43 = a3;
  v44 = a4;
  v42 = a2;
  v46 = a1;
  v39 = a8;
  type metadata accessor for CardHeroView.ContentView(255, a5, a6, a7);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA40, &qword_24F9E2870);
  sub_24F924038();
  v38 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA38, &qword_24F9E2868));
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_24F927108();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A578, &unk_24F9EE3C0);
  v41 = sub_24F924038();
  v45 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v49 = v47;
  v50 = v48;
  v18 = v42;
  v51 = a7;
  v52 = v42;
  v53 = v46;
  v54 = v43;
  v55 = v44;
  sub_24F924C88();
  sub_24F9270F8();
  v19 = swift_getWitnessTable();
  sub_24F926378();
  (*(v10 + 8))(v12, v9);
  v20 = sub_24E602068(&qword_27F23A570, &qword_27F23A578, &unk_24F9EE3C0, MEMORY[0x277CE04A0]);
  v72 = v19;
  v73 = v20;
  v21 = *&v41;
  v43 = swift_getWitnessTable();
  v44 = v17;
  v22 = v14;
  v23 = v21;
  sub_24E7896B8();
  v24 = *(v45 + 8);
  v24(v22, *&v21);
  WitnessTable = a7;
  v25 = type metadata accessor for CardHeroView(0, v47, v48, a7);
  v26 = sub_24F30D464(v25);
  v27 = 0.0;
  if (!v26)
  {
    v28 = (v18 + *(v25 + 68));
    v29 = v28[1].n128_u8[0];
    v30 = v28[1].n128_u64[1];
    v69 = *v28;
    LOBYTE(v70) = v29;
    v71 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA88, &qword_24FA352E0);
    v31 = sub_24F926F38();
    v32 = MEMORY[0x28223BE20](v31);
    v33 = v48;
    *(&v37 - 4) = v47;
    *(&v37 - 3) = v33;
    *(&v37 - 2) = WitnessTable;
    *(&v37 - 1) = v18;
    if ((v34 & 1) == 0)
    {
      v69 = v32;
      sub_24F314B00(v69.n128_f64, v60);
      v27 = v60[0] * 0.5;
    }
  }

  v66 = 0;
  v67 = 0;
  v68 = (v46 & 1) == 0;
  v69.n128_u64[0] = &v66;
  v35 = v44;
  (*(v45 + 16))(v22, v44, COERCE_DOUBLE(*&v23));
  v64 = 0;
  v65 = 0;
  v69.n128_u64[1] = v22;
  v70 = &v64;
  v61 = v27;
  v62 = 0;
  v63 = v26;
  v71 = &v61;
  v60[0] = v38;
  v60[1] = v23;
  *&v60[2] = MEMORY[0x277CE1180];
  v60[3] = v38;
  v56 = sub_24F314B24();
  v57 = v43;
  v58 = MEMORY[0x277CE1170];
  v59 = v56;
  sub_24F57BA64(&v69, 4uLL, v60);
  v24(v35, *&v23);
  return (v24)(v22, *&v23);
}

uint64_t sub_24F30DB00@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v94 = a4;
  v88 = a3;
  v80 = a2;
  v96 = a1;
  v95 = a8;
  v11 = type metadata accessor for CardHeroView(0, a5, a6, a7);
  v91 = *(v11 - 8);
  v87 = *(v91 + 64);
  MEMORY[0x28223BE20](v11);
  v89 = &v74 - v12;
  v82 = sub_24F923E98();
  WitnessTable = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a6 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a5 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a7;
  v22 = type metadata accessor for CardHeroView.ContentView(0, a5, a6, a7);
  v77 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v74 - v23;
  v25 = sub_24F924038();
  v84 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v97 = &v74 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA40, &qword_24F9E2870);
  v85 = v25;
  v93 = sub_24F924038();
  v86 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v83 = &v74 - v29;
  v31 = MEMORY[0x28223BE20](v30);
  v90 = &v74 - v32;
  v33 = *(v18 + 16);
  v34 = v96;
  v35 = v96 + *(v11 + 60);
  v75 = v21;
  v76 = a5;
  v33(v21, v35, a5, v31);
  v36 = v11;
  v37 = v17;
  v38 = a6;
  (*(v14 + 16))(v17, v34 + *(v11 + 56), a6);
  if (v80)
  {
    v39 = sub_24F924C88();
  }

  else
  {
    v39 = sub_24F924C98();
  }

  v40 = v39;
  v41 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68, &unk_24F964F90);
  sub_24F9233D8();
  v42 = v107[0];
  v43 = v34 + *(v36 + 64);
  v44 = v34;
  v45 = v79;
  (*(WitnessTable + 16))(v79, v43, v82);
  v46 = v37;
  v47 = v42;
  v48 = v76;
  v49 = v38;
  v50 = v78;
  sub_24F30E490(v75, v46, v40, v47, v45, v76, v38, v24, v78);
  sub_24F30E5C4(v41);
  WitnessTable = swift_getWitnessTable();
  sub_24F926A38();
  (*(v77 + 8))(v24, v22);
  type metadata accessor for CGRect(0);
  v82 = v51;
  v52 = swift_allocObject();
  v53 = v41;
  v54 = v50;
  v55 = v94;
  *(v52 + 16) = v88;
  *(v52 + 24) = v55;
  v56 = v91;
  v57 = *(v91 + 16);
  v58 = v89;
  v74 = v53;
  v57(v89, v44, v53);
  v59 = (*(v56 + 80) + 40) & ~*(v56 + 80);
  v60 = swift_allocObject();
  *(v60 + 2) = v48;
  *(v60 + 3) = v49;
  *(v60 + 4) = v54;
  (*(v56 + 32))(&v60[v59], v58, v53);
  v107[5] = WitnessTable;
  v107[6] = MEMORY[0x277CDF918];

  v61 = v85;
  v62 = swift_getWitnessTable();
  v63 = sub_24F314F04(&qword_27F23EAE0, type metadata accessor for CGRect, MEMORY[0x277CBF278]);
  v64 = v83;
  v65 = v97;
  sub_24E8D5070(v82, sub_24F314BD8, v52, sub_24F314E64, v60, v61, v82, v62, v63);

  (*(v84 + 8))(v65, v61);
  v66 = sub_24E602068(qword_27F23EAE8, &qword_27F23EA40, &qword_24F9E2870, MEMORY[0x277CE06A8]);
  v107[3] = v62;
  v107[4] = v66;
  v67 = v93;
  v68 = swift_getWitnessTable();
  v69 = v90;
  sub_24E7896B8();
  v70 = v86;
  v71 = *(v86 + 8);
  v71(v64, v67);
  LOBYTE(v65) = sub_24F30E948(v74);
  v105 = 0;
  v106 = 0;
  v107[0] = &v105;
  v72 = v92;
  (*(v70 + 16))(v92, v69, v67);
  v102 = 0;
  v103 = 0;
  v104 = (v65 & 1) == 0;
  v107[1] = v72;
  v107[2] = &v102;
  v101[0] = MEMORY[0x277CE1180];
  v101[1] = v67;
  v101[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA38, &qword_24F9E2868);
  v98 = MEMORY[0x277CE1170];
  v99 = v68;
  v100 = sub_24F314B24();
  sub_24F57BA64(v107, 3uLL, v101);
  v71(v69, v67);
  return (v71)(v72, v67);
}

uint64_t sub_24F30E490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9@<X7>)
{
  (*(*(a6 - 8) + 32))(a8, a1, a6);
  v17 = type metadata accessor for CardHeroView.ContentView(0, a6, a7, a9);
  (*(*(a7 - 8) + 32))(a8 + v17[11], a2, a7);
  *(a8 + v17[12]) = a3;
  *(a8 + v17[13]) = a4;
  v18 = v17[14];
  v19 = sub_24F923E98();
  v20 = *(*(v19 - 8) + 32);

  return v20(a8 + v18, a5, v19);
}

double sub_24F30E5C4(uint64_t a1)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0.0;
  if (!sub_24F30E948(a1))
  {
    if (sub_24F30D464(a1))
    {
      return *(v1 + 24);
    }

    else
    {
      v8 = v1 + *(a1 + 84);
      v9 = *v8;
      if (*(v8 + 8) != 1)
      {

        sub_24F92BDC8();
        v10 = sub_24F9257A8();
        sub_24F921FD8();

        sub_24F924838();
        swift_getAtKeyPath();
        sub_24E62A5EC(v9, 0);
        (*(v4 + 8))(v6, v3);
      }
    }
  }

  return v7;
}

uint64_t sub_24F30E778@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, double *a3@<X8>)
{
  v6 = sub_24F924EC8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = a1;
  v19[1] = a2;
  sub_24F925248();
  sub_24F9239B8();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = (*(v7 + 8))(v9, v6);
  *a3 = v11;
  *(a3 + 1) = v13;
  *(a3 + 2) = v15;
  *(a3 + 3) = v17;
  return result;
}

uint64_t sub_24F30E8B4(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CardHeroView(0, a3, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA98, &qword_24F9E2980);
  return sub_24F926F48();
}

BOOL sub_24F30E948(uint64_t a1)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 84);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = *v7;
  }

  else
  {

    sub_24F92BDC8();
    v10 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v8, 0);
    (*(v4 + 8))(v6, v3);
    v9 = v12[15];
  }

  return v9 == 2;
}

double sub_24F30EAA8@<D0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X8>)
{
  v30 = a6;
  v12 = sub_24F924848();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a2 + *(type metadata accessor for CardHeroView(0, a3, a4, a5) + 88);
  v18 = *(v17 + 8);
  v19 = *(v17 + 24);
  if (*(v17 + 32) == 1)
  {
    v20 = *(v17 + 8);
    v21 = *(v17 + 24);
  }

  else
  {
    v22 = *v17;
    v29[0] = *(v17 + 16);
    v23 = v29[0];

    sub_24F92BDC8();
    v24 = sub_24F9257A8();
    v29[1] = v6;
    v25 = v24;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v22, v18, v23, v19, 0);
    v26 = *(v13 + 8);
    v26(v15, v12);
    v20 = *&v29[3];

    sub_24F92BDC8();
    v27 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v22, v18, v29[0], v19, 0);
    v26(v15, v12);
    v21 = *&v29[5];
  }

  result = v16 - v20 - v21;
  *v30 = result;
  return result;
}

uint64_t sub_24F30ED14@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v146 = a3;
  v134 = a2;
  v156 = a1;
  v138 = a6;
  v8 = sub_24F924848();
  v108 = *(v8 - 8);
  v109 = v8;
  MEMORY[0x28223BE20](v8);
  v107 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = a4;
  v144 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA60, &qword_24F9E2880);
  v140 = AssociatedTypeWitness;
  v11 = sub_24F924038();
  v133 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v130 = &v107 - v12;
  v13 = type metadata accessor for HeroSafeAreaMetrics(255);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v141 = AssociatedConformanceWitness;
  v15 = sub_24E602068(&qword_27F23EA68, &qword_27F23EA60, &qword_24F9E2880, MEMORY[0x277CE0868]);
  v193 = AssociatedConformanceWitness;
  v194 = v15;
  v16 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v18 = sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  v176 = v11;
  v124 = v11;
  v125 = WitnessTable;
  v126 = v13;
  v177 = v13;
  v178 = WitnessTable;
  v179 = v18;
  v19 = v18;
  v139 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v131 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v128 = v21;
  v129 = &v107 - v22;
  v23 = v21;
  v24 = sub_24F924038();
  v176 = v11;
  v177 = v13;
  v178 = WitnessTable;
  v179 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_24F314458();
  v27 = sub_24F3144AC();
  v191 = OpaqueTypeConformance2;
  v192 = v27;
  v127 = OpaqueTypeConformance2;
  v136 = v16;
  v122 = v24;
  v123 = swift_getWitnessTable();
  v176 = v23;
  v177 = &type metadata for IsDebugComponentNameOverlayEnabledPredicate;
  v178 = v24;
  v179 = OpaqueTypeConformance2;
  v180 = v26;
  v142 = v26;
  v181 = v123;
  v147 = MEMORY[0x277CE0E68];
  v154 = swift_getOpaqueTypeMetadata2();
  v152 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v137 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v121 = &v107 - v30;
  MEMORY[0x28223BE20](v31);
  v153 = &v107 - v32;
  v155 = *(v140 - 8);
  MEMORY[0x28223BE20](v33);
  v120 = &v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v107 - v36;
  v39 = v38;
  v40 = sub_24F924038();
  v41 = v141;
  v189 = v141;
  v190 = v27;
  v42 = swift_getWitnessTable();
  v176 = v39;
  v177 = &type metadata for IsDebugComponentNameOverlayEnabledPredicate;
  v178 = v40;
  v179 = v41;
  v180 = v26;
  v181 = v42;
  v43 = v42;
  v44 = swift_getOpaqueTypeMetadata2();
  v45 = *(v44 - 8);
  v112 = v44;
  v113 = v45;
  MEMORY[0x28223BE20](v44);
  v47 = &v107 - v46;
  v111 = sub_24F924038();
  v135 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = &v107 - v48;
  v132 = sub_24F924038();
  v151 = sub_24F924E38();
  v149 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v148 = &v107 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v150 = &v107 - v51;
  v52 = v146;
  v54 = v143;
  v53 = v144;
  v145 = type metadata accessor for CardHeroView(0, v146, v143, v144);
  v55 = v145[14];
  v56 = v145[16];
  v115 = v145[15];
  v116 = v56;
  v117 = *(v53 + 72);
  v118 = v55;
  v119 = v53 + 72;
  v57 = v37;
  v117(12, v156 + v115, 5, v156 + v56, v54, v53);
  v161 = v52;
  v162 = v54;
  v163 = v53;
  v58 = swift_checkMetadataState();
  v59 = v43;
  v60 = v47;
  v61 = v140;
  v62 = v141;
  v63 = v142;
  sub_24F926B08();
  v64 = v155[1];
  ++v155;
  v114 = v64;
  (v64)(v57, v61);
  v176 = v61;
  v177 = &type metadata for IsDebugComponentNameOverlayEnabledPredicate;
  v178 = v58;
  v179 = v62;
  v180 = v63;
  v181 = v59;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v110;
  v67 = v112;
  sub_24F377F2C(1, v112, v65, v110);
  (*(v113 + 8))(v60, v67);
  v68 = sub_24F3147F4();
  v187 = v65;
  v188 = v68;
  v69 = v111;
  v70 = swift_getWitnessTable();
  v113 = sub_24F925048();
  v179 = v113;
  v180 = MEMORY[0x277CE0420];
  __swift_allocate_boxed_opaque_existential_1(&v176);
  sub_24F925258();
  v71 = v148;
  sub_24EE1E90C(1, &v176, v69, v70, v148);
  __swift_destroy_boxed_opaque_existential_1(&v176);
  (*(v135 + 8))(v66, v69);
  v72 = sub_24E63E080();
  v185 = v70;
  v186 = v72;
  v183 = swift_getWitnessTable();
  v184 = v70;
  v73 = v151;
  v132 = swift_getWitnessTable();
  sub_24E7896B8();
  v135 = *(v149 + 8);
  v136 = v149 + 8;
  (v135)(v71, v73);
  v74 = v156;
  v75 = v120;
  v76 = v143;
  v77 = v144;
  v117(2, v156 + v115, 5, v156 + v116, v143, v144);
  swift_getKeyPath();
  LOBYTE(v176) = v134 ^ 1;
  v78 = v130;
  sub_24F9261B8();

  (v114)(v75, v61);
  v79 = v145[19];
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA90, &qword_24F9E28B0);
  v141 = v79;
  sub_24F9233D8();
  v80 = v129;
  v81 = v124;
  sub_24F9261A8();

  (*(v133 + 8))(v78, v81);
  v155 = &v107;
  v157 = v146;
  v158 = v76;
  v159 = v77;
  v160 = v74;
  v82 = swift_checkMetadataState();
  v83 = v123;
  v84 = v121;
  v85 = v127;
  v86 = v128;
  v87 = v142;
  sub_24F926B08();
  (*(v131 + 8))(v80, v86);
  v176 = v86;
  v177 = &type metadata for IsDebugComponentNameOverlayEnabledPredicate;
  v178 = v82;
  v179 = v85;
  v180 = v87;
  v181 = v83;
  v88 = swift_getOpaqueTypeConformance2();
  v89 = v154;
  v146 = v88;
  sub_24E7896B8();
  v90 = *(v152 + 8);
  v155 = (v152 + 8);
  v147 = v90;
  v90(v84, v89);
  v91 = v156 + v145[21];
  v92 = *v91;
  if (*(v91 + 8) != 1)
  {

    sub_24F92BDC8();
    v93 = sub_24F9257A8();
    sub_24F921FD8();

    v94 = v107;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v92, 0);
    (*(v108 + 8))(v94, v109);
    if (v176 > 1u)
    {
      goto LABEL_3;
    }

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_24F93A400;
    sub_24F926C88();
    v96 = sub_24F926D08();

    *(v95 + 32) = v96;
    *(v95 + 40) = sub_24F926C98();
    sub_24F927878();
    sub_24F927898();
    MEMORY[0x25304CD70](v95);
    sub_24F923BD8();
    sub_24F9233D8();
    v97 = v176;
    swift_getKeyPath();
    v176 = v97;
    sub_24F91FD88();

    sub_24F927618();
    sub_24F9238C8();
    v164[3] = v113;
    v164[4] = MEMORY[0x277CE0420];
    __swift_allocate_boxed_opaque_existential_1(v164);
    sub_24F925258();
    sub_24E615E00(v164, &v174);
    v172[2] = v167;
    v172[3] = v168;
    v172[4] = v169;
    v173 = v170;
    v172[0] = v165;
    v172[1] = v166;
    sub_24E60169C(v172, &v176, &qword_27F23EAC0, &qword_24F9E29B8);
    v182 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EAC0, &qword_24F9E29B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2248A0, &qword_24F9736E0);
    sub_24F314950();
    sub_24E9DEB30();
    sub_24F924E28();
    sub_24E601704(v172, &qword_27F23EAC0, &qword_24F9E29B8);
    __swift_destroy_boxed_opaque_existential_1(v164);
    sub_24E60169C(v171, v172, &qword_27F23EAA8, &qword_24F9E29B0);
    v175 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EAA8, &qword_24F9E29B0);
    sub_24F3148C4();
    sub_24F924E28();
    sub_24E601704(v171, &qword_27F23EAA8, &qword_24F9E29B0);
    goto LABEL_6;
  }

  if (*v91 <= 1u)
  {
    goto LABEL_5;
  }

LABEL_3:
  v175 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EAA8, &qword_24F9E29B0);
  sub_24F3148C4();
  sub_24F924E28();
LABEL_6:
  v98 = v148;
  v100 = v150;
  v99 = v151;
  (*(v149 + 16))(v148, v150, v151);
  v171[0] = v98;
  v101 = v153;
  v102 = v137;
  v103 = v154;
  (*(v152 + 16))(v137, v153, v154);
  v171[1] = v102;
  sub_24E60169C(&v176, v172, &qword_27F23EA70, &qword_24F9E2888);
  v171[2] = v172;
  v164[0] = v99;
  v164[1] = v103;
  v164[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA70, &qword_24F9E2888);
  v171[17] = v132;
  v171[18] = v146;
  v171[19] = sub_24F3149DC();
  sub_24F57BA64(v171, 3uLL, v164);
  sub_24E601704(&v176, &qword_27F23EA70, &qword_24F9E2888);
  v104 = v147;
  v147(v101, v103);
  v105 = v135;
  (v135)(v100, v99);
  sub_24E601704(v172, &qword_27F23EA70, &qword_24F9E2888);
  v104(v102, v103);
  return v105(v98, v99);
}

uint64_t sub_24F30FDDC(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *&v19 = sub_24F4E206C(a5);
  *(&v19 + 1) = v17;
  *&v20 = a6;
  *(&v20 + 1) = a7;
  *&v21 = a1;
  *(&v21 + 1) = a2;
  *&v22 = a3;
  *(&v22 + 1) = a4;
  MEMORY[0x25304C420](&v19, a8, &type metadata for DebugCardElementOverlayModifier, a9);
  v23[0] = v19;
  v23[1] = v20;
  v23[2] = v21;
  v23[3] = v22;
  return sub_24F314A68(v23);
}

uint64_t sub_24F30FE8C@<X0>(_BYTE *a1@<X8>)
{
  sub_24F314A98();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24F30FF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a2;
  v35 = a1;
  v36 = a6;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA60, &qword_24F9E2880);
  v9 = sub_24F924038();
  v31 = type metadata accessor for HeroSafeAreaMetrics(255);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = sub_24E602068(&qword_27F23EA68, &qword_27F23EA60, &qword_24F9E2880, MEMORY[0x277CE0868]);
  v34 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v10 = sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  v39 = v9;
  v40 = v31;
  v41 = WitnessTable;
  v42 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = sub_24F924038();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &WitnessTable - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &WitnessTable - v16;
  type metadata accessor for CardHeroView(0, a3, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68, &unk_24F964F90);
  sub_24F9233D8();
  v18 = v39;
  swift_getKeyPath();
  v39 = v18;
  sub_24F314F04(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  sub_24F91FD88();

  v19 = v18[2];
  v20 = v18[3];
  v21 = v18[4];
  v22 = v18[5];

  v23 = sub_24F9275B8();
  v25 = v24;
  v39 = v9;
  v40 = v31;
  v41 = WitnessTable;
  v42 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24F30FDDC(v19, v20, v21, v22, 2, v23, v25, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v27 = sub_24F3144AC();
  v37 = OpaqueTypeConformance2;
  v38 = v27;
  swift_getWitnessTable();
  sub_24E7896B8();
  v28 = *(v12 + 8);
  v28(v14, v11);
  sub_24E7896B8();
  return (v28)(v17, v11);
}

uint64_t sub_24F31032C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CardHeroView(0, a3, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA88, &qword_24FA352E0);
  return sub_24F926F48();
}

__n128 sub_24F3103C0@<Q0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F924848();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + a1[17]);
  v10 = *(v9 + 16);
  v11 = *(v9 + 3);
  v44 = *v9;
  v45.n128_u8[0] = v10;
  v45.n128_u64[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA88, &qword_24FA352E0);
  sub_24F926F38();
  v38 = *(&v41 + 1);
  v12 = v41;
  v37 = v42;
  v13 = (v2 + a1[18]);
  v14 = *(v13 + 32);
  v15 = *(v13 + 5);
  v16 = v13[1];
  v44 = *v13;
  v45 = v16;
  v46 = v14;
  v47 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA98, &qword_24F9E2980);
  sub_24F926F38();
  v35 = v42;
  v36 = v41;
  v34 = v43;
  v17 = v2 + a1[21];
  v18 = *v17;
  if (*(v17 + 8) != 1)
  {

    sub_24F92BDC8();
    v19 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v18, 0);
    (*(v6 + 8))(v8, v5);
    LOBYTE(v18) = v44;
  }

  v20 = (v2 + a1[22]);
  v22 = *v20;
  v21 = v20[1];
  LODWORD(v20) = *(v20 + 32);
  v39 = v22;
  v40 = v21;
  if (v20 != 1)
  {
    v23 = v22;

    sub_24F92BDC8();
    v24 = sub_24F9257A8();
    v33 = v12;
    v25 = v5;
    v26 = v24;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v23, *(&v39 + 1), v40.n128_i64[0], v40.n128_i64[1], 0);
    v27 = v25;
    v12 = v33;
    (*(v6 + 8))(v8, v27);
    v39 = v44;
    v40 = v45;
  }

  v28 = sub_24F30D464(a1);
  v29 = v37;
  LOBYTE(v44) = v37;
  LOBYTE(v41) = v34 & 1;
  v30 = v34 & 1;
  v31 = v38;
  *a2 = v12;
  *(a2 + 8) = v31;
  *(a2 + 16) = v29;
  *(a2 + 17) = v44;
  *(a2 + 20) = *(&v44 + 3);
  *(a2 + 40) = v35;
  *(a2 + 24) = v36;
  *(a2 + 56) = v30;
  *(a2 + 57) = v18;
  *(a2 + 58) = v41;
  *(a2 + 62) = WORD2(v41);
  result = v40;
  *(a2 + 64) = v39;
  *(a2 + 80) = result;
  *(a2 + 96) = v28;
  return result;
}

void sub_24F310728(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    if (*(a1 + 96))
    {
      v9 = *(a1 + 48);
    }

    else
    {
      v9 = 0.0;
    }

    if (*(a1 + 96))
    {
      v10 = 0.0;
    }

    else
    {
      v10 = *(a1 + 40);
    }

    v11 = *(a1 + 64) + 0.0;
    v12 = v10 + *(a1 + 72);
    v13 = v9 + *(a1 + 80);
    v14 = *(a1 + 88) + 0.0;
    v34[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA90, &qword_24F9E28B0);
    sub_24F9233D8();
    v15 = v39;
    if (sub_24F923308())
    {
      *(v39 + 16) = v11;
      v15[3] = v12;
      v15[4] = v13;
      v15[5] = v14;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v34[0] = v34;
      MEMORY[0x28223BE20](KeyPath);
      v33[2] = v15;
      *&v33[3] = v11;
      *&v33[4] = v12;
      *&v33[5] = v13;
      *&v33[6] = v14;
      *&v39 = v15;
      sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
      sub_24F91FD78();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68, &unk_24F964F90);
    sub_24F9233D8();
    v17 = v39;
    if (sub_24F923308())
    {
      v17[2] = v11;
      v17[3] = v12;
      v17[4] = v13;
      v17[5] = v14;
    }

    else
    {
      v18 = swift_getKeyPath();
      MEMORY[0x28223BE20](v18);
      v33[-6] = v17;
      *&v33[-5] = v11;
      *&v33[-4] = v12;
      *&v33[-3] = v13;
      *&v33[-2] = v14;
      *&v39 = v17;
      sub_24F314F04(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
      sub_24F91FD78();
    }

    sub_24F9233D8();
    v19 = v39;
    *&v39 = v5;
    *(&v39 + 1) = v6;
    *&v40 = v7;
    *(&v40 + 1) = v8;
    v41 = 0;
    if ((*(v19 + 112) & 1) != 0 || (v42.origin.x = v5, v42.origin.y = v6, v42.size.width = v7, v42.size.height = v8, !CGRectEqualToRect(*(v19 + 80), v42)))
    {
      v21 = swift_getKeyPath();
      MEMORY[0x28223BE20](v21);
      v33[-2] = v19;
      v33[-1] = &v39;
      *&v36 = v19;
      sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
      sub_24F91FD78();
    }

    else
    {
      v20 = v40;
      *(v19 + 80) = v39;
      *(v19 + 96) = v20;
      *(v19 + 112) = v41;
    }
  }

  v22 = (v2 + *(a2 + 68));
  v23 = *(v22 + 16);
  v24 = *(v22 + 3);
  v36 = *v22;
  v37 = v23;
  v38 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA88, &qword_24FA352E0);
  sub_24F926F38();
  if ((v35 & 1) == 0)
  {
    v25 = v34[3];
    v26 = v34[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA90, &qword_24F9E28B0);
    sub_24F9233D8();
    sub_24F30B3DC(v25, v26, 0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA90, &qword_24F9E28B0);
  sub_24F9233D8();
  v27 = v36;
  v29 = *(a1 + 64);
  v28 = *(a1 + 72);
  v31 = *(a1 + 80);
  v30 = *(a1 + 88);
  if (sub_24F923308())
  {
    v27[6] = v29;
    v27[7] = v28;
    v27[8] = v31;
    v27[9] = v30;
  }

  else
  {
    v32 = swift_getKeyPath();
    MEMORY[0x28223BE20](v32);
    v33[-6] = v27;
    v33[-5] = v29;
    v33[-4] = v28;
    v33[-3] = v31;
    v33[-2] = v30;
    *&v36 = v27;
    sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
    sub_24F91FD78();
  }
}

uint64_t sub_24F310D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v81 = sub_24F929888();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1;
  v4 = *(a1 + 24);
  v64 = *(a1 + 32);
  v63 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v74 = &v50 - v6;
  v7 = sub_24F924038();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_24F314458();
  v10 = sub_24F3144AC();
  v100 = AssociatedConformanceWitness;
  v101 = v10;
  v78 = MEMORY[0x277CDFAD8];
  v65 = v7;
  WitnessTable = swift_getWitnessTable();
  *&v96 = AssociatedTypeWitness;
  *(&v96 + 1) = &type metadata for IsDebugComponentNameOverlayEnabledPredicate;
  v67 = AssociatedTypeWitness;
  *&v97 = v7;
  *(&v97 + 1) = AssociatedConformanceWitness;
  v69 = AssociatedConformanceWitness;
  v98 = v9;
  v99 = WitnessTable;
  v70 = v9;
  v12 = WitnessTable;
  v66 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v68 = &v50 - v14;
  *&v96 = AssociatedTypeWitness;
  *(&v96 + 1) = &type metadata for IsDebugComponentNameOverlayEnabledPredicate;
  *&v97 = v7;
  *(&v97 + 1) = AssociatedConformanceWitness;
  v98 = v9;
  v99 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v96 = OpaqueTypeMetadata2;
  *(&v96 + 1) = OpaqueTypeConformance2;
  v53 = OpaqueTypeMetadata2;
  v16 = OpaqueTypeConformance2;
  v54 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeMetadata2();
  v75 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v72 = &v50 - v18;
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146E8, &qword_24F93D5B0);
  sub_24F924038();
  v56 = v17;
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v19 = sub_24F927108();
  v51 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v50 - v20;
  v55 = sub_24F924038();
  v62 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v83 = &v50 - v22;
  *&v96 = OpaqueTypeMetadata2;
  *(&v96 + 1) = v16;
  v57 = swift_getOpaqueTypeConformance2();
  v59 = sub_24F924E08();
  v60 = sub_24F924038();
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v52 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v58 = &v50 - v25;
  v26 = v71;
  v27 = v73;
  v29 = v63;
  v87 = *(v71 + 16);
  v28 = v87;
  v88 = v63;
  v30 = v64;
  v89 = v64;
  v90 = v73;
  sub_24F9270F8();
  sub_24F927618();
  v49 = swift_getWitnessTable();
  sub_24F926948();
  (*(v51 + 8))(v21, v19);
  v31 = v74;
  (*(v30 + 72))(11, v27, 5, v27 + *(v26 + 56), v29, v30);
  v84 = v28;
  v85 = v29;
  v86 = v30;
  swift_checkMetadataState();
  v32 = v68;
  v33 = v67;
  sub_24F926B08();
  (*(v77 + 8))(v31, v33);
  v96 = 0u;
  v97 = 0u;
  memset(v95, 0, sizeof(v95));
  v34 = v79;
  sub_24F929828();
  sub_24E601704(v95, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v96, &qword_27F2129B0, &unk_24F945320);
  v35 = v72;
  v36 = v53;
  sub_24F925EE8();
  (*(v80 + 8))(v34, v81);
  (*(v76 + 8))(v32, v36);
  sub_24F927618();
  v93 = v49;
  v94 = MEMORY[0x277CDFC60];
  v37 = v55;
  v38 = swift_getWitnessTable();
  v39 = v52;
  v40 = v35;
  v41 = v37;
  v42 = v56;
  v43 = v83;
  sub_24F9260A8();
  (*(v75 + 8))(v40, v42);
  (*(v62 + 8))(v43, v41);
  v44 = swift_getWitnessTable();
  v91 = v38;
  v92 = v44;
  v45 = v60;
  swift_getWitnessTable();
  v46 = v58;
  sub_24E7896B8();
  v47 = *(v61 + 8);
  v47(v39, v45);
  sub_24E7896B8();
  return (v47)(v46, v45);
}

uint64_t sub_24F311820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v96 = a2;
  v95 = a1;
  v93 = a5;
  v92 = sub_24F929888();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v86 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v85 = &v64 - v9;
  v10 = sub_24F924038();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = sub_24F314458();
  v13 = sub_24F3144AC();
  v115 = AssociatedConformanceWitness;
  v116 = v13;
  WitnessTable = swift_getWitnessTable();
  *&v111 = AssociatedTypeWitness;
  *(&v111 + 1) = &type metadata for IsDebugComponentNameOverlayEnabledPredicate;
  *&v112 = v10;
  *(&v112 + 1) = AssociatedConformanceWitness;
  v113 = v12;
  v114 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v81 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v77 = &v64 - v16;
  v88 = AssociatedTypeWitness;
  *&v111 = AssociatedTypeWitness;
  *(&v111 + 1) = &type metadata for IsDebugComponentNameOverlayEnabledPredicate;
  v75 = v10;
  *&v112 = v10;
  *(&v112 + 1) = AssociatedConformanceWitness;
  v79 = AssociatedConformanceWitness;
  v76 = v12;
  v113 = v12;
  v114 = WitnessTable;
  v71 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v83 = OpaqueTypeMetadata2;
  *&v111 = OpaqueTypeMetadata2;
  *(&v111 + 1) = OpaqueTypeConformance2;
  v73 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  v74 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v72 = &v64 - v19;
  v87 = sub_24F924038();
  v80 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v84 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v82 = &v64 - v22;
  v78 = v18;
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  v65 = swift_getWitnessTable();
  v23 = sub_24F927108();
  v66 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v64 - v24;
  v26 = sub_24F924038();
  v67 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v64 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146E8, &qword_24F93D5B0);
  v70 = sub_24F924038();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v64 - v31;
  MEMORY[0x28223BE20](v33);
  v94 = &v64 - v34;
  v35 = v96;
  v36 = v97;
  v64 = type metadata accessor for CardHeroView.ContentView(0, v96, a3, v97);
  v98 = v35;
  v89 = a3;
  v99 = a3;
  v100 = v36;
  v101 = v95;
  sub_24F9270F8();
  sub_24F924C88();
  if (sub_24F924C78())
  {
    sub_24F927618();
  }

  else
  {
    sub_24F927628();
  }

  v63 = swift_getWitnessTable();
  sub_24F926948();
  (*(v66 + 8))(v25, v23);
  sub_24F924C88();
  sub_24F924C78();
  v109 = v63;
  v110 = MEMORY[0x277CDFC60];
  v37 = swift_getWitnessTable();
  sub_24F926728();
  v67[1](v28, v26);
  v38 = sub_24E602068(&qword_27F2146E0, &qword_27F2146E8, &qword_24F93D5B0, MEMORY[0x277CE0868]);
  v107 = v37;
  v108 = v38;
  v39 = v70;
  v65 = swift_getWitnessTable();
  sub_24E7896B8();
  v40 = v68;
  v41 = *(v68 + 8);
  v66 = v68 + 8;
  v67 = v41;
  (v41)(v32, v39);
  v42 = v85;
  v43 = (*(v97 + 72))(13);
  MEMORY[0x28223BE20](v43);
  swift_checkMetadataState();
  v44 = v77;
  v45 = v88;
  sub_24F926B08();
  (*(v86 + 8))(v42, v45);
  v111 = 0u;
  v112 = 0u;
  memset(v106, 0, sizeof(v106));
  v46 = v90;
  sub_24F929828();
  sub_24E601704(v106, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v111, &qword_27F2129B0, &unk_24F945320);
  v47 = v72;
  v48 = v83;
  v49 = v73;
  sub_24F925EE8();
  (*(v91 + 8))(v46, v92);
  (*(v81 + 8))(v44, v48);
  sub_24F925818();
  *&v111 = v48;
  *(&v111 + 1) = v49;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v84;
  v52 = v78;
  sub_24F926A48();
  (*(v74 + 8))(v47, v52);
  v104 = v50;
  v105 = MEMORY[0x277CDF918];
  v53 = v87;
  v54 = swift_getWitnessTable();
  v55 = v82;
  sub_24E7896B8();
  v56 = v80;
  v57 = *(v80 + 8);
  v57(v51, v53);
  v58 = *(v40 + 16);
  v59 = v69;
  v60 = v94;
  v58(v69, v94, v39);
  *&v111 = v59;
  (*(v56 + 16))(v51, v55, v53);
  *(&v111 + 1) = v51;
  *&v106[0] = v39;
  *(&v106[0] + 1) = v53;
  v102 = v65;
  v103 = v54;
  sub_24F57BA64(&v111, 2uLL, v106);
  v57(v55, v53);
  v61 = v67;
  (v67)(v60, v39);
  v57(v51, v53);
  return (v61)(v59, v39);
}

uint64_t sub_24F312514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v116 = a2;
  v105 = a1;
  v85 = a5;
  v117 = sub_24F9297D8();
  v122 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v107 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_24F929888();
  v123 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v106 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v121 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v82 = &v80 - v10;
  v11 = sub_24F924038();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = sub_24F314458();
  v14 = sub_24F3144AC();
  v142 = AssociatedConformanceWitness;
  v143 = v14;
  WitnessTable = swift_getWitnessTable();
  *&v138 = AssociatedTypeWitness;
  *(&v138 + 1) = &type metadata for IsDebugComponentNameOverlayEnabledPredicate;
  *&v139 = v11;
  *(&v139 + 1) = AssociatedConformanceWitness;
  v114 = AssociatedConformanceWitness;
  v115 = v13;
  v140 = v13;
  v141 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v120 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v81 = &v80 - v17;
  *&v138 = AssociatedTypeWitness;
  *(&v138 + 1) = &type metadata for IsDebugComponentNameOverlayEnabledPredicate;
  *&v139 = v11;
  *(&v139 + 1) = AssociatedConformanceWitness;
  v140 = v13;
  v141 = WitnessTable;
  v99 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v138 = OpaqueTypeMetadata2;
  *(&v138 + 1) = OpaqueTypeConformance2;
  v111 = MEMORY[0x277D7EDF8];
  v112 = OpaqueTypeConformance2;
  v90 = swift_getOpaqueTypeMetadata2();
  v109 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v108 = &v80 - v21;
  MEMORY[0x28223BE20](v22);
  v83 = &v80 - v23;
  MEMORY[0x28223BE20](v24);
  v100 = &v80 - v25;
  MEMORY[0x28223BE20](v26);
  v113 = &v80 - v27;
  MEMORY[0x28223BE20](v28);
  v119 = &v80 - v29;
  v30 = v116;
  v31 = v110;
  v32 = type metadata accessor for CardHeroView.ContentView(0, v116, a3, v110);
  v33 = *(v32 + 44);
  v101 = *(v32 + 56);
  v102 = v33;
  v34 = v31;
  v103 = *(v31 + 72);
  v104 = v31 + 72;
  v35 = v82;
  v89 = a3;
  v36 = v34;
  v103(4);
  v130 = v30;
  v131 = a3;
  v132 = v36;
  v98 = swift_checkMetadataState();
  v37 = v81;
  v38 = AssociatedTypeWitness;
  v88 = AssociatedTypeWitness;
  sub_24F926B08();
  v39 = *(v121 + 8);
  v121 += 8;
  v97 = v39;
  v40 = v35;
  v39(v35, v38);
  v41 = *MEMORY[0x277D22068];
  v42 = v122;
  v43 = *(v122 + 104);
  v95 = v122 + 104;
  v96 = v43;
  v44 = v107;
  v45 = v117;
  v43(v107, v41, v117);
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v46 = v106;
  sub_24F929818();
  sub_24E601704(&v136, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v138, &qword_27F2129B0, &unk_24F945320);
  v93 = *(v42 + 8);
  v122 = v42 + 8;
  v93(v44, v45);
  v47 = v112;
  v48 = v113;
  sub_24F925EE8();
  v49 = *(v123 + 8);
  v123 += 8;
  v94 = v49;
  v49(v46, v118);
  v50 = *(v120 + 8);
  v120 += 8;
  v92 = v50;
  v86 = OpaqueTypeMetadata2;
  v50(v37, OpaqueTypeMetadata2);
  *&v138 = OpaqueTypeMetadata2;
  *(&v138 + 1) = v47;
  v91 = swift_getOpaqueTypeConformance2();
  v51 = v90;
  sub_24E7896B8();
  v111 = *(v109 + 8);
  v87 = v109 + 8;
  v111(v48, v51);
  v52 = v105;
  v53 = v89;
  v54 = v110;
  (v103)(7, v105, 5, v105 + v101, v89, v110);
  v127 = v116;
  v128 = v53;
  v129 = v54;
  v55 = v88;
  v56 = v40;
  sub_24F926B08();
  v97(v40, v55);
  v57 = v107;
  v58 = v117;
  v96(v107, *MEMORY[0x277D22050], v117);
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v59 = v106;
  sub_24F929818();
  sub_24E601704(&v136, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v138, &qword_27F2129B0, &unk_24F945320);
  v93(v57, v58);
  v60 = v100;
  v61 = v59;
  v62 = v86;
  sub_24F925EE8();
  v94(v61, v118);
  v92(v37, v62);
  v63 = v90;
  sub_24E7896B8();
  v111(v60, v63);
  v64 = v52 + v101;
  v65 = v52;
  v66 = v89;
  v67 = v110;
  (v103)(8, v65, 5, v64, v89, v110);
  v124 = v116;
  v125 = v66;
  v126 = v67;
  v68 = v88;
  sub_24F926B08();
  v97(v56, v68);
  v69 = v117;
  v96(v57, *MEMORY[0x277D22070], v117);
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  sub_24F929818();
  sub_24E601704(&v136, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v138, &qword_27F2129B0, &unk_24F945320);
  v93(v57, v69);
  v70 = v83;
  v71 = v86;
  sub_24F925EE8();
  v94(v61, v118);
  v92(v37, v71);
  v72 = v100;
  v73 = v91;
  sub_24E7896B8();
  v111(v70, v63);
  v74 = *(v109 + 16);
  v74(v70, v119, v63);
  *&v138 = v70;
  v75 = v108;
  v76 = v113;
  v74(v108, v113, v63);
  *(&v138 + 1) = v75;
  v77 = v84;
  v74(v84, v72, v63);
  *&v139 = v77;
  *&v136 = v63;
  *(&v136 + 1) = v63;
  *&v137 = v63;
  v133 = v73;
  v134 = v73;
  v135 = v73;
  sub_24F57BA64(&v138, 3uLL, &v136);
  v78 = v111;
  v111(v72, v63);
  v78(v76, v63);
  v78(v119, v63);
  v78(v77, v63);
  v78(v108, v63);
  return (v78)(v70, v63);
}

uint64_t sub_24F3130C0@<X0>(uint64_t a1@<X0>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v21[0] = a1;
  v21[1] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_24F924038();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  v14 = sub_24F9275B8();
  v16 = v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24F30FDDC(0.0, 0.0, 0.0, 0.0, a4, v14, v16, AssociatedTypeWitness, AssociatedConformanceWitness);
  v18 = sub_24F3144AC();
  v21[2] = AssociatedConformanceWitness;
  v21[3] = v18;
  swift_getWitnessTable();
  sub_24E7896B8();
  v19 = *(v8 + 8);
  v19(v10, v7);
  sub_24E7896B8();
  return (v19)(v13, v7);
}

uint64_t sub_24F3132B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      goto LABEL_18;
    }

    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
    {
      goto LABEL_18;
    }
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      v3 = a2;
      v4 = a1;
      v5 = CGRectEqualToRect(*(a1 + 24), *(a2 + 24));
      a2 = v3;
      v6 = v5;
      a1 = v4;
      if (!v6)
      {
        return v6 & 1;
      }

      goto LABEL_15;
    }

LABEL_18:
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  if ((*(a2 + 56) & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (*(a1 + 57) != *(a2 + 57))
  {
    goto LABEL_18;
  }

  v7 = a1;
  v8 = a2;
  if ((sub_24F923308() & 1) == 0)
  {
    goto LABEL_18;
  }

  LOBYTE(v6) = *(v7 + 96) ^ *(v8 + 96) ^ 1;
  return v6 & 1;
}

uint64_t sub_24F313394(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_24F3132B8(v11, v13) & 1;
}

uint64_t sub_24F313410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a1;
  v20 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EBF8, &unk_24F9E2C28);
  v3 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v17 - v4;
  v17 = *v2;
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = sub_24F926CF8();
  v24 = v17;
  v25 = v6;
  v26 = v7;
  v9 = v2[3];
  v27 = v2[2];
  v28 = v9;
  v29 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215AB0, &unk_24F9A8BF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215AB8, &qword_24F940DE0);
  v12 = sub_24E602068(&qword_27F215AC0, &qword_27F215AB0, &unk_24F9A8BF0, MEMORY[0x277CE04B0]);
  v13 = sub_24E6695B8();
  v14 = sub_24E66BFB8();
  sub_24F926B08();

  v21 = sub_24F926C28();
  v22 = 0x3FE0000000000000;
  v23 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215AD8, &qword_24F940DF0);
  v30 = v10;
  v31 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  v32 = v11;
  v33 = v12;
  v34 = v13;
  v35 = v14;
  swift_getOpaqueTypeConformance2();
  sub_24E669340();
  sub_24F3163E8();
  v15 = v19;
  sub_24F926B08();

  return (*(v3 + 8))(v5, v15);
}

uint64_t sub_24F3136F8()
{

  return swift_deallocObject();
}

void sub_24F313730(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_24F923E98();
      if (v3 <= 0x3F)
      {
        sub_24EB8E864(319, &qword_27F23EA20, &qword_27F214D88, &qword_24F9EC890);
        if (v4 <= 0x3F)
        {
          sub_24EB8E864(319, &qword_27F23EA28, &qword_27F23E990, &unk_24F9E27D0);
          if (v5 <= 0x3F)
          {
            sub_24F3143D4(319, &qword_27F23EA30, type metadata accessor for HeroSafeAreaMetrics);
            if (v6 <= 0x3F)
            {
              sub_24F3143D4(319, &qword_27F220C60, type metadata accessor for CardSafeArea);
              if (v7 <= 0x3F)
              {
                sub_24E746BEC(319, &qword_27F21B190, &type metadata for HeroLayoutMode);
                if (v8 <= 0x3F)
                {
                  sub_24E746BEC(319, &qword_27F254DF0, MEMORY[0x277CDF310]);
                  if (v9 <= 0x3F)
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

uint64_t sub_24F313908(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v45 = *(a3 + 24);
  v4 = *(v45 - 8);
  v43 = *(a3 + 16);
  v5 = *(v43 - 8);
  v46 = *(v4 + 84);
  v44 = *(v5 + 84);
  if (v44 <= v46)
  {
    v6 = *(v4 + 84);
  }

  else
  {
    v6 = *(v5 + 84);
  }

  v41 = sub_24F923E98();
  v7 = *(v41 - 8);
  v42 = *(v7 + 84);
  if (v42 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(v7 + 84);
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23E998, &unk_24F9E27E0);
  v9 = *(v39 - 8);
  v40 = *(v9 + 84);
  if (v40 > v8)
  {
    v8 = *(v9 + 84);
  }

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220BD8, &unk_24F964F00) - 8);
  v11 = *(v4 + 80);
  v12 = *(v4 + 64);
  v13 = *(v5 + 80);
  v14 = *(v7 + 80);
  if (*(v10 + 84) <= v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v5 + 64) + v14;
  v17 = *(v7 + 64) + 7;
  v18 = *(v9 + 80) & 0xF8;
  v19 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 55;
  v21 = *(v10 + 80) & 0xF8 | 7;
  v22 = ((*(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v21 + 8;
  if (a2 > v15)
  {
    v23 = ((*(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v22 + ((v20 + ((((v17 + ((v16 + ((v12 + v13 + ((v11 + 56) & ~v11)) & ~v13)) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & v19)) & ~v21) + 57;
    v24 = 8 * v23;
    if (v23 <= 3)
    {
      v25 = ((a2 - v15 + ~(-1 << v24)) >> v24) + 1;
      if (HIWORD(v25))
      {
        v26 = *&a1[v23];
        if (!v26)
        {
          goto LABEL_32;
        }

        goto LABEL_24;
      }

      if (v25 > 0xFF)
      {
        v26 = *&a1[v23];
        if (!*&a1[v23])
        {
          goto LABEL_32;
        }

        goto LABEL_24;
      }

      if (v25 < 2)
      {
        goto LABEL_32;
      }
    }

    v26 = a1[v23];
    if (!a1[v23])
    {
      goto LABEL_32;
    }

LABEL_24:
    v28 = (v26 - 1) << v24;
    if (v23 >= 4)
    {
      v28 = 0;
    }

    if (v23 == 1)
    {
      v29 = *a1;
    }

    else
    {
      v29 = *a1;
    }

    v30 = v15 + (v29 | v28);
    return (v30 + 1);
  }

LABEL_32:
  v31 = (((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 32) & ~v11;
  if (v46 == v15)
  {
    v32 = *(v4 + 48);
    v33 = v46;
    v34 = v45;
LABEL_38:

    return v32(v31, v33, v34);
  }

  v31 = (v31 + v12 + v13) & ~v13;
  if (v44 == v15)
  {
    v32 = *(v5 + 48);
    v33 = v44;
    v34 = v43;
    goto LABEL_38;
  }

  v31 = (v16 + v31) & ~v14;
  if (v42 == v15)
  {
    v32 = *(v7 + 48);
    v33 = v42;
    v34 = v41;
    goto LABEL_38;
  }

  v35 = (v17 + v31) & 0xFFFFFFFFFFFFFFF8;
  if (v15 <= 0x7FFFFFFE)
  {
    v36 = *(v35 + 24);
    if (v36 >= 0xFFFFFFFF)
    {
      LODWORD(v36) = -1;
    }

    v30 = v36 - 1;
    if (v30 < 0)
    {
      v30 = -1;
    }

    return (v30 + 1);
  }

  v31 = (v20 + ((v35 + 39) & 0xFFFFFFFFFFFFFFF8)) & v19;
  if (v40 == v15)
  {
    v32 = *(v9 + 48);
    v33 = v40;
    v34 = v39;
    goto LABEL_38;
  }

  v37 = *(v10 + 48);
  v38 = (v22 + v31) & ~v21;

  return v37(v38);
}

void sub_24F313DF4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v51 = *(a4 + 24);
  v4 = *(v51 - 8);
  v49 = *(a4 + 16);
  v5 = *(v49 - 8);
  v57 = v5;
  v52 = *(v4 + 84);
  v50 = *(v5 + 84);
  if (v50 <= v52)
  {
    v6 = *(v4 + 84);
  }

  else
  {
    v6 = *(v5 + 84);
  }

  v47 = sub_24F923E98();
  v7 = *(v47 - 8);
  v48 = *(v7 + 84);
  if (v48 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(v7 + 84);
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23E998, &unk_24F9E27E0);
  v9 = *(v44 - 8);
  v56 = v9;
  v10 = *(v9 + 84);
  v46 = v10;
  if (v10 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  v45 = v10;
  if (v8 <= v10)
  {
    v8 = v10;
  }

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220BD8, &unk_24F964F00) - 8);
  v12 = v11;
  if (*(v11 + 84) <= 0x7FFFFFFEu)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v8 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v8;
  }

  v15 = *(v4 + 80);
  v16 = *(v4 + 64);
  v17 = *(v5 + 80);
  v18 = *(v7 + 80);
  v19 = *(v5 + 64) + v18;
  v20 = *(v7 + 64) + 7;
  v21 = *(v9 + 80) & 0xF8;
  v22 = ~v21 & 0xFFFFFFFFFFFFFFF8;
  v23 = v21 + 55;
  v24 = ((*(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v25 = *(v11 + 80) & 0xF8 | 7;
  v26 = (*(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = v26 + ((v24 + v25 + ((v23 + ((((v20 + ((v19 + ((v16 + v17 + ((v15 + 56) & ~v15)) & ~v17)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & v22)) & ~v25) + 57;
  if (a3 <= v14)
  {
    v29 = 0;
    v30 = a2;
    v28 = a1;
    if (v14 < a2)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v28 = a1;
    if (v27 <= 3)
    {
      v31 = ((a3 - v14 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
      if (HIWORD(v31))
      {
        v29 = 4;
      }

      else
      {
        if (v31 < 0x100)
        {
          v29 = 1;
        }

        else
        {
          v29 = 2;
        }

        if (v31 < 2)
        {
          v29 = 0;
        }
      }
    }

    else
    {
      v29 = 1;
    }

    v30 = a2;
    if (v14 < a2)
    {
LABEL_41:
      v37 = ~v14 + v30;
      if (v27 < 4)
      {
        v38 = (v37 >> (8 * v27)) + 1;
        bzero(v28, v27);
        if (v27 == 1)
        {
          *v28 = v37;
          if (v29 <= 1)
          {
            goto LABEL_51;
          }

LABEL_45:
          if (v29 == 2)
          {
            *&v28[v27] = v38;
          }

          else
          {
            *&v28[v27] = v38;
          }

          return;
        }

        v37 &= ~(-1 << (8 * v27));
      }

      else
      {
        bzero(v28, v27);
        v38 = 1;
      }

      *v28 = v37;
      if (v29 <= 1)
      {
LABEL_51:
        if (v29)
        {
          v28[v27] = v38;
        }

        return;
      }

      goto LABEL_45;
    }
  }

  if (v29 > 1)
  {
    if (v29 != 2)
    {
      *&v28[v27] = 0;
      if (!v30)
      {
        return;
      }

      goto LABEL_35;
    }

    *&v28[v27] = 0;
  }

  else if (v29)
  {
    v28[v27] = 0;
    if (!v30)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!v30)
  {
    return;
  }

LABEL_35:
  v32 = ((((((((v28 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v15 + 32) & ~v15);
  if (v52 == v14)
  {
    v33 = *(v4 + 56);
    v34 = v30;
    v35 = v52;
    v36 = v51;
LABEL_57:

    v33(v32, v34, v35, v36);
    return;
  }

  v32 = ((v32 + v16 + v17) & ~v17);
  if (v50 == v14)
  {
    v33 = *(v57 + 56);
    v34 = v30;
    v35 = v50;
    v36 = v49;
    goto LABEL_57;
  }

  v32 = ((v32 + v19) & ~v18);
  if (v48 == v14)
  {
    v33 = *(v7 + 56);
    v34 = v30;
    v35 = v48;
    v36 = v47;
    goto LABEL_57;
  }

  v39 = (v32 + v20) & 0xFFFFFFFFFFFFFFF8;
  if (v14 <= 0x7FFFFFFE)
  {
    *(v39 + 24) = v30;
    return;
  }

  v32 = ((v23 + ((v39 + 39) & 0xFFFFFFFFFFFFFFF8)) & v22);
  if (v46 == v14)
  {
    if (v45 >= v30)
    {
      v33 = *(v56 + 56);
      v34 = v30;
      v35 = v46;
      v36 = v44;
      goto LABEL_57;
    }

    if (!v24)
    {
      return;
    }

    v40 = ~v45;
LABEL_69:
    v41 = v40 + v30;
    v42 = v32;
    bzero(v32, v24);
    *v42 = v41;
    return;
  }

  v32 = ((v32 + v24 + v25) & ~v25);
  if (v13 < v30)
  {
    v24 = (v26 + 8);
    if (v26 == -8)
    {
      return;
    }

    v40 = ~v13;
    goto LABEL_69;
  }

  v43 = *(v12 + 56);

  v43(v32, v30);
}

void sub_24F3143D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F9233E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24F314458()
{
  result = qword_27F23EA50;
  if (!qword_27F23EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EA50);
  }

  return result;
}

unint64_t sub_24F3144AC()
{
  result = qword_27F23EA58;
  if (!qword_27F23EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EA58);
  }

  return result;
}

uint64_t sub_24F314544(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for CardHeroView(0, v3, v4, v5) - 8);
  v7 = v1 + ((*(v6 + 80) + 40) & ~*(v6 + 80));

  return sub_24F31032C(a1, v7, v3, v4, v5);
}

__n128 sub_24F3145E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardHeroView(0, v2[2], v2[3], v2[4]);
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v10 = *(a2 + 96);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  sub_24F310728(v9, v4);
  return result;
}

__n128 sub_24F314698()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 48) = result;
  *(v1 + 64) = v3;
  return result;
}

double sub_24F314728(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_24F30B1A0(v3);
}

__n128 sub_24F314768()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *v2;
  v4 = *(v2 + 16);
  *(v1 + 112) = *(v2 + 32);
  *(v1 + 80) = result;
  *(v1 + 96) = v4;
  return result;
}

__n128 sub_24F3147B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  result = *(v0 + 24);
  *(v1 + 120) = result;
  *(v1 + 136) = v2;
  return result;
}

unint64_t sub_24F3147F4()
{
  result = qword_27F23EAA0;
  if (!qword_27F23EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EAA0);
  }

  return result;
}

uint64_t sub_24F314848@<X0>(_BYTE *a1@<X8>)
{
  sub_24F314A98();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

unint64_t sub_24F3148C4()
{
  result = qword_27F23EAB0;
  if (!qword_27F23EAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EAA8, &qword_24F9E29B0);
    sub_24F314950();
    sub_24E9DEB30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EAB0);
  }

  return result;
}

unint64_t sub_24F314950()
{
  result = qword_27F23EAB8;
  if (!qword_27F23EAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EAC0, &qword_24F9E29B8);
    sub_24E9DEB30();
    sub_24E63E080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EAB8);
  }

  return result;
}

unint64_t sub_24F3149DC()
{
  result = qword_27F23EAC8;
  if (!qword_27F23EAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA70, &qword_24F9E2888);
    sub_24F3148C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EAC8);
  }

  return result;
}

unint64_t sub_24F314A98()
{
  result = qword_27F23EAD0;
  if (!qword_27F23EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EAD0);
  }

  return result;
}

unint64_t sub_24F314B24()
{
  result = qword_27F23EAD8;
  if (!qword_27F23EAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA38, &qword_24F9E2868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EAD8);
  }

  return result;
}

uint64_t sub_24F314BA0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_16Tm_0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for CardHeroView(0, v1, v2, v0[4]);
  v4 = (v3 - 8);
  v5 = v0 + ((*(*(v3 - 8) + 80) + 40) & ~*(*(v3 - 8) + 80));
  (*(*(v2 - 8) + 8))(&v5[*(v3 + 56)], v2);
  (*(*(v1 - 8) + 8))(&v5[v4[17]], v1);
  v6 = v4[18];
  v7 = sub_24F923E98();
  (*(*(v7 - 8) + 8))(&v5[v6], v7);

  v8 = &v5[v4[21]];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23E998, &unk_24F9E27E0);
  (*(*(v9 - 8) + 8))(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA80, &unk_24F9E28A0);

  v10 = &v5[v4[22]];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220BD8, &unk_24F964F00);
  (*(*(v11 - 8) + 8))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220C70, &qword_24F964FA0);

  sub_24E62A5EC(*&v5[v4[23]], v5[v4[23] + 8]);
  v12 = &v5[v4[24]];
  sub_24E669FC4(*v12, *(v12 + 1), *(v12 + 2), *(v12 + 3), v12[32]);

  return swift_deallocObject();
}

uint64_t sub_24F314E64(__int128 *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for CardHeroView(0, v3, v4, v5) - 8);
  v7 = v1 + ((*(v6 + 80) + 40) & ~*(v6 + 80));

  return sub_24F30E8B4(a1, v7, v3, v4, v5);
}

uint64_t sub_24F314F04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F314F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24F314F98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 97))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 96);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24F314FEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24F31504C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for CardSafeArea(319);
      if (v4 <= 0x3F)
      {
        result = sub_24F923E98();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24F315110(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v35 = *(a3 + 24);
  v7 = *(v6 + 84);
  v8 = *(v35 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = sub_24F923E98();
  v12 = *(v11 - 8);
  v13 = *(v8 + 80);
  v14 = *(v12 + 80);
  if (v10 <= *(v12 + 84))
  {
    v15 = *(v12 + 84);
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

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 64) + v13;
  v18 = *(v8 + 64) + 7;
  v19 = v14 + 8;
  if (a2 <= v16)
  {
    goto LABEL_34;
  }

  v20 = ((v19 + ((((v18 + (v17 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + *(*(v11 - 8) + 64);
  v21 = 8 * v20;
  if (v20 > 3)
  {
    goto LABEL_13;
  }

  v24 = ((a2 - v16 + ~(-1 << v21)) >> v21) + 1;
  if (HIWORD(v24))
  {
    v22 = *(a1 + v20);
    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v24 <= 0xFF)
    {
      if (v24 < 2)
      {
        goto LABEL_34;
      }

LABEL_13:
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_34;
      }

LABEL_21:
      v25 = (v22 - 1) << v21;
      if (v20 > 3)
      {
        v25 = 0;
      }

      if (v20)
      {
        if (v20 <= 3)
        {
          v26 = v20;
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

      else
      {
        v27 = 0;
      }

      return v16 + (v27 | v25) + 1;
    }

    v22 = *(a1 + v20);
    if (*(a1 + v20))
    {
      goto LABEL_21;
    }
  }

LABEL_34:
  if (v7 == v16)
  {
    v28 = *(v6 + 48);
    v29 = a1;
    v30 = v7;
    v31 = v5;

    return v28(v29, v30, v31);
  }

  v29 = ((a1 + v17) & ~v13);
  if (v9 == v16)
  {
    v28 = *(v8 + 48);
    v30 = v9;
    v31 = v35;

    return v28(v29, v30, v31);
  }

  v32 = ((((v29 + v18) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v15 & 0x80000000) != 0)
  {
    v34 = *(v12 + 48);

    return v34((v32 + v19) & ~v14);
  }

  else
  {
    v33 = *v32;
    if (v33 >= 0xFFFFFFFF)
    {
      LODWORD(v33) = -1;
    }

    return (v33 + 1);
  }
}

void sub_24F315494(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v40 = *(a4 + 16);
  v7 = *(v40 - 8);
  v38 = *(a4 + 24);
  v39 = v7;
  v8 = *(v7 + 84);
  v9 = *(v38 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(sub_24F923E98() - 8);
  v13 = *(v7 + 64);
  v14 = *(v9 + 80);
  v15 = *(v9 + 64);
  v16 = *(v12 + 80);
  if (v11 <= *(v12 + 84))
  {
    v17 = *(v12 + 84);
  }

  else
  {
    v17 = v11;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = v13 + v14;
  v20 = (v13 + v14) & ~v14;
  v21 = v15 + 7;
  v22 = ((v16 + 8 + ((((v15 + 7 + v20) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + *(v12 + 64);
  if (a3 <= v18)
  {
    v24 = 0;
    v23 = a1;
  }

  else
  {
    v23 = a1;
    if (v22 <= 3)
    {
      v27 = ((a3 - v18 + ~(-1 << (8 * v22))) >> (8 * v22)) + 1;
      if (HIWORD(v27))
      {
        v24 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v24 = v28;
        }

        else
        {
          v24 = 0;
        }
      }
    }

    else
    {
      v24 = 1;
    }
  }

  if (v18 < a2)
  {
    v25 = ~v18 + a2;
    if (v22 < 4)
    {
      v26 = (v25 >> (8 * v22)) + 1;
      if (v22)
      {
        v29 = v25 & ~(-1 << (8 * v22));
        bzero(v23, v22);
        if (v22 != 3)
        {
          if (v22 == 2)
          {
            *v23 = v29;
            if (v24 > 1)
            {
LABEL_56:
              if (v24 == 2)
              {
                *&v23[v22] = v26;
              }

              else
              {
                *&v23[v22] = v26;
              }

              return;
            }
          }

          else
          {
            *v23 = v25;
            if (v24 > 1)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_53;
        }

        *v23 = v29;
        v23[2] = BYTE2(v29);
      }

      if (v24 > 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      bzero(v23, v22);
      *v23 = v25;
      v26 = 1;
      if (v24 > 1)
      {
        goto LABEL_56;
      }
    }

LABEL_53:
    if (v24)
    {
      v23[v22] = v26;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *&v23[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&v23[v22] = 0;
  }

  else if (v24)
  {
    v23[v22] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v8 == v18)
  {
    v30 = v40;
    v31 = *(v39 + 56);
    v32 = v23;
    v33 = a2;
    v34 = v8;
LABEL_41:

    v31(v32, v33, v34, v30);
    return;
  }

  v32 = (&v23[v19] & ~v14);
  if (v10 == v18)
  {
    v31 = *(v9 + 56);
    v33 = a2;
    v34 = v10;
    v30 = v38;
    goto LABEL_41;
  }

  v35 = (((&v32[v21] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v17 & 0x80000000) != 0)
  {
    v37 = *(v12 + 56);

    v37((v35 + v16 + 8) & ~v16, a2);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v36 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v36 = (a2 - 1);
    }

    *v35 = v36;
  }
}

uint64_t sub_24F315880(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_24F3158C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F315928(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v5 = *a1;
  v3 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA38, &qword_24F9E2868);
  type metadata accessor for CardHeroView.ContentView(255, v1, v2, v3);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA40, &qword_24F9E2870);
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A578, &unk_24F9EE3C0);
  sub_24F924038();
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927018();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98, &qword_24F940DC0);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA48, &qword_24F9E2878);
  sub_24F924038();
  swift_getAssociatedTypeWitness();
  sub_24F924038();
  swift_getAssociatedConformanceWitness();
  sub_24F314458();
  sub_24F3144AC();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924038();
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA60, &qword_24F9E2880);
  sub_24F924038();
  type metadata accessor for HeroSafeAreaMetrics(255);
  sub_24E602068(&qword_27F23EA68, &qword_27F23EA60, &qword_24F9E2880, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA70, &qword_24F9E2888);
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216590, &unk_24F9E2890);
  sub_24F924038();
  type metadata accessor for CardHeroView.HeroLayoutAttributes(255, v5, v2, v3);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F23EA78, &qword_27F23EA48, &qword_24F9E2878, MEMORY[0x277CDE2D0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F216588, &qword_27F216590, &unk_24F9E2890, MEMORY[0x277CE06A8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223340, &qword_24F939830);
  sub_24F924038();
  type metadata accessor for FocusableItemScrollViewOffsetModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CCC8, &qword_24F957520);
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
  swift_getWitnessTable();
  sub_24F314F04(&qword_27F2201B0, type metadata accessor for FocusableItemScrollViewOffsetModifier, &unk_24FA1CE10);
  swift_getWitnessTable();
  sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CardSafeArea(255);
  swift_getOpaqueTypeConformance2();
  sub_24F314F04(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F316338()
{
  result = qword_27F23EBF0;
  if (!qword_27F23EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EBF0);
  }

  return result;
}

unint64_t sub_24F3163E8()
{
  result = qword_27F23EC00;
  if (!qword_27F23EC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AD8, &qword_24F940DF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AB0, &unk_24F9A8BF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AB8, &qword_24F940DE0);
    sub_24E602068(&qword_27F215AC0, &qword_27F215AB0, &unk_24F9A8BF0, MEMORY[0x277CE04B0]);
    sub_24E6695B8();
    sub_24E66BFB8();
    swift_getOpaqueTypeConformance2();
    sub_24E669450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EC00);
  }

  return result;
}

unint64_t sub_24F316524()
{
  result = qword_27F23EC08;
  if (!qword_27F23EC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EC10, &qword_24F9E2C38);
    sub_24F316338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EC08);
  }

  return result;
}

uint64_t sub_24F316674()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EBF8, &unk_24F9E2C28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AD8, &qword_24F940DF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AB0, &unk_24F9A8BF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AB8, &qword_24F940DE0);
  sub_24E602068(&qword_27F215AC0, &qword_27F215AB0, &unk_24F9A8BF0, MEMORY[0x277CE04B0]);
  sub_24E6695B8();
  sub_24E66BFB8();
  swift_getOpaqueTypeConformance2();
  sub_24E669340();
  sub_24F3163E8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F3167B4(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  sub_24F924038();
  swift_getAssociatedConformanceWitness();
  sub_24F314458();
  sub_24F3144AC();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146E8, &qword_24F93D5B0);
  sub_24F924038();
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24F924E08();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24F316B30()
{
  if (*v0)
  {
    return 0x4449726579616C70;
  }

  else
  {
    return 0x726579616C70;
  }
}

uint64_t sub_24F316B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F316C40(uint64_t a1)
{
  v2 = sub_24F317214();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F316C7C(uint64_t a1)
{
  v2 = sub_24F317214();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F316CB8(uint64_t a1)
{
  v2 = sub_24F3172BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F316CF4(uint64_t a1)
{
  v2 = sub_24F3172BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F316D30(uint64_t a1)
{
  v2 = sub_24F317268();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F316D6C(uint64_t a1)
{
  v2 = sub_24F317268();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpdateFriendRequestAction.PlayerInfo.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EC18, &qword_24F9E2C40);
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v23 = &v20 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EC20, &qword_24F9E2C48);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v22 = &v20 - v5;
  v21 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v21);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateFriendRequestAction.PlayerInfo(0);
  MEMORY[0x28223BE20](updated);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EC28, &qword_24F9E2C50);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F317214();
  sub_24F92D128();
  sub_24F318AC4(v28, v10, type metadata accessor for UpdateFriendRequestAction.PlayerInfo);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = 1;
    sub_24F317268();
    v15 = v23;
    sub_24F92CC98();
    v16 = v27;
    sub_24F92CD08();

    (*(v26 + 8))(v15, v16);
  }

  else
  {
    sub_24F317994(v10, v7, type metadata accessor for Player);
    v29 = 0;
    sub_24F3172BC();
    v17 = v22;
    sub_24F92CC98();
    sub_24F3179FC(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    v18 = v25;
    sub_24F92CD48();
    (*(v24 + 8))(v17, v18);
    sub_24F318A10(v7, type metadata accessor for Player);
  }

  return (*(v12 + 8))(v14, v11);
}

unint64_t sub_24F317214()
{
  result = qword_27F23EC30;
  if (!qword_27F23EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EC30);
  }

  return result;
}

unint64_t sub_24F317268()
{
  result = qword_27F23EC38;
  if (!qword_27F23EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EC38);
  }

  return result;
}

unint64_t sub_24F3172BC()
{
  result = qword_27F23EC40;
  if (!qword_27F23EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EC40);
  }

  return result;
}

uint64_t UpdateFriendRequestAction.PlayerInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EC48, &qword_24F9E2C58);
  v53 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v47 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EC50, &qword_24F9E2C60);
  v5 = *(v4 - 8);
  v51 = v4;
  v52 = v5;
  MEMORY[0x28223BE20](v4);
  v54 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EC58, &unk_24F9E2C68);
  v57 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  updated = type metadata accessor for UpdateFriendRequestAction.PlayerInfo(0);
  MEMORY[0x28223BE20](updated);
  v12 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  v19 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24F317214();
  v20 = v59;
  sub_24F92D108();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v48 = v12;
  v49 = v15;
  v21 = v54;
  v22 = v55;
  v59 = 0;
  v23 = v56;
  v50 = v18;
  v24 = updated;
  v25 = v58;
  v26 = sub_24F92CC78();
  v27 = (2 * *(v26 + 16)) | 1;
  v61 = v26;
  v62 = v26 + 32;
  v63 = 0;
  v64 = v27;
  v28 = sub_24E643430();
  v29 = v7;
  v30 = v9;
  if (v28 == 2 || v63 != v64 >> 1)
  {
    v35 = sub_24F92C918();
    swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
    *v37 = v24;
    v31 = v7;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    goto LABEL_8;
  }

  if ((v28 & 1) == 0)
  {
    v65 = 0;
    sub_24F3172BC();
    v39 = v21;
    v31 = v29;
    v40 = v59;
    sub_24F92CBA8();
    v46 = v50;
    if (!v40)
    {
      type metadata accessor for Player(0);
      sub_24F3179FC(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
      v41 = v51;
      sub_24F92CC68();
      v59 = 0;
      (*(v52 + 8))(v39, v41);
      (*(v57 + 8))(v9, v29);
      v44 = v49;
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v45 = v58;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v65 = 1;
  sub_24F317268();
  v31 = v7;
  v32 = v59;
  sub_24F92CBA8();
  if (v32)
  {
LABEL_8:
    (*(v57 + 8))(v9, v31);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v33 = sub_24F92CC28();
  v34 = v57;
  v59 = 0;
  v43 = v42;
  (*(v53 + 8))(v22, v23);
  (*(v34 + 8))(v30, v7);
  swift_unknownObjectRelease();
  v44 = v48;
  *v48 = v33;
  *(v44 + 8) = v43;
  swift_storeEnumTagMultiPayload();
  v45 = v25;
  v46 = v50;
LABEL_12:
  sub_24F317994(v44, v46, type metadata accessor for UpdateFriendRequestAction.PlayerInfo);
  sub_24F317994(v46, v45, type metadata accessor for UpdateFriendRequestAction.PlayerInfo);
  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t sub_24F317994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F3179FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

GameStoreKit::UpdateFriendRequestAction::Result_optional __swiftcall UpdateFriendRequestAction.Result.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

uint64_t UpdateFriendRequestAction.Result.rawValue.getter()
{
  if (*v0)
  {
    return 0x65726F6E6769;
  }

  else
  {
    return 0x747065636361;
  }
}

uint64_t sub_24F317B04(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x65726F6E6769;
  }

  else
  {
    v2 = 0x747065636361;
  }

  if (*a2)
  {
    v3 = 0x65726F6E6769;
  }

  else
  {
    v3 = 0x747065636361;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_24F92CE08();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_24F317B84()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F317BF4(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F317C48()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F317CB4@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

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

void sub_24F317D14(uint64_t *a1@<X8>)
{
  v2 = 0x747065636361;
  if (*v1)
  {
    v2 = 0x65726F6E6769;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t UpdateFriendRequestAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UpdateFriendRequestAction(0) + 32);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24F317EE8()
{
  v1 = *v0;
  v2 = 0x746C75736572;
  v3 = 0x4173736563637573;
  v4 = 0x416572756C696166;
  if (v1 != 3)
  {
    v4 = 0x654D6E6F69746361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E49726579616C70;
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

uint64_t sub_24F317FA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F319448(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F317FD0(uint64_t a1)
{
  v2 = sub_24F318354();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F31800C(uint64_t a1)
{
  v2 = sub_24F318354();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpdateFriendRequestAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EC60, &qword_24F9E2C78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F318354();
  sub_24F92D128();
  v16 = *v3;
  v15 = 0;
  sub_24F3183A8();
  sub_24F92CD48();
  if (!v2)
  {
    type metadata accessor for UpdateFriendRequestAction(0);
    v14 = 1;
    type metadata accessor for UpdateFriendRequestAction.PlayerInfo(0);
    sub_24F3179FC(&qword_27F23EC78, type metadata accessor for UpdateFriendRequestAction.PlayerInfo, &protocol conformance descriptor for UpdateFriendRequestAction.PlayerInfo);
    sub_24F92CD48();
    v13 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E6419D0(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v12 = 3;
    sub_24F92CD48();
    v11 = 4;
    sub_24F928AD8();
    sub_24F3179FC(&qword_27F216080, MEMORY[0x277D21C88], MEMORY[0x277D21C90]);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24F318354()
{
  result = qword_27F23EC68;
  if (!qword_27F23EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EC68);
  }

  return result;
}

unint64_t sub_24F3183A8()
{
  result = qword_27F23EC70;
  if (!qword_27F23EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EC70);
  }

  return result;
}

uint64_t UpdateFriendRequestAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = sub_24F928AD8();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v28 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateFriendRequestAction.PlayerInfo(0);
  MEMORY[0x28223BE20](updated);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EC80, &unk_24F9E2C80);
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = &v24 - v6;
  v8 = type metadata accessor for UpdateFriendRequestAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v10[*(v11 + 24)];
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  v34 = v12;
  sub_24E61DA68(&v36, v12, qword_27F21B590, &unk_24F93BE30);
  v13 = &v10[*(v8 + 28)];
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  sub_24E61DA68(&v36, v13, qword_27F21B590, &unk_24F93BE30);
  v14 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24F318354();
  v32 = v7;
  v15 = v33;
  sub_24F92D108();
  if (v15)
  {
    v18 = v34;
    __swift_destroy_boxed_opaque_existential_1(v35);
    sub_24E641EA0(v18);
    return sub_24E641EA0(v13);
  }

  else
  {
    v24 = v8;
    v16 = v29;
    v33 = v10;
    v39 = 0;
    sub_24F318A70();
    sub_24F92CC68();
    v17 = v33;
    *v33 = v36;
    LOBYTE(v36) = 1;
    sub_24F3179FC(&qword_27F23EC90, type metadata accessor for UpdateFriendRequestAction.PlayerInfo, &protocol conformance descriptor for UpdateFriendRequestAction.PlayerInfo);
    sub_24F92CC68();
    sub_24F317994(v5, &v17[*(v24 + 20)], type metadata accessor for UpdateFriendRequestAction.PlayerInfo);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v39 = 2;
    sub_24E6419D0(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v36, v34, qword_27F24EC90, &unk_24F93C1D0);
    v39 = 3;
    sub_24F92CC68();
    sub_24E61DA68(&v36, v13, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v36) = 4;
    sub_24F3179FC(&qword_27F254CB0, MEMORY[0x277D21C88], MEMORY[0x277D21C98]);
    v19 = v27;
    v20 = v28;
    v21 = v31;
    sub_24F92CC68();
    v22 = v33;
    (*(v16 + 8))(v32, v21);
    (*(v25 + 32))(v22 + *(v24 + 32), v20, v19);
    sub_24F318AC4(v22, v26, type metadata accessor for UpdateFriendRequestAction);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return sub_24F318A10(v22, type metadata accessor for UpdateFriendRequestAction);
  }
}

uint64_t sub_24F318A10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F318A70()
{
  result = qword_27F23EC88;
  if (!qword_27F23EC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EC88);
  }

  return result;
}

uint64_t sub_24F318AC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F318B30()
{
  result = qword_27F23EC98;
  if (!qword_27F23EC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23EC98);
  }

  return result;
}

uint64_t sub_24F318BC8(uint64_t a1, uint64_t a2, int *a3)
{
  updated = type metadata accessor for UpdateFriendRequestAction.PlayerInfo(0);
  v7 = *(updated - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = updated;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_24F928AD8();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[8];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_24F318D14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UpdateFriendRequestAction.PlayerInfo(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 24) = a2;
  }

  else
  {
    v13 = sub_24F928AD8();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_24F318E40(uint64_t a1)
{
  type metadata accessor for UpdateFriendRequestAction.PlayerInfo(319);
  if (v1 <= 0x3F)
  {
    sub_24E61C8D4(319);
    if (v2 <= 0x3F)
    {
      sub_24F928AD8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F318EEC(uint64_t a1)
{
  sub_24F318F60();
  if (v1 <= 0x3F)
  {
    sub_24F318FA8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24F318F60()
{
  if (!qword_27F214F80)
  {
    v0 = type metadata accessor for Player(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27F214F80);
    }
  }
}

uint64_t sub_24F318FA8()
{
  result = qword_27F23ECC0;
  if (!qword_27F23ECC0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F23ECC0);
  }

  return result;
}

unint64_t sub_24F31902C()
{
  result = qword_27F23ECC8;
  if (!qword_27F23ECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ECC8);
  }

  return result;
}

unint64_t sub_24F319084()
{
  result = qword_27F23ECD0;
  if (!qword_27F23ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ECD0);
  }

  return result;
}

unint64_t sub_24F3190DC()
{
  result = qword_27F23ECD8;
  if (!qword_27F23ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ECD8);
  }

  return result;
}

unint64_t sub_24F319134()
{
  result = qword_27F23ECE0;
  if (!qword_27F23ECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ECE0);
  }

  return result;
}

unint64_t sub_24F31918C()
{
  result = qword_27F23ECE8;
  if (!qword_27F23ECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ECE8);
  }

  return result;
}

unint64_t sub_24F3191E4()
{
  result = qword_27F23ECF0;
  if (!qword_27F23ECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ECF0);
  }

  return result;
}

unint64_t sub_24F31923C()
{
  result = qword_27F23ECF8;
  if (!qword_27F23ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ECF8);
  }

  return result;
}

unint64_t sub_24F319294()
{
  result = qword_27F23ED00;
  if (!qword_27F23ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ED00);
  }

  return result;
}

unint64_t sub_24F3192EC()
{
  result = qword_27F23ED08;
  if (!qword_27F23ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ED08);
  }

  return result;
}

unint64_t sub_24F319344()
{
  result = qword_27F23ED10;
  if (!qword_27F23ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ED10);
  }

  return result;
}

unint64_t sub_24F31939C()
{
  result = qword_27F23ED18;
  if (!qword_27F23ED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ED18);
  }

  return result;
}

unint64_t sub_24F3193F4()
{
  result = qword_27F23ED20;
  if (!qword_27F23ED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ED20);
  }

  return result;
}

uint64_t sub_24F319448(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C75736572 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E49726579616C70 && a2 == 0xEA00000000006F66 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_24F319614()
{
  result = qword_27F23ED28;
  if (!qword_27F23ED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ED28);
  }

  return result;
}

uint64_t sub_24F319668@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v105) = a2;
  v110 = a3;
  v82 = sub_24F91EF48();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F91F008();
  v103 = *(v5 - 8);
  v104 = v5;
  MEMORY[0x28223BE20](v5);
  v78 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = &v78 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v9 - 8);
  v101 = &v78 - v10;
  v11 = sub_24F91EE98();
  v98 = *(v11 - 8);
  v99 = v11;
  MEMORY[0x28223BE20](v11);
  v97 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_24F91EEA8();
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F91EEC8();
  MEMORY[0x28223BE20](v14 - 8);
  v96 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v16 - 8);
  v100 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v102 = &v78 - v19;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E180, &unk_24F9E3310);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v88 = &v78 - v20;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E188, &unk_24F9DFE70);
  v86 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v85 = &v78 - v21;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E190, &qword_24F9E3320);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v87 = &v78 - v22;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23ED40, &qword_24F9E3328);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v24 = &v78 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23ED48, &unk_24F9E3330);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v78 - v27;
  v29 = sub_24F91F0C8();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v78 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v78 - v37;
  v108 = v30;
  v109 = v39;
  v107 = &v78 - v37;
  if (v105)
  {
    v105 = a1;
    sub_24F91F0B8();
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v78 - 2) = v41;
    swift_getKeyPath();
    sub_24F31B3FC();
    sub_24F91F098();

    v42 = *(v30 + 8);
    v42(v32, v29);
    if (qword_27F210438 != -1)
    {
      swift_once();
    }

    v111 = qword_27F22BEB8;
    v43 = qword_27F22BEB8;
    sub_24F91F0A8();
    (*(v26 + 8))(v28, v25);
    v44 = swift_getKeyPath();
    MEMORY[0x28223BE20](v44);
    *(&v78 - 2) = v45;
    swift_getKeyPath();
    sub_24F31B504();
    sub_24F91F098();

    v42(v35, v29);
    v111 = v43;
    v38 = v107;
    v46 = v84;
    sub_24F91F0A8();

    (*(v83 + 8))(v24, v46);
    v30 = v108;
    a1 = v105;
  }

  else
  {
    sub_24F91F0B8();
  }

  v47 = a1[2];
  if (v47 < 2)
  {
    v57 = v109;
    if (v47)
    {
      (*(v30 + 16))(v35, v38, v109);

      sub_24F91F018();
    }

    else
    {
      sub_24F91EFF8();
    }
  }

  else
  {
    v113 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v47, 0);
    v48 = a1 + 5;
    v49 = v113;
    do
    {
      v50 = *(v48 - 1);
      v51 = *v48;
      v111 = 0;
      v112 = 0xE000000000000000;

      sub_24F92C888();

      v111 = 23390;
      v112 = 0xE200000000000000;
      MEMORY[0x253050C20](v50, v51);
      MEMORY[0x253050C20](0x203A65707974285DLL, 0xEF2927656D616E27);

      v52 = v111;
      v53 = v112;
      v113 = v49;
      v55 = *(v49 + 16);
      v54 = *(v49 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_24F4578E0((v54 > 1), v55 + 1, 1);
        v49 = v113;
      }

      *(v49 + 16) = v55 + 1;
      v56 = v49 + 16 * v55;
      *(v56 + 32) = v52;
      *(v56 + 40) = v53;
      v48 += 2;
      --v47;
    }

    while (v47);
    v113 = v49;
    v58 = v86;
    v59 = v85;
    (*(v86 + 104))(v85, *MEMORY[0x277CC8AF0], v106);
    v60 = v91;
    v61 = v88;
    v62 = v92;
    (*(v91 + 104))(v88, *MEMORY[0x277CC8B00], v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    sub_24E602068(&qword_27F23E1B8, &unk_27F2285F0, &qword_24F93B070, MEMORY[0x277D83970]);
    v63 = v87;
    sub_24F91E978();
    (*(v60 + 8))(v61, v62);
    (*(v58 + 8))(v59, v106);
    sub_24E602068(&unk_27F23E1C0, &unk_27F23E190, &qword_24F9E3320, MEMORY[0x277CC8B28]);
    v64 = v90;
    sub_24F92B3E8();
    (*(v89 + 8))(v63, v64);

    swift_getKeyPath();
    (*(v93 + 104))(v94, *MEMORY[0x277CC8BB0], v95);
    (*(v98 + 104))(v97, *MEMORY[0x277CC8B98], v99);
    sub_24F91EEB8();
    v65 = sub_24F91F4A8();
    (*(*(v65 - 8) + 56))(v101, 1, 1, v65);
    sub_24F31B36C();
    v66 = v102;
    sub_24F91EFD8();
    v68 = v103;
    v67 = v104;
    v69 = v100;
    v30 = v108;
    (*(v103 + 56))(v66, 0, 1, v104);
    sub_24E747EE8(v66, v69);
    v70 = (*(v68 + 48))(v69, 1, v67);
    if (v70 == 1)
    {
      sub_24E601704(v69, &qword_27F215340, &qword_24F943530);
      sub_24F91EFF8();
      sub_24E601704(v66, &qword_27F215340, &qword_24F943530);
      v57 = v109;
      v38 = v107;
    }

    else
    {
      v71 = v79;
      (*(v68 + 32))(v79, v69, v67);
      v72 = v80;
      sub_24F91EF68();
      v73 = v78;
      v74 = sub_24F91EFF8();
      MEMORY[0x28223BE20](v74);
      v75 = v107;
      *(&v78 - 2) = v71;
      *(&v78 - 1) = v75;
      sub_24F05B704(v73, sub_24F31B3C0, (&v78 - 4), v110);
      (*(v81 + 8))(v72, v82);
      sub_24E601704(v66, &qword_27F215340, &qword_24F943530);
      v76 = v71;
      v38 = v75;
      (*(v68 + 8))(v76, v67);
      v57 = v109;
    }
  }

  return (*(v30 + 8))(v38, v57);
}

uint64_t sub_24F31A558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a1;
  v35 = a4;
  v42 = a3;
  v4 = sub_24F91EE88();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_24F91F0C8();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v32 - v8;
  v9 = sub_24F91F008();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v46 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D330, &unk_24F93FBE0);
  MEMORY[0x28223BE20](v40);
  v12 = &v32 - v11;
  v13 = sub_24F91F138();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  sub_24F91EF08();
  sub_24E602068(&qword_27F22D340, &qword_27F22D330, &unk_24F93FBE0, MEMORY[0x277D83D30]);
  sub_24F91F058();
  sub_24E601704(v12, &qword_27F22D330, &unk_24F93FBE0);
  v40 = v14;
  v20 = *(v14 + 16);
  v42 = v13;
  v20(v16, v19, v13);
  sub_24F91F078();
  v21 = v38;
  sub_24F91EEF8();
  sub_24F31B614();
  sub_24F91F0D8();
  v22 = v39;
  v23 = *(v39 + 8);
  v24 = v41;
  v23(v21);
  if ((v47 & 1) == 0)
  {
    v25 = v33;
    (*(v22 + 16))(v33, v35, v24);
    v27 = v36;
    v26 = v37;
    v28 = v34;
    (*(v36 + 104))(v34, *MEMORY[0x277CC8B80], v37);
    sub_24F91EE68();
    (*(v27 + 8))(v28, v26);
    (v23)(v25, v24);
  }

  sub_24F31B668();
  v29 = v46;
  v30 = v44;
  sub_24F91EF88();
  (*(v43 + 8))(v29, v30);
  return (*(v40 + 8))(v19, v42);
}

uint64_t sub_24F31A9FC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_24F92CB88();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_24F31AB14()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F31AB70()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F31ACDC()
{
  v0 = *aType_19;

  return v0;
}

uint64_t sub_24F31AD28(uint64_t a1)
{
  sub_24F31B36C();

  return sub_24F91EC68();
}

uint64_t sub_24F31AD74(uint64_t a1)
{
  sub_24F31B36C();

  return sub_24F91EC68();
}

uint64_t sub_24F31ADC0(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    v7 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v5 = 0;
  v6 = a2 + 40;
  v7 = MEMORY[0x277D84F90];
  v45 = a2 + 40;
  v46 = result;
  do
  {
    v47 = v7;
    v8 = v6 + 16 * v5;
    v9 = v5;
    while (1)
    {
      if (v9 >= v3)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v5 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_31;
      }

      v10 = sub_24F92B098();
      v11 = [a3 contactForIdentifier_];

      if (v11)
      {
        break;
      }

LABEL_4:

      ++v9;
      v8 += 16;
      if (v5 == v3)
      {
        result = v46;
        v7 = v47;
        goto LABEL_18;
      }
    }

    v12 = [objc_opt_self() stringFromContact:v11 style:0];
    if (!v12)
    {

      goto LABEL_4;
    }

    v13 = v12;
    v14 = sub_24F92B0D8();
    v44 = v15;

    v7 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_24E615CF4(0, *(v47 + 2) + 1, 1, v47);
    }

    v17 = *(v7 + 2);
    v16 = *(v7 + 3);
    if (v17 >= v16 >> 1)
    {
      v7 = sub_24E615CF4((v16 > 1), v17 + 1, 1, v7);
    }

    *(v7 + 2) = v17 + 1;
    v18 = &v7[16 * v17];
    *(v18 + 4) = v14;
    *(v18 + 5) = v44;
    v6 = v45;
    result = v46;
  }

  while (v5 != v3);
LABEL_18:
  v48 = result;

  sub_24EA0A4AC(v7);
  v19 = v48[2];
  if (v19)
  {
    v21 = v48[4];
    v20 = v48[5];
    if (v19 < 3)
    {
      if (v19 == 2)
      {
        v38 = "ouAndOneMore.Text";
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24F93A400;
        *(inited + 32) = 0x4E31726579616C70;
        *(inited + 40) = 0xEB00000000656D61;
        *(inited + 48) = v21;
        *(inited + 56) = v20;
        *(inited + 64) = 0x4E32726579616C70;
        *(inited + 72) = 0xEB00000000656D61;
        v41 = v48[6];
        v40 = v48[7];

        *(inited + 80) = v41;
        *(inited + 88) = v40;
        v31 = sub_24E6086DC(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90, &qword_24F955020);
        swift_arrayDestroy();
      }

      else
      {

        v38 = "contentBackground";
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
        v42 = swift_initStackObject();
        *(v42 + 16) = xmmword_24F93DE60;
        *(v42 + 32) = 0x614E726579616C70;
        *(v42 + 40) = 0xEA0000000000656DLL;
        MEMORY[0x253050C20](v21, v20);

        MEMORY[0x253050C20](11108834, 0xA300000000000000);
        *(v42 + 48) = 11043298;
        *(v42 + 56) = 0xA300000000000000;
        v31 = sub_24E6086DC(v42);
        swift_setDeallocating();
        sub_24E601704(v42 + 32, &qword_27F219F90, &qword_24F955020);
      }

      v33 = v38 | 0x8000000000000000;
      v32 = 0xD000000000000031;
LABEL_29:
      countAndFlagsBits = localizedString(_:with:)(*&v32, v31)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    else
    {
      v22 = objc_opt_self();

      v23 = sub_24F92BB08();
      v24 = [v22 localizedStringFromNumber:v23 numberStyle:0];

      v25 = sub_24F92B0D8();
      v27 = v26;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
      result = swift_initStackObject();
      *(result + 16) = xmmword_24F9479A0;
      *(result + 32) = 0x4E31726579616C70;
      *(result + 40) = 0xEB00000000656D61;
      *(result + 48) = v21;
      *(result + 56) = v20;
      *(result + 64) = 0x4E32726579616C70;
      *(result + 72) = 0xEB00000000656D61;
      if (v48[2] >= 2uLL)
      {
        v28 = result;
        v30 = v48[6];
        v29 = v48[7];

        v28[10] = v30;
        v28[11] = v29;
        v28[12] = 0xD000000000000011;
        v28[13] = 0x800000024FA73B80;
        v28[14] = v25;
        v28[15] = v27;
        v31 = sub_24E6086DC(v28);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90, &qword_24F955020);
        swift_arrayDestroy();
        v32 = 0xD00000000000002ELL;
        v33 = 0x800000024FA73B50;
        goto LABEL_29;
      }

LABEL_32:
      __break(1u);
    }
  }

  else
  {

    v34 = 0xD00000000000002BLL;
    v35 = 0x800000024FA73BA0;
    v36 = 0;
    v37 = 0xE000000000000000;

    return localizedString(_:comment:)(*&v34, *&v36)._countAndFlagsBits;
  }

  return result;
}

unint64_t sub_24F31B36C()
{
  result = qword_27F23ED50;
  if (!qword_27F23ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ED50);
  }

  return result;
}

unint64_t sub_24F31B3FC()
{
  result = qword_27F23ED58;
  if (!qword_27F23ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ED58);
  }

  return result;
}

void sub_24F31B450(uint64_t a1, uint64_t *a2)
{
  sub_24F31B3FC();
  sub_24F91F248();
  __break(1u);
}

unint64_t sub_24F31B504()
{
  result = qword_27F23ED60;
  if (!qword_27F23ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ED60);
  }

  return result;
}

void sub_24F31B558(uint64_t a1, uint64_t *a2)
{
  sub_24F31B504();
  sub_24F91F248();
  __break(1u);
}