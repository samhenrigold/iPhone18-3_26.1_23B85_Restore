id Array<A>.totalTopSupplementaryHeight.getter(uint64_t a1, uint64_t a2)
{
  result = sub_1E1AF62BC();
  if (result)
  {
    v4 = 4;
    v5 = 0.0;
    while (1)
    {
      v10 = sub_1E1AF629C();
      sub_1E1AF624C();
      result = (v10 & 1) != 0 ? *(a1 + 8 * v4) : sub_1E1AF704C();
      v11 = result;
      v12 = (v4 - 3);
      if (__OFADD__(v4 - 4, 1))
      {
        break;
      }

      if ([result alignment] == 1)
      {
        v6 = [v11 layoutSize];
        v7 = [v6 heightDimension];

        [v7 dimension];
        v9 = v8;

        v5 = v5 + v9;
      }

      else
      {
      }

      result = sub_1E1AF62BC();
      ++v4;
      if (v12 == result)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E193EA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E1AF635C();
  swift_getWitnessTable();
  return sub_1E1AF616C() & 1;
}

id Array<A>.totalBottomSupplementaryHeight.getter(uint64_t a1, uint64_t a2)
{
  result = sub_1E1AF62BC();
  if (result)
  {
    v4 = 4;
    v5 = 0.0;
    while (1)
    {
      v10 = sub_1E1AF629C();
      sub_1E1AF624C();
      result = (v10 & 1) != 0 ? *(a1 + 8 * v4) : sub_1E1AF704C();
      v11 = result;
      v12 = (v4 - 3);
      if (__OFADD__(v4 - 4, 1))
      {
        break;
      }

      if ([result alignment] == 5)
      {
        v6 = [v11 layoutSize];
        v7 = [v6 heightDimension];

        [v7 dimension];
        v9 = v8;

        v5 = v5 + v9;
      }

      else
      {
      }

      result = sub_1E1AF62BC();
      ++v4;
      if (v12 == result)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void (*NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(void)
{
  v8 = *(a4 + 16);

  v8(a2, a3, a4);
  v9 = (*(a4 + 56))(a1, a2, a3, a4);
  (*(a4 + 40))(v9);
  result = (*(a4 + 32))(a3, a4);
  if (result)
  {
    v12 = v11;
    v13 = result;
    result();

    return sub_1E1361B18(v13, v12);
  }

  return result;
}

uint64_t NestedModelImpressionsRecording.stopRecordingNestedImpressions(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ImpressionsCalculator.removeAllElements()();
  (*(a3 + 16))(0, a2, a3);
  v5 = *(a3 + 40);

  return v5(0, 0, a2, a3);
}

void sub_1E193EF18(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1E1AF70EC();
    v3 = v1 + 64;
    v4 = sub_1E1AF6EFC();
    v5 = 0;
    v6 = *(v1 + 36);
    v24 = v1 + 72;
    v25 = v6;
    v26 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_20;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_21;
      }

      v27 = v5;
      v9 = v2;
      v10 = (*(v1 + 48) + 16 * v4);
      v12 = *v10;
      v11 = v10[1];
      v13 = *(*(v1 + 56) + 8 * v4);
      v14 = type metadata accessor for OnDevicePersonalizationData();
      v15 = objc_allocWithZone(v14);
      v16 = &v15[OBJC_IVAR____TtC11AppStoreKit27OnDevicePersonalizationData_appId];
      *v16 = v12;
      *(v16 + 1) = v11;
      *&v15[OBJC_IVAR____TtC11AppStoreKit27OnDevicePersonalizationData_userSegments] = v13;
      *&v15[OBJC_IVAR____TtC11AppStoreKit27OnDevicePersonalizationData_onDeviceSignals] = 0;
      v28.receiver = v15;
      v28.super_class = v14;

      objc_msgSendSuper2(&v28, sel_init);
      sub_1E1AF70BC();
      sub_1E1AF70FC();
      v1 = v26;
      sub_1E1AF710C();
      sub_1E1AF70CC();
      v7 = 1 << *(v26 + 32);
      if (v4 >= v7)
      {
        goto LABEL_22;
      }

      v17 = *(v3 + 8 * v8);
      if ((v17 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      v2 = v9;
      v6 = v25;
      if (v25 != *(v26 + 36))
      {
        goto LABEL_24;
      }

      v18 = v17 & (-2 << (v4 & 0x3F));
      if (v18)
      {
        v7 = __clz(__rbit64(v18)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (v24 + 8 * v8);
        while (v20 < (v7 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1E142EA30(v4, v25, 0);
            v7 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_1E142EA30(v4, v25, 0);
      }

LABEL_4:
      v5 = v27 + 1;
      v4 = v7;
      if (v27 + 1 == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

unint64_t sub_1E193F1AC()
{
  v1 = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB490, &qword_1E1B44388);
  sub_1E1AF690C();

  result = v7;
  if (!v7)
  {
    v3 = OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_dataCacheAvailabilityConditionLock;
    v4 = [*(v0 + OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_dataCacheAvailabilityConditionLock) lockWhenCondition_];
    MEMORY[0x1EEE9AC00](v4);

    sub_1E1AF690C();

    v5 = MEMORY[0x1E69E7CC0];
    v6 = sub_1E15A19DC(MEMORY[0x1E69E7CC0]);
    sub_1E1303A74(v5);
    [*(v1 + v3) unlock];
    return v6;
  }

  return result;
}

uint64_t sub_1E193F398()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v4, v0);
  qword_1EE216550 = sub_1E1AF591C();
  unk_1EE216558 = MEMORY[0x1E69AB668];
  __swift_allocate_boxed_opaque_existential_0(qword_1EE216538);
  return sub_1E1AF590C();
}

id OnDevicePersonalizationDataManager.init(accountStore:bag:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  ObjectType = swift_getObjectType();
  v26 = sub_1E1AF68DC();
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v25 = OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_requestQueue;
  v9 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  v24[0] = "buttonAction";
  v24[1] = v9;
  sub_1E1AF322C();
  v31 = MEMORY[0x1E69E7CC0];
  sub_1E1557114(&qword_1EE1E3438, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E1AF6EEC();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v26);
  *&v2[v25] = sub_1E1AF692C();
  v10 = OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_amsEngagement;
  *&v3[v10] = [objc_allocWithZone(MEMORY[0x1E698C8D8]) init];
  v11 = OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_activeStoreAccount;
  *&v3[OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_activeStoreAccount] = 0;
  *&v3[OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_timeoutTimer] = 0;
  v3[OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_isRequestPending] = 0;
  v12 = OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_requestPendingLock;
  *&v3[v12] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v13 = v27;
  v14 = v28;
  *&v3[OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_accountStore] = v27;
  *&v3[OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_bag] = v14;
  v15 = v13;

  v16 = [v15 ams_activeiTunesAccount];
  v17 = *&v3[v11];
  *&v3[v11] = v16;

  v18 = [objc_allocWithZone(MEMORY[0x1E696AB38]) initWithCondition_];
  *&v3[OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_dataCacheAvailabilityConditionLock] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB480, qword_1E1B44328);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_dataCacheBox] = sub_1E14C54C4(0, 0);
  v30.receiver = v3;
  v30.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v30, sel_init);
  sub_1E193F950(1);
  v20 = objc_opt_self();
  v21 = [v20 defaultCenter];
  [v21 addObserver:v19 selector:sel_storeAccountDidChange name:*MEMORY[0x1E69597D8] object:v15];

  v22 = [v20 defaultCenter];
  [v22 addObserver:v19 selector:sel_appEnteredWhileAppeared name:*MEMORY[0x1E69DDAB0] object:0];

  return v19;
}

void sub_1E193F950(int a1)
{
  v2 = v1;
  LODWORD(v40) = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_1E1AF320C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF324C();
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0, &unk_1E1B0F2C0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - v12;
  v14 = *(v2 + OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_requestPendingLock);
  [v14 lock];
  v15 = OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_isRequestPending;
  if (*(v2 + OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_isRequestPending) == 1)
  {
    [v14 unlock];
    if (qword_1EE1E7420 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(qword_1EE216538, qword_1EE216550);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    return;
  }

  v38 = v3;
  v39 = v6;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_isRequestPending) = 1;
  [v14 unlock];
  if (qword_1EE1E2EE8 != -1)
  {
    swift_once();
  }

  sub_1E1AF52FC();
  sub_1E1AF532C();
  (*(v10 + 8))(v13, v9);
  if (aBlock != 1)
  {
    if (qword_1EE1E7420 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

  v16 = *(v2 + OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_activeStoreAccount);
  if (!v16)
  {
    if (qword_1EE1E7420 == -1)
    {
LABEL_16:
      __swift_project_boxed_opaque_existential_1Tm(qword_1EE216538, qword_1EE216550);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF382C();
      sub_1E1AF548C();

      v19 = MEMORY[0x1E69E7CC0];
      v20 = sub_1E15A19DC(MEMORY[0x1E69E7CC0]);
      v21 = sub_1E1303A74(v19);
      sub_1E1940B44(v20, v21);

      [v14 lock];
      *(v2 + v15) = 0;
      [v14 unlock];
      return;
    }

LABEL_30:
    swift_once();
    goto LABEL_16;
  }

  v17 = *MEMORY[0x1E698C4B0];
  v18 = v16;
  if ([v18 ams:v17 accountFlagValueForAccountFlag:?])
  {
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  v22 = v4;
  v23 = v39;
  aBlock = v49;
  v45 = v50;
  if (!*(&v50 + 1))
  {
    sub_1E13E44F8(&aBlock);
LABEL_26:
    if (qword_1EE1E7420 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(qword_1EE216538, qword_1EE216550);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    goto LABEL_29;
  }

  if ((swift_dynamicCast() & 1) == 0 || v48 != 1)
  {
    goto LABEL_26;
  }

  v24 = [v18 ams_DSID];
  if (!v24)
  {
LABEL_29:
    v35 = MEMORY[0x1E69E7CC0];
    v36 = sub_1E15A19DC(MEMORY[0x1E69E7CC0]);
    v37 = sub_1E1303A74(v35);
    sub_1E1940B44(v36, v37);

    [v14 lock];
    *(v2 + v15) = 0;
    [v14 unlock];

    return;
  }

  v25 = v24;
  v26 = [v24 stringValue];

  v27 = sub_1E1AF5DFC();
  v29 = v28;

  if (v40)
  {
    sub_1E1940B44(0, 0);
  }

  sub_1E1940DBC();
  v40 = *(v2 + OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_requestQueue);
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v27;
  v39 = v30;
  *(v31 + 32) = v29;
  *(v31 + 40) = 0;
  *(v31 + 48) = 0;
  *(v31 + 56) = 0;
  *(v31 + 64) = 96;
  *(v31 + 72) = ObjectType;
  v46 = sub_1E194353C;
  v47 = v31;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v45 = sub_1E1302D64;
  *(&v45 + 1) = &block_descriptor_26_2;
  v32 = _Block_copy(&aBlock);

  sub_1E1AF322C();
  *&v49 = MEMORY[0x1E69E7CC0];
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850);
  v33 = v43;
  v34 = v38;
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v8, v33, v32);
  _Block_release(v32);

  (*(v22 + 8))(v33, v34);
  (*(v42 + 8))(v8, v23);
}

Swift::Void __swiftcall OnDevicePersonalizationDataManager.clearData()()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1E1AF320C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF324C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E7CC0];
  v10 = sub_1E15A19DC(MEMORY[0x1E69E7CC0]);
  v11 = sub_1E1303A74(v9);
  sub_1E1940B44(v10, v11);

  v12 = *(v0 + OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_activeStoreAccount);
  if (v12)
  {
    v28 = v6;
    v13 = v12;
    v14 = [v13 ams_DSID];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 stringValue];
      v27 = v5;
      v17 = v16;

      v18 = sub_1E1AF5DFC();
      v26 = v13;
      v20 = v19;

      v25 = *(v0 + OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_requestQueue);
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = v18;
      v23 = ObjectType;
      v22[4] = v20;
      v22[5] = v23;
      aBlock[4] = sub_1E194339C;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E1302D64;
      aBlock[3] = &block_descriptor_86;
      v24 = _Block_copy(aBlock);

      sub_1E1AF322C();
      v30 = v9;
      sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
      sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850);
      sub_1E1AF6EEC();
      MEMORY[0x1E68FF640](0, v8, v4, v24);
      _Block_release(v24);

      (*(v2 + 8))(v4, v1);
      (*(v28 + 8))(v8, v27);

      return;
    }

    if (qword_1EE1E7420 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(qword_1EE216538, qword_1EE216550);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();
  }

  else
  {
    if (qword_1EE1E7420 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(qword_1EE216538, qword_1EE216550);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();
  }
}

void *sub_1E1940A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    *&v10 = a2;
    *(&v10 + 1) = a3;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v14 = 0x80;
    sub_1E18D9194(&v10);
    v7 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
    v8 = sub_1E1AF68EC();
    v9[3] = v7;
    v9[4] = MEMORY[0x1E69AB720];
    v9[0] = v8;
    sub_1E1AF57FC();

    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return result;
}

id sub_1E1940B44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v14 = a1;
  v6 = sub_1E1AF320C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_dataCacheAvailabilityConditionLock;
  [*(v3 + OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_dataCacheAvailabilityConditionLock) lock];
  v11 = *(v3 + OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_dataCacheBox);
  v20 = a1;
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40, &unk_1E1B169A0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E1B02CC0;

  sub_1E1AF31FC();
  v22 = v12;
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1AF6EEC();
  v16 = sub_1E19434C8;
  v17 = &v19;
  v18 = v11;
  sub_1E1AF68FC();
  (*(v7 + 8))(v10, v6);

  return [*(v3 + v15) unlockWithCondition_];
}

void sub_1E1940DBC()
{
  ObjectType = swift_getObjectType();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = ObjectType;
  v10[4] = sub_1E1943570;
  v10[5] = v3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1E1367148;
  v10[3] = &block_descriptor_45_1;
  v4 = _Block_copy(v10);
  v5 = objc_opt_self();

  v6 = [v5 timerWithTimeInterval:0 repeats:v4 block:1.0];
  _Block_release(v4);

  v7 = *(v0 + OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_timeoutTimer);
  *(v0 + OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_timeoutTimer) = v6;
  v8 = v6;
  [v7 invalidate];

  v9 = [objc_opt_self() mainRunLoop];
  [v9 addTimer:v8 forMode:*MEMORY[0x1E695DA28]];
}

void *sub_1E1940F6C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_1E18D9194(a2);
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = a3;
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = a3;
    v9 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
    v10 = v6;
    v11 = sub_1E1AF68EC();
    v12[3] = v9;
    v12[4] = MEMORY[0x1E69AB720];
    v12[0] = v11;
    sub_1E1AF57FC();

    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return result;
}

double sub_1E19410B4(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v6 = sub_1E1AF320C();
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF324C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *&a2[OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_timeoutTimer];
  *&a2[OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_timeoutTimer] = 0;
  [v15 invalidate];

  v16 = *&a2[OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_requestPendingLock];
  [v16 lock];
  a2[OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_isRequestPending] = 0;
  [v16 unlock];
  if (*(v14 + 16) && (v17 = sub_1E13018F8(0x65736E6F70736572, 0xE800000000000000), (v18 & 1) != 0) && (sub_1E137A5C4(*(v14 + 56) + 32 * v17, &aBlock), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430), (swift_dynamicCast() & 1) != 0))
  {
    v19 = v33;
    sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
    v27 = sub_1E1AF68EC();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = a2;
    v20[4] = a3;
    v31 = sub_1E194355C;
    v32 = v20;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v30 = sub_1E1302D64;
    *(&v30 + 1) = &block_descriptor_38_1;
    v21 = _Block_copy(&aBlock);
    v22 = a2;

    sub_1E1AF322C();
    *&aBlock = MEMORY[0x1E69E7CC0];
    sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
    sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850);
    sub_1E1AF6EEC();
    v23 = v27;
    MEMORY[0x1E68FF640](0, v13, v8, v21);
    _Block_release(v21);

    (*(v28 + 8))(v8, v6);
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    if (qword_1EE1E7420 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(qword_1EE216538, qword_1EE216550);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    if (*(v14 + 16) && (v25 = sub_1E13018F8(0x65736E6F70736572, 0xE800000000000000), (v26 & 1) != 0))
    {
      sub_1E137A5C4(*(v14 + 56) + 32 * v25, &aBlock);
    }

    else
    {
      aBlock = 0u;
      v30 = 0u;
    }

    sub_1E1AF38BC();
    sub_1E13E44F8(&aBlock);
    sub_1E1AF54AC();
  }

  return result;
}

void sub_1E19415D4(uint64_t a1)
{
  v3 = 0xEB00000000617461;
  isUniquelyReferenced_nonNull_native = 0x44746E656D676573;
  if (!*(a1 + 16) || (v5 = sub_1E13018F8(0x44746E656D676573, 0xEB00000000617461), (v6 & 1) == 0) || (sub_1E137A5C4(*(a1 + 56) + 32 * v5, &v49), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA608, &unk_1E1B44390), (swift_dynamicCast() & 1) == 0))
  {
    v1 = a1;
    if (qword_1EE1E7420 != -1)
    {
LABEL_57:
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(qword_1EE216538, qword_1EE216550);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    if (*(v1 + 16) && (v10 = sub_1E13018F8(isUniquelyReferenced_nonNull_native, v3), (v11 & 1) != 0))
    {
      sub_1E137A5C4(*(v1 + 56) + 32 * v10, &v49);
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
    }

    sub_1E1AF38BC();
    sub_1E13E44F8(&v49);
    sub_1E1AF54AC();
    goto LABEL_14;
  }

  if (*(a1 + 16) && (v7 = sub_1E13018F8(0x6563697665446E6FLL, 0xEF736C616E676953), (v8 & 1) != 0) && (sub_1E137A5C4(*(a1 + 56) + 32 * v7, &v49), __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBA028, &unk_1E1B383A0), (swift_dynamicCast() & 1) != 0))
  {
    v9 = v48[0];
  }

  else
  {
    v9 = sub_1E15A2BDC(MEMORY[0x1E69E7CC0]);
  }

  if (*(v9 + 16))
  {
    MEMORY[0x1EEE9AC00](v9);
    sub_1E1943144(v12, sub_1E1943568);
    isUniquelyReferenced_nonNull_native = v13;

    if (!(isUniquelyReferenced_nonNull_native >> 62))
    {
      goto LABEL_18;
    }

LABEL_39:
    v14 = sub_1E1AF71CC();
    v42 = a1;
    if (v14)
    {
      goto LABEL_19;
    }

LABEL_40:
    v3 = MEMORY[0x1E69E7CC8];
LABEL_41:

    if (*(v42 + 16))
    {
      v35 = sub_1E13018F8(0x617461646174656DLL, 0xE800000000000000);
      if (v36)
      {
        sub_1E137A5C4(*(v42 + 56) + 32 * v35, v48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
        if (swift_dynamicCast())
        {
          if (*(v47 + 16) && (v37 = sub_1E13018F8(0x7363697274656DLL, 0xE700000000000000), (v38 & 1) != 0))
          {
            sub_1E137A5C4(*(v47 + 56) + 32 * v37, &v49);

            if (swift_dynamicCast())
            {
              v39 = v48[0];
LABEL_50:
              v40 = qword_1EE1E7420;

              if (v40 != -1)
              {
                swift_once();
              }

              __swift_project_boxed_opaque_existential_1Tm(qword_1EE216538, qword_1EE216550);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
              sub_1E1AF38EC();
              *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
              sub_1E1AF382C();
              v41 = v3[2];

              *(&v50 + 1) = MEMORY[0x1E69E6530];
              *&v49 = v41;
              sub_1E1AF38BC();
              sub_1E13E44F8(&v49);
              sub_1E1AF548C();

              sub_1E1940B44(v3, v39);

LABEL_14:

              return;
            }
          }

          else
          {
          }
        }
      }
    }

    v39 = sub_1E1303A74(MEMORY[0x1E69E7CC0]);
    goto LABEL_50;
  }

  sub_1E193EF18(v48[0]);
  isUniquelyReferenced_nonNull_native = v34;

  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_39;
  }

LABEL_18:
  v14 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  v42 = a1;
  if (!v14)
  {
    goto LABEL_40;
  }

LABEL_19:
  v15 = 0;
  v44 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v45 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v3 = MEMORY[0x1E69E7CC8];
  v43 = isUniquelyReferenced_nonNull_native;
  while (1)
  {
    if (v45)
    {
      v18 = MEMORY[0x1E68FFD80](v15, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      if (v15 >= *(v44 + 16))
      {
        goto LABEL_54;
      }

      v18 = *(isUniquelyReferenced_nonNull_native + 8 * v15 + 32);
    }

    v19 = v18;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v46 = v15 + 1;
    v1 = *&v18[OBJC_IVAR____TtC11AppStoreKit27OnDevicePersonalizationData_appId];
    v20 = *&v18[OBJC_IVAR____TtC11AppStoreKit27OnDevicePersonalizationData_appId + 8];

    v21 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v49 = v3;
    v23 = sub_1E13018F8(v1, v20);
    v24 = v3[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_55;
    }

    v27 = v22;
    if (v3[3] < v26)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v22)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_1E14199C8();
      if (v27)
      {
LABEL_20:

        v3 = v49;
        v16 = *(v49 + 56);
        v17 = *(v16 + 8 * v23);
        *(v16 + 8 * v23) = v21;

        goto LABEL_21;
      }
    }

LABEL_33:
    v3 = v49;
    *(v49 + 8 * (v23 >> 6) + 64) |= 1 << v23;
    v30 = (v3[6] + 16 * v23);
    *v30 = v1;
    v30[1] = v20;
    *(v3[7] + 8 * v23) = v21;

    v31 = v3[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_56;
    }

    v3[2] = v33;
LABEL_21:
    ++v15;
    isUniquelyReferenced_nonNull_native = v43;
    if (v46 == v14)
    {
      goto LABEL_41;
    }
  }

  sub_1E168FBA0(v26, isUniquelyReferenced_nonNull_native);
  v28 = sub_1E13018F8(v1, v20);
  if ((v27 & 1) == (v29 & 1))
  {
    v23 = v28;
    if (v27)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

  sub_1E1AF757C();
  __break(1u);
}

id sub_1E1941D88(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (*(a3 + 16) && (v8 = sub_1E13018F8(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(a3 + 56) + 8 * v8);
  }

  else
  {
    v10 = &unk_1F5C2DD88;
  }

  v11 = type metadata accessor for OnDevicePersonalizationData();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC11AppStoreKit27OnDevicePersonalizationData_appId];
  *v13 = a1;
  *(v13 + 1) = a2;
  *&v12[OBJC_IVAR____TtC11AppStoreKit27OnDevicePersonalizationData_userSegments] = v10;
  *&v12[OBJC_IVAR____TtC11AppStoreKit27OnDevicePersonalizationData_onDeviceSignals] = a4;
  v15.receiver = v12;
  v15.super_class = v11;

  return objc_msgSendSuper2(&v15, sel_init);
}

double sub_1E1941E64(uint64_t a1, uint64_t a2)
{
  if (qword_1EE1E7420 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216538, qword_1EE216550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v11[3] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38DC();
  sub_1E13E44F8(v11);
  sub_1E1AF54AC();

  v4 = *(a2 + OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_timeoutTimer);
  *(a2 + OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_timeoutTimer) = 0;
  [v4 invalidate];

  v5 = *(a2 + OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_requestPendingLock);
  [v5 lock];
  *(a2 + OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_isRequestPending) = 0;
  [v5 unlock];
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1E15A19DC(MEMORY[0x1E69E7CC0]);
  v8 = sub_1E1303A74(v6);
  sub_1E1940B44(v7, v8);

  return result;
}

double sub_1E19420C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_timeoutTimer);
    *(Strong + OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_timeoutTimer) = 0;
    v4 = Strong;
    [v3 invalidate];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_requestPendingLock;
    v7 = v5;
    [*(v5 + OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_requestPendingLock) lock];
    v7[OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_isRequestPending] = 0;
    [*&v7[v6] unlock];
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0x1E69E7CC0];
    v11 = sub_1E15A19DC(MEMORY[0x1E69E7CC0]);
    v12 = sub_1E1303A74(v10);
    sub_1E1940B44(v11, v12);
  }

  if (qword_1EE1E7420 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216538, qword_1EE216550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v14[3] = MEMORY[0x1E69E63B0];
  v14[0] = 0x3FF0000000000000;
  sub_1E1AF38BC();
  sub_1E13E44F8(v14);
  sub_1E1AF54AC();

  return result;
}

