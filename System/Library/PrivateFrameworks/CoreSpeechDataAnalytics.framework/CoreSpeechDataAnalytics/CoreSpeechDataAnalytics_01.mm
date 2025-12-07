uint64_t sub_2478F8FB8()
{
  *(*v1 + 288) = v0;

  if (v0)
  {

    v2 = sub_2478F9A90;
  }

  else
  {
    v2 = sub_2478F90E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2478F90E0()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  *(v0 + 296) = v2;
  v3 = *(*(v0 + 112) + 88);
  v4 = *(*v3 + 528);

  v4(v2);
  if (v1)
  {

    v5 = *(v0 + 8);
LABEL_25:

    return v5();
  }

  if ((sub_2478F6F0C() & 1) == 0)
  {
    v6 = *(v0 + 248);

    v20 = *(v0 + 208);
    goto LABEL_23;
  }

  v6 = *(v0 + 200);
  if ((v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    goto LABEL_32;
  }

  v7 = *(v6 + 16);
  v8 = *(v0 + 200);
  if (!v7)
  {
    goto LABEL_33;
  }

  while (2)
  {
    v3 = 0;
    v60 = v8;
    v62 = v6 & 0xC000000000000001;
    v56 = *(v0 + 160);
    v58 = v8 + 32;
    v9 = (v56 + 32);
    v64 = MEMORY[0x277D84F90];
    while (v62)
    {
      v10 = MEMORY[0x24C1AE890](v3, *(v0 + 200));
      v11 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        goto LABEL_29;
      }

LABEL_13:
      v6 = v7;
      v12 = *(v0 + 152);
      v13 = *(v0 + 128);
      v14 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
      swift_beginAccess();
      sub_2478FA014(v10 + v14, v13);

      if ((*(v56 + 48))(v13, 1, v12) == 1)
      {
        sub_2478E9620(*(v0 + 128), &qword_27EE57278, &unk_247950590);
        v7 = v6;
      }

      else
      {
        v15 = *v9;
        (*v9)(*(v0 + 176), *(v0 + 128), *(v0 + 152));
        v7 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_24793AADC(0, *(v64 + 2) + 1, 1, v64);
        }

        v17 = *(v64 + 2);
        v16 = *(v64 + 3);
        if (v17 >= v16 >> 1)
        {
          v64 = sub_24793AADC((v16 > 1), v17 + 1, 1, v64);
        }

        v18 = *(v0 + 176);
        v19 = *(v0 + 152);
        *(v64 + 2) = v17 + 1;
        v15(&v64[((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v17], v18, v19);
      }

      ++v3;
      if (v11 == v7)
      {
        goto LABEL_34;
      }
    }

    if (v3 >= *(v60 + 16))
    {
      goto LABEL_30;
    }

    v10 = *(v58 + 8 * v3);

    v11 = (v3 + 1);
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_13;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v7 = sub_24794F414();
    v8 = *(v0 + 200);
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_33:
  v64 = MEMORY[0x277D84F90];
LABEL_34:
  v25 = *(v0 + 256);

  if (!v25)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_51:
    v26 = *(v0 + 336);
    v6 = *(v0 + 216);

    v38 = *(v64 + 2);
    v39 = 2;
    if (v38 < v6 && (v26 & 1) == 0)
    {
      v40 = *(v0 + 224);
      v41 = *(v0 + 208);
      v22 = __CFADD__(v40, v41);
      v42 = v40 + v41;
      if (v22)
      {
        goto LABEL_77;
      }

      if (v38 < v42)
      {

        if (qword_27EE571C0 != -1)
        {
          swift_once();
        }

        v43 = sub_24794ED34();
        __swift_project_value_buffer(v43, qword_27EE58DF8);
        v44 = sub_24794ED14();
        v45 = sub_24794F154();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_2478E1000, v44, v45, "#ButtonPressActionEvent: not enough events in biome stream to create manifest", v46, 2u);
          MEMORY[0x24C1AF180](v46, -1, -1);

LABEL_74:
          v20 = *(v0 + 208);
          v6 = *(*(v0 + 112) + 88);
          v3 = *(*v6 + 520);

          (v3)(v20);

LABEL_23:
          v21 = *(v0 + 296);
          v22 = __CFADD__(v21, v20);
          v23 = v21 + v20;
          if (!v22)
          {
            *(*(*(*(*(v0 + 112) + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords) = v23;

            sub_247940408();

            v5 = *(v0 + 8);
            goto LABEL_25;
          }

          goto LABEL_31;
        }

LABEL_73:

        goto LABEL_74;
      }

      v39 = 1;
    }

    v26 = sub_2478E8DC8(*(v0 + 240), *(v0 + 248), v64, v39, *(v0 + 216));
    *(v0 + 304) = v26;

    if (v26)
    {
      v47 = [v26 speakerIdModelSampleManifestReported];
      if (!v47)
      {
        v49 = *(v0 + 208);
LABEL_66:
        *(v0 + 312) = v49;
        v50 = [v26 speakerIdModelSampleManifestReported];
        if (v50)
        {
          v51 = v50;
          sub_24791A2DC(v29);
        }

        v52 = *(v0 + 112);

        v6 = v52[4];
        v29 = v52[5];
        v3 = v52[6];
        v7 = v52[7];
        if (qword_27EE571C0 != -1)
        {
          goto LABEL_78;
        }

        goto LABEL_69;
      }

      v48 = v47;
      v49 = [v47 odsampleIdsCount];

      if ((v49 & 0x8000000000000000) == 0)
      {
        goto LABEL_66;
      }

      __break(1u);
    }

    goto LABEL_73;
  }

  v26 = 0;
  v27 = *(v0 + 232);
  v61 = v27 & 0xFFFFFFFFFFFFFF8;
  v63 = v27 & 0xC000000000000001;
  v57 = *(v0 + 160);
  v59 = v27 + 32;
  v7 = (v57 + 48);
  v28 = (v57 + 32);
  v29 = MEMORY[0x277D84F90];
  while (v63)
  {
    v30 = MEMORY[0x24C1AE890](v26, *(v0 + 232));
    v3 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_75;
    }

LABEL_41:
    v31 = *(v0 + 152);
    v32 = *(v0 + 120);
    v6 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
    swift_beginAccess();
    sub_2478FA014(v30 + v6, v32);

    if ((*v7)(v32, 1, v31) == 1)
    {
      sub_2478E9620(*(v0 + 120), &qword_27EE57278, &unk_247950590);
    }

    else
    {
      v33 = *v28;
      (*v28)(*(v0 + 168), *(v0 + 120), *(v0 + 152));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_24793AADC(0, *(v29 + 2) + 1, 1, v29);
      }

      v35 = *(v29 + 2);
      v34 = *(v29 + 3);
      if (v35 >= v34 >> 1)
      {
        v29 = sub_24793AADC((v34 > 1), v35 + 1, 1, v29);
      }

      v36 = *(v0 + 168);
      v37 = *(v0 + 152);
      *(v29 + 2) = v35 + 1;
      v33(&v29[((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v35], v36, v37);
    }

    ++v26;
    if (v3 == *(v0 + 256))
    {
      goto LABEL_51;
    }
  }

  if (v26 >= *(v61 + 16))
  {
    goto LABEL_76;
  }

  v30 = *(v59 + 8 * v26);

  v3 = v26 + 1;
  if (!__OFADD__(v26, 1))
  {
    goto LABEL_41;
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  swift_once();
LABEL_69:
  v53 = sub_24794ED34();
  v54 = __swift_project_value_buffer(v53, qword_27EE58DF8);
  v65 = (*(v29 + 17) + **(v29 + 17));
  v55 = swift_task_alloc();
  *(v0 + 320) = v55;
  *v55 = v0;
  v55[1] = sub_2478F9B64;

  return v65(v26, v3, v7, v54, v6, v29);
}

uint64_t sub_2478F9A90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2478F9B64()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_2478F9E68;
  }

  else
  {
    v2 = sub_2478F9C78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2478F9C78()
{

  v1 = *(v0 + 328);
  v2 = *(v0 + 312);
  v3 = *(**(*(v0 + 112) + 88) + 520);

  v3(v2);

  if (v1)
  {

    v5 = *(v0 + 8);
  }

  else
  {
    v6 = *(v0 + 296);
    v7 = __CFADD__(v6, v2);
    v8 = v6 + v2;
    if (v7)
    {
      __break(1u);
      return result;
    }

    *(*(*(*(*(v0 + 112) + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords) = v8;

    sub_247940408();

    v5 = *(v0 + 8);
  }

  return v5();
}

uint64_t sub_2478F9E68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2478F9F5C()
{
  sub_2478E6EE0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2478F9FC0()
{
  sub_2478E8084();

  return swift_deallocClassInstance();
}

uint64_t sub_2478FA014(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2478FA084()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2478FA0F4(uint64_t a1, uint64_t a2)
{
  if (sub_247944340(a1, a2, *(*v2 + 16), *(*v2 + 24)))
  {
    v3 = sub_24794F4E4();

    v4 = v3 ^ 1;
  }

  else
  {

    v4 = 0;
  }

  return v4 & 1;
}

unint64_t sub_2478FA184(uint64_t a1, char *a2)
{
  v5 = *(v2 + 64);
  v6 = sub_2478EB3FC(a2);
  v7 = MEMORY[0x277D84F90];
  if ((v6 & 1) == 0)
  {
    return v7;
  }

  v8 = sub_2478ED524(a1);
  v9 = (*(*v5 + 504))();
  if (v3)
  {

    return v7;
  }

  v53 = v9;
  v52 = (*(*v5 + 512))();
  v51 = (*(*v5 + 488))();
  v10 = (*(*v5 + 496))();
  v55 = v7;
  if (v8 >> 62)
  {
    goto LABEL_35;
  }

  v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v12)
  {
    v46 = v10;
    v7 = 0;
    v47 = MEMORY[0x277D84F90];
    v48 = v12;
    while ((v8 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x24C1AE890](v7, v8);
      v13 = v10;
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_33;
      }

LABEL_17:
      if (sub_2478ECA98(v13) & 1) != 0 && (sub_2478FAB5C(v13))
      {
        v50 = *(*v13 + 1272);
        if (v50() == 1)
        {

          goto LABEL_22;
        }

        v49 = sub_24794F4E4();

        if (v49)
        {
LABEL_22:
          if (v51 < v53)
          {
            goto LABEL_23;
          }

LABEL_28:

LABEL_32:
          v12 = v48;
          goto LABEL_10;
        }

LABEL_23:
        if ((v50)(v15) > 1u)
        {
        }

        else
        {
          v16 = sub_24794F4E4();

          if ((v16 & 1) == 0)
          {
LABEL_29:

            MEMORY[0x24C1AE560](v17);
            if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24794F084();
            }

            sub_24794F0A4();

            v47 = v55;
            goto LABEL_32;
          }
        }

        if (v46 >= v52)
        {
          goto LABEL_28;
        }

        goto LABEL_29;
      }

LABEL_10:
      ++v7;
      if (v14 == v12)
      {
        goto LABEL_37;
      }
    }

    if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_34;
    }

    v13 = *(v8 + 8 * v7 + 32);

    v14 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_17;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v18 = v10;
    v12 = sub_24794F414();
    v10 = v18;
  }

  v47 = MEMORY[0x277D84F90];
LABEL_37:

  v19 = *(v5 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxNumRecordsPerDay);
  v20 = v47;

  v54 = sub_247900104(v21);
  v22 = &v54;
  sub_2478FA9B8();
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v22 = v54;
    if (!(v47 >> 62))
    {
      v23 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v23 < v19)
      {
        v19 = v23;
      }

      goto LABEL_41;
    }
  }

  v23 = v22;
  v22 = sub_24794F414();

  if (v22 < v19)
  {
    v19 = v22;
  }

  if (v22 < 0)
  {
    __break(1u);
    goto LABEL_86;
  }

  v22 = v23;
LABEL_41:
  if (v22 < 0)
  {
    v20 = 1;
  }

  else
  {
    v20 = (v22 >> 62) & 1;
  }

  if (v20 != 1)
  {
    v24 = *(v22 + 16);
    goto LABEL_46;
  }

LABEL_86:
  v24 = sub_24794F414();
LABEL_46:
  if (v24 >= v19)
  {
    v25 = v19;
  }

  else
  {
    v25 = v24;
  }

  if (v24 < 0)
  {
    v25 = v19;
  }

  if (v19)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v20)
  {
    if (sub_24794F414() < 0)
    {
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v27 = sub_24794F414();
  }

  else
  {
    v27 = *(v22 + 16);
  }

  if (v27 < v26)
  {
    __break(1u);
    goto LABEL_88;
  }

  if ((v22 & 0xC000000000000001) != 0 && v26)
  {
    type metadata accessor for SiriRequestRecord(0);

    v28 = 0;
    do
    {
      v29 = v28 + 1;
      sub_24794F364();
      v28 = v29;
    }

    while (v26 != v29);
  }

  else
  {
  }

  if (v20)
  {
    v30 = sub_24794F454();
    v20 = v31;
    v23 = v32;
    v26 = v33;

    v22 = v30;
  }

  else
  {
    v23 = 0;
    v20 = v22 + 32;
    v26 = (2 * v26) | 1;
  }

  if ((v26 & 1) == 0)
  {
    goto LABEL_69;
  }

  sub_24794F4F4();
  swift_unknownObjectRetain_n();
  v35 = swift_dynamicCastClass();
  if (!v35)
  {
    swift_unknownObjectRelease();
    v35 = MEMORY[0x277D84F90];
  }

  v36 = *(v35 + 16);

  if (__OFSUB__(v26 >> 1, v23))
  {
    goto LABEL_90;
  }

  if (v36 != (v26 >> 1) - v23)
  {
LABEL_91:
    swift_unknownObjectRelease_n();
LABEL_69:
    sub_2478E8CE4(v22, v20, v23, v26);
    v7 = v34;
    goto LABEL_76;
  }

  v7 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v7)
  {
    goto LABEL_77;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_76:
  swift_unknownObjectRelease();
LABEL_77:
  if (qword_27EE571C0 != -1)
  {
LABEL_88:
    swift_once();
  }

  v37 = sub_24794ED34();
  __swift_project_value_buffer(v37, qword_27EE58DF8);

  v38 = sub_24794ED14();
  v39 = sub_24794F154();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v54 = v41;
    *v40 = 136315138;
    v42 = type metadata accessor for SiriRequestRecord(0);
    v43 = MEMORY[0x24C1AE590](v7, v42);
    v45 = sub_247924380(v43, v44, &v54);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_2478E1000, v38, v39, "#SpkrIdSamplingPolicy: random filtered results: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x24C1AF180](v41, -1, -1);
    MEMORY[0x24C1AF180](v40, -1, -1);
  }

  return v7;
}

uint64_t sub_2478FA948(uint64_t a1)
{
  if ((sub_2478ECA98(a1) & 1) == 0)
  {
    return 0;
  }

  return sub_2478FAB5C(a1);
}

void sub_2478FA9B8()
{
  v1 = *(*v0 + 16);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = 0;
    while (1)
    {
      v15 = 0;
      MEMORY[0x24C1AF190](&v15, 8);
      v5 = (v15 * v1) >> 64;
      if (v1 > v15 * v1)
      {
        v6 = -v1 % v1;
        if (v6 > v15 * v1)
        {
          do
          {
            v15 = 0;
            MEMORY[0x24C1AF190](&v15, 8);
          }

          while (v6 > v15 * v1);
          v5 = (v15 * v1) >> 64;
        }
      }

      v7 = v3 + v5;
      if (__OFADD__(v3, v5))
      {
        break;
      }

      if (v3 != v7)
      {
        v8 = *v0;
        v9 = *(*v0 + 16);
        if (v3 >= v9)
        {
          goto LABEL_21;
        }

        if (v7 >= v9)
        {
          goto LABEL_22;
        }

        v10 = *(v8 + 32 + 8 * v3);
        v11 = *(v8 + 32 + 8 * v7);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_24790054C(v8);
          *v0 = v8;
        }

        if (v3 >= *(v8 + 16))
        {
          goto LABEL_23;
        }

        *(v8 + 8 * v3 + 32) = v11;

        sub_24794F3B4();
        v13 = *v0;
        v14 = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v13;
        if ((v14 & 1) == 0)
        {
          v13 = sub_24790054C(v13);
          *v0 = v13;
        }

        if (v7 >= *(v13 + 16))
        {
          goto LABEL_24;
        }

        *(v13 + 8 * v7 + 32) = v10;

        sub_24794F3B4();
      }

      --v1;
      if (v3++ == v2)
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
  }
}

uint64_t sub_2478FAB5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  if ((*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource + 4) & 1) != 0 || (*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource) | 0x10) != 0x12)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v13 = sub_24794ED34();
    __swift_project_value_buffer(v13, qword_27EE58DF8);

    v14 = sub_24794ED14();
    v15 = sub_24794F154();

    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_13;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36[0] = v17;
    *v16 = 136315138;
    v18 = (*(*a1 + 1264))();
    v20 = sub_247924380(v18, v19, v36);

    *(v16 + 4) = v20;
    v21 = "#ButtonPressSelectionRule: siri input locale being nil for request: %s";
    goto LABEL_12;
  }

  v5 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
  swift_beginAccess();
  sub_2478FA014(a1 + v5, v4);
  v6 = sub_24794EC04();
  LODWORD(v5) = (*(*(v6 - 8) + 48))(v4, 1, v6);
  v7 = sub_2478FB164(v4);
  if (v5 == 1)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v8 = sub_24794ED34();
    __swift_project_value_buffer(v8, qword_27EE58DF8);
    v9 = sub_24794ED14();
    v10 = sub_24794F164();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_21;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "#ButtonPressSelectionRule: request_id is nil";
LABEL_20:
    _os_log_impl(&dword_2478E1000, v9, v10, v12, v11, 2u);
    MEMORY[0x24C1AF180](v11, -1, -1);
LABEL_21:

    return 0;
  }

  if (!*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_deviceType + 8))
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v25 = sub_24794ED34();
    __swift_project_value_buffer(v25, qword_27EE58DF8);
    v9 = sub_24794ED14();
    v10 = sub_24794F164();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_21;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "#ButtonPressSelectionRule: device_type is nil";
    goto LABEL_20;
  }

  v22 = (*a1 + 1272);
  v23 = *v22;
  v24 = (*v22)(v7);
  if (v24 != 1)
  {
    v27 = sub_24794F4E4();

    if (v27)
    {
      return 1;
    }

    if (v23(v28) <= 1u)
    {
      v29 = sub_24794F4E4();

      if (v29)
      {
        return 1;
      }

      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v30 = sub_24794ED34();
      __swift_project_value_buffer(v30, qword_27EE58DF8);

      v14 = sub_24794ED14();
      v15 = sub_24794F154();

      if (!os_log_type_enabled(v14, v15))
      {
LABEL_13:

        return 0;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 136315138;
      v31 = (*(*a1 + 1264))();
      v33 = sub_247924380(v31, v32, &v35);

      *(v16 + 4) = v33;
      v21 = "#ButtonPressSelectionRule: no wake word is found for request: %s";
LABEL_12:
      _os_log_impl(&dword_2478E1000, v14, v15, v21, v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x24C1AF180](v17, -1, -1);
      MEMORY[0x24C1AF180](v16, -1, -1);
      goto LABEL_13;
    }
  }

  return 1;
}

uint64_t sub_2478FB164(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2478FB1CC()
{
  v1 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy____lazy_storage___supportMultiPhrase;
  v2 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy____lazy_storage___supportMultiPhrase);
  if (v2 == 2)
  {
    LOBYTE(v2) = (*(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils + 8) + 144))(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_locale), *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_locale + 8));
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

void sub_2478FB3A4()
{
  (*(**(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 296))();
  if (!v1)
  {
    sub_247940408();
  }
}

void sub_2478FB414()
{
  (*(**(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 304))();
  if (!v1)
  {
    sub_247940408();
  }
}

void sub_2478FB484()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils;
  v3 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils);
  v4 = *(v2 + 8);
  if (((*(v4 + 80))(v3, v4) & 1) != 0 && ((*(v4 + 88))(v3, v4) & 1) != 0 && !sub_2478FB7B4() && ((sub_2478EBB7C() & 1) != 0 || *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_isNewVoiceProfile) == 1))
  {
    *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_isNewVoiceProfile) = 1;
    sub_2479406A8(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate);
  }
}

BOOL sub_2478FB55C()
{
  v1 = v0;
  if (!sub_2478FB7B4() && (v2 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils), v3 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils + 8), ((*(v3 + 80))(*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils), v3) & 1) != 0) && ((*(v3 + 88))(v2, v3) & 1) != 0)
  {
    return *(*(*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 16) == 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2478FB608(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils);
  v4 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils + 8);
  v24 = *a1;
  v5 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_configUserDefaults);
  v6 = (v4)[2](&v24, v5, v3, v4);
  if ((v7 & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxNumRecordsPerDay) = v6;
  }

  v23 = v2;
  v8 = (v4)[6](&v23, v5, v3, v4);
  if ((v9 & 1) == 0)
  {
    v10 = v8;
    v11 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_maxUploadCountHS;
    *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_maxUploadCountHS) = v8;
    v12 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_maxUploadCountJS;
    *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_maxUploadCountJS) = v8;
    result = sub_2478FB1CC();
    if ((result & 1) == 0)
    {
      if (v10 < 0)
      {
        goto LABEL_13;
      }

      *(v1 + v11) = 2 * v10;
      *(v1 + v12) = 0;
    }
  }

  v22 = v2;
  result = (v4)[7](&v22, v5, v3, v4);
  if ((v14 & 1) == 0)
  {
    v15 = result;
    v16 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_intermediateUploadCountHS;
    *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_intermediateUploadCountHS) = result;
    v17 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_intermediateUploadCountJS;
    *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_intermediateUploadCountJS) = result;
    result = sub_2478FB1CC();
    if ((result & 1) == 0)
    {
      *(v1 + v16) = v15;
      *(v1 + v17) = 0;
    }
  }

  v18 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_maxUploadCountHS);
  v19 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_maxUploadCountJS);
  v20 = __CFADD__(v18, v19);
  v21 = v18 + v19;
  if (!v20)
  {
    *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount) = v21;
    return result;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

