uint64_t sub_1E3E97C80(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E3E97D2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3E979F4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3E97D5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3E97A40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_1E3E97DBC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8VideosUI24JSAppleMusicSubscription_musicSubscriptionStatusController;
  *&v1[v4] = [objc_opt_self() sharedStatusController];
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v10, sel_initWithAppContext_, a1);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 defaultCenter];
  [v8 addObserver:v7 selector:sel_musicSubscriptionStatusHasChanged name:*MEMORY[0x1E69E41D8] object:0];

  return v7;
}

void sub_1E3E97EAC(void *a1)
{
  v3 = [objc_opt_self() activeAccount];
  v4 = [objc_allocWithZone(MEMORY[0x1E69E4618]) initWithIdentity_];
  v5 = [objc_allocWithZone(MEMORY[0x1E69E44D8]) initWithStoreRequestContext_];
  v6 = *&v1[OBJC_IVAR____TtC8VideosUI24JSAppleMusicSubscription_musicSubscriptionStatusController];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v1;
  v11[4] = sub_1E3E9920C;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E39FE2F0;
  v11[3] = &block_descriptor_26_1;
  v8 = _Block_copy(v11);
  v9 = a1;
  v10 = v1;

  [v6 performSubscriptionStatusRequest:v5 withStatusHandler:v8];
  _Block_release(v8);
}

uint64_t sub_1E3E98080(void *a1)
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v33 - v13;
  if (a1)
  {
    v15 = [a1 subscriptionStatus];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 statusType];

      if (v17 == 1)
      {
        v18 = 0x6269726373627573;
        sub_1E324FBDC();
        OUTLINED_FUNCTION_4_32();
        v19(v14);
        v20 = sub_1E41FFC94();
        v21 = sub_1E4206814();
        if (!OUTLINED_FUNCTION_72_1(v21))
        {
LABEL_13:
          v7 = v14;
          goto LABEL_14;
        }

        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_8_165(&dword_1E323F000, v22, v7, "AppleMusicSubscriptionInterface: Subscribed");
LABEL_12:
        OUTLINED_FUNCTION_6_0();
        goto LABEL_13;
      }
    }

    v23 = [a1 subscriptionStatus];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 statusType];

      if (v25 == 2)
      {
        v18 = 0x7263736275736E75;
        sub_1E324FBDC();
        OUTLINED_FUNCTION_4_32();
        v26(v10);
        v20 = sub_1E41FFC94();
        v27 = sub_1E4206814();
        if (!OUTLINED_FUNCTION_72_1(v27))
        {
          v7 = v10;
          goto LABEL_14;
        }

        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_8_165(&dword_1E323F000, v28, v7, "AppleMusicSubscriptionInterface: Not subscribed");
        v14 = v10;
        goto LABEL_12;
      }
    }
  }

  v18 = 0x6E776F6E6B6E75;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_4_32();
  v29(v7);
  v20 = sub_1E41FFC94();
  v30 = sub_1E4206814();
  if (os_log_type_enabled(v20, v30))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_8_165(&dword_1E323F000, v31, v30, "AppleMusicSubscriptionInterface: Status unknown");
    v14 = v7;
    goto LABEL_12;
  }

LABEL_14:

  (*(v4 + 8))(v7, v1);
  return v18;
}

void sub_1E3E9838C(void *a1, uint64_t a2, void *a3)
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1E4297BE0;
    *(v11 + 56) = MEMORY[0x1E69E6370];
    *(v11 + 32) = 1;
    v12 = sub_1E394E11C(v11, a3);
  }

  else
  {
    v13 = sub_1E3E98080(a1);
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1E4297BD0;
    v17 = MEMORY[0x1E69E6370];
    *(v16 + 32) = 0;
    *(v16 + 88) = MEMORY[0x1E69E6158];
    *(v16 + 56) = v17;
    *(v16 + 64) = v13;
    *(v16 + 72) = v15;
    *(v16 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34558, &qword_1E42C0318);
    if (a1)
    {
      v18 = [a1 subscriptionStatus];
      a1 = v18;
      if (v18)
      {
        v19 = [v18 responseDictionary];

        a1 = sub_1E4205C64();
      }
    }

    *(v16 + 96) = a1;

    sub_1E324FBDC();
    v20 = OUTLINED_FUNCTION_43_0();
    v21(v20);
    v22 = sub_1E41FFC94();
    v23 = sub_1E4206814();
    if (os_log_type_enabled(v22, v23))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_14_143(&dword_1E323F000, v24, v25, "AppleMusicSubscriptionInterface: Succesfully refreshed subscription status");
      OUTLINED_FUNCTION_6_0();
    }

    (*(v9 + 8))(v4, v3);
  }
}

void sub_1E3E98620()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = aBlock - v1;
  if (TVAppFeature.isEnabled.getter(12, v3, v4))
  {
    v5 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v5);
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    sub_1E376FE58(0, 0, v2, &unk_1E42D9D60, v6);
  }

  else
  {
    v7 = [objc_opt_self() sharedInstance];
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1E3E99138;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E39CF930;
    aBlock[3] = &block_descriptor_128;
    v9 = _Block_copy(aBlock);

    [v7 fetchConfigurationWithOptions:0 cachePolicy:0 queryParameters:0 completion:v9];

    _Block_release(v9);
  }
}

uint64_t sub_1E3E987E8()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E41FFCB4();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E3E988AC, 0, 0);
}

uint64_t sub_1E3E988AC()
{
  v1 = type metadata accessor for VUIUTSNetworkManagerProxy();
  v2 = OUTLINED_FUNCTION_18();
  v5 = (*(v1 + 96) + **(v1 + 96));
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1E3E989D0;

  return v5(v2 & 1);
}

uint64_t sub_1E3E989D0()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    v7 = sub_1E3E98BE4;
  }

  else
  {

    v7 = sub_1E3E98ADC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E3E98ADC()
{
  sub_1E324FBDC();
  v2 = OUTLINED_FUNCTION_43_0();
  v3(v2);
  v4 = sub_1E41FFC94();
  v5 = sub_1E4206814();
  v6 = OUTLINED_FUNCTION_72_1(v5);
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  if (v6)
  {
    v10 = OUTLINED_FUNCTION_125_0();
    *v10 = 0;
    _os_log_impl(&dword_1E323F000, v4, v1, "AppleMusicSubscriptionInterface: Refreshed configuration after a subscription status change", v10, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v9 + 8))(v7, v8);

  OUTLINED_FUNCTION_54();

  return v11();
}

uint64_t sub_1E3E98BE4()
{
  *(v0 + 16) = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
  sub_1E3E991C8();
  result = swift_dynamicCast();
  if (result)
  {
    v2 = *(v0 + 24);
    sub_1E324FBDC();
    v3 = OUTLINED_FUNCTION_43_0();
    v4(v3);
    v5 = v2;
    v6 = sub_1E41FFC94();
    v7 = sub_1E4206814();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_1E323F000, v6, v7, "AppleMusicSubscriptionInterface: Refreshed configuration failed with error %@", v8, 0xCu);
      sub_1E325F748(v9, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
      v10 = v6;
      v6 = v5;
    }

    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v13 = *(v0 + 32);

    (*(v12 + 8))(v11, v13);

    OUTLINED_FUNCTION_54();

    return v14();
  }

  return result;
}

void *sub_1E3E98DCC(uint64_t a1)
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_8();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_1E324FBDC();
    v7 = OUTLINED_FUNCTION_43_0();
    v8(v7);
    v9 = sub_1E41FFC94();
    v10 = sub_1E4206814();
    if (os_log_type_enabled(v9, v10))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_14_143(&dword_1E323F000, v11, v12, "AppleMusicSubscriptionInterface: Refreshed configuration after a subscription status change");
      OUTLINED_FUNCTION_6_0();
    }

    return (*(v4 + 8))(v2, v1);
  }

  return result;
}

unint64_t sub_1E3E98FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3B1A8;
  if (!qword_1ECF3B1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B1A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppleMusicSubscriptionStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3E99140()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3286A7C;

  return sub_1E3E987E8();
}

unint64_t sub_1E3E991C8()
{
  result = qword_1ECF30180;
  if (!qword_1ECF30180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF30180);
  }

  return result;
}

void sub_1E3E99224()
{
  [objc_allocWithZone(VUILocalizationManager) init];
  OUTLINED_FUNCTION_82_1(36, 0x80000001E4287150);
  OUTLINED_FUNCTION_83();
  qword_1ECF71740 = v0;
  *algn_1ECF71748 = v1;
}

void sub_1E3E9928C()
{
  [objc_allocWithZone(VUILocalizationManager) init];
  OUTLINED_FUNCTION_82_1(34, 0x80000001E4287120);
  OUTLINED_FUNCTION_83();
  qword_1ECF71750 = v0;
  *algn_1ECF71758 = v1;
}

void sub_1E3E992F4()
{
  [objc_allocWithZone(VUILocalizationManager) init];
  OUTLINED_FUNCTION_82_1(51, 0x80000001E42870E0);
  OUTLINED_FUNCTION_83();
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  v3 = 0xE000000000000000;
  if (v1)
  {
    v3 = v1;
  }

  qword_1ECF71760 = v2;
  *algn_1ECF71768 = v3;
}

void sub_1E3E9936C()
{
  [objc_allocWithZone(VUILocalizationManager) init];
  OUTLINED_FUNCTION_82_1(50, 0x80000001E42870A0);
  OUTLINED_FUNCTION_83();
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  v3 = 0xE000000000000000;
  if (v1)
  {
    v3 = v1;
  }

  qword_1ECF71770 = v2;
  *algn_1ECF71778 = v3;
}

void sub_1E3E993E4()
{
  [objc_allocWithZone(VUILocalizationManager) init];
  OUTLINED_FUNCTION_82_1(24, 0x80000001E4287080);
  OUTLINED_FUNCTION_83();
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  v3 = 0xE000000000000000;
  if (v1)
  {
    v3 = v1;
  }

  qword_1ECF71780 = v2;
  *algn_1ECF71788 = v3;
}

void sub_1E3E9945C()
{
  OUTLINED_FUNCTION_31_1();
  v161 = v0;
  v2 = v1;
  v4 = v3;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 appController];

  if (v6)
  {
    v7 = [v6 appContext];
  }

  else
  {
    v7 = 0;
  }

  v8 = type metadata accessor for DocumentServiceRequestContext(0);
  v181 = 0u;
  v182 = 0u;
  memset(v177, 0, 32);
  v9 = OUTLINED_FUNCTION_18();
  v151 = DocumentServiceRequestContext.__allocating_init(documentType:requestType:controllerRef:appContext:contextDataRef:prefetchDataRef:animateUpdates:)(0, 0, 0x74654D64656D6954, 0xED00006174616461, v7, &v181, v177, v9 & 1);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0, &qword_1E42AB350);
  if (v4)
  {
    v11 = OUTLINED_FUNCTION_24_3(v10);
    *(v11 + 16) = xmmword_1E4297BE0;
    sub_1E3E9A238();
    *(v11 + 32) = v12;
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1E4299720;
    sub_1E3E9AD38();
    *(v11 + 32) = v13;
    sub_1E3E9B5B4();
    *(v11 + 40) = v14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  v16 = OUTLINED_FUNCTION_130(inited, xmmword_1E4297BE0);
  ViewModelKeys.rawValue.getter(v16);
  inited[2].n128_u64[0] = v17;
  inited[2].n128_u64[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1B0, &qword_1E42D9D70);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1E4297BE0;
  *(v19 + 32) = sub_1E4123DE4(27);
  *(v19 + 40) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CCE0, &unk_1E42A7D30);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1E4297BE0;
  ViewModelKeys.rawValue.getter(13);
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  *(v21 + 48) = v11;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  *(v19 + 48) = OUTLINED_FUNCTION_67_24(v21, v25, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1B8, &qword_1E42D9D78);
  OUTLINED_FUNCTION_34();
  v26 = sub_1E4205CB4();
  inited[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1C0, &qword_1E42D9D80);
  inited[3].n128_u64[0] = v26;
  OUTLINED_FUNCTION_67_24(inited, v27, MEMORY[0x1E69E7CA0] + 8);
  type metadata accessor for Document();
  *(&v182 + 1) = v8;
  v183 = &off_1F5D583B8;
  *&v181 = v151;

  v28 = sub_1E4017924();
  swift_beginAccess();
  v150 = v28;
  v29 = MEMORY[0x1E69E7CC0];
  if (!*(v28 + 56) || (OUTLINED_FUNCTION_8(), v31 = *(v30 + 464), v32 = , v33 = v31(v32), , !v33))
  {
LABEL_98:
    sub_1E3C2AE10();
    v174 = v82;
    v176 = v83;
    LODWORD(v172) = v84;
    swift_beginAccess();
    v85 = *(v150 + 56);
    if (v85)
    {
      OUTLINED_FUNCTION_8();
      i = *(v86 + 464);

      v89 = (i)(v88);
      if (v89)
      {
        v90 = v89;
      }

      else
      {
        v90 = v29;
      }

      v91 = sub_1E32AE9B0(v90);
      if (v91)
      {
        v92 = v91;
        v93 = 0;
        v94 = v90 & 0xC000000000000001;
        v95 = v90 & 0xFFFFFFFFFFFFFF8;
        v171 = v90 + 32;
        v166 = v91;
        v168 = v90;
        v164 = v90 & 0xC000000000000001;
        v160 = v85;
        v162 = v90 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v94)
          {
            MEMORY[0x1E6911E60](v93, v90);
          }

          else
          {
            if (v93 >= *(v95 + 16))
            {
              goto LABEL_149;
            }
          }

          v37 = __OFADD__(v93++, 1);
          if (v37)
          {
            goto LABEL_147;
          }

          type metadata accessor for CollectionViewModel();
          v96 = swift_dynamicCastClass();
          if (v96)
          {
            break;
          }

LABEL_137:

          if (v93 == v92)
          {
            goto LABEL_141;
          }
        }

        v97 = v96;
        OUTLINED_FUNCTION_26_0();
        v100 = v99;
        v101 = (*(v98 + 1040))();
        if (v101)
        {
          OUTLINED_FUNCTION_32_71();
          if (v102)
          {
            if (OUTLINED_FUNCTION_83_17())
            {
              goto LABEL_113;
            }
          }

          else if (*(v100 + 16))
          {
LABEL_113:
            if ((i & 0xC000000000000001) != 0)
            {
              OUTLINED_FUNCTION_15_44();
              v100 = v145;
            }

            else
            {
              if (!*(v100 + 16))
              {
                goto LABEL_150;
              }

              OUTLINED_FUNCTION_13_49();
            }

            OUTLINED_FUNCTION_8();
            v104 = (*(v103 + 872))();
            if (v104)
            {
              v105 = v104;
              v169 = v100;
              v106 = sub_1E32AE9B0(v104);
              for (i = 0; v106 != i; ++i)
              {
                if ((v105 & 0xC000000000000001) != 0)
                {
                  v108 = MEMORY[0x1E6911E60](i, v105);
                  v107 = v108;
                }

                else
                {
                  if (i >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_145;
                  }

                  v107 = *(v105 + 8 * i + 32);
                }

                if (__OFADD__(i, 1))
                {
                  goto LABEL_144;
                }

                if ((*(*v107 + 392))(v108))
                {
                  OUTLINED_FUNCTION_26_0();
                  v117 = OUTLINED_FUNCTION_56_32(v109, v110, v111, v112, v113, v114, v115, v116, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v160, v162, v164, v166, v168, v169, v171, v172, v174);
                  v118(v117);
                }
              }

              v92 = v166;
              v90 = v168;
              v95 = v162;
              v94 = v164;
            }

            else
            {
            }

            goto LABEL_131;
          }
        }

LABEL_131:
        v119 = (*(*v97 + 968))(v101);
        if (v119)
        {
          i = v119;
          OUTLINED_FUNCTION_26_0();
          v121 = (*(v120 + 392))();

          if (v121)
          {
            OUTLINED_FUNCTION_8();
            v130 = OUTLINED_FUNCTION_56_32(v122, v123, v124, v125, v126, v127, v128, v129, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v160, v162, v164, v166, v168, v169, v171, v172, v174);
            v131(v130);
          }
        }

        v132 = (*(*v97 + 960))(v119);
        if (v132)
        {
          i = v132;
          OUTLINED_FUNCTION_26_0();
          v134 = (*(v133 + 392))();

          if (v134)
          {
            OUTLINED_FUNCTION_8();
            v143 = OUTLINED_FUNCTION_56_32(v135, v136, v137, v138, v139, v140, v141, v142, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v160, v162, v164, v166, v168, v169, v171, v172, v174);
            v144(v143);
          }
        }

        goto LABEL_137;
      }

LABEL_141:
    }

    else
    {
    }

    OUTLINED_FUNCTION_25_2();
    return;
  }

  v159 = sub_1E32AE9B0(v33);
  if (!v159)
  {
LABEL_97:

    goto LABEL_98;
  }

  v34 = 0;
  v158 = v33 & 0xC000000000000001;
  v148 = v33 + 32;
  v149 = v33 & 0xFFFFFFFFFFFFFF8;
  v35 = v161 & 0xFFFFFFFFFFFFFF8;
  if (v161 < 0)
  {
    v35 = v161;
  }

  v165 = v35;
  v167 = v161 & 0xC000000000000001;
  v156 = v161 + 56;
  HIDWORD(v147) = v2;
  v152 = v33;
  while (1)
  {
    if (v158)
    {
      v36 = MEMORY[0x1E6911E60](v34, v33);
    }

    else
    {
      if (v34 >= *(v149 + 16))
      {
        goto LABEL_151;
      }

      v36 = *(v148 + 8 * v34);
    }

    v37 = __OFADD__(v34++, 1);
    if (v37)
    {
      goto LABEL_148;
    }

    type metadata accessor for CollectionViewModel();
    if (swift_dynamicCastClass())
    {
      break;
    }

LABEL_93:
    if (v34 == v159)
    {
      goto LABEL_97;
    }
  }

  v163 = v34;
  OUTLINED_FUNCTION_26_0();
  v154 = *(v38 + 1040);
  v155 = v39;
  v40 = v39;
  v153 = v38 + 1040;
  if (!v154())
  {
    goto LABEL_70;
  }

  OUTLINED_FUNCTION_32_71();
  if (!v41)
  {
    if (*(v40 + 16))
    {
      goto LABEL_22;
    }

LABEL_69:

LABEL_70:

LABEL_92:
    v33 = v152;
    v34 = v163;
    goto LABEL_93;
  }

  if (!OUTLINED_FUNCTION_83_17())
  {
    goto LABEL_69;
  }

LABEL_22:
  if ((v33 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_15_44();
  }

  else
  {
    if (!*(v40 + 16))
    {
      goto LABEL_152;
    }

    OUTLINED_FUNCTION_13_49();
  }

  OUTLINED_FUNCTION_8();
  v43 = (*(v42 + 872))();

  if (!v43)
  {
    goto LABEL_70;
  }

  v180 = v29;
  if (!(v43 >> 62))
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v44)
    {
      goto LABEL_28;
    }

LABEL_73:

    v77 = (v154)(v76);
    if (!v77)
    {
      goto LABEL_82;
    }

    OUTLINED_FUNCTION_32_71();
    if (v78)
    {
      if (OUTLINED_FUNCTION_83_17())
      {
        goto LABEL_76;
      }
    }

    else if (*(v155 + 16))
    {
LABEL_76:
      if ((v43 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_15_44();
      }

      else
      {
        if (!*(v155 + 16))
        {
          goto LABEL_153;
        }

        OUTLINED_FUNCTION_13_49();
      }

      OUTLINED_FUNCTION_8();
      (*(v79 + 1048))(OUTLINED_FUNCTION_51_1, 0);

LABEL_82:
      if ((v154)(v77))
      {
        OUTLINED_FUNCTION_32_71();
        if (v80)
        {
          if (OUTLINED_FUNCTION_83_17())
          {
            goto LABEL_85;
          }
        }

        else if (*(v155 + 16))
        {
LABEL_85:
          if ((v43 & 0xC000000000000001) != 0)
          {
            OUTLINED_FUNCTION_15_44();
          }

          else
          {
            if (!*(v155 + 16))
            {
              goto LABEL_154;
            }

            OUTLINED_FUNCTION_13_49();
          }

          OUTLINED_FUNCTION_8();
          (*(v81 + 1016))(v29);

          goto LABEL_91;
        }
      }

LABEL_91:

      v29 = MEMORY[0x1E69E7CC0];
      goto LABEL_92;
    }

    goto LABEL_82;
  }

  v44 = sub_1E4207384();
  if (!v44)
  {
    goto LABEL_73;
  }

LABEL_28:
  v45 = 0;
  v172 = v36;
  v173 = v43 & 0xC000000000000001;
  v157 = v43 + 32;
  v169 = v44;
  v170 = v43;
LABEL_29:
  sub_1E34AF4E4(v45, v173 == 0, v43);
  if (v173)
  {
    v46 = MEMORY[0x1E6911E60](v45, v43);
  }

  else
  {
    v46 = *(v157 + 8 * v45);
  }

  v37 = __OFADD__(v45++, 1);
  if (v37)
  {
    goto LABEL_146;
  }

  if (v167)
  {
    swift_unknownObjectRetain();
    sub_1E4207344();
    type metadata accessor for ViewModel();
    sub_1E3EA0AD8(qword_1EE23BA70, type metadata accessor for ViewModel, &protocol conformance descriptor for ViewModel);
    OUTLINED_FUNCTION_32_0();
    v47 = sub_1E4206664();
    v55 = *(&v181 + 1);
    v56 = v181;
    v57 = *(&v182 + 1);
    v58 = v182;
    v59 = v183;
  }

  else
  {
    v56 = v161;
    v60 = -1 << *(v161 + 32);
    v58 = ~v60;
    v61 = -v60;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    else
    {
      v62 = -1;
    }

    v59 = (v62 & *(v161 + 56));

    v57 = 0;
    v55 = v156;
  }

  v175 = v58;
  v63 = (v58 + 64) >> 6;
  if (v56 < 0)
  {
LABEL_46:
    v47 = sub_1E42073C4();
    if (!v47)
    {
      goto LABEL_59;
    }

    v178 = v47;
    type metadata accessor for ViewModel();
    v47 = swift_dynamicCast();
    v68 = v179;
    v66 = v57;
    v67 = v59;
    if (!v179)
    {
      goto LABEL_59;
    }

    goto LABEL_48;
  }

  while (1)
  {
    v64 = v57;
    v65 = v59;
    v66 = v57;
    if (!v59)
    {
      break;
    }

LABEL_44:
    v67 = (v65 - 1) & v65;
    v68 = *(*(v56 + 48) + ((v66 << 9) | (8 * __clz(__rbit64(v65)))));

    if (!v68)
    {
LABEL_59:
      v72 = OUTLINED_FUNCTION_66_29(v47, v48, v49, v50, v51, v52, v53, v54, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v161, v163, v165, v167, v169, v170, v172, v173, v175);
      MEMORY[0x1E6910BF0](v72);
      OUTLINED_FUNCTION_73_20();
      if (v74)
      {
        OUTLINED_FUNCTION_35(v73);
        sub_1E42062F4();
      }

      sub_1E4206324();
      v29 = v180;
LABEL_62:
      v43 = v170;
      if (v45 == v169)
      {
        goto LABEL_73;
      }

      goto LABEL_29;
    }

LABEL_48:
    v69 = *(v68 + 24);
    v70 = *(v46 + 24);
    if (v69)
    {
      if (v70)
      {
        v47 = *(v68 + 16);
        v49 = *(v46 + 16);
        v71 = v47 == v49 && v69 == v70;
        if (v71 || (v47 = sub_1E42079A4(), (v47 & 1) != 0))
        {
LABEL_64:
          OUTLINED_FUNCTION_66_29(v47, v69, v49, v70, v51, v52, v53, v54, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v161, v163, v165, v167, v169, v170, v172, v173, v175);
          sub_1E3EA002C();
          MEMORY[0x1E6910BF0]();
          OUTLINED_FUNCTION_73_20();
          if (v74)
          {
            OUTLINED_FUNCTION_35(v75);
            sub_1E42062F4();
          }

          sub_1E4206324();
          v29 = v180;

          goto LABEL_62;
        }
      }
    }

    else if (!v70)
    {
      goto LABEL_64;
    }

    v57 = v66;
    v59 = v67;
    if (v56 < 0)
    {
      goto LABEL_46;
    }
  }

  while (1)
  {
    v66 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      break;
    }

    if (v66 >= v63)
    {
      goto LABEL_59;
    }

    v65 = *(v55 + 8 * v66);
    ++v64;
    if (v65)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
}

