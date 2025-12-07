uint64_t sub_1A3FFA00C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

void sub_1A3FFA1B8()
{
  swift_getKeyPath();
  (*(*v0 + 504))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FFA22C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  return result;
}

void sub_1A3FFA3E0()
{
  swift_getKeyPath();
  (*(*v0 + 504))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FFA454@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_1A3FFA4E8(uint64_t a1, uint64_t a2)
{
  v5 = v2[6];
  if (v5)
  {
    if (a2)
    {
      v6 = v2[5] == a1 && v5 == a2;
      if (v6 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 512))(v9);

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  v2[5] = a1;
  v2[6] = a2;

  return result;
}

void sub_1A3FFA638()
{
  swift_getKeyPath();
  (*(*v0 + 504))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FFA6AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 360))();
  *a2 = result;
  return result;
}

double sub_1A3FFA72C(uint64_t a1)
{
  if (sub_1A3D3D27C(v1[7], a1))
  {
    v1[7] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 512))(v5);
  }

  return result;
}

void sub_1A3FFA850()
{
  swift_getKeyPath();
  (*(*v0 + 504))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FFA8D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 408))();
  *a2 = result;
  return result;
}

double sub_1A3FFA928(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v6[2] = v3;
  v6[3] = v2;
  (*(*v3 + 512))(KeyPath, sub_1A4000ECC, v6, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

double sub_1A3FFA9D8(uint64_t a1)
{
  swift_getKeyPath();
  (*(*v1 + 512))();

  return result;
}

void sub_1A3FFAA80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FFAAE0(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v15[4] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v15[5] = v4;
  sub_1A3C563A4(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A52444C4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[6] = a1;
  sub_1A4000C68(a1, v8, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v13 = *(v10 + 32);
    v15[7] = v9;
    v13(v12, v8, v9);
    sub_1A5244464();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = sub_1A40009DC(v8, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
  __break(1u);
  return result;
}

uint64_t sub_1A3FFB180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A3FFB1A4, 0, 0);
}

uint64_t sub_1A3FFB1A4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1A3FFB294;
    v4 = v0[6];
    v3 = v0[7];

    return sub_1A3FFB5AC(v4, v3);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1A3FFB294()
{

  return MEMORY[0x1EEE6DFA0](sub_1A3FFB390, 0, 0);
}

uint64_t sub_1A3FFB390()
{
  sub_1A524CC54();
  *(v0 + 80) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3FFB424, v2, v1);
}

uint64_t sub_1A3FFB424()
{
  v1 = *(v0 + 64);

  if (*(v1 + 16) != 2)
  {
    v2 = *(v0 + 64);
    KeyPath = swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v2;
    *(v4 + 24) = 2;
    (*(*v2 + 512))(KeyPath, sub_1A3E93AF4, v4, MEMORY[0x1E69E7CA8] + 8);
  }

  return MEMORY[0x1EEE6DFA0](sub_1A3FFB54C, 0, 0);
}

uint64_t sub_1A3FFB54C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3FFB5AC(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v3[12] = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v4 = sub_1A5244FD4();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = MEMORY[0x1E69E6720];
  sub_1A3C563A4(0, &qword_1EB12D668, type metadata accessor for GenerativeStoryEventSuggestion, MEMORY[0x1E69E6720]);
  v3[18] = swift_task_alloc();
  v6 = type metadata accessor for GenerativeStoryEventSuggestion(0);
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v7 = sub_1A52469C4();
  v3[23] = v7;
  v3[24] = *(v7 - 8);
  v3[25] = swift_task_alloc();
  sub_1A4000974(0);
  v3[26] = v8;
  v3[27] = *(v8 - 8);
  v3[28] = swift_task_alloc();
  v9 = sub_1A5244794();
  v3[29] = v9;
  v3[30] = *(v9 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  sub_1A3C563A4(0, &qword_1EB12EE20, MEMORY[0x1E69C14E0], v5);
  v3[33] = swift_task_alloc();
  v3[34] = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  v3[35] = swift_task_alloc();
  v10 = sub_1A52444C4();
  v3[36] = v10;
  v3[37] = *(v10 - 8);
  v3[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A3FFB96C, 0, 0);
}

uint64_t sub_1A3FFB96C(double a1)
{
  v165 = v1;
  v2 = v1;
  sub_1A4000C68(v1[9], v1[35], type metadata accessor for GenerativeStoryAmbiguityData.Payload);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A40009DC(v1[35], type metadata accessor for GenerativeStoryAmbiguityData.Payload);
LABEL_16:
    sub_1A4000C68(v2[9], v2[14], type metadata accessor for GenerativeStoryAmbiguityData);
    v33 = sub_1A5246F04();
    v34 = sub_1A524D264();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v2[14];
    if (v35)
    {
      v37 = v2[13];
      v38 = swift_slowAlloc();
      v164[0] = swift_slowAlloc();
      *v38 = 136642819;
      sub_1A4000C68(v36, v37, type metadata accessor for GenerativeStoryAmbiguityData);
      v39 = sub_1A524C714();
      v41 = v40;
      sub_1A40009DC(v36, type metadata accessor for GenerativeStoryAmbiguityData);
      sub_1A3C2EF94(v39, v41, v164);
    }

    sub_1A40009DC(v36, type metadata accessor for GenerativeStoryAmbiguityData);
LABEL_19:

    v42 = v2[1];

    return v42();
  }

  v3 = v1[33];
  (*(v1[37] + 32))(v1[38], v1[35], v1[36]);
  sub_1A52444A4();
  v4 = sub_1A5245604();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v6 = v2[33];
    (*(v2[37] + 8))(v2[38], v2[36]);
    sub_1A4000A3C(v6, &qword_1EB12EE20, MEMORY[0x1E69C14E0]);
    goto LABEL_16;
  }

  v7 = v2[33];
  v8 = sub_1A52455F4();
  (*(v5 + 8))(v7, v4);
  v9 = *(v8 + 16);
  if (!v9)
  {
    (*(v2[37] + 8))(v2[38], v2[36]);

    goto LABEL_16;
  }

  v10 = v2[30];
  v164[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C57108(0, v9, 0);
  v11 = v164[0];
  v12 = *(v10 + 16);
  v10 += 16;
  v163 = v12;
  v13 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
  v161 = v2;
  v162 = *(v10 + 56);
  v160 = (v10 - 8);
  v14 = v13;
  v15 = v9;
  do
  {
    v16 = v2[32];
    v17 = v2[29];
    v163(v16, v14, v17);
    v18 = sub_1A5244754();
    v20 = v19;
    v157 = *v160;
    (*v160)(v16, v17);
    v164[0] = v11;
    v22 = *(v11 + 16);
    v21 = *(v11 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1A3C57108((v21 > 1), v22 + 1, 1);
      v11 = v164[0];
    }

    *(v11 + 16) = v22 + 1;
    v23 = v11 + 16 * v22;
    *(v23 + 32) = v18;
    *(v23 + 40) = v20;
    v2 = v161;
    v14 += v162;
    --v15;
  }

  while (v15);
  v24 = v161[27];
  v158 = v161[28];
  v25 = v161[26];
  v164[0] = MEMORY[0x1E69E7CC0];
  sub_1A3FFF7F4(0, v9, 0);
  v26 = v164[0];
  do
  {
    v27 = v161[28];
    v163(v27 + *(v25 + 48), v13, v161[29]);
    *v27 = sub_1A5244754();
    *(v158 + 8) = v28;
    v164[0] = v26;
    v30 = *(v26 + 16);
    v29 = *(v26 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_1A3FFF7F4((v29 > 1), v30 + 1, 1);
      v26 = v164[0];
    }

    v31 = v161[28];
    *(v26 + 16) = v30 + 1;
    sub_1A4000AAC(v31, v26 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v30, sub_1A4000974);
    v13 += v162;
    --v9;
  }

  while (v9);
  sub_1A4000CD0(0, &qword_1EB130348, MEMORY[0x1E69C0FC8]);
  v164[0] = sub_1A524E794();

  sub_1A3FFF284(v32, 1, v164);
  v2 = v161;
  v44 = v161[10];

  v45 = v164[0];
  v46 = objc_opt_self();
  v47 = sub_1A524CA14();
  v48 = [v44 librarySpecificFetchOptions];
  v49 = [v46 fetchAssetsWithUUIDs:v47 options:v48];
  v161[39] = v49;

  if (!v49)
  {

    v61 = sub_1A5246F04();
    v62 = sub_1A524D264();

    v63 = os_log_type_enabled(v61, v62);
    v65 = v161[37];
    v64 = v161[38];
    v66 = v161[36];
    if (v63)
    {
      v67 = swift_slowAlloc();
      v164[0] = swift_slowAlloc();
      *v67 = 136315138;
      v68 = MEMORY[0x1A5907DB0](v11, MEMORY[0x1E69E6158]);
      v70 = v69;

      sub_1A3C2EF94(v68, v70, v164);
    }

    (*(v65 + 8))(v64, v66);
    goto LABEL_19;
  }

  sub_1A3D3B558(v11);

  v50 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v51 = sub_1A524CA14();

  v52 = [v50 initWithArray_];

  v53 = [v49 px:v52 fetchedObjectIDsSortedByUUIDs:?];
  sub_1A4000B14(0, v54);
  v55 = sub_1A524CA34();

  sub_1A3F6BAA8(v55, v56);

  v57 = [v49 fetchType];
  if (v57)
  {
    v58 = v57;
    sub_1A524C674();
    v60 = v59;
  }

  else
  {
    v60 = 0;
  }

  v71 = [v49 fetchPropertySets];
  if (v71)
  {
    v72 = v71;
    v73 = sub_1A524CF44();
  }

  else
  {
    v73 = 0;
  }

  v74 = sub_1A524CA14();

  if (v60)
  {
    v75 = sub_1A524C634();
  }

  else
  {
    v75 = 0;
  }

  v2 = v161;
  if (v73)
  {
    v76 = sub_1A524CF34();
  }

  else
  {
    v76 = 0;
  }

  v77 = [objc_allocWithZone(MEMORY[0x1E69788E0]) initWithOids:v74 photoLibrary:v161[10] fetchType:v75 fetchPropertySets:v76 identifier:0 registerIfNeeded:0];
  v161[40] = v77;

  v78 = [v77 fetchedObjects];
  if (!v78 || (v79 = v78, v80 = sub_1A524CA34(), v79, v82 = sub_1A3FFCF14(v80, v81), , !v82))
  {

    v133 = v77;
    v134 = sub_1A5246F04();
    v135 = sub_1A524D264();

    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v164[0] = swift_slowAlloc();
      *v136 = 136315138;
      v137 = [v133 fetchedObjects];
      if (v137)
      {
        v138 = v137;
        v139 = sub_1A524CA34();
      }

      else
      {
        v139 = 0;
      }

      v161[7] = v139;
      sub_1A4000B60(0);
      v143 = sub_1A524C714();
      sub_1A3C2EF94(v143, v144, v164);
    }

    v141 = v161[37];
    v140 = v161[38];
    v142 = v161[36];

    (*(v141 + 8))(v140, v142);
    goto LABEL_19;
  }

  v155 = v45;
  v83 = MEMORY[0x1E69C1878];
  sub_1A3C563A4(0, &qword_1EB1202E0, MEMORY[0x1E69C1878], MEMORY[0x1E69E6F90]);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1A52FC9F0;
  sub_1A52469B4();
  sub_1A52469A4();
  v161[8] = v84;
  sub_1A3FFF23C(&qword_1EB124A50, MEMORY[0x1E69C1878], MEMORY[0x1E69C1880]);
  sub_1A3C563A4(0, &qword_1EB120C98, v83, MEMORY[0x1E69E62F8]);
  sub_1A4000BE0();
  sub_1A524E224();
  sub_1A5245214();
  swift_allocObject();
  v161[41] = sub_1A52451F4();
  v85 = v82 & 0xFFFFFFFFFFFFFF8;
  if (v82 >> 62)
  {
LABEL_77:
    v86 = sub_1A524E2B4();
    v45 = v155;
    if (v86)
    {
      goto LABEL_41;
    }

LABEL_78:
    v156 = MEMORY[0x1E69E7CC0];
LABEL_79:
    v161[42] = v156;

    sub_1A524CC54();
    v161[43] = sub_1A524CC44();
    v145 = sub_1A524CBC4();
    v147 = v146;
    v91 = sub_1A3FFCD68;
    v92 = v145;
    v93 = v147;

    return MEMORY[0x1EEE6DFA0](v91, v92, v93);
  }

  v86 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v86)
  {
    goto LABEL_78;
  }

LABEL_41:
  v87 = 0;
  v88 = v161[20];
  v148 = (v161[16] + 8);
  v150 = v88;
  v152 = (v88 + 48);
  v153 = (v88 + 56);
  v156 = MEMORY[0x1E69E7CC0];
  v151 = v85;
  v154 = v86;
  while (1)
  {
    if ((v82 & 0xC000000000000001) != 0)
    {
      v89 = MEMORY[0x1A59097F0](v87, v82);
    }

    else
    {
      if (v87 >= *(v85 + 16))
      {
        goto LABEL_76;
      }

      v89 = *(v82 + 8 * v87 + 32);
    }

    v90 = v89;
    if (__OFADD__(v87, 1))
    {
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v91 = [v89 uuid];
    if (!v91)
    {
      __break(1u);
      goto LABEL_83;
    }

    v94 = v91;
    v95 = sub_1A524C674();
    v97 = v96;

    v159 = v87 + 1;
    if (*(v45 + 16))
    {
      v98 = sub_1A3C5DCA4(v95, v97);
      v100 = v99;

      if (v100)
      {
        v101 = v161[10];
        v163(v161[31], *(v45 + 56) + v98 * v162, v161[29]);
        v102 = sub_1A5244744();
        PXSharingFilterFromPhotoLibrary(v101);
        sub_1A5244CE4();
        swift_allocObject();
        v103 = v101;
        sub_1A5244CD4();
        sub_1A5244FC4();
        v104 = sub_1A52451B4();
        v161[5] = sub_1A52469D4();
        v161[6] = MEMORY[0x1E69C1888];
        v161[2] = v104;
        v105 = sub_1A5245404();
        __swift_destroy_boxed_opaque_existential_0(v161 + 2);
        if (*(v105 + 16))
        {
          v149 = v161[18];
          v106 = sub_1A5244764();
          v108 = v107;
          v109 = v90;
          sub_1A5244774();
          sub_1A5244784();
          sub_1A48925AC(v106, v108, v149, v102);
        }

        v118 = sub_1A5246F04();
        v119 = sub_1A524D264();
        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          *v120 = 0;
          _os_log_impl(&dword_1A3C1C000, v118, v119, "Could not construct GenerativeStoryEventSuggestion object because there are no assets to show", v120, 2u);
          MEMORY[0x1A590EEC0](v120, -1, -1);
        }

        v121 = v161[31];
        v122 = v161[29];
        v123 = v161[17];
        v124 = v161[15];

        (*v148)(v123, v124);
        v157(v121, v122);
        v85 = v151;
        goto LABEL_61;
      }
    }

    else
    {
    }

    v110 = v90;
    v111 = sub_1A5246F04();
    v112 = sub_1A524D264();
    if (os_log_type_enabled(v111, v112))
    {
      break;
    }

LABEL_61:
    v125 = v161[18];
    v126 = v161[19];
    (*v153)(v125, 1, 1, v126);

    if ((*v152)(v125, 1, v126) == 1)
    {
      sub_1A4000A3C(v161[18], &qword_1EB12D668, type metadata accessor for GenerativeStoryEventSuggestion);
    }

    else
    {
      v127 = v161[21];
      v128 = v161[22];
      sub_1A4000AAC(v161[18], v128, type metadata accessor for GenerativeStoryEventSuggestion);
      sub_1A4000AAC(v128, v127, type metadata accessor for GenerativeStoryEventSuggestion);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v156 = sub_1A3E870AC(0, v156[2] + 1, 1, v156, v129);
      }

      v131 = v156[2];
      v130 = v156[3];
      if (v131 >= v130 >> 1)
      {
        v156 = sub_1A3E870AC((v130 > 1), v131 + 1, 1, v156, v129);
      }

      v132 = v161[21];
      v156[2] = v131 + 1;
      sub_1A4000AAC(v132, v156 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v131, type metadata accessor for GenerativeStoryEventSuggestion);
    }

    v45 = v155;
    ++v87;
    if (v159 == v154)
    {
      goto LABEL_79;
    }
  }

  v113 = swift_slowAlloc();
  v164[0] = swift_slowAlloc();
  *v113 = 136315138;
  v114 = [v110 uuid];

  if (v114)
  {
    v115 = sub_1A524C674();
    v117 = v116;

    sub_1A3C2EF94(v115, v117, v164);
  }

LABEL_83:
  __break(1u);
  return MEMORY[0x1EEE6DFA0](v91, v92, v93);
}

void sub_1A3FFCD68()
{
  v1 = *(v0 + 336);

  sub_1A3FFA084(v1);
}

uint64_t sub_1A3FFCDDC()
{
  v1 = v0[40];
  v2 = v0[38];
  v3 = v0[39];
  v4 = v0[36];
  v5 = v0[37];

  (*(v5 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A3FFCF14(unint64_t a1, __n128 a2)
{
  v7 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1A524E2B4();
    sub_1A524E554();
    v3 = sub_1A524E2B4();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1A524E554();
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1A59097F0](v4, a1);
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_1A524E514();
        sub_1A524E564();
        sub_1A524E574();
        sub_1A524E524();
        ++v4;
      }

      while (v5 != v3);
    }
  }

  return v7;
}

void sub_1A3FFD088()
{
  swift_getKeyPath();
  v1 = (*v0 + 504);
  v2 = *v1;
  (*v1)();

  swift_getKeyPath();
  sub_1A3FFF23C(&qword_1EB1250F0, type metadata accessor for GenerativeStoryEventAmbiguityDataSource, &protocol conformance descriptor for GenerativeStoryEventAmbiguityDataSource);
  sub_1A52415F4();

  v3 = MEMORY[0x1E69E7CC0];
  v0[4] = MEMORY[0x1E69E7CC0];

  swift_getKeyPath();
  sub_1A52415E4();

  swift_getKeyPath();
  v2();

  swift_getKeyPath();
  sub_1A52415F4();

  v0[7] = v3;

  swift_getKeyPath();
  sub_1A52415E4();

  if (v0[6])
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v0 + 512))(v5);
  }

  else
  {
    v0[5] = 0;
    v0[6] = 0;
  }
}

double sub_1A3FFD30C()
{
  (*(*v0 + 448))();
  KeyPath = swift_getKeyPath();
  (*(*v0 + 504))(KeyPath);

  swift_getKeyPath();
  sub_1A3FFF23C(&qword_1EB1250F0, type metadata accessor for GenerativeStoryEventAmbiguityDataSource, &protocol conformance descriptor for GenerativeStoryEventAmbiguityDataSource);
  sub_1A52415F4();

  *(v0 + 24) = MEMORY[0x1E69E7CC0];

  swift_getKeyPath();
  sub_1A52415E4();

  if (*(v0 + 16))
  {
    v3 = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
    (*(*v0 + 512))(v4);
  }

  return result;
}

