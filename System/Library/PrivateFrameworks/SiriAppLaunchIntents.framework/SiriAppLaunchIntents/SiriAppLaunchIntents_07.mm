uint64_t InstalledAppProvider.getApp(byBundleId:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_26615AF78(a1, a2, a3);
  if (v3 == 1)
  {
    return 0;
  }

  v5 = v3;

  return v5;
}

uint64_t InstalledAppProvider.getRecord(byBundleId:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_26615AF78(a1, a2, a3);
  if (v3 == 1)
  {
    return 0;
  }

  v5 = v4;

  return v5;
}

uint64_t sub_26615AF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v7 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v8 = sub_26615CE0C(a1, a2, 1);
  if (qword_2814B4A70 != -1)
  {
    OUTLINED_FUNCTION_13_8(&qword_2814B4A70);
  }

  v9 = v8;
  if (InstalledAppProvider.shouldIgnoreApp(bundleId:lsRecord:for:)(a1, a2, v8, a3))
  {

    return 1;
  }

  else
  {
    type metadata accessor for Application();
    return sub_2660C990C(v9);
  }
}

Swift::String_optional __swiftcall InstalledAppProvider.getAdamId(byBundleId:for:)(Swift::String byBundleId, SiriAppLaunchIntents::Actions a2)
{
  object = byBundleId._object;
  countAndFlagsBits = byBundleId._countAndFlagsBits;
  v5 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  v11 = v10 - v9;
  v12 = sub_26615AF78(countAndFlagsBits, object, a2.rawValue);
  if (v12 != 1 && (v14 = v13, v12, v14) && (v15 = [v14 iTunesMetadata], v14, v16 = objc_msgSend(v15, sel_storeItemIdentifier), v15, v16))
  {
    v25 = v16;
    v17 = sub_26618CFD0();
  }

  else
  {
    if (qword_2814B2C38 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v5, qword_2814B4A80);
    (*(v7 + 16))(v11, v19, v5);

    v20 = sub_26618C690();
    v21 = sub_26618CA90();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_266103A98(countAndFlagsBits, object, &v25);
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();
    }

    (*(v7 + 8))(v11, v5);
    v17 = 0;
    v18 = 0;
  }

  result.value._object = v18;
  result.value._countAndFlagsBits = v17;
  return result;
}

Swift::Bool __swiftcall InstalledAppProvider.isHidden(bundleId:)(Swift::String bundleId)
{
  object = bundleId._object;
  countAndFlagsBits = bundleId._countAndFlagsBits;
  objc_allocWithZone(MEMORY[0x277CC1E70]);

  v3 = sub_26615CE0C(countAndFlagsBits, object, 1);
  v5 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 appProtectionHidden];

  return v4;
}

void *InstalledAppProvider.shouldIgnoreApp(bundleId:lsRecord:for:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v17 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v18 = OUTLINED_FUNCTION_26_7();
    v9 = sub_26615CE0C(v18, v19, 1);
  }

  v10 = a3;
  v11 = [v9 appProtectionHidden];

  if (v11)
  {

    v38 = 1;
    return (v38 & 1);
  }

  v12 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v13 = sub_26615CEE8(0xD000000000000018, 0x8000000266197AF0);
  if (v13)
  {
    v14 = v13;
    v15 = sub_26618C8A0();
    v16 = [v14 BOOLForKey_];

    if (v16)
    {
      sub_26615A8F8();

      v38 = 0;
      return (v38 & 1);
    }
  }

  sub_26618C260();
  sub_26618C250();
  sub_26618C240();
  v20 = sub_26618C280();

  if (v20)
  {
    if (qword_28005BCA0 != -1)
    {
      swift_once();
    }

    v21 = OUTLINED_FUNCTION_26_7();
    v24 = sub_2661581C8(v21, v22, v23);
    if ((v25 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (qword_2814B47A8 != -1)
  {
    swift_once();
  }

  v26 = OUTLINED_FUNCTION_26_7();
  v24 = sub_2661581C8(v26, v27, v28);
  if ((v29 & 1) == 0)
  {
LABEL_18:
    v37 = v24;

    v38 = (a4 & ~v37) != 0;
    return (v38 & 1);
  }

  v30 = [objc_allocWithZone(MEMORY[0x277CFA5E0]) init];
  v31 = [v30 isClarityBoardEnabled];

  if (v31)
  {
    sub_26615CF5C();
    v32 = [swift_getObjCClassFromMetadata() sharedInstance];
    v33 = [v32 applicationBundleIdentifiers];

    v34 = sub_26618C9B0();
    v44[0] = a1;
    v44[1] = a2;
    MEMORY[0x28223BE20](v35);
    *(&v43 - 2) = v44;
    v36 = sub_266158320(sub_26615DA50, (&v43 - 4), v34);

    v38 = !v36;
    return (v38 & 1);
  }

  result = SBSCopyDisplayIdentifiers();
  if (result)
  {
    v40 = result;
    OUTLINED_FUNCTION_26_7();
    v41 = sub_26618C8A0();
    v42 = [v40 containsObject_];

    v38 = v42 ^ 1;
    return (v38 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_26615BB34()
{
  v0 = sub_26618C6B0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28005BC38 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_28005D0E8);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2660B7000, v5, v6, "\tIgnoring hidden app check due to set user default", v7, 2u);
    MEMORY[0x26677CC30](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t InstalledAppProvider.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t InstalledAppProvider.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26615BD48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660FF734;

  return InstalledAppProvider.installedApps()();
}

uint64_t sub_26615BE7C()
{
  OUTLINED_FUNCTION_18();
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0);
  v1[6] = swift_task_alloc();
  v2 = sub_26618A5B0();
  v1[7] = v2;
  OUTLINED_FUNCTION_0_4(v2);
  v1[8] = v3;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26615BF78()
{
  OUTLINED_FUNCTION_29_3();
  v7 = *(v6 + 112);
  OUTLINED_FUNCTION_32_4();
  sub_26615DC04(v2 + v7, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v1) == 1)
  {
    sub_2661567CC(v3[6]);
LABEL_7:
    v13 = swift_task_alloc();
    v3[17] = v13;
    *v13 = v3;
    v14 = sub_26615DDC0;
    goto LABEL_8;
  }

  v8 = OUTLINED_FUNCTION_28_9();
  v9(v8);
  v10 = *(v1 + 40);
  v3[12] = v10;
  if (!v10)
  {
    (*(v3[8] + 8))(v3[11], v3[7]);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_10();
  sub_26618A5A0();
  sub_26618A540();
  v11 = OUTLINED_FUNCTION_12_12();
  v5(v11);
  v12 = sub_26618A570();
  (v5)(v7, v4);
  if ((v12 & 1) == 0)
  {
    (v5)(v3[11], v3[7]);

    OUTLINED_FUNCTION_29_0();

    __asm { BRAA            X2, X16 }
  }

  v13 = swift_task_alloc();
  v3[15] = v13;
  *v13 = v3;
  v14 = sub_26615C19C;
LABEL_8:
  v13[1] = v14;
  OUTLINED_FUNCTION_29_0();

  return sub_26615C8C8();
}

uint64_t sub_26615C19C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  *(v1 + 128) = v0;

  v2 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26615C28C()
{
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0);
  v1[6] = swift_task_alloc();
  v2 = sub_26618A5B0();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26615C39C, 0, 0);
}

uint64_t sub_26615C39C()
{
  OUTLINED_FUNCTION_29_3();
  v7 = *(v6 + 112);
  OUTLINED_FUNCTION_32_4();
  sub_26615DC04(v2 + v7, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v1) == 1)
  {
    sub_2661567CC(v3[6]);
LABEL_7:
    v13 = swift_task_alloc();
    v3[17] = v13;
    *v13 = v3;
    v14 = sub_26615C754;
    goto LABEL_8;
  }

  v8 = OUTLINED_FUNCTION_28_9();
  v9(v8);
  v10 = *(v1 + 40);
  v3[12] = v10;
  if (!v10)
  {
    (*(v3[8] + 8))(v3[11], v3[7]);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_10();
  sub_26618A5A0();
  sub_26618A540();
  v11 = OUTLINED_FUNCTION_12_12();
  v5(v11);
  v12 = sub_26618A570();
  (v5)(v7, v4);
  if ((v12 & 1) == 0)
  {
    (v5)(v3[11], v3[7]);

    OUTLINED_FUNCTION_29_0();

    __asm { BRAA            X2, X16 }
  }

  v13 = swift_task_alloc();
  v3[15] = v13;
  *v13 = v3;
  v14 = sub_26615C5C0;
LABEL_8:
  v13[1] = v14;
  OUTLINED_FUNCTION_29_0();

  return sub_26615CAF8();
}

uint64_t sub_26615C5C0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  *(v1 + 128) = v0;

  v2 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26615C6B0()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[7];

  v1(v2, v3);

  v4 = OUTLINED_FUNCTION_5_7();

  return v5(v4);
}

uint64_t sub_26615C754(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t sub_26615C8C8()
{
  *(v1 + 48) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0);
  *(v1 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26615C964, 0, 0);
}

uint64_t sub_26615C964()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_20();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_21_12(v1);

  return v3(v2);
}

uint64_t sub_26615CA14()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26615CAF8()
{
  *(v1 + 48) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0);
  *(v1 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26615CB94, 0, 0);
}

uint64_t sub_26615CB94()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_20();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_21_12(v1);

  return v3(v2);
}

uint64_t sub_26615CC44()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26615CD28()
{
  v2 = v0[6];
  v1 = v0[7];
  v2[5] = v0[5];

  sub_26618A5A0();
  v3 = sub_26618A5B0();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  v4 = *(*v2 + 112);
  swift_beginAccess();
  sub_26615DC74(v1, v2 + v4);
  swift_endAccess();

  v5 = OUTLINED_FUNCTION_5_7();

  return v6(v5);
}

id sub_26615CE0C(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_26618C8A0();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_26618A4C0();

    swift_willThrow();
  }

  return v6;
}

id sub_26615CEE8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_26618C8A0();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_26615CF4C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26615CF5C()
{
  result = qword_28005C9B0;
  if (!qword_28005C9B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28005C9B0);
  }

  return result;
}

uint64_t sub_26615CFA0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_266138FA8();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_26615D00C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_26615D00C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26618CFC0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_26618C9E0();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_26615D1FC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26615D100(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26615D100(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_2660CCD6C();
    v7 = v5 - v4;
    v8 = (v6 + 16 * v4);
    while (2)
    {
      v14 = v7;
      v9 = v8;
      do
      {
        result = sub_26618CC10();
        if (result != -1)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = v9[1];
        *v9 = *(v9 - 1);
        *(v9 - 1) = v11;
        *(v9 - 2) = v10;
        v9 -= 2;
      }

      while (!__CFADD__(v7++, 1));
      ++v4;
      v8 += 2;
      v7 = v14 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_26615D1FC(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v104 = v7;
        v9 = (*a3 + 16 * v6);
        v11 = *v9;
        v10 = v9[1];
        v12 = (*a3 + 16 * v8);
        v13 = *v12;
        v14 = v12[1];
        v15 = 16 * v8;
        v113 = v11;
        v114 = v10;
        v111 = v13;
        v112 = v14;
        sub_2660CCD6C();
        v4 = &v113;
        v16 = OUTLINED_FUNCTION_20_13(&v111, MEMORY[0x277D837D0]);
        v17 = v12 + 3;
        v105 = v8;
        v18 = v8 + 2;
        while (1)
        {
          v19 = v18;
          if (++v6 >= v5)
          {
            break;
          }

          v21 = v17 + 2;
          v20 = v17[2];
          v22 = *(v17 - 1);
          v24 = v17;
          v23 = *v17;
          v113 = v24[1];
          v114 = v20;
          v111 = v22;
          v112 = v23;
          v4 = &v113;
          v25 = (v16 == -1) ^ (OUTLINED_FUNCTION_20_13(&v111, MEMORY[0x277D837D0]) != -1);
          v18 = v19 + 1;
          v17 = v21;
          if ((v25 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v6 = v5;
LABEL_9:
        if (v16 == -1)
        {
          if (v6 < v105)
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
            return;
          }

          if (v105 >= v6)
          {
            v7 = v104;
            v8 = v105;
          }

          else
          {
            if (v5 >= v19)
            {
              v26 = v19;
            }

            else
            {
              v26 = v5;
            }

            v27 = 16 * v26;
            v28 = v6;
            v29 = v105;
            v7 = v104;
            v8 = v105;
            do
            {
              if (v29 != --v28)
              {
                v30 = *a3;
                if (!*a3)
                {
                  goto LABEL_131;
                }

                v31 = (v30 + v15);
                v32 = v30 + v27;
                v33 = *v31;
                v34 = v31[1];
                *v31 = *(v32 - 16);
                *(v32 - 16) = v33;
                *(v32 - 8) = v34;
              }

              ++v29;
              v27 -= 16;
              v15 += 16;
            }

            while (v29 < v28);
          }
        }

        else
        {
          v7 = v104;
          v8 = v105;
        }
      }

      v35 = a3[1];
      if (v6 < v35)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_123;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_124;
          }

          if (v8 + a4 >= v35)
          {
            v36 = a3[1];
          }

          else
          {
            v36 = v8 + a4;
          }

          if (v36 < v8)
          {
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          if (v6 != v36)
          {
            v37 = *a3;
            sub_2660CCD6C();
            v38 = (v37 + 16 * v6);
            v106 = v8;
            v39 = v8 - v6;
            v108 = v36;
            do
            {
              v40 = (v37 + 16 * v6);
              v41 = *v40;
              v42 = v40[1];
              v43 = v39;
              v44 = v38;
              do
              {
                v45 = *(v44 - 2);
                v46 = *(v44 - 1);
                v113 = v41;
                v114 = v42;
                v111 = v45;
                v112 = v46;
                v4 = &v113;
                if (OUTLINED_FUNCTION_20_13(&v111, MEMORY[0x277D837D0]) != -1)
                {
                  break;
                }

                if (!v37)
                {
                  goto LABEL_128;
                }

                v41 = *v44;
                v42 = v44[1];
                *v44 = *(v44 - 1);
                *(v44 - 1) = v42;
                *(v44 - 2) = v41;
                v44 -= 2;
              }

              while (!__CFADD__(v43++, 1));
              ++v6;
              v38 += 2;
              --v39;
            }

            while (v6 != v108);
            v6 = v108;
            v8 = v106;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2661299B0();
        v7 = v93;
      }

      v48 = *(v7 + 2);
      v49 = v48 + 1;
      if (v48 >= *(v7 + 3) >> 1)
      {
        sub_2661299B0();
        v7 = v94;
      }

      *(v7 + 2) = v49;
      v4 = v7 + 32;
      v50 = &v7[16 * v48 + 32];
      *v50 = v8;
      *(v50 + 1) = v6;
      v109 = *result;
      if (!*result)
      {
        goto LABEL_132;
      }

      if (v48)
      {
        while (1)
        {
          v51 = v49 - 1;
          v52 = &v4[16 * v49 - 16];
          v53 = &v7[16 * v49];
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v54 = *(v7 + 4);
            v55 = *(v7 + 5);
            v64 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            v57 = v64;
LABEL_60:
            if (v57)
            {
              goto LABEL_109;
            }

            v69 = *v53;
            v68 = *(v53 + 1);
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_112;
            }

            v73 = *(v52 + 1);
            v74 = v73 - *v52;
            if (__OFSUB__(v73, *v52))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v71, v74))
            {
              goto LABEL_117;
            }

            if (v71 + v74 >= v56)
            {
              if (v56 < v74)
              {
                v51 = v49 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          if (v49 < 2)
          {
            goto LABEL_111;
          }

          v76 = *v53;
          v75 = *(v53 + 1);
          v64 = __OFSUB__(v75, v76);
          v71 = v75 - v76;
          v72 = v64;
LABEL_75:
          if (v72)
          {
            goto LABEL_114;
          }

          v78 = *v52;
          v77 = *(v52 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_116;
          }

          if (v79 < v71)
          {
            goto LABEL_89;
          }

LABEL_82:
          if (v51 - 1 >= v49)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
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
            goto LABEL_125;
          }

          if (!*a3)
          {
            goto LABEL_129;
          }

          v83 = v7;
          v84 = &v4[16 * v51 - 16];
          v85 = *v84;
          v86 = v51;
          v7 = &v4[16 * v51];
          v87 = *(v7 + 1);
          v88 = v115;
          sub_26615D814((*a3 + 16 * *v84), (*a3 + 16 * *v7), (*a3 + 16 * v87), v109);
          v115 = v88;
          if (v88)
          {
            goto LABEL_91;
          }

          if (v87 < v85)
          {
            goto LABEL_104;
          }

          v89 = v6;
          v90 = v4;
          v4 = *(v83 + 2);
          if (v86 > v4)
          {
            goto LABEL_105;
          }

          *v84 = v85;
          *(v84 + 1) = v87;
          if (v86 >= v4)
          {
            goto LABEL_106;
          }

          v91 = v86;
          v49 = (v4 - 1);
          sub_266138DCC(v7 + 16, &v4[-v91 - 1], v7);
          v7 = v83;
          *(v83 + 2) = v4 - 1;
          v92 = v4 > 2;
          v4 = v90;
          v6 = v89;
          if (!v92)
          {
            goto LABEL_89;
          }
        }

        v58 = &v4[16 * v49];
        v59 = *(v58 - 8);
        v60 = *(v58 - 7);
        v64 = __OFSUB__(v60, v59);
        v61 = v60 - v59;
        if (v64)
        {
          goto LABEL_107;
        }

        v63 = *(v58 - 6);
        v62 = *(v58 - 5);
        v64 = __OFSUB__(v62, v63);
        v56 = v62 - v63;
        v57 = v64;
        if (v64)
        {
          goto LABEL_108;
        }

        v65 = *(v53 + 1);
        v66 = v65 - *v53;
        if (__OFSUB__(v65, *v53))
        {
          goto LABEL_110;
        }

        v64 = __OFADD__(v56, v66);
        v67 = v56 + v66;
        if (v64)
        {
          goto LABEL_113;
        }

        if (v67 >= v61)
        {
          v81 = *v52;
          v80 = *(v52 + 1);
          v64 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v64)
          {
            goto LABEL_121;
          }

          if (v56 < v82)
          {
            v51 = v49 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_60;
      }

LABEL_89:
      v5 = a3[1];
      if (v6 >= v5)
      {
        goto LABEL_93;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_93:
  v4 = *result;
  if (!*result)
  {
    goto LABEL_133;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_126:
    v7 = sub_266138DB8(v7);
  }

  v95 = (v7 + 16);
  for (i = *(v7 + 2); i >= 2; *v95 = i)
  {
    if (!*a3)
    {
      goto LABEL_130;
    }

    v97 = &v7[16 * i];
    v98 = *v97;
    v99 = &v95[2 * i];
    v100 = *(v99 + 1);
    v101 = v115;
    sub_26615D814((*a3 + 16 * *v97), (*a3 + 16 * *v99), (*a3 + 16 * v100), v4);
    v115 = v101;
    if (v101)
    {
      break;
    }

    if (v100 < v98)
    {
      goto LABEL_118;
    }

    if (i - 2 >= *v95)
    {
      goto LABEL_119;
    }

    *v97 = v98;
    *(v97 + 1) = v100;
    v102 = *v95 - i;
    if (*v95 < i)
    {
      goto LABEL_120;
    }

    i = *v95 - 1;
    sub_266138DCC(v99 + 16, v102, v99);
  }

LABEL_91:
}

uint64_t sub_26615D814(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_266129DF0(a1, (a2 - a1) / 16, a4);
    v10 = &v4[2 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v37 = *v4;
      v12 = sub_2660CCD6C();
      if (OUTLINED_FUNCTION_14_14(v12, v13, v14, v15, v16, v17, v18, v19, v37) != -1)
      {
        break;
      }

      v20 = v6;
      v21 = v7 == v6;
      v6 += 16;
      if (!v21)
      {
        goto LABEL_9;
      }

LABEL_10:
      v7 += 16;
    }

    v20 = v4;
    v21 = v7 == v4;
    v4 += 2;
    if (v21)
    {
      goto LABEL_10;
    }

LABEL_9:
    *v7 = *v20;
    goto LABEL_10;
  }

  sub_266129DF0(a2, (a3 - a2) / 16, a4);
  v10 = &v4[2 * v9];
LABEL_15:
  v22 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v38 = *(v6 - 2);
    v24 = sub_2660CCD6C();
    v32 = OUTLINED_FUNCTION_14_14(v24, v25, v26, v27, v28, v29, v30, v31, v38);
    v33 = v5 + 16;
    if (v32 == -1)
    {
      v21 = v33 == v6;
      v6 -= 16;
      if (!v21)
      {
        *v5 = *v22;
        v6 = v22;
      }

      goto LABEL_15;
    }

    if (v10 != v33)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 2;
  }

LABEL_28:
  v34 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[2 * v34])
  {
    memmove(v6, v4, 16 * v34);
  }

  return 1;
}

uint64_t sub_26615D9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26618D000() & 1;
  }
}

unint64_t sub_26615DA74()
{
  result = qword_28005C9B8;
  if (!qword_28005C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C9B8);
  }

  return result;
}

unint64_t sub_26615DACC()
{
  result = qword_28005C9C0;
  if (!qword_28005C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C9C0);
  }

  return result;
}

unint64_t sub_26615DB24()
{
  result = qword_2814B2D20;
  if (!qword_2814B2D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B2D20);
  }

  return result;
}

unint64_t sub_26615DB7C()
{
  result = qword_2814B2D18;
  if (!qword_2814B2D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B2D18);
  }

  return result;
}

uint64_t sub_26615DC04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26615DC74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26615DD08(void *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2660DF700;

  return sub_2661599CC(a1, v4);
}

