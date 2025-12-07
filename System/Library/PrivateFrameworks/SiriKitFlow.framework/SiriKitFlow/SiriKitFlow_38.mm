void sub_1DCECFF4C(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, id a6, void *a7, uint64_t a8, uint64_t a9)
{
  v64 = a6;
  v65 = a7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v60 = &v49 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v62 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v19);
  v63 = &v49 - v20;
  v21 = type metadata accessor for SiriKitEventPayload(0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1, 0x49uLL);
  if ((__dst[9] & 1) == 0)
  {
    v56 = __dst[0];
    v58 = a3;
    v59 = a5;
    v55 = __dst[1];
    v27 = *(a1 + 32);
    v77 = *(a1 + 16);
    v78 = v27;
    v79 = *(a1 + 48);
    v80 = *(a1 + 64);
    v28 = *(a9 + 224);
    v29 = a5;
    v30 = v64;
    v57 = a8;
    v28(v66, v29, v64, 0, a8, a9);
    v31 = v30;
    if (LOBYTE(v66[0]))
    {
      v54 = a2;
      if (LOBYTE(v66[0]) == 1)
      {
        v32 = v65[17];
        v53 = v65[16];
        v51 = v32;
        v50 = __swift_project_boxed_opaque_existential_1(v65 + 13, v53);
        v49 = type metadata accessor for SiriKitEvent(0);
        *v24 = 6;
        v33 = v59;
        *(v24 + 1) = v31;
        *(v24 + 2) = v33;
        *(v24 + 3) = 0;
        *(v24 + 16) = 0;
        *(v24 + 5) = 0;
        *(v24 + 6) = 0;
        v34 = v55;
        *(v24 + 7) = v56;
        *(v24 + 8) = v34;
        *(v24 + 9) = 0xD000000000000012;
        *(v24 + 10) = 0x80000001DD111680;
        v24[88] = 44;
        swift_storeEnumTagMultiPayload();
        v64 = v31;
        sub_1DD0DCF8C();
      }

      v36 = a4;
      v37 = v30;
      v38 = v57;
      (*(a9 + 152))(v57, a9);
      v40 = v55;
      v39 = v56;
      v71 = v56;
      v72 = v55;
      v41 = *(a1 + 32);
      v73 = *(a1 + 16);
      v74 = v41;
      v75 = *(a1 + 48);
      v76 = *(a1 + 64);
      v42 = swift_allocObject();
      *(v42 + 16) = v38;
      *(v42 + 24) = a9;
      *(v42 + 32) = v54;
      v43 = v36;
      v52 = v36;
      v44 = v59;
      v45 = v65;
      *(v42 + 40) = v58;
      *(v42 + 48) = v45;
      *(v42 + 56) = v43;
      *(v42 + 64) = v44;
      *(v42 + 72) = v37;
      *(v42 + 80) = v39;
      *(v42 + 88) = v40;
      v46 = *(a1 + 32);
      *(v42 + 96) = *(a1 + 16);
      *(v42 + 112) = v46;
      *(v42 + 128) = *(a1 + 48);
      *(v42 + 144) = *(a1 + 64);
      swift_getAssociatedConformanceWitness();
      sub_1DCB09910(__dst, v66, &unk_1ECCA3260, &unk_1DD0E5AD0);
      v47 = v37;
      sub_1DD0DCF8C();
    }

    v66[0] = v56;
    v66[1] = v55;
    v35 = *(a1 + 32);
    v67 = *(a1 + 16);
    v68 = v35;
    v69 = *(a1 + 48);
    v70 = *(a1 + 64);
    sub_1DCECA5A0(a4, v59, v30, v66, MEMORY[0x1E69E7CC0], a2, v58, v57, a9, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
  }

  v25 = __dst[0];
  v26 = __dst[0];
  a2(v25, 1);
  sub_1DCB0E9D8(__dst, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

void sub_1DCED05A8(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v57 = a8;
  v58 = a5;
  v59 = a7;
  v61 = a2;
  v62 = a4;
  v60 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  v15 = *(v56 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v48 - v19;
  memcpy(__dst, a1, 0x49uLL);
  if ((__dst[9] & 1) == 0)
  {
    v52 = a9;
    v53 = __dst[0];
    v27 = *(a1 + 24);
    v66 = *(a1 + 8);
    v67 = v27;
    v28 = *(a1 + 56);
    v68 = *(a1 + 40);
    v69 = v28;
    v51 = a6;
    v55 = a11;
    v29 = *(a11 + 152);
    memcpy(v65, a1, 0x49uLL);
    sub_1DCBBF670(v65, &v63);
    v54 = v20;
    v50 = a3;
    v29(v60, a11);
    v30 = v56;
    (*(v56 + 16))(&v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v20, AssociatedTypeWitness);
    v31 = *(v30 + 80);
    v49 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = v30;
    v33 = (v31 + 56) & ~v31;
    v34 = (v15 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    v39 = v55;
    *(v38 + 2) = v60;
    *(v38 + 3) = v39;
    v40 = v49;
    v41 = v50;
    *(v38 + 4) = v61;
    *(v38 + 5) = v41;
    *(v38 + 6) = v62;
    (*(v32 + 32))(&v38[v33], v40, AssociatedTypeWitness);
    *&v38[v34] = v51;
    v42 = v58;
    *&v38[v48] = v59;
    *&v38[v35] = v57;
    v43 = v52;
    *&v38[v36] = v52;
    *&v38[v37] = v42;
    v44 = &v38[(v37 + 15) & 0xFFFFFFFFFFFFFFF8];
    v45 = v67;
    *(v44 + 8) = v66;
    *(v44 + 24) = v45;
    v46 = v69;
    *(v44 + 40) = v68;
    *v44 = v53;
    *(v44 + 56) = v46;
    swift_getAssociatedConformanceWitness();
    v47 = v43;
    swift_unknownObjectRetain();
    sub_1DD0DCF8C();
  }

  v21 = a3;
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDE57E18;
  v23 = sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1DD0E07C0;
  v63 = 0;
  v64 = 0xE000000000000000;
  memcpy(v65, a1, 0x49uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3260, &unk_1DD0E5AD0);
  sub_1DD0DEDBC();
  v25 = v63;
  v26 = v64;
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = sub_1DCB34060();
  *(v24 + 32) = v25;
  *(v24 + 40) = v26;
  sub_1DD0DD7EC("Received an error from DialogTemplating makeIntentHandledDialog: %@", 67, 2, &dword_1DCAFC000, v22, v23, v24);

  sub_1DCEC9DF0(__dst, v21);
}

uint64_t sub_1DCED0A4C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14)
{
  if ((a2 & 1) == 0)
  {
    v22 = swift_allocObject();
    v22[2] = a13;
    v22[3] = a14;
    v22[4] = a10;
    v22[5] = a11;
    v22[6] = a8;
    v22[7] = a9;
    v22[8] = a1;
    memcpy(v22 + 9, a12, 0x48uLL);
    v22[18] = a3;
    v22[19] = a7;
    v22[20] = a4;
    v22[21] = a5;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1DCED6F5C(a1, 0);
    v23 = a10;
    swift_unknownObjectRetain();
    v24 = a8;
    v25 = a9;
    sub_1DCBBF670(a12, v29);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDE57E18;
  v17 = sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DD0E07C0;
  v29[9] = a1;
  v30 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9338, &qword_1DD0FF9A0);
  sub_1DD0DEDBC();
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = sub_1DCB34060();
  *(v18 + 32) = 0;
  *(v18 + 40) = 0xE000000000000000;
  sub_1DD0DD7EC("Received an error from AceViewProviding makeAceViewsForHandleIntentWithUser: %@", 79, 2, &dword_1DCAFC000, v16, v17, v18);

  return a4(a1, 1);
}

void sub_1DCED0D30(uint64_t a1, char a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, const void *a8, uint64_t a9, uint64_t a10, void (*a11)(void, void, void, void, void, void), uint64_t a12, uint64_t a13, uint64_t a14)
{
  v48 = a8;
  v49 = a5;
  v44 = a7;
  v51 = a6;
  v42 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v17);
  v19 = v39 - v18;
  v20 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    v21 = a3;
    MEMORY[0x1E12A6920]();
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD0DE33C();
    }

    sub_1DD0DE3AC();
  }

  v52 = a12;
  v43 = a11;
  v45 = a9;
  v46 = a10;
  if (a2)
  {
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDE57E18;
    v23 = sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1DD0E07C0;
    v53 = 0;
    v54 = 0xE000000000000000;
    v55 = a1;
    v56 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9340, &qword_1DD0FF9A8);
    sub_1DD0DEDBC();
    v25 = v53;
    v26 = v54;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1DCB34060();
    *(v24 + 32) = v25;
    *(v24 + 40) = v26;
    sub_1DD0DD7EC("Received an error from AceViewProvider makeCommandsAfterAceViewsForHandleIntentWithUser: %@", 91, 2, &dword_1DCAFC000, v22, v23, v24);
  }

  else
  {

    sub_1DCBB920C(v27);
  }

  v28 = swift_allocObject();
  *(v28 + 16) = v20;
  v39[1] = v28;
  v29 = v42;
  (*(a14 + 192))(a13, a14);
  AssociatedConformanceWitness = v57;
  v30 = swift_allocObject();
  v30[2] = a13;
  v30[3] = a14;
  v30[4] = v44;
  v31 = v48;
  memcpy(v30 + 5, v48, 0x48uLL);
  v41 = v19;
  v32 = v49;
  v30[14] = v29;
  v30[15] = v32;
  v33 = v51;
  v34 = v45;
  v30[16] = v51;
  v30[17] = v34;
  v35 = AssociatedConformanceWitness;
  v30[18] = v28;
  v30[19] = v35;
  v36 = v43;
  v30[20] = v46;
  v30[21] = v36;
  v30[22] = v52;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = *(AssociatedConformanceWitness + 64);

  sub_1DCBBF670(v31, &v53);
  swift_unknownObjectRetain();
  v37 = v32;
  v38 = v33;
  sub_1DD0DCF8C();
}

void sub_1DCED1188(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v157 = a7;
  v154 = a6;
  v161 = a5;
  v160 = a4;
  v156 = a3;
  v153 = a1;
  v159 = a14;
  v158 = a13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v149 = &v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v148 = &v145 - v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v167 = &v145 - v24;
  v150 = type metadata accessor for AceOutput(0);
  v169 = *(v150 - 1);
  v26 = MEMORY[0x1EEE9AC00](v150, v25);
  v28 = &v145 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v168 = (&v145 - v31);
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v162 = &v145 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v155 = &v145 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v171 = &v145 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v170 = &v145 - v43;
  MEMORY[0x1EEE9AC00](v42, v44);
  v45 = sub_1DCB08B14(a2);
  v164 = v28;
  if (v45 || *(*(v156 + 5) + 16) || *(*(v156 + 4) + 16)) && ((*(v159 + 128))(v161, v154, v158))
  {
    v46 = v159;
    v47 = v161;
    v48 = v158;
    if (((*(v159 + 136))(v161, v154, v158, v159) & 1) == 0)
    {
      v92 = v157;
      v171 = a2;
      v93 = v157[11];
      v94 = v157[12];
      __swift_project_boxed_opaque_existential_1(v157 + 8, v93);
      LOBYTE(v93) = (*(v94 + 96))(v93, v94);
      v95 = v156;
      LODWORD(v170) = (*(v156 + 7) - 3) < 0xFFFFFFFFFFFFFFFELL;
      v96 = (*(v46 + 320))(v47, v48, v46);
      v97 = type metadata accessor for NLContextUpdate(0);
      v98 = v167;
      __swift_storeEnumTagSinglePayload(v167, 1, 1, v97);
      memset(v174, 0, 40);
      memcpy(__dst, v95, sizeof(__dst));
      static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)(__dst, (v92 + 8), v93 & 1, v171, v170, v96 & 1, v98, MEMORY[0x1E69E7CC0], v174, 0, v145, *(&v145 + 1), v146.i64[0], v146.i64[1], v147, v148, v149, v150, v151, *(&v151 + 1), v152, *(&v152 + 1));
    }

    sub_1DCECC184(a2);
    v50 = v49;
    v51 = 0;
    v166 = *(v49 + 16);
    v163 = v46 + 320;
    v146 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
    v145 = xmmword_1DD0E1E40;
    v52 = v156;
    v165 = v49;
    while (v166 != v51)
    {
      v53 = *(v50 + 16);
      if (v51 >= v53)
      {
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v54 = *(v50 + 8 * v51 + 32);
      if (v51)
      {
        memcpy(__dst, v52, sizeof(__dst));
        v55 = v52;
        v56 = v157;
        v57 = v157[11];
        v58 = v157[12];
        __swift_project_boxed_opaque_existential_1(v157 + 8, v57);
        v59 = *(v58 + 96);

        LOBYTE(v57) = v59(v57, v58);
        v60 = (*(v55 + 7) - 3) < 0xFFFFFFFFFFFFFFFELL;
        v61 = (*(v159 + 320))(v161, v158);
        v62 = type metadata accessor for NLContextUpdate(0);
        v63 = v167;
        __swift_storeEnumTagSinglePayload(v167, 1, 1, v62);
        memset(v174, 0, 40);
        v64 = v61 & 1;
        v65 = v170;
        static AceOutputHelper.makeSummaryViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)(__dst, (v56 + 8), v57 & 1, v54, v60, v64, v63, MEMORY[0x1E69E7CC0]);

        sub_1DCB0E9D8(v174, &unk_1ECCA3280, &unk_1DD0E23D0);
        sub_1DCB0E9D8(v63, &unk_1ECCA3270, &qword_1DD0E0F70);
        sub_1DCB6FF74(v65, v171);
        swift_beginAccess();
        v66 = *(a8 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a8 + 16) = v66;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DCE19C64();
          v66 = v88;
          *(a8 + 16) = v88;
        }

        v68 = *(v66 + 16);
        v52 = v156;
        v28 = v164;
        v50 = v165;
        if (v68 >= *(v66 + 24) >> 1)
        {
          sub_1DCE19C64();
          v66 = v89;
        }

        *(v66 + 16) = v68 + 1;
        sub_1DCB6DF70(v171, v66 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v68);
        *(a8 + 16) = v66;
        swift_endAccess();
        v69 = &v178;
      }

      else
      {
        if (v53 > 1)
        {

          sub_1DD0DCF8C();
        }

        v70 = *(v52 + 8);
        v71 = v52[2];
        v152 = v52[3];
        v151 = v71;
        v72 = *(v52 + 2);
        v73 = *(v52 + 3);
        v75 = *v52;
        v74 = *(v52 + 1);

        sub_1DCBBF670(v52, __dst);
        v76 = MEMORY[0x1E69E7CC0];
        *__dst = v75;
        *&__dst[8] = v74;
        *&__dst[16] = v72;
        *&__dst[24] = v73;
        *&__dst[32] = v151;
        *&__dst[48] = v152;
        *&__dst[64] = v70;
        memcpy(v174, __dst, sizeof(v174));
        v77 = v157;
        v78 = v157[11];
        v79 = v157[12];
        __swift_project_boxed_opaque_existential_1(v157 + 8, v78);
        LOBYTE(v78) = (*(v79 + 96))(v78, v79);
        v80 = (*(v52 + 7) - 3) < 0xFFFFFFFFFFFFFFFELL;
        LOBYTE(v72) = (*(v159 + 320))(v161, v158);
        v81 = type metadata accessor for NLContextUpdate(0);
        v82 = v167;
        __swift_storeEnumTagSinglePayload(v167, 1, 1, v81);
        v173 = 0;
        memset(v172, 0, sizeof(v172));
        v83 = v72 & 1;
        v84 = v155;
        static AceOutputHelper.makeConfirmedViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)(v174, (v77 + 8), v78 & 1, v54, v80, v83, v82, v76);

        sub_1DCB0E9D8(v172, &unk_1ECCA3280, &unk_1DD0E23D0);
        sub_1DCB0E9D8(v82, &unk_1ECCA3270, &qword_1DD0E0F70);
        sub_1DCBF48A4(__dst);
        sub_1DCB6FF74(v84, v162);
        swift_beginAccess();
        v85 = *(a8 + 16);
        v86 = swift_isUniquelyReferenced_nonNull_native();
        *(a8 + 16) = v85;
        if ((v86 & 1) == 0)
        {
          sub_1DCE19C64();
          v85 = v90;
          *(a8 + 16) = v90;
        }

        v28 = v164;
        v50 = v165;
        v87 = *(v85 + 16);
        if (v87 >= *(v85 + 24) >> 1)
        {
          sub_1DCE19C64();
          v85 = v91;
        }

        *(v85 + 16) = v87 + 1;
        sub_1DCB6DF70(v162, v85 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v87);
        *(a8 + 16) = v85;
        swift_endAccess();
        v69 = __dst;
      }

      sub_1DCED65D8(*(v69 - 32), type metadata accessor for AceOutput);
      ++v51;
    }
  }

  v99 = MEMORY[0x1E69E7CC0];
  v177 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v155 = *(a8 + 16);
  v167 = *(v155 + 2);
  if (!v167)
  {
    v101 = v99;
LABEL_59:
    sub_1DCBB920C(v101);

    sub_1DCBB920C(v124);
    v51 = v177;
    __dst[0] = 7;
    v125 = (*(v159 + 304))(__dst, v161, v154, v158);
    v126 = v125;
    v127 = v153;
    v128 = v149;
    if (v125)
    {
      v129 = type metadata accessor for DefaultFlowActivity();
      v125 = sub_1DCED7108(qword_1ECCA3720, type metadata accessor for DefaultFlowActivity, &protocol conformance descriptor for DefaultFlowActivity);
    }

    else
    {
      v129 = 0;
      *&v174[8] = 0;
      *&v174[16] = 0;
    }

    *v174 = v126;
    *&v174[24] = v129;
    *&v174[32] = v125;
    v176 = MEMORY[0x1E69E7CC0];
    v130 = v148;
    sub_1DCB09910(v127, v148, &unk_1ECCA3270, &qword_1DD0E0F70);
    v131 = type metadata accessor for NLContextUpdate(0);
    if (__swift_getEnumTagSinglePayload(v130, 1, v131) == 1)
    {
      sub_1DCB0E9D8(v130, &unk_1ECCA3270, &qword_1DD0E0F70);
    }

    else
    {
      *__dst = 0;
      NLContextUpdate.doConvertToAceContextUpdate(options:)(__dst);
      v132 = sub_1DCED65D8(v130, type metadata accessor for NLContextUpdate);
      MEMORY[0x1E12A6920](v132);
      if (*((v176 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v176 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD0DE33C();
      }

      sub_1DD0DE3AC();
    }

    sub_1DCB09910(v127, v128, &unk_1ECCA3270, &qword_1DD0E0F70);
    if (__swift_getEnumTagSinglePayload(v128, 1, v131) == 1)
    {
      sub_1DCB0E9D8(v128, &unk_1ECCA3270, &qword_1DD0E0F70);
    }

    else
    {
      NLContextUpdate.doConvertToServerContextUpdate()();
      v133 = sub_1DCED65D8(v128, type metadata accessor for NLContextUpdate);
      MEMORY[0x1E12A6920](v133);
      if (*((v176 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v176 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD0DE33C();
      }

      sub_1DD0DE3AC();
    }

    if (MEMORY[0x1E69E7CC0] >> 62)
    {
LABEL_84:
      sub_1DCB10E5C(0, &qword_1EDE46210, 0x1E69C7738);
      v134 = sub_1DD0DEE0C();
    }

    else
    {
      v134 = MEMORY[0x1E69E7CC0];
      sub_1DD0DEE7C();
    }

    v171 = a11;
    sub_1DCBB920C(v134);
    sub_1DCBB920C(v51);
    v135 = v176;
    sub_1DCB09910(v174, __dst, &unk_1ECCA3280, &unk_1DD0E23D0);
    v136 = v150;
    sub_1DCB09910(v153, &v28[v150[7]], &unk_1ECCA3270, &qword_1DD0E0F70);
    v137 = v136[9];
    v138 = sub_1DD0DD10C();
    __swift_storeEnumTagSinglePayload(&v28[v137], 1, 1, v138);
    v139 = v136[8];
    v140 = *MEMORY[0x1E69D0678];
    v141 = sub_1DD0DD15C();
    (*(*(v141 - 8) + 104))(&v28[v139], v140, v141);
    *(v28 + 15) = 0;
    *(v28 + 104) = 0u;
    *(v28 + 88) = 0u;
    sub_1DCB6C5E8(__dst, (v28 + 88));
    v28[v136[10]] = 0;
    *v28 = v135;
    *(v28 + 8) = 0u;
    *(v28 + 24) = 0u;
    *(v28 + 40) = 0u;
    *(v28 + 56) = 0u;
    *(v28 + 9) = 0;
    v28[80] = 3;
    sub_1DCB0E9D8(v174, &unk_1ECCA3280, &unk_1DD0E23D0);
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v142 = swift_allocObject();
    *(v142 + 16) = xmmword_1DD0E07C0;
    v143 = sub_1DCB08B14(v135);
    v144 = MEMORY[0x1E69E65A8];
    *(v142 + 56) = MEMORY[0x1E69E6530];
    *(v142 + 64) = v144;
    *(v142 + 32) = v143;
    sub_1DD0DD7EC("RCHCommonResponseGenerator successfully assembled %d commands. Attempting to submit...", v145);

    sub_1DCB82888();
  }

  v166 = &v155[(*(v169 + 80) + 32) & ~*(v169 + 80)];
  v165 = *(v169 + 72);

  v100 = 0;
  v101 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v102 = v168;
    sub_1DCB6FF74(&v166[v165 * v100], v168);
    v103 = *v102;

    sub_1DCED65D8(v102, type metadata accessor for AceOutput);
    v51 = v103 >> 62;
    if (v103 >> 62)
    {
      v104 = sub_1DD0DEB3C();
    }

    else
    {
      v104 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v105 = v101 >> 62;
    if (v101 >> 62)
    {
      v106 = sub_1DD0DEB3C();
    }

    else
    {
      v106 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v107 = v106 + v104;
    if (__OFADD__(v106, v104))
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v171 = v104;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      break;
    }

    if (v105)
    {
      goto LABEL_37;
    }

LABEL_38:
    v101 = sub_1DD0DEC7C();
    v109 = v101 & 0xFFFFFFFFFFFFFF8;
LABEL_39:
    v170 = v101;
    v110 = *(v109 + 16);
    v111 = (*(v109 + 24) >> 1) - v110;
    v112 = v109 + 8 * v110;
    v169 = v109;
    if (v51)
    {
      v114 = sub_1DD0DEB3C();
      if (!v114)
      {
LABEL_53:

        if (v171 > 0)
        {
          goto LABEL_78;
        }

        goto LABEL_54;
      }

      v115 = v114;
      v116 = sub_1DD0DEB3C();
      if (v111 < v116)
      {
        goto LABEL_81;
      }

      if (v115 < 1)
      {
        goto LABEL_83;
      }

      v162 = v116;
      v163 = v100;
      v117 = v112 + 32;
      sub_1DCED70A4();
      for (i = 0; i != v115; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28E8, &qword_1DD0FF9B0);
        v51 = sub_1DCBC9A2C(__dst, i, v103);
        v120 = *v119;
        (v51)(__dst, 0);
        *(v117 + 8 * i) = v120;
      }

      v28 = v164;
      v100 = v163;
      v113 = v162;
    }

    else
    {
      v51 = v103 & 0xFFFFFFFFFFFFFF8;
      v113 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v113)
      {
        goto LABEL_53;
      }

      if (v111 < v113)
      {
        goto LABEL_82;
      }

      sub_1DCB10E5C(0, &qword_1EDE46210, 0x1E69C7738);
      swift_arrayInitWithCopy();
    }

    if (v113 < v171)
    {
      goto LABEL_78;
    }

    if (v113 > 0)
    {
      v121 = *(v169 + 16);
      v122 = __OFADD__(v121, v113);
      v123 = v121 + v113;
      if (v122)
      {
        goto LABEL_79;
      }

      *(v169 + 16) = v123;
    }

LABEL_54:
    ++v100;
    v101 = v170;
    if (v100 == v167)
    {

      goto LABEL_59;
    }
  }

  if (!v105)
  {
    v109 = v101 & 0xFFFFFFFFFFFFFF8;
    if (v107 <= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_37:
  sub_1DD0DEB3C();
  goto LABEL_38;
}

uint64_t sub_1DCED2630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t *a8, uint64_t (*a9)(uint64_t, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a2 & 1) == 0)
  {
    v22 = 7;
    v21 = 47;
    v19 = 2;
    v20 = 0;
    sub_1DCFA6D00((a3 + 104), &v22, a4, a5, a6, &v21, 0, 1, a7, &v19, *a8, a8[1], a11, a12);
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DD0E07C0;
  swift_getErrorValue();
  v14 = sub_1DD0DF18C();
  v16 = v15;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1DCB34060();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  sub_1DD0DD7EC("RCHCommonResponseGenerator received an error while submitting commands: %s", v18);

  return a9(a1, 1);
}

void sub_1DCED2838(void *a1, char a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14)
{
  v46 = a8;
  v47 = a5;
  v48 = a6;
  v49 = a3;
  v50 = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v44 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v40 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v21);
  v22 = type metadata accessor for AceOutput(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  if ((a2 & 1) == 0)
  {
    if (sub_1DCB08B14(a1))
    {
      memcpy(__dst, v48, sizeof(__dst));
      sub_1DCECCCC4();
      sub_1DCB82888();
    }

    v41 = a12;
    v42 = a11;
    v43 = a10;
    v32 = *(a14 + 176);
    v40 = a9;
    v32(a13, a14);
    sub_1DCB09910(v46, v19, &unk_1ECCA3270, &qword_1DD0E0F70);
    v33 = (*(v44 + 80) + 160) & ~*(v44 + 80);
    v34 = swift_allocObject();
    v34[2] = a13;
    v34[3] = a14;
    v35 = v50;
    v34[4] = v49;
    v34[5] = v35;
    v36 = v48;
    v34[6] = v47;
    v34[7] = a9;
    v37 = v42;
    v34[8] = v43;
    v34[9] = v37;
    v38 = v41;
    v34[10] = v41;
    memcpy(v34 + 11, v36, 0x48uLL);
    sub_1DCBB6C68(v19, v34 + v33);
    swift_getAssociatedConformanceWitness();
    v39 = v38;
    sub_1DD0DCF8C();
  }

  v24 = a1;
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDE57E18;
  v26 = sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1DD0E07C0;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  v51 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  v28 = __dst[0];
  v29 = __dst[1];
  *(v27 + 56) = MEMORY[0x1E69E6158];
  *(v27 + 64) = sub_1DCB34060();
  *(v27 + 32) = v28;
  *(v27 + 40) = v29;
  sub_1DD0DD7EC("Received an error from AceViewProviding: %@", 43, 2, &dword_1DCAFC000, v25, v26, v27);

  v30 = a1;
  v49(a1, 1);
  v31 = MEMORY[0x1E69E7CF8];
  sub_1DCED6DE0(a1, 1, MEMORY[0x1E69E7CF8]);
  sub_1DCED6DE0(a1, 1, v31);
}

uint64_t sub_1DCED2DB8(const void *a1, void (*a2)(id, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v35[4] = a5;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v22 = v35 - v21;
  memcpy(__dst, a1, 0x49uLL);
  if ((__dst[9] & 1) == 0)
  {
    v35[2] = a8;
    v35[3] = a11;
    v35[1] = a7;
    sub_1DCB09910(a10, v22, &unk_1ECCA3270, &qword_1DD0E0F70);
    v33 = (*(v19 + 80) + 112) & ~*(v19 + 80);
    v34 = swift_allocObject();
    v34[2] = a2;
    v34[3] = a3;
    memcpy(v34 + 4, a9, 0x48uLL);
    v34[13] = a4;
    sub_1DCBB6C68(v22, v34 + v33);
    sub_1DD0DCF8C();
  }

  v23 = a2;
  v24 = __dst[0];
  v25 = __dst[0];
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v26 = qword_1EDE57E18;
  v27 = sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1DD0E07C0;
  v36 = 0;
  v37 = 0xE000000000000000;
  v35[5] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  v29 = v36;
  v30 = v37;
  *(v28 + 56) = MEMORY[0x1E69E6158];
  *(v28 + 64) = sub_1DCB34060();
  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  sub_1DD0DD7EC("Received an error from makeOpenAppDialog: %@", 44, 2, &dword_1DCAFC000, v26, v27, v28);

  v31 = v24;
  v23(v24, 1);
  sub_1DCB0E9D8(__dst, &unk_1ECCA3260, &unk_1DD0E5AD0);
  return sub_1DCB0E9D8(__dst, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

void sub_1DCED3104(void *a1, char a2, void (*a3)(void *, uint64_t), uint64_t a4, const void *a5, uint64_t a6, uint64_t a7)
{
  v10 = type metadata accessor for AceOutput(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  if ((a2 & 1) == 0)
  {
    sub_1DD0DCF8C();
  }

  v12 = a1;
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDE57E18;
  v14 = sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DD0E07C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1DCB34060();
  *(v15 + 32) = 0;
  *(v15 + 40) = 0xE000000000000000;
  sub_1DD0DD7EC("Received an error from makeDefaultOpenAppButtonViewBuilder: %@", 62, 2, &dword_1DCAFC000, v13, v14, v15);

  v16 = a1;
  a3(a1, 1);
  v17 = MEMORY[0x1E69E7D48];
  sub_1DCED6DE0(a1, 1, MEMORY[0x1E69E7D48]);
  sub_1DCED6DE0(a1, 1, v17);
}

uint64_t sub_1DCED3468(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t *a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void *, uint64_t, uint64_t *), uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a2 & 1) == 0)
  {
    sub_1DCB17D04(a3 + 104, v22);
    v21 = 6;
    v20 = 15;
    v18 = 3;
    v19 = 0;
    sub_1DCFA6D00(v22, &v21, a4, a5, a6, &v20, 0, 1, a7, &v18, *a8, a8[1], a11, a12);
  }

  return a9(a1, 1, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1DCED354C(uint64_t a1, char a2, void *a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v16 = type metadata accessor for SiriKitEventPayload(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v24[2] = a8;
    v24[3] = a7;
    v21 = *a6;
    v22 = a6[1];
    v24[1] = __swift_project_boxed_opaque_existential_1(a3 + 13, a3[16]);
    type metadata accessor for SiriKitEvent(0);
    *v19 = 6;
    *(v19 + 1) = a4;
    *(v19 + 2) = a5;
    *(v19 + 3) = 3;
    *(v19 + 16) = 0;
    *(v19 + 5) = 0;
    *(v19 + 6) = 0;
    *(v19 + 7) = v21;
    *(v19 + 8) = v22;
    *(v19 + 9) = 0xD000000000000012;
    *(v19 + 10) = 0x80000001DD111680;
    v19[88] = 44;
    swift_storeEnumTagMultiPayload();
    v23 = a4;
    sub_1DD0DCF8C();
  }

  return a7(a1, 1);
}

uint64_t sub_1DCED36F8(uint64_t *a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  v12 = *a1;
  v13 = *(a1 + 72);
  if ((v13 & 1) == 0)
  {
    v18 = a1[7];
    v17 = a1[8];
    v19 = *(a4 + 16);
    v40 = *(a1 + 1);
    v41 = *(a1 + 3);
    v42 = *(a1 + 5);
    v39 = v12;
    v43 = v18;
    v44 = v17;
    v28 = v17;
    v20 = *(a12 + 320);
    v32 = v12;
    v33 = *(a1 + 1);
    v34 = *(a1 + 3);
    v35 = *(a1 + 5);
    v36 = v18;
    v37 = v17;
    v38 = v13;
    sub_1DCBBF670(&v32, v31);
    v23 = v20(a6, a11, a12);
    v24 = (*(*v19 + 96))(&v39, (v18 - 3) < 0xFFFFFFFFFFFFFFFELL, v23 & 1);
    v25 = swift_allocObject();
    *(v25 + 16) = a11;
    *(v25 + 24) = a12;
    *(v25 + 32) = a2;
    *(v25 + 40) = a3;
    *(v25 + 48) = a4;
    *(v25 + 56) = v12;
    v26 = *(a1 + 3);
    *(v25 + 64) = *(a1 + 1);
    *(v25 + 80) = v26;
    *(v25 + 96) = *(a1 + 5);
    *(v25 + 112) = v18;
    *(v25 + 120) = v28;
    *(v25 + 128) = v24;
    *(v25 + 136) = a5;
    *(v25 + 144) = a6;
    *(v25 + 152) = a10;
    *(v25 + 160) = a8;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1DD0DCF8C();
  }

  return a2(*a1, 1);
}

uint64_t sub_1DCED39BC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = v35 - v21;
  v23 = type metadata accessor for AceOutput(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  if ((a2 & 1) == 0)
  {
    v35[4] = a4;
    v35[5] = a3;
    v35[0] = a1;
    v35[1] = a7;
    v35[2] = a12;
    v35[3] = a11;
    memcpy(__dst, a6, sizeof(__dst));
    (*(a13 + 320))(a9, a12, a13);
    v32 = type metadata accessor for NLContextUpdate(0);
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD0E15D0;
    *(inited + 32) = a10;
    v34 = a10;
    sub_1DCECCCC4();
    swift_setDeallocating();
    sub_1DCC65718();
    sub_1DCB0E9D8(v22, &unk_1ECCA3270, &qword_1DD0E0F70);
    sub_1DCB82888();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDE57E18;
  v26 = sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1DD0E07C0;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  v35[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  v28 = a1;
  v29 = __dst[0];
  v30 = __dst[1];
  *(v27 + 56) = MEMORY[0x1E69E6158];
  *(v27 + 64) = sub_1DCB34060();
  *(v27 + 32) = v29;
  *(v27 + 40) = v30;
  sub_1DD0DD7EC("Received an error from AceViewProviding: %@", 43, 2, &dword_1DCAFC000, v25, v26, v27);

  return a3(v28, 1);
}

void sub_1DCED3DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, char a24)
{
  OUTLINED_FUNCTION_50();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  type metadata accessor for SiriKitEventPayload(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v38, v39);
  OUTLINED_FUNCTION_16();
  v42 = v41 - v40;
  if ((v35 & 1) == 0)
  {
    v43 = *v27;
    v44 = v27[1];
    __swift_project_boxed_opaque_existential_1((v33 + 104), *(v33 + 128));
    type metadata accessor for SiriKitEvent(0);
    *v42 = a23;
    *(v42 + 8) = v31;
    *(v42 + 16) = v29;
    *(v42 + 24) = 3;
    *(v42 + 32) = 0;
    *(v42 + 40) = 0;
    *(v42 + 48) = 0;
    *(v42 + 56) = v43;
    *(v42 + 64) = v44;
    *(v42 + 72) = 0;
    *(v42 + 80) = 0;
    *(v42 + 88) = a24;
    swift_storeEnumTagMultiPayload();
    v45 = v31;
    sub_1DD0DCF8C();
  }

  v25(v37, 1);
  OUTLINED_FUNCTION_49();
}

void sub_1DCED3F38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, char a10, char a11, uint64_t a12, uint64_t a13)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v16);
  v17 = *a1;
  v18 = *(a1 + 8);
  if (v18 == 1)
  {
    sub_1DCED6B04(v17, 1u);
    sub_1DCB6DECC(v17, 1u);
    if ([v17 errorCode] == 1305)
    {
      if (qword_1EDE4F908 != -1)
      {
        swift_once();
      }

      v21 = qword_1EDE57E18;
      v22 = sub_1DD0DE6DC();
      sub_1DD0DD7EC("Launch app command returns error code 1305 for carplay devices", 62, 2, &dword_1DCAFC000, v21, v22, MEMORY[0x1E69E7CC0]);
      (*(a13 + 176))(a12, a13);
      v23 = swift_allocObject();
      *(v23 + 16) = a12;
      *(v23 + 24) = a13;
      *(v23 + 32) = a4;
      *(v23 + 40) = a5;
      *(v23 + 48) = v17;
      *(v23 + 56) = 1;
      *(v23 + 64) = a6;
      *(v23 + 72) = a2;
      *(v23 + 80) = a7;
      *(v23 + 88) = a3;
      swift_getAssociatedConformanceWitness();
      sub_1DCED6B04(v17, 1u);
      sub_1DD0DCF8C();
    }

    sub_1DCB66C54();
    v28 = swift_allocError();
    *v29 = v17;
    *(v29 + 8) = 1;
    sub_1DCB6DECC(v17, 1u);
    a4(v28, 1);

    sub_1DCBCC7B0(v17, 1u);
    v26 = v17;
    v27 = 1;
  }

  else
  {
    if (v18 == 255)
    {
      v39 = 7;
      v38 = 78;
      if (a11)
      {
        v19 = 256;
      }

      else
      {
        v19 = 0;
      }

      v36 = a9;
      v37 = v19 & 0xFFFE | a10 & 1;
      v20 = a9;
      sub_1DCFA6D00((a6 + 104), &v39, a3, a2, a7, &v38, 0, 1, a8, &v36, 0, 0, a12, a13);
    }

    sub_1DCB66C54();
    v24 = swift_allocError();
    *v25 = v17;
    *(v25 + 8) = v18;
    sub_1DCED6B04(v17, v18);
    sub_1DCB6DECC(v17, v18);
    a4(v24, 1);

    v26 = v17;
    v27 = v18;
  }

  sub_1DCBCC7B0(v26, v27);
}

void sub_1DCED43A4(_BYTE *a1, void (*a2)(void *, uint64_t), uint64_t a3, void *a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v35 = a8;
  v36 = a2;
  v32 = a7;
  v33 = a10;
  v34 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = v30 - v18;
  v20 = type metadata accessor for AceOutput(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v22 = a1[72];
  if ((v22 & 1) == 0)
  {
    memcpy(__dst, a1, sizeof(__dst));
    memcpy(v39, a1, sizeof(v39));
    v30[3] = *(*(a6 + 16) + 16);
    v31 = a3;
    v28 = *(a11 + 320);
    memcpy(v40, a1, 0x48uLL);
    v40[72] = v22;
    sub_1DCBBF670(v40, v37);
    v28(v35, v33, a11);
    v29 = type metadata accessor for NLContextUpdate(0);
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v29);
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  }

  v23 = v36;
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDE57E18;
  v25 = sub_1DD0DE6DC();
  sub_1DD0DD7EC("makeIntentHandledContinueInAppDialog returns failure", 52, 2, &dword_1DCAFC000, v24, v25, MEMORY[0x1E69E7CC0]);
  sub_1DCB66C54();
  v26 = swift_allocError();
  *v27 = a4;
  *(v27 + 8) = a5;
  sub_1DCB6DECC(a4, a5);
  v23(v26, 1);
}

uint64_t sub_1DCED4794(uint64_t a1, char a2, void *a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v30 = a7;
  v15 = type metadata accessor for SiriKitEventPayload(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1DD0DEC1C();
    MEMORY[0x1E12A6780](0xD000000000000051, 0x80000001DD121100);
    v31 = 1305;
    v19 = sub_1DD0DF03C();
    MEMORY[0x1E12A6780](v19);

    v29 = a8;
    v20 = v32;
    v27 = v33;
    v22 = *a6;
    v21 = a6[1];
    v28 = __swift_project_boxed_opaque_existential_1(a3 + 13, a3[16]);
    type metadata accessor for SiriKitEvent(0);
    *v18 = 6;
    *(v18 + 1) = v32;
    *(v18 + 1) = *(&v32 + 3);
    *(v18 + 1) = a4;
    *(v18 + 2) = a5;
    *(v18 + 3) = 3;
    *(v18 + 16) = 0;
    *(v18 + 34) = v31;
    *(v18 + 19) = WORD2(v31);
    *(v18 + 5) = 0;
    *(v18 + 6) = 0;
    *(v18 + 7) = v22;
    *(v18 + 8) = v21;
    v23 = v27;
    *(v18 + 9) = v20;
    *(v18 + 10) = v23;
    v18[88] = 78;
    swift_storeEnumTagMultiPayload();
    v24 = a4;
    sub_1DD0DCF8C();
  }

  return v30(a1, 1);
}

uint64_t sub_1DCED49BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, char a9, char a10, uint64_t (*a11)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void *, uint64_t, void *), uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((a2 & 1) == 0)
  {
    v25 = 7;
    v24 = 78;
    if (a10)
    {
      v19 = 256;
    }

    else
    {
      v19 = 0;
    }

    v22 = a8;
    v23 = v19 & 0xFFFE | a9 & 1;
    v20 = a8;
    sub_1DCFA6D00((a3 + 104), &v25, a4, a5, a6, &v24, 0, 1, a7, &v22, 0, 0, a13, a14);
  }

  return a11(a1, 1, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1DCED4AAC(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v20 = *a1;
  if ((a1[9] & 1) == 0)
  {
    v22 = a1[1];
    v26 = 7;
    v25 = 39;
    v23 = 0;
    LOWORD(v24) = 0;
    sub_1DCFA6D00((a4 + 104), &v26, a5, a6, a7, &v25, 0, 1, a8, &v23, v20, v22, a10, a11);
  }

  return a2(*a1, 1);
}

uint64_t sub_1DCED4C7C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v33 = a3;
  v34 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = v32 - v19;
  v21 = type metadata accessor for AceOutput(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  if ((a2 & 1) == 0)
  {
    v32[1] = a5;
    if (sub_1DCB08B14(a1))
    {
      memcpy(__dst, a6, sizeof(__dst));
      (*(a13 + 320))(a10, a12, a13);
      v29 = type metadata accessor for NLContextUpdate(0);
      __swift_storeEnumTagSinglePayload(v20, 1, 1, v29);
      sub_1DCECCCC4();
      sub_1DCB0E9D8(v20, &unk_1ECCA3270, &qword_1DD0E0F70);
    }

    else
    {
      if (qword_1EDE4F908 != -1)
      {
        swift_once();
      }

      v30 = qword_1EDE57E18;
      v31 = sub_1DD0DE6DC();
      sub_1DD0DD7EC("No additional ace views provided for handoff", 44, 2, &dword_1DCAFC000, v30, v31, MEMORY[0x1E69E7CC0]);
      (*(a13 + 320))(a10, a12, a13);
      sub_1DCECD4DC();
    }

    sub_1DCB82888();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDE57E18;
  v24 = sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1DD0E07C0;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  v35 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  v26 = __dst[0];
  v27 = __dst[1];
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1DCB34060();
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  sub_1DD0DD7EC("Received an error from AceViewProviding when creating views for handoff: %@", 75, 2, &dword_1DCAFC000, v23, v24, v25);

  return v33(a1, 1);
}

uint64_t sub_1DCED509C(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v54 = a6;
  v53 = a5;
  v50 = a4;
  v55 = a3;
  v52 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v22);
  v24 = &v42 - v23;
  memcpy(__dst, a1, 0x49uLL);
  if ((__dst[9] & 1) == 0)
  {
    v49 = a14;
    v48 = a13;
    v46 = a12;
    v45 = a11;
    v51 = a9;
    v26 = *(a1 + 24);
    v57 = *(a1 + 8);
    v58 = v26;
    v27 = *(a1 + 56);
    v59 = *(a1 + 40);
    v60 = v27;
    v28 = *(v20 + 16);
    v44 = __dst[0];
    v28(v24, a10, AssociatedTypeWitness);
    v29 = (*(v20 + 80) + 88) & ~*(v20 + 80);
    v30 = (v21 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = a7;
    v42 = AssociatedTypeWitness;
    v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v31 + 79) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 2) = a15;
    *(v32 + 3) = a16;
    v33 = v55;
    *(v32 + 4) = v52;
    *(v32 + 5) = v33;
    v34 = v54;
    *(v32 + 6) = v53;
    *(v32 + 7) = v34;
    *(v32 + 8) = a7;
    *(v32 + 9) = a8;
    *(v32 + 10) = v51;
    (*(v20 + 32))(&v32[v29], v24, v42);
    v35 = &v32[v30];
    v36 = v46;
    *v35 = v45;
    v35[1] = v36;
    v37 = &v32[v31];
    v38 = v59;
    *(v37 + 56) = v60;
    *(v37 + 40) = v38;
    v39 = v57;
    *(v37 + 24) = v58;
    *v37 = v44;
    *(v37 + 8) = v39;
    v40 = &v32[v43];
    v41 = v49;
    *v40 = v48;
    v40[1] = v41;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1DCB09910(__dst, v56, &unk_1ECCA3260, &unk_1DD0E5AD0);
    sub_1DD0DCF8C();
  }

  return v52(__dst[0], 1);
}

uint64_t sub_1DCED5478(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v55 = v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v54 = v44 - v30;
  MEMORY[0x1EEE9AC00](v29, v31);
  v57 = v44 - v32;
  v56 = type metadata accessor for AceOutput(0);
  MEMORY[0x1EEE9AC00](v56, v33);
  memcpy(__dst, a1, 0x49uLL);
  if ((__dst[9] & 1) == 0)
  {
    v44[5] = __dst[0];
    v47 = a2;
    v48 = a6;
    v49 = a5;
    v50 = a7;
    v51 = a3;
    v52 = a8;
    v53 = a15;
    v46 = __dst[5];
    v35 = *(a1 + 24);
    v64 = *(a1 + 8);
    v65 = v35;
    v62 = *(a1 + 48);
    v63 = *(a1 + 64);
    v36 = a4[11];
    v37 = a4[12];
    __swift_project_boxed_opaque_existential_1(a4 + 8, v36);
    v45 = a4;
    v38 = *(v37 + 16);
    memcpy(v61, a1, 0x49uLL);
    sub_1DCBBF670(v61, v60);
    if (v38(v36, v37))
    {
      sub_1DCB0E9D8(__dst, &unk_1ECCA3260, &unk_1DD0E5AD0);
      memcpy(v59, a12, 0x48uLL);
      sub_1DCBBF670(a12, v60);
      sub_1DCECB70C(v49, v48, v50, v52, a9, a10, a11, v59, 0, v47, v51, v53, a16);
    }

    v44[4] = a16;
    v44[3] = a14;
    v44[1] = a13;
    v39 = v45;
    v40 = v45[2];
    memcpy(v59, a12, 0x48uLL);
    v41 = *(*v40 + 120);
    memcpy(v60, __dst, 0x49uLL);
    sub_1DCBBF670(v60, &v58);
    v44[2] = v41(v59, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 0, 0, 0);
    if (*(v46 + 16))
    {
    }

    sub_1DCB10E5C(0, &qword_1ECCA9330, 0x1E69C7828);
    v42 = v39[11];
    v43 = v39[12];
    __swift_project_boxed_opaque_existential_1(v39 + 8, v42);
    sub_1DCCDEA6C(v42, v43);
  }

  return a2(__dst[0], 1);
}

void sub_1DCED5D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t *a8, uint64_t (*a9)(uint64_t, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DD0E07C0;
    swift_getErrorValue();
    v15 = sub_1DD0DF18C();
    v17 = v16;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1DCB34060();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_1DD0DD7EC("Unable to handoff request to device. Error: %s", v18);

    v26 = 6;
    v25 = 73;
    v23 = 3;
    v24 = 0;
    sub_1DCFA6D00((a3 + 104), &v26, a4, a5, a6, &v25, 0, 1, a7, &v23, *a8, a8[1], a11, a12);
  }

  v26 = 7;
  v25 = 73;
  v23 = 1;
  v24 = 0;
  sub_1DCFA6D00((a3 + 104), &v26, a4, a5, a6, &v25, 0, 1, a7, &v23, *a8, a8[1], a11, a12);
}

void sub_1DCED5F20(uint64_t *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, void *a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  v34 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = v31 - v19;
  v21 = type metadata accessor for AceOutput(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = *a1;
  v44 = *(a1 + 1);
  v25 = *(a1 + 5);
  v45 = *(a1 + 3);
  v46 = v25;
  if ((a1[9] & 1) == 0)
  {
    v31[1] = a3;
    v31[2] = a2;
    v32 = a10;
    v31[3] = a9;
    v26 = a7;
    v29 = a1 + 7;
    v28 = a1[7];
    v27 = v29[1];
    v33 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1DCB10E5C(0, &qword_1EDE460F0, 0x1E69C7860);
    v34 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)(a4, a5, v34);
    v38 = v24;
    v39 = v44;
    v40 = v45;
    v41 = v46;
    v42 = v28;
    v43 = v27;
    (*(a11 + 320))(a5, v32, a11);
    v30 = type metadata accessor for NLContextUpdate(0);
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v30);
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v31[0] = v26;
    static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  }

  a2(v24, 1);
}

