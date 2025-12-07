uint64_t sub_217467C40()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 872) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217467D38()
{
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1272();
  OUTLINED_FUNCTION_93_3();
  sub_2171F0688(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_20_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  if (swift_dynamicCast())
  {
    v8 = *(v1 + 840);

    sub_2171F0790(v1 + 624, &xmmword_27CB27600, &qword_21776B040);
    __swift_destroy_boxed_opaque_existential_1((v1 + 504));
    v9 = *v0;
    v10 = *(v0 + 1);
    v11 = *(v0 + 2);
    *(v8 + 41) = *(v0 + 41);
    OUTLINED_FUNCTION_1059(v9, v10, v11);
    OUTLINED_FUNCTION_0_2();

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_227_4();
    *(v1 + 496) = -1;
    sub_2171F0790(v0, &qword_27CB245B8, &qword_217758AE0);
    OUTLINED_FUNCTION_321();
    return OUTLINED_FUNCTION_272("Fatal error");
  }
}

uint64_t sub_217467E74()
{
  OUTLINED_FUNCTION_10();

  __swift_destroy_boxed_opaque_existential_1((v0 + 504));
  OUTLINED_FUNCTION_398((v0 + 664));

  return v1();
}

uint64_t sub_217467EDC(uint64_t a1)
{
  *(v2 + 832) = v1;
  *(v2 + 824) = a1;
  return MEMORY[0x2822009F8](sub_217467F00, 0, 0);
}

void sub_217467F00()
{
  OUTLINED_FUNCTION_1181();
  OUTLINED_FUNCTION_845();
  v0[64] = &type metadata for RecordLabel;
  v0[65] = &protocol witness table for RecordLabel;
  OUTLINED_FUNCTION_197();
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_1118(v4);
  sub_217283C68(v5, v6);
  if (qword_280BE8C28 != -1)
  {
    OUTLINED_FUNCTION_98_11(&qword_280BE8C28);
  }

  v7 = qword_280BE8C30;
  v0[69] = &type metadata for RecordLabel;
  v0[70] = &protocol witness table for RecordLabel;
  OUTLINED_FUNCTION_197();
  v8 = swift_allocObject();
  v9 = OUTLINED_FUNCTION_1137(v8);
  sub_217283C68(v9, v10);
  v11 = OUTLINED_FUNCTION_666(v0 + 66);
  sub_21729C5E8(v11, (v0 + 71));
  OUTLINED_FUNCTION_443(v0 + 71);
  OUTLINED_FUNCTION_1271();
  v12 = OUTLINED_FUNCTION_85_3();
  v1(v12);
  v13 = sub_21729C644((v0 + 71));
  OUTLINED_FUNCTION_1125(v13, v14, v15, v16, v17, v18, v19, v20, v66, v68, v70);
  __swift_destroy_boxed_opaque_existential_1(v0 + 66);
  v21 = v0[19];
  v22 = v0[20];
  v24 = v0[21];
  v23 = v0[22];
  v25 = OUTLINED_FUNCTION_344();
  sub_2172A5428(v25, v26, v27, v28);
  sub_217269F50((v0 + 2));
  if (!v22)
  {
    goto LABEL_28;
  }

  sub_217751DE8();
  v29 = OUTLINED_FUNCTION_344();
  sub_2172B8404(v29, v30);
  sub_217751DE8();
  OUTLINED_FUNCTION_964();
  v32 = v32 && v23 == v31;
  if (v32)
  {

LABEL_26:

    v23 = v22;
    goto LABEL_27;
  }

  v33 = OUTLINED_FUNCTION_560();
  OUTLINED_FUNCTION_1407(v33, v34, v35);
  OUTLINED_FUNCTION_196_2();

  if ((v21 & 1) == 0)
  {
    type metadata accessor for MusicLibrary();
    v22 = static MusicLibrary._sharedLibraries.getter();
    if (sub_217204DD0(v22))
    {
      OUTLINED_FUNCTION_864();
      if (v36 != v37)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1275();
      do
      {
        if (v3)
        {
          v38 = OUTLINED_FUNCTION_205_0();
          v21 = MEMORY[0x21CEA2E30](v38);
        }

        else
        {
          OUTLINED_FUNCTION_1122();
        }

        sub_217751DE8();
        OUTLINED_FUNCTION_1229();
        if (v32 && v23 == v39)
        {

          OUTLINED_FUNCTION_1301();
        }

        else
        {
          v41 = OUTLINED_FUNCTION_560();
          OUTLINED_FUNCTION_1357(v41, v42, v43);
          OUTLINED_FUNCTION_476();

          OUTLINED_FUNCTION_1274();
          v1 = v7;
          v7 = v22;
          v22 = v24;
          v24 = v0;
          if (!v32)
          {
            v7 = v21;
          }
        }

        v2 = (v2 + 1);
      }

      while (v1 != v2);
      v0 = v74;
    }

    goto LABEL_26;
  }

LABEL_27:

LABEL_28:
  v44 = OUTLINED_FUNCTION_887();
  sub_217283C68(v44, v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27610 + 1, &qword_21776B070);
  if (OUTLINED_FUNCTION_907(v46, v47, v48, v46))
  {
    OUTLINED_FUNCTION_346();
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v0[106] = v49;
    *v49 = v50;
    OUTLINED_FUNCTION_1282(v49);
    OUTLINED_FUNCTION_1273();
    OUTLINED_FUNCTION_182_5();
    OUTLINED_FUNCTION_46_2();

    __asm { BRAA            X8, X16 }
  }

  OUTLINED_FUNCTION_866();
  sub_2171F0790(v23, &unk_27CB27620, &unk_217778B30);
  OUTLINED_FUNCTION_1_9();
  v53 = sub_217752AA8();
  OUTLINED_FUNCTION_1120(v53, v54, v55, v56, v57, v58, v59, v60, v67, v69, v71, v72, v73);
  OUTLINED_FUNCTION_172_5();
  v61 = OUTLINED_FUNCTION_1014();
  v62 = MEMORY[0x21CEA23B0](v61);
  OUTLINED_FUNCTION_1517(v62, v63, &type metadata for RecordLabel, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
  v64 = OUTLINED_FUNCTION_606();
  MEMORY[0x21CEA23B0](v64);
  OUTLINED_FUNCTION_686();
  OUTLINED_FUNCTION_42_10();
  OUTLINED_FUNCTION_1221(v65);
  OUTLINED_FUNCTION_1052();
}

uint64_t sub_2174682EC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 856) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174683E4()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_808();
  OUTLINED_FUNCTION_742();
  sub_2171F0688(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_56_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  if (OUTLINED_FUNCTION_1276(v7, v8, v7, &type metadata for RecordLabel))
  {
    OUTLINED_FUNCTION_1516();
    sub_2171F0790(v0 + 608, &xmmword_27CB27600, &qword_21776B040);
    __swift_destroy_boxed_opaque_existential_1((v0 + 488));
    v9 = *(v0 + 432);
    v10 = *(v0 + 448);
    v11 = *(v0 + 464);
    qword_27CB27630 = *(v0 + 480);
    xmmword_27CB27610 = v10;
    unk_27CB27620 = v11;
    xmmword_27CB27600 = v9;
    OUTLINED_FUNCTION_0_2();

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_880();
    sub_2171F0790(v0 + 432, &unk_27CB2AF60, &qword_217758C00);
    OUTLINED_FUNCTION_321();
    return OUTLINED_FUNCTION_272("Fatal error");
  }
}

uint64_t sub_217468508()
{
  OUTLINED_FUNCTION_10();

  __swift_destroy_boxed_opaque_existential_1((v0 + 488));
  OUTLINED_FUNCTION_398((v0 + 648));

  return v1();
}

uint64_t sub_217468570(uint64_t a1)
{
  *(v2 + 720) = v1;
  *(v2 + 712) = a1;
  return MEMORY[0x2822009F8](&sub_217468594, 0, 0);
}

uint64_t sub_217468840()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 744) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_217468938()
{
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_382();
  OUTLINED_FUNCTION_174_1();
  sub_2171F0688(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_85_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  if (OUTLINED_FUNCTION_1086(v9, v10, v9, &type metadata for Song))
  {
    OUTLINED_FUNCTION_1405();
    sub_2171F0790(v0, &xmmword_27CB27600, &qword_21776B040);
    __swift_destroy_boxed_opaque_existential_1((v2 + 432));
    OUTLINED_FUNCTION_156_7();
    OUTLINED_FUNCTION_1385();

    v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_227_4();
    sub_2171F0790(v1, &qword_27CB277F0, &unk_21775A2B0);
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_272("Fatal error");
    OUTLINED_FUNCTION_1385();
  }
}

uint64_t sub_217468A44(uint64_t a1)
{
  *(v2 + 720) = v1;
  *(v2 + 712) = a1;
  return MEMORY[0x2822009F8](&sub_217468A68, 0, 0);
}

uint64_t sub_217468D14()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 744) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_217468E0C()
{
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_382();
  OUTLINED_FUNCTION_174_1();
  sub_2171F0688(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_85_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  if (OUTLINED_FUNCTION_1086(v9, v10, v9, &type metadata for Album))
  {
    OUTLINED_FUNCTION_1405();
    sub_2171F0790(v0, &xmmword_27CB27600, &qword_21776B040);
    __swift_destroy_boxed_opaque_existential_1((v2 + 432));
    OUTLINED_FUNCTION_156_7();
    OUTLINED_FUNCTION_1385();

    v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_227_4();
    sub_2171F0790(v1, &unk_27CB275E0, &qword_2177589D0);
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_272("Fatal error");
    OUTLINED_FUNCTION_1385();
  }
}

uint64_t sub_217468F18(uint64_t a1)
{
  *(v2 + 720) = v1;
  *(v2 + 712) = a1;
  return MEMORY[0x2822009F8](&sub_217468F3C, 0, 0);
}

uint64_t sub_2174691E8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 744) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_2174692E0()
{
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_382();
  OUTLINED_FUNCTION_174_1();
  sub_2171F0688(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_85_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  if (OUTLINED_FUNCTION_1086(v9, v10, v9, &type metadata for Genre))
  {
    OUTLINED_FUNCTION_1405();
    sub_2171F0790(v0, &xmmword_27CB27600, &qword_21776B040);
    __swift_destroy_boxed_opaque_existential_1((v2 + 432));
    OUTLINED_FUNCTION_156_7();
    OUTLINED_FUNCTION_1385();

    v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_227_4();
    sub_2171F0790(v1, &unk_27CB27760, &unk_21775A2D0);
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_272("Fatal error");
    OUTLINED_FUNCTION_1385();
  }
}

uint64_t sub_2174693EC(uint64_t a1)
{
  *(v2 + 728) = v1;
  *(v2 + 720) = a1;
  return MEMORY[0x2822009F8](&sub_217469410, 0, 0);
}

uint64_t sub_217469738()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 752) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217469830()
{
  OUTLINED_FUNCTION_209();
  v1 = *(v0 + 656);
  *(v0 + 560) = *(v0 + 640);
  *(v0 + 576) = v1;
  *(v0 + 592) = *(v0 + 672);
  __swift_destroy_boxed_opaque_existential_1((v0 + 600));
  OUTLINED_FUNCTION_93_3();
  sub_2171F0688(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_20_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 720);

    sub_2171F0790(v0 + 560, &xmmword_27CB27600, &qword_21776B040);
    __swift_destroy_boxed_opaque_existential_1((v0 + 440));
    v9 = *(v0 + 376);
    v10 = *(v0 + 392);
    v11 = *(v0 + 408);
    *(v8 + 41) = *(v0 + 417);
    OUTLINED_FUNCTION_1059(v9, v10, v11);
    OUTLINED_FUNCTION_0_2();

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_227_4();
    *(v0 + 432) = -1;
    sub_2171F0790(v0 + 376, &unk_27CB28AA0, &qword_21775A020);
    OUTLINED_FUNCTION_321();
    return OUTLINED_FUNCTION_272("Fatal error");
  }
}

uint64_t sub_217469984()
{
  OUTLINED_FUNCTION_10();

  __swift_destroy_boxed_opaque_existential_1((v0 + 440));
  OUTLINED_FUNCTION_398((v0 + 600));

  return v1();
}

uint64_t sub_2174699EC(uint64_t a1)
{
  *(v2 + 720) = v1;
  *(v2 + 712) = a1;
  return MEMORY[0x2822009F8](&sub_217469A10, 0, 0);
}

uint64_t sub_217469CBC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 744) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_217469DB4()
{
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_382();
  OUTLINED_FUNCTION_174_1();
  sub_2171F0688(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_85_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  if (OUTLINED_FUNCTION_1086(v9, v10, v9, &type metadata for Artist))
  {
    OUTLINED_FUNCTION_1405();
    sub_2171F0790(v0, &xmmword_27CB27600, &qword_21776B040);
    __swift_destroy_boxed_opaque_existential_1((v2 + 432));
    OUTLINED_FUNCTION_156_7();
    OUTLINED_FUNCTION_1385();

    v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_227_4();
    sub_2171F0790(v1, &qword_27CB2CD90, &unk_21775A2C0);
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_272("Fatal error");
    OUTLINED_FUNCTION_1385();
  }
}

uint64_t sub_217469EC0(uint64_t a1)
{
  *(v2 + 832) = v1;
  *(v2 + 824) = a1;
  return MEMORY[0x2822009F8](sub_217469EE4, 0, 0);
}

void sub_217469EE4()
{
  OUTLINED_FUNCTION_1181();
  OUTLINED_FUNCTION_845();
  v0[64] = &type metadata for Curator;
  v0[65] = &protocol witness table for Curator;
  OUTLINED_FUNCTION_197();
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_1118(v4);
  sub_217284288(v5, v6);
  if (qword_280BE8C28 != -1)
  {
    OUTLINED_FUNCTION_98_11(&qword_280BE8C28);
  }

  v7 = qword_280BE8C30;
  v0[69] = &type metadata for Curator;
  v0[70] = &protocol witness table for Curator;
  OUTLINED_FUNCTION_197();
  v8 = swift_allocObject();
  v9 = OUTLINED_FUNCTION_1137(v8);
  sub_217284288(v9, v10);
  v11 = OUTLINED_FUNCTION_666(v0 + 66);
  sub_21729C5E8(v11, (v0 + 71));
  OUTLINED_FUNCTION_443(v0 + 71);
  OUTLINED_FUNCTION_1271();
  v12 = OUTLINED_FUNCTION_85_3();
  v1(v12);
  v13 = sub_21729C644((v0 + 71));
  OUTLINED_FUNCTION_1125(v13, v14, v15, v16, v17, v18, v19, v20, v66, v68, v70);
  __swift_destroy_boxed_opaque_existential_1(v0 + 66);
  v21 = v0[19];
  v22 = v0[20];
  v24 = v0[21];
  v23 = v0[22];
  v25 = OUTLINED_FUNCTION_344();
  sub_2172A5428(v25, v26, v27, v28);
  sub_217269F50((v0 + 2));
  if (!v22)
  {
    goto LABEL_28;
  }

  sub_217751DE8();
  v29 = OUTLINED_FUNCTION_344();
  sub_2172B8404(v29, v30);
  sub_217751DE8();
  OUTLINED_FUNCTION_964();
  v32 = v32 && v23 == v31;
  if (v32)
  {

LABEL_26:

    v23 = v22;
    goto LABEL_27;
  }

  v33 = OUTLINED_FUNCTION_560();
  OUTLINED_FUNCTION_1407(v33, v34, v35);
  OUTLINED_FUNCTION_196_2();

  if ((v21 & 1) == 0)
  {
    type metadata accessor for MusicLibrary();
    v22 = static MusicLibrary._sharedLibraries.getter();
    if (sub_217204DD0(v22))
    {
      OUTLINED_FUNCTION_864();
      if (v36 != v37)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1275();
      do
      {
        if (v3)
        {
          v38 = OUTLINED_FUNCTION_205_0();
          v21 = MEMORY[0x21CEA2E30](v38);
        }

        else
        {
          OUTLINED_FUNCTION_1122();
        }

        sub_217751DE8();
        OUTLINED_FUNCTION_1229();
        if (v32 && v23 == v39)
        {

          OUTLINED_FUNCTION_1301();
        }

        else
        {
          v41 = OUTLINED_FUNCTION_560();
          OUTLINED_FUNCTION_1357(v41, v42, v43);
          OUTLINED_FUNCTION_476();

          OUTLINED_FUNCTION_1274();
          v1 = v7;
          v7 = v22;
          v22 = v24;
          v24 = v0;
          if (!v32)
          {
            v7 = v21;
          }
        }

        v2 = (v2 + 1);
      }

      while (v1 != v2);
      v0 = v74;
    }

    goto LABEL_26;
  }

LABEL_27:

LABEL_28:
  v44 = OUTLINED_FUNCTION_887();
  sub_217284288(v44, v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27610 + 1, &qword_21776B070);
  if (OUTLINED_FUNCTION_907(v46, v47, v48, v46))
  {
    OUTLINED_FUNCTION_346();
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v0[106] = v49;
    *v49 = v50;
    OUTLINED_FUNCTION_1282(v49);
    OUTLINED_FUNCTION_1273();
    OUTLINED_FUNCTION_182_5();
    OUTLINED_FUNCTION_46_2();

    __asm { BRAA            X8, X16 }
  }

  OUTLINED_FUNCTION_866();
  sub_2171F0790(v23, &unk_27CB27620, &unk_217778B30);
  OUTLINED_FUNCTION_1_9();
  v53 = sub_217752AA8();
  OUTLINED_FUNCTION_1120(v53, v54, v55, v56, v57, v58, v59, v60, v67, v69, v71, v72, v73);
  OUTLINED_FUNCTION_172_5();
  v61 = OUTLINED_FUNCTION_1014();
  v62 = MEMORY[0x21CEA23B0](v61);
  OUTLINED_FUNCTION_1517(v62, v63, &type metadata for Curator, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
  v64 = OUTLINED_FUNCTION_606();
  MEMORY[0x21CEA23B0](v64);
  OUTLINED_FUNCTION_686();
  OUTLINED_FUNCTION_42_10();
  OUTLINED_FUNCTION_1221(v65);
  OUTLINED_FUNCTION_1052();
}

uint64_t sub_21746A2D0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 856) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21746A3C8()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_808();
  OUTLINED_FUNCTION_742();
  sub_2171F0688(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_56_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  if (OUTLINED_FUNCTION_1276(v7, v8, v7, &type metadata for Curator))
  {
    OUTLINED_FUNCTION_1516();
    sub_2171F0790(v0 + 608, &xmmword_27CB27600, &qword_21776B040);
    __swift_destroy_boxed_opaque_existential_1((v0 + 488));
    v9 = *(v0 + 432);
    v10 = *(v0 + 448);
    v11 = *(v0 + 464);
    qword_27CB27630 = *(v0 + 480);
    xmmword_27CB27610 = v10;
    unk_27CB27620 = v11;
    xmmword_27CB27600 = v9;
    OUTLINED_FUNCTION_0_2();

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_880();
    sub_2171F0790(v0 + 432, &qword_27CB246E8, &qword_21776C140);
    OUTLINED_FUNCTION_321();
    return OUTLINED_FUNCTION_272("Fatal error");
  }
}

uint64_t sub_21746A4EC(uint64_t a1)
{
  *(v2 + 832) = v1;
  *(v2 + 824) = a1;
  return MEMORY[0x2822009F8](sub_21746A510, 0, 0);
}

void sub_21746A510()
{
  OUTLINED_FUNCTION_1181();
  OUTLINED_FUNCTION_845();
  v0[64] = &type metadata for Station;
  v0[65] = &protocol witness table for Station;
  OUTLINED_FUNCTION_197();
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_1118(v4);
  sub_217283D6C(v5, v6);
  if (qword_280BE8C28 != -1)
  {
    OUTLINED_FUNCTION_98_11(&qword_280BE8C28);
  }

  v7 = qword_280BE8C30;
  v0[69] = &type metadata for Station;
  v0[70] = &protocol witness table for Station;
  OUTLINED_FUNCTION_197();
  v8 = swift_allocObject();
  v9 = OUTLINED_FUNCTION_1137(v8);
  sub_217283D6C(v9, v10);
  v11 = OUTLINED_FUNCTION_666(v0 + 66);
  sub_21729C5E8(v11, (v0 + 71));
  OUTLINED_FUNCTION_443(v0 + 71);
  OUTLINED_FUNCTION_1271();
  v12 = OUTLINED_FUNCTION_85_3();
  v1(v12);
  v13 = sub_21729C644((v0 + 71));
  OUTLINED_FUNCTION_1125(v13, v14, v15, v16, v17, v18, v19, v20, v66, v68, v70);
  __swift_destroy_boxed_opaque_existential_1(v0 + 66);
  v21 = v0[19];
  v22 = v0[20];
  v24 = v0[21];
  v23 = v0[22];
  v25 = OUTLINED_FUNCTION_344();
  sub_2172A5428(v25, v26, v27, v28);
  sub_217269F50((v0 + 2));
  if (!v22)
  {
    goto LABEL_28;
  }

  sub_217751DE8();
  v29 = OUTLINED_FUNCTION_344();
  sub_2172B8404(v29, v30);
  sub_217751DE8();
  OUTLINED_FUNCTION_964();
  v32 = v32 && v23 == v31;
  if (v32)
  {

LABEL_26:

    v23 = v22;
    goto LABEL_27;
  }

  v33 = OUTLINED_FUNCTION_560();
  OUTLINED_FUNCTION_1407(v33, v34, v35);
  OUTLINED_FUNCTION_196_2();

  if ((v21 & 1) == 0)
  {
    type metadata accessor for MusicLibrary();
    v22 = static MusicLibrary._sharedLibraries.getter();
    if (sub_217204DD0(v22))
    {
      OUTLINED_FUNCTION_864();
      if (v36 != v37)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1275();
      do
      {
        if (v3)
        {
          v38 = OUTLINED_FUNCTION_205_0();
          v21 = MEMORY[0x21CEA2E30](v38);
        }

        else
        {
          OUTLINED_FUNCTION_1122();
        }

        sub_217751DE8();
        OUTLINED_FUNCTION_1229();
        if (v32 && v23 == v39)
        {

          OUTLINED_FUNCTION_1301();
        }

        else
        {
          v41 = OUTLINED_FUNCTION_560();
          OUTLINED_FUNCTION_1357(v41, v42, v43);
          OUTLINED_FUNCTION_476();

          OUTLINED_FUNCTION_1274();
          v1 = v7;
          v7 = v22;
          v22 = v24;
          v24 = v0;
          if (!v32)
          {
            v7 = v21;
          }
        }

        v2 = (v2 + 1);
      }

      while (v1 != v2);
      v0 = v74;
    }

    goto LABEL_26;
  }

LABEL_27:

LABEL_28:
  v44 = OUTLINED_FUNCTION_887();
  sub_217283D6C(v44, v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27610 + 1, &qword_21776B070);
  if (OUTLINED_FUNCTION_907(v46, v47, v48, v46))
  {
    OUTLINED_FUNCTION_346();
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v0[106] = v49;
    *v49 = v50;
    OUTLINED_FUNCTION_1282(v49);
    OUTLINED_FUNCTION_1273();
    OUTLINED_FUNCTION_182_5();
    OUTLINED_FUNCTION_46_2();

    __asm { BRAA            X8, X16 }
  }

  OUTLINED_FUNCTION_866();
  sub_2171F0790(v23, &unk_27CB27620, &unk_217778B30);
  OUTLINED_FUNCTION_1_9();
  v53 = sub_217752AA8();
  OUTLINED_FUNCTION_1120(v53, v54, v55, v56, v57, v58, v59, v60, v67, v69, v71, v72, v73);
  OUTLINED_FUNCTION_172_5();
  v61 = OUTLINED_FUNCTION_1014();
  v62 = MEMORY[0x21CEA23B0](v61);
  OUTLINED_FUNCTION_1517(v62, v63, &type metadata for Station, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
  v64 = OUTLINED_FUNCTION_606();
  MEMORY[0x21CEA23B0](v64);
  OUTLINED_FUNCTION_686();
  OUTLINED_FUNCTION_42_10();
  OUTLINED_FUNCTION_1221(v65);
  OUTLINED_FUNCTION_1052();
}

uint64_t sub_21746A8FC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 856) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21746A9F4()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_808();
  OUTLINED_FUNCTION_742();
  sub_2171F0688(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_56_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  if (OUTLINED_FUNCTION_1276(v7, v8, v7, &type metadata for Station))
  {
    OUTLINED_FUNCTION_1516();
    sub_2171F0790(v0 + 608, &xmmword_27CB27600, &qword_21776B040);
    __swift_destroy_boxed_opaque_existential_1((v0 + 488));
    v9 = *(v0 + 432);
    v10 = *(v0 + 448);
    v11 = *(v0 + 464);
    qword_27CB27630 = *(v0 + 480);
    xmmword_27CB27610 = v10;
    unk_27CB27620 = v11;
    xmmword_27CB27600 = v9;
    OUTLINED_FUNCTION_0_2();

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_880();
    sub_2171F0790(v0 + 432, &unk_27CB2AF80, &qword_217758C30);
    OUTLINED_FUNCTION_321();
    return OUTLINED_FUNCTION_272("Fatal error");
  }
}

uint64_t sub_21746AB18(uint64_t a1)
{
  *(v2 + 848) = v1;
  *(v2 + 840) = a1;
  return MEMORY[0x2822009F8](sub_21746AB3C, 0, 0);
}

void sub_21746AB3C()
{
  OUTLINED_FUNCTION_1181();
  OUTLINED_FUNCTION_845();
  v4 = v0[106];
  v0[66] = &type metadata for Playlist.Entry.Item;
  v0[67] = &protocol witness table for Playlist.Entry.Item;
  OUTLINED_FUNCTION_203_0();
  v5 = swift_allocObject();
  v0[63] = v5;
  sub_21729C79C(v4, v5 + 16);
  if (qword_280BE8C28 != -1)
  {
    OUTLINED_FUNCTION_98_11(&qword_280BE8C28);
  }

  v6 = qword_280BE8C30;
  v0[71] = &type metadata for Playlist.Entry.Item;
  v0[72] = &protocol witness table for Playlist.Entry.Item;
  OUTLINED_FUNCTION_203_0();
  v0[68] = swift_allocObject();
  v7 = OUTLINED_FUNCTION_1162();
  sub_21729C79C(v7, v8);
  OUTLINED_FUNCTION_160(v0 + 68, &type metadata for Playlist.Entry.Item);

  Playlist.Entry.Item.propertyProvider.getter();
  OUTLINED_FUNCTION_491(v0 + 73, v0[76]);
  v9 = OUTLINED_FUNCTION_85_3();
  v10(v9);
  v11 = sub_21729C644((v0 + 73));
  OUTLINED_FUNCTION_1125(v11, v12, v13, v14, v15, v16, v17, v18, v55, v56, v57);
  __swift_destroy_boxed_opaque_existential_1(v0 + 68);
  v19 = v0[19];
  v20 = v0[20];
  v22 = v0[21];
  v21 = v0[22];
  v23 = OUTLINED_FUNCTION_344();
  sub_2172A5428(v23, v24, v25, v26);
  sub_217269F50((v0 + 2));
  if (!v20)
  {
    goto LABEL_28;
  }

  sub_217751DE8();
  v27 = OUTLINED_FUNCTION_344();
  sub_2172B8404(v27, v28);
  sub_217751DE8();
  OUTLINED_FUNCTION_964();
  v30 = v30 && v21 == v29;
  if (v30)
  {

LABEL_26:

    v21 = v20;
    goto LABEL_27;
  }

  v31 = OUTLINED_FUNCTION_560();
  OUTLINED_FUNCTION_1407(v31, v32, v33);
  OUTLINED_FUNCTION_196_2();

  if ((v19 & 1) == 0)
  {
    type metadata accessor for MusicLibrary();
    v20 = static MusicLibrary._sharedLibraries.getter();
    if (sub_217204DD0(v20))
    {
      OUTLINED_FUNCTION_864();
      if (v34 != v35)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1275();
      do
      {
        if (v3)
        {
          v36 = OUTLINED_FUNCTION_205_0();
          v19 = MEMORY[0x21CEA2E30](v36);
        }

        else
        {
          OUTLINED_FUNCTION_1122();
        }

        sub_217751DE8();
        OUTLINED_FUNCTION_1229();
        if (v30 && v21 == v37)
        {

          OUTLINED_FUNCTION_1301();
        }

        else
        {
          v39 = OUTLINED_FUNCTION_560();
          OUTLINED_FUNCTION_1357(v39, v40, v41);
          OUTLINED_FUNCTION_476();

          OUTLINED_FUNCTION_1274();
          v1 = v6;
          v6 = v20;
          v20 = v22;
          v22 = v0;
          if (!v30)
          {
            v6 = v19;
          }
        }

        ++v2;
      }

      while (v1 != v2);
      v0 = v60;
    }

    goto LABEL_26;
  }

LABEL_27:

LABEL_28:
  v42 = OUTLINED_FUNCTION_1453();
  sub_21729C79C(v42, v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27610 + 1, &qword_21776B070);
  if (OUTLINED_FUNCTION_907(v44, v45, v46, v44))
  {
    v47 = v0[106];
    sub_2171F3F0C(v21, (v0 + 83));
    __swift_project_boxed_opaque_existential_1(v0 + 83, v0[86]);
    OUTLINED_FUNCTION_359(*(v47 + 57));
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v0[108] = v48;
    *v48 = v49;
    OUTLINED_FUNCTION_1282(v48);
    OUTLINED_FUNCTION_1273();
    OUTLINED_FUNCTION_182_5();
    OUTLINED_FUNCTION_46_2();

    __asm { BRAA            X8, X16 }
  }

  OUTLINED_FUNCTION_866();
  sub_2171F0790(v21, &unk_27CB27620, &unk_217778B30);
  OUTLINED_FUNCTION_1_9();
  sub_217752AA8();
  v0[103] = v58;
  v0[104] = v59;
  OUTLINED_FUNCTION_172_5();
  v52 = OUTLINED_FUNCTION_1014();
  MEMORY[0x21CEA23B0](v52);
  sub_217752C78();
  v53 = OUTLINED_FUNCTION_606();
  MEMORY[0x21CEA23B0](v53);
  OUTLINED_FUNCTION_1391();
  OUTLINED_FUNCTION_42_10();
  OUTLINED_FUNCTION_1221(v54);
  OUTLINED_FUNCTION_1052();
}

uint64_t sub_21746AF88()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 872) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21746B080()
{
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1272();
  OUTLINED_FUNCTION_93_3();
  sub_2171F0688(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_20_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  if (swift_dynamicCast())
  {
    v8 = *(v1 + 840);

    sub_2171F0790(v1 + 624, &xmmword_27CB27600, &qword_21776B040);
    __swift_destroy_boxed_opaque_existential_1((v1 + 504));
    v9 = *v0;
    v10 = *(v0 + 1);
    v11 = *(v0 + 2);
    *(v8 + 41) = *(v0 + 41);
    OUTLINED_FUNCTION_1059(v9, v10, v11);
    OUTLINED_FUNCTION_0_2();

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_227_4();
    *(v1 + 496) = -1;
    sub_2171F0790(v0, &qword_27CB27D20, &qword_217758B80);
    OUTLINED_FUNCTION_321();
    return OUTLINED_FUNCTION_272("Fatal error");
  }
}

uint64_t sub_21746B1BC(uint64_t a1)
{
  *(v2 + 720) = v1;
  *(v2 + 712) = a1;
  return MEMORY[0x2822009F8](&sub_21746B1E0, 0, 0);
}

uint64_t sub_21746B48C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 744) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_21746B584()
{
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_382();
  OUTLINED_FUNCTION_174_1();
  sub_2171F0688(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_85_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  if (OUTLINED_FUNCTION_1086(v9, v10, v9, &type metadata for Playlist.Entry))
  {
    OUTLINED_FUNCTION_1405();
    sub_2171F0790(v0, &xmmword_27CB27600, &qword_21776B040);
    __swift_destroy_boxed_opaque_existential_1((v2 + 432));
    OUTLINED_FUNCTION_156_7();
    OUTLINED_FUNCTION_1385();

    v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_227_4();
    sub_2171F0790(v1, &unk_27CB2ACC0, &qword_217758AA8);
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_272("Fatal error");
    OUTLINED_FUNCTION_1385();
  }
}

uint64_t sub_21746B690(uint64_t a1)
{
  *(v2 + 720) = v1;
  *(v2 + 712) = a1;
  return MEMORY[0x2822009F8](&sub_21746B6B4, 0, 0);
}

uint64_t sub_21746B960()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 744) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_21746BA58()
{
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_382();
  OUTLINED_FUNCTION_174_1();
  sub_2171F0688(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_85_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  if (OUTLINED_FUNCTION_1086(v9, v10, v9, &type metadata for Playlist))
  {
    OUTLINED_FUNCTION_1405();
    sub_2171F0790(v0, &xmmword_27CB27600, &qword_21776B040);
    __swift_destroy_boxed_opaque_existential_1((v2 + 432));
    OUTLINED_FUNCTION_156_7();
    OUTLINED_FUNCTION_1385();

    v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_227_4();
    sub_2171F0790(v1, &unk_27CB28A90, &qword_217758F90);
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_272("Fatal error");
    OUTLINED_FUNCTION_1385();
  }
}

uint64_t sub_21746BB64(uint64_t a1)
{
  *(v2 + 832) = v1;
  *(v2 + 824) = a1;
  return MEMORY[0x2822009F8](sub_21746BB88, 0, 0);
}

void sub_21746BB88()
{
  OUTLINED_FUNCTION_1181();
  OUTLINED_FUNCTION_845();
  v0[64] = &type metadata for RadioShow;
  v0[65] = &protocol witness table for RadioShow;
  OUTLINED_FUNCTION_197();
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_1118(v4);
  sub_217284338(v5, v6);
  if (qword_280BE8C28 != -1)
  {
    OUTLINED_FUNCTION_98_11(&qword_280BE8C28);
  }

  v7 = qword_280BE8C30;
  v0[69] = &type metadata for RadioShow;
  v0[70] = &protocol witness table for RadioShow;
  OUTLINED_FUNCTION_197();
  v8 = swift_allocObject();
  v9 = OUTLINED_FUNCTION_1137(v8);
  sub_217284338(v9, v10);
  v11 = OUTLINED_FUNCTION_666(v0 + 66);
  sub_21729C5E8(v11, (v0 + 71));
  OUTLINED_FUNCTION_443(v0 + 71);
  OUTLINED_FUNCTION_1271();
  v12 = OUTLINED_FUNCTION_85_3();
  v1(v12);
  v13 = sub_21729C644((v0 + 71));
  OUTLINED_FUNCTION_1125(v13, v14, v15, v16, v17, v18, v19, v20, v66, v68, v70);
  __swift_destroy_boxed_opaque_existential_1(v0 + 66);
  v21 = v0[19];
  v22 = v0[20];
  v24 = v0[21];
  v23 = v0[22];
  v25 = OUTLINED_FUNCTION_344();
  sub_2172A5428(v25, v26, v27, v28);
  sub_217269F50((v0 + 2));
  if (!v22)
  {
    goto LABEL_28;
  }

  sub_217751DE8();
  v29 = OUTLINED_FUNCTION_344();
  sub_2172B8404(v29, v30);
  sub_217751DE8();
  OUTLINED_FUNCTION_964();
  v32 = v32 && v23 == v31;
  if (v32)
  {

LABEL_26:

    v23 = v22;
    goto LABEL_27;
  }

  v33 = OUTLINED_FUNCTION_560();
  OUTLINED_FUNCTION_1407(v33, v34, v35);
  OUTLINED_FUNCTION_196_2();

  if ((v21 & 1) == 0)
  {
    type metadata accessor for MusicLibrary();
    v22 = static MusicLibrary._sharedLibraries.getter();
    if (sub_217204DD0(v22))
    {
      OUTLINED_FUNCTION_864();
      if (v36 != v37)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1275();
      do
      {
        if (v3)
        {
          v38 = OUTLINED_FUNCTION_205_0();
          v21 = MEMORY[0x21CEA2E30](v38);
        }

        else
        {
          OUTLINED_FUNCTION_1122();
        }

        sub_217751DE8();
        OUTLINED_FUNCTION_1229();
        if (v32 && v23 == v39)
        {

          OUTLINED_FUNCTION_1301();
        }

        else
        {
          v41 = OUTLINED_FUNCTION_560();
          OUTLINED_FUNCTION_1357(v41, v42, v43);
          OUTLINED_FUNCTION_476();

          OUTLINED_FUNCTION_1274();
          v1 = v7;
          v7 = v22;
          v22 = v24;
          v24 = v0;
          if (!v32)
          {
            v7 = v21;
          }
        }

        v2 = (v2 + 1);
      }

      while (v1 != v2);
      v0 = v74;
    }

    goto LABEL_26;
  }

LABEL_27:

LABEL_28:
  v44 = OUTLINED_FUNCTION_887();
  sub_217284338(v44, v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27610 + 1, &qword_21776B070);
  if (OUTLINED_FUNCTION_907(v46, v47, v48, v46))
  {
    OUTLINED_FUNCTION_346();
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v0[106] = v49;
    *v49 = v50;
    OUTLINED_FUNCTION_1282(v49);
    OUTLINED_FUNCTION_1273();
    OUTLINED_FUNCTION_182_5();
    OUTLINED_FUNCTION_46_2();

    __asm { BRAA            X8, X16 }
  }

  OUTLINED_FUNCTION_866();
  sub_2171F0790(v23, &unk_27CB27620, &unk_217778B30);
  OUTLINED_FUNCTION_1_9();
  v53 = sub_217752AA8();
  OUTLINED_FUNCTION_1120(v53, v54, v55, v56, v57, v58, v59, v60, v67, v69, v71, v72, v73);
  OUTLINED_FUNCTION_172_5();
  v61 = OUTLINED_FUNCTION_1014();
  v62 = MEMORY[0x21CEA23B0](v61);
  OUTLINED_FUNCTION_1517(v62, v63, &type metadata for RadioShow, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
  v64 = OUTLINED_FUNCTION_606();
  MEMORY[0x21CEA23B0](v64);
  OUTLINED_FUNCTION_686();
  OUTLINED_FUNCTION_42_10();
  OUTLINED_FUNCTION_1221(v65);
  OUTLINED_FUNCTION_1052();
}

uint64_t sub_21746BF74()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 856) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21746C06C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_808();
  OUTLINED_FUNCTION_742();
  sub_2171F0688(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_56_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  if (OUTLINED_FUNCTION_1276(v7, v8, v7, &type metadata for RadioShow))
  {
    OUTLINED_FUNCTION_1516();
    sub_2171F0790(v0 + 608, &xmmword_27CB27600, &qword_21776B040);
    __swift_destroy_boxed_opaque_existential_1((v0 + 488));
    v9 = *(v0 + 432);
    v10 = *(v0 + 448);
    v11 = *(v0 + 464);
    qword_27CB27630 = *(v0 + 480);
    xmmword_27CB27610 = v10;
    unk_27CB27620 = v11;
    xmmword_27CB27600 = v9;
    OUTLINED_FUNCTION_0_2();

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_880();
    sub_2171F0790(v0 + 432, &qword_27CB24678, &qword_217758BD0);
    OUTLINED_FUNCTION_321();
    return OUTLINED_FUNCTION_272("Fatal error");
  }
}

uint64_t sub_21746C190()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21746C2B0()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[7];
  v2 = sub_2177513E8();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    OUTLINED_FUNCTION_20_0();

    return v3();
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      sub_21746CA6C();
    }

    sub_2171F0790(v0[7], &unk_27CB282D0, &qword_21776C3D0);
    OUTLINED_FUNCTION_1058();
    sub_2171FF280(v5, v6);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v0[11] = v7;
    *v7 = v8;
    v7[1] = sub_21746C190;
    OUTLINED_FUNCTION_838();

    return MEMORY[0x282200308](v9);
  }
}