uint64_t OUTLINED_FUNCTION_0_21(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_15(uint64_t a1)
{

  return sub_26618D000();
}

uint64_t OUTLINED_FUNCTION_12_12()
{
  *(v1 + 104) = *(v2 + 8);
  *(v1 + 112) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t OUTLINED_FUNCTION_14_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_26618CC10();
}

uint64_t OUTLINED_FUNCTION_20_13(uint64_t a1, uint64_t a2)
{

  return sub_26618CC10();
}

uint64_t OUTLINED_FUNCTION_31_10()
{
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return swift_beginAccess();
}

void *sub_26615E04C()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C9D0, &unk_2661942C0);
  swift_allocObject();
  v1[2] = sub_26615E810(&unk_2661942B8, v3, 120.0);
  return v1;
}

uint64_t sub_26615E108(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_26615E19C;

  return sub_26615E2B4();
}

uint64_t sub_26615E19C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  *(v1 + 32) = v0;

  return MEMORY[0x2822009F8](sub_26615E294, 0, 0);
}

uint64_t sub_26615E2B4()
{
  v1 = sub_26618C6B0();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26615E370, 0, 0);
}

uint64_t sub_26615E370()
{
  if (qword_2814B2C40 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = __swift_project_value_buffer(v3, qword_2814B4A98);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2660B7000, v5, v6, "MarketplaceInfoDataProvider fetching distributors and caching...", v7, 2u);
    MEMORY[0x26677CC30](v7, -1, -1);
  }

  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];

  (*(v9 + 8))(v8, v10);
  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v11[1] = sub_26615E4F8;

  return MEMORY[0x2821237B8]();
}

uint64_t sub_26615E4F8()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_6_1();
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_26615E620()
{
  OUTLINED_FUNCTION_18();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26615E6C4;

  return sub_26615BE7C();
}

uint64_t sub_26615E6C4()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_6_1();
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_26615E7B0()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26615E810(uint64_t a1, uint64_t a2, double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  *(v3 + 40) = 0;
  v10 = *(*v3 + 112);
  v11 = sub_26618A5B0();
  __swift_storeEnumTagSinglePayload(v3 + v10, 1, 1, v11);
  *(v3 + 16) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = 0;
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
  v12 = *(*v3 + 112);
  swift_beginAccess();
  sub_26615DC74(v9, v3 + v12);
  swift_endAccess();
  return v3;
}

uint64_t sub_26615E93C()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2660DF700;

  return sub_26615E108(v2);
}

uint64_t sub_26615E9D8(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_26618C6B0();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26615EA98, 0, 0);
}

uint64_t sub_26615EA98()
{
  v22 = v0;
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = __swift_project_value_buffer(v3, qword_2814B4A80);
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_26618C690();
  v6 = sub_26618CA90();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[20];
  if (v7)
  {
    v11 = v0[19];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    v14 = MEMORY[0x26677BD80](v11, MEMORY[0x277D837D0]);
    v16 = sub_266103A98(v14, v15, &v21);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2660B7000, v5, v6, "Encoding routeIds: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x26677CC30](v13, -1, -1);
    MEMORY[0x26677CC30](v12, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v17 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v0[23] = v17;
  v18 = sub_26618C990();
  v0[24] = v18;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26615ED68;
  v19 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C9D8, qword_266194338);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26615EEC8;
  v0[13] = &block_descriptor_1;
  v0[14] = v19;
  [v17 encodeHashedRouteUIDs:v18 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26615ED68()
{

  return MEMORY[0x2822009F8](sub_26615EE48, 0, 0);
}

uint64_t sub_26615EE48()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_26615EEC8(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v3 = sub_26618C9B0();

  return sub_26615EF20(v2, v3);
}

uint64_t sub_26615EF7C(uint64_t a1)
{
  type metadata accessor for OffloadedAppInstallerImpl();
  v1 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_2814B4B88 = v1;
  return result;
}

uint64_t sub_26615EFB8(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = sub_26618C6B0();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26615F0BC, v2, 0);
}

uint64_t sub_26615F0BC()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = objc_opt_self();
  sub_26615F8E4();

  v4 = sub_26615F7F4(v2, v1);
  *(v0 + 144) = 0;
  v5 = [v3 existingCoordinatorForAppWithIdentity:v4 error:v0 + 144];
  *(v0 + 216) = v5;

  v6 = *(v0 + 144);
  if (!v5)
  {
    goto LABEL_10;
  }

  v7 = qword_2814B2C38;
  v8 = v6;
  v9 = v5;
  if (v7 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  v10 = *(v0 + 208);
  v11 = *(v0 + 184);
  v12 = *(v0 + 192);
  v13 = __swift_project_value_buffer(v11, qword_2814B4A80);
  (*(v12 + 16))(v10, v13, v11);
  v14 = sub_26618C690();
  v15 = sub_26618CAA0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2660B7000, v14, v15, "OffloadedAppInstaller.prioritizeInstall existing coordinator found", v16, 2u);
    MEMORY[0x26677CC30](v16, -1, -1);
  }

  v17 = *(v0 + 208);
  v18 = *(v0 + 184);
  v19 = *(v0 + 192);

  (*(v19 + 8))(v17, v18);
  *(v0 + 152) = 0;
  v20 = [v9 prioritizeWithError_];

  v6 = *(v0 + 152);
  if (v20)
  {
    v21 = v6;

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
LABEL_10:
    v24 = v6;
    v25 = sub_26618A4C0();

    swift_willThrow();
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    v40 = v3;
    v27 = *(v0 + 192);
    v26 = *(v0 + 200);
    v28 = *(v0 + 184);
    v29 = __swift_project_value_buffer(v28, qword_2814B4A80);
    (*(v27 + 16))(v26, v29, v28);
    v30 = sub_26618C690();
    v31 = sub_26618CAA0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2660B7000, v30, v31, "OffloadedAppInstaller.prioritizeInstall no existing coordinator found, creating a new request", v32, 2u);
      MEMORY[0x26677CC30](v32, -1, -1);
    }

    v33 = *(v0 + 192);
    v34 = *(v0 + 200);
    v35 = *(v0 + 184);
    v37 = *(v0 + 160);
    v36 = *(v0 + 168);

    (*(v33 + 8))(v34, v35);

    v38 = sub_26615F7F4(v37, v36);
    *(v0 + 224) = v38;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_26615F540;
    v39 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C268, qword_2661943E0);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2660E9CD8;
    *(v0 + 104) = &block_descriptor_2;
    *(v0 + 112) = v39;
    [v40 prioritizeCoordinatorForAppWithIdentity:v38 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_26615F540()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  v3 = *(v1 + 176);
  if (v2)
  {
    v4 = sub_26615F738;
  }

  else
  {
    v4 = sub_26615F68C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26615F68C()
{
  v1 = *(v0 + 216);

  if (v1)
  {
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26615F738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 224);
  v10 = *(v8 + 216);
  swift_willThrow();

  if (v10)
  {
  }

  v11 = *(v8 + 8);

  return v11();
}

id sub_26615F7F4(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_26618C8A0();

  v4 = [v2 initWithBundleID_];

  return v4;
}

uint64_t sub_26615F868()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_26615F8E4()
{
  result = qword_28005C9E0;
  if (!qword_28005C9E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28005C9E0);
  }

  return result;
}

void *sub_26615F964()
{
  v1 = v0;
  v2 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = sub_26618A500();
  OUTLINED_FUNCTION_2_2();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v21 = sub_266160E5C(0xD000000000000014, 0x800000026619A1A0, 0x7473696C70, 0xE500000000000000, v20);
  if (v21)
  {
    v22 = v21;
    sub_26618A4E0();

    v34 = v12;
    v35 = v10;
    (*(v12 + 32))(v18, v16, v10);
    v29 = sub_26618A510();
    v31 = v30;
    sub_26618A4B0();
    swift_allocObject();
    sub_26618A4A0();
    sub_266160F30();
    sub_26618A490();
    (*(v34 + 8))(v18, v35);

    sub_2660C55C0(v29, v31);

    *(v1 + 16) = v37;
  }

  else
  {
    if (qword_2814B2C48 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2814B2C48);
    }

    v23 = __swift_project_value_buffer(v2, qword_2814B4AB0);
    (*(v4 + 16))(v9, v23, v2);
    v24 = sub_26618C690();
    v25 = sub_26618CAB0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = v20;
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2660B7000, v24, v25, "Quick action allow list not found", v27, 2u);
      v28 = v27;
      v20 = v26;
      MEMORY[0x26677CC30](v28, -1, -1);
    }

    (*(v4 + 8))(v9, v2);
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
  }

  return v1;
}

BOOL sub_26615FEEC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
    sub_26618A610();
    v12 = 45;
    v13 = 0xE100000000000000;
    v10 = 95;
    v11 = 0xE100000000000000;
    v9 = sub_2660CCD6C();
    v8[0] = MEMORY[0x277D837D0];
    v8[1] = v9;
    v2 = sub_26618CC00();
    v4 = v3;

    v14[0] = v2;
    v14[1] = v4;
    MEMORY[0x28223BE20](v5);
    v8[2] = v14;
    v6 = sub_266158320(sub_26615DA50, v8, v1);
  }

  else
  {
    return 0;
  }

  return v6;
}

BOOL sub_26616000C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = (v3 + 56);
  v7 = *(v3 + 16) + 1;
  do
  {
    v8 = --v7 != 0;
    if (!v7)
    {
      break;
    }

    if (*(v6 - 1) == a1 && *v6 == a2)
    {
      break;
    }

    v10 = *(v6 - 3);
    v11 = *(v6 - 2);
    if (sub_26618D000())
    {
      break;
    }

    if (v10 == a1 && v11 == a2)
    {
      break;
    }

    v6 += 4;
  }

  while ((sub_26618D000() & 1) == 0);
  return v8;
}

uint64_t sub_2661600C8()
{
  sub_266160EF0(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_266160124(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266160164(uint64_t result, int a2, int a3)
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

uint64_t sub_2661601B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x416465776F6C6C61 && a2 == 0xEB00000000737070;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C6465776F6C6C61 && a2 == 0xEE0073656C61636FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_26618D000();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_266160284(char a1)
{
  if (a1)
  {
    return 0x4C6465776F6C6C61;
  }

  else
  {
    return 0x416465776F6C6C61;
  }
}

uint64_t sub_2661602D0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C9F8, &qword_266194580);
  OUTLINED_FUNCTION_2_2();
  v9 = v8;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266160B84();
  sub_26618D0F0();
  v18 = a2;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C9F0, &unk_266194570);
  v13 = sub_266160C2C(&qword_28005CA00, sub_266160CA4, MEMORY[0x277D83948]);
  OUTLINED_FUNCTION_3_21(v13);
  if (!v3)
  {
    v18 = a3;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD80, &qword_26618E528);
    v14 = sub_266160CF8(&qword_28005CA10, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_3_21(v14);
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_26616049C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C9E8, &qword_266194568);
  OUTLINED_FUNCTION_2_2();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_266160B84();
  OUTLINED_FUNCTION_6_16(&type metadata for AllowList.CodingKeys, v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C9F0, &unk_266194570);
  v9 = sub_266160C2C(&qword_2814B2C28, sub_266160BD8, MEMORY[0x277D83978]);
  OUTLINED_FUNCTION_2_20(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD80, &qword_26618E528);
  v11 = sub_266160CF8(&qword_2814B2C18, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  OUTLINED_FUNCTION_2_20(v11);
  (*(v5 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t sub_266160694(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26618D000();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26616075C(char a1)
{
  if (a1)
  {
    return 0x656D614E707061;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t sub_266160794(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA28, &qword_266194730);
  OUTLINED_FUNCTION_2_2();
  v9 = v8;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_13_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2661610AC();
  sub_26618D0F0();
  sub_26618CF70();
  if (!v4)
  {
    sub_26618CF70();
  }

  return (*(v9 + 8))(v5, v7);
}

uint64_t sub_2661608F4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA20, &qword_266194728);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_13_0();
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_2661610AC();
  OUTLINED_FUNCTION_6_16(&type metadata for AllowedApp.CodingKeys, v6, v5);
  if (!v1)
  {
    v4 = sub_26618CF00();
    sub_26618CF00();
    v8 = OUTLINED_FUNCTION_5_1();
    v9(v8);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_266160A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2661601B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266160AC4(uint64_t a1)
{
  v2 = sub_266160B84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266160B00(uint64_t a1)
{
  v2 = sub_266160B84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266160B3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26616049C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_266160B84()
{
  result = qword_2814B2C70;
  if (!qword_2814B2C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B2C70);
  }

  return result;
}

unint64_t sub_266160BD8()
{
  result = qword_2814B47B8;
  if (!qword_2814B47B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B47B8);
  }

  return result;
}

uint64_t sub_266160C2C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C9F0, &unk_266194570);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266160CA4()
{
  result = qword_28005CA08;
  if (!qword_28005CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CA08);
  }

  return result;
}

uint64_t sub_266160CF8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005BD80, &qword_26618E528);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266160D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266160694(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266160D94(uint64_t a1)
{
  v2 = sub_2661610AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266160DD0(uint64_t a1)
{
  v2 = sub_2661610AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266160E0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2661608F4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

id sub_266160E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_26618C8A0();

  v7 = sub_26618C8A0();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_266160EF0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_266160F30()
{
  result = qword_2814B2C58;
  if (!qword_2814B2C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B2C58);
  }

  return result;
}

unint64_t sub_266160FA8()
{
  result = qword_28005CA18;
  if (!qword_28005CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CA18);
  }

  return result;
}

unint64_t sub_266161000()
{
  result = qword_2814B2C60;
  if (!qword_2814B2C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B2C60);
  }

  return result;
}

unint64_t sub_266161058()
{
  result = qword_2814B2C68;
  if (!qword_2814B2C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B2C68);
  }

  return result;
}

unint64_t sub_2661610AC()
{
  result = qword_2814B47D0;
  if (!qword_2814B47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B47D0);
  }

  return result;
}

_BYTE *sub_266161100(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2661611E0()
{
  result = qword_28005CA30;
  if (!qword_28005CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CA30);
  }

  return result;
}

unint64_t sub_266161238()
{
  result = qword_2814B47C0;
  if (!qword_2814B47C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B47C0);
  }

  return result;
}

unint64_t sub_266161290()
{
  result = qword_2814B47C8;
  if (!qword_2814B47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B47C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_20(uint64_t a1)
{

  return sub_26618CF30();
}

uint64_t OUTLINED_FUNCTION_3_21(uint64_t a1)
{

  return sub_26618CFA0();
}

uint64_t OUTLINED_FUNCTION_6_16(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26618D0E0();
}

uint64_t sub_2661613B8()
{
  v158 = sub_26618C6D0();
  OUTLINED_FUNCTION_2_2();
  v156 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  v157 = (v4 - v3);
  OUTLINED_FUNCTION_18_2();
  v143 = sub_26618C7A0();
  OUTLINED_FUNCTION_2_2();
  v148 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v142 = v8 - v7;
  OUTLINED_FUNCTION_18_2();
  sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v153 = v10;
  v154 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_1();
  v151 = v11 - v12;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17_5();
  v139 = v14;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17_5();
  v138 = v16;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17_5();
  v141 = v18;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v19);
  v145 = &v134 - v20;
  OUTLINED_FUNCTION_18_2();
  v155 = sub_26618C6F0();
  OUTLINED_FUNCTION_2_2();
  v150 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_24_1();
  v147 = v23 - v24;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_17_5();
  v140 = v26;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_17_5();
  v144 = v28;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v29);
  v146 = &v134 - v30;
  OUTLINED_FUNCTION_18_2();
  v31 = sub_26618C7B0();
  OUTLINED_FUNCTION_2_2();
  v152 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_24_1();
  v149 = (v34 - v35);
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v36);
  v38 = &v134 - v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA38, &qword_2661948F8);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_24_1();
  v42 = (v40 - v41);
  MEMORY[0x28223BE20](v43);
  v45 = &v134 - v44;
  v46 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_26618C710();
  swift_allocObject();

  sub_26618C700();
  (*(v46 + 8))();
  v47 = v45;

  sub_2660BF73C(v45, v42, &qword_28005CA38, &qword_2661948F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v42;
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    v49 = v154;
    v50 = __swift_project_value_buffer(v154, qword_2814B4A80);
    v51 = v153;
    v52 = v151;
    (*(v153 + 16))(v151, v50, v49);
    v53 = v48;
    v54 = sub_26618C690();
    v55 = sub_26618CAB0();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = OUTLINED_FUNCTION_49_0();
      v57 = OUTLINED_FUNCTION_45_1();
      v159 = v48;
      v160[0] = v57;
      *v56 = 136315138;
      v58 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
      v59 = sub_26618C8D0();
      v61 = sub_266103A98(v59, v60, v160);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_2660B7000, v54, v55, "ReferenceResolver.resolve() from RRaSS was unsuccessful with %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      (*(v51 + 8))(v151, v49);
    }

    else
    {

      (*(v51 + 8))(v52, v49);
    }

    goto LABEL_13;
  }

  v62 = v152;
  (*(v152 + 32))(v38, v42, v31);
  v63 = v149;
  (*(v62 + 16))(v149, v38, v31);
  v64 = (*(v62 + 88))(v63, v31);
  v65 = v38;
  if (v64 != *MEMORY[0x277D5FEC0])
  {
    v84 = v153;
    v85 = v154;
    if (v64 == *MEMORY[0x277D5FED0])
    {
      v86 = v31;
      (*(v62 + 96))(v63, v31);
      v151 = *v63;
      if (qword_2814B2C38 != -1)
      {
LABEL_44:
        OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
      }

      __swift_project_value_buffer(v85, qword_2814B4A80);
      OUTLINED_FUNCTION_8_15();
      v87 = v141;
      v88(v141);
      v89 = sub_26618C690();
      v90 = sub_26618CAD0();
      v91 = os_log_type_enabled(v89, v90);
      v92 = v84;
      v137 = v47;
      v136 = v86;
      v135 = v65;
      if (v91)
      {
        v93 = OUTLINED_FUNCTION_49_0();
        v94 = OUTLINED_FUNCTION_45_1();
        v160[0] = v94;
        *v93 = 136315138;
        v86 = v151;

        v96 = MEMORY[0x26677BD80](v95, v155);
        v84 = v97;

        v98 = sub_266103A98(v96, v84, v160);

        *(v93 + 4) = v98;
        _os_log_impl(&dword_2660B7000, v89, v90, "ReferenceResolver.resolve() returns needs Disambiguation and we are going to return the first notification result%s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v94);
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_7_2();

        (*(v92 + 8))(v87, v85);
      }

      else
      {

        (*(v84 + 8))(v87, v85);
        v86 = v151;
      }

      v106 = *(v86 + 16);
      v107 = v150;
      v108 = (v150 + 16);
      v85 = (v148 + 8);
      LODWORD(v153) = *MEMORY[0x277D5FE80];
      LODWORD(v151) = *MEMORY[0x277D5FDF0];
      v109 = (v156 + 104);
      v47 = (v156 + 8);
      v154 = (v150 + 8);

      v110 = 0;
      v65 = &qword_28005CA40;
      v146 = v108;
      while (v110 != v106)
      {
        if (v110 >= *(v86 + 16))
        {
          __break(1u);
          goto LABEL_44;
        }

        v149 = (v110 + 1);
        (*(v107 + 16))(v147, v86 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v110, v155);
        v111 = v142;
        sub_26618C6E0();
        v112 = sub_26618C790();
        (*v85)(v111, v143);
        sub_26618C740();
        OUTLINED_FUNCTION_16();
        v114 = v157;
        (*(v113 + 104))(v157, v153);
        (*v109)(v114, v151, v158);
        v115 = 0;
        v116 = *(v112 + 16);
        while (v116 != v115)
        {
          v84 = v115 + 1;
          sub_266162AF8(&qword_28005CA40, MEMORY[0x277D5FDF8], MEMORY[0x277D5FE00]);
          v117 = sub_26618C890();
          v115 = v84;
          if (v117)
          {

            (*v47)(v157, v158);

            v118 = v150 + 32;
            v119 = v140;
            v120 = v155;
            (*(v150 + 32))(v140, v147, v155);
            v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C708, &qword_266192DB8);
            v83 = OUTLINED_FUNCTION_6_17(v121);
            *(v83 + 16) = xmmword_26618E190;
            sub_26618C6E0();
            (*(v118 - 24))(v119, v120);
            v122 = OUTLINED_FUNCTION_5_15();
            v123(v122);
            sub_2660BF79C(v137, &qword_28005CA38, &qword_2661948F8);

            return v83;
          }
        }

        (*v47)(v157, v158);
        (*v154)(v147, v155);
        v110 = v149;
        v107 = v150;
      }

      v132 = OUTLINED_FUNCTION_5_15();
      v133(v132);
      sub_2660BF79C(v137, &qword_28005CA38, &qword_2661948F8);

      return MEMORY[0x277D84F90];
    }

    if (v64 != *MEMORY[0x277D5FEE0])
    {
      if (qword_2814B2C38 != -1)
      {
        OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
      }

      __swift_project_value_buffer(v85, qword_2814B4A80);
      OUTLINED_FUNCTION_8_15();
      v125 = v139;
      v126(v139);
      v127 = sub_26618C690();
      v128 = sub_26618CA90();
      if (os_log_type_enabled(v127, v128))
      {
        *OUTLINED_FUNCTION_6_2() = 0;
        OUTLINED_FUNCTION_7_7(&dword_2660B7000, v129, v130, "ReferenceResolver.resolve() Unknown outcome. Returning no match");
        OUTLINED_FUNCTION_7_2();
      }

      (*(v84 + 8))(v125, v85);
      v131 = *(v62 + 8);
      v131(v65, v31);
      sub_2660BF79C(v47, &qword_28005CA38, &qword_2661948F8);
      v131(v149, v31);
      return MEMORY[0x277D84F90];
    }

    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    __swift_project_value_buffer(v85, qword_2814B4A80);
    OUTLINED_FUNCTION_8_15();
    v100 = v138;
    v101(v138);
    v102 = sub_26618C690();
    v103 = sub_26618CA90();
    if (os_log_type_enabled(v102, v103))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_7_7(&dword_2660B7000, v104, v105, "ReferenceResolver.resolve() No match from ReferenceResolution");
      OUTLINED_FUNCTION_7_2();
    }

    (*(v84 + 8))(v100, v85);
    (*(v62 + 8))(v65, v31);