uint64_t sub_1DCED6468()
{
  sub_1DCB3728C();
  OUTLINED_FUNCTION_56();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCED65D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCED6630(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_9_63();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_99(AssociatedTypeWitness);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  OUTLINED_FUNCTION_26_30();
  OUTLINED_FUNCTION_9_63();
  v7 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_99(v7);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_72_16();
  return sub_1DCED509C(a1, v9, v10, v1 + v6, v11, v12, v13, v14, v17, v15, v18, v16, *v8, v8[1], v2, v3);
}

uint64_t sub_1DCED6788()
{
  OUTLINED_FUNCTION_59_19();
  OUTLINED_FUNCTION_9_63();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_99(AssociatedTypeWitness);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_11_57();
  OUTLINED_FUNCTION_72_16();
  return sub_1DCED5478(v0, v6, v7, v8, v9, v10, v11, v12, v13, v16, v14, v15, *(v1 + v5), *(v1 + v5 + 8), v2, v3);
}

uint64_t sub_1DCED6888()
{
  OUTLINED_FUNCTION_59_19();
  OUTLINED_FUNCTION_9_63();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_20_0(AssociatedTypeWitness);
  OUTLINED_FUNCTION_11_57();
  return sub_1DCED4AAC(v0, v6, v7, v8, v9, v10, v11, *(v1 + 80), v1 + v5, v2, v3);
}

uint64_t sub_1DCED6960(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    a1 = 0;
    v3 = 0;
  }

  return (*(v2 + 16))(a1, v3);
}

uint64_t sub_1DCED69E0()
{
  OUTLINED_FUNCTION_59_19();
  OUTLINED_FUNCTION_9_63();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_99(AssociatedTypeWitness);
  OUTLINED_FUNCTION_12_55();
  OUTLINED_FUNCTION_66_10();
  return sub_1DCED36F8(v0, v9, v10, v11, v12, v13, v1 + v8, *(v1 + v5), *(v1 + v6), *(v1 + v7), v2, v3);
}

id sub_1DCED6B04(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_1DCB6DECC(result, a2);
  }

  return result;
}

void sub_1DCED6BDC(void *a1, char a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_99(v7);
  OUTLINED_FUNCTION_12_55();
  sub_1DCED2838(a1, a2 & 1, *(v2 + 32), *(v2 + 40), *(v2 + 48), (v2 + 56), *(v2 + 128), v2 + v11, *(v2 + v8), *(v2 + v9), *(v2 + v10), *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), v5, v6);
}

uint64_t sub_1DCED6CBC()
{
  OUTLINED_FUNCTION_59_19();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v4);
  OUTLINED_FUNCTION_11_57();
  return sub_1DCED2DB8(v0, v6, v7, v8, v9, v10, v11, *(v1 + 80), (v1 + 88), v1 + v5, v2, v3);
}

void sub_1DCED6D4C(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[13];
  v10 = v2 + ((*(v6 + 80) + 112) & ~*(v6 + 80));

  sub_1DCED3104(a1, a2 & 1, v7, v8, v2 + 4, v9, v10);
}

void sub_1DCED6DE0(id a1, char a2, void (*a3)(id))
{
  if (a2)
  {
  }

  else
  {
    a3(a1);
  }
}

uint64_t sub_1DCED6E24(void *a1, char a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_99(AssociatedTypeWitness);
  OUTLINED_FUNCTION_12_55();
  return sub_1DCED0A4C(a1, a2 & 1, *(v2 + 32), *(v2 + 40), *(v2 + 48), v2 + v11, *(v2 + v8), *(v2 + v9), *(v2 + v10), *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), (v2 + ((((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v5, v6);
}

double sub_1DCED6F5C(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
  }

  return result;
}

uint64_t objectdestroy_10Tm()
{

  swift_unknownObjectRelease();

  if (*(v0 + 128) >= 3uLL)
  {
  }

  OUTLINED_FUNCTION_54_16();

  return swift_deallocObject();
}

unint64_t sub_1DCED70A4()
{
  result = qword_1ECCA9350;
  if (!qword_1ECCA9350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA28E8, &qword_1DD0FF9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA9350);
  }

  return result;
}

uint64_t sub_1DCED7108(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_85Tm(void (*a1)(void), void (*a2)(void))
{

  a1(*(v2 + 48));
  a2(*(v2 + 56));

  OUTLINED_FUNCTION_7_3();

  return swift_deallocObject();
}

uint64_t objectdestroy_37Tm()
{

  OUTLINED_FUNCTION_76_15();
  if (v1)
  {
  }

  OUTLINED_FUNCTION_56();

  return swift_deallocObject();
}

uint64_t sub_1DCED7438(uint64_t a1, char a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v7);
  return sub_1DCECF21C(a1, a2 & 1, v2[4], v2[5], v2[6], v2[7], v2[8], v2[9], v2 + 10, v2[19], v2 + ((*(v8 + 80) + 160) & ~*(v8 + 80)), v5, v6);
}

void sub_1DCED7504()
{
  OUTLINED_FUNCTION_59_19();
  OUTLINED_FUNCTION_9_63();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_99(AssociatedTypeWitness);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_66_10();
  sub_1DCECE134(v0, v7, v8, v9, v10, v11, v1 + v6, *(v1 + v5), *(v1 + v5 + 8), v2, v3);
}

void sub_1DCED75CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if ((*(a13 + 144))(a5, a6, a12, a13))
  {
    type metadata accessor for RCHDelegateToNeedsConfirmationWithCancellationFlowStrategyAdapter(0, a12, a13, v13);
    sub_1DCB17CA0(a11, v14);
    *&v14[0] = sub_1DCEDC730(a10, v14);
    swift_getWitnessTable();
    static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)();
  }

  else
  {
    type metadata accessor for RCHDelegateToNeedsConfirmationFlowStrategyAdapter(0, a12, a13, v13);
    sub_1DCB17CA0(a11, v14);
    *&v14[0] = sub_1DCEDB488(a10, v14);
    swift_getWitnessTable();
    static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)();
  }

  swift_unknownObjectRetain();

  sub_1DD0DCF8C();
}

void sub_1DCED77B0(uint64_t *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = *a1;
  v20 = *(*a1 + 80);
  sub_1DD01FF1C(a3, a5, a6, a4, &v35);
  if (v36)
  {
    v33 = v19;
    sub_1DCAFF9E8(&v35, v37);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v21 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v21, qword_1EDE57E00);

    v22 = sub_1DD0DD8EC();
    v23 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v35 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1DCB10E9C(a5, a6, &v35);
      _os_log_impl(&dword_1DCAFC000, v22, v23, "Running UnsetRelationshipFlow for unsupported parameter name: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1E12A8390](v25, -1, -1);
      MEMORY[0x1E12A8390](v24, -1, -1);
    }

    v28 = type metadata accessor for ConfigToUnsupportedUnsetRelationshipFlowStrategyAdapter(0, v20, v26, v27);
    sub_1DCB17CA0(a10, &v35);
    sub_1DCB17CA0(v37, v34);
    *&v35 = sub_1DCC99EC4(&v35, v34);
    v29 = *(v33 + 88);
    WitnessTable = swift_getWitnessTable();
    static RCHChildFlowFactoryHelper.makeUnsupportedUnsetRelationshipFlowProducer<A, B>(strategy:)(&v35, v28, v29, WitnessTable);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  else
  {
    sub_1DCED7C40(&v35);
    (*(a14 + 200))(&v35, a2, a3, a5, a6, a4, a13, a14);
    v31 = v35;
    type metadata accessor for RCHDelegateToUnsupportedValueFlowStrategyAdapter(0, a13, a14, v32);
    if (v31)
    {
      sub_1DCB17CA0(a12, v37);
      *&v37[0] = sub_1DCEE0D5C(a11, v37);
      swift_getWitnessTable();
      if (v31 == 1)
      {
        static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)();
      }

      else
      {
        static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
      }
    }

    else
    {
      sub_1DCB17CA0(a12, v37);
      *&v37[0] = sub_1DCEE0D5C(a11, v37);
      swift_getWitnessTable();
      static RCHChildFlowFactoryHelper.makeUnsupportedValuePunchOutFlowProducer<A>(strategy:)();
    }

    swift_unknownObjectRetain();
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DCED7C40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9358, qword_1DD0FF9B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCED7CA8(uint64_t a1, uint64_t a2, uint64_t a3, id a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ([a4 _intentResponseCode] == 8)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v15 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v15, qword_1EDE57E00);
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DCAFC000, v16, v17, "IntentResponseCode is .userConfirmationRequired so ignoring delegate and forcing confirmation for backwards compatibility.", v18, 2u);
      MEMORY[0x1E12A8390](v18, -1, -1);
    }

LABEL_8:
    type metadata accessor for RCHDelegateToConfirmIntentFlowStrategy(0, a9, a10, v19);
    sub_1DCB17CA0(a8, v32);
    v20 = a4;
    v21 = sub_1DCED8FD4(a7, v32);
    v22 = *(a10 + 232);
    swift_unknownObjectRetain();
    v22(v32, a2, a3, v20, a9, a10);
    if (v32[0] == 1)
    {
      *v32 = v21;
      swift_getWitnessTable();
      static RCHChildFlowFactoryHelper.makeConfirmIntentWithWaitToContinueFlowProducer<A>(strategy:)();
      v23 = swift_allocObject();
      v23[2] = a9;
      v23[3] = a10;
      v23[4] = a5;
      v23[5] = a6;
      sub_1DD0DCF8C();
    }

    *v32 = v21;
    swift_getWitnessTable();
    static RCHChildFlowFactoryHelper.makeConfirmIntentFlowProducer<A>(strategy:)();
  }

  if ((*(a10 + 112))(a3, a4, a9, a10))
  {
    goto LABEL_8;
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v24 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v24, qword_1EDE57E00);
  v25 = sub_1DD0DD8EC();
  v26 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1DCAFC000, v25, v26, "Delegate indicated that we should not confirm the intent with the user. No flow will be provided.", v27, 2u);
    MEMORY[0x1E12A8390](v27, -1, -1);
  }

  return a5(0);
}

void sub_1DCED8088(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = 2;
  sub_1DCB17CA0(a8, v18);
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a10;
  v17[4] = a7;
  sub_1DCAFF9E8(v18, (v17 + 5));
  v17[10] = a1;
  v17[11] = a2;
  v17[12] = a3;
  v17[13] = a4;
  v17[14] = a5;
  v17[15] = a6;
  swift_unknownObjectRetain();
  sub_1DD0DCF8C();
}

void sub_1DCED81BC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void (*a8)(void), uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (*a1)
  {
    type metadata accessor for AnyFlow();
    type metadata accessor for LegacyContinueInAppAdaptingFlow(0, a10, a11, v13);
    v15 = a3[3];
    v14 = a3[4];
    v16 = __swift_project_boxed_opaque_existential_1(a3, v15);
    v25 = v15;
    v26 = *(v14 + 8);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v24);
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_1Tm, v16, v15);
    *&v24 = sub_1DCED9D38();
    swift_unknownObjectRetain();
    sub_1DD0DCF8C();
  }

  type metadata accessor for RCHDelegateToContinueInAppDialogFlowStrategy(0, a10, a11, a4);
  v19 = a3[3];
  v18 = a3[4];
  v20 = __swift_project_boxed_opaque_existential_1(a3, v19);
  v25 = v19;
  v26 = *(v18 + 8);
  v21 = __swift_allocate_boxed_opaque_existential_1Tm(&v24);
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  *&v24 = sub_1DCB87714(a2, &v24);
  swift_getWitnessTable();
  static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithDialogProducer<A>(strategy:)();
  swift_unknownObjectRetain();

  v22 = swift_allocObject();
  *(v22 + 16) = a8;
  *(v22 + 24) = a9;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCED8434(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a6 == 4)
  {
    v16 = *a10;
    v17 = a7;
    v27 = sub_1DD0DD28C();
    v33[3] = v27;
    v33[4] = MEMORY[0x1E69CE220];
    __swift_allocate_boxed_opaque_existential_1Tm(v33);
    sub_1DD0DD27C();
    v20 = v16 + 80;
    v18 = *(v16 + 80);
    v19 = *(v20 + 8);
    v21 = (*(v19 + 168))(a2, v33, a3, a4, a5, v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    a7 = v17;
    if (v21)
    {
      v23 = type metadata accessor for RCHDelegateToAppResolutionFlowStrategyAdapter(255, v18, v19, v22);
      WitnessTable = swift_getWitnessTable();
      type metadata accessor for SiriKitServerAssistedAppResolutionFlow(0, v23, WitnessTable, v25);
      v32 = a10;
      sub_1DCB17CA0(a11, v33);
      sub_1DCB17CA0(a12, v31);
      sub_1DCB17CA0(a13, v30);
      v29[3] = v27;
      v29[4] = MEMORY[0x1E69CE220];
      __swift_allocate_boxed_opaque_existential_1Tm(v29);
      sub_1DD0DCF8C();
    }
  }

  return (a7)(0);
}

uint64_t sub_1DCED8820(uint64_t a1, void (*a2)(uint64_t *))
{
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DCB29E58(a1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];
    sub_1DD0DC76C();
    OUTLINED_FUNCTION_2();
    (*(v9 + 8))(v7);
    sub_1DCB17CA0(v8 + 40, v11);
    v12 = 0;
    a2(v11);
  }

  else
  {
    sub_1DCB29EBC(v7);
    v11[3] = sub_1DD0DD28C();
    v11[4] = MEMORY[0x1E69CE220];
    __swift_allocate_boxed_opaque_existential_1Tm(v11);
    sub_1DD0DD27C();
    v12 = 0;
    a2(v11);
  }

  return sub_1DCB0E9D8(v11, qword_1ECCA9360, &qword_1DD107640);
}

void sub_1DCED8A7C()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v4 = v3;
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  sub_1DCED8D50(v4, v2);
}

void sub_1DCED8C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v12 - v8;
  v10 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1DD0FFA78;
  v11[5] = 0;
  v11[6] = a3;
  v11[7] = a4;
  sub_1DD0DCF8C();
}

void sub_1DCED8D50(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCED8DBC(void *a1, char a2, void (*a3)(void *))
{
  if (a2)
  {
    v6[0] = a1;
    v7 = 1;
    v4 = a1;
  }

  else
  {
    v6[3] = type metadata accessor for RCHAdaptedEmptyOutput();
    v6[4] = &off_1F58664B0;
    v6[0] = swift_allocObject();
    v7 = 0;
  }

  a3(v6);
  return sub_1DCB0E9D8(v6, &qword_1ECCA1F70, &qword_1DD0E2BD0);
}

uint64_t sub_1DCED8FD4(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1DCED9024(a1, a2);
  return v4;
}

uint64_t sub_1DCED9024(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  sub_1DCAFF9E8(a2, v2 + 24);
  *(v2 + 64) = 0;
  return v2;
}

uint64_t sub_1DCED9054@<X0>(char *a1@<X8>, uint64_t a2@<X0>)
{
  v4 = *v2;
  result = sub_1DCED96B8(a2, &v8);
  v6 = v8;
  *(v2 + 64) = v8;
  v7 = 2;
  switch(v6)
  {
    case 1:
      v7 = 0;
      break;
    case 2:
      v7 = 1;
      break;
    case 3:
      result = (*(*(v4 + 88) + 96))(*(v4 + 80));
      if (result)
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      break;
    default:
      break;
  }

  *a1 = v7;
  return result;
}

void sub_1DCED911C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(unint64_t *))
{
  v8 = v5[64];
  if (v8 == 3)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    if (v8 != 2)
    {
      type metadata accessor for RCHDelegateToConfirmIntentFlowStrategy.ConfirmIntentErrors(0, *(*v5 + 80), *(*v5 + 88), a4);
      swift_getWitnessTable();
      v10 = swift_allocError();
      *v11 = v8;
      v14 = v10;
      v15 = 0;
      v16 = 1;
      goto LABEL_7;
    }

    LOBYTE(v14) = 0;
  }

  swift_getAssociatedTypeWitness();
  ConfirmIntentAnswer.init(confirmationResponse:intent:)(&v14, a3, v12);
  v14 = v12[0];
  v15 = v13;
  v16 = 0;
  v9 = a3;
LABEL_7:
  a5(&v14);
  sub_1DCCB7284(v14, v15, v16);
}

void sub_1DCED9250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*(*v5 + 88) + 96))(*(*v5 + 80), *(*v5 + 88));
  __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
  sub_1DCED99E0(a4, a5);
}

void sub_1DCED9374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*(*v5 + 88) + 232))(&v14);
  if (v14)
  {
    __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
    sub_1DCED99E0(a4, a5);
  }

  OUTLINED_FUNCTION_11_7();

  sub_1DCED94CC(v8, v9, v10, v11, v12);
}

uint64_t sub_1DCED96B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for Parse(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v5 + 88);
  v11 = *(v5 + 80);
  if ((*(v10 + 96))(v11, v10))
  {
    v12 = type metadata accessor for Input(0);
    (*(v10 + 280))(&v24, a1 + *(v12 + 20), v11, v10);
    v13 = v24;
  }

  else
  {
    v14 = type metadata accessor for Input(0);
    (*(v10 + 272))(&v24 + 1, a1 + *(v14 + 20), v11, v10);
    v13 = BYTE1(v24);
  }

  switch(v13)
  {
    case 1:
    case 2:
    case 3:
      v15 = sub_1DD0DF0AC();

      if (v15)
      {
        goto LABEL_7;
      }

      break;
    default:

LABEL_7:
      if (qword_1EDE4F908 != -1)
      {
        swift_once();
      }

      v17 = qword_1EDE57E18;
      v18 = sub_1DD0DE6DC();
      sub_1DD0DD7EC("Waiting for a confirmation response but there is no confirmation state in the input. Checking for server side resolution.", 121, 2, &dword_1DCAFC000, v17, v18, MEMORY[0x1E69E7CC0]);
      v19 = type metadata accessor for Input(0);
      sub_1DCB29E58(a1 + *(v19 + 20), v9);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];
        v21 = sub_1DD0DC76C();
        (*(*(v21 - 8) + 8))(v9, v21);
        LOBYTE(v13) = *(v20 + 24);
        if (!v13)
        {
          v22 = sub_1DD0DE6EC();
          sub_1DD0DD7EC("Could not find the current a server side intent confirmation. Treating input as not understood.", 95, 2, &dword_1DCAFC000, v17, v22, MEMORY[0x1E69E7CC0]);
        }
      }

      else
      {
        result = sub_1DCB29EBC(v9);
        LOBYTE(v13) = 0;
      }

      break;
  }

  *a2 = v13;
  return result;
}

void sub_1DCED99E0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCED9A4C(void *a1, char a2, void (*a3)(void *))
{
  if (a2)
  {
    v6[0] = a1;
    v7 = 1;
    v4 = a1;
  }

  else
  {
    v6[3] = type metadata accessor for RCHAdaptedEmptyOutput();
    v6[4] = &off_1F58664B0;
    v6[0] = swift_allocObject();
    v7 = 0;
  }

  a3(v6);
  return sub_1DCCD16C4(v6);
}

uint64_t sub_1DCED9AD8()
{
  sub_1DCB3786C();

  return swift_deallocClassInstance();
}

_BYTE *sub_1DCED9C20(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void *sub_1DCED9D38()
{
  OUTLINED_FUNCTION_30_0();
  v5 = v4;
  v6 = swift_allocObject();
  sub_1DCAFF9E8(v5, (v6 + 2));
  v6[7] = v3;
  v6[8] = v2;
  v6[9] = v1;
  v6[10] = v0;
  return v6;
}

void sub_1DCED9D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1((v5 + 24), *(v5 + 48));
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCED9FEC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCEDA00C, 0, 0);
}

uint64_t sub_1DCEDA0F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DCEDA244(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - v7;
  v9 = v1[5];
  v10 = v1[6];
  v11 = __swift_project_boxed_opaque_existential_1(v1 + 2, v9);
  v12 = v1[8];
  v20 = v1[7];
  v21 = v11;
  v13 = v1[10];
  v18 = v1[9];
  v19 = v12;
  v17 = v13;
  v22 = 2;
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  (*(v10 + 8))(v20, v19, v18, v17, &v22, sub_1DCEDA8A0, v15, *(v3 + 80), *(v3 + 88), v9, v10);
}