uint64_t sub_21746C420()
{
  OUTLINED_FUNCTION_10();
  *(v0 + 40) = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t MusicLibrary.__allocating_init(underlyingMediaLibrary:)(uint64_t a1)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  OUTLINED_FUNCTION_188_2();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for MusicLibrary();
    OUTLINED_FUNCTION_1212();
    swift_allocObject();
    v1 = OUTLINED_FUNCTION_1302();
    v3 = v2;
    sub_2171F0048(v1);
    OUTLINED_FUNCTION_44_1();
    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000019, 0x80000002177ADCC0);
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD00000000000002ELL, 0x80000002177ADCE0);
    OUTLINED_FUNCTION_42_10();
    result = OUTLINED_FUNCTION_1375(v5);
    __break(1u);
  }

  return result;
}

uint64_t MusicLibrary.deinit()
{
  if (*(v0 + 24))
  {

    sub_217752558();
  }

  return v0;
}

uint64_t MusicLibrary.__deallocating_deinit()
{
  MusicLibrary.deinit();
  OUTLINED_FUNCTION_1212();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_21746C674(void *a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  v3 = a1;

  sub_2171F55D8();
}

uint64_t sub_21746C6D0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = [v1 databasePath];
    sub_217751F48();
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t sub_21746C740(SEL *a1)
{
  if (*(v1 + 16))
  {
    v2 = [*(v1 + 16) *a1];
    sub_217751F48();
  }

  return OUTLINED_FUNCTION_93();
}

BOOL sub_21746C7A4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    sub_217215924(0, &qword_280BE22D0, off_278228D10);
    v4 = v3;
    v5 = v2;
    v6 = sub_2177528A8();

    if ((v6 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    sub_217470A38(&v15);
    v7 = v15;
    v8 = v16;
    sub_217470A38(&v13);
    if (v8 != 1)
    {
      if ((v14 & 1) == 0)
      {
        return v7 == v13;
      }

      return 0;
    }

    if (v7 == 0.0)
    {
      v9 = LODWORD(v13) == 0;
    }

    else
    {
      if (LODWORD(v7) != 1)
      {
        if (LODWORD(v13) > 1)
        {
          v12 = v14;
        }

        else
        {
          v12 = 0;
        }

        return v12 == 1;
      }

      v9 = LODWORD(v13) == 1;
    }

    if (v9)
    {
      v11 = v14;
    }

    else
    {
      v11 = 0;
    }

    return (v11 & 1) != 0;
  }

  if (!v3)
  {
    goto LABEL_6;
  }

  return 0;
}

BOOL static MusicLibrary.UnderlyingConnectionStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 4) != 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 == 0.0)
  {
    v4 = LODWORD(v3) == 0;
  }

  else
  {
    if (LODWORD(v2) != 1)
    {
      if (LODWORD(v3) > 1)
      {
        v7 = *(a2 + 4);
      }

      else
      {
        v7 = 0;
      }

      return (v7 & 1) != 0;
    }

    v4 = LODWORD(v3) == 1;
  }

  if (v4)
  {
    v6 = *(a2 + 4);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t sub_21746C934(void *a1)
{
  v3 = *(v1 + 16);
  sub_217753208();
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_44_1();
    sub_2177528B8();
  }

  sub_217470A38(&v7);
  if (v8 == 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v5 = 2;
      }

      else
      {
        v5 = 3;
      }
    }

    else
    {
      v5 = 0;
    }

    return MEMORY[0x21CEA3550](v5);
  }

  else
  {
    MEMORY[0x21CEA3550](1);
    return sub_217753218();
  }
}

id sub_21746C9FC()
{
  v1 = *(v0 + 16);
  if (v1)
  {

    return [v1 endGeneratingLibraryChangeNotifications];
  }

  else
  {
    OUTLINED_FUNCTION_893();
    OUTLINED_FUNCTION_422();
    result = OUTLINED_FUNCTION_1288(v3);
    __break(1u);
  }

  return result;
}

void sub_21746CA6C()
{
  if (!*(v0 + 16))
  {
    v1 = [objc_opt_self() deviceLibrary];

    sub_21746C674(v1);
  }
}

uint64_t sub_21746CAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[76] = v3;
  v4[75] = a3;
  v4[74] = a2;
  v4[73] = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21746CAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_182();
  v14 = *(*(v10 + 608) + 16);
  *(v10 + 616) = v14;
  if (!v14)
  {
    sub_21728FC9C(v11, v12, v13);
    OUTLINED_FUNCTION_955();
    v27 = swift_allocError();
    OUTLINED_FUNCTION_714(v27, v28);
LABEL_15:
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_234();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
  }

  v15 = *(*(v10 + 600) + 16);
  v16 = v14;
  v17 = OUTLINED_FUNCTION_25_0();
  v15(v17);
  sub_2171F0688(v10 + 504, v10 + 440, &qword_27CB27590, &qword_21776ADF0);
  if (*(v10 + 464))
  {
    OUTLINED_FUNCTION_21_11((v10 + 440));
    v18 = OUTLINED_FUNCTION_1_5();
    MusicItem.identifierSet.getter(v18, v19, v20);
    sub_217269F50(v10 + 80);
    v21 = *(v10 + 352);
    v22 = __swift_destroy_boxed_opaque_existential_1((v10 + 440));
    if (v21)
    {
      sub_21728FC9C(v22, v23, v24);
      OUTLINED_FUNCTION_955();
      swift_allocError();
      v26 = 3;
LABEL_14:
      OUTLINED_FUNCTION_1239(v25, v26);

      sub_2171F0790(v10 + 504, &qword_27CB27590, &qword_21776ADF0);
      goto LABEL_15;
    }
  }

  else
  {
    sub_2171F0790(v10 + 440, &qword_27CB27590, &qword_21776ADF0);
  }

  sub_2171F0688(v10 + 504, v10 + 544, &qword_27CB27590, &qword_21776ADF0);
  if (!*(v10 + 568))
  {
    v33 = sub_2171F0790(v10 + 544, &qword_27CB27590, &qword_21776ADF0);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_21_11((v10 + 544));
  v29 = OUTLINED_FUNCTION_1_5();
  MusicItem.identifierSet.getter(v29, v30, v31);
  v32 = *(v10 + 104);
  sub_217751DE8();
  sub_217269F50(v10 + 80);
  v33 = __swift_destroy_boxed_opaque_existential_1((v10 + 544));
  if (!v32)
  {
LABEL_13:
    sub_21728FC9C(v33, v34, v35);
    OUTLINED_FUNCTION_955();
    swift_allocError();
    v26 = 2;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_47_2();
  v36 = sub_217751F18();
  *(v10 + 624) = v36;

  *(v10 + 16) = v10;
  *(v10 + 24) = sub_21746CDE0;
  v37 = swift_continuation_init();
  *(v10 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27598, qword_21776ADF8);
  *(v10 + 440) = MEMORY[0x277D85DD0];
  *(v10 + 448) = 1107296256;
  *(v10 + 456) = sub_21749A8F8;
  *(v10 + 464) = &block_descriptor_6;
  *(v10 + 472) = v37;
  [v16 sdk:v36 addItemToLibraryWithStoreID:v10 + 440 completionHandler:?];
  OUTLINED_FUNCTION_234();

  return MEMORY[0x282200938](v38);
}

uint64_t sub_21746CDE0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 632) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_21746CEDC()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 624);

  sub_2171F0790(v0 + 504, &qword_27CB27590, &qword_21776ADF0);
  OUTLINED_FUNCTION_0_2();

  return v2();
}

uint64_t sub_21746CF54()
{
  OUTLINED_FUNCTION_30_0();
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  swift_willThrow();

  sub_2171F0790(v0 + 504, &qword_27CB27590, &qword_21776ADF0);
  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_21746CFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[240] = v5;
  v6[239] = a5;
  v6[238] = a4;
  v6[237] = a3;
  v6[236] = a2;
  v6[235] = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21746D008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = v3;
  if (*(*(v3 + 1920) + 16))
  {
    *(v3 + 1664) = &type metadata for Playlist;
    *(v3 + 1672) = &protocol witness table for Playlist;
    OUTLINED_FUNCTION_197();
    *(v3 + 1640) = swift_allocObject();
    v4 = OUTLINED_FUNCTION_788();
    sub_2172757C0(v4, v5);
    v6 = OUTLINED_FUNCTION_780((v3 + 1640), &type metadata for Playlist);
    sub_21729C5E8(v6, v3 + 1680);
    OUTLINED_FUNCTION_361((v3 + 1680));
    v7 = OUTLINED_FUNCTION_16_1();
    v8(v7);
    sub_21729C644(v3 + 1680);
    memcpy((v3 + 80), v40, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1((v3 + 1640));
    v9 = sub_217269F50(v3 + 80);
    if (*(v3 + 352))
    {
      (*(*(v3 + 1912) + 16))(*(v3 + 1904));
      sub_2171F0688(v3 + 1720, v3 + 1760, &qword_27CB27590, &qword_21776ADF0);
      if (*(v3 + 1784))
      {
        OUTLINED_FUNCTION_21_11((v3 + 1760));
        v12 = OUTLINED_FUNCTION_600();
        MusicItem.identifierSet.getter(v12, v13, v14);
        v15 = *(v3 + 880);
        sub_217751DE8();
        sub_217269F50(v3 + 800);
        __swift_destroy_boxed_opaque_existential_1((v3 + 1760));
        if (v15)
        {

          sub_2171F0688(v3 + 1720, v3 + 1840, &qword_27CB27590, &qword_21776ADF0);
          if (*(v3 + 1864))
          {
            OUTLINED_FUNCTION_21_11((v3 + 1840));
            v16 = OUTLINED_FUNCTION_600();
            MusicItem.identifierSet.getter(v16, v17, v18);
            v19 = *(v3 + 1240);
            sub_217751DE8();
            sub_217269F50(v3 + 1160);
            v20 = __swift_destroy_boxed_opaque_existential_1((v3 + 1840));
            if (v19)
            {
              v23 = 1;
LABEL_15:
              v30 = *(v3 + 1896);
              v31 = objc_opt_self();
              OUTLINED_FUNCTION_15();
              v32 = sub_217751F18();
              *(v3 + 1928) = v32;

              sub_2172757C0(v30, v3 + 1584);
              sub_2176FE470();
              v34 = v33;
              *(v3 + 1936) = v33;
              *(v3 + 16) = v3;
              v35 = OUTLINED_FUNCTION_1027();
              *(v3 + 1576) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27598, qword_21776ADF8);
              *(v3 + 1552) = v35;
              *(v3 + 1520) = MEMORY[0x277D85DD0];
              *(v3 + 1528) = 1107296256;
              *(v3 + 1536) = sub_21749A8F8;
              *(v3 + 1544) = &block_descriptor_4;
              [v31 addProductID:v32 playlist:v34 isCloudID:v23 completionHandler:v3 + 1520];

              return MEMORY[0x282200938](v3 + 16);
            }

            goto LABEL_21;
          }

          v36 = v3 + 1840;
LABEL_20:
          v20 = sub_2171F0790(v36, &qword_27CB27590, &qword_21776ADF0);
LABEL_21:
          sub_21728FC9C(v20, v21, v22);
          OUTLINED_FUNCTION_955();
          swift_allocError();
          OUTLINED_FUNCTION_1239(v37, 5);
          sub_2171F0790(v3 + 1720, &qword_27CB27590, &qword_21776ADF0);
          goto LABEL_22;
        }
      }

      else
      {
        sub_2171F0790(v3 + 1760, &qword_27CB27590, &qword_21776ADF0);
      }

      sub_2171F0688(v3 + 1720, v3 + 1800, &qword_27CB27590, &qword_21776ADF0);
      if (*(v3 + 1824))
      {
        OUTLINED_FUNCTION_21_11((v3 + 1800));
        v26 = OUTLINED_FUNCTION_600();
        MusicItem.identifierSet.getter(v26, v27, v28);
        v29 = *(v3 + 464);
        sub_217751DE8();
        sub_217269F50(v3 + 440);
        v20 = __swift_destroy_boxed_opaque_existential_1((v3 + 1800));
        if (v29)
        {
          v23 = 0;
          goto LABEL_15;
        }

        goto LABEL_21;
      }

      v36 = v3 + 1800;
      goto LABEL_20;
    }

    sub_21728FC9C(v9, v10, v11);
    OUTLINED_FUNCTION_955();
    swift_allocError();
    v25 = 4;
  }

  else
  {
    sub_21728FC9C(a1, a2, a3);
    OUTLINED_FUNCTION_955();
    swift_allocError();
    v25 = 1;
  }

  OUTLINED_FUNCTION_1239(v24, v25);
LABEL_22:
  OUTLINED_FUNCTION_20_0();

  return v38();
}

