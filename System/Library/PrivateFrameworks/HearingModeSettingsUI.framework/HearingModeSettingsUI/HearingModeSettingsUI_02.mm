uint64_t sub_251FFA6D8()
{
  v1 = v0;
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v67 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v67 - v13;
  v15 = sub_251FF6DB8();
  if (!v15)
  {
    sub_251FD6770(0, &qword_27F4C69B8, 0x277D3FAD8);
    v57 = v3;
    v58 = sub_2520047A0();
    v59 = sub_2520046B0();
    [v1 setValue:v58 forKey:v59];

    v60 = v57;
    v61 = sub_251FDFB88();
    (*(v57 + 16))(v7, v61, v2);
    v62 = sub_2520043B0();
    v63 = sub_2520048B0();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = v60;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v77[0] = v66;
      *v65 = 136315394;
      *(v65 + 4) = sub_251FC55E0(0x6569666963657073, 0xEC00000029287372, v77);
      *(v65 + 12) = 2048;
      *(v65 + 14) = 249;
      _os_log_impl(&dword_251FB5000, v62, v63, "%s: %ld Dependencies not meet, bailing out of specifiers returning empty conroller!", v65, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      MEMORY[0x253097030](v66, -1, -1);
      MEMORY[0x253097030](v65, -1, -1);

      (*(v64 + 8))(v7, v2);
    }

    else
    {

      (*(v60 + 8))(v7, v2);
    }

    return 0;
  }

  v16 = sub_251FDFB88();
  (*(v3 + 16))(v14, v16, v2);
  v17 = sub_2520043B0();
  v18 = sub_2520048C0();
  v19 = os_log_type_enabled(v17, v18);
  v70 = v2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v77[0] = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_251FC55E0(0x6569666963657073, 0xEC00000029287372, v77);
    *(v20 + 12) = 2048;
    *(v20 + 14) = 253;
    _os_log_impl(&dword_251FB5000, v17, v18, "%s: %ld Updated UI", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v22 = v21;
    v2 = v70;
    MEMORY[0x253097030](v22, -1, -1);
    MEMORY[0x253097030](v20, -1, -1);
  }

  v71 = *(v3 + 8);
  v72 = v3 + 8;
  v23 = v71(v14, v2);
  v73 = v76;
  v24 = MEMORY[0x277D85000];
  v76[0] = (*((*MEMORY[0x277D85000] & *v1) + 0x148))(v23);
  v76[1] = (*((*v24 & *v1) + 0x110))();
  v76[2] = (*((*v24 & *v1) + 0x130))();
  v76[3] = (*((*v24 & *v1) + 0x108))();
  result = (*((*v24 & *v1) + 0x150))();
  v26 = 0;
  v76[4] = result;
  v27 = OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__headphoneDevice;
  v74 = 0x800000025200F160;
  v28 = MEMORY[0x277D84F90];
  *&v29 = 136315138;
  v69 = v29;
LABEL_5:
  v68 = v28;
  if (v26 <= 5)
  {
    v30 = 5;
  }

  else
  {
    v30 = v26;
  }

  v31 = v26;
  while (v30 != v31)
  {
    v32 = v73[v31];
    v33 = *(v1 + v27);
    if (v33)
    {

      v34 = v33;
      v35 = sub_251FEAFA4();

      if (v35)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    sub_2520043A0();
    v36 = sub_2520043B0();
    v37 = sub_2520048B0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v75 = v39;
      *v38 = v69;
      *(v38 + 4) = sub_251FC55E0(0x6E6F687064616568, 0xEF65636976654465, &v75);
      _os_log_impl(&dword_251FB5000, v36, v37, "%s: connected device !", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x253097030](v39, -1, -1);
      v40 = v38;
      v2 = v70;
      MEMORY[0x253097030](v40, -1, -1);
    }

    result = v71(v11, v2);
    v41 = *(v1 + v27);
    if (!v41)
    {
      goto LABEL_49;
    }

    v35 = v41;
LABEL_20:
    v42 = sub_252003E60();

    v43 = sub_2520040D0();
    if (v43 == 1)
    {
      goto LABEL_34;
    }

    if (v32 >> 62)
    {
      result = sub_252004B20();
      if (!result)
      {
        goto LABEL_34;
      }
    }

    else
    {
      result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_34;
      }
    }

    if ((v32 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x253096650](0, v32);
    }

    else
    {
      if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v44 = *(v32 + 32);
    }

    v45 = v44;
    v46 = [v44 identifier];

    if (!v46)
    {
LABEL_34:
      v28 = v68;
      result = swift_isUniquelyReferenced_nonNull_native();
      v77[0] = v28;
      if ((result & 1) == 0)
      {
        result = sub_251FFBC6C(0, *(v28 + 16) + 1, 1);
        v28 = v77[0];
      }

      v52 = *(v28 + 16);
      v51 = *(v28 + 24);
      if (v52 >= v51 >> 1)
      {
        result = sub_251FFBC6C((v51 > 1), v52 + 1, 1);
        v28 = v77[0];
      }

      v26 = v31 + 1;
      *(v28 + 16) = v52 + 1;
      *(v28 + 8 * v52 + 32) = v32;
      if (v31 == 4)
      {
        goto LABEL_41;
      }

      goto LABEL_5;
    }

    v47 = sub_2520046E0();
    v49 = v48;

    if (v47 == 0xD000000000000018 && v74 == v49)
    {
    }

    else
    {
      v50 = sub_252004B90();

      if ((v50 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    ++v31;

    if (v31 == 5)
    {
      v28 = v68;
LABEL_41:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C69D0, &qword_252007408);
      swift_arrayDestroy();
      v53 = sub_251FD1C74(v28);

      sub_251FD6770(0, &qword_27F4C69B8, 0x277D3FAD8);
      v54 = sub_2520047A0();
      v55 = sub_2520046B0();
      [v1 setValue:v54 forKey:v55];

      v56 = sub_251FD1A78(v53);

      return v56;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

id sub_251FFB090(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HearingAidSettingsViewController();
  objc_msgSendSuper2(&v4, sel_viewWillAppear_, a1 & 1);
  return [v1 reloadSpecifiers];
}

void *sub_251FFB154()
{
  result = sub_251FF6DB8();
  if (result)
  {
    v1 = result;
    sub_251FD6770(0, &qword_27F4C6AF8, 0x277CCABB0);
    v2 = sub_252003E60();

    sub_2520040D0();
    return sub_252004970();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_251FFB324()
{
  v1 = v0;
  v2 = sub_251FF6DB8();
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *&v0[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__hmsClient];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v2;
  type metadata accessor for HearingAssistFlowController(0, v3);
  v9 = HearingAssistFlowController.__allocating_init(withDevice:serviceClient:flow:)(v5, v4, 1);
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = (*((*MEMORY[0x277D85000] & *v9) + 0x88))();
    [v7 presentViewController:v8 animated:1 completion:0];
  }
}

unint64_t sub_251FFB484(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AC8, &qword_252007F60);
    v2 = sub_252004B50();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_251FC63B0(&v22, v24);
        sub_251FC63B0(v24, v25);
        sub_251FC63B0(v25, &v23);
        result = sub_251FD4318(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          result = sub_251FC63B0(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_251FC63B0(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_251FFB748(uint64_t a1, unsigned __int8 (*a2)(void))
{
  result = sub_251FF6DB8();
  if (result)
  {
    v4 = result;
    sub_251FD6770(0, &qword_27F4C6AF8, 0x277CCABB0);
    v5 = sub_252003E60();

    a2();
    return sub_252004970();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_251FFB7E4(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 (*a4)(void))
{
  v5 = a1;
  result = sub_251FF6DB8();
  if (result)
  {
    v7 = result;
    sub_251FD6770(0, &qword_27F4C6AF8, 0x277CCABB0);
    v8 = sub_252003E60();

    a4();
    v9 = sub_252004970();

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_251FFB8B0(void *a1, void (*a2)(uint64_t))
{
  v4 = sub_251FF6DB8();
  if (v4)
  {
    v5 = v4;
    v7 = sub_252003E60();

    if ([a1 BOOLValue])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    a2(v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_251FFB954(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v6 = a3;
  v11 = a1;
  v7 = sub_251FF6DB8();
  if (v7)
  {
    v8 = v7;
    v9 = sub_252003E60();

    if ([v6 BOOLValue])
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    a4(v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_251FFB9FC(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HearingAidSettingsViewController();
  v3 = objc_msgSendSuper2(&v5, sel_viewDidDisappear_, a1 & 1);
  return (*((*MEMORY[0x277D85000] & *v1) + 0x1B0))(v3);
}

void sub_251FFBB30()
{
  sub_251FF6DB8();
  v0 = objc_allocWithZone(sub_252003D10());
  v1 = sub_252003D00();
  sub_252003CE0();
}

id HearingAidSettingsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingAidSettingsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_251FFBC6C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251FFBC8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_251FFBC8C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C69C8, &qword_252007400);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C69D0, &qword_252007408);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_251FFBDC0()
{
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__headphoneDevice) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__hmsClient) = 0;
  v1 = (v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController____lazy_storage___deviceName);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController_address);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController_listeners) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController____lazy_storage___hearingOptionsControlCenterSection) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController____lazy_storage___adjustMediaAssistSection) = 0;
  sub_252004B10();
  __break(1u);
}

uint64_t sub_251FFBED0()
{
  MEMORY[0x2530970B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_251FFBF08()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_251FF6DB8();

    if (v2)
    {
      v3 = sub_252003E60();

      v4 = sub_252004080();
      sub_251FE2F84(v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_251FD6770(0, &qword_27F4C6AF8, 0x277CCABB0);
    sub_252004970();
  }
}

void sub_251FFBFB0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_251FF6DB8();

    if (v4)
    {
      v5 = sub_252003E60();

      if ([a1 respondsToSelector_])
      {
        [a1 BOOLValue];
        sub_252004090();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_251FFC068(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7228, &qword_252008A58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252007360;
  *(inited + 32) = 0x6E6F687064616568;
  *(inited + 40) = 0xEF65636976654465;
  *(inited + 48) = sub_251FF6DB8();
  sub_251FFC444(inited);
  swift_setDeallocating();
  sub_251FC6470(inited + 32, &qword_27F4C7230, &unk_252008A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AA8, &unk_2520077D0);
  v3 = sub_252004600();

  [a1 setUserInfo_];
}

void sub_251FFC17C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_251FF6DB8();
    if (v2)
    {
      v4 = *&v1[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__hmsClient];
      if (v4)
      {
        v5 = v2;
        type metadata accessor for HearingAssistFlowController(0, v3);
        v6 = v4;
        v7 = sub_251FC1CE0();
        v8 = HearingAssistFlowController.__allocating_init(withDevice:serviceClient:flow:)(v5, v6, v7);
        v9 = (*((*MEMORY[0x277D85000] & *v8) + 0x88))();
        [v1 presentViewController:v9 animated:1 completion:0];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_251FFC284(void *a1, uint64_t a2)
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  type metadata accessor for AnyHearingFeatureContentProvider(0, a2);
  v7 = sub_251FF6DB8();
  v8 = AnyHearingFeatureContentProvider.__allocating_init(device:)(v7);
  v9 = AnyHearingFeatureContentProvider.deviceMarketingName.getter();
  v11 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AA0, &unk_252007F50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2520073B0;
  strcpy((inited + 32), "marketingName");
  v13 = MEMORY[0x277D837D0];
  *(inited + 46) = -4864;
  *(inited + 48) = v9;
  *(inited + 56) = v11;
  *(inited + 72) = v13;
  *(inited + 80) = 0x6F69737265567766;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = v4;
  *(inited + 104) = v5;
  *(inited + 120) = v13;
  strcpy((inited + 128), "versionNumber");
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 142) = -4864;
  *(inited + 144) = v6;

  sub_251FD4B5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AB8, &unk_2520084E0);
  swift_arrayDestroy();
  v14 = sub_252004600();

  [a1 setUserInfo_];
}

unint64_t sub_251FFC444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7238, &qword_252008A70);
    v3 = sub_252004B50();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_251FD4318(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_251FFC544(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7220, &qword_252008A50);
    v3 = sub_252004B50();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_251FD4318(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_251FFC640(const char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A58, &qword_252007790);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v26 - v4;
  v6 = sub_252003B10();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2520043D0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_251FDFB88();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_2520043B0();
  v18 = sub_2520048C0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = a1;
    v21 = v19;
    *v19 = 0;
    _os_log_impl(&dword_251FB5000, v17, v18, v20, v19, 2u);
    MEMORY[0x253097030](v21, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  sub_252003B00();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_251FC6470(v5, &qword_27F4C6A58, &qword_252007790);
  }

  (*(v7 + 32))(v10, v5, v6);
  v23 = [objc_opt_self() sharedApplication];
  v24 = sub_252003AF0();
  sub_251FD4C8C(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_251FD6138(&qword_27F4C6A60, &unk_2520079B4);
  v25 = sub_252004600();

  [v23 openURL:v24 options:v25 completionHandler:0];

  return (*(v7 + 8))(v10, v6);
}

id sub_251FFCED0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7248, &qword_252008B10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15[-v5];
  v7 = OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell____lazy_storage___slider;
  v8 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell____lazy_storage___slider);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell____lazy_storage___slider);
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x277D75A30]) initWithFrame_];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_251FD6770(0, &qword_27F4C7258, 0x277D75A30);
    sub_2520042B0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_251FD67B8(&qword_27F4C7260, &qword_27F4C7248, &qword_252008B10, MEMORY[0x277D0FB60]);
    sub_252004580();

    (*(v3 + 8))(v6, v2);
    v11 = (*((*MEMORY[0x277D85000] & *v0) + 0x98))(v15);
    sub_252004480();

    v11(v15, 0);
    v12 = *(v0 + v7);
    *(v1 + v7) = v10;
    v9 = v10;

    v8 = 0;
  }

  v13 = v8;
  return v9;
}

uint64_t sub_251FFD144(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell____lazy_storage___slider);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell____lazy_storage___slider) = a1;
  return MEMORY[0x2821F96F8](a1, v2);
}

void (*sub_251FFD158(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_251FFCED0();
  return sub_251FFD1A0;
}

void sub_251FFD1A0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell____lazy_storage___slider);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell____lazy_storage___slider) = v2;
}

id sub_251FFD1B8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAxis_];
  [v0 setSpacing_];
  return v0;
}

void sub_251FFD2D0(void *a1)
{
  v3 = sub_2520043D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E50, &qword_252007E98);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v74 - v11;
  if (!a1)
  {
    __break(1u);
    goto LABEL_29;
  }

  if ([a1 userInfo])
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
  }

  v84 = v82;
  v85 = v83;
  if (!*(&v83 + 1))
  {
    goto LABEL_19;
  }

  sub_251FD6770(0, &qword_27F4C69C0, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v13 = v81;
  v14 = sub_2520046B0();
  v80 = v13;
  v15 = [v13 objectForKey_];

  if (v15)
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
  }

  v84 = v82;
  v85 = v83;
  if (!*(&v83 + 1))
  {

LABEL_19:
    sub_251FD74F0(&v84);
    goto LABEL_20;
  }

  sub_252003EC0();
  if (swift_dynamicCast())
  {
    v16 = v1;
    v17 = v81;
    v18 = sub_251FEAFA4();
    if (v18)
    {
      v79 = v17;
      v19 = *(v16 + OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell__headphoneDevice);
      *(v16 + OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell__headphoneDevice) = v18;
      v78 = v18;

      v20 = sub_251FFD2C4();
      if (v20)
      {
        v21 = v20;
        v22 = sub_252003E60();

        sub_252003FB0();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_251FD67B8(&qword_27F4C7280, &qword_27F4C6E50, &qword_252007E98, MEMORY[0x277D0FB98]);
        sub_252004580();

        (*(v9 + 8))(v12, v8);
        v23 = MEMORY[0x277D85000];
        v24 = (*((*MEMORY[0x277D85000] & *v16) + 0x98))(&v84);
        sub_252004480();

        v24(&v84, 0);
        v25 = *(v16 + OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell_stackView);
        v26 = [v25 arrangedSubviews];
        sub_251FD6770(0, &qword_27F4C6A08, 0x277D75D18);
        v27 = sub_2520047B0();

        if (v27 >> 62)
        {
          v28 = sub_252004B20();
        }

        else
        {
          v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v29 = v79;

        if (v28)
        {

          return;
        }

        v35 = sub_2520027CC(0x2E72656B61657073, 0xEC0000006C6C6966);
        v36 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

        v37 = v36;
        [v37 setTranslatesAutoresizingMaskIntoConstraints_];
        [v37 setContentMode_];

        v77 = v37;
        v38 = [v25 addArrangedSubview_];
        v39 = *((*v23 & *v16) + 0x70);
        v40 = (*v23 & *v16) + 112;
        v41 = (v39)(v38);
        v42 = sub_251FFD2C4();
        if (v42)
        {
          v43 = v42;
          v44 = sub_252003E60();

          sub_252003F70();
          v46 = v45;

          LODWORD(v47) = v46;
          [v41 setValue_];

          v48 = v39();
          [v25 addArrangedSubview_];

          v49 = sub_2520027CC(0xD000000000000013, 0x800000025200F520);
          v50 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

          v51 = v50;
          [v51 setContentMode_];
          [v51 setTranslatesAutoresizingMaskIntoConstraints_];

          [v25 addArrangedSubview_];
          v52 = [v16 contentView];
          [v52 addSubview_];

          v76 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6BA0, &qword_252007410);
          v53 = swift_allocObject();
          *(v53 + 16) = xmmword_252007390;
          v75 = v39;
          v54 = [v25 leadingAnchor];
          v55 = [v16 contentView];
          v56 = [v55 leadingAnchor];
          v74 = v40;
          v57 = v56;

          v58 = [v54 constraintEqualToAnchor:v57 constant:10.0];
          *(v53 + 32) = v58;
          v59 = [v25 trailingAnchor];
          v60 = [v16 contentView];
          v61 = [v60 trailingAnchor];

          v62 = [v59 constraintEqualToAnchor:v61 constant:-10.0];
          *(v53 + 40) = v62;
          v63 = [v25 topAnchor];
          v64 = [v16 contentView];
          v65 = [v64 topAnchor];

          v66 = [v63 constraintEqualToAnchor:v65 constant:10.0];
          *(v53 + 48) = v66;
          v67 = [v25 bottomAnchor];
          v68 = [v16 contentView];
          v69 = [v68 bottomAnchor];

          v70 = [v67 constraintEqualToAnchor:v69 constant:-10.0];
          *(v53 + 56) = v70;
          sub_251FD6770(0, &qword_27F4C69D8, 0x277CCAAD0);
          v71 = sub_2520047A0();

          [v76 activateConstraints_];

          v72 = v75();
          v73 = sub_2520046B0();
          [v72 setAccessibilityIdentifier_];

          return;
        }

        goto LABEL_30;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }
  }

  else
  {
  }

LABEL_20:
  v30 = sub_251FDFB88();
  (*(v4 + 16))(v7, v30, v3);
  v31 = sub_2520043B0();
  v32 = sub_2520048B0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v84 = v34;
    *v33 = 136315394;
    *(v33 + 4) = sub_251FC55E0(0xD00000000000001ALL, 0x800000025200F500, &v84);
    *(v33 + 12) = 2048;
    *(v33 + 14) = 67;
    _os_log_impl(&dword_251FB5000, v31, v32, "%s: %ld Depedencies not meet, bailing out of HearingAidTuningAmplificationSliderCell refresh", v33, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x253097030](v34, -1, -1);
    MEMORY[0x253097030](v33, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
}

uint64_t sub_251FFDF44()
{
  v1 = sub_2520046A0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0;
  sub_252004620();
  type metadata accessor for HearingAidTuningAmplificationSliderCell();
  v6 = sub_251FEAB30(v5);
  (*(v2 + 8))(v5, v1);
  return v6;
}

id sub_251FFE100()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  v2 = [v1 accessibilityTraits];

  return v2;
}