void sub_1A3FFD520(uint64_t a1)
{
  sub_1A3E7CAB0(0);
  v3 = v2;
  v32[1] = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v32[2] = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1A3C563A4(0, &qword_1EB12D660, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v32 - v10;
  sub_1A3C563A4(0, &qword_1EB12D668, type metadata accessor for GenerativeStoryEventSuggestion, v5);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v32 - v13;
  v15 = type metadata accessor for GenerativeStoryEventSuggestion(0);
  v33 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v40 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[3] = a1;
  v32[4] = v3;
  v17 = sub_1A5241F14();
  if (v17 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v17 = v31)
  {
    v19 = 0;
    v38 = v17 & 0xFFFFFFFFFFFFFF8;
    v39 = v17 & 0xC000000000000001;
    v34 = (v33 + 48);
    v35 = (v33 + 56);
    v41 = MEMORY[0x1E69E7CC0];
    v36 = v17;
    v37 = v15;
    while (1)
    {
      if (v39)
      {
        v17 = MEMORY[0x1A59097F0](v19, v17);
      }

      else
      {
        if (v19 >= *(v38 + 16))
        {
          goto LABEL_21;
        }

        v17 = *(v17 + 8 * v19 + 32);
      }

      v20 = v17;
      v15 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      sub_1A52430E4();
      sub_1A3C34400(0, &qword_1EB124F40, MEMORY[0x1E69C1E98]);
      v21 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem(0);
      v22 = swift_dynamicCast();
      v23 = *(v21 - 8);
      (*(v23 + 56))(v11, v22 ^ 1u, 1, v21);
      sub_1A4000E4C(v11, v8, &qword_1EB12D660, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem);
      if ((*(v23 + 48))(v8, 1, v21) == 1)
      {

        sub_1A4000A3C(v8, &qword_1EB12D660, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem);
        v24 = v37;
        (*v35)(v14, 1, 1, v37);
      }

      else
      {
        sub_1A4965628(v42);

        sub_1A40009DC(v8, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem);
        sub_1A3DB7F50();
        v24 = v37;
        v25 = swift_dynamicCast();
        (*v35)(v14, v25 ^ 1u, 1, v24);
      }

      sub_1A4000A3C(v11, &qword_1EB12D660, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem);
      if ((*v34)(v14, 1, v24) == 1)
      {
        sub_1A4000A3C(v14, &qword_1EB12D668, type metadata accessor for GenerativeStoryEventSuggestion);
      }

      else
      {
        sub_1A4000AAC(v14, v40, type metadata accessor for GenerativeStoryEventSuggestion);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1A3E870AC(0, v41[2] + 1, 1, v41, v26);
        }

        v28 = v41[2];
        v27 = v41[3];
        if (v28 >= v27 >> 1)
        {
          v41 = sub_1A3E870AC((v27 > 1), v28 + 1, 1, v41, v26);
        }

        v29 = v40;
        v30 = v41;
        v41[2] = v28 + 1;
        sub_1A4000AAC(v29, v30 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28, type metadata accessor for GenerativeStoryEventSuggestion);
      }

      ++v19;
      v17 = v36;
      if (v15 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v31 = v17;
    i = sub_1A524E2B4();
  }

  v41 = MEMORY[0x1E69E7CC0];
LABEL_24:

  sub_1A3FFA2AC(v41);
}

void sub_1A3FFDC44()
{
  v1 = (*(*v0 + 312))();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = (*(*v0 + 360))();
    v6 = (*(*v0 + 264))();
    KeyPath = swift_getKeyPath();
    (*(*v0 + 504))(KeyPath);

    swift_getKeyPath();
    sub_1A3FFF23C(&qword_1EB1250F0, type metadata accessor for GenerativeStoryEventAmbiguityDataSource, &protocol conformance descriptor for GenerativeStoryEventAmbiguityDataSource);
    sub_1A52415F4();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = v0[8];
    v0[8] = 0x8000000000000000;
    sub_1A40005CC(v5, v6, v3, v4, isUniquelyReferenced_nonNull_native);

    v0[8] = v12;
    swift_endAccess();
    swift_getKeyPath();
    sub_1A52415E4();
  }

  else
  {
    oslog = sub_1A5246F04();
    v9 = sub_1A524D244();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, oslog, v9, "No current ambiguity when trying to persist event selection", v10, 2u);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }
  }
}

void sub_1A3FFDF1C(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69C0EC8];
  sub_1A3C563A4(0, &qword_1EB130318, MEMORY[0x1E69C0EC8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_1A52444C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4000E4C(a1, v7, &qword_1EB130318, v4);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1A4000A3C(v7, &qword_1EB130318, MEMORY[0x1E69C0EC8]);
    KeyPath = swift_getKeyPath();
    (*(*v2 + 504))(KeyPath);

    v21 = v2;
    swift_getKeyPath();
    sub_1A3FFF23C(&qword_1EB1250F0, type metadata accessor for GenerativeStoryEventAmbiguityDataSource, &protocol conformance descriptor for GenerativeStoryEventAmbiguityDataSource);
    sub_1A52415F4();

    swift_beginAccess();
    v2[8] = MEMORY[0x1E69E7CC8];

    v20 = v2;
    swift_getKeyPath();
    sub_1A52415E4();
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v13 = sub_1A5244464();
    v15 = v14;
    v16 = swift_getKeyPath();
    (*(*v2 + 504))(v16);

    v21 = v2;
    swift_getKeyPath();
    sub_1A3FFF23C(&qword_1EB1250F0, type metadata accessor for GenerativeStoryEventAmbiguityDataSource, &protocol conformance descriptor for GenerativeStoryEventAmbiguityDataSource);
    sub_1A52415F4();

    swift_beginAccess();
    v17 = sub_1A400051C(v13, v15);
    v19 = v18;
    swift_endAccess();
    sub_1A3FFF170(v17, v19);

    v21 = v2;
    swift_getKeyPath();
    sub_1A52415E4();

    (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1A3FFE358()
{
  v1 = (*(*v0 + 312))();
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    if (*((*(*v0 + 408))() + 16))
    {
      sub_1A3C5DCA4(v4, v3);
      v6 = v5;

      if (v6)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    else
    {
    }

    v11 = sub_1A3FFF170(0, 0);
    (*(*v0 + 264))(v11);

    v10 = 1;
  }

  else
  {
    v7 = sub_1A5246F04();
    v8 = sub_1A524D244();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A3C1C000, v7, v8, "No current ambiguity when trying to check if event selection has changed", v9, 2u);
      MEMORY[0x1A590EEC0](v9, -1, -1);
    }

    v10 = 0;
  }

  return v10 & 1;
}

void sub_1A3FFE560()
{
  v3 = type metadata accessor for GenerativeStoryEventSuggestion(0);
  v7 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v5 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem(0) - 8;
  MEMORY[0x1EEE9AC00](v5);
  v6 = type metadata accessor for LemonadeFeedBodyStyle(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1A5245EC4();
}

char *GenerativeStoryEventAmbiguityDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore39GenerativeStoryEventAmbiguityDataSource_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore39GenerativeStoryEventAmbiguityDataSource___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t GenerativeStoryEventAmbiguityDataSource.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore39GenerativeStoryEventAmbiguityDataSource_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore39GenerativeStoryEventAmbiguityDataSource___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1A3FFECB0()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  v2 = MEMORY[0x1E69E7CC8];
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  v3 = OBJC_IVAR____TtC12PhotosUICore39GenerativeStoryEventAmbiguityDataSource_logger;
  v4 = sub_1A3C4A780();
  v5 = sub_1A5246F24();
  (*(*(v5 - 8) + 16))(v0 + v3, v4, v5);
  sub_1A5241604();
  return v0;
}

uint64_t sub_1A3FFED68(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for GenerativeStoryEventSuggestion(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_1A4000C68(v14, v11, type metadata accessor for GenerativeStoryEventSuggestion);
        sub_1A4000C68(v15, v7, type metadata accessor for GenerativeStoryEventSuggestion);
        sub_1A3FFF23C(&qword_1EB130388, type metadata accessor for GenerativeStoryEventSuggestion, &unk_1A536C410);
        v17 = sub_1A524C594();
        sub_1A40009DC(v7, type metadata accessor for GenerativeStoryEventSuggestion);
        sub_1A40009DC(v11, type metadata accessor for GenerativeStoryEventSuggestion);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1A3FFF068()
{
  v2 = *(type metadata accessor for GenerativeStoryAmbiguityData(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3D60150;

  return sub_1A3FFB180(v6, v7, v8, v4, v0 + v3, v5);
}

double sub_1A3FFF170(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t type metadata accessor for GenerativeStoryEventAmbiguityDataSource(uint64_t a1)
{
  result = qword_1EB15E2D0;
  if (!qword_1EB15E2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3FFF1FC()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 40) = v0[3];
  *(v1 + 48) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FFF23C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A3FFF284(uint64_t a1, char a2, void *a3)
{
  v59 = sub_1A5244794();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4000974(0);
  v56 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = *(a1 + 16);
  if (!v54)
  {
    goto LABEL_24;
  }

  v50 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v56 + 80);
  v55 = a1;
  v14 = (v57 + 32);
  v52 = a1 + ((v13 + 32) & ~v13);
  sub_1A4000C68(v52, v11, sub_1A4000974);
  v15 = v11[1];
  v62 = *v11;
  v16 = v62;
  v63 = v15;
  v17 = *v14;
  v53 = v12;
  v51 = v17;
  v17(v58, v11 + v12, v59);
  v18 = *a3;
  v20 = sub_1A3C5DCA4(v16, v15);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1A3FFFA88();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_1A3FFFEB4(v23, a2 & 1);
  v25 = sub_1A3C5DCA4(v16, v15);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v29 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v30 = (v29[6] + 16 * v20);
      *v30 = v16;
      v30[1] = v15;
      v51((v29[7] + *(v57 + 72) * v20), v58, v59);
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v29[2] = v33;
      if (v54 != 1)
      {
        v34 = 1;
        while (v34 < *(v55 + 16))
        {
          sub_1A4000C68(v52 + *(v56 + 72) * v34, v11, sub_1A4000974);
          v35 = v11[1];
          v62 = *v11;
          v36 = v62;
          v63 = v35;
          v37 = *v14;
          (*v14)(v58, v11 + v53, v59);
          v38 = *a3;
          v39 = sub_1A3C5DCA4(v36, v35);
          v41 = v38[2];
          v42 = (v40 & 1) == 0;
          v32 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (v32)
          {
            goto LABEL_26;
          }

          v44 = v40;
          if (v38[3] < v43)
          {
            sub_1A3FFFEB4(v43, 1);
            v39 = sub_1A3C5DCA4(v36, v35);
            if ((v44 & 1) != (v45 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v44)
          {
            goto LABEL_11;
          }

          v46 = *a3;
          *(*a3 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v47 = (v46[6] + 16 * v39);
          *v47 = v36;
          v47[1] = v35;
          v37((v46[7] + *(v57 + 72) * v39), v58, v59);
          v48 = v46[2];
          v32 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v32)
          {
            goto LABEL_27;
          }

          ++v34;
          v46[2] = v49;
          if (v54 == v34)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = swift_allocError();
    swift_willThrow();
    v64 = v27;
    v28 = v27;
    sub_1A3C34400(0, &qword_1EB126160, MEMORY[0x1E69E7280]);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v57 + 8))(v58, v59);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1A524EB84();
  __break(1u);
LABEL_29:
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000001BLL, 0x80000001A53C2450);
  sub_1A524E624();
  MEMORY[0x1A5907B60](39, 0xE100000000000000);
  sub_1A524E6E4();
  __break(1u);
}

void *sub_1A3FFF7F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A3FFF894(a1, a2, a3, *v3, &qword_1EB130360, sub_1A4000974, sub_1A4000974);
  *v3 = result;
  return result;
}

void *sub_1A3FFF844(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A3FFF894(a1, a2, a3, *v3, &qword_1EB130368, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem);
  *v3 = result;
  return result;
}

void *sub_1A3FFF894(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A3C563A4(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_1A3FFFA88()
{
  v1 = v0;
  v35 = sub_1A5244794();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4000CD0(0, &qword_1EB130348, MEMORY[0x1E69C0FC8]);
  v3 = *v0;
  v4 = sub_1A524E764();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      v15 = __clz(__rbit64(v13));
      v38 = (v13 - 1) & v13;
      goto LABEL_14;
    }

    v16 = 0;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_17;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {

LABEL_17:
    *v1 = v5;
  }
}

void sub_1A3FFFD18()
{
  v1 = v0;
  sub_1A4000CD0(0, &qword_1EB130370, sub_1A4000D34);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = 16 * (v13 | (v8 << 6));
        v17 = (*(v2 + 48) + v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(v2 + 56) + v16);
        v21 = (*(v4 + 48) + v16);
        *v21 = v19;
        v21[1] = v18;
        *(*(v4 + 56) + v16) = v20;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }
}

void sub_1A3FFFEB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = sub_1A5244794();
  v5 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1A4000CD0(0, &qword_1EB130348, MEMORY[0x1E69C0FC8]);
  v43 = v4;
  v8 = sub_1A524E774();
  v9 = v8;
  if (*(v7 + 16))
  {
    v39 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v40 = (v5 + 16);
    v41 = v7;
    v42 = v5;
    v44 = (v5 + 32);
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v42 + 72);
      v28 = v23 + v27 * v22;
      if ((v43 & 1) == 0)
      {
        (*v40)(v45, v28, v46);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      (*v44)(v45, v28, v46);
      sub_1A524EC94();
      sub_1A524C794();
      v29 = sub_1A524ECE4();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      (*v44)((*(v9 + 56) + v27 * v17), v45, v46);
      ++*(v9 + 16);
      v7 = v41;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1A4000248(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A4000CD0(0, &qword_1EB130370, sub_1A4000D34);
  v34 = v4;
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v35 = *(*(v5 + 56) + v21);
      if ((v34 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      v25 = sub_1A524ECE4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_1A400051C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1A3C5DCA4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v12 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1A3FFFD18();
    v8 = v12;
  }

  v9 = *(*(v8 + 56) + 16 * v6);
  sub_1A3DAD688(v6, v8, v10);
  *v3 = v8;
  return v9;
}

void sub_1A40005CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1A3C5DCA4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1A4000248(v18, a5 & 1);
      v13 = sub_1A3C5DCA4(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1A3FFFD18();
      v13 = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(v13 >> 6) + 8] |= 1 << v13;
    v25 = (v23[6] + 16 * v13);
    *v25 = a3;
    v25[1] = a4;
    v26 = (v23[7] + 16 * v13);
    *v26 = a1;
    v26[1] = a2;
    v27 = v23[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v17)
    {
      v23[2] = v28;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  v24 = (v23[7] + 16 * v13);
  *v24 = a1;
  v24[1] = a2;
}

void sub_1A400075C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem(255);
    v7 = sub_1A3FFF23C(&qword_1EB130328, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem, &unk_1A5376E70);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A40007FC()
{
  result = qword_1EB130338;
  if (!qword_1EB130338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130338);
  }

  return result;
}

uint64_t sub_1A4000858(uint64_t a1)
{
  result = sub_1A5246F24();
  if (v2 <= 0x3F)
  {
    result = sub_1A5241614();
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

void sub_1A4000974(uint64_t a1)
{
  if (!qword_1EB130340)
  {
    sub_1A5244794();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB130340);
    }
  }
}

uint64_t sub_1A40009DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4000A3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C563A4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A4000AAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A4000B14(uint64_t a1, uint64_t a2)
{
  result = qword_1EB126AF0;
  if (!qword_1EB126AF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126AF0);
  }

  return result;
}

void sub_1A4000B60(uint64_t a1)
{
  if (!qword_1EB130350)
  {
    sub_1A4000DFC(255, &qword_1EB130358, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E62F8]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB130350);
    }
  }
}

unint64_t sub_1A4000BE0()
{
  result = qword_1EB120C90;
  if (!qword_1EB120C90)
  {
    sub_1A3C563A4(255, &qword_1EB120C98, MEMORY[0x1E69C1878], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120C90);
  }

  return result;
}

uint64_t sub_1A4000C68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A4000CD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524E7A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4000D34(uint64_t a1)
{
  if (!qword_1EB130378)
  {
    sub_1A4000DFC(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1A3C563A4(255, &qword_1EB130380, type metadata accessor for GenerativeStoryEventSuggestion, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB130378);
    }
  }
}

void sub_1A4000DFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A4000E4C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C563A4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A4000F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  *a7 = swift_getKeyPath();
  sub_1A4006FD4(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for PersonSuggestionBanner(0);
  v15 = (a7 + v14[5]);
  *v15 = a1;
  v15[1] = a2;
  v15[2] = a3;
  result = sub_1A40014D4(a4, a7 + v14[6], type metadata accessor for PersonSuggestionBanner.Style);
  v17 = (a7 + v14[7]);
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t sub_1A400101C@<X0>(uint64_t *a2@<X8>)
{
  v4 = sub_1A5247E04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40014A0(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A524BBF4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PersonSuggestionBanner.Style(0);
  sub_1A4001438(v2 + *(v15 + 24), v10, sub_1A40014A0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1A4006F74(v10, sub_1A40014A0);
    (*(v5 + 104))(v7, *MEMORY[0x1E697DBB8], v4);
    v16 = sub_1A5247DF4();
    (*(v5 + 8))(v7, v4);
    if (v16)
    {
      result = sub_1A524B2E4();
    }

    else
    {
      result = sub_1A524B2A4();
    }

    v21 = MEMORY[0x1E6981568];
    a2[3] = MEMORY[0x1E69815C0];
    a2[4] = v21;
    *a2 = result;
  }

  else
  {
    v18 = *(v12 + 32);
    v18(v14, v10, v11);
    v19 = MEMORY[0x1E6981AD0];
    a2[3] = v11;
    a2[4] = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (v18)(boxed_opaque_existential_1, v14, v11);
  }

  return result;
}

uint64_t sub_1A40012C8()
{
  sub_1A40014A0(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PersonSuggestionBanner.Style(0);
  __swift_allocate_value_buffer(v3, qword_1EB1EBA68);
  v4 = __swift_project_value_buffer(v3, qword_1EB1EBA68);
  sub_1A524A0E4();
  v5 = sub_1A524A104();

  v6 = sub_1A524A254();
  sub_1A524BBD4();
  v7 = sub_1A524BBF4();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  *v4 = v5;
  v4[1] = v6;
  return sub_1A40014D4(v2, v4 + *(v3 + 24), sub_1A40014A0);
}

uint64_t sub_1A4001438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A40014D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4001560()
{
  v0 = type metadata accessor for PersonSuggestionBanner.Style(0);
  __swift_allocate_value_buffer(v0, qword_1EB1EBA80);
  v1 = __swift_project_value_buffer(v0, qword_1EB1EBA80);
  sub_1A524A214();
  v2 = sub_1A524A104();

  v3 = sub_1A524A0E4();
  v4 = *(v0 + 24);
  v5 = sub_1A524BBF4();
  result = (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *v1 = v2;
  *(v1 + 1) = v3;
  return result;
}

uint64_t sub_1A400163C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for PersonSuggestionBanner.Style(0);

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_1A4001690@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for PersonSuggestionBanner.Style(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return sub_1A4001438(v7, a4, type metadata accessor for PersonSuggestionBanner.Style);
}

void sub_1A40016F8(uint64_t a1@<X8>)
{
  v12 = a1;
  v2 = sub_1A5247E04();
  MEMORY[0x1EEE9AC00](v2);
  sub_1A40055EC(0, &qword_1EB130398, sub_1A4001C2C, sub_1A3E42C88);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  sub_1A4002644(0);
  v7 = *(v6 - 8);
  v10 = v6;
  v11 = v7;
  MEMORY[0x1EEE9AC00](v6);
  *v5 = sub_1A5249314();
  *(v5 + 1) = 0;
  v5[16] = 1;
  sub_1A4005E4C(0, &qword_1EB130470, sub_1A4001D78, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  sub_1A40029B0(v1, &v5[*(v8 + 44)]);
}

void sub_1A4001C2C(uint64_t a1)
{
  if (!qword_1EB1303A0)
  {
    sub_1A4001F60(255, &qword_1EB1303A8, sub_1A4001CE4, MEMORY[0x1E697E5E0]);
    sub_1A40025F0(255, &qword_1EB145460, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980460]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1303A0);
    }
  }
}

void sub_1A4001CE4(uint64_t a1)
{
  if (!qword_1EB1303B0)
  {
    sub_1A4001D78(255);
    sub_1A40064D4(&qword_1EB130440, sub_1A4001D78, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1303B0);
    }
  }
}

void sub_1A4001DAC(uint64_t a1)
{
  if (!qword_1EB1303C0)
  {
    sub_1A4001E48(255);
    sub_1A40021EC(255);
    sub_1A400233C(255);
    sub_1A4002464(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB1303C0);
    }
  }
}

void sub_1A4001E7C(uint64_t a1)
{
  if (!qword_1EB1303D0)
  {
    sub_1A40055EC(255, &qword_1EB1303D8, sub_1A4001F10, sub_1A3FA95D4);
    v3 = v2;
    v4 = sub_1A4001FC4();
    v6 = type metadata accessor for Avatar(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB1303D0);
    }
  }
}

void sub_1A4001F60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A4001FC4()
{
  result = qword_1EB1303F0;
  if (!qword_1EB1303F0)
  {
    sub_1A40055EC(255, &qword_1EB1303D8, sub_1A4001F10, sub_1A3FA95D4);
    sub_1A40020A4();
    sub_1A40064D4(&qword_1EB1245F8, sub_1A3FA95D4, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1303F0);
  }

  return result;
}

unint64_t sub_1A40020A4()
{
  result = qword_1EB1303F8;
  if (!qword_1EB1303F8)
  {
    sub_1A4001F10(255);
    sub_1A4002124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1303F8);
  }

  return result;
}

unint64_t sub_1A4002124()
{
  result = qword_1EB130400;
  if (!qword_1EB130400)
  {
    sub_1A4001F38(255);
    sub_1A40064D4(&qword_1EB125BC8, type metadata accessor for PersonFaceView, &unk_1A532F3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130400);
  }

  return result;
}

void sub_1A40021EC(uint64_t a1)
{
  if (!qword_1EB130408)
  {
    sub_1A4002280(255);
    sub_1A40064D4(&qword_1EB130420, sub_1A4002280, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB130408);
    }
  }
}

void sub_1A40022B4(uint64_t a1)
{
  if (!qword_1EB130418)
  {
    sub_1A4005370(255, &qword_1EB127690, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB130418);
    }
  }
}

void sub_1A400233C(uint64_t a1)
{
  if (!qword_1EB130428)
  {
    v1 = MEMORY[0x1E6981148];
    v2 = MEMORY[0x1E6981138];
    sub_1A40025F0(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A5243B44();
    sub_1A400258C(&qword_1EB127490, &qword_1EB127480, v1, v2);
    sub_1A40064D4(&qword_1EB130430, MEMORY[0x1E69C27F0], MEMORY[0x1E69C27E8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB130428);
    }
  }
}

void sub_1A4002464(uint64_t a1)
{
  if (!qword_1EB130438)
  {
    v1 = MEMORY[0x1E6981748];
    v2 = MEMORY[0x1E6981710];
    sub_1A40025F0(255, &qword_1EB127450, MEMORY[0x1E6981748], MEMORY[0x1E6981710], MEMORY[0x1E697D670]);
    sub_1A5243954();
    sub_1A400258C(&qword_1EB127458, &qword_1EB127450, v1, v2);
    sub_1A40064D4(&qword_1EB136900, MEMORY[0x1E69C26C0], MEMORY[0x1E69C26B8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB130438);
    }
  }
}

uint64_t sub_1A400258C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A40025F0(255, a2, a3, a4, MEMORY[0x1E697D670]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A40025F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4002644(uint64_t a1)
{
  if (!qword_1EB130448)
  {
    sub_1A40055EC(255, &qword_1EB130398, sub_1A4001C2C, sub_1A3E42C88);
    sub_1A40026F8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB130448);
    }
  }
}

unint64_t sub_1A40026F8()
{
  result = qword_1EB130450;
  if (!qword_1EB130450)
  {
    sub_1A40055EC(255, &qword_1EB130398, sub_1A4001C2C, sub_1A3E42C88);
    sub_1A40027D8();
    sub_1A40064D4(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130450);
  }

  return result;
}

unint64_t sub_1A40027D8()
{
  result = qword_1EB130458;
  if (!qword_1EB130458)
  {
    sub_1A4001C2C(255);
    sub_1A4002858();
    sub_1A400292C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130458);
  }

  return result;
}

