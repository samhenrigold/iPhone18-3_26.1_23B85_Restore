uint64_t sub_2693F731C()
{
  OUTLINED_FUNCTION_23_2();
  v3 = v2;
  OUTLINED_FUNCTION_10_5();
  v5 = v4;
  OUTLINED_FUNCTION_8_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  *(v5 + 280) = v0;

  if (!v0)
  {

    *(v5 + 288) = v3;
  }

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2693F742C()
{
  OUTLINED_FUNCTION_23_2();
  swift_bridgeObjectRelease_n();

  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  OUTLINED_FUNCTION_71();
  v2 = *(v0 + 288);

  return v1(v2);
}

uint64_t sub_2693F74C8()
{
  OUTLINED_FUNCTION_60();

  swift_bridgeObjectRelease_n();

  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  OUTLINED_FUNCTION_4_6();

  return v1();
}

uint64_t sub_2693F7570()
{
  OUTLINED_FUNCTION_11_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v4);
  v1[11] = OUTLINED_FUNCTION_69();
  v1[12] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2693F7604(uint64_t a1)
{
  v2 = sub_269423FA8();
  v3 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v3))
  {
    OUTLINED_FUNCTION_33_1();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_0(v4);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v10 = *(v89 + 64);

  v11 = sub_26941C104(v10);
  v13 = OUTLINED_FUNCTION_31_1(v11, v12);
  if (v15)
  {
    v14 = 0xE000000000000000;
  }

  sub_2693D8BA0(v13, v14);
  OUTLINED_FUNCTION_13_4();
  v17 = 0;
  switch(v18)
  {
    case 1:
      OUTLINED_FUNCTION_24_2();
      goto LABEL_8;
    case 2:
      OUTLINED_FUNCTION_23_3();
      goto LABEL_8;
    case 3:
      goto LABEL_9;
    default:
LABEL_8:
      v17 = v16;
LABEL_9:
      *(v89 + 104) = v17;
      v19 = sub_26941C104(*(v89 + 64));
      v21 = OUTLINED_FUNCTION_31_1(v19, v20);
      if (v15)
      {
        v22 = 0xE000000000000000;
      }

      v23 = sub_2693D8BA0(v21, v22);
      if (v23 == 3)
      {
        v24 = sub_2693D737C();
      }

      else
      {
        v24 = sub_2693D861C(v23);
      }

      v87 = v17;
      v25 = *(v24 + 16);
      v26 = MEMORY[0x277D84F90];
      if (v25)
      {
        v27 = (v24 + 32);
        v28 = MEMORY[0x277D84F90];
        do
        {
          v30 = *v27++;
          v29 = v30;
          v31 = sub_26941C110(*(v89 + 64));
          v33 = OUTLINED_FUNCTION_31_1(v31, v32);
          if (v15)
          {
            v35 = 0xE000000000000000;
          }

          else
          {
            v35 = v34;
          }

          v1 = sub_2693D7A2C(v33, v35, v29);

          if (v1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_83();
            }

            OUTLINED_FUNCTION_70();
            if (v37)
            {
              v38 = OUTLINED_FUNCTION_32_1(v36);
              sub_26941F7F4(v38, v1, 1);
            }

            OUTLINED_FUNCTION_85();
          }

          --v25;
        }

        while (v25);
      }

      else
      {
        v28 = MEMORY[0x277D84F90];
      }

      v39 = *(v28 + 16);
      if (v39)
      {
        v90 = v26;
        sub_269424518();
        OUTLINED_FUNCTION_101();
        v86 = v28;
        v85 = v39;
        do
        {
          if (v1 >= *(v28 + 16))
          {
            __break(1u);
            JUMPOUT(0x2693F7BB8);
          }

          v40 = *(v89 + 64);
          OUTLINED_FUNCTION_104();
          v42 = v41;
          v44 = v43;
          sub_26941C0F8(v40);
          OUTLINED_FUNCTION_88();
          if (v15)
          {
            v46 = 0xE000000000000000;
          }

          else
          {
            v46 = v45;
          }

          type metadata accessor for TranslateAction();
          v47 = swift_allocObject();
          v47[2] = v42;
          v47[3] = v44;
          v47[4] = v40;
          v47[5] = v46;
          v48 = objc_allocWithZone(MEMORY[0x277D5C218]);

          v49 = OUTLINED_FUNCTION_36_1([v48 init]);
          sub_2694243F8();

          v50 = type metadata accessor for TranslationLanguage.Builder(0);
          v51 = OUTLINED_FUNCTION_10_2(v50);
          v52 = OBJC_IVAR____TtCC22SiriTranslationIntents19TranslationLanguage7Builder_language;
          v53 = sub_269423DA8();
          OUTLINED_FUNCTION_21_3();
          __swift_storeEnumTagSinglePayload(v54, v55, v56, v53);
          v57 = OBJC_IVAR____TtCC22SiriTranslationIntents19TranslationLanguage7Builder_translateAction;
          OUTLINED_FUNCTION_21_3();
          __swift_storeEnumTagSinglePayload(v58, v59, v60, v53);
          TranslationLanguages.getLocaleString()();

          OUTLINED_FUNCTION_61();
          sub_2693F66D4();
          OUTLINED_FUNCTION_100();

          if (!v44)
          {
            TranslationLanguages.rawValue.getter(v25);
            OUTLINED_FUNCTION_100();
          }

          v61 = *(v89 + 88);
          v62 = *(v89 + 96);
          OUTLINED_FUNCTION_72();
          OUTLINED_FUNCTION_10_6();
          sub_269423D78();
          OUTLINED_FUNCTION_11_4();
          __swift_storeEnumTagSinglePayload(v63, v64, v65, v53);
          OUTLINED_FUNCTION_64(v51 + v52, v89 + 16);
          sub_2693FD020(v62, v51 + v52);
          swift_endAccess();
          sub_2693FD518(v62, &qword_28030F610, &qword_269425760);
          v1 = v88 + 1;
          OUTLINED_FUNCTION_10_6();
          sub_269423D78();
          OUTLINED_FUNCTION_11_4();
          __swift_storeEnumTagSinglePayload(v66, v67, v68, v53);
          OUTLINED_FUNCTION_64(v51 + v57, v89 + 40);
          sub_2693FD020(v61, v51 + v57);
          swift_endAccess();
          v69 = OUTLINED_FUNCTION_61();
          sub_2693FD518(v69, v70, &qword_269425760);
          v71 = type metadata accessor for TranslationLanguage(0);
          OUTLINED_FUNCTION_10_2(v71);
          v72 = OUTLINED_FUNCTION_97();
          sub_2694025F4(v72);

          sub_2694244F8();
          v25 = *(v90 + 16);
          OUTLINED_FUNCTION_86();
          sub_269424528();
          OUTLINED_FUNCTION_86();
          sub_269424538();
          sub_269424508();
          v28 = v86;
          v73 = v87;
        }

        while (v85 != v88 + 1);

        v74 = v90;
      }

      else
      {

        v74 = MEMORY[0x277D84F90];
        v73 = v87;
      }

      *(v89 + 112) = v73;
      *(v89 + 120) = v74;
      if (v73)
      {
        v75 = v73;
      }

      else
      {
        v75 = 0xE000000000000000;
      }

      sub_269423398();
      sub_2694233B8();
      sub_2694233A8();
      sub_269423388();
      v76 = sub_26941C9D4();
      v77 = swift_task_alloc();
      *(v89 + 128) = v77;
      *v77 = v89;
      v77[1] = sub_2693F7BC8;
      v78 = OUTLINED_FUNCTION_38_0();

      return sub_2693D5670(v78, v79, v75, v80, v81, v82, v83, *&v76);
  }
}

uint64_t sub_2693F7BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  v11 = *v10;
  OUTLINED_FUNCTION_9_0();
  *v12 = v11;

  OUTLINED_FUNCTION_73();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_2693F7D58()
{
  OUTLINED_FUNCTION_11_0();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v5 = type metadata accessor for SiriTranslationModels.Language(0);
  v1[15] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[16] = v6;
  v1[17] = OUTLINED_FUNCTION_82();
  v7 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2693F7E00()
{
  v1 = v0[12];
  v2 = sub_26941C110(v1);
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  sub_26941C104(v1);
  OUTLINED_FUNCTION_88();
  if (v7)
  {
    v8 = 0xE000000000000000;
  }

  else
  {
    v8 = v6;
  }

  sub_2693D8BA0(v1, v8);
  v9 = sub_2693D8BA0(v1, v8);
  if (v9 == 3)
  {
    v10 = sub_2693D737C();
  }

  else
  {
    v10 = sub_2693D861C(v9);
  }

  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = (v10 + 32);
    do
    {
      v15 = *v13++;
      v14 = v15;
      if (sub_2693D7A2C(v4, v5, v15))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26941F7F4(0, *(v12 + 16) + 1, 1);
        }

        v17 = *(v12 + 16);
        v16 = *(v12 + 24);
        if (v17 >= v16 >> 1)
        {
          v18 = OUTLINED_FUNCTION_32_1(v16);
          sub_26941F7F4(v18, v17 + 1, 1);
        }

        *(v12 + 16) = v17 + 1;
        *(v12 + v17 + 32) = v14;
      }

      --v11;
    }

    while (v11);
  }

  v19 = *(v12 + 16);
  if (v19)
  {
    v38 = MEMORY[0x277D84F90];
    sub_26941F86C(0, v19, 0);
    v20 = 32;
    v21 = v38;
    do
    {
      TranslationLanguages.rawValue.getter(*(v12 + v20));
      v23 = v22;
      v25 = v24;
      TranslationLanguages.getLocaleString()();
      sub_2693F66D4();
      v27 = v26;
      v29 = v28;

      if (!v29)
      {

        v27 = v23;
        v29 = v25;
      }

      v0[2] = v23;
      v0[3] = v25;
      sub_269422D98();
      v0[4] = v27;
      v0[5] = v29;
      sub_269422D98();
      v31 = *(v38 + 16);
      v30 = *(v38 + 24);
      if (v31 >= v30 >> 1)
      {
        v35 = OUTLINED_FUNCTION_32_1(v30);
        sub_26941F86C(v35, v31 + 1, 1);
      }

      *(v38 + 16) = v31 + 1;
      OUTLINED_FUNCTION_93();
      sub_2693FD3B0(v34, v38 + v32 + *(v33 + 72) * v31);
      ++v20;
      --v19;
    }

    while (v19);
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v0[18] = v21;
  v36 = swift_task_alloc();
  v0[19] = v36;
  *v36 = v0;
  v36[1] = sub_2693F81C8;

  return sub_2693F7570();
}

uint64_t sub_2693F81C8()
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 160) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_43_0();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_26_1();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_2693F8300(uint64_t a1)
{
  OUTLINED_FUNCTION_59();
  v3 = [*(v2 + 160) dialog];
  OUTLINED_FUNCTION_96();
  sub_2693FD1B0();
  v4 = sub_269424288();

  sub_2693F8490(v4);
  OUTLINED_FUNCTION_97();

  if (v1)
  {
    v5 = [v1 fullSpeak];

    v1 = sub_269424118();
    v7 = v6;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  v8 = *(v2 + 144);
  v9 = sub_26941C0F8(*(v2 + 96));
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  *(v2 + 80) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FA28, &qword_269426480);
  sub_269422D98();
  type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  *(v2 + 48) = v1;
  *(v2 + 56) = v7;
  sub_269422D98();
  *(v2 + 64) = v11;
  *(v2 + 72) = v12;
  sub_269422D98();

  OUTLINED_FUNCTION_71();
  v14 = *(v2 + 160);

  return v13(v14);
}

char *sub_2693F8490(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_26942008C();
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return MEMORY[0x26D63C060](v3, a1);
  }

  result = sub_269424588();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_2693F8524()
{
  OUTLINED_FUNCTION_11_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v4);
  v1[5] = OUTLINED_FUNCTION_69();
  v1[6] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2693F85B8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_58();
  v9 = *(v8 + 32);
  type metadata accessor for NLConverter(0);
  sub_26940D5B8((v9 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_deviceState));
  if (v10)
  {
    OUTLINED_FUNCTION_74();
    v13 = v12 == 0x41535F7261 && v11 == 0xE500000000000000;
    if (v13 || (OUTLINED_FUNCTION_34_1(), (sub_269424688() & 1) != 0))
    {
    }
  }

  v14 = *(v8 + 24);
  v15 = OUTLINED_FUNCTION_34_1();
  v17 = sub_26940BCAC(v15, v16);
  v18 = sub_26941C110(v14);
  v20 = OUTLINED_FUNCTION_31_1(v18, v19);
  if (v13)
  {
    v21 = 0xE000000000000000;
  }

  v22 = sub_26940BCAC(v20, v21);
  v23 = v22 == 40 && v17 == 40;
  if (v17 != 40 && v22 != 40)
  {
    v24 = v22;
    sub_26940BD14(v17);
    OUTLINED_FUNCTION_74();
    if (v23 != sub_26940BD14(v24) || v17 != v25)
    {
      OUTLINED_FUNCTION_34_1();
      sub_269424688();
    }
  }

  v27 = sub_26941C104(*(v8 + 24));
  v29 = OUTLINED_FUNCTION_31_1(v27, v28);
  if (v13)
  {
    v30 = 0xE000000000000000;
  }

  if (TranslationLanguages.init(rawValue:)(*&v29).value == SiriTranslationIntents_TranslationLanguages_unknownDefault)
  {
    v31 = sub_26941C104(*(v8 + 24));
    v33 = OUTLINED_FUNCTION_31_1(v31, v32);
    if (v13)
    {
      v34 = 0xE000000000000000;
    }

    sub_2693D8BA0(v33, v34);
    OUTLINED_FUNCTION_76();
    switch(v35)
    {
      case 1:
        OUTLINED_FUNCTION_19_1();
        break;
      case 2:
        OUTLINED_FUNCTION_87();
        break;
      default:
        break;
    }
  }

  else
  {
    TranslationLanguages.getLocaleString()();
  }

  v36 = *(v8 + 24);
  OUTLINED_FUNCTION_27_1();
  sub_2693F66D4();

  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  v37 = sub_269423DA8();
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
  v41 = sub_26941C110(v36);
  OUTLINED_FUNCTION_31_1(v41, v42);
  OUTLINED_FUNCTION_27_1();
  sub_2693F66D4();
  OUTLINED_FUNCTION_80();

  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v37);
  sub_269423D68();
  OUTLINED_FUNCTION_108();
  *(v8 + 56) = v46;
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  *(v8 + 64) = v47;
  *v47 = v48;
  v47[1] = sub_2693F8914;
  OUTLINED_FUNCTION_102();

  return sub_26940A2F0();
}

uint64_t sub_2693F8914()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  *(v3 + 72) = v0;

  v9 = OUTLINED_FUNCTION_79();
  sub_2693FD518(v9, v10, &qword_269425760);
  sub_2693FD518(v6, &qword_28030F610, &qword_269425760);
  if (v0)
  {
    OUTLINED_FUNCTION_26_1();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_43_0();

    return v14();
  }
}

uint64_t sub_2693F8AC4()
{
  OUTLINED_FUNCTION_11_0();

  OUTLINED_FUNCTION_4_6();

  return v0();
}

void sub_2693F8B28()
{
  OUTLINED_FUNCTION_17_3();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v5);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v6);
  v56 = &v50 - v7;
  sub_269423EE8();

  v53 = v4;
  sub_269423ED8();
  v8 = sub_269423228();

  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = sub_2693FD0F8(v8);
  if (v9)
  {
    v10 = v9;
    v11 = *(v9 + 16);
    if (!v11)
    {

      v27 = MEMORY[0x277D84F90];
LABEL_17:
      v61 = v27;
      if (!sub_26941C9D4())
      {
        v28 = sub_269423E68();
        OUTLINED_FUNCTION_10_2(v28);
        sub_269423E58();
        OUTLINED_FUNCTION_10_6();
        sub_269423D78();
        v29 = sub_269423DA8();
        OUTLINED_FUNCTION_11_4();
        __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
        sub_269423E38();

        OUTLINED_FUNCTION_47_0();
        sub_2693FD518(v33, v34, v35);
        OUTLINED_FUNCTION_10_6();
        sub_269423D78();
        OUTLINED_FUNCTION_11_4();
        __swift_storeEnumTagSinglePayload(v36, v37, v38, v29);
        sub_269423E28();

        OUTLINED_FUNCTION_47_0();
        sub_2693FD518(v39, v40, v41);
        sub_269423E48();

        MEMORY[0x26D63BE10](v42);
        OUTLINED_FUNCTION_89();
        if (v43)
        {
LABEL_27:
          OUTLINED_FUNCTION_32_1(v17);
          sub_2694242A8();
        }

        sub_2694242C8();
      }

      v44 = sub_269423D48();
      OUTLINED_FUNCTION_10_2(v44);
      sub_269423D38();
      v45 = v56;
      sub_269424168();

      sub_269423DA8();
      OUTLINED_FUNCTION_11_4();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
      sub_269423D28();

      sub_2693FD518(v45, &qword_28030F610, &qword_269425760);
      sub_269423D18();

      sub_269423D58();

      goto LABEL_21;
    }

    v50 = v2;
    v51 = v8;
    v52 = v0;
    v61 = MEMORY[0x277D84F90];
    sub_269424518();
    v13 = sub_2693FD170(v10);
    v14 = v10 + 64;
    v15 = v11 - 1;
    v54 = v10 + 64;
    v55 = v10;
    v16 = v56;
    if ((v13 & 0x8000000000000000) == 0)
    {
      while (v13 < 1 << *(v10 + 32))
      {
        v17 = *(v14 + 8 * (v13 >> 6));
        if ((v17 & (1 << v13)) == 0)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v17 = *(v10 + 36);
        if (v12 != v17)
        {
          goto LABEL_23;
        }

        v58 = v12;
        v59 = v13 >> 6;
        v57 = v15;
        v60 = *(*(v10 + 56) + 16 * v13);
        v18 = sub_269423E68();
        OUTLINED_FUNCTION_10_2(v18);

        sub_269423E58();
        OUTLINED_FUNCTION_91();
        sub_269424168();
        v19 = sub_269423DA8();
        OUTLINED_FUNCTION_11_4();
        __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
        v8 = sub_269423E38();

        sub_2693FD518(v16, &qword_28030F610, &qword_269425760);
        sub_269424168();
        OUTLINED_FUNCTION_11_4();
        __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
        sub_269423E28();

        sub_2693FD518(v16, &qword_28030F610, &qword_269425760);
        sub_269423E48();

        sub_2694244F8();
        sub_269424528();
        v10 = v55;
        sub_269424538();
        sub_269424508();
        v17 = -1 << *(v10 + 32);
        if (v13 >= -v17)
        {
          goto LABEL_24;
        }

        v14 = v54;
        if ((*(v54 + 8 * v59) & (1 << v13)) == 0)
        {
          goto LABEL_25;
        }

        if (v58 != *(v10 + 36))
        {
          goto LABEL_26;
        }

        v26 = sub_269424488();
        if (!v57)
        {

          v27 = v61;
          v8 = v51;
          goto LABEL_17;
        }

        v13 = v26;
        v12 = *(v10 + 36);
        v15 = v57 - 1;
        if (v26 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_14:

LABEL_21:
    OUTLINED_FUNCTION_16_3();
    return;
  }

  __break(1u);
}

uint64_t sub_2693F9048()
{
  OUTLINED_FUNCTION_11_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v3);
  v1[4] = OUTLINED_FUNCTION_69();
  v1[5] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2693F90D8()
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  v1 = sub_269423DA8();
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  sub_269423D68();
  OUTLINED_FUNCTION_108();
  *(v0 + 48) = v8;
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  *(v0 + 56) = v9;
  *v9 = v10;
  v9[1] = sub_2693F9200;

  return sub_26940A2F0();
}

uint64_t sub_2693F9200()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  *(v3 + 64) = v0;

  v9 = OUTLINED_FUNCTION_79();
  sub_2693FD518(v9, v10, &qword_269425760);
  sub_2693FD518(v6, &qword_28030F610, &qword_269425760);
  if (v0)
  {
    OUTLINED_FUNCTION_26_1();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_43_0();

    return v14();
  }
}

uint64_t sub_2693F93B0()
{
  OUTLINED_FUNCTION_11_0();

  OUTLINED_FUNCTION_4_6();

  return v0();
}

