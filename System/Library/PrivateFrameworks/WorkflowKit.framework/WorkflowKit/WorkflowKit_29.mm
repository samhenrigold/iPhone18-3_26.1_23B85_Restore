void sub_1CA565F00(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_72();
  v23 = *&v22[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier] + 64;
  OUTLINED_FUNCTION_5_5();
  v26 = v25 & v24;
  v28 = (v27 + 63) >> 6;
  v43 = v22;
  v44 = v29;
  swift_bridgeObjectRetain_n();
  v30 = 0;
  while (v26)
  {
    v31 = v30;
LABEL_8:
    v32 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v33 = *(*(v44 + 56) + ((v31 << 9) | (8 * v32)));
    v34 = [v33 identifier];
    v35 = sub_1CA94C3A8();
    v37 = v36;

    v38 = [v43 fullyQualifiedLinkActionIdentifier];
    v39 = [v38 bundleIdentifier];

    v40 = sub_1CA94C3A8();
    v41 = objc_allocWithZone(MEMORY[0x1E69AC860]);
    v42 = sub_1CA334F5C(v35, v37, v40);
    LOBYTE(v35) = [objc_opt_self() approvedForPublicDrawerToDisplayActionIdentifier_];

    if ((v35 & 1) == 0)
    {
LABEL_9:

      OUTLINED_FUNCTION_70_2();
      return;
    }
  }

  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v28)
    {
      goto LABEL_9;
    }

    v26 = *(v23 + 8 * v31);
    ++v30;
    if (v26)
    {
      v30 = v31;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1CA5660B4()
{
  sub_1CA94C838();
  *(v0 + 16) = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v2 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA566144, v2, v1);
}

uint64_t sub_1CA566144()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CA566230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1CA94C838();
  v3[5] = sub_1CA94C828();
  v5 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA5662CC, v5, v4);
}

uint64_t sub_1CA5662CC()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1CA43E7F4;

  return sub_1CA5660B4();
}

uint64_t sub_1CA5663E4()
{
  v0 = OUTLINED_FUNCTION_18_22();
  v1 = sub_1CA563C5C(v0);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = [v1 value];

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_25_14();
  sub_1CA94C398();

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  result = swift_allocObject();
  *(result + 16) = xmmword_1CA981310;
  *(result + 32) = v5;
  *(result + 40) = v6;
  return result;
}

uint64_t sub_1CA566578()
{
}

uint64_t sub_1CA566878(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    sub_1CA94C1C8();
  }

  v4 = a1;
  v5 = OUTLINED_FUNCTION_116();
  v6 = sub_1CA566664(v5);

  return v6;
}

void sub_1CA5669B4()
{
  OUTLINED_FUNCTION_37_0();
  sub_1CA94C438("Change Accessibility Setting (App wide Unique Entity Updater Action Name)", 73);
  OUTLINED_FUNCTION_1_2();
  sub_1CA94C438("Change Accessibility Setting", 28);
  v0 = OUTLINED_FUNCTION_58();
  v1 = OUTLINED_FUNCTION_18_0(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_20_21();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v2 = [qword_1EDB9F690 bundleURL];
  v3 = sub_1CA948BA8();
  v4 = OUTLINED_FUNCTION_18_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_40();
  sub_1CA948B68();

  v5 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v6 = OUTLINED_FUNCTION_9_1();
  v7 = OUTLINED_FUNCTION_34_13(v6, sel_localize_);

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_1_2();

  OUTLINED_FUNCTION_36();
}

void sub_1CA566B88()
{
  OUTLINED_FUNCTION_37_0();
  sub_1CA94C438(v0, v1);
  OUTLINED_FUNCTION_1_2();
  v2 = OUTLINED_FUNCTION_187();
  sub_1CA94C438(v2);
  v3 = OUTLINED_FUNCTION_58();
  v4 = OUTLINED_FUNCTION_18_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_20_21();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v5 = [qword_1EDB9F690 bundleURL];
  v6 = sub_1CA948BA8();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_40();
  sub_1CA948B68();

  v8 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v9 = OUTLINED_FUNCTION_9_1();
  v10 = OUTLINED_FUNCTION_34_13(v9, sel_localize_);

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_1_2();

  OUTLINED_FUNCTION_36();
}

id sub_1CA566CEC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1CA566B88();
  v7 = v6;
  v9 = v8;

  if (v9)
  {
    sub_1CA94C368();
    OUTLINED_FUNCTION_87();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1CA566DC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10, uint64_t (*a11)(uint64_t, uint64_t, void *, uint64_t, uint64_t, void *, uint64_t, void *, void *))
{
  v14 = sub_1CA94C3A8();
  v16 = v15;
  sub_1CA25B3D0(0, &unk_1EC441A38, 0x1E69AC800);
  v17 = sub_1CA94C1C8();
  sub_1CA25B3D0(0, &qword_1EC444660, 0x1E69AC670);
  v18 = sub_1CA94C1C8();
  if (a8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    a8 = sub_1CA94C1C8();
  }

  return a11(v14, v16, a4, v17, v18, a7, a8, a9, a10);
}

uint64_t sub_1CA566F58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v8 = sub_1CA94C368();
  v9 = [a1 parameterStateForKey_];

  if (!v9)
  {
    return 0;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v10 = swift_dynamicCastObjCClass();
  if (!v10 || (v11 = [v10 value]) == 0 || (v12 = v11, OUTLINED_FUNCTION_25_14(), sub_1CA94C398(), v12, !v28))
  {
    swift_unknownObjectRelease();
    return 0;
  }

  (*(a2 + 8))(ObjectType, a2);
  v13 = sub_1CA323E2C();

  if (!v13)
  {
LABEL_17:

    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  v14 = [v13 properties];
  sub_1CA25B3D0(0, &unk_1EC4419B0, 0x1E69AC958);
  v15 = sub_1CA94C658();

  if (!sub_1CA25B410(v15))
  {

    goto LABEL_17;
  }

  sub_1CA275D70(0, (v15 & 0xC000000000000001) == 0, v15);
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1CCAA22D0](0, v15);
  }

  else
  {
    v16 = *(v15 + 32);
  }

  v17 = v16;

  v18 = [v17 valueType];

  v19 = sub_1CA94C368();
  v20 = [v18 wf:v19 contentItemClassWithAppBundleIdentifier:?];

  if (!v20)
  {
    goto LABEL_17;
  }

  sub_1CA2E6D9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v22 = v21;
  v24 = *(v21 + 16);
  v23 = *(v21 + 24);
  if (v24 >= v23 >> 1)
  {
    sub_1CA2E6D9C(v23 > 1, v24 + 1, 1, v21);
    v22 = v27;
  }

  swift_unknownObjectRelease();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  *(v22 + 16) = v24 + 1;
  *(v22 + 8 * v24 + 32) = ObjCClassMetadata;
  return v22;
}

uint64_t sub_1CA567224(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
    sub_1CA94C218();
  }

  sub_1CA94C218();
  return v5;
}

uint64_t sub_1CA56728C(char *a1)
{
  v2 = &a1[OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource];
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = MEMORY[0x1E69E7CC0];
  if (Strong)
  {
    v5 = Strong;
    v6 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 8))(ObjectType, v6);

    v9 = a1;
    v17 = sub_1CA42AFA0(v8);
    sub_1CA563D58(&v17, v9);

    v10 = v17;
    v11 = *(v17 + 16);
    if (v11)
    {
      v17 = v4;
      sub_1CA94D508();
      v12 = v10 + 40;
      do
      {
        sub_1CA94C218();
        v13 = sub_1CA94C368();
        v14 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];

        v15 = WFVariableSubstitutableParameterStateUpcast(v14);

        sub_1CA94D4D8();
        sub_1CA94D518();
        sub_1CA94D528();
        sub_1CA94D4E8();
        v12 += 16;
        --v11;
      }

      while (v11);

      return v17;
    }

    else
    {
    }
  }

  return v4;
}

uint64_t sub_1CA567444(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  v7 = a3 + OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v9 = Strong, v10 = *(v7 + 8), ObjectType = swift_getObjectType(), v12 = (*(v10 + 16))(ObjectType, v10), v9, v13 = sub_1CA3118E4(v3, v4, v12), v15 = v14, , !v15))
  {

    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16 || (v17 = v16, v18 = *(v7 + 8), v19 = swift_getObjectType(), v20 = (*(v18 + 16))(v19, v18), v17, v21 = sub_1CA3118E4(v5, v6, v20), v23 = v22, , !v23))
  {

    v21 = 0;
    v23 = 0xE000000000000000;
  }

  if (v13 == v21 && v15 == v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_1CA94D7F8();
  }

  return v25 & 1;
}

uint64_t sub_1CA5675E4()
{
  result = sub_1CA568E98(v0);
  if (result)
  {
    sub_1CA25B410(result);
    OUTLINED_FUNCTION_87();

    return v0 > 15;
  }

  return result;
}

uint64_t sub_1CA5676A4()
{
  sub_1CA25B3D0(0, &qword_1EC4417B0, off_1E836F350);
  swift_getObjCClassFromMetadata();
  v1 = OUTLINED_FUNCTION_93();
  if (!WFVariableSubstitutableParameterStateDowncast(v1, v2))
  {
    return 0;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v3 = swift_dynamicCastObjCClass();
  if (!v3 || (v4 = [v3 value]) == 0 || (v5 = v4, OUTLINED_FUNCTION_25_14(), sub_1CA94C398(), v5, !v17))
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v6 = v0 + OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_unknownObjectRelease();

    return 0;
  }

  v8 = Strong;
  v9 = *(v6 + 8);
  ObjectType = swift_getObjectType();
  v11 = (*(v9 + 16))(ObjectType, v9);

  v12 = sub_1CA3118E4(v16, v17, v11);
  v14 = v13;

  swift_unknownObjectRelease();
  if (!v14)
  {
    return 0;
  }

  return v12;
}

id sub_1CA56781C(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  v6 = a3;
  v7 = a1;
  v8 = a4(v6);
  v10 = v9;

  if (v10)
  {
    sub_1CA94C368();
    OUTLINED_FUNCTION_87();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_1CA5678AC(void *a1)
{
  *&v1[OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter____lazy_storage___options] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SettingPickerParameter();
  v3 = objc_msgSendSuper2(&v5, sel_initWithDefinition_, a1);

  return v3;
}

id sub_1CA567960(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1CA5679E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1CA94C368();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithBundleIdentifier_];

  return v4;
}

uint64_t sub_1CA567A6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1CA567B0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = a2;
  v5 = sub_1CA94D778();
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1CA94C6C8();
        *(v8 + 16) = v7;
      }

      v53[0] = (v8 + 32);
      v53[1] = v7;
      v42 = v4;
      sub_1CA567E84(v53, v54, a1, v6, v42);
      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
    goto LABEL_39;
  }

  if (v3 < 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    return;
  }

  if (v3 >= 2)
  {
    v44 = v4;
    v9 = *a1;
    v10 = &v4[OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource];
    v43 = v4;
    v11 = -1;
    v12 = 1;
    v49 = v10;
    v50 = v9;
    v45 = v3;
    do
    {
      v47 = v12;
      v48 = v11;
      v13 = &v50[2 * v12];
      v14 = *v13;
      v15 = v13[1];
      v46 = v9;
      while (1)
      {
        v17 = *v9;
        v16 = v9[1];
        Strong = swift_unknownObjectWeakLoadStrong();
        v52 = v16;
        if (Strong)
        {
          v19 = Strong;
          v51 = v17;
          v20 = *(v10 + 1);
          ObjectType = swift_getObjectType();
          v22 = *(v20 + 16);
          sub_1CA94C218();
          sub_1CA94C218();
          v23 = v22(ObjectType, v20);

          if (*(v23 + 16) && (v24 = sub_1CA271BF8(v14, v15), (v25 & 1) != 0))
          {
            v26 = (*(v23 + 56) + 16 * v24);
            v27 = *v26;
            v28 = v26[1];
            sub_1CA94C218();
          }

          else
          {

            v27 = 0;
            v28 = 0xE000000000000000;
          }

          v10 = v49;
          v17 = v51;
        }

        else
        {
          sub_1CA94C218();
          sub_1CA94C218();
          v27 = 0;
          v28 = 0xE000000000000000;
        }

        v29 = swift_unknownObjectWeakLoadStrong();
        if (v29)
        {
          v30 = v29;
          v31 = *(v10 + 1);
          v32 = swift_getObjectType();
          v33 = (*(v31 + 16))(v32, v31);

          if (*(v33 + 16) && (v34 = sub_1CA271BF8(v17, v52), (v35 & 1) != 0))
          {
            v36 = (*(v33 + 56) + 16 * v34);
            v38 = *v36;
            v37 = v36[1];
            sub_1CA94C218();
          }

          else
          {
            v38 = 0;
            v37 = 0xE000000000000000;
          }
        }

        else
        {
          v38 = 0;
          v37 = 0xE000000000000000;
        }

        if (v27 == v38 && v28 == v37)
        {
          break;
        }

        v40 = sub_1CA94D7F8();

        if (v40)
        {
          if (!v50)
          {
            goto LABEL_40;
          }

          v14 = v9[2];
          v15 = v9[3];
          *(v9 + 1) = *v9;
          *v9 = v14;
          v9[1] = v15;
          v9 -= 2;
          if (!__CFADD__(v11++, 1))
          {
            continue;
          }
        }

        goto LABEL_33;
      }

LABEL_33:
      v12 = v47 + 1;
      v9 = v46 + 2;
      v11 = v48 - 1;
    }

    while (v47 + 1 != v45);

    v4 = v44;
  }
}

void sub_1CA567E84(char **a1, uint64_t a2, char **a3, uint64_t a4, char *a5)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v140 = a5;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_133:
    v171 = *a1;
    if (!*a1)
    {
      goto LABEL_177;
    }

    v172 = a5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_135;
    }

    goto LABEL_171;
  }

  v6 = &a5[OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource];
  v161 = a5;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v170 = v6;
  while (1)
  {
    v9 = v7++;
    v156 = v9;
    if (v7 < v5)
    {
      v10 = *a3;
      v11 = &(*a3)[16 * v7];
      v12 = v11[1];
      v177[0] = *v11;
      v177[1] = v12;
      v13 = v9;
      v14 = &v10[16 * v9];
      v15 = v14[1];
      v176[0] = *v14;
      v176[1] = v15;
      sub_1CA94C218();
      sub_1CA94C218();
      LODWORD(v172) = sub_1CA567444(v177, v176, v161);
      if (v167)
      {

LABEL_131:

        goto LABEL_145;
      }

      v159 = 16 * v13;
      v16 = v14 + 3;
      v17 = v13 + 2;
      v163 = v8;
      v171 = v5;
      while (1)
      {
        v18 = v17;
        if (v7 + 1 >= v5)
        {
          break;
        }

        v19 = v16[1];
        v20 = v16[2];
        v21 = *v16;
        v173 = *(v16 - 1);
        Strong = swift_unknownObjectWeakLoadStrong();
        v178 = v21;
        if (Strong)
        {
          v23 = Strong;
          v24 = *(v170 + 1);
          ObjectType = swift_getObjectType();
          v26 = *(v24 + 16);
          sub_1CA94C218();
          sub_1CA94C218();
          v27 = v26(ObjectType, v24);

          if (*(v27 + 16) && (v28 = sub_1CA271BF8(v19, v20), (v29 & 1) != 0))
          {
            v30 = (*(v27 + 56) + 16 * v28);
            v31 = *v30;
            v32 = v30[1];
            sub_1CA94C218();
          }

          else
          {

            v31 = 0;
            v32 = 0xE000000000000000;
          }
        }

        else
        {
          sub_1CA94C218();
          sub_1CA94C218();
          v31 = 0;
          v32 = 0xE000000000000000;
        }

        v33 = swift_unknownObjectWeakLoadStrong();
        if (v33)
        {
          v34 = v33;
          v35 = *(v170 + 1);
          v36 = swift_getObjectType();
          v37 = (*(v35 + 16))(v36, v35);

          if (*(v37 + 16) && (v38 = sub_1CA271BF8(v173, v178), (v39 & 1) != 0))
          {
            v40 = (*(v37 + 56) + 16 * v38);
            v42 = *v40;
            v41 = v40[1];
            sub_1CA94C218();
          }

          else
          {
            v42 = 0;
            v41 = 0xE000000000000000;
          }
        }

        else
        {
          v42 = 0;
          v41 = 0xE000000000000000;
        }

        if (v31 == v42 && v32 == v41)
        {
          v44 = 0;
        }

        else
        {
          v44 = sub_1CA94D7F8();
        }

        v5 = v171;

        v16 += 2;
        ++v7;
        v17 = v18 + 1;
        v8 = v163;
        if ((v172 ^ v44))
        {
          goto LABEL_29;
        }
      }

      v7 = v5;
LABEL_29:
      if (v172)
      {
        v9 = v156;
        v6 = v170;
        if (v7 < v156)
        {
          goto LABEL_170;
        }

        if (v156 < v7)
        {
          if (v5 >= v18)
          {
            v45 = v18;
          }

          else
          {
            v45 = v5;
          }

          v46 = 16 * v45;
          v47 = v7;
          v48 = v156;
          v49 = v159;
          do
          {
            if (v48 != --v47)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_175;
              }

              v51 = &v50[v49];
              v52 = &v50[v46];
              v53 = *v51;
              v54 = *(v51 + 1);
              *v51 = *(v52 - 1);
              *(v52 - 2) = v53;
              *(v52 - 1) = v54;
            }

            ++v48;
            v46 -= 16;
            v49 += 16;
          }

          while (v48 < v47);
        }
      }

      else
      {
        v6 = v170;
        v9 = v156;
      }
    }

    v55 = a3[1];
    if (v7 < v55)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_167;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_78:
    if (v7 < v9)
    {
      goto LABEL_166;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA2E49C0(0, *(v8 + 2) + 1, 1, v8);
      v8 = v138;
    }

    v91 = *(v8 + 2);
    v90 = *(v8 + 3);
    v92 = v91 + 1;
    if (v91 >= v90 >> 1)
    {
      sub_1CA2E49C0(v90 > 1, v91 + 1, 1, v8);
      v8 = v139;
    }

    *(v8 + 2) = v92;
    v93 = v8 + 32;
    v94 = &v8[16 * v91 + 32];
    *v94 = v156;
    *(v94 + 1) = v7;
    v178 = *a1;
    if (!v178)
    {
      goto LABEL_176;
    }

    if (v91)
    {
      v169 = v7;
      v174 = v8 + 32;
      v165 = v8;
      while (1)
      {
        v95 = v92 - 1;
        v96 = &v93[16 * v92 - 16];
        v97 = &v8[16 * v92];
        if (v92 >= 4)
        {
          break;
        }

        if (v92 == 3)
        {
          v98 = *(v8 + 4);
          v99 = *(v8 + 5);
          v108 = __OFSUB__(v99, v98);
          v100 = v99 - v98;
          v101 = v108;
LABEL_99:
          if (v101)
          {
            goto LABEL_153;
          }

          v113 = *v97;
          v112 = *(v97 + 1);
          v114 = __OFSUB__(v112, v113);
          v115 = v112 - v113;
          v116 = v114;
          if (v114)
          {
            goto LABEL_156;
          }

          v117 = *(v96 + 1);
          v118 = v117 - *v96;
          if (__OFSUB__(v117, *v96))
          {
            goto LABEL_159;
          }

          if (__OFADD__(v115, v118))
          {
            goto LABEL_161;
          }

          if (v115 + v118 >= v100)
          {
            if (v100 < v118)
            {
              v95 = v92 - 2;
            }

            goto LABEL_121;
          }

          goto LABEL_114;
        }

        if (v92 < 2)
        {
          goto LABEL_155;
        }

        v120 = *v97;
        v119 = *(v97 + 1);
        v108 = __OFSUB__(v119, v120);
        v115 = v119 - v120;
        v116 = v108;
LABEL_114:
        if (v116)
        {
          goto LABEL_158;
        }

        v122 = *v96;
        v121 = *(v96 + 1);
        v108 = __OFSUB__(v121, v122);
        v123 = v121 - v122;
        if (v108)
        {
          goto LABEL_160;
        }

        if (v123 < v115)
        {
          goto LABEL_128;
        }

LABEL_121:
        if (v95 - 1 >= v92)
        {
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
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        v127 = *a3;
        if (!*a3)
        {
          goto LABEL_173;
        }

        v128 = &v93[16 * v95 - 16];
        v129 = *v128;
        v130 = v95;
        v131 = &v93[16 * v95];
        v132 = *(v131 + 1);
        v133 = &v127[16 * *v128];
        v134 = &v127[16 * *v131];
        v135 = &v127[16 * v132];
        v136 = v161;
        sub_1CA568944(v133, v134, v135, v178, v136);
        if (v167)
        {

          goto LABEL_131;
        }

        v8 = v165;
        if (v132 < v129)
        {
          goto LABEL_148;
        }

        v137 = *(v165 + 2);
        if (v130 > v137)
        {
          goto LABEL_149;
        }

        *v128 = v129;
        *(v128 + 1) = v132;
        if (v130 >= v137)
        {
          goto LABEL_150;
        }

        v92 = v137 - 1;
        sub_1CA627628(v131 + 16, v137 - 1 - v130, v131);
        *(v165 + 2) = v137 - 1;
        v7 = v169;
        v93 = v174;
        if (v137 <= 2)
        {
          goto LABEL_128;
        }
      }

      v102 = &v93[16 * v92];
      v103 = *(v102 - 8);
      v104 = *(v102 - 7);
      v108 = __OFSUB__(v104, v103);
      v105 = v104 - v103;
      if (v108)
      {
        goto LABEL_151;
      }

      v107 = *(v102 - 6);
      v106 = *(v102 - 5);
      v108 = __OFSUB__(v106, v107);
      v100 = v106 - v107;
      v101 = v108;
      if (v108)
      {
        goto LABEL_152;
      }

      v109 = *(v97 + 1);
      v110 = v109 - *v97;
      if (__OFSUB__(v109, *v97))
      {
        goto LABEL_154;
      }

      v108 = __OFADD__(v100, v110);
      v111 = v100 + v110;
      if (v108)
      {
        goto LABEL_157;
      }

      if (v111 >= v105)
      {
        v125 = *v96;
        v124 = *(v96 + 1);
        v108 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v108)
        {
          goto LABEL_165;
        }

        if (v100 < v126)
        {
          v95 = v92 - 2;
        }

        goto LABEL_121;
      }

      goto LABEL_99;
    }

LABEL_128:
    v5 = a3[1];
    v6 = v170;
    if (v7 >= v5)
    {
      goto LABEL_133;
    }
  }

  v56 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_168;
  }

  if (v56 >= v55)
  {
    v56 = a3[1];
  }

  if (v56 < v9)
  {
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    v8 = sub_1CA627610();
LABEL_135:
    v141 = v8 + 16;
    v142 = *(v8 + 2);
    for (i = v8; ; v8 = i)
    {
      if (v142 < 2)
      {

        return;
      }

      v143 = *a3;
      if (!*a3)
      {
        goto LABEL_174;
      }

      v144 = &v8[16 * v142];
      v145 = *v144;
      v146 = v141;
      v147 = &v141[16 * v142];
      v148 = *v147;
      v149 = *(v147 + 1);
      v178 = &v143[16 * *v144];
      v175 = &v143[16 * v148];
      v150 = &v143[16 * v149];
      v151 = v172;
      sub_1CA568944(v178, v175, v150, v171, v151);
      if (v167)
      {
        break;
      }

      if (v149 < v145)
      {
        goto LABEL_162;
      }

      if (v142 - 2 >= *v146)
      {
        goto LABEL_163;
      }

      v141 = v146;
      *v144 = v145;
      *(v144 + 1) = v149;
      v152 = *v146 - v142;
      if (*v146 < v142)
      {
        goto LABEL_164;
      }

      v142 = *v146 - 1;
      sub_1CA627628(v147 + 16, v152, v147);
      *v146 = v142;
    }

LABEL_145:
    return;
  }

  if (v7 == v56)
  {
    goto LABEL_78;
  }

  v164 = v8;
  v171 = *a3;
  v57 = &(*a3)[16 * v7];
  v58 = v9 - v7;
  v157 = v56;
LABEL_51:
  v168 = v7;
  v59 = v57;
  v60 = &v171[16 * v7];
  v61 = *v60;
  v62 = v60[1];
  v158 = v58;
  v160 = v59;
  v63 = v59;
  while (1)
  {
    v64 = *(v63 - 2);
    v65 = *(v63 - 1);
    v66 = swift_unknownObjectWeakLoadStrong();
    v178 = v65;
    if (v66)
    {
      v67 = v66;
      v172 = v64;
      v68 = *(v6 + 1);
      v69 = swift_getObjectType();
      v70 = *(v68 + 16);
      sub_1CA94C218();
      sub_1CA94C218();
      v71 = v70(v69, v68);

      if (*(v71 + 16) && (v72 = sub_1CA271BF8(v61, v62), (v73 & 1) != 0))
      {
        v74 = (*(v71 + 56) + 16 * v72);
        v76 = *v74;
        v75 = v74[1];
        sub_1CA94C218();
      }

      else
      {

        v76 = 0;
        v75 = 0xE000000000000000;
      }

      v6 = v170;
      v64 = v172;
    }

    else
    {
      sub_1CA94C218();
      sub_1CA94C218();
      v76 = 0;
      v75 = 0xE000000000000000;
    }

    v77 = swift_unknownObjectWeakLoadStrong();
    if (v77)
    {
      v78 = v77;
      v79 = *(v6 + 1);
      v80 = swift_getObjectType();
      v81 = (*(v79 + 16))(v80, v79);

      if (*(v81 + 16) && (v82 = sub_1CA271BF8(v64, v178), (v83 & 1) != 0))
      {
        v84 = (*(v81 + 56) + 16 * v82);
        v86 = *v84;
        v85 = v84[1];
        sub_1CA94C218();
      }

      else
      {
        v86 = 0;
        v85 = 0xE000000000000000;
      }
    }

    else
    {
      v86 = 0;
      v85 = 0xE000000000000000;
    }

    if (v76 == v86 && v75 == v85)
    {

LABEL_76:
      v7 = v168 + 1;
      v57 = (v160 + 2);
      v58 = v158 - 1;
      if (v168 + 1 == v157)
      {
        v7 = v157;
        v8 = v164;
        v9 = v156;
        goto LABEL_78;
      }

      goto LABEL_51;
    }

    v88 = sub_1CA94D7F8();

    if ((v88 & 1) == 0)
    {
      goto LABEL_76;
    }

    if (!v171)
    {
      break;
    }

    v61 = *v63;
    v62 = v63[1];
    *v63 = *(v63 - 1);
    *(v63 - 1) = v62;
    *(v63 - 2) = v61;
    v63 -= 2;
    if (__CFADD__(v58++, 1))
    {
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_173:

  __break(1u);
LABEL_174:

  __break(1u);
LABEL_175:

  __break(1u);
LABEL_176:

  __break(1u);
LABEL_177:

  __break(1u);
}

uint64_t sub_1CA568944(char *a1, char *a2, char *a3, char *a4, char *a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = (a2 - a1) / 16;
  v11 = (a3 - a2) / 16;
  if (v10 < v11)
  {
    sub_1CA26E4B4(a1, (a2 - a1) / 16, a4);
    v12 = &v6[2 * v10];
    v13 = &a5[OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource];
    v82 = &a5[OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource];
    v85 = v12;
    v87 = v7;
    while (1)
    {
      if (v6 >= v12 || v8 >= v7)
      {
        v8 = v9;
        goto LABEL_66;
      }

      v89 = v9;
      v15 = *v8;
      v16 = v8[1];
      v17 = v6[1];
      v80 = *v6;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v19 = Strong;
        v20 = *(v13 + 1);
        ObjectType = swift_getObjectType();
        v22 = *(v20 + 16);
        sub_1CA94C218();
        sub_1CA94C218();
        v23 = v22(ObjectType, v20);

        if (*(v23 + 16) && (v24 = sub_1CA271BF8(v15, v16), (v25 & 1) != 0))
        {
          v26 = (*(v23 + 56) + 16 * v24);
          v28 = *v26;
          v27 = v26[1];
          sub_1CA94C218();
        }

        else
        {

          v28 = 0;
          v27 = 0xE000000000000000;
        }

        v13 = v82;
      }

      else
      {
        sub_1CA94C218();
        sub_1CA94C218();
        v28 = 0;
        v27 = 0xE000000000000000;
      }

      v29 = swift_unknownObjectWeakLoadStrong();
      if (v29)
      {
        v30 = v29;
        v31 = *(v13 + 1);
        v32 = swift_getObjectType();
        v33 = (*(v31 + 16))(v32, v31);

        if (*(v33 + 16) && (v34 = sub_1CA271BF8(v80, v17), (v35 & 1) != 0))
        {
          v36 = (*(v33 + 56) + 16 * v34);
          v38 = *v36;
          v37 = v36[1];
          sub_1CA94C218();
        }

        else
        {
          v38 = 0;
          v37 = 0xE000000000000000;
        }
      }

      else
      {
        v38 = 0;
        v37 = 0xE000000000000000;
      }

      v39 = v28 == v38 && v27 == v37;
      if (v39)
      {

        v13 = v82;
      }

      else
      {
        v40 = sub_1CA94D7F8();

        v13 = v82;
        if (v40)
        {
          v41 = v8;
          v42 = v89;
          v43 = v89 == v8;
          v8 += 2;
          goto LABEL_29;
        }
      }

      v41 = v6;
      v42 = v89;
      v43 = v89 == v6;
      v6 += 2;
LABEL_29:
      v12 = v85;
      v7 = v87;
      if (!v43)
      {
        *v42 = *v41;
      }

      v9 = (v42 + 2);
    }
  }

  sub_1CA26E4B4(a2, (a3 - a2) / 16, a4);
  v12 = &v6[2 * v11];
  v44 = &a5[OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource];
  v83 = &a5[OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource];
  v79 = v6;
  v90 = v9;
LABEL_33:
  v45 = v7 - 16;
  v84 = v8;
  v77 = v8 - 2;
  while (v12 > v6 && v8 > v9)
  {
    v86 = v12;
    v88 = v45;
    v48 = *(v12 - 2);
    v47 = *(v12 - 1);
    v49 = v12 - 2;
    v50 = *(v8 - 1);
    v81 = *(v8 - 2);
    v51 = swift_unknownObjectWeakLoadStrong();
    if (v51)
    {
      v52 = v51;
      v53 = *(v44 + 1);
      v54 = swift_getObjectType();
      v55 = *(v53 + 16);
      sub_1CA94C218();
      sub_1CA94C218();
      v56 = v55(v54, v53);

      if (*(v56 + 16) && (v57 = sub_1CA271BF8(v48, v47), (v58 & 1) != 0))
      {
        v59 = (*(v56 + 56) + 16 * v57);
        v61 = *v59;
        v60 = v59[1];
        sub_1CA94C218();
      }

      else
      {

        v61 = 0;
        v60 = 0xE000000000000000;
      }

      v44 = v83;
      v8 = v84;
    }

    else
    {
      sub_1CA94C218();
      sub_1CA94C218();
      v61 = 0;
      v60 = 0xE000000000000000;
    }

    v62 = swift_unknownObjectWeakLoadStrong();
    if (v62)
    {
      v63 = v62;
      v64 = *(v44 + 1);
      v65 = swift_getObjectType();
      v66 = (*(v64 + 16))(v65, v64);

      if (*(v66 + 16) && (v67 = sub_1CA271BF8(v81, v50), (v68 & 1) != 0))
      {
        v69 = (*(v66 + 56) + 16 * v67);
        v71 = *v69;
        v70 = v69[1];
        sub_1CA94C218();
      }

      else
      {
        v71 = 0;
        v70 = 0xE000000000000000;
      }
    }

    else
    {
      v71 = 0;
      v70 = 0xE000000000000000;
    }

    if (v61 == v71 && v60 == v70)
    {
      v73 = 0;
    }

    else
    {
      v73 = sub_1CA94D7F8();
    }

    v9 = v90;
    v44 = v83;

    if (v73)
    {
      v12 = v86;
      v7 = v88;
      v39 = v88 + 16 == v8;
      v8 = v77;
      v6 = v79;
      if (!v39)
      {
        *v88 = *v77;
        v8 = v77;
      }

      goto LABEL_33;
    }

    if (v86 != (v88 + 16))
    {
      *v88 = *v49;
    }

    v45 = v88 - 16;
    v12 = v49;
    v6 = v79;
  }

LABEL_66:
  v74 = (v12 - v6) / 16;
  if (v8 != v6 || v8 >= &v6[2 * v74])
  {
    memmove(v8, v6, 16 * v74);
  }

  return 1;
}