unint64_t sub_1A4002858()
{
  result = qword_1EB130460;
  if (!qword_1EB130460)
  {
    sub_1A4001F60(255, &qword_1EB1303A8, sub_1A4001CE4, MEMORY[0x1E697E5E0]);
    sub_1A40064D4(&qword_1EB130468, sub_1A4001CE4, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130460);
  }

  return result;
}

unint64_t sub_1A400292C()
{
  result = qword_1EB1454B0;
  if (!qword_1EB1454B0)
  {
    sub_1A40025F0(255, &qword_1EB145460, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1454B0);
  }

  return result;
}

void sub_1A40029B0(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t a2@<X8>)
{
  v57[20] = a2;
  v3 = sub_1A5243954();
  v57[16] = *(v3 - 8);
  v57[17] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v57[15] = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E697D670];
  sub_1A40025F0(0, &qword_1EB127450, MEMORY[0x1E6981748], MEMORY[0x1E6981710], MEMORY[0x1E697D670]);
  v57[14] = v6;
  v57[12] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v57[10] = v57 - v7;
  sub_1A4002464(0);
  v57[18] = *(v8 - 8);
  v57[19] = v8;
  MEMORY[0x1EEE9AC00](v8);
  v64 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v63 = v57 - v11;
  v12 = sub_1A5243B44();
  v57[8] = *(v12 - 8);
  v57[9] = v12;
  MEMORY[0x1EEE9AC00](v12);
  v57[5] = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PersonSuggestionBanner(0);
  v57[25] = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v57[6] = v15;
  v57[7] = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40025F0(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], v5);
  v57[3] = *(v16 - 8);
  v57[4] = v16;
  MEMORY[0x1EEE9AC00](v16);
  v57[2] = v57 - v17;
  sub_1A400233C(0);
  v57[13] = v18;
  v57[11] = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v68 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v67 = v57 - v21;
  v60 = sub_1A5243624();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v23 = v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4001E7C(0);
  v61 = v24;
  v65 = *(v24 - 1);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4001E48(0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v62 = v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v57 - v30;
  v59 = v14;
  v32 = *(v14 + 20);
  v66 = a1;
  v33 = (a1 + v32);
  v34 = *v33;
  v35 = v33[1];
  v36 = v33[2];
  v71 = *v33;
  v72 = v35;
  v73 = v36;
  sub_1A4006FD4(0, &qword_1EB130478, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E6981948]);
  v38 = v37;
  v39 = MEMORY[0x1A5906C60](v70);
  v40 = (*(*v70[0] + 304))(v39);

  if (v40)
  {
    v71 = v34;
    v72 = v35;
    v73 = v36;
    MEMORY[0x1A5906C60](v70, v38);
    v41 = *(v70[0] + 64);

    *v26 = v41;
    v42 = v61;
    v43 = &v26[*(v61 + 9)];
    (*(v58 + 104))(v23, *MEMORY[0x1E69C2530], v60);
    swift_unknownObjectRetain();
    v44 = sub_1A3C5A374();
    sub_1A4308C80(v23, 0, v44 & 1, v43);
    sub_1A4001F38(0);
    v46 = v43 + *(v45 + 36);
    *v46 = 0x3FF0000000000000;
    *(v46 + 4) = 0;
    sub_1A524BC74();
    sub_1A52481F4();
    swift_unknownObjectRelease();
    sub_1A4001F10(0);
    v48 = (v43 + *(v47 + 36));
    v49 = v75;
    *v48 = v74;
    v48[1] = v49;
    v48[2] = v76;
    sub_1A40055EC(0, &qword_1EB1303D8, sub_1A4001F10, sub_1A3FA95D4);
    *(v43 + *(v50 + 36)) = 256;
    sub_1A40014D4(v26, v31, sub_1A4001E7C);
    v51 = 0;
    v52 = v42;
  }

  else
  {
    v51 = 1;
    v52 = v61;
  }

  v53 = *(v65 + 56);
  v61 = v31;
  v53(v31, v51, 1, v52);
  v60 = sub_1A5249584();
  v69 = 0;
  v54 = (v66 + *(v59 + 20));
  v55 = v54[1];
  v56 = v54[2];
  v71 = *v54;
  v72 = v55;
  v73 = v56;
  MEMORY[0x1A5906C60](v70, v38);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A4003A68(uint64_t a1)
{
  v2 = type metadata accessor for PersonSuggestionBanner(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524CCB4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1A4001438(a1, v5, type metadata accessor for PersonSuggestionBanner);
  sub_1A524CC54();
  v10 = sub_1A524CC44();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_1A40014D4(v5, v12 + v11, type metadata accessor for PersonSuggestionBanner);
  sub_1A3D4D930(0, 0, v8, &unk_1A53116C0, v12);

  return result;
}

uint64_t sub_1A4003C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A4003CD8, v6, v5);
}

uint64_t sub_1A4003CD8()
{
  v1 = *(v0 + 48);
  v2 = v1 + *(type metadata accessor for PersonSuggestionBanner(0) + 20);
  v3 = *(v2 + 8);
  *(v0 + 16) = *v2;
  *(v0 + 24) = v3;
  sub_1A4006FD4(0, &qword_1EB130478, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60]();
  v4 = *(v0 + 40);
  *(v0 + 80) = v4;
  v7 = (*(*v4 + 376) + **(*v4 + 376));
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1A4003E6C;

  return v7();
}

uint64_t sub_1A4003E6C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A4003F88;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A3E8D568;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A4003F88()
{

  if (qword_1EB1A0B90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_1A5246F24();
  __swift_project_value_buffer(v2, qword_1EB1A0B98);
  v3 = v1;
  v4 = sub_1A5246F04();
  v5 = sub_1A524D244();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 96);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1A3C1C000, v4, v5, "Person suggestion primary action failed %@", v8, 0xCu);
    sub_1A4006F74(v9, sub_1A3D3F118);
    MEMORY[0x1A590EEC0](v9, -1, -1);
    MEMORY[0x1A590EEC0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1A4004144@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A524B544();
  *a1 = result;
  return result;
}

uint64_t sub_1A4004180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v4 = sub_1A5248A14();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E42C88(255);
  v7 = sub_1A5248804();
  v86 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v83 - v11;
  sub_1A3FA95D4(255);
  v12 = sub_1A5248804();
  v84 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v87 = &v83 - v16;
  v90 = v17;
  v18 = sub_1A5249754();
  v88 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v83 - v19;
  v91 = v21;
  v94 = v7;
  v89 = sub_1A5249754();
  v93 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v83 - v22;
  v23 = MEMORY[0x1E6981E60];
  if (*v2)
  {
    if (*v2 == 1)
    {
      v24 = *(a1 + 24);
      sub_1A3FA9580();
      sub_1A524B194();
      v86 = MEMORY[0x1E697DDB0];
      v25 = sub_1A40064D4(&qword_1EB1245F8, sub_1A3FA95D4, MEMORY[0x1E697DDB0]);
      v106 = v24;
      v107 = v25;
      v85 = MEMORY[0x1E697E858];
      v26 = v90;
      WitnessTable = swift_getWitnessTable();
      v28 = v84;
      v29 = *(v84 + 16);
      v30 = v87;
      v29(v87, v14, v26);
      v31 = *(v28 + 8);
      v31(v14, v26);
      v29(v14, v30, v26);
      v32 = MEMORY[0x1E6981E60];
      sub_1A3DF4890(v14, MEMORY[0x1E6981E70], v26, MEMORY[0x1E6981E60], WitnessTable);
      v104 = v32;
      v105 = WitnessTable;
      v33 = v91;
      v34 = swift_getWitnessTable();
      v35 = sub_1A40064D4(&qword_1EB128A00, sub_1A3E42C88, v86);
      v102 = v24;
      v103 = v35;
      v36 = v94;
      v37 = swift_getWitnessTable();
      v38 = v92;
      sub_1A3DF4798(v20, v33, v36, v34, v37);
      (*(v88 + 8))(v20, v33);
      v31(v14, v26);
      v31(v87, v26);
      v39 = v38;
      v40 = MEMORY[0x1E6981E60];
    }

    else
    {
      v50 = *(v4 + 20);
      v51 = *MEMORY[0x1E697F468];
      v52 = sub_1A52494A4();
      (*(*(v52 - 8) + 104))(&v6[v50], v51, v52);
      __asm { FMOV            V0.2D, #5.0 }

      *v6 = _Q0;
      v58 = *(a1 + 24);
      sub_1A40064D4(&qword_1EB128080, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
      sub_1A524B194();
      sub_1A4006F74(v6, MEMORY[0x1E697EAF0]);
      v59 = MEMORY[0x1E697DDB0];
      v60 = sub_1A40064D4(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
      v120 = v58;
      v121 = v60;
      v61 = v94;
      v88 = swift_getWitnessTable();
      v62 = v86;
      v63 = *(v86 + 16);
      v64 = v85;
      v63(v85, v9, v61);
      v65 = *(v62 + 8);
      v65(v9, v61);
      v63(v9, v64, v61);
      v66 = v61;
      v67 = sub_1A40064D4(&qword_1EB1245F8, sub_1A3FA95D4, v59);
      v68 = v58;
      v118 = v58;
      v119 = v67;
      v40 = MEMORY[0x1E6981E60];
      v69 = swift_getWitnessTable();
      v116 = v40;
      v117 = v69;
      v70 = v91;
      v71 = swift_getWitnessTable();
      v72 = v92;
      sub_1A3DF4890(v9, v70, v66, v71, v88);
      v73 = v9;
      v39 = v72;
      v65(v73, v66);
      v65(v64, v66);
      v24 = v68;
    }
  }

  else
  {
    v24 = *(a1 + 24);
    v41 = MEMORY[0x1E697DDB0];
    v42 = sub_1A40064D4(&qword_1EB1245F8, sub_1A3FA95D4, MEMORY[0x1E697DDB0]);
    v100 = v24;
    v101 = v42;
    v43 = v90;
    v44 = swift_getWitnessTable();
    sub_1A3DF4798(v44, MEMORY[0x1E6981E70], v43, v23, v44);
    v98 = v23;
    v99 = v44;
    v45 = v91;
    v46 = swift_getWitnessTable();
    v47 = sub_1A40064D4(&qword_1EB128A00, sub_1A3E42C88, v41);
    v96 = v24;
    v97 = v47;
    v48 = v94;
    v49 = swift_getWitnessTable();
    v39 = v92;
    sub_1A3DF4798(v20, v45, v48, v46, v49);
    v40 = v23;
    (*(v88 + 8))(v20, v45);
  }

  v74 = MEMORY[0x1E697DDB0];
  v75 = sub_1A40064D4(&qword_1EB1245F8, sub_1A3FA95D4, MEMORY[0x1E697DDB0]);
  v114 = v24;
  v115 = v75;
  v76 = swift_getWitnessTable();
  v112 = v40;
  v113 = v76;
  v77 = swift_getWitnessTable();
  v78 = sub_1A40064D4(&qword_1EB128A00, sub_1A3E42C88, v74);
  v110 = v24;
  v111 = v78;
  v79 = swift_getWitnessTable();
  v108 = v77;
  v109 = v79;
  v80 = v89;
  swift_getWitnessTable();
  v81 = v93;
  (*(v93 + 16))(v95, v39, v80);
  return (*(v81 + 8))(v39, v80);
}

void sub_1A4004BF0(uint64_t a1@<X8>)
{
  v12[8] = a1;
  sub_1A40051FC(0);
  v12[6] = v1 - 8;
  MEMORY[0x1EEE9AC00](v1 - 8);
  v12[7] = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A40055B8(0);
  MEMORY[0x1EEE9AC00](v4);
  v12[5] = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v12[4] = v12 - v7;
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  type metadata accessor for PersonSuggestionBanner(0);
  sub_1A40064D4(&qword_1EB12F5A0, type metadata accessor for PersonSuggestionBanner, &unk_1A5311528);
  sub_1A3F96E7C();
}

uint64_t sub_1A4005108(uint64_t a1)
{
  v2 = sub_1A40069DC();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A4005154(uint64_t a1)
{
  v2 = sub_1A40069DC();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t sub_1A40051A0()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1A0B98);
  __swift_project_value_buffer(v0, qword_1EB1A0B98);
  v1 = *sub_1A4843F98();
  return sub_1A5246F34();
}

void sub_1A4005230(uint64_t a1)
{
  if (!qword_1EB130488)
  {
    sub_1A4005294(255);
    sub_1A400547C();
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB130488);
    }
  }
}

void sub_1A4005294(uint64_t a1)
{
  if (!qword_1EB130490)
  {
    sub_1A4005370(255, &qword_1EB130498, &type metadata for PersonBannerAvatarStyle, MEMORY[0x1E69E62F8]);
    type metadata accessor for PersonSuggestionBanner(255);
    sub_1A40053C0(&qword_1EB1304A0, MEMORY[0x1E69E6338]);
    sub_1A4005428();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB130490);
    }
  }
}

void sub_1A4005370(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A40053C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A4005370(255, &qword_1EB130498, &type metadata for PersonBannerAvatarStyle, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4005428()
{
  result = qword_1EB1304A8;
  if (!qword_1EB1304A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1304A8);
  }

  return result;
}

unint64_t sub_1A400547C()
{
  result = qword_1EB1304B0;
  if (!qword_1EB1304B0)
  {
    sub_1A4005294(255);
    sub_1A40064D4(&qword_1EB12F5A0, type metadata accessor for PersonSuggestionBanner, &unk_1A5311528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1304B0);
  }

  return result;
}

void sub_1A4005524(uint64_t a1)
{
  if (!qword_1EB1446F0)
  {
    sub_1A5249D94();
    sub_1A40064D4(&qword_1EB1304B8, MEMORY[0x1E697CA50], MEMORY[0x1E697CA48]);
    v1 = sub_1A52499B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1446F0);
    }
  }
}

void sub_1A40055EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4005660(uint64_t a1)
{
  if (!qword_1EB1304C8)
  {
    v2 = type metadata accessor for PersonSuggestionBanner(255);
    v3 = sub_1A40064D4(&qword_1EB12F5A0, type metadata accessor for PersonSuggestionBanner, &unk_1A5311528);
    v5 = type metadata accessor for PersonBannerPreview(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB1304C8);
    }
  }
}

