uint64_t sub_19A4BA5DC()
{
  v1 = *(v0 + 16);
  v2 = v1 + *(type metadata accessor for DefinitionSession(0) + 88);
  v3 = type metadata accessor for GenerationRecipe(0);
  v4 = *(v0 + 8);
  v5 = *(v2 + *(v3 + 52) + 1);

  return v4(v5);
}

uint64_t DefinitionSession.specifyGenderDirective(_:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A4BA680, 0, 0);
}

uint64_t sub_19A4BA680()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1 + *(type metadata accessor for DefinitionSession(0) + 88);
  *(v3 + *(type metadata accessor for GenerationRecipe(0) + 52) + 1) = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_19A4BA728()
{
  v1 = *(v0 + 16);
  v2 = v1 + *(type metadata accessor for DefinitionSession(0) + 88);
  *(v2 + *(type metadata accessor for GenerationRecipe(0) + 52) + 1) = 3;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_19A4BA7CC()
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v1 = sub_19A57236C();
  __swift_project_value_buffer(v1, qword_1ED82BD30);
  v2 = sub_19A57231C();
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  sub_19A57234C();
  sub_19A5722EC();
  v5 = sub_19A57234C();
  v6 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v5, v6, v8, "DefinitionSession.getPromptRewrite", "", v7, 2u);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  swift_task_alloc();
  (*(v3 + 16))();
  sub_19A5723BC();
  swift_allocObject();
  *(v0 + 24) = sub_19A5723AC();
  (*(v3 + 8))(v4, v2);

  type metadata accessor for DefinitionSession(0);
  v9 = swift_task_alloc();
  *(v0 + 32) = v9;
  *v9 = v0;
  v9[1] = sub_19A4BAA30;

  return UserPromptRewriter.next()();
}

uint64_t sub_19A4BAA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;

  return MEMORY[0x1EEE6DFA0](sub_19A4BAB34, 0, 0);
}

uint64_t sub_19A4BAB34()
{
  sub_19A4C57A4("DefinitionSession.getPromptRewrite", 34, 2);

  v1 = v0[1];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  return v1(v4, v2, v3);
}

uint64_t sub_19A4BABB8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DefinitionSession(0);
  v4 = v1 + v3[22];
  v5 = (v4 + *(type metadata accessor for GenerationRecipe(0) + 20));
  v6 = *v5 == 0xD000000000000029 && 0x800000019A596020 == v5[1];
  if (v6 || (result = sub_19A573F1C(), (result & 1) != 0))
  {
    v8 = (v1 + v3[8]);
    v9 = v8[1] == v8[5] && v8[2] == v8[6];
    if (v9 || (sub_19A573F1C() & 1) != 0)
    {
      v10 = *(v1 + v3[19]);
      v18 = type metadata accessor for InputConditioner();
      v19 = &off_1F0DAE4B0;
      v17[0] = v10;

      sub_19A302E70(v17, a1);
      return sub_19A2F3FA0(v17, &qword_1EAF9FDE0, &unk_19A57B770);
    }

    else
    {
      v11 = *(v1 + v3[19]);
      v15 = type metadata accessor for InputConditioner();
      v16 = &off_1F0DAE4B0;
      v14[0] = v11;

      sub_19A302E70(v14, v17);
      sub_19A2F3FA0(v14, &qword_1EAF9FDE0, &unk_19A57B770);
      v12 = v18;
      v13 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v15 = &type metadata for PromptRewriterRecipePreparer;
      v16 = &off_1F0DB2488;
      sub_19A3B55D4(v14, v12, v13, a1);
      sub_19A2F3FA0(v14, &qword_1EAF9FDE0, &unk_19A57B770);
      return __swift_destroy_boxed_opaque_existential_0Tm(v17);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t DefinitionSession.forensicsReporter.getter()
{
  v1 = (v0 + *(type metadata accessor for DefinitionSession(0) + 40));
  v2 = *v1;
  sub_19A2E0A50(*v1, v1[1]);
  return v2;
}

uint64_t DefinitionSession.generationSeed.setter(uint64_t a1, char a2)
{
  v5 = v2 + *(type metadata accessor for DefinitionSession(0) + 88);
  result = type metadata accessor for GenerationRecipe(0);
  v7 = v5 + *(result + 28);
  *v7 = a1;
  *(v7 + 8) = a2 & 1;
  return result;
}

uint64_t DefinitionSession.forceInProcessGeneration.setter(char a1)
{
  v3 = v1 + *(type metadata accessor for DefinitionSession(0) + 88);
  result = type metadata accessor for GenerationRecipe(0);
  *(v3 + *(result + 20) + 50) = a1;
  return result;
}

uint64_t DefinitionSession.configureInferenceDiagnostics(outputDirectoryURL:fileNamePrefix:overwriteFiles:includeModelFrameData:includeSegmentFrameData:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  v13 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_19A570EAC();
  (*(*(v17 - 8) + 16))(v16, a1, v17);
  v18 = v13[6];
  v19 = &v16[v13[5]];
  v20 = v13[7];
  v21 = v13[8];
  *v19 = a2;
  *(v19 + 1) = a3;
  v16[v18] = a4;
  v16[v20] = a5;
  v16[v21] = a6;
  v22 = v6 + *(type metadata accessor for DefinitionSession(0) + 88);
  v23 = *(type metadata accessor for GenerationRecipe(0) + 20);
  v24 = v23 + *(_s23GenerationConfigurationVMa(0) + 52);

  sub_19A2F3FA0(v22 + v24, &qword_1EAFA3300, &qword_19A577470);
  sub_19A4CBF58(v16, v22 + v24, type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
  return (*(v14 + 56))(v22 + v24, 0, 1, v13);
}

uint64_t DefinitionSession.set(forensicsReporter:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DefinitionSession(0);
  v6 = (v2 + *(v5 + 40));
  v7 = *v6;
  v8 = v6[1];
  if ((*v6 == 0) != (a1 == 0))
  {
    v9 = *(v5 + 68);
    sub_19A2F3FA0(v2 + v9, &qword_1EAFA1020, &qword_19A58CCD0);
    v10 = type metadata accessor for TextSanitizer(0);
    (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  }

  sub_19A2E0A50(a1, a2);
  result = sub_19A2E0A60(v7, v8);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t DefinitionSession.skinToneDirective.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A4BB1A8, 0, 0);
}

uint64_t sub_19A4BB1A8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for DefinitionSession(0) + 88);
  *v1 = *(v3 + *(type metadata accessor for GenerationRecipe(0) + 52) + 2);
  v4 = v0[1];

  return v4();
}

uint64_t DefinitionSession.specifySkinToneDirective(_:)(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_19A4BB254, 0, 0);
}

uint64_t sub_19A4BB254()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = v2 + *(type metadata accessor for DefinitionSession(0) + 88);
  *(v3 + *(type metadata accessor for GenerationRecipe(0) + 52) + 2) = v1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_19A4BB2FC()
{
  v1 = *(v0 + 16);
  v2 = v1 + *(type metadata accessor for DefinitionSession(0) + 88);
  *(v2 + *(type metadata accessor for GenerationRecipe(0) + 52) + 2) = 10;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t DefinitionSession.scribbleStrength.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DefinitionSession(0) + 88);
  result = type metadata accessor for GenerationRecipe(0);
  v5 = v3 + *(result + 44);
  *v5 = a1;
  *(v5 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_19A4BB3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 368) = v21;
  *(v9 + 376) = v8;
  *(v9 + 360) = v20;
  *(v9 + 344) = v19;
  *(v9 + 328) = v18;
  *(v9 + 1129) = a8;
  *(v9 + 312) = a6;
  *(v9 + 320) = a7;
  *(v9 + 1128) = a5;
  *(v9 + 296) = a3;
  *(v9 + 304) = a4;
  *(v9 + 280) = a1;
  *(v9 + 288) = a2;
  v10 = sub_19A571C1C();
  *(v9 + 384) = v10;
  *(v9 + 392) = *(v10 - 8);
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = sub_19A570A9C();
  *(v9 + 416) = swift_task_alloc();
  type metadata accessor for AugmentedPrompt(0);
  *(v9 + 424) = swift_task_alloc();
  v11 = sub_19A57209C();
  *(v9 + 432) = v11;
  *(v9 + 440) = *(v11 - 8);
  *(v9 + 448) = swift_task_alloc();
  v12 = sub_19A5720BC();
  *(v9 + 456) = v12;
  *(v9 + 464) = *(v12 - 8);
  *(v9 + 472) = swift_task_alloc();
  v13 = sub_19A57112C();
  *(v9 + 480) = v13;
  *(v9 + 488) = *(v13 - 8);
  *(v9 + 496) = swift_task_alloc();
  type metadata accessor for MessagesBackgroundEstimator(0);
  *(v9 + 504) = swift_task_alloc();
  *(v9 + 512) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA29A0, &unk_19A58DC08);
  *(v9 + 520) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  *(v9 + 528) = swift_task_alloc();
  *(v9 + 536) = swift_task_alloc();
  v14 = type metadata accessor for ResolvedTextPrompt(0);
  *(v9 + 544) = v14;
  *(v9 + 552) = *(v14 - 8);
  *(v9 + 560) = swift_task_alloc();
  *(v9 + 568) = swift_task_alloc();
  *(v9 + 576) = type metadata accessor for TextPrompt(0);
  *(v9 + 584) = swift_task_alloc();
  v15 = sub_19A57102C();
  *(v9 + 592) = v15;
  *(v9 + 600) = *(v15 - 8);
  *(v9 + 608) = swift_task_alloc();
  *(v9 + 616) = swift_task_alloc();
  *(v9 + 624) = swift_task_alloc();
  *(v9 + 632) = swift_task_alloc();
  *(v9 + 640) = swift_task_alloc();
  *(v9 + 648) = swift_task_alloc();
  *(v9 + 656) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8, &qword_19A577310);
  *(v9 + 664) = swift_task_alloc();
  *(v9 + 672) = swift_task_alloc();
  *(v9 + 680) = swift_task_alloc();
  type metadata accessor for TextSanitizer(0);
  *(v9 + 688) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A4BB894, 0, 0);
}

uint64_t sub_19A4BB894()
{
  v66 = v0;
  v1 = *(v0 + 328);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + 696) = v2;
  *(v2 + 16) = v3;
  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 336);
  if (v1 == 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  else
  {
    sub_19A2E0A50(v1, *(v0 + 336));
    sub_19A2E0A50(v5, v4);
    v5 = *(v0 + 344);
    v4 = *(v0 + 352);
    v11 = *(v0 + 328);
    v6 = *(v0 + 336);
    v7 = v5;
    v8 = v4;
    v9 = v11;
    v10 = v6;
  }

  *(v0 + 712) = v8;
  *(v0 + 704) = v7;
  v12 = *(v0 + 376);
  v13 = *(v0 + 360);
  v14 = swift_allocObject();
  *(v0 + 720) = v14;
  v14[2] = v11;
  v14[3] = v6;
  v14[4] = v5;
  v14[5] = v4;
  v14[6] = v2;
  sub_19A3A6BDC(v11, v6, v5, v4);

  sub_19A2E0A60(v9, v10);
  v15 = type metadata accessor for DefinitionSession(0);
  *(v0 + 728) = v15;
  v16 = *(v15 + 88);
  *(v0 + 1104) = v16;
  v17 = v12 + v16;
  v62 = sub_19A39C344();
  *(v0 + 1130) = v62;
  v18 = *(v13 + 16);
  *(v0 + 736) = v18;
  if (v18)
  {
    (*(*(v0 + 488) + 16))(*(v0 + 680), *(v0 + 360) + ((*(*(v0 + 488) + 80) + 32) & ~*(*(v0 + 488) + 80)), *(v0 + 480));
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = *(v0 + 688);
  v21 = *(v0 + 680);
  v22 = *(v0 + 480);
  v23 = *(*(v0 + 488) + 56);
  *(v0 + 744) = v23;
  v23(v21, v19, 1, v22);
  sub_19A4C480C(v21, v20);
  v24 = *(v0 + 656);
  v25 = *(v0 + 600);
  v26 = *(v0 + 592);
  v27 = *(v0 + 376);
  v61 = *(v0 + 368);
  sub_19A2F3FA0(*(v0 + 680), &qword_1EAF9FDC8, &qword_19A577310);
  v28 = sub_19A39D588();
  v29 = type metadata accessor for GenerationRecipe(0);
  *(v0 + 752) = v29;
  v30 = *(v29 + 72);
  *(v0 + 1108) = v30;
  v31 = *(v25 + 16);
  *(v0 + 760) = v31;
  *(v0 + 768) = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v31(v24, v17 + v30, v26);
  v32 = (v27 + *(v15 + 40));
  v33 = *v32;
  *(v0 + 776) = *v32;
  *(v0 + 784) = v32[1];
  v34 = swift_allocObject();
  *(v0 + 792) = v34;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  if (v33)
  {
    v36 = *(v0 + 280);
    v35 = *(v0 + 288);
    v65[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70, &unk_19A57BC90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A576E10;
    *(inited + 32) = 0x657A6974696E6173;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xEF74706D6F725064;
    *(inited + 48) = v36;
    *(inited + 56) = v35;

    v38 = sub_19A330370(inited);
    swift_setDeallocating();
    sub_19A2F3FA0(inited + 32, &qword_1EAFA2F00, &qword_19A578A30);
    sub_19A338028(v65, v38, v63);
    v39 = v63[0];
    v40 = v64;

    *(v34 + 16) = v39;
    *(v34 + 24) = v40;
  }

  v60 = v33;
  v41 = sub_19A57231C();
  *(v0 + 800) = v41;
  v42 = *(v41 - 8);
  v43 = v42;
  *(v0 + 808) = v42;
  *(v0 + 816) = *(v42 + 64);
  *(v0 + 824) = swift_task_alloc();
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v44 = sub_19A57236C();
  *(v0 + 832) = __swift_project_value_buffer(v44, qword_1ED82BD30);
  sub_19A57234C();
  sub_19A5722EC();
  v45 = sub_19A57234C();
  v46 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v59 = v28;
    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v45, v46, v48, "sanitizeText", "", v47, 2u);
    v49 = v47;
    v28 = v59;
    MEMORY[0x19A902C50](v49, -1, -1);
  }

  swift_task_alloc();
  v50 = *(v43 + 16);
  *(v0 + 840) = v50;
  *(v0 + 848) = (v43 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v50();
  *(v0 + 856) = sub_19A5723BC();
  swift_allocObject();
  *(v0 + 864) = sub_19A5723AC();

  if (*(v34 + 24))
  {

    v51 = sub_19A4CC0C8;
  }

  else
  {
    v51 = 0;
    v34 = 0;
  }

  *(v0 + 880) = v34;
  *(v0 + 872) = v51;
  if (v60)
  {
    if ((v61 & 2) == 0)
    {
      if ((v62 - 1) >= 2u)
      {
        if (v28)
        {
          v52 = 10;
        }

        else
        {
          v52 = 2;
        }
      }

      else if (v28)
      {
        v52 = 14;
      }

      else
      {
        v52 = 6;
      }

      goto LABEL_47;
    }

    if ((v62 - 1) >= 2u)
    {
      v52 = 11;
    }

    else
    {
      v52 = 15;
    }

    v53 = 3;
    if ((v62 - 1) < 2u)
    {
      v53 = 7;
    }

    if (v28)
    {
      goto LABEL_47;
    }

LABEL_40:
    v52 = v53;
    goto LABEL_47;
  }

  if ((v61 & 2) == 0)
  {
    if ((v62 - 1) > 1u)
    {
      if (v28)
      {
        v52 = 8;
      }

      else
      {
        v52 = 0;
      }
    }

    else if (v28)
    {
      v52 = 12;
    }

    else
    {
      v52 = 4;
    }

    goto LABEL_47;
  }

  if ((v62 - 1) >= 2u)
  {
    v52 = 9;
  }

  else
  {
    v52 = 13;
  }

  v53 = 5;
  if ((v62 - 1) >= 2u)
  {
    v53 = 1;
  }

  if ((v28 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_47:
  v54 = swift_task_alloc();
  *(v0 + 920) = v54;
  *v54 = v0;
  v54[1] = sub_19A4BC668;
  v55 = *(v0 + 656);
  v57 = *(v0 + 280);
  v56 = *(v0 + 288);

  return sub_19A46E2B0(v57, v56, v52 | 0x20, v55, v51, v34);
}

uint64_t sub_19A4BC110()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 808);
  v23 = *(v0 + 800);
  v3 = *(v0 + 792);
  v4 = *(v0 + 784);
  v5 = *(v0 + 776);
  v27 = *(v0 + 752);
  v24 = *(v0 + 656);
  v6 = *(v0 + 600);
  v25 = *(v0 + 376) + *(v0 + 1104);
  v7 = *(v0 + 592);
  sub_19A2E0A60(*(v0 + 872), *(v0 + 880));
  sub_19A3E112C((v3 + 16), v5, v4, "sanitizeText", 12, 2);

  v8 = *(v2 + 8);
  *(v0 + 888) = v8;
  *(v0 + 896) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v23);
  v9 = *(v6 + 8);
  *(v0 + 904) = v9;
  *(v0 + 912) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v24, v7);

  type metadata accessor for ImageGenerator();
  sub_19A34F314(*(v25 + *(v27 + 20)), *(v25 + *(v27 + 20) + 8), v0 + 176);
  v10 = *(v0 + 200);
  if (v10)
  {
    v11 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
    v12 = (*(v11 + 72))(v10, v11);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
  }

  else
  {
    sub_19A2F3FA0(v0 + 176, &qword_1EAF9FDA8, &qword_19A581780);
    v12 = 0;
  }

  *(v0 + 936) = v12;
  v13 = *(v0 + 1128);
  v14 = swift_task_alloc();
  *(v0 + 944) = v14;
  *v14 = v0;
  v14[1] = sub_19A4BC77C;
  v15 = *(v0 + 688);
  v16 = *(v0 + 584);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  v19 = *(v0 + 288);
  v20 = *(v0 + 296);
  v21 = *(v0 + 280);

  return sub_19A3C5BC8(v16, v21, v19, v20, v17, v13 & 1, v15, v18);
}