BOOL sub_2478FB7B4()
{
  v1 = v0;
  v2 = sub_24794EBB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_configUserDefaults);
  type metadata accessor for SamplingMetaDataPrefStore();
  inited = swift_initStackObject();
  *(inited + 16) = v6;
  *(inited + 24) = 0;
  type metadata accessor for SamplingPolicyMetaDataFactory();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(inited + 32) = v8;
  v9 = v6;
  v10 = sub_24793B3D0();
  if (v10)
  {
    v11 = v10[16];

    v12 = v11 == 1;
  }

  else
  {
    v12 = 0;
  }

  type metadata accessor for Utils();
  sub_247940B60(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate, v5);
  sub_2478EC590();
  v13 = sub_24794F4D4();
  v15 = v14;
  (*(v3 + 8))(v5, v2);
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v16 = sub_24794ED34();
  __swift_project_value_buffer(v16, qword_27EE58DF8);

  v17 = sub_24794ED14();
  v18 = sub_24794F154();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23 = v20;
    *v19 = 136315138;
    v21 = sub_247924380(v13, v15, &v23);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_2478E1000, v17, v18, "#ButtonPressSamplingPolicy: speakerId collecting is going on, should skip button press collecting for date: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x24C1AF180](v20, -1, -1);
    MEMORY[0x24C1AF180](v19, -1, -1);
  }

  else
  {
  }

  return v12;
}

uint64_t sub_2478FBA70()
{

  v1 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate;
  v2 = sub_24794EBB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ButtonPressSamplingPolicy(uint64_t a1)
{
  result = qword_27EE57380;
  if (!qword_27EE57380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2478FBC2C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  type metadata accessor for ButtonPressSamplingPolicy(0);
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy____lazy_storage___supportMultiPhrase) = 2;
  *(v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_maxEnrollmentUploadCount) = 5;
  *(v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_maxUploadCountHS) = 20;
  *(v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_maxUploadCountJS) = 20;
  *(v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_intermediateUploadCountHS) = 5;
  *(v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_intermediateUploadCountJS) = 5;
  v14 = 1;
  v9 = a4[2];
  v17 = a4[3];
  v18 = v9;
  v10 = a4[4];
  v15 = a4[5];
  v16 = v10;
  sub_2478E9680(&v18, v13, &qword_27EE57290, &unk_2479504F0);
  sub_2478E9680(&v17, v13, &qword_27EE57298, &unk_2479503D0);
  sub_2478E9680(&v16, v13, &qword_27EE572A0, &unk_247950500);
  sub_2478E9680(&v15, v13, &qword_27EE572A8, &unk_2479503E0);
  v11 = sub_2478E976C(a1, a2, &v14, 4, 40, 10, 180, a4, 1.0);
  if (!v11)
  {
    goto LABEL_6;
  }

  if ((sub_2478FB1CC() & 1) == 0)
  {
    *(v11 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_maxUploadCountHS) = 40;
    *(v11 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_maxUploadCountJS) = 0;
    *(v11 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_intermediateUploadCountHS) = 10;
    *(v11 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics25ButtonPressSamplingPolicy_intermediateUploadCountJS) = 0;
    *(v11 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount) = 40;
  }

  if (*(v11 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_isNewVoiceProfile) == 1)
  {

    sub_247940594();
    sub_2478E9620(&v18, &qword_27EE57290, &unk_2479504F0);
    sub_2478E9620(&v17, &qword_27EE57298, &unk_2479503D0);
    sub_2478E9620(&v16, &qword_27EE572A0, &unk_247950500);
    sub_2478E9620(&v15, &qword_27EE572A8, &unk_2479503E0);
  }

  else
  {
LABEL_6:
    sub_2478E9620(&v18, &qword_27EE57290, &unk_2479504F0);
    sub_2478E9620(&v17, &qword_27EE57298, &unk_2479503D0);
    sub_2478E9620(&v16, &qword_27EE572A0, &unk_247950500);
    sub_2478E9620(&v15, &qword_27EE572A8, &unk_2479503E0);
  }

  return v11;
}

uint64_t sub_2478FC11C(unint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  v42[0] = MEMORY[0x277D84F90];
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_37:
    v7 = sub_24794F414();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = 0;
    v38 = MEMORY[0x277D84F90];
    while (2)
    {
      v10 = v9;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1AE890](v10, a1);
          v9 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v10 >= *(v6 + 16))
          {
            goto LABEL_35;
          }

          v9 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }
        }

        type metadata accessor for MetricsCalcRecord(0);
        v11 = swift_dynamicCastClass();
        if (v11)
        {
          break;
        }

        ++v10;
        if (v9 == v7)
        {
          goto LABEL_20;
        }
      }

      MEMORY[0x24C1AE560](v11);
      if (*((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24794F084();
      }

      sub_24794F0A4();
      v38 = v42[0];
      if (v9 != v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
  }

LABEL_20:
  v41[0] = v8;
  v6 = v38;
  if (v38 >> 62)
  {
    v12 = sub_24794F414();
    if (v12)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v12 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_22:
      v13 = 0;
      v39 = v6 & 0xC000000000000001;
      v14 = v6 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v39)
        {
          v15 = MEMORY[0x24C1AE890](v13, v6);
          a1 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v13 >= *(v14 + 16))
          {
            goto LABEL_36;
          }

          v15 = *(v6 + 8 * v13 + 32);

          a1 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_32:
            __break(1u);
            break;
          }
        }

        v16 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
        swift_beginAccess();
        sub_2478E9680(v15 + v16, v5, &qword_27EE572D0, &unk_2479504E0);
        v17 = sub_24794EBB4();
        if ((*(*(v17 - 8) + 48))(v5, 1, v17) == 1)
        {

          sub_2478E9620(v5, &qword_27EE572D0, &unk_2479504E0);
        }

        else
        {
          sub_2478E9620(v5, &qword_27EE572D0, &unk_2479504E0);
          sub_24794F3A4();
          sub_24794F3D4();
          v6 = v38;
          sub_24794F3E4();
          sub_24794F3B4();
        }

        ++v13;
      }

      while (a1 != v12);
    }
  }

  v41[0] = sub_247900130(v18, sub_24793F6A4, sub_247900364);
  sub_2478FE38C(v41);

  v19 = v41[0];
  v20 = *(v37 + 40);
  v39 = *(v37 + 32);
  v21 = *(v37 + 48);
  v22 = *(v37 + 56);
  v23 = *(v37 + 64);
  v24 = *(v37 + 72);
  v25 = *(v37 + 76);
  v26 = *(v37 + 80);
  type metadata accessor for MetricsCalcDigest(0);
  swift_allocObject();

  v27 = v22;
  LOBYTE(v41[0]) = v26;
  v28 = sub_247904F10(v39, v20, v21, v27, v23, v24, v25 | (v26 << 32));

  if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
  {
    goto LABEL_52;
  }

  v29 = *(v19 + 16);
  if (v29)
  {
LABEL_42:
    v30 = 0;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x24C1AE890](v30, v19);
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v30 >= *(v19 + 16))
        {
          goto LABEL_51;
        }

        v31 = *(v19 + 8 * v30 + 32);

        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          v29 = sub_24794F414();
          if (!v29)
          {
            break;
          }

          goto LABEL_42;
        }
      }

      sub_247902DB8(v31);

      ++v30;
    }

    while (v32 != v29);
  }

  v33 = v37;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v33 + 24);
  *(v33 + 24) = 0x8000000000000000;
  sub_24794B234(v28, v36, isUniquelyReferenced_nonNull_native);
  *(v33 + 24) = v40;
  swift_endAccess();
}

uint64_t sub_2478FC664(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = sub_24794EBB4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v27 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v16 = *a1;
  v17 = *a2;
  v18 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
  swift_beginAccess();
  sub_2478E9680(v16 + v18, v9, &qword_27EE572D0, &unk_2479504E0);
  v19 = v11[6];
  if (v19(v9, 1, v10) == 1)
  {
    v20 = v9;
  }

  else
  {
    v26 = v11[4];
    v26(v15, v9, v10);
    v21 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
    swift_beginAccess();
    sub_2478E9680(v17 + v21, v7, &qword_27EE572D0, &unk_2479504E0);
    if (v19(v7, 1, v10) != 1)
    {
      v23 = v27;
      v26(v27, v7, v10);
      v22 = sub_24794EB54();
      v24 = v11[1];
      v24(v23, v10);
      v24(v15, v10);
      return v22 & 1;
    }

    (v11[1])(v15, v10);
    v20 = v7;
  }

  sub_2478E9620(v20, &qword_27EE572D0, &unk_2479504E0);
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_2478FC95C()
{
  v1[12] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v1[13] = swift_task_alloc();
  v2 = sub_24794EC04();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v3 = sub_24794EBB4();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57390, &qword_247950A58);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2478FCB0C, 0, 0);
}

uint64_t sub_2478FCB0C()
{
  v108 = v0;
  v2 = *(v0 + 96);
  swift_beginAccess();
  v3 = *(v2 + 24);
  *(v0 + 192) = v3;
  v4 = *(v3 + 32);
  *(v0 + 256) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v3 + 64);

  v8 = 0;
  v102 = v0;
LABEL_7:
  if (v7)
  {
    v9 = *(v0 + 192);
LABEL_17:
    v14 = *(v0 + 168);
    v15 = *(v0 + 176);
    v16 = *(v0 + 136);
    v17 = *(v0 + 144);
    v18 = (v7 - 1) & v7;
    v19 = __clz(__rbit64(v7)) | (v8 << 6);
    (*(v17 + 16))(v14, *(v9 + 48) + *(v17 + 72) * v19, v16);
    v20 = *(*(v9 + 56) + 8 * v19);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57398, &unk_247950A60);
    v22 = *(v21 + 48);
    (*(v17 + 32))(v15, v14, v16);
    *(v15 + v22) = v20;
    (*(*(v21 - 8) + 56))(v15, 0, 1, v21);

    v12 = v8;
  }

  else
  {
    v10 = ((1 << *(v0 + 256)) + 63) >> 6;
    if (v10 <= v8 + 1)
    {
      v11 = v8 + 1;
    }

    else
    {
      v11 = ((1 << *(v0 + 256)) + 63) >> 6;
    }

    v12 = (v11 - 1);
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v13 >= v10)
      {
        break;
      }

      v9 = *(v0 + 192);
      v7 = *(v9 + 8 * v13 + 64);
      ++v8;
      if (v7)
      {
        v8 = v13;
        goto LABEL_17;
      }
    }

    v91 = *(v0 + 176);
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57398, &unk_247950A60);
    (*(*(v92 - 8) + 56))(v91, 1, 1, v92);
    v18 = 0;
  }

  *(v0 + 200) = v18;
  *(v0 + 208) = v12;
  v23 = *(v0 + 184);
  sub_2478FE314(*(v0 + 176), v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57398, &unk_247950A60);
  if ((*(*(v24 - 8) + 48))(v23, 1, v24) != 1)
  {
    v25 = *(v0 + 160);
    v26 = *(v0 + 144);
    v27 = *(*(v0 + 184) + *(v24 + 48));
    *(v0 + 216) = v27;
    (*(v26 + 32))(v25);
    v101 = sub_2479031C4();
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 152);
    v29 = *(v0 + 160);
    v30 = *(v0 + 136);
    v31 = *(v0 + 144);
    v32 = sub_24794ED34();
    v1 = __swift_project_value_buffer(v32, qword_27EE58DF8);
    (*(v31 + 16))(v28, v29, v30);
    v33 = sub_24794ED14();
    v34 = sub_24794F154();
    v35 = os_log_type_enabled(v33, v34);
    v37 = *(v0 + 144);
    v36 = *(v0 + 152);
    v38 = *(v0 + 136);
    v103 = v1;
    v100 = v27;
    if (v35)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v107 = v40;
      *v39 = 136315138;
      sub_2478EC590();
      v41 = sub_24794F4D4();
      v43 = v42;
      v44 = v38;
      v45 = *(v37 + 8);
      v45(v36, v44);
      v46 = sub_247924380(v41, v43, &v107);

      *(v39 + 4) = v46;
      _os_log_impl(&dword_2478E1000, v33, v34, "MetricsCalcActionEvent - emitDailySELFEvent - digest for date: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      v47 = v40;
      v1 = v103;
      MEMORY[0x24C1AF180](v47, -1, -1);
      MEMORY[0x24C1AF180](v39, -1, -1);
    }

    else
    {

      v48 = v38;
      v45 = *(v37 + 8);
      v45(v36, v48);
    }

    *(v0 + 224) = v45;
    v2 = v101;
    v99 = v45;
    if ((v101 & 0xC000000000000001) != 0)
    {
      v49 = sub_24794F404();
      v12 = 0;
      v50 = 0;
      v51 = 0;
      v0 = v49 | 0x8000000000000000;
    }

    else
    {
      v52 = -1 << *(v101 + 32);
      v50 = ~v52;
      v12 = (v101 + 64);
      v53 = -v52;
      if (v53 < 64)
      {
        v54 = ~(-1 << v53);
      }

      else
      {
        v54 = -1;
      }

      v51 = v54 & *(v101 + 64);
      v0 = v101;
    }

    v55 = (v50 + 64) >> 6;

    v56 = 0;
    v104 = v12;
    for (i = v0; ; v0 = i)
    {
      if ((v0 & 0x8000000000000000) != 0)
      {
        v62 = sub_24794F434();
        if (!v62 || (v64 = v63, v102[9] = v62, type metadata accessor for MetricsCalcDimensions(), swift_dynamicCast(), v65 = v102[8], v102[11] = v64, type metadata accessor for MetricsCalcCounts(), v12 = v104, swift_dynamicCast(), v59 = v56, v60 = v51, !v65))
        {
LABEL_43:
          v0 = v102;
          v77 = v102[14];
          v78 = v102[15];
          v79 = v102[13];
          sub_2478FE384(i);
          v80 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_deviceAggregationId;
          swift_beginAccess();
          sub_2478E9680(v100 + v80, v79, &qword_27EE57278, &unk_247950590);
          v81 = (*(v78 + 48))(v79, 1, v77);
          v82 = v102[20];
          if (v81 == 1)
          {
            v2 = v102[13];
            v99(v102[20], v102[17]);

            sub_2478E9620(v2, &qword_27EE57278, &unk_247950590);
LABEL_6:
            v7 = v102[25];
            v8 = v102[26];
            goto LABEL_7;
          }

          v83 = v102[16];
          v84 = v102[12];
          (*(v102[15] + 32))(v83, v102[13], v102[14]);
          v2 = *(v84 + 16);
          v12 = sub_24790596C(v101, v82, v83);
          v102[29] = v12;

          if (!v12)
          {
            v85 = v102[28];
            v2 = v102[20];
            v86 = v102[17];
            v88 = v102[15];
            v87 = v102[16];
            v89 = v102[14];

            v90 = *(v88 + 8);
            v1 = v88 + 8;
            v90(v87, v89);
            v85(v2, v86);
            goto LABEL_6;
          }

          if (qword_27EE571E8 == -1)
          {
LABEL_51:
            v97 = *(v2 + 24);
            v96 = *(v2 + 32);
            v98 = swift_task_alloc();
            *(v0 + 240) = v98;
            *v98 = v0;
            v98[1] = sub_2478FD520;

            return sub_2479391A4(v12, v1, v97, v96);
          }

LABEL_56:
          swift_once();
          goto LABEL_51;
        }
      }

      else
      {
        v57 = v56;
        v58 = v51;
        v59 = v56;
        if (!v51)
        {
          while (1)
          {
            v59 = v57 + 1;
            if (__OFADD__(v57, 1))
            {
              break;
            }

            if (v59 >= v55)
            {
              goto LABEL_43;
            }

            v58 = v12[v59];
            ++v57;
            if (v58)
            {
              goto LABEL_37;
            }
          }

          __break(1u);
          goto LABEL_55;
        }

LABEL_37:
        v60 = (v58 - 1) & v58;
        v61 = *(*(v0 + 48) + ((v59 << 9) | (8 * __clz(__rbit64(v58)))));

        if (!v61)
        {
          goto LABEL_43;
        }
      }

      v106 = v60;

      v2 = v1;
      v66 = sub_24794ED14();
      v67 = sub_24794F154();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v107 = v69;
        *v68 = 136315394;
        v70 = sub_247901E00();
        v72 = sub_247924380(v70, v71, &v107);

        *(v68 + 4) = v72;
        *(v68 + 12) = 2080;
        v73 = sub_247902284();
        v2 = v74;
        v75 = sub_247924380(v73, v74, &v107);

        *(v68 + 14) = v75;
        v12 = v104;
        _os_log_impl(&dword_2478E1000, v66, v67, "%s -> %s", v68, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1AF180](v69, -1, -1);
        v76 = v68;
        v1 = v103;
        MEMORY[0x24C1AF180](v76, -1, -1);
      }

      v56 = v59;
      v51 = v106;
    }
  }

  v93 = *(v0 + 96);

  *(v93 + 24) = MEMORY[0x277D84F98];

  v94 = *(v0 + 8);

  return v94();
}

