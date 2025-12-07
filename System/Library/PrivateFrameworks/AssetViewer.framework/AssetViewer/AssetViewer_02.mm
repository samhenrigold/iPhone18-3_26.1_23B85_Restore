uint64_t sub_241261CB8()
{
  sub_241354ADC();
  sub_241353CCC();

  return sub_241354B1C();
}

double sub_241261D50(uint64_t a1)
{
  sub_241353CCC();

  return result;
}

uint64_t sub_241261DD4()
{
  sub_241354ADC();
  sub_241353CCC();

  return sub_241354B1C();
}

void sub_241261E74(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x64657473656ELL;
  if (v2 != 1)
  {
    v5 = 0x7974696C616572;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 2053403509;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

BOOL AssetLoader.FileMetadata.isUSDZPlus.getter()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[18];
  if (!v0[16])
  {
LABEL_6:

    return v2 != 2 || v3 != 2;
  }

  v4 = sub_24135497C();

  if ((v4 & 1) == 0)
  {
    if (v1 == 2)
    {
      v5 = sub_24135497C();

      result = 0;
      if ((v5 & 1) == 0)
      {
        return result;
      }

      return v2 != 2 || v3 != 2;
    }

    goto LABEL_6;
  }

  return v2 != 2 || v3 != 2;
}

uint64_t AssetLoader.FileMetadata.description.getter()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  if (v1 != 2)
  {
    if (v1)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v1)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    MEMORY[0x245CE20D0](v9, v10);

    v4 = 0;
    v3 = 0xE000000000000000;
    if (v2 != 2)
    {
      goto LABEL_3;
    }

LABEL_17:
    v7 = 0xE100000000000000;
    v8 = 63;
    goto LABEL_18;
  }

  v3 = 0xE100000000000000;
  v4 = 63;
  if (v2 == 2)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v2)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x245CE20D0](v5, v6);

  v8 = 0;
  v7 = 0xE000000000000000;
LABEL_18:
  sub_2413545EC();
  MEMORY[0x245CE20D0](0x74654D656C69463CLL, 0xEF2E206174616461);
  sub_2413546CC();
  MEMORY[0x245CE20D0](0x616C506F74756120, 0xEA00000000003A79);
  MEMORY[0x245CE20D0](v4, v3);

  MEMORY[0x245CE20D0](0x6974616D696E6120, 0xEF3A706F6F4C6E6FLL);
  MEMORY[0x245CE20D0](v8, v7);

  MEMORY[0x245CE20D0](0x737265564C424920, 0xEC0000003A6E6F69);
  v11 = sub_24135491C();
  MEMORY[0x245CE20D0](v11);

  return 0;
}

uint64_t sub_24126228C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *, __n128))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850, &unk_241366BF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  v11 = a1[5];
  v21[4] = a1[4];
  v21[5] = v11;
  v22[0] = a1[6];
  *(v22 + 9) = *(a1 + 105);
  v12 = a1[1];
  v21[0] = *a1;
  v21[1] = v12;
  v13 = a1[3];
  v21[2] = a1[2];
  v21[3] = v13;
  if (qword_27E537D08 != -1)
  {
    swift_once();
  }

  v14 = qword_27E53A740;
  v15 = sub_241353EEC();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = qword_27E537D00;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_27E53A738;
  v18 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor, &unk_24136B618);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  *(v19 + 32) = v14;
  *(v19 + 40) = 9;
  *(v19 + 48) = a2;
  *(v19 + 56) = a3;

  sub_241327238(0, 0, v10, &unk_241366D40, v19);

  return (a4)(v21);
}

uint64_t sub_2412624BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[36] = a5;
  v6[37] = a6;
  v6[35] = a4;
  v7 = sub_24135164C();
  v6[38] = v7;
  v6[39] = *(v7 - 8);
  v6[40] = swift_task_alloc();
  v8 = sub_24135152C();
  v6[41] = v8;
  v6[42] = *(v8 - 8);
  v6[43] = swift_task_alloc();
  sub_241353ECC();
  v6[44] = sub_241353EBC();
  v10 = sub_241353E8C();
  v6[45] = v10;
  v6[46] = v9;

  return MEMORY[0x2822009F8](sub_241262610, v10, v9);
}

uint64_t sub_241262610()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v4 = v0[35];
  sub_241352C5C();
  v5 = *(v2 + 16);
  v0[47] = v5;
  v0[48] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = swift_task_alloc();
  v0[49] = v6;
  *v6 = v0;
  v6[1] = sub_241262704;
  v7 = v0[43];

  return MEMORY[0x282129AA0](v7, 0, 0);
}

uint64_t sub_241262704(uint64_t a1)
{
  v3 = *v2;
  v3[50] = a1;
  v3[51] = v1;

  v4 = v3[45];
  v5 = v3[46];
  if (v1)
  {
    v6 = sub_241262C50;
  }

  else
  {
    v6 = sub_241262818;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_241262818()
{
  v43 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);

  sub_24135163C();
  v4 = sub_2413515FC();
  v33 = v5;
  v34 = v4;
  (*(v2 + 8))(v1, v3);
  if (qword_27E537C60 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 400);
  v32 = *(v0 + 376);
  v7 = *(v0 + 336);
  v35 = *(v0 + 288);
  v30 = *(v0 + 280);
  v31 = *(v0 + 328);
  v8 = xmmword_27E541898;
  v9 = qword_27E5418A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900, &qword_241366C30);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_241365C30;
  *(v10 + 32) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538A60, &qword_241366C38);
  v11 = *(sub_241351DEC() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_241365EA0;
  v14 = (v13 + v12);
  *v14 = xmmword_241365E70;
  v14[1] = xmmword_241364640;
  v14[2] = xmmword_241365EE0;
  v14[3] = xmmword_241365D00;
  (*(v11 + 104))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538870, &qword_241366C40);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_241365EA0;
  v32(v16 + v15, v30, v31);

  v17 = sub_2412452E4(MEMORY[0x277D84F90]);
  *(v0 + 272) = 1;
  *(v0 + 144) = v34;
  *(v0 + 152) = v33;
  *(v0 + 160) = 512;
  *(v0 + 162) = 2;
  *(v0 + 168) = 1;
  *(v0 + 176) = v8;
  *(v0 + 192) = v9;
  *(v0 + 208) = v10;
  *(v0 + 216) = v13;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 240) = *(v0 + 272);
  *(v0 + 248) = v16;
  *(v0 + 256) = v17;
  sub_24127C094(v0 + 144);
  v18 = *(v0 + 224);
  v40 = *(v0 + 208);
  v41 = v18;
  v42[0] = *(v0 + 240);
  *(v42 + 9) = *(v0 + 249);
  v19 = *(v0 + 160);
  v36 = *(v0 + 144);
  v37 = v19;
  v20 = *(v0 + 192);
  v38 = *(v0 + 176);
  v39 = v20;
  v35(&v36);
  v21 = v41;
  *(v0 + 80) = v40;
  *(v0 + 96) = v21;
  *(v0 + 112) = v42[0];
  *(v0 + 121) = *(v42 + 9);
  v22 = v37;
  *(v0 + 16) = v36;
  *(v0 + 32) = v22;
  v23 = v39;
  *(v0 + 48) = v38;
  *(v0 + 64) = v23;
  sub_241246278(v0 + 16, &qword_27E538348, &qword_241366C10);
  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v24 = sub_241352FFC();
  __swift_project_value_buffer(v24, qword_27E5384A0);
  v25 = sub_241352FDC();
  v26 = sub_2413540DC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_241215000, v25, v26, "Loaded via Entity.init", v27, 2u);
    MEMORY[0x245CE4870](v27, -1, -1);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_241262C50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241262CC8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5)
{
  v10 = qword_27E537B10;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_241352FFC();
  __swift_project_value_buffer(v11, qword_27E5384A0);
  v12 = sub_241352FDC();
  v13 = sub_2413540DC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = [objc_opt_self() currentThread];
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&dword_241215000, v12, v13, "Using legacy SceneImport loading, Thread: %@", v14, 0xCu);
    sub_241246278(v15, &unk_27E539B90, &unk_2413660D0);
    MEMORY[0x245CE4870](v15, -1, -1);
    MEMORY[0x245CE4870](v14, -1, -1);
  }

  sub_241274E34(a1, a2, a3, a4, a5);
  swift_bridgeObjectRelease_n();
}

void sub_241262E74(char *a1, void (*a2)(void), uint64_t a3)
{
  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v6 = sub_241352FFC();
  __swift_project_value_buffer(v6, qword_27E5384A0);
  v7 = sub_241352FDC();
  v8 = sub_2413540DC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = [objc_opt_self() currentThread];
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_241215000, v7, v8, "Using legacy SceneImport loading, Thread: %@", v9, 0xCu);
    sub_241246278(v10, &unk_27E539B90, &unk_2413660D0);
    MEMORY[0x245CE4870](v10, -1, -1);
    MEMORY[0x245CE4870](v9, -1, -1);
  }

  sub_241262FEC(a1, a2, a3);
}

void sub_241262FEC(char *a1, void (*a2)(void), uint64_t a3)
{
  v139 = a2;
  v140 = a3;
  v165 = *MEMORY[0x277D85DE8];
  Information = type metadata accessor for AssetLoader.LoadInformation(0);
  MEMORY[0x28223BE20](Information);
  v5 = v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_24135152C();
  v6 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v133 = v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v151 = v128 - v9;
  MEMORY[0x28223BE20](v10);
  v153 = v128 - v11;
  MEMORY[0x28223BE20](v12);
  v149 = v128 - v13;
  MEMORY[0x28223BE20](v14);
  v147 = v128 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v128 - v17;
  MEMORY[0x28223BE20](v19);
  v136 = v128 - v20;
  v132 = v21;
  MEMORY[0x28223BE20](v22);
  v137 = v128 - v23;
  v24 = sub_2413515EC();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = objc_allocWithZone(MEMORY[0x277D778A8]);
  v29 = sub_24135144C();
  v30 = [v28 initSceneFromURL_];

  if (!v30)
  {
    goto LABEL_12;
  }

  v150 = v6;
  v130 = v5;
  v131 = a1;
  v31 = v30;
  v32 = [v30 rootNode];
  v33 = sub_241353BDC();
  v34 = sub_241353BDC();
  v35 = [v32 dictionaryMetadataWithKey:v33 dictionaryKey:v34];

  if (!v35)
  {

    a1 = v131;
LABEL_12:
    LOBYTE(v163[0]) = 0;
    sub_241267EFC(a1, v163, v139, v140);
    return;
  }

  v129 = v31;
  v36 = [v35 resourcePathArray];
  sub_241246158(0, &qword_27E538570, 0x277D778A0);
  v138 = sub_241353E2C();

  sub_2413515DC();
  sub_2413515BC();
  v38 = v37;
  (*(v25 + 8))(v27, v24);
  v39 = v38 * 1000.0;
  if (COERCE__INT64(fabs(v38 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_59;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_60:
    __break(1u);
  }

  else if (v39 < 9.22337204e18)
  {
    v31 = v35;
    v148 = v18;
    *&v163[0] = v39;
    v40 = sub_24135491C();
    v42 = sub_2412720D0(8uLL, v40, v41);
    v44 = v43;
    v46 = v45;
    v48 = v47;

    MEMORY[0x245CE2060](v42, v44, v46, v48);

    if (qword_27E537BD8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_62;
  }

  __break(1u);
LABEL_62:
  swift_once();
LABEL_7:
  *&v163[0] = qword_27E539620;
  v49 = qword_27E539620;
  MRQLFileManager.documentDirectory()(v137);

  *&v163[0] = qword_27E539620;
  v50 = qword_27E539620;
  MRQLFileManager.createTemporaryDirectory(destinationURL:)();

  v51 = v148;
  sub_24135146C();

  v52 = v150;
  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v53 = sub_241352FFC();
  v54 = __swift_project_value_buffer(v53, qword_27E5384A0);
  v55 = v147;
  v56 = v51;
  v57 = v152;
  v145 = *(v52 + 16);
  v146 = v52 + 16;
  v145(v147, v56, v152);
  v128[1] = v54;
  v58 = sub_241352FDC();
  v59 = sub_2413540DC();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *&v163[0] = v61;
    *v60 = 136315138;
    sub_24127F10C(&qword_27E539990, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v62 = sub_24135491C();
    v63 = v55;
    v65 = v64;
    v147 = *(v52 + 8);
    (v147)(v63, v57);
    v66 = sub_2412DDC2C(v62, v65, v163);

    *(v60 + 4) = v66;
    _os_log_impl(&dword_241215000, v58, v59, "Unzipping to '%s'", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x245CE4870](v61, -1, -1);
    MEMORY[0x245CE4870](v60, -1, -1);
  }

  else
  {

    v147 = *(v52 + 8);
    (v147)(v55, v57);
  }

  v67 = v149;
  v68 = [objc_opt_self() defaultManager];
  v69 = v148;
  v70 = sub_24135144C();
  *&v163[0] = 0;
  v71 = [v68 createDirectoryAtURL:v70 withIntermediateDirectories:1 attributes:0 error:v163];

  v72 = *&v163[0];
  if (!v71)
  {
    v91 = *&v163[0];

    v92 = sub_24135139C();

    swift_willThrow();
    goto LABEL_34;
  }

  v73 = v138;
  if (v138 >> 62)
  {
    v74 = sub_2413544EC();
  }

  else
  {
    v74 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v75 = v150;
  v128[0] = v31;
  if (!v74)
  {
    v78 = v72;
    v141 = 0;
LABEL_36:
    MEMORY[0x28223BE20](v78);
    v128[-2] = v69;
    sub_24125F980(sub_241280800, &v128[-4], v73);
    v97 = v96;

    v98 = v97;
    v144 = *(v97 + 2);
    if (!v144)
    {
      v100 = MEMORY[0x277D84F90];
LABEL_51:

      v113 = sub_241352FDC();
      v114 = sub_2413540DC();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 134217984;
        *(v115 + 4) = *(v100 + 16);

        _os_log_impl(&dword_241215000, v113, v114, "Found %ld USDZ files", v115, 0xCu);
        MEMORY[0x245CE4870](v115, -1, -1);
      }

      else
      {
      }

      v116 = v150;
      v118 = v139;
      v117 = v140;
      v119 = v130;
      sub_24127BF00(v131, v130);
      v120 = *(Information + 40);

      *&v119[v120] = v100;
      LOBYTE(v163[0]) = 1;
      v121 = v133;
      v122 = v152;
      v145(v133, v69, v152);
      v123 = (*(v116 + 80) + 16) & ~*(v116 + 80);
      v124 = (v132 + v123 + 7) & 0xFFFFFFFFFFFFFFF8;
      v125 = swift_allocObject();
      (*(v116 + 32))(v125 + v123, v121, v122);
      v126 = (v125 + v124);
      *v126 = v118;
      v126[1] = v117;

      sub_241267EFC(v119, v163, sub_24128084C, v125);

      v127 = v147;
      (v147)(v136, v122);
      v127(v137, v122);
      sub_241244A8C(v119);
      v127(v148, v122);
      return;
    }

    v99 = 0;
    v143 = v150 + 8;
    v149 = (v150 + 32);
    v100 = MEMORY[0x277D84F90];
    v101 = v152;
    while (1)
    {
      if (v99 >= *(v98 + 2))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v102 = (*(v150 + 80) + 32) & ~*(v150 + 80);
      v31 = v98;
      v103 = *(v150 + 72);
      v145(v153, &v98[v102 + v103 * v99], v101);
      sub_2413513FC();
      v104 = sub_241353C8C();
      v106 = v105;

      if (v104 == 2053403509 && v106 == 0xE400000000000000)
      {
        break;
      }

      v107 = sub_24135497C();

      if (v107)
      {
        goto LABEL_45;
      }

      (v147)(v153, v101);
LABEL_39:
      ++v99;
      v69 = v148;
      v98 = v31;
      if (v144 == v99)
      {
        goto LABEL_51;
      }
    }

LABEL_45:
    v108 = *v149;
    (*v149)(v151, v153, v101);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v163[0] = v100;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2412DE254(0, *(v100 + 16) + 1, 1);
      v100 = *&v163[0];
    }

    v111 = *(v100 + 16);
    v110 = *(v100 + 24);
    if (v111 >= v110 >> 1)
    {
      sub_2412DE254((v110 > 1), v111 + 1, 1);
      v100 = *&v163[0];
    }

    *(v100 + 16) = v111 + 1;
    v112 = v100 + v102 + v111 * v103;
    v101 = v152;
    v108(v112, v151, v152);
    goto LABEL_39;
  }

  v76 = objc_opt_self();
  v149 = (v73 & 0xC000000000000001);
  v135 = v73 & 0xFFFFFFFFFFFFFF8;
  v143 = v75 + 8;
  v144 = v76;
  v77 = v72;
  v31 = 0;
  v141 = 0;
  v142 = v74;
  while (1)
  {
    if (v149)
    {
      v79 = MEMORY[0x245CE29C0](v31, v73);
    }

    else
    {
      if (v31 >= *(v135 + 16))
      {
        goto LABEL_58;
      }

      v79 = *(v73 + 8 * v31 + 32);
    }

    v80 = v79;
    v81 = (v31 + 1);
    if (__OFADD__(v31, 1))
    {
      goto LABEL_57;
    }

    v82 = [v79 path];
    sub_241353C0C();

    sub_24135146C();

    v83 = [v80 resolvedPath];
    if (!v83)
    {
      sub_241353C0C();
      v83 = sub_241353BDC();
    }

    v84 = [v144 resourceWithPath_];

    if (v84)
    {
      break;
    }

    (v147)(v67, v152);
LABEL_20:

    ++v31;
    if (v81 == v142)
    {
      goto LABEL_36;
    }
  }

  v85 = [v84 dataNoCopy];
  if (!v85)
  {
    (v147)(v67, v152);

    goto LABEL_20;
  }

  v86 = v85;
  v87 = sub_24135154C();
  v89 = v88;

  v90 = v141;
  sub_24135155C();
  v141 = v90;
  if (!v90)
  {
    (v147)(v67, v152);
    sub_24125D520(v87, v89);

    v80 = v84;
    v73 = v138;
    goto LABEL_20;
  }

  (v147)(v67, v152);

  sub_24125D520(v87, v89);

  v31 = v128[0];
  v92 = v141;
LABEL_34:
  *&v161[0] = v92;
  sub_24127BE04(v161);
  v158 = v161[4];
  v159 = v161[5];
  v160[0] = v162[0];
  *(v160 + 9) = *(v162 + 9);
  v154 = v161[0];
  v155 = v161[1];
  v156 = v161[2];
  v157 = v161[3];
  v93 = v92;
  v139(&v154);

  v163[4] = v158;
  v163[5] = v159;
  v164[0] = v160[0];
  *(v164 + 9) = *(v160 + 9);
  v163[0] = v154;
  v163[1] = v155;
  v163[2] = v156;
  v163[3] = v157;
  sub_241246278(v163, &qword_27E538348, &qword_241366C10);
  v94 = v152;
  v95 = v147;
  (v147)(v136, v152);
  v95(v137, v94);
  v95(v69, v94);
}

double sub_241263F88(uint64_t a1)
{
  v73 = a1;
  v2 = sub_241353ABC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v70 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v71 = &v70 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v70 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v70 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v70 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v70 - v17;
  v72 = v1;
  v19 = sub_241353AEC();

  MEMORY[0x245CE1E60](0x79616C506F747561, 0xE800000000000000);
  v75 = v19;
  sub_241353B2C();
  v74 = *(v3 + 8);
  v74(v18, v2);
  v20 = v76;
  if (v76 != 2)
  {
    *(v73 + 17) = v76;
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v21 = sub_241352FFC();
    __swift_project_value_buffer(v21, qword_27E5384A0);
    v22 = sub_241352FDC();
    v23 = sub_2413540DC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67109120;
      *(v24 + 4) = v20 & 1;
      _os_log_impl(&dword_241215000, v22, v23, "[AssetLoader] USDZ+ specifies shouldAutoPlay = %{BOOL}d", v24, 8u);
      MEMORY[0x245CE4870](v24, -1, -1);
    }
  }

  MEMORY[0x245CE1E60](0x6B63616279616C70, 0xEC00000065646F4DLL);
  sub_241353B2C();

  v25 = v74;
  v74(v15, v2);
  if (v77)
  {
    if (v76 == 1886351212 && v77 == 0xE400000000000000)
    {
      v26 = 1;
    }

    else
    {
      v26 = sub_24135497C();
    }

    v28 = v73;

    *(v28 + 18) = v26 & 1;
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v29 = sub_241352FFC();
    __swift_project_value_buffer(v29, qword_27E5384A0);
    v30 = sub_241352FDC();
    v31 = sub_2413540DC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v76 = v33;
      *v32 = 136315138;
      if (v26)
      {
        v34 = 5457241;
      }

      else
      {
        v34 = 20302;
      }

      if (v26)
      {
        v35 = 0xE300000000000000;
      }

      else
      {
        v35 = 0xE200000000000000;
      }

      v36 = sub_2412DDC2C(v34, v35, &v76);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_241215000, v30, v31, "[AssetLoader] USDZ+ specifies shouldAnimationLoop = %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x245CE4870](v33, -1, -1);
      MEMORY[0x245CE4870](v32, -1, -1);
    }

LABEL_26:

    v25 = v74;
    goto LABEL_41;
  }

  MEMORY[0x245CE1E60](0x6B63616279616C70, 0xEC00000065646F4DLL);
  sub_241353AFC();
  v25(v12, v2);
  if (v77)
  {
    if (v76 == 1886351212 && v77 == 0xE400000000000000)
    {
      v27 = 1;
    }

    else
    {
      v27 = sub_24135497C();
    }

    v28 = v73;

    *(v28 + 18) = v27 & 1;
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v38 = sub_241352FFC();
    __swift_project_value_buffer(v38, qword_27E5384A0);
    v39 = sub_241352FDC();
    v40 = sub_2413540DC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v76 = v42;
      *v41 = 136315138;
      if (v27)
      {
        v43 = 5457241;
      }

      else
      {
        v43 = 20302;
      }

      if (v27)
      {
        v44 = 0xE300000000000000;
      }

      else
      {
        v44 = 0xE200000000000000;
      }

      v45 = sub_2412DDC2C(v43, v44, &v76);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_241215000, v39, v40, "[AssetLoader] USDZ customLayerData specifies shouldAnimationLoop = %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x245CE4870](v42, -1, -1);
      v46 = v41;
      v25 = v74;
      MEMORY[0x245CE4870](v46, -1, -1);
    }
  }

  else
  {
    MEMORY[0x245CE1E60](0xD000000000000016, 0x800000024135EC60);
    sub_241353AFC();
    v25(v9, v2);
    v37 = v76;
    if (v76 != 2)
    {
      v28 = v73;
      *(v73 + 18) = v76;
      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v63 = sub_241352FFC();
      __swift_project_value_buffer(v63, qword_27E5384A0);
      v30 = sub_241352FDC();
      v64 = sub_2413540DC();
      if (os_log_type_enabled(v30, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v76 = v66;
        *v65 = 136315138;
        if (v37)
        {
          v67 = 5457241;
        }

        else
        {
          v67 = 20302;
        }

        if (v37)
        {
          v68 = 0xE300000000000000;
        }

        else
        {
          v68 = 0xE200000000000000;
        }

        v69 = sub_2412DDC2C(v67, v68, &v76);

        *(v65 + 4) = v69;
        _os_log_impl(&dword_241215000, v30, v64, "[AssetLoader] USDZ customLayerData specifies shouldAnimationLoop = %s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x245CE4870](v66, -1, -1);
        MEMORY[0x245CE4870](v65, -1, -1);
      }

      goto LABEL_26;
    }

    v28 = v73;
  }

LABEL_41:
  v47 = v71;
  MEMORY[0x245CE1E60](0xD000000000000019, 0x800000024135EC80);
  sub_241353AFC();
  v25(v47, v2);
  if ((v77 & 1) == 0)
  {
    v59 = v76;
    *(v28 + 24) = v76;
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v60 = sub_241352FFC();
    __swift_project_value_buffer(v60, qword_27E5384A0);
    v51 = sub_241352FDC();
    v61 = sub_2413540DC();
    if (!os_log_type_enabled(v51, v61))
    {
      goto LABEL_52;
    }

    v53 = swift_slowAlloc();
    *v53 = 134217984;
    *(v53 + 4) = v59;
    v54 = "[AssetLoader] USDZ customLayerData specifies Apple:preferredIblVersion = %ld";
    v55 = v61;
    v56 = v51;
    v57 = v53;
    v58 = 12;
    goto LABEL_51;
  }

  v48 = v70;
  MEMORY[0x245CE1E60](0xD000000000000019, 0x800000024135EC80);
  sub_241353AFC();
  v25(v48, v2);
  if ((v76 & 0x100000000) == 0)
  {
    v49 = v76;
    *(v28 + 24) = v76;
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v50 = sub_241352FFC();
    __swift_project_value_buffer(v50, qword_27E5384A0);
    v51 = sub_241352FDC();
    v52 = sub_2413540DC();
    if (!os_log_type_enabled(v51, v52))
    {
      goto LABEL_52;
    }

    v53 = swift_slowAlloc();
    *v53 = 67109120;
    *(v53 + 4) = v49;
    v54 = "[AssetLoader] USDZ customLayerData specifies (Int32) Apple:preferredIblVersion = %d";
    v55 = v52;
    v56 = v51;
    v57 = v53;
    v58 = 8;
LABEL_51:
    _os_log_impl(&dword_241215000, v56, v55, v54, v57, v58);
    MEMORY[0x245CE4870](v53, -1, -1);
LABEL_52:
  }

  return result;
}

double sub_2412649DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v31 = a8;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v30 = a1;
  v28 = a6;
  v29 = a9;
  v12 = sub_24135152C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  Information = type metadata accessor for AssetLoader.LoadInformation(0);
  v16 = *(Information - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](Information - 8);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a7;
  sub_24127BF00(a6, v18);
  (*(v13 + 16))(&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v13 + 80) + v21 + 8) & ~*(v13 + 80);
  v23 = swift_allocObject();
  sub_241244A20(v18, v23 + v19);
  v24 = (v23 + v20);
  v25 = v30;
  v26 = v29;
  *v24 = v31;
  v24[1] = v26;
  *(v23 + v21) = v25;
  (*(v13 + 32))(v23 + v22, &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);

  sub_24127D500(v28, &v35, v32, v33, v34, sub_24127F2AC);

  return result;
}