uint64_t sub_1DCEDA41C(void *a1, char a2)
{
  v4 = type metadata accessor for ExecuteResponse(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v8 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v8, qword_1EDE57E00);
    v9 = a1;
    v10 = sub_1DD0DD8EC();
    v11 = sub_1DD0DE6EC();
    sub_1DCB79378(a1, 1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_1DD0DF18C();
      v16 = sub_1DCB10E9C(v14, v15, &v21);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1DCAFC000, v10, v11, "Received an SubmitCommandError while rendering ContinueInApp output. This is usually caused by a user cancellation. Exiting without crashing: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E12A8390](v13, -1, -1);
      MEMORY[0x1E12A8390](v12, -1, -1);
    }
  }

  v17 = type metadata accessor for PluginAction(0);
  __swift_storeEnumTagSinglePayload(&v7[*(v4 + 36)], 1, 1, v17);
  *v7 = 1;
  *(v7 + 1) = 0;
  v7[16] = 0;
  *(v7 + 4) = 0;
  *(v7 + 5) = 0;
  *(v7 + 3) = 0;
  v7[48] = -4;
  v18 = &v7[*(v4 + 40)];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  return sub_1DD0DE46C();
}

uint64_t sub_1DCEDA664()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1DCEDA6A4()
{
  sub_1DCEDA664();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCEDA78C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB193FC;

  return sub_1DCED9FEC(a1);
}

uint64_t sub_1DCEDA828(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCEDA864(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCEDA8A0(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);

  return sub_1DCEDA41C(a1, a2 & 1);
}

uint64_t sub_1DCEDA980@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = [swift_getObjCClassFromMetadata() typeName];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1DD0DDFBC();
    v6 = v5;

    if (qword_1ECCA1248 != -1)
    {
      swift_once();
    }

    v7 = sub_1DCCE6C7C(v4, v6, qword_1ECCA2828);
    v8 = 6;
    if ((v7 & 1) == 0)
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  *a1 = v8;
  *(a1 + 32) = &type metadata for FeatureFlagDefinitions.Core;
  *(a1 + 40) = &off_1F585CB38;

  *(a1 + 8) = 0;
  return result;
}

void sub_1DCEDAB68()
{
  v3 = v1;
  OUTLINED_FUNCTION_4_93();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v16 - v6 + 14;
  sub_1DCEDA980(v17);
  v8 = v17[0];
  sub_1DCC4B20C(v17);
  if (v8 == 6)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v9 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v9, qword_1EDE57E00);
    v10 = sub_1DD0DD8EC();
    v11 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DCAFC000, v10, v11, "Attempted to use old response generator for unlock, but we have a default auth policy. Using the newer unlock mode instead (and overriding domain customization here)", v12, 2u);
      MEMORY[0x1E12A8390](v12, -1, -1);
    }

    sub_1DCEDA980(v16);
    sub_1DCC4B20C(v16);
    v13 = sub_1DD0DE4BC();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = &unk_1DD10AAC0;
    v14[5] = 0;
    v14[6] = v2;
    v14[7] = v0;
    sub_1DD0DCF8C();
  }

  __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
  OUTLINED_FUNCTION_5_86();
}

void sub_1DCEDAE14()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_93();
  OUTLINED_FUNCTION_1_103();
  OUTLINED_FUNCTION_5_86();
}

uint64_t sub_1DCEDAEA8()
{
  OUTLINED_FUNCTION_4_93();
  if (((*(*(*v0 + 88) + 288))(v2, v3, v0 + 8, *(*v0 + 80), *(*v0 + 88)) & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
    OUTLINED_FUNCTION_5_86();
  }

  v5[3] = type metadata accessor for EmptyOutput();
  v5[4] = &protocol witness table for EmptyOutput;
  v5[0] = swift_allocObject();
  v6 = 0;
  v1(v5);
  return sub_1DCCD16C4(v5);
}

void sub_1DCEDB030()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_93();
  OUTLINED_FUNCTION_1_103();
  OUTLINED_FUNCTION_5_86();
}

void sub_1DCEDB0C4()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_93();
  OUTLINED_FUNCTION_1_103();
  OUTLINED_FUNCTION_5_86();
}

void sub_1DCEDB15C()
{
  OUTLINED_FUNCTION_4_93();
  OUTLINED_FUNCTION_1_103();
  OUTLINED_FUNCTION_5_86();
}

void sub_1DCEDB240(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEDB3F4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCEDB488(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1DCEDB4D8(a1, a2);
  return v4;
}

uint64_t sub_1DCEDB4D8(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  sub_1DCB18FF0(a2, v2 + 24);
  *(v2 + 64) = 0;
  return v2;
}

void *sub_1DCEDB508@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char *a3@<X5>, char *a4@<X8>)
{
  result = sub_1DCEDC018(a3, a1, a2, &v9);
  v7 = v9;
  *(v4 + 64) = v9;
  if (v7)
  {
    v8 = v7 != 1;
  }

  else
  {
    v8 = 2;
  }

  *a4 = v8;
  return result;
}

void sub_1DCEDB564(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(id *), uint64_t a9)
{
  v10 = v9;
  v51 = *(*v9 + 88);
  v52 = *(*v9 + 80);
  type metadata accessor for RCHFlowFrame(0, v52, v51, a4);
  v12 = v9[2];
  type metadata accessor for Input(0);
  sub_1DCEFEAA8();
  if (!v13)
  {
    v13 = a2;
  }

  v14 = v13;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  sub_1DD0DE6DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DD0E07C0;
  v53 = a2;
  v16 = INIntent.debugDescriptionLite.getter();
  v18 = v17;
  v19 = MEMORY[0x1E69E6158];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  v20 = sub_1DCB34060();
  *(v15 + 64) = v20;
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  OUTLINED_FUNCTION_5_87();
  sub_1DD0DD7EC(v21);

  sub_1DD0DE6DC();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1DD0E07C0;
  v58 = v14;
  v23 = INIntent.debugDescriptionLite.getter();
  v25 = v24;

  *(v22 + 56) = v19;
  *(v22 + 64) = v20;
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  OUTLINED_FUNCTION_5_87();
  sub_1DD0DD7EC(v26);

  v27 = *(v10 + 64);
  if (v27 >= 2)
  {
    if (v27 != 2)
    {
      v40 = swift_allocObject();
      OUTLINED_FUNCTION_2_89(v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, a6, v51, v52, v12, v53, a3, a4, a5, a8, a9);
      sub_1DD0DCF8C();
    }

    v31 = [a6 itemToConfirm];
    sub_1DD0DEA6C();
    swift_unknownObjectRelease();
    v32 = swift_allocObject();
    OUTLINED_FUNCTION_2_89(v32, v33, v34, v35, v36, v37, v38, v39, v48, v49, a6, v51, v52, v12, v53, a3, a4, a5, a8, a9);
    sub_1DD0DCF8C();
  }

  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0x6465766965636552, 0xEF20657461747320);
  sub_1DD0DEDBC();
  MEMORY[0x1E12A6780](0xD00000000000003CLL, 0x80000001DD1217F0);
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v28 = CommandFailure.init(errorCode:reason:)(-1, 0, 0xE000000000000000);
  sub_1DCC7AE30();
  v29 = swift_allocError();
  *v30 = v28;
  v59 = v29;
  v60 = 0;
  v61 = 1;
  a8(&v59);

  sub_1DCCB7284(v59, v60, v61);
}

uint64_t sub_1DCEDBB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *))
{
  v8[3] = type metadata accessor for EmptyOutput();
  v8[4] = &protocol witness table for EmptyOutput;
  v8[0] = swift_allocObject();
  v9 = 0;
  a6(v8);
  return sub_1DCCD16C4(v8);
}

void sub_1DCEDBDB0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

void sub_1DCEDBE1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, void (*a6)(unint64_t *))
{
  if (a2)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }

    v18 = qword_1EDE57E18;
    v10 = sub_1DD0DE6DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DD0E32B0;
    v12 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v13 = sub_1DCB34060();
    *(v11 + 64) = v13;
    *(v11 + 32) = a3;
    *(v11 + 40) = a4;
    swift_getErrorValue();

    v14 = sub_1DD0DF18C();
    *(v11 + 96) = v12;
    *(v11 + 104) = v13;
    *(v11 + 72) = v14;
    *(v11 + 80) = v15;
    sub_1DD0DD7EC("Domain failed to update intent successfully (parameter=%@): %@", 62, 2, &dword_1DCAFC000, v18, v10, v11);

    v20 = a1;
    v21 = 0;
    v22 = 1;
    v16 = a1;
    a6(&v20);
  }

  else
  {
    LOBYTE(v20) = *a5;
    swift_getAssociatedTypeWitness();
    NeedsConfirmationAnswer.init(answeredValue:updatedIntent:)(&v20, a1, v23);
    v20 = v23[0];
    v21 = v24;
    v22 = 0;
    v17 = a1;
    a6(&v20);
  }

  sub_1DCCB7284(v20, v21, v22);
}

uint64_t sub_1DCEDC018@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v26 = a4;
  v8 = *v4;
  v9 = type metadata accessor for Parse(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for Input(0) + 20);
  (*(*(v8 + 88) + 272))(&v27, &a1[v13], *(v8 + 80));
  v14 = v27;
  switch(v27)
  {
    case 1:
    case 2:
    case 3:
      v15 = sub_1DD0DF0AC();

      if (v15)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    default:

LABEL_4:
      if (qword_1EDE4F908 != -1)
      {
LABEL_30:
        OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
      }

      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_6_65("Waiting for a confirmation response but there is no confirmation state in the input. Checking for server side resolution.", 121, v17, &dword_1DCAFC000);
      sub_1DCB29E58(&a1[v13], v12);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        result = sub_1DCB29EBC(v12);
LABEL_9:
        v14 = 0;
        goto LABEL_10;
      }

      a1 = *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];
      v18 = sub_1DD0DC76C();
      (*(*(v18 - 8) + 8))(v12, v18);
      v14 = a1[24];
      if (v14)
      {
        goto LABEL_7;
      }

      v19 = *(a1 + 4);
      v20 = sub_1DCB08B14(v19);
      v13 = v19 & 0xC000000000000001;

      v21 = 0;
      break;
  }

  while (1)
  {
    if (v20 == v21)
    {

      sub_1DD0DE6EC();
      OUTLINED_FUNCTION_6_65("Could not find the current parameter in the parameter metadata sent from the server. Treating input as not understood.", 118, v25, &dword_1DCAFC000);

      goto LABEL_9;
    }

    if (!v13)
    {
      if (v21 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        sub_1DD0DCF8C();
      }

      goto LABEL_29;
    }

    v12 = MEMORY[0x1E12A72C0](v21, v19);
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v22 = *(v12 + 4) == a2 && *(v12 + 5) == a3;
    if (v22 || (sub_1DD0DF0AC() & 1) != 0)
    {
      break;
    }

    ++v21;
  }

  v23 = v12[24];
  sub_1DD0DE6DC();
  if (v23 == 1)
  {
    OUTLINED_FUNCTION_6_65("Received parameter metadata for the expected parameter from the server and it is marked shouldResolve. Treating as rejected", 123, v24, &dword_1DCAFC000);

    v14 = 3;
    goto LABEL_10;
  }

  v14 = 2;
  OUTLINED_FUNCTION_6_65("Received parameter metadata for the expected parameter from the server and shouldResolve is false. Treating as confirmed", 120, v24, &dword_1DCAFC000);

LABEL_7:

LABEL_10:
  *v26 = v14;
  return result;
}

uint64_t sub_1DCEDC620(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCEDC65C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t objectdestroy_5Tm()
{

  return swift_deallocObject();
}

void sub_1DCEDC78C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_2_90(v9);
  v10[4] = v11;
  v10[5] = 0;
  v10[6] = a1;
  v10[7] = a2;
  sub_1DD0DCF8C();
}

void sub_1DCEDC87C(uint64_t a2@<X6>, char *a3@<X8>)
{
  v5 = *v3;
  sub_1DCEDD674(a2, &v14);
  if (v14 == 1)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }

    v7 = qword_1EDE57E18;
    v8 = sub_1DD0DE6DC();
    sub_1DD0DD7EC("User cancelled the prompt", 25, 2, &dword_1DCAFC000, v7, v8, MEMORY[0x1E69E7CC0]);
    v9 = 0;
  }

  else
  {
    type metadata accessor for RCHFlowFrame(0, *(v5 + 80), *(v5 + 88), v6);
    type metadata accessor for Input(0);
    sub_1DCEFEAA8();
    v10 = v3[13];
    v3[13] = v11;

    if (v3[13])
    {
      v9 = 1;
    }

    else
    {
      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
      }

      v12 = qword_1EDE57E18;
      v13 = sub_1DD0DE6DC();
      v9 = 2;
      sub_1DD0DD7EC("Delegate was not able to update intent from parse", 49, 2, &dword_1DCAFC000, v12, v13, MEMORY[0x1E69E7CC0]);
    }
  }

  *a3 = v9;
}

void sub_1DCEDCA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = swift_allocObject();
  v11[2] = a7;
  v11[3] = a8;
  v11[4] = v8;
  sub_1DD0DCF8C();
}

void sub_1DCEDCB24(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t a4)
{
  sub_1DCB17CA0(a4 + 64, v6);
  sub_1DCEDA980(v5);
  type metadata accessor for SiriKitDisambiguationListAdapter();
  swift_allocObject();
  SiriKitDisambiguationListAdapter.init(disambiguationList:deviceState:authenticationPolicy:)(a1, v6);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEDCBCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(__int128 *))
{
  v10 = v9[13];
  if (!v10)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }

    v17 = qword_1EDE57E18;
    v18 = sub_1DD0DE6DC();
    sub_1DD0DD7EC("Delegate was not able to update intent from parse", 49, 2, &dword_1DCAFC000, v17, v18, MEMORY[0x1E69E7CC0]);
    v39 = 0u;
    v40 = 0u;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    IntentPromptAnswer.init(answeredValue:updatedIntent:)(&v39, a2, v38);
    v22 = type metadata accessor for IntentPromptAnswer(0, AssociatedTypeWitness, v20, v21);
    static DisambiguationResult.chosenItem(_:)();
    v23 = *(*(v22 - 8) + 8);
    v24 = a2;
    v23(v38, v22);
    v41 = 0;
    a9(&v39);
    type metadata accessor for DisambiguationResult(255, v22, v25, v26);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    sub_1DD0DF22C();
    OUTLINED_FUNCTION_13_1();
    return (*(v27 + 8))(&v39);
  }

  v12 = *(*(*v9 + 88) + 248);
  v13 = v10;
  v12(v37);
  sub_1DCB192E4(v37, &v39);
  if (!*(&v40 + 1))
  {
    sub_1DCB16DB0(&v39, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    v15 = a9;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B38, &qword_1DD103310);
  result = swift_dynamicCast();
  v15 = a9;
  if ((result & 1) == 0)
  {
LABEL_11:
    sub_1DCB192E4(v37, &v39);
    goto LABEL_12;
  }

  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v38[0] + 16) > a5)
  {
    sub_1DCB0DF6C(v38[0] + 32 * a5 + 32, &v39);

LABEL_12:
    v28 = swift_getAssociatedTypeWitness();
    IntentPromptAnswer.init(answeredValue:updatedIntent:)(&v39, v13, v38);
    v31 = type metadata accessor for IntentPromptAnswer(0, v28, v29, v30);
    static DisambiguationResult.chosenItem(_:)();
    v32 = *(*(v31 - 8) + 8);
    v33 = v13;
    v32(v38, v31);
    v41 = 0;
    v15(&v39);

    type metadata accessor for DisambiguationResult(255, v31, v34, v35);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    sub_1DD0DF22C();
    OUTLINED_FUNCTION_13_1();
    (*(v36 + 8))(&v39);
    return sub_1DCB16DB0(v37, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  __break(1u);
  return result;
}

void sub_1DCEDCFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v26 - v14 + 14;
  sub_1DCEDA980(v27);
  v16 = v27[0];
  sub_1DCC4B20C(v27);
  if (v16 == 6)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v17 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v17, qword_1EDE57E00);
    v18 = sub_1DD0DD8EC();
    v19 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DCAFC000, v18, v19, "Attempted to use old response generator for unlock, but we have a default auth policy. Using the newer unlock mode instead (and overriding domain customization here)", v20, 2u);
      MEMORY[0x1E12A8390](v20, -1, -1);
    }

    sub_1DCEDA980(v26);
    sub_1DCC4B20C(v26);
    v21 = sub_1DD0DE4BC();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v21);
    v22 = swift_allocObject();
    v23 = OUTLINED_FUNCTION_2_90(v22);
    v23[4] = v24;
    v23[5] = 0;
    v23[6] = a7;
    v23[7] = a8;
    sub_1DD0DCF8C();
  }

  __swift_project_boxed_opaque_existential_1((v9 + 24), *(v9 + 48));
  sub_1DCEDD56C(a7, a8);
}

void sub_1DCEDD56C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEDD5D8(void *a1, char a2, void (*a3)(void *))
{
  if (a2)
  {
    v6[0] = a1;
    v7 = 1;
    v4 = a1;
  }

  else
  {
    v6[3] = type metadata accessor for RCHAdaptedEmptyOutput();
    v6[4] = &off_1F58664B0;
    v6[0] = swift_allocObject();
    v7 = 0;
  }

  a3(v6);
  return sub_1DCB16DB0(v6, &qword_1ECCA1F70, &qword_1DD0E2BD0);
}

uint64_t sub_1DCEDD674@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for Parse(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for Input(0) + 20);
  (*(*(v5 + 88) + 272))(&v17, a1 + v10, *(v5 + 80));
  v11 = v17;
  switch(v17)
  {
    case 1:
    case 2:
    case 3:
      v12 = sub_1DD0DF0AC();

      if (v12)
      {
        goto LABEL_4;
      }

      break;
    default:

LABEL_4:
      sub_1DCB29E58(a1 + v10, v9);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v14 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];
        sub_1DD0DC76C();
        OUTLINED_FUNCTION_13_1();
        (*(v15 + 8))(v9);
        v11 = *(v14 + 24);
      }

      else
      {
        result = sub_1DCB29EBC(v9);
        v11 = 0;
      }

      break;
  }

  *a2 = v11;
  return result;
}

void sub_1DCEDD8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a7;
  *(v10 + 24) = a8;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEDDA58(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCEDDAA0()
{
  OUTLINED_FUNCTION_35_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_14_0(v1);

  return sub_1DCC100AC();
}

void sub_1DCEDDBAC(uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X5>, char *a5@<X8>)
{
  v6 = v5;
  v10 = *v5;
  sub_1DCEDEC8C(a4, v35);
  if (LOBYTE(v35[0]) != 1)
  {
    v18 = *(v10 + 80);
    v19 = *(v10 + 88);
    type metadata accessor for RCHFlowFrame(0, v18, v19, v11);
    type metadata accessor for Input(0);
    sub_1DCEFEAA8();
    v21 = v20;
    v22 = v6[8];
    v6[8] = v20;
    v23 = v20;

    if (v21)
    {
      (*(v19 + 248))(v35, v23, a2, a3, v18, v19);
      if (v35[3])
      {

        sub_1DCB0E9D8(v35, &dword_1ECCA3CE0, &unk_1DD0E4F80);
        v17 = 1;
        goto LABEL_21;
      }

      sub_1DCB0E9D8(v35, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v29 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v29, qword_1EDE57E00);

      v30 = sub_1DD0DD8EC();
      v31 = sub_1DD0DE6DC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v35[0] = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_1DCB10E9C(a2, a3, v35);
        _os_log_impl(&dword_1DCAFC000, v30, v31, "Updated intent still contains a nil value for %s. Assuming that the user did not answer the prompt and ignoring the input", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      v34 = v6[8];
      v6[8] = 0;
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v24 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v24, qword_1EDE57E00);
      v25 = sub_1DD0DD8EC();
      v26 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v25, v26))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v27, v28, "Delegate was not able to update intent from parse");
        OUTLINED_FUNCTION_80();
      }
    }

    v17 = 2;
    goto LABEL_21;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v12 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v12, qword_1EDE57E00);
  v13 = sub_1DD0DD8EC();
  v14 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v13, v14))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v15, v16, "User cancelled the prompt");
    OUTLINED_FUNCTION_80();
  }

  v17 = 0;
LABEL_21:
  *a5 = v17;
}

uint64_t sub_1DCEDDF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(_OWORD *), uint64_t a8)
{
  v10 = *v8;
  v11 = v8[8];
  if (v11)
  {
    v14 = qword_1EDE4F900;
    v15 = v11;
    if (v14 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v16 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v16, qword_1EDE57E00);
    v17 = v15;
    v18 = sub_1DD0DD8EC();
    v19 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v18, v19))
    {
      v50 = a4;
      v20 = swift_slowAlloc();
      v49 = a3;
      v21 = swift_slowAlloc();
      *&v55[0] = v21;
      *v20 = 136315138;
      v22 = INIntent.debugDescriptionLite.getter();
      v24 = a8;
      v25 = sub_1DCB10E9C(v22, v23, v55);

      *(v20 + 4) = v25;
      a8 = v24;
      _os_log_impl(&dword_1DCAFC000, v18, v19, "IntentFromParse: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      a3 = v49;
      OUTLINED_FUNCTION_80();
      a4 = v50;
      OUTLINED_FUNCTION_80();
    }

    v28 = v10 + 80;
    v26 = *(v10 + 80);
    v27 = *(v28 + 8);
    (*(v27 + 248))(&v53, v17, a3, a4, v26, v27);
    if (*(&v54 + 1))
    {
      sub_1DCB20B30(&v53, v55);
      sub_1DCB0DF6C(v55, &v53);
      v29 = swift_allocObject();
      *(v29 + 16) = v26;
      *(v29 + 24) = v27;
      *(v29 + 32) = a3;
      *(v29 + 40) = a4;
      *(v29 + 48) = a7;
      *(v29 + 56) = a8;
      sub_1DCB20B30(&v53, (v29 + 64));

      sub_1DD0DCF8C();
    }

    sub_1DCB0E9D8(&v53, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    v37 = v17;

    v38 = sub_1DD0DD8EC();
    v39 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v38, v39))
    {
      v51 = a4;
      v40 = swift_slowAlloc();
      *&v55[0] = swift_slowAlloc();
      *v40 = 136315394;
      v41 = INIntent.debugDescriptionLite.getter();
      v43 = a3;
      v44 = sub_1DCB10E9C(v41, v42, v55);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_1DCB10E9C(v43, v51, v55);
      _os_log_impl(&dword_1DCAFC000, v38, v39, "Unable to extract parameter value. Intent: %s, parameterName: %s", v40, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v53 = 0u;
    v54 = 0u;
    IntentPromptAnswer.init(answeredValue:updatedIntent:)(&v53, v37, v55);
    BYTE8(v55[2]) = 0;
    v46 = v37;
    a7(v55);

    v34 = AssociatedTypeWitness;
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v30 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v30, qword_1EDE57E00);
    v31 = sub_1DD0DD8EC();
    v32 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1DCAFC000, v31, v32, "Delegate was not able to update intent from parse", v33, 2u);
      OUTLINED_FUNCTION_80();
    }

    memset(v55, 0, 41);
    a7(v55);
    v34 = swift_getAssociatedTypeWitness();
  }

  type metadata accessor for IntentPromptAnswer(255, v34, v35, v36);
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DF22C();
  OUTLINED_FUNCTION_2();
  return (*(v47 + 8))(v55);
}

uint64_t sub_1DCEDE4B8(void *a1, char a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v13 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v13, qword_1EDE57E00);

    sub_1DCB96674(a1);
    v14 = sub_1DD0DD8EC();
    v15 = sub_1DD0DE6DC();

    sub_1DCB51C9C(a1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v42 = a5;
      v17 = swift_slowAlloc();
      v44[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_1DCB10E9C(a3, a4, v44);
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v18 = sub_1DD0DF18C();
      v20 = sub_1DCB10E9C(v18, v19, v44);

      *(v16 + 14) = v20;
      _os_log_impl(&dword_1DCAFC000, v14, v15, "Domain failed to update intent successfully (parameter=%s: %s", v16, 0x16u);
      swift_arrayDestroy();
      v21 = v17;
      a5 = v42;
      MEMORY[0x1E12A8390](v21, -1, -1);
      MEMORY[0x1E12A8390](v16, -1, -1);
    }

    v44[0] = a1;
    v45 = 1;
    v22 = a1;
    a5(v44);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v27 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v27, qword_1EDE57E00);
    v28 = a1;
    v29 = sub_1DD0DD8EC();
    v30 = sub_1DD0DE6DC();
    sub_1DCB51C9C(a1);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = a5;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44[0] = v33;
      *v32 = 136315138;
      v34 = INIntent.debugDescriptionLite.getter();
      v36 = sub_1DCB10E9C(v34, v35, v44);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1DCAFC000, v29, v30, "Applying value to intent was successful. Transitioning to complete. Updated intent: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x1E12A8390](v33, -1, -1);
      v37 = v32;
      a5 = v31;
      MEMORY[0x1E12A8390](v37, -1, -1);
    }

    sub_1DCB0DF6C(a7, v43);
    v38 = swift_getAssociatedTypeWitness();
    IntentPromptAnswer.init(answeredValue:updatedIntent:)(v43, v28, v44);
    v45 = 0;
    v39 = v28;
    a5(v44);
    AssociatedTypeWitness = v38;
  }

  type metadata accessor for IntentPromptAnswer(255, AssociatedTypeWitness, v24, v25);
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v40 = sub_1DD0DF22C();
  return (*(*(v40 - 8) + 8))(v44, v40);
}

void sub_1DCEDE8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_project_boxed_opaque_existential_1((v5 + 24), *(v5 + 48));
  [a5 resolutionResultCode];
  v7 = OUTLINED_FUNCTION_86();
  sub_1DCEDEC20(v7, v8);
}

void sub_1DCEDEA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1((v4 + 24), *(v4 + 48));
  v5 = OUTLINED_FUNCTION_86();
  sub_1DCEDEC20(v5, v6);
}

void sub_1DCEDEB20(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  v3 = OUTLINED_FUNCTION_86();
  sub_1DCEDEC20(v3, v4);
}

void sub_1DCEDEC20(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEDEC8C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for Input(0) + 20);
  (*(*(v5 + 88) + 272))(&v17, a1 + v10, *(v5 + 80));
  v11 = v17;
  switch(v17)
  {
    case 1:
    case 2:
    case 3:
      v12 = sub_1DD0DF0AC();

      if (v12)
      {
        goto LABEL_4;
      }

      break;
    default:

LABEL_4:
      sub_1DCB29E58(a1 + v10, v9);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v14 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];
        sub_1DD0DC76C();
        OUTLINED_FUNCTION_2();
        (*(v15 + 8))(v9);
        v11 = *(v14 + 24);
      }

      else
      {
        result = sub_1DCB29EBC(v9);
        v11 = 0;
      }

      break;
  }

  *a2 = v11;
  return result;
}

uint64_t sub_1DCEDEF58(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_1DCEDEFCC()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t sub_1DCEDF000(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1DCEDF058(a1, a2, a3);
  return v6;
}

void *sub_1DCEDF058(uint64_t a1, void *a2, uint64_t a3)
{
  v3[9] = 0;
  v3[2] = a1;
  sub_1DCB17CA0(a2, (v3 + 3));
  v6 = sub_1DCB08B14(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  if (!v6)
  {

    a3 = 0;
  }

  v7 = v3[9];
  v3[8] = a3;
  v3[9] = 0;

  return v3;
}

void sub_1DCEDF0CC(char *a2@<X8>, uint64_t x3_0@<X3>)
{
  type metadata accessor for RCHFlowFrame(0, *(*v3 + 80), *(*v3 + 88), x3_0);
  type metadata accessor for Input(0);
  sub_1DCEFEAA8();
  sub_1DCEDEFF4(v5);
  v6 = sub_1DCEDEFCC();
  if (v6)
  {
    v7 = v6;
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v8 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v8, qword_1EDE57E00);
    v9 = v7;
    v10 = sub_1DD0DD8EC();
    v11 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315138;
      v14 = INIntent.debugDescriptionLite.getter();
      v16 = sub_1DCB10E9C(v14, v15, &v22);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1DCAFC000, v10, v11, "Received an updated intent from delegate. Choosing to handle. Intent: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    else
    {
    }

    v20 = 1;
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v17 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v17, qword_1EDE57E00);
    v18 = sub_1DD0DD8EC();
    v19 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v19))
    {
      v20 = 2;
      v21 = OUTLINED_FUNCTION_50_0();
      *v21 = 0;
      _os_log_impl(&dword_1DCAFC000, v18, v19, "Delegate was not able to update intent from parse. Ignoring input", v21, 2u);
      OUTLINED_FUNCTION_80();
    }

    else
    {

      v20 = 2;
    }
  }

  *a2 = v20;
}

void sub_1DCEDF338(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_7();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v29 = *v22;
  v30 = sub_1DCEDEFCC();
  if (!v30)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v36 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v36, qword_1EDE57E00);
    v32 = sub_1DD0DD8EC();
    v33 = sub_1DD0DE6DC();
    if (!OUTLINED_FUNCTION_75(v33))
    {
      goto LABEL_12;
    }

    v34 = OUTLINED_FUNCTION_50_0();
    *v34 = 0;
    v35 = "RCHDelegateToRCHFlowStrategyAdapter had no previously cached intent. Calling delegate to parse input";
    goto LABEL_11;
  }

  if (v28)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v31 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v31, qword_1EDE57E00);
    v32 = sub_1DD0DD8EC();
    v33 = sub_1DD0DE6DC();
    if (!OUTLINED_FUNCTION_75(v33))
    {
      goto LABEL_12;
    }

    v34 = OUTLINED_FUNCTION_50_0();
    *v34 = 0;
    v35 = "RCHDelegateToRCHFlowStrategyAdapter received a value for the current intent which we would not have had when calling makeIntentFromParse in the 'on' method. Ignoring any cached result and calling delegate to parse input.";
LABEL_11:
    _os_log_impl(&dword_1DCAFC000, v32, v33, v35, v34, 2u);
    OUTLINED_FUNCTION_80();
LABEL_12:

    type metadata accessor for RCHFlowFrame(0, *(v29 + 80), *(v29 + 88), v37);
    sub_1DCEFEAA8();
    goto LABEL_18;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v39 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v39, qword_1EDE57E00);
  v40 = sub_1DD0DD8EC();
  v41 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v41))
  {
    v42 = OUTLINED_FUNCTION_50_0();
    *v42 = 0;
    _os_log_impl(&dword_1DCAFC000, v40, v41, "RCHDelegateToRCHFlowStrategyAdapter using previously cached intent.", v42, 2u);
    OUTLINED_FUNCTION_80();
  }

  v38 = sub_1DCEDEFCC();
LABEL_18:
  v43 = v38;
  if (v38)
  {
    v44 = v38;
    sub_1DCEDEFF4(0);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v45 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v45, qword_1EDE57E00);
    v46 = v44;
    v47 = sub_1DD0DD8EC();
    v48 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      a10 = v50;
      *v49 = 136315138;
      v51 = INIntent.debugDescriptionLite.getter();
      v53 = sub_1DCB10E9C(v51, v52, &a10);

      *(v49 + 4) = v53;
      OUTLINED_FUNCTION_7_59(&dword_1DCAFC000, v54, v55, "RCHDelegateToRCHFlowStrategyAdapter makeIntentFromParse resulted in: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    v63 = v46;
    v26(v43, 0);

    OUTLINED_FUNCTION_12_1();
  }

  else
  {
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    v58 = qword_1EDE57E18;
    v59 = sub_1DD0DE6DC();
    sub_1DD0DD7EC("Delegate was not able to update intent from parse", 49, 2, &dword_1DCAFC000, v58, v59, MEMORY[0x1E69E7CC0]);
    type metadata accessor for RCHDelegateToRCHFlowStrategyAdapter.AdapterError(0, *(v29 + 80), *(v29 + 88), v60);
    swift_getWitnessTable();
    v61 = swift_allocError();
    v26(v61, 1);
    OUTLINED_FUNCTION_12_1();
  }
}

unint64_t sub_1DCEDF778()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v1 = sub_1DCD91F74();
  }

  return v1;
}

void sub_1DCEDFA60(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v23 - v8;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v10 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v10, qword_1EDE57E00);
  v11 = a1;
  v12 = sub_1DD0DD8EC();
  v13 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v16 = sub_1DD0DF18C();
    v18 = sub_1DCB10E9C(v16, v17, &v24);

    *(v14 + 4) = v18;
    OUTLINED_FUNCTION_7_59(&dword_1DCAFC000, v19, v20, "No equivalent API method to adapt. Sending genric error message for error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v21 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_1DD100228;
  v22[5] = 0;
  v22[6] = a2;
  v22[7] = a3;
  sub_1DD0DCF8C();
}

void sub_1DCEDFC80(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t RCHDelegateToRCHFlowStrategyAdapter.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return v0;
}

