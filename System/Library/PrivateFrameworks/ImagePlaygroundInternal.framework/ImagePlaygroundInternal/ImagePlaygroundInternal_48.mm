void sub_1D27B5714(void *a1@<X8>)
{
  type metadata accessor for Bubble(0);

  sub_1D26BC35C(a1);
}

unint64_t sub_1D27B5784()
{
  result = qword_1EC6D7E18;
  if (!qword_1EC6D7E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6E1DE0, &qword_1D28A62D0);
    sub_1D27AFFF0(&qword_1ED8A5240, type metadata accessor for BubbleView, &unk_1D289D388);
    sub_1D22BB9D8(&qword_1ED89D348, &unk_1EC6E1DF0, &qword_1D2884870, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7E18);
  }

  return result;
}

uint64_t sub_1D27B597C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for PromptView(0);
  v6 = v5[5];
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
  swift_storeEnumTagMultiPayload();
  v7 = v5[6];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBE98, &qword_1D288A9C0);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v5[7];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = v5[8];
  *(a3 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40, &qword_1D2880030);
  swift_storeEnumTagMultiPayload();
  v10 = a3 + v5[10];
  sub_1D27B5BB8();
  sub_1D28742E8();
  *v10 = v13;
  *(v10 + 8) = *(&v13 + 1);
  *(v10 + 16) = v14;
  v11 = a3 + v5[11];
  sub_1D28772F8();
  *v11 = v13;
  *(v11 + 16) = v14;
  type metadata accessor for PromptViewModel(0);
  sub_1D27B9E38(&qword_1ED8A38E0, type metadata accessor for PromptViewModel, &unk_1D28A5D2C);
  sub_1D2877638();
  return sub_1D22EC9BC(a2, a3 + v5[9], &qword_1EC6D9C10, &qword_1D287FB60);
}

uint64_t type metadata accessor for PromptView(uint64_t a1)
{
  result = qword_1ED8A4FA0;
  if (!qword_1ED8A4FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D27B5BB8()
{
  result = qword_1ED8A1E28;
  if (!qword_1ED8A1E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A1E28);
  }

  return result;
}

void sub_1D27B5C34(uint64_t a1)
{
  sub_1D27B5E50(319, &qword_1ED89D068, type metadata accessor for PromptViewModel, MEMORY[0x1E6981AA0]);
  if (v1 <= 0x3F)
  {
    sub_1D22EAE8C(319);
    if (v2 <= 0x3F)
    {
      sub_1D27B5E50(319, &qword_1ED89DFD8, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1D27B5F54(319, &qword_1ED89E040, &type metadata for CreationViewStyle, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1D27B5E50(319, &qword_1ED89DFE8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1D27B5E50(319, &qword_1ED89DE60, MEMORY[0x1E697E730], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1D27B5EB4(319);
              if (v7 <= 0x3F)
              {
                sub_1D27B5F54(319, &qword_1ED89D1A0, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
                if (v8 <= 0x3F)
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

void sub_1D27B5E50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D27B5EB4(uint64_t a1)
{
  if (!qword_1ED89E0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E08, &qword_1D28A6410);
    sub_1D27B9820(&qword_1ED8A1E18, sub_1D27B5BB8, MEMORY[0x1E69E7C78]);
    v1 = sub_1D28742F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED89E0C0);
    }
  }
}

void sub_1D27B5F54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D27B5FC0@<X0>(uint64_t a1@<X8>)
{
  v164 = a1;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40, &unk_1D289B180);
  MEMORY[0x1EEE9AC00](v163);
  v162 = &v121 - v2;
  v167 = type metadata accessor for PromptView(0);
  v158 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v170 = v3;
  v161 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v155 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_1D28714D8();
  v152 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v153 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for PhotoSharingConfirmationParams(0);
  MEMORY[0x1EEE9AC00](v148);
  v151 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v150 = &v121 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58, &qword_1D287FE70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v122 = &v121 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v127 = &v121 - v13;
  v132 = sub_1D2878048();
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v143 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v166 = &v121 - v16;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50, &qword_1D28A6470);
  MEMORY[0x1EEE9AC00](v160);
  v18 = &v121 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E10, &qword_1D28A6478);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v121 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E00, &unk_1D28A63E8);
  v171 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v121 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E18, &qword_1D28A6480);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v121 - v26;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E20, &qword_1D28A6488);
  MEMORY[0x1EEE9AC00](v128);
  v130 = &v121 - v28;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E28, &qword_1D28A6490);
  MEMORY[0x1EEE9AC00](v129);
  v133 = &v121 - v29;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E30, &qword_1D28A6498);
  MEMORY[0x1EEE9AC00](v136);
  v134 = &v121 - v30;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E38, &qword_1D28A64A0);
  v137 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v135 = &v121 - v31;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E40, &qword_1D28A64A8);
  v142 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v138 = &v121 - v32;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E48, &qword_1D28A64B0);
  v145 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v141 = &v121 - v33;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E50, &qword_1D28A64B8);
  MEMORY[0x1EEE9AC00](v139);
  v146 = &v121 - v34;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E58, &qword_1D28A64C0);
  MEMORY[0x1EEE9AC00](v168);
  v149 = &v121 - v35;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E60, &qword_1D28A64C8);
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v169 = &v121 - v36;
  sub_1D2877628();
  swift_getKeyPath();
  v126 = v21;
  sub_1D2877648();

  (*(v171 + 8))(v24, v22);
  v37 = v22;
  v38 = v1;
  sub_1D2877618();
  v39 = *&v180[0];
  swift_getKeyPath();
  *&v180[0] = v39;
  v171 = sub_1D27B9E38(&qword_1ED8A38E0, type metadata accessor for PromptViewModel, &unk_1D28A5D2C);
  sub_1D28719E8();

  v40 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__prompt;
  swift_beginAccess();
  sub_1D22BD1D0(v39 + v40, v18, &qword_1EC6E1D50, &qword_1D28A6470);
  sub_1D27A1A0C();
  LOBYTE(v40) = v41;
  v159 = v18;
  sub_1D22BD238(v18, &qword_1EC6E1D50, &qword_1D28A6470);
  if (v40)
  {

    v124 = 0;
  }

  else
  {
    swift_getKeyPath();
    *&v180[0] = v39;
    sub_1D28719E8();

    v42 = *(v39 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__submitRequested);

    v124 = v42 ^ 1;
  }

  sub_1D27B7814(v166);
  v43 = v37;
  v44 = v38;
  sub_1D2877618();
  v45 = *&v180[0];
  swift_getKeyPath();
  *&v180[0] = v45;
  sub_1D28719E8();

  v46 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__currentStyle;
  swift_beginAccess();
  v47 = v45 + v46;
  v48 = v127;
  sub_1D22BD1D0(v47, v127, &qword_1EC6D9A30, &qword_1D287EFC0);

  v49 = sub_1D2872008();
  v50 = *(v49 - 8);
  v51 = (*(v50 + 48))(v48, 1, v49);
  v52 = 0;
  v165 = 0;
  v53 = v167;
  v125 = v50;
  if (!v51)
  {
    v54 = v122;
    sub_1D2871F58();
    v55 = sub_1D2871F38();
    v56 = (*(*(v55 - 8) + 48))(v54, 1, v55);
    v52 = 0;
    v57 = 0;
    if (!v56)
    {
      v52 = sub_1D2871F28();
    }

    v165 = v57;
    sub_1D22BD238(v54, &qword_1EC6D9D58, &qword_1D287FE70);
  }

  v123 = v49;
  sub_1D22BD238(v48, &qword_1EC6D9A30, &qword_1D287EFC0);
  sub_1D2877618();
  v58 = v43;
  v59 = *&v180[0];
  sub_1D2877618();
  v60 = *&v180[0];
  sub_1D22BD1D0(v44 + *(v53 + 36), &v27[v25[12]], &qword_1EC6D9C10, &qword_1D287FB60);
  v127 = v58;
  sub_1D2877618();
  v61 = *&v180[0];
  swift_getKeyPath();
  v62 = v44;
  *&v180[0] = v61;
  sub_1D28719E8();

  v63 = *(v61 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isInEmojiPickerMode);

  sub_1D22EC9BC(v126, v27, &qword_1EC6E1E10, &qword_1D28A6478);
  v27[v25[7]] = v124 & 1;
  (*(v131 + 32))(&v27[v25[8]], v166, v132);
  v64 = &v27[v25[9]];
  v65 = v165;
  *v64 = v52;
  v64[1] = v65;
  v66 = &v27[v25[10]];
  *v66 = sub_1D27B91B4;
  v66[1] = v59;
  v67 = &v27[v25[11]];
  *v67 = sub_1D27B91B8;
  v67[1] = v60;
  *&v27[v25[13]] = 100;
  v27[v25[14]] = v63;
  v68 = &v27[v25[15]];
  *v68 = swift_getKeyPath();
  v68[8] = 0;
  v69 = v130;
  sub_1D22EC9BC(v27, v130, &qword_1EC6E1E18, &qword_1D28A6480);
  *(v69 + *(v128 + 36)) = 256;
  sub_1D27B7F58(v180);
  LOBYTE(v172) = 0;
  sub_1D28772F8();
  LOBYTE(v68) = v175;
  v70 = v176;
  v71 = v133;
  sub_1D22EC9BC(v69, v133, &qword_1EC6E1E20, &qword_1D28A6488);
  v72 = v71 + *(v129 + 36);
  v73 = v180[3];
  *(v72 + 32) = v180[2];
  *(v72 + 48) = v73;
  *(v72 + 64) = v180[4];
  v74 = v180[1];
  *v72 = v180[0];
  *(v72 + 16) = v74;
  *(v72 + 80) = v68;
  *(v72 + 81) = *v179;
  *(v72 + 84) = *&v179[3];
  *(v72 + 88) = v70;
  v75 = v150;
  v166 = v62;
  sub_1D27B8324(v150);
  v76 = v151;
  sub_1D27B9450(v75, v151, type metadata accessor for PhotoSharingConfirmationParams);
  v77 = v136;
  v78 = v134;
  v79 = &v134[*(v136 + 36)];
  sub_1D27B9450(v76, v79, type metadata accessor for PhotoSharingConfirmationParams);
  v80 = v79 + *(type metadata accessor for PhotoSharingConfirmationViewModifier(0) + 20);
  (*(v125 + 16))(v80, v76, v123);
  v81 = (v76 + v148[5]);
  v82 = *v81;
  v83 = v81[1];
  LOBYTE(v69) = *(v76 + v148[6]);
  LOBYTE(v59) = *(v76 + v148[7]);
  v84 = type metadata accessor for PhotoSharingViewConfiguration(0);
  v85 = (v80 + v84[5]);
  *v85 = v82;
  v85[1] = v83;
  *(v80 + v84[6]) = v69;
  *(v80 + v84[7]) = v59;
  sub_1D2870F68();
  sub_1D2877FE8();
  if (qword_1ED89E0F0 != -1)
  {
    swift_once();
  }

  v86 = v154;
  v87 = __swift_project_value_buffer(v154, qword_1ED8B0060);
  (*(v152 + 2))(v153, v87, v86);
  sub_1D28718C8();
  sub_1D2871508();
  sub_1D27B91BC(v76);
  sub_1D27B91BC(v75);
  sub_1D22EC9BC(v71, v78, &qword_1EC6E1E28, &qword_1D28A6490);
  v88 = (v166 + *(v167 + 40));
  LODWORD(v167) = *v88;
  v165 = *(v88 + 1);
  LODWORD(v155) = v88[16];
  LOBYTE(v175) = v167;
  v176 = v165;
  LOBYTE(v177) = v155;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E68, &qword_1D28A6570);
  sub_1D28742C8();
  v175 = v172;
  v176 = v173;
  LOBYTE(v177) = v174;
  LOBYTE(v172) = 0;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E08, &qword_1D28A6410);
  v90 = v78;
  v91 = sub_1D27B9218();
  v92 = sub_1D27B9820(&qword_1ED8A1E18, sub_1D27B5BB8, MEMORY[0x1E69E7C78]);
  v93 = v135;
  v154 = v89;
  sub_1D2876EA8();

  sub_1D22BD238(v90, &qword_1EC6E1E30, &qword_1D28A6498);
  v94 = sub_1D28740A8();
  v175 = v77;
  v176 = v89;
  v177 = v91;
  v178 = v92;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v96 = v138;
  v97 = v140;
  sub_1D28766F8();
  (*(v137 + 8))(v93, v97);
  swift_getKeyPath();
  LOBYTE(v172) = 0;
  v175 = v97;
  v176 = v94;
  v177 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v98 = v141;
  v99 = v144;
  sub_1D28768D8();

  (*(v142 + 8))(v96, v99);
  v100 = v166;
  v101 = v161;
  sub_1D27B9450(v166, v161, type metadata accessor for PromptView);
  v102 = (*(v158 + 80) + 16) & ~*(v158 + 80);
  v103 = swift_allocObject();
  sub_1D27B94B8(v101, v103 + v102);
  v104 = v146;
  (*(v145 + 32))(v146, v98, v147);
  v105 = (v104 + *(v139 + 36));
  *v105 = sub_1D27B951C;
  v105[1] = v103;
  v105[2] = 0;
  v105[3] = 0;
  v152 = type metadata accessor for PromptView;
  sub_1D27B9450(v100, v101, type metadata accessor for PromptView);
  v106 = swift_allocObject();
  sub_1D27B94B8(v101, v106 + v102);
  v107 = v149;
  sub_1D229E370(v104, v149);
  v108 = (v107 + *(v168 + 36));
  *v108 = 0;
  v108[1] = 0;
  v108[2] = sub_1D27B9534;
  v108[3] = v106;
  LOBYTE(v175) = v167;
  v176 = v165;
  LOBYTE(v177) = v155;
  sub_1D28742A8();
  sub_1D27B9450(v100, v101, type metadata accessor for PromptView);
  v109 = swift_allocObject();
  sub_1D27B94B8(v101, v109 + v102);
  v167 = sub_1D27B95CC();
  v165 = sub_1D27B9820(&qword_1ED8A1E10, sub_1D245C9B0, MEMORY[0x1E69E7C80]);
  v110 = v154;
  sub_1D2876F48();

  sub_1D229E3E0(v107);
  v111 = v100;
  sub_1D2877618();
  v112 = v175;
  swift_getKeyPath();
  v175 = v112;
  sub_1D28719E8();

  v113 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__prompt;
  swift_beginAccess();
  v114 = v112 + v113;
  v115 = v159;
  sub_1D22BD1D0(v114, v159, &qword_1EC6E1D50, &qword_1D28A6470);

  v116 = v162;
  sub_1D22BD1D0(v115 + *(v160 + 28), v162, &unk_1EC6E1D40, &unk_1D289B180);
  sub_1D22BD238(v115, &qword_1EC6E1D50, &qword_1D28A6470);
  sub_1D27B9450(v111, v101, v152);
  v117 = swift_allocObject();
  sub_1D27B94B8(v101, v117 + v102);
  v175 = v168;
  v176 = v110;
  v177 = v167;
  v178 = v165;
  swift_getOpaqueTypeConformance2();
  sub_1D27B9918();
  v118 = v157;
  v119 = v169;
  sub_1D2876F48();

  sub_1D22BD238(v116, &unk_1EC6E1D40, &unk_1D289B180);
  return (*(v156 + 8))(v119, v118);
}

uint64_t sub_1D27B7814@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = sub_1D2875628();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v48 = (&v39 - v5);
  v47 = sub_1D2874E88();
  v6 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58, &qword_1D287FE70);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v45 = &v39 - v13;
  v46 = sub_1D2871F38();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v40 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v39 - v16;
  v18 = sub_1D2872008();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E00, &unk_1D28A63E8);
  v49 = v1;
  sub_1D2877618();
  v22 = v51;
  swift_getKeyPath();
  v51 = v22;
  sub_1D27B9E38(&qword_1ED8A38E0, type metadata accessor for PromptViewModel, &unk_1D28A5D2C);
  sub_1D28719E8();

  v23 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__currentStyle;
  swift_beginAccess();
  sub_1D22BD1D0(v22 + v23, v17, &qword_1EC6D9A30, &qword_1D287EFC0);

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1D22BD238(v17, &qword_1EC6D9A30, &qword_1D287EFC0);
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    if (sub_1D2871F78())
    {
      v24 = v45;
      sub_1D2871F58();
      v25 = v44;
      v26 = v46;
      if ((*(v44 + 48))(v24, 1, v46) == 1)
      {
        sub_1D22BD238(v24, &qword_1EC6D9D58, &qword_1D287FE70);
      }

      else
      {
        v37 = v40;
        (*(v25 + 32))(v40, v24, v26);
        sub_1D2871ED8();
        (*(v25 + 8))(v37, v26);
      }

      sub_1D2878058();
      return (*(v19 + 8))(v21, v18);
    }

    (*(v19 + 8))(v21, v18);
  }

  v27 = type metadata accessor for PromptView(0);
  v28 = v49;
  sub_1D24CC284(v11);
  v29 = v48;
  sub_1D24CC0C4(v48);
  v30 = v47;
  (*(v6 + 104))(v8, *MEMORY[0x1E697E6C8], v47);
  v31 = sub_1D27E00AC(v11, v8, v29);
  v32 = *(v6 + 8);
  v32(v8, v30);
  sub_1D22BD238(v29, &qword_1EC6D99B8, &unk_1D287E890);
  v32(v11, v30);
  if ((v31 & 1) == 0)
  {
    v33 = v28 + *(v27 + 28);
    v34 = *v33;
    if (*(v33 + 8) != 1)
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v35 = sub_1D28762E8();
      sub_1D2873BE8();

      v36 = v41;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22EE66C(v34, 0);
      (*(v42 + 8))(v36, v43);
    }
  }

  return sub_1D2877FE8();
}

void *sub_1D27B7F58@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E00, &unk_1D28A63E8);
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58, &qword_1D287FE70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_1D2871F38();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D2872008();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v1;
  sub_1D2877618();

  sub_1D2871EC8();
  sub_1D2871F58();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D22BD238(v7, &qword_1EC6D9D58, &qword_1D287FE70);
    v27 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v27 = sub_1D2871ED8();
    v16 = v17;
    (*(v9 + 8))(v11, v8);
  }

  (*(v13 + 8))(v15, v12);
  sub_1D2877618();
  sub_1D27AE638();
  v19 = v18;

  v20 = v28;
  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  (*(v29 + 8))(v20, v3);
  v21 = v32;
  v22 = v33;
  v23 = v34;
  sub_1D2877618();
  v24 = v31;
  result = sub_1D2877618();
  v26 = v31;
  *a1 = v27;
  *(a1 + 8) = v16;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  *(a1 + 32) = v22;
  *(a1 + 40) = v23;
  *(a1 + 48) = sub_1D27B9E2C;
  *(a1 + 56) = v24;
  *(a1 + 64) = sub_1D27B9E30;
  *(a1 + 72) = v26;
  return result;
}

int *sub_1D27B8324@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PromptView(0);
  v38 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = v4;
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E00, &unk_1D28A63E8);
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_1D2872008();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v1;
  sub_1D2877618();
  v14 = v45;
  swift_getKeyPath();
  v45 = v14;
  sub_1D27B9E38(&qword_1ED8A38E0, type metadata accessor for PromptViewModel, &unk_1D28A5D2C);
  sub_1D28719E8();

  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__currentStyle;
  swift_beginAccess();
  sub_1D22BD1D0(v14 + v15, v10, &qword_1EC6D9A30, &qword_1D287EFC0);

  v16 = *(v12 + 48);
  v17 = v16(v10, 1, v11);
  v35 = v11;
  if (v17 == 1)
  {
    sub_1D2871EC8();
    if (v16(v10, 1, v11) != 1)
    {
      sub_1D22BD238(v10, &qword_1EC6D9A30, &qword_1D287EFC0);
    }
  }

  else
  {
    (*(v12 + 32))(v41, v10, v11);
  }

  v18 = v36;
  sub_1D2877618();
  v19 = v42;
  swift_getKeyPath();
  v42 = v19;
  sub_1D28719E8();

  v21 = *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingPersonName);
  v20 = *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingPersonName + 8);
  sub_1D2870F68();

  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  (*(v37 + 8))(v7, v5);
  v22 = v42;
  v23 = v43;
  v24 = v44;
  v25 = v18;
  v26 = v40;
  sub_1D27B9450(v25, v40, type metadata accessor for PromptView);
  v27 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v28 = swift_allocObject();
  sub_1D27B94B8(v26, v28 + v27);
  (*(v12 + 32))(a1, v41, v35);
  result = type metadata accessor for PhotoSharingConfirmationParams(0);
  v30 = (a1 + result[5]);
  *v30 = v21;
  v30[1] = v20;
  *(a1 + result[6]) = 1;
  *(a1 + result[7]) = 0;
  v31 = a1 + result[8];
  *v31 = v22;
  *(v31 + 8) = v23;
  *(v31 + 16) = v24;
  v32 = (a1 + result[9]);
  *v32 = sub_1D27B9DA0;
  v32[1] = v28;
  v33 = (a1 + result[10]);
  *v33 = 0;
  v33[1] = 0;
  return result;
}