void sub_241264C24(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v81 = a6;
  v82 = a5;
  v83 = a4;
  v84 = a3;
  v86 = a2;
  v7 = sub_2413538CC();
  v75 = *(v7 - 8);
  v76 = v7;
  MEMORY[0x28223BE20](v7);
  v73 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_2413538FC();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24135152C();
  v79 = *(v10 - 8);
  v80 = v10;
  MEMORY[0x28223BE20](v10);
  v77 = v11;
  v78 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850, &unk_241366BF0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v67 - v13;
  v15 = sub_24135164C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2413517BC();
  v85 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[1];
  v96 = *a1;
  v97 = v22;
  v98 = a1[2];
  v99 = *(a1 + 6);
  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v23 = sub_241352FFC();
  __swift_project_value_buffer(v23, qword_27E5384A0);
  sub_241255B50(&v96, &v92);
  v24 = sub_241352FDC();
  v25 = sub_2413540DC();
  sub_241244AE8(&v96);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v69 = v16;
    v27 = v26;
    v28 = swift_slowAlloc();
    v70 = v15;
    v29 = v28;
    v87[0] = v28;
    *v27 = 136315138;
    v88 = v96;
    v89 = v97;
    v90 = v98;
    v91 = v99;
    sub_241255B50(&v96, &v92);
    v30 = AssetLoader.FileMetadata.description.getter();
    v68 = v18;
    v31 = v19;
    v32 = v14;
    v34 = v33;
    v92 = v88;
    v93 = v89;
    v94 = v90;
    v95 = v91;
    sub_241244AE8(&v92);
    v35 = sub_2412DDC2C(v30, v34, v87);
    v14 = v32;
    v19 = v31;
    v18 = v68;

    *(v27 + 4) = v35;
    _os_log_impl(&dword_241215000, v24, v25, "[AssetLoader] fileMetadata %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v36 = v29;
    v15 = v70;
    MEMORY[0x245CE4870](v36, -1, -1);
    v37 = v27;
    v16 = v69;
    MEMORY[0x245CE4870](v37, -1, -1);
  }

  sub_241352DAC();
  Information = type metadata accessor for AssetLoader.LoadInformation(0);
  v39 = *(v86 + *(Information + 20));
  *(&v93 + 1) = MEMORY[0x277D841D8];
  *&v92 = v39;
  sub_2413516EC();
  __swift_destroy_boxed_opaque_existential_0(&v92);
  v40 = sub_241352CAC();
  (*(v85 + 8))(v21, v19);
  sub_24135163C();
  v41 = sub_2413515FC();
  v43 = v42;
  (*(v16 + 8))(v18, v15);
  if (qword_27E537D08 != -1)
  {
    swift_once();
  }

  v44 = qword_27E53A740;
  v45 = sub_241353EEC();
  (*(*(v45 - 8) + 56))(v14, 1, 1, v45);
  v46 = qword_27E537D00;

  if (v46 != -1)
  {
    swift_once();
  }

  v47 = qword_27E53A738;
  v48 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor, &unk_24136B618);
  v49 = swift_allocObject();
  *(v49 + 16) = v47;
  *(v49 + 24) = v48;
  *(v49 + 32) = v44;
  *(v49 + 40) = 3;
  *(v49 + 48) = v41;
  *(v49 + 56) = v43;

  sub_241327238(0, 0, v14, &unk_241366D20, v49);

  if (sub_241352D9C())
  {
    sub_241351ECC();
    sub_241351C6C();

    v50 = sub_241351E6C();
    v85 = v40;
    v51 = v78;
    v52 = v79;
    v53 = v80;
    (*(v79 + 16))(v78, v81, v80);
    v54 = (*(v52 + 80) + 120) & ~*(v52 + 80);
    v55 = swift_allocObject();
    v56 = v97;
    *(v55 + 56) = v96;
    *(v55 + 16) = v50;
    *(v55 + 24) = v41;
    v58 = v83;
    v57 = v84;
    *(v55 + 32) = v43;
    *(v55 + 40) = v57;
    *(v55 + 48) = v58;
    *(v55 + 72) = v56;
    *(v55 + 88) = v98;
    v59 = v82;
    *(v55 + 104) = v99;
    *(v55 + 112) = v59;
    (*(v52 + 32))(v55 + v54, v51, v53);
    *&v90 = sub_24127F3A8;
    *(&v90 + 1) = v55;
    *&v88 = MEMORY[0x277D85DD0];
    *(&v88 + 1) = 1107296256;
    *&v89 = sub_2412F49E8;
    *(&v89 + 1) = &block_descriptor_267;
    v60 = _Block_copy(&v88);
    sub_241255B50(&v96, &v92);

    sub_241351E9C();
    _Block_release(v60);

    sub_241351EBC();
    v61 = *(v86 + *(Information + 28));
    if (v61)
    {
      v62 = v61;
      *&v94 = sub_24127F42C;
      *(&v94 + 1) = v50;
      *&v92 = MEMORY[0x277D85DD0];
      *(&v92 + 1) = 1107296256;
      *&v93 = sub_2412D5698;
      *(&v93 + 1) = &block_descriptor_270;
      v63 = _Block_copy(&v92);

      v64 = v71;
      sub_2413538DC();
      *&v88 = MEMORY[0x277D84F90];
      sub_24127F10C(&qword_27E539870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930, &unk_2413674A0);
      sub_24123D370(&qword_27E539880, &unk_27E538930, &unk_2413674A0, MEMORY[0x277D83970]);
      v65 = v73;
      v66 = v76;
      sub_24135444C();
      MEMORY[0x245CE2540](0, v64, v65, v63);

      _Block_release(v63);

      (*(v75 + 8))(v65, v66);
      (*(v72 + 8))(v64, v74);
    }

    else
    {
      sub_241351E8C();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2412656EC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, __n128), void *a6, uint64_t a7, void *a8, uint64_t a9)
{
  v57[0] = a8;
  v57[1] = a6;
  v58 = a5;
  v59 = a2;
  v13 = *(a7 + 16);
  v81 = *a7;
  v82 = v13;
  v83 = *(a7 + 32);
  v84 = *(a7 + 48);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850, &unk_241366BF0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v57 - v15;
  if (qword_27E537D08 != -1)
  {
    swift_once();
  }

  v17 = qword_27E53A740;
  v18 = sub_241353EEC();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  v19 = qword_27E537D00;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = qword_27E53A738;
  v21 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor, &unk_24136B618);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;
  *(v22 + 32) = v17;
  *(v22 + 40) = 3;
  *(v22 + 48) = a3;
  *(v22 + 56) = a4;

  sub_241327238(0, 0, v16, &unk_241366D28, v22);

  if (a1)
  {
    if ([objc_opt_self() forceUseOldProcessLoadedEntities])
    {
      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v23 = sub_241352FFC();
      __swift_project_value_buffer(v23, qword_27E5384A0);
      v24 = sub_241352FDC();
      v25 = sub_2413540DC();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_241215000, v24, v25, "force using old processLoadedEntities", v26, 2u);
        MEMORY[0x245CE4870](v26, -1, -1);
      }

      v27 = *(a7 + 16);
      v75 = *a7;
      v76 = v27;
      v77[0] = *(a7 + 32);
      *&v77[1] = *(a7 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900, &qword_241366C30);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_241365C30;
      *(v28 + 32) = v57[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538870, &qword_241366C40);
      v29 = sub_24135152C();
      v30 = *(v29 - 8);
      v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_241365EA0;
      (*(v30 + 16))(v32 + v31, a9, v29);

      sub_241265FA4(&v75, v28, v32, &v68);

      (v58)(&v68);
      v78 = v72;
      v79 = v73;
      v80[0] = v74[0];
      *(v80 + 9) = *(v74 + 9);
      v75 = v68;
      v76 = v69;
      v33 = v70;
      v34 = v71;
    }

    else
    {
      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v51 = sub_241352FFC();
      __swift_project_value_buffer(v51, qword_27E5384A0);
      v52 = sub_241352FDC();
      v53 = sub_2413540DC();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_241215000, v52, v53, "using new processLoadedEntitiesCDM", v54, 2u);
        MEMORY[0x245CE4870](v54, -1, -1);
      }

      v55 = *(a7 + 16);
      v68 = *a7;
      v69 = v55;
      v70 = *(a7 + 32);
      *&v71 = *(a7 + 48);
      sub_241267118(v68.i64, v57[0], &v75);
      v68 = v81;
      v69 = v82;
      v70 = v83;
      *&v71 = v84;
      v60 = v77[0];
      v72 = v75;
      v73 = v76;
      LOBYTE(v74[0]) = v77[0];
      *(v74 + 8) = *(v77 + 8);
      sub_24127C094(&v68);
      v65 = v72;
      v66 = v73;
      v67[0] = v74[0];
      *(v67 + 9) = *(v74 + 9);
      v61 = v68;
      v62 = v69;
      v63 = v70;
      v64 = v71;
      sub_241255B50(a7, &v75);
      (v58)(&v61);
      v78 = v65;
      v79 = v66;
      v80[0] = v67[0];
      *(v80 + 9) = *(v67 + 9);
      v75 = v61;
      v76 = v62;
      v33 = v63;
      v34 = v64;
    }

    v77[0] = v33;
    v77[1] = v34;
    sub_241246278(&v75, &qword_27E538348, &qword_241366C10);
    *&v77[0] = nullsub_6;
    *(&v77[0] + 1) = 0;
    v75.i64[0] = MEMORY[0x277D85DD0];
    v75.i64[1] = 1107296256;
    *&v76 = sub_2412F49E8;
    *(&v76 + 1) = &block_descriptor_281;
    v50 = &v75;
  }

  else
  {
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v35 = sub_241352FFC();
    __swift_project_value_buffer(v35, qword_27E5384A0);
    v36 = sub_241352FDC();
    v37 = sub_2413540BC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v68.i64[0] = v39;
      *v38 = 136315138;
      v75.i64[0] = 0xD000000000000022;
      v75.i64[1] = 0x800000024135EDF0;
      *&v76 = 0;
      BYTE8(v76) = 0;
      sub_241255C30(v39, v40, v41);
      v42 = sub_241354A3C();
      v44 = sub_2412DDC2C(v42, v43, v68.i64);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_241215000, v36, v37, "%s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x245CE4870](v39, -1, -1);
      MEMORY[0x245CE4870](v38, -1, -1);
    }

    sub_241255C30(v45, v46, v47);
    v48 = swift_allocError();
    *v49 = 0xD000000000000022;
    *(v49 + 8) = 0x800000024135EDF0;
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    v68.i64[0] = v48;
    sub_24127BE04(&v68);
    v65 = v72;
    v66 = v73;
    v67[0] = v74[0];
    *(v67 + 9) = *(v74 + 9);
    v61 = v68;
    v62 = v69;
    v63 = v70;
    v64 = v71;
    (v58)(&v61);
    v78 = v65;
    v79 = v66;
    v80[0] = v67[0];
    *(v80 + 9) = *(v67 + 9);
    v75 = v61;
    v76 = v62;
    v77[0] = v63;
    v77[1] = v64;
    sub_241246278(&v75, &qword_27E538348, &qword_241366C10);
    *&v63 = nullsub_6;
    *(&v63 + 1) = 0;
    v61.i64[0] = MEMORY[0x277D85DD0];
    v61.i64[1] = 1107296256;
    *&v62 = sub_2412F49E8;
    *(&v62 + 1) = &block_descriptor_278;
    v50 = &v61;
  }

  v56 = _Block_copy(v50);
  sub_241351E9C();
  _Block_release(v56);
}

void sub_241265FA4(int8x16_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, int8x16_t *a4@<X8>)
{
  v126 = a3;
  v7 = sub_241351D5C();
  v123 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v122 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_241351DEC();
  v121 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v120 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_24135173C();
  v10 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v12 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850, &unk_241366BF0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_24135164C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[1];
  v144 = *a1;
  v145 = v20;
  v146 = a1[2];
  v147 = a1[3].i64[0];
  v135 = a2;
  if (a2 >> 62)
  {
LABEL_53:
    v21 = sub_2413544EC();
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_54:
    v136.i64[0] = 0;
    v136.i64[1] = 0xE000000000000000;
    sub_2413545EC();

    v136.i64[0] = 0xD000000000000020;
    v136.i64[1] = 0x800000024135ECD0;
    v98 = sub_24135152C();
    v99 = MEMORY[0x245CE21F0](v126, v98);
    MEMORY[0x245CE20D0](v99);

    v101 = v136;
    sub_241255C30(v100, v102, v103);
    v104 = swift_allocError();
    *v105 = v101;
    v105[1].i64[0] = 0;
    v105[1].i8[8] = 0;
    v136.i64[0] = v104;
    sub_24127BE04(&v136);
    v106 = v141;
    a4[4] = v140;
    a4[5] = v106;
    a4[6] = *v142;
    *(a4 + 105) = *&v142[9];
    v107 = v137;
    *a4 = v136;
    a4[1] = v107;
    v108 = v139;
    a4[2] = v138;
    a4[3] = v108;
    return;
  }

  v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_54;
  }

LABEL_3:
  v109 = v7;
  sub_24135163C();
  v124 = sub_2413515FC();
  v23 = v22;
  (*(v17 + 8))(v19, v16);
  if (qword_27E537D08 != -1)
  {
    swift_once();
  }

  v24 = qword_27E53A740;
  v25 = sub_241353EEC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v118 = v25;
  v117 = v27;
  v116 = v26 + 56;
  (v27)(v15, 1, 1);
  v28 = qword_27E537D00;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_27E53A738;
  v30 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor, &unk_24136B618);
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v30;
  v114 = v30;
  v119 = v24;
  *(v31 + 32) = v24;
  *(v31 + 40) = 4;
  *(v31 + 48) = v124;
  *(v31 + 56) = v23;
  v115 = v29;

  sub_241327238(0, 0, v15, &unk_241366C78, v31);

  v130 = sub_24135255C();
  if (v21 >= 1)
  {
    v111 = v23;
    v112 = v15;
    v113 = a4;
    v33 = 0;
    v34 = v135;
    v134 = v135 & 0xC000000000000001;
    v129 = (v10 + 8);
    v7 = MEMORY[0x277D84F98];
    *&v32 = 136315138;
    v127 = v32;
    v128 = v21;
    do
    {
      if (v134)
      {
        v15 = MEMORY[0x245CE29C0](v33);
      }

      else
      {
        v15 = *(v34 + 8 * v33 + 32);
      }

      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v36 = sub_241352FFC();
      v37 = __swift_project_value_buffer(v36, qword_27E5384A0);

      v132 = v37;
      v38 = sub_241352FDC();
      v39 = sub_2413540DC();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v136.i64[0] = v41;
        *v40 = v127;
        v143 = v15;
        sub_241352C5C();

        v42 = sub_241353C7C();
        v44 = sub_2412DDC2C(v42, v43, v136.i64);

        *(v40 + 4) = v44;
        _os_log_impl(&dword_241215000, v38, v39, "processLoadedEntities, entity: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x245CE4870](v41, -1, -1);
        MEMORY[0x245CE4870](v40, -1, -1);
      }

      printHierarchy(entity:level:debugString:)(v15, 0, 0, 0xE000000000000000);
      v45 = swift_conformsToProtocol2();
      if (v45)
      {
        v10 = v45;
        swift_retain_n();
        v16 = v15;
      }

      else
      {
        sub_24135181C();
        swift_allocObject();
        v16 = sub_24135180C();
        swift_retain_n();
        sub_24135189C();

        v10 = MEMORY[0x277CDABD0];
      }

      v136.i64[0] = 0;
      v136.i64[1] = 0xE000000000000000;
      v143 = v15;
      v131 = sub_241352C5C();
      sub_2413546CC();
      sub_241353C9C();

      v46 = RESceneCreate();

      v137.i64[1] = MEMORY[0x277D841D8];
      v136.i64[0] = v46;
      sub_2413516EC();
      __swift_destroy_boxed_opaque_existential_0(&v136);
      v17 = sub_24135249C();
      (*v129)(v12, v133);
      sub_2413524EC();
      a4 = v47;
      swift_getObjectType();
      sub_24135244C();
      swift_unknownObjectRelease();
      sub_24135253C();

      if ((v7 & 0xC000000000000001) != 0)
      {
        if (v7 < 0)
        {
          v19 = v7;
        }

        else
        {
          v19 = (v7 & 0xFFFFFFFFFFFFFF8);
        }

        v48 = sub_2413544EC();
        if (__OFADD__(v48, 1))
        {
          __break(1u);
          goto LABEL_53;
        }

        v7 = sub_24126DB8C(v19, v48 + 1);
      }

      else
      {
      }

      ++v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v136.i64[0] = v7;
      sub_2412A686C(v17, v15, isUniquelyReferenced_nonNull_native);

      v7 = v136.i64[0];
      sub_2413517EC();

      v34 = v135;
    }

    while (v128 != v33);
    v49 = v135;

    v51 = sub_24125FE48(v50);

    v53 = sub_241260218(v52);
    v128 = 0;

    v55 = sub_2413220E4(v54);

    if (v55)
    {
      v133 = sub_24135252C();
      v130 = v56;
      LODWORD(v129) = v57;
    }

    else
    {
      v133 = 0;
      v130 = 0;
      LODWORD(v129) = 1;
    }

    v58 = v125;

    v59 = sub_241352FDC();
    v60 = sub_2413540DC();

    v61 = os_log_type_enabled(v59, v60);
    v110 = v51;
    if (v61)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v136.i64[0] = v63;
      *v62 = v127;
      v64 = MEMORY[0x245CE21F0](v49, v131);
      v66 = sub_2412DDC2C(v64, v65, v136.i64);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_241215000, v59, v60, "SceneInformation entities: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x245CE4870](v63, -1, -1);
      MEMORY[0x245CE4870](v62, -1, -1);
    }

    v67 = sub_241352FDC();
    v68 = sub_2413540DC();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v143 = v70;
      *v69 = 136315394;
      v71 = MEMORY[0x245CE21F0](v53, v58);
      v73 = sub_2412DDC2C(v71, v72, &v143);

      *(v69 + 4) = v73;
      *(v69 + 12) = 2080;
      if (v129)
      {
        v75 = -1;
      }

      else
      {
        v75 = 0;
      }

      v74.i64[1] = v130;
      v74.i64[0] = v133;
      v136 = vbslq_s8(vdupq_n_s32(v75), xmmword_241366910, v74);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538B20, &qword_24136BA00);
      sub_24123D370(&qword_27E539BA0, &unk_27E538B20, &qword_24136BA00, MEMORY[0x277D84B08]);
      v76 = sub_2413549BC();
      v78 = sub_2412DDC2C(v76, v77, &v143);
      v58 = v125;

      *(v69 + 14) = v78;
      _os_log_impl(&dword_241215000, v67, v68, "SceneInformation anchorTypes: %s) gravity: %s", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CE4870](v70, -1, -1);
      MEMORY[0x245CE4870](v69, -1, -1);
    }

    v79 = v123;
    v80 = v122;
    v81 = v119;
    v82 = v121;
    v83 = v120;
    if (v134)
    {
      MEMORY[0x245CE29C0](0, v135);
      if (!v53[2])
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (!*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      if (!v53[2])
      {
        goto LABEL_45;
      }
    }

    (*(v82 + 16))(v83, v53 + ((*(v82 + 80) + 32) & ~*(v82 + 80)), v58);
    if (sub_24131487C(v83))
    {

      sub_24135192C();

      (*(v82 + 8))(v83, v58);
      goto LABEL_49;
    }

    (*(v82 + 8))(v83, v58);
LABEL_45:
    if (v110[2])
    {
      v84 = v109;
      (*(v79 + 16))(v80, v110 + ((*(v79 + 80) + 32) & ~*(v79 + 80)), v109);

      v85 = sub_241314B6C(v80);
      v86 = v118;
      v87 = v115;
      if (v85)
      {
        sub_24135192C();

        (*(v79 + 8))(v80, v84);
      }

      else
      {
        (*(v79 + 8))(v80, v84);
      }

      goto LABEL_51;
    }

LABEL_49:
    v86 = v118;
    v87 = v115;
LABEL_51:
    v88 = sub_24125FBC8(v7);

    v89 = v126;

    sub_241255B50(&v144, &v136);

    v136 = v144;
    v137 = v145;
    v138 = v146;
    LOBYTE(v143) = v129 & 1;
    v139.i64[0] = v147;
    v140.i64[0] = v88;
    v140.i64[1] = v53;
    v141.i64[0] = v133;
    v141.i64[1] = v130;
    v142[0] = v129 & 1;
    *&v142[8] = v89;
    *&v142[16] = MEMORY[0x277D84F98];
    sub_24127C094(&v136);
    v90 = v141;
    v91 = v113;
    v113[4] = v140;
    v91[5] = v90;
    v91[6] = *v142;
    *(v91 + 105) = *&v142[9];
    v92 = v137;
    *v91 = v136;
    v91[1] = v92;
    v93 = v139;
    v91[2] = v138;
    v91[3] = v93;
    v94 = v112;
    v117(v112, 1, 1, v86);
    v95 = swift_allocObject();
    v96 = v114;
    *(v95 + 16) = v87;
    *(v95 + 24) = v96;
    *(v95 + 32) = v81;
    *(v95 + 40) = 4;
    v97 = v111;
    *(v95 + 48) = v124;
    *(v95 + 56) = v97;

    sub_241327238(0, 0, v94, &unk_241366C80, v95);

    return;
  }

  __break(1u);
LABEL_56:
  __break(1u);
}

double sub_241267118@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v83 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940, &qword_241366CB0);
  MEMORY[0x28223BE20](v5 - 8);
  v72 = v68 - v6;
  v7 = sub_241351DEC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_24135173C();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850, &unk_241366BF0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v68 - v13;
  v16 = *a1;
  v15 = a1[1];
  if (qword_27E537D08 != -1)
  {
    swift_once();
  }

  *&v73 = v10;
  v17 = qword_27E53A740;
  v18 = sub_241353EEC();
  v19 = *(v18 - 8);
  v77 = *(v19 + 56);
  v78 = v18;
  v76 = v19 + 56;
  v77(v14, 1, 1);
  v20 = qword_27E537D00;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_27E53A738;
  v22 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor, &unk_24136B618);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v22;
  v74 = v22;
  v75 = v21;
  v84 = v17;
  *(v23 + 32) = v17;
  *(v23 + 40) = 4;
  *(v23 + 48) = v16;
  *(v23 + 56) = v15;

  sub_241327238(0, 0, v14, &unk_241366D30, v23);

  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v24 = sub_241352FFC();
  v25 = __swift_project_value_buffer(v24, qword_27E5384A0);

  v26 = sub_241352FDC();
  v27 = sub_2413540DC();

  v28 = os_log_type_enabled(v26, v27);
  v81 = v14;
  v82 = v7;
  v79 = v16;
  v80 = v15;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v85 = a2;
    *&v86 = v30;
    *v29 = 136315138;
    sub_241352C5C();

    v31 = sub_241353C7C();
    v33 = sub_2412DDC2C(v31, v32, &v86);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_241215000, v26, v27, "start processLoadedEntitiesCDM, rootEntity: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x245CE4870](v30, -1, -1);
    MEMORY[0x245CE4870](v29, -1, -1);
  }

  v34 = v73;

  v35 = sub_241352FDC();
  v36 = sub_2413540DC();

  v37 = os_log_type_enabled(v35, v36);
  v68[1] = v25;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v85 = v39;
    *v38 = 136315138;
    sub_241352C5C();
    sub_24135191C();
    v73 = v40;
    *&v86 = 0x7B42424141;
    *(&v86 + 1) = 0xE500000000000000;
    v41 = sub_241302460();
    MEMORY[0x245CE20D0](v41);

    MEMORY[0x245CE20D0](8236, 0xE200000000000000);
    v42 = sub_241302460();
    MEMORY[0x245CE20D0](v42);

    MEMORY[0x245CE20D0](125, 0xE100000000000000);
    v43 = sub_2412DDC2C(v86, *(&v86 + 1), &v85);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_241215000, v35, v36, "[debugPrint] processLoadedEntitiesCDM bounds: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x245CE4870](v39, -1, -1);
    MEMORY[0x245CE4870](v38, -1, -1);
  }

  v44 = v82;
  v46 = v79;
  v45 = v80;
  printHierarchy(entity:level:debugString:)(a2, 0, 0, 0xE000000000000000);
  v47 = RESceneCreate();
  sub_24135255C();
  *(&v87 + 1) = MEMORY[0x277D841D8];
  *&v86 = v47;
  v48 = v69;
  sub_2413516EC();
  __swift_destroy_boxed_opaque_existential_0(&v86);
  sub_24135249C();
  (*(v70 + 8))(v48, v71);
  sub_2413524EC();
  swift_getObjectType();
  sub_24135244C();
  swift_unknownObjectRelease();
  sub_24135295C();
  RESceneAddEntity();
  sub_2413517EC();
  v49 = v72;
  sub_24126B05C(a2, v72);
  v50 = *(v8 + 48);
  if (v50(v49, 1, v44) == 1)
  {
    *v34 = xmmword_241365E70;
    v34[1] = xmmword_241364640;
    v34[2] = xmmword_241365EE0;
    v34[3] = xmmword_241365D00;
    (*(v8 + 104))(v34, *MEMORY[0x277CDAD70], v44);
    v51 = v50(v49, 1, v44) == 1;
    v52 = v49;
    v53 = v84;
    if (!v51)
    {
      sub_241246278(v52, &qword_27E538940, &qword_241366CB0);
    }
  }

  else
  {
    (*(v8 + 32))(v34, v49, v44);
    v53 = v84;
  }

  if (sub_24131487C(v34))
  {
    v54 = sub_241352FDC();
    v55 = sub_2413540DC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_241215000, v54, v55, "Rotating asset 90°", v56, 2u);
      v57 = v56;
      v53 = v84;
      MEMORY[0x245CE4870](v57, -1, -1);
    }

    sub_241352C5C();
    sub_24135192C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538A60, &qword_241366C38);
  v58 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_241365EA0;
  (*(v8 + 16))(v59 + v58, v34, v44);
  sub_24126B6A8(a2, v59, &v86);

  (*(v8 + 8))(v34, v44);
  v60 = v88;
  v61 = v87;
  v62 = v89;
  v63 = v83;
  *v83 = v86;
  v63[1] = v61;
  *(v63 + 32) = v60;
  *(v63 + 40) = v62;
  v64 = v81;
  (v77)(v81, 1, 1, v78);
  v65 = swift_allocObject();
  v66 = v74;
  *(v65 + 16) = v75;
  *(v65 + 24) = v66;
  *(v65 + 32) = v53;
  *(v65 + 40) = 4;
  *(v65 + 48) = v46;
  *(v65 + 56) = v45;

  sub_241327238(0, 0, v64, &unk_241366D38, v65);

  return result;
}