uint64_t sub_19A4BC3C4()
{
  v1 = v0[103];
  v2 = v0[101];
  v3 = v0[100];
  v4 = v0[99];
  v5 = v0[98];
  v6 = v0[97];
  v13 = v0[82];
  v7 = v0[75];
  v8 = v0[74];
  sub_19A2E0A60(v0[109], v0[110]);
  sub_19A3E112C((v4 + 16), v6, v5, "sanitizeText", 12, 2);

  (*(v2 + 8))(v1, v3);
  (*(v7 + 8))(v13, v8);

  v9 = v0[89];
  v10 = v0[88];
  sub_19A4CC068(v0[86], type metadata accessor for TextSanitizer);

  sub_19A2E0A60(v10, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_19A4BC668()
{
  *(*v1 + 928) = v0;

  if (v0)
  {
    v2 = sub_19A4BC3C4;
  }

  else
  {
    v2 = sub_19A4BC110;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A4BC77C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[119] = a1;
  v4[120] = a2;
  v4[121] = v2;

  if (v2)
  {
    v5 = sub_19A4BFE0C;
  }

  else
  {
    v5 = sub_19A4BC8C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_19A4BC8C0()
{
  v126 = v0;
  v1 = *(v0 + 752);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 544);
  v7 = *(v0 + 376) + *(v0 + 1104);
  v8 = *(v1 + 76);

  v9 = MEMORY[0x1E69E7CC0];
  v117 = v8;
  *(v7 + v8) = MEMORY[0x1E69E7CC0];
  v10 = *(v1 + 96);

  *(v7 + v10) = v9;
  v12 = *v2;
  v11 = v2[1];
  v13 = v2[2];
  v14 = *(v3 + 20);
  *(v0 + 1112) = v14;
  sub_19A4CC000(v2 + v14, v4 + *(v6 + 20), type metadata accessor for AugmentedPrompt);
  *v4 = v12;
  v4[1] = v11;
  v4[2] = v13;
  sub_19A4CC000(v4, v5, type metadata accessor for ResolvedTextPrompt);

  v15 = sub_19A31D130(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_19A31D130((v16 > 1), v17 + 1, 1, v15);
  }

  v18 = *(v0 + 560);
  v19 = *(v0 + 552);
  sub_19A4CC068(*(v0 + 568), type metadata accessor for ResolvedTextPrompt);
  v15[2] = v17 + 1;
  sub_19A4CBF58(v18, v15 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17, type metadata accessor for ResolvedTextPrompt);
  *(v7 + v117) = v15;
  swift_beginAccess();

  sub_19A47086C(v20);
  v21 = sub_19A447F04();
  if (!*(v21 + 2))
  {

    v33 = 0;
    v122 = *(v0 + 968);
    v34 = 1;
    goto LABEL_21;
  }

  v22 = *(v0 + 760);
  v23 = *(v0 + 648);
  v24 = *(v0 + 640);
  v25 = *(v0 + 600);
  v26 = *(v0 + 592);
  v27 = *(v0 + 536);
  v28 = *(v0 + 520);
  v118 = *(v0 + 512);
  v121 = *(v0 + 312);
  v22(v24, &v21[(*(v25 + 80) + 32) & ~*(v25 + 80)], v26);

  v115 = *(v25 + 32);
  v115(v23, v24, v26);
  v22(v27, v23, v26);
  (*(v25 + 56))(v27, 0, 1, v26);
  v29 = *(v118 + 48);
  sub_19A33546C(v27, v28, &qword_1EAF9FD80, &unk_19A57B720);
  sub_19A33546C(v121, v28 + v29, &qword_1EAF9FD80, &unk_19A57B720);
  v30 = *(v25 + 48);
  v31 = v30(v28, 1, v26);
  v32 = *(v0 + 592);
  if (v31 != 1)
  {
    sub_19A33546C(*(v0 + 520), *(v0 + 528), &qword_1EAF9FD80, &unk_19A57B720);
    v35 = v30(v28 + v29, 1, v32);
    v36 = *(v0 + 904);
    if (v35 != 1)
    {
      v39 = *(v0 + 632);
      v40 = *(v0 + 592);
      v41 = *(v0 + 536);
      v42 = *(v0 + 528);
      v114 = *(v0 + 520);
      v123 = *(v0 + 1129);
      v119 = *(v0 + 320);
      v115(v39, v28 + v29, v40);
      sub_19A4CBF10(&qword_1EAF9FFB8, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v43 = sub_19A572C2C();
      v36(v39, v40);
      sub_19A2F3FA0(v41, &qword_1EAF9FD80, &unk_19A57B720);
      v36(v42, v40);
      sub_19A2F3FA0(v114, &qword_1EAF9FD80, &unk_19A57B720);
      if (v43)
      {
        v33 = v119;
      }

      else
      {
        v33 = 0;
      }

      v34 = v43 ^ 1 | v123;
      goto LABEL_15;
    }

    v37 = *(v0 + 592);
    v38 = *(v0 + 528);
    sub_19A2F3FA0(*(v0 + 536), &qword_1EAF9FD80, &unk_19A57B720);
    v36(v38, v37);
    goto LABEL_10;
  }

  sub_19A2F3FA0(*(v0 + 536), &qword_1EAF9FD80, &unk_19A57B720);
  if (v30(v28 + v29, 1, v32) != 1)
  {
LABEL_10:
    sub_19A2F3FA0(*(v0 + 520), &qword_1EAFA29A0, &unk_19A58DC08);
    v33 = 0;
    v34 = 1;
    goto LABEL_15;
  }

  sub_19A2F3FA0(*(v0 + 520), &qword_1EAF9FD80, &unk_19A57B720);
  v33 = *(v0 + 320);
  v34 = *(v0 + 1129);
LABEL_15:
  v44 = *(v0 + 968);
  v45 = sub_19A43B828(*(v0 + 648), v33, v34 & 1);
  v46 = *(v0 + 904);
  if (v44)
  {
    v47 = *(v0 + 712);
    v48 = *(v0 + 704);
    v49 = *(v0 + 688);
    v50 = *(v0 + 648);
    v51 = *(v0 + 592);
    v52 = *(v0 + 584);

    v46(v50, v51);
    sub_19A4CC068(v52, type metadata accessor for TextPrompt);
    sub_19A4CC068(v49, type metadata accessor for TextSanitizer);

    sub_19A2E0A60(v48, v47);
LABEL_46:

    v109 = *(v0 + 8);

    return v109();
  }

  if (v45)
  {
    v124 = *(v0 + 648);
    v53 = *(v0 + 592);
    v54 = v45;
    sub_19A4CB924();

    v55 = v54;
    sub_19A41EEC0(v55, v125);
    sub_19A409460(v125, 0);

    v46(v124, v53);
  }

  else
  {
    v46(*(v0 + 648), *(v0 + 592));
  }

  v122 = 0;
LABEL_21:
  v56 = *(v0 + 376) + *(v0 + 1104) + *(*(v0 + 752) + 64);
  *v56 = v33;
  *(v56 + 8) = v34 & 1;
  if (qword_1ED8248B0 != -1)
  {
    swift_once();
  }

  v57 = *(v0 + 752);
  v58 = *(v0 + 376) + *(v0 + 1104);
  v59 = unk_1ED82BD10;
  v116 = qword_1ED82BD08;
  v120 = *(v0 + 736);
  v60 = qword_1ED82BD18;
  v61 = unk_1ED82BD20;
  v62 = v57[26];
  *(v0 + 1116) = v62;
  v63 = (v58 + v62);

  *v63 = v116;
  v63[1] = v59;
  v63[2] = v60;
  v63[3] = v61;
  *(v58 + v57[27]) = 0;
  v64 = v57[30];
  *(v0 + 1120) = v64;
  v65 = (v58 + v64);
  sub_19A331DC8(*(v58 + v64), *(v58 + v64 + 8), *(v58 + v64 + 16), *(v58 + v64 + 24), *(v58 + v64 + 32));
  *v65 = 0;
  v65[1] = 0;
  v65[3] = 0;
  v65[4] = 0;
  v65[2] = 1;
  *(v65 + 37) = 0;
  if (v120)
  {
    (*(*(v0 + 488) + 16))(*(v0 + 672), *(v0 + 360) + ((*(*(v0 + 488) + 80) + 32) & ~*(*(v0 + 488) + 80)), *(v0 + 480));
  }

  v66 = *(v0 + 672);
  (*(v0 + 744))(v66);
  v67 = sub_19A4C5CE4(v66);
  *(v0 + 976) = v67;
  v68 = *(v0 + 672);
  if (v122)
  {
    sub_19A2F3FA0(v68, &qword_1EAF9FDC8, &qword_19A577310);

    *(v0 + 272) = v122;
    v69 = v122;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
    if (swift_dynamicCast())
    {
      v70 = (*(*(v0 + 392) + 88))(*(v0 + 400), *(v0 + 384));
      if (v70 == *MEMORY[0x1E69B25A0])
      {
        v72 = *(v0 + 392);
        v71 = *(v0 + 400);
        v73 = *(v0 + 384);

        (*(v72 + 96))(v71, v73);
        if (qword_1ED824050 != -1)
        {
          swift_once();
        }

        v74 = sub_19A5723FC();
        __swift_project_value_buffer(v74, qword_1ED82BCF0);

        v75 = sub_19A5723DC();
        v76 = sub_19A57355C();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v125[0] = v78;
          *v77 = 136315138;
          v79 = sub_19A57338C();
          v81 = v80;

          v82 = sub_19A31F114(v79, v81, v125);

          *(v77 + 4) = v82;
          _os_log_impl(&dword_19A2DE000, v75, v76, "Changing ModelManagerError.dDTSSS with strings %s to a VGF error.", v77, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v78);
          MEMORY[0x19A902C50](v78, -1, -1);
          MEMORY[0x19A902C50](v77, -1, -1);
        }

        else
        {
        }

        v104 = *(v0 + 712);
        v105 = *(v0 + 704);
        v106 = *(v0 + 688);
        v107 = *(v0 + 584);
        sub_19A335164();
        swift_allocError();
        *v108 = xmmword_19A577090;
        *(v108 + 16) = 3;
        swift_willThrow();
        sub_19A4CC068(v107, type metadata accessor for TextPrompt);
        sub_19A4CC068(v106, type metadata accessor for TextSanitizer);

        v102 = v105;
        v103 = v104;
LABEL_45:
        sub_19A2E0A60(v102, v103);
        goto LABEL_46;
      }

      if (v70 == *MEMORY[0x1E69B2598])
      {

        if (qword_1ED824050 != -1)
        {
          swift_once();
        }

        v93 = sub_19A5723FC();
        __swift_project_value_buffer(v93, qword_1ED82BCF0);
        v94 = sub_19A5723DC();
        v95 = sub_19A57355C();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          *v96 = 0;
          _os_log_impl(&dword_19A2DE000, v94, v95, "Changing ModelManagerError.dDTSS to a VGF error.", v96, 2u);
          MEMORY[0x19A902C50](v96, -1, -1);
        }

        v97 = *(v0 + 712);
        v98 = *(v0 + 704);
        v99 = *(v0 + 688);
        v100 = *(v0 + 584);

        sub_19A335164();
        swift_allocError();
        *v101 = xmmword_19A577090;
        *(v101 + 16) = 3;
        swift_willThrow();
        sub_19A4CC068(v100, type metadata accessor for TextPrompt);
        sub_19A4CC068(v99, type metadata accessor for TextSanitizer);

        v102 = v98;
        v103 = v97;
        goto LABEL_45;
      }

      v90 = *(v0 + 712);
      v91 = *(v0 + 704);
      v110 = *(v0 + 688);
      v112 = *(v0 + 392);
      v111 = *(v0 + 400);
      v113 = *(v0 + 384);
      sub_19A4CC068(*(v0 + 584), type metadata accessor for TextPrompt);
      sub_19A4CC068(v110, type metadata accessor for TextSanitizer);
      (*(v112 + 8))(v111, v113);
    }

    else
    {
      v90 = *(v0 + 712);
      v91 = *(v0 + 704);
      v92 = *(v0 + 688);
      sub_19A4CC068(*(v0 + 584), type metadata accessor for TextPrompt);
      sub_19A4CC068(v92, type metadata accessor for TextSanitizer);
    }

    sub_19A2E0A60(v91, v90);
    goto LABEL_46;
  }

  sub_19A2F3FA0(v68, &qword_1EAF9FDC8, &qword_19A577310);
  v83 = sub_19A4B9374();
  v85 = v84;
  v87 = v86;
  *(v0 + 984) = v83;
  *(v0 + 992) = v84;
  *(v0 + 1000) = v86;
  v88 = swift_task_alloc();
  *(v0 + 1008) = v88;
  *v88 = v0;
  v88[1] = sub_19A4BD7D4;

  return sub_19A43BED0(v0 + 216, v83, v85, v87, v67);
}

uint64_t sub_19A4BD7D4()
{
  v2 = *v1;
  v2[127] = v0;

  sub_19A4CBECC(v2[123], v2[124], v2[125]);
  if (v0)
  {

    v3 = sub_19A4C000C;
  }

  else
  {
    v3 = sub_19A4BD940;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19A4BD940()
{
  v68 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v60 = *(v0 + 240);
  v61 = *(v0 + 232);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v3 = sub_19A5723FC();
  *(v0 + 1024) = __swift_project_value_buffer(v3, qword_1ED82BCF0);

  v4 = sub_19A5723DC();
  v5 = sub_19A57356C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 976);
  v59 = v2;
  if (v6)
  {
    v56 = v5;
    v9 = *(v0 + 280);
    v8 = *(v0 + 288);
    v57 = *(v0 + 976);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v63 = v11;
    *v10 = 136380931;
    *(v10 + 4) = sub_19A31F114(v9, v8, &v63);
    *(v10 + 12) = 2080;
    v64 = v1;
    v65 = v2;
    v66 = v61;
    v67 = v60;

    v12 = PersonIndications.description.getter();
    v14 = v13;

    v15 = sub_19A31F114(v12, v14, &v63);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_19A2DE000, v4, v56, "prompt %{private}s -> %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v11, -1, -1);
    MEMORY[0x19A902C50](v10, -1, -1);
    v7 = v57;
  }

  v58 = *(v0 + 776);
  v16 = *(v0 + 760);
  v17 = *(v0 + 1108);
  v18 = *(v0 + 624);
  v19 = *(v0 + 592);
  v20 = *(v0 + 376) + *(v0 + 1104);
  v21 = (v20 + *(v0 + 1116));

  *v21 = v1;
  v21[1] = v59;
  v21[2] = v61;
  v21[3] = v60;
  v22 = sub_19A39C344();
  v23 = sub_19A39D588();
  v16(v18, v20 + v17, v19);
  v24 = swift_allocObject();
  *(v0 + 1032) = v24;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  if (v58)
  {
    v25 = *(v0 + 1016);
    v26 = *(v0 + 960);
    v27 = *(v0 + 952);
    LOBYTE(v63) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70, &unk_19A57BC90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A576E10;
    *(inited + 32) = 0x657A6974696E6173;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xEF74706D6F725064;
    *(inited + 48) = v27;
    *(inited + 56) = v26;

    v29 = sub_19A330370(inited);
    swift_setDeallocating();
    sub_19A2F3FA0(inited + 32, &qword_1EAFA2F00, &qword_19A578A30);
    sub_19A338028(&v63, v29, &v64);
    if (v25)
    {
      v30 = *(v0 + 904);
      v31 = *(v0 + 624);
      v32 = *(v0 + 592);

      v30(v31, v32);

      v33 = *(v0 + 712);
      v34 = *(v0 + 704);
      v35 = *(v0 + 688);
      sub_19A4CC068(*(v0 + 584), type metadata accessor for TextPrompt);
      sub_19A4CC068(v35, type metadata accessor for TextSanitizer);

      sub_19A2E0A60(v34, v33);

      v36 = *(v0 + 8);

      return v36();
    }

    v38 = v64;
    v39 = v65;

    *(v24 + 16) = v38;
    *(v24 + 24) = v39;
  }

  v62 = v23;
  *(v0 + 1040) = swift_task_alloc();
  sub_19A57234C();
  sub_19A5722EC();
  v40 = sub_19A57234C();
  v41 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v40, v41, v43, "sanitizeText", "", v42, 2u);
    MEMORY[0x19A902C50](v42, -1, -1);
  }

  v44 = *(v0 + 840);

  swift_task_alloc();
  v44();
  swift_allocObject();
  *(v0 + 1048) = sub_19A5723AC();

  if (*(v24 + 24))
  {

    v45 = sub_19A4CC0C8;
  }

  else
  {
    v45 = 0;
    v24 = 0;
  }

  *(v0 + 1064) = v24;
  *(v0 + 1056) = v45;
  v46 = *(v0 + 368);
  v47 = (v22 - 1);
  if (*(v0 + 776))
  {
    v48 = v47 >= 2;
    if ((v46 & 2) == 0)
    {
      if (v47 >= 2)
      {
        if (v62)
        {
          v49 = 10;
        }

        else
        {
          v49 = 2;
        }
      }

      else if (v62)
      {
        v49 = 14;
      }

      else
      {
        v49 = 6;
      }

      goto LABEL_48;
    }

    if (v47 >= 2)
    {
      v49 = 11;
    }

    else
    {
      v49 = 15;
    }

    v50 = 3;
    if (!v48)
    {
      v50 = 7;
    }

    if (v62)
    {
      goto LABEL_48;
    }
  }

  else
  {
    if ((v46 & 2) == 0)
    {
      if (v47 > 1)
      {
        if (v62)
        {
          v49 = 8;
        }

        else
        {
          v49 = 0;
        }
      }

      else if (v62)
      {
        v49 = 12;
      }

      else
      {
        v49 = 4;
      }

      goto LABEL_48;
    }

    v51 = v47 >= 2;
    if (v47 >= 2)
    {
      v49 = 9;
    }

    else
    {
      v49 = 13;
    }

    v50 = 5;
    if (v51)
    {
      v50 = 1;
    }

    if (v62)
    {
      goto LABEL_48;
    }
  }

  v49 = v50;
LABEL_48:
  v52 = swift_task_alloc();
  *(v0 + 1072) = v52;
  *v52 = v0;
  v52[1] = sub_19A4BE190;
  v53 = *(v0 + 960);
  v54 = *(v0 + 952);
  v55 = *(v0 + 624);

  return sub_19A46E2B0(v54, v53, v49, v55, v45, v24);
}

uint64_t sub_19A4BE190()
{
  *(*v1 + 1080) = v0;

  if (v0)
  {

    v2 = sub_19A4BEF90;
  }

  else
  {
    v2 = sub_19A4BE2AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A4BE2AC()
{
  v95 = v0;
  v1 = *(v0 + 1040);
  v2 = *(v0 + 1032);
  v89 = *(v0 + 904);
  v87 = *(v0 + 800);
  v88 = *(v0 + 888);
  v3 = *(v0 + 784);
  v4 = *(v0 + 776);
  v92 = *(v0 + 752);
  v5 = *(v0 + 624);
  v6 = *(v0 + 376) + *(v0 + 1104);
  v7 = (v6 + *(v0 + 1116));
  v8 = *(v0 + 592);
  sub_19A2E0A60(*(v0 + 1056), *(v0 + 1064));
  sub_19A3E112C((v2 + 16), v4, v3, "sanitizeText", 12, 2);

  v88(v1, v87);
  v89(v5, v8);

  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v94[0] = *v7;
  v94[1] = v9;
  v94[2] = v10;
  v94[3] = v11;
  v12 = *(v92 + 116);
  *(v0 + 1124) = v12;
  LOBYTE(v7) = sub_19A4CBB6C(v94, *(v6 + v12));

  if (v7)
  {
    v13 = (*(v0 + 376) + *(v0 + 1104) + *(v0 + 1116));
    v15 = qword_1ED82BD08;
    v14 = unk_1ED82BD10;
    v16 = qword_1ED82BD18;
    v17 = unk_1ED82BD20;

    *v13 = v15;
    v13[1] = v14;
    v13[2] = v16;
    v13[3] = v17;
  }

  v18 = *(*(v0 + 376) + *(v0 + 1104) + *(*(v0 + 752) + 24));
  v19 = (v18 + 32);
  v20 = *(v18 + 16);
  while (1)
  {
    if (!v20)
    {

      v22 = *(v0 + 1080);
      v23 = *(v0 + 376);
      v24 = v23 + *(*(v0 + 728) + 32);
      v25 = type metadata accessor for UserPromptRewriter(0);
      v26 = (v24 + *(v25 + 88));
      if (!v26[1] && *(v24 + *(v25 + 60)) == 1)
      {
        v91 = v25;
        LODWORD(v27) = *(v23 + *(v0 + 1104) + *(v0 + 1124));
        sub_19A36D270(*(v0 + 424));
        if (v22)
        {

          v93 = 0;
          v28 = 0;
        }

        else
        {
          v47 = *(v0 + 424);
          sub_19A570A4C();
          v48 = sub_19A570BEC();
          (*(*(v48 - 8) + 8))(v47, v48);
          sub_19A4CBF10(&qword_1ED825330, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
          v93 = sub_19A572F7C();
          v28 = v49;
        }

        v50 = sub_19A5723DC();
        v51 = sub_19A57356C();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v94[0] = v53;
          *v52 = 136315394;
          v90 = v27;
          if (v28)
          {
            v54 = v93;
          }

          else
          {
            v54 = 0;
          }

          if (v28)
          {
            v55 = v28;
          }

          else
          {
            v55 = 0xE000000000000000;
          }

          v27 = sub_19A31F114(v54, v55, v94);

          *(v52 + 4) = v27;
          LOBYTE(v27) = v90;
          *(v52 + 12) = 1024;
          *(v52 + 14) = v90;
          _os_log_impl(&dword_19A2DE000, v50, v51, "Assigning assembled prompt to user prompt rewriter: %s hasSmiley: %{BOOL}d", v52, 0x12u);
          __swift_destroy_boxed_opaque_existential_0Tm(v53);
          MEMORY[0x19A902C50](v53, -1, -1);
          MEMORY[0x19A902C50](v52, -1, -1);
        }

        v56 = *(v0 + 600);
        v57 = *(v0 + 592);
        v58 = *(v0 + 312);
        *v26 = v93;
        v26[1] = v28;
        *(v24 + *(v91 + 92)) = v27;
        if ((*(v56 + 48))(v58, 1, v57) == 1)
        {
          v59 = sub_19A447F04();
          if (*(v59 + 2))
          {
            v60 = *(v0 + 760);
            v61 = *(v0 + 616);
            v62 = *(v0 + 608);
            v63 = *(v0 + 592);
            v64 = *(*(v0 + 600) + 80);
            v60(v61, &v59[(v64 + 32) & ~v64], v63);

            v60(v62, v61, v63);
            v65 = sub_19A5723DC();
            v66 = sub_19A57356C();
            v67 = os_log_type_enabled(v65, v66);
            v68 = *(v0 + 904);
            v69 = *(v0 + 608);
            v70 = *(v0 + 592);
            if (v67)
            {
              v71 = swift_slowAlloc();
              v72 = swift_slowAlloc();
              v94[0] = v72;
              *v71 = 136315138;
              sub_19A4CBF10(&qword_1ED8252D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
              v73 = sub_19A573EDC();
              v75 = v74;
              v68(v69, v70);
              v76 = sub_19A31F114(v73, v75, v94);

              *(v71 + 4) = v76;
              _os_log_impl(&dword_19A2DE000, v65, v66, "Assigning entityUUID to definition session: %s", v71, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v72);
              MEMORY[0x19A902C50](v72, -1, -1);
              MEMORY[0x19A902C50](v71, -1, -1);
            }

            else
            {

              v68(v69, v70);
            }

            v77 = *(v0 + 616);
            v78 = *(v0 + 600);
            v79 = *(v0 + 592);
            v80 = *(v0 + 376);
            v81 = *(*(v0 + 728) + 28);
            sub_19A2F3FA0(v80 + v81, &qword_1EAF9FD80, &unk_19A57B720);
            (*(v78 + 32))(v80 + v81, v77, v79);
            (*(v78 + 56))(v80 + v81, 0, 1, v79);
          }

          else
          {
          }
        }
      }

      v82 = *(v0 + 712);
      v83 = *(v0 + 704);
      v84 = *(v0 + 688);
      v85 = *(v0 + 584);
      sub_19A4C64E0();
      sub_19A4CC068(v85, type metadata accessor for TextPrompt);
      sub_19A4CC068(v84, type metadata accessor for TextSanitizer);

      sub_19A2E0A60(v83, v82);

      v42 = *(v0 + 8);
      goto LABEL_40;
    }

    if (*v19 > 4u && *v19 != 6)
    {
      break;
    }

    v21 = sub_19A573F1C();

    ++v19;
    --v20;
    if (v21)
    {
      goto LABEL_14;
    }
  }

LABEL_14:
  v29 = *(v0 + 744);
  v30 = *(v0 + 664);
  v32 = *(v0 + 488);
  v31 = *(v0 + 496);
  v33 = *(v0 + 480);
  if (*(v0 + 736))
  {
    (*(v32 + 16))(*(v0 + 664), *(v0 + 360) + ((*(v32 + 80) + 32) & ~*(v32 + 80)), *(v0 + 480));
    v29(v30, 0, 1, v33);
    (*(v32 + 32))(v31, v30, v33);
  }

  else
  {
    v29(*(v0 + 664), 1, 1, *(v0 + 480));
    sub_19A57103C();
    if ((*(v32 + 48))(v30, 1, v33) != 1)
    {
      sub_19A2F3FA0(*(v0 + 664), &qword_1EAF9FDC8, &qword_19A577310);
    }
  }

  v34 = *(v0 + 1080);
  sub_19A4C6000(*(v0 + 496), *(v0 + 504));
  if (v34)
  {
    v35 = *(v0 + 712);
    v36 = *(v0 + 704);
    v37 = *(v0 + 688);
    v38 = *(v0 + 584);
    v39 = *(v0 + 488);
    v40 = *(v0 + 496);
    v41 = *(v0 + 480);

    (*(v39 + 8))(v40, v41);
    sub_19A4CC068(v38, type metadata accessor for TextPrompt);
    sub_19A4CC068(v37, type metadata accessor for TextSanitizer);

    sub_19A2E0A60(v36, v35);

    v42 = *(v0 + 8);
LABEL_40:

    return v42();
  }

  (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));
  v43 = swift_task_alloc();
  *(v0 + 1088) = v43;
  *v43 = v0;
  v43[1] = sub_19A4BF250;
  v44 = *(v0 + 960);
  v45 = *(v0 + 952);
  v46 = *(v0 + 472);

  return MEMORY[0x1EEE33C50](v46, v45, v44);
}

uint64_t sub_19A4BEF90()
{
  v1 = v0[130];
  v2 = v0[129];
  v14 = v0[113];
  v3 = v0[111];
  v4 = v0[100];
  v5 = v0[98];
  v6 = v0[97];
  v7 = v0[78];
  v8 = v0[74];
  sub_19A2E0A60(v0[132], v0[133]);
  sub_19A3E112C((v2 + 16), v6, v5, "sanitizeText", 12, 2);

  v3(v1, v4);
  v14(v7, v8);

  v9 = v0[89];
  v10 = v0[88];
  v11 = v0[86];
  sub_19A4CC068(v0[73], type metadata accessor for TextPrompt);
  sub_19A4CC068(v11, type metadata accessor for TextSanitizer);

  sub_19A2E0A60(v10, v9);

  v12 = v0[1];

  return v12();
}

uint64_t sub_19A4BF250()
{
  *(*v1 + 1096) = v0;

  if (v0)
  {
    v2 = sub_19A4BFBC0;
  }

  else
  {
    v2 = sub_19A4BF364;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A4BF364()
{
  v73 = v0;
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v4 = *(v0 + 448);
  v3 = *(v0 + 456);
  v5 = *(v0 + 432);
  v6 = *(v0 + 440);
  v7 = sub_19A5720AC();
  (*(v6 + 104))(v4, *MEMORY[0x1E69CA6E0], v5);
  v8 = sub_19A41F704(v4, v7);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v9 = v8 ^ 1;
  v10 = sub_19A3A2DC0((v8 ^ 1) & 1);
  if (!v10)
  {
    sub_19A4CC068(*(v0 + 504), type metadata accessor for MessagesBackgroundEstimator);
LABEL_8:
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v18 = 0x100000000;
    goto LABEL_9;
  }

  v11 = *(v0 + 504);
  if (!*(v10 + 16))
  {
    sub_19A4CC068(*(v0 + 504), type metadata accessor for MessagesBackgroundEstimator);

    goto LABEL_8;
  }

  v13 = *(v10 + 32);
  v12 = *(v10 + 40);
  v15 = *(v10 + 48);
  v14 = *(v10 + 56);
  v16 = *(v10 + 64);
  v17 = *(v10 + 68);

  sub_19A4CC068(v11, type metadata accessor for MessagesBackgroundEstimator);
  if (v17)
  {
    v18 = 0x100000000;
  }

  else
  {
    v18 = 0;
  }

LABEL_9:
  v19 = *(v0 + 376) + *(v0 + 1104) + *(v0 + 1120);
  sub_19A331DC8(*v19, *(v19 + 8), *(v19 + 16), *(v19 + 24), *(v19 + 32));
  *v19 = v9 & 1;
  *(v19 + 8) = v13;
  *(v19 + 16) = v12;
  *(v19 + 24) = v15;
  *(v19 + 32) = v14;
  *(v19 + 44) = BYTE4(v18);
  *(v19 + 40) = v18 | v16;
  v20 = *(v0 + 1096);
  v21 = *(v0 + 376);
  v22 = v21 + *(*(v0 + 728) + 32);
  v23 = type metadata accessor for UserPromptRewriter(0);
  v24 = (v22 + *(v23 + 88));
  if (!v24[1] && *(v22 + *(v23 + 60)) == 1)
  {
    v71 = v23;
    LODWORD(v25) = *(v21 + *(v0 + 1104) + *(v0 + 1124));
    sub_19A36D270(*(v0 + 424));
    if (v20)
    {

      v26 = 0;
      v27 = 0;
    }

    else
    {
      v28 = *(v0 + 424);
      sub_19A570A4C();
      v29 = sub_19A570BEC();
      (*(*(v29 - 8) + 8))(v28, v29);
      sub_19A4CBF10(&qword_1ED825330, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
      v26 = sub_19A572F7C();
      v27 = v30;
    }

    v31 = sub_19A5723DC();
    v32 = sub_19A57356C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v72[0] = v34;
      *v33 = 136315394;
      v70 = v25;
      if (v27)
      {
        v35 = v26;
      }

      else
      {
        v35 = 0;
      }

      v69 = v26;
      if (v27)
      {
        v36 = v27;
      }

      else
      {
        v36 = 0xE000000000000000;
      }

      v25 = sub_19A31F114(v35, v36, v72);
      v26 = v69;

      *(v33 + 4) = v25;
      LOBYTE(v25) = v70;
      *(v33 + 12) = 1024;
      *(v33 + 14) = v70;
      _os_log_impl(&dword_19A2DE000, v31, v32, "Assigning assembled prompt to user prompt rewriter: %s hasSmiley: %{BOOL}d", v33, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x19A902C50](v34, -1, -1);
      MEMORY[0x19A902C50](v33, -1, -1);
    }

    v37 = *(v0 + 600);
    v38 = *(v0 + 592);
    v39 = *(v0 + 312);
    *v24 = v26;
    v24[1] = v27;
    *(v22 + *(v71 + 92)) = v25;
    if ((*(v37 + 48))(v39, 1, v38) == 1)
    {
      v40 = sub_19A447F04();
      if (*(v40 + 2))
      {
        v41 = *(v0 + 760);
        v42 = *(v0 + 616);
        v43 = *(v0 + 608);
        v44 = *(v0 + 592);
        v45 = *(*(v0 + 600) + 80);
        v41(v42, &v40[(v45 + 32) & ~v45], v44);

        v41(v43, v42, v44);
        v46 = sub_19A5723DC();
        v47 = sub_19A57356C();
        v48 = os_log_type_enabled(v46, v47);
        v49 = *(v0 + 904);
        v50 = *(v0 + 608);
        v51 = *(v0 + 592);
        if (v48)
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v72[0] = v53;
          *v52 = 136315138;
          sub_19A4CBF10(&qword_1ED8252D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v54 = sub_19A573EDC();
          v56 = v55;
          v49(v50, v51);
          v57 = sub_19A31F114(v54, v56, v72);

          *(v52 + 4) = v57;
          _os_log_impl(&dword_19A2DE000, v46, v47, "Assigning entityUUID to definition session: %s", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v53);
          MEMORY[0x19A902C50](v53, -1, -1);
          MEMORY[0x19A902C50](v52, -1, -1);
        }

        else
        {

          v49(v50, v51);
        }

        v58 = *(v0 + 616);
        v59 = *(v0 + 600);
        v60 = *(v0 + 592);
        v61 = *(v0 + 376);
        v62 = *(*(v0 + 728) + 28);
        sub_19A2F3FA0(v61 + v62, &qword_1EAF9FD80, &unk_19A57B720);
        (*(v59 + 32))(v61 + v62, v58, v60);
        (*(v59 + 56))(v61 + v62, 0, 1, v60);
      }

      else
      {
      }
    }
  }

  v63 = *(v0 + 712);
  v64 = *(v0 + 704);
  v65 = *(v0 + 688);
  v66 = *(v0 + 584);
  sub_19A4C64E0();
  sub_19A4CC068(v66, type metadata accessor for TextPrompt);
  sub_19A4CC068(v65, type metadata accessor for TextSanitizer);

  sub_19A2E0A60(v64, v63);

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_19A4BFBC0()
{
  v1 = v0[89];
  v2 = v0[88];
  v3 = v0[86];
  v4 = v0[73];
  v5 = v0[63];

  sub_19A4CC068(v5, type metadata accessor for MessagesBackgroundEstimator);
  sub_19A4CC068(v4, type metadata accessor for TextPrompt);
  sub_19A4CC068(v3, type metadata accessor for TextSanitizer);

  sub_19A2E0A60(v2, v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_19A4BFE0C()
{
  v1 = v0[89];
  v2 = v0[88];
  sub_19A4CC068(v0[86], type metadata accessor for TextSanitizer);

  sub_19A2E0A60(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_19A4C000C()
{
  v41 = v0;

  v1 = *(v0 + 1016);
  *(v0 + 272) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
  if (!swift_dynamicCast())
  {
    v16 = *(v0 + 712);
    v17 = *(v0 + 704);
    v18 = *(v0 + 688);
    sub_19A4CC068(*(v0 + 584), type metadata accessor for TextPrompt);
    sub_19A4CC068(v18, type metadata accessor for TextSanitizer);
    goto LABEL_8;
  }

  v3 = (*(*(v0 + 392) + 88))(*(v0 + 400), *(v0 + 384));
  if (v3 != *MEMORY[0x1E69B25A0])
  {
    if (v3 == *MEMORY[0x1E69B2598])
    {

      if (qword_1ED824050 != -1)
      {
        swift_once();
      }

      v21 = sub_19A5723FC();
      __swift_project_value_buffer(v21, qword_1ED82BCF0);
      v22 = sub_19A5723DC();
      v23 = sub_19A57355C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_19A2DE000, v22, v23, "Changing ModelManagerError.dDTSS to a VGF error.", v24, 2u);
        MEMORY[0x19A902C50](v24, -1, -1);
      }

      v25 = *(v0 + 712);
      v26 = *(v0 + 704);
      v27 = *(v0 + 688);
      v28 = *(v0 + 584);

      sub_19A335164();
      swift_allocError();
      *v29 = xmmword_19A577090;
      *(v29 + 16) = 3;
      swift_willThrow();
      sub_19A4CC068(v28, type metadata accessor for TextPrompt);
      sub_19A4CC068(v27, type metadata accessor for TextSanitizer);

      v19 = v26;
      goto LABEL_17;
    }

    v16 = *(v0 + 712);
    v17 = *(v0 + 704);
    v36 = *(v0 + 688);
    v38 = *(v0 + 392);
    v37 = *(v0 + 400);
    v39 = *(v0 + 384);
    sub_19A4CC068(*(v0 + 584), type metadata accessor for TextPrompt);
    sub_19A4CC068(v36, type metadata accessor for TextSanitizer);
    (*(v38 + 8))(v37, v39);
LABEL_8:

    v19 = v17;
    v20 = v16;
    goto LABEL_18;
  }

  v5 = *(v0 + 392);
  v4 = *(v0 + 400);
  v6 = *(v0 + 384);

  (*(v5 + 96))(v4, v6);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v7 = sub_19A5723FC();
  __swift_project_value_buffer(v7, qword_1ED82BCF0);

  v8 = sub_19A5723DC();
  v9 = sub_19A57355C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v40 = v11;
    *v10 = 136315138;
    v12 = sub_19A57338C();
    v14 = v13;

    v15 = sub_19A31F114(v12, v14, &v40);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_19A2DE000, v8, v9, "Changing ModelManagerError.dDTSSS with strings %s to a VGF error.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x19A902C50](v11, -1, -1);
    MEMORY[0x19A902C50](v10, -1, -1);
  }

  else
  {
  }

  v25 = *(v0 + 712);
  v30 = *(v0 + 704);
  v31 = *(v0 + 688);
  v32 = *(v0 + 584);
  sub_19A335164();
  swift_allocError();
  *v33 = xmmword_19A577090;
  *(v33 + 16) = 3;
  swift_willThrow();
  sub_19A4CC068(v32, type metadata accessor for TextPrompt);
  sub_19A4CC068(v31, type metadata accessor for TextSanitizer);

  v19 = v30;
LABEL_17:
  v20 = v25;
LABEL_18:
  sub_19A2E0A60(v19, v20);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t DefinitionSession.lcmScale.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DefinitionSession(0) + 88);
  result = type metadata accessor for GenerationRecipe(0);
  v5 = v3 + *(result + 48);
  *v5 = a1;
  *(v5 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t DefinitionSession.availableImageStyles.getter()
{
  type metadata accessor for ImageGenerator();
  v1 = v0 + *(type metadata accessor for DefinitionSession(0) + 88);
  v2 = type metadata accessor for GenerationRecipe(0);
  sub_19A34F314(*(v1 + *(v2 + 20)), *(v1 + *(v2 + 20) + 8), &v7);
  if (v8)
  {
    sub_19A3355E8(&v7, v9);
    v3 = v10;
    v4 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v5 = (*(*(v4 + 32) + 8))(v3);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  else
  {
    sub_19A2F3FA0(&v7, &qword_1EAF9FDA8, &qword_19A581780);
    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t sub_19A4C07D8(uint64_t a1, _BYTE *a2)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  *(v3 + 26) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_19A4C0800, 0, 0);
}

uint64_t sub_19A4C0800()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v1 + 16);
  *(v0 + 48) = v3;
  v4 = v2 + *(type metadata accessor for DefinitionSession(0) + 36);
  v5 = *(v4 + *(_s17AssignmentOptionsVMa(0) + 72));
  if (v5 < v3)
  {
    sub_19A335164();
    swift_allocError();
    *v6 = v3;
    *(v6 + 8) = v5;
    *(v6 + 16) = 2;
    swift_willThrow();
    v7 = *(v0 + 8);
LABEL_8:

    return v7();
  }

  if (!v3)
  {

    sub_19A4C64E0();
    v7 = *(v0 + 8);
    goto LABEL_8;
  }

  *(v0 + 56) = 0;
  v8 = *(v0 + 26);
  v9 = *(v1 + 40);
  v10 = *(v1 + 32);
  *(v0 + 64) = v10;
  *(v0 + 16) = v10;
  *(v0 + 24) = v9;
  *(v0 + 25) = v8;
  v11 = v10;
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_19A4C09AC;

  return sub_19A4C7030((v0 + 16), (v0 + 25), 1, v3 != 1);
}

uint64_t sub_19A4C09AC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {

    v2 = sub_19A4C0C10;
  }

  else
  {
    v2 = sub_19A4C0AC8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A4C0AC8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56) + 1;

  if (v2 == v1)
  {

    sub_19A4C64E0();
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 48);
    v6 = *(v0 + 56) + 1;
    *(v0 + 56) = v6;
    v7 = *(v0 + 26);
    v8 = *(v0 + 32) + 16 * v6;
    v9 = *(v8 + 40);
    v10 = *(v8 + 32);
    *(v0 + 64) = v10;
    *(v0 + 16) = v10;
    *(v0 + 24) = v9;
    *(v0 + 25) = v7;
    v11 = v10;
    v12 = swift_task_alloc();
    *(v0 + 72) = v12;
    *v12 = v0;
    v12[1] = sub_19A4C09AC;

    return sub_19A4C7030((v0 + 16), (v0 + 25), 0, v5 != 1);
  }
}

uint64_t sub_19A4C0C10()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A4C0C74(uint64_t *a1, uint64_t *a2, uint64_t *a3, char a4, uint64_t a5, char a6)
{
  *(v7 + 170) = a6;
  *(v7 + 169) = a4;
  v8 = *a1;
  *(v7 + 176) = v6;
  *(v7 + 184) = v8;
  *(v7 + 171) = *(a1 + 8);
  v9 = *a2;
  *(v7 + 296) = *(a2 + 8);
  v10 = *a3;
  *(v7 + 192) = v9;
  *(v7 + 200) = v10;
  *(v7 + 297) = *(a3 + 8);
  *(v7 + 208) = *a5;
  *(v7 + 298) = *(a5 + 8);
  return MEMORY[0x1EEE6DFA0](sub_19A4C0CD4, 0, 0);
}

uint64_t sub_19A4C0CD4()
{
  v84 = v0;
  v1 = *(v0 + 176);
  type metadata accessor for ImageGenerator();
  v2 = type metadata accessor for DefinitionSession(0);
  *(v0 + 216) = v2;
  v3 = *(v2 + 88);
  *(v0 + 172) = v3;
  v4 = v1 + v3;
  v5 = type metadata accessor for GenerationRecipe(0);
  *(v0 + 224) = v5;
  sub_19A34F314(*(v4 + *(v5 + 20)), *(v4 + *(v5 + 20) + 8), v0 + 120);
  v6 = *(v0 + 144);
  if (!v6)
  {
    sub_19A2F3FA0(v0 + 120, &qword_1EAF9FDA8, &qword_19A581780);
    goto LABEL_6;
  }

  v7 = *(v0 + 152);
  __swift_project_boxed_opaque_existential_1((v0 + 120), *(v0 + 144));
  (*(v7 + 48))(&v78, v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));
  if (v81)
  {
LABEL_6:
    sub_19A335164();
    swift_allocError();
    *v12 = 0xD00000000000001FLL;
    *(v12 + 8) = 0x800000019A59BEF0;
    *(v12 + 16) = 0;
    swift_willThrow();
    goto LABEL_7;
  }

  v8 = *(v0 + 171);
  v82 = *(v0 + 184);
  v83 = v8;
  sub_19A41ED10(v80, &v78, 2);
  *(v0 + 232) = v9;
  v10 = v9;
  sub_19A4B9270(&v78);
  if (v81)
  {
    sub_19A335164();
    swift_allocError();
    *v11 = 0xD000000000000020;
    *(v11 + 8) = 0x800000019A59BF10;
    *(v11 + 16) = 0;
    swift_willThrow();

LABEL_7:
    v13 = *(v0 + 8);
LABEL_8:

    return v13();
  }

  v15 = *(v0 + 297);
  v82 = *(v0 + 200);
  v83 = v15;
  sub_19A41ED10(v80, &v78, 2);
  *(v0 + 240) = v16;
  v17 = *(v0 + 298);
  v78 = *(v0 + 208);
  LOBYTE(v79) = v17;
  sub_19A4C697C(&v78);
  *(v0 + 248) = v18;
  v19 = v18;
  sub_19A4C6648(&v78);
  v21 = v78;
  v20 = v79;
  v22 = v80;
  if (CVPixelBufferGetWidth(v19) == v21 && CVPixelBufferGetHeight(v19) == v20 && CVPixelBufferGetPixelFormatType(v19) == v22)
  {
    v23 = v19;
  }

  else
  {
    sub_19A4C6648(&v78);
    v24 = *(v0 + 298);
    v82 = *(v0 + 208);
    v83 = v24;
    sub_19A41ED10(v80, &v78, 2);
  }

  *(v0 + 256) = v23;
  if (*(v0 + 170) != 1)
  {
    v29 = *(v0 + 240);
    v30 = *(v0 + 224);
    v65 = v30;
    v66 = *(v0 + 248);
    v76 = *(v0 + 297);
    v75 = *(v0 + 296);
    v72 = *(v0 + 200);
    v73 = *(v0 + 192);
    v74 = *(v0 + 171);
    v70 = *(v0 + 216);
    v71 = *(v0 + 184);
    v68 = v23;
    v69 = *(v0 + 176);
    v31 = v69 + *(v0 + 172);
    v67 = *(v0 + 169);
    v32 = *(v0 + 232);
    v33 = v29;
    Width = CVPixelBufferGetWidth(v32);
    Height = CVPixelBufferGetHeight(v32);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v32);
    type metadata accessor for ResolvedImage.HiddenBufferData();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_19A5770A0;
    v35 = v33;
    v61 = CVPixelBufferGetWidth(v35);
    v60 = CVPixelBufferGetHeight(v35);
    v36 = CVPixelBufferGetPixelFormatType(v35);

    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_19A5770A0;
    v38 = v31 + *(v30 + 92);
    v39 = *(v38 + 96);
    v41 = *(v38 + 64);
    v40 = *(v38 + 80);
    *(v0 + 64) = *(v38 + 48);
    *(v0 + 80) = v41;
    *(v0 + 96) = v40;
    *(v0 + 112) = v39;
    v43 = *(v38 + 16);
    v42 = *(v38 + 32);
    *(v0 + 16) = *v38;
    *(v0 + 32) = v43;
    *(v0 + 48) = v42;
    v44 = v66;
    sub_19A2F3FA0(v0 + 16, &qword_1EAFA0198, &unk_19A578D30);
    *v38 = Width;
    *(v38 + 8) = Height;
    *(v38 + 16) = PixelFormatType;
    *(v38 + 24) = v32;
    *(v38 + 32) = v34;
    *(v38 + 40) = v61;
    *(v38 + 48) = v60;
    *(v38 + 56) = v36;
    *(v38 + 64) = v35;
    *(v38 + 72) = v37;
    *(v38 + 80) = v67;
    *(v38 + 88) = 0;
    *(v38 + 96) = 0;
    v45 = v31;
    sub_19A409388(v68);
    v46 = v44;
    v47 = CVPixelBufferGetWidth(v46);
    v48 = CVPixelBufferGetHeight(v46);
    v49 = CVPixelBufferGetPixelFormatType(v46);

    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_19A5770A0;

    v51 = v45 + *(v65 + 88);
    sub_19A331C90(*v51, *(v51 + 8), *(v51 + 16), *(v51 + 24));
    *v51 = v47;
    *(v51 + 8) = v48;
    *(v51 + 16) = v49;
    *(v51 + 24) = v46;
    *(v51 + 32) = v50;
    v52 = v69 + *(v70 + 56);
    v53 = *(v52 + 8);
    v77 = *v52;
    v54 = *(v52 + 16);
    v55 = *(v52 + 24);
    v56 = *(v52 + 32);
    v57 = v72;
    v58 = v71;
    v59 = v73;
    sub_19A335400(v77, v53, v54, v55, v56);
    *v52 = v71;
    *(v52 + 8) = v74;
    *(v52 + 16) = v73;
    *(v52 + 24) = v75;
    *(v52 + 32) = v72;
    *(v52 + 40) = v76;
    v13 = *(v0 + 8);
    goto LABEL_8;
  }

  v25 = *(v0 + 171);
  v26 = *(v0 + 176);
  *(v0 + 160) = *(v0 + 184);
  *(v0 + 168) = v25;
  v27 = *(v26 + *(v2 + 60));
  v28 = swift_task_alloc();
  *(v0 + 264) = v28;
  *v28 = v0;
  v28[1] = sub_19A4C137C;

  return sub_19A2EEF6C((v0 + 160), v27);
}

uint64_t sub_19A4C137C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 272) = v2;

  if (v2)
  {
    v7 = sub_19A4C17C0;
  }

  else
  {
    *(v6 + 280) = a2;
    *(v6 + 288) = a1;
    v7 = sub_19A4C14B0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_19A4C14B0()
{
  v42 = *(v0 + 280);
  v43 = *(v0 + 288);
  v44 = *(v0 + 256);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v39 = v2;
  v40 = *(v0 + 248);
  v46 = *(v0 + 216);
  v52 = *(v0 + 297);
  v51 = *(v0 + 296);
  v48 = *(v0 + 200);
  v49 = *(v0 + 192);
  v50 = *(v0 + 171);
  v47 = *(v0 + 184);
  v45 = *(v0 + 176);
  v3 = v45 + *(v0 + 172);
  v41 = *(v0 + 169);
  v4 = *(v0 + 232);
  v5 = v1;
  Width = CVPixelBufferGetWidth(v4);
  Height = CVPixelBufferGetHeight(v4);
  PixelFormatType = CVPixelBufferGetPixelFormatType(v4);
  type metadata accessor for ResolvedImage.HiddenBufferData();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19A5770A0;
  v7 = v5;
  v35 = CVPixelBufferGetWidth(v7);
  v34 = CVPixelBufferGetHeight(v7);
  v8 = CVPixelBufferGetPixelFormatType(v7);

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_19A5770A0;
  v10 = v3 + *(v2 + 92);
  v11 = *(v10 + 96);
  v13 = *(v10 + 64);
  v12 = *(v10 + 80);
  *(v0 + 64) = *(v10 + 48);
  *(v0 + 80) = v13;
  *(v0 + 96) = v12;
  *(v0 + 112) = v11;
  v15 = *(v10 + 16);
  v14 = *(v10 + 32);
  *(v0 + 16) = *v10;
  *(v0 + 32) = v15;
  *(v0 + 48) = v14;
  v16 = v40;
  sub_19A2F3FA0(v0 + 16, &qword_1EAFA0198, &unk_19A578D30);
  *v10 = Width;
  *(v10 + 8) = Height;
  *(v10 + 16) = PixelFormatType;
  *(v10 + 24) = v4;
  *(v10 + 32) = v6;
  *(v10 + 40) = v35;
  *(v10 + 48) = v34;
  *(v10 + 56) = v8;
  *(v10 + 64) = v7;
  *(v10 + 72) = v9;
  *(v10 + 80) = v41;
  *(v10 + 88) = v43;
  *(v10 + 96) = v42;
  v17 = v3;
  sub_19A409388(v44);
  v18 = v16;
  v19 = CVPixelBufferGetWidth(v18);
  v20 = CVPixelBufferGetHeight(v18);
  v21 = CVPixelBufferGetPixelFormatType(v18);

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_19A5770A0;

  v23 = v17 + *(v39 + 88);
  sub_19A331C90(*v23, *(v23 + 8), *(v23 + 16), *(v23 + 24));
  *v23 = v19;
  *(v23 + 8) = v20;
  *(v23 + 16) = v21;
  *(v23 + 24) = v18;
  *(v23 + 32) = v22;
  v24 = v45 + *(v46 + 56);
  v25 = *(v24 + 8);
  v53 = *v24;
  v26 = *(v24 + 16);
  v27 = *(v24 + 24);
  v28 = *(v24 + 32);
  v29 = v48;
  v30 = v47;
  v31 = v49;
  sub_19A335400(v53, v25, v26, v27, v28);
  *v24 = v47;
  *(v24 + 8) = v50;
  *(v24 + 16) = v49;
  *(v24 + 24) = v51;
  *(v24 + 32) = v48;
  *(v24 + 40) = v52;
  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_19A4C17C0()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_19A4C185C()
{
  v1 = *(v0 + 16);
  v2 = v1 + *(type metadata accessor for DefinitionSession(0) + 88);
  v3 = v2 + *(type metadata accessor for GenerationRecipe(0) + 52);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  v7 = *(v0 + 8);

  return v7(v5, v4);
}

uint64_t sub_19A4C191C()
{
  v1 = *(v0 + 16);
  v2 = v1 + *(type metadata accessor for DefinitionSession(0) + 88);
  v3 = v2 + *(type metadata accessor for GenerationRecipe(0) + 52);

  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t DefinitionSession.specifyPersonDescriptionDirective(_:analysisLocales:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_19A57102C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  v4[9] = swift_task_alloc();
  type metadata accessor for TextPrompt(0);
  v4[10] = swift_task_alloc();
  _s17AssignmentOptionsVMa(0);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8, &qword_19A577310);
  v4[12] = swift_task_alloc();
  type metadata accessor for TextSanitizer(0);
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A4C1B5C, 0, 0);
}

uint64_t sub_19A4C1B5C()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  v3 = sub_19A57112C();
  v4 = *(v3 - 8);
  if (v2)
  {
    (*(*(v3 - 8) + 16))(*(v0 + 96), v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 88);
  v9 = *(v0 + 72);
  v10 = *(v0 + 48);
  v11 = *(v0 + 56);
  v12 = *(v0 + 40);
  (*(v4 + 56))(v7, v5, 1, v3);
  sub_19A4C480C(v7, v6);
  sub_19A2F3FA0(v7, &qword_1EAF9FDC8, &qword_19A577310);
  v13 = type metadata accessor for DefinitionSession(0);
  sub_19A4CC000(v12 + *(v13 + 36), v8, _s17AssignmentOptionsVMa);
  *(v0 + 112) = sub_19A35B198(v8);
  (*(v11 + 56))(v9, 1, 1, v10);
  *(v0 + 232) = *(v13 + 88);
  v14 = type metadata accessor for GenerationRecipe(0);
  *(v0 + 120) = v14;
  *(v0 + 236) = *(v14 + 72);
  v15 = swift_task_alloc();
  *(v0 + 128) = v15;
  *v15 = v0;
  v15[1] = sub_19A4C1DAC;
  v16 = *(v0 + 104);
  v18 = *(v0 + 72);
  v17 = *(v0 + 80);
  v19 = *(v0 + 24);
  v20 = *(v0 + 16);

  return sub_19A3C5BC8(v17, v20, v19, 0, 0, 1, v16, v18);
}

uint64_t sub_19A4C1DAC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = (*v3)[9];
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = v2;

  sub_19A2F3FA0(v5, &qword_1EAF9FD80, &unk_19A57B720);
  if (v2)
  {
    v6 = sub_19A4C2634;
  }

  else
  {
    sub_19A4CC068(v4[10], type metadata accessor for TextPrompt);
    v6 = sub_19A4C1F18;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_19A4C1F18()
{
  v1 = *(v0 + 236);
  v2 = *(v0 + 112);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);
  v6 = *(v0 + 40) + *(v0 + 232);
  v25 = sub_19A39D588();
  (*(v4 + 16))(v3, v6 + v1, v5);
  v7 = swift_allocObject();
  *(v0 + 160) = v7;
  v8 = sub_19A57231C();
  *(v0 + 168) = v8;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v9 = *(v8 - 8);
  *(v0 + 176) = v9;
  *(v0 + 184) = swift_task_alloc();
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v10 = sub_19A57236C();
  __swift_project_value_buffer(v10, qword_1ED82BD30);
  sub_19A57234C();
  sub_19A5722EC();
  v11 = sub_19A57234C();
  v12 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v24 = v2;
    v2 = swift_slowAlloc();
    *v2 = 0;
    v13 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v11, v12, v13, "sanitizeText", "", v2, 2u);
    v14 = v2;
    LOBYTE(v2) = v24;
    MEMORY[0x19A902C50](v14, -1, -1);
  }

  swift_task_alloc();
  (*(v9 + 16))();
  sub_19A5723BC();
  swift_allocObject();
  *(v0 + 192) = sub_19A5723AC();

  if (*(v7 + 24))
  {

    v15 = sub_19A4CA6B8;
  }

  else
  {
    v15 = 0;
    v7 = 0;
  }

  *(v0 + 200) = v15;
  *(v0 + 208) = v7;
  v16 = 5;
  if (v25)
  {
    v16 = 13;
  }

  v17 = 4;
  if (v25)
  {
    v17 = 12;
  }

  if ((v2 & 2) != 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v19 = swift_task_alloc();
  *(v0 + 216) = v19;
  *v19 = v0;
  v19[1] = sub_19A4C222C;
  v21 = *(v0 + 136);
  v20 = *(v0 + 144);
  v22 = *(v0 + 64);

  return sub_19A46E2B0(v21, v20, v18, v22, v15, v7);
}

uint64_t sub_19A4C222C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {

    v2 = sub_19A4C24E0;
  }

  else
  {
    v2 = sub_19A4C2348;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A4C2348()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);
  v14 = *(v0 + 136);
  v15 = *(v0 + 144);
  v5 = *(v0 + 104);
  v6 = *(v0 + 48);
  v12 = *(v0 + 40) + *(v0 + 232);
  v13 = *(v0 + 120);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  sub_19A2E0A60(*(v0 + 200), *(v0 + 208));
  sub_19A3E112C((v4 + 16), 0, 0, "sanitizeText", 12, 2);

  (*(v2 + 8))(v1, v3);
  (*(v8 + 8))(v7, v6);

  sub_19A4CC068(v5, type metadata accessor for TextSanitizer);
  v9 = v12 + *(v13 + 52);

  *(v9 + 8) = v14;
  *(v9 + 16) = v15;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_19A4C24E0()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[20];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  sub_19A2E0A60(v0[25], v0[26]);
  sub_19A3E112C((v4 + 16), 0, 0, "sanitizeText", 12, 2);

  (*(v3 + 8))(v1, v2);
  (*(v6 + 8))(v5, v7);

  sub_19A4CC068(v0[13], type metadata accessor for TextSanitizer);

  v8 = v0[1];

  return v8();
}

uint64_t sub_19A4C2634()
{
  sub_19A4CC068(*(v0 + 104), type metadata accessor for TextSanitizer);

  v1 = *(v0 + 8);

  return v1();
}

unint64_t DefinitionSession.Error.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16) <= 1u)
  {
    if (!*(v0 + 16))
    {

      return v1;
    }

    if (!v2)
    {
      return 0xD00000000000001DLL;
    }

    v8 = 0xD00000000000001DLL;
    sub_19A4CA6D4(v1, v2, 1u);
    MEMORY[0x19A900A50](8250, 0xE200000000000000);
    MEMORY[0x19A900A50](v1, v2);
    sub_19A46FE3C(v1, v2, 1u);
    return v8;
  }

  if (*(v0 + 16) == 2)
  {
    v8 = 0;
    sub_19A57395C();
    MEMORY[0x19A900A50](0xD000000000000024, 0x800000019A59BC50);
    v3 = sub_19A573EDC();
    MEMORY[0x19A900A50](v3);

    MEMORY[0x19A900A50](0xD000000000000016, 0x800000019A59BC80);
    v4 = sub_19A573EDC();
    MEMORY[0x19A900A50](v4);

    return v8;
  }

  if (v1 ^ 2 | v2)
  {
    v5 = 0xD000000000000031;
  }

  else
  {
    v5 = 0xD00000000000003BLL;
  }

  v6 = 0xD000000000000038;
  if (v1 | v2)
  {
    v6 = 0xD000000000000031;
  }

  if (v1 <= 1)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_19A4C2930(uint64_t a1)
{
  v2 = sub_19A4CA740();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4C296C(uint64_t a1)
{
  v2 = sub_19A4CA740();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_19A4C29A8()
{
  v1 = 0xD00000000000001DLL;
  v2 = *v0;
  v3 = 0xD00000000000001BLL;
  if (v2 != 5)
  {
    v3 = 0xD00000000000001DLL;
  }

  v4 = 0xD000000000000025;
  if (v2 == 3)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_19A4C2A68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_19A4CBBC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_19A4C2A90(uint64_t a1)
{
  v2 = sub_19A4CA6EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4C2ACC(uint64_t a1)
{
  v2 = sub_19A4CA6EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A4C2B08(uint64_t a1)
{
  v2 = sub_19A4CA8E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4C2B44(uint64_t a1)
{
  v2 = sub_19A4CA8E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A4C2B80()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

void sub_19A4C2B9C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_19A573F1C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_19A4C2C68(uint64_t a1)
{
  v2 = sub_19A4CA7E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4C2CA4(uint64_t a1)
{
  v2 = sub_19A4CA7E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A4C2CE0(uint64_t a1)
{
  v2 = sub_19A4CA83C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4C2D1C(uint64_t a1)
{
  v2 = sub_19A4CA83C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A4C2D58(uint64_t a1)
{
  v2 = sub_19A4CA890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4C2D94(uint64_t a1)
{
  v2 = sub_19A4CA890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A4C2DD0(uint64_t a1)
{
  v2 = sub_19A4CA938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4C2E0C(uint64_t a1)
{
  v2 = sub_19A4CA938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A4C2E48(uint64_t a1)
{
  v2 = sub_19A4CA794();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4C2E84(uint64_t a1)
{
  v2 = sub_19A4CA794();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DefinitionSession.Error.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA27D0, &qword_19A58CD10);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA27D8, &qword_19A58CD18);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA27E0, &qword_19A58CD20);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA27E8, &qword_19A58CD28);
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v35 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA27F0, &qword_19A58CD30);
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v35 - v12;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA27F8, &qword_19A58CD38);
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v35 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2800, &qword_19A58CD40);
  v47 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2808, &qword_19A58CD48);
  v18 = *(v17 - 8);
  v55 = v17;
  v56 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - v19;
  v21 = *v1;
  *&v54 = v1[1];
  *(&v54 + 1) = v21;
  v22 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A4CA6EC();
  v23 = v20;
  sub_19A5741AC();
  if (v22 <= 1)
  {
    if (!v22)
    {
      v58[0] = 0;
      sub_19A4CA938();
      v24 = v55;
      sub_19A573DAC();
      sub_19A573E2C();
      (*(v47 + 8))(v16, v14);
      return (*(v56 + 8))(v20, v24);
    }

    v61 = 3;
    sub_19A4CA83C();
    v26 = v48;
    v27 = v55;
    sub_19A573DAC();
    v28 = v50;
    sub_19A573DCC();
    v30 = v49;
    goto LABEL_14;
  }

  if (v22 != 2)
  {
    v27 = v55;
    if (*(&v54 + 1) > 1uLL)
    {
      if (*(&v54 + 1) ^ 2 | v54)
      {
        v66 = 6;
        sub_19A4CA740();
        v32 = v44;
        sub_19A573DAC();
        v34 = v45;
        v33 = v46;
      }

      else
      {
        v65 = 5;
        sub_19A4CA794();
        v32 = v41;
        sub_19A573DAC();
        v34 = v42;
        v33 = v43;
      }
    }

    else
    {
      if (v54 == 0)
      {
        v59 = 1;
        sub_19A4CA8E4();
        v31 = v35;
        sub_19A573DAC();
        (*(v36 + 8))(v31, v37);
        return (*(v56 + 8))(v23, v27);
      }

      v60 = 2;
      sub_19A4CA890();
      v32 = v38;
      sub_19A573DAC();
      v34 = v39;
      v33 = v40;
    }

    (*(v34 + 8))(v32, v33);
    return (*(v56 + 8))(v23, v27);
  }

  v64 = 4;
  sub_19A4CA7E8();
  v26 = v51;
  v27 = v55;
  sub_19A573DAC();
  v63 = 0;
  v28 = v53;
  v29 = v57;
  sub_19A573E6C();
  if (!v29)
  {
    v62 = 1;
    sub_19A573E6C();
    v30 = v52;
LABEL_14:
    (*(v30 + 8))(v26, v28);
    return (*(v56 + 8))(v23, v27);
  }

  (*(v52 + 8))(v26, v28);
  return (*(v56 + 8))(v23, v27);
}

uint64_t DefinitionSession.Error.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2850, &qword_19A58CD50);
  v80 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v87 = &v66 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2858, &qword_19A58CD58);
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v84 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2860, &qword_19A58CD60);
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v66 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2868, &qword_19A58CD68);
  v77 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v86 = &v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2870, &qword_19A58CD70);
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v66 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2878, &qword_19A58CD78);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v12 = &v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2880, &qword_19A58CD80);
  v70 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v66 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2888, &unk_19A58CD88);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v66 - v18;
  v20 = a1[3];
  v89 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_19A4CA6EC();
  v21 = v90;
  sub_19A57417C();
  if (!v21)
  {
    v22 = v15;
    v68 = v12;
    v67 = v13;
    v23 = v85;
    v24 = v86;
    v25 = v87;
    v69 = v17;
    v26 = v88;
    v90 = v19;
    v27 = sub_19A573D7C();
    v28 = (2 * *(v27 + 16)) | 1;
    v91 = v27;
    v92 = v27 + 32;
    v93 = 0;
    v94 = v28;
    v29 = sub_19A34338C();
    if (v29 != 7 && v93 == v94 >> 1)
    {
      if (v29 <= 2u)
      {
        if (!v29)
        {
          v95 = 0;
          sub_19A4CA938();
          v47 = v22;
          sub_19A573C5C();
          v48 = v67;
          v49 = sub_19A573CFC();
          v50 = v69;
          v59 = v56;
          v57 = v49;
          (*(v70 + 8))(v47, v48);
          (*(v50 + 8))(v90, v16);
          swift_unknownObjectRelease();
          v61 = v57;
          v62 = 0;
          goto LABEL_21;
        }

        if (v29 != 1)
        {
          v95 = 2;
          sub_19A4CA890();
          v51 = v90;
          sub_19A573C5C();
          (*(v74 + 8))(v23, v75);
          (*(v69 + 8))(v51, v16);
          swift_unknownObjectRelease();
          v59 = 0;
          v62 = 3;
          v61 = 1;
          goto LABEL_21;
        }

        v95 = 1;
        sub_19A4CA8E4();
        v42 = v68;
        v43 = v90;
        sub_19A573C5C();
        (*(v71 + 8))(v42, v72);
        (*(v69 + 8))(v43, v16);
        swift_unknownObjectRelease();
        v61 = 0;
        v59 = 0;
      }

      else
      {
        if (v29 <= 4u)
        {
          v30 = v90;
          if (v29 == 3)
          {
            v95 = 3;
            sub_19A4CA83C();
            v31 = v24;
            sub_19A573C5C();
            v32 = v69;
            v33 = v73;
            v34 = sub_19A573C8C();
            v35 = v31;
            v59 = v58;
            v60 = v34;
            (*(v77 + 8))(v35, v33);
            (*(v32 + 8))(v30, v16);
            swift_unknownObjectRelease();
            v61 = v60;
            v62 = 1;
          }

          else
          {
            v95 = 4;
            sub_19A4CA7E8();
            v52 = v83;
            sub_19A573C5C();
            v53 = v69;
            v95 = 0;
            v54 = v82;
            v63 = sub_19A573D3C();
            v95 = 1;
            v64 = sub_19A573D3C();
            v65 = v52;
            v59 = v64;
            (*(v81 + 8))(v65, v54);
            (*(v53 + 8))(v30, v16);
            swift_unknownObjectRelease();
            v62 = 2;
            v61 = v63;
          }

          goto LABEL_21;
        }

        v44 = v90;
        if (v29 == 5)
        {
          v95 = 5;
          sub_19A4CA794();
          v45 = v84;
          sub_19A573C5C();
          v46 = v69;
          (*(v78 + 8))(v45, v79);
          (*(v46 + 8))(v44, v16);
          swift_unknownObjectRelease();
          v59 = 0;
          v62 = 3;
          v61 = 2;
LABEL_21:
          v40 = v89;
          *v26 = v61;
          *(v26 + 8) = v59;
          *(v26 + 16) = v62;
          return __swift_destroy_boxed_opaque_existential_0Tm(v40);
        }

        v95 = 6;
        sub_19A4CA740();
        sub_19A573C5C();
        v55 = v69;
        (*(v80 + 8))(v25, v76);
        (*(v55 + 8))(v44, v16);
        swift_unknownObjectRelease();
        v59 = 0;
        v61 = 3;
      }

      v62 = 3;
      goto LABEL_21;
    }

    v36 = sub_19A5739FC();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2700, &qword_19A579CF0);
    *v38 = &type metadata for DefinitionSession.Error;
    v39 = v90;
    sub_19A573C7C();
    sub_19A5739DC();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    (*(v69 + 8))(v39, v16);
    swift_unknownObjectRelease();
  }

  v40 = v89;
  return __swift_destroy_boxed_opaque_existential_0Tm(v40);
}