uint64_t RCHDelegateToRCHFlowStrategyAdapter.__deallocating_deinit()
{
  RCHDelegateToRCHFlowStrategyAdapter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCEDFE84(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCEDFEC0(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

_BYTE *sub_1DCEE0130(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1DCEE0238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCEE0250()
{
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_4_3(v1);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v2 = v0;
  v2[1] = sub_1DCEE0340;
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x1EEE6DE38](v3);
}

uint64_t sub_1DCEE0340()
{
  OUTLINED_FUNCTION_42();
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v2 = v5;
  *(v5 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCBCD1A8, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v3();
  }
}

uint64_t sub_1DCEE0508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCEE0520()
{
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_4_3(v1);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v2 = v0;
  v2[1] = sub_1DCEE0610;
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x1EEE6DE38](v3);
}

uint64_t sub_1DCEE0610()
{
  OUTLINED_FUNCTION_42();
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v2 = v5;
  *(v5 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCBCF9FC, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v3();
  }
}

uint64_t sub_1DCEE073C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v20 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v19 - v14;
  (*(v12 + 16))(&v19 - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  v20(a3, a4, a6, v17);
}

void sub_1DCEE0944(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEE09F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB22EC8;

  return sub_1DCEE0238(a1, a2, a3);
}

uint64_t sub_1DCEE0AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCEE0D08;

  return sub_1DCEE0508(a1, a2, a3);
}

uint64_t objectdestroy_9Tm_3()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1DCEE0D5C(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1DCB18FF0(a2, v4 + 24);
  return v4;
}

void sub_1DCEE0F08(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEE0FD4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_16();
  (*(v8 + 16))(v7 - v6, v2, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C18, &qword_1DD100A20);
  if (swift_dynamicCast())
  {
    sub_1DCAFF9E8(v12, v14);
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v9 = OUTLINED_FUNCTION_20();
    v10(v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1DCB16DB0(v12, &qword_1ECCA1C20, &qword_1DD0E1B70);
    sub_1DD0DF18C();
  }

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCEE1134@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(*(a3 + 24) - 8) + 32))(a5, v15, *(a3 + 24));
  }

  else
  {
    (*(v9 + 32))(v12, v15, v8);
    a1(v12);
    (*(v9 + 8))(v12, v8);
  }

  sub_1DD0DF22C();
  return swift_storeEnumTagMultiPayload();
}

void sub_1DCEE1348()
{
  OUTLINED_FUNCTION_4_82();
  type metadata accessor for RCHDelegateToRCHFlowStrategyAdapter(0, *(v0 + 80), *(v0 + 88), v1);
  OUTLINED_FUNCTION_116_6();

  RCHFlowStrategy.makeAnnotatedIntentFromParse(parse:currentIntent:completion:)();
}

void RCHFlowStrategy.makeAnnotatedIntentFromParse(parse:currentIntent:completion:)()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_75_13();
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v0;
  v4[4] = v3;
  v4[5] = v2;
  sub_1DD0DCF8C();
}

void RCHFlowStrategy.makeIntentFromParse(parse:currentIntent:completion:)()
{
  OUTLINED_FUNCTION_50();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v1 = OUTLINED_FUNCTION_20_0(v0);
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_10_2();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v22 - v8;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v10 = sub_1DD0DD8FC();
  v11 = __swift_project_value_buffer(v10, qword_1EDE57E00);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v9, v11, v10);
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v10);
  sub_1DCB099BC(v9, v5, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v10) == 1)
  {
    sub_1DCB16DB0(v5, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_83();
      v23 = swift_slowAlloc();
      *v18 = 136315650;
      v19 = sub_1DD0DEC3C();
      v21 = sub_1DCB10E9C(v19, v20, &v23);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2048;
      *(v18 + 14) = 84;
      *(v18 + 22) = 2080;
      *(v18 + 24) = sub_1DCB10E9C(0xD000000000000039, 0x80000001DD121910, &v23);
      _os_log_impl(&dword_1DCAFC000, v16, v17, "FatalError at %s:%lu - %s", v18, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_80();
    }

    (*(v12 + 8))(v5, v10);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000039, 0x80000001DD121910);
}

void RCHFlowStrategy.makeErrorResponse(error:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v5);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v12 - v8;
  v10 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  OUTLINED_FUNCTION_41_4();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1DD100600;
  v11[5] = 0;
  v11[6] = a2;
  v11[7] = a3;
  sub_1DD0DCF8C();
}

void sub_1DCEE187C(uint64_t a1, char a2, void (*a3)(void *, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[3] = a6;
  v13[4] = a1;
  v14 = a2 & 1;
  v13[2] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v8 = sub_1DD0DF22C();
  type metadata accessor for AnnotatedIntent(0, AssociatedTypeWitness, v9, v10);
  sub_1DCEE1134(sub_1DCEED4AC, v13, v8, &v15);
  v11 = v15;
  v12 = v16;
  a3(v15, v16);
  sub_1DCC8BC7C(v11, v12);
}

uint64_t sub_1DCEE1994@<X0>(void **a1@<X0>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnnotatedIntent(0, AssociatedTypeWitness, v7, v8);
  v12 = v5;
  type metadata accessor for ParameterHints();
  v9 = swift_allocObject();
  type metadata accessor for ParameterClause(0);
  v10 = v5;
  *(v9 + 16) = sub_1DD0DDE9C();
  result = sub_1DCB5C758(&v12, v9);
  *a4 = result;
  return result;
}

uint64_t sub_1DCEE1A68(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return RCHFlowStrategyAsync.makeErrorResponse(error:)();
}

uint64_t RCHFlowStrategyAsync.makeErrorResponse(error:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCCDC444();
}

uint64_t RCHFlowStrategyAsync.actionForInputWrapper(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  OUTLINED_FUNCTION_24();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCEE1BC0()
{
  OUTLINED_FUNCTION_42();
  (*(v0[5] + 16))(v0[3], v0[4]);
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCEE1D54(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1DCEE1DA0, 0, 0);
}

uint64_t sub_1DCEE1DA0()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = OUTLINED_FUNCTION_56_6();
  v0[7] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[8] = v5;
  OUTLINED_FUNCTION_60_14();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnnotatedIntent(0, AssociatedTypeWitness, v7, v8);
  OUTLINED_FUNCTION_17();
  *v5 = v9;
  v5[1] = sub_1DCEE1EB0;
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v10);
}

uint64_t sub_1DCEE1EB0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCEE1FB0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*(v0 + 16) + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1DCEE2024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnnotatedIntent(255, AssociatedTypeWitness, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v10 = sub_1DD0DE47C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  *(v16 + 24) = v5;
  (*(v11 + 32))(v16 + v15, v14, v10);
  (*(v5 + 24))(v18, v19, sub_1DCEED134, v16, v6, v5);
}

uint64_t sub_1DCEE222C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1;
  v11 = a2 & 1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnnotatedIntent(255, AssociatedTypeWitness, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v8 = sub_1DD0DE47C();
  return sub_1DD05EBE4(&v10, v8);
}

uint64_t sub_1DCEE2344(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCEE2368, 0, 0);
}

uint64_t sub_1DCEE2368()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCEE2454(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  (*(*(v5 + 88) + 48))(a3, sub_1DCEF96B0, v12, *(v5 + 80));
}

uint64_t sub_1DCEE2600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCEE2624, 0, 0);
}

uint64_t sub_1DCEE2624()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_4_3(v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_121_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v1 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCEE26F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(*(*(v6 + 88) + 8) + 32))(a3, v16, sub_1DCEF96B0, v13, *(v6 + 80));
}

uint64_t sub_1DCEE28B4(uint64_t a1)
{
  sub_1DCB099BC(a1, v3, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  if (v4)
  {
    v2[0] = *&v3[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE45C();
  }

  else
  {
    sub_1DCAFF9E8(v3, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCEE2954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCEE2978, 0, 0);
}

uint64_t sub_1DCEE2978()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_4_3(v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_121_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v1 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCEE2A4C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(*(*(v6 + 88) + 8) + 40))(a3, v16, sub_1DCEF96B0, v13, *(v6 + 80));
}

uint64_t sub_1DCEE2C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCEE2C2C, 0, 0);
}

uint64_t sub_1DCEE2C2C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_4_3(v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_121_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v1 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCEE2D00(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(*(*(v6 + 88) + 8) + 48))(a3, v16, sub_1DCEF96B0, v13, *(v6 + 80));
}

uint64_t sub_1DCEE2EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCEE2EE4, 0, 0);
}

uint64_t sub_1DCEE2EE4()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v5 = v6;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v7);
}

uint64_t sub_1DCEE2FE0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  (*(*(*(*(v7 + 88) + 8) + 24) + 24))(a3, v16, v17, sub_1DCEF96B0, v14, *(v7 + 80));
}

uint64_t sub_1DCEE31A0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCEE31C4, 0, 0);
}

uint64_t sub_1DCEE31C4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_4_3(v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_121_1(v3);
  type metadata accessor for SiriKitIntentExecutionBehavior();
  OUTLINED_FUNCTION_17();
  *v1 = v4;
  v1[1] = sub_1DCD76388;
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DDE0](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1DCEE3290(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA54F8, &qword_1DD0F2098);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(*(*(*(v6 + 88) + 8) + 16) + 40))(a3, v16, sub_1DCD7ABF0, v13, *(v6 + 80));
}

uint64_t sub_1DCEE3450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCEE3478, 0, 0);
}

uint64_t sub_1DCEE3478()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v5 = v6;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v7);
}

uint64_t sub_1DCEE3578(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  (*(*(*(*(v7 + 88) + 8) + 8) + 16))(a3, v16, v17, sub_1DCEED080, v14, *(v7 + 80));
}

uint64_t sub_1DCEE37A8()
{
  sub_1DCEE3738();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCEE3820(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCBCF08C;

  return sub_1DCEE1D54(a1, a2);
}

uint64_t sub_1DCEE38EC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCEE2344(a1, a2);
}

uint64_t sub_1DCEE3998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCEE2600(a1, a2, a3);
}

uint64_t sub_1DCEE3A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCEE2954(a1, a2, a3);
}

uint64_t sub_1DCEE3B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCEE2C08(a1, a2, a3);
}

uint64_t sub_1DCEE3BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCEE3450(a1, a2, a3, a4);
}

uint64_t sub_1DCEE3C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCEE2EBC(a1, a2, a3, a4);
}

uint64_t sub_1DCEE3D3C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCBCF434;

  return sub_1DCEE31A0(a1, a2);
}

void sub_1DCEE3E08()
{
  OUTLINED_FUNCTION_75_13();
  OUTLINED_FUNCTION_0_76();
  swift_allocObject();
  OUTLINED_FUNCTION_49_3();
  sub_1DCEE3E68();
}

void sub_1DCEE3E68()
{
  OUTLINED_FUNCTION_50();
  v33[3] = v1;
  v34 = v2;
  v35 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v33[1] = v12;
  v33[2] = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_105_8(v14);
  v16 = *(v15 + 80);
  OUTLINED_FUNCTION_0_1();
  v18 = v17;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v33 - v21;
  v33[6] = v9;
  sub_1DCB17D04(v9, &v38);
  v33[8] = v7;
  sub_1DCB17D04(v7, v39);
  v33[7] = v5;
  sub_1DCB17D04(v5, v36);
  v23 = type metadata accessor for OutputPublisherAsyncAdapter();
  v24 = swift_allocObject();
  sub_1DCAFF9E8(v36, v24 + 16);
  v39[8] = v23;
  v39[9] = &protocol witness table for OutputPublisherAsyncAdapter;
  v39[5] = v24;
  v26 = type metadata accessor for RCHFlowStrategyAsyncAdapter(255, v16, *(v10 + 88), v25);
  OUTLINED_FUNCTION_10_64(v26);
  v27 = OUTLINED_FUNCTION_21_39();
  type metadata accessor for RCHFlowAsync(v27, v28, v29, v30);
  v33[4] = v18;
  v33[5] = v16;
  (*(v18 + 16))(v22, v35, v16);
  v37[5] = sub_1DCEE1C30(v22);
  sub_1DCB17D04(v34, v37);
  type metadata accessor for EnvironmentSummoner();
  swift_initStaticObject();
  OUTLINED_FUNCTION_7_60();
  sub_1DCEED3AC(v31, v32);
  sub_1DD0DCF8C();
}

void sub_1DCEE42F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_0_76();
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_22_2();
  sub_1DCEE4360(v10, v11, v12, v13, v14, v15, v16, a8, a9, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, vars0);
}

void sub_1DCEE4360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_72_17(v22, v23, v24, v25, v26, v27);
  v29 = v28;
  v30 = *v21;
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_78_17();
  sub_1DCB17D04(v29, v30 + 40);
  OUTLINED_FUNCTION_128_2();
  v35 = type metadata accessor for OutputPublisherAsyncAdapter();
  v36 = OUTLINED_FUNCTION_55(v35);
  sub_1DCAFF9E8(v39, v36 + 16);
  v41 = v30;
  v42 = &protocol witness table for OutputPublisherAsyncAdapter;
  v40 = v36;
  type metadata accessor for EnvironmentSummoner();
  swift_initStaticObject();
  OUTLINED_FUNCTION_7_60();
  sub_1DCEED3AC(v37, v38);
  OUTLINED_FUNCTION_75_0();
  sub_1DD0DCB0C();
}

void sub_1DCEE47CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  HIDWORD(v18) = a8;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_0_76();
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_22_2();
  sub_1DCEE483C(v10, v11, v12, v13, v14, v15, v16, HIDWORD(v18), a9, a10, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
}

void sub_1DCEE483C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_72_17(v22, v23, v24, v25, v26, v27);
  v29 = v28;
  v30 = *v21;
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_105_8(v33);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_78_17();
  sub_1DCB17D04(v29, v30 + 40);
  OUTLINED_FUNCTION_128_2();
  v36 = type metadata accessor for OutputPublisherAsyncAdapter();
  v37 = OUTLINED_FUNCTION_55(v36);
  sub_1DCAFF9E8(v40, v37 + 16);
  v42 = v30;
  v43 = &protocol witness table for OutputPublisherAsyncAdapter;
  v41 = v37;
  type metadata accessor for EnvironmentSummoner();
  swift_initStaticObject();
  OUTLINED_FUNCTION_7_60();
  sub_1DCEED3AC(v38, v39);
  OUTLINED_FUNCTION_75_0();
  sub_1DD0DCB0C();
}

void sub_1DCEE4CA4()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_0_76();
  swift_allocObject();
  OUTLINED_FUNCTION_22_2();
  sub_1DCEE4CF4();
}

void sub_1DCEE4CF4()
{
  OUTLINED_FUNCTION_50();
  v46 = v2;
  v47 = v1;
  v41[4] = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v48 = v12;
  v42 = *v0;
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v41[2] = v14;
  v41[3] = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  OUTLINED_FUNCTION_16();
  v41[1] = v17 - v16;
  v18 = type metadata accessor for Input(0);
  v19 = OUTLINED_FUNCTION_20_0(v18);
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_16();
  v41[5] = v22 - v21;
  v23 = *(v42 + 80);
  OUTLINED_FUNCTION_0_1();
  v25 = v24;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v41 - v28;
  v45 = v11;
  sub_1DCB17D04(v11, &v51);
  v44 = v9;
  sub_1DCB17D04(v9, v52);
  v43 = v7;
  sub_1DCB17D04(v7, v49);
  v30 = type metadata accessor for OutputPublisherAsyncAdapter();
  v31 = swift_allocObject();
  sub_1DCAFF9E8(v49, v31 + 16);
  v52[8] = v30;
  v52[9] = &protocol witness table for OutputPublisherAsyncAdapter;
  v52[5] = v31;
  v33 = type metadata accessor for RCHFlowStrategyAsyncAdapter(255, v23, *(v42 + 88), v32);
  OUTLINED_FUNCTION_10_64(v33);
  v34 = OUTLINED_FUNCTION_21_39();
  type metadata accessor for RCHFlowAsync(v34, v35, v36, v37);
  v41[6] = v25;
  v41[7] = v23;
  v38 = *(v25 + 16);
  v42 = v5;
  v38(v29, v5, v23);
  v50[5] = sub_1DCEE1C30(v29);
  sub_1DCB17D04(v48, v50);
  type metadata accessor for EnvironmentSummoner();
  swift_initStaticObject();
  OUTLINED_FUNCTION_7_60();
  sub_1DCEED3AC(v39, v40);
  sub_1DD0DCF8C();
}

void sub_1DCEE51D4()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v0 + 80);
  type metadata accessor for RCHFlowAsync.State(0, v7, *(v0 + 88), v8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_16();
  (*(v12 + 16))(v16 - v15, v6, v7);
  sub_1DCB17D04(v4, &v18);
  sub_1DCB843DC(v2, &v17);
  OUTLINED_FUNCTION_49_3();
  sub_1DCB84438();
}

void RCHFlow.__allocating_init(strategy:childFlowFactory:)()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v0, v1);
  OUTLINED_FUNCTION_16();
  if (qword_1EDE4A110 != -1)
  {
    OUTLINED_FUNCTION_20_1(&qword_1EDE4A110);
  }

  sub_1DCB4BA5C();
}

void RCHFlow.__allocating_init(strategy:childFlowFactory:app:intent:)()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v0, v1);
  OUTLINED_FUNCTION_16();
  if (qword_1EDE4A110 != -1)
  {
    OUTLINED_FUNCTION_20_1(&qword_1EDE4A110);
  }

  sub_1DCB4BA5C();
}

void RCHFlow.__allocating_init(strategy:childFlowFactory:input:intent:)()
{
  OUTLINED_FUNCTION_50();
  v0 = OUTLINED_FUNCTION_70();
  v1 = type metadata accessor for Input(v0);
  v2 = OUTLINED_FUNCTION_20_0(v1);
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_16();
  if (qword_1EDE4A110 != -1)
  {
    OUTLINED_FUNCTION_20_1(&qword_1EDE4A110);
  }

  sub_1DCB4BA5C();
}

uint64_t sub_1DCEE5C50(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  OUTLINED_FUNCTION_24();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DCEE5C7C()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "RCHFlow deferring to RCHFlowAsync for execute()");
    OUTLINED_FUNCTION_80();
  }

  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = sub_1DCB3F98C;

  sub_1DCB7EFB4();
}

uint64_t RCHFlow.__deallocating_deinit()
{
  RCHFlow.deinit();
  OUTLINED_FUNCTION_0_76();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCEE5ED0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCEE5C50(a1);
}

uint64_t sub_1DCEE5F90@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_2();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_8_2();
  v6 = *(v5 + 88);
  v8 = type metadata accessor for RCHFlowAsync.State(0, v4, v6, v7);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_4_1();
  sub_1DCB7AC2C(v1);
  OUTLINED_FUNCTION_19();
  result = swift_getEnumCaseMultiPayload();
  if (result == 10)
  {
    v13 = *(v1 + 16);
    *a1 = *v1;
    *(a1 + 16) = v13;
  }

  else
  {
    type metadata accessor for RCHFlowAsync.RCHFlowError(0, v4, v6, v12);
    OUTLINED_FUNCTION_1_107();
    WitnessTable = swift_getWitnessTable();
    v15 = OUTLINED_FUNCTION_64_16(WitnessTable);
    sub_1DCB7AC2C(v16);
    OUTLINED_FUNCTION_40_1();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v8);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = v15 | 0x4000000000000000;
    v20 = OUTLINED_FUNCTION_19();
    return v21(v20);
  }

  return result;
}

void sub_1DCEE60E4()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  OUTLINED_FUNCTION_8_2();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_8_2();
  v5 = *(v4 + 88);
  v6 = OUTLINED_FUNCTION_25_0();
  v9 = type metadata accessor for RCHFlowAsync.State(v6, v7, v5, v8);
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_10_2();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v73[-v19];
  sub_1DCB7AC2C(&v73[-v19]);
  v21 = sub_1DCEE6538(v9);
  v22 = *(v11 + 8);
  v23 = OUTLINED_FUNCTION_19();
  v22(v23);
  if (!v21)
  {
    OUTLINED_FUNCTION_55_1();
    (*(v5 + 16))(&v74, v1, v3, v5);
    if (v74)
    {
      if (v74 != 1)
      {
        goto LABEL_13;
      }

      sub_1DCB7AC2C(v16);
      OUTLINED_FUNCTION_111_4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 9)
      {
        v57 = OUTLINED_FUNCTION_133_1(EnumCaseMultiPayload, *(*(v5 + 8) + 8));
        type metadata accessor for RCHFlowSharedData(0, v57, v58, v59);
        sub_1DD0DCF8C();
      }

      if (EnumCaseMultiPayload == 7)
      {
        v43 = *v16;
        type metadata accessor for Input(255);
        OUTLINED_FUNCTION_84_10();
        OUTLINED_FUNCTION_133_1(v44, v45);
        v46 = OUTLINED_FUNCTION_6_0();
        type metadata accessor for RCHFlowSharedData(v46, v47, v48, v49);
        OUTLINED_FUNCTION_6_0();
        sub_1DD0DE97C();
        v50 = OUTLINED_FUNCTION_21_39();
        v53 = *(OUTLINED_FUNCTION_88_2(v50, v51, v52) + 48);
        OUTLINED_FUNCTION_2_94();
        v54 = OUTLINED_FUNCTION_90_0();
        sub_1DCEED3F8(v54, v55, v56);
        *(v20 + v53) = v43;
        OUTLINED_FUNCTION_19();
        swift_storeEnumTagMultiPayload();
        sub_1DD0DCF8C();
      }

      if (EnumCaseMultiPayload != 1)
      {
        type metadata accessor for Input(255);
        OUTLINED_FUNCTION_84_10();
        OUTLINED_FUNCTION_133_1(v60, v61);
        v62 = OUTLINED_FUNCTION_6_0();
        type metadata accessor for RCHFlowSharedData(v62, v63, v64, v65);
        OUTLINED_FUNCTION_6_0();
        sub_1DD0DE97C();
        v66 = OUTLINED_FUNCTION_21_39();
        v69 = *(OUTLINED_FUNCTION_88_2(v66, v67, v68) + 48);
        OUTLINED_FUNCTION_2_94();
        v70 = OUTLINED_FUNCTION_90_0();
        sub_1DCEED3F8(v70, v71, v72);
        *(v20 + v69) = 0;
        OUTLINED_FUNCTION_19();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_104_5();
      }

      v29 = OUTLINED_FUNCTION_111_4();
      v22(v29);
      type metadata accessor for Input(255);
      OUTLINED_FUNCTION_84_10();
      OUTLINED_FUNCTION_133_1(v30, v31);
      v32 = OUTLINED_FUNCTION_6_0();
      type metadata accessor for RCHFlowSharedData(v32, v33, v34, v35);
      OUTLINED_FUNCTION_6_0();
      sub_1DD0DE97C();
      v36 = OUTLINED_FUNCTION_21_39();
      v39 = *(OUTLINED_FUNCTION_88_2(v36, v37, v38) + 48);
      OUTLINED_FUNCTION_2_94();
      v40 = OUTLINED_FUNCTION_90_0();
      sub_1DCEED3F8(v40, v41, v42);
      *(v20 + v39) = 0;
      OUTLINED_FUNCTION_19();
    }

    else
    {
      v20[1] = 0;
      v20[2] = 0;
      *v20 = 0x8000000000000000;
      OUTLINED_FUNCTION_19();
    }

    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_104_5();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v24 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v24, qword_1EDE57E00);
  v25 = sub_1DD0DD8EC();
  v26 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v27);
    _os_log_impl(&dword_1DCAFC000, v25, v26, "RCHFlowAsync is in a completed state. Returning false from on(input:) without consulting strategy.", v9, 2u);
    OUTLINED_FUNCTION_80();
  }

LABEL_13:
  OUTLINED_FUNCTION_49();
}

BOOL sub_1DCEE6538(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  v6 = swift_getEnumCaseMultiPayload() == 10;
  (*(v3 + 8))(v5, a1);
  return v6;
}

uint64_t sub_1DCEE6620()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 768) = v3;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCEE691C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 808) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCEE6A1C()
{
  OUTLINED_FUNCTION_39();
  *(v0 + 816) = *(v0 + 528);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEE6B64()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 824);
  v5 = *v0;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v8 + 848) = v7;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCEE6C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_80_11();
  sub_1DCF34488(*(v11 + *(v10 + 144)));
}

uint64_t sub_1DCEE6E0C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 888) = v3;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DCEE6EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  v15 = v14[108];
  v16 = v14[90];
  *v16 = v14[107];
  v16[1] = v15;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEE70E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 928) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCEE71E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  sub_1DCAFF9E8((v15 + 56), v15 + 16);
  v16 = sub_1DD0DD8EC();
  v17 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v18);
    _os_log_impl(&dword_1DCAFC000, v16, v17, "RCHFlow successfully sent error dialog. Transitioning to complete.", v14, 2u);
    OUTLINED_FUNCTION_80();
  }

  v19 = *(v15 + 896);
  v20 = *(v15 + 720);

  *v20 = v19 | 0x4000000000000000;
  *(v20 + 8) = xmmword_1DD0E5100;
  swift_storeEnumTagMultiPayload();
  v21 = v19;
  sub_1DCB7C864(v20);
}

uint64_t sub_1DCEE7560()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  sub_1DCB16DB0(v2 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB16DB0(v2 + 376, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCEE768C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();

  static ExecuteResponse.complete()();
  __swift_destroy_boxed_opaque_existential_1Tm((v10 + 16));
  OUTLINED_FUNCTION_4_95();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_125_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

void sub_1DCEE7744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_79();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = *(v22 + 808);

  *(v22 + 536) = v25;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  if (swift_dynamicCast())
  {
    v27 = (*(*(v22 + 584) + 88))(*(v22 + 592), *(v22 + 576));
    if (v27 == *off_1E8648628)
    {
      v28 = v27;

      v29 = sub_1DD0DD8EC();
      v30 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_50_0();
        *v31 = 0;
        _os_log_impl(&dword_1DCAFC000, v29, v30, "RCHFlow timed out while attempting to parse an Intent from input", v31, 2u);
        OUTLINED_FUNCTION_80();
      }

      v32 = *(v22 + 720);
      v33 = *(v22 + 584);
      v34 = *(v22 + 576);

      v35 = sub_1DCEED3AC(&qword_1ECCA9868, off_1E8648630);
      v36 = OUTLINED_FUNCTION_34(v34, v35);
      (*(v33 + 104))(v37, v28, v34);
      *v32 = v36;
      swift_storeEnumTagMultiPayload();
      sub_1DCB7C864(v32);
    }

    (*(*(v22 + 584) + 8))(*(v22 + 592), *(v22 + 576));
  }

  v38 = *(v22 + 808);

  v39 = v38;
  v40 = sub_1DD0DD8EC();
  v41 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = OUTLINED_FUNCTION_151();
    v43 = OUTLINED_FUNCTION_83();
    a11 = v43;
    *v42 = 136315138;
    swift_getErrorValue();
    v44 = sub_1DD0DF18C();
    v46 = sub_1DCB10E9C(v44, v45, &a11);

    *(v42 + 4) = v46;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v47, v48, "RCHFlow received an error while attempting to parse an Intent from input: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_80();
  }

  v49 = *(v22 + 808);
  v50 = *(v22 + 720);
  *v50 = v49;
  swift_storeEnumTagMultiPayload();
  v51 = v49;
  sub_1DCB7C864(v50);
}

void sub_1DCEE7AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  v11 = *(v10 + 928);
  v12 = *(v10 + 720);

  v12[1] = 0;
  v12[2] = 0;
  *v12 = v11 | 0x4000000000000000;
  swift_storeEnumTagMultiPayload();
  v13 = v11;
  sub_1DCB7C864(v12);
}

uint64_t sub_1DCEE7C24(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *a2;
  v4[7] = *a2;
  type metadata accessor for Parse(0);
  v4[8] = swift_task_alloc();
  v6 = *(v5 + 80);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCEE7D50, 0, 0);
}

uint64_t sub_1DCEE7D50()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  (*(v0[10] + 16))(v0[11], v0[4] + *(*v0[4] + 96), v0[9]);
  v4 = type metadata accessor for Input(0);
  sub_1DCEED3F8(v3 + *(v4 + 20), v1, type metadata accessor for Parse);
  if (v2)
  {
    v5 = *(v0[6] + 24);
    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  v0[12] = v5;
  v7 = *(v0[7] + 88);
  v0[13] = v7;
  OUTLINED_FUNCTION_8();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1DCEE7EF0;
  v11 = v0[8];
  v10 = v0[9];

  return v13(v11, v5, v10, v7);
}

uint64_t sub_1DCEE7EF0()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 120) = v0;

  v7 = *(v4 + 96);
  if (!v0)
  {
    *(v5 + 128) = v3;
  }

  OUTLINED_FUNCTION_41_23();
  v8 = OUTLINED_FUNCTION_115_6();
  v9(v8);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_125_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCEE80A0()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[16];
  v2 = v0[3];
  OUTLINED_FUNCTION_60_14();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnnotatedIntent(0, AssociatedTypeWitness, v4, v5);
  v0[2] = v1;
  v6 = sub_1DCF4142C();
  *v2 = sub_1DCB5C758((v0 + 2), v6);

  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCEE8184()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCEE82AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a2 + 88);
  v7 = *(*a2 + 80);
  v10 = (*(v6 + 40) + **(v6 + 40));
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DCB4AD3C;

  return v10(a1, a3, v7, v6);
}

void sub_1DCEE8454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void), uint64_t a4)
{
  a3(0, *(*v4 + 80), *(*v4 + 88));
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19();
  Flow.deferToExecuteAsync(_:)();
}

void sub_1DCEE84F8()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_99_7();
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_82_7();
  v7 = type metadata accessor for RCHFlowAsync.State(v3, v4, v5, v6);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_10_2();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (v57 - v15);
  v17 = v0[1];
  v58 = *v0;
  sub_1DCB7AC2C(v57 - v15);
  OUTLINED_FUNCTION_90_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v16;
    switch(v58 >> 62)
    {
      case 1uLL:
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v51 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v51, qword_1EDE57E00);
        sub_1DD0DCF8C();
      case 2uLL:
        v39 = v58 & 0x3FFFFFFFFFFFFFFFLL;
        if (v17)
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_1_2();
            swift_once();
          }

          v40 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v40, qword_1EDE57E00);
          v41 = sub_1DD0DD8EC();
          v42 = sub_1DD0DE6DC();
          if (OUTLINED_FUNCTION_61_1(v42))
          {
            v43 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_97_0(v43);
            OUTLINED_FUNCTION_56_1(&dword_1DCAFC000, v44, v16, "RCHFlow an error was encountered and handled during app resolution.");
            OUTLINED_FUNCTION_14_3();
          }

          *v12 = v39 | 0x4000000000000000;
          *(v12 + 8) = xmmword_1DD0E5100;
          OUTLINED_FUNCTION_131();
        }

        else
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_1_2();
            swift_once();
          }

          v52 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v52, qword_1EDE57E00);
          v53 = sub_1DD0DD8EC();
          v54 = sub_1DD0DE6DC();
          if (OUTLINED_FUNCTION_61_1(v54))
          {
            v55 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_97_0(v55);
            OUTLINED_FUNCTION_56_1(&dword_1DCAFC000, v56, v16, "RCHFlow an error was encountered but not handled during app resolution. Attempting to send error response.");
            OUTLINED_FUNCTION_14_3();
          }

          *v12 = v39;
          OUTLINED_FUNCTION_131();
        }

        swift_storeEnumTagMultiPayload();
        sub_1DCBF4C98(v58, v17);
        OUTLINED_FUNCTION_88_11();
      case 3uLL:
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v45 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v45, qword_1EDE57E00);
        v46 = sub_1DD0DD8EC();
        v47 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_61_1(v47))
        {
          v48 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_47_0(v48);
          OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v49, v50, "RCHFlow intent was cancelled during app resolution");
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_45_19(0x8000000000000000);
        OUTLINED_FUNCTION_95_6();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_88_11();
      default:
        v57[2] = v17;
        v57[3] = v18;
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v57[1] = v2;
        v19 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v19, qword_1EDE57E00);
        sub_1DD0DCF8C();
    }
  }

  v20 = OUTLINED_FUNCTION_90_0();
  v21(v20);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v22 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v22, qword_1EDE57E00);
  v23 = sub_1DD0DD8EC();
  v24 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_61_1(v24))
  {
    v25 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_47_0(v25);
    OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v26, v27, "Received an app resolution callback but we are not waiting for app resolution");
    OUTLINED_FUNCTION_37();
  }

  v28 = OUTLINED_FUNCTION_82_7();
  type metadata accessor for RCHFlowAsync.RCHFlowError(v28, v29, v30, v31);
  OUTLINED_FUNCTION_1_107();
  swift_getWitnessTable();
  v32 = OUTLINED_FUNCTION_75_0();
  v34 = OUTLINED_FUNCTION_34(v32, v33);
  sub_1DCB7AC2C(v35);
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v7);
  OUTLINED_FUNCTION_45_19(v34 | 0x4000000000000000);
  OUTLINED_FUNCTION_95_6();
  swift_storeEnumTagMultiPayload();
  sub_1DCB7C864(v12);
}