id sub_251FFE17C(void *a1, uint64_t a2, SEL *a3)
{
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x70);
  v5 = a1;
  v6 = v4();
  v7 = [v6 *a3];

  if (v7)
  {
    sub_2520046E0();

    v7 = sub_2520046B0();
  }

  else
  {
  }

  return v7;
}

uint64_t sub_251FFE258(SEL *a1)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x70))();
  v4 = [v3 *a1];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_2520046E0();

  return v5;
}

void sub_251FFE324(SEL *a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  v4 = v3();
  [v4 *a1];

  v5 = v3();
  [v5 sendActionsForControlEvents_];
}

void sub_251FFE3E0(void *a1, uint64_t a2, SEL *a3)
{
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x70);
  v7 = a1;
  v5 = v4();
  [v5 *a3];

  v6 = v4();
  [v6 sendActionsForControlEvents_];
}

double sub_251FFE52C()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  [v1 accessibilityActivationPoint];
  v3 = v2;

  return v3;
}

uint64_t sub_251FFE6A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A80, &qword_252008650);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_252007360;
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  *(v1 + 56) = sub_251FD6770(0, &qword_27F4C7258, 0x277D75A30);
  *(v1 + 32) = v2;
  return v1;
}

id sub_251FFE750(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell____lazy_storage___slider] = 0;
  v8 = OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell_stackView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setAxis_];
  [v9 setSpacing_];
  *&v4[v8] = v9;
  *&v4[OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell_listeners] = MEMORY[0x277D84FA0];
  *&v4[OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell__headphoneDevice] = 0;
  if (a3)
  {
    v10 = sub_2520046B0();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for HearingAidTuningAmplificationSliderCell();
  v11 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_specifier_, a1, v10, a4);

  if (v11)
  {
  }

  return v11;
}

