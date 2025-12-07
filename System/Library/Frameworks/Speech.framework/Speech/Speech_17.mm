uint64_t sub_1AC7431B4()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC743210(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC743228()
{
  OUTLINED_FUNCTION_85();
  v1 = sub_1AC5CB1A4();
  *(v0 + 40) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v3 = OUTLINED_FUNCTION_45_1(v2);

    return sub_1AC69501C(v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v6();
  }
}

uint64_t sub_1AC743300()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 16);
  v2 = sub_1AC5CB1A4();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_modelInfo);
    OUTLINED_FUNCTION_86();
  }

  else
  {
    v1 = 0;
  }

  OUTLINED_FUNCTION_82();

  return v4(v1);
}

uint64_t sub_1AC7433A0()
{
  OUTLINED_FUNCTION_85();
  v1 = sub_1AC5CB1A4();
  *(v0 + 24) = v1;
  if (v1)
  {
    *(v0 + 32) = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_recognitionStatistics;

    return MEMORY[0x1EEE6DFA0](sub_1AC74344C, v1, 0);
  }

  else
  {
    OUTLINED_FUNCTION_82();

    return v2();
  }
}

uint64_t sub_1AC74344C()
{
  OUTLINED_FUNCTION_85();
  v0[5] = *(v0[3] + v0[4]);

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC7434B8()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_82();

  return v0();
}

uint64_t sub_1AC74352C()
{
  OUTLINED_FUNCTION_85();
  v1 = sub_1AC5CB1A4();
  *(v0 + 24) = v1;
  if (v1)
  {
    *(v0 + 32) = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_recognitionUtterenceStatistics;

    return MEMORY[0x1EEE6DFA0](sub_1AC7435D8, v1, 0);
  }

  else
  {
    OUTLINED_FUNCTION_82();

    return v2();
  }
}

uint64_t sub_1AC7435D8()
{
  OUTLINED_FUNCTION_85();
  v0[5] = *(v0[3] + v0[4]);

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC743644()
{
  OUTLINED_FUNCTION_85();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_1AC79FF48();
  OUTLINED_FUNCTION_167(v3);
  v1[6] = OUTLINED_FUNCTION_126();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
  OUTLINED_FUNCTION_167(v4);
  v1[7] = OUTLINED_FUNCTION_126();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  OUTLINED_FUNCTION_167(v5);
  v1[8] = OUTLINED_FUNCTION_126();
  v6 = sub_1AC79FB18();
  v1[9] = v6;
  OUTLINED_FUNCTION_22(v6);
  v1[10] = v7;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v8 = type metadata accessor for Assets(0);
  v1[13] = v8;
  OUTLINED_FUNCTION_167(v8);
  v1[14] = OUTLINED_FUNCTION_126();
  v9 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1AC743798()
{
  v1 = v0[5];
  v2 = *(v1 + OBJC_IVAR____TtC6Speech17TranscriberCommon_preferredModelTaskNames);
  v0[15] = v2;
  if (v2[2])
  {
    v3 = v0[12];
    v4 = v0[9];
    v5 = v0[10];
    v6 = v0[7];
    v7 = v2[4];
    v0[16] = v7;
    v8 = v2[5];
    v0[17] = v8;
    (*(v5 + 16))(v3, v1 + OBJC_IVAR____TtC6Speech17TranscriberCommon_locale, v4);
    sub_1AC5C6E6C();
    v9 = type metadata accessor for TranscriberCommon.ModelOptions(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v9);
    v11 = v0[7];
    if (EnumTagSinglePayload == 1)
    {

      sub_1AC5C720C(v11, &qword_1EB56C318, &unk_1AC7A8790);
      sub_1AC79F7F8();
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    }

    else
    {
      sub_1AC5C6E6C();

      OUTLINED_FUNCTION_13_13();
      sub_1AC753538(v11, v16);
    }

    if (v7 != sub_1AC79FF68() || v8 != v17)
    {
      OUTLINED_FUNCTION_77();
      sub_1AC7A0D38();
    }

    OUTLINED_FUNCTION_390();
    OUTLINED_FUNCTION_167_0();
    sub_1AC61CBD4();
    v19 = swift_task_alloc();
    v0[18] = v19;
    *v19 = v0;
    OUTLINED_FUNCTION_85_0(v19);

    sub_1AC61FB58();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC7439EC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v4;
  *(v2 + 160) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC743AEC()
{
  v45 = v0;
  v1 = 0;
  v2 = 0;
  v3 = *(v0[15] + 16);
  while (v3 != v2)
  {
    v4 = v0[15];
    if (v2 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v5 = v0[19];
    v6 = v4 + v1;
    v8 = *(v6 + 32);
    v7 = *(v6 + 40);
    v0[2] = v8;
    v0[3] = v7;
    v9 = swift_task_alloc();
    *(v9 + 16) = v0 + 2;

    LOBYTE(v5) = sub_1AC6F488C(sub_1AC637CD4, v9, v5);

    if (v5)
    {
      v20 = v0[16];
      v19 = v0[17];

      if (v8 != v20 || v7 != v19)
      {
        OUTLINED_FUNCTION_62_4();
        if ((sub_1AC7A0D38() & 1) == 0)
        {
          v32 = off_1ED937D60;

          if (v32 != -1)
          {
            OUTLINED_FUNCTION_3_0();
            swift_once();
          }

          v33 = sub_1AC79FDE8();
          OUTLINED_FUNCTION_10_3(v33, qword_1ED9386C8);

          v34 = sub_1AC79FDC8();
          v35 = sub_1AC7A0618();

          v36 = os_log_type_enabled(v34, v35);
          v37 = v0[17];
          if (v36)
          {
            v38 = v0[16];
            v39 = OUTLINED_FUNCTION_448();
            v44[0] = OUTLINED_FUNCTION_494();
            *v39 = 136315394;
            v40 = sub_1AC5CFE74(v38, v37, v44);

            *(v39 + 4) = v40;
            *(v39 + 12) = 2080;
            v41 = OUTLINED_FUNCTION_62_4();
            *(v39 + 14) = sub_1AC5CFE74(v41, v42, v43);
            _os_log_impl(&dword_1AC5BC000, v34, v35, "Transcriber: Assets do not support requested task name %s; using %s", v39, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_96_0();
          }

          else
          {
          }
        }
      }

      v28 = v0[14];
      v29 = v0[5] + OBJC_IVAR____TtC6Speech17TranscriberCommon_assetsTaskName;
      os_unfair_lock_lock(v29);

      *(v29 + 8) = v8;
      *(v29 + 16) = v7;
      os_unfair_lock_unlock(v29);
      OUTLINED_FUNCTION_5_21();
      sub_1AC753538(v28, v30);

      OUTLINED_FUNCTION_44();
      goto LABEL_20;
    }

    ++v2;
    v1 += 16;
  }

  if (off_1ED937D60 == -1)
  {
    goto LABEL_7;
  }

LABEL_29:
  OUTLINED_FUNCTION_3_0();
  swift_once();
LABEL_7:
  v10 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v10, qword_1ED9386C8);

  v11 = sub_1AC79FDC8();
  v12 = sub_1AC7A05F8();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[17];
  if (v13)
  {
    v15 = v0[16];
    v16 = OUTLINED_FUNCTION_150();
    v17 = OUTLINED_FUNCTION_48();
    v44[0] = v17;
    *v16 = 136315138;
    v18 = sub_1AC5CFE74(v15, v14, v44);

    *(v16 + 4) = v18;
    _os_log_impl(&dword_1AC5BC000, v11, v12, "Transcriber: Assets do not support requested task name %s; no fallback available", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_96_0();
  }

  else
  {
  }

  sub_1AC79FEE8();
  if (qword_1EB56B610 != -1)
  {
    swift_once();
  }

  v22 = qword_1EB56DF80;
  sub_1AC79FA88();
  OUTLINED_FUNCTION_138();
  v23 = sub_1AC79FFC8();
  related decl 'e' for SFSpeechErrorCode.init(_:description:)(4, v23, v24);
  swift_willThrow();
  v25 = v0[14];
  OUTLINED_FUNCTION_5_21();
  sub_1AC753538(v25, v26);

  OUTLINED_FUNCTION_44();
LABEL_20:

  return v27();
}

void sub_1AC744018()
{

  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_5_21();
  sub_1AC753538(v1, v2);

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_291();

  __asm { BRAA            X1, X16 }
}

id sub_1AC7440D4()
{
  v2 = OUTLINED_FUNCTION_77();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_167(v4);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_602();
  sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v9 = v8 - v7;
  v10 = *(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_modelTaskAssetType);
  (*(v11 + 16))(v8 - v7, v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_locale);
  sub_1AC5C6E6C();
  v12 = type metadata accessor for TranscriberCommon.ModelOptions(0);
  OUTLINED_FUNCTION_14_7(v1);
  if (v13)
  {
    sub_1AC5C720C(v1, &qword_1EB56C318, &unk_1AC7A8790);
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v14 = (v1 + *(v12 + 24));
    v15 = *v14;
    v16 = v14[1];

    OUTLINED_FUNCTION_13_13();
    sub_1AC753538(v1, v17);
  }

  v18 = objc_allocWithZone(SFEntitledAssetConfig);
  return sub_1AC751A98(v10, v9, v15, v16);
}

uint64_t sub_1AC744278()
{
  v0 = sub_1AC5CB1A4();
  if (!v0)
  {
    return 0;
  }

  v1 = *(v0 + 112);

  return v1;
}

void sub_1AC7442B0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v3);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_72_5();
  if (!a1)
  {
    goto LABEL_5;
  }

  v5 = v1 + OBJC_IVAR____TtC6Speech17TranscriberCommon__workerWithLocked;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC6Speech17TranscriberCommon__workerWithLocked));
  v6 = *(v5 + 16);
  os_unfair_lock_unlock(v5);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v7 = sub_1AC79FDE8();
  __swift_project_value_buffer(v7, qword_1ED9386C8);
  if (v6)
  {
    v14 = sub_1AC79FDC8();
    v15 = sub_1AC7A05F8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_150();
      v17 = OUTLINED_FUNCTION_48();
      v19 = v17;
      *v16 = 136315138;
      OUTLINED_FUNCTION_65();
      *(v16 + 4) = sub_1AC5CFE74(0xD00000000000002CLL, v18, &v19);
      _os_log_impl(&dword_1AC5BC000, v14, v15, "Failed precondition: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v8 = v1 + OBJC_IVAR____TtC6Speech17TranscriberCommon__workerWithLocked;
    os_unfair_lock_lock((v1 + OBJC_IVAR____TtC6Speech17TranscriberCommon__workerWithLocked));
    *(v8 + 8) = a1;

    *(v8 + 16) = 1;
    os_unfair_lock_unlock(v8);
    sub_1AC7A0288();
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a1;
    v13[5] = v1;

    sub_1AC659B08();
    OUTLINED_FUNCTION_86();
  }
}

uint64_t sub_1AC7444E4(char *a1)
{
  if (object_getClass(a1) != _TtC6Speech22SpeechRecognizerWorker || a1 == 0)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_supportedFeatures;
  swift_unknownObjectRetain();
  v4 = sub_1AC744558(&a1[v3]);
  swift_unknownObjectRelease();
  return v4 & 1;
}

void sub_1AC746008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, int32_t a26, unsigned __int8 *a27, uint64_t a28, void *a29, uint64_t a30, char a31)
{
  OUTLINED_FUNCTION_104();
  v32 = v31;
  v195 = v33;
  v196 = v34;
  v193 = v35;
  v194 = v36;
  v198 = v37;
  v39 = v38;
  v41 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEC0, &qword_1AC7B2B98);
  OUTLINED_FUNCTION_40();
  v177 = v43;
  v178 = v42;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_89_1();
  v176 = v45;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE90, &qword_1AC7B2940);
  OUTLINED_FUNCTION_40();
  v180 = v46;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_89_1();
  v179 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF00, &qword_1AC7B2BE8);
  OUTLINED_FUNCTION_40();
  v182 = v50;
  v183 = v49;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_89_1();
  v181 = v52;
  v53 = OUTLINED_FUNCTION_70_0();
  v175 = type metadata accessor for SpeechRecognizerSupportedFeatures(v53);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_6();
  v174 = v56 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE88, &qword_1AC7B2938);
  OUTLINED_FUNCTION_40();
  v187 = v58;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_89_1();
  v186 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEC8, &unk_1AC7B2BA0);
  v62 = OUTLINED_FUNCTION_167(v61);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_2_4();
  v185 = v63;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_91();
  v188 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF08, &qword_1AC7B2BF0);
  v67 = OUTLINED_FUNCTION_167(v66);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_2_4();
  v190 = v68;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_91();
  v192 = v70;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF10, &qword_1AC7B2BF8);
  OUTLINED_FUNCTION_40();
  v184 = v71;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_89_1();
  v199 = v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF18, &qword_1AC7B2C00);
  OUTLINED_FUNCTION_167(v74);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v163 - v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE80, &qword_1AC7B2930);
  OUTLINED_FUNCTION_40();
  v80 = v79;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_89_1();
  v201 = v82;
  v83 = *a27;
  v84 = sub_1AC637EF8();
  v197 = v83;
  if (v83 != 6 || (v84 & 1) != 0)
  {
    v85 = sub_1AC637EF8();
    if (v197 > 2 || (v85 & 1) != 0)
    {
      if (sub_1AC637EF8() & 1) != 0 || (v86 = sub_1AC637EF8(), v195 = v39, v196 = v198, v194 = v41, (v86))
      {
        v167 = v80;
        v168 = a23;
        sub_1AC5C6E6C();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v77, 1, v78);
        p_cache = _TtC6Speech22SpeechRecognizerWorker.cache;
        v169 = v57;
        v166 = a24;
        v165 = a26;
        v164 = a29;
        if (EnumTagSinglePayload == 1)
        {
          sub_1AC5C720C(v77, &qword_1EB56DF18, &qword_1AC7B2C00);
          v89 = a25;
        }

        else
        {
          v90 = *(v167 + 32);
          v189 = v78;
          v90(v201, v77, v78);
          LOBYTE(v206[0]) = v197;
          v91 = *a29;
          v92 = a29[1];
          v93 = a29[2];
          v163 = a25;
          v94 = sub_1AC74C65C(v195, v196, v194, v206, v193, v91, v92, v93, v168, a24, a25, a26, a31 & 1);
          v96 = v94;
          v97 = *(v94 + 16);
          if (v97)
          {
            v172 = OBJC_IVAR____TtC6Speech17TranscriberCommon_redact;
            v198 = (v184 + 8);
            v184 = "erCommon.MultisegmentResult";
            v98 = 32;
            *&v95 = 136315138;
            v171 = v95;
            v170 = 0xD00000000000001FLL;
            v99 = v189;
            v173 = v94;
            do
            {
              memcpy(v207, (v96 + v98), 0x50uLL);
              memcpy(v206, v207, 0x50uLL);
              sub_1AC753388(v207, v204);
              sub_1AC753388(v207, v204);
              v100 = v199;
              sub_1AC7A0388();
              (*v198)(v100, v200);
              if (p_cache[428] != -1)
              {
                OUTLINED_FUNCTION_3_0();
                swift_once();
              }

              v101 = sub_1AC79FDE8();
              OUTLINED_FUNCTION_10_3(v101, qword_1ED9386C8);
              sub_1AC753388(v207, v206);

              v102 = sub_1AC79FDC8();
              v103 = sub_1AC7A05E8();
              sub_1AC7533E4(v207);

              if (os_log_type_enabled(v102, v103))
              {
                v104 = OUTLINED_FUNCTION_150();
                v105 = OUTLINED_FUNCTION_48();
                v206[0] = v105;
                *v104 = v171;
                v106 = v32;
                v107 = sub_1AC637EB4();
                v109 = v108;
                sub_1AC7533E4(v207);
                v110 = sub_1AC5CFE74(v107, v109, v206);

                *(v104 + 4) = v110;
                v32 = v106;
                v99 = v189;
                _os_log_impl(&dword_1AC5BC000, v102, v103, "Transcriber: Yielded result %s", v104, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v105);
                p_cache = (_TtC6Speech22SpeechRecognizerWorker + 16);
                OUTLINED_FUNCTION_70();
                v96 = v173;
                OUTLINED_FUNCTION_70();
              }

              else
              {

                sub_1AC7533E4(v207);
              }

              v98 += 80;
              --v97;
            }

            while (v97);

            (*(v167 + 8))(v201, v99);
            v57 = v169;
            v89 = v163;
          }

          else
          {

            if (off_1ED937D60 != -1)
            {
              OUTLINED_FUNCTION_3_0();
              swift_once();
            }

            v111 = sub_1AC79FDE8();
            OUTLINED_FUNCTION_10_3(v111, qword_1ED9386C8);
            v112 = sub_1AC79FDC8();
            v113 = sub_1AC7A05E8();
            v114 = OUTLINED_FUNCTION_366(v113);
            v89 = v163;
            v115 = v167;
            if (v114)
            {
              v116 = OUTLINED_FUNCTION_20();
              *v116 = 0;
              _os_log_impl(&dword_1AC5BC000, v112, v113, "Transcriber: Skipped internal or empty results", v116, 2u);
              OUTLINED_FUNCTION_96_0();
            }

            (*(v115 + 8))(v201, v189);
            v57 = v169;
          }
        }

        v117 = v192;
        OUTLINED_FUNCTION_99_2();
        sub_1AC5C6E6C();
        v118 = __swift_getEnumTagSinglePayload(v117, 1, v57);
        sub_1AC5C720C(v117, &qword_1EB56DF08, &qword_1AC7B2BF0);
        v119 = v169;
        if (v118 != 1 || (v120 = v188, OUTLINED_FUNCTION_99_2(), sub_1AC5C6E6C(), v121 = __swift_getEnumTagSinglePayload(v120, 1, v191), v122 = OUTLINED_FUNCTION_390(), sub_1AC5C720C(v122, v123, &unk_1AC7B2BA0), v119 = v169, v121 != 1))
        {
          v124 = v197;
          LOBYTE(v206[0]) = v197;
          sub_1AC74EF48(v193, v194, v195, v196, a22, v168, v166, v89, v205, v165, v206, a28, v164);
          memcpy(v206, v205, 0x101uLL);
          v125 = v190;
          sub_1AC5C6E6C();
          v126 = OUTLINED_FUNCTION_55_2();
          OUTLINED_FUNCTION_96(v126, v127, v119);
          if (!v128)
          {
            v134 = v186;
            v133 = v187;
            v135 = OUTLINED_FUNCTION_388();
            v137 = v136(v135);
            if (v124 - 3 <= 1 && (v138 = v174, sub_1AC745BFC(v137), v139 = *(v138 + *(v175 + 28)), OUTLINED_FUNCTION_4_18(), sub_1AC753538(v138, v140), v139 == 1))
            {
              v141 = (v32 + OBJC_IVAR____TtC6Speech17TranscriberCommon_lastRecognizedFinalMultisegmentResult);
              os_unfair_lock_lock((v32 + OBJC_IVAR____TtC6Speech17TranscriberCommon_lastRecognizedFinalMultisegmentResult));
              memcpy(v203, &v141[2], 0x101uLL);
              sub_1AC5C720C(v203, &qword_1EB56DF28, &unk_1AC7B2C10);
              memcpy(v204, v205, 0x101uLL);
              nullsub_1();
              memcpy(&v141[2], v204, 0x101uLL);
              sub_1AC75332C(v206, v202);
              os_unfair_lock_unlock(v141);
              if (off_1ED937D60 != -1)
              {
                OUTLINED_FUNCTION_3_0();
                swift_once();
              }

              v142 = sub_1AC79FDE8();
              OUTLINED_FUNCTION_10_3(v142, qword_1ED9386C8);

              sub_1AC75332C(v206, v202);
              v143 = sub_1AC79FDC8();
              v144 = sub_1AC7A05E8();
              sub_1AC7532D8(v206);

              if (os_log_type_enabled(v143, v144))
              {
                v145 = OUTLINED_FUNCTION_150();
                v202[0] = OUTLINED_FUNCTION_48();
                *v145 = 136315138;
                OUTLINED_FUNCTION_56_6();
                OUTLINED_FUNCTION_115_4();
                v146 = sub_1AC5CFE74(v119, v32, v202);

                *(v145 + 4) = v146;
                v148 = "Transcriber: Saved end-of-recognition result %s";
LABEL_40:
                OUTLINED_FUNCTION_187(&dword_1AC5BC000, v147, v144, v148);
                OUTLINED_FUNCTION_19_15();
                OUTLINED_FUNCTION_77_1();
LABEL_46:

                (*(v133 + 8))(v134, v169);
                goto LABEL_49;
              }
            }

            else
            {
              memcpy(v204, v206, 0x101uLL);
              sub_1AC75332C(v206, v203);
              v149 = v181;
              sub_1AC7A0388();
              (*(v182 + 8))(v149, v183);
              if (off_1ED937D60 != -1)
              {
                OUTLINED_FUNCTION_3_0();
                swift_once();
              }

              v150 = sub_1AC79FDE8();
              OUTLINED_FUNCTION_10_3(v150, qword_1ED9386C8);

              sub_1AC75332C(v206, v204);
              v143 = sub_1AC79FDC8();
              v144 = sub_1AC7A05E8();
              sub_1AC7532D8(v206);

              if (os_log_type_enabled(v143, v144))
              {
                v151 = OUTLINED_FUNCTION_150();
                v204[0] = OUTLINED_FUNCTION_48();
                *v151 = 136315138;
                OUTLINED_FUNCTION_56_6();
                OUTLINED_FUNCTION_115_4();
                v152 = sub_1AC5CFE74(v119, v32, v204);

                *(v151 + 4) = v152;
                v148 = "Transcriber: Yielded result %s";
                goto LABEL_40;
              }
            }

            sub_1AC7532D8(v206);
            goto LABEL_46;
          }

          sub_1AC5C720C(v125, &qword_1EB56DF08, &qword_1AC7B2BF0);
          v129 = v185;
          sub_1AC5C6E6C();
          v130 = OUTLINED_FUNCTION_55_2();
          v131 = v191;
          OUTLINED_FUNCTION_96(v130, v132, v191);
          if (v128)
          {
            sub_1AC7532D8(v206);
            sub_1AC5C720C(v129, &qword_1EB56DEC8, &unk_1AC7B2BA0);
          }

          else
          {
            v154 = v179;
            v153 = v180;
            (*(v180 + 32))(v179, v129, v131);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF20, &qword_1AC7B2C08);
            v155 = swift_allocObject();
            *(v155 + 16) = xmmword_1AC7A6D00;
            *(v155 + 32) = 48;
            *(v155 + 40) = 0xE100000000000000;
            memcpy((v155 + 48), v206, 0x101uLL);
            sub_1AC75332C(v206, v204);
            v204[0] = sub_1AC79FE38();
            v156 = v176;
            sub_1AC7A0388();
            (*(v177 + 8))(v156, v178);
            if (off_1ED937D60 != -1)
            {
              OUTLINED_FUNCTION_3_0();
              swift_once();
            }

            v157 = sub_1AC79FDE8();
            OUTLINED_FUNCTION_10_3(v157, qword_1ED9386C8);

            sub_1AC75332C(v206, v204);
            v158 = sub_1AC79FDC8();
            v159 = sub_1AC7A05E8();
            sub_1AC7532D8(v206);

            if (os_log_type_enabled(v158, v159))
            {
              v160 = OUTLINED_FUNCTION_150();
              v204[0] = OUTLINED_FUNCTION_48();
              *v160 = 136315138;
              OUTLINED_FUNCTION_56_6();
              OUTLINED_FUNCTION_115_4();
              v161 = sub_1AC5CFE74(v156, v32, v204);

              *(v160 + 4) = v161;
              OUTLINED_FUNCTION_187(&dword_1AC5BC000, v162, v159, "Transcriber: Yielded MUX partial result %s");
              OUTLINED_FUNCTION_19_15();
              OUTLINED_FUNCTION_77_1();
            }

            else
            {
              sub_1AC7532D8(v206);
            }

            (*(v153 + 8))(v154, v131);
          }
        }
      }
    }
  }

LABEL_49:
  OUTLINED_FUNCTION_105();
}