double sub_1D27B8844(uint64_t a1)
{
  v2 = type metadata accessor for PromptView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E00, &unk_1D28A63E8);
  sub_1D2877618();
  v5 = v17;
  sub_1D27B9450(a1, &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PromptView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1D27B94B8(&v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6);
  swift_getKeyPath();
  v14 = v5;
  v15 = sub_1D27B99CC;
  v16 = v7;
  v17 = v5;
  sub_1D27B9E38(&qword_1ED8A38E0, type metadata accessor for PromptViewModel, &unk_1D28A5D2C);
  sub_1D28719D8();

  sub_1D2877618();
  v8 = v17;
  sub_1D2877618();
  v9 = sub_1D27A81C8();

  swift_getKeyPath();
  v17 = v8;
  sub_1D28719E8();

  v10 = *(v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
  if (v10)
  {
    v11 = *(v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState + 8);
    sub_1D2870F78();
    v10(v9 & 1);

    sub_1D22D7900(v10, v11);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1D27B8AE8(char a1, uint64_t a2)
{
  type metadata accessor for PromptView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E68, &qword_1D28A6570);
  return sub_1D28742B8();
}

double sub_1D27B8B6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E00, &unk_1D28A63E8);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D27B9E38(&qword_1ED8A38E0, type metadata accessor for PromptViewModel, &unk_1D28A5D2C);
  sub_1D28719D8();

  sub_1D2877618();
  sub_1D27A11B4(0);

  return result;
}

double sub_1D27B8C94(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E00, &unk_1D28A63E8);
  sub_1D2877618();
  sub_1D27A8294(v2 == 0);

  return result;
}

uint64_t sub_1D27B8CF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50, &qword_1D28A6470);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E00, &unk_1D28A63E8);
  sub_1D2877618();
  sub_1D2877618();
  v3 = v7;
  swift_getKeyPath();
  v7 = v3;
  sub_1D27B9E38(&qword_1ED8A38E0, type metadata accessor for PromptViewModel, &unk_1D28A5D2C);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__prompt;
  swift_beginAccess();
  sub_1D22BD1D0(v3 + v4, v2, &qword_1EC6E1D50, &qword_1D28A6470);

  sub_1D27A85F4();

  return sub_1D22BD238(v2, &qword_1EC6E1D50, &qword_1D28A6470);
}

void sub_1D27B8E84()
{
  v0 = sub_1D23C7CA8();
  v1 = sub_1D2878068();
  v8 = sub_1D2878068();
  v2 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v0 + 48))
  {
    sub_1D2870F68();
    v3 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E8054(v3, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  v5 = sub_1D2878068();
  v6 = sub_1D2418030(v2);

  if (v6)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22ED23C();
    sub_1D27B9E38(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey, &unk_1D287E68C);
    v7 = sub_1D2877E78();
  }

  else
  {
    v7 = 0;
  }

  [objc_opt_self() asyncSendSignal:v8 toChannel:v1 withNullableUniqueStringID:v5 withPayload:v7];
}

double sub_1D27B9064()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E00, &unk_1D28A63E8);
  sub_1D2877618();
  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingConfirmed) == 1)
  {
    *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingConfirmed) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D27B9E38(&qword_1ED8A38E0, type metadata accessor for PromptViewModel, &unk_1D28A5D2C);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D27B91BC(uint64_t a1)
{
  v2 = type metadata accessor for PhotoSharingConfirmationParams(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D27B9218()
{
  result = qword_1ED89D958;
  if (!qword_1ED89D958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E30, &qword_1D28A6498);
    sub_1D27B92D4();
    sub_1D27B9E38(qword_1ED89E730, type metadata accessor for PhotoSharingConfirmationViewModifier, &unk_1D288D058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D958);
  }

  return result;
}

unint64_t sub_1D27B92D4()
{
  result = qword_1ED89DB20;
  if (!qword_1ED89DB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E28, &qword_1D28A6490);
    sub_1D27B9360();
    sub_1D26B5C4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DB20);
  }

  return result;
}

unint64_t sub_1D27B9360()
{
  result = qword_1ED89DE10;
  if (!qword_1ED89DE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E20, &qword_1D28A6488);
    sub_1D27B93EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DE10);
  }

  return result;
}

unint64_t sub_1D27B93EC()
{
  result = qword_1ED8A3A08[0];
  if (!qword_1ED8A3A08[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E18, &qword_1D28A6480);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8A3A08);
  }

  return result;
}

uint64_t sub_1D27B9450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D27B94B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1D27B954C(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for PromptView(0);

  return sub_1D27B8C94(a1, a2);
}

unint64_t sub_1D27B95CC()
{
  result = qword_1ED89DA48;
  if (!qword_1ED89DA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E58, &qword_1D28A64C0);
    sub_1D27B9658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DA48);
  }

  return result;
}

unint64_t sub_1D27B9658()
{
  result = qword_1ED89DCA0;
  if (!qword_1ED89DCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E50, &qword_1D28A64B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E40, &qword_1D28A64A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E38, &qword_1D28A64A0);
    sub_1D28740A8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E30, &qword_1D28A6498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E08, &qword_1D28A6410);
    sub_1D27B9218();
    sub_1D27B9820(&qword_1ED8A1E18, sub_1D27B5BB8, MEMORY[0x1E69E7C78]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DCA0);
  }

  return result;
}

uint64_t sub_1D27B9820(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1E08, &qword_1D28A6410);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D27B9898()
{
  type metadata accessor for PromptView(0);

  return sub_1D27B8CF4();
}

unint64_t sub_1D27B9918()
{
  result = qword_1ED8A6CD0;
  if (!qword_1ED8A6CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6E1D40, &unk_1D289B180);
    sub_1D27B9E38(&qword_1ED8A6CE0, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A6CD0);
  }

  return result;
}

uint64_t sub_1D27B99CC(char a1)
{
  v3 = *(type metadata accessor for PromptView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D27B8AE8(a1, v4);
}

uint64_t objectdestroyTm_36()
{
  v1 = type metadata accessor for PromptView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1E00, &unk_1D28A63E8);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D2875E18();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v2 + v4, 1, v5))
    {
      (*(v6 + 8))(v2 + v4, v5);
    }
  }

  else
  {
  }

  v7 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBE98, &qword_1D288A9C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D2874E88();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  sub_1D22EE66C(*(v2 + v1[7]), *(v2 + v1[7] + 8));
  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40, &qword_1D2880030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D2874438();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  v11 = v1[9];
  v12 = sub_1D2874E88();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v2 + v11, 1, v12))
  {
    (*(v13 + 8))(v2 + v11, v12);
  }

  return swift_deallocObject();
}

uint64_t sub_1D27B9DB8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PromptView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1D27B9E38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D27B9E98(void *a1)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v39 - v9;
  v11 = MEMORY[0x1D38A3810](a1, v8);
  if (v11 != sub_1D2873CE8())
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1D2878138();
  v15 = xpc_dictionary_get_value(a1, (v14 + 32));

  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = MEMORY[0x1D38A3810](v15);
  if (sub_1D2873CD8() == v16)
  {
    v31 = sub_1D2878138();
    string = xpc_dictionary_get_string(a1, (v31 + 32));

    if (string)
    {
      v33 = sub_1D28781E8();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D287F500;
      *(v12 + 32) = v33;
      *(v12 + 40) = v35;
      swift_unknownObjectRelease();
      return v12;
    }

    sub_1D28726D8();
    v36 = sub_1D2873CA8();
    v37 = sub_1D2878A18();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1D226E000, v36, v37, "Failed to retrieve string value for country policy.", v38, 2u);
      MEMORY[0x1D38A3520](v38, -1, -1);
    }

    (*(v4 + 8))(v10, v3);
    goto LABEL_28;
  }

  if (sub_1D2873CC8() != v16)
  {
LABEL_28:
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  result = xpc_array_get_count(v15);
  if ((result & 0x8000000000000000) == 0)
  {
    v18 = result;
    v42 = v15;
    v39[1] = v1;
    if (result)
    {
      v41 = v3;
      v19 = 0;
      v20 = (v4 + 8);
      v12 = MEMORY[0x1E69E7CC0];
      *&v17 = 134217984;
      v40 = v17;
      do
      {
        v21 = v19;
        while (1)
        {
          if (v21 >= v18)
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v19 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_32;
          }

          if (xpc_array_get_string(v42, v21))
          {
            break;
          }

          sub_1D28726D8();
          v22 = sub_1D2873CA8();
          v23 = sub_1D2878A18();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            *v24 = v40;
            *(v24 + 4) = v21;
            _os_log_impl(&dword_1D226E000, v22, v23, "Failed to retrieve country policy at index [%ld]", v24, 0xCu);
            MEMORY[0x1D38A3520](v24, -1, -1);
          }

          result = (*v20)(v6, v41);
          ++v21;
          if (v19 == v18)
          {
            goto LABEL_30;
          }
        }

        v25 = sub_1D28781E8();
        v27 = v26;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D27CC674(0, *(v12 + 16) + 1, 1, v12);
          v12 = result;
        }

        v29 = *(v12 + 16);
        v28 = *(v12 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_1D27CC674((v28 > 1), v29 + 1, 1, v12);
          v12 = result;
        }

        *(v12 + 16) = v29 + 1;
        v30 = v12 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
      }

      while (v19 != v18);
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

LABEL_30:
    swift_unknownObjectRelease();
    return v12;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1D27BA2D4()
{
  v29 = *MEMORY[0x1E69E9840];
  v0 = sub_1D2873CB8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v27 = 0;
  v28 = 0;
  domain_answer = os_eligibility_get_domain_answer();
  v12 = v28;
  if (v27 == 4)
  {
    v13 = domain_answer;
    if (domain_answer == sub_1D2874198())
    {
      if (v12)
      {
        v14 = swift_unknownObjectRetain();
        v24 = sub_1D27B9E98(v14);
        swift_unknownObjectRelease_n();
        return v24;
      }

      sub_1D28726D8();
      v21 = sub_1D2873CA8();
      v22 = sub_1D2878A08();
      if (!os_log_type_enabled(v21, v22))
      {

        (*(v1 + 8))(v9, v0);
        return MEMORY[0x1E69E7CC0];
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D226E000, v21, v22, "No context found with country policy.", v23, 2u);
      MEMORY[0x1D38A3520](v23, -1, -1);

      (*(v1 + 8))(v9, v0);
    }

    else
    {
      sub_1D28726D8();
      v18 = sub_1D2873CA8();
      v19 = sub_1D2878A08();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 67240192;
        *(v20 + 4) = v13;
        _os_log_impl(&dword_1D226E000, v18, v19, "Unable to read country policy, status: %{public}d", v20, 8u);
        MEMORY[0x1D38A3520](v20, -1, -1);
      }

      (*(v1 + 8))(v6, v0);
    }
  }

  else
  {
    sub_1D28726D8();
    v15 = sub_1D2873CA8();
    v16 = sub_1D2878A08();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D226E000, v15, v16, "AI not available. Cannot get country policy.", v17, 2u);
      MEMORY[0x1D38A3520](v17, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }

  swift_unknownObjectRelease();
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D27BA78C(uint64_t a1, unint64_t a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  v3 = sub_1D2878068();
  [v2 setString_];

  sub_1D2878958();
  return 0;
}

uint64_t sub_1D27BA86C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (__OFADD__(*a4, 1))
  {
    __break(1u);
  }

  else
  {
    ++*a4;
    return 1;
  }

  return result;
}

uint64_t sub_1D27BA888()
{
  v1 = *(v0 + 16);
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v1;
    return 1;
  }

  return result;
}

unint64_t sub_1D27BA8BC()
{
  result = qword_1EC6E1E70;
  if (!qword_1EC6E1E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1E70);
  }

  return result;
}

uint64_t type metadata accessor for ImagePlaygroundStyleEntity(uint64_t a1)
{
  result = qword_1EC6E1ED0;
  if (!qword_1EC6E1ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D27BAA20()
{
  result = qword_1EC6E1E90;
  if (!qword_1EC6E1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1E90);
  }

  return result;
}

uint64_t sub_1D27BAA80()
{
  v0 = sub_1D2872008();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ImagePlaygroundStyleEntity(0);
  __swift_allocate_value_buffer(v4, qword_1EC6E3FA0);
  v5 = __swift_project_value_buffer(v4, qword_1EC6E3FA0);
  MEMORY[0x1D389AA70]();
  return (*(v1 + 32))(v5, v3, v0);
}

uint64_t sub_1D27BAB78@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDB00, &unk_1D2892C50);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v37 = &v33 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD958, &qword_1D2891E70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_1D2870EB8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1D2870EE8();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v33 - v15;
  v17 = sub_1D28714E8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v33 - v22;
  sub_1D27BB0D4();
  sub_1D28714C8();
  sub_1D24DD48C(v16);
  v24 = type metadata accessor for PlaygroundImage(0);
  if ((*(*(v24 - 8) + 48))(v16, 1, v24) == 1)
  {
    sub_1D22BD238(v16, &unk_1EC6DE5A0, &unk_1D287F0E0);
  }

  else
  {
    v34 = v10;
    v25 = sub_1D2873AA8();
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
    v26 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v13);
    v28 = v27;
    sub_1D22BD238(v13, &qword_1EC6DAE70, &qword_1D2881A90);
    sub_1D23D4DFC(v16);
    if (v28 >> 60 != 15)
    {
      sub_1D22D6CF8(v26, v28);
      sub_1D2870EA8();
      v33 = v26;
      v29 = v34;
      sub_1D2870EC8();
      (*(v18 + 16))(v20, v23, v17);
      (*(v18 + 56))(v5, 1, 1, v17);
      v31 = v36;
      v30 = v37;
      (*(v8 + 16))(v37, v29, v36);
      (*(v8 + 56))(v30, 0, 1, v31);
      sub_1D2870EF8();
      sub_1D22D6D4C(v33, v28);
      (*(v8 + 8))(v29, v31);
      return (*(v18 + 8))(v23, v17);
    }
  }

  (*(v18 + 16))(v20, v23, v17);
  (*(v18 + 56))(v5, 1, 1, v17);
  (*(v8 + 56))(v37, 1, 1, v36);
  sub_1D2870EF8();
  return (*(v18 + 8))(v23, v17);
}

uint64_t sub_1D27BB0D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58, &qword_1D287FE70);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - v4;
  v6 = sub_1D2871F38();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v14 - 8);
  if ((sub_1D2871F78() & 1) == 0)
  {
    return sub_1D24DCFF0();
  }

  sub_1D2877FE8();
  sub_1D28718C8();
  v15 = sub_1D28780E8();
  v17 = v16;
  if (sub_1D24DCFF0() == v15 && v18 == v17)
  {

LABEL_11:
    sub_1D2871F58();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1D22BD238(v5, &qword_1EC6D9D58, &qword_1D287FE70);
      return 0;
    }

    else
    {
      (*(v7 + 32))(v12, v5, v6);
      v25 = sub_1D2871ED8();
      (*(v7 + 8))(v12, v6);
      return v25;
    }
  }

  v20 = sub_1D2879618();

  if (v20)
  {
    goto LABEL_11;
  }

  v29 = sub_1D24DCFF0();
  v30 = v21;
  MEMORY[0x1D38A0C50](10272, 0xE200000000000000);
  sub_1D2871F58();
  if ((*(v7 + 48))(v2, 1, v6) == 1)
  {
    sub_1D22BD238(v2, &qword_1EC6D9D58, &qword_1D287FE70);
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {
    (*(v7 + 32))(v9, v2, v6);
    v26 = sub_1D2871ED8();
    v23 = v27;
    (*(v7 + 8))(v9, v6);
    v22 = v26;
  }

  MEMORY[0x1D38A0C50](v22, v23);

  MEMORY[0x1D38A0C50](41, 0xE100000000000000);
  return v29;
}

uint64_t sub_1D27BB55C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1D2871F98();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1D27BB5A4()
{
  result = qword_1EC6E1EB8;
  if (!qword_1EC6E1EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1EC0, &qword_1D28A68A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1EB8);
  }

  return result;
}