id sub_251FFE8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell____lazy_storage___slider] = 0;
  v6 = OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell_stackView;
  v7 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setAxis_];
  [v7 setSpacing_];
  *&v3[v6] = v7;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell_listeners] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell__headphoneDevice] = 0;
  if (a3)
  {
    v8 = sub_2520046B0();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for HearingAidTuningAmplificationSliderCell();
  v9 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_, a1, v8);

  return v9;
}

id sub_251FFE9FC(void *a1)
{
  *&v1[OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell____lazy_storage___slider] = 0;
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell_stackView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setAxis_];
  [v4 setSpacing_];
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell_listeners] = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC21HearingModeSettingsUI39HearingAidTuningAmplificationSliderCell__headphoneDevice] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for HearingAidTuningAmplificationSliderCell();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_251FFEBAC(unsigned __int8 a1)
{
  v2 = sub_2520046A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v9[14] = 2;
    }

    else
    {
      v9[15] = 3;
    }
  }

  else if (a1)
  {
    v9[13] = 1;
  }

  else
  {
    v9[12] = 0;
  }

  sub_252004620();
  v7 = sub_251FEAB30(v6);
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_251FFED88(unsigned __int8 a1)
{
  v2 = sub_2520046A0();
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (v6 + 8);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v12[13] = 2;
      sub_252004620();
      v8 = sub_251FEAB30(v5);
      v10 = *v7;
      (*v7)(v5, v2);
      v12[12] = 2;
    }

    else
    {
      v12[15] = 3;
      sub_252004620();
      v8 = sub_251FEAB30(v5);
      v10 = *v7;
      (*v7)(v5, v2);
      v12[14] = 3;
    }

    sub_252004620();
    goto LABEL_9;
  }

  if (a1)
  {
    v12[11] = 1;
    sub_252004620();
    v8 = sub_251FEAB30(v5);
    v10 = *v7;
    (*v7)(v5, v2);
    v12[10] = 1;
    sub_252004620();
LABEL_9:
    sub_251FEAB30(v5);
    v10(v5, v2);
    return v8;
  }

  v12[9] = 0;
  sub_252004620();
  v8 = sub_251FEAC98(v5, "Left", 4, 2u);
  v9 = *v7;
  (*v7)(v5, v2);
  v12[8] = 0;
  sub_252004620();
  sub_251FEAC98(v5, "Right", 5, 2u);
  v9(v5, v2);
  return v8;
}