void sub_1AC746F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, _OWORD *a21)
{
  OUTLINED_FUNCTION_104();
  v107 = v23;
  v114 = v24;
  v106 = v25;
  v104 = v26;
  v105 = v27;
  v102 = v28;
  v103 = v29;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEC0, &qword_1AC7B2B98);
  OUTLINED_FUNCTION_40();
  v95 = v33;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_89_1();
  v94 = v35;
  v36 = &unk_1AC7B2BA0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEC8, &unk_1AC7B2BA0);
  OUTLINED_FUNCTION_167(v37);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_72_5();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE90, &qword_1AC7B2940);
  OUTLINED_FUNCTION_40();
  v41 = v40;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v90 - v43;
  v101 = *v114;
  v114 = v21;
  OUTLINED_FUNCTION_94_1();
  sub_1AC5C6E6C();
  v45 = OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_96(v45, v46, v39);
  if (v47)
  {
    sub_1AC5C720C(v22, &qword_1EB56DEC8, &unk_1AC7B2BA0);
  }

  else
  {
    v90 = v32;
    v98 = a21;
    v91 = v44;
    v92 = v41;
    v48 = *(v41 + 32);
    v93 = v39;
    v48(v44, v22, v39);
    v49 = v31 + 64;
    v50 = 1 << *(v31 + 32);
    v51 = -1;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    v52 = v51 & *(v31 + 64);
    v99 = OBJC_IVAR____TtC6Speech17TranscriberCommon_transcriptionOptions;
    v53 = (v50 + 63) >> 6;

    v54 = 0;
    v55 = MEMORY[0x1E69E7CC8];
    v96 = v53;
    v97 = v31 + 64;
    v100 = v31;
    if (v52)
    {
      while (1)
      {
        v113 = v55;
LABEL_12:
        v57 = __clz(__rbit64(v52)) | (v54 << 6);
        v58 = *(v31 + 56);
        v59 = (*(v31 + 48) + 16 * v57);
        v60 = v59[1];
        v108 = *v59;
        v61 = *(v58 + 8 * v57);
        v112 = v60;

        v62 = v61;
        v63 = [v62 recognition];
        v64 = [v63 nBest];

        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD48, &qword_1AC7A8178);
        v111 = sub_1AC7A0158();

        v65 = [v62 recognition];
        v66 = [v65 tokenSausage];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C450, &qword_1AC7A90C0);
        v110 = sub_1AC7A0158();

        v67 = [v62 recognition];
        v68 = [v67 interpretationIndices];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C650, &unk_1AC7AB400);
        OUTLINED_FUNCTION_117();
        sub_1AC7A0158();

        sub_1AC70AB64();
        v70 = v69;

        v71 = [v62 preITNRecognition];
        v72 = [v71 nBest];

        v109 = sub_1AC7A0158();
        v73 = [v62 preITNRecognition];
        v74 = [v73 tokenSausage];

        v75 = sub_1AC7A0158();
        v76 = [v62 preITNRecognition];
        v77 = [v76 interpretationIndices];

        sub_1AC7A0158();
        sub_1AC70AB64();
        v79 = v78;

        if (sub_1AC637EF8())
        {

          v80 = v112;
          v81 = v113;
          v75 = v110;
          v82 = v111;
        }

        else
        {
          v82 = v109;

          if ((sub_1AC637EF8() & 1) == 0)
          {

            (*(v92 + 8))(v91, v93);
            goto LABEL_22;
          }

          v70 = v79;
          v80 = v112;
          v81 = v113;
        }

        v52 &= v52 - 1;
        LOBYTE(v115) = v101;
        v36 = v62;
        sub_1AC74EF48(v102, v82, v75, v70, v62, v103, v104, v105, v116, v106, &v115, v107, v98);

        swift_isUniquelyReferenced_nonNull_native();
        v115 = v81;
        sub_1AC6E0D30(v116, v108, v80);

        v55 = v115;
        v31 = v100;
        v53 = v96;
        v49 = v97;
        if (!v52)
        {
          goto LABEL_8;
        }
      }
    }

    while (1)
    {
LABEL_8:
      v56 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v56 >= v53)
      {
        break;
      }

      v52 = *(v49 + 8 * v56);
      ++v54;
      if (v52)
      {
        v113 = v55;
        v54 = v56;
        goto LABEL_12;
      }
    }

    v115 = v55;
    v36 = v93;
    v83 = v94;
    v54 = v91;
    sub_1AC7A0388();
    (*(v95 + 8))(v83, v90);
    if (off_1ED937D60 == -1)
    {
      goto LABEL_19;
    }

LABEL_25:
    OUTLINED_FUNCTION_3_0();
    swift_once();
LABEL_19:
    v84 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v84, qword_1ED9386C8);
    v85 = sub_1AC79FDC8();
    v86 = sub_1AC7A05E8();
    v87 = OUTLINED_FUNCTION_366(v86);
    v88 = v92;
    if (v87)
    {
      v89 = OUTLINED_FUNCTION_20();
      *v89 = 0;
      _os_log_impl(&dword_1AC5BC000, v85, v86, "Transcriber: Yielded MUX result", v89, 2u);
      OUTLINED_FUNCTION_70();
    }

    (*(v88 + 8))(v54, v36);
  }

LABEL_22:
  OUTLINED_FUNCTION_105();
}

void sub_1AC7476CC()
{
  OUTLINED_FUNCTION_104();
  v65 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEC8, &unk_1AC7B2BA0);
  OUTLINED_FUNCTION_167(v3);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_89_1();
  v66 = v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE90, &qword_1AC7B2940);
  OUTLINED_FUNCTION_40();
  v63 = v6;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_89_1();
  v62 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF00, &qword_1AC7B2BE8);
  OUTLINED_FUNCTION_40();
  v56 = v10;
  v57 = v9;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_89_1();
  v55 = v12;
  v13 = OUTLINED_FUNCTION_70_0();
  v59 = type metadata accessor for SpeechRecognizerSupportedFeatures(v13);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v58 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF08, &qword_1AC7B2BF0);
  OUTLINED_FUNCTION_167(v17);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE88, &qword_1AC7B2938);
  OUTLINED_FUNCTION_40();
  v61 = v21;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_89_1();
  v60 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF18, &qword_1AC7B2C00);
  OUTLINED_FUNCTION_167(v24);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v54 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE80, &qword_1AC7B2930);
  OUTLINED_FUNCTION_40();
  v30 = v29;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_602();
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_96(v27, 1, v28);
  if (v32)
  {
    sub_1AC5C720C(v27, &qword_1EB56DF18, &qword_1AC7B2C00);
    v35 = v65;
  }

  else
  {
    (*(v30 + 32))(v1, v27, v28);
    v33 = v65;
    v70[0] = v65;
    v34 = v65;
    sub_1AC7A0398();
    (*(v30 + 8))(v1, v28);
    v35 = v33;
  }

  v36 = v0;
  sub_1AC5C6E6C();
  v37 = v64;
  OUTLINED_FUNCTION_96(v20, 1, v64);
  v38 = v67;
  if (v32)
  {
    sub_1AC5C720C(v20, &qword_1EB56DF08, &qword_1AC7B2BF0);
  }

  else
  {
    v40 = v60;
    v39 = v61;
    (*(v61 + 32))(v60, v20, v37);
    v41 = (v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_lastRecognizedFinalMultisegmentResult);
    os_unfair_lock_lock((v36 + OBJC_IVAR____TtC6Speech17TranscriberCommon_lastRecognizedFinalMultisegmentResult));
    memcpy(v69, &v41[2], 0x101uLL);
    sub_1AC5C6E6C();
    os_unfair_lock_unlock(v41);
    memcpy(v70, v69, 0x101uLL);
    v42 = sub_1AC753520(v70);
    if (v42 != 1)
    {
      v43 = v58;
      sub_1AC745BFC(v42);
      v44 = *(v43 + *(v59 + 28));
      OUTLINED_FUNCTION_4_18();
      sub_1AC753538(v43, v45);
      if (v44 == 1)
      {
        memcpy(v68, v70, 0x101uLL);
        v46 = v55;
        sub_1AC7A0388();
        (*(v56 + 8))(v46, v57);
      }

      else
      {
        sub_1AC5C720C(v69, &qword_1EB56DF28, &unk_1AC7B2C10);
      }
    }

    v68[0] = v35;
    v47 = v35;
    sub_1AC7A0398();
    (*(v39 + 8))(v40, v37);
  }

  v48 = v66;
  sub_1AC5C6E6C();
  v49 = OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_96(v49, v50, v38);
  if (v32)
  {
    sub_1AC5C720C(v48, &qword_1EB56DEC8, &unk_1AC7B2BA0);
  }

  else
  {
    v52 = v62;
    v51 = v63;
    (*(v63 + 32))(v62, v48, v38);
    v70[0] = v35;
    v53 = v35;
    sub_1AC7A0398();
    (*(v51 + 8))(v52, v38);
  }

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC747CD8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEE0, &qword_1AC7B2BD0);
  result = MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(*v1 + 16);
  if (v8 == v9)
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }

  else
  {
    if (v8 >= v9)
    {
      __break(1u);
    }

    else
    {
      v10 = sub_1AC79FBC8();
      v11 = *(v10 - 8);
      v12 = *(v11 + 16);
      v13 = v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v8;
      v1[1] = v8 + 1;
      v14 = *(v3 + 48);
      v15 = v1[2];
      *v6 = v15;
      result = v12(&v6[v14], v13, v10);
      if (!__OFADD__(v15, 1))
      {
        v1[2] = v15 + 1;
        sub_1AC637E08();
        return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AC747E54()
{
  v1 = v0[3];
  v2 = v0[4];
  if (!v2)
  {
    while (1)
    {
      v3 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v3 >= ((v0[2] + 64) >> 6))
      {
        v0[3] = v1;
        v0[4] = 0;
        return OUTLINED_FUNCTION_62_4();
      }

      v2 = *(v0[1] + 8 * v3);
      ++v1;
      if (v2)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  v3 = v0[3];
LABEL_6:
  v4 = *(*(*v0 + 56) + 8 * (__clz(__rbit64(v2)) | (v3 << 6)));
  v0[3] = v3;
  v0[4] = (v2 - 1) & v2;
  v5 = v0[5];
  if (__OFADD__(v5, 1))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v0[5] = v5 + 1;

  v6 = v4;
  return OUTLINED_FUNCTION_62_4();
}

void sub_1AC747F5C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = a4(0);
    OUTLINED_FUNCTION_167(v6);

    OUTLINED_FUNCTION_99_2();
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_1AC748000()
{
  OUTLINED_FUNCTION_85();
  type metadata accessor for AssetsInventory();
  swift_initStaticObject();
  OUTLINED_FUNCTION_116();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC70C79C();
}

uint64_t sub_1AC74809C()
{
  OUTLINED_FUNCTION_85();
  type metadata accessor for AssetsInventory();
  swift_initStaticObject();
  OUTLINED_FUNCTION_116();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_64_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC70D1B4(v0);
}

uint64_t sub_1AC74814C()
{
  OUTLINED_FUNCTION_85();
  v1 = sub_1AC5CB1A4();
  *(v0 + 24) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 32) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_85_0(v2);

    return sub_1AC696140();
  }

  else
  {
    OUTLINED_FUNCTION_82();

    return v4();
  }
}

uint64_t sub_1AC748210()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (!v0)
  {
    *(v5 + 48) = v3 & 1;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC748320()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_82();

  return v0();
}

uint64_t sub_1AC748380()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_82();

  return v0(0);
}

uint64_t sub_1AC7483E0()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC7432EC();
}

uint64_t sub_1AC748460()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 24) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1AC74857C()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = [*(v0 + 24) version];

    sub_1AC79FF68();
  }

  v3 = OUTLINED_FUNCTION_89();

  return v4(v3);
}

uint64_t sub_1AC748624()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC7432EC();
}

uint64_t sub_1AC7486A4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 24) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1AC7487C0()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = [*(v0 + 24) acousticModelVersion];

    sub_1AC79FF68();
  }

  v3 = OUTLINED_FUNCTION_89();

  return v4(v3);
}

uint64_t sub_1AC748868(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1AC64FC18(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      sub_1AC747F5C(0, v5, a2, MEMORY[0x1E6969C28]);
      v7 = v6;

      return v7;
    }
  }

  __break(1u);
  return result;
}

void sub_1AC748910(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    v4 = sub_1AC64FC18(0, a1, v3);
    if (v5)
    {
      v6 = v3;
    }

    else
    {
      v6 = v4;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      sub_1AC5CA588(0, v6, a2);

      OUTLINED_FUNCTION_94_1();
      return;
    }
  }

  __break(1u);
}

void sub_1AC7489A0()
{
  OUTLINED_FUNCTION_104();
  v2 = v0;
  v250 = v3;
  v273 = v4;
  v270 = v5;
  v281 = v6;
  v8 = v7;
  v10 = v9;
  v236 = *v2;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF58, &qword_1AC7B2CA8);
  OUTLINED_FUNCTION_40();
  v262 = v11;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_89_1();
  v261 = v13;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C348, &qword_1AC7A8820);
  OUTLINED_FUNCTION_40();
  v259 = v14;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_89_1();
  v258 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEC8, &unk_1AC7B2BA0);
  v18 = OUTLINED_FUNCTION_167(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_4();
  v260 = v19;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_91();
  v265 = v21;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF60, &qword_1AC7B2CB0);
  OUTLINED_FUNCTION_40();
  v255 = v22;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_89_1();
  v253 = v24;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C340, &qword_1AC7A8810);
  OUTLINED_FUNCTION_40();
  v252 = v25;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_89_1();
  v251 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF08, &qword_1AC7B2BF0);
  v29 = OUTLINED_FUNCTION_167(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_4();
  v254 = v30;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_91();
  v280 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF18, &qword_1AC7B2C00);
  OUTLINED_FUNCTION_167(v33);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_89_1();
  v249 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF68, &unk_1AC7B2CB8);
  OUTLINED_FUNCTION_40();
  v247 = v37;
  v248 = v36;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_89_1();
  v246 = v39;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE80, &qword_1AC7B2930);
  OUTLINED_FUNCTION_40();
  v272 = v40;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_89_1();
  v278 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C330, &qword_1AC7A8800);
  OUTLINED_FUNCTION_40();
  v276 = v44;
  v277 = v43;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_89_1();
  v275 = v46;
  OUTLINED_FUNCTION_70_0();
  v47 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_40();
  v239 = v48;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_2_4();
  v244 = v50;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_26_0();
  v245 = v52;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_26_0();
  v267 = v54;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_26_0();
  v268 = v56;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_91();
  v238 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  OUTLINED_FUNCTION_167(v59);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_72_5();
  sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v62 = v61;
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_2_4();
  v269 = v64;
  OUTLINED_FUNCTION_34();
  v66 = MEMORY[0x1EEE9AC00](v65);
  v68 = &v233 - v67;
  v69 = MEMORY[0x1EEE9AC00](v66);
  v71 = (&v233 - v70);
  v72 = MEMORY[0x1EEE9AC00](v69);
  v74 = &v233 - v73;
  LODWORD(v271) = *v8;
  v75 = v2 + OBJC_IVAR____TtC6Speech17TranscriberCommon_assetsTaskName;
  *v75 = 0;
  *(v75 + 2) = 0;
  *(v75 + 1) = 0;
  v235 = v75 + 8;
  v266 = v2;
  v76 = v2 + OBJC_IVAR____TtC6Speech17TranscriberCommon__workerWithLocked;
  v77 = v72;
  *v76 = 0;
  v76[16] = 0;
  *(v76 + 1) = 0;
  v78 = v10;
  Locale.languageRegionLocale.getter(v72, v79, v80, v81, v82, v83, v84, v85, v233, v234, (v76 + 8), v235, v236, v237, v238, v239, v240, v241, v242, v243);
  v86 = OUTLINED_FUNCTION_278();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v86, v87, v77);
  v283 = v77;
  if (EnumTagSinglePayload == 1)
  {
    sub_1AC5C720C(v1, &qword_1EB56BFD8, &qword_1AC7A83F0);
    if (off_1ED937D60 == -1)
    {
      goto LABEL_54;
    }

    goto LABEL_73;
  }

  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_94_1();
  v89();
  v90 = v62;
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v91 = __swift_project_value_buffer(v47, qword_1ED9386C8);
  v92 = *(v90 + 16);
  v243 = v10;
  v92(v68, v10, v77);
  v93 = v269;
  v274 = v74;
  v240 = v92;
  v241 = v90 + 16;
  v92(v269, v74, v77);
  v282 = v91;
  v94 = sub_1AC79FDC8();
  v95 = sub_1AC7A05D8();
  v96 = os_log_type_enabled(v94, v95);
  v242 = v90;
  if (v96)
  {
    v97 = OUTLINED_FUNCTION_448();
    v234 = OUTLINED_FUNCTION_494();
    v284[0] = v234;
    *v97 = 136315394;
    OUTLINED_FUNCTION_3_16();
    sub_1AC753294(v98, v99);
    v237 = v47;
    HIDWORD(v233) = v95;
    sub_1AC7A0CC8();
    v100 = *(v90 + 8);
    v100(v68, v283);
    v101 = OUTLINED_FUNCTION_184_0();
    v104 = sub_1AC5CFE74(v101, v102, v103);

    *(v97 + 4) = v104;
    *(v97 + 12) = 2080;
    v47 = v237;
    sub_1AC7A0CC8();
    v269 = v100;
    v100(v93, v283);
    v105 = OUTLINED_FUNCTION_184_0();
    v108 = sub_1AC5CFE74(v105, v106, v107);
    v77 = v283;

    *(v97 + 14) = v108;
    _os_log_impl(&dword_1AC5BC000, v94, BYTE4(v233), "Transcriber initialized with locale: %s, effective locale (language-region) pair: %s", v97, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  else
  {

    v109 = *(v90 + 8);
    v109(v93, v77);
    v269 = v109;
    v109(v68, v77);
  }

  v62 = v273;
  v110 = v271;
  sub_1AC72464C(&unk_1F212FD50);
  v78 = v270;
  v111 = sub_1AC623E28();

  if (v111)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_99();
  v112 = swift_allocObject();
  v114 = v238;
  v113 = v239;
  v71 = *(v239 + 16);
  *(v112 + 16) = 0;
  *(v112 + 24) = 0;
  OUTLINED_FUNCTION_105_5();
  v71();
  if ((sub_1AC637EF8() & 1) == 0)
  {
    OUTLINED_FUNCTION_99();
    v117 = swift_allocObject();
    OUTLINED_FUNCTION_64_8(v117);
    goto LABEL_12;
  }

  v115 = OUTLINED_FUNCTION_118_6();
  OUTLINED_FUNCTION_99();
  v116 = swift_allocObject();
  OUTLINED_FUNCTION_64_8(v116);
  if (v115)
  {
    while (1)
    {
      v199 = v239;
      v237 = v47;
      swift_retain_n();

      v200 = sub_1AC79FDC8();
      sub_1AC7A05F8();
      OUTLINED_FUNCTION_36_11();
      if (!os_log_type_enabled(v200, v201))
      {
        goto LABEL_68;
      }

      v202 = OUTLINED_FUNCTION_150();
      v203 = OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_141_2(v203);
      *v202 = 136315138;
      OUTLINED_FUNCTION_25_16();
      sub_1AC7A09C8();
      OUTLINED_FUNCTION_34_11();
      OUTLINED_FUNCTION_154_2();

      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_67_7();
      OUTLINED_FUNCTION_159();
      *(v202 + 4) = v78;
      OUTLINED_FUNCTION_111_6(&dword_1AC5BC000, v204, v71, "Failed precondition: %s");
      OUTLINED_FUNCTION_19_15();
      OUTLINED_FUNCTION_70();

      (*(v199 + 8))(v238, v237);
      __break(1u);
LABEL_60:
      OUTLINED_FUNCTION_60_7();
      swift_retain_n();

      v200 = sub_1AC79FDC8();
      sub_1AC7A05F8();
      OUTLINED_FUNCTION_36_11();
      if (!os_log_type_enabled(v200, v205))
      {
        goto LABEL_69;
      }

      v206 = OUTLINED_FUNCTION_150();
      v207 = OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_141_2(v207);
      *v206 = 136315138;
      OUTLINED_FUNCTION_25_16();
      sub_1AC7A09C8();
      OUTLINED_FUNCTION_34_11();
      OUTLINED_FUNCTION_154_2();

      OUTLINED_FUNCTION_92_5();
      MEMORY[0x1B26E8C40](v208 + 51, v209 | 0x8000000000000000);

      OUTLINED_FUNCTION_67_7();
      OUTLINED_FUNCTION_159();
      *(v206 + 4) = v78;
      OUTLINED_FUNCTION_80_7(&dword_1AC5BC000, v210, v211, "Failed precondition: %s");
      OUTLINED_FUNCTION_19_15();
      OUTLINED_FUNCTION_70();

      OUTLINED_FUNCTION_18_15();
      v212();
      __break(1u);
LABEL_62:
      OUTLINED_FUNCTION_60_7();
      swift_retain_n();

      v200 = sub_1AC79FDC8();
      sub_1AC7A05F8();
      OUTLINED_FUNCTION_36_11();
      if (!os_log_type_enabled(v200, v213))
      {
        goto LABEL_70;
      }

      v214 = OUTLINED_FUNCTION_150();
      v215 = OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_141_2(v215);
      *v214 = 136315138;
      OUTLINED_FUNCTION_25_16();
      sub_1AC7A09C8();
      OUTLINED_FUNCTION_34_11();
      OUTLINED_FUNCTION_154_2();

      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_67_7();
      OUTLINED_FUNCTION_159();
      *(v214 + 4) = v78;
      OUTLINED_FUNCTION_80_7(&dword_1AC5BC000, v216, v217, "Failed precondition: %s");
      OUTLINED_FUNCTION_19_15();
      OUTLINED_FUNCTION_70();

      OUTLINED_FUNCTION_18_15();
      v218();
      __break(1u);
LABEL_64:
      OUTLINED_FUNCTION_60_7();
      swift_retain_n();

      v200 = sub_1AC79FDC8();
      sub_1AC7A05F8();
      OUTLINED_FUNCTION_36_11();
      if (!os_log_type_enabled(v200, v219))
      {
        goto LABEL_71;
      }

      v220 = OUTLINED_FUNCTION_150();
      v221 = OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_141_2(v221);
      *v220 = 136315138;
      OUTLINED_FUNCTION_25_16();
      sub_1AC7A09C8();
      OUTLINED_FUNCTION_34_11();
      OUTLINED_FUNCTION_154_2();

      OUTLINED_FUNCTION_92_5();
      MEMORY[0x1B26E8C40](v222 + 57, v223 | 0x8000000000000000);

      OUTLINED_FUNCTION_67_7();
      OUTLINED_FUNCTION_159();
      *(v220 + 4) = v78;
      OUTLINED_FUNCTION_80_7(&dword_1AC5BC000, v224, v225, "Failed precondition: %s");
      OUTLINED_FUNCTION_19_15();
      OUTLINED_FUNCTION_70();

      OUTLINED_FUNCTION_18_15();
      v226();
      __break(1u);
LABEL_66:
      OUTLINED_FUNCTION_60_7();

      v200 = sub_1AC79FDC8();
      v47 = sub_1AC7A05F8();
      if (os_log_type_enabled(v200, v47))
      {
        break;
      }

LABEL_72:

      OUTLINED_FUNCTION_18_15();
      v232();

      __break(1u);
LABEL_73:
      OUTLINED_FUNCTION_3_0();
      swift_once();
LABEL_54:
      OUTLINED_FUNCTION_10_3(v47, qword_1ED9386C8);
      (*(v62 + 16))(v71, v78, v283);
      v184 = sub_1AC79FDC8();
      v78 = sub_1AC7A05F8();
      if (os_log_type_enabled(v184, v78))
      {
        v185 = OUTLINED_FUNCTION_150();
        v186 = OUTLINED_FUNCTION_48();
        v285[0] = v186;
        *v185 = 136315138;
        OUTLINED_FUNCTION_25_16();
        sub_1AC7A09C8();
        OUTLINED_FUNCTION_92_5();
        MEMORY[0x1B26E8C40](v187 + 39, v188 | 0x8000000000000000);
        OUTLINED_FUNCTION_3_16();
        sub_1AC753294(v189, v190);
        v47 = v283;
        v191 = sub_1AC7A0CC8();
        MEMORY[0x1B26E8C40](v191);

        MEMORY[0x1B26E8C40](46, 0xE100000000000000);
        v192 = v284[0];
        v193 = v284[1];
        v62 += 8;
        v194 = OUTLINED_FUNCTION_77();
        v195(v194);
        v196 = sub_1AC5CFE74(v192, v193, v285);

        *(v185 + 4) = v196;
        OUTLINED_FUNCTION_111_6(&dword_1AC5BC000, v197, v78, "Failed precondition: %s");
        __swift_destroy_boxed_opaque_existential_0(v186);
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_70();
      }

      else
      {

        v198 = *(v62 + 8);
        v62 += 8;
        v198(v71, v283);
      }

      __break(1u);
    }

    v62 = OUTLINED_FUNCTION_150();
    v78 = OUTLINED_FUNCTION_48();
    v285[0] = v78;
    *v62 = 136315138;
    OUTLINED_FUNCTION_25_16();
    sub_1AC7A09C8();
    v227 = OUTLINED_FUNCTION_34_11();
    MEMORY[0x1B26E8C40](v227);

    OUTLINED_FUNCTION_61_7();
    v199 = OUTLINED_FUNCTION_67_7();

    *(v62 + 4) = v199;
    _os_log_impl(&dword_1AC5BC000, v200, v47, "Failed precondition: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v78);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();

    OUTLINED_FUNCTION_18_15();
    v228();

    __break(1u);
LABEL_68:

    (*(v199 + 8))(v238, v237);
    __break(1u);
LABEL_69:

    OUTLINED_FUNCTION_18_15();
    v229();
    __break(1u);
LABEL_70:

    OUTLINED_FUNCTION_18_15();
    v230();
    __break(1u);
LABEL_71:

    OUTLINED_FUNCTION_18_15();
    v231();
    __break(1u);
    goto LABEL_72;
  }

  v113 = v239;
LABEL_12:

  v271 = *(v113 + 8);
  v271(v114, v47);
  OUTLINED_FUNCTION_105_5();
  v71();
  if (sub_1AC637EF8())
  {
    v118 = OUTLINED_FUNCTION_118_6();
    OUTLINED_FUNCTION_99();
    v119 = swift_allocObject();
    OUTLINED_FUNCTION_64_8(v119);
    if (v118)
    {
      goto LABEL_60;
    }
  }

  else
  {
    OUTLINED_FUNCTION_99();
    v120 = swift_allocObject();
    OUTLINED_FUNCTION_64_8(v120);
  }

  OUTLINED_FUNCTION_125_4();
  v121();
  OUTLINED_FUNCTION_105_5();
  v71();
  if (sub_1AC637EF8())
  {
    v122 = OUTLINED_FUNCTION_118_6();
    OUTLINED_FUNCTION_99();
    v123 = swift_allocObject();
    OUTLINED_FUNCTION_64_8(v123);
    if (v122)
    {
      goto LABEL_62;
    }
  }

  else
  {
    OUTLINED_FUNCTION_99();
    v124 = swift_allocObject();
    OUTLINED_FUNCTION_64_8(v124);
  }

  OUTLINED_FUNCTION_125_4();
  v125();
  OUTLINED_FUNCTION_105_5();
  v71();
  if (sub_1AC637EF8())
  {
    v126 = OUTLINED_FUNCTION_118_6();
    OUTLINED_FUNCTION_99();
    v127 = swift_allocObject();
    OUTLINED_FUNCTION_64_8(v127);
    if (v126)
    {
      goto LABEL_64;
    }
  }

  else
  {
    OUTLINED_FUNCTION_99();
    v128 = swift_allocObject();
    OUTLINED_FUNCTION_64_8(v128);
  }

  OUTLINED_FUNCTION_125_4();
  v129();
  OUTLINED_FUNCTION_105_5();
  v71();
  if (sub_1AC637EF8())
  {
    OUTLINED_FUNCTION_99();
    v130 = swift_allocObject();
    *(v130 + 16) = v112;
    *(v130 + 24) = v78;
    v62 = v273;
  }

  else
  {
    v131 = OUTLINED_FUNCTION_118_6();
    OUTLINED_FUNCTION_99();
    v71 = swift_allocObject();
    *(v71 + 2) = v112;
    *(v71 + 3) = v78;
    v62 = v273;
    if ((v131 & 1) == 0)
    {
      goto LABEL_66;
    }
  }

  OUTLINED_FUNCTION_125_4();
  v132();

  v77 = v283;
LABEL_28:
  v133 = v266;
  v240(v266 + OBJC_IVAR____TtC6Speech17TranscriberCommon_locale, v274, v77);
  if (v110 == 16)
  {
    v134 = 0;
  }

  else
  {
    v134 = v110;
  }

  *(v133 + OBJC_IVAR____TtC6Speech17TranscriberCommon_taskHint) = v134;
  LOBYTE(v284[0]) = v134;
  *(v133 + OBJC_IVAR____TtC6Speech17TranscriberCommon_preferredModelTaskNames) = TaskHint.preferredModelTaskNames.getter();
  v135 = 3;
  if ((v134 & 0xFE) == 0xE)
  {
    v135 = 7;
  }

  *(v133 + OBJC_IVAR____TtC6Speech17TranscriberCommon_modelTaskAssetType) = v135;
  *(v133 + OBJC_IVAR____TtC6Speech17TranscriberCommon_singleUtterance) = (v134 > 0xF) | (0x311Cu >> v134) & 1;
  v137 = v134 == 1 || v134 == 6;
  *(v133 + OBJC_IVAR____TtC6Speech17TranscriberCommon_concatenateUtterances) = v137;
  v138 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_65();
  v139 = sub_1AC79FF58();
  v140 = [v138 BOOLForKey_];

  LOBYTE(v141) = 0;
  if (v140)
  {
    v142 = v250;
  }

  else
  {
    v142 = v250;
    if (v110 <= 0xF)
    {
      v141 = 0xCE80u >> v110;
    }
  }

  *(v133 + OBJC_IVAR____TtC6Speech17TranscriberCommon_redact) = v141 & 1;
  sub_1AC5C6E6C();
  *(v133 + OBJC_IVAR____TtC6Speech17TranscriberCommon_transcriptionOptions) = v78;
  *(v133 + OBJC_IVAR____TtC6Speech17TranscriberCommon_reportingOptions) = v62;

  sub_1AC740B10(v142);
  v144 = v143;

  *(v133 + OBJC_IVAR____TtC6Speech17TranscriberCommon_attributeOptions) = sub_1AC6090B4(v144);
  v145 = sub_1AC637EF8();
  LODWORD(v282) = sub_1AC637EF8();

  v146 = *MEMORY[0x1E69E8790];
  v147 = OUTLINED_FUNCTION_72_6();
  v148(v147);
  v149 = v275;
  sub_1AC7A0378();
  v150 = OUTLINED_FUNCTION_390();
  v151(v150);
  (*(v276 + 16))(v133 + OBJC_IVAR____TtC6Speech17TranscriberCommon__results, v149, v277);
  if (v145)
  {
    v152 = 1;
    v153 = v279;
    v154 = v249;
  }

  else
  {
    v154 = v249;
    v155 = OUTLINED_FUNCTION_184_0();
    v153 = v279;
    v156(v155);
    v152 = 0;
  }

  __swift_storeEnumTagSinglePayload(v154, v152, 1, v153);
  sub_1AC637E08();
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE88, &qword_1AC7B2938);
  v158 = v280;
  OUTLINED_FUNCTION_65_0();
  v162 = __swift_storeEnumTagSinglePayload(v159, v160, v161, v157);
  MEMORY[0x1EEE9AC00](v162);
  *(&v233 - 2) = v158;
  (*(v255 + 104))(v253, v146, v257);
  v163 = v251;
  sub_1AC7A03B8();
  (*(v252 + 32))(v133 + OBJC_IVAR____TtC6Speech17TranscriberCommon__multisegmentResults, v163, v256);
  if (v145)
  {
    sub_1AC5C6E6C();
  }

  else
  {
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v164, v165, v166, v157);
  }

  v167 = v265;
  v168 = v282;
  sub_1AC637E08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE90, &qword_1AC7B2940);
  OUTLINED_FUNCTION_107_4();
  OUTLINED_FUNCTION_65_0();
  v172 = __swift_storeEnumTagSinglePayload(v169, v170, v171, v145);
  MEMORY[0x1EEE9AC00](v172);
  *(&v233 - 2) = v167;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE78, &qword_1AC7B28C8);
  (*(v262 + 104))(v261, v146, v264);
  v173 = v258;
  sub_1AC7A03B8();
  (*(v259 + 32))(v133 + OBJC_IVAR____TtC6Speech17TranscriberCommon__muxMultisegmentResults, v173, v263);
  if (v168)
  {
    sub_1AC5C6E6C();
  }

  else
  {
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v174, v175, v176, v145);
  }

  v177 = v243;
  v179 = v279;
  v178 = v280;
  v180 = v269;
  sub_1AC637E08();
  sub_1AC5C08FC(v285);
  memcpy(v284 + 4, v285, 0x101uLL);
  sub_1AC5C720C(v281, &qword_1EB56C318, &unk_1AC7A8790);
  v181 = v177;
  v182 = v283;
  v180(v181, v283);
  (*(v272 + 8))(v278, v179);
  (*(v276 + 8))(v275, v277);
  v180(v274, v182);
  v183 = (v133 + OBJC_IVAR____TtC6Speech17TranscriberCommon_lastRecognizedFinalMultisegmentResult);
  *v183 = 0;
  memcpy(v183 + 1, v284, 0x105uLL);
  sub_1AC5C720C(v167, &qword_1EB56DEC8, &unk_1AC7B2BA0);
  sub_1AC5C720C(v178, &qword_1EB56DF08, &qword_1AC7B2BF0);
  OUTLINED_FUNCTION_105();
}