void sub_1DCEE8D48()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  OUTLINED_FUNCTION_8_2();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_8_2();
  v6 = *(v5 + 88);
  v7 = OUTLINED_FUNCTION_25_0();
  type metadata accessor for RCHFlowAsync.RCHFlowError(v7, v8, v6, v9);
  OUTLINED_FUNCTION_9();
  v75 = v10;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v73[1] = type metadata accessor for SiriKitEventPayload(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_16();
  v73[0] = v16 - v15;
  v17 = OUTLINED_FUNCTION_25_0();
  type metadata accessor for RCHFlowAsync.State(v17, v18, v6, v19);
  OUTLINED_FUNCTION_9();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_10_2();
  v26 = v24 - v25;
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v31 = (v73 - v30);
  v74 = *v2;
  v32 = *(v2 + 8);
  v33 = v29;
  v76 = v0;
  sub_1DCB7AC2C(v73 - v30);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v34 = *v31;
    if (v32 >> 6)
    {
      if (v32 >> 6 == 1)
      {
        if (v32)
        {
          v35 = v74;
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_1_2();
            swift_once();
          }

          v36 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v36, qword_1EDE57E00);
          v37 = sub_1DD0DD8EC();
          v38 = sub_1DD0DE6DC();
          if (OUTLINED_FUNCTION_44_22(v38))
          {
            v39 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_97_0(v39);
            OUTLINED_FUNCTION_56_1(&dword_1DCAFC000, v40, v4, "RCHFlow ResolveConfirm resulted in an error that was already handled. Transitioning to error");
            OUTLINED_FUNCTION_14_3();
          }

          *v26 = v35 | 0x4000000000000000;
          *(v26 + 8) = xmmword_1DD0E5100;
          swift_storeEnumTagMultiPayload();
          sub_1DCB8E3C0(v35, v32);
        }

        else
        {
          v53 = v74;
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_1_2();
            swift_once();
          }

          v54 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v54, qword_1EDE57E00);
          v55 = v53;
          v56 = sub_1DD0DD8EC();
          v57 = sub_1DD0DE6EC();
          sub_1DCB151A8(v53, v32);
          if (os_log_type_enabled(v56, v57))
          {
            v58 = OUTLINED_FUNCTION_151();
            v59 = OUTLINED_FUNCTION_83();
            v77[0] = v59;
            *v58 = 136315138;
            swift_getErrorValue();
            v60 = sub_1DD0DF18C();
            sub_1DCB10E9C(v60, v61, v77);
            OUTLINED_FUNCTION_96_8();

            *(v58 + 4) = v32;
            OUTLINED_FUNCTION_4_57(&dword_1DCAFC000, v62, v63, "RCHFlow ResolveConfirm resulted in an error that was not handled. Will attempt to send error dialog: %s");
            __swift_destroy_boxed_opaque_existential_1Tm(v59);
            OUTLINED_FUNCTION_80();
            v53 = v74;
            OUTLINED_FUNCTION_80();
          }

          *v26 = v53;
          swift_storeEnumTagMultiPayload();
          v64 = v53;
        }
      }

      else
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v48 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v48, qword_1EDE57E00);
        v49 = sub_1DD0DD8EC();
        v50 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_44_22(v50))
        {
          v51 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_97_0(v51);
          OUTLINED_FUNCTION_56_1(&dword_1DCAFC000, v52, v4, "RCHFlow Intent was cancelled.");
          OUTLINED_FUNCTION_14_3();
        }

        OUTLINED_FUNCTION_45_19(0x8000000000000000);
        swift_storeEnumTagMultiPayload();
      }

      OUTLINED_FUNCTION_88_11();
    }

    v42 = v26;
    if (v32)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v43 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v43, qword_1EDE57E00);
      v44 = sub_1DD0DD8EC();
      v45 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_44_22(v45))
      {
        v46 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_97_0(v46);
        OUTLINED_FUNCTION_56_1(&dword_1DCAFC000, v47, v4, "RCHFlow Intent was rejected. Cancelling.");
        OUTLINED_FUNCTION_14_3();
      }

      *(v26 + 8) = 0;
      *(v26 + 16) = 0;
      *v26 = 0x8000000000000000;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_104_5();
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v65 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v65, qword_1EDE57E00);
    v66 = sub_1DD0DD8EC();
    v67 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v67))
    {
      v68 = OUTLINED_FUNCTION_50_0();
      *v68 = 0;
      _os_log_impl(&dword_1DCAFC000, v66, v67, "RCHFlow Intent is Resolved and Confirmed. Transitioning to Handle.", v68, 2u);
      OUTLINED_FUNCTION_80();
    }

    v70 = *(v34 + 16);
    v69 = *(v34 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    IntentResolutionRecord.init(app:intent:intentResponse:)(v70, v69, v74, v77);
    v71 = v77[1];
    v72 = v77[2];
    *v42 = v77[0];
    v42[1] = v71;
    v42[2] = v72;
    swift_storeEnumTagMultiPayload();
    sub_1DD0DCF8C();
  }

  (*(v21 + 8))(v31, v33);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v41 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v41, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t dispatch thunk of RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_8();
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_1DCE41734;
  OUTLINED_FUNCTION_51_18();

  return v6();
}

uint64_t dispatch thunk of RCHFlowStrategyAsync.makeErrorResponse(error:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_8();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v5[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_51_18();

  return v7();
}

unint64_t *sub_1DCEE9980(unint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v6 = a1[1];
  v5 = a1[2];
  *a1 = *a2;
  a1[2] = v3;
  sub_1DCB070E0(v4, v6, v5);
  return a1;
}

uint64_t sub_1DCEE99C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 24))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DCEE9A18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1DCEE9A70(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
    result[1] = 0;
    result[2] = 0;
  }

  *result = v2;
  return result;
}

uint64_t dispatch thunk of RCHFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  OUTLINED_FUNCTION_66();
  v7 = (*(v2 + 152) + **(v2 + 152));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AD3C;

  return v7(v1);
}

uint64_t sub_1DCEE9C4C(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  v4 = v2;
  if (v5 <= 0x3F)
  {
    v4 = type metadata accessor for RCHFlowAsync.State(319, v2, *(a1 + 88), v3);
    if (v6 <= 0x3F)
    {
      inited = swift_initClassMetadata2();
      if (inited)
      {
        return inited;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1DCEE9D50(uint64_t a1)
{
  result = type metadata accessor for Input(319);
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v3 = MEMORY[0x1E69E5D20] + 64;
    v7 = &v6;
    v8 = MEMORY[0x1E69E5D20] + 64;
    v9 = &unk_1DD100870;
    v10 = &unk_1DD100870;
    swift_getTupleTypeLayout2();
    v11 = &v5;
    swift_getTupleTypeLayout2();
    v12 = &v4;
    v13 = &unk_1DD100870;
    v14 = v3;
    v15 = &unk_1DD1008A0;
    v16 = &unk_1DD100870;
    v17 = &unk_1DD1008B8;
    v18 = "\b";
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

unint64_t *sub_1DCEE9E78(unint64_t *a1, void *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a3 - 8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = sub_1DD0DB04C();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      v7 = type metadata accessor for Input(0);
      v8 = v7[5];
      v9 = a1 + v8;
      v10 = a2 + v8;
      v11 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v12 = sub_1DD0DC76C();
          (*(*(v12 - 8) + 16))(v9, v10, v12);
          goto LABEL_90;
        case 1u:
          v81 = sub_1DD0DC76C();
          (*(*(v81 - 8) + 16))(v9, v10, v81);
          v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v9[*(v82 + 48)] = *&v10[*(v82 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v58 = *(v10 + 1);
          *v9 = *v10;
          *(v9 + 1) = v58;
          *(v9 + 2) = *(v10 + 2);

          goto LABEL_90;
        case 3u:
          *v9 = *v10;
          swift_unknownObjectRetain();
          goto LABEL_90;
        case 4u:
          v51 = sub_1DD0DB1EC();
          (*(*(v51 - 8) + 16))(v9, v10, v51);
          goto LABEL_90;
        case 5u:
          v88 = *v10;
          *v9 = *v10;
          v89 = v88;
          goto LABEL_90;
        case 6u:
          v92 = sub_1DD0DB4BC();
          (*(*(v92 - 8) + 16))(v9, v10, v92);
          v93 = type metadata accessor for USOParse(0);
          v94 = v93[5];
          v95 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v10[v94], 1, v95))
          {
            v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v9[v94], &v10[v94], *(*(v96 - 8) + 64));
          }

          else
          {
            (*(*(v95 - 8) + 16))(&v9[v94], &v10[v94], v95);
            __swift_storeEnumTagSinglePayload(&v9[v94], 0, 1, v95);
          }

          v194 = v93[6];
          v195 = &v9[v194];
          v196 = &v10[v194];
          v197 = *(v196 + 1);
          *v195 = *v196;
          *(v195 + 1) = v197;
          v198 = v93[7];
          v199 = &v9[v198];
          v200 = &v10[v198];
          v199[4] = v200[4];
          *v199 = *v200;

          goto LABEL_90;
        case 7u:
          v75 = sub_1DD0DB4BC();
          (*(*(v75 - 8) + 16))(v9, v10, v75);
          v76 = type metadata accessor for USOParse(0);
          v77 = v76[5];
          v78 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v10[v77], 1, v78))
          {
            v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v9[v77], &v10[v77], *(*(v79 - 8) + 64));
          }

          else
          {
            (*(*(v78 - 8) + 16))(&v9[v77], &v10[v77], v78);
            __swift_storeEnumTagSinglePayload(&v9[v77], 0, 1, v78);
          }

          v154 = v76[6];
          v155 = &v9[v154];
          v156 = &v10[v154];
          v157 = *(v156 + 1);
          *v155 = *v156;
          *(v155 + 1) = v157;
          v158 = v76[7];
          v159 = &v9[v158];
          v160 = &v10[v158];
          v159[4] = v160[4];
          *v159 = *v160;
          v161 = type metadata accessor for LinkParse(0);
          v162 = v161[5];
          v163 = &v9[v162];
          v164 = &v10[v162];
          v165 = *(v164 + 1);
          *v163 = *v164;
          *(v163 + 1) = v165;
          v166 = v161[6];
          v167 = &v9[v166];
          v168 = &v10[v166];
          v169 = *(v168 + 1);
          *v167 = *v168;
          *(v167 + 1) = v169;
          v170 = v161[7];
          v171 = &v9[v170];
          v172 = &v10[v170];
          v173 = *(v172 + 1);
          *v171 = *v172;
          *(v171 + 1) = v173;

          goto LABEL_90;
        case 8u:
          v97 = sub_1DD0DD12C();
          (*(*(v97 - 8) + 16))(v9, v10, v97);
          v98 = type metadata accessor for NLRouterParse(0);
          v99 = *(v98 + 20);
          v100 = &v9[v99];
          v101 = &v10[v99];
          v102 = *(v101 + 1);
          *v100 = *v101;
          *(v100 + 1) = v102;
          v103 = *(v98 + 24);
          v277 = v98;
          __dsta = &v9[v103];
          v104 = &v10[v103];
          v105 = type metadata accessor for USOParse(0);

          if (__swift_getEnumTagSinglePayload(v104, 1, v105))
          {
            v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dsta, v104, *(*(v106 - 8) + 64));
          }

          else
          {
            v201 = sub_1DD0DB4BC();
            (*(*(v201 - 8) + 16))(__dsta, v104, v201);
            v202 = v105[5];
            v274 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v104[v202], 1, v274))
            {
              v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dsta[v202], &v104[v202], *(*(v203 - 8) + 64));
            }

            else
            {
              (*(*(v274 - 8) + 16))(&__dsta[v202], &v104[v202]);
              __swift_storeEnumTagSinglePayload(&__dsta[v202], 0, 1, v274);
            }

            v234 = v105[6];
            v235 = &__dsta[v234];
            v236 = &v104[v234];
            v237 = *(v236 + 1);
            *v235 = *v236;
            *(v235 + 1) = v237;
            v238 = v105[7];
            v239 = &__dsta[v238];
            v240 = &v104[v238];
            v239[4] = v240[4];
            *v239 = *v240;

            __swift_storeEnumTagSinglePayload(__dsta, 0, 1, v105);
          }

          v241 = *(v277 + 28);
          v242 = *&v10[v241];
          *&v9[v241] = v242;
          v243 = v242;
          goto LABEL_90;
        case 9u:
          v54 = sub_1DD0DD08C();
          (*(*(v54 - 8) + 16))(v9, v10, v54);
LABEL_90:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v9, v10, *(*(v11 - 8) + 64));
          break;
      }

      *(a1 + v7[6]) = *(a2 + v7[6]);
      v244 = v7[7];
      v245 = a1 + v244;
      v246 = a2 + v244;
      v247 = *(a2 + v244 + 24);

      if (v247)
      {
        v248 = *(v246 + 4);
        *(v245 + 3) = v247;
        *(v245 + 4) = v248;
        (**(v247 - 8))(v245, v246, v247);
      }

      else
      {
        v249 = *(v246 + 1);
        *v245 = *v246;
        *(v245 + 1) = v249;
        *(v245 + 4) = *(v246 + 4);
      }

      *(a1 + v7[8]) = *(a2 + v7[8]);
      swift_getAssociatedTypeWitness();
      v250 = *(swift_getTupleTypeMetadata2() + 48);
      v251 = *(a2 + v250);
      *(a1 + v250) = v251;
      v252 = v251;
      goto LABEL_103;
    case 1u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 2u:
      v24 = *a2;
      v25 = a2[1];
      *a1 = v24;
      a1[1] = v25;
      sub_1DD0DCF8C();
    case 3u:
      v26 = *a2;
      v27 = a2[1];
      *a1 = v26;
      a1[1] = v27;
      sub_1DD0DCF8C();
    case 4u:
      v15 = sub_1DD0DB04C();
      (*(*(v15 - 8) + 16))(a1, a2, v15);
      v16 = type metadata accessor for Input(0);
      v17 = v16[5];
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v21 = sub_1DD0DC76C();
          (*(*(v21 - 8) + 16))(v18, v19, v21);
          goto LABEL_82;
        case 1u:
          v52 = sub_1DD0DC76C();
          (*(*(v52 - 8) + 16))(v18, v19, v52);
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v18[*(v53 + 48)] = *&v19[*(v53 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v45 = *(v19 + 1);
          *v18 = *v19;
          *(v18 + 1) = v45;
          *(v18 + 2) = *(v19 + 2);

          goto LABEL_82;
        case 3u:
          *v18 = *v19;
          swift_unknownObjectRetain();
          goto LABEL_82;
        case 4u:
          v43 = sub_1DD0DB1EC();
          (*(*(v43 - 8) + 16))(v18, v19, v43);
          goto LABEL_82;
        case 5u:
          v55 = *v19;
          *v18 = *v19;
          v56 = v55;
          goto LABEL_82;
        case 6u:
          v59 = sub_1DD0DB4BC();
          (*(*(v59 - 8) + 16))(v18, v19, v59);
          v60 = type metadata accessor for USOParse(0);
          v61 = v60[5];
          v62 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v19[v61], 1, v62))
          {
            v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v18[v61], &v19[v61], *(*(v63 - 8) + 64));
          }

          else
          {
            (*(*(v62 - 8) + 16))(&v18[v61], &v19[v61], v62);
            __swift_storeEnumTagSinglePayload(&v18[v61], 0, 1, v62);
          }

          v144 = v60[6];
          v145 = &v18[v144];
          v146 = &v19[v144];
          v147 = *(v146 + 1);
          *v145 = *v146;
          *(v145 + 1) = v147;
          v148 = v60[7];
          v149 = &v18[v148];
          v150 = &v19[v148];
          v149[4] = v150[4];
          *v149 = *v150;

          goto LABEL_82;
        case 7u:
          v46 = sub_1DD0DB4BC();
          (*(*(v46 - 8) + 16))(v18, v19, v46);
          v47 = type metadata accessor for USOParse(0);
          v48 = v47[5];
          v49 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v19[v48], 1, v49))
          {
            v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v18[v48], &v19[v48], *(*(v50 - 8) + 64));
          }

          else
          {
            (*(*(v49 - 8) + 16))(&v18[v48], &v19[v48], v49);
            __swift_storeEnumTagSinglePayload(&v18[v48], 0, 1, v49);
          }

          v124 = v47[6];
          v125 = &v18[v124];
          v126 = &v19[v124];
          v127 = *(v126 + 1);
          *v125 = *v126;
          *(v125 + 1) = v127;
          v128 = v47[7];
          v129 = &v18[v128];
          v130 = &v19[v128];
          v129[4] = v130[4];
          *v129 = *v130;
          v131 = type metadata accessor for LinkParse(0);
          v132 = v131[5];
          v133 = &v18[v132];
          v134 = &v19[v132];
          v135 = *(v134 + 1);
          *v133 = *v134;
          *(v133 + 1) = v135;
          v136 = v131[6];
          v137 = &v18[v136];
          v138 = &v19[v136];
          v139 = *(v138 + 1);
          *v137 = *v138;
          *(v137 + 1) = v139;
          v140 = v131[7];
          v141 = &v18[v140];
          v142 = &v19[v140];
          v143 = *(v142 + 1);
          *v141 = *v142;
          *(v141 + 1) = v143;

          goto LABEL_82;
        case 8u:
          v64 = sub_1DD0DD12C();
          (*(*(v64 - 8) + 16))(v18, v19, v64);
          v65 = type metadata accessor for NLRouterParse(0);
          v66 = *(v65 + 20);
          v67 = &v18[v66];
          v68 = &v19[v66];
          v69 = *(v68 + 1);
          *v67 = *v68;
          *(v67 + 1) = v69;
          v70 = *(v65 + 24);
          v276 = v65;
          __dst = &v18[v70];
          v71 = &v19[v70];
          v72 = type metadata accessor for USOParse(0);

          if (__swift_getEnumTagSinglePayload(v71, 1, v72))
          {
            v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dst, v71, *(*(v73 - 8) + 64));
          }

          else
          {
            v151 = sub_1DD0DB4BC();
            (*(*(v151 - 8) + 16))(__dst, v71, v151);
            v152 = v72[5];
            v273 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v71[v152], 1, v273))
            {
              v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dst[v152], &v71[v152], *(*(v153 - 8) + 64));
            }

            else
            {
              (*(*(v273 - 8) + 16))(&__dst[v152], &v71[v152]);
              __swift_storeEnumTagSinglePayload(&__dst[v152], 0, 1, v273);
            }

            v214 = v72[6];
            v215 = &__dst[v214];
            v216 = &v71[v214];
            v217 = *(v216 + 1);
            *v215 = *v216;
            *(v215 + 1) = v217;
            v218 = v72[7];
            v219 = &__dst[v218];
            v220 = &v71[v218];
            v219[4] = v220[4];
            *v219 = *v220;

            __swift_storeEnumTagSinglePayload(__dst, 0, 1, v72);
          }

          v221 = *(v276 + 28);
          v222 = *&v19[v221];
          *&v18[v221] = v222;
          v223 = v222;
          goto LABEL_82;
        case 9u:
          v44 = sub_1DD0DD08C();
          (*(*(v44 - 8) + 16))(v18, v19, v44);
LABEL_82:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v18, v19, *(*(v20 - 8) + 64));
          break;
      }

      *(a1 + v16[6]) = *(a2 + v16[6]);
      v224 = v16[7];
      v225 = a1 + v224;
      v226 = a2 + v224;
      v227 = *(a2 + v224 + 24);

      if (v227)
      {
        v228 = *(v226 + 4);
        *(v225 + 3) = v227;
        *(v225 + 4) = v228;
        (**(v227 - 8))(v225, v226, v227);
      }

      else
      {
        v229 = *(v226 + 1);
        *v225 = *v226;
        *(v225 + 1) = v229;
        *(v225 + 4) = *(v226 + 4);
      }

      *(a1 + v16[8]) = *(a2 + v16[8]);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      type metadata accessor for RCHFlowSharedData(255, AssociatedTypeWitness, v231, v232);
      sub_1DD0DE97C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      *(a1 + *(TupleTypeMetadata2 + 48)) = *(a2 + *(TupleTypeMetadata2 + 48));
      sub_1DD0DCF8C();
    case 5u:
      v28 = sub_1DD0DB04C();
      (*(*(v28 - 8) + 16))(a1, a2, v28);
      v29 = type metadata accessor for Input(0);
      v30 = v29[5];
      v31 = a1 + v30;
      v32 = a2 + v30;
      v33 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v34 = sub_1DD0DC76C();
          (*(*(v34 - 8) + 16))(v31, v32, v34);
          goto LABEL_98;
        case 1u:
          v90 = sub_1DD0DC76C();
          (*(*(v90 - 8) + 16))(v31, v32, v90);
          v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v31[*(v91 + 48)] = *&v32[*(v91 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v80 = *(v32 + 1);
          *v31 = *v32;
          *(v31 + 1) = v80;
          *(v31 + 2) = *(v32 + 2);

          goto LABEL_98;
        case 3u:
          *v31 = *v32;
          swift_unknownObjectRetain();
          goto LABEL_98;
        case 4u:
          v57 = sub_1DD0DB1EC();
          (*(*(v57 - 8) + 16))(v31, v32, v57);
          goto LABEL_98;
        case 5u:
          v107 = *v32;
          *v31 = *v32;
          v108 = v107;
          goto LABEL_98;
        case 6u:
          v109 = sub_1DD0DB4BC();
          (*(*(v109 - 8) + 16))(v31, v32, v109);
          v110 = type metadata accessor for USOParse(0);
          v111 = v110[5];
          v112 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v32[v111], 1, v112))
          {
            v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v31[v111], &v32[v111], *(*(v113 - 8) + 64));
          }

          else
          {
            (*(*(v112 - 8) + 16))(&v31[v111], &v32[v111], v112);
            __swift_storeEnumTagSinglePayload(&v31[v111], 0, 1, v112);
          }

          v204 = v110[6];
          v205 = &v31[v204];
          v206 = &v32[v204];
          v207 = *(v206 + 1);
          *v205 = *v206;
          *(v205 + 1) = v207;
          v208 = v110[7];
          v209 = &v31[v208];
          v210 = &v32[v208];
          v209[4] = v210[4];
          *v209 = *v210;

          goto LABEL_98;
        case 7u:
          v83 = sub_1DD0DB4BC();
          (*(*(v83 - 8) + 16))(v31, v32, v83);
          v84 = type metadata accessor for USOParse(0);
          v85 = v84[5];
          v86 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v32[v85], 1, v86))
          {
            v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v31[v85], &v32[v85], *(*(v87 - 8) + 64));
          }

          else
          {
            (*(*(v86 - 8) + 16))(&v31[v85], &v32[v85], v86);
            __swift_storeEnumTagSinglePayload(&v31[v85], 0, 1, v86);
          }

          v174 = v84[6];
          v175 = &v31[v174];
          v176 = &v32[v174];
          v177 = *(v176 + 1);
          *v175 = *v176;
          *(v175 + 1) = v177;
          v178 = v84[7];
          v179 = &v31[v178];
          v180 = &v32[v178];
          v179[4] = v180[4];
          *v179 = *v180;
          v181 = type metadata accessor for LinkParse(0);
          v182 = v181[5];
          v183 = &v31[v182];
          v184 = &v32[v182];
          v185 = *(v184 + 1);
          *v183 = *v184;
          *(v183 + 1) = v185;
          v186 = v181[6];
          v187 = &v31[v186];
          v188 = &v32[v186];
          v189 = *(v188 + 1);
          *v187 = *v188;
          *(v187 + 1) = v189;
          v190 = v181[7];
          v191 = &v31[v190];
          v192 = &v32[v190];
          v193 = *(v192 + 1);
          *v191 = *v192;
          *(v191 + 1) = v193;

          goto LABEL_98;
        case 8u:
          v114 = sub_1DD0DD12C();
          (*(*(v114 - 8) + 16))(v31, v32, v114);
          v115 = type metadata accessor for NLRouterParse(0);
          v116 = *(v115 + 20);
          v117 = &v31[v116];
          v118 = &v32[v116];
          v119 = *(v118 + 1);
          *v117 = *v118;
          *(v117 + 1) = v119;
          v120 = *(v115 + 24);
          v278 = v115;
          __dstb = &v31[v120];
          v121 = &v32[v120];
          v122 = type metadata accessor for USOParse(0);

          if (__swift_getEnumTagSinglePayload(v121, 1, v122))
          {
            v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dstb, v121, *(*(v123 - 8) + 64));
          }

          else
          {
            v211 = sub_1DD0DB4BC();
            (*(*(v211 - 8) + 16))(__dstb, v121, v211);
            v212 = v122[5];
            v275 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v121[v212], 1, v275))
            {
              v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dstb[v212], &v121[v212], *(*(v213 - 8) + 64));
            }

            else
            {
              (*(*(v275 - 8) + 16))(&__dstb[v212], &v121[v212]);
              __swift_storeEnumTagSinglePayload(&__dstb[v212], 0, 1, v275);
            }

            v253 = v122[6];
            v254 = &__dstb[v253];
            v255 = &v121[v253];
            v256 = *(v255 + 1);
            *v254 = *v255;
            *(v254 + 1) = v256;
            v257 = v122[7];
            v258 = &__dstb[v257];
            v259 = &v121[v257];
            v258[4] = v259[4];
            *v258 = *v259;

            __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v122);
          }

          v260 = *(v278 + 28);
          v261 = *&v32[v260];
          *&v31[v260] = v261;
          v262 = v261;
          goto LABEL_98;
        case 9u:
          v74 = sub_1DD0DD08C();
          (*(*(v74 - 8) + 16))(v31, v32, v74);
LABEL_98:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v31, v32, *(*(v33 - 8) + 64));
          break;
      }

      *(a1 + v29[6]) = *(a2 + v29[6]);
      v263 = v29[7];
      v264 = a1 + v263;
      v265 = a2 + v263;
      v266 = *(a2 + v263 + 24);

      if (v266)
      {
        v267 = *(v265 + 4);
        *(v264 + 3) = v266;
        *(v264 + 4) = v267;
        (**(v266 - 8))(v264, v265, v266);
      }

      else
      {
        v268 = *(v265 + 1);
        *v264 = *v265;
        *(v264 + 1) = v268;
        *(v264 + 4) = *(v265 + 4);
      }

      *(a1 + v29[8]) = *(a2 + v29[8]);
      v269 = swift_getAssociatedTypeWitness();
      type metadata accessor for RCHFlowSharedData(255, v269, v270, v271);
      sub_1DD0DE97C();
      v272 = swift_getTupleTypeMetadata2();
      *(a1 + *(v272 + 48)) = *(a2 + *(v272 + 48));
      sub_1DD0DCF8C();
    case 6u:
      v35 = *a2;
      v36 = a2[1];
      *a1 = v35;
      a1[1] = v36;
      sub_1DD0DCF8C();
    case 7u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 8u:
      v40 = a2[1];
      *a1 = *a2;
      a1[1] = v40;
      a1[2] = a2[2];
      sub_1DD0DCF8C();
    case 9u:
      v22 = *a2;
      v23 = a2[1];
      *a1 = v22;
      a1[1] = v23;
      sub_1DD0DCF8C();
    case 0xAu:
      v37 = *a2;
      v38 = a2[1];
      v39 = a2[2];
      sub_1DCB72E48(v37, v38, v39);
      *a1 = v37;
      a1[1] = v38;
      a1[2] = v39;
      goto LABEL_103;
    case 0xBu:
      v13 = *a2;
      v14 = v13;
      *a1 = v13;
LABEL_103:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v41 = *(v5 + 64);

      result = memcpy(a1, a2, v41);
      break;
  }

  return result;
}

_BYTE *sub_1DCEEB99C(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:
      v21 = sub_1DD0DB04C();
      (*(*(v21 - 8) + 32))(a1, a2, v21);
      v15 = type metadata accessor for Input(0);
      v22 = v15[5];
      v23 = &a1[v22];
      v24 = &a2[v22];
      v25 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v26 = sub_1DD0DC76C();
          (*(*(v26 - 8) + 32))(v23, v24, v26);
          goto LABEL_69;
        case 1u:
          v52 = sub_1DD0DC76C();
          (*(*(v52 - 8) + 32))(v23, v24, v52);
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v23[*(v53 + 48)] = *&v24[*(v53 + 48)];
          goto LABEL_69;
        case 4u:
          v65 = sub_1DD0DB1EC();
          (*(*(v65 - 8) + 32))(v23, v24, v65);
          goto LABEL_69;
        case 6u:
          v72 = sub_1DD0DB4BC();
          (*(*(v72 - 8) + 32))(v23, v24, v72);
          v73 = type metadata accessor for USOParse(0);
          v74 = v73[5];
          v75 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v24[v74], 1, v75))
          {
            v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v23[v74], &v24[v74], *(*(v76 - 8) + 64));
          }

          else
          {
            (*(*(v75 - 8) + 32))(&v23[v74], &v24[v74], v75);
            __swift_storeEnumTagSinglePayload(&v23[v74], 0, 1, v75);
          }

          *&v23[v73[6]] = *&v24[v73[6]];
          v120 = v73[7];
          v121 = &v23[v120];
          v122 = &v24[v120];
          v121[4] = v122[4];
          *v121 = *v122;
          goto LABEL_69;
        case 7u:
          v77 = sub_1DD0DB4BC();
          (*(*(v77 - 8) + 32))(v23, v24, v77);
          v78 = type metadata accessor for USOParse(0);
          v79 = v78[5];
          v80 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v24[v79], 1, v80))
          {
            v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v23[v79], &v24[v79], *(*(v81 - 8) + 64));
          }

          else
          {
            (*(*(v80 - 8) + 32))(&v23[v79], &v24[v79], v80);
            __swift_storeEnumTagSinglePayload(&v23[v79], 0, 1, v80);
          }

          *&v23[v78[6]] = *&v24[v78[6]];
          v123 = v78[7];
          v124 = &v23[v123];
          v125 = &v24[v123];
          v124[4] = v125[4];
          *v124 = *v125;
          v126 = type metadata accessor for LinkParse(0);
          *&v23[v126[5]] = *&v24[v126[5]];
          *&v23[v126[6]] = *&v24[v126[6]];
          *&v23[v126[7]] = *&v24[v126[7]];
          goto LABEL_69;
        case 8u:
          v36 = sub_1DD0DD12C();
          (*(*(v36 - 8) + 32))(v23, v24, v36);
          v37 = type metadata accessor for NLRouterParse(0);
          *&v23[*(v37 + 20)] = *&v24[*(v37 + 20)];
          v166 = v37;
          v38 = *(v37 + 24);
          v39 = &v23[v38];
          v40 = &v24[v38];
          v41 = type metadata accessor for USOParse(0);
          if (__swift_getEnumTagSinglePayload(v40, 1, v41))
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v39, v40, *(*(v42 - 8) + 64));
          }

          else
          {
            v99 = sub_1DD0DB4BC();
            v163 = v39;
            (*(*(v99 - 8) + 32))(v39, v40, v99);
            v100 = v41[5];
            v101 = sub_1DD0DB3EC();
            v160 = v100;
            v102 = &v40[v100];
            v103 = v101;
            if (__swift_getEnumTagSinglePayload(v102, 1, v101))
            {
              v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              v105 = v163;
              memcpy(&v163[v160], &v40[v160], *(*(v104 - 8) + 64));
            }

            else
            {
              v157 = v103;
              (*(*(v103 - 8) + 32))(&v163[v160], &v40[v160], v103);
              v105 = v163;
              __swift_storeEnumTagSinglePayload(&v163[v160], 0, 1, v157);
            }

            *(v105 + v41[6]) = *&v40[v41[6]];
            v145 = v41[7];
            v146 = v105 + v145;
            v147 = &v40[v145];
            *(v146 + 4) = v147[4];
            *v146 = *v147;
            __swift_storeEnumTagSinglePayload(v105, 0, 1, v41);
          }

          *&v23[*(v166 + 28)] = *&v24[*(v166 + 28)];
          goto LABEL_69;
        case 9u:
          v58 = sub_1DD0DD08C();
          (*(*(v58 - 8) + 32))(v23, v24, v58);
LABEL_69:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v23, v24, *(*(v25 - 8) + 64));
          break;
      }

      goto LABEL_65;
    case 4:
      v14 = sub_1DD0DB04C();
      (*(*(v14 - 8) + 32))(a1, a2, v14);
      v15 = type metadata accessor for Input(0);
      v16 = v15[5];
      v17 = &a1[v16];
      v18 = &a2[v16];
      v19 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v20 = sub_1DD0DC76C();
          (*(*(v20 - 8) + 32))(v17, v18, v20);
          goto LABEL_64;
        case 1u:
          v43 = sub_1DD0DC76C();
          (*(*(v43 - 8) + 32))(v17, v18, v43);
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v17[*(v44 + 48)] = *&v18[*(v44 + 48)];
          goto LABEL_64;
        case 4u:
          v57 = sub_1DD0DB1EC();
          (*(*(v57 - 8) + 32))(v17, v18, v57);
          goto LABEL_64;
        case 6u:
          v59 = sub_1DD0DB4BC();
          (*(*(v59 - 8) + 32))(v17, v18, v59);
          v60 = type metadata accessor for USOParse(0);
          v61 = v60[5];
          v62 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v18[v61], 1, v62))
          {
            v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v17[v61], &v18[v61], *(*(v63 - 8) + 64));
          }

          else
          {
            (*(*(v62 - 8) + 32))(&v17[v61], &v18[v61], v62);
            __swift_storeEnumTagSinglePayload(&v17[v61], 0, 1, v62);
          }

          *&v17[v60[6]] = *&v18[v60[6]];
          v113 = v60[7];
          v114 = &v17[v113];
          v115 = &v18[v113];
          v114[4] = v115[4];
          *v114 = *v115;
          goto LABEL_64;
        case 7u:
          v66 = sub_1DD0DB4BC();
          (*(*(v66 - 8) + 32))(v17, v18, v66);
          v67 = type metadata accessor for USOParse(0);
          v68 = v67[5];
          v69 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v18[v68], 1, v69))
          {
            v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v17[v68], &v18[v68], *(*(v70 - 8) + 64));
          }

          else
          {
            (*(*(v69 - 8) + 32))(&v17[v68], &v18[v68], v69);
            __swift_storeEnumTagSinglePayload(&v17[v68], 0, 1, v69);
          }

          *&v17[v67[6]] = *&v18[v67[6]];
          v116 = v67[7];
          v117 = &v17[v116];
          v118 = &v18[v116];
          v117[4] = v118[4];
          *v117 = *v118;
          v119 = type metadata accessor for LinkParse(0);
          *&v17[v119[5]] = *&v18[v119[5]];
          *&v17[v119[6]] = *&v18[v119[6]];
          *&v17[v119[7]] = *&v18[v119[7]];
          goto LABEL_64;
        case 8u:
          v29 = sub_1DD0DD12C();
          (*(*(v29 - 8) + 32))(v17, v18, v29);
          v30 = type metadata accessor for NLRouterParse(0);
          *&v17[*(v30 + 20)] = *&v18[*(v30 + 20)];
          v165 = v30;
          v31 = *(v30 + 24);
          v32 = &v17[v31];
          v33 = &v18[v31];
          v34 = type metadata accessor for USOParse(0);
          if (__swift_getEnumTagSinglePayload(v33, 1, v34))
          {
            v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v32, v33, *(*(v35 - 8) + 64));
          }

          else
          {
            v92 = sub_1DD0DB4BC();
            v162 = v32;
            (*(*(v92 - 8) + 32))(v32, v33, v92);
            v93 = v34[5];
            v94 = sub_1DD0DB3EC();
            v159 = v93;
            v95 = &v33[v93];
            v96 = v94;
            if (__swift_getEnumTagSinglePayload(v95, 1, v94))
            {
              v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              v98 = v162;
              memcpy(&v162[v159], &v33[v159], *(*(v97 - 8) + 64));
            }

            else
            {
              v156 = v96;
              (*(*(v96 - 8) + 32))(&v162[v159], &v33[v159], v96);
              v98 = v162;
              __swift_storeEnumTagSinglePayload(&v162[v159], 0, 1, v156);
            }

            *(v98 + v34[6]) = *&v33[v34[6]];
            v134 = v34[7];
            v135 = v98 + v134;
            v136 = &v33[v134];
            *(v135 + 4) = v136[4];
            *v135 = *v136;
            __swift_storeEnumTagSinglePayload(v98, 0, 1, v34);
          }

          *&v17[*(v165 + 28)] = *&v18[*(v165 + 28)];
          goto LABEL_64;
        case 9u:
          v56 = sub_1DD0DD08C();
          (*(*(v56 - 8) + 32))(v17, v18, v56);
