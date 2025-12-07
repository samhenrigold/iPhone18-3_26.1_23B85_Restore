id getLNLogCategoryGeneral()
{
  if (getLNLogCategoryGeneral_onceToken[0] != -1)
  {
    dispatch_once(getLNLogCategoryGeneral_onceToken, &__block_literal_global_4013);
  }

  v1 = getLNLogCategoryGeneral_logger;

  return v1;
}

id sub_18EF7FCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_18F093B5C();

  v9 = sub_18F0932BC();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(a4, 1, v9) != 1)
  {
    v10 = sub_18F09324C();
    (*(*(v9 - 8) + 8))(a4, v9);
  }

  v11 = [v5 initWithType:a1 bundleIdentifier:v8 url:v10];

  return v11;
}

uint64_t sub_18EF7FDF8(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_18F093B8C();

  return v3;
}

id LSBundleRecord.effectiveBundleIdentifier.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - v2;
  v4 = sub_18EF7FDF8(v0);
  if (!v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = v5;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      v14 = v0;
      if ((sub_18F028A08() & 1) == 0)
      {
        v17 = [v13 URL];
        sub_18F09327C();

        v18 = sub_18F0932BC();
        OUTLINED_FUNCTION_0_5(v18);
        v19 = objc_allocWithZone(LNEffectiveBundleIdentifier);
        v11 = sub_18EF7FCF0(1, v6, v7, v3);
        goto LABEL_10;
      }

      v15 = [v13 containingBundleRecord];
      if (v15)
      {
        v16 = v15;
        v11 = LSBundleRecord.effectiveBundleIdentifier.getter();

LABEL_10:
        return v11;
      }
    }

    else
    {
    }

    return 0;
  }

  v8 = [v0 URL];
  sub_18F09327C();

  v9 = sub_18F0932BC();
  OUTLINED_FUNCTION_0_5(v9);
  v10 = objc_allocWithZone(LNEffectiveBundleIdentifier);
  return sub_18EF7FCF0(0, v6, v7, v3);
}

id OUTLINED_FUNCTION_0_1()
{

  return sub_18EFABB48(808334898, 0xE400000000000000, 0, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_0_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_14(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_18(uint64_t a1)
{

  return swift_once();
}

void sub_18EF802BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id getLNLogCategoryMetadata()
{
  if (getLNLogCategoryMetadata_onceToken[0] != -1)
  {
    dispatch_once(getLNLogCategoryMetadata_onceToken, &__block_literal_global_17);
  }

  v1 = getLNLogCategoryMetadata_logger;

  return v1;
}

uint64_t __getLNLogCategoryMetadata_block_invoke()
{
  getLNLogCategoryMetadata_logger = os_log_create(LNLogSubsystem, "Metadata");

  return MEMORY[0x1EEE66BB8]();
}

id LNValueTypeObjectClassesForCoding()
{
  if (LNValueTypeObjectClassesForCoding_onceToken != -1)
  {
    dispatch_once(&LNValueTypeObjectClassesForCoding_onceToken, &__block_literal_global_4999);
  }

  v1 = LNValueTypeObjectClassesForCoding_objectClassesForCoding;

  return v1;
}

uint64_t OUTLINED_FUNCTION_224()
{

  return sub_18EF86A6C();
}

uint64_t sub_18EF825F4(uint64_t a1, unint64_t *a2, void *a3)
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

id getLNLogCategoryPolicy()
{
  if (getLNLogCategoryPolicy_onceToken != -1)
  {
    dispatch_once(&getLNLogCategoryPolicy_onceToken, &__block_literal_global_29);
  }

  v1 = getLNLogCategoryPolicy_logger;

  return v1;
}

uint64_t __getLNLogCategoryPolicy_block_invoke()
{
  getLNLogCategoryPolicy_logger = os_log_create(LNLogSubsystem, "Policy");

  return MEMORY[0x1EEE66BB8]();
}

id getLNLogCategoryConnection()
{
  if (getLNLogCategoryConnection_onceToken != -1)
  {
    dispatch_once(&getLNLogCategoryConnection_onceToken, &__block_literal_global_5);
  }

  v1 = getLNLogCategoryConnection_logger;

  return v1;
}

id getLNLogCategoryExecution()
{
  if (getLNLogCategoryExecution_onceToken != -1)
  {
    dispatch_once(&getLNLogCategoryExecution_onceToken, &__block_literal_global_8_4017);
  }

  v1 = getLNLogCategoryExecution_logger;

  return v1;
}

uint64_t __getLNLogCategoryConnection_block_invoke()
{
  getLNLogCategoryConnection_logger = os_log_create(LNLogSubsystem, "Connection");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_18EF82E14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 OUTLINED_FUNCTION_2_1@<Q0>(__n128 *a1@<X8>)
{
  result = a1[1];
  v1[18] = result;
  v1[19].n128_u64[0] = a1[2].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_7(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_18F0345A0(a1, a2, a3, a4, a5, v7, v6, v5);
}

uint64_t OUTLINED_FUNCTION_2_9(uint64_t a1)
{

  return sub_18F09444C();
}

unint64_t OUTLINED_FUNCTION_2_14(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18EFAF54C();
}

void OUTLINED_FUNCTION_2_15()
{

  JUMPOUT(0x193AD8780);
}

void OUTLINED_FUNCTION_2_16()
{

  JUMPOUT(0x193AD8780);
}

uint64_t sub_18EF83080(void *a1)
{
  v1 = a1;
  v2 = LSBundleRecord.isAppIntentsEnabled.getter();

  return v2 & 1;
}

uint64_t LSBundleRecord.isAppIntentsEnabled.getter()
{
  v1 = v0;
  if ([v0 isLinkEnabled])
  {
    return 1;
  }

  v2 = [v0 entitlements];
  OUTLINED_FUNCTION_2_18();
  v3 = sub_18F093B5C();
  sub_18EF825F4(0, &unk_1ED5FEC88, 0x1E695DEC8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [v2 objectForKey:v3 ofClass:ObjCClassFromMetadata];

  if (!v5)
  {
    v68 = 0u;
    v69 = 0u;
    sub_18EF82E14(&v68, &qword_1EACB9180, &qword_18F09BD30);
    v6 = [v1 entitlements];
    OUTLINED_FUNCTION_2_18();
    v7 = sub_18F093B5C();
    v8 = [v6 objectForKey:v7 ofClass:ObjCClassFromMetadata];

    if (v8)
    {
      sub_18F093FAC();
      goto LABEL_6;
    }

    v68 = 0u;
    v69 = 0u;
    sub_18EF82E14(&v68, &qword_1EACB9180, &qword_18F09BD30);
    v10 = [v1 entitlements];
    v11 = sub_18F093B5C();
    sub_18EF825F4(0, &qword_1ED5FE760, 0x1E696AD98);
    v12 = [v10 objectForKey:v11 ofClass:swift_getObjCClassFromMetadata()];

    if (v12)
    {
      sub_18F093FAC();
      swift_unknownObjectRelease();
    }

    else
    {
      v66 = 0u;
      v67 = 0u;
    }

    v68 = v66;
    v69 = v67;
    if (*(&v67 + 1))
    {
      if (swift_dynamicCast())
      {
        v13 = [v65 BOOLValue];

        if (v13)
        {
          return 1;
        }
      }
    }

    else
    {
      sub_18EF82E14(&v68, &qword_1EACB9180, &qword_18F09BD30);
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = [v14 applicationExtensionRecords];
      sub_18EF825F4(0, &qword_1EACB7168, 0x1E69635D0);
      sub_18F04C338();
      OUTLINED_FUNCTION_284();
      v16 = sub_18F093E6C();

      v64 = v16;
      if ((v16 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_18F093FFC();
        v17 = sub_18F093E8C();
        v25 = *(&v68 + 1);
        v16 = v68;
        v27 = *(&v69 + 1);
        v26 = v69;
        v28 = v70;
      }

      else
      {
        v29 = -1 << *(v16 + 32);
        v25 = v16 + 56;
        v26 = ~v29;
        v30 = -v29;
        if (v30 < 64)
        {
          v31 = ~(-1 << v30);
        }

        else
        {
          v31 = -1;
        }

        v28 = v31 & *(v16 + 56);

        v27 = 0;
      }

      v63 = v26;
      v32 = (v26 + 64) >> 6;
      while (1)
      {
        if (v16 < 0)
        {
          v17 = sub_18F09400C();
          if (!v17 || (v17 = swift_dynamicCast(), (v35 = v66) == 0))
          {
LABEL_35:
            OUTLINED_FUNCTION_12_4(v17, v18, v19, v20, v21, v22, v23, v24, v63, v64);

            break;
          }
        }

        else
        {
          v33 = v27;
          v34 = v28;
          if (!v28)
          {
            while (1)
            {
              v27 = v33 + 1;
              if (__OFADD__(v33, 1))
              {
                break;
              }

              if (v27 >= v32)
              {
                goto LABEL_35;
              }

              v34 = *(v25 + 8 * v27);
              ++v33;
              if (v34)
              {
                goto LABEL_29;
              }
            }

            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            swift_once();
LABEL_38:
            swift_beginAccess();
            v37 = qword_1ED5FDAE0;
            v38 = sub_18EFA0A74(qword_1ED5FDAE0);

            for (i = 0; ; ++i)
            {
              if (v38 == i)
              {

                return 0;
              }

              if ((v37 & 0xC000000000000001) != 0)
              {
                v40 = MEMORY[0x193AD8BA0](i, v37);
              }

              else
              {
                if (i >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_85;
                }

                v40 = *(v37 + 8 * i + 32);
              }

              v41 = v40;
              if (__OFADD__(i, 1))
              {
                goto LABEL_84;
              }

              v42 = &v40[OBJC_IVAR___swift_DaemonRecord_attributionBundleIdentifier];
              swift_beginAccess();
              v44 = *v42;
              v43 = *(v42 + 1);

              v45 = sub_18EF7FDF8(v1);
              v47 = v46;
              if (v43)
              {
                if (v46)
                {
                  if (v44 == v45 && v43 == v46)
                  {

                    return 1;
                  }

                  v49 = OUTLINED_FUNCTION_11_5(v45, v46, v45);

                  if (v49)
                  {
                    goto LABEL_80;
                  }
                }

                else
                {
                }
              }

              else
              {

                if (!v47)
                {
                  goto LABEL_80;
                }
              }
            }
          }

LABEL_29:
          v28 = (v34 - 1) & v34;
          v17 = *(*(v16 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v34)))));
          v35 = v17;
          if (!v17)
          {
            goto LABEL_35;
          }
        }

        v36 = [v35 swift_isAppIntentsEnabled];

        if (v36)
        {
          OUTLINED_FUNCTION_12_4(v17, v18, v19, v20, v21, v22, v23, v24, v63, v64);
LABEL_80:

          return 1;
        }
      }
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
LABEL_37:
      if (qword_1ED5FDB08 != -1)
      {
        goto LABEL_88;
      }

      goto LABEL_38;
    }

    if (qword_1EACB6E10 != -1)
    {
      swift_once();
    }

    v50 = qword_1EACB6E18;
    v51 = sub_18EFA0A74(qword_1EACB6E18);
    for (j = 0; ; ++j)
    {
      if (v51 == j)
      {
        goto LABEL_37;
      }

      if ((v50 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x193AD8BA0](j, v50);
      }

      else
      {
        if (j >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_87;
        }

        v53 = *(v50 + 8 * j + 32);
      }

      v54 = v53;
      if (__OFADD__(j, 1))
      {
        goto LABEL_86;
      }

      v55 = LSApplicationExtensionRecord.attributionBundleIdentifier.getter();
      v57 = v56;
      v58 = sub_18EF7FDF8(v1);
      v60 = v59;
      if (!v57)
      {
        break;
      }

      if (!v59)
      {

LABEL_76:

        continue;
      }

      if (v55 == v58 && v57 == v59)
      {

        return 1;
      }

      v62 = OUTLINED_FUNCTION_11_5(v58, v59, v58);

      if (v62)
      {
        return 1;
      }
    }

    if (!v60)
    {
      return 1;
    }

    goto LABEL_76;
  }

  sub_18F093FAC();
LABEL_6:
  swift_unknownObjectRelease();
  sub_18EF82E14(&v68, &qword_1EACB9180, &qword_18F09BD30);
  return 1;
}

uint64_t __getLNLogCategoryGeneral_block_invoke()
{
  getLNLogCategoryGeneral_logger = os_log_create(LNLogSubsystem, "General");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __getLNLogCategoryExecution_block_invoke()
{
  getLNLogCategoryExecution_logger = os_log_create(LNLogSubsystem, "Execution");

  return MEMORY[0x1EEE66BB8]();
}

void sub_18EF83CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_8_5()
{

  JUMPOUT(0x193AD8780);
}

uint64_t OUTLINED_FUNCTION_8_6()
{
}

void sub_18EF84150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_180();
  v42 = v19;
  v21 = v20;
  v23 = v22;
  sub_18F093BCC();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_220();
  sub_18F093BBC();
  sub_18F093B9C();
  v26 = v25;
  v27 = OUTLINED_FUNCTION_264();
  v28(v27);
  if (v26 >> 60 == 15)
  {
    v21(0);
    OUTLINED_FUNCTION_171();
LABEL_5:
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    goto LABEL_6;
  }

  v33 = sub_18F09302C();
  OUTLINED_FUNCTION_277(v33);
  v34 = OUTLINED_FUNCTION_367();
  sub_18EF844C4(v34, v35);
  sub_18F09301C();
  v36 = OUTLINED_FUNCTION_138();
  v37 = v21(v36);
  sub_18EF8558C(v42);
  OUTLINED_FUNCTION_320();
  sub_18F09300C();

  v38 = OUTLINED_FUNCTION_367();
  sub_18EF9A498(v38, v39);
  v40 = OUTLINED_FUNCTION_367();
  sub_18EF9A498(v40, v41);
  if (!v18)
  {
    v29 = v23;
    v30 = 0;
    v31 = 1;
    v32 = v37;
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_177();
}

uint64_t sub_18EF84318(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void OUTLINED_FUNCTION_10()
{
  *(v0 - 264) = 0;
  *(v0 - 256) = 0;
  *(v0 - 248) = 0;
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
}

uint64_t OUTLINED_FUNCTION_10_5(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_18F093C1C();
}

uint64_t OUTLINED_FUNCTION_16()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_16_2(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_18F093C1C();
}

uint64_t OUTLINED_FUNCTION_16_3()
{

  return sub_18F0937DC();
}

void sub_18EF844C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void LNActionMetadata.CodableWrapper.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_180();
  v9 = v8;
  v98 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7308, &qword_18F09BD40);
  OUTLINED_FUNCTION_95(v11);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_135();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7310, &qword_18F09BD48);
  OUTLINED_FUNCTION_95(v13);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_133(v15, v98);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  OUTLINED_FUNCTION_95(v16);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_135();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7528, &qword_18F09BDE8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_21();
  v20 = type metadata accessor for LNActionMetadata.CodableWrapper(v19);
  OUTLINED_FUNCTION_36();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_330();
  v23 = *(v22 + 40);
  v24 = _s14CodableWrapperVMa_0(0);
  v103 = v23;
  OUTLINED_FUNCTION_171();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
  v28 = *(v20 + 44);
  v29 = _s14CodableWrapperVMa_1(0);
  OUTLINED_FUNCTION_171();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
  v33 = *(v20 + 48);
  v34 = _s14CodableWrapperVMa_8(0);
  v104 = v6;
  OUTLINED_FUNCTION_171();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  v38 = v9[3];
  v39 = OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_190(v39, v40);
  sub_18EF85AD8();
  sub_18F09459C();
  if (v7)
  {
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_312();
    OUTLINED_FUNCTION_334(0xF000000000000007);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_306();

    sub_18EF933AC(v104 + v103, &qword_1EACB72D0);
    sub_18EF933AC(v104 + v28, &unk_1EACB7310);
    sub_18EF933AC(v104 + v33, &qword_1EACB7308);
    v41 = OUTLINED_FUNCTION_374();
    sub_18EFA3D90(v41);
    if (v38)
    {
      OUTLINED_FUNCTION_116();
    }

    sub_18EFA4FC0(0xF000000000000007);
  }

  else
  {
    *v104 = sub_18F09427C();
    v104[1] = v42;
    LOBYTE(v105) = 1;
    v104[2] = sub_18F09427C();
    v104[3] = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73B0, &qword_18F09BD80);
    OUTLINED_FUNCTION_89(&unk_1ED5FF4A0);
    OUTLINED_FUNCTION_280();
    sub_18F09426C();
    v104[4] = v105;
    LOBYTE(v105) = 3;
    v104[5] = sub_18F09423C();
    v104[6] = v44;
    OUTLINED_FUNCTION_280();
    sub_18F09426C();
    v104[7] = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73C0, &qword_18F09BD88);
    sub_18EF861C4();
    sub_18F09426C();
    v104[8] = v105;
    OUTLINED_FUNCTION_5();
    sub_18EF8558C(v45);
    OUTLINED_FUNCTION_310();
    sub_18F09426C();
    sub_18EF872D4();
    OUTLINED_FUNCTION_196();
    sub_18EF8558C(v46);
    sub_18F09426C();
    sub_18EF872D4();
    OUTLINED_FUNCTION_195();
    sub_18EF8558C(v47);
    sub_18F09426C();
    sub_18EF872D4();
    LOBYTE(v105) = 9;
    sub_18F09424C();
    OUTLINED_FUNCTION_116();
    *(v104 + *(v48 + 52)) = v49;
    type metadata accessor for LNActionModes(0);
    OUTLINED_FUNCTION_194();
    sub_18EF8558C(v50);
    OUTLINED_FUNCTION_0();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_335(*(v51 + 56));
    OUTLINED_FUNCTION_57(11);
    sub_18F09424C();
    OUTLINED_FUNCTION_116();
    *(v104 + *(v52 + 60)) = v53;
    type metadata accessor for LNActionAuthenticationPolicy(0);
    OUTLINED_FUNCTION_193();
    sub_18EF8558C(v54);
    OUTLINED_FUNCTION_0();
    sub_18F0942CC();
    OUTLINED_FUNCTION_285();
    *(v57 + *(v55 + 64)) = v56;
    OUTLINED_FUNCTION_57(13);
    sub_18F09424C();
    OUTLINED_FUNCTION_116();
    *(v104 + *(v58 + 68)) = v59;
    sub_18EF8882C();
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_44();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    *(v104 + *(v60 + 72)) = v105;
    type metadata accessor for LNActionOutputFlags(0);
    OUTLINED_FUNCTION_192();
    sub_18EF8558C(v61);
    OUTLINED_FUNCTION_0();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_335(*(v62 + 76));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7410, &qword_18F09BD90);
    sub_18EF88950();
    OUTLINED_FUNCTION_0();
    sub_18F0942CC();
    OUTLINED_FUNCTION_285();
    *(v65 + *(v63 + 80)) = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7428, &qword_18F09BD98);
    sub_18EF8AED4();
    OUTLINED_FUNCTION_0();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    *(v104 + *(v66 + 84)) = v105;
    v102 = sub_18EFF2E98();
    OUTLINED_FUNCTION_116();
    *(v104 + *(v67 + 88)) = v102;
    sub_18EF9561C();
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_44();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    *(v104 + *(v68 + 92)) = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7450, &qword_18F09BDA8);
    sub_18EF956C0();
    OUTLINED_FUNCTION_0();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    *(v104 + *(v69 + 96)) = v105;
    OUTLINED_FUNCTION_57(21);
    sub_18F09423C();
    v101 = v70;
    OUTLINED_FUNCTION_116();
    v72 = (v104 + *(v71 + 100));
    *v72 = v73;
    v72[1] = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
    sub_18EF9CC4C();
    OUTLINED_FUNCTION_0();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    *(v104 + *(v74 + 104)) = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7488, &qword_18F09BDB8);
    sub_18F013430();
    OUTLINED_FUNCTION_0();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    *(v104 + *(v75 + 108)) = v105;
    OUTLINED_FUNCTION_57(24);
    sub_18F09423C();
    v100 = v76;
    OUTLINED_FUNCTION_116();
    v78 = (v104 + *(v77 + 112));
    *v78 = v79;
    v78[1] = v100;
    sub_18EF9A1DC();
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_44();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    v81 = v104 + *(v80 + 116);
    *v81 = v105;
    v81[16] = v106;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74A8, &qword_18F09BDC0);
    sub_18F0134B4();
    OUTLINED_FUNCTION_0();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    *(v104 + *(v82 + 120)) = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74C0, &qword_18F09BDC8);
    sub_18F013538();
    OUTLINED_FUNCTION_0();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    *(v104 + *(v83 + 124)) = v105;
    sub_18EF99E5C();
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_44();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    *(v104 + *(v84 + 128)) = v105;
    OUTLINED_FUNCTION_57(29);
    sub_18F09423C();
    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_290(v86, v87, *(v85 + 132));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74E0, &qword_18F09BDD0);
    sub_18EF9CDD0();
    OUTLINED_FUNCTION_0();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    *(v104 + *(v88 + 136)) = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74F8, &qword_18F09BDD8);
    sub_18F0135BC();
    OUTLINED_FUNCTION_0();
    sub_18F09426C();
    OUTLINED_FUNCTION_116();
    *(v104 + *(v89 + 140)) = v105;
    type metadata accessor for LNActionPresentationStyle(0);
    OUTLINED_FUNCTION_207();
    sub_18EF8558C(v90);
    OUTLINED_FUNCTION_0();
    sub_18F0942CC();
    OUTLINED_FUNCTION_285();
    *(v93 + *(v91 + 144)) = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7518, &qword_18F09BDE0);
    sub_18EF9FAC4();
    OUTLINED_FUNCTION_0();
    sub_18F0942CC();
    v94 = OUTLINED_FUNCTION_6();
    v95(v94);
    OUTLINED_FUNCTION_285();
    *(v104 + *(v96 + 148)) = v97;
    OUTLINED_FUNCTION_198();
    sub_18EF86A14(v104, v99);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_28();
    sub_18EF86A6C();
  }

  OUTLINED_FUNCTION_177();
}