LABEL_13:
    sub_2660BF79C(v47, &qword_28005CA38, &qword_2661948F8);
    return MEMORY[0x277D84F90];
  }

  v135 = v38;
  (*(v62 + 96))(v63, v31);
  v66 = v150;
  v67 = v146;
  v68 = v155;
  (*(v150 + 32))(v146, v63, v155);
  v69 = v153;
  v70 = v154;
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  v136 = v31;
  v137 = v47;
  v71 = __swift_project_value_buffer(v70, qword_2814B4A80);
  v72 = v145;
  (*(v69 + 16))(v145, v71, v70);
  v73 = v144;
  (*(v66 + 16))(v144, v67, v68);
  v74 = sub_26618C690();
  v75 = sub_26618CAD0();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = v66;
    v77 = OUTLINED_FUNCTION_49_0();
    v158 = OUTLINED_FUNCTION_45_1();
    v160[0] = v158;
    *v77 = 136315138;
    sub_266162AF8(&qword_28005CA48, MEMORY[0x277D5FE08], MEMORY[0x277D5FE10]);
    v78 = sub_26618CFD0();
    v80 = v79;
    v157 = *(v76 + 8);
    v157(v73, v155);
    v67 = v146;
    v81 = sub_266103A98(v78, v80, v160);

    *(v77 + 4) = v81;
    _os_log_impl(&dword_2660B7000, v74, v75, "ReferenceResolver.resolve() got singular match %s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v158);
    v68 = v155;
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v82 = v157;
    (*(v69 + 8))(v72, v154);
  }

  else
  {

    v82 = *(v66 + 8);
    v82(v73, v68);
    (*(v69 + 8))(v72, v70);
  }

  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C708, &qword_266192DB8);
  v83 = OUTLINED_FUNCTION_6_17(v99);
  *(v83 + 16) = xmmword_26618E190;
  sub_26618C6E0();
  v82(v67, v68);
  (*(v152 + 8))(v135, v136);
  sub_2660BF79C(v137, &qword_28005CA38, &qword_2661948F8);
  return v83;
}

uint64_t sub_266162360(uint64_t a1)
{
  v2 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v8 = v7 - v6;
  sub_26618BE60();
  if (v24[3])
  {
    sub_2660BF73C(v24, v23, &qword_28005C0A8, qword_26618FAE0);
    sub_26618BDC0();
    if (swift_dynamicCast())
    {

      __swift_destroy_boxed_opaque_existential_1(v23);
      v9 = 1;
      goto LABEL_6;
    }

    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  v9 = 0;
LABEL_6:
  sub_2660BF79C(v24, &qword_28005C0A8, qword_26618FAE0);
  v10 = sub_2661613B8();
  MEMORY[0x28223BE20](v10);
  *(&v22 - 2) = v1;
  *(&v22 - 8) = v9;
  v11 = sub_2661312A0(sub_266162B40, (&v22 - 4), v10);

  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  v12 = __swift_project_value_buffer(v2, qword_2814B4A80);
  (*(v4 + 16))(v8, v12, v2);

  v13 = sub_26618C690();
  v14 = sub_26618CA90();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_49_0();
    v16 = OUTLINED_FUNCTION_45_1();
    v24[0] = v16;
    *v15 = 136315138;
    v17 = type metadata accessor for Application();
    v18 = MEMORY[0x26677BD80](v11, v17);
    v20 = sub_266103A98(v18, v19, v24);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_2660B7000, v13, v14, "ReferenceResolver.resolve() resolved apps: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  (*(v4 + 8))(v8, v2);
  return v11;
}

id sub_26616263C(uint64_t a1, char a2)
{
  v3 = sub_26618C750();
  v5 = v4;
  type metadata accessor for Application();
  v6 = sub_26614492C();
  sub_26614E5FC(v3, v5, v6);
  if (a2)
  {
    v7 = sub_26618C770();
    v9 = v8;
    if (sub_26618C950())
    {
      v10 = sub_266162A38(6, v7, v9);
      v7 = MEMORY[0x26677BCC0](v10);
      v9 = v11;
    }

    sub_266162B84(v7, v9, v6);
  }

  return v6;
}

uint64_t sub_266162714()
{
  v0 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_1();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  sub_26618BFC0();
  swift_allocObject();
  sub_26618BFB0();
  v10 = MEMORY[0x26677B1D0]();

  if (v10)
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    v11 = __swift_project_value_buffer(v0, qword_2814B4A80);
    (*(v2 + 16))(v9, v11, v0);
    v12 = sub_26618C690();
    v13 = sub_26618CAA0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_6_2();
      *v14 = 0;
      _os_log_impl(&dword_2660B7000, v12, v13, "ReferenceResolver.resolveAppsForNoEntity() trying common_Window query", v14, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    (*(v2 + 8))(v9, v0);
    v15 = sub_266162360(v10);
    v16 = sub_2661046B8();

    if (v16)
    {
      return v15;
    }
  }

  sub_26618BF10();
  swift_allocObject();
  sub_26618BF00();
  v17 = MEMORY[0x26677B1D0]();

  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  v18 = __swift_project_value_buffer(v0, qword_2814B4A80);
  (*(v2 + 16))(v6, v18, v0);
  v19 = sub_26618C690();
  v20 = sub_26618CAA0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_6_2();
    *v21 = 0;
    _os_log_impl(&dword_2660B7000, v19, v20, "ReferenceResolver.resolveAppsForNoEntity() trying common_App query", v21, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  (*(v2 + 8))(v6, v0);
  v15 = sub_266162360(v17);
  v22 = sub_2661046B8();

  if (!v22)
  {

    return MEMORY[0x277D84F90];
  }

  return v15;
}

uint64_t sub_266162A38(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26618C920();
    v3 = sub_26618C970();

    return v3;
  }

  return result;
}

uint64_t sub_266162AF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_266162B40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_26616263C(a1, *(v2 + 24));
  *a2 = result;
  return result;
}

void sub_266162B84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26618C8A0();

  [a3 setSceneId_];
}

uint64_t OUTLINED_FUNCTION_6_17(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t RegexAppsResolver.init(languageCode:)@<X0>(uint64_t a3@<X8>)
{
  if (qword_2814B4A70 != -1)
  {
    swift_once();
  }

  v4 = static InstalledAppProvider.shared;
  v6[3] = type metadata accessor for InstalledAppProvider();
  v6[4] = &protocol witness table for InstalledAppProvider;
  v6[0] = v4;
  sub_2660C5864(v6, a3);
  type metadata accessor for RegexAppsResolver(0);

  sub_26618A600();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t type metadata accessor for RegexAppsResolver(uint64_t a1)
{
  result = qword_2814B31A8;
  if (!qword_2814B31A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RegexAppsResolver.resolve(appName:appId:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = sub_26618C6B0();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA50, &qword_266194918);
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266162E9C, 0, 0);
}

uint64_t sub_266162E9C()
{
  v72 = v0;
  v1 = *(v0 + 136);
  if (v1)
  {
    *(v0 + 16) = *(v0 + 128);
    v2 = *(v0 + 192);
    v3 = *(v0 + 144);
    *(v0 + 24) = v1;
    v4 = *(type metadata accessor for RegexAppsResolver(0) + 20);
    v5 = sub_26618A620();
    (*(*(v5 - 8) + 16))(v2, v3 + v4, v5);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v5);
    v6 = sub_2660CCD6C();

    v7 = sub_26618CBE0();
    v9 = v8;
    *(v0 + 200) = v7;
    *(v0 + 208) = v8;
    sub_2661639F4(v2);

    v16 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v16 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      *(v0 + 32) = v7;
      *(v0 + 40) = v9;
      strcpy((v0 + 48), "[^[:alnum:]]+");
      *(v0 + 62) = -4864;
      strcpy((v0 + 64), "[^[:alnum:]]+");
      *(v0 + 78) = -4864;
      v17 = OUTLINED_FUNCTION_0_22(v0 + 48, v0 + 64, v10, v11, v12, v13, v14, v15, v58, v60, v6, v6);
      v19 = v18;
      *(v0 + 80) = v7;
      *(v0 + 88) = v9;
      *(v0 + 96) = 0x756E6C613A5B5E5BLL;
      *(v0 + 104) = 0xEF2B5D735C5D3A6DLL;
      strcpy((v0 + 112), "[^[:alnum:]]+");
      *(v0 + 126) = -4864;
      v65 = OUTLINED_FUNCTION_0_22(v0 + 96, v0 + 112, v20, v21, v22, v23, v24, v25, v59, v61, v6, v6);
      v27 = v26;
      if (qword_2814B2C48 != -1)
      {
        swift_once();
      }

      v28 = *(v0 + 184);
      v29 = *(v0 + 160);
      v30 = __swift_project_value_buffer(*(v0 + 152), qword_2814B4AB0);
      *(v0 + 216) = v30;
      v31 = *(v29 + 16);
      *(v0 + 224) = v31;
      *(v0 + 232) = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v68 = v30;
      v67 = v31;
      (v31)(v28);

      v32 = sub_26618C690();
      v33 = sub_26618CAA0();

      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v0 + 160);
      v62 = *(v0 + 152);
      v63 = *(v0 + 184);
      v69 = v19;
      if (v34)
      {
        v36 = swift_slowAlloc();
        v71[0] = swift_slowAlloc();
        *v36 = 136315650;
        *(v36 + 4) = sub_266103A98(v7, v9, v71);
        *(v36 + 12) = 2080;
        *(v36 + 14) = sub_266103A98(v17, v19, v71);
        *(v36 + 22) = 2080;
        v37 = v65;
        *(v36 + 24) = sub_266103A98(v65, v27, v71);
        _os_log_impl(&dword_2660B7000, v32, v33, "Attempting to match by AppName '%s' -> %s || %s", v36, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_7_2();

        v38 = *(v35 + 8);
        v38(v63, v62);
      }

      else
      {

        v38 = *(v35 + 8);
        v38(v63, v62);
        v37 = v65;
      }

      v66 = v38;
      *(v0 + 240) = v38;
      v42 = *(v0 + 176);
      v43 = *(v0 + 152);
      strcpy(v71, "^[^[:alnum:]]*");
      HIBYTE(v71[1]) = -18;
      MEMORY[0x26677BCF0](v17, v69);

      MEMORY[0x26677BCF0](0x756E6C613A5B5E5BLL, 0xEE00242A5D5D3A6DLL);

      v44 = v71[1];
      v64 = v71[0];
      *(v0 + 248) = v71[0];
      *(v0 + 256) = v44;
      strcpy(v71, "^[^:alnum:]*");
      BYTE5(v71[1]) = 0;
      HIWORD(v71[1]) = -5120;
      MEMORY[0x26677BCF0](v37, v27);

      MEMORY[0x26677BCF0](0x6D756E6C613A5E5BLL, 0xEC000000242A5D3ALL);

      v45 = v71[1];
      *(v0 + 264) = v71[0];
      *(v0 + 272) = v45;
      v71[0] = 25180;
      v71[1] = 0xE200000000000000;
      MEMORY[0x26677BCF0](v17, v69);

      MEMORY[0x26677BCF0](25180, 0xE200000000000000);

      v47 = v71[0];
      v46 = v71[1];
      *(v0 + 280) = v71[0];
      *(v0 + 288) = v46;
      v67(v42, v68, v43);

      v48 = sub_26618C690();
      v49 = sub_26618CAA0();

      v50 = os_log_type_enabled(v48, v49);
      v51 = *(v0 + 176);
      v52 = *(v0 + 152);
      if (v50)
      {
        v53 = swift_slowAlloc();
        v71[0] = swift_slowAlloc();
        *v53 = 136315394;
        *(v53 + 4) = sub_266103A98(v64, v44, v71);
        *(v53 + 12) = 2080;
        *(v53 + 14) = sub_266103A98(v47, v46, v71);
        _os_log_impl(&dword_2660B7000, v48, v49, "Regexes built: %s\n%s", v53, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_7_2();
      }

      v66(v51, v52);
      v54 = *(v0 + 144);
      v55 = v54[3];
      v56 = v54[4];
      __swift_project_boxed_opaque_existential_1(v54, v55);
      v70 = (*(v56 + 8) + **(v56 + 8));
      v57 = swift_task_alloc();
      *(v0 + 296) = v57;
      *v57 = v0;
      v57[1] = sub_26616362C;

      return v70(v55, v56);
    }
  }

  v39 = *(v0 + 8);
  v40 = MEMORY[0x277D84F90];

  return v39(v40);
}

uint64_t sub_26616362C(uint64_t a1)
{
  *(*v1 + 304) = a1;

  return MEMORY[0x2822009F8](sub_26616372C, 0, 0);
}

uint64_t sub_26616372C()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 144);
  v5 = swift_task_alloc();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;

  sub_266102300(sub_266163FAC, v5, v1);
  v7 = v6;

  v8 = sub_2661046B8();
  v9 = *(v0 + 304);
  v10 = *(v0 + 288);
  if (v8 == 1)
  {
  }

  else
  {
    v11 = *(v0 + 272);
    v12 = *(v0 + 256);
    v24 = *(v0 + 264);
    v25 = *(v0 + 280);
    v13 = *(v0 + 248);
    v29 = *(v0 + 224);
    v23 = *(v0 + 208);
    v14 = *(v0 + 200);
    v26 = *(v0 + 168);
    v15 = *(v0 + 144);
    v27 = *(v0 + 152);
    v28 = *(v0 + 216);

    v16 = swift_task_alloc();
    v16[2] = v15;
    v16[3] = v13;
    v16[4] = v12;
    v16[5] = v24;
    v16[6] = v11;
    v16[7] = v25;
    v16[8] = v10;
    v16[9] = v14;
    v16[10] = v23;
    sub_266102300(sub_266163FD0, v16, v9);
    v7 = v17;

    v29(v26, v28, v27);

    v18 = sub_26618C690();
    v19 = sub_26618CAA0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = sub_2661046B8();

      _os_log_impl(&dword_2660B7000, v18, v19, "Found %ld apps by name matching", v20, 0xCu);
      OUTLINED_FUNCTION_7_2();
    }

    else
    {
    }

    (*(v0 + 240))(*(v0 + 168), *(v0 + 152));
  }

  v21 = *(v0 + 8);

  return v21(v7);
}

uint64_t sub_2661639F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA50, &qword_266194918);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_266163A5C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA50, &qword_266194918);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  v11 = sub_2660C9D24(*a1);
  if (!v12)
  {
    return 0;
  }

  v21 = v11;
  v22 = v12;
  v13 = *(type metadata accessor for RegexAppsResolver(0) + 20);
  v14 = sub_26618A620();
  (*(*(v14 - 8) + 16))(v10, a2 + v13, v14);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v14);
  sub_2660CCD6C();
  v15 = sub_26618CBE0();
  v17 = v16;
  sub_2661639F4(v10);

  v21 = v15;
  v22 = v17;
  v20[0] = a3;
  v20[1] = a4;
  v18 = sub_26618CBF0();

  return v18 == 0;
}

uint64_t sub_266163BF4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v37 = a6;
  v32 = a5;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA50, &qword_266194918);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v29 - v18;
  v20 = sub_2660C9D24(*a1);
  if (v21)
  {
    v29 = a7;
    v30 = a8;
    v31 = v10;
    v35 = v20;
    v36 = v21;
    v22 = *(type metadata accessor for RegexAppsResolver(0) + 20);
    v23 = sub_26618A620();
    (*(*(v23 - 8) + 16))(v19, a2 + v22, v23);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v23);
    sub_2660CCD6C();
    v24 = sub_26618CBE0();
    v26 = v25;
    sub_2661639F4(v19);

    if (sub_266163E08(v24, v26, a3, a4) || sub_266163E08(v24, v26, v32, v37) || sub_266163E08(v24, v26, v29, v30))
    {

      v27 = 1;
    }

    else
    {
      v35 = v24;
      v36 = v26;
      v33 = a9;
      v34 = a10;
      v27 = sub_26618CC60();
    }
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

BOOL sub_266163E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA50, &qword_266194918);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v14 - v9;
  v14[2] = a1;
  v14[3] = a2;
  v14[0] = a3;
  v14[1] = a4;
  v11 = sub_26618A620();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_2660CCD6C();
  sub_26618CC50();
  LOBYTE(a4) = v12;
  sub_2661639F4(v10);
  return (a4 & 1) == 0;
}

uint64_t sub_266163F08(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2660CD9A4;

  return RegexAppsResolver.resolve(appName:appId:)(a1, a2);
}

void *sub_26616400C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_266164030@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_266164088(uint64_t a1)
{
  result = sub_26616410C();
  if (v2 <= 0x3F)
  {
    result = sub_26618A620();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_26616410C()
{
  result = qword_2814B47A0;
  if (!qword_2814B47A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2814B47A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_26618CC00();
}

uint64_t sub_266164194@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA58, &qword_2661949F8);
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_26618C1F0();
  v9 = sub_26618C200();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  sub_266165F5C(v8, v6);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v9);
  return sub_266165FCC(v6, a1);
}

uint64_t sub_2661642A0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA68, &qword_266194A08);
  v4 = OUTLINED_FUNCTION_3_0(v3);
  MEMORY[0x28223BE20](v4);
  v60 = &v51 - v5;
  OUTLINED_FUNCTION_18_2();
  v61 = sub_26618C220();
  OUTLINED_FUNCTION_2_2();
  v53 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v52 = v9 - v8;
  OUTLINED_FUNCTION_18_2();
  sub_26618A5B0();
  OUTLINED_FUNCTION_2_2();
  v55 = v11;
  v56 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v14 = v13 - v12;
  v54 = sub_26618A670();
  OUTLINED_FUNCTION_2_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_4();
  v20 = v19 - v18;
  sub_26618A480();
  OUTLINED_FUNCTION_2_2();
  v58 = v22;
  v59 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_4();
  v25 = v24 - v23;
  v26 = [objc_allocWithZone(MEMORY[0x277D61FD0]) init];
  v27 = sub_26618C8A0();
  [v26 _setLaunchId_];

  v28 = sub_26618C4A0();
  sub_26616603C(v28, v29, v26);
  v30 = sub_26618C8A0();
  [v26 setIntentType_];

  [v26 setVoiceID_];
  [v26 setInteractionType_];
  sub_26618C4D0();
  v57 = v25;
  if (v31)
  {
    v32 = sub_26618C8A0();
  }

  else
  {
    v32 = 0;
  }

  [v26 setRoomName_];

  sub_26618A650();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA70, &unk_266194A10);
  v33 = sub_26618A660();
  OUTLINED_FUNCTION_2_2();
  v35 = v34;
  v37 = *(v36 + 72);
  v38 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_266194980;
  v40 = v39 + v38;
  v41 = *(v35 + 104);
  v41(v40, *MEMORY[0x277CC9988], v33);
  v41(v40 + v37, *MEMORY[0x277CC9998], v33);
  v41(v40 + 2 * v37, *MEMORY[0x277CC9968], v33);
  v41(v40 + 3 * v37, *MEMORY[0x277CC9980], v33);
  v41(v40 + 4 * v37, *MEMORY[0x277CC99A0], v33);
  v41(v40 + 5 * v37, *MEMORY[0x277CC99A8], v33);
  v41(v40 + 6 * v37, *MEMORY[0x277CC9930], v33);
  sub_26612432C(v39);
  sub_26618A5A0();
  v42 = v57;
  sub_26618A630();

  (*(v55 + 8))(v14, v56);
  (*(v16 + 8))(v20, v54);
  v43 = sub_26618A470();
  [v26 setRequestTime_];

  sub_2661660A0();
  v44 = sub_266164930(v26, 0);
  [v44 _setDonatedBySiri_];
  v45 = v60;
  sub_26618CA80();
  v46 = v61;
  __swift_storeEnumTagSinglePayload(v45, 0, 1, v61);
  v47 = v52;
  v48 = v53;
  (*(v53 + 32))(v52, v45, v46);
  *(swift_allocObject() + 16) = v26;
  v49 = v26;
  sub_26618C210();

  (*(v48 + 8))(v47, v46);
  return (*(v58 + 8))(v42, v59);
}

id sub_266164930(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:a1 response:a2];

  return v4;
}

uint64_t sub_26616498C(void *a1, char a2, void *a3)
{
  v6 = sub_26618C6B0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  if (a2)
  {
    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v6, qword_2814B4A98);
    (*(v7 + 16))(v10, v13, v6);
    v14 = a3;
    sub_2661660F0(a1, 1);
    v15 = sub_26618C690();
    v16 = sub_26618CAB0();

    sub_2661660FC(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32 = a1;
      v33 = v19;
      *v17 = 138412546;
      *(v17 + 4) = v14;
      *v18 = v14;
      *(v17 + 12) = 2080;
      v20 = v14;
      sub_2661660F0(a1, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
      v21 = sub_26618C8D0();
      v23 = sub_266103A98(v21, v22, &v33);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_2660B7000, v15, v16, "SiriRemembersProvider couldn't donate intent %@ to Siri Remembers %s", v17, 0x16u);
      sub_2660C8040(v18, &qword_28005C1F8, &unk_266190550);
      MEMORY[0x26677CC30](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x26677CC30](v19, -1, -1);
      MEMORY[0x26677CC30](v17, -1, -1);
    }

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v6, qword_2814B4A98);
    (*(v7 + 16))(v12, v25, v6);
    v26 = a3;
    v27 = sub_26618C690();
    v28 = sub_26618CAA0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&dword_2660B7000, v27, v28, "SiriRemembersProvider successfully donated intent %@ to Siri Remembers", v29, 0xCu);
      sub_2660C8040(v30, &qword_28005C1F8, &unk_266190550);
      MEMORY[0x26677CC30](v30, -1, -1);
      MEMORY[0x26677CC30](v29, -1, -1);
    }

    return (*(v7 + 8))(v12, v6);
  }
}