uint64_t sub_241267AEC(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  sub_241255C30(a1, a2, a3);
  v4 = swift_allocError();
  *v5 = 0xD000000000000017;
  *(v5 + 8) = 0x800000024135EE50;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *&v14[0] = v4;
  sub_24127BE04(v14);
  v11 = v14[4];
  v12 = v14[5];
  v13[0] = v15[0];
  *(v13 + 9) = *(v15 + 9);
  v7 = v14[0];
  v8 = v14[1];
  v9 = v14[2];
  v10 = v14[3];
  a1(&v7);
  v16[4] = v11;
  v16[5] = v12;
  v17[0] = v13[0];
  *(v17 + 9) = *(v13 + 9);
  v16[0] = v7;
  v16[1] = v8;
  v16[2] = v9;
  v16[3] = v10;
  return sub_241246278(v16, &qword_27E538348, &qword_241366C10);
}

uint64_t sub_241267BEC(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  sub_241255C30(a1, a2, a3);
  v4 = swift_allocError();
  *v5 = 0xD000000000000027;
  *(v5 + 8) = 0x800000024135EE70;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *&v14[0] = v4;
  sub_24127BE04(v14);
  v11 = v14[4];
  v12 = v14[5];
  v13[0] = v15[0];
  *(v13 + 9) = *(v15 + 9);
  v7 = v14[0];
  v8 = v14[1];
  v9 = v14[2];
  v10 = v14[3];
  a1(&v7);
  v16[4] = v11;
  v16[5] = v12;
  v17[0] = v13[0];
  *(v17 + 9) = *(v13 + 9);
  v16[0] = v7;
  v16[1] = v8;
  v16[2] = v9;
  v16[3] = v10;
  return sub_241246278(v16, &qword_27E538348, &qword_241366C10);
}

uint64_t sub_241267CEC(void (*a1)(__int128 *), uint64_t a2, void *a3)
{
  *&v14[0] = a3;
  sub_24127BE04(v14);
  v11 = v14[4];
  v12 = v14[5];
  v13[0] = v15[0];
  *(v13 + 9) = *(v15 + 9);
  v7 = v14[0];
  v8 = v14[1];
  v9 = v14[2];
  v10 = v14[3];
  v5 = a3;
  a1(&v7);
  v16[4] = v11;
  v16[5] = v12;
  v17[0] = v13[0];
  *(v17 + 9) = *(v13 + 9);
  v16[0] = v7;
  v16[1] = v8;
  v16[2] = v9;
  v16[3] = v10;
  return sub_241246278(v16, &qword_27E538348, &qword_241366C10);
}

uint64_t sub_241267DB8(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = [objc_opt_self() currentThread];
  v9 = [v8 isMainThread];

  if (v9)
  {
    sub_24135395C();
    a1();
  }

  else
  {
    sub_241246158(0, &qword_27E538920, 0x277D85C78);
    v10 = sub_24135416C();
    sub_24135417C();
  }

  return sub_241353A4C();
}

void sub_241267EFC(char *a1, unsigned __int8 *a2, void (*a3)(void), uint64_t a4)
{
  v117 = a4;
  v115 = a3;
  v6 = sub_2413538CC();
  v107 = *(v6 - 8);
  v108 = v6;
  MEMORY[0x28223BE20](v6);
  v105 = v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_2413538FC();
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v103 = v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_2413522BC();
  v114 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v121 = v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Information = type metadata accessor for AssetLoader.LoadInformation(0);
  v111 = *(Information - 8);
  MEMORY[0x28223BE20](Information);
  v126 = v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v113 = v102 - v13;
  MEMORY[0x28223BE20](v14);
  v116 = v102 - v15;
  v112 = v16;
  MEMORY[0x28223BE20](v17);
  v110 = v102 - v18;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538578, &unk_241366CD0);
  MEMORY[0x28223BE20](v120);
  v119 = v102 - v19;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538128, &qword_241365E48);
  v131 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v21 = v102 - v20;
  v137 = sub_24135152C();
  v125 = *(v137 - 1);
  MEMORY[0x28223BE20](v137);
  v130 = v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v132 = v102 - v24;
  v25 = sub_2413517BC();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = *a2;
  sub_241352DAC();
  v29 = *&a1[*(Information + 20)];
  *(&v155 + 1) = MEMORY[0x277D841D8];
  *&aBlock = v29;
  sub_2413516EC();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v30 = sub_241352CAC();
  (*(v26 + 8))(v28, v25);
  v134 = sub_241352D9C();
  if (v134)
  {
    v102[1] = v30;
    v33 = swift_allocObject();
    v34 = *&a1[*(Information + 40)];
    v35 = *(v34 + 16);
    v118 = v33;
    v123 = Information;
    v124 = a1;
    if (v35)
    {
      *&aBlock = MEMORY[0x277D84F90];
      sub_2412DE294(0, v35, 0);
      v36 = sub_2413521FC();
      v37 = aBlock;
      v135 = *(v125 + 16);
      v136 = v125 + 16;
      v38 = (v34 + ((*(v125 + 80) + 32) & ~*(v125 + 80)));
      v128 = *(v125 + 72);
      v129 = v36;
      v127 = (v125 + 8);
      do
      {
        v139 = v35;
        v39 = v132;
        v40 = v137;
        v41 = v37;
        v42 = v135;
        v135(v132, v38, v137);
        v138 = *(v133 + 48);
        v42(v21, v39, v40);
        v42(v130, v39, v40);
        v37 = v41;

        v43 = sub_2413521EC();
        (*v127)(v39, v40);
        *&v21[v138] = v43;
        *&aBlock = v41;
        v45 = *(v41 + 16);
        v44 = *(v41 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_2412DE294((v44 > 1), v45 + 1, 1);
          v37 = aBlock;
        }

        *(v37 + 16) = v45 + 1;
        sub_24127EFF0(v21, v37 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v45, &qword_27E538128, &qword_241365E48);
        v38 += v128;
        v35 = v139 - 1;
      }

      while (v139 != 1);
      if (*(v37 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538130, &unk_241366CE0);
        v46 = sub_24135483C();
      }

      else
      {
        v46 = MEMORY[0x277D84F98];
      }

      v57 = v118;
      v56 = v126;
      *&aBlock = v46;
      sub_24127218C(v37, 1, &aBlock);
      v133 = 0;

      v55 = aBlock;
      *(v57 + 16) = aBlock;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538580, &qword_241366CF0);
      v49 = (*(v131 + 80) + 32) & ~*(v131 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_241365EA0;
      v51 = *(v133 + 48);
      v53 = v125 + 16;
      v52 = *(v125 + 16);
      v54 = v137;
      v52((v50 + v49), a1, v137);
      sub_2413521FC();
      v135 = v52;
      v136 = v53;
      v52(v132, a1, v54);

      *(v50 + v49 + v51) = sub_2413521EC();
      v55 = sub_24124569C(v50);
      swift_setDeallocating();
      sub_241246278(v50 + v49, &qword_27E538128, &qword_241365E48);
      swift_deallocClassInstance();
      *(v118 + 16) = v55;

      v133 = 0;
      v56 = v126;
    }

    v58 = 1 << *(v55 + 32);
    v59 = -1;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    v60 = v59 & *(v55 + 64);
    v61 = ((v58 + 63) >> 6);
    v138 = v114 + 8;
    v139 = v55;

    v62 = 0;
    if (v60)
    {
      while (1)
      {
        v63 = v62;
LABEL_21:
        v64 = __clz(__rbit64(v60));
        v60 &= v60 - 1;
        v65 = v64 | (v63 << 6);
        v66 = v139;
        v67 = v119;
        v135(v119, (*(v139 + 48) + *(v125 + 72) * v65), v137);
        *(v67 + *(v120 + 48)) = *(*(v66 + 56) + 8 * v65);

        v68 = v121;
        sub_2413521AC();
        sub_2413516FC();
        (*v138)(v68, v122);
        RESceneImportOperationSetFunctionConstant();
        sub_241353C9C();
        RESceneImportOperationSetMaterialDefinitionPath();

        RESceneImportOperationSetUnitType();
        RESceneImportOperationSetIsolateFromEngine();
        sub_241246278(v67, &qword_27E538578, &unk_241366CD0);
        v56 = v126;
        if (!v60)
        {
          goto LABEL_17;
        }
      }
    }

    while (1)
    {
LABEL_17:
      v63 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        __break(1u);

        __break(1u);
        return;
      }

      if (v63 >= v61)
      {
        break;
      }

      v60 = *(v55 + 64 + 8 * v63);
      ++v62;
      if (v60)
      {
        v62 = v63;
        goto LABEL_21;
      }
    }

    v69 = swift_allocObject();
    v70 = v118;
    v71 = v115;
    v69[2] = v118;
    v69[3] = v71;
    v69[4] = v117;
    v72 = swift_allocObject();
    *(v72 + 16) = 0;
    v73 = v124;
    v74 = v110;
    sub_24127BF00(v124, v110);
    sub_24127BF00(v74, v116);
    v75 = v112;
    v76 = *(v111 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = v70;
    *(v77 + 24) = v72;
    v138 = v72;
    v139 = v77;
    sub_241244A20(v74, v77 + ((v76 + 32) & ~v76));
    v78 = v113;
    sub_24127BF00(v73, v113);
    sub_24127BF00(v78, v56);
    v79 = (v76 + 48) & ~v76;
    v80 = v79 + v75;
    v81 = swift_allocObject();
    v82 = v134;
    v81[2] = v70;
    v81[3] = v82;
    v81[4] = sub_24127EF3C;
    v81[5] = v69;
    sub_241244A20(v78, v81 + v79);
    v83 = v109;
    *(v81 + v80) = v109;
    v84 = &v73[*(v123 + 28)];
    v85 = *v84;
    if (*v84)
    {
      v86 = *(v84 + 1);
      v87 = v118;
      swift_retain_n();

      sub_24127EF78(v85, v86);
      sub_241244A8C(v126);
      sub_241244A8C(v116);
      v88 = swift_allocObject();
      v89 = v139;
      v88[2] = sub_24127EF48;
      v88[3] = v89;
      v88[4] = v86;
      v88[5] = v87;
      v88[6] = sub_24127EF3C;
      v88[7] = v69;
      v88[8] = sub_24127EF60;
      v88[9] = v81;
      *&v156 = sub_24127EFB8;
      *(&v156 + 1) = v88;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v155 = sub_2412D5698;
      *(&v155 + 1) = &block_descriptor_1;
      v90 = _Block_copy(&aBlock);

      v137 = v86;

      v91 = v103;
      sub_2413538DC();
      *&v147 = MEMORY[0x277D84F90];
      sub_24127F10C(&qword_27E539870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930, &unk_2413674A0);
      v92 = v85;
      sub_24123D370(&qword_27E539880, &unk_27E538930, &unk_2413674A0, MEMORY[0x277D83970]);
      v93 = v105;
      v94 = v108;
      sub_24135444C();
      MEMORY[0x245CE2540](0, v91, v93, v90);

      _Block_release(v90);

      (*(v107 + 8))(v93, v94);
      (*(v104 + 8))(v91, v106);
    }

    else
    {
      v95 = v118;
      swift_retain_n();

      v96 = v138;

      v97 = v95;
      v98 = v116;
      v99 = v133;
      sub_241273248(v97, v96, v116);
      if (v99)
      {
        sub_241244A8C(v126);
        sub_241244A8C(v98);
        *&aBlock = v99;
        sub_24127BE04(&aBlock);
        v101 = v118;
        swift_beginAccess();
        *(v101 + 16) = MEMORY[0x277D84F98];

        v151 = v158;
        v152 = v159;
        v153[0] = v160[0];
        *(v153 + 9) = *(v160 + 9);
        v147 = aBlock;
        v148 = v155;
        v149 = v156;
        v150 = v157;
        v115(&v147);
      }

      else
      {
        sub_241244A8C(v98);
        v100 = v126;
        sub_241269024(v118, v82, sub_24127EF3C, v69, v126, v83);
        sub_241244A8C(v100);
      }
    }
  }

  else
  {
    sub_241255C30(0, v31, v32);
    v47 = swift_allocError();
    *v48 = 0xD00000000000002CLL;
    *(v48 + 8) = 0x800000024135ED20;
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    *&v147 = v47;
    sub_24127BE04(&v147);
    v144 = v151;
    v145 = v152;
    v146[0] = v153[0];
    *(v146 + 9) = *(v153 + 9);
    v140 = v147;
    v141 = v148;
    v142 = v149;
    v143 = v150;
    v115(&v140);

    v158 = v144;
    v159 = v145;
    v160[0] = v146[0];
    *(v160 + 9) = *(v146 + 9);
    aBlock = v140;
    v155 = v141;
    v156 = v142;
    v157 = v143;
    sub_241246278(&aBlock, &qword_27E538348, &qword_241366C10);
  }
}

uint64_t sub_241268F90(_OWORD *a1, uint64_t a2, uint64_t (*a3)(_OWORD *, __n128))
{
  v5 = a1[5];
  v9[4] = a1[4];
  v9[5] = v5;
  v10[0] = a1[6];
  *(v10 + 9) = *(a1 + 105);
  v6 = a1[1];
  v9[0] = *a1;
  v9[1] = v6;
  v7 = a1[3];
  v9[2] = a1[2];
  v9[3] = v7;
  swift_beginAccess();
  *(a2 + 16) = MEMORY[0x277D84F98];

  return (a3)(v9);
}

void sub_241269024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v92 = a6;
  v93 = a4;
  v91 = a3;
  v89 = a2;
  Information = type metadata accessor for AssetLoader.LoadInformation(0);
  v87 = *(Information - 8);
  MEMORY[0x28223BE20](Information);
  v88 = v10;
  v90 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_24135152C();
  v110 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v101 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538578, &unk_241366CD0);
  MEMORY[0x28223BE20](v100);
  v99 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v98 = &v84 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538590, &qword_241366CF8);
  v102 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v84 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v84 - v22;
  if (qword_27E537B10 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v24 = sub_241352FFC();
    v86 = __swift_project_value_buffer(v24, qword_27E5384A0);
    v25 = sub_241352FDC();
    v26 = sub_2413540DC();
    v27 = os_log_type_enabled(v25, v26);
    v105 = v20;
    if (v27)
    {
      v28 = v17;
      v29 = v15;
      v30 = a1;
      v31 = a5;
      v32 = v7;
      v33 = v23;
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_241215000, v25, v26, "importModelFile..... start finalizeBlock part", v34, 2u);
      v35 = v34;
      v23 = v33;
      v7 = v32;
      a5 = v31;
      a1 = v30;
      v15 = v29;
      v17 = v28;
      MEMORY[0x245CE4870](v35, -1, -1);
    }

    sub_241351FDC();
    v104 = sub_241351FCC();
    swift_beginAccess();
    v36 = *(*(a1 + 16) + 16);
    v37 = MEMORY[0x277D84F90];
    v106 = v17;
    v94 = a5;
    v109 = v15;
    if (!v36)
    {
      break;
    }

    v108 = v7;
    aBlock[0] = MEMORY[0x277D84F90];

    sub_2412DE274(0, v36, 0);
    v38 = v103;
    a1 = aBlock[0];
    v20 = (v103 + 64);
    v7 = sub_24135445C();
    v97 = v110 + 16;
    v96 = v110 + 32;
    v95 = v20;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v38 + 32))
    {
      a5 = v7 >> 6;
      v15 = 1 << v7;
      if ((*&v20[8 * (v7 >> 6)] & (1 << v7)) == 0)
      {
        goto LABEL_44;
      }

      v107 = v36;
      LODWORD(v111) = *(v38 + 36);
      v39 = v110;
      v17 = v23;
      v40 = v98;
      v41 = v113;
      (*(v110 + 16))(v98, *(v38 + 48) + *(v110 + 72) * v7, v113);
      v42 = *(*(v38 + 56) + 8 * v7);
      v43 = *(v39 + 32);
      v44 = v99;
      v45 = v40;
      v23 = v17;
      v43(v99, v45, v41);
      *(v44 + *(v100 + 48)) = v42;

      v46 = v108;
      v47 = sub_241269BC0(v17, v44);
      if (v46)
      {

        sub_241246278(v44, &qword_27E538578, &unk_241366CD0);

        goto LABEL_42;
      }

      v108 = 0;
      *&v17[*(v109 + 48)] = v47;
      sub_241246278(v44, &qword_27E538578, &unk_241366CD0);
      aBlock[0] = a1;
      v49 = *(a1 + 16);
      v48 = *(a1 + 24);
      v20 = (v49 + 1);
      if (v49 >= v48 >> 1)
      {
        sub_2412DE274((v48 > 1), v49 + 1, 1);
        a1 = aBlock[0];
      }

      *(a1 + 16) = v20;
      sub_24127EFF0(v17, a1 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v49, &qword_27E538590, &qword_241366CF8);
      v38 = v103;
      if (v7 >= -(-1 << *(v103 + 32)))
      {
        goto LABEL_45;
      }

      v20 = v95;
      if ((*&v95[8 * a5] & v15) == 0)
      {
        goto LABEL_46;
      }

      if (v111 != *(v103 + 36))
      {
        goto LABEL_47;
      }

      v7 = sub_24135447C();
      v36 = v107 - 1;
      v17 = v101;
      if (v107 == 1)
      {
        v107 = a1;

        v7 = v108;
        v37 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }
    }

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
    swift_once();
  }

  v107 = MEMORY[0x277D84F90];
  v17 = v101;
LABEL_19:
  v50 = sub_241352FDC();
  v51 = sub_2413540DC();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_241215000, v50, v51, "importModelFile..... importCompletedBlock completed", v52, 2u);
    MEMORY[0x245CE4870](v52, -1, -1);
  }

  v108 = v7;

  v53 = *(v107 + 16);
  if (v53)
  {
    aBlock[0] = v37;
    v54 = v107;
    sub_2412DE254(0, v53, 0);
    v55 = aBlock[0];
    v56 = v54 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v57 = *(v102 + 72);
    v58 = v53;
    v59 = (v110 + 32);
    v60 = v56;
    v102 = v58;
    v111 = v57;
    do
    {
      v61 = v105;
      sub_241246210(v60, v105, &qword_27E538590, &qword_241366CF8);
      v62 = v61;
      v63 = v106;
      sub_24127EFF0(v62, v106, &qword_27E538590, &qword_241366CF8);

      v64 = *v59;
      (*v59)(v17, v63, v113);
      aBlock[0] = v55;
      v65 = v17;
      v67 = *(v55 + 16);
      v66 = *(v55 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_2412DE254((v66 > 1), v67 + 1, 1);
        v55 = aBlock[0];
      }

      *(v55 + 16) = v67 + 1;
      v64((v55 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v67), v65, v113);
      v60 += v111;
      --v58;
      v17 = v65;
    }

    while (v58);
    v103 = v55;
    aBlock[0] = MEMORY[0x277D84F90];
    v68 = v102;
    sub_24135466C();
    v69 = (v110 + 8);
    v71 = v105;
    v70 = v106;
    do
    {
      sub_241246210(v56, v71, &qword_27E538590, &qword_241366CF8);
      sub_24127EFF0(v71, v70, &qword_27E538590, &qword_241366CF8);
      (*v69)(v70, v113);
      sub_24135464C();
      sub_24135467C();
      sub_24135468C();
      sub_24135465C();
      v56 += v111;
      --v68;
    }

    while (v68);

    v72 = aBlock[0];
  }

  else
  {

    v72 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
  }

  sub_241351ECC();

  v73 = sub_241351E7C();
  v74 = v90;
  sub_24127BF00(v94, v90);
  v75 = (*(v87 + 80) + 40) & ~*(v87 + 80);
  v76 = v75 + v88;
  v77 = (((v75 + v88) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  v79 = v91;
  v78[2] = v73;
  v78[3] = v79;
  v78[4] = v93;
  sub_241244A20(v74, v78 + v75);
  *(v78 + v76) = v92;
  *(v78 + (v76 & 0xFFFFFFFFFFFFFFF8) + 8) = v72;
  *(v78 + v77) = v103;
  aBlock[4] = sub_24127F058;
  aBlock[5] = v78;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412F49E8;
  aBlock[3] = &block_descriptor_155;
  v80 = _Block_copy(aBlock);

  sub_241351E9C();
  _Block_release(v80);

  if (v72 >> 62)
  {
    v81 = sub_2413544EC();
    if (!v81)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v81 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v81)
    {
      goto LABEL_39;
    }
  }

  if (v81 < 1)
  {
    __break(1u);
    return;
  }

  if ((v72 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v81; ++i)
    {
      MEMORY[0x245CE29C0](i, v72);
      sub_241351EBC();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v83 = 32;
    do
    {

      sub_241351EBC();

      v83 += 8;
      --v81;
    }

    while (v81);
  }

LABEL_39:

  if (!*(v94 + *(Information + 28)))
  {
    sub_241351E8C();
  }

LABEL_42:
}

uint64_t sub_241269BC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2413522DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2413521CC();
  sub_241351FBC();

  if (!v2)
  {
    v3 = sub_2413522CC();
    sub_241352C5C();
    sub_24135191C();
    if (REAABBIsEmpty())
    {
      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v11 = sub_241352FFC();
      __swift_project_value_buffer(v11, qword_27E5384A0);
      v12 = sub_241352FDC();
      v13 = sub_2413540BC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v19 = v12;
        v15 = v14;
        *v14 = 0;
        v16 = v15;
        v12 = v19;
        MEMORY[0x245CE4870](v16, -1, -1);
      }
    }

    (*(v7 + 8))(v9, v6);
    v17 = sub_24135152C();
    (*(*(v17 - 8) + 16))(a1, a2, v17);
  }

  return v3;
}

void sub_241269E3C(char a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4, uint64_t a5, char a6, unint64_t a7, uint64_t a8)
{
  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v14 = sub_241352FFC();
  __swift_project_value_buffer(v14, qword_27E5384A0);
  v15 = sub_241352FDC();
  v16 = sub_2413540DC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = a1 & 1;
    _os_log_impl(&dword_241215000, v15, v16, "AssetLoadRequest success? %{BOOL}d", v17, 8u);
    MEMORY[0x245CE4870](v17, -1, -1);
  }

  if (a1)
  {
    LOBYTE(v47) = a6;
    if (qword_27E537C60 != -1)
    {
      swift_once();
    }

    v18 = xmmword_27E541898;
    v19 = qword_27E5418A8;

    LOBYTE(v36) = a6;
    sub_24127C7E4(a5, &v47, v18, *(&v18 + 1), v19, a3, a4, a7, v36, a8);

    *&v49 = nullsub_6;
    *(&v49 + 1) = 0;
    *&v47 = MEMORY[0x277D85DD0];
    *(&v47 + 1) = 1107296256;
    *&v48 = sub_2412F49E8;
    *(&v48 + 1) = &block_descriptor_161;
    p_aBlock = &v47;
  }

  else
  {
    v21 = sub_241352FDC();
    v22 = sub_2413540BC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v45[0] = v24;
      *v23 = 136315138;
      *&v47 = 0xD000000000000022;
      *(&v47 + 1) = 0x800000024135EDF0;
      *&v48 = 0;
      BYTE8(v48) = 0;
      sub_241255C30(v24, v25, v26);
      v27 = sub_241354A3C();
      v29 = sub_2412DDC2C(v27, v28, v45);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_241215000, v21, v22, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x245CE4870](v24, -1, -1);
      MEMORY[0x245CE4870](v23, -1, -1);
    }

    sub_241255C30(v30, v31, v32);
    v33 = swift_allocError();
    *v34 = 0xD000000000000022;
    *(v34 + 8) = 0x800000024135EDF0;
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *&v45[0] = v33;
    sub_24127BE04(v45);
    v42 = v45[4];
    v43 = v45[5];
    v44[0] = v46[0];
    *(v44 + 9) = *(v46 + 9);
    aBlock = v45[0];
    v39 = v45[1];
    v40 = v45[2];
    v41 = v45[3];
    a3(&aBlock);
    v51 = v42;
    v52 = v43;
    v53[0] = v44[0];
    *(v53 + 9) = *(v44 + 9);
    v47 = aBlock;
    v48 = v39;
    v49 = v40;
    v50 = v41;
    sub_241246278(&v47, &qword_27E538348, &qword_241366C10);
    *&v40 = nullsub_6;
    *(&v40 + 1) = 0;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v39 = sub_2412F49E8;
    *(&v39 + 1) = &block_descriptor_158;
    p_aBlock = &aBlock;
  }

  v35 = _Block_copy(p_aBlock);
  sub_241351E9C();
  _Block_release(v35);
}

void sub_24126A284(void (*a1)(void), uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a1();
  v14 = swift_allocObject();
  v14[2] = a4 + 16;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = a8;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24127EFE0;
  *(v15 + 24) = v14;
  aBlock[4] = sub_2412807B4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24126A860;
  aBlock[3] = &block_descriptor_149;
  v16 = _Block_copy(aBlock);

  dispatch_sync(a3, v16);
  _Block_release(v16);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }
}