unint64_t sub_18EF8558C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_293(a1);
  if (!result)
  {
    v3(255);
    OUTLINED_FUNCTION_142();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

id OUTLINED_FUNCTION_258(uint64_t a1, const char *a2)
{
  v5 = *(v3 - 312);

  return [v5 a2];
}

double OUTLINED_FUNCTION_13_3()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  return result;
}

void sub_18EF856A0()
{
  OUTLINED_FUNCTION_29();
  if (v2)
  {
    OUTLINED_FUNCTION_217();
  }

  else
  {
    OUTLINED_FUNCTION_157();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
    OUTLINED_FUNCTION_106();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB78A0, &qword_18F09DDD8);
      v4 = *(v0 + 32);
    }

    v5 = OUTLINED_FUNCTION_52(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t OUTLINED_FUNCTION_38(uint64_t a1, uint64_t a2)
{
  *a2 = 1;
  *(a2 + 8) = 4;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_38_0(uint64_t a1)
{

  return sub_18F0941DC();
}

uint64_t OUTLINED_FUNCTION_71()
{

  return sub_18F0942CC();
}

void OUTLINED_FUNCTION_17()
{
  *(v0 - 264) = 0;
  *(v0 - 256) = 0;
  *(v0 - 248) = 0;
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
}

uint64_t OUTLINED_FUNCTION_17_1()
{
  *(v0 + 392) = 0;
  *(v0 + 400) = 0xE000000000000000;

  return sub_18F09406C();
}

uint64_t OUTLINED_FUNCTION_274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, uint64_t a15)
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

void sub_18EF8592C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_51();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_144();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7860, &qword_18F09DA60);
    OUTLINED_FUNCTION_106();
    if (*(v7 + 84) == v3)
    {
      OUTLINED_FUNCTION_254();
    }

    else
    {
      if (v3 == 0x7FFFFFFF)
      {
        OUTLINED_FUNCTION_388(v2[6]);
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
      OUTLINED_FUNCTION_106();
      if (*(v10 + 84) == v3)
      {
        v6 = v9;
        v8 = v2[7];
      }

      else
      {
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7868, &qword_18F09DA68);
        v8 = v2[8];
      }
    }

    v5 = v1 + v8;
  }

  __swift_storeEnumTagSinglePayload(v5, v0, v0, v6);
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_18EF85AD8()
{
  result = qword_1ED5FF258;
  if (!qword_1ED5FF258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF258);
  }

  return result;
}

unint64_t sub_18EF85B48(uint64_t a1)
{
  result = OUTLINED_FUNCTION_293(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB73B0, &qword_18F09BD80);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_18EF85BC4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      v3 = 0x656C676E616DLL;
      goto LABEL_16;
    case 2:
      return 0xD000000000000021;
    case 3:
      return 0xD000000000000011;
    case 4:
      return 0xD000000000000023;
    case 5:
      return 0xD00000000000001ALL;
    case 6:
      return 0x656C746974;
    case 7:
    case 8:
    case 19:
      return 0xD000000000000013;
    case 9:
      return 0x577070416E65706FLL;
    case 10:
      v4 = 0x726F70707573;
      goto LABEL_23;
    case 11:
      return 0x766F637369447369;
    case 12:
    case 20:
    case 23:
      return 0xD000000000000014;
    case 13:
      return 0xD000000000000011;
    case 14:
      return 0x795474757074756FLL;
    case 15:
      return 0x6C4674757074756FLL;
    case 16:
      v4 = 0x656D61726170;
LABEL_23:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
      break;
    case 17:
    case 29:
      result = 0xD000000000000016;
      break;
    case 18:
      result = 0xD000000000000018;
      break;
    case 21:
      result = 0xD000000000000015;
      break;
    case 22:
    case 26:
      result = 0xD000000000000017;
      break;
    case 24:
      result = 0xD00000000000001BLL;
      break;
    case 25:
      result = 0x6566664565646973;
      break;
    case 27:
      result = 0xD00000000000001CLL;
      break;
    case 28:
      result = 0xD000000000000012;
      break;
    case 30:
      result = 0x69617274736E6F63;
      break;
    case 31:
      v3 = 0x65776F6C6C61;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x5464000000000000;
      break;
    case 32:
      result = 0xD000000000000011;
      break;
    case 33:
      result = 0x72506D6574737973;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *_s14CodableWrapperV10CodingKeysOwst_3(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDE)
  {
    v6 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
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
        JUMPOUT(0x18EF860E0);
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
          *result = a2 + 33;
        }

        break;
    }
  }

  return result;
}

uint64_t _s14CodableWrapperV10CodingKeysOwet_3(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDF)
  {
    if (a2 + 33 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 33) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 34;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v5 = v6 - 34;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_18EF861C4()
{
  result = qword_1ED5FF488;
  if (!qword_1ED5FF488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB73C0, &qword_18F09BD88);
    sub_18EF8558C(&unk_1ED5FF410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF488);
  }

  return result;
}

uint64_t sub_18EF86278@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7EF0, &qword_18F0A0DF8);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - v8;
  v10 = _s14CodableWrapperVMa(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF86678();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18[0] = v10;
  v18[1] = v6;
  v13 = v12;
  v14 = v20;
  type metadata accessor for LNEffectiveBundleIdentifierType(0);
  v24 = 0;
  sub_18EF8558C(&unk_1ED5FCFB8);
  v15 = v21;
  sub_18F0942CC();
  *v13 = v25;
  v23 = 1;
  v13[1] = sub_18F09427C();
  v13[2] = v16;
  sub_18F0932BC();
  v22 = 2;
  sub_18EF8558C(&unk_1ED5FF550);
  sub_18F09426C();
  (*(v14 + 8))(v9, v15);
  sub_18EF869B4();
  sub_18EF86A14(v13, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_18EF86A6C();
}

unint64_t sub_18EF86678()
{
  result = qword_1ED5FD058[0];
  if (!qword_1ED5FD058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED5FD058);
  }

  return result;
}

uint64_t sub_18EF866FC(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 7107189;
}

_BYTE *sub_18EF86758(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_211(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_209(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18EF86814);
      case 4:
        result = OUTLINED_FUNCTION_210(result, v6);
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
          result = OUTLINED_FUNCTION_181(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18EF8683C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_170(v8);
}

uint64_t OUTLINED_FUNCTION_278(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 0;

  return swift_willThrow();
}

uint64_t sub_18EF869B4()
{
  OUTLINED_FUNCTION_115();
  v4 = OUTLINED_FUNCTION_269(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_36();
  v6 = OUTLINED_FUNCTION_108();
  v7(v6);
  return v0;
}

uint64_t sub_18EF86A14(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_138();
  v4(v3);
  OUTLINED_FUNCTION_36();
  v5 = OUTLINED_FUNCTION_108();
  v6(v5);
  return a2;
}

uint64_t sub_18EF86A6C()
{
  v1 = OUTLINED_FUNCTION_204();
  v2(v1);
  OUTLINED_FUNCTION_36();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_18EF86B18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB78A0, &qword_18F09DDD8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7EF8, &qword_18F0A0E00);
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v7 = v32 - v6;
  v8 = _s14CodableWrapperVMa_0(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v9 + 28);
  v13 = sub_18F0932BC();
  v41 = v12;
  __swift_storeEnumTagSinglePayload(v11 + v12, 1, 1, v13);
  v14 = *(v8 + 32);
  v15 = sub_18F0931CC();
  v42 = v14;
  v44 = v11;
  __swift_storeEnumTagSinglePayload(v11 + v14, 1, 1, v15);
  v16 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v16);
  sub_18EF870B4();
  v39 = v7;
  v17 = v40;
  sub_18F09459C();
  if (v17)
  {
    v20 = v41;
    v21 = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    v22 = v44;
    sub_18EF933AC(v44 + v20, &qword_1EACB72C8);
    return sub_18EF933AC(v22 + v21, &qword_1EACB78A0);
  }

  else
  {
    v40 = v13;
    v33 = v8;
    v34 = v15;
    v18 = v36;
    v51 = 0;
    v19 = sub_18F09427C();
    v23 = v44;
    *v44 = v19;
    v23[1] = v24;
    v50 = 1;
    v25 = sub_18F09423C();
    v27 = v26;
    v23[2] = v25;
    v23[3] = v26;
    v49 = 2;
    v28 = sub_18F09423C();
    v32[1] = v29;
    v32[2] = v27;
    v23[4] = v28;
    v23[5] = v29;
    v48 = 3;
    sub_18EF8558C(&unk_1ED5FF550);
    sub_18F09426C();
    sub_18EF872D4();
    v47 = 4;
    sub_18EF8558C(&unk_1ED5FF4C0);
    sub_18F09426C();
    sub_18EF872D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB78B0, &qword_18F09DDE0);
    v46 = 5;
    sub_18EF87328();
    sub_18F09426C();
    v30 = *(v33 + 36);
    (*(v18 + 8))(v39, v38);
    *(v23 + v30) = v45;
    sub_18EF86A14(v23, v35);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    return sub_18EF86A6C();
  }
}

unint64_t sub_18EF870B4()
{
  result = qword_1ED5FF500;
  if (!qword_1ED5FF500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF500);
  }

  return result;
}

unint64_t sub_18EF87110(char a1)
{
  result = 7955819;
  switch(a1)
  {
    case 1:
      result = 0x56746C7561666564;
      break;
    case 2:
      result = 0x656C626174;
      break;
    case 3:
      result = 0x5255656C646E7562;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x74616E7265746C61;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_18EF871F0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_211(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_209(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18EF872ACLL);
      case 4:
        result = OUTLINED_FUNCTION_210(result, v6);
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
          result = OUTLINED_FUNCTION_181(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18EF872D4()
{
  OUTLINED_FUNCTION_115();
  v4 = OUTLINED_FUNCTION_269(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_36();
  v6 = OUTLINED_FUNCTION_108();
  v7(v6);
  return v0;
}

unint64_t sub_18EF87328()
{
  result = qword_1ED5FD7F8;
  if (!qword_1ED5FD7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB78B0, &qword_18F09DDE0);
    sub_18EF8558C(&unk_1ED5FD760);
    sub_18EF8558C(&unk_1ED5FF4F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD7F8);
  }

  return result;
}

uint64_t sub_18EF87414(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_170(v8);
}

uint64_t sub_18EF874B4()
{
  OUTLINED_FUNCTION_62();
  if (v2)
  {
    return OUTLINED_FUNCTION_16();
  }

  OUTLINED_FUNCTION_161();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_106();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB78A0, &qword_18F09DDD8);
    v5 = *(v1 + 32);
  }

  v6 = OUTLINED_FUNCTION_120(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_20_0()
{
}

uint64_t sub_18EF875F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7868, &qword_18F09DA68);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v27[1] = v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v27[2] = v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7860, &qword_18F09DA60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = _s14CodableWrapperVMa_0(0);
  MEMORY[0x1EEE9AC00](v8);
  v28 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F08, &qword_18F0A0E08);
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  v13 = _s14CodableWrapperVMa_1(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 20);
  v18 = _s14CodableWrapperVMa_2(0);
  v34 = v17;
  __swift_storeEnumTagSinglePayload(&v16[v17], 1, 1, v18);
  v35 = *(v13 + 28);
  __swift_storeEnumTagSinglePayload(&v16[v35], 1, 1, v8);
  v32 = v13;
  v19 = *(v13 + 32);
  v20 = _s14CodableWrapperVMa_5(0);
  v36 = v19;
  __swift_storeEnumTagSinglePayload(&v16[v19], 1, 1, v20);
  v21 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v21);
  sub_18EF87D6C();
  v31 = v12;
  v22 = v33;
  sub_18F09459C();
  if (v22)
  {
    v25 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    sub_18EF933AC(&v16[v34], &qword_1EACB7860);
    sub_18EF933AC(&v16[v25], &qword_1EACB72D0);
    return sub_18EF933AC(&v16[v36], &qword_1EACB7868);
  }

  else
  {
    v33 = v20;
    v43 = 0;
    sub_18EF8558C(&unk_1ED5FF4F8);
    v23 = v28;
    v24 = v30;
    sub_18F0942CC();
    sub_18EF88240(v23, v16);
    v42 = 1;
    sub_18EF8558C(&unk_1ED5FE420);
    sub_18F09426C();
    sub_18EF872D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    v41 = 2;
    sub_18EF883DC();
    sub_18F0942CC();
    *&v16[*(v32 + 24)] = v38;
    v40 = 3;
    sub_18F09426C();
    sub_18EF872D4();
    v39 = 4;
    sub_18EF8558C(&unk_1ED5FE2E8);
    sub_18F09426C();
    (*(v29 + 8))(v31, v24);
    sub_18EF872D4();
    sub_18EF86A14(v16, v27[0]);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    return sub_18EF86A6C();
  }
}

unint64_t sub_18EF87D6C()
{
  result = qword_1ED5FE318;
  if (!qword_1ED5FE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE318);
  }

  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18EF87DEC()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_51();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_144();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
    OUTLINED_FUNCTION_106();
    if (*(v7 + 84) == v3)
    {
      OUTLINED_FUNCTION_254();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7830, &qword_18F09DA08);
      OUTLINED_FUNCTION_106();
      if (*(v9 + 84) != v3)
      {
        *(v1 + *(v2 + 32)) = v0;
        return;
      }

      OUTLINED_FUNCTION_331();
    }

    v5 = v1 + v8;
  }

  __swift_storeEnumTagSinglePayload(v5, v0, v0, v6);
}

uint64_t sub_18EF87F20()
{
  OUTLINED_FUNCTION_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7870, &qword_18F09DA70);
  OUTLINED_FUNCTION_106();
  if (*(v3 + 84) == v2)
  {
    v4 = OUTLINED_FUNCTION_144();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7878, &qword_18F09DA78);
    OUTLINED_FUNCTION_254();
    v4 = v1 + v6;
  }

  return __swift_storeEnumTagSinglePayload(v4, v0, v0, v5);
}

uint64_t sub_18EF87FF4(char a1)
{
  result = 0x7470697263736564;
  switch(a1)
  {
    case 1:
      result = 0x79726F6765746163;
      break;
    case 2:
      result = 0x654B686372616573;
      break;
    case 3:
      result = 0x6156746C75736572;
      break;
    case 4:
      result = 1852793705;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_18EF880D0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_211(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_209(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18EF8818CLL);
      case 4:
        result = OUTLINED_FUNCTION_210(result, v6);
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
          result = OUTLINED_FUNCTION_181(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18EF881BC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_170(v8);
}

uint64_t sub_18EF88240(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_138();
  v4(v3);
  OUTLINED_FUNCTION_36();
  v5 = OUTLINED_FUNCTION_108();
  v6(v5);
  return a2;
}

uint64_t sub_18EF882AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_51();
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_270();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
    OUTLINED_FUNCTION_106();
    if (*(v9 + 84) == v3)
    {
      OUTLINED_FUNCTION_333();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7830, &qword_18F09DA08);
      OUTLINED_FUNCTION_106();
      if (*(v12 + 84) != v3)
      {
        return OUTLINED_FUNCTION_99(*(v4 + *(a3 + 32)));
      }

      v8 = v11;
      v10 = *(a3 + 24);
    }

    v7 = v4 + v10;
  }

  return __swift_getEnumTagSinglePayload(v7, v3, v8);
}

unint64_t sub_18EF883DC()
{
  result = qword_1ED5FF540;
  if (!qword_1ED5FF540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB75C0, &qword_18F09BE30);
    sub_18EF8558C(&unk_1ED5FF4F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF540);
  }

  return result;
}

uint64_t sub_18EF884CC(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_51();
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_270();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7860, &qword_18F09DA60);
    OUTLINED_FUNCTION_106();
    if (*(v9 + 84) == v3)
    {
      OUTLINED_FUNCTION_333();
    }

    else
    {
      if (v3 == 0x7FFFFFFF)
      {
        return OUTLINED_FUNCTION_18(*(v4 + a3[6]));
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
      OUTLINED_FUNCTION_106();
      if (*(v13 + 84) == v3)
      {
        v8 = v12;
        v10 = a3[7];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7868, &qword_18F09DA68);
        v10 = a3[8];
      }
    }

    v7 = v4 + v10;
  }

  return __swift_getEnumTagSinglePayload(v7, v3, v8);
}

void *sub_18EF88720@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_18EF8882C()
{
  result = qword_1ED5FF530;
  if (!qword_1ED5FF530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF530);
  }

  return result;
}

unint64_t sub_18EF88950()
{
  result = qword_1ED5FF280;
  if (!qword_1ED5FF280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7410, &qword_18F09BD90);
    sub_18EF8558C(&unk_1ED5FF1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF280);
  }

  return result;
}