uint64_t sub_21746D484()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1944) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_21746D580()
{
  OUTLINED_FUNCTION_30_0();
  v1 = *(v0 + 1928);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  OUTLINED_FUNCTION_1212();
  v2 = swift_allocObject();
  *(v0 + 1952) = v2;
  *(v2 + 16) = xmmword_217759C00;
  if (qword_280BE91F0 != -1)
  {
    swift_once();
  }

  *(v2 + 32) = qword_280BE91F8;

  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 1960) = v3;
  *v3 = v4;
  v3[1] = sub_21746D6B4;
  OUTLINED_FUNCTION_762();

  return sub_217444648(v5, v6, v7);
}

uint64_t sub_21746D6B4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 1968) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21746D7AC()
{
  OUTLINED_FUNCTION_10();
  swift_setDeallocating();
  sub_217275BAC();
  sub_2171F0790(v0 + 1720, &qword_27CB27590, &qword_21776ADF0);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_21746D824()
{
  OUTLINED_FUNCTION_10();
  swift_setDeallocating();
  sub_217275BAC();
  sub_2171F0790(v0 + 1720, &qword_27CB27590, &qword_21776ADF0);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_21746D8A0()
{
  OUTLINED_FUNCTION_30_0();
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1928);
  swift_willThrow();
  sub_2171F0790(v0 + 1720, &qword_27CB27590, &qword_21776ADF0);

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_21746D92C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    OUTLINED_FUNCTION_1302();

    return sub_217718250();
  }

  else
  {
    v6 = *v3;

    return j__swift_continuation_throwingResume(v6);
  }
}

uint64_t sub_21746D998()
{
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_1210();
  OUTLINED_FUNCTION_9_14(&unk_21776AE20);
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v2[1] = sub_2172849C8;
  OUTLINED_FUNCTION_1071();
  OUTLINED_FUNCTION_1463();

  return v5();
}

uint64_t sub_21746DA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[185] = v8;
  v9[184] = a8;
  v9[183] = a7;
  v9[182] = a6;
  v9[181] = a5;
  v9[180] = a4;
  v9[179] = a3;
  v9[178] = a2;
  v9[177] = a1;
  return MEMORY[0x2822009F8](sub_21746DA9C, 0, 0);
}

void sub_21746DA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_949();
  OUTLINED_FUNCTION_885();
  if (*(*(v20 + 1480) + 16))
  {
    v24 = *(v20 + 1472);
    v25 = *(v24 + 16);
    v26 = v24 + 32;
    if (v25)
    {
      while (1)
      {
        sub_217275710(v26, v20 + 1008);
        *(v20 + 1152) = &type metadata for Track;
        *(v20 + 1160) = &protocol witness table for Track;
        OUTLINED_FUNCTION_203_0();
        v27 = swift_allocObject();
        *(v20 + 1128) = v27;
        sub_217275710(v20 + 1008, v27 + 16);
        sub_21749A32C(v20 + 1128, v20 + 1208);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        sub_2171F3F0C((v20 + 1248), v20 + 1168);
        v28 = *(v20 + 1200);
        __swift_project_boxed_opaque_existential_1((v20 + 1168), *(v20 + 1192));
        OUTLINED_FUNCTION_80_3();
        sub_2173AAEE8(v29, v30, v31);
        __swift_destroy_boxed_opaque_existential_1((v20 + 1128));
        __swift_destroy_boxed_opaque_existential_1((v20 + 1168));
        v32 = sub_21727576C(v20 + 1008);
        MEMORY[0x21CEA25D0](v32);
        OUTLINED_FUNCTION_1350();
        if (v34)
        {
          v35 = OUTLINED_FUNCTION_57(v33);
          OUTLINED_FUNCTION_1507(v35, v28 + 1);
        }

        sub_217752378();
        v26 += 64;
        if (!--v25)
        {
          goto LABEL_11;
        }
      }

      *(v20 + 1280) = 0;
      OUTLINED_FUNCTION_26_18();
      sub_2171F0790(v20 + 1248, &qword_27CB281E0, &qword_2177871A0);
      sub_217752AA8();
      *(v20 + 1400) = 0;
      *(v20 + 1408) = 0xE000000000000000;
      sub_217752C78();
      OUTLINED_FUNCTION_44_10();
      MEMORY[0x21CEA23B0](0xD00000000000003CLL);
      OUTLINED_FUNCTION_42_10();
      OUTLINED_FUNCTION_1375(v57);
      OUTLINED_FUNCTION_746();
    }

    else
    {
LABEL_11:
      v46 = *(v20 + 1464);
      v47 = *(v20 + 1456);
      OUTLINED_FUNCTION_1452();
      v48 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeRequest);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      v49 = OUTLINED_FUNCTION_161_5();
      sub_217491E6C(v49, v50, &unk_21776B0D0, &unk_27CB24D20, v26, v47, v46, v51);
      OUTLINED_FUNCTION_1149();
      *(v20 + 1488) = v52;
      *(v20 + 16) = v53;
      OUTLINED_FUNCTION_1451(v20 + 1288);
      OUTLINED_FUNCTION_1027();
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB275B0, &qword_21776AE38);
      OUTLINED_FUNCTION_1450(v54);
      OUTLINED_FUNCTION_366();
      OUTLINED_FUNCTION_329(COERCE_DOUBLE(1107296256));
      *(v20 + 968) = &block_descriptor_1265;
      [v48 sdk_performWithCompletionHandler_];
      OUTLINED_FUNCTION_746();

      MEMORY[0x282200938](v55);
    }
  }

  else
  {
    sub_21728FC9C(v21, v22, v23);
    OUTLINED_FUNCTION_955();
    v36 = swift_allocError();
    OUTLINED_FUNCTION_714(v36, v37);
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_746();

    v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_21746DE50()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1496) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_21746DF4C()
{
  OUTLINED_FUNCTION_182();
  v1 = *(v0 + 1320);
  *(v0 + 1360) = v1;
  v2 = *(v0 + 1304);
  *(v0 + 1328) = *(v0 + 1288);
  *(v0 + 1344) = v2;
  *(v0 + 1504) = v1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 1328));
  v3 = qword_280BE6220;
  swift_unknownObjectRetain();
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_473(&qword_280BE6220);
  }

  *(v0 + 1368) = OUTLINED_FUNCTION_1449(&xmmword_280BE6228);
  *(v0 + 1384) = v4;
  *(v0 + 1392) = v5;
  OUTLINED_FUNCTION_1298();
  OUTLINED_FUNCTION_1448();
  v6 = OUTLINED_FUNCTION_93();
  sub_2172B6904(v6, v7, v8, v9, v10);
  sub_2173E7DEC(v0 + 624);
  swift_getKeyPath(" t=e");
  OUTLINED_FUNCTION_1473();
  sub_217751DE8();
  sub_217269F50(v0 + 80);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB275B8, &qword_21776AE68);
  v12 = OUTLINED_FUNCTION_1515(v11);
  OUTLINED_FUNCTION_968(v12);

  MEMORY[0x21CEA25D0](v13);
  OUTLINED_FUNCTION_860();
  if (v15)
  {
    v20 = OUTLINED_FUNCTION_57(v14);
    OUTLINED_FUNCTION_1268(v20);
  }

  OUTLINED_FUNCTION_25_0();
  sub_217752378();

  OUTLINED_FUNCTION_1238((v0 + 544));
  OUTLINED_FUNCTION_9_14(&unk_21776AE70);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 1512) = v16;
  *v16 = v17;
  OUTLINED_FUNCTION_689(v16);
  OUTLINED_FUNCTION_1410();

  __asm { BR              X1 }
}

uint64_t sub_21746E108()
{
  OUTLINED_FUNCTION_30_0();
  v1 = *(v0 + 1488);
  swift_willThrow();

  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_21746E174()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 1520) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21746E26C()
{
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1518();
  v1 = v0[186];
  if (v0[135])
  {
    v2 = v0[177];
    sub_2171F0790((v0 + 55), &qword_27CB275D0, &unk_21776AE88);

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_1238(v0 + 108);
    sub_2171F0790((v0 + 108), &unk_27CB275C0, &unk_21776AE78);
    v3 = OUTLINED_FUNCTION_1110();
    *(v2 + 48) = v4;
    *(v2 + 16) = v5;
    *(v2 + 32) = v3;
    *v2 = v6;
    OUTLINED_FUNCTION_0_2();
  }

  else
  {
    v7 = sub_2171F0790((v0 + 134), &unk_27CB28A90, &qword_217758F90);
    sub_21728FC9C(v7, v8, v9);
    OUTLINED_FUNCTION_955();
    swift_allocError();
    OUTLINED_FUNCTION_1239(v10, 6);

    swift_unknownObjectRelease();
    sub_2171F0790((v0 + 55), &qword_27CB275D0, &unk_21776AE88);
    OUTLINED_FUNCTION_1238(v0 + 98);
    sub_2171F0790((v0 + 98), &unk_27CB275C0, &unk_21776AE78);
    OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_1385();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_21746E3C0()
{
  OUTLINED_FUNCTION_10();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1238((v0 + 704));
  sub_2171F0790(v0 + 704, &unk_27CB275C0, &unk_21776AE78);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_21746E448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1272) = v8;
  *(v9 + 1264) = v16;
  *(v9 + 1256) = v15;
  *(v9 + 1240) = v14;
  *(v9 + 1232) = a8;
  *(v9 + 1224) = a7;
  *(v9 + 1216) = a6;
  *(v9 + 1208) = a5;
  *(v9 + 1200) = a4;
  *(v9 + 1192) = a3;
  *(v9 + 1184) = a2;
  *(v9 + 1176) = a1;
  OUTLINED_FUNCTION_35_1();
  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_21746E4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_949();
  OUTLINED_FUNCTION_885();
  if (*(*(v20 + 1272) + 16))
  {
    v24 = *(v20 + 1224);
    v50 = *(v20 + 1216);
    v25 = *(v20 + 1208);
    v26 = swift_task_alloc();
    v27 = *(v20 + 1256);
    *(v26 + 16) = *(v20 + 1240);
    *(v26 + 32) = v27;
    sub_217215924(0, &qword_280BE22D8, off_278228D58);
    sub_217752148();

    v28 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeRequest);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_1289();
    sub_217491E6C(v29, v30, v31, v32, v25, v50, v24, v33);
    OUTLINED_FUNCTION_1149();
    *(v20 + 1280) = v34;
    *(v20 + 16) = v35;
    OUTLINED_FUNCTION_1451(v20 + 1064);
    OUTLINED_FUNCTION_1027();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB275B0, &qword_21776AE38);
    OUTLINED_FUNCTION_1450(v36);
    OUTLINED_FUNCTION_366();
    OUTLINED_FUNCTION_329(COERCE_DOUBLE(1107296256));
    *(v20 + 968) = &block_descriptor_11;
    [v28 sdk_performWithCompletionHandler_];
    OUTLINED_FUNCTION_746();

    return MEMORY[0x282200938](v37);
  }

  else
  {
    sub_21728FC9C(v21, v22, v23);
    OUTLINED_FUNCTION_955();
    v39 = swift_allocError();
    OUTLINED_FUNCTION_714(v39, v40);
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_746();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_21746E6C4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1288) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_21746E7C0()
{
  OUTLINED_FUNCTION_182();
  v1 = *(v0 + 1096);
  *(v0 + 1136) = v1;
  v2 = *(v0 + 1080);
  *(v0 + 1104) = *(v0 + 1064);
  *(v0 + 1120) = v2;
  *(v0 + 1296) = v1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 1104));
  v3 = qword_280BE6220;
  swift_unknownObjectRetain();
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_473(&qword_280BE6220);
  }

  *(v0 + 1144) = OUTLINED_FUNCTION_1449(&xmmword_280BE6228);
  *(v0 + 1160) = v4;
  *(v0 + 1168) = v5;
  OUTLINED_FUNCTION_1298();
  OUTLINED_FUNCTION_1448();
  v6 = OUTLINED_FUNCTION_93();
  sub_2172B6904(v6, v7, v8, v9, v10);
  sub_2173E7DEC(v0 + 624);
  swift_getKeyPath(" t=e");
  OUTLINED_FUNCTION_1473();
  sub_217751DE8();
  sub_217269F50(v0 + 80);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB275B8, &qword_21776AE68);
  v12 = OUTLINED_FUNCTION_1515(v11);
  OUTLINED_FUNCTION_968(v12);

  MEMORY[0x21CEA25D0](v13);
  OUTLINED_FUNCTION_860();
  if (v15)
  {
    v20 = OUTLINED_FUNCTION_57(v14);
    OUTLINED_FUNCTION_1268(v20);
  }

  OUTLINED_FUNCTION_25_0();
  sub_217752378();

  OUTLINED_FUNCTION_1238((v0 + 544));
  OUTLINED_FUNCTION_9_14(&unk_21776AE70);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 1304) = v16;
  *v16 = v17;
  OUTLINED_FUNCTION_689(v16);
  OUTLINED_FUNCTION_1410();

  __asm { BR              X1 }
}

uint64_t sub_21746E97C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 1312) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21746EA74()
{
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1518();
  v1 = v0[160];
  if (v0[127])
  {
    v2 = v0[147];

    swift_unknownObjectRelease();
    sub_2171F0790((v0 + 55), &qword_27CB275D0, &unk_21776AE88);
    OUTLINED_FUNCTION_1238(v0 + 108);
    sub_2171F0790((v0 + 108), &unk_27CB275C0, &unk_21776AE78);
    v3 = OUTLINED_FUNCTION_1110();
    *(v2 + 48) = v4;
    *(v2 + 16) = v5;
    *(v2 + 32) = v3;
    *v2 = v6;
    OUTLINED_FUNCTION_0_2();
  }

  else
  {
    v7 = sub_2171F0790((v0 + 126), &unk_27CB28A90, &qword_217758F90);
    sub_21728FC9C(v7, v8, v9);
    OUTLINED_FUNCTION_955();
    swift_allocError();
    OUTLINED_FUNCTION_1239(v10, 6);

    swift_unknownObjectRelease();
    sub_2171F0790((v0 + 55), &qword_27CB275D0, &unk_21776AE88);
    OUTLINED_FUNCTION_1238(v0 + 98);
    sub_2171F0790((v0 + 98), &unk_27CB275C0, &unk_21776AE78);
    OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_1385();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_21746EBC8()
{
  OUTLINED_FUNCTION_30_0();
  v1 = *(v0 + 1280);
  swift_willThrow();

  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_21746EC34()
{
  OUTLINED_FUNCTION_10();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1238((v0 + 704));
  sub_2171F0790(v0 + 704, &unk_27CB275C0, &unk_21776AE78);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_21746ECBC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  (*(a2 + 16))(&v11, a1, a2);
  if (v12)
  {
    sub_2171F3F0C(&v11, v14);
    sub_21749A32C(v14, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
    if (swift_dynamicCast())
    {
      sub_2171F3F0C(v8, &v11);
      v4 = v12;
      v5 = v13;
      __swift_project_boxed_opaque_existential_1(&v11, v12);
      v10[0] = 11;
      v6 = sub_2173AAEE8(v10, v4, v5);
      __swift_destroy_boxed_opaque_existential_1(v14);
      *a3 = v6;
      return __swift_destroy_boxed_opaque_existential_1(&v11);
    }

    else
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      sub_2171F0790(v8, &qword_27CB281E0, &qword_2177871A0);
      *&v11 = 0;
      *(&v11 + 1) = 0xE000000000000000;
      sub_217752AA8();
      sub_217752C78();
      MEMORY[0x21CEA23B0](0xD00000000000003CLL, 0x80000002177AEA10);
      result = sub_217752D08();
      __break(1u);
    }
  }

  else
  {
    result = sub_2171F0790(&v11, &qword_27CB27590, &qword_21776ADF0);
    *a3 = 0;
  }

  return result;
}

uint64_t *sub_21746EEAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a4)
  {
    v9 = a4;

    return sub_217718250();
  }

  else
  {
    if (a2)
    {
      v11 = MEMORY[0x277D84F68] + 8;
      *&v10 = a2;
      result = sub_2172124CC(&v10, v12);
      if (a3)
      {
        v13 = a3;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        return sub_2177174CC(v8, v12);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21746EF78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21746EFD0()
{
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_1109();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v1[1] = sub_2172849C8;
  OUTLINED_FUNCTION_897();
  OUTLINED_FUNCTION_1399();
  OUTLINED_FUNCTION_46_2();

  return sub_21746F41C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21746F08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10();
  *(v13 + 112) = a12;
  *(v13 + 120) = v12;
  *(v13 + 96) = a11;
  *(v13 + 80) = a9;
  *(v13 + 88) = a10;
  *(v13 + 64) = v14;
  *(v13 + 72) = v15;
  *(v13 + 48) = v16;
  *(v13 + 56) = v17;
  *(v13 + 32) = v18;
  *(v13 + 40) = v19;
  *(v13 + 16) = v20;
  *(v13 + 24) = v21;
  v22 = sub_2177528F8();
  *(v13 + 128) = v22;
  OUTLINED_FUNCTION_15_3(v22);
  *(v13 + 136) = v23;
  *(v13 + 144) = OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_35_1();
  return OUTLINED_FUNCTION_1501(v24, v25, v26);
}

uint64_t sub_21746F150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_41_0();
  v13 = OUTLINED_FUNCTION_718();
  v14(v13);
  OUTLINED_FUNCTION_705();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v12[19] = v19;
  *v19 = v20;
  v19[1] = sub_21746F248;
  v21 = v12[8];
  v22 = v12[9];
  v23 = v12[6];
  v24 = v12[7];
  v25 = v12[4];
  v26 = v12[5];
  v27 = v12[2];
  v28 = v12[3];

  return sub_21746FD28(v27, v28, v25, v26, v23, v24, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_21746F248()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 160) = v0;

  v7 = OUTLINED_FUNCTION_85_3();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_1322();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_1322();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_21746F3C0()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_21746F41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[185] = v8;
  v9[184] = v11;
  v9[183] = a8;
  v9[182] = a7;
  v9[181] = a6;
  v9[180] = a5;
  v9[179] = a4;
  v9[178] = a3;
  v9[177] = a2;
  v9[176] = a1;
  return MEMORY[0x2822009F8](sub_21746F468, 0, 0);
}

void sub_21746F468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_949();
  OUTLINED_FUNCTION_885();
  if (*(*(v20 + 1480) + 16))
  {
    v27 = *(v20 + 1472);
    if (v27 && (v28 = *(v27 + 16), v21 = &qword_21775A390, v22 = v27 + 32, v23 = &unk_27CB24D20, v28))
    {
      while (1)
      {
        *(v20 + 1224) = &type metadata for Track;
        *(v20 + 1232) = &protocol witness table for Track;
        OUTLINED_FUNCTION_203_0();
        *(v20 + 1200) = swift_allocObject();
        v29 = OUTLINED_FUNCTION_916();
        sub_217275710(v29, v30);
        sub_21749A32C(v20 + 1200, v20 + 1280);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        sub_2171F3F0C((v20 + 1320), v20 + 1240);
        v31 = *(v20 + 1272);
        __swift_project_boxed_opaque_existential_1((v20 + 1240), *(v20 + 1264));
        OUTLINED_FUNCTION_80_3();
        sub_2173AAEE8(v32, v33, v34);
        __swift_destroy_boxed_opaque_existential_1((v20 + 1200));
        v35 = __swift_destroy_boxed_opaque_existential_1((v20 + 1240));
        MEMORY[0x21CEA25D0](v35);
        OUTLINED_FUNCTION_1350();
        if (v37)
        {
          v38 = OUTLINED_FUNCTION_57(v36);
          OUTLINED_FUNCTION_1507(v38, v31 + 1);
        }

        sub_217752378();
        v22 += 64;
        if (!--v28)
        {
          goto LABEL_12;
        }
      }

      *(v20 + 1352) = 0;
      OUTLINED_FUNCTION_26_18();
      sub_2171F0790(v20 + 1320, &qword_27CB281E0, &qword_2177871A0);
      sub_217752AA8();
      *(v20 + 1392) = 0;
      *(v20 + 1400) = 0xE000000000000000;
      MEMORY[0x21CEA23B0](0x206D657449, 0xE500000000000000);
      sub_217752C78();
      OUTLINED_FUNCTION_44_10();
      MEMORY[0x21CEA23B0](0xD00000000000003DLL);
      OUTLINED_FUNCTION_42_10();
      OUTLINED_FUNCTION_1375(v61);
      OUTLINED_FUNCTION_746();
    }

    else
    {
LABEL_12:
      v49 = *(v20 + 1464);
      v62 = *(v20 + 1456);
      OUTLINED_FUNCTION_1452();
      sub_2172757C0(*(v20 + 1416), v20 + 1008);
      sub_2176FE470();
      v50 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeRequest);
      OUTLINED_FUNCTION_967();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      OUTLINED_FUNCTION_727();
      OUTLINED_FUNCTION_1289();
      sub_217491FA4(v51, v52, v53, v54, v23, v22, v62, v49, v55);
      OUTLINED_FUNCTION_1149();
      *(v20 + 1488) = v56;
      *(v20 + 16) = v57;
      OUTLINED_FUNCTION_1451(v20 + 1120);
      OUTLINED_FUNCTION_1027();
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB275B0, &qword_21776AE38);
      OUTLINED_FUNCTION_1450(v58);
      OUTLINED_FUNCTION_366();
      OUTLINED_FUNCTION_329(COERCE_DOUBLE(1107296256));
      *(v20 + 968) = &block_descriptor_1233;
      [v21 sdk_performWithCompletionHandler_];
      OUTLINED_FUNCTION_746();

      MEMORY[0x282200938](v59);
    }
  }

  else
  {
    sub_21728FC9C(v24, v25, v26);
    OUTLINED_FUNCTION_955();
    v39 = swift_allocError();
    OUTLINED_FUNCTION_714(v39, v40);
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_746();

    v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_21746F83C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1496) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_21746F938()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_1264();
  v1[94].n128_u64[0] = v0;
  __swift_destroy_boxed_opaque_existential_1(v2);
  v3 = qword_280BE6220;
  swift_unknownObjectRetain();
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_473(&qword_280BE6220);
  }

  v1[85] = OUTLINED_FUNCTION_1449(&xmmword_280BE6228);
  v1[86].n128_u64[0] = v4;
  v1[86].n128_u64[1] = v5;
  OUTLINED_FUNCTION_1298();
  OUTLINED_FUNCTION_1448();
  sub_2172B6904(v0, v6, v7, v8, v9);
  sub_2173E7DEC(&v1[39]);
  swift_getKeyPath(" t=e");
  OUTLINED_FUNCTION_1473();
  sub_217751DE8();
  sub_217269F50(&v1[5]);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB275B8, &qword_21776AE68);
  v11 = OUTLINED_FUNCTION_1515(v10);
  OUTLINED_FUNCTION_968(v11);

  MEMORY[0x21CEA25D0](v12);
  OUTLINED_FUNCTION_860();
  if (v14)
  {
    v19 = OUTLINED_FUNCTION_57(v13);
    OUTLINED_FUNCTION_1268(v19);
  }

  OUTLINED_FUNCTION_25_0();
  sub_217752378();

  OUTLINED_FUNCTION_1238(&v1[34]);
  OUTLINED_FUNCTION_9_14(&unk_21776AE70);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v1[94].n128_u64[1] = v15;
  *v15 = v16;
  OUTLINED_FUNCTION_689(v15);
  OUTLINED_FUNCTION_1410();

  __asm { BR              X1 }
}