id sub_251FFF0E8(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      sub_252004020();
    }

    else
    {
      sub_252003F90();
    }
  }

  else if (a3)
  {
    sub_252004210();
  }

  else
  {
    sub_252004240();
  }

  return [a1 setValue_];
}

uint64_t sub_251FFF15C(void *a1, void *a2, int a3)
{
  v6 = sub_2520043D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251FDFB88();
  (*(v7 + 16))(v10, v11, v6);
  v12 = a1;
  v13 = a2;
  v14 = sub_2520043B0();
  v15 = sub_2520048C0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = v6;
    v17 = v16;
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136316674;
    *(v17 + 4) = sub_251FC55E0(0xD00000000000001BLL, 0x800000025200F570, &v28);
    v27 = a3;
    *(v17 + 12) = 2048;
    *(v17 + 14) = 202;
    *(v17 + 22) = 2048;
    sub_252004240();
    *(v17 + 24) = v19;
    *(v17 + 32) = 2048;
    sub_252004210();
    *(v17 + 34) = v20;
    *(v17 + 42) = 2048;
    sub_252004020();
    *(v17 + 44) = v21;
    *(v17 + 52) = 2048;
    sub_252003F90();
    *(v17 + 54) = v22;
    *(v17 + 62) = 2048;
    LOBYTE(a3) = v27;
    [v13 value];
    *(v17 + 64) = v23;
    _os_log_impl(&dword_251FB5000, v14, v15, "%s: %ld  b:%f t:%f ns:%f ov:%f slider:%f", v17, 0x48u);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x253097030](v18, -1, -1);
    MEMORY[0x253097030](v17, -1, -1);

    (*(v7 + 8))(v10, v26);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  [v13 value];
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      return sub_252004030();
    }

    else
    {
      return sub_252003FA0();
    }
  }

  else if (a3)
  {
    return sub_252004220();
  }

  else
  {
    return sub_252004250();
  }
}