uint64_t sub_18EF88A04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F40, &qword_18F0A0E28);
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v7 = &v34 - v6;
  v8 = _s14CodableWrapperVMa_10(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v9 + 20);
  v13 = _s14CodableWrapperVMa_0(0);
  v40 = v12;
  __swift_storeEnumTagSinglePayload(v11 + v12, 1, 1, v13);
  v14 = *(v8 + 24);
  v42 = v8;
  v43 = v14;
  v41 = v11;
  __swift_storeEnumTagSinglePayload(v11 + v14, 1, 1, v13);
  v15 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v15);
  sub_18EF892F4();
  v37 = v7;
  sub_18F09459C();
  if (v2)
  {
    v17 = v40;
    v18 = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(v39);

    sub_18EF933AC(v18 + v17, &qword_1EACB72D0);
    return sub_18EF933AC(v18 + v43, &qword_1EACB72D0);
  }

  else
  {
    LOBYTE(v44) = 0;
    v16 = sub_18F09423C();
    v20 = v19;
    v21 = v41;
    *v41 = v16;
    v21[1] = v19;
    LOBYTE(v44) = 1;
    v34 = sub_18EF8558C(&unk_1ED5FF4F8);
    sub_18F09426C();
    v22 = v42;
    sub_18EF872D4();
    LOBYTE(v44) = 2;
    sub_18F09426C();
    sub_18EF872D4();
    v46 = 3;
    sub_18EF8882C();
    sub_18F0942CC();
    *(v21 + v22[7]) = v44;
    LOBYTE(v44) = 4;
    v23 = sub_18F09428C();
    v34 = v20;
    *(v21 + v22[8]) = v23 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7BA8, &qword_18F0A0C48);
    v46 = 5;
    sub_18F017B70();
    sub_18F0942CC();
    *(v21 + v22[9]) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7BC0, &qword_18F0A0C50);
    v46 = 6;
    sub_18EF8992C(&unk_1ED5FF038);
    sub_18F0942CC();
    *(v21 + v22[10]) = v44;
    type metadata accessor for LNActionParameterMetadataDynamicOptionsSupport(0);
    v46 = 7;
    sub_18EF8558C(&unk_1ED5FF060);
    sub_18F0942CC();
    *(v21 + v22[11]) = v44;
    LOBYTE(v44) = 8;
    *(v21 + v22[12]) = sub_18F09428C() & 1;
    type metadata accessor for LNActionParameterMetadataInputConnectionBehavior(0);
    v46 = 9;
    sub_18EF8558C(&unk_1ED5FF048);
    sub_18F09426C();
    v24 = v41 + v42[13];
    v25 = v45;
    *v24 = v44;
    v24[8] = v25;
    type metadata accessor for LNActionParameterMetadataCapabilities(0);
    v46 = 10;
    sub_18EF8558C(&unk_1ED5FE8A0);
    sub_18F09426C();
    v26 = v41 + v42[14];
    v27 = v45;
    *v26 = v44;
    v26[8] = v27;
    LOBYTE(v44) = 11;
    v28 = sub_18F09423C();
    v30 = v29;
    v31 = v41;
    v32 = (v41 + v42[15]);
    (*(v36 + 8))(v37, v38);
    *v32 = v28;
    v32[1] = v30;
    sub_18EF86A14(v31, v35);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    return sub_18EF86A6C();
  }
}

unint64_t sub_18EF892F4()
{
  result = qword_1ED5FF0C0;
  if (!qword_1ED5FF0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF0C0);
  }

  return result;
}

unint64_t sub_18EF89348(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x70795465756C6176;
      break;
    case 4:
      result = 0x6E6F6974704F7369;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x7475706E497369;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0x696C696261706163;
      break;
    case 11:
      result = 0x6564497972657571;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *_s14CodableWrapperV10CodingKeysOwst_6(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x18EF895A4);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18EF895CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EF895F4();
  *a1 = result;
  return result;
}

uint64_t _s14CodableWrapperV10CodingKeysOwet_4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void sub_18EF89690(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_261();
    return;
  }

LABEL_9:
  __break(1u);
}

_BYTE *_s14CodableWrapperV10CodingKeysOwst_4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
        JUMPOUT(0x18EF897B8);
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_18EF897EC(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x18EF89888);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18EF898B0(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_350(a1);
}

unint64_t sub_18EF8992C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_293(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    OUTLINED_FUNCTION_142();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_18EF8996C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v157 = a1;
  v146 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7();
  v161 = v7;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_135();
  v162 = v9;
  v10 = swift_getAssociatedTypeWitness();
  v158 = sub_18F093F3C();
  OUTLINED_FUNCTION_7();
  v153 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_0();
  v165 = v13;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v14);
  v155 = &v141 - v15;
  OUTLINED_FUNCTION_1_3();
  v148 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_0();
  v164 = v18;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v19);
  v163 = &v141 - v20;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v21);
  v156 = &v141 - v22;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v23);
  v160 = &v141 - v24;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v25);
  v147 = &v141 - v26;
  v167 = sub_18F093F3C();
  OUTLINED_FUNCTION_7();
  v150 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1_0();
  v159 = v29;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v30);
  v173 = (&v141 - v31);
  type metadata accessor for CompactDictionary._DictionaryCodingKey(255, a2, a3, v32);
  swift_getWitnessTable();
  v168 = sub_18F09430C();
  OUTLINED_FUNCTION_7();
  v142 = v33;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v141 - v35;
  OUTLINED_FUNCTION_1_3();
  v154 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_22();
  v41 = v40 - v39;
  v145 = type metadata accessor for CompactDictionary(0, a2, a3, v42);
  OUTLINED_FUNCTION_7();
  v144 = v43;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_135();
  v143 = v45;
  swift_getTupleTypeMetadata2();
  sub_18F093E0C();
  swift_getAssociatedConformanceWitness();
  v169 = AssociatedTypeWitness;
  v46 = sub_18F093A5C();
  v47 = *(a3 + 80);
  v166 = v41;
  v171 = a3;
  v47(v46, a2, a3);
  v48 = v10 == MEMORY[0x1E69E6158] || v10 == MEMORY[0x1E69E6530];
  v170 = a2;
  v172 = v10;
  if (!v48)
  {
    v52 = v157;
    __swift_project_boxed_opaque_existential_1Tm(v157, v157[3]);
    v53 = v174;
    sub_18F09458C();
    v174 = v53;
    if (v53)
    {
      v54 = OUTLINED_FUNCTION_2_2();
      v55(v54, a2);
      goto LABEL_22;
    }

    v58 = OUTLINED_FUNCTION_13_0();
    __swift_project_boxed_opaque_existential_1Tm(v58, v59);
    v60 = sub_18F09440C();
    if (v61 & 1) != 0 || (v60)
    {
      v84 = sub_18F0940BC();
      v85 = swift_allocError();
      v87 = v86;
      __swift_project_boxed_opaque_existential_1Tm(v52, v52[3]);
      sub_18F09457C();
      sub_18F0940AC();
      (*(*(v84 - 8) + 104))(v87, *MEMORY[0x1E69E6B00], v84);
      v174 = v85;
      swift_willThrow();
      v88 = OUTLINED_FUNCTION_2_2();
      v89(v88, a2);
      __swift_destroy_boxed_opaque_existential_1Tm(&v175);
      goto LABEL_22;
    }

    v173 = (v148 + 32);
    v167 = (v148 + 16);
    v168 = (v148 + 8);
    v165 = (v161 + 16);
    v62 = v171;
    v158 = v171 + 96;
    v161 += 8;
    while (1)
    {
      while (1)
      {
        v63 = OUTLINED_FUNCTION_13_0();
        __swift_project_boxed_opaque_existential_1Tm(v63, v64);
        v65 = sub_18F09442C();
        v66 = v164;
        if (v65)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&v175);
          goto LABEL_39;
        }

        v67 = OUTLINED_FUNCTION_13_0();
        __swift_mutable_project_boxed_opaque_existential_1(v67, v68);
        swift_getAssociatedConformanceWitness();
        v69 = v174;
        sub_18F09441C();
        v71 = v66;
        v72 = v69;
        if (v69)
        {
          break;
        }

        v74 = v163;
        (*v173)(v163, v71, v10);
        __swift_mutable_project_boxed_opaque_existential_1(&v175, v178);
        v75 = v169;
        swift_getAssociatedConformanceWitness();
        v76 = v162;
        sub_18F09441C();
        v174 = 0;
        v77 = v172;
        (*v167)(v160, v74, v172);
        (*v165)(v159, v76, v75);
        OUTLINED_FUNCTION_8_0();
        __swift_storeEnumTagSinglePayload(v78, v79, v80, v75);
        v81 = OUTLINED_FUNCTION_11_0();
        v82(v81);
        OUTLINED_FUNCTION_10_1();
        v83(v76, v75);
        (*v168)(v74, v77);
        v10 = v77;
      }

      type metadata accessor for CompactDictionary.Empty(0, a2, v62, v70);
      __swift_mutable_project_boxed_opaque_existential_1(&v175, v178);
      OUTLINED_FUNCTION_3_1();
      swift_getWitnessTable();
      sub_18F09441C();
      v174 = 0;
      __swift_mutable_project_boxed_opaque_existential_1(&v175, v178);
      v73 = v174;
      sub_18F09441C();
      v174 = v73;
      if (v73)
      {
        break;
      }

      a2 = v170;
      v62 = v171;
    }

    v139 = OUTLINED_FUNCTION_2_2();
    v140(v139, v170);

    __swift_destroy_boxed_opaque_existential_1Tm(&v175);
LABEL_8:
    v52 = v157;
LABEL_22:
    v90 = v52;
    return __swift_destroy_boxed_opaque_existential_1Tm(v90);
  }

  __swift_project_boxed_opaque_existential_1Tm(v157, v157[3]);
  v49 = v174;
  sub_18F09459C();
  v174 = v49;
  if (v49)
  {
    v50 = OUTLINED_FUNCTION_2_2();
    v51(v50, a2);
    goto LABEL_8;
  }

  v56 = sub_18F0942EC();
  v57 = sub_18F093DDC();
  v179 = v57;
  if (v57 == sub_18F093E4C())
  {

LABEL_38:
    (*(v142 + 8))(v36, v168);
LABEL_39:
    v136 = v157;
    v137 = v143;
    (*(v154 + 32))(v143, v166, a2);
    (*(v144 + 32))(v146, v137, v145);
    v90 = v136;
    return __swift_destroy_boxed_opaque_existential_1Tm(v90);
  }

  v164 = v36;
  v162 = v56 + 32;
  v153 += 8;
  v161 = v150 + 8;
  v152 = v148 + 32;
  v151 = v148 + 16;
  v150 += 16;
  v149 = v171 + 96;
  v148 += 8;
  v91 = MEMORY[0x1E69E6158];
  v163 = v56;
  while (1)
  {
    v92 = sub_18F093E2C();
    sub_18F093DEC();
    if ((v92 & 1) == 0)
    {
      break;
    }

    v93 = v162 + 32 * v57;
    v95 = *v93;
    v94 = *(v93 + 8);
    v96 = *(v93 + 16);
    v97 = *(v93 + 24);

    sub_18F093E5C();
    v175 = v95;
    v176 = v94;
    v177 = v96;
    LOBYTE(v178) = v97;
    v98 = v169;
    swift_getAssociatedConformanceWitness();
    v99 = v174;
    sub_18F0942CC();
    v174 = v99;
    if (v99)
    {

      v174 = 0;
      v100 = 1;
    }

    else
    {
      v100 = 0;
    }

    __swift_storeEnumTagSinglePayload(v173, v100, 1, v98);
    if (v172 == v91)
    {
      v175 = v95;
      v176 = v94;

      v101 = v155;
      if (swift_dynamicCast())
      {

        OUTLINED_FUNCTION_8_0();
        __swift_storeEnumTagSinglePayload(v102, v103, v104, v91);
        OUTLINED_FUNCTION_4_2();
        v105 = v147;
        v106(v147, v101, v91);
        OUTLINED_FUNCTION_4_2();
        v107(v160, v105, v91);
        OUTLINED_FUNCTION_4_2();
        v108 = v173;
        v109 = v167;
        v110(v159, v173, v167);
        v111 = OUTLINED_FUNCTION_11_0();
        v112 = v170;
        v113(v111);
        OUTLINED_FUNCTION_4_2();
        v114(v105, v91);
        OUTLINED_FUNCTION_10_1();
        v116 = v108;
        a2 = v112;
        goto LABEL_34;
      }

      __swift_storeEnumTagSinglePayload(v101, 1, 1, v91);
      OUTLINED_FUNCTION_4_2();
      v117(v101, v158);
    }

    v119 = v171;
    v118 = v172;
    v175 = v96;
    LOBYTE(v176) = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACB9238, &qword_18F0AA278);
    v120 = v165;
    if ((swift_dynamicCast() & 1) == 0)
    {
      OUTLINED_FUNCTION_10_1();
      v133(v173, v167);
      __swift_storeEnumTagSinglePayload(v120, 1, 1, v118);
      OUTLINED_FUNCTION_4_2();
      v134(v120, v158);
      a2 = v170;
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_8_0();
    __swift_storeEnumTagSinglePayload(v121, v122, v123, v118);
    OUTLINED_FUNCTION_4_2();
    v124 = v156;
    v125(v156, v120, v118);
    OUTLINED_FUNCTION_4_2();
    v126 = v160;
    v127(v160, v124, v118);
    OUTLINED_FUNCTION_4_2();
    v128 = v159;
    v129 = v173;
    v109 = v167;
    v130(v159, v173, v167);
    v131 = v128;
    a2 = v170;
    (*(v119 + 96))(v131, v126, v170, v119);
    OUTLINED_FUNCTION_4_2();
    v132(v124, v118);
    OUTLINED_FUNCTION_10_1();
    v116 = v129;
    v91 = MEMORY[0x1E69E6158];
LABEL_34:
    v115(v116, v109);
LABEL_36:
    v135 = sub_18F093E4C();
    v57 = v179;
    if (v179 == v135)
    {

      v36 = v164;
      goto LABEL_38;
    }
  }

  result = sub_18F09407C();
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_5()
{
  *(v0 + 320) = *(v0 + 392);

  return sub_18F09378C();
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return sub_18F0938EC();
}

uint64_t OUTLINED_FUNCTION_5_5(uint64_t a1)
{

  return sub_18F09444C();
}

void OUTLINED_FUNCTION_5_11()
{

  JUMPOUT(0x193AD8780);
}

uint64_t OUTLINED_FUNCTION_5_13()
{
  result = v0;
  *(v2 - 112) = *(v1 + 8);
  return result;
}

void OUTLINED_FUNCTION_6_0()
{

  JUMPOUT(0x193AD8780);
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1, ...)
{

  return sub_18F093C1C();
}

uint64_t OUTLINED_FUNCTION_6_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18F09444C();
}

uint64_t OUTLINED_FUNCTION_6_6()
{

  return sub_18F0937BC();
}

uint64_t OUTLINED_FUNCTION_6_8(unint64_t *a1)
{
  v2 = MEMORY[0x1E6968E28];

  return sub_18F03E904(a1, v2);
}

uint64_t OUTLINED_FUNCTION_6_9(uint64_t a1)
{

  return sub_18F09417C();
}

__n128 OUTLINED_FUNCTION_6_10()
{
  *(v0 + 488) = v1;
  *(v0 + 496) = v5;
  result = *(v0 + 320);
  *(v0 + 504) = result;
  *(v0 + 520) = v3;
  *(v0 + 528) = v2;
  *(v0 + 536) = v4;
  return result;
}

void OUTLINED_FUNCTION_6_11()
{

  JUMPOUT(0x193AD8780);
}

uint64_t OUTLINED_FUNCTION_1_6(uint64_t a1)
{

  return sub_18F0943CC();
}

uint64_t OUTLINED_FUNCTION_1_7()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_1_11()
{

  JUMPOUT(0x193AD8780);
}

unint64_t sub_18EF8AED4()
{
  result = qword_1ED5FEBE0;
  if (!qword_1ED5FEBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7428, &qword_18F09BD98);
    sub_18EF8558C(&unk_1ED5FF178);
    sub_18EFBE9DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEBE0);
  }

  return result;
}