uint64_t DefinitionSession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19A57102C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Bool __swiftcall DefinitionSession.imageStyle(_:canBeCombinedWith:)(VisualGeneration::ImageStyle _, Swift::OpaquePointer canBeCombinedWith)
{
  v4 = *_;
  type metadata accessor for ImageGenerator();
  v5 = v2 + *(type metadata accessor for DefinitionSession(0) + 88);
  v6 = type metadata accessor for GenerationRecipe(0);
  sub_19A34F314(*(v5 + *(v6 + 20)), *(v5 + *(v6 + 20) + 8), &v11);
  if (v12)
  {
    sub_19A3355E8(&v11, v13);
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    LOBYTE(v11) = v4;
    v9 = (*(*(v8 + 40) + 8))(&v11, canBeCombinedWith._rawValue, v7);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  else
  {
    sub_19A2F3FA0(&v11, &qword_1EAF9FDA8, &qword_19A581780);
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t DefinitionSession.directableDemographicCategories.getter@<X0>(_DWORD *a1@<X8>)
{
  type metadata accessor for ImageGenerator();
  v3 = v1 + *(type metadata accessor for DefinitionSession(0) + 88);
  v4 = type metadata accessor for GenerationRecipe(0);
  sub_19A34F314(*(v3 + *(v4 + 20)), *(v3 + *(v4 + 20) + 8), &v8);
  if (v9)
  {
    sub_19A3355E8(&v8, v10);
    v6 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(*(v5 + 16) + 8))(v6);
    return __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  else
  {
    result = sub_19A2F3FA0(&v8, &qword_1EAF9FDA8, &qword_19A581780);
    *a1 = 0;
  }

  return result;
}

uint64_t (*DefinitionSession.generationSeed.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for DefinitionSession(0) + 88);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *(type metadata accessor for GenerationRecipe(0) + 28);
  *(a1 + 24) = v5;
  v6 = (v4 + v5);
  v7 = *v6;
  LOBYTE(v6) = *(v6 + 8);
  *a1 = v7;
  *(a1 + 8) = v6;
  return sub_19A4C4500;
}

uint64_t sub_19A4C4500(uint64_t result)
{
  v1 = *(result + 16) + *(result + 12) + *(result + 24);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t DefinitionSession.usesPORPipeline.getter()
{
  v1 = v0 + *(type metadata accessor for DefinitionSession(0) + 88);
  v2 = (v1 + *(type metadata accessor for GenerationRecipe(0) + 20));
  if (*v2 == 0xD000000000000029 && 0x800000019A596020 == v2[1])
  {
    return 1;
  }

  return sub_19A573F1C();
}

uint64_t sub_19A4C45B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for DefinitionSession(0) + 88);
  v4 = (v3 + *(type metadata accessor for GenerationRecipe(0) + 20));
  if (*v4 == 0xD000000000000029 && 0x800000019A596020 == v4[1])
  {
    result = 1;
  }

  else
  {
    result = sub_19A573F1C();
  }

  *a2 = result & 1;
  return result;
}

void DefinitionSession.usesPORPipeline.setter(char a1)
{
  if ((a1 & 1) == 0)
  {
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v2 = sub_19A5723FC();
    __swift_project_value_buffer(v2, qword_1ED82BCF0);
    oslog = sub_19A5723DC();
    v3 = sub_19A57355C();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_19A2DE000, oslog, v3, "This property is no longer supported -- setting this value to false has no effect", v4, 2u);
      MEMORY[0x19A902C50](v4, -1, -1);
    }
  }
}