void sub_1E3E9A238()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1E0, &qword_1E42D9DD0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_3();
  v150 = v9;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1E8, &qword_1E42D9DD8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = (v11 - v12);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v153 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34390, &unk_1E42BF630);
  OUTLINED_FUNCTION_17_2(v16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v143 - v18;
  v20 = sub_1E41FEB94();
  OUTLINED_FUNCTION_0_10();
  v155.n128_u64[0] = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = (v24 - v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32D10, &unk_1E42B9A30);
  OUTLINED_FUNCTION_17_2(v26);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v143 - v28;
  sub_1E41FEBE4();
  OUTLINED_FUNCTION_0_10();
  v156 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v35 = v34 - v33;
  v36 = *(v3 + 16);
  if (v36 || *(v1 + 16))
  {
    v148 = v25;
    v146 = v1;
    *&v157 = v36;
    v37 = v32;
    v38 = sub_1E4205CB4();
    OUTLINED_FUNCTION_18_112();
    sub_1E3E9BE50(v3, v39, v29);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v37);
    v149 = v20;
    v152 = v37;
    v147 = v3;
    if (EnumTagSinglePayload == 1)
    {
      sub_1E325F6F0(v29, &unk_1ECF32D10, &unk_1E42B9A30);
      OUTLINED_FUNCTION_17_123();
      v41 = v146;
      sub_1E3E9BE50(v146, v42, v19);
      OUTLINED_FUNCTION_11_150(v19);
      if (v43)
      {
        v145 = v38;
        sub_1E325F6F0(v19, &unk_1ECF34390, &unk_1E42BF630);
      }

      else
      {

        v48 = v155.n128_u64[0];
        v49 = v148;
        (*(v155.n128_u64[0] + 32))(v148, v19, v20);
        sub_1E3E9D160();
        v145 = v50;
        (*(v48 + 8))(v49, v20);
      }
    }

    else
    {

      v44 = v156;
      v45 = OUTLINED_FUNCTION_35_4();
      v46(v45);
      sub_1E3E9C254();
      v145 = v47;
      v44[1](v35, v37);
      v41 = v146;
    }

    v51 = MEMORY[0x1E69E7CC0];
    if (v157)
    {
      v144 = v7;
      v158 = MEMORY[0x1E69E7CC0];
      sub_1E397A444(0, v157, 0);
      v52 = 0;
      v51 = v158;
      OUTLINED_FUNCTION_81();
      v54 = v147 + v53;
      v147 = *(v55 + 56);
      v148 = v56;
      v156 = v55;
      v57 = (v55 + 16);
      do
      {
        v59 = v153;
        v58 = v154;
        v60 = *(v154 + 48);
        v61 = v152;
        v148(v153 + v60, v54, v152);
        *v13 = v52;
        (*v57)(&v13[*(v58 + 48)], v59 + v60, v61);
        sub_1E3E9C254();
        v63 = v62;
        sub_1E325F6F0(v13, &qword_1ECF3B1E8, &qword_1E42D9DD8);
        v158 = v51;
        v65 = *(v51 + 16);
        v64 = *(v51 + 24);
        if (v65 >= v64 >> 1)
        {
          v66 = OUTLINED_FUNCTION_35(v64);
          sub_1E397A444(v66, v65 + 1, 1);
          v51 = v158;
        }

        ++v52;
        *(v51 + 16) = v65 + 1;
        *(v51 + 8 * v65 + 32) = v63;
        v54 += v147;
      }

      while (v157 != v52);
      v7 = v144;
      v41 = v146;
    }

    v67 = *(v41 + 16);
    v68 = MEMORY[0x1E69E7CC0];
    if (v67)
    {
      v152 = v51;
      v158 = MEMORY[0x1E69E7CC0];
      sub_1E397A444(0, v67, 0);
      v69 = 0;
      v68 = v158;
      v156 = *(v155.n128_u64[0] + 16);
      OUTLINED_FUNCTION_81();
      v71 = v41 + v70;
      v73 = *(v72 + 56);
      v155.n128_u64[0] = v72;
      v153 = v73;
      v154 = v72 + 16;
      while (1)
      {
        v74 = v67;
        v76 = v150;
        v75 = v151;
        v77 = *(v151 + 48);
        v78 = v149;
        (v156)(v150 + v77, v71, v149);
        *v7 = v69;
        (*v154)(v7 + *(v75 + 48), v76 + v77, v78);
        if (__OFADD__(v157, v69))
        {
          break;
        }

        sub_1E3E9D160();
        v80 = v79;
        sub_1E325F6F0(v7, &qword_1ECF3B1E0, &qword_1E42D9DD0);
        v158 = v68;
        v82 = *(v68 + 16);
        v81 = *(v68 + 24);
        if (v82 >= v81 >> 1)
        {
          v83 = OUTLINED_FUNCTION_35(v81);
          sub_1E397A444(v83, v82 + 1, 1);
          v68 = v158;
        }

        ++v69;
        *(v68 + 16) = v82 + 1;
        *(v68 + 8 * v82 + 32) = v80;
        v71 += v153;
        v67 = v74;
        if (v74 == v69)
        {
          v51 = v152;
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_21:
      v158 = v51;
      sub_1E3EA0974(v68);
      v155.n128_u64[0] = v158;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
      inited = swift_initStackObject();
      v157 = xmmword_1E4297BE0;
      *(inited + 16) = xmmword_1E4297BE0;
      sub_1E384EE08(117);
      *(inited + 32) = v85;
      *(inited + 40) = v86;
      v87 = swift_initStackObject();
      OUTLINED_FUNCTION_117(v87, xmmword_1E429A200);
      v87[2].n128_u64[0] = v88;
      v87[2].n128_u64[1] = v89;
      v90 = MEMORY[0x1E69E6158];
      v87[4].n128_u64[1] = MEMORY[0x1E69E6158];
      v87[3].n128_u64[0] = 0xD000000000000016;
      v87[3].n128_u64[1] = 0x80000001E4286F10;
      ViewModelKeys.rawValue.getter(30);
      v87[5].n128_u64[0] = v91;
      v87[5].n128_u64[1] = v92;
      v93 = sub_1E4205F14();
      v87[7].n128_u64[1] = v90;
      v87[6].n128_u64[0] = v93;
      v87[6].n128_u64[1] = v94;
      ViewModelKeys.rawValue.getter(27);
      v87[8].n128_u64[0] = v95;
      v87[8].n128_u64[1] = v96;
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B588, &unk_1E42A09A0);
      v98 = OUTLINED_FUNCTION_24_3(v97);
      OUTLINED_FUNCTION_13_149(v98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740, &unk_1E42A89A0);
      v99 = swift_initStackObject();
      OUTLINED_FUNCTION_13_149(v99);
      ViewModelKeys.rawValue.getter(28);
      v99[2].n128_u64[0] = v100;
      v99[2].n128_u64[1] = v101;
      v102 = swift_initStackObject();
      OUTLINED_FUNCTION_117(v102, xmmword_1E4299720);
      v102[2].n128_u64[0] = v103;
      v102[2].n128_u64[1] = v104;
      v102[4].n128_u64[1] = v90;
      v102[3].n128_u64[0] = 0xD000000000000016;
      v102[3].n128_u64[1] = 0x80000001E4286F10;
      ViewModelKeys.rawValue.getter(13);
      v102[5].n128_u64[0] = v105;
      v102[5].n128_u64[1] = v106;
      v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
      v102[7].n128_u64[1] = v156;
      v102[6].n128_u64[0] = v155.n128_u64[0];
      OUTLINED_FUNCTION_71_28();
      v99[3].n128_u64[0] = sub_1E4205CB4();
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      v98[2].n128_u64[0] = sub_1E4205CB4();
      v87[10].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F750, qword_1E42AEDF0);
      v87[9].n128_u64[0] = v98;
      ViewModelKeys.rawValue.getter(12);
      v87[11].n128_u64[0] = v108;
      v87[11].n128_u64[1] = v109;
      v110 = swift_initStackObject();
      v155 = xmmword_1E4298AD0;
      *(v110 + 16) = xmmword_1E4298AD0;
      *(v110 + 32) = sub_1E3D46F94(40);
      *(v110 + 40) = v111;
      [objc_opt_self() isTV];
      v112 = sub_1E4205F14();
      *(v110 + 72) = v90;
      *(v110 + 48) = v112;
      *(v110 + 56) = v113;
      *(v110 + 80) = sub_1E3D46F94(42);
      *(v110 + 88) = v114;
      v115 = sub_1E4205F14();
      *(v110 + 120) = v90;
      *(v110 + 96) = v115;
      *(v110 + 104) = v116;
      *(v110 + 128) = sub_1E3D46F94(43);
      *(v110 + 136) = v117;
      v118 = sub_1E4205F14();
      *(v110 + 168) = v90;
      *(v110 + 144) = v118;
      *(v110 + 152) = v119;
      *(v110 + 176) = sub_1E3D46F94(1);
      *(v110 + 184) = v120;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E30, &qword_1E42CA300);
      v121 = swift_initStackObject();
      v122 = OUTLINED_FUNCTION_130(v121, v155);
      v121[2].n128_u64[0] = sub_1E4124534(v122);
      v121[2].n128_u64[1] = v123;
      v121[3].n128_u64[0] = 0;
      v121[3].n128_u64[1] = sub_1E4124534(1);
      v121[4].n128_u64[0] = v124;
      v121[4].n128_u64[1] = 0;
      v121[5].n128_u64[0] = sub_1E4124534(3);
      v121[5].n128_u64[1] = v125;
      v121[6].n128_u64[0] = 0;
      v121[6].n128_u64[1] = sub_1E4124534(2);
      v121[7].n128_u64[0] = v126;
      v121[7].n128_u64[1] = 0;
      OUTLINED_FUNCTION_71_28();
      v127 = sub_1E4205CB4();
      *(v110 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389F0, &qword_1E42D18F8);
      *(v110 + 192) = v127;
      OUTLINED_FUNCTION_71_28();
      v128 = sub_1E4205CB4();
      v87[13].n128_u64[1] = v107;
      v87[12].n128_u64[0] = v128;
      ViewModelKeys.rawValue.getter(26);
      v87[14].n128_u64[0] = v129;
      v87[14].n128_u64[1] = v130;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CCE0, &unk_1E42A7D30);
      v131 = swift_initStackObject();
      OUTLINED_FUNCTION_13_149(v131);
      ViewModelKeys.rawValue.getter(13);
      v131[2].n128_u64[0] = v132;
      v131[2].n128_u64[1] = v133;
      v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0, &qword_1E42AB350);
      v135 = OUTLINED_FUNCTION_24_3(v134);
      OUTLINED_FUNCTION_13_149(v135);
      *(v136 + 32) = v145;
      v131[3].n128_u64[0] = v136;
      v137 = sub_1E4205CB4();
      v87[16].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1B8, &qword_1E42D9D78);
      v87[15].n128_u64[0] = v137;
      ViewModelKeys.rawValue.getter(8);
      v87[17].n128_u64[0] = v138;
      v87[17].n128_u64[1] = v139;
      sub_1E3E9F5B4();
      v87[19].n128_u64[1] = v107;
      v87[18].n128_u64[0] = v140;
      OUTLINED_FUNCTION_59_30();
      v141 = sub_1E4205CB4();
      *(inited + 72) = v107;
      *(inited + 48) = v141;
      OUTLINED_FUNCTION_59_30();
      sub_1E4205CB4();
      OUTLINED_FUNCTION_25_2();
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_2();

    sub_1E4205CB4();
  }
}

void sub_1E3E9AD38()
{
  OUTLINED_FUNCTION_31_1();
  v119 = v1;
  v3 = v2;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1E8, &qword_1E42D9DD8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v124 = (v5 - v6);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  v125 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32D10, &unk_1E42B9A30);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_2();
  v11 = sub_1E41FEBE4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = *(v3 + 16);
  v19 = MEMORY[0x1E69E6158];
  v20 = sub_1E4205CB4();
  if (v18)
  {
    OUTLINED_FUNCTION_18_112();
    sub_1E3E9BE50(v3, v21, v0);
    v127 = v11;
    if (__swift_getEnumTagSinglePayload(v0, 1, v11) == 1)
    {
      v118 = v20;
      sub_1E325F6F0(v0, &unk_1ECF32D10, &unk_1E42B9A30);
    }

    else
    {

      (*(v13 + 32))(v17, v0, v11);
      sub_1E3E9C254();
      v118 = v22;
      (*(v13 + 8))(v17, v11);
    }

    v23 = 0xD000000000000011;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    sub_1E384EE08(118);
    *(inited + 32) = v25;
    *(inited + 40) = v26;
    v117 = inited;
    v27 = swift_initStackObject();
    OUTLINED_FUNCTION_117(v27, xmmword_1E42BF390);
    v27[2].n128_u64[0] = v28;
    v27[2].n128_u64[1] = v29;
    v27[4].n128_u64[1] = v19;
    v27[3].n128_u64[0] = 0xD000000000000011;
    v27[3].n128_u64[1] = 0x80000001E4286F30;
    ViewModelKeys.rawValue.getter(30);
    v27[5].n128_u64[0] = v30;
    v27[5].n128_u64[1] = v31;
    v32 = sub_1E4205F14();
    v27[7].n128_u64[1] = v19;
    v27[6].n128_u64[0] = v32;
    v27[6].n128_u64[1] = v33;
    ViewModelKeys.rawValue.getter(27);
    v27[8].n128_u64[0] = v34;
    v27[8].n128_u64[1] = v35;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B588, &unk_1E42A09A0);
    v116 = OUTLINED_FUNCTION_24_3(v36);
    OUTLINED_FUNCTION_10_143(v116);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740, &unk_1E42A89A0);
    v37 = swift_initStackObject();
    OUTLINED_FUNCTION_10_143(v37);
    ViewModelKeys.rawValue.getter(28);
    v37[2].n128_u64[0] = v38;
    v37[2].n128_u64[1] = v39;
    v115 = v37;
    v40 = swift_initStackObject();
    OUTLINED_FUNCTION_117(v40, xmmword_1E4299720);
    v40[2].n128_u64[0] = v41;
    v40[2].n128_u64[1] = v42;
    v40[4].n128_u64[1] = v19;
    v40[3].n128_u64[0] = 0xD000000000000011;
    v40[3].n128_u64[1] = 0x80000001E4286F30;
    ViewModelKeys.rawValue.getter(13);
    v40[5].n128_u64[0] = v43;
    v40[5].n128_u64[1] = v44;
    v114 = v40;
    v128 = MEMORY[0x1E69E7CC0];
    sub_1E397A444(0, v18, 0);
    v45 = 0;
    v46 = v128;
    v47 = v13 + 16;
    OUTLINED_FUNCTION_81();
    v49 = (v3 + v48);
    v121 = *(v47 + 56);
    v122 = v50;
    v123 = v27;
    v120 = (v47 + 16);
    v51 = v127;
    do
    {
      if (v18 == v45)
      {
        __break(1u);
        goto LABEL_16;
      }

      v23 = v18;
      v52 = *(v126 + 48);
      v122(v125 + v52, v49, v51);
      v19 = v124;
      *v124 = v45;
      (*v120)(v124 + *(v126 + 48), v125 + v52, v51);
      sub_1E3E9C254();
      v47 = v53;
      sub_1E325F6F0(v124, &qword_1ECF3B1E8, &qword_1E42D9DD8);
      v55 = *(v128 + 16);
      v54 = *(v128 + 24);
      if (v55 >= v54 >> 1)
      {
        v56 = OUTLINED_FUNCTION_35(v54);
        sub_1E397A444(v56, v55 + 1, 1);
      }

      v45 = (v45 + 1);
      *(v128 + 16) = v55 + 1;
      *(v128 + 8 * v55 + 32) = v47;
      v49 = (v49 + v121);
      v18 = v23;
      v27 = v123;
      v51 = v127;
    }

    while (v23 != v45);
    *(v114 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
    *(v114 + 96) = v128;
    v47 = MEMORY[0x1E69E7CA0];
    v57 = MEMORY[0x1E69E6158];
    v19 = v115;
    v115[3].n128_u64[0] = OUTLINED_FUNCTION_54_38(v114, v58, MEMORY[0x1E69E7CA0] + 8);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_18_5();
    v116[2].n128_u64[0] = sub_1E4205CB4();
    v123[10].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F750, qword_1E42AEDF0);
    v123[9].n128_u64[0] = v116;
    ViewModelKeys.rawValue.getter(24);
    v123[11].n128_u64[0] = v59;
    v123[11].n128_u64[1] = v60;
    v61 = swift_initStackObject();
    OUTLINED_FUNCTION_1_243(v61);
    sub_1E384EE08(138);
    v115[2].n128_u64[0] = v62;
    v115[2].n128_u64[1] = v63;
    v49 = swift_initStackObject();
    OUTLINED_FUNCTION_117(v49, xmmword_1E4299720);
    v49[2].n128_u64[0] = v64;
    v49[2].n128_u64[1] = v65;
    OUTLINED_FUNCTION_41_7();
    v49[4].n128_u64[1] = v57;
    v49[3].n128_u64[0] = 0xD000000000000018;
    v49[3].n128_u64[1] = v66;
    ViewModelKeys.rawValue.getter(13);
    v49[5].n128_u64[0] = v67;
    v49[5].n128_u64[1] = v68;
    v23 = swift_initStackObject();
    OUTLINED_FUNCTION_10_143(v23);
    sub_1E384EE08(23);
    v51 = v123;
    v27 = OUTLINED_FUNCTION_78_19(v69, v70);
    OUTLINED_FUNCTION_45_57(v27, xmmword_1E4299720);
    v27[2].n128_u64[0] = v71;
    v27[2].n128_u64[1] = v72;
    if (qword_1ECF671B0 == -1)
    {
      goto LABEL_11;
    }

LABEL_16:
    OUTLINED_FUNCTION_31_68(&qword_1ECF671B0);
LABEL_11:
    v73 = OUTLINED_FUNCTION_72_25(&qword_1ECF71740);
    v75 = 0xE000000000000000;
    if (!v76)
    {
      v75 = v73;
    }

    v27[3].n128_u64[0] = v74;
    v27[3].n128_u64[1] = v75;

    ViewModelKeys.rawValue.getter(12);
    v27[5].n128_u64[0] = v77;
    v27[5].n128_u64[1] = v78;
    v79 = sub_1E3E9F810(v119);
    v27[7].n128_u64[1] = v46;
    v27[6].n128_u64[0] = v79;
    v23[3].n128_u64[0] = OUTLINED_FUNCTION_54_38(v27, v80, v47 + 8);
    OUTLINED_FUNCTION_18_5();
    v81 = sub_1E4205CB4();
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF0, &qword_1E42AF870);
    v49[7].n128_u64[1] = v82;
    v49[6].n128_u64[0] = v81;
    v19[3].n128_u64[0] = OUTLINED_FUNCTION_54_38(v49, v83, v47 + 8);
    OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_18_5();
    v84 = sub_1E4205CB4();
    v51[13].n128_u64[1] = v82;
    v51[12].n128_u64[0] = v84;
    ViewModelKeys.rawValue.getter(12);
    v51[14].n128_u64[0] = v85;
    v51[14].n128_u64[1] = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
    v87 = swift_initStackObject();
    OUTLINED_FUNCTION_1_243(v87);
    v19[2].n128_u64[0] = sub_1E3D46F94(40);
    v19[2].n128_u64[1] = v88;
    v19[3].n128_u64[0] = sub_1E4205F14();
    v19[3].n128_u64[1] = v89;
    OUTLINED_FUNCTION_21_9();
    v90 = sub_1E4205CB4();
    v51[16].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
    v51[15].n128_u64[0] = v90;
    ViewModelKeys.rawValue.getter(11);
    v51[17].n128_u64[0] = v91;
    v51[17].n128_u64[1] = v92;
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CED8, &qword_1E42A89C8);
    v94 = OUTLINED_FUNCTION_22_9(v93);
    OUTLINED_FUNCTION_1_243(v94);
    sub_1E3853DA8(34);
    *(v90 + 32) = v95;
    *(v90 + 40) = v96;
    *(v90 + 48) = 1;
    OUTLINED_FUNCTION_21_9();
    v97 = sub_1E4205CB4();
    v51[19].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36120, &unk_1E42C7BE0);
    v51[18].n128_u64[0] = v97;
    ViewModelKeys.rawValue.getter(26);
    v51[20].n128_u64[0] = v98;
    v51[20].n128_u64[1] = v99;
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CCE0, &unk_1E42A7D30);
    v101 = OUTLINED_FUNCTION_22_9(v100);
    OUTLINED_FUNCTION_1_243(v101);
    ViewModelKeys.rawValue.getter(13);
    v97[4] = v102;
    v97[5] = v103;
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0, &qword_1E42AB350);
    v105 = OUTLINED_FUNCTION_24_3(v104);
    OUTLINED_FUNCTION_10_143(v105);
    *(v106 + 32) = v118;
    v97[6] = v106;
    OUTLINED_FUNCTION_21_9();
    v107 = sub_1E4205CB4();
    v51[22].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1B8, &qword_1E42D9D78);
    v51[21].n128_u64[0] = v107;
    ViewModelKeys.rawValue.getter(8);
    v51[23].n128_u64[0] = v108;
    v51[23].n128_u64[1] = v109;
    sub_1E3E9F5B4();
    v51[25].n128_u64[1] = v46;
    v51[24].n128_u64[0] = v110;
    v112 = OUTLINED_FUNCTION_54_38(v51, v111, v47 + 8);
    *(v117 + 72) = v46;
    *(v117 + 48) = v112;
    OUTLINED_FUNCTION_54_38(v117, v113, v47 + 8);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E9B5B4()
{
  OUTLINED_FUNCTION_31_1();
  v130 = v1;
  v3 = v2;
  v5 = v4;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1E0, &qword_1E42D9DD0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v128 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34390, &unk_1E42BF630);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19_2();
  v14 = sub_1E41FEB94();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = *(v5 + 16);
  v22 = sub_1E4205CB4();
  v131 = v21;
  if (v21)
  {
    OUTLINED_FUNCTION_17_123();
    sub_1E3E9BE50(v5, v23, v0);
    v127 = v14;
    v121 = v3;
    v132 = v5;
    if (__swift_getEnumTagSinglePayload(v0, 1, v14) == 1)
    {
      v123 = v22;
      sub_1E325F6F0(v0, &unk_1ECF34390, &unk_1E42BF630);
    }

    else
    {

      (*(v16 + 32))(v20, v0, v14);
      sub_1E3E9D160();
      v123 = v24;
      (*(v16 + 8))(v20, v14);
    }

    v25 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    sub_1E384EE08(118);
    *(inited + 32) = v27;
    *(inited + 40) = v28;
    v122 = inited;
    v29 = swift_initStackObject();
    OUTLINED_FUNCTION_117(v29, xmmword_1E42BF390);
    v29[2].n128_u64[0] = v30;
    v29[2].n128_u64[1] = v31;
    v32 = MEMORY[0x1E69E6158];
    v29[4].n128_u64[1] = MEMORY[0x1E69E6158];
    v33 = 0xEF6E6F697463656CLL;
    v29[3].n128_u64[0] = 0x6C6F635F676E6F73;
    v29[3].n128_u64[1] = 0xEF6E6F697463656CLL;
    ViewModelKeys.rawValue.getter(30);
    v29[5].n128_u64[0] = v34;
    v29[5].n128_u64[1] = v35;
    v36 = sub_1E4205F14();
    v29[7].n128_u64[1] = v32;
    v29[6].n128_u64[0] = v36;
    v29[6].n128_u64[1] = v37;
    ViewModelKeys.rawValue.getter(27);
    v29[8].n128_u64[0] = v38;
    v29[8].n128_u64[1] = v39;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B588, &unk_1E42A09A0);
    v120 = OUTLINED_FUNCTION_24_3(v40);
    OUTLINED_FUNCTION_10_143(v120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740, &unk_1E42A89A0);
    v41 = swift_initStackObject();
    OUTLINED_FUNCTION_10_143(v41);
    ViewModelKeys.rawValue.getter(28);
    v41[2].n128_u64[0] = v42;
    v41[2].n128_u64[1] = v43;
    v119 = v41;
    v44 = swift_initStackObject();
    OUTLINED_FUNCTION_117(v44, xmmword_1E4299720);
    v44[2].n128_u64[0] = v45;
    v44[2].n128_u64[1] = v46;
    v44[4].n128_u64[1] = v32;
    v44[3].n128_u64[0] = 0x6C6F635F676E6F73;
    v44[3].n128_u64[1] = 0xEF6E6F697463656CLL;
    ViewModelKeys.rawValue.getter(13);
    v44[5].n128_u64[0] = v47;
    v44[5].n128_u64[1] = v48;
    v118 = v44;
    v134[0] = v25;
    v49 = v134;
    v50 = v131;
    sub_1E397A444(0, v131, 0);
    v51 = 0;
    v52 = v134[0];
    v53 = v16 + 16;
    OUTLINED_FUNCTION_81();
    v55 = v132 + v54;
    v124 = *(v53 + 56);
    v125 = (v53 + 16);
    v126 = v56;
    do
    {
      if (v50 == v51)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v25 = v129;
      v49 = *(v129 + 48);
      v50 = v9;
      v53 = v127;
      v133 = v55;
      v126(v128 + v49);
      *v9 = v51;
      v33 = *(v129 + 48);
      (*v125)(v9 + v33, v128 + v49, v127);
      if (__OFADD__(v130, v51))
      {
        goto LABEL_17;
      }

      v25 = v29;
      sub_1E3E9D160();
      v58 = v57;
      sub_1E325F6F0(v9, &qword_1ECF3B1E0, &qword_1E42D9DD0);
      v134[0] = v52;
      v53 = *(v52 + 16);
      v59 = *(v52 + 24);
      v33 = v53 + 1;
      if (v53 >= v59 >> 1)
      {
        v60 = OUTLINED_FUNCTION_35(v59);
        v49 = v134;
        sub_1E397A444(v60, v53 + 1, 1);
        v52 = v134[0];
      }

      v51 = (v51 + 1);
      *(v52 + 16) = v33;
      *(v52 + 8 * v53 + 32) = v58;
      v50 = v131;
      v55 = v133 + v124;
      v29 = v25;
    }

    while (v131 != v51);
    *(v118 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
    *(v118 + 96) = v52;
    v53 = MEMORY[0x1E69E7CA0];
    v61 = MEMORY[0x1E69E6158];
    v25 = v119;
    v119[3].n128_u64[0] = OUTLINED_FUNCTION_54_38(v118, v62, MEMORY[0x1E69E7CA0] + 8);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_18_5();
    v120[2].n128_u64[0] = sub_1E4205CB4();
    v29[10].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F750, qword_1E42AEDF0);
    v29[9].n128_u64[0] = v120;
    ViewModelKeys.rawValue.getter(24);
    v29[11].n128_u64[0] = v63;
    v29[11].n128_u64[1] = v64;
    v65 = swift_initStackObject();
    OUTLINED_FUNCTION_1_243(v65);
    sub_1E384EE08(138);
    v119[2].n128_u64[0] = v66;
    v119[2].n128_u64[1] = v67;
    v50 = swift_initStackObject();
    OUTLINED_FUNCTION_117(v50, xmmword_1E4299720);
    v50[2].n128_u64[0] = v68;
    v50[2].n128_u64[1] = v69;
    OUTLINED_FUNCTION_41_7();
    v50[4].n128_u64[1] = v61;
    v50[3].n128_u64[0] = 0xD000000000000016;
    v50[3].n128_u64[1] = v70;
    ViewModelKeys.rawValue.getter(13);
    v50[5].n128_u64[0] = v71;
    v50[5].n128_u64[1] = v72;
    v51 = swift_initStackObject();
    OUTLINED_FUNCTION_10_143(v51);
    sub_1E384EE08(23);
    v33 = OUTLINED_FUNCTION_78_19(v73, v74);
    OUTLINED_FUNCTION_45_57(v33, xmmword_1E4299720);
    *(v33 + 32) = v75;
    *(v33 + 40) = v76;
    if (qword_1ECF671B8 == -1)
    {
      goto LABEL_12;
    }

LABEL_18:
    OUTLINED_FUNCTION_29_86(&qword_1ECF671B8);
LABEL_12:
    v77 = OUTLINED_FUNCTION_72_25(&qword_1ECF71750);
    v79 = 0xE000000000000000;
    if (!v80)
    {
      v79 = v77;
    }

    *(v33 + 48) = v78;
    *(v33 + 56) = v79;

    ViewModelKeys.rawValue.getter(12);
    *(v33 + 80) = v81;
    *(v33 + 88) = v82;
    v83 = sub_1E3E9F810(v121);
    *(v33 + 120) = v49;
    *(v33 + 96) = v83;
    v51[3].n128_u64[0] = OUTLINED_FUNCTION_54_38(v33, v84, v53 + 8);
    OUTLINED_FUNCTION_18_5();
    v85 = sub_1E4205CB4();
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF0, &qword_1E42AF870);
    v50[7].n128_u64[1] = v86;
    v50[6].n128_u64[0] = v85;
    v25[3].n128_u64[0] = OUTLINED_FUNCTION_54_38(v50, v87, v53 + 8);
    OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_18_5();
    v88 = sub_1E4205CB4();
    v29[13].n128_u64[1] = v86;
    v29[12].n128_u64[0] = v88;
    ViewModelKeys.rawValue.getter(12);
    v29[14].n128_u64[0] = v89;
    v29[14].n128_u64[1] = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
    v91 = swift_initStackObject();
    OUTLINED_FUNCTION_1_243(v91);
    v25[2].n128_u64[0] = sub_1E3D46F94(40);
    v25[2].n128_u64[1] = v92;
    v25[3].n128_u64[0] = sub_1E4205F14();
    v25[3].n128_u64[1] = v93;
    OUTLINED_FUNCTION_21_9();
    v94 = sub_1E4205CB4();
    v29[16].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
    v29[15].n128_u64[0] = v94;
    ViewModelKeys.rawValue.getter(11);
    v29[17].n128_u64[0] = v95;
    v29[17].n128_u64[1] = v96;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CED8, &qword_1E42A89C8);
    v98 = OUTLINED_FUNCTION_22_9(v97);
    OUTLINED_FUNCTION_1_243(v98);
    sub_1E3853DA8(34);
    *(v94 + 32) = v99;
    *(v94 + 40) = v100;
    *(v94 + 48) = 1;
    OUTLINED_FUNCTION_21_9();
    v101 = sub_1E4205CB4();
    v29[19].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36120, &unk_1E42C7BE0);
    v29[18].n128_u64[0] = v101;
    ViewModelKeys.rawValue.getter(26);
    v29[20].n128_u64[0] = v102;
    v29[20].n128_u64[1] = v103;
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CCE0, &unk_1E42A7D30);
    v105 = OUTLINED_FUNCTION_22_9(v104);
    OUTLINED_FUNCTION_1_243(v105);
    ViewModelKeys.rawValue.getter(13);
    v101[4] = v106;
    v101[5] = v107;
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0, &qword_1E42AB350);
    v109 = OUTLINED_FUNCTION_24_3(v108);
    OUTLINED_FUNCTION_10_143(v109);
    *(v110 + 32) = v123;
    v101[6] = v110;
    OUTLINED_FUNCTION_21_9();
    v111 = sub_1E4205CB4();
    v29[22].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1B8, &qword_1E42D9D78);
    v29[21].n128_u64[0] = v111;
    ViewModelKeys.rawValue.getter(8);
    v29[23].n128_u64[0] = v112;
    v29[23].n128_u64[1] = v113;
    sub_1E3E9F5B4();
    v29[25].n128_u64[1] = v49;
    v29[24].n128_u64[0] = v114;
    v116 = OUTLINED_FUNCTION_54_38(v29, v115, v53 + 8);
    *(v122 + 72) = v49;
    *(v122 + 48) = v116;
    OUTLINED_FUNCTION_54_38(v122, v117, v53 + 8);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E9BE50@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