void sub_18EF8AF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_180();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v146 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F48, &qword_18F0A0E30);
  OUTLINED_FUNCTION_7();
  v144 = v28;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_135();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F50, &qword_18F0A0E38);
  OUTLINED_FUNCTION_7();
  v142 = v30;
  v143 = v31;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_135();
  v148 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F58, &qword_18F0A0E40);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_135();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F60, &qword_18F0A0E48);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_135();
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F68, &qword_18F0A0E50);
  OUTLINED_FUNCTION_7();
  v141 = v36;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_135();
  v147 = v38;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F70, &qword_18F0A0E58);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_135();
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F78, &qword_18F0A0E60);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_135();
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F80, &qword_18F0A0E68);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_50();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F88, &qword_18F0A0E70);
  OUTLINED_FUNCTION_7();
  v137 = v43;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_256();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F90, &qword_18F0A0E78);
  OUTLINED_FUNCTION_7();
  v47 = v46;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_46();
  v149 = v26;
  v49 = OUTLINED_FUNCTION_384();
  OUTLINED_FUNCTION_190(v49, v50);
  sub_18EF8BDF8();
  OUTLINED_FUNCTION_219();
  sub_18F09459C();
  if (v20)
  {
    goto LABEL_8;
  }

  v135 = v42;
  v51 = sub_18F0942EC();
  sub_18EF89690(v51, 0);
  if (v54 == v55 >> 1)
  {
    goto LABEL_7;
  }

  v136 = v45;
  if (v54 >= (v55 >> 1))
  {
    __break(1u);
    JUMPOUT(0x18EF8BDB8);
  }

  v56 = *(v53 + v54);
  sub_18F019378(v54 + 1, v55 >> 1, v52, v53, v54, v55);
  v58 = v57;
  v60 = v59;
  v62 = v61;
  swift_unknownObjectRelease();
  if (v60 != v62 >> 1)
  {
LABEL_7:
    v72 = sub_18F0940BC();
    OUTLINED_FUNCTION_249(v72, MEMORY[0x1E69E6B28]);
    v74 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F98, &qword_18F0A0E80);
    *v74 = &type metadata for LNSystemProtocolMetadataStorage;
    sub_18F09422C();
    sub_18F0940AC();
    OUTLINED_FUNCTION_111();
    (*(v75 + 104))(v74);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_218();
    v76 = OUTLINED_FUNCTION_384();
    v77(v76);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v149);
    goto LABEL_9;
  }

  v63 = v136;
  switch(v56)
  {
    case 1:
      OUTLINED_FUNCTION_250();
      v90 = sub_18F017140();
      OUTLINED_FUNCTION_93(&type metadata for LNSystemProtocolMetadataStorage.ConditionallyEnabledCodingKeys, &a10, v91, v92, v90);
      v65 = v138;
      OUTLINED_FUNCTION_359();
      v71 = 0;
      v63 = v149;
      v113 = sub_18F09428C();
      OUTLINED_FUNCTION_187();
      v114 = OUTLINED_FUNCTION_102();
      v115(v114, v138);
      v58 = v47 + 8;
      v116 = OUTLINED_FUNCTION_122();
      v117(v116);
      OUTLINED_FUNCTION_121();
      v70 = v113 & 1;
      break;
    case 2:
      LOBYTE(a10) = 2;
      v81 = sub_18EFA7480();
      OUTLINED_FUNCTION_93(&type metadata for LNSystemProtocolMetadataStorage.ShowInAppStringSearchResultsCodingKeys, &a10, v82, v83, v81);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
      OUTLINED_FUNCTION_86(&unk_1ED5FDD20);
      OUTLINED_FUNCTION_303();
      v65 = v139;
      OUTLINED_FUNCTION_359();
      sub_18F0942CC();
      OUTLINED_FUNCTION_381();
      OUTLINED_FUNCTION_187();
      v104 = OUTLINED_FUNCTION_102();
      v105(v104, v139);
      OUTLINED_FUNCTION_158();
      OUTLINED_FUNCTION_389();
      v106();
      OUTLINED_FUNCTION_121();
      v70 = a10;
      v71 = 1;
      break;
    case 3:
      LOBYTE(a10) = 3;
      v84 = sub_18F0170EC();
      OUTLINED_FUNCTION_93(&type metadata for LNSystemProtocolMetadataStorage.PlayVideoCodingKeys, &a10, v85, v86, v84);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
      OUTLINED_FUNCTION_86(&unk_1ED5FDD20);
      OUTLINED_FUNCTION_303();
      v65 = v140;
      OUTLINED_FUNCTION_359();
      sub_18F0942CC();
      v63 = v149;
      OUTLINED_FUNCTION_187();
      v107 = OUTLINED_FUNCTION_102();
      v108(v107, v140);
      v109 = OUTLINED_FUNCTION_122();
      v110(v109);
      OUTLINED_FUNCTION_121();
      v70 = a10;
      v71 = 2;
      break;
    case 4:
      OUTLINED_FUNCTION_379();
      v78 = sub_18EFA76BC();
      OUTLINED_FUNCTION_93(&type metadata for LNSystemProtocolMetadataStorage.PropertyUpdaterCodingKeys, &a10, v79, v80, v78);
      LOBYTE(a10) = 0;
      OUTLINED_FUNCTION_342();
      sub_18F09427C();
      OUTLINED_FUNCTION_381();
      v70 = v102;
      v21 = v103;
      OUTLINED_FUNCTION_208(1);
      OUTLINED_FUNCTION_342();
      v58 = sub_18F09427C();
      v65 = v132;
      swift_unknownObjectRelease();
      (*(v141 + 8))(v147, v145);
      v133 = OUTLINED_FUNCTION_387();
      v134(v133);
      v71 = 3;
      break;
    case 5:
      OUTLINED_FUNCTION_343();
      v93 = sub_18F017098();
      OUTLINED_FUNCTION_93(&type metadata for LNSystemProtocolMetadataStorage.EntityUpdaterCodingKeys, &a10, v94, v95, v93);
      OUTLINED_FUNCTION_342();
      sub_18F09427C();
      OUTLINED_FUNCTION_381();
      v70 = v118;
      v21 = v119;
      OUTLINED_FUNCTION_187();
      v120 = OUTLINED_FUNCTION_197();
      v121(v120);
      OUTLINED_FUNCTION_218();
      OUTLINED_FUNCTION_389();
      v122();
      v58 = 0;
      v65 = 0;
      v71 = 4;
      break;
    case 6:
      LOBYTE(a10) = 6;
      v96 = sub_18F017044();
      OUTLINED_FUNCTION_93(&type metadata for LNSystemProtocolMetadataStorage.UpdatableEntityCodingKeys, &a10, v97, v98, v96);
      OUTLINED_FUNCTION_342();
      sub_18F09427C();
      OUTLINED_FUNCTION_381();
      v70 = v123;
      v21 = v124;
      OUTLINED_FUNCTION_187();
      v125 = OUTLINED_FUNCTION_197();
      v126(v125);
      OUTLINED_FUNCTION_218();
      OUTLINED_FUNCTION_389();
      v127();
      v58 = 0;
      v65 = 0;
      v71 = 5;
      break;
    case 7:
      LOBYTE(a10) = 7;
      v87 = sub_18F016F3C();
      OUTLINED_FUNCTION_93(&type metadata for LNSystemProtocolMetadataStorage.PersistentFileIdentifiableEntityCodingKeys, &a10, v88, v89, v87);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7C40, &qword_18F0A0CA8);
      sub_18F0181D0();
      OUTLINED_FUNCTION_303();
      v65 = v142;
      OUTLINED_FUNCTION_342();
      sub_18F0942CC();
      v63 = v149;
      OUTLINED_FUNCTION_187();
      (*(v143 + 8))(v148, v142);
      v111 = OUTLINED_FUNCTION_122();
      v112(v111);
      OUTLINED_FUNCTION_121();
      v70 = a10;
      v71 = 6;
      break;
    case 8:
      LOBYTE(a10) = 8;
      v99 = sub_18F016EE8();
      OUTLINED_FUNCTION_93(&type metadata for LNSystemProtocolMetadataStorage.StructuredDataRepresentableCodingKeys, &a10, v100, v101, v99);
      v65 = v144;
      OUTLINED_FUNCTION_359();
      v63 = v149;
      v70 = sub_18F0942AC();
      OUTLINED_FUNCTION_187();
      v128 = OUTLINED_FUNCTION_140();
      v129(v128);
      v58 = v47 + 8;
      v130 = OUTLINED_FUNCTION_122();
      v131(v130);
      OUTLINED_FUNCTION_121();
      v71 = 7;
      break;
    default:
      LOBYTE(a10) = 0;
      v64 = sub_18EF8C154();
      v65 = v22;
      OUTLINED_FUNCTION_93(&type metadata for LNSystemProtocolMetadataStorage.EmptyCodingKeys, &a10, v66, v67, v64);
      OUTLINED_FUNCTION_187();
      (*(v137 + 8))(v22, v135);
      v68 = OUTLINED_FUNCTION_158();
      v69(v68, v136);
      v70 = 0;
      OUTLINED_FUNCTION_121();
      v71 = 8;
      v63 = v149;
      break;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  *v146 = v70;
  *(v146 + 8) = v21;
  *(v146 + 16) = v58;
  *(v146 + 24) = v65;
  *(v146 + 32) = v71;
LABEL_9:
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_177();
}

uint64_t OUTLINED_FUNCTION_212()
{

  return sub_18EF86A14(v0, v1);
}

unint64_t sub_18EF8BDF8()
{
  result = qword_1ED5FE888;
  if (!qword_1ED5FE888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE888);
  }

  return result;
}