uint64_t sub_21746FADC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 1520) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21746FBD4()
{
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1518();
  v1 = v0[186];
  if (v0[134])
  {
    v2 = v0[176];
    sub_2171F0790((v0 + 55), &qword_27CB275D0, &unk_21776AE88);

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_1238(v0 + 108);
    sub_2171F0790((v0 + 108), &unk_27CB275C0, &unk_21776AE78);
    v3 = OUTLINED_FUNCTION_1110();
    *(v2 + 48) = v4;
    *(v2 + 16) = v5;
    *(v2 + 32) = v3;
    *v2 = v6;
    OUTLINED_FUNCTION_0_2();
  }

  else
  {
    v7 = sub_2171F0790((v0 + 133), &unk_27CB28A90, &qword_217758F90);
    sub_21728FC9C(v7, v8, v9);
    OUTLINED_FUNCTION_955();
    swift_allocError();
    OUTLINED_FUNCTION_1239(v10, 7);

    swift_unknownObjectRelease();
    sub_2171F0790((v0 + 55), &qword_27CB275D0, &unk_21776AE88);
    OUTLINED_FUNCTION_1238(v0 + 98);
    sub_2171F0790((v0 + 98), &unk_27CB275C0, &unk_21776AE78);
    OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_1385();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_21746FD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10();
  *(v13 + 1336) = v12;
  *(v13 + 1328) = a12;
  *(v13 + 1312) = a11;
  *(v13 + 1304) = a10;
  *(v13 + 1296) = a9;
  *(v13 + 1288) = v14;
  *(v13 + 1280) = v15;
  *(v13 + 1272) = v16;
  *(v13 + 1264) = v17;
  *(v13 + 1256) = v18;
  *(v13 + 1248) = v19;
  *(v13 + 1240) = v20;
  *(v13 + 1232) = v21;
  v22 = sub_2177528F8();
  *(v13 + 1344) = v22;
  OUTLINED_FUNCTION_15_3(v22);
  *(v13 + 1352) = v23;
  *(v13 + 1360) = OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_35_1();
  return OUTLINED_FUNCTION_1501(v24, v25, v26);
}

uint64_t sub_21746FE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_184_0();
  if (*(*(v18 + 1336) + 16))
  {
    v22 = *(v18 + 1360);
    v23 = *(v18 + 1304);
    (*(*(v18 + 1352) + 16))(v22, *(v18 + 1296), *(v18 + 1344));
    if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
    {
      (*(*(v18 + 1352) + 8))(*(v18 + 1360), *(v18 + 1344));
    }

    else
    {
      v35 = swift_task_alloc();
      v36 = *(v18 + 1320);
      *(v35 + 16) = *(v18 + 1304);
      *(v35 + 32) = v36;
      sub_217215924(0, &qword_280BE22D8, off_278228D58);
      OUTLINED_FUNCTION_801();
      sub_217752148();

      OUTLINED_FUNCTION_41_0();
      v37 = OUTLINED_FUNCTION_123_2();
      v38(v37);
    }

    v39 = *(v18 + 1288);
    v40 = *(v18 + 1280);
    v41 = *(v18 + 1272);
    v42 = *(v18 + 1264);
    sub_2172757C0(*(v18 + 1240), v18 + 1008);
    sub_2176FE470();
    v43 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeRequest);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    OUTLINED_FUNCTION_1289();
    sub_217491FA4(v44, v45, v46, v47, v42, v41, v40, v39, v48);
    OUTLINED_FUNCTION_1149();
    *(v18 + 1368) = v49;
    *(v18 + 16) = v50;
    OUTLINED_FUNCTION_1451(v18 + 1120);
    OUTLINED_FUNCTION_1027();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB275B0, &qword_21776AE38);
    OUTLINED_FUNCTION_1450(v51);
    OUTLINED_FUNCTION_366();
    OUTLINED_FUNCTION_329(COERCE_DOUBLE(1107296256));
    *(v18 + 968) = &block_descriptor_1227;
    [v43 sdk_performWithCompletionHandler_];
    OUTLINED_FUNCTION_172_1();

    return MEMORY[0x282200938](v52);
  }

  else
  {
    sub_21728FC9C(v19, v20, v21);
    OUTLINED_FUNCTION_955();
    v24 = swift_allocError();
    OUTLINED_FUNCTION_714(v24, v25);

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_172_1();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_2174700D4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1376) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_2174701D0()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_1264();
  v1[86].n128_u64[1] = v0;
  __swift_destroy_boxed_opaque_existential_1(v2);
  v3 = qword_280BE6220;
  swift_unknownObjectRetain();
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_473(&qword_280BE6220);
  }

  v1[75] = OUTLINED_FUNCTION_1449(&xmmword_280BE6228);
  v1[76].n128_u64[0] = v4;
  v1[76].n128_u64[1] = v5;
  OUTLINED_FUNCTION_1298();
  OUTLINED_FUNCTION_1448();
  sub_2172B6904(v0, v6, v7, v8, v9);
  sub_2173E7DEC(&v1[39]);
  swift_getKeyPath(" t=e");
  OUTLINED_FUNCTION_1473();
  sub_217751DE8();
  sub_217269F50(&v1[5]);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB275B8, &qword_21776AE68);
  v11 = OUTLINED_FUNCTION_1515(v10);
  OUTLINED_FUNCTION_968(v11);

  MEMORY[0x21CEA25D0](v12);
  OUTLINED_FUNCTION_860();
  if (v14)
  {
    v19 = OUTLINED_FUNCTION_57(v13);
    OUTLINED_FUNCTION_1268(v19);
  }

  OUTLINED_FUNCTION_25_0();
  sub_217752378();

  OUTLINED_FUNCTION_1238(&v1[34]);
  OUTLINED_FUNCTION_9_14(&unk_21776AE70);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v1[87].n128_u64[0] = v15;
  *v15 = v16;
  OUTLINED_FUNCTION_689(v15);
  OUTLINED_FUNCTION_1410();

  __asm { BR              X1 }
}

uint64_t sub_217470374()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 1400) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747046C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1518();
  v1 = v0[171];
  if (v0[134])
  {
    v2 = v0[154];

    swift_unknownObjectRelease();
    sub_2171F0790((v0 + 55), &qword_27CB275D0, &unk_21776AE88);
    OUTLINED_FUNCTION_1238(v0 + 108);
    sub_2171F0790((v0 + 108), &unk_27CB275C0, &unk_21776AE78);
    v3 = OUTLINED_FUNCTION_1110();
    *(v2 + 48) = v4;
    *(v2 + 16) = v5;
    *(v2 + 32) = v3;
    *v2 = v6;

    OUTLINED_FUNCTION_0_2();
  }

  else
  {
    v7 = sub_2171F0790((v0 + 133), &unk_27CB28A90, &qword_217758F90);
    sub_21728FC9C(v7, v8, v9);
    OUTLINED_FUNCTION_955();
    swift_allocError();
    OUTLINED_FUNCTION_1239(v10, 7);

    swift_unknownObjectRelease();
    sub_2171F0790((v0 + 55), &qword_27CB275D0, &unk_21776AE88);
    OUTLINED_FUNCTION_1238(v0 + 98);
    sub_2171F0790((v0 + 98), &unk_27CB275C0, &unk_21776AE78);

    OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_1322();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_2174705D4()
{
  OUTLINED_FUNCTION_30_0();
  v1 = *(v0 + 1368);
  swift_willThrow();

  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_217470648()
{
  OUTLINED_FUNCTION_10();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1238((v0 + 704));
  sub_2171F0790(v0 + 704, &unk_27CB275C0, &unk_21776AE78);

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2174706D8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  (*(a2 + 16))(&v11, a1, a2);
  if (v12)
  {
    sub_2171F3F0C(&v11, v14);
    sub_21749A32C(v14, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
    if (swift_dynamicCast())
    {
      sub_2171F3F0C(v8, &v11);
      v4 = v12;
      v5 = v13;
      __swift_project_boxed_opaque_existential_1(&v11, v12);
      v10[0] = 11;
      v6 = sub_2173AAEE8(v10, v4, v5);
      __swift_destroy_boxed_opaque_existential_1(v14);
      *a3 = v6;
      return __swift_destroy_boxed_opaque_existential_1(&v11);
    }

    else
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      sub_2171F0790(v8, &qword_27CB281E0, &qword_2177871A0);
      *&v11 = 0;
      *(&v11 + 1) = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0x206D657449, 0xE500000000000000);
      sub_217752C78();
      MEMORY[0x21CEA23B0](0xD00000000000003DLL, 0x80000002177AE9D0);
      result = sub_217752D08();
      __break(1u);
    }
  }

  else
  {
    result = sub_2171F0790(&v11, &qword_27CB27590, &qword_21776ADF0);
    *a3 = 0;
  }

  return result;
}

uint64_t static MusicLibrary._sharedLibraries.getter()
{
  v0 = [objc_opt_self() sharedLibraries];
  sub_217215924(0, &qword_280BE22D0, off_278228D10);
  OUTLINED_FUNCTION_1302();
  v1 = sub_217752298();

  v2 = sub_2171F63F0(v1);
  if (v2)
  {
    v3 = v2;
    v8 = MEMORY[0x277D84F90];
    result = sub_217752BF8();
    if (v3 < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CEA2E30](v5, v1);
        }

        else
        {
          v6 = *(v1 + 8 * v5 + 32);
        }

        ++v5;
        type metadata accessor for MusicLibrary();
        OUTLINED_FUNCTION_1212();
        swift_allocObject();
        v7 = OUTLINED_FUNCTION_1302();
        sub_2171F0048(v7);
        sub_217752BC8();
        sub_217752C08();
        OUTLINED_FUNCTION_25_0();
        sub_217752C18();
        sub_217752BD8();
      }

      while (v3 != v5);

      return v8;
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_217470A38(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3;
    switch([v4 status])
    {
      case 0uLL:

        v5 = 1;
        v6 = 0;
        break;
      case 1uLL:
        [v4 connectionProgress];
        v6 = v7;

        v5 = 0;
        break;
      case 2uLL:

        v5 = 1;
        v6 = 1;
        break;
      case 3uLL:

        v5 = 1;
        v6 = 2;
        break;
      default:
        sub_217752AA8();
        OUTLINED_FUNCTION_44_10();
        MEMORY[0x21CEA23B0](0xD000000000000046);
        [v4 &selRef_stationStringID];
        type metadata accessor for MusicKit_SoftLinking_MPMediaLibraryStatus(0);
        sub_217752C78();
        OUTLINED_FUNCTION_17_1();
        goto LABEL_10;
    }

    *a1 = v6;
    *(a1 + 4) = v5;
  }

  else
  {
LABEL_10:
    OUTLINED_FUNCTION_42_10();
    OUTLINED_FUNCTION_1375(v8);
    __break(1u);
  }
}

void sub_217470C04()
{
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_209();
  v1 = *(v0[18] + 16);
  v0[19] = v1;
  if (v1)
  {
    v0[2] = v0;
    v0[3] = sub_217470D44;
    v2 = swift_continuation_init();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27598, qword_21776ADF8);
    OUTLINED_FUNCTION_1047(v3);
    OUTLINED_FUNCTION_1300(COERCE_DOUBLE(1107296256));
    v0[12] = sub_21749A8F8;
    v0[13] = &block_descriptor_20;
    v0[14] = v2;
    [v1 connectWithCompletionHandler_];
    OUTLINED_FUNCTION_1385();

    MEMORY[0x282200938](v4);
  }

  else
  {
    OUTLINED_FUNCTION_893();
    OUTLINED_FUNCTION_422();
    OUTLINED_FUNCTION_1288(v6);
    OUTLINED_FUNCTION_1385();
  }
}

uint64_t sub_217470D44()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_217470E40()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217470E98()
{
  OUTLINED_FUNCTION_30_0();
  v1 = *(v0 + 152);
  swift_willThrow();

  OUTLINED_FUNCTION_20_0();

  return v2();
}

id sub_217470F00()
{
  v1 = *(v0 + 16);
  if (v1)
  {

    return [v1 disconnect];
  }

  else
  {
    OUTLINED_FUNCTION_893();
    OUTLINED_FUNCTION_422();
    result = OUTLINED_FUNCTION_1288(v3);
    __break(1u);
  }

  return result;
}

uint64_t MusicLibrary.UnderlyingConnectionStatus.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 4) == 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = 2;
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x21CEA3550](v2);
  }

  else
  {
    MEMORY[0x21CEA3550](1);
    return sub_217753218();
  }
}

uint64_t MusicLibrary.UnderlyingConnectionStatus.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_2177531E8();
  if (v2 == 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v3 = 2;
      }

      else
      {
        v3 = 3;
      }
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x21CEA3550](v3);
  }

  else
  {
    MEMORY[0x21CEA3550](1);
    sub_217753218();
  }

  return sub_217753238();
}

uint64_t sub_217471094(uint64_t a1)
{
  sub_2177531E8();
  MusicLibrary.UnderlyingConnectionStatus.hash(into:)();
  return sub_217753238();
}

void sub_2174710E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = OUTLINED_FUNCTION_1228(a1, a2, a3, a4);
  v9 = *(*v6 + 80);

  v10 = v9(v8, v8);
  if (v10)
  {
    v23 = v10;
    v11 = OUTLINED_FUNCTION_25_0();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    sub_217751F08();
    OUTLINED_FUNCTION_965();

    if (v13)
    {
      v15 = v5[3];
      if (v15[2] || (v21 = v5[4]) == 0)
      {
        v16 = (*(*v6 + 88))(v14);
        v17 = sub_21747142C(v15, v16 & 1);
        if (v17)
        {
          v18 = v17;
          if ([v17 sortDescriptor])
          {
            MEMORY[0x21CEA25D0]();
            v19 = OUTLINED_FUNCTION_839(*v4 & 0xFFFFFFFFFFFFFF8);
            sub_217204C70(v19);
            OUTLINED_FUNCTION_13_2();
            sub_217752378();
            v20 = *v4;

            *v4 = v20;
          }

          else
          {
          }
        }
      }

      else
      {
        v22 = v5[5];

        v21(v4);
        sub_2172202A4(v21, v22);
      }
    }
  }

  else
  {
  }
}

void sub_217471288(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = OUTLINED_FUNCTION_1228(a1, a2, a3, a4);
  v9 = *(*v6 + 80);

  v10 = v9(v8, v8);
  if (v10)
  {
    v23 = v10;
    v11 = OUTLINED_FUNCTION_25_0();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    sub_217751F08();
    OUTLINED_FUNCTION_965();

    if (v13)
    {
      v15 = v5[3];
      if (*(v15 + 16) || (v21 = v5[4]) == 0)
      {
        v16 = (*(*v6 + 88))(v14);
        v17 = sub_2174714FC(v15, v16 & 1);
        if (v17)
        {
          v18 = v17;
          if ([v17 sortDescriptor])
          {
            MEMORY[0x21CEA25D0]();
            v19 = OUTLINED_FUNCTION_839(*v4 & 0xFFFFFFFFFFFFFF8);
            sub_217204C70(v19);
            OUTLINED_FUNCTION_13_2();
            sub_217752378();
            v20 = *v4;

            *v4 = v20;
          }

          else
          {
          }
        }
      }

      else
      {
        v22 = v5[5];

        v21(v4);
        sub_2172202A4(v21, v22);
      }
    }
  }

  else
  {
  }
}

id sub_21747142C(void *a1, char a2)
{
  v2 = a1[2];
  if (v2)
  {
    v4 = a1;
    if (v2 == 1)
    {
      v5 = objc_allocWithZone(MusicKit_SoftLinking_MPModelSortDescriptor);
      sub_217751DE8();
      sub_217751F18();
      OUTLINED_FUNCTION_997();
      v6 = [v5 initWithKey:v4 isAscending:{a2 & 1, }];
    }

    else
    {
      v7 = objc_allocWithZone(MusicKit_SoftLinking_MPModelSortDescriptor);
      v4 = sub_217752288();
      v6 = [v7 initWithKeyPath:v4 isAscending:{a2 & 1, v8}];
    }

    v2 = v6;
  }

  return v2;
}

id sub_2174714FC(uint64_t a1, char a2)
{
  result = *(a1 + 16);
  if (result)
  {
    if (result == 1)
    {
      sub_217215924(0, &qword_280BE8400, off_278228D98);
      sub_217751DE8();
      v4 = OUTLINED_FUNCTION_727();
      return sub_2174715A0(v4, v5, v6);
    }

    else
    {
      sub_217215924(0, &qword_280BE8400, off_278228D98);
      OUTLINED_FUNCTION_87_6();
      v7 = sub_217751DE8();
      return sub_217471618(v7, a2 & 1);
    }
  }

  return result;
}

id sub_2174715A0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_997();
  v6 = sub_217751F18();
  v7 = [v3 initWithKey:v6 isAscending:{a3 & 1, }];

  return v7;
}

id sub_217471618(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_87_6();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_217752288();
  v5 = [v3 initWithKeyPath:v4 isAscending:{a2 & 1, }];

  return v5;
}

uint64_t sub_217471690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = sub_217204DD0(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27680, &qword_21776B0E0);
  swift_allocObject();
  v8 = sub_21748774C(a3 & 0x101010101010101, v4, sub_21749804C, 0);
  swift_beginAccess();
  v8[10] = 0;
  swift_beginAccess();
  v8[11] = 0;
  result = sub_217204DD0(a1);
  v20 = result;
  if (result)
  {
    if (result < 1)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v10 = 0;
    while (2)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x21CEA2E30](v10, a1);
      }

      else
      {
        v11 = *(a1 + 32 + 8 * v10);
      }

      if (qword_280BE2A70 != -1)
      {
        swift_once();
      }

      ++v10;
      v12 = qword_280C01FA0;
      result = sub_217204DD0(qword_280C01FA0);
      v13 = result;
      for (i = 0; v13 != i; ++i)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x21CEA2E30](i, v12);
          v15 = result;
        }

        else
        {
          if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v15 = *(v12 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        (*(*v15 + 88))(v11, v8);
      }

      if (v10 != v20)
      {
        continue;
      }

      break;
    }
  }

  v16 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  if (!v7)
  {
LABEL_28:
    swift_beginAccess();
    v8[5] = v16;

    return v8;
  }

  if (v7 >= 1)
  {
    v17 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x21CEA2E30](v17, a2);
      }

      else
      {
        v18 = *(a2 + 8 * v17 + 32);
      }

      if (qword_27CB23B58 != -1)
      {
        swift_once();
      }

      ++v17;
      v19 = qword_27CB8A288;

      sub_2173E9D20(v19, v18, &v22);
    }

    while (v7 != v17);
    v16 = v22;
    goto LABEL_28;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2174719C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = sub_217204DD0(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27F60, &qword_21776BE88);
  swift_allocObject();
  v8 = sub_21748774C(a3 & 0x101010101010101, v4, sub_217499970, 0);
  swift_beginAccess();
  v8[10] = 215;
  swift_beginAccess();
  v8[11] = 0;
  result = sub_217204DD0(a1);
  v20 = result;
  if (result)
  {
    if (result < 1)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v10 = 0;
    while (2)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x21CEA2E30](v10, a1);
      }

      else
      {
        v11 = *(a1 + 32 + 8 * v10);
      }

      if (qword_280BE26A8 != -1)
      {
        swift_once();
      }

      ++v10;
      v12 = qword_280C01F90;
      result = sub_217204DD0(qword_280C01F90);
      v13 = result;
      for (i = 0; v13 != i; ++i)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x21CEA2E30](i, v12);
          v15 = result;
        }

        else
        {
          if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v15 = *(v12 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        (*(*v15 + 88))(v11, v8);
      }

      if (v10 != v20)
      {
        continue;
      }

      break;
    }
  }

  v16 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  if (!v7)
  {
LABEL_28:
    swift_beginAccess();
    v8[5] = v16;

    return v8;
  }

  if (v7 >= 1)
  {
    v17 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x21CEA2E30](v17, a2);
      }

      else
      {
        v18 = *(a2 + 8 * v17 + 32);
      }

      if (qword_280BE8530 != -1)
      {
        swift_once();
      }

      ++v17;
      v19 = qword_280C02588;

      sub_2173EA010(v19, v18, &v22);
    }

    while (v7 != v17);
    v16 = v22;
    goto LABEL_28;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_217471CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = sub_217204DD0(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27F78, &qword_21776BEA0);
  swift_allocObject();
  v8 = sub_21748774C(a3 & 0x101010101010101, v4, sub_217499988, 0);
  swift_beginAccess();
  v8[10] = 0;
  swift_beginAccess();
  v8[11] = 0;
  result = sub_217204DD0(a1);
  v20 = result;
  if (result)
  {
    if (result < 1)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v10 = 0;
    while (2)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x21CEA2E30](v10, a1);
      }

      else
      {
        v11 = *(a1 + 32 + 8 * v10);
      }

      if (qword_27CB23D40 != -1)
      {
        swift_once();
      }

      ++v10;
      v12 = qword_27CB8A2E8;
      result = sub_217204DD0(qword_27CB8A2E8);
      v13 = result;
      for (i = 0; v13 != i; ++i)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x21CEA2E30](i, v12);
          v15 = result;
        }

        else
        {
          if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v15 = *(v12 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        (*(*v15 + 88))(v11, v8);
      }

      if (v10 != v20)
      {
        continue;
      }

      break;
    }
  }

  v16 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  if (!v7)
  {
LABEL_28:
    swift_beginAccess();
    v8[5] = v16;

    return v8;
  }

  if (v7 >= 1)
  {
    v17 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x21CEA2E30](v17, a2);
      }

      else
      {
        v18 = *(a2 + 8 * v17 + 32);
      }

      if (qword_27CB23D48 != -1)
      {
        swift_once();
      }

      ++v17;
      v19 = qword_280C01F88;

      sub_2173EA108(v19, v18, &v22);
    }

    while (v7 != v17);
    v16 = v22;
    goto LABEL_28;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_217472024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = sub_217204DD0(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27680, &qword_21776B0E0);
  swift_allocObject();
  v8 = sub_21748774C(a3 & 0x101010101010101, v4, sub_2174999A0, 0);
  swift_beginAccess();
  v8[10] = 0;
  swift_beginAccess();
  v8[11] = 0;
  result = sub_217204DD0(a1);
  v20 = result;
  if (result)
  {
    if (result < 1)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v10 = 0;
    while (2)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x21CEA2E30](v10, a1);
      }

      else
      {
        v11 = *(a1 + 32 + 8 * v10);
      }

      if (qword_27CB23ED0 != -1)
      {
        swift_once();
      }

      ++v10;
      v12 = qword_27CB8A310;
      result = sub_217204DD0(qword_27CB8A310);
      v13 = result;
      for (i = 0; v13 != i; ++i)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x21CEA2E30](i, v12);
          v15 = result;
        }

        else
        {
          if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v15 = *(v12 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        (*(*v15 + 88))(v11, v8);
      }

      if (v10 != v20)
      {
        continue;
      }

      break;
    }
  }

  v16 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  if (!v7)
  {
LABEL_28:
    swift_beginAccess();
    v8[5] = v16;

    return v8;
  }

  if (v7 >= 1)
  {
    v17 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x21CEA2E30](v17, a2);
      }

      else
      {
        v18 = *(a2 + 8 * v17 + 32);
      }

      if (qword_27CB23ED8 != -1)
      {
        swift_once();
      }

      ++v17;
      v19 = qword_27CB8A318;

      sub_2173EA200(v19, v18, &v22);
    }

    while (v7 != v17);
    v16 = v22;
    goto LABEL_28;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_217472354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = sub_217204DD0(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27B68, &qword_21776B838);
  swift_allocObject();
  v8 = sub_21748774C(a3 & 0x101010101010101, v4, sub_2174999B8, 0);
  swift_beginAccess();
  v8[10] = 3;
  swift_beginAccess();
  v8[11] = 0;
  result = sub_217204DD0(a1);
  v20 = result;
  if (result)
  {
    if (result < 1)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v10 = 0;
    while (2)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x21CEA2E30](v10, a1);
      }

      else
      {
        v11 = *(a1 + 32 + 8 * v10);
      }

      if (qword_27CB23AE0 != -1)
      {
        swift_once();
      }

      ++v10;
      v12 = qword_27CB8A220;
      result = sub_217204DD0(qword_27CB8A220);
      v13 = result;
      for (i = 0; v13 != i; ++i)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x21CEA2E30](i, v12);
          v15 = result;
        }

        else
        {
          if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v15 = *(v12 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        (*(*v15 + 88))(v11, v8);
      }

      if (v10 != v20)
      {
        continue;
      }

      break;
    }
  }

  v16 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  if (!v7)
  {
LABEL_28:
    swift_beginAccess();
    v8[5] = v16;

    return v8;
  }

  if (v7 >= 1)
  {
    v17 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x21CEA2E30](v17, a2);
      }

      else
      {
        v18 = *(a2 + 8 * v17 + 32);
      }

      if (qword_280BE85E8 != -1)
      {
        swift_once();
      }

      ++v17;
      v19 = qword_280C02590;

      sub_2173EA2F8(v19, v18, &v22);
    }

    while (v7 != v17);
    v16 = v22;
    goto LABEL_28;
  }

LABEL_32:
  __break(1u);
  return result;
}

id sub_217472688(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = a2 | 4;
  }

  else
  {
    v4 = a2;
  }

  v5 = objc_allocWithZone(MusicKit_SoftLinking_MPModelPlaylistKind);

  return [v5 initWithVariants:a1 options:v4];
}

id sub_2174726E0()
{
  v0 = objc_allocWithZone(MusicKit_SoftLinking_MPModelPlaylistEntryKind);

  return [v0 init];
}

id sub_217472718(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(MusicKit_SoftLinking_MPModelSongKind);

  return [v3 initWithVariants:2 options:a2];
}

uint64_t sub_217472764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[65] = v5;
  v6[63] = a4;
  v6[64] = a5;
  v6[61] = a2;
  v6[62] = a3;
  v6[60] = a1;
  return MEMORY[0x2822009F8](sub_217472790, 0, 0);
}

void sub_217472790()
{
  v147 = v2;
  v3 = v2[62];
  v4 = MEMORY[0x277D84F90];
  v2[56] = MEMORY[0x277D84F90];
  v5 = &unk_280BE6000;
  if (sub_217204DD0(v3))
  {
    OUTLINED_FUNCTION_995();
    if (v6 == v7)
    {
      v8 = 0;
      v134 = v4;
      v136 = (v2 + 35);
      v9 = v2[62];
      v138 = v1;
      v140 = v9 & 0xC000000000000001;
      v132 = v9 + 32;
      while (1)
      {
        if (v140)
        {
          v0 = MEMORY[0x21CEA2E30](v8, v2[62]);
        }

        else
        {
          v0 = *(v132 + 8 * v8);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A50, qword_217765A40);
        OUTLINED_FUNCTION_93();
        v10 = swift_dynamicCastClass();
        if (!v10)
        {
          OUTLINED_FUNCTION_1331();
          sub_217752AA8();
          v94 = OUTLINED_FUNCTION_1388(v143);
          MEMORY[0x21CEA23B0](v94, 0xE900000000000020);
          v2[57] = v0;
          type metadata accessor for AnyMusicProperty();
          sub_217752C78();
          MEMORY[0x21CEA23B0](0xD00000000000001FLL, 0x80000002177AE550);
          goto LABEL_111;
        }

        v11 = v10;
        v12 = v5[374];

        if (v12 != -1)
        {
          OUTLINED_FUNCTION_579();
          swift_once();
        }

        v13 = qword_280BE6BB8;
        if (static AnyMusicProperty.== infix(_:_:)(qword_280BE6BB8, v11))
        {
          break;
        }

        v16 = qword_280BE6B58;

        if (v16 != -1)
        {
          swift_once();
        }

        v17 = static AnyMusicProperty.== infix(_:_:)(qword_280BE6B60, v11);

        if ((v17 & 1) == 0)
        {
          if (qword_280BE6B98 != -1)
          {
            OUTLINED_FUNCTION_365();
            swift_once();
          }

          v18 = static AnyMusicProperty.== infix(_:_:)(qword_280BE6BA0, v11);

          if ((v18 & 1) == 0)
          {
            goto LABEL_31;
          }

          v14 = 8;
          goto LABEL_12;
        }

LABEL_30:

LABEL_31:
        sub_217283BAC(v2[65], (v2 + 2));
        __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27610 + 1, &qword_21776B070);
        OUTLINED_FUNCTION_747();
        if (!swift_dynamicCast())
        {
          OUTLINED_FUNCTION_92_2();
          sub_2171F0790(v136, &unk_27CB27620, &unk_217778B30);
LABEL_40:

          MEMORY[0x21CEA25D0](v35);
          OUTLINED_FUNCTION_1351();
          if (v37)
          {
            OUTLINED_FUNCTION_57(v36);
            sub_2177522F8();
          }

          sub_217752378();

          v134 = v2[56];
          goto LABEL_43;
        }

        sub_2171F3F0C(v136, (v2 + 30));
        OUTLINED_FUNCTION_160(v2 + 30, v2[33]);
        OUTLINED_FUNCTION_82_4();
        v25();
        v26 = v143;
        if (!v143)
        {
          __swift_destroy_boxed_opaque_existential_1(v2 + 30);
          goto LABEL_40;
        }

        v27 = v146;
        v28 = v4;
        v30 = v144;
        v29 = v145;
        v31 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = OUTLINED_FUNCTION_87_11();
          sub_2172B2674(v48, v49, v50, v51);
          v31 = v52;
        }

        v33 = *(v31 + 16);
        v32 = *(v31 + 24);
        if (v33 >= v32 >> 1)
        {
          v53 = OUTLINED_FUNCTION_11_1(v32);
          sub_2172B2674(v53, v54, v55, v31);
          v31 = v56;
        }

        *(v31 + 16) = v33 + 1;
        v34 = v31 + 32 * v33;
        *(v34 + 32) = v26;
        *(v34 + 40) = v30;
        *(v34 + 48) = v29;
        v4 = v31;
        *(v34 + 56) = v27;
        __swift_destroy_boxed_opaque_existential_1(v2 + 30);
        v5 = &unk_280BE6000;
LABEL_43:
        if (v138 == ++v8)
        {
          goto LABEL_46;
        }
      }

      v14 = 0;
LABEL_12:
      if (static AnyMusicProperty.== infix(_:_:)(v13, v11))
      {

        v15 = 33;
LABEL_25:
        LOBYTE(v143) = v15;
        Song.LegacyModelSongPropertyKey.rawValue.getter();
        OUTLINED_FUNCTION_1305();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = OUTLINED_FUNCTION_145_4();
          sub_2172B2674(v38, v39, v40, v41);
          v4 = v42;
        }

        v20 = v4;
        v21 = *(v4 + 16);
        v22 = v20;
        v23 = *(v20 + 24);
        if (v21 >= v23 >> 1)
        {
          v43 = OUTLINED_FUNCTION_446(v23);
          sub_2172B2674(v43, v44, v45, v46);
          v22 = v47;
        }

        *(v22 + 16) = v21 + 1;
        v24 = v22 + 32 * v21;
        v4 = v22;
        *(v24 + 32) = v0;
        *(v24 + 40) = &v143;
        *(v24 + 48) = v13;
        *(v24 + 56) = v14;
        goto LABEL_43;
      }

      v19 = qword_280BE6B98;

      if (v19 != -1)
      {
        OUTLINED_FUNCTION_365();
        swift_once();
      }

      if (static AnyMusicProperty.== infix(_:_:)(qword_280BE6BA0, v11))
      {
        v15 = 37;
        goto LABEL_25;
      }

      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_116;
  }

  v134 = v4;