LABEL_64:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v17, v18, *(*(v19 - 8) + 64));
          break;
      }

LABEL_65:
      *&a1[v15[6]] = *&a2[v15[6]];
      v137 = v15[7];
      v138 = &a1[v137];
      v139 = &a2[v137];
      v140 = *(v139 + 1);
      *v138 = *v139;
      *(v138 + 1) = v140;
      *(v138 + 4) = *(v139 + 4);
      a1[v15[8]] = a2[v15[8]];
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      type metadata accessor for RCHFlowSharedData(255, AssociatedTypeWitness, v142, v143);
      sub_1DD0DE97C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      *&a1[*(TupleTypeMetadata2 + 48)] = *&a2[*(TupleTypeMetadata2 + 48)];
LABEL_76:
      swift_storeEnumTagMultiPayload();
      return a1;
    case 0:
      v7 = sub_1DD0DB04C();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      v8 = type metadata accessor for Input(0);
      v9 = v8[5];
      v10 = &a1[v9];
      v11 = &a2[v9];
      v12 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v13 = sub_1DD0DC76C();
          (*(*(v13 - 8) + 32))(v10, v11, v13);
          goto LABEL_74;
        case 1u:
          v54 = sub_1DD0DC76C();
          (*(*(v54 - 8) + 32))(v10, v11, v54);
          v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v10[*(v55 + 48)] = *&v11[*(v55 + 48)];
          goto LABEL_74;
        case 4u:
          v71 = sub_1DD0DB1EC();
          (*(*(v71 - 8) + 32))(v10, v11, v71);
          goto LABEL_74;
        case 6u:
          v82 = sub_1DD0DB4BC();
          (*(*(v82 - 8) + 32))(v10, v11, v82);
          v83 = type metadata accessor for USOParse(0);
          v84 = v83[5];
          v85 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v11[v84], 1, v85))
          {
            v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v10[v84], &v11[v84], *(*(v86 - 8) + 64));
          }

          else
          {
            (*(*(v85 - 8) + 32))(&v10[v84], &v11[v84], v85);
            __swift_storeEnumTagSinglePayload(&v10[v84], 0, 1, v85);
          }

          *&v10[v83[6]] = *&v11[v83[6]];
          v127 = v83[7];
          v128 = &v10[v127];
          v129 = &v11[v127];
          v128[4] = v129[4];
          *v128 = *v129;
          goto LABEL_74;
        case 7u:
          v87 = sub_1DD0DB4BC();
          (*(*(v87 - 8) + 32))(v10, v11, v87);
          v88 = type metadata accessor for USOParse(0);
          v89 = v88[5];
          v90 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v11[v89], 1, v90))
          {
            v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v10[v89], &v11[v89], *(*(v91 - 8) + 64));
          }

          else
          {
            (*(*(v90 - 8) + 32))(&v10[v89], &v11[v89], v90);
            __swift_storeEnumTagSinglePayload(&v10[v89], 0, 1, v90);
          }

          *&v10[v88[6]] = *&v11[v88[6]];
          v130 = v88[7];
          v131 = &v10[v130];
          v132 = &v11[v130];
          v131[4] = v132[4];
          *v131 = *v132;
          v133 = type metadata accessor for LinkParse(0);
          *&v10[v133[5]] = *&v11[v133[5]];
          *&v10[v133[6]] = *&v11[v133[6]];
          *&v10[v133[7]] = *&v11[v133[7]];
          goto LABEL_74;
        case 8u:
          v45 = sub_1DD0DD12C();
          (*(*(v45 - 8) + 32))(v10, v11, v45);
          v46 = type metadata accessor for NLRouterParse(0);
          *&v10[*(v46 + 20)] = *&v11[*(v46 + 20)];
          v167 = v46;
          v47 = *(v46 + 24);
          v48 = &v10[v47];
          v49 = &v11[v47];
          v50 = type metadata accessor for USOParse(0);
          if (__swift_getEnumTagSinglePayload(v49, 1, v50))
          {
            v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v48, v49, *(*(v51 - 8) + 64));
          }

          else
          {
            v106 = sub_1DD0DB4BC();
            v164 = v48;
            (*(*(v106 - 8) + 32))(v48, v49, v106);
            v107 = v50[5];
            v108 = sub_1DD0DB3EC();
            v161 = v107;
            v109 = &v49[v107];
            v110 = v108;
            if (__swift_getEnumTagSinglePayload(v109, 1, v108))
            {
              v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              v112 = v164;
              memcpy(&v164[v161], &v49[v161], *(*(v111 - 8) + 64));
            }

            else
            {
              v158 = v110;
              (*(*(v110 - 8) + 32))(&v164[v161], &v49[v161], v110);
              v112 = v164;
              __swift_storeEnumTagSinglePayload(&v164[v161], 0, 1, v158);
            }

            *(v112 + v50[6]) = *&v49[v50[6]];
            v148 = v50[7];
            v149 = v112 + v148;
            v150 = &v49[v148];
            *(v149 + 4) = v150[4];
            *v149 = *v150;
            __swift_storeEnumTagSinglePayload(v112, 0, 1, v50);
          }

          *&v10[*(v167 + 28)] = *&v11[*(v167 + 28)];
          goto LABEL_74;
        case 9u:
          v64 = sub_1DD0DD08C();
          (*(*(v64 - 8) + 32))(v10, v11, v64);
LABEL_74:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v10, v11, *(*(v12 - 8) + 64));
          break;
      }

      *&a1[v8[6]] = *&a2[v8[6]];
      v151 = v8[7];
      v152 = &a1[v151];
      v153 = &a2[v151];
      v154 = *(v153 + 1);
      *v152 = *v153;
      *(v152 + 1) = v154;
      *(v152 + 4) = *(v153 + 4);
      a1[v8[8]] = a2[v8[8]];
      swift_getAssociatedTypeWitness();
      v155 = swift_getTupleTypeMetadata2();
      *&a1[*(v155 + 48)] = *&a2[*(v155 + 48)];
      goto LABEL_76;
  }

  v27 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v27);
}

uint64_t sub_1DCEED038(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCEED0C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_20_0(v0);
  v1 = OUTLINED_FUNCTION_79_1();
  return sub_1DCEE28B4(v1);
}

uint64_t sub_1DCEED134(uint64_t a1, char a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  swift_getAssociatedTypeWitness();
  v7 = OUTLINED_FUNCTION_6_0();
  type metadata accessor for AnnotatedIntent(v7, v8, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_25_0();
  v11 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_20_0(v11);
  v13 = v2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));

  return sub_1DCEE222C(a1, a2 & 1, v13, v5, v6);
}

uint64_t sub_1DCEED214()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v3[1] = sub_1DCB4AE1C;
  v5 = OUTLINED_FUNCTION_21_1();

  return sub_1DCEE82AC(v5, v6, v1);
}

uint64_t sub_1DCEED2AC()
{
  v1 = OUTLINED_FUNCTION_70();
  v2 = type metadata accessor for Input(v1);
  OUTLINED_FUNCTION_99(v2);
  v5 = *(v0 + ((*(v4 + 64) + ((*(v3 + 80) + 40) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_0(v6);
  *v7 = v8;
  v7[1] = sub_1DCB4AD3C;
  v9 = OUTLINED_FUNCTION_21_1();

  return sub_1DCEE7C24(v9, v10, v11, v5);
}

uint64_t sub_1DCEED3AC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_75_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCEED3F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_33_1();
  v5(v4);
  return a2;
}

uint64_t sub_1DCEED454()
{
  v1 = OUTLINED_FUNCTION_70();
  v2(v1);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1DCEED4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for RCHFlowAsync.State(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

unint64_t *sub_1DCEED530(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = *(a3 - 8);
  v7 = type metadata accessor for RCHFlowAsync.State(0, *(a3 + 16), *(a3 + 24), a4);
  if (__swift_getEnumTagSinglePayload(a2, 1, v7))
  {
    v8 = *(v6 + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v10 = sub_1DD0DB04C();
        (*(*(v10 - 8) + 16))(a1, a2, v10);
        v11 = type metadata accessor for Input(0);
        v12 = v11[5];
        v13 = a1 + v12;
        v14 = a2 + v12;
        v15 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v16 = sub_1DD0DC76C();
            (*(*(v16 - 8) + 16))(v13, v14, v16);
            goto LABEL_92;
          case 1u:
            v80 = sub_1DD0DC76C();
            (*(*(v80 - 8) + 16))(v13, v14, v80);
            v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v13[*(v81 + 48)] = *&v14[*(v81 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            v59 = *(v14 + 1);
            *v13 = *v14;
            *(v13 + 1) = v59;
            *(v13 + 2) = *(v14 + 2);

            goto LABEL_92;
          case 3u:
            *v13 = *v14;
            swift_unknownObjectRetain();
            goto LABEL_92;
          case 4u:
            v52 = sub_1DD0DB1EC();
            (*(*(v52 - 8) + 16))(v13, v14, v52);
            goto LABEL_92;
          case 5u:
            v86 = *v14;
            *v13 = *v14;
            v87 = v86;
            goto LABEL_92;
          case 6u:
            v90 = sub_1DD0DB4BC();
            (*(*(v90 - 8) + 16))(v13, v14, v90);
            __dste = type metadata accessor for USOParse(0);
            v91 = __dste[5];
            v92 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v14[v91], 1, v92))
            {
              v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v13[v91], &v14[v91], *(*(v93 - 8) + 64));
            }

            else
            {
              (*(*(v92 - 8) + 16))(&v13[v91], &v14[v91], v92);
              __swift_storeEnumTagSinglePayload(&v13[v91], 0, 1, v92);
            }

            v187 = __dste[6];
            v188 = &v13[v187];
            v189 = &v14[v187];
            v190 = *(v189 + 1);
            *v188 = *v189;
            *(v188 + 1) = v190;
            v191 = __dste[7];
            v192 = &v13[v191];
            v193 = &v14[v191];
            v192[4] = v193[4];
            *v192 = *v193;

            goto LABEL_92;
          case 7u:
            v75 = sub_1DD0DB4BC();
            (*(*(v75 - 8) + 16))(v13, v14, v75);
            __dstc = type metadata accessor for USOParse(0);
            v76 = __dstc[5];
            v77 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v14[v76], 1, v77))
            {
              v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v13[v76], &v14[v76], *(*(v78 - 8) + 64));
            }

            else
            {
              (*(*(v77 - 8) + 16))(&v13[v76], &v14[v76], v77);
              __swift_storeEnumTagSinglePayload(&v13[v76], 0, 1, v77);
            }

            v149 = __dstc[6];
            v150 = &v13[v149];
            v151 = &v14[v149];
            v276 = *(v151 + 1);
            *v150 = *v151;
            *(v150 + 1) = v276;
            v152 = __dstc[7];
            v153 = &v13[v152];
            v154 = &v14[v152];
            v153[4] = v154[4];
            *v153 = *v154;
            v155 = type metadata accessor for LinkParse(0);
            v156 = v155[5];
            v157 = &v13[v156];
            v158 = &v14[v156];
            v159 = *(v158 + 1);
            *v157 = *v158;
            *(v157 + 1) = v159;
            v160 = v155[6];
            v161 = &v13[v160];
            v162 = &v14[v160];
            v163 = *(v162 + 1);
            *v161 = *v162;
            *(v161 + 1) = v163;
            v164 = v155[7];
            v165 = &v13[v164];
            v166 = &v14[v164];
            v167 = *(v166 + 1);
            *v165 = *v166;
            *(v165 + 1) = v167;

            goto LABEL_92;
          case 8u:
            v94 = sub_1DD0DD12C();
            (*(*(v94 - 8) + 16))(v13, v14, v94);
            v95 = type metadata accessor for NLRouterParse(0);
            v96 = *(v95 + 20);
            v97 = &v13[v96];
            v98 = &v14[v96];
            v99 = *(v98 + 1);
            *v97 = *v98;
            *(v97 + 1) = v99;
            v100 = *(v95 + 24);
            v273 = v95;
            __dstf = &v13[v100];
            v101 = &v14[v100];
            v102 = type metadata accessor for USOParse(0);

            if (__swift_getEnumTagSinglePayload(v101, 1, v102))
            {
              v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dstf, v101, *(*(v103 - 8) + 64));
            }

            else
            {
              v194 = sub_1DD0DB4BC();
              (*(*(v194 - 8) + 16))(__dstf, v101, v194);
              v270 = v102;
              v195 = *(v102 + 20);
              v267 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v101[v195], 1, v267))
              {
                v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dstf[v195], &v101[v195], *(*(v196 - 8) + 64));
              }

              else
              {
                (*(*(v267 - 8) + 16))(&__dstf[v195], &v101[v195]);
                __swift_storeEnumTagSinglePayload(&__dstf[v195], 0, 1, v267);
              }

              v227 = *(v270 + 24);
              v228 = &__dstf[v227];
              v229 = &v101[v227];
              v230 = *(v229 + 1);
              *v228 = *v229;
              *(v228 + 1) = v230;
              v231 = *(v270 + 28);
              v232 = &__dstf[v231];
              v233 = &v101[v231];
              v232[4] = v233[4];
              *v232 = *v233;

              __swift_storeEnumTagSinglePayload(__dstf, 0, 1, v270);
            }

            v234 = *(v273 + 28);
            v235 = *&v14[v234];
            *&v13[v234] = v235;
            v236 = v235;
            goto LABEL_92;
          case 9u:
            v55 = sub_1DD0DD08C();
            (*(*(v55 - 8) + 16))(v13, v14, v55);
LABEL_92:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v13, v14, *(*(v15 - 8) + 64));
            break;
        }

        *(a1 + v11[6]) = *(a2 + v11[6]);
        v237 = v11[7];
        v238 = a1 + v237;
        v239 = a2 + v237;
        v240 = *(a2 + v237 + 24);

        if (v240)
        {
          v241 = *(v239 + 4);
          *(v238 + 3) = v240;
          *(v238 + 4) = v241;
          (**(v240 - 8))(v238, v239, v240);
        }

        else
        {
          v242 = *(v239 + 1);
          *v238 = *v239;
          *(v238 + 1) = v242;
          *(v238 + 4) = *(v239 + 4);
        }

        *(a1 + v11[8]) = *(a2 + v11[8]);
        swift_getAssociatedTypeWitness();
        v243 = *(swift_getTupleTypeMetadata2() + 48);
        v244 = *(a2 + v243);
        *(a1 + v243) = v244;
        v245 = v244;
        goto LABEL_105;
      case 1u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 2u:
        v28 = *a2;
        v29 = a2[1];
        *a1 = v28;
        a1[1] = v29;
        sub_1DD0DCF8C();
      case 3u:
        v30 = *a2;
        v31 = a2[1];
        *a1 = v30;
        a1[1] = v31;
        sub_1DD0DCF8C();
      case 4u:
        v19 = sub_1DD0DB04C();
        (*(*(v19 - 8) + 16))(a1, a2, v19);
        v20 = type metadata accessor for Input(0);
        v21 = v20[5];
        v22 = a1 + v21;
        v23 = a2 + v21;
        v24 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v25 = sub_1DD0DC76C();
            (*(*(v25 - 8) + 16))(v22, v23, v25);
            goto LABEL_84;
          case 1u:
            v53 = sub_1DD0DC76C();
            (*(*(v53 - 8) + 16))(v22, v23, v53);
            v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v22[*(v54 + 48)] = *&v23[*(v54 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            v47 = *(v23 + 1);
            *v22 = *v23;
            *(v22 + 1) = v47;
            *(v22 + 2) = *(v23 + 2);

            goto LABEL_84;
          case 3u:
            *v22 = *v23;
            swift_unknownObjectRetain();
            goto LABEL_84;
          case 4u:
            v45 = sub_1DD0DB1EC();
            (*(*(v45 - 8) + 16))(v22, v23, v45);
            goto LABEL_84;
          case 5u:
            v56 = *v23;
            *v22 = *v23;
            v57 = v56;
            goto LABEL_84;
          case 6u:
            v60 = sub_1DD0DB4BC();
            (*(*(v60 - 8) + 16))(v22, v23, v60);
            __dsta = type metadata accessor for USOParse(0);
            v61 = __dsta[5];
            v62 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v23[v61], 1, v62))
            {
              v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v22[v61], &v23[v61], *(*(v63 - 8) + 64));
            }

            else
            {
              (*(*(v62 - 8) + 16))(&v22[v61], &v23[v61], v62);
              __swift_storeEnumTagSinglePayload(&v22[v61], 0, 1, v62);
            }

            v139 = __dsta[6];
            v140 = &v22[v139];
            v141 = &v23[v139];
            v142 = *(v141 + 1);
            *v140 = *v141;
            *(v140 + 1) = v142;
            v143 = __dsta[7];
            v144 = &v22[v143];
            v145 = &v23[v143];
            v144[4] = v145[4];
            *v144 = *v145;

            goto LABEL_84;
          case 7u:
            v48 = sub_1DD0DB4BC();
            (*(*(v48 - 8) + 16))(v22, v23, v48);
            __dst = type metadata accessor for USOParse(0);
            v49 = __dst[5];
            v50 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v23[v49], 1, v50))
            {
              v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v22[v49], &v23[v49], *(*(v51 - 8) + 64));
            }

            else
            {
              (*(*(v50 - 8) + 16))(&v22[v49], &v23[v49], v50);
              __swift_storeEnumTagSinglePayload(&v22[v49], 0, 1, v50);
            }

            v120 = __dst[6];
            v121 = &v22[v120];
            v122 = &v23[v120];
            v275 = *(v122 + 1);
            *v121 = *v122;
            *(v121 + 1) = v275;
            v123 = __dst[7];
            v124 = &v22[v123];
            v125 = &v23[v123];
            v124[4] = v125[4];
            *v124 = *v125;
            v126 = type metadata accessor for LinkParse(0);
            v127 = v126[5];
            v128 = &v22[v127];
            v129 = &v23[v127];
            v130 = *(v129 + 1);
            *v128 = *v129;
            *(v128 + 1) = v130;
            v131 = v126[6];
            v132 = &v22[v131];
            v133 = &v23[v131];
            v134 = *(v133 + 1);
            *v132 = *v133;
            *(v132 + 1) = v134;
            v135 = v126[7];
            v136 = &v22[v135];
            v137 = &v23[v135];
            v138 = *(v137 + 1);
            *v136 = *v137;
            *(v136 + 1) = v138;

            goto LABEL_84;
          case 8u:
            v64 = sub_1DD0DD12C();
            (*(*(v64 - 8) + 16))(v22, v23, v64);
            v65 = type metadata accessor for NLRouterParse(0);
            v66 = *(v65 + 20);
            v67 = &v22[v66];
            v68 = &v23[v66];
            v69 = *(v68 + 1);
            *v67 = *v68;
            *(v67 + 1) = v69;
            v70 = *(v65 + 24);
            v272 = v65;
            __dstb = &v22[v70];
            v71 = &v23[v70];
            v72 = type metadata accessor for USOParse(0);

            if (__swift_getEnumTagSinglePayload(v71, 1, v72))
            {
              v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dstb, v71, *(*(v73 - 8) + 64));
            }

            else
            {
              v146 = sub_1DD0DB4BC();
              (*(*(v146 - 8) + 16))(__dstb, v71, v146);
              v269 = v72;
              v147 = *(v72 + 20);
              v266 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v71[v147], 1, v266))
              {
                v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dstb[v147], &v71[v147], *(*(v148 - 8) + 64));
              }

              else
              {
                (*(*(v266 - 8) + 16))(&__dstb[v147], &v71[v147]);
                __swift_storeEnumTagSinglePayload(&__dstb[v147], 0, 1, v266);
              }

              v207 = *(v269 + 24);
              v208 = &__dstb[v207];
              v209 = &v71[v207];
              v210 = *(v209 + 1);
              *v208 = *v209;
              *(v208 + 1) = v210;
              v211 = *(v269 + 28);
              v212 = &__dstb[v211];
              v213 = &v71[v211];
              v212[4] = v213[4];
              *v212 = *v213;

              __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v269);
            }

            v214 = *(v272 + 28);
            v215 = *&v23[v214];
            *&v22[v214] = v215;
            v216 = v215;
            goto LABEL_84;
          case 9u:
            v46 = sub_1DD0DD08C();
            (*(*(v46 - 8) + 16))(v22, v23, v46);
LABEL_84:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v22, v23, *(*(v24 - 8) + 64));
            break;
        }

        *(a1 + v20[6]) = *(a2 + v20[6]);
        v217 = v20[7];
        v218 = a1 + v217;
        v219 = a2 + v217;
        v220 = *(a2 + v217 + 24);

        if (v220)
        {
          v221 = *(v219 + 4);
          *(v218 + 3) = v220;
          *(v218 + 4) = v221;
          (**(v220 - 8))(v218, v219, v220);
        }

        else
        {
          v222 = *(v219 + 1);
          *v218 = *v219;
          *(v218 + 1) = v222;
          *(v218 + 4) = *(v219 + 4);
        }

        *(a1 + v20[8]) = *(a2 + v20[8]);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        type metadata accessor for RCHFlowSharedData(255, AssociatedTypeWitness, v224, v225);
        sub_1DD0DE97C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        *(a1 + *(TupleTypeMetadata2 + 48)) = *(a2 + *(TupleTypeMetadata2 + 48));
        sub_1DD0DCF8C();
      case 5u:
        v32 = sub_1DD0DB04C();
        (*(*(v32 - 8) + 16))(a1, a2, v32);
        v33 = type metadata accessor for Input(0);
        v34 = v33[5];
        v35 = a1 + v34;
        v36 = a2 + v34;
        v37 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v38 = sub_1DD0DC76C();
            (*(*(v38 - 8) + 16))(v35, v36, v38);
            goto LABEL_100;
          case 1u:
            v88 = sub_1DD0DC76C();
            (*(*(v88 - 8) + 16))(v35, v36, v88);
            v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v35[*(v89 + 48)] = *&v36[*(v89 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            v79 = *(v36 + 1);
            *v35 = *v36;
            *(v35 + 1) = v79;
            *(v35 + 2) = *(v36 + 2);

            goto LABEL_100;
          case 3u:
            *v35 = *v36;
            swift_unknownObjectRetain();
            goto LABEL_100;
          case 4u:
            v58 = sub_1DD0DB1EC();
            (*(*(v58 - 8) + 16))(v35, v36, v58);
            goto LABEL_100;
          case 5u:
            v104 = *v36;
            *v35 = *v36;
            v105 = v104;
            goto LABEL_100;
          case 6u:
            v106 = sub_1DD0DB4BC();
            (*(*(v106 - 8) + 16))(v35, v36, v106);
            __dstg = type metadata accessor for USOParse(0);
            v107 = __dstg[5];
            v108 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v36[v107], 1, v108))
            {
              v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v35[v107], &v36[v107], *(*(v109 - 8) + 64));
            }

            else
            {
              (*(*(v108 - 8) + 16))(&v35[v107], &v36[v107], v108);
              __swift_storeEnumTagSinglePayload(&v35[v107], 0, 1, v108);
            }

            v197 = __dstg[6];
            v198 = &v35[v197];
            v199 = &v36[v197];
            v200 = *(v199 + 1);
            *v198 = *v199;
            *(v198 + 1) = v200;
            v201 = __dstg[7];
            v202 = &v35[v201];
            v203 = &v36[v201];
            v202[4] = v203[4];
            *v202 = *v203;

            goto LABEL_100;
          case 7u:
            v82 = sub_1DD0DB4BC();
            (*(*(v82 - 8) + 16))(v35, v36, v82);
            __dstd = type metadata accessor for USOParse(0);
            v83 = __dstd[5];
            v84 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v36[v83], 1, v84))
            {
              v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v35[v83], &v36[v83], *(*(v85 - 8) + 64));
            }

            else
            {
              (*(*(v84 - 8) + 16))(&v35[v83], &v36[v83], v84);
              __swift_storeEnumTagSinglePayload(&v35[v83], 0, 1, v84);
            }

            v168 = __dstd[6];
            v169 = &v35[v168];
            v170 = &v36[v168];
            v277 = *(v170 + 1);
            *v169 = *v170;
            *(v169 + 1) = v277;
            v171 = __dstd[7];
            v172 = &v35[v171];
            v173 = &v36[v171];
            v172[4] = v173[4];
            *v172 = *v173;
            v174 = type metadata accessor for LinkParse(0);
            v175 = v174[5];
            v176 = &v35[v175];
            v177 = &v36[v175];
            v178 = *(v177 + 1);
            *v176 = *v177;
            *(v176 + 1) = v178;
            v179 = v174[6];
            v180 = &v35[v179];
            v181 = &v36[v179];
            v182 = *(v181 + 1);
            *v180 = *v181;
            *(v180 + 1) = v182;
            v183 = v174[7];
            v184 = &v35[v183];
            v185 = &v36[v183];
            v186 = *(v185 + 1);
            *v184 = *v185;
            *(v184 + 1) = v186;

            goto LABEL_100;
          case 8u:
            v110 = sub_1DD0DD12C();
            (*(*(v110 - 8) + 16))(v35, v36, v110);
            v111 = type metadata accessor for NLRouterParse(0);
            v112 = *(v111 + 20);
            v113 = &v35[v112];
            v114 = &v36[v112];
            v115 = *(v114 + 1);
            *v113 = *v114;
            *(v113 + 1) = v115;
            v116 = *(v111 + 24);
            v274 = v111;
            __dsth = &v35[v116];
            v117 = &v36[v116];
            v118 = type metadata accessor for USOParse(0);

            if (__swift_getEnumTagSinglePayload(v117, 1, v118))
            {
              v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dsth, v117, *(*(v119 - 8) + 64));
            }

            else
            {
              v204 = sub_1DD0DB4BC();
              (*(*(v204 - 8) + 16))(__dsth, v117, v204);
              v271 = v118;
              v205 = *(v118 + 20);
              v268 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v117[v205], 1, v268))
              {
                v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dsth[v205], &v117[v205], *(*(v206 - 8) + 64));
              }

              else
              {
                (*(*(v268 - 8) + 16))(&__dsth[v205], &v117[v205]);
                __swift_storeEnumTagSinglePayload(&__dsth[v205], 0, 1, v268);
              }

              v246 = *(v271 + 24);
              v247 = &__dsth[v246];
              v248 = &v117[v246];
              v249 = *(v248 + 1);
              *v247 = *v248;
              *(v247 + 1) = v249;
              v250 = *(v271 + 28);
              v251 = &__dsth[v250];
              v252 = &v117[v250];
              v251[4] = v252[4];
              *v251 = *v252;

              __swift_storeEnumTagSinglePayload(__dsth, 0, 1, v271);
            }

            v253 = *(v274 + 28);
            v254 = *&v36[v253];
            *&v35[v253] = v254;
            v255 = v254;
            goto LABEL_100;
          case 9u:
            v74 = sub_1DD0DD08C();
            (*(*(v74 - 8) + 16))(v35, v36, v74);
LABEL_100:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v35, v36, *(*(v37 - 8) + 64));
            break;
        }

        *(a1 + v33[6]) = *(a2 + v33[6]);
        v256 = v33[7];
        v257 = a1 + v256;
        v258 = a2 + v256;
        v259 = *(a2 + v256 + 24);

        if (v259)
        {
          v260 = *(v258 + 4);
          *(v257 + 3) = v259;
          *(v257 + 4) = v260;
          (**(v259 - 8))(v257, v258, v259);
        }

        else
        {
          v261 = *(v258 + 1);
          *v257 = *v258;
          *(v257 + 1) = v261;
          *(v257 + 4) = *(v258 + 4);
        }

        *(a1 + v33[8]) = *(a2 + v33[8]);
        v262 = swift_getAssociatedTypeWitness();
        type metadata accessor for RCHFlowSharedData(255, v262, v263, v264);
        sub_1DD0DE97C();
        v265 = swift_getTupleTypeMetadata2();
        *(a1 + *(v265 + 48)) = *(a2 + *(v265 + 48));
        sub_1DD0DCF8C();
      case 6u:
        v39 = *a2;
        v40 = a2[1];
        *a1 = v39;
        a1[1] = v40;
        sub_1DD0DCF8C();
      case 7u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 8u:
        v44 = a2[1];
        *a1 = *a2;
        a1[1] = v44;
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 9u:
        v26 = *a2;
        v27 = a2[1];
        *a1 = v26;
        a1[1] = v27;
        sub_1DD0DCF8C();
      case 0xAu:
        v41 = *a2;
        v42 = a2[1];
        v43 = a2[2];
        sub_1DCB72E48(v41, v42, v43);
        *a1 = v41;
        a1[1] = v42;
        a1[2] = v43;
        goto LABEL_105;
      case 0xBu:
        v17 = *a2;
        v18 = v17;
        *a1 = v17;
LABEL_105:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v7 - 8) + 64));
        break;
    }

    __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
    return a1;
  }
}

void sub_1DCEEF130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RCHFlowAsync.State(0, *(a2 + 16), *(a2 + 24), a4);
  if (!__swift_getEnumTagSinglePayload(a1, 1, v5))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v7 = sub_1DD0DB04C();
        (*(*(v7 - 8) + 8))(a1, v7);
        v8 = type metadata accessor for Input(0);
        v9 = (a1 + *(v8 + 20));
        type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v10 = sub_1DD0DC76C();
            goto LABEL_45;
          case 1u:
            v38 = sub_1DD0DC76C();
            (*(*(v38 - 8) + 8))(v9, v38);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

            break;
          case 2u:

            goto LABEL_55;
          case 3u:
            swift_unknownObjectRelease();
            break;
          case 4u:
            v10 = sub_1DD0DB1EC();
            goto LABEL_45;
          case 5u:
            v39 = *v9;
            goto LABEL_61;
          case 6u:
            v40 = sub_1DD0DB4BC();
            (*(*(v40 - 8) + 8))(v9, v40);
            v41 = *(type metadata accessor for USOParse(0) + 20);
            v42 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v9 + v41, 1, v42))
            {
              (*(*(v42 - 8) + 8))(v9 + v41, v42);
            }

            goto LABEL_55;
          case 7u:
            v35 = sub_1DD0DB4BC();
            (*(*(v35 - 8) + 8))(v9, v35);
            v36 = *(type metadata accessor for USOParse(0) + 20);
            v37 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v9 + v36, 1, v37))
            {
              (*(*(v37 - 8) + 8))(v9 + v36, v37);
            }

            type metadata accessor for LinkParse(0);

LABEL_55:

            break;
          case 8u:
            v43 = sub_1DD0DD12C();
            (*(*(v43 - 8) + 8))(v9, v43);
            v44 = type metadata accessor for NLRouterParse(0);

            v45 = v9 + *(v44 + 24);
            v46 = type metadata accessor for USOParse(0);
            if (!__swift_getEnumTagSinglePayload(v45, 1, v46))
            {
              v47 = sub_1DD0DB4BC();
              (*(*(v47 - 8) + 8))(v45, v47);
              v48 = *(v46 + 20);
              v49 = sub_1DD0DB3EC();
              if (!__swift_getEnumTagSinglePayload(v45 + v48, 1, v49))
              {
                (*(*(v49 - 8) + 8))(v45 + v48, v49);
              }
            }

            v39 = *(v9 + *(v44 + 28));
LABEL_61:

            break;
          case 9u:
            v10 = sub_1DD0DD08C();
LABEL_45:
            (*(*(v10 - 8) + 8))(v9, v10);
            break;
          default:
            break;
        }

        v50 = (a1 + *(v8 + 28));
        if (v50[3])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v50);
        }

        swift_getAssociatedTypeWitness();
        v6 = *(a1 + *(swift_getTupleTypeMetadata2() + 48));
        goto LABEL_65;
      case 1u:
      case 7u:
        goto LABEL_40;
      case 2u:
      case 3u:
      case 6u:

        return;
      case 4u:
        v14 = sub_1DD0DB04C();
        (*(*(v14 - 8) + 8))(a1, v14);
        v12 = type metadata accessor for Input(0);
        v13 = (a1 + *(v12 + 20));
        type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            goto LABEL_15;
          case 1u:
            goto LABEL_26;
          case 2u:
            goto LABEL_21;
          case 3u:
            goto LABEL_22;
          case 4u:
            goto LABEL_18;
          case 5u:
            goto LABEL_27;
          case 6u:
            goto LABEL_28;
          case 7u:
            goto LABEL_23;
          case 8u:
            goto LABEL_31;
          case 9u:
            goto LABEL_19;
          default:
            goto LABEL_37;
        }

        goto LABEL_37;
      case 5u:
        v11 = sub_1DD0DB04C();
        (*(*(v11 - 8) + 8))(a1, v11);
        v12 = type metadata accessor for Input(0);
        v13 = (a1 + *(v12 + 20));
        type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
LABEL_15:
            v15 = sub_1DD0DC76C();
            goto LABEL_20;
          case 1u:
LABEL_26:
            v19 = sub_1DD0DC76C();
            (*(*(v19 - 8) + 8))(v13, v19);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

            break;
          case 2u:
LABEL_21:

            goto LABEL_30;
          case 3u:
LABEL_22:
            swift_unknownObjectRelease();
            break;
          case 4u:
LABEL_18:
            v15 = sub_1DD0DB1EC();
            goto LABEL_20;
          case 5u:
LABEL_27:
            v20 = *v13;
            goto LABEL_36;
          case 6u:
LABEL_28:
            v21 = sub_1DD0DB4BC();
            (*(*(v21 - 8) + 8))(v13, v21);
            v22 = *(type metadata accessor for USOParse(0) + 20);
            v23 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v13 + v22, 1, v23))
            {
              (*(*(v23 - 8) + 8))(v13 + v22, v23);
            }

            goto LABEL_30;
          case 7u:
LABEL_23:
            v16 = sub_1DD0DB4BC();
            (*(*(v16 - 8) + 8))(v13, v16);
            v17 = *(type metadata accessor for USOParse(0) + 20);
            v18 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v13 + v17, 1, v18))
            {
              (*(*(v18 - 8) + 8))(v13 + v17, v18);
            }

            type metadata accessor for LinkParse(0);