id sub_1E3E9BEFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_117(inited, xmmword_1E4299720);
  v1 = MEMORY[0x1E69E6158];
  inited[2].n128_u64[0] = v2;
  inited[2].n128_u64[1] = v3;
  inited[4].n128_u64[1] = v1;
  inited[3].n128_u64[0] = 0x74735F7974706D65;
  inited[3].n128_u64[1] = 0xEB00000000657461;
  ViewModelKeys.rawValue.getter(13);
  inited[5].n128_u64[0] = v4;
  inited[5].n128_u64[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1C8, &qword_1E42D9D88);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1E4299720;
  sub_1E384EE08(23);
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301E8, &unk_1E42D9D90);
  v9 = swift_initStackObject();
  OUTLINED_FUNCTION_45_57(v9, xmmword_1E4297BE0);
  v9[2].n128_u64[0] = v10;
  v9[2].n128_u64[1] = v11;
  v12 = objc_opt_self();
  result = [v12 sharedInstance];
  if (result)
  {
    v14 = result;
    v15 = sub_1E3741090(0xD000000000000021, 0x80000001E4286FB0, result);
    v17 = v16;

    v9[3].n128_u64[0] = v15;
    v9[3].n128_u64[1] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
    *(v6 + 48) = sub_1E4205CB4();
    sub_1E384EE08(15);
    *(v6 + 56) = v18;
    *(v6 + 64) = v19;
    v20 = swift_initStackObject();
    OUTLINED_FUNCTION_45_57(v20, xmmword_1E4297BE0);
    v20[2].n128_u64[0] = v21;
    v20[2].n128_u64[1] = v22;
    result = [v12 sharedInstance];
    if (result)
    {
      v23 = result;
      v24 = sub_1E3741090(0xD000000000000024, 0x80000001E4286FE0, result);
      v26 = v25;

      v20[3].n128_u64[0] = v24;
      v20[3].n128_u64[1] = v26;
      OUTLINED_FUNCTION_34();
      *(v6 + 72) = sub_1E4205CB4();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1D0, &qword_1E42D9DA0);
      v29 = OUTLINED_FUNCTION_67_24(v6, v28, v27);
      inited[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1D8, &qword_1E42D9DA8);
      inited[6].n128_u64[0] = v29;
      v31 = OUTLINED_FUNCTION_67_24(inited, v30, MEMORY[0x1E69E7CA0] + 8);
      type metadata accessor for ViewModel();
      return sub_1E39BED80(248, v31, 0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1E3E9C1C4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TimedMetadataViewModelCreator();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1E3E9C21C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TimedMetadataViewModelCreator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1E3E9C254()
{
  OUTLINED_FUNCTION_31_1();
  v367 = v0;
  LODWORD(v326) = v1;
  sub_1E384EE08(23);
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301E8, &unk_1E42D9D90);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_45_57(inited, xmmword_1E4297BE0);
  inited[2].n128_u64[0] = v8;
  inited[2].n128_u64[1] = v9;
  inited[3].n128_u64[0] = sub_1E41FEBB4();
  inited[3].n128_u64[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
  v11 = MEMORY[0x1E69E6158];
  v12 = sub_1E4205CB4();
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1D0, &qword_1E42D9DA0);
  *&v388 = v12;
  sub_1E329504C(&v388, v387);
  v13 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  v390 = v13;
  v14 = OUTLINED_FUNCTION_74_20();
  sub_1E32A87C0(v14, v3, v5, v15);

  v16 = v390;
  sub_1E384EE08(15);
  v18 = v17;
  v20 = v19;
  v21 = swift_initStackObject();
  OUTLINED_FUNCTION_15_135(v21, v22, v23, v24, v25, v26, v27, v28, v29, v280, v289, v297, v306, v316, v326, v334, v342, v349, v358, v367, v377, v30);
  ViewModelKeys.rawValue.getter(14);
  v6[4] = v31;
  v6[5] = v32;
  v6[6] = sub_1E41FEBD4();
  v6[7] = v33;
  OUTLINED_FUNCTION_34();
  v34 = sub_1E4205CB4();
  OUTLINED_FUNCTION_82_18(v34);
  swift_isUniquelyReferenced_nonNull_native();
  v390 = v16;
  v35 = OUTLINED_FUNCTION_74_20();
  sub_1E32A87C0(v35, v18, v20, v36);

  v37 = v390;
  sub_1E3E9F9F8();
  v39 = v38;
  sub_1E384EE08(41);
  v41 = v40;
  v43 = v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  v389 = v44;
  *&v388 = v39;
  sub_1E329504C(&v388, v387);
  swift_isUniquelyReferenced_nonNull_native();
  v390 = v37;
  v45 = OUTLINED_FUNCTION_74_20();
  sub_1E32A87C0(v45, v41, v43, v46);

  v47 = v390;
  if (([objc_opt_self() isTVApp] & 1) == 0)
  {
    v48 = MEMORY[0x1E69E6370];
    sub_1E384EE08(31);
    v50 = v49;
    v52 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    v53 = swift_initStackObject();
    v54 = OUTLINED_FUNCTION_50_43(v53, xmmword_1E4299720);
    *(v53 + 32) = sub_1E3C7CCAC(v54);
    *(v53 + 40) = v55;
    *(v53 + 72) = v48;
    *(v53 + 48) = 0;
    *(v53 + 80) = sub_1E3C7CCAC(0);
    *(v53 + 88) = v56;
    v57 = sub_1E3F52F38();
    v59 = *v57;
    v58 = *(v57 + 1);
    *&v388 = v59;
    *(&v388 + 1) = v58;

    MEMORY[0x1E69109E0](0xD000000000000019, 0x80000001E4287040);
    v60 = v388;
    *(v53 + 120) = v11;
    *(v53 + 96) = v60;
    v61 = sub_1E4205CB4();
    OUTLINED_FUNCTION_82_18(v61);
    swift_isUniquelyReferenced_nonNull_native();
    v390 = v47;
    v62 = OUTLINED_FUNCTION_74_20();
    sub_1E32A87C0(v62, v50, v52, v63);

    v47 = v390;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  v64 = swift_initStackObject();
  OUTLINED_FUNCTION_21_96(v64, v65, v66, v67, v68, v69, v70, v71, v72, v281, v290, v298, v307, v317, v327, v335, v343, v350, v359, v368, v378, v73);
  sub_1E384EE08(204);
  v64[2].n128_u64[0] = v74;
  v64[2].n128_u64[1] = v75;
  v76 = swift_initStackObject();
  OUTLINED_FUNCTION_117(v76, xmmword_1E429A230);
  v76[2].n128_u64[0] = v77;
  v76[2].n128_u64[1] = v78;
  v79 = sub_1E41FEBC4();
  v76[4].n128_u64[1] = v11;
  v76[3].n128_u64[0] = v79;
  v76[3].n128_u64[1] = v80;
  ViewModelKeys.rawValue.getter(9);
  v76[5].n128_u64[0] = v81;
  v76[5].n128_u64[1] = v82;
  v76[7].n128_u64[1] = v11;
  v76[6].n128_u64[0] = 0x3030312E363131;
  v76[6].n128_u64[1] = 0xE700000000000000;
  ViewModelKeys.rawValue.getter(13);
  v76[8].n128_u64[0] = v83;
  v76[8].n128_u64[1] = v84;
  v76[10].n128_u64[1] = v44;
  v76[9].n128_u64[0] = v47;
  ViewModelKeys.rawValue.getter(12);
  v76[11].n128_u64[0] = v85;
  v76[11].n128_u64[1] = v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B218, &qword_1E42D9E28);
  v88 = OUTLINED_FUNCTION_22_9(v87);
  OUTLINED_FUNCTION_15_135(v88, v89, v90, v91, v92, v93, v94, v95, v96, v282, v291, v299, v308, v318, v328, 7, 14, v351, v64, v369, v379, v97);
  v47[4] = sub_1E3D46F94(44);
  v47[5] = v98;
  v47[6] = 0x3FF0000000000000;
  OUTLINED_FUNCTION_34();
  v99 = sub_1E4205CB4();
  v76[13].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B220, &qword_1E42D9E30);
  v76[12].n128_u64[0] = v99;
  ViewModelKeys.rawValue.getter(11);
  v76[14].n128_u64[0] = v100;
  v76[14].n128_u64[1] = v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CED8, &qword_1E42A89C8);
  v103 = OUTLINED_FUNCTION_22_9(v102);
  OUTLINED_FUNCTION_15_135(v103, v104, v105, v106, v107, v108, v109, v110, v111, v283, v292, v300, v309, v319, v329, v336, v344, v352, v360, v370, v380, v112);
  *(v99 + 32) = j__OUTLINED_FUNCTION_20_30();
  *(v99 + 40) = v113;
  *(v99 + 48) = sub_1E34AF508(v330 & 1, 0);
  OUTLINED_FUNCTION_34();
  v114 = sub_1E4205CB4();
  v76[16].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36120, &unk_1E42C7BE0);
  v76[15].n128_u64[0] = v114;
  ViewModelKeys.rawValue.getter(15);
  v76[17].n128_u64[0] = v115;
  v76[17].n128_u64[1] = v116;
  if ([objc_opt_self() isTVApp])
  {
    v117 = sub_1E4205F14();
    v311 = v118;
    v321 = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    v119 = swift_initStackObject();
    OUTLINED_FUNCTION_15_135(v119, v120, v121, v122, v123, v124, v125, v126, v127, v284, v293, v301, v311, v321, v330, v337, v345, v353, v361, v371, v44, v128);
    ViewModelKeys.rawValue.getter(16);
    *(v99 + 32) = v129;
    *(v99 + 40) = v130;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740, &unk_1E42A89A0);
    v131 = swift_initStackObject();
    OUTLINED_FUNCTION_21_96(v131, v132, v133, v134, v135, v136, v137, v138, v139, v285, v294, v302, v312, v322, v99, v338, v346, v354, v362, v372, v381, v140);
    OUTLINED_FUNCTION_41_7();
    OUTLINED_FUNCTION_48_42();
    *(v142 + 32) = v141 + 2;
    *(v142 + 40) = v143;
    v144 = swift_initStackObject();
    v286 = xmmword_1E4298AD0;
    *(v144 + 16) = xmmword_1E4298AD0;
    *(v144 + 32) = sub_1E4205F14();
    *(v144 + 40) = v145;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
    v146 = swift_initStackObject();
    *(v146 + 16) = xmmword_1E4299720;
    *(v146 + 32) = 25705;
    *(v146 + 40) = 0xE200000000000000;
    *(v146 + 48) = sub_1E41FEBC4();
    *(v146 + 56) = v147;
    *(v146 + 64) = 1701869940;
    *(v146 + 72) = 0xE400000000000000;
    *(v146 + 80) = 0x6E6F73726550;
    *(v146 + 88) = 0xE600000000000000;
    v148 = sub_1E4205CB4();
    *(v144 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
    *(v144 + 48) = v148;
    *(v144 + 80) = sub_1E4205F14();
    *(v144 + 88) = v149;
    v150 = swift_initStackObject();
    *(v150 + 16) = xmmword_1E4298AD0;
    strcpy((v150 + 32), "transitionType");
    *(v150 + 47) = -18;
    *(v150 + 48) = 1752397136;
    *(v150 + 56) = 0xE400000000000000;
    OUTLINED_FUNCTION_41_7();
    v151[9] = v11;
    v151[10] = 0xD000000000000018;
    v151[11] = v152;
    *(v150 + 96) = sub_1E41FEBC4();
    *(v150 + 104) = v153;
    *(v150 + 120) = v11;
    *(v150 + 128) = 0x646574616D696E61;
    *(v150 + 136) = 0xE800000000000000;
    *(v150 + 144) = 1;
    *(v150 + 168) = MEMORY[0x1E69E6370];
    strcpy((v150 + 176), "documentType");
    *(v150 + 216) = v11;
    *(v150 + 189) = 0;
    *(v150 + 190) = -5120;
    *(v150 + 192) = v323;
    *(v150 + 200) = v313;

    v154 = sub_1E4205CB4();
    v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    *(v144 + 96) = v154;
    *(v144 + 120) = v155;
    strcpy((v144 + 128), "controllerRef");
    *(v144 + 142) = -4864;
    *(v144 + 144) = sub_1E4205F14();
    *(v144 + 152) = v156;
    *(v144 + 168) = v11;
    strcpy((v144 + 176), "documentType");
    *(v144 + 216) = v11;
    *(v144 + 189) = 0;
    *(v144 + 190) = -5120;
    *(v144 + 192) = v323;
    *(v144 + 200) = v313;
    v131[3].n128_u64[0] = sub_1E4205CB4();
    v44 = v382;
    v157 = sub_1E4205CB4();
    *(v331 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF0, &qword_1E42AF870);
    *(v331 + 48) = v157;
    v158 = v11;
    OUTLINED_FUNCTION_71_28();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    v159 = swift_initStackObject();
    OUTLINED_FUNCTION_15_135(v159, v160, v161, v162, v163, v164, v165, v166, v167, v284, v293, v301, v310, v320, v330, v337, v345, v353, v361, v371, v44, v168);
    ViewModelKeys.rawValue.getter(16);
    *(v99 + 32) = v169;
    *(v99 + 40) = v170;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740, &unk_1E42A89A0);
    v171 = swift_initStackObject();
    OUTLINED_FUNCTION_21_96(v171, v172, v173, v174, v175, v176, v177, v178, v179, v287, v295, v304, v314, v324, v332, v340, v347, v356, v364, v374, v383, v180);
    OUTLINED_FUNCTION_41_7();
    *(v181 + 32) = 0xD000000000000010;
    *(v181 + 40) = v182;
    v183 = swift_initStackObject();
    *(v183 + 16) = xmmword_1E4299720;
    *(v183 + 32) = sub_1E4205F14();
    *(v183 + 40) = v184;
    v185 = sub_1E4205F14();
    *(v183 + 72) = v11;
    *(v183 + 48) = v185;
    *(v183 + 56) = v186;
    *(v183 + 80) = sub_1E4205F14();
    *(v183 + 88) = v187;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
    v188 = swift_initStackObject();
    OUTLINED_FUNCTION_21_96(v188, v189, v190, v191, v192, v193, v194, v195, v196, v288, v296, v305, v315, v325, v333, v341, v348, v357, v365, v375, v384, v197);
    *(v198 + 32) = 0x6C72556E65706FLL;
    *(v198 + 40) = 0xE700000000000000;
    sub_1E42074B4();

    OUTLINED_FUNCTION_41_7();
    v386 = v199;
    v200 = sub_1E41FEBC4();
    MEMORY[0x1E69109E0](v200);

    v188[3].n128_u64[0] = 0xD00000000000001CLL;
    v188[3].n128_u64[1] = v386;
    v201 = sub_1E4205CB4();
    *(v183 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
    *(v183 + 96) = v201;
    OUTLINED_FUNCTION_59_30();
    v171[3].n128_u64[0] = sub_1E4205CB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    OUTLINED_FUNCTION_59_30();
    v202 = sub_1E4205CB4();
    *(v99 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF0, &qword_1E42AF870);
    *(v99 + 48) = v202;
    v158 = v11;
    OUTLINED_FUNCTION_59_30();
  }

  v203 = sub_1E4205CB4();
  v76[19].n128_u64[1] = v44;
  v76[18].n128_u64[0] = v203;
  ViewModelKeys.rawValue.getter(8);
  v76[20].n128_u64[0] = v204;
  v76[20].n128_u64[1] = v205;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  v206 = swift_initStackObject();
  v207 = OUTLINED_FUNCTION_130(v206, xmmword_1E4297BD0);
  v206[2].n128_u64[0] = sub_1E3BA363C(v207);
  v206[2].n128_u64[1] = v208;
  v209 = swift_initStackObject();
  *(v209 + 16) = v339;
  *(v209 + 32) = sub_1E4205F14();
  *(v209 + 40) = v210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
  v211 = swift_initStackObject();
  OUTLINED_FUNCTION_21_96(v211, v212, v213, v214, v215, v216, v217, v218, v219, v286, *(&v286 + 1), v303, v313, v323, v331, v339, *(&v339 + 1), v355, v363, v373, v382, v220);
  v211[2].n128_u64[0] = sub_1E4205F14();
  v211[2].n128_u64[1] = v221;
  v222 = sub_1E41FEBB4();
  if (v223)
  {
    v224 = v158;
  }

  else
  {
    v222 = sub_1E41FEBD4();
    v224 = v158;
    if (!v223)
    {
      v222 = 0;
      v223 = 0xE000000000000000;
    }
  }

  v211[3].n128_u64[0] = v222;
  v211[3].n128_u64[1] = v223;
  v225 = sub_1E4205CB4();
  *(v209 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
  *(v209 + 48) = v225;
  *(v209 + 80) = sub_1E4205F14();
  *(v209 + 88) = v226;
  v227 = sub_1E4205F14();
  *(v209 + 120) = v224;
  *(v209 + 96) = v227;
  *(v209 + 104) = v228;
  *(v209 + 128) = sub_1E4205F14();
  *(v209 + 136) = v229;
  v230 = sub_1E4205F14();
  *(v209 + 168) = v224;
  *(v209 + 144) = v230;
  *(v209 + 152) = v231;
  *(v209 + 176) = sub_1E4205F14();
  *(v209 + 184) = v232;
  v233 = sub_1E41FEBC4();
  *(v209 + 216) = v224;
  *(v209 + 192) = v233;
  *(v209 + 200) = v234;
  *(v209 + 224) = sub_1E4205F14();
  *(v209 + 232) = v235;
  v236 = sub_1E4205F14();
  *(v209 + 264) = v224;
  *(v209 + 240) = v236;
  *(v209 + 248) = v237;
  *(v209 + 272) = sub_1E3F6ABA4(2);
  *(v209 + 280) = v238;
  v239 = [objc_opt_self() isTVApp];
  v240 = MEMORY[0x1E69E6370];
  *(v209 + 312) = MEMORY[0x1E69E6370];
  *(v209 + 288) = v239 ^ 1;
  *(v209 + 320) = sub_1E3F6ABA4(3);
  *(v209 + 328) = v241;
  *(v209 + 360) = v240;
  *(v209 + 336) = 1;
  OUTLINED_FUNCTION_34();
  v242 = sub_1E4205CB4();
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  v206[4].n128_u64[1] = v243;
  v206[3].n128_u64[0] = v242;
  v206[5].n128_u64[0] = sub_1E3BA363C(1);
  v206[5].n128_u64[1] = v244;
  v245 = swift_initStackObject();
  *(v245 + 16) = xmmword_1E4298AD0;
  *(v245 + 32) = sub_1E4205F14();
  *(v245 + 40) = v246;
  v247 = sub_1E41FEBC4();
  *(v245 + 72) = v224;
  *(v245 + 48) = v247;
  *(v245 + 56) = v248;
  *(v245 + 80) = sub_1E4205F14();
  *(v245 + 88) = v249;
  v250 = sub_1E41FEBB4();
  *(v245 + 120) = v224;
  if (!v251)
  {
    v250 = sub_1E41FEBD4();
    if (!v251)
    {
      v250 = 0;
      v251 = 0xE000000000000000;
    }
  }

  *(v245 + 96) = v250;
  *(v245 + 104) = v251;
  *(v245 + 128) = sub_1E4205F14();
  *(v245 + 136) = v252;
  v253 = sub_1E4205F14();
  *(v245 + 168) = v224;
  *(v245 + 144) = v253;
  *(v245 + 152) = v254;
  *(v245 + 176) = sub_1E4205F14();
  *(v245 + 184) = v255;
  v256 = MEMORY[0x1E69E6530];
  *(v245 + 216) = MEMORY[0x1E69E6530];
  *(v245 + 192) = v376;
  v257 = sub_1E4205CB4();
  v206[7].n128_u64[1] = v243;
  v206[6].n128_u64[0] = v257;
  v206[8].n128_u64[0] = sub_1E3BA363C(2);
  v206[8].n128_u64[1] = v258;
  v259 = swift_allocObject();
  *(v259 + 16) = xmmword_1E429A240;
  *(v259 + 32) = sub_1E4205F14();
  *(v259 + 40) = v260;
  v261 = sub_1E41FEBC4();
  *(v259 + 72) = v224;
  *(v259 + 48) = v261;
  *(v259 + 56) = v262;
  *(v259 + 80) = sub_1E4205F14();
  *(v259 + 88) = v263;
  v264 = sub_1E4205F14();
  *(v259 + 120) = v224;
  *(v259 + 96) = v264;
  *(v259 + 104) = v265;
  *(v259 + 128) = sub_1E4205F14();
  *(v259 + 136) = v266;
  *(v259 + 168) = v256;
  *(v259 + 144) = v376;
  *(v259 + 176) = sub_1E4205F14();
  *(v259 + 184) = v267;
  v268 = sub_1E41FEBB4();
  *(v259 + 216) = v224;
  if (v269)
  {
    v270 = v385;
  }

  else
  {
    v268 = sub_1E41FEBD4();
    v270 = v385;
    if (!v269)
    {
      v268 = 0;
      v269 = 0xE000000000000000;
    }
  }

  v271 = MEMORY[0x1E69E7CA0];
  v272 = MEMORY[0x1E69E6370];
  *(v259 + 192) = v268;
  *(v259 + 200) = v269;
  *(v259 + 224) = sub_1E3F6ABA4(1);
  *(v259 + 232) = v273;
  *(v259 + 264) = v272;
  *(v259 + 240) = 1;
  v274 = OUTLINED_FUNCTION_85_19(v259, v273, v271 + 8);
  v206[10].n128_u64[1] = v243;
  v206[9].n128_u64[0] = v274;
  v276 = OUTLINED_FUNCTION_85_19(v206, v275, v271 + 8);
  v76[22].n128_u64[1] = v270;
  v76[21].n128_u64[0] = v276;
  v278 = OUTLINED_FUNCTION_85_19(v76, v277, v271 + 8);
  *(v366 + 72) = v270;
  *(v366 + 48) = v278;
  OUTLINED_FUNCTION_85_19(v366, v279, v271 + 8);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E9D160()
{
  OUTLINED_FUNCTION_31_1();
  v510 = v0;
  LODWORD(v513) = v1;
  v3 = v2;
  *&v512 = sub_1E41FED14();
  OUTLINED_FUNCTION_0_10();
  v509 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v502 = v7 - v6;
  v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1F0, &qword_1E42D9DE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v508 = (&v502 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1F8, &qword_1E42D9DE8);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v503 = v12 - v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  v504 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  *&v516 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v507 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301E8, &unk_1E42D9D90);
  inited = swift_initStackObject();
  v518 = xmmword_1E4297BE0;
  *(inited + 16) = xmmword_1E4297BE0;
  sub_1E384EE08(17);
  *(inited + 32) = v21;
  *(inited + 40) = v22;
  *(inited + 48) = sub_1E41FEB24();
  *(inited + 56) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
  v24 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_36_60();
  v25 = sub_1E4205CB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_9_151(v26);
  *(v26 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1D0, &qword_1E42D9DA0);
  *(v26 + 32) = v25;
  v27 = sub_1E41FEB04();
  v28 = MEMORY[0x1E69E6370];
  v517 = v3;
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740, &unk_1E42A89A0);
    v29 = swift_initStackObject();
    OUTLINED_FUNCTION_9_151(v29);
    sub_1E384EE08(39);
    v29[2].n128_u64[0] = v30;
    v29[2].n128_u64[1] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    v32 = swift_initStackObject();
    v515 = xmmword_1E4298AD0;
    v33 = OUTLINED_FUNCTION_50_43(v32, xmmword_1E4298AD0);
    v32[2].n128_u64[0] = sub_1E3C7CCAC(v33);
    v32[2].n128_u64[1] = v34;
    v32[4].n128_u64[1] = v28;
    v32[3].n128_u8[0] = 0;
    v32[5].n128_u64[0] = sub_1E3C7CCAC(0);
    v32[5].n128_u64[1] = v35;
    OUTLINED_FUNCTION_41_7();
    v32[7].n128_u64[1] = v24;
    v32[6].n128_u64[0] = 0xD000000000000016;
    v32[6].n128_u64[1] = v36;
    ViewModelKeys.rawValue.getter(12);
    v32[8].n128_u64[0] = v37;
    v32[8].n128_u64[1] = v38;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
    v40 = swift_initStackObject();
    OUTLINED_FUNCTION_25_85(v40);
    v40[2].n128_u64[0] = sub_1E3D46F94(96);
    v40[2].n128_u64[1] = v41;
    sub_1E376AD6C(19);
    v40[3].n128_u64[0] = v42;
    v40[3].n128_u64[1] = v43;
    v40[4].n128_u64[0] = sub_1E3D46F94(97);
    v40[4].n128_u64[1] = v44;
    v40[5].n128_u64[0] = sub_1E376B308();
    v40[5].n128_u64[1] = v45;
    v40[6].n128_u64[0] = sub_1E3D46F94(91);
    v40[6].n128_u64[1] = v46;
    v40[7].n128_u64[0] = sub_1E3B65208(2);
    v40[7].n128_u64[1] = v47;
    v40[8].n128_u64[0] = sub_1E3D46F94(21);
    v40[8].n128_u64[1] = v48;
    v40[9].n128_u64[0] = 0x547972616D697270;
    v40[9].n128_u64[1] = 0xEB00000000747865;
    OUTLINED_FUNCTION_35_4();
    v49 = sub_1E4205CB4();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
    v32[10].n128_u64[1] = v50;
    v32[9].n128_u64[0] = v49;
    ViewModelKeys.rawValue.getter(11);
    v32[11].n128_u64[0] = v51;
    v32[11].n128_u64[1] = v52;
    v53 = swift_initStackObject();
    OUTLINED_FUNCTION_8_166(v53);
    v39[4] = sub_1E3852A98(2);
    v39[5] = v54;
    v39[6] = 41154;
    v39[7] = 0xA200000000000000;
    OUTLINED_FUNCTION_283();
    v55 = sub_1E4205CB4();
    v32[13].n128_u64[1] = v50;
    v32[12].n128_u64[0] = v55;
    OUTLINED_FUNCTION_36_60();
    v29[3].n128_u64[0] = sub_1E4205CB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    v56 = sub_1E4205CB4();
    v526 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF0, &qword_1E42AF870);
    *&v525 = v56;
    v26 = sub_1E3B1DC54(1, 2, 1, v26);
    *(v26 + 16) = 2;
    sub_1E329504C(&v525, (v26 + 64));
  }

  sub_1E384EE08(23);
  OUTLINED_FUNCTION_61_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B200, &unk_1E42D9DF0);
  v57 = swift_initStackObject();
  OUTLINED_FUNCTION_9_151(v57);
  ViewModelKeys.rawValue.getter(14);
  v57[2].n128_u64[0] = v58;
  v57[2].n128_u64[1] = v59;
  v57[3].n128_u64[0] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF311C8, qword_1E42B49E0);
  sub_1E4205CB4();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B208, &unk_1E42D9E00);
  OUTLINED_FUNCTION_20_105(v60);
  v61 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v523 = v61;
  OUTLINED_FUNCTION_14_144(isUniquelyReferenced_nonNull_native, v63, v64, isUniquelyReferenced_nonNull_native);

  v65 = v523;
  sub_1E384EE08(15);
  OUTLINED_FUNCTION_61_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301E8, &unk_1E42D9D90);
  v66 = swift_initStackObject();
  OUTLINED_FUNCTION_9_151(v66);
  ViewModelKeys.rawValue.getter(14);
  v66[2].n128_u64[0] = v67;
  v66[2].n128_u64[1] = v68;
  v66[3].n128_u64[0] = sub_1E41FEB34();
  v66[3].n128_u64[1] = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
  OUTLINED_FUNCTION_35_4();
  sub_1E4205CB4();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1D0, &qword_1E42D9DA0);
  OUTLINED_FUNCTION_20_105(v70);
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v523 = v65;
  OUTLINED_FUNCTION_14_144(v71, v72, v73, v71);

  v74 = v523;
  sub_1E384EE08(39);
  v505 = v75;
  v77 = v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  v79 = swift_initStackObject();
  v515 = xmmword_1E4297BD0;
  v80 = OUTLINED_FUNCTION_50_43(v79, xmmword_1E4297BD0);
  v79[2].n128_u64[0] = sub_1E3C7CCAC(v80);
  v79[2].n128_u64[1] = v81;
  v79[4].n128_u64[1] = v28;
  v79[3].n128_u8[0] = 0;
  v79[5].n128_u64[0] = sub_1E3C7CCAC(0);
  v79[5].n128_u64[1] = v82;
  sub_1E41FEB74();
  v79[7].n128_u64[1] = v24;
  OUTLINED_FUNCTION_16_127();
  v85 = 0xE000000000000000;
  if (!v123)
  {
    v85 = v83;
  }

  v79[6].n128_u64[0] = v84;
  v79[6].n128_u64[1] = v85;
  v79[8].n128_u64[0] = sub_1E3C7CCAC(4);
  v79[8].n128_u64[1] = v86;
  v79[10].n128_u64[1] = v24;
  v79[9].n128_u64[0] = 6778480;
  v79[9].n128_u64[1] = 0xE300000000000000;
  OUTLINED_FUNCTION_35_4();
  sub_1E4205CB4();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  OUTLINED_FUNCTION_20_105(v87);
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v523 = v74;
  sub_1E32A87C0(&v519, v505, v77, v88);

  v89 = v523;
  sub_1E41FEAF4();
  OUTLINED_FUNCTION_48_42();
  v92 = v91 + 9;
  v93 = v91 + 14;
  if (v90)
  {
    v94 = v93;
  }

  else
  {
    v94 = v92;
  }

  if (v90)
  {
    v95 = "symbol://plus.circle.fill";
  }

  else
  {
    v95 = "v24@0:8@JSValue16";
  }

  v96 = v95 | 0x8000000000000000;
  sub_1E384EE08(31);
  v505 = v97;
  v99 = v98;
  n128_u64 = v78;
  v100 = swift_initStackObject();
  OUTLINED_FUNCTION_25_85(v100);
  ViewModelKeys.rawValue.getter(7);
  v100[2].n128_u64[0] = v101;
  v100[2].n128_u64[1] = v102;
  v100[4].n128_u64[1] = v24;
  v100[3].n128_u64[0] = v94;
  v100[3].n128_u64[1] = v96;

  v100[5].n128_u64[0] = sub_1E3C7CCAC(2);
  v100[5].n128_u64[1] = v103;
  v100[7].n128_u64[1] = MEMORY[0x1E69E6370];
  v100[6].n128_u8[0] = 0;
  v100[8].n128_u64[0] = sub_1E3C7CCAC(0);
  v100[8].n128_u64[1] = v104;
  v100[10].n128_u64[1] = v24;
  v100[9].n128_u64[0] = v94;
  v100[9].n128_u64[1] = v96;
  OUTLINED_FUNCTION_35_4();
  v105 = sub_1E4205CB4();
  v514 = v87;
  *(&v522 + 1) = v87;
  *&v521 = v105;
  sub_1E329504C(&v521, &v519);
  v106 = swift_isUniquelyReferenced_nonNull_native();
  v523 = v89;
  sub_1E32A87C0(&v519, v505, v99, v106);

  v505 = v523;
  v107 = v507;
  sub_1E41FEB54();
  v108 = v509;
  v109 = v516;
  v110 = v512;
  (v509[6].n128_u64[1])(v516, *MEMORY[0x1E69D57C0], v512);
  __swift_storeEnumTagSinglePayload(v109, 0, 1, v110);
  v111 = *(v506 + 48);
  v112 = v508;
  OUTLINED_FUNCTION_18_5();
  sub_1E379D7E4(v113, v114, v115, v116);
  OUTLINED_FUNCTION_18_5();
  sub_1E379D7E4(v117, v118, v119, v120);
  OUTLINED_FUNCTION_11_150(v112);
  if (v123)
  {
    OUTLINED_FUNCTION_45_3(v109);
    OUTLINED_FUNCTION_45_3(v107);
    OUTLINED_FUNCTION_11_150(v112 + v111);
    if (v123)
    {
      sub_1E325F6F0(v112, &qword_1ECF3B1F8, &qword_1E42D9DE8);
      v121 = v505;
      goto LABEL_21;
    }

LABEL_19:
    sub_1E325F6F0(v112, &qword_1ECF3B1F0, &qword_1E42D9DE0);
    v124 = MEMORY[0x1E69E6158];
    v121 = v505;
    goto LABEL_25;
  }

  v122 = v504;
  sub_1E379D7E4(v112, v504, &qword_1ECF3B1F8, &qword_1E42D9DE8);
  OUTLINED_FUNCTION_11_150(v112 + v111);
  if (v123)
  {
    OUTLINED_FUNCTION_45_3(v516);
    OUTLINED_FUNCTION_45_3(v107);
    (v108->n128_u64[1])(v122, v110);
    goto LABEL_19;
  }

  v125 = v502;
  (v108[2].n128_u64[0])(v502, v112 + v111, v110);
  sub_1E3EA0AD8(&qword_1ECF3B210, MEMORY[0x1E69D57C8], MEMORY[0x1E69D57D0]);
  LODWORD(v506) = sub_1E4205E84();
  v126 = v108->n128_u64[1];
  v126(v125, v110);
  sub_1E325F6F0(v516, &qword_1ECF3B1F8, &qword_1E42D9DE8);
  sub_1E325F6F0(v107, &qword_1ECF3B1F8, &qword_1E42D9DE8);
  v126(v122, v110);
  sub_1E325F6F0(v112, &qword_1ECF3B1F8, &qword_1E42D9DE8);
  v121 = v505;
  if ((v506 & 1) == 0)
  {
    v124 = MEMORY[0x1E69E6158];
    goto LABEL_25;
  }