LABEL_46:
  v2[67] = v134;
  v2[66] = v134;
  v137 = v4;
  if (sub_217204DD0(v2[61]))
  {
    OUTLINED_FUNCTION_1472();
    if (v6 != v7)
    {
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v57 = 0;
    v58 = (v2 + 45);
    v59 = v2[61];
    v141 = v59 & 0xC000000000000001;
    v60 = MEMORY[0x277D84F90];
    v135 = v59 + 32;
    while (1)
    {
      if (v141)
      {
        v61 = MEMORY[0x21CEA2E30](v57, v2[61]);
      }

      else
      {
        v61 = *(v135 + 8 * v57);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A50, qword_217765A40);
      v62 = swift_dynamicCastClass();
      if (!v62)
      {
        OUTLINED_FUNCTION_1331();
        sub_217752AA8();
        v121 = v144;
        v2[52] = v143;
        v2[53] = v121;
        OUTLINED_FUNCTION_44_10();
        MEMORY[0x21CEA23B0](0xD000000000000030);
        v2[58] = v61;
        type metadata accessor for AnyMusicProperty();
        goto LABEL_110;
      }

      v63 = v62;
      v64 = v5[374];

      if (v64 != -1)
      {
        OUTLINED_FUNCTION_579();
        swift_once();
      }

      if (static AnyMusicProperty.== infix(_:_:)(qword_280BE6BB8, v63))
      {
        break;
      }

      v66 = qword_280BE6B98;

      if (v66 != -1)
      {
        OUTLINED_FUNCTION_365();
        swift_once();
      }

      v67 = static AnyMusicProperty.== infix(_:_:)(qword_280BE6BA0, v63);

      if (v67)
      {
        v65 = 37;
        goto LABEL_61;
      }

      v71 = v2[65];

      sub_217283BAC(v71, (v2 + 9));
      __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27610 + 1, &qword_21776B070);
      if ((swift_dynamicCast() & 1) == 0)
      {

        *(v58 + 32) = 0;
        *v58 = 0u;
        *(v58 + 16) = 0u;
        sub_2171F0790(v58, &unk_27CB27620, &unk_217778B30);
        goto LABEL_67;
      }

      sub_2171F3F0C(v58, (v2 + 40));
      OUTLINED_FUNCTION_160(v2 + 40, v2[43]);
      OUTLINED_FUNCTION_82_4();
      v72();
      v73 = v143;
      if (v143)
      {
        v133 = v146;
        v74 = v144;
        v131 = v145;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = OUTLINED_FUNCTION_17();
          sub_2172B2674(v85, v86, v87, v88);
          v137 = v89;
        }

        v76 = *(v137 + 16);
        v75 = *(v137 + 24);
        if (v76 >= v75 >> 1)
        {
          v90 = OUTLINED_FUNCTION_11_1(v75);
          sub_2172B2674(v90, v91, v92, v137);
          v137 = v93;
        }

        *(v137 + 16) = v76 + 1;
        v77 = v137 + 32 * v76;
        *(v77 + 32) = v73;
        *(v77 + 40) = v74;
        *(v77 + 48) = v131;
        *(v77 + 56) = v133;
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(v2 + 40);
LABEL_66:
      v58 = (v2 + 45);
LABEL_67:
      if (v0 == ++v57)
      {
        goto LABEL_81;
      }
    }

    v65 = 33;
LABEL_61:
    LOBYTE(v143) = v65;
    Song.LegacyModelSongPropertyKey.rawValue.getter();
    OUTLINED_FUNCTION_1305();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = OUTLINED_FUNCTION_145_4();
      sub_2172AFF2C(v78, v79, v80, v81);
      v60 = v82;
    }

    v69 = *(v60 + 16);
    v68 = *(v60 + 24);
    if (v69 >= v68 >> 1)
    {
      v83 = OUTLINED_FUNCTION_57(v68);
      sub_2172AFF2C(v83, v69 + 1, 1, v60);
      v60 = v84;
    }

    *(v60 + 16) = v69 + 1;
    v70 = v60 + 16 * v69;
    *(v70 + 32) = &v143;
    *(v70 + 40) = v63;
    v5 = &unk_280BE6000;
    goto LABEL_66;
  }

  v60 = MEMORY[0x277D84F90];
LABEL_81:
  v2[68] = v137;
  if (!sub_217204DD0(v2[63]))
  {
LABEL_103:
    v2[69] = v60;
    sub_217283BAC(v2[65], (v2 + 16));
    if (*(v60 + 16) || *(v137 + 16))
    {
      OUTLINED_FUNCTION_9_14(&unk_21776B418);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_1();
      v2[70] = v117;
      *v117 = v118;
      v117[1] = sub_21747345C;
      OUTLINED_FUNCTION_846();
      OUTLINED_FUNCTION_1494();

      __asm { BR              X5 }
    }

    v123 = v2[67];
    v124 = v2[60];
    v125 = OUTLINED_FUNCTION_531();
    v124[6] = v126;
    OUTLINED_FUNCTION_1059(v125, v127, v128);

    v124[7] = MEMORY[0x277D84F90];
    v124[8] = v123;
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1494();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_1472();
  if (v6 != v7)
  {
LABEL_117:
    __break(1u);
    return;
  }

  v95 = 0;
  v96 = v2[63];
  v139 = v96 + 32;
  v142 = v96 & 0xC000000000000001;
  while (1)
  {
    if (v142)
    {
      v97 = MEMORY[0x21CEA2E30](v95, v2[63]);
    }

    else
    {
      v97 = *(v139 + 8 * v95);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A50, qword_217765A40);
    v98 = swift_dynamicCastClass();
    if (!v98)
    {
      break;
    }

    v99 = v98;
    v100 = v5[374];

    if (v100 != -1)
    {
      OUTLINED_FUNCTION_579();
      swift_once();
    }

    if (static AnyMusicProperty.== infix(_:_:)(qword_280BE6BB8, v99))
    {
      v101 = 33;
LABEL_96:
      LOBYTE(v143) = v101;
      v104 = Song.LegacyModelSongPropertyKey.rawValue.getter();
      v106 = v105;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = OUTLINED_FUNCTION_145_4();
        sub_2172AFF2C(v110, v111, v112, v113);
        v60 = v114;
      }

      v108 = *(v60 + 16);
      v107 = *(v60 + 24);
      if (v108 >= v107 >> 1)
      {
        v115 = OUTLINED_FUNCTION_57(v107);
        sub_2172AFF2C(v115, v108 + 1, 1, v60);
        v60 = v116;
      }

      *(v60 + 16) = v108 + 1;
      v109 = v60 + 16 * v108;
      *(v109 + 32) = v104;
      *(v109 + 40) = v106;
      v5 = &unk_280BE6000;
      goto LABEL_102;
    }

    v102 = qword_280BE6B98;

    if (v102 != -1)
    {
      OUTLINED_FUNCTION_365();
      swift_once();
    }

    v103 = static AnyMusicProperty.== infix(_:_:)(qword_280BE6BA0, v99);

    if (v103)
    {
      v101 = 37;
      goto LABEL_96;
    }

LABEL_102:
    if (v0 == ++v95)
    {
      goto LABEL_103;
    }
  }

  OUTLINED_FUNCTION_1331();
  sub_217752AA8();
  v122 = v144;
  v2[54] = v143;
  v2[55] = v122;
  OUTLINED_FUNCTION_44_10();
  MEMORY[0x21CEA23B0](0xD000000000000030);
  v2[59] = v97;
  type metadata accessor for AnyMusicProperty();
LABEL_110:
  sub_217752C78();
  OUTLINED_FUNCTION_217_0();
LABEL_111:
  OUTLINED_FUNCTION_42_10();
  sub_217752D08();
  OUTLINED_FUNCTION_1494();
}

uint64_t sub_21747345C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 568) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217473568()
{
  OUTLINED_FUNCTION_10();
  sub_217283C08(v0 + 128);

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2174735D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[58] = a5;
  v6[59] = v5;
  v6[56] = a3;
  v6[57] = a4;
  v6[54] = a1;
  v6[55] = a2;
  return MEMORY[0x2822009F8](sub_2174735F8, 0, 0);
}

uint64_t sub_217473F24()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 520) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217474030()
{
  OUTLINED_FUNCTION_10();
  sub_217283B58(v0 + 128);

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_217474098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[55] = a5;
  v6[56] = v5;
  v6[53] = a3;
  v6[54] = a4;
  v6[51] = a1;
  v6[52] = a2;
  return MEMORY[0x2822009F8](sub_2174740C0, 0, 0);
}

uint64_t sub_217474704()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 496) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217474810()
{
  OUTLINED_FUNCTION_10();
  v0 = OUTLINED_FUNCTION_958();
  sub_21725CE44(v0);

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_217474874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[55] = a5;
  v6[56] = v5;
  v6[53] = a3;
  v6[54] = a4;
  v6[51] = a1;
  v6[52] = a2;
  return MEMORY[0x2822009F8](sub_21747489C, 0, 0);
}

uint64_t sub_217474DA0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217474EA0()
{
  OUTLINED_FUNCTION_10();
  v0 = OUTLINED_FUNCTION_958();
  sub_21728418C(v0);

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_217474F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[59] = a5;
  v6[60] = v5;
  v6[57] = a3;
  v6[58] = a4;
  v6[55] = a1;
  v6[56] = a2;
  return MEMORY[0x2822009F8](sub_217474F2C, 0, 0);
}

uint64_t sub_2174754CC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 520) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174755CC()
{
  OUTLINED_FUNCTION_10();
  sub_21727576C(v0 + 144);

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_217475634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[55] = a5;
  v6[56] = v5;
  v6[53] = a3;
  v6[54] = a4;
  v6[51] = a1;
  v6[52] = a2;
  return MEMORY[0x2822009F8](sub_21747565C, 0, 0);
}

uint64_t sub_217475CA0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 496) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217475DAC()
{
  OUTLINED_FUNCTION_10();
  v0 = OUTLINED_FUNCTION_958();
  sub_217284498(v0);

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_217475E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[55] = a5;
  v6[56] = v5;
  v6[53] = a3;
  v6[54] = a4;
  v6[51] = a1;
  v6[52] = a2;
  return MEMORY[0x2822009F8](sub_217475E38, 0, 0);
}

uint64_t sub_21747633C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747643C()
{
  OUTLINED_FUNCTION_10();
  v0 = OUTLINED_FUNCTION_958();
  sub_2172758B4(v0);

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2174764A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[61] = a5;
  v6[62] = v5;
  v6[59] = a3;
  v6[60] = a4;
  v6[57] = a1;
  v6[58] = a2;
  return MEMORY[0x2822009F8](sub_2174764C8, 0, 0);
}

void sub_2174764C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, char *a16, void *a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_1250();
  OUTLINED_FUNCTION_1389();
  v26 = v23[59];
  v27 = MEMORY[0x277D84F90];
  v23[54] = MEMORY[0x277D84F90];
  if (sub_217204DD0(v26))
  {
    OUTLINED_FUNCTION_1472();
    if (v28 == v29)
    {
      v30 = 0;
      v31 = v23[59];
      v32 = v31 & 0xC000000000000001;
      a13 = (v31 + 32);
      v25 = &xmmword_27CB27610 + 8;
      v24 = &qword_21776B070;
      v148 = MEMORY[0x277D84F90];
      v150 = MEMORY[0x277D84F90];
      a11 = v31 & 0xC000000000000001;
      a12 = v22;
      while (1)
      {
        if (v32)
        {
          MEMORY[0x21CEA2E30](v30, v23[59]);
        }

        else
        {
          OUTLINED_FUNCTION_1323();
        }

        sub_2172757C0(v23[62], (v23 + 2));
        v33 = OUTLINED_FUNCTION_178_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
        OUTLINED_FUNCTION_747();
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_1428();
        OUTLINED_FUNCTION_160(v23 + 30, v23[33]);
        v35 = OUTLINED_FUNCTION_1447();
        v36(v35);
        if (!a16)
        {
          __swift_destroy_boxed_opaque_existential_1(v23 + 30);
          v24 = &qword_21776B070;
          goto LABEL_16;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v37 = v150;
        }

        else
        {
          v45 = OUTLINED_FUNCTION_17();
          sub_2172B2674(v45, v46, v47, v48);
          v37 = v49;
        }

        v39 = v37[2];
        v38 = v37[3];
        v27 = (v39 + 1);
        if (v39 >= v38 >> 1)
        {
          v50 = OUTLINED_FUNCTION_11_1(v38);
          sub_2172B2674(v50, v51, v52, v53);
          v150 = v54;
        }

        else
        {
          v150 = v37;
        }

        v150[2] = v27;
        v40 = &v150[4 * v39];
        v40[4] = a16;
        v40[5] = a17;
        v40[6] = a18;
        *(v40 + 56) = a19;
        __swift_destroy_boxed_opaque_existential_1(v23 + 30);
        v32 = a11;
        v22 = a12;
        v25 = &xmmword_27CB27610 + 8;
        v24 = &qword_21776B070;
LABEL_19:
        if (v22 == ++v30)
        {
          goto LABEL_24;
        }
      }

      v41 = OUTLINED_FUNCTION_402();
      sub_2171F0790(v41, &unk_27CB27620, &unk_217778B30);
LABEL_16:

      MEMORY[0x21CEA25D0](v42);
      OUTLINED_FUNCTION_759();
      if (v44)
      {
        OUTLINED_FUNCTION_57(v43);
        sub_2177522F8();
      }

      v27 = v23 + 54;
      OUTLINED_FUNCTION_19_1();
      sub_217752378();

      v148 = v23[54];
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_86;
  }

  v148 = v27;
  v150 = v27;
LABEL_24:
  v23[63] = v148;
  v23[64] = v148;
  v55 = sub_217204DD0(v23[58]);
  v56 = MEMORY[0x277D84F90];
  if (v55)
  {
    OUTLINED_FUNCTION_1486();
    if (v28 != v29)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v57 = v23[58];
    a13 = (v57 + 32);
    v148 = v57 & 0xC000000000000001;
    do
    {
      if (v148)
      {
        v24 = MEMORY[0x21CEA2E30](0, v23[58]);
      }

      else
      {
        OUTLINED_FUNCTION_1511();
      }

      sub_2174EF8BC(v24);
      if (v58)
      {
        if ((OUTLINED_FUNCTION_1306() & 1) == 0)
        {
          v71 = OUTLINED_FUNCTION_269();
          sub_2172AFF2C(v71, v72, v73, v74);
          v56 = v75;
        }

        v60 = *(v56 + 16);
        v59 = *(v56 + 24);
        if (v60 >= v59 >> 1)
        {
          v76 = OUTLINED_FUNCTION_446(v59);
          sub_2172AFF2C(v76, v77, v78, v79);
          v56 = v80;
        }

        *(v56 + 16) = v60 + 1;
        v61 = v56 + 16 * v60;
        *(v61 + 32) = v27;
        *(v61 + 40) = v25;
      }

      else
      {
        sub_2172757C0(v23[62], (v23 + 9));
        __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27610 + 1, &qword_21776B070);
        OUTLINED_FUNCTION_1124();
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_569();
          v62 = OUTLINED_FUNCTION_596();
          v63(v62);
          v25 = a16;
          if (a16)
          {
            v27 = a17;
            a11 = a18;
            a12 = a17;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v64 = v150;
            }

            else
            {
              v81 = OUTLINED_FUNCTION_17();
              sub_2172B2674(v81, v82, v83, v84);
              v64 = v85;
            }

            v65 = v64[2];
            OUTLINED_FUNCTION_1031();
            if (v44)
            {
              v86 = OUTLINED_FUNCTION_11_1(v67);
              sub_2172B2674(v86, v87, v88, v89);
              v150 = v90;
            }

            else
            {
              v150 = v66;
            }

            v150[2] = a17;
            v68 = &v150[4 * v65];
            v68[4] = a16;
            v68[5] = a17;
            v68[6] = a18;
            *(v68 + 56) = a19;
          }

          else
          {
          }

          __swift_destroy_boxed_opaque_existential_1(v23 + 40);
        }

        else
        {

          v69 = OUTLINED_FUNCTION_879();
          sub_2171F0790(v69, &unk_27CB27620, &unk_217778B30);
        }
      }

      OUTLINED_FUNCTION_1446();
    }

    while (!v70);
  }

  v23[65] = v150;
  if (!sub_217204DD0(v23[60]))
  {
LABEL_74:
    v23[66] = v56;
    sub_2172757C0(v23[62], (v23 + 16));
    if (*(v56 + 16) || v150[2])
    {
      OUTLINED_FUNCTION_9_14(&unk_21776C2D8);
      v149 = v122;
      v123 = swift_task_alloc();
      v124 = OUTLINED_FUNCTION_561(v123);
      *v124 = v125;
      v124[1] = sub_217476E00;
      OUTLINED_FUNCTION_846();
      OUTLINED_FUNCTION_998();

      v131(v126, v127, v128, v129, v130, v131, v132, v133, a9, a10, a11, a12, a13, v149, v150, a16, a17, a18, a19, a20, a21, a22);
    }

    else
    {

      v134 = v23[64];
      v135 = v23[57];
      v136 = OUTLINED_FUNCTION_531();
      v135[6] = v137;
      OUTLINED_FUNCTION_1059(v136, v138, v139);

      v135[7] = MEMORY[0x277D84F90];
      v135[8] = v134;
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_998();

      v141(v140, v141, v142, v143, v144, v145, v146, v147, a9, a10, a11, a12, a13, v148, v150, a16, a17, a18, a19, a20, a21, a22);
    }

    return;
  }

  OUTLINED_FUNCTION_1141();
  if (v28 != v29)
  {
LABEL_87:
    __break(1u);
    return;
  }

  v91 = 0;
  a12 = v23 + 52;
  a13 = v23 + 50;
  v92 = v23[60];
  v93 = v92 & 0xC000000000000001;
  v148 = v92 + 32;
  while (1)
  {
    if (v93)
    {
      v94 = MEMORY[0x21CEA2E30](v91, v23[60]);
    }

    else
    {
      v94 = *(v148 + 8 * v91);
    }

    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C00, qword_21775ECD0);
    v96 = swift_dynamicCastClass();
    if (!v96)
    {
      OUTLINED_FUNCTION_1332();
      sub_217752AA8();
      v23[50] = a16;
      v23[51] = a17;
      MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177ABDA0);
      v23[55] = v94;
      type metadata accessor for AnyMusicProperty();
      sub_217752C78();
      goto LABEL_80;
    }

    v97 = v96;
    v98 = qword_280BE93B8;

    if (v98 != -1)
    {
      swift_once();
    }

    if ((static AnyMusicProperty.== infix(_:_:)(qword_280C026D0, v97) & 1) == 0)
    {
      v99 = qword_280BE9390;

      if (v99 != -1)
      {
        swift_once();
      }

      static AnyMusicProperty.== infix(_:_:)(qword_280C026B0, v97);
      OUTLINED_FUNCTION_1024();

      if ((v95 & 1) == 0)
      {
        break;
      }
    }

    v100 = 31;
LABEL_69:
    LOBYTE(a16) = v100;
    v106 = Playlist.LegacyModelPlaylistPropertyKey.rawValue.getter();
    v108 = v107;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v112 = OUTLINED_FUNCTION_269();
      sub_2172AFF2C(v112, v113, v114, v115);
      v56 = v116;
    }

    v110 = *(v56 + 16);
    v109 = *(v56 + 24);
    if (v110 >= v109 >> 1)
    {
      v117 = OUTLINED_FUNCTION_446(v109);
      sub_2172AFF2C(v117, v118, v119, v120);
      v56 = v121;
    }

    v91 = (v91 + 1);

    *(v56 + 16) = v110 + 1;
    v111 = v56 + 16 * v110;
    *(v111 + 32) = v106;
    *(v111 + 40) = v108;
    if (v24 == v91)
    {
      goto LABEL_74;
    }
  }

  v101 = qword_280BE9330;

  if (v101 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28220, &unk_21775E9E0);
  v102 = OUTLINED_FUNCTION_1_5();
  v104 = v103;
  static AnyMusicProperty.== infix(_:_:)(v102, v105);
  OUTLINED_FUNCTION_1024();

  if (v104)
  {
    v100 = 2;
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_1332();
  sub_217752AA8();
  v23[52] = a16;
  v23[53] = a17;
  OUTLINED_FUNCTION_44_10();
  MEMORY[0x21CEA23B0](0xD000000000000024);
  v23[56] = v94;
  type metadata accessor for AnyMusicProperty();
  sub_217752C78();
LABEL_80:
  OUTLINED_FUNCTION_217_0();
  OUTLINED_FUNCTION_42_10();
  sub_217752D08();
  OUTLINED_FUNCTION_998();
}

uint64_t sub_217476E00()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 544) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217476F0C()
{
  OUTLINED_FUNCTION_10();
  sub_21726B8C4(v0 + 128);

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_217476F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[39] = a4;
  v5[40] = a5;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  return MEMORY[0x2822009F8](sub_217476F9C, 0, 0);
}

uint64_t sub_217476F9C()
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_363();
  v1[27] = &type metadata for MusicVideo;
  v1[28] = &protocol witness table for MusicVideo;
  OUTLINED_FUNCTION_197();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_605(v2);
  sub_217283BAC(v3, v4);
  sub_217215924(0, &qword_27CB2D740, 0x277CCABB0);
  v5 = sub_217751DC8();
  OUTLINED_FUNCTION_906(v5);
  v6 = OUTLINED_FUNCTION_812();
  sub_217283BAC(v6, v7);
  OUTLINED_FUNCTION_1175();
  sub_2176FDC3C();
  OUTLINED_FUNCTION_610();
  objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryRequest);
  v8 = &type metadata for MusicVideo;
  sub_217751DE8();
  sub_217751DE8();
  v9 = OUTLINED_FUNCTION_908(v0, 14);
  OUTLINED_FUNCTION_766(v9);
  v1[2] = v10;
  OUTLINED_FUNCTION_1263();
  OUTLINED_FUNCTION_1084();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27650, &unk_217759360);
  OUTLINED_FUNCTION_105_9(v11);
  OUTLINED_FUNCTION_1206(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_107_7();
  v12 = OUTLINED_FUNCTION_718();
  [v12 v13];
  OUTLINED_FUNCTION_46_2();

  return MEMORY[0x282200938](v14);
}

uint64_t sub_217477110()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2174774F4()
{
  OUTLINED_FUNCTION_30_0();
  v1 = *(v0 + 336);
  swift_willThrow();

  OUTLINED_FUNCTION_398((v0 + 192));

  return v2();
}

uint64_t sub_21747756C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[39] = a4;
  v5[40] = a5;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  return MEMORY[0x2822009F8](sub_217477594, 0, 0);
}

uint64_t sub_217477594()
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_363();
  v1[27] = &type metadata for Song;
  v1[28] = &protocol witness table for Song;
  OUTLINED_FUNCTION_197();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_605(v2);
  sub_217283AFC(v3, v4);
  sub_217215924(0, &qword_27CB2D740, 0x277CCABB0);
  v5 = sub_217751DC8();
  OUTLINED_FUNCTION_906(v5);
  v6 = OUTLINED_FUNCTION_812();
  sub_217283AFC(v6, v7);
  OUTLINED_FUNCTION_1175();
  sub_2176FDB20();
  OUTLINED_FUNCTION_610();
  objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryRequest);
  v8 = &type metadata for Song;
  sub_217751DE8();
  sub_217751DE8();
  v9 = OUTLINED_FUNCTION_908(v0, 28);
  OUTLINED_FUNCTION_766(v9);
  v1[2] = v10;
  OUTLINED_FUNCTION_1263();
  OUTLINED_FUNCTION_1084();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27650, &unk_217759360);
  OUTLINED_FUNCTION_105_9(v11);
  OUTLINED_FUNCTION_1206(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_107_7();
  v12 = OUTLINED_FUNCTION_718();
  [v12 v13];
  OUTLINED_FUNCTION_46_2();

  return MEMORY[0x282200938](v14);
}