void sub_1E1942348()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1E1AF320C();
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF324C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_activeStoreAccount;
  v11 = *&v0[OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_activeStoreAccount];
  v12 = *&v0[OBJC_IVAR____TtC11AppStoreKit34OnDevicePersonalizationDataManager_accountStore];
  v30 = v11;
  v13 = [v12 ams_activeiTunesAccount];
  v14 = *&v1[v10];
  *&v1[v10] = v13;

  v15 = *&v1[v10];
  if ((v15 == 0) != (v11 == 0))
  {
    goto LABEL_12;
  }

  v16 = [v15 ams_DSID];
  v17 = [v30 ams_DSID];
  v18 = v17;
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_7;
    }

LABEL_11:

LABEL_12:
    sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
    v28 = sub_1E1AF68EC();
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    *(v21 + 24) = ObjectType;
    aBlock[4] = sub_1E1943420;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    aBlock[3] = &block_descriptor_18_1;
    v22 = _Block_copy(aBlock);
    v23 = v1;

    v24 = v9;
    sub_1E1AF322C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
    v25 = v29;
    v27 = v6;
    sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850);
    sub_1E1AF6EEC();
    v26 = v28;
    MEMORY[0x1E68FF640](0, v24, v5, v22);
    _Block_release(v22);

    (*(v25 + 8))(v5, v3);
    (*(v7 + 8))(v24, v27);
    return;
  }

  if (!v17)
  {
    v18 = v16;
    goto LABEL_11;
  }

  sub_1E13006E4(0, &qword_1EE1E31F0, 0x1E696AD98);
  v19 = sub_1E1AF6D0C();

  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v20 = v30;
}

void sub_1E194275C()
{
  if (qword_1EE1E7420 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216538, qword_1EE216550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  sub_1E193F950(1);
}

uint64_t sub_1E19428F0()
{
  v1 = sub_1E1AF320C();
  v13 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF324C();
  v4 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  v7 = sub_1E1AF68EC();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1E19433F8;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_12_4;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v6, v3, v9);
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

id OnDevicePersonalizationDataManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OnDevicePersonalizationDataManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1E1942DA0@<D0>(void (*a1)(__int128 *__return_ptr, void *)@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v10[0] = v6;
  v10[1] = v7;
  v8 = sub_1E1943448(v6);
  (a1)(&v11, v10, v8);
  sub_1E1943488(v6, v7);
  result = *&v11;
  *a3 = v11;
  return result;
}

double sub_1E1942E44()
{
  if (qword_1EE1E7420 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216538, qword_1EE216550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  return result;
}

double sub_1E1942F8C(uint64_t a1)
{
  if (qword_1EE1E7420 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216538, qword_1EE216550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v4[3] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38DC();
  sub_1E13E44F8(v4);
  sub_1E1AF54AC();

  return result;
}

void sub_1E1943144(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, double))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1E1AF70EC();
    v3 = a1;
    v4 = a1 + 64;
    v5 = sub_1E1AF6EFC();
    v6 = 0;
    v7 = *(a1 + 36);
    v22 = v2;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v3 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v3 + 36))
      {
        goto LABEL_22;
      }

      v10 = v4;
      v11 = (*(v3 + 48) + 16 * v5);
      v12 = *v11;
      v13 = v11[1];
      v14 = *(*(v3 + 56) + 8 * v5);

      a2(v12, v13, v14);

      sub_1E1AF70BC();
      sub_1E1AF70FC();
      sub_1E1AF710C();
      sub_1E1AF70CC();
      v3 = a1;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v15 = *(v10 + 8 * v9);
      if ((v15 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v4 = v10;
      v16 = v15 & (-2 << (v5 & 0x3F));
      if (v16)
      {
        v8 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v9 << 6;
        v18 = v9 + 1;
        v19 = (a1 + 72 + 8 * v9);
        while (v18 < (v8 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_1E142EA30(v5, v7, 0);
            v8 = __clz(__rbit64(v20)) + v17;
            goto LABEL_18;
          }
        }

        sub_1E142EA30(v5, v7, 0);
LABEL_18:
        v3 = a1;
      }

      ++v6;
      v5 = v8;
      if (v6 == v22)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

double sub_1E1943448(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

double sub_1E1943488(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

double sub_1E19434C8(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1E1943488(*a1, a1[1]);
  *a1 = v4;
  a1[1] = v3;

  return sub_1E1943448(v4);
}

uint64_t SearchLockupListLayout.__allocating_init(metrics:iconHeadingView:titleHeadingView:lockupCollectionView:)(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v8 = swift_allocObject();
  v9 = *(a1 + 112);
  *(v8 + 232) = *(a1 + 96);
  *(v8 + 248) = v9;
  *(v8 + 264) = *(a1 + 128);
  v10 = *(a1 + 48);
  *(v8 + 168) = *(a1 + 32);
  *(v8 + 184) = v10;
  v11 = *(a1 + 80);
  *(v8 + 200) = *(a1 + 64);
  *(v8 + 216) = v11;
  v12 = *(a1 + 16);
  *(v8 + 136) = *a1;
  *(v8 + 280) = *(a1 + 144);
  *(v8 + 152) = v12;
  sub_1E1308EC0(a2, v8 + 16);
  sub_1E1308EC0(a3, v8 + 56);
  sub_1E1308EC0(a4, v8 + 96);
  return v8;
}

uint64_t SearchLockupListLayout.init(metrics:iconHeadingView:titleHeadingView:lockupCollectionView:)(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v7 = *(a1 + 112);
  *(v4 + 232) = *(a1 + 96);
  *(v4 + 248) = v7;
  *(v4 + 264) = *(a1 + 128);
  v8 = *(a1 + 48);
  *(v4 + 168) = *(a1 + 32);
  *(v4 + 184) = v8;
  v9 = *(a1 + 80);
  *(v4 + 200) = *(a1 + 64);
  *(v4 + 216) = v9;
  v10 = *(a1 + 16);
  *(v4 + 136) = *a1;
  *(v4 + 280) = *(a1 + 144);
  *(v4 + 152) = v10;
  sub_1E1308EC0(a2, v4 + 16);
  sub_1E1308EC0(a3, v4 + 56);
  sub_1E1308EC0(a4, v4 + 96);
  return v4;
}

uint64_t SearchLockupListLayout.Metrics.init(headingLeadingSpace:titleLeadingSpace:lockupCollectionViewTopSpace:layoutMargins:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  sub_1E1308EC0(a1, a4);
  sub_1E1308EC0(a2, (a4 + 5));
  result = sub_1E1308EC0(a3, (a4 + 10));
  a4[15] = a5;
  a4[16] = a6;
  a4[17] = a7;
  a4[18] = a8;
  return result;
}

double sub_1E194389C(uint64_t a1, double a2, double a3)
{
  v3 = sub_1E1AF17AC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1943AC4(v6);
  sub_1E1AF172C();
  v8 = v7;
  (*(v4 + 8))(v6, v3);
  return v8;
}

uint64_t sub_1E19439B4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = sub_1E1AF17AC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1943AC4(v8);
  sub_1E1AF173C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1E1943AC4@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v49 = a1;
  v61 = sub_1E1AF175C();
  v68 = *(v61 - 8);
  v4 = v68;
  MEMORY[0x1EEE9AC00](v61);
  v56 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1E1AF176C();
  v67 = *(v43 - 8);
  v6 = v67;
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1E1AF171C();
  v66 = *(v50 - 8);
  v8 = v66;
  MEMORY[0x1EEE9AC00](v50);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB51B0, &qword_1E1B356E0);
  v11 = *(sub_1E1AF179C() - 8);
  v46 = *(v11 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v47 = 2 * v46;
  v13 = swift_allocObject();
  v48 = v13;
  *(v13 + 16) = xmmword_1E1B03760;
  v51 = v13 + v12;
  __swift_project_boxed_opaque_existential_1Tm(v3 + 2, v3[5]);
  sub_1E1AF119C();
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v45 = *MEMORY[0x1E69AB990];
  v14 = *(v8 + 104);
  v64 = v8 + 104;
  v65 = v14;
  v14(v10);
  v44 = *MEMORY[0x1E69AB9B8];
  v15 = *(v6 + 104);
  v62 = v6 + 104;
  v63 = v15;
  v16 = v42;
  v17 = v43;
  v15(v42);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB51B8, &unk_1E1B14B50);
  v59 = *(v4 + 72);
  v18 = v68;
  v58 = *(v68 + 80);
  v41 = (v58 + 32) & ~v58;
  v19 = swift_allocObject();
  v57 = xmmword_1E1B02CC0;
  *(v19 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF174C();
  v69 = v19;
  v54 = sub_1E152CEEC(v20);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB51C0, &unk_1E1B444D0);
  v55 = sub_1E152CF44();
  v21 = v56;
  v22 = v61;
  sub_1E1AF6EEC();
  v23 = v38;
  sub_1E1AF178C();
  v40 = *(v18 + 8);
  v68 = v18 + 8;
  v40(v21, v22);
  v39 = *(v67 + 8);
  v67 += 8;
  v24 = v17;
  v39(v16, v17);
  v25 = *(v66 + 8);
  v66 += 8;
  v52 = v25;
  v26 = v50;
  v25(v23, v50);
  sub_1E141E174(&v70);
  __swift_destroy_boxed_opaque_existential_1(v73);
  __swift_project_boxed_opaque_existential_1Tm(v3 + 7, v3[10]);
  sub_1E1AF119C();
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v27 = v26;
  v65(v23, v45, v26);
  v63(v16, v44, v24);
  v28 = swift_allocObject();
  *(v28 + 16) = v57;
  sub_1E1AF174C();
  v69 = v28;
  v29 = v56;
  v30 = v61;
  sub_1E1AF6EEC();
  sub_1E1AF178C();
  v31 = v40;
  v40(v29, v30);
  v32 = v24;
  v33 = v24;
  v34 = v39;
  v39(v16, v33);
  v52(v23, v27);
  sub_1E141E174(&v70);
  __swift_destroy_boxed_opaque_existential_1(v73);
  v74 = 0;
  memset(v73, 0, sizeof(v73));
  v65(v23, *MEMORY[0x1E69AB998], v27);
  v35 = v32;
  v63(v16, *MEMORY[0x1E69AB9B0], v32);
  v36 = swift_allocObject();
  *(v36 + 16) = v57;
  sub_1E1AF174C();
  *&v70 = v36;
  sub_1E1AF6EEC();
  sub_1E1AF178C();
  v31(v29, v30);
  v34(v16, v35);
  v52(v23, v50);
  sub_1E141E174(v73);
  return sub_1E1AF177C();
}

void *SearchLockupListLayout.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_1E1944354((v0 + 17));
  return v0;
}

uint64_t SearchLockupListLayout.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_1E1944354((v0 + 17));

  return swift_deallocClassInstance();
}

uint64_t sub_1E19443D4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = sub_1E1AF17AC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1943AC4(v8);
  sub_1E1AF173C();
  return (*(v6 + 8))(v8, v5);
}

double sub_1E19444E8(uint64_t a1, double a2, double a3)
{
  v3 = sub_1E1AF17AC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1943AC4(v6);
  sub_1E1AF172C();
  v8 = v7;
  (*(v4 + 8))(v6, v3);
  return v8;
}

id static UIViewPropertyAnimator.fadeInPropertyAnimator.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC908]) init];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v0 timingParameters:0.15];

  return v1;
}

void sub_1E1944940(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 16);
  v6 = objc_opt_self();
  v7 = [v6 valueWithNewObjectInContext_];
  if (!v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = v7;

  v9 = v8;
  v10 = [v6 valueWithObject:sub_1E1AF755C() inContext:{a1, v4, v3}];
  swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1E1AF6C5C();
  LOBYTE(v12) = v5;
  v11 = [v6 valueWithObject:sub_1E1AF755C() inContext:{a1, v12}];
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_1E1AF6C5C();

    return;
  }

LABEL_7:
  __break(1u);
}

unint64_t sub_1E1944AC4()
{
  result = qword_1ECEBB498;
  if (!qword_1ECEBB498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB498);
  }

  return result;
}

unint64_t sub_1E1944B20()
{
  result = qword_1ECEBB4A0;
  if (!qword_1ECEBB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB4A0);
  }

  return result;
}

uint64_t GenericPageMoreIntent.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = a2;
  v24 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AEFCCC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  sub_1E1AF381C();
  sub_1E1AF36FC();
  v15 = *(v8 + 8);
  v15(v10, v7);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_1E13ECBA0(v6);
    v16 = sub_1E1AF5A7C();
    sub_1E19456D4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v17 = 0x656B6F5465676170;
    v17[1] = 0xE90000000000006ELL;
    v17[2] = &type metadata for GenericPageMoreIntent;
    (*(*(v16 - 8) + 104))(v17, *MEMORY[0x1E69AB690], v16);
    swift_willThrow();
  }

  else
  {
    v20 = *(v12 + 32);
    v20(v14, v6, v11);
    v21 = v24;
    v24[3] = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
    v20(boxed_opaque_existential_0, v14, v11);
  }

  v18 = sub_1E1AF39DC();
  (*(*(v18 - 8) + 8))(v25, v18);
  return (v15)(v26, v7);
}

JSValue __swiftcall GenericPageMoreIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
    v6 = isa;
    v7 = [v3 valueWithObject:sub_1E1AF748C() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v7)
    {
      sub_1E1AF6C5C();

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1E1945060(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = [v3 valueWithNewObjectInContext_];
  if (v4)
  {
    v5 = v4;
    __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
    v6 = v5;
    v7 = [v3 valueWithObject:sub_1E1AF748C() inContext:a1];
    swift_unknownObjectRelease();
    if (v7)
    {
      sub_1E1AF6C5C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t AnyGenericPageMoreIntent.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v29 = a3;
  v30 = a2;
  v28 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AEFCCC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  sub_1E1AF381C();
  sub_1E1AF36FC();
  v16 = *(v9 + 8);
  v16(v11, v8);
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_1E13ECBA0(v7);
    v17 = sub_1E1AF5A7C();
    sub_1E19456D4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v19 = v18;
    v22 = type metadata accessor for AnyGenericPageMoreIntent(0, v29, v20, v21);
    *v19 = 0x656B6F5465676170;
    v19[1] = 0xE90000000000006ELL;
    v19[2] = v22;
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69AB690], v17);
    swift_willThrow();
  }

  else
  {
    v25 = *(v13 + 32);
    v25(v15, v7, v12);
    v26 = v28;
    v28[3] = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
    v25(boxed_opaque_existential_0, v15, v12);
  }

  v23 = sub_1E1AF39DC();
  (*(*(v23 - 8) + 8))(v30, v23);
  return (v16)(v31, v8);
}

JSValue __swiftcall AnyGenericPageMoreIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
    v6 = isa;
    v7 = [v3 valueWithObject:sub_1E1AF748C() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v7)
    {
      sub_1E1AF6C5C();

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E1945634()
{
  result = qword_1ECEBB4A8[0];
  if (!qword_1ECEBB4A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEBB4A8);
  }

  return result;
}

uint64_t sub_1E19456D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E19457A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E19457DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E1945824(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t ReportConcernReason.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReportConcernReason.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ReportConcernReason.uppercaseName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ReportConcernReason.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v37 = a3;
  v39 = a2;
  v4 = 0x64496E6F73616572;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  sub_1E1AF381C();
  v36 = sub_1E1AF37CC();
  v16 = v15;
  v17 = *(v6 + 8);
  v17(v14, v5);
  if (v16)
  {
    v38 = v16;
    v4 = 1701667182;
    sub_1E1AF381C();
    v18 = sub_1E1AF37CC();
    v20 = v19;
    v17(v11, v5);
    if (v20)
    {
      v35 = v18;
      v4 = 0x7361637265707075;
      sub_1E1AF381C();
      v21 = sub_1E1AF37CC();
      v23 = v22;
      v17(v8, v5);
      if (v23)
      {
        v24 = sub_1E1AF39DC();
        (*(*(v24 - 8) + 8))(v39, v24);
        result = (v17)(a1, v5);
        v26 = v37;
        v27 = v38;
        *v37 = v36;
        v26[1] = v27;
        v26[2] = v35;
        v26[3] = v20;
        v26[4] = v21;
        v26[5] = v23;
        return result;
      }

      v30 = 0xED0000656D614E65;
      v28 = v17;
    }

    else
    {
      v30 = 0xE400000000000000;
      v28 = v17;
    }

    v29 = v30;
  }

  else
  {
    v28 = v17;
    v29 = 0xE800000000000000;
  }

  v31 = sub_1E1AF5A7C();
  sub_1E1380704();
  swift_allocError();
  *v32 = v4;
  v32[1] = v29;
  v32[2] = &type metadata for ReportConcernReason;
  (*(*(v31 - 8) + 104))(v32, *MEMORY[0x1E69AB690], v31);
  swift_willThrow();
  v33 = sub_1E1AF39DC();
  (*(*(v33 - 8) + 8))(v39, v33);
  return v28(a1, v5);
}

uint64_t static ReportConcernReason.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E1AF74AC() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1E1AF74AC() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1E1AF74AC();
}

uint64_t ReportConcernReason.hash(into:)(uint64_t a1)
{
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();

  return sub_1E1AF5F0C();
}

uint64_t ReportConcernReason.hashValue.getter()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E1945ED4()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E1945F58(uint64_t a1)
{
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();

  return sub_1E1AF5F0C();
}

uint64_t sub_1E1945FC4(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E1946044(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E1AF74AC() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1E1AF74AC() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1E1AF74AC();
}

AppStoreKit::ReportConcernAction::Parameter_optional __swiftcall ReportConcernAction.Parameter.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

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

uint64_t ReportConcernAction.Parameter.rawValue.getter()
{
  if (*v0)
  {
    return 0x74616E616C707865;
  }

  else
  {
    return 0x64657463656C6573;
  }
}

uint64_t sub_1E19461F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74616E616C707865;
  }

  else
  {
    v3 = 0x64657463656C6573;
  }

  if (v2)
  {
    v4 = 0xEE006E6F73616552;
  }

  else
  {
    v4 = 0xEB000000006E6F69;
  }

  if (*a2)
  {
    v5 = 0x74616E616C707865;
  }

  else
  {
    v5 = 0x64657463656C6573;
  }

  if (*a2)
  {
    v6 = 0xEB000000006E6F69;
  }

  else
  {
    v6 = 0xEE006E6F73616552;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E19462AC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E1946344(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E19463C8(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E194645C(char *a2@<X8>)
{
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1E19464BC(uint64_t *a1@<X8>)
{
  v2 = 0x64657463656C6573;
  if (*v1)
  {
    v2 = 0x74616E616C707865;
  }

  v3 = 0xEE006E6F73616552;
  if (*v1)
  {
    v3 = 0xEB000000006E6F69;
  }

  *a1 = v2;
  a1[1] = v3;
}

char *ReportConcernAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v80 = a2;
  v74 = v4;
  v6 = *v4;
  v72 = v3;
  v73 = v6;
  v7 = sub_1E1AF39DC();
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v67 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v71 = v62 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v69 = v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v62 - v14;
  v16 = sub_1E1AF380C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v65 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v70 = v62 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v68 = (v62 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v62 - v24;
  v26 = sub_1E1AF5A6C();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v62 - v31;
  v78 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v66 = v17;
  v33 = *(v17 + 8);
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v79 = v16;
  v33(v34, v16);
  v37 = (*(v27 + 48))(v15, 1, v35);
  v75 = v33;
  if (v37 == 1)
  {
    sub_1E1308058(v15, &qword_1ECEB1F90, &qword_1E1B00D30);
LABEL_5:
    v38 = v76;
    v39 = v74;
    v40 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v41 = 0x736E6F73616572;
    v41[1] = 0xE700000000000000;
    v41[2] = v73;
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x1E69AB690], v40);
    swift_willThrow();
    (*(v38 + 8))(v80, v77);
    v75(v78, v79);
    goto LABEL_6;
  }

  (*(v27 + 32))(v32, v15, v35);
  if (sub_1E1AF5A3C())
  {
    (*(v27 + 8))(v32, v35);
    goto LABEL_5;
  }

  (*(v27 + 16))(v29, v32, v35);
  v43 = v77;
  v44 = v76 + 16;
  v64 = *(v76 + 16);
  v64(v69, v80, v77);
  sub_1E146891C();
  v45 = sub_1E1AF631C();
  v62[2] = OBJC_IVAR____TtC11AppStoreKit19ReportConcernAction_reasons;
  v63 = v32;
  v39 = v74;
  *&v74[OBJC_IVAR____TtC11AppStoreKit19ReportConcernAction_reasons] = v45;
  v46 = v68;
  sub_1E1AF381C();
  v47 = sub_1E1AF37CC();
  v69 = v35;
  v49 = v48;
  v75(v46, v79);
  v50 = &v39[OBJC_IVAR____TtC11AppStoreKit19ReportConcernAction_explanation];
  *v50 = v47;
  v50[1] = v49;
  v68 = v50;
  v51 = v70;
  sub_1E1AF381C();
  v52 = v71;
  v62[1] = v44;
  v64(v71, v80, v43);
  type metadata accessor for HttpTemplateAction(0);
  swift_allocObject();
  v53 = v72;
  v54 = HttpTemplateAction.init(deserializing:using:)(v51, v52);
  if (!v53)
  {
    *&v39[OBJC_IVAR____TtC11AppStoreKit19ReportConcernAction_sendAction] = v54;
    v55 = v65;
    v56 = v78;
    (*(v66 + 16))(v65, v78, v79);
    v57 = v67;
    v58 = v80;
    v59 = v77;
    v64(v67, v80, v77);
    v60 = Action.init(deserializing:using:)(v55, v57);
    v61 = v79;
    v39 = v60;
    (*(v76 + 8))(v58, v59);
    v75(v56, v61);
    (*(v36 + 8))(v63, v69);
    return v39;
  }

  (*(v76 + 8))(v80, v77);
  v75(v78, v79);
  (*(v36 + 8))(v63, v69);

LABEL_6:
  swift_deallocPartialClassInstance();
  return v39;
}

uint64_t ReportConcernAction.explanation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit19ReportConcernAction_explanation);

  return v1;
}

double sub_1E1946D64()
{

  return result;
}

uint64_t ReportConcernAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return v0;
}

uint64_t ReportConcernAction.__deallocating_deinit()
{
  ReportConcernAction.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1E1946F18()
{
  result = qword_1ECEBB530;
  if (!qword_1ECEBB530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB530);
  }

  return result;
}

unint64_t sub_1E1946F70()
{
  result = qword_1ECEBB538;
  if (!qword_1ECEBB538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB538);
  }

  return result;
}