uint64_t sub_1CA568E98(void *a1)
{
  v1 = [a1 possibleStates];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444F10, &qword_1CA98D960);
  v3 = sub_1CA94C658();

  return v3;
}

uint64_t sub_1CA568F04()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CA3601B4;

  return sub_1CA566230(v2, v3, v4);
}

uint64_t WFTriggerCategory.triggers()()
{
  v1 = MEMORY[0x1E69E7CC0];
  switch(*v0)
  {
    case 1:
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v1 = OUTLINED_FUNCTION_5_36(v12);
      *(v1 + 16) = xmmword_1CA981470;
      *(v1 + 32) = OUTLINED_FUNCTION_3_43(objc_allocWithZone(WFArriveLocationTrigger));
      *(v1 + 40) = [objc_allocWithZone(WFLeaveLocationTrigger) (v0 + 2936)];
      v3 = WFPredictedLocationTransitionTrigger;
      goto LABEL_19;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1CA981360;
      *(v1 + 32) = OUTLINED_FUNCTION_3_43(objc_allocWithZone(WFEmailTrigger));
      v4 = WFMessageTrigger;
      goto LABEL_16;
    case 3:
    case 0xA:
      return v1;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1CA981560;
      *(v1 + 32) = OUTLINED_FUNCTION_3_43(objc_allocWithZone(WFAirplaneModeTrigger));
      *(v1 + 40) = [objc_allocWithZone(WFWifiTrigger) (v0 + 2936)];
      *(v1 + 48) = [objc_allocWithZone(WFBluetoothTrigger) (v0 + 2936)];
      *(v1 + 56) = [objc_allocWithZone(WFNFCTrigger) (v0 + 2936)];
      *(v1 + 64) = [objc_allocWithZone(WFCarPlayConnectionTrigger) (v0 + 2936)];
      return v1;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1CA981360;
      *(v1 + 32) = OUTLINED_FUNCTION_3_43(objc_allocWithZone(WFExternalDisplayTrigger));
      v4 = WFStageManagerTrigger;
LABEL_16:
      *(v1 + 40) = [objc_allocWithZone(v4) (v0 + 2936)];
      return v1;
    case 6:
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v1 = OUTLINED_FUNCTION_5_36(v13);
      *(v1 + 16) = xmmword_1CA981470;
      *(v1 + 32) = OUTLINED_FUNCTION_3_43(objc_allocWithZone(WFAppInFocusTrigger));
      *(v1 + 40) = [objc_allocWithZone(WFWalletTransactionTrigger) (v0 + 2936)];
      v3 = WFWorkoutTrigger;
      goto LABEL_19;
    case 7:
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v1 = OUTLINED_FUNCTION_5_36(v14);
      *(v1 + 16) = xmmword_1CA981470;
      *(v1 + 32) = OUTLINED_FUNCTION_3_43(objc_allocWithZone(WFBatteryLevelTrigger));
      *(v1 + 40) = [objc_allocWithZone(WFPlugInTrigger) (v0 + 2936)];
      v3 = WFLowPowerModeTrigger;
      goto LABEL_19;
    case 8:
      v5 = [objc_opt_self() availableModesForAutomationsDisplay];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4465B0, &qword_1CA98B6C0);
      v6 = sub_1CA94C658();

      v7 = sub_1CA25B410(v6);
      if (!v7)
      {

        return v1;
      }

      v8 = v7;
      v15 = v1;
      result = sub_1CA94D508();
      if ((v8 & 0x8000000000000000) == 0)
      {
        v10 = 0;
        do
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1CCAA22D0](v10, v6);
          }

          else
          {
            v11 = *(v6 + 8 * v10 + 32);
            swift_unknownObjectRetain();
          }

          ++v10;
          [objc_allocWithZone(WFUserFocusActivityTrigger) initWithActivity_];
          swift_unknownObjectRelease();
          sub_1CA94D4D8();
          sub_1CA94D518();
          sub_1CA94D528();
          sub_1CA94D4E8();
        }

        while (v8 != v10);

        return v15;
      }

      __break(1u);
      return result;
    case 9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1CA9813B0;
      *(v1 + 32) = [objc_allocWithZone(WFSoundRecognitionTrigger) init];
      return v1;
    default:
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v1 = OUTLINED_FUNCTION_5_36(v2);
      *(v1 + 16) = xmmword_1CA981470;
      *(v1 + 32) = OUTLINED_FUNCTION_3_43(objc_allocWithZone(WFTimeOfDayTrigger));
      *(v1 + 40) = [objc_allocWithZone(WFAlarmTrigger) (v0 + 2936)];
      v3 = WFSleepTrigger;
LABEL_19:
      *(v1 + 48) = [objc_allocWithZone(v3) (v0 + 2936)];
      return v1;
  }
}

uint64_t WFTriggerCategory.hashValue.getter()
{
  v1 = *v0;
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v1);
  return sub_1CA94D968();
}

uint64_t sub_1CA569540(uint64_t a1)
{
  sub_1CA94D918();
  WFTriggerCategory.hash(into:)();
  return sub_1CA94D968();
}

id sub_1CA569598()
{
  result = [objc_allocWithZone(type metadata accessor for WFTriggerDirectory()) init];
  qword_1EC4465A0 = result;
  return result;
}

id WFTriggerDirectory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static WFTriggerDirectory.shared.getter()
{
  if (qword_1EC442D98 != -1)
  {
    OUTLINED_FUNCTION_0_56(&qword_1EC442D98);
  }

  v1 = qword_1EC4465A0;

  return v1;
}

uint64_t sub_1CA569648@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443FA0, &qword_1CA9825F0);
  sub_1CA4403C0();
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1CA94C1E8();
  v3 = 0;
  v4 = v1;
  while (1)
  {
    v5 = byte_1F4A06800[v3 + 32];
    v6 = WFTriggerCategory.triggers()();
    if (v2[2] && (sub_1CA321184(v5), (v7 & 1) != 0))
    {
      for (i = 0; *(v4 + 16) != i; ++i)
      {
        if (*(v4 + i + 32) == v5)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1CA42B334();
            v1 = v30;
          }

          if (i < *(v1 + 16))
          {
            *(v1 + 8 * i + 32) = v6;
            sub_1CA94C218();

            break;
          }

          goto LABEL_33;
        }
      }
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = OUTLINED_FUNCTION_21();
        sub_1CA2E6E80(v22, v23, v24, v4);
        v4 = v25;
      }

      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        v26 = OUTLINED_FUNCTION_64(v9);
        sub_1CA2E6E80(v26, v10 + 1, 1, v4);
        v4 = v27;
      }

      *(v4 + 16) = v10 + 1;
      *(v4 + v10 + 32) = v5;
      sub_1CA94C218();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_21();
        sub_1CA2E6DC4();
        v1 = v28;
      }

      v12 = *(v1 + 16);
      v11 = *(v1 + 24);
      if (v12 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_64(v11);
        sub_1CA2E6DC4();
        v1 = v29;
      }

      *(v1 + 16) = v12 + 1;
      *(v1 + 8 * v12 + 32) = v6;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_1CA321184(v5);
    if (__OFADD__(v2[2], (v14 & 1) == 0))
    {
      break;
    }

    v15 = v13;
    v16 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4457C0, &qword_1CA983440);
    result = sub_1CA94D588();
    if (result)
    {
      result = sub_1CA321184(v5);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_34;
      }

      v15 = result;
    }

    if (v16)
    {
      *(v2[7] + 8 * v15) = v6;
    }

    else
    {
      v2[(v15 >> 6) + 8] |= 1 << v15;
      *(v2[6] + v15) = v5;
      *(v2[7] + 8 * v15) = v6;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_32;
      }

      v2[2] = v21;
    }

    if (++v3 == 11)
    {
      *a1 = v1;
      a1[1] = v4;
      a1[2] = v2;
      return result;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

void sub_1CA569954(uint64_t result, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  if (result)
  {
    if (!sub_1CA311DDC(a2, v2[2]))
    {
      sub_1CA69AEE8();
      v16 = *(v2[1] + 16);
      sub_1CA69B128(v16);
      v17 = v2[1];
      *(v17 + 16) = v16 + 1;
      *(v17 + v16 + 32) = v4;
      v2[1] = v17;
      sub_1CA94C218();
      sub_1CA69AED0();
      v18 = *(*v2 + 16);
      sub_1CA69B110(v18);
      v9 = *v2;
      *(v9 + 16) = v18 + 1;
      *(v9 + 8 * v18 + 32) = result;
      goto LABEL_17;
    }

    v6 = sub_1CA58A6D0(v4, v2[1]);
    if (v7)
    {
LABEL_18:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1CA322D2C(result, v4, isUniquelyReferenced_nonNull_native, v20, v21, v22, v23, v24, v27, v3[2]);
      v3[2] = v28;
      return;
    }

    v8 = v6;
    v9 = *v2;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_1CA42B334();
      v9 = v25;
      if ((v8 & 0x8000000000000000) == 0)
      {
LABEL_6:
        if (v8 < *(v9 + 16))
        {
          *(v9 + 8 * v8 + 32) = result;
          sub_1CA94C218();

LABEL_17:
          *v3 = v9;
          goto LABEL_18;
        }

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    sub_1CA42B34C();
    v11 = v26;
    goto LABEL_12;
  }

  if (!*(v2[2] + 16))
  {
    return;
  }

  sub_1CA321184(a2);
  if ((v10 & 1) == 0)
  {
    return;
  }

  sub_1CA94C218();
  sub_1CA43F55C(v4);

  v11 = v2[1];
  v12 = sub_1CA58A6D0(v4, v3[1]);
  if (v13)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v4 = v12;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  v14 = *(v11 + 16);
  if (v4 >= v14)
  {
    __break(1u);
    goto LABEL_25;
  }

  v15 = v14 - 1;
  sub_1CA44043C((v11 + v4 + 33), v14 - 1 - v4, (v11 + v4 + 32));
  *(v11 + 16) = v15;
  v3[1] = v11;
  sub_1CA6A6DD0(v4);
}

void sub_1CA569B98(uint64_t a1@<X8>)
{
  *&v11 = MEMORY[0x1E69E7CC0];
  *(&v11 + 1) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443FA0, &qword_1CA9825F0);
  sub_1CA4403C0();
  v1 = 0;
  v12 = sub_1CA94C1E8();
LABEL_2:
  v2 = byte_1F4A06800[v1++ + 32];
  v9 = v2;
  v3 = WFTriggerCategory.triggers()();
  v10 = MEMORY[0x1E69E7CC0];
  v4 = sub_1CA25B410(v3);
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      if (sub_1CA25B410(v10))
      {
        sub_1CA569954(v10, v9);
      }

      else
      {
      }

      if (v1 == 11)
      {
        *a1 = v11;
        *(a1 + 16) = v12;
        return;
      }

      goto LABEL_2;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1CCAA22D0](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([swift_getObjCClassFromObject() isSupportedOnThisDevice])
    {
      sub_1CA94D4D8();
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

id WFTriggerDirectory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFTriggerDirectory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WFTriggerDirectory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFTriggerDirectory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA569DF4()
{
  if (qword_1EC442D98 != -1)
  {
LABEL_18:
    OUTLINED_FUNCTION_0_56(&qword_1EC442D98);
  }

  sub_1CA569B98(&v13);
  v0 = 0;
  v1 = v14;
  v2 = v15;
  v3 = *(v14 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  while (v3 != v0)
  {
    if (v0 >= *(v1 + 16))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (!*(v2 + 16))
    {
      goto LABEL_15;
    }

    v5 = sub_1CA321184(*(v1 + v0 + 32));
    if ((v6 & 1) == 0)
    {
      goto LABEL_16;
    }

    if (v0 >= *(v1 + 16))
    {
      goto LABEL_17;
    }

    v7 = *(*(v2 + 56) + 8 * v5);
    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_21();
      sub_1CA2E6DC4();
      v4 = v10;
    }

    v9 = *(v4 + 16);
    v8 = *(v4 + 24);
    if (v9 >= v8 >> 1)
    {
      OUTLINED_FUNCTION_64(v8);
      sub_1CA2E6DC4();
      v4 = v11;
    }

    *(v4 + 16) = v9 + 1;
    *(v4 + 8 * v9 + 32) = v7;
    ++v0;
  }

  return v4;
}

uint64_t sub_1CA569F84()
{
  if (qword_1EC442D98 != -1)
  {
LABEL_52:
    OUTLINED_FUNCTION_0_56(&qword_1EC442D98);
  }

  sub_1CA569B98(&v46);
  v0 = 0;
  v1 = v47;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = v48;
  v41 = v47 + 32;
  v42 = *(v47 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  v39 = v47;
  v40 = v48;
  while (v0 != v42)
  {
    if (v0 >= *(v1 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (!*(v3 + 16))
    {
      goto LABEL_44;
    }

    v5 = sub_1CA321184(*(v41 + v0));
    if ((v6 & 1) == 0)
    {
      goto LABEL_45;
    }

    if (v0 >= *(v1 + 16))
    {
      goto LABEL_46;
    }

    v7 = *(*(v3 + 56) + 8 * v5);
    if (v7 >> 62)
    {
      v8 = sub_1CA94D328();
      if (v8)
      {
LABEL_10:
        sub_1CA94C218();
        v9 = OUTLINED_FUNCTION_4_44();
        sub_1CA2B9090(v9, v10, v11);
        if (v8 < 0)
        {
          goto LABEL_49;
        }

        v43 = v4;
        v44 = v0;
        for (i = 0; i != v8; ++i)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1CCAA22D0](i, v7);
            ObjectType = swift_getObjectType();
            swift_unknownObjectRelease();
          }

          else
          {
            ObjectType = swift_getObjectType();
          }

          v15 = v2[2];
          v14 = v2[3];
          v16 = v15 + 1;
          if (v15 >= v14 >> 1)
          {
            v17 = OUTLINED_FUNCTION_64(v14);
            sub_1CA2B9090(v17, v15 + 1, 1);
          }

          v2[2] = v16;
          v2[v15 + 4] = ObjectType;
        }

        v2 = MEMORY[0x1E69E7CC0];
        goto LABEL_22;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_10;
      }
    }

    v16 = v2[2];
    sub_1CA94C218();
    if (!v16)
    {
      v26 = v1;

      v21 = v2;
      goto LABEL_27;
    }

    v43 = v4;
    v44 = v0;
LABEL_22:
    v18 = OUTLINED_FUNCTION_4_44();
    sub_1CA2B8D64(v18, v19, v20);
    v21 = v2;
    v22 = 32;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443900, &qword_1CA9819F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
      swift_dynamicCast();
      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v25 = OUTLINED_FUNCTION_64(v23);
        sub_1CA2B8D64(v25, v24 + 1, 1);
      }

      v21[2] = v24 + 1;
      v21[v24 + 4] = v45;
      v22 += 8;
      --v16;
    }

    while (v16);

    v26 = v39;
    v4 = v43;
    v0 = v44;
    v2 = MEMORY[0x1E69E7CC0];
LABEL_27:
    v27 = v21[2];
    v28 = *(v4 + 16);
    v29 = v28 + v27;
    if (__OFADD__(v28, v27))
    {
      goto LABEL_47;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v31 = *(v4 + 24) >> 1, v31 < v29))
    {
      if (v28 <= v29)
      {
        v32 = v28 + v27;
      }

      else
      {
        v32 = v28;
      }

      sub_1CA2E6D9C(isUniquelyReferenced_nonNull_native, v32, 1, v4);
      v4 = v33;
      v31 = *(v33 + 24) >> 1;
    }

    if (v21[2])
    {
      v34 = *(v4 + 16);
      if (v31 - v34 < v27)
      {
        goto LABEL_50;
      }

      memcpy((v4 + 8 * v34 + 32), v21 + 4, 8 * v27);

      v1 = v26;
      v3 = v40;
      if (v27)
      {
        v35 = *(v4 + 16);
        v36 = __OFADD__(v35, v27);
        v37 = v35 + v27;
        if (v36)
        {
          goto LABEL_51;
        }

        *(v4 + 16) = v37;
      }
    }

    else
    {

      v1 = v26;
      v3 = v40;
      if (v27)
      {
        goto LABEL_48;
      }
    }

    ++v0;
  }

  return v4;
}

id sub_1CA56A378(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t *a4, uint64_t *a5)
{
  a3(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v7 = sub_1CA94C648();

  return v7;
}

WFTriggerDirectoryBridge __swiftcall WFTriggerDirectoryBridge.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_1CA56A4A4()
{
  result = qword_1EC4465C0;
  if (!qword_1EC4465C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4465C0);
  }

  return result;
}