uint64_t sub_217477708()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_217477AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[39] = a4;
  v5[40] = a5;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  return MEMORY[0x2822009F8](sub_217477B14, 0, 0);
}

uint64_t sub_217477B14()
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_363();
  v1[27] = &type metadata for Album;
  v1[28] = &protocol witness table for Album;
  OUTLINED_FUNCTION_197();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_605(v2);
  sub_21725CF0C(v3, v4);
  sub_217215924(0, &qword_27CB2D740, 0x277CCABB0);
  v5 = sub_217751DC8();
  OUTLINED_FUNCTION_906(v5);
  v6 = OUTLINED_FUNCTION_812();
  sub_21725CF0C(v6, v7);
  OUTLINED_FUNCTION_1175();
  sub_2176FDE74();
  OUTLINED_FUNCTION_610();
  objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryRequest);
  v8 = &type metadata for Album;
  sub_217751DE8();
  sub_217751DE8();
  v9 = OUTLINED_FUNCTION_908(v0, 0);
  OUTLINED_FUNCTION_766(v9);
  v1[2] = v10;
  OUTLINED_FUNCTION_1263();
  OUTLINED_FUNCTION_1084();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27650, &unk_217759360);
  OUTLINED_FUNCTION_105_9(v11);
  OUTLINED_FUNCTION_1206(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_107_7();
  v12 = OUTLINED_FUNCTION_718();
  [v12 v13];
  OUTLINED_FUNCTION_46_2();

  return MEMORY[0x282200938](v14);
}

uint64_t sub_217477C88()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_21747806C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[39] = a4;
  v5[40] = a5;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  return MEMORY[0x2822009F8](sub_217478094, 0, 0);
}

uint64_t sub_217478094()
{
  OUTLINED_FUNCTION_904();
  v37 = v0;
  v1 = v0[39];
  v0[27] = &type metadata for Genre;
  v0[28] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v0[24] = swift_allocObject();
  v2 = OUTLINED_FUNCTION_1162();
  sub_217284130(v2, v3);
  sub_217215924(0, &qword_27CB2D740, 0x277CCABB0);
  v0[34] = sub_217751DC8();
  sub_2177091D0(v1, v0 + 34);
  v4 = OUTLINED_FUNCTION_47_2();
  v6 = __swift_project_boxed_opaque_existential_1(v4, v5);
  sub_217284130(v6, (v0 + 10));
  v7 = OUTLINED_FUNCTION_1175();
  sub_2176FDF90(v7, v8);
  v9 = __swift_project_boxed_opaque_existential_1(v0 + 24, v0[27]);
  __swift_project_boxed_opaque_existential_1(v9 + 2, v9[5]);
  v10 = OUTLINED_FUNCTION_15();
  v11(v10);
  v13 = v0[13];
  v12 = v0[14];
  v14 = OUTLINED_FUNCTION_123_2();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (*(*(v12 + 8) + 48))(v36, v13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  v17 = v36[0];
  v16 = v36[1];
  if (qword_280BE4A88 != -1)
  {
    OUTLINED_FUNCTION_11();
    swift_once();
  }

  if (v17 == qword_280BE4A90 && v16 == *algn_280BE4A98)
  {

    v20 = 8;
  }

  else
  {
    v19 = sub_217753058();

    if (v19)
    {
      v20 = 8;
    }

    else
    {
      v20 = 1;
    }
  }

  v21 = v0[40];
  LOBYTE(v36[0]) = v20;
  sub_21721478C();
  v22 = v0[34];
  v0[41] = v22;
  v23 = *(v21 + 16);
  objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryRequest);
  v24 = v23;
  sub_217751DE8();
  sub_217751DE8();
  v25 = OUTLINED_FUNCTION_345();
  sub_21770B480(v25, v26, v27, v22, v23);
  OUTLINED_FUNCTION_1149();
  v0[42] = v28;
  v0[2] = v29;
  v0[7] = v0 + 18;
  v0[3] = sub_217478380;
  v30 = swift_continuation_init();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27650, &unk_217759360);
  OUTLINED_FUNCTION_1047(v31);
  OUTLINED_FUNCTION_1300(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_246();
  v0[13] = v32;
  v0[14] = v30;
  v33 = OUTLINED_FUNCTION_718();
  [v33 v34];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_217478380()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_217478764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[39] = a4;
  v5[40] = a5;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  return MEMORY[0x2822009F8](sub_21747878C, 0, 0);
}

uint64_t sub_21747878C()
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  v1 = v0[39];
  v2 = v0[40];
  v0[27] = &type metadata for Track;
  v0[28] = &protocol witness table for Track;
  OUTLINED_FUNCTION_203_0();
  v0[24] = swift_allocObject();
  v3 = OUTLINED_FUNCTION_1162();
  sub_217275710(v3, v4);
  sub_217215924(0, &qword_27CB2D740, 0x277CCABB0);
  v0[34] = sub_217751DC8();
  sub_2177091D0(v1, v0 + 34);
  v5 = OUTLINED_FUNCTION_812();
  sub_217275710(v5, v6);
  v7 = OUTLINED_FUNCTION_1175();
  sub_2176FE1C0(v7, v8);
  v9 = __swift_project_boxed_opaque_existential_1(v0 + 24, v0[27]);
  sub_217275710(v9, (v0 + 10));
  sub_21727576C((v0 + 10));
  sub_21721478C();
  v10 = v0[34];
  v0[41] = v10;
  v11 = *(v2 + 16);
  objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryRequest);
  v12 = v11;
  sub_217751DE8();
  sub_217751DE8();
  v13 = OUTLINED_FUNCTION_345();
  v16 = sub_21770B480(v13, v14, v15, v10, v11);
  OUTLINED_FUNCTION_766(v16);
  v0[2] = v17;
  v0[7] = v0 + 18;
  OUTLINED_FUNCTION_1084();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27650, &unk_217759360);
  OUTLINED_FUNCTION_105_9(v18);
  OUTLINED_FUNCTION_1206(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_107_7();
  v19 = OUTLINED_FUNCTION_718();
  [v19 v20];
  OUTLINED_FUNCTION_120_0();

  return MEMORY[0x282200938](v21);
}

uint64_t sub_217478984()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_217478DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[39] = a4;
  v5[40] = a5;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  return MEMORY[0x2822009F8](sub_217478DD4, 0, 0);
}

uint64_t sub_217478DD4()
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_363();
  v1[27] = &type metadata for Artist;
  v1[28] = &protocol witness table for Artist;
  OUTLINED_FUNCTION_197();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_605(v2);
  sub_21725CF68(v3, v4);
  sub_217215924(0, &qword_27CB2D740, 0x277CCABB0);
  v5 = sub_217751DC8();
  OUTLINED_FUNCTION_906(v5);
  v6 = OUTLINED_FUNCTION_812();
  sub_21725CF68(v6, v7);
  OUTLINED_FUNCTION_1175();
  sub_2176FDD58();
  OUTLINED_FUNCTION_610();
  objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryRequest);
  v8 = &type metadata for Artist;
  sub_217751DE8();
  sub_217751DE8();
  v9 = OUTLINED_FUNCTION_908(v0, 2);
  OUTLINED_FUNCTION_766(v9);
  v1[2] = v10;
  OUTLINED_FUNCTION_1263();
  OUTLINED_FUNCTION_1084();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27650, &unk_217759360);
  OUTLINED_FUNCTION_105_9(v11);
  OUTLINED_FUNCTION_1206(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_107_7();
  v12 = OUTLINED_FUNCTION_718();
  [v12 v13];
  OUTLINED_FUNCTION_46_2();

  return MEMORY[0x282200938](v14);
}

uint64_t sub_217478F48()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_21747932C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[39] = a4;
  v5[40] = a5;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  return MEMORY[0x2822009F8](sub_217479354, 0, 0);
}

uint64_t sub_217479354()
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_363();
  v1[27] = &type metadata for Playlist.Entry;
  v1[28] = &protocol witness table for Playlist.Entry;
  OUTLINED_FUNCTION_197();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_605(v2);
  sub_217275858(v3, v4);
  sub_217215924(0, &qword_27CB2D740, 0x277CCABB0);
  v5 = sub_217751DC8();
  OUTLINED_FUNCTION_906(v5);
  v6 = OUTLINED_FUNCTION_812();
  sub_217275858(v6, v7);
  OUTLINED_FUNCTION_1175();
  sub_2176FE354();
  OUTLINED_FUNCTION_610();
  objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryRequest);
  v8 = &type metadata for Playlist.Entry;
  sub_217751DE8();
  sub_217751DE8();
  v9 = OUTLINED_FUNCTION_908(v0, 19);
  OUTLINED_FUNCTION_766(v9);
  v1[2] = v10;
  OUTLINED_FUNCTION_1263();
  OUTLINED_FUNCTION_1084();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27650, &unk_217759360);
  OUTLINED_FUNCTION_105_9(v11);
  OUTLINED_FUNCTION_1206(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_107_7();
  v12 = OUTLINED_FUNCTION_718();
  [v12 v13];
  OUTLINED_FUNCTION_46_2();

  return MEMORY[0x282200938](v14);
}

uint64_t sub_2174794C8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2174798AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[39] = a4;
  v5[40] = a5;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  return MEMORY[0x2822009F8](sub_2174798D4, 0, 0);
}

uint64_t sub_2174798D4()
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_363();
  v1[27] = &type metadata for Playlist;
  v1[28] = &protocol witness table for Playlist;
  OUTLINED_FUNCTION_197();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_605(v2);
  sub_2172757C0(v3, v4);
  sub_217215924(0, &qword_27CB2D740, 0x277CCABB0);
  v5 = sub_217751DC8();
  OUTLINED_FUNCTION_906(v5);
  v6 = OUTLINED_FUNCTION_812();
  sub_2172757C0(v6, v7);
  OUTLINED_FUNCTION_1175();
  sub_2176FE470();
  OUTLINED_FUNCTION_610();
  objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryRequest);
  v8 = &type metadata for Playlist;
  sub_217751DE8();
  sub_217751DE8();
  v9 = OUTLINED_FUNCTION_908(v0, 17);
  OUTLINED_FUNCTION_766(v9);
  v1[2] = v10;
  OUTLINED_FUNCTION_1263();
  OUTLINED_FUNCTION_1084();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27650, &unk_217759360);
  OUTLINED_FUNCTION_105_9(v11);
  OUTLINED_FUNCTION_1206(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_107_7();
  v12 = OUTLINED_FUNCTION_718();
  [v12 v13];
  OUTLINED_FUNCTION_46_2();

  return MEMORY[0x282200938](v14);
}

uint64_t sub_217479A48()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_217479E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 576) = v8;
  *(v9 + 568) = v11;
  *(v9 + 672) = a8;
  *(v9 + 560) = a7;
  *(v9 + 552) = a6;
  *(v9 + 544) = a5;
  *(v9 + 536) = a4;
  *(v9 + 528) = a3;
  *(v9 + 520) = a2;
  *(v9 + 512) = a1;
  return MEMORY[0x2822009F8](sub_217479E78, 0, 0);
}

uint64_t sub_217479E78()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_1209();
  if (v2)
  {
    OUTLINED_FUNCTION_772();
    OUTLINED_FUNCTION_87_6();
    sub_217751DE8();
    OUTLINED_FUNCTION_20_6();
    sub_217752D28();
    OUTLINED_FUNCTION_1328();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  OUTLINED_FUNCTION_761();
  if (v3)
  {
    OUTLINED_FUNCTION_626();
    OUTLINED_FUNCTION_787();
    sub_217751DE8();
    OUTLINED_FUNCTION_85_3();
    sub_217752D28();
    OUTLINED_FUNCTION_87_6();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  OUTLINED_FUNCTION_751();
  if (v4)
  {
    OUTLINED_FUNCTION_770();
    OUTLINED_FUNCTION_967();
    sub_217751DE8();
    OUTLINED_FUNCTION_135();
    sub_217752D28();
    OUTLINED_FUNCTION_967();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v1 = v0[70];
  }

  v0[75] = v1;
  OUTLINED_FUNCTION_9_14(&unk_21776B3E0);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[76] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_158_5(v5);
  OUTLINED_FUNCTION_1322();

  return v12(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_217479FDC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 616) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_1083();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747A524()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_267();

  return v0();
}

uint64_t sub_21747A598()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 640) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747A698()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 664) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747A790()
{
  OUTLINED_FUNCTION_10();
  if (*(v0 + 488))
  {
    OUTLINED_FUNCTION_1404();
  }

  else
  {
    OUTLINED_FUNCTION_1402();
    if (*(v0 + 488))
    {
      sub_2171F0790(v0 + 464, &xmmword_27CB27600, &qword_21776B040);
    }
  }

  OUTLINED_FUNCTION_265();
  sub_2171F0790(v0 + 16, &unk_27CB278D0, &unk_21776B3F8);
  OUTLINED_FUNCTION_267();

  return v1();
}

uint64_t sub_21747A834()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_644();
  sub_2171F0790(v0 + 16, &unk_27CB278D0, &unk_21776B3F8);
  OUTLINED_FUNCTION_267();

  return v1();
}

void sub_21747A8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_1329();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_264();
  OUTLINED_FUNCTION_488();
  OUTLINED_FUNCTION_849();
  v16();
  OUTLINED_FUNCTION_823();
  v17 = OUTLINED_FUNCTION_523();
  v15(v17);
  v18 = OUTLINED_FUNCTION_1201();
  sub_217283BAC(v18, v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27610 + 1, &qword_21776B070);
  if (OUTLINED_FUNCTION_923(v20, v21, &type metadata for MusicVideo, v20))
  {
    OUTLINED_FUNCTION_38_12();
    OUTLINED_FUNCTION_540();
    v45 = v22 + *v22;
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_527(v23);
    *v24 = v25;
    OUTLINED_FUNCTION_197_4(v24);
    OUTLINED_FUNCTION_188_5();
    OUTLINED_FUNCTION_1138();

    v34(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, v45, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_498();
    sub_2171F0790(v14 + 384, &unk_27CB27620, &unk_217778B30);
    OUTLINED_FUNCTION_1199();
    if (sub_217659BB8())
    {
      OUTLINED_FUNCTION_999();
      sub_2171F0790(v14 + 16, &unk_27CB278D0, &unk_21776B3F8);
      OUTLINED_FUNCTION_267();
      OUTLINED_FUNCTION_1152();

      v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      OUTLINED_FUNCTION_1_1();
      sub_217752AA8();

      OUTLINED_FUNCTION_285();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A50, qword_217765A40);
      v44 = OUTLINED_FUNCTION_188_2();
      MEMORY[0x21CEA2610](v44);
      OUTLINED_FUNCTION_1408();

      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_483();
      OUTLINED_FUNCTION_570("Fatal error");
      OUTLINED_FUNCTION_1152();
    }
  }
}

uint64_t sub_21747AB10()
{
  OUTLINED_FUNCTION_10();

  sub_2171F0790(v0 + 16, &unk_27CB278D0, &unk_21776B3F8);
  OUTLINED_FUNCTION_267();

  return v1();
}

uint64_t sub_21747AB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 576) = v8;
  *(v9 + 568) = v11;
  *(v9 + 672) = a8;
  *(v9 + 560) = a7;
  *(v9 + 552) = a6;
  *(v9 + 544) = a5;
  *(v9 + 536) = a4;
  *(v9 + 528) = a3;
  *(v9 + 520) = a2;
  *(v9 + 512) = a1;
  return MEMORY[0x2822009F8](sub_21747ABD8, 0, 0);
}

uint64_t sub_21747ABD8()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_1209();
  if (v2)
  {
    OUTLINED_FUNCTION_772();
    OUTLINED_FUNCTION_87_6();
    sub_217751DE8();
    OUTLINED_FUNCTION_20_6();
    sub_217752D28();
    OUTLINED_FUNCTION_1328();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  OUTLINED_FUNCTION_761();
  if (v3)
  {
    OUTLINED_FUNCTION_626();
    OUTLINED_FUNCTION_787();
    sub_217751DE8();
    OUTLINED_FUNCTION_85_3();
    sub_217752D28();
    OUTLINED_FUNCTION_87_6();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  OUTLINED_FUNCTION_751();
  if (v4)
  {
    OUTLINED_FUNCTION_770();
    OUTLINED_FUNCTION_967();
    sub_217751DE8();
    OUTLINED_FUNCTION_135();
    sub_217752D28();
    OUTLINED_FUNCTION_967();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v1 = v0[70];
  }

  v0[75] = v1;
  OUTLINED_FUNCTION_9_14(&unk_21776B288);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[76] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_158_5(v5);
  OUTLINED_FUNCTION_1322();

  return v12(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_21747AD3C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 616) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_1083();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747B284()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 640) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747B384()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 664) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747B47C()
{
  OUTLINED_FUNCTION_10();
  if (*(v0 + 488))
  {
    OUTLINED_FUNCTION_1404();
  }

  else
  {
    OUTLINED_FUNCTION_1402();
    if (*(v0 + 488))
    {
      sub_2171F0790(v0 + 464, &xmmword_27CB27600, &qword_21776B040);
    }
  }

  OUTLINED_FUNCTION_265();
  sub_2171F0790(v0 + 16, &qword_27CB27808, &unk_21776B2A0);
  OUTLINED_FUNCTION_267();

  return v1();
}

uint64_t sub_21747B520()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_644();
  sub_2171F0790(v0 + 16, &qword_27CB27808, &unk_21776B2A0);
  OUTLINED_FUNCTION_267();

  return v1();
}

void sub_21747B590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_1329();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_264();
  OUTLINED_FUNCTION_488();
  OUTLINED_FUNCTION_849();
  v16();
  OUTLINED_FUNCTION_823();
  v17 = OUTLINED_FUNCTION_523();
  v15(v17);
  v18 = OUTLINED_FUNCTION_1201();
  sub_217283AFC(v18, v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27610 + 1, &qword_21776B070);
  if (OUTLINED_FUNCTION_923(v20, v21, &type metadata for Song, v20))
  {
    OUTLINED_FUNCTION_38_12();
    OUTLINED_FUNCTION_540();
    v45 = v22 + *v22;
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_527(v23);
    *v24 = v25;
    OUTLINED_FUNCTION_197_4(v24);
    OUTLINED_FUNCTION_188_5();
    OUTLINED_FUNCTION_1138();

    v34(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, v45, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_498();
    sub_2171F0790(v14 + 384, &unk_27CB27620, &unk_217778B30);
    OUTLINED_FUNCTION_1199();
    if (sub_217659BB8())
    {
      OUTLINED_FUNCTION_999();
      sub_2171F0790(v14 + 16, &qword_27CB27808, &unk_21776B2A0);
      OUTLINED_FUNCTION_267();
      OUTLINED_FUNCTION_1152();

      v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      OUTLINED_FUNCTION_1_1();
      sub_217752AA8();

      OUTLINED_FUNCTION_285();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27810, qword_217775A50);
      v44 = OUTLINED_FUNCTION_188_2();
      MEMORY[0x21CEA2610](v44);
      OUTLINED_FUNCTION_1408();

      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_483();
      OUTLINED_FUNCTION_570("Fatal error");
      OUTLINED_FUNCTION_1152();
    }
  }
}

uint64_t sub_21747B7FC()
{
  OUTLINED_FUNCTION_10();

  sub_2171F0790(v0 + 16, &qword_27CB27808, &unk_21776B2A0);
  OUTLINED_FUNCTION_267();

  return v1();
}

uint64_t sub_21747B878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 576) = v8;
  *(v9 + 568) = v11;
  *(v9 + 672) = a8;
  *(v9 + 560) = a7;
  *(v9 + 552) = a6;
  *(v9 + 544) = a5;
  *(v9 + 536) = a4;
  *(v9 + 528) = a3;
  *(v9 + 520) = a2;
  *(v9 + 512) = a1;
  return MEMORY[0x2822009F8](sub_21747B8C4, 0, 0);
}

uint64_t sub_21747B8C4()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_1209();
  if (v2)
  {
    OUTLINED_FUNCTION_772();
    OUTLINED_FUNCTION_87_6();
    sub_217751DE8();
    OUTLINED_FUNCTION_20_6();
    sub_217752D28();
    OUTLINED_FUNCTION_1328();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  OUTLINED_FUNCTION_761();
  if (v3)
  {
    OUTLINED_FUNCTION_626();
    OUTLINED_FUNCTION_787();
    sub_217751DE8();
    OUTLINED_FUNCTION_85_3();
    sub_217752D28();
    OUTLINED_FUNCTION_87_6();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  OUTLINED_FUNCTION_751();
  if (v4)
  {
    OUTLINED_FUNCTION_770();
    OUTLINED_FUNCTION_967();
    sub_217751DE8();
    OUTLINED_FUNCTION_135();
    sub_217752D28();
    OUTLINED_FUNCTION_967();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v1 = v0[70];
  }

  v0[75] = v1;
  OUTLINED_FUNCTION_9_14(&unk_21776B048);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[76] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_158_5(v5);
  OUTLINED_FUNCTION_1322();

  return v12(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_21747BA28()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 616) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_1083();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747BF70()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 640) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747C070()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 664) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747C168()
{
  OUTLINED_FUNCTION_10();
  if (*(v0 + 488))
  {
    OUTLINED_FUNCTION_1404();
  }

  else
  {
    OUTLINED_FUNCTION_1402();
    if (*(v0 + 488))
    {
      sub_2171F0790(v0 + 464, &xmmword_27CB27600, &qword_21776B040);
    }
  }

  OUTLINED_FUNCTION_265();
  sub_2171F0790(v0 + 16, &xmmword_27CB27610, &qword_21776B068);
  OUTLINED_FUNCTION_267();

  return v1();
}

uint64_t sub_21747C20C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_644();
  sub_2171F0790(v0 + 16, &xmmword_27CB27610, &qword_21776B068);
  OUTLINED_FUNCTION_267();

  return v1();
}

void sub_21747C27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_1329();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_264();
  OUTLINED_FUNCTION_488();
  OUTLINED_FUNCTION_849();
  v16();
  OUTLINED_FUNCTION_823();
  v17 = OUTLINED_FUNCTION_523();
  v15(v17);
  v18 = OUTLINED_FUNCTION_1201();
  sub_21725CF0C(v18, v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27610 + 1, &qword_21776B070);
  if (OUTLINED_FUNCTION_923(v20, v21, &type metadata for Album, v20))
  {
    OUTLINED_FUNCTION_38_12();
    OUTLINED_FUNCTION_540();
    v45 = v22 + *v22;
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_527(v23);
    *v24 = v25;
    OUTLINED_FUNCTION_197_4(v24);
    OUTLINED_FUNCTION_188_5();
    OUTLINED_FUNCTION_1138();

    v34(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, v45, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_498();
    sub_2171F0790(v14 + 384, &unk_27CB27620, &unk_217778B30);
    OUTLINED_FUNCTION_1199();
    if (sub_217659BB8())
    {
      OUTLINED_FUNCTION_999();
      sub_2171F0790(v14 + 16, &xmmword_27CB27610, &qword_21776B068);
      OUTLINED_FUNCTION_267();
      OUTLINED_FUNCTION_1152();

      v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      OUTLINED_FUNCTION_1_1();
      sub_217752AA8();

      OUTLINED_FUNCTION_285();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB240B8, &qword_217757AF0);
      v44 = OUTLINED_FUNCTION_188_2();
      MEMORY[0x21CEA2610](v44);
      OUTLINED_FUNCTION_1408();

      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_483();
      OUTLINED_FUNCTION_570("Fatal error");
      OUTLINED_FUNCTION_1152();
    }
  }
}

uint64_t sub_21747C4E8()
{
  OUTLINED_FUNCTION_10();

  sub_2171F0790(v0 + 16, &xmmword_27CB27610, &qword_21776B068);
  OUTLINED_FUNCTION_267();

  return v1();
}

uint64_t sub_21747C564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 576) = v8;
  *(v9 + 568) = v11;
  *(v9 + 672) = a8;
  *(v9 + 560) = a7;
  *(v9 + 552) = a6;
  *(v9 + 544) = a5;
  *(v9 + 536) = a4;
  *(v9 + 528) = a3;
  *(v9 + 520) = a2;
  *(v9 + 512) = a1;
  return MEMORY[0x2822009F8](sub_21747C5B0, 0, 0);
}

uint64_t sub_21747C5B0()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_1209();
  if (v2)
  {
    OUTLINED_FUNCTION_772();
    OUTLINED_FUNCTION_87_6();
    sub_217751DE8();
    OUTLINED_FUNCTION_20_6();
    sub_217752D28();
    OUTLINED_FUNCTION_1328();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  OUTLINED_FUNCTION_761();
  if (v3)
  {
    OUTLINED_FUNCTION_626();
    OUTLINED_FUNCTION_787();
    sub_217751DE8();
    OUTLINED_FUNCTION_85_3();
    sub_217752D28();
    OUTLINED_FUNCTION_87_6();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  OUTLINED_FUNCTION_751();
  if (v4)
  {
    OUTLINED_FUNCTION_770();
    OUTLINED_FUNCTION_967();
    sub_217751DE8();
    OUTLINED_FUNCTION_135();
    sub_217752D28();
    OUTLINED_FUNCTION_967();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v1 = v0[70];
  }

  v0[75] = v1;
  OUTLINED_FUNCTION_9_14(&unk_21776B9B0);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[76] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_158_5(v5);
  OUTLINED_FUNCTION_1322();

  return v12(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_21747C714()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 616) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_1083();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747CC5C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 640) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747CD5C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 664) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747CE54()
{
  OUTLINED_FUNCTION_10();
  if (*(v0 + 488))
  {
    OUTLINED_FUNCTION_1404();
  }

  else
  {
    OUTLINED_FUNCTION_1402();
    if (*(v0 + 488))
    {
      sub_2171F0790(v0 + 464, &xmmword_27CB27600, &qword_21776B040);
    }
  }

  OUTLINED_FUNCTION_265();
  sub_2171F0790(v0 + 16, &qword_27CB27C68, &qword_21776B9C8);
  OUTLINED_FUNCTION_267();

  return v1();
}

uint64_t sub_21747CEF8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_644();
  sub_2171F0790(v0 + 16, &qword_27CB27C68, &qword_21776B9C8);
  OUTLINED_FUNCTION_267();

  return v1();
}