uint64_t sub_24126A544(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__n128), uint64_t a5)
{
  v21[1] = a5;
  v22 = a4;
  v23 = a3;
  v24 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538578, &unk_241366CD0);
  MEMORY[0x28223BE20](v25);
  v7 = v21 - v6;
  swift_beginAccess();
  v8 = *a1;
  v9 = *a1 + 64;
  v10 = 1 << *(*a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(*a1 + 64);
  v13 = (v10 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v15 = 0;
  while (v12)
  {
LABEL_9:
    v17 = __clz(__rbit64(v12)) | (v15 << 6);
    v18 = *(v8 + 48);
    v19 = sub_24135152C();
    (*(*(v19 - 8) + 16))(v7, v18 + *(*(v19 - 8) + 72) * v17, v19);
    *&v7[*(v25 + 48)] = *(*(v8 + 56) + 8 * v17);

    sub_2413521BC();
    v12 &= v12 - 1;
    result = sub_241246278(v7, &qword_27E538578, &unk_241366CD0);
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return (v22)(v20);
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double sub_24126A888(id *a1)
{
  v1 = [*a1 path];
  sub_241353C0C();

  sub_24135146C();

  return result;
}

void sub_24126A908(void **a1, void (*a2)(__int128 *), uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  if (*a1)
  {
    *&v15[0] = *a1;
    sub_24127BE04(v15);
    v12 = v15[4];
    v13 = v15[5];
    v14[0] = v16[0];
    *(v14 + 9) = *(v16 + 9);
    v8 = v15[0];
    v9 = v15[1];
    v10 = v15[2];
    v11 = v15[3];
    v7 = v5;
    a2(&v8);
    v17[4] = v12;
    v17[5] = v13;
    v18[0] = v14[0];
    *(v18 + 9) = *(v14 + 9);
    v17[0] = v8;
    v17[1] = v9;
    v17[2] = v10;
    v17[3] = v11;
    sub_241246278(v17, &qword_27E538348, &qword_241366C10);
  }

  sub_24127EB48(a4);
}

void sub_24126A9E4(uint64_t *a1, void (*a2)(int8x16_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = (a4 + *(type metadata accessor for AssetLoader.LoadInformation(0) + 32));
  v11 = *v9;
  v10 = v9[1];
  v12 = qword_27E537C60;

  if (v12 != -1)
  {
    swift_once();
  }

  v23.i64[0] = v11;
  v23.i64[1] = v10;
  v24.i16[0] = 514;
  v24.i8[2] = 2;
  v24.i64[1] = 3;
  v25 = xmmword_27E541898;
  v26.i64[0] = qword_27E5418A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900, &qword_241366C30);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_241365C30;
  *(v13 + 32) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538870, &qword_241366C40);
  v14 = sub_24135152C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_241365EA0;
  (*(v15 + 16))(v17 + v16, a5, v14);

  sub_241265FA4(&v23, v13, v17, v19);

  v21[0] = v23;
  v21[1] = v24;
  v21[2] = v25;
  v22 = v26.i64[0];
  sub_241244AE8(v21);
  a2(v19);
  v27 = v19[4];
  v28 = v19[5];
  v29[0] = v20[0];
  *(v29 + 9) = *(v20 + 9);
  v23 = v19[0];
  v24 = v19[1];
  v25 = v19[2];
  v26 = v19[3];
  sub_241246278(&v23, &qword_27E538348, &qword_241366C10);
  sub_24127EB48(a6);
}

uint64_t sub_24126AC54(uint64_t a1, uint64_t a2, void (*a3)(int8x16_t *), uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v9 = sub_241352AEC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241352C5C();
  sub_24127C104(a2, &v37);
  sub_241352ADC();
  v13 = sub_241352C2C();
  v14 = (v10 + 8);
  v27 = a1;
  v28 = a4;
  v29 = a3;
  v15 = v13;
  (*v14)(v12, v9);
  v16 = (v30 + *(type metadata accessor for AssetLoader.LoadInformation(0) + 32));
  v18 = *v16;
  v17 = v16[1];
  v19 = qword_27E537C60;

  if (v19 != -1)
  {
    swift_once();
  }

  v37.i64[0] = v18;
  v37.i64[1] = v17;
  v38.i16[0] = 514;
  v38.i8[2] = 2;
  *(v38.i32 + 3) = v31;
  v38.i8[7] = v32;
  v38.i64[1] = 3;
  v39 = xmmword_27E541898;
  v40.i64[0] = qword_27E5418A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900, &qword_241366C30);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_241365C30;
  *(v20 + 32) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538870, &qword_241366C40);
  v21 = sub_24135152C();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_241365EA0;
  (*(v22 + 16))(v24 + v23, v27, v21);

  sub_241265FA4(&v37, v20, v24, v35);

  v33[0] = v37;
  v33[1] = v38;
  v33[2] = v39;
  v34 = v40.i64[0];
  sub_241244AE8(v33);
  v29(v35);

  v41 = v35[4];
  v42 = v35[5];
  v43[0] = v36[0];
  *(v43 + 9) = *(v36 + 9);
  v37 = v35[0];
  v38 = v35[1];
  v39 = v35[2];
  v40 = v35[3];
  return sub_241246278(&v37, &qword_27E538348, &qword_241366C10);
}

uint64_t sub_24126B05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_241352B6C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_241351DEC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v43 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_241351E0C();
  v45 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v44 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900, &qword_241366C30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241365C30;
  *(inited + 32) = a1;

  while (1)
  {
    v13 = inited >> 62;
    if (inited >> 62)
    {
      break;
    }

    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_4:
    if ((inited & 0xC000000000000001) != 0)
    {
      MEMORY[0x245CE29C0](0, inited);
      v14 = inited & 0xFFFFFFFFFFFFFF8;
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v14 = inited & 0xFFFFFFFFFFFFFF8;
      if (!v13)
      {
LABEL_7:
        v15 = *(v14 + 16);
        if (!v15)
        {
          goto LABEL_39;
        }

        goto LABEL_16;
      }
    }

    if (!sub_2413544EC())
    {
      goto LABEL_39;
    }

    if (sub_2413544EC() < 1)
    {
      goto LABEL_40;
    }

    v15 = sub_2413544EC();
LABEL_16:
    v17 = v15 - 1;
    if (__OFSUB__(v15, 1))
    {
      goto LABEL_38;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v47 = inited;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v13)
      {
        if (v17 <= *((inited & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_22:
      sub_2413544EC();
      goto LABEL_23;
    }

    if (v13)
    {
      goto LABEL_22;
    }

LABEL_23:
    inited = sub_24135461C();
    v47 = inited;
LABEL_24:
    sub_241257B58(0, 1, 0);
    v47 = inited;
    if (swift_conformsToProtocol2())
    {

      if (qword_27E537B10 == -1)
      {
LABEL_31:
        v20 = sub_241352FFC();
        __swift_project_value_buffer(v20, qword_27E5384A0);

        v21 = sub_241352FDC();
        v22 = sub_2413540DC();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v39 = v23;
          v24 = swift_slowAlloc();
          v42 = v7;
          v40 = v24;
          v46 = v24;
          *v23 = 136315138;
          v25 = v44;
          v38 = v22;
          sub_24135183C();
          v26 = v43;
          sub_241351DFC();
          v27 = v45;
          (*(v45 + 8))(v25, v10);
          v28 = AnchoringComponent.Target.arql_description.getter();
          v41 = v10;
          v29 = a2;
          v31 = v30;
          (*(v8 + 8))(v26, v42);
          v32 = sub_2412DDC2C(v28, v31, &v46);
          a2 = v29;
          v10 = v41;

          v33 = v39;
          *(v39 + 1) = v32;
          v34 = v33;
          _os_log_impl(&dword_241215000, v21, v38, "found anchor type: %s", v33, 0xCu);
          v35 = v40;
          __swift_destroy_boxed_opaque_existential_0(v40);
          v36 = v35;
          v7 = v42;
          MEMORY[0x245CE4870](v36, -1, -1);
          MEMORY[0x245CE4870](v34, -1, -1);
        }

        else
        {

          v25 = v44;
          v27 = v45;
        }

        sub_24135183C();
        sub_241351DFC();

        (*(v27 + 8))(v25, v10);
        v19 = 0;
        return (*(v8 + 56))(a2, v19, 1, v7);
      }

LABEL_41:
      swift_once();
      goto LABEL_31;
    }

    sub_241352C5C();
    sub_2413518AC();
    sub_241281024(v6);

    inited = v47;
    if (v47 >> 62)
    {
      if (sub_2413544EC() <= 0)
      {
LABEL_29:

        v19 = 1;
        return (*(v8 + 56))(a2, v19, 1, v7);
      }
    }

    else if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
    {
      goto LABEL_29;
    }
  }

  result = sub_2413544EC();
  if (result)
  {
    result = sub_2413544EC();
    if (!result)
    {
      goto LABEL_43;
    }

    goto LABEL_4;
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_24126B6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v44 = a2;
  v45 = a1;
  v43 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538328, &qword_241366250);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538550, &qword_241366CA0);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v39 - v6;
  v40 = sub_241352B6C();
  v7 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241352C5C();
  swift_allocObject();
  v10 = sub_24135180C();
  sub_241352C1C();
  v11 = [objc_opt_self() debug3DPreserveWorldTransform];
  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v12 = sub_241352FFC();
  v41 = __swift_project_value_buffer(v12, qword_27E5384A0);
  v13 = sub_241352FDC();
  v14 = sub_2413540DC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = v11;
    _os_log_impl(&dword_241215000, v13, v14, "preservingWorldTransform: %{BOOL}d", v15, 8u);
    MEMORY[0x245CE4870](v15, -1, -1);
  }

  sub_2413518AC();
  sub_241352B5C();

  v16 = *(v7 + 8);
  v17 = v40;
  v16(v9, v40);
  sub_2413518AC();
  sub_241311514(1, v9, v11);
  v16(v9, v17);
  sub_2413519BC();
  sub_2413519CC();
  sub_241352E3C();
  sub_2413519CC();
  v18 = v39;
  sub_241352BAC();
  sub_241352B7C();
  sub_241246278(v18, &qword_27E538550, &qword_241366CA0);
  v19 = sub_2413516CC();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_241352B7C();
  sub_241246278(v18, &qword_27E538550, &qword_241366CA0);
  sub_241352BEC();
  sub_241352BCC();

  sub_241352BCC();
  v20 = v42;
  sub_241352E7C();
  v21 = sub_241352E8C();
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  v22 = sub_241352A7C();
  sub_241352ACC();
  v22(v47, 0);

  v23 = sub_241352FDC();
  v24 = sub_2413540DC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v46 = v10;
    v47[0] = v26;
    *v25 = 136315138;

    v27 = sub_241353C7C();
    v29 = sub_2412DDC2C(v27, v28, v47);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_241215000, v23, v24, "processLoadedEntities post-fixups, wrapperEntity: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x245CE4870](v26, -1, -1);
    MEMORY[0x245CE4870](v25, -1, -1);
  }

  printHierarchy(entity:level:debugString:)(v10, 0, 0, 0xE000000000000000);
  v30 = sub_24127E020(v45);
  v32 = v31;
  v34 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900, &qword_241366C30);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_241365C30;
  *(v35 + 32) = v10;
  v36 = v43;
  *v43 = v35;
  v36[1] = v44;
  v36[2] = v30;
  v36[3] = v32;
  *(v36 + 32) = v34 & 1;
  v37 = MEMORY[0x277D84F98];
  v36[5] = MEMORY[0x277D84F90];
  v36[6] = v37;
}

void sub_24126BCBC(unint64_t a1, int a2)
{
  v61 = a2;
  v62 = sub_241352B6C();
  v56 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v52 - v5;
  v7 = sub_2413517DC();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v53 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538558, &qword_241366CA8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v52 - v10;
  v12 = sub_241352AAC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241352A8C();
  v16 = sub_241351E0C();
  sub_241352ABC();
  (*(v13 + 8))(v15, v12);
  v17 = (*(*(v16 - 8) + 48))(v11, 1, v16);
  sub_241246278(v11, &qword_27E538558, &qword_241366CA8);
  if (v17 == 1)
  {
    return;
  }

  if (qword_27E537B10 != -1)
  {
    goto LABEL_23;
  }

LABEL_3:
  v18 = sub_241352FFC();
  v19 = __swift_project_value_buffer(v18, qword_27E5384A0);

  v20 = sub_241352FDC();
  v21 = sub_2413540DC();

  v22 = os_log_type_enabled(v20, v21);
  v52[1] = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v63[0] = v24;
    *v23 = 136315394;
    v25 = sub_241352C0C();
    v27 = sub_2412DDC2C(v25, v26, v63);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    v28 = v53;
    sub_24135296C();
    sub_2413516FC();
    (*(v54 + 8))(v28, v55);
    v29 = sub_241353C7C();
    v31 = sub_2412DDC2C(v29, v30, v63);

    *(v23 + 14) = v31;
    _os_log_impl(&dword_241215000, v20, v21, "Found anchorComponent on %s %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CE4870](v24, -1, -1);
    MEMORY[0x245CE4870](v23, -1, -1);
  }

  v32 = sub_241352C5C();
  v33 = sub_24135188C();
  if (!v33)
  {
    return;
  }

  v59 = v33;
  sub_2413518AC();
  sub_24127F10C(&qword_27E538B00, MEMORY[0x277CDB190], MEMORY[0x277CDB1A0]);
  v34 = v62;
  v35 = sub_24135404C();
  if (v35)
  {
    v36 = v35;
    v64 = MEMORY[0x277D84F90];
    sub_24135466C();
    sub_24135403C();
    if (v36 < 0)
    {
      __break(1u);
      return;
    }

    do
    {
      v37 = sub_24135408C();

      v37(v63, 0);
      sub_24135464C();
      sub_24135467C();
      sub_24135468C();
      sub_24135465C();
      sub_24135407C();
      --v36;
    }

    while (v36);
    v57 = *(v56 + 8);
    v57(v6, v34);
    v6 = v64;
  }

  else
  {
    v57 = *(v56 + 8);
    v57(v6, v34);
    v6 = MEMORY[0x277D84F90];
  }

  v52[0] = a1;
  v58 = v32;
  if (!(v6 >> 62))
  {
    v38 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v38)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v38 = sub_2413544EC();
  if (v38)
  {
LABEL_13:
    v39 = 0;
    v56 = v6 & 0xC000000000000001;
    a1 = v6 & 0xFFFFFFFFFFFFFF8;
    v40 = v60;
    do
    {
      if (v56)
      {
        MEMORY[0x245CE29C0](v39, v6);
        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v39 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          swift_once();
          goto LABEL_3;
        }
      }

      sub_2413518AC();
      sub_241352B5C();

      v57(v40, v62);
      ++v39;
    }

    while (v41 != v38);
  }

LABEL_25:

  v42 = v53;
  sub_24135296C();
  sub_2413516FC();
  v43 = v55;
  v44 = *(v54 + 8);
  v44(v42, v55);
  REAnimationLibraryComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REComponentCopy();
    sub_24135296C();
    sub_2413516FC();
    v44(v42, v43);
    REEntityAddExistingComponent();
    sub_2413517EC();
  }

  if (!sub_24135246C())
  {
    goto LABEL_31;
  }

  sub_24135296C();
  sub_2413516FC();
  v44(v42, v43);
  if (!REEntityGetCustomComponent())
  {
    goto LABEL_31;
  }

  REComponentCopy();
  sub_24135296C();
  sub_2413516FC();
  v44(v42, v43);
  REEntityAddExistingComponent();
  sub_2413517EC();
  sub_24135296C();
  sub_2413516FC();
  v44(v42, v43);
  REEntityRemoveComponentByClass();

  v45 = sub_241352FDC();
  v46 = sub_2413540DC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v63[0] = v48;
    *v47 = 136315138;
    v49 = sub_241352C0C();
    v51 = sub_2412DDC2C(v49, v50, v63);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_241215000, v45, v46, "Moved the RAInteractions Component from old entity to new: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x245CE4870](v48, -1, -1);
    MEMORY[0x245CE4870](v47, -1, -1);

LABEL_31:

    return;
  }
}

void sub_24126C678(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_241352B6C();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_241351E0C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (swift_conformsToProtocol2())
  {

    sub_24135183C();
    sub_241351DFC();

    (*(v9 + 8))(v11, v8);
    v13 = sub_241351DEC();
    (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
    return;
  }

  v23 = v8;
  v24 = a2;
  v25 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900, &qword_241366C30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241365C30;
  *(inited + 32) = v12;

  while (1)
  {
    v15 = inited >> 62;
    if (!(inited >> 62))
    {
      break;
    }

    if (!sub_2413544EC())
    {
      goto LABEL_38;
    }

    if (!sub_2413544EC())
    {
      goto LABEL_39;
    }

LABEL_6:
    if ((inited & 0xC000000000000001) != 0)
    {
      MEMORY[0x245CE29C0](0, inited);
      v16 = inited & 0xFFFFFFFFFFFFFF8;
      if (!v15)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v16 = inited & 0xFFFFFFFFFFFFFF8;
      if (!v15)
      {
LABEL_9:
        v17 = *(v16 + 16);
        if (!v17)
        {
          goto LABEL_36;
        }

        goto LABEL_18;
      }
    }

    if (!sub_2413544EC())
    {
      goto LABEL_36;
    }

    if (sub_2413544EC() < 1)
    {
      goto LABEL_37;
    }

    v17 = sub_2413544EC();
LABEL_18:
    v18 = v17 - 1;
    if (__OFSUB__(v17, 1))
    {
      goto LABEL_35;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v26 = inited;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v15)
      {
        if (v18 <= *((inited & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_24:
      sub_2413544EC();
      goto LABEL_25;
    }

    if (v15)
    {
      goto LABEL_24;
    }

LABEL_25:
    inited = sub_24135461C();
    v26 = inited;
LABEL_26:
    sub_241257B58(0, 1, 0);
    v26 = inited;
    if (swift_conformsToProtocol2())
    {

      sub_24135183C();
      v21 = v24;
      sub_241351DFC();

      (*(v9 + 8))(v11, v23);
      v22 = sub_241351DEC();
      (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
      return;
    }

    sub_241352C5C();
    sub_2413518AC();
    sub_241281024(v7);

    inited = v26;
    if (v26 >> 62)
    {
      if (sub_2413544EC() <= 0)
      {
LABEL_31:

        v20 = sub_241351DEC();
        (*(*(v20 - 8) + 56))(v24, 1, 1, v20);
        return;
      }
    }

    else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
    {
      goto LABEL_31;
    }
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_24126CB90(unint64_t a1)
{
  v61 = sub_241352B6C();
  v56 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = v52 - v4;
  v6 = sub_2413517DC();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v53 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538558, &qword_241366CA8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v52 - v9;
  v11 = sub_241352AAC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241352A8C();
  v15 = sub_241351E0C();
  sub_241352ABC();
  (*(v12 + 8))(v14, v11);
  v16 = (*(*(v15 - 8) + 48))(v10, 1, v15);
  sub_241246278(v10, &qword_27E538558, &qword_241366CA8);
  if (v16 == 1)
  {
    return;
  }

  if (qword_27E537B10 != -1)
  {
    goto LABEL_23;
  }

LABEL_3:
  v17 = sub_241352FFC();
  v18 = __swift_project_value_buffer(v17, qword_27E5384A0);

  v19 = sub_241352FDC();
  v20 = sub_2413540DC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v62[0] = v22;
    *v21 = 136315394;
    v23 = sub_241352C0C();
    v25 = sub_2412DDC2C(v23, v24, v62);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = v53;
    sub_24135296C();
    sub_2413516FC();
    (*(v54 + 8))(v26, v55);
    v27 = sub_241353C7C();
    v29 = sub_2412DDC2C(v27, v28, v62);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_241215000, v19, v20, "Found anchorComponent on %s %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CE4870](v22, -1, -1);
    MEMORY[0x245CE4870](v21, -1, -1);
  }

  v30 = sub_241352C5C();
  v59 = sub_24135188C();
  if (!v59)
  {
    return;
  }

  v58 = v30;
  sub_2413518AC();
  sub_24127F10C(&qword_27E538B00, MEMORY[0x277CDB190], MEMORY[0x277CDB1A0]);
  v31 = v61;
  v32 = sub_24135404C();
  if (v32)
  {
    v33 = v32;
    v63 = MEMORY[0x277D84F90];
    sub_24135466C();
    sub_24135403C();
    if (v33 < 0)
    {
      __break(1u);
      return;
    }

    do
    {
      v34 = sub_24135408C();

      v34(v62, 0);
      sub_24135464C();
      sub_24135467C();
      sub_24135468C();
      sub_24135465C();
      sub_24135407C();
      --v33;
    }

    while (v33);
    v57 = *(v56 + 8);
    v57(v5, v31);
    v35 = v63;
  }

  else
  {
    v57 = *(v56 + 8);
    v57(v5, v31);
    v35 = MEMORY[0x277D84F90];
  }

  v52[1] = v18;
  v52[2] = a1;
  if (!(v35 >> 62))
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v36)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v36 = sub_2413544EC();
  if (v36)
  {
LABEL_13:
    v37 = 0;
    v56 = v35 & 0xC000000000000001;
    a1 = v35 & 0xFFFFFFFFFFFFFF8;
    v5 = v59;
    do
    {
      if (v56)
      {
        MEMORY[0x245CE29C0](v37, v35);
        v38 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v37 >= *(a1 + 16))
        {
          goto LABEL_22;
        }

        v38 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          swift_once();
          goto LABEL_3;
        }
      }

      v39 = v35;
      v40 = v60;
      sub_2413518AC();
      sub_241352B5C();

      v41 = v40;
      v35 = v39;
      v57(v41, v61);
      ++v37;
    }

    while (v38 != v36);
  }

LABEL_25:

  v42 = v53;
  sub_24135296C();
  sub_2413516FC();
  v43 = v55;
  v44 = *(v54 + 8);
  v44(v42, v55);
  REAnimationLibraryComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REComponentCopy();
    sub_24135296C();
    sub_2413516FC();
    v44(v42, v43);
    REEntityAddExistingComponent();
    sub_2413517EC();
  }

  if (!sub_24135246C())
  {
    goto LABEL_31;
  }

  sub_24135296C();
  sub_2413516FC();
  v44(v42, v43);
  if (!REEntityGetCustomComponent())
  {
    goto LABEL_31;
  }

  REComponentCopy();
  sub_24135296C();
  sub_2413516FC();
  v44(v42, v43);
  REEntityAddExistingComponent();
  sub_2413517EC();
  sub_24135296C();
  sub_2413516FC();
  v44(v42, v43);
  REEntityRemoveComponentByClass();

  v45 = sub_241352FDC();
  v46 = sub_2413540DC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v62[0] = v48;
    *v47 = 136315138;
    v49 = sub_241352C0C();
    v51 = sub_2412DDC2C(v49, v50, v62);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_241215000, v45, v46, "Moved the RAInteractions Component from old entity to new: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x245CE4870](v48, -1, -1);
    MEMORY[0x245CE4870](v47, -1, -1);

LABEL_31:

    return;
  }
}

void sub_24126D540(uint64_t a1)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v2 = sub_24135152C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - v7;
  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v9 = sub_241352FFC();
  v10 = __swift_project_value_buffer(v9, qword_27E5384A0);
  v41 = *(v3 + 16);
  v41(v8, a1, v2);
  v42 = v10;
  v11 = sub_241352FDC();
  v12 = sub_2413540DC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v39 = a1;
    v14 = v3;
    v15 = v13;
    v16 = swift_slowAlloc();
    v40 = v5;
    v17 = v16;
    v44[0] = v16;
    *v15 = 136315138;
    sub_24127F10C(&qword_27E539990, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v18 = sub_24135491C();
    v20 = v19;
    v43 = *(v14 + 8);
    v43(v8, v2);
    v21 = sub_2412DDC2C(v18, v20, v44);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_241215000, v11, v12, "Cleaning up temporary files at %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v22 = v17;
    v5 = v40;
    MEMORY[0x245CE4870](v22, -1, -1);
    a1 = v39;
    MEMORY[0x245CE4870](v15, -1, -1);
  }

  else
  {

    v43 = *(v3 + 8);
    v43(v8, v2);
  }

  v23 = [objc_opt_self() defaultManager];
  v24 = sub_24135144C();
  v44[0] = 0;
  v25 = [v23 removeItemAtURL:v24 error:v44];

  v26 = v44[0];
  if (v25)
  {

    v27 = v26;
  }

  else
  {
    v40 = v44[0];
    v28 = v44[0];
    v29 = sub_24135139C();

    swift_willThrow();
    v41(v5, a1, v2);
    v30 = sub_241352FDC();
    v31 = sub_2413540BC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = v5;
      v34 = swift_slowAlloc();
      v44[0] = v34;
      *v32 = 136315138;
      sub_24127F10C(&qword_27E539990, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v35 = sub_24135491C();
      v37 = v36;
      v43(v33, v2);
      v38 = sub_2412DDC2C(v35, v37, v44);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_241215000, v30, v31, "Failed to cleanup temporary files at %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x245CE4870](v34, -1, -1);
      MEMORY[0x245CE4870](v32, -1, -1);
    }

    else
    {

      v43(v5, v2);
    }
  }
}

unint64_t sub_24126DA74(unint64_t a1, uint64_t *a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_2413544EC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  v6 = 0;
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x245CE29C0](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    v9 = *a2;

    if (v9 && v8 == v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t sub_24126DB8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538568, &qword_241366CC0);
    v2 = sub_24135482C();
    v19 = v2;
    sub_2413546EC();
    v3 = sub_24135479C();
    if (v3)
    {
      v4 = v3;
      sub_241352C5C();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_24135255C();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_2412A3B9C(v12 + 1, 1);
        }

        v2 = v19;
        sub_24127F10C(&qword_27E5389B0, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D0]);
        result = sub_241353B8C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_24135479C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_24126DDFC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B80, &qword_241367670);
    v2 = sub_24135482C();
    v19 = v2;
    sub_2413546EC();
    v3 = sub_24135479C();
    if (v3)
    {
      v4 = v3;
      sub_241246158(0, &qword_27E538A40, 0x277D75C68);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for EntityController(0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_2412A4678(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_2413542AC();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_24135479C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

unint64_t sub_24126E030(unint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  result = sub_24126DA74(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return sub_2413544EC();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  swift_beginAccess();
  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == sub_2413544EC())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x245CE29C0](v9, v5);
      goto LABEL_16;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    v11 = *(v5 + 8 * v9 + 32);

LABEL_16:
    v12 = *a2;

    if (!v12 || v11 != v12)
    {
      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x245CE29C0](v8, v5);
          v14 = MEMORY[0x245CE29C0](v9, v5);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v15)
          {
            goto LABEL_47;
          }

          if (v9 >= v15)
          {
            goto LABEL_48;
          }

          v13 = *(v5 + 32 + 8 * v8);
          v14 = *(v5 + 32 + 8 * v9);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_24130B06C();
          v16 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v16) = 0;
        }

        v17 = v5 & 0xFFFFFFFFFFFFFF8;
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v14;

        if ((v5 & 0x8000000000000000) != 0 || v16)
        {
          v5 = sub_24130B06C();
          v17 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v9 >= *(v17 + 16))
        {
          goto LABEL_45;
        }

        *(v17 + 8 * v9 + 32) = v13;

        *a1 = v5;
      }

      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_44;
      }
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
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
  return sub_2413544EC();
}