uint64_t sub_1D27BB608(uint64_t a1)
{
  v2 = sub_1D27BB7A4(&qword_1EC6DD978, &unk_1D28A6760);

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1D27BB6A8(uint64_t a1)
{
  v2 = sub_1D27BB7A4(&qword_1EC6E1EB0, &unk_1D28A6910);

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t sub_1D27BB738(uint64_t a1)
{
  result = sub_1D2872008();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D27BB7A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ImagePlaygroundStyleEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for CameraPickerView(uint64_t a1)
{
  result = qword_1ED8A35F0;
  if (!qword_1ED8A35F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D27BB864(uint64_t a1)
{
  sub_1D27BB940(319, &qword_1ED89D088, &unk_1EC6DE5A0, &unk_1D287F0E0, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    sub_1D27BB940(319, &qword_1ED89DFB8, &unk_1EC6E15F0, &unk_1D28A2D00, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D27BB940(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D27BB9A4(uint64_t a1)
{
  result = sub_1D27BBF70(qword_1ED8A3600, &unk_1D28A6A6C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D27BBA1C@<X0>(void *a1@<X8>)
{
  v3 = sub_1D2875628();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BC8, &qword_1D28A6AC0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for CameraPickerView(0);
  sub_1D22BD1D0(v1 + *(v10 + 20), v9, &qword_1EC6D9BC8, &qword_1D28A6AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1D27BBFB4(v9, a1);
  }

  sub_1D2878A28();
  v12 = sub_1D28762E8();
  sub_1D2873BE8();

  sub_1D2875618();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

id sub_1D27BBBF4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCAD0]) init];
  [v0 setSourceType_];
  [v0 setCameraDevice_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1EF0, &qword_1D28A6AC8);
  sub_1D28762D8();
  [v0 setDelegate_];

  return v0;
}

uint64_t sub_1D27BBC98@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E15F0, &unk_1D28A2D00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v13.receiver - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1600, &qword_1D28A2D20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  sub_1D22BD1D0(v1, &v13 - v7, &unk_1EC6E1600, &qword_1D28A2D20);
  sub_1D27BBA1C(v5);
  v9 = type metadata accessor for CameraPickerCoordinator(0);
  v10 = objc_allocWithZone(v9);
  sub_1D22BD1D0(v8, v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal23CameraPickerCoordinator__selectedImage, &unk_1EC6E1600, &qword_1D28A2D20);
  sub_1D22BD1D0(v5, v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal23CameraPickerCoordinator__presentationMode, &unk_1EC6E15F0, &unk_1D28A2D00);
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_1D22BD238(v5, &unk_1EC6E15F0, &unk_1D28A2D00);
  result = sub_1D22BD238(v8, &unk_1EC6E1600, &qword_1D28A2D20);
  *a1 = v11;
  return result;
}

uint64_t sub_1D27BBE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D27BBF70(&qword_1EC6E1EE8, &unk_1D28A69F4);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1D27BBEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D27BBF70(&qword_1EC6E1EE8, &unk_1D28A69F4);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1D27BBF2C(uint64_t a1)
{
  sub_1D27BBF70(&qword_1EC6E1EE8, &unk_1D28A69F4);
  sub_1D2876218();
  __break(1u);
}

uint64_t sub_1D27BBF70(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CameraPickerView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D27BBFB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E15F0, &unk_1D28A2D00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D27BC024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PromptTextField(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1D27BC0C0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1D2878838();
  if (!v19)
  {
    return sub_1D2878458();
  }

  v41 = v19;
  v45 = sub_1D2879298();
  v32 = sub_1D28792A8();
  sub_1D2879248();
  result = sub_1D2878818();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1D28788B8();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1D2879288();
      result = sub_1D2878878();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1D27BC4E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_1D2870F78();
  v3(a2);

  return result;
}

void sub_1D27BC534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PromptText(255, *(a1 + 16), a3, a4);
  sub_1D2877538();

  JUMPOUT(0x1D389FF60);
}

id sub_1D27BC580(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v102 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C10, &qword_1D287FB60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v109 = &v86 - v6;
  v7 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v108 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v107 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2874158();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v106 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D2873FA8();
  v104 = *(v13 - 8);
  v105 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v103 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D2878EA8();
  v16 = *(v15 - 8);
  v111 = v15;
  v112 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v90 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v86 - v19;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F20, &qword_1D28A6CE0);
  MEMORY[0x1EEE9AC00](v97);
  v22 = &v86 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F28, &qword_1D28A6CE8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v110 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v96 = &v86 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v86 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v86 - v31;
  v33 = sub_1D28740A8();
  v34 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v35 = v2 + *(a2 + 32);
  v98 = *(a2 + 16);
  v36 = sub_1D27BD2B8(v35);
  v99 = v37;
  v100 = v36;
  v38 = sub_1D2873F48();
  v101 = objc_opt_self();
  v39 = [v101 labelColor];
  [v38 setTintColor_];

  v40 = (v3 + *(a2 + 36));
  if (v40[1])
  {
    v89 = v40[1];
    v93 = v20;
    v94 = a2;
    v95 = v3;
    v86 = *v40;
    v91 = v34;
    v41 = sub_1D2873F48();
    sub_1D2878EC8();

    v92 = v33;
    sub_1D2874008();
    v43 = v111;
    v42 = v112;
    v44 = *(v112 + 56);
    v88 = v112 + 56;
    v87 = v44;
    v44(v29, 0, 1, v111);
    v45 = *(v97 + 48);
    sub_1D22BD1D0(v32, v22, &qword_1EC6E1F28, &qword_1D28A6CE8);
    sub_1D22BD1D0(v29, &v22[v45], &qword_1EC6E1F28, &qword_1D28A6CE8);
    v46 = *(v42 + 48);
    if (v46(v22, 1, v43) == 1)
    {
      sub_1D22BD238(v29, &qword_1EC6E1F28, &qword_1D28A6CE8);
      sub_1D22BD238(v32, &qword_1EC6E1F28, &qword_1D28A6CE8);
      v47 = v46(&v22[v45], 1, v43);
      v48 = v95;
      a2 = v94;
      if (v47 == 1)
      {
        sub_1D22BD238(v22, &qword_1EC6E1F28, &qword_1D28A6CE8);
        v20 = v93;
        v3 = v48;
        v34 = v91;
LABEL_9:
        sub_1D2878E28();
        v51 = a2;
        v52 = sub_1D2878068();
        v53 = [objc_opt_self() _systemImageNamed_];

        sub_1D2878E88();
        v54 = v90;
        sub_1D2874008();
        sub_1D2878E08();
        v55 = v112;
        v56 = *(v112 + 8);
        v57 = v54;
        v58 = v111;
        v56(v57, v111);
        sub_1D2878E18();
        v59 = sub_1D2873F48();
        v60 = *(v55 + 16);
        v61 = v110;
        v60(v110, v20, v58);
        v87(v61, 0, 1, v58);
        sub_1D2878ED8();

        a2 = v51;
        v56(v20, v58);
        goto LABEL_10;
      }
    }

    else
    {
      v49 = v96;
      sub_1D22BD1D0(v22, v96, &qword_1EC6E1F28, &qword_1D28A6CE8);
      if (v46(&v22[v45], 1, v43) != 1)
      {
        v20 = v93;
        (*(v42 + 32))(v93, &v22[v45], v43);
        sub_1D27C2FC8(&qword_1ED89CC28, MEMORY[0x1E69DC598], MEMORY[0x1E69DC5A0]);
        LODWORD(v97) = sub_1D2877F98();
        v50 = *(v42 + 8);
        v50(v20, v43);
        sub_1D22BD238(v29, &qword_1EC6E1F28, &qword_1D28A6CE8);
        sub_1D22BD238(v32, &qword_1EC6E1F28, &qword_1D28A6CE8);
        v50(v49, v43);
        sub_1D22BD238(v22, &qword_1EC6E1F28, &qword_1D28A6CE8);
        v3 = v95;
        a2 = v94;
        v34 = v91;
        if ((v97 & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      sub_1D22BD238(v29, &qword_1EC6E1F28, &qword_1D28A6CE8);
      sub_1D22BD238(v32, &qword_1EC6E1F28, &qword_1D28A6CE8);
      (*(v42 + 8))(v49, v43);
      v48 = v95;
      a2 = v94;
    }

    sub_1D22BD238(v22, &qword_1EC6E1F20, &qword_1D28A6CE0);
    v20 = v93;
    v3 = v48;
    v34 = v91;
  }

LABEL_10:
  v62 = v34;
  v63 = v101;
  v64 = v3;
  v65 = [v101 clearColor];
  [v62 setBackgroundColor_];

  swift_getWitnessTable();
  sub_1D28760C8();
  v66 = a2;
  sub_1D28760B8();
  type metadata accessor for PromptTextField.Coordinator(255, v98, v67, v68);
  swift_getWitnessTable();
  sub_1D2874098();
  sub_1D2873F38();
  sub_1D2874018();
  v69 = sub_1D2878068();
  v70 = [objc_opt_self() systemImageNamed_];

  sub_1D2878E88();
  v71 = [v63 tintColor];
  sub_1D2878E68();
  v72 = sub_1D2873F78();
  v73 = v111;
  v74 = v112;
  v75 = v110;
  (*(v112 + 16))(v110, v20, v111);
  (*(v74 + 56))(v75, 0, 1, v73);
  sub_1D2878ED8();

  sub_1D2873F58();
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB60, &qword_1D28A6CF0);
  v115 = sub_1D22BB9D8(&qword_1ED89CF68, &qword_1EC6DBB60, &qword_1D28A6CF0, MEMORY[0x1E69E5FB8]);
  v113 = vdupq_n_s64(1uLL);
  sub_1D2873F98();
  (*(v104 + 104))(v103, *MEMORY[0x1E69DBEB8], v105);
  sub_1D2873F68();
  sub_1D2874028();
  v76 = sub_1D2873F08();
  sub_1D27BD428();
  sub_1D2874168();

  v77 = sub_1D2873F18();
  v78 = sub_1D2878068();
  [v77 setAccessibilityIdentifier_];

  v79 = sub_1D2873F78();
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v80 = qword_1ED8B0058;
  sub_1D28718C8();
  sub_1D28780E8();
  v81 = sub_1D2878068();

  [v79 setAccessibilityLabel_];

  LODWORD(v82) = 1132068864;
  [v62 setContentCompressionResistancePriority:0 forAxis:v82];
  v83 = v109;
  sub_1D22BD1D0(v64 + *(v66 + 48), v109, &qword_1EC6D9C10, &qword_1D287FB60);
  v84 = sub_1D27C2B30(v83);
  sub_1D22BD238(v83, &qword_1EC6D9C10, &qword_1D287FB60);
  [v62 _setMaximumContentSizeCategory_];

  (*(v74 + 8))(v20, v73);
  return v62;
}

uint64_t sub_1D27BD2B8(uint64_t a1)
{
  v2 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D2878048();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t sub_1D27BD428()
{
  v0 = sub_1D2874178();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2874138();
  sub_1D2874188();
  (*(v1 + 104))(v3, *MEMORY[0x1E69DC080], v0);
  sub_1D2874148();
  v4 = [objc_opt_self() clearColor];
  sub_1D2874108();
  sub_1D2874128();
  return sub_1D2874118();
}

void sub_1D27BD53C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  sub_1D28760C8();
  sub_1D28760B8();
  sub_1D27BD5C4(a1, v3, v5, v6);
}

void sub_1D27BD5C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v213 = a1;
  v6 = *v4;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  v9 = type metadata accessor for PromptAmbiguity.Candidate(0, v8, a3, a4);
  v200 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v186 = &v179 - v10;
  v192 = v11;
  v187 = sub_1D2878F18();
  v199 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v196 = &v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v203 = &v179 - v14;
  v195 = type metadata accessor for AmbiguityData(0, v8, v15, v16);
  v198 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v194 = &v179 - v17;
  v193 = sub_1D28740B8();
  v189 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v202 = &v179 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for PromptAmbiguity(0, v8, v19, v20);
  v211 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v206 = &v179 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v179 - v23;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F20, &qword_1D28A6CE0);
  MEMORY[0x1EEE9AC00](v183);
  v182 = (&v179 - v25);
  v214 = sub_1D2878EA8();
  v210 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v190 = &v179 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v201 = &v179 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F28, &qword_1D28A6CE8);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v181 = &v179 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v207 = (&v179 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v208 = (&v179 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v205 = &v179 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v191 = &v179 - v38;
  v188 = sub_1D2875628();
  v185 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v184 = &v179 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for PromptText(0, v8, v40, v41);
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = (&v179 - v44);
  v46 = *((v7 & v6) + 0x58);
  swift_beginAccess();
  v204 = v8;
  v49 = type metadata accessor for PromptTextField(0, v8, v47, v48);
  (*(*(v49 - 8) + 24))(&v4[v46], a2, v49);
  swift_endAccess();
  sub_1D27BC534(v49, v50, v51, v52);
  v54 = *v45;
  v53 = v45[1];
  v55 = *(v43 + 8);
  sub_1D2870F68();
  v55(v45, v42);
  sub_1D27BC534(v49, v56, v57, v58);
  v212 = *(v45 + *(v42 + 32));
  sub_1D2870F68();
  v59 = v45;
  v60 = v49;
  v61 = v54;
  v55(v59, v42);
  v62 = sub_1D2873F78();
  v63 = v60;
  [v62 setEnabled_];

  sub_1D2873FE8();
  v64 = sub_1D2873F18();
  v65 = [v64 text];

  if (!v65)
  {
    goto LABEL_7;
  }

  v66 = sub_1D28780A8();
  v68 = v67;

  if (v61 == v66 && v53 == v68)
  {

    goto LABEL_8;
  }

  v69 = sub_1D2879618();

  if (v69)
  {
  }

  else
  {
LABEL_7:
    v70 = sub_1D2873F18();
    v71 = sub_1D2878068();

    [v70 setText_];
  }

LABEL_8:
  v72 = sub_1D2873F18();
  [v72 setKeyboardAppearance_];

  LODWORD(v72) = *(a2 + v60[14]);
  v73 = sub_1D2873F18();
  v74 = v73;
  v75 = v212;
  v76 = v207;
  if (v72 == 1)
  {
    [v73 setKeyboardType_];

    v77 = sub_1D2873F18();
    [v77 setKeyboardAppearance_];
    v78 = v208;
  }

  else
  {
    v79 = a2 + v63[15];
    v80 = *v79;
    if (*(v79 + 8) == 1)
    {
      v81 = *v79;
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v82 = sub_1D28762E8();
      sub_1D2873BE8();

      v83 = v184;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22EE66C(v80, 0);
      (*(v185 + 8))(v83, v188);
      v81 = v215;
    }

    if (v81 == 5)
    {
      v84 = 0;
    }

    else
    {
      v84 = 13;
    }

    [v74 setKeyboardType_];

    v77 = sub_1D2873F18();
    v85 = *v79;
    if (*(v79 + 8) == 1)
    {
      v86 = *v79;
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v87 = sub_1D28762E8();
      sub_1D2873BE8();

      v88 = v184;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22EE66C(v85, 0);
      (*(v185 + 8))(v88, v188);
      v86 = v215;
    }

    v78 = v208;
    [v77 setSupportsAdaptiveImageGlyph_];
  }

  sub_1D27BD2B8(a2 + v63[8]);
  sub_1D2873F38();
  if (*(a2 + v63[9] + 8))
  {
    v89 = sub_1D2873F48();
    v90 = v191;
    sub_1D2878EC8();

    if ((*(v210 + 48))(v90, 1, v214) || (v112 = sub_1D2878E78()) == 0)
    {
      sub_1D22BD238(v90, &qword_1EC6E1F28, &qword_1D28A6CE8);
    }

    else
    {
      v113 = v112;
      sub_1D22BD238(v90, &qword_1EC6E1F28, &qword_1D28A6CE8);
      v114 = sub_1D2878068();
      v115 = [objc_opt_self() _systemImageNamed_];

      LOBYTE(v114) = [v113 isEqual_];
      v75 = v212;
      if (v114)
      {
        goto LABEL_34;
      }
    }

    v91 = v201;
    sub_1D2878E28();
    v92 = sub_1D2878068();
    v93 = [objc_opt_self() _systemImageNamed_];

    sub_1D2878E88();
    sub_1D28740A8();
    v94 = v190;
    sub_1D2874008();
    sub_1D2878E08();
    v95 = v210;
    v96 = *(v210 + 8);
    v97 = v94;
    v98 = v214;
    v96(v97, v214);
    sub_1D2878E18();
    v99 = sub_1D2873F48();
    v100 = v205;
    (*(v95 + 16))(v205, v91, v98);
    (*(v95 + 56))(v100, 0, 1, v98);
    sub_1D2878ED8();

    v101 = sub_1D2873F48();
    [v101 setNeedsUpdateConfiguration];

    v96(v91, v98);
    goto LABEL_34;
  }

  v102 = sub_1D2873F48();
  sub_1D2878EC8();

  v190 = sub_1D28740A8();
  sub_1D2874008();
  v103 = v182;
  v104 = v210;
  v105 = v214;
  v191 = *(v210 + 56);
  (v191)(v76, 0, 1, v214);
  v106 = *(v183 + 48);
  sub_1D22BD1D0(v78, v103, &qword_1EC6E1F28, &qword_1D28A6CE8);
  v107 = v105;
  sub_1D22BD1D0(v76, v103 + v106, &qword_1EC6E1F28, &qword_1D28A6CE8);
  v108 = v104;
  v109 = v103;
  v110 = *(v108 + 48);
  if (v110(v109, 1, v107) == 1)
  {
    sub_1D22BD238(v76, &qword_1EC6E1F28, &qword_1D28A6CE8);
    sub_1D22BD238(v78, &qword_1EC6E1F28, &qword_1D28A6CE8);
    v111 = v110(v109 + v106, 1, v214);
    v75 = v212;
    if (v111 == 1)
    {
      sub_1D22BD238(v109, &qword_1EC6E1F28, &qword_1D28A6CE8);
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v116 = v181;
  sub_1D22BD1D0(v109, v181, &qword_1EC6E1F28, &qword_1D28A6CE8);
  if (v110(v109 + v106, 1, v107) == 1)
  {
    sub_1D22BD238(v207, &qword_1EC6E1F28, &qword_1D28A6CE8);
    sub_1D22BD238(v208, &qword_1EC6E1F28, &qword_1D28A6CE8);
    (*(v210 + 8))(v116, v214);
    v75 = v212;
LABEL_32:
    sub_1D22BD238(v109, &qword_1EC6E1F20, &qword_1D28A6CE0);
LABEL_33:
    v117 = sub_1D2873F48();
    v118 = v205;
    sub_1D2874008();
    (v191)(v118, 0, 1, v214);
    sub_1D2878ED8();

    v119 = sub_1D2873F48();
    [v119 setNeedsUpdateConfiguration];

    goto LABEL_34;
  }

  v165 = v109;
  v166 = v210;
  v167 = v165 + v106;
  v168 = v201;
  (*(v210 + 32))(v201, v167, v107);
  sub_1D27C2FC8(&qword_1ED89CC28, MEMORY[0x1E69DC598], MEMORY[0x1E69DC5A0]);
  v169 = sub_1D2877F98();
  v170 = *(v166 + 8);
  v170(v168, v107);
  sub_1D22BD238(v207, &qword_1EC6E1F28, &qword_1D28A6CE8);
  sub_1D22BD238(v208, &qword_1EC6E1F28, &qword_1D28A6CE8);
  v170(v116, v107);
  sub_1D22BD238(v165, &qword_1EC6E1F28, &qword_1D28A6CE8);
  v75 = v212;
  if ((v169 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_34:
  v120 = v213;
  sub_1D2873FF8();
  v121 = v197;
  v122 = sub_1D2878498();
  v123 = v187;
  v124 = v206;
  if (v122)
  {
    v125 = 0;
    v210 = v211 + 16;
    v208 = (v211 + 32);
    v126 = v200 + 56;
    v191 = v199 + 16;
    v190 = (v200 + 48);
    v185 = v200 + 32;
    v184 = (v200 + 16);
    v183 = v200 + 8;
    ++v189;
    v207 = (v211 + 8);
    v182 = (v199 + 8);
    v209 = v24;
    v201 = v198 + 8;
    v188 = v200 + 56;
    do
    {
      v129 = sub_1D2878478();
      sub_1D2878418();
      if (v129)
      {
        (*(v211 + 16))(v24, v75 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v125, v121);
      }

      else
      {
        v158 = sub_1D28791A8();
        if (v180 != 8)
        {
          goto LABEL_101;
        }

        v215 = v158;
        v129 = v158;
        (*v210)(v24, &v215, v121);
        swift_unknownObjectRelease();
      }

      if (__OFADD__(v125, 1))
      {
        __break(1u);
        goto LABEL_68;
      }

      v214 = v125 + 1;
      v130 = v123;
      (*v208)(v124, v24, v121);
      v131 = sub_1D2873F18();
      v132 = *v124;
      v133 = v124[1];
      v134 = [v131 beginningOfDocument];
      v135 = [v131 positionFromPosition:v134 offset:v132];

      if (v135)
      {
        v136 = [v131 &selRef:v135 editorDidChangeHasSignificantEdits:v133];
        v123 = v130;
        if (v136)
        {
          v137 = v136;
          v138 = [v131 textRangeFromPosition:v135 toPosition:v136];

          v127 = v214;
          v205 = v138;
          if (v138)
          {
            v139 = v206;
            v140 = *(v206 + 2);
            v141 = v203;
            v142 = v192;
            v199 = *v126;
            (v199)(v203, 1, 1, v192);
            v143 = v194;
            v144 = v141;
            v145 = v142;
            sub_1D27BEF18(v140, v144, v204, v194, v146);
            v200 = v140;
            sub_1D2870F68();
            v147 = v202;
            v148 = v123;
            v149 = v195;
            v120 = v213;
            sub_1D2873FB8();
            v198 = *v201;
            (v198)(v143, v149);
            v150 = &v139[*(v121 + 32)];
            v151 = v145;
            v152 = v196;
            (*v191)(v196, v150, v148);
            if ((*v190)(v152, 1, v151) == 1)
            {

              (*v189)(v147, v193);
              v124 = v206;
              v121 = v197;
              (*v207)(v206, v197);
              (*v182)(v152, v148);
              v126 = v188;
              v123 = v148;
            }

            else
            {
              v153 = v186;
              (*v185)(v186, v152, v151);
              v154 = v203;
              (*v184)(v203, v153, v151);
              v155 = v188;
              (v199)(v154, 0, 1, v151);
              sub_1D27BEF18(v200, v154, v204, v143, v156);
              sub_1D2870F68();
              v157 = v202;
              sub_1D2873F88();

              (v198)(v143, v149);
              v123 = v187;
              (*v183)(v153, v151);
              (*v189)(v157, v193);
              v124 = v206;
              v121 = v197;
              (*v207)(v206, v197);
              v126 = v155;
            }
          }

          else
          {
            v124 = v206;
            (*v207)(v206, v121);
            v120 = v213;
          }

          goto LABEL_38;
        }

        v124 = v206;
        (*v207)(v206, v121);
      }

      else
      {

        (*v207)(v124, v121);
        v123 = v130;
      }

      v120 = v213;
      v127 = v214;
LABEL_38:
      v75 = v212;
      v128 = sub_1D2878498();
      ++v125;
      v24 = v209;
    }

    while (v127 != v128);
  }

  v159 = MEMORY[0x1E69E7CC0];

  v160 = sub_1D2873F18();
  v126 = &selRef_begin;
  v120 = [v160 subviews];

  v129 = sub_1D22BCFD0(0, &qword_1ED89CCB8, 0x1E69DD250);
  v121 = sub_1D28783E8();

  v215 = v159;
  if (v121 >> 62)
  {
    goto LABEL_70;
  }

  for (i = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D2879368())
  {
    v214 = v129;
    v126 = 0;
    while (1)
    {
      if ((v121 & 0xC000000000000001) != 0)
      {
        v162 = MEMORY[0x1D38A1C30](v126, v121);
      }

      else
      {
        if (v126 >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v162 = *(v121 + 8 * v126 + 32);
      }

      v163 = v162;
      v129 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v120 = &v215;
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
      }

      else
      {
      }

      ++v126;
      if (v129 == i)
      {
        v129 = v214;
        v164 = v215;
        v126 = 0x1E8400000;
        goto LABEL_72;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    ;
  }

  v164 = MEMORY[0x1E69E7CC0];
LABEL_72:

  if ((v164 & 0x8000000000000000) == 0 && (v164 & 0x4000000000000000) == 0)
  {
    if (*(v164 + 16))
    {
      goto LABEL_75;
    }

LABEL_90:

    return;
  }

  if (!sub_1D2879368())
  {
    goto LABEL_90;
  }

LABEL_75:
  if ((v164 & 0xC000000000000001) != 0)
  {
    v171 = MEMORY[0x1D38A1C30](0, v164);
  }

  else
  {
    if (!*(v164 + 16))
    {
      __break(1u);
LABEL_95:
      v173 = MEMORY[0x1D38A1C30](0, v121);
      goto LABEL_83;
    }

    v171 = *(v164 + 32);
  }

  v120 = v171;

  v172 = [v120 *(v126 + 1160)];
  v121 = sub_1D28783E8();

  if (v121 >> 62)
  {
    if (!sub_1D2879368())
    {
      goto LABEL_97;
    }
  }

  else if (!*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_97;
  }

  if ((v121 & 0xC000000000000001) != 0)
  {
    goto LABEL_95;
  }

  if (!*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_99;
  }

  v173 = *(v121 + 32);
LABEL_83:
  v174 = v173;

  v175 = [v174 *(v126 + 1160)];

  v129 = sub_1D28783E8();
  if (!(v129 >> 62))
  {
    if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_85;
    }

LABEL_97:

    return;
  }

  if (!sub_1D2879368())
  {
    goto LABEL_97;
  }

LABEL_85:
  if ((v129 & 0xC000000000000001) != 0)
  {
LABEL_99:
    v176 = MEMORY[0x1D38A1C30](0, v129);
    goto LABEL_88;
  }

  if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v176 = *(v129 + 32);
LABEL_88:
    v177 = v176;

    v178 = v177;
    [v178 setIsAccessibilityElement_];

    return;
  }

  __break(1u);
LABEL_101:
  __break(1u);
}

uint64_t sub_1D27BEF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t a5@<X3>)
{
  *a4 = a1;
  v8 = *(type metadata accessor for AmbiguityData(0, a3, a3, a5) + 28);
  type metadata accessor for PromptAmbiguity.Candidate(255, a3, v9, v10);
  v11 = sub_1D2878F18();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a4[v8], a2, v11);
}

void sub_1D27BEFB4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40, &unk_1D289B180);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v45 - v7;
  v8 = *((v5 & v4) + 0x50);
  v11 = type metadata accessor for PromptText(0, v8, v9, v10);
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v47 = (&v45 - v12);
  v15 = type metadata accessor for PromptTextField(0, v8, v13, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - v17;
  type metadata accessor for AmbiguityData(0, v8, v19, v20);
  sub_1D2873F28();
  sub_1D2873FD8();
  sub_1D2873EF8();
  v21 = sub_1D2878448();

  v53 = a1;
  v54[0] = v21;
  v52 = v8;
  v22 = sub_1D28784C8();
  v25 = type metadata accessor for PromptAmbiguity(0, v8, v23, v24);
  WitnessTable = swift_getWitnessTable();
  v46 = sub_1D27BC0C0(sub_1D27C24EC, v51, v22, v25, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v27);
  v28 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  swift_beginAccess();
  (*(v16 + 16))(v18, &v2[v28], v15);
  v29 = sub_1D2873F18();
  v30 = [v29 text];

  if (v30)
  {
    v31 = sub_1D28780A8();
    v33 = v32;

    v34 = sub_1D2873F18();
    v35 = [v34 attributedText];

    if (v35)
    {

      v36 = v48;
      sub_1D2871348();
      v37 = sub_1D2871318();
      (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
      v38 = sub_1D2873F18();
      v39 = [v38 selectedRange];
      v41 = v40;

      v42 = v47;
      sub_1D2743750(v31, v33, v36, v46, v39, v41, 0, v8, v47);
      sub_1D27C27CC(v42, v15, v43, v44);
      (*(v49 + 8))(v42, v50);
      (*(v16 + 8))(v18, v15);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D27BF3F8(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v35 = a4;
  type metadata accessor for PromptAmbiguity.Candidate(255, a2, a2, a3);
  v33 = sub_1D2878F18();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - v6;
  v36 = a2;
  v9 = type metadata accessor for AmbiguityData(0, a2, v7, v8);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v27 - v13);
  v15 = sub_1D2873F18();
  v29 = sub_1D2873EF8();
  v34 = a1;
  v16 = sub_1D2873EE8();
  v17 = [v15 beginningOfDocument];
  v18 = [v16 start];
  v19 = [v15 offsetFromPosition:v17 toPosition:v18];

  v20 = [v15 beginningOfDocument];
  v21 = [v16 end];
  v22 = [v15 offsetFromPosition:v20 toPosition:v21];

  v28 = v19;
  v23 = v22 - v19;
  if (__OFSUB__(v22, v19))
  {
    __break(1u);
  }

  else
  {
    sub_1D2873ED8();
    v24 = *v14;
    v25 = *(v30 + 8);
    sub_1D2870F68();
    v25(v14, v9);
    sub_1D2873ED8();
    v26 = v32;
    (*(v31 + 16))(v32, &v11[*(v9 + 28)], v33);
    v25(v11, v9);
    sub_1D279E460(v28, v23, v24, v26, v36, v35);
  }
}

void sub_1D27BF708(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = sub_1D2873F18();
  v6 = [v5 isFirstResponder];

  if (!v6)
  {
    return;
  }

  v7 = v1 + *((*v3 & *v1) + 0x58);
  swift_beginAccess();
  v10 = *&v7[*(type metadata accessor for PromptTextField(0, *(v4 + 80), v8, v9) + 40)];
  sub_1D2870F78();
  v11 = sub_1D2873F18();
  v12 = [v11 text];

  if (!v12)
  {
    goto LABEL_44;
  }

  v13 = sub_1D28780A8();
  v15 = v14;

  v16 = sub_1D2873F18();
  v17 = [v16 selectedRange];
  v19 = v18;

  v20 = v10(v13, v15, v17, v19, 0);

  v21 = *((*v3 & *v2) + 0x60);
  v22 = *(v2 + v21);
  if (v22)
  {
    sub_1D2870F68();
    sub_1D2870F68();
    v23 = sub_1D23377AC(v20, v22);

    if (v23)
    {

LABEL_35:

      return;
    }
  }

  else
  {
    sub_1D2870F68();
  }

  *(v2 + v21) = v20;

  v24 = *(v20 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (!v24)
  {
LABEL_25:

    v37 = *(v25 + 2);
    if (v37 >= 3)
    {
      sub_1D268EB80(v25, (v25 + 32), 0, 5uLL);
      v39 = v38;

      v37 = *(v39 + 16);
      v25 = v39;
    }

    if (v37)
    {
      v52 = MEMORY[0x1E69E7CC0];
      sub_1D2879258();
      type metadata accessor for PromptUITextSuggestion();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v41 = (v25 + 32);
      do
      {
        sub_1D233F0D4(v41, &v49);
        v43 = sub_1D2878068();
        v44 = sub_1D2878068();
        v45 = [ObjCClassFromMetadata textSuggestionWithInputText:v43 searchText:v44];

        v46 = v45;
        v47 = sub_1D2878068();
        [v46 setDisplayText_];

        if (v50)
        {
          v48 = v50;
          [v46 setImage_];
        }

        v42 = OBJC_IVAR____TtC23ImagePlaygroundInternal22PromptUITextSuggestion_representedObject;
        swift_beginAccess();
        sub_1D27C28A4(&v51, v46 + v42);
        swift_endAccess();
        sub_1D233F130(&v49);
        sub_1D2879228();
        sub_1D2879268();
        sub_1D2879278();
        sub_1D2879238();
        v41 += 96;
        --v37;
      }

      while (v37);

      if (!(v52 >> 62))
      {
        goto LABEL_33;
      }
    }

    else
    {

      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
LABEL_33:
        sub_1D2870F68();
        sub_1D2879668();
        sub_1D22BCFD0(0, &unk_1ED89CD80, 0x1E69DD158);
LABEL_34:

        sub_1D2873FC8();
        goto LABEL_35;
      }
    }

    sub_1D22BCFD0(0, &unk_1ED89CD80, 0x1E69DD158);
    sub_1D2870F68();
    sub_1D28793A8();

    goto LABEL_34;
  }

  v26 = 0;
  v27 = v20 + 48;
  while (v26 < *(v20 + 16))
  {
    v28 = *v27;
    v29 = *(*v27 + 16);
    v30 = *(v25 + 2);
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
      goto LABEL_40;
    }

    sub_1D2870F68();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v31 <= *(v25 + 3) >> 1)
    {
      if (*(v28 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v30 <= v31)
      {
        v33 = v30 + v29;
      }

      else
      {
        v33 = v30;
      }

      v25 = sub_1D27CDD60(isUniquelyReferenced_nonNull_native, v33, 1, v25);
      if (*(v28 + 16))
      {
LABEL_21:
        if ((*(v25 + 3) >> 1) - *(v25 + 2) < v29)
        {
          goto LABEL_42;
        }

        swift_arrayInitWithCopy();

        if (v29)
        {
          v34 = *(v25 + 2);
          v35 = __OFADD__(v34, v29);
          v36 = v34 + v29;
          if (v35)
          {
            goto LABEL_43;
          }

          *(v25 + 2) = v36;
        }

        goto LABEL_10;
      }
    }

    if (v29)
    {
      goto LABEL_41;
    }

LABEL_10:
    ++v26;
    v27 += 24;
    if (v24 == v26)
    {
      goto LABEL_25;
    }
  }

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
  __break(1u);
}

double sub_1D27BFCA8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v6 = type metadata accessor for PromptTextField(0, *((*MEMORY[0x1E69E7D40] & *a1) + 0x50), a3, a4);
  (*(*(v6 - 8) + 8))(&a1[v5], v6);

  return result;
}

id sub_1D27BFDA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = sub_1D27BEEDC(a1, a3, a4, a5);
  *a2 = result;
  return result;
}

uint64_t sub_1D27BFDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, WitnessTable);
}

uint64_t sub_1D27BFE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, WitnessTable);
}

void sub_1D27BFEC8(uint64_t a1)
{
  swift_getWitnessTable();
  sub_1D2875A98();
  __break(1u);
}

void sub_1D27BFF08(uint64_t a1)
{
  sub_1D27BF708(a1);

  sub_1D27BEFB4(a1);
}

uint64_t sub_1D27BFF40(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v78 = a3;
  v75 = a1;
  v6 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  v7 = type metadata accessor for PromptAmbiguity.Candidate(0, v6, a3, a4);
  v72 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v67 - v10;
  v73 = v11;
  v12 = sub_1D2878F18();
  v13 = *(v12 - 8);
  v82 = v12;
  v83 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v81 = &v67 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F00, &qword_1D28A6CD0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v67 - v19;
  v69 = v6;
  v23 = type metadata accessor for AmbiguityData(255, v6, v21, v22);
  v24 = sub_1D2878F18();
  v79 = *(v24 - 8);
  v80 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v67 - v28;
  v30 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v67 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F08, &qword_1D28A6CD8);
  v76 = a2;
  sub_1D2873ED8();
  v84 = v33;
  swift_dynamicCast();
  sub_1D22BD1D0(v78, v20, &qword_1EC6E1F00, &qword_1D28A6CD0);
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v20, 1, v34) == 1)
  {
    sub_1D22BD238(v20, &qword_1EC6E1F00, &qword_1D28A6CD0);
    (*(v30 + 56))(v29, 1, 1, v23);
  }

  else
  {
    sub_1D2873ED8();
    (*(v35 + 8))(v20, v34);
    sub_1D23C3FAC(&v85, &v86);
    swift_dynamicCast();
    (*(v30 + 56))(v29, 0, 1, v23);
  }

  v37 = v79;
  v36 = v80;
  v38 = *(v79 + 16);
  v78 = v29;
  v38(v26, v29, v80);
  v39 = (*(v30 + 48))(v26, 1, v23);
  v41 = v81;
  v40 = v82;
  v42 = v73;
  v71 = v23;
  if (v39 == 1)
  {
    (*(v37 + 8))(v26, v36);
    v43 = v72;
    (*(v72 + 56))(v41, 1, 1, v42);
    v44 = *(v83 + 16);
  }

  else
  {
    v44 = *(v83 + 16);
    v44(v81, &v26[*(v23 + 28)], v82);
    (*(v30 + 8))(v26, v23);
    v43 = v72;
  }

  v45 = *v84;
  *&v86 = *v84;
  v44(v15, v41, v40);
  v46 = (*(v43 + 48))(v15, 1, v42);
  v74 = v30;
  if (v46 == 1)
  {
    v47 = *(v83 + 8);
    sub_1D2870F68();
    v48 = v47(v15, v40);
  }

  else
  {
    v49 = v70;
    v50 = (*(v43 + 32))(v70, v15, v42);
    *&v85 = v45;
    MEMORY[0x1EEE9AC00](v50);
    v65 = v69;
    v66 = v49;
    sub_1D28784C8();
    swift_bridgeObjectRetain_n();
    swift_getWitnessTable();
    v51 = sub_1D2878358();

    if ((v51 & 1) == 0)
    {
      (*(v43 + 16))(v68, v49, v42);
      sub_1D28784A8();
    }

    v48 = (*(v43 + 8))(v49, v42);
  }

  *&v85 = v86;
  MEMORY[0x1EEE9AC00](v48);
  v52 = v75;
  *(&v67 - 6) = v41;
  *(&v67 - 5) = v52;
  v53 = v76;
  *(&v67 - 4) = v77;
  *(&v67 - 3) = v53;
  v65 = v84;
  v54 = sub_1D28784C8();
  v55 = sub_1D22BCFD0(0, &unk_1ED89CC30, 0x1E69DC628);
  WitnessTable = swift_getWitnessTable();
  v58 = sub_1D27BC0C0(sub_1D27C2944, (&v67 - 8), v54, v55, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v57);

  v59 = v71;
  if (v58 >> 62)
  {
    sub_1D22BCFD0(0, &qword_1EC6E1F10, 0x1E69DCC78);
    sub_1D2870F68();
    v60 = sub_1D28793A8();
  }

  else
  {
    sub_1D2870F68();
    sub_1D2879668();
    sub_1D22BCFD0(0, &qword_1EC6E1F10, 0x1E69DCC78);
    v60 = v58;
  }

  v61 = v82;
  v62 = v74;

  sub_1D22BCFD0(0, &qword_1EC6E1F18, 0x1E69DCC60);
  v65 = v60;
  v63 = sub_1D2878CD8();
  (*(v83 + 8))(v81, v61);
  (*(v79 + 8))(v78, v80);
  (*(v62 + 8))(v84, v59);
  return v63;
}

uint64_t sub_1D27C0868@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v63 = a7;
  v58 = a5;
  v59 = a6;
  v56 = a3;
  v65 = a2;
  v8 = *MEMORY[0x1E69E7D40] & *a4;
  v57 = a4;
  v9 = *(v8 + 80);
  v10 = type metadata accessor for PromptAmbiguity.Candidate(0, v9, a3, a4);
  v11 = *(v10 - 8);
  v61 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v45 - v12;
  v62 = v9;
  v67 = type metadata accessor for AmbiguityData(0, v9, v13, v14);
  v60 = *(v67 - 8);
  v55 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v45 - v15;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F08, &qword_1D28A6CD8);
  v50 = *(v53 - 8);
  v49 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v66 = &v45 - v16;
  v17 = sub_1D2878F18();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = (&v45 - v20);
  v23 = *a1;
  v22 = a1[1];
  v24 = a1[2];
  (*(v18 + 16))(&v45 - v20, v65, v17, v19);
  v64 = v11;
  v65 = v10;
  v25 = (*(v11 + 48))(v21, 1, v10);
  v54 = v23;
  v51 = v22;
  v52 = v24;
  if (v25 == 1)
  {
    v26 = *(v18 + 8);
    sub_1D2870F68();
    v27 = v24;
    v26(v21, v17);
  }

  else
  {
    v47 = a1;
    v28 = *v21;
    v29 = v21[1];
    v30 = *(v64 + 8);
    sub_1D2870F68();
    v31 = v24;
    sub_1D2870F68();
    v30(v21, v65);
    if (v23 == v28 && v22 == v29)
    {

      v48 = 1;
      a1 = v47;
      goto LABEL_11;
    }

    v33 = sub_1D2879618();

    a1 = v47;
    if (v33)
    {
      v48 = 1;
      goto LABEL_11;
    }
  }

  v48 = 0;