void sub_21747CF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_1329();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_264();
  OUTLINED_FUNCTION_488();
  OUTLINED_FUNCTION_849();
  v16();
  OUTLINED_FUNCTION_823();
  v17 = OUTLINED_FUNCTION_523();
  v15(v17);
  v18 = OUTLINED_FUNCTION_1201();
  sub_217284130(v18, v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27610 + 1, &qword_21776B070);
  if (OUTLINED_FUNCTION_923(v20, v21, &type metadata for Genre, v20))
  {
    OUTLINED_FUNCTION_38_12();
    OUTLINED_FUNCTION_540();
    v45 = v22 + *v22;
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_527(v23);
    *v24 = v25;
    OUTLINED_FUNCTION_197_4(v24);
    OUTLINED_FUNCTION_188_5();
    OUTLINED_FUNCTION_1138();

    v34(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, v45, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_498();
    sub_2171F0790(v14 + 384, &unk_27CB27620, &unk_217778B30);
    OUTLINED_FUNCTION_1199();
    if (sub_217659BB8())
    {
      OUTLINED_FUNCTION_999();
      sub_2171F0790(v14 + 16, &qword_27CB27C68, &qword_21776B9C8);
      OUTLINED_FUNCTION_267();
      OUTLINED_FUNCTION_1152();

      v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      OUTLINED_FUNCTION_1_1();
      sub_217752AA8();

      OUTLINED_FUNCTION_285();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27C70, &qword_21776B9D0);
      v44 = OUTLINED_FUNCTION_188_2();
      MEMORY[0x21CEA2610](v44);
      OUTLINED_FUNCTION_1408();

      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_483();
      OUTLINED_FUNCTION_570("Fatal error");
      OUTLINED_FUNCTION_1152();
    }
  }
}

uint64_t sub_21747D1D4()
{
  OUTLINED_FUNCTION_10();

  sub_2171F0790(v0 + 16, &qword_27CB27C68, &qword_21776B9C8);
  OUTLINED_FUNCTION_267();

  return v1();
}

uint64_t sub_21747D250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 808) = v8;
  *(v9 + 800) = v11;
  *(v9 + 153) = a8;
  *(v9 + 792) = a7;
  *(v9 + 784) = a6;
  *(v9 + 776) = a5;
  *(v9 + 768) = a4;
  *(v9 + 760) = a3;
  *(v9 + 752) = a2;
  *(v9 + 744) = a1;
  return MEMORY[0x2822009F8](sub_21747D29C, 0, 0);
}

uint64_t sub_21747D29C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  v2 = v0[97];
  v3 = v0[94];
  v4 = v3[3];
  v5 = v3[4];
  OUTLINED_FUNCTION_21_11(v3);
  PropertyProviderBackedItem.staticPropertyProvider.getter(v4, *(v5 + 8));
  if (v2 >> 62)
  {
    OUTLINED_FUNCTION_772();
    OUTLINED_FUNCTION_87_6();
    sub_217751DE8();
    OUTLINED_FUNCTION_20_6();
    sub_217752D28();
    OUTLINED_FUNCTION_1328();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v2 = v0[97];
  }

  v0[102] = v2;
  if (v0[98] >> 62)
  {
    OUTLINED_FUNCTION_626();
    OUTLINED_FUNCTION_787();
    sub_217751DE8();
    OUTLINED_FUNCTION_85_3();
    sub_217752D28();
    OUTLINED_FUNCTION_87_6();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v5 = v0[98];
  }

  v0[103] = v5;
  if (v0[99] >> 62)
  {
    OUTLINED_FUNCTION_770();
    OUTLINED_FUNCTION_967();
    sub_217751DE8();
    OUTLINED_FUNCTION_135();
    sub_217752D28();
    OUTLINED_FUNCTION_967();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v1 = v0[99];
  }

  v0[104] = v1;
  OUTLINED_FUNCTION_9_14(&unk_21776BC48);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[105] = v6;
  *v6 = v7;
  v6[1] = sub_21747D450;
  OUTLINED_FUNCTION_6_32();
  OUTLINED_FUNCTION_1322();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_21747D450()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 848) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747DBC4()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_398((v0 + 336));

  return v1();
}

uint64_t sub_21747DC3C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 872) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747DD3C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 896) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747DE34()
{
  OUTLINED_FUNCTION_10();
  if (*(v0 + 720))
  {
    sub_2171F3F0C((v0 + 696), v0 + 656);
  }

  else
  {
    sub_21749A32C(v0 + 496, v0 + 656);
    if (*(v0 + 720))
    {
      sub_2171F0790(v0 + 696, &xmmword_27CB27600, &qword_21776B040);
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 496));
  sub_2171F3F0C((v0 + 656), v0 + 496);
  __swift_destroy_boxed_opaque_existential_1((v0 + 576));
  sub_2171F3F0C((v0 + 496), *(v0 + 744));

  sub_2171F0790(v0 + 16, &qword_27CB27DF0, &qword_21776BC60);
  OUTLINED_FUNCTION_297((v0 + 336));

  return v1();
}

uint64_t sub_21747DF18()
{
  OUTLINED_FUNCTION_10();
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  OUTLINED_FUNCTION_1101(v0 + 62);

  sub_2171F0790((v0 + 2), &qword_27CB27DF0, &qword_21776BC60);
  OUTLINED_FUNCTION_398(v0 + 42);

  return v1();
}

uint64_t sub_21747DFA0()
{
  OUTLINED_FUNCTION_904();
  v1 = *(v0 + 808);
  v2 = *(v0 + 768);
  v3 = *(v0 + 760);
  v4 = *(v0 + 360);
  v5 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1((v0 + 336), v4);
  *(v0 + 560) = v4;
  *(v0 + 568) = *(v5 + 8);
  __swift_allocate_boxed_opaque_existential_0((v0 + 536));
  OUTLINED_FUNCTION_41_0();
  (*(v6 + 16))();
  v7 = *(v2 + 16);
  *(v0 + 520) = v3;
  *(v0 + 528) = v2;
  __swift_allocate_boxed_opaque_existential_0((v0 + 496));
  v7(v0 + 536, v3, v2);
  sub_217275710(v1, v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27610 + 1, &qword_21776B070);
  if (swift_dynamicCast())
  {
    sub_2171F3F0C((v0 + 616), v0 + 576);
    __swift_project_boxed_opaque_existential_1((v0 + 576), *(v0 + 600));
    *(v0 + 880) = *(v0 + 736);
    OUTLINED_FUNCTION_306();
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 888) = v8;
    *v8 = v9;
    OUTLINED_FUNCTION_989(v8);
    OUTLINED_FUNCTION_421();

    __asm { BRAA            X8, X16 }
  }

  *(v0 + 648) = 0;
  OUTLINED_FUNCTION_26_18();
  sub_2171F0790(v0 + 616, &unk_27CB27620, &unk_217778B30);
  if (sub_217659BB8())
  {
    sub_2171F3F0C((v0 + 496), *(v0 + 744));

    sub_2171F0790(v0 + 16, &qword_27CB27DF0, &qword_21776BC60);
    OUTLINED_FUNCTION_297((v0 + 336));

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_713();

    OUTLINED_FUNCTION_285();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27DF8, &qword_21776BC68);
    v13 = OUTLINED_FUNCTION_188_2();
    MEMORY[0x21CEA2610](v13);
    OUTLINED_FUNCTION_1349();

    OUTLINED_FUNCTION_1026();
    OUTLINED_FUNCTION_419();
    return OUTLINED_FUNCTION_570("Fatal error");
  }
}

uint64_t sub_21747E2C0()
{
  OUTLINED_FUNCTION_10();

  sub_2171F0790(v0 + 16, &qword_27CB27DF0, &qword_21776BC60);
  OUTLINED_FUNCTION_398((v0 + 336));

  return v1();
}

uint64_t sub_21747E340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 576) = v8;
  *(v9 + 568) = v11;
  *(v9 + 672) = a8;
  *(v9 + 560) = a7;
  *(v9 + 552) = a6;
  *(v9 + 544) = a5;
  *(v9 + 536) = a4;
  *(v9 + 528) = a3;
  *(v9 + 520) = a2;
  *(v9 + 512) = a1;
  return MEMORY[0x2822009F8](sub_21747E38C, 0, 0);
}

uint64_t sub_21747E38C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_1209();
  if (v2)
  {
    OUTLINED_FUNCTION_772();
    OUTLINED_FUNCTION_87_6();
    sub_217751DE8();
    OUTLINED_FUNCTION_20_6();
    sub_217752D28();
    OUTLINED_FUNCTION_1328();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  OUTLINED_FUNCTION_761();
  if (v3)
  {
    OUTLINED_FUNCTION_626();
    OUTLINED_FUNCTION_787();
    sub_217751DE8();
    OUTLINED_FUNCTION_85_3();
    sub_217752D28();
    OUTLINED_FUNCTION_87_6();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  OUTLINED_FUNCTION_751();
  if (v4)
  {
    OUTLINED_FUNCTION_770();
    OUTLINED_FUNCTION_967();
    sub_217751DE8();
    OUTLINED_FUNCTION_135();
    sub_217752D28();
    OUTLINED_FUNCTION_967();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v1 = v0[70];
  }

  v0[75] = v1;
  OUTLINED_FUNCTION_9_14(&unk_21776B7E0);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[76] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_158_5(v5);
  OUTLINED_FUNCTION_1322();

  return v12(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_21747E4F0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 616) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_1083();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747EA38()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 640) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747EB38()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 664) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747EC30()
{
  OUTLINED_FUNCTION_10();
  if (*(v0 + 488))
  {
    OUTLINED_FUNCTION_1404();
  }

  else
  {
    OUTLINED_FUNCTION_1402();
    if (*(v0 + 488))
    {
      sub_2171F0790(v0 + 464, &xmmword_27CB27600, &qword_21776B040);
    }
  }

  OUTLINED_FUNCTION_265();
  sub_2171F0790(v0 + 16, &qword_27CB27B40, &qword_21776B7F8);
  OUTLINED_FUNCTION_267();

  return v1();
}

uint64_t sub_21747ECD4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_644();
  sub_2171F0790(v0 + 16, &qword_27CB27B40, &qword_21776B7F8);
  OUTLINED_FUNCTION_267();

  return v1();
}

void sub_21747ED44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_1329();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_264();
  OUTLINED_FUNCTION_488();
  OUTLINED_FUNCTION_849();
  v16();
  OUTLINED_FUNCTION_823();
  v17 = OUTLINED_FUNCTION_523();
  v15(v17);
  v18 = OUTLINED_FUNCTION_1201();
  sub_21725CF68(v18, v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27610 + 1, &qword_21776B070);
  if (OUTLINED_FUNCTION_923(v20, v21, &type metadata for Artist, v20))
  {
    OUTLINED_FUNCTION_38_12();
    OUTLINED_FUNCTION_540();
    v45 = v22 + *v22;
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_527(v23);
    *v24 = v25;
    OUTLINED_FUNCTION_197_4(v24);
    OUTLINED_FUNCTION_188_5();
    OUTLINED_FUNCTION_1138();

    v34(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, v45, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_498();
    sub_2171F0790(v14 + 384, &unk_27CB27620, &unk_217778B30);
    OUTLINED_FUNCTION_1199();
    if (sub_217659BB8())
    {
      OUTLINED_FUNCTION_999();
      sub_2171F0790(v14 + 16, &qword_27CB27B40, &qword_21776B7F8);
      OUTLINED_FUNCTION_267();
      OUTLINED_FUNCTION_1152();

      v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      OUTLINED_FUNCTION_1_1();
      sub_217752AA8();

      OUTLINED_FUNCTION_285();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27B48, &qword_21776B800);
      v44 = OUTLINED_FUNCTION_188_2();
      MEMORY[0x21CEA2610](v44);
      OUTLINED_FUNCTION_1408();

      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_483();
      OUTLINED_FUNCTION_570("Fatal error");
      OUTLINED_FUNCTION_1152();
    }
  }
}

uint64_t sub_21747EFB0()
{
  OUTLINED_FUNCTION_10();

  sub_2171F0790(v0 + 16, &qword_27CB27B40, &qword_21776B7F8);
  OUTLINED_FUNCTION_267();

  return v1();
}

uint64_t sub_21747F02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 576) = v8;
  *(v9 + 568) = v11;
  *(v9 + 672) = a8;
  *(v9 + 560) = a7;
  *(v9 + 552) = a6;
  *(v9 + 544) = a5;
  *(v9 + 536) = a4;
  *(v9 + 528) = a3;
  *(v9 + 520) = a2;
  *(v9 + 512) = a1;
  return MEMORY[0x2822009F8](sub_21747F078, 0, 0);
}

uint64_t sub_21747F078()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_1209();
  if (v2)
  {
    OUTLINED_FUNCTION_772();
    OUTLINED_FUNCTION_87_6();
    sub_217751DE8();
    OUTLINED_FUNCTION_20_6();
    sub_217752D28();
    OUTLINED_FUNCTION_1328();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  OUTLINED_FUNCTION_761();
  if (v3)
  {
    OUTLINED_FUNCTION_626();
    OUTLINED_FUNCTION_787();
    sub_217751DE8();
    OUTLINED_FUNCTION_85_3();
    sub_217752D28();
    OUTLINED_FUNCTION_87_6();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  OUTLINED_FUNCTION_751();
  if (v4)
  {
    OUTLINED_FUNCTION_770();
    OUTLINED_FUNCTION_967();
    sub_217751DE8();
    OUTLINED_FUNCTION_135();
    sub_217752D28();
    OUTLINED_FUNCTION_967();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v1 = v0[70];
  }

  v0[75] = v1;
  OUTLINED_FUNCTION_9_14(&unk_21776B540);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[76] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_158_5(v5);
  OUTLINED_FUNCTION_1322();

  return v12(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_21747F1DC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 616) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_1083();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747F724()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 640) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747F824()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 664) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21747F91C()
{
  OUTLINED_FUNCTION_10();
  if (*(v0 + 488))
  {
    OUTLINED_FUNCTION_1404();
  }

  else
  {
    OUTLINED_FUNCTION_1402();
    if (*(v0 + 488))
    {
      sub_2171F0790(v0 + 464, &xmmword_27CB27600, &qword_21776B040);
    }
  }

  OUTLINED_FUNCTION_265();
  sub_2171F0790(v0 + 16, &qword_27CB279A0, &qword_21776B558);
  OUTLINED_FUNCTION_267();

  return v1();
}

uint64_t sub_21747F9C0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_644();
  sub_2171F0790(v0 + 16, &qword_27CB279A0, &qword_21776B558);
  OUTLINED_FUNCTION_267();

  return v1();
}

void sub_21747FA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_1329();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_264();
  OUTLINED_FUNCTION_488();
  OUTLINED_FUNCTION_849();
  v16();
  OUTLINED_FUNCTION_823();
  v17 = OUTLINED_FUNCTION_523();
  v15(v17);
  v18 = OUTLINED_FUNCTION_1201();
  sub_217275858(v18, v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27610 + 1, &qword_21776B070);
  if (OUTLINED_FUNCTION_923(v20, v21, &type metadata for Playlist.Entry, v20))
  {
    OUTLINED_FUNCTION_38_12();
    OUTLINED_FUNCTION_540();
    v45 = v22 + *v22;
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_527(v23);
    *v24 = v25;
    OUTLINED_FUNCTION_197_4(v24);
    OUTLINED_FUNCTION_188_5();
    OUTLINED_FUNCTION_1138();

    v34(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, v45, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_498();
    sub_2171F0790(v14 + 384, &unk_27CB27620, &unk_217778B30);
    OUTLINED_FUNCTION_1199();
    if (sub_217659BB8())
    {
      OUTLINED_FUNCTION_999();
      sub_2171F0790(v14 + 16, &qword_27CB279A0, &qword_21776B558);
      OUTLINED_FUNCTION_267();
      OUTLINED_FUNCTION_1152();

      v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      OUTLINED_FUNCTION_1_1();
      sub_217752AA8();

      OUTLINED_FUNCTION_285();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB279A8, &qword_21776B560);
      v44 = OUTLINED_FUNCTION_188_2();
      MEMORY[0x21CEA2610](v44);
      OUTLINED_FUNCTION_1408();

      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_483();
      OUTLINED_FUNCTION_570("Fatal error");
      OUTLINED_FUNCTION_1152();
    }
  }
}

uint64_t sub_21747FC9C()
{
  OUTLINED_FUNCTION_10();

  sub_2171F0790(v0 + 16, &qword_27CB279A0, &qword_21776B558);
  OUTLINED_FUNCTION_267();

  return v1();
}

uint64_t sub_21747FD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 576) = v8;
  *(v9 + 568) = v11;
  *(v9 + 672) = a8;
  *(v9 + 560) = a7;
  *(v9 + 552) = a6;
  *(v9 + 544) = a5;
  *(v9 + 536) = a4;
  *(v9 + 528) = a3;
  *(v9 + 520) = a2;
  *(v9 + 512) = a1;
  return MEMORY[0x2822009F8](sub_21747FD64, 0, 0);
}

uint64_t sub_21747FD64()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_1209();
  if (v2)
  {
    OUTLINED_FUNCTION_772();
    OUTLINED_FUNCTION_87_6();
    sub_217751DE8();
    OUTLINED_FUNCTION_20_6();
    sub_217752D28();
    OUTLINED_FUNCTION_1328();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  OUTLINED_FUNCTION_761();
  if (v3)
  {
    OUTLINED_FUNCTION_626();
    OUTLINED_FUNCTION_787();
    sub_217751DE8();
    OUTLINED_FUNCTION_85_3();
    sub_217752D28();
    OUTLINED_FUNCTION_87_6();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  OUTLINED_FUNCTION_751();
  if (v4)
  {
    OUTLINED_FUNCTION_770();
    OUTLINED_FUNCTION_967();
    sub_217751DE8();
    OUTLINED_FUNCTION_135();
    sub_217752D28();
    OUTLINED_FUNCTION_967();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v1 = v0[70];
  }

  v0[75] = v1;
  OUTLINED_FUNCTION_9_14(&unk_21776C298);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[76] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_158_5(v5);
  OUTLINED_FUNCTION_1322();

  return v12(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_21747FEC8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 616) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_1083();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217480410()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 640) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217480510()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 664) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217480608()
{
  OUTLINED_FUNCTION_10();
  if (*(v0 + 488))
  {
    OUTLINED_FUNCTION_1404();
  }

  else
  {
    OUTLINED_FUNCTION_1402();
    if (*(v0 + 488))
    {
      sub_2171F0790(v0 + 464, &xmmword_27CB27600, &qword_21776B040);
    }
  }

  OUTLINED_FUNCTION_265();
  sub_2171F0790(v0 + 16, &unk_27CB28210, &unk_21776C2B0);
  OUTLINED_FUNCTION_267();

  return v1();
}

uint64_t sub_2174806AC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_644();
  sub_2171F0790(v0 + 16, &unk_27CB28210, &unk_21776C2B0);
  OUTLINED_FUNCTION_267();

  return v1();
}

void sub_21748071C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_1329();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_264();
  OUTLINED_FUNCTION_488();
  OUTLINED_FUNCTION_849();
  v16();
  OUTLINED_FUNCTION_823();
  v17 = OUTLINED_FUNCTION_523();
  v15(v17);
  v18 = OUTLINED_FUNCTION_1201();
  sub_2172757C0(v18, v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27610 + 1, &qword_21776B070);
  if (OUTLINED_FUNCTION_923(v20, v21, &type metadata for Playlist, v20))
  {
    OUTLINED_FUNCTION_38_12();
    OUTLINED_FUNCTION_540();
    v45 = v22 + *v22;
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_527(v23);
    *v24 = v25;
    OUTLINED_FUNCTION_197_4(v24);
    OUTLINED_FUNCTION_188_5();
    OUTLINED_FUNCTION_1138();

    v34(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, v45, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_498();
    sub_2171F0790(v14 + 384, &unk_27CB27620, &unk_217778B30);
    OUTLINED_FUNCTION_1199();
    if (sub_217659BB8())
    {
      OUTLINED_FUNCTION_999();
      sub_2171F0790(v14 + 16, &unk_27CB28210, &unk_21776C2B0);
      OUTLINED_FUNCTION_267();
      OUTLINED_FUNCTION_1152();

      v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      OUTLINED_FUNCTION_1_1();
      sub_217752AA8();

      OUTLINED_FUNCTION_285();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C00, qword_21775ECD0);
      v44 = OUTLINED_FUNCTION_188_2();
      MEMORY[0x21CEA2610](v44);
      OUTLINED_FUNCTION_1408();

      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_483();
      OUTLINED_FUNCTION_570("Fatal error");
      OUTLINED_FUNCTION_1152();
    }
  }
}

uint64_t sub_217480988()
{
  OUTLINED_FUNCTION_10();

  sub_2171F0790(v0 + 16, &unk_27CB28210, &unk_21776C2B0);
  OUTLINED_FUNCTION_267();

  return v1();
}

uint64_t sub_217480A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 328) = a7;
  *(v8 + 336) = a8;
  *(v8 + 392) = a5;
  *(v8 + 312) = a4;
  *(v8 + 320) = a6;
  *(v8 + 296) = a2;
  *(v8 + 304) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27630, &unk_21776B078);
  *(v8 + 344) = v9;
  *(v8 + 352) = *(v9 - 8);
  *(v8 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_217480B20, 0, 0);
}

uint64_t sub_217480D58()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_217480E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_1330();
  v56 = v23;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1205();
  if (v19)
  {
    OUTLINED_FUNCTION_291();
    if (v24)
    {
      OUTLINED_FUNCTION_293();
      OUTLINED_FUNCTION_488();
      OUTLINED_FUNCTION_849();
      v25();
      v26 = OUTLINED_FUNCTION_1_5();
      __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      v28 = OUTLINED_FUNCTION_205_4();
      v29(v28);
      __swift_destroy_boxed_opaque_existential_1((v18 + 48));
    }

    else
    {
      sub_2171F0790(v18 + 88, &unk_27CB28A10, &qword_21776B0A0);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A50, qword_217765A40);
      if (OUTLINED_FUNCTION_1382(v41))
      {
        v42 = OUTLINED_FUNCTION_1088();
        MEMORY[0x21CEA25D0](v42);
        v43 = OUTLINED_FUNCTION_462();
        if (v44)
        {
          OUTLINED_FUNCTION_428();
          v43 = v21;
        }

        OUTLINED_FUNCTION_1409(v43);
      }
    }

    v45 = swift_task_alloc();
    v46 = OUTLINED_FUNCTION_526(v45);
    *v46 = v47;
    OUTLINED_FUNCTION_195_5(v46);
    OUTLINED_FUNCTION_1322();

    return MEMORY[0x2822004E8](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, v20, v22, v56, a17, a18);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_397();
    v31(v30);

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39);
  }
}

uint64_t sub_217480FF4()
{
  OUTLINED_FUNCTION_30_0();
  (*(v0[44] + 8))(v0[45], v0[43]);

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_217481088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 328) = a7;
  *(v8 + 336) = a8;
  *(v8 + 392) = a5;
  *(v8 + 312) = a4;
  *(v8 + 320) = a6;
  *(v8 + 296) = a2;
  *(v8 + 304) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27630, &unk_21776B078);
  *(v8 + 344) = v9;
  *(v8 + 352) = *(v9 - 8);
  *(v8 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2174811A4, 0, 0);
}

uint64_t sub_2174813DC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2174814D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_1330();
  v56 = v23;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1205();
  if (v19)
  {
    OUTLINED_FUNCTION_291();
    if (v24)
    {
      OUTLINED_FUNCTION_293();
      OUTLINED_FUNCTION_488();
      OUTLINED_FUNCTION_849();
      v25();
      v26 = OUTLINED_FUNCTION_1_5();
      __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      v28 = OUTLINED_FUNCTION_205_4();
      v29(v28);
      __swift_destroy_boxed_opaque_existential_1((v18 + 48));
    }

    else
    {
      sub_2171F0790(v18 + 88, &unk_27CB28A10, &qword_21776B0A0);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27810, qword_217775A50);
      if (OUTLINED_FUNCTION_1382(v41))
      {
        v42 = OUTLINED_FUNCTION_1088();
        MEMORY[0x21CEA25D0](v42);
        v43 = OUTLINED_FUNCTION_462();
        if (v44)
        {
          OUTLINED_FUNCTION_428();
          v43 = v21;
        }

        OUTLINED_FUNCTION_1409(v43);
      }
    }

    v45 = swift_task_alloc();
    v46 = OUTLINED_FUNCTION_526(v45);
    *v46 = v47;
    OUTLINED_FUNCTION_195_5(v46);
    OUTLINED_FUNCTION_1322();

    return MEMORY[0x2822004E8](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, v20, v22, v56, a17, a18);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_397();
    v31(v30);

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39);
  }
}

uint64_t sub_217481678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 328) = a7;
  *(v8 + 336) = a8;
  *(v8 + 392) = a5;
  *(v8 + 312) = a4;
  *(v8 + 320) = a6;
  *(v8 + 296) = a2;
  *(v8 + 304) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27630, &unk_21776B078);
  *(v8 + 344) = v9;
  *(v8 + 352) = *(v9 - 8);
  *(v8 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_217481794, 0, 0);
}

uint64_t sub_2174819CC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_217481AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_1330();
  v56 = v23;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1205();
  if (v19)
  {
    OUTLINED_FUNCTION_291();
    if (v24)
    {
      OUTLINED_FUNCTION_293();
      OUTLINED_FUNCTION_488();
      OUTLINED_FUNCTION_849();
      v25();
      v26 = OUTLINED_FUNCTION_1_5();
      __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      v28 = OUTLINED_FUNCTION_205_4();
      v29(v28);
      __swift_destroy_boxed_opaque_existential_1((v18 + 48));
    }

    else
    {
      sub_2171F0790(v18 + 88, &unk_27CB28A10, &qword_21776B0A0);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB240B8, &qword_217757AF0);
      if (OUTLINED_FUNCTION_1382(v41))
      {
        v42 = OUTLINED_FUNCTION_1088();
        MEMORY[0x21CEA25D0](v42);
        v43 = OUTLINED_FUNCTION_462();
        if (v44)
        {
          OUTLINED_FUNCTION_428();
          v43 = v21;
        }

        OUTLINED_FUNCTION_1409(v43);
      }
    }

    v45 = swift_task_alloc();
    v46 = OUTLINED_FUNCTION_526(v45);
    *v46 = v47;
    OUTLINED_FUNCTION_195_5(v46);
    OUTLINED_FUNCTION_1322();

    return MEMORY[0x2822004E8](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, v20, v22, v56, a17, a18);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_397();
    v31(v30);

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39);
  }
}