LABEL_21:
  v127 = v503;
  sub_1E41FEB54();
  OUTLINED_FUNCTION_11_150(v127);
  v124 = MEMORY[0x1E69E6158];
  if (v123)
  {
    sub_1E325F6F0(v127, &qword_1ECF3B1F8, &qword_1E42D9DE8);
  }

  else
  {
    v128 = sub_1E41FED04();
    v130 = v129;
    (v108->n128_u64[1])(v127, v110);
    sub_1E384EE08(17);
    OUTLINED_FUNCTION_61_23();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
    v131 = swift_allocObject();
    OUTLINED_FUNCTION_9_151(v131);
    ViewModelKeys.rawValue.getter(14);
    v131[2].n128_u64[0] = v132;
    v131[2].n128_u64[1] = v133;
    v131[3].n128_u64[0] = v128;
    v131[3].n128_u64[1] = v130;
    sub_1E4205CB4();
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
    OUTLINED_FUNCTION_20_105(v134);
    v135 = swift_isUniquelyReferenced_nonNull_native();
    v523 = v121;
    OUTLINED_FUNCTION_14_144(v135, v136, v137, v135);

    v121 = v523;
  }

LABEL_25:
  v138 = swift_initStackObject();
  OUTLINED_FUNCTION_9_151(v138);
  sub_1E384EE08(205);
  v138[2].n128_u64[0] = v139;
  v138[2].n128_u64[1] = v140;
  v509 = v138;
  v141 = swift_allocObject();
  v512 = xmmword_1E429A230;
  OUTLINED_FUNCTION_117(v141, xmmword_1E429A230);
  v141[2].n128_u64[0] = v142;
  v141[2].n128_u64[1] = v143;
  v144 = sub_1E41FEB64();
  v141[4].n128_u64[1] = v124;
  v141[3].n128_u64[0] = v144;
  v141[3].n128_u64[1] = v145;
  ViewModelKeys.rawValue.getter(9);
  v141[5].n128_u64[0] = v146;
  v141[5].n128_u64[1] = v147;
  v141[7].n128_u64[1] = v124;
  v141[6].n128_u64[0] = 0x3331322E373131;
  v141[6].n128_u64[1] = 0xE700000000000000;
  ViewModelKeys.rawValue.getter(13);
  v141[8].n128_u64[0] = v148;
  v141[8].n128_u64[1] = v149;
  v150 = v514;
  v141[10].n128_u64[1] = v514;
  v141[9].n128_u64[0] = v121;
  ViewModelKeys.rawValue.getter(11);
  v141[11].n128_u64[0] = v151;
  v141[11].n128_u64[1] = v152;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CED8, &qword_1E42A89C8);
  v153 = swift_initStackObject();
  OUTLINED_FUNCTION_25_85(v153);
  v153[2].n128_u64[0] = j__OUTLINED_FUNCTION_20_30();
  v153[2].n128_u64[1] = v154;
  v153[3].n128_u8[0] = sub_1E34AF508(v513 & 1, 0);
  v153[3].n128_u64[1] = j__OUTLINED_FUNCTION_25_24();
  v153[4].n128_u64[0] = v155;
  v153[4].n128_u8[8] = sub_1E41FEB84() & 1;
  sub_1E3853DA8(21);
  v153[5].n128_u64[0] = v156;
  v153[5].n128_u64[1] = v157;
  v153[6].n128_u8[0] = [objc_opt_self() isRemoteApp] ^ 1;
  OUTLINED_FUNCTION_36_60();
  v158 = MEMORY[0x1E69E6370];
  v159 = sub_1E4205CB4();
  v141[13].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36120, &unk_1E42C7BE0);
  v141[12].n128_u64[0] = v159;
  ViewModelKeys.rawValue.getter(15);
  v141[14].n128_u64[0] = v160;
  v141[14].n128_u64[1] = v161;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  v162 = swift_initStackObject();
  OUTLINED_FUNCTION_6_183(v162);
  ViewModelKeys.rawValue.getter(16);
  v153[2].n128_u64[0] = v163;
  v153[2].n128_u64[1] = v164;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740, &unk_1E42A89A0);
  v165 = swift_initStackObject();
  OUTLINED_FUNCTION_8_166(v165);
  OUTLINED_FUNCTION_41_7();
  OUTLINED_FUNCTION_48_42();
  *(v166 + 32) = v168;
  *(v166 + 40) = v167;
  v169 = swift_initStackObject();
  v516 = xmmword_1E4299720;
  *(v169 + 16) = xmmword_1E4299720;
  v513 = @"actionRef";
  *(v169 + 32) = sub_1E4205F14();
  *(v169 + 40) = v170;
  v507 = @"actionRefUpdateMusic";
  v171 = sub_1E4205F14();
  *(v169 + 72) = MEMORY[0x1E69E6158];
  *(v169 + 48) = v171;
  *(v169 + 56) = v172;
  *(v169 + 80) = sub_1E4205F14();
  *(v169 + 88) = v173;
  v174 = swift_initStackObject();
  OUTLINED_FUNCTION_13_149(v174);
  v506 = @"itemID";
  v174[2].n128_u64[0] = sub_1E4205F14();
  v174[2].n128_u64[1] = v175;
  sub_1E41FEB44();
  v174[4].n128_u64[1] = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_16_127();
  v178 = 0xE000000000000000;
  if (!v123)
  {
    v178 = v176;
  }

  v174[3].n128_u64[0] = v177;
  v174[3].n128_u64[1] = v178;
  v505 = @"isExplicit";
  v174[5].n128_u64[0] = sub_1E4205F14();
  v174[5].n128_u64[1] = v179;
  v180 = sub_1E41FEB04();
  v174[7].n128_u64[1] = v158;
  v174[6].n128_u8[0] = v180 & 1;
  v181 = sub_1E4205CB4();
  *(v169 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  *(v169 + 96) = v181;
  v182 = sub_1E4205CB4();
  OUTLINED_FUNCTION_38_54(v182);
  v183 = sub_1E4205CB4();
  v153[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF0, &qword_1E42AF870);
  v153[3].n128_u64[0] = v183;
  v184 = sub_1E4205CB4();
  v141[16].n128_u64[1] = v150;
  v141[15].n128_u64[0] = v184;
  ViewModelKeys.rawValue.getter(8);
  v141[17].n128_u64[0] = v185;
  v141[17].n128_u64[1] = v186;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  v187 = swift_initStackObject();
  OUTLINED_FUNCTION_25_85(v187);
  *(v187 + 32) = sub_1E3BA363C(0);
  *(v187 + 40) = v188;
  v189 = swift_initStackObject();
  OUTLINED_FUNCTION_10_143(v189);
  v189[2].n128_u64[0] = sub_1E4205F14();
  v189[2].n128_u64[1] = v190;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
  v191 = swift_initStackObject();
  OUTLINED_FUNCTION_6_183(v191);
  v153[2].n128_u64[0] = sub_1E4205F14();
  v153[2].n128_u64[1] = v192;
  sub_1E41FEB24();
  OUTLINED_FUNCTION_16_127();
  v195 = 0xE000000000000000;
  if (!v123)
  {
    v195 = v193;
  }

  v153[3].n128_u64[0] = v194;
  v153[3].n128_u64[1] = v195;
  v196 = sub_1E4205CB4();
  v189[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
  v189[3].n128_u64[0] = v196;
  v189[5].n128_u64[0] = sub_1E4205F14();
  v189[5].n128_u64[1] = v197;
  v198 = sub_1E4205F14();
  v189[7].n128_u64[1] = MEMORY[0x1E69E6158];
  v189[6].n128_u64[0] = v198;
  v189[6].n128_u64[1] = v199;
  v189[8].n128_u64[0] = sub_1E4205F14();
  v189[8].n128_u64[1] = v200;
  v201 = sub_1E4205F14();
  v189[10].n128_u64[1] = MEMORY[0x1E69E6158];
  v189[9].n128_u64[0] = v201;
  v189[9].n128_u64[1] = v202;
  v189[11].n128_u64[0] = sub_1E4205F14();
  v189[11].n128_u64[1] = v203;
  v204 = sub_1E41FEB64();
  v189[13].n128_u64[1] = MEMORY[0x1E69E6158];
  v189[12].n128_u64[0] = v204;
  v189[12].n128_u64[1] = v205;
  v189[14].n128_u64[0] = sub_1E4205F14();
  v189[14].n128_u64[1] = v206;
  v207 = sub_1E4205F14();
  v189[16].n128_u64[1] = MEMORY[0x1E69E6158];
  v189[15].n128_u64[0] = v207;
  v189[15].n128_u64[1] = v208;
  v189[17].n128_u64[0] = sub_1E3F6ABA4(2);
  v189[17].n128_u64[1] = v209;
  v210 = [objc_opt_self() isTVApp];
  v211 = MEMORY[0x1E69E6370];
  v189[19].n128_u64[1] = MEMORY[0x1E69E6370];
  v189[18].n128_u8[0] = v210 ^ 1;
  v189[20].n128_u64[0] = sub_1E3F6ABA4(3);
  v189[20].n128_u64[1] = v212;
  v189[22].n128_u64[1] = v211;
  v189[21].n128_u8[0] = 1;
  v213 = sub_1E4205CB4();
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  *(v187 + 72) = v214;
  *(v187 + 48) = v213;
  *(v187 + 80) = sub_1E3BA363C(1);
  *(v187 + 88) = v215;
  v216 = swift_initStackObject();
  v512 = xmmword_1E4298AD0;
  *(v216 + 16) = xmmword_1E4298AD0;
  *(v216 + 32) = sub_1E4205F14();
  *(v216 + 40) = v217;
  v218 = sub_1E41FEB64();
  *(v216 + 72) = MEMORY[0x1E69E6158];
  *(v216 + 48) = v218;
  *(v216 + 56) = v219;
  *(v216 + 80) = sub_1E4205F14();
  *(v216 + 88) = v220;
  sub_1E41FEB24();
  *(v216 + 120) = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_16_127();
  v223 = 0xE000000000000000;
  if (!v123)
  {
    v223 = v221;
  }

  *(v216 + 96) = v222;
  *(v216 + 104) = v223;
  *(v216 + 128) = sub_1E4205F14();
  *(v216 + 136) = v224;
  v225 = sub_1E4205F14();
  *(v216 + 168) = MEMORY[0x1E69E6158];
  *(v216 + 144) = v225;
  *(v216 + 152) = v226;
  *(v216 + 176) = sub_1E4205F14();
  *(v216 + 184) = v227;
  *(v216 + 216) = MEMORY[0x1E69E6530];
  v228 = v510;
  *(v216 + 192) = v510;
  v229 = sub_1E4205CB4();
  *(v187 + 120) = v214;
  *(v187 + 96) = v229;
  *(v187 + 128) = sub_1E3BA363C(2);
  *(v187 + 136) = v230;
  v231 = swift_allocObject();
  *(v231 + 16) = xmmword_1E429A240;
  *(v231 + 32) = sub_1E4205F14();
  *(v231 + 40) = v232;
  v233 = sub_1E41FEB64();
  *(v231 + 72) = MEMORY[0x1E69E6158];
  *(v231 + 48) = v233;
  *(v231 + 56) = v234;
  *(v231 + 80) = sub_1E4205F14();
  *(v231 + 88) = v235;
  v236 = sub_1E4205F14();
  *(v231 + 120) = MEMORY[0x1E69E6158];
  *(v231 + 96) = v236;
  *(v231 + 104) = v237;
  *(v231 + 128) = sub_1E4205F14();
  *(v231 + 136) = v238;
  *(v231 + 168) = MEMORY[0x1E69E6530];
  v239 = MEMORY[0x1E69E6158];
  *(v231 + 144) = v228;
  v240 = MEMORY[0x1E69E6370];
  *(v231 + 176) = sub_1E4205F14();
  *(v231 + 184) = v241;
  sub_1E41FEB24();
  *(v231 + 216) = v239;
  OUTLINED_FUNCTION_16_127();
  v244 = 0xE000000000000000;
  if (!v123)
  {
    v244 = v242;
  }

  *(v231 + 192) = v243;
  *(v231 + 200) = v244;
  *(v231 + 224) = sub_1E3F6ABA4(1);
  *(v231 + 232) = v245;
  *(v231 + 264) = v240;
  *(v231 + 240) = 1;
  v246 = sub_1E4205CB4();
  *(v187 + 168) = v214;
  *(v187 + 144) = v246;
  v247 = sub_1E4205CB4();
  v141[19].n128_u64[1] = v514;
  v141[18].n128_u64[0] = v247;
  ViewModelKeys.rawValue.getter(19);
  v141[20].n128_u64[0] = v248;
  v141[20].n128_u64[1] = v249;
  v508 = v141;
  v250 = swift_allocObject();
  OUTLINED_FUNCTION_13_149(v250);
  sub_1E3C7ED20(27);
  v250[2].n128_u64[0] = v251;
  v250[2].n128_u64[1] = v252;
  n128_u64 = v250->n128_u64;
  sub_1E384EE08(23);
  OUTLINED_FUNCTION_61_23();
  v253 = sub_1E41FEB24();
  if (v254)
  {
    OUTLINED_FUNCTION_65_29(v253, v254);
    v255 = MEMORY[0x1E69E7CC8];
    v256 = swift_isUniquelyReferenced_nonNull_native();
    v523 = v255;
    OUTLINED_FUNCTION_14_144(v256, v257, v258, v256);

    v259 = v523;
  }

  else
  {
    v260 = MEMORY[0x1E69E7CC8];
    v261 = sub_1E327D33C(v187, v231);
    if (v262)
    {
      v187 = v261;
      v259 = swift_isUniquelyReferenced_nonNull_native();
      *&v519 = v260;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
      sub_1E4207644();
      OUTLINED_FUNCTION_81_23();
      sub_1E329504C((*(v259 + 56) + 32 * v187), &v521);
      sub_1E4207664();
    }

    else
    {
      v522 = 0u;
      v521 = 0u;
      v259 = MEMORY[0x1E69E7CC8];
    }

    sub_1E325F6F0(&v521, &unk_1ECF296E0, &unk_1E4298030);
  }

  sub_1E384EE08(15);
  OUTLINED_FUNCTION_61_23();
  v263 = sub_1E41FEB34();
  if (v264)
  {
    OUTLINED_FUNCTION_65_29(v263, v264);
    v265 = swift_isUniquelyReferenced_nonNull_native();
    v523 = v259;
    OUTLINED_FUNCTION_14_144(v265, v266, v267, v265);

    v259 = v523;
  }

  else
  {
    v268 = sub_1E327D33C(v187, v231);
    if (v269)
    {
      v270 = v268;
      swift_isUniquelyReferenced_nonNull_native();
      *&v519 = v259;
      v259 = *(v259 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
      sub_1E4207644();
      OUTLINED_FUNCTION_81_23();
      sub_1E329504C((*(v259 + 56) + 32 * v270), &v521);
      sub_1E4207664();
    }

    else
    {
      v522 = 0u;
      v521 = 0u;
    }

    sub_1E325F6F0(&v521, &unk_1ECF296E0, &unk_1E4298030);
  }

  sub_1E384EE08(39);
  v510 = v271;
  v273 = v272;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  v274 = swift_initStackObject();
  OUTLINED_FUNCTION_10_143(v274);
  v274[2].n128_u64[0] = sub_1E3C7CCAC(2);
  v274[2].n128_u64[1] = v275;
  v274[4].n128_u64[1] = v240;
  v274[3].n128_u8[0] = 1;
  v274[5].n128_u64[0] = sub_1E3C7CCAC(0);
  v274[5].n128_u64[1] = v276;
  v277 = sub_1E3E9FF40();
  v274[7].n128_u64[1] = v239;
  v274[6].n128_u64[0] = v277;
  v274[6].n128_u64[1] = v278;
  v274[8].n128_u64[0] = sub_1E3C7CCAC(4);
  v274[8].n128_u64[1] = v279;
  v274[10].n128_u64[1] = v239;
  v274[9].n128_u64[0] = 6778986;
  v274[9].n128_u64[1] = 0xE300000000000000;
  ViewModelKeys.rawValue.getter(11);
  v274[11].n128_u64[0] = v280;
  v274[11].n128_u64[1] = v281;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CED8, &qword_1E42A89C8);
  v282 = swift_initStackObject();
  OUTLINED_FUNCTION_9_151(v282);
  sub_1E3853DA8(55);
  v282[2].n128_u64[0] = v283;
  v282[2].n128_u64[1] = v284;
  v282[3].n128_u8[0] = 1;
  v285 = sub_1E4205CB4();
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36120, &unk_1E42C7BE0);
  v274[13].n128_u64[1] = v286;
  v274[12].n128_u64[0] = v285;
  v287 = sub_1E4205CB4();
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  v520 = v288;
  *&v519 = v287;
  sub_1E329504C(&v519, v524);
  v289 = swift_isUniquelyReferenced_nonNull_native();
  v527 = v259;
  sub_1E32A87C0(v524, v510, v273, v289);

  v290 = v527;
  v291 = swift_initStackObject();
  OUTLINED_FUNCTION_13_149(v291);
  ViewModelKeys.rawValue.getter(13);
  v291[2].n128_u64[0] = v292;
  v291[2].n128_u64[1] = v293;
  v291[4].n128_u64[1] = v288;
  v291[3].n128_u64[0] = v290;
  ViewModelKeys.rawValue.getter(11);
  v291[5].n128_u64[0] = v294;
  v291[5].n128_u64[1] = v295;
  v296 = swift_initStackObject();
  OUTLINED_FUNCTION_6_183(v296);
  sub_1E3853DA8(55);
  *(v290 + 32) = v297;
  *(v290 + 40) = v298;
  *(v290 + 48) = 1;
  v299 = MEMORY[0x1E69E6370];
  v300 = sub_1E4205CB4();
  v291[7].n128_u64[1] = v286;
  v301 = MEMORY[0x1E69E6158];
  v291[6].n128_u64[0] = v300;
  v302 = sub_1E4205CB4();
  v303 = n128_u64;
  n128_u64[9] = v514;
  v303[6] = v302;
  sub_1E3C7ED20(28);
  v303[10] = v304;
  v303[11] = v305;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  v306 = swift_initStackObject();
  OUTLINED_FUNCTION_13_149(v306);
  ViewModelKeys.rawValue.getter(13);
  v306[2].n128_u64[0] = v307;
  v306[2].n128_u64[1] = v308;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740, &unk_1E42A89A0);
  v309 = swift_initStackObject();
  OUTLINED_FUNCTION_13_149(v309);
  ViewModelKeys.rawValue.getter(23);
  v309[2].n128_u64[0] = v310;
  v309[2].n128_u64[1] = v311;
  v312 = swift_initStackObject();
  OUTLINED_FUNCTION_25_85(v312);
  v313 = sub_1E3C7CCAC(4);
  v312[5].n128_u64[0] = OUTLINED_FUNCTION_64_28(v313, v314);
  v312[5].n128_u64[1] = v315;
  v312[7].n128_u64[1] = v299;
  v312[6].n128_u8[0] = 0;
  v312[8].n128_u64[0] = sub_1E3C7CCAC(0);
  v312[8].n128_u64[1] = v316;
  OUTLINED_FUNCTION_41_7();
  v312[10].n128_u64[1] = v301;
  OUTLINED_FUNCTION_48_42();
  v312[9].n128_u64[0] = v317 + 7;
  v312[9].n128_u64[1] = v318;
  v309[3].n128_u64[0] = OUTLINED_FUNCTION_22_82();
  sub_1E384EE08(23);
  v309[3].n128_u64[1] = v319;
  v309[4].n128_u64[0] = v320;
  v321 = swift_initStackObject();
  OUTLINED_FUNCTION_6_183(v321);
  ViewModelKeys.rawValue.getter(14);
  v312[2].n128_u64[0] = v322;
  v312[2].n128_u64[1] = v323;
  if (_MergedGlobals_249 != -1)
  {
    OUTLINED_FUNCTION_28_76(&_MergedGlobals_249);
  }

  v325 = qword_1ECF71760;
  v324 = *algn_1ECF71768;
  v312[4].n128_u64[1] = v301;
  v312[3].n128_u64[0] = v325;
  v312[3].n128_u64[1] = v324;

  v309[4].n128_u64[1] = OUTLINED_FUNCTION_22_82();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  v326 = OUTLINED_FUNCTION_283();
  v328 = OUTLINED_FUNCTION_86_15(v326, v327);
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF0, &qword_1E42AF870);
  OUTLINED_FUNCTION_80_17(v329);
  v306[5].n128_u64[0] = v330;
  v306[5].n128_u64[1] = v331;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301F8, &unk_1E42D9E10);
  v332 = swift_initStackObject();
  OUTLINED_FUNCTION_8_166(v332);
  ViewModelKeys.rawValue.getter(16);
  *(v328 + 32) = v333;
  *(v328 + 40) = v334;
  v335 = swift_initStackObject();
  OUTLINED_FUNCTION_9_151(v335);
  ViewModelKeys.rawValue.getter(17);
  v335[2].n128_u64[0] = v336;
  v335[2].n128_u64[1] = v337;
  v338 = swift_initStackObject();
  OUTLINED_FUNCTION_13_149(v338);
  v338[2].n128_u64[0] = sub_1E4205F14();
  v338[2].n128_u64[1] = v339;
  v340 = sub_1E4205F14();
  v338[4].n128_u64[1] = MEMORY[0x1E69E6158];
  v338[3].n128_u64[0] = v340;
  v338[3].n128_u64[1] = v341;
  v510 = @"contextData";
  v338[5].n128_u64[0] = sub_1E4205F14();
  v338[5].n128_u64[1] = v342;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
  v343 = swift_initStackObject();
  OUTLINED_FUNCTION_9_151(v343);
  *(v344 + 32) = 0x6C7255626577;
  *(v344 + 40) = 0xE600000000000000;
  sub_1E41FEB14();
  OUTLINED_FUNCTION_16_127();
  v347 = 0xE000000000000000;
  if (!v123)
  {
    v347 = v345;
  }

  v343[3].n128_u64[0] = v346;
  v343[3].n128_u64[1] = v347;
  v348 = sub_1E4205CB4();
  v338[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
  v338[6].n128_u64[0] = v348;
  v349 = v338;
  v350 = MEMORY[0x1E69E6158];
  v335[3].n128_u64[0] = OUTLINED_FUNCTION_57_31(v349, v351, MEMORY[0x1E69E7CA0] + 8);
  v352 = OUTLINED_FUNCTION_35_4();
  v354 = OUTLINED_FUNCTION_86_15(v352, v353);
  OUTLINED_FUNCTION_38_54(v354);
  v355 = MEMORY[0x1E69E7CA0];
  v356 = sub_1E4205CB4();
  v306[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30200, &qword_1E42B0D20);
  v306[6].n128_u64[0] = v356;
  v504 = OUTLINED_FUNCTION_57_31(v306, v357, v355 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  v358 = swift_initStackObject();
  OUTLINED_FUNCTION_13_149(v358);
  ViewModelKeys.rawValue.getter(13);
  v358[2].n128_u64[0] = v359;
  v358[2].n128_u64[1] = v360;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740, &unk_1E42A89A0);
  v361 = swift_initStackObject();
  OUTLINED_FUNCTION_13_149(v361);
  ViewModelKeys.rawValue.getter(23);
  v361[2].n128_u64[0] = v362;
  v361[2].n128_u64[1] = v363;
  v364 = swift_initStackObject();
  OUTLINED_FUNCTION_25_85(v364);
  v365 = sub_1E3C7CCAC(4);
  v364[5].n128_u64[0] = OUTLINED_FUNCTION_64_28(v365, v366);
  v364[5].n128_u64[1] = v367;
  v364[7].n128_u64[1] = MEMORY[0x1E69E6370];
  v364[6].n128_u8[0] = 0;
  v364[8].n128_u64[0] = sub_1E3C7CCAC(0);
  v364[8].n128_u64[1] = v368;
  OUTLINED_FUNCTION_41_7();
  v364[10].n128_u64[1] = v350;
  OUTLINED_FUNCTION_48_42();
  v364[9].n128_u64[0] = v369 + 4;
  v364[9].n128_u64[1] = v370;
  v361[3].n128_u64[0] = OUTLINED_FUNCTION_22_82();
  sub_1E384EE08(23);
  v361[3].n128_u64[1] = v371;
  v361[4].n128_u64[0] = v372;
  v373 = swift_initStackObject();
  OUTLINED_FUNCTION_6_183(v373);
  ViewModelKeys.rawValue.getter(14);
  v364[2].n128_u64[0] = v374;
  v364[2].n128_u64[1] = v375;
  if (qword_1EE28C708 != -1)
  {
    OUTLINED_FUNCTION_27_80(&qword_1EE28C708);
  }

  v377 = qword_1ECF71770;
  v376 = *algn_1ECF71778;
  v364[4].n128_u64[1] = v350;
  v364[3].n128_u64[0] = v377;
  v364[3].n128_u64[1] = v376;

  v361[4].n128_u64[1] = OUTLINED_FUNCTION_22_82();
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  v379 = OUTLINED_FUNCTION_283();
  v381 = OUTLINED_FUNCTION_86_15(v379, v380);
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF0, &qword_1E42AF870);
  OUTLINED_FUNCTION_80_17(v382);
  v358[5].n128_u64[0] = v383;
  v358[5].n128_u64[1] = v384;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301F8, &unk_1E42D9E10);
  v385 = swift_initStackObject();
  OUTLINED_FUNCTION_8_166(v385);
  ViewModelKeys.rawValue.getter(16);
  *(v381 + 32) = v386;
  *(v381 + 40) = v387;
  v388 = swift_initStackObject();
  OUTLINED_FUNCTION_9_151(v388);
  ViewModelKeys.rawValue.getter(17);
  v388[2].n128_u64[0] = v389;
  v388[2].n128_u64[1] = v390;
  v391 = swift_initStackObject();
  OUTLINED_FUNCTION_13_149(v391);
  v391[2].n128_u64[0] = sub_1E4205F14();
  v391[2].n128_u64[1] = v392;
  v393 = sub_1E4205F14();
  v391[4].n128_u64[1] = MEMORY[0x1E69E6158];
  v391[3].n128_u64[0] = v393;
  v391[3].n128_u64[1] = v394;
  v391[5].n128_u64[0] = sub_1E4205F14();
  v391[5].n128_u64[1] = v395;
  v396 = swift_initStackObject();
  OUTLINED_FUNCTION_13_149(v396);
  v396[2].n128_u64[0] = sub_1E4205F14();
  v396[2].n128_u64[1] = v397;
  sub_1E41FEB44();
  v396[4].n128_u64[1] = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_16_127();
  v400 = 0xE000000000000000;
  if (!v123)
  {
    v400 = v398;
  }

  v396[3].n128_u64[0] = v399;
  v396[3].n128_u64[1] = v400;
  v396[5].n128_u64[0] = sub_1E4205F14();
  v396[5].n128_u64[1] = v401;
  v402 = sub_1E41FEB04();
  v396[7].n128_u64[1] = MEMORY[0x1E69E6370];
  v396[6].n128_u8[0] = v402 & 1;
  v403 = MEMORY[0x1E69E7CA0];
  v404 = sub_1E4205CB4();
  v391[7].n128_u64[1] = v378;
  v391[6].n128_u64[0] = v404;
  v405 = v403;
  v406 = v391;
  v407 = MEMORY[0x1E69E6158];
  v388[3].n128_u64[0] = OUTLINED_FUNCTION_57_31(v406, v408, v403 + 8);
  v409 = OUTLINED_FUNCTION_35_4();
  v411 = OUTLINED_FUNCTION_86_15(v409, v410);
  OUTLINED_FUNCTION_38_54(v411);
  v412 = sub_1E4205CB4();
  v358[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30200, &qword_1E42B0D20);
  v358[6].n128_u64[0] = v412;
  v507 = OUTLINED_FUNCTION_57_31(v358, v413, v405 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  v414 = swift_initStackObject();
  OUTLINED_FUNCTION_25_85(v414);
  ViewModelKeys.rawValue.getter(13);
  v414[2].n128_u64[0] = v415;
  v414[2].n128_u64[1] = v416;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740, &unk_1E42A89A0);
  v417 = swift_initStackObject();
  OUTLINED_FUNCTION_13_149(v417);
  ViewModelKeys.rawValue.getter(23);
  v417[2].n128_u64[0] = v418;
  v417[2].n128_u64[1] = v419;
  v420 = swift_initStackObject();
  OUTLINED_FUNCTION_25_85(v420);
  v420[2].n128_u64[0] = sub_1E3C7CCAC(4);
  v420[2].n128_u64[1] = v421;
  v420[4].n128_u64[1] = v407;
  v420[3].n128_u64[0] = 0;
  v420[3].n128_u64[1] = 0xE000000000000000;
  v420[5].n128_u64[0] = sub_1E3C7CCAC(2);
  v420[5].n128_u64[1] = v422;
  v420[7].n128_u64[1] = MEMORY[0x1E69E6370];
  v420[6].n128_u8[0] = 0;
  v420[8].n128_u64[0] = sub_1E3C7CCAC(0);
  v420[8].n128_u64[1] = v423;
  OUTLINED_FUNCTION_41_7();
  v420[10].n128_u64[1] = v407;
  OUTLINED_FUNCTION_48_42();
  v420[9].n128_u64[0] = v424 + 12;
  v420[9].n128_u64[1] = v425;
  OUTLINED_FUNCTION_283();
  v417[3].n128_u64[0] = sub_1E4205CB4();
  sub_1E384EE08(23);
  v417[3].n128_u64[1] = v426;
  v417[4].n128_u64[0] = v427;
  v428 = swift_initStackObject();
  OUTLINED_FUNCTION_8_166(v428);
  ViewModelKeys.rawValue.getter(14);
  v420[2].n128_u64[0] = v429;
  v420[2].n128_u64[1] = v430;
  if (qword_1EE28C710 != -1)
  {
    OUTLINED_FUNCTION_26_97(&qword_1EE28C710);
  }

  v432 = qword_1ECF71780;
  v431 = *algn_1ECF71788;
  v420[4].n128_u64[1] = v407;
  v420[3].n128_u64[0] = v432;
  v420[3].n128_u64[1] = v431;

  OUTLINED_FUNCTION_283();
  v434 = v433;
  v417[4].n128_u64[1] = sub_1E4205CB4();
  v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  OUTLINED_FUNCTION_36_60();
  v435 = sub_1E4205CB4();
  v505 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF0, &qword_1E42AF870);
  v414[4].n128_u64[1] = v505;
  v414[3].n128_u64[0] = v435;
  ViewModelKeys.rawValue.getter(15);
  v414[5].n128_u64[0] = v436;
  v414[5].n128_u64[1] = v437;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301F8, &unk_1E42D9E10);
  v438 = swift_initStackObject();
  OUTLINED_FUNCTION_6_183(v438);
  ViewModelKeys.rawValue.getter(16);
  v435[4] = v439;
  v435[5] = v440;
  v441 = swift_initStackObject();
  OUTLINED_FUNCTION_8_166(v441);
  ViewModelKeys.rawValue.getter(17);
  v434[4] = v442;
  v434[5] = v443;
  v444 = swift_initStackObject();
  OUTLINED_FUNCTION_13_149(v444);
  v444[2].n128_u64[0] = sub_1E4205F14();
  v444[2].n128_u64[1] = v445;
  v446 = sub_1E4205F14();
  v444[4].n128_u64[1] = v407;
  v444[3].n128_u64[0] = v446;
  v444[3].n128_u64[1] = v447;
  v444[5].n128_u64[0] = sub_1E4205F14();
  v444[5].n128_u64[1] = v448;
  *&v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
  v449 = swift_initStackObject();
  OUTLINED_FUNCTION_10_143(v449);
  OUTLINED_FUNCTION_39_56();
  *(v451 + 32) = v450 | 0x4C52556500000000;
  *(v451 + 40) = 0xE800000000000000;
  sub_1E41FEB14();
  OUTLINED_FUNCTION_16_127();
  v454 = 0xE000000000000000;
  if (!v123)
  {
    v454 = v452;
  }

  v449[3].n128_u64[0] = v453;
  v449[3].n128_u64[1] = v454;
  OUTLINED_FUNCTION_39_56();
  v449[4].n128_u64[0] = v455 | 0x7469546500000000;
  v449[4].n128_u64[1] = 0xEA0000000000656CLL;
  sub_1E41FEB24();
  OUTLINED_FUNCTION_16_127();
  if (v123)
  {
    v458 = 0xE000000000000000;
  }

  else
  {
    v458 = v456;
  }

  v449[5].n128_u64[0] = v457;
  v449[5].n128_u64[1] = v458;
  OUTLINED_FUNCTION_39_56();
  v449[6].n128_u64[0] = v459 | 0x6275536500000000;
  v449[6].n128_u64[1] = 0xED0000656C746974;
  sub_1E41FEB34();
  OUTLINED_FUNCTION_16_127();
  if (v123)
  {
    v462 = 0xE000000000000000;
  }

  else
  {
    v462 = v460;
  }

  v449[7].n128_u64[0] = v461;
  v449[7].n128_u64[1] = v462;
  OUTLINED_FUNCTION_39_56();
  v449[8].n128_u64[0] = v463 | 0x616D496500000000;
  v449[8].n128_u64[1] = 0xED00004C52556567;
  v449[9].n128_u64[0] = sub_1E3E9FF40();
  v449[9].n128_u64[1] = v464;
  v465 = sub_1E4205CB4();
  v444[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
  v444[6].n128_u64[0] = v465;
  v466 = sub_1E4205CB4();
  OUTLINED_FUNCTION_38_54(v466);
  v435[6] = sub_1E4205CB4();
  v467 = sub_1E4205CB4();
  v414[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30200, &qword_1E42B0D20);
  v414[6].n128_u64[0] = v467;
  ViewModelKeys.rawValue.getter(20);
  v414[8].n128_u64[0] = v468;
  v414[8].n128_u64[1] = v469;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F758, &qword_1E42D9E20);
  v470 = swift_initStackObject();
  OUTLINED_FUNCTION_6_183(v470);
  sub_1E3C7ED20(1);
  v435[4] = v471;
  v435[5] = v472;
  v473 = swift_allocObject();
  OUTLINED_FUNCTION_1_243(v473);
  OUTLINED_FUNCTION_39_56();
  *(v475 + 32) = v474 | 0x4C52556500000000;
  *(v475 + 40) = 0xE800000000000000;
  sub_1E41FEB14();
  OUTLINED_FUNCTION_16_127();
  if (v123)
  {
    v478 = 0xE000000000000000;
  }

  else
  {
    v478 = v476;
  }

  v434[6] = v477;
  v434[7] = v478;
  OUTLINED_FUNCTION_39_56();
  v434[8] = v479 | 0x7469546500000000;
  v434[9] = 0xEA0000000000656CLL;
  sub_1E41FEB24();
  OUTLINED_FUNCTION_16_127();
  if (v123)
  {
    v482 = 0xE000000000000000;
  }

  else
  {
    v482 = v480;
  }

  v434[10] = v481;
  v434[11] = v482;
  OUTLINED_FUNCTION_39_56();
  v434[12] = v483 | 0x6275536500000000;
  v434[13] = 0xED0000656C746974;
  sub_1E41FEB34();
  OUTLINED_FUNCTION_16_127();
  if (v123)
  {
    v486 = 0xE000000000000000;
  }

  else
  {
    v486 = v484;
  }

  v434[14] = v485;
  v434[15] = v486;
  OUTLINED_FUNCTION_39_56();
  v434[16] = v487 | 0x616D496500000000;
  v434[17] = 0xED00004C52556567;
  v434[18] = sub_1E3E9FF40();
  v434[19] = v488;
  v435[6] = sub_1E4205CB4();
  v489 = sub_1E4205CB4();
  v414[10].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F768, &unk_1E42B0D10);
  v414[9].n128_u64[0] = v489;
  v490 = sub_1E4205CB4();
  v491 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0, &qword_1E42AB350);
  v492 = OUTLINED_FUNCTION_22_9(v491);
  OUTLINED_FUNCTION_25_85(v492);
  v493 = v507;
  v494[4] = v504;
  v494[5] = v493;
  v494[6] = v490;
  v495 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  v496 = n128_u64;
  n128_u64[15] = v495;
  v496[12] = v492;
  v497 = OUTLINED_FUNCTION_43_58();
  v498 = v514;
  v499 = v508;
  v508[22].n128_u64[1] = v514;
  v499[21].n128_u64[0] = v497;
  v500 = OUTLINED_FUNCTION_43_58();
  v501 = v509;
  v509[4].n128_u64[1] = v498;
  v501[3].n128_u64[0] = v500;
  OUTLINED_FUNCTION_43_58();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E9F5B4()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = sub_1E3BA363C(1);
  *(inited + 40) = v1;
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1E4298AD0;
  *(v2 + 32) = sub_1E4205F14();
  *(v2 + 40) = v3;
  v4 = MEMORY[0x1E69E6158];
  *(v2 + 72) = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_75_23();
  *(v2 + 48) = v5;
  *(v2 + 56) = 0xED0000666C656853;
  *(v2 + 80) = sub_1E4205F14();
  *(v2 + 88) = v6;
  *(v2 + 120) = v4;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0xE000000000000000;
  *(v2 + 128) = sub_1E4205F14();
  *(v2 + 136) = v7;
  *(v2 + 168) = v4;
  *(v2 + 144) = 0x666C656853;
  *(v2 + 152) = 0xE500000000000000;
  *(v2 + 176) = sub_1E4205F14();
  *(v2 + 184) = v8;
  v9 = MEMORY[0x1E69E6530];
  *(v2 + 216) = MEMORY[0x1E69E6530];
  *(v2 + 192) = 0;
  v10 = sub_1E4205CB4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  *(inited + 72) = v11;
  *(inited + 48) = v10;
  *(inited + 80) = sub_1E3BA363C(2);
  *(inited + 88) = v12;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1E4298AD0;
  *(v13 + 32) = sub_1E4205F14();
  *(v13 + 40) = v14;
  *(v13 + 72) = v4;
  OUTLINED_FUNCTION_75_23();
  *(v13 + 48) = v15;
  *(v13 + 56) = 0xED0000666C656853;
  *(v13 + 80) = sub_1E4205F14();
  *(v13 + 88) = v16;
  *(v13 + 120) = v4;
  *(v13 + 96) = 0x666C656853;
  *(v13 + 104) = 0xE500000000000000;
  *(v13 + 128) = sub_1E4205F14();
  *(v13 + 136) = v17;
  *(v13 + 168) = v9;
  *(v13 + 144) = 0;
  *(v13 + 176) = sub_1E4205F14();
  *(v13 + 184) = v18;
  *(v13 + 216) = v4;
  *(v13 + 192) = 0;
  *(v13 + 200) = 0xE000000000000000;
  v19 = sub_1E4205CB4();
  *(inited + 120) = v11;
  *(inited + 96) = v19;
  OUTLINED_FUNCTION_32_0();
  sub_1E4205CB4();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E9F810(uint64_t a1)
{
  v1 = sub_1E3A24FDC(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  if (v1)
  {
    v2 = 0x7261646E6F636573;
  }

  else
  {
    v2 = 0x547972616D697270;
  }

  if (v1)
  {
    v3 = 0xED00007478655479;
  }

  else
  {
    v3 = 0xEB00000000747865;
  }

  if (v1)
  {
    v4 = 20.0;
  }

  else
  {
    v4 = 18.0;
  }

  if (v1)
  {
    v5 = 21;
  }

  else
  {
    v5 = 15;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4298AD0;
  *(inited + 32) = sub_1E3D46F94(48);
  *(inited + 40) = v7;
  sub_1E376AD6C(v5);
  v8 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  *(inited + 80) = sub_1E3D46F94(54);
  *(inited + 88) = v11;
  v12 = sub_1E376B308();
  *(inited + 120) = v8;
  *(inited + 96) = v12;
  *(inited + 104) = v13;
  *(inited + 128) = sub_1E3D46F94(21);
  *(inited + 136) = v14;
  *(inited + 168) = v8;
  *(inited + 144) = v2;
  *(inited + 152) = v3;
  *(inited + 176) = sub_1E3D46F94(0);
  *(inited + 184) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B218, &qword_1E42D9E28);
  v16 = swift_initStackObject();
  v17 = OUTLINED_FUNCTION_130(v16, xmmword_1E4299720);
  v16[2].n128_u64[0] = sub_1E4124534(v17);
  v16[2].n128_u64[1] = v18;
  v16[3].n128_f64[0] = v4;
  v16[3].n128_u64[1] = sub_1E4124534(2);
  v16[4].n128_u64[0] = v19;
  v16[4].n128_u64[1] = 0x4024000000000000;
  v20 = sub_1E4205CB4();
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B220, &qword_1E42D9E30);
  *(inited + 192) = v20;
  OUTLINED_FUNCTION_32_0();
  return sub_1E4205CB4();
}