uint64_t sub_18EF8BE4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_18EF8BE74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_18EF8BE74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000018F0AE5C0 == a2;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001CLL && 0x800000018F0AE5E0 == a2;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6564695679616C70 && a2 == 0xE90000000000006FLL;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x79747265706F7270 && a2 == 0xEF72657461647055;
          if (v9 || (sub_18F09444C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7055797469746E65 && a2 == 0xED00007265746164;
            if (v10 || (sub_18F09444C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C62617461647075 && a2 == 0xEF797469746E4565;
              if (v11 || (sub_18F09444C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000020 && 0x800000018F0AE600 == a2;
                if (v12 || (sub_18F09444C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD00000000000001BLL && 0x800000018F0AE630 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_18F09444C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_18EF8C154()
{
  result = qword_1ED5FE868;
  if (!qword_1ED5FE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE868);
  }

  return result;
}

unint64_t sub_18EF8C1B0(char a1)
{
  result = 0x7974706D65;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0x6564695679616C70;
      break;
    case 4:
      result = 0x79747265706F7270;
      break;
    case 5:
      result = 0x7055797469746E65;
      break;
    case 6:
      result = 0x6C62617461647075;
      break;
    case 7:
      result = 0xD000000000000020;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LNSystemProtocolMetadataStorage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18EF8C3DCLL);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_6(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_7()
{

  return sub_18F0941AC();
}

id OUTLINED_FUNCTION_3_12(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v5 - 312);

  return sub_18F042998(a1, a2, a3, v7, v3, v4, 0, 0);
}

__n128 OUTLINED_FUNCTION_3_13()
{
  result = *(v0 + 504);
  *(v0 + 320) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_296(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18F09444C();
}

uint64_t sub_18EF8C670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x72)
  {
    *result = a2 - 115;
    if (a3 >= 0x73)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x73)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t _s14CodableWrapperV10CodingKeysOwet_6(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_18EF8C750(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F18, &qword_18F0A0E18);
  v3 = *(v2 - 8);
  v125 = v2;
  v126 = v3;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v116 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v117 = &v115 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v118 = &v115 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v119 = &v115 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v120 = &v115 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v121 = &v115 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v122 = &v115 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v123 = &v115 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v124 = &v115 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v127 = &v115 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v115 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v115 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v115 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F20, &qword_18F0A0E20);
  v128 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v115 - v33;
  v35 = a1[3];
  v157 = a1;
  v36 = __swift_project_boxed_opaque_existential_1Tm(a1, v35);
  sub_18EF8DBC0();
  v37 = v129;
  sub_18F09459C();
  if (v37)
  {
    goto LABEL_8;
  }

  v129 = 0;
  v38 = v127;
  LOBYTE(v154[0]) = 0;
  if (sub_18F0942FC())
  {
    LOBYTE(v154[0]) = 0;
    sub_18F0169CC();
    v36 = v34;
    v39 = v129;
    sub_18F09421C();
    if (!v39)
    {
      sub_18EF996E0();
      v40 = v125;
      sub_18F0942CC();
      (*(v126 + 8))(v31, v40);
      (*(v128 + 8))(v34, v32);
      v41 = v154[0];
      v36 = swift_allocObject();
      *(v36 + 16) = v41;
      goto LABEL_8;
    }

LABEL_7:
    (*(v128 + 8))(v34, v32);
    goto LABEL_8;
  }

  LOBYTE(v154[0]) = 1;
  if ((sub_18F0942FC() & 1) == 0)
  {
    LOBYTE(v154[0]) = 2;
    if (sub_18F0942FC())
    {
      (*(v128 + 8))(v34, v32);
      v36 = 0xD000000000000000;
      goto LABEL_8;
    }

    LOBYTE(v154[0]) = 3;
    if (sub_18F0942FC())
    {
      v36 = 0xD000000000000008;
      (*(v128 + 8))(v34, v32);
      goto LABEL_8;
    }

    LOBYTE(v154[0]) = 4;
    if (sub_18F0942FC())
    {
      LOBYTE(v154[0]) = 4;
      sub_18F0169CC();
      v36 = v34;
      v47 = v129;
      sub_18F09421C();
      v48 = v126;
      if (!v47)
      {
        sub_18EFA1418();
        v49 = v125;
        sub_18F0942CC();
        v50 = v128;
        (*(v48 + 8))(v26, v49);
        (*(v50 + 8))(v34, v32);
        v80 = v154[0];
        v81 = v154[1];
        v82 = v154[2];
        v83 = swift_allocObject();
        *(v83 + 16) = v80;
        *(v83 + 24) = v81;
        *(v83 + 32) = v82;
        v36 = v83 | 0x2000000000000000;
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    LOBYTE(v154[0]) = 5;
    if (sub_18F0942FC())
    {
      LOBYTE(v154[0]) = 5;
      sub_18F0169CC();
      v60 = v38;
      v36 = v34;
      v61 = v129;
      sub_18F09421C();
      if (!v61)
      {
        sub_18EF8E064();
        v62 = v125;
        sub_18F0942CC();
        v63 = v128;
        (*(v126 + 8))(v60, v62);
        (*(v63 + 8))(v34, v32);
        v64 = v154[0];
        v65 = v154[1];
        v66 = swift_allocObject();
        *(v66 + 16) = v64;
        *(v66 + 24) = v65;
        v36 = v66 | 0x3000000000000000;
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    LOBYTE(v154[0]) = 6;
    v67 = sub_18F0942FC();
    v68 = v129;
    if (v67)
    {
      LOBYTE(v154[0]) = 6;
      sub_18F0169CC();
      v69 = v124;
      v36 = v34;
      sub_18F09421C();
      if (!v68)
      {
        sub_18F017AB4();
        v70 = v125;
        sub_18F0942CC();
        v71 = v128;
        (*(v126 + 8))(v69, v70);
        (*(v71 + 8))(v34, v32);
        v72 = v154[0];
        v73 = swift_allocObject();
        *(v73 + 16) = v72;
        v36 = v73 | 0x4000000000000000;
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    LOBYTE(v154[0]) = 7;
    if (sub_18F0942FC())
    {
      LOBYTE(v154[0]) = 7;
      sub_18F0169CC();
      v74 = v123;
      v36 = v34;
      sub_18F09421C();
      if (v68)
      {
        goto LABEL_7;
      }

      sub_18EFABF98();
      v75 = v125;
      sub_18F0942CC();
      v76 = v128;
      (*(v126 + 8))(v74, v75);
      (*(v76 + 8))(v34, v32);
      v77 = v154[0];
      v78 = swift_allocObject();
      *(v78 + 16) = v77;
      v79 = 0x5000000000000000;
    }

    else
    {
      LOBYTE(v154[0]) = 8;
      if (sub_18F0942FC())
      {
        LOBYTE(v154[0]) = 8;
        sub_18F0169CC();
        v84 = v122;
        v36 = v34;
        sub_18F09421C();
        if (!v68)
        {
          sub_18EFA182C();
          v85 = v125;
          sub_18F0942CC();
          v86 = v128;
          (*(v126 + 8))(v84, v85);
          (*(v86 + 8))(v34, v32);
          v87 = v154[0];
          v88 = swift_allocObject();
          *(v88 + 16) = v87;
          v36 = v88 | 0x6000000000000000;
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      LOBYTE(v154[0]) = 9;
      if (sub_18F0942FC())
      {
        LOBYTE(v154[0]) = 9;
        sub_18F0169CC();
        v89 = v121;
        v36 = v34;
        sub_18F09421C();
        if (!v68)
        {
          sub_18EFA7380();
          v90 = v125;
          sub_18F0942CC();
          v91 = v128;
          (*(v126 + 8))(v89, v90);
          (*(v91 + 8))(v34, v32);
          v92 = v154[0];
          v93 = swift_allocObject();
          *(v93 + 16) = v92;
          v36 = v93 | 0x7000000000000000;
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      LOBYTE(v154[0]) = 10;
      if (sub_18F0942FC())
      {
        LOBYTE(v154[0]) = 10;
        sub_18F0169CC();
        v94 = v120;
        v36 = v34;
        sub_18F09421C();
        if (!v68)
        {
          sub_18F017A60();
          v95 = v125;
          sub_18F0942CC();
          (*(v126 + 8))(v94, v95);
          (*(v128 + 8))(v34, v32);
          v97 = v154[0];
          v98 = swift_allocObject();
          *(v98 + 16) = v97;
          v36 = v98 | 0x8000000000000000;
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      LOBYTE(v154[0]) = 11;
      if (sub_18F0942FC())
      {
        LOBYTE(v154[0]) = 11;
        sub_18F0169CC();
        v36 = v34;
        sub_18F09421C();
        if (v68)
        {
          goto LABEL_7;
        }

        sub_18F017A0C();
        sub_18F0942CC();
        (*(v126 + 8))(v119, v125);
        (*(v128 + 8))(v34, v32);
        v99 = v154[0];
        v100 = v154[1];
        v78 = swift_allocObject();
        *(v78 + 16) = v99;
        *(v78 + 24) = v100;
        v79 = 0x9000000000000000;
      }

      else
      {
        LOBYTE(v154[0]) = 12;
        if ((sub_18F0942FC() & 1) == 0)
        {
          LOBYTE(v154[0]) = 13;
          v127 = v32;
          v96 = v34;
          if (sub_18F0942FC())
          {
            LOBYTE(v154[0]) = 13;
            sub_18F0169CC();
            v36 = v34;
            sub_18F09421C();
            if (!v68)
            {
              sub_18F017964();
              sub_18F0942CC();
              (*(v126 + 8))(v117, v125);
              (*(v128 + 8))(v34, v127);
              v106 = v154[0];
              v107 = v154[1];
              v78 = swift_allocObject();
              *(v78 + 16) = v106;
              *(v78 + 24) = v107;
              v79 = 0xB000000000000000;
              goto LABEL_31;
            }
          }

          else
          {
            LOBYTE(v154[0]) = 14;
            if ((sub_18F0942FC() & 1) == 0)
            {
              v101 = sub_18F0940BC();
              swift_allocError();
              v103 = v102;
              v104 = v127;
              v36 = v96;
              sub_18F09422C();
              sub_18F0940AC();
              (*(*(v101 - 8) + 104))(v103, *MEMORY[0x1E69E6B00], v101);
              swift_willThrow();
              (*(v128 + 8))(v96, v104);
              goto LABEL_8;
            }

            LOBYTE(v154[0]) = 14;
            sub_18F0169CC();
            v36 = v34;
            sub_18F09421C();
            if (!v68)
            {
              sub_18F017910();
              sub_18F0942CC();
              v129 = 0;
              v124 = v154[0];
              v108 = v154[1];
              v109 = v154[2];
              v110 = v154[3];
              v111 = v154[4];
              v112 = v154[5];
              v113 = v154[6];
              v114 = swift_allocObject();
              v156[0] = v109;
              v156[1] = v110;
              v156[2] = v111;
              v156[3] = v112;
              v156[4] = v113;

              sub_18EFD0F5C(v124, v108, v156, __src);

              (*(v126 + 8))(v116, v125);
              (*(v128 + 8))(v96, v127);
              memcpy((v114 + 16), __src, 0x79uLL);
              v36 = v114 | 0x1000000000000000;
              goto LABEL_8;
            }
          }

          (*(v128 + 8))(v34, v127);
          goto LABEL_8;
        }

        LOBYTE(v154[0]) = 12;
        sub_18F0169CC();
        v36 = v34;
        sub_18F09421C();
        if (v68)
        {
          goto LABEL_7;
        }

        sub_18F0179B8();
        sub_18F0942CC();
        (*(v126 + 8))(v118, v125);
        (*(v128 + 8))(v34, v32);
        v105 = v154[0];
        v78 = swift_allocObject();
        *(v78 + 16) = v105;
        v79 = 0xA000000000000000;
      }
    }

LABEL_31:
    v36 = v78 | v79;
    goto LABEL_8;
  }

  LOBYTE(v154[0]) = 1;
  sub_18F0169CC();
  v42 = v29;
  v36 = v34;
  v43 = v129;
  sub_18F09421C();
  if (v43)
  {
    goto LABEL_7;
  }

  sub_18EF8E348();
  v45 = v125;
  sub_18F0942CC();
  v46 = v128;
  (*(v126 + 8))(v42, v45);
  (*(v46 + 8))(v34, v32);
  memcpy(v153, v154, 0x79uLL);
  v51 = v153[3];
  if (v153[3] && (v52 = v153[5]) != 0)
  {
    v53 = v153[2];
    v129 = 0;
    v54 = v153[4];
    v55 = swift_allocObject();
    v56 = v153[0];
    v57 = v153[1];

    sub_18F017B08(v153);
    v130[128] = 1;
    v131[0] = v56;
    v131[1] = v57;
    v132 = 0u;
    v133 = 0u;
    v134 = v53;
    v135 = v51;
    v136 = v54;
    v137 = v52;
    v138 = 0u;
    v139 = 0u;
    v140 = 0;
    v141 = 1;
    v142[0] = v56;
    v142[1] = v57;
    v143 = 0u;
    v144 = 0u;
    v145 = v53;
    v146 = v51;
    v147 = v54;
    v148 = v52;
    v149 = 0u;
    v150 = 0u;
    v151 = 0;
    v152 = 1;
    sub_18F017B38(v131, v130);
    sub_18F017B08(v142);
    v58 = (v55 + 16);
    v59 = v131;
  }

  else
  {
    v55 = swift_allocObject();
    v58 = (v55 + 16);
    v59 = v154;
  }

  memcpy(v58, v59, 0x79uLL);
  v36 = v55 | 0x1000000000000000;
LABEL_8:
  __swift_destroy_boxed_opaque_existential_1Tm(v157);
  return v36;
}

uint64_t sub_18EF8DA34()
{

  if (*(v0 + 72) != 1)
  {
  }

  if (*(v0 + 104))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 137, 7);
}

uint64_t sub_18EF8DAB0()
{
  sub_18EFA3DA4(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_307();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18EF8DAF0()
{

  v0 = OUTLINED_FUNCTION_307();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18EF8DB20()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18EF8DB58()
{
  sub_18EFA3DA4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

unint64_t sub_18EF8DB94@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_18EF8C750(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_18EF8DBC0()
{
  result = qword_1ED5FF470;
  if (!qword_1ED5FF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF470);
  }

  return result;
}

void OUTLINED_FUNCTION_12()
{
  *(v0 - 264) = 0;
  *(v0 - 256) = 0;
  *(v0 - 248) = 0;
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
}

uint64_t get_enum_tag_for_layout_string_So11LNValueTypeC12LinkMetadataE14CodableWrapper33_8F5A22252D2EEFBD74C1473F6DDC7E6CLLO(void *a1)
{
  v1 = *a1 >> 60;
  if (v1 <= 0xC)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 13;
  }
}

uint64_t sub_18EF8DF18@<X0>(void *a2@<X8>)
{
  sub_18F093B5C();
  OUTLINED_FUNCTION_404();

  *a2 = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LNSystemProtocolMetadataStorage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_18EF8E064()
{
  result = qword_1ED5FE020;
  if (!qword_1ED5FE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE020);
  }

  return result;
}

uint64_t sub_18EF8E0CC()
{
  OUTLINED_FUNCTION_115();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7870, &qword_18F09DA70);
  OUTLINED_FUNCTION_106();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_270();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7878, &qword_18F09DA78);
    OUTLINED_FUNCTION_333();
    v3 = v1 + v5;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

void sub_18EF8E218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_180();
  v8 = v7;
  v11 = OUTLINED_FUNCTION_311(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_163();
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  v8();
  OUTLINED_FUNCTION_174();
  sub_18F09459C();
  if (!v6)
  {
    sub_18F09427C();
    v14 = OUTLINED_FUNCTION_279();
    v15(v14);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_177();
}

unint64_t sub_18EF8E348()
{
  result = qword_1ED5FE740;
  if (!qword_1ED5FE740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE740);
  }

  return result;
}

void *sub_18EF8E39C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8D88, &qword_18F0A7C98);
  v5 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v21 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF8E900();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v8 = v5;
  v29 = a2;
  LOBYTE(v37) = 0;
  v9 = sub_18F09427C();
  v30 = v10;
  LOBYTE(v37) = 1;
  v25 = sub_18F09423C();
  v28 = v11;
  LOBYTE(v37) = 2;
  v23 = sub_18F09423C();
  v24 = v12;
  LOBYTE(v36[0]) = 3;
  sub_18F01E4A8();
  sub_18F09426C();
  v34 = v37;
  v22 = v39;
  v26 = v38;
  v27 = v40;
  LOBYTE(v36[0]) = 4;
  sub_18F01E4FC();
  sub_18F09426C();
  v21 = v9;
  v32 = v38;
  v33 = v37;
  v13 = v39;
  v14 = v40;
  v15 = v41;
  v54 = 5;
  sub_18F01E550();
  sub_18F09426C();
  v31 = 0;
  (*(v8 + 8))(v7, v35);
  v16 = v55;
  v53 = v55;
  v17 = v21;
  v36[0] = v21;
  v36[1] = v30;
  v18 = v24;
  v36[2] = v25;
  v36[3] = v28;
  v36[4] = v23;
  v36[5] = v24;
  v19 = v26;
  v36[6] = v34;
  v36[7] = v26;
  v36[8] = v22;
  v36[9] = v27;
  v36[10] = v33;
  v36[11] = v32;
  v36[12] = v13;
  v36[13] = v14;
  v36[14] = v15;
  LOBYTE(v36[15]) = v55;
  sub_18F017B38(v36, &v37);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v37 = v17;
  v38 = v30;
  v39 = v25;
  v40 = v28;
  v41 = v23;
  v42 = v18;
  v43 = v34;
  v44 = v19;
  v45 = v22;
  v46 = v27;
  v47 = v33;
  v48 = v32;
  v49 = v13;
  v50 = v14;
  v51 = v15;
  v52 = v16;
  sub_18F017B08(&v37);
  return memcpy(v29, v36, 0x79uLL);
}

void *sub_18EF8E8B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_18EF8E39C(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x79uLL);
  }

  return result;
}

unint64_t sub_18EF8E900()
{
  result = qword_1ED5FE758;
  if (!qword_1ED5FE758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE758);
  }

  return result;
}

unint64_t sub_18EF8E95C(char a1)
{
  result = 0x656D614E65707974;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x6D6574737973;
      break;
    case 4:
      result = 0x656C6261646F63;
      break;
    case 5:
      result = 7958113;
      break;
    default:
      return result;
  }

  return result;
}

void sub_18EF8EA2C(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  sub_18EF8E218(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = v8;
    a6[1] = v9;
  }
}

unint64_t sub_18EF8EABC()
{
  result = qword_1ED5FE040;
  if (!qword_1ED5FE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE040);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_322(uint64_t a1)
{
  *(v1 - 80) = a1;
  *(v1 - 72) = 0;
  return v1 - 88;
}

uint64_t sub_18EF8EB64(uint64_t a1, uint64_t a2)
{
  sub_18F093B8C();
  OUTLINED_FUNCTION_327();
  sub_18F09452C();
  OUTLINED_FUNCTION_268();
  sub_18F093C1C();
  v2 = sub_18F09456C();

  return v2;
}

uint64_t sub_18EF8EC24(uint64_t a1, uint64_t a2)
{
  v2 = sub_18F093B8C();
  v4 = v3;
  if (v2 == sub_18F093B8C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_332();
    v7 = sub_18F09444C();
  }

  return v7 & 1;
}

uint64_t sub_18EF8ECE0()
{
  OUTLINED_FUNCTION_115();

  v2 = sub_18F093B7C();
  *v0 = 0;
  return v2 & 1;
}

unint64_t sub_18EF8F39C()
{
  result = qword_1ED5FDD28[0];
  if (!qword_1ED5FDD28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED5FDD28);
  }

  return result;
}

unint64_t sub_18EF8F408()
{
  result = qword_1ED5FDF88;
  if (!qword_1ED5FDF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDF88);
  }

  return result;
}

unint64_t sub_18EF8F4C8()
{
  result = qword_1ED5FDFC8;
  if (!qword_1ED5FDFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDFC8);
  }

  return result;
}

uint64_t sub_18EF8F524(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_18EF8F564@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7830, &qword_18F09DA08);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v25 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v27 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = _s14CodableWrapperVMa_0(0);
  MEMORY[0x1EEE9AC00](v10);
  v31 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8328, &qword_18F0A1060);
  v29 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v13 = &v25 - v12;
  v14 = _s14CodableWrapperVMa_2(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v15 + 20);
  __swift_storeEnumTagSinglePayload(&v17[v39], 1, 1, v10);
  v18 = v14[6];
  v19 = _s14CodableWrapperOMa(0);
  v38 = v18;
  __swift_storeEnumTagSinglePayload(&v17[v18], 1, 1, v19);
  v37 = v14[7];
  __swift_storeEnumTagSinglePayload(&v17[v37], 1, 1, v19);
  v35 = v14[9];
  __swift_storeEnumTagSinglePayload(&v17[v35], 1, 1, v10);
  v20 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v20);
  sub_18EF9208C();
  v32 = v13;
  v21 = v34;
  sub_18F09459C();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    sub_18EF933AC(&v17[v39], &qword_1EACB72D0);
    sub_18EF933AC(&v17[v38], &qword_1EACB7830);
    sub_18EF933AC(&v17[v37], &qword_1EACB7830);

    return sub_18EF933AC(&v17[v35], &qword_1EACB72D0);
  }

  else
  {
    v34 = v19;
    v22 = v29;
    v46 = 0;
    v23 = sub_18EF8558C(&unk_1ED5FF4F8);
    sub_18F0942CC();
    sub_18EF88240(v31, v17);
    v45 = 1;
    sub_18F09426C();
    v31 = v23;
    sub_18EF872D4();
    v44 = 2;
    sub_18EF8558C(&unk_1ED5FE068);
    sub_18F09426C();
    sub_18EF872D4();
    v43 = 3;
    sub_18F09426C();
    sub_18EF872D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    v42 = 4;
    sub_18EF883DC();
    sub_18F09426C();
    *&v17[v14[8]] = v40;
    v41 = 5;
    sub_18F09426C();
    (*(v22 + 8))(v32, v33);
    sub_18EF872D4();
    sub_18EF86A14(v17, v26);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    return sub_18EF86A6C();
  }
}

unint64_t sub_18EF8FCA8()
{
  result = qword_1ED5FDBC0;
  if (!qword_1ED5FDBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDBC0);
  }

  return result;
}

uint64_t sub_18EF8FCFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_18EF8FD24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_18EF8FD24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6567616D69 && a2 == 0xE900000000000065;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7107189 && a2 == 0xE300000000000000;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1635017060 && a2 == 0xE400000000000000;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E6F63497369 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_18F09444C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_18EF8FED0(char a1)
{
  result = 0x6D614E6567616D69;
  switch(a1)
  {
    case 1:
      result = 0x6D496D6574737973;
      break;
    case 2:
      result = 7107189;
      break;
    case 3:
      result = 1635017060;
      break;
    case 4:
      result = 0x6E6F63497369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18EF8FF7C(char a1)
{
  if (a1)
  {
    return 0x617A69726F6C6F63;
  }

  else
  {
    return 12383;
  }
}

unint64_t sub_18EF8FFB0()
{
  result = qword_1ED5FCF50;
  if (!qword_1ED5FCF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF50);
  }

  return result;
}

uint64_t sub_18EF90004(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
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

  *(result + 41) = v3;
  return result;
}

unint64_t sub_18EF9003C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x5464656C676E616DLL;
      break;
    case 2:
      result = 0xD000000000000021;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      result = 0x5479616C70736964;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x7365736163;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0x6D65747379537369;
      break;
    case 10:
      result = 0x736D796E6F6E7973;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0x546465776F6C6C61;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_18EF90250()
{
  result = qword_1ED5FE000;
  if (!qword_1ED5FE000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7640, &qword_18F09BE68);
    sub_18EF8558C(&unk_1ED5FDFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE000);
  }

  return result;
}

uint64_t sub_18EF9030C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8340, &qword_18F0A1070);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v113 = &v94 - v3;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8348, &qword_18F0A1078);
  v105 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v112 = &v94 - v4;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8350, &qword_18F0A1080);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v118 = &v94 - v5;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8358, &qword_18F0A1088);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v110 = &v94 - v6;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8360, &qword_18F0A1090);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v111 = &v94 - v7;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8368, &qword_18F0A1098);
  v119 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v9 = &v94 - v8;
  v116 = _s14CodableWrapperOMa(0);
  v10 = MEMORY[0x1EEE9AC00](v116);
  v100 = (&v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v94 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v94 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v94 - v19);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v94 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v94 - v24;
  v26 = a1[3];
  v120 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v26);
  sub_18EF8FCA8();
  v27 = v121;
  sub_18F09459C();
  if (v27)
  {
    goto LABEL_9;
  }

  v97 = v20;
  v96 = v23;
  v98 = v14;
  v99 = v17;
  v29 = v117;
  v28 = v118;
  v121 = v25;
  v30 = sub_18F0942EC();
  sub_18EF89690(v30, 0);
  if (v33 == v34 >> 1)
  {
    goto LABEL_8;
  }

  v95 = 0;
  if (v33 >= (v34 >> 1))
  {
    __break(1u);
    JUMPOUT(0x18EF9146CLL);
  }

  v35 = *(v32 + v33);
  sub_18F019378(v33 + 1, v34 >> 1, v31, v32, v33, v34);
  v37 = v36;
  v39 = v38;
  swift_unknownObjectRelease();
  v40 = v115;
  if (v37 != v39 >> 1)
  {
LABEL_8:
    v45 = v116;
    v46 = sub_18F0940BC();
    swift_allocError();
    v48 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F98, &qword_18F0A0E80);
    *v48 = v45;
    sub_18F09422C();
    sub_18F0940AC();
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v46);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v119 + 8))(v9, v29);
LABEL_9:
    v49 = v120;
    return __swift_destroy_boxed_opaque_existential_1Tm(v49);
  }

  v41 = v95;
  v42 = v114;
  switch(v35)
  {
    case 1:
      LOBYTE(v122) = 1;
      sub_18EF91480();
      v56 = v110;
      sub_18F09421C();
      if (v41)
      {
        goto LABEL_18;
      }

      LOBYTE(v122) = 0;
      v57 = v102;
      v58 = v56;
      v62 = sub_18F09427C();
      v64 = v63;
      LOBYTE(v128) = 1;
      sub_18EF8FFB0();
      sub_18F09426C();
      swift_unknownObjectRelease();
      (*(v101 + 8))(v58, v57);
      (*(v119 + 8))(v9, v29);
      v77 = v124;
      v78 = v125;
      v79 = v126;
      v127 = v126;
      v68 = v97;
      *v97 = v62;
      v68[1] = v64;
      v80 = v123;
      *(v68 + 1) = v122;
      *(v68 + 2) = v80;
      v68[6] = v77;
      *(v68 + 56) = v78;
      *(v68 + 57) = v79;
      goto LABEL_20;
    case 2:
      LOBYTE(v122) = 2;
      sub_18F01950C();
      sub_18F09421C();
      if (v41)
      {
        goto LABEL_18;
      }

      sub_18F0932BC();
      LOBYTE(v122) = 0;
      sub_18EF8558C(&unk_1ED5FF550);
      sub_18F0942CC();
      LOBYTE(v122) = 1;
      sub_18F09429C();
      v70 = v69;
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8380, &qword_18F0A10A0);
      *&v99[v71[12]] = v70;
      LOBYTE(v122) = 2;
      sub_18F09429C();
      v81 = v71[16];
      v115 = v71[20];
      *&v99[v81] = v82;
      type metadata accessor for LNImageDisplayStyle(0);
      LOBYTE(v122) = 3;
      sub_18EF8558C(&unk_1ED5FCE60);
      v83 = v109;
      sub_18F09426C();
      v84 = v83;
      v85 = v99;
      swift_unknownObjectRelease();
      (*(v108 + 8))(v28, v84);
      (*(v119 + 8))(v9, v29);
      swift_storeEnumTagMultiPayload();
      v93 = v85;
      goto LABEL_21;
    case 3:
      LOBYTE(v122) = 3;
      sub_18F0194B8();
      v53 = v112;
      sub_18F09421C();
      if (v41)
      {
        goto LABEL_18;
      }

      LOBYTE(v128) = 0;
      sub_18F0183E8();
      v54 = v53;
      sub_18F0942CC();
      v55 = v119;
      v118 = *(&v122 + 1);
      v113 = v122;
      type metadata accessor for LNImageDisplayStyle(0);
      v127 = 1;
      sub_18EF8558C(&unk_1ED5FCE60);
      sub_18F09426C();
      swift_unknownObjectRelease();
      (*(v105 + 8))(v54, v40);
      (*(v55 + 8))(v9, v29);
      v72 = v128;
      v73 = v129;
      v74 = v98;
      v75 = v118;
      *v98 = v113;
      v74[1] = v75;
      v74[2] = v72;
      *(v74 + 24) = v73;
      swift_storeEnumTagMultiPayload();
      v93 = v74;
      goto LABEL_21;
    case 4:
      LOBYTE(v122) = 4;
      sub_18F019464();
      v51 = v113;
      sub_18F09421C();
      if (v41)
      {
        goto LABEL_18;
      }

      type metadata accessor for LNImageISIconType(0);
      LOBYTE(v128) = 0;
      sub_18EF8558C(&unk_1ED5FD2C0);
      v52 = v107;
      sub_18F0942CC();
      v118 = v122;
      LOBYTE(v128) = 1;
      v65 = sub_18F09427C();
      v67 = v66;
      swift_unknownObjectRelease();
      (*(v106 + 8))(v51, v52);
      (*(v119 + 8))(v9, v29);
      v68 = v100;
      *v100 = v118;
      v68[1] = v65;
      v68[2] = v67;
LABEL_20:
      swift_storeEnumTagMultiPayload();
      v93 = v68;
LABEL_21:
      v91 = v121;
      sub_18EF88240(v93, v121);
      v92 = v120;
      goto LABEL_22;
    default:
      LOBYTE(v122) = 0;
      sub_18F019560();
      v43 = v111;
      sub_18F09421C();
      if (v41)
      {
LABEL_18:
        (*(v119 + 8))(v9, v29);
        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      LOBYTE(v122) = 0;
      v44 = v104;
      v59 = sub_18F09427C();
      v61 = v60;
      LOBYTE(v122) = 1;
      v115 = sub_18F09423C();
      v118 = v76;
      type metadata accessor for LNImageDisplayStyle(0);
      LOBYTE(v128) = 2;
      sub_18EF8558C(&unk_1ED5FCE60);
      sub_18F09426C();
      swift_unknownObjectRelease();
      (*(v103 + 8))(v43, v44);
      (*(v119 + 8))(v9, v29);
      v86 = v122;
      v87 = BYTE8(v122);
      v88 = v96;
      *v96 = v59;
      v88[1] = v61;
      v89 = v118;
      v88[2] = v115;
      v88[3] = v89;
      v88[4] = v86;
      *(v88 + 40) = v87;
      swift_storeEnumTagMultiPayload();
      v90 = v88;
      v91 = v121;
      sub_18EF88240(v90, v121);
      v92 = v120;
      v42 = v114;
LABEL_22:
      sub_18EF88240(v91, v42);
      v49 = v92;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v49);
}

unint64_t sub_18EF91480()
{
  result = qword_1ED5FD9E8;
  if (!qword_1ED5FD9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD9E8);
  }

  return result;
}