void sub_24126E2A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_24135472C() == *(a4 + 36))
    {
      sub_24135473C();
      sub_241352C5C();
      swift_dynamicCast();
      sub_2412FD968(v6);
      v5 = v4;

      if (v5)
      {
        sub_2413546FC();
        sub_24135475C();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_24135447C();
}

void sub_24126E3F8(uint64_t *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_24135477C();
      sub_241352C5C();
      swift_dynamicCast();
      sub_24135255C();
      swift_dynamicCast();
      *a1 = v10;
      return;
    }

    goto LABEL_17;
  }

  if (a4)
  {
    if (sub_24135472C() != *(a5 + 36))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    sub_24135473C();
    sub_241352C5C();
    swift_dynamicCast();
    a2 = sub_2412FD968(v10);
    v9 = v8;

    if (v9)
    {
LABEL_12:
      *a1 = *(*(a5 + 56) + 8 * a2);

      return;
    }

    __break(1u);
  }

  if ((a2 & 0x8000000000000000) != 0 || 1 << *(a5 + 32) <= a2)
  {
    goto LABEL_14;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*(a5 + 36) == a3)
  {
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_24126E5B0(void *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_24135477C();
      sub_241246158(0, &qword_27E538A40, 0x277D75C68);
      swift_dynamicCast();
      type metadata accessor for EntityController(0);
      swift_dynamicCast();
      *a1 = v13;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_24135472C() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_24135473C();
  sub_241246158(0, &qword_27E538A40, 0x277D75C68);
  swift_dynamicCast();
  a2 = sub_2412FDC20(v13);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  v11 = *(*(a5 + 56) + 8 * a2);
  *a1 = v11;
  v10;
  v12 = v11;
}

uint64_t _s11AssetViewer0A6LoaderV12FileMetadataV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (sub_24135497C() & 1) != 0)
  {
  }

  return 0;
}

unint64_t sub_24126E81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E5384C0;
  if (!qword_27E5384C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5384C0);
  }

  return result;
}

unint64_t sub_24126E874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E5384C8;
  if (!qword_27E5384C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5384C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrackedRaycastState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrackedRaycastState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for AssetLoader.LoadInformation(uint64_t a1)
{
  result = qword_27E5384D0;
  if (!qword_27E5384D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24126EA9C(uint64_t a1)
{
  sub_24135152C();
  if (v1 <= 0x3F)
  {
    sub_24126EB74(319);
    if (v2 <= 0x3F)
    {
      sub_24126EBD8(319);
      if (v3 <= 0x3F)
      {
        sub_24126EC50(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24126EB74(uint64_t a1)
{
  if (!qword_27E5384E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5384E8, &qword_241366B30);
    v1 = sub_24135432C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E5384E0);
    }
  }
}

void sub_24126EBD8(uint64_t a1)
{
  if (!qword_27E5384F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5384F8, &qword_241366B38);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E5384F0);
    }
  }
}

void sub_24126EC50(uint64_t a1)
{
  if (!qword_27E538500)
  {
    sub_24135152C();
    v1 = sub_241353E7C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E538500);
    }
  }
}

__n128 __swift_memcpy56_16(uint64_t a1, uint64_t a2)
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

uint64_t sub_24126ECC4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24126ED0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24126ED84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24126EDCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24126EE38(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24124647C;

  return sub_241347174(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_24126EF10(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538328, &qword_241366250);
  MEMORY[0x28223BE20](v1 - 8);
  v25[0] = v25 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538550, &qword_241366CA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v25 - v4;
  v6 = sub_241352B6C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241352C5C();
  swift_allocObject();
  v10 = sub_24135180C();
  sub_241352C1C();

  sub_2413518AC();
  sub_241352B5C();

  v11 = *(v7 + 8);
  v11(v9, v6);
  sub_2413518AC();
  sub_241311740(1, v9);
  v11(v9, v6);
  sub_2413519BC();
  sub_2413519CC();
  sub_241352E3C();
  sub_2413519CC();
  sub_241352BAC();
  sub_241352B7C();
  sub_241246278(v5, &qword_27E538550, &qword_241366CA0);
  v12 = sub_2413516CC();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  sub_241352B7C();
  sub_241246278(v5, &qword_27E538550, &qword_241366CA0);
  sub_241352BEC();
  sub_241352BCC();

  sub_241352BCC();
  v13 = v25[0];
  sub_241352E7C();
  v14 = sub_241352E8C();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  v15 = sub_241352A7C();
  sub_241352ACC();
  v15(v26, 0);
  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v16 = sub_241352FFC();
  __swift_project_value_buffer(v16, qword_27E5384A0);

  v17 = sub_241352FDC();
  v18 = sub_2413540DC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25[1] = v10;
    v26[0] = v20;
    *v19 = 136315138;

    v21 = sub_241353C7C();
    v23 = sub_2412DDC2C(v21, v22, v26);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_241215000, v17, v18, "processLoadedEntities post-fixups, wrapperEntity: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x245CE4870](v20, -1, -1);
    MEMORY[0x245CE4870](v19, -1, -1);
  }

  printHierarchy(entity:level:debugString:)(v10, 0, 0, 0xE000000000000000);
  return v10;
}

double sub_24126F3F8(char *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *), void *a5)
{
  v10 = sub_241352AEC();
  v94 = *(v10 - 8);
  v95 = v10;
  MEMORY[0x28223BE20](v10);
  v93 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Information = type metadata accessor for AssetLoader.LoadInformation(0);
  v98 = *(Information - 8);
  MEMORY[0x28223BE20](Information);
  v99 = v13;
  v100 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850, &unk_241366BF0);
  MEMORY[0x28223BE20](v14 - 8);
  v101 = &v92 - v15;
  v16 = sub_24135152C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v108 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v92 - v20;
  v22 = swift_allocObject();
  v102 = a2;
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = a4;
  v22[5] = a5;
  v110 = v21;
  v111 = v22;
  v23 = *(v17 + 16);
  v24 = a1;
  v109 = v16;
  v25 = v16;
  v26 = a1;
  v27 = v23;
  v23(v21, v24, v25);
  v106 = Information;
  v103 = a3;

  v104 = a5;

  ServiceLocator = REEngineGetServiceLocator();
  v29 = MEMORY[0x245CE3AB0](ServiceLocator);
  v105 = a4;
  if (v29)
  {
    v32 = RERenderManagerGetRenderDevice();
    if (([objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v118[3] = sub_241351AFC();
      v118[4] = MEMORY[0x277CDAC58];
      __swift_allocate_boxed_opaque_existential_1(v118);
      swift_unknownObjectRetain();
      v96 = v32;
      v33 = sub_241351AEC();
      v34 = *&v26[*(v106 + 28)];
      v107 = v17;
      if (!v34)
      {
        v68 = v27;
        MEMORY[0x28223BE20](v33);
        v67 = v110;
        v69 = v111;
        *(&v92 - 6) = v110;
        *(&v92 - 5) = v118;
        *(&v92 - 4) = sub_2412807A0;
        *(&v92 - 3) = v69;
        *(&v92 - 2) = v26;
        v70 = [objc_opt_self() currentThread];
        v71 = [v70 isMainThread];

        if (v71)
        {
          v108 = &v92;
          sub_241352C5C();
          sub_24127C104(v118, &v126);
          v72 = v93;
          sub_241352ADC();
          v74 = sub_241352C2C();
          (*(v94 + 8))(v72, v95);
          v75 = &v26[*(v106 + 32)];
          v77 = *v75;
          v76 = v75[1];
          v78 = qword_27E537C60;

          if (v78 != -1)
          {
            swift_once();
          }

          v126.i64[0] = v77;
          v126.i64[1] = v76;
          LOWORD(v127) = 514;
          BYTE2(v127) = 2;
          *(&v127 + 3) = v114;
          BYTE7(v127) = v115;
          *(&v127 + 1) = 3;
          v128 = xmmword_27E541898;
          *&v129 = qword_27E5418A8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900, &qword_241366C30);
          v79 = swift_allocObject();
          *(v79 + 16) = xmmword_241365C30;
          *(v79 + 32) = v74;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538870, &qword_241366C40);
          v80 = (*(v107 + 80) + 32) & ~*(v107 + 80);
          v81 = swift_allocObject();
          *(v81 + 16) = xmmword_241365EA0;
          v68(v81 + v80, v110, v109);

          sub_241265FA4(&v126, v79, v81, &v119);

          v116[0] = v126;
          v116[1] = v127;
          v116[2] = v128;
          v117 = v129;
          sub_241244AE8(v116);
          v130 = v123;
          v131 = v124;
          v132[0] = v125[0];
          *(v132 + 9) = *(v125 + 9);
          v126 = v119;
          v127 = v120;
          v128 = v121;
          v129 = v122;
          if (qword_27E537D08 != -1)
          {
            swift_once();
          }

          v82 = qword_27E53A740;
          v83 = sub_241353EEC();
          v84 = v101;
          (*(*(v83 - 8) + 56))(v101, 1, 1, v83);
          v85 = qword_27E537D00;
          v86 = v103;

          v87 = v105;
          if (v85 != -1)
          {
            swift_once();
          }

          v88 = qword_27E53A738;
          v89 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor, &unk_24136B618);
          v90 = swift_allocObject();
          *(v90 + 16) = v88;
          *(v90 + 24) = v89;
          *(v90 + 32) = v82;
          *(v90 + 40) = 9;
          *(v90 + 48) = v102;
          *(v90 + 56) = v86;

          sub_241327238(0, 0, v84, &unk_241366D68, v90);

          v112[4] = v130;
          v112[5] = v131;
          *v113 = v132[0];
          *&v113[9] = *(v132 + 9);
          v112[0] = v126;
          v112[1] = v127;
          v112[2] = v128;
          v112[3] = v129;
          v87(v112);
          swift_unknownObjectRelease();

          sub_241246278(&v126, &qword_27E538348, &qword_241366C10);
          v17 = v107;
          v66 = v109;
          v67 = v110;
        }

        else
        {
          sub_241246158(0, &qword_27E538920, 0x277D85C78);
          v73 = sub_24135416C();
          sub_24135417C();

          swift_unknownObjectRelease();
          v66 = v109;
          v17 = v107;
        }

        goto LABEL_28;
      }

      if (qword_27E537B10 == -1)
      {
LABEL_5:
        v35 = sub_241352FFC();
        __swift_project_value_buffer(v35, qword_27E5384A0);
        v36 = sub_241352FDC();
        v37 = sub_2413540DC();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_241215000, v36, v37, "Loading Reality File in background", v38, 2u);
          MEMORY[0x245CE4870](v38, -1, -1);
        }

        v39 = swift_allocObject();
        v103 = v39;
        *(v39 + 16) = 0;
        v106 = v39 + 16;
        sub_241352C5C();
        sub_24127C104(v118, &v126);
        v40 = v110;
        v41 = sub_241352B9C();
        v105 = v41;
        sub_241246278(&v126, &qword_27E538528, &qword_241366C60);
        v126.i64[0] = v41;
        v42 = swift_allocObject();
        v104 = v42;
        v43 = v111;
        v42[2] = sub_2412807A0;
        v42[3] = v43;
        v42[4] = v39;
        v44 = v100;
        sub_24127BF00(v26, v100);
        v45 = v109;
        v27(v108, v40, v109);
        v46 = (*(v98 + 80) + 32) & ~*(v98 + 80);
        v47 = v107;
        v48 = (v99 + *(v107 + 80) + v46) & ~*(v107 + 80);
        v49 = (v97 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
        v50 = swift_allocObject();
        *(v50 + 16) = sub_2412807A0;
        *(v50 + 24) = v43;
        sub_241244A20(v44, v50 + v46);
        v51 = v45;
        v52 = v103;
        (*(v47 + 32))(v50 + v48, v108, v51);
        *(v50 + v49) = v52;
        swift_retain_n();
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538530, &qword_241366C68);
        sub_24123D370(&qword_27E538538, &qword_27E538530, &qword_241366C68, MEMORY[0x277CDABA0]);
        v53 = sub_24135319C();

        v54 = v106;
        swift_beginAccess();
        *v54 = v53;

        if (*v54)
        {
          v55 = qword_27E537B18;

          if (v55 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539D50, &qword_241366C70);
          sub_24123D370(&qword_27E538540, &qword_27E539D50, &qword_241366C70, MEMORY[0x277D83990]);
          sub_2413530BC();
          swift_endAccess();
        }

        else
        {
        }

        swift_unknownObjectRelease();
        v66 = v109;
        v17 = v107;
        v67 = v110;
LABEL_28:
        __swift_destroy_boxed_opaque_existential_0(v118);
        goto LABEL_29;
      }
    }

    swift_once();
    goto LABEL_5;
  }

  sub_241255C30(0, v30, v31);
  v56 = swift_allocError();
  *v57 = 0xD000000000000020;
  *(v57 + 8) = 0x800000024135ECA0;
  *(v57 + 16) = 0;
  *(v57 + 24) = 0;
  v126.i64[0] = v56;
  sub_24127BE04(&v126);
  if (qword_27E537D08 != -1)
  {
    swift_once();
  }

  v58 = qword_27E53A740;
  v59 = sub_241353EEC();
  v60 = v101;
  (*(*(v59 - 8) + 56))(v101, 1, 1, v59);
  v61 = qword_27E537D00;
  v62 = v103;

  if (v61 != -1)
  {
    swift_once();
  }

  v63 = qword_27E53A738;
  v64 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor, &unk_24136B618);
  v65 = swift_allocObject();
  *(v65 + 16) = v63;
  *(v65 + 24) = v64;
  *(v65 + 32) = v58;
  *(v65 + 40) = 9;
  *(v65 + 48) = v102;
  *(v65 + 56) = v62;

  sub_241327238(0, 0, v60, &unk_241366D58, v65);

  v123 = v130;
  v124 = v131;
  v125[0] = v132[0];
  *(v125 + 9) = *(v132 + 9);
  v119 = v126;
  v120 = v127;
  v121 = v128;
  v122 = v129;
  v105(&v119);

  v66 = v109;
  v67 = v110;
LABEL_29:
  (*(v17 + 8))(v67, v66);

  return result;
}

uint64_t sub_24127042C(int a1, id a2)
{
  if (a1 != 1)
  {
LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  v3 = [a2 pixelFormat];
  if ((v3 - 10) < 2)
  {
    v4 = 4;
    goto LABEL_13;
  }

  if (v3 != 71 && v3 != 70)
  {
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v5 = sub_241352FFC();
    __swift_project_value_buffer(v5, qword_27E5384A0);
    v6 = a2;
    v7 = sub_241352FDC();
    v8 = sub_2413540BC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = [v6 pixelFormat];

      _os_log_impl(&dword_241215000, v7, v8, "Unexpected pixel format %lu", v9, 0xCu);
      MEMORY[0x245CE4870](v9, -1, -1);
    }

    else
    {
    }

    goto LABEL_12;
  }

  v4 = 2;
LABEL_13:

  return v4;
}

void sub_2412705A0(uint64_t a1, double a2)
{
  v3 = v2;
  sub_241353A8C();
  v5 = MEMORY[0x277D84F90];
  v79 = MEMORY[0x277D84F90];
  sub_24135394C();
  sub_241353A2C();
  sub_24135484C();
  if (v78)
  {
LABEL_2:
    v67 = v5;
    while (1)
    {
      v6 = RETextureImportOperationGetImageUTType();
      if (v6)
      {
        v7 = v6;
        v8 = RETextureImportOperationCopyImageProperties();
        if (v8)
        {
          v9 = v8;
          PixelFormatMode = RETextureImportOperationGetPixelFormatMode();
          v11 = RETextureImportOperationCopyTextureDescriptorTemplate();
          v75 = RETextureImportOperationGetMipmapMode() != 2;
          v12 = v11;
          v13 = sub_24127042C(PixelFormatMode, v12);
          v15 = v14;
          v16 = objc_allocWithZone(ASVTextureDescription);
          v17 = v9;
          v18 = v7;
          v19 = sub_241353BDC();

          v20 = [v16 initWithName:v19 destinationPixelFormat:v13 imageProperties:v15 fileType:v17 generateMipmaps:v18, v75];

          if (v20)
          {
            v24 = v20;
            MEMORY[0x245CE21C0]();
            if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_241353E4C();
            }

            sub_241353E6C();

            v5 = v79;
            sub_24135484C();
            goto LABEL_2;
          }

          goto LABEL_3;
        }
      }

      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v21 = sub_241352FFC();
      __swift_project_value_buffer(v21, qword_27E5384A0);
      v18 = sub_241352FDC();
      v22 = sub_2413540BC();
      if (os_log_type_enabled(v18, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_241215000, v18, v22, "Either file type and/or image properties is NULL", v23, 2u);
        MEMORY[0x245CE4870](v23, -1, -1);
      }

LABEL_3:

      sub_24135484C();
      if (!v78)
      {
        v3 = v2;
        v5 = v67;
        break;
      }
    }
  }

  v25 = [objc_opt_self() defaultTextureConverters];
  if (!v25)
  {
    sub_241246158(0, &qword_27E538510, off_278CC9A20);
    sub_241353E2C();
    v25 = sub_241353E1C();
  }

  v26 = objc_opt_self();
  sub_241246158(0, &qword_27E538518, off_278CC9A28);
  v27 = sub_241353E1C();
  v28 = [v26 conversionEstimatesFromTextureDescriptions:v27 toFitAvailableMemory:a1 withConverters:v25 preferredMaxTextureSize:0 outcome:a2];

  if (v28)
  {
    sub_241246158(0, &qword_27E538520, off_278CC9A18);
    v29 = sub_241353E2C();
    v30 = v29;
    if (v29 >> 62)
    {
LABEL_52:
      v76 = sub_2413544EC();
    }

    else
    {
      v76 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v59 = v26;
    v60 = v28;
    if (!v76)
    {
LABEL_42:

      [v59 peakMemoryForConversionEstimates_];

      return;
    }

    v31 = 0;
    v73 = v30 & 0xC000000000000001;
    v61 = v30 & 0xFFFFFFFFFFFFFF8;
    v32 = &selRef_addConstraints_;
    v68 = v5;
    while (1)
    {
      if (v73)
      {
        v33 = MEMORY[0x245CE29C0](v31, v30);
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v31 >= *(v61 + 16))
        {
          goto LABEL_51;
        }

        v33 = *(v30 + 8 * v31 + 32);
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }
      }

      v28 = v33;
      v35 = [v28 downsamplingFactor];
      if (v35 == 1)
      {
      }

      else
      {
        v36 = v35;
        kdebug_texture_downsample_begin();
        v72 = v36;
        if (HIDWORD(v36))
        {

          __break(1u);
          return;
        }

        v70 = v34;
        if (qword_27E537B10 != -1)
        {
          swift_once();
        }

        v37 = sub_241352FFC();
        __swift_project_value_buffer(v37, qword_27E5384A0);
        v5 = v28;
        v38 = sub_241352FDC();
        v39 = sub_2413540DC();
        v74 = v3;
        v69 = v28;
        if (os_log_type_enabled(v38, v39))
        {
          v3 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v77 = v66;
          *v3 = 136316162;
          v40 = [v5 name];
          v64 = v38;
          v41 = v30;
          v42 = sub_241353C0C();
          v44 = v43;

          v45 = v42;
          v30 = v41;
          v46 = sub_2412DDC2C(v45, v44, &v77);

          *(v3 + 4) = v46;
          *(v3 + 12) = 1024;
          LOBYTE(v44) = v39;
          v26 = v72;
          *(v3 + 14) = v72;
          *(v3 + 18) = 1024;
          [v5 originalSize];
          v62 = v47;

          *(v3 + 20) = v62;
          *(v3 + 24) = 1024;
          v32 = &selRef_addConstraints_;
          [v5 originalSize];
          v63 = v48;

          *(v3 + 26) = v63;
          *(v3 + 30) = 2112;
          v49 = [objc_opt_self() currentThread];
          *(v3 + 32) = v49;
          v28 = v64;
          *v65 = v49;
          _os_log_impl(&dword_241215000, v64, v44, "Downsampling %s by a factor of %u, original size: %dx%d, Thread: %@", v3, 0x28u);
          sub_241246278(v65, &unk_27E539B90, &unk_2413660D0);
          MEMORY[0x245CE4870](v65, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v66);
          MEMORY[0x245CE4870](v66, -1, -1);
          MEMORY[0x245CE4870](v3, -1, -1);
        }

        else
        {

          v26 = v72;
        }

        if ((v26 & 0x80000000) != 0)
        {
          goto LABEL_50;
        }

        v50 = [v5 name];

        sub_241353C0C();
        sub_241353A3C();
        v3 = v74;
        if (v74)
        {

          return;
        }

        [v5 v32[166]];
        [v5 v32[166]];
        kdebug_texture_downsample_end();
        v5 = v68;
        v28 = v69;
        v34 = v70;
      }

      ++v31;
      if (v34 == v76)
      {
        goto LABEL_42;
      }
    }
  }

  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v51 = sub_241352FFC();
  __swift_project_value_buffer(v51, qword_27E5384A0);
  v52 = sub_241352FDC();
  v53 = sub_2413540BC();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_241215000, v52, v53, "File too big to load on this device", v54, 2u);
    MEMORY[0x245CE4870](v54, -1, -1);
  }

  sub_241255C30(v55, v56, v57);
  swift_allocError();
  *(v58 + 8) = 0;
  *(v58 + 16) = 0;
  *v58 = 3;
  *(v58 + 24) = 2;
  swift_willThrow();
}