uint64_t sub_2478FD520()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_2478FDFF8;
  }

  else
  {
    v2 = sub_2478FD634;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2478FD634()
{
  v100 = v0;

  v93 = v0;
LABEL_2:
  v1 = *(v0 + 224);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 112);

  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  v7 = *(v0 + 200);
  v8 = *(v0 + 208);
  if (!v7)
  {
    goto LABEL_4;
  }

  while (2)
  {
    v9 = *(v0 + 192);
LABEL_12:
    v14 = *(v0 + 168);
    v15 = *(v0 + 176);
    v16 = *(v0 + 136);
    v17 = *(v0 + 144);
    v18 = (v7 - 1) & v7;
    v19 = __clz(__rbit64(v7)) | (v8 << 6);
    (*(v17 + 16))(v14, *(v9 + 48) + *(v17 + 72) * v19, v16);
    v20 = *(*(v9 + 56) + 8 * v19);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57398, &unk_247950A60);
    v22 = *(v21 + 48);
    (*(v17 + 32))(v15, v14, v16);
    *(v15 + v22) = v20;
    (*(*(v21 - 8) + 56))(v15, 0, 1, v21);

    v12 = v8;
LABEL_13:
    *(v0 + 200) = v18;
    *(v0 + 208) = v12;
    v23 = *(v0 + 184);
    sub_2478FE314(*(v0 + 176), v23);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57398, &unk_247950A60);
    if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
    {
      v88 = *(v0 + 96);

      *(v88 + 24) = MEMORY[0x277D84F98];

      v89 = *(v0 + 8);

      return v89();
    }

    v25 = *(v0 + 160);
    v26 = *(v0 + 144);
    v27 = *(*(v0 + 184) + *(v24 + 48));
    *(v0 + 216) = v27;
    (*(v26 + 32))(v25);
    v92 = sub_2479031C4();
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 152);
    v29 = *(v0 + 160);
    v30 = *(v0 + 136);
    v31 = *(v0 + 144);
    v32 = sub_24794ED34();
    v33 = __swift_project_value_buffer(v32, qword_27EE58DF8);
    (*(v31 + 16))(v28, v29, v30);
    v34 = sub_24794ED14();
    v35 = sub_24794F154();
    v36 = os_log_type_enabled(v34, v35);
    v38 = *(v0 + 144);
    v37 = *(v0 + 152);
    v39 = *(v0 + 136);
    v96 = v33;
    v91 = v27;
    if (v36)
    {
      v40 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v99 = v97;
      *v40 = 136315138;
      sub_2478EC590();
      v41 = sub_24794F4D4();
      v43 = v42;
      v44 = *(v38 + 8);
      v44(v37, v39);
      v45 = sub_247924380(v41, v43, &v99);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_2478E1000, v34, v35, "MetricsCalcActionEvent - emitDailySELFEvent - digest for date: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v97);
      MEMORY[0x24C1AF180](v97, -1, -1);
      MEMORY[0x24C1AF180](v40, -1, -1);
    }

    else
    {

      v44 = *(v38 + 8);
      v44(v37, v39);
    }

    *(v0 + 224) = v44;
    v2 = v92;
    v90 = v44;
    if ((v92 & 0xC000000000000001) != 0)
    {
      v46 = sub_24794F404();
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v12 = v46 | 0x8000000000000000;
    }

    else
    {
      v50 = -1 << *(v92 + 32);
      v48 = ~v50;
      v47 = v92 + 64;
      v51 = -v50;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      else
      {
        v52 = -1;
      }

      v49 = v52 & *(v92 + 64);
      v12 = v92;
    }

    v53 = (v48 + 64) >> 6;

    v54 = 0;
    v94 = v47;
    v95 = v12;
    while (v12 < 0)
    {
      v60 = sub_24794F434();
      if (!v60)
      {
        goto LABEL_38;
      }

      v62 = v61;
      v93[9] = v60;
      type metadata accessor for MetricsCalcDimensions();
      swift_dynamicCast();
      v63 = v93[8];
      v93[11] = v62;
      type metadata accessor for MetricsCalcCounts();
      v12 = v95;
      swift_dynamicCast();
      v57 = v54;
      v58 = v49;
      if (!v63)
      {
        goto LABEL_38;
      }

LABEL_36:
      v98 = v58;

      v2 = v96;
      v0 = sub_24794ED14();
      v64 = sub_24794F154();

      if (os_log_type_enabled(v0, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v99 = v66;
        *v65 = 136315394;
        v67 = sub_247901E00();
        v69 = sub_247924380(v67, v68, &v99);

        *(v65 + 4) = v69;
        *(v65 + 12) = 2080;
        v70 = sub_247902284();
        v2 = v71;
        v72 = sub_247924380(v70, v71, &v99);

        *(v65 + 14) = v72;
        v12 = v95;
        _os_log_impl(&dword_2478E1000, v0, v64, "%s -> %s", v65, 0x16u);
        swift_arrayDestroy();
        v73 = v66;
        v47 = v94;
        MEMORY[0x24C1AF180](v73, -1, -1);
        MEMORY[0x24C1AF180](v65, -1, -1);
      }

      v54 = v57;
      v49 = v98;
    }

    v55 = v54;
    v56 = v49;
    v57 = v54;
    if (!v49)
    {
      while (1)
      {
        v57 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if (v57 >= v53)
        {
          goto LABEL_38;
        }

        v56 = *(v47 + 8 * v57);
        ++v55;
        if (v56)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

LABEL_32:
    v58 = (v56 - 1) & v56;
    v59 = *(*(v12 + 48) + ((v57 << 9) | (8 * __clz(__rbit64(v56)))));

    if (v59)
    {
      goto LABEL_36;
    }

LABEL_38:
    v0 = v93;
    v74 = v93[14];
    v75 = v93[15];
    v76 = v12;
    v77 = v93[13];
    sub_2478FE384(v76);
    v78 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_deviceAggregationId;
    swift_beginAccess();
    sub_2478E9680(v91 + v78, v77, &qword_27EE57278, &unk_247950590);
    if ((*(v75 + 48))(v77, 1, v74) == 1)
    {
      v2 = v93[13];
      v90(v93[20], v93[17]);

      sub_2478E9620(v2, &qword_27EE57278, &unk_247950590);
      v7 = v93[25];
      v8 = v93[26];
      if (v7)
      {
        continue;
      }

LABEL_4:
      v10 = ((1 << *(v0 + 256)) + 63) >> 6;
      if (v10 <= v8 + 1)
      {
        v11 = v8 + 1;
      }

      else
      {
        v11 = ((1 << *(v0 + 256)) + 63) >> 6;
      }

      v12 = v11 - 1;
      while (1)
      {
        v13 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v13 >= v10)
        {
          v79 = *(v0 + 176);
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57398, &unk_247950A60);
          (*(*(v80 - 8) + 56))(v79, 1, 1, v80);
          v18 = 0;
          goto LABEL_13;
        }

        v9 = *(v0 + 192);
        v7 = *(v9 + 8 * v13 + 64);
        ++v8;
        if (v7)
        {
          v8 = v13;
          goto LABEL_12;
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      swift_once();
    }

    else
    {
      v81 = v93[16];
      v82 = v93[12];
      v83 = v93[20];
      (*(v93[15] + 32))(v81, v93[13], v93[14]);
      v2 = *(v82 + 16);
      v12 = sub_24790596C(v92, v83, v81);
      v93[29] = v12;

      if (!v12)
      {
        goto LABEL_2;
      }

      if (qword_27EE571E8 != -1)
      {
        goto LABEL_52;
      }
    }

    break;
  }

  v85 = *(v2 + 24);
  v84 = *(v2 + 32);
  v86 = swift_task_alloc();
  *(v0 + 240) = v86;
  *v86 = v0;
  v86[1] = sub_2478FD520;

  return sub_2479391A4(v12, v96, v85, v84);
}

uint64_t sub_2478FDFF8()
{
  v1 = v0[29];
  v9 = v0[28];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[14];

  (*(v4 + 8))(v5, v6);
  v9(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2478FE11C()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2478FE1B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_2478FE200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2478FE284()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2478E8998;

  return sub_2478FC95C();
}

uint64_t sub_2478FE314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57390, &qword_247950A58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2478FE38C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2478E2F74(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = (v2 + 32);
  v6[1] = v4;
  sub_2478FE408(v6);
  return sub_24794F3B4();
}

void sub_2478FE408(void (**a1)(char *, uint64_t, uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v57 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v59 = &v43 - v6;
  v52 = sub_24794EBB4();
  v7 = *(v52 - 8);
  v8 = MEMORY[0x28223BE20](v52);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - v10;
  v12 = a1[1];
  v13 = sub_24794F4C4();
  if (v13 < v12)
  {
    if (v12 >= -1)
    {
      v14 = v13;
      if (v12 <= 1)
      {
        v15 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for MetricsCalcRecord(0);
        v15 = sub_24794F094();
        *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) = v12 / 2;
      }

      v42 = v15 & 0xFFFFFFFFFFFFFF8;
      v61[0] = ((v15 & 0xFFFFFFFFFFFFFF8) + 32);
      v61[1] = (v12 / 2);
      sub_2478FE8E4(v61, v60, a1, v14);
      *(v42 + 16) = 0;

      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v12 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  if (v12 >= 2)
  {
    v51 = v11;
    v43 = v1;
    v16 = *a1;
    v17 = (v7 + 48);
    v18 = (v7 + 32);
    v50 = (v7 + 8);
    v19 = -1;
    v20 = 1;
    v53 = v16;
    v21 = v16;
    v44 = v12;
    v56 = (v7 + 48);
    v49 = (v7 + 32);
    v22 = v52;
    do
    {
      v46 = v20;
      v47 = v19;
      v23 = *(v53 + v20);
      v45 = v21;
      v24 = v21;
      while (1)
      {
        v55 = v19;
        v62 = *v24;
        v25 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
        swift_beginAccess();
        v58 = v23;
        v26 = v23 + v25;
        v27 = v59;
        sub_2478E9680(v26, v59, &qword_27EE572D0, &unk_2479504E0);
        v28 = *v17;
        if ((*v17)(v27, 1, v22) == 1)
        {
          sub_2478E9620(v59, &qword_27EE572D0, &unk_2479504E0);
          goto LABEL_9;
        }

        v29 = *v18;
        v30 = v51;
        (*v18)(v51, v59, v22);
        v31 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
        v32 = v62;
        swift_beginAccess();
        v33 = v32 + v31;
        v34 = v57;
        sub_2478E9680(v33, v57, &qword_27EE572D0, &unk_2479504E0);
        if (v28(v34, 1, v22) == 1)
        {
          break;
        }

        v35 = v48;
        v36 = v49;
        v29(v48, v57, v22);

        v54 = sub_24794EB54();
        v37 = *v50;
        (*v50)(v35, v22);
        v37(v30, v22);

        v38 = v55;
        v17 = v56;
        v18 = v36;
        if (v54)
        {
          if (!v53)
          {
            goto LABEL_24;
          }

          v39 = *v24;
          v23 = *(v24 + 1);
          *v24 = v23;
          *(v24 + 1) = v39;
          v24 = (v24 - 8);
          v40 = __CFADD__(v38, 1);
          v19 = v38 + 1;
          if (!v40)
          {
            continue;
          }
        }

        goto LABEL_9;
      }

      v41 = *v50;

      v41(v30, v22);
      sub_2478E9620(v57, &qword_27EE572D0, &unk_2479504E0);

      v17 = v56;
      v18 = v49;
LABEL_9:
      v20 = v46 + 1;
      v21 = (v45 + 8);
      v19 = v47 - 1;
    }

    while (v46 + 1 != v44);
  }
}

void sub_2478FE8E4(char **a1, uint64_t a2, void (**a3)(char *, uint64_t, uint64_t), char *a4)
{
  v142 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v159 = &v137 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v137 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v137 - v15;
  v17 = sub_24794EBB4();
  v18 = MEMORY[0x28223BE20](v17);
  v152 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v162 = &v137 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v140 = &v137 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v149 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_108:
    a4 = *v142;
    if (!*v142)
    {
      goto LABEL_149;
    }

    v36 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v131 = v36;
LABEL_111:
      v166 = v131;
      v36 = *(v131 + 2);
      if (v36 >= 2)
      {
        while (*v149)
        {
          v132 = *&v131[16 * v36];
          v133 = v131;
          v134 = *&v131[16 * v36 + 24];
          v135 = v151;
          sub_2478FF6DC(*v149 + 8 * v132, *v149 + 8 * *&v131[16 * v36 + 16], *v149 + 8 * v134, a4);
          v151 = v135;
          if (v135)
          {
            goto LABEL_119;
          }

          if (v134 < v132)
          {
            goto LABEL_136;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v133 = sub_2478FFFEC(v133);
          }

          if (v36 - 2 >= *(v133 + 2))
          {
            goto LABEL_137;
          }

          v136 = &v133[16 * v36];
          *v136 = v132;
          *(v136 + 1) = v134;
          v166 = v133;
          sub_2478FFF60(v36 - 1);
          v131 = v166;
          v36 = *(v166 + 2);
          if (v36 <= 1)
          {
            goto LABEL_119;
          }
        }

        goto LABEL_147;
      }

LABEL_119:

      return;
    }

LABEL_143:
    v131 = sub_2478FFFEC(v36);
    goto LABEL_111;
  }

  v157 = v24;
  v145 = &v137 - v26;
  v28 = 0;
  v158 = (v25 + 48);
  v156 = (v25 + 32);
  v155 = (v25 + 8);
  v29 = MEMORY[0x277D84F90];
  v141 = a4;
  v153 = v9;
  v30 = v159;
  v143 = v14;
  v146 = v16;
  while (2)
  {
    v31 = v28;
    v32 = v28 + 1;
    if (v28 + 1 >= v27)
    {
      v36 = &qword_27EE572D0;
      goto LABEL_29;
    }

    v139 = v29;
    v33 = *v149;
    v34 = *(*v149 + v32);
    v164 = *(*v149 + v28);
    v165 = v34;

    v35 = v151;
    LODWORD(v161) = sub_2478FC664(&v165, &v164);
    v36 = &qword_27EE572D0;
    v151 = v35;
    if (v35)
    {

      return;
    }

    v32 = v31 + 2;
    if (v31 + 2 >= v27)
    {
      v29 = v139;
      goto LABEL_20;
    }

    v138 = v31;
    v37 = (v33 + 8 * v31 + 16);
    v160 = v27;
    while (1)
    {
      v150 = v32;
      v42 = *v37;
      v163 = *(v37 - 1);
      v43 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
      swift_beginAccess();
      v44 = v146;
      sub_2478E9680(v42 + v43, v146, &qword_27EE572D0, &unk_2479504E0);
      v45 = v157;
      v46 = *v158;
      if ((*v158)(v44, 1, v157) == 1)
      {
        sub_2478E9620(v44, &qword_27EE572D0, &unk_2479504E0);
        if (v161)
        {
          goto LABEL_14;
        }

        goto LABEL_8;
      }

      v154 = *v156;
      v154(v145, v44, v45);
      v47 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
      v48 = v163;
      swift_beginAccess();
      v49 = v48 + v47;
      v50 = v143;
      sub_2478E9680(v49, v143, &qword_27EE572D0, &unk_2479504E0);
      if (v46(v50, 1, v45) == 1)
      {
        v51 = *v155;

        v51(v145, v45);
        v36 = &qword_27EE572D0;
        sub_2478E9620(v50, &qword_27EE572D0, &unk_2479504E0);

        v30 = v159;
        if (v161)
        {
LABEL_14:
          v29 = v139;
          a4 = v141;
          v32 = v150;
          v31 = v138;
          goto LABEL_21;
        }

        goto LABEL_8;
      }

      v38 = v140;
      v154(v140, v50, v45);

      v39 = v145;
      v40 = sub_24794EB54();
      v41 = *v155;
      (*v155)(v38, v45);
      v41(v39, v45);

      v30 = v159;
      v36 = &qword_27EE572D0;
      if ((v161 ^ v40))
      {
        break;
      }

LABEL_8:
      v32 = v150 + 1;
      ++v37;
      if (v160 == v150 + 1)
      {
        v32 = v160;
        v29 = v139;
        goto LABEL_19;
      }
    }

    v29 = v139;
    v32 = v150;
LABEL_19:
    v31 = v138;
LABEL_20:
    a4 = v141;
    if (v161)
    {
LABEL_21:
      if (v32 < v31)
      {
        goto LABEL_140;
      }

      if (v31 < v32)
      {
        v52 = 8 * v32 - 8;
        v53 = 8 * v31;
        v54 = v32;
        v55 = v31;
        do
        {
          if (v55 != --v54)
          {
            v57 = *v149;
            if (!*v149)
            {
              goto LABEL_146;
            }

            v56 = *(v57 + v53);
            *(v57 + v53) = *(v57 + v52);
            *(v57 + v52) = v56;
          }

          ++v55;
          v52 -= 8;
          v53 += 8;
        }

        while (v55 < v54);
      }
    }

LABEL_29:
    v58 = v149[1];
    if (v32 >= v58)
    {
      goto LABEL_51;
    }

    if (__OFSUB__(v32, v31))
    {
      goto LABEL_139;
    }

    if (v32 - v31 >= a4)
    {
      goto LABEL_51;
    }

    v59 = &a4[v31];
    if (__OFADD__(v31, a4))
    {
      goto LABEL_141;
    }

    if (v59 >= v58)
    {
      v59 = v149[1];
    }

    if (v59 < v31)
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    if (v32 == v59)
    {
LABEL_51:
      if (v32 < v31)
      {
        goto LABEL_138;
      }

      v82 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v150 = v32;
      if (isUniquelyReferenced_nonNull_native)
      {
        v29 = v82;
      }

      else
      {
        v29 = sub_247900000(0, *(v82 + 2) + 1, 1, v82);
      }

      v36 = *(v29 + 2);
      v84 = *(v29 + 3);
      v85 = v36 + 1;
      if (v36 >= v84 >> 1)
      {
        v29 = sub_247900000((v84 > 1), v36 + 1, 1, v29);
      }

      *(v29 + 2) = v85;
      v86 = &v29[16 * v36];
      v87 = v150;
      *(v86 + 4) = v31;
      *(v86 + 5) = v87;
      a4 = *v142;
      if (!*v142)
      {
        goto LABEL_148;
      }

      if (!v36)
      {
        v30 = v159;
LABEL_103:
        v27 = v149[1];
        v28 = v150;
        a4 = v141;
        if (v150 >= v27)
        {
          goto LABEL_108;
        }

        continue;
      }

      v30 = v159;
      while (1)
      {
        v88 = v85 - 1;
        if (v85 >= 4)
        {
          break;
        }

        if (v85 == 3)
        {
          v89 = *(v29 + 4);
          v90 = *(v29 + 5);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_72:
          if (v92)
          {
            goto LABEL_127;
          }

          v105 = &v29[16 * v85];
          v107 = *v105;
          v106 = *(v105 + 1);
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_130;
          }

          v111 = &v29[16 * v88 + 32];
          v113 = *v111;
          v112 = *(v111 + 1);
          v99 = __OFSUB__(v112, v113);
          v114 = v112 - v113;
          if (v99)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v109, v114))
          {
            goto LABEL_134;
          }

          if (v109 + v114 >= v91)
          {
            if (v91 < v114)
            {
              v88 = v85 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v115 = &v29[16 * v85];
        v117 = *v115;
        v116 = *(v115 + 1);
        v99 = __OFSUB__(v116, v117);
        v109 = v116 - v117;
        v110 = v99;
LABEL_86:
        if (v110)
        {
          goto LABEL_129;
        }

        v118 = &v29[16 * v88];
        v120 = *(v118 + 4);
        v119 = *(v118 + 5);
        v99 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v99)
        {
          goto LABEL_132;
        }

        if (v121 < v109)
        {
          goto LABEL_103;
        }

LABEL_93:
        v36 = v88 - 1;
        if (v88 - 1 >= v85)
        {
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
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*v149)
        {
          goto LABEL_145;
        }

        v126 = v29;
        v127 = *&v29[16 * v36 + 32];
        v128 = *&v29[16 * v88 + 40];
        v129 = v151;
        sub_2478FF6DC(*v149 + 8 * v127, *v149 + 8 * *&v29[16 * v88 + 32], *v149 + 8 * v128, a4);
        v151 = v129;
        if (v129)
        {
          goto LABEL_119;
        }

        if (v128 < v127)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = sub_2478FFFEC(v126);
        }

        if (v36 >= *(v126 + 2))
        {
          goto LABEL_124;
        }

        v130 = &v126[16 * v36];
        *(v130 + 4) = v127;
        *(v130 + 5) = v128;
        v166 = v126;
        v36 = &v166;
        sub_2478FFF60(v88);
        v29 = v166;
        v85 = *(v166 + 2);
        v30 = v159;
        if (v85 <= 1)
        {
          goto LABEL_103;
        }
      }

      v93 = &v29[16 * v85 + 32];
      v94 = *(v93 - 64);
      v95 = *(v93 - 56);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_125;
      }

      v98 = *(v93 - 48);
      v97 = *(v93 - 40);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_126;
      }

      v100 = &v29[16 * v85];
      v102 = *v100;
      v101 = *(v100 + 1);
      v99 = __OFSUB__(v101, v102);
      v103 = v101 - v102;
      if (v99)
      {
        goto LABEL_128;
      }

      v99 = __OFADD__(v91, v103);
      v104 = v91 + v103;
      if (v99)
      {
        goto LABEL_131;
      }

      if (v104 >= v96)
      {
        v122 = &v29[16 * v88 + 32];
        v124 = *v122;
        v123 = *(v122 + 1);
        v99 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v99)
        {
          goto LABEL_135;
        }

        if (v91 < v125)
        {
          v88 = v85 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

    break;
  }

  v139 = v29;
  v154 = *v149;
  v60 = v154 + 8 * v32 - 8;
  v138 = v31;
  v61 = v31 - v32;
  a4 = v30;
  v144 = v59;
LABEL_40:
  v150 = v32;
  v62 = *(v154 + v32);
  v147 = v61;
  v63 = v61;
  v148 = v60;
  v64 = v60;
  while (1)
  {
    v160 = v63;
    v163 = *v64;
    v65 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
    swift_beginAccess();
    v161 = v62;
    sub_2478E9680(v62 + v65, a4, &qword_27EE572D0, &unk_2479504E0);
    v66 = v157;
    v67 = *v158;
    if ((*v158)(a4, 1, v157) == 1)
    {
      sub_2478E9620(a4, &qword_27EE572D0, &unk_2479504E0);
      goto LABEL_39;
    }

    v68 = *v156;
    (*v156)(v162, a4, v66);
    v69 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
    v70 = v163;
    swift_beginAccess();
    v71 = v70 + v69;
    v72 = v153;
    sub_2478E9680(v71, v153, &qword_27EE572D0, &unk_2479504E0);
    if (v67(v72, 1, v66) == 1)
    {
      v80 = *v155;

      v80(v162, v66);
      v81 = v72;
      v36 = &qword_27EE572D0;
      sub_2478E9620(v81, &qword_27EE572D0, &unk_2479504E0);

      a4 = v159;
      goto LABEL_39;
    }

    v73 = v152;
    v68(v152, v72, v66);

    v74 = sub_24794EB54();
    v75 = *v155;
    v76 = v162;
    (*v155)(v73, v66);
    v75(v76, v66);

    if ((v74 & 1) == 0)
    {
      a4 = v159;
      v36 = &qword_27EE572D0;
LABEL_39:
      v32 = v150 + 1;
      v60 = v148 + 8;
      v61 = v147 - 1;
      if ((v150 + 1) == v144)
      {
        v32 = v144;
        v29 = v139;
        v31 = v138;
        goto LABEL_51;
      }

      goto LABEL_40;
    }

    a4 = v159;
    v77 = v160;
    v36 = &qword_27EE572D0;
    if (!v154)
    {
      break;
    }

    v78 = *v64;
    v62 = v64[1];
    *v64 = v62;
    v64[1] = v78;
    --v64;
    v79 = __CFADD__(v77, 1);
    v63 = v77 + 1;
    if (v79)
    {
      goto LABEL_39;
    }
  }

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
}

uint64_t sub_2478FF6DC(char *a1, char *a2, char *a3, char *a4)
{
  v87 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v77 = &v71[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v71[-v11];
  v13 = MEMORY[0x28223BE20](v10);
  v76 = &v71[-v14];
  MEMORY[0x28223BE20](v13);
  v78 = &v71[-v15];
  v86 = sub_24794EBB4();
  v16 = MEMORY[0x28223BE20](v86);
  v72 = &v71[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v19 = MEMORY[0x28223BE20](v18);
  v74 = &v71[-v20];
  MEMORY[0x28223BE20](v19);
  v24 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v24 = a2 - a1;
  }

  v25 = v24 >> 3;
  v26 = a3;
  v27 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v27 = a3 - a2;
  }

  v28 = v27 >> 3;
  if (v25 >= v27 >> 3)
  {
    v81 = v22;
    if (v87 != a2 || &a2[8 * v28] <= v87)
    {
      v51 = v23;
      memmove(v87, a2, 8 * v28);
      v23 = v51;
    }

    v30 = &v87[8 * v28];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v52 = (v23 + 48);
      v73 = (v23 + 8);
      v75 = v12;
      v76 = (v23 + 48);
      v84 = a1;
      v74 = (v23 + 32);
LABEL_30:
      v85 = a2;
      v53 = a2 - 8;
      v26 -= 8;
      v54 = v30;
      v80 = a2 - 8;
      do
      {
        v55 = *(v54 - 1);
        v54 -= 8;
        v82 = *v53;
        v56 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
        swift_beginAccess();
        sub_2478E9680(v55 + v56, v12, &qword_27EE572D0, &unk_2479504E0);
        v57 = *v52;
        v58 = v86;
        if ((*v52)(v12, 1, v86) == 1)
        {
          sub_2478E9620(v12, &qword_27EE572D0, &unk_2479504E0);
        }

        else
        {
          v79 = v26;
          v83 = v30;
          v78 = *v74;
          (v78)(v81, v12, v58);
          v59 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
          v60 = v82;
          swift_beginAccess();
          v61 = v60 + v59;
          v62 = v77;
          sub_2478E9680(v61, v77, &qword_27EE572D0, &unk_2479504E0);
          if (v57(v62, 1, v58) == 1)
          {
            v63 = *v73;

            v63(v81, v58);
            sub_2478E9620(v62, &qword_27EE572D0, &unk_2479504E0);

            v30 = v83;
            v12 = v75;
            v52 = v76;
            v26 = v79;
          }

          else
          {
            v64 = v72;
            (v78)(v72, v62, v58);

            v65 = v81;
            v66 = sub_24794EB54();
            v67 = *v73;
            (*v73)(v64, v58);
            v67(v65, v58);

            v30 = v83;
            v12 = v75;
            v52 = v76;
            v26 = v79;
            if (v66)
            {
              v68 = v84;
              v69 = v80;
              if (v79 + 8 != v85)
              {
                *v79 = *v80;
              }

              if (v30 <= v87 || (a2 = v69, v69 <= v68))
              {
                a2 = v69;
                goto LABEL_45;
              }

              goto LABEL_30;
            }
          }
        }

        v53 = v80;
        if (v26 + 8 != v30)
        {
          *v26 = *v54;
        }

        v26 -= 8;
        v30 = v54;
      }

      while (v54 > v87);
      v30 = v54;
      a2 = v85;
    }
  }

  else
  {
    v81 = &v71[-v21];
    if (v87 != a1 || &a1[8 * v25] <= v87)
    {
      v29 = v23;
      memmove(v87, a1, 8 * v25);
      v23 = v29;
    }

    v30 = &v87[8 * v25];
    v31 = v78;
    if (a2 - a1 >= 8 && a2 < v26)
    {
      v32 = a2;
      v33 = (v23 + 48);
      v34 = (v23 + 32);
      v75 = (v23 + 8);
      v80 = (v23 + 32);
      v83 = v30;
      v77 = (v23 + 48);
      while (1)
      {
        v84 = a1;
        v85 = v32;
        v35 = *v32;
        v82 = *v87;
        v36 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
        swift_beginAccess();
        sub_2478E9680(v35 + v36, v31, &qword_27EE572D0, &unk_2479504E0);
        v37 = *v33;
        v38 = v86;
        if ((*v33)(v31, 1, v86) == 1)
        {
          break;
        }

        v79 = *v34;
        (v79)(v81, v31, v38);
        v39 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
        v40 = v82;
        swift_beginAccess();
        v41 = v40 + v39;
        v42 = v86;
        v43 = v76;
        sub_2478E9680(v41, v76, &qword_27EE572D0, &unk_2479504E0);
        if (v37(v43, 1, v42) == 1)
        {
          v44 = *v75;

          v44(v81, v42);
          sub_2478E9620(v43, &qword_27EE572D0, &unk_2479504E0);

          v30 = v83;
          v33 = v77;
          v31 = v78;
LABEL_19:
          v50 = v87;
          v49 = v84;
          v87 += 8;
          v32 = v85;
          if (v84 == v50)
          {
            goto LABEL_21;
          }

LABEL_20:
          *v49 = *v50;
          goto LABEL_21;
        }

        v45 = v74;
        (v79)(v74, v43, v42);

        v46 = v81;
        v47 = sub_24794EB54();
        v48 = *v75;
        (*v75)(v45, v86);
        v48(v46, v86);

        v30 = v83;
        v33 = v77;
        v31 = v78;
        if ((v47 & 1) == 0)
        {
          goto LABEL_19;
        }

        v49 = v84;
        v50 = v85;
        v32 = v85 + 8;
        if (v84 != v85)
        {
          goto LABEL_20;
        }

LABEL_21:
        a1 = v49 + 8;
        v34 = v80;
        if (v87 >= v30 || v32 >= v26)
        {
          goto LABEL_23;
        }
      }

      sub_2478E9620(v31, &qword_27EE572D0, &unk_2479504E0);
      v30 = v83;
      goto LABEL_19;
    }

LABEL_23:
    a2 = a1;
  }