void (*DefinitionSession.usesPORPipeline.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = v1 + *(type metadata accessor for DefinitionSession(0) + 88);
  v4 = (v3 + *(type metadata accessor for GenerationRecipe(0) + 20));
  if (*v4 == 0xD000000000000029 && 0x800000019A596020 == v4[1])
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_19A573F1C();
  }

  *(a1 + 8) = v6 & 1;
  return sub_19A4C47F0;
}

uint64_t sub_19A4C480C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v54 = a1;
  v56 = sub_19A57112C();
  v49 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v47 = &v44[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8, &qword_19A577310);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v53 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v44[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1028, &qword_19A580B90);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1020, &qword_19A58CCD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v44[-v12];
  v14 = type metadata accessor for TextSanitizer(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v44[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44[-v18];
  v20 = type metadata accessor for DefinitionSession(0);
  v21 = *(v20 + 68);
  v51 = v20;
  v52 = v21;
  sub_19A33546C(v2 + v21, v13, &qword_1EAFA1020, &qword_19A58CCD0);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_19A4CBF58(v13, v19, type metadata accessor for TextSanitizer);
    v23 = *(v8 + 48);
    v46 = v19;
    sub_19A33546C(v19, v10, &qword_1EAF9FDC8, &qword_19A577310);
    v22 = v54;
    sub_19A33546C(v54, &v10[v23], &qword_1EAF9FDC8, &qword_19A577310);
    v24 = *(v49 + 48);
    if (v24(v10, 1, v56) == 1)
    {
      if (v24(&v10[v23], 1, v56) == 1)
      {
        sub_19A2F3FA0(v10, &qword_1EAF9FDC8, &qword_19A577310);
        v25 = v46;
        return sub_19A4CBF58(v25, v55, type metadata accessor for TextSanitizer);
      }
    }

    else
    {
      sub_19A33546C(v10, v48, &qword_1EAF9FDC8, &qword_19A577310);
      if (v24(&v10[v23], 1, v56) != 1)
      {
        v39 = v49;
        v40 = &v10[v23];
        v41 = v56;
        (*(v49 + 32))(v47, v40, v56);
        sub_19A4CBF10(&qword_1EAF9F8D0, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
        v42 = v48;
        v45 = sub_19A572C2C();
        v43 = *(v39 + 8);
        v43(v47, v41);
        v43(v42, v41);
        sub_19A2F3FA0(v10, &qword_1EAF9FDC8, &qword_19A577310);
        v25 = v46;
        if (v45)
        {
          return sub_19A4CBF58(v25, v55, type metadata accessor for TextSanitizer);
        }

LABEL_9:
        sub_19A4CC068(v25, type metadata accessor for TextSanitizer);
        goto LABEL_10;
      }

      (*(v49 + 8))(v48, v56);
    }

    sub_19A2F3FA0(v10, &qword_1EAFA1028, &qword_19A580B90);
    v25 = v46;
    goto LABEL_9;
  }

  sub_19A2F3FA0(v13, &qword_1EAFA1020, &qword_19A58CCD0);
  v22 = v54;
LABEL_10:
  v26 = 0xD000000000000025;
  v27 = v53;
  sub_19A33546C(v22, v53, &qword_1EAF9FDC8, &qword_19A577310);
  v28 = *(v2 + *(v51 + 88));
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v29 = "Generation.AppleDiffusion";
    }

    else
    {
      v29 = &unk_19A58D010;
      v26 = 0xD000000000000010;
    }
  }

  else if (*(v2 + *(v51 + 88)))
  {
    v29 = ".KeyboardEmojiGenerator";
  }

  else
  {
    v29 = ".PhotosGenerativeEdit";
    v26 = 0xD000000000000027;
  }

  v30 = (v2 + *(v51 + 20));
  v31 = *v30;
  v32 = v30[1];
  v33 = v50;
  v34 = &v50[*(v14 + 20)];
  *v34 = v26;
  v34[1] = v29 | 0x8000000000000000;
  v35 = (v33 + *(v14 + 24));
  *v35 = v31;
  v35[1] = v32;
  v35[2] = v30[2];
  sub_19A3351B8(v27, v33, &qword_1EAF9FDC8, &qword_19A577310);
  v36 = v55;
  sub_19A4CBF58(v33, v55, type metadata accessor for TextSanitizer);

  v37 = v52;
  sub_19A2F3FA0(v2 + v52, &qword_1EAFA1020, &qword_19A58CCD0);
  sub_19A4CC000(v36, v2 + v37, type metadata accessor for TextSanitizer);
  return (*(v15 + 56))(v2 + v37, 0, 1, v14);
}

uint64_t sub_19A4C4EB0()
{
  *(v1 + 112) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8, &qword_19A577310);
  *(v1 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A4C4F4C, 0, 0);
}

uint64_t sub_19A4C4F4C()
{
  v1 = *(v0 + 112);
  v43 = type metadata accessor for DefinitionSession(0);
  v2 = v43[22];
  *(v0 + 168) = v2;
  v3 = (v1 + v2);
  v4 = type metadata accessor for GenerationRecipe(0);
  v41 = v3;
  v42 = v0;
  *(v0 + 128) = v4;
  v5 = *&v3[*(v4 + 24)];
  v6 = (v5 + 32);
  v7 = *(v5 + 16);
  while (1)
  {
    if (!v7)
    {
      *(*(v0 + 112) + *(v0 + 168) + *(*(v0 + 128) + 116)) = 0;

      v9 = *(v0 + 8);

      return v9();
    }

    if (*v6 <= 1u && *v6)
    {
      break;
    }

    v8 = sub_19A573F1C();

    ++v6;
    --v7;
    if (v8)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  v11 = (*(v0 + 112) + v43[8]);
  v12 = v11[2];
  *(v0 + 48) = v11[1];
  v13 = v0 + 48;
  *(v0 + 56) = v12;
  v14 = v11[4];
  *(v0 + 64) = v11[3];
  *(v0 + 72) = v14;

  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v17 = (v13 + 8 + 16 * v15);
  while (++v15 != 3)
  {
    v18 = *(v17 - 1);
    v19 = *v17;
    v17 += 2;
    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_19A322580(0, *(v16 + 16) + 1, 1);
      }

      v22 = *(v16 + 16);
      v21 = *(v16 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_19A322580((v21 > 1), v22 + 1, 1);
      }

      *(v16 + 16) = v22 + 1;
      v23 = v16 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v19;
      goto LABEL_12;
    }
  }

  swift_arrayDestroy();
  v42[13] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8, &qword_19A57A790);
  sub_19A331C2C();
  v24 = sub_19A572BEC();
  v26 = v25;

  v42[17] = v24;
  v42[18] = v26;
  if (*v41 > 1u)
  {
    v27 = 0xD000000000000025;
    if (*v41 == 2)
    {
      v28 = "Generation.AppleDiffusion";
    }

    else
    {
      v28 = &unk_19A58D010;
      v27 = 0xD000000000000010;
    }
  }

  else
  {
    v27 = 0xD000000000000025;
    if (*v41)
    {
      v28 = ".KeyboardEmojiGenerator";
    }

    else
    {
      v28 = ".PhotosGenerativeEdit";
      v27 = 0xD000000000000027;
    }
  }

  v42[19] = v28;
  v29 = v42[14];
  v30 = v29 + v43[9];
  v31 = *(v30 + *(_s17AssignmentOptionsVMa(0) + 32));
  v32 = *(v31 + 16);
  v33 = sub_19A57112C();
  v34 = *(v33 - 8);
  if (v32)
  {
    (*(*(v33 - 8) + 16))(v42[15], v31 + ((*(*(v33 - 8) + 80) + 32) & ~*(*(v33 - 8) + 80)), v33);
    v35 = 0;
    v29 = v42[14];
  }

  else
  {
    v35 = 1;
  }

  (*(v34 + 56))(v42[15], v35, 1, v33);
  v36 = (v29 + v43[5]);
  v37 = v36[1];
  v38 = v36[2];
  v42[10] = *v36;
  v42[11] = v37;
  v42[12] = v38;

  v39 = swift_task_alloc();
  v42[20] = v39;
  *v39 = v42;
  v39[1] = sub_19A4C5460;
  v40 = v42[15];

  return sub_19A44C274(v24, v26, v27, v28 | 0x8000000000000000, v40, (v42 + 10));
}

uint64_t sub_19A4C5460(char a1)
{
  v2 = *(*v1 + 120);
  *(*v1 + 172) = a1;

  sub_19A2F3FA0(v2, &qword_1EAF9FDC8, &qword_19A577310);

  return MEMORY[0x1EEE6DFA0](sub_19A4C55D0, 0, 0);
}

uint64_t sub_19A4C55D0()
{
  v13 = v0;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = sub_19A5723FC();
  __swift_project_value_buffer(v1, qword_1ED82BCF0);

  v2 = sub_19A5723DC();
  v3 = sub_19A57356C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 172);
    v6 = *(v0 + 136);
    v5 = *(v0 + 144);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136380931;
    v9 = sub_19A31F114(v6, v5, &v12);

    *(v7 + 4) = v9;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v4;
    _os_log_impl(&dword_19A2DE000, v2, v3, "Smiley analyzed in text %{private}s. classified smiley: %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x19A902C50](v8, -1, -1);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  else
  {
  }

  *(*(v0 + 112) + *(v0 + 168) + *(*(v0 + 128) + 116)) = *(v0 + 172);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_19A4C57A4(const char *a1, uint64_t a2, char a3)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  __swift_project_value_buffer(v5, qword_1ED82BD30);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v11;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
LABEL_11:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a1, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
LABEL_16:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t DefinitionSession.scribbleStrength.getter()
{
  v1 = v0 + *(type metadata accessor for DefinitionSession(0) + 88);
  v2 = (v1 + *(type metadata accessor for GenerationRecipe(0) + 44));
  return *v2 | (*(v2 + 4) << 32);
}

uint64_t (*DefinitionSession.scribbleStrength.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for DefinitionSession(0) + 88);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *(type metadata accessor for GenerationRecipe(0) + 44);
  *(a1 + 20) = v5;
  v6 = v4 + v5;
  *(a1 + 8) = *v6;
  *(a1 + 12) = *(v6 + 4);
  return sub_19A4C5B5C;
}

unint64_t DefinitionSession.lcmScale.getter()
{
  v1 = v0 + *(type metadata accessor for DefinitionSession(0) + 88);
  v2 = (v1 + *(type metadata accessor for GenerationRecipe(0) + 48));
  return *v2 | (*(v2 + 4) << 32);
}

uint64_t (*DefinitionSession.lcmScale.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for DefinitionSession(0) + 88);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *(type metadata accessor for GenerationRecipe(0) + 48);
  *(a1 + 20) = v5;
  v6 = v4 + v5;
  *(a1 + 8) = *v6;
  *(a1 + 12) = *(v6 + 4);
  return sub_19A4CC0E0;
}