double sub_1A40056F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for MockPersonSuggestionBannerModel(0);
  type metadata accessor for SyntheticPerson();
  v6 = SyntheticPerson.__allocating_init(name:)(0, 0);
  v7 = sub_1A3F29DC8(v6, 1, 0xD000000000000014, 0x80000001A53C2530, 0xD000000000000017, 0x80000001A53C24E0, 7562585, 0xE300000000000000, 0);
  sub_1A524CC54();

  v8 = sub_1A524CC44();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  v11 = sub_1A524CC44();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  type metadata accessor for LegacyPersonSuggestionBannerModel(0);
  sub_1A524B944();
  if (qword_1EB1A0B80 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for PersonSuggestionBanner.Style(0);
  v14 = __swift_project_value_buffer(v13, qword_1EB1EBA68);
  v15 = type metadata accessor for PersonSuggestionBanner(0);
  sub_1A4001438(v14, a3 + v15[6], type metadata accessor for PersonSuggestionBanner.Style);

  *a3 = swift_getKeyPath();
  sub_1A4006FD4(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v16 = a3 + v15[5];
  *v16 = v19;
  *(v16 + 8) = v20;
  v17 = (a3 + v15[7]);
  *v17 = a1;
  v17[1] = a2;

  return result;
}

double sub_1A400596C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for MockPersonSuggestionBannerModel(0);
  type metadata accessor for SyntheticPerson();
  v6 = SyntheticPerson.__allocating_init(name:)(0, 0);
  v7 = sub_1A3F29DC8(v6, 2, 0xD000000000000025, 0x80000001A53C2500, 0, 0, 0x776569766552, 0xE600000000000000, 0);
  sub_1A524CC54();

  v8 = sub_1A524CC44();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  v11 = sub_1A524CC44();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  type metadata accessor for LegacyPersonSuggestionBannerModel(0);
  sub_1A524B944();
  if (qword_1EB1A0B80 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for PersonSuggestionBanner.Style(0);
  v14 = __swift_project_value_buffer(v13, qword_1EB1EBA68);
  v15 = type metadata accessor for PersonSuggestionBanner(0);
  sub_1A4001438(v14, a3 + v15[6], type metadata accessor for PersonSuggestionBanner.Style);

  *a3 = swift_getKeyPath();
  sub_1A4006FD4(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v16 = a3 + v15[5];
  *v16 = v19;
  *(v16 + 8) = v20;
  v17 = (a3 + v15[7]);
  *v17 = a1;
  v17[1] = a2;

  return result;
}

double sub_1A4005BD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for MockPersonSuggestionBannerModel(0);
  type metadata accessor for SyntheticPerson();
  v6 = SyntheticPerson.__allocating_init(name:)(0, 0);
  v7 = sub_1A3F29DC8(v6, 0, 0xD000000000000011, 0x80000001A53C24C0, 0xD000000000000017, 0x80000001A53C24E0, 7562585, 0xE300000000000000, 0);
  sub_1A524CC54();

  v8 = sub_1A524CC44();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  v11 = sub_1A524CC44();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  type metadata accessor for LegacyPersonSuggestionBannerModel(0);
  sub_1A524B944();
  if (qword_1EB1A0B80 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for PersonSuggestionBanner.Style(0);
  v14 = __swift_project_value_buffer(v13, qword_1EB1EBA68);
  v15 = type metadata accessor for PersonSuggestionBanner(0);
  sub_1A4001438(v14, a3 + v15[6], type metadata accessor for PersonSuggestionBanner.Style);

  *a3 = swift_getKeyPath();
  sub_1A4006FD4(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v16 = a3 + v15[5];
  *v16 = v19;
  *(v16 + 8) = v20;
  v17 = (a3 + v15[7]);
  *v17 = a1;
  v17[1] = a2;

  return result;
}

void sub_1A4005E4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

__n128 sub_1A4005EB8@<Q0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for MockPersonSuggestionBannerModel(0);
  type metadata accessor for SyntheticPerson();
  v4 = SyntheticPerson.__allocating_init(name:)(0, 0);
  v5 = sub_1A3F29DC8(v4, v3, 0xD000000000000010, 0x80000001A53C24A0, 0x755320796D6D7544, 0xEE00656C74697462, 0x6D7269666E6F43, 0xE700000000000000, 0);
  sub_1A524CC54();

  v6 = sub_1A524CC44();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  v9 = sub_1A524CC44();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  type metadata accessor for LegacyPersonSuggestionBannerModel(0);
  sub_1A524B944();
  if (qword_1EB1A0B80 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for PersonSuggestionBanner.Style(0);
  v12 = __swift_project_value_buffer(v11, qword_1EB1EBA68);
  v13 = type metadata accessor for PersonSuggestionBanner(0);
  sub_1A4001438(v12, a2 + v13[6], type metadata accessor for PersonSuggestionBanner.Style);

  *a2 = swift_getKeyPath();
  sub_1A4006FD4(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v14 = a2 + v13[5];
  *v14 = v17;
  result = v18;
  *(v14 + 8) = v18;
  v16 = (a2 + v13[7]);
  *v16 = PXDisplayCollectionDetailedCountsMake;
  v16[1] = 0;
  return result;
}

void sub_1A4006138(uint64_t a1)
{
  if (!qword_1EB1304D8)
  {
    sub_1A40055B8(255);
    sub_1A40051FC(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB1304D8);
    }
  }
}

unint64_t sub_1A40061BC()
{
  result = qword_1EB1304E0;
  if (!qword_1EB1304E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1304E0);
  }

  return result;
}

unint64_t sub_1A4006264()
{
  result = qword_1EB1304F0;
  if (!qword_1EB1304F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1304F0);
  }

  return result;
}

void sub_1A400630C(uint64_t a1)
{
  sub_1A4006FD4(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A4006FD4(319, &qword_1EB130478, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E6981948]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PersonSuggestionBanner.Style(319);
      if (v3 <= 0x3F)
      {
        sub_1A3C3637C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A4006448(uint64_t a1)
{
  sub_1A40014A0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1A40064D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4006550(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A40065D0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFD)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      if (v15 >= 3)
      {
        return v15 - 2;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1A4006754(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFD)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 2;
  }
}

unint64_t sub_1A40069DC()
{
  result = qword_1EB130508;
  if (!qword_1EB130508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130508);
  }

  return result;
}

double sub_1A4006A30@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 32);

  return result;
}

double sub_1A4006A3C()
{
  v1 = *(type metadata accessor for PersonSuggestionBanner(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A4003A68(v2);
}

void sub_1A4006A9C()
{
  v2 = *(v1 + 16);
  v3 = v2 + *(type metadata accessor for PersonSuggestionBanner(0) + 20);
  v4[1] = *v3;
  v5 = *(v3 + 8);
  sub_1A4006FD4(0, &qword_1EB130478, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](v4);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t objectdestroy_54Tm_0()
{
  v1 = type metadata accessor for PersonSuggestionBanner(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1A4006FD4(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A5247E04();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = v0 + v2 + *(v1 + 24);

  v5 = *(type metadata accessor for PersonSuggestionBanner.Style(0) + 24);
  v6 = sub_1A524BBF4();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v4 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1A4006D84()
{
  v1 = type metadata accessor for PersonSuggestionBanner(0);
  v2 = v1 - 8;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = (v3 + *(v1 + 20));
  v9 = *v4;
  v10 = *(v4 + 1);
  sub_1A4006FD4(0, &qword_1EB130478, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E6981948]);
  v5 = MEMORY[0x1A5906C60](&v8);
  (*(*v8 + 384))(v5);

  v6 = *(v3 + *(v2 + 36));
  LOBYTE(v9) = 0;
  return v6(&v9);
}

uint64_t sub_1A4006EAC()
{
  v2 = *(type metadata accessor for PersonSuggestionBanner(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A4003C40(v4, v5, v6, v0 + v3);
}

uint64_t sub_1A4006F74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4006FD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t ConcatenatingAssetsDataSource.Mode.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_1A40070CC@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id ConcatenatingAssetsDataSource.init(underlyingDataSources:mode:)(unint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = &v3[OBJC_IVAR___PXConcatenatingAssetsDataSource____lazy_storage___numberOfUnderlyingSections];
  *v4 = 0;
  v4[8] = 1;
  if (a1 >> 62)
  {
    v6 = a1;
    v7 = a2;
    v8 = sub_1A524E2B4();
    a2 = v7;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    *&v3[OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources] = a1;
    *&v3[OBJC_IVAR___PXConcatenatingAssetsDataSource_mode] = a2;
    v10.receiver = v3;
    v10.super_class = type metadata accessor for ConcatenatingAssetsDataSource(a1, a2);
    return objc_msgSendSuper2(&v10, sel_init);
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

id sub_1A40072A4(uint64_t a1, __n128 a2)
{
  v4 = *(v2 + OBJC_IVAR___PXConcatenatingAssetsDataSource_mode);
  if (v4 == 1)
  {
    v5 = *(v2 + OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources);
    v6 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 >> 62)
    {
      goto LABEL_40;
    }

    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_4;
  }

  if (v4)
  {
    result = sub_1A524EB44();
    __break(1u);
    return result;
  }

  v5 = *(v2 + OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources);
  if (v5 >> 62)
  {
    v14 = sub_1A524E2B4();
  }

  else
  {
    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = 0;
  v6 = 0;
  while (1)
  {
    if (v14 == v15)
    {
      return 0;
    }

    if ((v5 & 0xC000000000000001) == 0)
    {
      break;
    }

    v16 = MEMORY[0x1A59097F0](v15, v5, a2);
    if (__OFADD__(v15, 1))
    {
LABEL_29:
      __break(1u);
      return 0;
    }

LABEL_22:
    if (__OFSUB__(a1, v6))
    {
      goto LABEL_38;
    }

    v17 = v16;
    if (a1 - v6 < [v17 numberOfSections])
    {

      v20 = [v17 numberOfItemsInSection_];
      return v20;
    }

    v18 = [v17 numberOfSections];

    ++v15;
    v13 = __OFADD__(v6, v18);
    v6 += v18;
    if (v13)
    {
      goto LABEL_39;
    }
  }

  if (v15 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v5 + 8 * v15 + 32);
    if (__OFADD__(v15, 1))
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  v7 = sub_1A524E2B4();
LABEL_4:
  v8 = 0;
  v9 = 0;
  while (v7 != v8)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1A59097F0](v8, v5, a2);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        goto LABEL_35;
      }

      v10 = *(v5 + 8 * v8 + 32);
    }

    v11 = v10;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v12 = [v10 numberOfItemsInSection_];

    ++v8;
    v13 = __OFADD__(v9, v12);
    v9 += v12;
    if (v13)
    {
      goto LABEL_36;
    }
  }

  return v9;
}

unint64_t sub_1A4007564(__n128 a1)
{
  v2 = *(v1 + OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:
    LODWORD(v12) = 0;
    v11 = 61;
    result = sub_1A524E6E4();
    __break(1u);
    goto LABEL_14;
  }

  v3 = sub_1A524E2B4();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v4 = __OFSUB__(v3, 1);
  result = v3 - 1;
  if (v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v6 = MEMORY[0x1A59097F0](result, v2);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v6 = *(v2 + 8 * result + 32);
LABEL_8:
  v7 = v6;
  v8 = [v6 startingAssetReference];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1A4008C04(v8);
  }

  else
  {

    return 0;
  }

  return v10;
}

id sub_1A4007A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A40087BC(a2, a3, &v9);
  if (v9)
  {
    v8[0] = v10;
    v8[1] = v11;
    v4 = [v9 assetReferenceAtItemIndexPath_];
    v5 = sub_1A4008C04(v4);
    sub_1A4009068(&v9, v6);

    return v5;
  }

  else
  {
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD000000000000012, 0x80000001A53C2610);
    type metadata accessor for PXSimpleIndexPath(0);
    sub_1A524E624();
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

id sub_1A4007BD8(void *a1)
{
  v2 = a1;
  [a1 indexPath];
  if (v13 == [v1 identifier])
  {
    v3 = v2;
  }

  else
  {
    v4 = *&v1[OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources];
    if (v4 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
    {
      for (j = 0; ; ++j)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1A59097F0](j, v4);
        }

        else
        {
          if (j >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v7 = *(v4 + 8 * j + 32);
        }

        v8 = v7;
        v9 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        v10 = [v7 assetReferenceForAssetReference_];
        if (v10)
        {
          v11 = v10;
          v2 = sub_1A4008C04(v10);

          return v2;
        }

        if (v9 == i)
        {
          return 0;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    return 0;
  }

  return v2;
}

id sub_1A4007D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5, uint64_t a6)
{
  sub_1A40087BC(a2, a3, &v12);
  if (v12)
  {
    v7 = *a5;
    v11[0] = v13;
    v11[1] = v14;
    v8 = [v12 v7];
    sub_1A4009068(&v12, v9);
    return v8;
  }

  else
  {
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD000000000000012, 0x80000001A53C2610);
    type metadata accessor for PXSimpleIndexPath(0);
    sub_1A524E624();
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

id sub_1A4007ED8(void *a1, uint64_t a2, uint64_t *a3, const char **a4, uint64_t a5)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v11 = a1;
  v12 = sub_1A4007D9C(v7, v8, v9, v10, a4, a5);

  return v12;
}

id sub_1A4007F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A40087BC(a2, a3, &v8);
  if (v8)
  {
    v7[0] = v9;
    v7[1] = v10;
    v3 = [v8 assetAtItemIndexPath_];
    sub_1A4009068(&v8, v4);
    return v3;
  }

  else
  {
    sub_1A524E404();

    v6 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v6);

    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

id sub_1A400807C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v8 = *(v5 + OBJC_IVAR___PXConcatenatingAssetsDataSource_mode);
  if (v8 == 1)
  {
    *&v22[0] = MEMORY[0x1E69E7CC0];
    v9 = *(v5 + OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources);
    if (v9 >> 62)
    {
      v10 = sub_1A524E2B4();
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v8 = (v9 & 0xFFFFFFFFFFFFFF8);
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    if (v10 >= 1)
    {
      v11 = 0;
      v19 = v10;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1A59097F0](v11, v9, a5);
        }

        else
        {
          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        if ([v12 numberOfSections] <= a2)
        {
        }

        else
        {
          v23 = a1;
          *&v24 = a2;
          *(&v24 + 1) = a3;
          *&v25 = a4;
          v14 = [v13 assetsInSectionIndexPath_];
          v15 = swift_unknownObjectRetain();
          MEMORY[0x1A5907D70](v15);
          if (*((*&v22[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v22[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1A524CA74();
          }

          sub_1A524CAE4();
          swift_unknownObjectRelease();

          v10 = v19;
        }

        ++v11;
      }

      while (v10 != v11);
LABEL_19:
      sub_1A40091D8();
      sub_1A524CA14();

      PXDisplayAssetFetchResultFromFetchResults();
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v8)
  {
LABEL_21:
    v23 = v8;
    sub_1A524EB44();
    __break(1u);
    goto LABEL_22;
  }

  sub_1A40087BC(a2, a3, &v23);
  if (v23)
  {
    v22[0] = v24;
    v22[1] = v25;
    v16 = [v23 assetsInSectionIndexPath_];
    sub_1A4009068(&v23, v17);
    return v16;
  }

LABEL_22:
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000012, 0x80000001A53C2610);
  type metadata accessor for PXSimpleIndexPath(0);
  sub_1A524E624();
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

id sub_1A40083A8(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  v9 = a1;
  v10 = a4(v5, v6, v7, v8);

  return v10;
}

uint64_t sub_1A4008420(__n128 a1)
{
  v2 = (v1 + OBJC_IVAR___PXConcatenatingAssetsDataSource____lazy_storage___numberOfUnderlyingSections);
  if (*(v1 + OBJC_IVAR___PXConcatenatingAssetsDataSource____lazy_storage___numberOfUnderlyingSections + 8) != 1)
  {
    return *v2;
  }

  v3 = *(v1 + OBJC_IVAR___PXConcatenatingAssetsDataSource_mode);
  if (v3 == 1)
  {
    v4 = *(v1 + OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources);
    if (v4 >> 62)
    {
      v5 = sub_1A524E2B4();
      if (v5)
      {
LABEL_5:
        v39 = v2;
        v41 = MEMORY[0x1E69E7CC0];
        sub_1A3FD1D1C(0, v5 & ~(v5 >> 63), 0);
        if ((v5 & 0x8000000000000000) == 0)
        {
          v6 = 0;
          v7 = v41;
          do
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v8 = MEMORY[0x1A59097F0](v6, v4);
            }

            else
            {
              v8 = *(v4 + 8 * v6 + 32);
            }

            v9 = v8;
            v10 = [v8 numberOfSections];

            v12 = *(v41 + 16);
            v11 = *(v41 + 24);
            v13 = v12 + 1;
            if (v12 >= v11 >> 1)
            {
              sub_1A3FD1D1C((v11 > 1), v12 + 1, 1);
            }

            ++v6;
            *(v41 + 16) = v13;
            *(v41 + 8 * v12 + 32) = v10;
          }

          while (v5 != v6);
          v2 = v39;
LABEL_29:
          v14 = *(v7 + 32);
          v25 = v13 - 1;
          if (v13 != 1)
          {
            if (v13 < 5)
            {
              v26 = 1;
              goto LABEL_35;
            }

            v26 = v25 & 0xFFFFFFFFFFFFFFFCLL | 1;
            v27 = vdupq_n_s64(v14);
            v28 = (v7 + 56);
            v29 = v25 & 0xFFFFFFFFFFFFFFFCLL;
            v30 = v27;
            do
            {
              v27 = vbslq_s8(vcgtq_s64(v27, v28[-1]), v27, v28[-1]);
              v30 = vbslq_s8(vcgtq_s64(v30, *v28), v30, *v28);
              v28 += 2;
              v29 -= 4;
            }

            while (v29);
            v31 = vbslq_s8(vcgtq_s64(v27, v30), v27, v30);
            v32 = vextq_s8(v31, v31, 8uLL).u64[0];
            v14 = vbsl_s8(vcgtd_s64(v31.i64[0], v32), *v31.i8, v32);
            if (v25 != (v25 & 0xFFFFFFFFFFFFFFFCLL))
            {
LABEL_35:
              v33 = v13 - v26;
              v34 = 8 * v26 + 32;
              do
              {
                if (v14 <= *(v7 + v34))
                {
                  v14 = *(v7 + v34);
                }

                v34 += 8;
                --v33;
              }

              while (v33);
            }
          }

LABEL_47:

          *v2 = v14;
          v2[8] = 0;
          return v14;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_5;
      }
    }

    v7 = MEMORY[0x1E69E7CC0];
    v13 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v13)
    {
      goto LABEL_29;
    }

LABEL_46:
    v14 = 0;
    goto LABEL_47;
  }

  if (!v3)
  {
    v15 = *(v1 + OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources);
    if (v15 >> 62)
    {
      v16 = sub_1A524E2B4();
      if (v16)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_18:
        v40 = v2;
        v42 = MEMORY[0x1E69E7CC0];
        sub_1A3FD1D1C(0, v16 & ~(v16 >> 63), 0);
        if (v16 < 0)
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v17 = 0;
        v18 = v42;
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1A59097F0](v17, v15);
          }

          else
          {
            v19 = *(v15 + 8 * v17 + 32);
          }

          v20 = v19;
          v21 = [v19 numberOfSections];

          v23 = *(v42 + 16);
          v22 = *(v42 + 24);
          v24 = v23 + 1;
          if (v23 >= v22 >> 1)
          {
            sub_1A3FD1D1C((v22 > 1), v23 + 1, 1);
          }

          ++v17;
          *(v42 + 16) = v24;
          *(v42 + 8 * v23 + 32) = v21;
        }

        while (v16 != v17);
        v2 = v40;
        goto LABEL_42;
      }
    }

    v18 = MEMORY[0x1E69E7CC0];
    v24 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v24)
    {
      goto LABEL_46;
    }

LABEL_42:
    v14 = 0;
    v35 = 32;
    while (1)
    {
      v36 = *(v18 + v35);
      v37 = __OFADD__(v14, v36);
      v14 += v36;
      if (v37)
      {
        break;
      }

      v35 += 8;
      if (!--v24)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_52:
  result = sub_1A524EB44();
  __break(1u);
  return result;
}

void sub_1A40087BC(uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v9 = *(v5 + OBJC_IVAR___PXConcatenatingAssetsDataSource_mode);
  if (v9 == 1)
  {
    v11 = sub_1A52403B4();
    v12 = *(v5 + OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources);
    v13 = v12 >> 62;
    if (v11 == a3)
    {
      if (v13)
      {
        v14 = sub_1A524E2B4();
        if (v14)
        {
LABEL_5:
          v15 = 0;
          v5 = v12 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v16 = MEMORY[0x1A59097F0](v15, v12);
              v6 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
LABEL_14:
                __break(1u);
                goto LABEL_15;
              }
            }

            else
            {
              if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_57:
                __break(1u);
                goto LABEL_58;
              }

              v16 = *(v12 + 8 * v15 + 32);
              v6 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                goto LABEL_14;
              }
            }

            v17 = v16;
            if ([v17 numberOfSections] > a2)
            {
              break;
            }

            ++v15;
            if (v6 == v14)
            {
              goto LABEL_60;
            }
          }

          v30 = a3;
LABEL_50:
          v29 = [v17 identifier];

          v31 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_61;
        }
      }

      else
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_5;
        }
      }

LABEL_60:
      v17 = 0;
      v29 = 0;
      a2 = 0;
      v30 = 0;
      v31 = 0;
LABEL_61:
      *a4 = v17;
      *(a4 + 1) = v29;
      *(a4 + 2) = a2;
      *(a4 + 3) = v30;
      *(a4 + 4) = v31;
      return;
    }

LABEL_31:
    v32 = a4;
    v6 = v12 & 0xFFFFFFFFFFFFFF8;
    if (v13)
    {
      v23 = sub_1A524E2B4();
    }

    else
    {
      v23 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = 0;
    v25 = 0;
    while (v23 != v24)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1A59097F0](v24, v12);
        if (__OFADD__(v24, 1))
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v24 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v26 = *(v12 + 8 * v24 + 32);
        if (__OFADD__(v24, 1))
        {
LABEL_45:
          __break(1u);
          break;
        }
      }

      v17 = v26;
      v27 = [v17 numberOfItemsInSection_];
      if (__OFSUB__(a3, v25))
      {
        goto LABEL_55;
      }

      v28 = v27;
      if (a3 - v25 < v27)
      {
        v30 = a3 - v25;
        goto LABEL_50;
      }

      ++v24;
      v22 = __OFADD__(v25, v28);
      v25 += v28;
      if (v22)
      {
        goto LABEL_56;
      }
    }

LABEL_46:
    v17 = 0;
    v29 = 0;
    a2 = 0;
    v30 = 0;
    v31 = 0;
    a4 = v32;
    goto LABEL_61;
  }

LABEL_15:
  if (!v9)
  {
    v12 = *(v5 + OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources);
    v32 = a4;
    v6 = v12 & 0xFFFFFFFFFFFFFF8;
    if (v12 >> 62)
    {
LABEL_58:
      v18 = sub_1A524E2B4();
    }

    else
    {
      v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = 0;
    a4 = 0;
    while (v18 != v19)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1A59097F0](v19, v12);
        if (__OFADD__(v19, 1))
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      else
      {
        if (v19 >= *(v6 + 16))
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v20 = *(v12 + 8 * v19 + 32);
        if (__OFADD__(v19, 1))
        {
          goto LABEL_30;
        }
      }

      if (__OFSUB__(a2, a4))
      {
        goto LABEL_52;
      }

      v17 = v20;
      if (a2 - a4 < [v17 numberOfSections])
      {
        a2 -= a4;
        a4 = v32;
        v30 = a3;
        goto LABEL_50;
      }

      v21 = [v17 numberOfSections];

      ++v19;
      v22 = __OFADD__(a4, v21);
      a4 = &v21[a4];
      if (v22)
      {
        goto LABEL_53;
      }
    }

    goto LABEL_46;
  }

  sub_1A524EB44();
  __break(1u);
}

id ConcatenatingAssetsDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConcatenatingAssetsDataSource.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ConcatenatingAssetsDataSource(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1A4008C04(void *a1)
{
  [a1 indexPath];
  v34 = v36;
  [a1 indexPath];
  v3 = *&v1[OBJC_IVAR___PXConcatenatingAssetsDataSource_mode];
  if (v3 == 1)
  {
    v4 = *&v1[OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources];
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_40:
      v6 = sub_1A524E2B4();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    v8 = 0;
    while (v6 != v7)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1A59097F0](v7, v4);
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_36;
        }

        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      [a1 indexPath];
      if (v35 == [v10 identifier])
      {
        v20 = [v1 identifier];
        v21 = v37 + v8;
        if (!__OFADD__(v37, v8))
        {
          v22 = v20;

          goto LABEL_33;
        }

        __break(1u);
        goto LABEL_43;
      }

      v11 = [v10 numberOfItemsInSection_];

      ++v7;
      v12 = __OFADD__(v8, v11);
      v8 += v11;
      if (v12)
      {
        goto LABEL_38;
      }
    }

LABEL_44:
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD00000000000003ALL, 0x80000001A53C27D0);
    v30 = [a1 description];
    v31 = sub_1A524C674();
    v33 = v32;

    MEMORY[0x1A5907B60](v31, v33);

    sub_1A524E6E4();
    __break(1u);
    goto LABEL_45;
  }

  if (!v3)
  {
    v4 = *&v1[OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources];
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
      v13 = sub_1A524E2B4();
    }

    else
    {
      v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0;
    v15 = 0;
    while (v13 != v14)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1A59097F0](v14, v4);
      }

      else
      {
        if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v16 = *(v4 + 8 * v14 + 32);
      }

      v17 = v16;
      if (__OFADD__(v14, 1))
      {
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
        goto LABEL_40;
      }

      [a1 indexPath];
      v18 = v17;
      if (v35 == [v18 identifier])
      {

        v23 = [v1 identifier];
        v34 = v36 + v15;
        if (__OFADD__(v36, v15))
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v22 = v23;

        v21 = v37;
LABEL_33:
        v24 = [a1 sectionObject];
        v25 = [a1 itemObject];
        v26 = [a1 subitemObject];
        v27 = objc_allocWithZone(off_1E7721490);
        v35 = v22;
        v36 = v34;
        v37 = v21;
        v38 = 0x7FFFFFFFFFFFFFFFLL;
        v28 = [v27 initWithSectionObject:v24 itemObject:v25 subitemObject:v26 indexPath:&v35];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v28;
      }

      v19 = [v18 numberOfSections];

      ++v14;
      v12 = __OFADD__(v15, v19);
      v15 += v19;
      if (v12)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_44;
  }