void sub_1E3E9F9F8()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FDEC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B228, &qword_1E42D9E38);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_19_2();
  sub_1E41FEBA4();
  v4 = sub_1E41FEAB4();
  if (__swift_getEnumTagSinglePayload(v0, 1, v4) == 1)
  {
    sub_1E325F6F0(v0, &qword_1ECF3B228, &qword_1E42D9E38);
    v5 = MEMORY[0x1E69E7CC8];
  }

  else
  {
    v6 = sub_1E41FEAA4();
    v8 = v7;
    (*(*(v4 - 8) + 8))(v0, v4);
    sub_1E384EE08(39);
    v54 = v9;
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    inited = swift_initStackObject();
    v13 = OUTLINED_FUNCTION_50_43(inited, xmmword_1E4297BD0);
    inited[2].n128_u64[0] = sub_1E3C7CCAC(v13);
    inited[2].n128_u64[1] = v14;
    inited[4].n128_u64[1] = MEMORY[0x1E69E6370];
    inited[3].n128_u8[0] = 0;
    inited[5].n128_u64[0] = sub_1E3C7CCAC(0);
    inited[5].n128_u64[1] = v15;
    v16 = MEMORY[0x1E69E6158];
    inited[7].n128_u64[1] = MEMORY[0x1E69E6158];
    inited[6].n128_u64[0] = v6;
    inited[6].n128_u64[1] = v8;
    inited[8].n128_u64[0] = sub_1E3C7CCAC(4);
    inited[8].n128_u64[1] = v17;
    inited[10].n128_u64[1] = v16;
    inited[9].n128_u64[0] = 6778480;
    inited[9].n128_u64[1] = 0xE300000000000000;
    sub_1E4205CB4();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    OUTLINED_FUNCTION_79_23(v18);
    v19 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E32A87C0(v55, v54, v11, isUniquelyReferenced_nonNull_native);

    v5 = v19;
  }

  v21 = sub_1E41FEBB4();
  v23 = v22;
  if (v22)
  {
    v56 = v21;
    v57 = v22;
    v24 = sub_1E41FDE64();
    sub_1E32822E0(v24, v25, v26);
    v27 = sub_1E4207184();
    v28 = OUTLINED_FUNCTION_35_4();
    v29(v28);

    v30 = *(v27 + 16);
    if (v30)
    {
      v31 = *(v27 + 40);
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v27 = 0;
  }

  v56 = v30;
  LOBYTE(v57) = v23 == 0;
  *&v55[0] = 1;
  v32 = 0;
  if ((sub_1E414A658(&v56, v55, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]) & 1) != 0 && v27)
  {
    sub_1E38EA748(v27);
    v32 = v33;
  }

  v34 = [objc_opt_self() sharedInstance];
  if (!v34)
  {
    __break(1u);
    return;
  }

  v35 = v34;

  if (!v31)
  {
    v36 = 0;
    if (v32)
    {
      goto LABEL_15;
    }

LABEL_17:
    v37 = 0;
    goto LABEL_18;
  }

  v36 = sub_1E4205ED4();

  if (!v32)
  {
    goto LABEL_17;
  }

LABEL_15:
  v37 = sub_1E4205ED4();

LABEL_18:
  v38 = [v35 formatInitialsForFirstName:v36 lastName:v37];

  if (v38)
  {
    v39 = sub_1E4205F14();
    v41 = v40;

    sub_1E384EE08(17);
    v43 = v42;
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
    v46 = swift_initStackObject();
    OUTLINED_FUNCTION_45_57(v46, xmmword_1E4297BE0);
    v46[2].n128_u64[0] = v47;
    v46[2].n128_u64[1] = v48;
    v46[3].n128_u64[0] = v39;
    v46[3].n128_u64[1] = v41;
    sub_1E4205CB4();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
    OUTLINED_FUNCTION_79_23(v49);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E32A87C0(v55, v43, v45, v50);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1E4297BE0;
  ViewModelKeys.rawValue.getter(13);
  *(v51 + 32) = v52;
  *(v51 + 40) = v53;
  *(v51 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  *(v51 + 48) = v5;
  sub_1E4205CB4();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E9FF40()
{
  v0 = sub_1E41FEB74();
  if (v1)
  {
    v25 = v0;
    v26 = v1;
    v23 = 8222587;
    v24 = 0xE300000000000000;
    v21 = 3160115;
    v22 = 0xE300000000000000;
    v3 = sub_1E32822E0(v0, v1, v2);
    v4 = MEMORY[0x1E69E6158];
    v11 = OUTLINED_FUNCTION_10_59(&v23, &v21, v5, v6, v7, v8, v9, v10, MEMORY[0x1E69E6158], v3);
    v13 = v12;

    v25 = v11;
    v26 = v13;
    v23 = 8218747;
    v24 = 0xE300000000000000;
    v21 = 3160115;
    v22 = 0xE300000000000000;
    OUTLINED_FUNCTION_10_59(&v23, &v21, v14, v15, v16, v17, v18, v19, v4, v3);
  }

  return OUTLINED_FUNCTION_32_0();
}

void sub_1E3EA002C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v93 = v9 - v8;
  v10 = sub_1E42046B4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v91 = v14 - v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v92 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v95 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  v21 = OUTLINED_FUNCTION_17_2(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v90 = v22 - v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_6();
  v94 = v25;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v86 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B230, &qword_1E42DCE70);
  v30 = OUTLINED_FUNCTION_17_2(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_4_6();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v86 - v35;
  v37 = v1[49];
  if ((sub_1E373F6E0(v37, v3[49], v38, v39, v40, v41) & 1) == 0 || (sub_1E373F6E0(v37, 205, v42, v43, v44, v45) & 1) == 0 && (sub_1E373F6E0(v37, 204, v46, v47, v48, v49) & 1) == 0)
  {
    goto LABEL_26;
  }

  v89 = v12;
  v87 = v6;
  type metadata accessor for PlaybackSongViewModel(0);
  OUTLINED_FUNCTION_32_0();
  v50 = swift_dynamicCastClass();
  if (v50)
  {
    v51 = v50;
    v50 = swift_dynamicCastClass();
    if (v50)
    {
      v52 = v50;
      v53 = *v51;
      v88 = v36;
      v86 = v4;
      v54 = *(v53 + 840);

      v56 = v54(v55);
      v4 = v86;
      v36 = v88;
      (*(*v52 + 848))(v56 & 1);
      (*(*v52 + 904))(v51);
    }
  }

  v57 = (*(*v1 + 648))(v50);
  v58 = (*(*v3 + 656))(v57);
  v59 = (*(*v1 + 624))(v58);
  v60 = (*(*v3 + 632))(v59);
  v61 = *(*v3 + 576);
  v88 = *v3 + 576;
  if (v61(v60))
  {
    OUTLINED_FUNCTION_26_0();
    (*(v62 + 224))();

    v63 = 1;
    if (!__swift_getEnumTagSinglePayload(v28, 1, v4))
    {
      sub_1E42046D4();
      v63 = 0;
    }

    sub_1E325F6F0(v28, &qword_1ECF2B7B0, &qword_1E429EC30);
  }

  else
  {
    v63 = 1;
  }

  v64 = __swift_storeEnumTagSinglePayload(v36, v63, 1, v10);
  v65 = (*(*v1 + 576))(v64);
  (*(*v3 + 584))(v65);
  sub_1E379D7E4(v36, v33, &qword_1ECF3B230, &qword_1E42DCE70);
  OUTLINED_FUNCTION_11_150(v33);
  if (v66)
  {
    v67 = &qword_1ECF3B230;
    v68 = &qword_1E42DCE70;
    v69 = v33;
  }

  else
  {
    v70 = v89;
    v71 = v95;
    v72 = (*(v89 + 32))(v95, v33, v10);
    if (v61(v72))
    {
      OUTLINED_FUNCTION_26_0();
      v74 = v94;
      (*(v73 + 224))();

      if (__swift_getEnumTagSinglePayload(v74, 1, v4) != 1)
      {
        (*(v87 + 32))(v93, v74, v4);
        sub_1E42046D4();
        sub_1E4204694();
        v78 = v95;
        sub_1E42046A4();
        sub_1E4204634();
        sub_1E4204644();
        sub_1E4204674();
        sub_1E4204684();
        v79 = v89;
        (*(v89 + 16))(v91, v78, v10);
        v80 = sub_1E42046E4();
        if (v61(v80))
        {
          v81 = v87;
          v82 = v90;
          v83 = v93;
          (*(v87 + 16))(v90, v93, v4);
          __swift_storeEnumTagSinglePayload(v82, 0, 1, v4);
          OUTLINED_FUNCTION_8();
          (*(v84 + 232))(v82);

          v85 = *(v79 + 8);
          v85(v92, v10);
          (*(v81 + 8))(v83, v4);
        }

        else
        {
          v85 = *(v79 + 8);
          v85(v92, v10);
          (*(v87 + 8))(v93, v4);
        }

        v75 = (v85)(v95, v10);
        goto LABEL_21;
      }

      (*(v89 + 8))(v95, v10);
    }

    else
    {
      (*(v70 + 8))(v71, v10);
      v74 = v94;
      __swift_storeEnumTagSinglePayload(v94, 1, 1, v4);
    }

    v67 = &qword_1ECF2B7B0;
    v68 = &qword_1E429EC30;
    v69 = v74;
  }

  v75 = sub_1E325F6F0(v69, v67, v68);
LABEL_21:
  v76 = (*(*v3 + 392))(v75);
  if (v76)
  {
    v77 = v76;
    if (!(*(*v1 + 392))())
    {
      sub_1E325F6F0(v36, &qword_1ECF3B230, &qword_1E42DCE70);

      goto LABEL_26;
    }

    (*(*v77 + 1648))();
  }

  sub_1E325F6F0(v36, &qword_1ECF3B230, &qword_1E42DCE70);
LABEL_26:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3EA0974(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1E3EA0A4C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void *sub_1E3EA0A4C(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > v5[3] >> 1)
  {
    if (v5[2] <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = v5[2];
    }

    result = sub_1E39239C8(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1E3EA0AD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_57_31(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E4205CB4();
}

_OWORD *OUTLINED_FUNCTION_79_23(uint64_t a1)
{
  *(v3 - 176) = a1;
  *(v3 - 200) = v2;

  return sub_1E329504C((v3 - 200), (v1 + 200));
}

void OUTLINED_FUNCTION_80_17(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 48) = v1;

  ViewModelKeys.rawValue.getter(15);
}

_OWORD *OUTLINED_FUNCTION_82_18(unint64_t a1)
{
  STACK[0x4B0] = v1;
  STACK[0x498] = a1;

  return sub_1E329504C(&STACK[0x498], &STACK[0x3B8]);
}

uint64_t OUTLINED_FUNCTION_83_17()
{

  return sub_1E4207384();
}

uint64_t OUTLINED_FUNCTION_86_15(uint64_t a1, uint64_t a2)
{

  return sub_1E4205CB4();
}

unint64_t sub_1E3EA0C00()
{
  v0 = sub_1E4207784();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3EA0C4C(char a1)
{
  result = 0x6C50676E69646461;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000024;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      return result;
    case 5:
      result = 0x676E69766F6D6572;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    default:
      result = OUTLINED_FUNCTION_43_3(24);
      break;
  }

  return result;
}

uint64_t sub_1E3EA0DA0(unsigned __int8 a1, char a2)
{
  v2 = 0x7865646E69;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7865646E69;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v5 = 0x73756F6976657270;
      v3 = 0xED00007865646E49;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x646574616D696E61;
      break;
    case 4:
      v5 = 0x6974656C706D6F63;
      v3 = 0xEA00000000006E6FLL;
      break;
    default:
      v5 = 0xD000000000000014;
      v3 = 0x80000001E42642B0;
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      break;
    case 2:
      v2 = 0x73756F6976657270;
      v6 = 0xED00007865646E49;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x646574616D696E61;
      break;
    case 4:
      v2 = 0x6974656C706D6F63;
      v6 = 0xEA00000000006E6FLL;
      break;
    default:
      v2 = 0xD000000000000014;
      v6 = 0x80000001E42642B0;
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3EA0F38(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  if (v5 == a3(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E3EA0FF8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1E4207B44();
  v4 = a2(a1);
  OUTLINED_FUNCTION_18_0(v4, v5, v6);

  return sub_1E4207BA4();
}

uint64_t sub_1E3EA1080(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3EA1160(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  sub_1E4206014();
}

uint64_t sub_1E3EA11E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1E4207B44();
  v5 = a3(a2);
  OUTLINED_FUNCTION_18_0(v5, v6, v7);

  return sub_1E4207BA4();
}

unint64_t sub_1E3EA123C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3EA0C00();
  *v1 = result;
  return result;
}

unint64_t sub_1E3EA1264@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E3EA0C4C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1E3EA1298@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3EA0C00();
  *a1 = result;
  return result;
}

unint64_t sub_1E3EA12C0()
{
  v0 = sub_1E4207784();

  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3EA130C(char a1)
{
  result = 0x6579616C50646461;
  switch(a1)
  {
    case 1:
      result = 0x6C5065766F6D6572;
      break;
    case 2:
      result = 0x506563616C706572;
      break;
    case 3:
      result = 0x6C75467265746E65;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x6C6C754674697865;
      break;
    case 6:
      result = OUTLINED_FUNCTION_43_3(16);
      break;
    case 7:
      v3 = 2003789939;
      goto LABEL_16;
    case 8:
      v3 = 1701079400;
LABEL_16:
      result = v3 | 0x6174654400000000;
      break;
    case 9:
      result = 0x73657250756E656DLL;
      break;
    case 10:
      result = 0x6553726579616C70;
      break;
    case 11:
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E3EA15A8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3EA12C0();
  *v1 = result;
  return result;
}

unint64_t sub_1E3EA15D0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E3EA130C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1E3EA1604@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3EA12C0();
  *a1 = result;
  return result;
}

unint64_t sub_1E3EA162C()
{
  v0 = sub_1E4207784();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3EA1678(char a1)
{
  result = 0x7865646E69;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x73756F6976657270;
      break;
    case 3:
      result = 0x646574616D696E61;
      break;
    case 4:
      result = 0x6974656C706D6F63;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

unint64_t sub_1E3EA172C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3B238;
  if (!qword_1ECF3B238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B238);
  }

  return result;
}

unint64_t sub_1E3EA17F8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3EA162C();
  *v1 = result;
  return result;
}

unint64_t sub_1E3EA1820@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E3EA1678(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1E3EA184C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3EA162C();
  *a1 = result;
  return result;
}

unint64_t sub_1E3EA1874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3879330(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

_BYTE *sub_1E3EA18A4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3EA196C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 15);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 15);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 15);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E3EA19F0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 14);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3EA1AB8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3EA1B80()
{
  type metadata accessor for Route(0);
  v0 = j__OUTLINED_FUNCTION_18();
  return sub_1E3F4C85C(0xD000000000000017, 0x80000001E42DA150, v0 & 1);
}

uint64_t sub_1E3EA1BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Router(0);
  OUTLINED_FUNCTION_0_274();
  sub_1E3EA22A0(v4, v5, &unk_1E42EB398);
  result = sub_1E4201754();
  *a2 = a1;
  *(a2 + 8) = sub_1E3EA1B80;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = result;
  *(a2 + 40) = v7;
  return result;
}

uint64_t sub_1E3EA1C54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B240, &qword_1E42DA090);
  sub_1E3EA1E70();
  return sub_1E42013C4();
}