LABEL_11:
  v47 = sub_1D22BCFD0(0, &unk_1ED89CC30, 0x1E69DC628);
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = v50;
  v35 = v53;
  (*(v50 + 16))(v66, v58, v53);
  v36 = v60;
  (*(v60 + 16))(v68, v59, v67);
  v38 = v64;
  v37 = v65;
  (*(v64 + 16))(v69, a1, v65);
  v39 = (*(v34 + 80) + 40) & ~*(v34 + 80);
  v40 = (v49 + v39 + *(v36 + 80)) & ~*(v36 + 80);
  v41 = (v55 + *(v38 + 80) + v40) & ~*(v38 + 80);
  v42 = swift_allocObject();
  v43 = v56;
  *(v42 + 2) = v62;
  *(v42 + 3) = v43;
  *(v42 + 4) = v46;
  (*(v34 + 32))(&v42[v39], v66, v35);
  (*(v36 + 32))(&v42[v40], v68, v67);
  (*(v38 + 32))(&v42[v41], v69, v37);
  result = sub_1D2878DF8();
  *v63 = result;
  return result;
}

void sub_1D27C0E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v31 = a5;
  v9 = type metadata accessor for PromptAmbiguity.Candidate(255, a7, a3, a4);
  v10 = sub_1D2878F18();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - v11;
  v15 = type metadata accessor for AmbiguityData(0, a7, v13, v14);
  v32 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v18 = sub_1D28740B8();
  v29 = *(v18 - 8);
  v30 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F08, &qword_1D28A6CD8);
      sub_1D2873EC8();
      v25 = *v31;
      v26 = a6;
      v27 = *(v9 - 8);
      (*(v27 + 16))(v12, v26, v9);
      (*(v27 + 56))(v12, 0, 1, v9);
      sub_1D27BEF18(v25, v12, a7, v17, v28);
      sub_1D2870F68();
      sub_1D2873F88();
      (*(v32 + 8))(v17, v15);
      (*(v29 + 8))(v20, v30);
      sub_1D27BEFB4(v24);

      v22 = v24;
    }
  }
}