double sub_241270F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(_OWORD *), uint64_t a7)
{
  v37 = a3;
  v38 = a4;
  v42 = a2;
  Information = type metadata accessor for AssetLoader.LoadInformation(0);
  v36 = *(Information - 8);
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](Information);
  v12 = sub_241353ABC();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v41 = a6;
  v43 = v13;
  v13[4] = a7;
  sub_241353A9C();
  sub_241352C5C();
  v39 = a5;

  v40 = a7;

  v14 = sub_241353A7C();
  if (v14)
  {
    v15 = v14;
    sub_241353A8C();
    MEMORY[0x245CE1E80](0xD000000000000031, 0x800000024135EEA0);
    LOBYTE(v46[0]) = 0;
    sub_241353B0C();

    v16 = v42;
    sub_2412705A0(*(v42 + *(Information + 36)), *(v42 + *(Information + 36) + 8));

    sub_24127BF00(v16, &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v30 = (*(v36 + 80) + 40) & ~*(v36 + 80);
    v31 = swift_allocObject();
    v32 = v38;
    v31[2] = v37;
    v31[3] = v32;
    v31[4] = v15;
    sub_241244A20(&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
    v33 = (v31 + ((v11 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = MEMORY[0x277D84F90];
    v33[1] = 0x656E6961746E6F43;
    v33[2] = 0xE900000000000072;

    sub_241353A4C();
    if (*(v16 + *(Information + 28)))
    {
      sub_24135397C();
    }

    else
    {
      sub_241353A6C();
    }
  }

  else
  {
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v17 = sub_241352FFC();
    __swift_project_value_buffer(v17, qword_27E5384A0);
    v18 = sub_241352FDC();
    v19 = sub_2413540DC();
    v20 = v43;
    if (os_log_type_enabled(v18, v19))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_241215000, v18, v19, "Unable to create Live Pipeline Instance", v21, 2u);
      MEMORY[0x245CE4870](v21, -1, -1);
    }

    MEMORY[0x28223BE20](v22);
    *(&v36 - 2) = sub_241280850;
    *(&v36 - 1) = v20;
    v23 = [objc_opt_self() currentThread];
    v24 = [v23 isMainThread];

    if (v24)
    {
      sub_241255C30(v25, v26, v27);
      v28 = swift_allocError();
      *v29 = 0xD000000000000027;
      *(v29 + 8) = 0x800000024135EE70;
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      *&v46[0] = v28;
      sub_24127BE04(v46);
      swift_beginAccess();
      v44[4] = v46[4];
      v44[5] = v46[5];
      v45[0] = v47[0];
      *(v45 + 9) = *(v47 + 9);
      v44[0] = v46[0];
      v44[1] = v46[1];
      v44[2] = v46[2];
      v44[3] = v46[3];
      v41(v44);
    }

    else
    {
      sub_241246158(0, &qword_27E538920, 0x277D85C78);
      v35 = sub_24135416C();
      sub_24135417C();
    }
  }

  return result;
}

uint64_t sub_241271608(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void (*a4)(_OWORD *), uint64_t a5)
{
  v86 = a3;
  v87 = a2;
  v84 = a1;
  v9 = sub_2413538CC();
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x28223BE20](v9);
  v77 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_2413538FC();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Information = type metadata accessor for AssetLoader.LoadInformation(0);
  v12 = *(Information - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](Information);
  v74 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v82 = &v72 - v15;
  MEMORY[0x28223BE20](v16);
  v81 = &v72 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v72 - v19;
  v21 = swift_allocObject();
  *(v21 + 2) = a3;
  *(v21 + 3) = a4;
  v73 = a4;
  *(v21 + 4) = a5;
  LODWORD(v87) = *v87;
  sub_24127BF00(a1, v20);
  v22 = *(v12 + 80);
  v23 = (v22 + 16) & ~v22;
  v24 = swift_allocObject();
  sub_241244A20(v20, v24 + v23);
  *(v24 + v23 + v13) = v87;
  v25 = v24 + ((v23 + v13) & 0xFFFFFFFFFFFFFFF8);
  *(v25 + 8) = sub_241280850;
  *(v25 + 16) = v21;
  swift_retain_n();
  v85 = a5;
  v26 = v84;
  swift_retain_n();
  v87 = v21;

  sub_2413514EC();
  sub_241353B1C();
  swift_allocObject();
  v27 = sub_241353ADC();
  if (!v27)
  {
    v44 = v74;
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v45 = sub_241352FFC();
    __swift_project_value_buffer(v45, qword_27E5384A0);
    sub_24127BF00(v26, v44);
    v46 = sub_241352FDC();
    v47 = sub_2413540DC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&aBlock = v49;
      *v48 = 136380675;
      v50 = sub_2413514EC();
      v52 = v51;
      sub_241244A8C(v44);
      v53 = sub_2412DDC2C(v50, v52, &aBlock);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_241215000, v46, v47, "Unable to create stage for file %{private}s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      v54 = v49;
      v27 = 0;
      MEMORY[0x245CE4870](v54, -1, -1);
      MEMORY[0x245CE4870](v48, -1, -1);
    }

    else
    {

      v55 = sub_241244A8C(v44);
    }

    MEMORY[0x28223BE20](v55);
    v61 = v87;
    *(&v72 - 2) = sub_241280850;
    *(&v72 - 1) = v61;
    v62 = [objc_opt_self() currentThread];
    v63 = [v62 isMainThread];

    if (v63)
    {
      sub_241255C30(v64, v65, v66);
      v67 = swift_allocError();
      *v68 = 0xD000000000000017;
      *(v68 + 8) = 0x800000024135EE50;
      *(v68 + 16) = 0;
      *(v68 + 24) = 0;
      *&aBlock = v67;
      sub_24127BE04(&aBlock);
      swift_beginAccess();
      v88[4] = v94;
      v88[5] = v95;
      v89[0] = v96[0];
      *(v89 + 9) = *(v96 + 9);
      v88[0] = aBlock;
      v88[1] = v91;
      v88[2] = v92;
      v88[3] = v93;
      v73(v88);
    }

    else
    {
      sub_241246158(0, &qword_27E538920, 0x277D85C78);
      v69 = sub_24135416C();
      sub_24135417C();
    }

    goto LABEL_15;
  }

  v28 = v81;
  sub_24127BF00(v26, v81);
  v29 = v82;
  sub_24127BF00(v28, v82);
  v30 = (v22 + 40) & ~v22;
  v31 = swift_allocObject();
  v31[2] = v27;
  v31[3] = sub_241280850;
  v31[4] = v87;
  v32 = sub_241244A20(v28, v31 + v30);
  v33 = (v31 + ((v13 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v33 = sub_2412807B0;
  v33[1] = v24;
  v34 = v26 + *(Information + 28);
  v35 = v27;
  v36 = *v34;
  v37 = v24;
  if (!*v34)
  {
    MEMORY[0x28223BE20](v32);
    *(&v72 - 2) = sub_2412807AC;
    *(&v72 - 1) = v31;
    v56 = objc_opt_self();

    v57 = [v56 currentThread];
    v27 = v35;
    v58 = [v57 isMainThread];

    if (v58)
    {
      v59 = v86;

      v60 = v85;

      sub_241270F54(v27, v29, sub_2412807B0, v37, v59, v73, v60);

      sub_241244A8C(v29);
    }

    else
    {
      sub_241244A8C(v29);
      sub_241246158(0, &qword_27E538920, 0x277D85C78);
      v70 = sub_24135416C();
      sub_24135417C();
    }

LABEL_15:

    return v27;
  }

  v38 = *(v34 + 8);

  sub_24127EF78(v36, v38);
  sub_241244A8C(v29);

  v39 = swift_allocObject();
  *(v39 + 16) = sub_2412807AC;
  *(v39 + 24) = v31;
  *&v92 = sub_2412807B4;
  *(&v92 + 1) = v39;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v91 = sub_2412D5698;
  *(&v91 + 1) = &block_descriptor_412;
  v40 = _Block_copy(&aBlock);

  v41 = v75;
  sub_2413538DC();
  *&v88[0] = MEMORY[0x277D84F90];
  sub_24127F10C(&qword_27E539870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v84 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930, &unk_2413674A0);
  Information = v37;
  sub_24123D370(&qword_27E539880, &unk_27E538930, &unk_2413674A0, MEMORY[0x277D83970]);
  v42 = v77;
  v43 = v80;
  sub_24135444C();
  MEMORY[0x245CE2540](0, v41, v42, v40);
  _Block_release(v40);

  (*(v79 + 8))(v42, v43);
  (*(v76 + 8))(v41, v78);

  return v84;
}

unint64_t sub_2412720D0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_241353CFC();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_241353D9C();
}

void sub_24127218C(uint64_t a1, char a2, void (**a3)(char *, uint64_t))
{
  v54 = a3;
  v6 = sub_24135152C();
  v48 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538128, &qword_241365E48);
  MEMORY[0x28223BE20](v9);
  v53 = &v45 - v12;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return;
  }

  v14 = *(v10 + 48);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v50 = *(v11 + 72);
  v45 = v15;
  v46 = a1;
  v16 = a1 + v15;
  v17 = v53;
  sub_241246210(v16, v53, &qword_27E538128, &qword_241365E48);
  v18 = *(v48 + 32);
  v51 = (v48 + 32);
  v52 = v6;
  v18(v8, v17, v6);
  v49 = v14;
  v19 = *(v17 + v14);
  v20 = *v54;
  v22 = sub_2412FDA8C(v8);
  v23 = *(v20 + 2);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    goto LABEL_24;
  }

  LOBYTE(v3) = v21;
  if (*(v20 + 3) >= v25)
  {
    v17 = v51;
    if ((a2 & 1) == 0)
    {
      goto LABEL_26;
    }

    v28 = v19;
    while (1)
    {
LABEL_8:
      v19 = *v54;
      v47 = v17 - 3;
      if (v3)
      {
        v3 = v52;
        (*(v17 - 3))(v8, v52);
        *(*(v19 + 7) + 8 * v22) = v28;
      }

      else
      {
        *(v19 + (v22 >> 6) + 8) |= 1 << v22;
        v3 = v52;
        v18((*(v19 + 6) + *(v48 + 72) * v22), v8, v52);
        *(*(v19 + 7) + 8 * v22) = v28;
        v29 = *(v19 + 2);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_25;
        }

        *(v19 + 2) = v31;
      }

      v18 = (v13 - 1);
      if (v13 == 1)
      {
        return;
      }

      v13 = v46 + v50 + v45;
      while (1)
      {
        v32 = v53;
        sub_241246210(v13, v53, &qword_27E538128, &qword_241365E48);
        v19 = *v17;
        (*v17)(v8, v32, v3);
        v33 = *(v32 + v49);
        v34 = *v54;
        v22 = sub_2412FDA8C(v8);
        v36 = *(v34 + 2);
        v37 = (v35 & 1) == 0;
        v38 = v36 + v37;
        if (__OFADD__(v36, v37))
        {
          break;
        }

        v39 = v35;
        if (*(v34 + 3) < v38)
        {
          sub_2412A37C0(v38, 1);
          v40 = sub_2412FDA8C(v8);
          if ((v39 & 1) != (v41 & 1))
          {
            goto LABEL_27;
          }

          v22 = v40;
        }

        v42 = *v54;
        if (v39)
        {
          v3 = v52;
          (*v47)(v8, v52);
          *(*(v42 + 7) + 8 * v22) = v33;

          v17 = v51;
        }

        else
        {
          *(v42 + (v22 >> 6) + 8) |= 1 << v22;
          v17 = v51;
          v3 = v52;
          (v19)(*(v42 + 6) + *(v48 + 72) * v22, v8, v52);
          *(*(v42 + 7) + 8 * v22) = v33;
          v43 = *(v42 + 2);
          v30 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v30)
          {
            goto LABEL_25;
          }

          *(v42 + 2) = v44;
        }

        v13 += v50;
        v18 = (v18 - 1);
        if (!v18)
        {
          return;
        }
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v28 = v19;
      sub_2412A7DA0();
    }
  }

  sub_2412A37C0(v25, a2 & 1);
  v26 = sub_2412FDA8C(v8);
  if ((v3 & 1) == (v27 & 1))
  {
    v22 = v26;
    v28 = v19;
    v17 = v51;
    goto LABEL_8;
  }

LABEL_27:
  sub_2413549DC();
  __break(1u);
}

void sub_241272604(uint64_t a1, uint64_t a2, double a3)
{
  v109 = *MEMORY[0x277D85DE8];
  v104 = MEMORY[0x277D84F90];
  log = *(a2 + 16);
  if (!log)
  {
    isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F98];
LABEL_34:
    v39 = [objc_opt_self() defaultTextureConverters];
    v3 = v39;
    v40 = v39;
    if (!v39)
    {
      sub_241246158(0, &qword_27E538510, off_278CC9A20);
      sub_241353E2C();
      v40 = sub_241353E1C();

      sub_241353E2C();
      v3 = sub_241353E1C();
    }

    v41 = objc_opt_self();
    v42 = v39;
    v43 = [v41 viewerMemoryAvailableForTexturesOnHighMemoryDevices];
    v103 = 0;
    Texture = objc_opt_self();
    sub_241246158(0, &qword_27E538518, off_278CC9A28);
    v44 = sub_241353E1C();
    v4 = &_OBJC_LABEL_PROTOCOL___CAMDynamicShutterControlDelegate;

    if (qword_27E537B10 != -1)
    {
      goto LABEL_71;
    }

    goto LABEL_37;
  }

  Texture = 0;
  isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F98];
  while (1)
  {
    TextureCount = RESceneImportOperationGetTextureCount();
    if (TextureCount < 0)
    {
      goto LABEL_68;
    }

    v90 = Texture;
    if (TextureCount)
    {
      break;
    }

LABEL_3:
    Texture = v90 + 1;
    if ((v90 + 1) == log)
    {
      goto LABEL_34;
    }
  }

  v3 = 0;
  v98 = TextureCount;
  while (1)
  {
    Texture = RESceneImportOperationGetTexture();
    v4 = RETextureImportOperationCopyTextureAssetPath();
    v9 = sub_241353C0C();
    v11 = v10;
    PixelFormatMode = RETextureImportOperationGetPixelFormatMode();
    v13 = RETextureImportOperationCopyTextureDescriptorTemplate();
    MipmapMode = RETextureImportOperationGetMipmapMode();
    v14 = RETextureImportOperationGetImageUTType();
    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = v14;
    v96 = RETextureImportOperationCopyImageProperties();
    if (!v96)
    {

LABEL_18:

      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v28 = sub_241352FFC();
      __swift_project_value_buffer(v28, qword_27E5384A0);
      v29 = sub_241352FDC();
      v30 = sub_2413540BC();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_241215000, v29, v30, "Either file type and/or image properties is NULL", v31, 2u);
        MEMORY[0x245CE4870](v31, -1, -1);
      }

      goto LABEL_8;
    }

    v95 = v13;
    v16 = sub_24127042C(PixelFormatMode, v95);
    v92 = v17;
    v93 = v16;
    if (*(isUniquelyReferenced_nonNull_native + 16))
    {
      sub_2412FDA14(v9, v11);
      if (v18)
      {

        sub_2413545EC();

        v107 = 0xD00000000000001CLL;
        v108 = 0x800000024135EDD0;
        MEMORY[0x245CE20D0](v9, v11);
        goto LABEL_76;
      }
    }

    v19 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v107 = v19;
    v20 = sub_2412FDA14(v9, v11);
    v22 = *(v19 + 16);
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      break;
    }

    v26 = v21;
    if (*(v19 + 24) < v25)
    {
      sub_2412A3520(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_2412FDA14(v9, v11);
      if ((v26 & 1) != (v27 & 1))
      {
        while (1)
        {
          sub_2413549DC();
          __break(1u);
LABEL_78:

LABEL_79:
          v105 = 0;
          v106 = 0xE000000000000000;
          sub_2413545EC();

          v105 = 0xD000000000000011;
          v106 = 0x800000024135EDB0;
          v82 = [isUniquelyReferenced_nonNull_native name];

          v83 = sub_241353C0C();
          v85 = v84;

          MEMORY[0x245CE20D0](v83, v85);

LABEL_76:
          sub_2413547DC();
          __break(1u);
        }
      }

LABEL_23:
      if ((v26 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v33 = v20;
    sub_2412A7C38();
    v20 = v33;
    if ((v26 & 1) == 0)
    {
LABEL_26:
      isUniquelyReferenced_nonNull_native = v107;
      *(v107 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v34 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v20);
      *v34 = v9;
      v34[1] = v11;
      *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v20) = Texture;
      v35 = *(isUniquelyReferenced_nonNull_native + 16);
      v24 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v24)
      {
        goto LABEL_67;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v36;
      goto LABEL_28;
    }

LABEL_24:
    v32 = v20;

    isUniquelyReferenced_nonNull_native = v107;
    *(*(v107 + 56) + 8 * v32) = Texture;
LABEL_28:
    v37 = [objc_allocWithZone(ASVTextureDescription) initWithName:v4 destinationPixelFormat:v93 imageProperties:v92 fileType:v96 generateMipmaps:v15, MipmapMode != 2];

    if (v37)
    {
      v38 = v37;
      MEMORY[0x245CE21C0]();
      if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_241353E4C();
      }

      sub_241353E6C();
    }

    else
    {
    }

LABEL_8:
    v3 = (v3 + 1);
    if (v98 == v3)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  while (2)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    swift_once();
LABEL_37:
    v45 = sub_241352FFC();
    __swift_project_value_buffer(v45, qword_27E5384A0);
    v46 = sub_241352FDC();
    v47 = sub_2413540DC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      swift_beginAccess();
      *(v48 + 4) = v103;
      _os_log_impl(&dword_241215000, v46, v47, "highMemoryDeviceOutcome: %ld", v48, 0xCu);
      MEMORY[0x245CE4870](v48, -1, -1);
    }

    swift_beginAccess();
    if (v103 == 3)
    {

      v49 = sub_241352FDC();
      v50 = sub_2413540BC();
      v51 = 2;
      if (os_log_type_enabled(v49, v50))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_241215000, v49, v50, "File too big to load on *any* device", v52, 2u);
        goto LABEL_63;
      }

      goto LABEL_65;
    }

    v53 = sub_241353E1C();
    Texture = [Texture *(v4 + 808)];

    if (!Texture)
    {
      goto LABEL_61;
    }

    sub_241246158(0, &qword_27E538520, off_278CC9A18);
    v54 = sub_241353E2C();

    if (!(v54 >> 62))
    {
      v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v55)
      {
        goto LABEL_45;
      }

LABEL_73:

      goto LABEL_74;
    }

    v55 = sub_2413544EC();
    if (!v55)
    {
      goto LABEL_73;
    }

LABEL_45:
    v4 = 0;
    v99 = v54 & 0xFFFFFFFFFFFFFF8;
    v100 = v54 & 0xC000000000000001;
    a1 = 136315394;
    v97 = isUniquelyReferenced_nonNull_native;
    v87 = v54;
LABEL_49:
    if (v100)
    {
      v56 = MEMORY[0x245CE29C0](v4, v54);
      v57 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        goto LABEL_60;
      }

      goto LABEL_52;
    }

    if (v4 >= *(v99 + 16))
    {
      continue;
    }

    break;
  }

  v56 = *(v54 + 8 * v4 + 32);
  v57 = (v4 + 1);
  if (!__OFADD__(v4, 1))
  {
LABEL_52:
    v102 = v57;
    v58 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = v56;
    v59 = [isUniquelyReferenced_nonNull_native name];
    v60 = sub_241353C0C();
    v62 = v61;

    if (!*(v58 + 16))
    {
      goto LABEL_78;
    }

    v63 = sub_2412FDA14(v60, v62);
    v65 = v64;

    if ((v65 & 1) == 0)
    {
      goto LABEL_79;
    }

    v3 = *(*(v58 + 56) + 8 * v63);
    Texture = [isUniquelyReferenced_nonNull_native downsamplingFactor];

    if (Texture != 1)
    {
      kdebug_texture_downsample_begin();
      if (HIDWORD(Texture))
      {
        goto LABEL_70;
      }

      v66 = isUniquelyReferenced_nonNull_native;
      v67 = sub_241352FDC();
      v68 = sub_2413540DC();

      v94 = v68;
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v105 = v91;
        *v69 = 136315394;
        loga = v67;
        v70 = v66;
        v71 = [v66 name];
        v72 = sub_241353C0C();
        v74 = v73;

        v66 = v70;
        v75 = sub_2412DDC2C(v72, v74, &v105);

        *(v69 + 4) = v75;
        *(v69 + 12) = 1024;
        *(v69 + 14) = Texture;
        _os_log_impl(&dword_241215000, loga, v94, "Downsampling %s by a factor of %u", v69, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v91);
        MEMORY[0x245CE4870](v91, -1, -1);
        v76 = v69;
        v54 = v87;
        MEMORY[0x245CE4870](v76, -1, -1);
      }

      else
      {
      }

      RETextureImportOperationSetDimensionsMode();
      RETextureImportOperationSetDownsampleFactor();
      v3 = &selRef_addConstraints_;
      [v66 estimatedMemoryDelta];
      [v66 estimatedMemoryDelta];
      kdebug_texture_downsample_end();
    }

    ++v4;
    isUniquelyReferenced_nonNull_native = v97;
    if (v102 == v55)
    {
      goto LABEL_73;
    }

    goto LABEL_49;
  }

LABEL_60:
  __break(1u);
LABEL_61:

  v49 = sub_241352FDC();
  v77 = sub_2413540BC();
  if (os_log_type_enabled(v49, v77))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_241215000, v49, v77, "File too big to load on *this* device", v52, 2u);
    v51 = 3;
LABEL_63:
    MEMORY[0x245CE4870](v52, -1, -1);
  }

  else
  {
    v51 = 3;
  }

LABEL_65:

  sub_241255C30(v78, v79, v80);
  swift_allocError();
  *(v81 + 8) = 0;
  *(v81 + 16) = 0;
  *v81 = v51;
  *(v81 + 24) = 2;
  swift_willThrow();
LABEL_74:
}

double sub_241273248(int64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v73 = a2;
  v72 = sub_2413522BC();
  i = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538578, &unk_241366CD0);
  MEMORY[0x28223BE20](v74);
  v69 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v66 - v8;
  if (qword_27E537B10 != -1)
  {
LABEL_39:
    swift_once();
  }

  v10 = sub_241352FFC();
  v70 = __swift_project_value_buffer(v10, qword_27E5384A0);
  v11 = sub_241352FDC();
  v12 = sub_2413540DC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_241215000, v11, v12, "importModelFile..... begin preflight", v13, 2u);
    MEMORY[0x245CE4870](v13, -1, -1);
  }

  swift_beginAccess();
  v68 = a1;
  v14 = *(a1 + 16);
  a1 = v14 + 64;
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  v19 = (i + 8);
  v75 = v14;
  swift_bridgeObjectRetain_n();
  v20 = 0;
  if (v17)
  {
    while (1)
    {
      v21 = v9;
      i = v20;
LABEL_12:
      v22 = __clz(__rbit64(v17)) | (i << 6);
      v23 = v75;
      v24 = *(v75 + 48);
      v25 = sub_24135152C();
      v26 = *(v25 - 8);
      v27 = v24 + *(v26 + 72) * v22;
      v9 = v21;
      (*(v26 + 16))(v21, v27, v25);
      *(v21 + *(v74 + 48)) = *(*(v23 + 56) + 8 * v22);

      v28 = v71;
      sub_2413521AC();
      sub_2413516FC();
      (*v19)(v28, v72);
      swift_beginAccess();
      LODWORD(v22) = RESceneImportOperationPreflight();
      swift_endAccess();
      if (!v22)
      {
        break;
      }

      v17 &= v17 - 1;
      sub_241246278(v21, &qword_27E538578, &unk_241366CD0);
      v20 = i;
      if (!v17)
      {
        goto LABEL_8;
      }
    }

    v58 = v73;
    v59 = swift_beginAccess();
    v62 = *(v58 + 16);
    if (v62)
    {
      type metadata accessor for CFError(0);
      sub_24127F10C(&qword_27E538588, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
      v63 = v62;
      swift_allocError();
      *v64 = v63;
    }

    else
    {
      sub_241255C30(v59, v60, v61);
      swift_allocError();
      *v65 = 0xD00000000000001ELL;
      *(v65 + 8) = 0x800000024135ED70;
      *(v65 + 16) = 0;
      *(v65 + 24) = 0;
    }

    swift_willThrow();

    sub_241246278(v21, &qword_27E538578, &unk_241366CD0);
  }

  else
  {
    while (1)
    {
LABEL_8:
      i = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (i >= v18)
      {
        break;
      }

      v17 = *(a1 + 8 * i);
      ++v20;
      if (v17)
      {
        v21 = v9;
        goto LABEL_12;
      }
    }

    v29 = sub_241352FDC();
    v30 = sub_2413540DC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_241215000, v29, v30, "importModelFile..... preflight completed", v31, 2u);
      MEMORY[0x245CE4870](v31, -1, -1);
    }

    v32 = v68;
    swift_beginAccess();

    v34 = v66;
    sub_24125F684(v33);
    v36 = v35;

    Information = type metadata accessor for AssetLoader.LoadInformation(0);
    sub_241272604(*(v67 + *(Information + 36)), v36, *(v67 + *(Information + 36) + 8));

    if (!v34)
    {
      v39 = sub_241352FDC();
      v40 = sub_2413540DC();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_241215000, v39, v40, "importModelFile..... begin run part", v41, 2u);
        MEMORY[0x245CE4870](v41, -1, -1);
      }

      swift_beginAccess();
      v42 = *(v32 + 16);
      v43 = v42 + 64;
      v44 = 1 << *(v42 + 32);
      v45 = -1;
      if (v44 < 64)
      {
        v45 = ~(-1 << v44);
      }

      v46 = v45 & *(v42 + 64);
      a1 = (v44 + 63) >> 6;
      v75 = v42;
      swift_bridgeObjectRetain_n();
      v47 = 0;
      for (i = &unk_241366CD0; v46; v47 = v9)
      {
        v9 = v47;
LABEL_27:
        v48 = __clz(__rbit64(v46)) | (v9 << 6);
        v49 = v75;
        v50 = *(v75 + 48);
        v51 = sub_24135152C();
        v52 = *(v51 - 8);
        v53 = v50 + *(v52 + 72) * v48;
        v54 = v69;
        (*(v52 + 16))(v69, v53, v51);
        *(v54 + *(v74 + 48)) = *(*(v49 + 56) + 8 * v48);

        sub_2413521DC();
        v46 &= v46 - 1;
        sub_241246278(v54, &qword_27E538578, &unk_241366CD0);
      }

      while (1)
      {
        v9 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          goto LABEL_38;
        }

        if (v9 >= a1)
        {

          v55 = sub_241352FDC();
          v56 = sub_2413540DC();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            *v57 = 0;
            _os_log_impl(&dword_241215000, v55, v56, "importModelFile..... run completed", v57, 2u);
            MEMORY[0x245CE4870](v57, -1, -1);
          }

          return result;
        }

        v46 = *(v43 + 8 * v9);
        ++v47;
        if (v46)
        {
          goto LABEL_27;
        }
      }
    }
  }

  return result;
}