uint64_t sub_1E3EA1CC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *v3;
  v5 = *(*v3 + OBJC_IVAR____TtC8VideosUI28LibDescriptiveAlertViewModel_libViewLayout);
  swift_beginAccess();
  v6 = *(v5 + 112);

  sub_1E3929ED0(v4, v6, v17);
  v7 = v3[4];
  if (v7)
  {
    type metadata accessor for Route(0);
    sub_1E3EA22A0(qword_1EE23C6B8, type metadata accessor for Route, &unk_1E42DFC80);

    v8 = v7;
    v9 = sub_1E4200BC4();
    type metadata accessor for NavigationBarObservableModel(0);
    sub_1E39EE6D8();
    result = sub_1E379D97C(v8, v9);
    v11 = v17[1];
    *a1 = v17[0];
    *(a1 + 16) = v11;
    *(a1 + 32) = v17[2];
    *(a1 + 48) = v18;
    *(a1 + 56) = v4;
    *(a1 + 64) = result;
    *(a1 + 72) = v12;
    *(a1 + 80) = v13;
    *(a1 + 88) = v14;
  }

  else
  {
    type metadata accessor for Router(0);
    OUTLINED_FUNCTION_0_274();
    sub_1E3EA22A0(v15, v16, &unk_1E42EB398);

    result = sub_1E4201744();
    __break(1u);
  }

  return result;
}

unint64_t sub_1E3EA1E70()
{
  result = qword_1ECF3B248;
  if (!qword_1ECF3B248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B240, &qword_1E42DA090);
    v3 = sub_1E3EA1EFC();
    sub_1E389B90C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B248);
  }

  return result;
}

unint64_t sub_1E3EA1EFC()
{
  result = qword_1ECF3B250;
  if (!qword_1ECF3B250)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B258, &qword_1E42DA098);
    v6 = sub_1E392AC84(v1, v2, v3);
    sub_1E3EA1F88(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B250);
  }

  return result;
}

unint64_t sub_1E3EA1F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE290D10[0];
  if (!qword_1EE290D10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE290D10);
  }

  return result;
}

void sub_1E3EA2060(uint64_t a1, uint64_t a2)
{
  v10 = type metadata accessor for NavigationBarItems(0);
  MEMORY[0x1EEE9AC00](v10);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B270, &qword_1E42DA228);
  MEMORY[0x1EEE9AC00](v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B278, &qword_1E42DA230);
  OUTLINED_FUNCTION_1_11();
  v5 = sub_1E32752B0(v3, &qword_1ECF3B278, &qword_1E42DA230, v4);
  sub_1E32822E0(v5, v6, v7);
  sub_1E4203034();
  sub_1E375105C();
  OUTLINED_FUNCTION_2_207();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_244();
  sub_1E3EA22A0(v8, v9, &unk_1E42B1D60);
  sub_1E39EF294();
}

uint64_t sub_1E3EA22A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1E3EA22E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v11, v4);
  sub_1E3EA36F4(v2, v24);
  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();
  sub_1E3EA372C(v2);
  if (os_log_type_enabled(v12, v13))
  {
    v23 = a1;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24[0] = v15;
    *v14 = 136315138;
    if (*(*v2 + 24))
    {
      v16 = *(*v2 + 16);
      v17 = *(*v2 + 24);
    }

    else
    {
      v17 = 0xE300000000000000;
      v16 = 7104878;
    }

    v18 = sub_1E3270FC8(v16, v17, v24);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1E323F000, v12, v13, "ShowcaseOverlay::makeUIView viewModel: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v6 + 8))(v10, v4);
    a1 = v23;
  }

  else
  {

    (*(v6 + 8))(v10, v4);
  }

  v19 = sub_1E3EA2594(0, a1);
  if (v19)
  {
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B288, &qword_1E42DA238);
    sub_1E42024A4();
    v21 = v24[0];
    (*((*MEMORY[0x1E69E7D40] & *v24[0]) + 0xD8))(v20, 1, v2[4], v2[5]);
  }

  else
  {
    _s19FlowcaseOverlayViewCMa();
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  return v20;
}

void *sub_1E3EA2594(void *a1, uint64_t a2)
{
  v39[1] = a2;
  v40 = a1;
  v3 = sub_1E4201AB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v41 = sub_1E4200B44();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v39 - v17;
  v19 = *v2;
  v20 = (*(**v2 + 488))(v16);
  if (!v20)
  {
    v21 = type metadata accessor for ViewModel();
    sub_1E37414E0(v21, v22, v23);
    v20 = sub_1E4205CB4();
  }

  v24 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B288, &qword_1E42DA238);
  sub_1E42024B4();
  sub_1E4201784();
  (*(v5 + 8))(v9, v3);
  v25 = v41;
  (*(v11 + 104))(v14, *MEMORY[0x1E697DBB8], v41);
  sub_1E4200B34();
  v26 = *(v11 + 8);
  v27 = v26(v14, v25);
  if ((*(*v19 + 392))(v27))
  {
    type metadata accessor for FlowcaseCellLayout();
    v28 = swift_dynamicCastClass();
    if (!v28)
    {
    }
  }

  else
  {
    v28 = 0;
  }

  _s19FlowcaseOverlayViewCMa();
  sub_1E3A93FDC(v24, v40, v28, v2[1], v2[2]);
  v30 = v29;

  if (v30)
  {
    v31 = *(v2 + 3);
    v32 = *((*MEMORY[0x1E69E7D40] & *v30) + 0x198);
    v33 = v31;
    v34 = v30;
    v32(v31);

    LOBYTE(v42) = 1;
    v35 = *(*v19 + 776);
    v36 = v34;
    v35(v43, &v42, &unk_1F5D5DAC8, &off_1F5D5C998);
    if (v43[3])
    {
      if (swift_dynamicCast())
      {
        v37 = sub_1E4205ED4();

LABEL_14:
        [v36 setAccessibilityLabel_];

        v26(v18, v41);
        return v30;
      }
    }

    else
    {
      sub_1E329505C(v43);
    }

    v37 = 0;
    goto LABEL_14;
  }

  v26(v18, v41);

  return v30;
}

void sub_1E3EA29FC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1E324FBDC();
  (*(v8 + 16))(v12, v13, v6);
  sub_1E3EA36F4(v3, v34);
  v14 = a1;
  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();
  sub_1E3EA372C(v3);

  if (os_log_type_enabled(v15, v16))
  {
    v33 = a2;
    v17 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34[0] = v32;
    *v17 = 136315394;
    if (*(*v3 + 24))
    {
      v18 = *(*v3 + 16);
      v19 = *(*v3 + 24);
    }

    else
    {
      v19 = 0xE300000000000000;
      v18 = 7104878;
    }

    v20 = sub_1E3270FC8(v18, v19, v34);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v21 = sub_1E41E1364(v14);
    v23 = sub_1E3270FC8(v21, v22, v34);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_1E323F000, v15, v16, "ShowcaseOverlay::updateUIView viewModel: %s, view: %s", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v8 + 8))(v12, v6);
    a2 = v33;
  }

  else
  {

    (*(v8 + 8))(v12, v6);
  }

  v24 = sub_1E3EA2594(v14, a2);
  v25 = v24;
  v26 = MEMORY[0x1E69E7D40];
  if (v24)
  {
    v27 = v3[3];
    v28 = *((*MEMORY[0x1E69E7D40] & *v24) + 0x198);
    v29 = v27;
    v30 = v25;
    v28(v27);
  }

  [v14 sizeToFit];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B288, &qword_1E42DA238);
  sub_1E42024A4();
  v31 = v34[0];
  (*((*v26 & *v34[0]) + 0xD8))(v14, 0, v3[4], v3[5]);
}

id sub_1E3EA2D30()
{
  objc_allocWithZone(type metadata accessor for ShowcaseOverlay.Coordinator());

  sub_1E3EA36F4(v0, &v2);
  return sub_1E3EA31A0();
}

id sub_1E3EA2D9C()
{
  OUTLINED_FUNCTION_5_3();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_3_5();
  return sub_1E3EA31A0();
}

id sub_1E3EA2E30@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_2_208();
  result = sub_1E3EA2D30();
  *a1 = result;
  return result;
}

uint64_t sub_1E3EA2E64()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3EA39CC(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v3);
}

uint64_t sub_1E3EA2EB8()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3EA39CC(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v3);
}

void sub_1E3EA2F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3EA39CC(a1, a2, a3);
  sub_1E4201F04();
  __break(1u);
}

double sub_1E3EA2F34@<D0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV8VideosUI15ShowcaseOverlay11Coordinator_parentView);
  swift_beginAccess();
  v4 = v3[1];
  v10 = *v3;
  v11 = v4;
  v5 = v3[3];
  v12 = v3[2];
  v13 = v5;
  sub_1E3EA36F4(&v10, v9);
  v6 = v11;
  *a1 = v10;
  a1[1] = v6;
  result = *&v12;
  v8 = v13;
  a1[2] = v12;
  a1[3] = v8;
  return result;
}

double sub_1E3EA2FBC(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtCV8VideosUI15ShowcaseOverlay11Coordinator_parentView;
  OUTLINED_FUNCTION_3_0(v3, v8);
  v4 = *(v3 + 24);
  v5 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v5;
  v6 = a1[3];
  *(v3 + 32) = a1[2];
  *(v3 + 48) = v6;

  return result;
}

id sub_1E3EA31A0()
{
  OUTLINED_FUNCTION_5_3();
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v4 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
  }

  *&v1[OBJC_IVAR____TtCV8VideosUI15ShowcaseOverlay11Coordinator_imageAndPlaybackObservers] = v4;
  v5 = &v1[OBJC_IVAR____TtCV8VideosUI15ShowcaseOverlay11Coordinator_parentView];
  v6 = v3[1];
  *v5 = *v3;
  *(v5 + 1) = v6;
  v7 = v3[3];
  *(v5 + 2) = v3[2];
  *(v5 + 3) = v7;
  *&v1[OBJC_IVAR____TtCV8VideosUI15ShowcaseOverlay11Coordinator_backgroundMediaImageModel] = v2;
  *&v1[OBJC_IVAR____TtCV8VideosUI15ShowcaseOverlay11Coordinator_backgroundPlaybackModel] = v0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ShowcaseOverlay.Coordinator();
  return objc_msgSendSuper2(&v9, sel_init);
}

double sub_1E3EA3250(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x88))();

  v10 = MEMORY[0x1E69E7CD0];
  if (v9 == a3)
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v11 = OBJC_IVAR____TtCV8VideosUI15ShowcaseOverlay11Coordinator_imageAndPlaybackObservers;
    OUTLINED_FUNCTION_3_0(v5 + OBJC_IVAR____TtCV8VideosUI15ShowcaseOverlay11Coordinator_imageAndPlaybackObservers, v28);
    *(v5 + v11) = v10;

    OUTLINED_FUNCTION_16_1();
    v13 = *(v12 + 144);

    v13(v14);
  }

  v15 = sub_1E3F4628C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E160, &qword_1E42DF980);
  sub_1E3EA3780();
  v17 = sub_1E3B501F8(v15, v16);

  v27[0] = v17;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B2B0, &qword_1E42DA240);
  sub_1E3EA3910(&qword_1EE28A1B8, &qword_1ECF3B2B0, &qword_1E42DA240);
  sub_1E4200844();

  swift_beginAccess();
  sub_1E42004C4();
  swift_endAccess();

LABEL_5:
  OUTLINED_FUNCTION_16_1();
  v19 = (*(v18 + 160))();

  if (v19 == a4)
  {
    if ((a2 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v22 = OBJC_IVAR____TtCV8VideosUI15ShowcaseOverlay11Coordinator_imageAndPlaybackObservers;
    OUTLINED_FUNCTION_3_0(v5 + OBJC_IVAR____TtCV8VideosUI15ShowcaseOverlay11Coordinator_imageAndPlaybackObservers, v27);
    *(v5 + v22) = MEMORY[0x1E69E7CD0];

    OUTLINED_FUNCTION_16_1();
    v24 = *(v23 + 168);

    v20 = v24(v25);
  }

  v26 = (*(*a4 + 384))(v20);
  sub_1E3B501F8(v26, MEMORY[0x1E69E6370]);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1B0, &unk_1E42DF9E0);
  sub_1E3EA3910(&qword_1EE28A1D0, &qword_1ECF2E1B0, &unk_1E42DF9E0);
  sub_1E4200844();

  swift_beginAccess();
  sub_1E42004C4();
  swift_endAccess();

  return result;
}

id sub_1E3EA361C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShowcaseOverlay.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E3EA3780()
{
  result = qword_1EE23ADE8;
  if (!qword_1EE23ADE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E160, &qword_1E42DF980);
    sub_1E3EA3A20(&qword_1EE23ADE0, sub_1E37E96A4, MEMORY[0x1E69E81C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23ADE8);
  }

  return result;
}

void sub_1E3EA3834(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong sampleWithImage_];
  }
}

void sub_1E3EA3888(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x4D8))(v3, 1);
  }
}

uint64_t sub_1E3EA3910(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1E3EA3968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3B2B8;
  if (!qword_1ECF3B2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B2B8);
  }

  return result;
}

unint64_t sub_1E3EA39CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3B2C0;
  if (!qword_1ECF3B2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B2C0);
  }

  return result;
}

uint64_t sub_1E3EA3A20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3EA3AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3277E60(0xD000000000000010, 0x80000001E4280C10, a1, &v41);
  if (v42)
  {
    if (OUTLINED_FUNCTION_0_275(v4, v5, v6, MEMORY[0x1E69E7360], v7, v8, v9, v10, v38, v40, v41))
    {
      v11 = v38;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E329505C(&v41);
  }

  v11 = 0;
LABEL_6:
  sub_1E3277E60(0x6552646C756F6873, 0xED00006873657266, a1, &v41);
  if (v42)
  {
    if (OUTLINED_FUNCTION_0_275(v12, v13, v14, MEMORY[0x1E69E6370], v15, v16, v17, v18, v38, v40, v41))
    {
      v19 = v38;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1E329505C(&v41);
  }

  v19 = 1;
LABEL_11:
  sub_1E3277E60(0xD000000000000011, 0x80000001E4287510, a1, &v41);
  if (v42)
  {
    if (OUTLINED_FUNCTION_0_275(v20, v21, v22, MEMORY[0x1E69E6158], v23, v24, v25, v26, v38, v40, v41))
    {
      v27 = v38;
      v28 = v40;
      goto LABEL_16;
    }
  }

  else
  {
    sub_1E329505C(&v41);
  }

  v27 = 0;
  v28 = 0xE000000000000000;
LABEL_16:
  sub_1E3277E60(0xD000000000000016, 0x80000001E4287530, a1, &v41);

  if (v42)
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    result = OUTLINED_FUNCTION_0_275(v29, v30, v31, v29, v32, v33, v34, v35, v38, v40, v41);
    v37 = v39;
    if (!result)
    {
      v37 = 0;
    }
  }

  else
  {
    result = sub_1E329505C(&v41);
    v37 = 0;
  }

  *a2 = v11;
  *(a2 + 8) = v19;
  *(a2 + 16) = v27;
  *(a2 + 24) = v28;
  *(a2 + 32) = v37;
  return result;
}

uint64_t sub_1E3EA3C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v38 = MEMORY[0x1E69E7360];
  *&v36 = v6;
  OUTLINED_FUNCTION_27_46(a1, a2, a3, a4);
  v7 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v39 = v7;
  v9 = sub_1E32A87C0(v35, 0xD000000000000010, 0x80000001E4280C10, isUniquelyReferenced_nonNull_native);
  v10 = v39;
  v11 = *(v5 + 8);
  v38 = MEMORY[0x1E69E6370];
  LOBYTE(v36) = v11;
  OUTLINED_FUNCTION_27_46(v9, v12, v13, v14);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  *&v39 = v10;
  v16 = sub_1E32A87C0(v35, 0x6552646C756F6873, 0xED00006873657266, v15);
  v17 = v39;
  v39 = *(v5 + 1);
  v38 = MEMORY[0x1E69E6158];
  v36 = v39;
  OUTLINED_FUNCTION_27_46(v16, v18, v19, v20);
  sub_1E383A1D0(&v39, v34);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v34[0] = v17;
  sub_1E32A87C0(v35, 0xD000000000000011, 0x80000001E4287510, v21);
  v25 = v34[0];
  v26 = v5[4];
  v34[0] = v26;
  if (v26)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  }

  else
  {
    v27 = 0;
    *(&v36 + 1) = 0;
    v37 = 0;
  }

  *&v36 = v26;
  v38 = v27;
  if (v27)
  {
    OUTLINED_FUNCTION_27_46(v27, v22, v23, v24);
    sub_1E3EA4E74(v34, &v33);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v33 = v25;
    sub_1E32A87C0(v35, 0xD000000000000016, 0x80000001E4287530, v28);
    return v33;
  }

  else
  {
    sub_1E3EA4E74(v34, v35);
    sub_1E329505C(&v36);
    v29 = sub_1E327D33C(0xD000000000000016, 0x80000001E4287530);
    if (v30)
    {
      v31 = v29;
      swift_isUniquelyReferenced_nonNull_native();
      v33 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
      sub_1E4207644();

      sub_1E329504C((*(v25 + 56) + 32 * v31), v35);
      OUTLINED_FUNCTION_32_0();
      sub_1E4207664();
    }

    else
    {
      memset(v35, 0, sizeof(v35));
    }

    sub_1E329505C(v35);
  }

  return v25;
}

uint64_t sub_1E3EA3EF4()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_targetId);
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_targetId, v4);
  v2 = *v1;

  return v2;
}

uint64_t sub_1E3EA3F44(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_33_9(OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_targetId);
  OUTLINED_FUNCTION_3_0(v5, v6);
  *v2 = a1;
  v2[1] = a2;
}

void sub_1E3EA3FE4(uint64_t *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_33_9(OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_naturalLanguageSearchData);
  OUTLINED_FUNCTION_5_0(v3, v4);
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  sub_1E3DBFC00(v5, v6, v7, v8, v9);
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v9;
}

uint64_t sub_1E3EA405C(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_33_9(OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_naturalLanguageSearchData);
  OUTLINED_FUNCTION_3_0(v3, v4);
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v9;
  v1[4] = *(a1 + 32);
  return sub_1E3DBFA40(v5, v6, v7, v8);
}

void sub_1E3EA4144(void *a1)
{
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_appContext, v3);
  swift_unknownObjectWeakAssign();
}

void (*sub_1E3EA4198(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_appContext;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E38D12C8;
}

double sub_1E3EA425C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_document;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_document, v5);
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1E3EA42FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, _OWORD *a9)
{
  v15 = a2;
  v17 = swift_allocObject();
  sub_1E3EA43A4(a1, v15, a3, a4, a5, a6, a7, a8 & 1, a9);
  return v17;
}

uint64_t sub_1E3EA43A4(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, _OWORD *a9)
{
  v10 = v9;
  v66 = a8;
  v62 = a7;
  v65 = a6;
  v60 = a5;
  v61 = a4;
  v63 = a9;
  v14 = sub_1E41FE624();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v10 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_targetId);
  *v18 = 0;
  v18[1] = 0;
  v64 = v18;
  v19 = v10 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_naturalLanguageSearchData;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  v20 = OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_appContext;
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_document;
  *(v10 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_document) = 0;
  sub_1E41FE614();
  (*(v15 + 32))(v10 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_requestID, v17, v14);
  OUTLINED_FUNCTION_5_0(a1 + 48, v76);
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_3_0(v10 + v20, v75);
  swift_unknownObjectWeakAssign();

  v23 = (v10 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_query);
  v24 = v65;
  *v23 = v60;
  v23[1] = v24;
  OUTLINED_FUNCTION_3_0(v10 + v21, v74);
  *(v10 + v21) = a1;
  v65 = a1;

  LODWORD(v60) = a2;
  *(v10 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_requestType) = a2;
  v25 = (v10 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_searchTextInputSource);
  v26 = a3;
  *v25 = a3;
  v27 = v61;
  v25[1] = v61;
  v28 = v10 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_hintIndex;
  *v28 = v62;
  *(v28 + 8) = v66 & 1;
  OUTLINED_FUNCTION_3_0(v19, v73);
  v29 = *v19;
  v30 = *(v19 + 8);
  v31 = *(v19 + 16);
  v32 = *(v19 + 24);
  v33 = v63;
  v34 = v63[1];
  *v19 = *v63;
  *(v19 + 16) = v34;
  *(v19 + 32) = *(v33 + 4);
  sub_1E394CD94(v26, v27);
  sub_1E3DBFA40(v29, v30, v31, v32);
  v35 = *(v10 + v21);
  if (v35 && (OUTLINED_FUNCTION_5_0(v35 + 56, v69), *(v35 + 56)))
  {
    OUTLINED_FUNCTION_8();
    v37 = *(v36 + 672);

    v39 = v37(v38);

    sub_1E3277E60(0x7475626972747461, 0xEA00000000007365, v39, &v70);

    if (*(&v71 + 1))
    {
      sub_1E329504C(&v70, v72);
      sub_1E328438C(v72, &v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
      if (OUTLINED_FUNCTION_12_140(v67))
      {
        v40 = OUTLINED_FUNCTION_11_151();
        v41 = sub_1E37D26AC(v40 & 0xFFFFFFFFFFFFLL | 0x6449000000000000, 0xE800000000000000, v39);
        v43 = v42;
      }

      else
      {
        v41 = 0;
        v43 = 0;
      }

      v49 = v64;
      OUTLINED_FUNCTION_3_0(v64, v67);
      *v49 = v41;
      v49[1] = v43;

      sub_1E328438C(v72, &v70);
      if (OUTLINED_FUNCTION_12_140(&v68))
      {
        v50 = OUTLINED_FUNCTION_11_151();
        v51 = sub_1E37D26AC(v50 & 0xFFFFFFFFFFFFLL | 0x7954000000000000, 0xEA00000000006570, v49);
        v53 = v52;

        v45 = __swift_destroy_boxed_opaque_existential_1(v72);
      }

      else
      {
        v45 = __swift_destroy_boxed_opaque_existential_1(v72);
        v51 = 0;
        v53 = 0;
      }

      v54 = (v10 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_targetType);
      *v54 = v51;
      v54[1] = v53;
      goto LABEL_13;
    }
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
  }

  sub_1E329505C(&v70);
  v44 = v64;
  OUTLINED_FUNCTION_3_0(v64, v72);
  *v44 = 0;
  v44[1] = 0;

  v48 = (v10 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_targetType);
  *v48 = 0;
  v48[1] = 0;
LABEL_13:
  if (v27 != 4)
  {
    *&v70 = v26;
    *(&v70 + 1) = v27;
    v68 = xmmword_1E4297170;
    sub_1E394C8A0(v45, v46, v47);
    v55 = sub_1E4205E84();
    v56 = sub_1E38FE9AC(v70, *(&v70 + 1));
    if (v55 & 1) != 0 && (v66)
    {
      LOBYTE(v70) = v60;
      LOBYTE(v68) = 4;
      sub_1E3EA4EE4(v56, v57, v58);
      sub_1E4205E84();
    }
  }

  return v10;
}

uint64_t sub_1E3EA48CC@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B018, &unk_1E42D5B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A230;
  *(inited + 32) = 0x7972657571;
  *(inited + 40) = 0xE500000000000000;
  v4 = OUTLINED_FUNCTION_8_167(OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_query);
  if (v4)
  {
    v6 = *v5;
    v7 = MEMORY[0x1E69E6158];
    v8 = v4;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v7 = 0;
    *(inited + 64) = 0;
  }

  v9 = MEMORY[0x1E69E6158];
  *(inited + 48) = v6;
  *(inited + 56) = v8;
  *(inited + 72) = v7;
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x80000001E4287460;
  v10 = *(v1 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_searchTextInputSource + 8);
  if (v10 == 4)
  {
    *(inited + 120) = &type metadata for SearchTextInputSource;
    *(inited + 96) = xmmword_1E42AC9B0;
  }

  else
  {
    v11 = *(v1 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_searchTextInputSource);

    v42 = v9;
    *&v40 = sub_1E394B988(v11, v10);
    *(&v40 + 1) = v12;
    sub_1E329504C(&v40, (inited + 96));
  }

  *(inited + 128) = 0x5474736575716572;
  *(inited + 136) = 0xEB00000000657079;
  *(inited + 144) = sub_1E40BDE74(*(v1 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_requestType));
  *(inited + 152) = v13;
  *(inited + 168) = v9;
  *(inited + 176) = 0x65646E49746E6968;
  *(inited + 184) = 0xE900000000000078;
  if (*(v1 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_hintIndex + 8))
  {
    v14 = 0;
    v15 = 0;
    *(inited + 200) = 0;
    *(inited + 208) = 0;
  }

  else
  {
    v14 = *(v1 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_hintIndex);
    v15 = MEMORY[0x1E69E6530];
  }

  *(inited + 192) = v14;
  *(inited + 216) = v15;
  *(inited + 224) = 0x6449746567726174;
  *(inited + 232) = 0xE800000000000000;
  OUTLINED_FUNCTION_8();
  v17 = (*(v16 + 160))();
  if (v18)
  {
    v19 = MEMORY[0x1E69E6158];
  }

  else
  {
    v17 = 0;
    v19 = 0;
    *(inited + 256) = 0;
  }

  *(inited + 240) = v17;
  *(inited + 248) = v18;
  *(inited + 264) = v19;
  *(inited + 272) = 0x7954746567726174;
  *(inited + 280) = 0xEA00000000006570;
  v20 = OUTLINED_FUNCTION_8_167(OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_targetType);
  if (v20)
  {
    v22 = *v21;
    v23 = MEMORY[0x1E69E6158];
  }

  else
  {
    v22 = 0;
    v23 = 0;
    *(inited + 304) = 0;
  }

  *(inited + 288) = v22;
  *(inited + 296) = v20;
  *(inited + 312) = v23;
  *(inited + 320) = 0xD000000000000019;
  *(inited + 328) = 0x80000001E4287480;
  OUTLINED_FUNCTION_8();
  v25 = *(v24 + 184);

  v27 = v25(&v35, v26);
  if (v38)
  {
    *&v40 = v35;
    BYTE8(v40) = v36 & 1;
    v41 = v37;
    v42 = v38;
    v43 = v39;
    v31 = sub_1E3EA3C68(v27, v28, v29, v30);

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  }

  else
  {
    v31 = 0;
    v32 = 0;
    *(inited + 344) = 0;
    *(inited + 352) = 0;
  }

  *(inited + 336) = v31;
  *(inited + 360) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  v33 = sub_1E4205CB4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E4D0, &qword_1E429FAB0);
  a1[3] = result;
  *a1 = v33;
  return result;
}