void sub_1D27C10F0(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = [objc_opt_self() activeKeyboard];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = *(v4 + 80);
    v8[3] = v7;
    v8[4] = v6;
    v8[5] = a1;
    v21 = sub_1D27C2914;
    v22 = v8;
    *&v19 = MEMORY[0x1E69E9820];
    *(&v19 + 1) = 1107296256;
    *&v20 = sub_1D27BC4E0;
    *(&v20 + 1) = &block_descriptor_47;
    v9 = _Block_copy(&v19);
    v10 = v6;
    v11 = a1;

    [v10 acceptAutocorrectionWithCompletionHandler_];
    _Block_release(v9);
  }

  else
  {
    v12 = v1 + *((*v3 & *v1) + 0x58);
    swift_beginAccess();
    v15 = type metadata accessor for PromptTextField(0, *(v4 + 80), v13, v14);
    if (v12[*(v15 + 28)] == 1)
    {
      v16 = &v12[*(v15 + 44)];
      v17 = *v16;
      if (*v16)
      {
        v18 = *(v16 + 1);
        v21 = 0;
        v19 = 0u;
        v20 = 0u;
        sub_1D2870F78();
        v17(&v19);
        sub_1D22A576C(v17, v18);
        sub_1D22BD238(&v19, &unk_1EC6E1D30, &qword_1D2892FF0);
      }
    }
  }
}

double sub_1D27C1314(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1D2877B48();
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2877B68();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_1D22BCFD0(0, &qword_1ED89CD50, 0x1E69E9610);
    v24 = sub_1D2878AB8();
    v16 = swift_allocObject();
    v16[2] = a3;
    v16[3] = a4;
    v16[4] = v15;
    aBlock[4] = sub_1D27C2938;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23DFBA8;
    aBlock[3] = &block_descriptor_10;
    v17 = _Block_copy(aBlock);
    v18 = a3;
    v19 = a4;
    v23 = v15;
    sub_1D2877B58();
    v26 = MEMORY[0x1E69E7CC0];
    sub_1D27C2FC8(&qword_1ED89CFE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80, &qword_1D287EE00);
    v20 = v25;
    v22 = v9;
    sub_1D22BB9D8(&qword_1ED89CEB0, &unk_1EC6DAE80, &qword_1D287EE00, MEMORY[0x1E69E6328]);
    sub_1D2879088();
    v21 = v24;
    MEMORY[0x1D38A1540](0, v12, v8, v17);
    _Block_release(v17);

    (*(v20 + 8))(v8, v6);
    (*(v10 + 8))(v12, v22);
  }

  return result;
}

uint64_t sub_1D27C164C(void *a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40] & *a3;
  [a1 removeAutocorrectPrompt];
  [a1 updateLayout];
  v7 = sub_1D2873F18();
  v8 = [v7 markedTextRange];

  if (v8)
  {

    v9 = sub_1D2873F18();
    [v9 unmarkText];
  }

  v10 = a3 + *((*v5 & *a3) + 0x58);
  swift_beginAccess();
  result = type metadata accessor for PromptTextField(0, *(v6 + 80), v11, v12);
  if (v10[*(result + 28)] == 1)
  {
    v14 = &v10[*(result + 44)];
    v15 = *v14;
    if (*v14)
    {
      v16 = *(v14 + 1);
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      sub_1D2870F78();
      v15(v17);
      sub_1D22A576C(v15, v16);
      return sub_1D22BD238(v17, &unk_1EC6E1D30, &qword_1D2892FF0);
    }
  }

  return result;
}

void sub_1D27C17CC(uint64_t a1, void *a2)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40] & *v2;
  type metadata accessor for PromptUITextSuggestion();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal22PromptUITextSuggestion_representedObject;
    v9 = v7;
    swift_beginAccess();
    sub_1D22BD1D0(v9 + v8, &v21, &unk_1EC6E1D30, &qword_1D2892FF0);
    if (v22)
    {
      sub_1D22D79FC(&v21, v23);
      v10 = v2 + *((*v5 & *v2) + 0x58);
      swift_beginAccess();
      v13 = type metadata accessor for PromptTextField(0, *(v6 + 80), v11, v12);
      if (v10[*(v13 + 28)] == 1)
      {
        v14 = &v10[*(v13 + 44)];
        v15 = *v14;
        if (*v14)
        {
          v16 = *(v14 + 1);
          sub_1D22D7044(v23, &v21);
          v17 = a2;
          sub_1D22A58B8(v15, v16);
          v15(&v21);
          sub_1D22A576C(v15, v16);

          sub_1D22BD238(&v21, &unk_1EC6E1D30, &qword_1D2892FF0);
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v23);
      return;
    }

    sub_1D22BD238(&v21, &unk_1EC6E1D30, &qword_1D2892FF0);
  }

  v18 = [a2 inputText];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1D2873F18();
    [v20 setText_];

    sub_1D27BF708(a1);
    sub_1D27BEFB4(a1);
  }
}

uint64_t sub_1D27C19E4(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  sub_1D22BCFD0(0, &qword_1ED89CCB8, 0x1E69DD250);
  v4 = a1;
  v5 = v1;
  sub_1D2877938();
  sub_1D2878CE8();

  return 1;
}

void sub_1D27C1AAC(__n128 a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  v7 = sub_1D2874158();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1D2873F08();
  v9 = a3 + *((*v5 & *a3) + 0x58);
  swift_beginAccess();
  v12 = type metadata accessor for PromptTextField(0, *((v6 & v4) + 0x50), v10, v11);
  if (v9[*(v12 + 56)] == 1)
  {
    sub_1D2874138();
  }

  else
  {
    sub_1D28740F8();
  }

  sub_1D2874168();

  v13 = sub_1D2873F18();
  v14 = v13;
  if (v9[*(v12 + 56)])
  {
    v15 = 0;
  }

  else
  {
    v15 = 13;
  }

  [v13 setKeyboardAppearance_];
}

double sub_1D27C1C04(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = *((v4 & v3) + 0x50);
  v6[3] = v5;
  v6[4] = a1;
  sub_1D22BCFD0(0, &qword_1ED89CCB8, 0x1E69DD250);
  v7 = a1;
  sub_1D2877938();
  sub_1D2878CE8();

  return result;
}

void sub_1D27C1D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for PromptTextField(0, a3, a3, a4);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-v6];
  v8 = sub_1D2874158();
  MEMORY[0x1EEE9AC00](v8 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_1D2873F08();
    v12 = v10 + *((*MEMORY[0x1E69E7D40] & *v10) + 0x58);
    swift_beginAccess();
    if (v12[*(v4 + 56)] == 1)
    {
      sub_1D2874138();
    }

    else
    {
      (*(v5 + 16))(v7, v12, v4);
      sub_1D27BD428();
      (*(v5 + 8))(v7, v4);
    }

    sub_1D2874168();
  }
}

uint64_t sub_1D27C1EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE4C068](a1, ObjectType, a3);
}

uint64_t sub_1D27C1F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE4C040](a1, a2, ObjectType, a4);
}

uint64_t sub_1D27C1FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE4C060](a1, ObjectType, a3);
}

uint64_t sub_1D27C2014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE4C038](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D27C2084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE4C048](a1, a2, ObjectType, a4);
}

uint64_t sub_1D27C20E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE4C050](a1, a2, ObjectType, a4);
}

void sub_1D27C227C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PromptText(255, *(a1 + 16), a3, a4);
  sub_1D2877538();
  if (v4 <= 0x3F)
  {
    sub_1D2878048();
    if (v5 <= 0x3F)
    {
      sub_1D27C2468(319, qword_1ED8A6D28, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v6 <= 0x3F)
      {
        sub_1D22BFAB4();
        if (v7 <= 0x3F)
        {
          sub_1D24BA3D8(319);
          if (v8 <= 0x3F)
          {
            sub_1D27C2410(319);
            if (v9 <= 0x3F)
            {
              sub_1D27C2468(319, &qword_1ED89E040, &type metadata for CreationViewStyle, MEMORY[0x1E697DCC0]);
              if (v10 <= 0x3F)
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

void sub_1D27C2410(uint64_t a1)
{
  if (!qword_1ED89DE60)
  {
    sub_1D2874E88();
    v1 = sub_1D2878F18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED89DE60);
    }
  }
}

void sub_1D27C2468(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D27C250C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = type metadata accessor for PromptAmbiguity.Candidate(255, v6, a3, a4);
  v8 = sub_1D2878F18();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (v24 - v11);
  (*(v9 + 16))(v24 - v11, &v4[*(a1 + 28)], v8, v10);
  v13 = *(v7 - 8);
  if ((*(v13 + 48))(v12, 1, v7) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v14 = objc_opt_self();
    v24[1] = *v4;
    MEMORY[0x1EEE9AC00](v14);
    v24[-2] = v6;
    KeyPath = swift_getKeyPath();
    v16 = sub_1D28784C8();
    sub_1D2870F68();
    WitnessTable = swift_getWitnessTable();
    sub_1D27BC0C0(sub_1D27C360C, KeyPath, v16, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v18);

    v19 = sub_1D28783C8();

    v20 = [v14 localizedStringByJoiningStrings_];

    v21 = sub_1D28780A8();
  }

  else
  {
    v21 = *v12;
    v22 = *(v13 + 8);
    sub_1D2870F68();
    v22(v12, v7);
  }

  return v21;
}

uint64_t sub_1D27C27CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PromptText(0, *(a2 + 16), a3, a4);
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 16))(&v10 - v7, a1, v5, v6);
  sub_1D2877538();
  return sub_1D28774F8();
}

uint64_t sub_1D27C28A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D30, &qword_1D2892FF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D27C296C(uint64_t *a1)
{
  v2 = *(v1 + 24);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D2879618() & 1;
  }
}

void sub_1D27C29C4(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F08, &qword_1D28A6CD8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v9 = *(type metadata accessor for AmbiguityData(0, v3, v7, v8) - 8);
  v10 = (v6 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v14 = *(type metadata accessor for PromptAmbiguity.Candidate(0, v3, v12, v13) - 8);
  v15 = v1[3];
  v16 = v1[4];
  v17 = v1 + ((v10 + v11 + *(v14 + 80)) & ~*(v14 + 80));

  sub_1D27C0E04(a1, v15, v16, v1 + v5, (v1 + v10), v17, v3);
}

id sub_1D27C2B30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C10, &qword_1D287FB60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_1D2874E88();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  sub_1D22BD1D0(a1, v4, &qword_1EC6D9C10, &qword_1D287FB60);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D22BD238(v4, &qword_1EC6D9C10, &qword_1D287FB60);
    return 0;
  }

  (*(v6 + 32))(v11, v4, v5);
  (*(v6 + 16))(v8, v11, v5);
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 == *MEMORY[0x1E697E718])
  {
    v14 = MEMORY[0x1E69DDC68];
  }

  else if (v13 == *MEMORY[0x1E697E6F0])
  {
    v14 = MEMORY[0x1E69DDC88];
  }

  else if (v13 == *MEMORY[0x1E697E6F8])
  {
    v14 = MEMORY[0x1E69DDC78];
  }

  else if (v13 == *MEMORY[0x1E697E6E8])
  {
    v14 = MEMORY[0x1E69DDC70];
  }

  else if (v13 == *MEMORY[0x1E697E708])
  {
    v14 = MEMORY[0x1E69DDC60];
  }

  else if (v13 == *MEMORY[0x1E697E720])
  {
    v14 = MEMORY[0x1E69DDC58];
  }

  else if (v13 == *MEMORY[0x1E697E728])
  {
    v14 = MEMORY[0x1E69DDC50];
  }

  else if (v13 == *MEMORY[0x1E697E6C0])
  {
    v14 = MEMORY[0x1E69DDC40];
  }

  else if (v13 == *MEMORY[0x1E697E6C8])
  {
    v14 = MEMORY[0x1E69DDC38];
  }

  else if (v13 == *MEMORY[0x1E697E6D0])
  {
    v14 = MEMORY[0x1E69DDC30];
  }

  else if (v13 == *MEMORY[0x1E697E6D8])
  {
    v14 = MEMORY[0x1E69DDC28];
  }

  else
  {
    if (v13 != *MEMORY[0x1E697E6E0])
    {
      v17 = *(v6 + 8);
      v17(v11, v5);
      v17(v8, v5);
      return 0;
    }

    v14 = MEMORY[0x1E69DDC20];
  }

  v15 = *(v6 + 8);
  v16 = *v14;
  v15(v11, v5);
  return v16;
}