_OWORD *sub_18EF914D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void LNEnumMetadata.CodableWrapper.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_180();
  v23 = v22;
  v50 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  OUTLINED_FUNCTION_95(v25);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_164();
  v27 = _s14CodableWrapperVMa_0(0);
  OUTLINED_FUNCTION_36();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7658, &qword_18F09BE70);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_46();
  type metadata accessor for LNEnumMetadata.CodableWrapper(0);
  OUTLINED_FUNCTION_36();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_22();
  v53 = v31[9];
  v54 = v31;
  v52 = (v33 - v32);
  OUTLINED_FUNCTION_171();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v27);
  v37 = v23[4];
  v51 = v23;
  OUTLINED_FUNCTION_190(v23, v23[3]);
  sub_18EF8F408();
  OUTLINED_FUNCTION_219();
  sub_18F09459C();
  if (v20)
  {
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_385();
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    if (v37)
    {
      OUTLINED_FUNCTION_26();
      sub_18EF86A6C();
    }

    sub_18EF933AC(v52 + v53, &qword_1EACB72D0);
    if (v23)
    {
    }
  }

  else
  {
    LOBYTE(a10) = 0;
    *v52 = sub_18F09427C();
    v52[1] = v38;
    OUTLINED_FUNCTION_208(1);
    v52[2] = sub_18F09423C();
    v52[3] = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73B0, &qword_18F09BD80);
    OUTLINED_FUNCTION_397();
    OUTLINED_FUNCTION_89(&unk_1ED5FF4A0);
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_243();
    sub_18F09426C();
    v52[4] = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73C0, &qword_18F09BD88);
    OUTLINED_FUNCTION_294();
    sub_18EF861C4();
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_243();
    sub_18F09426C();
    v52[5] = a10;
    OUTLINED_FUNCTION_379();
    OUTLINED_FUNCTION_5();
    sub_18EF8558C(v40);
    OUTLINED_FUNCTION_321();
    sub_18F0942CC();
    OUTLINED_FUNCTION_1_1();
    sub_18EF88240(v21, v52 + v41);
    OUTLINED_FUNCTION_343();
    OUTLINED_FUNCTION_321();
    sub_18F09426C();
    sub_18EF872D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7640, &qword_18F09BE68);
    sub_18EF90250();
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_243();
    sub_18F0942CC();
    *(v52 + v54[10]) = a10;
    OUTLINED_FUNCTION_208(7);
    v42 = sub_18F09423C();
    v43 = (v52 + v54[11]);
    *v43 = v42;
    v43[1] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
    sub_18EF9CC4C();
    OUTLINED_FUNCTION_47();
    sub_18F09426C();
    *(v52 + v54[12]) = a10;
    OUTLINED_FUNCTION_208(9);
    *(v52 + v54[13]) = sub_18F09424C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    OUTLINED_FUNCTION_361();
    sub_18EF883DC();
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_276();
    *(v52 + v54[14]) = a10;
    OUTLINED_FUNCTION_208(11);
    v45 = sub_18F09423C();
    OUTLINED_FUNCTION_290(v45, v46, v54[15]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74A8, &qword_18F09BDC0);
    OUTLINED_FUNCTION_360();
    sub_18F0134B4();
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_276();
    *(v52 + v54[16]) = a10;
    sub_18EF99E5C();
    OUTLINED_FUNCTION_126();
    sub_18F09426C();
    *(v52 + v54[17]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74F8, &qword_18F09BDD8);
    sub_18F0135BC();
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_276();
    v47 = v54[18];
    v48 = OUTLINED_FUNCTION_341();
    v49(v48);
    *(v52 + v47) = a10;
    OUTLINED_FUNCTION_199();
    sub_18EF86A14(v52, v50);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    OUTLINED_FUNCTION_23();
    sub_18EF86A6C();
  }

  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_177();
}

uint64_t OUTLINED_FUNCTION_308(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_18EF91D70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v18 = _s14CodableWrapperVMa_2(0);
  MEMORY[0x1EEE9AC00](v18);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB80E0, &qword_18F0A0F88);
  v17 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v7 = &v14 - v6;
  v8 = _s14CodableWrapperVMa_18(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF8F4C8();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v15 = v8;
  v11 = v17;
  v21 = 0;
  *v10 = sub_18F09427C();
  v10[1] = v12;
  v14 = v12;
  v20 = 1;
  sub_18EF8558C(&unk_1ED5FE420);
  sub_18F0942CC();
  (*(v11 + 8))(v7, v19);
  sub_18EF88240(v5, v10 + *(v15 + 20));
  sub_18EF86A14(v10, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_18EF86A6C();
}

unint64_t sub_18EF9208C()
{
  result = qword_1ED5FE090;
  if (!qword_1ED5FE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE090);
  }

  return result;
}

uint64_t sub_18EF920E0(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656C746974627573;
      break;
    case 2:
      result = 0x6567616D69;
      break;
    case 3:
      result = 0x32566567616D69;
      break;
    case 4:
      result = 0x736D796E6F6E7973;
      break;
    case 5:
      result = 0x7470697263736564;
      break;
    default:
      return result;
  }

  return result;
}

id sub_18EF928FC@<X0>(uint64_t a1@<X0>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v15 - v8;
  v10 = _s14CodableWrapperVMa_0(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  sub_18EF86A14(a1, v12);
  sub_18EF9FE2C();
  v13 = a3;
  result = sub_18EF9CEB8(v12, v9, a3);
  *a4 = result;
  return result;
}

uint64_t sub_18EF92A54(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, void (*a4)(unint64_t, uint64_t))
{
  v5 = v4;
  v6 = MEMORY[0x1E69E7CC8];
  v37 = MEMORY[0x1E69E7CC8];
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  while (1)
  {
    if (!v10)
    {
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          goto LABEL_25;
        }

        v10 = *(v7 + 8 * v14);
        ++v13;
        if (v10)
        {
          v13 = v14;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_10:
    v15 = (v13 << 9) | (8 * __clz(__rbit64(v10)));
    v16 = *(*(a3 + 48) + v15);
    v36 = *(*(a3 + 56) + v15);

    v17 = v16;
    a1(&v32, &v36);
    if (v5)
    {
      break;
    }

    v10 &= v10 - 1;

    if (v33)
    {
      sub_18EF914D4(&v32, v35);
      sub_18EF914D4(v35, v34);
      v18 = *(v6 + 16);
      if (*(v6 + 24) <= v18)
      {
        a4(v18 + 1, 1);
      }

      v6 = v37;
      sub_18F093B8C();
      sub_18F09452C();
      sub_18F093C1C();
      v19 = sub_18F09456C();

      v20 = v6 + 64;
      v21 = -1 << *(v6 + 32);
      v22 = v19 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v6 + 64 + 8 * (v22 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v21) >> 6;
        while (++v23 != v26 || (v25 & 1) == 0)
        {
          v27 = v23 == v26;
          if (v23 == v26)
          {
            v23 = 0;
          }

          v25 |= v27;
          v28 = *(v20 + 8 * v23);
          if (v28 != -1)
          {
            v24 = __clz(__rbit64(~v28)) + (v23 << 6);
            goto LABEL_24;
          }
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~*(v6 + 64 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v6 + 48) + 8 * v24) = v17;
      result = sub_18EF914D4(v34, (*(v6 + 56) + 32 * v24));
      ++*(v6 + 16);
    }

    else
    {

      result = sub_18EF933AC(&v32, &qword_1EACB9180);
    }
  }

LABEL_25:

  return v6;
}

uint64_t OUTLINED_FUNCTION_354()
{
}

void sub_18EF92E2C()
{
  OUTLINED_FUNCTION_34_0();
  v2 = *v1;
  OUTLINED_FUNCTION_15_0(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_38_0(v2);
  if (!v2[2])
  {
LABEL_28:

    *v0 = v7;
    return;
  }

  v32 = v2;
  v8 = 0;
  v9 = v2;
  OUTLINED_FUNCTION_0_7();
  v12 = v11 & v10;
  OUTLINED_FUNCTION_25_0();
  if (!v12)
  {
LABEL_4:
    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v0)
      {
        break;
      }

      ++v14;
      if (*(v9 + 8 * v8))
      {
        OUTLINED_FUNCTION_229();
        v12 = v16 & v15;
        goto LABEL_9;
      }
    }

    if (v33)
    {
      OUTLINED_FUNCTION_9_1();
      if (v28 != v29)
      {
        OUTLINED_FUNCTION_11_1(v27);
      }

      else
      {
        v30 = OUTLINED_FUNCTION_8_1();
        sub_18EFAF4AC(v30, v31, v9);
      }

      v2[2] = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_9:
    v17 = v13 | (v8 << 6);
    v18 = v2[7];
    v19 = *(v2[6] + 8 * v17);
    v20 = (v18 + 32 * v17);
    if (v33)
    {
      sub_18EF914D4(v20, v34);
    }

    else
    {
      sub_18EFB6E2C(v20, v34);
      v21 = v19;
    }

    sub_18F093B8C();
    sub_18F09452C();
    sub_18F093C1C();
    sub_18F09456C();

    OUTLINED_FUNCTION_16_0();
    if (v22)
    {
      break;
    }

    OUTLINED_FUNCTION_5_3();
LABEL_20:
    OUTLINED_FUNCTION_2_4();
    *(v7 + 64 + v24) |= v25;
    *(*(v7 + 48) + 8 * v26) = v19;
    sub_18EF914D4(v34, (*(v7 + 56) + 32 * v26));
    OUTLINED_FUNCTION_13_1();
    v2 = v32;
    if (!v12)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_5();
  while (1)
  {
    OUTLINED_FUNCTION_18_0();
    if (v22)
    {
      if (v23)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_19_0();
    if (!v22)
    {
      OUTLINED_FUNCTION_3_3();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void OUTLINED_FUNCTION_24_0(uint64_t a1@<X8>)
{
  *(v6 + v1) = v2;
  v7 = (*(v3 + 48) + 16 * a1);
  *v7 = v4;
  v7[1] = v5;
}

id sub_18EF9307C()
{
  OUTLINED_FUNCTION_115();
  if (v2)
  {
    sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
    v3 = OUTLINED_FUNCTION_414();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 initWithName:v1 numericFormat:v0 synonyms:v3];

  return v4;
}

uint64_t OUTLINED_FUNCTION_275(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_18F0943CC();
}

id sub_18EF93150(uint64_t *a1)
{
  if (a1[1])
  {

    v2 = sub_18F093B5C();
  }

  else
  {
    v2 = 0;
  }

  if (a1[3])
  {

    v3 = sub_18F093B5C();
  }

  else
  {
    v3 = 0;
  }

  if (a1[5])
  {

    v4 = sub_18F093B5C();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntroducedVersion:v2 deprecatedVersion:v3 obsoletedVersion:v4];

  return v5;
}

void sub_18EF9328C()
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_145();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v4);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_21();
  v7 = _s14CodableWrapperVMa_0(v6);
  v8 = OUTLINED_FUNCTION_95(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_256();
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  OUTLINED_FUNCTION_8();
  sub_18EF86A14(v2, v3);
  OUTLINED_FUNCTION_363();
  sub_18EF9FE2C();
  v9 = v1;
  v10 = OUTLINED_FUNCTION_197();
  *v0 = sub_18EF9CEB8(v10, v11, v1);
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_177();
}

uint64_t sub_18EF933AC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_311(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_36();
  (*(v5 + 8))(v2);
  return v2;
}

void *sub_18EF933FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v54 = &v47 - v3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8698, &qword_18F0A12C0);
  v4 = MEMORY[0x1EEE9AC00](v59);
  v53 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x1EEE9AC00](v4);
  v52 = (&v47 - v7);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v47 - v9);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v47 - v11);
  v13 = a1 + 64;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  v17 = (v14 + 63) >> 6;
  v55 = a1;

  v18 = 0;
  v19 = MEMORY[0x1E69E7CC8];
  v48 = v17;
  v49 = a1 + 64;
  v50 = v10;
  v51 = v12;
  if (v16)
  {
    while (1)
    {
      v58 = v19;
LABEL_9:
      v21 = __clz(__rbit64(v16)) | (v18 << 6);
      v22 = *(v55 + 56);
      v23 = *(*(v55 + 48) + 8 * v21);
      v24 = _s14CodableWrapperVMa_0(0);
      v25 = v59;
      sub_18EF86A14(v22 + *(*(v24 - 8) + 72) * v21, v12 + *(v59 + 48));
      *v12 = v23;
      sub_18EF9FE2C();
      v57 = *v10;
      v56 = sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
      v26 = v52;
      sub_18EF9FE2C();
      v27 = *v26;
      v28 = v23;

      v29 = *(v25 + 48);
      v30 = v53;
      sub_18EF9FE2C();

      v31 = v54;
      sub_18EF9FE2C();
      sub_18EF86A6C();
      v32 = sub_18EF9CEB8((v26 + v29), v31, 0);
      v33 = v58;
      swift_isUniquelyReferenced_nonNull_native();
      v60 = v33;
      v34 = v57;
      sub_18EF952E4(v57);
      if (__OFADD__(v33[2], (v36 & 1) == 0))
      {
        break;
      }

      v37 = v35;
      v38 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB86A0, &qword_18F0A12C8);
      if (sub_18F09417C())
      {
        sub_18EF952E4(v34);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_23;
        }

        v37 = v39;
      }

      v12 = v51;
      v19 = v60;
      if (v38)
      {
        v41 = v60[7];
        v42 = *(v41 + 8 * v37);
        *(v41 + 8 * v37) = v32;

        sub_18EF933AC(v12, &qword_1EACB8698);
      }

      else
      {
        v60[(v37 >> 6) + 8] |= 1 << v37;
        *(v19[6] + 8 * v37) = v34;
        *(v19[7] + 8 * v37) = v32;
        sub_18EF933AC(v12, &qword_1EACB8698);
        v43 = v19[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_22;
        }

        v19[2] = v45;
      }

      v16 &= v16 - 1;
      v10 = v50;
      sub_18EF86A6C();
      v17 = v48;
      v13 = v49;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {

        return v19;
      }

      v16 = *(v13 + 8 * v20);
      ++v18;
      if (v16)
      {
        v58 = v19;
        v18 = v20;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  type metadata accessor for LNStaticDeferredLocalizedStringAlternativeKind(0);
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

id sub_18EF938B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v9 = _s14CodableWrapperVMa_0(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  sub_18EF86A14(a1, v11);
  sub_18EF9FE2C();
  v12 = a3;
  v13 = sub_18EF9CEB8(v11, v8, a3);
  v14 = _s14CodableWrapperVMa_1(0);
  v32 = a2;
  v33 = a3;
  v15 = sub_18EFD9B58(sub_18EFB0F1C);
  v16 = *(a1 + *(v14 + 24));
  v30 = a2;
  v31 = a3;
  sub_18EF9D97C(sub_18EFA3E10, v29, v16, _s14CodableWrapperVMa_0, v17, v18, v19, v20, v26, v27, v28[0], v28[1]);
  v21 = sub_18F093DBC();

  v28[2] = a2;
  v28[3] = a3;
  v22 = sub_18EF9EBC8(sub_18EFA3E10);
  sub_18EF825F4(0, &qword_1ED5FE1F0, off_1E72AFE80);
  v23 = sub_18EF9DA9C(a1 + *(v14 + 32), a2);
  v24 = [v27 initWithDescriptionText:v13 categoryName:v15 searchKeywords:v21 resultValueName:v22 icon:v23];

  sub_18EF86A6C();
  sub_18EF933AC(a2, &qword_1EACB72C8);
  return v24;
}

void *sub_18EF93B88(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = result;
  v7 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  v8 = *(a3 + 16);
  while (1)
  {
    if (v8 == v7)
    {
      return v14;
    }

    if (v7 >= v8)
    {
      break;
    }

    v9 = a4(0);
    v11 = *(v9 - 8);
    result = (v9 - 8);
    v10 = v11;
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_14;
    }

    result = (v6)(&v16, a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v7);
    if (v4)
    {
      v13 = v14;

      return v13;
    }

    ++v7;
    if (v16)
    {
      MEMORY[0x193AD88C0](result);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18F093DFC();
      }

      OUTLINED_FUNCTION_320();
      result = sub_18F093E3C();
      v14 = v17;
      v7 = v12;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_18EF93D0C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  i = a1;
  v135 = a2;
  v136 = a4;
  v5 = type metadata accessor for LNEnumMetadata.CodableWrapper(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v132 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v133 = &v126 - v8;
  v9 = type metadata accessor for LNEntityMetadata.CodableWrapper(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v130 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v131 = (&v126 - v12);
  v13 = type metadata accessor for MeasurementWrapper(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v129 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18F09310C();
  v128 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18F09331C();
  v127 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_18F0932BC();
  v126 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v126 - v25;
  v27 = _s14CodableWrapperVMa_0(0);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = (&v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v28);
  v33 = &v126 - v32;
  switch(a3 >> 60)
  {
    case 1uLL:
      v96 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v97 = v136;
      v136[3] = MEMORY[0x1E69E63B0];
      *v97 = v96;
      return result;
    case 2uLL:
      v83 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v82 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v84 = v136;
      v136[3] = MEMORY[0x1E69E6158];
      *v84 = v83;
      v84[1] = v82;

    case 3uLL:
      v85 = swift_projectBox();
      sub_18EF86A14(v85, v33);
      v86 = sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
      sub_18EF86A14(v33, v30);
      sub_18EF9FE2C();
      v87 = v135;
      v88 = v135;
      v89 = sub_18EF9CEB8(v30, v26, v87);
      v90 = v136;
      v136[3] = v86;
      *v90 = v89;
      return sub_18EF86A6C();
    case 4uLL:
      v50 = swift_projectBox();
      v51 = v126;
      (*(v126 + 16))(v23, v50, v21);
      v52 = v136;
      v136[3] = v21;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v52);
      return (*(v51 + 32))(boxed_opaque_existential_0, v23, v21);
    case 5uLL:
      v98 = swift_projectBox();
      v99 = v127;
      (*(v127 + 16))(v20, v98, v18);
      v100 = v136;
      v136[3] = v18;
      v101 = __swift_allocate_boxed_opaque_existential_0(v100);
      return (*(v99 + 32))(v101, v20, v18);
    case 6uLL:
      v106 = swift_projectBox();
      v107 = v128;
      (*(v128 + 16))(v17, v106, v15);
      v108 = v136;
      v136[3] = v15;
      v109 = __swift_allocate_boxed_opaque_existential_0(v108);
      return (*(v107 + 32))(v109, v17, v15);
    case 7uLL:
      v91 = swift_projectBox();
      v92 = v129;
      sub_18EF86A14(v91, v129);
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB87C8, &qword_18F0A13A0);
      v94 = v136;
      v136[3] = v93;
      v95 = __swift_allocate_boxed_opaque_existential_0(v94);
      (*(*(v93 - 8) + 16))(v95, v92, v93);
      return sub_18EF86A6C();
    case 8uLL:
      sub_18EF825F4(0, &qword_1ED5FCE00, 0x1E696ACD0);
      v80 = &qword_1EACB87C0;
      v81 = 0x1E696E840;
      goto LABEL_32;
    case 9uLL:
      sub_18EF825F4(0, &qword_1ED5FCE00, 0x1E696ACD0);
      v80 = &qword_1EACB87B8;
      v81 = 0x1E695FC20;
LABEL_32:
      v123 = sub_18EF825F4(0, v80, v81);
      result = sub_18F093EEC();
      v125 = v136;
      if (result)
      {
        v136[3] = v123;
        *v125 = result;
      }

      else
      {
        *v136 = 0u;
        *(v125 + 1) = 0u;
      }

      return result;
    case 0xAuLL:
      v110 = swift_projectBox();
      v111 = v131;
      sub_18EF86A14(v110, v131);
      v112 = sub_18EF825F4(0, &qword_1ED5FF428, off_1E72B0020);
      v113 = v130;
      sub_18EF86A14(v111, v130);
      sub_18EF9FE2C();
      v114 = v135;
      v115 = v135;
      LNEntityMetadata.init(from:bundleURL:effectiveBundleIdentifier:)(v113, v26, v114, v116, v117, v118, v119, v120, v126, v127, v128, v129, v130, v131, v132, v133, i, v135, v136, v137);
      v121 = v136;
      v136[3] = v112;
      *v121 = v122;
      return sub_18EF86A6C();
    case 0xBuLL:
      v37 = swift_projectBox();
      v38 = v133;
      sub_18EF86A14(v37, v133);
      v39 = sub_18EF825F4(0, &qword_1ED5FF268, off_1E72B0048);
      v40 = v132;
      sub_18EF86A14(v38, v132);
      sub_18EF9FE2C();
      v41 = v135;
      v42 = v135;
      LNEnumMetadata.init(from:bundleURL:effectiveBundleIdentifier:)(v40, v26, v41, v43, v44, v45, v46, v47, v126, v127, v128, v129, v130, v131, v132, v133, i, v135, v136, v137);
      v48 = v136;
      v136[3] = v39;
      *v48 = v49;
      return sub_18EF86A6C();
    case 0xCuLL:
      v54 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB87A8, &qword_18F0A1390);
      v55 = sub_18F0941CC();
      v36 = v55;
      v56 = 0;
      v57 = v54 + 64;
      v58 = 1 << *(v54 + 32);
      v59 = -1;
      if (v58 < 64)
      {
        v59 = ~(-1 << v58);
      }

      v60 = v59 & *(v54 + 64);
      v61 = (v58 + 63) >> 6;
      v132 = v55 + 64;
      v133 = v54;
      v131 = v55;
      if (v60)
      {
        goto LABEL_9;
      }

      break;
    case 0xDuLL:
      MEMORY[0x1EEE9AC00](result);
      v102 = v135;
      *(&v126 - 2) = i;
      *(&v126 - 1) = v102;
      v104 = sub_18EFA40F4(sub_18EF92D60, (&v126 - 4), v103);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8798, &qword_18F0A1388);
      v105 = v136;
      v136[3] = result;
      *v105 = v104;
      return result;
    case 0xEuLL:
      v36 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      result = sub_18EF825F4(0, &qword_1EACB87A0, 0x1E695DFB0);
      goto LABEL_35;
    default:
      v34 = *(a3 + 16);
      v35 = v136;
      v136[3] = MEMORY[0x1E69E6530];
      *v35 = v34;
      return result;
  }

LABEL_10:
  v63 = v56;
  while (1)
  {
    v56 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v56 >= v61)
    {
      break;
    }

    v64 = *(v57 + 8 * v56);
    ++v63;
    if (v64)
    {
      v62 = __clz(__rbit64(v64));
      for (i = (v64 - 1) & v64; ; i = (v60 - 1) & v60)
      {
        v65 = v62 | (v56 << 6);
        v66 = *(v133 + 56);
        v67 = *(v133 + 48) + 16 * v65;
        v68 = *(v67 + 8);
        v135 = *v67;
        v69 = (v66 + 16 * v65);
        v70 = *v69;
        v71 = v69[1];
        v72 = objc_allocWithZone(MEMORY[0x1E696AD98]);

        v73 = [v72 initWithInteger_];
        v74 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        v75 = [objc_allocWithZone(LNIntentCollectionSize) initWithMin:v73 max:v74];

        v36 = v131;
        *(v132 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
        v76 = (v36[6] + 16 * v65);
        *v76 = v135;
        v76[1] = v68;
        *(v36[7] + 8 * v65) = v75;
        v77 = v36[2];
        v78 = __OFADD__(v77, 1);
        v79 = v77 + 1;
        if (v78)
        {
          break;
        }

        v36[2] = v79;
        v60 = i;
        if (!i)
        {
          goto LABEL_10;
        }

LABEL_9:
        v62 = __clz(__rbit64(v60));
      }

LABEL_40:
      __break(1u);
      JUMPOUT(0x18EF94824);
    }
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB87B0, &qword_18F0A1398);
LABEL_35:
  v124 = v136;
  v136[3] = result;
  *v124 = v36;
  return result;
}

uint64_t OUTLINED_FUNCTION_222()
{

  return sub_18EF86A6C();
}

void sub_18EF94930()
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_145();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v4);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_21();
  v7 = _s14CodableWrapperVMa_12(v6);
  v8 = OUTLINED_FUNCTION_95(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_256();
  sub_18EF825F4(0, &qword_1ED5FE780, off_1E72B0108);
  sub_18EF86A14(v2, v3);
  OUTLINED_FUNCTION_363();
  sub_18EF9FE2C();
  v9 = v1;
  v10 = OUTLINED_FUNCTION_197();
  *v0 = sub_18EF94A50(v10, v11, v1);
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_177();
}

id sub_18EF94A50(void *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v40 - v10;
  v12 = _s14CodableWrapperVMa_0(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;
  sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
  v18 = sub_18EF9E62C(a1[2]);
  if (v18)
  {
    v19 = v18;
    v42 = a2;
    v20 = _s14CodableWrapperVMa_12(0);
    sub_18EF9FE2C();
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      sub_18EF933AC(v11, &qword_1EACB72D0);
      if (a1[1])
      {
        v21 = sub_18F093B5C();
      }

      else
      {
        v21 = 0;
      }

      v23 = a1 + v20[7];
      if (v23[8])
      {
        v24 = 0;
      }

      else
      {
        v24 = *v23;
      }

      if (*(a1 + v20[8] + 8))
      {
        v25 = sub_18F093B5C();
      }

      else
      {
        v25 = 0;
      }

      v30 = *(a1 + v20[9]);
      if (*(a1 + v20[10] + 8))
      {
        v31 = sub_18F093B5C();
      }

      else
      {
        v31 = 0;
      }

      if (*(a1 + v20[11] + 8))
      {
        v34 = sub_18F093B5C();
      }

      else
      {
        v34 = 0;
      }

      v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:v21 valueType:v19 title:0 capabilities:v24 updateActionIdentifier:v25 optional:v30 & 1 spotlightAttributeKey:v31 spotlightCustomAttributeKey:v34];

      sub_18EF933AC(v42, &qword_1EACB72C8);
    }

    else
    {
      sub_18EF88240(v11, v17);
      if (a1[1])
      {
        v41 = sub_18F093B5C();
      }

      else
      {
        v41 = 0;
      }

      sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
      sub_18EF86A14(v17, v15);
      sub_18EF9FE2C();
      v40 = a3;
      v26 = sub_18EF9CEB8(v15, v8, a3);
      v27 = a1 + v20[7];
      if (v27[8])
      {
        v28 = 0;
      }

      else
      {
        v28 = *v27;
      }

      if (*(a1 + v20[8] + 8))
      {
        v29 = sub_18F093B5C();
      }

      else
      {
        v29 = 0;
      }

      v32 = *(a1 + v20[9]);
      if (*(a1 + v20[10] + 8))
      {
        v33 = sub_18F093B5C();
      }

      else
      {
        v33 = 0;
      }

      if (*(a1 + v20[11] + 8))
      {
        v35 = sub_18F093B5C();
      }

      else
      {
        v35 = 0;
      }

      v36 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v37 = v32 & 1;
      v38 = v41;
      v22 = [v36 initWithIdentifier:v41 valueType:v19 title:v26 capabilities:v28 updateActionIdentifier:v29 optional:v37 spotlightAttributeKey:v33 spotlightCustomAttributeKey:v35];

      sub_18EF933AC(v42, &qword_1EACB72C8);
      sub_18EF86A6C();
    }

    sub_18EF86A6C();
  }

  else
  {
    sub_18EF933AC(a2, &qword_1EACB72C8);

    sub_18EF86A6C();
    return 0;
  }

  return v22;
}