uint64_t type metadata accessor for ReportConcernAction(uint64_t a1)
{
  result = qword_1EE1EE8A0;
  if (!qword_1EE1EE8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E19470A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24D8, qword_1E1B20270);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v83 - v3;
  v5 = sub_1E1AEFE6C();
  v86 = *(v5 - 8);
  v87 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v83 - v9;
  v11 = sub_1E1AF3C1C();
  v88 = *(v11 - 8);
  v89 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF4FBC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E1AF4A9C();
  v84 = *(v18 - 8);
  v85 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v83 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StoreViewControllerLifecycleEvent(0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1625840(a1, v23, v21);
  v24 = (*(v15 + 48))(v23, 11, v14);
  if (v24 > 6)
  {
    if (v24 <= 8)
    {
      if (v24 != 7)
      {
        v41 = v90;
        ImpressionsCalculator.isVisible.setter(1);
        if (qword_1EE1F3430 != -1)
        {
          swift_once();
        }

        v42 = off_1EE1F3438;
        v43 = (v41 + qword_1EE216748);
        swift_beginAccess();
        v44 = v43[1];
        v42[8] = *v43;
        v42[9] = v44;

        swift_beginAccess();
        *(v42 + 80) = 2;
        return;
      }

      sub_1E1AF3BBC();
      v56 = v13;
LABEL_62:
      sub_1E183B864(v56);
      goto LABEL_63;
    }

    switch(v24)
    {
      case 9:
        v68 = v90;
        v69 = (v90 + qword_1EE216770);
        swift_beginAccess();
        if (!v69[1])
        {
          if (qword_1EE1F3430 != -1)
          {
            swift_once();
          }

          v78 = *(off_1EE1F3438 + 2);
          v77 = *(off_1EE1F3438 + 3);
          *v69 = v78;
          v69[1] = v77;

          if (v77)
          {
            swift_beginAccess();
            if (v68[4])
            {
              v79 = qword_1EE1E3990;

              if (v79 != -1)
              {
                swift_once();
              }

              v80 = v85;
              __swift_project_value_buffer(v85, qword_1EE1E3998);
              v95 = v78;
              v96 = v77;
              if (qword_1EE1E39B8 != -1)
              {
                swift_once();
              }

              v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78, &unk_1E1B297F0);
              __swift_project_value_buffer(v81, qword_1EE1E39C0);
              v82 = v83;
              sub_1E1AF4A3C();

              sub_1E1AF505C();

              (*(v84 + 8))(v82, v80);
            }
          }
        }

        v70 = qword_1EE216768;
        swift_beginAccess();
        if (*(v68 + v70))
        {

          MetricsPageEnterGate.hasAppeared.setter(1);
        }

        return;
      case 10:
        v74 = qword_1EE216768;
        v75 = v90;
        swift_beginAccess();
        v76 = *(v75 + v74);
        if (v76)
        {
          swift_beginAccess();
          *(v76 + 32) = 0;
        }

        sub_1E1AF3BEC();
        sub_1E183B864(v13);
        (*(v88 + 8))(v13, v89);
        if (qword_1EE1F3430 != -1)
        {
          swift_once();
        }

        sub_1E16CEE88(0);
        return;
      case 11:
        ImpressionsCalculator.isVisible.setter(0);
        if (qword_1EE1F3430 != -1)
        {
          swift_once();
        }

        v32 = off_1EE1F3438;
        *(off_1EE1F3438 + 8) = 0;
        v32[9] = 0;

        swift_beginAccess();
        *(v32 + 80) = 2;
        return;
    }

    goto LABEL_69;
  }

  if (v24 <= 2)
  {
    if (!v24)
    {
      (*(v15 + 32))(v17, v23, v14);
      v45 = qword_1EE216768;
      v46 = v90;
      swift_beginAccess();
      v47 = *(v46 + v45);
      if (v47)
      {
        swift_beginAccess();
        *(v47 + 32) = 0;
      }

      sub_1E1AF3BEC();
      sub_1E183B864(v13);
      (*(v88 + 8))(v13, v89);
      if (qword_1EE1F3430 != -1)
      {
        swift_once();
      }

      v48 = off_1EE1F3438;
      sub_1E16CEE88(0);
      swift_beginAccess();
      v49 = v46[3];
      if (v49)
      {
        (*(v15 + 16))(v4, v17, v14);

        sub_1E1AEFE5C();
        sub_1E1AEFE1C();
        v51 = v50;
        (*(v86 + 8))(v7, v87);
        v52 = type metadata accessor for PendingPageRender.DisappearTimeAndReason(0);
        *&v4[*(v52 + 20)] = v51;
        (*(*(v52 - 8) + 56))(v4, 0, 1, v52);
        v53 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_disappearTime;
        swift_beginAccess();
        sub_1E137F8F8(v4, v49 + v53, &qword_1ECEB24D8, qword_1E1B20270);
        swift_endAccess();
        sub_1E172AF90();

        sub_1E1308058(v4, &qword_1ECEB24D8, qword_1E1B20270);
      }

      v54 = v90;
      swift_beginAccess();
      if (v54[4])
      {

        sub_1E1AF507C();
      }

      ImpressionsCalculator.isVisible.setter(0);
      v48[8] = 0;
      v48[9] = 0;

      swift_beginAccess();
      *(v48 + 80) = 2;
      (*(v15 + 8))(v17, v14);
      v92 = 0;
      memset(v91, 0, sizeof(v91));
      swift_beginAccess();
      v55 = (v48 + 12);
      goto LABEL_55;
    }

    if (v24 == 1)
    {
      v33 = v90;
      v34 = (v90 + qword_1EE216770);
      swift_beginAccess();
      if (!v34[1])
      {
        if (qword_1EE1F3430 != -1)
        {
          swift_once();
        }

        v36 = *(off_1EE1F3438 + 2);
        v35 = *(off_1EE1F3438 + 3);
        *v34 = v36;
        v34[1] = v35;

        if (v35)
        {
          swift_beginAccess();
          if (v33[4])
          {
            v37 = qword_1EE1E3990;

            if (v37 != -1)
            {
              swift_once();
            }

            v38 = v85;
            __swift_project_value_buffer(v85, qword_1EE1E3998);
            v93 = v36;
            v94 = v35;
            if (qword_1EE1E39B8 != -1)
            {
              swift_once();
            }

            v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78, &unk_1E1B297F0);
            __swift_project_value_buffer(v39, qword_1EE1E39C0);
            v40 = v83;
            sub_1E1AF4A3C();

            sub_1E1AF505C();

            (*(v84 + 8))(v40, v38);
          }
        }
      }

      return;
    }

LABEL_69:
    sub_1E16258A4(v23, v25);
    return;
  }

  if (v24 == 3)
  {
    v57 = v90;
    sub_1E1948000();
    v58 = qword_1EE216768;
    swift_beginAccess();
    if (*(v57 + v58))
    {

      MetricsPageEnterGate.hasAppeared.setter(1);
    }

    swift_beginAccess();
    v59 = v57[3];
    if (v59)
    {

      sub_1E1AEFE5C();
      sub_1E1AEFE1C();
      v61 = v60;
      (*(v86 + 8))(v10, v87);
      v62 = v59 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_appearTime;
      swift_beginAccess();
      *v62 = v61;
      *(v62 + 8) = 0;
      v63 = *(v59 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasAppearTime);
      swift_beginAccess();
      *(v63 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    swift_beginAccess();
    if (v57[4])
    {

      sub_1E1AF506C();
    }

    ImpressionsCalculator.isVisible.setter(1);
    if (qword_1EE1F3430 != -1)
    {
      swift_once();
    }

    v64 = off_1EE1F3438;
    v65 = (v57 + qword_1EE216748);
    swift_beginAccess();
    v66 = v65[1];
    v64[8] = *v65;
    v64[9] = v66;

    v67 = *(*v57 + 192);
    swift_beginAccess();
    sub_1E134FD1C(v57 + v67, v91, &unk_1ECEB7230, qword_1E1B103B0);
    swift_beginAccess();
    v55 = (v64 + 12);
LABEL_55:
    sub_1E1533994(v91, v55);
    swift_endAccess();
    return;
  }

  if (v24 == 5)
  {
    v71 = qword_1EE216768;
    v72 = v90;
    swift_beginAccess();
    v73 = *(v72 + v71);
    if (v73)
    {
      swift_beginAccess();
      *(v73 + 33) = 1;
    }

    sub_1E1AF3BCC();
    v56 = v13;
    goto LABEL_62;
  }

  if (v24 != 6)
  {
    goto LABEL_69;
  }

  v26 = qword_1EE216768;
  v27 = v90;
  swift_beginAccess();
  v28 = *(v27 + v26);
  if (v28)
  {
    swift_beginAccess();
    v29 = *(v28 + 33);
    *(v28 + 33) = 0;
    if (v29 == 1)
    {
      swift_beginAccess();
      if (*(v28 + 34) == 1)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v30 = *(v28 + 24);
          ObjectType = swift_getObjectType();

          sub_1E1AF3BDC();
          (*(v30 + 8))(v13, ObjectType, v30);

          swift_unknownObjectRelease();
LABEL_63:
          (*(v88 + 8))(v13, v89);
        }
      }
    }
  }
}

double sub_1E1948000()
{
  v1 = sub_1E1AF4A9C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + qword_1EE216770);
  swift_beginAccess();
  if (!v5[1])
  {
    if (qword_1EE1F3430 != -1)
    {
      swift_once();
    }

    v8 = *(off_1EE1F3438 + 2);
    v7 = *(off_1EE1F3438 + 3);
    *v5 = v8;
    v5[1] = v7;
    swift_bridgeObjectRetain_n();

    if (v7)
    {
      swift_beginAccess();
      if (*(v0 + 32))
      {
        v9 = qword_1EE1E3990;

        if (v9 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1, qword_1EE1E3998);
        v11[0] = v8;
        v11[1] = v7;
        if (qword_1EE1E39B8 != -1)
        {
          swift_once();
        }

        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78, &unk_1E1B297F0);
        __swift_project_value_buffer(v10, qword_1EE1E39C0);
        sub_1E1AF4A3C();

        sub_1E1AF505C();

        (*(v2 + 8))(v4, v1);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1E1948258()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8, &qword_1E1B12110);
  __swift_allocate_value_buffer(v0, qword_1ECEBB540);
  __swift_project_value_buffer(v0, qword_1ECEBB540);
  return sub_1E1AF3F9C();
}

uint64_t static ArcadeSeeAllGamesDiffablePagePresenter.displayStyleKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECEB15D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8, &qword_1E1B12110);
  v3 = __swift_project_value_buffer(v2, qword_1ECEBB540);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.EmptyStateData.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.EmptyStateData.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.__allocating_init(objectGraph:pageUrl:facetsPresenter:metricsPipeline:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1E194959C(a1, a2, a3, a4);

  return v8;
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.init(objectGraph:pageUrl:facetsPresenter:metricsPipeline:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1E194959C(a1, a2, a3, a4);

  return v4;
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.pageTitle.getter()
{
  v1 = (v0 + qword_1ECEF4C78);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void ArcadeSeeAllGamesDiffablePagePresenter.displayStyle.getter(_BYTE *a1@<X8>)
{
  v3 = qword_1ECEF4C80;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1E1948594(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_1ECEF4C80;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v5;
  sub_1E1948658(&v6);
}

void ArcadeSeeAllGamesDiffablePagePresenter.displayStyle.setter(char *a1)
{
  v2 = *a1;
  v3 = qword_1ECEF4C80;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v5 = v4;
  sub_1E1948658(&v5);
}

void sub_1E1948658(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8, &qword_1E1B12110);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - v5;
  v7 = *a1;
  v8 = qword_1ECEF4C80;
  swift_beginAccess();
  if (*(v1 + v8))
  {
    v9 = 0x746361706D6F63;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (v7)
  {
    v10 = 0x746361706D6F63;
  }

  else
  {
    v10 = 0x746C7561666564;
  }

  if (v9 == v10)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v11 = sub_1E1AF74AC();
    swift_bridgeObjectRelease_n();
    if ((v11 & 1) == 0)
    {
      sub_1E1AF44CC();
      sub_1E1AF44BC();
      if (qword_1ECEB0E10 != -1)
      {
        swift_once();
      }

      v12 = __swift_project_value_buffer(v3, qword_1ECEB4E08);
      (*(v4 + 16))(v6, v12, v3);
      if (*(v1 + v8))
      {
        v13 = 0x746361706D6F63;
      }

      else
      {
        v13 = 0x746C7561666564;
      }

      v14[1] = v13;
      v14[2] = 0xE700000000000000;
      sub_1E1AF3C9C();

      sub_1E19F7EF0(1);
    }
  }
}

void (*ArcadeSeeAllGamesDiffablePagePresenter.displayStyle.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_1ECEF4C80;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1E1948904;
}

void sub_1E1948904(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 40);
  if (a2)
  {
    v7 = v5;
    v6 = &v7;
  }

  else
  {
    v8 = v5;
    v6 = &v8;
  }

  sub_1E1948658(v6);

  free(v2);
}

uint64_t sub_1E1948990(uint64_t a1)
{
  v56 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  v55 = *(v2 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v58 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v50 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  v57 = v1[2];
  sub_1E134FD1C(v1 + qword_1EE2169A8, &v50 - v8, &unk_1ECEB4B60, &unk_1E1B02620);
  v10 = qword_1ECEF4C80;
  swift_beginAccess();
  LODWORD(v54) = *(v1 + v10);
  swift_beginAccess();
  v59 = v1[3];
  swift_beginAccess();
  v11 = v1[4];
  type metadata accessor for ArcadeSeeAllGamesDiffablePageContentPresenter(0);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  swift_weakInit();
  v50 = v9;
  sub_1E134FD1C(v9, v6, &unk_1ECEB4B60, &unk_1E1B02620);
  v14 = (*(v55 + 80) + 24) & ~*(v55 + 80);
  v15 = v14 + v3;
  v16 = (v14 + v3) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  sub_1E13E23F8(v6, v17 + v14);
  *(v17 + v15) = v54;
  v18 = v57;
  *(v17 + v16 + 8) = v57;
  *(v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)) = v11;
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v11;
  sub_1E134FD1C(v9, v58, &unk_1ECEB4B60, &unk_1E1B02620);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1E171A480;
  *(v20 + 24) = v18;
  v54 = v20;
  *(v12 + qword_1EE1E9D48) = 0;
  v21 = MEMORY[0x1E69E7CC0];
  *(v12 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v22 = qword_1EE2166A0;

  swift_retain_n();
  v55 = v11;
  swift_retain_n();

  *(v12 + v22) = sub_1E159D6F0(v21);
  v23 = (v12 + qword_1EE1E9E00);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v12 + qword_1EE1E9EA0);
  *v24 = 0;
  v24[1] = 0;
  v53 = v24;
  v25 = (v12 + qword_1EE1E9E08);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v12 + qword_1EE1E9DF0);
  *v26 = 0;
  v26[1] = 0;
  v52 = v26;
  v27 = (v12 + qword_1EE1E9E98);
  *v27 = 0;
  v27[1] = 0;
  v51 = v27;
  v28 = (v12 + qword_1EE216698);
  *v28 = 0u;
  v28[1] = 0u;
  *(v28 + 25) = 0u;
  *(v12 + qword_1EE2166D0) = 0;
  *(v12 + qword_1EE1E9D50) = 0;
  *(v12 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v12 + qword_1EE2166C8) = 0;
  v29 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3140, &qword_1E1B060C8);
  swift_allocObject();
  *(v12 + v29) = sub_1E1AF5BEC();
  v30 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590, &unk_1E1B029B0);
  swift_allocObject();
  *(v12 + v30) = sub_1E1AF5BEC();
  v31 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3158, &qword_1E1B060D8);
  swift_allocObject();
  *(v12 + v31) = sub_1E1AF5BEC();
  v32 = qword_1EE2166B0;
  swift_allocObject();
  *(v12 + v32) = sub_1E1AF5BEC();
  v33 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598, &unk_1E1B05F40);
  swift_allocObject();
  *(v12 + v33) = sub_1E1AF5BEC();
  v34 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0, &qword_1E1B029C0);
  swift_allocObject();
  v35 = sub_1E1AF5BEC();
  v36 = v19;

  v37 = v57;

  sub_1E1308058(v50, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v12 + v34) = v35;
  v38 = qword_1EE1E9DD8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8, &unk_1E1B16230);
  v40 = *(*(v39 - 8) + 56);
  v40(v12 + v38, 1, 1, v39);
  v41 = v39;
  v42 = v56;
  v40(v12 + qword_1EE1E9DE0, 1, 1, v41);
  *(v12 + 16) = v37;
  sub_1E13E23F8(v58, v12 + qword_1EE216678);
  *v23 = sub_1E171A6BC;
  v23[1] = v17;
  *v25 = 0;
  v25[1] = 0;
  if (v42)
  {
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    v44 = sub_1E1445E6C;
  }

  else
  {
    v44 = 0;
    v43 = 0;
  }

  v45 = v52;
  v46 = v53;
  *v53 = v44;
  v46[1] = v43;
  *v45 = sub_1E171A31C;
  v45[1] = v36;
  v47 = v51;
  v48 = v54;
  *v51 = sub_1E13E2490;
  v47[1] = v48;
  *(v12 + qword_1EE1E9E90) = v59;
  *(v12 + qword_1EE216690) = v55;

  return v12;
}

void sub_1E194902C(unsigned __int8 **a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  sub_1E1A7E378(*a1, a1[1], v3);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *&v2[OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets + 8];
    v5 = *&v2[OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets + 16];
    v6 = v2[OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets + 24];
    v15.value.facetGroups._rawValue = *&v2[OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets];
    v15.value.resetButtonTitle.value._countAndFlagsBits = v4;
    v15.value.resetButtonTitle.value._object = v5;
    v15.value.allowsResetButton = v6;
    v7._rawValue = *&v2[OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions];
    sub_1E13C0418(v15.value.facetGroups._rawValue, v4, v5);
    PageFacetsPresenter.setFacets(_:selectedFacetOptions:)(&v15, v7);
    sub_1E13C045C(v15.value.facetGroups._rawValue, v15.value.resetButtonTitle.value._countAndFlagsBits, v15.value.resetButtonTitle.value._object);
    v8 = *(v1 + qword_1EE2169A0);
    if (!(v8 >> 62))
    {
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      goto LABEL_4;
    }

    if (!sub_1E1AF71CC())
    {
LABEL_4:
      v9._object = 0x80000001E1B5BE40;
      v9._countAndFlagsBits = 0xD00000000000001CLL;
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      v11 = localizedString(_:comment:)(v9, v10);
      v12._countAndFlagsBits = 0xD000000000000022;
      v12._object = 0x80000001E1B5BE60;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v14 = localizedString(_:comment:)(v12, v13);
      v15.value.facetGroups._rawValue = v11._countAndFlagsBits;
      v15.value.resetButtonTitle.value._countAndFlagsBits = v11._object;
      *&v15.value.resetButtonTitle.value._object = v14;
      sub_1E1AF5BCC();
      sub_1E14E85BC(v15.value.facetGroups._rawValue, v15.value.resetButtonTitle.value._countAndFlagsBits, v15.value.resetButtonTitle.value._object, *&v15.value.allowsResetButton);
    }
  }
}

Swift::Void __swiftcall ArcadeSeeAllGamesDiffablePagePresenter.toggleDisplayStyle()()
{
  v1 = qword_1ECEF4C80;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
  }

  else
  {
    v2 = sub_1E1AF74AC();

    if ((v2 & 1) == 0)
    {
      v3 = *(v0 + v1);
      *(v0 + v1) = 1;
      goto LABEL_6;
    }
  }

  v3 = *(v0 + v1);
  *(v0 + v1) = 0;
LABEL_6:
  v4 = v3;
  sub_1E1948658(&v4);
}

uint64_t sub_1E1949254()
{
  v1 = type metadata accessor for StoreViewControllerLifecycleEvent(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_1E1AF4F8C();
  v4 = sub_1E1AF4FBC();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 11, v4);
  sub_1E19470A8(v3);
  sub_1E16258A4(v3, v6);
  memset(v10, 0, sizeof(v10));
  swift_beginAccess();
  sub_1E137F8F8(v10, v0 + 40, &qword_1ECEB2588, &unk_1E1B05C10);
  swift_endAccess();
  sub_1E1A86218();
  sub_1E1308058(v10, &qword_1ECEB2588, &unk_1E1B05C10);
  sub_1E19F7EF0(1);
  v5(v3, 3, 11, v4);
  sub_1E19470A8(v3);
  return sub_1E16258A4(v3, v7);
}

Swift::Void __swiftcall ArcadeSeeAllGamesDiffablePagePresenter.commitBatchFacetUpdates()()
{
  if (*(v0 + qword_1ECEBB558) == 1)
  {
    *(v0 + qword_1ECEBB558) = 0;
    if (*(v0 + qword_1ECEBB560) == 1)
    {
      *(v0 + qword_1ECEBB560) = 0;
      sub_1E1949254();
    }
  }
}

double sub_1E1949440()
{

  return result;
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.deinit()
{
  v0 = sub_1E13DB98C();

  return v0;
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.__deallocating_deinit()
{
  sub_1E13DB98C();

  return swift_deallocClassInstance();
}

uint64_t sub_1E194959C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v68 = a4;
  v62 = a1;
  v64 = *v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30A0, &qword_1E1B05EE0);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v52 - v9;
  v10 = sub_1E1AF68DC();
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v52 - v15;
  v17 = (v4 + qword_1ECEF4C78);
  v18._object = 0x80000001E1B637F0;
  v18._countAndFlagsBits = 0xD000000000000010;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  *v17 = localizedString(_:comment:)(v18, v19);
  *(v5 + qword_1ECEBB558) = 0;
  *(v5 + qword_1ECEBB560) = 0;
  v20 = qword_1ECEF4C90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB578, &unk_1E1B44B80);
  swift_allocObject();
  *(v5 + v20) = sub_1E1AF5BEC();
  *(v5 + qword_1ECEF4C88) = a3;
  sub_1E1AF44CC();
  v63 = a3;

  sub_1E1AF44BC();
  if (qword_1ECEB0E10 != -1)
  {
    swift_once();
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8, &qword_1E1B12110);
  __swift_project_value_buffer(v21, qword_1ECEB4E08);
  sub_1E1AF3C8C();

  v22 = sub_1E1AF72FC();

  *(v5 + qword_1ECEF4C80) = v22 == 1;
  v23 = sub_1E1AEFCCC();
  v61 = v23;
  v24 = *(v23 - 8);
  v54 = v24;
  (*(v24 + 16))(v16, a2, v23);
  (*(v24 + 56))(v16, 0, 1, v23);
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  *(v5 + qword_1EE2169B8) = 0;
  v25 = MEMORY[0x1E69E7CC0];
  *(v5 + qword_1EE2169A0) = MEMORY[0x1E69E7CC0];
  *(v5 + qword_1EE1ED400) = 0;
  v26 = *(*v5 + 640);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3138, &qword_1E1B060C0);
  v28 = *(*(v27 - 8) + 56);
  v60 = a2;
  v28(v5 + v26, 1, 1, v27);
  v29 = *(*v5 + 648);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500, &qword_1E1B210A0);
  (*(*(v30 - 8) + 56))(v5 + v29, 1, 1, v30);
  v31 = *(*v5 + 656);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3128, &qword_1E1B060B0);
  (*(*(v32 - 8) + 56))(v5 + v31, 1, 1, v32);
  v28(v5 + *(*v5 + 664), 1, 1, v27);
  v33 = *(*v5 + 672);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508, &unk_1E1B028C0);
  (*(*(v34 - 8) + 56))(v5 + v33, 1, 1, v34);
  v35 = *(*v5 + 680);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510, &unk_1E1B05F20);
  (*(*(v36 - 8) + 56))(v5 + v35, 1, 1, v36);
  v37 = *(*v5 + 688);
  sub_1E1361A80();
  v53 = v16;

  sub_1E1AF322C();
  v69 = v25;
  sub_1E1408288();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E1302CD4(&qword_1EE1E34D8, &unk_1ECEB7A90, &unk_1E1B02C60, MEMORY[0x1E69E6328]);
  sub_1E1AF6EEC();
  (*(v58 + 104))(v57, *MEMORY[0x1E69E8090], v59);
  *(v5 + v37) = sub_1E1AF692C();
  sub_1E13C6184(v5 + *(*v5 + 696));
  v38 = (v5 + *(*v5 + 704));
  *v38 = 0u;
  v38[1] = 0u;
  *(v38 + 25) = 0u;
  v39 = *(*v5 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C8, &unk_1E1B05F30);
  swift_allocObject();
  *(v5 + v39) = sub_1E1AF5BEC();
  v40 = *(*v5 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D0, &qword_1E1B02C70);
  swift_allocObject();
  *(v5 + v40) = sub_1E1AF5BEC();
  v41 = *(*v5 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598, &unk_1E1B05F40);
  swift_allocObject();
  *(v5 + v41) = sub_1E1AF5BEC();
  *(v5 + *(*v5 + 736)) = 0;
  v42 = (v5 + *(*v5 + 752));
  *v42 = 0;
  v42[1] = 0;
  v43 = v53;
  sub_1E134FD1C(v53, v5 + qword_1EE2169A8, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E134FD1C(v70, v5 + *(*v5 + 744), &qword_1ECEB24F8, qword_1E1B1C080);
  v44 = objc_allocWithZone(type metadata accessor for InlineUnifiedMessagePresenter(0));

  *(v5 + qword_1EE2169B0) = InlineUnifiedMessagePresenter.init(objectGraph:)(v45);

  v47 = sub_1E13C59EC(v46, 0, 0, 0);
  v48 = *(*v47 + 1112);

  *(v47 + qword_1EE2169B8) = v48(0);

  sub_1E13D32D0(0);

  sub_1E1308058(v70, &qword_1ECEB24F8, qword_1E1B1C080);
  sub_1E1308058(v43, &unk_1ECEB4B60, &unk_1E1B02620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30D0, &unk_1E1B05F50);
  sub_1E1302CD4(&qword_1EE1D2A68, &qword_1ECEB30D0, &unk_1E1B05F50, MEMORY[0x1E69AAEC8]);

  sub_1E1AF3CDC();
  v49 = v65;
  sub_1E1AF3CEC();

  v50 = sub_1E1AF436C();
  (*(*(v50 - 8) + 8))(v68, v50);
  (*(v54 + 8))(v60, v61);
  __swift_destroy_boxed_opaque_existential_1(v70);
  (*(v66 + 8))(v49, v67);
  return v47;
}