id sub_1D27C2EE4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69E7D40];
  v5 = *v1;
  v6 = *MEMORY[0x1E69E7D40];
  *&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x60)] = 0;
  v7 = *((*v4 & *v1) + 0x58);
  v10 = type metadata accessor for PromptTextField(0, *((v6 & v5) + 0x50), v8, v9);
  (*(*(v10 - 8) + 16))(&v1[v7], a1, v10);
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_1D27C2FC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D27C3040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PromptAmbiguity.Candidate(255, *(a1 + 16), a3, a4);
  result = sub_1D28784C8();
  if (v5 <= 0x3F)
  {
    result = sub_1D2878F18();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D27C30DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = v6 - 1;
  v8 = *(v4 + 80);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v8 | 7;
  v11 = a2 - v9;
  if (a2 <= v9)
  {
    goto LABEL_29;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) - (((-25 - v8) | v8) + ((-9 - v8) | v10)) - 2;
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 < 2)
    {
LABEL_29:
      if ((v7 & 0x80000000) != 0)
      {
        v19 = a1 + v10 + 8;
        if ((v5 & 0x80000000) != 0)
        {
          v21 = (*(v4 + 48))((v8 + (((v19 & ~v10) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8);
        }

        else
        {
          v20 = *((v19 & ~v10) + 8);
          if (v20 >= 0xFFFFFFFF)
          {
            LODWORD(v20) = -1;
          }

          v21 = v20 + 1;
        }

        if (v21 >= 2)
        {
          return v21 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_29;
  }

LABEL_18:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (*(*(*(a3 + 16) - 8) + 64) - (((-25 - v8) | v8) + ((-9 - v8) | v10)) != 2)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v9 + (v12 | v17) + 1;
}

void sub_1D27C32E0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = v9 - 1;
  if ((v9 - 1) <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v9 - 1;
  }

  v12 = *(v6 + 80);
  v13 = ((v12 + 24) & ~v12) + *(*(*(a4 + 16) - 8) + 64);
  v14 = v13 + ((v12 + 8) & ~(v12 | 7));
  v15 = a3 >= v11;
  v16 = a3 - v11;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v20 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v20))
      {
        v17 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v17 = v21;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v11 < a2)
  {
    v18 = ~v11 + a2;
    if (v14 < 4)
    {
      v19 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v22 = v18 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_61:
              if (v17 == 2)
              {
                *&a1[v14] = v19;
              }

              else
              {
                *&a1[v14] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v17)
    {
      a1[v14] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v14] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v17)
  {
    goto LABEL_33;
  }

  a1[v14] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v10 & 0x80000000) != 0)
  {
    v24 = (&a1[(v12 | 7) + 8] & ~(v12 | 7));
    if (v10 >= a2)
    {
      if ((v8 & 0x80000000) != 0)
      {
        v28 = *(v7 + 56);
        v29 = a2 + 1;

        v28((v12 + 8 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v12, v29);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v24 = a2 - 0x7FFFFFFF;
        *((&a1[(v12 | 7) + 8] & ~(v12 | 7)) + 8) = 0;
      }

      else
      {
        *((&a1[(v12 | 7) + 8] & ~(v12 | 7)) + 8) = a2;
      }
    }

    else
    {
      if (v13 <= 3)
      {
        v25 = ~(-1 << (8 * v13));
      }

      else
      {
        v25 = -1;
      }

      if (v13)
      {
        v26 = v25 & (a2 - v9);
        if (v13 <= 3)
        {
          v27 = v13;
        }

        else
        {
          v27 = 4;
        }

        bzero(v24, v13);
        if (v27 > 2)
        {
          if (v27 == 3)
          {
            *v24 = v26;
            v24[2] = BYTE2(v26);
          }

          else
          {
            *v24 = v26;
          }
        }

        else if (v27 == 1)
        {
          *v24 = v26;
        }

        else
        {
          *v24 = v26;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v23 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v23 = a2 - 1;
    }

    *a1 = v23;
  }
}

int *ConversationContextItem.init(timestamp:messageContent:senderHandle:senderDisplayName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1D2583794(a1, a8);
  result = type metadata accessor for ConversationContextItem(0);
  v16 = (a8 + result[5]);
  *v16 = a2;
  v16[1] = a3;
  v17 = (a8 + result[6]);
  *v17 = a4;
  v17[1] = a5;
  v18 = (a8 + result[7]);
  *v18 = a6;
  v18[1] = a7;
  return result;
}

uint64_t type metadata accessor for ConversationContextItem(uint64_t a1)
{
  result = qword_1EC6E1F30;
  if (!qword_1EC6E1F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D27C3744(uint64_t a1)
{
  sub_1D27C37D0(319);
  if (v1 <= 0x3F)
  {
    sub_1D238DF94();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D27C37D0(uint64_t a1)
{
  if (!qword_1ED8A6CB8)
  {
    sub_1D2871798();
    v1 = sub_1D2878F18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8A6CB8);
    }
  }
}

void sub_1D27C3828(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F58, &qword_1D28A6DC8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - v4;
  v6 = objc_opt_self();
  v7 = *MEMORY[0x1E6987608];
  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_1D27C4170;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D27BC4E0;
  aBlock[3] = &block_descriptor_48;
  v10 = _Block_copy(aBlock);

  [v6 requestAccessForMediaType:v7 completionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_1D27C39F4()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t sub_1D27C3B30()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t type metadata accessor for CameraAuthViewModel(uint64_t a1)
{
  result = qword_1EC6E1F48;
  if (!qword_1EC6E1F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D27C3D80()
{
  v0[2] = sub_1D2878568();
  v0[3] = sub_1D2878558();
  v2 = sub_1D28784F8();
  v0[4] = v2;
  v0[5] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D27C3E18, v2, v1);
}

uint64_t sub_1D27C3E18()
{
  v1 = [objc_opt_self() authorizationStatusForMediaType_];
  if (v1)
  {
    if (v1 == 3)
    {
    }

    else
    {

      sub_1D22D76CC();
      swift_willThrowTypedImpl();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v3 = sub_1D2878558();
    v0[6] = v3;
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_1D27C3F9C;
    v5 = MEMORY[0x1E69E85E0];
    v6 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DDE0](v0 + 8, v3, v5, 0xD00000000000001CLL, 0x80000001D28C3310, sub_1D27C3828, 0, v6);
  }
}

uint64_t sub_1D27C3F9C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1D27C40E0, v3, v2);
}

uint64_t sub_1D27C40E0()
{

  if ((*(v0 + 64) & 1) == 0)
  {
    sub_1D22D76CC();
    swift_willThrowTypedImpl();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D27C4170(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F58, &qword_1D28A6DC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F58, &qword_1D28A6DC8);
  return sub_1D2878518();
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

unint64_t sub_1D27C4244()
{
  result = qword_1EC6E1F60;
  if (!qword_1EC6E1F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1F60);
  }

  return result;
}

uint64_t sub_1D27C42FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D27C4350(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D27C43A8()
{
  result = qword_1EC6E1F68;
  if (!qword_1EC6E1F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1F70, &qword_1D28A6F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1F68);
  }

  return result;
}

double sub_1D27C440C@<D0>(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  sub_1D2876FE8();
  sub_1D2876FE8();
  sub_1D2876FF8();
  sub_1D2876FE8();
  sub_1D2876FE8();
  sub_1D2876FF8();
  sub_1D2876558();
  v18.origin.x = a3;
  v18.origin.y = a4;
  v18.size.width = a5;
  v18.size.height = a6;
  CGRectGetMidX(v18);
  v19.origin.x = a3;
  v19.origin.y = a4;
  v19.size.width = a5;
  v19.size.height = a6;
  CGRectGetMidY(v19);
  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  CGRectGetWidth(v20);
  sub_1D2876548();
  result = *&v15;
  *a2 = v15;
  *(a2 + 16) = v16;
  *(a2 + 32) = v17;
  return result;
}

double sub_1D27C4574@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  result = *(v2 + 24) + a2;
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = result;
  return result;
}

double sub_1D27C4594@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1D27C440C(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_1D27C4604(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1D2874228();
  return sub_1D24DA5F4;
}

uint64_t sub_1D27C468C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D27C4854();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1D27C46F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D27C4854();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1D27C4754(uint64_t a1)
{
  v2 = sub_1D27C4854();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_1D27C47A4()
{
  result = qword_1ED89E5B0;
  if (!qword_1ED89E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89E5B0);
  }

  return result;
}

unint64_t sub_1D27C47FC()
{
  result = qword_1ED89E5A0;
  if (!qword_1ED89E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89E5A0);
  }

  return result;
}

unint64_t sub_1D27C4854()
{
  result = qword_1ED89E598;
  if (!qword_1ED89E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89E598);
  }

  return result;
}

unint64_t sub_1D27C48C4()
{
  result = qword_1ED89E5A8;
  if (!qword_1ED89E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89E5A8);
  }

  return result;
}

uint64_t sub_1D27C4918(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1D27C4960(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D27C49D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D27C7734(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel, &unk_1D289BAE8);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 56);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_1D27C4A80(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D27C7734(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel, &unk_1D289BAE8);
  sub_1D28719D8();

  return result;
}

uint64_t sub_1D27C4B50@<X0>(uint64_t a1@<X8>)
{
  v175 = a1;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F78, &qword_1D28A7198);
  v172 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v163 = &v156 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F80, &qword_1D28A71A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v174 = &v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v179 = &v156 - v6;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F88, &qword_1D28A71A8);
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v166 = &v156 - v7;
  v158 = sub_1D2877568();
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v165 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v164 = &v156 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F90, &qword_1D28A71B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v173 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v190 = &v156 - v14;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1F98, &qword_1D28A71B8);
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v167 = &v156 - v15;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1FA0, &qword_1D28A71C0);
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v160 = &v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v159 = &v156 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1FA8, &qword_1D28A71C8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v188 = &v156 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v194 = &v156 - v22;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC998, &unk_1D288E3E0);
  v189 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v156 = &v156 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v176 = &v156 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE810, &qword_1D28A1730);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v186 = &v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v187 = &v156 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v193 = &v156 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v192 = &v156 - v33;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99D8, &unk_1D28A71D0);
  MEMORY[0x1EEE9AC00](v177);
  v185 = &v156 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v156 - v36;
  v38 = v1[1];
  v196 = *v1;
  v197 = v38;
  v198 = *(v1 + 32);
  v39 = sub_1D2875798();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v46 = qword_1ED8B0058;
  v47 = swift_allocObject();
  v48 = v1[1];
  *(v47 + 16) = *v1;
  *(v47 + 32) = v48;
  *(v47 + 48) = *(v1 + 32);
  MEMORY[0x1EEE9AC00](v47);
  *(&v156 - 8) = v39;
  *(&v156 - 7) = v41;
  *(&v156 - 48) = v43 & 1;
  *(&v156 - 5) = v45;
  *(&v156 - 4) = v46;
  v182 = v46;
  *(&v156 - 3) = 0xD000000000000014;
  *(&v156 - 2) = 0x80000001D28B90C0;
  sub_1D2870F78();
  sub_1D27C7514(&v196, &v195);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8, &unk_1D288C480);
  v50 = sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8, &unk_1D288C480, MEMORY[0x1E697D658]);
  v181 = v49;
  v180 = v50;
  sub_1D2877368();

  v51 = v196;
  v52 = sub_1D269650C();
  KeyPath = swift_getKeyPath();
  v54 = swift_allocObject();
  *(v54 + 16) = v52 & 1;
  v55 = &v37[*(v177 + 36)];
  *v55 = KeyPath;
  v55[1] = sub_1D22C03D8;
  v55[2] = v54;
  swift_getKeyPath();
  v195 = v51;
  v184 = sub_1D27C7734(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel, &unk_1D289BAE8);
  sub_1D28719E8();

  Strong = swift_unknownObjectWeakLoadStrong();
  v191 = v37;
  if (Strong && (v57 = sub_1D245E898(), swift_unknownObjectRelease(), v57))
  {
    v58 = sub_1D2875798();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v65 = swift_allocObject();
    v66 = v197;
    *(v65 + 16) = v196;
    *(v65 + 32) = v66;
    *(v65 + 48) = v198;
    MEMORY[0x1EEE9AC00](v65);
    *(&v156 - 8) = v58;
    *(&v156 - 7) = v60;
    *(&v156 - 48) = v62 & 1;
    v67 = v182;
    *(&v156 - 5) = v64;
    *(&v156 - 4) = v67;
    *(&v156 - 3) = 0xD000000000000013;
    *(&v156 - 2) = 0x80000001D28B9060;
    sub_1D27C7514(&v196, &v195);
    sub_1D2870F78();
    v68 = v176;
    sub_1D2877368();

    v69 = v183;
    (*(v189 + 32))(v192, v68, v183);
    v70 = 0;
  }

  else
  {
    v70 = 1;
    v69 = v183;
  }

  v71 = v169;
  v72 = *(v189 + 56);
  v73 = 1;
  v72(v192, v70, 1, v69);
  if (sub_1D269680C())
  {
    v74 = swift_allocObject();
    v75 = v197;
    *(v74 + 16) = v196;
    *(v74 + 32) = v75;
    *(v74 + 48) = v198;
    MEMORY[0x1EEE9AC00](v74);
    *(&v156 - 2) = &v196;
    sub_1D27C7514(&v196, &v195);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1FC8, &qword_1D28A7288);
    sub_1D27C7590();
    sub_1D2877368();
    swift_getKeyPath();
    v195 = v51;
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong() && (v76 = sub_1D2302E00(), swift_unknownObjectRelease(), (v76 & 1) != 0) || (swift_getKeyPath(), v195 = v51, sub_1D28719E8(), , !swift_unknownObjectWeakLoadStrong()) || (v77 = off_1F4DC5600, type metadata accessor for ComposingViewModel(0), v78 = v77(), swift_unknownObjectRelease(), (v78 & 1) == 0))
    {
      v79 = 1;
    }

    else
    {
      v79 = sub_1D269650C();
    }

    v80 = swift_getKeyPath();
    v81 = swift_allocObject();
    *(v81 + 16) = v79 & 1;
    v82 = v160;
    (*(v161 + 32))(v160, v167, v162);
    v83 = (v82 + *(v71 + 36));
    *v83 = v80;
    v83[1] = sub_1D22C04E0;
    v83[2] = v81;
    v84 = v159;
    sub_1D22EC9BC(v82, v159, &qword_1EC6E1FA0, &qword_1D28A71C0);
    sub_1D22EC9BC(v84, v194, &qword_1EC6E1FA0, &qword_1D28A71C0);
    v73 = 0;
  }

  v85 = 1;
  (*(v168 + 56))(v194, v73, 1, v71);
  if (sub_1D26969A0())
  {
    v86 = sub_1D2875798();
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = swift_allocObject();
    v169 = v72;
    v94 = v197;
    *(v93 + 16) = v196;
    *(v93 + 32) = v94;
    *(v93 + 48) = v198;
    MEMORY[0x1EEE9AC00](v93);
    *(&v156 - 8) = v86;
    *(&v156 - 7) = v88;
    *(&v156 - 48) = v90 & 1;
    v95 = v182;
    *(&v156 - 5) = v92;
    *(&v156 - 4) = v95;
    *(&v156 - 3) = 0x6C69636E6570;
    *(&v156 - 2) = 0xE600000000000000;
    sub_1D27C7514(&v196, &v195);
    sub_1D2870F78();
    v96 = v176;
    sub_1D2877368();
    v69 = v183;

    v72 = v169;

    (*(v189 + 32))(v193, v96, v69);
    v85 = 0;
  }

  v97 = 1;
  v72(v193, v85, 1, v69);
  swift_getKeyPath();
  v195 = v51;
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    if (os_variant_has_internal_content())
    {
      v98 = v164;
      sub_1D2877558();
      v99 = sub_1D2875798();
      v101 = v100;
      v103 = v102;
      v105 = v104;
      v106 = swift_allocObject();
      v107 = v197;
      *(v106 + 16) = v196;
      *(v106 + 32) = v107;
      *(v106 + 48) = v198;
      MEMORY[0x1EEE9AC00](v106);
      *(&v156 - 8) = v99;
      *(&v156 - 7) = v101;
      *(&v156 - 48) = v103 & 1;
      v108 = v182;
      *(&v156 - 5) = v105;
      *(&v156 - 4) = v108;
      *(&v156 - 3) = 0x6275622E74786574;
      *(&v156 - 2) = 0xEB00000000656C62;
      sub_1D27C7514(&v196, &v195);
      sub_1D2870F78();
      v109 = v176;
      sub_1D2877368();

      v110 = v157;
      v111 = *(v157 + 16);
      v112 = v165;
      v113 = v158;
      v111(v165, v98, v158);
      v114 = v189;
      v115 = *(v189 + 16);
      v184 = v51;
      v116 = v156;
      v117 = v109;
      v118 = v183;
      v115(v156, v117, v183);
      v111(v166, v112, v113);
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1FC0, &qword_1D28A7280);
      v120 = v166;
      v115(&v166[*(v119 + 48)], v116, v118);
      v121 = *(v114 + 8);
      v121(v176, v118);
      v122 = *(v110 + 8);
      v122(v164, v113);
      v123 = v116;
      v51 = v184;
      v121(v123, v118);
      v122(v165, v113);
      sub_1D22EC9BC(v120, v190, &qword_1EC6E1F88, &qword_1D28A71A8);
      v97 = 0;
    }
  }

  v124 = v191;
  v125 = 1;
  (*(v170 + 56))(v190, v97, 1, v171);
  if (sub_1D269669C())
  {
    v126 = sub_1D2875798();
    v128 = v127;
    v130 = v129;
    v132 = v131;
    v133 = *(v51 + 16);
    v134 = *(v51 + 24);
    v135 = swift_allocObject();
    v136 = v197;
    *(v135 + 16) = v196;
    *(v135 + 32) = v136;
    *(v135 + 48) = v198;
    MEMORY[0x1EEE9AC00](v135);
    *(&v156 - 8) = v126;
    *(&v156 - 7) = v128;
    *(&v156 - 48) = v130 & 1;
    v137 = v182;
    *(&v156 - 5) = v132;
    *(&v156 - 4) = v137;
    *(&v156 - 3) = v133;
    *(&v156 - 2) = v134;
    v124 = v191;
    sub_1D27C7514(&v196, &v195);
    sub_1D2870F78();
    v138 = v163;
    sub_1D2877368();

    LOBYTE(v128) = sub_1D269650C();
    v139 = swift_getKeyPath();
    v140 = swift_allocObject();
    *(v140 + 16) = v128 & 1;
    v141 = (v138 + *(v177 + 36));
    *v141 = v139;
    v141[1] = sub_1D22C04E0;
    v141[2] = v140;
    v142 = (v138 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1FB8, &unk_1D28A7240) + 36));
    v143 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FF0, &qword_1D288C4C0) + 28);
    sub_1D2875968();
    v144 = sub_1D2875998();
    (*(*(v144 - 8) + 56))(v142 + v143, 0, 1, v144);
    *v142 = swift_getKeyPath();
    *(v138 + *(v178 + 36)) = sub_1D2875D98();
    sub_1D22EC9BC(v138, v179, &qword_1EC6E1F78, &qword_1D28A7198);
    v125 = 0;
  }

  v145 = v179;
  (*(v172 + 56))(v179, v125, 1, v178);
  v146 = v185;
  sub_1D22BD1D0(v124, v185, &qword_1EC6D99D8, &unk_1D28A71D0);
  v147 = v187;
  sub_1D22BD1D0(v192, v187, &qword_1EC6DE810, &qword_1D28A1730);
  v148 = v188;
  sub_1D22BD1D0(v194, v188, &qword_1EC6E1FA8, &qword_1D28A71C8);
  v149 = v186;
  sub_1D22BD1D0(v193, v186, &qword_1EC6DE810, &qword_1D28A1730);
  v150 = v190;
  v151 = v173;
  sub_1D22BD1D0(v190, v173, &qword_1EC6E1F90, &qword_1D28A71B0);
  v152 = v174;
  sub_1D22BD1D0(v145, v174, &qword_1EC6E1F80, &qword_1D28A71A0);
  v153 = v175;
  sub_1D22BD1D0(v146, v175, &qword_1EC6D99D8, &unk_1D28A71D0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1FB0, &qword_1D28A7238);
  sub_1D22BD1D0(v147, v153 + v154[12], &qword_1EC6DE810, &qword_1D28A1730);
  sub_1D22BD1D0(v148, v153 + v154[16], &qword_1EC6E1FA8, &qword_1D28A71C8);
  sub_1D22BD1D0(v149, v153 + v154[20], &qword_1EC6DE810, &qword_1D28A1730);
  sub_1D22BD1D0(v151, v153 + v154[24], &qword_1EC6E1F90, &qword_1D28A71B0);
  sub_1D22BD1D0(v152, v153 + v154[28], &qword_1EC6E1F80, &qword_1D28A71A0);
  sub_1D22BD238(v145, &qword_1EC6E1F80, &qword_1D28A71A0);
  sub_1D22BD238(v150, &qword_1EC6E1F90, &qword_1D28A71B0);
  sub_1D22BD238(v193, &qword_1EC6DE810, &qword_1D28A1730);
  sub_1D22BD238(v194, &qword_1EC6E1FA8, &qword_1D28A71C8);
  sub_1D22BD238(v192, &qword_1EC6DE810, &qword_1D28A1730);
  sub_1D22BD238(v191, &qword_1EC6D99D8, &unk_1D28A71D0);
  sub_1D22BD238(v152, &qword_1EC6E1F80, &qword_1D28A71A0);
  sub_1D22BD238(v151, &qword_1EC6E1F90, &qword_1D28A71B0);
  sub_1D22BD238(v186, &qword_1EC6DE810, &qword_1D28A1730);
  sub_1D22BD238(v188, &qword_1EC6E1FA8, &qword_1D28A71C8);
  sub_1D22BD238(v187, &qword_1EC6DE810, &qword_1D28A1730);
  return sub_1D22BD238(v185, &qword_1EC6D99D8, &unk_1D28A71D0);
}

void sub_1D27C62D8(unint64_t *a1)
{
  swift_getKeyPath();
  sub_1D27C7734(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel, &unk_1D289BAE8);
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D231F5E8();
    swift_unknownObjectRelease();
  }

  v1 = sub_1D23C7CA8();
  v2 = sub_1D2878068();
  v3 = sub_1D2878068();
  v4 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v1 + 48))
  {
    sub_1D2870F68();
    v5 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E8054(v5, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  v7 = sub_1D2878068();
  v8 = sub_1D2418030(v4);

  if (v8)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22ED23C();
    sub_1D27C7734(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey, &unk_1D287E68C);
    v9 = sub_1D2877E78();
  }

  else
  {
    v9 = 0;
  }

  [objc_opt_self() asyncSendSignal:v3 toChannel:v2 withNullableUniqueStringID:v7 withPayload:v9];
}

void sub_1D27C653C(unint64_t *a1)
{
  swift_getKeyPath();
  sub_1D27C7734(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel, &unk_1D289BAE8);
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D2313D08();
    swift_unknownObjectRelease();
  }

  v1 = sub_1D23C7CA8();
  v2 = sub_1D2878068();
  v3 = sub_1D2878068();
  v4 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v1 + 48))
  {
    sub_1D2870F68();
    v5 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E8054(v5, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  v7 = sub_1D2878068();
  v8 = sub_1D2418030(v4);

  if (v8)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22ED23C();
    sub_1D27C7734(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey, &unk_1D287E68C);
    v9 = sub_1D2877E78();
  }

  else
  {
    v9 = 0;
  }

  [objc_opt_self() asyncSendSignal:v3 toChannel:v2 withNullableUniqueStringID:v7 withPayload:v9];
}

uint64_t sub_1D27C67A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1FE8, &qword_1D28A7298);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v50 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1FF0, &unk_1D28A72A0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8, &unk_1D288C480);
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v50 - v6;
  v7 = sub_1D2875628();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1FE0, &qword_1D28A7290);
  MEMORY[0x1EEE9AC00](v50);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v16 = *a1;
  swift_getKeyPath();
  v60 = v16;
  sub_1D27C7734(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel, &unk_1D289BAE8);
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = sub_1D2302E00();
    swift_unknownObjectRelease();
    if (v17)
    {
      v61 = *(a1 + 16);
      v18 = a1[1];
      v60 = v18;
      if (v61 == 1)
      {
        v19 = v18;
      }

      else
      {
        sub_1D22BD1D0(&v60, v58, &qword_1EC6DC9B8, &qword_1D288E4D0);
        sub_1D2878A28();
        v35 = sub_1D28762E8();
        sub_1D2873BE8();

        sub_1D2875618();
        swift_getAtKeyPath();
        sub_1D22BD238(&v60, &qword_1EC6DC9B8, &qword_1D288E4D0);
        (*(v8 + 8))(v10, v7);
        v19 = v59;
      }

      v23 = v51;
      if (v19 == 5 || v19 == 6)
      {
        v36 = sub_1D2875798();
        v38 = v37;
        v40 = v39;
        if (qword_1ED89E0E8 == -1)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v36 = sub_1D2875798();
        v38 = v41;
        v40 = v42;
        if (qword_1ED89E0E8 == -1)
        {
LABEL_20:
          MEMORY[0x1EEE9AC00](v36);
          *(&v50 - 8) = v43;
          *(&v50 - 7) = v38;
          *(&v50 - 48) = v44 & 1;
          *(&v50 - 5) = v40;
          *(&v50 - 4) = 0;
          *(&v50 - 3) = 0;
          *(&v50 - 2) = v45;
          MEMORY[0x1EEE9AC00](v43);
          *(&v50 - 2) = 0x72616D6B63656863;
          *(&v50 - 1) = 0xE90000000000006BLL;
          sub_1D2877248();
          goto LABEL_21;
        }
      }

      v49 = v36;
      swift_once();
      v36 = v49;
      goto LABEL_20;
    }
  }

  v61 = *(a1 + 16);
  v20 = a1[1];
  v60 = v20;
  if (v61 == 1)
  {
    v21 = v20;
  }

  else
  {
    sub_1D22BD1D0(&v60, v58, &qword_1EC6DC9B8, &qword_1D288E4D0);
    sub_1D2878A28();
    v22 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22BD238(&v60, &qword_1EC6DC9B8, &qword_1D288E4D0);
    (*(v8 + 8))(v10, v7);
    v21 = v59;
  }

  v23 = v51;
  if (v21 != 5 && v21 != 6)
  {
    v24 = sub_1D2875798();
    v26 = v33;
    v28 = v34;
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  v24 = sub_1D2875798();
  v26 = v25;
  v28 = v27;
  if (qword_1ED89E0E8 != -1)
  {
LABEL_22:
    v48 = v24;
    swift_once();
    v24 = v48;
  }

LABEL_11:
  MEMORY[0x1EEE9AC00](v24);
  *(&v50 - 8) = v29;
  *(&v50 - 7) = v26;
  *(&v50 - 48) = v30 & 1;
  *(&v50 - 5) = v28;
  *(&v50 - 4) = 0;
  *(&v50 - 3) = 0;
  *(&v50 - 2) = v31;
  MEMORY[0x1EEE9AC00](v29);
  *(&v50 - 2) = 0xD000000000000015;
  *(&v50 - 1) = v32;
  sub_1D2877248();
  v15 = v12;
LABEL_21:

  v46 = v53;
  (*(v53 + 16))(v54, v23, v5);
  swift_storeEnumTagMultiPayload();
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8, &unk_1D288C480, MEMORY[0x1E697D658]);
  sub_1D2875AF8();
  (*(v46 + 8))(v23, v5);
  sub_1D22BD1D0(v15, v55, &qword_1EC6E1FE0, &qword_1D28A7290);
  swift_storeEnumTagMultiPayload();
  sub_1D27C7614();
  sub_1D2875AF8();
  return sub_1D22BD238(v15, &qword_1EC6E1FE0, &qword_1D28A7290);
}

double sub_1D27C725C(uint64_t *a1)
{
  swift_getKeyPath();
  sub_1D27C7734(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel, &unk_1D289BAE8);
  sub_1D28719E8();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1D22F7DF4();
    v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context);
    v5 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_accessibilityDescription);
    v6 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_accessibilityDescription + 8);
    sub_1D2870F68();
    v7 = sub_1D2673EFC();
    sub_1D22CC500(v5, v6, v7, v8);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D27C7388(uint64_t *a1)
{
  v2 = sub_1D2871CA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_getKeyPath();
  v8[1] = v6;
  sub_1D27C7734(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel, &unk_1D289BAE8);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(v3 + 104))(v5, *MEMORY[0x1E699C1D8], v2);
    sub_1D2333D2C(v5);
    swift_unknownObjectRelease();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