LABEL_45:
  result = sub_1A524EB44();
  __break(1u);
  return result;
}

uint64_t sub_1A4009068(uint64_t a1, uint64_t a2)
{
  sub_1A40090C4(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A40090C4(uint64_t a1, uint64_t a2)
{
  if (!qword_1EB130528)
  {
    sub_1A400911C(255, a2);
    v2 = sub_1A524DF24();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB130528);
    }
  }
}

void sub_1A400911C(uint64_t a1, uint64_t a2)
{
  if (!qword_1EB130530)
  {
    sub_1A400918C(255, a2);
    type metadata accessor for PXSimpleIndexPath(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB130530);
    }
  }
}

unint64_t sub_1A400918C(uint64_t a1, uint64_t a2)
{
  result = qword_1EB126A20;
  if (!qword_1EB126A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126A20);
  }

  return result;
}

unint64_t sub_1A40091D8()
{
  result = qword_1EB120750;
  if (!qword_1EB120750)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB120750);
  }

  return result;
}

unint64_t sub_1A4009240()
{
  result = qword_1EB130538;
  if (!qword_1EB130538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130538);
  }

  return result;
}

void sub_1A40092D0()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B668);
  __swift_project_value_buffer(v0, qword_1EB15B668);
  sub_1A3C3335C();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4009358()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E94();
  __swift_allocate_value_buffer(v4, qword_1EB170778);
  __swift_project_value_buffer(v4, qword_1EB170778);
  if (qword_1EB15B660 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB15B668);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1A5246E64();
}

id sub_1A4009494(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5246EA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5246E54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  result = 0;
  if (!*(a2 + 24))
  {
    v41 = v5;
    v42 = v4;
    v19 = [objc_opt_self() px:a1 searchAssetFetchOptionsForPhotoLibrary:?];
    v20 = [objc_allocWithZone(MEMORY[0x1E6978AF8]) initWithFetchOptions_];

    v43 = v20;
    [v20 setIdentifier_];
    if (qword_1EB170770 != -1)
    {
      swift_once();
    }

    v21 = sub_1A5246E94();
    __swift_project_value_buffer(v21, qword_1EB170778);
    sub_1A5246E44();
    v22 = sub_1A5246E84();
    v23 = sub_1A524D654();
    if (sub_1A524DEC4())
    {
      v24 = swift_slowAlloc();
      v40 = v7;
      v25 = v9;
      v26 = v24;
      *v24 = 0;
      v27 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v22, v23, v27, "SearchCollectionsSectionFetch", "", v26, 2u);
      v28 = v26;
      v9 = v25;
      v7 = v40;
      MEMORY[0x1A590EEC0](v28, -1, -1);
    }

    (*(v9 + 16))(v14, v17, v8);
    sub_1A5246ED4();
    swift_allocObject();
    sub_1A5246EC4();
    v31 = *(v9 + 8);
    v29 = (v9 + 8);
    v30 = v31;
    v31(v17, v8);
    v32 = [objc_opt_self() transientAssetCollectionWithOptions_];
    v33 = sub_1A5246E84();
    sub_1A5246EB4();
    v34 = sub_1A524D644();
    if (sub_1A524DEC4())
    {
      v40 = v29;

      sub_1A5246EE4();

      v36 = v41;
      v35 = v42;
      if ((*(v41 + 88))(v7, v42) == *MEMORY[0x1E69E93E8])
      {
        v37 = "[Error] Interval already ended";
      }

      else
      {
        (*(v36 + 8))(v7, v35);
        v37 = "";
      }

      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v33, v34, v39, "SearchCollectionsSectionFetch", v37, v38, 2u);
      MEMORY[0x1A590EEC0](v38, -1, -1);
    }

    v30(v11, v8);
    return v32;
  }

  return result;
}

id sub_1A4009928(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5246EA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5246E54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  result = 0;
  if (!*(a2 + 24))
  {
    v45 = v7;
    v46 = v5;
    v19 = [objc_opt_self() px:a1 searchAssetFetchOptionsForPhotoLibrary:?];
    v20 = [objc_allocWithZone(MEMORY[0x1E6978AF8]) initWithFetchOptions_];

    sub_1A3C38BD4(0xD000000000000010);
    v21 = sub_1A524C634();

    [v20 setTitle_];

    v47 = v20;
    [v20 setIdentifier_];
    if (qword_1EB170770 != -1)
    {
      swift_once();
    }

    v22 = sub_1A5246E94();
    v23 = __swift_project_value_buffer(v22, qword_1EB170778);
    sub_1A5246E44();
    v24 = sub_1A5246E84();
    v25 = sub_1A524D654();
    if (sub_1A524DEC4())
    {
      v26 = swift_slowAlloc();
      v44 = v23;
      v27 = v11;
      v28 = v4;
      v29 = v9;
      v30 = v26;
      *v26 = 0;
      v31 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v24, v25, v31, "SearchTopResultsSectionFetch", "", v30, 2u);
      v32 = v30;
      v9 = v29;
      v4 = v28;
      v11 = v27;
      MEMORY[0x1A590EEC0](v32, -1, -1);
    }

    (*(v9 + 16))(v14, v17, v8);
    sub_1A5246ED4();
    swift_allocObject();
    sub_1A5246EC4();
    v35 = *(v9 + 8);
    v33 = v9 + 8;
    v34 = v35;
    v35(v17, v8);
    v36 = [objc_opt_self() transientAssetCollectionWithOptions_];
    v37 = sub_1A5246E84();
    sub_1A5246EB4();
    v38 = sub_1A524D644();
    if (sub_1A524DEC4())
    {
      v44 = v33;

      v39 = v45;
      sub_1A5246EE4();

      v40 = v46;
      if ((*(v46 + 88))(v39, v4) == *MEMORY[0x1E69E93E8])
      {
        v41 = "[Error] Interval already ended";
      }

      else
      {
        (*(v40 + 8))(v39, v4);
        v41 = "";
      }

      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v37, v38, v43, "SearchTopResultsSectionFetch", v41, v42, 2u);
      MEMORY[0x1A590EEC0](v42, -1, -1);
    }

    v34(v11, v8);
    return v36;
  }

  return result;
}

void *sub_1A4009E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5246EA4();
  v67 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v66 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5246E54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v63 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v63 - v16;
  sub_1A3C451FC(a2, &v73);
  if (v75)
  {
    sub_1A3C34400(0, &qword_1EB129AD0, &protocol descriptor for LemonadeSearchableContainer);
    sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
    if (swift_dynamicCast())
    {
      return v72;
    }
  }

  else
  {
    sub_1A3C2CE9C(&v73);
  }

  v19 = [objc_opt_self() px:a1 searchAssetFetchOptionsForPhotoLibrary:?];
  sub_1A3C451FC(a2, &v73);
  v20 = v75;
  v69 = v19;
  v70 = v11;
  v65 = v6;
  if (v75)
  {
    v21 = v76;
    __swift_project_boxed_opaque_existential_1(&v73, v75);
    v22 = (*(v21 + 48))(v19, v20, v21);
    __swift_destroy_boxed_opaque_existential_0(&v73);
    v23 = v22;
  }

  else
  {
    sub_1A3C2CE9C(&v73);
    if (a3)
    {

      sub_1A4949A2C(&v73);
      v46 = v73;
      if (v74)
      {
        v68 = v73;
        v47 = [objc_opt_self() fetchAssetsWithOptions_];
        v48 = qword_1EB15B660;
        v24 = v47;
        if (v48 != -1)
        {
          swift_once();
        }

        v49 = sub_1A5246F24();
        __swift_project_value_buffer(v49, qword_1EB15B668);
        v50 = v68;
        v51 = v68;
        v52 = sub_1A5246F04();
        v53 = sub_1A524D244();
        sub_1A400B3A8(v50);
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v71 = v50;
          v72 = v64;
          *v54 = 136315138;
          v55 = v50;
          sub_1A3C34400(0, &qword_1EB126160, MEMORY[0x1E69E7280]);
          v56 = sub_1A524C714();
          v63[3] = v53;
          sub_1A3C2EF94(v56, v57, &v72);
        }

        sub_1A400B3A8(v50);
        goto LABEL_8;
      }

      v23 = v46;
    }

    else
    {
      v23 = [objc_opt_self() fetchAssetsWithOptions_];
    }
  }

  v24 = v23;
LABEL_8:
  v25 = [objc_allocWithZone(MEMORY[0x1E6978AF8]) initWithAssetFetchResult_];
  v68 = v24;

  v26 = sub_1A524C634();
  v27 = PXLocalizedString(v26);

  if (!v27)
  {
    sub_1A524C674();
    v27 = sub_1A524C634();
  }

  [v25 setTitle_];

  [v25 setIdentifier_];
  if (qword_1EB170770 != -1)
  {
    swift_once();
  }

  v28 = sub_1A5246E94();
  __swift_project_value_buffer(v28, qword_1EB170778);
  sub_1A5246E44();
  v29 = sub_1A5246E84();
  v30 = sub_1A524D654();
  if (sub_1A524DEC4())
  {
    v31 = v8;
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v29, v30, v33, "SearchAllResultsSectionFetch", "", v32, 2u);
    v34 = v32;
    v8 = v31;
    MEMORY[0x1A590EEC0](v34, -1, -1);
  }

  (*(v9 + 16))(v14, v17, v8);
  sub_1A5246ED4();
  swift_allocObject();
  sub_1A5246EC4();
  v37 = *(v9 + 8);
  v36 = v9 + 8;
  v35 = v37;
  v37(v17, v8);
  v18 = [objc_opt_self() transientAssetCollectionWithOptions_];
  v38 = sub_1A5246E84();
  v39 = v70;
  sub_1A5246EB4();
  v40 = sub_1A524D644();
  if (sub_1A524DEC4())
  {
    v64 = v36;

    v41 = v66;
    sub_1A5246EE4();

    v42 = v67;
    v43 = v65;
    if ((*(v67 + 88))(v41, v65) == *MEMORY[0x1E69E93E8])
    {
      v44 = v8;
      v45 = "[Error] Interval already ended";
    }

    else
    {
      v58 = v41;
      v44 = v8;
      (*(v42 + 8))(v58, v43);
      v45 = "";
    }

    v59 = swift_slowAlloc();
    *v59 = 0;
    v60 = v70;
    v61 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v38, v40, v61, "SearchAllResultsSectionFetch", v45, v59, 2u);
    MEMORY[0x1A590EEC0](v59, -1, -1);

    v35(v60, v44);
  }

  else
  {

    v35(v39, v8);
  }

  return v18;
}