uint64_t sub_266164D78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v162 = a1;
  v163 = a2;
  v165 = a4;
  v5 = type metadata accessor for SiriRemembersStoreProvider(0);
  v6 = OUTLINED_FUNCTION_3_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_9_4(v8 - v7);
  v143 = sub_26618A5B0();
  OUTLINED_FUNCTION_2_2();
  v142 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_9_4(v12 - v11);
  v13 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v160 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_16();
  v146 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C988, &qword_2661949F0);
  v19 = OUTLINED_FUNCTION_3_0(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_4(&v141 - v20);
  v169 = sub_26618C190();
  OUTLINED_FUNCTION_2_2();
  v144 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_16();
  v149 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA58, &qword_2661949F8);
  v27 = OUTLINED_FUNCTION_3_0(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_16();
  OUTLINED_FUNCTION_9_4(v29);
  v168 = sub_26618C200();
  OUTLINED_FUNCTION_2_2();
  v153 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_9_4(v33 - v32);
  v167 = sub_26618C1E0();
  OUTLINED_FUNCTION_2_2();
  v174 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_16();
  v166 = v38;
  OUTLINED_FUNCTION_18_2();
  sub_26618C160();
  OUTLINED_FUNCTION_2_2();
  v175 = v39;
  v176 = v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v141 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v41);
  v171 = &v141 - v45;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7_16();
  v173 = v46;
  OUTLINED_FUNCTION_18_2();
  v47 = sub_26618C230();
  OUTLINED_FUNCTION_2_2();
  v49 = v48;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v51);
  v53 = (&v141 - v52);
  v161 = sub_26618C4A0();
  v172 = v54;
  v55 = *(a3 + 16);
  v164 = v13;
  if (v55)
  {
    v145 = v43;
    v180 = MEMORY[0x277D84F90];
    sub_26612A578(0, v55, 0);
    v56 = v180;
    v57 = (a3 + 32);
    LODWORD(v178) = *MEMORY[0x277D5FFE8];
    v177 = (v49 + 32);
    do
    {
      v58 = *v57++;
      v179 = v58;
      v59 = sub_26618CFD0();
      *v53 = 0x7463617265746E69;
      v53[1] = 0xEF657079546E6F69;
      v53[2] = v59;
      v53[3] = v60;
      (*(v49 + 104))(v53, v178, v47);
      v180 = v56;
      v62 = *(v56 + 16);
      v61 = *(v56 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_26612A578(v61 > 1, v62 + 1, 1);
        v56 = v180;
      }

      *(v56 + 16) = v62 + 1;
      (*(v49 + 32))(v56 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v62, v53, v47);
      --v55;
    }

    while (v55);
    v43 = v145;
    v63 = v178;
  }

  else
  {
    v63 = *MEMORY[0x277D5FFE8];
    v56 = MEMORY[0x277D84F90];
  }

  sub_26618C150();
  sub_26618C140();
  v64 = *(v176 + 8);
  v176 += 8;
  v178 = v64;
  v64(v43, v175);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C5B8, &qword_266194A00);
  v65 = *(v49 + 72);
  v66 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_266194990;
  v68 = (v67 + v66);
  *v68 = 0x7954746E65746E69;
  *(v68 + 1) = 0xEA00000000006570;
  *(v68 + 2) = 0x704168636E75614CLL;
  *(v68 + 3) = 0xEF746E65746E4970;
  v69 = *(v49 + 104);
  v70 = v47;
  (v69)(v68, v63, v47);
  v71 = &v68[v65];
  strcpy(&v68[v65], "remoteDeviceID");
  v71[15] = -18;
  v72 = v172;
  *(v71 + 2) = v161;
  *(v71 + 3) = v72;
  v69();
  v73 = &v68[2 * v65];
  *v73 = 0x656D614E6D6F6F72;
  *(v73 + 1) = 0xE800000000000000;
  v74 = v163;
  *(v73 + 2) = v162;
  *(v73 + 3) = v74;
  v69();
  *&v68[3 * v65] = v56;
  (v69)(&v68[3 * v65], *MEMORY[0x277D5FFE0], v70);
  v75 = v156;
  *v156 = v67;
  (v69)(v75, *MEMORY[0x277D5FFD8], v70);

  v76 = v171;
  sub_26618C130();
  (*(v49 + 8))(v75, v70);
  v178(v76, v175);
  v77 = v157;
  sub_26618C1D0();
  v78 = v158;
  sub_26618C1B0();
  v79 = v174 + 8;
  v80 = *(v174 + 8);
  v81 = v167;
  v80(v77, v167);
  v82 = v166;
  sub_26618C1C0();
  v80(v78, v81);
  v83 = v159;
  sub_266165E38(v170, v159);
  v84 = v168;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v83, 1, v168);
  v174 = v79;
  if (EnumTagSinglePayload == 1)
  {

    sub_2660C8040(v83, &qword_28005CA58, &qword_2661949F8);
    v86 = v160;
    v87 = v164;
    v91 = v155;
    v92 = v154;
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
    }

    v93 = __swift_project_value_buffer(v87, qword_2814B4A98);
    (*(v86 + 16))(v92, v93, v87);
    sub_2660E7EE8(v170, v91);
    v94 = sub_26618C690();
    v95 = sub_26618CAB0();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 67109120;
      v97 = v80;
      v98 = v150;
      sub_266165E38(v91, v150);
      v99 = __swift_getEnumTagSinglePayload(v98, 1, v168) == 1;
      v100 = v98;
      v80 = v97;
      sub_2660C8040(v100, &qword_28005CA58, &qword_2661949F8);
      sub_266165EA8(v91);
      *(v96 + 4) = v99;
      v81 = v167;
      _os_log_impl(&dword_2660B7000, v94, v95, "Error while getting the history stats. Is Interaction store nil %{BOOL}d. Returning.", v96, 8u);
      v101 = v175;
      v82 = v166;
      MEMORY[0x26677CC30](v96, -1, -1);
    }

    else
    {
      sub_266165EA8(v91);
      v101 = v175;
    }

    (*(v86 + 8))(v92, v87);
    v80(v82, v81);
    v178(v173, v101);
    v102 = 1;
    v103 = v169;
  }

  else
  {
    v177 = v80;
    (*(v153 + 32))(v152, v83, v84);
    v88 = v151;
    sub_26618C1A0();
    v89 = v169;
    v90 = v160;
    v105 = v164;
    __swift_storeEnumTagSinglePayload(v88, 0, 1, v169);
    v106 = v144;
    v107 = v149;
    v170 = *(v144 + 32);
    v171 = (v144 + 32);
    v170(v149, v88, v89);
    v103 = v89;
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
    }

    v108 = __swift_project_value_buffer(v105, qword_2814B4A98);
    v109 = v146;
    (*(v90 + 16))(v146, v108, v105);
    v110 = *(v106 + 16);
    v110(v147, v107, v103);
    v110(v148, v107, v103);
    v111 = v172;

    v112 = v106;
    v113 = v163;

    v114 = sub_26618C690();
    v115 = sub_26618CAA0();

    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v180 = v159;
      *v116 = 136315906;
      v117 = sub_266103A98(v161, v111, &v180);
      LODWORD(v161) = v115;
      v118 = v117;

      *(v116 + 4) = v118;
      *(v116 + 12) = 2080;
      *(v116 + 14) = sub_266103A98(v162, v113, &v180);
      *(v116 + 22) = 2080;
      v119 = v141;
      v120 = v147;
      sub_26618C180();
      sub_266165F04();
      v121 = v143;
      v122 = sub_26618CFD0();
      v123 = v90;
      v125 = v124;
      (*(v142 + 8))(v119, v121);
      v126 = *(v112 + 8);
      v126(v120, v169);
      v127 = sub_266103A98(v122, v125, &v180);

      *(v116 + 24) = v127;
      *(v116 + 32) = 2080;
      v128 = v148;
      sub_26618C170();
      v129 = MEMORY[0x26677BD80]();
      v131 = v130;

      v126(v128, v169);
      v103 = v169;
      v132 = sub_266103A98(v129, v131, &v180);

      *(v116 + 34) = v132;
      _os_log_impl(&dword_2660B7000, v114, v161, "For remoteDeviceID: %s, roomName: %s stats are - recency: %s, frequencies %s", v116, 0x2Au);
      v133 = v159;
      swift_arrayDestroy();
      MEMORY[0x26677CC30](v133, -1, -1);
      MEMORY[0x26677CC30](v116, -1, -1);

      (*(v123 + 8))(v146, v164);
      v134 = OUTLINED_FUNCTION_7_17();
      v135(v134);
      v136 = v166;
      v137 = v167;
    }

    else
    {

      v138 = *(v112 + 8);
      v138(v148, v103);
      v138(v147, v103);
      (*(v90 + 8))(v109, v164);
      v139 = OUTLINED_FUNCTION_7_17();
      v140(v139);
      v136 = v82;
      v137 = v81;
    }

    v177(v136, v137);
    v178(v173, v175);
    v170(v165, v149, v103);
    v102 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v165, v102, 1, v103);
}

uint64_t sub_266165DBC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for SiriRemembersStoreProvider(uint64_t a1)
{
  result = qword_2814B46B8;
  if (!qword_2814B46B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266165E38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA58, &qword_2661949F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266165EA8(uint64_t a1)
{
  v2 = type metadata accessor for SiriRemembersStoreProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266165F04()
{
  result = qword_28005CA60;
  if (!qword_28005CA60)
  {
    sub_26618A5B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CA60);
  }

  return result;
}

uint64_t sub_266165F5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA58, &qword_2661949F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266165FCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA58, &qword_2661949F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_26616603C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26618C8A0();

  [a3 setRemoteDeviceID_];
}

unint64_t sub_2661660A0()
{
  result = qword_28005CA78;
  if (!qword_28005CA78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28005CA78);
  }

  return result;
}

id sub_2661660F0(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_2661660FC(id a1, char a2)
{
  if (a2)
  {
  }
}

void sub_266166130(uint64_t a1)
{
  sub_26616619C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26616619C(uint64_t a1)
{
  if (!qword_2814B47D8)
  {
    sub_26618C200();
    v1 = sub_26618CBD0();
    if (!v2)
    {
      atomic_store(v1, &qword_2814B47D8);
    }
  }
}

void AppLaunchDataModels.ConfirmationViewModel.init(primaryAction:primaryLabel:secondaryAction:secondaryLabel:)()
{
  OUTLINED_FUNCTION_6_0();
  v13 = v2;
  v4 = v3;
  v12 = v3;
  v5 = sub_26618AB50();
  OUTLINED_FUNCTION_2_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_103();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_102();
  type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(0);
  sub_26618AB90();
  v10 = *(v7 + 16);
  v10(v0, v4, v5);
  v10(v1, v0, v5);
  OUTLINED_FUNCTION_110();
  sub_26618AB90();
  v11 = *(v7 + 8);
  v11(v0, v5);
  sub_26618AB90();
  v10(v0, v13, v5);
  v10(v1, v0, v5);
  OUTLINED_FUNCTION_110();
  sub_26618AB90();
  v11(v13, v5);
  v11(v12, v5);
  v11(v0, v5);
  OUTLINED_FUNCTION_7_1();
}

void AppLaunchDataModels.Device.init(name:id:actionProperty:)()
{
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_26618AB50();
  OUTLINED_FUNCTION_2_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_103();
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - v16;
  v21 = v10;
  v22 = v8;
  sub_26618AB90();
  type metadata accessor for AppLaunchDataModels.Device(0);
  v21 = v6;
  v22 = v4;
  sub_26618AB90();
  v18 = *(v13 + 16);
  v18(v17, v2, v11);
  v18(v0, v17, v11);
  OUTLINED_FUNCTION_110();
  sub_26618AB90();
  v19 = *(v13 + 8);
  v20 = OUTLINED_FUNCTION_19_7();
  v19(v20);
  (v19)(v17, v11);
  OUTLINED_FUNCTION_7_1();
}

uint64_t AppLaunchDataModels.DeviceDisambiguationModel.init(systemText:devices:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_26618AB90();
  result = type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(0);
  *(a4 + *(result + 20)) = a3;
  return result;
}

void AppLaunchDataModels.ButtonFallbackModel.init(buttonLabel:actionProperty:)()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_26618AB50();
  OUTLINED_FUNCTION_2_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_1();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = v19 - v14;
  v19[0] = v5;
  v19[1] = v3;
  sub_26618AB90();
  v16 = *(v8 + 16);
  v16(v15, v1, v6);
  type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  v16(v12, v15, v6);
  sub_26618AB90();
  v17 = *(v8 + 8);
  v18 = OUTLINED_FUNCTION_19_7();
  v17(v18);
  (v17)(v15, v6);
  OUTLINED_FUNCTION_7_1();
}

void AppLaunchDataModels.App.init(name:bundleId:isOffloaded:actionProperty:)()
{
  OUTLINED_FUNCTION_6_0();
  v24 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_26618AB50();
  OUTLINED_FUNCTION_2_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_24_1();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  v25 = v8;
  v26 = v6;
  sub_26618AB90();
  type metadata accessor for AppLaunchDataModels.App(0);
  v25 = v4;
  v26 = v2;
  sub_26618AB90();
  LOBYTE(v25) = v24;
  sub_26618AB90();
  v19 = *(v11 + 16);
  v20 = OUTLINED_FUNCTION_20_10();
  v19(v20);
  (v19)(v15, v18, v9);
  sub_26618AB90();
  v21 = *(v11 + 8);
  v22 = OUTLINED_FUNCTION_19_7();
  v21(v22);
  (v21)(v18, v9);
  OUTLINED_FUNCTION_7_1();
}

uint64_t AppLaunchDataModels.AppDisambiguationModel.init(systemText:apps:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26618AB90();
  type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C390, "Fi");
  return sub_26618AB90();
}

void sub_26616694C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_38();
  v93 = v21;
  v92 = v22;
  v91 = v23;
  v102 = v24;
  v90 = v25;
  v113 = v26;
  v101 = v27;
  v89 = v28;
  v88 = v29;
  v31 = v30;
  v95 = a21;
  sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v98 = v33;
  v99 = v32;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_4();
  v97 = v35 - v34;
  v36 = OUTLINED_FUNCTION_18_2();
  v87 = type metadata accessor for AppLaunchDataModels.AppResultModel(v36);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_16();
  v86 = v39;
  OUTLINED_FUNCTION_18_2();
  v40 = sub_26618A7D0();
  OUTLINED_FUNCTION_2_2();
  v94 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_4();
  v45 = v44 - v43;
  v46 = OUTLINED_FUNCTION_110();
  __swift_instantiateConcreteTypeFromMangledNameV2(v46, v47);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_24_1();
  v51 = v49 - v50;
  MEMORY[0x28223BE20](v52);
  v54 = v85 - v53;
  v55 = *(type metadata accessor for AppLaunchDataModels.AppOffloadedModel(0) + 20);
  v56 = sub_26618AB50();
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v56);
  sub_266173FBC();
  v100 = v31;
  v96 = v55;
  v85[1] = v51;
  sub_26618AB90();
  sub_2660BF79C(v54, &qword_28005C4D0, &qword_266191AA8);
  v103 = v88;
  v104 = v89;
  v105 = v101;
  v106 = v113;
  v57 = v90;
  v107 = v90;
  v108 = v102;
  v109 = v91;
  v110 = v92;
  OUTLINED_FUNCTION_51_3();
  sub_26616AEA8(v58);
  v59 = v93;
  sub_26618C3F0();

  v60 = v45;
  v61 = sub_26618C3E0();
  if (v59)
  {
    v63 = v94;
    v64 = v95;
    v65 = v100;

    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_4_21();
      swift_once();
    }

    v66 = v99;
    v67 = __swift_project_value_buffer(v99, qword_2814B4A80);
    (*(v98 + 16))(v97, v67, v66);
    v68 = v59;
    v69 = sub_26618C690();
    v70 = sub_26618CAB0();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v71 = 138412290;
      v73 = v59;
      v74 = _swift_stdlib_bridgeErrorToNSError();
      *(v71 + 4) = v74;
      *v72 = v74;
      _os_log_impl(&dword_2660B7000, v69, v70, "AppOffloadedModel: failed to serialize sf card. Error %@", v71, 0xCu);
      sub_2660BF79C(v72, &qword_28005C1F8, &unk_266190550);
      v60 = v45;
      v65 = v100;
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    (*(v98 + 8))(v97, v99);
    swift_willThrow();
    sub_2660BF79C(v64, &qword_28005C4D0, &qword_266191AA8);
    (*(v63 + 8))(v60, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD28, &qword_266194C40);
    OUTLINED_FUNCTION_16();
    (*(v75 + 8))(v65 + v96, v76);
  }

  else
  {
    v77 = v61;
    v78 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C5C8, &qword_266192278);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_26618E190;
    *(v79 + 32) = v77;
    *(v79 + 40) = v78;
    v111 = 0;
    v112 = 0;
    sub_2660C924C(v77, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3D8, qword_266192200);
    v99 = v45;
    v80 = v86;
    sub_26618AB90();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC00, &qword_266194BF0);
    OUTLINED_FUNCTION_16();
    (*(v81 + 8))(v80);
    v111 = v57;
    v112 = v102;
    sub_26618AB90();
    v111 = v101;
    v112 = v113;
    sub_26618AB90();
    v111 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBC8, &qword_266194BD8);
    sub_26618AB90();
    OUTLINED_FUNCTION_5_16();
    sub_26616B4A0();
    sub_26618AB90();
    OUTLINED_FUNCTION_2_21();
    sub_26616B4F8();
    v82 = v95;
    sub_266173FBC();
    OUTLINED_FUNCTION_82_1();
    sub_266173FBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD28, &qword_266194C40);
    sub_26618ABC0();
    sub_2660C55C0(v77, v78);
    sub_2660BF79C(v82, &qword_28005C4D0, &qword_266191AA8);
    v83 = OUTLINED_FUNCTION_84_0();
    sub_2660BF79C(v83, v84, &qword_266191AA8);
    (*(v94 + 8))(v99, v40);
  }

  OUTLINED_FUNCTION_39();
}