uint64_t sub_19A4C5C30(uint64_t result)
{
  v1 = *result + *(result + 16) + *(result + 20);
  v2 = *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = v2;
  return result;
}

uint64_t sub_19A4C5C54(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 >= 2)
  {

    a2(a1);
    sub_19A2E0A60(a2, a3);
  }

  swift_beginAccess();

  sub_19A47086C(v9);
  return swift_endAccess();
}

uint64_t *sub_19A4C5CE4(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8, &qword_19A577310);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for DefinitionSession(0);
  v8 = v7[16];
  v9 = *(v1 + v8);
  if (v9)
  {
    v10 = ".KeyboardEmojiGenerator";
    v11 = "Generation.AppleDiffusion";
    if (*(v1 + v7[22]) != 2)
    {
      v11 = &unk_19A58D010;
    }

    if (!*(v1 + v7[22]))
    {
      v10 = ".PhotosGenerativeEdit";
    }

    if (*(v1 + v7[22]) > 1u)
    {
      v10 = v11;
    }

    v12 = v10 | 0x8000000000000000;
    MEMORY[0x1EEE9AC00](v7);
    v1 = &v30 - 6;
    *(&v30 - 4) = a1;
    *(&v30 - 3) = v13;
    *(&v30 - 2) = v12;
    *(&v30 - 2) = v14;
    v15 = *(*v9 + *MEMORY[0x1E69E6B68] + 16);
    v16 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v9 + v16));
    sub_19A4CBFC0(v9 + v15, &v31);
    os_unfair_lock_unlock((v9 + v16));

    if (!v2)
    {
      v1 = v31;
    }
  }

  else
  {
    v17 = ".KeyboardEmojiGenerator";
    v18 = "Generation.AppleDiffusion";
    v19 = 0xD000000000000010;
    if (*(v1 + v7[22]) == 2)
    {
      v19 = 0xD000000000000025;
    }

    else
    {
      v18 = &unk_19A58D010;
    }

    v20 = 0xD000000000000027;
    if (*(v1 + v7[22]))
    {
      v20 = 0xD000000000000025;
    }

    else
    {
      v17 = ".PhotosGenerativeEdit";
    }

    if (*(v1 + v7[22]) <= 1u)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    if (*(v1 + v7[22]) <= 1u)
    {
      v22 = v17;
    }

    else
    {
      v22 = v18;
    }

    v23 = *(v1 + v7[5] + 16);
    sub_19A33546C(a1, v6, &qword_1EAF9FDC8, &qword_19A577310);
    v24 = sub_19A43D8EC(v21, v22 | 0x8000000000000000, v23, v6);
    if (!v2)
    {
      *(v1 + v8) = v24;
      v25 = *(*v24 + *MEMORY[0x1E69E6B68] + 16);
      v26 = (*(*v24 + 48) + 3) & 0x1FFFFFFFCLL;
      v27 = v24;

      os_unfair_lock_lock((v28 + v26));
      v1 = *&v27[v25];
      os_unfair_lock_unlock(&v27[v26]);
    }
  }

  return v1;
}

uint64_t sub_19A4C6000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v42 = sub_19A57112C();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA28C0, &qword_19A58CDB8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for MessagesBackgroundEstimator(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  v18 = type metadata accessor for DefinitionSession(0);
  v34 = *(v18 + 72);
  sub_19A33546C(&v3[v34], v11, &qword_1EAFA28C0, &qword_19A58CDB8);
  v35 = v13;
  v19 = (*(v13 + 48))(v11, 1, v12);
  v41 = v12;
  if (v19 == 1)
  {
    sub_19A2F3FA0(v11, &qword_1EAFA28C0, &qword_19A58CDB8);
  }

  else
  {
    sub_19A4CBF58(v11, v17, type metadata accessor for MessagesBackgroundEstimator);
    if (MEMORY[0x19A8FEC20](&v17[*(v12 + 20)], a1))
    {
      return sub_19A4CBF58(v17, v37, type metadata accessor for MessagesBackgroundEstimator);
    }

    sub_19A4CC068(v17, type metadata accessor for MessagesBackgroundEstimator);
  }

  v21 = *(v43 + 16);
  v21(v8, a1, v42);
  if (v3[*(v18 + 88)] > 1u)
  {
    v23 = v38;
    if (v3[*(v18 + 88)] == 2)
    {
      v36 = "Generation.AppleDiffusion";
    }

    else
    {
      v36 = &unk_19A58D010;
    }
  }

  else
  {
    if (v3[*(v18 + 88)])
    {
      v22 = ".KeyboardEmojiGenerator";
    }

    else
    {
      v22 = ".PhotosGenerativeEdit";
    }

    v36 = v22;
    v23 = v38;
  }

  v38 = v3;
  v24 = v42;
  v25 = *(v41 + 20);
  v21(v23 + v25, v8, v42);
  v21(v39, v8, v24);
  sub_19A5720DC();
  swift_allocObject();
  v26 = v40;
  v27 = sub_19A5720CC();
  if (v26)
  {
    v28 = *(v43 + 8);
    v28(v8, v24);
    return (v28)(v23 + v25, v24);
  }

  else
  {
    v29 = v27;
    (*(v43 + 8))(v8, v24);
    *v23 = v29;
    v30 = v37;
    sub_19A4CBF58(v23, v37, type metadata accessor for MessagesBackgroundEstimator);
    v31 = v34;
    v32 = v38;
    sub_19A2F3FA0(&v38[v34], &qword_1EAFA28C0, &qword_19A58CDB8);
    sub_19A4CC000(v30, &v32[v31], type metadata accessor for MessagesBackgroundEstimator);
    return (*(v35 + 56))(&v32[v31], 0, 1, v41);
  }
}

uint64_t sub_19A4C64E0()
{
  v1 = type metadata accessor for DefinitionSession(0);
  v2 = v1[22];
  v3 = v1[23];
  v4 = *(v0 + v3);
  v5 = (v0 + v1[5]);
  v6 = v5[1];
  v14 = *v5;
  v15 = v6;
  v16 = v5[2];

  v7 = sub_19A410214(v4, v0 + v2, &v14);
  v9 = v8;

  if (v9)
  {

    *(v0 + v3) = v7;
    sub_19A571E1C();
  }

  v10 = v1[24];
  if (!*(v0 + v10))
  {
    v12 = v5[1];
    v14 = *v5;
    v15 = v12;
    v16 = v5[2];

    v13 = sub_19A41061C(v0 + v2, &v14);

    *(v0 + v10) = v13;
    if (v13)
    {
      sub_19A571E1C();
    }
  }
}

uint64_t sub_19A4C6648@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DefinitionSession(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ImageGenerator();
  v6 = v1 + *(v3 + 88);
  v7 = type metadata accessor for GenerationRecipe(0);
  sub_19A34F314(*(v6 + *(v7 + 20)), *(v6 + *(v7 + 20) + 8), &v22);
  if (v25)
  {
    sub_19A3355E8(&v22, v26);
    v8 = v27;
    v9 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v9 + 48))(&v22, v8, v9);
    if (v24 != 1)
    {
      v21 = v23;
      *a1 = v22;
      *(a1 + 16) = v21;
      return __swift_destroy_boxed_opaque_existential_0Tm(v26);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  else
  {
    sub_19A2F3FA0(&v22, &qword_1EAF9FDA8, &qword_19A581780);
  }

  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v10 = sub_19A5723FC();
  __swift_project_value_buffer(v10, qword_1ED82BCF0);
  sub_19A4CC000(v1, v5, type metadata accessor for DefinitionSession);
  v11 = sub_19A5723DC();
  v12 = sub_19A57355C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26[0] = v14;
    *v13 = 136315138;
    v15 = &v5[*(v3 + 88) + *(v7 + 20)];
    v16 = *v15;
    v17 = v15[1];

    sub_19A4CC068(v5, type metadata accessor for DefinitionSession);
    v18 = sub_19A31F114(v16, v17, v26);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_19A2DE000, v11, v12, "%s does not support a guidance sketch", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x19A902C50](v14, -1, -1);
    MEMORY[0x19A902C50](v13, -1, -1);
  }

  else
  {

    sub_19A4CC068(v5, type metadata accessor for DefinitionSession);
  }

  sub_19A335164();
  swift_allocError();
  *v19 = 0xD000000000000020;
  *(v19 + 8) = 0x800000019A59BEC0;
  *(v19 + 16) = 0;
  return swift_willThrow();
}

void sub_19A4C697C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  type metadata accessor for ImageGenerator();
  v4 = v1 + *(type metadata accessor for DefinitionSession(0) + 88);
  v5 = type metadata accessor for GenerationRecipe(0);
  sub_19A34F314(*(v4 + *(v5 + 20)), *(v4 + *(v5 + 20) + 8), &v30);
  v6 = v32;
  if (!v32)
  {
    sub_19A2F3FA0(&v30, &qword_1EAF9FDA8, &qword_19A581780);
    goto LABEL_26;
  }

  v7 = v33;
  __swift_project_boxed_opaque_existential_1(&v30, v32);
  v8 = (*(v7 + 64))(v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(&v30);
  if (!v8)
  {
LABEL_26:
    sub_19A335164();
    swift_allocError();
    *v27 = 0xD000000000000036;
    *(v27 + 8) = 0x800000019A59BF40;
    *(v27 + 16) = 0;
    swift_willThrow();
    return;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 32);
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      if (vmovn_s64(vceqq_s64(*v10, vdupq_laneq_s64(*v10, 1))).u8[0])
      {
        v29 = *v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_19A3227C0(0, v11[2] + 1, 1);
          v11 = v30;
        }

        v13 = v11[2];
        v12 = v11[3];
        v14 = v29.i64[0];
        if (v13 >= v12 >> 1)
        {
          sub_19A3227C0((v12 > 1), v13 + 1, 1);
          v14 = v29.i64[0];
          v11 = v30;
        }

        v11[2] = v13 + 1;
        *&v11[2 * v13 + 4] = vdupq_lane_s64(v14, 0);
      }

      ++v10;
      --v9;
    }

    while (v9);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v16 = v11[2];
  if (!v16)
  {

    goto LABEL_26;
  }

  v17 = v11[4];
  v18 = v11[5];
  v19 = v16 - 1;
  if (v19)
  {
    v20 = v11 + 7;
    do
    {
      v21 = *(v20 - 1);
      v22 = v17 < v21;
      if (v17 <= v21)
      {
        v17 = *(v20 - 1);
      }

      if (v22)
      {
        v18 = *v20;
      }

      v20 += 2;
      --v19;
    }

    while (v19);
  }

  if (v3)
  {
    if (v3 == 1)
    {
      [v2 extent];
      sub_19A39AAB4(&v30, v23, v24);
      Width = v30;
      Height = v31;
    }

    else
    {
      Width = CVPixelBufferGetWidth(v2);
      Height = CVPixelBufferGetHeight(v2);
    }
  }

  else
  {
    Width = CGImageGetWidth(v2);
    Height = CGImageGetHeight(v2);
  }

  if (Width == v17 && Height == v18)
  {
    v30 = v2;
    LOBYTE(v31) = v3;
    sub_19A387F80();
  }

  else
  {
    v30 = v17;
    v31 = v18;
    sub_19A41ED10(0x42475241, &v30, 2);
  }
}

__CVBuffer *sub_19A4C6C84(uint64_t *a1, int a2)
{
  v4 = v2;
  v40 = a2;
  v6 = type metadata accessor for DefinitionSession(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(a1 + 8);
  type metadata accessor for ImageGenerator();
  v11 = v4 + *(v6 + 88);
  v12 = type metadata accessor for GenerationRecipe(0);
  sub_19A34F314(*(v11 + *(v12 + 20)), *(v11 + *(v12 + 20) + 8), &v34);
  if (!v36)
  {
    sub_19A2F3FA0(&v34, &qword_1EAF9FDA8, &qword_19A581780);
    goto LABEL_5;
  }

  v33 = v3;
  sub_19A3355E8(&v34, v37);
  v13 = v38;
  v14 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  (*(v14 + 56))(&v34, v13, v14);
  if (v35 == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
LABEL_5:
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v15 = sub_19A5723FC();
    __swift_project_value_buffer(v15, qword_1ED82BCF0);
    sub_19A4CC000(v4, v8, type metadata accessor for DefinitionSession);
    v16 = sub_19A5723DC();
    v17 = sub_19A57355C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37[0] = v19;
      *v18 = 136315138;
      v20 = &v8[*(v6 + 88) + *(v12 + 20)];
      v21 = *v20;
      v22 = v20[1];

      sub_19A4CC068(v8, type metadata accessor for DefinitionSession);
      v23 = sub_19A31F114(v21, v22, v37);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_19A2DE000, v16, v17, "%s does not support a prompt conditioning image", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x19A902C50](v19, -1, -1);
      MEMORY[0x19A902C50](v18, -1, -1);
    }

    else
    {

      sub_19A4CC068(v8, type metadata accessor for DefinitionSession);
    }

    v24 = 0x800000019A59BE60;
    sub_19A335164();
    swift_allocError();
    *v25 = 0xD00000000000002ALL;
    *(v25 + 8) = 0x800000019A59BE60;
    *(v25 + 16) = 0;
    swift_willThrow();
    return v24;
  }

  if (v40)
  {
    *&v34 = v9;
    BYTE8(v34) = v10;
    v24 = &v34;
    v26 = v33;
    sub_19A387F80();
    if (!v26)
    {
      v28 = v27;
      v24 = sub_19A39618C();
    }
  }

  else
  {
    *&v34 = v9;
    BYTE8(v34) = v10;
    v24 = &v34;
    v29 = v33;
    sub_19A387F80();
    if (!v29)
    {
      v24 = v30;
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v37);
  return v24;
}

uint64_t sub_19A4C7030(uint64_t *a1, _BYTE *a2, char a3, char a4)
{
  *(v5 + 209) = a4;
  *(v5 + 208) = a3;
  v6 = *a1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v6;
  *(v5 + 210) = *(a1 + 8);
  *(v5 + 211) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_19A4C706C, 0, 0);
}

uint64_t sub_19A4C706C()
{
  v9 = v0;
  v1 = *(v0 + 210);
  v2 = *(v0 + 209);
  v7 = *(v0 + 40);
  v8 = v1;
  v3 = sub_19A4C6C84(&v7, v2);
  *(v0 + 48) = v3;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_19A4C7170;

  return sub_19A4C8534(v4);
}

uint64_t sub_19A4C7170(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {

    v4 = sub_19A4C84D0;
  }

  else
  {
    v4 = sub_19A4C728C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19A4C728C()
{
  v65 = v0;
  v1 = *(v0 + 211);
  if (v1 == 3)
  {
    if (*(*(v0 + 64) + 16))
    {
      v6 = *(v0 + 48);

      sub_19A335164();
      swift_allocError();
      *v7 = 0xD000000000000029;
      *(v7 + 8) = 0x800000019A59BE30;
      *(v7 + 16) = 0;
      swift_willThrow();

      goto LABEL_7;
    }
  }

  else if (v1 == 2)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);
    v63 = *(v0 + 48);
    v64 = 2;
    v4 = sub_19A2F0C60(&v63, v2, 0, 0);
    *(v0 + 212) = v4;
    *(v0 + 112) = v3;
    if (v3)
    {
      v5 = *(v0 + 48);

LABEL_7:
      v8 = *(v0 + 8);
LABEL_8:

      return v8();
    }

    v13 = v4;
    v14 = *(v0 + 32);
    v15 = type metadata accessor for DefinitionSession(0);
    *(v0 + 120) = v15;
    v16 = *(v15 + 88);
    *(v0 + 28) = v16;
    v17 = v14 + v16;
    v18 = type metadata accessor for GenerationRecipe(0);
    *(v0 + 128) = v18;
    if ((*(v17 + *(v18 + 20) + 53) & 1) == 0)
    {
    }

    *(v0 + 136) = 0;
    *(v0 + 144) = 0;
    v19 = *(v0 + 64);
    if (*(v19 + 16))
    {
      v20 = *(v19 + 32);
      *(v0 + 152) = v20;
      v21 = *(v19 + 40);
      *(v0 + 160) = v21;
      v22 = *(v19 + 48);
      *(v0 + 168) = v22;
      v23 = *(v19 + 56);
      *(v0 + 176) = v23;
      *(v0 + 184) = *(v19 + 64);
      *(v0 + 213) = *(v19 + 75);
      if (v13)
      {
        v24 = *(v0 + 48);

        Width = CVPixelBufferGetWidth(v24);
        v26 = v23 * CVPixelBufferGetHeight(v24);
        if (v22 * Width < 128.0 || v26 < 128.0)
        {
          v28 = *(v0 + 48);

          sub_19A335164();
          swift_allocError();
          *v29 = 0;
          *(v29 + 8) = 0;
          *(v29 + 16) = 3;
          swift_willThrow();

          goto LABEL_7;
        }

        v30 = *(v0 + 208);
        *(v0 + 192) = sub_19A4CB924();
        if (v30)
        {
          v31 = *(v0 + 48);

          v32 = swift_task_alloc();
          *(v0 + 200) = v32;
          *v32 = v0;
          v32[1] = sub_19A4C7FF8;
          v33 = *(v0 + 48);

          return sub_19A357AE0(v0 + 25, v33, v20, v21, v22, v23);
        }

        v19 = *(v0 + 64);
      }
    }

    v34 = *(v0 + 128);
    v35 = *(v0 + 212);
    v36 = *(v0 + 48);
    v37 = *(v0 + 32) + *(v0 + 28);
    v38 = CVPixelBufferGetWidth(v36);
    Height = CVPixelBufferGetHeight(v36);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v36);
    type metadata accessor for ResolvedImage.HiddenBufferData();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_19A5770A0;
    v41 = *(v34 + 100);
    v42 = *(v37 + v41);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_19A31D158(0, *(v42 + 2) + 1, 1, v42);
    }

    v44 = *(v42 + 2);
    v43 = *(v42 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v61 = sub_19A31D158((v43 > 1), v44 + 1, 1, v42);
      v45 = v44 + 1;
      v42 = v61;
    }

    v46 = *(v0 + 120);
    v48 = *(v0 + 40);
    v47 = *(v0 + 48);
    v49 = *(v0 + 32);
    v50 = &v42[72 * v44];
    v51 = *(v0 + 136);
    *(v42 + 2) = v45;
    *(v50 + 4) = v38;
    *(v50 + 5) = Height;
    *(v50 + 12) = PixelFormatType;
    *(v50 + 7) = v47;
    *(v50 + 8) = v40;
    *(v50 + 9) = v19;
    *(v50 + 5) = v51;
    v50[96] = v35;
    *(v37 + v41) = v42;
    v52 = v49;
    v53 = *(v46 + 52);
    v54 = *(v49 + v53);
    v55 = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_19A31E7E4(0, *(v54 + 2) + 1, 1, v54);
    }

    v57 = *(v54 + 2);
    v56 = *(v54 + 3);
    if (v57 >= v56 >> 1)
    {
      v54 = sub_19A31E7E4((v56 > 1), v57 + 1, 1, v54);
    }

    v58 = *(v0 + 210);
    v59 = *(v0 + 40);

    *(v54 + 2) = v57 + 1;
    v60 = &v54[16 * v57];
    *(v60 + 4) = v59;
    v60[40] = v58;
    *(v52 + v53) = v54;
    v8 = *(v0 + 8);
    goto LABEL_8;
  }

  v10 = *(v0 + 32);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 24) = 2;
  v11 = *(v10 + *(type metadata accessor for DefinitionSession(0) + 60));
  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  *v12 = v0;
  v12[1] = sub_19A4C7848;

  return sub_19A2EEF6C((v0 + 16), v11);
}

uint64_t sub_19A4C7848(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 88) = v2;

  if (v2)
  {

    v7 = sub_19A4C7E24;
  }

  else
  {
    *(v6 + 96) = a2;
    *(v6 + 104) = a1;
    v7 = sub_19A4C7990;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_19A4C7990()
{
  v60 = v0;
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v58 = *(v0 + 48);
  v59 = 2;
  v5 = sub_19A2F0C60(&v58, v4, v1, v2);
  *(v0 + 212) = v5;
  *(v0 + 112) = v3;
  if (v3)
  {
    v6 = *(v0 + 48);

LABEL_3:
    v7 = *(v0 + 8);
LABEL_28:

    return v7();
  }

  v8 = v5;
  v9 = *(v0 + 32);
  v10 = type metadata accessor for DefinitionSession(0);
  *(v0 + 120) = v10;
  v11 = *(v10 + 88);
  *(v0 + 28) = v11;
  v12 = v9 + v11;
  v13 = type metadata accessor for GenerationRecipe(0);
  *(v0 + 128) = v13;
  if ((*(v12 + *(v13 + 20) + 53) & 1) == 0)
  {

    v1 = 0;
    v2 = 0;
  }

  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  v14 = *(v0 + 64);
  if (!*(v14 + 16) || (v15 = *(v14 + 32), *(v0 + 152) = v15, v16 = *(v14 + 40), *(v0 + 160) = v16, v17 = *(v14 + 48), *(v0 + 168) = v17, v18 = *(v14 + 56), *(v0 + 176) = v18, *(v0 + 184) = *(v14 + 64), *(v0 + 213) = *(v14 + 75), !v8))
  {
LABEL_19:
    v30 = *(v0 + 128);
    v57 = *(v0 + 212);
    v31 = *(v0 + 48);
    v32 = *(v0 + 32) + *(v0 + 28);
    Width = CVPixelBufferGetWidth(v31);
    Height = CVPixelBufferGetHeight(v31);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v31);
    type metadata accessor for ResolvedImage.HiddenBufferData();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_19A5770A0;
    v36 = *(v30 + 100);
    v37 = *(v32 + v36);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_19A31D158(0, *(v37 + 2) + 1, 1, v37);
    }

    v39 = *(v37 + 2);
    v38 = *(v37 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v55 = sub_19A31D158((v38 > 1), v39 + 1, 1, v37);
      v40 = v39 + 1;
      v37 = v55;
    }

    v41 = *(v0 + 120);
    v43 = *(v0 + 40);
    v42 = *(v0 + 48);
    v44 = *(v0 + 32);
    v45 = &v37[72 * v39];
    v46 = *(v0 + 136);
    *(v37 + 2) = v40;
    *(v45 + 4) = Width;
    *(v45 + 5) = Height;
    *(v45 + 12) = PixelFormatType;
    *(v45 + 7) = v42;
    *(v45 + 8) = v35;
    *(v45 + 9) = v14;
    *(v45 + 5) = v46;
    v45[96] = v57;
    *(v32 + v36) = v37;
    v47 = *(v41 + 52);
    v48 = *(v44 + v47);
    v49 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_19A31E7E4(0, *(v48 + 2) + 1, 1, v48);
    }

    v51 = *(v48 + 2);
    v50 = *(v48 + 3);
    if (v51 >= v50 >> 1)
    {
      v48 = sub_19A31E7E4((v50 > 1), v51 + 1, 1, v48);
    }

    v52 = *(v0 + 210);
    v53 = *(v0 + 40);

    *(v48 + 2) = v51 + 1;
    v54 = &v48[16 * v51];
    *(v54 + 4) = v53;
    v54[40] = v52;
    *(v44 + v47) = v48;
    v7 = *(v0 + 8);
    goto LABEL_28;
  }

  v19 = *(v0 + 48);

  v20 = CVPixelBufferGetWidth(v19);
  v21 = v18 * CVPixelBufferGetHeight(v19);
  if (v17 * v20 < 128.0 || v21 < 128.0)
  {
    v23 = *(v0 + 48);

    sub_19A335164();
    swift_allocError();
    *v24 = 0;
    *(v24 + 8) = 0;
    *(v24 + 16) = 3;
    swift_willThrow();

    goto LABEL_3;
  }

  v25 = *(v0 + 208);
  *(v0 + 192) = sub_19A4CB924();
  if ((v25 & 1) == 0)
  {
    v14 = *(v0 + 64);

    goto LABEL_19;
  }

  v26 = *(v0 + 48);

  v27 = swift_task_alloc();
  *(v0 + 200) = v27;
  *v27 = v0;
  v27[1] = sub_19A4C7FF8;
  v28 = *(v0 + 48);

  return sub_19A357AE0(v0 + 25, v28, v15, v16, v17, v18);
}

uint64_t sub_19A4C7E24()
{
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_19A5723FC();
  __swift_project_value_buffer(v2, qword_1ED82BCF0);
  v3 = v1;
  v4 = sub_19A5723DC();
  v5 = sub_19A57355C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_19A2DE000, v4, v5, "Unable to assign prompt conditioning image: %@", v7, 0xCu);
    sub_19A2F3FA0(v8, &qword_1EAF9FD28, &qword_19A577340);
    MEMORY[0x19A902C50](v8, -1, -1);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  v11 = v0[11];
  v12 = v0[6];

  sub_19A335164();
  swift_allocError();
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_19A4C7FF8()
{

  return MEMORY[0x1EEE6DFA0](sub_19A4C80F4, 0, 0);
}