uint64_t sub_2693F9414()
{
  OUTLINED_FUNCTION_11_0();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FCA0, &unk_269427210);
  v1[12] = v7;
  OUTLINED_FUNCTION_12_2(v7);
  v1[13] = OUTLINED_FUNCTION_82();
  v8 = sub_269423DA8();
  v1[14] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[15] = v9;
  v1[16] = OUTLINED_FUNCTION_69();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v10);
  v1[21] = OUTLINED_FUNCTION_69();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2693F9588(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_58();
  v10 = sub_269423FA8();
  v11 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v11))
  {
    OUTLINED_FUNCTION_33_1();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_0(v12);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v18 = v8[26];
  v19 = v8[14];
  v21 = v8[9];
  v20 = v8[10];

  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v19);
  sub_2693FD518(v18, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v19);
  v28 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v28 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28 || !v8[9] && v8[10] == 0xE000000000000000 || (OUTLINED_FUNCTION_27_1(), (sub_269424688() & 1) != 0))
  {
    v29 = v8[14];
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_10_6();
    sub_269423D78();
    v30 = OUTLINED_FUNCTION_9_5();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_10_6();
    sub_269423D78();
    OUTLINED_FUNCTION_11_4();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v29);
    swift_task_alloc();
    OUTLINED_FUNCTION_56_0();
    v8[27] = v36;
    *v36 = v37;
    v36[1] = sub_2693F9E88;
    goto LABEL_10;
  }

  v40 = OUTLINED_FUNCTION_34_1();
  v42 = sub_26940BCAC(v40, v41);

  v43 = OUTLINED_FUNCTION_34_1();
  v45 = sub_26940C010(v43, v44);
  v46 = v45;
  if (v42 == 40 || (v47 = 1, v42 != 24) && v42 != 39)
  {
    v47 = v45 == 0;
  }

  v49 = v8[9];
  v48 = v8[10];

  v50._countAndFlagsBits = v49;
  v50._object = v48;
  v51.value = TranslationLanguages.init(rawValue:)(v50).value;
  value = v51.value;
  v109 = v51.value;
  if (v42 != 40)
  {
    v54 = sub_26940BD14(v42);
    v9 = v55;
    if (value == SiriTranslationIntents_TranslationLanguages_unknownDefault)
    {
      v56 = 0;
      v53 = 0;
      if (!v55)
      {
        goto LABEL_56;
      }

      goto LABEL_37;
    }

    v57 = v54;
LABEL_25:
    v58 = TranslationLanguages.getLocaleString()();
    if (!v9)
    {
      v61 = 1;
      if (!v58._object)
      {
        goto LABEL_53;
      }

      goto LABEL_38;
    }

    if (v58._object)
    {
      if (v57 == v58._countAndFlagsBits && v9 == v58._object)
      {

        goto LABEL_53;
      }

      v60 = sub_269424688();

      if (v60)
      {
LABEL_53:
        v53 = 1;
        goto LABEL_56;
      }

      if (v42 != 40)
      {
        LOBYTE(v61) = 1;
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    v56 = 1;
LABEL_37:
    v61 = v56;
LABEL_38:

    if (v42 != 40)
    {
LABEL_41:
      v62 = v109;
      v63 = sub_26940BD00(v42);
      v9 = v63;
      if ((v61 & 1) == 0)
      {
        v53 = 0;
        if (v63 != 21)
        {
          goto LABEL_56;
        }

        v66 = 0;
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    if (!v61)
    {
      v66 = 0;
      goto LABEL_55;
    }

LABEL_40:
    v9 = 21;
    v62 = v109;
LABEL_42:
    v64 = sub_2693D6D00(v62);
    v65 = v64;
    if (v9 == 21)
    {
      v66 = 1;
LABEL_55:
      v53 = v66;
      goto LABEL_56;
    }

    if (v64 != 21)
    {
      v67 = sub_26940C22C(v9);
      v69 = v68;
      v70 = sub_26940C22C(v65);
      v9 = v71;
      if (v67 != v70 || v69 != v71)
      {
        sub_269424688();
      }

      v53 = 1;
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  if (v51.value != SiriTranslationIntents_TranslationLanguages_unknownDefault)
  {
    v9 = 0;
    v57 = 0;
    goto LABEL_25;
  }

  v53 = 0;
LABEL_56:
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  if (v47)
  {
    OUTLINED_FUNCTION_13_4();
    switch(v46)
    {
      case 1:
        OUTLINED_FUNCTION_24_2();
        break;
      case 2:
        OUTLINED_FUNCTION_23_3();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_27_1();
    sub_2693F66D4();
    OUTLINED_FUNCTION_80();

    if (!v9)
    {
      if (v42 != 40)
      {
        sub_26940BD14(v42);
      }

      OUTLINED_FUNCTION_27_1();
      sub_2693F66D4();
      OUTLINED_FUNCTION_80();

      if (v42 != 40)
      {
        v8[4] = sub_26940BD14(v42);
        v8[5] = v73;
        sub_2693D50A4();
        sub_269424428();
        OUTLINED_FUNCTION_80();
      }
    }

    v75 = v8[19];
    v74 = v8[20];
    v77 = v8[14];
    v76 = v8[15];
    OUTLINED_FUNCTION_10_6();
    sub_269423D78();
    (*(v76 + 8))(v74, v77);
    (*(v76 + 32))(v74, v75, v77);
  }

  sub_269423D98();
  v78 = sub_269423FA8();
  v79 = sub_269424368();
  v80 = os_log_type_enabled(v78, v79);
  if (v53)
  {
    if (v80)
    {
      OUTLINED_FUNCTION_33_1();
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_2693C9000, v78, v79, "Generating localized language version using locale.", v81, 2u);
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    sub_2693D768C(v109);
    OUTLINED_FUNCTION_27_1();
    sub_2693F66D4();
    v83 = v82;

    if (!v83)
    {
      v84 = v8[10];
      v8[2] = v8[9];
      v8[3] = v84;
      sub_2693D50A4();
      sub_269424428();
    }

    v85 = v8 + 16;
  }

  else
  {
    if (v80)
    {
      OUTLINED_FUNCTION_33_1();
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_2693C9000, v78, v79, "Generating unsupported language using CAT.", v86, 2u);
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    v85 = v8 + 17;
    v87 = v8[23];
    v88 = v8[13];
    v89 = v8[14];

    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_10_6();
    sub_269423D78();
    OUTLINED_FUNCTION_11_4();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v89);
    sub_26940A12C(v87, 0, 0xE000000000000000);
    sub_2693FD518(v87, &qword_28030F610, &qword_269425760);
    sub_269424768();
    sub_2693FD518(v88, &qword_28030FCA0, &unk_269427210);
  }

  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  v93 = *v85;
  v94 = v8[21];
  v95 = v8[18];
  v96 = v8[14];
  v97 = v8[15];
  v98 = *(v97 + 8);
  v8[29] = v98;
  v98(v95, v96);
  (*(v97 + 32))(v95, v93, v96);
  v99 = *(v97 + 16);
  v100 = OUTLINED_FUNCTION_38_0();
  v99(v100);
  v101 = OUTLINED_FUNCTION_9_5();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v96);
  (v99)(v94, v95, v96);
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v96);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v8[30] = v107;
  *v107 = v108;
  v107[1] = sub_2693FA0B4;
LABEL_10:
  OUTLINED_FUNCTION_102();

  return sub_26940AC5C();
}

uint64_t sub_2693F9E88()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_15_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_47_0();
  sub_2693FD518(v7, v8, v9);
  v10 = OUTLINED_FUNCTION_38_0();
  sub_2693FD518(v10, v11, &qword_269425760);
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2693F9FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  sub_2693FD518(*(v14 + 208), &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_53_0();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_44_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2693FA0B4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_15_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_47_0();
  sub_2693FD518(v7, v8, v9);
  v10 = OUTLINED_FUNCTION_38_0();
  sub_2693FD518(v10, v11, &qword_269425760);
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2693FA210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  v16 = OUTLINED_FUNCTION_52_0();
  v15(v16);
  v17 = OUTLINED_FUNCTION_91();
  v15(v17);
  sub_2693FD518(v14, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_53_0();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_44_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2693FA300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  sub_2693FD518(*(v14 + 208), &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_51_0();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_44_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2693FA3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  v16 = OUTLINED_FUNCTION_52_0();
  v15(v16);
  v17 = OUTLINED_FUNCTION_91();
  v15(v17);
  sub_2693FD518(v14, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_51_0();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_44_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2693FA4C8()
{
  OUTLINED_FUNCTION_11_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v3);
  v1[4] = OUTLINED_FUNCTION_69();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2693FA564()
{
  OUTLINED_FUNCTION_60();
  v1 = sub_269423FA8();
  v2 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v2))
  {
    OUTLINED_FUNCTION_33_1();
    v3 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_0(v3);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v9 = sub_269423DA8();
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v9);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  *(v0 + 56) = v19;
  *v19 = v20;
  v19[1] = sub_2693FA6CC;

  return sub_26940AC5C();
}

uint64_t sub_2693FA6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_5();
  v13 = v12;
  OUTLINED_FUNCTION_8_4();
  *v14 = v13;
  v16 = *(v15 + 48);
  v17 = *(v15 + 40);
  v18 = *v11;
  OUTLINED_FUNCTION_9_0();
  *v19 = v18;
  *(v13 + 64) = v10;

  v20 = OUTLINED_FUNCTION_79();
  sub_2693FD518(v20, v21, &qword_269425760);
  sub_2693FD518(v17, &qword_28030F610, &qword_269425760);
  sub_2693FD518(v16, &qword_28030F610, &qword_269425760);
  if (v10)
  {
    OUTLINED_FUNCTION_26_1();
    OUTLINED_FUNCTION_73();

    return MEMORY[0x2822009F8](v22, v23, v24);
  }

  else
  {

    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_73();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
  }
}

uint64_t sub_2693FA884()
{
  OUTLINED_FUNCTION_11_0();

  OUTLINED_FUNCTION_4_6();

  return v0();
}

uint64_t sub_2693FA8F4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_6_5();
}

uint64_t sub_2693FA908()
{
  OUTLINED_FUNCTION_23_2();
  v1 = sub_269423FA8();
  v2 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v2))
  {
    OUTLINED_FUNCTION_33_1();
    v3 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_0(v3);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  *(v0 + 32) = v9;
  *v9 = v10;
  v9[1] = sub_2693FAA08;
  v11 = *(v0 + 16);

  return sub_26940A828(v11);
}

uint64_t sub_2693FAA08()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v1 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;

  OUTLINED_FUNCTION_4_6();

  return v3();
}

void sub_2693FAAE8()
{
  OUTLINED_FUNCTION_17_3();
  v1 = v0;
  v26 = v2;
  v27 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v4);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v28[3] = MEMORY[0x277D84F90];
  if (!v1)
  {
    goto LABEL_16;
  }

  if (!(v1 >> 62))
  {
    v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_16:
    OUTLINED_FUNCTION_16_3();
    return;
  }

  v8 = sub_269424588();
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_4:
  if (v8 >= 1)
  {
    v25 = 0;
    v9 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D63C060](v9, v1);
      }

      else
      {
        v10 = *(v1 + 8 * v9 + 32);
      }

      v11 = v10;
      sub_2693FACF0();
      v13 = v12;
      sub_2693FD090(v11, &selRef_romanization);
      if (v14)
      {
        OUTLINED_FUNCTION_10_6();
        sub_269423D78();
        sub_269423DA8();
        v25 = 1;
        OUTLINED_FUNCTION_11_4();
        __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
        v19 = OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_romanization;
        OUTLINED_FUNCTION_64(v13 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_romanization, v28);
        sub_2693FD020(v7, v13 + v19);
        swift_endAccess();
        sub_2693FD518(v7, &qword_28030F610, &qword_269425760);
      }

      v20 = type metadata accessor for TranslationItem(0);
      OUTLINED_FUNCTION_10_2(v20);

      sub_2693CE900(v21);
      MEMORY[0x26D63BE10]();
      OUTLINED_FUNCTION_89();
      if (v23)
      {
        OUTLINED_FUNCTION_32_1(v22);
        sub_2694242A8();
      }

      ++v9;
      sub_2694242C8();
    }

    while (v8 != v9);
    goto LABEL_16;
  }

  __break(1u);
}

void sub_2693FACF0()
{
  OUTLINED_FUNCTION_17_3();
  v1 = v0;
  v91 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  v6 = OUTLINED_FUNCTION_12_2(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_7();
  v94 = v7;
  OUTLINED_FUNCTION_21_2();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v90 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v90 - v12;
  sub_269422D18();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_5();
  v15 = sub_2693FD090(v4, &selRef_translatedSantitizedText);
  v95 = v4;
  if (v16)
  {
    v17 = v16;
    v18 = v15;
  }

  else
  {
    v19 = sub_269405C48(v4);
    if (v20)
    {
      v18 = v19;
    }

    else
    {
      v18 = 0;
    }

    if (v20)
    {
      v17 = v20;
    }

    else
    {
      v17 = 0xE000000000000000;
    }
  }

  sub_269422D08();
  v21 = sub_269422CF8();
  v93 = v21;
  v23 = v22;
  v24 = OUTLINED_FUNCTION_61();
  v25(v24);
  type metadata accessor for SpeakAction();
  swift_allocObject();
  v92 = v23;
  sub_2693CB558(v91, v1, v18, v17, v21, v23);
  v26 = objc_allocWithZone(MEMORY[0x277D5C218]);

  v27 = [v26 init];
  v28 = sub_2693FCBA8(v27, sub_2693FC57C);
  v29 = sub_2694243F8();
  v31 = v30;

  if (v31)
  {
    v32 = v29;
  }

  else
  {
    v32 = 0;
  }

  v33 = 0xE000000000000000;
  if (v31)
  {
    v33 = v31;
  }

  v90[1] = v33;
  v91 = v32;
  type metadata accessor for StopSpeakAction();
  swift_allocObject();
  v34 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
  v35 = sub_2693FCBA8(v34, sub_2693FC264);
  v36 = sub_2694243F8();
  v38 = v37;

  if (v38)
  {
    v39 = v36;
  }

  else
  {
    v39 = 0;
  }

  v90[0] = v39;
  v40 = type metadata accessor for TranslationItem.Builder(0);
  OUTLINED_FUNCTION_10_2(v40);
  v41 = sub_2693CE7A4();
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  v42 = sub_269423DA8();
  v43 = OUTLINED_FUNCTION_9_5();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
  v46 = OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_text;
  OUTLINED_FUNCTION_35_1(v41 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_text);
  sub_2693FD020(v13, v41 + v46);
  swift_endAccess();
  v47 = OUTLINED_FUNCTION_38_0();
  sub_2693FD518(v47, v48, &qword_269425760);
  v49 = v95;
  v50 = sub_2693FD090(v95, &selRef_definition);
  OUTLINED_FUNCTION_31_1(v50, v51);
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v42);
  v55 = OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_definition;
  OUTLINED_FUNCTION_35_1(v41 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_definition);
  sub_2693FD020(v11, v41 + v55);
  swift_endAccess();
  v56 = OUTLINED_FUNCTION_24_1();
  sub_2693FD518(v56, v57, &qword_269425760);
  v58 = sub_2693FD090(v49, &selRef_wordType);
  OUTLINED_FUNCTION_31_1(v58, v59);
  v60 = v94;
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v42);
  v64 = OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_wordType;
  OUTLINED_FUNCTION_35_1(v41 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_wordType);
  sub_2693FD020(v60, v41 + v64);
  swift_endAccess();
  v65 = OUTLINED_FUNCTION_24_1();
  sub_2693FD518(v65, v66, &qword_269425760);
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  v67 = OUTLINED_FUNCTION_9_5();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v42);
  v70 = OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_speakAction;
  OUTLINED_FUNCTION_35_1(v41 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_speakAction);
  sub_2693FD020(v13, v41 + v70);
  swift_endAccess();
  v71 = OUTLINED_FUNCTION_38_0();
  sub_2693FD518(v71, v72, &qword_269425760);
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  v73 = OUTLINED_FUNCTION_9_5();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v42);
  v76 = OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_stopSpeakAction;
  OUTLINED_FUNCTION_35_1(v41 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_stopSpeakAction);
  sub_2693FD020(v13, v41 + v76);
  swift_endAccess();
  v77 = OUTLINED_FUNCTION_38_0();
  sub_2693FD518(v77, v78, &qword_269425760);
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  v79 = OUTLINED_FUNCTION_9_5();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v42);
  v82 = OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_identifier;
  OUTLINED_FUNCTION_35_1(v41 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_identifier);
  sub_2693FD020(v13, v41 + v82);
  swift_endAccess();
  v83 = OUTLINED_FUNCTION_38_0();
  sub_2693FD518(v83, v84, &qword_269425760);
  sub_2693FD090(v49, &selRef_romanization);
  if (v85)
  {
    OUTLINED_FUNCTION_10_6();
    sub_269423D78();
    v86 = OUTLINED_FUNCTION_9_5();
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v42);
    v89 = OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_romanization;
    OUTLINED_FUNCTION_35_1(v41 + OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_romanization);
    sub_2693FD020(v13, v41 + v89);
    swift_endAccess();
    sub_2693FD518(v13, &qword_28030F610, &qword_269425760);
  }

  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_2693FB2A4()
{
  OUTLINED_FUNCTION_23_2();
  v1 = sub_269423FA8();
  v2 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v2))
  {
    OUTLINED_FUNCTION_33_1();
    v3 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_0(v3);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v9 = *(v0 + 16);

  __swift_project_boxed_opaque_existential_1((v9 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translatePatternProvider), *(v9 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translatePatternProvider + 24));
  v10 = swift_task_alloc();
  *(v0 + 24) = v10;
  *v10 = v0;
  v10[1] = sub_2693FB3B0;

  return sub_2693CD3A4(0);
}

uint64_t sub_2693FB3B0()
{
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_5();
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;

  OUTLINED_FUNCTION_71();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_2693FB49C()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_log;
  sub_269423FC8();
  OUTLINED_FUNCTION_4_5();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translatePatternProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_deviceState));
  return v0;
}