double sub_241273A28(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6)
{
  v173 = a2;
  v161 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538128, &qword_241365E48);
  v167 = *(v10 - 8);
  v168 = v10;
  MEMORY[0x28223BE20](v10);
  v174 = v134 - v11;
  v12 = sub_2413538CC();
  v139 = *(v12 - 8);
  v140 = v12;
  MEMORY[0x28223BE20](v12);
  v137 = v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_2413538FC();
  v136 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v135 = v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_2413522BC();
  v150 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v158 = v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Information = type metadata accessor for AssetLoader.LoadInformation(0);
  v147 = *(Information - 8);
  MEMORY[0x28223BE20](Information);
  v152 = v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v149 = v134 - v19;
  MEMORY[0x28223BE20](v20);
  v154 = v134 - v21;
  v148 = v22;
  MEMORY[0x28223BE20](v23);
  v146 = v134 - v24;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538578, &unk_241366CD0);
  MEMORY[0x28223BE20](v157);
  v156 = v134 - v25;
  v172 = sub_24135152C();
  v160 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v165 = v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v166 = v134 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850, &unk_241366BF0);
  MEMORY[0x28223BE20](v29 - 8);
  v143 = v134 - v30;
  v31 = sub_2413517BC();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = v134 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = swift_allocObject();
  v141 = a3;
  *(v35 + 2) = a3;
  *(v35 + 3) = a4;
  v36 = a5;
  *(v35 + 4) = a5;
  *(v35 + 5) = a6;
  v155 = v35;
  v37 = a6;
  v145 = *v173;
  sub_241352DAC();
  v38 = v161;
  v39 = *(v161 + *(Information + 20));
  *(&v183 + 1) = MEMORY[0x277D841D8];
  *&aBlock = v39;
  v144 = a4;

  sub_2413516EC();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v40 = sub_241352CAC();
  (*(v32 + 8))(v34, v31);
  v151 = v40;
  v41 = sub_241352D9C();
  v142 = v36;
  if (v41)
  {
    v169 = v41;
    v134[1] = v37;
    v44 = swift_allocObject();
    v45 = *(v38 + *(Information + 40));
    v46 = *(v45 + 16);
    v47 = Information;
    v153 = v44;
    if (v46)
    {
      v134[0] = Information;
      *&aBlock = MEMORY[0x277D84F90];
      sub_2412DE294(0, v46, 0);
      v48 = sub_2413521FC();
      v49 = aBlock;
      v170 = *(v160 + 16);
      v171 = (v160 + 16);
      v50 = (v45 + ((*(v160 + 80) + 32) & ~*(v160 + 80)));
      v163 = *(v160 + 72);
      v164 = v48;
      v162 = (v160 + 8);
      v51 = v174;
      do
      {
        v173 = v49;
        v52 = v166;
        v53 = v172;
        v54 = v170;
        v170(v166, v50, v172);
        v55 = v168[12];
        v54(v51, v52, v53);
        v54(v165, v52, v53);

        v56 = sub_2413521EC();
        v57 = v52;
        v49 = v173;
        (*v162)(v57, v53);
        *(v174 + v55) = v56;
        v51 = v174;
        *&aBlock = v49;
        v59 = *(v49 + 16);
        v58 = *(v49 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_2412DE294((v58 > 1), v59 + 1, 1);
          v51 = v174;
          v49 = aBlock;
        }

        *(v49 + 16) = v59 + 1;
        sub_24127EFF0(v51, v49 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v59, &qword_27E538128, &qword_241365E48);
        v50 += v163;
        --v46;
      }

      while (v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538130, &unk_241366CE0);
      *&aBlock = sub_24135483C();
      sub_24127218C(v49, 1, &aBlock);
      v168 = 0;

      v60 = aBlock;
      *(v153 + 16) = aBlock;

      v47 = v134[0];
    }

    else
    {
      v71 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538580, &qword_241366CF0);
      v72 = (*(v167 + 80) + 32) & ~*(v167 + 80);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_241365EA0;
      v74 = v73 + v72;
      v174 = v168[12];
      v76 = (v160 + 16);
      v75 = *(v160 + 16);
      v77 = v172;
      v75(v73 + v72, v71, v172);
      sub_2413521FC();
      v170 = v75;
      v171 = v76;
      v75(v166, v71, v77);

      *(v74 + v174) = sub_2413521EC();
      v60 = sub_24124569C(v73);
      swift_setDeallocating();
      sub_241246278(v74, &qword_27E538128, &qword_241365E48);
      swift_deallocClassInstance();
      *(v153 + 16) = v60;

      v168 = 0;
    }

    v78 = v60 + 64;
    v79 = 1 << *(v60 + 32);
    v80 = -1;
    if (v79 < 64)
    {
      v80 = ~(-1 << v79);
    }

    v81 = v80 & *(v60 + 64);
    v61 = ((v79 + 63) >> 6);
    v173 = (v150 + 8);
    v174 = v60;

    v82 = 0;
    while (v81)
    {
      v83 = v82;
      v84 = v174;
LABEL_22:
      v85 = __clz(__rbit64(v81));
      v81 &= v81 - 1;
      v86 = v85 | (v83 << 6);
      v87 = v156;
      v170(v156, (*(v84 + 48) + *(v160 + 72) * v86), v172);
      *(v87 + *(v157 + 48)) = *(*(v84 + 56) + 8 * v86);

      v88 = v158;
      sub_2413521AC();
      sub_2413516FC();
      (*v173)(v88, v159);
      RESceneImportOperationSetFunctionConstant();
      sub_241353C9C();
      RESceneImportOperationSetMaterialDefinitionPath();

      RESceneImportOperationSetUnitType();
      RESceneImportOperationSetIsolateFromEngine();
      sub_241246278(v87, &qword_27E538578, &unk_241366CD0);
    }

    v84 = v174;
    while (1)
    {
      v83 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v83 >= v61)
      {
        break;
      }

      v81 = *(v78 + 8 * v83);
      ++v82;
      if (v81)
      {
        v82 = v83;
        goto LABEL_22;
      }
    }

    v89 = swift_allocObject();
    v90 = v153;
    v89[2] = v153;
    v89[3] = sub_2412807A0;
    v89[4] = v155;
    v91 = swift_allocObject();
    *(v91 + 16) = 0;
    v92 = v161;
    v93 = v146;
    sub_24127BF00(v161, v146);
    sub_24127BF00(v93, v154);
    v94 = v148;
    v95 = *(v147 + 80);
    v96 = swift_allocObject();
    *(v96 + 16) = v90;
    *(v96 + 24) = v91;
    v174 = v91;
    v172 = v96;
    sub_241244A20(v93, v96 + ((v95 + 32) & ~v95));
    v97 = v149;
    sub_24127BF00(v92, v149);
    sub_24127BF00(v97, v152);
    v98 = (v95 + 48) & ~v95;
    v99 = v98 + v94;
    v100 = swift_allocObject();
    v101 = v90;
    v102 = v169;
    v100[2] = v90;
    v100[3] = v102;
    v100[4] = sub_2412807B8;
    v100[5] = v89;
    v173 = v89;
    v103 = v100;
    sub_241244A20(v97, v100 + v98);
    v104 = v145;
    *(v103 + v99) = v145;
    v105 = v104;
    v106 = v92 + *(v47 + 28);
    v107 = *v106;
    v171 = v103;
    if (v107)
    {
      v108 = *(v106 + 8);
      swift_retain_n();

      v109 = v173;

      sub_24127EF78(v107, v108);
      sub_241244A8C(v152);
      sub_241244A8C(v154);
      v110 = swift_allocObject();
      v111 = v172;
      v110[2] = sub_24128081C;
      v110[3] = v111;
      v110[4] = v108;
      v110[5] = v101;
      v110[6] = sub_2412807B8;
      v110[7] = v109;
      v110[8] = sub_241280834;
      v110[9] = v103;
      *&v184 = sub_2412807A4;
      *(&v184 + 1) = v110;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v183 = sub_2412D5698;
      *(&v183 + 1) = &block_descriptor_391;
      v112 = _Block_copy(&aBlock);

      v170 = v108;

      v113 = v135;
      sub_2413538DC();
      *&v175 = MEMORY[0x277D84F90];
      sub_24127F10C(&qword_27E539870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930, &unk_2413674A0);
      sub_24123D370(&qword_27E539880, &unk_27E538930, &unk_2413674A0, MEMORY[0x277D83970]);
      v114 = v137;
      v115 = v140;
      sub_24135444C();
      MEMORY[0x245CE2540](0, v113, v114, v112);

      _Block_release(v112);

      (*(v139 + 8))(v114, v115);
      (*(v136 + 8))(v113, v138);
    }

    else
    {
      swift_retain_n();
      v116 = v102;

      v117 = v174;

      v118 = v173;

      v119 = v117;
      v120 = v154;
      v121 = v168;
      sub_241273248(v90, v119, v154);
      if (v121)
      {
        sub_241244A8C(v152);
        v122 = v143;
        v123 = v144;
        sub_241244A8C(v154);
        *&aBlock = v121;
        sub_24127BE04(&aBlock);
        swift_beginAccess();
        *(v90 + 16) = MEMORY[0x277D84F98];

        if (qword_27E537D08 != -1)
        {
          swift_once();
        }

        v125 = qword_27E53A740;
        v126 = sub_241353EEC();
        (*(*(v126 - 8) + 56))(v122, 1, 1, v126);
        v127 = v122;
        v128 = qword_27E537D00;

        v129 = v123;
        if (v128 != -1)
        {
          swift_once();
        }

        v130 = qword_27E53A738;
        v131 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor, &unk_24136B618);
        v132 = swift_allocObject();
        *(v132 + 16) = v130;
        *(v132 + 24) = v131;
        *(v132 + 32) = v125;
        *(v132 + 40) = 9;
        *(v132 + 48) = v141;
        *(v132 + 56) = v129;

        sub_241327238(0, 0, v127, &unk_241366D80, v132);

        v179 = v186;
        v180 = v187;
        v181[0] = v188[0];
        *(v181 + 9) = *(v188 + 9);
        v175 = aBlock;
        v176 = v183;
        v177 = v184;
        v178 = v185;
        v142(&v175);
      }

      else
      {
        sub_241244A8C(v120);
        v124 = v152;
        sub_241269024(v90, v116, sub_2412807B8, v118, v152, v105);
        sub_241244A8C(v124);
      }
    }
  }

  else
  {
    sub_241255C30(0, v42, v43);
    v61 = swift_allocError();
    *v62 = 0xD00000000000002CLL;
    *(v62 + 8) = 0x800000024135ED20;
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    *&aBlock = v61;
    sub_24127BE04(&aBlock);
    if (qword_27E537D08 != -1)
    {
LABEL_36:
      swift_once();
    }

    v63 = qword_27E53A740;
    v64 = sub_241353EEC();
    v65 = v143;
    (*(*(v64 - 8) + 56))(v143, 1, 1, v64);
    v66 = qword_27E537D00;
    v67 = v144;

    if (v66 != -1)
    {
      swift_once();
    }

    v68 = qword_27E53A738;
    v69 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor, &unk_24136B618);
    v70 = swift_allocObject();
    *(v70 + 16) = v68;
    *(v70 + 24) = v69;
    *(v70 + 32) = v63;
    *(v70 + 40) = 9;
    *(v70 + 48) = v141;
    *(v70 + 56) = v67;

    sub_241327238(0, 0, v65, &unk_241366D78, v70);

    v179 = v186;
    v180 = v187;
    v181[0] = v188[0];
    *(v181 + 9) = *(v188 + 9);
    v175 = aBlock;
    v176 = v183;
    v177 = v184;
    v178 = v185;
    v142(&v175);
  }

  return result;
}

void sub_241274E34(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5)
{
  v182 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850, &unk_241366BF0);
  MEMORY[0x28223BE20](v10 - 8);
  v158 = &v147 - v11;
  Information = type metadata accessor for AssetLoader.LoadInformation(0);
  MEMORY[0x28223BE20](Information);
  v13 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_24135152C();
  v174 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v157 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v175 = &v147 - v16;
  MEMORY[0x28223BE20](v17);
  v152 = &v147 - v18;
  MEMORY[0x28223BE20](v19);
  v176 = &v147 - v20;
  MEMORY[0x28223BE20](v21);
  v171 = &v147 - v22;
  MEMORY[0x28223BE20](v23);
  v173 = &v147 - v24;
  MEMORY[0x28223BE20](v25);
  v159 = &v147 - v26;
  v153 = v27;
  MEMORY[0x28223BE20](v28);
  v160 = &v147 - v29;
  v30 = sub_2413515EC();
  v172 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v32 = &v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = swift_allocObject();
  v161 = a2;
  v162 = a4;
  v33[2] = a2;
  v33[3] = a3;
  v33[4] = a4;
  v33[5] = a5;
  v34 = objc_allocWithZone(MEMORY[0x277D778A8]);
  v165 = a3;
  swift_bridgeObjectRetain_n();
  v164 = a5;
  swift_retain_n();
  v35 = sub_24135144C();
  v36 = [v34 initSceneFromURL_];

  if (!v36)
  {
    goto LABEL_12;
  }

  v150 = v13;
  v151 = a1;
  v156 = v33;
  v37 = [v36 rootNode];
  v38 = v36;
  v39 = sub_241353BDC();
  v40 = sub_241353BDC();
  v41 = [v37 dictionaryMetadataWithKey:v39 dictionaryKey:v40];

  if (!v41)
  {

    a1 = v151;
LABEL_12:
    LOBYTE(v180[0]) = 0;
    v75 = v165;

    v76 = v164;

    sub_241273A28(a1, v180, v161, v75, v162, v76);

    swift_bridgeObjectRelease_n();

    return;
  }

  v149 = v38;
  v42 = [v41 resourcePathArray];
  sub_241246158(0, &qword_27E538570, 0x277D778A0);
  v163 = sub_241353E2C();

  sub_2413515DC();
  sub_2413515BC();
  v44 = v43;
  (*(v172 + 8))(v32, v30);
  v45 = v44 * 1000.0;
  if (COERCE__INT64(fabs(v44 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_41;
  }

  if (v45 <= -9.22337204e18)
  {
    goto LABEL_42;
  }

  if (v45 >= 9.22337204e18)
  {
    goto LABEL_43;
  }

  v148 = v41;
  *&v180[0] = v45;
  v46 = sub_24135491C();
  v48 = sub_2412720D0(8uLL, v46, v47);
  v50 = v49;
  v52 = v51;
  v54 = v53;

  MEMORY[0x245CE2060](v48, v50, v52, v54);

  if (qword_27E537BD8 != -1)
  {
    goto LABEL_44;
  }

LABEL_7:
  *&v180[0] = qword_27E539620;
  v55 = qword_27E539620;
  MRQLFileManager.documentDirectory()(v160);

  *&v180[0] = qword_27E539620;
  v56 = qword_27E539620;
  MRQLFileManager.createTemporaryDirectory(destinationURL:)();

  v57 = v173;
  sub_24135146C();

  v58 = v158;
  v59 = v171;
  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v60 = sub_241352FFC();
  v61 = __swift_project_value_buffer(v60, qword_27E5384A0);
  v62 = v174;
  v63 = v177;
  v169 = *(v174 + 16);
  v170 = v174 + 16;
  v169(v59, v57, v177);
  v147 = v61;
  v64 = sub_241352FDC();
  v65 = sub_2413540DC();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = v59;
    v68 = swift_slowAlloc();
    *&v180[0] = v68;
    *v66 = 136315138;
    sub_24127F10C(&qword_27E539990, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v69 = v58;
    v70 = sub_24135491C();
    v72 = v71;
    v171 = *(v174 + 8);
    (v171)(v67, v63);
    v73 = v70;
    v58 = v69;
    v74 = sub_2412DDC2C(v73, v72, v180);

    *(v66 + 4) = v74;
    _os_log_impl(&dword_241215000, v64, v65, "Unzipping to '%s'", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x245CE4870](v68, -1, -1);
    MEMORY[0x245CE4870](v66, -1, -1);
  }

  else
  {

    v171 = *(v62 + 8);
    (v171)(v59, v63);
  }

  v77 = v165;
  v78 = [objc_opt_self() defaultManager];
  v79 = sub_24135144C();
  *&v180[0] = 0;
  v80 = [v78 createDirectoryAtURL:v79 withIntermediateDirectories:1 attributes:0 error:v180];

  v81 = *&v180[0];
  v82 = v157;
  if (!v80)
  {
    v101 = *&v180[0];

    v102 = sub_24135139C();

    swift_willThrow();
    goto LABEL_33;
  }

  v83 = v163;
  if (v163 >> 62)
  {
    v84 = sub_2413544EC();
    if (!v84)
    {
LABEL_46:
      v88 = v81;
      v166 = 0;
LABEL_47:
      MEMORY[0x28223BE20](v88);
      *(&v147 - 2) = v173;
      sub_24125F980(sub_241280800, (&v147 - 4), v83);
      v114 = v113;

      v115 = v114;
      v168 = *(v114 + 16);
      if (!v168)
      {
        v118 = MEMORY[0x277D84F90];
LABEL_62:

        v131 = sub_241352FDC();
        v132 = sub_2413540DC();
        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          *v133 = 134217984;
          *(v133 + 4) = *(v118 + 16);

          _os_log_impl(&dword_241215000, v131, v132, "Found %ld USDZ files", v133, 0xCu);
          MEMORY[0x245CE4870](v133, -1, -1);
        }

        else
        {
        }

        v134 = v173;
        v135 = v150;
        v136 = Information;
        sub_24127BF00(v151, v150);
        v137 = *(v136 + 40);

        *&v135[v137] = v118;
        LOBYTE(v180[0]) = 1;
        v138 = v152;
        v139 = v177;
        v169(v152, v134, v177);
        v140 = v174;
        v141 = (*(v174 + 80) + 16) & ~*(v174 + 80);
        v142 = (v153 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
        v143 = swift_allocObject();
        (*(v140 + 32))(v143 + v141, v138, v139);
        v144 = (v143 + v142);
        v145 = v156;
        *v144 = sub_2412807A0;
        v144[1] = v145;

        sub_241267EFC(v135, v180, sub_24128084C, v143);

        v146 = v171;
        (v171)(v159, v139);
        v146(v160, v139);
        sub_241244A8C(v135);
        v146(v134, v139);

        goto LABEL_66;
      }

      v116 = 0;
      v117 = v174;
      v167 = v174 + 8;
      v172 = v174 + 32;
      v118 = MEMORY[0x277D84F90];
      v119 = v177;
      while (2)
      {
        if (v116 >= *(v115 + 16))
        {
          __break(1u);
        }

        v120 = (*(v117 + 80) + 32) & ~*(v117 + 80);
        v121 = v115;
        v122 = *(v117 + 72);
        v169(v176, (v115 + v120 + v122 * v116), v119);
        sub_2413513FC();
        v123 = sub_241353C8C();
        v125 = v124;

        if (v123 == 2053403509 && v125 == 0xE400000000000000)
        {

          goto LABEL_56;
        }

        v126 = sub_24135497C();

        if (v126)
        {
LABEL_56:
          v127 = *v172;
          v119 = v177;
          (*v172)(v175, v176, v177);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v180[0] = v118;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2412DE254(0, *(v118 + 16) + 1, 1);
            v119 = v177;
            v118 = *&v180[0];
          }

          v130 = *(v118 + 16);
          v129 = *(v118 + 24);
          if (v130 >= v129 >> 1)
          {
            sub_2412DE254((v129 > 1), v130 + 1, 1);
            v119 = v177;
            v118 = *&v180[0];
          }

          *(v118 + 16) = v130 + 1;
          v127(v118 + v120 + v130 * v122, v175, v119);
        }

        else
        {
          v119 = v177;
          (v171)(v176, v177);
        }

        v115 = v121;
        ++v116;
        v117 = v174;
        if (v168 == v116)
        {
          goto LABEL_62;
        }

        continue;
      }
    }
  }

  else
  {
    v84 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v84)
    {
      goto LABEL_46;
    }
  }

  v85 = objc_opt_self();
  v172 = v83 & 0xC000000000000001;
  v155 = v83 & 0xFFFFFFFFFFFFFF8;
  v167 = v174 + 8;
  v168 = v85;
  v86 = v81;
  v87 = 0;
  v166 = 0;
  while (1)
  {
    if (v172)
    {
      v89 = MEMORY[0x245CE29C0](v87, v83);
    }

    else
    {
      if (v87 >= *(v155 + 16))
      {
        goto LABEL_40;
      }

      v89 = *(v83 + 8 * v87 + 32);
    }

    v90 = v89;
    v91 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      swift_once();
      goto LABEL_7;
    }

    v92 = [v89 path];
    sub_241353C0C();

    sub_24135146C();

    v93 = [v90 resolvedPath];
    if (!v93)
    {
      sub_241353C0C();
      v93 = sub_241353BDC();
    }

    v94 = [v168 resourceWithPath_];

    if (v94)
    {
      break;
    }

    (v171)(v82, v177);
LABEL_19:

    ++v87;
    if (v91 == v84)
    {
      goto LABEL_47;
    }
  }

  v95 = [v94 dataNoCopy];
  if (!v95)
  {
    (v171)(v82, v177);

    goto LABEL_19;
  }

  v96 = v95;
  v97 = sub_24135154C();
  v99 = v98;

  v100 = v166;
  sub_24135155C();
  v166 = v100;
  if (!v100)
  {
    (v171)(v82, v177);
    sub_24125D520(v97, v99);

    v90 = v94;
    v83 = v163;
    goto LABEL_19;
  }

  (v171)(v82, v177);

  sub_24125D520(v97, v99);

  v77 = v165;
  v102 = v166;
  v58 = v158;
LABEL_33:
  *&v180[0] = v102;
  sub_24127BE04(v180);
  v103 = v102;
  v104 = v102;
  if (qword_27E537D08 != -1)
  {
    swift_once();
  }

  v105 = qword_27E53A740;
  v106 = sub_241353EEC();
  (*(*(v106 - 8) + 56))(v58, 1, 1, v106);
  v107 = qword_27E537D00;

  if (v107 != -1)
  {
    swift_once();
  }

  v108 = qword_27E53A738;
  v109 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor, &unk_24136B618);
  v110 = swift_allocObject();
  *(v110 + 16) = v108;
  *(v110 + 24) = v109;
  *(v110 + 32) = v105;
  *(v110 + 40) = 9;
  *(v110 + 48) = v161;
  *(v110 + 56) = v77;

  sub_241327238(0, 0, v58, &unk_241366D70, v110);

  v178[4] = v180[4];
  v178[5] = v180[5];
  v179[0] = v181[0];
  *(v179 + 9) = *(v181 + 9);
  v178[0] = v180[0];
  v178[1] = v180[1];
  v178[2] = v180[2];
  v178[3] = v180[3];
  v162(v178);

  v111 = v177;
  v112 = v171;
  (v171)(v159, v177);
  v112(v160, v111);
  v112(v173, v111);

LABEL_66:
}

double sub_241276040(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  v121 = a8;
  v122 = a3;
  v118 = a2;
  v123 = a1;
  v12 = sub_241352AEC();
  v102 = *(v12 - 8);
  v103 = v12;
  MEMORY[0x28223BE20](v12);
  v101 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Information = type metadata accessor for AssetLoader.LoadInformation(0);
  v106 = *(Information - 8);
  MEMORY[0x28223BE20](Information);
  v107 = v15;
  v108 = (&v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850, &unk_241366BF0);
  MEMORY[0x28223BE20](v16 - 8);
  v110 = &v100 - v17;
  v18 = sub_24135152C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v113 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v100 - v22;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v111 = a5;
  v112 = a7;
  v25 = a6;
  v24[4] = a6;
  v24[5] = a7;
  v26 = v121;
  v24[6] = v121;
  v27 = swift_allocObject();
  v28 = v122;
  v29 = v123;
  v27[2] = v118;
  v27[3] = v28;
  v27[4] = sub_241280818;
  v27[5] = v24;
  v119 = v27;
  v120 = v23;
  v116 = v19;
  v117 = v18;
  v30 = v23;
  v31 = v28;
  v109 = *(v19 + 16);
  v109(v30, v29, v18);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v114 = v24;

  ServiceLocator = REEngineGetServiceLocator();
  v33 = MEMORY[0x245CE3AB0](ServiceLocator);
  v115 = v25;
  if (v33)
  {
    v104 = a4;
    v36 = RERenderManagerGetRenderDevice();
    if (([objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v130[3] = sub_241351AFC();
      v130[4] = MEMORY[0x277CDAC58];
      __swift_allocate_boxed_opaque_existential_1(v130);
      swift_unknownObjectRetain();
      v37 = sub_241351AEC();
      if (!*&v123[*(Information + 28)])
      {
        v113 = Information;
        MEMORY[0x28223BE20](v37);
        v73 = v119;
        v74 = v120;
        *(&v100 - 6) = v120;
        *(&v100 - 5) = v130;
        *(&v100 - 4) = sub_2412807A0;
        *(&v100 - 3) = v73;
        *(&v100 - 2) = v123;
        v75 = [objc_opt_self() currentThread];
        v76 = [v75 isMainThread];

        if (v76)
        {
          sub_241352C5C();
          sub_24127C104(v130, &v138);
          v77 = v101;
          sub_241352ADC();
          v78 = sub_241352C2C();
          v100 = v36;
          v108 = &v100;
          v81 = v78;
          (*(v102 + 8))(v77, v103);
          v82 = &v123[*(v113 + 8)];
          v84 = *v82;
          v83 = v82[1];
          v85 = qword_27E537C60;

          if (v85 != -1)
          {
            swift_once();
          }

          *&v138 = v84;
          *(&v138 + 1) = v83;
          LOWORD(v139) = 514;
          BYTE2(v139) = 2;
          *(&v139 + 3) = v126;
          BYTE7(v139) = v127;
          *(&v139 + 1) = 3;
          v140 = xmmword_27E541898;
          *&v141 = qword_27E5418A8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900, &qword_241366C30);
          v86 = swift_allocObject();
          *(v86 + 16) = xmmword_241365C30;
          *(v86 + 32) = v81;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538870, &qword_241366C40);
          v87 = (*(v116 + 80) + 32) & ~*(v116 + 80);
          v88 = swift_allocObject();
          *(v88 + 16) = xmmword_241365EA0;
          v109((v88 + v87), v74, v117);

          sub_241265FA4(&v138, v86, v88, &v131);

          v128[0] = v138;
          v128[1] = v139;
          v128[2] = v140;
          v129 = v141;
          sub_241244AE8(v128);
          v142 = v135;
          v143 = v136;
          v144[0] = v137[0];
          *(v144 + 9) = *(v137 + 9);
          v138 = v131;
          v139 = v132;
          v140 = v133;
          v141 = v134;
          v89 = qword_27E537D08;
          v90 = v104;

          v91 = v121;

          if (v89 != -1)
          {
            swift_once();
          }

          v92 = qword_27E53A740;
          v93 = sub_241353EEC();
          v94 = v110;
          (*(*(v93 - 8) + 56))(v110, 1, 1, v93);
          v95 = qword_27E537D00;
          v96 = v122;

          if (v95 != -1)
          {
            swift_once();
          }

          v97 = qword_27E53A738;
          v98 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor, &unk_24136B618);
          v99 = swift_allocObject();
          *(v99 + 16) = v97;
          *(v99 + 24) = v98;
          *(v99 + 32) = v92;
          *(v99 + 40) = 9;
          *(v99 + 48) = v118;
          *(v99 + 56) = v96;

          sub_241327238(0, 0, v94, &unk_241366C58, v99);

          v124[4] = v142;
          v124[5] = v143;
          *v125 = v144[0];
          *&v125[9] = *(v144 + 9);
          v124[0] = v138;
          v124[1] = v139;
          v124[2] = v140;
          v124[3] = v141;
          sub_24124E364(v124, v90, v111, v115, v112, v91);
          swift_unknownObjectRelease();

          sub_241246278(&v138, &qword_27E538348, &qword_241366C10);
        }

        else
        {
          sub_241246158(0, &qword_27E538920, 0x277D85C78);
          v79 = sub_24135416C();
          sub_24135417C();

          swift_unknownObjectRelease();
        }

        goto LABEL_20;
      }

      if (qword_27E537B10 == -1)
      {
LABEL_5:
        v100 = v36;
        v38 = sub_241352FFC();
        __swift_project_value_buffer(v38, qword_27E5384A0);
        v39 = sub_241352FDC();
        v40 = sub_2413540DC();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_241215000, v39, v40, "Loading Reality File in background", v41, 2u);
          MEMORY[0x245CE4870](v41, -1, -1);
        }

        v42 = swift_allocObject();
        v110 = v42;
        *(v42 + 16) = 0;
        v118 = (v42 + 16);
        sub_241352C5C();
        sub_24127C104(v130, &v138);
        v43 = v120;
        v44 = sub_241352B9C();
        v112 = v44;
        sub_241246278(&v138, &qword_27E538528, &qword_241366C60);
        *&v138 = v44;
        v45 = swift_allocObject();
        v111 = v45;
        v46 = v119;
        v45[2] = sub_2412807A0;
        v45[3] = v46;
        v45[4] = v42;
        v47 = v108;
        sub_24127BF00(v123, v108);
        v48 = v43;
        v49 = v117;
        v109(v113, v48, v117);
        v50 = (*(v106 + 80) + 32) & ~*(v106 + 80);
        v51 = v116;
        v52 = (v107 + *(v116 + 80) + v50) & ~*(v116 + 80);
        v53 = (v105 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
        v54 = swift_allocObject();
        *(v54 + 16) = sub_2412807A0;
        *(v54 + 24) = v46;
        v55 = v47;
        v56 = v110;
        sub_241244A20(v55, v54 + v50);
        (*(v51 + 32))(v54 + v52, v113, v49);
        *(v54 + v53) = v56;
        swift_retain_n();
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538530, &qword_241366C68);
        sub_24123D370(&qword_27E538538, &qword_27E538530, &qword_241366C68, MEMORY[0x277CDABA0]);
        v57 = sub_24135319C();

        v58 = v118;
        swift_beginAccess();
        *v58 = v57;

        if (*v58)
        {
          v59 = qword_27E537B18;

          if (v59 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539D50, &qword_241366C70);
          sub_24123D370(&qword_27E538540, &qword_27E539D50, &qword_241366C70, MEMORY[0x277D83990]);
          sub_2413530BC();
          swift_endAccess();

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

LABEL_20:
        __swift_destroy_boxed_opaque_existential_0(v130);
        goto LABEL_21;
      }
    }

    swift_once();
    goto LABEL_5;
  }

  sub_241255C30(0, v34, v35);
  v60 = swift_allocError();
  *v61 = 0xD000000000000020;
  *(v61 + 8) = 0x800000024135ECA0;
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  *&v138 = v60;
  sub_24127BE04(&v138);
  v62 = qword_27E537D08;

  v63 = v26;
  v64 = a4;
  if (v62 != -1)
  {
    swift_once();
  }

  v65 = qword_27E53A740;
  v66 = sub_241353EEC();
  v67 = v110;
  (*(*(v66 - 8) + 56))(v110, 1, 1, v66);
  v68 = qword_27E537D00;

  v69 = v31;
  if (v68 != -1)
  {
    swift_once();
  }

  v70 = qword_27E53A738;
  v71 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor, &unk_24136B618);
  v72 = swift_allocObject();
  *(v72 + 16) = v70;
  *(v72 + 24) = v71;
  *(v72 + 32) = v65;
  *(v72 + 40) = 9;
  *(v72 + 48) = v118;
  *(v72 + 56) = v69;

  sub_241327238(0, 0, v67, &unk_241366C48, v72);

  v135 = v142;
  v136 = v143;
  v137[0] = v144[0];
  *(v137 + 9) = *(v144 + 9);
  v131 = v138;
  v132 = v139;
  v133 = v140;
  v134 = v141;
  sub_24124E364(&v131, v64, v111, v115, v112, v63);