id sub_251FFF418(void *a1, unsigned __int8 a2)
{
  [a1 value];
  v5 = v4;
  v6 = AXFormatFloatWithPercentage();
  if (v6)
  {
    v7 = v6;
    v8 = sub_2520046E0();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v16 = v8;
      if (v5 <= 0.5)
      {
        v11 = 0x72656B72614420;
        v12 = 0xE700000000000000;
      }

      else
      {
        v11 = 0x6574686769724220;
        v12 = 0xE900000000000072;
      }
    }

    else
    {
      v16 = v8;
      if (v5 <= 0.5)
      {
        v11 = 0x7466654C20;
        v12 = 0xE500000000000000;
      }

      else
      {
        v11 = 0x746867695220;
        v12 = 0xE600000000000000;
      }
    }

    MEMORY[0x253096310](v11, v12);
    return v16;
  }

  if (a2 != 2)
  {
    sub_252004A70();

    v16 = 0xD000000000000016;
    MEMORY[0x253096310](v8, v10);

    return v16;
  }

  [a1 value];
  result = AXFormatFloatWithPercentage();
  if (result)
  {
    v14 = result;
    v15 = sub_2520046E0();

    return v15;
  }

  return result;
}

unint64_t sub_251FFF5FC(unsigned __int8 a1)
{
  v1 = 0x622E726564696C73;
  v2 = 0xD000000000000015;
  if (a1 != 2)
  {
    v2 = 0x6F2E726564696C73;
  }

  if (a1)
  {
    v1 = 0x742E726564696C73;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_251FFF6A8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2520028FC(*a1);
  *a2 = result;
  return result;
}

id sub_251FFF6E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7248, &qword_252008B10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18[-v5];
  v7 = OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell____lazy_storage___slider;
  v8 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell____lazy_storage___slider);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell____lazy_storage___slider);
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x277D75A30]) initWithFrame_];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_251FD6770(0, &qword_27F4C7258, 0x277D75A30);
    sub_2520042B0();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    sub_251FD67B8(&qword_27F4C7260, &qword_27F4C7248, &qword_252008B10, MEMORY[0x277D0FB60]);
    v13 = v10;
    sub_252004580();

    (*(v3 + 8))(v6, v2);
    v14 = (*((*MEMORY[0x277D85000] & *v1) + 0xA8))(v18);
    sub_252004480();

    v14(v18, 0);
    v15 = *(v1 + v7);
    *(v1 + v7) = v13;
    v9 = v13;

    v8 = 0;
  }

  v16 = v8;
  return v9;
}

void sub_251FFF978(void *a1, uint64_t a2)
{
  v3 = sub_2520043D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 value];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_251FDFB88();
    (*(v4 + 16))(v7, v10, v3);
    v11 = v9;
    v12 = sub_2520043B0();
    v13 = sub_2520048C0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134218496;
      v15 = sub_251FFFDDC();
      if (!v15)
      {
LABEL_12:

        __break(1u);
        goto LABEL_13;
      }

      v16 = v15;
      v17 = sub_252003E60();

      sub_252004020();
      v19 = v18;

      *(v14 + 4) = v19;
      *(v14 + 12) = 2048;
      v20 = sub_251FFFDDC();

      if (!v20)
      {
LABEL_13:

        __break(1u);
        goto LABEL_14;
      }

      v21 = sub_252003E60();

      sub_252004240();
      v23 = v22;

      *(v14 + 14) = v23;
      *(v14 + 22) = 2048;
      v24 = sub_251FFFDDC();

      if (!v24)
      {
LABEL_14:
        __break(1u);
        return;
      }

      v25 = sub_252003E60();

      sub_252003F90();
      v27 = v26;

      *(v14 + 24) = v27;
      _os_log_impl(&dword_251FB5000, v12, v13, "Slider value change:  %f %f %f", v14, 0x20u);
      MEMORY[0x253097030](v14, -1, -1);
    }

    else
    {

      v12 = v11;
    }

    (*(v4 + 8))(v7, v3);
    v28 = *(&v11->isa + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_sliderType);
    v29 = sub_251FFFDDC();
    if (v29)
    {
      v30 = v29;
      v31 = sub_252003E60();

      sub_251FFF15C(v31, a1, v28);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }
}

uint64_t sub_251FFFC58(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell____lazy_storage___slider);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell____lazy_storage___slider) = a1;
  return MEMORY[0x2821F96F8](a1, v2);
}

void (*sub_251FFFC6C(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_251FFF6E0();
  return sub_251FFFCB4;
}

void sub_251FFFCB4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell____lazy_storage___slider);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell____lazy_storage___slider) = v2;
}