LABEL_45:
  if (a2 != v87 || a2 >= &v87[(v30 - v87 + (v30 - v87 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, v87, 8 * ((v30 - v87) / 8));
  }

  return 1;
}

uint64_t sub_2478FFF60(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2478FFFEC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_247900000(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE573B0, &qword_247950A78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_247900130(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_24794F414();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2479001D4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24794F414();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24794F414();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2479004F4(&qword_27EE573C0, &qword_27EE573B8, &unk_247950A80);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE573B8, &unk_247950A80);
            v9 = sub_24790C03C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SiriRequestRecord(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_247900364(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24794F414();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24794F414();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2479004F4(&qword_27EE573A8, &qword_27EE573A0, &qword_247950A70);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE573A0, &qword_247950A70);
            v9 = sub_24790C12C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MetricsCalcRecord(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2479004F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_24790058C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_24794F414();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    v6 = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_24794F414();
  v5 = __OFADD__(v13, v3);
  v6 = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2479046D8(v6, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2479001D4(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void *sub_24790067C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_24793AEC8(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = v8 - v10;
  result = sub_24793F2FC(v38, &v3[4 * v10 + 32], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  v13 = result;
  if (result)
  {
    v14 = *(v3 + 2);
    v15 = __OFADD__(v14, result);
    v16 = result + v14;
    if (v15)
    {
      __break(1u);
LABEL_19:
      v19 = (v11 + 64) >> 6;
      if (v19 <= v16 + 1)
      {
        v20 = v16 + 1;
      }

      else
      {
        v20 = (v11 + 64) >> 6;
      }

      v21 = v20 - 1;
      do
      {
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v22 >= v19)
        {
          v40 = v21;
          v41 = 0;
          goto LABEL_13;
        }

        v23 = *(v12 + 8 * v22);
        ++v16;
      }

      while (!v23);
      v17 = (v23 - 1) & v23;
      v18 = __clz(__rbit64(v23)) | (v22 << 6);
      v16 = v22;
      goto LABEL_27;
    }

    *(v3 + 2) = v16;
  }

  result = v38[0];
  if (v13 != v11)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v3 + 2);
  v12 = v38[1];
  v11 = v39;
  v16 = v40;
  if (!v41)
  {
    goto LABEL_19;
  }

  v17 = (v41 - 1) & v41;
  v18 = __clz(__rbit64(v41)) | (v40 << 6);
  v19 = (v39 + 64) >> 6;
LABEL_27:
  v24 = *(result[6] + 4 * v18);
  while (1)
  {
    v25 = *(v3 + 3);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v26)
    {
      goto LABEL_35;
    }

LABEL_30:
    *(v3 + 2) = v6;
  }

  v35 = v16;
  v36 = v19;
  v37 = result;
  v30 = v12;
  v31 = v3;
  v32 = v17;
  v33 = sub_24793AEC8((v25 > 1), v6 + 1, 1, v31);
  v17 = v32;
  v16 = v35;
  v19 = v36;
  v12 = v30;
  v3 = v33;
  result = v37;
  v26 = *(v3 + 3) >> 1;
  if (v6 >= v26)
  {
    goto LABEL_30;
  }

LABEL_35:
  while (1)
  {
    *&v3[4 * v6++ + 32] = v24;
    if (!v17)
    {
      break;
    }

LABEL_34:
    v27 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v24 = *(result[6] + ((v16 << 8) | (4 * v27)));
    if (v6 == v26)
    {
      v6 = v26;
      goto LABEL_30;
    }
  }

  v28 = v16;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v29 >= v19)
    {
      break;
    }

    v17 = *(v12 + 8 * v29);
    ++v28;
    if (v17)
    {
      v16 = v29;
      goto LABEL_34;
    }
  }

  if (v19 <= v16 + 1)
  {
    v34 = v16 + 1;
  }

  else
  {
    v34 = v19;
  }

  v39 = v11;
  v40 = v34 - 1;
  v41 = 0;
  *(v3 + 2) = v6;
LABEL_13:
  result = sub_2478FE384(result);
  *v1 = v3;
  return result;
}

double sub_247900904@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_24792BEB4(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_2478F65EC(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_247900968(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = sub_24794F424();

    if (v2)
    {
      type metadata accessor for MetricsCalcCounts();
      swift_dynamicCast();
      return v5;
    }
  }

  else if (*(a2 + 16))
  {
    sub_24792C168(a1);
    if (v4)
    {
    }
  }

  return 0;
}

uint64_t sub_247900A18(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57428, &qword_247950E80);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_2478E9680(a3 + v15 + v16 * v13, v12, &qword_27EE57428, &qword_247950E80);
      v17 = a1(v12);
      if (v3)
      {
        sub_2478E9620(v12, &qword_27EE57428, &qword_247950E80);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_247904EA0(v12, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_247904778(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_247904778((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_247904EA0(v24, v14 + v15 + v20 * v16);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_2478E9620(v12, &qword_27EE57428, &qword_247950E80);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_247900C7C(uint64_t a1)
{
  v2 = v1;
  v4 = v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_ncScore;
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = (v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_vtAssetVersion);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_mitigationAssetVersion);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_deviceAggregationId);
  *v7 = 0;
  v7[1] = 0;
  strcpy(v58, "ttm_decision");
  BYTE5(v58[1]) = 0;
  HIWORD(v58[1]) = -5120;
  sub_24794F2E4();
  if (!*(a1 + 16) || (v8 = sub_24792BEB4(v59), (v9 & 1) == 0))
  {
    sub_2478F6598(v59);
    goto LABEL_7;
  }

  sub_2478F65EC(*(a1 + 56) + 32 * v8, v60);
  sub_2478F6598(v59);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v10 = sub_24794EEF4();

  v11 = v10;
  if ([v11 isEqualToString:@"TTMTCUMITIGATIONDECISION_UNKNOWN"])
  {
    v12 = 0;
  }

  else if ([v11 isEqualToString:@"TTMTCUMITIGATIONDECISION_NOT_MITIGATED"])
  {
    v12 = 1;
  }

  else if ([v11 isEqualToString:@"TTMTCUMITIGATIONDECISION_MITIGATED"])
  {
    v12 = 2;
  }

  else if ([v11 isEqualToString:@"TTMTCUMITIGATIONDECISION_RECOMMEND_MITIGATED"])
  {
    v12 = 3;
  }

  else if ([v11 isEqualToString:@"TTMTCUMITIGATIONDECISION_MAYBE_MITIGATED"])
  {
    v12 = 4;
  }

  else if ([v11 isEqualToString:@"TTMTCUMITIGATIONDECISION_DO_NOT_OVERRIDE"])
  {
    v12 = 5;
  }

  else if ([v11 isEqualToString:@"TTMTCUMITIGATIONDECISION_MATCHED_USE_MODEL_DECISION"])
  {
    v12 = 6;
  }

  else
  {
    v12 = 0;
  }

LABEL_8:
  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_ttmDecision) = v12;
  strcpy(v58, "nc_decision");
  HIDWORD(v58[1]) = -352321536;
  sub_24794F2E4();
  if (*(a1 + 16) && (v13 = sub_24792BEB4(v59), (v14 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v13, v60);
    sub_2478F6598(v59);
    if (swift_dynamicCast())
    {
      v15 = sub_24794EEF4();

      v16 = v15;
      if ([v16 isEqualToString:@"TTMTCUMITIGATIONDECISION_UNKNOWN"])
      {
        v17 = 0;
      }

      else if ([v16 isEqualToString:@"TTMTCUMITIGATIONDECISION_NOT_MITIGATED"])
      {
        v17 = 1;
      }

      else if ([v16 isEqualToString:@"TTMTCUMITIGATIONDECISION_MITIGATED"])
      {
        v17 = 2;
      }

      else if ([v16 isEqualToString:@"TTMTCUMITIGATIONDECISION_RECOMMEND_MITIGATED"])
      {
        v17 = 3;
      }

      else if ([v16 isEqualToString:@"TTMTCUMITIGATIONDECISION_MAYBE_MITIGATED"])
      {
        v17 = 4;
      }

      else if ([v16 isEqualToString:@"TTMTCUMITIGATIONDECISION_DO_NOT_OVERRIDE"])
      {
        v17 = 5;
      }

      else if ([v16 isEqualToString:@"TTMTCUMITIGATIONDECISION_MATCHED_USE_MODEL_DECISION"])
      {
        v17 = 6;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_2478F6598(v59);
  }

  v17 = 0;
LABEL_15:
  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_ncDecision) = v17;
  strcpy(v58, "spkrId_score");
  BYTE5(v58[1]) = 0;
  HIWORD(v58[1]) = -5120;
  sub_24794F2E4();
  if (!*(a1 + 16))
  {
    goto LABEL_24;
  }

  v18 = sub_24792BEB4(v59);
  if ((v19 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_2478F65EC(*(a1 + 56) + 32 * v18, v60);
  sub_2478F6598(v59);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v23 = 1;
    goto LABEL_26;
  }

  v20 = *v58;
  v58[0] = 0xD000000000000010;
  v58[1] = 0x8000000247954F80;
  sub_24794F2E4();
  if (!*(a1 + 16) || (v21 = sub_24792BEB4(v59), (v22 & 1) == 0))
  {
LABEL_24:
    sub_2478F6598(v59);
    goto LABEL_25;
  }

  sub_2478F65EC(*(a1 + 56) + 32 * v21, v60);
  sub_2478F6598(v59);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  if (*v58 < v20)
  {
    v23 = 1;
  }

  else
  {
    v23 = 2;
  }

LABEL_26:
  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_spkrIdMitigation) = v23;
  strcpy(v58, "nc_score");
  BYTE1(v58[1]) = 0;
  WORD1(v58[1]) = 0;
  HIDWORD(v58[1]) = -402653184;
  sub_24794F2E4();
  if (*(a1 + 16) && (v24 = sub_24792BEB4(v59), (v25 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v24, v60);
    sub_2478F6598(v59);
    if (swift_dynamicCast())
    {
      *v4 = v58[0];
      *(v4 + 4) = 0;
    }
  }

  else
  {
    sub_2478F6598(v59);
  }

  v58[0] = 0xD000000000000022;
  v58[1] = 0x8000000247954E90;
  sub_24794F2E4();
  if (!*(a1 + 16) || (v26 = sub_24792BEB4(v59), (v27 & 1) == 0))
  {
    sub_2478F6598(v59);
    goto LABEL_36;
  }

  sub_2478F65EC(*(a1 + 56) + 32 * v26, v60);
  sub_2478F6598(v59);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v28 = 0;
    goto LABEL_37;
  }

  v28 = v58[0];
LABEL_37:
  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_phsRejectBeforeActivationCount) = v28;
  v58[0] = 0xD000000000000029;
  v58[1] = 0x8000000247954EC0;
  sub_24794F2E4();
  if (!*(a1 + 16) || (v29 = sub_24792BEB4(v59), (v30 & 1) == 0))
  {
    sub_2478F6598(v59);
    goto LABEL_42;
  }

  sub_2478F65EC(*(a1 + 56) + 32 * v29, v60);
  sub_2478F6598(v59);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:
    v31 = 0;
    goto LABEL_43;
  }

  v31 = v58[0];
LABEL_43:
  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_checkerHSRejectBeforeActivationCount) = v31;
  v58[0] = 0xD000000000000029;
  v58[1] = 0x8000000247954EF0;
  sub_24794F2E4();
  if (!*(a1 + 16) || (v32 = sub_24792BEB4(v59), (v33 & 1) == 0))
  {
    sub_2478F6598(v59);
    goto LABEL_48;
  }

  sub_2478F65EC(*(a1 + 56) + 32 * v32, v60);
  sub_2478F6598(v59);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_48:
    v34 = 0;
    goto LABEL_49;
  }

  v34 = v58[0];
LABEL_49:
  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_checkerJSRejectBeforeActivationCount) = v34;
  v58[0] = 0xD000000000000010;
  v58[1] = 0x8000000247954F20;
  sub_24794F2E4();
  if (*(a1 + 16) && (v35 = sub_24792BEB4(v59), (v36 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v35, v60);
    sub_2478F6598(v59);
    if (swift_dynamicCast())
    {
      v37 = v58[1];
      *v5 = v58[0];
      v5[1] = v37;
    }
  }

  else
  {
    sub_2478F6598(v59);
  }

  v58[0] = 0xD000000000000018;
  v58[1] = 0x8000000247954F40;
  sub_24794F2E4();
  if (*(a1 + 16) && (v38 = sub_24792BEB4(v59), (v39 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v38, v60);
    sub_2478F6598(v59);
    if (swift_dynamicCast())
    {
      v40 = v58[1];
      *v6 = v58[0];
      v6[1] = v40;
    }
  }

  else
  {
    sub_2478F6598(v59);
  }

  v58[0] = 0xD000000000000015;
  v58[1] = 0x8000000247954F60;
  sub_24794F2E4();
  if (*(a1 + 16) && (v41 = sub_24792BEB4(v59), (v42 & 1) != 0))
  {
    sub_2478F65EC(*(a1 + 56) + 32 * v41, v60);
    sub_2478F6598(v59);
    if (swift_dynamicCast())
    {
      v43 = v58[1];
      *v7 = v58[0];
      v7[1] = v43;
    }
  }

  else
  {
    sub_2478F6598(v59);
  }

  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_isVTRequestWithNoTriggerPhrase) = 0;
  *(v2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_doesContainNonEmptyTranscription) = 0;
  result = sub_2478F0B18(a1);
  v46 = *(result + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best);
  v45 = *(result + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best + 8);
  if (v45)
  {
    v47 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v47 = v46 & 0xFFFFFFFFFFFFLL;
    }

    if (v47)
    {
      *(result + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_doesContainNonEmptyTranscription) = 1;
    }
  }

  if ((*(result + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource + 4) & 1) == 0)
  {
    v48 = *(result + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource);
    if (v48 == 80 || v48 == 17)
    {
      v49 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_isVTRequestWithNoTriggerPhrase;
      *(result + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_isVTRequestWithNoTriggerPhrase) = 1;
      if (v45)
      {
        v50 = *(result + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_siriInputLocale);
        if (v50)
        {
          v51 = result;
          v52 = v50;

          v53 = SISchemaISOLocale.toString()();

          if (*(v51 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_triggerPhrase + 4) == 1)
          {

            return v51;
          }

          v54 = *(v51 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_triggerPhrase);
          v55 = sub_247944340(v46, v45, v53._countAndFlagsBits, v53._object);

          if (v55 == 1)
          {

            result = v51;
            if (v54 == 1)
            {
LABEL_102:
              *(result + v49) = 0;
              return result;
            }
          }

          else
          {
            v56 = sub_24794F4E4();

            if (v56)
            {
              result = v51;
              if (v54 == 1)
              {
                goto LABEL_102;
              }
            }

            if (v55 > 1u)
            {

              result = v51;
              goto LABEL_101;
            }
          }

          v57 = sub_24794F4E4();

          result = v51;
          if ((v57 & 1) == 0)
          {
            return result;
          }

LABEL_101:
          if (v54 != 2)
          {
            return result;
          }

          goto LABEL_102;
        }
      }
    }
  }

  return result;
}

uint64_t sub_247901824()
{
  sub_24794F344();
  MEMORY[0x24C1AE4C0](538976288, 0xE400000000000000);
  v1 = sub_2478F54C0();
  MEMORY[0x24C1AE4C0](v1);

  MEMORY[0x24C1AE4C0](0xD000000000000031, 0x80000002479552A0);
  v2 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v2);

  MEMORY[0x24C1AE4C0](0xD000000000000015, 0x80000002479552E0);
  v3 = sub_24794F1F4();
  MEMORY[0x24C1AE4C0](v3);

  MEMORY[0x24C1AE4C0](0xD000000000000015, 0x8000000247955300);
  v4 = sub_24794F1F4();
  MEMORY[0x24C1AE4C0](v4);

  MEMORY[0x24C1AE4C0](0xD000000000000019, 0x8000000247955320);
  v5 = sub_24794F1F4();
  MEMORY[0x24C1AE4C0](v5);

  MEMORY[0x24C1AE4C0](0xD000000000000029, 0x8000000247955340);
  v6 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v6);

  MEMORY[0x24C1AE4C0](0xD00000000000002FLL, 0x8000000247955370);
  v7 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v7);

  MEMORY[0x24C1AE4C0](0xD000000000000029, 0x80000002479553A0);
  if (*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_isVTRequestWithNoTriggerPhrase))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_isVTRequestWithNoTriggerPhrase))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x24C1AE4C0](v8, v9);

  MEMORY[0x24C1AE4C0](0xD00000000000002BLL, 0x80000002479553D0);
  if (*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_doesContainNonEmptyTranscription))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_doesContainNonEmptyTranscription))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x24C1AE4C0](v10, v11);

  MEMORY[0x24C1AE4C0](0xD000000000000019, 0x8000000247955400);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57438, &qword_247950E90);
  v12 = sub_24794EF14();
  MEMORY[0x24C1AE4C0](v12);

  MEMORY[0x24C1AE4C0](0xD000000000000021, 0x8000000247955420);

  v13 = sub_24794EF14();
  MEMORY[0x24C1AE4C0](v13);

  MEMORY[0x24C1AE4C0](0xD00000000000001ELL, 0x8000000247955450);

  v14 = sub_24794EF14();
  MEMORY[0x24C1AE4C0](v14);

  return 0;
}

double sub_247901C60()
{

  return result;
}

uint64_t sub_247901CBC()
{
  sub_2478F5718();

  return swift_deallocClassInstance();
}

uint64_t sub_247901D70(uint64_t a1)
{

  sub_24794EF74();

  sub_24794F5A4();
  v2 = *(v1 + 40);
  sub_24794F224();

  return sub_24794F5A4();
}

uint64_t sub_247901E00()
{
  v1 = v0;
  sub_24794F344();
  MEMORY[0x24C1AE4C0](0xD000000000000027, 0x8000000247955160);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  MEMORY[0x24C1AE4C0](v2, v3);

  MEMORY[0x24C1AE4C0](0xD000000000000012, 0x8000000247955190);
  v4 = sub_24794F1E4();
  MEMORY[0x24C1AE4C0](v4);

  MEMORY[0x24C1AE4C0](0xD000000000000016, 0x80000002479551B0);
  v5 = *(v0 + 40);
  v6 = [v5 description];
  v7 = sub_24794EF04();
  v9 = v8;

  MEMORY[0x24C1AE4C0](v7, v9);

  MEMORY[0x24C1AE4C0](0xD000000000000015, 0x80000002479551D0);
  if (v1[7])
  {
    v10 = v1[6];
    v11 = v1[7];
  }

  else
  {
    v10 = 7104878;
    v11 = 0xE300000000000000;
  }

  MEMORY[0x24C1AE4C0](v10, v11);

  MEMORY[0x24C1AE4C0](0xD00000000000001DLL, 0x80000002479551F0);
  if (v1[9])
  {
    v12 = v1[8];
    v13 = v1[9];
  }

  else
  {
    v12 = 7104878;
    v13 = 0xE300000000000000;
  }

  MEMORY[0x24C1AE4C0](v12, v13);

  MEMORY[0x24C1AE4C0](0xD000000000000017, 0x8000000247955210);
  v14 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v14);

  MEMORY[0x24C1AE4C0](0xD000000000000014, 0x8000000247955230);
  v15 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v15);

  MEMORY[0x24C1AE4C0](0xD00000000000001BLL, 0x8000000247955250);
  v16 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v16);

  MEMORY[0x24C1AE4C0](0xD000000000000020, 0x8000000247955270);
  sub_24794F104();
  return 0;
}

uint64_t sub_24790215C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2479021AC()
{
  sub_24794F584();
  sub_247901D70(v1);
  return sub_24794F5B4();
}