uint64_t sub_2693FB534()
{
  sub_2693FB49C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void static SirikitApp.== infix(_:_:)()
{
  OUTLINED_FUNCTION_17_3();
  v3 = v2;
  OUTLINED_FUNCTION_96();
  v4 = sub_269423DA8();
  OUTLINED_FUNCTION_2();
  v61 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_5();
  v58 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FD38, qword_269427460) - 8;
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  v13 = OUTLINED_FUNCTION_91();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  v16 = OUTLINED_FUNCTION_12_2(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_20();
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  v59 = v0;
  sub_269423D08();
  v60 = v3;
  sub_269423D08();
  v24 = *(v9 + 56);
  sub_2693FD290(v23, v12, &qword_28030F610, &qword_269425760);
  sub_2693FD290(v1, &v12[v24], &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_109(v12);
  if (v31)
  {
    OUTLINED_FUNCTION_57_0();
    sub_2693FD518(v25, v26, v27);
    OUTLINED_FUNCTION_57_0();
    sub_2693FD518(v28, v29, v30);
    OUTLINED_FUNCTION_109(&v12[v24]);
    if (v31)
    {
      sub_2693FD518(v12, &qword_28030F610, &qword_269425760);
LABEL_12:
      sub_269423CF8();
      sub_269423CF8();
      v56 = OUTLINED_FUNCTION_29();
      sub_2693FB908(v56, v57);
      OUTLINED_FUNCTION_110();

      goto LABEL_13;
    }

LABEL_9:
    sub_2693FD518(v12, &qword_28030FD38, qword_269427460);
    goto LABEL_13;
  }

  sub_2693FD290(v12, v19, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_109(&v12[v24]);
  if (v31)
  {
    OUTLINED_FUNCTION_57_0();
    sub_2693FD518(v32, v33, v34);
    OUTLINED_FUNCTION_57_0();
    sub_2693FD518(v35, v36, v37);
    v38 = OUTLINED_FUNCTION_79();
    v39(v38);
    goto LABEL_9;
  }

  v40 = v61;
  v41 = v58;
  (*(v61 + 32))(v58, &v12[v24], v4);
  OUTLINED_FUNCTION_2_7();
  sub_2693FD1F4(v42, v43, MEMORY[0x277D55C58]);
  v44 = sub_2694240F8();
  v45 = *(v40 + 8);
  v45(v41, v4);
  OUTLINED_FUNCTION_48_0();
  sub_2693FD518(v46, v47, v48);
  OUTLINED_FUNCTION_48_0();
  sub_2693FD518(v49, v50, v51);
  v52 = OUTLINED_FUNCTION_79();
  (v45)(v52);
  OUTLINED_FUNCTION_48_0();
  sub_2693FD518(v53, v54, v55);
  if (v44)
  {
    goto LABEL_12;
  }

LABEL_13:
  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_2693FB908(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_269424588();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != result)
  {
    v16 = 0;
    return v16 & 1;
  }

  if (!v5)
  {
    goto LABEL_30;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_30:
    v16 = 1;
    return v16 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    sub_269423E78();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v5 = sub_269424588();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x26D63C060](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_21:
          MEMORY[0x26D63C060](v12 - 4, a2);
          goto LABEL_26;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

LABEL_26:
      static SirikitLocalizedAppName.== infix(_:_:)();
      v16 = v15;

      if (v16)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v16 & 1;
    }
  }

  __break(1u);
  return result;
}

void static SirikitLocalizedAppName.== infix(_:_:)()
{
  OUTLINED_FUNCTION_17_3();
  v2 = v1;
  v3 = sub_269423DA8();
  OUTLINED_FUNCTION_2();
  v78 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_5();
  v74 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FD38, qword_269427460);
  OUTLINED_FUNCTION_4_5();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_7();
  v77 = v10;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v11);
  v13 = &v71[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  v15 = OUTLINED_FUNCTION_12_2(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_7();
  v73 = v16;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v17);
  v75 = &v71[-v18];
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v19);
  v76 = &v71[-v20];
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_39_0();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v71[-v24];
  MEMORY[0x28223BE20](v23);
  v27 = &v71[-v26];
  v28 = sub_269423E08();
  v79 = v2;
  v29 = sub_269423E08();
  v30 = v29;
  if (v28)
  {
    if (!v29)
    {

      goto LABEL_28;
    }

    sub_269423CA8();
    v31 = sub_2694243E8();

    if ((v31 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v29)
  {

    goto LABEL_28;
  }

  sub_269423E18();
  sub_269423E18();
  v32 = *(v8 + 48);
  sub_2693FD290(v27, v13, &qword_28030F610, &qword_269425760);
  sub_2693FD290(v25, &v13[v32], &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_3_0(v13);
  if (!v35)
  {
    sub_2693FD290(v13, v0, &qword_28030F610, &qword_269425760);
    OUTLINED_FUNCTION_3_0(&v13[v32]);
    if (!v35)
    {
      v39 = v78;
      v40 = &v13[v32];
      v41 = v74;
      (*(v78 + 32))(v74, v40, v3);
      OUTLINED_FUNCTION_2_7();
      sub_2693FD1F4(v42, v43, MEMORY[0x277D55C58]);
      v72 = sub_2694240F8();
      v44 = *(v39 + 8);
      v44(v41, v3);
      sub_2693FD518(v25, &qword_28030F610, &qword_269425760);
      sub_2693FD518(v27, &qword_28030F610, &qword_269425760);
      v44(v0, v3);
      v45 = OUTLINED_FUNCTION_72();
      sub_2693FD518(v45, v46, &qword_269425760);
      if ((v72 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    sub_2693FD518(v25, &qword_28030F610, &qword_269425760);
    v36 = OUTLINED_FUNCTION_29();
    sub_2693FD518(v36, v37, &qword_269425760);
    (*(v78 + 8))(v0, v3);
LABEL_16:
    v38 = v13;
LABEL_27:
    sub_2693FD518(v38, &qword_28030FD38, qword_269427460);
    goto LABEL_28;
  }

  sub_2693FD518(v25, &qword_28030F610, &qword_269425760);
  v33 = OUTLINED_FUNCTION_29();
  sub_2693FD518(v33, v34, &qword_269425760);
  OUTLINED_FUNCTION_3_0(&v13[v32]);
  if (!v35)
  {
    goto LABEL_16;
  }

  sub_2693FD518(v13, &qword_28030F610, &qword_269425760);
LABEL_18:
  v47 = v76;
  sub_269423DF8();
  v48 = v75;
  sub_269423DF8();
  v49 = *(v8 + 48);
  v50 = v77;
  sub_2693FD290(v47, v77, &qword_28030F610, &qword_269425760);
  sub_2693FD290(v48, v50 + v49, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_3_0(v50);
  if (!v35)
  {
    v57 = v73;
    sub_2693FD290(v50, v73, &qword_28030F610, &qword_269425760);
    OUTLINED_FUNCTION_3_0(v50 + v49);
    if (!v58)
    {
      v65 = v48;
      v66 = v78;
      v67 = v74;
      (*(v78 + 32))(v74, v50 + v49, v3);
      OUTLINED_FUNCTION_2_7();
      sub_2693FD1F4(v68, v69, MEMORY[0x277D55C58]);
      sub_2694240F8();
      v70 = *(v66 + 8);
      v70(v67, v3);
      sub_2693FD518(v65, &qword_28030F610, &qword_269425760);
      sub_2693FD518(v47, &qword_28030F610, &qword_269425760);
      v70(v57, v3);
      sub_2693FD518(v50, &qword_28030F610, &qword_269425760);
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_48_0();
    sub_2693FD518(v59, v60, v61);
    OUTLINED_FUNCTION_48_0();
    sub_2693FD518(v62, v63, v64);
    (*(v78 + 8))(v57, v3);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_48_0();
  sub_2693FD518(v51, v52, v53);
  OUTLINED_FUNCTION_48_0();
  sub_2693FD518(v54, v55, v56);
  OUTLINED_FUNCTION_3_0(v50 + v49);
  if (!v35)
  {
LABEL_26:
    v38 = v50;
    goto LABEL_27;
  }

  sub_2693FD518(v50, &qword_28030F610, &qword_269425760);
LABEL_28:
  OUTLINED_FUNCTION_16_3();
}

uint64_t type metadata accessor for TemplatingResultProvider(uint64_t a1)
{
  result = qword_28030FD70;
  if (!qword_28030FD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2693FC1B8(uint64_t a1)
{
  result = sub_269423FC8();
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

id sub_2693FC264(void *a1)
{
  v17[7] = *MEMORY[0x277D85DE8];
  v17[2] = a1;
  v1 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v17[3] = 0xD00000000000002BLL;
  v17[4] = 0x80000002694296D0;
  MEMORY[0x26D63BD80](46, 0xE100000000000000);
  MEMORY[0x26D63BD80](0x61657053706F7453, 0xEF6E6F697463416BLL);
  v2 = sub_269424108();

  v3 = [v1 initWithIdentifier_];

  sub_269422BA8();
  swift_allocObject();
  v4 = v3;
  sub_269422B98();
  type metadata accessor for StopSpeakAction();
  sub_2693FD1F4(&qword_28030FD08, type metadata accessor for StopSpeakAction, &unk_269427310);
  v8 = sub_269422B88();
  v10 = v9;

  v11 = objc_opt_self();

  v12 = sub_269422C98();
  sub_2693D6C54(v8, v10);
  v17[0] = 0;
  v13 = [v11 JSONObjectWithData:v12 options:0 error:v17];

  v14 = v17[0];
  if (v13)
  {
    sub_269424458();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FD80, &qword_269427580);
    if (swift_dynamicCast())
    {
      v5 = v17[0];
      goto LABEL_3;
    }
  }

  else
  {
    v15 = v14;
    v16 = sub_269422C48();

    swift_willThrow();
  }

  v5 = sub_2694240B8();
LABEL_3:
  sub_2693FCC24(v5);

  v6 = sub_269424098();

  [v4 setUserData_];

  return v4;
}

id sub_2693FC57C(void *a1)
{
  v17[7] = *MEMORY[0x277D85DE8];
  v17[2] = a1;
  v1 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v17[3] = 0xD00000000000002BLL;
  v17[4] = 0x80000002694296D0;
  MEMORY[0x26D63BD80](46, 0xE100000000000000);
  MEMORY[0x26D63BD80](0x7463416B61657053, 0xEB000000006E6F69);
  v2 = sub_269424108();

  v3 = [v1 initWithIdentifier_];

  sub_269422BA8();
  swift_allocObject();
  v4 = v3;
  sub_269422B98();
  type metadata accessor for SpeakAction();
  sub_2693FD1F4(&qword_28030F578, type metadata accessor for SpeakAction, &unk_26942541C);
  v8 = sub_269422B88();
  v10 = v9;

  v11 = objc_opt_self();

  v12 = sub_269422C98();
  sub_2693D6C54(v8, v10);
  v17[0] = 0;
  v13 = [v11 JSONObjectWithData:v12 options:0 error:v17];

  v14 = v17[0];
  if (v13)
  {
    sub_269424458();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FD80, &qword_269427580);
    if (swift_dynamicCast())
    {
      v5 = v17[0];
      goto LABEL_3;
    }
  }

  else
  {
    v15 = v14;
    v16 = sub_269422C48();

    swift_willThrow();
  }

  v5 = sub_2694240B8();
LABEL_3:
  sub_2693FCC24(v5);

  v6 = sub_269424098();

  [v4 setUserData_];

  return v4;
}

id sub_2693FC890(void *a1)
{
  v17[7] = *MEMORY[0x277D85DE8];
  v17[2] = a1;
  v1 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v17[3] = 0xD00000000000002BLL;
  v17[4] = 0x80000002694296D0;
  MEMORY[0x26D63BD80](46, 0xE100000000000000);
  MEMORY[0x26D63BD80](0x74616C736E617254, 0xEF6E6F6974634165);
  v2 = sub_269424108();

  v3 = [v1 initWithIdentifier_];

  sub_269422BA8();
  swift_allocObject();
  v4 = v3;
  sub_269422B98();
  type metadata accessor for TranslateAction();
  sub_2693FD1F4(&qword_28030FD98, type metadata accessor for TranslateAction, &unk_2694282B0);
  v8 = sub_269422B88();
  v10 = v9;

  v11 = objc_opt_self();

  v12 = sub_269422C98();
  sub_2693D6C54(v8, v10);
  v17[0] = 0;
  v13 = [v11 JSONObjectWithData:v12 options:0 error:v17];

  v14 = v17[0];
  if (v13)
  {
    sub_269424458();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FD80, &qword_269427580);
    if (swift_dynamicCast())
    {
      v5 = v17[0];
      goto LABEL_3;
    }
  }

  else
  {
    v15 = v14;
    v16 = sub_269422C48();

    swift_willThrow();
  }

  v5 = sub_2694240B8();
LABEL_3:
  sub_2693FCC24(v5);

  v6 = sub_269424098();

  [v4 setUserData_];

  return v4;
}

id sub_2693FCBA8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = objc_opt_self();

  v6 = a2(v5);
  v7 = [v4 runSiriKitExecutorCommandWithContext:a1 payload:v6];

  return v7;
}

uint64_t sub_2693FCC24(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FD88, &qword_269427588);
    v2 = sub_269424598();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_2693DC120(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2693FD0E8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2693FD0E8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2693FD0E8(v31, v32);
    result = sub_269424498();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_2693FD0E8(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_2693FCEE8(uint64_t a1, uint64_t a2)
{
  sub_269424738();
  sub_269424188();
  v4 = sub_269424758();

  return sub_2693FCF60(a1, a2, v4);
}

unint64_t sub_2693FCF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_269424688() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2693FD020(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2693FD090(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_269424118();
    OUTLINED_FUNCTION_74();
  }

  return OUTLINED_FUNCTION_34_1();
}

_OWORD *sub_2693FD0E8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2693FD0F8(void *a1)
{
  v1 = [a1 appNameMap];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2694240A8();

  return v3;
}

unint64_t sub_2693FD1B0()
{
  result = qword_28030FD90;
  if (!qword_28030FD90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28030FD90);
  }

  return result;
}

uint64_t sub_2693FD1F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2693FD290(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_5();
  v5 = OUTLINED_FUNCTION_34_1();
  v6(v5);
  return a2;
}

uint64_t sub_2693FD2EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2693FD35C()
{
  result = qword_28030FDA0;
  if (!qword_28030FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FDA0);
  }

  return result;
}

uint64_t sub_2693FD3B0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_96();
  v4(v3);
  OUTLINED_FUNCTION_4_5();
  v5 = OUTLINED_FUNCTION_34_1();
  v6(v5);
  return a2;
}

uint64_t sub_2693FD408(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_96();
  v4(v3);
  OUTLINED_FUNCTION_4_5();
  v5 = OUTLINED_FUNCTION_34_1();
  v6(v5);
  return a2;
}

uint64_t sub_2693FD460(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_5();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2693FD4B8(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_20_5();
  (*v3)(a2);
  return a2;
}

uint64_t sub_2693FD518(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_5();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_31_1(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_35_1(uint64_t a1)
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_36_1(uint64_t a1)
{

  return sub_2693FCBA8(a1, sub_2693FC890);
}

uint64_t OUTLINED_FUNCTION_51_0()
{
}

uint64_t OUTLINED_FUNCTION_53_0()
{
}

uint64_t OUTLINED_FUNCTION_64(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_69()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_81(uint64_t a1)
{

  return sub_269422D98();
}

uint64_t OUTLINED_FUNCTION_82()
{

  return swift_task_alloc();
}

char *OUTLINED_FUNCTION_83()
{
  v2 = *(v0 + 16) + 1;

  return sub_26941F7F4(0, v2, 1);
}

BOOL OUTLINED_FUNCTION_84()
{

  return os_log_type_enabled(v1, v0);
}

void OUTLINED_FUNCTION_104()
{
  v3 = *(v1 + v0 + 32);

  TranslationLanguages.rawValue.getter(v3);
}

uint64_t OUTLINED_FUNCTION_105(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return MEMORY[0x28211F2F8](a1, a2, a3, a4, 0, 1, v4, v4);
}

void OUTLINED_FUNCTION_108()
{

  sub_2693F8B28();
}

uint64_t OUTLINED_FUNCTION_110()
{
}

uint64_t sub_2693FDB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a2;
  v90 = a3;
  sub_2694234E8();
  OUTLINED_FUNCTION_2();
  v80 = v5;
  v81 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_5();
  v79 = v7 - v6;
  sub_269423488();
  OUTLINED_FUNCTION_2();
  v83 = v9;
  v84 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_5();
  v82 = v11 - v10;
  v12 = sub_269423458();
  OUTLINED_FUNCTION_2();
  v88 = v13;
  v15 = MEMORY[0x28223BE20](v14);
  v91 = &v74[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v87 = &v74[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDF0, &unk_269427718);
  OUTLINED_FUNCTION_2();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v74[-v22];
  v24 = sub_269423418();
  OUTLINED_FUNCTION_2();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_5();
  v30 = v29 - v28;
  v31 = OBJC_IVAR____TtC22SiriTranslationIntents37TranslatePhraseNeedsValueFlowStrategy_log;
  v32 = *(v26 + 16);
  v89 = a1;
  v32(v30, a1, v24);
  v33 = *(v20 + 16);
  v34 = v86;
  v86 = v18;
  v33(v23, v34, v18);
  v85 = v31;
  v35 = sub_269423FA8();
  v36 = sub_269424368();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v92[0] = v78;
    *v37 = 136315394;
    OUTLINED_FUNCTION_8_5();
    sub_269400F78(v38, v39, MEMORY[0x277D5C120]);
    v76 = v35;
    v40 = sub_269424668();
    v75 = v36;
    v41 = v12;
    v43 = v42;
    (*(v26 + 8))(v30, v24);
    v44 = sub_2693DB6E0(v40, v43, v92);
    v12 = v41;

    *(v37 + 4) = v44;
    *(v37 + 12) = 2112;
    v45 = v86;
    v46 = sub_269423378();
    (*(v20 + 8))(v23, v45);
    *(v37 + 14) = v46;
    v47 = v76;
    v48 = v77;
    *v77 = v46;
    _os_log_impl(&dword_2693C9000, v47, v75, "Action for input: %s and intent: %@", v37, 0x16u);
    sub_2693EE27C(v48, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_6_0();
    __swift_destroy_boxed_opaque_existential_1(v78);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    (*(v20 + 8))(v23, v86);
    (*(v26 + 8))(v30, v24);
  }

  type metadata accessor for ConverterUtils();
  v49 = v87;
  sub_269423408();
  v50 = sub_2694112A0();
  v51 = v88;
  v52 = *(v88 + 8);
  v52(v49, v12);
  if (v50)
  {
    sub_269423408();
    v53 = sub_269411390(v49);
    v52(v49, v12);
    if (v53)
    {
      return sub_269423098();
    }
  }

  v55 = v91;
  sub_269423408();
  if ((*(v51 + 88))(v55, v12) != *MEMORY[0x277D5C160])
  {
    sub_269423408();
    sub_26940E444();
    v66 = v65;
    v52(v49, v12);
    if (v66)
    {
      v67 = [v66 isCancel];
      if (!v67)
      {
        sub_269400FC0();
        v67 = sub_2694243D8();
      }

      v68 = sub_269424348();

      if (v68 < 1)
      {

        v52(v91, v12);
        return sub_2694230A8();
      }

      sub_269423098();
    }

    else
    {
      v70 = sub_269423FA8();
      v71 = sub_269424368();
      if (os_log_type_enabled(v70, v71))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_9_2(&dword_2693C9000, v72, v73, "Ignore parse because nlConverter failed to get TranslateIntent");
        OUTLINED_FUNCTION_6_0();
      }

      sub_2694230B8();
    }

    return (v52)(v91, v12);
  }

  v56 = v91;
  (*(v51 + 96))(v91, v12);
  v58 = v82;
  v57 = v83;
  v59 = v84;
  (*(v83 + 32))(v82, v56, v84);
  v60 = v79;
  sub_269423478();
  v69 = sub_2694062B0(v60, 0);
  (*(v80 + 8))(v60, v81);
  if (v69)
  {
    (*(v57 + 8))(v58, v59);

    return sub_2694230A8();
  }

  v61 = sub_269423FA8();
  v62 = sub_269424368();
  if (os_log_type_enabled(v61, v62))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_2(&dword_2693C9000, v63, v64, "Ignore usoParse because nlxConverter failed to get TranslateIntent");
    OUTLINED_FUNCTION_6_0();
  }

  sub_2694230B8();
  return (*(v57 + 8))(v58, v59);
}

uint64_t sub_2693FE398()
{
  OUTLINED_FUNCTION_11_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_2694234E8();
  v1[6] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_82();
  v7 = sub_269423488();
  v1[9] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[10] = v8;
  v1[11] = OUTLINED_FUNCTION_82();
  v9 = sub_269423458();
  v1[12] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[13] = v10;
  v1[14] = OUTLINED_FUNCTION_69();
  v1[15] = swift_task_alloc();
  v11 = sub_269423418();
  v1[16] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[17] = v12;
  v1[18] = OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2693FE534()
{
  v72 = v0;
  (*(v0[17] + 16))(v0[18], v0[3], v0[16]);
  v2 = sub_269423FA8();
  v3 = sub_269424368();
  v4 = OUTLINED_FUNCTION_10_7(v3);
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  if (v4)
  {
    OUTLINED_FUNCTION_17_0();
    v69 = OUTLINED_FUNCTION_18_5();
    v71[0] = v69;
    *v1 = 136315138;
    OUTLINED_FUNCTION_8_5();
    sub_269400F78(v8, v9, MEMORY[0x277D5C120]);
    v10 = sub_269424668();
    v12 = v11;
    (*(v6 + 8))(v5, v7);
    v13 = sub_2693DB6E0(v10, v12, v71);

    *(v1 + 4) = v13;
    OUTLINED_FUNCTION_6_6(&dword_2693C9000, v14, v15, "parseValueResponse: %s");
    __swift_destroy_boxed_opaque_existential_1(v69);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v16 = v0[15];
  v17 = v0[12];
  v18 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDF0, &unk_269427718);
  v19 = sub_269423378();
  sub_269423408();
  v20 = (*(v18 + 88))(v16, v17);
  v21 = v0[15];
  if (v20 == *MEMORY[0x277D5C160])
  {
    v23 = v0[10];
    v22 = v0[11];
    v25 = v0[8];
    v24 = v0[9];
    (*(v0[13] + 96))(v0[15], v0[12]);
    (*(v23 + 32))(v22, v21, v24);
    sub_269423478();
    v32 = sub_2694062B0(v25, 0);
    v33 = v0[10];
    v21 = v0[11];
    v34 = v0[9];
    (*(v0[7] + 8))(v0[8], v0[6]);
    (*(v33 + 8))(v21, v34);
    if (!v32)
    {
      v70 = 0;
      goto LABEL_63;
    }

    v70 = v32;
  }

  else
  {
    v27 = v0[13];
    v26 = v0[14];
    v28 = v0[12];
    sub_269423408();
    sub_26940E444();
    v30 = v29;
    v31 = *(v27 + 8);
    v31(v26, v28);
    v70 = v30;
    v31(v21, v28);
    if (!v30)
    {
      goto LABEL_63;
    }
  }

  sub_269400E8C(&v70);
  if (!v35)
  {
LABEL_31:
    if (!v70)
    {
      goto LABEL_63;
    }

    sub_269400DFC(&v70);
    if (!v44)
    {
      goto LABEL_63;
    }

    if (v70 && (v45 = sub_269400DFC(&v70), v46))
    {
      if (!v45)
      {
        OUTLINED_FUNCTION_25_2();
        if (v38)
        {

          goto LABEL_63;
        }
      }

      OUTLINED_FUNCTION_5_8(v45);
      OUTLINED_FUNCTION_36_2();
      if (v21)
      {
        goto LABEL_63;
      }
    }

    else
    {
    }

    sub_26941C0F8(v19);
    if (v49)
    {

      v50 = sub_26941C0F8(v19);
      if (!v51)
      {
        goto LABEL_63;
      }

      if (v50 || (OUTLINED_FUNCTION_25_2(), !v38))
      {
        OUTLINED_FUNCTION_5_8(v50);
        OUTLINED_FUNCTION_36_2();
        if (v21)
        {
          goto LABEL_60;
        }

LABEL_63:
        v58 = sub_269423FA8();
        v59 = sub_269424378();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_2693C9000, v58, v59, "Unexpected state where both targetLanguage and phrase are missing but not provided by user.", v60, 2u);
          OUTLINED_FUNCTION_1_3();
        }

        v54 = 0;
        v55 = 0xE000000000000000;
        goto LABEL_66;
      }
    }

LABEL_60:
    if (v70 && (sub_269400DFC(&v70), v56))
    {
      v57 = sub_269424108();
    }

    else
    {
      v57 = 0;
    }

    [v19 setPhrase_];

    v67 = sub_26941C0F8(v19);
    if (v68)
    {
      v54 = v67;
    }

    else
    {
      v54 = 0;
    }

    v55 = 0xE000000000000000;
    if (v68)
    {
      v55 = v68;
    }

    goto LABEL_66;
  }

  if (v70 && (v36 = sub_269400E8C(&v70), v37))
  {
    if (!v36)
    {
      OUTLINED_FUNCTION_25_2();
      if (v38)
      {

        goto LABEL_31;
      }
    }

    OUTLINED_FUNCTION_5_8(v36);
    OUTLINED_FUNCTION_36_2();
    if (v21)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  sub_26941C104(v19);
  if (v39)
  {

    v40 = sub_26941C104(v19);
    if (v41)
    {
      if (!v40)
      {
        OUTLINED_FUNCTION_25_2();
        if (v38)
        {

          goto LABEL_39;
        }
      }

      OUTLINED_FUNCTION_5_8(v40);
      OUTLINED_FUNCTION_36_2();
      if (v21)
      {
        goto LABEL_39;
      }
    }

    v42 = sub_26941C104(v19);
    if (!v43)
    {
      v42 = 0;
      v43 = 0xE000000000000000;
    }

    if (sub_2693D8BA0(v42, v43) == 3)
    {
      goto LABEL_31;
    }
  }

LABEL_39:
  if (v70)
  {
    v47 = sub_269400E8C(&v70);
    if (!v48)
    {
      v47 = 0;
      v48 = 0xE000000000000000;
    }
  }

  else
  {
    v47 = 0;
    v48 = 0xE000000000000000;
  }

  sub_269400E28(v47, v48, v19);
  v52 = sub_26941C104(v19);
  if (v53)
  {
    v54 = v52;
  }

  else
  {
    v54 = 0;
  }

  if (v53)
  {
    v55 = v53;
  }

  else
  {
    v55 = 0xE000000000000000;
  }

LABEL_66:
  v61 = v0[2];
  v71[3] = MEMORY[0x277D837D0];
  v71[0] = v54;
  v71[1] = v55;
  type metadata accessor for TranslatePhraseIntent();
  sub_269423258();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FE00, qword_269427728);
  OUTLINED_FUNCTION_33_2(v61, v63, v64, v62);

  OUTLINED_FUNCTION_4_6();

  return v65();
}

uint64_t sub_2693FEC00()
{
  OUTLINED_FUNCTION_11_0();
  v1[31] = v2;
  v1[32] = v0;
  v1[30] = v3;
  v4 = sub_269423248();
  v1[33] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[34] = v5;
  v1[35] = OUTLINED_FUNCTION_82();
  v6 = sub_269423088();
  v1[36] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[37] = v7;
  v1[38] = OUTLINED_FUNCTION_82();
  v1[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC98, &qword_269427710);
  v1[40] = OUTLINED_FUNCTION_82();
  sub_269423078();
  v1[41] = OUTLINED_FUNCTION_82();
  v8 = sub_269423368();
  v1[42] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[43] = v9;
  v1[44] = OUTLINED_FUNCTION_69();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v10 = sub_2694233D8();
  v1[47] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[48] = v11;
  v1[49] = OUTLINED_FUNCTION_69();
  v1[50] = swift_task_alloc();
  type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  v1[51] = OUTLINED_FUNCTION_82();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDF0, &unk_269427718);
  v1[52] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v1[53] = v13;
  v1[54] = OUTLINED_FUNCTION_69();
  v1[55] = swift_task_alloc();
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2693FEE94()
{
  v2 = v1[55];
  v3 = v1[52];
  v4 = v1[53];
  v5 = v1[31];
  v1[56] = OBJC_IVAR____TtC22SiriTranslationIntents37TranslatePhraseNeedsValueFlowStrategy_log;
  v48 = *(v4 + 16);
  v48(v2, v5, v3);
  v6 = sub_269423FA8();
  v7 = sub_269424368();
  v8 = OUTLINED_FUNCTION_10_7(v7);
  v9 = &unk_269427000;
  v10 = v1[53];
  if (v8)
  {
    v11 = OUTLINED_FUNCTION_17_0();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = sub_269423378();
    v14 = *(v10 + 8);
    v15 = OUTLINED_FUNCTION_30_1();
    v14(v15);
    v16 = v14;
    *(v11 + 4) = v13;
    *v12 = v13;
    v9 = &unk_269427000;
    _os_log_impl(&dword_2693C9000, v6, v0, "makePromptForValue for %@", v11, 0xCu);
    sub_2693EE27C(v12, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    v17 = *(v10 + 8);
    v18 = OUTLINED_FUNCTION_30_1();
    v17(v18);
    v16 = v17;
  }

  v19 = sub_269423378();
  v20 = sub_26941C128(v19);
  if (!v21)
  {
    goto LABEL_10;
  }

  if (!v20)
  {
    OUTLINED_FUNCTION_25_2();
    if (v22)
    {

      goto LABEL_16;
    }
  }

  v23 = OUTLINED_FUNCTION_5_8(v20);

  if ((v23 & 1) == 0)
  {
LABEL_10:
    v24 = sub_269423378();
    v25 = sub_26941C128(v24);
    if (!v26)
    {
      v25 = 0;
      v26 = 0xE000000000000000;
    }

    if (sub_2693D8BA0(v25, v26) == 3)
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_56_0();
      v1[73] = v27;
      *v27 = v28;
      v27[1] = sub_269400140;
      OUTLINED_FUNCTION_31_2();

      return sub_2693FA8F4(v29);
    }
  }

LABEL_16:
  v32 = (v1[32] + OBJC_IVAR____TtC22SiriTranslationIntents37TranslatePhraseNeedsValueFlowStrategy_featureFlags);
  v33 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  v34 = OUTLINED_FUNCTION_91();
  if (v35(v34))
  {
    v48(v1[54], v1[31], v1[52]);
    v36 = sub_269423FA8();
    v37 = sub_269424368();
    if (OUTLINED_FUNCTION_10_7(v37))
    {
      v38 = OUTLINED_FUNCTION_17_0();
      v39 = swift_slowAlloc();
      *v38 = v9[183];
      v40 = sub_269423378();
      v41 = OUTLINED_FUNCTION_30_1();
      v16(v41);
      *(v38 + 4) = v40;
      *v39 = v40;
      _os_log_impl(&dword_2693C9000, v36, v33, "makePromptForValue for using RF 2.0 %@", v38, 0xCu);
      sub_2693EE27C(v39, &unk_280310170, &qword_269425DD0);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      v44 = OUTLINED_FUNCTION_30_1();
      v16(v44);
    }

    v1[57] = sub_269423378();
    sub_2694233C8();
    swift_task_alloc();
    OUTLINED_FUNCTION_56_0();
    v1[58] = v45;
    *v45 = v46;
    v45[1] = sub_2693FF350;
    OUTLINED_FUNCTION_31_2();

    return sub_2693F7D58();
  }

  else
  {
    v1[64] = sub_269423378();
    sub_2694233C8();
    v42 = swift_task_alloc();
    v1[65] = v42;
    *v42 = v1;
    v42[1] = sub_2693FFA88;
    OUTLINED_FUNCTION_31_2();

    return sub_2693F6BF4();
  }
}

uint64_t sub_2693FF350()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_15_6();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v7 = v6;
  *(v9 + 472) = v8;
  *(v9 + 480) = v0;

  v10 = OUTLINED_FUNCTION_91();
  v11(v10);

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2693FF4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_50_0();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_62();
  a20 = v22;
  v25 = v22[51];
  v26 = v22[40];
  v28 = v22[37];
  v27 = v22[38];
  v67 = v22[36];
  v22[10] = type metadata accessor for SiriTranslationModels(0);
  v22[11] = sub_269400F78(&qword_280310160, type metadata accessor for SiriTranslationModels, &protocol conformance descriptor for SiriTranslationModels);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22 + 7);
  sub_269400EB8(v25, boxed_opaque_existential_0);
  swift_storeEnumTagMultiPayload();
  sub_269423068();
  OUTLINED_FUNCTION_7_3();
  sub_2694232E8();
  sub_26941E944();
  v30 = sub_2694231F8();
  OUTLINED_FUNCTION_33_2(v26, v31, v32, v30);
  sub_269423348();
  sub_269423358();
  sub_269423328();
  sub_269423318();
  v34 = *(v28 + 104);
  v33 = v28 + 104;
  v34(v27, *MEMORY[0x277D5BC50], v67);
  sub_269423308();
  v35 = sub_269423FA8();
  v36 = sub_269424368();
  if (OUTLINED_FUNCTION_10_7(v36))
  {
    v37 = v22[46];
    v38 = v22[42];
    OUTLINED_FUNCTION_17_0();
    a11 = OUTLINED_FUNCTION_18_5();
    *v33 = 136315138;
    OUTLINED_FUNCTION_13(v37, (v22 + 27));
    OUTLINED_FUNCTION_9_6();
    sub_269400F78(v39, v40, MEMORY[0x277D5BFE0]);
    v41 = sub_269424668();
    sub_2693DB6E0(v41, v42, &a11);
    OUTLINED_FUNCTION_34_2();
    *(v33 + 4) = v38;
    OUTLINED_FUNCTION_6_6(&dword_2693C9000, v43, v44, "makePromptForValue manifest using RF 2.0: %s");
    OUTLINED_FUNCTION_15_7();
    OUTLINED_FUNCTION_1_3();
  }

  v45 = sub_269423FA8();
  v46 = sub_269424368();
  if (OUTLINED_FUNCTION_10_7(v46))
  {
    v47 = v22[40];
    OUTLINED_FUNCTION_17_0();
    a11 = OUTLINED_FUNCTION_18_5();
    *v33 = 136315138;
    swift_beginAccess();
    sub_269423338();
    swift_endAccess();
    v48 = sub_269424128();
    sub_2693DB6E0(v48, v49, &a11);
    OUTLINED_FUNCTION_34_2();
    *(v33 + 4) = v47;
    OUTLINED_FUNCTION_6_6(&dword_2693C9000, v50, v51, "makePromptForValue manifest.nlContextUpdate using RF 2.0: %s");
    OUTLINED_FUNCTION_15_7();
    OUTLINED_FUNCTION_1_3();
  }

  v52 = v22[59];
  v53 = v22[46];
  sub_269423218();
  swift_allocObject();
  v22[61] = sub_269423208();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDA8, &qword_2694275A0);
  v54 = swift_allocObject();
  v22[62] = v54;
  *(v54 + 16) = xmmword_269427450;
  *(v54 + 32) = v52;
  OUTLINED_FUNCTION_13(v53, (v22 + 21));
  v68 = *MEMORY[0x277D5BD38] + MEMORY[0x277D5BD38];
  v55 = v52;
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v22[63] = v56;
  *v56 = v57;
  v56[1] = sub_2693FF878;
  OUTLINED_FUNCTION_44_0();

  return v62(v58, v59, v60, v61, v62, v63, v64, v65, v67, v68, a11, a12, a13, a14);
}

uint64_t sub_2693FF878()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v1 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2693FF998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  v15 = *(v14 + 408);

  sub_269400F1C(v15);
  v16 = OUTLINED_FUNCTION_91();
  v17(v16);
  __swift_destroy_boxed_opaque_existential_1((v14 + 56));
  OUTLINED_FUNCTION_3_8();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_44_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2693FFA88()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_15_6();
  *v3 = v2;
  v5 = *(v4 + 512);
  v6 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v7 = v6;
  *(v9 + 528) = v8;
  *(v9 + 536) = v0;

  v10 = OUTLINED_FUNCTION_91();
  v11(v10);

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2693FFC08(uint64_t a1)
{
  v36 = v1;
  v2 = v1[56];
  v3 = v1[40];
  sub_269423068();
  OUTLINED_FUNCTION_7_3();
  sub_2694232E8();
  sub_26941E944();
  v4 = sub_2694231F8();
  OUTLINED_FUNCTION_33_2(v3, v5, v6, v4);
  sub_269423348();
  sub_269423358();
  sub_269423328();
  v7 = sub_269423FA8();
  v8 = sub_269424368();
  if (OUTLINED_FUNCTION_10_7(v8))
  {
    v9 = v1[45];
    v10 = v1[42];
    OUTLINED_FUNCTION_17_0();
    v35 = OUTLINED_FUNCTION_18_5();
    *v2 = 136315138;
    OUTLINED_FUNCTION_13(v9, (v1 + 18));
    OUTLINED_FUNCTION_9_6();
    sub_269400F78(v11, v12, MEMORY[0x277D5BFE0]);
    v13 = sub_269424668();
    sub_2693DB6E0(v13, v14, &v35);
    OUTLINED_FUNCTION_34_2();
    *(v2 + 4) = v10;
    OUTLINED_FUNCTION_6_6(&dword_2693C9000, v15, v16, "makePromptForValue manifest: %s");
    OUTLINED_FUNCTION_15_7();
    OUTLINED_FUNCTION_1_3();
  }

  v17 = sub_269423FA8();
  v18 = sub_269424368();
  if (OUTLINED_FUNCTION_10_7(v18))
  {
    v19 = v1[40];
    OUTLINED_FUNCTION_17_0();
    v35 = OUTLINED_FUNCTION_18_5();
    *v2 = 136315138;
    swift_beginAccess();
    sub_269423338();
    swift_endAccess();
    v20 = sub_269424128();
    sub_2693DB6E0(v20, v21, &v35);
    OUTLINED_FUNCTION_34_2();
    *(v2 + 4) = v19;
    OUTLINED_FUNCTION_6_6(&dword_2693C9000, v22, v23, "makePromptForValue manifest.nlContextUpdate: %s");
    OUTLINED_FUNCTION_15_7();
    OUTLINED_FUNCTION_1_3();
  }

  v25 = v1[44];
  v24 = v1[45];
  v26 = v1[42];
  v27 = v1[43];
  sub_269423218();
  swift_allocObject();
  v1[68] = sub_269423208();
  OUTLINED_FUNCTION_13(v24, (v1 + 12));
  (*(v27 + 16))(v25, v24, v26);
  v34 = (*MEMORY[0x277D5BD48] + MEMORY[0x277D5BD48]);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v1[69] = v28;
  *v28 = v29;
  v28[1] = sub_2693FFEDC;
  v30 = v1[66];
  v31 = v1[44];
  v32 = v1[30];

  return v34(v32, v30, v31);
}

uint64_t sub_2693FFEDC()
{
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_15_6();
  *v4 = v3;
  v6 = v5[44];
  v7 = v5[43];
  v8 = v5[42];
  v9 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v10 = v9;
  v3[70] = v0;

  v11 = *(v7 + 8);
  v3[71] = v11;
  v3[72] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v6, v8);

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26940006C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  v15 = *(v14 + 528);
  (*(v14 + 568))(*(v14 + 360), *(v14 + 336));

  OUTLINED_FUNCTION_3_8();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_44_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_269400140()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_15_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  *(v6 + 592) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26940023C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  v15 = *(v14 + 320);
  v16 = *(v14 + 240);
  sub_26941E6B0();
  v17 = sub_2694231F8();
  OUTLINED_FUNCTION_33_2(v15, v18, v19, v17);
  v20 = sub_2694234B8();
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0;
  *(v14 + 16) = 0u;
  v21 = MEMORY[0x277D5C1D8];
  v16[3] = v20;
  v16[4] = v21;
  __swift_allocate_boxed_opaque_existential_0(v16);
  sub_269423108();
  sub_2693EE27C(v14 + 16, &qword_280310190, qword_269427220);
  sub_2693EE27C(v15, &qword_28030FC98, &qword_269427710);
  v22 = OUTLINED_FUNCTION_91();
  v23(v22);
  OUTLINED_FUNCTION_3_8();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_44_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v14 + 16, a10, a11, a12, a13, a14);
}

uint64_t sub_2694003D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_0_11();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_44_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_269400490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_0_11();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_44_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26940054C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  v15 = *(v14 + 568);
  v16 = *(v14 + 360);
  v17 = *(v14 + 336);

  v15(v16, v17);
  OUTLINED_FUNCTION_0_11();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_44_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26940062C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_0_11();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_44_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

char *sub_2694006E8()
{

  v1 = OBJC_IVAR____TtC22SiriTranslationIntents37TranslatePhraseNeedsValueFlowStrategy_log;
  sub_269423FC8();
  OUTLINED_FUNCTION_8_3();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents37TranslatePhraseNeedsValueFlowStrategy_deviceState));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents37TranslatePhraseNeedsValueFlowStrategy_featureFlags));
  return v0;
}