id sub_18EF94F6C(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return 0;
  }

  else
  {
    return [objc_opt_self() *off_1E72B0B40[a1]];
  }
}

void *sub_18EF94FC0(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC8];
  v26 = v5;
  v27 = v1;
  if (v4)
  {
    while (1)
    {
      v11 = v9;
LABEL_8:
      v12 = (*(a1 + 56) + 48 * (__clz(__rbit64(v4)) | (v11 << 6)));
      v13 = v12[2];
      v30 = v12[1];
      v31 = v13;
      v29 = *v12;
      v32 = v29;
      v33 = v30;
      v34 = v13;

      sub_18EF9FE2C();
      sub_18EF9FE2C();
      sub_18EF9FE2C();
      v14 = sub_18F093B5C();
      sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);

      v15 = sub_18EF93150(&v29);
      swift_isUniquelyReferenced_nonNull_native();
      sub_18EF952E4(v14);
      if (__OFADD__(v10[2], (v6 & 1) == 0))
      {
        break;
      }

      v17 = v16;
      v18 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8898, &qword_18F0A1458);
      if (sub_18F09417C())
      {
        sub_18EF952E4(v14);
        if ((v18 & 1) != (v6 & 1))
        {
          goto LABEL_22;
        }

        v17 = v19;
      }

      v4 &= v4 - 1;
      if (v18)
      {
        v20 = v10[7];
        v21 = *(v20 + 8 * v17);
        *(v20 + 8 * v17) = v15;
      }

      else
      {
        v10[(v17 >> 6) + 8] |= 1 << v17;
        *(v10[6] + 8 * v17) = v14;
        *(v10[7] + 8 * v17) = v15;

        v22 = v10[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_21;
        }

        v10[2] = v24;
      }

      v9 = v11;
      v5 = v26;
      v1 = v27;
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v5)
      {

        return v10;
      }

      v4 = *(v1 + 8 * v11);
      ++v9;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  type metadata accessor for LNPlatformName(0, v6, v7, v8);
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

void sub_18EF952E4(uint64_t a1)
{
  sub_18F093B8C();
  sub_18F09452C();
  sub_18F093C1C();
  sub_18F09456C();
  OUTLINED_FUNCTION_284();

  OUTLINED_FUNCTION_292();
  sub_18EF9536C();
}

void sub_18EF9536C()
{
  OUTLINED_FUNCTION_260();
  v1 = ~(-1 << *(v0 + 32));
  for (i = v2 & v1; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v1)
  {
    v4 = sub_18F093B8C();
    v6 = v5;
    if (v4 == sub_18F093B8C() && v6 == v7)
    {

      break;
    }

    OUTLINED_FUNCTION_264();
    v9 = sub_18F09444C();

    if (v9)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_259();
}

void OUTLINED_FUNCTION_255(void *a1@<X8>)
{
  v2 = *(v1 - 272);
  *a1 = *(v1 - 264);
  a1[1] = v2;
}

uint64_t get_enum_tag_for_layout_string_12LinkMetadata016LNSystemProtocolB7StorageO(uint64_t a1)
{
  if ((*(a1 + 32) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 32) & 0xF;
  }
}

uint64_t OUTLINED_FUNCTION_11_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18F09444C();
}

uint64_t sub_18EF955D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_18EF9561C()
{
  result = qword_1ED5FF1D8;
  if (!qword_1ED5FF1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF1D8);
  }

  return result;
}

uint64_t sub_18EF95670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_18EF956C0()
{
  result = qword_1ED5FF290[0];
  if (!qword_1ED5FF290[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7450, &qword_18F09BDA8);
    sub_18EF8558C(&unk_1ED5FF0E8);
    sub_18EFBE7AC();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED5FF290);
  }

  return result;
}

unint64_t sub_18EF9577C(void *a1)
{
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7FC8, &qword_18F0A0EA8);
  v143 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v140 = &v95 - v2;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7FD0, &qword_18F0A0EB0);
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v137 = &v95 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7FD8, &qword_18F0A0EB8);
  v127 = *(v4 - 8);
  v128 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v139 = &v95 - v5;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7FE0, &qword_18F0A0EC0);
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v138 = &v95 - v6;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7FE8, &qword_18F0A0EC8);
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v136 = &v95 - v7;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7FF0, &qword_18F0A0ED0);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v135 = &v95 - v8;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7FF8, &qword_18F0A0ED8);
  v118 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v142 = &v95 - v9;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8000, &qword_18F0A0EE0);
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v134 = &v95 - v10;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8008, &qword_18F0A0EE8);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v141 = &v95 - v11;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8010, &qword_18F0A0EF0);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v133 = &v95 - v12;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8018, &qword_18F0A0EF8);
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v132 = &v95 - v13;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8020, &qword_18F0A0F00);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v131 = &v95 - v14;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8028, &qword_18F0A0F08);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v130 = &v95 - v15;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8030, &qword_18F0A0F10);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v17 = &v95 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8038, &qword_18F0A0F18);
  v102 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v95 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8040, &qword_18F0A0F20);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v95 - v23;
  v25 = a1[3];
  v144 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v25);
  sub_18EF9F4F8();
  v26 = v145;
  sub_18F09459C();
  if (v26)
  {
    goto LABEL_10;
  }

  v99 = v20;
  v98 = v18;
  v100 = v17;
  v28 = v141;
  v27 = v142;
  v29 = v143;
  v145 = v22;
  v30 = sub_18F0942EC();
  sub_18EF89690(v30, 0);
  if (v33 == v34 >> 1)
  {
LABEL_9:
    v42 = sub_18F0940BC();
    swift_allocError();
    v44 = v43;
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F98, &qword_18F0A0E80) + 48);
    *v44 = &type metadata for TypeSpecificMetadataStorage;
    sub_18F09422C();
    sub_18F0940AC();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v145 + 8))(v24, v21);
    goto LABEL_10;
  }

  v101 = v21;
  v97 = 0;
  if (v33 >= (v34 >> 1))
  {
    __break(1u);
    JUMPOUT(0x18EF973E8);
  }

  v96 = *(v32 + v33);
  sub_18F019378(v33 + 1, v34 >> 1, v31, v32, v33, v34);
  v36 = v35;
  v38 = v37;
  swift_unknownObjectRelease();
  if (v36 != v38 >> 1)
  {
    v21 = v101;
    goto LABEL_9;
  }

  v39 = v29;
  v40 = v97;
  v18 = v140;
  switch(v96)
  {
    case 1:
      v147 = 1;
      sub_18F017694();
      v69 = v100;
      v46 = v101;
      sub_18F09421C();
      if (v40)
      {
        goto LABEL_38;
      }

      v70 = swift_allocObject();
      v71 = v104;
      sub_18F09429C();
      v72 = (v103 + 8);
      v73 = (v145 + 8);
      v93 = v92;
      swift_unknownObjectRelease();
      (*v72)(v69, v71);
      (*v73)(v24, v101);
      *(v70 + 16) = v93;
      v18 = v70 | 0x1000000000000000;
      break;
    case 2:
      v148 = 2;
      sub_18EF97950();
      v60 = v130;
      v46 = v101;
      sub_18F09421C();
      if (v40)
      {
        goto LABEL_38;
      }

      v61 = swift_allocObject();
      v62 = v106;
      v89 = sub_18F09427C();
      v91 = v90;
      swift_unknownObjectRelease();
      (*(v105 + 8))(v60, v62);
      (*(v145 + 8))(v24, v101);
      *(v61 + 16) = v89;
      *(v61 + 24) = v91;
      v18 = v61 | 0x2000000000000000;
      break;
    case 3:
      v149 = 3;
      sub_18F017640();
      v63 = v131;
      v46 = v101;
      sub_18F09421C();
      if (v40)
      {
        goto LABEL_38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7E40, &qword_18F0A0DA0);
      v64 = swift_allocBox();
      _s14CodableWrapperVMa_0(0);
      sub_18EF8558C(&unk_1ED5FF4F8);
      v65 = v108;
      sub_18F0942CC();
      swift_unknownObjectRelease();
      (*(v107 + 8))(v63, v65);
      (*(v145 + 8))(v24, v101);
      v18 = v64 | 0x3000000000000000;
      break;
    case 4:
      v150 = 4;
      sub_18F0175EC();
      v52 = v132;
      v46 = v101;
      sub_18F09421C();
      if (v40)
      {
        goto LABEL_38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7E30, &qword_18F0A0D98);
      v53 = swift_allocBox();
      sub_18F0932BC();
      sub_18EF8558C(&unk_1ED5FF550);
      v54 = v110;
      sub_18F0942CC();
      swift_unknownObjectRelease();
      (*(v109 + 8))(v52, v54);
      (*(v145 + 8))(v24, v101);
      v18 = v53 | 0x4000000000000000;
      break;
    case 5:
      v151 = 5;
      sub_18F017598();
      v74 = v133;
      v46 = v101;
      sub_18F09421C();
      if (v40)
      {
        goto LABEL_38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7E18, &qword_18F0A0D90);
      v47 = swift_allocBox();
      sub_18F09331C();
      sub_18EF8558C(&unk_1EACB8058);
      v75 = v112;
      sub_18F0942CC();
      swift_unknownObjectRelease();
      (*(v111 + 8))(v74, v75);
      (*(v145 + 8))(v24, v101);
      v88 = 0x5000000000000000;
      goto LABEL_42;
    case 6:
      v152 = 6;
      sub_18F017544();
      v46 = v101;
      sub_18F09421C();
      if (v40)
      {
        goto LABEL_38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7E00, &qword_18F0A0D88);
      v77 = swift_allocBox();
      sub_18F09310C();
      sub_18EF8558C(&unk_1EACB8050);
      v78 = v114;
      sub_18F0942CC();
      swift_unknownObjectRelease();
      (*(v113 + 8))(v28, v78);
      (*(v145 + 8))(v24, v101);
      v18 = v77 | 0x6000000000000000;
      break;
    case 7:
      v153 = 7;
      sub_18F0174F0();
      v66 = v134;
      v46 = v101;
      sub_18F09421C();
      if (v40)
      {
        goto LABEL_38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7DE8, &qword_18F0A0D80);
      v67 = swift_allocBox();
      type metadata accessor for MeasurementWrapper(0);
      sub_18EF8558C(&unk_1EACB8048);
      v68 = v117;
      sub_18F0942CC();
      swift_unknownObjectRelease();
      (*(v116 + 8))(v66, v68);
      (*(v145 + 8))(v24, v101);
      v18 = v67 | 0x7000000000000000;
      break;
    case 8:
      v154 = 8;
      sub_18F01749C();
      v18 = v27;
      v46 = v101;
      sub_18F09421C();
      if (v40)
      {
        goto LABEL_38;
      }

      v85 = swift_allocObject();
      sub_18F0183E8();
      v86 = v115;
      sub_18F0942CC();
      v87 = v145;
      swift_unknownObjectRelease();
      (*(v118 + 8))(v18, v86);
      (*(v87 + 8))(v24, v101);
      v18 = v85 | 0x8000000000000000;
      break;
    case 9:
      v155 = 9;
      sub_18F0173F4();
      v18 = v135;
      v46 = v101;
      sub_18F09421C();
      if (v40)
      {
        goto LABEL_38;
      }

      v47 = swift_allocObject();
      sub_18F0183E8();
      v58 = v120;
      sub_18F0942CC();
      v59 = v145;
      swift_unknownObjectRelease();
      (*(v119 + 8))(v18, v58);
      (*(v59 + 8))(v24, v101);
      v88 = 0x9000000000000000;
      goto LABEL_42;
    case 10:
      v156 = 10;
      sub_18EF97B84();
      v79 = v136;
      v46 = v101;
      sub_18F09421C();
      if (v40)
      {
        goto LABEL_38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7DB8, &qword_18F0A0D78);
      v47 = swift_allocBox();
      type metadata accessor for LNEntityMetadata.CodableWrapper(0);
      sub_18EF8558C(&unk_1ED5FF450);
      v80 = v122;
      sub_18F0942CC();
      swift_unknownObjectRelease();
      (*(v121 + 8))(v79, v80);
      (*(v145 + 8))(v24, v101);
      v88 = 0xA000000000000000;
      goto LABEL_42;
    case 11:
      v157 = 11;
      sub_18EF8F39C();
      v50 = v138;
      v46 = v101;
      sub_18F09421C();
      if (v40)
      {
        goto LABEL_38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7DA0, &qword_18F0A0D70);
      v47 = swift_allocBox();
      type metadata accessor for LNEnumMetadata.CodableWrapper(0);
      sub_18EF8558C(&unk_1ED5FEBB0);
      v51 = v126;
      sub_18F0942CC();
      swift_unknownObjectRelease();
      (*(v125 + 8))(v50, v51);
      (*(v145 + 8))(v24, v101);
      v88 = 0xB000000000000000;
      goto LABEL_42;
    case 12:
      v158 = 12;
      sub_18F0172C0();
      v18 = v139;
      v46 = v101;
      sub_18F09421C();
      if (v40)
      {
        goto LABEL_38;
      }

      v55 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7D88, &qword_18F0A0D68);
      sub_18F018308();
      v56 = v128;
      sub_18F0942CC();
      v57 = v145;
      swift_unknownObjectRelease();
      (*(v127 + 8))(v18, v56);
      (*(v57 + 8))(v24, v101);
      v18 = v55 | 0xC000000000000000;
      break;
    case 13:
      v159 = 13;
      sub_18F01726C();
      v76 = v137;
      v46 = v101;
      sub_18F09421C();
      if (v40)
      {
        goto LABEL_38;
      }

      swift_unknownObjectRelease();
      (*(v123 + 8))(v76, v124);
      (*(v145 + 8))(v24, v46);
      v18 = 0xE000000000000000;
      break;
    case 14:
      v160 = 14;
      sub_18EFA1AE4();
      v46 = v101;
      sub_18F09421C();
      if (v40)
      {
LABEL_38:
        (*(v145 + 8))(v24, v46);
        goto LABEL_39;
      }

      v47 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7D68, &qword_18F0A0D60);
      sub_18F018284();
      v48 = v129;
      sub_18F0942CC();
      v49 = v145;
      swift_unknownObjectRelease();
      (*(v39 + 8))(v18, v48);
      (*(v49 + 8))(v24, v101);
      v88 = 0xD000000000000000;