uint64_t sub_247902214(uint64_t a1)
{
  sub_24794F584();
  sub_247901D70(v2);
  return sub_24794F5B4();
}

uint64_t sub_247902284()
{
  sub_24794F344();
  MEMORY[0x24C1AE4C0](0xD000000000000037, 0x8000000247954FA0);
  v0 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v0);

  MEMORY[0x24C1AE4C0](0xD000000000000029, 0x8000000247954FE0);
  v1 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v1);

  MEMORY[0x24C1AE4C0](0xD000000000000027, 0x8000000247955010);
  v2 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v2);

  MEMORY[0x24C1AE4C0](0xD000000000000028, 0x8000000247955040);
  v3 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v3);

  MEMORY[0x24C1AE4C0](0xD000000000000026, 0x8000000247955070);
  v4 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v4);

  MEMORY[0x24C1AE4C0](0xD000000000000026, 0x80000002479550A0);
  v5 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v5);

  MEMORY[0x24C1AE4C0](0xD000000000000024, 0x80000002479550D0);
  v6 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v6);

  MEMORY[0x24C1AE4C0](0xD00000000000002ALL, 0x8000000247955100);
  v7 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v7);

  MEMORY[0x24C1AE4C0](0xD000000000000026, 0x8000000247955130);
  v8 = sub_24794F4D4();
  MEMORY[0x24C1AE4C0](v8);

  return 0;
}

CoreSpeechDataAnalytics::RejectTrackerType_optional __swiftcall RejectTrackerType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_24790266C()
{
  result = qword_27EE573C8;
  if (!qword_27EE573C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE573C8);
  }

  return result;
}

uint64_t sub_2479026C0()
{
  v1 = *v0;
  sub_24794F584();
  MEMORY[0x24C1AEAB0](v1);
  return sub_24794F5B4();
}

uint64_t sub_247902734(uint64_t a1)
{
  v2 = *v1;
  sub_24794F584();
  MEMORY[0x24C1AEAB0](v2);
  return sub_24794F5B4();
}

unint64_t sub_247902790()
{
  result = qword_27EE573D0;
  if (!qword_27EE573D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE573D8, &qword_247950B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE573D0);
  }

  return result;
}

void sub_247902904(int a1, int a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57428, &qword_247950E80);
  v47 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v44 - v13);
  if (a2 == 2)
  {
    v15 = *(v12 + 48);
    *v14 = a1;
    v16 = sub_24794EBB4();
    (*(*(v16 - 8) + 16))(v14 + v15, a3, v16);
    swift_beginAccess();
    v17 = *(v4 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 24) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_3;
  }

  v21 = swift_beginAccess();
  v22 = *(v4 + 24);
  MEMORY[0x28223BE20](v21);
  *(&v44 - 2) = a3;

  v23 = sub_247900A18(sub_247904E40, (&v44 - 4), v22);
  v17 = v23;
  v46 = *(v23 + 16);
  if (!v46)
  {
LABEL_22:

    *(v4 + 24) = MEMORY[0x277D84F90];

    return;
  }

  v24 = 0;
  v45 = v23 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
  v14 = &qword_27EE57428;
  v25 = &qword_247950E80;
  while (v24 < v17[2])
  {
    v26 = v14;
    v27 = v25;
    sub_2478E9680(v45 + *(v47 + 72) * v24, v11, v14, v25);
    v28 = *v11;
    swift_beginAccess();
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v4 + 32);
    v14 = v48;
    *(v4 + 32) = 0x8000000000000000;
    v30 = sub_24792C090(v28);
    v32 = v14[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_24;
    }

    v36 = v31;
    if (v14[3] >= v35)
    {
      if ((v29 & 1) == 0)
      {
        v43 = v30;
        sub_24794C48C();
        v30 = v43;
        v14 = v48;
        *(v4 + 32) = v48;
        if (v36)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }
    }

    else
    {
      sub_247949D40(v35, v29);
      v14 = v48;
      v30 = sub_24792C090(v28);
      if ((v36 & 1) != (v37 & 1))
      {
        type metadata accessor for SISchemaInvocationSource(0);
        sub_24794F514();
        __break(1u);
        return;
      }
    }

    *(v4 + 32) = v14;
    if (v36)
    {
      goto LABEL_17;
    }

LABEL_15:
    v14[(v30 >> 6) + 8] |= 1 << v30;
    *(v14[6] + 4 * v30) = v28;
    *(v14[7] + 8 * v30) = 0;
    v38 = v14[2];
    v34 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v34)
    {
      goto LABEL_26;
    }

    v14[2] = v39;
LABEL_17:
    v40 = v14[7];
    v41 = *(v40 + 8 * v30);
    v34 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v34)
    {
      goto LABEL_25;
    }

    ++v24;
    *(v40 + 8 * v30) = v42;
    swift_endAccess();
    v14 = v26;
    v25 = v27;
    sub_2478E9620(v11, v26, v27);
    if (v46 == v24)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  v17 = sub_24793ACD8(0, v17[2] + 1, 1, v17);
  *(v4 + 24) = v17;
LABEL_3:
  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_24793ACD8((v19 > 1), v20 + 1, 1, v17);
  }

  v17[2] = v20 + 1;
  sub_247904EA0(v14, v17 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v20);
  *(v4 + 24) = v17;
  swift_endAccess();
}

uint64_t sub_247902D54()
{

  return swift_deallocClassInstance();
}

void sub_247902DB8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v41 - v5;
  v7 = sub_24794EBB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2479040C0(a1);
  if (v11 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource + 4))
  {
    return;
  }

  v12 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource);
  v13 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_isVTRequestWithNoTriggerPhrase);
  v14 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_doesContainNonEmptyTranscription);
  v42 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_ttmDecision;
  v15 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_ttmDecision) == 2;
  v44 = v8;
  v45 = v15;
  v16 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_falseWakeCounts;
  swift_beginAccess();
  v17 = *(v1 + v16);
  v18 = *(v17 + 16);
  v43 = v12;
  if (v18)
  {
    v19 = sub_24792C090(v12);
    if (v20)
    {
      v21 = (*(v17 + 56) + 24 * v19);
      v23 = *v21;
      v22 = v21[1];
      v18 = v21[2];
      goto LABEL_8;
    }

    v18 = 0;
  }

  v22 = 0;
  v23 = 0;
LABEL_8:
  v24 = __OFADD__(v23, v13);
  v25 = v23 + v13;
  if (v24)
  {
    __break(1u);
    goto LABEL_25;
  }

  v26 = (v14 & 1) == 0;
  v27 = v22 + v26;
  if (__OFADD__(v22, v26))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28 = v18 + v45;
  if (__OFADD__(v18, v45))
  {
LABEL_26:
    __break(1u);
    return;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46[0] = *(v2 + v16);
  *(v2 + v16) = 0x8000000000000000;
  v30 = v27;
  v31 = v43;
  sub_24794B274(v25, v30, v28, v43, isUniquelyReferenced_nonNull_native);
  *(v2 + v16) = v46[0];
  swift_endAccess();
  v32 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
  swift_beginAccess();
  sub_2478E9680(a1 + v32, v6, &qword_27EE572D0, &unk_2479504E0);
  v33 = v44;
  if ((*(v44 + 48))(v6, 1, v7) == 1)
  {
    sub_2478E9620(v6, &qword_27EE572D0, &unk_2479504E0);
  }

  else
  {
    (*(v33 + 32))(v10, v6, v7);
    v34 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_rejectTrackers;
    swift_beginAccess();
    if (*(*(v2 + v34) + 16))
    {
      sub_24792C0FC(0);
      if (v35)
      {
        v36 = *(a1 + v42);

        sub_247902904(v31, v36, v10);
      }
    }

    if (*(*(v2 + v34) + 16))
    {
      sub_24792C0FC(1);
      if (v37)
      {
        v38 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_ncDecision);

        sub_247902904(v31, v38, v10);
      }
    }

    if (*(*(v2 + v34) + 16))
    {
      sub_24792C0FC(2);
      if (v39)
      {
        v40 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_spkrIdMitigation);

        sub_247902904(v31, v40, v10);
      }
    }

    (*(v33 + 8))(v10, v7);
  }
}

uint64_t sub_2479031C4()
{
  v1 = v0;
  v2 = sub_24794DF28(MEMORY[0x277D84F90]);
  v3 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_rejectTrackers;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (*(v4 + 16) && (v5 = sub_24792C0FC(0), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_beginAccess();
    v8 = *(v7 + 32);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v1 + v3);
  if (*(v9 + 16) && (v10 = sub_24792C0FC(1), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_beginAccess();
    v13 = *(v12 + 32);
  }

  else
  {
    v13 = 0;
  }

  if (*(*(v1 + v3) + 16) && (sub_24792C0FC(2), (v14 & 1) != 0))
  {
    v15 = v2;
    swift_beginAccess();
  }

  else
  {
    v15 = v2;
    v16 = 0;
  }

  v171[4] = v8;
  v171[5] = v13;
  v171[6] = v16;
  v143 = v16;

  v145 = v8;

  v144 = v13;

  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
LABEL_14:
  if (v17 <= 3)
  {
    v20 = 3;
  }

  else
  {
    v20 = v17;
  }

  while (v17 != 3)
  {
    if (v20 == v17)
    {
      goto LABEL_121;
    }

    v21 = v171[v17++ + 4];
    if (v21)
    {

      v22 = v1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_24793AFCC(0, v19[2] + 1, 1, v19);
      }

      v24 = v19[2];
      v23 = v19[3];
      if (v24 >= v23 >> 1)
      {
        v19 = sub_24793AFCC((v23 > 1), v24 + 1, 1, v19);
      }

      v19[2] = v24 + 1;
      v19[v24 + 4] = v21;
      v1 = v22;
      goto LABEL_14;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57418, &qword_247950E68);
  swift_arrayDestroy();
  v169 = v18;
  v25 = v19[2];
  if (v25)
  {
    v26 = 0;
    while (v26 < v19[2])
    {
      v27 = v26 + 1;

      sub_24790067C(v28);
      v26 = v27;
      if (v25 == v27)
      {
        goto LABEL_29;
      }
    }

LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

LABEL_29:

  v29 = v169;
  v170 = MEMORY[0x277D84FA0];
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = 32;
    v32 = v15;
    do
    {
      sub_24793E22C(&v172, *(v29 + v31));
      v31 += 4;
      --v30;
    }

    while (v30);

    v33 = v170;
  }

  else
  {

    v33 = MEMORY[0x277D84FA0];
    v32 = v15;
  }

  v172 = v33;
  v34 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_falseWakeCounts;
  swift_beginAccess();
  v165 = v34;

  sub_247903E20(v35, v36);
  v37 = 0;
  v38 = v172 + 56;
  v141 = v172 + 56;
  v142 = v172;
  v39 = 1 << *(v172 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v172 + 56);
  v147 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_vtAssetVersion);
  v146 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_mitigationAssetVersion);
  v42 = (v39 + 63) >> 6;
  v140 = v42;
  while (1)
  {
    v164 = v32;
    if (!v41)
    {
      break;
    }

    v43 = v37;
LABEL_44:
    v44 = *(v1 + 16);
    v45 = *(v1 + 24);
    v46 = *(v1 + 32);
    v47 = v147[1];
    v48 = v146[1];
    v49 = *(v1 + 40);
    v155 = *(v1 + 48);
    v153 = *(v1 + 56);
    v150 = *(*(v142 + 48) + ((v43 << 8) | (4 * __clz(__rbit64(v41)))));
    v151 = *(v1 + 60);
    v149 = *(v1 + 64);
    v148 = *v146;
    v157 = *v147;
    type metadata accessor for MetricsCalcDimensions();
    v50 = swift_allocObject();
    *(v50 + 16) = v44;
    *(v50 + 24) = v45;
    *(v50 + 32) = v46;
    v159 = v49;
    *(v50 + 40) = v49;
    *&v51 = v157;
    *(&v51 + 1) = v47;
    *&v52 = v148;
    *(&v52 + 1) = v48;
    *(v50 + 48) = v51;
    *(v50 + 64) = v52;
    *(v50 + 80) = v150;
    *(v50 + 84) = 0;
    *(v50 + 88) = 0;
    *(v50 + 92) = 1;
    *(v50 + 96) = v155;
    *(v50 + 104) = v153;
    *(v50 + 108) = v151;
    *(v50 + 112) = v149;
    v53 = *(v1 + v165);
    if (*(v53 + 16))
    {
      v54 = sub_24792C090(v150);
      v56 = v143;
      v55 = v144;
      if (v57)
      {
        v156 = *(*(v53 + 56) + 24 * v54);
      }

      else
      {
        v156 = 0;
      }

      v58 = v164;
    }

    else
    {
      v156 = 0;
      v58 = v164;
      v56 = v143;
      v55 = v144;
    }

    v59 = *(v1 + v165);
    if (*(v59 + 16) && (v60 = sub_24792C090(v150), (v61 & 1) != 0))
    {
      v154 = *(*(v59 + 56) + 24 * v60 + 8);
    }

    else
    {
      v154 = 0;
    }

    v62 = *(v1 + v165);
    if (*(v62 + 16) && (v63 = sub_24792C090(v150), (v64 & 1) != 0))
    {
      v152 = *(*(v62 + 56) + 24 * v63 + 16);
      if (!v55)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v152 = 0;
      if (!v55)
      {
        goto LABEL_63;
      }
    }

    if (!*(v55 + 16))
    {
LABEL_63:
      v65 = v150;
      v68 = 0;
      if (!v56)
      {
        goto LABEL_70;
      }

      goto LABEL_66;
    }

    v65 = v150;
    v66 = sub_24792C090(v150);
    if (v67)
    {
      v68 = *(*(v55 + 56) + 8 * v66);
      if (!v56)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v68 = 0;
      if (!v56)
      {
        goto LABEL_70;
      }
    }

LABEL_66:
    if (*(v56 + 16))
    {
      v69 = sub_24792C090(v65);
      if (v70)
      {
        v71 = *(*(v56 + 56) + 8 * v69);
        v72 = v145;
        if (!v145)
        {
          goto LABEL_75;
        }

        goto LABEL_71;
      }
    }

LABEL_70:
    v71 = 0;
    v72 = v145;
    if (!v145)
    {
      goto LABEL_75;
    }

LABEL_71:
    if (*(v72 + 16) && (v73 = sub_24792C090(v65), (v74 & 1) != 0))
    {
      v72 = *(*(v72 + 56) + 8 * v73);
    }

    else
    {
      v72 = 0;
    }

LABEL_75:
    type metadata accessor for MetricsCalcCounts();
    v75 = swift_allocObject();
    *(v75 + 16) = 0;
    *(v75 + 24) = 0;
    *(v75 + 32) = 0;
    *(v75 + 40) = 0;
    *(v75 + 48) = 0;
    *(v75 + 56) = 0;
    *(v75 + 64) = v156;
    *(v75 + 72) = 0;
    *(v75 + 80) = v154;
    *(v75 + 88) = 0;
    *(v75 + 96) = v152;
    *(v75 + 104) = 0;
    *(v75 + 112) = v68;
    *(v75 + 120) = 0;
    *(v75 + 128) = v71;
    *(v75 + 136) = 0;
    *(v75 + 144) = v72;
    *(v75 + 152) = 0;
    if ((v58 & 0xC000000000000001) != 0)
    {
      if (v58 < 0)
      {
        v76 = v58;
      }

      else
      {
        v76 = v58 & 0xFFFFFFFFFFFFFF8;
      }

      v77 = v159;

      v78 = sub_24794F414();
      if (__OFADD__(v78, 1))
      {
        goto LABEL_124;
      }

      v58 = sub_247904ADC(v76, v78 + 1);
    }

    else
    {

      v79 = v159;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v168 = v58;
    v81 = sub_24792C168(v50);
    v83 = *(v58 + 16);
    v84 = (v82 & 1) == 0;
    v85 = __OFADD__(v83, v84);
    v86 = v83 + v84;
    if (v85)
    {
      goto LABEL_123;
    }

    v87 = v82;
    if (*(v58 + 24) >= v86)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v92 = v81;
        sub_24794C73C();
        v81 = v92;
      }
    }

    else
    {
      sub_24794A260(v86, isUniquelyReferenced_nonNull_native);
      v81 = sub_24792C168(v50);
      if ((v87 & 1) != (v88 & 1))
      {
        goto LABEL_131;
      }
    }

    v41 &= v41 - 1;
    if (v87)
    {
      v32 = v58;
      *(*(v58 + 56) + 8 * v81) = v75;
    }

    else
    {
      v89 = v81;

      v32 = v168;
      v168[(v89 >> 6) + 8] |= 1 << v89;
      *(v168[6] + 8 * v89) = v50;
      *(v168[7] + 8 * v89) = v75;
      v90 = v168[2];
      v85 = __OFADD__(v90, 1);
      v91 = v90 + 1;
      if (v85)
      {
        goto LABEL_125;
      }

      v168[2] = v91;
    }

    v37 = v43;
    v42 = v140;
    v38 = v141;
  }

  while (2)
  {
    v43 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    if (v43 < v42)
    {
      v41 = *(v38 + 8 * v43);
      ++v37;
      if (v41)
      {
        goto LABEL_44;
      }

      continue;
    }

    break;
  }

  v93 = *(v1 + 16);
  v94 = *(v1 + 24);
  v95 = *(v1 + 32);
  v96 = v147[1];
  v97 = v146[1];
  v98 = *(v1 + 40);
  v166 = *(v1 + 48);
  v99 = *(v1 + 56);
  v100 = *(v1 + 60);
  v162 = *(v1 + 64);
  v160 = *v146;
  v158 = *v147;
  type metadata accessor for MetricsCalcDimensions();
  v101 = swift_allocObject();
  *(v101 + 16) = v93;
  *(v101 + 24) = v94;
  *(v101 + 32) = v95;
  *(v101 + 40) = v98;
  *&v103 = v158;
  *&v102 = v160;
  *(&v103 + 1) = v96;
  *(&v102 + 1) = v97;
  *(v101 + 48) = v103;
  *(v101 + 64) = v102;
  *(v101 + 80) = 17;
  *(v101 + 84) = 0;
  *(v101 + 88) = 0;
  *(v101 + 92) = 1;
  *(v101 + 96) = v166;
  *(v101 + 104) = v99;
  *(v101 + 108) = v100;
  *(v101 + 112) = v162;

  v104 = v164;

  v105 = v98;

  v106 = sub_247900968(v101, v164);
  if (!v106)
  {
    v113 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_phsRejectBeforeActivationCount);
    v114 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerHSRejectBeforeActivationCount);
    type metadata accessor for MetricsCalcCounts();
    v115 = swift_allocObject();
    *(v115 + 16) = v113;
    *(v115 + 24) = 0;
    *(v115 + 32) = v114;
    *(v115 + 40) = 0;
    *(v115 + 48) = 0;
    *(v115 + 56) = 1;
    *(v115 + 64) = 0;
    *(v115 + 72) = 1;
    *(v115 + 80) = 0;
    *(v115 + 88) = 1;
    *(v115 + 96) = 0;
    *(v115 + 104) = 1;
    *(v115 + 112) = 0;
    *(v115 + 120) = 1;
    *(v115 + 128) = 0;
    *(v115 + 136) = 1;
    *(v115 + 144) = 0;
    *(v115 + 152) = 1;
    if ((v164 & 0xC000000000000001) != 0)
    {
      if (v164 < 0)
      {
        v116 = v164;
      }

      else
      {
        v116 = v164 & 0xFFFFFFFFFFFFFF8;
      }

      v117 = sub_24794F414();
      if (__OFADD__(v117, 1))
      {
        goto LABEL_129;
      }

      v104 = sub_247904ADC(v116, v117 + 1);
    }

    else
    {
    }

    v118 = swift_isUniquelyReferenced_nonNull_native();
    sub_24794B3C0(v115, v101, v118);

    v164 = v104;
LABEL_107:
    v119 = *(v1 + 16);
    v120 = *(v1 + 24);
    v121 = *(v1 + 32);
    v161 = *v146;
    v163 = *v147;
    v123 = *(v1 + 40);
    v122 = *(v1 + 48);
    v167 = *(v1 + 56);
    v124 = v1;
    v125 = *(v1 + 60);
    v126 = *(v124 + 64);
    v127 = swift_allocObject();
    *(v127 + 16) = v119;
    *(v127 + 24) = v120;
    *(v127 + 32) = v121;
    *(v127 + 40) = v123;
    *(v127 + 48) = v163;
    *(v127 + 64) = v161;
    *(v127 + 80) = 80;
    *(v127 + 84) = 0;
    *(v127 + 88) = 0;
    *(v127 + 92) = 1;
    *(v127 + 96) = v122;
    *(v127 + 104) = v167;
    *(v127 + 108) = v125;
    *(v127 + 112) = v126;

    v128 = v123;

    v129 = v164;
    v130 = sub_247900968(v127, v164);
    if (v130)
    {
      v131 = *(v130 + 32);
      if (*(v130 + 40))
      {
        v131 = 0;
      }

      v132 = *(v124 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerJSRejectBeforeActivationCount);
      v85 = __OFADD__(v131, v132);
      v133 = v131 + v132;
      if (v85)
      {
        goto LABEL_128;
      }

      *(v130 + 32) = v133;
      *(v130 + 40) = 0;
    }

    else
    {
      v134 = *(v124 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerJSRejectBeforeActivationCount);
      type metadata accessor for MetricsCalcCounts();
      v135 = v164;
      v136 = swift_allocObject();
      *(v136 + 16) = 0;
      *(v136 + 24) = 1;
      *(v136 + 32) = v134;
      *(v136 + 40) = 0;
      *(v136 + 48) = 0;
      *(v136 + 56) = 1;
      *(v136 + 64) = 0;
      *(v136 + 72) = 1;
      *(v136 + 80) = 0;
      *(v136 + 88) = 1;
      *(v136 + 96) = 0;
      *(v136 + 104) = 1;
      *(v136 + 112) = 0;
      *(v136 + 120) = 1;
      *(v136 + 128) = 0;
      *(v136 + 136) = 1;
      *(v136 + 144) = 0;
      *(v136 + 152) = 1;
      if ((v164 & 0xC000000000000001) != 0)
      {
        if (v164 >= 0)
        {
          v135 = v164 & 0xFFFFFFFFFFFFFF8;
        }

        v137 = sub_24794F414();
        if (__OFADD__(v137, 1))
        {
          goto LABEL_130;
        }

        v135 = sub_247904ADC(v135, v137 + 1);
      }

      else
      {
      }

      v138 = swift_isUniquelyReferenced_nonNull_native();
      sub_24794B3C0(v136, v127, v138);

      v129 = v135;
    }

    sub_247903F00();

    return v129;
  }

  v107 = *(v106 + 32);
  if (*(v106 + 40))
  {
    v107 = 0;
  }

  v108 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerHSRejectBeforeActivationCount);
  v85 = __OFADD__(v107, v108);
  v109 = v107 + v108;
  if (v85)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  *(v106 + 32) = v109;
  *(v106 + 40) = 0;
  v110 = *(v106 + 16);
  if (*(v106 + 24))
  {
    v110 = 0;
  }

  v111 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_phsRejectBeforeActivationCount);
  v85 = __OFADD__(v110, v111);
  v112 = v110 + v111;
  if (!v85)
  {
    *(v106 + 16) = v112;
    *(v106 + 24) = 0;

    goto LABEL_107;
  }

LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  result = sub_24794F514();
  __break(1u);
  return result;
}

uint64_t sub_247903E20(uint64_t result, __n128 a2)
{
  v2 = result;
  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = v3;
LABEL_9:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      result = sub_24793E22C(v11, *(*(v2 + 48) + ((v9 << 8) | (4 * v10))));
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }
}

void sub_247903F00()
{
  v1 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_rejectTrackers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F98];
  while (v5)
  {
    v10 = v7;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = *(*(v2 + 56) + ((v10 << 9) | (8 * v11)));
    swift_beginAccess();
    *(v12 + 24) = v8;

    swift_beginAccess();
    *(v12 + 32) = v9;
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      v13 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_falseWakeCounts;
      swift_beginAccess();
      *(v0 + v13) = v9;

      *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_phsRejectBeforeActivationCount) = 0;
      *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerHSRejectBeforeActivationCount) = 0;
      *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerJSRejectBeforeActivationCount) = 0;
      return;
    }

    v5 = *(v2 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      v7 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_2479040C0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v30[-v7];
  if ((*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource + 4) & 1) == 0)
  {
    v9 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_siriInputLocale);
    if (!v9 || (v10 = *(v1 + 40), sub_2478E9538(0, &qword_27EE57410, 0x277D5A900), v11 = v9, v12 = v10, v13 = sub_24794F214(), v11, v12, (v13 & 1) != 0))
    {
      v14 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_vtAssetVersion + 8);
      if (v14)
      {
        v15 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_vtAssetVersion);
        if (!*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_vtAssetVersion + 8))
        {
          *v15 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_vtAssetVersion);
          v15[1] = v14;
        }
      }

      v16 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_mitigationAssetVersion + 8);
      if (v16)
      {
        v17 = (v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_mitigationAssetVersion);
        if (!*(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_mitigationAssetVersion + 8))
        {
          *v17 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_mitigationAssetVersion);
          v17[1] = v16;
        }
      }

      if (*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_deviceAggregationId + 8))
      {
        v18 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_deviceAggregationId;
        swift_beginAccess();
        sub_2478E9680(v1 + v18, v8, &qword_27EE57278, &unk_247950590);
        v19 = sub_24794EC04();
        if ((*(*(v19 - 8) + 48))(v8, 1, v19) == 1)
        {

          sub_2478E9620(v8, &qword_27EE57278, &unk_247950590);
          sub_24794EBC4();

          swift_beginAccess();
          sub_247904DD0(v6, v1 + v18);
          swift_endAccess();
        }

        else
        {
          sub_2478E9620(v8, &qword_27EE57278, &unk_247950590);
        }
      }

      v20 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_phsRejectBeforeActivationCount);
      v21 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_phsRejectBeforeActivationCount);
      v22 = __OFADD__(v21, v20);
      v23 = v21 + v20;
      if (v22)
      {
        __break(1u);
      }

      else
      {
        *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_phsRejectBeforeActivationCount) = v23;
        v24 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_checkerHSRejectBeforeActivationCount);
        v25 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerHSRejectBeforeActivationCount);
        v22 = __OFADD__(v25, v24);
        v26 = v25 + v24;
        if (!v22)
        {
          *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerHSRejectBeforeActivationCount) = v26;
          v27 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcRecord_checkerJSRejectBeforeActivationCount);
          v28 = *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerJSRejectBeforeActivationCount);
          v22 = __OFADD__(v28, v27);
          v29 = v28 + v27;
          if (!v22)
          {
            *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerJSRejectBeforeActivationCount) = v29;
            return;
          }

          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }
  }
}

uint64_t sub_2479043F0()
{

  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_deviceAggregationId, &qword_27EE57278, &unk_247950590);
  sub_2478E9620(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_userAggregationId, &qword_27EE57278, &unk_247950590);

  return v0;
}

uint64_t sub_2479044B0()
{
  sub_2479043F0();

  return swift_deallocClassInstance();
}

void sub_247904530(uint64_t a1)
{
  sub_247904628(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_247904628(uint64_t a1)
{
  if (!qword_27EE57328)
  {
    sub_24794EC04();
    v1 = sub_24794F234();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE57328);
    }
  }
}

unint64_t sub_247904684()
{
  result = qword_27EE57400;
  if (!qword_27EE57400)
  {
    type metadata accessor for MetricsCalcDimensions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE57400);
  }

  return result;
}

uint64_t sub_2479046D8(uint64_t a1, char a2)
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

  sub_24794F414();
LABEL_9:
  result = sub_24794F384();
  *v2 = result;
  return result;
}

void *sub_247904778(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2479047B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_247904798(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2479049A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2479047B8(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57430, &qword_247950E88);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57428, &qword_247950E80) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57428, &qword_247950E80) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2479049A8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57440, &qword_247950E98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57438, &qword_247950E90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_247904ADC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57420, &unk_247950E70);
    v2 = sub_24794F484();
    v9 = v2;
    sub_24794F404();
    if (sub_24794F434())
    {
      type metadata accessor for MetricsCalcDimensions();
      do
      {
        swift_dynamicCast();
        type metadata accessor for MetricsCalcCounts();
        swift_dynamicCast();
        v5 = *(v2 + 16);
        if (*(v2 + 24) <= v5)
        {
          sub_24794A260(v5 + 1, 1);
        }

        v2 = v9;
        sub_24794F584();

        sub_24794EF74();

        sub_24794F5A4();
        v3 = *(v8 + 40);
        sub_24794F224();

        sub_24794F5A4();
        sub_24794F5B4();
        v4 = sub_24794F2B4();
        *(v9 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v4;
        *(v9[6] + 8 * v4) = v8;
        *(v9[7] + 8 * v4) = v7;
        ++v9[2];
      }

      while (sub_24794F434());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_247904CF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_24794F4E4() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  sub_2478E9538(0, &qword_27EE57408, 0x277D82BB8);
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  v7 = v5;
  v8 = sub_24794F214();

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  result = *(a2 + 84);
  if ((*(a1 + 84) & 1) == 0)
  {
    return (*(a1 + 80) == *(a2 + 80)) & ~result;
  }

  return result;
}

uint64_t sub_247904DD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_247904E40(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57428, &qword_247950E80);
  sub_24794EB24();
  return v1 < 30.0;
}

uint64_t sub_247904EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57428, &qword_247950E80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247904F10(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = v7;
  *(v8 + 48) = 0;
  *(v8 + 56) = 1;
  *(v8 + 60) = 0;
  *(v8 + 64) = 1;
  v14 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_deviceAggregationId;
  v15 = sub_24794EC04();
  v16 = *(*(v15 - 8) + 56);
  v16(v8 + v14, 1, 1, v15);
  v16(v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_userAggregationId, 1, 1, v15);
  v17 = (v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_vtAssetVersion);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_mitigationAssetVersion);
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_rejectTrackers;
  v20 = MEMORY[0x277D84F90];
  *(v8 + v19) = sub_24794DD20(MEMORY[0x277D84F90]);
  v21 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_falseWakeCounts;
  *(v8 + v21) = sub_24794DE30(v20);
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6 & 1;
  *(v8 + 60) = a7;
  *(v8 + 64) = BYTE4(a7) & 1;
  *(v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_phsRejectBeforeActivationCount) = 0;
  *(v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerHSRejectBeforeActivationCount) = 0;
  *(v8 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17MetricsCalcDigest_checkerJSRejectBeforeActivationCount) = 0;
  v22 = sub_24794DE30(v20);
  swift_beginAccess();
  *(v8 + v21) = v22;
  v23 = a4;

  type metadata accessor for MetricsRejectTracker();
  v24 = 0;
  while (1)
  {
    v25 = byte_285984EF8[v24 + 32];
    v26 = swift_allocObject();
    *(v26 + 24) = MEMORY[0x277D84F90];
    *(v26 + 32) = MEMORY[0x277D84F98];
    *(v26 + 16) = v25;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v8 + v19);
    *(v8 + v19) = 0x8000000000000000;
    v29 = sub_24792C0FC(v25);
    v31 = v28[2];
    v32 = (v30 & 1) == 0;
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      break;
    }

    v35 = v30;
    if (v28[3] < v34)
    {
      sub_2479496D4(v34, isUniquelyReferenced_nonNull_native);
      v29 = sub_24792C0FC(v25);
      if ((v35 & 1) != (v36 & 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      if (v35)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v39 = v29;
    sub_24794C0B0();
    v29 = v39;
    if (v35)
    {
LABEL_2:
      *(v28[7] + 8 * v29) = v26;

      goto LABEL_3;
    }

LABEL_10:
    v28[(v29 >> 6) + 8] |= 1 << v29;
    *(v28[6] + v29) = v25;
    *(v28[7] + 8 * v29) = v26;
    v37 = v28[2];
    v33 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v33)
    {
      goto LABEL_16;
    }

    v28[2] = v38;
LABEL_3:
    ++v24;
    *(v8 + v19) = v28;
    swift_endAccess();
    if (v24 == 3)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_24794F514();
  __break(1u);
  return result;
}

uint64_t sub_247905254(uint64_t a1)
{
  result = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (*(*(v15 + 16) + 16) > 1u)
    {
      if (*(*(v15 + 16) + 16) != 2)
      {
        goto LABEL_10;
      }

      type metadata accessor for MetricsCalcRecord(0);
      swift_allocObject();

      sub_247900C7C(v13);
LABEL_11:
      MEMORY[0x24C1AE560]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24794F084();
      }

      sub_24794F0A4();
      v4 += 8;
      if (!--v3)
      {
        return v16;
      }
    }

    if (*(*(v15 + 16) + 16))
    {
      type metadata accessor for ButtonPressRequestRecord(0);
      *(swift_allocObject() + OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord) = 0;

      v6 = sub_2478F0B18(v5);
      v7 = v6;
      v8 = *(v6 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best + 8);
      if (v8)
      {
        v9 = *(v6 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_siriInputLocale);
        if (v9)
        {
          v10 = *(v6 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_postItn1Best);

          v11 = v9;
          v12 = SISchemaISOLocale.toString()();

          LOBYTE(v11) = sub_247944340(v10, v8, v12._countAndFlagsBits, v12._object);

          *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics24ButtonPressRequestRecord_wakeWord) = v11;
        }
      }

      goto LABEL_11;
    }

LABEL_10:
    type metadata accessor for SiriRequestRecord(0);
    swift_allocObject();

    sub_2478F0B18(v14);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_247905470()
{

  return swift_deallocClassInstance();
}

void *sub_247905564(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
  if (v10)
  {
    v11 = v10;
    (*(a2 + 216))(a1, a2);
    v12 = sub_24794EEF4();

    [v11 setDeviceType_];

    (*(a2 + 224))(a1, a2);
    v13 = sub_24794EEF4();

    v14 = v13;
    if ([v14 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
    {
      v15 = 0;
    }

    else if ([v14 isEqualToString:@"PROGRAMCODE_IOS"])
    {
      v15 = 1;
    }

    else if ([v14 isEqualToString:@"PROGRAMCODE_MACOS"])
    {
      v15 = 2;
    }

    else if ([v14 isEqualToString:@"PROGRAMCODE_TVOS"])
    {
      v15 = 3;
    }

    else if ([v14 isEqualToString:@"PROGRAMCODE_WATCHOS"])
    {
      v15 = 4;
    }

    else if ([v14 isEqualToString:@"PROGRAMCODE_VISIONOS"])
    {
      v15 = 5;
    }

    else
    {
      v15 = 0;
    }

    [v11 setProgramCode_];
    v5[2] = v11;
    v5[3] = a3;
    v5[4] = a4;
    v16 = qword_27EE571C0;
    v17 = v11;

    if (v16 != -1)
    {
      swift_once();
    }

    v18 = sub_24794ED34();
    __swift_project_value_buffer(v18, qword_27EE58DF8);
    v19 = v17;

    v20 = sub_24794ED14();
    v21 = sub_24794F154();

    if (os_log_type_enabled(v20, v21))
    {
      v34 = a3;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v35 = v23;
      *v22 = 136315650;
      v24 = [v19 deviceType];
      if (v24)
      {
        v25 = v24;
        sub_24794EF04();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57438, &qword_247950E90);
      v26 = sub_24794EF14();
      v28 = sub_247924380(v26, v27, &v35);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2080;
      [v19 programCode];
      v29 = sub_24794F1B4();
      v31 = sub_247924380(v29, v30, &v35);

      *(v22 + 14) = v31;
      *(v22 + 22) = 2080;
      v32 = sub_247924380(v34, a4, &v35);

      *(v22 + 24) = v32;
      _os_log_impl(&dword_2478E1000, v20, v21, "Created SELF reporter for deviceType: %s, programCode: %s, fbfBundleId: %s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1AF180](v23, -1, -1);
      MEMORY[0x24C1AF180](v22, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    type metadata accessor for MetricsCalcSELFReporter();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

id sub_24790596C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v45 - v8;
  result = [objc_allocWithZone(MEMORY[0x277D59288]) init];
  if (!result)
  {
    return result;
  }

  v11 = *(v3 + 16);
  v49 = result;
  [result setFixedDimensions_];
  v53 = MEMORY[0x277D84F90];
  v47 = a3;
  v48 = a2;
  v46 = v9;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = sub_24794F404() | 0x8000000000000000;
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v13 = ~v16;
    v12 = a1 + 64;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v14 = v18 & *(a1 + 64);
    v15 = a1;
  }

  v20 = 0;
  v45[1] = v13;
  v50 = MEMORY[0x277D84F90];
  v21 = (v13 + 64) >> 6;
  while ((v15 & 0x8000000000000000) == 0)
  {
    v23 = v20;
    v24 = v14;
    if (!v14)
    {
      while (1)
      {
        v20 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v20 >= v21)
        {
          goto LABEL_27;
        }

        v24 = *(v12 + 8 * v20);
        ++v23;
        if (v24)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_35:
      v42 = v19;
      v43 = sub_24794F414();
      v19 = v42;
      if (v43)
      {
        goto LABEL_31;
      }

      goto LABEL_36;
    }

LABEL_18:
    v14 = (v24 - 1) & v24;
    v25 = (v20 << 9) | (8 * __clz(__rbit64(v24)));
    v26 = *(*(v15 + 48) + v25);
    v27 = *(*(v15 + 56) + v25);

    if (!v26)
    {
      goto LABEL_27;
    }

LABEL_22:
    sub_247905EE4(v26);
    if (!v30)
    {
      goto LABEL_12;
    }

    v31 = v30;
    v32 = sub_2479060E0(v27);
    if (v32)
    {
      v33 = v32;
      v34 = [objc_allocWithZone(MEMORY[0x277D59290]) init];
      if (v34)
      {
        v22 = v34;
        [v34 setDimensions_];
        [v22 setCounts_];
        v50 = v22;
        v13 = &v53;
        MEMORY[0x24C1AE560]();
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v45[0] = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_24794F084();
        }

        sub_24794F0A4();

        v50 = v53;
LABEL_12:
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v28 = sub_24794F434();
  if (v28)
  {
    v13 = v29;
    v51 = v28;
    type metadata accessor for MetricsCalcDimensions();
    swift_dynamicCast();
    v26 = v52;
    v51 = v13;
    type metadata accessor for MetricsCalcCounts();
    swift_dynamicCast();
    v27 = v52;
    if (v26)
    {
      goto LABEL_22;
    }
  }

LABEL_27:
  sub_2478FE384(v15);
  v35 = sub_24794EC04();
  v36 = *(v35 - 8);
  v37 = v46;
  (*(v36 + 16))(v46, v47, v35);
  (*(v36 + 56))(v37, 0, 1, v35);
  sub_2479062F4(v48, v37);
  v13 = v38;
  sub_2478FB164(v37);
  if (!v13)
  {

    goto LABEL_37;
  }

  v19 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
  if (!v19)
  {

    goto LABEL_37;
  }

  if (v50 >> 62)
  {
    goto LABEL_35;
  }

  if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_31:
    v39 = v19;
    [v19 setEventMetadata_];
    sub_2479067D0();
    v40 = sub_24794F054();
    v41 = v49;
    [v49 setDigests_];

    [v39 setAttentionInvocationDigestsReported_];

    return v39;
  }

LABEL_36:
  v44 = v19;

LABEL_37:
  return 0;
}

uint64_t sub_247905E80()
{

  return swift_deallocClassInstance();
}

void sub_247905EE4(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59298]) init];
  v4 = v2;
  if (v2)
  {
    v5 = v2;

    v6 = sub_24794EEF4();

    [v5 setSystemBuild_];

    [v5 setDataSharingOptInStatus_];
    [v5 setSiriInputLocale_];
    if (*(a1 + 56))
    {
      v7 = v5;

      v8 = sub_24794EEF4();

      [v7 setVoiceTriggerAssetVersion_];
    }

    if (*(a1 + 72))
    {
      v9 = v5;

      v10 = sub_24794EEF4();

      [v9 setMitigationAssetVersion_];
    }
  }

  if (*(a1 + 84))
  {
    if (*(a1 + 92))
    {
      goto LABEL_8;
    }

LABEL_11:
    [v4 setTriggerPhrase_];
    if (!v4)
    {
      goto LABEL_16;
    }

LABEL_12:
    if (*(a1 + 104))
    {
      goto LABEL_16;
    }

    v11 = *(a1 + 96);
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v11))
    {
      [v4 setAgeOfProfileInMonths_];
      goto LABEL_16;
    }

    __break(1u);
    return;
  }

  [v4 setInvocationSource_];
  if ((*(a1 + 92) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_16:
  if ((*(a1 + 112) & 1) == 0)
  {
    LODWORD(v3) = *(a1 + 108);
    [v4 setEnrollmentPitchEstimation_];
  }
}

id sub_2479060E0(uint64_t a1)
{
  result = [objc_allocWithZone(MEMORY[0x277D59280]) init];
  v3 = result;
  if ((*(a1 + 24) & 1) == 0 && result)
  {
    v4 = *(a1 + 16);
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (HIDWORD(v4))
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    result = [result setPhsRejectBeforeActivationCount_];
  }

  if ((*(a1 + 40) & 1) != 0 || !v3)
  {
    goto LABEL_11;
  }

  v5 = *(a1 + 32);
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_48;
  }

  if (HIDWORD(v5))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  result = [v3 setCheckerRejectBeforeActivationCount_];
LABEL_11:
  if ((*(a1 + 56) & 1) != 0 || !v3)
  {
    goto LABEL_16;
  }

  v6 = *(a1 + 48);
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_50;
  }

  if (HIDWORD(v6))
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  result = [v3 setCheckerNearMissBeforeAcceptCount_];
LABEL_16:
  if ((*(a1 + 72) & 1) != 0 || !v3)
  {
    goto LABEL_21;
  }

  v7 = *(a1 + 64);
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_52;
  }

  if (HIDWORD(v7))
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  result = [v3 setFalseWakeWithNoTriggerPhraseCount_];
LABEL_21:
  if ((*(a1 + 88) & 1) != 0 || !v3)
  {
    goto LABEL_26;
  }

  v8 = *(a1 + 80);
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_54;
  }

  if (HIDWORD(v8))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  result = [v3 setFalseWakeWithSpeechNoMatchCount_];
LABEL_26:
  if ((*(a1 + 104) & 1) != 0 || !v3)
  {
    goto LABEL_31;
  }

  v9 = *(a1 + 96);
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_56;
  }

  if (HIDWORD(v9))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  result = [v3 setFalseWakeWithTTMMitigationCount_];
LABEL_31:
  if ((*(a1 + 120) & 1) != 0 || !v3)
  {
    goto LABEL_36;
  }

  v10 = *(a1 + 112);
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_58;
  }

  if (HIDWORD(v10))
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  result = [v3 setNcAcceptPostNcMitigationCount_];
LABEL_36:
  if ((*(a1 + 136) & 1) != 0 || !v3)
  {
    goto LABEL_41;
  }

  v11 = *(a1 + 128);
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if (HIDWORD(v11))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  result = [v3 setSpkidAcceptPostSpkidMitigationCount_];
LABEL_41:
  if ((*(a1 + 152) & 1) != 0 || !v3)
  {
    return v3;
  }

  v12 = *(a1 + 144);
  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_62;
  }

  if (!HIDWORD(v12))
  {
    [v3 setTtmAcceptPostTtmMitigationCount_];
    return v3;
  }

LABEL_64:
  __break(1u);
  return result;
}

void sub_2479062F4(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v3 = sub_24794ECC4();
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24794EBB4();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_24794EC04();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  v19 = [objc_allocWithZone(MEMORY[0x277D592B0]) init];
  if (!v19)
  {
    return;
  }

  sub_2478FA014(a2, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_2478FB164(v11);
    return;
  }

  (*(v13 + 32))(v18, v11, v12);
  sub_24794EBF4();
  v20 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v21 = sub_24794EBE4();
  v22 = [v20 initWithNSUUID_];

  v23 = v16;
  v24 = *(v13 + 8);
  v24(v23, v12);
  [v19 setOddId_];

  v25 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v26 = sub_24794EBE4();
  v27 = [v25 initWithNSUUID_];

  [v19 setDeviceAggregationId_];
  sub_24794EB74();
  v29 = v28 * 1000.0;
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v29 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v29 >= 1.84467441e19)
  {
LABEL_16:
    __break(1u);
    return;
  }

  [v19 setEventTimestampInMsSince1970_];
  v30 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
  sub_24794EC94();
  sub_24794EC54();
  (*(v32 + 8))(v5, v3);
  sub_24794EB74();
  if (v31 > -1.0 && v31 < 1.84467441e19 && v31 == trunc(v31))
  {
    [v30 setStartTimestampInSecondsSince1970_];
    if (v30)
    {
      [v30 setNumberOfSeconds_];
    }
  }

  [v19 setAggregationInterval_];
  [v19 setEventOrigin_];

  (*(v33 + 8))(v8, v34);
  v24(v18, v12);
}