id sub_1A400A650(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53[4] = a3;
  v53[5] = a4;
  v53[6] = a5;
  v14 = MEMORY[0x1E69E7CC0];
  v50[0] = MEMORY[0x1E69E7CC0];
  v15 = a4;
  v16 = a5;
  result = a3;
  v18 = 0;
  v48 = a6;
LABEL_2:
  if (v18 <= 3)
  {
    v19 = 3;
  }

  else
  {
    v19 = v18;
  }

  while (v18 != 3)
  {
    if (v19 == v18)
    {
      __break(1u);
      return result;
    }

    v20 = v53[v18++ + 4];
    if (v20)
    {
      v21 = v20;
      MEMORY[0x1A5907D70]();
      if (*((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      result = sub_1A524CAE4();
      v14 = v50[0];
      goto LABEL_2;
    }
  }

  v22 = a7;
  sub_1A3C2947C(0, &qword_1EB120A30, &qword_1EB126AC0, 0x1E6978650, sub_1A3C52C70);
  swift_arrayDestroy();
  sub_1A3EC9890(v14, v23);

  v24 = *MEMORY[0x1E6978DA0];
  v25 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v26 = v24;
  v27 = sub_1A524CA14();

  v28 = sub_1A524C634();
  v29 = [v25 initWithObjects:v27 photoLibrary:a1 fetchType:v26 fetchPropertySets:0 identifier:v28 registerIfNeeded:0];

  sub_1A3C451FC(a2, v50);
  if (v51)
  {
    sub_1A3C34400(0, &qword_1EB129AD0, &protocol descriptor for LemonadeSearchableContainer);
    sub_1A3C52C70(0, &qword_1EB126CD0, 0x1E6978758);
    if (swift_dynamicCast())
    {
      v30 = v49;
      goto LABEL_16;
    }
  }

  else
  {
    sub_1A3C2CE9C(v50);
  }

  v30 = v16;
LABEL_16:
  v31 = [objc_allocWithZone(PXPhotosDataSourceConfiguration) initWithCollectionListFetchResult:v29 containerCollection:v30 options:8392705];
  sub_1A3C451FC(a2, v50);
  v32 = v51;
  if (v51)
  {
    v33 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    LOBYTE(v33) = (*(v33 + 24))(v32, v33);
    __swift_destroy_boxed_opaque_existential_0(v50);
    if (v33)
    {
      v34 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    sub_1A3C2CE9C(v50);
  }

  sub_1A3C6998C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1A52F9790;
  v36 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v37 = sub_1A524C634();
  v38 = [v36 initWithKey:v37 ascending:1];

  *(v35 + 32) = v38;
  sub_1A3C52C70(0, &qword_1EB126B60, 0x1E696AEB0);
  v34 = sub_1A524CA14();

LABEL_21:
  [v31 setSortDescriptors_];

  sub_1A3C451FC(a2, v50);
  v39 = v51;
  if (v51)
  {
    v40 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    LOBYTE(v40) = (*(v40 + 24))(v39, v40);
    __swift_destroy_boxed_opaque_existential_0(v50);
    if (v40)
    {
      v41 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    sub_1A3C2CE9C(v50);
  }

  v41 = 1;
LABEL_26:
  [v31 setReverseSortOrder_];
  v42 = [objc_opt_self() defaultFilterStateForContainerCollection:v30 photoLibrary:a1];
  v43 = [v42 predicateForUseCase_];
  [v31 setFilterPredicate_];

  v44 = [objc_allocWithZone(PXPhotosDataSource) initWithPhotosDataSourceConfiguration_];
  if (*(v48 + 16) || *(v22 + 16))
  {
    sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
    sub_1A3ECE164(0, &qword_1EB120B48, MEMORY[0x1E69E64E8]);
    sub_1A3D8E4B0();
    v45 = sub_1A524C3D4();
    sub_1A3C6998C(0, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v46 = sub_1A524C3D4();
    v47 = sub_1A524CA14();
    [v44 setAllowedUUIDs:v45 manualOrderUUIDs:v46 forAssetCollections:v47];
  }

  [v44 startBackgroundFetchIfNeeded];

  return v44;
}

void sub_1A400AC78(void *a1, void *a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  sub_1A400B3B4(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = a3;
  v8 = a3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A400AF80(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1A400B674(a1, a2, isUniquelyReferenced_nonNull_native, sub_1A3ECE0BC);

    *v2 = v13;
  }

  else
  {
    v6 = sub_1A3CBBC40(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v14 = *v3;
      if (!v9)
      {
        sub_1A400B7FC(sub_1A3ECE0BC);
        v10 = v14;
      }

      sub_1A3FB731C(v8, v10, v11);

      *v3 = v10;
    }

    else
    {
    }
  }
}

void sub_1A400B0AC(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  sub_1A3ECDB40(MEMORY[0x1E69E7CC0], sub_1A3ECE0BC);
  sub_1A3ECDB40(v1, sub_1A3ECE00C);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A400B130(unint64_t a1)
{
  v2 = sub_1A3ECDB40(MEMORY[0x1E69E7CC0], sub_1A3ECE0BC);
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_26:
    sub_1A3ECDB40(MEMORY[0x1E69E7CC0], sub_1A3ECE00C);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1A59097F0](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v3 = sub_1A524E2B4();
      if (!v3)
      {
        goto LABEL_26;
      }

      goto LABEL_3;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_1A3CBBC40(v6);
    v11 = v2[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      goto LABEL_23;
    }

    v15 = v10;
    if (v2[3] < v14)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v19 = v9;
    sub_1A400B7FC(sub_1A3ECE0BC);
    v9 = v19;
    if (v15)
    {
LABEL_4:
      *(v2[7] + 8 * v9) = MEMORY[0x1E69E7CD0];

      goto LABEL_5;
    }

LABEL_16:
    v2[(v9 >> 6) + 8] |= 1 << v9;
    *(v2[6] + 8 * v9) = v6;
    *(v2[7] + 8 * v9) = MEMORY[0x1E69E7CD0];
    v17 = v2[2];
    v13 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v13)
    {
      goto LABEL_24;
    }

    v2[2] = v18;
LABEL_5:
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_26;
    }
  }

  sub_1A400B40C(v14, isUniquelyReferenced_nonNull_native, sub_1A3ECE0BC);
  v9 = sub_1A3CBBC40(v6);
  if ((v15 & 1) == (v16 & 1))
  {
LABEL_15:
    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
  result = sub_1A524EB84();
  __break(1u);
  return result;
}

void sub_1A400B3B4(uint64_t a1)
{
  if (!qword_1EB12E1C0)
  {
    sub_1A3ECDA00(255);
    v1 = sub_1A524EA54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12E1C0);
    }
  }
}

void sub_1A400B40C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v7 = sub_1A524E774();
  v8 = v7;
  if (*(v6 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v5 & 1) == 0)
      {
        v23 = v21;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v24 = sub_1A524DBE4();
      v25 = -1 << *(v8 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v5 & 1) == 0)
    {

      v4 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v6 + 32);
    v4 = v33;
    if (v32 >= 64)
    {
      bzero((v6 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
}

void sub_1A400B674(uint64_t a1, void *a2, char a3, void (*a4)(void))
{
  v6 = v4;
  v9 = *v4;
  v10 = sub_1A3CBBC40(a2);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a3 & 1) == 0)
  {
    if (v17 < v15 || (a3 & 1) != 0)
    {
      sub_1A400B40C(v15, a3 & 1, a4);
      v10 = sub_1A3CBBC40(a2);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v18 = v10;
      sub_1A400B7FC(a4);
      v10 = v18;
    }
  }

  v20 = *v6;
  if (v16)
  {
    *(v20[7] + 8 * v10) = a1;

    return;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  *(v20[6] + 8 * v10) = a2;
  *(v20[7] + 8 * v10) = a1;
  v21 = v20[2];
  v14 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v22;

  v23 = a2;
}

void sub_1A400B7FC(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1A524E764();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      v14 = __clz(__rbit64(v12 & v11));
      goto LABEL_17;
    }

    v15 = 0;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_18;
      }

      v16 = *(v3 + 64 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
LABEL_17:
        v17 = v14 | (v9 << 6);
        v18 = *(*(v3 + 48) + 8 * v17);
        v19 = *(*(v3 + 56) + 8 * v17);
        *(*(v5 + 48) + 8 * v17) = v18;
        *(*(v5 + 56) + 8 * v17) = v19;
        v20 = v18;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v2 = v5;
  }
}

uint64_t sub_1A400B95C(uint64_t a1)
{
  sub_1A3ECDA00(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void PhotosSearchHomeCoordinator.__allocating_init(photoLibrary:searchBarPosition:closeAction:initialContainer:initialSearchText:customAssetSelectionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = [objc_allocWithZone(MEMORY[0x1E6978A68]) initWithPhotoLibrary_];
  type metadata accessor for LemonadeSuggestedSearchQueryFetcher(0);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  LemonadeSuggestedSearchQueryFetcher.__allocating_init(searchQueryManager:container:)(v10, v16);
}

uint64_t PhotosSearchHomeCoordinator.__allocating_init(searchQueryManager:suggestedQueryFetcher:searchBarPosition:closeAction:initialContainer:initialSearchText:customAssetSelectionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  PhotosSearchHomeCoordinator.init(searchQueryManager:suggestedQueryFetcher:searchBarPosition:closeAction:initialContainer:initialSearchText:customAssetSelectionHandler:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return v17;
}

char *PhotosSearchHomeCoordinator.init(searchQueryManager:suggestedQueryFetcher:searchBarPosition:closeAction:initialContainer:initialSearchText:customAssetSelectionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = *v10;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = 0;
  *(v10 + 5) = a1;
  *(v10 + 6) = a2;
  (*(*(*(v16 + 80) - 8) + 32))(&v10[*(v16 + 136)], a3);
  v17 = &v10[*(*v10 + 144)];
  *v17 = a4;
  *(v17 + 1) = a5;
  v18 = &v10[*(*v10 + 152)];
  v19 = *(a6 + 16);
  *v18 = *a6;
  *(v18 + 1) = v19;
  *(v18 + 4) = *(a6 + 32);
  v20 = &v10[*(*v10 + 160)];
  *v20 = a7;
  *(v20 + 1) = a8;
  v21 = &v10[*(*v10 + 168)];
  *v21 = a9;
  *(v21 + 1) = a10;
  return v10;
}

uint64_t sub_1A400BD80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

void sub_1A400BDF8(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1A400BE04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

double sub_1A400BE7C(uint64_t a1)
{
  *(v1 + 24) = a1;

  return result;
}

uint64_t sub_1A400BE8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

double sub_1A400BF04(uint64_t a1)
{
  *(v1 + 32) = a1;

  return result;
}

id *PhotosSearchHomeCoordinator.deinit()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 17));

  sub_1A3C2CE9C(v0 + *(*v0 + 19));

  sub_1A3C33378(*(v0 + *(*v0 + 21)), *(v0 + *(*v0 + 21) + 8));
  return v0;
}

uint64_t PhotosSearchHomeCoordinator.__deallocating_deinit()
{
  PhotosSearchHomeCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t PhotosSearchHomeCoordinator<>.init(searchQueryManager:suggestedQueryFetcher:placement:initialContainer:initialSearchText:closeAction:customAssetSelectionHandler:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v22[0] = *a3;
  sub_1A400C1D8(0, a2);
  v16 = swift_allocObject();
  *(v16 + 16) = a7;
  *(v16 + 24) = a8;

  v17 = sub_1A524DC64();
  PhotosSearchBarPosition.SystemBar.init(placement:closeAction:)(&v25, v22, v17);
  v23[0] = v25;
  v24 = v26;
  sub_1A3C451FC(a4, v22);
  v18 = (*(v10 + 176))(a1, a2, v23, a7, a8, v22, a5, a6, a9, a10, 0, sub_1A3DDBE10, v16);
  sub_1A3C2CE9C(a4);
  return v18;
}

unint64_t sub_1A400C1D8(uint64_t a1, uint64_t a2)
{
  result = qword_1EB126590;
  if (!qword_1EB126590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126590);
  }

  return result;
}

void PhotosSearchHomeCoordinator<>.init(photoLibrary:placement:initialContainer:initialSearchText:closeAction:customAssetSelectionHandler:)(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[0] = *a2;
  sub_1A400C1D8(0, a2);
  v13 = swift_allocObject();
  *(v13 + 16) = a6;
  *(v13 + 24) = a7;

  v14 = sub_1A524DC64();
  PhotosSearchBarPosition.SystemBar.init(placement:closeAction:)(&v23, v22, v14);
  v15 = v23;
  v16 = v24;
  sub_1A3C451FC(a3, v22);
  v20[0] = v15;
  v21 = v16;
  v17 = [objc_allocWithZone(MEMORY[0x1E6978A68]) initWithPhotoLibrary_];
  type metadata accessor for LemonadeSuggestedSearchQueryFetcher(0);
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  LemonadeSuggestedSearchQueryFetcher.__allocating_init(searchQueryManager:container:)(v17, v18);
}

uint64_t sub_1A400C434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v53 = sub_1A52492A4();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v47 - v5;
  v6 = sub_1A5246E54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E73E5C(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  v13 = sub_1A400CA50();
  MEMORY[0x1A5905890](&type metadata for LemonadeNavigationBarTitleView, v13);
  v14 = sub_1A5246E94();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_1A400F2F4(v12, sub_1A3E73E5C);
  }

  else
  {

    sub_1A5246E44();
    v17 = sub_1A5246E84();
    LODWORD(v49) = sub_1A524D664();

    if (sub_1A524DEC4())
    {
      v18 = swift_slowAlloc();
      v48 = v7;
      v19 = v18;
      v20 = swift_slowAlloc();
      v47 = v6;
      v55 = a1;
      v56 = v20;
      *v19 = 136446210;
      v21 = sub_1A524A694();
      sub_1A3C2EF94(v21, v22, &v56);
    }

    (*(v7 + 8))(v9, v6);
    (*(v15 + 8))(v12, v14);
  }

  sub_1A3C7E8B0(0, v16);
  v23 = [swift_getObjCClassFromMetadata() sharedInstance];

  v57 = sub_1A46DF518();
  v58 = v24;
  sub_1A3D5F9DC();
  v25 = sub_1A524A464();
  v27 = v26;
  v29 = v28;
  sub_1A524A0D4();
  sub_1A524A104();

  v49 = sub_1A524A3C4();
  v48 = v30;
  v32 = v31;
  v47 = v33;

  sub_1A3E04DF4(v25, v27, v29 & 1);

  KeyPath = swift_getKeyPath();
  v35 = swift_getKeyPath();
  v36 = v32 & 1;
  LOBYTE(v57) = v32 & 1;
  LOBYTE(v56) = 0;
  v37 = v51;
  sub_1A5249294();
  v38 = v52;
  v39 = v53;
  (*(v52 + 16))(v50, v37, v53);
  sub_1A400F63C(&qword_1EB128030, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
  v40 = sub_1A5248264();
  (*(v38 + 8))(v37, v39);
  v41 = MEMORY[0x1A5907080]([v23 navigationBarAnimationDuration]);
  v42 = sub_1A46DF518();
  v44 = v43;
  if (sub_1A46E0344())
  {
    v45 = 1.0;
  }

  else
  {
    v45 = 0.0;
  }

  v57 = v49;
  v58 = v48;
  v59 = v36;
  v60 = v47;
  v61 = KeyPath;
  v62 = 0x3FE0000000000000;
  v63 = a1;
  v64 = v35;
  v65 = 0;
  v66 = v40;
  v67 = v41;
  v68 = v42;
  v69 = v44;
  v70 = v45;
  sub_1A400CAA4(v54);

  return sub_1A400F2F4(&v57, sub_1A400F354);
}

unint64_t sub_1A400CA50()
{
  result = qword_1EB1297A8;
  if (!qword_1EB1297A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1297A8);
  }

  return result;
}

uint64_t sub_1A400CAA4@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  sub_1A3EC2854(0);
  v48 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - v6;
  v8 = sub_1A52486A4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  sub_1A3EC1A14(0);
  v49 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40106F8(0);
  v54 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v51 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4010668(0, &qword_1EB121E90, sub_1A40106F8, sub_1A4010DE4);
  v52 = *(v19 - 8);
  v53 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v47 - v20;
  v21 = sub_1A524B434();
  v22 = v1[5];
  v75 = v1[4];
  v76 = v22;
  v77 = v1[6];
  v23 = v1[1];
  v72[0] = *v1;
  v72[1] = v23;
  v24 = v1[3];
  v73 = v1[2];
  v74 = v24;
  v64 = v72[0];
  v65 = v23;
  v69 = v22;
  v70 = v77;
  v66 = v73;
  v67 = v24;
  v68 = v75;
  v71 = v21;
  KeyPath = swift_getKeyPath();
  v60[1] = v68;
  v61 = v69;
  v62 = v70;
  v59[0] = v64;
  v59[1] = v65;
  v59[2] = v66;
  v60[0] = v67;
  *&v63[0] = v71;
  *(&v63[0] + 1) = KeyPath;
  *&v63[1] = 1;
  BYTE8(v63[1]) = 0;
  v78 = v21;
  sub_1A4011450(v1, v79, sub_1A400F354);
  sub_1A4011450(&v64, v79, sub_1A40108F0);
  sub_1A400F2F4(v72, sub_1A40108F0);
  v26 = v9[13];
  v26(v14, *MEMORY[0x1E697E718], v8);
  v26(v11, *MEMORY[0x1E697E720], v8);
  sub_1A400F63C(&qword_1EB1288D0, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  result = sub_1A524C544();
  if (result)
  {
    v28 = v9[4];
    v28(v7, v14, v8);
    v29 = v48;
    v28(&v7[*(v48 + 48)], v11, v8);
    sub_1A4011450(v7, v4, sub_1A3EC2854);
    v30 = *(v29 + 48);
    v28(v56, v4, v8);
    v31 = v9[1];
    v31(&v4[v30], v8);
    sub_1A40114B8(v7, v4);
    v32 = *(v29 + 48);
    v33 = v56;
    v28(&v56[*(v49 + 36)], &v4[v32], v8);
    v31(v4, v8);
    sub_1A401084C(0);
    sub_1A4010A1C(&qword_1EB122FE8, sub_1A401084C, sub_1A4010910, sub_1A400FBC0);
    sub_1A400F63C(&qword_1EB126FC0, sub_1A3EC1A14, MEMORY[0x1E69E5FB8]);
    v34 = v51;
    sub_1A524AB84();
    sub_1A400F2F4(v33, sub_1A3EC1A14);
    v79[6] = v62;
    v80[0] = v63[0];
    *(v80 + 9) = *(v63 + 9);
    v79[2] = v59[2];
    v79[3] = v60[0];
    v79[4] = v60[1];
    v79[5] = v61;
    v79[0] = v59[0];
    v79[1] = v59[1];
    sub_1A400F2F4(v79, sub_1A401084C);
    v35 = v54;
    *(v34 + *(v54 + 36)) = 0;
    sub_1A3C7E8B0(0, v36);
    v37 = [swift_getObjCClassFromMetadata() sharedInstance];
    v38 = [v37 enableNavigationBarBlur];
    v39 = &selRef_navigationBarBlurLegibilityEDRBoost;
    if (!v38)
    {
      v39 = &selRef_navigationBarLegibilityEDRBoost;
    }

    [v37 *v39];
    v41 = v40;

    v42 = v41;
    *v59 = v42 + 1.0;
    *(v59 + 12) = 0;
    *(v59 + 4) = 0;
    DWORD1(v59[1]) = 0;
    *(&v59[1] + 2) = v42 + 1.0;
    *(&v59[2] + 4) = 0;
    *(&v59[1] + 12) = 0;
    HIDWORD(v59[2]) = 0;
    *v60 = v42 + 1.0;
    *(v60 + 12) = 0;
    *(v60 + 4) = 0;
    DWORD1(v60[1]) = 0;
    *(&v60[1] + 1) = 1065353216;
    v43 = sub_1A4010DE4();
    v44 = v50;
    sub_1A524AA24();
    sub_1A401151C(v34, sub_1A40106F8);
    v57 = v35;
    v58 = v43;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = v53;
    sub_1A47ED780(v53, OpaqueTypeConformance2);
    return (*(v52 + 8))(v44, v46);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A400D1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a4;
  sub_1A3EC2854(0);
  v52 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v48 - v11;
  v12 = sub_1A52486A4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  sub_1A3EC1A14(0);
  v53 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v49 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A400FE78(0);
  v59 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v55 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A400FE44(0);
  v60 = *(v23 - 8);
  v61 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v58 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1A524B434();
  KeyPath = swift_getKeyPath();
  *v65 = a1;
  *&v65[8] = a2;
  *&v65[16] = a3;
  *v66 = v25;
  v51 = v25;
  v50 = KeyPath;
  *&v66[8] = KeyPath;
  *&v66[16] = 0;
  LOBYTE(v67) = 1;
  v27 = v13[13];
  v27(v18, *MEMORY[0x1E697E718], v12);
  v27(v15, *MEMORY[0x1E697E720], v12);
  sub_1A400F63C(&qword_1EB1288D0, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  v57 = a1;

  v56 = a2;

  v54 = a3;

  result = sub_1A524C544();
  if (result)
  {
    v29 = v13[4];
    v30 = v48;
    v29(v48, v18, v12);
    v31 = v52;
    v29((v30 + *(v52 + 48)), v15, v12);
    sub_1A4011450(v30, v9, sub_1A3EC2854);
    v32 = *(v31 + 48);
    v33 = v49;
    v29(v49, v9, v12);
    v34 = v13[1];
    v34(&v9[v32], v12);
    sub_1A40114B8(v30, v9);
    v29((v33 + *(v53 + 36)), &v9[*(v31 + 48)], v12);
    v34(v9, v12);
    sub_1A400FFCC(0);
    sub_1A4010A1C(&qword_1EB128278, sub_1A400FFCC, sub_1A4010178, sub_1A400FBC0);
    sub_1A400F63C(&qword_1EB126FC0, sub_1A3EC1A14, MEMORY[0x1E69E5FB8]);
    v35 = v55;
    sub_1A524AB84();
    sub_1A400F2F4(v33, sub_1A3EC1A14);

    v36 = v59;
    *(v35 + *(v59 + 36)) = 0;
    sub_1A3C7E8B0(0, v37);
    v38 = [swift_getObjCClassFromMetadata() sharedInstance];
    v39 = [v38 enableNavigationBarBlur];
    v40 = &selRef_navigationBarBlurLegibilityEDRBoost;
    if (!v39)
    {
      v40 = &selRef_navigationBarLegibilityEDRBoost;
    }

    [v38 *v40];
    v42 = v41;

    v43 = v42;
    *v65 = v43 + 1.0;
    memset(&v65[4], 0, 20);
    *v66 = v43 + 1.0;
    memset(&v66[4], 0, 20);
    v67 = v43 + 1.0;
    v69 = 0;
    v68 = 0;
    v70 = 0;
    v71 = 1065353216;
    v44 = sub_1A40102E8();
    v45 = v58;
    sub_1A524AA24();
    sub_1A401151C(v35, sub_1A400FE78);
    v63 = v36;
    v64 = v44;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v47 = v61;
    sub_1A47ED780(v61, OpaqueTypeConformance2);
    return (*(v60 + 8))(v45, v47);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A400D8B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  sub_1A3EC2854(0);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v48 - v6;
  v8 = sub_1A52486A4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  sub_1A3EC1A14(0);
  v51 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A400F71C(0);
  v54 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v52 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A400F6E8(0);
  v55 = *(v20 - 8);
  v56 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v53 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A524B434();
  v23 = v2[3];
  v70 = v2[2];
  v71 = v23;
  v72 = v2[4];
  v24 = v2[1];
  v69[0] = *v2;
  v69[1] = v24;
  v65 = v70;
  v66 = v23;
  v67 = v72;
  v63 = v69[0];
  v64 = v24;
  v68 = v22;
  KeyPath = swift_getKeyPath();
  v60[2] = v65;
  v61[0] = v66;
  v61[1] = v67;
  v60[0] = v63;
  v60[1] = v64;
  *&v62[0] = v68;
  *(&v62[0] + 1) = KeyPath;
  *&v62[1] = 0;
  BYTE8(v62[1]) = 1;
  v73 = v22;
  sub_1A4011450(v2, v74, sub_1A400F8B0);
  sub_1A4011450(&v63, v74, sub_1A400F890);
  sub_1A400F2F4(v69, sub_1A400F890);
  v26 = v9[13];
  v26(v14, *MEMORY[0x1E697E718], v8);
  v26(v11, *MEMORY[0x1E697E720], v8);
  sub_1A400F63C(&qword_1EB1288D0, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  result = sub_1A524C544();
  if (result)
  {
    v28 = v9[4];
    v28(v7, v14, v8);
    v29 = v17;
    v48 = v17;
    v31 = v49;
    v30 = v50;
    v28(&v7[*(v50 + 48)], v11, v8);
    sub_1A4011450(v7, v31, sub_1A3EC2854);
    v32 = *(v30 + 48);
    v28(v29, v31, v8);
    v33 = v9[1];
    v33(v31 + v32, v8);
    sub_1A40114B8(v7, v31);
    v34 = v48;
    v28(&v48[*(v51 + 36)], (v31 + *(v30 + 48)), v8);
    v33(v31, v8);
    sub_1A400F870(0);
    sub_1A4010A1C(&qword_1EB1281A8, sub_1A400F870, sub_1A400FAC8, sub_1A400FBC0);
    sub_1A400F63C(&qword_1EB126FC0, sub_1A3EC1A14, MEMORY[0x1E69E5FB8]);
    v35 = v52;
    sub_1A524AB84();
    sub_1A400F2F4(v34, sub_1A3EC1A14);
    v74[4] = v61[1];
    v75[0] = v62[0];
    *(v75 + 9) = *(v62 + 9);
    v74[0] = v60[0];
    v74[1] = v60[1];
    v74[2] = v60[2];
    v74[3] = v61[0];
    sub_1A400F2F4(v74, sub_1A400F870);
    v36 = v54;
    *(v35 + *(v54 + 36)) = 0;
    sub_1A3C7E8B0(0, v37);
    v38 = [swift_getObjCClassFromMetadata() sharedInstance];
    v39 = [v38 enableNavigationBarBlur];
    v40 = &selRef_navigationBarBlurLegibilityEDRBoost;
    if (!v39)
    {
      v40 = &selRef_navigationBarLegibilityEDRBoost;
    }

    [v38 *v40];
    v42 = v41;

    v43 = v42;
    *v60 = v43 + 1.0;
    *(v60 + 12) = 0;
    *(v60 + 4) = 0;
    DWORD1(v60[1]) = 0;
    *(&v60[1] + 2) = v43 + 1.0;
    *(&v60[2] + 4) = 0;
    *(&v60[1] + 12) = 0;
    HIDWORD(v60[2]) = 0;
    *v61 = v43 + 1.0;
    *(v61 + 12) = 0;
    *(v61 + 4) = 0;
    DWORD1(v61[1]) = 0;
    *(&v61[1] + 1) = 1065353216;
    v44 = sub_1A400FC30();
    v45 = v53;
    sub_1A524AA24();
    sub_1A401151C(v35, sub_1A400F71C);
    v58 = v36;
    v59 = v44;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v47 = v56;
    sub_1A47ED780(v56, OpaqueTypeConformance2);
    return (*(v55 + 8))(v45, v47);
  }

  else
  {
    __break(1u);
  }

  return result;
}

__CFString *sub_1A400DFC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5246E54();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeNavigationBarSubtitleView(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E73E5C(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A400F63C(&unk_1EB129658, type metadata accessor for LemonadeNavigationBarSubtitleView, &unk_1A5311A38);
  MEMORY[0x1A5905890](v6, v12);
  v13 = sub_1A5246E94();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_1A400F2F4(v11, sub_1A3E73E5C);
  }

  else
  {
    v26 = a1;
    sub_1A4011450(v1, v8, type metadata accessor for LemonadeNavigationBarSubtitleView);
    sub_1A5246E44();
    v15 = sub_1A5246E84();
    v25 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v16 = swift_slowAlloc();
      v23[1] = v16;
      v24 = swift_slowAlloc();
      v29 = v24;
      *v16 = 136446210;
      v17 = sub_1A524A694();
      v19 = v18;
      sub_1A400F2F4(v8, type metadata accessor for LemonadeNavigationBarSubtitleView);
      sub_1A3C2EF94(v17, v19, &v29);
    }

    (*(v27 + 8))(v5, v28);
    sub_1A400F2F4(v8, type metadata accessor for LemonadeNavigationBarSubtitleView);
    (*(v14 + 8))(v11, v13);
    a1 = v26;
  }

  sub_1A400F684(0, &qword_1EB130550, type metadata accessor for LemonadeSharedLibraryViewModeIndicatorModel, MEMORY[0x1E697DA80]);
  v20 = sub_1A5247C84();
  v21 = (*(*v29 + 152))(v20);

  return sub_1A400E418(v21, a1);
}

__CFString *sub_1A400E418@<X0>(_BOOL8 a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A400FD74(0, &qword_1EB127638, sub_1A400F6E8, sub_1A400F71C, sub_1A400FC30);
  v6 = v5;
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A401044C(0, &qword_1EB127F10, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v41 - v8;
  sub_1A400FD74(0, &qword_1EB127630, sub_1A400FE44, sub_1A400FE78, sub_1A40102E8);
  v44 = v10;
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v41 - v13;
  sub_1A401042C(0, v12);
  v16 = v15;
  v45 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v43 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v2;
  if (sub_1A46DFB40(v17) & 1) != 0 && (sub_1A46E014C())
  {
    if (a1)
    {
      v41[2] = v9;
      v41[3] = v6;
      v41[4] = a2;
      v20 = PXLibraryFilterItemTagFromViewMode(a1);
      result = PXLibraryFilterMenuImageNameForItemTagFilled(v20, 1);
      if (result)
      {
        v22 = result;
        sub_1A524C674();

        v41[1] = sub_1A5249314();
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      __break(1u);
    }

    else
    {

      sub_1A524A0E4();
      v24 = sub_1A524A104();

      KeyPath = swift_getKeyPath();
      sub_1A400D1EC(v19, KeyPath, v24, v14);

      (*(v11 + 16))(v9, v14, v44);
      swift_storeEnumTagMultiPayload();
      sub_1A400FE44(255);
      v27 = v26;
      sub_1A400FE78(255);
      v29 = v28;
      v30 = sub_1A40102E8();
      v46 = v29;
      v47 = v30;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v46 = v27;
      v47 = OpaqueTypeConformance2;
      v42 = swift_getOpaqueTypeConformance2();
      sub_1A400F6E8(255);
      v33 = v32;
      sub_1A400F71C(255);
      v35 = v34;
      v36 = sub_1A400FC30();
      v46 = v35;
      v47 = v36;
      v37 = swift_getOpaqueTypeConformance2();
      v46 = v33;
      v47 = v37;
      swift_getOpaqueTypeConformance2();
      v38 = v43;
      v39 = v44;
      sub_1A5249744();
      v40 = (*(v11 + 8))(v14, v39);
      sub_1A3CD417C(v38, a2, v40);
      return (*(v45 + 56))(a2, 0, 1, v16);
    }
  }

  else
  {
    v23 = *(v45 + 56);

    return v23(a2, 1, 1, v16);
  }

  return result;
}

uint64_t sub_1A400EB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5246E54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E73E5C(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v11 = sub_1A4010294();
  MEMORY[0x1A5905890](&type metadata for LemonadeNavigationBarSubtitleView.SubtitleText, v11);
  v12 = sub_1A5246E94();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_1A400F2F4(v10, sub_1A3E73E5C);
  }

  else
  {
    v29 = v5;

    sub_1A5246E44();
    v14 = sub_1A5246E84();
    v28 = sub_1A524D664();

    if (sub_1A524DEC4())
    {
      v15 = swift_slowAlloc();
      v27[1] = v4;
      v16 = v15;
      v27[0] = swift_slowAlloc();
      v30 = a1;
      v31 = v27[0];
      *v16 = 136446210;
      v17 = sub_1A524A694();
      sub_1A3C2EF94(v17, v18, &v31);
    }

    (*(v29 + 8))(v7, v4);
    (*(v13 + 8))(v10, v12);
  }

  v19 = sub_1A3CA7CB0();
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  v22 = 0xE000000000000000;
  if (v20)
  {
    v22 = v20;
  }

  v32 = v21;
  v33 = v22;
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a2 = result;
  *(a2 + 8) = v24;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v26;
  return result;
}

void sub_1A400EE6C(uint64_t a1@<X1>, char a2@<W2>, uint64_t *a3@<X8>)
{
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    v10 = sub_1A524D254();
    v11 = sub_1A524A014();
    sub_1A5246DF4(v10, &dword_1A3C1C000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(a1, 0);
    (*(v7 + 8))(v9, v6);
    if (v26 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v24 = sub_1A46DF518();
    v25 = v12;
    sub_1A3D5F9DC();
    v13 = sub_1A524A464();
    v15 = v14;
    v17 = v16;
    v18 = sub_1A3CA7CB0();
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    v21 = 0xE000000000000000;
    if (v19)
    {
      v21 = v19;
    }

    v24 = v20;
    v25 = v21;
    sub_1A524A464();
    v23[8] = v17 & 1;
    LOBYTE(v24) = v17 & 1;
    v23[16] = v22 & 1;
    sub_1A3E75E68(v13, v15, v17 & 1);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v26 = a1 & 1;
  if (a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = 0;
  a3[6] = 0;
  a3[7] = 0;
}

uint64_t sub_1A400F0EC()
{
  sub_1A40110EC(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *v0;
  v5 = v0[1];
  v6 = *(v0 + 16);
  sub_1A46DF5C8();
  sub_1A4011154(0);
  sub_1A400F63C(&qword_1EB127BE0, sub_1A4011154, MEMORY[0x1E697FDF8]);
  sub_1A524AA94();

  v9 = v4;
  v10 = v5;
  v11 = v6;
  sub_1A40111BC(0);
  sub_1A4011284();
  sub_1A4011364(&qword_1EB1270C0, sub_1A40111BC, sub_1A40113E0);
  sub_1A524AC64();
  return sub_1A400F2F4(v3, sub_1A40110EC);
}

uint64_t sub_1A400F2F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A400F390(uint64_t a1)
{
  if (!qword_1EB1231F0)
  {
    sub_1A400F424(255);
    sub_1A400FA74(255, &qword_1EB122E20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6180], MEMORY[0x1E697F540]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1231F0);
    }
  }
}

void sub_1A400F424(uint64_t a1)
{
  if (!qword_1EB123428)
  {
    sub_1A400F4C4(255, &qword_1EB1283D8, sub_1A400F530, &type metadata for LemonadeNavigtationTitleAccessibilityModifier, MEMORY[0x1E697E830]);
    sub_1A400F5B4(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123428);
    }
  }
}

void sub_1A400F4C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A400F530(uint64_t a1)
{
  if (!qword_1EB128700)
  {
    sub_1A3FAACE8(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128700);
    }
  }
}

uint64_t type metadata accessor for LemonadeNavigationBarSubtitleView(uint64_t a1)
{
  result = qword_1EB17B770;
  if (!qword_1EB17B770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A400F63C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A400F684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A400F758(uint64_t a1)
{
  if (!qword_1EB1275B0)
  {
    sub_1A400F870(255);
    sub_1A3EC1A14(255);
    sub_1A4010A1C(&qword_1EB1281A8, sub_1A400F870, sub_1A400FAC8, sub_1A400FBC0);
    sub_1A400F63C(&qword_1EB126FC0, sub_1A3EC1A14, MEMORY[0x1E69E5FB8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1275B0);
    }
  }
}

void sub_1A400F8B0(uint64_t a1)
{
  if (!qword_1EB1284F8)
  {
    sub_1A400F930(255);
    sub_1A3FA8984(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1284F8);
    }
  }
}

void sub_1A400F930(uint64_t a1)
{
  if (!qword_1EB1273C0)
  {
    sub_1A400F9AC(255, &qword_1EB1270E8, &qword_1EB127688, &type metadata for LemonadeNavigationBarSubtitleView.SubtitleText);
    sub_1A400FA04();
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1273C0);
    }
  }
}

void sub_1A400F9AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A401122C(255, a3, a4);
    v5 = sub_1A524BE24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A400FA04()
{
  result = qword_1EB1270F0;
  if (!qword_1EB1270F0)
  {
    sub_1A400F9AC(255, &qword_1EB1270E8, &qword_1EB127688, &type metadata for LemonadeNavigationBarSubtitleView.SubtitleText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1270F0);
  }

  return result;
}

void sub_1A400FA74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A400FB10()
{
  result = qword_1EB128500;
  if (!qword_1EB128500)
  {
    sub_1A400F8B0(255);
    sub_1A400F63C(&qword_1EB1273C8, sub_1A400F930, MEMORY[0x1E69817F8]);
    sub_1A3F96350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128500);
  }

  return result;
}

unint64_t sub_1A400FBC0()
{
  result = qword_1EB1277A0;
  if (!qword_1EB1277A0)
  {
    sub_1A3FA8984(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1277A0);
  }

  return result;
}

unint64_t sub_1A400FC30()
{
  result = qword_1EB128660;
  if (!qword_1EB128660)
  {
    sub_1A400F71C(255);
    sub_1A400F870(255);
    sub_1A3EC1A14(255);
    sub_1A4010A1C(&qword_1EB1281A8, sub_1A400F870, sub_1A400FAC8, sub_1A400FBC0);
    sub_1A400F63C(&qword_1EB126FC0, sub_1A3EC1A14, MEMORY[0x1E69E5FB8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128660);
  }

  return result;
}

void sub_1A400FD74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A400FEB4(uint64_t a1)
{
  if (!qword_1EB1275C8)
  {
    sub_1A400FFCC(255);
    sub_1A3EC1A14(255);
    sub_1A4010A1C(&qword_1EB128278, sub_1A400FFCC, sub_1A4010178, sub_1A400FBC0);
    sub_1A400F63C(&qword_1EB126FC0, sub_1A3EC1A14, MEMORY[0x1E69E5FB8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1275C8);
    }
  }
}

void sub_1A400FFCC(uint64_t a1)
{
  if (!qword_1EB128270)
  {
    sub_1A4010068(255, &qword_1EB128458, sub_1A4010100);
    sub_1A3FA8984(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128270);
    }
  }
}

void sub_1A4010068(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A400FA74(255, &qword_1EB127AD0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4010100(uint64_t a1)
{
  if (!qword_1EB128800)
  {
    sub_1A3FA8984(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128800);
    }
  }
}

unint64_t sub_1A4010178()
{
  result = qword_1EB128460;
  if (!qword_1EB128460)
  {
    sub_1A4010068(255, &qword_1EB128458, sub_1A4010100);
    sub_1A4010214();
    sub_1A3F33024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128460);
  }

  return result;
}

unint64_t sub_1A4010214()
{
  result = qword_1EB128808;
  if (!qword_1EB128808)
  {
    sub_1A4010100(255);
    sub_1A4010294();
    sub_1A3F96350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128808);
  }

  return result;
}

unint64_t sub_1A4010294()
{
  result = qword_1EB17B800[0];
  if (!qword_1EB17B800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17B800);
  }

  return result;
}

unint64_t sub_1A40102E8()
{
  result = qword_1EB128670;
  if (!qword_1EB128670)
  {
    sub_1A400FE78(255);
    sub_1A400FFCC(255);
    sub_1A3EC1A14(255);
    sub_1A4010A1C(&qword_1EB128278, sub_1A400FFCC, sub_1A4010178, sub_1A400FBC0);
    sub_1A400F63C(&qword_1EB126FC0, sub_1A3EC1A14, MEMORY[0x1E69E5FB8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128670);
  }

  return result;
}

void sub_1A401044C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A400FD74(255, &qword_1EB127630, sub_1A400FE44, sub_1A400FE78, sub_1A40102E8);
    v7 = v6;
    sub_1A400FD74(255, &qword_1EB127638, sub_1A400F6E8, sub_1A400F71C, sub_1A400FC30);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A40105B4(uint64_t a1)
{
  type metadata accessor for LemonadeCuratedLibraryViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1A400F684(319, &qword_1EB130550, type metadata accessor for LemonadeSharedLibraryViewModeIndicatorModel, MEMORY[0x1E697DA80]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A4010668(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A4010734(uint64_t a1)
{
  if (!qword_1EB121E40)
  {
    sub_1A401084C(255);
    sub_1A3EC1A14(255);
    sub_1A4010A1C(&qword_1EB122FE8, sub_1A401084C, sub_1A4010910, sub_1A400FBC0);
    sub_1A400F63C(&qword_1EB126FC0, sub_1A3EC1A14, MEMORY[0x1E69E5FB8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E40);
    }
  }
}

void sub_1A401086C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A3FA8984(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A4010958()
{
  result = qword_1EB1230D8;
  if (!qword_1EB1230D8)
  {
    sub_1A400F354(255);
    sub_1A4010A1C(&qword_1EB1231F8, sub_1A400F390, sub_1A4010AA8, sub_1A4010D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1230D8);
  }

  return result;
}

uint64_t sub_1A4010A1C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4010AA8()
{
  result = qword_1EB123430;
  if (!qword_1EB123430)
  {
    sub_1A400F424(255);
    sub_1A4010B58();
    sub_1A400F63C(&qword_1EB127C68, sub_1A400F5B4, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123430);
  }

  return result;
}

unint64_t sub_1A4010B58()
{
  result = qword_1EB1283E0;
  if (!qword_1EB1283E0)
  {
    sub_1A400F4C4(255, &qword_1EB1283D8, sub_1A400F530, &type metadata for LemonadeNavigtationTitleAccessibilityModifier, MEMORY[0x1E697E830]);
    sub_1A4010C10();
    sub_1A4010D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1283E0);
  }

  return result;
}

unint64_t sub_1A4010C10()
{
  result = qword_1EB128708;
  if (!qword_1EB128708)
  {
    sub_1A400F530(255);
    sub_1A4010C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128708);
  }

  return result;
}

unint64_t sub_1A4010C90()
{
  result = qword_1EB1279B0;
  if (!qword_1EB1279B0)
  {
    sub_1A3FAACE8(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1279B0);
  }

  return result;
}

unint64_t sub_1A4010D0C()
{
  result = qword_1EB176E90[0];
  if (!qword_1EB176E90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB176E90);
  }

  return result;
}

unint64_t sub_1A4010D60()
{
  result = qword_1EB122E28;
  if (!qword_1EB122E28)
  {
    sub_1A400FA74(255, &qword_1EB122E20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6180], MEMORY[0x1E697F540]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122E28);
  }

  return result;
}

unint64_t sub_1A4010DE4()
{
  result = qword_1EB123EB0;
  if (!qword_1EB123EB0)
  {
    sub_1A40106F8(255);
    sub_1A401084C(255);
    sub_1A3EC1A14(255);
    sub_1A4010A1C(&qword_1EB122FE8, sub_1A401084C, sub_1A4010910, sub_1A400FBC0);
    sub_1A400F63C(&qword_1EB126FC0, sub_1A3EC1A14, MEMORY[0x1E69E5FB8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123EB0);
  }

  return result;
}

unint64_t sub_1A4010F5C(double a1)
{
  result = qword_1EB127D38;
  if (!qword_1EB127D38)
  {
    sub_1A401042C(255, a1);
    sub_1A400FE44(255);
    sub_1A400FE78(255);
    sub_1A40102E8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A400F6E8(255);
    sub_1A400F71C(255);
    sub_1A400FC30();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127D38);
  }

  return result;
}

void sub_1A40110EC(uint64_t a1)
{
  if (!qword_1EB1287B0)
  {
    sub_1A4011154(255);
    sub_1A5249F54();
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1287B0);
    }
  }
}

void sub_1A4011154(uint64_t a1)
{
  if (!qword_1EB127BD8)
  {
    sub_1A4010D0C();
    v1 = sub_1A52499C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127BD8);
    }
  }
}