unint64_t sub_1CA56A4FC()
{
  result = qword_1EC4465C8;
  if (!qword_1EC4465C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4465D0, &qword_1CA98B730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4465C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WFTriggerCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WFTriggerCategory(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t type metadata accessor for WFTriggerDirectoryBridge()
{
  result = qword_1EC4465D8;
  if (!qword_1EC4465D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4465D8);
  }

  return result;
}

id sub_1CA56A7BC()
{
  v106 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9CDB50;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("task|todo|to-do", 15);
  v6 = v5;
  v7 = sub_1CA94C438("task|todo|to-do", 15);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v109 = v11;
  v112 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v100 - v112;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v107 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v110 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v111 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v100 - v111;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v108 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v105 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Shows the specified list in the Reminders app.", 46);
  v103 = v27;
  v28 = sub_1CA94C438("Shows the specified list in the Reminders app.", 46);
  v30 = v29;
  v104 = &v100;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v100 - v112;
  sub_1CA948D98();
  v32 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v100 - v111;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v103, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v108;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v105;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"LocallyProcessesData";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v38;
  *(inited + 232) = @"Name";
  v39 = @"LocallyProcessesData";
  v40 = @"Name";
  v41 = sub_1CA94C438("Open Reminders List (Action Name)", 33);
  v43 = v42;
  v44 = sub_1CA94C438("Open Reminders List", 19);
  v46 = v45;
  v105 = &v100;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v100 - v112;
  sub_1CA948D98();
  v48 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v100 - v111;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 264) = v108;
  *(inited + 272) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v105 = swift_allocObject();
  *(v105 + 1) = xmmword_1CA9813B0;
  v104 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1CA981350;
  *(v51 + 32) = @"Class";
  *(v51 + 40) = 0xD00000000000001ELL;
  *(v51 + 48) = 0x80000001CA9B3400;
  *(v51 + 64) = MEMORY[0x1E69E6158];
  *(v51 + 72) = @"Description";
  v52 = @"Parameters";
  v53 = @"Class";
  v54 = @"Description";
  v55 = sub_1CA94C438("The list to show (WFList)", 25);
  v101 = v56;
  v102 = v55;
  v57 = sub_1CA94C438("The list to show", 16);
  v100 = v58;
  v103 = &v100;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v100 - v112;
  sub_1CA948D98();
  v60 = v107;
  v61 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v100 - v111;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v51 + 80) = sub_1CA2F9F14(v102, v101, v57, v100, 0, 0, v59, v62);
  *(v51 + 104) = v108;
  *(v51 + 112) = @"Key";
  *(v51 + 120) = 0x7473694C4657;
  *(v51 + 128) = 0xE600000000000000;
  *(v51 + 144) = MEMORY[0x1E69E6158];
  *(v51 + 152) = @"Label";
  v64 = @"Key";
  v65 = @"Label";
  v66 = sub_1CA94C438("List (WFList)", 13);
  v101 = v67;
  v102 = v66;
  v68 = sub_1CA94C438("List", 4);
  v70 = v69;
  v103 = &v100;
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v100 - v112;
  sub_1CA948D98();
  v72 = [v60 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v100 - v111;
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v75 = sub_1CA2F9F14(v102, v101, v68, v70, 0, 0, v71, v73);
  *(v51 + 184) = v108;
  *(v51 + 160) = v75;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v76 = sub_1CA94C1E8();
  v77 = sub_1CA2F864C(v76);
  v78 = v105;
  v105[4] = v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 280) = v78;
  *(inited + 304) = v79;
  *(inited + 312) = @"ParameterSummary";
  v80 = @"ParameterSummary";
  v81 = sub_1CA94C438("Open ${WFList} (Parameter Summary)", 34);
  v83 = v82;
  v84 = sub_1CA94C438("Open ${WFList}", 14);
  v86 = v85;
  v108 = &v100;
  MEMORY[0x1EEE9AC00](v84);
  v87 = &v100 - v112;
  sub_1CA948D98();
  v88 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v100 - v111;
  sub_1CA948B68();

  v90 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v91 = sub_1CA2F9F14(v81, v83, v84, v86, 0, 0, v87, v89);
  v92 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v93 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v92;
  *(inited + 344) = v93;
  *(inited + 352) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1CA97EDF0;
  *(v94 + 56) = MEMORY[0x1E69E6158];
  *(v94 + 32) = 0xD000000000000018;
  *(v94 + 40) = 0x80000001CA993D70;
  v113 = 3;
  v114 = 1;
  v95 = type metadata accessor for WFDeviceIdiomResource();
  v96 = objc_allocWithZone(v95);
  v97 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v113);
  *(v94 + 88) = v95;
  *(v94 + 64) = v98;
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 360) = v94;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA56B418()
{
  v120 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9A9740;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("camera|roll|picture|photo|animated", 34);
  v6 = v5;
  v7 = sub_1CA94C438("camera|roll|picture|photo|animated", 34);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v126 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v127 = v11;
  v12 = &v116 - v126;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v124 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v125 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v123 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v116 - v123;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v122 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v121 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Gets the most recent burst photos from the photo library.", 57);
  v118 = v27;
  v28 = sub_1CA94C438("Gets the most recent burst photos from the photo library.", 57);
  v30 = v29;
  v119 = &v116;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v116 - v126;
  sub_1CA948D98();
  v32 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v116 - v123;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v118, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v122;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v121;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"DisabledOnPlatforms";
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v121 = v38;
  *(inited + 200) = &unk_1F4A068B0;
  *(inited + 224) = v38;
  *(inited + 232) = @"LocallyProcessesData";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v39;
  *(inited + 272) = @"Name";
  v40 = @"DisabledOnPlatforms";
  v41 = @"LocallyProcessesData";
  v42 = @"Name";
  v43 = sub_1CA94C438("Get Latest Bursts (Action Name)", 31);
  v117 = v44;
  v118 = v43;
  v45 = sub_1CA94C438("Get Latest Bursts", 17);
  v47 = v46;
  v119 = &v116;
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v116 - v126;
  sub_1CA948D98();
  v49 = v124;
  v50 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = v123;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v118, v117, v45, v47, 0, 0, v48, &v116 - v51);
  v53 = v122;
  *(inited + 304) = v122;
  *(inited + 312) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_1CA9813C0;
  *(v54 + 32) = 0x656C7069746C754DLL;
  *(v54 + 40) = 0xE800000000000000;
  *(v54 + 48) = 1;
  *(v54 + 72) = MEMORY[0x1E69E6370];
  *(v54 + 80) = 0x614E74757074754FLL;
  *(v54 + 88) = 0xEA0000000000656DLL;
  v55 = @"Output";
  v56 = sub_1CA94C438("Latest Bursts (Default Output Name)", 35);
  v117 = v57;
  v118 = v56;
  v58 = sub_1CA94C438("Latest Bursts", 13);
  v116 = v59;
  v119 = &v116;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v116 - v126;
  sub_1CA948D98();
  v61 = [v49 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 96) = sub_1CA2F9F14(v118, v117, v58, v116, 0, 0, v60, &v116 - v51);
  *(v54 + 120) = v53;
  *(v54 + 128) = 0x7365707954;
  *(v54 + 168) = v121;
  *(v54 + 136) = 0xE500000000000000;
  *(v54 + 144) = &unk_1F4A068E0;
  v63 = MEMORY[0x1E69E6158];
  v64 = sub_1CA94C1E8();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v64;
  *(inited + 344) = v65;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v119 = swift_allocObject();
  *(v119 + 1) = xmmword_1CA9813B0;
  v118 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1CA981370;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000012;
  *(v66 + 48) = 0x80000001CA99B980;
  *(v66 + 64) = v63;
  *(v66 + 72) = @"DefaultValue";
  v67 = MEMORY[0x1E69E6530];
  *(v66 + 80) = 1;
  *(v66 + 104) = v67;
  *(v66 + 112) = @"Key";
  *(v66 + 120) = 0xD000000000000015;
  *(v66 + 128) = 0x80000001CA9A9870;
  *(v66 + 144) = v63;
  *(v66 + 152) = @"StepperDescription";
  v68 = @"Parameters";
  v69 = @"Class";
  v70 = @"DefaultValue";
  v71 = @"Key";
  v72 = @"StepperDescription";
  v73 = sub_1CA94C438("Number of Bursts (WFGetLatestPhotoCount)", 40);
  v116 = v74;
  v75 = sub_1CA94C438("Number of Bursts", 16);
  v77 = v76;
  v117 = &v116;
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v116 - v126;
  sub_1CA948D98();
  v79 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v116 - v123;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 160) = sub_1CA2F9F14(v73, v116, v75, v77, 0, 0, v78, v80);
  *(v66 + 184) = v122;
  *(v66 + 192) = @"StepperNoun";
  v82 = @"StepperNoun";
  v83 = sub_1CA94C438("%d Bursts", v116);
  v116 = v84;
  v117 = v83;
  v85 = v84;
  v132 = 0;
  v133 = 0xE000000000000000;
  sub_1CA94D408();

  v132 = v83;
  v133 = v85;
  v130 = 10;
  v131 = 0xE100000000000000;
  v128 = 32;
  v129 = 0xE100000000000000;
  sub_1CA27BAF0();
  v132 = sub_1CA94D1B8();
  v133 = v86;
  v87 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v88 = v132;
  v89 = v133;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v116 - v126;
  sub_1CA948D98();
  v91 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v116 - v123;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v88, v89, v117, v116, 0, 0, v90, v92);
  *(v66 + 224) = v122;
  *(v66 + 200) = v94;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v95 = sub_1CA94C1E8();
  v96 = sub_1CA2F864C(v95);
  v97 = v119;
  v119[4] = v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v97;
  *(inited + 384) = v98;
  *(inited + 392) = @"ParameterSummary";
  v99 = @"ParameterSummary";
  v100 = sub_1CA94C438("Get the latest ${WFGetLatestPhotoCount} (Parameter Summary)", 59);
  v102 = v101;
  v103 = sub_1CA94C438("Get the latest ${WFGetLatestPhotoCount}", 39);
  v105 = v104;
  v122 = &v116;
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v116 - v126;
  sub_1CA948D98();
  v107 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v116 - v123;
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v110 = sub_1CA2F9F14(v100, v102, v103, v105, 0, 0, v106, v108);
  v111 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v112 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v111;
  *(inited + 424) = v112;
  *(inited + 432) = @"RequiredResources";
  *(inited + 464) = v121;
  *(inited + 440) = &unk_1F4A06910;
  v113 = @"RequiredResources";
  v114 = sub_1CA94C368();
  *(inited + 504) = MEMORY[0x1E69E6158];
  *(inited + 472) = v114;
  *(inited + 480) = 0x7473727542;
  *(inited + 488) = 0xE500000000000000;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA56C2F0()
{
  v82 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981340;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9B55E0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("select|phone|number|telephone|addressbook", 41);
  v6 = v5;
  v7 = sub_1CA94C438("select|phone|number|telephone|addressbook", 41);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v87 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v88 = v11;
  v12 = &v76 - v87;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v86 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v84 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v85 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v76 - v85;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v83 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 144) = v81;
  *(inited + 120) = v21;
  *(inited + 152) = sub_1CA94C368();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v80 = v22;
  *(inited + 160) = &unk_1F4A06980;
  *(inited + 184) = v22;
  *(inited + 192) = @"Description";
  v79 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Prompts to pick a phone number from your contacts and passes the selection to the next action.", 94);
  v77 = v27;
  v28 = sub_1CA94C438("Prompts to pick a phone number from your contacts and passes the selection to the next action.", 94);
  v30 = v29;
  v78 = &v76;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v76 - v87;
  sub_1CA948D98();
  v32 = [v86 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v76 - v85;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v77, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v83;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v79;
  *(inited + 200) = sub_1CA6B3784(v36);
  *(inited + 224) = v37;
  *(inited + 232) = @"IconColor";
  *(inited + 240) = 0x6E65657247;
  *(inited + 248) = 0xE500000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"IconSymbol";
  *(inited + 280) = 0x69662E656E6F6870;
  *(inited + 288) = 0xEA00000000006C6CLL;
  *(inited + 304) = v38;
  *(inited + 312) = @"InputPassthrough";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 320) = 0;
  *(inited + 344) = v39;
  *(inited + 352) = @"LocallyProcessesData";
  *(inited + 360) = 1;
  *(inited + 384) = v39;
  *(inited + 392) = @"Name";
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"InputPassthrough";
  v43 = @"LocallyProcessesData";
  v44 = @"Name";
  v45 = sub_1CA94C438("Select Phone Number (Action Name)", 33);
  v47 = v46;
  v48 = sub_1CA94C438("Select Phone Number", 19);
  v50 = v49;
  v79 = &v76;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v76 - v87;
  sub_1CA948D98();
  v52 = [v86 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v76 - v85;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 400) = sub_1CA2F9F14(v45, v47, v48, v50, 0, 0, v51, v53);
  *(inited + 424) = v83;
  *(inited + 432) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v55 = swift_initStackObject();
  *(v55 + 16) = xmmword_1CA9813C0;
  *(v55 + 32) = 0x656C7069746C754DLL;
  *(v55 + 40) = 0xE800000000000000;
  *(v55 + 48) = 1;
  *(v55 + 72) = MEMORY[0x1E69E6370];
  *(v55 + 80) = 0x614E74757074754FLL;
  *(v55 + 88) = 0xEA0000000000656DLL;
  v56 = @"Output";
  v57 = sub_1CA94C438("Phone Numbers (Default Output Name)", 35);
  v78 = v58;
  v59 = sub_1CA94C438("Phone Numbers", 13);
  v61 = v60;
  v79 = &v76;
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v76 - v87;
  sub_1CA948D98();
  v63 = [v86 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v76 - v85;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v66 = sub_1CA2F9F14(v57, v78, v59, v61, 0, 0, v62, v64);
  v67 = v80;
  *(v55 + 96) = v66;
  *(v55 + 120) = v83;
  *(v55 + 128) = 0x7365707954;
  *(v55 + 168) = v67;
  *(v55 + 136) = 0xE500000000000000;
  *(v55 + 144) = &unk_1F4A069B0;
  v68 = sub_1CA94C1E8();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 440) = v68;
  *(inited + 464) = v69;
  *(inited + 472) = @"RequiredResources";
  *(inited + 480) = &unk_1F4A069E0;
  *(inited + 504) = v67;
  *(inited + 512) = @"SuggestedAsInitialAction";
  *(inited + 544) = MEMORY[0x1E69E6370];
  *(inited + 520) = 0;
  *(inited + 552) = @"UserInterfaceClasses";
  v70 = @"RequiredResources";
  v71 = @"SuggestedAsInitialAction";
  v72 = @"UserInterfaceClasses";
  v73 = sub_1CA94C1E8();
  *(inited + 584) = v81;
  *(inited + 560) = v73;
  *(inited + 592) = @"UserInterfaces";
  *(inited + 624) = v67;
  *(inited + 600) = &unk_1F4A06A90;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v74 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA56CCF0()
{
  v230 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9CDEE0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("podcast|search", 14);
  v6 = v5;
  v7 = sub_1CA94C438("podcast|search", 14);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v245 = v11;
  v243 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v224 - v243;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v241 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v244 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v246 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v224 - v246;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v242 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v239 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Finds podcasts in the Apple Podcasts catalog, returning the items that match the specified search terms.", 104);
  v28 = v27;
  v29 = sub_1CA94C438("Finds podcasts in the Apple Podcasts catalog, returning the items that match the specified search terms.", 104);
  v31 = v30;
  v238 = &v224;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v224 - v243;
  sub_1CA948D98();
  v33 = [v241 bundleURL];
  v240 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v224 - v246;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v26, v28, v29, v31, 0, 0, v32, v35);
  *(v23 + 64) = v242;
  *(v23 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v38 = sub_1CA94C1E8();
  v39 = v239;
  v40 = sub_1CA6B3784(v38);
  v41 = v240;
  v240[20] = v40;
  v41[23] = v39;
  v41[24] = @"InputPassthrough";
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 200) = 0;
  v41[28] = v42;
  v41[29] = @"Name";
  v43 = @"InputPassthrough";
  v44 = @"Name";
  v45 = sub_1CA94C438("Find Podcasts (Action Name)", 27);
  v47 = v46;
  v48 = sub_1CA94C438("Find Podcasts", 13);
  v50 = v49;
  v239 = &v224;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v224 - v243;
  sub_1CA948D98();
  v52 = v241;
  v53 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v224 - v246;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v56 = sub_1CA2F9F14(v45, v47, v48, v50, 0, 0, v51, v54);
  v57 = v240;
  v240[30] = v56;
  v58 = v242;
  v57[33] = v242;
  v57[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v59 = swift_initStackObject();
  *(v59 + 16) = xmmword_1CA981350;
  *(v59 + 32) = 0x75736F6C63736944;
  *(v59 + 40) = 0xEF6C6576654C6572;
  *(v59 + 48) = 0x63696C627550;
  *(v59 + 56) = 0xE600000000000000;
  *(v59 + 72) = MEMORY[0x1E69E6158];
  *(v59 + 80) = 0x656C7069746C754DLL;
  *(v59 + 88) = 0xE800000000000000;
  *(v59 + 96) = 1;
  *(v59 + 120) = MEMORY[0x1E69E6370];
  *(v59 + 128) = 0x614E74757074754FLL;
  *(v59 + 136) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v61 = sub_1CA94C438("Podcasts (Default Output Name)", 30);
  v238 = v62;
  v63 = sub_1CA94C438("Podcasts", 8);
  v65 = v64;
  v239 = &v224;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v224 - v243;
  sub_1CA948D98();
  v67 = [v52 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v224 - v246;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 144) = sub_1CA2F9F14(v61, v238, v63, v65, 0, 0, v66, v68);
  *(v59 + 168) = v58;
  *(v59 + 176) = 0x7365707954;
  *(v59 + 184) = 0xE500000000000000;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v59 + 216) = v229;
  *(v59 + 192) = &unk_1F4A06B10;
  v70 = MEMORY[0x1E69E6158];
  v71 = sub_1CA94C1E8();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v73 = v240;
  v240[35] = v71;
  v73[38] = v72;
  v73[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v236 = swift_allocObject();
  *(v236 + 16) = xmmword_1CA981560;
  v235 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1CA981380;
  *(v74 + 32) = @"Class";
  *(v74 + 40) = 0xD000000000000014;
  *(v74 + 48) = 0x80000001CA99B500;
  *(v74 + 64) = v70;
  *(v74 + 72) = @"Key";
  strcpy((v74 + 80), "WFSearchTerm");
  *(v74 + 93) = 0;
  *(v74 + 94) = -5120;
  *(v74 + 104) = v70;
  *(v74 + 112) = @"Label";
  v75 = @"Class";
  v76 = @"Key";
  v77 = @"Label";
  v78 = v75;
  v79 = v76;
  v80 = v77;
  v232 = v78;
  v231 = v79;
  v233 = v80;
  v81 = @"Parameters";
  v238 = sub_1CA94C438("Search (WFSearchTerm)", 21);
  *&v234 = v82;
  v83 = sub_1CA94C438("Search", 6);
  v228 = v84;
  v239 = &v224;
  MEMORY[0x1EEE9AC00](v83);
  v85 = v243;
  sub_1CA948D98();
  v86 = v241;
  v87 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v224 - v246;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 120) = sub_1CA2F9F14(v238, v234, v83, v228, 0, 0, &v224 - v85, v88);
  v90 = v242;
  *(v74 + 144) = v242;
  *(v74 + 152) = @"Placeholder";
  v91 = @"Placeholder";
  v238 = sub_1CA94C438("Podcasts (WFSearchTerm)", 23);
  *&v234 = v92;
  v93 = sub_1CA94C438("Podcasts", 8);
  v228 = v94;
  v239 = &v224;
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v224 - v85;
  sub_1CA948D98();
  v96 = [v86 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  v97 = v246;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 160) = sub_1CA2F9F14(v238, v234, v93, v228, 0, 0, v95, &v224 - v97);
  *(v74 + 184) = v90;
  *(v74 + 192) = @"Prompt";
  v99 = @"Prompt";
  v238 = sub_1CA94C438("What podcast did you want to find? (WFSearchTerm)", 49);
  *&v234 = v100;
  v101 = sub_1CA94C438("What podcast did you want to find?", 34);
  v103 = v102;
  v239 = &v224;
  MEMORY[0x1EEE9AC00](v101);
  v104 = &v224 - v243;
  sub_1CA948D98();
  v105 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 200) = sub_1CA2F9F14(v238, v234, v101, v103, 0, 0, v104, &v224 - v97);
  *(v74 + 224) = v242;
  *(v74 + 232) = @"TextAlignment";
  v107 = MEMORY[0x1E69E6158];
  *(v74 + 264) = MEMORY[0x1E69E6158];
  *(v74 + 240) = 0x7468676952;
  *(v74 + 248) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v239 = v108;
  v238 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v109 = @"TextAlignment";
  v110 = sub_1CA94C1E8();
  v111 = sub_1CA2F864C(v110);
  *(v236 + 32) = v111;
  v112 = swift_allocObject();
  v234 = xmmword_1CA9813C0;
  *(v112 + 16) = xmmword_1CA9813C0;
  v227 = 0xD00000000000001DLL;
  v228 = 0x80000001CA99FB10;
  v114 = v231;
  v113 = v232;
  *(v112 + 32) = v232;
  *(v112 + 40) = 0xD00000000000001DLL;
  *(v112 + 48) = 0x80000001CA99FB10;
  *(v112 + 64) = v107;
  *(v112 + 72) = v114;
  *(v112 + 80) = 0x6269727474414657;
  *(v112 + 88) = 0xEB00000000657475;
  v115 = v233;
  *(v112 + 104) = v107;
  *(v112 + 112) = v115;
  v226 = v113;
  v225 = v114;
  v232 = v115;
  v116 = sub_1CA94C438("Search By (WFAttribute)", 23);
  v118 = v117;
  v119 = sub_1CA94C438("Search By", 9);
  v121 = v120;
  v233 = &v224;
  MEMORY[0x1EEE9AC00](v119);
  v122 = &v224 - v243;
  sub_1CA948D98();
  v123 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = &v224 - v246;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v126 = sub_1CA2F9F14(v116, v118, v119, v121, 0, 0, v122, v124);
  *(v112 + 144) = v242;
  *(v112 + 120) = v126;
  v127 = sub_1CA94C1E8();
  v128 = sub_1CA2F864C(v127);
  *(v236 + 40) = v128;
  v129 = swift_allocObject();
  *(v129 + 16) = v234;
  v131 = v226;
  v130 = v227;
  *(v129 + 32) = v226;
  *(v129 + 40) = v130;
  *(v129 + 48) = v228;
  v132 = MEMORY[0x1E69E6158];
  v133 = v225;
  *(v129 + 64) = MEMORY[0x1E69E6158];
  *(v129 + 72) = v133;
  *(v129 + 80) = 0x797469746E454657;
  *(v129 + 88) = 0xE800000000000000;
  v134 = v232;
  *(v129 + 104) = v132;
  *(v129 + 112) = v134;
  v231 = v131;
  v233 = v133;
  v135 = sub_1CA94C438("Results (WFEntity)", 18);
  v227 = v136;
  v137 = sub_1CA94C438("Results", 7);
  v139 = v138;
  v228 = &v224;
  MEMORY[0x1EEE9AC00](v137);
  v140 = &v224 - v243;
  sub_1CA948D98();
  v141 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v141);
  v142 = &v224 - v246;
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v144 = sub_1CA2F9F14(v135, v227, v137, v139, 0, 0, v140, v142);
  *(v129 + 144) = v242;
  *(v129 + 120) = v144;
  v145 = sub_1CA94C1E8();
  v146 = sub_1CA2F864C(v145);
  v147 = v236;
  *(v236 + 48) = v146;
  v148 = swift_allocObject();
  *(v148 + 16) = v234;
  *(v148 + 32) = v231;
  *(v148 + 40) = 0xD000000000000023;
  *(v148 + 48) = 0x80000001CA9CE0E0;
  v149 = MEMORY[0x1E69E6158];
  v150 = v233;
  *(v148 + 64) = MEMORY[0x1E69E6158];
  *(v148 + 72) = v150;
  *(v148 + 80) = 0x72746E756F434657;
  *(v148 + 88) = 0xE900000000000079;
  v151 = v232;
  *(v148 + 104) = v149;
  *(v148 + 112) = v151;
  v152 = sub_1CA94C438("Country (WFCountry)", 19);
  v232 = v153;
  v154 = sub_1CA94C438("Country", 7);
  v156 = v155;
  *&v234 = &v224;
  MEMORY[0x1EEE9AC00](v154);
  v157 = &v224 - v243;
  sub_1CA948D98();
  v158 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v158);
  v159 = &v224 - v246;
  sub_1CA948B68();

  v160 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v161 = sub_1CA2F9F14(v152, v232, v154, v156, 0, 0, v157, v159);
  *(v148 + 144) = v242;
  *(v148 + 120) = v161;
  v162 = sub_1CA94C1E8();
  *(v147 + 56) = sub_1CA2F864C(v162);
  v163 = swift_allocObject();
  *(v163 + 16) = xmmword_1CA981300;
  *(v163 + 32) = v231;
  *(v163 + 40) = 0xD000000000000012;
  *(v163 + 48) = 0x80000001CA99B980;
  v164 = MEMORY[0x1E69E6158];
  *(v163 + 64) = MEMORY[0x1E69E6158];
  *(v163 + 72) = @"DefaultValue";
  v165 = MEMORY[0x1E69E6530];
  *(v163 + 80) = 25;
  v166 = v233;
  *(v163 + 104) = v165;
  *(v163 + 112) = v166;
  *(v163 + 120) = 0x694C6D6574494657;
  *(v163 + 128) = 0xEB0000000074696DLL;
  *(v163 + 144) = v164;
  *(v163 + 152) = @"MaximumValue";
  *(v163 + 160) = 100;
  *(v163 + 184) = v165;
  *(v163 + 192) = @"MinimumValue";
  *(v163 + 200) = 1;
  *(v163 + 224) = v165;
  *(v163 + 232) = @"StepperPrefix";
  v167 = @"DefaultValue";
  v168 = @"MaximumValue";
  v169 = @"MinimumValue";
  v170 = @"StepperPrefix";
  v171 = sub_1CA94C438("Get (WFItemLimit)", 17);
  v233 = v172;
  *&v234 = v171;
  v173 = sub_1CA94C438("Get", 3);
  v232 = v174;
  v237 = &v224;
  MEMORY[0x1EEE9AC00](v173);
  v175 = &v224 - v243;
  sub_1CA948D98();
  v176 = v241;
  v177 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v177);
  v178 = &v224 - v246;
  sub_1CA948B68();

  v179 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v163 + 240) = sub_1CA2F9F14(v234, v233, v173, v232, 0, 0, v175, v178);
  *(v163 + 264) = v242;
  *(v163 + 272) = @"StepperDescription";
  v180 = @"StepperDescription";
  v181 = sub_1CA94C438("Number of Items (WFItemLimit)", 29);
  v233 = v182;
  *&v234 = v181;
  v183 = sub_1CA94C438("Number of Items", 15);
  v232 = v184;
  v237 = &v224;
  MEMORY[0x1EEE9AC00](v183);
  v185 = v243;
  sub_1CA948D98();
  v186 = [v176 bundleURL];
  MEMORY[0x1EEE9AC00](v186);
  v187 = &v224 - v246;
  sub_1CA948B68();

  v188 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v163 + 280) = sub_1CA2F9F14(v234, v233, v183, v232, 0, 0, &v224 - v185, v187);
  *(v163 + 304) = v242;
  *(v163 + 312) = @"StepperNoun";
  v189 = @"StepperNoun";
  v190 = sub_1CA94C438("Items", 5);
  v237 = v190;
  v192 = v191;
  *&v234 = v191;
  v251 = 0;
  v252 = 0xE000000000000000;
  sub_1CA94D408();

  v251 = v190;
  v252 = v192;
  v249 = 10;
  v250 = 0xE100000000000000;
  v247 = 32;
  v248 = 0xE100000000000000;
  sub_1CA27BAF0();
  v251 = sub_1CA94D1B8();
  v252 = v193;
  v194 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v195 = v251;
  v196 = v252;
  MEMORY[0x1EEE9AC00](v194);
  sub_1CA948D98();
  v197 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v197);
  v198 = &v224 - v246;
  sub_1CA948B68();

  v199 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v200 = sub_1CA2F9F14(v195, v196, v237, v234, 0, 0, &v224 - v185, v198);
  *(v163 + 344) = v242;
  *(v163 + 320) = v200;
  v201 = sub_1CA94C1E8();
  v202 = sub_1CA2F864C(v201);
  v203 = v236;
  *(v236 + 64) = v202;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v205 = v240;
  v240[40] = v203;
  v205[43] = v204;
  v205[44] = @"ParameterSummary";
  v206 = @"ParameterSummary";
  v207 = sub_1CA94C438("Find ${WFSearchTerm} (Parameter Summary)", 40);
  v209 = v208;
  v210 = sub_1CA94C438("Find ${WFSearchTerm}", 20);
  v212 = v211;
  MEMORY[0x1EEE9AC00](v210);
  sub_1CA948D98();
  v213 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v213);
  v214 = &v224 - v246;
  sub_1CA948B68();

  v215 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v216 = sub_1CA2F9F14(v207, v209, v210, v212, 0, 0, &v224 - v185, v214);
  v217 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v218 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v219 = v240;
  v240[45] = v217;
  v219[48] = v218;
  v219[49] = @"RequiredResources";
  v219[53] = v229;
  v219[50] = &unk_1F4A06B40;
  v220 = v219;
  v221 = @"RequiredResources";
  v220[54] = sub_1CA94C368();
  v220[55] = 0x7374736163646F50;
  v220[56] = 0xE800000000000000;
  v220[58] = MEMORY[0x1E69E6158];
  v220[59] = @"SuggestedAsInitialAction";
  v220[63] = MEMORY[0x1E69E6370];
  *(v220 + 480) = 0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v222 = @"SuggestedAsInitialAction";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA56E6F8()
{
  v37 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A2900;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"DisabledOnPlatforms";
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 120) = &unk_1F4A06BB0;
  *(inited + 144) = v6;
  *(inited + 152) = @"Input";
  v7 = @"DisabledOnPlatforms";
  v8 = @"Input";
  v9 = sub_1CA94C1E8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442F0, &qword_1CA982FA8);
  *(inited + 160) = v9;
  *(inited + 184) = v10;
  *(inited + 192) = @"LocallyProcessesData";
  v11 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v11;
  *(inited + 232) = @"Name";
  v12 = @"LocallyProcessesData";
  v13 = @"Name";
  v14 = sub_1CA94C438("Find Photos (Action Name)", 25);
  v35 = v15;
  v16 = sub_1CA94C438("Find Photos", 11);
  v18 = v17;
  v19 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v36 = 0x80000001CA993410;
  v22 = [qword_1EDB9F690 bundleURL];
  v23 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v26 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v27 = sub_1CA2F9F14(v14, v35, v16, v18, 0, 0, v21, v25);
  v28 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 240) = v27;
  *(inited + 264) = v28;
  *(inited + 272) = @"RequiredResources";
  *(inited + 280) = &unk_1F4A06C40;
  *(inited + 304) = v6;
  *(inited + 312) = @"SuggestedAsInitialAction";
  *(inited + 344) = MEMORY[0x1E69E6370];
  *(inited + 320) = 0;
  v29 = @"RequiredResources";
  v30 = @"SuggestedAsInitialAction";
  v31 = sub_1CA94C368();
  v32 = MEMORY[0x1E69E6158];
  *(inited + 384) = MEMORY[0x1E69E6158];
  *(inited + 352) = v31;
  *(inited + 360) = 0xD000000000000017;
  *(inited + 368) = v36;
  v33 = sub_1CA94C368();
  *(inited + 424) = v32;
  *(inited + 392) = v33;
  *(inited + 400) = 0x6D75626C41;
  *(inited + 408) = 0xE500000000000000;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA56EBA8()
{
  v204 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x6C69467465474657;
  *(inited + 48) = 0xEF6E6F6974634165;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v216 = inited;
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("file|document|filepicker|select", 31);
  v6 = v5;
  v7 = sub_1CA94C438("file|document|filepicker|select", 31);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v221 = v11;
  v217 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v201 - v217;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v218 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v222 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v219 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v201 - v219;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v220 = v19;
  v20 = v216;
  v216[10] = v18;
  v20[13] = v19;
  v20[14] = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v20[15] = v22;
  v20[18] = v23;
  v20[19] = @"Description";
  v215 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v209 = xmmword_1CA981310;
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438("Gets a file or folder by a relative path, starting at a folder you choose.", 74);
  v213 = v28;
  v29 = sub_1CA94C438("Gets a file or folder by a relative path, starting at a folder you choose.", 74);
  v31 = v30;
  v214 = &v201;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v201 - v217;
  sub_1CA948D98();
  v33 = [v218 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v201 - v219;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v213, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v220;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v37 = sub_1CA94C1E8();
  v38 = v215;
  v20[20] = sub_1CA6B3784(v37);
  v20[23] = v38;
  v20[24] = @"IconColor";
  v20[25] = 1953392980;
  v20[26] = 0xE400000000000000;
  v39 = MEMORY[0x1E69E6158];
  v20[28] = MEMORY[0x1E69E6158];
  v20[29] = @"IconSymbol";
  v20[30] = 0x662E7265646C6F66;
  v20[31] = 0xEB000000006C6C69;
  v20[33] = v39;
  v20[34] = @"IconSymbolColor";
  v20[35] = 1702194242;
  v20[36] = 0xE400000000000000;
  v20[38] = v39;
  v20[39] = @"Input";
  v40 = v39;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v41 = swift_initStackObject();
  v212 = xmmword_1CA981350;
  *(v41 + 16) = xmmword_1CA981350;
  *(v41 + 32) = 0x656C7069746C754DLL;
  *(v41 + 40) = 0xE800000000000000;
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 48) = 1;
  *(v41 + 72) = v42;
  strcpy((v41 + 80), "ParameterKey");
  *(v41 + 93) = 0;
  *(v41 + 94) = -5120;
  *(v41 + 96) = 0x656C69464657;
  *(v41 + 104) = 0xE600000000000000;
  *(v41 + 120) = v40;
  *(v41 + 128) = 0x6465726975716552;
  *(v41 + 136) = 0xE800000000000000;
  *(v41 + 144) = 1;
  *(v41 + 168) = v42;
  *(v41 + 176) = 0x7365707954;
  *(v41 + 184) = 0xE500000000000000;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v41 + 216) = v213;
  *(v41 + 192) = &unk_1F4A06CE8;
  v43 = @"IconColor";
  v44 = @"IconSymbol";
  v45 = @"IconSymbolColor";
  v46 = @"Input";
  v47 = sub_1CA94C1E8();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v215 = v48;
  v20[40] = v47;
  v20[43] = v48;
  v20[44] = @"Name";
  v49 = @"Name";
  v211 = sub_1CA94C438("Get File from Folder (Action Name)", 34);
  v51 = v50;
  v52 = sub_1CA94C438("Get File from Folder", 20);
  v54 = v53;
  v214 = &v201;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v201 - v217;
  sub_1CA948D98();
  v56 = v218;
  v57 = [v218 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = v219;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v60 = sub_1CA2F9F14(v211, v51, v52, v54, 0, 0, v55, &v201 - v58);
  v61 = v216;
  v216[45] = v60;
  v62 = v220;
  v61[48] = v220;
  v61[49] = @"Output";
  v63 = swift_allocObject();
  *(v63 + 16) = v212;
  *(v63 + 32) = 0x75736F6C63736944;
  *(v63 + 40) = 0xEF6C6576654C6572;
  *(v63 + 48) = 0x63696C627550;
  *(v63 + 56) = 0xE600000000000000;
  *(v63 + 72) = MEMORY[0x1E69E6158];
  *(v63 + 80) = 0x656C7069746C754DLL;
  *(v63 + 88) = 0xE800000000000000;
  *(v63 + 96) = 1;
  *(v63 + 120) = MEMORY[0x1E69E6370];
  *(v63 + 128) = 0x614E74757074754FLL;
  *(v63 + 136) = 0xEA0000000000656DLL;
  v64 = @"Output";
  v65 = sub_1CA94C438("File (Default Output Name)", 26);
  v210 = v66;
  v211 = v65;
  v67 = sub_1CA94C438("File", 4);
  v69 = v68;
  v214 = &v201;
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v201 - v217;
  sub_1CA948D98();
  v71 = [v56 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 144) = sub_1CA2F9F14(v211, v210, v67, v69, 0, 0, v70, &v201 - v58);
  *(v63 + 168) = v62;
  *(v63 + 176) = 0x7365707954;
  *(v63 + 216) = v213;
  *(v63 + 184) = 0xE500000000000000;
  *(v63 + 192) = &unk_1F4A06D18;
  v73 = MEMORY[0x1E69E6158];
  v74 = sub_1CA94C1E8();
  v75 = v216;
  v216[50] = v74;
  v75[53] = v215;
  v75[54] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v215 = swift_allocObject();
  *(v215 + 16) = xmmword_1CA981570;
  v214 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v76 = swift_allocObject();
  *(v76 + 16) = v212;
  v207 = 0x80000001CA99E620;
  *(v76 + 32) = @"Class";
  *(v76 + 40) = 0xD000000000000011;
  *(v76 + 48) = 0x80000001CA99E620;
  *(v76 + 64) = v73;
  *(v76 + 72) = @"DefaultValue";
  *(v76 + 80) = 1;
  *(v76 + 104) = MEMORY[0x1E69E6370];
  *(v76 + 112) = @"Key";
  v203 = 0xD000000000000015;
  *(v76 + 120) = 0xD000000000000015;
  *(v76 + 128) = 0x80000001CA9CE2D0;
  *(v76 + 144) = v73;
  *(v76 + 152) = @"Label";
  v77 = @"Class";
  v78 = @"Key";
  v79 = @"Label";
  v80 = v77;
  v81 = v78;
  v82 = v79;
  v83 = @"DefaultValue";
  v205 = v80;
  v206 = v81;
  v202 = v82;
  v201 = v83;
  v84 = @"Parameters";
  v85 = sub_1CA94C438("Error If Not Found (WFFileErrorIfNotFound)", 42);
  v211 = v86;
  v87 = sub_1CA94C438("Error If Not Found", 18);
  v89 = v88;
  *&v212 = &v201;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v201 - v217;
  sub_1CA948D98();
  v91 = [v218 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v201 - v219;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v85, v211, v87, v89, 0, 0, v90, v92);
  *(v76 + 184) = v220;
  *(v76 + 160) = v94;
  _s3__C3KeyVMa_0(0);
  *&v212 = v95;
  v211 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v96 = sub_1CA94C1E8();
  v97 = sub_1CA2F864C(v96);
  *(v215 + 32) = v97;
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_1CA981370;
  v99 = v205;
  *(v98 + 32) = v205;
  *(v98 + 40) = 0xD000000000000011;
  v100 = v206;
  *(v98 + 48) = v207;
  v101 = MEMORY[0x1E69E6158];
  v102 = v201;
  *(v98 + 64) = MEMORY[0x1E69E6158];
  *(v98 + 72) = v102;
  *(v98 + 80) = 0;
  v103 = MEMORY[0x1E69E6370];
  *(v98 + 104) = MEMORY[0x1E69E6370];
  *(v98 + 112) = @"Hidden";
  *(v98 + 120) = 1;
  *(v98 + 144) = v103;
  *(v98 + 152) = v100;
  *(v98 + 160) = 0xD000000000000013;
  *(v98 + 168) = 0x80000001CA9CE340;
  v104 = v202;
  *(v98 + 184) = v101;
  *(v98 + 192) = v104;
  v205 = v99;
  v206 = v100;
  v207 = v104;
  v105 = @"Hidden";
  v106 = sub_1CA94C438("If Folder, Fetch Contents (WFGetFolderContents)", 47);
  v201 = v107;
  v108 = sub_1CA94C438("If Folder, Fetch Contents", 25);
  v110 = v109;
  v202 = &v201;
  MEMORY[0x1EEE9AC00](v108);
  v111 = v217;
  sub_1CA948D98();
  v112 = [v218 bundleURL];
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v201 - v219;
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v115 = sub_1CA2F9F14(v106, v201, v108, v110, 0, 0, &v201 - v111, v113);
  *(v98 + 224) = v220;
  *(v98 + 200) = v115;
  v116 = sub_1CA94C1E8();
  v117 = sub_1CA2F864C(v116);
  *(v215 + 40) = v117;
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_1CA981380;
  v119 = v203;
  *(v118 + 32) = v205;
  *(v118 + 40) = v119;
  *(v118 + 48) = 0x80000001CA99B1E0;
  v120 = MEMORY[0x1E69E6158];
  *(v118 + 64) = MEMORY[0x1E69E6158];
  *(v118 + 72) = @"DefaultsToShortcutsFolder";
  *(v118 + 80) = 1;
  v121 = MEMORY[0x1E69E6370];
  *(v118 + 104) = MEMORY[0x1E69E6370];
  *(v118 + 112) = @"Optional";
  *(v118 + 120) = 0;
  *(v118 + 144) = v121;
  *(v118 + 152) = @"FilePickerSupportedTypes";
  *(v118 + 160) = &unk_1F4A06D58;
  v122 = v206;
  *(v118 + 184) = v213;
  *(v118 + 192) = v122;
  *(v118 + 200) = 0x656C69464657;
  *(v118 + 208) = 0xE600000000000000;
  v123 = v207;
  *(v118 + 224) = v120;
  *(v118 + 232) = v123;
  v124 = @"DefaultsToShortcutsFolder";
  v125 = @"Optional";
  v126 = @"FilePickerSupportedTypes";
  v127 = sub_1CA94C438("Folder (WFFile)", 15);
  v202 = v128;
  v129 = sub_1CA94C438("Folder", 6);
  v131 = v130;
  v203 = &v201;
  MEMORY[0x1EEE9AC00](v129);
  sub_1CA948D98();
  v132 = [v218 bundleURL];
  MEMORY[0x1EEE9AC00](v132);
  v133 = &v201 - v219;
  sub_1CA948B68();

  v134 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v135 = sub_1CA2F9F14(v127, v202, v129, v131, 0, 0, &v201 - v111, v133);
  *(v118 + 264) = v220;
  *(v118 + 240) = v135;
  v136 = sub_1CA94C1E8();
  v137 = sub_1CA2F864C(v136);
  *(v215 + 48) = v137;
  v138 = swift_allocObject();
  *(v138 + 16) = xmmword_1CA9813E0;
  *(v138 + 32) = @"AutocapitalizationType";
  *(v138 + 40) = 1701736270;
  *(v138 + 48) = 0xE400000000000000;
  v139 = MEMORY[0x1E69E6158];
  v140 = v205;
  *(v138 + 64) = MEMORY[0x1E69E6158];
  *(v138 + 72) = v140;
  *(v138 + 80) = 0xD000000000000014;
  *(v138 + 88) = 0x80000001CA99B500;
  *(v138 + 104) = v139;
  *(v138 + 112) = @"Description";
  v141 = @"AutocapitalizationType";
  v142 = @"Description";
  v205 = sub_1CA94C438("The relative path to retrieve, such as “folder/file.txt” (WFGetFilePath)", 76);
  v203 = v143;
  v144 = sub_1CA94C438("The relative path to retrieve, such as “folder/file.txt”", 60);
  v146 = v145;
  v210 = &v201;
  MEMORY[0x1EEE9AC00](v144);
  v147 = v217;
  sub_1CA948D98();
  v148 = [v218 bundleURL];
  MEMORY[0x1EEE9AC00](v148);
  v149 = &v201 - v219;
  sub_1CA948B68();

  v150 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v138 + 120) = sub_1CA2F9F14(v205, v203, v144, v146, 0, 0, &v201 - v147, v149);
  *(v138 + 144) = v220;
  *(v138 + 152) = @"DisableAutocorrection";
  *(v138 + 160) = 1;
  v151 = v206;
  *(v138 + 184) = MEMORY[0x1E69E6370];
  *(v138 + 192) = v151;
  strcpy((v138 + 200), "WFGetFilePath");
  *(v138 + 214) = -4864;
  v152 = MEMORY[0x1E69E6158];
  *(v138 + 224) = MEMORY[0x1E69E6158];
  *(v138 + 232) = @"KeyboardType";
  *(v138 + 240) = 0x6372616553626557;
  *(v138 + 248) = 0xE900000000000068;
  v153 = v207;
  *(v138 + 264) = v152;
  *(v138 + 272) = v153;
  v154 = @"DisableAutocorrection";
  v155 = @"KeyboardType";
  v156 = sub_1CA94C438("Path (WFGetFilePath)", 20);
  v206 = v157;
  v207 = v156;
  v158 = sub_1CA94C438("Path", 4);
  v205 = v159;
  v210 = &v201;
  MEMORY[0x1EEE9AC00](v158);
  sub_1CA948D98();
  v160 = v218;
  v161 = [v218 bundleURL];
  MEMORY[0x1EEE9AC00](v161);
  v162 = &v201 - v219;
  sub_1CA948B68();

  v163 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v138 + 280) = sub_1CA2F9F14(v207, v206, v158, v205, 0, 0, &v201 - v147, v162);
  *(v138 + 304) = v220;
  *(v138 + 312) = @"Placeholder";
  v164 = @"Placeholder";
  v165 = sub_1CA94C438("example.txt (WFGetFilePath)", 27);
  v206 = v166;
  v207 = v165;
  v167 = sub_1CA94C438("example.txt", 11);
  v205 = v168;
  v210 = &v201;
  MEMORY[0x1EEE9AC00](v167);
  sub_1CA948D98();
  v169 = [v160 bundleURL];
  MEMORY[0x1EEE9AC00](v169);
  v170 = v219;
  sub_1CA948B68();

  v171 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v138 + 320) = sub_1CA2F9F14(v207, v206, v167, v205, 0, 0, &v201 - v147, &v201 - v170);
  *(v138 + 344) = v220;
  *(v138 + 352) = @"TextAlignment";
  *(v138 + 384) = MEMORY[0x1E69E6158];
  *(v138 + 360) = 1952867660;
  *(v138 + 368) = 0xE400000000000000;
  v172 = @"TextAlignment";
  v173 = sub_1CA94C1E8();
  v174 = sub_1CA2F864C(v173);
  v175 = v215;
  *(v215 + 56) = v174;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v177 = v216;
  v216[55] = v175;
  v177[58] = v176;
  v177[59] = @"ParameterSummary";
  v178 = @"ParameterSummary";
  v179 = sub_1CA94C438("Get file from ${WFFile} at path ${WFGetFilePath} (Parameter Summary)", 68);
  v181 = v180;
  v182 = sub_1CA94C438("Get file from ${WFFile} at path ${WFGetFilePath}", 48);
  v184 = v183;
  v220 = &v201;
  MEMORY[0x1EEE9AC00](v182);
  v185 = &v201 - v217;
  sub_1CA948D98();
  v186 = [v218 bundleURL];
  MEMORY[0x1EEE9AC00](v186);
  sub_1CA948B68();

  v187 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v188 = sub_1CA2F9F14(v179, v181, v182, v184, 0, 0, v185, &v201 - v170);
  v189 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v190 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v191 = v216;
  v216[60] = v189;
  v191[63] = v190;
  v191[64] = @"RemoteExecuteOnPlatforms";
  v191[68] = v213;
  v191[65] = &unk_1F4A06D88;
  v191[69] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v192 = swift_allocObject();
  *(v192 + 16) = v209;
  v193 = swift_initStackObject();
  *(v193 + 16) = xmmword_1CA97EDF0;
  *(v193 + 32) = 0xD000000000000011;
  *(v193 + 40) = 0x80000001CA99B240;
  v194 = swift_allocObject();
  *(v194 + 16) = v209;
  v195 = swift_allocObject();
  *(v195 + 16) = xmmword_1CA9813C0;
  strcpy((v195 + 32), "WFParameterKey");
  *(v195 + 47) = -18;
  *(v195 + 48) = 0xD000000000000010;
  *(v195 + 56) = 0x80000001CA99B260;
  v196 = MEMORY[0x1E69E6158];
  *(v195 + 72) = MEMORY[0x1E69E6158];
  *(v195 + 80) = 0xD000000000000010;
  *(v195 + 88) = 0x80000001CA993570;
  *(v195 + 96) = 1;
  *(v195 + 120) = MEMORY[0x1E69E6370];
  *(v195 + 128) = 0x72756F7365524657;
  *(v195 + 168) = v196;
  *(v195 + 136) = 0xEF7373616C436563;
  *(v195 + 144) = 0xD00000000000001BLL;
  *(v195 + 152) = 0x80000001CA993590;
  v197 = @"RemoteExecuteOnPlatforms";
  v198 = @"RequiredResources";
  *(v194 + 32) = sub_1CA94C1E8();
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v193 + 48) = v194;
  *(v193 + 72) = v199;
  *(v193 + 80) = 0x72756F7365524657;
  *(v193 + 120) = v196;
  *(v193 + 88) = 0xEF7373616C436563;
  *(v193 + 96) = 0xD000000000000019;
  *(v193 + 104) = 0x80000001CA9932D0;
  *(v192 + 32) = sub_1CA94C1E8();
  v191[73] = v199;
  v191[70] = v192;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA570524()
{
  v422 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  v443 = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9CE550;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v454 = sub_1CA94C438("URL|web|display|site|open|show|post|put|api|curl|wget|http|headers|request|form", 79);
  v5 = v4;
  v6 = sub_1CA94C438("URL|web|display|site|open|show|post|put|api|curl|wget|http|headers|request|form", 79);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v458 = v10;
  v459 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v417 - v459;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v456 = qword_1EDB9F690;
  v12 = [qword_1EDB9F690 bundleURL];
  v13 = sub_1CA948BA8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v455 = v14;
  v457 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v417 - v457;
  sub_1CA948B68();

  v16 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v17 = sub_1CA2F9F14(v454, v5, v6, v8, 0, 0, v11, v15);
  v18 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v454 = v18;
  *(inited + 80) = v17;
  *(inited + 104) = v18;
  *(inited + 112) = @"Description";
  v453 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v19 = swift_initStackObject();
  v446 = xmmword_1CA9813C0;
  *(v19 + 16) = xmmword_1CA9813C0;
  *(v19 + 32) = @"DescriptionNote";
  v20 = @"Description";
  v21 = @"DescriptionNote";
  v22 = sub_1CA94C438("To make a multipart HTTP request, choose Form as the request body type and add files as field values.", 103);
  v450 = v23;
  v451 = v22;
  v24 = sub_1CA94C438("To make a multipart HTTP request, choose Form as the request body type and add files as field values.", 103);
  v26 = v25;
  v452 = &v417;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v417 - v459;
  sub_1CA948D98();
  v28 = v456;
  v29 = [v456 bundleURL];
  v444 = inited;
  v30 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v457;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v19 + 40) = sub_1CA2F9F14(v451, v450, v24, v26, 0, 0, v27, &v417 - v31);
  *(v19 + 64) = v454;
  *(v19 + 72) = @"DescriptionResult";
  v33 = @"DescriptionResult";
  v34 = sub_1CA94C438("The fetched data", 16);
  v450 = v35;
  v451 = v34;
  v449 = sub_1CA94C438("The fetched data", 16);
  v37 = v36;
  v452 = &v417;
  MEMORY[0x1EEE9AC00](v449);
  v38 = &v417 - v459;
  sub_1CA948D98();
  v39 = [v28 bundleURL];
  MEMORY[0x1EEE9AC00](v39);
  sub_1CA948B68();

  v40 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v19 + 80) = sub_1CA2F9F14(v451, v450, v449, v37, 0, 0, v38, &v417 - v31);
  v41 = v454;
  *(v19 + 104) = v454;
  *(v19 + 112) = @"DescriptionSummary";
  v42 = @"DescriptionSummary";
  v43 = sub_1CA94C438("Gets the contents of URLs passed into the action. Useful for downloading files and web content, or for making API requests.", 123);
  v450 = v44;
  v451 = v43;
  v45 = sub_1CA94C438("Gets the contents of URLs passed into the action. Useful for downloading files and web content, or for making API requests.", 123);
  v47 = v46;
  v452 = &v417;
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v417 - v459;
  sub_1CA948D98();
  v49 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v417 - v457;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v52 = sub_1CA2F9F14(v451, v450, v45, v47, 0, 0, v48, v50);
  *(v19 + 144) = v41;
  *(v19 + 120) = v52;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v53 = sub_1CA94C1E8();
  v54 = v453;
  v55 = sub_1CA6B3784(v53);
  v56 = v444;
  v444[15] = v55;
  v56[18] = v54;
  v56[19] = @"IconColor";
  v56[20] = 0x6E65657247;
  v56[21] = 0xE500000000000000;
  v57 = MEMORY[0x1E69E6158];
  v56[23] = MEMORY[0x1E69E6158];
  v56[24] = @"IconSymbol";
  v438 = 0xD000000000000015;
  v56[25] = 0xD000000000000015;
  v56[26] = 0x80000001CA9CBE30;
  v56[28] = v57;
  v56[29] = @"Input";
  v58 = v57;
  v59 = v56;
  v447 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v60 = swift_initStackObject();
  v445 = xmmword_1CA981350;
  *(v60 + 16) = xmmword_1CA981350;
  *(v60 + 32) = 0x656C7069746C754DLL;
  *(v60 + 40) = 0xE800000000000000;
  v61 = MEMORY[0x1E69E6370];
  *(v60 + 48) = 1;
  *(v60 + 72) = v61;
  strcpy((v60 + 80), "ParameterKey");
  *(v60 + 93) = 0;
  *(v60 + 94) = -5120;
  *(v60 + 96) = 0x4C52554657;
  *(v60 + 104) = 0xE500000000000000;
  *(v60 + 120) = v58;
  *(v60 + 128) = 0x6465726975716552;
  *(v60 + 136) = 0xE800000000000000;
  *(v60 + 144) = 1;
  *(v60 + 168) = v61;
  *(v60 + 176) = 0x7365707954;
  v62 = v61;
  *(v60 + 184) = 0xE500000000000000;
  v453 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v60 + 216) = v453;
  *(v60 + 192) = &unk_1F4A06DB8;
  v63 = @"IconColor";
  v64 = @"IconSymbol";
  v65 = @"Input";
  v66 = sub_1CA94C1E8();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v452 = v67;
  v59[30] = v66;
  v59[33] = v67;
  v59[34] = @"InputPassthrough";
  *(v59 + 280) = 0;
  v59[38] = v62;
  v59[39] = @"Name";
  v68 = @"InputPassthrough";
  v69 = @"Name";
  v70 = sub_1CA94C438("Get Contents of URL (Action Name)", 33);
  v72 = v71;
  v73 = sub_1CA94C438("Get Contents of URL", 19);
  v75 = v74;
  v451 = &v417;
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v417 - v459;
  sub_1CA948D98();
  v77 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v417 - v457;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v80 = sub_1CA2F9F14(v70, v72, v73, v75, 0, 0, v76, v78);
  v81 = v444;
  v444[40] = v80;
  v82 = v454;
  v81[43] = v454;
  v81[44] = @"Output";
  v83 = swift_allocObject();
  *(v83 + 16) = v445;
  *(v83 + 32) = 0x75736F6C63736944;
  *(v83 + 40) = 0xEF6C6576654C6572;
  *(v83 + 48) = 0x63696C627550;
  *(v83 + 56) = 0xE600000000000000;
  *(v83 + 72) = MEMORY[0x1E69E6158];
  *(v83 + 80) = 0x656C7069746C754DLL;
  *(v83 + 88) = 0xE800000000000000;
  *(v83 + 96) = 1;
  *(v83 + 120) = MEMORY[0x1E69E6370];
  *(v83 + 128) = 0x614E74757074754FLL;
  *(v83 + 136) = 0xEA0000000000656DLL;
  v84 = @"Output";
  v85 = sub_1CA94C438("Contents of URL (Default Output Name)", 37);
  v450 = v86;
  v87 = sub_1CA94C438("Contents of URL", 15);
  v89 = v88;
  v451 = &v417;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v417 - v459;
  sub_1CA948D98();
  v91 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v417 - v457;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v83 + 144) = sub_1CA2F9F14(v85, v450, v87, v89, 0, 0, v90, v92);
  *(v83 + 168) = v82;
  *(v83 + 176) = 0x7365707954;
  *(v83 + 216) = v453;
  *(v83 + 184) = 0xE500000000000000;
  *(v83 + 192) = &unk_1F4A06DE8;
  v94 = MEMORY[0x1E69E6158];
  v95 = sub_1CA94C1E8();
  v96 = v444;
  v444[45] = v95;
  v449 = @"Parameters";
  v96[48] = v452;
  v96[49] = @"Parameters";
  v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v452 = swift_allocObject();
  *(v452 + 1) = xmmword_1CA985370;
  v451 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v450 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1CA9813E0;
  *(v97 + 32) = @"AllowsMultipleValues";
  *(v97 + 40) = 0;
  v98 = MEMORY[0x1E69E6370];
  *(v97 + 64) = MEMORY[0x1E69E6370];
  *(v97 + 72) = @"AutocapitalizationType";
  *(v97 + 80) = 1701736270;
  *(v97 + 88) = 0xE400000000000000;
  *(v97 + 104) = v94;
  *(v97 + 112) = @"Class";
  v441 = 0xD000000000000014;
  *(v97 + 120) = 0xD000000000000014;
  *(v97 + 128) = 0x80000001CA99B500;
  *(v97 + 144) = v94;
  *(v97 + 152) = @"DisableAutocorrection";
  *(v97 + 160) = 1;
  *(v97 + 184) = v98;
  *(v97 + 192) = @"Key";
  *(v97 + 200) = 0x4C52554657;
  *(v97 + 208) = 0xE500000000000000;
  *(v97 + 224) = v94;
  *(v97 + 232) = @"KeyboardType";
  *(v97 + 240) = 5001813;
  *(v97 + 248) = 0xE300000000000000;
  *(v97 + 264) = v94;
  *(v97 + 272) = @"Label";
  v99 = @"Class";
  v100 = @"Key";
  v101 = @"Label";
  v102 = v99;
  v103 = v100;
  v104 = v101;
  v437 = v102;
  v439 = v103;
  v440 = v104;
  v105 = v449;
  v106 = @"AllowsMultipleValues";
  v107 = @"AutocapitalizationType";
  v108 = @"DisableAutocorrection";
  v109 = @"KeyboardType";
  v448 = sub_1CA94C438("URL (WFURL)", 11);
  *&v442 = v110;
  v111 = sub_1CA94C438("URL", 3);
  v436 = v112;
  v449 = &v417;
  MEMORY[0x1EEE9AC00](v111);
  v113 = v459;
  sub_1CA948D98();
  v114 = v456;
  v115 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v417 - v457;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v97 + 280) = sub_1CA2F9F14(v448, v442, v111, v436, 0, 0, &v417 - v113, v116);
  v118 = v454;
  *(v97 + 304) = v454;
  *(v97 + 312) = @"Placeholder";
  v421 = @"Placeholder";
  v119 = sub_1CA94C438("URL (WFURL)", 11);
  v448 = v120;
  v121 = sub_1CA94C438("URL", 3);
  v123 = v122;
  v449 = &v417;
  MEMORY[0x1EEE9AC00](v121);
  v124 = &v417 - v113;
  sub_1CA948D98();
  v125 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v125);
  v126 = &v417 - v457;
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v97 + 320) = sub_1CA2F9F14(v119, v448, v121, v123, 0, 0, v124, v126);
  *(v97 + 344) = v118;
  *(v97 + 352) = @"TextContentType";
  v128 = MEMORY[0x1E69E6158];
  *(v97 + 384) = MEMORY[0x1E69E6158];
  *(v97 + 360) = 5001813;
  *(v97 + 368) = 0xE300000000000000;
  _s3__C3KeyVMa_0(0);
  v449 = v129;
  v448 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v130 = @"TextContentType";
  v131 = sub_1CA94C1E8();
  v132 = sub_1CA2F864C(v131);
  v452[4] = v132;
  v133 = swift_allocObject();
  v442 = xmmword_1CA981400;
  *(v133 + 16) = xmmword_1CA981400;
  v433 = 0x80000001CA99C4A0;
  v434 = 0xD000000000000016;
  v134 = v437;
  *(v133 + 32) = v437;
  *(v133 + 40) = 0xD000000000000016;
  *(v133 + 48) = 0x80000001CA99C4A0;
  *(v133 + 64) = v128;
  *(v133 + 72) = @"DefaultValue";
  *(v133 + 80) = 5522759;
  *(v133 + 88) = 0xE300000000000000;
  *(v133 + 104) = v128;
  *(v133 + 112) = @"Description";
  v135 = @"DefaultValue";
  v437 = v134;
  v427 = v135;
  v136 = @"Description";
  v137 = sub_1CA94C438("The HTTP method to use. (WFHTTPMethod)", 38);
  v432 = v138;
  v139 = sub_1CA94C438("The HTTP method to use.", 23);
  v141 = v140;
  v436 = &v417;
  MEMORY[0x1EEE9AC00](v139);
  v142 = &v417 - v459;
  sub_1CA948D98();
  v143 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v143);
  v144 = &v417 - v457;
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v133 + 120) = sub_1CA2F9F14(v137, v432, v139, v141, 0, 0, v142, v144);
  v146 = v454;
  *(v133 + 144) = v454;
  *(v133 + 152) = @"DoNotLocalizeValues";
  *(v133 + 160) = 1;
  *(v133 + 184) = MEMORY[0x1E69E6370];
  *(v133 + 192) = @"Items";
  *(v133 + 200) = &unk_1F4A06E18;
  v147 = v439;
  v148 = v440;
  *(v133 + 224) = v453;
  *(v133 + 232) = v147;
  strcpy((v133 + 240), "WFHTTPMethod");
  *(v133 + 253) = 0;
  *(v133 + 254) = -5120;
  *(v133 + 264) = MEMORY[0x1E69E6158];
  *(v133 + 272) = v148;
  v149 = @"Items";
  v436 = v147;
  v439 = v148;
  *&v426 = v149;
  v150 = @"DoNotLocalizeValues";
  v151 = sub_1CA94C438("Method (WFHTTPMethod)", 21);
  v432 = v152;
  v153 = sub_1CA94C438("Method", 6);
  v155 = v154;
  v440 = &v417;
  MEMORY[0x1EEE9AC00](v153);
  v156 = &v417 - v459;
  sub_1CA948D98();
  v157 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v157);
  v158 = &v417 - v457;
  sub_1CA948B68();

  v159 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v160 = sub_1CA2F9F14(v151, v432, v153, v155, 0, 0, v156, v158);
  *(v133 + 304) = v146;
  *(v133 + 280) = v160;
  v161 = sub_1CA94C1E8();
  v162 = sub_1CA2F864C(v161);
  v452[5] = v162;
  v163 = swift_allocObject();
  *(v163 + 16) = v446;
  v165 = v436;
  v164 = v437;
  v166 = v441;
  *(v163 + 32) = v437;
  *(v163 + 40) = v166;
  *(v163 + 48) = 0x80000001CA9B2600;
  v167 = MEMORY[0x1E69E6158];
  *(v163 + 64) = MEMORY[0x1E69E6158];
  *(v163 + 72) = v165;
  *(v163 + 80) = 0x64616548776F6853;
  *(v163 + 88) = 0xEB00000000737265;
  v168 = v439;
  *(v163 + 104) = v167;
  *(v163 + 112) = v168;
  v437 = v164;
  v440 = v165;
  v441 = v168;
  v169 = sub_1CA94C438("Headers (ShowHeaders)", 21);
  v171 = v170;
  v172 = sub_1CA94C438("Headers", 7);
  v174 = v173;
  v439 = &v417;
  MEMORY[0x1EEE9AC00](v172);
  v175 = &v417 - v459;
  sub_1CA948D98();
  v176 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v176);
  v177 = &v417 - v457;
  sub_1CA948B68();

  v178 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v179 = sub_1CA2F9F14(v169, v171, v172, v174, 0, 0, v175, v177);
  *(v163 + 144) = v454;
  *(v163 + 120) = v179;
  v180 = sub_1CA94C1E8();
  v181 = sub_1CA2F864C(v180);
  v452[6] = v181;
  v182 = swift_allocObject();
  *(v182 + 16) = v442;
  *(v182 + 32) = @"AllowedValueTypes";
  v183 = @"AllowedValueTypes";
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444838, &unk_1CA984300);
  *(v182 + 40) = &unk_1F4A06E88;
  v185 = v437;
  *(v182 + 64) = v184;
  *(v182 + 72) = v185;
  v431 = 0x80000001CA9CE7F0;
  v432 = v184;
  *(v182 + 80) = v438;
  *(v182 + 88) = 0x80000001CA9CE7F0;
  *(v182 + 104) = MEMORY[0x1E69E6158];
  *(v182 + 112) = @"ItemTypeName";
  v186 = @"ItemTypeName";
  v187 = v183;
  v188 = v186;
  v419 = v185;
  v429 = v187;
  v430 = v188;
  v189 = sub_1CA94C438("header (WFHTTPHeaders)", 22);
  v436 = v190;
  v437 = v189;
  v191 = sub_1CA94C438("header", 6);
  v193 = v192;
  v439 = &v417;
  MEMORY[0x1EEE9AC00](v191);
  v194 = &v417 - v459;
  sub_1CA948D98();
  v195 = v456;
  v196 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v196);
  v197 = v457;
  sub_1CA948B68();

  v198 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v182 + 120) = sub_1CA2F9F14(v437, v436, v191, v193, 0, 0, v194, &v417 - v197);
  v199 = v454;
  *(v182 + 144) = v454;
  *(v182 + 152) = @"NewItemTypeName";
  v428 = @"NewItemTypeName";
  v200 = sub_1CA94C438("new header (WFHTTPHeaders)", 26);
  v436 = v201;
  v437 = v200;
  v202 = sub_1CA94C438("new header", 10);
  *&v425 = v203;
  v439 = &v417;
  MEMORY[0x1EEE9AC00](v202);
  v204 = &v417 - v459;
  sub_1CA948D98();
  v205 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v205);
  sub_1CA948B68();

  v206 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v207 = sub_1CA2F9F14(v437, v436, v202, v425, 0, 0, v204, &v417 - v197);
  v208 = v440;
  *(v182 + 160) = v207;
  *(v182 + 184) = v199;
  *(v182 + 192) = v208;
  strcpy((v182 + 200), "WFHTTPHeaders");
  *(v182 + 214) = -4864;
  v209 = v441;
  *(v182 + 224) = MEMORY[0x1E69E6158];
  *(v182 + 232) = v209;
  v423 = v208;
  v424 = v209;
  v210 = sub_1CA94C438("Headers (WFHTTPHeaders)", 23);
  v440 = v211;
  v212 = sub_1CA94C438("Headers", 7);
  v214 = v213;
  v441 = &v417;
  MEMORY[0x1EEE9AC00](v212);
  v215 = &v417 - v459;
  sub_1CA948D98();
  v216 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v216);
  v217 = &v417 - v457;
  sub_1CA948B68();

  v218 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v182 + 240) = sub_1CA2F9F14(v210, v440, v212, v214, 0, 0, v215, v217);
  *(v182 + 264) = v454;
  *(v182 + 272) = @"RequiredResources";
  v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v219 = swift_allocObject();
  v425 = xmmword_1CA981310;
  *(v219 + 16) = xmmword_1CA981310;
  v220 = swift_allocObject();
  *(v220 + 16) = v446;
  strcpy((v220 + 32), "WFParameterKey");
  *(v220 + 47) = -18;
  *(v220 + 48) = 0x64616548776F6853;
  *(v220 + 56) = 0xEB00000000737265;
  v436 = 0xD000000000000010;
  v437 = 0x80000001CA993570;
  v221 = MEMORY[0x1E69E6158];
  *(v220 + 72) = MEMORY[0x1E69E6158];
  *(v220 + 80) = 0xD000000000000010;
  *(v220 + 88) = 0x80000001CA993570;
  *(v220 + 96) = 1;
  *(v220 + 120) = MEMORY[0x1E69E6370];
  *(v220 + 128) = 0x72756F7365524657;
  v439 = 0x80000001CA993590;
  *(v220 + 168) = v221;
  *(v220 + 136) = 0xEF7373616C436563;
  *(v220 + 144) = 0xD00000000000001BLL;
  *(v220 + 152) = 0x80000001CA993590;
  v420 = @"RequiredResources";
  *(v219 + 32) = sub_1CA94C1E8();
  v441 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v182 + 304) = v441;
  *(v182 + 280) = v219;
  v222 = sub_1CA94C1E8();
  v223 = sub_1CA2F864C(v222);
  v452[7] = v223;
  v224 = swift_allocObject();
  *(v224 + 16) = v442;
  v225 = v419;
  v226 = v433;
  v227 = v434;
  *(v224 + 32) = v419;
  *(v224 + 40) = v227;
  *(v224 + 48) = v226;
  v228 = v427;
  *(v224 + 64) = v221;
  *(v224 + 72) = v228;
  *(v224 + 80) = 1313821514;
  *(v224 + 88) = 0xE400000000000000;
  *(v224 + 104) = v221;
  *(v224 + 112) = @"DisallowedVariableTypes";
  *(v224 + 120) = &unk_1F4A06EB0;
  v229 = v426;
  *(v224 + 144) = v453;
  *(v224 + 152) = v229;
  v435 = swift_allocObject();
  *(v435 + 1) = xmmword_1CA981470;
  v427 = v225;
  v230 = @"DisallowedVariableTypes";
  v433 = sub_1CA94C438("JSON (WFHTTPBodyType)", 21);
  *&v426 = v231;
  v232 = sub_1CA94C438("JSON", 4);
  v419 = v233;
  v434 = &v417;
  MEMORY[0x1EEE9AC00](v232);
  v234 = v459;
  sub_1CA948D98();
  v235 = v456;
  v236 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v236);
  v237 = &v417 - v457;
  sub_1CA948B68();

  v238 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v239 = sub_1CA2F9F14(v433, v426, v232, v419, 0, 0, &v417 - v234, v237);
  v240 = v435;
  v435[4] = v239;
  v433 = sub_1CA94C438("Form (WFHTTPBodyType)", 21);
  *&v426 = v241;
  v242 = sub_1CA94C438("Form", 4);
  v419 = v243;
  v434 = &v417;
  MEMORY[0x1EEE9AC00](v242);
  sub_1CA948D98();
  v244 = [v235 bundleURL];
  MEMORY[0x1EEE9AC00](v244);
  v245 = v457;
  sub_1CA948B68();

  v246 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v240[5] = sub_1CA2F9F14(v433, v426, v242, v419, 0, 0, &v417 - v234, &v417 - v245);
  v433 = sub_1CA94C438("File (WFHTTPBodyType)", 21);
  *&v426 = v247;
  v248 = sub_1CA94C438("File", 4);
  v419 = v249;
  v434 = &v417;
  MEMORY[0x1EEE9AC00](v248);
  v250 = &v417 - v459;
  sub_1CA948D98();
  v251 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v251);
  sub_1CA948B68();

  v252 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v253 = sub_1CA2F9F14(v433, v426, v248, v419, 0, 0, v250, &v417 - v245);
  v254 = v435;
  v435[6] = v253;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v224 + 160) = v254;
  v256 = v423;
  v257 = v424;
  *(v224 + 184) = v255;
  *(v224 + 192) = v256;
  strcpy((v224 + 200), "WFHTTPBodyType");
  *(v224 + 215) = -18;
  *(v224 + 224) = MEMORY[0x1E69E6158];
  *(v224 + 232) = v257;
  v423 = v256;
  *&v426 = v257;
  v258 = sub_1CA94C438("Request Body (WFHTTPBodyType)", 29);
  v260 = v259;
  v261 = sub_1CA94C438("Request Body", 12);
  v263 = v262;
  v435 = &v417;
  MEMORY[0x1EEE9AC00](v261);
  v264 = &v417 - v459;
  sub_1CA948D98();
  v265 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v265);
  v266 = &v417 - v457;
  sub_1CA948B68();

  v267 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v224 + 240) = sub_1CA2F9F14(v258, v260, v261, v263, 0, 0, v264, v266);
  v268 = v420;
  *(v224 + 264) = v454;
  *(v224 + 272) = v268;
  v269 = swift_allocObject();
  *(v269 + 16) = v425;
  v270 = swift_allocObject();
  *(v270 + 16) = v445;
  strcpy((v270 + 32), "WFParameterKey");
  *(v270 + 47) = -18;
  strcpy((v270 + 48), "WFHTTPMethod");
  *(v270 + 61) = 0;
  *(v270 + 62) = -5120;
  v435 = 0x80000001CA9939F0;
  v271 = MEMORY[0x1E69E6158];
  v272 = v443;
  *(v270 + 72) = MEMORY[0x1E69E6158];
  *(v270 + 80) = v272;
  *(v270 + 88) = 0x80000001CA9939F0;
  *(v270 + 96) = 15649;
  *(v270 + 104) = 0xE200000000000000;
  v433 = 0xD000000000000011;
  v434 = 0x80000001CA9A2F30;
  *(v270 + 120) = v271;
  *(v270 + 128) = 0xD000000000000011;
  *(v270 + 136) = 0x80000001CA9A2F30;
  *(v270 + 144) = &unk_1F4A06EF0;
  *(v270 + 168) = v453;
  *(v270 + 176) = 0x72756F7365524657;
  *(v270 + 216) = v271;
  *(v270 + 184) = 0xEF7373616C436563;
  *(v270 + 192) = 0xD00000000000001BLL;
  *(v270 + 200) = v439;
  *&v425 = v268;
  *(v269 + 32) = sub_1CA94C1E8();
  *(v224 + 304) = v441;
  *(v224 + 280) = v269;
  v273 = sub_1CA94C1E8();
  v274 = sub_1CA2F864C(v273);
  v452[8] = v274;
  v275 = swift_allocObject();
  *(v275 + 16) = v442;
  *(v275 + 32) = v429;
  *(v275 + 40) = &unk_1F4A06F20;
  v276 = v427;
  *(v275 + 64) = v432;
  *(v275 + 72) = v276;
  v277 = v430;
  v278 = v431;
  *(v275 + 80) = v438;
  *(v275 + 88) = v278;
  *(v275 + 104) = v271;
  *(v275 + 112) = v277;
  v427 = v276;
  v279 = sub_1CA94C438("field (WFFormValues)", 20);
  v419 = v280;
  v420 = v279;
  v281 = sub_1CA94C438("field", 5);
  v418 = v282;
  v424 = &v417;
  MEMORY[0x1EEE9AC00](v281);
  v283 = v459;
  sub_1CA948D98();
  v284 = v456;
  v285 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v285);
  v286 = v457;
  sub_1CA948B68();

  v287 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v275 + 120) = sub_1CA2F9F14(v420, v419, v281, v418, 0, 0, &v417 - v283, &v417 - v286);
  v288 = v454;
  v289 = v428;
  *(v275 + 144) = v454;
  *(v275 + 152) = v289;
  v290 = sub_1CA94C438("new field (WFFormValues)", 24);
  v419 = v291;
  v420 = v290;
  v292 = sub_1CA94C438("new field", 9);
  v418 = v293;
  v424 = &v417;
  MEMORY[0x1EEE9AC00](v292);
  sub_1CA948D98();
  v294 = [v284 bundleURL];
  MEMORY[0x1EEE9AC00](v294);
  sub_1CA948B68();

  v295 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v296 = sub_1CA2F9F14(v420, v419, v292, v418, 0, 0, &v417 - v283, &v417 - v286);
  v297 = v423;
  *(v275 + 160) = v296;
  *(v275 + 184) = v288;
  *(v275 + 192) = v297;
  strcpy((v275 + 200), "WFFormValues");
  *(v275 + 213) = 0;
  *(v275 + 214) = -5120;
  v298 = v426;
  *(v275 + 224) = MEMORY[0x1E69E6158];
  *(v275 + 232) = v298;
  v423 = v297;
  v424 = v298;
  v420 = sub_1CA94C438("Form Values (WFFormValues)", 26);
  v300 = v299;
  v301 = sub_1CA94C438("Form Values", 11);
  v303 = v302;
  *&v426 = &v417;
  MEMORY[0x1EEE9AC00](v301);
  v304 = &v417 - v459;
  sub_1CA948D98();
  v305 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v305);
  v306 = &v417 - v457;
  sub_1CA948B68();

  v307 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v275 + 240) = sub_1CA2F9F14(v420, v300, v301, v303, 0, 0, v304, v306);
  v308 = v425;
  *(v275 + 264) = v454;
  *(v275 + 272) = v308;
  v309 = swift_allocObject();
  v426 = xmmword_1CA97EDF0;
  *(v309 + 16) = xmmword_1CA97EDF0;
  v310 = swift_allocObject();
  *(v310 + 16) = v446;
  strcpy((v310 + 32), "WFParameterKey");
  *(v310 + 47) = -18;
  strcpy((v310 + 48), "WFHTTPBodyType");
  *(v310 + 63) = -18;
  v311 = MEMORY[0x1E69E6158];
  v312 = v436;
  v313 = v437;
  *(v310 + 72) = MEMORY[0x1E69E6158];
  *(v310 + 80) = v312;
  *(v310 + 88) = v313;
  *(v310 + 96) = 1836216134;
  *(v310 + 104) = 0xE400000000000000;
  *(v310 + 120) = v311;
  *(v310 + 128) = 0x72756F7365524657;
  *(v310 + 168) = v311;
  v314 = v311;
  *(v310 + 136) = 0xEF7373616C436563;
  *(v310 + 144) = 0xD00000000000001BLL;
  v315 = v439;
  *(v310 + 152) = v439;
  *&v425 = v425;
  *(v309 + 32) = sub_1CA94C1E8();
  v316 = swift_allocObject();
  *(v316 + 16) = v445;
  strcpy((v316 + 32), "WFParameterKey");
  *(v316 + 47) = -18;
  strcpy((v316 + 48), "WFHTTPMethod");
  *(v316 + 61) = 0;
  *(v316 + 62) = -5120;
  v317 = v443;
  *(v316 + 72) = v314;
  *(v316 + 80) = v317;
  v318 = v434;
  *(v316 + 88) = v435;
  *(v316 + 96) = 15649;
  *(v316 + 104) = 0xE200000000000000;
  v319 = v433;
  *(v316 + 120) = v314;
  *(v316 + 128) = v319;
  *(v316 + 136) = v318;
  *(v316 + 144) = &unk_1F4A06F50;
  *(v316 + 168) = v453;
  *(v316 + 176) = 0x72756F7365524657;
  *(v316 + 216) = v314;
  *(v316 + 184) = 0xEF7373616C436563;
  *(v316 + 192) = 0xD00000000000001BLL;
  *(v316 + 200) = v315;
  *(v309 + 40) = sub_1CA94C1E8();
  *(v275 + 304) = v441;
  *(v275 + 280) = v309;
  v320 = sub_1CA94C1E8();
  v321 = sub_1CA2F864C(v320);
  v452[9] = v321;
  v322 = swift_allocObject();
  *(v322 + 16) = v442;
  *(v322 + 32) = v429;
  *(v322 + 40) = &unk_1F4A06F80;
  v323 = v427;
  *(v322 + 64) = v432;
  *(v322 + 72) = v323;
  v324 = v430;
  v325 = v431;
  *(v322 + 80) = v438;
  *(v322 + 88) = v325;
  *(v322 + 104) = v314;
  *(v322 + 112) = v324;
  v438 = sub_1CA94C438("field (WFJSONValues)", 20);
  v432 = v326;
  v327 = sub_1CA94C438("field", 5);
  v431 = v328;
  *&v442 = &v417;
  MEMORY[0x1EEE9AC00](v327);
  v329 = v459;
  sub_1CA948D98();
  v330 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v330);
  v331 = &v417 - v457;
  sub_1CA948B68();

  v332 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v322 + 120) = sub_1CA2F9F14(v438, v432, v327, v431, 0, 0, &v417 - v329, v331);
  v333 = v428;
  *(v322 + 144) = v454;
  *(v322 + 152) = v333;
  v438 = sub_1CA94C438("new field (WFJSONValues)", 24);
  v432 = v334;
  v335 = sub_1CA94C438("new field", 9);
  v431 = v336;
  *&v442 = &v417;
  MEMORY[0x1EEE9AC00](v335);
  v337 = &v417 - v329;
  sub_1CA948D98();
  v338 = v456;
  v339 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v339);
  v340 = v457;
  sub_1CA948B68();

  v341 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v322 + 160) = sub_1CA2F9F14(v438, v432, v335, v431, 0, 0, v337, &v417 - v340);
  v342 = v454;
  v343 = v423;
  *(v322 + 184) = v454;
  *(v322 + 192) = v343;
  strcpy((v322 + 200), "WFJSONValues");
  *(v322 + 213) = 0;
  *(v322 + 214) = -5120;
  v344 = v424;
  *(v322 + 224) = MEMORY[0x1E69E6158];
  *(v322 + 232) = v344;
  v438 = sub_1CA94C438("JSON Values (WFJSONValues)", 26);
  v432 = v345;
  v346 = sub_1CA94C438("JSON Values", 11);
  v431 = v347;
  *&v442 = &v417;
  MEMORY[0x1EEE9AC00](v346);
  v348 = &v417 - v459;
  sub_1CA948D98();
  v349 = [v338 bundleURL];
  MEMORY[0x1EEE9AC00](v349);
  sub_1CA948B68();

  v350 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v322 + 240) = sub_1CA2F9F14(v438, v432, v346, v431, 0, 0, v348, &v417 - v340);
  v351 = v425;
  *(v322 + 264) = v342;
  *(v322 + 272) = v351;
  v352 = swift_allocObject();
  *(v352 + 16) = v426;
  v353 = swift_allocObject();
  *(v353 + 16) = v446;
  strcpy((v353 + 32), "WFParameterKey");
  *(v353 + 47) = -18;
  strcpy((v353 + 48), "WFHTTPBodyType");
  *(v353 + 63) = -18;
  v354 = MEMORY[0x1E69E6158];
  v355 = v436;
  v356 = v437;
  *(v353 + 72) = MEMORY[0x1E69E6158];
  *(v353 + 80) = v355;
  *(v353 + 88) = v356;
  *(v353 + 96) = 1313821514;
  *(v353 + 104) = 0xE400000000000000;
  *(v353 + 120) = v354;
  *(v353 + 128) = 0x72756F7365524657;
  *(v353 + 168) = v354;
  v357 = v354;
  *(v353 + 136) = 0xEF7373616C436563;
  *(v353 + 144) = 0xD00000000000001BLL;
  v358 = v439;
  *(v353 + 152) = v439;
  *(v352 + 32) = sub_1CA94C1E8();
  v359 = swift_allocObject();
  *(v359 + 16) = v445;
  strcpy((v359 + 32), "WFParameterKey");
  *(v359 + 47) = -18;
  strcpy((v359 + 48), "WFHTTPMethod");
  *(v359 + 61) = 0;
  *(v359 + 62) = -5120;
  v360 = v443;
  *(v359 + 72) = v357;
  *(v359 + 80) = v360;
  v361 = v434;
  *(v359 + 88) = v435;
  *(v359 + 96) = 15649;
  *(v359 + 104) = 0xE200000000000000;
  v362 = v433;
  *(v359 + 120) = v357;
  *(v359 + 128) = v362;
  *(v359 + 136) = v361;
  *(v359 + 144) = &unk_1F4A06FC8;
  *(v359 + 168) = v453;
  *(v359 + 176) = 0x72756F7365524657;
  *(v359 + 216) = v357;
  *(v359 + 184) = 0xEF7373616C436563;
  *(v359 + 192) = 0xD00000000000001BLL;
  *(v359 + 200) = v358;
  *(v352 + 40) = sub_1CA94C1E8();
  *(v322 + 304) = v441;
  *(v322 + 280) = v352;
  v363 = sub_1CA94C1E8();
  v364 = sub_1CA2F864C(v363);
  v452[10] = v364;
  v365 = swift_allocObject();
  *(v365 + 16) = xmmword_1CA981370;
  *(v365 + 32) = v427;
  *(v365 + 40) = 0xD000000000000019;
  *(v365 + 48) = 0x80000001CA99B030;
  v366 = v423;
  *(v365 + 64) = v357;
  *(v365 + 72) = v366;
  *(v365 + 80) = v362;
  *(v365 + 88) = 0x80000001CA9CEA10;
  v367 = v424;
  *(v365 + 104) = v357;
  *(v365 + 112) = v367;
  *&v442 = sub_1CA94C438("File (WFRequestVariable)", 24);
  v438 = v368;
  v369 = sub_1CA94C438("File", 4);
  v432 = v370;
  v450 = &v417;
  MEMORY[0x1EEE9AC00](v369);
  v371 = &v417 - v459;
  sub_1CA948D98();
  v372 = v456;
  v373 = [v456 bundleURL];
  v431 = &v417;
  MEMORY[0x1EEE9AC00](v373);
  v374 = v457;
  sub_1CA948B68();

  v375 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v365 + 120) = sub_1CA2F9F14(v442, v438, v369, v432, 0, 0, v371, &v417 - v374);
  v376 = v421;
  *(v365 + 144) = v454;
  *(v365 + 152) = v376;
  *&v442 = sub_1CA94C438("Choose Variable (WFRequestVariable)", 35);
  v438 = v377;
  v378 = sub_1CA94C438("Choose Variable", 15);
  v432 = v379;
  v450 = &v417;
  MEMORY[0x1EEE9AC00](v378);
  v380 = &v417 - v459;
  sub_1CA948D98();
  v381 = [v372 bundleURL];
  MEMORY[0x1EEE9AC00](v381);
  sub_1CA948B68();

  v382 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v365 + 160) = sub_1CA2F9F14(v442, v438, v378, v432, 0, 0, v380, &v417 - v374);
  v383 = v425;
  *(v365 + 184) = v454;
  *(v365 + 192) = v383;
  v384 = swift_allocObject();
  *(v384 + 16) = v426;
  v385 = swift_allocObject();
  *(v385 + 16) = v446;
  strcpy((v385 + 32), "WFParameterKey");
  *(v385 + 47) = -18;
  strcpy((v385 + 48), "WFHTTPBodyType");
  *(v385 + 63) = -18;
  v386 = MEMORY[0x1E69E6158];
  v387 = v436;
  v388 = v437;
  *(v385 + 72) = MEMORY[0x1E69E6158];
  *(v385 + 80) = v387;
  *(v385 + 88) = v388;
  *(v385 + 96) = 1701603654;
  *(v385 + 104) = 0xE400000000000000;
  *(v385 + 120) = v386;
  *(v385 + 128) = 0x72756F7365524657;
  *(v385 + 168) = v386;
  *(v385 + 136) = 0xEF7373616C436563;
  *(v385 + 144) = 0xD00000000000001BLL;
  v389 = v439;
  *(v385 + 152) = v439;
  *(v384 + 32) = sub_1CA94C1E8();
  v390 = swift_allocObject();
  *(v390 + 16) = v445;
  strcpy((v390 + 32), "WFParameterKey");
  *(v390 + 47) = -18;
  strcpy((v390 + 48), "WFHTTPMethod");
  *(v390 + 61) = 0;
  *(v390 + 62) = -5120;
  v391 = v443;
  *(v390 + 72) = v386;
  *(v390 + 80) = v391;
  v392 = v434;
  *(v390 + 88) = v435;
  *(v390 + 96) = 15649;
  *(v390 + 104) = 0xE200000000000000;
  v393 = v433;
  *(v390 + 120) = v386;
  *(v390 + 128) = v393;
  *(v390 + 136) = v392;
  *(v390 + 144) = &unk_1F4A06FF8;
  *(v390 + 168) = v453;
  *(v390 + 176) = 0x72756F7365524657;
  *(v390 + 216) = v386;
  *(v390 + 184) = 0xEF7373616C436563;
  *(v390 + 192) = 0xD00000000000001BLL;
  *(v390 + 200) = v389;
  *(v384 + 40) = sub_1CA94C1E8();
  *(v365 + 224) = v441;
  *(v365 + 200) = v384;
  v394 = sub_1CA94C1E8();
  v395 = sub_1CA2F864C(v394);
  v396 = v452;
  v452[11] = v395;
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v398 = v444;
  v444[50] = v396;
  v398[53] = v397;
  v398[54] = @"ParameterSummary";
  v399 = @"ParameterSummary";
  v400 = sub_1CA94C438("Get contents of ${WFURL} (Parameter Summary)", 44);
  v402 = v401;
  v403 = sub_1CA94C438("Get contents of ${WFURL}", 24);
  v405 = v404;
  MEMORY[0x1EEE9AC00](v403);
  v406 = &v417 - v459;
  sub_1CA948D98();
  v407 = [v456 bundleURL];
  MEMORY[0x1EEE9AC00](v407);
  v408 = &v417 - v457;
  sub_1CA948B68();

  v409 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v410 = sub_1CA2F9F14(v400, v402, v403, v405, 0, 0, v406, v408);
  v411 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v412 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v413 = v444;
  v444[55] = v411;
  v413[58] = v412;
  v413[59] = @"RequiredResources";
  v413[60] = &unk_1F4A07028;
  v413[63] = v453;
  v413[64] = @"ResidentCompatible";
  v413[68] = MEMORY[0x1E69E6370];
  *(v413 + 520) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v414 = @"RequiredResources";
  v415 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5738E4()
{
  v230 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9CEAE0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("Amazon|Bing|DuckDuckGo|eBay|Google|Reddit|Twitter|Yahoo!|YouTube|Internet|Website", 81);
  v6 = v5;
  v7 = sub_1CA94C438("Amazon|Bing|DuckDuckGo|eBay|Google|Reddit|Twitter|Yahoo!|YouTube|Internet|Website", 81);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v241 = v11;
  v239 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v220 - v239;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v237 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v238 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v240 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v220 - v240;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v235 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v236 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Searches the web for the text provided as input.", 48);
  v28 = v27;
  v29 = sub_1CA94C438("Searches the web for the text provided as input.", 48);
  v31 = v30;
  v233 = &v220;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v220 - v239;
  sub_1CA948D98();
  v33 = [v237 bundleURL];
  v234 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v220 - v240;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v26, v28, v29, v31, 0, 0, v32, v35);
  *(v23 + 64) = v235;
  *(v23 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v38 = sub_1CA94C1E8();
  v39 = v236;
  v40 = sub_1CA6B3784(v38);
  v41 = v234;
  v234[20] = v40;
  v41[23] = v39;
  v41[24] = @"IconColor";
  v41[25] = 1953392980;
  v41[26] = 0xE400000000000000;
  v42 = MEMORY[0x1E69E6158];
  v41[28] = MEMORY[0x1E69E6158];
  v41[29] = @"IconSymbol";
  v41[30] = 0x697966696E67616DLL;
  v41[31] = 0xEF7373616C67676ELL;
  v41[33] = v42;
  v41[34] = @"IconSymbolColor";
  v41[35] = 1702194242;
  v41[36] = 0xE400000000000000;
  v41[38] = v42;
  v41[39] = @"Input";
  v43 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v44 = swift_initStackObject();
  v228 = xmmword_1CA981350;
  *(v44 + 16) = xmmword_1CA981350;
  *(v44 + 32) = 0x656C7069746C754DLL;
  *(v44 + 40) = 0xE800000000000000;
  v45 = MEMORY[0x1E69E6370];
  *(v44 + 48) = 0;
  *(v44 + 72) = v45;
  strcpy((v44 + 80), "ParameterKey");
  *(v44 + 93) = 0;
  *(v44 + 94) = -5120;
  *(v44 + 96) = 0x547475706E494657;
  *(v44 + 104) = 0xEB00000000747865;
  *(v44 + 120) = v42;
  *(v44 + 128) = 0x6465726975716552;
  *(v44 + 136) = 0xE800000000000000;
  *(v44 + 144) = 1;
  *(v44 + 168) = v45;
  *(v44 + 176) = 0x7365707954;
  *(v44 + 184) = 0xE500000000000000;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v44 + 216) = v229;
  *(v44 + 192) = &unk_1F4A07098;
  v46 = @"IconColor";
  v47 = @"IconSymbol";
  v48 = @"IconSymbolColor";
  v49 = @"Input";
  v50 = sub_1CA94C1E8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v43[40] = v50;
  v43[43] = v51;
  v43[44] = @"InputPassthrough";
  *(v43 + 360) = 1;
  v43[48] = v45;
  v43[49] = @"Name";
  v52 = @"InputPassthrough";
  v53 = @"Name";
  v54 = sub_1CA94C438("Search Web (Action Name)", 24);
  v56 = v55;
  v57 = sub_1CA94C438("Search Web", 10);
  v59 = v58;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v220 - v239;
  sub_1CA948D98();
  v61 = [v237 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v220 - v240;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v64 = sub_1CA2F9F14(v54, v56, v57, v59, 0, 0, v60, v62);
  v65 = v234;
  v234[50] = v64;
  v65[53] = v235;
  v65[54] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v232 = swift_allocObject();
  *(v232 + 16) = xmmword_1CA981360;
  v231 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_allocObject();
  v233 = v66;
  *(v66 + 16) = xmmword_1CA981380;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000016;
  *(v66 + 48) = 0x80000001CA99C4A0;
  v67 = MEMORY[0x1E69E6158];
  *(v66 + 64) = MEMORY[0x1E69E6158];
  *(v66 + 72) = @"DefaultValue";
  *(v66 + 80) = 0x656C676F6F47;
  *(v66 + 88) = 0xE600000000000000;
  *(v66 + 104) = v67;
  *(v66 + 112) = @"Items";
  v236 = swift_allocObject();
  *(v236 + 1) = xmmword_1CA981720;
  v226 = @"Class";
  v68 = @"Parameters";
  v69 = @"DefaultValue";
  v70 = @"Items";
  v71 = sub_1CA94C438("Amazon (WFSearchWebDestination)", 31);
  v224 = v72;
  v225 = v71;
  v223 = sub_1CA94C438("Amazon", 6);
  v74 = v73;
  MEMORY[0x1EEE9AC00](v223);
  v75 = v239;
  sub_1CA948D98();
  v76 = v237;
  v77 = [v237 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v220 - v240;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v80 = sub_1CA2F9F14(v225, v224, v223, v74, 0, 0, &v220 - v75, v78);
  v81 = v236;
  v236[4] = v80;
  v82 = sub_1CA94C438("Bing (WFSearchWebDestination)", 29);
  v223 = v83;
  v224 = v82;
  v84 = sub_1CA94C438("Bing", 4);
  v222 = v85;
  v225 = &v220;
  MEMORY[0x1EEE9AC00](v84);
  sub_1CA948D98();
  v86 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  v87 = v240;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v81[5] = sub_1CA2F9F14(v224, v223, v84, v222, 0, 0, &v220 - v75, &v220 - v87);
  v89 = sub_1CA94C438("DuckDuckGo (WFSearchWebDestination)", 35);
  v223 = v90;
  v224 = v89;
  v91 = sub_1CA94C438("DuckDuckGo", 10);
  v222 = v92;
  v225 = &v220;
  MEMORY[0x1EEE9AC00](v91);
  v93 = v239;
  sub_1CA948D98();
  v94 = v237;
  v95 = [v237 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v97 = sub_1CA2F9F14(v224, v223, v91, v222, 0, 0, &v220 - v93, &v220 - v87);
  v98 = v236;
  v236[6] = v97;
  v99 = sub_1CA94C438("eBay (WFSearchWebDestination)", 29);
  v223 = v100;
  v224 = v99;
  v101 = sub_1CA94C438("eBay", 4);
  v222 = v102;
  v225 = &v220;
  MEMORY[0x1EEE9AC00](v101);
  sub_1CA948D98();
  v103 = [v94 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = v240;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v98[7] = sub_1CA2F9F14(v224, v223, v101, v222, 0, 0, &v220 - v93, &v220 - v104);
  v106 = sub_1CA94C438("Google (WFSearchWebDestination)", 31);
  v223 = v107;
  v224 = v106;
  v108 = sub_1CA94C438("Google", 6);
  v222 = v109;
  v225 = &v220;
  MEMORY[0x1EEE9AC00](v108);
  v110 = v239;
  sub_1CA948D98();
  v111 = [v94 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v224, v223, v108, v222, 0, 0, &v220 - v110, &v220 - v104);
  v114 = v236;
  v236[8] = v113;
  v115 = sub_1CA94C438("Reddit (WFSearchWebDestination)", 31);
  v223 = v116;
  v224 = v115;
  v117 = sub_1CA94C438("Reddit", 6);
  v222 = v118;
  v225 = &v220;
  MEMORY[0x1EEE9AC00](v117);
  v119 = &v220 - v110;
  sub_1CA948D98();
  v120 = v237;
  v121 = [v237 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  v122 = &v220 - v240;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v114[9] = sub_1CA2F9F14(v224, v223, v117, v222, 0, 0, v119, v122);
  v124 = sub_1CA94C438("Twitter (WFSearchWebDestination)", 32);
  v223 = v125;
  v224 = v124;
  v126 = sub_1CA94C438("Twitter", 7);
  v128 = v127;
  v225 = &v220;
  MEMORY[0x1EEE9AC00](v126);
  v129 = v239;
  sub_1CA948D98();
  v130 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v130);
  v131 = v240;
  sub_1CA948B68();

  v132 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v133 = sub_1CA2F9F14(v224, v223, v126, v128, 0, 0, &v220 - v129, &v220 - v131);
  v134 = v236;
  v236[10] = v133;
  v135 = sub_1CA94C438("Yahoo! (WFSearchWebDestination)", 31);
  v223 = v136;
  v224 = v135;
  v137 = sub_1CA94C438("Yahoo!", 6);
  v222 = v138;
  v225 = &v220;
  MEMORY[0x1EEE9AC00](v137);
  sub_1CA948D98();
  v139 = [v120 bundleURL];
  v221 = &v220;
  MEMORY[0x1EEE9AC00](v139);
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v134[11] = sub_1CA2F9F14(v224, v223, v137, v222, 0, 0, &v220 - v129, &v220 - v131);
  v141 = sub_1CA94C438("YouTube (WFSearchWebDestination)", 32);
  v223 = v142;
  v224 = v141;
  v143 = sub_1CA94C438("YouTube", 7);
  v222 = v144;
  v225 = &v220;
  MEMORY[0x1EEE9AC00](v143);
  v145 = v239;
  sub_1CA948D98();
  v146 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v146);
  sub_1CA948B68();

  v147 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v148 = sub_1CA2F9F14(v224, v223, v143, v222, 0, 0, &v220 - v145, &v220 - v131);
  v149 = v236;
  v236[12] = v148;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v151 = v233;
  v233[15] = v149;
  v151[18] = v150;
  v151[19] = @"Key";
  v151[20] = 0xD000000000000016;
  v151[21] = 0x80000001CA9CED70;
  v151[23] = MEMORY[0x1E69E6158];
  v151[24] = @"Label";
  v152 = @"Key";
  v153 = @"Label";
  v236 = v152;
  v225 = v153;
  v154 = sub_1CA94C438("Service (WFSearchWebDestination)", 32);
  v222 = v155;
  v223 = v154;
  v156 = sub_1CA94C438("Service", 7);
  v158 = v157;
  v224 = &v220;
  MEMORY[0x1EEE9AC00](v156);
  v159 = &v220 - v145;
  sub_1CA948D98();
  v160 = v237;
  v161 = [v237 bundleURL];
  MEMORY[0x1EEE9AC00](v161);
  v162 = v240;
  sub_1CA948B68();

  v163 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v164 = sub_1CA2F9F14(v223, v222, v156, v158, 0, 0, v159, &v220 - v162);
  v165 = v233;
  v233[25] = v164;
  v166 = v235;
  *(v165 + 224) = v235;
  *(v165 + 232) = @"Placeholder";
  v224 = @"Placeholder";
  v167 = sub_1CA94C438("Service (WFSearchWebDestination)", 32);
  v221 = v168;
  v222 = v167;
  v169 = sub_1CA94C438("Service", 7);
  v220 = v170;
  v223 = &v220;
  MEMORY[0x1EEE9AC00](v169);
  v171 = &v220 - v239;
  sub_1CA948D98();
  v172 = [v160 bundleURL];
  MEMORY[0x1EEE9AC00](v172);
  sub_1CA948B68();

  v173 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v174 = sub_1CA2F9F14(v222, v221, v169, v220, 0, 0, v171, &v220 - v162);
  v175 = v233;
  v233[33] = v166;
  *(v175 + 240) = v174;
  _s3__C3KeyVMa_0(0);
  v223 = v176;
  v222 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v177 = sub_1CA94C1E8();
  v178 = sub_1CA2F864C(v177);
  *(v232 + 32) = v178;
  v179 = swift_allocObject();
  *(v179 + 16) = v228;
  *(v179 + 32) = v226;
  *(v179 + 40) = 0xD000000000000014;
  *(v179 + 48) = 0x80000001CA99B500;
  v180 = MEMORY[0x1E69E6158];
  v181 = v236;
  *(v179 + 64) = MEMORY[0x1E69E6158];
  *(v179 + 72) = v181;
  *(v179 + 80) = 0x547475706E494657;
  *(v179 + 88) = 0xEB00000000747865;
  v182 = v225;
  *(v179 + 104) = v180;
  *(v179 + 112) = v182;
  v233 = sub_1CA94C438("Text (WFInputText)", 18);
  *&v228 = v183;
  v184 = sub_1CA94C438("Text", 4);
  v227 = v185;
  v236 = &v220;
  MEMORY[0x1EEE9AC00](v184);
  v186 = v239;
  sub_1CA948D98();
  v187 = [v237 bundleURL];
  MEMORY[0x1EEE9AC00](v187);
  v188 = v240;
  sub_1CA948B68();

  v189 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v190 = sub_1CA2F9F14(v233, v228, v184, v227, 0, 0, &v220 - v186, &v220 - v188);
  v191 = v235;
  *(v179 + 120) = v190;
  v192 = v224;
  *(v179 + 144) = v191;
  *(v179 + 152) = v192;
  v233 = sub_1CA94C438("Text (WFInputText)", 18);
  *&v228 = v193;
  v227 = sub_1CA94C438("Text", 4);
  v195 = v194;
  v236 = &v220;
  MEMORY[0x1EEE9AC00](v227);
  sub_1CA948D98();
  v196 = [v237 bundleURL];
  MEMORY[0x1EEE9AC00](v196);
  sub_1CA948B68();

  v197 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v198 = sub_1CA2F9F14(v233, v228, v227, v195, 0, 0, &v220 - v186, &v220 - v188);
  *(v179 + 184) = v191;
  *(v179 + 160) = v198;
  v199 = sub_1CA94C1E8();
  v200 = sub_1CA2F864C(v199);
  v201 = v232;
  *(v232 + 40) = v200;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v203 = v234;
  v234[55] = v201;
  v203[58] = v202;
  v203[59] = @"ParameterSummary";
  v204 = @"ParameterSummary";
  v205 = sub_1CA94C438("Search ${WFSearchWebDestination} for ${WFInputText} (Parameter Summary)", 71);
  v207 = v206;
  v208 = sub_1CA94C438("Search ${WFSearchWebDestination} for ${WFInputText}", 51);
  v210 = v209;
  MEMORY[0x1EEE9AC00](v208);
  sub_1CA948D98();
  v211 = [v237 bundleURL];
  MEMORY[0x1EEE9AC00](v211);
  v212 = &v220 - v240;
  sub_1CA948B68();

  v213 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v214 = sub_1CA2F9F14(v205, v207, v208, v210, 0, 0, &v220 - v186, v212);
  v215 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v216 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v217 = v234;
  v234[60] = v215;
  v217[63] = v216;
  v217[64] = @"RequiredResources";
  v217[68] = v229;
  v217[65] = &unk_1F4A070C8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v218 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5752AC()
{
  v33 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA9813C0;
  *(v6 + 32) = 0x656C7069746C754DLL;
  *(v6 + 40) = 0xE800000000000000;
  v7 = MEMORY[0x1E69E6370];
  *(v6 + 48) = 1;
  *(v6 + 72) = v7;
  *(v6 + 80) = 0x6465726975716552;
  *(v6 + 88) = 0xE800000000000000;
  *(v6 + 96) = 1;
  *(v6 + 120) = v7;
  *(v6 + 128) = 0x7365707954;
  *(v6 + 136) = 0xE500000000000000;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v6 + 168) = v32;
  *(v6 + 144) = &unk_1F4A07178;
  v8 = @"Input";
  v9 = sub_1CA94C1E8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 120) = v9;
  *(inited + 144) = v10;
  *(inited + 152) = @"Name";
  v11 = @"Name";
  v12 = sub_1CA94C438("Get Details of Trello Item (Action Name)", 40);
  v14 = v13;
  v15 = sub_1CA94C438("Get Details of Trello Item", 26);
  v17 = v16;
  v18 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v21 = [qword_1EDB9F690 bundleURL];
  v22 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v25 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v26 = sub_1CA2F9F14(v12, v14, v15, v17, 0, 0, v20, v24);
  v27 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 160) = v26;
  *(inited + 184) = v27;
  *(inited + 192) = @"RequiredResources";
  *(inited + 224) = v32;
  *(inited + 200) = &unk_1F4A071C8;
  v28 = @"RequiredResources";
  v29 = sub_1CA94C368();
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 232) = v29;
  *(inited + 240) = 0xD000000000000017;
  *(inited + 248) = 0x80000001CA9CEEB0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void sub_1CA575728()
{
  OUTLINED_FUNCTION_30();
  v2 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  switch([v1 valueType])
  {
    case 0uLL:
      if (![v1 state])
      {
        goto LABEL_25;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_5_3();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        goto LABEL_24;
      }

      v7 = [v6 variableString];
      v8 = swift_unknownObjectRelease();
      v9 = OUTLINED_FUNCTION_20_22(v8, sel_userVisibleStringsForUseCase_);
      OUTLINED_FUNCTION_30();
      type metadata accessor for WFUserVisibleString();
      sub_1CA3434EC();
      OUTLINED_FUNCTION_6_38();
      sub_1CA94C8F8();

      goto LABEL_23;
    case 1uLL:
      if (![v1 state])
      {
        goto LABEL_25;
      }

      v11 = objc_opt_self();
      if (!OUTLINED_FUNCTION_8_25(v11))
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_87();
      sub_1CA576748();
      goto LABEL_11;
    case 2uLL:
      if (![v1 state])
      {
        goto LABEL_25;
      }

      v10 = objc_opt_self();
      if (!OUTLINED_FUNCTION_8_25(v10))
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_87();
      sub_1CA5768A8();
LABEL_11:
      swift_unknownObjectRelease();
      return;
    case 3uLL:
    case 4uLL:
      goto LABEL_25;
    case 5uLL:
      if (![v1 state])
      {
        goto LABEL_25;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_5_3();
      v16 = swift_dynamicCastObjCClass();
      if (!v16)
      {
        goto LABEL_24;
      }

      v17 = [v16 variable];
      v18 = swift_unknownObjectRelease();
      v0 = OUTLINED_FUNCTION_20_22(v18, sel_userVisibleStringsForUseCase_);

      goto LABEL_22;
    case 6uLL:
      if (![v1 state])
      {
        goto LABEL_25;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_5_3();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v0 = [v19 userVisibleStringsForUseCase_];
        swift_unknownObjectRelease();
LABEL_22:
        type metadata accessor for WFUserVisibleString();
        sub_1CA3434EC();
        OUTLINED_FUNCTION_6_38();
        sub_1CA94C8F8();
LABEL_23:
      }

      else
      {
LABEL_24:
        swift_unknownObjectRelease();
LABEL_25:
        if (sub_1CA25B410(MEMORY[0x1E69E7CC0]))
        {

LABEL_15:
          sub_1CA2E85F8();
        }
      }

      return;
    default:
      sub_1CA949C58();
      v12 = sub_1CA949F68();
      v13 = sub_1CA94CC28();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = OUTLINED_FUNCTION_124();
        OUTLINED_FUNCTION_13_28(v14);
        OUTLINED_FUNCTION_7_33(&dword_1CA256000, v15, v13, "Incorrect parameter state class");
        OUTLINED_FUNCTION_60();
      }

      (*(v4 + 8))(v1, v2);
      if (sub_1CA25B410(MEMORY[0x1E69E7CC0]))
      {
        goto LABEL_15;
      }

      return;
  }
}

