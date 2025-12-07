void *sub_227FC5470(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2280445E4(a1, a2, a3, *v3, &qword_27D81EB90, &qword_22813DAE0, MEMORY[0x277D71C28]);
  *v3 = result;
  return result;
}

uint64_t sub_227FC54CC()
{
  v1 = v0;
  v66 = sub_2281376AC();
  v69 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_22813768C();
  v3 = *(v67 - 8);
  v4 = MEMORY[0x28223BE20](v67);
  v59 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v60 = v55 - v6;
  v64 = sub_2281375CC();
  v7 = *(v64 - 1);
  MEMORY[0x28223BE20](v64);
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2281376DC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v55 - v15;
  v17 = sub_22813764C();
  if (!*(v17 + 16))
  {

    v30 = swift_allocObject();
    *(v30 + 16) = 27;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0;
    v31 = sub_227FF96D4(0, 0xD00000000000007DLL, 0x8000000228148BF0, 22, sub_2281039C0, v30);
    sub_227FDB3CC();
    swift_allocError();
    *v32 = 27;
    *(v32 + 8) = v31;
    return swift_willThrow();
  }

  v18 = *(v11 + 16);
  v19 = v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v61 = v16;
  v18(v14, v19, v10);
  v20 = v61;

  v57 = v11;
  v58 = v10;
  (*(v11 + 32))(v20, v14, v10);
  v21 = *(sub_22813764C() + 16);

  v22 = v21 >= 2;
  v23 = v64;
  if (v22)
  {
    if (qword_2813C49E0 != -1)
    {
LABEL_34:
      swift_once();
    }

    v24 = sub_22813882C();
    __swift_project_value_buffer(v24, qword_2813C8A20);
    v25 = sub_22813880C();
    v26 = sub_2281396EC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_227FC3000, v25, v26, "More than one candidate present in PromptCompletion; expected only 1.", v27, 2u);
      v28 = v27;
      v20 = v61;
      MEMORY[0x22AAB28A0](v28, -1, -1);
    }
  }

  sub_2281376BC();
  v29 = (*(v7 + 88))(v9, v23);
  if (v29 == *MEMORY[0x277D71B60])
  {
    goto LABEL_9;
  }

  if (v29 != *MEMORY[0x277D71B50])
  {
    if (v29 == *MEMORY[0x277D71B68])
    {
      v48 = swift_allocObject();
      *(v48 + 16) = 38;
      *(v48 + 24) = 0;
      *(v48 + 32) = 0;
      v49 = sub_227FF96D4(0, 0xD00000000000007DLL, 0x8000000228148BF0, 37, sub_228103974, v48);
      sub_227FDB3CC();
      swift_allocError();
      *v50 = 38;
      *(v50 + 8) = v49;
      swift_willThrow();
      return (*(v57 + 8))(v20, v58);
    }

    if (v29 != *MEMORY[0x277D71B58])
    {
      if (qword_2813C49E0 != -1)
      {
        swift_once();
      }

      v51 = sub_22813882C();
      __swift_project_value_buffer(v51, qword_2813C8A20);
      v52 = sub_22813880C();
      v53 = sub_2281396EC();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_227FC3000, v52, v53, "@unknown FinishReason case encountered when extractig summary from PromptCompletion", v54, 2u);
        MEMORY[0x22AAB28A0](v54, -1, -1);
      }

LABEL_9:
      (*(v7 + 8))(v9, v23);
    }
  }

  v34 = sub_2281376CC();
  v35 = *(v34 + 16);
  if (v35)
  {
    v56 = v1;
    v68[0] = MEMORY[0x277D84F90];
    sub_227FC5470(0, v35, 0);
    v9 = v68[0];
    v36 = *(v69 + 16);
    v37 = *(v69 + 80);
    v55[1] = v34;
    v38 = v34 + ((v37 + 32) & ~v37);
    v63 = *(v69 + 72);
    v64 = v36;
    v69 += 16;
    v39 = (v69 - 8);
    v62 = v3 + 32;
    v40 = v59;
    do
    {
      v41 = v65;
      v42 = v66;
      (v64)(v65, v38, v66);
      sub_22813769C();
      (*v39)(v41, v42);
      v68[0] = v9;
      v44 = *(v9 + 2);
      v43 = *(v9 + 3);
      if (v44 >= v43 >> 1)
      {
        sub_227FC5470((v43 > 1), v44 + 1, 1);
        v9 = v68[0];
      }

      *(v9 + 2) = v44 + 1;
      (*(v3 + 32))(&v9[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v44], v40, v67);
      v38 += v63;
      --v35;
    }

    while (v35);

    v1 = v56;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v68[0] = 0;
  v68[1] = 0xE000000000000000;
  v45 = *(v9 + 2);
  v7 = v67;
  v46 = v60;
  if (v45)
  {
    v47 = 0;
    v20 = (v3 + 16);
    v23 = (v3 + 8);
    while (1)
    {
      if (v47 >= *(v9 + 2))
      {
        __break(1u);
        goto LABEL_34;
      }

      (*(v3 + 16))(v46, &v9[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v47], v7);
      sub_227FC5D6C(v68, v46);
      if (v1)
      {
        break;
      }

      ++v47;
      (*v23)(v46, v7);
      if (v45 == v47)
      {
        goto LABEL_24;
      }
    }

    (*v23)(v46, v7);

    __break(1u);
  }

  else
  {
LABEL_24:
    (*(v57 + 8))(v61, v58);

    return v68[0];
  }

  return result;
}

uint64_t sub_227FC5D6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22813766C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22813768C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a2, v7);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == *MEMORY[0x277D71C10])
  {
    (*(v8 + 96))(v10, v7);
    (*(v4 + 32))(v6, v10, v3);
    v12 = sub_22813765C();
    MEMORY[0x22AAB1970](v12);

    return (*(v4 + 8))(v6, v3);
  }

  if (v11 == *MEMORY[0x277D71C20])
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v14 = sub_22813882C();
    __swift_project_value_buffer(v14, qword_2813C8A20);
    v15 = sub_22813880C();
    v16 = sub_2281396EC();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_23;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Image content type encountered when reducing PromptCompletion candidate";
  }

  else if (v11 == *MEMORY[0x277D71C08])
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v19 = sub_22813882C();
    __swift_project_value_buffer(v19, qword_2813C8A20);
    v15 = sub_22813880C();
    v16 = sub_2281396EC();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_23;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "File content type encountered when reducing PromptCompletion candidate";
  }

  else if (v11 == *MEMORY[0x277D71C18])
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v20 = sub_22813882C();
    __swift_project_value_buffer(v20, qword_2813C8A20);
    v15 = sub_22813880C();
    v16 = sub_2281396EC();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_23;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Audio content type encountered when reducing PromptCompletion candidate";
  }

  else
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v21 = sub_22813882C();
    __swift_project_value_buffer(v21, qword_2813C8A20);
    v15 = sub_22813880C();
    v16 = sub_2281396EC();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_23;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "@unknown content type encountered when reducing PromptCompletion candidate";
  }

  _os_log_impl(&dword_227FC3000, v15, v16, v18, v17, 2u);
  MEMORY[0x22AAB28A0](v17, -1, -1);
LABEL_23:

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_227FC621C()
{
  v92 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for PromptManager(0);
  sub_227FCAA80(v2 + *(v3 + 20), v1, type metadata accessor for ModelBundleIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227FCAB98(*(v0 + 168), type metadata accessor for ModelBundleIdentifier);
LABEL_4:
      v5 = *(v0 + 264);
      v7 = *(v0 + 240);
      v6 = *(v0 + 248);
      sub_2281374FC();
      (*(v6 + 8))(v5, v7);

      v8 = *(v0 + 8);
LABEL_17:

      return v8();
    }
  }

  else
  {
    sub_227FCAB98(*(v0 + 168), type metadata accessor for ModelBundleIdentifier);
  }

  v9 = *(v0 + 304);
  v10 = *(v0 + 144);
  v11 = *(v0 + 56);
  v12 = *v11;
  v13 = v11[1];
  sub_2281374FC();
  v14 = sub_227FC54CC();
  v16 = v9;
  v17 = (v10 + 8);
  if (v9)
  {
    v18 = *(v0 + 264);
    v19 = *(v0 + 240);
    v20 = *(v0 + 248);
    (*v17)(*(v0 + 152), *(v0 + 136));
    (*(v20 + 8))(v18, v19);
    *(v0 + 32) = v16;
    v24 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    if (swift_dynamicCast())
    {
      v26 = *(v0 + 120);
      v25 = *(v0 + 128);
      v27 = *(v0 + 96);
      v28 = *(v0 + 104);

      (*(v28 + 32))(v26, v25, v27);
      if (qword_2813C49E0 != -1)
      {
        swift_once();
      }

      v29 = *(v0 + 112);
      v30 = *(v0 + 120);
      v31 = *(v0 + 96);
      v32 = *(v0 + 104);
      v34 = *(v0 + 80);
      v33 = *(v0 + 88);
      v35 = *(v0 + 56);
      v36 = sub_22813882C();
      __swift_project_value_buffer(v36, qword_2813C8A20);
      sub_227FCAA80(v35, v33, type metadata accessor for SummarizationParameters);
      sub_227FCAA80(v35, v34, type metadata accessor for SummarizationParameters);
      v37 = *(v32 + 16);
      v37(v29, v30, v31);
      v38 = sub_22813880C();
      v39 = sub_2281396DC();
      v40 = os_log_type_enabled(v38, v39);
      v42 = *(v0 + 104);
      v41 = *(v0 + 112);
      v43 = *(v0 + 88);
      v90 = *(v0 + 96);
      v44 = *(v0 + 80);
      if (v40)
      {
        v87 = v39;
        v45 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v91[0] = v88;
        *v45 = 136446722;
        *(v0 + 384) = *(v43 + 32);
        v89 = v37;
        v46 = sub_2281392EC();
        v48 = v47;
        sub_227FCAB98(v43, type metadata accessor for SummarizationParameters);
        v49 = sub_227FCC340(v46, v48, v91);

        *(v45 + 4) = v49;
        *(v45 + 12) = 2082;
        *(v0 + 16) = *(v44 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6E8, &qword_22813BAD0);
        v50 = sub_2281392EC();
        v52 = v51;
        sub_227FCAB98(v44, type metadata accessor for SummarizationParameters);
        v53 = sub_227FCC340(v50, v52, v91);

        *(v45 + 14) = v53;
        *(v45 + 22) = 2082;
        v54 = sub_227FFECCC();
        v56 = v55;
        v57 = *(v42 + 8);
        v57(v41, v90);
        v58 = v54;
        v37 = v89;
        v59 = sub_227FCC340(v58, v56, v91);
        v60 = v57;

        *(v45 + 24) = v59;
        _os_log_impl(&dword_227FC3000, v38, v87, "Prompt not supported for style=%{public}s, contentType=%{public}s, underlyingError=%{public}s", v45, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAB28A0](v88, -1, -1);
        MEMORY[0x22AAB28A0](v45, -1, -1);
      }

      else
      {

        v60 = *(v42 + 8);
        v60(v41, v90);
        sub_227FCAB98(v44, type metadata accessor for SummarizationParameters);
        sub_227FCAB98(v43, type metadata accessor for SummarizationParameters);
      }

      v61 = *(v0 + 120);
      v62 = *(v0 + 96);
      sub_22800CA68(&qword_27D81E6E0, MEMORY[0x277D71F10], MEMORY[0x277D71F18]);
      v63 = swift_allocError();
      v37(v64, v61, v62);
      v65 = swift_allocObject();
      *(v65 + 16) = 56;
      *(v65 + 24) = 0;
      *(v65 + 32) = 0;
      v66 = sub_227FF96D4(v63, 0xD00000000000006BLL, 0x8000000228144800, 106, sub_22800CBD8, v65);

      sub_227FDB3CC();
      swift_allocError();
      *v67 = 56;
      *(v67 + 8) = v66;
      swift_willThrow();
      v60(v61, v62);
    }

    v8 = *(v0 + 8);
    goto LABEL_17;
  }

  v21 = v14;
  v22 = v15;
  (*v17)(*(v0 + 152), *(v0 + 136));
  sub_227FC6CD0(v12, v13, v21, v22);
  *(v0 + 344) = v23;
  v69 = v23;

  if (!*(v69 + 16))
  {

    goto LABEL_4;
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v70 = sub_22813882C();
  __swift_project_value_buffer(v70, qword_2813C8A20);

  v71 = sub_22813880C();
  v72 = sub_2281396CC();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v91[0] = v74;
    *v73 = 136315138;
    v75 = MEMORY[0x22AAB1AD0](v69, MEMORY[0x277D837D0]);
    v77 = sub_227FCC340(v75, v76, v91);

    *(v73 + 4) = v77;
    _os_log_impl(&dword_227FC3000, v71, v72, "Two-pass model inference triggered. Disallowed words: %s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_2(v74);
    MEMORY[0x22AAB28A0](v74, -1, -1);
    MEMORY[0x22AAB28A0](v73, -1, -1);
  }

  if (qword_2813C8178 != -1)
  {
    swift_once();
  }

  sub_228139B6C();
  v78 = *(*(v0 + 40) + 24);

  if (v78)
  {
    KeyPath = swift_getKeyPath(byte_22813BB58);
    os_unfair_lock_lock((v78 + 16));
    v91[3] = MEMORY[0x277D839B0];
    LOBYTE(v91[0]) = 1;

    sub_2280449FC(v91, KeyPath, (v78 + 24));
    os_unfair_lock_unlock((v78 + 16));
  }

  sub_2280017F4(*(v0 + 56), *(v0 + 224));
  v80 = *(v0 + 56);
  v81 = swift_task_alloc();
  *(v0 + 352) = v81;
  *v81 = v0;
  v81[1] = sub_2280007E8;
  v82 = *(v0 + 224);
  v83 = *(v0 + 192);
  v84 = *(v0 + 64);
  v85 = *(v0 + 72);
  v86 = *(v0 + 56);

  return sub_228008880(v83, v82, v86, v69, v84, v80 + 40, v85);
}

uint64_t sub_227FC6CA0()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D81EFC8, &qword_228140470);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