void sub_1A40111BC(uint64_t a1)
{
  if (!qword_1EB1270C8)
  {
    sub_1A400F9AC(255, &unk_1EB1270D0, &qword_1EB127680, MEMORY[0x1E6981148]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1270C8);
    }
  }
}

void sub_1A401122C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1A4011284()
{
  result = qword_1EB1287B8;
  if (!qword_1EB1287B8)
  {
    sub_1A40110EC(255);
    sub_1A400F63C(&qword_1EB127BE0, sub_1A4011154, MEMORY[0x1E697FDF8]);
    sub_1A400F63C(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1287B8);
  }

  return result;
}

uint64_t sub_1A4011364(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A40113E0()
{
  result = qword_1EB1270E0;
  if (!qword_1EB1270E0)
  {
    sub_1A400F9AC(255, &unk_1EB1270D0, &qword_1EB127680, MEMORY[0x1E6981148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1270E0);
  }

  return result;
}

uint64_t sub_1A4011450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A40114B8(uint64_t a1, uint64_t a2)
{
  sub_1A3EC2854(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A401151C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t LemonadeMemoriesCreationAvailabilityManager.CardVisibilityState.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A4011674(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A52453A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  (*(*v1 + 696))(KeyPath);

  v9 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager___availabilityState;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v7, v2 + v9, v4);
  sub_1A3C3AD58(&qword_1EB124BF0, MEMORY[0x1E69C14A0], MEMORY[0x1E69C14A8]);
  LOBYTE(v9) = sub_1A524C594();
  v11 = *(v5 + 8);
  v11(v7, v4);
  if ((v9 & 1) == 0)
  {
    v10(v7, a1, v4);
    sub_1A4011BA4(v7);
  }

  return (v11)(a1, v4);
}

uint64_t sub_1A4011868(uint64_t a1)
{
  v2 = sub_1A52453A4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - v6;
  (*(v3 + 16))(v15 - v6, a1, v2, v5);

  v8 = sub_1A5246F04();
  v9 = sub_1A524D224();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v10 = 136315394;
    sub_1A3C3AD58(&qword_1EB124BE8, MEMORY[0x1E69C14A0], MEMORY[0x1E69C14B0]);
    v16 = v8;
    v11 = sub_1A524EA44();
    v13 = v12;
    v15[1] = v9;
    (*(v3 + 8))(v7, v2);
    sub_1A3C2EF94(v11, v13, &v18);
  }

  (*(v3 + 8))(v7, v2);
  return sub_1A3C4A7E4();
}

uint64_t sub_1A4011BE0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1A52453A4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v23 = *(*v1 + 696);
  (v23)(KeyPath);

  v8 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitorState;
  swift_beginAccess();
  v9 = *(v4 + 16);
  v9(v6, v1 + v8, v3);
  v10 = sub_1A5245394();
  v11 = *(v4 + 8);
  result = v11(v6, v3);
  if ((v10 & 1) == 0)
  {
    v21 = v11;

    v13 = sub_1A5246F04();
    v14 = sub_1A524D264();

    v22 = v14;
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = v20;
      *v15 = 136315138;
      swift_getKeyPath();
      v19[1] = v13;
      v23();

      v9(v6, v2 + v8, v3);
      sub_1A3C3AD58(&qword_1EB124BE8, MEMORY[0x1E69C14A0], MEMORY[0x1E69C14B0]);
      v16 = sub_1A524EA44();
      v18 = v17;
      v21(v6, v3);
      sub_1A3C2EF94(v16, v18, &v24);
    }

    return sub_1A401448C();
  }

  return result;
}

uint64_t sub_1A4011F1C@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  (*(*v3 + 696))();

  v6 = *a2;
  swift_beginAccess();
  v7 = sub_1A52453A4();
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t sub_1A4011FF4@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  (*(*v6 + 696))();

  v7 = *a3;
  swift_beginAccess();
  v8 = sub_1A52453A4();
  return (*(*(v8 - 8) + 16))(a4, v6 + v7, v8);
}

uint64_t sub_1A40120D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_1A52453A4();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1, v8);
  return a5(v10);
}

uint64_t sub_1A40121E8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v23[1] = a4;
  v24 = a5;
  v23[0] = a3;
  v7 = v5;
  v9 = sub_1A52453A4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v23 - v14;
  v16 = *a2;
  swift_beginAccess();
  v17 = *(v10 + 16);
  v17(v15, v7 + v16, v9);
  sub_1A3C3AD58(&qword_1EB124BF0, MEMORY[0x1E69C14A0], MEMORY[0x1E69C14A8]);
  v26 = a1;
  LOBYTE(a1) = sub_1A524C594();
  v25 = *(v10 + 8);
  v25(v15, v9);
  if (a1)
  {
    v17(v15, v26, v9);
    v17(v12, v7 + v16, v9);
    swift_beginAccess();
    (*(v10 + 24))(v7 + v16, v15, v9);
    swift_endAccess();
    v24(v12);
    v18 = v25;
    v25(v12, v9);
    v18(v15, v9);
    return (v18)(v26, v9);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v21.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v22 = v26;
    v23[-2] = v7;
    v23[-1] = v22;
    (*(*v7 + 704))(v21);

    return (v25)(v26, v9);
  }
}

uint64_t sub_1A40124E8(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(_BYTE *))
{
  v8 = sub_1A52453A4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20[-v14];
  v16 = *(v9 + 16);
  v16(&v20[-v14], a2, v8, v13);
  v17 = *a3;
  swift_beginAccess();
  (v16)(v11, a1 + v17, v8);
  swift_beginAccess();
  (*(v9 + 24))(a1 + v17, v15, v8);
  swift_endAccess();
  a4(v11);
  v18 = *(v9 + 8);
  v18(v11, v8);
  return (v18)(v15, v8);
}

void *sub_1A4012698@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 312))(&v4);
  *a2 = v4;
  return result;
}

void sub_1A4012734(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 696))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager___cardVisibilityState);
}

double sub_1A40127EC(unsigned __int8 *a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager___cardVisibilityState) != *a1)
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 704))(v3);
  }

  return result;
}

uint64_t sub_1A40128D4()
{
  swift_getKeyPath();
  (*(*v0 + 696))();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__didStartPolling);
}

void sub_1A4012940(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 696))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__didStartPolling);
}

void sub_1A40129E8(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__didStartPolling) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__didStartPolling) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 704))(v3);
  }
}

uint64_t sub_1A4012B34(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  (*(*v2 + 696))();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A4012BC0@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _OWORD *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  (*(*v6 + 696))();

  *a4 = *(v6 + *a3);

  return swift_unknownObjectRetain();
}

double sub_1A4012C70(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *a2;
  KeyPath = swift_getKeyPath();
  v12[2] = v9;
  v12[3] = v7;
  v12[4] = v8;
  (*(*v9 + 704))(KeyPath, a6, v12, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

uint64_t sub_1A4012D1C()
{
  swift_getKeyPath();
  (*(*v0 + 696))();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode);
}

void sub_1A4012D90(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 696))();

  v4 = *(v3 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode);
  *(a2 + 8) = v4;
}

double sub_1A4012E50(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode;
  v6 = *(v2 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode);
  v7 = *(v2 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode + 8);
  if (v7)
  {
    if ((a2 & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v2 + 704))(v10);

      return result;
    }
  }

  else if ((a2 & 1) != 0 || v6 != a1)
  {
    goto LABEL_9;
  }

  *v5 = a1;
  *(v5 + 8) = a2 & 1;

  sub_1A3C69584(v6, v7);
  return result;
}

double sub_1A4012F94()
{
  swift_getKeyPath();
  (*(*v0 + 696))();

  return result;
}

double sub_1A4013010@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 696))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitor);

  return result;
}

double sub_1A40130A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v6[2] = v3;
  v6[3] = v2;
  (*(*v3 + 704))(KeyPath, sub_1A401667C, v6, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

uint64_t sub_1A4013150()
{
  v1[9] = v0;
  v2 = sub_1A52453A4();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A401321C, 0, 0);
}

uint64_t sub_1A401321C()
{
  swift_weakInit();
  *(v0 + 112) = sub_1A524CC54();
  *(v0 + 120) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40132C0, v2, v1);
}