uint64_t sub_266167094(uint64_t a1)
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

  sub_2661738A4(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_26618B220();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_266167194()
{
  v1 = sub_2661046B8();
  v2 = sub_2661046B8();
  v3 = __OFADD__(v2, v1);
  result = v2 + v1;
  if (v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_26617390C(result, 1);
  v5 = *v0;
  v6 = *v0 & 0xFFFFFFFFFFFFFF8;
  sub_2661422A4();
  v8 = v7;

  if (v8 < v1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v8 < 1)
  {
LABEL_6:
    *v0 = v5;
    return result;
  }

  v9 = *(v6 + 16);
  v3 = __OFADD__(v9, v8);
  v10 = v9 + v8;
  if (!v3)
  {
    *(v6 + 16) = v10;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t (*AppLaunchDataModels.App.name.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_28_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_49_3();
  *(v0 + 32) = sub_26618ABA0();
  return sub_2661773C0;
}

uint64_t (*AppLaunchDataModels.App.bundleId.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  type metadata accessor for AppLaunchDataModels.App(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

uint64_t AppLaunchDataModels.App.isOffloaded.getter()
{
  type metadata accessor for AppLaunchDataModels.App(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA88, &qword_266194B50);
  sub_26618ABB0();
  return v1;
}

uint64_t AppLaunchDataModels.App.isOffloaded.setter(char a1)
{
  type metadata accessor for AppLaunchDataModels.App(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA88, &qword_266194B50);
  return sub_26618ABC0();
}

uint64_t (*AppLaunchDataModels.App.isOffloaded.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  type metadata accessor for AppLaunchDataModels.App(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA88, &qword_266194B50);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661674F8;
}

void *AppLaunchDataModels.App.actionProperty.getter()
{
  type metadata accessor for AppLaunchDataModels.App(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  return sub_26618ABB0();
}

uint64_t AppLaunchDataModels.App.actionProperty.setter()
{
  OUTLINED_FUNCTION_67_1();
  sub_26618AB50();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_4();
  v2 = OUTLINED_FUNCTION_11_8(v1);
  v3(v2);
  type metadata accessor for AppLaunchDataModels.App(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  OUTLINED_FUNCTION_128();
  sub_26618ABC0();
  v4 = OUTLINED_FUNCTION_57_3();
  return v5(v4);
}

uint64_t (*AppLaunchDataModels.App.actionProperty.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  type metadata accessor for AppLaunchDataModels.App(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

uint64_t sub_26616769C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (sub_26618D000() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x616F6C66664F7369 && a2 == 0xEB00000000646564;
      if (v7 || (sub_26618D000() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x72506E6F69746361 && a2 == 0xEE0079747265706FLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_26618D000();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_266167800(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x6449656C646E7562;
      break;
    case 2:
      result = 0x616F6C66664F7369;
      break;
    case 3:
      result = 0x72506E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266167898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26616769C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2661678C0(uint64_t a1)
{
  v2 = sub_26616ADEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2661678FC(uint64_t a1)
{
  v2 = sub_26616ADEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static AppLaunchDataModels.App.__derived_struct_equals(_:_:)()
{
  OUTLINED_FUNCTION_70_2();
  if ((sub_26618ABD0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AppLaunchDataModels.App(0);
  if ((OUTLINED_FUNCTION_138() & 1) == 0 || (OUTLINED_FUNCTION_138() & 1) == 0)
  {
    return 0;
  }

  sub_26618AB50();
  OUTLINED_FUNCTION_53_2();
  sub_26616AEA8(v0);
  OUTLINED_FUNCTION_56_2();

  return sub_26618ABD0();
}

void AppLaunchDataModels.App.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_47();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CAA0, &qword_266194B60);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_8_16();
  sub_26616ADEC();
  OUTLINED_FUNCTION_34_7(&type metadata for AppLaunchDataModels.App.CodingKeys);
  a14 = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_1_17();
  v32 = sub_26616B098(v31);
  OUTLINED_FUNCTION_96(v25, &a14, v28, v30, v32);
  if (!v24)
  {
    type metadata accessor for AppLaunchDataModels.App(0);
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_96(v25 + v33, &a13, v28, v30, v32);
    OUTLINED_FUNCTION_33();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA88, &qword_266194B50);
    OUTLINED_FUNCTION_1_17();
    sub_26616AE40(v34);
    OUTLINED_FUNCTION_31_11();
    OUTLINED_FUNCTION_96(v35, v36, v37, v38, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
    OUTLINED_FUNCTION_1_17();
    sub_26616B100(v40);
    OUTLINED_FUNCTION_31_11();
    OUTLINED_FUNCTION_96(v41, v42, v43, v44, v45);
  }

  v46 = OUTLINED_FUNCTION_20_10();
  v47(v46);
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_39();
}

uint64_t AppLaunchDataModels.App.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  sub_26616AEEC();
  OUTLINED_FUNCTION_41_5();
  sub_26618C870();
  type metadata accessor for AppLaunchDataModels.App(0);
  OUTLINED_FUNCTION_41_5();
  sub_26618C870();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA88, &qword_266194B50);
  sub_26616AF68();
  OUTLINED_FUNCTION_41_5();
  sub_26618C870();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  sub_26616AFE4();
  OUTLINED_FUNCTION_41_5();
  return sub_26618C870();
}

uint64_t AppLaunchDataModels.App.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_122(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  sub_26616AEEC();
  OUTLINED_FUNCTION_88_0();
  sub_26618C870();
  type metadata accessor for AppLaunchDataModels.App(0);
  OUTLINED_FUNCTION_88_0();
  sub_26618C870();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA88, &qword_266194B50);
  v1 = sub_26616AF68();
  OUTLINED_FUNCTION_38_4(v1, v2, v3, v4, v5, v6, v7, v8, v18, v20);
  sub_26618C870();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  v9 = sub_26616AFE4();
  OUTLINED_FUNCTION_38_4(v9, v10, v11, v12, v13, v14, v15, v16, v19, v21);
  sub_26618C870();
  return sub_26618D0C0();
}

void AppLaunchDataModels.App.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38();
  v27 = v26;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  OUTLINED_FUNCTION_2_2();
  v53 = v28;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_30_7();
  v54 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA88, &qword_266194B50);
  OUTLINED_FUNCTION_2_2();
  v56 = v31;
  v57 = v32;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_28();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_2_2();
  v58 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_24_1();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_7_16();
  OUTLINED_FUNCTION_107(v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CAD8, &qword_266194B68);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_72_2();
  v42 = type metadata accessor for AppLaunchDataModels.App(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_4();
  v46 = v45 - v44;
  OUTLINED_FUNCTION_35(v27, v27[3]);
  sub_26616ADEC();
  sub_26618D0E0();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    OUTLINED_FUNCTION_0_23();
    sub_26616B098(v47);
    sub_26618CF30();
    v48 = v59;
    v60 = *(v58 + 32);
    v60(v46, v48, v61);
    OUTLINED_FUNCTION_35_5();
    sub_26618CF30();
    v60(v46 + v42[5], v38, v61);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_0_23();
    sub_26616AE40(v49);
    sub_26618CF30();
    (*(v57 + 32))(v46 + v42[6], v25, v56);
    OUTLINED_FUNCTION_0_23();
    sub_26616B100(v50);
    sub_26618CF30();
    v51 = OUTLINED_FUNCTION_54_4();
    v52(v51);
    (*(v53 + 32))(v46 + v42[7], v54, v55);
    OUTLINED_FUNCTION_129();
    sub_26616B4A0();
    __swift_destroy_boxed_opaque_existential_1(v27);
    sub_26616B4F8();
  }

  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_39();
}

uint64_t sub_266168368(uint64_t a1)
{
  sub_26618D090();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  sub_26616AEEC();
  sub_26618C870();
  sub_26618C870();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA88, &qword_266194B50);
  sub_26616AF68();
  sub_26618C870();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  sub_26616AFE4();
  sub_26618C870();
  return sub_26618D0C0();
}

uint64_t (*AppLaunchDataModels.AppDisambiguationModel.systemText.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_28_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_49_3();
  *(v0 + 32) = sub_26618ABA0();
  return sub_2661773C0;
}

uint64_t AppLaunchDataModels.AppDisambiguationModel.apps.getter()
{
  type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CAF8, &qword_266194B70);
  sub_26618ABB0();
  return v1;
}

uint64_t AppLaunchDataModels.AppDisambiguationModel.apps.setter(uint64_t a1)
{
  type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CAF8, &qword_266194B70);
  return sub_26618ABC0();
}

uint64_t (*AppLaunchDataModels.AppDisambiguationModel.apps.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CAF8, &qword_266194B70);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

uint64_t sub_266168634(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65546D6574737973 && a2 == 0xEA00000000007478;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1936748641 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26618D000();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_266168704(char a1)
{
  if (a1)
  {
    return 1936748641;
  }

  else
  {
    return 0x65546D6574737973;
  }
}

uint64_t sub_266168740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266168634(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266168768(uint64_t a1)
{
  v2 = sub_26616B1CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2661687A4(uint64_t a1)
{
  v2 = sub_26616B1CC();

  return MEMORY[0x2821FE720](a1, v2);
}

void AppLaunchDataModels.AppDisambiguationModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_20_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CB00, &qword_266194B78);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_8_16();
  sub_26616B1CC();
  OUTLINED_FUNCTION_23_8(&type metadata for AppLaunchDataModels.AppDisambiguationModel.CodingKeys);
  v26[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_1_17();
  v19 = sub_26616B098(v18);
  OUTLINED_FUNCTION_13_9(v19);
  if (!v16)
  {
    type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(0);
    OUTLINED_FUNCTION_35_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CAF8, &qword_266194B70);
    sub_26616B220();
    v20 = OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_15_9(v20, v26, v21, v22, v23);
  }

  v24 = OUTLINED_FUNCTION_33_3();
  v25(v24);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_140();
}

void AppLaunchDataModels.AppDisambiguationModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_38();
  a21 = v25;
  a22 = v26;
  v28 = v27;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CAF8, &qword_266194B70);
  OUTLINED_FUNCTION_2_2();
  v49 = v29;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_46();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_2_2();
  v52 = v31;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_30_7();
  v53 = v33;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CB38, &qword_266194B80);
  OUTLINED_FUNCTION_2_2();
  v51 = v34;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_28();
  v36 = type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_4();
  v40 = v39 - v38;
  v41 = OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_35(v41, v42);
  v43 = sub_26616B1CC();
  OUTLINED_FUNCTION_121(&type metadata for AppLaunchDataModels.AppDisambiguationModel.CodingKeys, v44, v43);
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    HIBYTE(a12) = 0;
    OUTLINED_FUNCTION_0_23();
    sub_26616B098(v45);
    OUTLINED_FUNCTION_50_4();
    OUTLINED_FUNCTION_139(v55, v46, v54, v55, v47);
    (*(v52 + 32))(v40, v53, v55);
    OUTLINED_FUNCTION_35_5();
    v48 = sub_26616B414();
    OUTLINED_FUNCTION_139(v50, &a12, v54, v50, v48);
    (*(v51 + 8))(v23, v54);
    (*(v49 + 32))(v40 + *(v36 + 20), v24, v50);
    OUTLINED_FUNCTION_129();
    sub_26616B4A0();
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_42_7();
    sub_26616B4F8();
  }

  OUTLINED_FUNCTION_39();
}

uint64_t (*AppLaunchDataModels.ButtonFallbackModel.buttonLabel.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_28_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_49_3();
  *(v0 + 32) = sub_26618ABA0();
  return sub_2661773C0;
}

uint64_t AppLaunchDataModels.ButtonFallbackModel.actionProperty.setter()
{
  OUTLINED_FUNCTION_67_1();
  sub_26618AB50();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_4();
  v2 = OUTLINED_FUNCTION_11_8(v1);
  v3(v2);
  type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  OUTLINED_FUNCTION_128();
  sub_26618ABC0();
  v4 = OUTLINED_FUNCTION_57_3();
  return v5(v4);
}

uint64_t (*AppLaunchDataModels.ButtonFallbackModel.actionProperty.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

uint64_t sub_266168E58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614C6E6F74747562 && a2 == 0xEB000000006C6562;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72506E6F69746361 && a2 == 0xEE0079747265706FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_26618D000();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_266168F2C(char a1)
{
  if (a1)
  {
    return 0x72506E6F69746361;
  }

  else
  {
    return 0x614C6E6F74747562;
  }
}

uint64_t sub_266168F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266168E58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266168FA8(uint64_t a1)
{
  v2 = sub_26616B54C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266168FE4(uint64_t a1)
{
  v2 = sub_26616B54C();

  return MEMORY[0x2821FE720](a1, v2);
}

void AppLaunchDataModels.ButtonFallbackModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_20_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CB48, &qword_266194B88);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_8_16();
  sub_26616B54C();
  OUTLINED_FUNCTION_23_8(&type metadata for AppLaunchDataModels.ButtonFallbackModel.CodingKeys);
  v27[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_1_17();
  v19 = sub_26616B098(v18);
  OUTLINED_FUNCTION_13_9(v19);
  if (!v16)
  {
    type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
    OUTLINED_FUNCTION_35_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
    OUTLINED_FUNCTION_1_17();
    sub_26616B100(v20);
    v21 = OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_15_9(v21, v27, v22, v23, v24);
  }

  v25 = OUTLINED_FUNCTION_33_3();
  v26(v25);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_140();
}

void AppLaunchDataModels.ButtonFallbackModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_38();
  a21 = v25;
  a22 = v26;
  v28 = v27;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  OUTLINED_FUNCTION_2_2();
  v50 = v29;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_37_4();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_2_2();
  v51 = v31;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_30_7();
  v53 = v33;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CB50, &qword_266194B90);
  OUTLINED_FUNCTION_2_2();
  v54 = v34;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_28();
  v36 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_4();
  v40 = v39 - v38;
  v41 = OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_35(v41, v42);
  v43 = sub_26616B54C();
  OUTLINED_FUNCTION_121(&type metadata for AppLaunchDataModels.ButtonFallbackModel.CodingKeys, v44, v43);
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    HIBYTE(a12) = 0;
    OUTLINED_FUNCTION_0_23();
    sub_26616B098(v45);
    OUTLINED_FUNCTION_50_4();
    OUTLINED_FUNCTION_139(v55, v46, v56, v55, v47);
    (*(v51 + 32))(v40, v53, v55);
    OUTLINED_FUNCTION_35_5();
    OUTLINED_FUNCTION_0_23();
    v49 = sub_26616B100(v48);
    OUTLINED_FUNCTION_139(v52, &a12, v56, v52, v49);
    (*(v54 + 8))(v23, v56);
    (*(v50 + 32))(v40 + *(v36 + 20), v24, v52);
    OUTLINED_FUNCTION_129();
    sub_26616B4A0();
    __swift_destroy_boxed_opaque_existential_1(v28);
    sub_26616B4F8();
  }

  OUTLINED_FUNCTION_39();
}

uint64_t (*AppLaunchDataModels.Device.name.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_28_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_49_3();
  *(v0 + 32) = sub_26618ABA0();
  return sub_2661773C0;
}

uint64_t sub_266169578(uint64_t (*a1)(void))
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  sub_26618ABB0();
  return v2;
}

uint64_t sub_2661695EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_127(v3, v4, v5, v6, v7, v8, v9, v10, a1);
  return sub_26618ABC0();
}

uint64_t (*AppLaunchDataModels.Device.id.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  type metadata accessor for AppLaunchDataModels.Device(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

uint64_t (*AppLaunchDataModels.Device.actionProperty.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  type metadata accessor for AppLaunchDataModels.Device(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

uint64_t sub_266169754(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_26618D000() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x72506E6F69746361 && a2 == 0xEE0079747265706FLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_26618D000();

      if (v8)
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

uint64_t sub_266169864(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 25705;
  }

  return 0x72506E6F69746361;
}

uint64_t sub_2661698BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266169754(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2661698E4(uint64_t a1)
{
  v2 = sub_26616B5A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266169920(uint64_t a1)
{
  v2 = sub_26616B5A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static AppLaunchDataModels.Device.__derived_struct_equals(_:_:)()
{
  OUTLINED_FUNCTION_70_2();
  if ((sub_26618ABD0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AppLaunchDataModels.Device(0);
  if ((OUTLINED_FUNCTION_138() & 1) == 0)
  {
    return 0;
  }

  sub_26618AB50();
  OUTLINED_FUNCTION_53_2();
  sub_26616AEA8(v0);
  OUTLINED_FUNCTION_56_2();

  return sub_26618ABD0();
}

void AppLaunchDataModels.Device.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_38();
  a18 = v21;
  a19 = v22;
  OUTLINED_FUNCTION_20_15();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CB58, &qword_266194B98);
  OUTLINED_FUNCTION_2_2();
  v25 = v24;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_8_16();
  sub_26616B5A0();
  OUTLINED_FUNCTION_23_8(&type metadata for AppLaunchDataModels.Device.CodingKeys);
  BYTE7(a10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_1_17();
  sub_26616B098(v27);
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_78_0(v28, v29, v30, v31, v32);
  if (!v19)
  {
    type metadata accessor for AppLaunchDataModels.Device(0);
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_24_7();
    OUTLINED_FUNCTION_78_0(v33, v34, v35, v36, v37);
    OUTLINED_FUNCTION_33();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
    OUTLINED_FUNCTION_1_17();
    sub_26616B100(v38);
    v39 = OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_15_9(v39, &a10 + 5, v40, v41, v42);
  }

  (*(v25 + 8))(v20, v23);
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_39();
}

uint64_t AppLaunchDataModels.Device.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  sub_26616AEEC();
  OUTLINED_FUNCTION_82_1();
  sub_26618C870();
  type metadata accessor for AppLaunchDataModels.Device(0);
  OUTLINED_FUNCTION_82_1();
  sub_26618C870();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  sub_26616AFE4();
  return sub_26618C870();
}

uint64_t AppLaunchDataModels.Device.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_122(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  sub_26616AEEC();
  OUTLINED_FUNCTION_88_0();
  sub_26618C870();
  type metadata accessor for AppLaunchDataModels.Device(0);
  OUTLINED_FUNCTION_88_0();
  sub_26618C870();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  v1 = sub_26616AFE4();
  OUTLINED_FUNCTION_38_4(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_26618C870();
  return sub_26618D0C0();
}

void AppLaunchDataModels.Device.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_38();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_125(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_61_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CB68, &qword_266194BA0);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_94();
  type metadata accessor for AppLaunchDataModels.Device(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_93();
  v33 = OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_35(v33, v34);
  v35 = sub_26616B5A0();
  OUTLINED_FUNCTION_115(&type metadata for AppLaunchDataModels.Device.CodingKeys, v36, v35);
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    HIBYTE(a12) = 0;
    OUTLINED_FUNCTION_0_23();
    sub_26616B098(v37);
    OUTLINED_FUNCTION_112();
    OUTLINED_FUNCTION_22_9(v38, v39);
    v40 = OUTLINED_FUNCTION_91();
    v41(v40);
    OUTLINED_FUNCTION_35_5();
    OUTLINED_FUNCTION_22_9(v42, &a12);
    v43 = OUTLINED_FUNCTION_76_2();
    v44(v43);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_0_23();
    v46 = sub_26616B100(v45);
    OUTLINED_FUNCTION_69_2(v46);
    v47 = OUTLINED_FUNCTION_18_12();
    v48(v47);
    v49 = OUTLINED_FUNCTION_74_1();
    v50(v49);
    sub_26616B4A0();
    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_26616B4F8();
  }

  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_39();
}

uint64_t sub_26616A084(uint64_t a1)
{
  sub_26618D090();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  sub_26616AEEC();
  sub_26618C870();
  sub_26618C870();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  sub_26616AFE4();
  sub_26618C870();
  return sub_26618D0C0();
}

uint64_t (*AppLaunchDataModels.DeviceDisambiguationModel.systemText.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_28_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_49_3();
  *(v0 + 32) = sub_26618ABA0();
  return sub_2661773C0;
}

uint64_t AppLaunchDataModels.DeviceDisambiguationModel.devices.getter()
{
  type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(0);
}

uint64_t AppLaunchDataModels.DeviceDisambiguationModel.devices.setter()
{
  v2 = OUTLINED_FUNCTION_67_1();
  v3 = *(type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(v2) + 20);

  *(v1 + v3) = v0;
  return result;
}

void (*AppLaunchDataModels.DeviceDisambiguationModel.devices.modify())()
{
  v0 = OUTLINED_FUNCTION_67_1();
  type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(v0);
  return nullsub_1;
}

uint64_t sub_26616A2A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65546D6574737973 && a2 == 0xEA00000000007478;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26618D000();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26616A370(char a1)
{
  if (a1)
  {
    return 0x73656369766564;
  }

  else
  {
    return 0x65546D6574737973;
  }
}

uint64_t sub_26616A3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26616A2A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26616A3DC(uint64_t a1)
{
  v2 = sub_26616B5F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26616A418(uint64_t a1)
{
  v2 = sub_26616B5F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void AppLaunchDataModels.DeviceDisambiguationModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CB70, &qword_266194BA8);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_8_16();
  sub_26616B5F4();
  OUTLINED_FUNCTION_34_7(&type metadata for AppLaunchDataModels.DeviceDisambiguationModel.CodingKeys);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_1_17();
  sub_26616B098(v16);
  OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_96(v17, v18, v19, v20, v21);
  if (!v14)
  {
    type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CB80, &qword_266194BB0);
    sub_26616B648();
    OUTLINED_FUNCTION_31_11();
    OUTLINED_FUNCTION_96(v22, v23, v24, v25, v26);
  }

  v27 = OUTLINED_FUNCTION_20_10();
  v28(v27);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_140();
}

void AppLaunchDataModels.DeviceDisambiguationModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_38();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_28();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CB98, &qword_266194BB8);
  OUTLINED_FUNCTION_2_2();
  v34 = v28;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_72_2();
  v30 = type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_40_6();
  OUTLINED_FUNCTION_35(v26, v26[3]);
  sub_26616B5F4();
  sub_26618D0E0();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    OUTLINED_FUNCTION_0_23();
    sub_26616B098(v32);
    OUTLINED_FUNCTION_50_4();
    sub_26618CF30();
    OUTLINED_FUNCTION_82_1();
    v33();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CB80, &qword_266194BB0);
    OUTLINED_FUNCTION_35_5();
    sub_26616B6FC();
    sub_26618CF30();
    (*(v34 + 8))(v24, v35);
    *(v23 + *(v30 + 20)) = v36;
    OUTLINED_FUNCTION_129();
    sub_26616B4A0();
    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_26616B4F8();
  }

  OUTLINED_FUNCTION_39();
}

void *AppLaunchDataModels.ConfirmationViewModel.primaryAction.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);

  return sub_26618ABB0();
}

uint64_t AppLaunchDataModels.ConfirmationViewModel.primaryAction.setter()
{
  OUTLINED_FUNCTION_67_1();
  sub_26618AB50();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_4();
  v2 = OUTLINED_FUNCTION_11_8(v1);
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  sub_26618ABC0();
  v4 = OUTLINED_FUNCTION_57_3();
  return v5(v4);
}

uint64_t (*AppLaunchDataModels.ConfirmationViewModel.primaryAction.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_28_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  OUTLINED_FUNCTION_49_3();
  *(v0 + 32) = sub_26618ABA0();
  return sub_2661773C0;
}

uint64_t (*AppLaunchDataModels.ConfirmationViewModel.primaryLabel.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

void *sub_26616AB38(void (*a1)(void))
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  return sub_26618ABB0();
}

uint64_t sub_26616ABAC(uint64_t a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_67_1();
  v5 = sub_26618AB50();
  OUTLINED_FUNCTION_2_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_40_6();
  (*(v7 + 16))(v3, v2, v5);
  a2(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  sub_26618ABC0();
  v9 = OUTLINED_FUNCTION_41_5();
  return v10(v9);
}

uint64_t (*AppLaunchDataModels.ConfirmationViewModel.secondaryAction.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_26616ADEC()
{
  result = qword_28005CAA8;
  if (!qword_28005CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CAA8);
  }

  return result;
}

unint64_t sub_26616AE40(uint64_t a1)
{
  result = OUTLINED_FUNCTION_73_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CA88, &qword_266194B50);
    OUTLINED_FUNCTION_105();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26616AEA8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_73_2(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26616AEEC()
{
  result = qword_28005CAB8;
  if (!qword_28005CAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CA80, &qword_266194B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CAB8);
  }

  return result;
}

unint64_t sub_26616AF68()
{
  result = qword_28005CAC0;
  if (!qword_28005CAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CA88, &qword_266194B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CAC0);
  }

  return result;
}

unint64_t sub_26616AFE4()
{
  result = qword_28005CAC8;
  if (!qword_28005CAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CA90, &qword_266194B58);
    sub_26616AEA8(&unk_28005CAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CAC8);
  }

  return result;
}

unint64_t sub_26616B098(uint64_t a1)
{
  result = OUTLINED_FUNCTION_73_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CA80, &qword_266194B48);
    OUTLINED_FUNCTION_105();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26616B100(uint64_t a1)
{
  result = OUTLINED_FUNCTION_73_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CA90, &qword_266194B58);
    sub_26616AEA8(&unk_2814B48A0);
    sub_26616AEA8(&unk_2814B48A8);
    OUTLINED_FUNCTION_105();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26616B1CC()
{
  result = qword_28005CB08;
  if (!qword_28005CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CB08);
  }

  return result;
}

unint64_t sub_26616B220()
{
  result = qword_28005CB10;
  if (!qword_28005CB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CAF8, &qword_266194B70);
    sub_26616B2AC();
    sub_26616B360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CB10);
  }

  return result;
}