uint64_t sub_26940077C()
{
  sub_2694006E8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for TranslatePhraseNeedsValueFlowStrategy(uint64_t a1)
{
  result = qword_28030FDD8;
  if (!qword_28030FDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269400828(uint64_t a1)
{
  result = sub_269423FC8();
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

uint64_t sub_2694008FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2693ED200;

  return sub_2693FE398();
}

uint64_t sub_2694009B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2693EC8CC;

  return sub_2693FEC00();
}

uint64_t sub_269400A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TranslatePhraseNeedsValueFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_2693ED200;

  return MEMORY[0x2821B9BF8](a1, a2, v9, a4);
}

uint64_t sub_269400B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TranslatePhraseNeedsValueFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_2693ED200;

  return MEMORY[0x2821B9C00](a1, a2, v9, a4);
}

uint64_t sub_269400BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for TranslatePhraseNeedsValueFlowStrategy(0);
  *v12 = v6;
  v12[1] = sub_2693ED200;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_269400CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for TranslatePhraseNeedsValueFlowStrategy(0);
  *v14 = v7;
  v14[1] = sub_2693ED200;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_269400DFC(id *a1)
{
  v1 = *a1;

  return sub_26941C134(v1);
}

void sub_269400E28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269424108();

  [a3 setTargetLanguage_];
}

uint64_t sub_269400E8C(id *a1)
{
  v1 = *a1;

  return sub_26941C128(v1);
}

uint64_t sub_269400EB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269400F1C(uint64_t a1)
{
  v2 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269400F78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_269400FC0()
{
  result = qword_28030FCD8;
  if (!qword_28030FCD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28030FCD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_11()
{
}

uint64_t OUTLINED_FUNCTION_3_8()
{
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1)
{

  return sub_269424688();
}

void OUTLINED_FUNCTION_6_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_10_7(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_15_7()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x26D63C8E0);
}

uint64_t OUTLINED_FUNCTION_18_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_33_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, a4);
}

uint64_t OUTLINED_FUNCTION_34_2()
{
}

uint64_t OUTLINED_FUNCTION_36_2()
{
}

uint64_t sub_2694011E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FE50, &qword_269427798);
  OUTLINED_FUNCTION_10_2(v0);
  OUTLINED_FUNCTION_0_12();
  result = OUTLINED_FUNCTION_2_8(23, v1);
  qword_28030FE10 = result;
  return result;
}

uint64_t sub_269401238()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FE48, &qword_269427790);
  OUTLINED_FUNCTION_10_2(v0);
  OUTLINED_FUNCTION_0_12();
  result = OUTLINED_FUNCTION_2_8(25, v1);
  qword_28030FE18 = result;
  return result;
}

uint64_t sub_26940128C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FE48, &qword_269427790);
  OUTLINED_FUNCTION_10_2(v0);
  OUTLINED_FUNCTION_0_12();
  result = OUTLINED_FUNCTION_2_8(25, v1);
  qword_28030FE20 = result;
  return result;
}

uint64_t sub_2694012E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FE48, &qword_269427790);
  OUTLINED_FUNCTION_10_2(v0);
  OUTLINED_FUNCTION_0_12();
  result = OUTLINED_FUNCTION_2_8(17, v1);
  qword_28030FE28 = result;
  return result;
}

uint64_t sub_269401334()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FE58, &unk_2694277A0);
  OUTLINED_FUNCTION_10_2(v0);
  OUTLINED_FUNCTION_0_12();
  result = OUTLINED_FUNCTION_2_8(26, v1);
  qword_28030FE30 = result;
  return result;
}

uint64_t sub_269401388()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FE48, &qword_269427790);
  OUTLINED_FUNCTION_10_2(v0);
  result = sub_269423618();
  qword_28030FE38 = result;
  return result;
}

uint64_t sub_2694013E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FF08, &unk_269427B30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_269427780;
  if (qword_28030F140 != -1)
  {
    swift_once();
  }

  v1 = qword_28030FE38;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FE48, &qword_269427790);
  *(v0 + 56) = v2;
  v3 = sub_2694024F8(&qword_28030FF10, &qword_28030FE48, &qword_269427790, MEMORY[0x277D5E430]);
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_28030F118;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_28030FE10;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FE50, &qword_269427798);
  *(v0 + 104) = sub_2694024F8(&qword_28030FF18, &qword_28030FE50, &qword_269427798, MEMORY[0x277D5E430]);
  *(v0 + 72) = v5;
  v6 = qword_28030F130;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_28030FE28;
  *(v0 + 136) = v2;
  *(v0 + 144) = v3;
  *(v0 + 112) = v7;
  v8 = qword_28030F128;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_28030FE20;
  *(v0 + 176) = v2;
  *(v0 + 184) = v3;
  *(v0 + 152) = v9;
  v10 = qword_28030F120;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_28030FE18;
  *(v0 + 216) = v2;
  *(v0 + 224) = v3;
  *(v0 + 192) = v11;
  v12 = qword_28030F138;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_28030FE30;
  *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FE58, &unk_2694277A0);
  *(v0 + 264) = sub_2694024F8(&qword_28030FF20, &qword_28030FE58, &unk_2694277A0, MEMORY[0x277D5E430]);
  *(v0 + 232) = v13;
  sub_269423608();
  swift_allocObject();

  result = sub_2694235F8();
  qword_28030FE40 = result;
  return result;
}

uint64_t sub_269401714(uint64_t a1, uint64_t a2)
{
  v2 = sub_2694245A8();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269401774(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x6552657361726870;
  }
}

uint64_t sub_2694017D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_269401714(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_269401804@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269401774(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26940188C()
{
  if (qword_28030F148 != -1)
  {
    swift_once();
  }
}

BOOL sub_2694018E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2694245A8();

  return v2 != 0;
}

BOOL sub_26940195C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2694018E8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TranslationNLIntent.TranslationConfirmation(unsigned int *a1, int a2)
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

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for TranslationNLIntent.TranslationConfirmation(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x269401AA4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TranslationNLIntent.TranslationPhraseReference(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x269401BA8);
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

uint64_t sub_269401BF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2694239E8();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_269401C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_2694239E8();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for TranslationNLIntent(uint64_t a1)
{
  result = qword_28030FE60;
  if (!qword_28030FE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269401CE8(uint64_t a1)
{
  result = sub_2694239E8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_269401D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4(a1, a2, a3);
  v11 = a5();
  v12 = a6();

  return MEMORY[0x2821C21F8](a1, a2, v10, v11, v12);
}

uint64_t sub_269401E24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2694239E8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_269401EA4(uint64_t a1)
{
  v2 = sub_2694022BC(&qword_28030FED0, &unk_26942784C);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_269401F0C(uint64_t a1)
{
  v2 = sub_2694022BC(&qword_28030FED0, &unk_26942784C);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_269401F64(uint64_t a1)
{
  v2 = sub_2694022BC(&qword_28030FED0, &unk_26942784C);

  return MEMORY[0x2821C0C70](a1, v2);
}

unint64_t sub_269402028()
{
  result = qword_28030FE80;
  if (!qword_28030FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FE80);
  }

  return result;
}

unint64_t sub_2694020C4()
{
  result = qword_28030FE98;
  if (!qword_28030FE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FE98);
  }

  return result;
}

unint64_t sub_26940211C()
{
  result = qword_28030FEA0;
  if (!qword_28030FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FEA0);
  }

  return result;
}

unint64_t sub_269402174()
{
  result = qword_28030FEA8;
  if (!qword_28030FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FEA8);
  }

  return result;
}

unint64_t sub_269402210()
{
  result = qword_28030FEC0;
  if (!qword_28030FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FEC0);
  }

  return result;
}

unint64_t sub_269402268()
{
  result = qword_28030FEC8;
  if (!qword_28030FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FEC8);
  }

  return result;
}

uint64_t sub_2694022BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TranslationNLIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269402300()
{
  result = qword_28030FED8;
  if (!qword_28030FED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FED8);
  }

  return result;
}

unint64_t sub_269402354()
{
  result = qword_28030FEE0;
  if (!qword_28030FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FEE0);
  }

  return result;
}

unint64_t sub_2694023A8()
{
  result = qword_28030FEE8;
  if (!qword_28030FEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FEE8);
  }

  return result;
}

unint64_t sub_2694023FC()
{
  result = qword_28030FEF0;
  if (!qword_28030FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FEF0);
  }

  return result;
}

unint64_t sub_269402450()
{
  result = qword_28030FEF8;
  if (!qword_28030FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FEF8);
  }

  return result;
}

unint64_t sub_2694024A4()
{
  result = qword_28030FF00;
  if (!qword_28030FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FF00);
  }

  return result;
}

uint64_t sub_2694024F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1, uint64_t a2)
{

  return sub_269423618();
}

uint64_t sub_269402564()
{
  sub_2693D033C(v0 + OBJC_IVAR____TtCC22SiriTranslationIntents19TranslationLanguage7Builder_language);
  sub_2693D033C(v0 + OBJC_IVAR____TtCC22SiriTranslationIntents19TranslationLanguage7Builder_translateAction);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t *sub_2694025F4(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = OBJC_IVAR____TtCC22SiriTranslationIntents19TranslationLanguage7Builder_language;
  swift_beginAccess();
  sub_2693D0278(a1 + v3, v1 + OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_language);
  v4 = OBJC_IVAR____TtCC22SiriTranslationIntents19TranslationLanguage7Builder_translateAction;
  swift_beginAccess();
  sub_2693D0278(a1 + v4, v1 + OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_translateAction);
  if (!sub_269402788())
  {
    v5 = sub_269423E88();
    sub_269424378();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F690, &qword_269425988);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2694256B0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FF70, &qword_269427C80);
    v7 = sub_269424128();
    v9 = v8;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_2693D02E8();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    sub_269423F98("Building an instance of %s without all required inputs", v11);
  }

  return v1;
}

BOOL sub_269402788()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_10();
  v4 = v2 - v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_2693D0278(v0 + OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_language, &v12 - v6);
  v8 = sub_269423DA8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v8);
  sub_2693D033C(v7);
  if (EnumTagSinglePayload == 1)
  {
    return 0;
  }

  sub_2693D0278(v0 + OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_translateAction, v4);
  v10 = __swift_getEnumTagSinglePayload(v4, 1, v8) != 1;
  sub_2693D033C(v4);
  return v10;
}