uint64_t type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter(uint64_t a1)
{
  result = qword_1ECEBB568;
  if (!qword_1ECEBB568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E194A1DC()
{
  if (*(v0 + qword_1ECEBB558) != 1)
  {
    return sub_1E1949254();
  }

  *(v0 + qword_1ECEBB560) = 1;
  return result;
}

id TimingCurve.caMediaTimingFunction.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    if (v2 > 1)
    {
      if (v2 ^ 2 | v1)
      {
        v3 = [objc_opt_self() functionWithName_];
      }

      else
      {
        v3 = [objc_opt_self() functionWithName_];
      }
    }

    else if (v2 | v1)
    {
      v3 = [objc_opt_self() functionWithName_];
    }

    else
    {
      v3 = [objc_opt_self() functionWithName_];
    }

    return v3;
  }

  else
  {
    v4 = *v0;
    v5 = *(v0 + 8);
    v6 = objc_allocWithZone(MEMORY[0x1E69793D0]);
    LODWORD(v8) = HIDWORD(v4);
    LODWORD(v7) = v4;
    LODWORD(v10) = HIDWORD(v5);
    LODWORD(v9) = v5;

    return [v6 initWithControlPoints__:v7 :{v8, v9, v10}];
  }
}

double sub_1E194A39C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v8 = 0;
  v6 = *v1;
  LOBYTE(v7) = v3;
  v4 = TimingCurve.caMediaTimingFunction.getter();
  [v4 getControlPointAtIndex:a1 values:{&v8, v6, v7}];

  return *&v8;
}

int8x16_t TimingCurve.reversed.getter@<Q0>(int8x16_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v20 = 0;
  v6 = TimingCurve.caMediaTimingFunction.getter();
  [v6 getControlPointAtIndex:1 values:&v20];

  v17 = HIDWORD(v20);
  v16 = v20;
  v18[0] = 0;
  v18[1] = v3;
  v18[2] = v4;
  v19 = v5;
  v7 = TimingCurve.caMediaTimingFunction.getter();
  [v7 getControlPointAtIndex:2 values:v18];

  __asm { FMOV            V2.2S, #1.0 }

  v13 = vsub_f32(_D2, __PAIR64__(v16, v18[0]));
  v14.i64[0] = v13.u32[0];
  v14.i64[1] = v13.u32[1];
  result = vorrq_s8(vshll_n_s32(vsub_f32(_D2, __PAIR64__(v17, HIDWORD(v18[0]))), 0x20uLL), v14);
  *a1 = result;
  a1[1].i8[0] = 0;
  return result;
}

double static TimingCurve.customNavigation.getter@<D0>(uint64_t a1@<X8>)
{
  result = 4.70103432e-24;
  *a1 = xmmword_1E1B44B90;
  *(a1 + 16) = 0;
  return result;
}

int8x16_t sub_1E194A524()
{
  v23 = 0;
  v0 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v1) = 1044401829;
  LODWORD(v2) = 991345561;
  LODWORD(v3) = 1057634019;
  LODWORD(v4) = 1064730781;
  v5 = [v0 initWithControlPoints__:v1 :{v2, v3, v4}];
  [v5 getControlPointAtIndex:1 values:&v23];

  v21 = HIDWORD(v23);
  v20 = v23;
  v22 = 0;
  v6 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v7) = 1044401829;
  LODWORD(v8) = 991345561;
  LODWORD(v9) = 1057634019;
  LODWORD(v10) = 1064730781;
  v11 = [v6 initWithControlPoints__:v7 :{v8, v9, v10}];
  [v11 getControlPointAtIndex:2 values:&v22];

  __asm { FMOV            V2.2S, #1.0 }

  v17 = vsub_f32(_D2, __PAIR64__(v20, v22));
  v18.i64[0] = v17.u32[0];
  v18.i64[1] = v17.u32[1];
  result = vorrq_s8(vshll_n_s32(vsub_f32(_D2, __PAIR64__(v21, HIDWORD(v22))), 0x20uLL), v18);
  xmmword_1ECEBB580 = result;
  byte_1ECEBB590 = 0;
  return result;
}

double static TimingCurve.customNavigationPop.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ECEB15E0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = byte_1ECEBB590;
  result = *&xmmword_1ECEBB580;
  *a1 = xmmword_1ECEBB580;
  *(a1 + 16) = v1;
  return result;
}

double static TimingCurve.horizontalPush.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1045220557;
  *a1 = xmmword_1E1B44BA0;
  *(a1 + 16) = 0;
  return result;
}

double static TimingCurve.easingCurve1.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1050253722;
  *a1 = xmmword_1E1B44BB0;
  *(a1 + 16) = 0;
  return result;
}

double static TimingCurve.easingCurve2.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1065353216;
  *a1 = xmmword_1E1B44BC0;
  *(a1 + 16) = 0;
  return result;
}

double static TimingCurve.easingCurve3.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1050253722;
  *a1 = xmmword_1E1B44BD0;
  *(a1 + 16) = 0;
  return result;
}

__n128 __swift_memcpy17_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for TimingCurve(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 9) = 0;
    *(result + 4) = 0;
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

  *(result + 17) = v3;
  return result;
}

AppStoreKit::AccountLinks::LinkType_optional __swiftcall AccountLinks.LinkType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AccountLinks.LinkType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x44746E756F636361;
  v3 = 0xD000000000000013;
  if (v1 != 6)
  {
    v3 = 0x6573616863727570;
  }

  v4 = 0x74666947646E6573;
  if (v1 != 4)
  {
    v4 = 0x6853796C696D6166;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6D6565646572;
  if (v1 != 2)
  {
    v5 = 0x73646E7546646461;
  }

  if (*v0)
  {
    v2 = 0x6341657461657263;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_1E194A93C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00736C69617465;
  v4 = 0x44746E756F636361;
  v5 = 0x80000001E1B568C0;
  v6 = 0xD000000000000013;
  if (v2 != 6)
  {
    v6 = 0x6573616863727570;
    v5 = 0xEF79726F74736948;
  }

  v7 = 0xE800000000000000;
  v8 = 0x74666947646E6573;
  if (v2 != 4)
  {
    v8 = 0x6853796C696D6166;
    v7 = 0xED0000676E697261;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6D6565646572;
  if (v2 != 2)
  {
    v10 = 0x73646E7546646461;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x6341657461657263;
    v3 = 0xED0000746E756F63;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t AccountLinks.__allocating_init(id:links:pageMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_1E134FD1C(a1, &v19, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v20 + 1))
  {
    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  else
  {
    sub_1E1AEFE9C();
    v11 = sub_1E1AEFE7C();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v18[1] = v11;
    v18[2] = v13;
    sub_1E1AF6F6C();
    sub_1E1308058(&v19, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v14 = v23;
  *(v10 + 24) = v22;
  *(v10 + 40) = v14;
  *(v10 + 56) = v24;
  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v10 + 16) = a2;
  v15 = OBJC_IVAR____TtC11AppStoreKit12AccountLinks_pageMetrics;
  v16 = sub_1E1AF3C3C();
  (*(*(v16 - 8) + 32))(v10 + v15, a3, v16);
  *(v10 + OBJC_IVAR____TtC11AppStoreKit12AccountLinks_pageRenderEvent) = 0;
  return v10;
}

uint64_t AccountLinks.init(id:links:pageMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, &v20, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v21 + 1))
  {
    v23 = v20;
    v24 = v21;
    v25 = v22;
  }

  else
  {
    sub_1E1AEFE9C();
    v12 = sub_1E1AEFE7C();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v19[1] = v12;
    v19[2] = v14;
    sub_1E1AF6F6C();
    sub_1E1308058(&v20, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  v15 = v24;
  *(v4 + 24) = v23;
  *(v4 + 40) = v15;
  *(v4 + 56) = v25;
  *(v4 + 16) = a2;
  v16 = OBJC_IVAR____TtC11AppStoreKit12AccountLinks_pageMetrics;
  v17 = sub_1E1AF3C3C();
  (*(*(v17 - 8) + 32))(v4 + v16, a3, v17);
  *(v4 + OBJC_IVAR____TtC11AppStoreKit12AccountLinks_pageRenderEvent) = 0;
  return v4;
}

uint64_t sub_1E194AEB8(unsigned __int8 *a1)
{
  if (*(*(v1 + 16) + 16) && (sub_1E1595DFC(*a1), (v2 & 1) != 0))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E194AF00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit12AccountLinks_pageMetrics;
  swift_beginAccess();
  v5 = sub_1E1AF3C3C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1E194AF8C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1E1AF3C3C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC11AppStoreKit12AccountLinks_pageMetrics;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1E194B0A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit12AccountLinks_pageMetrics;
  swift_beginAccess();
  v4 = sub_1E1AF3C3C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1E194B12C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit12AccountLinks_pageMetrics;
  swift_beginAccess();
  v4 = sub_1E1AF3C3C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t AccountLinks.deinit()
{

  sub_1E134B88C(v0 + 24);
  v1 = OBJC_IVAR____TtC11AppStoreKit12AccountLinks_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AccountLinks.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 24);
  v1 = OBJC_IVAR____TtC11AppStoreKit12AccountLinks_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1E194B378@<X0>(uint64_t *a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E194B454(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E194B3B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit12AccountLinks_pageMetrics;
  swift_beginAccess();
  v5 = sub_1E1AF3C3C();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1E194B454(char *a1, uint64_t a2)
{
  v60 = sub_1E1AEFEAC();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B8, &unk_1E1B0C6B0);
  v5 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v58 - v6;
  v67 = sub_1E1AF39DC();
  v69 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1E1AF3C3C();
  v63 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v58 - v10;
  v11 = sub_1E1AF380C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v58 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v58 - v20;
  v76 = sub_1E15A18E8(MEMORY[0x1E69E7CC0]);
  v80 = v21;
  v68 = a1;
  sub_1E1AF381C();
  v22 = 0;
  v77 = type metadata accessor for Action(0);
  v78 = 0x80000001E1B568C0;
  v73 = (v5 + 8);
  v88 = (v12 + 8);
  v71 = a2;
  v72 = v11;
  do
  {
    while (1)
    {
      v24 = byte_1F5C2D790[v22++ + 32];
      sub_1E1AF381C();

      if ((sub_1E1AF37AC() & 1) == 0)
      {
        break;
      }

      v23 = *v88;
      (*v88)(v16, v11);
      if (v22 == 8)
      {
        goto LABEL_21;
      }
    }

    v25 = v79;
    v26 = static Action.makeInstance(byDeserializing:using:)(v16, a2);
    if (v25)
    {
      v27 = v74;
      sub_1E1AF397C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43C0, &unk_1E1B1AB20);
      sub_1E1AF39FC();
      (*v73)(v27, v75);
      sub_1E134FD1C(v86, &v83, &qword_1ECEB43C8, &unk_1E1B0C6C0);
      if (*(&v84 + 1))
      {
        __swift_project_boxed_opaque_existential_1Tm(&v83, *(&v84 + 1));
        sub_1E1AF4EBC();

        sub_1E1308058(v86, &qword_1ECEB43C8, &unk_1E1B0C6C0);
        v23 = *v88;
        (*v88)(v16, v11);
        __swift_destroy_boxed_opaque_existential_1(&v83);
      }

      else
      {

        sub_1E1308058(v86, &qword_1ECEB43C8, &unk_1E1B0C6C0);
        v23 = *v88;
        (*v88)(v16, v11);
        sub_1E1308058(&v83, &qword_1ECEB43C8, &unk_1E1B0C6C0);
      }

      v79 = 0;
    }

    else
    {
      v28 = v26;
      v79 = 0;
      v23 = *v88;
      (*v88)(v16, v11);

      v29 = v76;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v86[0] = v29;
      v32 = sub_1E1595DFC(v24);
      v33 = v29[2];
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        result = sub_1E1AF757C();
        __break(1u);
        return result;
      }

      v36 = v31;
      if (v29[3] >= v35)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E141986C();
        }
      }

      else
      {
        sub_1E168F7E4(v35, isUniquelyReferenced_nonNull_native);
        v37 = sub_1E1595DFC(v24);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_33;
        }

        v32 = v37;
      }

      v76 = *&v86[0];
      if (v36)
      {
        *(*(*&v86[0] + 56) + 8 * v32) = v28;
      }

      else
      {
        *(*&v86[0] + 8 * (v32 >> 6) + 64) |= 1 << v32;
        *(v76[6] + v32) = v24;
        *(v76[7] + 8 * v32) = v28;

        v39 = v76[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_32;
        }

        v76[2] = v41;
      }

      a2 = v71;
      v11 = v72;
    }
  }

  while (v22 != 8);
LABEL_21:
  v42 = v65;
  v43 = v68;
  sub_1E1AF381C();
  v44 = v69;
  v45 = v67;
  (*(v69 + 16))(v66, a2, v67);
  v46 = v79;
  sub_1E1AF3BAC();
  if (v46)
  {
    (*(v44 + 8))(a2, v45);
    v23(v43, v11);
    v23(v80, v11);
  }

  else
  {
    v47 = v61;
    sub_1E1AF381C();
    v48 = sub_1E1AF37CC();
    v50 = v49;
    v23(v47, v11);
    if (v50)
    {
      *&v83 = v48;
      *(&v83 + 1) = v50;
      sub_1E1AF6F6C();
    }

    else
    {
      v87 = 0;
      memset(v86, 0, sizeof(v86));
    }

    v51 = v62;
    v52 = v63;
    (*(v63 + 16))(v64, v70, v62);
    type metadata accessor for AccountLinks(0);
    v42 = swift_allocObject();
    sub_1E134FD1C(v86, &v83, &unk_1ECEB5670, qword_1E1B03EC0);
    if (*(&v84 + 1))
    {
      v53 = v84;
      *(v42 + 24) = v83;
      *(v42 + 40) = v53;
      *(v42 + 56) = v85;
    }

    else
    {
      v54 = v58;
      sub_1E1AEFE9C();
      v79 = sub_1E1AEFE7C();
      v56 = v55;
      (*(v59 + 8))(v54, v60);
      v81 = v79;
      v82 = v56;
      v52 = v63;
      v11 = v72;
      sub_1E1AF6F6C();
      sub_1E1308058(&v83, &unk_1ECEB5670, qword_1E1B03EC0);
    }

    (*(v69 + 8))(a2, v45);
    v23(v43, v11);
    sub_1E1308058(v86, &unk_1ECEB5670, qword_1E1B03EC0);
    (*(v52 + 8))(v70, v51);
    v23(v80, v11);
    *(v42 + 16) = v76;
    (*(v52 + 32))(v42 + OBJC_IVAR____TtC11AppStoreKit12AccountLinks_pageMetrics, v64, v51);
    *(v42 + OBJC_IVAR____TtC11AppStoreKit12AccountLinks_pageRenderEvent) = 0;
  }

  return v42;
}

unint64_t sub_1E194BFB4()
{
  result = qword_1ECEBB598;
  if (!qword_1ECEBB598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBB5A0, &qword_1E1B44C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB598);
  }

  return result;
}

unint64_t sub_1E194C01C()
{
  result = qword_1ECEBB5A8;
  if (!qword_1ECEBB5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB5A8);
  }

  return result;
}

unint64_t sub_1E194C074()
{
  result = qword_1ECEBB5B0;
  if (!qword_1ECEBB5B0)
  {
    type metadata accessor for AccountLinks(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB5B0);
  }

  return result;
}

uint64_t type metadata accessor for AccountLinks(uint64_t a1)
{
  result = qword_1ECEBB5B8;
  if (!qword_1ECEBB5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E194C120(uint64_t a1)
{
  result = sub_1E1AF3C3C();
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

unint64_t sub_1E194C2F4()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);

  v7 = sub_1E1303A74(MEMORY[0x1E69E7CC0]);
  v22 = v7;
  v8 = MEMORY[0x1E69E6158];
  if (v1)
  {
    v9 = v7;
    v21 = MEMORY[0x1E69E6158];
    *&v20 = v2;
    *(&v20 + 1) = v1;
    sub_1E1301CF0(&v20, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v9;
    sub_1E159827C(v17, 7368801, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
    v22 = v18;
  }

  else
  {
    sub_1E1496610(7368801, 0xE300000000000000, &v20);
    sub_1E1308058(&v20, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  if (v3)
  {
    v21 = v8;
    *&v20 = v4;
    *(&v20 + 1) = v3;
    sub_1E1301CF0(&v20, v17);

    v11 = v22;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v18 = v11;
    sub_1E159827C(v17, 0x6C616E7265747865, 0xEB000000006C7255, v12);
    v13 = v18;
  }

  else
  {
    sub_1E1496610(0x6C616E7265747865, 0xEB000000006C7255, &v20);
    sub_1E1308058(&v20, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v13 = v22;
  }

  v18 = v5;
  v19 = v6;
  v14 = sub_1E194CD28();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
  *&v20 = v14;
  sub_1E1301CF0(&v20, v17);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v17, 1684957547, 0xE400000000000000, v15);
  return v13;
}

uint64_t ReferrerData.init(app:externalUrl:kind:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  v7 = *(a5 + 8);
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v6;
  *(a6 + 40) = v7;
  return result;
}

void ReferrerData.Kind.init(rawValue:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    goto LABEL_31;
  }

  if (a1 == 0x70696C43707061 && a2 == 0xE700000000000000 || (sub_1E1AF74AC() & 1) != 0)
  {

    v8 = 2;
    a3 = 1;
    goto LABEL_33;
  }

  if (a1 == 0x65726F7453707061 && a2 == 0xE800000000000000 || (sub_1E1AF74AC() & 1) != 0)
  {

    a3 = 2;
LABEL_32:
    v8 = 2;
    goto LABEL_33;
  }

  if (a1 == 0x746E6543656D6167 && a2 == 0xEA00000000007265 || (sub_1E1AF74AC() & 1) != 0)
  {

    v8 = 2;
    a3 = 3;
    goto LABEL_33;
  }

  if (a1 == 0x6867696C746F7073 && a2 == 0xE900000000000074 || (sub_1E1AF74AC() & 1) != 0)
  {

    v8 = 2;
    a3 = 4;
    goto LABEL_33;
  }

  if (a1 == 0x696C6F706D617274 && a2 == 0xEA0000000000656ELL || (sub_1E1AF74AC() & 1) != 0)
  {
    if (!a3)
    {
      a3 = sub_1E159D2A0(MEMORY[0x1E69E7CC0]);
    }

    v8 = 0;
    goto LABEL_33;
  }

  if ((a1 != 0x746567646977 || a2 != 0xE600000000000000) && (sub_1E1AF74AC() & 1) == 0)
  {

LABEL_31:

    a3 = 0;
    goto LABEL_32;
  }

  if (!a3)
  {
    a3 = sub_1E159D2A0(MEMORY[0x1E69E7CC0]);
  }

  v8 = 1;
LABEL_33:
  *a4 = a3;
  *(a4 + 8) = v8;
}

uint64_t ReferrerData.Kind.rawValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 8))
  {
    if (v2 == 1)
    {
      v3 = 0x746567646977;
    }

    else
    {
      v3 = *&aUnspecifappcli[8 * v1];
    }
  }

  else
  {
    v3 = 0x696C6F706D617274;
  }

  sub_1E13E23E4(v1, v2);
  return v3;
}

uint64_t ReferrerData.Kind.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v31 = a3;
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28, qword_1E1B03BE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  sub_1E1AF381C();
  v14 = sub_1E1AF37CC();
  v16 = v15;
  v17 = *(v8 + 8);
  v17(v13, v7);
  if (v16)
  {
    v30 = v14;
    sub_1E1AF381C();
    sub_1E1AF368C();
    v17(v10, v7);
    v18 = sub_1E1AF40DC();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v6, 1, v18) == 1)
    {
      sub_1E1308058(v6, &qword_1ECEB2B28, qword_1E1B03BE0);
      v20 = 0;
    }

    else
    {
      v25 = v35;
      v20 = sub_1E1AF40AC();
      v35 = v25;
      (*(v19 + 8))(v6, v18);
    }

    ReferrerData.Kind.init(rawValue:)(v30, v16, v20, &v33);
    v26 = sub_1E1AF39DC();
    (*(*(v26 - 8) + 8))(v32, v26);
    result = (v17)(a1, v7);
    v27 = v34;
    v28 = v31;
    *v31 = v33;
    *(v28 + 8) = v27;
  }

  else
  {
    v21 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v22 = 1701667182;
    v22[1] = 0xE400000000000000;
    v22[2] = &type metadata for ReferrerData.Kind;
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x1E69AB690], v21);
    swift_willThrow();
    v23 = sub_1E1AF39DC();
    (*(*(v23 - 8) + 8))(v32, v23);
    return (v17)(a1, v7);
  }

  return result;
}

double sub_1E194CC18@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E1AF37EC();
  if (v10[3])
  {
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        v6 = v11;
        v7 = v12;
        v14 = v11;
        v15 = v12;
        v8 = v13;
        v16 = v13;
        *a3 = a1;
        *(a3 + 8) = a2;
        *(a3 + 16) = v6;
        *(a3 + 32) = v7;
        *(a3 + 48) = v8;

        return result;
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    sub_1E1308058(v10, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
  }

  sub_1E1308058(&v11, &unk_1ECEB5670, qword_1E1B03EC0);
  *(a3 + 48) = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

unint64_t sub_1E194CD28()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = sub_1E1303A74(MEMORY[0x1E69E7CC0]);
  *&v12[0] = v1;
  BYTE8(v12[0]) = v2;
  v4 = ReferrerData.Kind.rawValue.getter();
  v6 = v5;

  v14 = MEMORY[0x1E69E6158];
  *&v13 = v4;
  *(&v13 + 1) = v6;
  sub_1E1301CF0(&v13, v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v12, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v15 = v3;
  *&v12[0] = v1;
  BYTE8(v12[0]) = v2;
  ReferrerData.Kind.rawValue.getter();
  v9 = v8;

  if (v9)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26F0, &qword_1E1B09040);
    *&v13 = v9;
    sub_1E1301CF0(&v13, v12);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v12, 0x747865746E6F63, 0xE700000000000000, v10);
    return v3;
  }

  else
  {
    sub_1E1496610(0x747865746E6F63, 0xE700000000000000, &v13);
    sub_1E1308058(&v13, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    return v15;
  }
}

void sub_1E194CE94(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  ReferrerData.Kind.init(rawValue:)(*a1, a1[1], a1[2], &v4);
  v3 = v5;
  *a2 = v4;
  *(a2 + 8) = v3;
}