LABEL_30:

            break;
          case 8u:
LABEL_31:
            v24 = sub_1DD0DD12C();
            (*(*(v24 - 8) + 8))(v13, v24);
            v25 = type metadata accessor for NLRouterParse(0);

            v26 = v13 + *(v25 + 24);
            v27 = type metadata accessor for USOParse(0);
            if (!__swift_getEnumTagSinglePayload(v26, 1, v27))
            {
              v28 = sub_1DD0DB4BC();
              (*(*(v28 - 8) + 8))(v26, v28);
              v29 = *(v27 + 20);
              v30 = sub_1DD0DB3EC();
              if (!__swift_getEnumTagSinglePayload(v26 + v29, 1, v30))
              {
                (*(*(v30 - 8) + 8))(v26 + v29, v30);
              }
            }

            v20 = *(v13 + *(v25 + 28));
LABEL_36:

            break;
          case 9u:
LABEL_19:
            v15 = sub_1DD0DD08C();
LABEL_20:
            (*(*(v15 - 8) + 8))(v13, v15);
            break;
          default:
            break;
        }

LABEL_37:

        v31 = (a1 + *(v12 + 28));
        if (v31[3])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v31);
        }

        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        type metadata accessor for RCHFlowSharedData(255, AssociatedTypeWitness, v33, v34);
        sub_1DD0DE97C();
        swift_getTupleTypeMetadata2();
LABEL_40:

        return;
      case 8u:

        v6 = *(a1 + 16);
        goto LABEL_65;
      case 9u:

        v6 = *(a1 + 8);
LABEL_65:

        goto LABEL_9;
      case 0xAu:
        sub_1DCB070E0(*a1, *(a1 + 8), *(a1 + 16));
        return;
      case 0xBu:
        v6 = *a1;

LABEL_9:

        break;
      default:
        return;
    }
  }
}

unint64_t *sub_1DCEEFC58(unint64_t *a1, void **a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for RCHFlowAsync.State(0, *(a3 + 16), *(a3 + 24), a4);
  if (__swift_getEnumTagSinglePayload(a2, 1, v7))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v10 = sub_1DD0DB04C();
        (*(*(v10 - 8) + 16))(a1, a2, v10);
        v11 = type metadata accessor for Input(0);
        v12 = v11[5];
        v13 = a1 + v12;
        v14 = a2 + v12;
        v15 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v16 = sub_1DD0DC76C();
            (*(*(v16 - 8) + 16))(v13, v14, v16);
            goto LABEL_90;
          case 1u:
            v80 = sub_1DD0DC76C();
            (*(*(v80 - 8) + 16))(v13, v14, v80);
            v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v13[*(v81 + 48)] = *&v14[*(v81 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            v59 = *(v14 + 1);
            *v13 = *v14;
            *(v13 + 1) = v59;
            *(v13 + 2) = *(v14 + 2);

            goto LABEL_90;
          case 3u:
            *v13 = *v14;
            swift_unknownObjectRetain();
            goto LABEL_90;
          case 4u:
            v52 = sub_1DD0DB1EC();
            (*(*(v52 - 8) + 16))(v13, v14, v52);
            goto LABEL_90;
          case 5u:
            v86 = *v14;
            *v13 = *v14;
            v87 = v86;
            goto LABEL_90;
          case 6u:
            v90 = sub_1DD0DB4BC();
            (*(*(v90 - 8) + 16))(v13, v14, v90);
            __dste = type metadata accessor for USOParse(0);
            v91 = __dste[5];
            v92 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v14[v91], 1, v92))
            {
              v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v13[v91], &v14[v91], *(*(v93 - 8) + 64));
            }

            else
            {
              (*(*(v92 - 8) + 16))(&v13[v91], &v14[v91], v92);
              __swift_storeEnumTagSinglePayload(&v13[v91], 0, 1, v92);
            }

            v187 = __dste[6];
            v188 = &v13[v187];
            v189 = &v14[v187];
            v190 = *(v189 + 1);
            *v188 = *v189;
            *(v188 + 1) = v190;
            v191 = __dste[7];
            v192 = &v13[v191];
            v193 = &v14[v191];
            v192[4] = v193[4];
            *v192 = *v193;

            goto LABEL_90;
          case 7u:
            v75 = sub_1DD0DB4BC();
            (*(*(v75 - 8) + 16))(v13, v14, v75);
            __dstc = type metadata accessor for USOParse(0);
            v76 = __dstc[5];
            v77 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v14[v76], 1, v77))
            {
              v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v13[v76], &v14[v76], *(*(v78 - 8) + 64));
            }

            else
            {
              (*(*(v77 - 8) + 16))(&v13[v76], &v14[v76], v77);
              __swift_storeEnumTagSinglePayload(&v13[v76], 0, 1, v77);
            }

            v149 = __dstc[6];
            v150 = &v13[v149];
            v151 = &v14[v149];
            v276 = *(v151 + 1);
            *v150 = *v151;
            *(v150 + 1) = v276;
            v152 = __dstc[7];
            v153 = &v13[v152];
            v154 = &v14[v152];
            v153[4] = v154[4];
            *v153 = *v154;
            v155 = type metadata accessor for LinkParse(0);
            v156 = v155[5];
            v157 = &v13[v156];
            v158 = &v14[v156];
            v159 = *(v158 + 1);
            *v157 = *v158;
            *(v157 + 1) = v159;
            v160 = v155[6];
            v161 = &v13[v160];
            v162 = &v14[v160];
            v163 = *(v162 + 1);
            *v161 = *v162;
            *(v161 + 1) = v163;
            v164 = v155[7];
            v165 = &v13[v164];
            v166 = &v14[v164];
            v167 = *(v166 + 1);
            *v165 = *v166;
            *(v165 + 1) = v167;

            goto LABEL_90;
          case 8u:
            v94 = sub_1DD0DD12C();
            (*(*(v94 - 8) + 16))(v13, v14, v94);
            v95 = type metadata accessor for NLRouterParse(0);
            v96 = *(v95 + 20);
            v97 = &v13[v96];
            v98 = &v14[v96];
            v99 = *(v98 + 1);
            *v97 = *v98;
            *(v97 + 1) = v99;
            v100 = *(v95 + 24);
            v273 = v95;
            __dstf = &v13[v100];
            v101 = &v14[v100];
            v102 = type metadata accessor for USOParse(0);

            if (__swift_getEnumTagSinglePayload(v101, 1, v102))
            {
              v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dstf, v101, *(*(v103 - 8) + 64));
            }

            else
            {
              v194 = sub_1DD0DB4BC();
              (*(*(v194 - 8) + 16))(__dstf, v101, v194);
              v270 = v102;
              v195 = *(v102 + 20);
              v267 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v101[v195], 1, v267))
              {
                v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dstf[v195], &v101[v195], *(*(v196 - 8) + 64));
              }

              else
              {
                (*(*(v267 - 8) + 16))(&__dstf[v195], &v101[v195]);
                __swift_storeEnumTagSinglePayload(&__dstf[v195], 0, 1, v267);
              }

              v227 = *(v270 + 24);
              v228 = &__dstf[v227];
              v229 = &v101[v227];
              v230 = *(v229 + 1);
              *v228 = *v229;
              *(v228 + 1) = v230;
              v231 = *(v270 + 28);
              v232 = &__dstf[v231];
              v233 = &v101[v231];
              v232[4] = v233[4];
              *v232 = *v233;

              __swift_storeEnumTagSinglePayload(__dstf, 0, 1, v270);
            }

            v234 = *(v273 + 28);
            v235 = *&v14[v234];
            *&v13[v234] = v235;
            v236 = v235;
            goto LABEL_90;
          case 9u:
            v55 = sub_1DD0DD08C();
            (*(*(v55 - 8) + 16))(v13, v14, v55);
LABEL_90:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v13, v14, *(*(v15 - 8) + 64));
            break;
        }

        *(a1 + v11[6]) = *(a2 + v11[6]);
        v237 = v11[7];
        v238 = a1 + v237;
        v239 = a2 + v237;
        v240 = *(a2 + v237 + 24);

        if (v240)
        {
          v241 = *(v239 + 4);
          *(v238 + 3) = v240;
          *(v238 + 4) = v241;
          (**(v240 - 8))(v238, v239, v240);
        }

        else
        {
          v242 = *(v239 + 1);
          *v238 = *v239;
          *(v238 + 1) = v242;
          *(v238 + 4) = *(v239 + 4);
        }

        *(a1 + v11[8]) = *(a2 + v11[8]);
        swift_getAssociatedTypeWitness();
        v243 = *(swift_getTupleTypeMetadata2() + 48);
        v244 = *(a2 + v243);
        *(a1 + v243) = v244;
        v245 = v244;
        goto LABEL_103;
      case 1u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 2u:
        v28 = *a2;
        v29 = a2[1];
        *a1 = v28;
        a1[1] = v29;
        sub_1DD0DCF8C();
      case 3u:
        v30 = *a2;
        v31 = a2[1];
        *a1 = v30;
        a1[1] = v31;
        sub_1DD0DCF8C();
      case 4u:
        v19 = sub_1DD0DB04C();
        (*(*(v19 - 8) + 16))(a1, a2, v19);
        v20 = type metadata accessor for Input(0);
        v21 = v20[5];
        v22 = a1 + v21;
        v23 = a2 + v21;
        v24 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v25 = sub_1DD0DC76C();
            (*(*(v25 - 8) + 16))(v22, v23, v25);
            goto LABEL_82;
          case 1u:
            v53 = sub_1DD0DC76C();
            (*(*(v53 - 8) + 16))(v22, v23, v53);
            v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v22[*(v54 + 48)] = *&v23[*(v54 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            v47 = *(v23 + 1);
            *v22 = *v23;
            *(v22 + 1) = v47;
            *(v22 + 2) = *(v23 + 2);

            goto LABEL_82;
          case 3u:
            *v22 = *v23;
            swift_unknownObjectRetain();
            goto LABEL_82;
          case 4u:
            v45 = sub_1DD0DB1EC();
            (*(*(v45 - 8) + 16))(v22, v23, v45);
            goto LABEL_82;
          case 5u:
            v56 = *v23;
            *v22 = *v23;
            v57 = v56;
            goto LABEL_82;
          case 6u:
            v60 = sub_1DD0DB4BC();
            (*(*(v60 - 8) + 16))(v22, v23, v60);
            __dsta = type metadata accessor for USOParse(0);
            v61 = __dsta[5];
            v62 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v23[v61], 1, v62))
            {
              v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v22[v61], &v23[v61], *(*(v63 - 8) + 64));
            }

            else
            {
              (*(*(v62 - 8) + 16))(&v22[v61], &v23[v61], v62);
              __swift_storeEnumTagSinglePayload(&v22[v61], 0, 1, v62);
            }

            v139 = __dsta[6];
            v140 = &v22[v139];
            v141 = &v23[v139];
            v142 = *(v141 + 1);
            *v140 = *v141;
            *(v140 + 1) = v142;
            v143 = __dsta[7];
            v144 = &v22[v143];
            v145 = &v23[v143];
            v144[4] = v145[4];
            *v144 = *v145;

            goto LABEL_82;
          case 7u:
            v48 = sub_1DD0DB4BC();
            (*(*(v48 - 8) + 16))(v22, v23, v48);
            __dst = type metadata accessor for USOParse(0);
            v49 = __dst[5];
            v50 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v23[v49], 1, v50))
            {
              v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v22[v49], &v23[v49], *(*(v51 - 8) + 64));
            }

            else
            {
              (*(*(v50 - 8) + 16))(&v22[v49], &v23[v49], v50);
              __swift_storeEnumTagSinglePayload(&v22[v49], 0, 1, v50);
            }

            v120 = __dst[6];
            v121 = &v22[v120];
            v122 = &v23[v120];
            v275 = *(v122 + 1);
            *v121 = *v122;
            *(v121 + 1) = v275;
            v123 = __dst[7];
            v124 = &v22[v123];
            v125 = &v23[v123];
            v124[4] = v125[4];
            *v124 = *v125;
            v126 = type metadata accessor for LinkParse(0);
            v127 = v126[5];
            v128 = &v22[v127];
            v129 = &v23[v127];
            v130 = *(v129 + 1);
            *v128 = *v129;
            *(v128 + 1) = v130;
            v131 = v126[6];
            v132 = &v22[v131];
            v133 = &v23[v131];
            v134 = *(v133 + 1);
            *v132 = *v133;
            *(v132 + 1) = v134;
            v135 = v126[7];
            v136 = &v22[v135];
            v137 = &v23[v135];
            v138 = *(v137 + 1);
            *v136 = *v137;
            *(v136 + 1) = v138;

            goto LABEL_82;
          case 8u:
            v64 = sub_1DD0DD12C();
            (*(*(v64 - 8) + 16))(v22, v23, v64);
            v65 = type metadata accessor for NLRouterParse(0);
            v66 = *(v65 + 20);
            v67 = &v22[v66];
            v68 = &v23[v66];
            v69 = *(v68 + 1);
            *v67 = *v68;
            *(v67 + 1) = v69;
            v70 = *(v65 + 24);
            v272 = v65;
            __dstb = &v22[v70];
            v71 = &v23[v70];
            v72 = type metadata accessor for USOParse(0);

            if (__swift_getEnumTagSinglePayload(v71, 1, v72))
            {
              v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dstb, v71, *(*(v73 - 8) + 64));
            }

            else
            {
              v146 = sub_1DD0DB4BC();
              (*(*(v146 - 8) + 16))(__dstb, v71, v146);
              v269 = v72;
              v147 = *(v72 + 20);
              v266 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v71[v147], 1, v266))
              {
                v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dstb[v147], &v71[v147], *(*(v148 - 8) + 64));
              }

              else
              {
                (*(*(v266 - 8) + 16))(&__dstb[v147], &v71[v147]);
                __swift_storeEnumTagSinglePayload(&__dstb[v147], 0, 1, v266);
              }

              v207 = *(v269 + 24);
              v208 = &__dstb[v207];
              v209 = &v71[v207];
              v210 = *(v209 + 1);
              *v208 = *v209;
              *(v208 + 1) = v210;
              v211 = *(v269 + 28);
              v212 = &__dstb[v211];
              v213 = &v71[v211];
              v212[4] = v213[4];
              *v212 = *v213;

              __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v269);
            }

            v214 = *(v272 + 28);
            v215 = *&v23[v214];
            *&v22[v214] = v215;
            v216 = v215;
            goto LABEL_82;
          case 9u:
            v46 = sub_1DD0DD08C();
            (*(*(v46 - 8) + 16))(v22, v23, v46);
LABEL_82:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v22, v23, *(*(v24 - 8) + 64));
            break;
        }

        *(a1 + v20[6]) = *(a2 + v20[6]);
        v217 = v20[7];
        v218 = a1 + v217;
        v219 = a2 + v217;
        v220 = *(a2 + v217 + 24);

        if (v220)
        {
          v221 = *(v219 + 4);
          *(v218 + 3) = v220;
          *(v218 + 4) = v221;
          (**(v220 - 8))(v218, v219, v220);
        }

        else
        {
          v222 = *(v219 + 1);
          *v218 = *v219;
          *(v218 + 1) = v222;
          *(v218 + 4) = *(v219 + 4);
        }

        *(a1 + v20[8]) = *(a2 + v20[8]);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        type metadata accessor for RCHFlowSharedData(255, AssociatedTypeWitness, v224, v225);
        sub_1DD0DE97C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        *(a1 + *(TupleTypeMetadata2 + 48)) = *(a2 + *(TupleTypeMetadata2 + 48));
        sub_1DD0DCF8C();
      case 5u:
        v32 = sub_1DD0DB04C();
        (*(*(v32 - 8) + 16))(a1, a2, v32);
        v33 = type metadata accessor for Input(0);
        v34 = v33[5];
        v35 = a1 + v34;
        v36 = a2 + v34;
        v37 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v38 = sub_1DD0DC76C();
            (*(*(v38 - 8) + 16))(v35, v36, v38);
            goto LABEL_98;
          case 1u:
            v88 = sub_1DD0DC76C();
            (*(*(v88 - 8) + 16))(v35, v36, v88);
            v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v35[*(v89 + 48)] = *&v36[*(v89 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            v79 = *(v36 + 1);
            *v35 = *v36;
            *(v35 + 1) = v79;
            *(v35 + 2) = *(v36 + 2);

            goto LABEL_98;
          case 3u:
            *v35 = *v36;
            swift_unknownObjectRetain();
            goto LABEL_98;
          case 4u:
            v58 = sub_1DD0DB1EC();
            (*(*(v58 - 8) + 16))(v35, v36, v58);
            goto LABEL_98;
          case 5u:
            v104 = *v36;
            *v35 = *v36;
            v105 = v104;
            goto LABEL_98;
          case 6u:
            v106 = sub_1DD0DB4BC();
            (*(*(v106 - 8) + 16))(v35, v36, v106);
            __dstg = type metadata accessor for USOParse(0);
            v107 = __dstg[5];
            v108 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v36[v107], 1, v108))
            {
              v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v35[v107], &v36[v107], *(*(v109 - 8) + 64));
            }

            else
            {
              (*(*(v108 - 8) + 16))(&v35[v107], &v36[v107], v108);
              __swift_storeEnumTagSinglePayload(&v35[v107], 0, 1, v108);
            }

            v197 = __dstg[6];
            v198 = &v35[v197];
            v199 = &v36[v197];
            v200 = *(v199 + 1);
            *v198 = *v199;
            *(v198 + 1) = v200;
            v201 = __dstg[7];
            v202 = &v35[v201];
            v203 = &v36[v201];
            v202[4] = v203[4];
            *v202 = *v203;

            goto LABEL_98;
          case 7u:
            v82 = sub_1DD0DB4BC();
            (*(*(v82 - 8) + 16))(v35, v36, v82);
            __dstd = type metadata accessor for USOParse(0);
            v83 = __dstd[5];
            v84 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v36[v83], 1, v84))
            {
              v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v35[v83], &v36[v83], *(*(v85 - 8) + 64));
            }

            else
            {
              (*(*(v84 - 8) + 16))(&v35[v83], &v36[v83], v84);
              __swift_storeEnumTagSinglePayload(&v35[v83], 0, 1, v84);
            }

            v168 = __dstd[6];
            v169 = &v35[v168];
            v170 = &v36[v168];
            v277 = *(v170 + 1);
            *v169 = *v170;
            *(v169 + 1) = v277;
            v171 = __dstd[7];
            v172 = &v35[v171];
            v173 = &v36[v171];
            v172[4] = v173[4];
            *v172 = *v173;
            v174 = type metadata accessor for LinkParse(0);
            v175 = v174[5];
            v176 = &v35[v175];
            v177 = &v36[v175];
            v178 = *(v177 + 1);
            *v176 = *v177;
            *(v176 + 1) = v178;
            v179 = v174[6];
            v180 = &v35[v179];
            v181 = &v36[v179];
            v182 = *(v181 + 1);
            *v180 = *v181;
            *(v180 + 1) = v182;
            v183 = v174[7];
            v184 = &v35[v183];
            v185 = &v36[v183];
            v186 = *(v185 + 1);
            *v184 = *v185;
            *(v184 + 1) = v186;

            goto LABEL_98;
          case 8u:
            v110 = sub_1DD0DD12C();
            (*(*(v110 - 8) + 16))(v35, v36, v110);
            v111 = type metadata accessor for NLRouterParse(0);
            v112 = *(v111 + 20);
            v113 = &v35[v112];
            v114 = &v36[v112];
            v115 = *(v114 + 1);
            *v113 = *v114;
            *(v113 + 1) = v115;
            v116 = *(v111 + 24);
            v274 = v111;
            __dsth = &v35[v116];
            v117 = &v36[v116];
            v118 = type metadata accessor for USOParse(0);

            if (__swift_getEnumTagSinglePayload(v117, 1, v118))
            {
              v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dsth, v117, *(*(v119 - 8) + 64));
            }

            else
            {
              v204 = sub_1DD0DB4BC();
              (*(*(v204 - 8) + 16))(__dsth, v117, v204);
              v271 = v118;
              v205 = *(v118 + 20);
              v268 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v117[v205], 1, v268))
              {
                v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dsth[v205], &v117[v205], *(*(v206 - 8) + 64));
              }

              else
              {
                (*(*(v268 - 8) + 16))(&__dsth[v205], &v117[v205]);
                __swift_storeEnumTagSinglePayload(&__dsth[v205], 0, 1, v268);
              }

              v246 = *(v271 + 24);
              v247 = &__dsth[v246];
              v248 = &v117[v246];
              v249 = *(v248 + 1);
              *v247 = *v248;
              *(v247 + 1) = v249;
              v250 = *(v271 + 28);
              v251 = &__dsth[v250];
              v252 = &v117[v250];
              v251[4] = v252[4];
              *v251 = *v252;

              __swift_storeEnumTagSinglePayload(__dsth, 0, 1, v271);
            }

            v253 = *(v274 + 28);
            v254 = *&v36[v253];
            *&v35[v253] = v254;
            v255 = v254;
            goto LABEL_98;
          case 9u:
            v74 = sub_1DD0DD08C();
            (*(*(v74 - 8) + 16))(v35, v36, v74);
LABEL_98:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v35, v36, *(*(v37 - 8) + 64));
            break;
        }

        *(a1 + v33[6]) = *(a2 + v33[6]);
        v256 = v33[7];
        v257 = a1 + v256;
        v258 = a2 + v256;
        v259 = *(a2 + v256 + 24);

        if (v259)
        {
          v260 = *(v258 + 4);
          *(v257 + 3) = v259;
          *(v257 + 4) = v260;
          (**(v259 - 8))(v257, v258, v259);
        }

        else
        {
          v261 = *(v258 + 1);
          *v257 = *v258;
          *(v257 + 1) = v261;
          *(v257 + 4) = *(v258 + 4);
        }

        *(a1 + v33[8]) = *(a2 + v33[8]);
        v262 = swift_getAssociatedTypeWitness();
        type metadata accessor for RCHFlowSharedData(255, v262, v263, v264);
        sub_1DD0DE97C();
        v265 = swift_getTupleTypeMetadata2();
        *(a1 + *(v265 + 48)) = *(a2 + *(v265 + 48));
        sub_1DD0DCF8C();
      case 6u:
        v39 = *a2;
        v40 = a2[1];
        *a1 = v39;
        a1[1] = v40;
        sub_1DD0DCF8C();
      case 7u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 8u:
        v44 = a2[1];
        *a1 = *a2;
        a1[1] = v44;
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 9u:
        v26 = *a2;
        v27 = a2[1];
        *a1 = v26;
        a1[1] = v27;
        sub_1DD0DCF8C();
      case 0xAu:
        v41 = *a2;
        v42 = a2[1];
        v43 = a2[2];
        sub_1DCB72E48(v41, v42, v43);
        *a1 = v41;
        a1[1] = v42;
        a1[2] = v43;
        goto LABEL_103;
      case 0xBu:
        v17 = *a2;
        v18 = v17;
        *a1 = v17;
LABEL_103:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v7 - 8) + 64));
        break;
    }

    __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
    return a1;
  }
}

unint64_t *sub_1DCEF181C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for RCHFlowAsync.State(0, *(a3 + 16), *(a3 + 24), a4);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v7);
  v9 = __swift_getEnumTagSinglePayload(a2, 1, v7);
  if (EnumTagSinglePayload)
  {
    if (!v9)
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v10 = sub_1DD0DB04C();
          (*(*(v10 - 8) + 16))(a1, a2, v10);
          v11 = type metadata accessor for Input(0);
          v12 = v11[5];
          v13 = a1 + v12;
          v14 = a2 + v12;
          v15 = type metadata accessor for Parse(0);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v16 = sub_1DD0DC76C();
              (*(*(v16 - 8) + 16))(v13, v14, v16);
              goto LABEL_165;
            case 1u:
              v96 = sub_1DD0DC76C();
              (*(*(v96 - 8) + 16))(v13, v14, v96);
              v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
              *&v13[*(v97 + 48)] = *&v14[*(v97 + 48)];
              sub_1DD0DCF8C();
            case 2u:
              *v13 = *v14;
              *(v13 + 1) = *(v14 + 1);
              *(v13 + 2) = *(v14 + 2);

              goto LABEL_165;
            case 3u:
              *v13 = *v14;
              swift_unknownObjectRetain();
              goto LABEL_165;
            case 4u:
              v71 = sub_1DD0DB1EC();
              (*(*(v71 - 8) + 16))(v13, v14, v71);
              goto LABEL_165;
            case 5u:
              v102 = *v14;
              *v13 = *v14;
              v103 = v102;
              goto LABEL_165;
            case 6u:
              v106 = sub_1DD0DB4BC();
              (*(*(v106 - 8) + 16))(v13, v14, v106);
              __dste = type metadata accessor for USOParse(0);
              v107 = __dste[5];
              v108 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v14[v107], 1, v108))
              {
                v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v13[v107], &v14[v107], *(*(v109 - 8) + 64));
              }

              else
              {
                (*(*(v108 - 8) + 16))(&v13[v107], &v14[v107], v108);
                __swift_storeEnumTagSinglePayload(&v13[v107], 0, 1, v108);
              }

              v243 = __dste[6];
              v244 = &v13[v243];
              v245 = &v14[v243];
              *v244 = *v245;
              *(v244 + 1) = *(v245 + 1);
              v246 = __dste[7];
              v247 = &v13[v246];
              v248 = &v14[v246];
              v249 = *v248;
              v247[4] = v248[4];
              *v247 = v249;

              goto LABEL_165;
            case 7u:
              v92 = sub_1DD0DB4BC();
              (*(*(v92 - 8) + 16))(v13, v14, v92);
              __dstc = type metadata accessor for USOParse(0);
              v93 = __dstc[5];
              v94 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v14[v93], 1, v94))
              {
                v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v13[v93], &v14[v93], *(*(v95 - 8) + 64));
              }

              else
              {
                (*(*(v94 - 8) + 16))(&v13[v93], &v14[v93], v94);
                __swift_storeEnumTagSinglePayload(&v13[v93], 0, 1, v94);
              }

              v195 = __dstc[6];
              v196 = &v13[v195];
              v197 = &v14[v195];
              *v196 = *v197;
              *(v196 + 1) = *(v197 + 1);
              v198 = __dstc[7];
              v199 = &v13[v198];
              v200 = &v14[v198];
              v201 = *v200;
              v199[4] = v200[4];
              *v199 = v201;
              v202 = type metadata accessor for LinkParse(0);
              v203 = v202[5];
              v204 = &v13[v203];
              v205 = &v14[v203];
              *v204 = *v205;
              *(v204 + 1) = *(v205 + 1);
              v206 = v202[6];
              v207 = &v13[v206];
              v208 = &v14[v206];
              *v207 = *v208;
              *(v207 + 1) = *(v208 + 1);
              v209 = v202[7];
              v210 = &v13[v209];
              v211 = &v14[v209];
              *v210 = *v211;
              *(v210 + 1) = *(v211 + 1);

              goto LABEL_165;
            case 8u:
              v110 = sub_1DD0DD12C();
              (*(*(v110 - 8) + 16))(v13, v14, v110);
              v111 = type metadata accessor for NLRouterParse(0);
              v112 = *(v111 + 20);
              v113 = &v13[v112];
              v114 = &v14[v112];
              *v113 = *v114;
              *(v113 + 1) = *(v114 + 1);
              v115 = *(v111 + 24);
              v514 = v111;
              __dstf = &v13[v115];
              v116 = &v14[v115];
              v117 = type metadata accessor for USOParse(0);

              if (__swift_getEnumTagSinglePayload(v116, 1, v117))
              {
                v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
                memcpy(__dstf, v116, *(*(v118 - 8) + 64));
              }

              else
              {
                v259 = sub_1DD0DB4BC();
                (*(*(v259 - 8) + 16))(__dstf, v116, v259);
                v502 = v117;
                v260 = *(v117 + 20);
                v261 = sub_1DD0DB3EC();
                v508 = v116;
                v262 = &v116[v260];
                v263 = v261;
                if (__swift_getEnumTagSinglePayload(v262, 1, v261))
                {
                  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&__dstf[v260], &v508[v260], *(*(v264 - 8) + 64));
                }

                else
                {
                  (*(*(v263 - 8) + 16))(&__dstf[v260], &v508[v260], v263);
                  __swift_storeEnumTagSinglePayload(&__dstf[v260], 0, 1, v263);
                }

                v390 = *(v502 + 24);
                v391 = &__dstf[v390];
                v392 = &v508[v390];
                *v391 = *v392;
                *(v391 + 1) = *(v392 + 1);
                v393 = *(v502 + 28);
                v394 = &__dstf[v393];
                v395 = &v508[v393];
                v396 = *v395;
                v394[4] = v395[4];
                *v394 = v396;

                __swift_storeEnumTagSinglePayload(__dstf, 0, 1, v502);
              }

              v397 = *(v514 + 28);
              v398 = *&v14[v397];
              *&v13[v397] = v398;
              v399 = v398;
              goto LABEL_165;
            case 9u:
              v74 = sub_1DD0DD08C();
              (*(*(v74 - 8) + 16))(v13, v14, v74);
LABEL_165:
              swift_storeEnumTagMultiPayload();
              break;
            default:
              memcpy(v13, v14, *(*(v15 - 8) + 64));
              break;
          }

          *(a1 + v11[6]) = *(a2 + v11[6]);
          v400 = v11[7];
          v401 = a1 + v400;
          v402 = a2 + v400;
          v403 = *(a2 + v400 + 24);

          if (v403)
          {
            *(v401 + 3) = v403;
            *(v401 + 4) = *(v402 + 4);
            (**(v403 - 8))(v401, v402, v403);
          }

          else
          {
            v404 = *v402;
            v405 = *(v402 + 1);
            *(v401 + 4) = *(v402 + 4);
            *v401 = v404;
            *(v401 + 1) = v405;
          }

          *(a1 + v11[8]) = *(a2 + v11[8]);
          swift_getAssociatedTypeWitness();
          v406 = *(swift_getTupleTypeMetadata2() + 48);
          v407 = *(a2 + v406);
          *(a1 + v406) = v407;
          v408 = v407;
          goto LABEL_182;
        case 1u:
          *a1 = *a2;
          sub_1DD0DCF8C();
        case 2u:
          *a1 = *a2;
          a1[1] = a2[1];
          sub_1DD0DCF8C();
        case 3u:
          *a1 = *a2;
          a1[1] = a2[1];
          sub_1DD0DCF8C();
        case 4u:
          v29 = sub_1DD0DB04C();
          (*(*(v29 - 8) + 16))(a1, a2, v29);
          v30 = type metadata accessor for Input(0);
          v31 = v30[5];
          v32 = a1 + v31;
          v33 = a2 + v31;
          v34 = type metadata accessor for Parse(0);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v35 = sub_1DD0DC76C();
              (*(*(v35 - 8) + 16))(v32, v33, v35);
              goto LABEL_149;
            case 1u:
              v72 = sub_1DD0DC76C();
              (*(*(v72 - 8) + 16))(v32, v33, v72);
              v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
              *&v32[*(v73 + 48)] = *&v33[*(v73 + 48)];
              sub_1DD0DCF8C();
            case 2u:
              *v32 = *v33;
              *(v32 + 1) = *(v33 + 1);
              *(v32 + 2) = *(v33 + 2);

              goto LABEL_149;
            case 3u:
              *v32 = *v33;
              swift_unknownObjectRetain();
              goto LABEL_149;
            case 4u:
              v65 = sub_1DD0DB1EC();
              (*(*(v65 - 8) + 16))(v32, v33, v65);
              goto LABEL_149;
            case 5u:
              v75 = *v33;
              *v32 = *v33;
              v76 = v75;
              goto LABEL_149;
            case 6u:
              v78 = sub_1DD0DB4BC();
              (*(*(v78 - 8) + 16))(v32, v33, v78);
              __dsta = type metadata accessor for USOParse(0);
              v79 = __dsta[5];
              v80 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v33[v79], 1, v80))
              {
                v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v32[v79], &v33[v79], *(*(v81 - 8) + 64));
              }

              else
              {
                (*(*(v80 - 8) + 16))(&v32[v79], &v33[v79], v80);
                __swift_storeEnumTagSinglePayload(&v32[v79], 0, 1, v80);
              }

              v168 = __dsta[6];
              v169 = &v32[v168];
              v170 = &v33[v168];
              *v169 = *v170;
              *(v169 + 1) = *(v170 + 1);
              v171 = __dsta[7];
              v172 = &v32[v171];
              v173 = &v33[v171];
              v174 = *v173;
              v172[4] = v173[4];
              *v172 = v174;

              goto LABEL_149;
            case 7u:
              v67 = sub_1DD0DB4BC();
              (*(*(v67 - 8) + 16))(v32, v33, v67);
              __dst = type metadata accessor for USOParse(0);
              v68 = __dst[5];
              v69 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v33[v68], 1, v69))
              {
                v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v32[v68], &v33[v68], *(*(v70 - 8) + 64));
              }

              else
              {
                (*(*(v69 - 8) + 16))(&v32[v68], &v33[v68], v69);
                __swift_storeEnumTagSinglePayload(&v32[v68], 0, 1, v69);
              }

              v140 = __dst[6];
              v141 = &v32[v140];
              v142 = &v33[v140];
              *v141 = *v142;
              *(v141 + 1) = *(v142 + 1);
              v143 = __dst[7];
              v144 = &v32[v143];
              v145 = &v33[v143];
              v146 = *v145;
              v144[4] = v145[4];
              *v144 = v146;
              v147 = type metadata accessor for LinkParse(0);
              v148 = v147[5];
              v149 = &v32[v148];
              v150 = &v33[v148];
              *v149 = *v150;
              *(v149 + 1) = *(v150 + 1);
              v151 = v147[6];
              v152 = &v32[v151];
              v153 = &v33[v151];
              *v152 = *v153;
              *(v152 + 1) = *(v153 + 1);
              v154 = v147[7];
              v155 = &v32[v154];
              v156 = &v33[v154];
              *v155 = *v156;
              *(v155 + 1) = *(v156 + 1);

              goto LABEL_149;
            case 8u:
              v82 = sub_1DD0DD12C();
              (*(*(v82 - 8) + 16))(v32, v33, v82);
              v83 = type metadata accessor for NLRouterParse(0);
              v84 = *(v83 + 20);
              v85 = &v32[v84];
              v86 = &v33[v84];
              *v85 = *v86;
              *(v85 + 1) = *(v86 + 1);
              v87 = *(v83 + 24);
              v513 = v83;
              __dstb = &v32[v87];
              v88 = &v33[v87];
              v89 = type metadata accessor for USOParse(0);

              if (__swift_getEnumTagSinglePayload(v88, 1, v89))
              {
                v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
                memcpy(__dstb, v88, *(*(v90 - 8) + 64));
              }

              else
              {
                v184 = sub_1DD0DB4BC();
                (*(*(v184 - 8) + 16))(__dstb, v88, v184);
                v501 = v89;
                v185 = *(v89 + 20);
                v186 = sub_1DD0DB3EC();
                v507 = v88;
                v187 = &v88[v185];
                v188 = v186;
                if (__swift_getEnumTagSinglePayload(v187, 1, v186))
                {
                  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&__dstb[v185], &v507[v185], *(*(v189 - 8) + 64));
                }

                else
                {
                  (*(*(v188 - 8) + 16))(&__dstb[v185], &v507[v185], v188);
                  __swift_storeEnumTagSinglePayload(&__dstb[v185], 0, 1, v188);
                }

                v323 = *(v501 + 24);
                v324 = &__dstb[v323];
                v325 = &v507[v323];
                *v324 = *v325;
                *(v324 + 1) = *(v325 + 1);
                v326 = *(v501 + 28);
                v327 = &__dstb[v326];
                v328 = &v507[v326];
                v329 = *v328;
                v327[4] = v328[4];
                *v327 = v329;

                __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v501);
              }

              v330 = *(v513 + 28);
              v331 = *&v33[v330];
              *&v32[v330] = v331;
              v332 = v331;
              goto LABEL_149;
            case 9u:
              v66 = sub_1DD0DD08C();
              (*(*(v66 - 8) + 16))(v32, v33, v66);