id sub_1CA575AFC()
{
  OUTLINED_FUNCTION_30();
  v1 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_4();
  switch([v35 valueType])
  {
    case 0uLL:
      if (![v35 state])
      {
        goto LABEL_23;
      }

      v5 = objc_opt_self();
      v6 = OUTLINED_FUNCTION_8_25(v5);
      if (!v6)
      {
        goto LABEL_22;
      }

      v7 = [v6 variableString];
      OUTLINED_FUNCTION_40();
      type metadata accessor for WFUserVisibleString();
      sub_1CA3434EC();
      v8 = sub_1CA94C1A8();
      v9 = [v0 rewrittenWithStrings_];

      sub_1CA25B3D0(0, &qword_1EC441788, off_1E836F4E0);
      v36 = v9;
      v10 = v9;
      v11.variableString.super.isa = &v36;
      v12 = WFVariableStringParameterState.init(variableString:)(v11);
      v13 = [objc_allocWithZone(WFPropertyListParameterValue) initWithStringState_];
      swift_unknownObjectRelease();

      return v13;
    case 1uLL:
      if (![v35 state])
      {
        goto LABEL_23;
      }

      v19 = objc_opt_self();
      if (!OUTLINED_FUNCTION_8_25(v19))
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_87();
      sub_1CA576A08();
      v17 = v20;
      v18 = [objc_allocWithZone(WFPropertyListParameterValue) initWithDictionaryState_];
      goto LABEL_11;
    case 2uLL:
      if (![v35 state])
      {
        goto LABEL_23;
      }

      v15 = objc_opt_self();
      if (!OUTLINED_FUNCTION_8_25(v15))
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_87();
      sub_1CA576BFC();
      v17 = v16;
      v18 = [objc_allocWithZone(WFPropertyListParameterValue) initWithArrayState_];
LABEL_11:
      v21 = v18;
      swift_unknownObjectRelease();

      result = v21;
      break;
    case 3uLL:
    case 4uLL:
      goto LABEL_23;
    case 5uLL:
      if (![v35 state])
      {
        goto LABEL_23;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_5_3();
      v26 = swift_dynamicCastObjCClass();
      if (!v26)
      {
        goto LABEL_22;
      }

      v27 = [v26 variable];
      type metadata accessor for WFUserVisibleString();
      sub_1CA3434EC();
      v28 = sub_1CA94C1A8();
      v29 = OUTLINED_FUNCTION_20_22(v28, sel_rewrittenWithStrings_);

      v30 = [objc_allocWithZone(WFVariableParameterState) initWithVariable_];
      v31 = [objc_allocWithZone(WFPropertyListParameterValue) initWithType:5 state:v30];
      swift_unknownObjectRelease();

      result = v31;
      break;
    case 6uLL:
      if (![v35 state])
      {
        goto LABEL_23;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_5_3();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for WFUserVisibleString();
        sub_1CA3434EC();
        v32 = sub_1CA94C1A8();
        v33 = OUTLINED_FUNCTION_20_22(v32, sel_rewrittenWithStrings_);

        v34 = [objc_allocWithZone(WFPropertyListParameterValue) initWithChooseFromMenuItemState_];
        swift_unknownObjectRelease();

        result = v34;
      }

      else
      {
LABEL_22:
        swift_unknownObjectRelease();
LABEL_23:

        result = v35;
      }

      break;
    default:
      sub_1CA949C58();
      v22 = sub_1CA949F68();
      v23 = sub_1CA94CC28();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = OUTLINED_FUNCTION_124();
        OUTLINED_FUNCTION_13_28(v24);
        OUTLINED_FUNCTION_7_33(&dword_1CA256000, v25, v23, "Incorrect parameter state class");
        OUTLINED_FUNCTION_60();
      }

      (*(v3 + 8))(v0, v1);
      goto LABEL_23;
  }

  return result;
}