uint64_t sub_19A4C80F4()
{
  v1 = *(v0 + 25);
  v2 = v1 | (*(v0 + 27) << 16);
  if (v1 == 3)
  {

    v3 = *(v0 + 64);
LABEL_3:

    v4 = *(v0 + 128);
    v5 = *(v0 + 212);
    v6 = *(v0 + 48);
    v7 = *(v0 + 32) + *(v0 + 28);
    Width = CVPixelBufferGetWidth(v6);
    Height = CVPixelBufferGetHeight(v6);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v6);
    type metadata accessor for ResolvedImage.HiddenBufferData();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_19A5770A0;
    v11 = *(v4 + 100);
    v12 = *(v7 + v11);
    v45 = v3;
    v13 = Width;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_19A31D158(0, *(v12 + 2) + 1, 1, v12);
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = sub_19A31D158((v14 > 1), v15 + 1, 1, v12);
    }

    v16 = *(v0 + 120);
    v18 = *(v0 + 40);
    v17 = *(v0 + 48);
    v19 = *(v0 + 32);
    v20 = &v12[72 * v15];
    v21 = *(v0 + 136);
    *(v12 + 2) = v15 + 1;
    v22 = v19;
    *(v20 + 4) = v13;
    *(v20 + 5) = Height;
    *(v20 + 12) = PixelFormatType;
    *(v20 + 7) = v17;
    *(v20 + 8) = v10;
    *(v20 + 9) = v45;
    *(v20 + 5) = v21;
    v20[96] = v5;
    *(v7 + v11) = v12;
    v23 = *(v16 + 52);
    v24 = *(v19 + v23);
    v25 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_19A31E7E4(0, *(v24 + 2) + 1, 1, v24);
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    if (v27 >= v26 >> 1)
    {
      v24 = sub_19A31E7E4((v26 > 1), v27 + 1, 1, v24);
    }

    v28 = *(v0 + 210);
    v29 = *(v0 + 40);

    *(v24 + 2) = v27 + 1;
    v30 = &v24[16 * v27];
    *(v30 + 4) = v29;
    v30[40] = v28;
    *(v22 + v23) = v24;
    v31 = *(v0 + 8);
    goto LABEL_17;
  }

  if (*(v0 + 209))
  {
    v32 = *(v0 + 48);

    sub_19A335164();
    swift_allocError();
    *v33 = xmmword_19A57B410;
    *(v33 + 16) = 3;
    swift_willThrow();
  }

  else
  {
    v34 = *(v0 + 112);
    v35 = *(v0 + 48);
    sub_19A571B9C();
    v36 = v35;
    v37 = sub_19A571B8C();
    if (!v34)
    {
      v40 = v37;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v3 = *(v0 + 64);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v3 = sub_19A32E53C(*(v0 + 64));
      }

      if (!*(v3 + 2))
      {
        __break(1u);
        return result;
      }

      v42 = *(v0 + 213);
      v43 = *(v0 + 168);
      *(v3 + 2) = *(v0 + 152);
      *(v3 + 3) = v43;
      *(v3 + 8) = v40;
      v3[74] = BYTE2(v2);
      *(v3 + 36) = v2;
      v3[75] = v42;

      goto LABEL_3;
    }

    v38 = *(v0 + 48);
  }

  v31 = *(v0 + 8);
LABEL_17:

  return v31();
}

uint64_t sub_19A4C84D0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A4C8534(uint64_t a1)
{
  v3 = sub_19A5727BC();
  v1[2] = v3;
  v1[3] = *(v3 - 8);
  v1[4] = swift_task_alloc();
  v4 = sub_19A57288C();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[9] = v5;
  *v5 = v1;
  v5[1] = sub_19A4C8698;

  return getFacesSortedByDistanceFromImageCenter(pixelBuffer:minimumFaceSize:)(a1, 128.0);
}

uint64_t sub_19A4C8698(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_19A4C87F4, 0, 0);
  }
}

uint64_t sub_19A4C87F4()
{
  v1 = v0[10];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v4 = v0[3];
    v32 = MEMORY[0x1E69E7CC0];
    sub_19A3228A0(0, v2, 0);
    v5 = v32;
    v30 = *(v3 + 16);
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v27 = (v4 + 8);
    v28 = *(v3 + 72);
    v26 = (v3 + 8);
    v29 = v0;
    do
    {
      v31 = v2;
      v8 = v0[7];
      v7 = v0[8];
      v10 = v0[4];
      v9 = v0[5];
      v11 = v0[2];
      v30(v7, v6, v9);
      v30(v8, v7, v9);
      sub_19A57286C();
      sub_19A57279C();
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      (*v27)(v10, v11);
      v20 = *v26;
      (*v26)(v8, v9);
      v20(v7, v9);
      v22 = *(v32 + 16);
      v21 = *(v32 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_19A3228A0((v21 > 1), v22 + 1, 1);
      }

      *(v32 + 16) = v22 + 1;
      v23 = v32 + 48 * v22;
      *(v23 + 32) = v13;
      *(v23 + 40) = v15;
      *(v23 + 48) = v17;
      *(v23 + 56) = v19;
      *(v23 + 64) = 0;
      *(v23 + 72) = 33554435;
      v0 = v29;
      v6 += v28;
      --v2;
    }

    while (v31 != 1);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v24 = v0[1];

  return v24(v5);
}

id DefinitionSession.drawOnImageConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DefinitionSession(0) + 56);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = *(v3 + 40);

  return sub_19A4CA98C(v4, v5, v6, v7, v8);
}

uint64_t sub_19A4C8AB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x746E65696C63;
  v5 = 0x800000019A5954D0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000019A5954D0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 25705;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  v8 = 0x746E65696C63;
  if (*a2 == 1)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_19A573F1C();
  }

  return v11 & 1;
}

uint64_t sub_19A4C8B9C()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

double sub_19A4C8C34(uint64_t a1)
{
  sub_19A572E4C();

  return result;
}

uint64_t sub_19A4C8CB8(uint64_t a1)
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

unint64_t sub_19A4C8D4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_19A4CBE0C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_19A4C8D7C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x746E65696C63;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000019A5954D0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_19A4C8DD0()
{
  v1 = 0x746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t sub_19A4C8E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A4CBE0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A4C8E48(uint64_t a1)
{
  v2 = sub_19A4CA9E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4C8E84(uint64_t a1)
{
  v2 = sub_19A4CA9E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DefinitionSession.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2890, &qword_19A58CD98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A4CA9E4();
  sub_19A5741AC();
  LOBYTE(v13) = 0;
  sub_19A57102C();
  sub_19A4CBF10(&qword_1ED8252E8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_19A573E7C();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for DefinitionSession(0) + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v15 = v9[2];
    v12[7] = 1;
    sub_19A4CAA38();

    sub_19A573E7C();

    LOBYTE(v13) = 2;
    type metadata accessor for GenerationRecipe(0);
    sub_19A4CBF10(&qword_1EAF9F868, type metadata accessor for GenerationRecipe, &unk_19A57FFC4);
    sub_19A573E7C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DefinitionSession.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a1;
  v61 = a2;
  v62 = type metadata accessor for GenerationRecipe(0);
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_19A57102C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v65 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA28A8, &qword_19A58CDA0);
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v79 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8, &qword_19A577310);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v76 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1AE0, &qword_19A5869B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v61 - v10;
  v12 = type metadata accessor for DefinitionSession(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15[*(v16 + 24)] = 0;
  v17 = *(v16 + 28);
  v64 = v4;
  v18 = *(v4 + 56);
  v74 = v17;
  v18(&v15[v17], 1, 1, v3, v13);
  v73 = v12[8];
  sub_19A435A18(&v15[v73]);
  v19 = &v15[v12[9]];
  *v19 = 257;
  v20 = _s17AssignmentOptionsVMa(0);
  v21 = &v19[v20[6]];
  v67 = v3;
  (v18)(v21, 1, 1, v3);
  v19[v20[7]] = 1;
  v19[v20[9]] = 1;
  v19[v20[10]] = 0;
  *&v19[v20[11]] = 1;
  *&v19[v20[12]] = 1;
  *&v19[v20[13]] = 4;
  *&v19[v20[14]] = 4;
  v22 = &v19[v20[15]];
  *v22 = 0;
  v22[8] = 1;
  v19[v20[16]] = 3;
  v23 = &v19[v20[17]];
  *v23 = 0;
  v23[8] = 1;
  *&v19[v20[18]] = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD88, &qword_19A5770D0);
  *&v75 = sub_19A57112C();
  v24 = *(v75 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_19A576E10;
  sub_19A474D68(v26 + v25);
  v27 = &v19[v20[8]];
  *v27 = v26;
  *(v27 + 1) = 5;
  *(v27 + 4) = 1064514355;
  v28 = &v15[v12[10]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = v12[11];
  v30 = type metadata accessor for SmileyAnalyzer.ClassifierState(0);
  (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA28B0, &qword_19A58CDA8);
  v31 = swift_allocObject();
  *(v31 + ((*(*v31 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_19A3351B8(v11, v31 + *(*v31 + *MEMORY[0x1E69E6B68] + 16), &qword_1EAFA1AE0, &qword_19A5869B0);
  *&v15[v29] = v31;
  v32 = &v15[v12[12]];
  *v32 = 0;
  v71 = v32;
  v72 = v31;
  v32[8] = -1;
  v33 = &v15[v12[14]];
  *v33 = xmmword_19A577080;
  *(v33 + 3) = 0;
  *(v33 + 4) = 0;
  *(v33 + 2) = 0;
  v33[40] = 0;
  v34 = v12[15];
  v77 = [objc_opt_self() service];
  *&v15[v34] = v77;
  *&v15[v12[16]] = 0;
  v35 = v12[17];
  v36 = type metadata accessor for TextSanitizer(0);
  v37 = *(*(v36 - 8) + 56);
  v70 = v35;
  v37(&v15[v35], 1, 1, v36);
  v38 = v12[18];
  v39 = type metadata accessor for MessagesBackgroundEstimator(0);
  v40 = *(*(v39 - 8) + 56);
  v69 = v38;
  v40(&v15[v38], 1, 1, v39);
  v41 = v12[20];
  type metadata accessor for GoalValidator();
  v42 = swift_allocObject();
  v43 = v76;
  (*(v24 + 56))(v76, 1, 1, v75);
  type metadata accessor for EntityExtractor(0);
  swift_allocObject();
  *(v42 + 16) = sub_19A3B2348(v43);
  type metadata accessor for LexiconUtility();
  swift_allocObject();
  *(v42 + 24) = LexiconUtility.init()();
  v76 = v42;
  *&v15[v41] = v42;
  type metadata accessor for ImageChecker();
  v44 = swift_allocObject();
  v84 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA28B8, &qword_19A58CDB0);
  v45 = swift_allocObject();
  *(v45 + 80) = 0;
  v46 = (v45 + 80);
  v75 = xmmword_19A57FCB0;
  *(v45 + 16) = xmmword_19A57FCB0;
  *(v45 + 32) = 0;
  *(v45 + 40) = 0;
  *(v45 + 48) = 0xE000000000000000;
  *(v45 + 56) = 0;
  *(v45 + 60) = v84;
  *(v45 + 61) = v85;
  *(v45 + 63) = v86;
  *(v45 + 64) = 0;
  *(v45 + 72) = 0;
  *(v44 + 16) = v45;
  os_unfair_lock_lock((v45 + 80));
  if (*(v45 + 24) != 1)
  {
    v47 = *(v45 + 16);
    *(v45 + 16) = v75;
  }

  v48 = v12[21];
  os_unfair_lock_unlock(v46);
  *&v75 = v44;
  *&v15[v48] = v44;
  *&v15[v12[23]] = 0;
  *&v15[v12[24]] = 0;
  v49 = v80;
  __swift_project_boxed_opaque_existential_1(v80, v80[3]);
  sub_19A4CA9E4();
  v50 = v78;
  v51 = v79;
  sub_19A57417C();
  if (v50)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    sub_19A2F3FA0(&v15[v74], &qword_1EAF9FD80, &unk_19A57B720);
    sub_19A4CC068(&v15[v73], type metadata accessor for UserPromptRewriter);
    sub_19A4CC068(v19, _s17AssignmentOptionsVMa);

    sub_19A335458(*v71, v71[8]);
    sub_19A335400(*v33, *(v33 + 1), *(v33 + 2), *(v33 + 3), *(v33 + 4));

    sub_19A2F3FA0(&v15[v70], &qword_1EAFA1020, &qword_19A58CCD0);
    sub_19A2F3FA0(&v15[v69], &qword_1EAFA28C0, &qword_19A58CDB8);
  }

  else
  {
    LOBYTE(v81) = 0;
    sub_19A4CBF10(&qword_1ED8252E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v52 = v65;
    v53 = v67;
    sub_19A573D4C();
    (*(v64 + 32))(v15, v52, v53);
    v83 = 1;
    sub_19A4CAA8C();
    v54 = v68;
    v55 = v51;
    sub_19A573D4C();
    v56 = &v15[v12[5]];
    *v56 = v81;
    *(v56 + 2) = v82;
    LOBYTE(v81) = 2;
    sub_19A4CBF10(&qword_1EAF9ED78, type metadata accessor for GenerationRecipe, &unk_19A57FF9C);
    v57 = v63;
    v78 = 0;
    sub_19A573D4C();
    v58 = v80;
    v59 = v12[13];
    sub_19A4CBF58(v57, &v15[v12[22]], type metadata accessor for GenerationRecipe);
    type metadata accessor for InputConditioner();
    swift_allocObject();
    *&v15[v12[19]] = sub_19A3BA638(v77);
    *&v15[v59] = MEMORY[0x1E69E7CC0];
    sub_19A4C64E0();
    (*(v66 + 8))(v55, v54);
    sub_19A4CC000(v15, v61, type metadata accessor for DefinitionSession);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    return sub_19A4CC068(v15, type metadata accessor for DefinitionSession);
  }
}

uint64_t (*DefinitionSession.forceInProcessGeneration.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for DefinitionSession(0) + 88);
  *(a1 + 8) = v3;
  v4 = v1 + v3;
  v5 = *(type metadata accessor for GenerationRecipe(0) + 20);
  *(a1 + 12) = v5;
  *(a1 + 16) = *(v4 + v5 + 50);
  return sub_19A4C9D5C;
}

uint64_t sub_19A4C9D78@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19A57102C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_19A4C9E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ImageGenerator();
  v5 = v2 + *(a1 + 88);
  v6 = type metadata accessor for GenerationRecipe(0);
  sub_19A34F314(*(v5 + *(v6 + 20)), *(v5 + *(v6 + 20) + 8), v10);
  v7 = v11;
  if (v11)
  {
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v8 + 48))(v7, v8);
    return __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  else
  {
    result = sub_19A2F3FA0(v10, &qword_1EAF9FDA8, &qword_19A581780);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 20) = 1;
  }

  return result;
}

uint64_t sub_19A4C9EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ImageGenerator();
  v5 = v2 + *(a1 + 88);
  v6 = type metadata accessor for GenerationRecipe(0);
  sub_19A34F314(*(v5 + *(v6 + 20)), *(v5 + *(v6 + 20) + 8), v10);
  v7 = v11;
  if (v11)
  {
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v8 + 56))(v7, v8);
    return __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  else
  {
    result = sub_19A2F3FA0(v10, &qword_1EAF9FDA8, &qword_19A581780);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 20) = 1;
  }

  return result;
}

uint64_t sub_19A4C9FC0(uint64_t a1)
{
  type metadata accessor for ImageGenerator();
  v3 = v1 + *(a1 + 88);
  v4 = type metadata accessor for GenerationRecipe(0);
  sub_19A34F314(*(v3 + *(v4 + 20)), *(v3 + *(v4 + 20) + 8), v8);
  v5 = v9;
  if (v9)
  {
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v6 + 64))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
    sub_19A2F3FA0(v8, &qword_1EAF9FDA8, &qword_19A581780);
  }

  return v5;
}

uint64_t sub_19A4CA088(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A4CA0A8, 0, 0);
}

uint64_t sub_19A4CA0A8()
{
  v1 = v0[2];
  v2 = *(v0[3] + 88);
  v3 = type metadata accessor for GenerationRecipe(0);
  v4 = v0[1];
  v5 = *(v1 + *(v3 + 52) + v2 + 1);

  return v4(v5);
}

uint64_t sub_19A4CA120(char a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = a2;
  *(v3 + 32) = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A4CA144, 0, 0);
}

uint64_t sub_19A4CA144()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(*(v0 + 24) + 88);
  *(v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v3 + 1) = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_19A4CA1CC(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A4CA1EC, 0, 0);
}

uint64_t sub_19A4CA1EC()
{
  v1 = v0[2];
  v2 = *(v0[3] + 88);
  *(v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v2 + 1) = 3;
  v3 = v0[1];

  return v3();
}

uint64_t sub_19A4CA268(uint64_t a1, uint64_t a2)
{
  v3[3] = v2;
  v3[4] = a2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A4CA28C, 0, 0);
}

uint64_t sub_19A4CA28C()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + 88);
  *v2 = *(v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v3 + 2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_19A4CA314(_BYTE *a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = a2;
  *(v3 + 32) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_19A4CA33C, 0, 0);
}

uint64_t sub_19A4CA33C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(*(v0 + 24) + 88);
  *(v2 + *(type metadata accessor for GenerationRecipe(0) + 52) + v3 + 2) = v1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_19A4CA3C4(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A4CA3E4, 0, 0);
}

uint64_t sub_19A4CA3E4()
{
  v1 = v0[2];
  v2 = *(v0[3] + 88);
  *(v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v2 + 2) = 10;
  v3 = v0[1];

  return v3();
}

uint64_t sub_19A4CA460(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A4CA480, 0, 0);
}

uint64_t sub_19A4CA480()
{
  v1 = v0[2];
  v2 = *(v0[3] + 88);
  v3 = v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v2;
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  v7 = v0[1];

  return v7(v5, v4);
}

uint64_t sub_19A4CA518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19A2F759C;

  return DefinitionSession.specifyPersonDescriptionDirective(_:analysisLocales:)(a1, a2, a3);
}

uint64_t sub_19A4CA5C4(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A4CA5E4, 0, 0);
}

uint64_t sub_19A4CA5E4()
{
  v1 = v0[2];
  v2 = *(v0[3] + 88);
  v3 = v1 + *(type metadata accessor for GenerationRecipe(0) + 52) + v2;

  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  v4 = v0[1];

  return v4();
}

uint64_t sub_19A4CA664(uint64_t a1)
{
  v2 = v1 + *(a1 + 88);
  v3 = *(v2 + *(type metadata accessor for GenerationRecipe(0) + 20));

  return v3;
}

uint64_t sub_19A4CA6D4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_19A4CA6EC()
{
  result = qword_1EAFA2810;
  if (!qword_1EAFA2810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2810);
  }

  return result;
}

unint64_t sub_19A4CA740()
{
  result = qword_1EAFA2818;
  if (!qword_1EAFA2818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2818);
  }

  return result;
}

unint64_t sub_19A4CA794()
{
  result = qword_1EAFA2820;
  if (!qword_1EAFA2820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2820);
  }

  return result;
}

unint64_t sub_19A4CA7E8()
{
  result = qword_1EAFA2828;
  if (!qword_1EAFA2828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2828);
  }

  return result;
}

unint64_t sub_19A4CA83C()
{
  result = qword_1EAFA2830;
  if (!qword_1EAFA2830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2830);
  }

  return result;
}

unint64_t sub_19A4CA890()
{
  result = qword_1EAFA2838;
  if (!qword_1EAFA2838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2838);
  }

  return result;
}

unint64_t sub_19A4CA8E4()
{
  result = qword_1EAFA2840;
  if (!qword_1EAFA2840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2840);
  }

  return result;
}

unint64_t sub_19A4CA938()
{
  result = qword_1EAFA2848;
  if (!qword_1EAFA2848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2848);
  }

  return result;
}

id sub_19A4CA98C(id result, char a2, void *a3, uint64_t a4, void *a5)
{
  if (a2 != -1)
  {
    v6 = result;
    v7 = a5;
    v8 = v6;

    return a3;
  }

  return result;
}

unint64_t sub_19A4CA9E4()
{
  result = qword_1EAFA2898;
  if (!qword_1EAFA2898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2898);
  }

  return result;
}

unint64_t sub_19A4CAA38()
{
  result = qword_1EAFA28A0;
  if (!qword_1EAFA28A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA28A0);
  }

  return result;
}

unint64_t sub_19A4CAA8C()
{
  result = qword_1EAFA28C8;
  if (!qword_1EAFA28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA28C8);
  }

  return result;
}

unint64_t sub_19A4CAAE0(void *a1)
{
  a1[1] = sub_19A4CAB18();
  a1[2] = sub_19A4CAB6C();
  result = sub_19A335164();
  a1[3] = result;
  return result;
}

unint64_t sub_19A4CAB18()
{
  result = qword_1EAFA28D0;
  if (!qword_1EAFA28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA28D0);
  }

  return result;
}

unint64_t sub_19A4CAB6C()
{
  result = qword_1EAFA28D8;
  if (!qword_1EAFA28D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA28D8);
  }

  return result;
}

void sub_19A4CAC34(uint64_t a1)
{
  sub_19A57102C();
  if (v1 <= 0x3F)
  {
    sub_19A4CB004(319, &qword_1EAF9F6F8, type metadata accessor for ImageVariations);
    if (v2 <= 0x3F)
    {
      sub_19A4CB004(319, &qword_1ED825580, MEMORY[0x1E69695A8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UserPromptRewriter(319);
        if (v4 <= 0x3F)
        {
          _s17AssignmentOptionsVMa(319);
          if (v5 <= 0x3F)
          {
            sub_19A3B12E0(319);
            if (v6 <= 0x3F)
            {
              sub_19A4CAFB4(319, &qword_1EAF9F230, &type metadata for Image, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_19A4CAFB4(319, &qword_1EAF9F0F8, &type metadata for Image, MEMORY[0x1E69E62F8]);
                if (v8 <= 0x3F)
                {
                  sub_19A4CAFB4(319, &qword_1EAF9F698, &type metadata for DefinitionSession.DrawOnImageConfiguration, MEMORY[0x1E69E6720]);
                  if (v9 <= 0x3F)
                  {
                    sub_19A4CAF68();
                    if (v10 <= 0x3F)
                    {
                      sub_19A4CAFB4(319, &qword_1EAFA28E0, &type metadata for PeopleDetector, MEMORY[0x1E69E6720]);
                      if (v11 <= 0x3F)
                      {
                        sub_19A4CB004(319, &qword_1EAF9F808, type metadata accessor for TextSanitizer);
                        if (v12 <= 0x3F)
                        {
                          sub_19A4CB004(319, &qword_1EAF9F318, type metadata accessor for MessagesBackgroundEstimator);
                          if (v13 <= 0x3F)
                          {
                            type metadata accessor for InputConditioner();
                            if (v14 <= 0x3F)
                            {
                              type metadata accessor for GoalValidator();
                              if (v15 <= 0x3F)
                              {
                                type metadata accessor for ImageChecker();
                                if (v16 <= 0x3F)
                                {
                                  type metadata accessor for GenerationRecipe(319);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_19A4CB004(319, &qword_1EAF9F498, type metadata accessor for ModelManagerInterface);
                                    if (v18 <= 0x3F)
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

unint64_t sub_19A4CAF68()
{
  result = qword_1EAF9F0A0;
  if (!qword_1EAF9F0A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF9F0A0);
  }

  return result;
}

void sub_19A4CAFB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_19A4CB004(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19A57378C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16VisualGeneration17DefinitionSessionV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_19A4CB074(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_19A4CB140()
{
  result = qword_1EAFA28E8;
  if (!qword_1EAFA28E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA28E8);
  }

  return result;
}

unint64_t sub_19A4CB198()
{
  result = qword_1EAFA28F0;
  if (!qword_1EAFA28F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA28F0);
  }

  return result;
}

unint64_t sub_19A4CB1F0()
{
  result = qword_1EAFA28F8;
  if (!qword_1EAFA28F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA28F8);
  }

  return result;
}

unint64_t sub_19A4CB248()
{
  result = qword_1EAFA2900;
  if (!qword_1EAFA2900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2900);
  }

  return result;
}

unint64_t sub_19A4CB2A0()
{
  result = qword_1EAFA2908;
  if (!qword_1EAFA2908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2908);
  }

  return result;
}

unint64_t sub_19A4CB2F8()
{
  result = qword_1EAFA2910;
  if (!qword_1EAFA2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2910);
  }

  return result;
}

unint64_t sub_19A4CB350()
{
  result = qword_1EAFA2918;
  if (!qword_1EAFA2918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2918);
  }

  return result;
}

unint64_t sub_19A4CB3A8()
{
  result = qword_1EAFA2920;
  if (!qword_1EAFA2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2920);
  }

  return result;
}

unint64_t sub_19A4CB400()
{
  result = qword_1EAFA2928;
  if (!qword_1EAFA2928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2928);
  }

  return result;
}

unint64_t sub_19A4CB458()
{
  result = qword_1EAFA2930;
  if (!qword_1EAFA2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2930);
  }

  return result;
}

unint64_t sub_19A4CB4B0()
{
  result = qword_1EAFA2938;
  if (!qword_1EAFA2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2938);
  }

  return result;
}

unint64_t sub_19A4CB508()
{
  result = qword_1EAFA2940;
  if (!qword_1EAFA2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2940);
  }

  return result;
}

unint64_t sub_19A4CB560()
{
  result = qword_1EAFA2948;
  if (!qword_1EAFA2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2948);
  }

  return result;
}

unint64_t sub_19A4CB5B8()
{
  result = qword_1EAFA2950;
  if (!qword_1EAFA2950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2950);
  }

  return result;
}

unint64_t sub_19A4CB610()
{
  result = qword_1EAFA2958;
  if (!qword_1EAFA2958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2958);
  }

  return result;
}

unint64_t sub_19A4CB668()
{
  result = qword_1EAFA2960;
  if (!qword_1EAFA2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2960);
  }

  return result;
}

unint64_t sub_19A4CB6C0()
{
  result = qword_1EAFA2968;
  if (!qword_1EAFA2968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2968);
  }

  return result;
}

unint64_t sub_19A4CB718()
{
  result = qword_1EAFA2970;
  if (!qword_1EAFA2970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2970);
  }

  return result;
}

unint64_t sub_19A4CB770()
{
  result = qword_1EAFA2978;
  if (!qword_1EAFA2978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2978);
  }

  return result;
}