uint64_t sub_1E194CEE0@<X0>(uint64_t *a1@<X8>)
{
  result = ReferrerData.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

void ReferrerData.init(deserializing:using:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a3;
  v31 = a2;
  v35 = sub_1E1AF39DC();
  v32 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  sub_1E1AF381C();
  v26 = sub_1E1AF37CC();
  v30 = v13;
  v14 = *(v7 + 8);
  v14(v12, v6);
  sub_1E1AF381C();
  v15 = sub_1E1AF37CC();
  v29 = v16;
  v14(v12, v6);
  sub_1E1AF381C();
  v17 = sub_1E1AF37AC();
  v14(v12, v6);
  if (v17)
  {
    v18 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v19 = 1684957547;
    v19[1] = 0xE400000000000000;
    v19[2] = &type metadata for ReferrerData;
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x1E69AB690], v18);
    swift_willThrow();
    (*(v32 + 8))(v31, v35);
  }

  else
  {
    sub_1E1AF381C();
    v20 = v31;
    (*(v32 + 16))(v5, v31, v35);
    v21 = v28;
    ReferrerData.Kind.init(deserializing:using:)(v9, v5, &v33);
    if (!v21)
    {
      (*(v32 + 8))(v20, v35);
      v14(a1, v6);
      v22 = v33;
      v23 = v34;
      v24 = v27;
      *v27 = v26;
      v24[1] = v30;
      v24[2] = v15;
      v24[3] = v29;
      v24[4] = v22;
      *(v24 + 40) = v23;
      return;
    }

    (*(v32 + 8))(v20, v35);
  }

  v14(a1, v6);
}

uint64_t ReferrerData.Kind.init(userActivity:url:refApp:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v8 = [a1 _originatingProcess];
  v9 = [a1 _sourceApplication];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1E1AF5DFC();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  sub_1E194D3FC(a2, v8, v11, v13, &v16);

  result = sub_1E1308058(a2, &unk_1ECEB4B60, &unk_1E1B02620);
  v15 = v17;
  *a5 = v16;
  *(a5 + 8) = v15;
  return result;
}

uint64_t sub_1E194D3FC@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  if (a2)
  {
    v12 = a2;
    v13 = [v12 bundleIdentifier];
    if (v13)
    {
      v24 = a1;
      v14 = v13;
      v15 = sub_1E1AF5DFC();
      v17 = v16;

      v18 = v15 == 0xD000000000000012 && 0x80000001E1B59CB0 == v17;
      if (v18 || (sub_1E1AF74AC() & 1) != 0)
      {

        result = 2;
LABEL_19:
        v21 = 2;
        goto LABEL_25;
      }

      if (v15 == 0xD000000000000019 && 0x80000001E1B7F7E0 == v17 || (sub_1E1AF74AC() & 1) != 0)
      {

LABEL_24:

        v21 = 2;
        result = 1;
        goto LABEL_25;
      }

      if (v15 == 0xD000000000000033 && 0x80000001E1B7F800 == v17 || (sub_1E1AF74AC() & 1) != 0)
      {

        v21 = 2;
        result = 3;
        goto LABEL_25;
      }

      if (v15 == 0xD000000000000013 && 0x80000001E1B7F840 == v17)
      {

LABEL_34:
        v21 = 2;
        result = 4;
        goto LABEL_25;
      }

      v23 = sub_1E1AF74AC();

      a1 = v24;
      if (v23)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }
  }

  if (!a4)
  {
    goto LABEL_18;
  }

  v20 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v22 = sub_1E1399FF8(a3, a4, 1);
  v12 = [v22 appClipMetadata];

  if (v12)
  {
    goto LABEL_24;
  }

  result = _s11AppStoreKit0aB8DeepLinkV17trampolineMetrics4from3forSDySSs11AnyHashableVGSg10Foundation3URLVSg_SStFZ_0(a1, a3, a4);
  if (!result)
  {
    result = _s11AppStoreKit0aB8DeepLinkV13widgetMetrics4from3forSDySSs11AnyHashableVGSg10Foundation3URLVSg_SStFZ_0(a1, a3, a4);
    if (result)
    {
      v21 = 1;
      goto LABEL_25;
    }

LABEL_18:
    result = 0;
    goto LABEL_19;
  }

  v21 = 0;
LABEL_25:
  *a5 = result;
  *(a5 + 8) = v21;
  return result;
}

uint64_t ReferrerData.Kind.init(urlOptions:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 16))
  {
    v8 = 0;
    goto LABEL_17;
  }

  v6 = sub_1E15A47D4();
  if ((v7 & 1) == 0)
  {
    v8 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_10;
    }

LABEL_17:

    v12 = 0;
    v13 = 0;
    goto LABEL_18;
  }

  sub_1E137A5C4(*(a1 + 56) + 32 * v6, &v18);
  sub_1E194DDA8();
  if (swift_dynamicCast())
  {
    v8 = v16;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

LABEL_10:
  v9 = sub_1E15A47D4();
  if ((v10 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1E137A5C4(*(a1 + 56) + 32 * v9, &v18);

  v11 = swift_dynamicCast();
  if (v11)
  {
    v12 = v16;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v17;
  }

  else
  {
    v13 = 0;
  }

LABEL_18:
  sub_1E194D3FC(a2, v8, v12, v13, &v18);

  result = sub_1E1308058(a2, &unk_1ECEB4B60, &unk_1E1B02620);
  v15 = v19;
  *a3 = v18;
  *(a3 + 8) = v15;
  return result;
}

uint64_t _s11AppStoreKit12ReferrerDataV4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_1E13E23E4(*a2, 0);
      sub_1E13E23E4(v2, 0);
      v6 = sub_1E14F973C(v2, v4);
      sub_1E137B778(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_7;
    }

    goto LABEL_25;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      sub_1E13E23E4(*a2, 1u);
      sub_1E13E23E4(v2, 1u);
      LOBYTE(v6) = sub_1E14F973C(v2, v4);
      sub_1E137B778(v2, 1u);
      v7 = v4;
      v8 = 1;
LABEL_7:
      sub_1E137B778(v7, v8);
      return v6 & 1;
    }

    goto LABEL_25;
  }

  if (v2 <= 1)
  {
    if (v2)
    {
      if (v5 == 2 && v4 == 1)
      {
        sub_1E137B778(1, 2u);
        sub_1E137B778(1, 2u);
        return v4;
      }
    }

    else if (v5 == 2 && !v4)
    {
      sub_1E137B778(0, 2u);
      v10 = 0;
      goto LABEL_21;
    }

LABEL_25:
    sub_1E13E23E4(*a2, *(a2 + 8));
    sub_1E13E23E4(v2, v3);
    sub_1E137B778(v2, v3);
    sub_1E137B778(v4, v5);
    return 0;
  }

  if (v2 == 2)
  {
    goto LABEL_25;
  }

  if (v2 != 3)
  {
    if (v5 == 2 && v4 == 4)
    {
      sub_1E137B778(4, 2u);
      v10 = 4;
      goto LABEL_21;
    }

    goto LABEL_25;
  }

  if (v5 != 2 || v4 != 3)
  {
    goto LABEL_25;
  }

  sub_1E137B778(3, 2u);
  v10 = 3;
LABEL_21:
  sub_1E137B778(v10, 2u);
  return 1;
}

uint64_t _s11AppStoreKit12ReferrerDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = *(a1 + 40);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  v12 = *(a2 + 40);
  if (v3)
  {
    if (!v8 || (*a1 != *a2 || v3 != v8) && (sub_1E1AF74AC() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v8)
  {
    goto LABEL_15;
  }

  if (v6)
  {
    if (v11 && (v4 == v9 && v6 == v11 || (sub_1E1AF74AC() & 1) != 0))
    {
      goto LABEL_13;
    }

LABEL_15:
    v13 = 0;
    return v13 & 1;
  }

  if (v11)
  {
    goto LABEL_15;
  }

LABEL_13:
  v17 = v5;
  v18 = v7;
  v15 = v10;
  v16 = v12;
  sub_1E13E23E4(v5, v7);
  sub_1E13E23E4(v10, v12);
  v13 = _s11AppStoreKit12ReferrerDataV4KindO2eeoiySbAE_AEtFZ_0(&v17, &v15);
  sub_1E137B778(v15, v16);
  sub_1E137B778(v17, v18);
  return v13 & 1;
}

unint64_t sub_1E194DDA8()
{
  result = qword_1EE1D2518;
  if (!qword_1EE1D2518)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1D2518);
  }

  return result;
}

uint64_t sub_1E194DE04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E194DE4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E194DE90(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t AnyGenericPageIntent.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t OpenIntentModel<>.init(id:url:)(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for ClosedGenericPageIntent(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134E724(a1, v7);
  v8 = *(v5 + 20);
  v9 = sub_1E1AEFCCC();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v7[v8], a2, v9);
  sub_1E194EE30(qword_1EE1D9C48, type metadata accessor for ClosedGenericPageIntent, &protocol conformance descriptor for ClosedGenericPageIntent);
  sub_1E1AF439C();
  (*(v10 + 8))(a2, v9);
  return sub_1E134B88C(a1);
}

uint64_t type metadata accessor for ClosedGenericPageIntent(uint64_t a1)
{
  result = qword_1EE1D9C30;
  if (!qword_1EE1D9C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ClosedGenericPageIntent.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v45 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v40 - v6;
  v43 = sub_1E1AEFCCC();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E1AF380C();
  v12 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v46 = a1;
  sub_1E1AF381C();
  v18 = sub_1E1AF37CC();
  v49 = a3;
  if (v19)
  {
    v47 = v18;
    v48 = v19;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v22 = v21;
    (*(v9 + 8))(v11, v8);
    v47 = v20;
    v48 = v22;
  }

  sub_1E1AF6F6C();
  v23 = *(v12 + 8);
  v24 = v44;
  v23(v17, v44);
  v25 = v46;
  sub_1E1AF381C();
  v26 = v42;
  sub_1E1AF36FC();
  v23(v14, v24);
  v27 = v41;
  v28 = v43;
  if ((*(v41 + 48))(v26, 1, v43) == 1)
  {
    sub_1E13ECBA0(v26);
    v29 = v24;
    v30 = sub_1E1AF5A7C();
    sub_1E194EE30(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v32 = v31;
    v33 = type metadata accessor for ClosedGenericPageIntent(0);
    *v32 = 7107189;
    v32[1] = 0xE300000000000000;
    v32[2] = v33;
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69AB690], v30);
    swift_willThrow();
    v34 = sub_1E1AF39DC();
    (*(*(v34 - 8) + 8))(v45, v34);
    v23(v25, v29);
    return sub_1E134B88C(v49);
  }

  else
  {
    v36 = sub_1E1AF39DC();
    (*(*(v36 - 8) + 8))(v45, v36);
    v23(v25, v24);
    v37 = *(v27 + 32);
    v38 = v40;
    v37(v40, v26, v28);
    v39 = type metadata accessor for ClosedGenericPageIntent(0);
    return (v37)(v49 + *(v39 + 20), v38, v28);
  }
}

uint64_t ClosedGenericPageIntent.init(id:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = *(a1 + 32);
  v6 = *(type metadata accessor for ClosedGenericPageIntent(0) + 20);
  v7 = sub_1E1AEFCCC();
  v8 = *(*(v7 - 8) + 32);

  return v8(a3 + v6, a2, v7);
}

uint64_t ClosedGenericPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClosedGenericPageIntent(0) + 20);
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

JSValue __swiftcall ClosedGenericPageIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_6;
  }

  isa = result.super.isa;
  sub_1E134E724(v1, v9);
  v6 = [v3 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1E1AF6C5C();
  type metadata accessor for ClosedGenericPageIntent(0);
  v9[0] = sub_1E1AEFBDC();
  v9[1] = v7;
  v8 = [v3 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (v8)
  {
    sub_1E1AF6C5C();
    return isa;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t AnyGenericPageIntent.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v29 = a2;
  v27 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AEFCCC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  sub_1E1AF381C();
  sub_1E1AF36FC();
  v16 = *(v9 + 8);
  v16(v11, v8);
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_1E13ECBA0(v7);
    v17 = sub_1E1AF5A7C();
    sub_1E194EE30(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v19 = v18;
    v22 = type metadata accessor for AnyGenericPageIntent(0, v28, v20, v21);
    *v19 = 7107189;
    v19[1] = 0xE300000000000000;
    v19[2] = v22;
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69AB690], v17);
    swift_willThrow();
    v23 = sub_1E1AF39DC();
    (*(*(v23 - 8) + 8))(v29, v23);
    return (v16)(v30, v8);
  }

  else
  {
    v25 = sub_1E1AF39DC();
    (*(*(v25 - 8) + 8))(v29, v25);
    v16(v30, v8);
    v26 = *(v13 + 32);
    v26(v15, v7, v12);
    return (v26)(v27, v15, v12);
  }
}

uint64_t AnyGenericPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AEFCCC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

JSValue __swiftcall AnyGenericPageIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    v7 = sub_1E1AEFBDC();
    v6 = [v2 valueWithObject:sub_1E1AF755C() inContext:{in.super.isa, v7, v5}];
    result.super.isa = swift_unknownObjectRelease();
    if (v6)
    {
      sub_1E1AF6C5C();
      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E194EE30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E194EEF8(uint64_t a1)
{
  result = sub_1E1AEFCCC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void static ArcadeSeeAllGamesRequestDescriptor.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return;
    }
  }

  else if (sub_1E1AF74AC() & 1) == 0 || ((v2 ^ v4))
  {
    return;
  }

  sub_1E14F8FF4(v3, v5);
}

void sub_1E194F02C(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return;
    }
  }

  else if (sub_1E1AF74AC() & 1) == 0 || ((v2 ^ v4))
  {
    return;
  }

  sub_1E14F8FF4(v3, v5);
}

void *sub_1E194F100()
{
  v1 = v0;
  v2 = sub_1E1AF2F7C();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF2F3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1E1AF470C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CA0, &qword_1E1B044C0);
  swift_allocObject();
  v12 = sub_1E1AF35CC();
  v0[4] = 0;
  v0[5] = 0;
  v0[3] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CE0, &unk_1E1B04940);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v0[6] = v13;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v15 = result;
    v16 = sub_1E1AF5DBC();
    v17 = [v15 applicationIsInstalled_];

    *(v1 + 16) = v17;
    sub_1E1AF46FC();
    v18 = sub_1E1497BA0(&unk_1F5C2DAB0);
    sub_1E1455104(&unk_1F5C2DAD0);
    *v7 = v18;
    v19 = *MEMORY[0x1E698B188];
    v20 = *(v5 + 104);
    v26 = v4;
    v20(v7, v19, v4);
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    v21 = v27;
    sub_1E1AF2F6C();
    *(&v31 + 1) = v8;
    v32 = MEMORY[0x1E69AB218];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v30);
    (*(v9 + 16))(boxed_opaque_existential_0, v11, v8);
    swift_allocObject();
    swift_weakInit();

    v23 = sub_1E1AF2F5C();
    v25 = v24;

    (*(v28 + 8))(v21, v29);
    (*(v5 + 8))(v7, v26);
    (*(v9 + 8))(v11, v8);

    __swift_destroy_boxed_opaque_existential_1(&v30);
    v1[4] = v23;
    v1[5] = v25;
    swift_unknownObjectRelease();
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E194F4E8(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v6 = a1;
    v7 = sub_1E1AF71CC();
    a1 = v6;
    if (!v7)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1E68FFD80](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v2 = *(a1 + 32);
  }

  v3 = v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 48);
    MEMORY[0x1EEE9AC00](Strong);

    os_unfair_lock_lock(v5 + 4);
    sub_1E194F6AC();
    os_unfair_lock_unlock(v5 + 4);
  }

  else
  {
  }
}

uint64_t sub_1E194F620()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1E194F6AC()
{
  v1 = *(v0 + 16);
  result = [*(v0 + 24) isInstalled];
  v3 = *(v1 + 16);
  *(v1 + 16) = result;
  if (result != v3)
  {
    return sub_1E1AF35BC();
  }

  return result;
}

AppStoreKit::MetadataRibbonSecondaryViewPlacement_optional __swiftcall MetadataRibbonSecondaryViewPlacement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

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

uint64_t MetadataRibbonSecondaryViewPlacement.rawValue.getter()
{
  if (*v0)
  {
    return 0x676E696C69617274;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

void sub_1E194F7A8(char *a2@<X8>)
{
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

AppStoreKit::MetadataRibbonItemType_optional __swiftcall MetadataRibbonItemType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MetadataRibbonItemType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 6775156;
    v7 = 0x72656469766964;
    if (v1 != 8)
    {
      v7 = 0x6E776F6E6B6E75;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000012;
    if (v1 != 5)
    {
      v8 = 0x65706F6C65766564;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6974615272657375;
    v3 = 0xD000000000000010;
    v4 = 0xD000000000000015;
    if (v1 != 3)
    {
      v4 = 0xD00000000000001FLL;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x736F507472616863;
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
}

uint64_t sub_1E194F9D0()
{
  v1 = *v0;
  sub_1E1AF762C();
  sub_1E19DB8DC(v3, v1);
  return sub_1E1AF767C();
}

uint64_t sub_1E194FA20(uint64_t a1)
{
  v2 = *v1;
  sub_1E1AF762C();
  sub_1E19DB8DC(v4, v2);
  return sub_1E1AF767C();
}

unint64_t sub_1E194FA70@<X0>(unint64_t *a1@<X8>)
{
  result = MetadataRibbonItemType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

AppStoreKit::MetadataRibbonItemViewType_optional __swiftcall MetadataRibbonItemViewType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MetadataRibbonItemViewType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x4373726F74696465;
  v3 = 0x72656469766964;
  if (v1 != 5)
  {
    v3 = 0x6867696C68676968;
  }

  v4 = 0x6974615272617473;
  if (v1 != 3)
  {
    v4 = 0x6562614C74786574;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x7469576567616D69;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

double sub_1E194FC18(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

void sub_1E194FD6C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006563696F68;
  v4 = 0x4373726F74696465;
  v5 = 0xE700000000000000;
  v6 = 0x72656469766964;
  if (v2 != 5)
  {
    v6 = 0x6867696C68676968;
    v5 = 0xEF74786554646574;
  }

  v7 = 0xEA0000000000676ELL;
  v8 = 0x6974615272617473;
  if (v2 != 3)
  {
    v8 = 0x6562614C74786574;
    v7 = 0xE90000000000006CLL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x7469576567616D69;
    v3 = 0xEE006C6562614C68;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001E1B57890;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t MetadataRibbonItem.__allocating_init(id:itemType:viewContainerType:labelText:artwork:borderedText:highlightedText:starRating:borderTextViewPlacement:useAdsLocale:impressionMetrics:maxCharacterCount:truncationLegibilityCharacterCountThreshold:allowsTruncation:)(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, char *a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, char a19)
{
  v23 = swift_allocObject();
  LOBYTE(a2) = *a2;
  LOBYTE(a3) = *a3;
  v24 = *a12;
  v25 = OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_impressionMetrics;
  v26 = sub_1E1AF46DC();
  (*(*(v26 - 8) + 56))(v23 + v25, 1, 1, v26);
  v27 = v23 + OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_maxCharacterCount;
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v23 + OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_truncationLegibilityCharacterCountThreshold;
  *v28 = 0;
  *(v28 + 8) = 1;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_allowsTruncation) = 2;
  v29 = *(a1 + 16);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v29;
  *(v23 + 48) = *(a1 + 32);
  *(v23 + 56) = a2;
  *(v23 + 57) = a3;
  *(v23 + 64) = a4;
  *(v23 + 72) = a5;
  *(v23 + 80) = a6;
  *(v23 + 88) = a7;
  *(v23 + 96) = a8;
  *(v23 + 104) = a10;
  *(v23 + 112) = a11;
  *(v23 + 120) = a9;
  *(v23 + 124) = v24;
  *(v23 + 125) = a13;
  v30 = OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_impressionMetrics;
  swift_beginAccess();
  sub_1E18A569C(a14, v23 + v30);
  swift_endAccess();
  v31 = v23 + OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_maxCharacterCount;
  swift_beginAccess();
  *v31 = a15;
  *(v31 + 8) = a16 & 1;
  v32 = v23 + OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_truncationLegibilityCharacterCountThreshold;
  swift_beginAccess();
  *v32 = a17;
  *(v32 + 8) = a18 & 1;
  v33 = OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_allowsTruncation;
  swift_beginAccess();
  *(v23 + v33) = a19;
  return v23;
}

uint64_t MetadataRibbonItem.init(id:itemType:viewContainerType:labelText:artwork:borderedText:highlightedText:starRating:borderTextViewPlacement:useAdsLocale:impressionMetrics:maxCharacterCount:truncationLegibilityCharacterCountThreshold:allowsTruncation:)(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, char *a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, char a19)
{
  v22 = *a2;
  v23 = *a3;
  v24 = *a12;
  v25 = OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_impressionMetrics;
  v26 = sub_1E1AF46DC();
  (*(*(v26 - 8) + 56))(v19 + v25, 1, 1, v26);
  v27 = v19 + OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_maxCharacterCount;
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v19 + OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_truncationLegibilityCharacterCountThreshold;
  *v28 = 0;
  *(v28 + 8) = 1;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_allowsTruncation) = 2;
  v29 = *(a1 + 16);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v29;
  *(v19 + 48) = *(a1 + 32);
  *(v19 + 56) = v22;
  *(v19 + 57) = v23;
  *(v19 + 64) = a4;
  *(v19 + 72) = a5;
  *(v19 + 80) = a6;
  *(v19 + 88) = a7;
  *(v19 + 96) = a8;
  *(v19 + 104) = a10;
  *(v19 + 112) = a11;
  *(v19 + 120) = a9;
  *(v19 + 124) = v24;
  *(v19 + 125) = a13;
  v30 = OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_impressionMetrics;
  swift_beginAccess();
  sub_1E18A569C(a14, v19 + v30);
  swift_endAccess();
  v31 = v19 + OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_maxCharacterCount;
  swift_beginAccess();
  *v31 = a15;
  *(v31 + 8) = a16 & 1;
  v32 = v19 + OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_truncationLegibilityCharacterCountThreshold;
  swift_beginAccess();
  *v32 = a17;
  *(v32 + 8) = a18 & 1;
  v33 = OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_allowsTruncation;
  swift_beginAccess();
  *(v19 + v33) = a19;
  return v19;
}

uint64_t MetadataRibbonItem.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v90 = a2;
  v80 = sub_1E1AEFEAC();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v84 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v64 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v87 = &v64 - v10;
  v11 = sub_1E1AF39DC();
  v88 = *(v11 - 8);
  v89 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF380C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v83 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v64 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v64 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - v22;
  sub_1E1AF381C();
  sub_1E1950FC8();
  sub_1E1AF36DC();
  v24 = *(v14 + 8);
  v24(v23, v13);
  if (v93 == 7)
  {
    v25 = sub_1E1AF5A7C();
    sub_1E1951884(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v26 = 0x6570795477656976;
    v26[1] = 0xE800000000000000;
    v26[2] = v81;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x1E69AB690], v25);
    swift_willThrow();
    (*(v88 + 8))(v90, v89);
    return (v24)(a1, v13);
  }

  else
  {
    v77 = v93;
    v81 = v2;
    sub_1E1AF381C();
    sub_1E1951028();
    sub_1E1AF369C();
    v24(v23, v13);
    v76 = v93;
    sub_1E1AF381C();
    v75 = sub_1E1AF37CC();
    v74 = v28;
    v24(v23, v13);
    type metadata accessor for Artwork(0);
    sub_1E1AF381C();
    v66 = *(v88 + 16);
    v66(v86, v90, v89);
    sub_1E1951884(&qword_1EE1E4BB8, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_1E1AF464C();
    v73 = v93;
    sub_1E1AF381C();
    v72 = sub_1E1AF37CC();
    v71 = v29;
    v24(v23, v13);
    sub_1E1AF381C();
    v70 = sub_1E1AF37CC();
    v69 = v30;
    v24(v23, v13);
    sub_1E1AF381C();
    v31 = sub_1E1AF375C();
    v24(v20, v13);
    if ((v31 & 0x100000000) != 0)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = *&v31;
    }

    sub_1E1AF381C();
    sub_1E195107C();
    sub_1E1AF369C();
    v24(v23, v13);
    v68 = v93;
    v33 = v82;
    sub_1E1AF381C();
    v67 = sub_1E1AF370C();
    v24(v33, v13);
    v34 = sub_1E1AF46DC();
    sub_1E1AF381C();
    v66(v86, v90, v89);
    sub_1E1AF464C();
    sub_1E1AF381C();
    v35 = sub_1E1AF36EC();
    LODWORD(v86) = v36;
    v24(v23, v13);
    sub_1E1AF381C();
    v82 = sub_1E1AF36EC();
    LODWORD(v66) = v37;
    v24(v23, v13);
    sub_1E1AF381C();
    v65 = sub_1E1AF370C();
    v24(v23, v13);
    v38 = v83;
    sub_1E1AF381C();
    v39 = sub_1E1AF37CC();
    if (v40)
    {
      v91 = v39;
      v92 = v40;
      sub_1E1AF6F6C();
      (*(v88 + 8))(v90, v89);
      v24(a1, v13);
      v41 = v38;
    }

    else
    {
      v42 = v78;
      sub_1E1AEFE9C();
      v43 = sub_1E1AEFE7C();
      v64 = v35;
      v44 = v38;
      v46 = v45;
      (*(v79 + 8))(v42, v80);
      v91 = v43;
      v92 = v46;
      sub_1E1AF6F6C();
      (*(v88 + 8))(v90, v89);
      v24(a1, v13);
      v41 = v44;
      v35 = v64;
    }

    v24(v41, v13);
    v47 = v84;
    sub_1E134B7C8(v87, v84);
    v48 = *(v34 - 8);
    v49 = *(v48 + 48);
    v50 = v49(v47, 1, v34);
    v51 = v85;
    if (v50 == 1)
    {
      v52 = *(v48 + 56);
      v52(v85, 1, 1, v34);
      if (v49(v47, 1, v34) != 1)
      {
        sub_1E13814C0(v47);
      }
    }

    else
    {
      (*(v48 + 32))(v85, v47, v34);
      v52 = *(v48 + 56);
      v52(v51, 0, 1, v34);
    }

    type metadata accessor for MetadataRibbonItem(0);
    v53 = swift_allocObject();
    v52((v53 + OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_impressionMetrics), 1, 1, v34);
    v54 = v53 + OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_maxCharacterCount;
    *v54 = 0;
    *(v54 + 8) = 1;
    v55 = v53 + OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_truncationLegibilityCharacterCountThreshold;
    *v55 = 0;
    *(v55 + 8) = 1;
    *(v53 + OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_allowsTruncation) = 2;
    v56 = v94;
    *(v53 + 16) = v93;
    *(v53 + 32) = v56;
    *(v53 + 48) = v95;
    *(v53 + 56) = v76;
    *(v53 + 57) = v77;
    v57 = v74;
    *(v53 + 64) = v75;
    *(v53 + 72) = v57;
    v58 = v72;
    *(v53 + 80) = v73;
    *(v53 + 88) = v58;
    v59 = v70;
    *(v53 + 96) = v71;
    *(v53 + 104) = v59;
    *(v53 + 112) = v69;
    *(v53 + 120) = v32;
    *(v53 + 124) = v68;
    *(v53 + 125) = v67 & 1;
    v60 = OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_impressionMetrics;
    swift_beginAccess();
    sub_1E18A569C(v51, v53 + v60);
    swift_endAccess();
    v61 = v53 + OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_maxCharacterCount;
    swift_beginAccess();
    *v61 = v35;
    *(v61 + 8) = v86 & 1;
    v62 = v53 + OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_truncationLegibilityCharacterCountThreshold;
    swift_beginAccess();
    *v62 = v82;
    *(v62 + 8) = v66 & 1;
    v63 = OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_allowsTruncation;
    swift_beginAccess();
    result = v53;
    *(v53 + v63) = v65;
  }

  return result;
}

unint64_t sub_1E1950FC8()
{
  result = qword_1EE1D8640;
  if (!qword_1EE1D8640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D8640);
  }

  return result;
}

unint64_t sub_1E1951028()
{
  result = qword_1EE1DA4F0;
  if (!qword_1EE1DA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DA4F0);
  }

  return result;
}

unint64_t sub_1E195107C()
{
  result = qword_1EE1D3C30;
  if (!qword_1EE1D3C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D3C30);
  }

  return result;
}

uint64_t type metadata accessor for MetadataRibbonItem(uint64_t a1)
{
  result = qword_1EE1DDEB0;
  if (!qword_1EE1DDEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MetadataRibbonItem.labelText.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t MetadataRibbonItem.borderedText.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t MetadataRibbonItem.highlightedText.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t sub_1E19511F4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1E13815A4(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_impressionMetrics;
  swift_beginAccess();
  sub_1E18A569C(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1E19512B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_impressionMetrics;
  swift_beginAccess();
  return sub_1E13815A4(v1 + v3, a1);
}

uint64_t sub_1E195130C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_impressionMetrics;
  swift_beginAccess();
  sub_1E18A569C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_1E19513D8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_maxCharacterCount;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void sub_1E19514A4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_truncationLegibilityCharacterCountThreshold;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_1E1951564()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1E19515A8(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_allowsTruncation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *MetadataRibbonItem.deinit()
{
  sub_1E134B88C(v0 + 16);

  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_impressionMetrics);
  return v0;
}

uint64_t MetadataRibbonItem.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 16);

  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_impressionMetrics);

  return swift_deallocClassInstance();
}

unint64_t sub_1E1951738()
{
  result = qword_1ECEBB5C8;
  if (!qword_1ECEBB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB5C8);
  }

  return result;
}

unint64_t sub_1E1951790()
{
  result = qword_1ECEBB5D0;
  if (!qword_1ECEBB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB5D0);
  }

  return result;
}