void sub_1CA576058(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_30();
  v4 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    swift_unknownObjectRetain();
    v10 = [v9 values];
    sub_1CA25B3D0(0, &qword_1EC4448E8, off_1E836EE78);
    OUTLINED_FUNCTION_5_3();
    v11 = sub_1CA94C658();

    v12 = sub_1CA25B410(v11);
    if (v12)
    {
      v13 = v12;
      if (v12 < 1)
      {
        __break(1u);
      }

      else
      {
        v14 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1CCAA22D0](v14, v11);
          }

          else
          {
            v15 = *(v11 + 8 * v14 + 32);
          }

          v16 = v15;
          ++v14;
          sub_1CA575728();
          sub_1CA342840(v17);
        }

        while (v13 != v14);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1CA949C58();
    v18 = sub_1CA949F68();
    v19 = sub_1CA94CC28();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_124();
      OUTLINED_FUNCTION_13_28(v20);
      OUTLINED_FUNCTION_7_33(&dword_1CA256000, v21, v19, "Incorrect parameter state class");
      OUTLINED_FUNCTION_60();
    }

    (*(v6 + 8))(v3, v4);
    if (sub_1CA25B410(MEMORY[0x1E69E7CC0]))
    {
      sub_1CA2E85F8();
    }
  }
}