LABEL_149:
              swift_storeEnumTagMultiPayload();
              break;
            default:
              memcpy(v32, v33, *(*(v34 - 8) + 64));
              break;
          }

          *(a1 + v30[6]) = *(a2 + v30[6]);
          v333 = v30[7];
          v334 = a1 + v333;
          v335 = a2 + v333;
          v336 = *(a2 + v333 + 24);

          if (v336)
          {
            *(v334 + 3) = v336;
            *(v334 + 4) = *(v335 + 4);
            (**(v336 - 8))(v334, v335, v336);
          }

          else
          {
            v337 = *v335;
            v338 = *(v335 + 1);
            *(v334 + 4) = *(v335 + 4);
            *v334 = v337;
            *(v334 + 1) = v338;
          }

          *(a1 + v30[8]) = *(a2 + v30[8]);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          type metadata accessor for RCHFlowSharedData(255, AssociatedTypeWitness, v340, v341);
          sub_1DD0DE97C();
          TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
          *(a1 + *(TupleTypeMetadata2 + 48)) = *(a2 + *(TupleTypeMetadata2 + 48));
          sub_1DD0DCF8C();
        case 5u:
          v36 = sub_1DD0DB04C();
          (*(*(v36 - 8) + 16))(a1, a2, v36);
          v37 = type metadata accessor for Input(0);
          v38 = v37[5];
          v39 = a1 + v38;
          v40 = a2 + v38;
          v41 = type metadata accessor for Parse(0);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v42 = sub_1DD0DC76C();
              (*(*(v42 - 8) + 16))(v39, v40, v42);
              goto LABEL_177;
            case 1u:
              v104 = sub_1DD0DC76C();
              (*(*(v104 - 8) + 16))(v39, v40, v104);
              v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
              *&v39[*(v105 + 48)] = *&v40[*(v105 + 48)];
              sub_1DD0DCF8C();
            case 2u:
              *v39 = *v40;
              *(v39 + 1) = *(v40 + 1);
              *(v39 + 2) = *(v40 + 2);

              goto LABEL_177;
            case 3u:
              *v39 = *v40;
              swift_unknownObjectRetain();
              goto LABEL_177;
            case 4u:
              v77 = sub_1DD0DB1EC();
              (*(*(v77 - 8) + 16))(v39, v40, v77);
              goto LABEL_177;
            case 5u:
              v119 = *v40;
              *v39 = *v40;
              v120 = v119;
              goto LABEL_177;
            case 6u:
              v121 = sub_1DD0DB4BC();
              (*(*(v121 - 8) + 16))(v39, v40, v121);
              __dstg = type metadata accessor for USOParse(0);
              v122 = __dstg[5];
              v123 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v40[v122], 1, v123))
              {
                v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v39[v122], &v40[v122], *(*(v124 - 8) + 64));
              }

              else
              {
                (*(*(v123 - 8) + 16))(&v39[v122], &v40[v122], v123);
                __swift_storeEnumTagSinglePayload(&v39[v122], 0, 1, v123);
              }

              v271 = __dstg[6];
              v272 = &v39[v271];
              v273 = &v40[v271];
              *v272 = *v273;
              *(v272 + 1) = *(v273 + 1);
              v274 = __dstg[7];
              v275 = &v39[v274];
              v276 = &v40[v274];
              v277 = *v276;
              v275[4] = v276[4];
              *v275 = v277;

              goto LABEL_177;
            case 7u:
              v98 = sub_1DD0DB4BC();
              (*(*(v98 - 8) + 16))(v39, v40, v98);
              __dstd = type metadata accessor for USOParse(0);
              v99 = __dstd[5];
              v100 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v40[v99], 1, v100))
              {
                v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v39[v99], &v40[v99], *(*(v101 - 8) + 64));
              }

              else
              {
                (*(*(v100 - 8) + 16))(&v39[v99], &v40[v99], v100);
                __swift_storeEnumTagSinglePayload(&v39[v99], 0, 1, v100);
              }

              v218 = __dstd[6];
              v219 = &v39[v218];
              v220 = &v40[v218];
              *v219 = *v220;
              *(v219 + 1) = *(v220 + 1);
              v221 = __dstd[7];
              v222 = &v39[v221];
              v223 = &v40[v221];
              v224 = *v223;
              v222[4] = v223[4];
              *v222 = v224;
              v225 = type metadata accessor for LinkParse(0);
              v226 = v225[5];
              v227 = &v39[v226];
              v228 = &v40[v226];
              *v227 = *v228;
              *(v227 + 1) = *(v228 + 1);
              v229 = v225[6];
              v230 = &v39[v229];
              v231 = &v40[v229];
              *v230 = *v231;
              *(v230 + 1) = *(v231 + 1);
              v232 = v225[7];
              v233 = &v39[v232];
              v234 = &v40[v232];
              *v233 = *v234;
              *(v233 + 1) = *(v234 + 1);

              goto LABEL_177;
            case 8u:
              v125 = sub_1DD0DD12C();
              (*(*(v125 - 8) + 16))(v39, v40, v125);
              v126 = type metadata accessor for NLRouterParse(0);
              v127 = *(v126 + 20);
              v128 = &v39[v127];
              v129 = &v40[v127];
              *v128 = *v129;
              *(v128 + 1) = *(v129 + 1);
              v130 = *(v126 + 24);
              v515 = v126;
              __dsth = &v39[v130];
              v131 = &v40[v130];
              v132 = type metadata accessor for USOParse(0);

              if (__swift_getEnumTagSinglePayload(v131, 1, v132))
              {
                v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
                memcpy(__dsth, v131, *(*(v133 - 8) + 64));
              }

              else
              {
                v287 = sub_1DD0DB4BC();
                (*(*(v287 - 8) + 16))(__dsth, v131, v287);
                v503 = v132;
                v288 = *(v132 + 20);
                v289 = sub_1DD0DB3EC();
                v509 = v131;
                v290 = &v131[v288];
                v291 = v289;
                if (__swift_getEnumTagSinglePayload(v290, 1, v289))
                {
                  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&__dsth[v288], &v509[v288], *(*(v292 - 8) + 64));
                }

                else
                {
                  (*(*(v291 - 8) + 16))(&__dsth[v288], &v509[v288], v291);
                  __swift_storeEnumTagSinglePayload(&__dsth[v288], 0, 1, v291);
                }

                v422 = *(v503 + 24);
                v423 = &__dsth[v422];
                v424 = &v509[v422];
                *v423 = *v424;
                *(v423 + 1) = *(v424 + 1);
                v425 = *(v503 + 28);
                v426 = &__dsth[v425];
                v427 = &v509[v425];
                v428 = *v427;
                v426[4] = v427[4];
                *v426 = v428;

                __swift_storeEnumTagSinglePayload(__dsth, 0, 1, v503);
              }

              v429 = *(v515 + 28);
              v430 = *&v40[v429];
              *&v39[v429] = v430;
              v431 = v430;
              goto LABEL_177;
            case 9u:
              v91 = sub_1DD0DD08C();
              (*(*(v91 - 8) + 16))(v39, v40, v91);
LABEL_177:
              swift_storeEnumTagMultiPayload();
              break;
            default:
              memcpy(v39, v40, *(*(v41 - 8) + 64));
              break;
          }

          *(a1 + v37[6]) = *(a2 + v37[6]);
          v432 = v37[7];
          v433 = a1 + v432;
          v434 = a2 + v432;
          v435 = *(a2 + v432 + 24);

          if (v435)
          {
            *(v433 + 3) = v435;
            *(v433 + 4) = *(v434 + 4);
            (**(v435 - 8))(v433, v434, v435);
          }

          else
          {
            v436 = *v434;
            v437 = *(v434 + 1);
            *(v433 + 4) = *(v434 + 4);
            *v433 = v436;
            *(v433 + 1) = v437;
          }

          *(a1 + v37[8]) = *(a2 + v37[8]);
          v438 = swift_getAssociatedTypeWitness();
          type metadata accessor for RCHFlowSharedData(255, v438, v439, v440);
          sub_1DD0DE97C();
          v441 = swift_getTupleTypeMetadata2();
          *(a1 + *(v441 + 48)) = *(a2 + *(v441 + 48));
          sub_1DD0DCF8C();
        case 6u:
          *a1 = *a2;
          a1[1] = a2[1];
          sub_1DD0DCF8C();
        case 7u:
          *a1 = *a2;
          sub_1DD0DCF8C();
        case 8u:
          *a1 = *a2;
          a1[1] = a2[1];
          a1[2] = a2[2];
          sub_1DD0DCF8C();
        case 9u:
          *a1 = *a2;
          a1[1] = a2[1];
          sub_1DD0DCF8C();
        case 0xAu:
          v43 = *a2;
          v44 = a2[1];
          v45 = a2[2];
          sub_1DCB72E48(v43, v44, v45);
          *a1 = v43;
          a1[1] = v44;
          a1[2] = v45;
          goto LABEL_182;
        case 0xBu:
          v27 = *a2;
          v28 = v27;
          *a1 = v27;
LABEL_182:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v7 - 8) + 64));
          break;
      }

      __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
      return a1;
    }
  }

  else
  {
    if (!v9)
    {
      if (a1 != a2)
      {
        v19 = *(v7 - 8);
        (*(v19 + 8))(a1, v7);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v20 = sub_1DD0DB04C();
            (*(*(v20 - 8) + 16))(a1, a2, v20);
            v21 = type metadata accessor for Input(0);
            v22 = v21[5];
            v23 = a1 + v22;
            v24 = a2 + v22;
            v25 = type metadata accessor for Parse(0);
            switch(swift_getEnumCaseMultiPayload())
            {
              case 0u:
                v26 = sub_1DD0DC76C();
                (*(*(v26 - 8) + 16))(v23, v24, v26);
                goto LABEL_195;
              case 1u:
                v212 = sub_1DD0DC76C();
                (*(*(v212 - 8) + 16))(v23, v24, v212);
                v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
                *&v23[*(v213 + 48)] = *&v24[*(v213 + 48)];
                sub_1DD0DCF8C();
              case 2u:
                *v23 = *v24;
                *(v23 + 1) = *(v24 + 1);
                *(v23 + 2) = *(v24 + 2);

                goto LABEL_195;
              case 3u:
                *v23 = *v24;
                swift_unknownObjectRetain();
                goto LABEL_195;
              case 4u:
                v157 = sub_1DD0DB1EC();
                (*(*(v157 - 8) + 16))(v23, v24, v157);
                goto LABEL_195;
              case 5u:
                v235 = *v24;
                *v23 = *v24;
                v236 = v235;
                goto LABEL_195;
              case 6u:
                v239 = sub_1DD0DB4BC();
                (*(*(v239 - 8) + 16))(v23, v24, v239);
                __dstn = type metadata accessor for USOParse(0);
                v240 = __dstn[5];
                v241 = sub_1DD0DB3EC();
                if (__swift_getEnumTagSinglePayload(&v24[v240], 1, v241))
                {
                  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&v23[v240], &v24[v240], *(*(v242 - 8) + 64));
                }

                else
                {
                  (*(*(v241 - 8) + 16))(&v23[v240], &v24[v240], v241);
                  __swift_storeEnumTagSinglePayload(&v23[v240], 0, 1, v241);
                }

                v377 = __dstn[6];
                v378 = &v23[v377];
                v379 = &v24[v377];
                *v378 = *v379;
                *(v378 + 1) = *(v379 + 1);
                v380 = __dstn[7];
                v381 = &v23[v380];
                v382 = &v24[v380];
                v383 = *v382;
                v381[4] = v382[4];
                *v381 = v383;

                goto LABEL_195;
              case 7u:
                v191 = sub_1DD0DB4BC();
                (*(*(v191 - 8) + 16))(v23, v24, v191);
                __dstl = type metadata accessor for USOParse(0);
                v192 = __dstl[5];
                v193 = sub_1DD0DB3EC();
                if (__swift_getEnumTagSinglePayload(&v24[v192], 1, v193))
                {
                  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&v23[v192], &v24[v192], *(*(v194 - 8) + 64));
                }

                else
                {
                  (*(*(v193 - 8) + 16))(&v23[v192], &v24[v192], v193);
                  __swift_storeEnumTagSinglePayload(&v23[v192], 0, 1, v193);
                }

                v343 = __dstl[6];
                v344 = &v23[v343];
                v345 = &v24[v343];
                *v344 = *v345;
                *(v344 + 1) = *(v345 + 1);
                v346 = __dstl[7];
                v347 = &v23[v346];
                v348 = &v24[v346];
                v349 = *v348;
                v347[4] = v348[4];
                *v347 = v349;
                v350 = type metadata accessor for LinkParse(0);
                v351 = v350[5];
                v352 = &v23[v351];
                v353 = &v24[v351];
                *v352 = *v353;
                *(v352 + 1) = *(v353 + 1);
                v354 = v350[6];
                v355 = &v23[v354];
                v356 = &v24[v354];
                *v355 = *v356;
                *(v355 + 1) = *(v356 + 1);
                v357 = v350[7];
                v358 = &v23[v357];
                v359 = &v24[v357];
                *v358 = *v359;
                *(v358 + 1) = *(v359 + 1);

                goto LABEL_195;
              case 8u:
                v250 = sub_1DD0DD12C();
                (*(*(v250 - 8) + 16))(v23, v24, v250);
                v251 = type metadata accessor for NLRouterParse(0);
                v252 = *(v251 + 20);
                v253 = &v23[v252];
                v254 = &v24[v252];
                *v253 = *v254;
                *(v253 + 1) = *(v254 + 1);
                v255 = *(v251 + 24);
                v517 = v251;
                __dsto = &v23[v255];
                v256 = &v24[v255];
                v257 = type metadata accessor for USOParse(0);

                if (__swift_getEnumTagSinglePayload(v256, 1, v257))
                {
                  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
                  memcpy(__dsto, v256, *(*(v258 - 8) + 64));
                }

                else
                {
                  v384 = sub_1DD0DB4BC();
                  (*(*(v384 - 8) + 16))(__dsto, v256, v384);
                  v505 = v257;
                  v385 = *(v257 + 20);
                  v386 = sub_1DD0DB3EC();
                  v511 = v256;
                  v387 = &v256[v385];
                  v388 = v386;
                  if (__swift_getEnumTagSinglePayload(v387, 1, v386))
                  {
                    v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                    memcpy(&__dsto[v385], &v511[v385], *(*(v389 - 8) + 64));
                  }

                  else
                  {
                    (*(*(v388 - 8) + 16))(&__dsto[v385], &v511[v385], v388);
                    __swift_storeEnumTagSinglePayload(&__dsto[v385], 0, 1, v388);
                  }

                  v462 = *(v505 + 24);
                  v463 = &__dsto[v462];
                  v464 = &v511[v462];
                  *v463 = *v464;
                  *(v463 + 1) = *(v464 + 1);
                  v465 = *(v505 + 28);
                  v466 = &__dsto[v465];
                  v467 = &v511[v465];
                  v468 = *v467;
                  v466[4] = v467[4];
                  *v466 = v468;

                  __swift_storeEnumTagSinglePayload(__dsto, 0, 1, v505);
                }

                v469 = *(v517 + 28);
                v470 = *&v24[v469];
                *&v23[v469] = v470;
                v471 = v470;
                goto LABEL_195;
              case 9u:
                v160 = sub_1DD0DD08C();
                (*(*(v160 - 8) + 16))(v23, v24, v160);
LABEL_195:
                swift_storeEnumTagMultiPayload();
                break;
              default:
                memcpy(v23, v24, *(*(v25 - 8) + 64));
                break;
            }

            *(a1 + v21[6]) = *(a2 + v21[6]);
            v472 = v21[7];
            v473 = a1 + v472;
            v474 = a2 + v472;
            v475 = *(a2 + v472 + 24);

            if (v475)
            {
              *(v473 + 3) = v475;
              *(v473 + 4) = *(v474 + 4);
              (**(v475 - 8))(v473, v474, v475);
            }

            else
            {
              v476 = *v474;
              v477 = *(v474 + 1);
              *(v473 + 4) = *(v474 + 4);
              *v473 = v476;
              *(v473 + 1) = v477;
            }

            *(a1 + v21[8]) = *(a2 + v21[8]);
            swift_getAssociatedTypeWitness();
            v478 = *(swift_getTupleTypeMetadata2() + 48);
            v479 = *(a2 + v478);
            *(a1 + v478) = v479;
            v480 = v479;
            goto LABEL_208;
          case 1u:
            *a1 = *a2;
            sub_1DD0DCF8C();
          case 2u:
            *a1 = *a2;
            a1[1] = a2[1];
            sub_1DD0DCF8C();
          case 3u:
            *a1 = *a2;
            a1[1] = a2[1];
            sub_1DD0DCF8C();
          case 4u:
            v48 = sub_1DD0DB04C();
            (*(*(v48 - 8) + 16))(a1, a2, v48);
            v49 = type metadata accessor for Input(0);
            v50 = v49[5];
            v51 = a1 + v50;
            v52 = a2 + v50;
            v53 = type metadata accessor for Parse(0);
            switch(swift_getEnumCaseMultiPayload())
            {
              case 0u:
                v54 = sub_1DD0DC76C();
                (*(*(v54 - 8) + 16))(v51, v52, v54);
                goto LABEL_187;
              case 1u:
                v158 = sub_1DD0DC76C();
                (*(*(v158 - 8) + 16))(v51, v52, v158);
                v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
                *&v51[*(v159 + 48)] = *&v52[*(v159 + 48)];
                sub_1DD0DCF8C();
              case 2u:
                *v51 = *v52;
                *(v51 + 1) = *(v52 + 1);
                *(v51 + 2) = *(v52 + 2);

                goto LABEL_187;
              case 3u:
                *v51 = *v52;
                swift_unknownObjectRetain();
                goto LABEL_187;
              case 4u:
                v134 = sub_1DD0DB1EC();
                (*(*(v134 - 8) + 16))(v51, v52, v134);
                goto LABEL_187;
              case 5u:
                v161 = *v52;
                *v51 = *v52;
                v162 = v161;
                goto LABEL_187;
              case 6u:
                v164 = sub_1DD0DB4BC();
                (*(*(v164 - 8) + 16))(v51, v52, v164);
                __dstj = type metadata accessor for USOParse(0);
                v165 = __dstj[5];
                v166 = sub_1DD0DB3EC();
                if (__swift_getEnumTagSinglePayload(&v52[v165], 1, v166))
                {
                  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&v51[v165], &v52[v165], *(*(v167 - 8) + 64));
                }

                else
                {
                  (*(*(v166 - 8) + 16))(&v51[v165], &v52[v165], v166);
                  __swift_storeEnumTagSinglePayload(&v51[v165], 0, 1, v166);
                }

                v310 = __dstj[6];
                v311 = &v51[v310];
                v312 = &v52[v310];
                *v311 = *v312;
                *(v311 + 1) = *(v312 + 1);
                v313 = __dstj[7];
                v314 = &v51[v313];
                v315 = &v52[v313];
                v316 = *v315;
                v314[4] = v315[4];
                *v314 = v316;

                goto LABEL_187;
              case 7u:
                v136 = sub_1DD0DB4BC();
                (*(*(v136 - 8) + 16))(v51, v52, v136);
                __dsti = type metadata accessor for USOParse(0);
                v137 = __dsti[5];
                v138 = sub_1DD0DB3EC();
                if (__swift_getEnumTagSinglePayload(&v52[v137], 1, v138))
                {
                  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&v51[v137], &v52[v137], *(*(v139 - 8) + 64));
                }

                else
                {
                  (*(*(v138 - 8) + 16))(&v51[v137], &v52[v137], v138);
                  __swift_storeEnumTagSinglePayload(&v51[v137], 0, 1, v138);
                }

                v293 = __dsti[6];
                v294 = &v51[v293];
                v295 = &v52[v293];
                *v294 = *v295;
                *(v294 + 1) = *(v295 + 1);
                v296 = __dsti[7];
                v297 = &v51[v296];
                v298 = &v52[v296];
                v299 = *v298;
                v297[4] = v298[4];
                *v297 = v299;
                v300 = type metadata accessor for LinkParse(0);
                v301 = v300[5];
                v302 = &v51[v301];
                v303 = &v52[v301];
                *v302 = *v303;
                *(v302 + 1) = *(v303 + 1);
                v304 = v300[6];
                v305 = &v51[v304];
                v306 = &v52[v304];
                *v305 = *v306;
                *(v305 + 1) = *(v306 + 1);
                v307 = v300[7];
                v308 = &v51[v307];
                v309 = &v52[v307];
                *v308 = *v309;
                *(v308 + 1) = *(v309 + 1);

                goto LABEL_187;
              case 8u:
                v175 = sub_1DD0DD12C();
                (*(*(v175 - 8) + 16))(v51, v52, v175);
                v176 = type metadata accessor for NLRouterParse(0);
                v177 = *(v176 + 20);
                v178 = &v51[v177];
                v179 = &v52[v177];
                *v178 = *v179;
                *(v178 + 1) = *(v179 + 1);
                v180 = *(v176 + 24);
                v516 = v176;
                __dstk = &v51[v180];
                v181 = &v52[v180];
                v182 = type metadata accessor for USOParse(0);

                if (__swift_getEnumTagSinglePayload(v181, 1, v182))
                {
                  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
                  memcpy(__dstk, v181, *(*(v183 - 8) + 64));
                }

                else
                {
                  v317 = sub_1DD0DB4BC();
                  (*(*(v317 - 8) + 16))(__dstk, v181, v317);
                  v504 = v182;
                  v318 = *(v182 + 20);
                  v319 = sub_1DD0DB3EC();
                  v510 = v181;
                  v320 = &v181[v318];
                  v321 = v319;
                  if (__swift_getEnumTagSinglePayload(v320, 1, v319))
                  {
                    v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                    memcpy(&__dstk[v318], &v510[v318], *(*(v322 - 8) + 64));
                  }

                  else
                  {
                    (*(*(v321 - 8) + 16))(&__dstk[v318], &v510[v318], v321);
                    __swift_storeEnumTagSinglePayload(&__dstk[v318], 0, 1, v321);
                  }

                  v442 = *(v504 + 24);
                  v443 = &__dstk[v442];
                  v444 = &v510[v442];
                  *v443 = *v444;
                  *(v443 + 1) = *(v444 + 1);
                  v445 = *(v504 + 28);
                  v446 = &__dstk[v445];
                  v447 = &v510[v445];
                  v448 = *v447;
                  v446[4] = v447[4];
                  *v446 = v448;

                  __swift_storeEnumTagSinglePayload(__dstk, 0, 1, v504);
                }

                v449 = *(v516 + 28);
                v450 = *&v52[v449];
                *&v51[v449] = v450;
                v451 = v450;
                goto LABEL_187;
              case 9u:
                v135 = sub_1DD0DD08C();
                (*(*(v135 - 8) + 16))(v51, v52, v135);
LABEL_187:
                swift_storeEnumTagMultiPayload();
                break;
              default:
                memcpy(v51, v52, *(*(v53 - 8) + 64));
                break;
            }

            *(a1 + v49[6]) = *(a2 + v49[6]);
            v452 = v49[7];
            v453 = a1 + v452;
            v454 = a2 + v452;
            v455 = *(a2 + v452 + 24);

            if (v455)
            {
              *(v453 + 3) = v455;
              *(v453 + 4) = *(v454 + 4);
              (**(v455 - 8))(v453, v454, v455);
            }

            else
            {
              v456 = *v454;
              v457 = *(v454 + 1);
              *(v453 + 4) = *(v454 + 4);
              *v453 = v456;
              *(v453 + 1) = v457;
            }

            *(a1 + v49[8]) = *(a2 + v49[8]);
            v458 = swift_getAssociatedTypeWitness();
            type metadata accessor for RCHFlowSharedData(255, v458, v459, v460);
            sub_1DD0DE97C();
            v461 = swift_getTupleTypeMetadata2();
            *(a1 + *(v461 + 48)) = *(a2 + *(v461 + 48));
            sub_1DD0DCF8C();
          case 5u:
            v55 = sub_1DD0DB04C();
            (*(*(v55 - 8) + 16))(a1, a2, v55);
            v56 = type metadata accessor for Input(0);
            v57 = v56[5];
            v58 = a1 + v57;
            v59 = a2 + v57;
            v60 = type metadata accessor for Parse(0);
            switch(swift_getEnumCaseMultiPayload())
            {
              case 0u:
                v61 = sub_1DD0DC76C();
                (*(*(v61 - 8) + 16))(v58, v59, v61);
                goto LABEL_203;
              case 1u:
                v237 = sub_1DD0DC76C();
                (*(*(v237 - 8) + 16))(v58, v59, v237);
                v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
                *&v58[*(v238 + 48)] = *&v59[*(v238 + 48)];
                sub_1DD0DCF8C();
              case 2u:
                *v58 = *v59;
                *(v58 + 1) = *(v59 + 1);
                *(v58 + 2) = *(v59 + 2);

                goto LABEL_203;
              case 3u:
                *v58 = *v59;
                swift_unknownObjectRetain();
                goto LABEL_203;
              case 4u:
                v163 = sub_1DD0DB1EC();
                (*(*(v163 - 8) + 16))(v58, v59, v163);
                goto LABEL_203;
              case 5u:
                v265 = *v59;
                *v58 = *v59;
                v266 = v265;
                goto LABEL_203;
              case 6u:
                v267 = sub_1DD0DB4BC();
                (*(*(v267 - 8) + 16))(v58, v59, v267);
                __dstp = type metadata accessor for USOParse(0);
                v268 = __dstp[5];
                v269 = sub_1DD0DB3EC();
                if (__swift_getEnumTagSinglePayload(&v59[v268], 1, v269))
                {
                  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&v58[v268], &v59[v268], *(*(v270 - 8) + 64));
                }

                else
                {
                  (*(*(v269 - 8) + 16))(&v58[v268], &v59[v268], v269);
                  __swift_storeEnumTagSinglePayload(&v58[v268], 0, 1, v269);
                }

                v409 = __dstp[6];
                v410 = &v58[v409];
                v411 = &v59[v409];
                *v410 = *v411;
                *(v410 + 1) = *(v411 + 1);
                v412 = __dstp[7];
                v413 = &v58[v412];
                v414 = &v59[v412];
                v415 = *v414;
                v413[4] = v414[4];
                *v413 = v415;

                goto LABEL_203;
              case 7u:
                v214 = sub_1DD0DB4BC();
                (*(*(v214 - 8) + 16))(v58, v59, v214);
                __dstm = type metadata accessor for USOParse(0);
                v215 = __dstm[5];
                v216 = sub_1DD0DB3EC();
                if (__swift_getEnumTagSinglePayload(&v59[v215], 1, v216))
                {
                  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&v58[v215], &v59[v215], *(*(v217 - 8) + 64));
                }

                else
                {
                  (*(*(v216 - 8) + 16))(&v58[v215], &v59[v215], v216);
                  __swift_storeEnumTagSinglePayload(&v58[v215], 0, 1, v216);
                }

                v360 = __dstm[6];
                v361 = &v58[v360];
                v362 = &v59[v360];
                *v361 = *v362;
                *(v361 + 1) = *(v362 + 1);
                v363 = __dstm[7];
                v364 = &v58[v363];
                v365 = &v59[v363];
                v366 = *v365;
                v364[4] = v365[4];
                *v364 = v366;
                v367 = type metadata accessor for LinkParse(0);
                v368 = v367[5];
                v369 = &v58[v368];
                v370 = &v59[v368];
                *v369 = *v370;
                *(v369 + 1) = *(v370 + 1);
                v371 = v367[6];
                v372 = &v58[v371];
                v373 = &v59[v371];
                *v372 = *v373;
                *(v372 + 1) = *(v373 + 1);
                v374 = v367[7];
                v375 = &v58[v374];
                v376 = &v59[v374];
                *v375 = *v376;
                *(v375 + 1) = *(v376 + 1);

                goto LABEL_203;
              case 8u:
                v278 = sub_1DD0DD12C();
                (*(*(v278 - 8) + 16))(v58, v59, v278);
                v279 = type metadata accessor for NLRouterParse(0);
                v280 = *(v279 + 20);
                v281 = &v58[v280];
                v282 = &v59[v280];
                *v281 = *v282;
                *(v281 + 1) = *(v282 + 1);
                v283 = *(v279 + 24);
                v518 = v279;
                __dstq = &v58[v283];
                v284 = &v59[v283];
                v285 = type metadata accessor for USOParse(0);

                if (__swift_getEnumTagSinglePayload(v284, 1, v285))
                {
                  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
                  memcpy(__dstq, v284, *(*(v286 - 8) + 64));
                }

                else
                {
                  v416 = sub_1DD0DB4BC();
                  (*(*(v416 - 8) + 16))(__dstq, v284, v416);
                  v506 = v285;
                  v417 = *(v285 + 20);
                  v418 = sub_1DD0DB3EC();
                  v512 = v284;
                  v419 = &v284[v417];
                  v420 = v418;
                  if (__swift_getEnumTagSinglePayload(v419, 1, v418))
                  {
                    v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                    memcpy(&__dstq[v417], &v512[v417], *(*(v421 - 8) + 64));
                  }

                  else
                  {
                    (*(*(v420 - 8) + 16))(&__dstq[v417], &v512[v417], v420);
                    __swift_storeEnumTagSinglePayload(&__dstq[v417], 0, 1, v420);
                  }

                  v481 = *(v506 + 24);
                  v482 = &__dstq[v481];
                  v483 = &v512[v481];
                  *v482 = *v483;
                  *(v482 + 1) = *(v483 + 1);
                  v484 = *(v506 + 28);
                  v485 = &__dstq[v484];
                  v486 = &v512[v484];
                  v487 = *v486;
                  v485[4] = v486[4];
                  *v485 = v487;

                  __swift_storeEnumTagSinglePayload(__dstq, 0, 1, v506);
                }

                v488 = *(v518 + 28);
                v489 = *&v59[v488];
                *&v58[v488] = v489;
                v490 = v489;
                goto LABEL_203;
              case 9u:
                v190 = sub_1DD0DD08C();
                (*(*(v190 - 8) + 16))(v58, v59, v190);
LABEL_203:
                swift_storeEnumTagMultiPayload();
                break;
              default:
                memcpy(v58, v59, *(*(v60 - 8) + 64));
                break;
            }

            *(a1 + v56[6]) = *(a2 + v56[6]);
            v491 = v56[7];
            v492 = a1 + v491;
            v493 = a2 + v491;
            v494 = *(a2 + v491 + 24);

            if (v494)
            {
              *(v492 + 3) = v494;
              *(v492 + 4) = *(v493 + 4);
              (**(v494 - 8))(v492, v493, v494);
            }

            else
            {
              v495 = *v493;
              v496 = *(v493 + 1);
              *(v492 + 4) = *(v493 + 4);
              *v492 = v495;
              *(v492 + 1) = v496;
            }

            *(a1 + v56[8]) = *(a2 + v56[8]);
            v497 = swift_getAssociatedTypeWitness();
            type metadata accessor for RCHFlowSharedData(255, v497, v498, v499);
            sub_1DD0DE97C();
            v500 = swift_getTupleTypeMetadata2();
            *(a1 + *(v500 + 48)) = *(a2 + *(v500 + 48));
            sub_1DD0DCF8C();
          case 6u:
            *a1 = *a2;
            a1[1] = a2[1];
            sub_1DD0DCF8C();
          case 7u:
            *a1 = *a2;
            sub_1DD0DCF8C();
          case 8u:
            *a1 = *a2;
            a1[1] = a2[1];
            a1[2] = a2[2];
            sub_1DD0DCF8C();
          case 9u:
            *a1 = *a2;
            a1[1] = a2[1];
            sub_1DD0DCF8C();
          case 0xAu:
            v62 = *a2;
            v63 = a2[1];
            v64 = a2[2];
            sub_1DCB72E48(v62, v63, v64);
            *a1 = v62;
            a1[1] = v63;
            a1[2] = v64;
            goto LABEL_208;
          case 0xBu:
            v46 = *a2;
            v47 = v46;
            *a1 = v46;
LABEL_208:
            swift_storeEnumTagMultiPayload();
            return a1;
          default:
            v17 = *(v19 + 64);
            goto LABEL_9;
        }
      }

      return a1;
    }

    (*(*(v7 - 8) + 8))(a1, v7);
  }

  v17 = *(*(a3 - 8) + 64);
LABEL_9:

  return memcpy(a1, a2, v17);
}