unint64_t sub_1E19517E8()
{
  result = qword_1ECEBB5D8;
  if (!qword_1ECEBB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB5D8);
  }

  return result;
}

uint64_t sub_1E1951884(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E19518DC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = MetadataRibbonItem.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E1951908@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_impressionMetrics;
  swift_beginAccess();
  return sub_1E13815A4(v3 + v4, a1);
}

void keypath_set_5Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
}

void sub_1E19519F8(uint64_t a1)
{
  sub_1E134EAF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t Shelf.seeAllAction.getter()
{
  v2[3] = &type metadata for Feature;
  v2[4] = sub_1E1309EB0();
  LOBYTE(v2[0]) = 8;
  sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(v2);
  if (*(v0 + 40))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t (*sub_1E1951E34@<X0>(uint64_t (*result)(__int128 *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>))(__int128 *)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_1E1300B24(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return __swift_destroy_boxed_opaque_existential_1(v9);
      }

      if (v8)
      {
        return sub_1E1308EC0(v9, a3);
      }

      result = __swift_destroy_boxed_opaque_existential_1(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t Shelf.title.getter()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 72);

  return v2;
}

uint64_t Shelf.subtitle.getter()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 112);

  return v2;
}

uint64_t Shelf.eyebrow.getter()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);

  return v2;
}

void Shelf.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v295 = a2;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A0, &unk_1E1B39700);
  v254 = *(v285 - 8);
  MEMORY[0x1EEE9AC00](v285);
  v284 = &v231 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v274 = &v231 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v273 = &v231 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v277 = &v231 - v9;
  v10 = sub_1E1AEFEAC();
  v259 = *(v10 - 8);
  v260 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v258 = &v231 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v272 = &v231 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v283 = &v231 - v15;
  v16 = sub_1E1AF39DC();
  v293 = *(v16 - 8);
  v294 = v16;
  MEMORY[0x1EEE9AC00](v16);
  *&v271 = &v231 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v257 = &v231 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v276 = &v231 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v282 = &v231 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v287 = &v231 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v288 = &v231 - v27;
  v28 = sub_1E1AF380C();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v256 = &v231 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v255 = &v231 - v32;
  MEMORY[0x1EEE9AC00](v33);
  *&v270 = &v231 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v269 = &v231 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v268 = &v231 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v267 = &v231 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v266 = &v231 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v265 = &v231 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v264 = &v231 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v263 = &v231 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v262 = &v231 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v261 = &v231 - v52;
  MEMORY[0x1EEE9AC00](v53);
  *&v279 = &v231 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v286 = &v231 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v278 = &v231 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v231 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v231 - v63;
  v328 = a1;
  sub_1E1AF381C();
  v65 = sub_1E1AF37CC();
  v67 = v66;
  v280 = v29;
  v70 = v29[1];
  v68 = v29 + 1;
  v69 = v70;
  (v70)(v64, v28);
  if (!v67)
  {
    v77 = sub_1E1AF5A7C();
    sub_1E1959590(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v78 = 0x54746E65746E6F63;
    v78[1] = 0xEB00000000657079;
    v78[2] = v292;
    (*(*(v77 - 8) + 104))(v78, *MEMORY[0x1E69AB690], v77);
    swift_willThrow();
    (*(v293 + 8))(v295, v294);
    (v69)(v328, v28);
    return;
  }

  v290 = v28;
  v291 = v69;
  v289 = v68;

  Shelf.ContentType.init(rawValue:)(v317);
  if (LOBYTE(v317[0]) == 100)
  {
    v71 = sub_1E1AF5A7C();
    sub_1E1959590(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v73 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B0, &qword_1E1B1A060);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1E1B02CC0;
    *(v74 + 32) = swift_allocError();
    *v75 = v65;
    v75[1] = v67;
    v75[2] = &type metadata for Shelf.ContentType;
    v76 = *(*(v71 - 8) + 104);
    v76(v75, *MEMORY[0x1E69AB680], v71);
    *v73 = 0x54746E65746E6F63;
    v73[1] = 0xEB00000000657079;
    v73[2] = v292;
    v73[3] = v74;
    v76(v73, *MEMORY[0x1E69AB6A0], v71);
    swift_willThrow();
    (*(v293 + 8))(v295, v294);
    (v291)(v328, v290);
    return;
  }

  v252 = LOBYTE(v317[0]);

  sub_1E1AF381C();
  v79 = sub_1E1AF370C();
  v80 = v290;
  (v291)(v61, v290);
  v81 = v295;
  v82 = v293;
  v83 = v286;
  if (v79 != 2 && (v79 & 1) != 0)
  {
    if (qword_1EE1E3C18 != -1)
    {
      swift_once();
    }

    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB320, &unk_1E1B42730);
    __swift_project_value_buffer(v84, qword_1EE216218);
    sub_1E1AF39FC();
    if (LOBYTE(v317[0]) == 2 || (v317[0] & 1) == 0)
    {
      sub_1E195900C();
      swift_allocError();
      swift_willThrow();
      (*(v82 + 8))(v81, v294);
      (v291)(v328, v80);
      return;
    }
  }

  v85 = v278;
  sub_1E1AF381C();
  v249 = sub_1E1AF36EC();
  v248 = v86;
  (v291)(v85, v80);
  sub_1E1AF381C();
  v87 = v82 + 16;
  v278 = *(v82 + 16);
  v88 = v288;
  v89 = v294;
  (v278)(v288, v81, v294);
  Shelf.PresentationHints.init(deserializing:using:)(v83, v88, v317);
  v247 = *&v317[0];
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v90 = v89;
  v91 = v278;
  (v278)(v88, v81, v90);
  sub_1E1AF464C();
  type metadata accessor for PageChangeMetrics();
  sub_1E1AF381C();
  v92 = v295;
  v93 = v294;
  v91(v88, v295, v294);
  sub_1E1959590(qword_1EE1F0FE0, type metadata accessor for PageChangeMetrics, &protocol conformance descriptor for PageChangeMetrics);
  sub_1E1AF464C();
  v251 = *&v317[0];
  v94 = v287;
  v253 = v87;
  v91(v287, v92, v93);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55C0, &unk_1E1B16B50);
  swift_allocObject();
  v275 = sub_1E1AF35CC();
  *&v317[0] = v275;
  if (qword_1EE1E3BF8 != -1)
  {
    goto LABEL_89;
  }