unint64_t sub_26616B2AC()
{
  result = qword_28005CB18;
  if (!qword_28005CB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C390, "Fi");
    sub_26616AEA8(&unk_28005CB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CB18);
  }

  return result;
}

unint64_t sub_26616B360()
{
  result = qword_28005CB28;
  if (!qword_28005CB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C390, "Fi");
    sub_26616AEA8(&unk_28005CB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CB28);
  }

  return result;
}

unint64_t sub_26616B414()
{
  result = qword_28005CB40;
  if (!qword_28005CB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CAF8, &qword_266194B70);
    sub_26616B2AC();
    sub_26616B360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CB40);
  }

  return result;
}

uint64_t sub_26616B4A0()
{
  OUTLINED_FUNCTION_70_2();
  v1(0);
  OUTLINED_FUNCTION_16();
  v2 = OUTLINED_FUNCTION_19_7();
  v3(v2);
  return v0;
}

uint64_t sub_26616B4F8()
{
  v1 = OUTLINED_FUNCTION_67_1();
  v2(v1);
  OUTLINED_FUNCTION_16();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_26616B54C()
{
  result = qword_2814B4298;
  if (!qword_2814B4298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B4298);
  }

  return result;
}

unint64_t sub_26616B5A0()
{
  result = qword_28005CB60;
  if (!qword_28005CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CB60);
  }

  return result;
}

unint64_t sub_26616B5F4()
{
  result = qword_28005CB78;
  if (!qword_28005CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CB78);
  }

  return result;
}

unint64_t sub_26616B648()
{
  result = qword_28005CB88;
  if (!qword_28005CB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CB80, &qword_266194BB0);
    sub_26616AEA8(&unk_28005CB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CB88);
  }

  return result;
}

unint64_t sub_26616B6FC()
{
  result = qword_28005CBA0;
  if (!qword_28005CBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CB80, &qword_266194BB0);
    sub_26616AEA8(&unk_28005CBA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CBA0);
  }

  return result;
}

uint64_t AppLaunchDataModels.ConfirmationViewModel.secondaryLabel.getter()
{
  type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  sub_26618ABB0();
  return v1;
}

uint64_t AppLaunchDataModels.ConfirmationViewModel.secondaryLabel.setter(uint64_t a1)
{
  type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_127(v1, v2, v3, v4, v5, v6, v7, v8, a1);
  return sub_26618ABC0();
}

uint64_t (*AppLaunchDataModels.ConfirmationViewModel.secondaryLabel.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

uint64_t sub_26616B8C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x417972616D697270 && a2 == 0xED00006E6F697463;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4C7972616D697270 && a2 == 0xEC0000006C656261;
    if (v6 || (sub_26618D000() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7261646E6F636573 && a2 == 0xEF6E6F6974634179;
      if (v7 || (sub_26618D000() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7261646E6F636573 && a2 == 0xEE006C6562614C79)
      {

        return 3;
      }

      else
      {
        v9 = sub_26618D000();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_26616BA3C(char a1)
{
  result = 0x417972616D697270;
  switch(a1)
  {
    case 1:
      result = 0x4C7972616D697270;
      break;
    case 2:
    case 3:
      result = 0x7261646E6F636573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26616BAE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26616B8C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26616BB0C(uint64_t a1)
{
  v2 = sub_26616BD50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26616BB48(uint64_t a1)
{
  v2 = sub_26616BD50();

  return MEMORY[0x2821FE720](a1, v2);
}

void AppLaunchDataModels.ConfirmationViewModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_47();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBB0, &qword_266194BC0);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_8_16();
  sub_26616BD50();
  OUTLINED_FUNCTION_34_7(&type metadata for AppLaunchDataModels.ConfirmationViewModel.CodingKeys);
  a14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  OUTLINED_FUNCTION_1_17();
  sub_26616B100(v30);
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_96(v31, v32, v33, v34, v35);
  if (!v24)
  {
    v51 = type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(0);
    v36 = *(v51 + 20);
    OUTLINED_FUNCTION_35_5();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
    OUTLINED_FUNCTION_1_17();
    v39 = sub_26616B098(v38);
    v40 = v25;
    v41 = v39;
    v50 = v40;
    OUTLINED_FUNCTION_96(v40 + v36, &a13, v28, v37, v39);
    a12 = 2;
    OUTLINED_FUNCTION_24_7();
    OUTLINED_FUNCTION_96(v42, v43, v44, v45, v46);
    v47 = *(v51 + 28);
    a11 = 3;
    OUTLINED_FUNCTION_96(v50 + v47, &a11, v28, v37, v41);
  }

  v48 = OUTLINED_FUNCTION_20_10();
  v49(v48);
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_39();
}

unint64_t sub_26616BD50()
{
  result = qword_28005CBB8;
  if (!qword_28005CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CBB8);
  }

  return result;
}

void AppLaunchDataModels.ConfirmationViewModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38();
  v28 = v27;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_2_2();
  v52 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_24_1();
  v51 = v31 - v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_16();
  OUTLINED_FUNCTION_125(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  OUTLINED_FUNCTION_2_2();
  v53 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_98();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_16();
  OUTLINED_FUNCTION_107(v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBC0, &unk_266194BC8);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_37_4();
  v41 = type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_35(v28, v28[3]);
  sub_26616BD50();
  sub_26618D0E0();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v49 = v26;
    v50 = v24;
    OUTLINED_FUNCTION_0_23();
    sub_26616B100(v43);
    sub_26618CF30();
    v44 = *(v53 + 32);
    v44(v24, v55, v35);
    OUTLINED_FUNCTION_35_5();
    OUTLINED_FUNCTION_0_23();
    sub_26616B098(v45);
    sub_26618CF30();
    v46 = *(v52 + 32);
    v46(v50 + v41[5], v54, v56);
    OUTLINED_FUNCTION_33();
    sub_26618CF30();
    v44(v50 + v41[6], v49, v35);
    sub_26618CF30();
    v47 = OUTLINED_FUNCTION_54_4();
    v48(v47);
    v46(v50 + v41[7], v51, v56);
    sub_26616B4A0();
    __swift_destroy_boxed_opaque_existential_1(v28);
    sub_26616B4F8();
  }

  OUTLINED_FUNCTION_39();
}

uint64_t property wrapper backing initializer of AppLaunchDataModels.AppResultModel.adamId(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3D8, qword_266192200);
  OUTLINED_FUNCTION_127(v1, v2, v3, v4, v5, v6, v7, v8, a1);
  return sub_26618AB90();
}

void sub_26616C38C()
{
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  v4 = v3;
  v33 = v5;
  sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_18_2();
  v7 = sub_26618A7D0();
  OUTLINED_FUNCTION_2_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_94();
  sub_26618AA00();
  OUTLINED_FUNCTION_2_2();
  v31 = v12;
  v32 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v15 = v14 - v13;
  v34 = v4;
  sub_26616C8C4(v4, v2, v14 - v13);
  v16 = sub_26618A9A0();
  v37 = *(v16 + 16);
  if (v37)
  {
    v17 = 0;
    v35 = v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v38 = MEMORY[0x277D84F90];
    v36 = v9;
    while (v17 < *(v16 + 16))
    {
      v18 = v16;
      (*(v36 + 16))(v0, v35 + *(v36 + 72) * v17, v7);
      OUTLINED_FUNCTION_51_3();
      sub_26616AEA8(&unk_28005CFA0);
      v19 = sub_26618C3E0();
      v21 = v20;
      v22 = OUTLINED_FUNCTION_41_5();
      v23(v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_266129D24();
        v38 = v27;
      }

      v25 = *(v38 + 16);
      v24 = *(v38 + 24);
      if (v25 >= v24 >> 1)
      {
        OUTLINED_FUNCTION_38_2(v24);
        sub_266129D24();
        v38 = v28;
      }

      *(v38 + 16) = v25 + 1;
      v26 = v38 + 16 * v25;
      *(v26 + 32) = v19;
      *(v26 + 40) = v21;
      ++v17;
      v16 = v18;
      if (v37 == v17)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    sub_26618A9E0();
    sub_26618A9F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3D8, qword_266192200);
    sub_26618AB90();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC00, &qword_266194BF0);
    OUTLINED_FUNCTION_16();
    (*(v29 + 8))(v33);
    sub_26618AB90();
    type metadata accessor for AppLaunchDataModels.AppResultModel(0);
    sub_26618AB90();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBC8, &qword_266194BD8);
    sub_26618AB90();
    __swift_destroy_boxed_opaque_existential_1(v2);
    v30 = *(v31 + 8);
    v30(v34, v32);
    v30(v15, v32);
    OUTLINED_FUNCTION_7_1();
  }
}

uint64_t sub_26616C8C4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = sub_26618A7D0();
  v38 = *(v30 - 8);
  v6 = MEMORY[0x28223BE20](v30);
  v37 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v28 - v8;
  v9 = sub_26618AA00();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v10 + 16);
  v36 = a1;
  v35(v12, a1, v9);
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v14 = sub_26618A9F0();
  LOBYTE(a2) = (*(v13 + 48))(v14);

  if (a2)
  {
    v29 = v10;
    v15 = sub_26618A9A0();
    v16 = *(v15 + 16);
    if (v16)
    {
      v28 = v12;
      v40 = MEMORY[0x277D84F90];
      sub_26612A6A0(0, v16, 0);
      v17 = 0;
      v18 = v40;
      v34 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v33 = v15 + v34;
      v35 = (v38 + 8);
      v36 = v15;
      v31 = (v38 + 32);
      v32 = v38 + 16;
      v19 = v30;
      while (v17 < *(v15 + 16))
      {
        v20 = v9;
        v21 = a3;
        v22 = v37;
        v23 = *(v38 + 72);
        (*(v38 + 16))(v37, v33 + v23 * v17, v19);
        sub_266170C7C(v22, v39);
        (*v35)(v22, v19);
        v40 = v18;
        v25 = *(v18 + 16);
        v24 = *(v18 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_26612A6A0(v24 > 1, v25 + 1, 1);
          v18 = v40;
        }

        ++v17;
        *(v18 + 16) = v25 + 1;
        (*v31)(v18 + v34 + v25 * v23, v39, v19);
        a3 = v21;
        v9 = v20;
        v15 = v36;
        if (v16 == v17)
        {

          v12 = v28;
          v27 = v29;
          goto LABEL_11;
        }
      }

      __break(1u);
      (*v35)(v15, v19);

      __break(1u);
    }

    else
    {

      v27 = v29;
LABEL_11:
      sub_26618A9B0();
      return (*(v27 + 32))(a3, v12, v9);
    }
  }

  else
  {
    (*(v10 + 8))(v12, v9);
    return (v35)(a3, v36, v9);
  }

  return result;
}

void AppLaunchDataModels.AppResultModel.getCardSections()()
{
  OUTLINED_FUNCTION_6_0();
  v1 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v5 = OUTLINED_FUNCTION_101();
  type metadata accessor for AppLaunchDataModels.AppResultModel(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBD0, &qword_266194BE0);
  sub_26618ABB0();
  v6 = 0;
  v7 = v37;
  v8 = v37 + 40;
  v33 = v37 + 40;
  v9 = *(v37 + 16);
  v36 = (v3 + 16);
  v38 = MEMORY[0x277D84F90];
  v34 = v7;
  v35 = (v3 + 8);
LABEL_2:
  for (i = v8 + 16 * v6; ; i += 16)
  {
    if (v9 == v6)
    {

      OUTLINED_FUNCTION_7_1();
      return;
    }

    if (v6 >= *(v7 + 16))
    {
      break;
    }

    v11 = objc_allocWithZone(MEMORY[0x277D4C730]);
    v12 = OUTLINED_FUNCTION_87_0();
    sub_2660C924C(v12, v13);
    v14 = OUTLINED_FUNCTION_87_0();
    sub_2660C924C(v14, v15);
    v16 = OUTLINED_FUNCTION_87_0();
    v18 = sub_266173074(v16, v17);
    if (v18)
    {
      v19 = v18;
      v20 = [objc_allocWithZone(MEMORY[0x277D4C238]) initWithProtobuf_];

      v21 = OUTLINED_FUNCTION_87_0();
      v23 = sub_2660C55C0(v21, v22);
      if (v20)
      {
        MEMORY[0x26677BD40](v23);
        v32 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v32 >> 1)
        {
          OUTLINED_FUNCTION_38_2(v32);
          sub_26618C9D0();
        }

        ++v6;
        sub_26618C9F0();
        v8 = v33;
        goto LABEL_2;
      }
    }

    else
    {
      if (qword_2814B2C38 != -1)
      {
        OUTLINED_FUNCTION_4_21();
        swift_once();
      }

      v24 = __swift_project_value_buffer(v1, qword_2814B4A80);
      (*v36)(v0, v24, v1);
      v25 = sub_26618C690();
      v26 = sub_26618CAB0();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_6_2();
        *v27 = 0;
        _os_log_impl(&dword_2660B7000, v25, v26, "AppLaunchDataModels: failed to decode sf card pb data", v27, 2u);
        v7 = v34;
        OUTLINED_FUNCTION_10_2();
        MEMORY[0x26677CC30]();

        v28 = OUTLINED_FUNCTION_87_0();
        sub_2660C55C0(v28, v29);
      }

      else
      {
        v30 = OUTLINED_FUNCTION_87_0();
        sub_2660C55C0(v30, v31);
      }

      (*v35)(v0, v1);
    }

    ++v6;
  }

  __break(1u);
}

uint64_t sub_26616CFA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496D616461 && a2 == 0xE600000000000000;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (sub_26618D000() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7463655364726163 && a2 == 0xEF617461446E6F69)
    {

      return 2;
    }

    else
    {
      v8 = sub_26618D000();

      if (v8)
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

uint64_t sub_26616D0BC(char a1)
{
  if (!a1)
  {
    return 0x64496D616461;
  }

  if (a1 == 1)
  {
    return 0x6449656C646E7562;
  }

  return 0x7463655364726163;
}

uint64_t sub_26616D124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26616CFA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26616D14C(uint64_t a1)
{
  v2 = sub_2661731B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26616D188(uint64_t a1)
{
  v2 = sub_2661731B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static AppLaunchDataModels.AppResultModel.__derived_struct_equals(_:_:)()
{
  OUTLINED_FUNCTION_70_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3D8, qword_266192200);
  sub_2661730E8();
  OUTLINED_FUNCTION_81_1();
  if ((sub_26618ABD0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AppLaunchDataModels.AppResultModel(0);
  if ((OUTLINED_FUNCTION_138() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBC8, &qword_266194BD8);
  sub_2661736BC(&unk_28005CBE0);
  OUTLINED_FUNCTION_56_2();

  return sub_26618ABD0();
}

void AppLaunchDataModels.AppResultModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_20_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBF0, &qword_266194BE8);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_8_16();
  sub_2661731B8();
  OUTLINED_FUNCTION_23_8(&type metadata for AppLaunchDataModels.AppResultModel.CodingKeys);
  v32[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC00, &qword_266194BF0);
  v19 = sub_26617320C();
  OUTLINED_FUNCTION_13_9(v19);
  if (!v16)
  {
    v20 = *(type metadata accessor for AppLaunchDataModels.AppResultModel(0) + 20);
    OUTLINED_FUNCTION_35_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
    OUTLINED_FUNCTION_1_17();
    v22 = sub_26616B098(v21);
    OUTLINED_FUNCTION_15_9(v17 + v20, &v32[1], v23, v24, v22);
    OUTLINED_FUNCTION_33();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBD0, &qword_266194BE0);
    OUTLINED_FUNCTION_1_17();
    sub_266173390(v25);
    v26 = OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_15_9(v26, v32, v27, v28, v29);
  }

  v30 = OUTLINED_FUNCTION_33_3();
  v31(v30);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_140();
}

uint64_t AppLaunchDataModels.AppResultModel.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC00, &qword_266194BF0);
  sub_266173508();
  OUTLINED_FUNCTION_41_5();
  sub_26618C870();
  type metadata accessor for AppLaunchDataModels.AppResultModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  sub_26616AEEC();
  OUTLINED_FUNCTION_84_0();
  sub_26618C870();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBD0, &qword_266194BE0);
  sub_266173608();
  OUTLINED_FUNCTION_41_5();
  return sub_26618C870();
}

uint64_t AppLaunchDataModels.AppResultModel.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_122(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC00, &qword_266194BF0);
  sub_266173508();
  sub_26618C870();
  type metadata accessor for AppLaunchDataModels.AppResultModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  v1 = sub_26616AEEC();
  OUTLINED_FUNCTION_38_4(v1, v2, v3, v4, v5, v6, v7, v8, v18, v20);
  sub_26618C870();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBD0, &qword_266194BE0);
  v9 = sub_266173608();
  OUTLINED_FUNCTION_38_4(v9, v10, v11, v12, v13, v14, v15, v16, v19, v21);
  sub_26618C870();
  return sub_26618D0C0();
}

void AppLaunchDataModels.AppResultModel.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v6 = v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBD0, &qword_266194BE0);
  OUTLINED_FUNCTION_2_2();
  v22 = v7;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_46();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_2_2();
  v24 = v9;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_93();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC00, &qword_266194BF0);
  OUTLINED_FUNCTION_2_2();
  v27 = v12;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC70, &qword_266194BF8);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v14);
  v25 = type metadata accessor for AppLaunchDataModels.AppResultModel(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_72_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3D8, qword_266192200);
  sub_26618AB90();
  OUTLINED_FUNCTION_35(v6, v6[3]);
  sub_2661731B8();
  sub_26618D0E0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
    v16 = OUTLINED_FUNCTION_131();
    v17(v16, v11);
  }

  else
  {
    sub_266173784();
    sub_26618CF30();
    (*(v27 + 40))(v3, v4);
    OUTLINED_FUNCTION_0_23();
    sub_26616B098(v18);
    sub_26618CF30();
    (*(v24 + 32))(v3 + *(v25 + 20), v1, v26);
    OUTLINED_FUNCTION_0_23();
    sub_266173390(v19);
    sub_26618CF30();
    v20 = OUTLINED_FUNCTION_25_11();
    v21(v20);
    (*(v22 + 32))(v3 + *(v25 + 24), v2, v23);
    OUTLINED_FUNCTION_5_16();
    sub_26616B4A0();
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_2_21();
    sub_26616B4F8();
  }

  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_39();
}

uint64_t sub_26616DA78(uint64_t a1)
{
  sub_26618D090();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC00, &qword_266194BF0);
  sub_266173508();
  sub_26618C870();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  sub_26616AEEC();
  sub_26618C870();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBD0, &qword_266194BE0);
  sub_266173608();
  sub_26618C870();
  return sub_26618D0C0();
}

uint64_t _s20SiriAppLaunchIntents0bC10DataModelsO0B0V4nameSSvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  sub_26618ABB0();
  return v1;
}

uint64_t _s20SiriAppLaunchIntents0bC10DataModelsO0B0V4nameSSvs_0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_127(v1, v2, v3, v4, v5, v6, v7, v8, a1);
  return sub_26618ABC0();
}

uint64_t (*AppLaunchDataModels.AppResultSashModel.text.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_28_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_49_3();
  *(v0 + 32) = sub_26618ABA0();
  return sub_2661773C0;
}

uint64_t (*AppLaunchDataModels.AppResultSashModel.marketplaceId.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  type metadata accessor for AppLaunchDataModels.AppResultSashModel(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

uint64_t _s20SiriAppLaunchIntents0bC10DataModelsO0B0V14actionProperty10SnippetKit06ActionH0VvpfP_0()
{
  sub_26618AB50();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_4();
  v2 = OUTLINED_FUNCTION_11_8(v1);
  v3(v2);
  sub_26618AB90();
  v4 = OUTLINED_FUNCTION_57_3();
  return v5(v4);
}

uint64_t (*AppLaunchDataModels.AppResultSashModel.action.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  type metadata accessor for AppLaunchDataModels.AppResultSashModel(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

void sub_26616DE6C()
{
  OUTLINED_FUNCTION_6_0();
  v45 = v3;
  v46 = v4;
  v40 = v5;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_70_2();
  sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v42 = v11;
  v43 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_40_6();
  v12 = sub_26618AB50();
  OUTLINED_FUNCTION_2_2();
  v41 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_103();
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v18 = type metadata accessor for AppLaunchDataModels.AppResultSashModel(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_72_2();
  v44 = v1;
  v20 = sub_26616E300(v1, v0, v9, v7);
  v21 = v40;
  v39 = v17;
  v42 = v12;
  v43 = v2;
  v22 = v45;
  v47 = v20;
  v48 = v23;
  sub_26618AB90();
  v24 = v44;
  v47 = v44;
  v48 = v0;

  sub_26618AB90();
  v25 = v24 == 0xD000000000000012 && 0x8000000266199A10 == v0;
  if (v25 || (sub_26618D000() & 1) != 0)
  {

    v26 = static AppSearchCommands.searchAppStoreAceCommand(appName:)(v21, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_26618E190;
    v28 = sub_26618AB80();
    v29 = MEMORY[0x277D63778];
    *(v27 + 56) = v28;
    *(v27 + 64) = v29;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v27 + 32));
    *boxed_opaque_existential_0 = v26;
    *(boxed_opaque_existential_0 + 8) = 0;
    (*(*(v28 - 8) + 104))();
    v31 = v39;
    sub_26618AB60();
  }

  else
  {
    v31 = v39;
    static AppSearchCommands.searchMarketplaceActionProperty(appName:marketplace:)(v21, v22, v44, v0);
  }

  v33 = v41;
  v32 = v42;
  v34 = v43;

  (*(v33 + 16))(v34, v31, v32);
  sub_26618AB90();
  v35 = OUTLINED_FUNCTION_110();
  v36(v35);
  v37 = v46;
  sub_26617449C();
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v18);
  OUTLINED_FUNCTION_7_1();
}

uint64_t sub_26616E300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_26618C6B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26618B810();
  type metadata accessor for LocUtil();
  inited = swift_initStackObject();
  sub_2660CD484(&v20, inited + 16);
  sub_26617CA00(0x45524F4D5F454553, 0xE800000000000000);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4B0, &qword_266196770);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26618E190;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_2661120AC();
    *(v12 + 32) = a3;
    *(v12 + 40) = a4;

    v6 = sub_26618C8C0();

    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 16));
  }

  else
  {
    if (qword_2814B2C38 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v6, qword_2814B4A80);
    (*(v7 + 16))(v9, v13, v6);
    v14 = sub_26618C690();
    v15 = sub_26618CAB0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2660B7000, v14, v15, "AppResultSashModel.getSeeMoreText unable to get localized system text for snippet", v16, 2u);
      MEMORY[0x26677CC30](v16, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    sub_2660D3004();
    swift_allocError();
    *v17 = 7;
    swift_willThrow();
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 16));
  }

  return v6;
}