LABEL_21:
  (*(v116 + 8))(v120, v117);

  return result;
}

double sub_2412771F8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), void (*a9)(uint64_t))
{
  v165 = a8;
  v166 = a4;
  v164 = a3;
  v186 = a2;
  v174 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538128, &qword_241365E48);
  v180 = *(v12 - 1);
  v181 = v12;
  MEMORY[0x28223BE20](v12);
  v187 = &v142 - v13;
  v14 = sub_2413538CC();
  v147 = *(v14 - 8);
  v148 = v14;
  MEMORY[0x28223BE20](v14);
  v145 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_2413538FC();
  v144 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v143 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_2413522BC();
  v156 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v170 = &v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Information = type metadata accessor for AssetLoader.LoadInformation(0);
  v153 = *(Information - 1);
  MEMORY[0x28223BE20](Information);
  v157 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v155 = &v142 - v20;
  MEMORY[0x28223BE20](v21);
  v162 = &v142 - v22;
  v154 = v23;
  MEMORY[0x28223BE20](v24);
  v152 = &v142 - v25;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538578, &unk_241366CD0);
  MEMORY[0x28223BE20](v169);
  v168 = &v142 - v26;
  v185 = sub_24135152C();
  v172 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v178 = &v142 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v179 = &v142 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850, &unk_241366BF0);
  MEMORY[0x28223BE20](v30 - 8);
  v149 = &v142 - v31;
  v32 = sub_2413517BC();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v142 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = swift_allocObject();
  v36[2] = a5;
  v36[3] = a6;
  v150 = a6;
  v37 = v165;
  v36[4] = a7;
  v36[5] = v37;
  v36[6] = a9;
  v38 = swift_allocObject();
  v39 = v166;
  v38[2] = v164;
  v38[3] = v39;
  v38[4] = sub_241280818;
  v38[5] = v36;
  v167 = v38;
  v151 = *v186;
  sub_241352DAC();
  v40 = *(v174 + Information[5]);
  *(&v196 + 1) = MEMORY[0x277D841D8];
  *&aBlock = v40;
  v161 = a5;
  swift_retain_n();
  v41 = a7;
  swift_retain_n();
  swift_retain_n();

  v158 = v36;

  sub_2413516EC();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v42 = sub_241352CAC();
  (*(v33 + 8))(v35, v32);
  v43 = sub_241352D9C();
  v159 = a9;
  v160 = v41;
  if (v43)
  {
    v46 = v43;
    v142 = v42;
    v47 = swift_allocObject();
    v48 = v174;
    v49 = *(v174 + Information[10]);
    v50 = *(v49 + 16);
    v182 = v46;
    v163 = v47;
    if (v50)
    {
      *&aBlock = MEMORY[0x277D84F90];
      sub_2412DE294(0, v50, 0);
      v51 = sub_2413521FC();
      v52 = aBlock;
      v183 = *(v172 + 16);
      v184 = v172 + 16;
      v53 = (v49 + ((*(v172 + 80) + 32) & ~*(v172 + 80)));
      v176 = *(v172 + 72);
      v177 = v51;
      v175 = (v172 + 8);
      v54 = v187;
      v55 = v178;
      v56 = v179;
      do
      {
        v57 = v185;
        v58 = v52;
        v59 = v183;
        v183(v56, v53, v185);
        v186 = v181[12];
        v59(v54, v56, v57);
        v59(v55, v56, v57);
        v52 = v58;

        v60 = sub_2413521EC();
        (*v175)(v56, v57);
        *(v187 + v186) = v60;
        v54 = v187;
        *&aBlock = v58;
        v61 = *(v58 + 16);
        v62 = *(v52 + 24);
        if (v61 >= v62 >> 1)
        {
          sub_2412DE294((v62 > 1), v61 + 1, 1);
          v54 = v187;
          v52 = aBlock;
        }

        *(v52 + 16) = v61 + 1;
        sub_24127EFF0(v54, v52 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v61, &qword_27E538128, &qword_241365E48);
        v53 += v176;
        --v50;
      }

      while (v50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538130, &unk_241366CE0);
      *&aBlock = sub_24135483C();
      sub_24127218C(v52, 1, &aBlock);
      v181 = 0;

      v63 = aBlock;
      *(v163 + 16) = aBlock;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538580, &qword_241366CF0);
      v75 = (*(v180 + 80) + 32) & ~*(v180 + 80);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_241365EA0;
      v77 = v76 + v75;
      v187 = v181[12];
      v79 = v172 + 16;
      v78 = *(v172 + 16);
      v80 = v185;
      v78(v76 + v75, v48, v185);
      sub_2413521FC();
      v61 = v179;
      v183 = v78;
      v184 = v79;
      v78(v179, v48, v80);

      *(v77 + v187) = sub_2413521EC();
      v63 = sub_24124569C(v76);
      swift_setDeallocating();
      sub_241246278(v77, &qword_27E538128, &qword_241365E48);
      swift_deallocClassInstance();
      *(v163 + 16) = v63;

      v181 = 0;
    }

    v81 = v63 + 64;
    v82 = 1 << *(v63 + 32);
    v83 = -1;
    if (v82 < 64)
    {
      v83 = ~(-1 << v82);
    }

    v84 = v83 & *(v63 + 64);
    v85 = (v82 + 63) >> 6;
    v186 = v156 + 8;
    v187 = v63;

    v39 = 0;
    v86 = v168;
    if (v84)
    {
      while (1)
      {
        v87 = v39;
LABEL_21:
        v88 = __clz(__rbit64(v84));
        v84 &= v84 - 1;
        v89 = v88 | (v87 << 6);
        v90 = v187;
        v183(v86, (*(v187 + 48) + *(v172 + 72) * v89), v185);
        *(v86 + *(v169 + 48)) = *(*(v90 + 56) + 8 * v89);

        v91 = v170;
        sub_2413521AC();
        sub_2413516FC();
        (*v186)(v91, v171);
        v63 = aBlock;
        RESceneImportOperationSetFunctionConstant();
        v61 = v174;
        sub_241353C9C();
        RESceneImportOperationSetMaterialDefinitionPath();

        RESceneImportOperationSetUnitType();
        RESceneImportOperationSetIsolateFromEngine();
        sub_241246278(v86, &qword_27E538578, &unk_241366CD0);
        if (!v84)
        {
          goto LABEL_17;
        }
      }
    }

    while (1)
    {
LABEL_17:
      v87 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v87 >= v85)
      {
        break;
      }

      v84 = *(v81 + 8 * v87);
      ++v39;
      if (v84)
      {
        v39 = v87;
        goto LABEL_21;
      }
    }

    v92 = swift_allocObject();
    v93 = v163;
    v92[2] = v163;
    v92[3] = sub_2412807A0;
    v92[4] = v167;
    v94 = swift_allocObject();
    *(v94 + 16) = 0;
    v95 = v174;
    v96 = v152;
    sub_24127BF00(v174, v152);
    sub_24127BF00(v96, v162);
    v97 = v154;
    v98 = *(v153 + 80);
    v99 = swift_allocObject();
    *(v99 + 16) = v93;
    *(v99 + 24) = v94;
    v186 = v99;
    v187 = v94;
    sub_241244A20(v96, v99 + ((v98 + 32) & ~v98));
    v100 = v155;
    sub_24127BF00(v95, v155);
    v101 = v157;
    sub_24127BF00(v100, v157);
    v102 = (v98 + 48) & ~v98;
    v103 = v102 + v97;
    v104 = v92;
    v105 = swift_allocObject();
    v106 = v93;
    v105[2] = v93;
    v107 = v182;
    v105[3] = v182;
    v105[4] = sub_2412807B8;
    v105[5] = v104;
    v108 = v105 + v102;
    v109 = v105;
    sub_241244A20(v100, v108);
    v110 = v151;
    *(v109 + v103) = v151;
    v111 = v95 + Information[7];
    v112 = *v111;
    v184 = v104;
    v185 = v109;
    if (v112)
    {
      v113 = *(v111 + 8);
      swift_retain_n();

      sub_24127EF78(v112, v113);
      sub_241244A8C(v101);
      sub_241244A8C(v162);
      v114 = swift_allocObject();
      v183 = v112;
      v115 = v186;
      v114[2] = sub_24128081C;
      v114[3] = v115;
      v114[4] = v113;
      v114[5] = v106;
      v114[6] = sub_2412807B8;
      v114[7] = v104;
      v114[8] = sub_241280834;
      v114[9] = v109;
      *&v197 = sub_2412807A4;
      *(&v197 + 1) = v114;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v196 = sub_2412D5698;
      *(&v196 + 1) = &block_descriptor_206;
      v116 = _Block_copy(&aBlock);

      v181 = v113;

      v117 = v143;
      sub_2413538DC();
      *&v188 = MEMORY[0x277D84F90];
      sub_24127F10C(&qword_27E539870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930, &unk_2413674A0);
      sub_24123D370(&qword_27E539880, &unk_27E538930, &unk_2413674A0, MEMORY[0x277D83970]);
      v118 = v145;
      v119 = v148;
      sub_24135444C();
      v120 = v183;
      MEMORY[0x245CE2540](0, v117, v118, v116);

      _Block_release(v116);

      (*(v147 + 8))(v118, v119);
      (*(v144 + 8))(v117, v146);
    }

    else
    {
      v121 = v107;
      v122 = v106;
      swift_retain_n();
      v123 = v121;

      v124 = v187;

      v125 = v106;
      v126 = v124;
      v127 = v162;
      v128 = v181;
      sub_241273248(v125, v126, v162);
      if (v128)
      {
        sub_241244A8C(v157);
        v129 = v159;
        v130 = v166;
        sub_241244A8C(v127);
        *&aBlock = v128;
        sub_24127BE04(&aBlock);
        swift_beginAccess();
        *(v122 + 16) = MEMORY[0x277D84F98];

        v132 = qword_27E537D08;

        v133 = v129;

        if (v132 != -1)
        {
          swift_once();
        }

        v134 = qword_27E53A740;
        v135 = sub_241353EEC();
        v136 = v149;
        (*(*(v135 - 8) + 56))(v149, 1, 1, v135);
        v137 = qword_27E537D00;

        if (v137 != -1)
        {
          swift_once();
        }

        v138 = qword_27E53A738;
        v139 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor, &unk_24136B618);
        v140 = swift_allocObject();
        *(v140 + 16) = v138;
        *(v140 + 24) = v139;
        *(v140 + 32) = v134;
        *(v140 + 40) = 9;
        *(v140 + 48) = v164;
        *(v140 + 56) = v130;

        sub_241327238(0, 0, v136, &unk_241366D10, v140);

        v192 = v199;
        v193 = v200;
        v194[0] = v201[0];
        *(v194 + 9) = *(v201 + 9);
        v188 = aBlock;
        v189 = v196;
        v190 = v197;
        v191 = v198;
        sub_24124E364(&v188, v161, v150, v160, v165, v133);
      }

      else
      {
        sub_241244A8C(v127);
        v131 = v157;
        sub_241269024(v122, v123, sub_2412807B8, v104, v157, v110);
        sub_241244A8C(v131);
      }
    }
  }

  else
  {
    sub_241255C30(0, v44, v45);
    v63 = swift_allocError();
    *v64 = 0xD00000000000002CLL;
    *(v64 + 8) = 0x800000024135ED20;
    *(v64 + 16) = 0;
    *(v64 + 24) = 0;
    *&aBlock = v63;
    sub_24127BE04(&aBlock);
    v65 = qword_27E537D08;
    v61 = v161;

    if (v65 != -1)
    {
LABEL_35:
      swift_once();
    }

    v66 = v61;
    v67 = qword_27E53A740;
    v68 = sub_241353EEC();
    v69 = v149;
    (*(*(v68 - 8) + 56))(v149, 1, 1, v68);
    v70 = qword_27E537D00;
    v71 = v39;

    if (v70 != -1)
    {
      swift_once();
    }

    v72 = qword_27E53A738;
    v73 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor, &unk_24136B618);
    v74 = swift_allocObject();
    *(v74 + 16) = v72;
    *(v74 + 24) = v73;
    *(v74 + 32) = v67;
    *(v74 + 40) = 9;
    *(v74 + 48) = v164;
    *(v74 + 56) = v71;

    sub_241327238(0, 0, v69, &unk_241366D08, v74);

    v192 = v199;
    v193 = v200;
    v194[0] = v201[0];
    *(v194 + 9) = *(v201 + 9);
    v188 = aBlock;
    v189 = v196;
    v190 = v197;
    v191 = v198;
    sub_24124E364(&v188, v66, v150, v160, v165, v159);
  }

  return result;
}

void sub_2412787A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), void (*a8)(uint64_t))
{
  v166 = a1;
  v188 = *MEMORY[0x277D85DE8];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850, &unk_241366BF0);
  MEMORY[0x28223BE20](v15 - 8);
  v157 = &v149 - v16;
  Information = type metadata accessor for AssetLoader.LoadInformation(0);
  MEMORY[0x28223BE20](Information);
  v155 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_24135152C();
  v179 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v181 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v180 = &v149 - v20;
  MEMORY[0x28223BE20](v21);
  v152 = &v149 - v22;
  MEMORY[0x28223BE20](v23);
  v183 = &v149 - v24;
  MEMORY[0x28223BE20](v25);
  v173 = &v149 - v26;
  MEMORY[0x28223BE20](v27);
  v174 = &v149 - v28;
  MEMORY[0x28223BE20](v29);
  v158 = &v149 - v30;
  v153 = v31;
  MEMORY[0x28223BE20](v32);
  v159 = &v149 - v33;
  v34 = sub_2413515EC();
  v177 = *(v34 - 8);
  v178 = v34;
  MEMORY[0x28223BE20](v34);
  v36 = &v149 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = swift_allocObject();
  v37[2] = a4;
  v37[3] = a5;
  v161 = a5;
  v162 = a7;
  v37[4] = a6;
  v37[5] = a7;
  v37[6] = a8;
  v38 = swift_allocObject();
  v160 = a2;
  v38[2] = a2;
  v38[3] = a3;
  v38[4] = sub_241280818;
  v38[5] = v37;
  v164 = v38;
  v39 = objc_allocWithZone(MEMORY[0x277D778A8]);
  v168 = a4;
  swift_retain_n();
  v167 = a6;
  swift_retain_n();
  v169 = a8;
  swift_retain_n();
  v165 = a3;
  v40 = v166;
  swift_bridgeObjectRetain_n();
  v163 = v37;
  swift_retain_n();
  v41 = sub_24135144C();
  v42 = [v39 initSceneFromURL_];

  if (!v42)
  {
    goto LABEL_12;
  }

  v43 = [v42 rootNode];
  v44 = sub_241353BDC();
  v45 = sub_241353BDC();
  v46 = [v43 dictionaryMetadataWithKey:v44 dictionaryKey:v45];

  if (!v46)
  {

LABEL_12:
    LOBYTE(v186[0]) = 0;
    v76 = v168;

    v77 = v167;

    v78 = v169;

    v79 = v165;

    sub_2412771F8(v40, v186, v160, v79, v76, v161, v77, v162, v78);

    swift_bridgeObjectRelease_n();

    goto LABEL_66;
  }

  v47 = [v46 resourcePathArray];
  sub_241246158(0, &qword_27E538570, 0x277D778A0);
  v175 = sub_241353E2C();

  sub_2413515DC();
  sub_2413515BC();
  v49 = v48;
  (*(v177 + 8))(v36, v178);
  v50 = v49 * 1000.0;
  if (COERCE__INT64(fabs(v49 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_41;
  }

  if (v50 <= -9.22337204e18)
  {
    goto LABEL_42;
  }

  if (v50 >= 9.22337204e18)
  {
    goto LABEL_43;
  }

  v151 = v42;
  *&v186[0] = v50;
  v51 = sub_24135491C();
  v53 = sub_2412720D0(8uLL, v51, v52);
  v55 = v54;
  v57 = v56;
  v59 = v58;

  MEMORY[0x245CE2060](v53, v55, v57, v59);

  if (qword_27E537BD8 != -1)
  {
    goto LABEL_44;
  }

LABEL_7:
  v150 = v46;
  *&v186[0] = qword_27E539620;
  v60 = qword_27E539620;
  MRQLFileManager.documentDirectory()(v159);

  *&v186[0] = qword_27E539620;
  v61 = qword_27E539620;
  MRQLFileManager.createTemporaryDirectory(destinationURL:)();

  v62 = v174;
  sub_24135146C();

  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v63 = sub_241352FFC();
  v64 = __swift_project_value_buffer(v63, qword_27E5384A0);
  v65 = v179;
  v66 = v173;
  v67 = v182;
  v176 = *(v179 + 16);
  v177 = v179 + 16;
  v176(v173, v62, v182);
  v149 = v64;
  v68 = sub_241352FDC();
  v69 = sub_2413540DC();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v186[0] = v71;
    *v70 = 136315138;
    sub_24127F10C(&qword_27E539990, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v72 = sub_24135491C();
    v74 = v73;
    v178 = *(v65 + 8);
    v178(v66, v67);
    v75 = sub_2412DDC2C(v72, v74, v186);

    *(v70 + 4) = v75;
    _os_log_impl(&dword_241215000, v68, v69, "Unzipping to '%s'", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v71);
    MEMORY[0x245CE4870](v71, -1, -1);
    MEMORY[0x245CE4870](v70, -1, -1);
  }

  else
  {

    v178 = *(v65 + 8);
    v178(v66, v67);
  }

  v46 = v175;
  v80 = [objc_opt_self() defaultManager];
  v81 = v174;
  v82 = sub_24135144C();
  *&v186[0] = 0;
  v83 = [v80 createDirectoryAtURL:v82 withIntermediateDirectories:1 attributes:0 error:v186];

  v84 = *&v186[0];
  if (!v83)
  {
    v102 = *&v186[0];

    v103 = sub_24135139C();

    swift_willThrow();
    v104 = v157;
    goto LABEL_33;
  }

  if (v46 >> 62)
  {
    v85 = sub_2413544EC();
    if (!v85)
    {
LABEL_46:
      v88 = v84;
      v170 = 0;
LABEL_47:
      MEMORY[0x28223BE20](v88);
      v148 = v81;
      sub_24125F980(sub_24127EF18, (&v149 - 4), v46);
      v117 = v116;

      v175 = *(v117 + 16);
      if (!v175)
      {
        v120 = MEMORY[0x277D84F90];
LABEL_62:

        v134 = sub_241352FDC();
        v135 = sub_2413540DC();
        if (os_log_type_enabled(v134, v135))
        {
          v136 = swift_slowAlloc();
          *v136 = 134217984;
          *(v136 + 4) = *(v120 + 16);

          _os_log_impl(&dword_241215000, v134, v135, "Found %ld USDZ files", v136, 0xCu);
          MEMORY[0x245CE4870](v136, -1, -1);
        }

        else
        {
        }

        v137 = v164;
        v138 = v155;
        sub_24127BF00(v166, v155);
        v139 = *(Information + 40);

        *&v138[v139] = v120;
        LOBYTE(v186[0]) = 1;
        v140 = v152;
        v141 = v182;
        v176(v152, v174, v182);
        v142 = v179;
        v143 = (*(v179 + 80) + 16) & ~*(v179 + 80);
        v144 = (v153 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
        v145 = swift_allocObject();
        (*(v142 + 32))(v145 + v143, v140, v141);
        v146 = (v145 + v144);
        *v146 = sub_2412807A0;
        v146[1] = v137;

        sub_241267EFC(v138, v186, sub_24127EF38, v145);

        v147 = v178;
        v178(v158, v141);
        v147(v159, v141);
        sub_241244A8C(v138);
        v147(v174, v141);

        swift_bridgeObjectRelease_n();

        goto LABEL_66;
      }

      v118 = 0;
      v119 = v179;
      v173 = (v179 + 8);
      v181 = (v179 + 32);
      v120 = MEMORY[0x277D84F90];
      v121 = v182;
      while (2)
      {
        if (v118 >= *(v117 + 16))
        {
          __break(1u);
        }

        v122 = (*(v119 + 80) + 32) & ~*(v119 + 80);
        v123 = v117;
        v124 = *(v119 + 72);
        v176(v183, (v117 + v122 + v124 * v118), v121);
        sub_2413513FC();
        v125 = sub_241353C8C();
        v127 = v126;

        if (v125 == 2053403509 && v127 == 0xE400000000000000)
        {

          goto LABEL_56;
        }

        v128 = sub_24135497C();

        if (v128)
        {
LABEL_56:
          v129 = *v181;
          (*v181)(v180, v183, v121);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v186[0] = v120;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2412DE254(0, *(v120 + 16) + 1, 1);
            v120 = *&v186[0];
          }

          v132 = *(v120 + 16);
          v131 = *(v120 + 24);
          if (v132 >= v131 >> 1)
          {
            sub_2412DE254((v131 > 1), v132 + 1, 1);
            v120 = *&v186[0];
          }

          *(v120 + 16) = v132 + 1;
          v133 = v120 + v122 + v132 * v124;
          v121 = v182;
          v129(v133, v180, v182);
        }

        else
        {
          v178(v183, v121);
        }

        ++v118;
        v119 = v179;
        v117 = v123;
        if (v175 == v118)
        {
          goto LABEL_62;
        }

        continue;
      }
    }
  }

  else
  {
    v85 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v85)
    {
      goto LABEL_46;
    }
  }

  v172 = objc_opt_self();
  v173 = (v46 & 0xC000000000000001);
  v156 = v46 & 0xFFFFFFFFFFFFFF8;
  v171 = v179 + 8;
  v86 = v84;
  v87 = 0;
  v170 = 0;
  while (1)
  {
    if (v173)
    {
      v89 = MEMORY[0x245CE29C0](v87, v46);
    }

    else
    {
      if (v87 >= *(v156 + 16))
      {
        goto LABEL_40;
      }

      v89 = *(v46 + 8 * v87 + 32);
    }

    v90 = v89;
    v91 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      swift_once();
      goto LABEL_7;
    }

    v92 = [v89 path];
    sub_241353C0C();

    sub_24135146C();

    v93 = [v90 resolvedPath];
    if (!v93)
    {
      sub_241353C0C();
      v93 = sub_241353BDC();
    }

    v94 = [v172 resourceWithPath_];

    if (v94)
    {
      break;
    }

    v178(v181, v182);
LABEL_19:

    ++v87;
    v46 = v175;
    if (v91 == v85)
    {
      goto LABEL_47;
    }
  }

  v95 = [v94 dataNoCopy];
  if (!v95)
  {
    v178(v181, v182);

    goto LABEL_19;
  }

  v96 = v95;
  v97 = sub_24135154C();
  v99 = v98;

  v100 = v181;
  v101 = v170;
  sub_24135155C();
  v170 = v101;
  if (!v101)
  {
    v178(v100, v182);
    sub_24125D520(v97, v99);

    v90 = v94;
    v81 = v174;
    goto LABEL_19;
  }

  v178(v100, v182);

  sub_24125D520(v97, v99);

  v104 = v157;
  v103 = v170;
LABEL_33:
  *&v186[0] = v103;
  sub_24127BE04(v186);

  v105 = v103;
  v106 = v165;
  if (qword_27E537D08 != -1)
  {
    swift_once();
  }

  v107 = v103;
  v108 = qword_27E53A740;
  v109 = sub_241353EEC();
  (*(*(v109 - 8) + 56))(v104, 1, 1, v109);
  v110 = qword_27E537D00;

  if (v110 != -1)
  {
    swift_once();
  }

  v111 = qword_27E53A738;
  v112 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor, &unk_24136B618);
  v113 = swift_allocObject();
  *(v113 + 16) = v111;
  *(v113 + 24) = v112;
  *(v113 + 32) = v108;
  *(v113 + 40) = 9;
  *(v113 + 48) = v160;
  *(v113 + 56) = v106;

  sub_241327238(0, 0, v104, &unk_241366CC8, v113);

  v184[4] = v186[4];
  v184[5] = v186[5];
  v185[0] = v187[0];
  *(v185 + 9) = *(v187 + 9);
  v184[0] = v186[0];
  v184[1] = v186[1];
  v184[2] = v186[2];
  v184[3] = v186[3];
  sub_24124E364(v184, v168, v161, v167, v162, v169);

  v114 = v178;
  v115 = v182;
  v178(v158, v182);
  v114(v159, v115);
  v114(v174, v115);

  swift_bridgeObjectRelease_n();

LABEL_66:
}