uint64_t sub_251FFFD28(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

void *sub_251FFFDE8(uint64_t *a1)
{
  v3 = v1;
  v4 = sub_2520043D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(v1 + *a1);
  if (!v10 || (v11 = v10, v12 = sub_251FEAFA4(), v11, !v12))
  {
    sub_2520043A0();
    v13 = sub_2520043B0();
    v14 = sub_2520048B0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_251FC55E0(0x6E6F687064616568, 0xEF65636976654465, &v20);
      _os_log_impl(&dword_251FB5000, v13, v14, "%s: connected device !", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x253097030](v16, -1, -1);
      MEMORY[0x253097030](v15, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v12 = *(v3 + v9);
    v17 = v12;
  }

  return v12;
}

void sub_251FFFFD0(void *a1)
{
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v164 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E50, &qword_252007E98);
  v172 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v164 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v164 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v164 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7298, &unk_252008B18);
  MEMORY[0x28223BE20](v23, v24);
  v27 = (&v164 - v26);
  if (!a1)
  {
    __break(1u);
    goto LABEL_45;
  }

  v169 = v11;
  v170 = v27;
  v171 = v25;
  if ([a1 userInfo])
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v180 = 0u;
    v181 = 0u;
  }

  aBlock = v180;
  v175 = v181;
  if (!*(&v181 + 1))
  {
    goto LABEL_27;
  }

  sub_251FD6770(0, &qword_27F4C69C0, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v167 = v23;
  v166 = a1;
  v28 = v179;
  v29 = sub_2520046B0();
  v168 = v28;
  v30 = [v28 objectForKey_];

  if (v30)
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v180 = 0u;
    v181 = 0u;
  }

  aBlock = v180;
  v175 = v181;
  if (!*(&v181 + 1))
  {

LABEL_27:
    sub_251FD74F0(&aBlock);
    goto LABEL_28;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_28;
  }

  LODWORD(v165) = v179;
  v31 = sub_2520046B0();
  v32 = v168;
  v33 = [v168 objectForKey_];

  if (v33)
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v180 = 0u;
    v181 = 0u;
  }

  aBlock = v180;
  v175 = v181;
  if (!*(&v181 + 1))
  {

    goto LABEL_27;
  }

  sub_252003EC0();
  if (swift_dynamicCast())
  {
    v34 = v179;
    v35 = sub_251FEAFA4();
    if (v35)
    {
      v36 = *&v173[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell__headphoneDevice];
      *&v173[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell__headphoneDevice] = v35;
      v37 = v35;

      v38 = sub_251FFFDDC();
      if (v38)
      {
        v39 = v38;
        v40 = sub_252003E60();

        sub_252004260();
        v41 = sub_252003E20();
        v42 = v172[1];
        v42(v22, v7);
        *&aBlock = v41;
        v43 = sub_251FFFDDC();
        if (v43)
        {
          v44 = v43;
          v45 = sub_252003E60();

          sub_252004230();
          v46 = sub_252003E20();
          v42(v19, v7);
          *&v180 = v46;
          v47 = sub_251FFFDDC();
          if (v47)
          {
            v48 = v47;
            v172 = v34;
            v49 = sub_252003E60();

            sub_252004060();
            v50 = sub_252003E20();
            v42(v15, v7);
            v179 = v50;
            v51 = sub_251FFFDDC();
            v52 = v169;
            if (v51)
            {
              v53 = v51;
              v54 = sub_252003E60();

              sub_252003FC0();
              v55 = sub_252003E20();
              v42(v52, v7);
              v178 = v55;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E60, &unk_252007EB0);
              p_aBlock = sub_251FD67B8(&qword_27F4C6E70, &qword_27F4C6E60, &unk_252007EB0, MEMORY[0x277CBCD90]);
              v163 = p_aBlock;
              v161[0] = p_aBlock;
              v161[1] = p_aBlock;
              v56 = v170;
              sub_252004470();
              v57 = swift_allocObject();
              v58 = v173;
              swift_unknownObjectWeakInit();
              v59 = swift_allocObject();
              *(v59 + 16) = v57;
              *(v59 + 24) = v37;
              sub_251FD67B8(&qword_27F4C72A8, &qword_27F4C7298, &unk_252008B18, MEMORY[0x277CBCB00]);
              v60 = v37;
              v61 = v167;
              sub_252004580();

              (*(v171 + 8))(v56, v61);
              v62 = MEMORY[0x277D85000];
              v63 = (*((*MEMORY[0x277D85000] & *v58) + 0xA8))(&aBlock);
              sub_252004480();

              v63(&aBlock, 0);
              v64 = OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_sliderType;
              *(v58 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_sliderType) = v165;
              v65 = [v58 contentView];
              v66 = [v65 subviews];

              sub_251FD6770(0, &qword_27F4C6A08, 0x277D75D18);
              v67 = sub_2520047B0();

              v68 = *((*v62 & *v58) + 0x80);
              v69 = v68();
              *&aBlock = v69;
              MEMORY[0x28223BE20](v69, v70);
              p_aBlock = &aBlock;
              LOBYTE(v65) = sub_2520026A4(sub_252002A70, v161, v67);

              if (v65)
              {

                return;
              }

              v165 = v60;
              v76 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
              [v76 setTranslatesAutoresizingMaskIntoConstraints_];
              v77 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
              v170 = v68;
              v78 = v77;
              [v77 setTranslatesAutoresizingMaskIntoConstraints_];
              v79 = v173;
              sub_251FFED88(v173[v64]);

              v80 = sub_2520046B0();

              v171 = v64;
              [v78 setText_];

              v81 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
              [v81 setTranslatesAutoresizingMaskIntoConstraints_];
              sub_251FFED88(v79[v171]);

              v82 = sub_2520046B0();

              [v81 setText_];

              v169 = v78;
              v83 = v78;
              v84 = v170;
              [v76 addSubview_];
              v167 = v81;
              [v76 addSubview_];
              v85 = [v79 contentView];
              [v85 addSubview_];

              v86 = v79[v171];
              v87 = v84();
              v88 = sub_251FFFDDC();
              if (v88)
              {
                v89 = v88;
                v90 = sub_252003E60();

                sub_251FFF0E8(v87, v90, v86);
                if ([v166 propertyForKey_])
                {
                  sub_252004A00();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v180 = 0u;
                  v181 = 0u;
                }

                v91 = v173;
                aBlock = v180;
                v175 = v181;
                if (*(&v181 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    v92 = v179;
                    v93 = v84();
                    v91 = v173;
                    v94 = v93;
                    [v93 setEnabled_];

                    v95 = [v91 contentView];
                    v96 = v95;
                    v97 = 0.5;
                    if (v92)
                    {
                      v97 = 1.0;
                    }

                    [v95 setAlpha_];
                  }
                }

                else
                {
                  sub_251FD74F0(&aBlock);
                }

                v98 = [v91 contentView];
                v99 = v84();
                [v98 addSubview_];

                v166 = objc_opt_self();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6BA0, &qword_252007410);
                v100 = swift_allocObject();
                *(v100 + 16) = xmmword_252008AF0;
                v101 = v169;
                v102 = [v169 topAnchor];
                v103 = [v76 topAnchor];
                v104 = [v102 constraintEqualToAnchor_];

                *(v100 + 32) = v104;
                v105 = [v101 leadingAnchor];
                v106 = [v76 &selRef_registerClass_forHeaderFooterViewReuseIdentifier_ + 1];
                v107 = [v105 constraintEqualToAnchor_];

                *(v100 + 40) = v107;
                v108 = [v101 bottomAnchor];

                v109 = [v76 bottomAnchor];
                v110 = [v108 constraintEqualToAnchor_];

                *(v100 + 48) = v110;
                v111 = v167;
                v112 = [v167 topAnchor];
                v113 = [v76 topAnchor];
                v114 = [v112 constraintEqualToAnchor_];

                *(v100 + 56) = v114;
                v115 = [v111 trailingAnchor];
                v116 = [v76 0x2796F39CCLL];
                v117 = [v115 constraintEqualToAnchor_];

                *(v100 + 64) = v117;
                v118 = [v111 bottomAnchor];

                v119 = [v76 bottomAnchor];
                v120 = [v118 constraintEqualToAnchor_];

                *(v100 + 72) = v120;
                v121 = [v76 topAnchor];
                v122 = [v173 contentView];
                v123 = [v122 topAnchor];

                v124 = [v121 constraintEqualToAnchor:v123 constant:10.0];
                *(v100 + 80) = v124;
                v125 = [v76 trailingAnchor];
                v126 = [v173 contentView];
                v127 = [v126 trailingAnchor];

                v128 = [v125 constraintEqualToAnchor:v127 constant:-20.0];
                *(v100 + 88) = v128;
                v129 = [v76 leadingAnchor];
                v130 = [v173 contentView];
                v131 = [v130 leadingAnchor];

                v132 = [v129 constraintEqualToAnchor:v131 constant:20.0];
                *(v100 + 96) = v132;
                v133 = v170();
                v134 = v170;
                v135 = [v133 topAnchor];

                v136 = [v76 bottomAnchor];
                v137 = [v135 constraintEqualToAnchor:v136 constant:10.0];

                *(v100 + 104) = v137;
                v138 = v134();
                v139 = [v138 bottomAnchor];

                v140 = [v173 contentView];
                v141 = [v140 bottomAnchor];

                v142 = [v139 constraintEqualToAnchor:v141 constant:-10.0];
                *(v100 + 112) = v142;
                v143 = v134();
                v144 = [v143 leadingAnchor];

                v145 = [v173 contentView];
                v146 = [v145 leadingAnchor];

                v147 = [v144 constraintEqualToAnchor:v146 constant:20.0];
                *(v100 + 120) = v147;
                v148 = v134();
                v149 = [v148 trailingAnchor];

                v150 = [v173 contentView];
                v151 = [v150 trailingAnchor];

                v152 = [v149 constraintEqualToAnchor:v151 constant:-20.0];
                *(v100 + 128) = v152;
                sub_251FD6770(0, &qword_27F4C69D8, 0x277CCAAD0);
                v153 = sub_2520047A0();

                [v166 activateConstraints_];

                v154 = v134();
                v155 = v172;
                v156 = v165;
                v157 = sub_2520046B0();

                [v154 setAccessibilityIdentifier_];

                v158 = v134();
                v159 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v176 = sub_252002AD8;
                v177 = v159;
                *&aBlock = MEMORY[0x277D85DD0];
                *(&aBlock + 1) = 1107296256;
                *&v175 = sub_252001570;
                *(&v175 + 1) = &block_descriptor_3;
                v160 = _Block_copy(&aBlock);

                [v158 setAccessibilityValueBlock_];
                _Block_release(v160);

                return;
              }

LABEL_49:
              __break(1u);
              return;
            }

LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

  else
  {
  }

LABEL_28:
  v71 = sub_251FDFB88();
  (*(v3 + 16))(v6, v71, v2);
  v72 = sub_2520043B0();
  v73 = sub_2520048B0();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *&aBlock = v75;
    *v74 = 136315394;
    *(v74 + 4) = sub_251FC55E0(0xD00000000000001ALL, 0x800000025200F500, &aBlock);
    *(v74 + 12) = 2048;
    *(v74 + 14) = 305;
    _os_log_impl(&dword_251FB5000, v72, v73, "%s: %ld Dependencies not meet, bailing out of specifiers returning empty!", v74, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    MEMORY[0x253097030](v75, -1, -1);
    MEMORY[0x253097030](v74, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
}

id sub_252001570(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
  v4 = v3;

  if (v4)
  {
    v5 = sub_2520046B0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_252001678(uint64_t (*a1)(void))
{
  v11.receiver = v1;
  v11.super_class = a1();
  objc_msgSendSuper2(&v11, sel_prepareForReuse);
  v2 = [v1 contentView];
  v3 = [v2 subviews];

  sub_251FD6770(0, &qword_27F4C6A08, 0x277D75D18);
  v4 = sub_2520047B0();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252004B20())
  {
    for (j = 0; ; ++j)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x253096650](j, v4);
      }

      else
      {
        if (j >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v7 removeFromSuperview];

      if (v9 == i)
      {
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

id sub_252001948()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x80))();
  v2 = [v1 accessibilityTraits];

  return v2;
}

id sub_2520019C4(void *a1, uint64_t a2, SEL *a3)
{
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x80);
  v5 = a1;
  v6 = v4();
  v7 = [v6 *a3];

  if (v7)
  {
    sub_2520046E0();

    v7 = sub_2520046B0();
  }

  else
  {
  }

  return v7;
}

uint64_t sub_252001AA0(SEL *a1)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x80))();
  v4 = [v3 *a1];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_2520046E0();

  return v5;
}