uint64_t sub_1A40132C0()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 632))(Strong);
  }

  swift_weakDestroy();

  return MEMORY[0x1EEE6DFA0](sub_1A4013388, 0, 0);
}

uint64_t sub_1A4013388()
{
  v1 = v0[9];
  swift_getKeyPath();
  v2 = (*v1 + 696);
  v3 = *v2;
  v0[16] = *v2;
  v0[17] = v2 & 0xFFFFFFFFFFFFLL | 0x6D5B000000000000;
  v3();

  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitor);
  v0[18] = v4;
  if (v4)
  {
    v19 = (*MEMORY[0x1E69C14E8] + MEMORY[0x1E69C14E8]);

    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_1A4013660;

    return v19();
  }

  else
  {
    v7 = v0[16];
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[10];
    v11 = v0[11];
    v12 = v0[9];
    swift_getKeyPath();
    v7();

    v13 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitorState;
    swift_beginAccess();
    (*(v11 + 16))(v8, v12 + v13, v10);
    (*(v11 + 104))(v9, *MEMORY[0x1E69C1488], v10);
    LOBYTE(v12) = sub_1A5245394();
    v14 = *(v11 + 8);
    v14(v9, v10);
    v14(v8, v10);
    if (v12)
    {
      v15 = sub_1A5246F04();
      v16 = sub_1A524D244();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1A3C1C000, v15, v16, "Expected to initialize availability state at this stage", v17, 2u);
        MEMORY[0x1A590EEC0](v17, -1, -1);
      }
    }

    sub_1A401448C();

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1A4013660()
{

  if (v0)
  {

    v1 = sub_1A4016624;
  }

  else
  {
    v1 = sub_1A4013778;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A4013778(__n128 a1)
{
  *(v1 + 160) = sub_1A524CC44();
  v3 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4013804, v3, v2);
}

uint64_t sub_1A4013804()
{

  sub_1A5245624();

  return MEMORY[0x1EEE6DFA0](sub_1A401387C, 0, 0);
}

uint64_t sub_1A401387C()
{
  sub_1A40121AC(v0[13]);

  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
  swift_getKeyPath();
  v1();

  v7 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitorState;
  swift_beginAccess();
  (*(v5 + 16))(v2, v6 + v7, v4);
  (*(v5 + 104))(v3, *MEMORY[0x1E69C1488], v4);
  LOBYTE(v6) = sub_1A5245394();
  v8 = *(v5 + 8);
  v8(v3, v4);
  v8(v2, v4);
  if (v6)
  {
    v9 = sub_1A5246F04();
    v10 = sub_1A524D244();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A3C1C000, v9, v10, "Expected to initialize availability state at this stage", v11, 2u);
      MEMORY[0x1A590EEC0](v11, -1, -1);
    }
  }

  sub_1A401448C();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A4013A6C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1A4013CB4;
  }

  else
  {
    v2 = sub_1A4013B80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4013B80()
{
  v1 = *(v0 + 64);
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__didStartPolling) == 1)
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__didStartPolling) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 1;
    (*(*v1 + 704))(KeyPath, sub_1A401660C, v3, MEMORY[0x1E69E7CA8] + 8);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A4013CB4()
{
  v14 = v0;
  v1 = v0[10];
  v2 = v1;
  v3 = sub_1A5246F04();
  v4 = sub_1A524D244();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v6 = 136315138;
    v0[5] = v5;
    v7 = v5;
    sub_1A3DBD9A0();
    v8 = sub_1A524C714();
    sub_1A3C2EF94(v8, v9, &v13);
  }

  v10 = v0[10];

  v11 = v0[1];

  return v11();
}

double sub_1A4013E68(uint64_t a1)
{
  sub_1A3C68294(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v6 = sub_1A524CC44();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;

  sub_1A3D4D930(0, 0, v3, &unk_1A5311F58, v7);

  return result;
}

uint64_t sub_1A4013FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_1A3C68294(0, &qword_1EB128F90, MEMORY[0x1E69C14A0]);
  v4[6] = v5;
  v4[7] = swift_task_alloc();
  v6 = sub_1A52453A4();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  sub_1A524CC54();
  v4[12] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4014144, v8, v7);
}

uint64_t sub_1A4014144()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_getKeyPath();
    (*(*v2 + 696))();

    v3 = v0[11];
    if (*(v2 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitor))
    {
      v5 = v0[9];
      v4 = v0[10];
      v6 = v0[8];

      sub_1A5245624();

      (*(v5 + 32))(v3, v4, v6);
    }

    else
    {
      (*(v0[9] + 104))(v0[11], *MEMORY[0x1E69C1488], v0[8]);
    }

    v7 = v0[7];
    sub_1A40121AC(v0[11]);
    sub_1A52415B4();

    sub_1A3C6904C(v7, &qword_1EB128F90, MEMORY[0x1E69C14A0]);
  }

  v8 = v0[1];

  return v8();
}

double sub_1A4014330(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [*(Strong + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager_sharedLibraryFilterState) viewMode];
    v5 = v3 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode;
    if ((*(v3 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode + 8) & 1) != 0 || *v5 != v4)
    {
      KeyPath = swift_getKeyPath();
      v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v3 + 704))(v7);
    }

    else
    {
      *v5 = v4;
      *(v5 + 8) = 0;
      sub_1A3C69584(v4, 0);
    }
  }

  return result;
}

uint64_t sub_1A401448C()
{
  v1 = v0;
  v2 = sub_1A52453A4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v22 = &v18[-v7];
  KeyPath = swift_getKeyPath();
  v9 = (*v0 + 696);
  v10 = *v9;
  (*v9)(KeyPath);
  v20 = v10;
  v21 = v9;

  v11 = *&v0[OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode];
  v19 = v0[OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode + 8];
  swift_getKeyPath();
  v10();

  v12 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitorState;
  swift_beginAccess();
  v13 = *(v3 + 16);
  v13(v5, &v1[v12], v2);
  v14 = v22;
  static LemonadeMemoriesCreationAvailabilityManager.computeFeatureAvailability(sharedLibraryViewMode:featureAvailabilityMonitorState:)(v11, v19, v5, v22);
  v15 = *(v3 + 8);
  v15(v5, v2);
  swift_getKeyPath();
  v20();

  v16 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager___availabilityState;
  swift_beginAccess();
  v13(v5, &v1[v16], v2);
  sub_1A3C3AD58(&qword_1EB124BF0, MEMORY[0x1E69C14A0], MEMORY[0x1E69C14A8]);
  LOBYTE(v16) = sub_1A524C594();
  v15(v5, v2);
  if ((v16 & 1) == 0)
  {
    v13(v5, v14, v2);
    sub_1A4011BA4(v5);
  }

  return v15(v14, v2);
}

uint64_t static LemonadeMemoriesCreationAvailabilityManager.computeFeatureAvailability(sharedLibraryViewMode:featureAvailabilityMonitorState:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1A5245364();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A52453A4();
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v27 - v16;
  if (a2)
  {
    v18 = *(v13 + 16);

    return v18(a4, a3, v12, v14);
  }

  v20 = *(v13 + 16);
  if (a1)
  {
    v29 = v13 + 16;
    v30 = v13;
    v28 = v20;
    (v20)(&v27 - v16, a3, v12, v14.n128_f64[0]);
    v21 = (*(v30 + 88))(v17, v12);
    if (v21 == *MEMORY[0x1E69C1478])
    {
      (*(v30 + 96))(v17, v12);
      v22 = sub_1A52452D4();
LABEL_8:
      (*(*(v22 - 8) + 8))(v17, v22);
      return v28(a4, a3, v12);
    }

    v23 = *MEMORY[0x1E69C1480];
    if (v21 == v23)
    {
      v24 = v21;
      (*(v30 + 96))(v17, v12);
      (*(v9 + 32))(v11, v17, v8);
      sub_1A5245354();
      (*(v9 + 8))(v11, v8);
      return (*(v30 + 104))(a4, v24, v12);
    }

    if (v21 == *MEMORY[0x1E69C1490])
    {
      (*(v30 + 96))(v17, v12);
      v22 = sub_1A5245384();
      goto LABEL_8;
    }

    if (v21 == *MEMORY[0x1E69C1488])
    {
      return v28(a4, a3, v12);
    }

    v25 = *MEMORY[0x1E69C1498];
    v26 = v21;
    sub_1A5245304();
    result = (*(v30 + 104))(a4, v23, v12);
    if (v26 != v25)
    {
      return (*(v30 + 8))(v17, v12);
    }
  }

  else
  {

    return (v20)(a4, a3, v12, v14);
  }

  return result;
}

uint64_t static LemonadeMemoriesCreationAvailabilityManager.generateFeatureAvailabilityState(using:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[6] = a1;
  v6 = sub_1A5246F24();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v7 = sub_1A52453A4();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[19] = v8;
  sub_1A5245574();
  v9 = swift_task_alloc();
  v4[20] = v9;
  *v9 = v4;
  v9[1] = sub_1A4014D34;

  return MEMORY[0x1EEE2A4D8](v8, a2);
}

uint64_t sub_1A4014D34(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[21] = v1;

  if (v1)
  {
    v4 = sub_1A4015608;
  }

  else
  {
    v4 = sub_1A4014E50;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A4014E50()
{
  v76 = v0;
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[9];
  v7 = v0[10];
  v8 = sub_1A3C4A780();
  v71 = *(v7 + 16);
  v71(v5, v8, v6);
  v67 = *(v3 + 16);
  v67(v2, v1, v4);
  v9 = sub_1A5246F04();
  v69 = sub_1A524D264();
  v10 = os_log_type_enabled(v9, v69);
  v11 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[14];
  v15 = v0[10];
  v73 = v0[9];
  v68 = v8;
  if (v10)
  {
    v16 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v16 = 136315138;
    sub_1A3C3AD58(&qword_1EB124BE8, MEMORY[0x1E69C14A0], MEMORY[0x1E69C14B0]);
    v17 = sub_1A524EA44();
    v19 = v18;
    (*(v12 + 8))(v11, v13);
    sub_1A3C2EF94(v17, v19, &v75);
  }

  v72 = *(v12 + 8);
  v72(v11, v13);
  v20 = v73;
  v74 = *(v15 + 8);
  v74(v14, v20);
  v21 = v0[13];
  v22 = v0[9];
  v23 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];
  v70 = [objc_allocWithZone(PXLibraryFilterState) initWithSharedLibraryStatusProvider_];
  v24 = v71;
  v71(v21, v8, v22);
  v25 = v23;
  v26 = sub_1A5246F04();
  v27 = sub_1A524D264();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 67109120;
    *(v28 + 4) = [v25 hasSharedLibraryOrPreview];

    _os_log_impl(&dword_1A3C1C000, v26, v27, "generateFeatureAvailabilityState() - hasSharedLibraryOrPreview: %{BOOL}d", v28, 8u);
    MEMORY[0x1A590EEC0](v28, -1, -1);
  }

  else
  {

    v26 = v25;
  }

  v29 = v0[13];
  v30 = v0[9];

  v74(v29, v30);
  v66 = v25;
  v31 = [v25 hasSharedLibraryOrPreview];
  v32 = v31;
  if (v31)
  {
    v33 = v0[12];
    v34 = v0[9];
    v65 = [v70 viewMode];
    v71(v33, v8, v34);
    v35 = v70;
    v36 = sub_1A5246F04();
    v37 = sub_1A524D264();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[12];
    v40 = v0[9];
    if (v38)
    {
      v41 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v41 = 136315138;
      v0[5] = [v35 &selRef_videoScrubberController_desiredSeekTime_];
      v42 = sub_1A524EA44();
      sub_1A3C2EF94(v42, v43, &v75);
    }

    v74(v39, v40);
    v44 = v65;
    v8 = v68;
    v24 = v71;
  }

  else
  {
    v44 = 0;
  }

  v45 = v0[17];
  v46 = v0[15];
  v47 = v0[11];
  v48 = v0[9];
  v49 = v0[6];
  static LemonadeMemoriesCreationAvailabilityManager.computeFeatureAvailability(sharedLibraryViewMode:featureAvailabilityMonitorState:)(v44, v32 ^ 1, v0[19], v49);
  v24(v47, v8, v48);
  v67(v45, v49, v46);
  v50 = sub_1A5246F04();
  v51 = sub_1A524D264();
  v52 = os_log_type_enabled(v50, v51);
  v53 = v0[19];
  v54 = v0[17];
  v55 = v0[15];
  v56 = v0[11];
  v57 = v0[9];
  if (v52)
  {
    v58 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v58 = 136315138;
    sub_1A3C3AD58(&qword_1EB124BE8, MEMORY[0x1E69C14A0], MEMORY[0x1E69C14B0]);
    v59 = sub_1A524EA44();
    v61 = v60;
    v72(v54, v55);
    sub_1A3C2EF94(v59, v61, &v75);
  }

  v72(v54, v55);
  v74(v56, v57);
  v72(v53, v55);
  v62 = v0[3];

  v63 = v0[1];

  return v63(v62);
}

uint64_t sub_1A4015608()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A40156B8(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];
  v3 = [objc_allocWithZone(PXLibraryFilterState) initWithSharedLibraryStatusProvider_];
  [v3 setViewMode_];
}

uint64_t static LemonadeMemoriesCreationAvailabilityManager.canProceedWithMemoryCreation(in:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1A52453A4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A401583C, 0, 0);
}

uint64_t sub_1A401583C()
{
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v2 = [v1 shouldUseAvailabilityMonitor];

  if (v2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69789D0]) initWithPhotoLibrary_];
    v0[9] = v3;
    v4 = v3;
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_1A40159B4;
    v6 = v0[7];
    v7 = v0[2];

    return static LemonadeMemoriesCreationAvailabilityManager.generateFeatureAvailabilityState(using:photoLibrary:)(v6, v3, v7);
  }

  else
  {

    v9 = v0[1];

    return v9(1);
  }
}

uint64_t sub_1A40159B4(void *a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1A4015D30;
  }

  else
  {

    v5 = sub_1A4015AE0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A4015AE0()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);

  v6 = *(v5 + 32);
  v6(v1, v2, v4);
  v6(v3, v1, v4);
  v7 = (*(v5 + 88))(v3, v4);
  if (v7 == *MEMORY[0x1E69C1478])
  {
    v8 = *(v0 + 48);
    (*(*(v0 + 40) + 96))(v8, *(v0 + 32));
    v9 = sub_1A52452D4();
    (*(*(v9 - 8) + 8))(v8, v9);
LABEL_3:
    v10 = 0;
    goto LABEL_10;
  }

  if (v7 == *MEMORY[0x1E69C1480])
  {
    v11 = *(v0 + 48);
    (*(*(v0 + 40) + 96))(v11, *(v0 + 32));
    v12 = sub_1A5245364();
LABEL_8:
    (*(*(v12 - 8) + 8))(v11, v12);
    goto LABEL_9;
  }

  if (v7 == *MEMORY[0x1E69C1490])
  {
    v11 = *(v0 + 48);
    (*(*(v0 + 40) + 96))(v11, *(v0 + 32));
    v12 = sub_1A5245384();
    goto LABEL_8;
  }

  if (v7 == *MEMORY[0x1E69C1488])
  {
    goto LABEL_3;
  }

  if (v7 != *MEMORY[0x1E69C1498])
  {
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    goto LABEL_3;
  }

LABEL_9:
  v10 = 1;
LABEL_10:

  v13 = *(v0 + 8);

  return v13(v10);
}

uint64_t sub_1A4015D30()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t LemonadeMemoriesCreationAvailabilityManager.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager___availabilityState;
  v2 = sub_1A52453A4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitorState, v2);
  v4 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager_logger;
  v5 = sub_1A5246F24();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager_id;
  v7 = sub_1A52411C4();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v8 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager___observationRegistrar;
  v9 = sub_1A5241614();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t LemonadeMemoriesCreationAvailabilityManager.__deallocating_deinit()
{
  LemonadeMemoriesCreationAvailabilityManager.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall LemonadeMemoriesCreationAvailabilityManager.preferencesDidChange()()
{
  sub_1A3C68294(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  KeyPath = swift_getKeyPath();
  (*(*v0 + 696))(KeyPath);

  v5 = *(v0 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitor);
  if (v5)
  {
    v6 = sub_1A524CCB4();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;

    sub_1A3DCC930(0, 0, v3, &unk_1A5311D00, v7);
  }
}

uint64_t sub_1A401615C()
{
  v3 = (*MEMORY[0x1E69C14E8] + MEMORY[0x1E69C14E8]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return v3();
}

uint64_t sub_1A401623C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A401615C();
}

unint64_t sub_1A40162D4()
{
  result = qword_1EB130558;
  if (!qword_1EB130558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130558);
  }

  return result;
}

void sub_1A40163C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_1A4016460()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A3C69118();
  }

  return result;
}

uint64_t sub_1A40164BC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode;
  v3 = *v2;
  v4 = *(v2 + 8);
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
  return sub_1A3C69584(v3, v4);
}

uint64_t sub_1A4016514()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A4013FF8(v3, v4, v5, v2);
}

void sub_1A4016694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  sub_1A4020054(a1, v7, &qword_1EB128C80, &qword_1EB128C90, off_1E77211B8, sub_1A3E792C4);
  type metadata accessor for CombinedTitleOverlayModel(0);
  swift_allocObject();
  sub_1A401DC40(v7, a2, a3);
}

void sub_1A40167C4(double a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  if (v3 != a1)
  {
    v4 = sub_1A4018384();
    [v4 setNeedsUpdateOf_];

    v5 = *(v2 + 192);

    [v5 setNeedsUpdateOf_];
  }
}

id sub_1A401684C(id result)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 24);
  *(v2 + 24) = result;
  if (v3 != (result & 1))
  {
    v4 = sub_1A4018384();
    [v4 setNeedsUpdateOf_];

    v5 = *(v2 + 192);

    return [v5 setNeedsUpdateOf_];
  }

  return result;
}

void sub_1A40168D8(float64x2_t a1, double a2, float64x2_t a3, double a4)
{
  v5 = *(v4 + 16);
  v6 = *(v5 + 32);
  v7 = *(v5 + 48);
  *(v5 + 32) = a1.f64[0];
  *(v5 + 40) = a2;
  *(v5 + 48) = a3.f64[0];
  *(v5 + 56) = a4;
  a1.f64[1] = a2;
  a3.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, a1), vceqq_f64(v7, a3)))) & 1) == 0)
  {
    v8 = sub_1A4018384();
    [v8 setNeedsUpdateOf_];

    v9 = *(v5 + 192);

    [v9 setNeedsUpdateOf_];
  }
}

void sub_1A4016980(double a1, double a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  if (v4 != a1 || v5 != a2)
  {
    v7 = sub_1A4018384();
    [v7 setNeedsUpdateOf_];
  }
}

void sub_1A40169FC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_1A4018400(Strong);
}

void sub_1A4016A60(void *a1)
{
  v2 = *(v1 + 16);
  v4 = *(v2 + 96);
  *(v2 + 96) = a1;
  v3 = a1;
  sub_1A4018B70(v4);
}

void sub_1A4016ABC(uint64_t (*a1)(void))
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 176);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v2 + 176) = v5;
  a1();
  v6 = *(v2 + 176);
  v4 = __OFSUB__(v6, 1);
  v7 = v6 - 1;
  if (v4)
  {
LABEL_8:
    __break(1u);
    return;
  }

  *(v2 + 176) = v7;
  if (!v7)
  {
    v8 = sub_1A4018384();
    [v8 updateIfNeeded];
  }
}

uint64_t sub_1A4016B68@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_1A5248714();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v28 - v7;
  sub_1A401ED44(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A401F358(0);
  MEMORY[0x1EEE9AC00](v12);
  v33 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = sub_1A524BC74();
  v11[1] = v14;
  sub_1A401F378(0);
  sub_1A4016EE0(v1, v11 + *(v15 + 44));
  v29 = sub_1A524A094();
  v32 = *(type metadata accessor for PhotosDynamicTitleOverlayController.OverlayView(0) + 24);
  sub_1A401DA00(v8);
  v31 = *MEMORY[0x1E697E7D0];
  v30 = *(v3 + 104);
  v30(v5);
  sub_1A5248704();
  v16 = *(v3 + 8);
  v16(v5, v2);
  v16(v8, v2);
  v28[1] = *v1;
  sub_1A5247BC4();
  v40 = v17;
  v41 = v18;
  v42 = v19;
  v43 = v20;
  v44 = 0;
  v21 = v33;
  sub_1A5249B34();
  sub_1A401F9E0(v11, v21, sub_1A401ED44);
  sub_1A524A0B4();
  sub_1A401DA00(v8);
  (v30)(v5, v31, v2);
  sub_1A5248704();
  v16(v5, v2);
  v16(v8, v2);
  sub_1A5247BC4();
  v35 = v22;
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v39 = 0;
  sub_1A401F410(0, &qword_1EB1305E0, sub_1A401F358);
  v26 = v34;
  sub_1A5249B34();
  return sub_1A401F9E0(v21, v26, sub_1A401F358);
}