unint64_t sub_19A4CB7C8()
{
  result = qword_1EAFA2980;
  if (!qword_1EAFA2980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2980);
  }

  return result;
}

unint64_t sub_19A4CB820()
{
  result = qword_1EAFA2988;
  if (!qword_1EAFA2988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2988);
  }

  return result;
}

unint64_t sub_19A4CB878()
{
  result = qword_1EAFA2990;
  if (!qword_1EAFA2990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2990);
  }

  return result;
}

unint64_t sub_19A4CB8D0()
{
  result = qword_1EAFA2998;
  if (!qword_1EAFA2998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2998);
  }

  return result;
}

uint64_t sub_19A4CB924()
{
  v1 = type metadata accessor for DefinitionSession(0);
  v2 = (v0 + *(v1 + 88));
  v3 = v2[*(type metadata accessor for GenerationRecipe(0) + 20) + 48];
  v25 = v1;
  v26 = v0;
  v4 = *(v0 + *(v1 + 84));
  v5 = *(v4 + 16);
  os_unfair_lock_lock((v5 + 80));
  v6 = *(v5 + 24);
  os_unfair_lock_unlock((v5 + 80));
  if (v6 != v3)
  {
    v7 = *(v4 + 16);
    os_unfair_lock_lock((v7 + 80));
    if (*(v7 + 24) != v3)
    {
      v8 = *(v7 + 16);
      *(v7 + 16) = 0;
      *(v7 + 24) = v3;
    }

    os_unfair_lock_unlock((v7 + 80));
  }

  v9 = *v2;
  if (v9 == 2)
  {
    v10 = 0xD000000000000025;
  }

  else
  {
    v10 = 0xD000000000000010;
  }

  if (v9 == 2)
  {
    v11 = "Generation.AppleDiffusion";
  }

  else
  {
    v11 = &unk_19A58D010;
  }

  v12 = 0xD000000000000027;
  if (*v2)
  {
    v12 = 0xD000000000000025;
    v13 = ".KeyboardEmojiGenerator";
  }

  else
  {
    v13 = ".PhotosGenerativeEdit";
  }

  if (*v2 <= 1u)
  {
    v14 = v12;
  }

  else
  {
    v14 = v10;
  }

  if (*v2 <= 1u)
  {
    v15 = v13;
  }

  else
  {
    v15 = v11;
  }

  v16 = sub_19A4455C4(v14, v15 | 0x8000000000000000);

  v17 = *(v4 + 16);
  os_unfair_lock_lock((v17 + 80));
  if (v16 != *(v17 + 32))
  {
    *(v17 + 32) = v16;
    v18 = *(v17 + 16);
    *(v17 + 16) = 0;
  }

  os_unfair_lock_unlock((v17 + 80));
  v19 = *(v4 + 16);
  MEMORY[0x1EEE9AC00](v20);
  os_unfair_lock_lock(v19 + 20);
  sub_19A4CBFE4(&v19[4]);
  os_unfair_lock_unlock(v19 + 20);

  v21 = *(v26 + *(v25 + 20) + 16);
  v22 = *(v4 + 16);
  os_unfair_lock_lock((v22 + 80));
  if ((*(v22 + 60) & 1) != 0 || v21 != *(v22 + 56))
  {
    v23 = *(v22 + 16);
    *(v22 + 16) = 0;

    *(v22 + 56) = v21;
    *(v22 + 60) = 0;
  }

  os_unfair_lock_unlock((v22 + 80));
  return v4;
}

BOOL sub_19A4CBB6C(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *(v2 + 16);
  if ((a2 & 1) == 0)
  {
    if (v3)
    {
      if (!((*(v2 + 88) ^ *(v2 + 80)) >> 14) && (*(v2 + 48) & 0x40) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return v3 && (*(v2 + 88) ^ *(v2 + 80)) < 0x4000;
}

uint64_t sub_19A4CBBC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x800000019A59BD40 == a2;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000019A59BD60 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000019A59BD80 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000019A59BDA0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000025 && 0x800000019A59BDC0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000019A59BDF0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000019A59BE10 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_19A4CBE0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_19A573C2C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_19A4CBE58(uint64_t a1, uint64_t a2)
{
  v4 = _s17AssignmentOptionsVMa(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_19A4CBECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_19A4CBF10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19A4CBF58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A4CC000(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A4CC068(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A4CC0E4(uint64_t a1)
{
  v2 = type metadata accessor for AugmentedPrompt(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = sub_19A570C7C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_19A570C6C();
  result = sub_19A570BFC();
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v13 = *(v3 + 72);
    sub_19A4CE7BC(a1 + v12, v8, type metadata accessor for AugmentedPrompt);
    sub_19A570BEC();
    sub_19A4CE994(&qword_1ED825300, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    sub_19A570BBC();
    result = sub_19A4CE9DC(v8, type metadata accessor for AugmentedPrompt);
    v14 = v11 - 1;
    if (v14)
    {
      v15 = a1 + v13 + v12;
      do
      {
        sub_19A4CE7BC(v15, v8, type metadata accessor for AugmentedPrompt);
        sub_19A570C6C();
        sub_19A570BFC();
        sub_19A570BBC();
        sub_19A4CE9DC(v5, type metadata accessor for AugmentedPrompt);
        sub_19A570BBC();
        result = sub_19A4CE9DC(v8, type metadata accessor for AugmentedPrompt);
        v15 += v13;
        --v14;
      }

      while (v14);
    }
  }

  return result;
}

uint64_t sub_19A4CC370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A4CC39C, 0, 0);
}

uint64_t sub_19A4CC39C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for ImageGenerator.Result(0);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 48);
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v5;
  *(v4 + 48) = v1;
  *(v4 + 56) = v2;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_19A4CC4A0;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v7, v3, v3, 0, 0, &unk_19A57EAF0, v4, v3);
}

uint64_t sub_19A4CC4A0()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19A4CC5DC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_19A4CC5DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A4CC640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98, &qword_19A57A710);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_19A33546C(a1, v18 - v8, &qword_1EAF9FD98, &qword_19A57A710);
  v10 = sub_19A5731CC();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_19A2F3FA0(v9, &qword_1EAF9FD98, &qword_19A57A710);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_19A57314C();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_19A5731BC();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  type metadata accessor for ImageGenerator.Result(0);
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

void sub_19A4CC830()
{
  sub_19A57395C();
  sub_19A5741FC();

  MEMORY[0x19A900A50](0xD000000000000020, 0x800000019A59C080);
  sub_19A573B7C();
  __break(1u);
}

void sub_19A4CC8DC()
{
  sub_19A57395C();
  sub_19A5741FC();

  MEMORY[0x19A900A50](0xD00000000000002BLL, 0x800000019A59C050);
  sub_19A573B7C();
  __break(1u);
}

uint64_t sub_19A4CC988(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA29B0, &qword_19A58DDB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A4CE65C();
  sub_19A5741AC();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDF8, &qword_19A5773B0);
  sub_19A4CE720(&qword_1EAF9E8C0, &qword_1EAF9ED38, &protocol conformance descriptor for GeneratedImage, MEMORY[0x1E69E6300]);
  sub_19A573E7C();
  if (!v2)
  {
    type metadata accessor for ImageGenerator.Result(0);
    v10[6] = 1;
    type metadata accessor for InferenceDiagnosticsAccessor(0);
    sub_19A4CE994(&qword_1EAF9EE30, type metadata accessor for InferenceDiagnosticsAccessor, &protocol conformance descriptor for InferenceDiagnosticsAccessor);
    sub_19A573E1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_19A4CCBA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C30, &unk_19A57EAB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA29A8, &unk_19A58DDA0);
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ImageGenerator.Result(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = MEMORY[0x1E69E7CC0];
  v14 = *(v13 + 28);
  v15 = type metadata accessor for InferenceDiagnosticsAccessor(0);
  (*(*(v15 - 8) + 56))(&v12[v14], 1, 1, v15);
  v16 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_19A4CE65C();
  sub_19A57417C();
  if (!v2)
  {
    v20 = v14;
    v17 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDF8, &qword_19A5773B0);
    v26 = 0;
    sub_19A4CE720(&qword_1EAF9F120, &qword_1EAF9F800, &protocol conformance descriptor for GeneratedImage, MEMORY[0x1E69E6330]);
    v18 = v23;
    sub_19A573D4C();
    *v12 = v27;
    v25 = 1;
    sub_19A4CE994(&qword_1EAF9F898, type metadata accessor for InferenceDiagnosticsAccessor, &protocol conformance descriptor for InferenceDiagnosticsAccessor);
    sub_19A573CDC();
    (*(v17 + 8))(v9, v18);
    sub_19A4CE6B0(v6, &v12[v20]);
    sub_19A4CE7BC(v12, v21, type metadata accessor for ImageGenerator.Result);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  return sub_19A4CE9DC(v12, type metadata accessor for ImageGenerator.Result);
}

uint64_t sub_19A4CCF28()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x65746172656E6567;
  }
}

void sub_19A4CCF74(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65746172656E6567 && a2 == 0xEF736567616D4964;
  if (v6 || (sub_19A573F1C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000019A59C0B0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_19A4CD060(uint64_t a1)
{
  v2 = sub_19A4CE65C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4CD09C(uint64_t a1)
{
  v2 = sub_19A4CE65C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A4CD108()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = OBJC_IVAR____TtCC16VisualGeneration14ImageGenerator14GenerationTask_id;
  v2 = sub_19A57102C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC16VisualGeneration14ImageGenerator14GenerationTask_requestIdentifier, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_19A4CD1DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC16VisualGeneration14ImageGenerator14GenerationTask_id;
  v5 = sub_19A57102C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_19A4CD258()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

uint64_t sub_19A4CD2B4()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_19A4CD30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[15] = a3;
  v8[16] = a4;
  v8[13] = a1;
  v8[14] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C28, &qword_19A58DDC0);
  v8[21] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA29B8, &unk_19A58DDC8);
  v8[22] = v9;
  v8[23] = *(v9 - 8);
  v8[24] = swift_task_alloc();
  v10 = *(type metadata accessor for GenerationRecipe(0) - 8);
  v8[25] = v10;
  v8[26] = *(v10 + 64);
  v8[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98, &qword_19A57A710);
  v8[28] = swift_task_alloc();
  v11 = sub_19A57102C();
  v8[29] = v11;
  v8[30] = *(v11 - 8);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A4CD51C, 0, 0);
}

uint64_t sub_19A4CD51C()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = *(v0 + 224);
  v24 = *(v0 + 216);
  v25 = *(v0 + 200);
  v26 = *(v0 + 152);
  v6 = *(v0 + 136);
  v22 = *(v0 + 144);
  v23 = *(v0 + 160);
  v7 = *(v0 + 128);
  v27 = *(v0 + 104);
  v8 = *(v4 + 16);
  v8(v1, *(v0 + 120), v3);
  v8(v2, v7, v3);
  sub_19A2F3EF0(v6, v0 + 16);
  type metadata accessor for ImageGenerator.GenerationTask(0);
  v9 = swift_allocObject();
  *(v0 + 264) = v9;
  v10 = *(v4 + 32);
  v10(v9 + OBJC_IVAR____TtCC16VisualGeneration14ImageGenerator14GenerationTask_id, v1, v3);
  v10(v9 + OBJC_IVAR____TtCC16VisualGeneration14ImageGenerator14GenerationTask_requestIdentifier, v2, v3);
  sub_19A2EA460((v0 + 16), v9 + 16);
  v11 = sub_19A5731CC();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_19A33546C(v22, v0 + 56, &qword_1EAFA0440, &unk_19A585480);
  sub_19A4CE7BC(v23, v24, type metadata accessor for GenerationRecipe);
  v12 = (*(v25 + 80) + 88) & ~*(v25 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v14 = *(v0 + 72);
  *(v13 + 32) = *(v0 + 56);
  *(v13 + 48) = v14;
  *(v13 + 64) = *(v0 + 88);
  *(v13 + 72) = v26;
  *(v13 + 80) = v9;
  sub_19A4CE92C(v24, v13 + v12, type metadata accessor for GenerationRecipe);

  sub_19A4CC640(v5, &unk_19A58DDE0, v13);
  sub_19A2F3FA0(v5, &qword_1EAF9FD98, &qword_19A57A710);
  *v27 = MEMORY[0x1E69E7CC0];
  v15 = type metadata accessor for ImageGenerator.Result(0);
  *(v0 + 272) = v15;
  v16 = *(v15 + 20);
  v17 = type metadata accessor for InferenceDiagnosticsAccessor(0);
  (*(*(v17 - 8) + 56))(&v27[v16], 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
  sub_19A57326C();
  v18 = swift_task_alloc();
  *(v0 + 280) = v18;
  *v18 = v0;
  v18[1] = sub_19A4CD894;
  v19 = *(v0 + 168);
  v20 = *(v0 + 176);

  return MEMORY[0x1EEE6DAD8](v19, 0, 0, v20, v0 + 96);
}

uint64_t sub_19A4CD894()
{

  if (v0)
  {
    v1 = sub_19A4CDB84;
  }

  else
  {
    v1 = sub_19A4CD9A4;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_19A4CD9A4()
{
  v1 = v0[21];
  if ((*(*(v0[34] - 8) + 48))(v1, 1) == 1)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[13];
    sub_19A4CE9DC(v4, type metadata accessor for ImageGenerator.Result);
    sub_19A4CE92C(v1, v4, type metadata accessor for ImageGenerator.Result);
    v5 = swift_task_alloc();
    v0[35] = v5;
    *v5 = v0;
    v5[1] = sub_19A4CD894;
    v6 = v0[21];
    v7 = v0[22];

    return MEMORY[0x1EEE6DAD8](v6, 0, 0, v7, v0 + 12);
  }
}

uint64_t sub_19A4CDB84()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[13];

  (*(v1 + 8))(v2, v3);
  sub_19A4CE9DC(v4, type metadata accessor for ImageGenerator.Result);

  v5 = v0[1];

  return v5();
}

uint64_t sub_19A4CDC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v7[17] = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A4CDCA8, 0, 0);
}