void sub_252001B74(SEL *a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x80);
  v4 = v3();
  [v4 *a1];

  v5 = v3();
  [v5 sendActionsForControlEvents_];
}

void sub_252001C30(void *a1, uint64_t a2, SEL *a3)
{
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x80);
  v7 = a1;
  v5 = v4();
  [v5 *a3];

  v6 = v4();
  [v6 sendActionsForControlEvents_];
}

double sub_252001D7C()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x80))();
  [v1 accessibilityActivationPoint];
  v3 = v2;

  return v3;
}

uint64_t sub_252001EF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A80, &qword_252008650);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_252007360;
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x80))();
  *(v1 + 56) = sub_251FD6770(0, &qword_27F4C7258, 0x277D75A30);
  *(v1 + 32) = v2;
  return v1;
}

id sub_252001FA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_2520046B0();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v5) initWithStyle:a1 reuseIdentifier:v8 specifier:a4];

  return v9;
}

id sub_252002038(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell____lazy_storage___slider] = 0;
  *&v4[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_listeners] = MEMORY[0x277D84FA0];
  *&v4[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell__headphoneDevice] = 0;
  *&v4[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_bluetoothDevice] = 0;
  *&v4[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_hms] = 0;
  v4[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_sliderType] = 0;
  if (a3)
  {
    v7 = sub_2520046B0();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for HearingAidTuningValuesSliderCell();
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_specifier_, a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_252002148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, void *))
{
  if (a4)
  {
    v9 = sub_2520046E0();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = a5;
  return a6(a3, v9, v11, a5);
}

id sub_2520021C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell____lazy_storage___slider] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_listeners] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell__headphoneDevice] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_bluetoothDevice] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_hms] = 0;
  v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_sliderType] = 0;
  if (a3)
  {
    v5 = sub_2520046B0();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for HearingAidTuningValuesSliderCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v5);

  return v6;
}