uint64_t sub_2694028A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_10();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000;
  if (v14 || (sub_269424688() & 1) != 0)
  {
    sub_2693D0278(v3 + OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_language, v13);
    v15 = sub_269423DA8();
    if (__swift_getEnumTagSinglePayload(v13, 1, v15) == 1)
    {
      v16 = v13;
LABEL_8:
      result = sub_2693D033C(v16);
LABEL_9:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v15;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(*(v15 - 8) + 32))(boxed_opaque_existential_0, v13, v15);
  }

  else
  {
    if (a1 != 0x74616C736E617274 || a2 != 0xEF6E6F6974634165)
    {
      result = sub_269424688();
      if ((result & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_2693D0278(v3 + OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_translateAction, v10);
    v20 = sub_269423DA8();
    if (__swift_getEnumTagSinglePayload(v10, 1, v20) == 1)
    {
      v16 = v10;
      goto LABEL_8;
    }

    *(a3 + 24) = v20;
    v21 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(*(v20 - 8) + 32))(v21, v10, v20);
  }
}

uint64_t sub_269402AC8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2694245A8();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269402B1C(char a1)
{
  if (a1)
  {
    return 0x74616C736E617274;
  }

  else
  {
    return 0x65676175676E616CLL;
  }
}

uint64_t sub_269402B84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_269402AC8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_269402BB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269402B1C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_269402BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269402AC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269402C1C(uint64_t a1)
{
  v2 = sub_2694034AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269402C58(uint64_t a1)
{
  v2 = sub_2694034AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_269402C94()
{
  sub_2693D033C(v0 + OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_language);
  sub_2693D033C(v0 + OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_translateAction);
  return v0;
}

uint64_t sub_269402CD4()
{
  sub_269402C94();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_269402D54(uint64_t a1)
{
  sub_2693CF8D8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_269402DF0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FF68, &unk_269427C70);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2694034AC();
  sub_269424788();
  v11 = OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_language;
  v17 = 0;
  sub_269423DA8();
  OUTLINED_FUNCTION_0_13();
  sub_269403464(v12, v13, MEMORY[0x277D55C50]);
  OUTLINED_FUNCTION_3_9(v3 + v11, &v17);
  if (!v2)
  {
    v16 = 1;
    OUTLINED_FUNCTION_3_9(v3 + OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_translateAction, &v16);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_269402F74(void *a1)
{
  v2 = swift_allocObject();
  sub_26940307C(a1);
  return v2;
}

void sub_269402FEC(uint64_t a1)
{
  sub_2693CF8D8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id *sub_26940307C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_10();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v21 = v20 - v9;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FF58, &qword_269427C68);
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2694034AC();
  sub_269424778();
  if (v2)
  {

    type metadata accessor for TranslationLanguage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20[1] = v11;
    v13 = sub_269423DA8();
    v24 = 0;
    OUTLINED_FUNCTION_0_13();
    sub_269403464(v14, v15, MEMORY[0x277D55C60]);
    v16 = v21;
    OUTLINED_FUNCTION_5_9(v13, &v24, v22);
    sub_2693D03F8(v16, v1 + OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_language);
    v23 = 1;
    OUTLINED_FUNCTION_5_9(v13, &v23, v22);
    v18 = OUTLINED_FUNCTION_1_7();
    v19(v18);
    sub_2693D03F8(v7, v1 + OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_translateAction);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_269403384@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_269402F74(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_269403464(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2694034AC()
{
  result = qword_28030FF60;
  if (!qword_28030FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FF60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TranslationLanguage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2694035CCLL);
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

unint64_t sub_269403608()
{
  result = qword_28030FF78;
  if (!qword_28030FF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FF78);
  }

  return result;
}

unint64_t sub_269403660()
{
  result = qword_28030FF80;
  if (!qword_28030FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FF80);
  }

  return result;
}

unint64_t sub_2694036B8()
{
  result = qword_28030FF88;
  if (!qword_28030FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FF88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_9(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FDAF0](a1, a2, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_5_9(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2694245D8();
}

uint64_t sub_269403784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v13 = OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_log;
  if (qword_28030F0D0 != -1)
  {
    swift_once();
  }

  v14 = sub_269423FC8();
  v15 = __swift_project_value_buffer(v14, qword_280314F30);
  (*(*(v14 - 8) + 16))(v6 + v13, v15, v14);
  *(v6 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_intent) = 0;
  *(v6 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_translatePhraseIntentHandler) = a2;
  *(v6 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_nlConverter) = a3;
  *(v6 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_translationApiClient) = a1;
  *(v6 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_nlContextProvider) = a4;
  *(v6 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_templatinResultProvider) = a5;
  sub_2693DC180(a6, v6 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_outputPublisher);
  return v6;
}

BOOL sub_2694038BC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_269423FA8();
  v4 = sub_269424368();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2693C9000, v3, v4, "On input.", v5, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  sub_26940FE58();
  v6 = OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_intent;
  v7 = *(v2 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_intent);
  *(v2 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_intent) = v8;

  return *(v2 + v6) != 0;
}

uint64_t sub_269403984()
{
  OUTLINED_FUNCTION_11_0();
  v1[7] = v2;
  v1[8] = v0;
  sub_269423078();
  v1[9] = OUTLINED_FUNCTION_82();
  v3 = sub_269423368();
  v1[10] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[11] = v4;
  v1[12] = OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_269403A50()
{
  OUTLINED_FUNCTION_23_2();
  v1 = sub_269423FA8();
  v2 = sub_269424368();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2693C9000, v1, v2, "Execute Async.", v3, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v4 = v0[8];

  v5 = *(v4 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_intent);
  v0[13] = v5;
  if (v5)
  {
    v6 = v0[8];
    sub_269423C48();
    v7 = v5;
    sub_269423C38();
    sub_269423C18();

    v8 = sub_269423F38();

    v9 = *(v6 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_translatePhraseIntentHandler);
    v10 = v7;

    sub_2693F19F0(v10, v9, v6, v10, v8);
    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = sub_269403C38;

    return sub_269404E98();
  }

  else
  {
    sub_269423148();

    OUTLINED_FUNCTION_1_8();

    return v13();
  }
}

uint64_t sub_269403C38()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_15_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_269403D34(uint64_t a1)
{
  v2 = v1[13];
  v3 = v1[8];
  sub_269423068();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_2694232E8();

  sub_269423218();
  swift_allocObject();
  v1[16] = sub_269423208();
  v5 = [objc_allocWithZone(MEMORY[0x277D052D0]) init];
  v1[17] = v5;
  v10 = (*MEMORY[0x277D5BD48] + MEMORY[0x277D5BD48]);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v1[18] = v6;
  *v6 = v7;
  v6[1] = sub_269403E80;
  v8 = v1[12];

  return v10(v1 + 2, v5, v8);
}

uint64_t sub_269403E80()
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_15_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (v0)
  {
  }

  else
  {
    v7 = *(v3 + 136);
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  }

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_269403FAC()
{
  OUTLINED_FUNCTION_23_2();
  v1 = *(v0 + 104);
  sub_269423148();

  v2 = OUTLINED_FUNCTION_13_5();
  v3(v2);

  OUTLINED_FUNCTION_1_8();

  return v4();
}

uint64_t sub_269404040()
{
  OUTLINED_FUNCTION_11_0();

  OUTLINED_FUNCTION_4_6();

  return v1();
}

uint64_t sub_2694040B0()
{
  OUTLINED_FUNCTION_23_2();

  v1 = OUTLINED_FUNCTION_13_5();
  v2(v1);

  OUTLINED_FUNCTION_4_6();

  return v3();
}

void sub_269404140(void *a1, uint64_t a2, void *a3, unsigned int a4)
{
  v83 = a3;
  v82 = sub_269422CE8();
  v7 = OUTLINED_FUNCTION_5_0(v82);
  v88 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_log;
  v12 = a1;
  v87 = a2;
  v84 = v11;
  v13 = sub_269423FA8();
  v14 = sub_269424368();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_17_0();
    v86 = OUTLINED_FUNCTION_16_0();
    v92[0] = v86;
    *v15 = 136315138;
    v16 = v12;
    v17 = [v16 description];
    v18 = sub_269424118();
    v19 = a4;
    v21 = v20;

    v22 = sub_2693DB6E0(v18, v21, v92);
    a4 = v19;

    *(v15 + 4) = v22;
    _os_log_impl(&dword_2693C9000, v13, v14, "Translated intent and got response: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v86);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v23 = sub_26941FFC0(v12);
  if (v23)
  {
    v24 = v23;
    v25 = sub_26941C9D4();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v27 = (v26 + 16);
    v28 = swift_allocObject();
    *(v28 + 16) = 1;
    v29 = (v28 + 16);
    v79 = sub_26941C9D4();
    if (v79)
    {
      v80 = v28;
      v81 = v26;
      v77 = *(v87 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_translationApiClient);
      v78 = v24 & 0xC000000000000001;
      swift_beginAccess();
      swift_beginAccess();
      v30 = 0;
      v72 = v24 + 32;
      v76 = a4;
      v31 = v88 + 1;
      *&v32 = 136315138;
      v73 = v32;
      v75 = v24;
      v74 = v25;
      while (1)
      {
        v33 = v78;
        sub_26942008C();
        v34 = v33 ? MEMORY[0x26D63C060](v30, v24) : *(v72 + 8 * v30);
        v35 = __OFADD__(v30, 1);
        v36 = v30 + 1;
        if (v35)
        {
          break;
        }

        *v29 = 1;
        v37 = v34;
        v38 = sub_269423FA8();
        v39 = sub_269424368();

        v40 = os_log_type_enabled(v38, v39);
        v88 = v37;
        v85 = v36;
        if (v40)
        {
          v41 = OUTLINED_FUNCTION_17_0();
          v42 = OUTLINED_FUNCTION_16_0();
          v91 = v42;
          *v41 = v73;
          v89 = sub_269405C48(v37);
          v90 = v43;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
          v44 = sub_269424128();
          v46 = sub_2693DB6E0(v44, v45, &v91);
          v37 = v88;

          *(v41 + 4) = v46;
          _os_log_impl(&dword_2693C9000, v38, v39, "Speaking item: %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v42);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();
        }

        v47 = sub_26941C104(v83);
        if (v48)
        {
          v49 = v47;
        }

        else
        {
          v49 = 0;
        }

        v86 = v49;
        if (v48)
        {
          v50 = v48;
        }

        else
        {
          v50 = 0xE000000000000000;
        }

        v51 = sub_269405C48(v37);
        if (v52)
        {
          v53 = v51;
        }

        else
        {
          v53 = 0;
        }

        if (v52)
        {
          v54 = v52;
        }

        else
        {
          v54 = 0xE000000000000000;
        }

        OUTLINED_FUNCTION_15_8();
        v55 = swift_allocObject();
        v56 = v81;
        v55[2] = v87;
        v55[3] = v56;
        v55[4] = v80;

        LOBYTE(v89) = 0;
        sub_2693D4578(v86, v50, v53, v54, v76, sub_269405F38, v55);

        v57 = *(v56 + 16);
        v35 = __OFADD__(v57, 1);
        v58 = v57 + 1;
        if (v35)
        {
          goto LABEL_40;
        }

        *v27 = v58;
        sub_269422CD8();
        sub_269422CC8();
        v60 = v59;
        isa = v31->isa;
        v62 = v82;
        (v31->isa)(v10, v82);
        v63 = v74;
        do
        {
          if (*v27 >= v63)
          {
            break;
          }

          if ((*v29 & 1) == 0)
          {
            break;
          }

          sub_269422CD8();
          sub_269422CC8();
          v65 = v64;
          isa(v10, v62);
        }

        while (v65 - v60 <= 5.0);

        v30 = v85;
        v24 = v75;
        if (v85 == v79)
        {

          OUTLINED_FUNCTION_11_5();
          return;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
    }

    else
    {

      OUTLINED_FUNCTION_11_5();
    }
  }

  else
  {
    v88 = sub_269423FA8();
    v66 = sub_269424368();
    if (os_log_type_enabled(v88, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_2693C9000, v88, v66, "Received no items to speak.", v67, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    OUTLINED_FUNCTION_11_5();
  }
}

void sub_2694047C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v8 = sub_269423FA8();
  v9 = sub_269424368();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22[0] = v11;
    *v10 = 136315138;
    v23[0] = a1;
    v23[1] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
    v12 = sub_269424128();
    v14 = sub_2693DB6E0(v12, v13, v22);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2693C9000, v8, v9, "Speaking item error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x26D63C8E0](v11, -1, -1);
    MEMORY[0x26D63C8E0](v10, -1, -1);
  }

  v15 = sub_269423FA8();
  v16 = sub_269424368();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23[0] = v18;
    *v17 = 136315138;
    swift_beginAccess();
    v19 = sub_269424668();
    v21 = sub_2693DB6E0(v19, v20, v23);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_2693C9000, v15, v16, "Incrementing index: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x26D63C8E0](v18, -1, -1);
    MEMORY[0x26D63C8E0](v17, -1, -1);
  }

  swift_beginAccess();
  *(a5 + 16) = 0;
}

uint64_t sub_269404A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC98, &qword_269427710);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_26941D9EC();
  v6 = sub_2694231F8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  return sub_269423348();
}

uint64_t sub_269404B10(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC50, &qword_2694271F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_269424338();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_2693EC23C(0, 0, v7, &unk_269427EB8, v9);
}

uint64_t sub_269404C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_269423158();
  v6[4] = v7;
  v6[5] = *(v7 - 8);
  v6[6] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[7] = v8;
  *v8 = v6;
  v8[1] = sub_269404D0C;

  return sub_269403984();
}

uint64_t sub_269404D0C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_15_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_269404E08()
{
  OUTLINED_FUNCTION_23_2();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_1_8();

  return v4();
}

uint64_t sub_269404E98()
{
  OUTLINED_FUNCTION_11_0();
  v1[18] = v2;
  v1[19] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC98, &qword_269427710);
  v1[20] = OUTLINED_FUNCTION_82();
  v3 = sub_2694234B8();
  v1[21] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[22] = v4;
  v1[23] = OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_269404F70()
{
  v1 = v0[18];
  v0[24] = OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_log;
  v2 = v1;
  v3 = sub_269423FA8();
  v4 = sub_269424368();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = OUTLINED_FUNCTION_17_0();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_2693C9000, v3, v4, "Generating empty dialog for nl context update for: %@", v6, 0xCu);
    sub_2693EE27C(v7, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v9 = v0[21];
  v10 = v0[19];

  v11 = [objc_allocWithZone(MEMORY[0x277D47290]) init];
  v0[25] = v11;
  sub_269405CAC(0, 0xE000000000000000, v11);
  v12 = [objc_allocWithZone(MEMORY[0x277D479E0]) init];
  v0[26] = v12;
  v13 = [objc_allocWithZone(MEMORY[0x277D47288]) init];
  v0[27] = v13;
  [v13 setContent_];
  [v13 setSpokenOnly_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDA8, &qword_2694275A0);
  OUTLINED_FUNCTION_15_8();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_269427450;
  *(v14 + 32) = v13;
  v15 = v13;
  sub_269405D10(v14, v12);
  v16 = OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_outputPublisher;
  v0[28] = OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_outputPublisher;
  v17 = *(v10 + v16 + 24);
  v18 = *(v10 + v16 + 32);
  __swift_project_boxed_opaque_existential_1((v10 + v16), v17);
  OUTLINED_FUNCTION_15_8();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_269427450;
  *(v19 + 32) = v12;
  v20 = MEMORY[0x277D5C1D8];
  v0[5] = v9;
  v0[6] = v20;
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  v21 = v12;
  sub_269423498();
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v0[29] = v22;
  *v22 = v23;
  v22[1] = sub_26940523C;

  return MEMORY[0x2821BB5D0](v0 + 2, v17, v18);
}

uint64_t sub_26940523C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_15_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  }

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_269405340()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = (*(v0 + 152) + *(v0 + 224));
  sub_26941D9EC();
  v7 = sub_2694231F8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  MEMORY[0x26D63ACC0](v1, v5, MEMORY[0x277D84F90], v0 + 56);
  sub_2693EE27C(v0 + 56, &qword_280310190, qword_269427220);
  sub_2693EE27C(v5, &qword_28030FC98, &qword_269427710);
  v8 = v6[3];
  v9 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v8);
  v10 = MEMORY[0x277D5C1D8];
  *(v0 + 120) = v4;
  *(v0 + 128) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 96));
  (*(v3 + 16))(boxed_opaque_existential_0, v2, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  *(v0 + 248) = v12;
  *v12 = v13;
  v12[1] = sub_2694054E4;

  return MEMORY[0x2821BB5D0](v0 + 96, v8, v9);
}

uint64_t sub_2694054E4()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_15_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 96));
  }

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2694055E8()
{
  OUTLINED_FUNCTION_17_5();

  v2 = OUTLINED_FUNCTION_13_5();
  v3(v2);

  OUTLINED_FUNCTION_1_8();

  return v4();
}

uint64_t sub_269405680()
{
  v17 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v3 = *(v0 + 240);
  v4 = v3;
  v5 = sub_269423FA8();
  v6 = sub_269424368();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_17_0();
    v8 = OUTLINED_FUNCTION_16_0();
    v16 = v8;
    OUTLINED_FUNCTION_19_4(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280310180, &unk_269425CC0);
    v9 = sub_269424128();
    v11 = sub_2693DB6E0(v9, v10, &v16);

    *(v7 + 4) = v11;
    OUTLINED_FUNCTION_18_6(&dword_2693C9000, v12, v13, "Encountered error trying to set nl context update: %s.");
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_8();

  return v14();
}

uint64_t sub_269405800()
{
  v19 = v1;
  OUTLINED_FUNCTION_17_5();

  v3 = OUTLINED_FUNCTION_13_5();
  v4(v3);
  __swift_destroy_boxed_opaque_existential_1((v1 + 96));
  v5 = *(v1 + 256);
  v6 = v5;
  v7 = sub_269423FA8();
  v8 = sub_269424368();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_17_0();
    v10 = OUTLINED_FUNCTION_16_0();
    v18 = v10;
    OUTLINED_FUNCTION_19_4(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280310180, &unk_269425CC0);
    v11 = sub_269424128();
    v13 = sub_2693DB6E0(v11, v12, &v18);

    *(v9 + 4) = v13;
    OUTLINED_FUNCTION_18_6(&dword_2693C9000, v14, v15, "Encountered error trying to set nl context update: %s.");
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_8();

  return v16();
}

uint64_t sub_26940598C()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_log;
  sub_269423FC8();
  OUTLINED_FUNCTION_8_3();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_outputPublisher));
  return v0;
}