id sub_1CA5762B4()
{
  OUTLINED_FUNCTION_12_25();
  swift_unknownObjectRetain();
  v4 = v3;
  v0(v2, v1);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  OUTLINED_FUNCTION_6_38();
  sub_1CA94C8E8();
  OUTLINED_FUNCTION_87();

  return v5;
}

uint64_t sub_1CA576354(uint64_t a1, uint8_t *a2, void *a3, unint64_t *a4)
{
  OUTLINED_FUNCTION_30();
  v9 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_4();
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    sub_1CA949C58();
    v24 = sub_1CA949F68();
    v25 = sub_1CA94CC28();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_124();
      OUTLINED_FUNCTION_13_28(v26);
      _os_log_impl(&dword_1CA256000, v24, v25, "Incorrect parameter state class", a2, 2u);
      OUTLINED_FUNCTION_60();
    }

    (*(v11 + 8))(v5, v9);
    swift_unknownObjectRetain();
    return v4;
  }

  v14 = v13;
  swift_unknownObjectRetain();
  v15 = [v14 values];
  sub_1CA25B3D0(0, &qword_1EC4448E8, off_1E836EE78);
  OUTLINED_FUNCTION_5_3();
  v16 = sub_1CA94C658();

  v17 = sub_1CA25B410(v16);
  if (!v17)
  {

    v23 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v27 = sub_1CA25B3D0(0, a4, a3);
    v28 = v23;
    v29 = v27;
    sub_1CA5765FC(v28, &qword_1EC4448E8, off_1E836EE78, &selRef_initWithValues_);
    OUTLINED_FUNCTION_87();
    swift_unknownObjectRelease();
    return v29;
  }

  v18 = v17;
  v30 = MEMORY[0x1E69E7CC0];
  result = sub_1CA94D508();
  if ((v18 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1CCAA22D0](v20, v16);
      }

      else
      {
        v21 = *(v16 + 8 * v20 + 32);
      }

      v22 = v21;
      ++v20;
      sub_1CA575AFC();

      sub_1CA94D4D8();
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }

    while (v18 != v20);

    v23 = v30;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1CA5765FC(uint64_t a1, unint64_t *a2, void *a3, SEL *a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = OUTLINED_FUNCTION_40();
  sub_1CA25B3D0(v9, a2, a3);
  v10 = sub_1CA94C648();

  v11 = [v4 *a4];

  return v11;
}

id sub_1CA5766A0()
{
  OUTLINED_FUNCTION_12_25();
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v3 = sub_1CA94C1C8();
  swift_unknownObjectRetain();
  v4 = v2;
  v5 = v0(v1, v3);
  swift_unknownObjectRelease();

  return v5;
}

void sub_1CA576748()
{
  OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_10_26();
  v3 = [v1 variable];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 userVisibleStringsForUseCase_];
    OUTLINED_FUNCTION_30();
    type metadata accessor for WFUserVisibleString();
    sub_1CA3434EC();
    OUTLINED_FUNCTION_20_0();
    sub_1CA94C8F8();

LABEL_10:
    OUTLINED_FUNCTION_17_16();
    return;
  }

  v6 = [v2 keyValuePairs];
  sub_1CA25B3D0(0, &qword_1EC4446A8, off_1E836E258);
  OUTLINED_FUNCTION_5_3();
  v7 = sub_1CA94C658();

  v8 = sub_1CA25B410(v7);
  if (!v8)
  {

    goto LABEL_10;
  }

  if (v8 >= 1)
  {
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_19_20();
      }

      else
      {
        v9 = OUTLINED_FUNCTION_18_23();
      }

      v10 = v9;
      v11 = OUTLINED_FUNCTION_9_28();
      v12 = sub_1CA342E28(v11);
      sub_1CA342840(v12);
    }
  }

  __break(1u);
}

void sub_1CA5768A8()
{
  OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_10_26();
  v3 = [v1 variable];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 userVisibleStringsForUseCase_];
    OUTLINED_FUNCTION_30();
    type metadata accessor for WFUserVisibleString();
    sub_1CA3434EC();
    OUTLINED_FUNCTION_20_0();
    sub_1CA94C8F8();

LABEL_10:
    OUTLINED_FUNCTION_17_16();
    return;
  }

  v6 = [v2 values];
  sub_1CA25B3D0(0, &qword_1EC4448E8, off_1E836EE78);
  OUTLINED_FUNCTION_5_3();
  v7 = sub_1CA94C658();

  v8 = sub_1CA25B410(v7);
  if (!v8)
  {

    goto LABEL_10;
  }

  if (v8 >= 1)
  {
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_19_20();
      }

      else
      {
        v9 = OUTLINED_FUNCTION_18_23();
      }

      v10 = v9;
      OUTLINED_FUNCTION_9_28();
      sub_1CA575728();
      sub_1CA342840(v11);
    }
  }

  __break(1u);
}

void sub_1CA576A08()
{
  OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_10_26();
  if ([v0 variable])
  {
    OUTLINED_FUNCTION_40();
    type metadata accessor for WFUserVisibleString();
    sub_1CA3434EC();
    OUTLINED_FUNCTION_20_0();
    v2 = sub_1CA94C1A8();
    v3 = [v0 rewrittenWithStrings_];

    [objc_allocWithZone(WFDictionarySubstitutableParameterState) initWithVariable_];
LABEL_10:
    OUTLINED_FUNCTION_17_16();
    return;
  }

  v4 = [v1 keyValuePairs];
  sub_1CA25B3D0(0, &qword_1EC4446A8, off_1E836E258);
  OUTLINED_FUNCTION_5_3();
  v5 = sub_1CA94C658();

  v6 = sub_1CA25B410(v5);
  if (!v6)
  {

    v11 = MEMORY[0x1E69E7CC0];
    sub_1CA25B3D0(0, &qword_1EC4465F0, off_1E836E268);
    sub_1CA5765FC(v11, &qword_1EC4446A8, off_1E836E258, &selRef_initWithKeyValuePairs_);
    goto LABEL_10;
  }

  v7 = v6;
  sub_1CA94D508();
  if ((v7 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_19_20();
      }

      else
      {
        v8 = OUTLINED_FUNCTION_18_23();
      }

      v9 = v8;
      v10 = OUTLINED_FUNCTION_9_28();
      sub_1CA343248(v10);

      sub_1CA94D4D8();
      OUTLINED_FUNCTION_15_18();
      sub_1CA94D518();
      OUTLINED_FUNCTION_15_18();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }
  }

  __break(1u);
}

void sub_1CA576BFC()
{
  OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_10_26();
  if ([v0 variable])
  {
    OUTLINED_FUNCTION_40();
    type metadata accessor for WFUserVisibleString();
    sub_1CA3434EC();
    OUTLINED_FUNCTION_20_0();
    v2 = sub_1CA94C1A8();
    v3 = [v0 rewrittenWithStrings_];

    [objc_allocWithZone(WFArraySubstitutableParameterState) initWithVariable_];
LABEL_10:
    OUTLINED_FUNCTION_17_16();
    return;
  }

  v4 = [v1 values];
  sub_1CA25B3D0(0, &qword_1EC4448E8, off_1E836EE78);
  OUTLINED_FUNCTION_5_3();
  v5 = sub_1CA94C658();

  v6 = sub_1CA25B410(v5);
  if (!v6)
  {

    v10 = MEMORY[0x1E69E7CC0];
    sub_1CA25B3D0(0, &qword_1EC4465F8, off_1E836DE50);
    sub_1CA5765FC(v10, &qword_1EC4448E8, off_1E836EE78, &selRef_initWithValues_);
    goto LABEL_10;
  }

  v7 = v6;
  sub_1CA94D508();
  if ((v7 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_19_20();
      }

      else
      {
        v8 = OUTLINED_FUNCTION_18_23();
      }

      v9 = v8;
      OUTLINED_FUNCTION_9_28();
      sub_1CA575AFC();

      sub_1CA94D4D8();
      OUTLINED_FUNCTION_15_18();
      sub_1CA94D518();
      OUTLINED_FUNCTION_15_18();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }
  }

  __break(1u);
}

id sub_1CA576E24()
{
  v119 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFNumberAction");
  *(inited + 55) = -18;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("decimal|math", 12);
  v6 = v5;
  v7 = sub_1CA94C438("decimal|math", 12);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v124 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v125 = v11;
  v12 = &v112 - v124;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v121 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v123 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v120 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v112 - v120;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v122 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v118 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Passes a number to the next action.", 35);
  v116 = v27;
  v28 = sub_1CA94C438("Passes a number to the next action.", 35);
  v30 = v29;
  v117 = &v112;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v112 - v124;
  sub_1CA948D98();
  v32 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v112 - v120;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v116, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v122;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v118;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 2036429383;
  *(inited + 208) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x7265626D756ELL;
  *(inited + 248) = 0xE600000000000000;
  *(inited + 264) = v38;
  *(inited + 272) = @"LocallyProcessesData";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  *(inited + 304) = v39;
  *(inited + 312) = @"Name";
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"LocallyProcessesData";
  v43 = @"Name";
  v44 = sub_1CA94C438("Number (Action Name)", 20);
  v46 = v45;
  v47 = sub_1CA94C438("Number", 6);
  v49 = v48;
  v118 = &v112;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v112 - v124;
  sub_1CA948D98();
  v51 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v112 - v120;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v44, v46, v47, v49, 0, 0, v50, v52);
  *(inited + 344) = v122;
  *(inited + 352) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_1CA981350;
  *(v54 + 32) = 0x75736F6C63736944;
  *(v54 + 40) = 0xEF6C6576654C6572;
  *(v54 + 48) = 0x63696C627550;
  *(v54 + 56) = 0xE600000000000000;
  *(v54 + 72) = MEMORY[0x1E69E6158];
  *(v54 + 80) = 0x656C7069746C754DLL;
  *(v54 + 88) = 0xE800000000000000;
  *(v54 + 96) = 0;
  *(v54 + 120) = MEMORY[0x1E69E6370];
  *(v54 + 128) = 0x614E74757074754FLL;
  *(v54 + 136) = 0xEA0000000000656DLL;
  v55 = @"Output";
  v56 = sub_1CA94C438("Number (Default Output Name)", 28);
  v117 = v57;
  v58 = sub_1CA94C438("Number", 6);
  v60 = v59;
  v118 = &v112;
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v112 - v124;
  sub_1CA948D98();
  v62 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v112 - v120;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 144) = sub_1CA2F9F14(v56, v117, v58, v60, 0, 0, v61, v63);
  *(v54 + 168) = v122;
  *(v54 + 176) = 0x7365707954;
  *(v54 + 184) = 0xE500000000000000;
  *(v54 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v54 + 192) = &unk_1F4A07238;
  v65 = MEMORY[0x1E69E6158];
  v66 = sub_1CA94C1E8();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 360) = v66;
  *(inited + 384) = v67;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v118 = swift_allocObject();
  *(v118 + 1) = xmmword_1CA9813B0;
  v117 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1CA981380;
  *(v68 + 32) = @"AllowsDecimalNumbers";
  *(v68 + 40) = 1;
  *(v68 + 64) = MEMORY[0x1E69E6370];
  *(v68 + 72) = @"Class";
  *(v68 + 80) = 0xD000000000000016;
  *(v68 + 88) = 0x80000001CA99C180;
  *(v68 + 104) = v65;
  *(v68 + 112) = @"Key";
  *(v68 + 120) = 0xD000000000000014;
  *(v68 + 128) = 0x80000001CA9CEF70;
  *(v68 + 144) = v65;
  *(v68 + 152) = @"Label";
  v69 = @"Parameters";
  v70 = @"AllowsDecimalNumbers";
  v71 = @"Class";
  v72 = @"Key";
  v73 = @"Label";
  v74 = sub_1CA94C438("Number (WFNumberActionNumber)", 29);
  v114 = v75;
  v115 = v74;
  v76 = sub_1CA94C438("Number", 6);
  v113 = v77;
  v116 = &v112;
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v112 - v124;
  sub_1CA948D98();
  v79 = v121;
  v80 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  v81 = v120;
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 160) = sub_1CA2F9F14(v115, v114, v76, v113, 0, 0, v78, &v112 - v81);
  *(v68 + 184) = v122;
  *(v68 + 192) = @"Placeholder";
  v83 = @"Placeholder";
  v84 = sub_1CA94C438("42 (WFNumberActionNumber)", 25);
  v114 = v85;
  v115 = v84;
  v86 = sub_1CA94C438("42", 2);
  v113 = v87;
  v116 = &v112;
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v112 - v124;
  sub_1CA948D98();
  v89 = [v79 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  sub_1CA948B68();

  v90 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 200) = sub_1CA2F9F14(v115, v114, v86, v113, 0, 0, v88, &v112 - v81);
  *(v68 + 224) = v122;
  *(v68 + 232) = @"TextAlignment";
  *(v68 + 264) = MEMORY[0x1E69E6158];
  *(v68 + 240) = 0x7468676952;
  *(v68 + 248) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v91 = @"TextAlignment";
  v92 = sub_1CA94C1E8();
  v93 = sub_1CA2F864C(v92);
  v94 = v118;
  v118[4] = v93;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v94;
  *(inited + 424) = v95;
  *(inited + 432) = @"ParameterSummary";
  v96 = @"ParameterSummary";
  v97 = sub_1CA94C438("${WFNumberActionNumber} (Parameter Summary)", 43);
  v99 = v98;
  v100 = sub_1CA94C438("${WFNumberActionNumber}", 23);
  v102 = v101;
  v122 = &v112;
  MEMORY[0x1EEE9AC00](v100);
  v103 = &v112 - v124;
  sub_1CA948D98();
  v104 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  v105 = &v112 - v120;
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v107 = sub_1CA2F9F14(v97, v99, v100, v102, 0, 0, v103, v105);
  v108 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v109 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v108;
  *(inited + 464) = v109;
  *(inited + 472) = @"ResidentCompatible";
  *(inited + 504) = MEMORY[0x1E69E6370];
  *(inited + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v110 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t TriggerConfigurationError.hashValue.getter()
{
  v1 = *v0;
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v1);
  return sub_1CA94D968();
}

uint64_t sub_1CA577D5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2C756C;

  return ToolKitRepresentableTrigger.resolveParameter(withKey:searchTerm:)();
}

uint64_t static WFTrigger.toolKitRepresentableTriggers.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446608, &qword_1CA98B808);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CA98B7F0;
  *(v0 + 32) = sub_1CA25B3D0(0, &qword_1EC446610, off_1E836F508);
  *(v0 + 40) = &protocol witness table for WFWifiTrigger;
  *(v0 + 48) = sub_1CA25B3D0(0, &qword_1EC446618, off_1E836DEB8);
  *(v0 + 56) = &protocol witness table for WFBluetoothTrigger;
  *(v0 + 64) = sub_1CA25B3D0(0, &qword_1EC446620, off_1E836DF00);
  *(v0 + 72) = &protocol witness table for WFCarPlayConnectionTrigger;
  *(v0 + 80) = sub_1CA25B3D0(0, &qword_1EC446628, off_1E836E328);
  *(v0 + 88) = &protocol witness table for WFExternalDisplayTrigger;
  *(v0 + 96) = sub_1CA25B3D0(0, &qword_1EC446630, off_1E836EE30);
  *(v0 + 104) = &protocol witness table for WFPlugInTrigger;
  *(v0 + 112) = sub_1CA25B3D0(0, &qword_1EC446638, off_1E836EB70);
  *(v0 + 120) = &protocol witness table for WFLowPowerModeTrigger;
  *(v0 + 128) = sub_1CA25B3D0(0, &qword_1EC446640, off_1E836DDF0);
  *(v0 + 136) = &protocol witness table for WFAirplaneModeTrigger;
  *(v0 + 144) = sub_1CA25B3D0(0, &qword_1EC446648, off_1E836F328);
  *(v0 + 152) = &protocol witness table for WFStageManagerTrigger;
  *(v0 + 160) = sub_1CA25B3D0(0, &qword_1EC446650, off_1E836E198);
  *(v0 + 168) = &protocol witness table for WFDNDTrigger;
  *(v0 + 176) = sub_1CA25B3D0(0, &qword_1EC446658, off_1E836DE08);
  *(v0 + 184) = &protocol witness table for WFAppInFocusTrigger;
  *(v0 + 192) = sub_1CA25B3D0(0, &qword_1EC446660, off_1E836EB58);
  *(v0 + 200) = &protocol witness table for WFLocationTrigger;
  *(v0 + 208) = sub_1CA25B3D0(0, &qword_1EC446668, off_1E836EBB8);
  *(v0 + 216) = &protocol witness table for WFMessageTrigger;
  *(v0 + 224) = sub_1CA25B3D0(0, &qword_1EC446670, off_1E836E2E0);
  *(v0 + 232) = &protocol witness table for WFEmailTrigger;
  *(v0 + 240) = sub_1CA25B3D0(0, &qword_1EC446678, off_1E836F5C8);
  *(v0 + 248) = &protocol witness table for WFWorkoutTrigger;
  *(v0 + 256) = sub_1CA25B3D0(0, &qword_1EC446680, off_1E836EE60);
  *(v0 + 264) = &protocol witness table for WFPredictedLocationTransitionTrigger;
  *(v0 + 272) = sub_1CA25B3D0(0, &qword_1EC446688, off_1E836DEA8);
  *(v0 + 280) = &protocol witness table for WFBatteryLevelTrigger;
  *(v0 + 288) = sub_1CA25B3D0(0, &qword_1EC446690, off_1E836F2C8);
  *(v0 + 296) = &protocol witness table for WFSleepTrigger;
  *(v0 + 304) = sub_1CA25B3D0(0, &qword_1EC446698, off_1E836EBF8);
  *(v0 + 312) = &protocol witness table for WFNFCTrigger;
  *(v0 + 320) = sub_1CA25B3D0(0, &qword_1EC4466A0, off_1E836F318);
  *(v0 + 328) = &protocol witness table for WFSoundRecognitionTrigger;
  *(v0 + 336) = sub_1CA25B3D0(0, &qword_1EC4466A8, off_1E836DDF8);
  *(v0 + 344) = &protocol witness table for WFAlarmTrigger;
  *(v0 + 352) = sub_1CA25B3D0(0, &qword_1EC4466B0, off_1E836F500);
  *(v0 + 360) = &protocol witness table for WFWalletTransactionTrigger;
  *(v0 + 368) = sub_1CA25B3D0(0, &qword_1EC4466B8, off_1E836F498);
  *(v0 + 376) = &protocol witness table for WFUserFocusActivityTrigger;
  return v0;
}