uint64_t sub_26616E5D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C7074656B72616DLL && a2 == 0xED00006449656361;
    if (v6 || (sub_26618D000() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26618D000();

      if (v8)
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

uint64_t sub_26616E6E4(char a1)
{
  if (!a1)
  {
    return 1954047348;
  }

  if (a1 == 1)
  {
    return 0x6C7074656B72616DLL;
  }

  return 0x6E6F69746361;
}

uint64_t sub_26616E744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26616E5D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26616E76C(uint64_t a1)
{
  v2 = sub_266173830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26616E7A8(uint64_t a1)
{
  v2 = sub_266173830();

  return MEMORY[0x2821FE720](a1, v2);
}

void AppLaunchDataModels.AppResultSashModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_38();
  a18 = v21;
  a19 = v22;
  OUTLINED_FUNCTION_20_15();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC88, &qword_266194C00);
  OUTLINED_FUNCTION_2_2();
  v25 = v24;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_8_16();
  sub_266173830();
  OUTLINED_FUNCTION_23_8(&type metadata for AppLaunchDataModels.AppResultSashModel.CodingKeys);
  BYTE7(a10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_1_17();
  sub_26616B098(v27);
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_78_0(v28, v29, v30, v31, v32);
  if (!v19)
  {
    type metadata accessor for AppLaunchDataModels.AppResultSashModel(0);
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_24_7();
    OUTLINED_FUNCTION_78_0(v33, v34, v35, v36, v37);
    OUTLINED_FUNCTION_33();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
    OUTLINED_FUNCTION_1_17();
    sub_26616B100(v38);
    v39 = OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_15_9(v39, &a10 + 5, v40, v41, v42);
  }

  (*(v25 + 8))(v20, v23);
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_39();
}

void AppLaunchDataModels.AppResultSashModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_38();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_125(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_61_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC98, &qword_266194C08);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_94();
  type metadata accessor for AppLaunchDataModels.AppResultSashModel(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_93();
  v33 = OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_35(v33, v34);
  v35 = sub_266173830();
  OUTLINED_FUNCTION_115(&type metadata for AppLaunchDataModels.AppResultSashModel.CodingKeys, v36, v35);
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    HIBYTE(a12) = 0;
    OUTLINED_FUNCTION_0_23();
    sub_26616B098(v37);
    OUTLINED_FUNCTION_112();
    OUTLINED_FUNCTION_22_9(v38, v39);
    v40 = OUTLINED_FUNCTION_91();
    v41(v40);
    OUTLINED_FUNCTION_35_5();
    OUTLINED_FUNCTION_22_9(v42, &a12);
    v43 = OUTLINED_FUNCTION_76_2();
    v44(v43);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_0_23();
    v46 = sub_26616B100(v45);
    OUTLINED_FUNCTION_69_2(v46);
    v47 = OUTLINED_FUNCTION_18_12();
    v48(v47);
    v49 = OUTLINED_FUNCTION_74_1();
    v50(v49);
    sub_26616B4A0();
    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_26616B4F8();
  }

  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_39();
}

uint64_t AppLaunchDataModels.AppResultWrapperModel.results.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CCA0, &qword_266194C18);
  sub_26618ABB0();
  return v1;
}

uint64_t (*AppLaunchDataModels.AppResultWrapperModel.results.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_28_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CCA0, &qword_266194C18);
  OUTLINED_FUNCTION_49_3();
  *(v0 + 32) = sub_26618ABA0();
  return sub_2661773C0;
}

void *sub_26616EE80(void (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return sub_26618ABB0();
}

uint64_t AppLaunchDataModels.AppResultWrapperModel.seeMoreSash.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C1E8, &qword_266192910);
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_84_0();
  sub_266173FBC();
  type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C208, &unk_266192930);
  OUTLINED_FUNCTION_128();
  sub_26618ABC0();
  OUTLINED_FUNCTION_88_0();
  return sub_2660BF79C(v3, v4, v5);
}

uint64_t (*AppLaunchDataModels.AppResultWrapperModel.seeMoreSash.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C208, &unk_266192930);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

void sub_26616F014(uint64_t a1, uint64_t a2)
{
  sub_26618AA00();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_93();
  (*(v6 + 16))(v2, a1);
  sub_2660C5864(a2, v7);
  sub_26616C38C();
}

void AppLaunchDataModels.AppResultWrapperModel.getCard()()
{
  OUTLINED_FUNCTION_6_0();
  v2 = type metadata accessor for AppLaunchDataModels.AppResultModel(0);
  OUTLINED_FUNCTION_2_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_101();
  v6 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_61_2();
  MEMORY[0x28223BE20](v10);
  v12 = (&v48 - v11);
  if (qword_2814B2C38 != -1)
  {
LABEL_26:
    OUTLINED_FUNCTION_4_21();
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_2814B4A80);
  v14 = *(v8 + 16);
  v62 = v8 + 16;
  v63 = v13;
  v58 = v6;
  v61 = v14;
  (v14)(v12);
  v15 = sub_26618C690();
  v16 = sub_26618CA90();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_6_2();
    *v17 = 0;
    _os_log_impl(&dword_2660B7000, v15, v16, "AppSearchResultWrapperModel: returning SFCard with results", v17, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30](v18);
  }

  v20 = *(v8 + 8);
  v19 = v8 + 8;
  v60 = v20;
  v20(v12, v58);
  v21 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CCA0, &qword_266194C18);
  sub_26618ABB0();
  v22 = v65;
  v65 = MEMORY[0x277D84F90];
  v54 = *(v22 + 16);
  if (v54)
  {
    v48 = v22;
    v49 = v21;
    v59 = v19;
    v6 = 0;
    v53 = v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v23 = *(v2 + 24);
    v51 = *(v4 + 72);
    v52 = v23;
    v2 = v58;
    v50 = v0;
    while (2)
    {
      v56 = v6;
      OUTLINED_FUNCTION_5_16();
      sub_26616B4A0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CBD0, &qword_266194BE0);
      v12 = (v0 + v52);
      sub_26618ABB0();
      v8 = 0;
      v4 = v64;
      v24 = v64 + 40;
      v64 = MEMORY[0x277D84F90];
      v0 = *(v4 + 16);
      v57 = MEMORY[0x277D84F90];
      v55 = v4 + 40;
LABEL_7:
      v25 = v24 + 16 * v8;
      while (v0 != v8)
      {
        if (v8 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v6 = *(v25 - 8);
        v26 = objc_allocWithZone(MEMORY[0x277D4C730]);
        v27 = OUTLINED_FUNCTION_85_0();
        sub_2660C924C(v27, v28);
        v29 = OUTLINED_FUNCTION_85_0();
        sub_2660C924C(v29, v30);
        v31 = OUTLINED_FUNCTION_85_0();
        v33 = sub_266173074(v31, v32);
        if (v33)
        {
          v12 = v33;
          v34 = objc_allocWithZone(MEMORY[0x277D4C238]);
          v35 = [v34 initWithProtobuf_];

          v36 = OUTLINED_FUNCTION_85_0();
          v38 = sub_2660C55C0(v36, v37);
          if (v35)
          {
            v12 = &v64;
            MEMORY[0x26677BD40](v38);
            v6 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v46 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (v6 >= v46 >> 1)
            {
              OUTLINED_FUNCTION_38_2(v46);
              sub_26618C9D0();
            }

            ++v8;
            sub_26618C9F0();
            v57 = v64;
            v24 = v55;
            goto LABEL_7;
          }
        }

        else
        {
          v61(v1, v63, v2);
          v12 = sub_26618C690();
          v39 = sub_26618CAB0();
          if (os_log_type_enabled(v12, v39))
          {
            v40 = OUTLINED_FUNCTION_6_2();
            *v40 = 0;
            _os_log_impl(&dword_2660B7000, v12, v39, "AppLaunchDataModels: failed to decode sf card pb data", v40, 2u);
            v2 = v58;
            OUTLINED_FUNCTION_10_2();
            MEMORY[0x26677CC30](v41);

            v42 = OUTLINED_FUNCTION_85_0();
            sub_2660C55C0(v42, v43);
          }

          else
          {
            v44 = OUTLINED_FUNCTION_85_0();
            sub_2660C55C0(v44, v45);
          }

          v60(v1, v2);
        }

        v25 += 16;
        ++v8;
      }

      v6 = v56 + 1;
      OUTLINED_FUNCTION_2_21();
      v0 = v50;
      sub_26616B4F8();
      sub_266167194();
      if (v6 != v54)
      {
        continue;
      }

      break;
    }

    v47 = v65;
    v21 = v49;
  }

  else
  {

    v47 = MEMORY[0x277D84F90];
  }

  sub_2661739F4(v47, v21);
  OUTLINED_FUNCTION_7_1();
}

void AppLaunchDataModels.AppResultWrapperModel.getAdamIds()()
{
  OUTLINED_FUNCTION_6_0();
  v0 = type metadata accessor for AppLaunchDataModels.AppResultModel(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CCA0, &qword_266194C18);
  sub_26618ABB0();
  v2 = *(v11 + 16);
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    sub_26612A450(0, v2, 0);
    v3 = v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v4 = *(v1 + 72);
    do
    {
      OUTLINED_FUNCTION_5_16();
      sub_26616B4A0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC00, &qword_266194BF0);
      sub_26618ABB0();
      if (v12)
      {
        v5 = v11;
      }

      else
      {
        v5 = 12589;
      }

      if (v12)
      {
        v6 = v12;
      }

      else
      {
        v6 = 0xE200000000000000;
      }

      sub_26616B4F8();
      v8 = *(v13 + 16);
      v7 = *(v13 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = OUTLINED_FUNCTION_38_2(v7);
        sub_26612A450(v10, v8 + 1, 1);
      }

      *(v13 + 16) = v8 + 1;
      v9 = v13 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v3 += v4;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_7_1();
}

uint64_t sub_26616F790(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746C75736572 && a2 == 0xE700000000000000;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5365726F4D656573 && a2 == 0xEB00000000687361)
  {

    return 1;
  }

  else
  {
    v7 = sub_26618D000();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26616F85C(char a1)
{
  if (a1)
  {
    return 0x5365726F4D656573;
  }

  else
  {
    return 0x73746C75736572;
  }
}

uint64_t sub_26616F8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26616F790(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26616F8CC(uint64_t a1)
{
  v2 = sub_266173A68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26616F908(uint64_t a1)
{
  v2 = sub_266173A68();

  return MEMORY[0x2821FE720](a1, v2);
}

void AppLaunchDataModels.AppResultWrapperModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_20_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CCA8, &qword_266194C20);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_8_16();
  sub_266173A68();
  OUTLINED_FUNCTION_23_8(&type metadata for AppLaunchDataModels.AppResultWrapperModel.CodingKeys);
  v25[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CCA0, &qword_266194C18);
  v18 = sub_266173ABC();
  OUTLINED_FUNCTION_13_9(v18);
  if (!v16)
  {
    type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(0);
    OUTLINED_FUNCTION_35_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C208, &unk_266192930);
    sub_266173CB0();
    v19 = OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_15_9(v19, v25, v20, v21, v22);
  }

  v23 = OUTLINED_FUNCTION_33_3();
  v24(v23);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_140();
}

void AppLaunchDataModels.AppResultWrapperModel.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v41 = v0;
  v4 = v3;
  v34 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C208, &unk_266192930);
  OUTLINED_FUNCTION_2_2();
  v42 = v7;
  v43 = v6;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_107(v9);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CCA0, &qword_266194C18);
  OUTLINED_FUNCTION_2_2();
  v35 = v10;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_30_7();
  v39 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD08, &qword_266194C28);
  OUTLINED_FUNCTION_2_2();
  v36 = v14;
  v37 = v13;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C1E8, &qword_266192910);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_98();
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  v20 = type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(0);
  v21 = OUTLINED_FUNCTION_3_0(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_72_2();
  v22 = type metadata accessor for AppLaunchDataModels.AppResultSashModel(0);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v22);
  sub_266173FBC();
  sub_26618AB90();
  sub_2660BF79C(v19, &qword_28005C1E8, &qword_266192910);
  v23 = OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_35(v23, v24);
  v25 = sub_266173A68();
  OUTLINED_FUNCTION_120(&type metadata for AppLaunchDataModels.AppResultWrapperModel.CodingKeys, v26, v25);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
    v29 = OUTLINED_FUNCTION_132();
    v30(v29);
  }

  else
  {
    v27 = v35;
    v28 = v38;
    sub_266173EA4();
    OUTLINED_FUNCTION_50_4();
    OUTLINED_FUNCTION_106();
    sub_26618CF30();
    (*(v27 + 32))(v1, v39, v40);
    OUTLINED_FUNCTION_35_5();
    sub_266173F30();
    OUTLINED_FUNCTION_60_4();
    sub_26618CF30();
    OUTLINED_FUNCTION_32_5();
    v31(v2, v28);
    v32 = OUTLINED_FUNCTION_108();
    v33(v32);
    sub_26616B4A0();
    __swift_destroy_boxed_opaque_existential_1(v4);
    sub_26616B4F8();
  }

  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_39();
}

uint64_t property wrapper backing initializer of AppLaunchDataModels.AppOffloadedModel.result()
{
  type metadata accessor for AppLaunchDataModels.AppResultModel(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_41_5();
  sub_26616B4A0();
  sub_26618AB90();
  OUTLINED_FUNCTION_2_21();
  return sub_26616B4F8();
}

void *AppLaunchDataModels.AppOffloadedModel.result.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD20, &unk_266194C30);

  return sub_26618ABB0();
}

uint64_t AppLaunchDataModels.AppOffloadedModel.result.setter()
{
  v0 = OUTLINED_FUNCTION_67_1();
  v1 = type metadata accessor for AppLaunchDataModels.AppResultModel(v0);
  v2 = OUTLINED_FUNCTION_3_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5_16();
  sub_26616B4A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD20, &unk_266194C30);
  OUTLINED_FUNCTION_49_3();
  sub_26618ABC0();
  OUTLINED_FUNCTION_2_21();
  return sub_26616B4F8();
}

uint64_t (*AppLaunchDataModels.AppOffloadedModel.result.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_28_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD20, &unk_266194C30);
  OUTLINED_FUNCTION_49_3();
  *(v0 + 32) = sub_26618ABA0();
  return sub_2661773C0;
}

uint64_t sub_266170058(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_93();
  sub_266173FBC();
  sub_26618AB90();
  return sub_2660BF79C(a1, a2, a3);
}

uint64_t AppLaunchDataModels.AppOffloadedModel.confirmReinstallAction.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4D0, &qword_266191AA8);
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_84_0();
  sub_266173FBC();
  type metadata accessor for AppLaunchDataModels.AppOffloadedModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD28, &qword_266194C40);
  OUTLINED_FUNCTION_128();
  sub_26618ABC0();
  OUTLINED_FUNCTION_88_0();
  return sub_2660BF79C(v3, v4, v5);
}

uint64_t (*AppLaunchDataModels.AppOffloadedModel.confirmReinstallAction.modify())()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_12_13(v2);
  type metadata accessor for AppLaunchDataModels.AppOffloadedModel(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD28, &qword_266194C40);
  *(v0 + 32) = OUTLINED_FUNCTION_29_4();
  return sub_2661773C0;
}

void sub_266170260(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

id AppLaunchDataModels.AppOffloadedModel.getCard()()
{
  v0 = type metadata accessor for AppLaunchDataModels.AppResultModel(0);
  v1 = OUTLINED_FUNCTION_3_0(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_101();
  v2 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v8 = v7 - v6;
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_4_21();
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_2814B4A80);
  (*(v4 + 16))(v8, v9, v2);
  v10 = sub_26618C690();
  v11 = sub_26618CA90();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_6_2();
    *v12 = 0;
    _os_log_impl(&dword_2660B7000, v10, v11, "AppOffloadedModel: returning SFCard", v12, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  (*(v4 + 8))(v8, v2);
  v13 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD20, &unk_266194C30);
  sub_26618ABB0();
  AppLaunchDataModels.AppResultModel.getCardSections()();
  OUTLINED_FUNCTION_2_21();
  sub_26616B4F8();
  v14 = OUTLINED_FUNCTION_41_5();
  sub_2661739F4(v14, v15);
  return v13;
}

Swift::String __swiftcall AppLaunchDataModels.AppOffloadedModel.getAdamId()()
{
  v0 = type metadata accessor for AppLaunchDataModels.AppResultModel(0);
  v1 = OUTLINED_FUNCTION_3_0(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD20, &unk_266194C30);
  sub_26618ABB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CC00, &qword_266194BF0);
  sub_26618ABB0();
  OUTLINED_FUNCTION_2_21();
  sub_26616B4F8();
  if (v6)
  {
    v2 = v5;
  }

  else
  {
    v2 = 12589;
  }

  if (v6)
  {
    v3 = v6;
  }

  else
  {
    v3 = 0xE200000000000000;
  }

  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_266170560(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C75736572 && a2 == 0xE600000000000000;
  if (v4 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000026619A210 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_26618D000();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26617062C(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_122(a1);
  MEMORY[0x26677C460](v1 & 1);
  return sub_26618D0C0();
}

uint64_t sub_26617066C(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x746C75736572;
  }
}

uint64_t sub_2661706AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266170560(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2661706D4(uint64_t a1)
{
  v2 = sub_266174034();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266170710(uint64_t a1)
{
  v2 = sub_266174034();

  return MEMORY[0x2821FE720](a1, v2);
}

void AppLaunchDataModels.AppOffloadedModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_20_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD30, &qword_266194C48);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_8_16();
  sub_266174034();
  OUTLINED_FUNCTION_23_8(&type metadata for AppLaunchDataModels.AppOffloadedModel.CodingKeys);
  v26[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD20, &unk_266194C30);
  OUTLINED_FUNCTION_1_17();
  v19 = sub_266174088(v18);
  OUTLINED_FUNCTION_13_9(v19);
  if (!v16)
  {
    type metadata accessor for AppLaunchDataModels.AppOffloadedModel(0);
    OUTLINED_FUNCTION_35_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD28, &qword_266194C40);
    sub_266174154();
    v20 = OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_15_9(v20, v26, v21, v22, v23);
  }

  v24 = OUTLINED_FUNCTION_33_3();
  v25(v24);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_140();
}

void AppLaunchDataModels.AppOffloadedModel.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD28, &qword_266194C40);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_107(v7);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD20, &unk_266194C30);
  OUTLINED_FUNCTION_2_2();
  v27 = v8;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_7();
  v28 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD60, &qword_266194C50);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4D0, &qword_266191AA8);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_98();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_102();
  v14 = type metadata accessor for AppLaunchDataModels.AppOffloadedModel(0);
  v15 = OUTLINED_FUNCTION_3_0(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_72_2();
  v16 = sub_26618AB50();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v16);
  sub_266173FBC();
  sub_26618AB90();
  sub_2660BF79C(v1, &qword_28005C4D0, &qword_266191AA8);
  v17 = OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_35(v17, v18);
  v19 = sub_266174034();
  OUTLINED_FUNCTION_120(&type metadata for AppLaunchDataModels.AppOffloadedModel.CodingKeys, v20, v19);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
    v22 = OUTLINED_FUNCTION_132();
    v23(v22);
  }

  else
  {
    OUTLINED_FUNCTION_0_23();
    sub_266174088(v21);
    OUTLINED_FUNCTION_50_4();
    OUTLINED_FUNCTION_106();
    sub_26618CF30();
    (*(v27 + 32))(v2, v28, v29);
    OUTLINED_FUNCTION_35_5();
    sub_266174348();
    OUTLINED_FUNCTION_60_4();
    sub_26618CF30();
    OUTLINED_FUNCTION_32_5();
    v24(v3);
    v25 = OUTLINED_FUNCTION_108();
    v26(v25);
    sub_26616B4A0();
    __swift_destroy_boxed_opaque_existential_1(v5);
    sub_26616B4F8();
  }

  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_39();
}

uint64_t sub_266170C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_26618C6B0();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26618A7D0();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CFA8, qword_266196778);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = v42 - v8;
  v48 = sub_26618A770();
  v9 = *(v48 - 8);
  v10 = MEMORY[0x28223BE20](v48);
  v42[1] = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v42 - v12;
  v14 = sub_26618AA90();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26618A970();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  sub_26618A7A0();
  sub_26618A950();
  (*(v19 + 8))(v21, v18);
  sub_26618AA60();
  (*(v15 + 8))(v17, v14);
  v22 = v47;
  sub_26618A750();
  v23 = v13;
  v24 = v22;
  (*(v9 + 8))(v23, v48);
  v25 = sub_26618A740();
  if (__swift_getEnumTagSinglePayload(v22, 1, v25) == 1)
  {
    sub_2660BF79C(v22, &qword_28005CFA8, qword_266196778);
    return (*(v50 + 16))(v52, v49, v51);
  }

  v26 = *(v25 - 8);
  v27 = (*(v26 + 88))(v24, v25);
  v28 = *MEMORY[0x277D38E90];
  (*(v26 + 8))(v24, v25);
  if (v27 != v28)
  {
    return (*(v50 + 16))(v52, v49, v51);
  }

  v29 = v50;
  v30 = v43;
  v31 = v51;
  (*(v50 + 16))(v43, v49, v51);
  sub_26618A760();
  v32 = sub_26618A790();
  v33 = sub_26618A940();
  sub_26618AA70();
  v33(v53, 0);
  v32(v54, 0);
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v34 = v46;
  v35 = __swift_project_value_buffer(v46, qword_2814B4A80);
  v37 = v44;
  v36 = v45;
  (*(v45 + 16))(v44, v35, v34);
  v38 = sub_26618C690();
  v39 = sub_26618CA90();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2660B7000, v38, v39, "InstallAppFlow.filterPegasusAppResults redacted button", v40, 2u);
    MEMORY[0x26677CC30](v40, -1, -1);
  }

  (*(v36 + 8))(v37, v34);
  return (*(v29 + 32))(v52, v30, v31);
}