LABEL_12:
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5690, &qword_1E1B45A10);
  __swift_project_value_buffer(v96, qword_1EE2161E8);
  v97 = v282;
  sub_1E1AF395C();
  v98 = v279;
  v99 = v94;
  v100 = v328;
  sub_1E1AF381C();
  LOBYTE(v317[0]) = v252;
  v101 = v286;
  v280[2](v286, v100, v290);
  v280 = v95;
  v102 = v288;
  (v278)(v288, v99, v93);
  v103 = v100;
  v104 = sub_1E1958A70(v101, v102);
  v106 = v105;
  v108 = v107;
  v109 = v281;
  v110 = sub_1E19569A4(v98, v317, v104, v105, v107, v97);
  v281 = v109;
  if (v109)
  {
    sub_1E1958E48(v104, v106, v108);

    v111 = *(v293 + 8);
    v111(v295, v93);
    v112 = v103;
    v113 = v290;
    v114 = v291;
    (v291)(v112, v290);
    (v114)(v98, v113);
    v111(v282, v93);
    v111(v287, v93);
LABEL_34:
    sub_1E1308058(v283, &unk_1ECEB1770, &unk_1E1AFED20);
    return;
  }

  v250 = v110;
  (v291)(v98, v290);
  sub_1E1958E48(v104, v106, v108);
  LOBYTE(v317[0]) = v252;
  if (qword_1EE1E3BC0 != -1)
  {
    swift_once();
  }

  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB5E8, &qword_1E1B45A18);
  __swift_project_value_buffer(v115, qword_1EE2161B8);
  v116 = v288;
  sub_1E1AF395C();
  *&v317[0] = v250;
  v117 = v328;
  v118 = v294;
  v119 = v276;
  v120 = v286;
  if (qword_1EE1E3C08 != -1)
  {
    swift_once();
  }

  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB5F0, &qword_1E1B45A20);
  __swift_project_value_buffer(v121, qword_1EE216200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB5F8, &unk_1E1B45A28);
  sub_1E1AF395C();
  v122 = *(v293 + 8);
  v293 += 8;
  v246 = v122;
  v122(v116, v118);
  sub_1E1AF381C();
  v123 = sub_1E1AF37AC();
  (v291)(v120, v290);
  if (v123)
  {
    sub_1E17D637C(v117, v295, v119);
  }

  else
  {
    sub_1E1AF381C();
    v125 = v278;
    (v278)(v116, v295, v118);
    v126 = v257;
    v125(v257, v119, v118);
    _s11AppStoreKit11ShelfHeaderC13deserializing5using13seeAllContextACSg9JetEngine10JSONObjectV_AH11JSONContextVALtcfC_0(v120, v116, v126);
  }

  v257 = v124;

  v127 = v261;
  sub_1E1AF381C();
  v128 = sub_1E1AF37CC();
  v130 = v290;
  v131 = v291;
  if (v129)
  {
    *&v317[0] = v128;
    *(&v317[0] + 1) = v129;
  }

  else
  {
    v132 = v258;
    sub_1E1AEFE9C();
    v133 = sub_1E1AEFE7C();
    v135 = v134;
    (*(v259 + 8))(v132, v260);
    *&v317[0] = v133;
    *(&v317[0] + 1) = v135;
  }

  sub_1E1AF6F6C();
  (v131)(v127, v130);
  v136 = v262;
  sub_1E1AF381C();
  sub_1E1AF37CC();
  v138 = v137;
  (v131)(v136, v130);
  if (v138)
  {
    Shelf.ContentType.init(rawValue:)(v317);
    v139 = LOBYTE(v317[0]);
  }

  else
  {
    v139 = 100;
  }

  v244 = v139;
  sub_1E1AF381C();
  sub_1E1958E68();
  sub_1E1AF36DC();
  (v131)(v120, v130);
  v243 = v326;
  v140 = v263;
  sub_1E1AF381C();
  sub_1E1AF36FC();
  (v131)(v140, v130);
  v263 = 0xD000000000000010;
  v141 = v264;
  sub_1E1AF381C();
  v242 = sub_1E1AF370C();
  (v131)(v141, v130);
  v142 = v265;
  sub_1E1AF381C();
  v143 = sub_1E1AF37CC();
  v145 = v144;
  (v131)(v142, v130);
  v146 = 0x6E6F6D6D6F63;
  if (v145)
  {
    v146 = v143;
  }

  v241 = v146;
  v147 = 0xE600000000000000;
  if (v145)
  {
    v147 = v145;
  }

  v265 = v147;
  sub_1E1AF381C();
  sub_1E1958EBC();
  sub_1E1AF369C();
  (v131)(v120, v130);
  v239 = v325;
  v148 = v266;
  sub_1E1AF381C();
  v237 = sub_1E1AF37CC();
  v264 = v149;
  (v131)(v148, v130);
  type metadata accessor for Action(0);
  sub_1E1AF381C();
  v266 = static Action.tryToMakeInstance(byDeserializing:using:)(v120, v287);
  (v131)(v120, v130);
  sub_1E1AF381C();
  v150 = v288;
  (v278)(v288, v295, v294);
  sub_1E1958F10();
  sub_1E1AF464C();
  *&v279 = v324;
  v151 = v267;
  sub_1E1AF381C();
  v238 = sub_1E1AF370C();
  (v131)(v151, v130);
  v152 = v268;
  sub_1E1AF381C();
  v236 = sub_1E1AF370C();
  (v131)(v152, v130);
  sub_1E1AF381C();
  sub_1E1958F64();
  sub_1E1AF369C();
  (v131)(v120, v130);
  v240 = v323;
  v153 = v269;
  sub_1E1AF381C();
  v245 = sub_1E1AF370C();
  (v131)(v153, v130);
  sub_1E1AF381C();
  v154 = v294;
  (v278)(v150, v295, v294);
  sub_1E17D1100(v120, v150, v321);
  v261 = v321[0];
  v262 = v321[1];
  v267 = v321[2];
  v268 = v321[3];
  LODWORD(v269) = v322;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
  v155 = swift_allocObject();
  *(v155 + 16) = xmmword_1E1B06D70;
  *(v155 + 32) = v275;

  v156 = v270;
  v157 = v287;
  sub_1E1AF381C();
  v158 = v271;
  (v278)(v271, v157, v154);
  v159 = v281;
  Shelf.ContentsMetadata.init(deserializing:using:)(v156, v158, v317);
  v281 = v159;
  if (v159)
  {
    sub_1E151F260(v261, v262, v267, v268, v269);

    sub_1E1547120(v279);

    v160 = v294;
    v161 = v246;
    v246(v295, v294);
    (v291)(v328, v290);
    sub_1E1308058(v277, &unk_1ECEB4B60, &unk_1E1B02620);
    sub_1E1308058(v327, &unk_1ECEB5670, qword_1E1B03EC0);
    v161(v276, v160);
    v161(v282, v160);
    v161(v157, v160);
    goto LABEL_34;
  }

  v270 = v317[1];
  v271 = v317[0];
  v263 = v318;
  v235 = v319;
  v233 = v155;
  v234 = v320;
  v162 = v255;
  sub_1E1AF381C();
  sub_1E1AF371C();
  v164 = v290;
  v163 = v291;
  (v291)(v162, v290);
  sub_1E134FD1C(v283, v272, &unk_1ECEB1770, &unk_1E1AFED20);
  v165 = v256;
  sub_1E1AF381C();
  sub_1E1AF36FC();
  (v163)(v165, v164);
  sub_1E1AF381C();
  (v278)(v288, v295, v294);
  sub_1E1958FB8();
  sub_1E1AF464C();
  if (*(&v314 + 1) == 1)
  {
    v232 = 0;
    v255 = 0;
    v256 = 0;
    v253 = 0;
  }

  else
  {
    v256 = *(&v314 + 1);
    v255 = *(&v315 + 1);
    v253 = v315;
    v232 = v314;
  }

  v166 = v277;
  v167 = v257;
  v168 = v252;
  v169 = v265;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28C8, &qword_1E1B02F60);
  swift_allocObject();
  v278 = sub_1E1AF35CC();
  v170 = swift_allocObject();
  sub_1E134FD1C(v327, &v311, &unk_1ECEB5670, qword_1E1B03EC0);
  v286 = v170;
  v171 = v279;
  if (*(&v312 + 1))
  {
    v314 = v311;
    v315 = v312;
    v316 = v313;
  }

  else
  {
    v172 = v258;
    sub_1E1AEFE9C();
    v173 = sub_1E1AEFE7C();
    v175 = v174;
    v176 = v172;
    v170 = v286;
    (*(v259 + 8))(v176, v260);
    *&v307 = v173;
    *(&v307 + 1) = v175;
    sub_1E1AF6F6C();
    sub_1E1308058(&v311, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v177 = v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id;
  v178 = v315;
  *v177 = v314;
  *(v177 + 16) = v178;
  *(v177 + 32) = v316;
  sub_1E134FD1C(v272, v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  *(v170 + 16) = v168;
  v179 = v243;
  *(v170 + 17) = v244;
  *(v170 + 18) = v179;
  *(v170 + 24) = v250;
  LOBYTE(v314) = v168;

  *(v170 + 32) = sub_1E1956360(v180, &v314);
  sub_1E134FD1C(v166, v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched) = v242 & 1;
  v181 = (v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
  *v181 = v241;
  v181[1] = v169;
  v182 = v238;
  *(v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy) = v239;
  *(v170 + 40) = v167;
  *(v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) = v182 & 1;
  v183 = v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata;
  v184 = v270;
  *v183 = v271;
  *(v183 + 16) = v184;
  v185 = v234;
  v186 = v235;
  *(v183 + 32) = v263;
  *(v183 + 40) = v186;
  *(v183 + 48) = v185;
  v187 = v245;
  if (v171 >= 2)
  {
    v193 = objc_opt_self();

    v194 = [v193 defaultWorkspace];
    v192 = v240;
    if (!v194)
    {
      goto LABEL_93;
    }

    v195 = v194;

    v196 = sub_1E1AF5DBC();
    v197 = [v195 applicationIsInstalled_];

    v188 = v266;
    v189 = v264;
    v190 = v237;
    v191 = v236;
    v187 = v245;
    if ((v197 & 1) == 0)
    {
      sub_1E1547120(v171);

      v199 = (v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
      *v199 = 0;
      v199[1] = 0;
      *(v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = 0;
      *(v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = 1;
      goto LABEL_47;
    }
  }

  else
  {

    v188 = v266;
    v189 = v264;
    v190 = v237;
    v191 = v236;
    v192 = v240;
  }

  v198 = (v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
  *v198 = v190;
  v198[1] = v189;
  *(v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = v188;
  *(v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = v171;

LABEL_47:
  sub_1E134FD1C(v274, v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_1ECEBB780, &unk_1E1B029A0);
  sub_1E134FD1C(v273, v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics) = v251;
  *(v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints) = v247;
  *(v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal) = v191 & 1;
  *(v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_horizontalScrollTargetBehavior) = v192;
  *(v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isPersonalized) = v187 & 1;
  v200 = v249;
  if ((v248 & 1) != 0 || !v249)
  {
    LOBYTE(v314) = v168;

    v200 = sub_1E1956580();
  }

  else
  {
  }

  v201 = v269;
  v203 = v267;
  v202 = v268;
  v205 = v261;
  v204 = v262;
  v206 = v233;
  *(v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn) = v200;
  v207 = v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background;
  *v207 = v205;
  *(v207 + 8) = v204;
  *(v207 + 16) = v203;
  *(v207 + 24) = v202;
  *(v207 + 32) = v201;
  *(v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel) = v278;
  *(v170 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents) = v206;
  v94 = *(v170 + 24);
  v208 = sub_1E13C50E8();

  v209 = 0;
  v310 = MEMORY[0x1E68FF2E0](0, &type metadata for PersonalizationStyle, v208);
  v93 = (v94 + 32);
  v210 = 0uLL;
  v95 = &unk_1E1B219E0;
  v279 = xmmword_1E1B16440;
  v288 = (v94 + 32);
  while (2)
  {
    v211 = *(v94 + 16);
    if (v209 == v211)
    {
LABEL_55:
      v302 = 0;
      v209 = v211;
      v300 = v210;
      v301 = v210;
      goto LABEL_59;
    }

    while (1)
    {
      if ((v209 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        swift_once();
        goto LABEL_12;
      }

      if (v209 >= *(v94 + 16))
      {
        goto LABEL_88;
      }

      sub_1E1300B24(&v93[40 * v209++], &v300);
LABEL_59:
      v298[0] = v300;
      v298[1] = v301;
      v299 = v302;
      if (!*(&v301 + 1))
      {
        memset(v303, 0, 24);
        *(&v303[1] + 8) = v279;
LABEL_67:
        sub_1E1308058(v303, &qword_1ECEB55B8, &qword_1E1B16450);
        v309 = 0;
        v307 = 0u;
        v308 = 0u;
        goto LABEL_68;
      }

      sub_1E1308EC0(v298, v297);
      sub_1E1300B24(v297, &v296);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A8, &qword_1E1B2E400);
      if ((swift_dynamicCast() & 1) == 0)
      {
        memset(v303, 0, 40);
      }

      __swift_destroy_boxed_opaque_existential_1(v297);
      if (*(&v303[1] + 1) == 1)
      {
        goto LABEL_67;
      }

      v304 = v303[0];
      v305 = v303[1];
      v306 = *&v303[2];
      if (*(&v303[1] + 1))
      {
        break;
      }

      sub_1E1308058(&v304, &qword_1ECEB55B0, &unk_1E1B219E0);
      v210 = 0uLL;
      if (v209 == v211)
      {
        goto LABEL_55;
      }
    }

    *(&v305 + 1) = *(&v303[1] + 1);
    sub_1E134FD1C(&v304, v303, &qword_1ECEB55B0, &unk_1E1B219E0);
    if (!*(&v303[1] + 1))
    {
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      return;
    }

    sub_1E1308EC0(v303, &v307);
    sub_1E1308058(&v304, &qword_1ECEB55B0, &unk_1E1B219E0);
    if (!*(&v308 + 1))
    {
LABEL_68:
      sub_1E1308058(&v307, &qword_1ECEB55B0, &unk_1E1B219E0);
      v314 = 0u;
      v315 = 0u;
      v316 = 0;
      goto LABEL_69;
    }

    sub_1E1308EC0(&v307, &v311);
    v214 = *(&v312 + 1);
    v215 = v313;
    __swift_project_boxed_opaque_existential_1Tm(&v311, *(&v312 + 1));
    if ((PersonalizableModel.needsClientPersonalization.getter(v214, v215) & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v311);
LABEL_53:
      v93 = v288;
      v210 = 0uLL;
      continue;
    }

    break;
  }

  sub_1E1308EC0(&v311, &v314);
LABEL_69:
  v311 = v314;
  v312 = v315;
  v313 = v316;
  if (*(&v315 + 1))
  {
    sub_1E1308EC0(&v311, &v307);
    v212 = *(&v308 + 1);
    v213 = v309;
    __swift_project_boxed_opaque_existential_1Tm(&v307, *(&v308 + 1));
    (*(v213 + 16))(&v304, v212, v213);
    LOBYTE(v213) = v304;
    __swift_destroy_boxed_opaque_existential_1(&v307);
    sub_1E1893F1C(&v314, v213);
    goto LABEL_53;
  }

  v216 = v286;
  *&v286[OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles] = v310;
  v217 = &v216[OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata];
  v218 = v256;
  *v217 = v232;
  *(v217 + 1) = v218;
  v219 = v255;
  *(v217 + 2) = v253;
  *(v217 + 3) = v219;
  v220 = *&v216[OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents];
  if (v220 >> 62)
  {
    v221 = sub_1E1AF71CC();
  }

  else
  {
    v221 = *((v220 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v222 = v328;
  v223 = v295;
  v224 = v294;
  v225 = v282;
  if (!v221)
  {

    goto LABEL_86;
  }

  if (v221 < 1)
  {
    __break(1u);
    goto LABEL_92;
  }

  v288 = (v220 & 0xC000000000000001);
  v226 = (v254 + 8);

  v227 = 0;
  v228 = v220;
  do
  {
    if (v288)
    {
      MEMORY[0x1E68FFD80](v227, v220);
    }

    else
    {
    }

    ++v227;
    sub_1E15470BC();
    sub_1E1AF3CDC();
    v229 = v284;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(&v314);
    (*v226)(v229, v285);
    v220 = v228;
  }

  while (v221 != v227);

  v222 = v328;
  v223 = v295;
  v224 = v294;
  v225 = v282;
LABEL_86:

  v230 = v246;
  v246(v223, v224);
  (v291)(v222, v290);
  sub_1E1308058(v273, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E1308058(v272, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v274, &unk_1ECEBB780, &unk_1E1B029A0);
  sub_1E1308058(v277, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E1308058(v327, &unk_1ECEB5670, qword_1E1B03EC0);
  v230(v276, v224);
  v230(v225, v224);
  v230(v287, v224);
  sub_1E1308058(v283, &unk_1ECEB1770, &unk_1E1AFED20);
}

uint64_t *Shelf.__allocating_init(id:contentType:placeholderContentType:marker:items:header:url:mergeWhenFetched:batchGroup:fetchStrategy:footerTitle:footerAction:footerStyle:isHidden:isHorizontal:horizontalScrollTargetBehavior:isPersonalized:rowsPerColumn:background:onShouldRemoveModel:removeModelEvents:presentationHints:contentsMetadata:nextPreferredContentRefreshDate:impressionMetrics:refreshUrl:pageChangeMetrics:accessibilityMetadata:)(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, unsigned __int8 *a14, unsigned __int8 **a15, unsigned __int8 a16, char a17, unsigned __int8 *a18, char a19, uint64_t a20, __int128 *a21, unsigned __int8 *a22, uint64_t a23, uint64_t *a24, void **a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, __int128 *a30)
{
  LODWORD(v118) = a8;
  v126 = a7;
  v123 = a3;
  v124 = a6;
  v121 = a5;
  v122 = a2;
  v132 = a4;
  v125 = a27;
  LODWORD(v119) = a16;
  *&v127 = a10;
  v117 = a9;
  v116 = a24;
  v115 = a18;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A0, &unk_1E1B39700);
  v100 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v100 - v32;
  v33 = sub_1E1AEFEAC();
  v104 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v100 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = v30;
  v36 = swift_allocObject();
  v120 = *v122;
  v37 = *v123;
  v110 = *v132;
  v111 = v37;
  v38 = *a11;
  v39 = *a15;
  v131 = v36;
  v132 = v39;
  v107 = *v115;
  v40 = a21[1];
  v108 = *a21;
  v109 = v40;
  v105 = *(a21 + 16);
  v106 = *v116;
  v41 = *a25;
  v123 = a25[1];
  v42 = a25[2];
  v115 = a25[3];
  v116 = v42;
  v43 = a25[4];
  v113 = a25[5];
  v114 = v43;
  v112 = a25[6];
  v44 = *a30;
  v102 = a30[1];
  v103 = v44;
  v101 = a1;
  sub_1E134FD1C(a1, &v148, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v149 + 1))
  {
    v151 = v148;
    v152 = v149;
    v153 = v150;
  }

  else
  {
    sub_1E1AEFE9C();
    v45 = sub_1E1AEFE7C();
    v47 = v46;
    (*(v104 + 8))(v35, v33);
    *&v144 = v45;
    *(&v144 + 1) = v47;
    sub_1E1AF6F6C();
    sub_1E1308058(&v148, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v122 = a14;
  v104 = a13;
  v48 = v131;
  v49 = v131 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id;
  v50 = v152;
  *v49 = v151;
  *(v49 + 1) = v50;
  *(v49 + 4) = v153;
  sub_1E134FD1C(v125, v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  v51 = v120;
  *(v48 + 16) = v120;
  v52 = v110;
  *(v48 + 17) = v111;
  *(v48 + 18) = v52;
  v48[3] = v121;
  LOBYTE(v151) = v51;

  v48[4] = sub_1E1956360(v53, &v151);
  sub_1E134FD1C(v126, v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched) = v118 & 1;
  v54 = 0x6E6F6D6D6F63;
  if (v127)
  {
    v54 = v117;
  }

  v55 = 0xE600000000000000;
  if (v127)
  {
    v55 = v127;
  }

  v56 = (v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
  *v56 = v54;
  v56[1] = v55;
  *(v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy) = v38;
  v57 = v123;
  v48[5] = v124;
  *(v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) = v119 & 1;
  v58 = (v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata);
  v59 = v41;
  *v58 = v41;
  v58[1] = v57;
  v61 = v115;
  v60 = v116;
  v58[2] = v116;
  v58[3] = v61;
  v63 = v113;
  v62 = v114;
  v58[4] = v114;
  v58[5] = v63;
  v64 = v112;
  v58[6] = v112;
  if (v132 < 2)
  {

LABEL_12:
    v73 = v105;
    v74 = (v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
    v75 = v104;
    *v74 = a12;
    v74[1] = v75;
    *(v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = v122;
    *(v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = v132;

    goto LABEL_14;
  }

  v65 = v59;
  v66 = objc_opt_self();

  v119 = v65;
  v67 = v65;
  v68 = v123;
  sub_1E189EE00(v67, v123, v60, v61, v62, v63, v64);
  result = [v66 defaultWorkspace];
  if (!result)
  {
LABEL_57:
    __break(1u);
    return result;
  }

  v70 = result;
  sub_1E192B928(v119, v68, v60, v61, v62, v63, v64);

  v71 = sub_1E1AF5DBC();
  v72 = [v70 applicationIsInstalled_];

  if (v72)
  {
    goto LABEL_12;
  }

  v73 = v105;
  sub_1E1547120(v132);

  v76 = (v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
  *v76 = 0;
  v76[1] = 0;
  *(v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = 0;
  *(v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = 1;
LABEL_14:
  v123 = a22;
  v77 = a20;
  v121 = a26;
  sub_1E134FD1C(a26, v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_1ECEBB780, &unk_1E1B029A0);
  v119 = a28;
  sub_1E134FD1C(a28, v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics) = a29;
  *(v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints) = v106;
  *(v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal) = a17 & 1;
  *(v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_horizontalScrollTargetBehavior) = v107;
  *(v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isPersonalized) = a19 & 1;
  v118 = a29;
  if (a20)
  {
  }

  else
  {
    LOBYTE(v151) = v120;

    v77 = sub_1E1956580();
  }

  *(v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn) = v77;
  v78 = v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background;
  v79 = v109;
  *v78 = v108;
  *(v78 + 16) = v79;
  *(v78 + 32) = v73;
  *(v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel) = v123;
  *(v48 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents) = a23;
  v80 = v48[3];
  v81 = sub_1E13C50E8();

  v82 = 0;
  v147 = MEMORY[0x1E68FF2E0](0, &type metadata for PersonalizationStyle, v81);
  v83 = (v80 + 32);
  v84 = 0uLL;
  v127 = xmmword_1E1B16440;
  v85 = &qword_1ECEB55A8;
  v132 = (v80 + 32);
  while (2)
  {
    v86 = *(v80 + 16);
    if (v82 == v86)
    {
LABEL_21:
      v139 = 0;
      v82 = v86;
      v137 = v84;
      v138 = v84;
      goto LABEL_25;
    }

    while (1)
    {
      if ((v82 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        v95 = sub_1E1AF71CC();
        if (!v95)
        {
          goto LABEL_53;
        }

LABEL_43:
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55C0, &unk_1E1B16B50);
        if (v95 >= 1)
        {
          v132 = (v81 & 0xC000000000000001);
          v96 = (v100 + 8);

          v97 = 0;
          v98 = v81;
          do
          {
            if (v132)
            {
              MEMORY[0x1E68FFD80](v97, v81);
            }

            else
            {
            }

            ++v97;
            sub_1E15470BC();
            sub_1E1AF3CDC();
            v99 = v128;
            sub_1E1AF3CEC();

            __swift_destroy_boxed_opaque_existential_1(&v151);
            (*v96)(v99, v129);
            v81 = v98;
          }

          while (v95 != v97);

          v85 = v131;
          goto LABEL_54;
        }

        __break(1u);
        goto LABEL_56;
      }

      if (v82 >= *(v80 + 16))
      {
        goto LABEL_51;
      }

      sub_1E1300B24(&v83[40 * v82++], &v137);
LABEL_25:
      v135[0] = v137;
      v135[1] = v138;
      v136 = v139;
      if (!*(&v138 + 1))
      {
        memset(v140, 0, 24);
        *(&v140[1] + 8) = v127;
LABEL_33:
        sub_1E1308058(v140, &qword_1ECEB55B8, &qword_1E1B16450);
        v146 = 0;
        v144 = 0u;
        v145 = 0u;
        goto LABEL_34;
      }

      sub_1E1308EC0(v135, v134);
      sub_1E1300B24(v134, &v133);
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A8, &qword_1E1B2E400);
      if ((swift_dynamicCast() & 1) == 0)
      {
        memset(v140, 0, 40);
      }

      __swift_destroy_boxed_opaque_existential_1(v134);
      if (*(&v140[1] + 1) == 1)
      {
        goto LABEL_33;
      }

      v141 = v140[0];
      v142 = v140[1];
      v143 = *&v140[2];
      if (*(&v140[1] + 1))
      {
        break;
      }

      sub_1E1308058(&v141, &qword_1ECEB55B0, &unk_1E1B219E0);
      v84 = 0uLL;
      if (v82 == v86)
      {
        goto LABEL_21;
      }
    }

    *(&v142 + 1) = *(&v140[1] + 1);
    result = sub_1E134FD1C(&v141, v140, &qword_1ECEB55B0, &unk_1E1B219E0);
    if (!*(&v140[1] + 1))
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    sub_1E1308EC0(v140, &v144);
    sub_1E1308058(&v141, &qword_1ECEB55B0, &unk_1E1B219E0);
    if (!*(&v145 + 1))
    {
LABEL_34:
      sub_1E1308058(&v144, &qword_1ECEB55B0, &unk_1E1B219E0);
      v151 = 0u;
      v152 = 0u;
      v153 = 0;
      goto LABEL_35;
    }

    sub_1E1308EC0(&v144, &v148);
    v89 = *(&v149 + 1);
    v90 = v150;
    v91 = __swift_project_boxed_opaque_existential_1Tm(&v148, *(&v149 + 1));
    v92 = v89;
    v81 = v91;
    if ((PersonalizableModel.needsClientPersonalization.getter(v92, v90) & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v148);
LABEL_19:
      v83 = v132;
      v84 = 0uLL;
      continue;
    }

    break;
  }

  sub_1E1308EC0(&v148, &v151);
LABEL_35:
  v148 = v151;
  v149 = v152;
  v150 = v153;
  if (*(&v152 + 1))
  {
    sub_1E1308EC0(&v148, &v144);
    v88 = *(&v145 + 1);
    v87 = v146;
    __swift_project_boxed_opaque_existential_1Tm(&v144, *(&v145 + 1));
    (*(v87 + 16))(&v141, v88, v87);
    LOBYTE(v87) = v141;
    __swift_destroy_boxed_opaque_existential_1(&v144);
    v81 = &v147;
    sub_1E1893F1C(&v151, v87);
    goto LABEL_19;
  }

  v85 = v131;
  *(v131 + OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles) = v147;
  v93 = (v85 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata);
  v94 = v102;
  *v93 = v103;
  v93[1] = v94;
  v81 = *(v85 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents);
  if (v81 >> 62)
  {
    goto LABEL_52;
  }

  v95 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v95)
  {
    goto LABEL_43;
  }

LABEL_53:

LABEL_54:

  sub_1E1308058(v119, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E1308058(v125, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v121, &unk_1ECEBB780, &unk_1E1B029A0);
  sub_1E1308058(v126, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E1308058(v101, &unk_1ECEB5670, qword_1E1B03EC0);
  return v85;
}

uint64_t Shelf.eyebrowArtwork.getter()
{
  if (*(v0 + 40))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t Shelf.titleArtwork.getter()
{
  if (*(v0 + 40))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t Shelf.trailingArtwork.getter()
{
  if (*(v0 + 40))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t IncompleteShelfFetchStrategy.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6F4C656761506E6FLL;
  }
}

uint64_t sub_1E1955144(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x6F4C656761506E6FLL;
  }

  if (v2)
  {
    v4 = 0xEA00000000006461;
  }

  else
  {
    v4 = 0x80000001E1B57970;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x6F4C656761506E6FLL;
  }

  if (*a2)
  {
    v6 = 0x80000001E1B57970;
  }

  else
  {
    v6 = 0xEA00000000006461;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E19551F4()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E1955280(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E19552F8(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E195538C(unint64_t *a1@<X8>)
{
  v2 = 0x80000001E1B57970;
  v3 = 0x6F4C656761506E6FLL;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEA00000000006461;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t ShelfHorizontalScrollTargetBehavior.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C417265746E6563;
  }

  else
  {
    return 0x67696C4177656976;
  }
}

uint64_t sub_1E1955430(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C417265746E6563;
  }

  else
  {
    v3 = 0x67696C4177656976;
  }

  if (v2)
  {
    v4 = 0xEB0000000064656ELL;
  }

  else
  {
    v4 = 0xED000064656E6769;
  }

  if (*a2)
  {
    v5 = 0x6C417265746E6563;
  }

  else
  {
    v5 = 0x67696C4177656976;
  }

  if (*a2)
  {
    v6 = 0xED000064656E6769;
  }

  else
  {
    v6 = 0xEB0000000064656ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E19554EC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E1955584(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E1955608(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E19556A8(uint64_t *a1@<X8>)
{
  v2 = 0x67696C4177656976;
  if (*v1)
  {
    v2 = 0x6C417265746E6563;
  }

  v3 = 0xEB0000000064656ELL;
  if (*v1)
  {
    v3 = 0xED000064656E6769;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t *Shelf.init(id:contentType:placeholderContentType:marker:items:header:url:mergeWhenFetched:batchGroup:fetchStrategy:footerTitle:footerAction:footerStyle:isHidden:isHorizontal:horizontalScrollTargetBehavior:isPersonalized:rowsPerColumn:background:onShouldRemoveModel:removeModelEvents:presentationHints:contentsMetadata:nextPreferredContentRefreshDate:impressionMetrics:refreshUrl:pageChangeMetrics:accessibilityMetadata:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, unint64_t a10, unsigned __int8 *a11, uint64_t a12, uint64_t a13, unsigned __int8 *a14, unsigned __int8 **a15, unsigned __int8 a16, char a17, unsigned __int8 *a18, char a19, uint64_t a20, __int128 *a21, uint64_t a22, uint64_t a23, uint64_t *a24, void **a25, uint64_t *a26, uint64_t a27, unsigned __int8 *a28, uint64_t a29, __int128 *a30)
{
  v120 = a8;
  v132 = a7;
  *&v133 = a3;
  v129 = a5;
  v130 = a6;
  v138 = a4;
  v128 = a2;
  v131 = a27;
  LODWORD(v121) = a16;
  v122 = a10;
  v119 = a9;
  v127 = a24;
  v126 = a18;
  v136 = *v30;
  v137 = v30;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A0, &unk_1E1B39700);
  v105 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v105 - v32;
  v33 = sub_1E1AEFEAC();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v105 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = *v128;
  v37 = *v133;
  v115 = *v138;
  v116 = v37;
  v117 = *a11;
  v138 = *a15;
  v112 = *v126;
  v38 = *a21;
  v113 = a21[1];
  v114 = v38;
  v39 = *(a21 + 16);
  v110 = *v127;
  v40 = *a25;
  v118 = a25[1];
  v41 = a25[2];
  v126 = a25[3];
  v127 = v41;
  v42 = a25[4];
  v124 = a25[5];
  v125 = v42;
  *&v133 = a25[6];
  v43 = *a30;
  v107 = a30[1];
  v108 = v43;
  v106 = a1;
  sub_1E134FD1C(a1, &v154, &unk_1ECEB5670, qword_1E1B03EC0);
  v111 = v39;
  if (*(&v155 + 1))
  {
    v157 = v154;
    v158 = v155;
    v159 = v156;
  }

  else
  {
    sub_1E1AEFE9C();
    v44 = sub_1E1AEFE7C();
    v46 = v45;
    (*(v34 + 8))(v36, v33);
    *&v150 = v44;
    *(&v150 + 1) = v46;
    sub_1E1AF6F6C();
    sub_1E1308058(&v154, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v128 = a14;
  v109 = a13;
  v47 = v137;
  v48 = v137 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id;
  v49 = v158;
  *v48 = v157;
  *(v48 + 1) = v49;
  *(v48 + 4) = v159;
  sub_1E134FD1C(v131, v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  v50 = v123;
  *(v47 + 16) = v123;
  v51 = v115;
  *(v47 + 17) = v116;
  *(v47 + 18) = v51;
  v47[3] = v129;
  LOBYTE(v157) = v50;

  v47[4] = sub_1E1956360(v52, &v157);
  sub_1E134FD1C(v132, v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched) = v120 & 1;
  v53 = 0x6E6F6D6D6F63;
  if (v122)
  {
    v53 = v119;
  }

  v54 = 0xE600000000000000;
  if (v122)
  {
    v54 = v122;
  }

  v55 = (v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
  *v55 = v53;
  v55[1] = v54;
  *(v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy) = v117;
  v47[5] = v130;
  *(v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) = v121 & 1;
  v56 = (v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata);
  v57 = v40;
  *v56 = v40;
  v58 = v118;
  v60 = v126;
  v59 = v127;
  v56[1] = v118;
  v56[2] = v59;
  v61 = v124;
  v62 = v125;
  v56[3] = v60;
  v56[4] = v62;
  v63 = v133;
  v56[5] = v61;
  v56[6] = v63;
  if (v138 < 2)
  {

LABEL_12:
    v69 = (v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
    v70 = v109;
    *v69 = a12;
    v69[1] = v70;
    *(v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = v128;
    *(v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = v138;

    goto LABEL_14;
  }

  v64 = v61;
  v121 = objc_opt_self();

  sub_1E189EE00(v57, v58, v59, v60, v62, v64, v133);
  result = [v121 defaultWorkspace];
  if (!result)
  {
    goto LABEL_56;
  }

  v66 = result;
  sub_1E192B928(v57, v58, v127, v126, v125, v124, v133);

  v67 = sub_1E1AF5DBC();
  v68 = [v66 applicationIsInstalled_];

  if (v68)
  {
    goto LABEL_12;
  }

  sub_1E1547120(v138);

  v71 = (v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
  *v71 = 0;
  v71[1] = 0;
  *(v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = 0;
  *(v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = 1;
LABEL_14:
  v129 = a22;
  v72 = a20;
  v127 = a26;
  sub_1E134FD1C(a26, v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_1ECEBB780, &unk_1E1B029A0);
  v126 = a28;
  sub_1E134FD1C(a28, v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics) = a29;
  *(v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints) = v110;
  *(v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal) = a17 & 1;
  *(v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_horizontalScrollTargetBehavior) = v112;
  *(v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isPersonalized) = a19 & 1;
  v125 = a29;
  if (a20)
  {
  }

  else
  {
    LOBYTE(v157) = v123;

    v72 = sub_1E1956580();
  }

  *(v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn) = v72;
  v73 = v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background;
  v74 = v113;
  *v73 = v114;
  *(v73 + 16) = v74;
  *(v73 + 32) = v111;
  *(v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel) = v129;
  *(v47 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents) = a23;
  v75 = v47[3];
  v76 = sub_1E13C50E8();

  v77 = 0;
  v153 = MEMORY[0x1E68FF2E0](0, &type metadata for PersonalizationStyle, v76);
  v78 = v75 + 4;
  v79 = 0uLL;
  v80 = &qword_1ECEB55B0;
  v81 = &unk_1E1B219E0;
  v82 = &qword_1ECEB24B0;
  v83 = &qword_1E1B02640;
  v133 = xmmword_1E1B16440;
  v138 = v75;
  while (2)
  {
    while (2)
    {
      v84 = v75[2];
      if (v77 == v84)
      {
LABEL_19:
        v145 = 0;
        v77 = v84;
        v143 = v79;
        v144 = v79;
        goto LABEL_23;
      }

      while (1)
      {
        if ((v77 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        if (v77 >= v75[2])
        {
          goto LABEL_50;
        }

        sub_1E1300B24(&v78[5 * v77++], &v143);
LABEL_23:
        v141[0] = v143;
        v141[1] = v144;
        v142 = v145;
        if (!*(&v144 + 1))
        {
          memset(v146, 0, 24);
          *(&v146[1] + 8) = v133;
LABEL_31:
          sub_1E1308058(v146, &qword_1ECEB55B8, &qword_1E1B16450);
          v152 = 0;
          v150 = 0u;
          v151 = 0u;
          goto LABEL_32;
        }

        sub_1E1308EC0(v141, v140);
        sub_1E1300B24(v140, &v139);
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(v82, v83);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A8, &qword_1E1B2E400);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v146, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v140);
        if (*(&v146[1] + 1) == 1)
        {
          goto LABEL_31;
        }

        v147 = v146[0];
        v148 = v146[1];
        v149 = *&v146[2];
        if (*(&v146[1] + 1))
        {
          break;
        }

        sub_1E1308058(&v147, v80, v81);
        v79 = 0uLL;
        if (v77 == v84)
        {
          goto LABEL_19;
        }
      }

      *(&v148 + 1) = *(&v146[1] + 1);
      result = sub_1E134FD1C(&v147, v146, v80, v81);
      if (!*(&v146[1] + 1))
      {
        goto LABEL_55;
      }

      sub_1E1308EC0(v146, &v150);
      sub_1E1308058(&v147, v80, v81);
      if (!*(&v151 + 1))
      {
LABEL_32:
        sub_1E1308058(&v150, v80, v81);
        v157 = 0u;
        v158 = 0u;
        v159 = 0;
        goto LABEL_33;
      }

      sub_1E1308EC0(&v150, &v154);
      v94 = *(&v155 + 1);
      v95 = v156;
      v96 = __swift_project_boxed_opaque_existential_1Tm(&v154, *(&v155 + 1));
      v97 = v94;
      v76 = v96;
      if ((PersonalizableModel.needsClientPersonalization.getter(v97, v95) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v154);
        v79 = 0uLL;
        continue;
      }

      break;
    }

    sub_1E1308EC0(&v154, &v157);
LABEL_33:
    v154 = v157;
    v155 = v158;
    v156 = v159;
    if (*(&v158 + 1))
    {
      sub_1E1308EC0(&v154, &v150);
      v85 = v81;
      v86 = v80;
      v87 = v83;
      v88 = v82;
      v89 = v78;
      v90 = *(&v151 + 1);
      v91 = v152;
      __swift_project_boxed_opaque_existential_1Tm(&v150, *(&v151 + 1));
      v92 = *(v91 + 16);
      v93 = v91;
      v78 = v89;
      v82 = v88;
      v83 = v87;
      v80 = v86;
      v81 = v85;
      v75 = v138;
      v92(&v147, v90, v93);
      LOBYTE(v90) = v147;
      __swift_destroy_boxed_opaque_existential_1(&v150);
      v76 = &v153;
      sub_1E1893F1C(&v157, v90);
      v79 = 0uLL;
      continue;
    }

    break;
  }

  v82 = v137;
  *(v137 + OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles) = v153;
  v98 = (v82 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata);
  v99 = v107;
  *v98 = v108;
  v98[1] = v99;
  v76 = *(v82 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents);
  if (!(v76 >> 62))
  {
    v100 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v100)
    {
      goto LABEL_42;
    }

LABEL_52:

LABEL_53:

    sub_1E1308058(v126, &unk_1ECEB4B60, &unk_1E1B02620);
    sub_1E1308058(v131, &unk_1ECEB1770, &unk_1E1AFED20);
    sub_1E1308058(v127, &unk_1ECEBB780, &unk_1E1B029A0);
    sub_1E1308058(v132, &unk_1ECEB4B60, &unk_1E1B02620);
    sub_1E1308058(v106, &unk_1ECEB5670, qword_1E1B03EC0);
    return v82;
  }

LABEL_51:
  v100 = sub_1E1AF71CC();
  if (!v100)
  {
    goto LABEL_52;
  }

LABEL_42:
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55C0, &unk_1E1B16B50);
  if (v100 >= 1)
  {
    v138 = (v76 & 0xC000000000000001);
    v101 = (v105 + 8);

    v102 = 0;
    v103 = v76;
    do
    {
      if (v138)
      {
        MEMORY[0x1E68FFD80](v102, v76);
      }

      else
      {
      }

      ++v102;
      sub_1E15470BC();
      sub_1E1AF3CDC();
      v104 = v134;
      sub_1E1AF3CEC();

      __swift_destroy_boxed_opaque_existential_1(&v157);
      (*v101)(v104, v135);
      v76 = v103;
    }

    while (v100 != v102);

    v82 = v137;
    goto LABEL_53;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_1E1956360(uint64_t a1, _BYTE *a2)
{
  LOBYTE(v20[0]) = *a2;
  if (Shelf.ContentType.rawValue.getter() == 0x7261437961646F74 && v3 == 0xE900000000000064)
  {

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v5 = sub_1E1AF74AC();

    v6 = MEMORY[0x1E69E7CC0];
    if ((v5 & 1) == 0)
    {
      v21 = MEMORY[0x1E69E7CC0];
      v7 = *(a1 + 16);
      if (v7)
      {
        v8 = a1 + 32;
        do
        {
          sub_1E1300B24(v8, v20);
          sub_1E1300B24(v20, v16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA850, &qword_1E1B3BC30);
          if (swift_dynamicCast())
          {
            sub_1E1308EC0(v14, v17);
            v10 = v18;
            v9 = v19;
            __swift_project_boxed_opaque_existential_1Tm(v17, v18);
            v11 = (*(v9 + 8))(v10, v9);
            __swift_destroy_boxed_opaque_existential_1(v20);
            v12 = __swift_destroy_boxed_opaque_existential_1(v17);
            if (v11)
            {
              MEMORY[0x1E68FEF20](v12);
              if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1E1AF625C();
              }

              sub_1E1AF62AC();
              v6 = v21;
            }
          }

          else
          {
            v15 = 0;
            memset(v14, 0, sizeof(v14));
            __swift_destroy_boxed_opaque_existential_1(v20);
            sub_1E1308058(v14, &qword_1ECEBA848, qword_1E1B45FE0);
          }

          v8 += 40;
          --v7;
        }

        while (v7);
      }
    }
  }

  return v6;
}

uint64_t sub_1E1956580()
{
  v1 = *v0;
  if (v1 == 11)
  {
    return 2;
  }

  if (v1 != 3)
  {
    if (v1 == 1)
    {
      v2 = ASKDeviceTypeGetCurrent();
      v3 = sub_1E1AF5DFC();
      v5 = v4;
      if (v3 == sub_1E1AF5DFC() && v5 == v6)
      {
      }

      else
      {
        v8 = sub_1E1AF74AC();

        if ((v8 & 1) == 0)
        {
          v9 = ASKDeviceTypeGetCurrent();
          v10 = sub_1E1AF5DFC();
          v12 = v11;
          if (v10 != sub_1E1AF5DFC() || v12 != v13)
          {
            v14 = sub_1E1AF74AC();

            if ((v14 & 1) == 0)
            {
              return 3;
            }

            return 1;
          }

          goto LABEL_19;
        }
      }

      return 2;
    }

    return 1;
  }

  v9 = ASKDeviceTypeGetCurrent();
  v16 = sub_1E1AF5DFC();
  v18 = v17;
  if (v16 == sub_1E1AF5DFC() && v18 == v19)
  {
LABEL_19:

    return 1;
  }

  v21 = sub_1E1AF74AC();

  if (v21)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_1E1956780()
{
  v1 = *v0;
  sub_1E1951E34(sub_1E1959570, v0[3], v14);
  sub_1E134FD1C(v14, v13, &qword_1ECEB4CE0, &unk_1E1B47A50);
  if (!v13[3])
  {
    sub_1E1308058(v13, &qword_1ECEB4CE0, &unk_1E1B47A50);
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2860, &qword_1E1B02EA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    goto LABEL_9;
  }

  if (!*(&v7 + 1))
  {
LABEL_9:
    sub_1E1308058(v14, &qword_1ECEB4CE0, &unk_1E1B47A50);
    v2 = &qword_1ECEB2868;
    v3 = &unk_1E1B02EB0;
    v4 = &v6;
    return sub_1E1308058(v4, v2, v3);
  }

  sub_1E1308EC0(&v6, v13);
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel))
  {
    v11 = v1;
    v12 = sub_1E1959590(&qword_1ECEBB638, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
    *&v10 = v0;
    sub_1E1308EC0(&v10, &v6);
    sub_1E1300B24(v13, &v9);

    sub_1E1AF35BC();
    sub_1E1308058(&v6, &qword_1ECEBB640, &unk_1E1B45FD0);
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  v2 = &qword_1ECEB4CE0;
  v3 = &unk_1E1B47A50;
  v4 = v14;
  return sub_1E1308058(v4, v2, v3);
}

uint64_t sub_1E19569A4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v52 = a5;
  *&v48 = a3;
  *(&v48 + 1) = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B8, &unk_1E1B0C6B0);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v42 - v10;
  v11 = sub_1E1AF5A7C();
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v42 - v15;
  v17 = sub_1E1AF5A6C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a2;
  sub_1E1AF374C();
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    v24 = (*(v18 + 32))(v20, v16, v17);
    MEMORY[0x1EEE9AC00](v24);
    *(&v42 - 16) = v21;
    *(&v42 - 1) = a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
    v21 = sub_1E1AF59FC();
    (*(v18 + 8))(v20, v17);
    goto LABEL_20;
  }

  v42 = v6;
  sub_1E1308058(v16, &qword_1ECEB1F90, &qword_1E1B00D30);
  v22 = sub_1E1AF37CC();
  if (!v23)
  {
    goto LABEL_15;
  }

  if (v22 != 0xD000000000000010 || v23 != 0x80000001E1B7FB20)
  {
    v25 = sub_1E1AF74AC();

    if (v25)
    {
      goto LABEL_8;
    }

LABEL_15:
    sub_1E1959590(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    v29 = v47;
    swift_allocError();
    v31 = v30;
    v32 = type metadata accessor for Shelf(0);
    *v31 = 0x736D657469;
    v31[1] = 0xE500000000000000;
    v31[2] = v32;
    (*(v46 + 104))(v31, *MEMORY[0x1E69AB690], v29);
    swift_willThrow();
    return v21;
  }

LABEL_8:
  v26 = v21;
  if (qword_1EE1E3C08 != -1)
  {
    swift_once();
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB5F0, &qword_1E1B45A20);
  __swift_project_value_buffer(v27, qword_1EE216200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB5F8, &unk_1E1B45A28);
  sub_1E1AF39FC();
  v21 = v51[0];
  if (v51[0])
  {
    LOBYTE(v51[0]) = v26;
    if (qword_1EE1E3BC0 != -1)
    {
      swift_once();
    }

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB5E8, &qword_1E1B45A18);
    __swift_project_value_buffer(v28, qword_1EE2161B8);
    sub_1E1AF39FC();
    v53 = v49[0];
    if (Shelf.ContentType.isCompatible(with:)(&v53))
    {
      goto LABEL_20;
    }
  }

  v33 = type metadata accessor for Shelf(0);
  *v13 = 0xD000000000000010;
  v13[1] = 0x80000001E1B7FB20;
  v34 = MEMORY[0x1E69E7CC0];
  v13[2] = v33;
  v13[3] = v34;
  v35 = v46;
  v36 = v47;
  (*(v46 + 104))(v13, *MEMORY[0x1E69AB6A0], v47);
  v37 = v43;
  sub_1E1AF397C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43C0, &unk_1E1B1AB20);
  sub_1E1AF39FC();
  (*(v44 + 8))(v37, v45);
  sub_1E134FD1C(v51, v49, &qword_1ECEB43C8, &unk_1E1B0C6C0);
  if (v50)
  {
    __swift_project_boxed_opaque_existential_1Tm(v49, v50);
    sub_1E1959590(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    v38 = swift_allocError();
    (*(v35 + 16))(v39, v13, v36);
    sub_1E1AF4EBC();
    sub_1E1308058(v51, &qword_1ECEB43C8, &unk_1E1B0C6C0);
    (*(v35 + 8))(v13, v36);

    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  else
  {
    sub_1E1308058(v51, &qword_1ECEB43C8, &unk_1E1B0C6C0);
    (*(v35 + 8))(v13, v36);
    sub_1E1308058(v49, &qword_1ECEB43C8, &unk_1E1B0C6C0);
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_20:
  if (v52 != 2 || v48 != 0)
  {
    v40 = sub_1E1957EE0(v21, v48, *(&v48 + 1), v52);

    return v40;
  }

  return v21;
}

uint64_t Shelf.accessoryAction.getter()
{
  if (*(v0 + 40))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t Shelf.eyebrowArtworkSize.getter()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    return *(v1 + 40);
  }

  else
  {
    return 0;
  }
}

uint64_t Shelf.batchGroup.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);

  return v1;
}

uint64_t Shelf.footerTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);

  return v1;
}

id Shelf.footerStyle.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle);
  *a1 = v2;
  return sub_1E15470AC(v2);
}

void Shelf.contentsMetadata.getter(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata);
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 8);
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 16);
  v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 24);
  v6 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 32);
  v7 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 40);
  v8 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 48);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  sub_1E189EE00(v2, v3, v4, v5, v6, v7, v8);
}

double Shelf.background.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background);
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 8);
  v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 16);
  v6 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v2 + 32);
  *(a1 + 32) = v7;
  return sub_1E151F120(v3, v4, v5, v6, v7);
}

uint64_t sub_1E19573B8(uint64_t a1, uint64_t a2)
{
  sub_1E1300B24(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2860, &qword_1E1B02EA8);
  if (swift_dynamicCast())
  {
    sub_1E1308EC0(v7, v10);
    v3 = v11;
    v4 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    (*(v4 + 16))(v9, v3, v4);
    v5 = MEMORY[0x1E68FFC60](v9, a2);
    sub_1E134B88C(v9);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1E1308058(v7, &qword_1ECEB2868, &unk_1E1B02EB0);
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t Shelf.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30[-1] - v3;
  *&v31 = 0;
  *(&v31 + 1) = 0xE000000000000000;
  sub_1E1AF6FEC();
  v35 = v31;
  MEMORY[0x1E68FECA0](0x203A666C656853, 0xE700000000000000);
  v5 = *(v0 + 40);
  if (v5)
  {
    v7 = *(v5 + 72);
    v6 = *(v5 + 80);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *&v31 = v7;
  *(&v31 + 1) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40, &unk_1E1B02B90);
  sub_1E1AF714C();

  MEMORY[0x1E68FECA0](0x6E65746E6F63202CLL, 0xEF203A6570795474);
  LOBYTE(v31) = *(v1 + 16);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](0xD00000000000001ALL, 0x80000001E1B7FB40);
  LOBYTE(v31) = *(v1 + 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB608, &qword_1E1B45A38);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](0x6D6574496F6E202CLL, 0xEB00000000203A73);
  v8 = *(v1 + 24);
  *&v31 = *(v8 + 16);
  v9 = sub_1E1AF742C();
  MEMORY[0x1E68FECA0](v9);

  MEMORY[0x1E68FECA0](0x4C5255736168202CLL, 0xEA0000000000203ALL);
  sub_1E134FD1C(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, v4, &unk_1ECEB4B60, &unk_1E1B02620);
  v10 = sub_1E1AEFCCC();
  v11 = (*(*(v10 - 8) + 48))(v4, 1, v10);
  sub_1E1308058(v4, &unk_1ECEB4B60, &unk_1E1B02620);
  if (v11 == 1)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v11 == 1)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1E68FECA0](v12, v13);

  MEMORY[0x1E68FECA0](0x646469487369202CLL, 0xEC000000203A6E65);
  if (*(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x1E68FECA0](v14, v15);

  MEMORY[0x1E68FECA0](0x476863746162202CLL, 0xEE00203A70756F72);
  MEMORY[0x1E68FECA0](*(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup), *(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup + 8));
  MEMORY[0x1E68FECA0](0x203A6469202CLL, 0xE600000000000000);
  v16 = sub_1E1AF6F1C();
  MEMORY[0x1E68FECA0](v16);

  MEMORY[0x1E68FECA0](0x6E65746E6F63202CLL, 0xEE00203A73644974);
  v17 = *(v8 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1E135C2E8(0, v17, 0);
    v18 = v34;
    v19 = v8 + 32;
    do
    {
      sub_1E1300B24(v19, v30);
      __swift_project_boxed_opaque_existential_1Tm(v30, v30[3]);
      sub_1E1AF3FEC();
      __swift_destroy_boxed_opaque_existential_1(v30);
      v34 = v18;
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1E135C2E8((v20 > 1), v21 + 1, 1);
        v18 = v34;
      }

      *(v18 + 16) = v21 + 1;
      v22 = v18 + 40 * v21;
      v23 = v31;
      v24 = v32;
      *(v22 + 64) = v33;
      *(v22 + 32) = v23;
      *(v22 + 48) = v24;
      v19 += 40;
      --v17;
    }

    while (v17);
  }

  v25 = MEMORY[0x1E68FEF50](v18, MEMORY[0x1E69E69B8]);
  v27 = v26;

  MEMORY[0x1E68FECA0](v25, v27);

  return v35;
}

double Shelf.accessibilityMetadata.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata + 24);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 24) = v3;

  return result;
}

void *Shelf.deinit()
{

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, &unk_1ECEB4B60, &unk_1E1B02620);

  sub_1E1547120(*(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle));
  sub_1E192B928(*(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata), *(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 24), *(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 32), *(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 40), *(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 48));
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_1ECEBB780, &unk_1E1B029A0);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, &unk_1ECEB4B60, &unk_1E1B02620);

  sub_1E151F260(*(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background), *(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 24), *(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 32));

  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return v0;
}

uint64_t Shelf.__deallocating_deinit()
{
  Shelf.deinit();

  return swift_deallocClassInstance();
}

uint64_t Shelf.hashValue.getter()
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

void sub_1E1957D0C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  Shelf.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

uint64_t *sub_1E1957D50@<X0>(char **a1@<X0>, uint64_t **a2@<X8>)
{
  result = Shelf.mergingWith(_:)(*a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1E1957DBC()
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

uint64_t sub_1E1957E3C(uint64_t a1)
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

uint64_t sub_1E1957EE0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_1EE1E3BF0 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6968, &qword_1E1B1D550);
  __swift_project_value_buffer(v8, qword_1EE2161D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0, &unk_1E1B1C8F0);
  sub_1E1AF39FC();
  v56 = v59;
  if (!v59)
  {
    goto LABEL_16;
  }

  v55 = *(&v59 + 1);
  if (a4)
  {
    if (a4 == 1)
    {
      v9 = qword_1EE1D2A50;

      if (v9 != -1)
      {
        swift_once();
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB630, &unk_1E1B45FC0);
      __swift_project_value_buffer(v10, qword_1EE2154C8);
      type metadata accessor for DeviceType(0);
      sub_1E1AF39FC();
      v11 = sub_1E1AF5DFC();
      v13 = v12;
      if (v11 == sub_1E1AF5DFC() && v13 == v14)
      {

        v15 = 1;
      }

      else
      {
        v17 = sub_1E1AF74AC();

        if (v17)
        {
          v15 = 1;
        }

        else
        {
          v18 = sub_1E1AF5DFC();
          v20 = v19;
          if (v18 == sub_1E1AF5DFC() && v20 == v21)
          {

            v15 = 3;
          }

          else
          {
            v22 = sub_1E1AF74AC();

            if (v22)
            {
              v15 = 3;
            }

            else
            {
              v15 = 8;
            }
          }
        }
      }

      if (a2)
      {
        v16 = a2;
      }

      else
      {
        v16 = MEMORY[0x1E69E7CC0];
      }

      v53 = v15;
      goto LABEL_29;
    }

    swift_unknownObjectRelease();
LABEL_16:

    return a1;
  }

  v53 = a2;
  if (a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

LABEL_29:
  v23 = *(a1 + 16);
  v52 = a1;
  if (v23)
  {
    v24 = a1 + 32;
    v54 = v55 + 56;
    v25 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1E1300B24(v24, v63);
      sub_1E1300B24(v63, &v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
      type metadata accessor for Lockup(0);
      v26 = swift_dynamicCast();
      if (!v26)
      {
        goto LABEL_44;
      }

      v27 = *&v57[0];
      v28 = *(*&v57[0] + 24);
      *&v59 = *(*&v57[0] + 16);
      *(&v59 + 1) = v28;
      MEMORY[0x1EEE9AC00](v26);
      v50[2] = &v59;

      v29 = sub_1E14F2214(sub_1E14F35A4, v50, v16);

      if (v29)
      {
        break;
      }

      ObjectType = swift_getObjectType();
      v31 = *(v27 + 24);
      *&v57[0] = *(v27 + 16);
      *(&v57[0] + 1) = v31;
      v32 = v55;
      v33 = *(v55 + 56);

      v33(v57, ObjectType, v32);
      v35 = v34;

      v36 = swift_getObjectType();
      (*(v35 + 16))(v57, v36, v35);

      swift_unknownObjectRelease();
      v59 = v57[0];
      v60 = v57[1];
      v61 = v57[2];
      v62 = v58;
      v37 = v58 >> 60;
      if (v58 >> 60 != 2 && v37 != 7)
      {
        if (v37 != 8 || *(&v62 + 1) || v58 != 0x8000000000000000 || v59 != 1 || (v38 = vorrq_s8(v60, v61), *&vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL)) | *(&v59 + 1)))
        {
          sub_1E139CEA8(&v59);
          goto LABEL_44;
        }
      }

      sub_1E139CEA8(&v59);
      __swift_destroy_boxed_opaque_existential_1(v63);
LABEL_32:
      v24 += 40;
      if (!--v23)
      {
        goto LABEL_50;
      }
    }

LABEL_44:
    sub_1E1308EC0(v63, &v59);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1E135C74C(0, *(v25 + 16) + 1, 1);
      v25 = v64;
    }

    v41 = *(v25 + 16);
    v40 = *(v25 + 24);
    if (v41 >= v40 >> 1)
    {
      sub_1E135C74C((v40 > 1), v41 + 1, 1);
    }

    v42 = v60.i64[1];
    v43 = v61.i64[0];
    v44 = __swift_mutable_project_boxed_opaque_existential_1(&v59, v60.i64[1]);
    v45 = MEMORY[0x1EEE9AC00](v44);
    v47 = &v51 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v48 + 16))(v47, v45);
    sub_1E19A0830(v41, v47, &v64, v42, v43);
    __swift_destroy_boxed_opaque_existential_1(&v59);
    v25 = v64;
    goto LABEL_32;
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_50:

  swift_unknownObjectRelease();
  if (*(v25 + 16) >= v53)
  {
    return v25;
  }

  a1 = v52;

  return a1;
}

uint64_t sub_1E195859C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B8, &unk_1E1B0C6B0);
  v9 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v11 = &v23 - v10;
  v12 = sub_1E1AF5A7C();
  v24 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(v27[0]) = a2;
  v28 = a4;
  result = sub_1E17A2978(a1, a3, a4);
  if (v4)
  {
    v16 = type metadata accessor for Shelf(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B0, &qword_1E1B1A060);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1E1B02CC0;
    *(v17 + 32) = v4;
    *v14 = 0x736D657469;
    v14[1] = 0xE500000000000000;
    v14[2] = v16;
    v14[3] = v17;
    v18 = v24;
    (*(v24 + 104))(v14, *MEMORY[0x1E69AB6A0], v12);
    v19 = v4;
    sub_1E1AF397C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43C0, &unk_1E1B1AB20);
    sub_1E1AF39FC();
    (*(v9 + 8))(v11, v23);
    sub_1E134FD1C(v27, v25, &qword_1ECEB43C8, &unk_1E1B0C6C0);
    if (v26)
    {
      __swift_project_boxed_opaque_existential_1Tm(v25, v26);
      sub_1E1959590(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
      v20 = swift_allocError();
      (*(v18 + 16))(v21, v14, v12);
      sub_1E1AF4EBC();

      sub_1E1308058(v27, &qword_1ECEB43C8, &unk_1E1B0C6C0);
      (*(v18 + 8))(v14, v12);

      result = __swift_destroy_boxed_opaque_existential_1(v25);
    }

    else
    {

      sub_1E1308058(v27, &qword_1ECEB43C8, &unk_1E1B0C6C0);
      (*(v18 + 8))(v14, v12);
      result = sub_1E1308058(v25, &qword_1ECEB43C8, &unk_1E1B0C6C0);
    }

    v22 = v28;
    v28[4] = 0;
    *v22 = 0u;
    *(v22 + 1) = 0u;
  }

  return result;
}