unint64_t sub_2479067D0()
{
  result = qword_27EE57448;
  if (!qword_27EE57448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE57448);
  }

  return result;
}

void sub_24790681C()
{
  v1 = (*(*(*(v0 + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;

    sub_2478EFE9C(v3, v2);
    v5 = v4;

    v6 = *(*(*(v0 + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16);
    v7 = *(v6 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords);
    v8 = __CFADD__(v7, v5);
    v9 = v7 + v5;
    if (!v8)
    {
      *(v6 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_uploadedNumRecords) = v9;

      sub_247940408();

      return;
    }

    __break(1u);
    goto LABEL_9;
  }

  if (qword_27EE571C0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v10 = sub_24794ED34();
  __swift_project_value_buffer(v10, qword_27EE58DF8);
  v11 = sub_24794ED14();
  v12 = sub_24794F164();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2478E1000, v11, v12, "#SpkrIdActionEvent: Canot get userSamplingId from policy metadata", v13, 2u);
    MEMORY[0x24C1AF180](v13, -1, -1);
  }
}

uint64_t sub_2479069E4()
{
  v1 = *(*(v0 + 16) + 136);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_2478F72B8;

  return sub_247906A80(v1);
}

uint64_t sub_247906A80(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_247906AA4, 0, 0);
}

void sub_247906AA4()
{
  v43 = v0;
  v1 = *(*(v0 + 16) + 112);
  v2 = *(v1 + 40);

  v3 = [v2 publisher];
  v42[0] = *(v1 + 16);
  v4 = sub_2478EF144(v42, v3);

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v5 = sub_24794ED34();
  v6 = __swift_project_value_buffer(v5, qword_27EE58DF8);

  v7 = sub_24794ED14();
  v8 = sub_24794F154();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    if (v4 >> 62)
    {
      v10 = sub_24794F414();
    }

    else
    {
      v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 4) = v10;

    _os_log_impl(&dword_2478E1000, v7, v8, "#SpkrIdActionEvent: got events count: %ld", v9, 0xCu);
    MEMORY[0x24C1AF180](v9, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 16);
  v12 = *(v11 + 88);
  v13 = *(v12 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount);
  v14 = *(v12 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_intermediateUploadCount);
  v15 = (*(**(*(v12 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 320))();
  v17 = *(*(*(v11 + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId;
  v18 = *(v17 + 8);
  if (v18)
  {
    if (*(v0 + 48))
    {
      v39 = v6;
      v40 = *v17;
      v19 = v15;

      sub_2479072A0(v4, v13, v14, v19, v40, v18);
      v21 = v20;
      *(v0 + 24) = v20;

      if (v21)
      {
        v22 = [v21 speakerIdModelSampleManifestReported];
        if (v22)
        {
          v23 = v22;
          v24 = [v22 odsampleIdsCount];

          if ((v24 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            (*(**(*(*(v11 + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 328))(v24);
            v33 = *(v0 + 16);

            sub_247940408();

            v34 = v33[4];
            v35 = v33[5];
            v36 = v33[6];
            v37 = v33[7];
            v41 = (*(v35 + 136) + **(v35 + 136));
            v38 = swift_task_alloc();
            *(v0 + 32) = v38;
            *v38 = v0;
            v38[1] = sub_2479070C4;

            v41(v21, v36, v37, v39, v34, v35);
          }

          return;
        }

        v29 = sub_24794ED14();
        v30 = sub_24794F164();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_2478E1000, v29, v30, "#SpkrIdActionEvent: aggregatedCount cannot be fetched", v31, 2u);
          MEMORY[0x24C1AF180](v31, -1, -1);
        }

        sub_2478E95CC();
        swift_allocError();
        *v32 = xmmword_247950F50;
        *(v32 + 16) = 2;
        swift_willThrow();

        goto LABEL_9;
      }
    }

    else
    {
    }

    v16 = *(v0 + 8);
    goto LABEL_10;
  }

  v25 = sub_24794ED14();
  v26 = sub_24794F164();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2478E1000, v25, v26, "#SpkrIdActionEvents: userSamplingId is nil for events aggregations", v27, 2u);
    MEMORY[0x24C1AF180](v27, -1, -1);
  }

  sub_2478E95CC();
  swift_allocError();
  *v28 = xmmword_24794FF10;
  *(v28 + 16) = 2;
  swift_willThrow();
LABEL_9:
  v16 = *(v0 + 8);
LABEL_10:

  v16();
}

uint64_t sub_2479070C4()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_24790723C;
  }

  else
  {
    v2 = sub_2479071D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2479071D8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24790723C()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_2479072A0(unint64_t a1, void (*a2)(char *, char *, uint64_t), unint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v44 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_24794EC04();
  v47 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v52 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v45 = a3;
  for (i = a2; v14; i = a2)
  {
    v15 = 0;
    a3 = v48;
    v50 = v48 & 0xFFFFFFFFFFFFFF8;
    v51 = v48 & 0xC000000000000001;
    v16 = (v47 + 48);
    v17 = (v47 + 32);
    v18 = MEMORY[0x277D84F90];
    v49 = v14;
    while (v51)
    {
      v19 = MEMORY[0x24C1AE890](v15, a3);
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      a2 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_odSampleId;
      swift_beginAccess();
      sub_2478FA014(a2 + v19, v11);

      if ((*v16)(v11, 1, v12) == 1)
      {
        sub_2478FB164(v11);
      }

      else
      {
        a2 = *v17;
        (*v17)(v52, v11, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_24793AADC(0, *(v18 + 2) + 1, 1, v18);
        }

        v22 = *(v18 + 2);
        v21 = *(v18 + 3);
        if (v22 >= v21 >> 1)
        {
          v18 = sub_24793AADC((v21 > 1), v22 + 1, 1, v18);
        }

        *(v18 + 2) = v22 + 1;
        a2(&v18[((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v22], v52, v12);
        a3 = v48;
      }

      ++v15;
      if (v20 == v49)
      {
        goto LABEL_21;
      }
    }

    if (v15 >= *(v50 + 16))
    {
      goto LABEL_18;
    }

    v19 = *(a3 + 8 * v15 + 32);

    v20 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v14 = sub_24794F414();
    v45 = a3;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_21:
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v23 = sub_24794ED34();
  __swift_project_value_buffer(v23, qword_27EE58DF8);

  v24 = sub_24794ED14();
  v25 = sub_24794F154();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v53 = v27;
    *v26 = 136315138;
    v28 = MEMORY[0x24C1AE590](v18, v12);
    v30 = sub_247924380(v28, v29, &v53);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_2478E1000, v24, v25, "#SpkrIdActionEvent: aggregating for events: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x24C1AF180](v27, -1, -1);
    MEMORY[0x24C1AF180](v26, -1, -1);
  }

  v31 = i;
  v32 = *(v18 + 2);
  if (v32 >= i && v32 >= v45)
  {
    v33 = v42;
    v34 = v43;
    v35 = v18;
    v36 = 2;
LABEL_28:
    sub_2478E8DC8(v33, v34, v35, v36, v31);

    return;
  }

  if (__CFADD__(v45, v44))
  {
    __break(1u);
  }

  else if (v32 >= v45 + v44)
  {
    v40 = i;
    if (sub_2479077C4(v44))
    {
      v33 = v42;
      v34 = v43;
      v35 = v18;
      v36 = 1;
      v31 = v40;
      goto LABEL_28;
    }
  }

  else
  {

    v37 = sub_24794ED14();
    v38 = sub_24794F154();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2478E1000, v37, v38, "#SpkrIdActionEvent: not enough events in biome stream to create manifest", v39, 2u);
      MEMORY[0x24C1AF180](v39, -1, -1);
    }
  }
}

uint64_t sub_2479077C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_247907890();
  result = 1;
  if ((v4 & 1) == 0 && !a1)
  {
    v6 = *(v1 + 88);

    v7 = vcvtd_n_f64_u64(sub_247907ADC(0x20000000000001uLL), 0x35uLL);
    v8 = *(v6 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_userSelectionChance);

    if (v7 <= v8)
    {
      return 1;
    }

    else
    {
      *(*(*(*(v2 + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 16) = 2;

      sub_247940408();

      sub_2478E6EE0();
      return 0;
    }
  }

  return result;
}

uint64_t sub_247907890()
{
  v1 = (*(**(*(*(v0 + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 360))();
  v3 = 1;
  if ((v2 & 1) != 0 || v1 < *(*(v0 + 88) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_intermediateUploadCount))
  {
    return 0;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v5 = sub_24794ED34();
  __swift_project_value_buffer(v5, qword_27EE58DF8);
  v6 = sub_24794ED14();
  v7 = sub_24794F154();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2478E1000, v6, v7, "#SpkrIdActionEvent: keep the selection because legacy build has selected user", v8, 2u);
    MEMORY[0x24C1AF180](v8, -1, -1);
  }

  return v3;
}

unint64_t sub_247907ADC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x24C1AF190](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x24C1AF190](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_247907BA0(uint64_t a1)
{
  if ((sub_2478ECA98(a1) & 1) == 0 || (sub_247907D98(a1) & 1) == 0)
  {
    return 0;
  }

  return sub_247907BF8(a1);
}

uint64_t sub_247907BF8(uint64_t a1)
{
  if ((*(*(v1 + 40) + 160))(*(v1 + 80)))
  {
    return 1;
  }

  v4 = *(a1 + 17);
  if (v4 != 2 && (v4 & 1) != 0)
  {
    return 1;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v5 = sub_24794ED34();
  __swift_project_value_buffer(v5, qword_27EE58DF8);
  v6 = sub_24794ED14();
  v7 = sub_24794F164();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2478E1000, v6, v7, "#SpkrIdRecordSelectionRule: sat triggered is no", v8, 2u);
    MEMORY[0x24C1AF180](v8, -1, -1);
  }

  return 0;
}

uint64_t sub_247907D1C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_247907D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v64 - v3;
  v5 = (a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource);
  if ((*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource + 4) & 1) != 0 || (*v5 != 80 ? (v6 = *v5 == 17) : (v6 = 1), !v6))
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v18 = sub_24794ED34();
    __swift_project_value_buffer(v18, qword_27EE58DF8);

    v10 = sub_24794ED14();
    v19 = sub_24794F164();

    if (!os_log_type_enabled(v10, v19))
    {
      goto LABEL_47;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v67[0] = v21;
    *v20 = 136315394;
    v22 = *(v5 + 4);
    if (v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = *v5;
    }

    LODWORD(v66) = v23;
    BYTE4(v66) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57450, &qword_247951008);
    v24 = sub_24794EF14();
    v26 = sub_247924380(v24, v25, v67);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v28 = (*(*a1 + 1264))(v27);
    v30 = sub_247924380(v28, v29, v67);

    *(v20 + 14) = v30;
    v31 = "#SpkrIdRecordSelectionRule: siri invocationSource is %s for %s";
    goto LABEL_20;
  }

  if (!*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_siriInputLocale))
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v33 = sub_24794ED34();
    __swift_project_value_buffer(v33, qword_27EE58DF8);

    v10 = sub_24794ED14();
    v11 = sub_24794F164();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_47;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v67[0] = v13;
    *v12 = 136315138;
    v34 = (*(*a1 + 1264))();
    v36 = sub_247924380(v34, v35, v67);

    *(v12 + 4) = v36;
    v17 = "#SpkrIdRecordSelectionRule: siri input locale being nil for %s";
LABEL_45:
    _os_log_impl(&dword_2478E1000, v10, v11, v17, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1AF180](v13, -1, -1);
    v32 = v12;
    goto LABEL_46;
  }

  v7 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
  swift_beginAccess();
  sub_2478FA014(a1 + v7, v4);
  v8 = sub_24794EC04();
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v4, 1, v8);
  sub_2478FB164(v4);
  if (v7 == 1)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v9 = sub_24794ED34();
    __swift_project_value_buffer(v9, qword_27EE58DF8);

    v10 = sub_24794ED14();
    v11 = sub_24794F164();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_47;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v66 = v13;
    *v12 = 136315138;
    v14 = (*(*a1 + 1264))();
    v16 = sub_247924380(v14, v15, &v66);

    *(v12 + 4) = v16;
    v17 = "#SpkrIdRecordSelectionRule: request_id is nil for %s";
    goto LABEL_45;
  }

  if (!*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_deviceType + 8))
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v49 = sub_24794ED34();
    __swift_project_value_buffer(v49, qword_27EE58DF8);

    v10 = sub_24794ED14();
    v11 = sub_24794F164();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_47;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v66 = v13;
    *v12 = 136315138;
    v50 = (*(*a1 + 1264))();
    v52 = sub_247924380(v50, v51, &v66);

    *(v12 + 4) = v52;
    v17 = "#SpkrIdRecordSelectionRule: device_type is nil for %s";
    goto LABEL_45;
  }

  v37 = (a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_orchCancelledReason);
  if ((*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_orchCancelledReason + 4) & 1) == 0 && *v37)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v38 = sub_24794ED34();
    __swift_project_value_buffer(v38, qword_27EE58DF8);

    v10 = sub_24794ED14();
    v19 = sub_24794F164();

    if (!os_log_type_enabled(v10, v19))
    {
      goto LABEL_47;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v66 = v21;
    *v20 = 136315394;
    v39 = *(v37 + 4);
    if (v39)
    {
      v40 = 0;
    }

    else
    {
      v40 = *v37;
    }

    v64[2] = v40;
    v65 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57450, &qword_247951008);
    v57 = sub_24794EF14();
    v59 = sub_247924380(v57, v58, &v66);

    *(v20 + 4) = v59;
    *(v20 + 12) = 2080;
    v61 = (*(*a1 + 1264))(v60);
    v63 = sub_247924380(v61, v62, &v66);

    *(v20 + 14) = v63;
    v31 = "#SpkrIdRecordSelectionRule: request is clearly cancelled for %s for %s";
LABEL_20:
    _os_log_impl(&dword_2478E1000, v10, v19, v31, v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1AF180](v21, -1, -1);
    v32 = v20;
LABEL_46:
    MEMORY[0x24C1AF180](v32, -1, -1);
LABEL_47:

    return 0;
  }

  v41 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_location);
  if (!v41)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v54 = sub_24794ED34();
    __swift_project_value_buffer(v54, qword_27EE58DF8);
    v42 = sub_24794ED14();
    v55 = sub_24794F164();
    if (os_log_type_enabled(v42, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_2478E1000, v42, v55, "#SpkrIdRecordSelectionRule: request location is nil", v56, 2u);
      MEMORY[0x24C1AF180](v56, -1, -1);
    }

    goto LABEL_54;
  }

  v42 = v41;
  [v42 latitude];
  if (v43 == 0.0)
  {
    [v42 longitude];
    if (v44 == 0.0)
    {
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v45 = sub_24794ED34();
      __swift_project_value_buffer(v45, qword_27EE58DF8);
      v46 = sub_24794ED14();
      v47 = sub_24794F164();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_2478E1000, v46, v47, "#SpkrIdRecordSelectionRule: location is (0.0, 0.0)", v48, 2u);
        MEMORY[0x24C1AF180](v48, -1, -1);
      }

LABEL_54:
      return 0;
    }
  }

  return 1;
}

void sub_24790877C()
{
  v2 = v0;
  v13 = *(v0 + 32);
  sub_2478EB2C4(&v13);
  sub_247908C38();
  v3 = (*(**(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 360))();
  if (v4)
  {
    return;
  }

  v5 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_intermediateUploadCount);
  v6 = __CFADD__(v3, v5);
  v7 = v3 + v5;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v1 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount;
    v8 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount);
    if (v8 < v7)
    {
      *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount) = 0;
      return;
    }

    if (v8 >= v3)
    {
      *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount) = v8 - v3;
      if (qword_27EE571C0 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_19:
  swift_once();
LABEL_12:
  v9 = sub_24794ED34();
  __swift_project_value_buffer(v9, qword_27EE58DF8);

  oslog = sub_24794ED14();
  v10 = sub_24794F154();
  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(v2 + v1);

    _os_log_impl(&dword_2478E1000, oslog, v10, "#SpkrIdSamplingPolicy: overriding max total upload limit to: %lu", v11, 0xCu);
    MEMORY[0x24C1AF180](v11, -1, -1);
  }

  else
  {
  }
}

void sub_247908ADC()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils;
  v3 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils);
  v4 = *(v2 + 8);
  if ((*(v4 + 80))(v3, v4) & 1) != 0 && ((*(v4 + 88))(v3, v4) & 1) != 0 && (sub_2478EBB7C())
  {
    *(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_isNewVoiceProfile) = 1;
    sub_2479406A8(v1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate);
  }
}

uint64_t sub_247908B9C()
{
  v2 = sub_2478EA840();
  if (!v1)
  {
    v3 = ((*(**(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) + 16) + 320))() >= *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount)) | v2;
  }

  return v3 & 1;
}

void sub_247908C38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v72 - v2;
  v4 = sub_24794EC04();
  v5 = *(v4 - 8);
  v77 = v4;
  v78 = v5;
  MEMORY[0x28223BE20](v4);
  v76 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v72 - v11;
  v13 = sub_24794EBB4();
  v79 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_247937E20(*(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_locale), *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_locale + 8));
  if (!v17)
  {
LABEL_4:

    sub_24793857C();
    return;
  }

  v18 = v16;
  v19 = v17;
  sub_24793699C(v80);
  v20 = v80[0];
  if (v80[0] == 3)
  {

    goto LABEL_4;
  }

  sub_247936D44(v18, v19, v12);
  v21 = v79;
  if ((*(v79 + 48))(v12, 1, v13) == 1)
  {

    sub_2478E9620(v12, &qword_27EE572D0, &unk_2479504E0);
    sub_24793857C();
    return;
  }

  v75 = v20;
  (*(v21 + 32))(v15, v12, v13);
  sub_247937684(v18, v19, v3);
  v22 = v15;
  v23 = v78;
  v24 = v13;
  v25 = v77;
  if ((*(v78 + 48))(v3, 1, v77) == 1)
  {

    sub_2478E9620(v3, &qword_27EE57278, &unk_247950590);
    sub_24793857C();
    (*(v21 + 8))(v22, v24);
    return;
  }

  v74 = v22;
  v26 = v76;
  (*(v23 + 32))(v76, v3, v25);
  v27 = v75;
  if ((v75 - 1) <= 1)
  {
    v28 = v0;
    v29 = *(v0 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager);
    *(*(v29 + 16) + 16) = v75;
    sub_247940408();
    (*(v21 + 16))(v10, v74, v24);
    v30 = *(v21 + 56);
    v73 = v24;
    v30(v10, 0, 1, v24);
    v31 = *(v29 + 16);
    v32 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
    swift_beginAccess();

    sub_2479096C8(v10, v31 + v32);
    swift_endAccess();

    sub_247940408();
    sub_2478E9620(v10, &qword_27EE572D0, &unk_2479504E0);
    v33 = sub_24794EBD4();
    v34 = (*(v29 + 16) + OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_userSamplingId);
    *v34 = v33;
    v34[1] = v35;

    sub_247940408();

    v36 = sub_247938110(v18, v19);
    LOBYTE(v31) = v37;

    if (v31)
    {
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v38 = sub_24794ED34();
      __swift_project_value_buffer(v38, qword_27EE58DF8);
      v39 = sub_24794ED14();
      v40 = sub_24794F154();
      v41 = os_log_type_enabled(v39, v40);
      v43 = v77;
      v42 = v78;
      v44 = v76;
      if (v41)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_2478E1000, v39, v40, "SpkrIdSamplingPolicy: Cannot get uploadedSampleCount, no need to migrate aggregated sample count", v45, 2u);
        MEMORY[0x24C1AF180](v45, -1, -1);
      }

      sub_24793857C();
      (*(v42 + 8))(v44, v43);
      (*(v79 + 8))(v74, v73);
      return;
    }

    if (v27 == 1)
    {
      v56 = v79;
      if (v36)
      {
        v57 = *(v29 + 16);
        if (*(v28 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount) >= v36)
        {
          (*(*v57 + 368))(v36, 0);
          v59 = v76;
          v58 = v77;
          sub_247940408();
        }

        else
        {
          v57[16] = 2;
          sub_247940408();
          v59 = v76;
          v58 = v77;
        }

        sub_24793857C();
        (*(v78 + 8))(v59, v58);
        goto LABEL_39;
      }

      v66 = v76;
      v65 = v77;
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v69 = sub_24794ED34();
      __swift_project_value_buffer(v69, qword_27EE58DF8);
      v61 = sub_24794ED14();
      v62 = sub_24794F154();
      v70 = os_log_type_enabled(v61, v62);
      v64 = v78;
      if (!v70)
      {
LABEL_36:

        sub_24793857C();
        (*(v64 + 8))(v66, v65);
LABEL_39:
        (*(v56 + 8))(v74, v73);
        return;
      }

      v67 = swift_slowAlloc();
      *v67 = 0;
      v68 = "SpkrIdSamplingPolicy: aggregatedSampleCount is 0, no need to migrate aggregated sample count";
    }

    else
    {
      v56 = v79;
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v60 = sub_24794ED34();
      __swift_project_value_buffer(v60, qword_27EE58DF8);
      v61 = sub_24794ED14();
      v62 = sub_24794F154();
      v63 = os_log_type_enabled(v61, v62);
      v65 = v77;
      v64 = v78;
      v66 = v76;
      if (!v63)
      {
        goto LABEL_36;
      }

      v67 = swift_slowAlloc();
      *v67 = 0;
      v68 = "SpkrIdSamplingPolicy: sampling status is already finished, no need to migrate aggregated sample count";
    }

    _os_log_impl(&dword_2478E1000, v61, v62, v68, v67, 2u);
    v71 = v67;
    v56 = v79;
    MEMORY[0x24C1AF180](v71, -1, -1);
    goto LABEL_36;
  }

  v46 = v25;

  v47 = v24;
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v48 = sub_24794ED34();
  __swift_project_value_buffer(v48, qword_27EE58DF8);
  v49 = sub_24794ED14();
  v50 = sub_24794F154();
  v51 = os_log_type_enabled(v49, v50);
  v52 = v78;
  v53 = v75;
  if (v51)
  {
    v54 = swift_slowAlloc();
    *v54 = 134217984;
    *(v54 + 4) = v53;
    _os_log_impl(&dword_2478E1000, v49, v50, "#SpkrIdSamplingPolicy: Unsupported sampling status %ld found in legacy version metadata. Removing legacy metadata", v54, 0xCu);
    v55 = v54;
    v21 = v79;
    MEMORY[0x24C1AF180](v55, -1, -1);
  }

  sub_24793857C();
  (*(v52 + 8))(v26, v46);
  (*(v21 + 8))(v74, v47);
}