void sub_1CA578170()
{
  OUTLINED_FUNCTION_108();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1CA94ACC8();
  v8 = OUTLINED_FUNCTION_18_0(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_0();
  v9 = sub_1CA94AD08();
  v10 = OUTLINED_FUNCTION_18_0(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_0();
  v13 = (v12 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1CA9813C0;
  *(v14 + 32) = sub_1CA94C3A8();
  *(v14 + 40) = v15;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = NSStringFromClass(ObjCClassFromMetadata);
  v18 = sub_1CA94C3A8();
  v20 = v19;

  *(v14 + 48) = v18;
  *(v14 + 56) = v20;
  *(v14 + 64) = v6;
  *(v14 + 72) = v4;
  sub_1CA94C218();
  v21 = OUTLINED_FUNCTION_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  OUTLINED_FUNCTION_33_12();
  sub_1CA25C3BC(v23, &qword_1EC443E20, &qword_1CA986220, v24);
  sub_1CA94C308();

  v25 = [(objc_class *)ObjCClassFromMetadata localizedDisplayNameWithContext:*(v2 + *(type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0) + 28))];
  sub_1CA94C3A8();

  v26 = [(objc_class *)ObjCClassFromMetadata localizedDisplayExplanation];
  sub_1CA94C3A8();

  sub_1CA578424();
  v27 = sub_1CA94C218();
  sub_1CA2B895C(v27);
  sub_1CA5786A8(v2, v13);
  if (v0)
  {
  }

  else
  {
    sub_1CA578884();
    sub_1CA94AF68();
  }

  OUTLINED_FUNCTION_107();
}

void sub_1CA578424()
{
  OUTLINED_FUNCTION_37_0();
  v2 = sub_1CA94AD08();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v8 = (v7 - v6);
  v9 = sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_97_5();
  if ([swift_getObjCClassFromMetadata() isAllowedToRunAutomatically])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
    v13 = sub_1CA94B258();
    OUTLINED_FUNCTION_12(v13);
    OUTLINED_FUNCTION_45_9();
    v14 = OUTLINED_FUNCTION_149_2();
    *(v14 + 16) = xmmword_1CA981310;
    v15 = *MEMORY[0x1E69DB030];
    sub_1CA94AD98();
    OUTLINED_FUNCTION_0_1();
    (*(v16 + 104))(v0, v15);
    v17 = OUTLINED_FUNCTION_96_6();
    v18(v17);
    sub_1CA94ADC8();
    v19 = swift_allocBox();
    sub_1CA94AD38();
    *v8 = v19;
    (*(v4 + 104))(v8, *MEMORY[0x1E69DAF30], v2);
    sub_1CA57ABD8(v8, 0xD000000000000014, 0x80000001CA9CF4D0, v14 + v1);
    v20 = OUTLINED_FUNCTION_106();
    v21(v20);
    (*(v11 + 8))(v0, v9);
  }

  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA5786A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (![swift_getObjCClassFromMetadata() shortcutInputContentItemClass])
  {
    sub_1CA94ADC8();
    v8 = swift_allocBox();
    v11 = v10;
    sub_1CA94AD98();
    v12 = swift_allocBox();
    OUTLINED_FUNCTION_39();
    (*(v13 + 104))();
    *v11 = v12;
    OUTLINED_FUNCTION_39();
    (*(v14 + 104))(v11);
LABEL_6:
    *a2 = v8;
    v15 = *MEMORY[0x1E69DAF30];
    sub_1CA94AD08();
    OUTLINED_FUNCTION_0_1();
    return (*(v16 + 104))(a2, v15);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (dynamic_cast_existential_1_conditional(ObjCClassMetadata, ObjCClassMetadata, &protocol descriptor for WFToolKitContentItem))
  {
    OUTLINED_FUNCTION_194();
    sub_1CA94ADC8();
    v8 = swift_allocBox();
    (*(v4 + 8))(a1, v3, v4);
    if (v2)
    {
      return swift_deallocBox();
    }

    goto LABEL_6;
  }

  sub_1CA5892EC();
  swift_allocError();
  *v17 = ObjCClassMetadata;
  return swift_willThrow();
}

void sub_1CA578884()
{
  OUTLINED_FUNCTION_37_0();
  sub_1CA94ACC8();
  OUTLINED_FUNCTION_1_0();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  sub_1CA589348(&qword_1EC4468A0, MEMORY[0x1E69DAEB0], MEMORY[0x1E69DAEC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468A8, &unk_1CA98BED8);
  sub_1CA25C3BC(&qword_1EC4468B0, &qword_1EC4468A8, &unk_1CA98BED8, MEMORY[0x1E69E6328]);
  sub_1CA94D2A8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ([ObjCClassFromMetadata isAllowedToRunAutomatically])
  {
    sub_1CA94ACB8();
    v5 = OUTLINED_FUNCTION_187();
    sub_1CA2BDCA8(v5, v6);
    v7 = *(v1 + 8);
    v8 = OUTLINED_FUNCTION_106();
    v7(v8);
    v9 = OUTLINED_FUNCTION_130();
    v7(v9);
  }

  if ([ObjCClassFromMetadata requiresNotification])
  {
    sub_1CA94ACA8();
    v10 = OUTLINED_FUNCTION_187();
    sub_1CA2BDCA8(v10, v11);
    v12 = *(v1 + 8);
    v13 = OUTLINED_FUNCTION_106();
    v12(v13);
    v14 = OUTLINED_FUNCTION_130();
    v12(v14);
  }

  if ([ObjCClassFromMetadata isUserInitiated])
  {
    sub_1CA94AC98();
    v15 = OUTLINED_FUNCTION_187();
    sub_1CA2BDCA8(v15, v16);
    v17 = *(v1 + 8);
    v18 = OUTLINED_FUNCTION_106();
    v17(v18);
    v19 = OUTLINED_FUNCTION_130();
    v17(v19);
  }

  OUTLINED_FUNCTION_36();
}

void *sub_1CA578AE4(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  sub_1CA94C3A8();
  sub_1CA94C218();
  v10 = sub_1CA94C468();

  result = (v10 + 1);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v12 = sub_1CA379458(result, a1, a2);
    OUTLINED_FUNCTION_108_4(v12, v13, v14, v15, v16, v17);
    sub_1CA27BAF0();
    v18 = sub_1CA94D178();

    if (v18[2] != 2 || (sub_1CA94C218(), v19 = sub_1CA94C368(), , v20 = NSClassFromString(v19), v19, !v20) || (swift_getObjCClassMetadata(), sub_1CA25B3D0(0, a3, a4), !swift_dynamicCastMetatype()))
    {

      sub_1CA589298();
      swift_allocError();
      *v23 = 0;
      swift_willThrow();
      return a4;
    }

    result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    if (v18[2] >= 2uLL)
    {
      a4 = result;
      v21 = v18[6];
      v22 = v18[7];
      sub_1CA94C218();

      a5(v21, v22);

      return a4;
    }
  }

  __break(1u);
  return result;
}

void *sub_1CA578CD0(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  sub_1CA94C3A8();
  sub_1CA94C218();
  v8 = sub_1CA94C468();

  result = (v8 + 1);
  if (!__OFADD__(v8, 1))
  {
    v10 = sub_1CA379458(result, a1, a2);
    OUTLINED_FUNCTION_108_4(v10, v11, v12, v13, v14, v15);
    sub_1CA27BAF0();
    v16 = sub_1CA94D178();

    if (*(v16 + 16) == 2)
    {
      sub_1CA94C218();
      v17 = sub_1CA94C368();

      v18 = NSClassFromString(v17);

      if (v18)
      {
        swift_getObjCClassMetadata();
        v19 = OUTLINED_FUNCTION_102_3();
        sub_1CA25B3D0(v19, a3, a4);
        if (swift_dynamicCastMetatype())
        {
          a4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v20 = *(v16 + 16);

          if (v20 >= 2)
          {
            return a4;
          }

          __break(1u);
        }
      }
    }

    sub_1CA589298();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    return a4;
  }

  __break(1u);
  return result;
}

void sub_1CA578E88()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1CA94AC18();
  OUTLINED_FUNCTION_1_0();
  v38 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  v11 = v10 - v9;
  v12 = sub_1CA94AC88();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19();
  v18 = (v16 - v17);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v37 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v37 - v23;
  if (*(v1 + 16))
  {
    v25 = sub_1CA271BF8(v5, v3);
    if (v26)
    {
      (*(v14 + 16))(v22, *(v1 + 56) + *(v14 + 72) * v25, v12);
      v27 = *(v14 + 32);
      v27(v24, v22, v12);
      v27(v18, v24, v12);
      v28 = OUTLINED_FUNCTION_187();
      if (v29(v28) == *MEMORY[0x1E69DAE70])
      {
        v30 = OUTLINED_FUNCTION_187();
        v31(v30);
        swift_projectBox();
        v32 = v38;
        v33 = OUTLINED_FUNCTION_76_5();
        v34(v33);
        if ((*(v32 + 88))(v11, v6) == *MEMORY[0x1E69DADC0])
        {
          (*(v32 + 96))(v11, v6);
        }

        else
        {
          (*(v32 + 8))(v11, v6);
        }
      }

      else
      {
        v35 = OUTLINED_FUNCTION_187();
        v36(v35);
      }
    }
  }

  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA57914C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA94AC18();
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1CA94AC88();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v26 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - v17;
  if (!*(a3 + 16))
  {
    return 0;
  }

  v19 = sub_1CA271BF8(a1, a2);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  (*(v10 + 16))(v16, *(a3 + 56) + *(v10 + 72) * v19, v9);
  v21 = *(v10 + 32);
  v21(v18, v16, v9);
  v21(v13, v18, v9);
  if ((*(v10 + 88))(v13, v9) != *MEMORY[0x1E69DAE70])
  {
    (*(v10 + 8))(v13, v9);
    return 0;
  }

  (*(v10 + 96))(v13, v9);
  v22 = swift_projectBox();
  v23 = v27;
  (*(v27 + 16))(v8, v22, v6);
  if ((*(v23 + 88))(v8, v6) != *MEMORY[0x1E69DADE0])
  {
    (*(v23 + 8))(v8, v6);

    return 0;
  }

  (*(v23 + 96))(v8, v6);
  v24 = *v8;

  return v24;
}

uint64_t sub_1CA579460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA94AC18();
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1CA94AC88();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v26 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - v17;
  if (!*(a3 + 16))
  {
    return 0;
  }

  v19 = sub_1CA271BF8(a1, a2);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  (*(v10 + 16))(v16, *(a3 + 56) + *(v10 + 72) * v19, v9);
  v21 = *(v10 + 32);
  v21(v18, v16, v9);
  v21(v13, v18, v9);
  if ((*(v10 + 88))(v13, v9) != *MEMORY[0x1E69DAE70])
  {
    (*(v10 + 8))(v13, v9);
    return 0;
  }

  (*(v10 + 96))(v13, v9);
  v22 = swift_projectBox();
  v23 = v27;
  (*(v27 + 16))(v8, v22, v6);
  if ((*(v23 + 88))(v8, v6) != *MEMORY[0x1E69DADF0])
  {
    (*(v23 + 8))(v8, v6);

    return 0;
  }

  (*(v23 + 96))(v8, v6);
  v24 = *v8;

  return v24;
}

uint64_t sub_1CA579774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = sub_1CA94AC18();
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CA94AC88();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v31 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - v18;
  if (!*(a3 + 16))
  {
    goto LABEL_8;
  }

  v20 = sub_1CA271BF8(a1, a2);
  if ((v21 & 1) == 0)
  {
    goto LABEL_8;
  }

  (*(v11 + 16))(v17, *(a3 + 56) + *(v11 + 72) * v20, v10);
  v22 = *(v11 + 32);
  v22(v19, v17, v10);
  v22(v14, v19, v10);
  if ((*(v11 + 88))(v14, v10) != *MEMORY[0x1E69DAE70])
  {
    (*(v11 + 8))(v14, v10);
LABEL_8:
    v29 = sub_1CA948CB8();
    v27 = v32;
    v28 = 1;
    return __swift_storeEnumTagSinglePayload(v27, v28, 1, v29);
  }

  (*(v11 + 96))(v14, v10);
  v23 = swift_projectBox();
  v24 = v31;
  (*(v31 + 16))(v9, v23, v7);
  if ((*(v24 + 88))(v9, v7) != *MEMORY[0x1E69DADC8])
  {
    (*(v24 + 8))(v9, v7);

    goto LABEL_8;
  }

  (*(v24 + 96))(v9, v7);
  v25 = sub_1CA948CB8();
  v26 = v32;
  (*(*(v25 - 8) + 32))(v32, v9, v25);

  v27 = v26;
  v28 = 0;
  v29 = v25;
  return __swift_storeEnumTagSinglePayload(v27, v28, 1, v29);
}

void sub_1CA579AE8()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v3 = sub_1CA94A8C8();
  OUTLINED_FUNCTION_1_0();
  v35 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v8 = v7 - v6;
  v9 = sub_1CA94AC88();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_19();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_126_3();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  if (*(v2 + 16))
  {
    v20 = OUTLINED_FUNCTION_204();
    v22 = sub_1CA271BF8(v20, v21);
    if (v23)
    {
      v24 = *(v11 + 16);
      v24(v0, *(v2 + 56) + *(v11 + 72) * v22, v9);
      (*(v11 + 32))(v19, v0, v9);
      v24(v15, v19, v9);
      v25 = OUTLINED_FUNCTION_68_3();
      if (v26(v25) == *MEMORY[0x1E69DAE20])
      {
        v27 = OUTLINED_FUNCTION_68_3();
        v28(v27);
        v29 = swift_projectBox();
        (*(v35 + 16))(v8, v29, v3);

        sub_1CA94A898();
        v30 = OUTLINED_FUNCTION_106();
        v31(v30);
        (*(v11 + 8))(v19, v9);
      }

      else
      {
        v32 = *(v11 + 8);
        v32(v19, v9);
        v33 = OUTLINED_FUNCTION_68_3();
        (v32)(v33);
      }
    }
  }

  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA579D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1CA94AC88();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v27 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - v16;
  if (!*(a3 + 16))
  {
    goto LABEL_6;
  }

  v18 = sub_1CA271BF8(a1, a2);
  if ((v19 & 1) == 0)
  {
    goto LABEL_6;
  }

  (*(v9 + 16))(v15, *(a3 + 56) + *(v9 + 72) * v18, v8);
  v20 = *(v9 + 32);
  v20(v17, v15, v8);
  v20(v12, v17, v8);
  if ((*(v9 + 88))(v12, v8) != *MEMORY[0x1E69DAE18])
  {
    (*(v9 + 8))(v12, v8);
LABEL_6:
    v25 = sub_1CA94A888();
    v23 = a4;
    v24 = 1;
    return __swift_storeEnumTagSinglePayload(v23, v24, 1, v25);
  }

  (*(v9 + 96))(v12, v8);
  v21 = sub_1CA94A888();
  v22 = swift_projectBox();
  (*(*(v21 - 8) + 16))(a4, v22, v21);

  v23 = a4;
  v24 = 0;
  v25 = v21;
  return __swift_storeEnumTagSinglePayload(v23, v24, 1, v25);
}

uint64_t sub_1CA579FF0(uint64_t a1, uint64_t a2, void (*a3)(char *, unint64_t, uint64_t))
{
  v62 = a3;
  v49 = sub_1CA94AC18();
  v59 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CA94AC88();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v63 = v44 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468E8, &unk_1CA98BEF0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v44 - v14;
  v16 = sub_1CA94A888();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA579D8C(a1, a2, v62, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_1CA2E9314(v15, &qword_1EC4468E8, &unk_1CA98BEF0);
    return 0;
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v21 = sub_1CA94A878();
    v22 = *(v21 + 16);
    if (v22)
    {
      v45 = v17;
      v46 = v16;
      v58 = v6;
      v24 = *(v8 + 16);
      v23 = v8 + 16;
      v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
      v44[1] = v21;
      v26 = v21 + v25;
      v61 = *(v23 + 56);
      v62 = v24;
      v27 = (v23 + 16);
      v28 = (v23 + 72);
      v60 = *MEMORY[0x1E69DAE70];
      v55 = (v23 + 80);
      v56 = (v23 - 8);
      v54 = (v59 + 16);
      v53 = (v59 + 88);
      v52 = *MEMORY[0x1E69DADF0];
      v47 = (v59 + 96);
      v48 = (v59 + 8);
      v59 = MEMORY[0x1E69E7CC0];
      v29 = v49;
      v57 = v19;
      do
      {
        v30 = v63;
        v62(v63, v26, v7);
        (*v27)(v11, v30, v7);
        v31 = (*v28)(v11, v7);
        if (v31 == v60)
        {
          v32 = v23;
          (*v55)(v11, v7);
          v33 = swift_projectBox();
          v34 = v58;
          (*v54)(v58, v33, v29);
          v35 = (*v53)(v34, v29);
          if (v35 == v52)
          {
            (*v47)(v34, v29);
            v36 = *v34;
            v50 = v34[1];
            v51 = v36;

            v37 = v59;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1CA26DADC();
              v37 = v41;
            }

            v38 = *(v37 + 16);
            if (v38 >= *(v37 + 24) >> 1)
            {
              sub_1CA26DADC();
              v37 = v42;
            }

            *(v37 + 16) = v38 + 1;
            v59 = v37;
            v39 = v37 + 16 * v38;
            v40 = v50;
            *(v39 + 32) = v51;
            *(v39 + 40) = v40;
            v29 = v49;
          }

          else
          {
            (*v48)(v34, v29);
          }

          v23 = v32;
          v19 = v57;
        }

        else
        {
          (*v56)(v11, v7);
        }

        v26 += v61;
        --v22;
      }

      while (v22);

      v17 = v45;
      v16 = v46;
      v20 = v59;
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    (*(v17 + 8))(v19, v16);
  }

  return v20;
}

void static WFWifiTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v39 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  v42 = sub_1CA94AD08();
  OUTLINED_FUNCTION_4_12();
  v46 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_19();
  v45 = sub_1CA94B258();
  v37 = *(v45 - 8);
  v43 = v37;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_6_0();
  v44 = v8 - v7;
  v41 = swift_allocBox();
  v10 = v9;
  sub_1CA94ADC8();
  v11 = swift_allocBox();
  v13 = v12;
  v14 = sub_1CA94AD98();
  v15 = swift_allocBox();
  OUTLINED_FUNCTION_39();
  v35 = *(v16 + 104);
  v35();
  *v13 = v15;
  OUTLINED_FUNCTION_39();
  (*(v17 + 104))(v13);
  *v10 = v11;
  v36 = *MEMORY[0x1E69DAF30];
  v34 = *(v46 + 104);
  v34(v10);
  *v1 = v41;
  (v34)(v1, *MEMORY[0x1E69DAF18], v42);
  sub_1CA57ABD8(v1, 0xD000000000000010, 0x80000001CA9CF020, v44);
  v33 = *(v46 + 8);
  v18 = OUTLINED_FUNCTION_141_4();
  v19(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_40();
  sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1CA97EDF0;
  v40 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v21 = *(v37 + 72);
  v22 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  v38 = v22;
  v24 = v23 + v22;
  v32 = *(v43 + 16);
  v32(v24, v44, v45);
  (v35)(v39, *MEMORY[0x1E69DB030], v14);
  v25 = OUTLINED_FUNCTION_96_6();
  v26(v25);
  swift_allocBox();
  OUTLINED_FUNCTION_99_4();
  sub_1CA94AD38();
  *v1 = v44;
  (v34)(v1, v36, v42);
  sub_1CA57ABD8(v1, 0xD00000000000001ELL, 0x80000001CA9CF040, v24 + v21);
  v33(v1, v42);
  v27 = OUTLINED_FUNCTION_119();
  v28(v27);
  sub_1CA578170();
  swift_setDeallocating();
  sub_1CA32E40C();
  if (v0)
  {
    (*(v43 + 8))(v44, v45);
    *(v40 + 16) = 0;
  }

  else
  {
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1CA981310;
    v32(v29 + v38, v44, v45);
    OUTLINED_FUNCTION_125_3();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    v30 = OUTLINED_FUNCTION_195();
    v31(v30);
  }

  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_107();
}

uint64_t sub_1CA57ABD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a3;
  v20 = a4;
  v21 = a2;
  v19 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4468F0, &qword_1CA9834C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v18 = &v17 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444420, &qword_1CA98BF00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_1CA94AD08();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CA94B1E8();
  MEMORY[0x1EEE9AC00](v13);
  v22 = MEMORY[0x1E69E7CC0];
  sub_1CA589348(&unk_1EC446900, MEMORY[0x1E69DB338], MEMORY[0x1E69DB340]);
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444428, &qword_1CA9834C8);
  sub_1CA25C3BC(&unk_1EC446910, &qword_1EC444428, &qword_1CA9834C8, MEMORY[0x1E69E6328]);
  sub_1CA94D2A8();
  (*(v10 + 16))(v12, v19, v9);
  v14 = sub_1CA94B1D8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  v15 = sub_1CA94B208();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v15);
  return sub_1CA94B218();
}

Swift::Void __swiftcall WFWifiTrigger.updateVariant(withIdentifierSuffix:)(Swift::String withIdentifierSuffix)
{
  v1 = OUTLINED_FUNCTION_16_26();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (v4 = v2, (OUTLINED_FUNCTION_13_29(v1, 0xE700000000000000) & 1) != 0) || ((OUTLINED_FUNCTION_11_28(), v3) ? (v8 = v4 == v7) : (v8 = 0), v8 || (OUTLINED_FUNCTION_125_3(), (OUTLINED_FUNCTION_13_29(v9, v10) & 1) != 0)))
  {
    v5 = OUTLINED_FUNCTION_17_17();

    [v5 v6];
  }
}

void static WFWifiTrigger.configuredTriggerRecord(triggerDefinition:parameterValuesByKey:)()
{
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_9_29();
  v2 = [objc_allocWithZone(WFConfiguredTriggerRecord) init];
  v3 = sub_1CA94AF78();
  v5 = sub_1CA578AE4(v3, v4, &qword_1EC446610, off_1E836F508, WFWifiTrigger.updateVariant(withIdentifierSuffix:));
  if (v0)
  {
  }

  else
  {
    v6 = v5;

    v7 = OUTLINED_FUNCTION_74_6();
    if (sub_1CA579FF0(v7, v8, v1))
    {
      v9 = sub_1CA94C648();

      [v6 setSelectedNetworks_];
    }

    sub_1CA578E88();
    if (v10 != 2)
    {
      [v6 setRunAfterConnectionInterruption_];
    }

    v11 = OUTLINED_FUNCTION_74_6();
    if (sub_1CA579FF0(v11, v12, v1))
    {
      v13 = sub_1CA94C648();

      [v6 setSelectedNetworks_];
    }

    sub_1CA578E88();
    if (v14 != 2)
    {
      [v6 setRunAfterConnectionInterruption_];
    }

    v15 = [v6 serializedData];
    if (v15)
    {
      sub_1CA948C08();
      OUTLINED_FUNCTION_63_8();

      OUTLINED_FUNCTION_72_0();
      v15 = sub_1CA948BF8();
      v16 = OUTLINED_FUNCTION_72_0();
      sub_1CA266F2C(v16, v17);
    }

    v18 = OUTLINED_FUNCTION_50_6();
    [v18 v19];

    v20 = OUTLINED_FUNCTION_152_3();
    v21 = OUTLINED_FUNCTION_93_4(v20, sel_setShouldPrompt_);
    v22 = OUTLINED_FUNCTION_65_5(v21, sel_setShouldNotify_);
    v23 = OUTLINED_FUNCTION_65_5(v22, sel_setEnabled_);
    OUTLINED_FUNCTION_95_6(v23, sel_setSource_);
  }

  OUTLINED_FUNCTION_44_8();
  OUTLINED_FUNCTION_107();
}

uint64_t sub_1CA57B200()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2C99BC;

  return ToolKitRepresentableTrigger.resolveParameter(withKey:searchTerm:)();
}

uint64_t sub_1CA57B2F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_30();
  sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_118_3();
  v1 = OUTLINED_FUNCTION_107_3();
  *(v1 + 16) = xmmword_1CA9813C0;
  sub_1CA578170();
  if (v0)
  {
    OUTLINED_FUNCTION_69_8();
  }

  else
  {
    sub_1CA578170();
    OUTLINED_FUNCTION_8_26();
    sub_1CA578170();
  }

  return v1;
}

uint64_t _sSo18WFBluetoothTriggerC11WorkflowKitE13updateVariant20withIdentifierSuffixySS_tF_0()
{
  v1 = OUTLINED_FUNCTION_16_26();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3)
  {
    goto LABEL_18;
  }

  v4 = v2;
  if (OUTLINED_FUNCTION_13_29(v1, 0xE700000000000000))
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_11_28();
  if (v3 && v4 == v5)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_125_3();
  if (OUTLINED_FUNCTION_13_29(v7, v8))
  {
    goto LABEL_18;
  }

  v9 = OUTLINED_FUNCTION_8_26();
  v10 = v0 == v9 && v4 == 0xE600000000000000;
  if (v10 || (result = OUTLINED_FUNCTION_13_29(v9, 0xE600000000000000), (result & 1) != 0))
  {
    v12 = OUTLINED_FUNCTION_32_12();
    [v12 v13];
LABEL_18:
    v14 = OUTLINED_FUNCTION_17_17();

    return [v14 v15];
  }

  return result;
}

Swift::Void __swiftcall WFPlugInTrigger.updateVariant(withIdentifierSuffix:)(Swift::String withIdentifierSuffix)
{
  v2 = OUTLINED_FUNCTION_16_26();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4)
  {
    goto LABEL_18;
  }

  v5 = v3;
  if (OUTLINED_FUNCTION_13_29(v2, 0xE700000000000000))
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_11_28();
  if (v4 && v5 == v6)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_125_3();
  if (OUTLINED_FUNCTION_13_29(v8, v9))
  {
    goto LABEL_18;
  }

  v10 = OUTLINED_FUNCTION_8_26();
  v11 = v1 == v10 && v5 == 0xE600000000000000;
  if (v11 || (OUTLINED_FUNCTION_13_29(v10, 0xE600000000000000) & 1) != 0)
  {
    v12 = OUTLINED_FUNCTION_32_12();
    [v12 v13];
LABEL_18:
    v14 = OUTLINED_FUNCTION_17_17();

    [v14 v15];
  }
}

void static WFAppInFocusTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_116_4(v3);
  sub_1CA94ADC8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_37_10();
  v21 = sub_1CA94B258();
  v5 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_19();
  sub_1CA94AD98();
  v6 = swift_allocBox();
  OUTLINED_FUNCTION_39();
  (*(v7 + 104))();
  *v1 = v6;
  v8 = OUTLINED_FUNCTION_101();
  v9(v8);
  sub_1CA57BE3C(v1, 0x64657463656C6573, 0xEC00000073707041, v2);
  v10 = OUTLINED_FUNCTION_195();
  v11(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_105_5();
  OUTLINED_FUNCTION_22_17();
  *(swift_allocObject() + 16) = xmmword_1CA9813C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_140_4(v13, xmmword_1CA981310);
  v20 = *(v5 + 16);
  (v20)(v14 + v12, v2, v21);
  OUTLINED_FUNCTION_104_4();
  sub_1CA578170();
  swift_setDeallocating();
  sub_1CA32E40C();
  if (v0)
  {
    v15 = OUTLINED_FUNCTION_30_16();
    v16(v15);
    OUTLINED_FUNCTION_69_8();
  }

  else
  {
    *(swift_allocObject() + 16) = v19;
    OUTLINED_FUNCTION_49_6();
    v20();
    OUTLINED_FUNCTION_41_11();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    *(swift_allocObject() + 16) = v19;
    OUTLINED_FUNCTION_49_6();
    v20();
    OUTLINED_FUNCTION_8_26();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    v17 = OUTLINED_FUNCTION_30_16();
    v18(v17);
  }

  OUTLINED_FUNCTION_107();
}

uint64_t sub_1CA57BE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a3;
  v7 = sub_1CA94AD08();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocBox();
  v13 = v12;
  v14 = sub_1CA94ADC8();
  v15 = swift_allocBox();
  (*(*(v14 - 8) + 16))(v16, a1, v14);
  *v13 = v15;
  v17 = *(v8 + 104);
  v17(v13, *MEMORY[0x1E69DAF30], v7);
  *v10 = v11;
  v17(v10, *MEMORY[0x1E69DAF18], v7);
  sub_1CA57ABD8(v10, a2, v20, a4);
  return (*(v8 + 8))(v10, v7);
}

Swift::Void __swiftcall WFAppInFocusTrigger.updateVariant(withIdentifierSuffix:)(Swift::String withIdentifierSuffix)
{
  if (withIdentifierSuffix._countAndFlagsBits == 28271 && withIdentifierSuffix._object == 0xE200000000000000)
  {
    goto LABEL_18;
  }

  object = withIdentifierSuffix._object;
  countAndFlagsBits = withIdentifierSuffix._countAndFlagsBits;
  v4 = OUTLINED_FUNCTION_104_4();
  if (OUTLINED_FUNCTION_13_29(v4, v5))
  {
    goto LABEL_18;
  }

  if (countAndFlagsBits == 6710895 && object == 0xE300000000000000)
  {
    goto LABEL_18;
  }

  v7 = OUTLINED_FUNCTION_41_11();
  if (OUTLINED_FUNCTION_13_29(v7, v8))
  {
    goto LABEL_18;
  }

  v9 = OUTLINED_FUNCTION_8_26();
  v10 = countAndFlagsBits == v9 && object == 0xE600000000000000;
  if (v10 || (OUTLINED_FUNCTION_13_29(v9, 0xE600000000000000) & 1) != 0)
  {
    v11 = OUTLINED_FUNCTION_32_12();
    [v11 v12];
LABEL_18:
    v13 = OUTLINED_FUNCTION_17_17();

    [v13 v14];
  }
}

uint64_t WFAppInFocusTrigger.resolveParameter(withKey:searchTerm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA57C11C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[8] == 0x64657463656C6573 && v0[9] == 0xEC00000073707041;
  if (v1 || (sub_1CA94D7F8() & 1) != 0)
  {
    v2 = v0[10];
    v3 = v0[11];
    v4 = WFInstalledAppsEnumerator();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CA588A20;
    *(v6 + 24) = v5;
    v0[6] = sub_1CA588A28;
    v0[7] = v6;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1CA57C4B4;
    v0[5] = &block_descriptor_23;
    v7 = _Block_copy(v0 + 2);
    sub_1CA94C218();

    v8 = [v4 swift:v7 firstWhere:?];

    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      if (!v8 || (v10 = sub_1CA3AC3E8(v8, &selRef_bundleIdentifier), !v11))
      {
LABEL_13:

        goto LABEL_14;
      }

      isEscapingClosureAtFileLocation = v10;
      v6 = v11;
      v12 = [v0[12] selectedBundleIdentifiers];
      v13 = sub_1CA94C658();

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_10:
        v14 = *(v13 + 16);
        v15 = v14 + 1;
        if (v14 >= *(v13 + 24) >> 1)
        {
          v22 = *(v13 + 16);
          sub_1CA26DADC();
          v14 = v22;
          v13 = v23;
        }

        v16 = v0[12];
        *(v13 + 16) = v15;
        v17 = v13 + 16 * v14;
        *(v17 + 32) = isEscapingClosureAtFileLocation;
        *(v17 + 40) = v6;
        v18 = sub_1CA94C648();

        [v16 setSelectedBundleIdentifiers_];

        goto LABEL_13;
      }
    }

    sub_1CA26DADC();
    v13 = v21;
    goto LABEL_10;
  }

LABEL_14:
  OUTLINED_FUNCTION_3_6();

  return v19();
}

uint64_t sub_1CA57C3F0(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 wf:0 isAvailableInContext:?])
  {
    v4 = [a1 localizedName];
    sub_1CA94C3A8();

    sub_1CA27BAF0();
    v5 = sub_1CA94D208();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1CA57C4B4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_1CA57C52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA2C99BC;

  return WFAppInFocusTrigger.resolveParameter(withKey:searchTerm:)(a1, a2, a3, a4);
}