unint64_t sub_1AC74A410(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v3 = *(a1 + 16);
  }

  else
  {
    sub_1AC7A09C8();

    sub_1AC61BA94();
    v4 = sub_1AC7A0458();
    MEMORY[0x1B26E8C40](v4);

    MEMORY[0x1B26E8C40](46, 0xE100000000000000);
    v3 = 0xD000000000000026;
    swift_beginAccess();
    *(a1 + 16) = 0xD000000000000026;
    *(a1 + 24) = 0x80000001AC7BA650;
  }

  return v3;
}

uint64_t sub_1AC74A50C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1AC5C720C(a2, a3, a4);
  v6 = OUTLINED_FUNCTION_89();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80();
  (*(v9 + 16))(a2, a1, v8);
  OUTLINED_FUNCTION_150_1();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v8);
}

uint64_t sub_1AC74A5A4(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v52 = sub_1AC79F9C8();
  v45 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v44 = &v42[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8F0, &qword_1AC7B09C8);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v42[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C070, &qword_1AC7A8770);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v42[-v11];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42[-v13];
  v15 = sub_1AC79FAF8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v49 = &v42[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v48 = &v42[-v20];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v42[-v22];
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v42[-v24];
  v51 = a1;
  sub_1AC79FB08();
  sub_1AC79FAC8();
  v26 = *(v16 + 8);
  v46 = v16 + 8;
  v26(v25, v15);
  sub_1AC79FB08();
  sub_1AC79FAC8();
  v50 = v15;
  v47 = v26;
  v26(v23, v15);
  v27 = v54;
  v28 = *(v5 + 56);
  sub_1AC5C6E6C();
  sub_1AC5C6E6C();
  v29 = v52;
  if (__swift_getEnumTagSinglePayload(v27, 1, v52) == 1)
  {
    sub_1AC5C720C(v12, &qword_1EB56C070, &qword_1AC7A8770);
    sub_1AC5C720C(v14, &qword_1EB56C070, &qword_1AC7A8770);
    if (__swift_getEnumTagSinglePayload(&v27[v28], 1, v29) == 1)
    {
      sub_1AC5C720C(v27, &qword_1EB56C070, &qword_1AC7A8770);
LABEL_9:
      v32 = 1;
      return v32 & 1;
    }

    goto LABEL_6;
  }

  sub_1AC5C6E6C();
  if (__swift_getEnumTagSinglePayload(&v27[v28], 1, v29) == 1)
  {
    sub_1AC5C720C(v12, &qword_1EB56C070, &qword_1AC7A8770);
    sub_1AC5C720C(v14, &qword_1EB56C070, &qword_1AC7A8770);
    (*(v45 + 8))(v53, v29);
LABEL_6:
    sub_1AC5C720C(v27, &qword_1EB56D8F0, &qword_1AC7B09C8);
    goto LABEL_7;
  }

  v36 = v45;
  v37 = &v27[v28];
  v38 = v44;
  (*(v45 + 32))(v44, v37, v29);
  sub_1AC753294(&qword_1EB56D908, MEMORY[0x1E6969610]);
  v39 = v53;
  v43 = sub_1AC79FED8();
  v40 = *(v36 + 8);
  v40(v38, v29);
  sub_1AC5C720C(v12, &qword_1EB56C070, &qword_1AC7A8770);
  sub_1AC5C720C(v14, &qword_1EB56C070, &qword_1AC7A8770);
  v40(v39, v29);
  sub_1AC5C720C(v54, &qword_1EB56C070, &qword_1AC7A8770);
  if (v43)
  {
    goto LABEL_9;
  }

LABEL_7:
  v30 = v48;
  sub_1AC79FB08();
  v31 = v49;
  sub_1AC79FB08();
  v32 = sub_1AC79FAB8();
  v33 = v31;
  v34 = v50;
  v35 = v47;
  v47(v33, v50);
  v35(v30, v34);
  return v32 & 1;
}

void sub_1AC74AB40()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v4 = v3;
  v5 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_40();
  v78 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_602();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v9 = OUTLINED_FUNCTION_167(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_4();
  v75 = v10;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C320, &qword_1AC7A87A0);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_4();
  v76 = v14;
  OUTLINED_FUNCTION_34();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v75 - v17;
  v19 = *(v16 + 48);
  v77 = v4;
  OUTLINED_FUNCTION_117();
  sub_1AC5C6E6C();
  v20 = v2;
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_14_7(v18);
  if (v21)
  {
    OUTLINED_FUNCTION_14_7(&v18[v19]);
    if (v21)
    {
      sub_1AC5C720C(v18, &qword_1EB56BB68, &qword_1AC7A8490);
      goto LABEL_12;
    }

LABEL_9:
    v24 = v18;
LABEL_10:
    sub_1AC5C720C(v24, &qword_1EB56C320, &qword_1AC7A87A0);
    goto LABEL_13;
  }

  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_14_7(&v18[v19]);
  if (v21)
  {
    v22 = OUTLINED_FUNCTION_388();
    v23(v22);
    goto LABEL_9;
  }

  v25 = v78;
  (*(v78 + 32))(v0, &v18[v19], v5);
  OUTLINED_FUNCTION_8_14();
  sub_1AC753294(v26, v27);
  v28 = sub_1AC79FED8();
  v29 = *(v25 + 8);
  v29(v0, v5);
  v30 = OUTLINED_FUNCTION_388();
  (v29)(v30);
  sub_1AC5C720C(v18, &qword_1EB56BB68, &qword_1AC7A8490);
  if ((v28 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_12:
  v31 = type metadata accessor for TranscriberCommon.ModelOptions(0);
  v32 = v77;
  if (*(v77 + *(v31 + 20)) != *(v20 + *(v31 + 20)))
  {
    goto LABEL_13;
  }

  v33 = v31;
  v34 = v20;
  v35 = *(v31 + 24);
  v36 = (v77 + v35);
  v37 = *(v77 + v35 + 8);
  v38 = (v20 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_13;
    }

    v40 = *v36 == *v38 && v37 == v39;
    if (!v40 && (sub_1AC7A0D38() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v39)
  {
    goto LABEL_13;
  }

  v41 = *(v12 + 48);
  v42 = v76;
  sub_1AC5C6E6C();
  v43 = v42;
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_14_7(v42);
  if (!v21)
  {
    sub_1AC5C6E6C();
    OUTLINED_FUNCTION_14_7(v42 + v41);
    if (!v44)
    {
      v47 = v78;
      (*(v78 + 32))(v0, v43 + v41, v5);
      OUTLINED_FUNCTION_8_14();
      sub_1AC753294(v48, v49);
      v50 = sub_1AC79FED8();
      v51 = *(v47 + 8);
      v51(v0, v5);
      v52 = OUTLINED_FUNCTION_388();
      (v51)(v52);
      sub_1AC5C720C(v43, &qword_1EB56BB68, &qword_1AC7A8490);
      if ((v50 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_33;
    }

    v45 = OUTLINED_FUNCTION_39();
    v46(v45);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_14_7(v42 + v41);
  if (!v21)
  {
LABEL_31:
    v24 = v42;
    goto LABEL_10;
  }

  sub_1AC5C720C(v42, &qword_1EB56BB68, &qword_1AC7A8490);
LABEL_33:
  v53 = v33[8];
  v54 = (v32 + v53);
  v55 = *(v32 + v53 + 8);
  v56 = (v34 + v53);
  v57 = v56[1];
  if (v55)
  {
    if (!v57)
    {
      goto LABEL_13;
    }

    v58 = *v54 == *v56 && v55 == v57;
    if (!v58 && (sub_1AC7A0D38() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v57)
  {
    goto LABEL_13;
  }

  sub_1AC6290FC();
  if (v59)
  {
    OUTLINED_FUNCTION_39_6();
    if (v21)
    {
      OUTLINED_FUNCTION_39_6();
      if (v21)
      {
        v60 = v33[12];
        v61 = *(v34 + v60);
        if (*(v32 + v60))
        {
          if (!v61)
          {
            goto LABEL_13;
          }

          v62 = OUTLINED_FUNCTION_89();
          sub_1AC630858(v62, v63);
          v65 = v64;

          if ((v65 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else if (v61)
        {
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_39_6();
        if (!v21)
        {
          goto LABEL_13;
        }

        v66 = v33[14];
        v67 = *(v32 + v66);
        v68 = *(v34 + v66);
        if (v67)
        {
          if (!v68)
          {
            goto LABEL_13;
          }

          sub_1AC5CF764(0, &qword_1EB56D120, off_1E797AD28);
          v69 = v68;
          v70 = v67;
          v71 = sub_1AC7A0758();

          if ((v71 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else if (v68)
        {
          goto LABEL_13;
        }

        v72 = v33[15];
        if (*(v77 + v72) && *(v34 + v72))
        {

          v73 = OUTLINED_FUNCTION_89();
          sub_1AC629308(v73, v74);
        }
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_105();
}

void sub_1AC74B160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_6();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v32 = OUTLINED_FUNCTION_167(v31);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &a9 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &a9 - v36;
  OUTLINED_FUNCTION_74_0();
  sub_1AC5C6E6C();
  v38 = OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_96(v38, v39, v26);
  if (v40)
  {
    OUTLINED_FUNCTION_80_1();
  }

  else
  {
    OUTLINED_FUNCTION_19_13();
    v41(v30, v37, v26);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_8_14();
    v44 = sub_1AC753294(v42, v43);
    OUTLINED_FUNCTION_149_1(v44);
    v45 = OUTLINED_FUNCTION_117();
    v46(v45);
  }

  v47 = type metadata accessor for TranscriberCommon.ModelOptions(0);
  sub_1AC7A0E98();
  if (*(v23 + v47[6] + 8))
  {
    OUTLINED_FUNCTION_83();
    sub_1AC7A0048();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_96(v35, 1, v26);
  if (v40)
  {
    OUTLINED_FUNCTION_80_1();
  }

  else
  {
    OUTLINED_FUNCTION_19_13();
    v48(v30, v35, v26);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_8_14();
    v51 = sub_1AC753294(v49, v50);
    OUTLINED_FUNCTION_149_1(v51);
    v52 = OUTLINED_FUNCTION_117();
    v53(v52);
  }

  if (*(v23 + v47[8] + 8))
  {
    OUTLINED_FUNCTION_83();
    sub_1AC7A0048();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  sub_1AC633F38();
  sub_1AC7A0E98();
  sub_1AC7A0E98();
  v54 = *(v23 + v47[12]);
  if (v54)
  {
    OUTLINED_FUNCTION_83();
    sub_1AC6346E0(v25, v54);
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  sub_1AC7A0E98();
  v55 = *(v23 + v47[14]);
  if (v55)
  {
    OUTLINED_FUNCTION_83();
    v56 = v55;
    OUTLINED_FUNCTION_86();
    sub_1AC7A0768();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  if (*(v23 + v47[15]))
  {
    OUTLINED_FUNCTION_83();
    sub_1AC633E98();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC74B4B8()
{
  sub_1AC7A0E78();
  sub_1AC74B160(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC74B504(uint64_t a1)
{
  sub_1AC7A0E78();
  sub_1AC74B160(v10, v1, v2, v3, v4, v5, v6, v7, v9, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10]);
  return sub_1AC7A0EC8();
}

void sub_1AC74B560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22)
{
  OUTLINED_FUNCTION_104();
  v24 = v22;
  v200 = v25;
  v198 = v26;
  v196 = v27;
  v197 = v28;
  v194 = v29;
  v195 = v30;
  v223 = v31;
  v33 = v32;
  v183 = *v24;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF58, &qword_1AC7B2CA8);
  OUTLINED_FUNCTION_40();
  v211 = v34;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_89_1();
  v210 = v36;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C348, &qword_1AC7A8820);
  OUTLINED_FUNCTION_40();
  v208 = v37;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_89_1();
  v207 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEC8, &unk_1AC7B2BA0);
  v41 = OUTLINED_FUNCTION_167(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2_4();
  v209 = v42;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_91();
  v214 = v44;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF60, &qword_1AC7B2CB0);
  OUTLINED_FUNCTION_40();
  v204 = v45;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_89_1();
  v202 = v47;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C340, &qword_1AC7A8810);
  OUTLINED_FUNCTION_40();
  v201 = v48;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_89_1();
  v199 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF08, &qword_1AC7B2BF0);
  v52 = OUTLINED_FUNCTION_167(v51);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_2_4();
  v203 = v53;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_91();
  v222 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF18, &qword_1AC7B2C00);
  OUTLINED_FUNCTION_167(v56);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_89_1();
  v193 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF68, &unk_1AC7B2CB8);
  OUTLINED_FUNCTION_40();
  v191 = v60;
  v192 = v59;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_89_1();
  v190 = v62;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE80, &qword_1AC7B2930);
  OUTLINED_FUNCTION_40();
  v216 = v63;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_89_1();
  v220 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C330, &qword_1AC7A8800);
  OUTLINED_FUNCTION_40();
  v218 = v67;
  v219 = v66;
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_89_1();
  v217 = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  OUTLINED_FUNCTION_167(v70);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_72_5();
  v72 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v74 = v73;
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_2_4();
  v189 = v76;
  OUTLINED_FUNCTION_34();
  v78 = MEMORY[0x1EEE9AC00](v77);
  v80 = &v177 - v79;
  v81 = MEMORY[0x1EEE9AC00](v78);
  v83 = &v177 - v82;
  v84 = MEMORY[0x1EEE9AC00](v81);
  v86 = &v177 - v85;
  v87 = v24 + OBJC_IVAR____TtC6Speech17TranscriberCommon_assetsTaskName;
  *v87 = 0;
  *(v87 + 2) = 0;
  *(v87 + 1) = 0;
  v182 = v87 + 8;
  v188 = v24;
  v88 = v24 + OBJC_IVAR____TtC6Speech17TranscriberCommon__workerWithLocked;
  *v88 = 0;
  v88[16] = 0;
  *(v88 + 1) = 0;
  Locale.languageRegionLocale.getter(v84, v89, v90, v91, v92, v93, v94, v95, v177, v178, v179, v180, v181, (v88 + 8), v182, v183, v184, v185, v186, v187);
  v96 = OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_96(v96, v97, v72);
  v224 = v72;
  if (v98)
  {
    v161 = v74;
    v162 = v33;
    sub_1AC5C720C(v23, &qword_1EB56BFD8, &qword_1AC7A83F0);
    if (off_1ED937D60 != -1)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v163 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v163, qword_1ED9386C8);
      (*(v161 + 16))(v83, v162, v224);
      v164 = sub_1AC79FDC8();
      sub_1AC7A05F8();
      OUTLINED_FUNCTION_36_11();
      if (os_log_type_enabled(v164, v165))
      {
        v166 = OUTLINED_FUNCTION_150();
        v162 = OUTLINED_FUNCTION_48();
        v226[0] = v162;
        *v166 = 136315138;
        v225[0] = 0;
        v225[1] = 0xE000000000000000;
        sub_1AC7A09C8();
        OUTLINED_FUNCTION_65();
        MEMORY[0x1B26E8C40](0xD000000000000049);
        OUTLINED_FUNCTION_3_16();
        sub_1AC753294(v167, v168);
        v169 = v224;
        v170 = sub_1AC7A0CC8();
        MEMORY[0x1B26E8C40](v170);

        MEMORY[0x1B26E8C40](46, 0xE100000000000000);
        v171 = v225[0];
        v172 = v225[1];
        v173 = *(v161 + 8);
        v161 += 8;
        v173(v83, v169);
        v174 = sub_1AC5CFE74(v171, v172, v226);

        *(v166 + 4) = v174;
        OUTLINED_FUNCTION_111_6(&dword_1AC5BC000, v175, v86, "Failed precondition: %s");
        OUTLINED_FUNCTION_19_15();
        OUTLINED_FUNCTION_70();
      }

      else
      {

        v176 = *(v161 + 8);
        v161 += 8;
        v176(v83, v224);
      }

      __break(1u);
LABEL_22:
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }
  }

  OUTLINED_FUNCTION_19_13();
  v99(v86, v23, v72);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v185 = a21;
  v100 = a22;
  v101 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v101, qword_1ED9386C8);
  v102 = *(v74 + 16);
  v187 = v33;
  v102(v80, v33, v72);
  v103 = v189;
  v184 = v102;
  v102(v189, v86, v72);
  v104 = sub_1AC79FDC8();
  v105 = sub_1AC7A05D8();
  v106 = OUTLINED_FUNCTION_366(v105);
  v186 = v74;
  v215 = v86;
  if (v106)
  {
    v107 = OUTLINED_FUNCTION_448();
    HIDWORD(v181) = a22;
    v108 = v107;
    v180 = OUTLINED_FUNCTION_494();
    v225[0] = v180;
    *v108 = 136315394;
    OUTLINED_FUNCTION_3_16();
    sub_1AC753294(v109, v110);
    v179 = v104;
    v111 = sub_1AC7A0CC8();
    v113 = v112;
    HIDWORD(v178) = v105;
    v114 = *(v74 + 8);
    v114(v80, v224);
    sub_1AC5CFE74(v111, v113, v225);
    OUTLINED_FUNCTION_152_2();
    *(v108 + 4) = v111;
    *(v108 + 12) = 2080;
    v72 = v224;
    v115 = sub_1AC7A0CC8();
    v117 = v116;
    v189 = v114;
    v114(v103, v72);
    sub_1AC5CFE74(v115, v117, v225);
    OUTLINED_FUNCTION_152_2();
    *(v108 + 14) = v115;
    v118 = v179;
    _os_log_impl(&dword_1AC5BC000, v179, BYTE4(v178), "Transcriber initialized with locale: %s, effective locale (language-region) pair: %s", v108, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_70();
    v100 = BYTE4(v181);
    v86 = v215;
    OUTLINED_FUNCTION_70();
  }

  else
  {

    v119 = *(v74 + 8);
    v119(v103, v72);
    v189 = v119;
    v119(v80, v72);
  }

  v120 = v223;
  v121 = v188;
  v184(v188 + OBJC_IVAR____TtC6Speech17TranscriberCommon_locale, v86, v72);
  *(v121 + OBJC_IVAR____TtC6Speech17TranscriberCommon_taskHint) = 16;
  v184 = OBJC_IVAR____TtC6Speech17TranscriberCommon_preferredModelTaskNames;
  *(v121 + OBJC_IVAR____TtC6Speech17TranscriberCommon_preferredModelTaskNames) = v194;
  *(v121 + OBJC_IVAR____TtC6Speech17TranscriberCommon_modelTaskAssetType) = v195;
  *(v121 + OBJC_IVAR____TtC6Speech17TranscriberCommon_singleUtterance) = v196 & 1;
  *(v121 + OBJC_IVAR____TtC6Speech17TranscriberCommon_concatenateUtterances) = v197 & 1;
  *(v121 + OBJC_IVAR____TtC6Speech17TranscriberCommon_redact) = v100 & 1;
  sub_1AC5C6E6C();
  *(v121 + OBJC_IVAR____TtC6Speech17TranscriberCommon_transcriptionOptions) = v198;
  *(v121 + OBJC_IVAR____TtC6Speech17TranscriberCommon_reportingOptions) = v200;

  sub_1AC740B10(v185);
  OUTLINED_FUNCTION_152_2();
  *(v121 + OBJC_IVAR____TtC6Speech17TranscriberCommon_attributeOptions) = sub_1AC6090B4(v120);
  v122 = sub_1AC637EF8();
  LODWORD(v198) = sub_1AC637EF8();

  v123 = *MEMORY[0x1E69E8790];
  v124 = OUTLINED_FUNCTION_72_6();
  v125(v124);
  v126 = v217;
  v127 = v220;
  sub_1AC7A0378();
  v128 = OUTLINED_FUNCTION_390();
  v129(v128);
  (*(v218 + 16))(v121 + OBJC_IVAR____TtC6Speech17TranscriberCommon__results, v126, v219);
  if (v122)
  {
    v130 = 1;
    v131 = v221;
    v132 = v222;
    v133 = v193;
  }

  else
  {
    v133 = v193;
    v134 = v127;
    v131 = v221;
    (*(v216 + 16))(v193, v134, v221);
    v130 = 0;
    v132 = v222;
  }

  __swift_storeEnumTagSinglePayload(v133, v130, 1, v131);
  sub_1AC637E08();
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE88, &qword_1AC7B2938);
  OUTLINED_FUNCTION_65_0();
  v139 = __swift_storeEnumTagSinglePayload(v136, v137, v138, v135);
  MEMORY[0x1EEE9AC00](v139);
  *(&v177 - 2) = v132;
  (*(v204 + 104))(v202, v123, v206);
  v140 = v199;
  sub_1AC7A03B8();
  (*(v201 + 32))(v121 + OBJC_IVAR____TtC6Speech17TranscriberCommon__multisegmentResults, v140, v205);
  if (v122)
  {
    sub_1AC5C6E6C();
  }

  else
  {
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v141, v142, v143, v135);
  }

  sub_1AC637E08();
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE90, &qword_1AC7B2940);
  v145 = v214;
  OUTLINED_FUNCTION_65_0();
  v149 = __swift_storeEnumTagSinglePayload(v146, v147, v148, v144);
  MEMORY[0x1EEE9AC00](v149);
  *(&v177 - 2) = v145;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE78, &qword_1AC7B28C8);
  (*(v211 + 104))(v210, v123, v213);
  v150 = v207;
  sub_1AC7A03B8();
  (*(v208 + 32))(v121 + OBJC_IVAR____TtC6Speech17TranscriberCommon__muxMultisegmentResults, v150, v212);
  if (v198)
  {
    sub_1AC5C6E6C();
  }

  else
  {
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v151, v152, v153, v144);
  }

  v154 = v187;
  v155 = v224;
  OUTLINED_FUNCTION_99_2();
  sub_1AC637E08();
  sub_1AC5C08FC(v226);
  memcpy(v225 + 4, v226, 0x101uLL);
  sub_1AC5C720C(v223, &qword_1EB56C318, &unk_1AC7A8790);
  v156 = v154;
  v157 = v189;
  v189(v156, v155);
  (*(v216 + 8))(v220, v221);
  (*(v218 + 8))(v217, v219);
  v157(v215, v155);
  v158 = (v121 + OBJC_IVAR____TtC6Speech17TranscriberCommon_lastRecognizedFinalMultisegmentResult);
  *v158 = 0;
  memcpy(v158 + 1, v225, 0x105uLL);
  v159 = OUTLINED_FUNCTION_388();
  sub_1AC5C720C(v159, v160, &unk_1AC7B2BA0);
  sub_1AC5C720C(v222, &qword_1EB56DF08, &qword_1AC7B2BF0);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC74C5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC74C5D0, 0, 0);
}

uint64_t sub_1AC74C5D0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return MEMORY[0x1EEE6DFA0](sub_1AC74C600, v1, 0);
  }

  **(v0 + 16) = 1;
  return OUTLINED_FUNCTION_34_0();
}

uint64_t sub_1AC74C600()
{
  OUTLINED_FUNCTION_85();
  sub_1AC765B80(*(v0 + 32), *(v0 + 24));
  v1 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC74C65C(uint64_t a1, unint64_t a2, CMTimeValue a3, unsigned __int8 *a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int32_t a12, unsigned __int8 a13)
{
  v290 = a7;
  v291 = a8;
  v289 = a6;
  v305 = a3;
  v301 = a13;
  v325 = a12;
  v324 = a11;
  v323 = a10;
  v322 = a9;
  v17 = a5[1];
  v294 = *a5;
  v295 = v17;
  v18 = *(a5 + 4);
  v292 = *(a5 + 5);
  v293 = v18;
  v312 = a5;
  v19 = sub_1AC79F618();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v337 = &v276[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_1AC79F5C8();
  v310 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v342 = &v276[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x1EEE9AC00](v22);
  v329 = &v276[-v25];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v330 = &v276[-v27];
  v28 = MEMORY[0x1EEE9AC00](v26);
  v313 = &v276[-v29];
  v30 = MEMORY[0x1EEE9AC00](v28);
  v308 = &v276[-v31];
  v32 = MEMORY[0x1EEE9AC00](v30);
  v345 = &v276[-v33];
  v34 = MEMORY[0x1EEE9AC00](v32);
  v331 = &v276[-v35];
  v36 = MEMORY[0x1EEE9AC00](v34);
  v335 = &v276[-v37];
  v38 = MEMORY[0x1EEE9AC00](v36);
  v311 = &v276[-v39];
  MEMORY[0x1EEE9AC00](v38);
  v309 = &v276[-v40];
  v41 = *a4;
  v296 = v13;
  v42 = sub_1AC637EF8();
  v43 = MEMORY[0x1E69E7CC0];
  j = &qword_1EB56E000;
  v45 = &selRef_removeObjectForKey_;
  v46 = 0x1FC27C000uLL;
  v47 = &off_1AC7A6000;
  v327 = v21;
  switch(v41)
  {
    case 1:
    case 2:
    case 5:
    case 6:
      return v43;
    case 3:
    case 4:
      if ((v42 & 1) == 0)
      {
        goto LABEL_178;
      }

      v277 = v42;
      v300 = v41;
      v49 = *(a1 + 16);
      if (v49)
      {
        __src[0].value = MEMORY[0x1E69E7CC0];
        sub_1AC631454(0, v49, 0);
        v50 = 0;
        value = __src[0].value;
        v52 = a1 + 32;
        do
        {
          v53 = *(v52 + 8 * v50);

          sub_1AC74EBC0(v50, v53, a2);
          v55 = v54;

          __src[0].value = value;
          v57 = *(value + 16);
          v56 = *(value + 24);
          v58 = v57 + 1;
          if (v57 >= v56 >> 1)
          {
            sub_1AC631454(v56 > 1, v57 + 1, 1);
            value = __src[0].value;
          }

          ++v50;
          *(value + 16) = v58;
          *(value + 8 * v57 + 32) = v55;
        }

        while (v49 != v50);
        v287 = value;
      }

      else
      {
        v59 = MEMORY[0x1E69E7CC0];
        v58 = *(MEMORY[0x1E69E7CC0] + 16);
        v287 = MEMORY[0x1E69E7CC0];
        if (!v58)
        {
          goto LABEL_43;
        }
      }

      v60 = v287;
      sub_1AC61C258();
      v47 = *(v60 + 32);
      v340 = v60 + 32;
      j = sub_1AC64C73C(1, v60);
      v62 = v61;
      a2 = v63;

      v344 = 0;
      v297 = MEMORY[0x1E69E7CC0];
      v59 = j;
LABEL_12:
      v64 = (2 * v59) | 1;
      for (i = v59; ; ++i)
      {
        v66 = v47;
        if (v62 == i)
        {
          break;
        }

        if (v59 < j || i >= v62)
        {
          goto LABEL_272;
        }

        if ((v59 & 0x8000000000000000) != 0)
        {
          goto LABEL_273;
        }

        if (i >= *(a2 + 16))
        {
          goto LABEL_274;
        }

        v47 = *(a2 + 8 * i + 32);
        if (*(v66 + 16) != 1 || *(v47 + 16) != 1)
        {
          if (i < v344)
          {
            goto LABEL_286;
          }

          v68 = *(v287 + 16);
          v69 = v68 >= v344 && v68 >= i;
          v59 = v297;
          if (!v69)
          {
            goto LABEL_287;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AC60DEE0();
            v59 = v74;
          }

          v70 = *(v59 + 24);
          v343 = *(v59 + 16);
          v341 = v343 + 1;
          if (v343 >= v70 >> 1)
          {
            sub_1AC60DEE0();
            v297 = v75;
          }

          else
          {
            v297 = v59;
          }

          v59 = i + 1;

          v71 = v297;
          *(v297 + 16) = v341;
          v72 = (v71 + 32 * v343);
          v73 = v340;
          v72[4] = v287;
          v72[5] = v73;
          v72[6] = v344;
          v72[7] = v64;
          v344 = i;
          goto LABEL_12;
        }

        v64 += 2;
      }

      if (v344 == v58)
      {

        v46 = 0x1E797E000;
        v59 = v297;
        goto LABEL_43;
      }

      v46 = 0x1E797E000;
      if (v58 < v344)
      {
        __break(1u);
      }

      else
      {
        sub_1AC5CA588(v344, v58, v287);
        a2 = v76;
        v58 = v77;
        v59 = v78;
        v62 = v79;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_40;
        }
      }

      sub_1AC60DEE0();
      v297 = v274;
LABEL_40:
      v47 = *(v297 + 16);
      if (v47 >= *(v297 + 24) >> 1)
      {
        sub_1AC60DEE0();
        v297 = v275;
      }

      v80 = v297;
      *(v297 + 16) = v47 + 1;
      v81 = (v80 + 32 * v47);
      v81[4] = a2;
      v81[5] = v58;
      v81[6] = v59;
      v81[7] = v62;
      v59 = v80;
LABEL_43:
      v66 = 0;
      v82 = *(v59 + 16);
      v284 = v59 + 32;
      v285 = v82;
      v298 = (v310 + 16);
      v336 = (v310 + 32);
      v282 = OBJC_IVAR____TtC6Speech17TranscriberCommon_attributeOptions;
      v332 = (v310 + 8);
      v280 = xmmword_1AC7A6D00;
      v83 = MEMORY[0x1E69E7CC0];
      v45 = &selRef_removeObjectForKey_;
      v297 = v59;
LABEL_44:
      v283 = v83;
LABEL_45:
      if (v66 == v285)
      {
        goto LABEL_173;
      }

      sub_1AC61C258();
      if (__OFADD__(v66, 1))
      {
        goto LABEL_284;
      }

      v84 = (v284 + 32 * v66);
      v58 = v84[2];
      v59 = v84[3] >> 1;
      if (__OFSUB__(v59, v58))
      {
        goto LABEL_285;
      }

      v85 = *v84;
      v340 = v84[1];
      v286 = v66 + 1;
      v288 = v85;
      v334 = v66;
      if (v59 - v58 != 1)
      {
        v66 = v85;
        swift_unknownObjectRetain();
        v344 = MEMORY[0x1E69E7CC0];
        if (v58 == v59)
        {
LABEL_86:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD18, &unk_1AC7AB420);
          v86 = swift_allocObject();
          *(v86 + 16) = v280;
          *(v86 + 32) = v344;

          goto LABEL_87;
        }

        swift_unknownObjectRetain();
        v344 = MEMORY[0x1E69E7CC0];
        v338 = v59;
        while (1)
        {
          if (v58 >= v59)
          {
            goto LABEL_277;
          }

          v87 = *(v340 + 8 * v58);
          if (!*(v87 + 16))
          {
            goto LABEL_278;
          }

          j = *(v87 + 32);
          a2 = j >> 62;
          if (j >> 62)
          {
            v88 = sub_1AC7A08E8();
          }

          else
          {
            v88 = *((j & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v66 = v344 >> 62;
          if (v344 >> 62)
          {
            v89 = sub_1AC7A08E8();
          }

          else
          {
            v89 = *((v344 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v90 = v89 + v88;
          if (__OFADD__(v89, v88))
          {
            goto LABEL_279;
          }

          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          v343 = v88;
          if (isUniquelyReferenced_nonNull_bridgeObject)
          {
            break;
          }

          if (v66)
          {
            goto LABEL_66;
          }

LABEL_67:
          v344 = sub_1AC7A0A08();
          v92 = v344 & 0xFFFFFFFFFFFFFF8;
LABEL_68:
          v93 = *(v92 + 16);
          v47 = *(v92 + 24);
          if (a2)
          {
            v66 = v92;
            v96 = sub_1AC7A08E8();
            v92 = v66;
            v94 = v96;
            if (v96)
            {
LABEL_70:
              v66 = v343;
              if (((v47 >> 1) - v93) < v343)
              {
                goto LABEL_281;
              }

              v341 = v58;
              v95 = v92 + 8 * v93 + 32;
              v339 = v92;
              if (a2)
              {
                v66 = &qword_1EB56BD48;
                v58 = &qword_1AC7A8178;
                if (v94 < 1)
                {
                  goto LABEL_283;
                }

                v47 = sub_1AC5C8B9C(&qword_1EB56DF30, &qword_1EB56BD48, &qword_1AC7A8178);
                v97 = j;
                for (j = 0; j != v94; ++j)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD48, &qword_1AC7A8178);
                  v98 = sub_1AC752B00(__src, j, v97);
                  a2 = *v99;
                  (v98)(__src, 0);
                  *(v95 + 8 * j) = a2;
                }
              }

              else
              {
                a2 = j & 0xFFFFFFFFFFFFFF8;
                sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
                swift_arrayInitWithCopy();
              }

              v46 = 0x1E797E000;
              v58 = v341;
              v59 = v338;
              if (v343 > 0)
              {
                v100 = *(v339 + 16);
                v101 = __OFADD__(v100, v343);
                v102 = v100 + v343;
                if (v101)
                {
                  goto LABEL_282;
                }

                *(v339 + 16) = v102;
              }

              goto LABEL_82;
            }
          }

          else
          {
            v94 = *((j & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v94)
            {
              goto LABEL_70;
            }
          }

          if (v343 > 0)
          {
            goto LABEL_280;
          }

LABEL_82:
          if (++v58 == v59)
          {
            swift_unknownObjectRelease();
            goto LABEL_86;
          }
        }

        if (!v66)
        {
          v92 = v344 & 0xFFFFFFFFFFFFFF8;
          if (v90 <= *((v344 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        }

LABEL_66:
        sub_1AC7A08E8();
        goto LABEL_67;
      }

      if (v58 == v59)
      {
        goto LABEL_288;
      }

      if (v58 >= v59)
      {
        goto LABEL_289;
      }

      v86 = *(v340 + 8 * v58);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
LABEL_87:
      sub_1AC6A7A08(v86);
      v104 = v103;
      v106 = v105;

      if (v106 & 1) != 0 || (sub_1AC6A7C40(v86), (v108))
      {
LABEL_169:

        swift_unknownObjectRelease();
        v191 = MEMORY[0x1E69E7CC0];
        v45 = &selRef_removeObjectForKey_;
        goto LABEL_174;
      }

      v109 = v107;
      v110 = v325;
      CMTimeMakeWithSeconds(__src, v104, v325);
      sub_1AC7A0688();
      v304 = v86;
      CMTimeMakeWithSeconds(__src, v109, v110);
      v111 = sub_1AC7A0688();
      v47 = v112;
      a2 = v304;
      v281 = v113;
      sub_1AC7A0578();
      sub_1AC7A0538();
      v58 = *(a2 + 16);
      if (!v58)
      {

        v188 = MEMORY[0x1E69E7CC0];
        v45 = &selRef_removeObjectForKey_;
        goto LABEL_160;
      }

      v278 = v47;
      v279 = v111;
      v355.value = MEMORY[0x1E69E7CC0];
      v66 = &v355;
      sub_1AC631324(0, v58, 0);
      v114 = 0;
      v115 = *(v296 + v282);
      v307 = v355.value;
      v302 = v58;
      v303 = a2 + 32;
      v299 = (v334 == 0) & v301;
      v47 = v115 + 56;
      v59 = v327;
      v45 = &selRef_removeObjectForKey_;
      while (1)
      {
        if (v114 >= *(a2 + 16))
        {
          goto LABEL_275;
        }

        v306 = v114;
        v116 = *(v303 + 8 * v114);

        v316 = sub_1AC7A0558();
        v317 = v117;
        v315 = v118;
        v340 = v116 >> 62;
        if (!(v116 >> 62))
        {
          if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          goto LABEL_153;
        }

        if (sub_1AC7A08E8())
        {
          break;
        }

LABEL_153:
        sub_1AC79F508();

LABEL_154:
        v185 = v307;
        v355.value = v307;
        v58 = *(v307 + 16);
        v186 = *(v307 + 24);
        if (v58 >= v186 >> 1)
        {
          sub_1AC631324(v186 > 1, v58 + 1, 1);
          v185 = v355.value;
        }

        v66 = v306 + 1;
        *(v185 + 16) = v58 + 1;
        v187 = (*(v310 + 80) + 32) & ~*(v310 + 80);
        v307 = v185;
        (*(v310 + 32))(v185 + v187 + *(v310 + 72) * v58, v309, v59);
        v114 = v66;
        a2 = v304;
        if (v66 == v302)
        {

          v47 = v278;
          v111 = v279;
          v188 = v307;
LABEL_160:
          v59 = v297;
          if (*(v188 + 16))
          {
            sub_1AC649E14(v347, v111, v47, v281, v188, v352);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1AC60DE2C();
              v283 = v189;
            }

            a2 = *(v283 + 16);
            if (a2 >= *(v283 + 24) >> 1)
            {
              sub_1AC60DE2C();
              v283 = v190;
            }

            swift_unknownObjectRelease();
            v58 = v283;
            *(v283 + 16) = a2 + 1;
            memcpy((v58 + 80 * a2 + 32), v352, 0x50uLL);
            v83 = v58;
            v66 = v286;
            goto LABEL_44;
          }

          swift_unknownObjectRelease();
          v66 = v286;
          v83 = v283;
          goto LABEL_45;
        }
      }

      sub_1AC61C25C();
      v328 = v116;
      v333 = v116 & 0xC000000000000001;
      if ((v116 & 0xC000000000000001) != 0)
      {
        v119 = MEMORY[0x1B26E95B0](0, v116);
      }

      else
      {
        v119 = *(v116 + 32);
      }

      v120 = v119;
      v121 = [v119 v45[149]];
      v122 = sub_1AC79FF68();
      v124 = v123;

      if (v299 || [v120 hasSpaceBefore])
      {
        __src[0].value = 32;
        *&__src[0].timescale = 0xE100000000000000;
        MEMORY[0x1B26E8C40](v122, v124);

        v122 = __src[0].value;
        v124 = *&__src[0].timescale;
      }

      if ([v120 *(v46 + 2472)])
      {
        __src[0].value = v122;
        *&__src[0].timescale = v124;

        MEMORY[0x1B26E8C40](32, 0xE100000000000000);
      }

      v314 = HIDWORD(v317);
      sub_1AC79F608();
      sub_1AC79F5D8();
      [v120 start];
      if (v125 != 0.0 || ([v120 end], v126 != 0.0))
      {
        if (sub_1AC637EF8())
        {
          [v120 start];
          v127 = v325;
          CMTimeMakeWithSeconds(__src, v128, v325);
          v344 = sub_1AC7A0688();
          v343 = v129;
          v341 = v130;
          [v120 silenceStart];
          CMTimeMakeWithSeconds(__src, v131, v127);
          sub_1AC7A0688();
          v339 = HIDWORD(v132);
          sub_1AC7A0678();
          sub_1AC7A0578();
          v133 = v348.value;
          v134 = *&v348.timescale;
          epoch = v348.epoch;
          j = v349.value;
          v136 = *&v349.timescale;
          v344 = v349.epoch;
          __src[0] = v348;
          __src[1] = v349;
          LOBYTE(__src[2].value) = 0;
          sub_1AC64F69C();
          sub_1AC79F5E8();
          __src[0].value = v133;
          *&__src[0].timescale = v134;
          __src[0].epoch = epoch;
          __src[1].value = j;
          v45 = &selRef_removeObjectForKey_;
          *&__src[1].timescale = v136;
          v46 = 0x1E797E000;
          __src[1].epoch = v344;
          LOBYTE(__src[2].value) = 0;
          sub_1AC64F6F0();
          sub_1AC79F5E8();
        }
      }

      if (sub_1AC637EF8())
      {
        [v120 confidence];
        v59 = v327;
        if (v137 != 0.0)
        {
          [v120 confidence];
          *&v139 = v138 / 1000.0;
          *&__src[0].value = v138 / 1000.0;
          LOBYTE(__src[0].timescale) = 0;
          sub_1AC64F5F4();
          sub_1AC79F5E8();
          __src[0].value = v139;
          LOBYTE(__src[0].timescale) = 0;
          sub_1AC64F648();
          sub_1AC79F5E8();
        }
      }

      else
      {

        v59 = v327;
      }

      (*v298)(v335, v311, v59);
      v140 = v328;
      v141 = sub_1AC753228(v328, 1);
      v341 = v142;
      v334 = sub_1AC61C24C();
      sub_1AC61C24C();
      v143 = v140 & 0xFFFFFFFFFFFFFF8;
      v326 = v140 + 32;
      v339 = v140 & 0xFFFFFFFFFFFFFF8;
      if (v140 < 0)
      {
        v143 = v140;
      }

      v338 = v143;
      while (2)
      {
        v144 = v341;
        if (v141 == v334)
        {

          (*v332)(v311, v59);
          (*v336)(v309, v335, v59);
          goto LABEL_154;
        }

        v83 = v333;
        if (v333)
        {
          v145 = v141;
          v146 = v141;
          v147 = v328;
          v343 = MEMORY[0x1B26E95B0](v146, v328);
          v148 = MEMORY[0x1B26E95B0](v144, v147);
          goto LABEL_120;
        }

        if ((v141 & 0x8000000000000000) == 0)
        {
          v83 = *(v339 + 16);
          if (v141 >= v83)
          {
            goto LABEL_171;
          }

          if (v341 >= v83)
          {
            goto LABEL_172;
          }

          v145 = v141;
          v149 = *(v326 + 8 * v141);
          v150 = *(v326 + 8 * v341);
          v343 = v149;
          v148 = v150;
LABEL_120:
          j = v148;
          if (v340)
          {
            v151 = sub_1AC7A08E8();
            sub_1AC7A08E8();
          }

          else
          {
            v151 = *(v339 + 16);
          }

          if (v145 == v151)
          {
            __break(1u);
LABEL_168:
            __break(1u);
            goto LABEL_169;
          }

          v152 = v144 + 1;
          if (__OFADD__(v144, 1))
          {
            goto LABEL_168;
          }

          if (v340)
          {
            v155 = sub_1AC7A08E8();
            v344 = v144;
            v154 = v343;
            if (v152 == v155)
            {
              v344 = sub_1AC7A08E8();
              v152 = sub_1AC7A08E8();
            }
          }

          else
          {
            if (v152 == *(v339 + 16))
            {
              v153 = v144 + 1;
            }

            else
            {
              v153 = v144;
            }

            v344 = v153;
            v154 = v343;
          }

          v341 = v152;
          v156 = [j v45[149]];
          v157 = sub_1AC79FF68();
          v159 = v158;

          v160 = [v154 hasSpaceAfter];
          if ([j hasSpaceBefore] && !v160)
          {
            __src[0].value = 32;
            *&__src[0].timescale = 0xE100000000000000;
            MEMORY[0x1B26E8C40](v157, v159);

            v157 = __src[0].value;
            v159 = *&__src[0].timescale;
          }

          if ([j hasSpaceAfter])
          {
            __src[0].value = v157;
            *&__src[0].timescale = v159;

            MEMORY[0x1B26E8C40](32, 0xE100000000000000);
          }

          sub_1AC79F608();
          sub_1AC79F5D8();
          [j start];
          v45 = &selRef_removeObjectForKey_;
          v46 = 0x1E797E000;
          if (v161 == 0.0 && ([j end], v162 == 0.0))
          {
LABEL_144:
            if (*(v115 + 16))
            {
              sub_1AC7A0E78();
              MEMORY[0x1B26E9A40](1);
              v178 = sub_1AC7A0EC8();
              v179 = ~(-1 << *(v115 + 32));
              while (1)
              {
                v180 = v178 & v179;
                if (((*(v47 + (((v178 & v179) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v178 & v179)) & 1) == 0)
                {
                  break;
                }

                v178 = v180 + 1;
                if (*(*(v115 + 48) + v180) == 1)
                {
                  [j confidence];
                  if (v181 != 0.0)
                  {
                    [j confidence];
                    *&v183 = v182 / 1000.0;
                    *&__src[0].value = v182 / 1000.0;
                    LOBYTE(__src[0].timescale) = 0;
                    sub_1AC64F5F4();
                    sub_1AC79F5E8();
                    __src[0].value = v183;
                    LOBYTE(__src[0].timescale) = 0;
                    sub_1AC64F648();
                    sub_1AC79F5E8();
                  }

                  break;
                }
              }
            }
          }

          else if (*(v115 + 16))
          {
            sub_1AC7A0E78();
            MEMORY[0x1B26E9A40](0);
            v163 = sub_1AC7A0EC8();
            v164 = ~(-1 << *(v115 + 32));
            while (1)
            {
              v165 = v163 & v164;
              if (((*(v47 + (((v163 & v164) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v163 & v164)) & 1) == 0)
              {
                goto LABEL_144;
              }

              v163 = v165 + 1;
              if (!*(*(v115 + 48) + v165))
              {
                [j start];
                v166 = v325;
                CMTimeMakeWithSeconds(__src, v167, v325);
                v168 = sub_1AC7A0688();
                v320 = v169;
                v321 = v168;
                v319 = v170;
                [j silenceStart];
                CMTimeMakeWithSeconds(__src, v171, v166);
                sub_1AC7A0688();
                v318 = HIDWORD(v172);
                sub_1AC7A0678();
                sub_1AC7A0578();
                v173 = v350.value;
                v174 = *&v350.timescale;
                v175 = v350.epoch;
                v176 = v351.value;
                v177 = *&v351.timescale;
                v321 = v351.epoch;
                __src[0] = v350;
                __src[1] = v351;
                LOBYTE(__src[2].value) = 0;
                sub_1AC64F69C();
                sub_1AC79F5E8();
                __src[0].value = v173;
                *&__src[0].timescale = v174;
                v59 = v327;
                v45 = &selRef_removeObjectForKey_;
                __src[0].epoch = v175;
                __src[1].value = v176;
                v46 = 0x1E797E000;
                v154 = v343;
                *&__src[1].timescale = v177;
                __src[1].epoch = v321;
                LOBYTE(__src[2].value) = 0;
                sub_1AC64F6F0();
                sub_1AC79F5E8();
                goto LABEL_144;
              }
            }
          }

          v184 = v331;
          (*v336)(v331, v345, v59);
          sub_1AC753294(&qword_1EB56B478, MEMORY[0x1E6968848]);
          sub_1AC79F5A8();

          (*v332)(v184, v59);
          v141 = v344;
          continue;
        }

        break;
      }

      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      v191 = v83;
LABEL_174:

      v43 = v191;
      if (!*(v191 + 16))
      {

        v41 = v300;
        v47 = 0x1AC7A6000;
        j = 0x1EB56E000;
        LOBYTE(v42) = v277;
        goto LABEL_176;
      }

      return v43;
    default:
LABEL_176:
      if (v42)
      {
        v300 = v41;
        v58 = v305;

        goto LABEL_186;
      }

LABEL_178:
      v300 = v41;
      v192 = v305;

      sub_1AC748910(1, v192);
      v66 = v193;
      a2 = v194;
      v58 = v195;
      v59 = v196;
      if ((v196 & 1) == 0)
      {
        goto LABEL_179;
      }

      sub_1AC7A0D68();
      swift_unknownObjectRetain_n();
      v198 = swift_dynamicCastClass();
      if (!v198)
      {
        swift_unknownObjectRelease();
        v198 = MEMORY[0x1E69E7CC0];
      }

      v199 = *(v198 + 16);

      if (__OFSUB__(v59 >> 1, v58))
      {
        goto LABEL_290;
      }

      if (v199 != (v59 >> 1) - v58)
      {
        goto LABEL_291;
      }

      v58 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v45 = &selRef_removeObjectForKey_;
      if (!v58)
      {
        swift_unknownObjectRelease();
        v58 = MEMORY[0x1E69E7CC0];
      }

LABEL_186:
      v200 = *(v58 + 16);
      a2 = v337;
      if (!v200)
      {
        goto LABEL_264;
      }

      v346 = MEMORY[0x1E69E7CC0];
      v66 = &v346;
      sub_1AC631324(0, v200, 0);
      v59 = 0;
      v201 = v346;
      j = *(v296 + *(j + 1680));
      v314 = v58 + 32;
      v311 = (v310 + 16);
      v339 = j + 56;
      v338 = (v310 + 32);
      v335 = (v310 + 8);
      v202 = *(v47 + 3016);
      v305 = v58;
      v309 = v200;
      while (1)
      {
        if (v59 >= *(v58 + 16))
        {
          goto LABEL_276;
        }

        v203 = *(v314 + 8 * v59);

        v66 = v203;
        v319 = sub_1AC7A0558();
        v320 = v204;
        v318 = v205;
        v343 = v203 >> 62;
        v206 = v203 >> 62 ? sub_1AC7A08E8() : *((v203 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v316 = v59;
        if (v206)
        {
          break;
        }

        sub_1AC79F508();

LABEL_258:
        v346 = v201;
        v268 = *(v201 + 16);
        v267 = *(v201 + 24);
        if (v268 >= v267 >> 1)
        {
          v66 = &v346;
          sub_1AC631324(v267 > 1, v268 + 1, 1);
          v201 = v346;
        }

        v269 = v316 + 1;
        *(v201 + 16) = v268 + 1;
        v270 = v201 + ((*(v310 + 80) + 32) & ~*(v310 + 80)) + *(v310 + 72) * v268;
        v59 = v269;
        (*(v310 + 32))(v270, v308, v327);
        v58 = v305;
        if (v59 == v200)
        {
LABEL_264:

          sub_1AC752B88();
          v272 = v271;

          if (*(v272 + 16))
          {
            sub_1AC649E14(v312, v289, v290, v291, v272, __src);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD30, &qword_1AC7A8160);
            v273 = swift_allocObject();
            *(v273 + 16) = xmmword_1AC7A6D00;
            memcpy((v273 + 32), __src, 0x50uLL);
            return v273;
          }

          else
          {

            return MEMORY[0x1E69E7CC0];
          }
        }
      }

      v315 = v201;
      sub_1AC61C25C();
      v333 = v203;
      v334 = v203 & 0xC000000000000001;
      if ((v203 & 0xC000000000000001) != 0)
      {
        v207 = MEMORY[0x1B26E95B0](0, v203);
      }

      else
      {
        v207 = *(v203 + 32);
      }

      v208 = v207;
      v209 = [v207 v45[149]];
      v210 = sub_1AC79FF68();
      v58 = v211;

      if ((v301 & 1) != 0 || [v208 hasSpaceBefore])
      {
        __src[0].value = 32;
        *&__src[0].timescale = 0xE100000000000000;
        MEMORY[0x1B26E8C40](v210, v58);

        v210 = __src[0].value;
        v58 = *&__src[0].timescale;
      }

      if ([v208 hasSpaceAfter])
      {
        __src[0].value = v210;
        *&__src[0].timescale = v58;

        MEMORY[0x1B26E8C40](32, 0xE100000000000000);

        v58 = *&__src[0].timescale;
      }

      v212 = v333;
      v317 = HIDWORD(v320);
      sub_1AC79F608();
      sub_1AC79F5D8();
      [v208 start];
      if (v213 != 0.0 || ([v208 end], v214 != 0.0))
      {
        if (sub_1AC637EF8())
        {
          [v208 start];
          v215 = v325;
          CMTimeMakeWithSeconds(__src, v216, v325);
          v345 = sub_1AC7A0688();
          v344 = v217;
          v341 = v218;
          [v208 silenceStart];
          CMTimeMakeWithSeconds(__src, v219, v215);
          a2 = v337;
          sub_1AC7A0688();
          v340 = HIDWORD(v220);
          sub_1AC7A0678();
          sub_1AC7A0578();
          v58 = v353.value;
          v221 = *&v353.timescale;
          v222 = v353.epoch;
          v223 = v354.value;
          v224 = *&v354.timescale;
          v345 = v354.epoch;
          __src[0] = v353;
          __src[1] = v354;
          LOBYTE(__src[2].value) = 0;
          sub_1AC64F69C();
          sub_1AC79F5E8();
          __src[0].value = v58;
          *&__src[0].timescale = v221;
          __src[0].epoch = v222;
          __src[1].value = v223;
          v45 = &selRef_removeObjectForKey_;
          *&__src[1].timescale = v224;
          __src[1].epoch = v345;
          LOBYTE(__src[2].value) = 0;
          sub_1AC64F6F0();
          sub_1AC79F5E8();
          v212 = v333;
        }
      }

      if (sub_1AC637EF8())
      {
        [v208 confidence];
        v59 = v327;
        if (v225 != 0.0)
        {
          [v208 confidence];
          *&v227 = v226 / v202;
          *&__src[0].value = v226 / v202;
          LOBYTE(__src[0].timescale) = 0;
          sub_1AC64F5F4();
          sub_1AC79F5E8();
          __src[0].value = v227;
          LOBYTE(__src[0].timescale) = 0;
          sub_1AC64F648();
          sub_1AC79F5E8();
        }

        v212 = v333;
      }

      else
      {

        v59 = v327;
      }

      (*v311)(v330, v313, v59);
      v47 = sub_1AC753228(v212, 1);
      v344 = v228;
      v336 = sub_1AC61C24C();
      sub_1AC61C24C();
      v229 = v212 & 0xFFFFFFFFFFFFFF8;
      v332 = (v212 + 32);
      v341 = v212 & 0xFFFFFFFFFFFFFF8;
      if (v212 < 0)
      {
        v229 = v212;
      }

      v340 = v229;

      break;
  }

  while (1)
  {
    v66 = v344;
    if (v47 == v336)
    {

      v66 = v313;
      (*v335)(v313, v59);
      v265 = *v338;
      (*v338)(v66, v330, v59);
      if (v300)
      {

        v200 = v309;
        v201 = v315;
      }

      else
      {
        v266 = sub_1AC637EF8();
        v200 = v309;
        v201 = v315;
        if (v266)
        {
          if (sub_1AC7A05A8())
          {
            *&__src[0].value = v294;
            *&__src[0].epoch = v295;
            *&__src[1].timescale = v293;
            __src[1].epoch = v292;
            LOBYTE(__src[2].value) = 0;
          }

          else
          {
            memset(__src, 0, 48);
            LOBYTE(__src[2].value) = 1;
          }

          sub_1AC64F69C();
          v66 = v313;
          sub_1AC79F5E8();
        }
      }

      v265(v308, v313, v59);
      goto LABEL_258;
    }

    if (v334)
    {
      v230 = v333;
      v231 = MEMORY[0x1B26E95B0](v47, v333);
      v232 = MEMORY[0x1B26E95B0](v66, v230);
    }

    else
    {
      if ((v47 & 0x8000000000000000) != 0)
      {
        goto LABEL_269;
      }

      v233 = *(v341 + 16);
      if (v47 >= v233)
      {
        goto LABEL_270;
      }

      if (v344 >= v233)
      {
        goto LABEL_271;
      }

      v234 = v332[v344];
      v231 = v332[v47];
      v232 = v234;
    }

    v235 = v232;
    if (v343)
    {
      v345 = v232;
      v58 = sub_1AC7A08E8();
      v235 = v345;
      sub_1AC7A08E8();
    }

    else
    {
      v58 = *(v341 + 16);
    }

    if (v47 == v58)
    {
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      swift_unknownObjectRelease();
      v45 = &selRef_removeObjectForKey_;
LABEL_179:
      sub_1AC751E84(v66, a2, v58, v59, &qword_1EB56BD18, &unk_1AC7AB420, &qword_1EB56BD48, &qword_1AC7A8178);
      v58 = v197;
      swift_unknownObjectRelease();
      goto LABEL_186;
    }

    v47 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      goto LABEL_268;
    }

    if (v343)
    {
      v236 = v66;
      if (v47 == sub_1AC7A08E8())
      {
        v236 = sub_1AC7A08E8();
        v47 = sub_1AC7A08E8();
      }
    }

    else if (v47 == *(v341 + 16))
    {
      v236 = v66 + 1;
    }

    else
    {
      v236 = v66;
    }

    v344 = v47;
    v345 = v236;
    v237 = [v235 v45[149]];
    v238 = sub_1AC79FF68();
    v240 = v239;

    v241 = [v231 hasSpaceAfter];
    if ([v235 hasSpaceBefore] && !v241)
    {
      __src[0].value = 32;
      *&__src[0].timescale = 0xE100000000000000;
      MEMORY[0x1B26E8C40](v238, v240);

      v238 = __src[0].value;
      v240 = *&__src[0].timescale;
    }

    if ([v235 hasSpaceAfter])
    {
      __src[0].value = v238;
      *&__src[0].timescale = v240;

      MEMORY[0x1B26E8C40](32, 0xE100000000000000);
    }

    sub_1AC79F608();
    sub_1AC79F5D8();
    [v235 start];
    v242 = v339;
    v47 = v345;
    if (v243 != 0.0 || ([v235 end], v244 != 0.0))
    {
      if (!*(j + 16))
      {
        goto LABEL_248;
      }

      sub_1AC7A0E78();
      MEMORY[0x1B26E9A40](0);
      v245 = sub_1AC7A0EC8();
      v246 = ~(-1 << *(j + 32));
      do
      {
        v247 = v245 & v246;
        if (((*(v242 + (((v245 & v246) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v245 & v246)) & 1) == 0)
        {
          goto LABEL_242;
        }

        v245 = v247 + 1;
      }

      while (*(*(j + 48) + v247));
      [v235 start];
      v248 = v325;
      CMTimeMakeWithSeconds(__src, v249, v325);
      v328 = sub_1AC7A0688();
      v326 = v250;
      v321 = v251;
      [v235 silenceStart];
      CMTimeMakeWithSeconds(__src, v252, v248);
      sub_1AC7A0688();
      v331 = v231;
      sub_1AC7A0678();
      sub_1AC7A0578();
      v253 = v355.value;
      v254 = *&v355.timescale;
      v256 = v355.epoch;
      v255 = v356.value;
      v258 = *&v356.timescale;
      v257 = v356.epoch;
      __src[0] = v355;
      __src[1] = v356;
      LOBYTE(__src[2].value) = 0;
      sub_1AC64F69C();
      sub_1AC79F5E8();
      __src[0].value = v253;
      *&__src[0].timescale = v254;
      v242 = v339;
      v45 = &selRef_removeObjectForKey_;
      __src[0].epoch = v256;
      __src[1].value = v255;
      v47 = v345;
      v59 = v327;
      *&__src[1].timescale = v258;
      __src[1].epoch = v257;
      v231 = v331;
      a2 = v337;
      LOBYTE(__src[2].value) = 0;
      sub_1AC64F6F0();
      sub_1AC79F5E8();
    }

LABEL_242:
    if (*(j + 16))
    {
      sub_1AC7A0E78();
      MEMORY[0x1B26E9A40](1);
      v259 = sub_1AC7A0EC8();
      v260 = ~(-1 << *(j + 32));
      do
      {
        v261 = v259 & v260;
        if (((*(v242 + (((v259 & v260) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v259 & v260)) & 1) == 0)
        {
          goto LABEL_248;
        }

        v259 = v261 + 1;
      }

      while (*(*(j + 48) + v261) != 1);
      [v235 confidence];
      if (v262 != 0.0)
      {
        [v235 confidence];
        *&v264 = v263 / v202;
        *&__src[0].value = v263 / v202;
        LOBYTE(__src[0].timescale) = 0;
        sub_1AC64F5F4();
        sub_1AC79F5E8();
        __src[0].value = v264;
        LOBYTE(__src[0].timescale) = 0;
        sub_1AC64F648();
        sub_1AC79F5E8();
      }
    }

LABEL_248:
    v58 = v329;
    (*v338)(v329, v342, v59);
    sub_1AC753294(&qword_1EB56B478, MEMORY[0x1E6968848]);
    sub_1AC79F5A8();

    (*v335)(v58, v59);
  }
}

void sub_1AC74EBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v33 = a1;
  v32 = sub_1AC79FBC8();
  v4 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1AC631164(0, v7, 0);
    v8 = v36;
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v11 = a3 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v30 = *(v9 + 56);
    v31 = v10;
    v12 = (v9 - 8);
    do
    {
      v13 = v32;
      v14 = v9;
      v31(v6, v11, v32);
      v15 = sub_1AC79FBD8();
      (*v12)(v6, v13);
      v36 = v8;
      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1AC631164(v16 > 1, v17 + 1, 1);
        v8 = v36;
      }

      *(v8 + 16) = v17 + 1;
      *(v8 + 8 * v17 + 32) = v15;
      v11 += v30;
      --v7;
      v9 = v14;
    }

    while (v7);
  }

  v35[0] = v8;
  v35[1] = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF38, &unk_1AC7B2C20);
  sub_1AC5C8B9C(&qword_1EB56DF40, &qword_1EB56DF38, &unk_1AC7B2C20);
  sub_1AC79FCD8();
  v18 = v36;
  v19 = v37;
  v20 = v38;
  v36 = v39;
  v21 = *(v18 + 16);
  v33 = v29 + 32;
  v22 = MEMORY[0x1E69E7CC0];
  v23 = v37;
  while (1)
  {
    if (v21 == v23)
    {

      return;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v23 >= *(v18 + 16))
    {
      goto LABEL_20;
    }

    v24 = *(v18 + 8 * v23++ + 32);
    v35[0] = v24;
    v20(&v34, v35);
    if (sub_1AC6100B0())
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }

      if (v24 >= *(v29 + 16))
      {
        goto LABEL_22;
      }

      v25 = *(v33 + 8 * v24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC60F3C4();
        v22 = v27;
      }

      v26 = *(v22 + 16);
      if (v26 >= *(v22 + 24) >> 1)
      {
        sub_1AC60F3C4();
        v22 = v28;
      }

      *(v22 + 16) = v26 + 1;
      *(v22 + 8 * v26 + 32) = v25;
      v19 = v23;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

__n128 sub_1AC74EF48@<Q0>(_OWORD *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, int a10, _BYTE *a11, uint64_t a12, _OWORD *a13)
{
  v14 = v13;
  v309 = a7;
  v310 = a8;
  v308 = a6;
  v271 = a5;
  v275 = a3;
  v276 = a4;
  v277 = a1;
  v268 = a9;
  v16 = sub_1AC79FBC8();
  v298 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v302 = &v259 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v294 = &v259 - v19;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DED0, &unk_1AC7B2BB0);
  MEMORY[0x1EEE9AC00](v292);
  v21 = &v259 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C750, &qword_1AC7AA668);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v293 = &v259 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DED8, &unk_1AC7B2BC0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v297 = &v259 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v296 = &v259 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C4F0, &qword_1AC7A9198);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v259 - v29;
  v318 = type metadata accessor for TranscriptionSegment(0);
  v273 = *(v318 - 8);
  v31 = MEMORY[0x1EEE9AC00](v318);
  v281 = &v259 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v272 = &v259 - v33;
  v34 = sub_1AC79F618();
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = &v259 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = sub_1AC79F5C8();
  v282 = *(v322 - 8);
  v37 = MEMORY[0x1EEE9AC00](v322);
  v328.i64[0] = &v259 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v312 = &v259 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v317 = &v259 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v284 = &v259 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v285 = &v259 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v270 = &v259 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v278 = &v259 - v49;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = *a11;
  if (!*a11)
  {
    v50 = *MEMORY[0x1E6960C98];
    v51 = *(MEMORY[0x1E6960C98] + 8);
    v52 = *(MEMORY[0x1E6960C98] + 16);
    v53 = *(MEMORY[0x1E6960C98] + 24);
    v54 = *(MEMORY[0x1E6960C98] + 32);
    v55 = *(MEMORY[0x1E6960C98] + 40);
  }

  v264 = v51;
  v265 = v50;
  v346[0] = v50;
  v346[1] = v51;
  v262 = v53;
  v263 = v52;
  v346[2] = v52;
  v346[3] = v53;
  v260 = v55;
  v261 = v54;
  v346[4] = v54;
  v346[5] = v55;
  v347 = v56 != 0;
  v303 = sub_1AC637EF8();
  v57 = v56 != 2 && *&v14[OBJC_IVAR____TtC6Speech17TranscriberCommon_modelTaskAssetType] == 7;
  v58 = !v57;
  v307 = v58;
  v283 = v56;
  if (v57)
  {
    v56 = v277;
    v59 = sub_1AC7A0558();
    v305 = v60;
    v306 = v59;
    v304 = v61;
  }

  else
  {
    v305 = 0;
    v306 = 0;
    v304 = 0;
  }

  *&v327 = v16;
  *&v330 = v21;
  v320 = v30;
  v316 = v36;
  if (v303)
  {
    goto LABEL_22;
  }

  sub_1AC748910(1, a2);
  v56 = v62;
  v16 = v63;
  a2 = v64;
  v30 = v65;
  if (v65)
  {
    sub_1AC7A0D68();
    swift_unknownObjectRetain_n();
    v67 = swift_dynamicCastClass();
    if (!v67)
    {
      swift_unknownObjectRelease();
      v67 = MEMORY[0x1E69E7CC0];
    }

    v68 = *(v67 + 16);

    if (__OFSUB__(v30 >> 1, a2))
    {
      goto LABEL_219;
    }

    if (v68 != (v30 >> 1) - a2)
    {
      goto LABEL_220;
    }

    a2 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v30 = v320;
    if (a2)
    {
      goto LABEL_22;
    }

    a2 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_14:
  sub_1AC751E84(v56, v16, a2, v30, &qword_1EB56BD18, &unk_1AC7AB420, &qword_1EB56BD48, &qword_1AC7A8178);
  a2 = v66;
  v30 = v320;
LABEL_21:
  swift_unknownObjectRelease();
LABEL_22:
  v69 = 0;
  v266 = a13;
  v267 = a12;
  v321 = v282 + 32;
  LODWORD(v325) = a10;
  v70 = *(a2 + 2);
  v274 = (v282 + 16);
  v315 = (v282 + 8);
  v300 = OBJC_IVAR____TtC6Speech17TranscriberCommon_attributeOptions;
  v286 = MEMORY[0x1E69E7CC0];
  v288 = v14;
  v279 = a2;
  v280 = v70;
LABEL_23:
  while (2)
  {
    if (v70 != v69)
    {
      if (v69 >= *(a2 + 2))
      {
        goto LABEL_208;
      }

      v56 = *&a2[8 * v69 + 32];
      v71 = v56 >> 62;
      if (v56 >> 62)
      {
        v16 = *&a2[8 * v69 + 32];
        v145 = v70;
        v72 = sub_1AC7A08E8();
        v70 = v145;
        v56 = v16;
      }

      else
      {
        v72 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v69 = (v69 + 1);
      if (!v72)
      {
        continue;
      }

      v30 = *&v14[v300];
      sub_1AC61C25C();
      v311 = v56 & 0xC000000000000001;
      v269 = v69;
      v301 = v56;
      if ((v56 & 0xC000000000000001) != 0)
      {

        v74 = MEMORY[0x1B26E95B0](0, v56);
      }

      else
      {
        v73 = *(v56 + 32);

        v74 = v73;
      }

      v75 = v74;
      v76 = [v74 tokenName];
      v77 = sub_1AC79FF68();
      v79 = v78;

      if ([v75 hasSpaceBefore])
      {
        *v333 = 32;
        *&v333[8] = 0xE100000000000000;
        MEMORY[0x1B26E8C40](v77, v79);

        v77 = *v333;
        v79 = *&v333[8];
      }

      if ([v75 hasSpaceAfter])
      {
        *v333 = v77;
        *&v333[8] = v79;

        MEMORY[0x1B26E8C40](32, 0xE100000000000000);
      }

      sub_1AC79F608();
      sub_1AC79F5D8();
      [v75 start];
      v313 = v71;
      if (v80 != 0.0 || ([v75 end], v81 != 0.0))
      {
        if (sub_1AC637EF8())
        {
          [v75 start];
          v82 = v325;
          CMTimeMakeWithSeconds(v333, v83, v325);
          v329 = sub_1AC7A0688();
          *&v326 = v84;
          [v75 silenceStart];
          CMTimeMakeWithSeconds(v333, v85, v82);
          sub_1AC7A0688();
          if ((v307 & 1) == 0)
          {
            sub_1AC7A0678();
          }

          sub_1AC7A0578();
          v86 = v334;
          v87 = v335;
          v88 = v336;
          v89 = v337;
          v90 = v338;
          v91 = v339;
          *v333 = v334;
          *&v333[8] = v335;
          *&v333[16] = v336;
          *&v333[24] = v337;
          *&v333[32] = v338;
          *&v333[40] = v339;
          v333[48] = 0;
          sub_1AC64F69C();
          sub_1AC79F5E8();
          *v333 = v86;
          *&v333[8] = v87;
          *&v333[16] = v88;
          *&v333[24] = v89;
          *&v333[32] = v90;
          *&v333[40] = v91;
          v333[48] = 0;
          sub_1AC64F6F0();
          sub_1AC79F5E8();
          v14 = v288;
          v71 = v313;
        }
      }

      if (sub_1AC637EF8())
      {
        [v75 confidence];
        if (v92 != 0.0)
        {
          [v75 confidence];
          v94 = v93 / 1000.0;
          *v333 = v93 / 1000.0;
          v333[8] = 0;
          sub_1AC64F5F4();
          sub_1AC79F5E8();
          *v333 = v94;
          v333[8] = 0;
          sub_1AC64F648();
          sub_1AC79F5E8();
        }
      }

      v95 = v322;
      v96 = v285;
      v319 = *v321;
      v319(v285, v284, v322);

      (*v274)(v317, v96, v95);
      v97 = v301;
      v98 = sub_1AC753228(v301, 1);
      v16 = v99;
      v314 = sub_1AC61C24C();
      sub_1AC61C24C();
      v100 = v97 & 0xFFFFFFFFFFFFFF8;
      v295 = v97 + 32;
      v324 = v97 & 0xFFFFFFFFFFFFFF8;
      if (v97 < 0)
      {
        v100 = v97;
      }

      v323 = v100;
      a2 = (v30 + 56);

      v299 = v30 + 56;
      while (1)
      {
        if (v98 == v314)
        {

          v137 = v285;
          v138 = v322;
          (*v315)(v285, v322);
          v319(v137, v317, v138);
          if (v283)
          {

            v30 = v320;
            a2 = v279;
            v69 = v269;
          }

          else
          {
            v348 = v265;
            v349 = v264;
            v350 = v263;
            v351 = v262;
            v352 = v261;
            v353 = v260;
            v139 = sub_1AC637EF8();
            a2 = v279;
            v69 = v269;
            if (v139)
            {
              v140 = sub_1AC7A05A8();
              v30 = v320;
              if (v140)
              {
                *v333 = v265;
                *&v333[8] = v264;
                *&v333[16] = v263;
                *&v333[24] = v262;
                *&v333[32] = v261;
                *&v333[40] = v260;
                v333[48] = 0;
              }

              else
              {
                memset(v333, 0, 48);
                v333[48] = 1;
              }

              sub_1AC64F69C();
              sub_1AC79F5E8();
            }

            else
            {

              v30 = v320;
            }
          }

          v141 = v270;
          v142 = v322;
          v143 = v319;
          v319(v270, v285, v322);
          v143(v278, v141, v142);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AC60DD6C();
            v286 = v146;
          }

          v16 = *(v286 + 16);
          v56 = v16 + 1;
          if (v16 >= *(v286 + 24) >> 1)
          {
            sub_1AC60DD6C();
            v286 = v147;
          }

          v144 = v286;
          *(v286 + 16) = v56;
          v319((v144 + ((*(v282 + 80) + 32) & ~*(v282 + 80)) + *(v282 + 72) * v16), v278, v322);
          v70 = v280;
          goto LABEL_23;
        }

        v56 = v16;
        if (v311)
        {
          v101 = v301;
          v329 = MEMORY[0x1B26E95B0](v98, v301);
          v102 = MEMORY[0x1B26E95B0](v56, v101);
        }

        else
        {
          if ((v98 & 0x8000000000000000) != 0)
          {
            goto LABEL_212;
          }

          v103 = *(v324 + 16);
          if (v98 >= v103)
          {
            goto LABEL_213;
          }

          if (v16 >= v103)
          {
            goto LABEL_214;
          }

          v104 = *(v295 + 8 * v16);
          v329 = *(v295 + 8 * v98);
          v102 = v104;
        }

        v105 = v102;
        if (v71)
        {
          v106 = v30;
          v107 = v102;
          v16 = sub_1AC7A08E8();
          v105 = v107;
          v30 = v106;
          a2 = v299;
          sub_1AC7A08E8();
        }

        else
        {
          v16 = *(v324 + 16);
        }

        if (v98 == v16)
        {
          goto LABEL_210;
        }

        v16 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_211;
        }

        if (v71)
        {
          v98 = v56;
          if (v16 == sub_1AC7A08E8())
          {
            v98 = sub_1AC7A08E8();
            v16 = sub_1AC7A08E8();
          }
        }

        else if (v16 == *(v324 + 16))
        {
          v98 = v56 + 1;
        }

        else
        {
          v98 = v56;
        }

        *&v326 = v16;
        v108 = [v105 tokenName];
        v109 = sub_1AC79FF68();
        v111 = v110;

        v112 = [v329 hasSpaceAfter];
        if ([v105 hasSpaceBefore] && !v112)
        {
          *v333 = 32;
          *&v333[8] = 0xE100000000000000;
          MEMORY[0x1B26E8C40](v109, v111);

          v109 = *v333;
          v111 = *&v333[8];
        }

        if ([v105 hasSpaceAfter])
        {
          *v333 = v109;
          *&v333[8] = v111;

          MEMORY[0x1B26E8C40](32, 0xE100000000000000);
        }

        sub_1AC79F608();
        sub_1AC79F5D8();
        [v105 start];
        if (v113 != 0.0 || ([v105 end], v114 != 0.0))
        {
          if (!*(v30 + 16))
          {
            goto LABEL_84;
          }

          sub_1AC7A0E78();
          MEMORY[0x1B26E9A40](0);
          v115 = sub_1AC7A0EC8();
          v116 = ~(-1 << *(v30 + 32));
          while (1)
          {
            v117 = v115 & v116;
            if (((*&a2[((v115 & v116) >> 3) & 0xFFFFFFFFFFFFFF8] >> (v115 & v116)) & 1) == 0)
            {
              break;
            }

            v115 = v117 + 1;
            if (!*(*(v30 + 48) + v117))
            {
              v291 = v98;
              [v105 start];
              v118 = v325;
              CMTimeMakeWithSeconds(v333, v119, v325);
              v120 = sub_1AC7A0688();
              v289 = v122;
              v290 = v121;
              [v105 silenceStart];
              CMTimeMakeWithSeconds(v333, v123, v118);
              sub_1AC7A0688();
              if ((v307 & 1) == 0)
              {
                v287 = v120;
                sub_1AC7A0678();
              }

              sub_1AC7A0578();
              v124 = v340;
              v125 = v341;
              v126 = v342;
              v127 = v343;
              v128 = v344;
              v290 = v345;
              *v333 = v340;
              *&v333[8] = v341;
              *&v333[16] = v342;
              *&v333[24] = v343;
              *&v333[32] = v344;
              *&v333[40] = v345;
              v333[48] = 0;
              sub_1AC64F69C();
              sub_1AC79F5E8();
              *v333 = v124;
              *&v333[8] = v125;
              *&v333[16] = v126;
              *&v333[24] = v127;
              *&v333[32] = v128;
              *&v333[40] = v290;
              v333[48] = 0;
              sub_1AC64F6F0();
              sub_1AC79F5E8();
              v14 = v288;
              v98 = v291;
              break;
            }
          }
        }

        if (*(v30 + 16))
        {
          sub_1AC7A0E78();
          MEMORY[0x1B26E9A40](1);
          v129 = sub_1AC7A0EC8();
          v130 = ~(-1 << *(v30 + 32));
          while (1)
          {
            v131 = v129 & v130;
            if (((*&a2[((v129 & v130) >> 3) & 0xFFFFFFFFFFFFFF8] >> (v129 & v130)) & 1) == 0)
            {
              break;
            }

            v129 = v131 + 1;
            if (*(*(v30 + 48) + v131) == 1)
            {
              [v105 confidence];
              if (v132 != 0.0)
              {
                [v105 confidence];
                v134 = v133 / 1000.0;
                *v333 = v133 / 1000.0;
                v333[8] = 0;
                sub_1AC64F5F4();
                sub_1AC79F5E8();
                *v333 = v134;
                v333[8] = 0;
                sub_1AC64F648();
                sub_1AC79F5E8();
              }

              break;
            }
          }
        }

LABEL_84:
        v135 = v312;
        v136 = v322;
        v319(v312, v328.i64[0], v322);
        sub_1AC753294(&qword_1EB56B478, MEMORY[0x1E6968848]);
        sub_1AC79F5A8();

        (*v315)(v135, v136);
        v71 = v313;
        v16 = v326;
      }
    }

    break;
  }

  v148 = 0;
  v322 = MEMORY[0x1E69E7CC0];
  while (v70 != v148)
  {
    if (v148 >= *(a2 + 2))
    {
      goto LABEL_209;
    }

    v16 = *&a2[8 * v148 + 32];
    if (!(v16 >> 62))
    {
      v30 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v30)
      {
        goto LABEL_105;
      }

      goto LABEL_111;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      v56 = *&a2[8 * v148 + 32];
    }

    else
    {
      v56 = v16 & 0xFFFFFFFFFFFFFF8;
    }

    v149 = sub_1AC7A08E8();
    v70 = v280;
    if (v149)
    {
      v30 = sub_1AC7A08E8();
      if (!v30)
      {
        v151 = MEMORY[0x1E69E7CC0];
        v30 = v320;
        goto LABEL_121;
      }

LABEL_111:
      v332[0] = MEMORY[0x1E69E7CC0];
      a2 = (v30 & ~(v30 >> 63));

      v56 = v332;
      sub_1AC6313DC(0, a2, 0);
      if ((v30 & 0x8000000000000000) != 0)
      {
        goto LABEL_217;
      }

      v150 = 0;
      v151 = v332[0];
      if ((v16 & 0xC000000000000001) != 0)
      {
LABEL_113:
        v152 = MEMORY[0x1B26E95B0](v150, v16);
        goto LABEL_115;
      }

      while (1)
      {
        v152 = *(v16 + 8 * v150 + 32);
LABEL_115:
        sub_1AC64C7A0(v152, v325, v333);
        v332[0] = v151;
        v154 = *(v151 + 16);
        v153 = *(v151 + 24);
        if (v154 >= v153 >> 1)
        {
          sub_1AC6313DC((v153 > 1), v154 + 1, 1);
          v151 = v332[0];
        }

        *(v151 + 16) = v154 + 1;
        memcpy((v151 + 160 * v154 + 32), v333, 0xA0uLL);
        if (v30 - 1 == v150)
        {
          break;
        }

        ++v150;
        if ((v16 & 0xC000000000000001) != 0)
        {
          goto LABEL_113;
        }
      }

      v14 = v288;
      v30 = v320;
      a2 = v279;
LABEL_121:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC60E060();
        v322 = v156;
      }

      v70 = v280;
      v16 = *(v322 + 16);
      v56 = v16 + 1;
      if (v16 >= *(v322 + 24) >> 1)
      {
        v157 = v280;
        sub_1AC60E060();
        v70 = v157;
        v322 = v158;
      }

      v148 = (v148 + 1);
      v155 = v322;
      *(v322 + 16) = v56;
      *(v155 + 8 * v16 + 32) = v151;
    }

    else
    {
LABEL_105:
      v148 = (v148 + 1);
      v30 = v320;
    }
  }

  v159 = 0;
  v160 = v275 + 32;
  v161 = *(v275 + 16);
  v321 = MEMORY[0x1E69E7CC0];
  v329 = MEMORY[0x1E69E7CC0];
  while (v161 != v159)
  {
    v162 = *(v160 + 8 * v159);
    v163 = v162[2];
    if (v163)
    {
      if ((v303 & 1) != 0 || v163 == 1)
      {

        v164 = v162;
      }

      else
      {
        v164 = sub_1AC60F5D0(1, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD48, &qword_1AC7A8178);
        swift_arrayInitWithCopy();
      }

      LOBYTE(v257) = 0;
      LOBYTE(v256) = v307;
      sub_1AC64B514(v164, 0, v308, v309, v310, v325, v306, v305, v304, v256, v346, v165, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271);
      v166 = 0;
    }

    else
    {

      v167 = v329;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC60ED68(0, *(v167 + 2) + 1, 1, v167);
        v167 = v174;
      }

      v168 = v167;
      v169 = *(v167 + 2);
      v329 = v168;
      v170 = *(v168 + 3);
      if (v169 >= v170 >> 1)
      {
        sub_1AC60ED68(v170 > 1, v169 + 1, 1, v329);
        v329 = v175;
      }

      v171 = v329;
      *(v329 + 2) = v169 + 1;
      *&v171[8 * v169 + 32] = v159;
      v166 = 1;
    }

    v172 = v318;
    __swift_storeEnumTagSinglePayload(v30, v166, 1, v318);

    if (__swift_getEnumTagSinglePayload(v30, 1, v172) == 1)
    {
      sub_1AC5C720C(v30, &qword_1EB56C4F0, &qword_1AC7A9198);
      ++v159;
    }

    else
    {
      sub_1AC706CAC();
      sub_1AC706CAC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC60DCAC();
        v321 = v176;
      }

      v173 = *(v321 + 16);
      if (v173 >= *(v321 + 24) >> 1)
      {
        sub_1AC60DCAC();
        v321 = v177;
      }

      ++v159;
      *(v321 + 16) = v173 + 1;
      sub_1AC706CAC();
    }
  }

  v178 = v276;

  if (v303)
  {
    sub_1AC752ED8();
    v30 = v179;

    goto LABEL_157;
  }

  v180 = sub_1AC748868(1, v178);
  v182 = v181;
  v184 = v183;
  v186 = v185;
  if ((v185 & 1) == 0)
  {
LABEL_150:
    sub_1AC751BE4(v180, v182, v184, v186, sub_1AC60F638, MEMORY[0x1E6969C28]);
    v30 = v187;
    swift_unknownObjectRelease();
    goto LABEL_157;
  }

  sub_1AC7A0D68();
  swift_unknownObjectRetain_n();
  v188 = swift_dynamicCastClass();
  if (!v188)
  {
    swift_unknownObjectRelease();
    v188 = MEMORY[0x1E69E7CC0];
  }

  v189 = *(v188 + 16);

  if (__OFSUB__(v186 >> 1, v184))
  {
    __break(1u);
LABEL_222:
    swift_unknownObjectRelease();
    goto LABEL_150;
  }

  if (v189 != (v186 >> 1) - v184)
  {
    goto LABEL_222;
  }

  v30 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v30)
  {
    swift_unknownObjectRelease();
    v30 = MEMORY[0x1E69E7CC0];
  }

LABEL_157:
  v190 = v327;
  if (!*(v329 + 2))
  {
    goto LABEL_186;
  }

  v332[2] = 0;
  v324 = v298 + 32;
  v328.i64[0] = (v329 + 32);
  v323 = v298 + 40;
  v332[0] = v30;
  v332[1] = 0;

  while (2)
  {
    sub_1AC747CD8(v297);
    v191 = v296;
    sub_1AC637E08();
    v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEE0, &qword_1AC7B2BD0);
    if (__swift_getEnumTagSinglePayload(v191, 1, v192) != 1)
    {
      *&v326 = v30;
      *&v325 = *v191;
      v193 = *(v192 + 48);
      v194 = *v324;
      v195 = v191 + v193;
      v196 = v293;
      (*v324)(v293, v195, v190);
      a2 = v294;
      v194(v294, v196, v190);
      v16 = MEMORY[0x1E6969C28];
      sub_1AC753294(&qword_1EB56DEE8, MEMORY[0x1E6969C28]);
      sub_1AC7A0108();
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEF0, &qword_1AC7B2BD8) + 36);
      sub_1AC753294(&qword_1EB56C4F8, v16);
      v197 = 0;
      v198 = MEMORY[0x1E69E7CC0];
LABEL_161:
      while (1)
      {
        v14 = v197;
        v199 = v330;
        sub_1AC7A04E8();
        if (*(v199 + v30) == *v333)
        {
          break;
        }

        v56 = v199;
        v200 = sub_1AC7A0518();
        a2 = *v201;
        v200(v333, 0);
        sub_1AC7A04F8();
        v197 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
          goto LABEL_216;
        }

        v202 = *(v329 + 2);
        v203 = v328.i64[0];
        while (v202)
        {
          v204 = *v203++;
          --v202;
          if (v204 == v14)
          {
            goto LABEL_161;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v331 = v198;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AC631474(0, *(v198 + 16) + 1, 1);
          v198 = v331;
        }

        v207 = *(v198 + 16);
        v206 = *(v198 + 24);
        v16 = v207 + 1;
        if (v207 >= v206 >> 1)
        {
          sub_1AC631474(v206 > 1, v207 + 1, 1);
          v198 = v331;
        }

        *(v198 + 16) = v16;
        v208 = v198 + 16 * v207;
        *(v208 + 32) = v14;
        *(v208 + 40) = a2;
        v190 = v327;
      }

      *(v199 + *(v292 + 36)) = v14;
      sub_1AC5C720C(v199, &qword_1EB56DED0, &unk_1AC7B2BB0);
      v209 = *(v198 + 16);
      if (v209)
      {
        *v333 = MEMORY[0x1E69E7CC0];
        sub_1AC631164(0, v209, 0);
        a2 = 0;
        v56 = *v333;
        v210 = 40;
        do
        {
          if (a2 >= *(v198 + 16))
          {
            goto LABEL_207;
          }

          v14 = *(v198 + v210);
          *v333 = v56;
          v30 = *(v56 + 16);
          v211 = *(v56 + 24);
          v16 = v30 + 1;
          if (v30 >= v211 >> 1)
          {
            sub_1AC631164(v211 > 1, v30 + 1, 1);
            v56 = *v333;
          }

          ++a2;
          *(v56 + 16) = v16;
          *(v56 + 8 * v30 + 32) = v14;
          v210 += 16;
        }

        while (v209 != a2);
      }

      else
      {

        v56 = MEMORY[0x1E69E7CC0];
      }

      MEMORY[0x1B26E8770](v56);
      v30 = v326;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC704580();
        v30 = v212;
      }

      if ((v325 & 0x8000000000000000) != 0)
      {
        goto LABEL_215;
      }

      if (v325 < *(v30 + 16))
      {
        (*(v298 + 40))(v30 + ((*(v298 + 80) + 32) & ~*(v298 + 80)) + *(v298 + 72) * v325, v302, v190);
        continue;
      }

LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      swift_unknownObjectRelease();
      goto LABEL_14;
    }

    break;
  }

LABEL_186:
  v213 = v283;
  v214 = v271;
  if ((v283 - 3) <= 1)
  {
    if (v271)
    {
      v215 = v271;
      v216 = [v271 audioAnalytics];
      if (v216)
      {

        v214 = v215;
        goto LABEL_196;
      }
    }

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v217 = sub_1AC79FDE8();
    __swift_project_value_buffer(v217, qword_1ED9386C8);
    v218 = sub_1AC79FDC8();
    v219 = sub_1AC7A05F8();
    if (os_log_type_enabled(v218, v219))
    {
      v220 = swift_slowAlloc();
      *v220 = 0;
      _os_log_impl(&dword_1AC5BC000, v218, v219, "Unexpected nil audio analytics!", v220, 2u);
      MEMORY[0x1B26EAB10](v220, -1, -1);
    }

    v213 = v283;
    v214 = v271;
  }

  if (v214)
  {
LABEL_196:
    v56 = v214;
    sub_1AC64EA44([v56 audioAnalytics], v333);
    v330 = *v333;
    v221 = *&v333[16];
    v222 = [v56 endOfSentenceLikelihood];
    [v222 doubleValue];
    v224 = v223;

    v225 = [v56 latticeMitigatorResult];
    if (v225)
    {
      v226 = v225;
      v227 = [v225 version];
      v16 = sub_1AC79FF68();
      a2 = v228;

      [v226 score];
      v328 = v229;
      [v226 threshold];
      v327 = v230;
      [v226 calibrationScale];
      v326 = v231;
      [v226 calibrationOffset];
      v325 = v232;
      v233 = [v226 processed];

      v234.i64[0] = v328.u32[0];
      v234.i64[1] = v326;
      v235 = vorrq_s8(vshll_n_s32(__PAIR64__(v325, v327), 0x20uLL), v234);
    }

    else
    {
      v16 = 0;
      a2 = 0;
      v233 = 0;
      v235 = 0uLL;
    }

    v328 = v235;
    v14 = [v56 numOneBestTokensExcludingTriggerPhrase];
    v245 = sub_1AC648F8C(v14, v240, v241, v242, v243, v244);
    v247 = v246;

    if (v247)
    {
      v236 = 0;
    }

    else
    {
      v236 = v245;
    }

    if (v236 < 0)
    {
      goto LABEL_218;
    }

    v239 = 0;
    v213 = v283;
    v238 = v330;
    v237 = v328;
  }

  else
  {

    v236 = 0;
    v14 = 0;
    v16 = 0;
    a2 = 0;
    v233 = 0;
    v221 = 0;
    v237 = 0uLL;
    v224 = 0;
    v238 = 0uLL;
    v239 = 1;
  }

  v248 = v277;
  v249 = v277[1];
  v250 = v268;
  *v268 = *v277;
  v250[1] = v249;
  v251 = v248[2];
  v252 = v266;
  v253 = *v266;
  v250[2] = v251;
  v250[3] = v253;
  *(v250 + 8) = *(v252 + 2);
  *(v250 + 9) = v286;
  *(v250 + 10) = v322;
  *(v250 + 11) = v321;
  *(v250 + 12) = v30;
  *(v250 + 104) = v213;
  result = *v267;
  v255 = *(v267 + 16);
  *(v250 + 140) = *(v267 + 32);
  *(v250 + 124) = v255;
  *(v250 + 108) = result;
  v250[10] = v238;
  *(v250 + 22) = v221;
  *(v250 + 23) = v224;
  *(v250 + 192) = v239;
  *(v250 + 25) = v16;
  *(v250 + 26) = a2;
  *(v250 + 216) = v237;
  *(v250 + 232) = v233;
  *(v250 + 30) = v14;
  *(v250 + 31) = v236;
  *(v250 + 256) = v239;
  return result;
}

uint64_t sub_1AC750F9C()
{
  v1 = OBJC_IVAR____TtC6Speech17TranscriberCommon_locale;
  sub_1AC79FB18();
  OUTLINED_FUNCTION_80();
  (*(v2 + 8))(v0 + v1);
  sub_1AC5C720C(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_modelOptions, &qword_1EB56C318, &unk_1AC7A8790);

  v3 = OBJC_IVAR____TtC6Speech17TranscriberCommon__results;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C330, &qword_1AC7A8800);
  OUTLINED_FUNCTION_80();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC6Speech17TranscriberCommon__multisegmentResults;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C340, &qword_1AC7A8810);
  OUTLINED_FUNCTION_80();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC6Speech17TranscriberCommon__muxMultisegmentResults;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C348, &qword_1AC7A8820);
  OUTLINED_FUNCTION_80();
  (*(v8 + 8))(v0 + v7);
  sub_1AC5C720C(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_lastRecognizedFinalMultisegmentResult + 8, &qword_1EB56DF28, &unk_1AC7B2C10);

  sub_1AC5C720C(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_assetsTaskName + 8, &qword_1EB56B930, &qword_1AC7A72C0);
  sub_1AC5C720C(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon__workerWithLocked + 8, &qword_1EB56CB00, &qword_1AC7B1890);
  sub_1AC5C720C(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_resultsBuilder, &qword_1EB56DF18, &qword_1AC7B2C00);
  sub_1AC5C720C(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_multisegmentResultsBuilder, &qword_1EB56DF08, &qword_1AC7B2BF0);
  sub_1AC5C720C(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_muxMultisegmentResultsBuilder, &qword_1EB56DEC8, &unk_1AC7B2BA0);
  return v0;
}

uint64_t sub_1AC7511EC()
{
  sub_1AC750F9C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1AC75126C(uint64_t a1)
{
  sub_1AC79FB18();
  if (v1 <= 0x3F)
  {
    sub_1AC7518D4(319, qword_1ED937508, type metadata accessor for TranscriberCommon.ModelOptions);
    if (v2 <= 0x3F)
    {
      sub_1AC751598(319, &qword_1EB56AC00);
      if (v3 <= 0x3F)
      {
        sub_1AC751598(319, &qword_1EB56AC10);
        if (v4 <= 0x3F)
        {
          sub_1AC751608(319);
          if (v5 <= 0x3F)
          {
            sub_1AC751690(319, &qword_1EB56AC48, &qword_1EB56DE80, &qword_1AC7B2930);
            if (v6 <= 0x3F)
            {
              sub_1AC751690(319, &qword_1EB56AC50, &qword_1EB56DE88, &qword_1AC7B2938);
              if (v7 <= 0x3F)
              {
                sub_1AC751690(319, &qword_1EB56AC40, &qword_1EB56DE90, &qword_1AC7B2940);
                if (v8 <= 0x3F)
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

void sub_1AC751598(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56D450, &qword_1AC7A7E50);
    OUTLINED_FUNCTION_74_0();
    v3 = sub_1AC7A03A8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1AC751608(uint64_t a1)
{
  if (!qword_1EB56ABF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB56DE78, &qword_1AC7B28C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56D450, &qword_1AC7A7E50);
    v1 = sub_1AC7A03A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB56ABF8);
    }
  }
}

void sub_1AC751690(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_93();
    v5 = sub_1AC7A0798();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *sub_1AC7516F0(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

void sub_1AC7517F4(uint64_t a1)
{
  sub_1AC7518D4(319, &qword_1ED937D70, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_1AC7518D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_93();
    v4 = sub_1AC7A0798();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AC7519B8()
{
  result = qword_1EB56AF38;
  if (!qword_1EB56AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AF38);
  }

  return result;
}

id sub_1AC751A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_1AC79F9F8();
  if (a4)
  {
    OUTLINED_FUNCTION_77();
    v10 = sub_1AC79FF58();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 initWithAssetType:a1 locale:v9 regionId:v10];

  sub_1AC79FB18();
  OUTLINED_FUNCTION_80();
  (*(v12 + 8))(a2);
  return v11;
}

void sub_1AC751BE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void), uint64_t (*a6)(void))
{
  v6 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    a5((a4 >> 1) - a3, 0);
    if (v6 != a3)
    {
      a6(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_1AC751D80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C010, &unk_1AC7A9210);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFA8, &qword_1AC7A83B8);
      OUTLINED_FUNCTION_166_2();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1AC751E84(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v8 = a4 >> 1;
  v9 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v9)
  {
    if (v9 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      v13[2] = v9;
      v13[3] = 2 * ((v14 - 32) / 8);
    }

    if (v8 != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_1AC751F68(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1AC75240C(v9, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

void *sub_1AC752000(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1AC7526D4(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1AC752090(uint64_t a1, uint64_t a2)
{

  sub_1AC7520FC(a1, a2, sub_1AC618B3C);
}

void sub_1AC7520FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_50_0();
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = *(v5 + 32) & 0x3F;
  OUTLINED_FUNCTION_121_4();

  if (v6 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    sub_1AC613DA0(0, v3, v16 - ((8 * v3 + 15) & 0x3FFFFFFFFFFFFFF0));
    OUTLINED_FUNCTION_28_15();
    sub_1AC75240C(v8, v9, v10, v11, a3);
    if (!v3)
    {

      return;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_107_4();

    OUTLINED_FUNCTION_28_15();
    sub_1AC751F68(v12, v13, v14, v15, a3);

    if (!v3)
    {

      OUTLINED_FUNCTION_77_1();
      return;
    }
  }

  OUTLINED_FUNCTION_77_1();
  __break(1u);
}

void sub_1AC75228C()
{
  OUTLINED_FUNCTION_50_0();
  v2 = *(v1 + 32) & 0x3F;
  OUTLINED_FUNCTION_121_4();

  if (v2 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    OUTLINED_FUNCTION_94_1();
    sub_1AC613DA0(v4, v5, v6);
    OUTLINED_FUNCTION_28_15();
    sub_1AC7526D4(v7, v8, v9, v10);
    if (!v0)
    {

      return;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_107_4();

    OUTLINED_FUNCTION_28_15();
    sub_1AC752000(v11, v12, v13, v14);

    if (!v0)
    {

      OUTLINED_FUNCTION_77_1();
      return;
    }
  }

  OUTLINED_FUNCTION_77_1();
  __break(1u);
}

void sub_1AC75240C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v41 = 0;
    v23 = 0;
    OUTLINED_FUNCTION_140_2();
    v26 = v25 & v24;
    v28 = (v27 + 63) >> 6;
LABEL_18:
    while (v26)
    {
      v29 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
LABEL_25:
      v40 = v29 | (v23 << 6);
      v32 = *(*(a3 + 48) + v40);
      sub_1AC7A0E78();
      MEMORY[0x1B26E9A40](v32);
      v33 = sub_1AC7A0EC8();
      v34 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v35 = v33 & v34;
        if (((*(a4 + 56 + (((v33 & v34) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v33 & v34)) & 1) == 0)
        {
          break;
        }

        v33 = v35 + 1;
        if (*(*(a4 + 48) + v35) == v32)
        {
          *(a1 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
          v22 = __OFADD__(v41++, 1);
          if (!v22)
          {
            goto LABEL_18;
          }

          __break(1u);
          goto LABEL_31;
        }
      }
    }

    v30 = v23;
    while (1)
    {
      v23 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v23 >= v28)
      {
LABEL_31:

        a5(a1, a2, v41, a3);
        return;
      }

      v31 = *(a3 + 56 + 8 * v23);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v26 = (v31 - 1) & v31;
        goto LABEL_25;
      }
    }
  }

  else
  {
    v41 = 0;
    v7 = 0;
    OUTLINED_FUNCTION_140_2();
    v10 = v9 & v8;
    v12 = (v11 + 63) >> 6;
LABEL_3:
    while (v10)
    {
      v13 = __clz(__rbit64(v10));
      v39 = (v10 - 1) & v10;
LABEL_10:
      v16 = *(*(a4 + 48) + (v13 | (v7 << 6)));
      sub_1AC7A0E78();
      MEMORY[0x1B26E9A40](v16);
      v17 = sub_1AC7A0EC8();
      v18 = ~(-1 << *(a3 + 32));
      do
      {
        v19 = v17 & v18;
        v20 = (v17 & v18) >> 6;
        v21 = 1 << (v17 & v18);
        if ((v21 & *(a3 + 56 + 8 * v20)) == 0)
        {
          v10 = v39;
          goto LABEL_3;
        }

        v17 = v19 + 1;
      }

      while (*(*(a3 + 48) + v19) != v16);
      *(a1 + 8 * v20) |= v21;
      v22 = __OFADD__(v41++, 1);
      v10 = v39;
      if (v22)
      {
        goto LABEL_34;
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_31;
      }

      v15 = *(a4 + 56 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1AC7526D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v47 = 0;
    v24 = 0;
    v40 = a3 + 56;
    v25 = 1 << *(a3 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(a3 + 56);
    v28 = (v25 + 63) >> 6;
    v29 = a4 + 56;
    v42 = v28;
LABEL_24:
    while (v27)
    {
      v30 = __clz(__rbit64(v27));
      v49 = (v27 - 1) & v27;
LABEL_31:
      v45 = v30 | (v24 << 6);
      v33 = *(*(v5 + 48) + 8 * v45);
      v34 = sub_1AC7A0748();
      v35 = ~(-1 << *(v4 + 32));
      do
      {
        v36 = v34 & v35;
        if (((*(v29 + (((v34 & v35) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v34 & v35)) & 1) == 0)
        {

          v4 = a4;
          v28 = v42;
          v27 = v49;
          goto LABEL_24;
        }

        sub_1AC5CF764(0, &qword_1EB56ABA0, 0x1E6958418);
        v37 = *(*(a4 + 48) + 8 * v36);
        v38 = sub_1AC7A0758();

        v34 = v36 + 1;
      }

      while ((v38 & 1) == 0);

      *(a1 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      v27 = v49;
      v23 = __OFADD__(v47++, 1);
      v4 = a4;
      v28 = v42;
      if (v23)
      {
        goto LABEL_42;
      }
    }

    v31 = v24;
    while (1)
    {
      v24 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v24 >= v28)
      {
LABEL_38:

        sub_1AC618CB4();
        return;
      }

      v32 = *(v40 + 8 * v24);
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v49 = (v32 - 1) & v32;
        goto LABEL_31;
      }
    }
  }

  else
  {
    v6 = 0;
    v39 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v46 = 0;
    v48 = a3 + 56;
    v41 = v10;
LABEL_6:
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v44 = (v9 - 1) & v9;
LABEL_13:
      v14 = *(*(v4 + 48) + 8 * (v11 | (v6 << 6)));
      v15 = sub_1AC7A0748();
      v16 = v5;
      v17 = ~(-1 << *(v5 + 32));
      do
      {
        v18 = v15 & v17;
        v19 = (v15 & v17) >> 6;
        v20 = 1 << (v15 & v17);
        if ((v20 & *(v48 + 8 * v19)) == 0)
        {

          v5 = v16;
          v4 = a4;
          v10 = v41;
          v9 = v44;
          goto LABEL_6;
        }

        sub_1AC5CF764(0, &qword_1EB56ABA0, 0x1E6958418);
        v21 = *(*(v16 + 48) + 8 * v18);
        v22 = sub_1AC7A0758();

        v15 = v18 + 1;
      }

      while ((v22 & 1) == 0);

      v10 = v41;
      *(a1 + 8 * v19) |= v20;
      v9 = v44;
      v23 = __OFADD__(v46++, 1);
      v5 = v16;
      v4 = a4;
      if (v23)
      {
        goto LABEL_41;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_38;
      }

      v13 = *(v39 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v44 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_1AC752A9C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_80();
  v2 = OUTLINED_FUNCTION_89();

  return v3(v2);
}

void (*sub_1AC752B00(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1AC751B5C(a3);
  sub_1AC61C25C();
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_74_0();
    v7 = MEMORY[0x1B26E95B0](v9);
  }

  *a1 = v7;
  return destroy for AnalyzerInput;
}

void sub_1AC752B88()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_136_3();
  v4 = sub_1AC79F5C8();
  OUTLINED_FUNCTION_40();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_73_3(v12);
  OUTLINED_FUNCTION_95_5(MEMORY[0x1E69E7CC0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C510, &qword_1AC7A91B8);
  v13 = OUTLINED_FUNCTION_47_9(&qword_1EB56DF48);
  v14 = sub_1AC753294(&qword_1EB56BD58, MEMORY[0x1E6968848]);
  OUTLINED_FUNCTION_76_3(v14);
  OUTLINED_FUNCTION_31_13();
  while (2)
  {
    for (i = v2; ; ++i)
    {
      if (v40 == i)
      {

        v33 = *(v38 + 24);
        if (v33 >= 2)
        {
          v34 = v33 >> 1;
          v30 = __OFSUB__(v34, v37);
          v35 = v34 - v37;
          if (v30)
          {
            goto LABEL_37;
          }

          *(v38 + 16) = v35;
        }

        OUTLINED_FUNCTION_105();
        return;
      }

      if (v2 < 0)
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if (i >= *(v39 + 16))
      {
        goto LABEL_35;
      }

      v16 = OUTLINED_FUNCTION_69_7();
      v17(v16);
      v18 = OUTLINED_FUNCTION_128_3();
      v19(v18);
      OUTLINED_FUNCTION_82_6();
      sub_1AC6102E8();
      v20 = OUTLINED_FUNCTION_87_6();
      v1(v20);
      if (v0)
      {
        break;
      }

      (v1)(&qword_1EB56C510, v4);
    }

    v21 = OUTLINED_FUNCTION_53_9();
    (v3)(v21);
    OUTLINED_FUNCTION_166_2();
    (v3)();
    v1 = v36;
    if (v37)
    {
      OUTLINED_FUNCTION_124_4();
LABEL_28:
      v30 = __OFSUB__(v22, 1);
      v31 = v22 - 1;
      if (!v30)
      {
        v32 = OUTLINED_FUNCTION_70_6(v31);
        (v3)(v32);
        OUTLINED_FUNCTION_144_2();
        continue;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    break;
  }

  OUTLINED_FUNCTION_123_4();
  if (v23)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_100_4();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD10, &unk_1AC7A8140);
  v0 = OUTLINED_FUNCTION_147_3(v24);
  v25 = _swift_stdlib_malloc_size(v0);
  if (v13)
  {
    if (v25 - v36 == 0x8000000000000000 && i == -1)
    {
      goto LABEL_40;
    }

    v27 = OUTLINED_FUNCTION_63_7(v25 - v36);
    if (!v28)
    {
LABEL_27:
      v6 += v13;
      v2 = (v2 & 0x7FFFFFFFFFFFFFFFLL) - (v3 >> 1);

      v22 = v2;
      v3 = 0;
      goto LABEL_28;
    }

    if (v0 < v27 || v6 >= v36 + v27 + v13)
    {
      OUTLINED_FUNCTION_132_3();
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v0 == v27)
      {
LABEL_26:
        *(v27 + 16) = 0;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_132_3();
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = v38;
    goto LABEL_26;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_1AC752ED8()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_136_3();
  v4 = sub_1AC79FBC8();
  OUTLINED_FUNCTION_40();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_73_3(v12);
  OUTLINED_FUNCTION_95_5(MEMORY[0x1E69E7CC0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEF8, &qword_1AC7B2BE0);
  v13 = OUTLINED_FUNCTION_47_9(&qword_1EB56ACA8);
  v14 = sub_1AC753294(&qword_1EB56B450, MEMORY[0x1E6969C28]);
  OUTLINED_FUNCTION_76_3(v14);
  OUTLINED_FUNCTION_31_13();
  while (2)
  {
    for (i = v2; ; ++i)
    {
      if (v40 == i)
      {

        v33 = *(v38 + 24);
        if (v33 >= 2)
        {
          v34 = v33 >> 1;
          v30 = __OFSUB__(v34, v37);
          v35 = v34 - v37;
          if (v30)
          {
            goto LABEL_37;
          }

          *(v38 + 16) = v35;
        }

        OUTLINED_FUNCTION_105();
        return;
      }

      if (v2 < 0)
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if (i >= *(v39 + 16))
      {
        goto LABEL_35;
      }

      v16 = OUTLINED_FUNCTION_69_7();
      v17(v16);
      v18 = OUTLINED_FUNCTION_128_3();
      v19(v18);
      OUTLINED_FUNCTION_82_6();
      sub_1AC610490();
      v20 = OUTLINED_FUNCTION_87_6();
      v1(v20);
      if (v0)
      {
        break;
      }

      (v1)(&qword_1EB56DEF8, v4);
    }

    v21 = OUTLINED_FUNCTION_53_9();
    (v3)(v21);
    OUTLINED_FUNCTION_166_2();
    (v3)();
    v1 = v36;
    if (v37)
    {
      OUTLINED_FUNCTION_124_4();
LABEL_28:
      v30 = __OFSUB__(v22, 1);
      v31 = v22 - 1;
      if (!v30)
      {
        v32 = OUTLINED_FUNCTION_70_6(v31);
        (v3)(v32);
        OUTLINED_FUNCTION_144_2();
        continue;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    break;
  }

  OUTLINED_FUNCTION_123_4();
  if (v23)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_100_4();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCF8, &qword_1AC7A90B0);
  v0 = OUTLINED_FUNCTION_147_3(v24);
  v25 = _swift_stdlib_malloc_size(v0);
  if (v13)
  {
    if (v25 - v36 == 0x8000000000000000 && i == -1)
    {
      goto LABEL_40;
    }

    v27 = OUTLINED_FUNCTION_63_7(v25 - v36);
    if (!v28)
    {
LABEL_27:
      v6 += v13;
      v2 = (v2 & 0x7FFFFFFFFFFFFFFFLL) - (v3 >> 1);

      v22 = v2;
      v3 = 0;
      goto LABEL_28;
    }

    if (v0 < v27 || v6 >= v36 + v27 + v13)
    {
      OUTLINED_FUNCTION_132_3();
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v0 == v27)
      {
LABEL_26:
        *(v27 + 16) = 0;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_132_3();
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = v38;
    goto LABEL_26;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_1AC753228(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    if (sub_1AC7A08E8() == a2)
    {
      return sub_1AC7A08E8();
    }

    else
    {
      return 0;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == a2)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC753294(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_93();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AC753464(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_64_0(v7);
  *v8 = v9;
  v8[1] = sub_1AC5C5380;

  return sub_1AC74C5AC(a1, v3, v4, v6, v5);
}

uint64_t sub_1AC753520(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AC753538(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_80();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_48Tm()
{

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_32_13()
{

  return sub_1AC7A0AF8();
}

unint64_t OUTLINED_FUNCTION_34_11()
{
  v3 = v0[53];
  v0[52] = v0[52];
  v0[53] = v3;
  v4 = v0[38];

  return sub_1AC74A410(v1, v4);
}

uint64_t OUTLINED_FUNCTION_46_10()
{
  v2 = *(*(v0 - 96) + 16);

  return sub_1AC703D34(v2);
}

uint64_t OUTLINED_FUNCTION_47_9(unint64_t *a1)
{

  return sub_1AC5C8B9C(a1, v2, v1);
}

void OUTLINED_FUNCTION_48_10()
{
  v1 = *(v0 - 112);
  *(v0 - 120) = *(v0 - 120);
  *(v0 - 112) = v1;
}

uint64_t OUTLINED_FUNCTION_63_7@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = v3;
  *(v1 + 24) = 2 * (a1 / v2);
  return *(v4 - 224);
}

uint64_t OUTLINED_FUNCTION_78_4()
{
}

uint64_t OUTLINED_FUNCTION_115_4()
{

  return sub_1AC7532D8(v0 + 1376);
}

uint64_t OUTLINED_FUNCTION_118_6()
{

  return sub_1AC637EF8();
}

uint64_t OUTLINED_FUNCTION_147_3(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_149_1(uint64_t a1)
{

  return sub_1AC79FE58();
}

void OUTLINED_FUNCTION_150_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_152_2()
{
}

id sub_1AC753950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v19 = 0;
  v18 = 0;
  v12 = objc_allocWithZone(SFContextualNamedEntity);
  v13 = &v12[OBJC_IVAR___SFContextualNamedEntity_contextualNamedEntity];
  *v13 = a1;
  *(v13 + 1) = a2;
  v13[16] = 1;
  *(v13 + 3) = a6;
  v13[32] = 0;
  *(v13 + 5) = a3;
  v13[48] = 0;
  *(v13 + 7) = a4;
  *(v13 + 8) = a5;
  v17.receiver = v12;
  v17.super_class = SFContextualNamedEntity;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_0_21(ObjectType);
  return v14;
}

id sub_1AC753B0C(uint64_t a1, uint64_t a2, char a3)
{
  v13 = 1;
  v12 = 1;
  v6 = objc_allocWithZone(SFContextualNamedEntity);
  v7 = &v6[OBJC_IVAR___SFContextualNamedEntity_contextualNamedEntity];
  *v7 = a1;
  *(v7 + 1) = a2;
  v7[16] = a3;
  *(v7 + 3) = 0;
  v7[32] = 1;
  *(v7 + 5) = 0;
  v7[48] = 1;
  *(v7 + 7) = 0;
  *(v7 + 8) = 0;
  v11.receiver = v6;
  v11.super_class = SFContextualNamedEntity;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_0_21(ObjectType);
  return v8;
}

void __swiftcall SFContextualNamedEntity.init()(SFContextualNamedEntity *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for SFContextualNamedEntity()
{
  result = qword_1EB56DF78;
  if (!qword_1EB56DF78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB56DF78);
  }

  return result;
}

uint64_t related decl e for SFSpeechErrorCode.init(_:description:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SFSpeechError(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CE58, &qword_1AC7B4080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  *(inited + 32) = sub_1AC79FF68();
  *(inited + 40) = v6;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  sub_1AC79FE38();
  sub_1AC753D7C();
  sub_1AC79F718();
  return v8;
}

unint64_t sub_1AC753D7C()
{
  result = qword_1EB56B870;
  if (!qword_1EB56B870)
  {
    type metadata accessor for SFSpeechError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B870);
  }

  return result;
}

id sub_1AC753E14()
{
  type metadata accessor for SpeechAnalyzer(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EB56DF80 = result;
  return result;
}

id static NSBundle.speech.getter()
{
  if (qword_1EB56B610 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB56DF80;

  return v1;
}

uint64_t sub_1AC753F38(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EFDA4(a1, a2, a3);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for EARFullPayloadCorrector();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    sub_1AC5D0DD0(a1, a2, v6);
  }

  return v10;
}

uint64_t sub_1AC753FC0(uint64_t a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1 == 0xD000000000000026 && 0x80000001AC7BA740 == a2;
  if (v8 || (sub_1AC7A0D38() & 1) != 0)
  {
    [a3 hello];
    return 1;
  }

  result = 0xD000000000000043;
  v14 = a1 == 0xD000000000000043 && 0x80000001AC7BA770 == a2;
  if (v14 || (v15 = sub_1AC7A0D38(), result = 0, (v15 & 1) != 0))
  {
    v16 = *(a4 + 16);
    if (v16)
    {
      result = sub_1AC5D2398(a4 + 32, &v26);
      if (!v27)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      sub_1AC5C3968(&v26, &v21);
      swift_dynamicCast();
      v17 = sub_1AC79FF58();

      if (v16 != 1)
      {
        sub_1AC5D2398(a4 + 64, &v21);
        if (v23)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9A0, &unk_1AC7B2F90);
          result = swift_dynamicCast();
          if (result)
          {
            v18 = sub_1AC79FE18();

            goto LABEL_22;
          }
        }

        else
        {
          result = sub_1AC641B24(&v21);
        }

        v18 = 0;
LABEL_22:
        if (a5)
        {
          v19 = swift_allocObject();
          *(v19 + 16) = a5;
          *(v19 + 24) = a6;
          v24 = sub_1AC7556E8;
          v25 = v19;
          *&v21 = MEMORY[0x1E69E9820];
          *(&v21 + 1) = 1107296256;
          v22 = sub_1AC5EF7E0;
          v23 = &block_descriptor_16;
          v20 = _Block_copy(&v21);

          [a3 correctPostITNOutput:v17 withOptions:v18 reply:v20];
          _Block_release(v20);

          return 1;
        }

LABEL_27:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1AC754264()
{
  OUTLINED_FUNCTION_85();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v5 = sub_1AC79FC78();
  v1[10] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[11] = v6;
  v1[12] = OUTLINED_FUNCTION_126();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA58, &qword_1AC7A7B10);
  v1[13] = v7;
  OUTLINED_FUNCTION_22(v7);
  v1[14] = v8;
  v1[15] = OUTLINED_FUNCTION_126();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v1[16] = v9;
  OUTLINED_FUNCTION_22(v9);
  v1[17] = v10;
  v1[18] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC7543C0()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[18];
    v3 = v0[6];
    v2 = v0[7];
    v4 = sub_1AC5C6544();
    v0[2] = v3;
    v0[3] = v2;
    v0[4] = v4;

    sub_1AC79FC98();
    sub_1AC5C6DD8(v1);
    v6 = v0[15];
    v0[5] = v0[8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA50, &unk_1AC7B2D20);
    sub_1AC79FC98();
    sub_1AC5DEDBC(v6);
    nullsub_1();
    nullsub_1();
    sub_1AC79FC88();
    v7 = swift_task_alloc();
    v0[19] = v7;
    *v7 = v0;
    v7[1] = sub_1AC7546A4;
    v8 = v0[12];
    v9 = v0[9];

    return sub_1AC5E1980(v9, v8, (v0 + 4));
  }

  else
  {
    v5 = v0[9];

    return MEMORY[0x1EEE6DFA0](sub_1AC7548B4, v5, 0);
  }
}

uint64_t sub_1AC7546A4(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_18_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_18_2();
  *v7 = v6;
  *(v4 + 160) = v1;

  if (!v1)
  {
    *(v4 + 168) = a1;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC7547D0()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v3 + 8))(v1, v2);
  v4 = OUTLINED_FUNCTION_89();
  v5(v4);

  v6 = v0[1];
  v7 = v0[21];

  return v6(v7);
}

uint64_t sub_1AC7548E4()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v3 + 8))(v1, v2);
  v4 = OUTLINED_FUNCTION_89();
  v5(v4);

  OUTLINED_FUNCTION_44();

  return v6();
}

uint64_t sub_1AC7549BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1AC6E6540();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v8 = swift_task_alloc();
  v3[9] = v8;
  *v8 = v3;
  v8[1] = sub_1AC754C18;

  return sub_1AC754264();
}

uint64_t sub_1AC754C18(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  **(*v1 + 16) = a1;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_44();

  return v8();
}

uint64_t sub_1AC754E28()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC754ED0()
{
  is_remote = swift_distributed_actor_is_remote();
  v2 = v0[3];
  if (is_remote)
  {
    v3 = sub_1AC5C6544();
    v0[7] = v3;
    v0[2] = v3;
    nullsub_1();
    sub_1AC79FC88();
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_1AC7112F8;
    v5 = v0[6];
    v6 = v0[3];

    return sub_1AC5E3B6C(v6, v5, (v0 + 2));
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1AC6B7174, v2, 0);
  }
}

uint64_t sub_1AC7550BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC7114B8;

  return sub_1AC754E28();
}

uint64_t sub_1AC755174()
{
  sub_1AC7A0E78();
  type metadata accessor for EARFullPayloadCorrector();
  OUTLINED_FUNCTION_0_22();
  sub_1AC755734(v0, v1, v2, &unk_1AC7B2ED8);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC7551F0()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for EARFullPayloadCorrector();
    OUTLINED_FUNCTION_0_22();
    sub_1AC755734(v1, v2, v3, &unk_1AC7B2F28);
    OUTLINED_FUNCTION_89();
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC7552B4(uint64_t a1)
{
  type metadata accessor for EARFullPayloadCorrector();
  sub_1AC755734(&qword_1EB56BA38, v1, type metadata accessor for EARFullPayloadCorrector, &unk_1AC7B2F28);
  return sub_1AC79FC28();
}

uint64_t sub_1AC75532C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC7A0E78();
  type metadata accessor for EARFullPayloadCorrector();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC755384(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for EARFullPayloadCorrector();
  v6 = sub_1AC755734(&qword_1EB56BA38, v5, type metadata accessor for EARFullPayloadCorrector, &unk_1AC7B2F28);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC75540C(uint64_t a1)
{
  type metadata accessor for EARFullPayloadCorrector();
  sub_1AC755734(&qword_1EB56BA38, v1, type metadata accessor for EARFullPayloadCorrector, &unk_1AC7B2F28);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

uint64_t sub_1AC7554A0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EARFullPayloadCorrector();
  sub_1AC755734(&qword_1EB56BA38, v4, type metadata accessor for EARFullPayloadCorrector, &unk_1AC7B2F28);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1AC755660()
{
  result = xpcInterface_EARFullPayloadCorrector();
  qword_1EB56E8D8 = result;
  return result;
}

uint64_t sub_1AC755688(void *a1, void (*a2)(void *))
{
  v6[3] = sub_1AC7556F0();
  v6[0] = a1;
  v4 = a1;
  a2(v6);
  return sub_1AC641B24(v6);
}

unint64_t sub_1AC7556F0()
{
  result = qword_1EB56BA40;
  if (!qword_1EB56BA40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB56BA40);
  }

  return result;
}

uint64_t sub_1AC755734(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AC75577C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EFD7C(a1, a2, a3);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for EAREuclid();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    sub_1AC5D0DD0(a1, a2, v6);
  }

  return v10;
}

void sub_1AC755804(uint64_t a1, void *a2, void *a3)
{
  v6 = 0xD00000000000001FLL;
  OUTLINED_FUNCTION_65();
  v11 = a1 == 0xD000000000000018 && v7 == a2;
  if (v11 || (v12 = v10, v13 = v9, v14 = v8, (OUTLINED_FUNCTION_18_16(0xD000000000000018, v7) & 1) != 0))
  {
    [a3 hello];
    return;
  }

  OUTLINED_FUNCTION_65();
  v16 = a1 == 0xD000000000000040 && v15 == a2;
  if (v16 || (OUTLINED_FUNCTION_18_16(0xD000000000000040, v15) & 1) != 0)
  {
    v17 = *(v14 + 16);
    if (v17)
    {
      v18 = sub_1AC5D2398(v14 + 32, &v134);
      if (!v136)
      {
        __break(1u);
        goto LABEL_88;
      }

      v26 = OUTLINED_FUNCTION_42_13(v18, v19, v20, v21, v22, v23, v24, v25, v119, v125, v131, *(&v131 + 1), v132, v133, v134, v135, v136, aBlock);
      v6 = MEMORY[0x1E69E7CA0];
      OUTLINED_FUNCTION_39_12(v26, v27, v28, MEMORY[0x1E69E6158], v29, v30, v31, v32, v120, v126, v131);
      swift_dynamicCast();
      a1 = *(&v131 + 1);
      a2 = sub_1AC79FF58();

      if (v17 != 1)
      {
        sub_1AC5D2398(v14 + 64, &v131);
        if (v133)
        {
          sub_1AC5C3968(&v131, &v134);
          swift_dynamicCast();
          if (v13)
          {
            OUTLINED_FUNCTION_99();
            v33 = swift_allocObject();
            *(v33 + 16) = v13;
            *(v33 + 24) = v12;
            OUTLINED_FUNCTION_0_23();
            *(&aBlock + 1) = 1107296256;
            v138 = sub_1AC759A4C;
            v139 = &block_descriptor_90;
            v13 = _Block_copy(&aBlock);

            OUTLINED_FUNCTION_40_13(v34, sel_findNearestNeighbors_numberOfNeighbors_reply_);

LABEL_18:
            _Block_release(v13);
            return;
          }

          goto LABEL_89;
        }

LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_65();
  v36 = a1 == 0xD000000000000030 && v35 == a2;
  if (v36 || (OUTLINED_FUNCTION_18_16(0xD000000000000030, v35) & 1) != 0)
  {
    v6 = *(v14 + 16);
    if (v6)
    {
      v37 = sub_1AC5D2398(v14 + 32, &v134);
      if (!v136)
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      v45 = OUTLINED_FUNCTION_42_13(v37, v38, v39, v40, v41, v42, v43, v44, v119, v125, v131, *(&v131 + 1), v132, v133, v134, v135, v136, aBlock);
      OUTLINED_FUNCTION_39_12(v45, v46, v47, MEMORY[0x1E69E6158], v48, v49, v50, v51, v121, v127, v131);
      swift_dynamicCast();
      a1 = *(&v131 + 1);
      a2 = sub_1AC79FF58();

      if (v6 != 1)
      {
        v52 = sub_1AC5D2398(v14 + 64, &v134);
        if (v136)
        {
          v60 = OUTLINED_FUNCTION_42_13(v52, v53, v54, v55, v56, v57, v58, v59, v122, v128, v131, *(&v131 + 1), v132, v133, v134, v135, v136, aBlock);
          OUTLINED_FUNCTION_39_12(v60, v61, v62, MEMORY[0x1E69E6158], v63, v64, v65, v66, v123, v129, v131);
          swift_dynamicCast();
          v67 = sub_1AC79FF58();

          if (v13)
          {
            OUTLINED_FUNCTION_99();
            v68 = swift_allocObject();
            *(v68 + 16) = v13;
            *(v68 + 24) = v12;
            v140 = sub_1AC759CB4;
            v141 = v68;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            v138 = sub_1AC5EF7E0;
            v139 = &block_descriptor_84;
            v69 = _Block_copy(&aBlock);

            OUTLINED_FUNCTION_40_13(v70, sel_distanceBetweenSource_target_reply_);
            _Block_release(v69);

            return;
          }

          goto LABEL_92;
        }

LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_72;
  }

  OUTLINED_FUNCTION_65();
  v72 = a1 == 0xD00000000000002CLL && v71 == a2;
  if (!v72 && (OUTLINED_FUNCTION_18_16(0xD00000000000002CLL, v71) & 1) == 0)
  {
    OUTLINED_FUNCTION_65();
    v92 = a1 == 0xD000000000000021 && v91 == a2;
    if (v92 || (OUTLINED_FUNCTION_18_16(0xD000000000000021, v91) & 1) != 0)
    {
      if (v13)
      {
        OUTLINED_FUNCTION_99();
        v93 = swift_allocObject();
        *(v93 + 16) = v13;
        *(v93 + 24) = v12;
        OUTLINED_FUNCTION_0_23();
        OUTLINED_FUNCTION_20_17();
        v138 = v94;
        v139 = &block_descriptor_71;
        _Block_copy(&aBlock);
        OUTLINED_FUNCTION_24_17();

        [a3 maxInputLengthWithReply_];
        goto LABEL_18;
      }

      goto LABEL_95;
    }

    OUTLINED_FUNCTION_65();
    v97 = a1 == 0xD00000000000001FLL && v96 == a2;
    if (v97 || (OUTLINED_FUNCTION_16_18(v95, v96) & 1) != 0)
    {
      if (v13)
      {
        OUTLINED_FUNCTION_99();
        v98 = swift_allocObject();
        *(v98 + 16) = v13;
        *(v98 + 24) = v12;
        OUTLINED_FUNCTION_0_23();
        OUTLINED_FUNCTION_20_17();
        v138 = v99;
        v139 = &block_descriptor_64_0;
        _Block_copy(&aBlock);
        OUTLINED_FUNCTION_24_17();

        [a3 embeddingDimWithReply_];
        goto LABEL_18;
      }

      goto LABEL_96;
    }

    OUTLINED_FUNCTION_65();
    v101 = a1 == 0xD00000000000001ELL && v100 == a2;
    if (v101 || (OUTLINED_FUNCTION_18_16(0xD00000000000001ELL, v100) & 1) != 0)
    {
      if (v13)
      {
        OUTLINED_FUNCTION_99();
        v102 = swift_allocObject();
        *(v102 + 16) = v13;
        *(v102 + 24) = v12;
        OUTLINED_FUNCTION_0_23();
        OUTLINED_FUNCTION_2_23();
        v138 = v103;
        v139 = &block_descriptor_58;
        _Block_copy(&aBlock);
        OUTLINED_FUNCTION_24_17();

        [a3 fullVersionWithReply_];
        goto LABEL_18;
      }

      goto LABEL_97;
    }

LABEL_63:
    OUTLINED_FUNCTION_65();
    v106 = a1 == v6 && v105 == a2;
    if (v106 || (OUTLINED_FUNCTION_16_18(v104, v105) & 1) != 0)
    {
      if (v13)
      {
        OUTLINED_FUNCTION_99();
        v107 = swift_allocObject();
        *(v107 + 16) = v13;
        *(v107 + 24) = v12;
        OUTLINED_FUNCTION_0_23();
        OUTLINED_FUNCTION_2_23();
        v138 = v108;
        v139 = &block_descriptor_51_0;
        _Block_copy(&aBlock);
        OUTLINED_FUNCTION_24_17();

        [a3 majorVersionWithReply_];
        goto LABEL_18;
      }

      goto LABEL_98;
    }

LABEL_72:
    OUTLINED_FUNCTION_65();
    v111 = a1 == v6 && v110 == a2;
    if (v111 || (OUTLINED_FUNCTION_16_18(v109, v110) & 1) != 0)
    {
      if (v13)
      {
        OUTLINED_FUNCTION_99();
        v112 = swift_allocObject();
        *(v112 + 16) = v13;
        *(v112 + 24) = v12;
        OUTLINED_FUNCTION_0_23();
        OUTLINED_FUNCTION_2_23();
        v138 = v113;
        v139 = &block_descriptor_44;
        _Block_copy(&aBlock);
        OUTLINED_FUNCTION_24_17();

        [a3 minorVersionWithReply_];
        goto LABEL_18;
      }

      goto LABEL_99;
    }

    goto LABEL_80;
  }

  if (*(v14 + 16))
  {
    v73 = sub_1AC5D2398(v14 + 32, &v134);
    if (v136)
    {
      OUTLINED_FUNCTION_42_13(v73, v74, v75, v76, v77, v78, v79, v80, v119, v125, v131, *(&v131 + 1), v132, v133, v134, v135, v136, aBlock);
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
      OUTLINED_FUNCTION_39_12(v81, v82, v83, v81, v84, v85, v86, v87, v124, v130, v131);
      swift_dynamicCast();
      v88 = sub_1AC7A0148();

      if (v13)
      {
        OUTLINED_FUNCTION_99();
        v89 = swift_allocObject();
        *(v89 + 16) = v13;
        *(v89 + 24) = v12;
        v140 = sub_1AC759BC8;
        v141 = v89;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v138 = sub_1AC759B48;
        v139 = &block_descriptor_77;
        v90 = _Block_copy(&aBlock);

        [a3 computeEmbeddings:v88 reply:v90];
        _Block_release(v90);

        return;
      }

      goto LABEL_94;
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  __break(1u);
LABEL_80:
  OUTLINED_FUNCTION_65();
  v116 = a1 == v6 && v115 == a2;
  if (v116 || (OUTLINED_FUNCTION_16_18(v114, v115) & 1) != 0)
  {
    if (v13)
    {
      OUTLINED_FUNCTION_99();
      v117 = swift_allocObject();
      *(v117 + 16) = v13;
      *(v117 + 24) = v12;
      OUTLINED_FUNCTION_0_23();
      OUTLINED_FUNCTION_2_23();
      v138 = v118;
      v139 = &block_descriptor_17;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_24_17();

      [a3 patchVersionWithReply_];
      goto LABEL_18;
    }

LABEL_100:
    __break(1u);
  }
}

uint64_t sub_1AC756034()
{
  OUTLINED_FUNCTION_85();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v5 = sub_1AC79FC78();
  v1[10] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[11] = v6;
  v1[12] = OUTLINED_FUNCTION_126();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA28, &qword_1AC7A7AE0);
  v1[13] = v7;
  OUTLINED_FUNCTION_22(v7);
  v1[14] = v8;
  v1[15] = OUTLINED_FUNCTION_126();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v1[16] = v9;
  OUTLINED_FUNCTION_22(v9);
  v1[17] = v10;
  v1[18] = OUTLINED_FUNCTION_126();
  v11 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC75618C()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[18];
    v3 = v0[6];
    v2 = v0[7];
    v4 = sub_1AC5C6544();
    v0[2] = v3;
    v0[3] = v2;
    v0[4] = v4;

    sub_1AC79FC98();
    sub_1AC5C6DD8(v1);
    v9 = v0[15];
    v0[5] = v0[8];
    sub_1AC79FC98();
    sub_1AC5DEE54(v9);
    nullsub_1();
    nullsub_1();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7AC8);
    v10 = swift_task_alloc();
    v0[19] = v10;
    *v10 = v0;
    v10[1] = sub_1AC756424;
    OUTLINED_FUNCTION_31_0(v0[9]);
    OUTLINED_FUNCTION_174();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_174();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC756424()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_18_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v5 + 160) = v0;

  if (!v0)
  {
    *(v5 + 168) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC756540()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v3 + 8))(v1, v2);
  v4 = OUTLINED_FUNCTION_89();
  v5(v4);

  OUTLINED_FUNCTION_82();
  v7 = v0[21];

  return v6(v7);
}

uint64_t sub_1AC756650()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v3 + 8))(v1, v2);
  v4 = OUTLINED_FUNCTION_89();
  v5(v4);

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1AC75671C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1AC6E6540();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v8 = swift_task_alloc();
  v3[9] = v8;
  *v8 = v3;
  v8[1] = sub_1AC6F1EC0;

  return sub_1AC756034();
}

uint64_t sub_1AC756978()
{
  OUTLINED_FUNCTION_85();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = sub_1AC79FC78();
  v1[12] = v6;
  OUTLINED_FUNCTION_22(v6);
  v1[13] = v7;
  v1[14] = OUTLINED_FUNCTION_126();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v1[15] = v8;
  OUTLINED_FUNCTION_22(v8);
  v1[16] = v9;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC756A90()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[18];
    v3 = v0[7];
    v2 = v0[8];
    v4 = sub_1AC5C6544();
    v0[2] = v3;
    v0[6] = v4;
    v0[3] = v2;

    sub_1AC79FC98();
    sub_1AC5C6DD8(v1);
    v9 = v0[17];
    v10 = v0[10];
    v0[4] = v0[9];
    v0[5] = v10;

    sub_1AC79FC98();
    sub_1AC5C6DD8(v9);
    nullsub_1();
    nullsub_1();
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7AB0);
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = sub_1AC756D24;
    OUTLINED_FUNCTION_31_0(v0[11]);
    OUTLINED_FUNCTION_174();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_174();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC756D24()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_18_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v5 + 160) = v0;

  if (!v0)
  {
    *(v5 + 168) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC756E40()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  (*(v0[13] + 8))(v0[14], v0[12]);
  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);

  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_523();

  return v8(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1AC756F38()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  (*(v0[13] + 8))(v0[14], v0[12]);
  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);

  OUTLINED_FUNCTION_44();

  return v6();
}

uint64_t sub_1AC757004()
{
  OUTLINED_FUNCTION_85();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_1AC79FC78();
  v1[6] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[7] = v4;
  v1[8] = OUTLINED_FUNCTION_126();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B910, &unk_1AC7A6E00);
  v1[9] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[10] = v6;
  v1[11] = OUTLINED_FUNCTION_126();
  v7 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC757100()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[11];
    v2 = v0[4];
    v3 = sub_1AC5C6544();
    v0[3] = v2;
    v0[2] = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    sub_1AC79FC98();
    sub_1AC5DDFEC(v1);
    nullsub_1();
    nullsub_1();
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7A98);
    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v8[1] = sub_1AC757304;
    OUTLINED_FUNCTION_31_0(v0[5]);
    OUTLINED_FUNCTION_155();

    return v12(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }
}

uint64_t sub_1AC757304()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_18_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v5 + 104) = v0;

  if (!v0)
  {
    *(v5 + 112) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC757420()
{
  OUTLINED_FUNCTION_72();
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = OUTLINED_FUNCTION_89();
  v2(v1);

  OUTLINED_FUNCTION_82();
  v4 = v0[14];

  return v3(v4);
}

uint64_t sub_1AC7574F4()
{
  OUTLINED_FUNCTION_72();
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = OUTLINED_FUNCTION_89();
  v2(v1);

  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC757594()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC75762C()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v1 = OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_13_0(v1);
    nullsub_1();
    if (v0)
    {

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v3(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7AB0);
      v15 = swift_task_alloc();
      v16 = OUTLINED_FUNCTION_76(v15);
      *v16 = v17;
      OUTLINED_FUNCTION_6_0(v16);
      OUTLINED_FUNCTION_155();

      return v21(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC75777C()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC7578DC()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC757974()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v1 = OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_13_0(v1);
    nullsub_1();
    if (v0)
    {

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v3(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7AB0);
      v15 = swift_task_alloc();
      v16 = OUTLINED_FUNCTION_76(v15);
      *v16 = v17;
      OUTLINED_FUNCTION_6_0(v16);
      OUTLINED_FUNCTION_155();

      return v21(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC757AC4()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC757C24()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC757CBC()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v1 = OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_13_0(v1);
    nullsub_1();
    if (v0)
    {

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v3(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7A88);
      v15 = swift_task_alloc();
      v16 = OUTLINED_FUNCTION_76(v15);
      *v16 = v17;
      OUTLINED_FUNCTION_6_0(v16);
      OUTLINED_FUNCTION_155();

      return v21(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC757E0C()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *v5 = *v2;
  v4[9] = v1;

  OUTLINED_FUNCTION_36_12();

  if (!v1)
  {
    v4[10] = v0;
    v4[11] = v3;
  }

  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_523();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC757F5C()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC757FF4()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v1 = OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_13_0(v1);
    nullsub_1();
    if (v0)
    {

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v3(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7A88);
      v15 = swift_task_alloc();
      v16 = OUTLINED_FUNCTION_76(v15);
      *v16 = v17;
      OUTLINED_FUNCTION_6_0(v16);
      OUTLINED_FUNCTION_155();

      return v21(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC758144()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *v5 = *v2;
  v4[9] = v1;

  OUTLINED_FUNCTION_36_12();

  if (!v1)
  {
    v4[10] = v0;
    v4[11] = v3;
  }

  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_523();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC758294()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC75832C()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v1 = OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_13_0(v1);
    nullsub_1();
    if (v0)
    {

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v3(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7A88);
      v15 = swift_task_alloc();
      v16 = OUTLINED_FUNCTION_76(v15);
      *v16 = v17;
      OUTLINED_FUNCTION_6_0(v16);
      OUTLINED_FUNCTION_155();

      return v21(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC7584AC()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC758544()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v1 = OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_13_0(v1);
    nullsub_1();
    if (v0)
    {

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v3(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7A88);
      v15 = swift_task_alloc();
      v16 = OUTLINED_FUNCTION_76(v15);
      *v16 = v17;
      OUTLINED_FUNCTION_6_0(v16);
      OUTLINED_FUNCTION_155();

      return v21(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC7586C4()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC75875C()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v1 = OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_13_0(v1);
    nullsub_1();
    if (v0)
    {

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v3(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7A80);
      v15 = swift_task_alloc();
      v16 = OUTLINED_FUNCTION_76(v15);
      *v16 = v17;
      OUTLINED_FUNCTION_6_0(v16);
      OUTLINED_FUNCTION_155();

      return v21(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC7588A0()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC7589F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1AC6E6540();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v8 = swift_task_alloc();
  v3[9] = v8;
  *v8 = v3;
  v8[1] = sub_1AC6F4758;

  return sub_1AC756978();
}

uint64_t sub_1AC758C8C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v6 = swift_task_alloc();
    v3[6] = v6;
    *v6 = v3;
    v6[1] = sub_1AC758E00;

    return sub_1AC757004();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC758E00()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v3 = *(v0 + 24);
  **(v0 + 16) = v4;

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t sub_1AC758FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC604AC4;

  return sub_1AC757594();
}

uint64_t sub_1AC759084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC5E63A4;

  return sub_1AC7578DC();
}

uint64_t sub_1AC759150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC5E545C;

  return sub_1AC757C24();
}

uint64_t sub_1AC75921C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC759C88;

  return sub_1AC757F5C();
}

uint64_t sub_1AC7592E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC759C88;

  return sub_1AC758294();
}

uint64_t sub_1AC7593B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC759C88;

  return sub_1AC7584AC();
}

uint64_t sub_1AC759480()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C5380;

  return sub_1AC7586C4();
}

uint64_t sub_1AC759538()
{
  sub_1AC7A0E78();
  type metadata accessor for EAREuclid();
  OUTLINED_FUNCTION_21_14();
  sub_1AC759C20(v0, v1, v2, &unk_1AC7B338C);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC7595B4()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for EAREuclid();
    OUTLINED_FUNCTION_21_14();
    sub_1AC759C20(v1, v2, v3, &unk_1AC7B33DC);
    OUTLINED_FUNCTION_89();
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC759678(uint64_t a1)
{
  type metadata accessor for EAREuclid();
  sub_1AC759C20(&unk_1EB56AD10, v1, type metadata accessor for EAREuclid, &unk_1AC7B33DC);
  return sub_1AC79FC28();
}

uint64_t sub_1AC7596F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC7A0E78();
  type metadata accessor for EAREuclid();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC759748(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for EAREuclid();
  v6 = sub_1AC759C20(&unk_1EB56AD10, v5, type metadata accessor for EAREuclid, &unk_1AC7B33DC);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC7597D0(uint64_t a1)
{
  type metadata accessor for EAREuclid();
  sub_1AC759C20(&unk_1EB56AD10, v1, type metadata accessor for EAREuclid, &unk_1AC7B33DC);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

uint64_t sub_1AC759864@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EAREuclid();
  sub_1AC759C20(&unk_1EB56AD10, v4, type metadata accessor for EAREuclid, &unk_1AC7B33DC);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1AC759A24()
{
  result = xpcInterface_EAREuclid();
  qword_1EB56E5F8 = result;
  return result;
}

uint64_t sub_1AC759A4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1AC5CF764(0, &qword_1EB56DFA0, off_1E797AC60);
  v3 = sub_1AC7A0158();

  v2(v3);
}

uint64_t sub_1AC759AD0(void *a1, void (*a2)(void *))
{
  v6[3] = sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  v6[0] = a1;
  v4 = a1;
  a2(v6);
  return sub_1AC641B24(v6);
}

uint64_t sub_1AC759B48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C650, &unk_1AC7AB400);
  v3 = sub_1AC7A0158();

  v2(v3);
}

uint64_t sub_1AC759C20(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id OUTLINED_FUNCTION_40_13(uint64_t a1, const char *a2)
{

  return [v2 a2];
}