uint64_t sub_217481C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 328) = a7;
  *(v8 + 336) = a8;
  *(v8 + 392) = a5;
  *(v8 + 312) = a4;
  *(v8 + 320) = a6;
  *(v8 + 296) = a2;
  *(v8 + 304) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27630, &unk_21776B078);
  *(v8 + 344) = v9;
  *(v8 + 352) = *(v9 - 8);
  *(v8 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_217481D84, 0, 0);
}

uint64_t sub_217481FBC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2174820B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_1330();
  v56 = v23;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1205();
  if (v19)
  {
    OUTLINED_FUNCTION_291();
    if (v24)
    {
      OUTLINED_FUNCTION_293();
      OUTLINED_FUNCTION_488();
      OUTLINED_FUNCTION_849();
      v25();
      v26 = OUTLINED_FUNCTION_1_5();
      __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      v28 = OUTLINED_FUNCTION_205_4();
      v29(v28);
      __swift_destroy_boxed_opaque_existential_1((v18 + 48));
    }

    else
    {
      sub_2171F0790(v18 + 88, &unk_27CB28A10, &qword_21776B0A0);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27C70, &qword_21776B9D0);
      if (OUTLINED_FUNCTION_1382(v41))
      {
        v42 = OUTLINED_FUNCTION_1088();
        MEMORY[0x21CEA25D0](v42);
        v43 = OUTLINED_FUNCTION_462();
        if (v44)
        {
          OUTLINED_FUNCTION_428();
          v43 = v21;
        }

        OUTLINED_FUNCTION_1409(v43);
      }
    }

    v45 = swift_task_alloc();
    v46 = OUTLINED_FUNCTION_526(v45);
    *v46 = v47;
    OUTLINED_FUNCTION_195_5(v46);
    OUTLINED_FUNCTION_1322();

    return MEMORY[0x2822004E8](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, v20, v22, v56, a17, a18);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_397();
    v31(v30);

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39);
  }
}

uint64_t sub_217482258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 336) = a7;
  *(v8 + 344) = a8;
  *(v8 + 73) = a5;
  *(v8 + 320) = a4;
  *(v8 + 328) = a6;
  *(v8 + 304) = a2;
  *(v8 + 312) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27630, &unk_21776B078);
  *(v8 + 352) = v9;
  *(v8 + 360) = *(v9 - 8);
  *(v8 + 368) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_217482374, 0, 0);
}

uint64_t sub_217482654()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_217482750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_1330();
  v51 = v20;
  OUTLINED_FUNCTION_209();
  if (*(v18 + 80))
  {
    *(v18 + 200) = *(v18 + 120);
    *(v18 + 184) = *(v18 + 104);
    *(v18 + 168) = *(v18 + 88);
    if (*(v18 + 192))
    {
      sub_2171F3F0C((v18 + 168), v18 + 128);
      v21 = *(v18 + 152);
      __swift_project_boxed_opaque_existential_1((v18 + 128), v21);
      *(v18 + 264) = v21;
      __swift_allocate_boxed_opaque_existential_0((v18 + 240));
      OUTLINED_FUNCTION_488();
      OUTLINED_FUNCTION_849();
      v22();
      v23 = OUTLINED_FUNCTION_1_5();
      __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
      v25 = OUTLINED_FUNCTION_205_4();
      v26(v25);
      __swift_destroy_boxed_opaque_existential_1((v18 + 128));
    }

    else
    {
      sub_2171F0790(v18 + 168, &unk_27CB28A10, &qword_21776B0A0);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27DF8, &qword_21776BC68);
      if (OUTLINED_FUNCTION_1382(v38))
      {

        MEMORY[0x21CEA25D0](v39);
        OUTLINED_FUNCTION_462();
        if (v40)
        {
          sub_2177522F8();
        }

        sub_217752378();
      }
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v18 + 392) = v41;
    *v41 = v42;
    OUTLINED_FUNCTION_1020(v41);
    OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_1322();

    return MEMORY[0x2822004E8](v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, v18, v19, v51, a17, a18);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_1490();
    v28(v27);

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36);
  }
}

uint64_t sub_217482968()
{
  OUTLINED_FUNCTION_30_0();
  v0 = OUTLINED_FUNCTION_1490();
  v1(v0);

  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_2174829F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 328) = a7;
  *(v8 + 336) = a8;
  *(v8 + 392) = a5;
  *(v8 + 312) = a4;
  *(v8 + 320) = a6;
  *(v8 + 296) = a2;
  *(v8 + 304) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27630, &unk_21776B078);
  *(v8 + 344) = v9;
  *(v8 + 352) = *(v9 - 8);
  *(v8 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_217482B0C, 0, 0);
}

uint64_t sub_217482D44()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_217482E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_1330();
  v56 = v23;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1205();
  if (v19)
  {
    OUTLINED_FUNCTION_291();
    if (v24)
    {
      OUTLINED_FUNCTION_293();
      OUTLINED_FUNCTION_488();
      OUTLINED_FUNCTION_849();
      v25();
      v26 = OUTLINED_FUNCTION_1_5();
      __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      v28 = OUTLINED_FUNCTION_205_4();
      v29(v28);
      __swift_destroy_boxed_opaque_existential_1((v18 + 48));
    }

    else
    {
      sub_2171F0790(v18 + 88, &unk_27CB28A10, &qword_21776B0A0);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27B48, &qword_21776B800);
      if (OUTLINED_FUNCTION_1382(v41))
      {
        v42 = OUTLINED_FUNCTION_1088();
        MEMORY[0x21CEA25D0](v42);
        v43 = OUTLINED_FUNCTION_462();
        if (v44)
        {
          OUTLINED_FUNCTION_428();
          v43 = v21;
        }

        OUTLINED_FUNCTION_1409(v43);
      }
    }

    v45 = swift_task_alloc();
    v46 = OUTLINED_FUNCTION_526(v45);
    *v46 = v47;
    OUTLINED_FUNCTION_195_5(v46);
    OUTLINED_FUNCTION_1322();

    return MEMORY[0x2822004E8](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, v20, v22, v56, a17, a18);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_397();
    v31(v30);

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39);
  }
}

uint64_t sub_217482FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 328) = a7;
  *(v8 + 336) = a8;
  *(v8 + 392) = a5;
  *(v8 + 312) = a4;
  *(v8 + 320) = a6;
  *(v8 + 296) = a2;
  *(v8 + 304) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27630, &unk_21776B078);
  *(v8 + 344) = v9;
  *(v8 + 352) = *(v9 - 8);
  *(v8 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2174830FC, 0, 0);
}

uint64_t sub_217483334()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_217483430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_1330();
  v56 = v23;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1205();
  if (v19)
  {
    OUTLINED_FUNCTION_291();
    if (v24)
    {
      OUTLINED_FUNCTION_293();
      OUTLINED_FUNCTION_488();
      OUTLINED_FUNCTION_849();
      v25();
      v26 = OUTLINED_FUNCTION_1_5();
      __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      v28 = OUTLINED_FUNCTION_205_4();
      v29(v28);
      __swift_destroy_boxed_opaque_existential_1((v18 + 48));
    }

    else
    {
      sub_2171F0790(v18 + 88, &unk_27CB28A10, &qword_21776B0A0);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB279A8, &qword_21776B560);
      if (OUTLINED_FUNCTION_1382(v41))
      {
        v42 = OUTLINED_FUNCTION_1088();
        MEMORY[0x21CEA25D0](v42);
        v43 = OUTLINED_FUNCTION_462();
        if (v44)
        {
          OUTLINED_FUNCTION_428();
          v43 = v21;
        }

        OUTLINED_FUNCTION_1409(v43);
      }
    }

    v45 = swift_task_alloc();
    v46 = OUTLINED_FUNCTION_526(v45);
    *v46 = v47;
    OUTLINED_FUNCTION_195_5(v46);
    OUTLINED_FUNCTION_1322();

    return MEMORY[0x2822004E8](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, v20, v22, v56, a17, a18);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_397();
    v31(v30);

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39);
  }
}

uint64_t sub_2174835D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 328) = a7;
  *(v8 + 336) = a8;
  *(v8 + 392) = a5;
  *(v8 + 312) = a4;
  *(v8 + 320) = a6;
  *(v8 + 296) = a2;
  *(v8 + 304) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27630, &unk_21776B078);
  *(v8 + 344) = v9;
  *(v8 + 352) = *(v9 - 8);
  *(v8 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2174836EC, 0, 0);
}

uint64_t sub_217483924()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_217483A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_1330();
  v56 = v23;
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1205();
  if (v19)
  {
    OUTLINED_FUNCTION_291();
    if (v24)
    {
      OUTLINED_FUNCTION_293();
      OUTLINED_FUNCTION_488();
      OUTLINED_FUNCTION_849();
      v25();
      v26 = OUTLINED_FUNCTION_1_5();
      __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      v28 = OUTLINED_FUNCTION_205_4();
      v29(v28);
      __swift_destroy_boxed_opaque_existential_1((v18 + 48));
    }

    else
    {
      sub_2171F0790(v18 + 88, &unk_27CB28A10, &qword_21776B0A0);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C00, qword_21775ECD0);
      if (OUTLINED_FUNCTION_1382(v41))
      {
        v42 = OUTLINED_FUNCTION_1088();
        MEMORY[0x21CEA25D0](v42);
        v43 = OUTLINED_FUNCTION_462();
        if (v44)
        {
          OUTLINED_FUNCTION_428();
          v43 = v21;
        }

        OUTLINED_FUNCTION_1409(v43);
      }
    }

    v45 = swift_task_alloc();
    v46 = OUTLINED_FUNCTION_526(v45);
    *v46 = v47;
    OUTLINED_FUNCTION_195_5(v46);
    OUTLINED_FUNCTION_1322();

    return MEMORY[0x2822004E8](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, v20, v22, v56, a17, a18);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_397();
    v31(v30);

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39);
  }
}

uint64_t sub_217483BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 56) = a1;
  *(v7 + 64) = a5;
  *(v7 + 88) = a6;
  v9 = swift_task_alloc();
  *(v7 + 72) = v9;
  *v9 = v7;
  v9[1] = sub_217483C84;

  return sub_21771BFFC(v7 + 16, a5, (v7 + 88));
}

uint64_t sub_217483C84()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217483D7C()
{
  OUTLINED_FUNCTION_30_0();
  v1 = *(v0 + 56);
  *v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 + 40) = *(v0 + 48);
  *(v1 + 24) = v3;
  *(v1 + 8) = v2;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_217483E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 56) = a1;
  *(v6 + 64) = a5;
  *(v6 + 88) = a6;
  v8 = swift_task_alloc();
  *(v6 + 72) = v8;
  *v8 = v6;
  v8[1] = sub_217483EE4;

  return sub_217392EDC(v6 + 16, a5, (v6 + 88));
}

uint64_t sub_217483EE4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217483FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 56) = a1;
  *(v7 + 64) = a5;
  *(v7 + 88) = a6;
  v10 = swift_task_alloc();
  *(v7 + 72) = v10;
  *v10 = v7;
  v10[1] = sub_217483EE4;

  return sub_21725AA50(v7 + 16, a5, (v7 + 88), a7);
}

uint64_t sub_2174840C0()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_1_9();
  v0 = sub_217752AA8();
  OUTLINED_FUNCTION_1121(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_44_10();
  MEMORY[0x21CEA23B0](0xD00000000000002ALL);
  MEMORY[0x21CEA23B0](0x65726E6547, 0xE500000000000000);
  MEMORY[0x21CEA23B0](8250, 0xE200000000000000);
  OUTLINED_FUNCTION_1413();
  OUTLINED_FUNCTION_93();
  sub_217752C78();
  OUTLINED_FUNCTION_217_0();
  OUTLINED_FUNCTION_1001();
  return OUTLINED_FUNCTION_570("Fatal error");
}

uint64_t sub_2174841A4()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_1_9();
  v0 = sub_217752AA8();
  OUTLINED_FUNCTION_1121(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_44_10();
  MEMORY[0x21CEA23B0](0xD00000000000002ALL);
  MEMORY[0x21CEA23B0](0x6B63617254, 0xE500000000000000);
  MEMORY[0x21CEA23B0](8250, 0xE200000000000000);
  OUTLINED_FUNCTION_1413();
  OUTLINED_FUNCTION_93();
  sub_217752C78();
  OUTLINED_FUNCTION_217_0();
  OUTLINED_FUNCTION_1001();
  return OUTLINED_FUNCTION_570("Fatal error");
}

uint64_t sub_217484268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 56) = a1;
  *(v7 + 64) = a5;
  *(v7 + 88) = a6;
  v10 = swift_task_alloc();
  *(v7 + 72) = v10;
  *v10 = v7;
  v10[1] = sub_217483EE4;

  return sub_217593180(v7 + 16, a5, (v7 + 88), a7);
}

uint64_t sub_21748434C()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_1_9();
  v0 = sub_217752AA8();
  OUTLINED_FUNCTION_1121(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_44_10();
  MEMORY[0x21CEA23B0](0xD00000000000002ALL);
  MEMORY[0x21CEA23B0](0x7972746E45, 0xE500000000000000);
  MEMORY[0x21CEA23B0](8250, 0xE200000000000000);
  OUTLINED_FUNCTION_1413();
  OUTLINED_FUNCTION_93();
  sub_217752C78();
  OUTLINED_FUNCTION_217_0();
  OUTLINED_FUNCTION_1001();
  return OUTLINED_FUNCTION_570("Fatal error");
}

uint64_t sub_217484410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 56) = a1;
  *(v7 + 64) = a5;
  *(v7 + 88) = a6;
  v10 = swift_task_alloc();
  *(v7 + 72) = v10;
  *v10 = v7;
  v10[1] = sub_217483EE4;

  return sub_2174EFB70(v7 + 16, a5, (v7 + 88), a7);
}

void sub_217484530(unint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v101 = a7;
  v100 = a6;
  v99 = a5;
  HIDWORD(v97) = a4;
  v98 = a3;
  v96 = a2;
  v9 = sub_217751428();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v90 - v14;
  if (a1 >> 62)
  {
LABEL_153:
    v16 = sub_217752D38();
    if (!v16)
    {
      return;
    }
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      return;
    }
  }

  v94 = v15;
  v91 = v12;
  v92 = v10;
  v93 = v9;
  v95 = v7;
  v9 = 0;
  v17 = MEMORY[0x277D84F90];
  v120 = MEMORY[0x277D84F90];
  v121 = MEMORY[0x277D84F90];
  v118 = MEMORY[0x277D84F90];
  v119 = MEMORY[0x277D84F90];
  v117 = MEMORY[0x277D84F90];
  v109 = a1 & 0xFFFFFFFFFFFFFF8;
  v110 = a1 & 0xC000000000000001;
  v90 = a1;
  v108 = a1 + 32;
  v104 = xmmword_217759C00;
  v103 = v16;
  while (v9 != v16)
  {
    if (v110)
    {
      v7 = MEMORY[0x21CEA2E30](v9, v90);
    }

    else
    {
      if (v9 >= *(v109 + 16))
      {
        goto LABEL_134;
      }

      v7 = *(v108 + 8 * v9);
    }

    v18 = __OFADD__(v9++, 1);
    if (v18)
    {
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
LABEL_142:
      __break(1u);
LABEL_143:
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
      goto LABEL_153;
    }

    v112 = v9;
    if (*(v7 + 65) == 1)
    {
      v9 = *(v7 + 72);
      sub_217751DE8();

      goto LABEL_35;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
    v9 = swift_allocObject();
    *(v9 + 16) = v104;
    *(v9 + 32) = v7;
    v7 = *(v7 + 72);
    v10 = v7 >> 62;
    if (v7 >> 62)
    {
      v12 = sub_217752D38();
    }

    else
    {
      v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v9 & 0xFFFFFFFFFFFFFF8;
    v15 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a1 = v15 + v12;
    if (__OFADD__(v15, v12))
    {
      goto LABEL_142;
    }

    sub_217751DE8();
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || a1 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v9 = sub_217752AE8();
      v19 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v20 = *(v19 + 16);
    v21 = (*(v19 + 24) >> 1) - v20;
    a1 = v19 + 8 * v20;
    if (v10)
    {
      if (v7 < 0)
      {
        v10 = v7;
      }

      else
      {
        v10 = v7 & 0xFFFFFFFFFFFFFF8;
      }

      v22 = sub_217752D38();
      if (v22)
      {
        v15 = v22;
        v23 = sub_217752D38();
        if (v21 < v23)
        {
          goto LABEL_150;
        }

        if (v15 < 1)
        {
          goto LABEL_152;
        }

        v102 = v23;
        v105 = v19;
        v106 = v12;
        v107 = v9;
        v111 = v17;
        v24 = a1 + 32;
        a1 = sub_217498F2C(&unk_27CB277D0, &qword_27CB24520, &unk_217758A10);
        for (i = 0; i != v15; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24520, &unk_217758A10);
          v26 = sub_21773387C(v116, i, v7);
          v28 = *v27;

          v26(v116, 0);
          *(v24 + 8 * i) = v28;
        }

        v17 = v111;
        v16 = v103;
        v12 = v106;
        v9 = v107;
        v19 = v105;
        v10 = v102;
        goto LABEL_30;
      }
    }

    else
    {
      v15 = v7 & 0xFFFFFFFFFFFFFF8;
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        if (v21 < v10)
        {
          goto LABEL_151;
        }

        type metadata accessor for AnyMusicProperty();
        swift_arrayInitWithCopy();
LABEL_30:

        if (v10 < v12)
        {
          goto LABEL_143;
        }

        if (v10 > 0)
        {
          v29 = *(v19 + 16);
          v18 = __OFADD__(v29, v10);
          v30 = v29 + v10;
          if (v18)
          {
            goto LABEL_149;
          }

          *(v19 + 16) = v30;
        }

        goto LABEL_35;
      }
    }

    if (v12 > 0)
    {
      goto LABEL_143;
    }

LABEL_35:
    v10 = v9 >> 62;
    if (v9 >> 62)
    {
      v7 = sub_217752D38();
    }

    else
    {
      v7 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v17 >> 62;
    if (v17 >> 62)
    {
      v31 = sub_217752D38();
    }

    else
    {
      v31 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v31 + v7;
    if (__OFADD__(v31, v7))
    {
      goto LABEL_135;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v12)
      {
LABEL_45:
        sub_217752D38();
      }

LABEL_46:
      v17 = sub_217752AE8();
      v12 = v17 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_47;
    }

    if (v12)
    {
      goto LABEL_45;
    }

    v12 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v15 > *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_46;
    }

LABEL_47:
    v32 = *(v12 + 16);
    v33 = (*(v12 + 24) >> 1) - v32;
    a1 = v12 + 8 * v32;
    if (v10)
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        v15 = v9;
      }

      else
      {
        v15 = v9 & 0xFFFFFFFFFFFFFF8;
      }

      v34 = sub_217752D38();
      if (!v34)
      {
        goto LABEL_64;
      }

      v10 = v34;
      v35 = sub_217752D38();
      if (v33 < v35)
      {
        goto LABEL_147;
      }

      if (v10 < 1)
      {
        goto LABEL_148;
      }

      v105 = v35;
      v106 = v12;
      v107 = v7;
      v111 = v17;
      v36 = a1 + 32;
      sub_217498F2C(&unk_27CB277D0, &qword_27CB24520, &unk_217758A10);
      a1 = 0;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24520, &unk_217758A10);
        v37 = sub_21773387C(v116, a1, v9);
        v39 = *v38;

        v37(v116, 0);
        *(v36 + 8 * a1++) = v39;
      }

      while (v10 != a1);
      v17 = v111;
      v16 = v103;
      v12 = v106;
      v7 = v107;
      v15 = v105;
LABEL_60:

      v9 = v112;
      if (v15 < v7)
      {
        goto LABEL_136;
      }

      if (v15 > 0)
      {
        v40 = *(v12 + 16);
        v18 = __OFADD__(v40, v15);
        v41 = v40 + v15;
        if (v18)
        {
          goto LABEL_144;
        }

        *(v12 + 16) = v41;
      }
    }

    else
    {
      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v15 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        if (v33 < v15)
        {
          goto LABEL_146;
        }

        type metadata accessor for AnyMusicProperty();
        swift_arrayInitWithCopy();
        goto LABEL_60;
      }

LABEL_64:

      v9 = v112;
      if (v7 > 0)
      {
        goto LABEL_136;
      }
    }
  }

  v42 = sub_217204DD0(v17);
  v12 = 0;
  v109 = v17 & 0xC000000000000001;
  v110 = v42;
  a1 = MEMORY[0x277D84F90];
  v107 = MEMORY[0x277D84F90];
  v108 = v17 & 0xFFFFFFFFFFFFFF8;
  v43 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v106 = MEMORY[0x277D84F90];
  v111 = v17;
  while (v110 != v12)
  {
    if (v109)
    {
      v44 = MEMORY[0x21CEA2E30](v12, v17);
    }

    else
    {
      if (v12 >= *(v108 + 16))
      {
        goto LABEL_138;
      }

      v44 = *(v17 + 8 * v12 + 32);
    }

    if (__OFADD__(v12, 1))
    {
      goto LABEL_137;
    }

    if (*(v44 + 64))
    {
      if (*(v44 + 64) == 1)
      {
        v15 = v43;

        MEMORY[0x21CEA25D0](v45);
        if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();
        v112 = v120;
      }

      else
      {
        v47 = *(v44 + 48);
        v48 = *(v44 + 56);
        v112 = v9;
        if (v47 ^ 1 | v48)
        {
          if (v47 ^ 2 | v48)
          {
            v114 = 0;
            v115 = 0xE000000000000000;
            sub_217752AA8();
            MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177AE390);
            v113 = v44;
            type metadata accessor for AnyMusicProperty();
            sub_217752C78();
            MEMORY[0x21CEA23B0](0xD00000000000003ALL, 0x80000002177AE460);
            sub_217752D08();
            __break(1u);
            return;
          }

          MEMORY[0x21CEA25D0](v50);
          if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2177522F8();
          }

          sub_217752378();
          v15 = v118;
        }

        else
        {
          v15 = v43;

          MEMORY[0x21CEA25D0](v49);
          if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2177522F8();
          }

          sub_217752378();
          v10 = v119;
        }
      }
    }

    else
    {
      v112 = v9;

      MEMORY[0x21CEA25D0](v46);
      if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2177522F8();
      }

      v15 = v43;
      sub_217752378();
      v107 = v121;
    }

    v9 = *(v44 + 88);
    v7 = *(v9 + 16);
    v51 = *(a1 + 16);
    v52 = v51 + v7;
    if (__OFADD__(v51, v7))
    {
      goto LABEL_139;
    }

    sub_217751DE8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v52 > *(a1 + 24) >> 1)
    {
      if (v51 <= v52)
      {
        v54 = v51 + v7;
      }

      else
      {
        v54 = v51;
      }

      sub_2172AFF2C(isUniquelyReferenced_nonNull_native, v54, 1, a1);
      a1 = v55;
    }

    v43 = v15;
    if (*(v9 + 16))
    {
      if ((*(a1 + 24) >> 1) - *(a1 + 16) < v7)
      {
        goto LABEL_141;
      }

      swift_arrayInitWithCopy();

      if (v7)
      {
        v56 = *(a1 + 16);
        v18 = __OFADD__(v56, v7);
        v57 = v56 + v7;
        if (v18)
        {
          goto LABEL_145;
        }

        *(a1 + 16) = v57;
      }
    }

    else
    {

      if (v7)
      {
        goto LABEL_140;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB282E0, &qword_21776C3E8);
    v58 = swift_dynamicCastClass();
    if (v58 && (v59 = v58, swift_beginAccess(), *(v59 + 112) != 1))
    {

      v7 = &v117;
      MEMORY[0x21CEA25D0](v60);
      if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2177522F8();
      }

      sub_217752378();

      v106 = v117;
      ++v12;
    }

    else
    {

      ++v12;
    }

    v17 = v111;
    v9 = v112;
  }

  v61 = v10;

  v62 = v107;
  v63 = sub_217204DD0(v107);
  v64 = v94;
  if (v63)
  {
    v65 = v98;
    sub_217486228(0x646E65747865, 0xE600000000000000, v96, v98, HIDWORD(v97), v99, v100, v101, v62, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
    v66 = v9;
    v68 = v67;

    v69 = v68;
    v9 = v66;
    v70 = v95;
    sub_21754383C(v69);
  }

  else
  {

    v70 = v95;
    v65 = v98;
  }

  v71 = v106;
  if (sub_217204DD0(v9))
  {
    sub_217486228(0x6564756C636E69, 0xE700000000000000, 0, 0, 0, v99, v100, v101, v9, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
    v73 = v72;

    sub_21754383C(v73);
  }

  else
  {
  }

  if (sub_217204DD0(v61))
  {
    sub_217486228(0x7377656976, 0xE500000000000000, 0, 0, 0, v99, v100, v101, v61, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
    v75 = v74;

    sub_21754383C(v75);
  }

  else
  {
  }

  if (sub_217204DD0(v43))
  {
    sub_217486228(1635018093, 0xE400000000000000, 0, 0, 0, v99, v100, v101, v43, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
    v77 = v76;

    sub_21754383C(v77);
  }

  else
  {
  }

  if (sub_217204DD0(v71) && v65)
  {
    sub_217486A14();
    v79 = v78;

    sub_21754383C(v79);
  }

  else
  {
  }

  if (*(a1 + 16))
  {
    sub_2173DAF84(a1);
    v81 = v80;

    v114 = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    v82 = v70;
    sub_217498F2C(&qword_280BE2320, &qword_27CB24C58, &unk_2177677B0);
    sub_217751ED8();

    sub_2177513F8();

    v84 = v92;
    v85 = v91;
    v86 = v93;
    (*(v92 + 16))(v91, v64, v93, v83);
    sub_21770B7A4();
    v87 = *(*v70 + 16);
    sub_21770BAD4(v87);
    (*(v84 + 8))(v64, v86);
    v88 = *v70;
    *(v88 + 16) = v87 + 1;
    (*(v84 + 32))(v88 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v87, v85, v86);
    *v82 = v88;
  }

  else
  {
  }
}