void static WFLocationTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  v99 = v1;
  v103 = v0;
  v104 = v4;
  v5 = sub_1CA94AD08();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_85_5();
  v9 = sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_97_5();
  v107 = sub_1CA94B258();
  v13 = *(v107 - 8);
  v97 = (v107 - 8);
  v98 = v13;
  v102 = v13;
  MEMORY[0x1EEE9AC00](v107 - 8);
  OUTLINED_FUNCTION_19();
  v105 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_126_3();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v86 - v18;
  v106 = &v86 - v18;
  v20 = *MEMORY[0x1E69DB080];
  sub_1CA94AD98();
  OUTLINED_FUNCTION_0_1();
  (*(v21 + 104))(v0, v20);
  v22 = OUTLINED_FUNCTION_96_6();
  v23(v22);
  sub_1CA94ADC8();
  v24 = swift_allocBox();
  sub_1CA94AD38();
  *v2 = v24;
  (*(v7 + 104))(v2, *MEMORY[0x1E69DAF30], v5);
  sub_1CA57ABD8(v2, 0x6E6F697461636F6CLL, 0xE800000000000000, v19);
  v25 = *(v7 + 8);
  v26 = OUTLINED_FUNCTION_137();
  v25(v26);
  (*(v11 + 8))(v0, v9);
  v27 = v102;
  v28 = MEMORY[0x1E69DB188];
  sub_1CA587F18(MEMORY[0x1E69DB188], v29, v30, v31, v32, v33, v34, v35, v86, v87, v88.n128_i64[0], v88.n128_i64[1]);
  v101 = v3;
  OUTLINED_FUNCTION_151_4(v2, 0x6D69547472617473, v3);
  v36 = OUTLINED_FUNCTION_137();
  v25(v36);
  sub_1CA587F18(v28, v37, v38, v39, v40, v41, v42, v43, v86, v87, v88.n128_i64[0], v88.n128_i64[1]);
  sub_1CA57ABD8(v2, 0x656D6954646E65, 0xE700000000000000, v105);
  v44 = OUTLINED_FUNCTION_137();
  v25(v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_40();
  v45 = sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0();
  v47 = v46;
  OUTLINED_FUNCTION_118_3();
  v50 = v49 & ~v48;
  v96 = v51;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1CA981350;
  v100 = v52;
  v53 = v52 + v50;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v55 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v98 = *(v98 + 72);
  v56 = swift_allocObject();
  v93 = xmmword_1CA981310;
  *(v56 + 16) = xmmword_1CA981310;
  v57 = *(v27 + 16);
  v95 = v55;
  v97 = v57;
  v57(v56 + v55, v106, v107);
  v94 = v53;
  OUTLINED_FUNCTION_68_8();
  v58 = v99;
  sub_1CA578170();
  if (v58)
  {
    swift_setDeallocating();
    sub_1CA32E40C();
    v59 = *(v27 + 8);
    OUTLINED_FUNCTION_24_16();
    v59();
    (v59)(v101, v56);
    v60 = OUTLINED_FUNCTION_98_4();
    (v59)(v60);
  }

  else
  {
    v99 = v47;
    v92 = v45;
    swift_setDeallocating();
    sub_1CA32E40C();
    v90 = v54;
    v91 = "B16@?0@LSApplicationRecord8";
    v61 = v98;
    v62 = v95;
    v89 = 3 * v98;
    v63 = swift_allocObject();
    v88 = xmmword_1CA9813C0;
    v64 = OUTLINED_FUNCTION_135_3(v63, xmmword_1CA9813C0);
    v65 = v97;
    (v97)(v64);
    v65(v62 + v61, v101, v107);
    v65(v62 + 2 * v61, v105, v107);
    v66 = v94;
    OUTLINED_FUNCTION_81_6();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    v67 = v95;
    v68 = v66 + 2 * v96;
    v69 = swift_allocObject();
    *(v69 + 16) = v93;
    v97(v69 + v67, v106, v107);
    OUTLINED_FUNCTION_68_8();
    sub_1CA578170();
    *&v93 = 0;
    v87 = v68;
    v70 = v98;
    swift_setDeallocating();
    sub_1CA32E40C();
    v71 = v95;
    v91 = "enter_location_between";
    v72 = swift_allocObject();
    v73 = OUTLINED_FUNCTION_135_3(v72, v88);
    v74 = v101;
    v75 = v97;
    (v97)(v73);
    v75(v71 + v70, v74, v107);
    v76 = v94;
    v75(v71 + 2 * v70, v105, v107);
    OUTLINED_FUNCTION_81_6();
    v77 = v93;
    sub_1CA578170();
    if (!v77)
    {
      swift_setDeallocating();
      sub_1CA32E40C();
      v83 = *(v102 + 8);
      OUTLINED_FUNCTION_24_16();
      v83();
      v84 = OUTLINED_FUNCTION_142_4();
      (v83)(v84);
      v85 = OUTLINED_FUNCTION_98_4();
      (v83)(v85);
      goto LABEL_6;
    }

    swift_setDeallocating();
    sub_1CA32E40C();
    v78 = *(v102 + 8);
    OUTLINED_FUNCTION_24_16();
    v78();
    v79 = OUTLINED_FUNCTION_142_4();
    (v78)(v79);
    v80 = OUTLINED_FUNCTION_98_4();
    (v78)(v80);
    v81 = *(v99 + 8);
    v82 = v92;
    v81(v87, v92);
    v81(v76 + v96, v82);
    v81(v76, v82);
  }

  OUTLINED_FUNCTION_69_8();
LABEL_6:
  OUTLINED_FUNCTION_107();
}

void static WFLocationTrigger.configuredTriggerRecord(triggerDefinition:parameterValuesByKey:)()
{
  OUTLINED_FUNCTION_108();
  v2 = v1;
  v3 = [objc_allocWithZone(WFConfiguredTriggerRecord) init];
  v4 = sub_1CA94AF78();
  v6 = sub_1CA578CD0(v4, v5, &qword_1EC446660, off_1E836EB58);
  if (v0)
  {
  }

  else
  {
    v7 = v6;

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
    v9 = OUTLINED_FUNCTION_18_0(v8);
    v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v9);
    v26 = v2;
    sub_1CA579774(0x6D69547472617473, 0xE900000000000065, v2, &v25 - v11);
    v12 = sub_1CA948CB8();
    v13 = 0;
    if (__swift_getEnumTagSinglePayload(&v25 - v11, 1, v12) != 1)
    {
      v13 = sub_1CA948C58();
      OUTLINED_FUNCTION_39();
      (*(v14 + 8))(&v25 - v11, v12);
    }

    [v7 setStartTime_];

    MEMORY[0x1EEE9AC00](v15);
    sub_1CA579774(0x656D6954646E65, 0xE700000000000000, v26, &v25 - v11);
    if (__swift_getEnumTagSinglePayload(&v25 - v11, 1, v12) == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = sub_1CA948C58();
      OUTLINED_FUNCTION_39();
      (*(v17 + 8))(&v25 - v11, v12);
    }

    [v7 setEndTime_];

    v18 = [v7 serializedData];
    if (v18)
    {
      sub_1CA948C08();
      OUTLINED_FUNCTION_63_8();

      OUTLINED_FUNCTION_72_0();
      v18 = sub_1CA948BF8();
      v19 = OUTLINED_FUNCTION_72_0();
      sub_1CA266F2C(v19, v20);
    }

    [v3 setTriggerData_];

    v21 = sub_1CA294A78();
    v22 = OUTLINED_FUNCTION_93_4(v21, sel_setShouldPrompt_);
    v23 = OUTLINED_FUNCTION_65_5(v22, sel_setShouldNotify_);
    v24 = OUTLINED_FUNCTION_65_5(v23, sel_setEnabled_);
    OUTLINED_FUNCTION_95_6(v24, sel_setSource_);
  }

  OUTLINED_FUNCTION_44_8();
  OUTLINED_FUNCTION_107();
}

uint64_t WFLocationTrigger.resolveParameter(withKey:searchTerm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[43] = a4;
  v5[44] = v4;
  v5[41] = a2;
  v5[42] = a3;
  v5[40] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA57D1CC()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[40] == 0x6E6F697461636F6CLL && v0[41] == 0xE800000000000000;
  if (v1 || (sub_1CA94D7F8() & 1) != 0)
  {
    v2 = v0[42];
    sub_1CA25B3D0(0, &qword_1EC4466D8, 0x1E696F260);
    sub_1CA94C218();
    v3 = sub_1CA57E7F4(v2);
    v0[45] = v3;
    v4 = [objc_allocWithZone(MEMORY[0x1E696F248]) initWithRequest_];
    v0[46] = v4;
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_1CA57D394;
    v5 = swift_continuation_init();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466E0, &qword_1CA98B838);
    OUTLINED_FUNCTION_29_15(v6);
    OUTLINED_FUNCTION_127_4(COERCE_DOUBLE(1107296256));
    v0[28] = sub_1CA3CD588;
    v0[29] = &block_descriptor_6_0;
    v0[30] = v5;
    [v4 startWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    OUTLINED_FUNCTION_3_6();

    return v7();
  }
}

uint64_t sub_1CA57D394()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 376) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA57D494()
{
  v1 = v0[34];
  v0[48] = v1;
  v2 = [v1 mapItems];
  sub_1CA25B3D0(0, &unk_1EC4466E8, 0x1E696F270);
  v3 = sub_1CA94C658();

  if (sub_1CA25B410(v3))
  {
    sub_1CA275D70(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1CCAA22D0](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;
    v7 = v0[45];
    v6 = v0[46];
    v9 = v0[43];
    v8 = v0[44];
    v10 = v0[42];

    v11 = sub_1CA57E660(v5, v10, v9);
    [v8 setRegion_];

LABEL_16:
    OUTLINED_FUNCTION_3_6();
    OUTLINED_FUNCTION_68();

    __asm { BRAA            X1, X16 }
  }

  objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  OUTLINED_FUNCTION_123();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1CA981310;
  *(v12 + 32) = sub_1CA94C3A8();
  *(v12 + 40) = v13;
  v14 = sub_1CA94C648();

  v15 = OUTLINED_FUNCTION_121_3();
  v17 = [v15 v16];

  sub_1CA94D258();
  swift_unknownObjectRelease();
  sub_1CA25B3D0(0, &unk_1EC4466F8, 0x1E6998FD0);
  if ((OUTLINED_FUNCTION_51_7((v0 + 34), v18, MEMORY[0x1E69E7CA0] + 8) & 1) == 0)
  {
    v54 = v0[45];
    v53 = v0[46];

LABEL_15:
    goto LABEL_16;
  }

  v19 = v0[34];
  v0[49] = v19;
  v20 = sub_1CA94C368();
  v21 = OUTLINED_FUNCTION_101();
  v23 = [v21 v22];

  sub_1CA94D258();
  swift_unknownObjectRelease();
  if ((OUTLINED_FUNCTION_51_7((v0 + 34), v24, MEMORY[0x1E69E7CA0] + 8) & 1) == 0)
  {
    v54 = v0[45];
    v55 = v0[46];

LABEL_14:
    goto LABEL_15;
  }

  v74 = v19;
  v25 = v0[34];
  v0[50] = v25;
  v26 = sub_1CA94C368();
  v27 = OUTLINED_FUNCTION_101();
  v29 = [v27 v28];

  sub_1CA94D258();
  swift_unknownObjectRelease();
  if ((OUTLINED_FUNCTION_51_7((v0 + 34), v30, MEMORY[0x1E69E7CA0] + 8) & 1) == 0)
  {
    v59 = v0[45];
    v58 = v0[46];

    goto LABEL_16;
  }

  v31 = v0[34];
  v0[51] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  OUTLINED_FUNCTION_123();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1CA981360;
  *(v32 + 32) = v25;
  *(v32 + 40) = v31;
  v19 = v25;
  v73 = v31;
  v33 = sub_1CA94C648();

  v34 = OUTLINED_FUNCTION_101();
  v36 = [v34 v35];

  v37 = MEMORY[0x1E69E7CA0];
  sub_1CA94D258();
  swift_unknownObjectRelease();
  if ((OUTLINED_FUNCTION_51_7((v0 + 34), v38, v37 + 8) & 1) == 0)
  {
    v54 = v0[45];
    v60 = v0[46];

    goto LABEL_14;
  }

  v71 = v19;
  v39 = v0[34];
  v0[52] = v39;
  OUTLINED_FUNCTION_123();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1CA981360;
  *(v40 + 32) = v74;
  *(v40 + 40) = v39;
  v41 = v74;
  v42 = v39;
  v43 = sub_1CA94C648();

  v44 = OUTLINED_FUNCTION_121_3();
  v46 = [v44 v45];

  sub_1CA94D258();
  swift_unknownObjectRelease();
  if ((OUTLINED_FUNCTION_51_7((v0 + 34), v47, MEMORY[0x1E69E7CA0] + 8) & 1) == 0)
  {
    v54 = v0[45];
    v61 = v0[46];

    goto LABEL_15;
  }

  v72 = v42;
  v75 = v41;
  v48 = v0[34];
  v0[53] = v48;
  v49 = [objc_allocWithZone(MEMORY[0x1E6998FD8]) init];
  v0[54] = v49;
  [v49 setSearchPredicate_];
  sub_1CA588BC4(&unk_1F4A07268, v49, &selRef_setDomains_);
  v50 = [objc_opt_self() frecencyComparator];
  v51 = v71;
  if (v50)
  {
    v52 = swift_allocObject();
    *(v52 + 16) = v50;
    v0[30] = sub_1CA588AFC;
    v0[31] = v52;
    v0[26] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_127_4(COERCE_DOUBLE(1107296256));
    v0[28] = sub_1CA57E8F8;
    v0[29] = &block_descriptor_19_0;
    v50 = _Block_copy(v0 + 26);
  }

  [v49 setComparator_];
  _Block_release(v50);
  v62 = [objc_opt_self() currentQueue];
  if (!v62 || (v63 = v62, v64 = [v62 underlyingQueue], v0[55] = v64, v63, !v64))
  {
    v54 = v0[45];
    v69 = v0[46];

    goto LABEL_15;
  }

  v65 = [objc_opt_self() defaultInstance];
  v0[56] = v65;
  if (v65)
  {
    v66 = v65;
    v0[18] = v0;
    v0[23] = v0 + 34;
    v0[19] = sub_1CA57DC64;
    v67 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446708, &unk_1CA98B840);
    v0[26] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_127_4(COERCE_DOUBLE(1107296256));
    v0[28] = sub_1CA57E99C;
    v0[29] = &block_descriptor_10;
    v0[30] = v67;
    [v66 performRecentsSearch:v49 queue:v64 completion:v0 + 26];
    OUTLINED_FUNCTION_68();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v65);
}

uint64_t sub_1CA57DC64()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 456) = *(v3 + 176);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA57DD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_189();
  v21 = *(v15 + 440);
  v20 = *(v15 + 448);
  v22 = *(v15 + 432);
  if (!*(v15 + 272))
  {
    v36 = *(v15 + 416);
    v35 = *(v15 + 424);
    OUTLINED_FUNCTION_150_2();

    goto LABEL_19;
  }

  sub_1CA4F88B4(*(v15 + 272));
  OUTLINED_FUNCTION_11();

  if (!v14)
  {
    v37 = *(v15 + 432);
    v38 = *(v15 + 440);
    v40 = *(v15 + 416);
    v39 = *(v15 + 424);
    v42 = *(v15 + 400);
    v41 = *(v15 + 408);
    v43 = *(v15 + 392);
    v45 = *(v15 + 360);
    v44 = *(v15 + 368);

    goto LABEL_19;
  }

  if (!sub_1CA25B410(v14))
  {
    v46 = *(v15 + 432);
    a11 = *(v15 + 440);
    v48 = *(v15 + 416);
    v47 = *(v15 + 424);
    v50 = *(v15 + 400);
    v49 = *(v15 + 408);
    v52 = *(v15 + 384);
    v51 = *(v15 + 392);
    v53 = *(v15 + 368);

    goto LABEL_19;
  }

  v23 = (v15 + 272);
  sub_1CA275D70(0, (v14 & 0xC000000000000001) == 0, v14);
  if ((v14 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x1CCAA22D0](0, v14);
  }

  else
  {
    v24 = *(v14 + 32);
  }

  v25 = v24;
  *(v15 + 464) = v24;

  v26 = sub_1CA588A78(v25);
  if (!v26)
  {
    a10 = *(v15 + 432);
    a11 = *(v15 + 440);
    v55 = *(v15 + 416);
    v54 = *(v15 + 424);
    v57 = *(v15 + 400);
    v56 = *(v15 + 408);
    v58 = *(v15 + 384);
    v59 = *(v15 + 392);
    v60 = *(v15 + 368);

    *v23 = 0u;
    *(v15 + 288) = 0u;
LABEL_17:
    sub_1CA2E9314(v15 + 272, &unk_1EC444650, &unk_1CA981C70);
    goto LABEL_19;
  }

  v27 = v26;
  strcpy((v15 + 304), "mapKitHandle");
  *(v15 + 317) = 0;
  *(v15 + 318) = -5120;
  sub_1CA94D3A8();
  sub_1CA311E28(v27, (v15 + 272));

  sub_1CA323ADC(v15 + 208);
  if (!*(v15 + 296))
  {
    v62 = *(v15 + 432);
    v61 = *(v15 + 440);
    v64 = *(v15 + 416);
    v63 = *(v15 + 424);
    v65 = *(v15 + 408);
    v66 = *(v15 + 392);
    v67 = *(v15 + 368);
    a10 = *(v15 + 360);
    a11 = *(v15 + 400);

    goto LABEL_17;
  }

  if (swift_dynamicCast())
  {
    v28 = *(v15 + 216);
    *(v15 + 472) = *(v15 + 208);
    *(v15 + 480) = v28;
    v29 = objc_opt_self();
    v30 = sub_1CA948BF8();
    *(v15 + 488) = v30;
    *(v15 + 80) = v15;
    *(v15 + 120) = v23;
    *(v15 + 88) = sub_1CA57E198;
    v31 = swift_continuation_init();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446718, &unk_1CA98B850);
    OUTLINED_FUNCTION_29_15(v32);
    OUTLINED_FUNCTION_127_4(COERCE_DOUBLE(1107296256));
    *(v15 + 224) = sub_1CA57EA40;
    *(v15 + 232) = &block_descriptor_13_0;
    *(v15 + 240) = v31;
    [v29 _mapItemFromHandle_completionHandler_];
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DEC8](v33);
  }

  v69 = *(v15 + 432);
  v68 = *(v15 + 440);
  v71 = *(v15 + 416);
  v70 = *(v15 + 424);
  OUTLINED_FUNCTION_150_2();

LABEL_19:
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1CA57E198()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 496) = *(v3 + 112);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA57E298()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 480);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v6 = *(v0 + 432);
  v5 = *(v0 + 440);
  v8 = *(v0 + 416);
  v7 = *(v0 + 424);
  v9 = *(v0 + 408);
  v26 = *(v0 + 392);
  v27 = *(v0 + 400);
  v24 = *(v0 + 384);
  v25 = *(v0 + 368);
  if (v1)
  {
    v20 = *(v0 + 424);
    v21 = *(v0 + 416);
    v10 = *(v0 + 464);
    v11 = *(v0 + 440);
    v13 = *(v0 + 344);
    v12 = *(v0 + 352);
    v22 = *(v0 + 408);
    v23 = *(v0 + 360);
    v14 = *(v0 + 432);
    v15 = *(v0 + 336);

    v16 = sub_1CA57E660(v1, v15, v13);
    [v12 setRegion_];

    sub_1CA266F2C(v3, v2);
  }

  else
  {
    v17 = *(v0 + 488);

    sub_1CA266F2C(v3, v2);
  }

  OUTLINED_FUNCTION_3_6();

  return v18();
}

uint64_t sub_1CA57E438(uint64_t a1)
{
  v2 = *(v1 + 368);
  v3 = *(v1 + 360);
  swift_willThrow();

  OUTLINED_FUNCTION_5();

  return v4();
}

void sub_1CA57E4AC(uint64_t a1)
{
  v3 = v1[54];
  v2 = v1[55];
  v13 = v1[53];
  v14 = v1[56];
  v12 = v1[52];
  v5 = v1[50];
  v4 = v1[51];
  v6 = v1[48];
  v7 = v1[49];
  v9 = v1[45];
  v8 = v1[46];
  swift_willThrow();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_99();

  __asm { BRAA            X1, X16 }
}

void sub_1CA57E57C(uint64_t a1)
{
  v14 = v1[59];
  v15 = v1[60];
  v16 = v1[58];
  v17 = v1[61];
  v12 = v1[54];
  v13 = v1[55];
  v3 = v1[52];
  v2 = v1[53];
  v5 = v1[50];
  v4 = v1[51];
  v6 = v1[48];
  v7 = v1[49];
  v9 = v1[45];
  v8 = v1[46];
  swift_willThrow();

  sub_1CA266F2C(v14, v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68();

  __asm { BRAA            X1, X16 }
}

id sub_1CA57E660(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 placemark];
  v5 = [v4 location];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1CA3AC3E8(v4, &selRef_name);
    if (v8)
    {
      a2 = v7;
    }

    else
    {
      sub_1CA94C218();
    }

    sub_1CA25B3D0(0, &qword_1EC4468E0, 0x1E695FBB0);
    [v6 coordinate];
    v9 = sub_1CA57E758(a2, v10, v11, 100.0);
  }

  else
  {

    return 0;
  }

  return v9;
}

id sub_1CA57E758(uint64_t a1, double a2, double a3, double a4)
{
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_1CA94C368();

  v9 = [v7 initWithCenter:v8 radius:a2 identifier:{a3, a4}];

  return v9;
}

id sub_1CA57E7F4(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1CA94C368();

  v3 = [v1 initWithNaturalLanguageQuery_];

  return v3;
}

uint64_t sub_1CA57E868(void *a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_1CA94D7D8();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = sub_1CA94D7D8();
  v7 = (*(a3 + 16))(a3, v5, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1CA57E8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;
  v8[3] = swift_getObjectType();
  v8[0] = a3;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = v5(v9, v8);

  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

uint64_t sub_1CA57E99C(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1CA35FF80();
  }

  else
  {
    if (a2)
    {
      sub_1CA94C658();
    }

    return sub_1CA35FF6C();
  }
}

uint64_t sub_1CA57EA40(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1CA35FF80();
  }

  else
  {
    v7 = a2;

    return sub_1CA35FF6C();
  }
}

uint64_t sub_1CA57EAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA2C99BC;

  return WFLocationTrigger.resolveParameter(withKey:searchTerm:)(a1, a2, a3, a4);
}

void static WFMessageTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  v72 = v3;
  v73 = v0;
  v68 = sub_1CA94AD08();
  OUTLINED_FUNCTION_1_0();
  v64 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v65 = v7 - v6;
  OUTLINED_FUNCTION_25_0();
  v8 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_19();
  v75 = sub_1CA94B258();
  v66 = *(v75 - 1);
  v67 = v75 - 8;
  v71 = v66;
  MEMORY[0x1EEE9AC00](v75 - 8);
  OUTLINED_FUNCTION_19();
  v74 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  v70 = &v59 - v15;
  v17 = sub_1CA94AD98();
  v18 = swift_allocBox();
  OUTLINED_FUNCTION_39();
  v62 = *(v19 + 104);
  v63 = v19 + 104;
  v62();
  *v2 = v18;
  v20 = *MEMORY[0x1E69DB0B0];
  v21 = *(v10 + 104);
  v21(v2, v20, v8);
  OUTLINED_FUNCTION_144_3();
  sub_1CA57BE3C(v2, v22, 0xE700000000000000, v16);
  v23 = OUTLINED_FUNCTION_141_4();
  v24(v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446720, &qword_1CA98AD70);
  v26 = swift_allocBox();
  v28 = v27;
  v60 = *(v25 + 48);
  *&v61 = v26;
  v29 = swift_allocBox();
  v31 = v30;
  v32 = swift_allocBox();
  (v62)(v33, *MEMORY[0x1E69DB060], v17);
  *v31 = v32;
  v21(v31, v20, v8);
  *v28 = v29;
  v34 = *(v64 + 104);
  v35 = v68;
  v34(v28, *MEMORY[0x1E69DAF30], v68);
  v36 = sub_1CA94AC88();
  __swift_storeEnumTagSinglePayload(&v60[v28], 1, 1, v36);
  v37 = v65;
  *v65 = v61;
  v34(v37, *MEMORY[0x1E69DAF48], v35);
  OUTLINED_FUNCTION_143_3();
  sub_1CA57ABD8(v37, v38, 0xEA00000000006D72, v74);
  v39 = OUTLINED_FUNCTION_187();
  v40(v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_30();
  v64 = sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0();
  v42 = v41;
  v44 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v65 = *(v43 + 72);
  v45 = OUTLINED_FUNCTION_107_3();
  *(v45 + 16) = xmmword_1CA9813C0;
  v68 = v45;
  v46 = v45 + v44;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v48 = v71;
  v49 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v62 = *(v66 + 72);
  v67 = v47;
  v50 = swift_allocObject();
  v61 = xmmword_1CA981310;
  *(v50 + 16) = xmmword_1CA981310;
  v66 = *(v48 + 16);
  (v66)(v50 + v49);
  OUTLINED_FUNCTION_62_6();
  v63 = v46;
  sub_1CA578170();
  if (v1)
  {
    swift_setDeallocating();
    sub_1CA32E40C();
    v51 = *(v48 + 8);
    OUTLINED_FUNCTION_24_16();
    v51();
    v52 = OUTLINED_FUNCTION_142_4();
    (v51)(v52);
    OUTLINED_FUNCTION_69_8();
  }

  else
  {
    v69 = v42;
    swift_setDeallocating();
    sub_1CA32E40C();
    v53 = v62;
    *(swift_allocObject() + 16) = v61;
    OUTLINED_FUNCTION_49_6();
    (v66)();
    v54 = v63;
    OUTLINED_FUNCTION_74_6();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    v60 = "message_contains";
    *&v61 = v54 + 2 * v65;
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1CA97EDF0;
    v56 = v66;
    (v66)(v55 + v49, v70, v75);
    v56(v53 + v55 + v49, v74, v75);
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    v57 = OUTLINED_FUNCTION_7_34();
    v75(v57);
    v58 = OUTLINED_FUNCTION_25_15();
    v75(v58);
  }

  OUTLINED_FUNCTION_92_3();
  OUTLINED_FUNCTION_107();
}

void static WFEmailTrigger.toolkitTriggerDefinitions(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_108();
  a19 = v21;
  a20 = v22;
  v138 = v23;
  v24 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_4_12();
  v143 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_6_0();
  v132 = v28 - v27;
  OUTLINED_FUNCTION_25_0();
  v147 = sub_1CA94B258();
  v133 = *(v147 - 8);
  v30 = v133;
  v29 = v133;
  MEMORY[0x1EEE9AC00](v147);
  OUTLINED_FUNCTION_19();
  v146 = v31 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v134 = &v123 - v34;
  OUTLINED_FUNCTION_25_0();
  v35 = sub_1CA94AD08();
  OUTLINED_FUNCTION_1_0();
  v148 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_6_0();
  v142 = (v39 - v38);
  OUTLINED_FUNCTION_25_0();
  v40 = sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_6_0();
  v46 = v45 - v44;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v145 = *(v29 + 72);
  v47 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v135 = *(v30 + 80);
  v136 = v47;
  v124 = v47 + 2 * v145;
  v48 = swift_allocObject();
  v123 = xmmword_1CA97EDF0;
  v144 = v48;
  OUTLINED_FUNCTION_134_4(v48, xmmword_1CA97EDF0);
  v131 = v47;
  v49 = OUTLINED_FUNCTION_52_9();
  sub_1CA57FEF8(v49, v50, v51, v52);
  (*(v42 + 104))(v46, *MEMORY[0x1E69DAF98], v40);
  OUTLINED_FUNCTION_176();
  sub_1CA57FD10(v53, 0xE800000000000000, v54);
  (*(v42 + 8))(v46, v40);
  v55 = v35;
  v125 = swift_allocBox();
  v57 = v56;
  v126 = v24;
  v58 = swift_allocBox();
  v60 = v59;
  v61 = sub_1CA94AD98();
  v62 = swift_allocBox();
  v63 = *MEMORY[0x1E69DB058];
  OUTLINED_FUNCTION_39();
  v140 = *(v64 + 104);
  *&v141 = v64 + 104;
  v140();
  *v60 = v62;
  LODWORD(v139) = *MEMORY[0x1E69DB0B0];
  v65 = *(v143 + 104);
  v65(v60);
  v127 = v65;
  *v57 = v58;
  v130 = *MEMORY[0x1E69DAF30];
  v66 = v148;
  v67 = *(v148 + 104);
  v129 = v67;
  v67(v57);
  v68 = v142;
  *v142 = v125;
  v69 = *MEMORY[0x1E69DAF18];
  v128 = v55;
  (v67)(v68, v69, v55);
  sub_1CA57ABD8(v68, 0x6E65697069636572, 0xEA00000000007374, v131 + v145);
  v70 = *(v66 + 8);
  v148 = v66 + 8;
  v131 = v70;
  (v70)(v68, v55);
  v71 = swift_allocBox();
  (v140)(v72, v63, v61);
  v73 = v132;
  *v132 = v71;
  v74 = v126;
  (v65)(v73, v139, v126);
  OUTLINED_FUNCTION_144_3();
  v75 = v134;
  sub_1CA57BE3C(v73, v76, 0xE700000000000000, v134);
  (*(v143 + 8))(v73, v74);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446720, &qword_1CA98AD70);
  v143 = swift_allocBox();
  v79 = v78;
  v132 = *(v77 + 48);
  v80 = swift_allocBox();
  v82 = v81;
  v83 = swift_allocBox();
  (v140)(v84, *MEMORY[0x1E69DB060], v61);
  *v82 = v83;
  v85 = v75;
  v86 = v82;
  v87 = v133;
  (v127)(v86, v139, v74);
  *v79 = v80;
  v88 = v129;
  (v129)(v79, v130, v128);
  v89 = sub_1CA94AC88();
  __swift_storeEnumTagSinglePayload(v79 + v132, 1, 1, v89);
  v90 = v142;
  *v142 = v143;
  v91 = OUTLINED_FUNCTION_50_6();
  v88(v91);
  OUTLINED_FUNCTION_143_3();
  sub_1CA57ABD8(v90, v92, 0xEA00000000006D72, v146);
  v93 = OUTLINED_FUNCTION_23();
  v131(v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_30();
  v94 = sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0();
  v96 = v95;
  OUTLINED_FUNCTION_118_3();
  v99 = v98 & ~v97;
  v143 = v100;
  v101 = OUTLINED_FUNCTION_107_3();
  *(v101 + 16) = xmmword_1CA9813C0;
  v148 = v101;
  v102 = (v101 + v99);
  v103 = v136;
  OUTLINED_FUNCTION_47_11();
  v104 = swift_allocObject();
  v105 = OUTLINED_FUNCTION_140_4(v104, xmmword_1CA981310);
  v106 = v85;
  v107 = *(v87 + 16);
  v107(v105 + v103, v106, v147);
  a10 = v104;
  v108 = sub_1CA94C218();
  sub_1CA2B895C(v108);
  OUTLINED_FUNCTION_62_6();
  v142 = v102;
  sub_1CA578170();
  if (v20)
  {

    v109 = *(v87 + 8);
    v109(v146, v147);
    v110 = OUTLINED_FUNCTION_25_15();
    (v109)(v110);
    OUTLINED_FUNCTION_69_8();
  }

  else
  {
    v139 = v94;
    v140 = v96;

    v111 = v136;
    OUTLINED_FUNCTION_47_11();
    v112 = swift_allocObject();
    *(v112 + 16) = v141;
    v107((v112 + v111), v146, v147);
    a10 = v112;
    v113 = sub_1CA94C218();
    sub_1CA2B895C(v113);
    OUTLINED_FUNCTION_74_6();
    sub_1CA578170();

    *&v141 = "subject_contains";
    OUTLINED_FUNCTION_38_10();
    v114 = swift_allocObject();
    v115 = OUTLINED_FUNCTION_42_8(v114, &a9);
    v118 = v116 + v117;
    v119 = v147;
    (v107)(v116 + v117, v134, v147, v115);
    v107((v118 + v145), v146, v119);
    a10 = v114;
    sub_1CA2B895C(v144);
    v120 = a10;
    sub_1CA578170();

    v121 = OUTLINED_FUNCTION_120_5();
    v120(v121);
    v122 = OUTLINED_FUNCTION_176();
    v120(v122);
  }

  OUTLINED_FUNCTION_92_3();
  OUTLINED_FUNCTION_107();
}