void sub_227FC6CD0(uint64_t a1, unint64_t a2, uint64_t a3, int64_t a4)
{
  v5 = v4;
  v6 = objc_opt_self();
  v7 = off_2785F1000;

  if (qword_2813C4620 != -1)
  {
LABEL_52:
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v8 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v8 = &qword_2813C76F8;
  }

  v9 = *(*v8 + 2168);
  v10 = *(*v8 + 2176);
  v11 = *(*v8 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v10(v60, v11);

    if ((v60[0] & 1) == 0)
    {
      return;
    }
  }

  else
  {

    if (!v9)
    {
      return;
    }
  }

  type metadata accessor for SKAssetManager();
  swift_initStackObject();
  v12 = SKAssetManager.init()();
  type metadata accessor for TwoPassInferenceConfiguration(0);
  swift_allocObject();
  v13 = TwoPassInferenceConfiguration.init(assetManager:)(v12);
  if (!v5)
  {
    v14 = v13;
    swift_beginAccess();
    v61 = MEMORY[0x277D84FA0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E758, &unk_22813BB80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_22813A4B0;
    v16 = *MEMORY[0x277CD8978];
    *(v15 + 32) = *MEMORY[0x277CD8978];
    v17 = objc_allocWithZone(MEMORY[0x277CD89D8]);
    type metadata accessor for NLTagScheme(0);

    v18 = v16;
    v19 = sub_22813950C();

    v20 = [v17 initWithTagSchemes_];

    v21 = sub_22813927C();
    [v20 setString_];

    MEMORY[0x28223BE20](v22);
    sub_22813972C();

    v6 = v61;
    if (*(v61 + 16))
    {
      v58 = v14;
      v61 = MEMORY[0x277D84FA0];
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_22813A4B0;
      *(v23 + 32) = v18;
      v24 = objc_allocWithZone(MEMORY[0x277CD89D8]);
      v25 = v18;
      v59 = v6;

      v26 = sub_22813950C();

      v27 = [v24 initWithTagSchemes_];

      v28 = sub_22813927C();
      [v27 setString_];

      MEMORY[0x28223BE20](v29);
      sub_22813972C();

      v30 = 0;
      v31 = 0;
      v32 = v6 + 56;
      v33 = v61;
      v34 = 1 << *(v6 + 32);
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      else
      {
        v35 = -1;
      }

      v7 = v35 & *(v6 + 56);
      v57 = qword_2813C6368;
      v55 = (v34 + 63) >> 6;
      v5 = v61 + 56;
      v36 = MEMORY[0x277D84F90];
      v56 = v6 + 56;
      do
      {
        while (1)
        {
          while (1)
          {
            v37 = v31;
            if (!v7)
            {
              while (1)
              {
                v31 = v37 + 1;
                if (__OFADD__(v37, 1))
                {
                  break;
                }

                if (v31 >= v55)
                {
                  goto LABEL_46;
                }

                v7 = *(v32 + 8 * v31);
                ++v37;
                if (v7)
                {
                  goto LABEL_25;
                }
              }

              __break(1u);
              goto LABEL_52;
            }

LABEL_25:
            v38 = __clz(__rbit64(v7));
            v7 &= v7 - 1;
            v39 = *(*(v6 + 48) + ((v31 << 9) | (8 * v38)));
            if (!*(v33 + 16))
            {
              break;
            }

            v40 = sub_228139A9C();
            v41 = -1 << *(v33 + 32);
            v42 = v40 & ~v41;
            if (((*(v5 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
            {
              break;
            }

            v43 = ~v41;
            while (*(*(v33 + 48) + 8 * v42) != v39)
            {
              v42 = (v42 + 1) & v43;
              if (((*(v5 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
              {
                goto LABEL_30;
              }
            }
          }

LABEL_30:
          if ((v39 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            return;
          }

          v44 = *(v58 + v57);
          if (v39 >= *(v44 + 16))
          {
            goto LABEL_54;
          }

          v45 = v33;
          v46 = *(v44 + 8 * v39 + 32);
          v47 = *(v46 + 16);
          v48 = *(v36 + 2);
          v49 = v48 + v47;
          if (__OFADD__(v48, v47))
          {
            goto LABEL_55;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v49 > *(v36 + 3) >> 1)
          {
            if (v48 <= v49)
            {
              v51 = v48 + v47;
            }

            else
            {
              v51 = v48;
            }

            v36 = sub_2281338C0(isUniquelyReferenced_nonNull_native, v51, 1, v36);
          }

          v6 = v59;
          v33 = v45;
          v32 = v56;
          if (!*(v46 + 16))
          {
            break;
          }

          if ((*(v36 + 3) >> 1) - *(v36 + 2) < v47)
          {
            goto LABEL_56;
          }

          swift_arrayInitWithCopy();

          v30 = 1;
          if (v47)
          {
            v52 = *(v36 + 2);
            v53 = __OFADD__(v52, v47);
            v54 = v52 + v47;
            if (v53)
            {
              goto LABEL_57;
            }

            *(v36 + 2) = v54;
          }
        }

        v30 = 1;
      }

      while (!v47);
      __break(1u);
LABEL_46:

      if (v30)
      {
        return;
      }
    }

    else
    {
    }
  }
}

void sub_227FC7498(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_22813927C();
  LOBYTE(a1) = [a1 BOOLForKey_];

  *a2 = a1;
}

uint64_t sub_227FC755C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227FC75C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227FC75FC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2281287A4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_227FC77B8()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);
  if (v0)
  {
    v3 = sub_2281092E8;
  }

  else
  {
    v3 = sub_227FC7920;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_227FC7920()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[16];
    v5 = v0[9];
    v4 = v0[10];
    os_unfair_lock_lock(Strong + 4);
    sub_227FC7A10(&v2[6], v5, v4);
    os_unfair_lock_unlock(v2 + 4);
    if (v3)
    {
      return;
    }
  }

  v6 = v0[1];

  v6();
}

uint64_t sub_227FC7A10(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A0, &unk_22813AB10);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v52 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = (&v52 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F458, &qword_228142F50);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v58 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - v19;
  v21 = *a1;
  if (*(*a1 + 16))
  {
    v22 = sub_227FC7F80(a2);
    if (v23)
    {
      v55 = a1;
      v56 = a2;
      v57 = v3;
      v24 = (*(v21 + 56) + 24 * v22);
      v25 = v24[1];
      v27 = v24[2];
      v59 = *v24;
      v26 = v59;
      v60 = v25;
      v61 = v27;

      v54 = a3;
      sub_227FCACB8(a3, v26, v25, v27, &qword_27D81EBA0, &qword_22813DAF0, v20);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBA0, &qword_22813DAF0);
      v29 = (*(*(v28 - 8) + 48))(v20, 1, v28);
      sub_22812D31C(v20, &qword_27D81F458, &qword_228142F50);
      if (v29 != 1)
      {
        if (qword_2813C49E0[0] != -1)
        {
          swift_once();
        }

        v30 = sub_22813882C();
        __swift_project_value_buffer(v30, qword_2813C8A20);
        v31 = v56;
        sub_227FCAFD4(v56, v15, &qword_27D81E4A0, &unk_22813AB10);
        sub_227FCAFD4(v31, v13, &qword_27D81E4A0, &unk_22813AB10);
        sub_227FCAFD4(v31, v10, &qword_27D81E4A0, &unk_22813AB10);
        v32 = sub_22813880C();
        v33 = sub_2281396BC();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v62 = v53;
          *v34 = 136446722;
          v35 = *v15;
          v36 = v15[1];

          sub_22812D31C(v15, &qword_27D81E4A0, &unk_22813AB10);
          v37 = sub_227FCC340(v35, v36, &v62);

          *(v34 + 4) = v37;
          *(v34 + 12) = 2082;
          v38 = *(v13 + 2);
          v39 = *(v13 + 3);

          sub_22812D31C(v13, &qword_27D81E4A0, &unk_22813AB10);
          v40 = sub_227FCC340(v38, v39, &v62);

          *(v34 + 14) = v40;
          *(v34 + 22) = 1026;
          LODWORD(v40) = *(v10 + 8);
          v31 = v56;
          sub_22812D31C(v10, &qword_27D81E4A0, &unk_22813AB10);
          *(v34 + 24) = v40;
          _os_log_impl(&dword_227FC3000, v32, v33, "Evicted session from cache for [useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d]", v34, 0x1Cu);
          v41 = v53;
          swift_arrayDestroy();
          MEMORY[0x22AAB28A0](v41, -1, -1);
          MEMORY[0x22AAB28A0](v34, -1, -1);
        }

        else
        {
          sub_22812D31C(v10, &qword_27D81E4A0, &unk_22813AB10);

          sub_22812D31C(v13, &qword_27D81E4A0, &unk_22813AB10);
          sub_22812D31C(v15, &qword_27D81E4A0, &unk_22813AB10);
        }

        v42 = v58;
        sub_227FCC4B4(v54, sub_227FCCD64, &qword_27D81EBA0, &qword_22813DAF0, v58);
        sub_22812D31C(v42, &qword_27D81F458, &qword_228142F50);
        v43 = v61;
        v44 = v55;
        if (*(v61 + 16))
        {
          v46 = v59;
          v45 = v60;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v62 = *v44;
          sub_22801BA08(v46, v45, v43, v31, isUniquelyReferenced_nonNull_native);
          *v44 = v62;
        }

        else
        {
          v48 = sub_228105610(v31);
          sub_227FCD584(v48, v49, v50);
        }
      }
    }
  }

  return 0;
}

unint64_t sub_227FC7FA8(uint64_t *a1, uint64_t (*a2)(void *), uint64_t *a3, uint64_t *a4)
{
  sub_228139AAC();
  a2(v10);
  v8 = sub_228139AEC();
  return sub_227FCB924(a1, v8, a3, a4);
}

uint64_t sub_227FC8044(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for SessionCache.CacheKey(255, *a1, v5, a4);
  sub_228136FCC();
  type metadata accessor for SessionCache.CacheEntry(255, v4, v5, v6);
  sub_227FEB8D0();
  sub_228137CAC();
  swift_getWitnessTable();
  sub_2281391CC();
  return sub_2281374DC();
}

uint64_t type metadata accessor for ModelBundleIdentifier(uint64_t a1)
{
  result = qword_2813C7018;
  if (!qword_2813C7018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227FC8164(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_227FC81CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_227FC8234(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_227FC829C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_227FC8304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ModelBundleIdentifier.hash(into:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v10 = type metadata accessor for ModelBundleIdentifier(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227FC8614(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 32))(v5, v12, v2);
      MEMORY[0x22AAB2060](1);
      sub_227FC86CC(&qword_27D81E920, &qword_27D81E790, &unk_228142600);
      sub_2281391EC();
      return (*(v3 + 8))(v5, v2);
    }

    else
    {
      return MEMORY[0x22AAB2060](2);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    MEMORY[0x22AAB2060](0);
    sub_227FC86CC(&qword_2813C8740, &qword_27D81E760, &qword_22813BBD0);
    sub_2281391EC();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_227FC8614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelBundleIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227FC8678(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_227FC86CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_227FC8720(uint64_t a1)
{
  v2 = type metadata accessor for ModelBundleIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_227FC87CC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22813902C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_228138FFC();
  MEMORY[0x28223BE20](v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22813901C();
  v13 = MEMORY[0x28223BE20](v12);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_18;
    }

    v19 = *(a1 + 16);
    v18 = *(a1 + 24);
    v20 = __OFSUB__(v18, v19);
    v21 = v18 - v19;
    if (!v20)
    {
      if (v21 < 7)
      {
        goto LABEL_18;
      }

LABEL_11:
      v44 = v13;
      v45 = v11;
      v41[0] = v6;
      v41[1] = v9;
      v42 = v16;
      v43 = v14;
      v46 = v2;
      if (qword_2813C8098 != -1)
      {
        swift_once();
      }

      v22 = qword_2813C8B50;
      v23 = *algn_2813C8B58;
      v24 = sub_228136EDC();
      v26 = v25;
      LOBYTE(v22) = sub_227FC9054(v22, v23, v24, v25);
      sub_227FC9210(v24, v26);
      if (v22)
      {
        if (qword_2813C8780 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_29;
      }

LABEL_18:
      sub_227FC91BC(a1, a2);
      return a1;
    }

    __break(1u);
  }

  else
  {
    if (!v17)
    {
      if (BYTE6(a2) < 7uLL)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 7)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  swift_once();
LABEL_15:
  v27 = qword_2813C8788;
  v28 = qword_2813C8790;
  sub_227FC91BC(qword_2813C8788, qword_2813C8790);
  sub_227FC9264(&qword_2813C4738, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_228138FEC();
  sub_227FC91BC(v27, v28);
  v29 = v46;
  sub_227FC92AC(v27, v28, v8);
  v46 = v29;
  sub_227FC9210(v27, v28);
  sub_228138FDC();
  sub_227FC9210(v27, v28);
  (*(v41[0] + 8))(v8, v5);
  sub_227FC9264(&qword_2813C4740, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  v30 = v42;
  result = sub_22813900C();
  if (v17)
  {
    if (v17 == 2)
    {
      v33 = *(a1 + 16);
      v32 = *(a1 + 24);
    }

    else
    {
      v33 = a1;
      v32 = a1 >> 32;
    }
  }

  else
  {
    v33 = 0;
    v32 = BYTE6(a2);
  }

  if (v32 >= 7 && v32 >= v33)
  {
    v34 = sub_228136EDC();
    v35 = v46;
    v37 = sub_227FC956C(v34, v36);
    if (v35)
    {
      (*(v43 + 8))(v30, v44);
    }

    else
    {
      v39 = v37;
      v40 = v38;
      a1 = sub_228138FAC();
      (*(v43 + 8))(v30, v44);
      sub_227FC9210(v39, v40);
    }

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_227FC8C94@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_228136D2C();
    if (v10)
    {
      v11 = sub_228136D4C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_228136D3C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_228136D2C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_228136D4C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_228136D3C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_227FC8EC4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_228103150(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_227FC9210(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_227FC8C94(v13, a3, a4, &v12);
  v10 = v4;
  sub_227FC9210(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

BOOL sub_227FC9054(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_227FC91BC(a3, a4);
          return sub_227FC8EC4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_227FC91BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_227FC9210(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_227FC9264(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227FC92AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_22813902C();
      sub_227FC9264(&qword_2813C4738, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_228138FCC();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_227FC948C(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_227FC948C(v5, v6);
  }

  sub_22813902C();
  sub_227FC9264(&qword_2813C4738, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_228138FCC();
}

uint64_t sub_227FC948C(uint64_t a1, uint64_t a2)
{
  result = sub_228136D2C();
  if (!result || (result = sub_228136D4C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_228136D3C();
      sub_22813902C();
      sub_227FC9264(&qword_2813C4738, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_228138FCC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_227FC956C(uint64_t a1, unint64_t a2)
{
  v29[5] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      v29[3] = MEMORY[0x277CC9318];
      v29[4] = MEMORY[0x277CC9300];
      v29[0] = a1;
      v29[1] = a2;
      v9 = __swift_project_boxed_opaque_existential_1(v29, MEMORY[0x277CC9318]);
      v10 = *v9;
      v11 = v9[1];
      v12 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v12 != 2)
        {
          memset(v27, 0, 14);
          v14 = v27;
          v13 = v27;
          goto LABEL_33;
        }

        v15 = *(v10 + 16);
        v16 = *(v10 + 24);
        v17 = sub_228136D2C();
        if (v17)
        {
          v18 = sub_228136D4C();
          v10 = v15 - v18;
          if (__OFSUB__(v15, v18))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v17 += v10;
        }

        v5 = __OFSUB__(v16, v15);
        v19 = v16 - v15;
        if (!v5)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v12)
      {
        v27[0] = *v9;
        LOWORD(v27[1]) = v11;
        BYTE2(v27[1]) = BYTE2(v11);
        BYTE3(v27[1]) = BYTE3(v11);
        BYTE4(v27[1]) = BYTE4(v11);
        BYTE5(v27[1]) = BYTE5(v11);
        v13 = v27 + BYTE6(v11);
        v14 = v27;
LABEL_33:
        sub_227FC98AC(v14, v13, &v28);
        v7 = v28;
        __swift_destroy_boxed_opaque_existential_1(v29);
        return v7;
      }

      v20 = v10;
      v21 = v10 >> 32;
      v19 = v21 - v20;
      if (v21 >= v20)
      {
        v17 = sub_228136D2C();
        if (!v17)
        {
LABEL_25:
          v23 = sub_228136D3C();
          if (v23 >= v19)
          {
            v24 = v19;
          }

          else
          {
            v24 = v23;
          }

          v25 = (v24 + v17);
          if (v17)
          {
            v13 = v25;
          }

          else
          {
            v13 = 0;
          }

          v14 = v17;
          goto LABEL_33;
        }

        v22 = sub_228136D4C();
        if (!__OFSUB__(v20, v22))
        {
          v17 += v20 - v22;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  if (BYTE6(a2) >= 0x1CuLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_227FC9210(a1, a2);
  v7 = sub_228138FBC();
  sub_227FC9264(&qword_27D81F3E0, MEMORY[0x277CC51E8], MEMORY[0x277CC51F0]);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51E0], v7);
  swift_willThrow();
  return v7;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_BYTE *sub_227FC98AC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_228103208(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2281032C0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_227FC9940(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_227FC9940(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_228136D5C();
  swift_allocObject();
  result = sub_228136D1C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_227FC99C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, unint64_t *a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X8>)
{
  v70 = a7;
  v62 = a5;
  v63 = a6;
  v61 = a4;
  v64 = a8;
  v11 = sub_2281392DC();
  MEMORY[0x28223BE20](v11 - 8);
  v65 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_228136EAC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  *v19 = 0;
  *(v19 + 1) = MEMORY[0x277D84F90];
  v67 = &v60 - v18;
  sub_228137D6C();
  v20 = [objc_opt_self() defaultManager];
  v21 = sub_22813927C();
  v22 = [v20 fileExistsAtPath_];

  if (!v22)
  {
    v26 = a1;
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v27 = sub_22813882C();
    __swift_project_value_buffer(v27, qword_2813C89F0);

    v28 = sub_22813880C();
    v29 = sub_2281396CC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v68[0] = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_227FCC340(v26, a2, v68);
      _os_log_impl(&dword_227FC3000, v28, v29, "config file does not exist: %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AAB28A0](v31, -1, -1);
      MEMORY[0x22AAB28A0](v30, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();
    return sub_227FE5D1C(v67, v70);
  }

  v60 = a1;
  sub_228136E4C();
  v23 = v66;
  v24 = sub_228136EBC();
  if (v23)
  {
    (*(v14 + 8))(v16, v13);
    v35 = v60;
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v36 = sub_22813882C();
    __swift_project_value_buffer(v36, qword_2813C89F0);

    v37 = v23;
    v38 = sub_22813880C();
    v39 = sub_2281396CC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v68[0] = v42;
      *v40 = 136446466;
      *(v40 + 4) = sub_227FCC340(v35, a2, v68);
      *(v40 + 12) = 2114;
      v43 = v23;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v44;
      *v41 = v44;
      _os_log_impl(&dword_227FC3000, v38, v39, "Failed to read file %{public}s and deflate binary content, error: %{public}@", v40, 0x16u);
      sub_227FE5CBC(v41, &qword_27D81E3B0, &qword_22813AA20);
      MEMORY[0x22AAB28A0](v41, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x22AAB28A0](v42, -1, -1);
      MEMORY[0x22AAB28A0](v40, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v45 = 2;
    swift_willThrow();

    return sub_227FE5D1C(v67, v70);
  }

  v33 = v24;
  v34 = v25;
  v66 = a2;
  v47 = sub_227FC87CC(v24, v25);
  v49 = v48;
  (*(v14 + 8))(v16, v13);
  sub_227FC9210(v33, v34);
  sub_2281392CC();
  v50 = v49;
  sub_2281392BC();
  v52 = v47;
  if (!v51)
  {
    v53 = v66;
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v54 = sub_22813882C();
    __swift_project_value_buffer(v54, qword_2813C89F0);

    v55 = sub_22813880C();
    v56 = sub_2281396CC();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v68[0] = v58;
      *v57 = 136446210;
      *(v57 + 4) = sub_227FCC340(v60, v53, v68);
      _os_log_impl(&dword_227FC3000, v55, v56, "Failed to parse file %{public}s as utf8 string", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x22AAB28A0](v58, -1, -1);
      MEMORY[0x22AAB28A0](v57, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v59 = 3;
    swift_willThrow();
    sub_227FC9210(v52, v50);
    return sub_227FE5D1C(v67, v70);
  }

  sub_227FCA2E8(v61, v62, v63);
  memset(v68, 0, sizeof(v68));
  v69 = 0;
  sub_228137ECC();
  sub_227FE5D1C(v67, v70);
  return sub_227FC9210(v47, v49);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_227FCA2E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227FCA330@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  return sub_228137D6C();
}

uint64_t sub_227FCA384@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_228137FBC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_227FCA420()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5060);
  __swift_project_value_buffer(v0, qword_2813C5060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B030;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "config_version";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "disallowed_word_candidates";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_228137DCC();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_228137E4C();
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray(0);
        sub_227FC755C(&qword_2813C5030, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray);
        sub_228137E8C();
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t sub_227FCA760(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = type metadata accessor for ModelBundleIdentifier(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E570, &qword_22813B1F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v16 - v12;
  sub_22813923C();
  sub_22813923C();
  sub_228139ADC();
  sub_22813923C();
  sub_228139ADC();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_22802931C(v3 + v14[13], v13, &qword_27D81E570, &qword_22813B1F0);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_228139ACC();
  }

  else
  {
    sub_227FC8304(v13, v10, type metadata accessor for ModelBundleIdentifier);
    sub_228139ACC();
    ModelBundleIdentifier.hash(into:)(a1);
    sub_227FC8720(v10);
  }

  if (*(v3 + v14[14]) != 2)
  {
    sub_228139ACC();
  }

  sub_228139ACC();
  if (*(v3 + v14[15]) != 2)
  {
    sub_228139ACC();
  }

  return sub_228139ACC();
}

uint64_t sub_227FCA9B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_227FCAA18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_227FCAA80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_227FCAAE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_227FCAB50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227FCAB98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227FCABF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227FCAC58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_227FCACB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a5;
  v36 = a6;
  v34 = a4;
  v37 = a7;
  v10 = sub_228136FCC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v15 = *(a3 + 16);
  if (a2)
  {

    v16 = sub_22812A508(a1, v14, v15, (a2 + 16), a2 + 32);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        return result;
      }

LABEL_4:
      v20 = v34;
      if (v16 < *(v34 + 16))
      {
        v22 = v35;
        v21 = v36;
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
        v24 = *(v23 - 8);
        v25 = v20 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v16;
        v26 = v37;
        sub_227FCAFD4(v25, v37, v22, v21);
        return (*(v24 + 56))(v26, 0, 1, v23);
      }

      goto LABEL_13;
    }
  }

  else if (v15)
  {
    v16 = 0;
    v29 = *(v11 + 16);
    v27 = v11 + 16;
    v28 = v29;
    v38 = *(v27 + 56);
    do
    {
      v28(v13, v14, v10);
      sub_227FCAF8C(&qword_2813C8770, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v30 = a1;
      v31 = sub_22813926C();
      result = (*(v27 - 8))(v13, v10);
      if (v31)
      {
        goto LABEL_4;
      }

      ++v16;
      v14 += v38;
      a1 = v30;
    }

    while (v15 != v16);
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
  return (*(*(v32 - 8) + 56))(v37, 1, 1, v32);
}

uint64_t sub_227FCAF8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227FCAFD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_227FCB03C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v38 = *(a4 + 16);
  v7 = *(v38 - 8);
  v37 = v7;
  v8 = *(v7 + 84);
  v36 = sub_228136F8C();
  v9 = *(v36 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(sub_228136FCC() - 8);
  v13 = v12;
  v14 = *(v7 + 64);
  if (*(v12 + 84) <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v9 + 80);
  v17 = v14 + v16;
  v18 = (v14 + v16) & ~v16;
  v19 = *(v9 + 64);
  v20 = *(v12 + 80);
  v21 = ((v19 + v20 + v18) & ~v20) + *(v12 + 64);
  if (a3 <= v15)
  {
    v23 = 0;
    v22 = a1;
  }

  else
  {
    v22 = a1;
    if (v21 <= 3)
    {
      v26 = ((a3 - v15 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
      if (HIWORD(v26))
      {
        v23 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v23 = v27;
        }

        else
        {
          v23 = 0;
        }
      }
    }

    else
    {
      v23 = 1;
    }
  }

  if (v15 < a2)
  {
    v24 = ~v15 + a2;
    if (v21 < 4)
    {
      v25 = (v24 >> (8 * v21)) + 1;
      if (v21)
      {
        v28 = v24 & ~(-1 << (8 * v21));
        bzero(v22, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *v22 = v28;
            if (v23 > 1)
            {
LABEL_52:
              if (v23 == 2)
              {
                *&v22[v21] = v25;
              }

              else
              {
                *&v22[v21] = v25;
              }

              return;
            }
          }

          else
          {
            *v22 = v24;
            if (v23 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *v22 = v28;
        v22[2] = BYTE2(v28);
      }

      if (v23 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(v22, v21);
      *v22 = v24;
      v25 = 1;
      if (v23 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v23)
    {
      v22[v21] = v25;
    }

    return;
  }

  if (v23 <= 1)
  {
    if (v23)
    {
      v22[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v23 == 2)
  {
    *&v22[v21] = 0;
    goto LABEL_33;
  }

  *&v22[v21] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v8 == v15)
  {
    v29 = v38;
    v30 = *(v37 + 56);
    v31 = v22;
    v32 = a2;
    v33 = v8;
LABEL_38:

    v30(v31, v32, v33, v29);
    return;
  }

  v31 = (&v22[v17] & ~v16);
  if (v10 == v15)
  {
    v30 = *(v9 + 56);
    v32 = a2;
    v33 = v10;
    v29 = v36;
    goto LABEL_38;
  }

  v34 = *(v13 + 56);
  v35 = &v31[v19 + v20] & ~v20;

  v34(v35, a2);
}

uint64_t sub_227FCB3DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v32 = sub_228136F8C();
  v8 = *(v32 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = sub_228136FCC();
  v12 = *(v11 - 8);
  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  v15 = *(v12 + 80);
  if (*(v12 + 84) <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 64) + v13;
  if (a2 > v16)
  {
    v18 = ((v14 + v15 + (v17 & ~v13)) & ~v15) + *(*(v11 - 8) + 64);
    v19 = 8 * v18;
    if (v18 <= 3)
    {
      v21 = ((a2 - v16 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v21))
      {
        v20 = *(a1 + v18);
        if (!v20)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v21 > 0xFF)
      {
        v20 = *(a1 + v18);
        if (!*(a1 + v18))
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v21 < 2)
      {
LABEL_30:
        if (v16)
        {
          goto LABEL_31;
        }

        return 0;
      }
    }

    v20 = *(a1 + v18);
    if (!*(a1 + v18))
    {
      goto LABEL_30;
    }

LABEL_17:
    v22 = (v20 - 1) << v19;
    if (v18 > 3)
    {
      v22 = 0;
    }

    if (v18)
    {
      if (v18 <= 3)
      {
        v23 = v18;
      }

      else
      {
        v23 = 4;
      }

      if (v23 > 2)
      {
        if (v23 == 3)
        {
          v24 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v24 = *a1;
        }
      }

      else if (v23 == 1)
      {
        v24 = *a1;
      }

      else
      {
        v24 = *a1;
      }
    }

    else
    {
      v24 = 0;
    }

    return v16 + (v24 | v22) + 1;
  }

LABEL_31:
  if (v7 == v16)
  {
    v25 = *(v6 + 48);
    v26 = a1;
    v27 = v7;
    v28 = v5;
LABEL_36:

    return v25(v26, v27, v28);
  }

  v26 = ((a1 + v17) & ~v13);
  if (v9 == v16)
  {
    v25 = *(v8 + 48);
    v27 = v9;
    v28 = v32;
    goto LABEL_36;
  }

  v30 = *(v12 + 48);
  v31 = (v26 + v14 + v15) & ~v15;

  return v30(v31);
}

uint64_t sub_227FCB6F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_227FCB758(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_227FCB7B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_227FCB818(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_228026EB4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2281398AC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

unint64_t sub_227FCB924(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v73 = &v64 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v92 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = &v64 - v12;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ED88, &unk_22813EC08);
  MEMORY[0x28223BE20](v77);
  v78 = &v64 - v13;
  v14 = type metadata accessor for ModelBundleIdentifier(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v76 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v74 = &v64 - v19;
  MEMORY[0x28223BE20](v18);
  v79 = &v64 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E570, &qword_22813B1F0);
  MEMORY[0x28223BE20](v21 - 8);
  v88 = &v64 - v22;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E578, &unk_22813B280);
  MEMORY[0x28223BE20](v86);
  v87 = &v64 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v90);
  v26 = &v64 - v25;
  v27 = -1 << *(v4 + 32);
  v28 = a2 & ~v27;
  v89 = v4 + 64;
  if ((*(v4 + 64 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
  {
    v70 = v9;
    v91 = ~v27;
    v81 = (v15 + 48);
    v69 = (v10 + 8);
    v67 = (v10 + 32);
    v30 = *a1;
    v29 = a1[1];
    v68 = (v92 + 8);
    v66 = (v92 + 32);
    v92 = *(v24 + 72);
    v31 = v89;
    v82 = a4;
    v83 = v4;
    v84 = v30;
    v85 = a3;
    v80 = v29;
    do
    {
      sub_227FC8234(*(v4 + 48) + v92 * v28, v26, a3, a4);
      v32 = *v26 == v30 && *(v26 + 1) == v29;
      if (!v32 && (sub_2281399BC() & 1) == 0)
      {
        goto LABEL_6;
      }

      v33 = *(v26 + 2) == a1[2] && *(v26 + 3) == a1[3];
      if (!v33 && (sub_2281399BC() & 1) == 0 || *(v26 + 8) != *(a1 + 8) || (*(v26 + 5) != a1[5] || *(v26 + 6) != a1[6]) && (sub_2281399BC() & 1) == 0)
      {
        goto LABEL_6;
      }

      if (*(v26 + 14) != *(a1 + 14))
      {
        goto LABEL_6;
      }

      v34 = v14;
      v35 = v90[13];
      v36 = v87;
      v37 = *(v86 + 48);
      sub_227FC8234(&v26[v35], v87, &qword_27D81E570, &qword_22813B1F0);
      sub_227FC8234(a1 + v35, v36 + v37, &qword_27D81E570, &qword_22813B1F0);
      v38 = *v81;
      if ((*v81)(v36, 1, v34) == 1)
      {
        v39 = v38(v36 + v37, 1, v34);
        v4 = v83;
        v30 = v84;
        v14 = v34;
        v29 = v80;
        a4 = v82;
        if (v39 != 1)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_227FC8234(v36, v88, &qword_27D81E570, &qword_22813B1F0);
        if (v38(v36 + v37, 1, v34) == 1)
        {
          sub_227FC8720(v88);
          a4 = v82;
          v4 = v83;
          v14 = v34;
          v30 = v84;
          v29 = v80;
LABEL_4:
          sub_22808E1F4(v36, &qword_27D81E578, &unk_22813B280);
          a3 = v85;
          goto LABEL_5;
        }

        v40 = v79;
        sub_227FEC220(v36 + v37, v79);
        v41 = v78;
        v42 = *(v77 + 48);
        sub_227FC8614(v88, v78);
        sub_227FC8614(v40, v41 + v42);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v30 = v84;
        v29 = v80;
        v71 = v34;
        if (EnumCaseMultiPayload)
        {
          v44 = v42;
          a4 = v82;
          a3 = v85;
          if (EnumCaseMultiPayload == 1)
          {
            sub_227FC8614(v41, v76);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              (*v69)(v76, v70);
              goto LABEL_48;
            }

            (*v67)(v73, v41 + v44, v70);
            sub_2281374CC();
            sub_227FCAB50(&qword_2813C8728, MEMORY[0x277D29CE0], MEMORY[0x277D29CD8]);
            LODWORD(v65) = sub_22813745C();
            v45 = v41;
            v46 = *v69;
            v47 = v70;
            (*v69)(v73, v70);
            v46(v76, v47);
            v4 = v83;
            v30 = v84;
            v48 = v88;
            if ((v65 & 1) == 0)
            {
              sub_227FC8720(v45);
              goto LABEL_50;
            }
          }

          else
          {
            v52 = swift_getEnumCaseMultiPayload();
            v45 = v41;
            v4 = v83;
            v48 = v88;
            if (v52 != 2)
            {
              goto LABEL_49;
            }
          }

          sub_227FC8720(v45);
        }

        else
        {
          v49 = v74;
          sub_227FC8614(v41, v74);
          v50 = swift_getEnumCaseMultiPayload();
          v51 = v42;
          a4 = v82;
          a3 = v85;
          if (v50)
          {
            (*v68)(v49, v75);
LABEL_48:
            v45 = v41;
            v4 = v83;
            v48 = v88;
LABEL_49:
            sub_22808E1F4(v45, &qword_27D81ED88, &unk_22813EC08);
LABEL_50:
            sub_227FC8720(v79);
            sub_227FC8720(v48);
            sub_22808E1F4(v87, &qword_27D81E570, &qword_22813B1F0);
            v14 = v71;
LABEL_5:
            v31 = v89;
            goto LABEL_6;
          }

          v59 = v72;
          (*v66)(v72, v41 + v51, v75);
          v65 = sub_22813742C();
          sub_227FCAB50(&qword_2813C8748, MEMORY[0x277D29B48], MEMORY[0x277D29B40]);
          LODWORD(v65) = sub_22813745C();
          v60 = *v68;
          v61 = v59;
          v62 = v75;
          (*v68)(v61, v75);
          v60(v74, v62);
          sub_227FC8720(v78);
          v4 = v83;
          v48 = v88;
          if ((v65 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        sub_227FC8720(v79);
        sub_227FC8720(v48);
        v14 = v71;
        v36 = v87;
      }

      sub_22808E1F4(v36, &qword_27D81E570, &qword_22813B1F0);
      v31 = v89;
      v53 = v90[14];
      v54 = v26[v53];
      v55 = *(a1 + v53);
      if (v54 == 2)
      {
        a3 = v85;
        if (v55 != 2)
        {
          goto LABEL_6;
        }
      }

      else
      {
        a3 = v85;
        if (v55 == 2 || ((v55 ^ v54) & 1) != 0)
        {
          goto LABEL_6;
        }
      }

      v56 = v90[15];
      v57 = v26[v56];
      v58 = *(a1 + v56);
      if (v57 == 2)
      {
        if (v58 == 2)
        {
          goto LABEL_54;
        }
      }

      else if (v58 != 2 && ((v58 ^ v57) & 1) == 0)
      {
LABEL_54:
        sub_22808E1F4(v26, a3, a4);
        return v28;
      }

LABEL_6:
      sub_22808E1F4(v26, a3, a4);
      v28 = (v28 + 1) & v91;
    }

    while (((*(v31 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0);
  }

  return v28;
}

unint64_t sub_227FCC340(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_227FCB818(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_228029260(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t sub_227FCC40C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_227FCC4B4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a5;
  v10 = sub_228136FCC();
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v14 = v5[1];
  v16 = v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v17 = *(v14 + 16);
  if (*v5)
  {
    v34 = v11;
    v35 = v5;
    v36 = a2;

    v18 = sub_22812A508(a1, v16, v17, (v15 + 16), v15 + 32);
    v20 = v19;
    v22 = v21;

    if ((v20 & 1) == 0)
    {
      v23 = v37;
LABEL_11:
      sub_227FCC760(v18, v22, v13);
      (*(v34 + 8))(v13, v10);
      sub_227FCCA18(v18, v36, a3, a4, v23);
      v28 = 0;
      goto LABEL_12;
    }
  }

  else if (v17)
  {
    v38 = a1;
    v35 = v5;
    v36 = a2;
    v32 = a3;
    v33 = a4;
    v18 = 0;
    v34 = v11;
    v24 = *(v11 + 16);
    v25 = *(v11 + 72);
    v26 = (v11 + 8);
    while (1)
    {
      v24(v13, v16, v10);
      sub_227FCAF8C(&qword_2813C8770, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v27 = sub_22813926C();
      (*v26)(v13, v10);
      if (v27)
      {
        break;
      }

      ++v18;
      v16 += v25;
      if (v17 == v18)
      {
        v28 = 1;
        v23 = v37;
        a3 = v32;
        a4 = v33;
        goto LABEL_12;
      }
    }

    v22 = 0;
    v23 = v37;
    a3 = v32;
    a4 = v33;
    goto LABEL_11;
  }

  v28 = 1;
  v23 = v37;
LABEL_12:
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return (*(*(v29 - 8) + 56))(v23, v28, 1, v29);
}

uint64_t sub_227FCC760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3[1];
  v7 = *(v6 + 16);
  v8 = *v3;
  if (!*v3)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    return sub_227FCC8D8(a1, a3);
  }

  swift_beginAccess();
  if ((*(v8 + 16) & 0x3FLL) == (*(v8 + 24) & 0x3FLL))
  {
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (v7 <= MEMORY[0x22AAB0210]())
  {
LABEL_16:
    sub_227FCC8D8(a1, a3);
    return sub_228128E8C(sub_228129FD8);
  }

  result = swift_isUniquelyReferenced_native();
  v11 = *v3;
  if ((result & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = sub_228137C7C();

    *v3 = v12;
    v11 = v12;
  }

  if (v11)
  {

    result = sub_228129134(a2, (v11 + 16), v11 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_2281298F4(a1, a1 + 1, v6, (v11 + 16), v11 + 32);

      return sub_227FCC8D8(a1, a3);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_227FCC8D8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_227FCC9DC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_228136FCC();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_227FCCA18@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v11);
    v11 = result;
  }

  v13 = *(v11 + 16);
  if (v13 <= a1)
  {
    __break(1u);
  }

  else
  {
    v14 = v13 - 1;
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
    v16 = *(v15 + 72);
    v17 = v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v16 * a1;
    result = sub_227FCCD78(v17, a5, a3, a4);
    if (v16 > 0 || v17 >= v17 + v16 + v16 * (v14 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v16)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v11 + 16) = v14;
    *v5 = v11;
  }

  return result;
}

void *sub_227FCCB58(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size_1(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_227FCCD78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_227FCCDE0(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v8 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = v51 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v10 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = v51 - v11;
  v12 = type metadata accessor for ModelBundleIdentifier(0);
  v65 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v60 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v67 = v51 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E570, &qword_22813B1F0);
  MEMORY[0x28223BE20](v16 - 8);
  v66 = v51 - v17;
  v69 = a3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = MEMORY[0x28223BE20](v18);
  v21 = a1;
  v23 = v51 - v22;
  v24 = a2 + 64;
  v25 = -1 << *(a2 + 32);
  v26 = (v21 + 1) & ~v25;
  if ((*(a2 + 64 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
  {
    v59 = v10;
    v27 = ~v25;
    v28 = v21;
    v62 = v20;
    v29 = sub_22813980C();
    v21 = v28;
    v68 = v27;
    v64 = (v29 + 1) & v27;
    v30 = *(v62 + 72);
    v61 = v65 + 6;
    v54 = (v8 + 32);
    v53 = v8 + 8;
    v52 = (v59 + 32);
    v51[1] = v59 + 8;
    v65 = a4;
    v59 = v12;
    v62 = v30;
    v63 = a2 + 64;
    do
    {
      v31 = v21;
      v32 = v30 * v26;
      sub_22802931C(*(a2 + 48) + v30 * v26, v23, v69, a4);
      sub_228139AAC();
      sub_22813923C();
      sub_22813923C();
      sub_228139ADC();
      sub_22813923C();
      sub_228139ADC();
      v33 = v66;
      sub_22802931C(&v23[v18[13]], v66, &qword_27D81E570, &qword_22813B1F0);
      if ((*v61)(v33, 1, v12) == 1)
      {
        sub_228139ACC();
        goto LABEL_14;
      }

      v34 = v67;
      sub_227FC8304(v33, v67, type metadata accessor for ModelBundleIdentifier);
      sub_228139ACC();
      sub_227FC8614(v34, v60);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          MEMORY[0x22AAB2060](2);
          goto LABEL_13;
        }

        v36 = v57;
        v37 = v58;
        (*v54)(v57, v60, v58);
        MEMORY[0x22AAB2060](1);
        sub_227FC8678(&qword_27D81E920, &qword_27D81E790, &unk_228142600);
        sub_2281391EC();
        v38 = &v71;
      }

      else
      {
        v36 = v55;
        v37 = v56;
        (*v52)(v55, v60, v56);
        MEMORY[0x22AAB2060](0);
        sub_227FC8678(&qword_2813C8740, &qword_27D81E760, &qword_22813BBD0);
        sub_2281391EC();
        v38 = &v70;
      }

      v39 = v36;
      v12 = v59;
      (**(v38 - 32))(v39, v37);
LABEL_13:
      sub_227FC8720(v67);
LABEL_14:
      if (v23[v18[14]] != 2)
      {
        sub_228139ACC();
      }

      sub_228139ACC();
      if (v23[v18[15]] != 2)
      {
        sub_228139ACC();
      }

      sub_228139ACC();
      v40 = sub_228139AEC();
      a4 = v65;
      result = sub_2280292BC(v23, v69, v65);
      v41 = v40 & v68;
      v21 = v31;
      if (v31 >= v64)
      {
        v30 = v62;
        if (v41 < v64)
        {
          v24 = v63;
          goto LABEL_4;
        }

        if (v31 >= v41)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v30 = v62;
        if (v41 >= v64 || v31 >= v41)
        {
LABEL_24:
          v42 = *(a2 + 48);
          result = v42 + v30 * v31;
          if (v30 * v31 < v32 || result >= v42 + v32 + v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v21 = v31;
            v24 = v63;
          }

          else
          {
            v43 = v30 * v31 == v32;
            v24 = v63;
            if (!v43)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v21 = v31;
            }
          }

          v44 = *(a2 + 56);
          v45 = v44 + 24 * v21;
          v46 = (v44 + 24 * v26);
          if (v21 != v26 || v45 >= v46 + 24)
          {
            v47 = *v46;
            *(v45 + 16) = *(v46 + 2);
            *v45 = v47;
            v21 = v26;
          }

          goto LABEL_4;
        }
      }

      v24 = v63;
LABEL_4:
      v26 = (v26 + 1) & v68;
    }

    while (((*(v24 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0);
  }

  *(v24 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v21) - 1;
  v48 = *(a2 + 16);
  v49 = __OFSUB__(v48, 1);
  v50 = v48 - 1;
  if (v49)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v50;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_227FCD584(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return v3;
}

uint64_t PriorityModelSession.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm_11((v0 + 16));

  return swift_deallocClassInstance();
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_0(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_1(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_2(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_3(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_4(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_5(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_6(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_7(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_8(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_9(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_10(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_11(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_12(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_13(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_14(void *a1)
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

uint64_t LLMUrgencyClassifier.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_227FCDB1C()
{
  sub_227FC8720(v0 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_modelBundleIdentifier);
  __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_sessionInfo));
  v1 = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_generativeModelSessionConfiguration;
  v2 = sub_22813791C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model));
  v3 = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_samplingParameters;
  v4 = sub_2281377CC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_promptRunner));

  return swift_deallocClassInstance();
}

uint64_t ClassificationConfiguration.__deallocating_deinit()
{
  sub_227FCDD44(v0 + *(*v0 + 96), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);

  return swift_deallocClassInstance();
}

uint64_t sub_227FCDD44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227FCDDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_228137D7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_227FCDF00(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FCE000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_228137D7C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_227FCE08C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FCE13C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_227FCE244@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2281392AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_227FCE284()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227FCE2C4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_227FCE2E0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *sub_227FCE2F8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_227FCE310()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227FCE38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SummarizationSession.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_227FCE44C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SummarizationSession.Configuration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_227FCE584()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227FCE5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E570, &qword_22813B1F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FCE698(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E570, &qword_22813B1F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FCE758()
{
  __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_227FCE790()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227FCE7D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_227FCE7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228136FCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FCE88C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_228136FCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FCE930()
{

  return MEMORY[0x2821FE8E8](v0, 76, 7);
}

uint64_t sub_227FCE978(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_227FCE988()
{
  v1 = (type metadata accessor for ClassificationRequestHandler.RequestInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_228136FCC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_227FCEAE0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return sub_228137D6C();
}

void *sub_227FCEB48(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_228137D7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FCEBFC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ModelBundleIdentifier(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_22813791C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_227FCED20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ModelBundleIdentifier(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_22813791C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

unint64_t sub_227FCEE44@<X0>(unint64_t *a1@<X8>)
{
  result = GMSModelInfo.userDefinedFields.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227FCEE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_228138CFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_228136F8C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 56);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_227FCEF9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_228138CFC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_228136F8C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 56);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_227FCF0C4()
{
  v1 = *(type metadata accessor for ModelBundleIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v6 = &qword_27D81E790;
    v7 = &unk_228142600;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_6;
    }

    v6 = &qword_27D81E760;
    v7 = &qword_22813BBD0;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  (*(*(v8 - 8) + 8))(v0 + v3, v8);
LABEL_6:
  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 47) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm_3((v0 + v9));

  return MEMORY[0x2821FE8E8](v0, v10 + 8, v2 | 7);
}

uint64_t sub_227FCF218(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_227FCF244()
{
  v1 = *(type metadata accessor for ModelBundleIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm_3((v0 + 16));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v6 = &qword_27D81E790;
    v7 = &unk_228142600;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_6;
    }

    v6 = &qword_27D81E760;
    v7 = &qword_22813BBD0;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  (*(*(v8 - 8) + 8))(v0 + v3, v8);
LABEL_6:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

_OWORD *sub_227FCF784(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_227FCF794(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C0, &unk_22813C3A0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_227FCF924(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C0, &unk_22813C3A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_227FCFAB8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *sub_227FCFAD4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_227FCFAF4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_227FCFB14@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t _s16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigV13SanitizerTypeOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigV13SanitizerTypeOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_227FCFD58(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227FCFD74(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_227FCFD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_228137D7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_227FCFE50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_228137D7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_227FCFF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_228137D7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A0, &unk_22813C6D0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_227FD0010(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_228137D7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A0, &unk_22813C6D0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_227FD0118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FD01C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_228137D7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD0268(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_228137D7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A8, &unk_22813C6E0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_227FD0414(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_228137D7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A8, &unk_22813C6E0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_227FD05CC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_227FD06FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_227FD082C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FD08D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_228137D7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD0B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_22813899C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_227FD0BA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22813899C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_227FD0C18()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_227FD0CD0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_227FD0D10()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227FD0D98()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECA0, &qword_22813E0D8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_227FD0DD8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 32));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_227FD0EC8()
{

  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_227FD0F08()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227FD0F5C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_227FD0FEC()
{
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_227FD1030()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227FD1068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB8, &qword_22813E120);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_227FD1134(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB8, &qword_22813E120);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_227FD11FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22813797C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FD12A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_22813797C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD13D0(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  result = sub_228089024(*(a2 + 32), *(a2 + 40), *(a2 + 48));
  *(a2 + 32) = v3;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void sub_227FD1408(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (*(result + 48) == 1)
  {
    v4 = *(result + 32);
    v3 = *(result + 40);
    sub_228088FC8(v4, v3, 1u);
  }

  else
  {
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v3;
}

void sub_227FD1468(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (*(result + 48) == 2)
  {
    v4 = *(result + 32);
    v3 = *(result + 40);
    sub_228088FC8(v4, v3, 2u);
  }

  else
  {
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_227FD14C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FD1574(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_228137D7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD1618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FD16C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_228137D7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD1780()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227FD1888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137A9C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FD1934(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_228137A9C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD19F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_228138E9C();
  *a1 = result;
  return result;
}

uint64_t sub_227FD1C38()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227FD1C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_228138B8C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_227FD1CE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_228138B8C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_227FD1D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_2281389DC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_227FD1DC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2281389DC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_227FD1E70()
{

  return MEMORY[0x2821FE8E8](v0, 76, 7);
}

uint64_t sub_227FD1EB8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 22);

  return MEMORY[0x2821FE8E8](v0, 248, 7);
}

uint64_t sub_227FD1F30()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227FD1F84()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227FD1FBC()
{
  __swift_destroy_boxed_opaque_existential_1Tm_9((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_227FD1FF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227FD207C()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227FD20C0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_227FD20D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227FD2114()
{
  v1 = (type metadata accessor for SummarizationParameters(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64) + 7;
  v5 = (v2 + ((v4 + v3) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v2;
  v11 = (v4 + v5) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + 16));
  v6 = v0 + v3;

  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + v3 + 40));
  v7 = v1[11];
  v8 = sub_228137A9C();
  v9 = *(*(v8 - 8) + 8);
  v9(v6 + v7, v8);

  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + v5 + 40));
  v9(v0 + v5 + v1[11], v8);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v2 | 7);
}

uint64_t sub_227FD228C()
{
  v1 = (type metadata accessor for SummarizationParameters(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v11 = *(*v1 + 64);
  v4 = (v11 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v2 + v4 + 40) & ~v2;

  v6 = v0 + v3;

  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + v3 + 40));
  v7 = v1[11];
  v8 = sub_228137A9C();
  v9 = *(*(v8 - 8) + 8);
  v9(v6 + v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + v4));

  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + v5 + 40));
  v9(v0 + v5 + v1[11], v8);

  return MEMORY[0x2821FE8E8](v0, v5 + v11, v2 | 7);
}

uint64_t sub_227FD23F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C0, &unk_22813C3A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_227FD2530(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C0, &unk_22813C3A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_227FD2754(uint64_t a1, uint64_t a2)
{
  v4 = sub_228138AAC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_227FD27C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_228138AAC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_227FD2844()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227FD2958()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227FD2990()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227FD2B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228136F8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FD2BD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_228136F8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD331C(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 9);
  v4 = *a1;
  v5 = v1;
  v6 = v2;
  return sub_2280D55AC(&v4);
}

uint64_t sub_227FD3444()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_227FD3490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FD353C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_228137D7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD35E0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_227FD368C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_228137D7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD376C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_227FD37D8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_227FD3834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ModelBundleIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_227FD394C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ModelBundleIdentifier(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_227FD3ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_228137D7C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void *sub_227FD3B48(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_228137D7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD3BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_228137D7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAC8, &qword_22813D908);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_227FD3CEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_228137D7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAC8, &qword_22813D908);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_227FD3E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F268, &qword_228142CB0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_227FD3F3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F268, &qword_228142CB0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_227FD4094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_228137D7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB8, &qword_2281416A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_227FD41EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_228137D7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB8, &qword_2281416A0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_227FD4350(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_228137D7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_227FD447C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_228137D7C();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 24)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *sub_227FD45AC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_227FD46D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_227FD4808(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_227FD4938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FD49E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_228137D7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD4A88()
{
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_227FD4AC0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227FD4B00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_227FD4B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228136FCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FD4BBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_228136FCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD4C60()
{
  v1 = (type metadata accessor for SummarizationRequestHandler.RequestInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_228136FCC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_227FD4D80()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_227FD4ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22813877C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_227FD4F8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22813877C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_227FD5048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_2281387AC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_227FD50C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_2281387AC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_227FD5148()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227FD5180()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227FD51C0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_227FD51D8()
{
  __swift_destroy_boxed_opaque_existential_1Tm_14((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_227FD5218@<X0>(uint64_t a1@<X8>)
{
  if (qword_2813C7028 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ModelBundleIdentifier(0);
  v3 = __swift_project_value_buffer(v2, qword_2813C8AD8);
  return sub_227FCAA18(v3, a1, type metadata accessor for ModelBundleIdentifier);
}

void sub_227FD52A8(void *a1, uint64_t a2)
{
  v3 = v2;
  v99 = a2;
  v80 = *v2;
  v5 = sub_2281373DC();
  MEMORY[0x28223BE20](v5 - 8);
  v82 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2281377FC();
  v85 = *(v7 - 8);
  v86 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v83 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v84 = &v68 - v10;
  v11 = type metadata accessor for ModelBundleIdentifier(0);
  v12 = MEMORY[0x28223BE20](v11);
  v87 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v88 = &v68 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - v16;
  v18 = sub_22813759C();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22813791C();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v89 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v68 - v25;
  sub_22813758C();
  v81 = v20;
  sub_2281378CC();
  v27 = OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_generativeModelSessionConfiguration;
  v90 = v22;
  v28 = *(v22 + 32);
  v79 = v26;
  v91 = v21;
  v28(&v2[OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_generativeModelSessionConfiguration], v26, v21);
  if (qword_2813C7028 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v11, qword_2813C8AD8);
  sub_227FCAA18(v29, v17, type metadata accessor for ModelBundleIdentifier);
  v30 = OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_modelBundleIdentifier;
  sub_227FCAA18(v17, &v2[OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_modelBundleIdentifier], type metadata accessor for ModelBundleIdentifier);
  v31 = OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_sessionInfo;
  sub_227FDB600(a1, &v2[OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_sessionInfo]);
  v32 = v99;
  sub_227FDB4D4(v99, &v93, &qword_27D81E348, &qword_22813A7F0);
  if (!AssociatedTypeWitness)
  {
    v69 = v31;
    v70 = v30;
    sub_227FDB53C(&v93, &qword_27D81E348, &qword_22813A7F0);
    v74 = sub_22813755C();
    v77 = v17;
    v35 = v27;
    v36 = v88;
    sub_227FCAA18(v17, v88, type metadata accessor for ModelBundleIdentifier);
    v37 = *(v90 + 16);
    v76 = v35;
    v75 = v3;
    v72 = v90 + 16;
    v71 = v37;
    v37(v89, &v3[v35], v91);
    v38 = a1[3];
    v39 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v38);
    v73 = (*(v39 + 8))(v38, v39);
    v41 = v40;
    v43 = a1[3];
    v42 = a1[4];
    v78 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v43);
    v44 = *(v42 + 24);
    v45 = v42;
    v46 = v36;
    v44(v43, v45);
    v47 = v87;
    sub_227FCAA18(v36, v87, type metadata accessor for ModelBundleIdentifier);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      v55 = v89;
      sub_2281378EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E338, &qword_22813F770);
      sub_2281375BC();
      *(swift_allocObject() + 16) = xmmword_22813A4B0;
      sub_2281380CC();
      sub_2281380BC();
      sub_22813809C();

      sub_22813758C();
      v56 = v84;
      v46 = v88;
      sub_2281377EC();
      v58 = v85;
      v57 = v86;
      (*(v85 + 16))(v83, v56, v86);
      v59 = v74;
      v60 = v55;
      v61 = sub_22813752C();
      (*(v58 + 8))(v56, v57);
      v49 = v60;
    }

    else
    {
      v48 = v74;
      sub_227FDB474(v47, type metadata accessor for ModelBundleIdentifier);
      v49 = v89;
      v50 = v92;
      sub_2280F94B0(v73, v41, v82);
      v92 = v50;
      if (v50)
      {

        sub_227FDB53C(v99, &qword_27D81E348, &qword_22813A7F0);
        v51 = *(v90 + 8);
        v52 = v49;
        v53 = v91;
        v51(v52, v91);
        sub_227FDB474(v46, type metadata accessor for ModelBundleIdentifier);
        sub_227FDB474(v77, type metadata accessor for ModelBundleIdentifier);
        v54 = v75;
        sub_227FDB474(&v75[v70], type metadata accessor for ModelBundleIdentifier);
        __swift_destroy_boxed_opaque_existential_1Tm(&v54[v69]);
        v51(&v54[v76], v53);
        swift_deallocPartialClassInstance();
LABEL_14:
        v34 = v78;
        goto LABEL_15;
      }

      v71(v79, v49, v91);
      v59 = v48;
      v61 = sub_22813753C();
    }

    v62 = v91;
    (*(v90 + 8))(v49, v91);
    sub_227FDB474(v46, type metadata accessor for ModelBundleIdentifier);
    v63 = v75;
    v64 = &v75[OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_promptRunner];
    v65 = type metadata accessor for PromptManager(0);
    v64[3] = v65;
    v64[4] = &off_2818510E0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
    v67 = v77;
    sub_227FCAA18(v77, boxed_opaque_existential_1 + *(v65 + 20), type metadata accessor for ModelBundleIdentifier);
    v71(boxed_opaque_existential_1 + *(v65 + 24), &v63[v76], v62);
    *boxed_opaque_existential_1 = v61;
    v97 = v59;
    v98 = &off_283B5EC90;
    *&v96 = v61;

    sub_227FDB53C(v99, &qword_27D81E348, &qword_22813A7F0);
    sub_227FDB474(v67, type metadata accessor for ModelBundleIdentifier);
    sub_227FCE2C4(&v96, &v63[OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_model]);
    goto LABEL_14;
  }

  sub_227FCE2C4(&v93, &v96);

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    sub_227FDB600(&v96, &v2[OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_promptRunner]);
    v33 = __swift_project_boxed_opaque_existential_1(&v96, v97);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *__swift_allocate_boxed_opaque_existential_1(&v93) = *v33;

    sub_227FDB53C(v32, &qword_27D81E348, &qword_22813A7F0);
    sub_227FDB474(v17, type metadata accessor for ModelBundleIdentifier);
    sub_227FCE2C4(&v93, &v2[OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_model]);
    __swift_destroy_boxed_opaque_existential_1Tm(&v96);
    v34 = a1;
LABEL_15:
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    return;
  }

  __break(1u);
}

uint64_t sub_227FD5DB8(uint64_t a1)
{
  v2[53] = a1;
  v2[54] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E308, &unk_22813F910);
  v2[55] = swift_task_alloc();
  v3 = sub_2281378AC();
  v2[56] = v3;
  v2[57] = *(v3 - 8);
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v4 = sub_22813771C();
  v2[61] = v4;
  v2[62] = *(v4 - 8);
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E310, &qword_22813A7C0);
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v5 = sub_22813882C();
  v2[70] = v5;
  v2[71] = *(v5 - 8);
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v2[76] = type metadata accessor for ModelBundleIdentifier(0);
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v6 = sub_2281377CC();
  v2[79] = v6;
  v2[80] = *(v6 - 8);
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v7 = sub_22813783C();
  v2[95] = v7;
  v2[96] = *(v7 - 8);
  v2[97] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E318, &qword_22813A7C8);
  v2[98] = swift_task_alloc();
  v8 = sub_2281375BC();
  v2[99] = v8;
  v2[100] = *(v8 - 8);
  v2[101] = swift_task_alloc();
  v9 = sub_2281373DC();
  v2[102] = v9;
  v2[103] = *(v9 - 8);
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v2[106] = swift_task_alloc();
  v2[107] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v10 = sub_22813716C();
  v2[110] = v10;
  v2[111] = *(v10 - 8);
  v2[112] = swift_task_alloc();
  v2[113] = swift_task_alloc();
  v11 = sub_22813713C();
  v2[114] = v11;
  v2[115] = *(v11 - 8);
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0);
  v2[118] = swift_task_alloc();
  v2[119] = type metadata accessor for GMSModelInfo(0);
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v2[123] = swift_task_alloc();
  v2[124] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FD6494, 0, 0);
}

uint64_t sub_227FD6494()
{
  sub_227FDB600(v0[53] + 56, (v0 + 2));
  if (sub_228060440(v0 + 2))
  {
    v1 = v0[118];
    v2 = v0[54];
    v3 = OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_modelBundleIdentifier;
    v0[125] = OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_modelBundleIdentifier;
    v4 = sub_2281376EC();
    (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
    if (qword_2813C73E8 != -1)
    {
      swift_once();
    }

    v5 = swift_task_alloc();
    v0[126] = v5;
    *v5 = v0;
    v5[1] = sub_227FD697C;
    v6 = v0[124];
    v7 = v0[118];

    return sub_228011668(v6, v2 + v3, (v0 + 2), v7);
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = 16;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    v10 = sub_227FF96D4(0, 0xD000000000000096, 0x80000002281439D0, 73, sub_227FDB3C0, v9);
    sub_227FDB3CC();
    swift_allocError();
    *v11 = 16;
    *(v11 + 8) = v10;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_227FD697C()
{
  v1 = *(*v0 + 944);

  sub_227FDB53C(v1, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_227FD6AA4, 0, 0);
}

uint64_t sub_227FD6AA4()
{
  v118 = v0;
  v1 = GMSModelInfo.supportedLanguages.getter();
  if (v1)
  {
    v114 = v0;
    v115 = *(v1 + 2);
    if (!v115)
    {
LABEL_33:

      if (qword_2813C49E0[0] != -1)
      {
        goto LABEL_55;
      }

      goto LABEL_34;
    }

    v2 = 0;
    v3 = v0[115];
    v110 = &v1[(*(v3 + 80) + 32) & ~*(v3 + 80)];
    v111 = v3;
    v109 = (v0[111] + 8);
    v112 = (v3 + 8);
    v113 = v1;
    while (1)
    {
      if (v2 >= *(v1 + 2))
      {
        __break(1u);
LABEL_55:
        swift_once();
LABEL_34:
        __swift_project_value_buffer(v0[70], qword_2813C8A20);
        v60 = sub_22813880C();
        v61 = sub_2281396DC();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v117[0] = v63;
          *v62 = 136446210;
          if (qword_2813C8758 != -1)
          {
            swift_once();
          }

          v64 = v0[124];
          v65 = v0[112];
          v66 = v114[111];
          v67 = v114[110];
          sub_228139B6C();
          sub_227FDB150(&qword_27D81E340, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
          v68 = sub_22813998C();
          v70 = v69;
          (*(v66 + 8))(v65, v67);
          v0 = v114;
          v71 = sub_227FCC340(v68, v70, v117);

          *(v62 + 4) = v71;
          _os_log_impl(&dword_227FC3000, v60, v61, "Factual consistency classifier does not support the input language %{public}s.", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v63);
          MEMORY[0x22AAB28A0](v63, -1, -1);
          MEMORY[0x22AAB28A0](v62, -1, -1);

          v72 = v64;
        }

        else
        {
          v73 = v0[124];

          v72 = v73;
        }

        sub_227FDB474(v72, type metadata accessor for GMSModelInfo);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
        v116 = 3;
LABEL_40:

        v74 = v0[1];

        return v74(0, v116);
      }

      (*(v111 + 16))(v0[117], &v110[*(v111 + 72) * v2], v0[114]);
      if (qword_2813C8758 != -1)
      {
        swift_once();
      }

      v10 = v0[113];
      v11 = v0[110];
      v12 = v0[109];
      sub_228139B6C();
      sub_22813715C();
      (*v109)(v10, v11);
      sub_22813710C();
      v13 = sub_22813701C();
      v14 = *(v13 - 8);
      v15 = *(v14 + 48);
      if (v15(v12, 1, v13) == 1)
      {
        v4 = v0[117];
        v5 = v0[116];
        v6 = v0[114];
        v7 = v0[109];
        v8 = *v112;
        (*v112)(v5, v6);
        v8(v4, v6);
        v0 = v114;
        v9 = v7;
LABEL_5:
        sub_227FDB53C(v9, &qword_27D81E328, &qword_2281402C0);
        goto LABEL_6;
      }

      v16 = v0[109];
      v17 = v0[108];
      v107 = sub_228136FFC();
      v108 = v18;
      v19 = *(v14 + 8);
      v19(v16, v13);
      sub_22813710C();
      if (v15(v17, 1, v13) == 1)
      {
        v20 = v0[117];
        v21 = v0[116];
        v22 = v0[114];
        v23 = v0[108];

        v24 = *v112;
        (*v112)(v21, v22);
        v24(v20, v22);
        v9 = v23;
        goto LABEL_5;
      }

      v25 = v0[108];
      v26 = sub_228136FFC();
      v28 = v27;
      v19(v25, v13);
      if (v107 == v26 && v108 == v28)
      {
      }

      else
      {
        v29 = sub_2281399BC();

        if ((v29 & 1) == 0)
        {
          v57 = v114[117];
          v58 = v114[114];
          v59 = *v112;
          (*v112)(v114[116], v58);
          v59(v57, v58);
          v0 = v114;
          goto LABEL_6;
        }
      }

      v0 = v114;
      v30 = v114[107];
      sub_22813712C();
      v31 = sub_2281370BC();
      v32 = *(v31 - 8);
      v33 = *(v32 + 48);
      v34 = v33(v30, 1, v31);
      v35 = v114[107];
      if (v34 == 1)
      {
        sub_227FDB53C(v114[107], &qword_27D81E320, &unk_22813A7D0);
        v36 = 0;
        v37 = 0;
      }

      else
      {
        v36 = sub_228136FFC();
        v37 = v38;
        (*(v32 + 8))(v35, v31);
      }

      v39 = v114[106];
      sub_22813712C();
      v40 = v33(v39, 1, v31);
      v41 = v114[106];
      if (v40 == 1)
      {
        break;
      }

      v43 = sub_228136FFC();
      v42 = v44;
      (*(v32 + 8))(v41, v31);
      if (!v37)
      {
        goto LABEL_30;
      }

      if (!v42)
      {
LABEL_29:
        v50 = v114[117];
        v51 = v114[116];
        v52 = v114[114];

        v53 = *v112;
        (*v112)(v51, v52);
        v53(v50, v52);
        v0 = v114;
        goto LABEL_6;
      }

      v45 = v114[117];
      v46 = v114[116];
      v47 = v114[114];
      if (v36 == v43 && v37 == v42)
      {

        v76 = *v112;
        (*v112)(v46, v47);
        v76(v45, v47);
LABEL_44:

        goto LABEL_45;
      }

      v48 = sub_2281399BC();

      v49 = *v112;
      (*v112)(v46, v47);
      v49(v45, v47);
      if (v48)
      {
        goto LABEL_44;
      }

LABEL_6:
      ++v2;
      v1 = v113;
      if (v115 == v2)
      {
        goto LABEL_33;
      }
    }

    sub_227FDB53C(v114[106], &qword_27D81E320, &unk_22813A7D0);
    if (v37)
    {
      goto LABEL_29;
    }

    v42 = 0;
LABEL_30:
    v54 = v114[117];
    v55 = v114[114];
    v56 = *v112;
    (*v112)(v114[116], v55);
    v56(v54, v55);
    v0 = v114;
    if (!v42)
    {
      goto LABEL_44;
    }

    goto LABEL_6;
  }

LABEL_45:
  v77 = v0[105];
  v78 = v0[54];
  v79 = *(v78 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_sessionInfo + 24);
  v80 = *(v78 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_sessionInfo + 32);
  __swift_project_boxed_opaque_existential_1((v78 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_sessionInfo), v79);
  v81 = (*(v80 + 8))(v79, v80);
  sub_2280F94B0(v81, v82, v77);
  v83 = v0[105];
  v84 = v0[104];
  v85 = v0[103];
  v86 = v0[102];
  v87 = v0[100];
  v88 = v0[99];
  v89 = v0[98];

  (*(v85 + 16))(v84, v83, v86);
  sub_2281375AC();
  if ((*(v87 + 48))(v89, 1, v88) == 1)
  {
    sub_227FDB53C(v0[98], &qword_27D81E318, &qword_22813A7C8);
    if (qword_2813C49E0[0] != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v0[70], qword_2813C8A20);
    v90 = sub_22813880C();
    v91 = sub_2281396DC();
    v92 = os_log_type_enabled(v90, v91);
    v93 = v0[124];
    v94 = v0[105];
    v95 = v0[103];
    v96 = v0[102];
    if (v92)
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_227FC3000, v90, v91, "Factual consistency classifier model bundle not found", v97, 2u);
      MEMORY[0x22AAB28A0](v97, -1, -1);
    }

    (*(v95 + 8))(v94, v96);
    sub_227FDB474(v93, type metadata accessor for GMSModelInfo);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v116 = 0;
    goto LABEL_40;
  }

  v98 = v0[101];
  v99 = v0[100];
  v100 = v0[99];
  v101 = v0[54];
  (*(v99 + 32))(v98, v0[98], v100);
  __swift_project_boxed_opaque_existential_1((v101 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_promptRunner), *(v101 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_promptRunner + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E338, &qword_22813F770);
  v102 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  v103 = swift_allocObject();
  v0[127] = v103;
  *(v103 + 16) = xmmword_22813A4B0;
  (*(v99 + 16))(v103 + v102, v98, v100);
  v104 = swift_task_alloc();
  v0[128] = v104;
  *v104 = v0;
  v104[1] = sub_227FD7C04;
  v105 = v0[97];
  v106 = v0[53];

  return sub_22800415C(v105, v106, v103);
}

uint64_t sub_227FD7C04()
{
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v2 = sub_227FDA6AC;
  }

  else
  {
    v2 = sub_227FD7D38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227FD7D38()
{
  v400 = v0;
  if (qword_2813C7028 != -1)
  {
    swift_once();
  }

  v1 = v0[78];
  v384 = __swift_project_value_buffer(v0[76], qword_2813C8AD8);
  sub_227FCAA18(v384, v1, type metadata accessor for ModelBundleIdentifier);
  v2 = objc_opt_self();
  v3 = off_2785F1000;

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v390 = byte_2813C4629;
  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v4 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v4 = &qword_2813C76F8;
  }

  v5 = *(*v4 + 1352);
  v6 = *(*v4 + 1360);
  v7 = *(*v4 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v392 = byte_2813C4638;
  if (byte_2813C4638 == 1)
  {
    v6(&v398, v7);

    v5 = v398;
  }

  else
  {
  }

  sub_2280F8BF4(v0[78], 2, 0, v5, 0, v0[94]);

  if (v390)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v8 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v8 = &qword_2813C76F8;
  }

  v9 = *v8;
  v10 = *(*v8 + 32);
  v11 = *(*v8 + 40);
  v12 = *(*v8 + 2208);

  v388 = v2;
  if (v392)
  {
    v11(&v398, v12);

    if ((v398 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {

    if (!v10)
    {
LABEL_30:
      v341 = *(v0[80] + 8);
      v341(v0[94], v0[79]);

      goto LABEL_83;
    }
  }

  v13 = *(v9 + 72);
  v14 = *(v9 + 80);
  v15 = *(v9 + 2208);

  if (v392)
  {
    v14(&v398, v15);

    if ((v398 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {

    if ((v13 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v0[70], qword_2813C8A20);
  if (qword_2813C49C8 != -1)
  {
    swift_once();
  }

  v17 = v16;
  if ((byte_2813C49D0 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v0[70], qword_2813C4990);
  }

  v378 = v16;
  v18 = v0[94];
  v19 = v0[93];
  v20 = v0[92];
  v21 = v0[91];
  v22 = v0[90];
  v363 = v0[89];
  v371 = v0[88];
  v23 = v0[80];
  v24 = v0[79];
  v356 = *(v0[71] + 16);
  v356(v0[75], v17, v0[70]);
  sub_227FDB600((v0 + 2), (v0 + 17));
  v25 = *(v23 + 16);
  v25(v19, v18, v24);
  v25(v20, v18, v24);
  v25(v21, v18, v24);
  v25(v22, v18, v24);
  v25(v363, v18, v24);
  v25(v371, v18, v24);
  v26 = sub_22813880C();
  v27 = sub_2281396BC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v364 = swift_slowAlloc();
    v398 = v364;
    *v28 = 136447746;
    v29 = v0[20];
    v30 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v29);
    v31 = (*(v30 + 16))(v29, v30);
    v33 = v32;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
    v34 = sub_227FCC340(v31, v33, &v398);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2082;
    v35 = sub_22813776C();
    v36 = v0[93];
    v37 = v0[80];
    v38 = v0[79];
    v372 = v26;
    if (v39)
    {
      v341 = *(v37 + 8);
      v341(v36, v38);
      v40 = 0xE300000000000000;
      v41 = 7104878;
    }

    else
    {
      v0[52] = v35;
      v52 = sub_2281392EC();
      v40 = v53;
      v341 = *(v37 + 8);
      v341(v36, v38);
      v41 = v52;
    }

    v54 = v0[69];
    v55 = v0[68];
    v56 = v0[61];
    v57 = v0[62];
    v58 = sub_227FCC340(v41, v40, &v398);

    *(v28 + 14) = v58;
    *(v28 + 22) = 2082;
    sub_2281377BC();
    sub_227FDB4D4(v54, v55, &qword_27D81E310, &qword_22813A7C0);
    if ((*(v57 + 48))(v55, 1, v56) == 1)
    {
      sub_227FDB53C(v0[68], &qword_27D81E310, &qword_22813A7C0);
      v59 = 0xE300000000000000;
      v60 = 7104878;
    }

    else
    {
      v61 = v0[65];
      v62 = v0[64];
      v63 = v0[61];
      v64 = v0[62];
      (*(v64 + 32))(v61, v0[68], v63);
      (*(v64 + 16))(v62, v61, v63);
      v60 = sub_2281392EC();
      v59 = v65;
      (*(v64 + 8))(v61, v63);
    }

    v66 = v0[92];
    v67 = v0[79];
    sub_227FDB53C(v0[69], &qword_27D81E310, &qword_22813A7C0);
    v341(v66, v67);
    v68 = sub_227FCC340(v60, v59, &v398);

    *(v28 + 24) = v68;
    *(v28 + 32) = 2082;
    v69 = sub_22813774C();
    v70 = v0[91];
    v71 = v0[79];
    if (v72)
    {
      v341(v0[91], v0[79]);
      v73 = 0xE300000000000000;
      v74 = 7104878;
    }

    else
    {
      v0[51] = v69;
      v74 = sub_2281392EC();
      v73 = v75;
      v341(v70, v71);
    }

    v76 = sub_227FCC340(v74, v73, &v398);

    *(v28 + 34) = v76;
    *(v28 + 42) = 2082;
    v77 = sub_22813773C();
    v78 = v0[90];
    v79 = v0[79];
    if (v80)
    {
      v341(v0[90], v0[79]);
      v81 = 0xE300000000000000;
      v82 = 7104878;
    }

    else
    {
      v0[50] = v77;
      v83 = sub_2281392EC();
      v81 = v84;
      v341(v78, v79);
      v82 = v83;
    }

    v85 = 7104878;
    v86 = sub_227FCC340(v82, v81, &v398);

    *(v28 + 44) = v86;
    *(v28 + 52) = 2082;
    v87 = sub_22813779C();
    v88 = v0[89];
    v89 = v0[79];
    if (v90)
    {
      v341(v0[89], v0[79]);
      v91 = 0xE300000000000000;
      v92 = 7104878;
    }

    else
    {
      v0[49] = v87;
      v93 = sub_2281392EC();
      v91 = v94;
      v341(v88, v89);
      v92 = v93;
    }

    v95 = sub_227FCC340(v92, v91, &v398);

    *(v28 + 54) = v95;
    *(v28 + 62) = 2082;
    v96 = sub_22813777C();
    v97 = v0[88];
    v98 = v0[79];
    if (v99)
    {
      v341(v0[88], v0[79]);
      v100 = 0xE300000000000000;
    }

    else
    {
      v0[48] = v96;
      v85 = sub_2281392EC();
      v100 = v101;
      v341(v97, v98);
    }

    v102 = v0[75];
    v103 = v0[71];
    v104 = v0[70];
    v105 = sub_227FCC340(v85, v100, &v398);

    *(v28 + 64) = v105;
    _os_log_impl(&dword_227FC3000, v372, v27, "\n--------------------------------------------------------------------------------\n# Inference details for FCC request %{public}s\n--------------------------------------------------------------------------------\n# Decoding Parameters\n--------------------------------------------------------------------------------\nmaximumTokens: %{public}s\nstrategy: %{public}s\ntemperature: %{public}s\nrandomSeed: %{public}s\ntimeout: %{public}s\npromptLookupDraftSteps: %{public}s\n--------------------------------------------------------------------------------", v28, 0x48u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v364, -1, -1);
    MEMORY[0x22AAB28A0](v28, -1, -1);

    v51 = *(v103 + 8);
    v51(v102, v104);
  }

  else
  {
    v42 = v0[92];
    v43 = v0[91];
    v44 = v0[90];
    v346 = v0[93];
    v45 = v0[89];
    v46 = v0[88];
    v47 = v0[80];
    v48 = v0[79];
    v365 = v0[75];
    v49 = v0[71];
    v350 = v0[70];

    v50 = *(v47 + 8);
    v50(v46, v48);
    v50(v45, v48);
    v50(v44, v48);
    v50(v43, v48);
    v50(v42, v48);
    v341 = v50;
    v50(v346, v48);
    v51 = *(v49 + 8);
    v51(v365, v350);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  }

  v106 = v0[56];
  v107 = v0[57];
  v108 = v0[55];
  sub_22813780C();
  if ((*(v107 + 48))(v108, 1, v106) == 1)
  {
    sub_227FDB53C(v0[55], &qword_27D81E308, &unk_22813F910);
    sub_227FDB600((v0 + 2), (v0 + 22));
    v109 = sub_22813880C();
    v110 = sub_2281396DC();
    v111 = os_log_type_enabled(v109, v110);
    v112 = v0[94];
    v113 = v0[79];
    if (v111)
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v398 = v115;
      *v114 = 136315138;
      v116 = v0[25];
      v117 = v0[26];
      __swift_project_boxed_opaque_existential_1(v0 + 22, v116);
      v379 = v112;
      v118 = (*(v117 + 16))(v116, v117);
      v120 = v119;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
      v121 = sub_227FCC340(v118, v120, &v398);

      *(v114 + 4) = v121;
      _os_log_impl(&dword_227FC3000, v109, v110, "Rendered prompt after prompt completion is nil for request %s.", v114, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v115);
      MEMORY[0x22AAB28A0](v115, -1, -1);
      MEMORY[0x22AAB28A0](v114, -1, -1);

      v341(v379, v113);
    }

    else
    {

      v341(v112, v113);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
    }

    v2 = v388;
    v3 = off_2785F1000;
  }

  else
  {
    (*(v0[57] + 32))(v0[60], v0[55], v0[56]);
    v122 = v378;
    if (qword_2813C49B8 != -1)
    {
      swift_once();
      v122 = v378;
    }

    if ((byte_2813C49C1 & 1) == 0)
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v122 = __swift_project_value_buffer(v0[70], qword_2813C4990);
    }

    v356(v0[74], v122, v0[70]);
    if (qword_2813C49B0 != -1)
    {
      swift_once();
    }

    if (byte_27D81EEF2 == 1)
    {
      (*(v0[71] + 32))(v0[73], v0[74], v0[70]);
    }

    else
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v123 = v0[74];
      v124 = v0[73];
      v125 = v0[70];
      v126 = __swift_project_value_buffer(v125, qword_2813C4990);
      v356(v124, v126, v125);
      v51(v123, v125);
    }

    v128 = v0[59];
    v127 = v0[60];
    v130 = v0[57];
    v129 = v0[58];
    v131 = v0[56];
    sub_227FDB600((v0 + 2), (v0 + 27));
    v132 = *(v130 + 16);
    v132(v128, v127, v131);
    sub_227FDB600((v0 + 2), (v0 + 32));
    v132(v129, v127, v131);
    v133 = sub_22813880C();
    v134 = sub_2281396CC();
    v351 = v133;
    v135 = os_log_type_enabled(v133, v134);
    v136 = v0[94];
    v137 = v0[79];
    v357 = v0[71];
    v366 = v0[70];
    v373 = v0[73];
    v138 = v0[59];
    v380 = v0[60];
    v139 = v0[57];
    v140 = v0[58];
    v141 = v0[56];
    if (v135)
    {
      v347 = v0[80];
      v142 = swift_slowAlloc();
      v339 = swift_slowAlloc();
      v398 = v339;
      *v142 = 136446979;
      v342 = v137;
      v343 = v136;
      v143 = v0[30];
      v144 = v0[31];
      __swift_project_boxed_opaque_existential_1(v0 + 27, v143);
      v338 = v134;
      v145 = (*(v144 + 16))(v143, v144);
      v147 = v146;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
      v148 = sub_227FCC340(v145, v147, &v398);

      *(v142 + 4) = v148;
      *(v142 + 12) = 2081;
      sub_22813789C();
      v149 = MEMORY[0x22AAB1AD0]();
      v151 = v150;

      v152 = *(v139 + 8);
      v152(v138, v141);
      v153 = sub_227FCC340(v149, v151, &v398);

      *(v142 + 14) = v153;
      *(v142 + 22) = 2082;
      v154 = v0[35];
      v155 = v0[36];
      __swift_project_boxed_opaque_existential_1(v0 + 32, v154);
      v156 = (*(v155 + 16))(v154, v155);
      v158 = v157;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
      v159 = sub_227FCC340(v156, v158, &v398);

      *(v142 + 24) = v159;
      *(v142 + 32) = 2081;
      v0[37] = sub_22813788C();
      v0[38] = v160;
      v0[39] = 10;
      v0[40] = 0xE100000000000000;
      v0[41] = 4091452;
      v0[42] = 0xE300000000000000;
      sub_227FDB420();
      v161 = sub_2281397BC();
      v163 = v162;

      v152(v140, v141);
      v164 = sub_227FCC340(v161, v163, &v398);

      *(v142 + 34) = v164;
      _os_log_impl(&dword_227FC3000, v351, v338, "\n--------------------------------------------------------------------------------\n# Rendered Prompt Token IDs for FCC request %{public}s\n--------------------------------------------------------------------------------\n%{private}s\n--------------------------------------------------------------------------------\n# Approximate Rendered Prompt for request %{public}s\n# Note: Please reconstruct prompt from Token IDs above if you need the exact prompt\n--------------------------------------------------------------------------------\n%{private}s\n--------------------------------------------------------------------------------", v142, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v339, -1, -1);
      MEMORY[0x22AAB28A0](v142, -1, -1);

      (*(v357 + 8))(v373, v366);
      v152(v380, v141);
      v165 = v342;
      v341 = *(v347 + 8);
      v341(v343, v165);
    }

    else
    {

      v166 = *(v139 + 8);
      v166(v140, v141);
      v166(v138, v141);
      v51(v373, v366);
      v166(v380, v141);
      v341(v136, v137);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
    }

    v3 = off_2785F1000;
    v2 = v388;
  }

LABEL_83:
  v167 = sub_22813782C();
  if (*(v167 + 16) && (v168 = sub_22808C964(7562585, 0xE300000000000000), (v169 & 1) != 0))
  {
    v381 = *(*(v167 + 56) + v168);
  }

  else
  {
    v381 = 0;
  }

  v170 = v0[77];

  v383 = sub_22813781C();
  sub_227FCAA18(v384, v170, type metadata accessor for ModelBundleIdentifier);

  if (v390)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v171 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v171 = &qword_2813C76F8;
  }

  v172 = *(*v171 + 1352);
  v173 = *(*v171 + 1360);
  v174 = *(*v171 + 2208);

  if (v392)
  {
    v173(&v398, v174);

    v172 = v398;
  }

  else
  {
  }

  sub_2280F8BF4(v0[77], 2, 0, v172, 0, v0[87]);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v175 = __swift_project_value_buffer(v0[70], qword_2813C8A20);
  if (qword_2813C49C8 != -1)
  {
    swift_once();
  }

  if ((byte_2813C49D0 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v175 = __swift_project_value_buffer(v0[70], qword_2813C4990);
  }

  v176 = v0[124];
  v177 = v0[123];
  v178 = v0[122];
  v179 = v0[121];
  v180 = v0[87];
  v344 = v0[120];
  v348 = v0[86];
  v352 = v0[85];
  v358 = v0[84];
  v367 = v0[83];
  v374 = v0[82];
  v385 = v0[81];
  v181 = v0[80];
  v182 = v0[79];
  (*(v0[71] + 16))(v0[72], v175, v0[70]);
  sub_227FDB600((v0 + 2), (v0 + 7));
  sub_227FCAA18(v176, v177, type metadata accessor for GMSModelInfo);
  sub_227FCAA18(v176, v178, type metadata accessor for GMSModelInfo);
  sub_227FCAA18(v176, v179, type metadata accessor for GMSModelInfo);
  sub_227FCAA18(v176, v344, type metadata accessor for GMSModelInfo);
  v183 = *(v181 + 16);
  v183(v348, v180, v182);
  v183(v352, v180, v182);
  v183(v358, v180, v182);
  v183(v367, v180, v182);
  v183(v374, v180, v182);
  v183(v385, v180, v182);
  v184 = sub_22813880C();
  v185 = sub_2281396BC();
  v186 = os_log_type_enabled(v184, v185);
  v187 = v0[123];
  if (v186)
  {
    v375 = v185;
    v188 = v0[119];
    v189 = swift_slowAlloc();
    v368 = swift_slowAlloc();
    v395 = v368;
    *v189 = 136318210;
    v190 = v0[10];
    v191 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v190);
    v192 = (*(v191 + 16))(v190, v191);
    v194 = v193;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    v195 = sub_227FCC340(v192, v194, &v395);

    *(v189 + 4) = v195;
    *(v189 + 12) = 2082;
    v196 = (v187 + *(v188 + 20));
    v198 = *v196;
    v197 = v196[1];
    v199 = (v187 + *(v188 + 36));
    v200 = *v199;
    v201 = v199[1];
    v396 = v198;
    v397 = v197;
    v386 = v184;
    if (v201)
    {
      v398 = 30240;
      v399 = 0xE200000000000000;

      MEMORY[0x22AAB1970](v200, v201);
      MEMORY[0x22AAB1970](v398, v399);

      v198 = v396;
      v197 = v397;
    }

    else
    {
    }

    v211 = v0[122];
    v212 = v0[121];
    v213 = v0[120];
    v214 = v0[119];
    v215 = v0[112];
    v354 = v0[111];
    v360 = v0[110];
    sub_227FDB474(v0[123], type metadata accessor for GMSModelInfo);
    v216 = sub_227FCC340(v198, v197, &v395);

    *(v189 + 14) = v216;
    *(v189 + 22) = 2082;
    v217 = sub_227FDAA3C(*(v211 + v214[6]), *(v211 + v214[6] + 8), *(v211 + v214[10]), *(v211 + v214[10] + 8));
    v219 = v218;
    sub_227FDB474(v211, type metadata accessor for GMSModelInfo);
    v220 = sub_227FCC340(v217, v219, &v395);

    *(v189 + 24) = v220;
    *(v189 + 32) = 2082;
    v221 = sub_227FDAA3C(*(v212 + v214[7]), *(v212 + v214[7] + 8), *(v212 + v214[11]), *(v212 + v214[11] + 8));
    v223 = v222;
    sub_227FDB474(v212, type metadata accessor for GMSModelInfo);
    v224 = sub_227FCC340(v221, v223, &v395);

    *(v189 + 34) = v224;
    *(v189 + 42) = 2082;
    v225 = sub_227FDAA3C(*(v213 + v214[8]), *(v213 + v214[8] + 8), *(v213 + v214[12]), *(v213 + v214[12] + 8));
    v227 = v226;
    sub_227FDB474(v213, type metadata accessor for GMSModelInfo);
    v228 = sub_227FCC340(v225, v227, &v395);

    *(v189 + 44) = v228;
    *(v189 + 52) = 2082;
    sub_2281370CC();
    v229 = sub_228136FEC();
    v231 = v230;
    v232 = *(v354 + 8);
    v232(v215, v360);
    v233 = sub_227FCC340(v229, v231, &v395);

    *(v189 + 54) = v233;
    *(v189 + 62) = 2082;
    if (qword_2813C8758 != -1)
    {
      swift_once();
    }

    v234 = v0[112];
    v235 = v0[110];
    sub_228139B6C();
    v236 = sub_228136FEC();
    v238 = v237;
    v232(v234, v235);
    v239 = sub_227FCC340(v236, v238, &v395);

    *(v189 + 64) = v239;
    *(v189 + 72) = 2082;
    v240 = sub_22813776C();
    v241 = v0[86];
    v242 = v0[80];
    v243 = v0[79];
    if (v244)
    {
      v245 = *(v242 + 8);
      v245(v0[86], v0[79]);
      v246 = 0xE300000000000000;
      v247 = 7104878;
    }

    else
    {
      v0[47] = v240;
      v248 = sub_2281392EC();
      v246 = v249;
      v245 = *(v242 + 8);
      v245(v241, v243);
      v247 = v248;
    }

    v250 = v0[67];
    v251 = v0[66];
    v252 = v0[61];
    v253 = v0[62];
    v254 = sub_227FCC340(v247, v246, &v395);

    *(v189 + 74) = v254;
    *(v189 + 82) = 2082;
    sub_2281377BC();
    sub_227FDB4D4(v250, v251, &qword_27D81E310, &qword_22813A7C0);
    if ((*(v253 + 48))(v251, 1, v252) == 1)
    {
      sub_227FDB53C(v0[66], &qword_27D81E310, &qword_22813A7C0);
      v255 = 0xE300000000000000;
      v256 = 7104878;
    }

    else
    {
      v258 = v0[63];
      v257 = v0[64];
      v259 = v0[61];
      v260 = v0[62];
      (*(v260 + 32))(v258, v0[66], v259);
      (*(v260 + 16))(v257, v258, v259);
      v256 = sub_2281392EC();
      v255 = v261;
      (*(v260 + 8))(v258, v259);
    }

    v262 = v0[85];
    v263 = v0[79];
    sub_227FDB53C(v0[67], &qword_27D81E310, &qword_22813A7C0);
    v245(v262, v263);
    v264 = sub_227FCC340(v256, v255, &v395);

    *(v189 + 84) = v264;
    *(v189 + 92) = 2082;
    v265 = sub_22813774C();
    v266 = v0[84];
    v267 = v0[79];
    if (v268)
    {
      v245(v0[84], v0[79]);
      v269 = 0xE300000000000000;
      v270 = 7104878;
    }

    else
    {
      v0[46] = v265;
      v271 = sub_2281392EC();
      v269 = v272;
      v245(v266, v267);
      v270 = v271;
    }

    v273 = sub_227FCC340(v270, v269, &v395);

    *(v189 + 94) = v273;
    *(v189 + 102) = 2082;
    v274 = sub_22813773C();
    v275 = v0[83];
    v276 = v0[79];
    if (v277)
    {
      v245(v0[83], v0[79]);
      v278 = 0xE300000000000000;
      v279 = 7104878;
    }

    else
    {
      v0[45] = v274;
      v280 = sub_2281392EC();
      v278 = v281;
      v245(v275, v276);
      v279 = v280;
    }

    v282 = sub_227FCC340(v279, v278, &v395);

    *(v189 + 104) = v282;
    *(v189 + 112) = 2082;
    v283 = sub_22813779C();
    v284 = v0[82];
    v285 = v0[79];
    if (v286)
    {
      v245(v0[82], v0[79]);
      v287 = 0xE300000000000000;
      v288 = 7104878;
    }

    else
    {
      v0[44] = v283;
      v289 = sub_2281392EC();
      v287 = v290;
      v245(v284, v285);
      v288 = v289;
    }

    v291 = sub_227FCC340(v288, v287, &v395);

    *(v189 + 114) = v291;
    *(v189 + 122) = 2082;
    v292 = sub_22813777C();
    v293 = v0[81];
    v294 = v0[79];
    v361 = v245;
    if (v295)
    {
      v245(v293, v294);
      v296 = 0xE300000000000000;
      v297 = 7104878;
    }

    else
    {
      v0[43] = v292;
      v297 = sub_2281392EC();
      v296 = v298;
      v245(v293, v294);
    }

    v299 = v0[87];
    v355 = v0[79];
    v300 = v0[72];
    v301 = v0[71];
    v302 = v0[70];
    v303 = sub_227FCC340(v297, v296, &v395);

    *(v189 + 124) = v303;
    _os_log_impl(&dword_227FC3000, v386, v375, "\n--------------------------------------------------------------------------------\n# Inference details for FCC request %s\n--------------------------------------------------------------------------------\nAdapter: %{public}s\nTokenizer: %{public}s\nBase Model: %{public}s\nDraft Model: %{public}s\nDevice Locale: %{public}s\nInference Locale: %{public}s\n--------------------------------------------------------------------------------\n# Decoding Parameters\n--------------------------------------------------------------------------------\nmaximumTokens: %{public}s\nstrategy: %{public}s\ntemperature: %{public}s\nrandomSeed: %{public}s\ntimeout: %{public}s\npromptLookupDraftSteps: %{public}s\n--------------------------------------------------------------------------------", v189, 0x84u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v368, -1, -1);
    MEMORY[0x22AAB28A0](v189, -1, -1);

    (*(v301 + 8))(v300, v302);
    v361(v299, v355);
  }

  else
  {
    v359 = v0[122];
    v369 = v0[121];
    v376 = v0[120];
    v345 = v0[86];
    v349 = v0[87];
    v353 = v0[123];
    v202 = v0[85];
    v203 = v0[84];
    v204 = v0[83];
    v205 = v0[82];
    v206 = v0[81];
    v207 = v0[79];
    v340 = v0[72];
    v208 = v0[71];
    v209 = v184;
    v210 = v0[70];

    v341(v206, v207);
    v341(v205, v207);
    v341(v204, v207);
    v341(v203, v207);
    v341(v202, v207);
    v341(v345, v207);
    (*(v208 + 8))(v340, v210);
    v341(v349, v207);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    sub_227FDB474(v353, type metadata accessor for GMSModelInfo);
    sub_227FDB474(v359, type metadata accessor for GMSModelInfo);
    sub_227FDB474(v369, type metadata accessor for GMSModelInfo);
    sub_227FDB474(v376, type metadata accessor for GMSModelInfo);
  }

  if (v381)
  {
    goto LABEL_132;
  }

  if (v390)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v313 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v313 = &qword_2813C76F8;
  }

  v314 = *(*v313 + 920);
  v315 = *(*v313 + 928);
  v316 = *(*v313 + 2208);

  if (v392)
  {
    v315(&v398, v316);

    if (v398)
    {
      goto LABEL_146;
    }

LABEL_132:
    v304 = v0[124];
    v305 = v0[105];
    v306 = v0[103];
    v307 = v0[102];
    v308 = v0[101];
    v309 = v0[100];
    v310 = v0[99];
    (*(v0[96] + 8))(v0[97], v0[95]);
    (*(v309 + 8))(v308, v310);
    (*(v306 + 8))(v305, v307);
    sub_227FDB474(v304, type metadata accessor for GMSModelInfo);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v311 = 256;
    if ((v383 & 1) == 0)
    {
      v311 = 0;
    }

    v312 = v311 | v381;
    goto LABEL_153;
  }

  if (!v314)
  {
    goto LABEL_132;
  }

LABEL_146:
  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[70], qword_2813C89F0);
  sub_227FDB600((v0 + 2), (v0 + 12));
  v317 = sub_22813880C();
  v389 = sub_2281396BC();
  v318 = os_log_type_enabled(v317, v389);
  v319 = v0[124];
  v320 = v0[105];
  v321 = v0[103];
  v322 = v0[102];
  v323 = v0[101];
  v324 = v0[100];
  v325 = v0[99];
  v326 = v0[96];
  v391 = v0[95];
  v393 = v0[97];
  if (v318)
  {
    v387 = v0[105];
    v327 = swift_slowAlloc();
    v382 = v322;
    v328 = swift_slowAlloc();
    v398 = v328;
    *v327 = 136446210;
    v362 = v325;
    v370 = v323;
    v329 = v0[15];
    v330 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v329);
    v377 = v319;
    v331 = (*(v330 + 16))(v329, v330);
    v333 = v332;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
    v334 = sub_227FCC340(v331, v333, &v398);

    *(v327 + 4) = v334;
    __swift_destroy_boxed_opaque_existential_1Tm(v328);
    MEMORY[0x22AAB28A0](v328, -1, -1);
    MEMORY[0x22AAB28A0](v327, -1, -1);

    (*(v326 + 8))(v393, v391);
    (*(v324 + 8))(v370, v362);
    (*(v321 + 8))(v387, v382);
    sub_227FDB474(v377, type metadata accessor for GMSModelInfo);
    v335 = v0 + 2;
  }

  else
  {

    (*(v326 + 8))(v393, v391);
    (*(v324 + 8))(v323, v325);
    (*(v321 + 8))(v320, v322);
    sub_227FDB474(v319, type metadata accessor for GMSModelInfo);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v335 = v0 + 12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v335);
  v312 = 257;
  if ((v383 & 1) == 0)
  {
    v312 = 1;
  }

LABEL_153:
  v394 = v312;

  v336 = v0[1];

  return v336(v394, 2);
}

uint64_t sub_227FDA6AC()
{
  v1 = v0[124];
  v2 = v0[105];
  v3 = v0[103];
  v4 = v0[102];
  (*(v0[100] + 8))(v0[101], v0[99]);
  (*(v3 + 8))(v2, v4);
  sub_227FDB474(v1, type metadata accessor for GMSModelInfo);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_227FDAA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a4)
  {

    MEMORY[0x22AAB1970](a3, a4);
    MEMORY[0x22AAB1970](30240, 0xE200000000000000);

    return a1;
  }

  else
  {

    return a1;
  }
}

uint64_t sub_227FDAAF4()
{
  sub_227FDB474(v0 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_modelBundleIdentifier, type metadata accessor for ModelBundleIdentifier);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_sessionInfo));
  v1 = OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_generativeModelSessionConfiguration;
  v2 = sub_22813791C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_model));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_promptRunner));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GMSFactualConsistencyClassifierModelEngine(uint64_t a1)
{
  result = qword_2813C60C0;
  if (!qword_2813C60C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227FDAC38(uint64_t a1)
{
  result = type metadata accessor for ModelBundleIdentifier(319);
  if (v2 <= 0x3F)
  {
    result = sub_22813791C();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_227FDAD68(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227FDAD88(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_227FDADC4(uint64_t a1, id *a2)
{
  result = sub_22813928C();
  *a2 = 0;
  return result;
}

uint64_t sub_227FDAE3C(uint64_t a1, id *a2)
{
  v3 = sub_22813929C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_227FDAEBC@<X0>(uint64_t *a2@<X8>)
{
  sub_2281392AC();
  v3 = sub_22813927C();

  *a2 = v3;
  return result;
}

uint64_t sub_227FDAF00(uint64_t a1)
{
  v2 = sub_227FDB150(&qword_27D81E368, type metadata accessor for NLTagScheme, &unk_22813A8FC);
  v3 = sub_227FDB150(&qword_27D81E370, type metadata accessor for NLTagScheme, &unk_22813A89C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_227FDAFBC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_22813927C();

  *a2 = v3;
  return result;
}

uint64_t sub_227FDB004(uint64_t a1)
{
  v2 = sub_227FDB150(&qword_27D81E2F8, type metadata accessor for NLLanguage, &unk_22813A6FC);
  v3 = sub_227FDB150(&qword_27D81E300, type metadata accessor for NLLanguage, &unk_22813A69C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_227FDB150(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227FDB198()
{
  v0 = sub_2281392AC();
  v1 = MEMORY[0x22AAB19E0](v0);

  return v1;
}

uint64_t sub_227FDB1D4(uint64_t a1)
{
  sub_2281392AC();
  sub_22813923C();
}

uint64_t sub_227FDB228(uint64_t a1)
{
  sub_2281392AC();
  sub_228139AAC();
  sub_22813923C();
  v1 = sub_228139AEC();

  return v1;
}

uint64_t sub_227FDB29C(void *a1, uint64_t *a2)
{
  v2 = sub_2281392AC();
  v4 = v3;
  if (v2 == sub_2281392AC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2281399BC();
  }

  return v7 & 1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_227FDB3CC()
{
  result = qword_2813C83D8;
  if (!qword_2813C83D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C83D8);
  }

  return result;
}

unint64_t sub_227FDB420()
{
  result = qword_2813C4720;
  if (!qword_2813C4720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4720);
  }

  return result;
}

uint64_t sub_227FDB474(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227FDB4D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_227FDB53C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_227FDB600(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_227FDB670(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227FDB690(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_227FDB6E0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t ClientSwitchConfiguration.init()()
{
  v1 = (v0 + qword_2813C6AC8);
  *v1 = 0xD000000000000019;
  v1[1] = 0x800000022813A980;
  v2 = (v0 + qword_2813C6AD0);
  *v2 = 0x7478746270;
  v2[1] = 0xE500000000000000;
  v3 = (v0 + qword_2813C6AB8);
  *v3 = 0xD000000000000010;
  v3[1] = 0x8000000228143AB0;
  v4 = qword_2813C6AB0;
  *(v0 + v4) = sub_227FE4524(MEMORY[0x277D84F90]);
  *(v0 + qword_2813C6AC0) = MEMORY[0x277D84FA0];
  v5 = *v1;
  v6 = v1[1];
  v7 = *v2;
  v8 = v2[1];
  v9 = *v3;
  v10 = v3[1];

  v11 = sub_227FDB9B0(v5, v6, v7, v8, v9, v10);

  sub_227FDCDC0();

  return v11;
}

uint64_t sub_227FDB9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32[1] = a3;
  v32[2] = a5;
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig(0);
  v8 = MEMORY[0x28223BE20](v7);
  v32[0] = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v32 - v10;
  v12 = (v6 + *(*v6 + 104));
  v13 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  swift_arrayDestroy();
  *v12 = v13;
  *(v12 + 8) = 0;
  *v11 = 0;
  *(v11 + 1) = MEMORY[0x277D84F90];
  v11[16] = 0;
  sub_228137D6C();
  v14 = *(*v6 + 96);
  sub_227FE5E38(v11, v6 + v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  type metadata accessor for ClientSafetyConfiguration(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  v17 = sub_22813927C();

  v18 = sub_22813927C();

  v19 = sub_22813927C();

  v20 = [v16 pathForResource:v17 ofType:v18 inDirectory:v19];

  if (v20)
  {
    v21 = sub_2281392AC();
    v23 = v22;

    v24 = v32[0];
    sub_227FE194C(v21, v23, v32[0]);

    swift_beginAccess();
    sub_227FE5BEC(v24, v6 + v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
    swift_endAccess();
    sub_227FE5C54(v6 + v14, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
    v27 = (*(*v6 + 192))(v11);
    v29 = v28;
    sub_227FE5D1C(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v12;
    *v12 = 0x8000000000000000;
    sub_22801B5C4(v27, v29, 1, isUniquelyReferenced_nonNull_native);
    *v12 = v33;
    *(v12 + 8) = 1;
    swift_endAccess();
  }

  else
  {
    sub_227FE4988();
    v25 = swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_227FDBD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32[1] = a3;
  v32[2] = a5;
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules(0);
  v8 = MEMORY[0x28223BE20](v7);
  v32[0] = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v32 - v10;
  v12 = (v6 + *(*v6 + 104));
  v13 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  swift_arrayDestroy();
  *v12 = v13;
  *(v12 + 8) = 0;
  *v11 = 0;
  *(v11 + 1) = MEMORY[0x277D84F90];
  sub_228137D6C();
  v14 = *(*v6 + 96);
  sub_227FE5E38(v11, v6 + v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);
  type metadata accessor for ClientSafetyConfiguration(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  v17 = sub_22813927C();

  v18 = sub_22813927C();

  v19 = sub_22813927C();

  v20 = [v16 pathForResource:v17 ofType:v18 inDirectory:v19];

  if (v20)
  {
    v21 = sub_2281392AC();
    v23 = v22;

    v24 = v32[0];
    sub_227FC99C4(v21, v23, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules, &qword_2813C5E40, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKFilterRules, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules, v32[0]);

    swift_beginAccess();
    sub_227FE5BEC(v24, v6 + v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);
    swift_endAccess();
    sub_227FE5C54(v6 + v14, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);
    v27 = (*(*v6 + 192))(v11);
    v29 = v28;
    sub_227FE5D1C(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v12;
    *v12 = 0x8000000000000000;
    sub_22801B5C4(v27, v29, 1, isUniquelyReferenced_nonNull_native);
    *v12 = v33;
    *(v12 + 8) = 1;
    swift_endAccess();
  }

  else
  {
    sub_227FE4988();
    v25 = swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_227FDC18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32[1] = a3;
  v32[2] = a5;
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList(0);
  v8 = MEMORY[0x28223BE20](v7);
  v32[0] = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v32 - v10;
  v12 = (v6 + *(*v6 + 104));
  v13 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  swift_arrayDestroy();
  *v12 = v13;
  *(v12 + 8) = 0;
  *v11 = 0;
  *(v11 + 1) = MEMORY[0x277D84F90];
  sub_228137D6C();
  v14 = *(*v6 + 96);
  sub_227FE5E38(v11, v6 + v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);
  type metadata accessor for ClientSafetyConfiguration(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  v17 = sub_22813927C();

  v18 = sub_22813927C();

  v19 = sub_22813927C();

  v20 = [v16 pathForResource:v17 ofType:v18 inDirectory:v19];

  if (v20)
  {
    v21 = sub_2281392AC();
    v23 = v22;

    v24 = v32[0];
    sub_227FC99C4(v21, v23, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList, &qword_2813C5118, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList, v32[0]);

    swift_beginAccess();
    sub_227FE5BEC(v24, v6 + v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);
    swift_endAccess();
    sub_227FE5C54(v6 + v14, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);
    v27 = (*(*v6 + 192))(v11);
    v29 = v28;
    sub_227FE5D1C(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v12;
    *v12 = 0x8000000000000000;
    sub_22801B5C4(v27, v29, 1, isUniquelyReferenced_nonNull_native);
    *v12 = v33;
    *(v12 + 8) = 1;
    swift_endAccess();
  }

  else
  {
    sub_227FE4988();
    v25 = swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_227FDC5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a3;
  v39 = a5;
  v37 = a1;
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = (v6 + *(*v6 + 104));
  v14 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  swift_arrayDestroy();
  *v13 = v14;
  *(v13 + 8) = 0;
  *v12 = 0;
  *(v12 + 1) = MEMORY[0x277D84F90];
  sub_228137D6C();
  v15 = *(v8 + 36);
  v16 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  (*(*(v16 - 8) + 56))(&v12[v15], 1, 1, v16);
  v17 = *(*v6 + 96);
  sub_227FE5E38(v12, v6 + v17, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  type metadata accessor for ClientSafetyConfiguration(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  v20 = sub_22813927C();

  v21 = sub_22813927C();

  v22 = sub_22813927C();

  v23 = [v19 pathForResource:v20 ofType:v21 inDirectory:v22];

  if (v23)
  {
    v24 = sub_2281392AC();
    v26 = v25;

    v27 = v36;
    sub_227FE225C(v24, v26, v36);

    swift_beginAccess();
    sub_227FE5BEC(v27, v6 + v17, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
    swift_endAccess();
    sub_227FE5C54(v6 + v17, v12, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
    v30 = (*(*v6 + 192))(v12);
    v32 = v31;
    sub_227FE5D1C(v12, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *v13;
    *v13 = 0x8000000000000000;
    sub_22801B5C4(v30, v32, 1, isUniquelyReferenced_nonNull_native);
    *v13 = v40;
    *(v13 + 8) = 1;
    swift_endAccess();
  }

  else
  {
    sub_227FE4988();
    v28 = swift_allocError();
    *v29 = 0;
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_227FDC9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32[1] = a3;
  v32[2] = a5;
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig(0);
  v8 = MEMORY[0x28223BE20](v7);
  v32[0] = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v32 - v10;
  v12 = (v6 + *(*v6 + 104));
  v13 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  swift_arrayDestroy();
  *v12 = v13;
  *(v12 + 8) = 0;
  *v11 = 0;
  *(v11 + 1) = MEMORY[0x277D84F90];
  sub_228137D6C();
  v14 = *(*v6 + 96);
  sub_227FE5E38(v11, v6 + v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig);
  type metadata accessor for ClientSafetyConfiguration(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  v17 = sub_22813927C();

  v18 = sub_22813927C();

  v19 = sub_22813927C();

  v20 = [v16 pathForResource:v17 ofType:v18 inDirectory:v19];

  if (v20)
  {
    v21 = sub_2281392AC();
    v23 = v22;

    v24 = v32[0];
    sub_227FC99C4(v21, v23, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig, qword_2813C4F90, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig, v32[0]);

    swift_beginAccess();
    sub_227FE5BEC(v24, v6 + v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig);
    swift_endAccess();
    sub_227FE5C54(v6 + v14, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig);
    v27 = (*(*v6 + 192))(v11);
    v29 = v28;
    sub_227FE5D1C(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v12;
    *v12 = 0x8000000000000000;
    sub_22801B5C4(v27, v29, 1, isUniquelyReferenced_nonNull_native);
    *v12 = v33;
    *(v12 + 8) = 1;
    swift_endAccess();
  }

  else
  {
    sub_227FE4988();
    v25 = swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_227FDCDC0()
{
  v1 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v121 = (&v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v126 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v107 - v7;
  v131 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0);
  v133 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v10 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v112 = (&v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v113 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v107 - v17;
  v119 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0);
  v19 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v123 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(*v0 + 96);
  v130 = v0;
  v22 = v0 + v21;
  result = swift_beginAccess();
  v24 = *(v22 + 8);
  v118 = *(v24 + 16);
  if (v118)
  {
    v117 = v11;
    v109 = v10;
    v111 = qword_2813C6AC0;
    v129 = qword_2813C6AB0;
    v116 = v19;
    v115 = v24 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v114 = (v12 + 48);
    v120 = v24;

    v25 = v120;
    v26 = 0;
    v122 = v1;
    v27 = v121;
    v125 = v8;
    v108 = v18;
    v110 = (v2 + 48);
    while (v26 < *(v25 + 16))
    {
      v28 = *(v116 + 72);
      v124 = v26;
      v29 = v123;
      sub_227FE5C54(v115 + v28 * v26, v123, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);
      v30 = *(v119 + 28);
      sub_227FE5DD0(v29 + v30, v18, &qword_27D81E4B0, &qword_22813AB20);
      v31 = *v114;
      v32 = v117;
      if ((*v114)(v18, 1, v117) == 1)
      {
        sub_227FE5D1C(v29, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);
        sub_227FE5CBC(v18, &qword_27D81E4B0, &qword_22813AB20);
      }

      else
      {
        sub_227FE5CBC(v18, &qword_27D81E4B0, &qword_22813AB20);
        v33 = v29 + v30;
        v34 = v113;
        sub_227FE5DD0(v33, v113, &qword_27D81E4B0, &qword_22813AB20);
        if (v31(v34, 1, v32) == 1)
        {
          v35 = v34;
          v36 = v112;
          *v112 = 0;
          v36[1] = 0xE000000000000000;
          sub_228137D6C();
          v37 = v31(v35, 1, v32);
          v38 = v122;
          v39 = v109;
          if (v37 != 1)
          {
            sub_227FE5CBC(v113, &qword_27D81E4B0, &qword_22813AB20);
          }
        }

        else
        {
          v40 = v34;
          v36 = v112;
          sub_227FE5E38(v40, v112, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
          v38 = v122;
          v39 = v109;
        }

        v42 = *v36;
        v41 = v36[1];

        sub_227FE5D1C(v36, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
        swift_beginAccess();

        v128 = v42;
        v127 = v41;
        sub_2280BD990(&v138, v42, v41);
        swift_endAccess();

        v43 = v123;
        v44 = v110;
        if (*v123)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B8, &qword_22813AB28);
          v45 = sub_22813993C();

          v46 = sub_22808C964(0x5F4C4C415FLL, 0xE500000000000000);
          v48 = v47;

          if (v48)
          {
            goto LABEL_66;
          }

          v45[(v46 >> 6) + 8] |= 1 << v46;
          v49 = (v45[6] + 16 * v46);
          *v49 = 0x5F4C4C415FLL;
          v49[1] = 0xE500000000000000;
          *(v45[7] + v46) = 1;
          v50 = v45[2];
          v51 = __OFADD__(v50, 1);
          v52 = v50 + 1;
          if (v51)
          {
            goto LABEL_67;
          }

          v45[2] = v52;
          v53 = v129;
          v54 = v130;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v138 = *(v54 + v53);
          *(v54 + v53) = 0x8000000000000000;
          sub_22801B724(v45, v128, v127, isUniquelyReferenced_nonNull_native);

          *(v54 + v53) = v138;
          swift_endAccess();
          sub_227FE5D1C(v43, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);
          v27 = v121;
        }

        else
        {
          v135 = *(v123 + 8);
          v134 = *(v135 + 16);
          if (v134)
          {
            v132 = v135 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
            swift_beginAccess();
            v56 = 0;
            while (v56 < *(v135 + 16))
            {
              sub_227FE5C54(v132 + *(v133 + 72) * v56, v39, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
              v57 = *(v131 + 24);
              sub_227FE5DD0(&v39[v57], v8, &qword_27D81E4A8, &unk_22813DE00);
              v58 = *v44;
              if ((*v44)(v8, 1, v38) == 1)
              {
                sub_227FE5D1C(v39, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
                sub_227FE5CBC(v8, &qword_27D81E4A8, &unk_22813DE00);
              }

              else
              {
                sub_227FE5CBC(v8, &qword_27D81E4A8, &unk_22813DE00);
                v59 = &v39[v57];
                v60 = v126;
                sub_227FE5DD0(v59, v126, &qword_27D81E4A8, &unk_22813DE00);
                if (v58(v60, 1, v38) == 1)
                {
                  *v27 = 0;
                  v27[1] = 0xE000000000000000;
                  sub_228137D6C();
                  if (v58(v60, 1, v38) != 1)
                  {
                    sub_227FE5CBC(v60, &qword_27D81E4A8, &unk_22813DE00);
                  }
                }

                else
                {
                  sub_227FE5E38(v60, v27, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
                }

                v61 = *v27;
                v62 = v27[1];

                sub_227FE5D1C(v27, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
                if (*v39)
                {
                  if (*(*(v130 + v129) + 16) && (, sub_22808C964(v128, v127), v64 = v63, , (v64 & 1) != 0))
                  {
                    swift_beginAccess();
                    v66 = sub_227FE0FEC(v137, v128, v127);
                    if (*v65)
                    {
                      v67 = v65;
                      v107 = v66;
                      v68 = swift_isUniquelyReferenced_nonNull_native();
                      v136 = *v67;
                      v69 = v136;
                      *v67 = 0x8000000000000000;
                      v71 = sub_22808C964(v61, v62);
                      v72 = v69[2];
                      v73 = (v70 & 1) == 0;
                      v74 = v72 + v73;
                      if (__OFADD__(v72, v73))
                      {
                        goto LABEL_68;
                      }

                      v75 = v70;
                      if (v69[3] >= v74)
                      {
                        if ((v68 & 1) == 0)
                        {
                          sub_22801CB8C();
                        }
                      }

                      else
                      {
                        sub_228018E78(v74, v68);
                        v76 = sub_22808C964(v61, v62);
                        if ((v75 & 1) != (v77 & 1))
                        {
                          goto LABEL_70;
                        }

                        v71 = v76;
                      }

                      v38 = v122;
                      v102 = v136;
                      if (v75)
                      {
                        *(v136[7] + v71) = 1;
                      }

                      else
                      {
                        v136[(v71 >> 6) + 8] |= 1 << v71;
                        v103 = (v102[6] + 16 * v71);
                        *v103 = v61;
                        v103[1] = v62;
                        *(v102[7] + v71) = 1;
                        v104 = v102[2];
                        v51 = __OFADD__(v104, 1);
                        v105 = v104 + 1;
                        if (v51)
                        {
                          goto LABEL_69;
                        }

                        v102[2] = v105;
                      }

                      *v67 = v102;

                      v66 = v107;
                    }

                    (v66)(v137, 0);
                    swift_endAccess();

                    sub_227FE5D1C(v39, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
                    v27 = v121;
                    v8 = v125;
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B8, &qword_22813AB28);
                    v78 = sub_22813993C();

                    v79 = sub_22808C964(v61, v62);
                    v81 = v80;

                    if (v81)
                    {
                      goto LABEL_62;
                    }

                    v78[(v79 >> 6) + 8] |= 1 << v79;
                    v82 = (v78[6] + 16 * v79);
                    *v82 = v61;
                    v82[1] = v62;
                    *(v78[7] + v79) = 1;
                    v83 = v78[2];
                    v51 = __OFADD__(v83, 1);
                    v84 = v83 + 1;
                    if (v51)
                    {
                      goto LABEL_63;
                    }

                    v78[2] = v84;
                    v85 = v129;
                    v86 = v130;
                    swift_beginAccess();
                    v87 = swift_isUniquelyReferenced_nonNull_native();
                    v138 = *(v86 + v85);
                    v88 = v138;
                    *(v86 + v85) = 0x8000000000000000;
                    v89 = v127;
                    v90 = sub_22808C964(v128, v127);
                    v92 = v88[2];
                    v93 = (v91 & 1) == 0;
                    v51 = __OFADD__(v92, v93);
                    v94 = v92 + v93;
                    if (v51)
                    {
                      goto LABEL_64;
                    }

                    v95 = v91;
                    if (v88[3] >= v94)
                    {
                      v8 = v125;
                      if ((v87 & 1) == 0)
                      {
                        v106 = v90;
                        sub_22801CCF4();
                        v90 = v106;
                      }
                    }

                    else
                    {
                      sub_228019118(v94, v87);
                      v90 = sub_22808C964(v128, v89);
                      v8 = v125;
                      if ((v95 & 1) != (v96 & 1))
                      {
                        goto LABEL_70;
                      }
                    }

                    v38 = v122;
                    v97 = v138;
                    if (v95)
                    {
                      *(v138[7] + 8 * v90) = v78;
                    }

                    else
                    {
                      v138[(v90 >> 6) + 8] |= 1 << v90;
                      v98 = (v97[6] + 16 * v90);
                      v99 = v127;
                      *v98 = v128;
                      v98[1] = v99;
                      *(v97[7] + 8 * v90) = v78;
                      v100 = v97[2];
                      v51 = __OFADD__(v100, 1);
                      v101 = v100 + 1;
                      if (v51)
                      {
                        goto LABEL_65;
                      }

                      v97[2] = v101;
                    }

                    *(v130 + v129) = v97;
                    swift_endAccess();
                    sub_227FE5D1C(v39, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
                    v27 = v121;
                  }
                }

                else
                {
                  sub_227FE5D1C(v39, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);

                  v8 = v125;
                }
              }

              if (v134 == ++v56)
              {
                goto LABEL_56;
              }
            }

            __break(1u);
            break;
          }

LABEL_56:

          sub_227FE5D1C(v123, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);
        }

        v18 = v108;
      }

      v26 = v124 + 1;
      v25 = v120;
      if (v124 + 1 == v118)
      {
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    result = sub_2281399EC();
    __break(1u);
  }

  return result;
}

uint64_t ClientSwitchConfiguration.init(configFilePath:)(uint64_t a1, unint64_t a2)
{
  v5 = (v2 + qword_2813C6AC8);
  *v5 = 0xD000000000000019;
  v5[1] = 0x800000022813A980;
  v6 = (v2 + qword_2813C6AD0);
  *v6 = 0x7478746270;
  v6[1] = 0xE500000000000000;
  v7 = (v2 + qword_2813C6AB8);
  *v7 = 0xD000000000000010;
  v7[1] = 0x8000000228143AB0;
  v8 = qword_2813C6AB0;
  *(v2 + v8) = sub_227FE4524(MEMORY[0x277D84F90]);
  *(v2 + qword_2813C6AC0) = MEMORY[0x277D84FA0];
  v9 = sub_227FDDDD4(a1, a2);

  sub_227FDCDC0();

  return v9;
}

uint64_t sub_227FDDDD4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = (v3 + *(*v3 + 104));
  v13 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  swift_arrayDestroy();
  *v12 = v13;
  *(v12 + 8) = 0;
  *v11 = 0;
  *(v11 + 1) = MEMORY[0x277D84F90];
  v11[16] = 0;
  sub_228137D6C();
  v14 = *(*v3 + 96);
  sub_227FE5E38(v11, v3 + v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  sub_227FE194C(a1, a2, v9);

  swift_beginAccess();
  sub_227FE5BEC(v9, v3 + v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  swift_endAccess();
  sub_227FE5C54(v3 + v14, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  v15 = (*(*v3 + 192))(v11);
  v17 = v16;
  sub_227FE5D1C(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v12;
  *v12 = 0x8000000000000000;
  sub_22801B5C4(v15, v17, 3, isUniquelyReferenced_nonNull_native);
  *v12 = v21;
  *(v12 + 8) = 3;
  swift_endAccess();
  return v3;
}

uint64_t sub_227FDE070(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = (v3 + *(*v3 + 104));
  v13 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  swift_arrayDestroy();
  *v12 = v13;
  *(v12 + 8) = 0;
  *v11 = 0;
  *(v11 + 1) = MEMORY[0x277D84F90];
  sub_228137D6C();
  v14 = *(*v3 + 96);
  sub_227FE5E38(v11, v3 + v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);
  sub_227FC99C4(a1, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules, &qword_2813C5E40, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKFilterRules, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules, v9);

  swift_beginAccess();
  sub_227FE5BEC(v9, v3 + v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);
  swift_endAccess();
  sub_227FE5C54(v3 + v14, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);
  v15 = (*(*v3 + 192))(v11);
  v17 = v16;
  sub_227FE5D1C(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v12;
  *v12 = 0x8000000000000000;
  sub_22801B5C4(v15, v17, 3, isUniquelyReferenced_nonNull_native);
  *v12 = v21;
  *(v12 + 8) = 3;
  swift_endAccess();
  return v3;
}