uint64_t type metadata accessor for SpkrIdSamplingPolicy(uint64_t a1)
{
  result = qword_27EE57458;
  if (!qword_27EE57458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2479096C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_247909738(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v4 - 8);
  v99 = &v98 - v5;
  v6 = sub_24794EC04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v98 - v11;
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v13 = sub_24794ED34();
  v14 = __swift_project_value_buffer(v13, qword_27EE58DF8);

  v100 = v14;
  v15 = sub_24794ED14();
  v16 = sub_24794F154();

  if (os_log_type_enabled(v15, v16))
  {
    v98 = v2;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v104[0] = v18;
    *v17 = 136315138;
    v19 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
    swift_beginAccess();
    sub_2478E9680(a1 + v19, v12, &qword_27EE57278, &unk_247950590);
    if ((*(v7 + 48))(v12, 1, v6))
    {
      sub_2478E9620(v12, &qword_27EE57278, &unk_247950590);
      v20 = 0xE300000000000000;
      v21 = 7104878;
    }

    else
    {
      (*(v7 + 16))(v9, v12, v6);
      sub_2478E9620(v12, &qword_27EE57278, &unk_247950590);
      v22 = sub_24794EBD4();
      v20 = v23;
      (*(v7 + 8))(v9, v6);
      v21 = v22;
    }

    v24 = sub_247924380(v21, v20, v104);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_2478E1000, v15, v16, "#SiriSessionGenerator: validating request: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x24C1AF180](v18, -1, -1);
    MEMORY[0x24C1AF180](v17, -1, -1);

    v2 = v98;
  }

  else
  {
  }

  if (*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_userOptIn) != 1)
  {
    v27 = sub_24794ED14();
    v34 = sub_24794F154();
    if (os_log_type_enabled(v27, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "#SiriSessionGenerator: userOptIn is false";
LABEL_18:
      _os_log_impl(&dword_2478E1000, v27, v34, v36, v35, 2u);
LABEL_30:
      MEMORY[0x24C1AF180](v35, -1, -1);
    }

LABEL_71:

    return 0;
  }

  v25 = (a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_orchCancelledReason);
  if ((*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_orchCancelledReason + 4) & 1) == 0)
  {

    v27 = sub_24794ED14();
    v37 = sub_24794F154();

    if (os_log_type_enabled(v27, v37))
    {
      v35 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v104[0] = v38;
      *v35 = 136315138;
      v39 = *(v25 + 4);
      if (v39)
      {
        v40 = 0;
      }

      else
      {
        v40 = *v25;
      }

      LODWORD(v101) = v40;
      BYTE4(v101) = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57450, &qword_247951008);
      v45 = sub_24794EF14();
      v47 = sub_247924380(v45, v46, v104);

      *(v35 + 4) = v47;
      _os_log_impl(&dword_2478E1000, v27, v37, "#SiriSessionGenerator: orchCancelledReason is not nil: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x24C1AF180](v38, -1, -1);
      goto LABEL_30;
    }

    goto LABEL_71;
  }

  v26 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_location);
  if (!v26)
  {
    v27 = sub_24794ED14();
    v34 = sub_24794F154();
    if (os_log_type_enabled(v27, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "#SiriSessionGenerator: location is nil";
      goto LABEL_18;
    }

    goto LABEL_71;
  }

  v27 = v26;
  [v27 latitude];
  if (v28 == 0.0)
  {
    [v27 longitude];
    if (v29 == 0.0)
    {
      v30 = sub_24794ED14();
      v31 = sub_24794F154();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        v33 = "#SiriSessionGenerator: location invalid: (0.0, 0.0)";
LABEL_25:
        _os_log_impl(&dword_2478E1000, v30, v31, v33, v32, 2u);
        v44 = v32;
LABEL_69:
        MEMORY[0x24C1AF180](v44, -1, -1);
        goto LABEL_70;
      }

      goto LABEL_70;
    }
  }

  v41 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
  swift_beginAccess();
  v42 = v99;
  sub_2478E9680(a1 + v41, v99, &qword_27EE572D0, &unk_2479504E0);
  v43 = sub_24794EBB4();
  LODWORD(v41) = (*(*(v43 - 8) + 48))(v42, 1, v43);
  sub_2478E9620(v42, &qword_27EE572D0, &unk_2479504E0);
  if (v41 == 1)
  {
    v30 = sub_24794ED14();
    v31 = sub_24794F154();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "#SiriSessionGenerator: request date is nil";
      goto LABEL_25;
    }

LABEL_70:

    goto LABEL_71;
  }

  v48 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_siriInputLocale);
  if (v48)
  {
    v49 = v48;
    v50 = SISchemaISOLocale.toString()();
    countAndFlagsBits = v50._countAndFlagsBits;
    object = v50._object;
  }

  else
  {
    object = 0xE700000000000000;
    countAndFlagsBits = 0x6E776F6E6B6E75;
  }

  v53 = *(v2 + 16);
  v54 = [v53 locale];
  if (!v54)
  {
    goto LABEL_44;
  }

  v55 = v54;
  v56 = sub_24794EF04();
  v58 = v57;

  if (countAndFlagsBits == v56 && object == v58)
  {

    goto LABEL_39;
  }

  v59 = sub_24794F4E4();

  if ((v59 & 1) == 0)
  {
LABEL_44:

    v30 = sub_24794ED14();
    v70 = sub_24794F154();

    if (!os_log_type_enabled(v30, v70))
    {

      goto LABEL_70;
    }

    v63 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v101 = v71;
    *v63 = 136315394;
    v72 = sub_247924380(countAndFlagsBits, object, &v101);

    *(v63 + 4) = v72;
    *(v63 + 12) = 2080;
    v73 = [v53 locale];

    if (v73)
    {
      v75 = sub_24794EF04();
      v77 = v76;

      v78 = sub_247924380(v75, v77, &v101);

      *(v63 + 14) = v78;
      _os_log_impl(&dword_2478E1000, v30, v70, "#SiriSessionGenerator: requestLocale: %s does not match siriInputLocale: %s", v63, 0x16u);
      swift_arrayDestroy();
      v79 = v71;
LABEL_68:
      MEMORY[0x24C1AF180](v79, -1, -1);
      v44 = v63;
      goto LABEL_69;
    }

    __break(1u);
    return result;
  }

LABEL_39:

  if (CSIsCommunalDevice())
  {
    v60 = (a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_uniqueSpeakerIdentifier);
    if (!*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_uniqueSpeakerIdentifier + 8))
    {
      v30 = sub_24794ED14();
      v31 = sub_24794F154();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        v33 = "#SiriSessionGenerator: uniqueSpeakerIdentifier is nil on communal device";
        goto LABEL_25;
      }

      goto LABEL_70;
    }

    v61 = (a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_userIdentifyClassification);
    if (*(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_userIdentifyClassification + 4))
    {

      v30 = sub_24794ED14();
      v62 = sub_24794F154();

      if (!os_log_type_enabled(v30, v62))
      {
        goto LABEL_70;
      }

      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v103 = v64;
      *v63 = 136315138;
      v65 = v60[1];
      v101 = *v60;
      v102 = v65;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57438, &qword_247950E90);
      v66 = sub_24794EF14();
      v68 = sub_247924380(v66, v67, &v103);

      *(v63 + 4) = v68;
      v69 = "#SiriSessionGenerator: userIdentifyClassification is nil on communal device for loggableSharedUser: %s";
      goto LABEL_66;
    }

    if (*v61 <= 6u && ((1 << *v61) & 0x51) != 0)
    {

      v30 = sub_24794ED14();
      v86 = sub_24794F154();

      if (!os_log_type_enabled(v30, v86))
      {
        goto LABEL_70;
      }

      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v103 = v64;
      *v63 = 136315394;
      v87 = sub_24794F204();
      v89 = sub_247924380(v87, v88, &v103);

      *(v63 + 4) = v89;
      *(v63 + 12) = 2080;
      v90 = v60[1];
      v101 = *v60;
      v102 = v90;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57438, &qword_247950E90);
      v91 = sub_24794EF14();
      v93 = sub_247924380(v91, v92, &v103);

      *(v63 + 14) = v93;
      _os_log_impl(&dword_2478E1000, v30, v86, "#SiriSessionGenerator: invalid user identity confidence on communal device: %s for loggableSharedUser: %s", v63, 0x16u);
      swift_arrayDestroy();
      goto LABEL_67;
    }

    v80 = (a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource);
    v81 = (a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource + 4);
    if ((*v81 & 1) == 0)
    {
      goto LABEL_73;
    }

LABEL_49:

    v30 = sub_24794ED14();
    v62 = sub_24794F154();

    if (!os_log_type_enabled(v30, v62))
    {
      goto LABEL_70;
    }

    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v101 = v64;
    *v63 = 136315138;
    v82 = *v81;
    if (*v81)
    {
      v83 = 0;
    }

    else
    {
      v83 = *v80;
    }

    LODWORD(v103) = v83;
    BYTE4(v103) = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57450, &qword_247951008);
    v94 = sub_24794EF14();
    v96 = sub_247924380(v94, v95, &v101);

    *(v63 + 4) = v96;
    v69 = "#SiriSessionGenerator: invalid invocation source: %s";
LABEL_66:
    _os_log_impl(&dword_2478E1000, v30, v62, v69, v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
LABEL_67:
    v79 = v64;
    goto LABEL_68;
  }

  v80 = (a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource);
  v81 = (a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource + 4);
  if (*v81)
  {
    goto LABEL_49;
  }

  v84 = *v80 - 17;
  if (v84 <= 0x3F && ((1 << v84) & 0x8000000000000101) != 0)
  {
    v85 = *(a1 + 17);
    if (v85 == 2 || (v85 & 1) == 0)
    {
      v30 = sub_24794ED14();
      v31 = sub_24794F154();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        v33 = "#SiriSessionGenerator: requestRecord is not SAT trigger on non-communal device";
        goto LABEL_25;
      }

      goto LABEL_70;
    }
  }

LABEL_73:
  v97 = *v80;
  if (*v80 > 78)
  {
    if (v97 != 79 && v97 != 80)
    {
      goto LABEL_49;
    }
  }

  else if (v97 != 17 && v97 != 25)
  {
    goto LABEL_49;
  }

  return 1;
}

uint64_t *sub_24790A4C4(unint64_t i)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57468, &qword_247951058);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v108 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v108 - v11;
  v13 = sub_24794EC04();
  v121 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v113 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v114 = &v108 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v108 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v116 = &v108 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v125 = (&v108 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v122 = (&v108 - v26);
  MEMORY[0x28223BE20](v25);
  v28 = &v108 - v27;
  v29 = sub_24794E020(MEMORY[0x277D84F90]);
  v131 = v29;
  v127 = i;
  if (i >> 62)
  {
    goto LABEL_88;
  }

  for (j = *((i & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_24794F414())
  {
    v119 = v7;
    v126 = v9;
    v128 = v20;
    v129 = v13;
    if (j)
    {
      break;
    }

    v52 = v29;
    v53 = v7;
LABEL_37:
    v120 = sub_24794E020(MEMORY[0x277D84F90]);
    v54 = *(v52 + 64);
    v110 = v52 + 64;
    v55 = 1 << *(v52 + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v52;
    v13 = v56 & v54;
    v20 = (v55 + 63) >> 6;
    v124 = (v121 + 16);
    v125 = (v121 + 32);
    v123 = (v121 + 8);
    v117 = v57;

    v58 = 0;
    v7 = &qword_27EE57470;
    *&v59 = 136315394;
    v109 = v59;
    *&v59 = 136315138;
    v108 = v59;
    v115 = v2;
    v118 = v20;
LABEL_41:
    v61 = v58;
    if (v13)
    {
      while (2)
      {
        v62 = v61;
LABEL_50:
        v64 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v65 = v64 | (v62 << 6);
        v66 = v117;
        v67 = v121;
        v68 = v116;
        v69 = v129;
        (*(v121 + 16))(v116, *(v117 + 48) + *(v121 + 72) * v65, v129);
        v70 = *(*(v66 + 56) + 8 * v65);
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57470, &unk_247951060);
        v72 = *(v71 + 48);
        (*(v67 + 32))(v53, v68, v69);
        *(v53 + v72) = v70;
        (*(*(v71 - 8) + 56))(v53, 0, 1, v71);

        v28 = v62;
        v2 = v115;
        v9 = v126;
LABEL_51:
        sub_24790C0BC(v53, v9);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57470, &unk_247951060);
        if ((*(*(v20 - 8) + 48))(v9, 1, v20) == 1)
        {

          return v120;
        }

        v29 = *(v9 + *(v20 + 48));
        (*v125)(v128, v9, v129);
        v122 = (v29 >> 62);
        v12 = (v29 & 0xFFFFFFFFFFFFFF8);
        if (v29 >> 62)
        {
          v7 = sub_24794F414();
        }

        else
        {
          v7 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v73 = 0;
        v9 = v29 & 0xC000000000000001;
        v127 = v28;
        do
        {
          if (v7 == v73)
          {

            v89 = v120;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v130[0] = v89;
            v91 = v128;
            sub_24794B520(v29, v128, isUniquelyReferenced_nonNull_native);
            v120 = v130[0];
            if (qword_27EE571C0 != -1)
            {
              swift_once();
            }

            v92 = sub_24794ED34();
            __swift_project_value_buffer(v92, qword_27EE58DF8);
            v93 = v114;
            v94 = v129;
            (*v124)(v114, v91, v129);

            v95 = sub_24794ED14();
            v96 = sub_24794F154();
            if (os_log_type_enabled(v95, v96))
            {
              LODWORD(v112) = v96;
              v97 = swift_slowAlloc();
              v111 = swift_slowAlloc();
              v130[0] = v111;
              *v97 = v109;
              sub_24790C1B4();
              v98 = sub_24794F4D4();
              v100 = v99;
              v101 = v93;
              v102 = *v123;
              (*v123)(v101, v94);
              v103 = sub_247924380(v98, v100, v130);

              *(v97 + 4) = v103;
              *(v97 + 12) = 2048;
              if (v122)
              {
                v104 = sub_24794F414();
              }

              else
              {
                v104 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v58 = v127;
              v105 = v128;

              *(v97 + 14) = v104;

              _os_log_impl(&dword_2478E1000, v95, v112, "#SiriSessionGenerator: Session %s is valid with %ld requests", v97, 0x16u);
              v106 = v111;
              __swift_destroy_boxed_opaque_existential_0(v111);
              MEMORY[0x24C1AF180](v106, -1, -1);
              MEMORY[0x24C1AF180](v97, -1, -1);

              (v102)(v105, v129);
              v20 = v118;
              v53 = v119;
              v9 = v126;
              v7 = &qword_27EE57470;
            }

            else
            {

              swift_bridgeObjectRelease_n();
              v29 = v123;
              v60 = *v123;
              (*v123)(v93, v94);
              (v60)(v91, v94);
              v20 = v118;
              v53 = v119;
              v9 = v126;
              v58 = v127;
              v7 = &qword_27EE57470;
            }

            goto LABEL_41;
          }

          if (v9)
          {
            v74 = MEMORY[0x24C1AE890](v73, v29);
            if (__OFADD__(v73, 1))
            {
              goto LABEL_81;
            }
          }

          else
          {
            if (v73 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_82;
            }

            v74 = *(v29 + 8 * v73 + 32);

            if (__OFADD__(v73, 1))
            {
LABEL_81:
              __break(1u);
LABEL_82:
              __break(1u);
              goto LABEL_83;
            }
          }

          v20 = sub_247909738(v74);

          v73 = (v73 + 1);
        }

        while ((v20 & 1) != 0);

        if (qword_27EE571C0 != -1)
        {
          swift_once();
        }

        v75 = sub_24794ED34();
        __swift_project_value_buffer(v75, qword_27EE58DF8);
        v76 = v113;
        v77 = v128;
        v12 = v129;
        (*v124)(v113, v128, v129);
        v29 = sub_24794ED14();
        v78 = sub_24794F154();
        if (os_log_type_enabled(v29, v78))
        {
          v79 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v130[0] = v122;
          *v79 = v108;
          sub_24790C1B4();
          v80 = sub_24794F4D4();
          v81 = v76;
          v83 = v82;
          v84 = *v123;
          (*v123)(v81, v12);
          v85 = sub_247924380(v80, v83, v130);

          *(v79 + 4) = v85;
          _os_log_impl(&dword_2478E1000, v29, v78, "#SiriSessionGenerator: Session %s contains invalid requests, excluding entire session", v79, 0xCu);
          v86 = v122;
          __swift_destroy_boxed_opaque_existential_0(v122);
          MEMORY[0x24C1AF180](v86, -1, -1);
          MEMORY[0x24C1AF180](v79, -1, -1);

          (v84)(v128, v12);
        }

        else
        {

          v29 = v123;
          v87 = *v123;
          (*v123)(v76, v12);
          (v87)(v77, v12);
        }

        v9 = v126;
        v61 = v127;
        v20 = v118;
        v53 = v119;
        v7 = &qword_27EE57470;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    if (v20 <= (v61 + 1))
    {
      v63 = v61 + 1;
    }

    else
    {
      v63 = v20;
    }

    v28 = (v63 - 1);
    while (1)
    {
      v62 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if (v62 >= v20)
      {
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57470, &unk_247951060);
        (*(*(v88 - 8) + 56))(v53, 1, 1, v88);
        v13 = 0;
        goto LABEL_51;
      }

      v13 = *(v110 + 8 * v62);
      ++v61;
      if (v13)
      {
        goto LABEL_50;
      }
    }

LABEL_83:
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
    ;
  }

  v9 = 0;
  v124 = (v127 & 0xC000000000000001);
  v110 = v127 & 0xFFFFFFFFFFFFFF8;
  v123 = (v121 + 48);
  v115 = (v121 + 32);
  v120 = (v121 + 8);
  v117 = v121 + 16;
  v111 = ((v121 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
  *&v109 = v28;
  v112 = j;
  while (1)
  {
    if (v124)
    {
      v29 = MEMORY[0x24C1AE890](v9, v127);
      v7 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        goto LABEL_84;
      }
    }

    else
    {
      if (v9 >= *(v110 + 16))
      {
        goto LABEL_85;
      }

      v29 = *(v127 + 8 * v9 + 32);

      v7 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        goto LABEL_84;
      }
    }

    v31 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_clockSessionId;
    swift_beginAccess();
    v32 = v29 + v31;
    v20 = &qword_27EE57278;
    sub_2478E9680(v32, v12, &qword_27EE57278, &unk_247950590);
    if ((*v123)(v12, 1, v13) != 1)
    {
      break;
    }

    sub_2478E9620(v12, &qword_27EE57278, &unk_247950590);
LABEL_6:
    ++v9;
    if (v7 == j)
    {
      v52 = v131;
      v53 = v119;
      v9 = v126;
      goto LABEL_37;
    }
  }

  (*v115)(v28, v12, v13);
  if (*(v131 + 16))
  {
    sub_24792C228(v28);
    v33 = *v117;
    if (v34)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v33 = *v117;
  }

  v35 = v122;
  v118 = v33;
  v33(v122, v28, v13);
  v20 = v131;
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v130[0] = v20;
  v37 = sub_24792C228(v35);
  v38 = *(v20 + 16);
  v39 = (v36 & 1) == 0;
  v40 = v38 + v39;
  if (__OFADD__(v38, v39))
  {
    goto LABEL_86;
  }

  v41 = v36;
  if (*(v20 + 24) >= v40)
  {
    if (v13)
    {
      v13 = v129;
      v20 = v130[0];
      if (v36)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_24794C8A0();
      v13 = v129;
      v20 = v130[0];
      if (v41)
      {
        goto LABEL_25;
      }
    }

LABEL_27:
    v28 = v12;
    *(v20 + 8 * (v37 >> 6) + 64) |= 1 << v37;
    v44 = v121;
    v12 = v122;
    v118(*(v20 + 48) + *(v121 + 72) * v37, v122, v13);
    *(*(v20 + 56) + 8 * v37) = MEMORY[0x277D84F90];
    (*(v44 + 8))(v12, v13);
    v45 = *(v20 + 16);
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      goto LABEL_87;
    }

    *(v20 + 16) = v47;
    v12 = v28;
    v28 = v109;
    goto LABEL_29;
  }

  sub_24794A550(v40, v13);
  v42 = sub_24792C228(v122);
  if ((v41 & 1) == (v43 & 1))
  {
    v37 = v42;
    v13 = v129;
    v20 = v130[0];
    if ((v41 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_25:
    *(*(v20 + 56) + 8 * v37) = MEMORY[0x277D84F90];

    (*v120)(v122, v13);
LABEL_29:
    v131 = v20;
    v33 = v118;
LABEL_30:
    v33(v125, v28, v13);
    v49 = sub_24791F080(v130);
    if (*v48)
    {
      v50 = v48;

      MEMORY[0x24C1AE560](v51);
      if (*((*v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24794F084();
        v28 = v109;
      }

      sub_24794F0A4();
    }

    (v49)(v130, 0);

    v29 = v120;
    v20 = *v120;
    (*v120)(v125, v13);
    (v20)(v28, v13);
    j = v112;
    goto LABEL_6;
  }

  result = sub_24794F514();
  __break(1u);
  return result;
}