uint64_t sub_269405A50()
{
  sub_26940598C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for RepeatFlow(uint64_t a1)
{
  result = qword_28030FF98;
  if (!qword_28030FF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269405AFC(uint64_t a1)
{
  result = sub_269423FC8();
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

uint64_t sub_269405C0C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RepeatFlow(0);

  return sub_269422FC8();
}

uint64_t sub_269405C48(void *a1)
{
  v1 = [a1 translatedText];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269424118();

  return v3;
}

void sub_269405CAC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269424108();

  [a3 setText_];
}

void sub_269405D10(uint64_t a1, void *a2)
{
  sub_269405D84();
  v3 = sub_269424278();

  [a2 setDialogs_];
}

unint64_t sub_269405D84()
{
  result = qword_28030FFA8;
  if (!qword_28030FFA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28030FFA8);
  }

  return result;
}

uint64_t sub_269405DC8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_269405E10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  *(v2 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_2693EC8CC;

  return sub_269404C10(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_269405EF4()
{

  OUTLINED_FUNCTION_15_8();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

void OUTLINED_FUNCTION_17_5()
{
  v2 = *(v0 + 208);
}

void OUTLINED_FUNCTION_18_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_19_4(float a1)
{
  *v3 = a1;
  *(v2 + 136) = v1;

  return v1;
}

uint64_t sub_269405FF4(uint64_t a1)
{
  sub_269423468();
  if (qword_28030F168 != -1)
  {
    swift_once();
  }

  v1 = qword_2803150A8;
  type metadata accessor for SiriEnvironmentUtil();
  v2 = swift_allocObject();
  v3 = type metadata accessor for SiriReferenceResolutionConverter(0);
  v19[3] = v3;
  v19[4] = &off_2879F5168;
  v19[0] = v1;
  type metadata accessor for NLXConverter(0);
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v19, v3);
  MEMORY[0x28223BE20](v5);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v17 = v3;
  v18 = &off_2879F5168;
  *&v16 = v9;
  v10 = OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_log;
  v11 = qword_28030F078;
  swift_retain_n();
  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_269423FC8();
  __swift_project_value_buffer(v12, qword_280314E28);
  OUTLINED_FUNCTION_20_5();
  (*(v13 + 16))(v4 + v10);
  sub_2693DBCC8(&v20, v4 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_deviceState);
  sub_2693DBCC8(&v16, v4 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_srrEntityProvider);
  *(v4 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_siriEnvironmentUtil) = v2;
  __swift_destroy_boxed_opaque_existential_1(v19);

  qword_280315070 = v4;
  return result;
}

uint8_t *sub_2694062B0(uint64_t a1, int a2)
{
  HIDWORD(v62) = a2;
  sub_269423588();
  OUTLINED_FUNCTION_2();
  v66 = v3;
  v67 = v2;
  MEMORY[0x28223BE20](v2);
  v65 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269423538();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_50();
  v64 = v13;
  sub_2694234C8();
  OUTLINED_FUNCTION_2();
  v70 = v15;
  v71 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10();
  v63 = v16 - v17;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_50();
  v69 = v19;
  result = sub_2694234D8();
  v21 = result;
  v22 = 0;
  v23 = *(result + 2);
  while (1)
  {
    if (v23 == v22)
    {

      v24 = sub_269423FA8();
      sub_269424378();
      v25 = OUTLINED_FUNCTION_0_14();
      if (os_log_type_enabled(v25, v26))
      {
        OUTLINED_FUNCTION_33_1();
        v27 = swift_slowAlloc();
        *v27 = 0;
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v28, v29, v30, v31, v27, 2u);
        OUTLINED_FUNCTION_12_5();
        MEMORY[0x26D63C8E0]();
      }

      sub_269423C78();
      OUTLINED_FUNCTION_1_9();
      v34 = sub_269409D3C(v32, v33, MEMORY[0x277D61E10]);
      OUTLINED_FUNCTION_42_0(v34);
      OUTLINED_FUNCTION_39_1();
      *v35 = v37;
      v35[1] = v36;
      OUTLINED_FUNCTION_20_5();
      (*(v38 + 104))();
      swift_willThrow();
      return v23;
    }

    if (v22 >= *(v21 + 16))
    {
      break;
    }

    (*(v7 + 16))(v11, v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v22, v5);
    if (sub_2694234F8())
    {

      v39 = v64;
      (*(v7 + 32))(v64, v11, v5);
      v40 = v65;
      sub_269423528();
      (*(v7 + 8))(v39, v5);
      v41 = v63;
      sub_269423578();
      (*(v66 + 8))(v40, v67);
      (*(v70 + 32))(v69, v41, v71);
      v42 = v68;
      v43 = sub_2694235C8();
      if (v42)
      {

        v44 = sub_269423FA8();
        sub_269424378();
        v45 = OUTLINED_FUNCTION_0_14();
        if (os_log_type_enabled(v45, v46))
        {
          OUTLINED_FUNCTION_33_1();
          v23 = swift_slowAlloc();
          *v23 = 0;
          OUTLINED_FUNCTION_14_2();
          _os_log_impl(v47, v48, v49, v50, v23, 2u);
          OUTLINED_FUNCTION_12_5();
          MEMORY[0x26D63C8E0]();
        }

        sub_269423C78();
        OUTLINED_FUNCTION_1_9();
        v53 = sub_269409D3C(v51, v52, MEMORY[0x277D61E10]);
        OUTLINED_FUNCTION_42_0(v53);
        OUTLINED_FUNCTION_39_1();
        *v55 = v54 + 21;
        v55[1] = v56;
        OUTLINED_FUNCTION_20_5();
        (*(v57 + 104))();
        swift_willThrow();
        v58 = OUTLINED_FUNCTION_28_1();
        v59(v58);
      }

      else
      {
        v23 = sub_269406820(v43, BYTE4(v62) & 1);
        v60 = OUTLINED_FUNCTION_28_1();
        v61(v60);
      }

      return v23;
    }

    ++v22;
    result = (*(v7 + 8))(v11, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_269406820(uint64_t a1, char a2)
{
  v3 = MEMORY[0x26D63B2C0](a1);
  if (sub_26941C9D4())
  {
    sub_26942008C();
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D63C060](0, v3);
    }

    else
    {
    }

    sub_269423798();
    if (v43)
    {
      v4 = sub_269423918();
      if (OUTLINED_FUNCTION_36_3(v4, v5, v6, v7, v8, v9, v10, v11, v40, v41, v42, v43, v44, v45))
      {

        v12 = sub_269406B1C(v45, a2 & 1);
LABEL_14:
        v21 = v12;

        return v21;
      }
    }

    else
    {
      sub_269409CE0(&v40, &qword_280310008, &qword_269427FA8);
    }

    sub_269423798();

    if (v43)
    {
      v26 = sub_2694238C8();
      if (OUTLINED_FUNCTION_36_3(v26, v27, v28, v29, v30, v31, v32, v33, v40, v41, v42, v43, v44, v45))
      {
        v12 = sub_2694083A0(v45, a2 & 1);
        goto LABEL_14;
      }
    }

    else
    {
      sub_269409CE0(&v40, &qword_280310008, &qword_269427FA8);
    }

    v34 = sub_269423FA8();
    v35 = sub_269424378();
    v36 = OUTLINED_FUNCTION_16_6();
    if (os_log_type_enabled(v36, v37))
    {
      OUTLINED_FUNCTION_33_1();
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2693C9000, v34, v35, "userStartUSOGraph is neither a translate nor noVerb task.", v38, 2u);
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    return 0;
  }

  else
  {

    v13 = sub_269423FA8();
    sub_269424378();
    v14 = OUTLINED_FUNCTION_0_14();
    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_33_1();
      v16 = swift_slowAlloc();
      *v16 = 0;
      OUTLINED_FUNCTION_14_2();
      _os_log_impl(v17, v18, v19, v20, v16, 2u);
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    v21 = sub_269423C78();
    OUTLINED_FUNCTION_1_9();
    sub_269409D3C(v22, v23, MEMORY[0x277D61E10]);
    swift_allocError();
    *v24 = 0xD00000000000003ALL;
    v24[1] = 0x800000026942A100;
    OUTLINED_FUNCTION_20_5();
    (*(v25 + 104))();
    swift_willThrow();
  }

  return v21;
}

void *sub_269406B1C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = 0x65736C6166;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FFF0, &unk_269428490);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_6_2();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v264 - v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_50();
  v283 = v15;
  v16 = v2 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_log;
  v17 = sub_269423FA8();
  sub_269424368();
  v18 = OUTLINED_FUNCTION_0_14();
  v20 = os_log_type_enabled(v18, v19);
  v276 = v16;
  LODWORD(v274) = a2;
  if (v20)
  {
    v21 = a2;
    v22 = OUTLINED_FUNCTION_17_0();
    v23 = OUTLINED_FUNCTION_16_0();
    v289 = v23;
    *v22 = 136315138;
    if (v21)
    {
      v24 = 1702195828;
    }

    else
    {
      v24 = 0x65736C6166;
    }

    if (v21)
    {
      v25 = 0xE400000000000000;
    }

    else
    {
      v25 = 0xE500000000000000;
    }

    v26 = sub_2693DB6E0(v24, v25, &v289);
    v16 = v276;

    *(v22 + 4) = v26;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v27, v28, v29, v30, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  OUTLINED_FUNCTION_33_3();
  v31 = v289;
  if (v289)
  {
    sub_2694237E8();
    OUTLINED_FUNCTION_21_4();
    v32 = sub_269423888();
    OUTLINED_FUNCTION_44_1();
    v293 = v32;
    v294 = v31;
    v278 = v31;
  }

  else
  {
    v32 = 0;
    v278 = 0;
    v293 = 0;
    v294 = 0;
  }

  OUTLINED_FUNCTION_33_3();
  if (v289)
  {
    sub_2694237E8();
    OUTLINED_FUNCTION_21_4();
    v33 = sub_269411B2C();

    v34 = v33 & 1;
  }

  else
  {
    v34 = 2;
  }

  v277 = v34;
  v35 = sub_269423FA8();
  v36 = sub_269424368();
  v37 = OUTLINED_FUNCTION_9_7();
  v39 = os_log_type_enabled(v37, v38);
  v275 = v2;
  v282 = v32;
  if (v39)
  {
    v40 = OUTLINED_FUNCTION_17_0();
    v41 = OUTLINED_FUNCTION_16_0();
    v289 = v41;
    *v40 = 136315138;
    LOBYTE(v285[0]) = v277;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FFF8, &qword_269427F98);
    v42 = sub_269424128();
    v44 = sub_2693DB6E0(v42, v43, &v289);
    v16 = v276;

    *(v40 + 4) = v44;
    v3 = v275;
    _os_log_impl(&dword_2693C9000, v35, v36, "Phrase has profanity: %s.", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  OUTLINED_FUNCTION_33_3();
  v45 = v289;
  if (v289)
  {
    sub_2694237F8();
    OUTLINED_FUNCTION_21_4();
    sub_2694238A8();
    OUTLINED_FUNCTION_23_4();
  }

  v46 = sub_269409580(v45);
  v48 = v47;

  if (v48)
  {
    v291 = v46;
    v292 = v48;
    v281 = v48;
  }

  else
  {
    OUTLINED_FUNCTION_33_3();
    if (v289 && (sub_2694237F8(), OUTLINED_FUNCTION_23_4(), v45))
    {
      sub_2694238A8();
      OUTLINED_FUNCTION_21_4();
      v46 = sub_2694237B8();
      OUTLINED_FUNCTION_44_1();
      v291 = v46;
      v292 = v45;
      v281 = v45;
    }

    else
    {
      v46 = 0;
      v281 = 0;
      v291 = 0;
      v292 = 0;
    }
  }

  v49 = a1;
  v280 = sub_269411EA4();
  sub_269423788();
  if (v289)
  {
    v49 = v289;
    sub_2694237E8();
    OUTLINED_FUNCTION_21_4();
    v50 = sub_2694238A8();
  }

  else
  {
    v50 = 0;
  }

  sub_269409580(v50);
  OUTLINED_FUNCTION_74();

  if (!v49)
  {
    OUTLINED_FUNCTION_33_3();
    if (v289 && (v49 = v289, sub_2694237E8(), OUTLINED_FUNCTION_21_4(), v51 = sub_2694238A8(), , v51))
    {
      v49 = v51;
      sub_2694237B8();
      OUTLINED_FUNCTION_74();
    }

    else
    {

      OUTLINED_FUNCTION_24_3();
    }
  }

  v52._countAndFlagsBits = OUTLINED_FUNCTION_34_1();
  TranslationLanguages.init(rawValue:)(v52);
  OUTLINED_FUNCTION_5_1();
  v279 = v46;
  if (v53)
  {
    OUTLINED_FUNCTION_33_3();
    if (v289)
    {
      v49 = v289;
      sub_2694237E8();
      OUTLINED_FUNCTION_21_4();
      v54 = sub_2694238A8();
    }

    else
    {
      v54 = 0;
    }

    sub_269409580(v54);
    OUTLINED_FUNCTION_74();

    if (!v49)
    {
      OUTLINED_FUNCTION_33_3();
      if (v289 && (sub_2694237E8(), OUTLINED_FUNCTION_21_4(), v58 = sub_2694238A8(), , v58))
      {
        sub_2694237B8();
        OUTLINED_FUNCTION_74();
      }

      else
      {

        OUTLINED_FUNCTION_24_3();
      }
    }

    v59 = OUTLINED_FUNCTION_34_1();
    v61 = sub_2693D8BA0(v59, v60);
    if (v61 == 3)
    {
      v62 = 0;
      v63 = 0;
      goto LABEL_47;
    }

    countAndFlagsBits = sub_2693D8390(v61);
  }

  else
  {
    v57 = TranslationLanguages.getLocaleString()();
    object = v57._object;
    countAndFlagsBits = v57._countAndFlagsBits;
  }

  v62 = countAndFlagsBits;
  v63 = object;
LABEL_47:
  v64 = *&v3[OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_srrEntityProvider + 24];
  v271 = &v3[OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_srrEntityProvider];
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_srrEntityProvider], v64);
  v65 = v283;
  sub_269413780(v283);
  sub_269409C70(v65, v14);
  v66 = sub_269424038();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v66);
  v266 = v66;
  if (EnumTagSinglePayload == 1)
  {
    sub_269409CE0(v14, &qword_28030FFF0, &unk_269428490);
  }

  else
  {
    sub_269424028();
    OUTLINED_FUNCTION_20_5();
    (*(v68 + 8))(v14, v66);
  }

  sub_269423808();
  OUTLINED_FUNCTION_43_1();

  v69 = v289;
  v70 = sub_2694099B4();
  v71 = sub_269423FA8();
  v72 = sub_269424368();
  v73 = OUTLINED_FUNCTION_16_6();
  v75 = os_log_type_enabled(v73, v74);
  v273 = v70;
  if (v75)
  {
    v76 = swift_slowAlloc();
    v265 = v62;
    v77 = v63;
    v78 = v69;
    v79 = v76;
    v285[0] = swift_slowAlloc();
    *v79 = 136315906;
    if (v70)
    {
      v80 = 1702195828;
    }

    else
    {
      v80 = 0x65736C6166;
    }

    if (v70)
    {
      v81 = 0xE400000000000000;
    }

    else
    {
      v81 = 0xE500000000000000;
    }

    v82 = sub_2693DB6E0(v80, v81, v285);

    *(v79 + 4) = v82;
    *(v79 + 12) = 2080;
    v289 = v279;
    v290 = v281;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
    v83 = sub_269424128();
    v85 = sub_2693DB6E0(v83, v84, v285);

    *(v79 + 14) = v85;
    *(v79 + 22) = 2080;
    v289 = v282;
    v290 = v278;

    v86 = sub_269424128();
    v88 = sub_2693DB6E0(v86, v87, v285);

    *(v79 + 24) = v88;
    *(v79 + 32) = 2080;
    v16 = v276;
    LOBYTE(v289) = v280;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310000, &qword_269427FA0);
    v89 = sub_269424128();
    v6 = v90;
    v91 = sub_2693DB6E0(v89, v90, v285);

    *(v79 + 34) = v91;
    v3 = v275;
    _os_log_impl(&dword_2693C9000, v71, v72, "Siri same session: %s, targetLanguage: %s, phrase: %s, reference: %s", v79, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    v69 = v78;
    v63 = v77;
    v62 = v265;
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  LODWORD(v92) = v277;
  if (v274)
  {
    v93 = v278;
    v94 = v281;
    if (v281)
    {
      if (v278)
      {
        goto LABEL_189;
      }

LABEL_111:
      OUTLINED_FUNCTION_4_8();
      if ((v155 & 1) == 0)
      {
        v93 = 0;
        goto LABEL_152;
      }

      v281 = v94;
      v156 = sub_269423FA8();
      sub_269424368();
      v157 = OUTLINED_FUNCTION_0_14();
      if (os_log_type_enabled(v157, v158))
      {
        OUTLINED_FUNCTION_33_1();
        v159 = swift_slowAlloc();
        OUTLINED_FUNCTION_20_0(v159);
        OUTLINED_FUNCTION_9_2(&dword_2693C9000, v160, v161, "SRR fallback, intentPhrase missing, reference present or following session..");
        OUTLINED_FUNCTION_12_5();
        MEMORY[0x26D63C8E0]();
      }

      OUTLINED_FUNCTION_30_2();
      v162 = v270;
      sub_269413780(v270);
      if (v69)
      {

        v163 = sub_269423FA8();
        sub_269424368();
        v164 = OUTLINED_FUNCTION_0_14();
        if (os_log_type_enabled(v164, v165))
        {
          OUTLINED_FUNCTION_33_1();
          v166 = swift_slowAlloc();
          OUTLINED_FUNCTION_20_0(v166);
          OUTLINED_FUNCTION_9_2(&dword_2693C9000, v167, v168, "Got SRR uso entity.");
          OUTLINED_FUNCTION_12_5();
          MEMORY[0x26D63C8E0]();
        }

        if (sub_2694237E8())
        {
          sub_269423888();
          OUTLINED_FUNCTION_40_0();
          v170 = v169;
        }

        else
        {
          v170 = 0;
          v93 = 0;
        }

        OUTLINED_FUNCTION_34_3(&v293, v285);
        v282 = v170;
        v293 = v170;
        v294 = v93;

        v174 = sub_2694237E8();
        if (v174)
        {
          v175 = v174;
          sub_269423898();
          OUTLINED_FUNCTION_21_4();
          v6 = sub_269423778();
          OUTLINED_FUNCTION_44_1();
          v94 = v281;
          if (v63)
          {

            goto LABEL_145;
          }

          v6 = static TranslationLanguages.getByLocale(locale:)(v6, v175);

          if (v6 == 23)
          {

            v62 = 0;
            v63 = 0;
LABEL_144:
            v94 = v281;
LABEL_145:
            v192 = v270;
            if (v94)
            {
              OUTLINED_FUNCTION_11_6();
              if (v193)
              {
                if (v93)
                {
                  v194 = sub_269423FA8();
                  sub_269424368();
                  v195 = OUTLINED_FUNCTION_9_7();
                  if (os_log_type_enabled(v195, v196))
                  {
                    v197 = OUTLINED_FUNCTION_17_0();
                    v276 = v197;
                    v278 = OUTLINED_FUNCTION_16_0();
                    v286 = v278;
                    *v197 = 136315138;
                    v289 = v282;
                    v290 = v93;

                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
                    v198 = sub_269424128();
                    v3 = v199;
                    v200 = sub_2693DB6E0(v198, v199, &v286);
                    OUTLINED_FUNCTION_7_4();

                    *(v276 + 1) = v200;
                    OUTLINED_FUNCTION_38_1();
                    _os_log_impl(v201, v202, v203, v204, v205, 0xCu);
                    OUTLINED_FUNCTION_5_10(&v299);
                    OUTLINED_FUNCTION_12_5();
                    MEMORY[0x26D63C8E0]();
                  }

                  v154 = &v297;
LABEL_187:
                  sub_269409CE0(*(v154 - 32), &qword_28030FFF0, &unk_269428490);
                  v95 = 1;
                  goto LABEL_63;
                }
              }
            }

            sub_269409CE0(v192, &qword_28030FFF0, &unk_269428490);
LABEL_152:
            if (!v94)
            {
LABEL_153:
              OUTLINED_FUNCTION_4_8();
              if ((v206 & 1) == 0)
              {
                v95 = 0;
                v94 = 0;
                goto LABEL_190;
              }

              v207 = sub_269423FA8();
              sub_269424368();
              v208 = OUTLINED_FUNCTION_0_14();
              if (os_log_type_enabled(v208, v209))
              {
                OUTLINED_FUNCTION_33_1();
                v210 = swift_slowAlloc();
                OUTLINED_FUNCTION_20_0(v210);
                OUTLINED_FUNCTION_9_2(&dword_2693C9000, v211, v212, "SRR fallback, target language is missing, reference present or following session.");
                OUTLINED_FUNCTION_12_5();
                MEMORY[0x26D63C8E0]();
              }

              OUTLINED_FUNCTION_30_2();
              sub_269413780(v269);
              if (!v69)
              {
                v94 = 0;
LABEL_188:
                sub_269409CE0(v269, &qword_28030FFF0, &unk_269428490);
                goto LABEL_189;
              }

              v213 = sub_269423FA8();
              sub_269424368();
              v214 = OUTLINED_FUNCTION_0_14();
              if (os_log_type_enabled(v214, v215))
              {
                OUTLINED_FUNCTION_33_1();
                v216 = swift_slowAlloc();
                OUTLINED_FUNCTION_20_0(v216);
                OUTLINED_FUNCTION_9_2(&dword_2693C9000, v217, v218, "Got SRR uso entity.");
                OUTLINED_FUNCTION_12_5();
                MEMORY[0x26D63C8E0]();
              }

              if (sub_2694237F8() && (sub_2694238A8(), OUTLINED_FUNCTION_37_2(), v6))
              {
                sub_2694237B8();
                OUTLINED_FUNCTION_74();
              }

              else
              {
                v219 = sub_2694237F8();
                if (v219)
                {
                  v6 = v219;
                  sub_269423888();
                  OUTLINED_FUNCTION_74();
                }

                else
                {
                  OUTLINED_FUNCTION_45_1();
                  OUTLINED_FUNCTION_24_3();
                }
              }

              v220._countAndFlagsBits = OUTLINED_FUNCTION_34_1();
              TranslationLanguages.init(rawValue:)(v220);
              OUTLINED_FUNCTION_5_1();
              v278 = v93;
              if (v53)
              {
                if (sub_2694237F8() && (sub_269423898(), OUTLINED_FUNCTION_37_2(), v6))
                {
                  sub_269423778();
                  OUTLINED_FUNCTION_74();
                }

                else
                {

                  OUTLINED_FUNCTION_24_3();
                }

                v222 = OUTLINED_FUNCTION_34_1();
                static TranslationLanguages.getByLocale(locale:)(v222, v223);
                OUTLINED_FUNCTION_18_7();
                if (v6 == 23)
                {
                  type metadata accessor for NLConverter(0);
                  v224 = sub_26940D5B8(&v3[OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_deviceState]);
                  if (v225)
                  {
                    v226 = v225;
                  }

                  else
                  {
                    v224 = 0;
                    v226 = 0xE000000000000000;
                  }

                  static TranslationLanguages.getByLocale(locale:)(v224, v226);
                  OUTLINED_FUNCTION_18_7();
                  v227 = 0;
                  v228 = 0;
LABEL_179:
                  v281 = v228;
                  OUTLINED_FUNCTION_34_3(&v291, &v289);
                  v291 = v227;
                  v292 = v228;

                  v231 = sub_269423FA8();
                  sub_269424368();
                  v232 = OUTLINED_FUNCTION_9_7();
                  v234 = os_log_type_enabled(v232, v233);
                  v279 = v227;
                  if (v234)
                  {
                    v235 = OUTLINED_FUNCTION_17_0();
                    v276 = OUTLINED_FUNCTION_16_0();
                    v288 = v276;
                    *v235 = 136315138;
                    v286 = v227;
                    v287 = v281;

                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
                    v236 = sub_269424128();
                    v3 = v237;
                    v238 = sub_2693DB6E0(v236, v237, &v288);
                    OUTLINED_FUNCTION_7_4();

                    *(v235 + 4) = v238;
                    OUTLINED_FUNCTION_38_1();
                    _os_log_impl(v239, v240, v241, v242, v235, 0xCu);
                    OUTLINED_FUNCTION_5_10(&v298);
                    OUTLINED_FUNCTION_12_5();
                    MEMORY[0x26D63C8E0]();
                  }

                  v93 = v278;
                  v94 = v281;
                  if (v281)
                  {
                    OUTLINED_FUNCTION_11_6();
                    if (v243)
                    {
                      if (v93)
                      {
                        v244 = sub_269423FA8();
                        sub_269424368();
                        v245 = OUTLINED_FUNCTION_9_7();
                        if (os_log_type_enabled(v245, v246))
                        {
                          v247 = OUTLINED_FUNCTION_17_0();
                          v274 = v247;
                          v276 = OUTLINED_FUNCTION_16_0();
                          v287 = v93;
                          v288 = v276;
                          *v247 = 136315138;
                          v286 = v282;

                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
                          v248 = sub_269424128();
                          v3 = v249;
                          v250 = sub_2693DB6E0(v248, v249, &v288);
                          OUTLINED_FUNCTION_7_4();

                          *(v274 + 4) = v250;
                          OUTLINED_FUNCTION_38_1();
                          _os_log_impl(v251, v252, v253, v254, v255, 0xCu);
                          OUTLINED_FUNCTION_5_10(&v298);
                          OUTLINED_FUNCTION_12_5();
                          MEMORY[0x26D63C8E0]();
                        }

                        v154 = &v296;
                        goto LABEL_187;
                      }
                    }
                  }

                  goto LABEL_188;
                }
              }

              else
              {
                LOBYTE(v213) = v221;
              }

              TranslationLanguages.rawValue.getter(v213);
              v227 = v229;
              v228 = v230;
              goto LABEL_179;
            }

LABEL_189:
            v95 = 0;
            goto LABEL_190;
          }

          v191 = TranslationLanguages.getLocaleString()();
          v62 = v191._countAndFlagsBits;
          v63 = v191._object;
        }
      }

      else
      {
        v171 = v162;
        v172 = v267;
        sub_269409C70(v171, v267);
        v173 = v266;
        if (__swift_getEnumTagSinglePayload(v172, 1, v266) == 1)
        {
          sub_269409CE0(v172, &qword_28030FFF0, &unk_269428490);
        }

        else
        {
          sub_269424028();
          OUTLINED_FUNCTION_20_5();
          (*(v176 + 8))(v172, v173);
        }

        v94 = v281;
        sub_2694238B8();
        OUTLINED_FUNCTION_43_1();

        v6 = v289;
        if (!v289)
        {
          v93 = 0;
          goto LABEL_145;
        }

        v177 = sub_269423FA8();
        sub_269424368();
        v178 = OUTLINED_FUNCTION_0_14();
        if (os_log_type_enabled(v178, v179))
        {
          OUTLINED_FUNCTION_33_1();
          v3 = swift_slowAlloc();
          *v3 = 0;
          OUTLINED_FUNCTION_14_2();
          _os_log_impl(v180, v181, v182, v183, v3, 2u);
          OUTLINED_FUNCTION_7_4();
          OUTLINED_FUNCTION_12_5();
          MEMORY[0x26D63C8E0]();
        }

        v184 = sub_269423888();
        v93 = v185;
        OUTLINED_FUNCTION_34_3(&v293, v285);
        v293 = v184;
        v294 = v93;

        v282 = v184;
        if (!v63)
        {
          if (!sub_269423898() || (v186 = sub_269423778(), v188 = v187, , !v188))
          {

            v186 = 0;
            v188 = 0xE000000000000000;
          }

          v189 = static TranslationLanguages.getByLocale(locale:)(v186, v188);

          if (v189 == 23)
          {

            v62 = 0;
            v63 = 0;
          }

          else
          {
            v190 = TranslationLanguages.getLocaleString()();
            v62 = v190._countAndFlagsBits;
            v63 = v190._object;
          }

          v3 = v275;
          goto LABEL_144;
        }
      }

      goto LABEL_144;
    }

    if (v278)
    {
      goto LABEL_153;
    }

    OUTLINED_FUNCTION_4_8();
    if ((v96 & 1) == 0)
    {
      v94 = 0;
      goto LABEL_111;
    }

    v97 = sub_269423FA8();
    sub_269424368();
    v98 = OUTLINED_FUNCTION_0_14();
    if (os_log_type_enabled(v98, v99))
    {
      OUTLINED_FUNCTION_33_1();
      v100 = swift_slowAlloc();
      OUTLINED_FUNCTION_20_0(v100);
      OUTLINED_FUNCTION_9_2(&dword_2693C9000, v101, v102, "SRR fallback when target language and phrase aren't known. Reference is present or following session..");
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    OUTLINED_FUNCTION_30_2();
    sub_269413780(v268);
    if (!v69)
    {
      v94 = 0;
LABEL_110:
      sub_269409CE0(v268, &qword_28030FFF0, &unk_269428490);
      goto LABEL_111;
    }

    v103 = sub_269423FA8();
    sub_269424368();
    v104 = OUTLINED_FUNCTION_0_14();
    if (os_log_type_enabled(v104, v105))
    {
      OUTLINED_FUNCTION_33_1();
      v106 = swift_slowAlloc();
      OUTLINED_FUNCTION_20_0(v106);
      OUTLINED_FUNCTION_9_2(&dword_2693C9000, v107, v108, "Got SRR entity.");
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    if (sub_2694237F8() && (sub_2694238A8(), OUTLINED_FUNCTION_37_2(), v6))
    {
      sub_2694237B8();
      OUTLINED_FUNCTION_74();
    }

    else
    {
      v109 = sub_2694237F8();
      if (v109)
      {
        v6 = v109;
        sub_269423888();
        OUTLINED_FUNCTION_74();
      }

      else
      {
        OUTLINED_FUNCTION_45_1();
        OUTLINED_FUNCTION_24_3();
      }
    }

    v110._countAndFlagsBits = OUTLINED_FUNCTION_34_1();
    TranslationLanguages.init(rawValue:)(v110);
    OUTLINED_FUNCTION_5_1();
    if (v53)
    {
      if (sub_2694237F8() && (sub_269423898(), OUTLINED_FUNCTION_37_2(), v6))
      {
        sub_269423778();
        OUTLINED_FUNCTION_74();
      }

      else
      {

        OUTLINED_FUNCTION_24_3();
      }

      v112 = OUTLINED_FUNCTION_34_1();
      static TranslationLanguages.getByLocale(locale:)(v112, v113);
      OUTLINED_FUNCTION_18_7();
      if (v6 == 23)
      {
        type metadata accessor for NLConverter(0);
        v114 = sub_26940D5B8(&v3[OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_deviceState]);
        if (v115)
        {
          v116 = v115;
        }

        else
        {
          v114 = 0;
          v116 = 0xE000000000000000;
        }

        LOBYTE(v103) = static TranslationLanguages.getByLocale(locale:)(v114, v116);

        v117 = 0;
        v118 = 0;
        if (v103 == 23)
        {
          goto LABEL_91;
        }
      }
    }

    else
    {
      LOBYTE(v103) = v111;
    }

    TranslationLanguages.rawValue.getter(v103);
    v117 = v119;
    v118 = v120;
LABEL_91:
    OUTLINED_FUNCTION_34_3(&v291, v284);
    v291 = v117;
    v292 = v118;

    v93 = v118;
    v121 = sub_269423FA8();
    sub_269424368();
    v122 = OUTLINED_FUNCTION_0_14();
    v124 = os_log_type_enabled(v122, v123);
    v279 = v117;
    v281 = v118;
    if (v124)
    {
      v125 = OUTLINED_FUNCTION_17_0();
      v126 = OUTLINED_FUNCTION_16_0();
      v265 = v62;
      v278 = v63;
      v127 = v126;
      v285[0] = v126;
      *v125 = 136315138;
      v128 = v125;
      v289 = v117;
      v290 = v118;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
      v129 = sub_269424128();
      v3 = v130;
      v92 = sub_2693DB6E0(v129, v130, v285);
      OUTLINED_FUNCTION_7_4();

      *(v128 + 1) = v92;
      LODWORD(v92) = v277;
      OUTLINED_FUNCTION_14_2();
      _os_log_impl(v131, v132, v133, v134, v135, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v127);
      v63 = v278;
      v62 = v265;
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    if (!sub_2694237E8() || (sub_269423898(), OUTLINED_FUNCTION_37_2(), !v117) || (v136 = sub_269423778(), v138 = v137, , !v138))
    {

      v136 = 0;
      v138 = 0xE000000000000000;
    }

    v6 = static TranslationLanguages.getByLocale(locale:)(v136, v138);

    if (v6 != 23)
    {
      v139 = TranslationLanguages.getLocaleString()();
      v62 = v139._countAndFlagsBits;

      v63 = v139._object;
    }

    v94 = v281;
    if (v281)
    {
      OUTLINED_FUNCTION_11_6();
      if (v140)
      {
        if (sub_2694237E8())
        {

          if (!sub_2694237E8() || (v141 = sub_269423888(), OUTLINED_FUNCTION_40_0(), , !v93))
          {

            v141 = 0;
            v93 = 0xE000000000000000;
          }

          OUTLINED_FUNCTION_34_3(&v293, &v289);
          v293 = v141;
          v294 = v93;

          v142 = sub_269423FA8();
          sub_269424368();
          v143 = OUTLINED_FUNCTION_0_14();
          v145 = os_log_type_enabled(v143, v144);
          v282 = v141;
          if (v145)
          {
            v92 = OUTLINED_FUNCTION_17_0();
            v278 = OUTLINED_FUNCTION_16_0();
            v286 = v278;
            *v92 = 136315138;
            v285[0] = v141;
            v285[1] = v93;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
            v146 = sub_269424128();
            v3 = v147;
            v148 = v93;
            v149 = sub_2693DB6E0(v146, v147, &v286);
            OUTLINED_FUNCTION_7_4();

            *(v92 + 4) = v149;
            v93 = v148;
            OUTLINED_FUNCTION_38_1();
            _os_log_impl(v150, v151, v152, v153, v92, 0xCu);
            OUTLINED_FUNCTION_5_10(&v299);
            OUTLINED_FUNCTION_12_5();
            MEMORY[0x26D63C8E0]();
          }

          v154 = &v295;
          goto LABEL_187;
        }

        v94 = v281;
      }
    }

    goto LABEL_110;
  }

  v95 = 0;
  v93 = v278;
LABEL_63:
  v94 = v281;
LABEL_190:
  if (v92 == 2 || (v92 & 1) == 0)
  {
    v256 = v94;
    v257 = MEMORY[0x277D84F90];
  }

  else
  {
    v256 = v94;
    v257 = &unk_2879F3F20;
  }

  type metadata accessor for NLConverter(0);
  v258 = &v3[OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_deviceState];

  LOBYTE(v263) = 1;
  sub_26940D8A8(v279, v256, v282, v93, v62, v63, v280, v95, v263, v257, v258, v16, v264, v265, v266, v267, v268, v269, v270, v271, v272, v274, v275, v276);
  v260 = v259;

  if (v63)
  {

    sub_269409CE0(v283, &qword_28030FFF0, &unk_269428490);
  }

  else
  {
    v261 = [v260 sourceLanguage];
    if (v261)
    {

      sub_269409CE0(v283, &qword_28030FFF0, &unk_269428490);
    }

    else
    {
      sub_269409CE0(v283, &qword_28030FFF0, &unk_269428490);
    }
  }

  return v260;
}

void *sub_2694083A0(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FFF0, &unk_269428490);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_10();
  v171 = v5 - v6;
  OUTLINED_FUNCTION_21_2();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v171 - v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_39();
  v176 = v11;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_39();
  v172 = v13;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_50();
  v173 = v15;
  v178 = v2;
  v16 = v2 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_log;
  v17 = sub_269423FA8();
  v18 = sub_269424368();
  v19 = OUTLINED_FUNCTION_16_6();
  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_33_1();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_35_2(&dword_2693C9000, v21, v18, "Converting to noVerb task.");
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v174 = v10;

  v23 = OUTLINED_FUNCTION_29_1(v22);
  if (v182)
  {
    sub_2694237E8();
    OUTLINED_FUNCTION_21_4();
    v24 = sub_269423888();
    OUTLINED_FUNCTION_40_0();

    v186 = v24;
    v187 = v18;
  }

  else
  {
    v24 = 0;
    v18 = 0;
    v186 = 0;
    v187 = 0;
  }

  OUTLINED_FUNCTION_29_1(v23);
  v25 = v182;
  v179 = v24;
  if (v182)
  {
    sub_2694237E8();
    OUTLINED_FUNCTION_21_4();
    v25 = sub_269411B2C();

    v26 = v25 & 1;
  }

  else
  {
    v26 = 2;
  }

  v27 = sub_269423FA8();
  v28 = sub_269424368();
  v29 = OUTLINED_FUNCTION_16_6();
  v31 = os_log_type_enabled(v29, v30);
  v181 = v16;
  if (v31)
  {
    v32 = OUTLINED_FUNCTION_17_0();
    v25 = OUTLINED_FUNCTION_16_0();
    v182 = v25;
    *v32 = 136315138;
    LOBYTE(v184[0]) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FFF8, &qword_269427F98);
    v33 = sub_269424128();
    v35 = sub_2693DB6E0(v33, v34, &v182);

    *(v32 + 4) = v35;
    _os_log_impl(&dword_2693C9000, v27, v28, "Phrase has profanity: %s.", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  OUTLINED_FUNCTION_29_1(v36);
  v37 = v182;
  if (v182)
  {
    sub_2694237F8();
    OUTLINED_FUNCTION_23_4();
    if (v25)
    {
      v37 = v25;
      sub_2694238A8();
      OUTLINED_FUNCTION_21_4();
    }

    else
    {
      v37 = 0;
    }
  }

  v38 = sub_269409580(v37);
  v40 = v39;

  if (v40)
  {
    v180 = v38;
  }

  else
  {
    v41 = OUTLINED_FUNCTION_29_1(v41);
    v37 = v182;
    if (v182 && (sub_2694237F8(), v41 = OUTLINED_FUNCTION_23_4(), v38))
    {
      v37 = v38;
      sub_2694238A8();
      OUTLINED_FUNCTION_21_4();
      v180 = sub_2694237B8();
      v40 = v42;
    }

    else
    {
      v180 = 0;
      v40 = 0;
    }
  }

  v43 = OUTLINED_FUNCTION_29_1(v41);
  if (v182)
  {
    v37 = v182;
    sub_2694237E8();
    OUTLINED_FUNCTION_21_4();
    sub_2694236D8();
    OUTLINED_FUNCTION_23_4();

    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  OUTLINED_FUNCTION_29_1(v43);
  v45 = v182;
  if (v182)
  {
    v37 = v182;
    sub_2694237E8();
    OUTLINED_FUNCTION_21_4();
    sub_2694238A8();
    OUTLINED_FUNCTION_23_4();
  }

  sub_269409580(v45);
  v46 = OUTLINED_FUNCTION_25_3();
  if (!v28)
  {
    OUTLINED_FUNCTION_29_1(v46);
    if (v182)
    {
      sub_2694237E8();
      OUTLINED_FUNCTION_21_4();
      sub_2694238A8();
      OUTLINED_FUNCTION_23_4();
      sub_2694237B8();
      OUTLINED_FUNCTION_25_3();
    }

    v37 = 0;
    v28 = 0xE000000000000000;
  }

  v47._countAndFlagsBits = v37;
  v47._object = v28;
  TranslationLanguages.init(rawValue:)(v47);
  OUTLINED_FUNCTION_5_1();
  if (v49)
  {
    OUTLINED_FUNCTION_29_1(v48);
    v50 = v182;
    if (v182)
    {
      v37 = v182;
      sub_2694237E8();
      OUTLINED_FUNCTION_21_4();
      sub_2694238A8();
      OUTLINED_FUNCTION_23_4();
    }

    sub_269409580(v50);
    OUTLINED_FUNCTION_25_3();
    v54 = sub_2693D8BA0(v37, v28);
    if (v54 == 3)
    {
      v177 = 0;
      v55 = 0;
      if (a2)
      {
        goto LABEL_39;
      }

LABEL_36:
      v56 = 0;
      v57 = v178;
      goto LABEL_51;
    }

    countAndFlagsBits = sub_2693D8390(v54);
  }

  else
  {
    v53 = TranslationLanguages.getLocaleString()();
    object = v53._object;
    countAndFlagsBits = v53._countAndFlagsBits;
  }

  v177 = countAndFlagsBits;
  v55 = object;
  if ((a2 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_39:
  HIDWORD(v175) = v26;
  if (v40)
  {
    if (v18)
    {
      v56 = 0;
LABEL_49:
      v57 = v178;
      goto LABEL_50;
    }

    v57 = v178;
    if (v44)
    {
      v56 = 0;
      v18 = 0;
LABEL_50:
      v26 = HIDWORD(v175);
      goto LABEL_51;
    }

    goto LABEL_115;
  }

  if (v18)
  {
    v56 = 0;
LABEL_48:
    v40 = 0;
    goto LABEL_49;
  }

  if (v44)
  {
    v56 = 0;
    v18 = 0;
    goto LABEL_48;
  }

  LODWORD(v66) = v181;
  v67 = sub_269423FA8();
  v68 = sub_269424368();
  v69 = OUTLINED_FUNCTION_16_6();
  if (os_log_type_enabled(v69, v70))
  {
    OUTLINED_FUNCTION_33_1();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_35_2(&dword_2693C9000, v71, v68, "SRR fallback when target language and phrase aren't known. Reference is present.");
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  __swift_project_boxed_opaque_existential_1((v178 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_srrEntityProvider), *(v178 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_srrEntityProvider + 24));
  v72 = v173;
  sub_269413780(v173);
  v73 = v72;
  v74 = v172;
  sub_269409C70(v73, v172);
  v75 = sub_269424038();
  if (__swift_getEnumTagSinglePayload(v74, 1, v75) == 1)
  {
    sub_269409CE0(v74, &qword_28030FFF0, &unk_269428490);
  }

  else
  {
    sub_269424028();
    OUTLINED_FUNCTION_20_5();
    (*(v76 + 8))(v74, v75);
  }

  sub_269423808();
  OUTLINED_FUNCTION_22_4();

  v40 = v182;
  v57 = v178;
  if (v182)
  {
    v77 = sub_269423FA8();
    v78 = sub_269424368();
    v79 = OUTLINED_FUNCTION_16_6();
    if (os_log_type_enabled(v79, v80))
    {
      OUTLINED_FUNCTION_33_1();
      v74 = swift_slowAlloc();
      *v74 = 0;
      OUTLINED_FUNCTION_35_2(&dword_2693C9000, v81, v78, "Got SRR entity.");
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    if (!sub_2694237F8() || (sub_2694238A8(), OUTLINED_FUNCTION_23_4(), !v74) || (v82 = sub_2694237B8(), v84 = v83, , !v84))
    {
      v85 = sub_2694237F8();
      if (v85 && (v74 = v85, v82 = sub_269423888(), v84 = v86, , v84))
      {
      }

      else
      {
        OUTLINED_FUNCTION_45_1();
        v82 = 0;
        v84 = 0xE000000000000000;
      }
    }

    v87._countAndFlagsBits = v82;
    v87._object = v84;
    TranslationLanguages.init(rawValue:)(v87);
    OUTLINED_FUNCTION_5_1();
    v172 = v40;
    if (v49)
    {
      if (!sub_2694237F8() || (sub_269423898(), OUTLINED_FUNCTION_23_4(), !v74) || (v89 = sub_269423778(), v91 = v90, , !v91))
      {

        v89 = 0;
        v91 = 0xE000000000000000;
      }

      static TranslationLanguages.getByLocale(locale:)(v89, v91);
      OUTLINED_FUNCTION_18_7();
      if (v66 == 23)
      {
        type metadata accessor for NLConverter(0);
        v92 = sub_26940D5B8((v57 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_deviceState));
        if (v93)
        {
          v94 = v93;
        }

        else
        {
          v92 = 0;
          v94 = 0xE000000000000000;
        }

        static TranslationLanguages.getByLocale(locale:)(v92, v94);
        OUTLINED_FUNCTION_18_7();

        v96 = 0;
        v40 = 0;
      }

      else
      {
        TranslationLanguages.rawValue.getter(v74);
        v96 = v98;
        v40 = v99;
      }

      LODWORD(v66) = v181;
    }

    else
    {
      TranslationLanguages.rawValue.getter(v88);
      v96 = v95;
      v40 = v97;
    }

    v100 = sub_269423FA8();
    v101 = sub_269424368();
    v102 = OUTLINED_FUNCTION_16_6();
    v104 = os_log_type_enabled(v102, v103);
    v180 = v96;
    if (v104)
    {
      v105 = OUTLINED_FUNCTION_17_0();
      v106 = OUTLINED_FUNCTION_16_0();
      v184[0] = v106;
      *v105 = 136315138;
      v182 = v96;
      v183 = v40;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
      v107 = sub_269424128();
      v96 = v108;
      v66 = sub_2693DB6E0(v107, v108, v184);

      *(v105 + 4) = v66;
      _os_log_impl(&dword_2693C9000, v100, v101, "Target Language: %s.", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v106);
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
      v57 = v178;
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    if (!sub_2694237E8() || (sub_269423898(), OUTLINED_FUNCTION_23_4(), !v96) || (v109 = sub_269423778(), v111 = v110, , !v111))
    {

      v109 = 0;
      v111 = 0xE000000000000000;
    }

    static TranslationLanguages.getByLocale(locale:)(v109, v111);
    OUTLINED_FUNCTION_18_7();
    if (v66 != 23)
    {
      v112 = TranslationLanguages.getLocaleString()();
      v177 = v112._countAndFlagsBits;

      v55 = v112._object;
    }

    if (v40)
    {
      v113 = HIBYTE(v40) & 0xF;
      if ((v40 & 0x2000000000000000) == 0)
      {
        v113 = v180 & 0xFFFFFFFFFFFFLL;
      }

      if (!v113)
      {
        sub_269409CE0(v173, &qword_28030FFF0, &unk_269428490);

        goto LABEL_115;
      }

      if (sub_2694237E8())
      {

        if (sub_2694237E8())
        {
          sub_269423888();
          OUTLINED_FUNCTION_40_0();
        }

        OUTLINED_FUNCTION_45_1();
        v18 = 0xE000000000000000;
        v186 = 0;
        v187 = 0xE000000000000000;
        v114 = sub_269423FA8();
        v115 = sub_269424368();
        v116 = OUTLINED_FUNCTION_16_6();
        v118 = os_log_type_enabled(v116, v117);
        v179 = 0;
        if (v118)
        {
          v119 = OUTLINED_FUNCTION_17_0();
          v120 = OUTLINED_FUNCTION_16_0();
          v184[0] = v120;
          *v119 = 136315138;
          v182 = 0;
          v183 = 0xE000000000000000;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
          v121 = sub_269424128();
          v123 = sub_2693DB6E0(v121, v122, v184);

          *(v119 + 4) = v123;
          _os_log_impl(&dword_2693C9000, v114, v115, "Setting translateToSourceLanguage to TRUE and intentPhrase is %s.", v119, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v120);
          OUTLINED_FUNCTION_12_5();
          MEMORY[0x26D63C8E0]();
          v57 = v178;
          OUTLINED_FUNCTION_12_5();
          MEMORY[0x26D63C8E0]();
        }

        sub_269409CE0(v173, &qword_28030FFF0, &unk_269428490);
        v56 = 1;
        goto LABEL_50;
      }
    }
  }

  sub_269409CE0(v173, &qword_28030FFF0, &unk_269428490);
LABEL_115:
  v124 = sub_269423FA8();
  sub_269424368();
  v125 = OUTLINED_FUNCTION_0_14();
  if (os_log_type_enabled(v125, v126))
  {
    OUTLINED_FUNCTION_33_1();
    v127 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_0(v127);
    OUTLINED_FUNCTION_9_2(&dword_2693C9000, v128, v129, "SRR fallback, intentPhrase missing, reference present.");
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  __swift_project_boxed_opaque_existential_1((v57 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_srrEntityProvider), *(v57 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_srrEntityProvider + 24));
  v130 = v176;
  sub_269413780(v176);
  v131 = v174;
  sub_269409C70(v130, v174);
  v132 = sub_269424038();
  if (__swift_getEnumTagSinglePayload(v131, 1, v132) == 1)
  {
    sub_269409CE0(v131, &qword_28030FFF0, &unk_269428490);
  }

  else
  {
    sub_269424028();
    OUTLINED_FUNCTION_20_5();
    (*(v133 + 8))(v131, v132);
  }

  v26 = HIDWORD(v175);
  sub_269423808();
  OUTLINED_FUNCTION_22_4();

  if (v182)
  {
    v134 = sub_269423FA8();
    sub_269424368();
    v135 = OUTLINED_FUNCTION_0_14();
    if (os_log_type_enabled(v135, v136))
    {
      OUTLINED_FUNCTION_33_1();
      v137 = swift_slowAlloc();
      OUTLINED_FUNCTION_20_0(v137);
      OUTLINED_FUNCTION_9_2(&dword_2693C9000, v138, v139, "Got SRR uso entity.");
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    if (sub_2694237E8())
    {
      v140 = sub_269423888();
      OUTLINED_FUNCTION_44_1();
    }

    else
    {
      v140 = 0;
      v134 = 0;
    }

    OUTLINED_FUNCTION_34_3(&v186, &v182);
    v179 = v140;
    v186 = v140;
    v187 = v134;

    if (!sub_2694237E8() || (v142 = sub_269423898(), , !v142) || (v143 = sub_269423778(), v145 = v144, , !v145))
    {

LABEL_149:
      v26 = HIDWORD(v175);
      goto LABEL_150;
    }

    v26 = HIDWORD(v175);
    if (v55)
    {

      goto LABEL_139;
    }

    v157 = v143;
LABEL_146:
    v158 = static TranslationLanguages.getByLocale(locale:)(v157, v145);

    if (v158 == 23)
    {

      v177 = 0;
      v55 = 0;
    }

    else
    {
      v159 = TranslationLanguages.getLocaleString()();
      v177 = v159._countAndFlagsBits;
      v55 = v159._object;
    }

    goto LABEL_149;
  }

  v141 = v171;
  sub_269409C70(v176, v171);
  if (__swift_getEnumTagSinglePayload(v141, 1, v132) == 1)
  {
    sub_269409CE0(v141, &qword_28030FFF0, &unk_269428490);
  }

  else
  {
    sub_269424028();
    OUTLINED_FUNCTION_20_5();
    (*(v146 + 8))(v141, v132);
  }

  sub_2694238B8();
  OUTLINED_FUNCTION_22_4();

  if (!v182)
  {
    v134 = 0;
    goto LABEL_150;
  }

  v147 = sub_269423FA8();
  sub_269424368();
  v148 = OUTLINED_FUNCTION_0_14();
  if (os_log_type_enabled(v148, v149))
  {
    OUTLINED_FUNCTION_33_1();
    v150 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_0(v150);
    OUTLINED_FUNCTION_9_2(&dword_2693C9000, v151, v152, "Got SRR localized USO entity.");
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v153 = sub_269423888();
  v134 = v154;
  OUTLINED_FUNCTION_34_3(&v186, &v182);
  v179 = v153;
  v186 = v153;
  v187 = v134;

  if (!v55)
  {
    if (!sub_269423898() || (v155 = sub_269423778(), v145 = v156, , !v145))
    {

      v155 = 0;
      v145 = 0xE000000000000000;
    }

    v157 = v155;
    goto LABEL_146;
  }

LABEL_139:

  if (!v40)
  {
    goto LABEL_158;
  }

LABEL_150:
  v160 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v160 = v180 & 0xFFFFFFFFFFFFLL;
  }

  if (v160)
  {
    if (v134)
    {
      v161 = sub_269423FA8();
      v162 = sub_269424368();
      v163 = OUTLINED_FUNCTION_16_6();
      if (os_log_type_enabled(v163, v164))
      {
        v165 = OUTLINED_FUNCTION_17_0();
        v166 = OUTLINED_FUNCTION_16_0();
        v184[1] = v134;
        v185 = v166;
        *v165 = 136315138;
        v184[0] = v179;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
        v167 = sub_269424128();
        v169 = sub_2693DB6E0(v167, v168, &v185);

        *(v165 + 4) = v169;
        v57 = v178;
        _os_log_impl(&dword_2693C9000, v161, v162, "Setting translateToSourceLanguage to TRUE based on localized uso entity and intentPhrase is %s.", v165, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v166);
        OUTLINED_FUNCTION_12_5();
        MEMORY[0x26D63C8E0]();
        OUTLINED_FUNCTION_12_5();
        MEMORY[0x26D63C8E0]();
      }

      sub_269409CE0(v176, &qword_28030FFF0, &unk_269428490);
      v56 = 1;
      v18 = v134;
      goto LABEL_50;
    }

    sub_269409CE0(v176, &qword_28030FFF0, &unk_269428490);
    v56 = 0;
    v18 = 0;
  }

  else
  {
LABEL_158:
    sub_269409CE0(v176, &qword_28030FFF0, &unk_269428490);
    v56 = 0;
    v18 = v134;
  }

LABEL_51:

  sub_2694235E8();
  if (v184[0])
  {
    sub_2694237E8();
    OUTLINED_FUNCTION_21_4();
    sub_2694236D8();
    OUTLINED_FUNCTION_23_4();

    v58 = 0;
  }

  else
  {
    v58 = 2;
  }

  v59 = v181;
  if (v26 == 2 || (v26 & 1) == 0)
  {
    v60 = MEMORY[0x277D84F90];
  }

  else
  {
    v60 = &unk_2879F3F50;
  }

  type metadata accessor for NLConverter(0);
  LOBYTE(v170) = 1;
  sub_26940D8A8(v180, v40, v179, v18, v177, v55, v58, v56, v170, v60, v57 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_deviceState, v59, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182);
  v62 = v61;

  if (v55)
  {
  }

  else
  {
    sub_26941C110(v62);
    v64 = v63;

    if (!v64)
    {
      return v62;
    }
  }

  return v62;
}

uint64_t sub_269409580(uint64_t a1)
{
  v2 = sub_269423658();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  if (!a1)
  {
    return OUTLINED_FUNCTION_34_1();
  }

  result = sub_2694236E8();
  if (!result)
  {
    return OUTLINED_FUNCTION_34_1();
  }

  v13 = result;
  v22 = *(result + 16);
  if (!v22)
  {
LABEL_13:

    return OUTLINED_FUNCTION_34_1();
  }

  v21 = v11;
  v14 = 0;
  v15 = result + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  while (v14 < *(v13 + 16))
  {
    (*(v4 + 16))(v8, v15 + *(v4 + 72) * v14, v2);
    v16 = sub_269423648();
    if (v17)
    {
      if (v16 == 0x65676175676E616CLL && v17 == 0xE800000000000000)
      {

LABEL_17:

        v20 = v21;
        (*(v4 + 32))(v21, v8, v2);
        sub_269423638();
        (*(v4 + 8))(v20, v2);
        sub_269424138();
        OUTLINED_FUNCTION_74();

        return OUTLINED_FUNCTION_34_1();
      }

      v19 = sub_269424688();

      if (v19)
      {
        goto LABEL_17;
      }
    }

    ++v14;
    result = (*(v4 + 8))(v8, v2);
    if (v22 == v14)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2694097D4()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_log;
  sub_269423FC8();
  OUTLINED_FUNCTION_20_5();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_deviceState));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_srrEntityProvider));

  return v0;
}

uint64_t sub_269409860()
{
  sub_2694097D4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for NLXConverter(uint64_t a1)
{
  result = qword_28030FFD0;
  if (!qword_28030FFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26940990C(uint64_t a1)
{
  result = sub_269423FC8();
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

BOOL sub_2694099B4()
{
  v0 = sub_269423F48();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_10();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = v12 - v8;
  sub_269423C48();
  sub_269423C38();
  sub_269423C18();

  sub_269423F28();

  (*(v2 + 104))(v6, *MEMORY[0x277D55F78], v0);
  sub_269409D3C(&qword_28030FFE8, MEMORY[0x277D55F80], MEMORY[0x277D55F88]);
  sub_269424258();
  sub_269424258();
  v10 = *(v2 + 8);
  v10(v6, v0);
  v10(v9, v0);
  return v12[1] == v12[0];
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_269409B9C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_269409BDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_269409C2C()
{
  result = qword_28030FFE0;
  if (!qword_28030FFE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28030FFE0);
  }

  return result;
}

uint64_t sub_269409C70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FFF0, &unk_269428490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269409CE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_20_5();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_269409D3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void OUTLINED_FUNCTION_5_10(uint64_t a1@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1(*(a1 - 256));

  JUMPOUT(0x26D63C8E0);
}

uint64_t OUTLINED_FUNCTION_18_7()
{
}

uint64_t OUTLINED_FUNCTION_21_4()
{
}

uint64_t OUTLINED_FUNCTION_22_4()
{

  return sub_2694237D8();
}

uint64_t OUTLINED_FUNCTION_23_4()
{
}

uint64_t OUTLINED_FUNCTION_25_3()
{
}

void *OUTLINED_FUNCTION_29_1(uint64_t a1)
{

  return sub_2694235E8();
}

void *OUTLINED_FUNCTION_33_3()
{

  return sub_269423788();
}

double OUTLINED_FUNCTION_34_3(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  return result;
}

void OUTLINED_FUNCTION_35_2(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_36_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_37_2()
{
}

uint64_t OUTLINED_FUNCTION_42_0(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_43_1()
{

  return sub_2694237D8();
}

uint64_t OUTLINED_FUNCTION_44_1()
{
}

uint64_t OUTLINED_FUNCTION_45_1()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t type metadata accessor for TranslateCATs(uint64_t a1)
{
  result = qword_280310018;
  if (!qword_280310018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26940A12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  v6 = OUTLINED_FUNCTION_12_2(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F600, &qword_269425750);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_269427440;
  OUTLINED_FUNCTION_0_15();
  v12 = OUTLINED_FUNCTION_5_11(v10, v11);
  sub_26940B480(v12, v8, &qword_28030F610, &qword_269425760);
  v13 = sub_269423DA8();
  OUTLINED_FUNCTION_14_4(v8);
  if (v14)
  {
    sub_269409CE0(v8, &qword_28030F610, &qword_269425760);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v13;
    __swift_allocate_boxed_opaque_existential_0((v9 + 48));
    OUTLINED_FUNCTION_20_5();
    (*(v15 + 32))();
  }

  strcpy((v9 + 80), "languageGroup");
  *(v9 + 94) = -4864;
  *(v9 + 120) = MEMORY[0x277D837D0];
  *(v9 + 96) = a2;
  *(v9 + 104) = a3;

  sub_269423CC8();
}

uint64_t sub_26940A2F0()
{
  OUTLINED_FUNCTION_11_0();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 97) = v3;
  *(v1 + 96) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 16) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v8);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26940A39C()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v1 + 64);
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F600, &qword_269425750);
  v4 = swift_allocObject();
  *(v1 + 72) = v4;
  *(v4 + 16) = xmmword_269427FB0;
  OUTLINED_FUNCTION_0_15();
  *(v5 + 32) = v6;
  *(v5 + 40) = v0;
  sub_26940B480(v3, v2, &qword_28030F610, &qword_269425760);
  v7 = sub_269423DA8();
  if (OUTLINED_FUNCTION_4_9() == 1)
  {
    sub_269409CE0(*(v1 + 64), &qword_28030F610, &qword_269425760);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v7;
    __swift_allocate_boxed_opaque_existential_0((v4 + 48));
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_6_8();
    v8();
  }

  v9 = *(v1 + 56);
  OUTLINED_FUNCTION_3_10();
  *(v4 + 80) = v10;
  *(v4 + 88) = v0;
  sub_26940B480(v11, v9, &qword_28030F610, &qword_269425760);
  if (OUTLINED_FUNCTION_4_9() == 1)
  {
    sub_269409CE0(*(v1 + 56), &qword_28030F610, &qword_269425760);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v7;
    __swift_allocate_boxed_opaque_existential_0((v4 + 96));
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_6_8();
    v12();
  }

  v13 = *(v1 + 40);
  v14 = *(v1 + 96);
  *(v4 + 128) = 0xD000000000000017;
  *(v4 + 136) = 0x800000026942A2C0;
  v15 = MEMORY[0x277D839B0];
  *(v4 + 144) = v14;
  *(v4 + 168) = v15;
  *(v4 + 176) = 0x656D614E707061;
  *(v4 + 184) = 0xE700000000000000;
  v16 = 0;
  if (v13)
  {
    v16 = sub_269423D68();
  }

  else
  {
    *(v4 + 200) = 0;
    *(v4 + 208) = 0;
  }

  v17 = *(v1 + 97);
  *(v4 + 192) = v13;
  *(v4 + 216) = v16;
  strcpy((v4 + 224), "isButtonLabel");
  *(v4 + 238) = -4864;
  *(v4 + 264) = v15;
  *(v4 + 240) = v17;
  v21 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);

  v18 = swift_task_alloc();
  *(v1 + 80) = v18;
  *v18 = v1;
  v18[1] = sub_26940A678;
  v19 = *(v1 + 16);

  return v21(v19, 0xD00000000000001DLL, 0x800000026942A2E0, v4);
}

uint64_t sub_26940A678()
{
  OUTLINED_FUNCTION_11_0();
  v8 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v2 = v8;
  *(v8 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_45_0();

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  else
  {

    OUTLINED_FUNCTION_4_6();

    return v6();
  }
}

uint64_t sub_26940A7B8()
{
  OUTLINED_FUNCTION_11_0();

  OUTLINED_FUNCTION_4_6();

  return v0();
}

uint64_t sub_26940A828(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_13_6();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26940A8EC;
  v4 = MEMORY[0x277D84F90];

  return v6(a1, 0xD000000000000016, 0x800000026942A2A0, v4);
}

uint64_t sub_26940A8EC()
{
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;

  OUTLINED_FUNCTION_4_6();

  return v3();
}

uint64_t sub_26940A9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  v6 = OUTLINED_FUNCTION_12_2(v5);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F600, &qword_269425750);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_269425F30;
  OUTLINED_FUNCTION_3_10();
  v15 = OUTLINED_FUNCTION_5_11(v13, v14);
  sub_26940B480(v15, v11, &qword_28030F610, &qword_269425760);
  v16 = sub_269423DA8();
  OUTLINED_FUNCTION_14_4(v11);
  if (v17)
  {
    sub_269409CE0(v11, &qword_28030F610, &qword_269425760);
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
  }

  else
  {
    *(v12 + 72) = v16;
    __swift_allocate_boxed_opaque_existential_0((v12 + 48));
    OUTLINED_FUNCTION_20_5();
    (*(v18 + 32))();
  }

  OUTLINED_FUNCTION_0_15();
  *(v12 + 80) = v19;
  *(v12 + 88) = 0xEF7365676175676ELL;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310028, &unk_269428020);
  *(v12 + 96) = a2;
  *(v12 + 120) = v20;
  *(v12 + 128) = 0x6D6574497473616CLL;
  *(v12 + 136) = 0xE800000000000000;
  sub_26940B480(a3, v9, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_14_4(v9);
  if (v17)
  {

    sub_269409CE0(v9, &qword_28030F610, &qword_269425760);
    *(v12 + 144) = 0u;
    *(v12 + 160) = 0u;
  }

  else
  {
    *(v12 + 168) = v16;
    __swift_allocate_boxed_opaque_existential_0((v12 + 144));
    OUTLINED_FUNCTION_20_5();
    (*(v21 + 32))();
  }

  sub_269423CC8();
}

uint64_t sub_26940AC5C()
{
  OUTLINED_FUNCTION_11_0();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 108) = v16;
  *(v1 + 107) = v3;
  *(v1 + 106) = v4;
  *(v1 + 105) = v5;
  *(v1 + 104) = v6;
  *(v1 + 24) = v7;
  *(v1 + 32) = v8;
  *(v1 + 16) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v10);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26940AD28()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v1 + 72);
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F600, &qword_269425750);
  v4 = swift_allocObject();
  *(v1 + 80) = v4;
  *(v4 + 16) = xmmword_269425E80;
  OUTLINED_FUNCTION_3_10();
  *(v5 + 32) = v6;
  *(v5 + 40) = v0;
  sub_26940B480(v3, v2, &qword_28030F610, &qword_269425760);
  v7 = sub_269423DA8();
  if (OUTLINED_FUNCTION_4_9() == 1)
  {
    sub_269409CE0(*(v1 + 72), &qword_28030F610, &qword_269425760);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v7;
    __swift_allocate_boxed_opaque_existential_0((v4 + 48));
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_6_8();
    v8();
  }

  v9 = *(v1 + 64);
  OUTLINED_FUNCTION_0_15();
  *(v4 + 80) = v10;
  *(v4 + 88) = v0;
  sub_26940B480(v11, v9, &qword_28030F610, &qword_269425760);
  if (OUTLINED_FUNCTION_4_9() == 1)
  {
    sub_269409CE0(*(v1 + 64), &qword_28030F610, &qword_269425760);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v7;
    __swift_allocate_boxed_opaque_existential_0((v4 + 96));
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_6_8();
    v12();
  }

  v13 = *(v1 + 56);
  v14 = *(v1 + 40);
  v15 = *(v1 + 107);
  v16 = *(v1 + 106);
  v17 = *(v1 + 105);
  v18 = *(v1 + 104);
  *(v4 + 128) = 0xD00000000000001DLL;
  *(v4 + 136) = 0x800000026942A200;
  v19 = MEMORY[0x277D839B0];
  *(v4 + 144) = v18;
  *(v4 + 168) = v19;
  *(v4 + 176) = 0xD000000000000010;
  *(v4 + 184) = 0x800000026942A220;
  *(v4 + 192) = v17;
  *(v4 + 216) = v19;
  strcpy((v4 + 224), "emptyResponse");
  *(v4 + 238) = -4864;
  *(v4 + 240) = v16;
  *(v4 + 264) = v19;
  *(v4 + 272) = 0x526C6172656E6567;
  *(v4 + 280) = 0xEF65736E6F707365;
  *(v4 + 288) = v15;
  *(v4 + 312) = v19;
  *(v4 + 320) = 0x657361726870;
  *(v4 + 328) = 0xE600000000000000;
  sub_26940B480(v14, v13, &qword_28030F610, &qword_269425760);
  if (OUTLINED_FUNCTION_4_9() == 1)
  {
    sub_269409CE0(*(v1 + 56), &qword_28030F610, &qword_269425760);
    *(v4 + 336) = 0u;
    *(v4 + 352) = 0u;
  }

  else
  {
    *(v4 + 360) = v7;
    __swift_allocate_boxed_opaque_existential_0((v4 + 336));
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_6_8();
    v20();
  }

  v21 = *(v1 + 108);
  *(v4 + 368) = 0xD00000000000001BLL;
  *(v4 + 376) = 0x800000026942A260;
  *(v4 + 408) = v19;
  *(v4 + 384) = v21;
  v22 = OUTLINED_FUNCTION_13_6();
  *(v1 + 88) = v22;
  *v22 = v1;
  v22[1] = sub_26940B0C4;
  v23 = *(v1 + 16);

  return v25(v23, 0xD000000000000010, 0x800000026942A240, v4);
}

uint64_t sub_26940B0C4()
{
  v8 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v2 = v8;
  *(v8 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_45_0();

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  else
  {

    OUTLINED_FUNCTION_4_6();

    return v6();
  }
}

uint64_t sub_26940B21C()
{

  OUTLINED_FUNCTION_4_6();

  return v0();
}

uint64_t sub_26940B2A0(uint64_t a1)
{
  swift_allocObject();
  OUTLINED_FUNCTION_6_8();
  return sub_26940B2F0(v1, v2, v3);
}

uint64_t sub_26940B2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_269423EB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F620, &unk_269425770);
  v10 = OUTLINED_FUNCTION_12_2(v9);
  MEMORY[0x28223BE20](v10);
  sub_26940B480(a1, &v14 - v11, &qword_28030F620, &unk_269425770);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_269423CB8();
  (*(v6 + 8))(a2, v5);
  sub_269409CE0(a1, &qword_28030F620, &unk_269425770);
  return v12;
}

uint64_t sub_26940B480(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_20_5();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_9()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_5_11@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2;
  *(a1 + 40) = 0xEE0065676175676ELL;
  return v2;
}

uint64_t OUTLINED_FUNCTION_13_6()
{

  return swift_task_alloc();
}

uint64_t sub_26940B5A4()
{
  v2 = sub_269423818();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_10_2(v6);
  v7 = sub_2694238F8();
  v8 = sub_269423998();
  OUTLINED_FUNCTION_10_2(v8);
  sub_269423988();
  sub_26941C0F8(v0);
  sub_269423968();

  sub_2694238D8();

  swift_allocObject();
  sub_269423988();
  sub_26941C104(v0);
  sub_269423968();

  sub_2694238E8();

  v9 = sub_269423948();
  OUTLINED_FUNCTION_10_2(v9);
  sub_269423938();
  (*(v4 + 104))(v1, *MEMORY[0x277D5EE50], v2);
  sub_269423928();
  (*(v4 + 8))(v1, v2);

  sub_2694237C8();

  v10 = MEMORY[0x26D63B350](v7);

  return v10;
}

uint64_t sub_26940B854(void *a1, void *a2)
{
  v20 = sub_269423818();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_10_2(v7);
  v8 = sub_2694238F8();
  v9 = sub_269423868();
  OUTLINED_FUNCTION_10_2(v9);
  sub_269423858();
  sub_26941C110(a1);
  if (v10)
  {
    sub_269423848();
  }

  v11 = sub_269423998();
  OUTLINED_FUNCTION_10_2(v11);
  sub_269423988();

  sub_269423978();

  sub_26941C0F8(a1);
  if (v12)
  {
    sub_269423968();
  }

  sub_2694238D8();

  swift_allocObject();
  sub_269423858();
  sub_26941C104(a1);
  if (v13)
  {
    sub_269423848();
  }

  swift_allocObject();
  sub_269423988();

  sub_269423978();

  sub_269405C48(a2);
  if (v14)
  {
    sub_269423968();
  }

  sub_2693FD014(a2);
  if (v15)
  {
    sub_269423958();
  }

  sub_2694238E8();

  v16 = sub_269423948();
  OUTLINED_FUNCTION_10_2(v16);
  sub_269423938();
  (*(v5 + 104))(v2, *MEMORY[0x277D5EE50], v20);
  sub_269423928();
  (*(v5 + 8))(v2, v20);

  sub_2694237C8();

  v17 = MEMORY[0x26D63B350](v8);

  return v17;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26940BB84(uint64_t *a1, int a2)
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

uint64_t sub_26940BBC4(uint64_t result, int a2, int a3)
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

uint64_t sub_26940BC10(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269424118();

  return v3;
}

uint64_t OUTLINED_FUNCTION_0_16()
{

  return sub_269423908();
}

unint64_t sub_26940BCAC(uint64_t a1, uint64_t a2)
{
  v2 = sub_2694246B8();

  if (v2 >= 0x28)
  {
    return 40;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26940BD14(char a1)
{
  result = 0x45415F7261;
  switch(a1)
  {
    case 1:
      v3 = 1432317541;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x5300000000;
    case 2:
      return 0x42475F6E65;
    case 3:
      v11 = 1096773221;
      return v11 & 0xFFFF0000FFFFFFFFLL | 0x5500000000;
    case 4:
      v9 = 1130327653;
      goto LABEL_48;
    case 5:
      v7 = 1230990949;
      goto LABEL_42;
    case 6:
      return 0x47535F6E65;
    case 7:
      return 0x5A4E5F6E65;
    case 8:
      v8 = 1230990949;
      return v8 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
    case 9:
      v9 = 1516203621;
      goto LABEL_48;
    case 10:
      v5 = 1130325348;
      goto LABEL_33;
    case 11:
      v8 = 1147102564;
      return v8 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
    case 12:
      v10 = 1096770916;
      return v10 & 0xFFFF0000FFFFFFFFLL | 0x5400000000;
    case 13:
      v3 = 1163883365;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x5300000000;
    case 14:
      return 0x584D5F7365;
    case 15:
      v4 = 1130328933;
      goto LABEL_22;
    case 16:
      return 0x53555F7365;
    case 17:
      v6 = 1180660326;
      goto LABEL_44;
    case 18:
      return 0x41435F7266;
    case 19:
      return 0x48435F7266;
    case 20:
      return 0x45425F7266;
    case 21:
      v10 = 1230992489;
      return v10 & 0xFFFF0000FFFFFFFFLL | 0x5400000000;
    case 22:
      return 0x48435F7469;
    case 23:
      v7 = 1130326138;
      goto LABEL_42;
    case 24:
      return 0x4B485F687ALL;
    case 25:
      return OUTLINED_FUNCTION_1_10();
    case 26:
      return OUTLINED_FUNCTION_0_17();
    case 27:
      v6 = 1264545643;
      goto LABEL_44;
    case 28:
      v6 = 1113551984;
      goto LABEL_44;
    case 29:
      v11 = 1381987698;
      return v11 & 0xFFFF0000FFFFFFFFLL | 0x5500000000;
    case 30:
      v9 = 1398764129;
      goto LABEL_48;
    case 31:
      v4 = 1314876526;
      goto LABEL_22;
    case 32:
      v8 = 1113549934;
      return v8 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
    case 33:
      v6 = 1415541364;
LABEL_44:
      result = v6 & 0xFFFF0000FFFFFFFFLL | 0x5200000000;
      break;
    case 34:
      v7 = 1449093494;
LABEL_42:
      result = v7 & 0xFFFF0000FFFFFFFFLL | 0x4E00000000;
      break;
    case 35:
      v5 = 1415538804;
LABEL_33:
      result = v5 & 0xFFFF0000FFFFFFFFLL | 0x4800000000;
      break;
    case 36:
      result = OUTLINED_FUNCTION_2_9();
      break;
    case 37:
      v4 = 1348430960;
LABEL_22:
      result = v4 & 0xFFFF0000FFFFFFFFLL | 0x4C00000000;
      break;
    case 38:
      v9 = 1432316789;
LABEL_48:
      result = v9 & 0xFFFF0000FFFFFFFFLL | 0x4100000000;
      break;
    case 39:
      result = 0x4E435F657579;
      break;
    default:
      return result;
  }

  return result;
}