uint64_t sub_2520022B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (a4)
  {
    a4 = sub_2520046E0();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return a5(a3, a4, v8);
}

id sub_252002310(void *a1)
{
  *&v1[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell____lazy_storage___slider] = 0;
  *&v1[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_listeners] = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell__headphoneDevice] = 0;
  *&v1[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_bluetoothDevice] = 0;
  *&v1[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_hms] = 0;
  v1[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_sliderType] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HearingAidTuningValuesSliderCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_252002408(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2520024BC()
{
  MEMORY[0x2530970B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_2520024F4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_251FFD2C4();
    if (v4)
    {
      v5 = v4;
      v6 = sub_252003E60();

      sub_252003F70();
      [v1 value];
      v7 = sub_251FFD2C4();
      if (v7)
      {
        v8 = v7;
        v9 = sub_252003E60();

        [v1 value];
        sub_252003F80();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_2520025C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x277D85000] & *Strong) + 0x70))();
    v3 = sub_251FFD2C4();
    if (v3)
    {
      v4 = v3;
      v5 = sub_252003E60();

      sub_252003F70();
      v7 = v6;

      LODWORD(v8) = v7;
      [v2 setValue_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2520026A4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x253096650](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_252004B20();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

id sub_2520027CC(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() configurationWithTextStyle_];
  v3 = sub_2520046B0();
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  if (v4)
  {
    v5 = [objc_opt_self() systemGrayColor];
    v6 = [v4 imageWithTintColor:v5 renderingMode:1];

    if (v6)
    {
      return v6;
    }
  }

  v8 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v8 init];
}

unint64_t sub_2520028FC(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_25200290C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252002954()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_252002994()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_251FEAFA4();
    if (v2)
    {
      v3 = v2;
      v4 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_sliderType);
      v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x80))();
      v6 = sub_252003E60();
      sub_251FFF0E8(v5, v6, v4);
    }
  }
}

id sub_252002AD8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = *(Strong + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_sliderType);
  v3 = (*((*MEMORY[0x277D85000] & *Strong) + 0x80))();
  v4 = sub_251FFF418(v3, v2);

  return v4;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_252002BD8()
{
  result = qword_27F4C72C8;
  if (!qword_27F4C72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C72C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HearingAidTuningValuesSliderCell.SliderType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HearingAidTuningValuesSliderCell.SliderType(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_252002DA0()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F4C9348 = result;
  return result;
}

uint64_t sub_252002E68()
{
  v0 = sub_252004380();
  __swift_allocate_value_buffer(v0, qword_27F4C94A8);
  __swift_project_value_buffer(v0, qword_27F4C94A8);
  if (qword_27F4C9340 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4C9348;
  return sub_252004370();
}

uint64_t sub_252002F58()
{
  v0 = sub_252004380();
  __swift_allocate_value_buffer(v0, qword_27F4C94C0);
  __swift_project_value_buffer(v0, qword_27F4C94C0);
  if (qword_27F4C9340 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4C9348;
  return sub_252004370();
}

uint64_t sub_252003048()
{
  v0 = sub_252004380();
  __swift_allocate_value_buffer(v0, qword_27F4C94D8);
  __swift_project_value_buffer(v0, qword_27F4C94D8);
  if (qword_27F4C9340 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4C9348;
  return sub_252004370();
}

uint64_t sub_252003138()
{
  v0 = sub_252004380();
  __swift_allocate_value_buffer(v0, qword_27F4C94F0);
  __swift_project_value_buffer(v0, qword_27F4C94F0);
  if (qword_27F4C9340 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4C9348;
  return sub_252004370();
}

uint64_t sub_252003228()
{
  v0 = sub_252004380();
  __swift_allocate_value_buffer(v0, qword_27F4C9508);
  __swift_project_value_buffer(v0, qword_27F4C9508);
  if (qword_27F4C9340 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4C9348;
  return sub_252004370();
}

uint64_t sub_252003318()
{
  v0 = sub_252004380();
  __swift_allocate_value_buffer(v0, qword_27F4C9520);
  __swift_project_value_buffer(v0, qword_27F4C9520);
  if (qword_27F4C9340 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4C9348;
  return sub_252004370();
}

uint64_t sub_252003408()
{
  v0 = sub_252004380();
  __swift_allocate_value_buffer(v0, qword_27F4C9538);
  __swift_project_value_buffer(v0, qword_27F4C9538);
  if (qword_27F4C9340 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4C9348;
  return sub_252004370();
}

uint64_t sub_2520034F8()
{
  v0 = sub_252004380();
  __swift_allocate_value_buffer(v0, qword_27F4C9550);
  __swift_project_value_buffer(v0, qword_27F4C9550);
  if (qword_27F4C9340 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4C9348;
  return sub_252004370();
}

uint64_t sub_252003648()
{
  v0 = sub_252004380();
  __swift_allocate_value_buffer(v0, qword_27F4C9580);
  __swift_project_value_buffer(v0, qword_27F4C9580);
  if (qword_27F4C9340 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4C9348;
  return sub_252004370();
}

uint64_t sub_252003738()
{
  v0 = sub_252004380();
  __swift_allocate_value_buffer(v0, qword_27F4C9598);
  __swift_project_value_buffer(v0, qword_27F4C9598);
  if (qword_27F4C9340 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4C9348;
  return sub_252004370();
}

uint64_t sub_252003850(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_252004380();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  if (qword_27F4C9340 != -1)
  {
    swift_once();
  }

  v6 = qword_27F4C9348;
  return sub_252004370();
}

uint64_t sub_252003918(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_252004380();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_252003990@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_252004380();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}