unint64_t sub_1D27C7590()
{
  result = qword_1EC6E1FD0;
  if (!qword_1EC6E1FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1FC8, &qword_1D28A7288);
    sub_1D27C7614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1FD0);
  }

  return result;
}

unint64_t sub_1D27C7614()
{
  result = qword_1EC6E1FD8;
  if (!qword_1EC6E1FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1FE0, &qword_1D28A7290);
    sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8, &unk_1D288C480, MEMORY[0x1E697D658]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1FD8);
  }

  return result;
}

uint64_t objectdestroyTm_37()
{

  sub_1D22EE66C(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D27C7734(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t (*sub_1D27C77BC(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = a3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v23 = result;
    v24 = a3;
    v22 = v5;
    while (v7 < *(v4 + 16))
    {
      sub_1D22D7044(v8, v28);
      v10 = v6(v28);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_0(v28);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_1D22D79FC(v28, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D23D8528(0, *(v9 + 16) + 1, 1);
          v9 = v29;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1D23D8528((v12 > 1), v13 + 1, 1);
        }

        v14 = v26;
        v15 = v27;
        v16 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
        v17 = MEMORY[0x1EEE9AC00](v16);
        v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v20 + 16))(v19, v17);
        sub_1D2564390(v13, v19, &v29, v14, v15);
        result = __swift_destroy_boxed_opaque_existential_0(v25);
        v9 = v29;
        v6 = v23;
        v4 = v24;
        v5 = v22;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_0(v28);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

void sub_1D27C79EC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v29 = a5;
  v40 = a4(0);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v39 = &v29 - v13;
  v36 = *(a3 + 16);
  if (v36)
  {
    v14 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x1E69E7CC0];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = *(v11 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v11;
      v20 = a1;
      v21 = v39;
      (*(v11 + 16))(v39, v18, v40, v12);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v5)
      {
        (*v33)(v39, v40);

        return;
      }

      if (v23)
      {
        v24 = *v34;
        (*v34)(v37, v39, v40);
        v25 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29(0, *(v25 + 16) + 1, 1);
          v25 = v41;
        }

        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        if (v28 >= v27 >> 1)
        {
          v29(v27 > 1, v28 + 1, 1);
          v25 = v41;
        }

        *(v25 + 16) = v28 + 1;
        v38 = v25;
        v24((v25 + v15 + v28 * v16), v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        (*v33)(v39, v40);
        a3 = v17;
      }

      ++v14;
      v11 = v19;
      if (v36 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
LABEL_14:
  }
}

uint64_t VisualSummarizationClient.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_1D2873DE8();
  swift_allocObject();
  *(v0 + 24) = sub_1D2873DD8();
  *(v0 + 16) = sub_1D27D8C8C() & 1;
  return v0;
}

Swift::Void __swiftcall VisualSummarizationClient.prewarm()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_1D2873D98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  v12 = MEMORY[0x1E69C9AC0];
  if (!*(v0 + 16))
  {
    v12 = MEMORY[0x1E69C9AC8];
  }

  (*(v5 + 104))(v11, *v12, v4, v9);
  sub_1D28785B8();
  v13 = sub_1D28785F8();
  (*(*(v13 - 8) + 56))(v3, 0, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v7, v11, v4);
  v15 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v14;
  (*(v5 + 32))(&v16[v15], v7, v4);
  sub_1D26D0310(0, 0, v3, &unk_1D28A72C0, v16);

  sub_1D22BD238(v3, &qword_1EC6D8E60, &qword_1D28811F0);
  (*(v5 + 8))(v11, v4);
}

uint64_t VisualSummarizationClient.summarizeContext(from:textualContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = sub_1D2873D88();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  v8 = sub_1D2873D08();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  v9 = sub_1D2871818();
  v6[20] = v9;
  v6[21] = *(v9 - 8);
  v6[22] = swift_task_alloc();
  v10 = sub_1D2873EB8();
  v6[23] = v10;
  v6[24] = *(v10 - 8);
  v6[25] = swift_task_alloc();
  v11 = sub_1D2873D28();
  v6[26] = v11;
  v6[27] = *(v11 - 8);
  v6[28] = swift_task_alloc();
  v12 = sub_1D2873CB8();
  v6[29] = v12;
  v6[30] = *(v12 - 8);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D27C8284, 0, 0);
}

uint64_t sub_1D27C8284()
{
  v61 = v0;
  if (qword_1ED8A4928 == -1)
  {
    if (sub_1D23CD2F4())
    {
      goto LABEL_3;
    }

LABEL_19:
    v51 = v0[8];
    *v51 = 0;
    *(v51 + 8) = 0;
    *(v51 + 16) = 0;
    *(v51 + 24) = 1;
    *(v51 + 32) = 0;
LABEL_20:

    v52 = v0[1];

    return v52();
  }

  swift_once();
  if ((sub_1D23CD2F4() & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_3:
  sub_1D2872588();
  sub_1D2870F68();
  sub_1D2870F68();
  v1 = sub_1D2873CA8();
  v2 = sub_1D28789F8();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[34];
  v6 = v0[29];
  v5 = v0[30];
  if (v3)
  {
    v7 = v0[11];
    v55 = v0[12];
    v9 = v0[9];
    v8 = v0[10];
    v57 = v0[34];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v59 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1D23D7C84(v9, v8, &v59);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1D23D7C84(v7, v55, &v59);
    _os_log_impl(&dword_1D226E000, v1, v2, "summarizeContext inputs — title: %s - textualContext: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v11, -1, -1);
    MEMORY[0x1D38A3520](v10, -1, -1);

    v12 = *(v5 + 8);
    v12(v57, v6);
  }

  else
  {

    v12 = *(v5 + 8);
    v12(v4, v6);
  }

  v0[35] = v12;
  v14 = v0[11];
  v13 = v0[12];
  v15 = v0[10];
  v59 = v0[9];
  v60 = v15;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](32, 0xE100000000000000);
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v14, v13);

  v16 = sub_1D27BA78C(v59, v60);

  if (v16 < 10)
  {
    sub_1D2872588();
    v17 = sub_1D2873CA8();
    v18 = sub_1D28789F8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = 10;
      _os_log_impl(&dword_1D226E000, v17, v18, "Unable to summarize the context, combined text is less than %ld words. Falling back to the original text.", v19, 0xCu);
      MEMORY[0x1D38A3520](v19, -1, -1);
    }

    v20 = v0[32];
    v21 = v0[29];
    v23 = v0[11];
    v22 = v0[12];
    v24 = v0[8];

    v12(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D287F500;
    *(v25 + 32) = v23;
    *(v25 + 40) = v22;
    *v24 = v25;
    *(v24 + 8) = v23;
    *(v24 + 16) = v22;
    *(v24 + 24) = 1;
    *(v24 + 32) = 0;
    swift_bridgeObjectRetain_n();
    goto LABEL_20;
  }

  sub_1D2870F68();
  sub_1D2870F68();
  sub_1D2873D18();
  sub_1D2872588();
  sub_1D2870F68();
  sub_1D2870F68();
  v26 = sub_1D2873CA8();
  v27 = sub_1D28789F8();

  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[33];
  v30 = v0[29];
  if (v28)
  {
    v54 = v0[11];
    v56 = v0[12];
    v32 = v0[9];
    v31 = v0[10];
    v58 = v0[33];
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v59 = v34;
    *v33 = 136315394;
    *(v33 + 4) = sub_1D23D7C84(v32, v31, &v59);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_1D23D7C84(v54, v56, &v59);
    _os_log_impl(&dword_1D226E000, v26, v27, "summarizeContext inputs — title: %s - textualContext: %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v34, -1, -1);
    MEMORY[0x1D38A3520](v33, -1, -1);

    v35 = v58;
  }

  else
  {

    v35 = v29;
  }

  v12(v35, v30);
  v37 = v0[21];
  v36 = v0[22];
  v38 = v0[20];
  v39 = v0[15];
  v40 = v0[16];
  v41 = v0[13];
  v42 = v0[14];
  sub_1D2871808();
  v43 = sub_1D28717B8();
  v45 = v44;
  v0[36] = v44;
  (*(v37 + 8))(v36, v38);
  v46 = MEMORY[0x1E69C9AB0];
  if (!*(v41 + 16))
  {
    v46 = MEMORY[0x1E69C9AB8];
  }

  (*(v39 + 104))(v40, *v46, v42);
  sub_1D2873CF8();
  v47 = swift_task_alloc();
  v0[37] = v47;
  *v47 = v0;
  v47[1] = sub_1D27C8914;
  v48 = v0[28];
  v49 = v0[25];
  v50 = v0[19];

  return MEMORY[0x1EEE33600](v49, v43, v45, v48, v50);
}

uint64_t sub_1D27C8914()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 304) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1D27C8BF8;
  }

  else
  {
    v5 = sub_1D27C8AA8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D27C8AA8()
{
  v17 = v0;
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  sub_1D27CB754(v4, *(v0 + 88), *(v0 + 96), 0, &v13);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v14;
  v8 = v15;
  v9 = v16;
  v10 = *(v0 + 64);
  *v10 = v13;
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  *(v10 + 32) = v9;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D27C8BF8(uint64_t a1)
{
  v49 = v1;
  v2 = *(v1 + 304);
  sub_1D2872588();
  v3 = v2;
  v4 = v2;
  v5 = sub_1D2873CA8();
  v6 = sub_1D2878A18();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 304);
    v46 = *(v1 + 248);
    v47 = *(v1 + 280);
    v45 = *(v1 + 232);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v48 = v9;
    *v8 = 136315650;
    swift_getErrorValue();
    v10 = sub_1D2879748();
    v12 = sub_1D23D7C84(v10, v11, &v48);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = sub_1D28714A8();
    v14 = [v13 domain];

    v15 = sub_1D28780A8();
    v17 = v16;

    v18 = sub_1D23D7C84(v15, v17, &v48);

    *(v8 + 14) = v18;
    *(v8 + 22) = 2048;
    v19 = sub_1D28714A8();
    v20 = [v19 code];

    *(v8 + 24) = v20;
    _os_log_impl(&dword_1D226E000, v5, v6, "Unable to summarize Notes context with error: %s - domain: %s - code: %ld. Falling back to returning the original text.", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v9, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);

    v47(v46, v45);
  }

  else
  {
    v21 = *(v1 + 304);
    v22 = *(v1 + 280);
    v23 = *(v1 + 248);
    v24 = *(v1 + 232);

    v22(v23, v24);
  }

  v25 = *(v1 + 304);
  *(v1 + 40) = v25;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  type metadata accessor for SummarizationClientError(0);
  if ((swift_dynamicCast() & 1) != 0 && (v27 = *(v1 + 48), v28 = sub_1D27D1268(v27), v27, v28))
  {
    v30 = *(v1 + 216);
    v29 = *(v1 + 224);
    v31 = *(v1 + 208);

    (*(v30 + 8))(v29, v31);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  else
  {
    v36 = *(v1 + 304);
    v38 = *(v1 + 216);
    v37 = *(v1 + 224);
    v39 = *(v1 + 208);
    v41 = *(v1 + 88);
    v40 = *(v1 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1D287F500;
    *(v32 + 32) = v41;
    *(v32 + 40) = v40;
    sub_1D2870F68();

    (*(v38 + 8))(v37, v39);
    v33 = *(v1 + 88);
    v34 = *(v1 + 96);
    sub_1D2870F68();
    v35 = 1;
  }

  v42 = *(v1 + 64);
  *v42 = v32;
  *(v42 + 8) = v33;
  *(v42 + 16) = v34;
  *(v42 + 24) = v35;
  *(v42 + 32) = 0;

  v43 = *(v1 + 8);

  return v43();
}

uint64_t VisualSummarizationClient.summarizeContext(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1D2873D88();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_1D2873D08();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = sub_1D2871818();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v8 = sub_1D2873EB8();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  v9 = sub_1D2873D28();
  v4[24] = v9;
  v4[25] = *(v9 - 8);
  v4[26] = swift_task_alloc();
  v10 = sub_1D2873CB8();
  v4[27] = v10;
  v4[28] = *(v10 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D27C92C0, 0, 0);
}

uint64_t sub_1D27C92C0()
{
  v40 = v0;
  if (qword_1ED8A4928 == -1)
  {
    if (sub_1D23CD1EC())
    {
      goto LABEL_3;
    }

LABEL_15:
    v35 = v0[8];
    *v35 = 0;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
    *(v35 + 24) = 1;
    *(v35 + 32) = 0;
LABEL_16:

    v36 = v0[1];

    return v36();
  }

  swift_once();
  if ((sub_1D23CD1EC() & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  sub_1D2872588();
  sub_1D2870F68();
  v1 = sub_1D2873CA8();
  v2 = sub_1D28789F8();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[31];
  v5 = v0[27];
  v6 = v0[28];
  if (v3)
  {
    v8 = v0[9];
    v7 = v0[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v39 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1D23D7C84(v8, v7, &v39);
    _os_log_impl(&dword_1D226E000, v1, v2, "summarizeContext inputs — text: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1D38A3520](v10, -1, -1);
    MEMORY[0x1D38A3520](v9, -1, -1);
  }

  v11 = *(v6 + 8);
  v11(v4, v5);
  v0[32] = v11;
  if (sub_1D27BA78C(v0[9], v0[10]) < 10)
  {
    sub_1D2872588();
    v12 = sub_1D2873CA8();
    v13 = sub_1D28789F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = 10;
      _os_log_impl(&dword_1D226E000, v12, v13, "Unable to summarize the text which is less than %ld words. Falling back to the original text.", v14, 0xCu);
      MEMORY[0x1D38A3520](v14, -1, -1);
    }

    v15 = v0[30];
    v16 = v0[27];
    v18 = v0[9];
    v17 = v0[10];
    v19 = v0[8];

    v11(v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D287F500;
    *(v20 + 32) = v18;
    *(v20 + 40) = v17;
    *v19 = v20;
    *(v19 + 8) = v18;
    *(v19 + 16) = v17;
    *(v19 + 24) = 1;
    *(v19 + 32) = 0;
    swift_bridgeObjectRetain_n();
    goto LABEL_16;
  }

  v22 = v0[19];
  v21 = v0[20];
  v23 = v0[18];
  v24 = v0[13];
  v25 = v0[14];
  v26 = v0[11];
  v38 = v0[12];
  sub_1D2870F68();
  sub_1D2873D18();
  sub_1D2871808();
  v27 = sub_1D28717B8();
  v29 = v28;
  v0[33] = v28;
  (*(v22 + 8))(v21, v23);
  v30 = MEMORY[0x1E69C9AB0];
  if (!*(v26 + 16))
  {
    v30 = MEMORY[0x1E69C9AB8];
  }

  (*(v24 + 104))(v25, *v30, v38);
  sub_1D2873CF8();
  v31 = swift_task_alloc();
  v0[34] = v31;
  *v31 = v0;
  v31[1] = sub_1D27C9740;
  v32 = v0[26];
  v33 = v0[23];
  v34 = v0[17];

  return MEMORY[0x1EEE33600](v33, v27, v29, v32, v34);
}

uint64_t sub_1D27C9740()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  *(*v1 + 280) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1D27C9A14;
  }

  else
  {
    v5 = sub_1D27C98D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D27C98D4()
{
  v17 = v0;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  sub_1D27CB754(v4, *(v0 + 72), *(v0 + 80), 0, &v13);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v14;
  v8 = v15;
  v9 = v16;
  v10 = *(v0 + 64);
  *v10 = v13;
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  *(v10 + 32) = v9;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D27C9A14()
{
  v42 = v0;
  v1 = *(v0 + 280);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  sub_1D2872588();
  v2 = v1;
  v3 = v1;
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A18();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 280);
    v39 = *(v0 + 232);
    v40 = *(v0 + 256);
    v38 = *(v0 + 216);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v41 = v8;
    *v7 = 136315650;
    swift_getErrorValue();
    v9 = sub_1D2879748();
    v11 = sub_1D23D7C84(v9, v10, &v41);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_1D28714A8();
    v13 = [v12 domain];

    v14 = sub_1D28780A8();
    v16 = v15;

    v17 = sub_1D23D7C84(v14, v16, &v41);

    *(v7 + 14) = v17;
    *(v7 + 22) = 2048;
    v18 = sub_1D28714A8();
    v19 = [v18 code];

    *(v7 + 24) = v19;
    _os_log_impl(&dword_1D226E000, v4, v5, "Unable to summarize text context with error: %s - domain: %s - code: %ld. Falling back to returning the original text.", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);

    v40(v39, v38);
  }

  else
  {
    v20 = *(v0 + 280);
    v21 = *(v0 + 256);
    v22 = *(v0 + 232);
    v23 = *(v0 + 216);

    v21(v22, v23);
  }

  v24 = *(v0 + 280);
  *(v0 + 40) = v24;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  type metadata accessor for SummarizationClientError(0);
  if ((swift_dynamicCast() & 1) != 0 && (v26 = *(v0 + 48), v27 = sub_1D27D1268(v26), v26, v27))
  {

    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v32 = *(v0 + 280);
    v34 = *(v0 + 72);
    v33 = *(v0 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D287F500;
    *(v28 + 32) = v34;
    *(v28 + 40) = v33;
    sub_1D2870F68();

    v29 = *(v0 + 72);
    v30 = *(v0 + 80);
    sub_1D2870F68();
    v31 = 1;
  }

  v35 = *(v0 + 64);
  *v35 = v28;
  *(v35 + 8) = v29;
  *(v35 + 16) = v30;
  *(v35 + 24) = v31;
  *(v35 + 32) = 0;

  v36 = *(v0 + 8);

  return v36();
}

uint64_t VisualSummarizationClient.init()()
{
  sub_1D2873DE8();
  swift_allocObject();
  *(v0 + 24) = sub_1D2873DD8();
  *(v0 + 16) = sub_1D27D8C8C() & 1;
  return v0;
}

uint64_t sub_1D27C9E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = sub_1D2871818();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2138, &qword_1D28A75B8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D27C9F50, 0, 0);
}

uint64_t sub_1D27C9F50()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    sub_1D2870F78();

    v6 = sub_1D2873D78();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_1D2871808();
    sub_1D28717B8();
    (*(v5 + 8))(v2, v4);
    sub_1D2873DA8();

    sub_1D22BD238(v3, &qword_1EC6E2138, &qword_1D28A75B8);
  }

  **(v0 + 40) = Strong == 0;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t VisualSummarizationClient.summarizeContext(from:precomputedSummary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40, &unk_1D287EC70);
  v5[11] = swift_task_alloc();
  v6 = sub_1D2871798();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2008, &qword_1D28A72E8);
  v5[15] = swift_task_alloc();
  v7 = sub_1D2873E78();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v8 = sub_1D2873D68();
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  v9 = sub_1D2873D88();
  v5[23] = v9;
  v5[24] = *(v9 - 8);
  v5[25] = swift_task_alloc();
  v10 = sub_1D2873D48();
  v5[26] = v10;
  v5[27] = *(v10 - 8);
  v5[28] = swift_task_alloc();
  v11 = sub_1D2871818();
  v5[29] = v11;
  v5[30] = *(v11 - 8);
  v5[31] = swift_task_alloc();
  v12 = sub_1D2873EB8();
  v5[32] = v12;
  v5[33] = *(v12 - 8);
  v5[34] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2010, &unk_1D28A72F0);
  v5[35] = v13;
  v5[36] = *(v13 - 8);
  v5[37] = swift_task_alloc();
  v14 = sub_1D2873CB8();
  v5[38] = v14;
  v5[39] = *(v14 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v15 = type metadata accessor for ConversationContextItem(0);
  v5[42] = v15;
  v5[43] = *(v15 - 8);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D27CA580, 0, 0);
}