uint64_t sub_2661712AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x800000026619A230 == a2;
  if (v3 || (sub_26618D000() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000026619A250 == a2;
    if (v6 || (sub_26618D000() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x800000026619A270 == a2;
      if (v7 || (sub_26618D000() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x800000026619A290 == a2;
        if (v8 || (sub_26618D000() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x800000026619A2B0 == a2;
          if (v9 || (sub_26618D000() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000010 && 0x800000026619A2D0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_26618D000();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2661714A4(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_122(a1);
  MEMORY[0x26677C460](v1);
  return sub_26618D0C0();
}

unint64_t sub_2661714E4(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
    case 5:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26617158C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26618D000();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2661715FC(uint64_t a1)
{
  OUTLINED_FUNCTION_122(a1);
  MEMORY[0x26677C460](0);
  return sub_26618D0C0();
}

uint64_t sub_26617163C(uint64_t a1)
{
  v2 = sub_266174644();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266171678(uint64_t a1)
{
  v2 = sub_266174644();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2661716B4(uint64_t a1)
{
  v2 = sub_266174448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2661716F0(uint64_t a1)
{
  v2 = sub_266174448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26617172C(uint64_t a1)
{
  v2 = sub_2661744F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266171768(uint64_t a1)
{
  v2 = sub_2661744F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2661717A4(uint64_t a1)
{
  v2 = sub_2661745F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2661717E0(uint64_t a1)
{
  v2 = sub_2661745F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266171824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2661712AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26617184C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26617149C();
  *a1 = result;
  return result;
}

uint64_t sub_266171874(uint64_t a1)
{
  v2 = sub_2661743F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2661718B0(uint64_t a1)
{
  v2 = sub_2661743F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2661718EC(uint64_t a1)
{
  v2 = sub_266174548();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266171928(uint64_t a1)
{
  v2 = sub_266174548();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266171964(uint64_t a1)
{
  v2 = sub_26617459C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2661719A0(uint64_t a1)
{
  v2 = sub_26617459C();

  return MEMORY[0x2821FE720](a1, v2);
}

void AppLaunchDataModels.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_38();
  a25 = v28;
  a26 = v29;
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD78, &qword_266194C58);
  OUTLINED_FUNCTION_2_2();
  v117 = v32;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_30_7();
  v116 = v34;
  v35 = OUTLINED_FUNCTION_18_2();
  v115 = type metadata accessor for AppLaunchDataModels.AppOffloadedModel(v35);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD80, &qword_266194C60);
  OUTLINED_FUNCTION_2_2();
  v114 = v37;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_30_7();
  v39 = OUTLINED_FUNCTION_18_2();
  v113 = type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(v39);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD88, &qword_266194C68);
  OUTLINED_FUNCTION_2_2();
  v112 = v41;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_30_7();
  v43 = OUTLINED_FUNCTION_18_2();
  v111 = type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(v43);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1_4();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD90, &qword_266194C70);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_30_7();
  v46 = OUTLINED_FUNCTION_18_2();
  v109 = type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(v46);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_1_4();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CD98, &qword_266194C78);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_30_7();
  v49 = OUTLINED_FUNCTION_18_2();
  v107 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(v49);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_1_4();
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CDA0, &qword_266194C80);
  OUTLINED_FUNCTION_2_2();
  v105 = v51;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_46();
  v53 = type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_40_6();
  v55 = type metadata accessor for AppLaunchDataModels(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_93();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CDA8, &qword_266194C88);
  OUTLINED_FUNCTION_2_2();
  v118 = v58;
  v119 = v57;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_72_2();
  OUTLINED_FUNCTION_35(v31, v31[3]);
  sub_2661743F4();
  sub_26618D0F0();
  sub_26616B4A0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26617449C();
      a12 = 1;
      v88 = sub_2661745F0();
      OUTLINED_FUNCTION_17_12(&type metadata for AppLaunchDataModels.ButtonFallbackViewCodingKeys, &a12, v89, v90, v88);
      OUTLINED_FUNCTION_44_3();
      sub_26616AEA8(v91);
      v92 = OUTLINED_FUNCTION_111();
      OUTLINED_FUNCTION_124(v92, v93, v108, v107, v94);
      v95 = OUTLINED_FUNCTION_36_2();
      v96(v95);
      goto LABEL_8;
    case 2u:
      sub_26617449C();
      a13 = 2;
      v70 = sub_26617459C();
      OUTLINED_FUNCTION_17_12(&type metadata for AppLaunchDataModels.DeviceDisambiguationViewCodingKeys, &a13, v71, v72, v70);
      OUTLINED_FUNCTION_46_4();
      sub_26616AEA8(v73);
      v74 = OUTLINED_FUNCTION_111();
      OUTLINED_FUNCTION_124(v74, v75, v110, v109, v76);
      v77 = OUTLINED_FUNCTION_36_2();
      v78(v77);
      goto LABEL_8;
    case 3u:
      sub_26617449C();
      a14 = 3;
      v79 = sub_266174548();
      OUTLINED_FUNCTION_17_12(&type metadata for AppLaunchDataModels.ConfirmationViewCodingKeys, &a14, v80, v81, v79);
      OUTLINED_FUNCTION_45_4();
      sub_26616AEA8(v82);
      v83 = OUTLINED_FUNCTION_111();
      OUTLINED_FUNCTION_124(v83, v84, v112, v111, v85);
      v86 = OUTLINED_FUNCTION_36_2();
      v87(v86);
      goto LABEL_8;
    case 4u:
      sub_26617449C();
      a15 = 4;
      v61 = sub_2661744F4();
      OUTLINED_FUNCTION_17_12(&type metadata for AppLaunchDataModels.AppSearchResultViewCodingKeys, &a15, v62, v63, v61);
      OUTLINED_FUNCTION_47_6();
      sub_26616AEA8(v64);
      v65 = OUTLINED_FUNCTION_111();
      OUTLINED_FUNCTION_124(v65, v66, v114, v113, v67);
      v68 = OUTLINED_FUNCTION_36_2();
      v69(v68);
      goto LABEL_8;
    case 5u:
      sub_26617449C();
      a16 = 5;
      v97 = sub_266174448();
      OUTLINED_FUNCTION_17_12(&type metadata for AppLaunchDataModels.AppOffloadedViewCodingKeys, &a16, v98, v99, v97);
      OUTLINED_FUNCTION_43_3();
      sub_26616AEA8(v100);
      v101 = OUTLINED_FUNCTION_111();
      OUTLINED_FUNCTION_124(v101, v102, v117, v115, v103);
      OUTLINED_FUNCTION_32_5();
      v104(v116, v117);
LABEL_8:
      sub_26616B4F8();
      (*(v118 + 8))(v53, v55);
      break;
    default:
      sub_26617449C();
      sub_266174644();
      sub_26618CF50();
      OUTLINED_FUNCTION_48_4();
      sub_26616AEA8(v60);
      sub_26618CFA0();
      (*(v105 + 8))(v26, v106);
      OUTLINED_FUNCTION_42_7();
      sub_26616B4F8();
      (*(v118 + 8))(v27, v119);
      break;
  }

  OUTLINED_FUNCTION_39();
}

void AppLaunchDataModels.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_38();
  a25 = v29;
  a26 = v30;
  v161 = v26;
  v32 = v31;
  v155 = v33;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CE00, &qword_266194C90);
  OUTLINED_FUNCTION_2_2();
  v150 = v34;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_107(v36);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CE08, &qword_266194C98);
  OUTLINED_FUNCTION_2_2();
  v149 = v37;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_30_7();
  v154 = v39;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CE10, &qword_266194CA0);
  OUTLINED_FUNCTION_2_2();
  v148 = v40;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_30_7();
  v153 = v42;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CE18, &qword_266194CA8);
  OUTLINED_FUNCTION_2_2();
  v147 = v43;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_125(v45);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CE20, &qword_266194CB0);
  OUTLINED_FUNCTION_2_2();
  v146 = v46;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_30_7();
  v152 = v48;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CE28, &qword_266194CB8);
  OUTLINED_FUNCTION_2_2();
  v145 = v49;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_30_7();
  v151 = v51;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CE30, &qword_266194CC0);
  OUTLINED_FUNCTION_2_2();
  v156 = v52;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_46();
  v158 = type metadata accessor for AppLaunchDataModels(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_5_9();
  v57 = MEMORY[0x28223BE20](v56);
  v59 = &v132 - v58;
  v60 = MEMORY[0x28223BE20](v57);
  v62 = &v132 - v61;
  v63 = MEMORY[0x28223BE20](v60);
  v65 = &v132 - v64;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_61_2();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_102();
  v160 = v32;
  v67 = OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_35(v67, v68);
  sub_2661743F4();
  v69 = v161;
  sub_26618D0E0();
  if (v69)
  {
    goto LABEL_8;
  }

  v137 = v65;
  v135 = v62;
  v136 = v59;
  v138 = v27;
  v70 = v157;
  v161 = v28;
  v71 = sub_26618CF40();
  v72 = sub_2661739AC(v71, 0);
  if (v74 == v75 >> 1)
  {
LABEL_7:
    OUTLINED_FUNCTION_130();
    v87 = sub_26618CDC0();
    swift_allocError();
    v89 = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CE38, &qword_266194CC8);
    *v89 = v70;
    sub_26618CEE0();
    sub_26618CDB0();
    (*(*(v87 - 8) + 104))(v89, *MEMORY[0x277D84160], v87);
    swift_willThrow();
    swift_unknownObjectRelease();
    v90 = OUTLINED_FUNCTION_133();
    v91(v90);
LABEL_8:
    v92 = v160;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v92);
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_39();
    return;
  }

  v134 = 0;
  if (v74 < (v75 >> 1))
  {
    v133 = *(v73 + v74);
    sub_266174698(v74 + 1, v75 >> 1, v72, v73, v74, v75);
    v77 = v76;
    v79 = v78;
    swift_unknownObjectRelease();
    if (v77 == v79 >> 1)
    {
      switch(v133)
      {
        case 1:
          a12 = 1;
          sub_2661745F0();
          v95 = v159;
          OUTLINED_FUNCTION_55_4(&type metadata for AppLaunchDataModels.ButtonFallbackViewCodingKeys, &a12, v159);
          v99 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
          OUTLINED_FUNCTION_44_3();
          v101 = sub_26616AEA8(v100);
          OUTLINED_FUNCTION_123(v99, v102, v103, v104, v101);
          OUTLINED_FUNCTION_95();
          swift_unknownObjectRelease();
          v124 = OUTLINED_FUNCTION_131();
          v125(v124, v95);
          v126 = OUTLINED_FUNCTION_10_11();
          v127(v126);
          swift_storeEnumTagMultiPayload();
          v123 = v160;
          break;
        case 2:
          a13 = 2;
          sub_26617459C();
          OUTLINED_FUNCTION_55_4(&type metadata for AppLaunchDataModels.DeviceDisambiguationViewCodingKeys, &a13, v159);
          type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(0);
          OUTLINED_FUNCTION_46_4();
          sub_26616AEA8(v96);
          sub_26618CF30();
          OUTLINED_FUNCTION_95();
          swift_unknownObjectRelease();
          v111 = OUTLINED_FUNCTION_99();
          v112(v111);
          v113 = OUTLINED_FUNCTION_10_11();
          v114(v113);
          swift_storeEnumTagMultiPayload();
          goto LABEL_16;
        case 3:
          a14 = 3;
          sub_266174548();
          OUTLINED_FUNCTION_55_4(&type metadata for AppLaunchDataModels.ConfirmationViewCodingKeys, &a14, v159);
          v97 = OUTLINED_FUNCTION_130();
          type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(v97);
          OUTLINED_FUNCTION_45_4();
          sub_26616AEA8(v98);
          OUTLINED_FUNCTION_31_11();
          sub_26618CF30();
          OUTLINED_FUNCTION_95();
          swift_unknownObjectRelease();
          v115 = OUTLINED_FUNCTION_137();
          v116(v115);
          v117 = OUTLINED_FUNCTION_10_11();
          v118(v117);
          swift_storeEnumTagMultiPayload();
          v123 = v160;
          break;
        case 4:
          a15 = 4;
          sub_2661744F4();
          OUTLINED_FUNCTION_55_4(&type metadata for AppLaunchDataModels.AppSearchResultViewCodingKeys, &a15, v159);
          v93 = OUTLINED_FUNCTION_130();
          type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(v93);
          OUTLINED_FUNCTION_47_6();
          sub_26616AEA8(v94);
          OUTLINED_FUNCTION_126();
          sub_26618CF30();
          OUTLINED_FUNCTION_95();
          swift_unknownObjectRelease();
          v107 = OUTLINED_FUNCTION_99();
          v108(v107);
          v109 = OUTLINED_FUNCTION_10_11();
          v110(v109);
          goto LABEL_15;
        case 5:
          a16 = 5;
          sub_266174448();
          OUTLINED_FUNCTION_55_4(&type metadata for AppLaunchDataModels.AppOffloadedViewCodingKeys, &a16, v159);
          v105 = OUTLINED_FUNCTION_130();
          type metadata accessor for AppLaunchDataModels.AppOffloadedModel(v105);
          OUTLINED_FUNCTION_43_3();
          sub_26616AEA8(v106);
          OUTLINED_FUNCTION_126();
          sub_26618CF30();
          OUTLINED_FUNCTION_95();
          swift_unknownObjectRelease();
          v128 = OUTLINED_FUNCTION_99();
          v129(v128);
          v130 = OUTLINED_FUNCTION_10_11();
          v131(v130);
LABEL_15:
          swift_storeEnumTagMultiPayload();
LABEL_16:
          v123 = v160;
          break;
        default:
          a11 = 0;
          sub_266174644();
          v80 = v159;
          OUTLINED_FUNCTION_55_4(&type metadata for AppLaunchDataModels.AppDisambiguationViewCodingKeys, &a11, v159);
          v81 = type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(0);
          OUTLINED_FUNCTION_48_4();
          v83 = sub_26616AEA8(v82);
          OUTLINED_FUNCTION_123(v81, v84, v85, v86, v83);
          OUTLINED_FUNCTION_95();
          swift_unknownObjectRelease();
          v119 = OUTLINED_FUNCTION_131();
          v120(v119, v80);
          v121 = OUTLINED_FUNCTION_10_11();
          v122(v121);
          swift_storeEnumTagMultiPayload();
          v123 = v160;
          break;
      }

      sub_26617449C();
      sub_26617449C();
      v92 = v123;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

id sub_266173074(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_26618A520();
    sub_26617734C(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

unint64_t sub_2661730E8()
{
  result = qword_28005CBD8;
  if (!qword_28005CBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C3D8, qword_266192200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CBD8);
  }

  return result;
}

unint64_t sub_266173164()
{
  result = qword_28005CBE8;
  if (!qword_28005CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CBE8);
  }

  return result;
}

unint64_t sub_2661731B8()
{
  result = qword_28005CBF8;
  if (!qword_28005CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CBF8);
  }

  return result;
}

unint64_t sub_26617320C()
{
  result = qword_28005CC08;
  if (!qword_28005CC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CC00, &qword_266194BF0);
    sub_266173298();
    sub_266173314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CC08);
  }

  return result;
}

unint64_t sub_266173298()
{
  result = qword_28005CC10;
  if (!qword_28005CC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C3D8, qword_266192200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CC10);
  }

  return result;
}

unint64_t sub_266173314()
{
  result = qword_28005CC18;
  if (!qword_28005CC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C3D8, qword_266192200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CC18);
  }

  return result;
}

unint64_t sub_266173390(uint64_t a1)
{
  result = OUTLINED_FUNCTION_73_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CBD0, &qword_266194BE0);
    sub_2661736BC(&unk_28005CC28);
    sub_2661736BC(&unk_28005CC38);
    OUTLINED_FUNCTION_105();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_266173460()
{
  result = qword_28005CC30;
  if (!qword_28005CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CC30);
  }

  return result;
}

unint64_t sub_2661734B4()
{
  result = qword_28005CC40;
  if (!qword_28005CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CC40);
  }

  return result;
}

unint64_t sub_266173508()
{
  result = qword_28005CC48;
  if (!qword_28005CC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CC00, &qword_266194BF0);
    sub_26617358C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CC48);
  }

  return result;
}

unint64_t sub_26617358C()
{
  result = qword_28005CC50;
  if (!qword_28005CC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C3D8, qword_266192200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CC50);
  }

  return result;
}

unint64_t sub_266173608()
{
  result = qword_28005CC58;
  if (!qword_28005CC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CBD0, &qword_266194BE0);
    sub_2661736BC(&unk_28005CC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CC58);
  }

  return result;
}

unint64_t sub_2661736BC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_73_2(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CBC8, &qword_266194BD8);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_266173730()
{
  result = qword_28005CC68;
  if (!qword_28005CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CC68);
  }

  return result;
}

unint64_t sub_266173784()
{
  result = qword_28005CC78;
  if (!qword_28005CC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CC00, &qword_266194BF0);
    sub_266173298();
    sub_266173314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CC78);
  }

  return result;
}

unint64_t sub_266173830()
{
  result = qword_28005CC90;
  if (!qword_28005CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CC90);
  }

  return result;
}

void sub_2661738A4(uint64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    sub_266129840(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5);
    *v2 = v8;
  }
}

uint64_t sub_26617390C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_26618CCD0();
LABEL_9:
  result = sub_26618CDA0();
  *v2 = result;
  return result;
}

uint64_t sub_2661739AC(uint64_t result, uint64_t a2)
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

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

void sub_2661739F4(uint64_t a1, void *a2)
{
  sub_266142AC0();
  v3 = sub_26618C990();

  [a2 setCardSections_];
}

unint64_t sub_266173A68()
{
  result = qword_28005CCB0;
  if (!qword_28005CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CCB0);
  }

  return result;
}

unint64_t sub_266173ABC()
{
  result = qword_28005CCB8;
  if (!qword_28005CCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CCA0, &qword_266194C18);
    sub_266173B48();
    sub_266173BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CCB8);
  }

  return result;
}

unint64_t sub_266173B48()
{
  result = qword_28005CCC0;
  if (!qword_28005CCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C200, &qword_266194C10);
    sub_26616AEA8(&unk_28005CCC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CCC0);
  }

  return result;
}

unint64_t sub_266173BFC()
{
  result = qword_28005CCD0;
  if (!qword_28005CCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C200, &qword_266194C10);
    sub_26616AEA8(&unk_28005CCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CCD0);
  }

  return result;
}

unint64_t sub_266173CB0()
{
  result = qword_28005CCE0;
  if (!qword_28005CCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C208, &unk_266192930);
    sub_266173D3C();
    sub_266173DF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CCE0);
  }

  return result;
}

unint64_t sub_266173D3C()
{
  result = qword_28005CCE8;
  if (!qword_28005CCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C1E8, &qword_266192910);
    sub_26616AEA8(&unk_28005CCF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CCE8);
  }

  return result;
}

unint64_t sub_266173DF0()
{
  result = qword_28005CCF8;
  if (!qword_28005CCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C1E8, &qword_266192910);
    sub_26616AEA8(&unk_28005CD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CCF8);
  }

  return result;
}

unint64_t sub_266173EA4()
{
  result = qword_28005CD10;
  if (!qword_28005CD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CCA0, &qword_266194C18);
    sub_266173B48();
    sub_266173BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CD10);
  }

  return result;
}

unint64_t sub_266173F30()
{
  result = qword_28005CD18;
  if (!qword_28005CD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C208, &unk_266192930);
    sub_266173D3C();
    sub_266173DF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CD18);
  }

  return result;
}

uint64_t sub_266173FBC()
{
  OUTLINED_FUNCTION_70_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_16();
  v3 = OUTLINED_FUNCTION_19_7();
  v4(v3);
  return v0;
}

unint64_t sub_266174034()
{
  result = qword_28005CD38;
  if (!qword_28005CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CD38);
  }

  return result;
}

unint64_t sub_266174088(uint64_t a1)
{
  result = OUTLINED_FUNCTION_73_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CD20, &unk_266194C30);
    sub_26616AEA8(&unk_28005CCC8);
    sub_26616AEA8(&unk_28005CCD8);
    OUTLINED_FUNCTION_105();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_266174154()
{
  result = qword_28005CD48;
  if (!qword_28005CD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CD28, &qword_266194C40);
    sub_2661741E0();
    sub_266174294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CD48);
  }

  return result;
}

unint64_t sub_2661741E0()
{
  result = qword_28005CD50;
  if (!qword_28005CD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C4D0, &qword_266191AA8);
    sub_26616AEA8(&unk_2814B48A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CD50);
  }

  return result;
}

unint64_t sub_266174294()
{
  result = qword_28005CD58;
  if (!qword_28005CD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C4D0, &qword_266191AA8);
    sub_26616AEA8(&unk_2814B48A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CD58);
  }

  return result;
}

unint64_t sub_266174348()
{
  result = qword_28005CD70;
  if (!qword_28005CD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CD28, &qword_266194C40);
    sub_2661741E0();
    sub_266174294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CD70);
  }

  return result;
}