uint64_t sub_1E3EA4C48()
{
  v1 = OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_requestID;
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_8_167(OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_query);

  sub_1E39429F0(*(v0 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_searchTextInputSource), *(v0 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_searchTextInputSource + 8));
  OUTLINED_FUNCTION_8_167(OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_targetId);

  OUTLINED_FUNCTION_8_167(OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_targetType);

  sub_1E3DBFA40(*(v0 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_naturalLanguageSearchData), *(v0 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_naturalLanguageSearchData + 8), *(v0 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_naturalLanguageSearchData + 16), *(v0 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_naturalLanguageSearchData + 24));
  MEMORY[0x1E69144A0](v0 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_appContext);

  return v0;
}

uint64_t sub_1E3EA4D20()
{
  sub_1E3EA4C48();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3EA4D78@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_requestID;
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  v7 = *(v6 + 16);

  return v7(a1, v3 + v4, v5);
}

uint64_t sub_1E3EA4E74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10, &qword_1E42B9000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3EA4EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3B2C8;
  if (!qword_1ECF3B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B2C8);
  }

  return result;
}

uint64_t type metadata accessor for SearchFragmentRequestContext(uint64_t a1)
{
  result = qword_1EE293860;
  if (!qword_1EE293860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3EA4FAC(uint64_t a1)
{
  result = sub_1E41FE624();
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

uint64_t sub_1E3EA5084()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BD0;
  *(inited + 32) = 0x6E6F697461636F6CLL;
  *(inited + 40) = 0xE800000000000000;
  v2 = MEMORY[0x1E69E6530];
  *(inited + 48) = *v0;
  *(inited + 72) = v2;
  *(inited + 80) = 0x6874676E656CLL;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = *(v0 + 8);
  *(inited + 120) = v2;
  strcpy((inited + 128), "isForDownload");
  *(inited + 142) = -4864;
  v3 = *(v0 + 16);
  *(inited + 168) = MEMORY[0x1E69E6370];
  *(inited + 144) = v3;
  v4 = MEMORY[0x1E69E6158];
  v5 = sub_1E4205CB4();
  v6 = *(v0 + 32);
  if (v6)
  {
    v7 = *(v0 + 24);
    v13 = v4;
    *&v12 = v7;
    *(&v12 + 1) = v6;
    sub_1E329504C(&v12, v11);
    sub_1E3EA51E8(v0, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10[0] = v5;
    sub_1E32A87C0(v11, 0x64496E6F73616573, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    return v10[0];
  }

  return v5;
}

uint64_t sub_1E3EA5220@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

void sub_1E3EA5250(void *a1)
{
  OUTLINED_FUNCTION_37(a1);
  OUTLINED_FUNCTION_72_3();
  swift_unknownObjectWeakAssign();
}

void (*sub_1E3EA5298(void *a1))(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_19(v2);
  v2[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E38063DC;
}

uint64_t (*sub_1E3EA5320())(uint64_t a1)
{
  OUTLINED_FUNCTION_72_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_1E3EA539C(uint64_t a1)
{
  OUTLINED_FUNCTION_37(a1);
  OUTLINED_FUNCTION_72_3();
  swift_weakAssign();

  return result;
}

void (*sub_1E3EA53E8(void *a1))(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_19(v2);
  v2[3] = swift_weakLoadStrong();
  return sub_1E3806578;
}

uint64_t (*sub_1E3EA5470())(uint64_t a1)
{
  OUTLINED_FUNCTION_72_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1E3EA54CC(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1E3EA551C(a1, a2);
  return v4;
}

uint64_t sub_1E3EA551C(void *a1, uint64_t a2)
{
  v5 = sub_1E41FE624();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC8VideosUI38EpisodeCollectionServiceRequestContext_contextDataRef) = 0;
  swift_weakInit();
  *(v2 + OBJC_IVAR____TtC8VideosUI38EpisodeCollectionServiceRequestContext_contextData) = 0;
  sub_1E41FE614();
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC8VideosUI38EpisodeCollectionServiceRequestContext_requestID, v8, v5);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  v9 = v2 + OBJC_IVAR____TtC8VideosUI38EpisodeCollectionServiceRequestContext_requestContextData;
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v10;
  *(v9 + 32) = *(a2 + 32);
  return v2;
}

uint64_t sub_1E3EA568C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B018, &unk_1E42D5B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  strcpy((inited + 32), "contextDataRef");
  *(inited + 47) = -18;
  v5 = (*(*v1 + 152))();
  v6 = v5;
  if (v5)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  }

  else
  {
    *(inited + 56) = 0;
    *(inited + 64) = 0;
  }

  *(inited + 48) = v6;
  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x80000001E42875A0;
  v7 = *(v2 + OBJC_IVAR____TtC8VideosUI38EpisodeCollectionServiceRequestContext_requestContextData + 16);
  v16[0] = *(v2 + OBJC_IVAR____TtC8VideosUI38EpisodeCollectionServiceRequestContext_requestContextData);
  v16[1] = v7;
  v17 = *(v2 + OBJC_IVAR____TtC8VideosUI38EpisodeCollectionServiceRequestContext_requestContextData + 32);
  v18 = *(v2 + OBJC_IVAR____TtC8VideosUI38EpisodeCollectionServiceRequestContext_requestContextData + 24);
  sub_1E3AC58B8(&v18, &v14);
  v8 = sub_1E3EA5084();
  sub_1E3EA5AB0(v16);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  *(inited + 120) = v9;
  *(inited + 96) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  v10 = sub_1E4205CB4();
  v11 = (*(*v2 + 200))();
  if (v11)
  {
    *&v14 = v11;
    v15 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E3807164(&v14, 0x44747865746E6F63, 0xEB00000000617461, isUniquelyReferenced_nonNull_native);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E4D0, &qword_1E429FAB0);
  a1[3] = result;
  *a1 = v10;
  return result;
}

uint64_t sub_1E3EA58A8()
{
  v1 = OBJC_IVAR____TtC8VideosUI38EpisodeCollectionServiceRequestContext_requestID;
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  MEMORY[0x1E69144A0](v0 + OBJC_IVAR____TtC8VideosUI38EpisodeCollectionServiceRequestContext_appContext);

  swift_weakDestroy();

  return v0;
}

uint64_t sub_1E3EA5954()
{
  sub_1E3EA58A8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3EA59AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8VideosUI38EpisodeCollectionServiceRequestContext_requestID;
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  v7 = *(v6 + 16);

  return v7(a1, v3 + v4, v5);
}

uint64_t sub_1E3EA5AE0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3EA5B34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for EpisodeCollectionServiceRequestContext(uint64_t a1)
{
  result = qword_1EE290790;
  if (!qword_1EE290790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3EA5C04(uint64_t a1)
{
  result = sub_1E41FE624();
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

double sub_1E3EA5CEC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;

  return result;
}

uint64_t sub_1E3EA5D70(uint64_t a1)
{
  *(v1 + 104) = xmmword_1E42B29E0;
  *(v1 + 120) = xmmword_1E4298720;
  *(v1 + 144) = 0;
  *(v1 + 136) = a1;
  v2 = sub_1E41144C8();
  __dst[0] = xmmword_1E42DA5F0;
  __dst[1] = xmmword_1E4296CA0;
  LOBYTE(__dst[2]) = 0;
  v20[0] = xmmword_1E42CDDC0;
  v20[1] = xmmword_1E4296CA0;
  v21 = 0;
  v18[0] = xmmword_1E42B5E90;
  v18[1] = xmmword_1E42AE100;
  v19 = 0;
  v16[0] = xmmword_1E42B29E0;
  v16[1] = xmmword_1E42A76A0;
  v17 = 0;
  v14[0] = xmmword_1E42CDDC0;
  v14[1] = xmmword_1E4296CA0;
  v15 = 0;
  type metadata accessor for UIEdgeInsets();
  v4 = v3;

  sub_1E3C3DE00();
  v9[0] = v11;
  v9[1] = v12;
  v10 = v13;
  sub_1E3C2FCB8(v9, __dst, v20, v18, v16, v14, v4, __src);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v5 + 1600))(__dst, 1, v6 & 1, v4);
  sub_1E3EA6364();

  return v2;
}

void sub_1E3EA5F08()
{
  *(v0 + 104) = xmmword_1E42B29E0;
  *(v0 + 120) = xmmword_1E4298720;
  *(v0 + 144) = 0;
  *(v0 + 136) = 0;
  OUTLINED_FUNCTION_3_209("Fatal error", 11, 2, 31, 0x80000001E4259F50, "VideosUI/OrdinalLockupCellLayout.swift");
  __break(1u);
}

uint64_t sub_1E3EA5F78(char a1)
{
  v2 = *v1;
  if (a1)
  {
    return (*(v2 + 2480))(2);
  }

  else
  {
    return (*(v2 + 848))(0);
  }
}

double sub_1E3EA5FD0()
{
  v1 = v0;
  type metadata accessor for ViewGradientLayout(0);
  sub_1E40C2E40();
  OUTLINED_FUNCTION_9_2();
  (*(v2 + 848))();
  OUTLINED_FUNCTION_9_2();
  v4 = *(v3 + 840);
  v5 = v4();
  if (v5)
  {
    v7 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1E42A73A0;
    *(v8 + 32) = [objc_opt_self() whiteColor];
    *(v8 + 40) = OUTLINED_FUNCTION_10_144();
    v9 = OUTLINED_FUNCTION_10_144();
    v10 = [v9 colorWithAlphaComponent_];

    *(v8 + 48) = v10;
    (*(*v7 + 1800))(v8);
  }

  if (*(v1 + 136) == 1)
  {
    v11 = (v4)(v5);
    if (v11)
    {
      v12 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1E42A73A0;
      v14 = [objc_opt_self() whiteColor];
      v15 = [v14 &selRef:1.0 componentsSeparatedByString:?];

      *(v13 + 32) = v15;
      v16 = OUTLINED_FUNCTION_10_144();
      v17 = [v16 &selRef:0.9 componentsSeparatedByString:?];

      *(v13 + 40) = v17;
      v18 = OUTLINED_FUNCTION_10_144();
      v19 = [v18 &selRef:0.7 componentsSeparatedByString:?];

      *(v13 + 48) = v19;
      (*(*v12 + 1800))(v13);
    }

    v20 = (v4)(v11);
    if (v20)
    {
      (*(*v20 + 1824))(&unk_1F5D8B158);
    }
  }

  return result;
}

double sub_1E3EA6364()
{
  v1 = v0;
  v2 = [objc_opt_self() blackColor];
  v3 = type metadata accessor for ViewGradientLayout(0);
  sub_1E40C3088();
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 1776))(2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E42B2A10;
  *(v5 + 32) = [v2 colorWithAlphaComponent_];
  *(v5 + 40) = [v2 colorWithAlphaComponent_];
  *(v5 + 48) = [v2 colorWithAlphaComponent_];
  *(v5 + 56) = [v2 colorWithAlphaComponent_];
  *(v5 + 64) = [v2 colorWithAlphaComponent_];
  *(v5 + 72) = [v2 colorWithAlphaComponent_];
  (*(*v3 + 1728))(0, 0, 0);
  OUTLINED_FUNCTION_36();
  (*(v6 + 1848))(0x404E000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v7 + 1872))(0x4060000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v8 + 1800))(v5);
  OUTLINED_FUNCTION_36();
  (*(v9 + 1824))(&unk_1F5D8B0D0);

  swift_beginAccess();
  *(v1 + 144) = v3;

  return result;
}

uint64_t sub_1E3EA6650()
{
  v0 = sub_1E41144CC();

  return MEMORY[0x1EEE6BDC0](v0, 152, 7);
}

uint64_t *sub_1E3EA66D4(uint64_t a1, __n128 a2)
{
  v3 = v2;
  *(v3 + 336) = 0;
  type metadata accessor for OrdinalNumberLayout();
  swift_allocObject();
  *(v3 + 328) = sub_1E3EA5D70(a1);
  v5 = j__OUTLINED_FUNCTION_18();
  v6 = sub_1E3D8C150(1, v5 & 1);

  sub_1E3EA6770();

  return v6;
}

double sub_1E3EA6770()
{
  v1 = v0;
  if ((*(*v0 + 2304))())
  {
    type metadata accessor for LayoutGrid();
    (*(*v0 + 1560))();
    v2 = sub_1E3A25914();
    v110 = 0x4014000000000000;
    v111 = v3;
    v112 = 0x4024000000000000;
    v113 = v4;
    LOBYTE(v114) = 0;
    (*(*v0 + 184))(&v110, v2);
    OUTLINED_FUNCTION_9_2();
    v6 = (*(v5 + 1936))();
    sub_1E3952C94();
    v105 = v7;
    v106 = v8;
    v107 = v9;
    v108 = v10;
    LOBYTE(v109) = 0;
    (*(*v6 + 160))(&v105);
  }

  v11 = v1[41];
  OUTLINED_FUNCTION_47_0();
  (*(v12 + 2056))(1, 0);
  OUTLINED_FUNCTION_13();
  (*(v13 + 2080))(1, 0);
  OUTLINED_FUNCTION_13();
  (*(v14 + 2104))(1, 0);
  OUTLINED_FUNCTION_9_2();
  v16 = *(v15 + 2304);
  v16();
  OUTLINED_FUNCTION_13();
  v18 = *(v17 + 2128);
  if (v19)
  {
    v18(0x3FE51EB851EB851FLL, 0);
    OUTLINED_FUNCTION_47_0();
    (*(v20 + 208))(0x403E000000000000, 0);
    v21 = *sub_1E3E5FDEC();
    v22 = *(*v11 + 680);
    v23 = v21;
    v22(v21);
    __dst[0] = 17;
    LOBYTE(v135) = 27;
    LOBYTE(v132) = 27;
    LOBYTE(v129) = 7;
    LOBYTE(v126) = 2;
    LOBYTE(v123) = 7;
    sub_1E3C2FCB8(__dst, &v135, &v132, &v129, &v126, &v123, &qword_1F5D549D8, __src);
    *__dst = __src[0];
    *&__dst[4] = __src[1];
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_13();
    v25 = *(v24 + 1600);
    v25(__dst, 48, v26 & 1, &qword_1F5D549D8);
    OUTLINED_FUNCTION_13();
    (*(v27 + 1816))(0, 1);
    OUTLINED_FUNCTION_13();
    (*(v28 + 1792))(10);
    OUTLINED_FUNCTION_13();
    (*(v29 + 1720))(13);
    *__dst = xmmword_1E42B5F70;
    *&__dst[16] = xmmword_1E42B5F70;
    __dst[32] = 0;
    *&v135 = sub_1E3952CA4();
    *(&v135 + 1) = v30;
    *&v136 = v31;
    *(&v136 + 1) = v32;
    v137 = 0;
    v33 = *(MEMORY[0x1E69DDCE0] + 16);
    v132 = *MEMORY[0x1E69DDCE0];
    v133 = v33;
    v134 = 0;
    *&v129 = sub_1E3952C40();
    *(&v129 + 1) = v34;
    *&v130 = v35;
    *(&v130 + 1) = v36;
    v131 = 0;
    type metadata accessor for UIEdgeInsets();
    v38 = v37;
    sub_1E3C2FC98();
    v123 = v126;
    v124 = v127;
    v125 = v128;
    sub_1E3C3DE00();
    v115 = v120;
    v116 = v121;
    LOBYTE(v117) = v122;
    v39 = __src;
    v40 = __dst;
    v41 = &v123;
    v42 = &v115;
    v43 = &v135;
    v44 = &v132;
    v45 = &v129;
  }

  else
  {
    v18(0, 1);
    OUTLINED_FUNCTION_47_0();
    (*(v46 + 208))(0, 1);
    v47 = [objc_opt_self() whiteColor];
    OUTLINED_FUNCTION_13();
    (*(v48 + 680))();
    OUTLINED_FUNCTION_13();
    (*(v49 + 1696))(27);
    *__dst = 0x403C000000000000;
    __dst[8] = 0;
    *&v135 = 0x4046000000000000;
    BYTE8(v135) = 0;
    *&v132 = 0x4053000000000000;
    BYTE8(v132) = 0;
    *&v129 = 0x4044000000000000;
    BYTE8(v129) = 0;
    *&v126 = 0x4043000000000000;
    BYTE8(v126) = 0;
    v50 = MEMORY[0x1E69E7DE0];
    v51 = sub_1E3C3DE00();
    BYTE8(v120) = BYTE8(v123);
    v59 = OUTLINED_FUNCTION_4_208(v51, v52, v53, v54, v55, v56, v57, v58, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, *(&v115 + 1), v116, *(&v116 + 1), v117, v118, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v123);
    sub_1E3C2FCB8(v59, v60, v61, v62, v63, v64, v50, v65);
    memcpy(__dst, __src, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_13();
    v25 = *(v66 + 1600);
    v25(__dst, 52, v67 & 1, v50);
    sub_1E4205F14();
    OUTLINED_FUNCTION_13();
    (*(v68 + 1768))();
    OUTLINED_FUNCTION_13();
    (*(v69 + 1792))(7);
    OUTLINED_FUNCTION_13();
    (*(v70 + 1744))(1);
    OUTLINED_FUNCTION_13();
    (*(v71 + 1720))(8);
    *__dst = xmmword_1E42DA5F0;
    *&__dst[16] = xmmword_1E4296CA0;
    __dst[32] = 0;
    v135 = xmmword_1E42CDDC0;
    v136 = xmmword_1E4296CA0;
    v137 = 0;
    v132 = xmmword_1E42B5E90;
    v133 = xmmword_1E42AE100;
    v134 = 0;
    v129 = xmmword_1E42B29E0;
    v130 = xmmword_1E42A76A0;
    v131 = 0;
    v126 = xmmword_1E42CDDC0;
    v127 = xmmword_1E4296CA0;
    v128 = 0;
    type metadata accessor for UIEdgeInsets();
    v38 = v72;
    v73 = sub_1E3C3DE00();
    *(&v120 + 1) = *(&v123 + 1);
    v121 = v124;
    v122 = v125;
    v40 = OUTLINED_FUNCTION_4_208(v73, v74, v75, v76, v77, v78, v79, v80, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, *(&v115 + 1), v116, *(&v116 + 1), v117, v118, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v123);
  }

  sub_1E3C2FCB8(v40, v41, v42, v43, v44, v45, v38, v39);
  memcpy(__dst, __src, 0xE9uLL);
  v81 = OUTLINED_FUNCTION_18();
  v82 = (v25)(__dst, 1, v81 & 1, v38);
  (v16)(v82);
  OUTLINED_FUNCTION_47_0();
  (*(v83 + 2472))((v84 & 1) == 0);
  sub_1E3C37CBC(v11, 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1E42A76D0;
  v86 = [objc_opt_self() blackColor];
  v87 = [v86 colorWithAlphaComponent_];

  *(v85 + 32) = v87;
  v88 = OUTLINED_FUNCTION_11_152();
  v89 = [v88 colorWithAlphaComponent_];

  *(v85 + 40) = v89;
  v90 = OUTLINED_FUNCTION_11_152();
  v91 = [v90 colorWithAlphaComponent_];

  *(v85 + 48) = v91;
  v92 = OUTLINED_FUNCTION_11_152();
  v93 = [v92 colorWithAlphaComponent_];

  *(v85 + 56) = v93;
  *(v85 + 64) = OUTLINED_FUNCTION_11_152();
  v94 = *(*v1 + 2056);
  v94();
  OUTLINED_FUNCTION_2_1();
  (*(v95 + 1728))(0, 0, 0);

  (v94)(v96);
  OUTLINED_FUNCTION_2_1();
  (*(v97 + 1752))(0, 0x3FF0000000000000, 0);

  (v94)(v98);
  OUTLINED_FUNCTION_2_1();
  (*(v99 + 1776))(1);

  (v94)(v100);
  OUTLINED_FUNCTION_2_1();
  (*(v101 + 1800))(v85);

  (v94)(v102);
  OUTLINED_FUNCTION_2_1();
  (*(v103 + 1824))(&unk_1F5D8B190);

  return result;
}

void sub_1E3EA7378()
{
  *(v0 + 336) = 0;
  OUTLINED_FUNCTION_3_209("Fatal error", 11, 2, 56, 0x80000001E4287630, "VideosUI/OrdinalLockupCellLayout.swift");
  __break(1u);
}

void sub_1E3EA73F4()
{
  *(v0 + 336) = 0;
  OUTLINED_FUNCTION_3_209("Fatal error", 11, 2, 84, 0x80000001E4287670, "VideosUI/OrdinalLockupCellLayout.swift");
  __break(1u);
}

void sub_1E3EA7468()
{
  *(v0 + 336) = 0;
  OUTLINED_FUNCTION_3_209("Fatal error", 11, 2, 31, 0x80000001E4259F50, "VideosUI/OrdinalLockupCellLayout.swift");
  __break(1u);
}

void sub_1E3EA74E0()
{
  *(v0 + 336) = 0;
  OUTLINED_FUNCTION_3_209("Fatal error", 11, 2, 65, 0x80000001E42876D0, "VideosUI/OrdinalLockupCellLayout.swift");
  __break(1u);
}

double sub_1E3EA7568(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 336);
  *(v1 + 336) = a1;
  swift_beginAccess();
  if (v3 != *(v1 + 336))
  {
    return sub_1E3EA6770();
  }

  return result;
}

uint64_t sub_1E3EA75D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (BYTE1(a3) == 2)
  {
    if (a3 == 5)
    {
      goto LABEL_12;
    }

LABEL_9:
    sub_1E3890B18(a1, a2, a3);
    if ((sub_1E4205E84() & 1) == 0 || (sub_1E3A24FDC(v3) & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a3 == 5)
  {
LABEL_12:
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  v4 = a3;
  sub_1E3890B18(a1, a2, a3);
  a1 = sub_1E4205E84();
  if ((a1 & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((v4 & 0x100) != 0)
  {
LABEL_11:
    LOBYTE(v5) = 1;
    return v5 & 1;
  }

  v5 = [objc_opt_self() isPad];
  if (v5)
  {
    LOBYTE(v5) = sub_1E3A24FDC(v3);
  }

  return v5 & 1;
}

double sub_1E3EA76D8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1E3D8C99C(a1, a2, a3);
  v6 = sub_1E3EA75D8(a1, v5, a3) & 1;

  return sub_1E3EA7568(v6);
}

uint64_t sub_1E3EA7730()
{
  v0 = sub_1E3D8CFE0();

  return MEMORY[0x1EEE6BDC0](v0, 337, 7);
}

double sub_1E3EA77D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25CanonicalFooterAiringView_layout;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void *sub_1E3EA788C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI25CanonicalFooterAiringView_label;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void (*sub_1E3EA78D4(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI25CanonicalFooterAiringView_label;
  OUTLINED_FUNCTION_4_13();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E3EA794C;
}

void *sub_1E3EA7964(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI25CanonicalFooterAiringView_imageView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3EA79AC(void *a1, uint64_t *a2)
{
  v5 = *a2;
  swift_beginAccess();
  v6 = *&v2[v5];
  *&v2[v5] = a1;
  v7 = *a2;
  v8 = a1;
  swift_beginAccess();
  [v2 vui:*&v2[v7] addSubview:v6 oldView:?];
}

void (*sub_1E3EA7A48(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI25CanonicalFooterAiringView_imageView;
  OUTLINED_FUNCTION_4_13();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E3EA7AC0;
}

void sub_1E3EA7AD8(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

double sub_1E3EA7B58(char a1, double a2)
{
  v3 = v2;
  v105 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x68))();
  if (v105)
  {
    v6 = [objc_opt_self() isTV];
    v7 = [v2 vuiTraitCollection];
    v8 = [v7 isAXEnabled];

    v9 = a2;
    if ((a1 & 1) == 0)
    {
      v10 = [v3 superview];
      v9 = a2;
      if (v10)
      {
        v11 = v10;
        [v10 bounds];
        v9 = v12;
      }
    }

    type metadata accessor for LayoutGrid();
    v13 = sub_1E3A2579C(v9);
    if (v8)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_1E3A24FDC(v13);
    }

    v101 = [v3 vuiIsRTL];
    v16 = 12.0;
    if (v6)
    {
      v17 = 18.0;
    }

    else
    {
      v17 = 12.0;
    }

    if (v6)
    {
      v18 = 32.0;
    }

    else
    {
      v18 = 26.0;
    }

    v19 = 24.0;
    v20 = 0.0;
    if (v6)
    {
      v19 = 0.0;
    }

    *&v98 = v19;
    if (v6)
    {
      v16 = 26.0;
    }

    rect = v18;
    *&v95 = v16;
    OUTLINED_FUNCTION_4_209();
    v22 = *(v21 + 152);
    v23 = v22();
    v24 = 0.0;
    v25 = 0.0;
    v26 = 0.0;
    v27 = 0.0;
    if (v23)
    {
      v28 = v23;
      v29 = v22;
      v30 = a1;
      if (v6)
      {
        v31 = 58.0;
      }

      else
      {
        v31 = 34.0;
      }

      v32 = [v23 vui:a2 sizeThatFits:0.0];
      v26 = v34;
      if (v33 >= v31)
      {
        v27 = v33;
      }

      else
      {
        v27 = v31;
      }

      v35 = *(*(*v105 + 1704))(v32);
      v36 = (*(v35 + 1712))();

      if (v36 == 13)
      {
        v37 = 0;
      }

      else
      {
        v37 = j__OUTLINED_FUNCTION_13_30(v36);
      }

      v38 = objc_opt_self();
      v39 = [v3 vuiTraitCollection];
      [v38 scaleContentSizeValue:v39 forTraitCollection:v37 maximumContentSizeCategory:*&v95];
      v25 = v40;

      if (v101)
      {
        v24 = a2 - v26;
      }

      else
      {
        v24 = 0.0;
      }

      OUTLINED_FUNCTION_1_245();
      MaxY = CGRectGetMaxY(v107);

      v20 = *&v98 + MaxY;
      a1 = v30;
      v22 = v29;
    }

    OUTLINED_FUNCTION_4_209();
    v43 = *(v42 + 128);
    v44 = v43();
    v103 = v24;
    v99 = *&v27;
    if (!v44)
    {
      v102 = v20;
      v92 = *&v17;
      v58 = 0.0;
      v59 = 0.0;
      v60 = 0.0;
      v61 = 0.0;
      if (v14)
      {
        goto LABEL_45;
      }

LABEL_60:
      v83 = OUTLINED_FUNCTION_2_209(v44, v45, v46, v47, v48, v49, v50, v51, *&v52, v89, v90, *&v91, v92, *&rect, v95, v96, v98, v99, *&v102, *&v103);
      v119.origin.x = v58;
      v119.origin.y = v61;
      v119.size.width = v59;
      v97 = *&v60;
      v119.size.height = v60;
      v15 = v93 + v83 + CGRectGetWidth(v119);
      v71 = v58;
      v58 = v61;
      if (a1)
      {
LABEL_65:

        return v15;
      }

LABEL_61:
      v84 = v22();
      if (v84)
      {
        v85 = v84;
        [v84 setFrame_];
      }

      v86 = v43();
      if (v86)
      {
        v87 = v86;
        [v86 setFrame_];
      }

      goto LABEL_65;
    }

    v56 = v44;
    v106 = v25;
    if (v6)
    {
      v57 = 560.0;
    }

    else
    {
      v57 = a2;
    }

    if (((v6 | v14) & 1) == 0)
    {
      OUTLINED_FUNCTION_1_245();
      if (CGRectGetWidth(v108) <= 0.0)
      {
        v57 = a2;
      }

      else
      {
        OUTLINED_FUNCTION_1_245();
        v57 = a2 - (v17 + CGRectGetWidth(v109));
      }
    }

    v62 = 0.0;
    [v56 sizeThatFits_];
    v64 = v63;
    v60 = v65;
    if (v14)
    {
      OUTLINED_FUNCTION_1_245();
      CGRectGetMaxY(v110);
      [v56 topMarginWithBaselineMargin_];
      VUIRoundValue();
      v58 = v66;
      v111.origin.x = 0.0;
      v111.origin.y = v58;
      v111.size.width = v64;
      v111.size.height = v60;
      v67 = CGRectGetMaxY(v111);
      [v56 bottomMarginWithBaselineMargin_];
      v69 = v68;

      v52 = v67 + v69;
      v102 = v67 + v69;
      v59 = v64;
LABEL_45:
      v70 = OUTLINED_FUNCTION_2_209(v44, v45, v46, v47, v48, v49, v50, v51, *&v52, v89, v90, *&v91, v92, *&rect, v95, v96, v98, *&v27, *&v102, *&v103);
      v71 = 0.0;
      v112.origin.x = 0.0;
      v112.origin.y = v58;
      v112.size.width = v59;
      v97 = *&v60;
      v112.size.height = v60;
      Width = CGRectGetWidth(v112);
      if (v70 > Width)
      {
        v15 = v70;
      }

      else
      {
        v15 = Width;
      }

      if (a1)
      {
        goto LABEL_65;
      }

      goto LABEL_61;
    }

    rect = v63;
    if ((v101 & 1) == 0)
    {
      OUTLINED_FUNCTION_1_245();
      if (CGRectGetWidth(v113) > 0.0)
      {
        OUTLINED_FUNCTION_1_245();
        CGRectGetWidth(v114);
        VUIRoundValue();
        v62 = v73;
      }
    }

    v89 = *&v57;
    v91 = v26;
    v92 = *&v17;
    v61 = 26.0;
    if ((v6 & 1) == 0)
    {
      [v56 topMarginWithBaselineMargin_];
      v61 = v74;
    }

    v115.origin.x = v62;
    v115.origin.y = v61;
    v115.size.width = rect;
    v115.size.height = v60;
    v58 = v62;
    Height = CGRectGetHeight(v115);
    v116.origin.x = v103;
    v116.origin.y = v106;
    v116.size.width = v91;
    v116.size.height = v27;
    v96 = *&v60;
    v90 = *&v62;
    if (Height >= CGRectGetHeight(v116))
    {
      v80 = [v56 requiresMoreThanOneLineForTextWidth_];
      v76 = v62;
      v77 = v61;
      v78 = rect;
      v79 = v60;
      if (v80)
      {
LABEL_59:
        v118.origin.x = v62;
        v118.origin.y = v61;
        v59 = rect;
        v118.size.width = rect;
        v118.size.height = v60;
        CGRectGetMaxY(v118);
        [v56 bottomMarginWithBaselineMargin_];
        VUIRoundValue();
        v102 = v82;

        goto LABEL_60;
      }
    }

    else
    {
      v76 = OUTLINED_FUNCTION_7_196();
      v27 = v60;
    }

    v81 = CGRectGetHeight(*&v76);
    v117.origin.x = OUTLINED_FUNCTION_7_196();
    v61 = *&v95 + (v81 - CGRectGetHeight(v117)) * 0.5;
    goto LABEL_59;
  }

  return 0.0;
}

id sub_1E3EA82D8()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI25CanonicalFooterAiringView_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25CanonicalFooterAiringView_label) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25CanonicalFooterAiringView_imageView) = 0;
  v5 = type metadata accessor for CanonicalFooterAiringView();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3EA8390(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI25CanonicalFooterAiringView_layout] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI25CanonicalFooterAiringView_label] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI25CanonicalFooterAiringView_imageView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CanonicalFooterAiringView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3EA8444()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanonicalFooterAiringView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3EA84D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v44 = a1;
  v7 = sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a4;
  v46 = a4;

  v47 = sub_1E3EA9868(v13);
  v14 = &v47;
  sub_1E3EA8BD0(sub_1E3EA9A60, v45);
  v15 = v47;
  v16 = sub_1E32AE9B0(v47);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v4 = v16;
    v47 = MEMORY[0x1E69E7CC0];
    sub_1E4207574();
    if (v4 < 0)
    {
      __break(1u);
LABEL_23:
      v22 = sub_1E4207384();
      if (v22)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }

    HIDWORD(v41) = a3;
    v42 = v12;
    v18 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1E6911E60](v18, v15);
      }

      else
      {
        v19 = *(v15 + 8 * v18 + 32);
      }

      v20 = v19;
      ++v18;
      sub_1E4205964();

      v14 = &v47;
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }

    while (v4 != v18);
    v17 = v47;
    v12 = v42;
    LOBYTE(a3) = BYTE4(v41);
  }

  v21 = v17 >> 62;
  if ((a3 & 1) == 0)
  {
    if (v21)
    {
      if (!sub_1E4207384())
      {
        goto LABEL_26;
      }
    }

    else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    if ((v17 & 0xC000000000000001) == 0)
    {
      if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_71:
        v40 = v14;
        goto LABEL_72;
      }

      v24 = *(v17 + 32);
      goto LABEL_20;
    }

    goto LABEL_65;
  }

  if (v21)
  {
    goto LABEL_23;
  }

  v22 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v22)
  {
LABEL_12:
    v23 = v22 - 1;
    if (!__OFSUB__(v22, 1))
    {
      sub_1E34AF4E4(v22 - 1, (v17 & 0xC000000000000001) == 0, v17);
      if ((v17 & 0xC000000000000001) == 0)
      {
        v24 = *(v17 + 8 * v23 + 32);
LABEL_20:
        v25 = v24;
LABEL_21:
        v26 = v25;
        goto LABEL_27;
      }

      v39 = v23;
LABEL_69:
      v25 = MEMORY[0x1E6911E60](v39, v17);
      goto LABEL_21;
    }

    __break(1u);
LABEL_65:
    v39 = 0;
    goto LABEL_69;
  }