LABEL_42:
      v18 = v47 | v88;
      break;
    default:
      v146 = 0;
      sub_18EFAC048();
      v41 = v99;
      v18 = v101;
      sub_18F09421C();
      if (v40)
      {
        (*(v145 + 8))(v24, v18);
LABEL_39:
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = swift_allocObject();
        v81 = v98;
        v82 = sub_18F0942AC();
        v83 = (v102 + 8);
        v84 = (v145 + 8);
        v94 = v82;
        swift_unknownObjectRelease();
        (*v83)(v41, v81);
        (*v84)(v24, v101);
        *(v18 + 16) = v94;
      }

      break;
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  return v18;
}

uint64_t sub_18EF97424()
{
  sub_18EF9A4AC(*(v0 + 16), *(v0 + 24));
  v1 = OUTLINED_FUNCTION_307();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

unint64_t sub_18EF97460@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_18EF9577C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_18EF9748C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_18EF974B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_18EF974B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7630441 && a2 == 0xE300000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C62756F64 && a2 == 0xE600000000000000;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001DLL && 0x800000018F0AE6B0 == a2;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 7107189 && a2 == 0xE300000000000000;
          if (v9 || (sub_18F09444C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1702125924 && a2 == 0xE400000000000000;
            if (v10 || (sub_18F09444C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x706D6F4365746164 && a2 == 0xEE0073746E656E6FLL;
              if (v11 || (sub_18F09444C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6D6572757361656DLL && a2 == 0xEB00000000746E65;
                if (v12 || (sub_18F09444C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 1701603686 && a2 == 0xE400000000000000;
                  if (v13 || (sub_18F09444C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x72616D6563616C70 && a2 == 0xE90000000000006BLL;
                    if (v14 || (sub_18F09444C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x654D797469746E65 && a2 == 0xEE00617461646174;
                      if (v15 || (sub_18F09444C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6174654D6D756E65 && a2 == 0xEC00000061746164;
                        if (v16 || (sub_18F09444C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x697463656C6C6F63 && a2 == 0xEF73657A69536E6FLL;
                          if (v17 || (sub_18F09444C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 1819047278 && a2 == 0xE400000000000000;
                            if (v18 || (sub_18F09444C() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0x7961727261 && a2 == 0xE500000000000000)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_18F09444C();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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
      }
    }
  }
}

unint64_t sub_18EF97950()
{
  result = qword_1ED5FE430;
  if (!qword_1ED5FE430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE430);
  }

  return result;
}

unint64_t sub_18EF979AC(char a1)
{
  result = 7630441;
  switch(a1)
  {
    case 1:
      result = 0x656C62756F64;
      break;
    case 2:
      result = 0x676E69727473;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
      result = 7107189;
      break;
    case 5:
      result = 1702125924;
      break;
    case 6:
      result = 0x706D6F4365746164;
      break;
    case 7:
      result = 0x6D6572757361656DLL;
      break;
    case 8:
      result = 1701603686;
      break;
    case 9:
      result = 0x72616D6563616C70;
      break;
    case 10:
      result = 0x654D797469746E65;
      break;
    case 11:
      result = 0x6174654D6D756E65;
      break;
    case 12:
      result = 0x697463656C6C6F63;
      break;
    case 13:
      result = 1819047278;
      break;
    case 14:
      result = 0x7961727261;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_18EF97B84()
{
  result = qword_1ED5FE230[0];
  if (!qword_1ED5FE230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED5FE230);
  }

  return result;
}

void LNEntityMetadata.CodableWrapper.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_180();
  v23 = v22;
  v59 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  OUTLINED_FUNCTION_95(v25);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_55();
  v27 = _s14CodableWrapperVMa_0(0);
  OUTLINED_FUNCTION_36();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_256();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7608, &qword_18F09BE48);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_46();
  type metadata accessor for LNEntityMetadata.CodableWrapper(0);
  OUTLINED_FUNCTION_36();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_22();
  v61 = v31;
  v62 = v33 - v32;
  v60 = v31[10];
  OUTLINED_FUNCTION_171();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v27);
  v37 = v23[4];
  v38 = OUTLINED_FUNCTION_384();
  OUTLINED_FUNCTION_190(v38, v39);
  sub_18EF98740();
  OUTLINED_FUNCTION_219();
  sub_18F09459C();
  if (v20)
  {
    OUTLINED_FUNCTION_40();
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    if (v23)
    {
      OUTLINED_FUNCTION_26();
      sub_18EF86A6C();
    }

    sub_18EF933AC(v62 + v60, &qword_1EACB72D0);
    if (v37)
    {
    }
  }

  else
  {
    LOBYTE(a10) = 0;
    OUTLINED_FUNCTION_267();
    *v62 = sub_18F09427C();
    *(v62 + 8) = v40;
    OUTLINED_FUNCTION_208(1);
    *(v62 + 16) = sub_18F09424C();
    OUTLINED_FUNCTION_208(2);
    *(v62 + 24) = sub_18F09423C();
    *(v62 + 32) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73B0, &qword_18F09BD80);
    OUTLINED_FUNCTION_294();
    OUTLINED_FUNCTION_89(&unk_1ED5FF4A0);
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_407();
    *(v62 + 40) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73C0, &qword_18F09BD88);
    sub_18EF861C4();
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_407();
    *(v62 + 48) = a10;
    OUTLINED_FUNCTION_343();
    OUTLINED_FUNCTION_5();
    sub_18EF8558C(v42);
    OUTLINED_FUNCTION_310();
    sub_18F0942CC();
    OUTLINED_FUNCTION_1_1();
    sub_18EF88240(v21, v62 + v43);
    LOBYTE(a10) = 6;
    OUTLINED_FUNCTION_310();
    sub_18F09426C();
    sub_18EF872D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB75A8, &qword_18F09BE28);
    sub_18EF98C44();
    OUTLINED_FUNCTION_47();
    sub_18F0942CC();
    *(v62 + v61[11]) = a10;
    OUTLINED_FUNCTION_208(8);
    v44 = sub_18F09423C();
    OUTLINED_FUNCTION_290(v44, v45, v61[12]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
    sub_18EF9CC4C();
    OUTLINED_FUNCTION_47();
    sub_18F09426C();
    *(v62 + v61[13]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB75C0, &qword_18F09BE30);
    OUTLINED_FUNCTION_361();
    sub_18EF883DC();
    OUTLINED_FUNCTION_32();
    sub_18F09426C();
    *(v62 + v61[14]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7488, &qword_18F09BDB8);
    sub_18F013430();
    OUTLINED_FUNCTION_32();
    sub_18F09426C();
    *(v62 + v61[15]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB75D0, &qword_18F09BE38);
    OUTLINED_FUNCTION_360();
    sub_18EF99CB0();
    OUTLINED_FUNCTION_32();
    sub_18F09426C();
    *(v62 + v61[16]) = a10;
    OUTLINED_FUNCTION_267();
    *(v62 + v61[17]) = sub_18EFF2F68();
    OUTLINED_FUNCTION_208(14);
    OUTLINED_FUNCTION_267();
    v46 = sub_18F09423C();
    OUTLINED_FUNCTION_290(v46, v47, v61[18]);
    OUTLINED_FUNCTION_288();
    sub_18EF825F4(v48, v49, v50);
    OUTLINED_FUNCTION_288();
    sub_18EF99DFC(v51);
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_267();
    sub_18F09426C();
    *(v62 + v61[19]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74A8, &qword_18F09BDC0);
    sub_18F0134B4();
    OUTLINED_FUNCTION_32();
    sub_18F09426C();
    *(v62 + v61[20]) = a10;
    OUTLINED_FUNCTION_208(17);
    v52 = sub_18F09423C();
    OUTLINED_FUNCTION_290(v52, v53, v61[21]);
    sub_18EF99E5C();
    OUTLINED_FUNCTION_126();
    sub_18F09426C();
    *(v62 + v61[22]) = a10;
    OUTLINED_FUNCTION_208(19);
    v54 = sub_18F09423C();
    OUTLINED_FUNCTION_290(v54, v55, v61[23]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74F8, &qword_18F09BDD8);
    sub_18F0135BC();
    OUTLINED_FUNCTION_32();
    sub_18F09426C();
    v56 = v61[24];
    v57 = OUTLINED_FUNCTION_20();
    v58(v57);
    *(v62 + v56) = a10;
    OUTLINED_FUNCTION_205();
    sub_18EF86A14(v62, v59);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    OUTLINED_FUNCTION_27();
    sub_18EF86A6C();
  }

  OUTLINED_FUNCTION_177();
}

uint64_t OUTLINED_FUNCTION_15_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void *OUTLINED_FUNCTION_15_2(uint64_t a1, uint64_t a2, ...)
{

  return sub_18F09452C();
}

uint64_t OUTLINED_FUNCTION_15_3()
{
}

unint64_t sub_18EF98740()
{
  result = qword_1ED5FE7B0;
  if (!qword_1ED5FE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE7B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_276()
{

  return sub_18F09426C();
}

unint64_t sub_18EF987D4(char a1)
{
  result = 0x656D614E65707974;
  switch(a1)
  {
    case 1:
      result = 0x6E6569736E617274;
      break;
    case 2:
      result = 0x5464656C676E616DLL;
      break;
    case 3:
      result = 0xD000000000000021;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0x5479616C70736964;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x69747265706F7270;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
    case 16:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0x736D796E6F6E7973;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
    case 15:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0xD00000000000001BLL;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0xD000000000000016;
      break;
    case 20:
      result = 0x546465776F6C6C61;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *_s14CodableWrapperV10CodingKeysOwst_2(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
        JUMPOUT(0x18EF98B54);
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
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

uint64_t _s14CodableWrapperV10CodingKeysOwet_2(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_18EF98C44()
{
  result = qword_1ED5FE7C0;
  if (!qword_1ED5FE7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB75A8, &qword_18F09BE28);
    sub_18EF8558C(&unk_1ED5FE788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE7C0);
  }

  return result;
}

uint64_t sub_18EF98CF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB80C8, &qword_18F0A0F78);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  v8 = _s14CodableWrapperVMa_12(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v9 + 24);
  v13 = _s14CodableWrapperVMa_0(0);
  v40 = v12;
  v14 = v11;
  __swift_storeEnumTagSinglePayload(v11 + v12, 1, 1, v13);
  v15 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v15);
  sub_18EF99268();
  v39 = v7;
  sub_18F09459C();
  if (v2)
  {
    v17 = v40;
    __swift_destroy_boxed_opaque_existential_1Tm(v41);

    sub_18EF933AC(v14 + v17, &qword_1EACB72D0);
  }

  else
  {
    v16 = v37;
    LOBYTE(v43) = 0;
    *v14 = sub_18F09423C();
    v14[1] = v18;
    v35 = v18;
    v42 = 1;
    sub_18EF8882C();
    sub_18F0942CC();
    v14[2] = v43;
    LOBYTE(v43) = 2;
    sub_18EF8558C(&unk_1ED5FF4F8);
    sub_18F09426C();
    sub_18EF872D4();
    LOBYTE(v43) = 3;
    v19 = sub_18F09425C();
    v20 = v14 + v8[7];
    *v20 = v19;
    v20[8] = v21 & 1;
    LOBYTE(v43) = 4;
    v22 = sub_18F09423C();
    v23 = (v14 + v8[8]);
    *v23 = v22;
    v23[1] = v24;
    LOBYTE(v43) = 5;
    *(v14 + v8[9]) = sub_18F09424C();
    LOBYTE(v43) = 6;
    v25 = sub_18F09423C();
    v26 = (v14 + v8[10]);
    *v26 = v25;
    v26[1] = v27;
    LOBYTE(v43) = 7;
    v28 = sub_18F09423C();
    v29 = v16;
    v30 = (v14 + v8[11]);
    v31 = v28;
    v33 = v32;
    (*(v29 + 8))(v39, v38);
    *v30 = v31;
    v30[1] = v33;
    sub_18EF86A14(v14, v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    return sub_18EF86A6C();
  }
}

unint64_t sub_18EF99268()
{
  result = qword_1ED5FDFA0;
  if (!qword_1ED5FDFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDFA0);
  }

  return result;
}

unint64_t sub_18EF992C4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x70795465756C6176;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x696C696261706163;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x6E6F6974704F7369;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_18EF99400(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_211(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_209(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18EF994BCLL);
      case 4:
        result = OUTLINED_FUNCTION_210(result, v6);
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
          result = OUTLINED_FUNCTION_181(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18EF994E4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 8);
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

      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 8);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 8);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_170(v8);
}

_BYTE *sub_18EF99568(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_211(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_209(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18EF99624);
      case 4:
        result = OUTLINED_FUNCTION_210(result, v6);
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
          result = OUTLINED_FUNCTION_181(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18EF9965C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
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
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_170(v8);
}

unint64_t sub_18EF996E0()
{
  result = qword_1ED5FE1F8;
  if (!qword_1ED5FE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE1F8);
  }

  return result;
}

void *sub_18EF99734(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8D98, &qword_18F0A7CA0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF99908();
  sub_18F09459C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    type metadata accessor for LNPrimitiveValueTypeIdentifier(0);
    sub_18EF8558C(&unk_1ED5FE1D0);
    sub_18F0942CC();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

void *sub_18EF998DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_18EF99734(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_18EF99908()
{
  result = qword_1ED5FE220;
  if (!qword_1ED5FE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE220);
  }

  return result;
}

uint64_t sub_18EF99980@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8060, &qword_18F0A0F28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF9CCD8();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = 0;
  v9 = sub_18F09423C();
  v22 = v10;
  v24 = 1;
  v20 = sub_18F09423C();
  v21 = v11;
  v23 = 2;
  v12 = sub_18F09423C();
  v13 = v8;
  v15 = v14;
  (*(v6 + 8))(v13, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v17 = v22;
  *a2 = v9;
  a2[1] = v17;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v12;
  a2[5] = v15;
  return result;
}

double sub_18EF99BCC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_18EF99980(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_18EF99C18(unsigned __int8 a1)
{
  result = 0xD000000000000011;
  if (a1 >= 2u)
  {
    return 0xD000000000000010;
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_355()
{

  return swift_allocObject();
}

unint64_t sub_18EF99CB0()
{
  result = qword_1ED5FE3D8;
  if (!qword_1ED5FE3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB75D0, &qword_18F09BE38);
    sub_18EF8558C(&unk_1ED5FE8C0);
    sub_18EFBE9DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE3D8);
  }

  return result;
}

unint64_t sub_18EF99DFC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_293(a1);
  if (!result)
  {
    sub_18EF825F4(255, v3, v4);
    OUTLINED_FUNCTION_142();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18EF99E5C()
{
  result = qword_1ED5FED60;
  if (!qword_1ED5FED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FED60);
  }

  return result;
}

uint64_t sub_18EF99EB0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8090, &qword_18F0A0F58);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-v5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF9F694();
  sub_18F09459C();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v11[15] = 0;
  v7 = sub_18F09428C();
  v11[14] = 1;
  v8 = sub_18F09428C();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  if (v8)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 0xFFFFFFFE | v7 & 1;
}

uint64_t _s14CodableWrapperVwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18EF9A12CLL);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t OUTLINED_FUNCTION_346()
{

  return sub_18F09411C();
}

unint64_t sub_18EF9A1DC()
{
  result = qword_1ED5FEB08;
  if (!qword_1ED5FEB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEB08);
  }

  return result;
}

uint64_t sub_18EF9A258(char a1)
{
  if (a1)
  {
    return 0x664565676E616863;
  }

  else
  {
    return 0x746365666665;
  }
}

uint64_t sub_18EF9A3CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x73 && *(a1 + 8))
    {
      v2 = *a1 + 114;
    }

    else
    {
      v2 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
      if (v2 >= 0x72)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_18EF9A414(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

__n128 OUTLINED_FUNCTION_27_0@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = v12 + a1 * v13;
  *v14 = a12;
  *(v14 + 8) = a11;
  result = a8;
  *(v14 + 16) = a8;
  *(v14 + 32) = a9;
  return result;
}

uint64_t sub_18EF9A498(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_18EF9A4AC(result, a2);
  }

  return result;
}

uint64_t sub_18EF9A4AC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void sub_18EF9A518()
{
  OUTLINED_FUNCTION_29();
  if (v2)
  {
    OUTLINED_FUNCTION_217();
  }

  else
  {
    OUTLINED_FUNCTION_157();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
    OUTLINED_FUNCTION_106();
    if (*(v3 + 84) == v1)
    {
      v4 = v0[10];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7310, &qword_18F09BD48);
      OUTLINED_FUNCTION_106();
      if (*(v5 + 84) == v1)
      {
        v4 = v0[11];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7308, &qword_18F09BD40);
        v4 = v0[12];
      }
    }

    v6 = OUTLINED_FUNCTION_52(v4);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}