uint64_t sub_1D27CA580()
{
  v110 = v0;
  v1 = v0[7];
  v102 = sub_1D27D1AFC(v1);
  v107 = sub_1D27D23E0(v102);
  v0[46] = v107;
  sub_1D27D2998(v1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[43];
    v5 = (v0[45] + *(v0[42] + 20));
    v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v4 + 72);
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = v0[45];
      sub_1D27D2F44(v6, v10);
      v11 = *v5;
      v12 = v5[1];
      sub_1D2870F68();
      sub_1D27D2FA8(v10);
      if (v12)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D27CC674(0, *(v8 + 2) + 1, 1, v8);
        }

        v14 = *(v8 + 2);
        v13 = *(v8 + 3);
        if (v14 >= v13 >> 1)
        {
          v8 = sub_1D27CC674((v13 > 1), v14 + 1, 1, v8);
        }

        *(v8 + 2) = v14 + 1;
        v9 = &v8[16 * v14];
        *(v9 + 4) = v11;
        *(v9 + 5) = v12;
      }

      v6 += v7;
      --v3;
    }

    while (v3);

    v15 = *(v8 + 2);
    if (v15)
    {
LABEL_11:
      v16 = 0;
      v17 = (v8 + 40);
      while (v16 < *(v8 + 2))
      {
        ++v16;
        v19 = *(v17 - 1);
        v18 = *v17;
        v109[0] = 0;
        v109[1] = 0xE000000000000000;
        sub_1D2870F68();
        sub_1D2870F68();
        MEMORY[0x1D38A0C50](32, 0xE100000000000000);
        sub_1D2870F68();
        MEMORY[0x1D38A0C50](v19, v18);

        v17 += 2;
        if (v15 == v16)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_46;
    }
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
    v15 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v15)
    {
      goto LABEL_11;
    }
  }

LABEL_16:
  v0[47] = 0;
  v0[48] = 0xE000000000000000;
  v21 = v0[8];
  v20 = v0[9];

  v22 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v22 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v23 = v0[8];
    v24 = v0[6];

    *v24 = 0;
    *(v24 + 8) = v23;
    *(v24 + 16) = v20;
    *(v24 + 24) = 1;
    *(v24 + 32) = v107;
    sub_1D2870F68();
LABEL_48:

    v92 = v0[1];

    return v92();
  }

  if (qword_1ED8A4928 != -1)
  {
LABEL_46:
    swift_once();
    if ((sub_1D23D0160() & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_22;
  }

  if ((sub_1D23D0160() & 1) == 0)
  {
LABEL_47:
    v91 = v0[6];

    *v91 = 0;
    *(v91 + 8) = 0;
    *(v91 + 16) = 0xE000000000000000;
    *(v91 + 24) = 1;
    *(v91 + 32) = v107;
    goto LABEL_48;
  }

LABEL_22:
  sub_1D2872588();
  sub_1D2870F68();
  v25 = sub_1D2873CA8();
  v26 = sub_1D28789F8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = v0[41];
    v28 = v0[42];
    v30 = v0[38];
    v29 = v0[39];
    v31 = v0[7];
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v109[0] = v33;
    *v32 = 136315138;
    v34 = MEMORY[0x1D38A0EB0](v31, v28);
    v36 = sub_1D23D7C84(v34, v35, v109);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_1D226E000, v25, v26, "summarizeContext inputs — conversationContextItems: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x1D38A3520](v33, -1, -1);
    MEMORY[0x1D38A3520](v32, -1, -1);
  }

  else
  {
    v27 = v0[41];
    v30 = v0[38];
    v29 = v0[39];
  }

  v37 = *(v29 + 8);
  v37(v27, v30);
  v0[49] = v37;
  v38 = v0[7];
  v39 = *(v38 + 16);
  if (v39)
  {
    v40 = v0[43];
    v108 = v0[42];
    v41 = v0[21];
    v42 = v0[17];
    v97 = v0[15];
    v43 = v0[13];
    v109[0] = MEMORY[0x1E69E7CC0];
    sub_1D23D8CB0(0, v39, 0);
    v44 = v109[0];
    v45 = v38 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v96 = *MEMORY[0x1E69C9B18];
    v100 = (v43 + 48);
    v101 = (v42 + 16);
    v94 = v42;
    v95 = (v43 + 32);
    v99 = (v42 + 8);
    v98 = *(v40 + 72);
    do
    {
      v104 = v45;
      v105 = v44;
      v46 = v0[44];
      sub_1D27D2F44(v45, v46);
      v47 = (v46 + *(v108 + 24));
      v48 = v47[1];
      v49 = v0[15];
      if (v48)
      {
        *v49 = *v47;
        *(v97 + 8) = v48;
        v50 = sub_1D2873E38();
        v51 = *(v50 - 8);
        (*(v51 + 104))(v49, v96, v50);
        (*(v51 + 56))(v49, 0, 1, v50);
      }

      else
      {
        v52 = sub_1D2873E38();
        (*(*(v52 - 8) + 56))(v49, 1, 1, v52);
      }

      v53 = v0[19];
      v54 = v0[10];
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2873E48();
      v55 = swift_task_alloc();
      *(v55 + 16) = v54;
      *(v55 + 24) = v53;
      sub_1D2870F68();
      sub_1D27C79EC(sub_1D27D3004, v55, v102, MEMORY[0x1E69C9B20], sub_1D23D8CF4);
      v57 = v56;

      if (*(v57 + 16))
      {
        v58 = *v101;
      }

      else
      {
        v59 = v0[19];
        v60 = v0[16];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DACB0, &qword_1D28852E8);
        v61 = (*(v94 + 80) + 32) & ~*(v94 + 80);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1D287F500;
        v58 = *(v94 + 16);
        v58(v62 + v61, v59, v60);
      }

      v63 = v0[44];
      v65 = v0[11];
      v64 = v0[12];
      v58(v0[18], v0[19], v0[16]);
      sub_1D22BD1D0(v63, v65, &unk_1EC6DAE40, &unk_1D287EC70);
      v66 = *v100;
      v67 = (*v100)(v65, 1, v64);
      v69 = v0[11];
      v68 = v0[12];
      v103 = v39;
      if (v67 == 1)
      {
        sub_1D2871778();
        if (v66(v69, 1, v68) != 1)
        {
          sub_1D22BD238(v0[11], &unk_1EC6DAE40, &unk_1D287EC70);
        }
      }

      else
      {
        (*v95)(v0[14], v69, v68);
      }

      v70 = v0[44];
      v71 = v0[19];
      v72 = v0[16];
      sub_1D2870F68();
      sub_1D2873D58();
      sub_1D27D2FA8(v70);
      (*v99)(v71, v72);
      v44 = v105;
      v109[0] = v105;
      v74 = *(v105 + 16);
      v73 = *(v105 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_1D23D8CB0((v73 > 1), v74 + 1, 1);
        v44 = v109[0];
      }

      v75 = v0[22];
      v76 = v0[20];
      *(v44 + 16) = v74 + 1;
      (*(v41 + 32))(v44 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v74, v75, v76);
      v45 = v104 + v98;
      --v39;
    }

    while (v103 != 1);
  }

  v77 = v0[30];
  v78 = v0[31];
  v79 = v0[29];
  v81 = v0[24];
  v80 = v0[25];
  v106 = v0[23];
  v82 = v0[10];
  sub_1D27D31B8(&qword_1EC6E2018, MEMORY[0x1E69C9A68], MEMORY[0x1E69C9A60]);
  sub_1D2873E18();
  sub_1D2871808();
  v83 = sub_1D28717B8();
  v85 = v84;
  v0[50] = v84;
  (*(v77 + 8))(v78, v79);
  v86 = MEMORY[0x1E69C9AB0];
  if (!*(v82 + 16))
  {
    v86 = MEMORY[0x1E69C9AB8];
  }

  (*(v81 + 104))(v80, *v86, v106);
  sub_1D2873D38();
  v87 = swift_task_alloc();
  v0[51] = v87;
  *v87 = v0;
  v87[1] = sub_1D27CB0A0;
  v88 = v0[37];
  v89 = v0[34];
  v90 = v0[28];

  return MEMORY[0x1EEE335F8](v89, v83, v85, v88, v90);
}

uint64_t sub_1D27CB0A0()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  (*(v2[27] + 8))(v2[28], v2[26]);

  if (v0)
  {

    v3 = sub_1D27CB3E4;
  }

  else
  {
    v3 = sub_1D27CB228;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D27CB228()
{
  v17 = v0;
  v1 = *(v0 + 288);
  v12 = *(v0 + 296);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 48);
  sub_1D27CB754(v3, *(v0 + 376), *(v0 + 384), *(v0 + 368), &v13);

  (*(v5 + 8))(v3, v4);
  (*(v1 + 8))(v12, v2);
  v7 = v14;
  v8 = v15;
  v9 = v16;
  *v6 = v13;
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = v9;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D27CB3E4(uint64_t a1)
{
  v34 = v1;
  v2 = v1[52];
  sub_1D2872588();
  v3 = v2;
  v4 = v2;
  v5 = sub_1D2873CA8();
  v6 = sub_1D2878A18();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[52];
    v31 = v1[40];
    v32 = v1[49];
    v30 = v1[38];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33[0] = v9;
    *v8 = 136315650;
    swift_getErrorValue();
    v10 = sub_1D2879748();
    v12 = sub_1D23D7C84(v10, v11, v33);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = sub_1D28714A8();
    v14 = [v13 domain];

    v15 = sub_1D28780A8();
    v17 = v16;

    v18 = sub_1D23D7C84(v15, v17, v33);

    *(v8 + 14) = v18;
    *(v8 + 22) = 2048;
    v19 = sub_1D28714A8();
    v20 = [v19 code];

    *(v8 + 24) = v20;
    _os_log_impl(&dword_1D226E000, v5, v6, "Unable to summarize Messages context with error: %s - domain: %s - code: %ld", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v9, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);

    v32(v31, v30);
  }

  else
  {
    v21 = v1[52];
    v22 = v1[49];
    v23 = v1[40];
    v24 = v1[38];

    v22(v23, v24);
  }

  v26 = v1[36];
  v25 = v1[37];
  v27 = v1[35];
  swift_willThrow();
  (*(v26 + 8))(v25, v27);

  v28 = v1[1];

  return v28();
}

void sub_1D27CB754(uint64_t a1@<X0>, uint64_t (*a2)(char *, uint64_t, uint64_t)@<X1>, unint64_t a3@<X2>, uint64_t (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t (**a5)(char *, uint64_t, uint64_t)@<X8>)
{
  v92 = a5;
  v93 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2130, &unk_1D28A75A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v94 = &v80 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40, &unk_1D289B180);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v91 = &v80 - v11;
  v12 = sub_1D2873CB8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v80 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v80 - v19;
  v98 = sub_1D28712C8();
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1D2871318();
  v22 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v83 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v80 - v25;
  v27 = sub_1D2873E98();
  v90 = v22;
  if (v27)
  {
    v28 = a2;
    v29 = *(v27 + 16);
    if (v29)
    {
      v86 = v20;
      v87 = v12;
      v84 = v17;
      v85 = a1;
      v81 = v13;
      v88 = a3;
      v89 = v28;
      v100[0] = MEMORY[0x1E69E7CC0];
      v30 = v27;
      sub_1D23D81B8(0, v29, 0);
      v31 = v100[0];
      v32 = *(v22 + 16);
      v33 = *(v22 + 80);
      v80 = v30;
      v34 = v30 + ((v33 + 32) & ~v33);
      v95 = *(v22 + 72);
      v96 = v32;
      do
      {
        v35 = v99;
        v96(v26, v34, v99);
        sub_1D28712B8();
        sub_1D27D31B8(&qword_1ED8A6CF0, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
        v36 = sub_1D28782D8();
        v38 = v37;
        (*(v22 + 8))(v26, v35);
        v100[0] = v31;
        v40 = *(v31 + 16);
        v39 = *(v31 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1D23D81B8((v39 > 1), v40 + 1, 1);
          v31 = v100[0];
        }

        *(v31 + 16) = v40 + 1;
        v41 = v31 + 16 * v40;
        *(v41 + 32) = v36;
        *(v41 + 40) = v38;
        v34 += v95;
        --v29;
      }

      while (v29);
      v96 = v31;

      v17 = v84;
      a1 = v85;
      a3 = v88;
      a2 = v89;
      v20 = v86;
      v12 = v87;
      v13 = v81;
    }

    else
    {

      v96 = MEMORY[0x1E69E7CC0];
      a2 = v28;
    }
  }

  else
  {
    v96 = MEMORY[0x1E69E7CC0];
  }

  sub_1D2872588();
  v42 = sub_1D2873CA8();
  v43 = sub_1D28789F8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v100[0] = v95;
    *v44 = 136315138;
    v86 = v20;
    v45 = sub_1D2870F68();
    v46 = MEMORY[0x1D38A0E70](v45, MEMORY[0x1E69E6158]);
    v87 = v12;
    v88 = a3;
    v89 = a2;
    v47 = v46;
    v49 = v48;

    v50 = sub_1D23D7C84(v47, v49, v100);

    *(v44 + 4) = v50;
    a3 = v88;
    a2 = v89;
    v12 = v87;
    _os_log_impl(&dword_1D226E000, v42, v43, "summarizeContext outputs — visualConcepts: %s", v44, 0xCu);
    v51 = v95;
    __swift_destroy_boxed_opaque_existential_0(v95);
    MEMORY[0x1D38A3520](v51, -1, -1);
    MEMORY[0x1D38A3520](v44, -1, -1);

    v52 = *(v13 + 8);
    v53 = v86;
  }

  else
  {

    v52 = *(v13 + 8);
    v53 = v20;
  }

  v95 = v52;
  v52(v53, v12);
  v54 = v91;
  sub_1D2873E88();
  v55 = v90;
  v56 = v99;
  if ((*(v90 + 48))(v54, 1, v99) != 1)
  {
    v57 = v83;
    (*(v55 + 32))(v83, v54, v56);
    sub_1D28712B8();
    sub_1D27D31B8(&qword_1ED8A6CF0, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
    a2 = sub_1D28782D8();
    a3 = v58;
    (*(v55 + 8))(v57, v56);
    sub_1D2870F68();
    goto LABEL_17;
  }

  sub_1D22BD238(v54, &unk_1EC6E1D40, &unk_1D289B180);
  if (a3)
  {
    swift_bridgeObjectRetain_n();
LABEL_17:
    sub_1D2872588();
    sub_1D2870F68();
    v59 = sub_1D2873CA8();
    v60 = sub_1D28789F8();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v84 = v17;
      v85 = a1;
      v63 = v62;
      v100[0] = v62;
      *v61 = 136315138;
      v64 = v12;
      v65 = a3;
      v66 = sub_1D23D7C84(a2, a3, v100);

      *(v61 + 4) = v66;
      a3 = v65;
      _os_log_impl(&dword_1D226E000, v59, v60, "summarizeContext outputs — visualTopLine: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x1D38A3520](v63, -1, -1);
      MEMORY[0x1D38A3520](v61, -1, -1);

      v67 = v84;
      v68 = v64;
    }

    else
    {

      v67 = v17;
      v68 = v12;
    }

    (v95)(v67, v68);
    goto LABEL_21;
  }

  v76 = v82;
  sub_1D2872588();
  v77 = sub_1D2873CA8();
  v78 = sub_1D28789F8();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_1D226E000, v77, v78, "summarizeContext outputs — visualTopLine is nil", v79, 2u);
    MEMORY[0x1D38A3520](v79, -1, -1);
  }

  (v95)(v76, v12);
  a2 = 0;
  a3 = 0;
LABEL_21:
  sub_1D2870F68();
  v69 = v94;
  sub_1D2873EA8();
  v70 = sub_1D2873E08();
  v71 = *(v70 - 8);
  if ((*(v71 + 48))(v69, 1, v70) == 1)
  {
    sub_1D22BD238(v94, &qword_1EC6E2130, &unk_1D28A75A8);
    v72 = 1;
  }

  else
  {
    v73 = v94;
    v72 = sub_1D2873DF8();
    (*(v71 + 8))(v73, v70);
  }

  v74 = v92;
  *v92 = v96;
  v74[1] = a2;
  v74[2] = a3;
  *(v74 + 24) = v72 & 1;
  v75 = v93;
  sub_1D2870F68();

  v74[4] = v75;
}

uint64_t sub_1D27CC0B4(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40, &unk_1D287EC70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = sub_1D2871798();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  sub_1D22BD1D0(a1, v8, &unk_1EC6DAE40, &unk_1D287EC70);
  v16 = *(v10 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1D2871778();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1D22BD238(v8, &unk_1EC6DAE40, &unk_1D287EC70);
    }
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
  }

  sub_1D22BD1D0(v21, v5, &unk_1EC6DAE40, &unk_1D287EC70);
  if (v16(v5, 1, v9) == 1)
  {
    sub_1D2871778();
    if (v16(v5, 1, v9) != 1)
    {
      sub_1D22BD238(v5, &unk_1EC6DAE40, &unk_1D287EC70);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v5, v9);
  }

  v17 = sub_1D2871748();
  v18 = *(v10 + 8);
  v18(v12, v9);
  v18(v15, v9);
  return v17 & 1;
}

void sub_1D27CC398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationContextItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!a1)
  {

    return;
  }

  if (*(a2 + 16) >= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = *(a2 + 16);
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1D23D8C6C(0, v8, 0);
  v9 = v21;
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v20[1] = a2;
    v13 = a2 + v12;
    v14 = *(v5 + 72);
    do
    {
      sub_1D27D2F44(v13, v7);
      v16 = *(v9 + 16);
      if (v16 < a1)
      {
        v21 = v9;
        v15 = *(v9 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1D23D8C6C((v15 > 1), v16 + 1, 1);
          v9 = v21;
        }

        *(v9 + 16) = v16 + 1;
        sub_1D27D30F0(v7, v9 + v12 + v16 * v14);
      }

      else
      {
        if (v11 >= v16)
        {
          __break(1u);
          goto LABEL_27;
        }

        sub_1D27D3154(v7, v9 + v12 + v14 * v11);
        if ((v11 + 1) < a1)
        {
          ++v11;
        }

        else
        {
          v11 = 0;
        }
      }

      v13 += v14;
      --v10;
    }

    while (v10);

    if (!v11)
    {
      return;
    }

    v17 = *(v9 + 16);
    v20[2] = MEMORY[0x1E69E7CC0];
    sub_1D23D8C6C(0, v17, 0);
    if (v17 >= v11)
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      v18 = *(v9 + 16);
      if (v18 >= v11 && v18 >= v17)
      {
        v19 = sub_1D2870F78();
        sub_1D27D0C14(v19, v9 + v12, v11, (2 * v17) | 1);
        sub_1D27D0C14(v9, v9 + v12, 0, (2 * v11) | 1);
        return;
      }

      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }
}

uint64_t VisualSummarizationClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_1D27CC674(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D27CC904(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2108, &qword_1D28A7568);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D27CCAC0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2028, &qword_1D28A73D8);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D27CCC1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2140, &qword_1D28A75D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D27CCF3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAB60, &qword_1D28A7580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D27CD088(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E20A0, &qword_1D28A74C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D27CD1C4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_1D27CD3E8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1D27CD54C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 48);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[48 * v11])
    {
      memmove(v15, v16, 48 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1D27CD668(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E20E8, &qword_1D28A7540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D27CD788(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DACA0, &qword_1D28852D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D27CD920(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2118, &qword_1D28A7578);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D27CDA40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAB88, &unk_1D28851A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1D27CDB58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2100, &qword_1D28A7560);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D27CDC5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2110, &qword_1D28A7570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1D27CDD60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF890, &unk_1D289B940);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D27CDE80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2160, &qword_1D28A7608);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D27CDFE8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
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

void *sub_1D27CE1D0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

char *sub_1D27CE3AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAD08, &unk_1D2885360);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D27CE4B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2148, &qword_1D28A75D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D27CE5D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E20F0, &unk_1D28A7548);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1D27CE6D8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC608, &unk_1D288D020);
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_1D27CE804(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1D27CE888(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC80, &qword_1D28A39D0);
  v4 = *(sub_1D2872008() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D27CE9A8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAB90, &qword_1D28851B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1D27CEA98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v11)
  {
    if ((result - v12) != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}