LABEL_26:
  v26 = 0;
LABEL_27:

  if (v26)
  {
    v17 = sub_1E42054D4();
    v4 = v27;
  }

  else
  {
    v17 = 0;
    v4 = 0;
  }

  v28 = v15 >> 62;
  if (a3)
  {
    if (v28)
    {
      v29 = sub_1E4207384();
      if (v29)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v29 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
LABEL_33:
        v14 = v29 - 1;
        if (!__OFSUB__(v29, 1))
        {
          sub_1E34AF4E4(v29 - 1, (v15 & 0xC000000000000001) == 0, v15);
          if ((v15 & 0xC000000000000001) == 0)
          {
            v30 = *(v15 + 8 * v14 + 32);
LABEL_41:
            v31 = v30;
LABEL_42:
            v32 = v31;
LABEL_47:

            if (v32 && (sub_1E4205BC4(), v33 = sub_1E4205984(), v32, (*(v9 + 8))(v12, v7), v33))
            {
              sub_1E4205AE4();

              v34 = 0;
            }

            else
            {
              v34 = 1;
            }

            v35 = *(v44 + 16);
            v36 = v44 + 56;
            if (v35)
            {
              while (1)
              {
                if (v4)
                {
                  v37 = *(v36 - 24) == v17 && v4 == *(v36 - 16);
                  if (v37 || (sub_1E42079A4() & 1) != 0)
                  {
                    break;
                  }
                }

                v36 += 40;
                if (!--v35)
                {
                  goto LABEL_59;
                }
              }

              if ((v34 & 1) == 0)
              {
                goto LABEL_63;
              }
            }

            else
            {
LABEL_59:

              if (!v34)
              {
                goto LABEL_63;
              }
            }

LABEL_63:
            v38 = sub_1E4205BF4();
            (*(*(v38 - 8) + 8))(v43, v38);
            return;
          }

          goto LABEL_71;
        }

        __break(1u);
LABEL_67:
        v40 = 0;
LABEL_72:
        v31 = MEMORY[0x1E6911E60](v40, v15);
        goto LABEL_42;
      }
    }

LABEL_46:
    v32 = 0;
    goto LABEL_47;
  }

  if (v28)
  {
    if (!sub_1E4207384())
    {
      goto LABEL_46;
    }
  }

  else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_46;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
    goto LABEL_67;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v15 + 32);
    goto LABEL_41;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_1E3EA89E8()
{
  v0 = sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4205A34();
  v7 = sub_1E4205794();

  result = sub_1E32AE9B0(v7);
  if (result)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1E6911E60](0, v7);
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v9 = *(v7 + 32);
    }

    v10 = v9;

    v11 = sub_1E4205AE4();
  }

  else
  {

    v11 = 0;
  }

  sub_1E4205BC4();
  v12 = sub_1E4205984();
  (*(v2 + 8))(v5, v0);
  if (v12)
  {
    v13 = sub_1E4205AE4();
  }

  else
  {
    v13 = 0;
  }

  return v13 < v11;
}

uint64_t sub_1E3EA8B74(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1E4205A54();
      result = sub_1E4206314();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1E3EA8BD0(uint64_t (*a1)(id *, void **), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *v3 = sub_1E34AF5E0(v6);
  }

  sub_1E3EA8C68(a1, a2);
  return sub_1E4207554();
}

void sub_1E3EA8C68(uint64_t (*a1)(id *, void **), uint64_t a2)
{
  v6 = v2[1];
  v7 = sub_1E4207914();
  if (v7 < v6)
  {
    v8 = v7;
    v9 = sub_1E3EA8B74(v6 / 2);
    v11[0] = v10;
    v11[1] = (v6 / 2);
    sub_1E3EA8E60(v11, v12, v2, a1, a2, v8);
    if (v3)
    {
      if (v6 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v6 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v6)
  {
    sub_1E3EA8D60(0, v6, 1, a1);
  }
}

void sub_1E3EA8D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **, void **))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v19 = v8;
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    while (1)
    {
      v22 = v10;
      v21 = *v8;
      v11 = v21;
      v12 = v10;
      v13 = v11;
      v14 = a4(&v22, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v15;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 1;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1E3EA8E60(id **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(id *, void **), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_94:
    __dst = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_96;
    }

    goto LABEL_138;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v13 = *a3;
      v14 = v9 + 1;
      v114 = *(*a3 + 8 * v12);
      v113 = *(v13 + 8 * v9);
      v15 = v113;
      v16 = v114;
      v17 = v15;
      LODWORD(__dst) = a4(&v114, &v113);
      if (v7)
      {

        goto LABEL_106;
      }

      v104 = v10;

      v107 = 8 * v11;
      v18 = (v13 + 8 * v11 + 16);
      v102 = v11;
      v19 = v11 + 2;
      v12 = v14;
      while (1)
      {
        v20 = v12;
        v21 = v19;
        if (v12 + 1 >= v8)
        {
          break;
        }

        v22 = v8;
        v23 = *(v18 - 1);
        v114 = *v18;
        v113 = v23;
        v24 = v114;
        v25 = v23;
        v26 = a4(&v114, &v113);

        v27 = __dst ^ v26;
        ++v18;
        v12 = v20 + 1;
        v19 = v21 + 1;
        v8 = v22;
        v7 = 0;
        if (v27)
        {
          goto LABEL_10;
        }
      }

      v12 = v8;
LABEL_10:
      if (__dst)
      {
        if (v12 < v102)
        {
          goto LABEL_132;
        }

        v28 = v102 <= v20;
        v10 = v104;
        v11 = v102;
        if (v28)
        {
          if (v8 >= v21)
          {
            v29 = v21;
          }

          else
          {
            v29 = v8;
          }

          v30 = 8 * v29 - 8;
          v31 = v12;
          v32 = v102;
          v33 = v107;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_136;
              }

              v35 = *(v34 + v33);
              *(v34 + v33) = *(v34 + v30);
              *(v34 + v30) = v35;
            }

            ++v32;
            v30 -= 8;
            v33 += 8;
          }

          while (v32 < v31);
        }
      }

      else
      {
        v11 = v102;
        v10 = v104;
      }
    }

    v36 = a3[1];
    if (v12 < v36)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_128;
      }

      if (v12 - v11 < a6)
      {
        if (__OFADD__(v11, a6))
        {
          __break(1u);
        }

        else
        {
          if (v11 + a6 >= v36)
          {
            v37 = a3[1];
          }

          else
          {
            v37 = v11 + a6;
          }

          if (v37 >= v11)
          {
            if (v12 == v37)
            {
              goto LABEL_33;
            }

            v81 = v11;
            v82 = *a3;
            v83 = (*a3 + 8 * v12 - 8);
            v103 = v81;
            v105 = v10;
            v84 = (v81 - v12);
            v100 = v37;
            while (1)
            {
              v109 = v12;
              __dst = v84;
              v85 = *(v82 + 8 * v12);
              v86 = v83;
              do
              {
                v114 = v85;
                v113 = *v83;
                v87 = v113;
                v88 = v85;
                v17 = v87;
                v89 = a4(&v114, &v113);
                if (v7)
                {

LABEL_106:
                  return;
                }

                v90 = v89;

                if ((v90 & 1) == 0)
                {
                  break;
                }

                if (!v82)
                {
                  goto LABEL_135;
                }

                v91 = *v83;
                v85 = v83[1];
                *v83 = v85;
                v83[1] = v91;
                --v83;
                v92 = __CFADD__(v84, 1);
                v84 = (v84 + 1);
              }

              while (!v92);
              v12 = v109 + 1;
              v83 = v86 + 1;
              v84 = (__dst - 1);
              if (v109 + 1 == v100)
              {
                v12 = v100;
                v11 = v103;
                v10 = v105;
                goto LABEL_33;
              }
            }
          }
        }

        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }
    }

LABEL_33:
    if (v12 < v11)
    {
      goto LABEL_127;
    }

    v108 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1E37FFF70(0, *(v10 + 2) + 1, 1, v10);
    }

    v39 = *(v10 + 2);
    v38 = *(v10 + 3);
    v40 = v39 + 1;
    v41 = v11;
    if (v39 >= v38 >> 1)
    {
      v10 = sub_1E37FFF70((v38 > 1), v39 + 1, 1, v10);
    }

    *(v10 + 2) = v40;
    v42 = v10 + 32;
    v43 = &v10[16 * v39 + 32];
    *v43 = v41;
    *(v43 + 1) = v108;
    __dst = *a1;
    if (!*a1)
    {
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      return;
    }

    if (v39)
    {
      break;
    }

LABEL_82:
    v8 = a3[1];
    v9 = v108;
    if (v108 >= v8)
    {
      goto LABEL_94;
    }
  }

  while (1)
  {
    v44 = v40 - 1;
    v45 = &v42[16 * v40 - 16];
    v46 = &v10[16 * v40];
    if (v40 >= 4)
    {
      v51 = &v42[16 * v40];
      v52 = *(v51 - 8);
      v53 = *(v51 - 7);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_115;
      }

      v56 = *(v51 - 6);
      v55 = *(v51 - 5);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_116;
      }

      v58 = *(v46 + 1);
      v59 = v58 - *v46;
      if (__OFSUB__(v58, *v46))
      {
        goto LABEL_118;
      }

      v57 = __OFADD__(v49, v59);
      v60 = v49 + v59;
      if (v57)
      {
        goto LABEL_121;
      }

      if (v60 >= v54)
      {
        v74 = *v45;
        v73 = *(v45 + 1);
        v57 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v57)
        {
          goto LABEL_126;
        }

        if (v49 < v75)
        {
          v44 = v40 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_53;
    }

    if (v40 == 3)
    {
      v47 = *(v10 + 4);
      v48 = *(v10 + 5);
      v57 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      v50 = v57;
LABEL_53:
      if (v50)
      {
        goto LABEL_117;
      }

      v62 = *v46;
      v61 = *(v46 + 1);
      v63 = __OFSUB__(v61, v62);
      v64 = v61 - v62;
      v65 = v63;
      if (v63)
      {
        goto LABEL_120;
      }

      v66 = *(v45 + 1);
      v67 = v66 - *v45;
      if (__OFSUB__(v66, *v45))
      {
        goto LABEL_123;
      }

      if (__OFADD__(v64, v67))
      {
        goto LABEL_125;
      }

      if (v64 + v67 >= v49)
      {
        if (v49 < v67)
        {
          v44 = v40 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_68;
    }

    if (v40 < 2)
    {
      goto LABEL_119;
    }

    v69 = *v46;
    v68 = *(v46 + 1);
    v57 = __OFSUB__(v68, v69);
    v64 = v68 - v69;
    v65 = v57;
LABEL_68:
    if (v65)
    {
      goto LABEL_122;
    }

    v71 = *v45;
    v70 = *(v45 + 1);
    v57 = __OFSUB__(v70, v71);
    v72 = v70 - v71;
    if (v57)
    {
      goto LABEL_124;
    }

    if (v72 < v64)
    {
      goto LABEL_82;
    }

LABEL_75:
    if (v44 - 1 >= v40)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_133;
    }

    v76 = &v42[16 * v44 - 16];
    v77 = *v76;
    v78 = &v42[16 * v44];
    v79 = *(v78 + 1);
    sub_1E3EA9524((*a3 + 8 * *v76), (*a3 + 8 * *v78), (*a3 + 8 * v79), __dst, a4);
    if (v7)
    {
      goto LABEL_104;
    }

    if (v79 < v77)
    {
      goto LABEL_109;
    }

    v80 = v10;
    v10 = *(v10 + 2);
    if (v44 > v10)
    {
      goto LABEL_110;
    }

    *v76 = v77;
    *(v76 + 1) = v79;
    if (v44 >= v10)
    {
      goto LABEL_111;
    }

    v40 = (v10 - 1);
    memmove(&v42[16 * v44], v78 + 16, 16 * &v10[-v44 - 1]);
    *(v80 + 2) = v10 - 1;
    v28 = v10 > 2;
    v10 = v80;
    if (!v28)
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  v10 = sub_1E37FFF5C(v10);
LABEL_96:
  v93 = v10 + 16;
  v94 = *(v10 + 2);
  while (v94 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_134;
    }

    v95 = v10;
    v96 = &v10[16 * v94];
    v10 = *v96;
    v97 = &v93[2 * v94];
    v98 = v97[1];
    sub_1E3EA9524((*a3 + 8 * *v96), (*a3 + 8 * *v97), (*a3 + 8 * v98), __dst, a4);
    if (v7)
    {
      break;
    }

    if (v98 < v10)
    {
      goto LABEL_112;
    }

    if (v94 - 2 >= *v93)
    {
      goto LABEL_113;
    }

    *v96 = v10;
    *(v96 + 1) = v98;
    v99 = *v93 - v94;
    if (*v93 < v94)
    {
      goto LABEL_114;
    }

    v94 = *v93 - 1;
    memmove(v97, v97 + 2, 16 * v99);
    *v93 = v94;
    v10 = v95;
  }

LABEL_104:
}

uint64_t sub_1E3EA9524(id *__src, id *a2, id *a3, id *__dst, uint64_t (*a5)(id *, id *))
{
  v5 = __dst;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - a2;
  if (v8 >= v9)
  {
    if (__dst != a2 || &a2[v9] <= __dst)
    {
      v24 = a3;
      memmove(__dst, a2, 8 * v9);
      a3 = v24;
    }

    v12 = &v5[v9];
    v53 = v5;
    v25 = -v5;
    v51 = -v5;
    while (1)
    {
      v26 = v6 - 1;
      v27 = a3 - 1;
      v28 = v12 + v25;
      __dsta = v6;
      while (1)
      {
        if (v12 <= v53 || v6 <= v7)
        {
          v5 = v53;
LABEL_39:
          v41 = v12 - v5;
          if (v6 < v5 || v6 >= &v5[v41])
          {
            v43 = 8 * v41;
            v44 = v6;
            v45 = v5;
            goto LABEL_61;
          }

          if (v6 != v5)
          {
            v43 = 8 * v41;
            v44 = v6;
            v45 = v5;
            goto LABEL_61;
          }

          return 1;
        }

        v55 = v28;
        v30 = v27;
        v31 = v12;
        v32 = *--v12;
        v59 = v32;
        v33 = v26;
        v58 = *v26;
        v34 = v58;
        v35 = v32;
        v36 = v34;
        v37 = a5(&v59, &v58);
        if (v57)
        {

          v45 = v53;
          v48 = v55 / 8;
          v44 = __dsta;
          if (__dsta < v53 || __dsta >= &v53[v55 / 8])
          {
            v43 = 8 * v48;
          }

          else
          {
            if (__dsta == v53)
            {
              return 1;
            }

            v43 = 8 * v48;
          }

LABEL_61:
          memmove(v44, v45, v43);
          return 1;
        }

        v38 = v37;

        a3 = v30;
        v39 = v30 + 1;
        if (v38)
        {
          break;
        }

        v6 = __dsta;
        v26 = v33;
        if (v31 != v39)
        {
          *v30 = *v12;
        }

        v27 = v30 - 1;
        v28 = (v55 - 8);
      }

      v40 = v39 == __dsta;
      v6 = v33;
      v12 = v31;
      v25 = v51;
      if (!v40)
      {
        *v30 = *v33;
        v25 = v51;
        v6 = v33;
      }
    }
  }

  if (__dst != __src || &__src[v8] <= __dst)
  {
    v11 = a3;
    memmove(__dst, __src, 8 * v8);
    a3 = v11;
  }

  v12 = &v5[v8];
  for (i = a3; ; a3 = i)
  {
    if (v5 >= v12 || v6 >= a3)
    {
      v6 = v7;
      goto LABEL_39;
    }

    v14 = v12;
    v15 = v6;
    v59 = *v6;
    v16 = v5;
    v58 = *v5;
    v17 = v58;
    v18 = v59;
    v19 = v17;
    v20 = a5(&v59, &v58);
    if (v57)
    {
      break;
    }

    v21 = v20;
    v57 = 0;

    v12 = v14;
    if ((v21 & 1) == 0)
    {
      v22 = v16;
      v5 = v16 + 1;
      v6 = v15;
      if (v7 == v16)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v7 = *v22;
      goto LABEL_18;
    }

    v22 = v15;
    v6 = v15 + 1;
    v5 = v16;
    if (v7 != v15)
    {
      goto LABEL_17;
    }

LABEL_18:
    ++v7;
  }

  v46 = v14 - v5;
  v47 = v7 < v5 || v7 >= &v5[v46];
  if (v47 || v7 != v5)
  {
    v43 = 8 * v46;
    v44 = v7;
    v45 = v5;
    goto LABEL_61;
  }

  return 1;
}

void *sub_1E3EA9868(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1E4207384();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1E37FEA14(v4, 0);
      sub_1E3EA98FC((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_1E3EA98FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1E4205A54();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E3EA9BD4();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA20, &unk_1E42DA740);
          v9 = sub_1E374111C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E3EA9A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3B2E8;
  if (!qword_1ECF3B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B2E8);
  }

  return result;
}

_BYTE *_s4TeamV16CompetitorStatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3EA9BD4()
{
  result = qword_1ECF3B2F0;
  if (!qword_1ECF3B2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF3DA20, &unk_1E42DA740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B2F0);
  }

  return result;
}

uint64_t sub_1E3EA9C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for SeasonEpisodeListViewLayout();
  a4[1] = sub_1E3C85F24(1);
  v8 = type metadata accessor for SeasonDownloadEpisodeListView(0);
  v9 = v8[6];
  *(a4 + v9) = swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  OUTLINED_FUNCTION_38_55(v10);
  v11 = v8[7];
  *(a4 + v11) = swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  OUTLINED_FUNCTION_38_55(v12);
  v13 = v8[8];
  *(a4 + v13) = swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA78, &unk_1E42A79F0);
  result = OUTLINED_FUNCTION_38_55(v14);
  *a4 = a1;
  v16 = (a4 + v8[9]);
  *v16 = a2;
  v16[1] = a3;
  return result;
}

void sub_1E3EA9D50()
{
  OUTLINED_FUNCTION_31_1();
  v81 = v2;
  v72 = sub_1E4201AE4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = type metadata accessor for SeasonDownloadEpisodeListView(0);
  v10 = OUTLINED_FUNCTION_8_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B310, &qword_1E42DA898);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B308, &qword_1E42DA890);
  OUTLINED_FUNCTION_0_10();
  v74 = v17;
  v75 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v72 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B300, &unk_1E42DA880);
  OUTLINED_FUNCTION_0_10();
  v77 = v22;
  v78 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  v73 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B2F8, &qword_1E42DA878);
  OUTLINED_FUNCTION_0_10();
  v79 = v26;
  v80 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  v76 = v29;
  sub_1E3EAAAAC();
  v30 = v0;
  sub_1E3EADD08(v0, &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v32 = swift_allocObject();
  sub_1E3909650(&v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
  v33 = (v1 + *(v15 + 36));
  *v33 = sub_1E3EADD6C;
  v33[1] = v32;
  v33[2] = 0;
  v33[3] = 0;
  v34 = v72;
  (*(v4 + 104))(v8, *MEMORY[0x1E697C438], v72);
  v35 = sub_1E3EAA568();
  sub_1E42033D4();
  (*(v4 + 8))(v8, v34);
  sub_1E325F6F0(v1, &qword_1ECF3B310, &qword_1E42DA898);
  v36 = v30;
  v37 = sub_1E379540C();
  v39 = v37[5];
  v38 = v37[6];
  v41 = v37[7];
  v40 = v37[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320, &unk_1E429A280);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1E4299720;
  *(v42 + 32) = v41;
  *(v42 + 40) = v40;
  *(v42 + 48) = v39;
  *(v42 + 56) = v38;
  v83 = v42;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  sub_1E32752B0(&qword_1EE23B510, &qword_1ECF2C420, &qword_1E429CDD0, MEMORY[0x1E69E6310]);
  v43 = sub_1E4205DF4();
  v45 = v44;

  v83 = v43;
  v84 = v45;
  v87 = v15;
  v88 = v35;
  OUTLINED_FUNCTION_7_18();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = sub_1E32822E0(OpaqueTypeConformance2, v47, v48);
  v50 = MEMORY[0x1E69E6158];
  v52 = v73;
  v51 = v74;
  sub_1E4203034();

  v53 = v51;
  (*(v75 + 8))(v21, v51);
  v82 = v36;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D998, &qword_1E42AA4F0);
  v83 = v53;
  v84 = v50;
  v85 = OpaqueTypeConformance2;
  v86 = v49;
  OUTLINED_FUNCTION_2_207();
  v55 = swift_getOpaqueTypeConformance2();
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D9E0, &qword_1E42AA520);
  OUTLINED_FUNCTION_2_63();
  v59 = sub_1E32752B0(v57, &qword_1ECF2D9E0, &qword_1E42AA520, v58);
  v83 = v56;
  v84 = v59;
  OUTLINED_FUNCTION_6_10();
  v60 = swift_getOpaqueTypeConformance2();
  v62 = v76;
  v61 = v77;
  sub_1E4203504();
  v63 = v52;
  v64 = v61;
  (*(v78 + 8))(v63, v61);
  v83 = 0;
  v84 = 0xE000000000000000;
  sub_1E42074B4();

  v83 = 0x4C65646F73697045;
  v84 = 0xEF3D64692E747369;
  v65 = sub_1E379540C();
  v66 = *(v65 + 16);
  v67 = *(v65 + 24);

  MEMORY[0x1E69109E0](v66, v67);

  v68 = v83;
  v69 = v84;
  v83 = v64;
  v84 = v54;
  v85 = v55;
  v86 = v60;
  OUTLINED_FUNCTION_11_17();
  v70 = swift_getOpaqueTypeConformance2();
  v71 = v79;
  sub_1E40A7FF0(v68, v69, 5, v79, v70);

  (*(v80 + 8))(v62, v71);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3EAA414(uint64_t a1)
{
  type metadata accessor for EpisodeListInteractor(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SeasonEpisodeListViewLayout();
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_14_145();
      sub_1E3EAAA30(319, v3, v4, MEMORY[0x1E697DCC0]);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_12_141();
        sub_1E3EAAA30(319, v6, v7, MEMORY[0x1E697DCC0]);
        if (v8 <= 0x3F)
        {
          sub_1E3EAAA30(319, &qword_1EE289EB8, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
          if (v9 <= 0x3F)
          {
            sub_1E381ECE4(319);
            if (v10 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1E3EAA568()
{
  result = qword_1ECF3B318;
  if (!qword_1ECF3B318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B310, &qword_1E42DA898);
    sub_1E3EAA5F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B318);
  }

  return result;
}

unint64_t sub_1E3EAA5F4()
{
  result = qword_1ECF3B320;
  if (!qword_1ECF3B320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B328, &qword_1E42DA8A0);
    sub_1E3EAA710();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B358, &unk_1E42DA8B8);
    sub_1E4201134();
    sub_1E32752B0(&qword_1ECF3B360, &qword_1ECF3B358, &unk_1E42DA8B8, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B320);
  }

  return result;
}

unint64_t sub_1E3EAA710()
{
  result = qword_1ECF3B330;
  if (!qword_1ECF3B330)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B338, &qword_1E42DA8A8);
    sub_1E3EAA7C8(v1, v2, v3);
    sub_1E32752B0(&qword_1ECF3B348, &qword_1ECF3B350, &qword_1E42DA8B0, MEMORY[0x1E697C7C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B330);
  }

  return result;
}

unint64_t sub_1E3EAA7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3B340;
  if (!qword_1ECF3B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B340);
  }

  return result;
}

void sub_1E3EAA864(uint64_t a1)
{
  sub_1E3EAAA30(319, qword_1EE282B40, type metadata accessor for ImageViewModel, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1E3EAAA30(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1E3EAAA30(319, qword_1EE243750, type metadata accessor for DownloadStateIndicatorViewModel, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SeasonEpisodeListViewLayout();
        if (v4 <= 0x3F)
        {
          sub_1E389B768();
          if (v5 <= 0x3F)
          {
            OUTLINED_FUNCTION_14_145();
            sub_1E3EAAA30(319, v6, v7, MEMORY[0x1E697DCC0]);
            if (v8 <= 0x3F)
            {
              OUTLINED_FUNCTION_12_141();
              sub_1E3EAAA30(319, v9, v10, MEMORY[0x1E697DCC0]);
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

void sub_1E3EAAA30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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