uint64_t sub_19A4CDCA8()
{
  sub_19A33546C(v0[18], (v0 + 2), &qword_1EAFA0440, &unk_19A585480);
  v1 = v0[5];
  if (v1)
  {
    v3 = v0[19];
    v2 = v0[20];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    (*(v4 + 8))(v3, v2, v1, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  }

  else
  {
    sub_19A2F3FA0((v0 + 2), &qword_1EAFA0440, &unk_19A585480);
  }

  v11 = (*(*v0[19] + 160) + **(*v0[19] + 160));
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_19A4CDE64;
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[18];
  v9 = v0[17];

  return v11(v9, v6, v7, v8);
}

uint64_t sub_19A4CDE64()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_19A4CE070;
  }

  else
  {
    v2 = sub_19A4CDF78;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A4CDF78()
{
  sub_19A33546C(v0[18], (v0 + 12), &qword_1EAFA0440, &unk_19A585480);
  v1 = v0[15];
  if (v1)
  {
    v3 = v0[19];
    v2 = v0[20];
    v4 = v0[16];
    v5 = v0[17];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
    (*(v4 + 32))(v3, v2, *v5, v1, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  }

  else
  {
    sub_19A2F3FA0((v0 + 12), &qword_1EAFA0440, &unk_19A585480);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_19A4CE070()
{
  sub_19A33546C(v0[18], (v0 + 7), &qword_1EAFA0440, &unk_19A585480);
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[23];
    v4 = v0[19];
    v3 = v0[20];
    v5 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    (*(v5 + 24))(v4, v3, v2, v1, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  }

  else
  {
    sub_19A2F3FA0((v0 + 7), &qword_1EAFA0440, &unk_19A585480);
  }

  swift_willThrow();
  v6 = v0[1];

  return v6();
}

uint64_t sub_19A4CE174(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_19A4CE1B8, 0, 0);
}

uint64_t sub_19A4CE1B8()
{
  v15 = v0;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = sub_19A5723FC();
  __swift_project_value_buffer(v1, qword_1ED82BCF0);
  v2 = sub_19A5723DC();
  v3 = sub_19A57355C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    v6 = sub_19A5741FC();
    v8 = sub_19A31F114(v6, v7, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_19A2DE000, v2, v3, "%s must provide an override for generateImages(from:task:requestIdentifier:delegate:)", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x19A902C50](v5, -1, -1);
    MEMORY[0x19A902C50](v4, -1, -1);
  }

  v9 = *(v0 + 16);
  *v9 = MEMORY[0x1E69E7CC0];
  v10 = *(type metadata accessor for ImageGenerator.Result(0) + 20);
  v11 = type metadata accessor for InferenceDiagnosticsAccessor(0);
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_19A4CE3E8(uint64_t a1)
{
  result = sub_19A57102C();
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

void sub_19A4CE4CC(uint64_t a1)
{
  sub_19A4CE5B0(319, &qword_1ED823F58, type metadata accessor for GeneratedImage, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_19A4CE5B0(319, qword_1ED824DA0, type metadata accessor for InferenceDiagnosticsAccessor, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19A4CE5B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_19A4CE65C()
{
  result = qword_1ED824B58;
  if (!qword_1ED824B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824B58);
  }

  return result;
}

uint64_t sub_19A4CE6B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C30, &unk_19A57EAB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A4CE720(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF9FDF8, &qword_19A5773B0);
    sub_19A4CE994(a2, type metadata accessor for GeneratedImage, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A4CE7BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A4CE824(uint64_t a1)
{
  v4 = *(type metadata accessor for GenerationRecipe(0) - 8);
  v5 = (*(v4 + 80) + 88) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[9];
  v9 = v1[10];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_19A2F759C;

  return sub_19A4CDC80(a1, v6, v7, (v1 + 4), v8, v9, v1 + v5);
}

uint64_t sub_19A4CE92C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A4CE994(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19A4CE9DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_19A4CEA50()
{
  result = qword_1EAFA29C0;
  if (!qword_1EAFA29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA29C0);
  }

  return result;
}

unint64_t sub_19A4CEAA8()
{
  result = qword_1ED824B48;
  if (!qword_1ED824B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824B48);
  }

  return result;
}

unint64_t sub_19A4CEB00()
{
  result = qword_1ED824B50;
  if (!qword_1ED824B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824B50);
  }

  return result;
}

uint64_t sub_19A4CEB54()
{
  v1 = sub_19A571EDC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      v6 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
      [v5 extent];
      v7 = [v6 createCGImage:v5 fromRect:?];
    }

    else
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
      v6 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
      [v8 extent];
      v7 = [v6 createCGImage:v8 fromRect:?];
    }

    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v7 = v5;
  }

  Mutable = CFDataCreateMutable(0, 0);
  if (Mutable)
  {
    v10 = Mutable;
    sub_19A571ECC();
    sub_19A571EBC();
    (*(v2 + 8))(v4, v1);
    v11 = sub_19A572CCC();

    v12 = CGImageDestinationCreateWithData(v10, v11, 1uLL, 0);

    if (v12)
    {
      CGImageDestinationAddImage(v12, v7, 0);
      if (CGImageDestinationFinalize(v12))
      {
        v13 = v10;
        v14 = sub_19A570F2C();

        return v14;
      }
    }

    else
    {
    }
  }

  return 0;
}

BOOL sub_19A4CEDD4(uint64_t *a1, uint64_t *a2, char a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  v7 = v4 == v6 && v3 == v5;
  result = 1;
  if (!v7 && (a3 & 1) != 0)
  {
    if (v4 <= v3)
    {
      v9 = v3;
    }

    else
    {
      v9 = v4;
    }

    if (v6 <= v5)
    {
      v10 = *a2;
    }

    else
    {
      v10 = a2[1];
    }

    if (v4 < v3)
    {
      v3 = v4;
    }

    if (v6 < v5)
    {
      v5 = a2[1];
    }

    v11 = v3 >= v5;
    return v9 >= v10 && v11;
  }

  return result;
}

uint64_t sub_19A4CEE24(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  v4 = *a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v4;
  *(v3 + 96) = *(a2 + 8);
  *(v3 + 80) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_19A4CEE58, 0, 0);
}

uint64_t sub_19A4CEE58()
{
  v31 = v0;
  v1 = *(v0 + 72);
  if (*(v0 + 96))
  {
    if (*(v0 + 96) == 1)
    {
      [*(v0 + 72) extent];
      sub_19A39AAB4(&v30, v2, v3);
      b = v30.b;
      a = v30.a;
    }

    else
    {
      a = COERCE_DOUBLE(CVPixelBufferGetWidth(*(v0 + 72)));
      b = COERCE_DOUBLE(CVPixelBufferGetHeight(v1));
    }
  }

  else
  {
    a = COERCE_DOUBLE(CGImageGetWidth(*(v0 + 72)));
    b = COERCE_DOUBLE(CGImageGetHeight(v1));
  }

  v6 = *(v0 + 96);
  v7 = *(v0 + 72);
  if (*&a == *(v0 + 80) && *&b == *(v0 + 88))
  {
    v10 = *(v0 + 64);
    *v10 = v7;
    *(v10 + 8) = v6;
    v11 = v7;
  }

  else
  {
    if (*(v0 + 96))
    {
      if (v6 == 1)
      {
        v9 = v7;
      }

      else
      {
        v9 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
      }
    }

    else
    {
      v9 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
    }

    v12 = *(v0 + 64);
    v13 = *(v0 + 80);
    v14 = *(v0 + 88);
    v15 = v9;
    [v15 extent];
    v17 = v16;
    v19 = v18;
    CGAffineTransformMakeTranslation(&v30, -v20, -v21);
    v22 = *&v30.c;
    v23 = *&v30.tx;
    *(v0 + 16) = *&v30.a;
    *(v0 + 32) = v22;
    *(v0 + 48) = v23;
    v24 = [v15 imageByApplyingTransform_];

    CGAffineTransformMakeScale(&v30, v13 / v17, v14 / v19);
    v25 = *&v30.c;
    v26 = *&v30.tx;
    *(v0 + 16) = *&v30.a;
    *(v0 + 32) = v25;
    *(v0 + 48) = v26;
    v27 = [v24 imageByApplyingTransform_];

    *v12 = v27;
    *(v12 + 8) = 1;
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t _s23GenerationConfigurationVMa(uint64_t a1)
{
  result = qword_1ED825418;
  if (!qword_1ED825418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A4CF120(uint64_t a1)
{
  sub_19A4CF1D4();
  if (v1 <= 0x3F)
  {
    sub_19A4CF224(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19A4CF1D4()
{
  if (!qword_1ED825370[0])
  {
    v0 = sub_19A57378C();
    if (!v1)
    {
      atomic_store(v0, qword_1ED825370);
    }
  }
}

void sub_19A4CF224(uint64_t a1)
{
  if (!qword_1ED825480)
  {
    type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(255);
    v1 = sub_19A57378C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED825480);
    }
  }
}

unint64_t sub_19A4CF27C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000021;
    if (a1 == 8)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000024;
    }

    v6 = 0xD000000000000018;
    if (a1 != 5)
    {
      v6 = 0xD000000000000029;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0xD00000000000001DLL;
    v3 = 0xD000000000000013;
    if (a1 != 3)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000018;
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
}

uint64_t sub_19A4CF3DC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_19A4CF27C(*a1);
  v5 = v4;
  if (v3 == sub_19A4CF27C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();
  }

  return v8 & 1;
}

uint64_t sub_19A4CF464()
{
  v1 = *v0;
  sub_19A5740BC();
  sub_19A4CF27C(v1);
  sub_19A572E4C();

  return sub_19A57410C();
}

double sub_19A4CF4C8(uint64_t a1)
{
  sub_19A4CF27C(*v1);
  sub_19A572E4C();

  return result;
}

uint64_t sub_19A4CF51C(uint64_t a1)
{
  v2 = *v1;
  sub_19A5740BC();
  sub_19A4CF27C(v2);
  sub_19A572E4C();

  return sub_19A57410C();
}

unint64_t sub_19A4CF57C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_19A4D06CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_19A4CF5AC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_19A4CF27C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_19A4CF5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A4D06CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A4CF61C(uint64_t a1)
{
  v2 = sub_19A4CFF78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4CF658(uint64_t a1)
{
  v2 = sub_19A4CFF78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A4CF694(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA29D0, &qword_19A58E008);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A4CFF78();
  sub_19A5741AC();
  LOBYTE(v12) = 0;
  sub_19A573E2C();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v12 = *(v3 + 16);
    v13 = v9;
    v11[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA29D8, &qword_19A58E010);
    sub_19A4D0094();
    sub_19A573E7C();
    LOBYTE(v12) = 2;
    sub_19A573E6C();
    LOBYTE(v12) = 3;
    sub_19A573E3C();
    LOBYTE(v12) = 4;
    sub_19A573E3C();
    LOBYTE(v12) = 5;
    sub_19A573E3C();
    LOBYTE(v12) = 6;
    sub_19A573E3C();
    LOBYTE(v12) = 7;
    sub_19A573E3C();
    _s23GenerationConfigurationVMa(0);
    LOBYTE(v12) = 9;
    type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
    sub_19A4D0118(&qword_1EAF9F8B0, &protocol conformance descriptor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
    sub_19A573E1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_19A4CF984@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300, &qword_19A577470);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = &v41 - v4;
  v5 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA29C8, &qword_19A58E000);
  v45 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = _s23GenerationConfigurationVMa(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  v13[32] = 1;
  *(v13 + 5) = 1;
  *(v13 + 12) = 257;
  *(v13 + 26) = 257;
  v15 = v6;
  v18 = *(v6 + 56);
  v16 = v6 + 56;
  v17 = v18;
  v47 = *(v14 + 60);
  v50 = v13;
  v18(&v13[v47], 1, 1, v5);
  v19 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_19A4CFF78();
  v20 = v48;
  sub_19A57417C();
  if (v20)
  {
    v26 = v50;
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    return sub_19A2F3FA0(v26 + v47, &qword_1EAFA3300, &qword_19A577470);
  }

  else
  {
    v42 = v17;
    v48 = v16;
    v21 = v15;
    v22 = v5;
    v23 = v45;
    v24 = v46;
    LOBYTE(v51) = 0;
    v25 = sub_19A573CFC();
    v28 = v50;
    *v50 = v25;
    v28[1] = v29;
    v53 = 1;
    sub_19A44BBC4();
    sub_19A573CDC();
    if (v52 != 1)
    {
      *(v28 + 1) = v51;
      *(v28 + 32) = 0;
    }

    LOBYTE(v51) = 2;
    v30 = sub_19A573CCC();
    if ((v31 & 1) == 0)
    {
      v28[5] = v30;
    }

    LOBYTE(v51) = 3;
    v32 = sub_19A573C9C();
    if (v32 != 2)
    {
      *(v28 + 48) = v32 & 1;
    }

    LOBYTE(v51) = 4;
    v33 = sub_19A573C9C();
    if (v33 != 2)
    {
      *(v28 + 50) = v33 & 1;
    }

    LOBYTE(v51) = 5;
    v34 = sub_19A573C9C();
    if (v34 != 2)
    {
      *(v28 + 51) = v34 & 1;
    }

    LOBYTE(v51) = 6;
    v35 = sub_19A573C9C();
    if (v35 != 2)
    {
      *(v28 + 52) = v35 & 1;
    }

    LOBYTE(v51) = 7;
    v36 = sub_19A573C9C();
    if (v36 != 2)
    {
      *(v28 + 53) = v36 & 1;
    }

    LOBYTE(v51) = 9;
    sub_19A4D0118(&qword_1EAF9EE68, &protocol conformance descriptor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
    sub_19A573CDC();
    v41 = v22;
    (*(v23 + 8))(v10, v8);
    if ((*(v21 + 48))(v44, 1, v41) == 1)
    {
      sub_19A2F3FA0(v44, &qword_1EAFA3300, &qword_19A577470);
    }

    else
    {
      v37 = v43;
      sub_19A4D0030(v44, v43);
      v38 = v47;
      v39 = v50;
      sub_19A2F3FA0(v50 + v47, &qword_1EAFA3300, &qword_19A577470);
      sub_19A4D0030(v37, v39 + v38);
      v42(v39 + v38, 0, 1, v22);
    }

    v40 = v50;
    sub_19A4CFFCC(v50, v24);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    return sub_19A4D0554(v40, _s23GenerationConfigurationVMa);
  }
}

unint64_t sub_19A4CFF78()
{
  result = qword_1ED824B70;
  if (!qword_1ED824B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824B70);
  }

  return result;
}

uint64_t sub_19A4CFFCC(uint64_t a1, uint64_t a2)
{
  v4 = _s23GenerationConfigurationVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A4D0030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A4D0094()
{
  result = qword_1EAF9F6E0;
  if (!qword_1EAF9F6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA29D8, &qword_19A58E010);
    sub_19A44BC18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F6E0);
  }

  return result;
}

uint64_t sub_19A4D0118(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_19A4D015C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300, &qword_19A577470);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA29E0, &qword_19A58E018);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  if (*a1 != *a2 && (sub_19A573F1C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }

LABEL_9:
    if (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48) || *(a1 + 49) != *(a2 + 49) || *(a1 + 50) != *(a2 + 50) || *(a1 + 51) != *(a2 + 51) || *(a1 + 52) != *(a2 + 52) || *(a1 + 53) != *(a2 + 53))
    {
      return 0;
    }

    v15 = *(_s23GenerationConfigurationVMa(0) + 52);
    v16 = *(v11 + 48);
    sub_19A4D04E4(a1 + v15, v13);
    sub_19A4D04E4(a2 + v15, &v13[v16]);
    v17 = *(v5 + 48);
    if (v17(v13, 1, v4) == 1)
    {
      if (v17(&v13[v16], 1, v4) == 1)
      {
        sub_19A2F3FA0(v13, &qword_1EAFA3300, &qword_19A577470);
        return 1;
      }
    }

    else
    {
      sub_19A4D04E4(v13, v10);
      if (v17(&v13[v16], 1, v4) != 1)
      {
        sub_19A4D0030(&v13[v16], v7);
        v18 = static PipelineConfiguration.InferenceFrameDiagnosticsConfiguration.__derived_struct_equals(_:_:)(v10, v7);
        sub_19A4D0554(v7, type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
        sub_19A4D0554(v10, type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
        sub_19A2F3FA0(v13, &qword_1EAFA3300, &qword_19A577470);
        return (v18 & 1) != 0;
      }

      sub_19A4D0554(v10, type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
    }

    sub_19A2F3FA0(v13, &qword_1EAFA29E0, &qword_19A58E018);
    return 0;
  }

  result = 0;
  if ((*(a2 + 32) & 1) == 0 && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_19A4D04E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300, &qword_19A577470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A4D0554(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_19A4D05C8()
{
  result = qword_1EAFA29E8;
  if (!qword_1EAFA29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA29E8);
  }

  return result;
}

unint64_t sub_19A4D0620()
{
  result = qword_1ED824B60;
  if (!qword_1ED824B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824B60);
  }

  return result;
}

unint64_t sub_19A4D0678()
{
  result = qword_1ED824B68;
  if (!qword_1ED824B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824B68);
  }

  return result;
}

unint64_t sub_19A4D06CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_19A573C2C();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_19A4D074C()
{
  v0 = sub_19A570D4C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v13 - v5;
  sub_19A570D2C();
  sub_19A379E50();
  swift_allocError();
  v8 = v7;
  (*(v1 + 16))(v3, v6, v0);
  v9 = sub_19A572D8C();
  v11 = v10;
  (*(v1 + 8))(v6, v0);
  *v8 = v9;
  v8[1] = v11;
  return swift_willThrow();
}

uint64_t sub_19A4D08B8()
{
  v1 = sub_19A570D4C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A4D0980, 0, 0);
}

uint64_t sub_19A4D0980()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_19A570D2C();
  sub_19A379E50();
  swift_allocError();
  v6 = v5;
  (*(v4 + 16))(v2, v1, v3);
  v7 = sub_19A572D8C();
  v9 = v8;
  (*(v4 + 8))(v1, v3);
  *v6 = v7;
  v6[1] = v9;
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t static CharacterFaces.resourceFileURL(faceEncoderVersion:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A570EAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_19A57395C();

  v16 = 0xD000000000000010;
  v17 = 0x800000019A59C160;
  MEMORY[0x19A900A50](a1, a2);
  MEMORY[0x19A900A50](1852400174, 0xE400000000000000);
  if (qword_1EAF9ECC0 != -1)
  {
    swift_once();
  }

  v8 = [qword_1EAFCA140 resourceURL];
  if (v8)
  {
    v9 = v8;
    sub_19A570E3C();

    sub_19A570DFC();

    return (*(v5 + 8))(v7, v4);
  }

  else
  {

    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v11 = sub_19A5723FC();
    __swift_project_value_buffer(v11, qword_1ED82BCF0);
    v12 = sub_19A5723DC();
    v13 = sub_19A57355C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_19A2DE000, v12, v13, "Unable to get resourceURL for character faces data file", v14, 2u);
      MEMORY[0x19A902C50](v14, -1, -1);
    }

    sub_19A4D10C8();
    swift_allocError();
    *v15 = 1;
    return swift_willThrow();
  }
}

void static CharacterFaces.load(from:)()
{
  v13[1] = *MEMORY[0x1E69E9840];
  v0 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
  v1 = sub_19A570DEC();
  v2 = [v0 initWithContentsOfURL_];

  if (v2)
  {
    v13[0] = 0;
    v3 = [v2 decompressedDataUsingAlgorithm:0 error:v13];
    v4 = v13[0];
    if (v3)
    {
      v5 = v3;
      sub_19A5707EC();
      swift_allocObject();
      v6 = v4;
      sub_19A5707DC();
      v7 = v5;
      v8 = sub_19A4D1894(v7);
      v10 = v9;
      sub_19A4D2960();
      sub_19A5707BC();
      sub_19A33EFC4(v8, v10);
    }

    else
    {
      v12 = v13[0];
      sub_19A570D1C();

      swift_willThrow();
    }
  }

  else
  {
    sub_19A4D10C8();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
  }
}

void CharacterFaces.characterFace(for:skinTone:filename:)(VisualGeneration::Gender a1@<W0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  v18 = *v5;
  v17 = v9;
  v10 = CharacterFaces.characterFaces(for:skinTone:)(a1, &v17);
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_13:

LABEL_14:
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return;
  }

  v12 = (v10 + 48);
  while (1)
  {
    v13 = *v12;
    if (*v12)
    {
      v14 = *(v12 - 2);
      v15 = *(v12 - 1);
      if (v15 == a3 && v13 == a4)
      {
        goto LABEL_12;
      }

      if (sub_19A573F1C())
      {
        break;
      }
    }

    v12 += 3;
    if (!--v11)
    {
      goto LABEL_13;
    }
  }

  a3 = v15;
  a4 = v13;
LABEL_12:

  *a5 = v14;
  a5[1] = a3;
  a5[2] = a4;
}

Swift::OpaquePointer_optional __swiftcall CharacterFaces.characterFaces(for:skinTone:)(VisualGeneration::Gender a1, VisualGeneration::SkinTone skinTone)
{
  v3 = *v2;
  if (!*(v3 + 16))
  {
    goto LABEL_7;
  }

  v4 = *skinTone;
  v5 = sub_19A31F734(a1);
  if ((skinTone & 1) == 0)
  {
    goto LABEL_7;
  }

  v6 = *(*(v3 + 56) + 8 * v5);
  if (!*(v6 + 16))
  {
    goto LABEL_7;
  }

  v7 = sub_19A31F7F8(v4);
  if ((v8 & 1) == 0)
  {

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  v10 = v9;
LABEL_8:
  result.value._rawValue = v10;
  result.is_nil = skinTone;
  return result;
}

unint64_t sub_19A4D10C8()
{
  result = qword_1EAFA29F0;
  if (!qword_1EAFA29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA29F0);
  }

  return result;
}

uint64_t CharacterFaces.Error.errorDescription.getter()
{
  v0 = sub_19A57112C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_19A572CBC();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_19A572C4C();
  sub_19A5710EC();
  return sub_19A572D7C();
}

uint64_t CharacterFaces.Error.hashValue.getter()
{
  v1 = *v0;
  sub_19A5740BC();
  MEMORY[0x19A901C40](v1);
  return sub_19A57410C();
}

void CharacterFaces.save(to:)(uint64_t a1)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v3 = sub_19A57081C();
  MEMORY[0x1EEE9AC00](v3);
  v4 = *v1;
  sub_19A57087C();
  swift_allocObject();
  sub_19A57086C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1260, &unk_19A58E220);
  *(swift_allocObject() + 16) = xmmword_19A576E20;
  sub_19A57080C();
  sub_19A5707FC();
  sub_19A4D2D30(&qword_1EAFA1268, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1270, &unk_19A58B540);
  sub_19A40C42C();
  sub_19A57388C();
  sub_19A57082C();
  v40[0] = v4;
  sub_19A4D29B4();
  v5 = sub_19A57083C();
  if (v2)
  {
    goto LABEL_30;
  }

  v7 = v5;
  v8 = v6;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v9 = sub_19A5723FC();
  __swift_project_value_buffer(v9, qword_1ED82BCF0);
  sub_19A356EC8(v7, v8);
  v10 = sub_19A5723DC();
  v11 = sub_19A57354C();
  if (!os_log_type_enabled(v10, v11))
  {
    sub_19A33EFC4(v7, v8);
    goto LABEL_17;
  }

  v12 = swift_slowAlloc();
  *v12 = 134217984;
  v13 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v13 != 2)
    {
      v14 = 0;
      goto LABEL_16;
    }

    v16 = *(v7 + 16);
    v15 = *(v7 + 24);
    v17 = __OFSUB__(v15, v16);
    v14 = v15 - v16;
    if (!v17)
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_13:
    LODWORD(v14) = HIDWORD(v7) - v7;
    if (__OFSUB__(HIDWORD(v7), v7))
    {
      goto LABEL_35;
    }

    v14 = v14;
    goto LABEL_16;
  }

  if (v13)
  {
    goto LABEL_13;
  }

  v14 = BYTE6(v8);
LABEL_16:
  *(v12 + 4) = v14;
  v18 = v12;
  sub_19A33EFC4(v7, v8);
  _os_log_impl(&dword_19A2DE000, v10, v11, "initial CharacterFaces data size: %ld", v18, 0xCu);
  MEMORY[0x19A902C50](v18, -1, -1);
LABEL_17:

  v19 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
  sub_19A356EC8(v7, v8);
  v20 = sub_19A570F0C();
  v21 = [v19 initWithData_];

  sub_19A33EFC4(v7, v8);
  v40[0] = 0;
  v22 = [v21 compressedDataUsingAlgorithm:0 error:v40];

  if (!v22)
  {
    v33 = v40[0];
    sub_19A570D1C();

    swift_willThrow();
LABEL_29:
    sub_19A33EFC4(v7, v8);
LABEL_30:

    return;
  }

  v23 = v40[0];
  v24 = v22;
  v25 = sub_19A5723DC();
  v26 = sub_19A57354C();
  if (os_log_type_enabled(v25, v26))
  {
    v39 = v26;
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    v27 = sub_19A5736DC();
    v28 = sub_19A5736EC();
    v29 = sub_19A5736DC();
    v30 = sub_19A5736EC();
    if (v27 < v29 || v30 < v27)
    {
      __break(1u);
    }

    else
    {
      v31 = sub_19A5736DC();
      v32 = sub_19A5736EC();
      if (v28 >= v31 && v32 >= v28)
      {
        if (!__OFSUB__(v28, v27))
        {
          *(v38 + 4) = v28 - v27;

          _os_log_impl(&dword_19A2DE000, v25, v39, "compressed CharacterFaces data size: %ld", v38, 0xCu);
          MEMORY[0x19A902C50](v38, -1, -1);
          goto LABEL_27;
        }

        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  v25 = v24;
LABEL_27:

  v34 = sub_19A570DEC();
  v40[0] = 0;
  v35 = [v24 writeToURL:v34 options:0 error:v40];

  if (v35)
  {
    v36 = v40[0];

    goto LABEL_29;
  }

  v37 = v40[0];
  sub_19A570D1C();

  swift_willThrow();
  sub_19A33EFC4(v7, v8);
}

uint64_t sub_19A4D1894(void *a1)
{
  v36[5] = *MEMORY[0x1E69E9840];
  v32 = a1;
  *&v33 = a1;
  sub_19A4D309C();
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2AC8, &qword_19A58E798);
  if (swift_dynamicCast())
  {
    sub_19A2EA460(v34, v36);
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    sub_19A570A3C();
    v34[0] = v33;
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    goto LABEL_40;
  }

  v35 = 0;
  memset(v34, 0, sizeof(v34));
  sub_19A4D30E8(v34);
  v3 = sub_19A5736DC();
  v4 = sub_19A5736EC();
  v5 = sub_19A5736DC();
  v6 = sub_19A5736EC();
  if (v3 < v5 || v6 < v3)
  {
    goto LABEL_43;
  }

  v7 = sub_19A5736DC();
  v8 = sub_19A5736EC();
  if (v4 < v7 || v8 < v4)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(v4, v3))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *&v34[0] = sub_19A4D36E0(v4 - v3);
  *(&v34[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v34[0]);
  v31[2] = &v32;
  v12 = sub_19A4D3150(sub_19A4D3780, v31);
  v13 = v10;
  v14 = *&v34[0];
  v15 = *(&v34[0] + 1) >> 62;
  if ((*(&v34[0] + 1) >> 62) > 1)
  {
    if (v15 == 2)
    {
      v17 = *(*&v34[0] + 16);
      v16 = *(*&v34[0] + 24);
      v18 = __OFSUB__(v16, v17);
      v19 = v16 - v17;
      if (v18)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      if (v11 != v19)
      {
        goto LABEL_18;
      }
    }

    else if (v11)
    {
      v20 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    if (!v15)
    {
      if (v11 != BYTE14(v34[0]))
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }

    if (__OFSUB__(DWORD1(v34[0]), v34[0]))
    {
      goto LABEL_48;
    }

    if (v11 != DWORD1(v34[0]) - LODWORD(v34[0]))
    {
LABEL_18:
      if (v15 != 2)
      {
        if (v15 == 1)
        {
          v20 = *&v34[0] >> 32;
        }

        else
        {
          v20 = BYTE14(v34[0]);
        }

LABEL_37:
        if (v20 >= v11)
        {
          sub_19A570EEC();
          goto LABEL_39;
        }

        goto LABEL_46;
      }

LABEL_35:
      v20 = *(v14 + 24);
      goto LABEL_37;
    }
  }

LABEL_23:
  memset(v36, 0, 15);
  if (v10 == sub_19A5736EC())
  {
    goto LABEL_39;
  }

  v21 = sub_19A5736FC();
  v22 = sub_19A5736DC();
  v23 = sub_19A5736EC();
  if (v13 < v22 || v13 >= v23)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  LOBYTE(v24) = 0;
  v25 = v13 + 1;
  while (1)
  {
    *(v36 + v24) = v21;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v24 == 14)
    {
      *&v33 = v36[0];
      *(&v33 + 6) = *(v36 + 6);
      sub_19A570EFC();
      if (v25 == sub_19A5736EC())
      {
        goto LABEL_39;
      }

      LOBYTE(v24) = 0;
      goto LABEL_32;
    }

    if (v25 == sub_19A5736EC())
    {
      break;
    }

LABEL_32:
    v21 = sub_19A5736FC();
    v26 = sub_19A5736DC();
    v27 = sub_19A5736EC();
    if (v25 >= v26)
    {
      v14 = v25 + 1;
      if (v25++ < v27)
      {
        continue;
      }
    }

    goto LABEL_34;
  }

  *&v33 = v36[0];
  *(&v33 + 6) = *(v36 + 6);
  sub_19A570EFC();
LABEL_39:

LABEL_40:
  v29 = v34[0];
  sub_19A356EC8(*&v34[0], *(&v34[0] + 1));

  sub_19A33EFC4(v29, *(&v29 + 1));
  return v29;
}

void sub_19A4D1CB8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000021 && 0x800000019A59C1E0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_19A573F1C();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_19A4D1D4C(uint64_t a1)
{
  v2 = sub_19A4D2A08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4D1D88(uint64_t a1)
{
  v2 = sub_19A4D2A08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CharacterFaces.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2A08, &qword_19A58E230);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A4D2A08();

  sub_19A5741AC();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2A18, &qword_19A58E238);
  sub_19A4D2B18(&qword_1EAFA2A20, sub_19A37AEA8, sub_19A4D2A5C, MEMORY[0x1E69E5E38]);
  sub_19A573E7C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t CharacterFaces.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2A48, &qword_19A58E250);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A4D2A08();
  sub_19A57417C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2A18, &qword_19A58E238);
    sub_19A4D2B18(&qword_1EAFA2A50, sub_19A37ADAC, sub_19A4D2BA8, MEMORY[0x1E69E5E58]);
    sub_19A573D4C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t CharacterFace.Error.hashValue.getter()
{
  sub_19A5740BC();
  MEMORY[0x19A901C40](0);
  return sub_19A57410C();
}

uint64_t CharacterFace.filename.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t CharacterFace.init(faceRepresentation:filename:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static CharacterFace.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  sub_19A571B9C();
  if (sub_19A571B7C())
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (sub_19A573F1C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_19A4D22D4()
{
  if (*v0)
  {
    return 0x656D616E656C6966;
  }

  else
  {
    return 0xD000000000000012;
  }
}

void sub_19A4D2314(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000019A597EF0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_19A573F1C();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_19A4D23FC(uint64_t a1)
{
  v2 = sub_19A4D2CDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4D2438(uint64_t a1)
{
  v2 = sub_19A4D2CDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CharacterFace.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2A68, &qword_19A58E258);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11[1] = v1[2];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A4D2CDC();

  sub_19A5741AC();
  v14 = v9;
  v13 = 0;
  sub_19A571B9C();
  sub_19A4D2D30(&qword_1EAFA0FC0, MEMORY[0x1E69E0578], MEMORY[0x1E69E0580]);
  sub_19A573E7C();

  if (!v2)
  {
    v12 = 1;
    sub_19A573DCC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t CharacterFace.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2A78, &qword_19A58E260);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A4D2CDC();
  sub_19A57417C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  sub_19A571B9C();
  v14[15] = 0;
  sub_19A4D2D30(&qword_1EAFA0FB0, MEMORY[0x1E69E0578], MEMORY[0x1E69E0588]);
  sub_19A573D4C();
  v9 = v15;
  v14[14] = 1;
  v10 = sub_19A573C8C();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v12;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_19A4D28C0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  sub_19A571B9C();
  if (sub_19A571B7C())
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (sub_19A573F1C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_19A4D2960()
{
  result = qword_1EAFA29F8;
  if (!qword_1EAFA29F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA29F8);
  }

  return result;
}

unint64_t sub_19A4D29B4()
{
  result = qword_1EAFA2A00;
  if (!qword_1EAFA2A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2A00);
  }

  return result;
}

unint64_t sub_19A4D2A08()
{
  result = qword_1EAFA2A10;
  if (!qword_1EAFA2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2A10);
  }

  return result;
}

unint64_t sub_19A4D2A5C()
{
  result = qword_1EAFA2A28;
  if (!qword_1EAFA2A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA2A30, &qword_19A58E240);
    sub_19A37AEFC();
    sub_19A4D2C64(&qword_1EAFA2A38, sub_19A3A37BC, MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2A28);
  }

  return result;
}

uint64_t sub_19A4D2B18(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA2A18, &qword_19A58E238);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19A4D2BA8()
{
  result = qword_1EAFA2A58;
  if (!qword_1EAFA2A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA2A30, &qword_19A58E240);
    sub_19A37AE00();
    sub_19A4D2C64(&qword_1EAFA2A60, sub_19A3A3E8C, MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2A58);
  }

  return result;
}

uint64_t sub_19A4D2C64(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA2A40, &qword_19A58E248);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19A4D2CDC()
{
  result = qword_1EAFA2A70;
  if (!qword_1EAFA2A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2A70);
  }

  return result;
}

uint64_t sub_19A4D2D30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_19A4D2D7C()
{
  result = qword_1EAFA2A80;
  if (!qword_1EAFA2A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2A80);
  }

  return result;
}

unint64_t sub_19A4D2DD8()
{
  result = qword_1EAFA2A88;
  if (!qword_1EAFA2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2A88);
  }

  return result;
}

unint64_t sub_19A4D2E90()
{
  result = qword_1EAFA2A90;
  if (!qword_1EAFA2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2A90);
  }

  return result;
}

unint64_t sub_19A4D2EE8()
{
  result = qword_1EAFA2A98;
  if (!qword_1EAFA2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2A98);
  }

  return result;
}

unint64_t sub_19A4D2F40()
{
  result = qword_1EAFA2AA0;
  if (!qword_1EAFA2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2AA0);
  }

  return result;
}

unint64_t sub_19A4D2F98()
{
  result = qword_1EAFA2AA8;
  if (!qword_1EAFA2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2AA8);
  }

  return result;
}

unint64_t sub_19A4D2FF0()
{
  result = qword_1EAFA2AB0;
  if (!qword_1EAFA2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2AB0);
  }

  return result;
}