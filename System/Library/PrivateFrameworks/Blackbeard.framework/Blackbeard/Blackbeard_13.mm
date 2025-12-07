unint64_t sub_1E5FCD07C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1E65E6758();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        sub_1E65E6D28();
        if (v12 > 2)
        {
          if (v12 != 3 && v12 != 4 && v12 != 5)
          {
LABEL_14:
            sub_1E5E05374(v11, v12);
            MEMORY[0x1E694D7C0](v11, v12);
          }
        }

        else if (v12 > 2)
        {
          goto LABEL_14;
        }

        sub_1E65E5D78();

        v13 = sub_1E65E6D78();
        sub_1E5E0476C(v11, v12);
        v14 = v13 & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_20;
        }

        if (v2 >= v14)
        {
LABEL_20:
          v15 = *(v3 + 48);
          v16 = (v15 + 16 * v2);
          v17 = (v15 + 16 * v6);
          if (v2 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1E5FCD340(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1E64F609C(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1E651B374(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_1E5FCD414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskScheduler.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5FCD478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E5FCD4D8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1E64F609C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1E651D49C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1E5FCD598(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TaskScheduler.ScheduledTask(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65D76F8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFA78C;

  return sub_1E5FC87A8(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_1E5FCD720(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E5FC8A64(a1, v4, v5, v6);
}

uint64_t sub_1E5FCD7E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TaskScheduler.ScheduledTask(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65D76F8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFE6BC;

  return sub_1E5FCAB30(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t AppComposer.forYouViewBuilder(currentRoutingContext:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v194 = a1;
  v168 = a2;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726E8, &qword_1E65EBB70);
  v166 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v161 = v142 - v3;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726F0, &qword_1E65EBB78);
  v157 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v154 = v142 - v4;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726F8, &qword_1E65EBB80);
  MEMORY[0x1EEE9AC00](v160);
  v155 = v142 - v5;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072700, &qword_1E65EBB88);
  MEMORY[0x1EEE9AC00](v162);
  v158 = v142 - v6;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072708, &unk_1E65FA530);
  v164 = *(v167 - 8);
  v7 = MEMORY[0x1EEE9AC00](v167);
  v159 = v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v163 = v142 - v9;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072710, &qword_1E65EBB90);
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v149 = v142 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D10, &unk_1E65FAA50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v146 = v142 - v12;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072718, &qword_1E65EBB98);
  v150 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v147 = v142 - v13;
  v14 = type metadata accessor for AppComposer(0);
  v15 = *(v14 - 8);
  v153 = v14 - 8;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8);
  v180 = v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v182 = v142 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v177 = v142 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v191 = v142 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = v142 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = v142 - v27;
  v190 = v142 - v27;
  sub_1E5E1D2E4(v2, v142 - v27, type metadata accessor for AppComposer);
  v29 = *(v15 + 80);
  v187 = ((v29 + 16) & ~v29) + v16;
  v188 = swift_allocObject();
  v196 = (v29 + 16) & ~v29;
  sub_1E5E1DF78(v28, v188 + v196, type metadata accessor for AppComposer);
  v186 = v26;
  v199 = type metadata accessor for AppComposer;
  sub_1E5E1D2E4(v2, v26, type metadata accessor for AppComposer);
  v181 = swift_allocObject();
  sub_1E5E1DF78(v26, v181 + ((v29 + 16) & ~v29), type metadata accessor for AppComposer);
  sub_1E65E5148();
  v200 = sub_1E65E5138();
  v30 = v191;
  sub_1E5E1D2E4(v2, v191, type metadata accessor for AppComposer);
  v185 = (v29 + 32) & ~v29;
  v31 = (v185 + v16) & 0xFFFFFFFFFFFFFFF8;
  v32 = v185 + v16;
  v183 = v185 + v16;
  v33 = (v31 + 31) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v184 = &unk_1E65EBBA8;
  v35 = v188;
  *(v34 + 16) = &unk_1E65EBBA8;
  *(v34 + 24) = v35;
  v195 = type metadata accessor for AppComposer;
  sub_1E5E1DF78(v30, v34 + ((v29 + 32) & ~v29), type metadata accessor for AppComposer);
  *(v34 + v32) = 0;
  v36 = v34 + v31;
  v197 = v34;
  v192 = sub_1E5FD0030;
  v37 = v181;
  *(v36 + 8) = sub_1E5FD0030;
  *(v36 + 16) = v37;
  v38 = (v34 + v33);
  v39 = MEMORY[0x1E69AB380];
  v40 = v200;
  *v38 = v200;
  v38[1] = v39;
  v41 = v177;
  sub_1E5E1D2E4(v2, v177, v199);
  v201 = v29;
  v42 = (v29 + 48) & ~v29;
  v43 = v42 + v16;
  v44 = swift_allocObject();
  v198 = v44;
  v45 = v188;
  v44[2] = v184;
  v44[3] = v45;
  v44[4] = v40;
  v44[5] = MEMORY[0x1E69AB380];
  sub_1E5E1DF78(v41, v44 + v42, type metadata accessor for AppComposer);
  *(v44 + v43) = 0;
  v46 = v44 + ((v42 + v16) & 0xFFFFFFFFFFFFFFF8);
  v47 = v192;
  *(v46 + 1) = v192;
  *(v46 + 2) = v37;
  v48 = v37;
  v49 = v2;
  v50 = v182;
  v51 = v199;
  sub_1E5E1D2E4(v2, v182, v199);
  v52 = swift_allocObject();
  v53 = v184;
  v52[2] = v184;
  v52[3] = v45;
  v54 = v200;
  v52[4] = v200;
  v52[5] = MEMORY[0x1E69AB380];
  v55 = v52 + v42;
  v56 = v52;
  v57 = v50;
  v58 = v195;
  sub_1E5E1DF78(v57, v55, v195);
  v59 = v56 + ((v43 + 7) & 0xFFFFFFFFFFFFFFF8);
  v193 = v56;
  *v59 = v47;
  *(v59 + 1) = v48;
  v59[16] = 0;
  v60 = v180;
  sub_1E5E1D2E4(v49, v180, v51);
  v61 = swift_allocObject();
  *(v61 + 16) = v53;
  *(v61 + 24) = v45;
  v62 = v61;
  v192 = v61;
  sub_1E5E1DF78(v60, v61 + v185, v58);
  *&v206 = v54;
  *(&v206 + 1) = MEMORY[0x1E69AB380];
  *&v207 = &unk_1E65EB918;
  *(&v207 + 1) = v197;
  *&v208 = &unk_1E65FA770;
  *(&v208 + 1) = v198;
  *&v209 = &unk_1E65EB920;
  *(&v209 + 1) = v56;
  *&v210 = &unk_1E65FA780;
  *(&v210 + 1) = v62;
  sub_1E5DF650C(v194, &v205);
  v178 = swift_allocObject();
  sub_1E5DF599C(&v205, v178 + 16);
  v63 = v190;
  sub_1E5E1D2E4(v49, v190, v51);
  v64 = v187;
  v184 = ((v187 + 7) & 0xFFFFFFFFFFFFFFF8);
  v65 = swift_allocObject();
  v145 = v65;
  v66 = v196;
  sub_1E5E1DF78(v63, v65 + v196, v58);
  v67 = (v65 + ((v64 + 7) & 0xFFFFFFFFFFFFFFF8));
  v68 = v209;
  v67[2] = v208;
  v67[3] = v68;
  v67[4] = v210;
  v69 = v207;
  *v67 = v206;
  v67[1] = v69;
  v70 = v186;
  sub_1E5E1D2E4(v49, v186, v51);
  v180 = swift_allocObject();
  sub_1E5E1DF78(v70, v180 + v66, v58);
  v71 = v191;
  sub_1E5E1D2E4(v49, v191, v51);
  v179 = swift_allocObject();
  sub_1E5E1DF78(v71, v179 + v66, v58);
  v189 = v49;
  v72 = v177;
  sub_1E5E1D2E4(v49, v177, v51);
  v143 = swift_allocObject();
  sub_1E5E1DF78(v72, v143 + v66, v58);
  v144 = *v49;
  v142[9] = type metadata accessor for ActionButtonDescriptor(0);
  v177 = type metadata accessor for ArtworkDescriptor(0);
  v176 = type metadata accessor for ContextMenu(0);
  v175 = type metadata accessor for ItemContext(0);
  v174 = type metadata accessor for ItemMetrics(0);
  v173 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  v142[8] = type metadata accessor for SectionMetrics(0);
  v172 = type metadata accessor for ViewDescriptor(0);
  v171 = sub_1E5FEDF78(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  v170 = sub_1E5FEDF78(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v169 = sub_1E5FEDF78(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  v142[7] = sub_1E5FEDF78(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v142[6] = sub_1E5FEDF78(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v142[5] = sub_1E5FEDF78(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v142[4] = sub_1E5FEDF78(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  v142[3] = sub_1E5FEDF78(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  v142[2] = sub_1E5FEDF78(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  v142[1] = sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E5FEDF78(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1E65DC178();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D20, &qword_1E65FAA70);

  v74 = sub_1E65DC168();
  v203 = v73;
  v204 = sub_1E5FED46C(&qword_1EE2D6BA8, &qword_1ED077D20, &qword_1E65FAA70, MEMORY[0x1E699D718]);
  *&v202 = v74;
  v75 = v147;
  sub_1E65DC248();
  v76 = v182;
  sub_1E5E1D2E4(v189, v182, v199);
  v77 = (v183 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  *(v78 + 16) = 0x756F5920726F46;
  *(v78 + 24) = 0xE700000000000000;
  sub_1E5E1DF78(v76, v78 + v185, v195);
  v79 = (v78 + v77);
  v80 = v143;
  *v79 = sub_1E5FE9BBC;
  v79[1] = v80;
  v81 = swift_allocObject();
  *(v81 + 16) = 0x756F5920726F46;
  *(v81 + 24) = 0xE700000000000000;
  type metadata accessor for AppFeature(0);
  sub_1E5FEDF78(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E5FED46C(&qword_1EE2D6BA0, &qword_1ED072718, &qword_1E65EBB98, MEMORY[0x1E699D758]);

  v82 = v149;
  v83 = v148;
  sub_1E65E4DE8();
  v84 = swift_allocObject();
  v85 = v145;
  *(v84 + 16) = sub_1E5FE9864;
  *(v84 + 24) = v85;

  sub_1E65E4CC8();
  v86 = swift_allocObject();
  *(v86 + 16) = sub_1E5FE9CE8;
  *(v86 + 24) = v84;

  v87 = sub_1E65E4F08();
  v188 = v87;

  (*(v151 + 8))(v82, v152);
  (*(v150 + 8))(v75, v83);
  v88 = v189;
  v89 = v190;
  v90 = v199;
  sub_1E5E1D2E4(v189, v190, v199);
  v91 = v184;
  v92 = (v184 + 15) & 0xFFFFFFFFFFFFFFF8;
  v93 = swift_allocObject();
  v94 = v196;
  v95 = v195;
  sub_1E5E1DF78(v89, v93 + v196, v195);
  v185 = v93;
  *&v91[v93] = v87;
  v96 = (v93 + v92);
  v182 = v92;
  *v96 = 0x756F5920726F46;
  v96[1] = 0xE700000000000000;
  v97 = (v93 + ((v92 + 23) & 0xFFFFFFFFFFFFFFF8));
  v98 = v210;
  v99 = v208;
  v97[3] = v209;
  v97[4] = v98;
  v100 = v207;
  *v97 = v206;
  v97[1] = v100;
  v97[2] = v99;
  v101 = v88;
  v102 = v88;
  v103 = v186;
  v104 = v90;
  sub_1E5E1D2E4(v102, v186, v90);
  v105 = v194;
  sub_1E5DF650C(v194, &v205);
  v106 = (v92 + 47) & 0xFFFFFFFFFFFFFFF8;
  v107 = swift_allocObject();
  sub_1E5E1DF78(v103, v107 + v94, v95);
  v108 = v184;
  *&v184[v107] = v188;
  v183 = v107;
  sub_1E5DF599C(&v205, v107 + v182);
  v109 = (v107 + v106);
  v110 = v209;
  v109[2] = v208;
  v109[3] = v110;
  v109[4] = v210;
  v111 = v207;
  *v109 = v206;
  v109[1] = v111;
  v112 = v101;
  v113 = v191;
  sub_1E5E1D2E4(v112, v191, v104);
  sub_1E5DF650C(v105, &v202);
  v114 = swift_allocObject();
  sub_1E5E1DF78(v113, v114 + v94, v95);
  v115 = v108;
  sub_1E5DF599C(&v202, &v108[v114]);
  v116 = (v114 + ((v108 + 47) & 0xFFFFFFFFFFFFFFF8));
  v117 = v209;
  v116[2] = v208;
  v116[3] = v117;
  v116[4] = v210;
  v118 = v207;
  *v116 = v206;
  v116[1] = v118;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072720, &qword_1E65EBBD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072728, &qword_1E65EBBD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072730, &qword_1E65EBBE0);
  sub_1E5FEAB1C();
  sub_1E5FEAC00();
  sub_1E5FEACB8();
  v119 = v154;
  sub_1E65DC668();
  v120 = sub_1E5FED46C(&qword_1ED072768, &qword_1ED0726F0, &qword_1E65EBB78, MEMORY[0x1E699E120]);
  v121 = v155;
  v122 = v156;
  sub_1E630FCD8(&v206, v156, v120, v155);
  (*(v157 + 8))(v119, v122);
  v123 = v189;
  v124 = v190;
  v125 = v199;
  sub_1E5E1D2E4(v189, v190, v199);
  sub_1E5DF650C(v194, &v205);
  v126 = swift_allocObject();
  v127 = v195;
  sub_1E5E1DF78(v124, v126 + v196, v195);
  sub_1E5DF599C(&v205, &v115[v126]);
  sub_1E5FEAE50();
  v128 = v161;
  sub_1E65DE7F8();
  v129 = v123;
  v130 = *(v123 + *(v153 + 28) + 8);
  v131 = sub_1E5FEAEA4();
  v132 = sub_1E5FED46C(&qword_1EE2D6878, &qword_1ED0726E8, &qword_1E65EBB70, MEMORY[0x1E699CC50]);
  v133 = v158;
  v134 = v130;
  v135 = v165;
  View.platformPresentAlert<A>(_:applicablePlatforms:currentPlatform:)(v128, &unk_1F5FA7F30, v134, v160, v165, v131, v132);
  (*(v166 + 8))(v128, v135);
  sub_1E5DFE50C(v121, &qword_1ED0726F8, &qword_1E65EBB80);
  sub_1E5E1D2E4(v129, v124, v125);
  v136 = swift_allocObject();
  sub_1E5E1DF78(v124, v136 + v196, v127);
  sub_1E5FEB02C();
  v137 = v159;
  sub_1E6259D5C(sub_1E5FEAFA0, v136, v162);

  sub_1E5DFE50C(v133, &qword_1ED072700, &qword_1E65EBB88);
  sub_1E5FEB0E4();
  v138 = *(v164 + 16);
  v139 = v163;
  v140 = v167;
  v138(v163, v137, v167);
  sub_1E5DFE50C(v137, &qword_1ED072708, &unk_1E65FA530);
  v138(v168, v139, v140);
  return sub_1E5DFE50C(v139, &qword_1ED072708, &unk_1E65FA530);
}

uint64_t sub_1E5FCF444(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v2[11] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FCF5F0, 0, 0);
}

uint64_t sub_1E5FCF5F0()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E6409C44();
  (*(v2 + 8))(v1, v3);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  sub_1E5FED324(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v10 = *MEMORY[0x1E69CBD90];
  v11 = sub_1E65D8F38();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v5, v10, v11);
  (*(v12 + 56))(v5, 0, 1, v11);
  v13 = (v9 + *(type metadata accessor for AppComposer(0) + 36));
  v15 = *v13;
  v14 = v13[1];
  v16 = sub_1E65D74E8();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  v17 = sub_1E65D9908();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  v18 = sub_1E65D9F88();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  sub_1E5FA9D34(v15, v14);
  sub_1E65D7A28();
  v19 = sub_1E65D7A38();
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1E5FCF958(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FCF444(a1, v1 + v5);
}

void sub_1E5FCFA34(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for AppState(0) + 136);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *(v3 + 56);
  *(a2 + 24) = v7;

  sub_1E5FED384(v4, v5, v6, v7);
}

uint64_t sub_1E5FCFA90(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = a2 + *(type metadata accessor for AppState(0) + 136);
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  v9 = *(v6 + 48);
  v10 = *(v6 + 56);
  sub_1E5FED384(v2, v3, v4, v5);
  result = sub_1E5FED324(v7, v8, v9, v10);
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  *(v6 + 48) = v4;
  *(v6 + 56) = v5;
  return result;
}

unint64_t sub_1E5FCFB2C()
{
  v33 = sub_1E65D76F8();
  v0 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v2 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v32 - v11;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  sub_1E60EEC44(v12);
  sub_1E5DFE50C(v5, &qword_1ED072958, &qword_1E65EC0F0);
  (*(v7 + 8))(v9, v6);
  v13 = sub_1E65D7EB8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1E5DFE50C(v12, &qword_1ED072968, &unk_1E6609800);
    v15 = 0;
    v16 = 0;
  }

  else
  {
    sub_1E65D7DC8();
    (*(v14 + 8))(v12, v13);
    v15 = sub_1E65D76C8();
    v16 = v17;
    (*(v0 + 8))(v2, v33);
  }

  swift_getKeyPath();
  sub_1E65E4EC8();

  v19 = v36;
  v18 = v37;
  v20 = v38;
  v21 = v39;
  if (v39 && v39 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E65EA670;
    *(inited + 32) = 3;
    v34 = v19;
    v35 = v18;

    sub_1E65E6848();
    v23 = sub_1E6427784(inited);
    swift_setDeallocating();
    sub_1E5DFE50C(inited + 32, &qword_1ED072988, &qword_1E65EC128);
    v24 = v19;
    v25 = v18;
    v26 = v20;
    v27 = 1;
  }

  else
  {
    v23 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    v24 = v19;
    v25 = v18;
    v26 = v20;
    v27 = v21;
  }

  sub_1E5FED324(v24, v25, v26, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_1E65EA670;
  *(v28 + 32) = 9;
  v34 = v15;
  v35 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
  sub_1E5FEE0FC();
  sub_1E65E6848();
  v29 = sub_1E6427784(v28);
  swift_setDeallocating();
  sub_1E5DFE50C(v28 + 32, &qword_1ED072988, &qword_1E65EC128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v23;
  sub_1E5FEE178(v29, sub_1E60481B8, 0, isUniquelyReferenced_nonNull_native, &v34);

  return v34;
}

uint64_t sub_1E5FD0048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v67 = a3;
  v59 = type metadata accessor for CanvasTaskIdentifier(0);
  v4 = MEMORY[0x1EEE9AC00](v59);
  v57 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v52 - v8);
  v10 = type metadata accessor for RouteDestination(0);
  v11 = *(v10 - 1);
  v63 = v10;
  v64 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v60 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v52 - v14;
  v15 = sub_1E65DC818();
  v65 = *(v15 - 8);
  v66 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E65DC508();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v52 - v26;
  sub_1E5E1D2E4(a1, v20, type metadata accessor for ItemContext);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    (*(v22 + 32))(v27, v20, v21);
    (*(v22 + 16))(v25, v27, v21);
    if ((*(v22 + 88))(v25, v21) == *MEMORY[0x1E699E0A0])
    {
      (*(v22 + 96))(v25, v21);
      v29 = v65;
      v28 = v66;
      v30 = v17;
      (*(v65 + 32))(v17, v25, v66);
      sub_1E6409F80(v9);
      if ((*(v64 + 48))(v9, 1, v63) != 1)
      {
        v63 = type metadata accessor for RouteDestination;
        v34 = v61;
        sub_1E5E1DF78(v9, v61, type metadata accessor for RouteDestination);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072948, &qword_1E65EC0D8);
        v36 = v35[12];
        v37 = v35[20];
        v52 = v35[16];
        v53 = v37;
        v38 = v67;
        v55 = (v67 + v35[24]);
        v56 = v36;
        v54 = type metadata accessor for RouteDestination;
        v39 = v58;
        sub_1E5E1D2E4(v34, v58, type metadata accessor for RouteDestination);
        sub_1E5E1D2E4(v39, v57, type metadata accessor for CanvasTaskIdentifier);
        sub_1E5FEDF78(&qword_1ED072950, type metadata accessor for CanvasTaskIdentifier, &unk_1E65F55A8);
        sub_1E65E6848();
        sub_1E5FEE09C(v39, type metadata accessor for CanvasTaskIdentifier);
        v40 = *MEMORY[0x1E6999B50];
        v41 = sub_1E65E4EB8();
        (*(*(v41 - 8) + 104))(v38 + v52, v40, v41);
        v42 = *MEMORY[0x1E6999B48];
        v43 = sub_1E65E4EA8();
        (*(*(v43 - 8) + 104))(v38 + v53, v42, v43);
        sub_1E5DF650C(v62, v68);
        v44 = v30;
        v45 = v60;
        sub_1E5E1D2E4(v34, v60, v54);
        v46 = (*(v64 + 80) + 56) & ~*(v64 + 80);
        v47 = swift_allocObject();
        sub_1E5DF599C(v68, v47 + 16);
        sub_1E5E1DF78(v45, v47 + v46, v63);
        v48 = v55;
        *v55 = &unk_1E65EC0E8;
        v48[1] = v47;
        sub_1E65E6068();
        sub_1E5FEE09C(v34, type metadata accessor for RouteDestination);
        (*(v65 + 8))(v44, v66);
        (*(v22 + 8))(v27, v21);
        v49 = *MEMORY[0x1E6999AD8];
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
        v51 = *(v50 - 8);
        (*(v51 + 104))(v38, v49, v50);
        return (*(v51 + 56))(v38, 0, 1, v50);
      }

      (*(v29 + 8))(v17, v28);
      (*(v22 + 8))(v27, v21);
      sub_1E5DFE50C(v9, &unk_1ED072040, &qword_1E65F0860);
    }

    else
    {
      v31 = *(v22 + 8);
      v31(v27, v21);
      v31(v25, v21);
    }
  }

  else
  {
    sub_1E5FEE09C(v20, type metadata accessor for ItemContext);
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
  return (*(*(v32 - 8) + 56))(v67, 1, 1, v32);
}

uint64_t sub_1E5FD0850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_1E65E6058();
  v3[4] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E5FD08E8, v5, v4);
}

uint64_t sub_1E5FD08E8()
{
  v1 = *(v0 + 16);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  sub_1E600F5B0((v0 + 72));
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1E5FD09BC;
  v5 = *(v0 + 24);

  return RoutingContext.appendDestination(_:priority:)(v5, (v0 + 72), v3, v2);
}

uint64_t sub_1E5FD09BC()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_1E5FD0AD0;
  }

  else
  {
    v5 = sub_1E5FA1DB4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E5FD0AD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FD0B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v31 = *(v12 - 8);
  v13 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v30 - v17;
  v33 = v30 - v17;
  v32 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  v19 = sub_1E65E60A8();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_1E5FEDD5C(a1, v15);
  (*(v8 + 16))(v11, a2, v7);
  v20 = a4[3];
  v30[0] = *a4;
  v30[1] = v20;
  v21 = a4[7];
  v30[2] = a4[5];
  v30[3] = v21;
  v30[4] = a4[9];
  v22 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v23 = (v13 + *(v8 + 80) + v22) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_1E5FAB460(v15, v25 + v22, &qword_1ED072828, &qword_1E65EBE20);
  (*(v8 + 32))(v25 + v23, v11, v7);
  *(v25 + v24) = v32;
  v26 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v27 = *(a4 + 4);
  v26[3] = *(a4 + 3);
  v26[4] = v27;
  v28 = *(a4 + 2);
  v26[1] = *(a4 + 1);
  v26[2] = v28;
  *v26 = *a4;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v33, &unk_1E65EC0C8, v25);
}

uint64_t sub_1E5FD0E7C(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_1E65E3B68();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FD0F3C, 0, 0);
}

uint64_t sub_1E5FD0F3C()
{
  swift_getKeyPath();
  sub_1E65E4EC8();

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  if (v2 == 1)
  {
    v16 = *(v0 + 48);

    v3 = swift_task_alloc();
    *(v3 + 16) = v16;
    v4 = sub_1E6402B44(sub_1E5FEDCF8, v3, v1);

    v5 = *(v0 + 8);

    return v5(v4);
  }

  else
  {
    sub_1E5FED324(*(v0 + 16), *(v0 + 24), *(v0 + 32), v2);
    sub_1E65DE318();
    v7 = sub_1E65E3B48();
    v8 = sub_1E65E6338();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1E5DE9000, v7, v8, "Fetch Lazy Canvas Section Descriptors failed as state is not fetched", v9, 2u);
      MEMORY[0x1E694F1C0](v9, -1, -1);
    }

    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = *(v0 + 64);

    (*(v11 + 8))(v10, v12);
    v13 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x1E699E128], v13);
    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1E5FD11CC(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072088, &qword_1E65EA770);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v5 = sub_1E65D9CC8();
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();
  v6 = sub_1E65DC818();
  v2[26] = v6;
  v2[27] = *(v6 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = type metadata accessor for ItemContext(0);
  v2[30] = swift_task_alloc();
  v7 = sub_1E65DC508();
  v2[31] = v7;
  v2[32] = *(v7 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v2[35] = v8;
  v2[36] = *(v8 - 8);
  v2[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FD1500, 0, 0);
}

uint64_t sub_1E5FD1500()
{
  v93 = v0 + 64;
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);
  v3 = *(v0 + 216);
  v4 = *(v0 + 96);
  v5 = v4 + 56;
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 56);
  v9 = (63 - v7) >> 6;
  v100 = (v2 + 32);
  v101 = (v1 + 8);
  v98 = (v2 + 88);
  v99 = (v2 + 16);
  v97 = *MEMORY[0x1E699E0A0];
  v96 = (v2 + 8);
  v91 = (v3 + 32);
  v92 = (v2 + 96);
  v89 = (v3 + 8);
  v90 = *(v0 + 192);

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC8];
  v102 = v9;
  v94 = v4 + 56;
  v95 = v0;
  while (1)
  {
    v12 = v10;
    for (i = v11; ; v11 = i)
    {
      *(v0 + 304) = v11;
      if (!v8)
      {
        while (1)
        {
          v10 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
            goto LABEL_55;
          }

          if (v10 >= v9)
          {
            break;
          }

          v8 = *(v5 + 8 * v10);
          ++v12;
          if (v8)
          {
            goto LABEL_12;
          }
        }

        v49 = sub_1E6427ACC(MEMORY[0x1E69E7CC0]);
        *(v0 + 64) = v49;
        v50 = *(v11 + 32);
        *(v0 + 377) = v50;
        v51 = -1;
        v52 = -1 << v50;
        v53 = v11[8];
        if (-v52 < 64)
        {
          v51 = ~(-1 << -v52);
        }

        *(v0 + 312) = v49;
        v54 = v51 & v53;
        if (v54)
        {
          v55 = 0;
          v56 = *(v0 + 304);
LABEL_41:
          *(v0 + 320) = v54;
          *(v0 + 328) = v55;
          v59 = __clz(__rbit64(v54)) | (v55 << 6);
          v60 = *(*(v56 + 48) + v59);
          *(v0 + 378) = v60;
          v61 = *(*(v56 + 56) + 8 * v59);
          *(v0 + 336) = v61;
          type metadata accessor for AppComposer(0);
          type metadata accessor for AppEnvironment(0);

          v62 = CatalogService.fetchRemoteCatalogLockups.getter();
          *(v0 + 344) = v63;
          v105 = (v62 + *v62);
          v64 = swift_task_alloc();
          *(v0 + 352) = v64;
          *v64 = v0;
          v64[1] = sub_1E5FD2008;
          v65 = byte_1E65EC15A[v60];

          return v105(v65, v61);
        }

        v57 = 0;
        v58 = ((63 - v52) >> 6) - 1;
        v56 = *(v0 + 304);
        while (v58 != v57)
        {
          v55 = v57 + 1;
          v54 = *(v56 + 8 * v57++ + 72);
          if (v54)
          {
            goto LABEL_41;
          }
        }

        v67 = *(v0 + 168);
        v66 = *(v0 + 176);
        v69 = *(v0 + 152);
        v68 = *(v0 + 160);
        v70 = *(v0 + 144);

        swift_getKeyPath();
        sub_1E65E4EC8();

        sub_1E65E4C98();
        (*(v67 + 8))(v66, v68);
        sub_1E5FAB460(v69, v70, &qword_1ED072910, &qword_1E65EC030);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 2)
        {
          if (!EnumCaseMultiPayload)
          {
            v74 = **(v0 + 144);
            goto LABEL_51;
          }

          if (EnumCaseMultiPayload == 1)
          {
            v72 = *(v0 + 144);
            v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
            v74 = *v72;
            v75 = sub_1E65D76A8();
            (*(*(v75 - 8) + 8))(&v72[v73], v75);
LABEL_51:
            v76 = *(v0 + 96);
            v77 = *(v0 + 104);
            v78 = swift_task_alloc();
            v78[2] = v93;
            v78[3] = v74;
            v78[4] = v77;
            v79 = sub_1E6402E7C(sub_1E5FEDCD8, v78, v76);

            v80 = sub_1E600A848(v79);

            v81 = *(v0 + 8);

            return v81(v80);
          }

          sub_1E5DFE50C(*(v0 + 144), &qword_1ED072910, &qword_1E65EC030);
        }

        v74 = 0;
        goto LABEL_51;
      }

      v10 = v12;
LABEL_12:
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      (*(v1 + 16))(*(v0 + 296), *(v4 + 48) + *(v1 + 72) * (v14 | (v10 << 6)), *(v0 + 280));
      sub_1E65E04E8();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v13 = *(v0 + 240);
        (*v101)(*(v0 + 296), *(v0 + 280));
        sub_1E5FEE09C(v13, type metadata accessor for ItemContext);
        goto LABEL_6;
      }

      v16 = *(v0 + 264);
      v15 = *(v0 + 272);
      v17 = *(v0 + 248);
      (*v100)(v15, *(v0 + 240), v17);
      (*v99)(v16, v15, v17);
      if ((*v98)(v16, v17) == v97)
      {
        break;
      }

      v18 = *(v0 + 296);
      v19 = *(v0 + 280);
      v20 = *(v0 + 264);
      v21 = *(v0 + 248);
      v22 = v4;
      v23 = v1;
      v24 = *v96;
      (*v96)(*(v0 + 272), v21);
      (*v101)(v18, v19);
      v24(v20, v21);
      v1 = v23;
      v4 = v22;
      v5 = v94;
      v0 = v95;
LABEL_6:
      v12 = v10;
      v9 = v102;
    }

    v25 = *(v0 + 264);
    v26 = *(v0 + 224);
    v27 = *(v0 + 208);
    (*v92)(v25, *(v0 + 248));
    (*v91)(v26, v25, v27);
    v87 = sub_1E65DC7B8();
    sub_1E65DC7E8();
    v28 = sub_1E65DC7D8();
    if (v28 <= 2 && v28 != 1 && v28 != 2)
    {
      sub_1E65E68A8();
      *(v0 + 16) = 0;
      *(v0 + 24) = 0xE000000000000000;
      MEMORY[0x1E694D7C0](0xD000000000000018, 0x80000001E6610E60);
      *(v0 + 376) = 0;
      sub_1E65E69B8();
      MEMORY[0x1E694D7C0](0xD000000000000018, 0x80000001E6610E80);
      return sub_1E65E69D8();
    }

    sub_1E65DC7F8();
    sub_1E65D9C88();
    v29 = i;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = sub_1E6417228(v87);
    v33 = i[2];
    v34 = (v31 & 1) == 0;
    result = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      __break(1u);
      goto LABEL_60;
    }

    v36 = v31;
    if (i[3] < result)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v31)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    result = sub_1E64237D0();
    v29 = i;
    if ((v36 & 1) == 0)
    {
LABEL_25:
      v29[(v32 >> 6) + 8] |= 1 << v32;
      *(v29[6] + v32) = v87;
      *(v29[7] + 8 * v32) = MEMORY[0x1E69E7CC0];
      v38 = v29[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (!v39)
      {
        v29[2] = v40;
        goto LABEL_27;
      }

LABEL_60:
      __break(1u);
      return result;
    }

LABEL_27:
    v41 = v29[7];
    v42 = *(v41 + 8 * v32);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v41;
    *(v41 + 8 * v32) = v42;
    if ((v43 & 1) == 0)
    {
      v42 = sub_1E64F610C(0, v42[2] + 1, 1, v42);
      *(v41 + 8 * v32) = v42;
    }

    v104 = v29;
    v45 = v42[2];
    v44 = v42[3];
    v86 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      *(v88 + 8 * v32) = sub_1E64F610C((v44 > 1), v86, 1, v42);
    }

    v46 = *(v0 + 272);
    v82 = *(v0 + 280);
    v83 = *(v0 + 296);
    v47 = *(v0 + 248);
    v84 = *(v0 + 184);
    v85 = *(v0 + 200);
    (*v89)(*(v0 + 224), *(v0 + 208));
    (*v96)(v46, v47);
    (*v101)(v83, v82);
    v48 = *(v88 + 8 * v32);
    *(v48 + 16) = v86;
    (*(v90 + 32))(v48 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v45, v85, v84);
    v9 = v102;
    v11 = v104;
  }

  sub_1E6419E14(result, isUniquelyReferenced_nonNull_native);
  v29 = i;
  result = sub_1E6417228(v87);
  if ((v36 & 1) == (v37 & 1))
  {
    v32 = result;
    if (v36)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

LABEL_55:

  return sub_1E65E6C68();
}

uint64_t sub_1E5FD2008(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {
    v4 = sub_1E5FD2960;
  }

  else
  {
    v4 = sub_1E5FD2160;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

unint64_t sub_1E5FD2160()
{
  v1 = *(v0 + 360);
  v2 = *(v1 + 16);
  if (v2)
  {
    *(v0 + 72) = MEMORY[0x1E69E7CC0];
    sub_1E601BF24(0, v2, 0);
    v3 = *(v0 + 72);
    v73 = sub_1E65D8258();
    v4 = *(v73 - 8);
    v72 = *(v4 + 16);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v71 = *(v4 + 72);
    do
    {
      v75 = v2;
      v6 = *(v0 + 128);
      v72(&v6[*(*(v0 + 112) + 48)], v5, v73);
      v74 = sub_1E65DC748();
      v8 = v7;
      v9 = sub_1E65D8078();
      v11 = v10;
      v12 = sub_1E65D81B8();
      v14 = v3;
      if (v13)
      {
        v15 = v12;
      }

      else
      {
        v15 = 0;
      }

      if (v13)
      {
        v16 = v13;
      }

      else
      {
        v16 = 0xE000000000000000;
      }

      *(v0 + 32) = v9;
      *(v0 + 40) = v11;

      v17 = v15;
      v3 = v14;
      MEMORY[0x1E694D7C0](v17, v16);

      v18 = *(v0 + 40);
      *(v0 + 48) = *(v0 + 32);
      *(v0 + 56) = v18;

      MEMORY[0x1E694D7C0](v74, v8);

      v19 = *(v0 + 56);
      *v6 = *(v0 + 48);
      *(v6 + 1) = v19;
      *(v0 + 72) = v14;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1E601BF24((v20 > 1), v21 + 1, 1);
        v3 = *(v0 + 72);
      }

      v23 = *(v0 + 120);
      v22 = *(v0 + 128);
      *(v3 + 16) = v21 + 1;
      sub_1E5FAB460(v22, v3 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, &qword_1ED072088, &qword_1E65EA770);
      v5 += v71;
      v2 = v75 - 1;
    }

    while (v75 != 1);

    if (*(v3 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072928, &qword_1E65EC048);
      v24 = sub_1E65E6A28();
      goto LABEL_16;
    }
  }

  v24 = MEMORY[0x1E69E7CC8];
LABEL_16:
  v25 = *(v0 + 368);
  *(v0 + 80) = v24;

  sub_1E64346A8(v26, 1, (v0 + 80));
  if (v25)
  {

    return swift_unexpectedError();
  }

  v28 = *(v0 + 378);

  v29 = *(v0 + 80);
  v30 = *(v0 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 88) = v30;
  result = sub_1E6417228(v28);
  v33 = *(v30 + 16);
  v34 = (v32 & 1) == 0;
  v35 = __OFADD__(v33, v34);
  v36 = v33 + v34;
  if (v35)
  {
    __break(1u);
    goto LABEL_30;
  }

  LOBYTE(v28) = v32;
  if (*(v30 + 24) >= v36)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_27;
    }

LABEL_30:
    v40 = result;
    sub_1E6423794();
    result = v40;
    v39 = *(v0 + 88);
    if (v28)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v37 = *(v0 + 378);
  sub_1E6419DC4(v36, isUniquelyReferenced_nonNull_native);
  result = sub_1E6417228(v37);
  if ((v28 & 1) != (v38 & 1))
  {

    return sub_1E65E6C68();
  }

LABEL_27:
  v39 = *(v0 + 88);
  if (v28)
  {
LABEL_28:
    *(v39[7] + 8 * result) = v29;

    goto LABEL_33;
  }

LABEL_31:
  v41 = *(v0 + 378);
  v39[(result >> 6) + 8] |= 1 << result;
  *(v39[6] + result) = v41;
  *(v39[7] + 8 * result) = v29;
  v42 = v39[2];
  v35 = __OFADD__(v42, 1);
  v43 = v42 + 1;
  if (v35)
  {
LABEL_54:
    __break(1u);
    return result;
  }

  v39[2] = v43;
LABEL_33:
  *(v0 + 64) = v39;
  v45 = *(v0 + 320);
  v44 = *(v0 + 328);
  *(v0 + 312) = v39;
  v46 = (v45 - 1) & v45;
  if (!v46)
  {
    while (1)
    {
      v47 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      result = *(v0 + 304);
      if (v47 >= (((1 << *(v0 + 377)) + 63) >> 6))
      {
        break;
      }

      v46 = *(result + 8 * v47 + 64);
      ++v44;
      if (v46)
      {
        v44 = v47;
        goto LABEL_39;
      }
    }

    v56 = *(v0 + 168);
    v55 = *(v0 + 176);
    v58 = *(v0 + 152);
    v57 = *(v0 + 160);
    v59 = *(v0 + 144);

    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E4C98();
    (*(v56 + 8))(v55, v57);
    sub_1E5FAB460(v58, v59, &qword_1ED072910, &qword_1E65EC030);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      v77 = v0 + 64;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v77 = v0 + 64;
        v63 = **(v0 + 144);
        goto LABEL_50;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v77 = v0 + 64;
        v61 = *(v0 + 144);
        v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
        v63 = *v61;
        v64 = sub_1E65D76A8();
        (*(*(v64 - 8) + 8))(&v61[v62], v64);
LABEL_50:
        v65 = *(v0 + 96);
        v66 = *(v0 + 104);
        v67 = swift_task_alloc();
        v67[2] = v77;
        v67[3] = v63;
        v67[4] = v66;
        v68 = sub_1E6402E7C(sub_1E5FEDCD8, v67, v65);

        v69 = sub_1E600A848(v68);

        v70 = *(v0 + 8);

        return v70(v69);
      }

      v77 = v0 + 64;
      sub_1E5DFE50C(*(v0 + 144), &qword_1ED072910, &qword_1E65EC030);
    }

    v63 = 0;
    goto LABEL_50;
  }

  result = *(v0 + 304);
LABEL_39:
  *(v0 + 320) = v46;
  *(v0 + 328) = v44;
  v48 = __clz(__rbit64(v46)) | (v44 << 6);
  v49 = *(*(result + 48) + v48);
  *(v0 + 378) = v49;
  v50 = *(*(result + 56) + 8 * v48);
  *(v0 + 336) = v50;
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);

  v51 = CatalogService.fetchRemoteCatalogLockups.getter();
  *(v0 + 344) = v52;
  v76 = (v51 + *v51);
  v53 = swift_task_alloc();
  *(v0 + 352) = v53;
  *v53 = v0;
  v53[1] = sub_1E5FD2008;
  v54 = byte_1E65EC15A[v49];

  return v76(v54, v50);
}

uint64_t sub_1E5FD2960()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FD2A60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v77 = a5;
  v62 = a4;
  v70 = a3;
  v74 = a2;
  v68 = sub_1E65D7848();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v65 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v61 - v8;
  v9 = sub_1E65D8258();
  v72 = *(v9 - 8);
  v73 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v61 - v13;
  v14 = sub_1E65DC818();
  v15 = *(v14 - 8);
  v75 = v14;
  v76 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E65DC508();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v61 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v67 = a1;
  sub_1E65E04E8();
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1E5FEE09C(v20, type metadata accessor for ItemContext);
LABEL_18:
    v57 = 1;
    v55 = v77;
    goto LABEL_19;
  }

  (*(v22 + 32))(v27, v20, v21);
  (*(v22 + 16))(v25, v27, v21);
  if ((*(v22 + 88))(v25, v21) != *MEMORY[0x1E699E0A0])
  {
    v58 = *(v22 + 8);
    v58(v27, v21);
    v58(v25, v21);
    goto LABEL_18;
  }

  (*(v22 + 96))(v25, v21);
  v28 = v76;
  v29 = v25;
  v30 = v75;
  (*(v76 + 32))(v17, v29, v75);
  v31 = sub_1E65DC7B8();
  v32 = *v74;
  if (!*(*v74 + 16))
  {
    goto LABEL_16;
  }

  v33 = sub_1E6417228(v31);
  if ((v34 & 1) == 0)
  {
    goto LABEL_16;
  }

  v35 = *(*(v32 + 56) + 8 * v33);

  v36 = sub_1E65DC798();
  if (!*(v35 + 16))
  {

LABEL_15:
    v28 = v76;
LABEL_16:
    (*(v28 + 8))(v17, v30);
LABEL_17:
    (*(v22 + 8))(v27, v21);
    goto LABEL_18;
  }

  v38 = sub_1E6215038(v36, v37);
  v40 = v39;

  if ((v40 & 1) == 0)
  {

    v30 = v75;
    goto LABEL_15;
  }

  v41 = v72;
  v42 = *(v35 + 56) + *(v72 + 72) * v38;
  v43 = v73;
  (*(v72 + 16))(v12, v42, v73);

  v44 = v69;
  (*(v41 + 32))(v69, v12, v43);
  if (v70)
  {
    v45 = sub_1E65D80B8();
    v47 = v46;
    v78 = v45;
    v79 = v46;
    v49 = v48 & 1;
    v80 = v48 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072938, &qword_1E65EC098);
    sub_1E65D7FB8();
    sub_1E5F87058(v45, v47, v49);
    if (v81 != 3 && (sub_1E637CE70(v81, v70) & 1) == 0)
    {
      (*(v72 + 8))(v44, v73);
      (*(v76 + 8))(v17, v75);
      goto LABEL_17;
    }
  }

  v50 = v62;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v51 = v50 + *(type metadata accessor for AppComposer(0) + 20);
  LODWORD(v74) = *(v51 + 8);
  swift_getKeyPath();
  v52 = v44;
  v53 = v65;
  sub_1E65E4EC8();

  v54 = v51 + *(type metadata accessor for AppEnvironment(0) + 136);
  v55 = v77;
  v56 = v71;
  sub_1E640BB24(v67, v71, v74, v53, v54, v77);
  (*(v66 + 8))(v53, v68);
  (*(v63 + 8))(v56, v64);
  (*(v72 + 8))(v52, v73);
  (*(v76 + 8))(v17, v75);
  (*(v22 + 8))(v27, v21);
  v57 = 0;
LABEL_19:
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  return (*(*(v59 - 8) + 56))(v55, v57, 1, v59);
}

BOOL sub_1E5FD3208(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  type metadata accessor for AppComposer(0);
  v2 = sub_1E65DAE38();
  return v2 == sub_1E65DAE38() || v5 > 1u;
}

uint64_t sub_1E5FD32A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v142 = a5;
  v133 = a2;
  v134 = a4;
  v149 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F0, &qword_1E65EBC58);
  v144 = *(v6 - 8);
  v145 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v143 = &v112 - v7;
  v8 = type metadata accessor for BrowsingIdentity(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v135 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v136 = (&v112 - v11);
  v12 = sub_1E65DC4B8();
  v140 = *(v12 - 8);
  v141 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v150 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AppComposer(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8);
  v132 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v146 = &v112 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v130 = &v112 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v128 = &v112 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v125 = &v112 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v124 = &v112 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v122 = &v112 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v120 = &v112 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v118 = &v112 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v116 = &v112 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v113 = &v112 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v112 = &v112 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v114 = &v112 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v115 = &v112 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v117 = &v112 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v119 = &v112 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v121 = &v112 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v52 = &v112 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = &v112 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v57 = &v112 - v56;
  v58 = sub_1E65DC4E8();
  MEMORY[0x1EEE9AC00](v58 - 8);
  v131 = &v112 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1E65DC708();
  v61 = *(v60 - 8);
  v138 = v60;
  v139 = v61;
  MEMORY[0x1EEE9AC00](v60);
  v148 = &v112 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = *a1;
  sub_1E5E1D2E4(a1, v57, type metadata accessor for AppComposer);
  v63 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v129 = swift_allocObject();
  v137 = v57;
  sub_1E5E1DF78(v57, v129 + v63, type metadata accessor for AppComposer);
  sub_1E5E1D2E4(a1, v55, type metadata accessor for AppComposer);
  v127 = swift_allocObject();
  sub_1E5E1DF78(v55, v127 + v63, type metadata accessor for AppComposer);
  sub_1E5E1D2E4(a1, v52, type metadata accessor for AppComposer);
  v126 = swift_allocObject();
  sub_1E5E1DF78(v52, v126 + v63, type metadata accessor for AppComposer);
  v64 = v121;
  sub_1E5E1D2E4(a1, v121, type metadata accessor for AppComposer);
  v123 = swift_allocObject();
  sub_1E5E1DF78(v64, v123 + v63, type metadata accessor for AppComposer);
  v65 = v119;
  sub_1E5E1D2E4(a1, v119, type metadata accessor for AppComposer);
  v121 = swift_allocObject();
  sub_1E5E1DF78(v65, v121 + v63, type metadata accessor for AppComposer);
  v66 = v117;
  sub_1E5E1D2E4(a1, v117, type metadata accessor for AppComposer);
  v119 = swift_allocObject();
  sub_1E5E1DF78(v66, v119 + v63, type metadata accessor for AppComposer);
  v67 = v115;
  sub_1E5E1D2E4(a1, v115, type metadata accessor for AppComposer);
  v117 = swift_allocObject();
  sub_1E5E1DF78(v67, v117 + v63, type metadata accessor for AppComposer);
  v68 = v114;
  sub_1E5E1D2E4(a1, v114, type metadata accessor for AppComposer);
  v115 = swift_allocObject();
  sub_1E5E1DF78(v68, v115 + v63, type metadata accessor for AppComposer);
  v69 = v112;
  sub_1E5E1D2E4(a1, v112, type metadata accessor for AppComposer);
  v114 = swift_allocObject();
  sub_1E5E1DF78(v69, v114 + v63, type metadata accessor for AppComposer);
  v70 = v113;
  sub_1E5E1D2E4(a1, v113, type metadata accessor for AppComposer);
  v112 = swift_allocObject();
  sub_1E5E1DF78(v70, v112 + v63, type metadata accessor for AppComposer);
  v71 = v116;
  sub_1E5E1D2E4(a1, v116, type metadata accessor for AppComposer);
  v113 = swift_allocObject();
  sub_1E5E1DF78(v71, v113 + v63, type metadata accessor for AppComposer);
  v72 = v118;
  sub_1E5E1D2E4(a1, v118, type metadata accessor for AppComposer);
  v116 = swift_allocObject();
  sub_1E5E1DF78(v72, v116 + v63, type metadata accessor for AppComposer);
  v73 = v120;
  sub_1E5E1D2E4(a1, v120, type metadata accessor for AppComposer);
  v118 = swift_allocObject();
  sub_1E5E1DF78(v73, v118 + v63, type metadata accessor for AppComposer);
  v74 = v122;
  sub_1E5E1D2E4(a1, v122, type metadata accessor for AppComposer);
  v120 = swift_allocObject();
  sub_1E5E1DF78(v74, v120 + v63, type metadata accessor for AppComposer);
  v75 = v124;
  sub_1E5E1D2E4(a1, v124, type metadata accessor for AppComposer);
  v122 = swift_allocObject();
  sub_1E5E1DF78(v75, v122 + v63, type metadata accessor for AppComposer);
  v76 = v125;
  sub_1E5E1D2E4(a1, v125, type metadata accessor for AppComposer);
  v124 = swift_allocObject();
  sub_1E5E1DF78(v76, v124 + v63, type metadata accessor for AppComposer);
  v77 = v128;
  sub_1E5E1D2E4(a1, v128, type metadata accessor for AppComposer);
  v125 = swift_allocObject();
  sub_1E5E1DF78(v77, v125 + v63, type metadata accessor for AppComposer);
  v78 = v130;
  sub_1E5E1D2E4(a1, v130, type metadata accessor for AppComposer);
  v128 = swift_allocObject();
  sub_1E5E1DF78(v78, v128 + v63, type metadata accessor for AppComposer);
  v79 = v146;
  sub_1E5E1D2E4(a1, v146, type metadata accessor for AppComposer);
  v80 = (v63 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  sub_1E5E1DF78(v79, v82 + v63, type metadata accessor for AppComposer);
  v130 = v80;
  v83 = (v82 + v80);
  v84 = v133;
  v85 = v134;
  *v83 = v149;
  v83[1] = v85;
  *(v82 + v81) = v84;
  v86 = a1;
  v87 = a1;
  v88 = v132;
  sub_1E5E1D2E4(v87, v132, type metadata accessor for AppComposer);
  v89 = swift_allocObject();
  v146 = v63;
  sub_1E5E1DF78(v88, v89 + v63, type metadata accessor for AppComposer);
  swift_retain_n();

  v90 = v135;
  sub_1E65DC4D8();
  sub_1E65DC6F8();
  swift_getKeyPath();
  v91 = v136;
  sub_1E65E4EC8();

  sub_1E5E1DF78(v91, v90, type metadata accessor for BrowsingIdentity);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  if ((*(*(v92 - 8) + 48))(v90, 1, v92) != 1)
  {
    v93 = *(v92 + 48);
    v94 = sub_1E65DA2A8();
    (*(*(v94 - 8) + 8))(v90 + v93, v94);
    sub_1E5FEE09C(v90, type metadata accessor for RemoteParticipantScope);
  }

  sub_1E65DC4A8();
  v95 = v86;
  v96 = v137;
  sub_1E5E1D2E4(v86, v137, type metadata accessor for AppComposer);
  v97 = v130;
  v98 = swift_allocObject();
  v136 = type metadata accessor for AppComposer;
  sub_1E5E1DF78(v96, v98 + v146, type metadata accessor for AppComposer);
  v99 = (v98 + v97);
  *v99 = v149;
  v99[1] = v85;
  type metadata accessor for AppFeature(0);
  sub_1E5FEDF78(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v149 = sub_1E5FEDF78(&qword_1EE2D6B20, MEMORY[0x1E699E160], MEMORY[0x1E699E158]);

  v100 = v143;
  v101 = v138;
  sub_1E65E4DE8();
  sub_1E5E1D2E4(v95, v96, type metadata accessor for AppComposer);
  v102 = v142;
  v103 = v142[9];
  v134 = v142[7];
  v135 = v103;
  v104 = swift_allocObject();
  sub_1E5E1DF78(v96, v104 + v146, v136);
  v105 = (v104 + v97);
  v106 = v102[3];
  v105[2] = v102[2];
  v105[3] = v106;
  v105[4] = v102[4];
  v107 = v102[1];
  *v105 = *v102;
  v105[1] = v107;
  swift_unknownObjectRetain();

  v108 = v148;
  v109 = v150;
  v110 = sub_1E65E4F08();

  (*(v144 + 8))(v100, v145);
  (*(v140 + 8))(v109, v141);
  (*(v139 + 8))(v108, v101);
  return v110;
}

uint64_t sub_1E5FD4414(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 112) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  v4 = sub_1E65DDD48();
  *(v3 + 72) = v4;
  *(v3 + 80) = *(v4 - 8);
  *(v3 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FD44D8, 0, 0);
}

uint64_t sub_1E5FD44D8()
{
  sub_1E65DE3C8();
  sub_1E5FE9CF0("forYouRequest", 13, 2, &dword_1E5DE9000, 1, (v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FD45A0;
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 112);

  return sub_1E5FD486C(v2, v3, v4);
}

uint64_t sub_1E5FD45A0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E5FD4774;
  }

  else
  {
    v2 = sub_1E5FD46B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FD46B4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_1E65DDDA8();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5FD4774()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_1E65DDDA8();
  swift_willThrow();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_1E65DDD98();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5FD486C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 10840) = a3;
  *(v3 + 6040) = a2;
  *(v3 + 5992) = a1;
  v4 = sub_1E65DC898();
  *(v3 + 6088) = v4;
  *(v3 + 6136) = *(v4 - 8);
  *(v3 + 6184) = swift_task_alloc();
  *(v3 + 6232) = swift_task_alloc();
  v5 = sub_1E65D9E18();
  *(v3 + 6280) = v5;
  *(v3 + 6328) = *(v5 - 8);
  *(v3 + 6376) = swift_task_alloc();
  v6 = sub_1E65DA708();
  *(v3 + 6424) = v6;
  *(v3 + 6472) = *(v6 - 8);
  *(v3 + 6520) = swift_task_alloc();
  v7 = sub_1E65DC988();
  *(v3 + 6568) = v7;
  *(v3 + 6616) = *(v7 - 8);
  *(v3 + 6664) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728C0, &qword_1E65EBF58);
  *(v3 + 6712) = swift_task_alloc();
  v8 = sub_1E65D7848();
  *(v3 + 6760) = v8;
  *(v3 + 6808) = *(v8 - 8);
  *(v3 + 6856) = swift_task_alloc();
  type metadata accessor for AppEnvironment(0);
  *(v3 + 6904) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728C8, &qword_1E65EBF60);
  *(v3 + 6952) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728D0, &qword_1E65EBF68);
  *(v3 + 7000) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728D8, &qword_1E65EBF70);
  *(v3 + 7048) = v9;
  *(v3 + 7096) = *(v9 - 8);
  *(v3 + 7144) = swift_task_alloc();
  v10 = sub_1E65D82F8();
  *(v3 + 7192) = v10;
  *(v3 + 7240) = *(v10 - 8);
  *(v3 + 7288) = swift_task_alloc();
  *(v3 + 7336) = swift_task_alloc();
  v11 = type metadata accessor for AppComposer(0);
  *(v3 + 7384) = v11;
  v12 = *(v11 - 8);
  *(v3 + 7432) = v12;
  *(v3 + 7480) = *(v12 + 64);
  *(v3 + 7528) = swift_task_alloc();
  *(v3 + 7576) = swift_task_alloc();
  *(v3 + 7624) = swift_task_alloc();
  *(v3 + 7672) = swift_task_alloc();
  *(v3 + 7720) = swift_task_alloc();
  *(v3 + 7768) = swift_task_alloc();
  *(v3 + 7816) = swift_task_alloc();
  *(v3 + 7864) = swift_task_alloc();
  v13 = sub_1E65DA948();
  *(v3 + 7912) = v13;
  *(v3 + 7960) = *(v13 - 8);
  *(v3 + 8008) = swift_task_alloc();
  *(v3 + 8056) = swift_task_alloc();
  *(v3 + 8104) = swift_task_alloc();
  *(v3 + 8152) = swift_task_alloc();
  *(v3 + 8200) = swift_task_alloc();
  *(v3 + 8248) = swift_task_alloc();
  v14 = sub_1E65E3B68();
  *(v3 + 8296) = v14;
  *(v3 + 8344) = *(v14 - 8);
  *(v3 + 8392) = swift_task_alloc();
  *(v3 + 8440) = swift_task_alloc();
  *(v3 + 8488) = swift_task_alloc();
  v15 = sub_1E65D76F8();
  *(v3 + 8536) = v15;
  v16 = *(v15 - 8);
  *(v3 + 8584) = v16;
  *(v3 + 8632) = *(v16 + 64);
  *(v3 + 8680) = swift_task_alloc();
  *(v3 + 8728) = swift_task_alloc();
  *(v3 + 8776) = swift_task_alloc();
  *(v3 + 8824) = swift_task_alloc();
  *(v3 + 8872) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FD4EB0, 0, 0);
}

uint64_t sub_1E5FD4EB0(uint64_t a1)
{
  v57 = v1;
  v2 = *(v1 + 8872);
  v3 = *(v1 + 8824);
  v4 = *(v1 + 8584);
  v5 = *(v1 + 8536);
  sub_1E65D76E8();
  sub_1E65DE318();
  v6 = *(v4 + 16);
  *(v1 + 8920) = v6;
  *(v1 + 8968) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v49 = v6;
  v6(v3, v2, v5);
  v7 = sub_1E65E3B48();
  v8 = sub_1E65E6338();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v1 + 8824);
  v11 = *(v1 + 8584);
  v12 = *(v1 + 8536);
  v13 = *(v1 + 8488);
  v14 = *(v1 + 8344);
  v15 = *(v1 + 8296);
  if (v9)
  {
    v54 = *(v1 + 8296);
    v16 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v56 = v52;
    *v16 = 136315138;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v47 = v8;
    v17 = sub_1E65E6BC8();
    v50 = v13;
    v19 = v18;
    (*(v11 + 8))(v10, v12);
    v20 = sub_1E5DFD4B0(v17, v19, &v56);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1E5DE9000, v7, v47, "forYouRequest begin — correlationKey=%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x1E694F1C0](v52, -1, -1);
    MEMORY[0x1E694F1C0](v16, -1, -1);

    (*(v14 + 8))(v50, v54);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
    (*(v14 + 8))(v13, v15);
  }

  v21 = *(v1 + 8872);
  v22 = *(v1 + 8776);
  v23 = *(v1 + 8632);
  v24 = *(v1 + 8584);
  v25 = *(v1 + 8536);
  v26 = *(v1 + 7864);
  v44 = *(v1 + 7816);
  v45 = *(v1 + 7768);
  v46 = *(v1 + 7720);
  v48 = *(v1 + 7672);
  v51 = *(v1 + 7624);
  v53 = *(v1 + 7576);
  v55 = *(v1 + 7528);
  v27 = *(v1 + 7480);
  v28 = *(v1 + 7432);
  v42 = *(v1 + 10840);
  v43 = *(v1 + 6040);
  sub_1E5E1D2E4(v43, v26, type metadata accessor for AppComposer);
  v49(v22, v21, v25);
  v29 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v30 = (v29 + v27 + *(v24 + 80)) & ~*(v24 + 80);
  v31 = v30 + v23;
  v32 = swift_allocObject();
  *(v1 + 9016) = v32;
  sub_1E5E1DF78(v26, v32 + v29, type metadata accessor for AppComposer);
  (*(v24 + 32))(v32 + v30, v22, v25);
  *(v32 + v31) = v42;
  swift_asyncLet_begin();
  sub_1E5E1D2E4(v43, v44, type metadata accessor for AppComposer);
  v33 = swift_allocObject();
  *(v1 + 9064) = v33;
  sub_1E5E1DF78(v44, v33 + v29, type metadata accessor for AppComposer);
  swift_asyncLet_begin();
  sub_1E5E1D2E4(v43, v45, type metadata accessor for AppComposer);
  v34 = swift_allocObject();
  *(v1 + 9112) = v34;
  sub_1E5E1DF78(v45, v34 + v29, type metadata accessor for AppComposer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728E0, &qword_1E65EBFA8);
  swift_asyncLet_begin();
  sub_1E5E1D2E4(v43, v46, type metadata accessor for AppComposer);
  v35 = swift_allocObject();
  *(v1 + 9160) = v35;
  sub_1E5E1DF78(v46, v35 + v29, type metadata accessor for AppComposer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728E8, &qword_1E660EFE0);
  swift_asyncLet_begin();
  sub_1E5E1D2E4(v43, v48, type metadata accessor for AppComposer);
  v36 = swift_allocObject();
  *(v1 + 9208) = v36;
  sub_1E5E1DF78(v48, v36 + v29, type metadata accessor for AppComposer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728F0, &qword_1E660EFB0);
  swift_asyncLet_begin();
  sub_1E5E1D2E4(v43, v51, type metadata accessor for AppComposer);
  v37 = swift_allocObject();
  *(v1 + 9256) = v37;
  sub_1E5E1DF78(v51, v37 + v29, type metadata accessor for AppComposer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728F8, &qword_1E65EBFE0);
  swift_asyncLet_begin();
  sub_1E5E1D2E4(v43, v53, type metadata accessor for AppComposer);
  v38 = swift_allocObject();
  *(v1 + 9304) = v38;
  sub_1E5E1DF78(v53, v38 + v29, type metadata accessor for AppComposer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072900, &qword_1E660EF80);
  swift_asyncLet_begin();
  sub_1E5E1D2E4(v43, v55, type metadata accessor for AppComposer);
  v39 = swift_allocObject();
  *(v1 + 9352) = v39;
  sub_1E5E1DF78(v55, v39 + v29, type metadata accessor for AppComposer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072908, &qword_1E660F010);
  swift_asyncLet_begin();
  v40 = *(v1 + 8248);

  return MEMORY[0x1EEE6DEC0](v1 + 1296, v40, sub_1E5FD5614, v1 + 5520);
}

uint64_t sub_1E5FD5614()
{
  *(v1 + 9400) = v0;
  if (v0)
  {
    v2 = sub_1E5FD8A30;
  }

  else
  {
    v2 = sub_1E5FD5648;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FD5648()
{
  v1 = v0[1031];
  v2 = v0[1025];
  v3 = v0[995];
  v4 = v0[989];
  v5 = v0[887];
  v6 = v0[881];
  v7 = v0[875];
  v8 = *(v3 + 16);
  v0[1181] = v8;
  v0[1187] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v1, v4);
  sub_1E65DA938();
  v9 = *(v3 + 8);
  v0[1193] = v9;
  v0[1199] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v4);
  if ((*(v5 + 48))(v7, 1, v6) == 1)
  {
    sub_1E5DFE50C(v0[875], &qword_1ED0728D0, &qword_1E65EBF68);
    v10 = v0[1031];

    return MEMORY[0x1EEE6DEC0](v0 + 162, v10, sub_1E5FD5A28, v0 + 792);
  }

  v11 = v0[869];
  sub_1E5FAB460(v0[875], v0[893], &qword_1ED0728D8, &qword_1E65EBF70);
  sub_1E65D7FB8();
  v12 = sub_1E65D9E28();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_9;
  }

  if ((*(v13 + 88))(v0[869], v12) != *MEMORY[0x1E69CC988])
  {
    (*(v13 + 8))(v0[869], v12);
LABEL_9:
    v14 = 1488;
    v19 = v0[893];
    v20 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    v0[1217] = swift_allocError();
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x1E699E138], v20);
    swift_willThrow();
    sub_1E5DFE50C(v19, &qword_1ED0728D8, &qword_1E65EBF70);
    v18 = sub_1E5FD640C;
    goto LABEL_10;
  }

  v14 = 756;
  v15 = v0[893];
  v16 = sub_1E65DC678();
  sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
  v0[1211] = swift_allocError();
  (*(*(v16 - 8) + 104))(v17, *MEMORY[0x1E699E130], v16);
  swift_willThrow();
  sub_1E5DFE50C(v15, &qword_1ED0728D8, &qword_1E65EBF70);
  v18 = sub_1E5FD5A74;
LABEL_10:

  return MEMORY[0x1EEE6DEB0](v0 + 322, v0 + 725, v18, &v0[v14]);
}

uint64_t sub_1E5FD5A28()
{
  *(v1 + 9640) = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 2576, v1 + 5800, sub_1E5FD93F0, v1 + 6384);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1E5FD6DA4, 0, 0);
  }
}

uint64_t sub_1E5FD5C68(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1211];
  v3 = v1[1115];
  v4 = v1[1109];
  v5 = v1[1085];
  v6 = v1[1067];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1085];
    v11 = v1[1073];
    v45 = v2;
    v12 = v1[1067];
    v41 = v1[1043];
    v42 = v1[1037];
    v43 = v1[1049];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1085];
    v24 = v1[1073];
    v25 = v1[1067];
    v26 = v1[1049];
    v27 = v1[1043];
    v28 = v1[1037];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E5FEDF78(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1109], v1[1067]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E5FD6600(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1217];
  v3 = v1[1115];
  v4 = v1[1109];
  v5 = v1[1085];
  v6 = v1[1067];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1085];
    v11 = v1[1073];
    v45 = v2;
    v12 = v1[1067];
    v41 = v1[1043];
    v42 = v1[1037];
    v43 = v1[1049];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1085];
    v24 = v1[1073];
    v25 = v1[1067];
    v26 = v1[1049];
    v27 = v1[1043];
    v28 = v1[1037];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E5FEDF78(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1109], v1[1067]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E5FD6DA4()
{
  v1 = *(v0 + 7384);
  v2 = *(v0 + 6904);
  v3 = *(v0 + 6040);
  (*(v0 + 9448))(*(v0 + 8152), *(v0 + 8248), *(v0 + 7912));
  sub_1E5E1D2E4(v3 + *(v1 + 20), v2, type metadata accessor for AppEnvironment);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v4 = *(v0 + 7336);

  return MEMORY[0x1EEE6DEC0](v0 + 656, v4, sub_1E5FD6E8C, v0 + 6768);
}

uint64_t sub_1E5FD6E8C()
{
  v1[1223] = v0;
  if (v0)
  {
    v2 = v1[1193];
    v3 = v1[1019];
    v4 = v1[989];
    v5 = v1[863];
    (*(v1[851] + 8))(v1[857], v1[845]);
    sub_1E5FEE09C(v5, type metadata accessor for AppEnvironment);
    v2(v3, v4);

    return MEMORY[0x1EEE6DFA0](sub_1E5FD9D88, 0, 0);
  }

  else
  {
    (*(v1[905] + 16))(v1[911], v1[917], v1[899]);

    return MEMORY[0x1EEE6DEC0](v1 + 242, v1 + 731, sub_1E5FD6FC8, v1 + 900);
  }
}

uint64_t sub_1E5FD6FC8()
{
  v1[1229] = v0;
  if (v0)
  {
    v2 = v1[1193];
    v3 = v1[1019];
    v4 = v1[989];
    v5 = v1[863];
    v6 = v1[857];
    v7 = v1[851];
    v8 = v1[845];
    (*(v1[905] + 8))(v1[911], v1[899]);
    (*(v7 + 8))(v6, v8);
    sub_1E5FEE09C(v5, type metadata accessor for AppEnvironment);
    v2(v3, v4);

    return MEMORY[0x1EEE6DFA0](sub_1E5FDA748, 0, 0);
  }

  else
  {
    v1[1235] = v1[731];

    return MEMORY[0x1EEE6DEC0](v1 + 402, v1 + 719, sub_1E5FD7120, v1 + 954);
  }
}

uint64_t sub_1E5FD7120()
{
  v1[1241] = v0;
  if (v0)
  {
    v12 = v1[1193];
    v2 = v1[1019];
    v3 = v1[989];
    v4 = v1[911];
    v5 = v1[905];
    v6 = v1[899];
    v7 = v1[863];
    v8 = v1[857];
    v9 = v1[851];
    v10 = v1[845];

    (*(v5 + 8))(v4, v6);
    (*(v9 + 8))(v8, v10);
    sub_1E5FEE09C(v7, type metadata accessor for AppEnvironment);
    v12(v2, v3);

    return MEMORY[0x1EEE6DFA0](sub_1E5FDB108, 0, 0);
  }

  else
  {
    v1[1247] = v1[719];

    return MEMORY[0x1EEE6DEC0](v1 + 562, v1 + 689, sub_1E5FD72A0, v1 + 1008);
  }
}

uint64_t sub_1E5FD72A0()
{
  v1[1253] = v0;
  if (v0)
  {
    v12 = v1[1193];
    v11 = v1[1019];
    v2 = v1[989];
    v3 = v1[911];
    v4 = v1[905];
    v5 = v1[899];
    v6 = v1[863];
    v7 = v1[857];
    v8 = v1[851];
    v9 = v1[845];

    (*(v4 + 8))(v3, v5);
    (*(v8 + 8))(v7, v9);
    sub_1E5FEE09C(v6, type metadata accessor for AppEnvironment);
    v12(v11, v2);

    return MEMORY[0x1EEE6DFA0](sub_1E5FDBAC8, 0, 0);
  }

  else
  {
    v1[1259] = v1[689];

    return MEMORY[0x1EEE6DEC0](v1 + 2, v1 + 743, sub_1E5FD742C, v1 + 1062);
  }
}

uint64_t sub_1E5FD742C()
{
  v1[1265] = v0;
  if (v0)
  {
    v12 = v1[1193];
    v10 = v1[989];
    v11 = v1[1019];
    v2 = v1[911];
    v3 = v1[905];
    v4 = v1[899];
    v5 = v1[863];
    v6 = v1[857];
    v7 = v1[851];
    v8 = v1[845];

    (*(v3 + 8))(v2, v4);
    (*(v7 + 8))(v6, v8);
    sub_1E5FEE09C(v5, type metadata accessor for AppEnvironment);
    v12(v11, v10);

    return MEMORY[0x1EEE6DFA0](sub_1E5FDC488, 0, 0);
  }

  else
  {
    v1[1271] = v1[743];

    return MEMORY[0x1EEE6DEC0](v1 + 482, v1 + 737, sub_1E5FD75C0, v1 + 1116);
  }
}

uint64_t sub_1E5FD75C0()
{
  v1[1277] = v0;
  if (v0)
  {
    v12 = v1[1193];
    v10 = v1[989];
    v11 = v1[1019];
    v2 = v1[911];
    v3 = v1[905];
    v4 = v1[899];
    v9 = v1[863];
    v5 = v1[857];
    v6 = v1[851];
    v7 = v1[845];

    (*(v3 + 8))(v2, v4);
    (*(v6 + 8))(v5, v7);
    sub_1E5FEE09C(v9, type metadata accessor for AppEnvironment);
    v12(v11, v10);

    return MEMORY[0x1EEE6DFA0](sub_1E5FDCE48, 0, 0);
  }

  else
  {
    v1[1283] = v1[737];

    return MEMORY[0x1EEE6DEC0](v1 + 322, v1 + 725, sub_1E5FD7764, v1 + 1170);
  }
}

uint64_t sub_1E5FD7764()
{
  v1[1289] = v0;
  if (v0)
  {
    v13 = v1[1193];
    v11 = v1[989];
    v12 = v1[1019];
    v2 = v1[911];
    v3 = v1[905];
    v4 = v1[899];
    v9 = v1[857];
    v10 = v1[863];
    v5 = v1[851];
    v6 = v1[845];

    (*(v3 + 8))(v2, v4);
    (*(v5 + 8))(v9, v6);
    sub_1E5FEE09C(v10, type metadata accessor for AppEnvironment);
    v13(v12, v11);
    v7 = sub_1E5FDD808;
  }

  else
  {
    v7 = sub_1E5FD78C4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E5FD78C4()
{
  v1 = v0[1283];
  v2 = v0[1271];
  v3 = v0[1259];
  v12 = v0[1235];
  v13 = v0[1247];
  v4 = v0[1019];
  v18 = v0[989];
  v19 = v0[1193];
  v5 = v0[911];
  v6 = v0[863];
  v16 = v0[899];
  v7 = v0[857];
  v14 = v0[905];
  v15 = v0[851];
  v17 = v0[845];
  v8 = v0[725];

  v11 = sub_1E6482BC0() & 1;
  v0[1295] = PersonalizationInferenceResponse.makeSectionDescriptors(environment:locale:configuration:bodyFocuses:themes:musicGenres:skillLevels:trainers:modalities:isPlanCreationSupported:)(v6, v7, v5, v12, v13, v3, v2, v1, v8, v11);

  (*(v14 + 8))(v5, v16);
  (*(v15 + 8))(v7, v17);
  sub_1E5FEE09C(v6, type metadata accessor for AppEnvironment);
  v19(v4, v18);
  v9 = v0[1031];

  return MEMORY[0x1EEE6DEC0](v0 + 162, v9, sub_1E5FD7A90, v0 + 1224);
}

uint64_t sub_1E5FD7A90()
{
  *(v1 + 10408) = v0;
  if (v0)
  {
    v2 = sub_1E5FDE1C8;
  }

  else
  {
    v2 = sub_1E5FD7AC4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FD7AC4()
{
  v1 = *(v0 + 9544);
  v2 = *(v0 + 8104);
  v3 = *(v0 + 7912);
  (*(v0 + 9448))(v2, *(v0 + 8248), v3);
  v4 = sub_1E65DA8E8();
  v5 = v3;
  v6 = v4;
  v1(v2, v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v0 + 6616);
    v9 = *(v0 + 6472);
    v10 = *(v0 + 6328);
    v11 = *(v0 + 6136);
    v61 = MEMORY[0x1E69E7CC0];
    v12 = sub_1E601BF64(0, v7, 0);
    v16 = v61;
    v49 = v6 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v46 = v10;
    v59 = (v10 + 8);
    v17 = 0;
    v58 = (v11 + 32);
    v50 = v9;
    v51 = v8;
    v48 = (v9 + 8);
    v55 = v0;
    v47 = v6;
    v52 = v7;
    while (v17 < *(v6 + 16))
    {
      v53 = v16;
      v54 = v17;
      (*(v50 + 16))(*(v0 + 6520), v49 + *(v50 + 72) * v17, *(v0 + 6424));
      v18 = sub_1E65DA6D8();
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v18 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
        v21 = *(v46 + 72);
        v60 = *(v46 + 16);
        v22 = MEMORY[0x1E69E7CC0];
        v56 = v21;
        v60(*(v0 + 6376), v20, *(v0 + 6280));
        while (1)
        {
          v23 = sub_1E65D9DD8();
          v25 = v24;
          v27 = v26;
          v28 = sub_1E6413384(v23, v24, v26 & 1);
          sub_1E5F87058(v23, v25, v27 & 1);
          v29 = *(v0 + 6376);
          v30 = *(v0 + 6280);
          if (v28 == 9)
          {
            (*v59)(*(v0 + 6376), *(v0 + 6280));
          }

          else
          {
            v31 = *(v0 + 6232);
            v32 = *(v0 + 6184);
            v57 = *(v0 + 6088);
            sub_1E65D9DA8();
            sub_1E65D9DF8();
            sub_1E65DC858();
            (*v59)(v29, v30);
            v33 = *v58;
            (*v58)(v31, v32, v57);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_1E64F615C(0, v22[2] + 1, 1, v22);
            }

            v35 = v22[2];
            v34 = v22[3];
            v0 = v55;
            if (v35 >= v34 >> 1)
            {
              v22 = sub_1E64F615C((v34 > 1), v35 + 1, 1, v22);
            }

            v36 = *(v55 + 6232);
            v37 = *(v55 + 6088);
            v22[2] = v35 + 1;
            v33(v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v35, v36, v37);
            v21 = v56;
          }

          v20 += v21;
          if (!--v19)
          {
            break;
          }

          v60(*(v0 + 6376), v20, *(v0 + 6280));
        }

        v6 = v47;
      }

      else
      {
      }

      v38 = v0;
      v39 = *(v0 + 6520);
      v40 = *(v0 + 6424);
      sub_1E65DA6E8();
      sub_1E65DA6F8();
      sub_1E65DC948();
      (*v48)(v39, v40);
      v16 = v53;
      v42 = *(v53 + 16);
      v41 = *(v53 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1E601BF64((v41 > 1), v42 + 1, 1);
        v16 = v53;
      }

      v17 = v54 + 1;
      v43 = *(v38 + 6664);
      v44 = *(v38 + 6568);
      *(v16 + 16) = v42 + 1;
      v12 = (*(v51 + 32))(v16 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v42, v43, v44);
      v0 = v38;
      if (v54 + 1 == v52)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
LABEL_22:
    *(v0 + 10456) = v16;
    v14 = sub_1E5FD7F74;
    v13 = *(v0 + 8248);
    v12 = (v0 + 1296);
    v15 = v0 + 10224;
  }

  return MEMORY[0x1EEE6DEC0](v12, v13, v14, v15);
}

uint64_t sub_1E5FD7F74()
{
  *(v1 + 10504) = v0;
  if (v0)
  {

    v2 = sub_1E5FDEBD4;
  }

  else
  {
    v2 = sub_1E5FD8000;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FD8000()
{
  v1 = *(v0 + 9544);
  v2 = *(v0 + 8056);
  v3 = *(v0 + 7912);
  v4 = *(v0 + 6712);
  (*(v0 + 9448))(v2, *(v0 + 8248), v3);
  sub_1E65DA908();
  v1(v2, v3);
  v5 = sub_1E65D99B8();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = *(v0 + 6712);
  if (v7 == 1)
  {
    sub_1E5DFE50C(*(v0 + 6712), &qword_1ED0728C0, &qword_1E65EBF58);
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    v9 = sub_1E65D99A8();
    v10 = v11;
    (*(v6 + 8))(v8, v5);
  }

  *(v0 + 10600) = v10;
  *(v0 + 10552) = v9;
  v12 = *(v0 + 8248);

  return MEMORY[0x1EEE6DEC0](v0 + 1296, v12, sub_1E5FD816C, v0 + 10656);
}

uint64_t sub_1E5FD816C()
{
  *(v1 + 10648) = v0;
  if (v0)
  {
    v2 = sub_1E5FDF594;
  }

  else
  {
    v2 = sub_1E5FD81A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FD81A0()
{
  v1 = *(v0 + 9544);
  v2 = *(v0 + 8008);
  v3 = *(v0 + 7912);
  (*(v0 + 9448))(v2, *(v0 + 8248), v3);
  sub_1E65DA8F8();
  *(v0 + 10696) = v4;
  v1(v2, v3);
  v5 = *(v0 + 8248);

  return MEMORY[0x1EEE6DEC0](v0 + 1296, v5, sub_1E5FD8254, v0 + 11088);
}

uint64_t sub_1E5FD8254()
{
  *(v1 + 10744) = v0;
  if (v0)
  {
    v2 = sub_1E5FDFFC0;
  }

  else
  {
    v2 = sub_1E5FD8288;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FD8288()
{
  v31 = v0;
  v1 = *(v0 + 9544);
  v2 = *(v0 + 8920);
  v3 = *(v0 + 8872);
  v4 = *(v0 + 8728);
  v5 = *(v0 + 8536);
  v6 = *(v0 + 8008);
  v7 = *(v0 + 7912);
  (*(v0 + 9448))(v6, *(v0 + 8248), v7);
  sub_1E65DA8D8();
  v1(v6, v7);
  sub_1E65DE318();
  v2(v4, v3, v5);
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 8728);
  v12 = *(v0 + 8584);
  v13 = *(v0 + 8536);
  v14 = *(v0 + 8440);
  v15 = *(v0 + 8344);
  v16 = *(v0 + 8296);
  if (v10)
  {
    v29 = *(v0 + 8296);
    v17 = swift_slowAlloc();
    v27 = v9;
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136315138;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v19 = sub_1E65E6BC8();
    v28 = v14;
    v21 = v20;
    v23 = *(v12 + 8);
    v22 = v12 + 8;
    v23(v11, v13);
    v24 = sub_1E5DFD4B0(v19, v21, &v30);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_1E5DE9000, v8, v27, "forYouRequest end — correlationKey=%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1E694F1C0](v18, -1, -1);
    MEMORY[0x1E694F1C0](v17, -1, -1);

    (*(v15 + 8))(v28, v29);
  }

  else
  {

    v25 = *(v12 + 8);
    v22 = v12 + 8;
    v25(v11, v13);
    (*(v15 + 8))(v14, v16);
  }

  *(v0 + 10792) = v22;
  sub_1E65DC838();

  return MEMORY[0x1EEE6DEB0](v0 + 2576, v0 + 5800, sub_1E5FD8540, v0 + 11520);
}

uint64_t sub_1E5FD8734()
{
  (*(v0[1073] + 8))(v0[1109], v0[1067]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E5FD8C4C(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1175];
  v3 = v1[1115];
  v4 = v1[1109];
  v5 = v1[1085];
  v6 = v1[1067];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1085];
    v11 = v1[1073];
    v45 = v2;
    v12 = v1[1067];
    v41 = v1[1043];
    v42 = v1[1037];
    v43 = v1[1049];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1085];
    v24 = v1[1073];
    v25 = v1[1067];
    v26 = v1[1049];
    v27 = v1[1043];
    v28 = v1[1037];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E5FEDF78(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1109], v1[1067]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E5FD95E4(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1205];
  v3 = v1[1115];
  v4 = v1[1109];
  v5 = v1[1085];
  v6 = v1[1067];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1085];
    v11 = v1[1073];
    v45 = v2;
    v12 = v1[1067];
    v41 = v1[1043];
    v42 = v1[1037];
    v43 = v1[1049];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1085];
    v24 = v1[1073];
    v25 = v1[1067];
    v26 = v1[1049];
    v27 = v1[1043];
    v28 = v1[1037];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E5FEDF78(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1109], v1[1067]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E5FD9FA4(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1223];
  v3 = v1[1115];
  v4 = v1[1109];
  v5 = v1[1085];
  v6 = v1[1067];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1085];
    v11 = v1[1073];
    v45 = v2;
    v12 = v1[1067];
    v41 = v1[1043];
    v42 = v1[1037];
    v43 = v1[1049];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1085];
    v24 = v1[1073];
    v25 = v1[1067];
    v26 = v1[1049];
    v27 = v1[1043];
    v28 = v1[1037];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E5FEDF78(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1109], v1[1067]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E5FDA964(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1229];
  v3 = v1[1115];
  v4 = v1[1109];
  v5 = v1[1085];
  v6 = v1[1067];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1085];
    v11 = v1[1073];
    v45 = v2;
    v12 = v1[1067];
    v41 = v1[1043];
    v42 = v1[1037];
    v43 = v1[1049];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1085];
    v24 = v1[1073];
    v25 = v1[1067];
    v26 = v1[1049];
    v27 = v1[1043];
    v28 = v1[1037];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E5FEDF78(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1109], v1[1067]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E5FDB324(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1241];
  v3 = v1[1115];
  v4 = v1[1109];
  v5 = v1[1085];
  v6 = v1[1067];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1085];
    v11 = v1[1073];
    v45 = v2;
    v12 = v1[1067];
    v41 = v1[1043];
    v42 = v1[1037];
    v43 = v1[1049];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1085];
    v24 = v1[1073];
    v25 = v1[1067];
    v26 = v1[1049];
    v27 = v1[1043];
    v28 = v1[1037];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E5FEDF78(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1109], v1[1067]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E5FDBCE4(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1253];
  v3 = v1[1115];
  v4 = v1[1109];
  v5 = v1[1085];
  v6 = v1[1067];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1085];
    v11 = v1[1073];
    v45 = v2;
    v12 = v1[1067];
    v41 = v1[1043];
    v42 = v1[1037];
    v43 = v1[1049];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1085];
    v24 = v1[1073];
    v25 = v1[1067];
    v26 = v1[1049];
    v27 = v1[1043];
    v28 = v1[1037];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E5FEDF78(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1109], v1[1067]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E5FDC6A4(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1265];
  v3 = v1[1115];
  v4 = v1[1109];
  v5 = v1[1085];
  v6 = v1[1067];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1085];
    v11 = v1[1073];
    v45 = v2;
    v12 = v1[1067];
    v41 = v1[1043];
    v42 = v1[1037];
    v43 = v1[1049];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1085];
    v24 = v1[1073];
    v25 = v1[1067];
    v26 = v1[1049];
    v27 = v1[1043];
    v28 = v1[1037];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E5FEDF78(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1109], v1[1067]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E5FDD064(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1277];
  v3 = v1[1115];
  v4 = v1[1109];
  v5 = v1[1085];
  v6 = v1[1067];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1085];
    v11 = v1[1073];
    v45 = v2;
    v12 = v1[1067];
    v41 = v1[1043];
    v42 = v1[1037];
    v43 = v1[1049];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1085];
    v24 = v1[1073];
    v25 = v1[1067];
    v26 = v1[1049];
    v27 = v1[1043];
    v28 = v1[1037];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E5FEDF78(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1109], v1[1067]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E5FDDA24(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1289];
  v3 = v1[1115];
  v4 = v1[1109];
  v5 = v1[1085];
  v6 = v1[1067];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1085];
    v11 = v1[1073];
    v45 = v2;
    v12 = v1[1067];
    v41 = v1[1043];
    v42 = v1[1037];
    v43 = v1[1049];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1085];
    v24 = v1[1073];
    v25 = v1[1067];
    v26 = v1[1049];
    v27 = v1[1043];
    v28 = v1[1037];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E5FEDF78(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1109], v1[1067]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E5FDE1C8()
{

  return MEMORY[0x1EEE6DEB0](v0 + 2576, v0 + 5800, sub_1E5FDE23C, v0 + 9840);
}

uint64_t sub_1E5FDE430(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1301];
  v3 = v1[1115];
  v4 = v1[1109];
  v5 = v1[1085];
  v6 = v1[1067];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1085];
    v11 = v1[1073];
    v45 = v2;
    v12 = v1[1067];
    v41 = v1[1043];
    v42 = v1[1037];
    v43 = v1[1049];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1085];
    v24 = v1[1073];
    v25 = v1[1067];
    v26 = v1[1049];
    v27 = v1[1043];
    v28 = v1[1037];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E5FEDF78(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1109], v1[1067]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E5FDEDF0(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1313];
  v3 = v1[1115];
  v4 = v1[1109];
  v5 = v1[1085];
  v6 = v1[1067];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1085];
    v11 = v1[1073];
    v45 = v2;
    v12 = v1[1067];
    v41 = v1[1043];
    v42 = v1[1037];
    v43 = v1[1049];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1085];
    v24 = v1[1073];
    v25 = v1[1067];
    v26 = v1[1049];
    v27 = v1[1043];
    v28 = v1[1037];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E5FEDF78(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1109], v1[1067]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E5FDF594()
{

  return MEMORY[0x1EEE6DEB0](v0 + 2576, v0 + 5800, sub_1E5FDF628, v0 + 10704);
}

uint64_t sub_1E5FDF81C(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1331];
  v3 = v1[1115];
  v4 = v1[1109];
  v5 = v1[1085];
  v6 = v1[1067];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1085];
    v11 = v1[1073];
    v45 = v2;
    v12 = v1[1067];
    v41 = v1[1043];
    v42 = v1[1037];
    v43 = v1[1049];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1085];
    v24 = v1[1073];
    v25 = v1[1067];
    v26 = v1[1049];
    v27 = v1[1043];
    v28 = v1[1037];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E5FEDF78(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1109], v1[1067]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E5FDFFC0()
{

  return MEMORY[0x1EEE6DEB0](v0 + 2576, v0 + 5800, sub_1E5FE0054, v0 + 11136);
}

uint64_t sub_1E5FE0248(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1343];
  v3 = v1[1115];
  v4 = v1[1109];
  v5 = v1[1085];
  v6 = v1[1067];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1085];
    v11 = v1[1073];
    v45 = v2;
    v12 = v1[1067];
    v41 = v1[1043];
    v42 = v1[1037];
    v43 = v1[1049];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1085];
    v24 = v1[1073];
    v25 = v1[1067];
    v26 = v1[1049];
    v27 = v1[1043];
    v28 = v1[1037];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E5FEDF78(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1109], v1[1067]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E5FE09EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 112) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = sub_1E65D76F8();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  v6 = sub_1E65DAB98();
  *(v4 + 64) = v6;
  *(v4 + 72) = *(v6 - 8);
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE0B10, 0, 0);
}

uint64_t sub_1E5FE0B10()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v5 = PersonalizationService.fetchPersonalizationInferenceResponse.getter();
  v0[11] = v6;
  (*(v2 + 16))(v1, v4, v3);
  sub_1E65DDFC8();
  sub_1E65DAB88();
  v11 = (v5 + *v5);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FE0C9C;
  v8 = v0[10];
  v9 = v0[2];

  return v11(v9, v8);
}

uint64_t sub_1E5FE0C9C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5FE0E84, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1E5FE0E84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FE0EF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE0F14, 0, 0);
}

uint64_t sub_1E5FE0F14()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = ConfigurationService.queryConfiguration.getter();
  v0[4] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FE1030;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_1E5FE1030()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1E5FAD050;
  }

  else
  {
    v2 = sub_1E5FAC604;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FE1144(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE1164, 0, 0);
}

uint64_t sub_1E5FE1164()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = CatalogService.queryAllBodyFocuses.getter();
  *(v0 + 32) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1E5FE1278;

  return v5();
}

uint64_t sub_1E5FE1278(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1E5FEE4E8;
  }

  else
  {

    *(v4 + 56) = a1;
    v5 = sub_1E5FEE4D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E5FE13A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE13C8, 0, 0);
}

uint64_t sub_1E5FE13C8()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = CatalogService.queryAllCatalogThemes.getter();
  *(v0 + 32) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1E5FE1278;

  return v5();
}

uint64_t sub_1E5FE14DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE14FC, 0, 0);
}

uint64_t sub_1E5FE14FC()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = CatalogService.queryAllMusicGenres.getter();
  *(v0 + 32) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1E5FE1610;

  return v5();
}

uint64_t sub_1E5FE1610(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1E5FEE4E8;
  }

  else
  {

    *(v4 + 56) = a1;
    v5 = sub_1E5FE1740;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E5FE1764(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE1784, 0, 0);
}

uint64_t sub_1E5FE1784()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = CatalogService.queryAllSkillLevels.getter();
  *(v0 + 32) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1E5FE1278;

  return v5();
}

uint64_t sub_1E5FE1898(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE18B8, 0, 0);
}

uint64_t sub_1E5FE18B8()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = CatalogService.queryAllTrainerReferences.getter();
  *(v0 + 32) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1E5FE1278;

  return v5();
}

uint64_t sub_1E5FE19CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE19EC, 0, 0);
}

uint64_t sub_1E5FE19EC()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = CatalogService.queryAllCatalogModalityReferences.getter();
  *(v0 + 32) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1E5FE1278;

  return v5();
}

uint64_t sub_1E5FE1B00(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v1[4] = swift_task_alloc();
  sub_1E65E6058();
  v1[5] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE1BD4, v3, v2);
}

uint64_t sub_1E5FE1BD4()
{
  v1 = *(v0 + 32);

  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  sub_1E5DFE50C(v1, &qword_1ED072828, &qword_1E65EBE20);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FE1C7C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728B0, &qword_1E65EBF38);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE1D1C, 0, 0);
}

uint64_t sub_1E5FE1D1C()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = AwardsService.makeAchievementEnvironmentCacheUpdatedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FE1E38;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E5FE1E38()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FE1F50, 0, 0);
}

uint64_t sub_1E5FE1F50()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728B8, &qword_1E65EBF48);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4490, &qword_1ED0728B8, &qword_1E65EBF48, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E65DC9A8();
  sub_1E5FED46C(&qword_1EE2D4780, &qword_1ED0728B0, &qword_1E65EBF38, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FE20B0()
{
  sub_1E65DC998();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FE2110(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE21B0, 0, 0);
}

uint64_t sub_1E5FE21B0()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  active = WorkoutPlanService.makeActiveWorkoutPlanUpdatedStream.getter();
  v0[6] = v2;
  v6 = (active + *active);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FE22CC;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E5FE22CC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FE23E4, 0, 0);
}

uint64_t sub_1E5FE23E4()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728A8, &qword_1E65EBF30);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4468, &qword_1ED0728A8, &qword_1E65EBF30, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FE2520(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C0, &qword_1E65EBA50);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE25C0, 0, 0);
}

uint64_t sub_1E5FE25C0()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = ContentAvailabilityService.makeAllowedContentRatingsUpdatedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FE26DC;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E5FE26DC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FE27F4, 0, 0);
}

uint64_t sub_1E5FE27F4()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728A0, &qword_1E65EBF20);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4470, &qword_1ED0728A0, &qword_1E65EBF20, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1EE2D4748, &qword_1ED0726C0, &qword_1E65EBA50, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FE2930(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE2950, 0, 0);
}

uint64_t sub_1E5FE2950()
{
  v1 = v0[2];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  active = AppStateService.makeAppDidBecomeActiveStream.getter();
  v0[4] = v3;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88, MEMORY[0x1E69E86A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v7 = (active + *active);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E5FEE4C4;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_1E5FE2AD8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721A0, &qword_1E65EA978);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE2B78, 0, 0);
}

uint64_t sub_1E5FE2B78()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = SessionService.makeAudioLanguagePreferenceUpdatedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FE2C94;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E5FE2C94()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E5FEE4E0;
  }

  else
  {
    v2 = sub_1E5FE2DC4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FE2DC4()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072898, &qword_1E65EBF10);
  v1[4] = sub_1E5FED46C(&qword_1EE2D44B8, &qword_1ED072898, &qword_1E65EBF10, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1EE2D47A0, &qword_1ED0721A0, &qword_1E65EA978, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FE2F00(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE2FA0, 0, 0);
}

uint64_t sub_1E5FE2FA0()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FE30BC;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E5FE30BC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FE31D4, 0, 0);
}

uint64_t sub_1E5FE31D4()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072888, &qword_1E65EBEF8);
  v1[4] = sub_1E5FED46C(&qword_1EE2D44C8, &qword_1ED072888, &qword_1E65EBEF8, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1EE2D47A8, &qword_1ED0721B8, &qword_1E65EA990, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FE330C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1E65D99E8();
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE339C, 0, 0);
}

uint64_t sub_1E5FE339C()
{
  v1 = *(v0 + 32);
  sub_1E5E1D2E4(*(v0 + 24), v1, MEMORY[0x1E69CC610]);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072890, &qword_1E65EBF00);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  if (v3 != 1)
  {
    v4 = *(v0 + 32);
    v5 = *(v2 + 48);
    v6 = sub_1E65D9FF8();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
    v7 = sub_1E65D8DE8();
    (*(*(v7 - 8) + 8))(v4, v7);
  }

  **(v0 + 16) = v3 != 1;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E5FE3504(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE3524, 0, 0);
}

uint64_t sub_1E5FE3524()
{
  v1 = v0[2];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v2 = CatalogService.makeCatalogDeletedStream.getter();
  v0[4] = v3;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88, MEMORY[0x1E69E86A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E5FE36AC;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_1E5FE36AC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1E5FEE4DC;
  }

  else
  {
    v2 = sub_1E5FAC604;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FE37C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE37E0, 0, 0);
}

uint64_t sub_1E5FE37E0()
{
  v1 = v0[2];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v2 = ContentAvailabilityService.makeContentAvailabilityUpdatedStream.getter();
  v0[4] = v3;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88, MEMORY[0x1E69E86A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E5FEE4C4;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_1E5FE3968(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072878, &qword_1E65EBED8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE3A08, 0, 0);
}

uint64_t sub_1E5FE3A08()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = ContentAvailabilityService.makeNetworkConditionsUpdatedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FE3B24;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E5FE3B24()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FE3C3C, 0, 0);
}

uint64_t sub_1E5FE3C3C()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072880, &qword_1E65EBEE8);
  v1[4] = sub_1E5FED46C(&qword_1EE2D44D8, &qword_1ED072880, &qword_1E65EBEE8, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1EE2D47B8, &qword_1ED072878, &qword_1E65EBED8, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FE3D74(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE3D9C, 0, 0);
}

uint64_t sub_1E5FE3DBC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072868, &qword_1E65EBEC0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE3E5C, 0, 0);
}

uint64_t sub_1E5FE3E5C()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = RecommendationService.makeOnboardingSurveyResultsUpdatedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FE3F78;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E5FE3F78()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FE4090, 0, 0);
}

uint64_t sub_1E5FE4090()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072870, &qword_1E65EBED0);
  v1[4] = sub_1E5FED46C(&qword_1EE2D44A0, &qword_1ED072870, &qword_1E65EBED0, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1EE2D4788, &qword_1ED072868, &qword_1E65EBEC0, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FE41C8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072858, &qword_1E65EBEA8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE4268, 0, 0);
}

uint64_t sub_1E5FE4268()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = PrivacyPreferenceService.makePersonalizationPrivacyPreferenceUpdatedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FE4384;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E5FE4384()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E5FE45F0;
  }

  else
  {
    v2 = sub_1E5FE44B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FE44B4()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072860, &qword_1E65EBEB8);
  v1[4] = sub_1E5FED46C(&qword_1EE2D44B0, &qword_1ED072860, &qword_1E65EBEB8, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1EE2D4798, &qword_1ED072858, &qword_1E65EBEA8, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FE45F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FE4654(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE4674, 0, 0);
}

uint64_t sub_1E5FE4674()
{
  v1 = v0[2];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v2 = AppStateService.makeSignificantTimeChangeStream.getter();
  v0[4] = v3;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88, MEMORY[0x1E69E86A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E5FE47FC;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_1E5FE47FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E5FE4910(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072848, &qword_1E65EBE90);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE49B0, 0, 0);
}

uint64_t sub_1E5FE49B0()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = ServiceSubscriptionService.makeServiceSubscriptionStatusStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FE4ACC;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E5FE4ACC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FE4BE4, 0, 0);
}

uint64_t sub_1E5FE4BE4()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072850, &qword_1E65EBEA0);
  v1[4] = sub_1E5FED46C(&qword_1EE2D44D0, &qword_1ED072850, &qword_1E65EBEA0, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1EE2D47B0, &qword_1ED072848, &qword_1E65EBE90, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FE4D1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE4D3C, 0, 0);
}

uint64_t sub_1E5FE4D3C()
{
  v1 = v0[2];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v2 = HealthDataService.makeWheelchairStatusUpdatedStream.getter();
  v0[4] = v3;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88, MEMORY[0x1E69E86A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E5FE4EC4;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_1E5FE4EC4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1E5FE4FD8;
  }

  else
  {
    v2 = sub_1E5FAC604;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FE4FD8()
{
  v1 = *(v0 + 16);

  __swift_deallocate_boxed_opaque_existential_1(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FE5048(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for AppAction(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE50DC, 0, 0);
}

uint64_t sub_1E5FE50DC()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = **(v0 + 16);
  *v1 = 0;
  v1[1] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1E65E6058();
  *(v0 + 48) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE518C, v3, v2);
}

uint64_t sub_1E5FE518C()
{
  v1 = *(v0 + 32);

  sub_1E65E4EE8();
  sub_1E5FEE09C(v1, type metadata accessor for AppAction);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FE521C(uint64_t a1)
{
  v1[4] = a1;
  v1[5] = type metadata accessor for ToastAction(0);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE52B0, 0, 0);
}

uint64_t sub_1E5FE52B0()
{
  swift_getKeyPath();
  sub_1E65E4EC8();

  v1 = v0[2];
  v2 = v0[3];
  if (v2 <= 2)
  {
    switch(v2)
    {
      case 0:
        goto LABEL_12;
      case 1:
        sub_1E5FED40C(v0[2], 1uLL);
        sub_1E5E07DA0(0, 1uLL);
        sub_1E5E07DA0(v1, 1uLL);

        sub_1E5E07DA0(v1, 1uLL);
        goto LABEL_18;
      case 2:
        goto LABEL_12;
    }

LABEL_11:
    sub_1E5FED40C(v1, v2);
    MEMORY[0x1E694D7C0](v1, v2);
    goto LABEL_13;
  }

  if (v2 > 5)
  {
    if (v2 == 6)
    {
      sub_1E5E07DA0(v0[2], 6uLL);
      sub_1E5E07DA0(0, 1uLL);
LABEL_14:
      v4 = v0[6];
      v5 = v0[4];
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072838, &qword_1E65EBE80) + 64);
      *v4 = 0;
      type metadata accessor for ToastResource(0);
      swift_storeEnumTagMultiPayload();
      v4[v6] = 1;
      swift_storeEnumTagMultiPayload();
      v7 = v5 + *(type metadata accessor for AppComposer(0) + 20);
      v8 = (v7 + *(type metadata accessor for AppEnvironment(0) + 128));
      v13 = (*v8 + **v8);
      v9 = swift_task_alloc();
      v0[7] = v9;
      *v9 = v0;
      v9[1] = sub_1E5FE5668;
      v10 = v0[6];

      return v13(v10);
    }

    goto LABEL_11;
  }

LABEL_12:
  sub_1E5FED40C(v0[2], v0[3]);
LABEL_13:
  v3 = sub_1E65E6C18();
  sub_1E5E07DA0(0, 1uLL);
  sub_1E5E07DA0(v1, v2);

  sub_1E5E07DA0(v1, v2);
  if ((v3 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_18:

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E5FE5668()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FE5764, 0, 0);
}

uint64_t sub_1E5FE5764()
{
  sub_1E5FEE09C(*(v0 + 48), type metadata accessor for ToastAction);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FE57E0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1E65D8DE8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE58A0, 0, 0);
}

uint64_t sub_1E5FE58A0()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  active = RemoteBrowsingService.requireActiveParticipant.getter();
  v0[6] = v2;
  v6 = (active + *active);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FE59BC;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E5FE59BC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E5FE45F0;
  }

  else
  {
    v2 = sub_1E5FE5AEC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FE5AEC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_1E65D8D88();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1E5FE5B84(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v1[4] = swift_task_alloc();
  sub_1E65E6058();
  v1[5] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE5C58, v3, v2);
}

uint64_t sub_1E5FE5C58()
{
  v1 = *(v0 + 32);

  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  sub_1E5DFE50C(v1, &qword_1ED072828, &qword_1E65EBE20);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FE5CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  v4[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v4[20] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v6 = type metadata accessor for ItemContext(0);
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072830, &qword_1E65EBE28);
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v4[30] = v8;
  v4[31] = *(v8 - 8);
  v4[32] = swift_task_alloc();
  sub_1E65E6058();
  v4[33] = sub_1E65E6048();
  v10 = sub_1E65E5FC8();
  v4[34] = v10;
  v4[35] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E5FE5F68, v10, v9);
}

uint64_t sub_1E5FE5F68()
{
  v2 = v0[16];
  v1 = v0[17];
  swift_getKeyPath();
  sub_1E65E4EC8();

  v0[12] = v2;
  v0[13] = v1;

  sub_1E65E5B18();
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];

  v6 = sub_1E65DC1A8();
  v8 = v7;
  v9 = v7;
  isUniquelyReferenced_nonNull_native = (*(v4 + 8))(v3, v5);
  if (!v9)
  {
    v60 = v0;
    v16 = MEMORY[0x1E69E7CC0];
    v57 = *(v6 + 16);
    if (v57)
    {
      v17 = 0;
      v18 = v0[28];
      v61 = v0[25];
      v55 = v6 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      v52 = v0[22];
      v53 = v6;
      v56 = v18;
      v54 = (v18 + 8);
      v19 = MEMORY[0x1E69E7CC0];
      while (v17 < *(v6 + 16))
      {
        (*(v56 + 16))(v0[29], v55 + *(v56 + 72) * v17, v0[27]);
        v20 = sub_1E65E0518();
        v21 = *(v20 + 16);
        if (v21)
        {
          v58 = v17;
          v59 = v19;
          sub_1E601BFA8(0, v21, 0);
          v22 = v16;
          v23 = v20 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
          v24 = *(v52 + 72);
          v25 = *(v52 + 16);
          do
          {
            v26 = v0[23];
            v27 = v0[21];
            v25(v26, v23, v27);
            MEMORY[0x1E6947EA0](v27);
            (*(v52 + 8))(v26, v27);
            v29 = *(v22 + 16);
            v28 = *(v22 + 24);
            if (v29 >= v28 >> 1)
            {
              sub_1E601BFA8((v28 > 1), v29 + 1, 1);
            }

            v30 = v0[26];
            *(v22 + 16) = v29 + 1;
            sub_1E5E1DF78(v30, v22 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v29, type metadata accessor for ItemContext);
            v23 += v24;
            --v21;
          }

          while (v21);
          (*v54)(v0[29], v0[27]);

          v19 = v59;
          v6 = v53;
          v16 = MEMORY[0x1E69E7CC0];
          v17 = v58;
        }

        else
        {
          v31 = v0[29];
          v32 = v0[27];

          (*v54)(v31, v32);
          v22 = v16;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1E64F61AC(0, v19[2] + 1, 1, v19);
          v19 = isUniquelyReferenced_nonNull_native;
        }

        v34 = v19[2];
        v33 = v19[3];
        if (v34 >= v33 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1E64F61AC((v33 > 1), v34 + 1, 1, v19);
          v19 = isUniquelyReferenced_nonNull_native;
        }

        ++v17;
        v19[2] = v34 + 1;
        v19[v34 + 4] = v22;
        v0 = v60;
        if (v17 == v57)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
LABEL_22:
      isUniquelyReferenced_nonNull_native = sub_1E5FED3F8(v6, 0);
      v35 = v19[2];
      if (!v35)
      {
        v38 = MEMORY[0x1E69E7CC0];
LABEL_40:

        sub_1E65E0638();
        sub_1E65E0628();
        sub_1E65E0618();

        __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
        type metadata accessor for ActionButtonDescriptor(0);
        type metadata accessor for ArtworkDescriptor(0);
        type metadata accessor for ContextMenu(0);
        type metadata accessor for ItemMetrics(0);
        type metadata accessor for ViewDescriptor(0);
        sub_1E5FEDF78(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
        sub_1E5FEDF78(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
        sub_1E5FEDF78(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
        sub_1E5FEDF78(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        sub_1E5FEDF78(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        sub_1E5FEDF78(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        sub_1E5FEDF78(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
        sub_1E5FEDF78(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
        sub_1E65E0608();
        __swift_destroy_boxed_opaque_existential_1(v0 + 7);
        v48 = v0[5];
        v49 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v48);
        v50 = sub_1E600A878(v38);
        v0[36] = v50;

        v51 = swift_task_alloc();
        v0[37] = v51;
        *v51 = v0;
        v51[1] = sub_1E5FE6858;
        isUniquelyReferenced_nonNull_native = v50;
        v11 = v48;
        v12 = v49;

        return MEMORY[0x1EEE05DC8](isUniquelyReferenced_nonNull_native, v11, v12);
      }

      v36 = 0;
      v37 = v19 + 4;
      v38 = MEMORY[0x1E69E7CC0];
      while (v36 < v19[2])
      {
        v39 = v19;
        v40 = v37[v36];
        v41 = *(v40 + 16);
        v42 = v38[2];
        v43 = v42 + v41;
        if (__OFADD__(v42, v41))
        {
          goto LABEL_45;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v43 > v38[3] >> 1)
        {
          if (v42 <= v43)
          {
            v44 = v42 + v41;
          }

          else
          {
            v44 = v42;
          }

          isUniquelyReferenced_nonNull_native = sub_1E64F6184(isUniquelyReferenced_nonNull_native, v44, 1, v38);
          v38 = isUniquelyReferenced_nonNull_native;
        }

        v19 = v39;
        if (*(v40 + 16))
        {
          if ((v38[3] >> 1) - v38[2] < v41)
          {
            goto LABEL_47;
          }

          swift_arrayInitWithCopy();

          if (v41)
          {
            v45 = v38[2];
            v46 = __OFADD__(v45, v41);
            v47 = v45 + v41;
            if (v46)
            {
              goto LABEL_48;
            }

            v38[2] = v47;
          }
        }

        else
        {

          if (v41)
          {
            goto LABEL_46;
          }
        }

        ++v36;
        v0 = v60;
        if (v35 == v36)
        {
          goto LABEL_40;
        }
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    return MEMORY[0x1EEE05DC8](isUniquelyReferenced_nonNull_native, v11, v12);
  }

  sub_1E5FED3F8(v6, v8);

  v13 = v0[20];
  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  sub_1E5DFE50C(v13, &qword_1ED072828, &qword_1E65EBE20);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E5FE6858()
{
  v1 = *v0;

  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1E5FE699C, v3, v2);
}

uint64_t sub_1E5FE699C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[20];
  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  sub_1E5DFE50C(v1, &qword_1ED072828, &qword_1E65EBE20);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E5FE6A80(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for AppState(0) + 100);

  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_1E5FE6AD4(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1E65D9FF8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1E65DA2A8();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE6BFC, 0, 0);
}

uint64_t sub_1E5FE6BFC()
{
  v1 = v0[2];
  if (*(v1 + *(type metadata accessor for AppComposer(0) + 20) + 8) >= 3u)
  {
    type metadata accessor for AppEnvironment(0);
    active = RemoteBrowsingService.requireActiveEnvironment.getter();
    v0[10] = v5;
    v8 = (active + *active);
    v6 = swift_task_alloc();
    v0[11] = v6;
    *v6 = v0;
    v6[1] = sub_1E5FE6D80;
    v7 = v0[5];

    return v8(v7);
  }

  else
  {

    v2 = v0[1];

    return v2(1);
  }
}

uint64_t sub_1E5FE6D80()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1E5FE6FF4;
  }

  else
  {
    v2 = sub_1E5FE6EB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FE6EB0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  sub_1E65D9F98();
  (*(v6 + 8))(v5, v7);
  sub_1E65DA288();
  sub_1E5FEDF78(&qword_1ED071E28, MEMORY[0x1E69CCBE8], MEMORY[0x1E69CCC10]);
  v8 = sub_1E65E6718();
  v9 = *(v4 + 8);
  v9(v2, v3);
  v9(v1, v3);

  v10 = v0[1];

  return v10(v8 & 1);
}

uint64_t sub_1E5FE6FF4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1E5FE7070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a4;
  v64 = a3;
  v74 = a5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072808, &qword_1E65EBE00);
  v7 = MEMORY[0x1EEE9AC00](v72);
  v73 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v61 - v9;
  v10 = sub_1E65DC638();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65DC9C8();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v79 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v61 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v61 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v61 - v19;
  v21 = sub_1E65D7848();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v78 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E65E07B8();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E65DC778();
  v76 = *(v28 - 8);
  v77 = v28;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v66 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v61 - v31;
  v75 = *(a2 + *(type metadata accessor for AppComposer(0) + 20) + 8);
  if (v75 > 2)
  {
    sub_1E65DC768();
  }

  else
  {
    type metadata accessor for AppState(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0668();
    sub_1E65E0758();
    sub_1E65E0798();
    sub_1E65E0788();
    sub_1E65E07A8();
    sub_1E65DC768();
    (*(v25 + 8))(v27, v24);
  }

  v33 = v32;
  v34 = type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v20);
  sub_1E5DFE50C(v17, &qword_1ED071F78, &unk_1E65EA3F0);
  v35 = *(v22 + 48);
  if (v35(v20, 1, v21) == 1)
  {
    sub_1E65D77C8();
    if (v35(v20, 1, v21) != 1)
    {
      sub_1E5DFE50C(v20, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v22 + 32))(v78, v20, v21);
  }

  v67 = sub_1E640F12C(*(a1 + v34[17] + 8));
  v36 = *(a1 + v34[25] + 8);
  if (*(v36 + 16) && (v37 = sub_1E6215038(v64, v65), (v38 & 1) != 0))
  {
    v39 = v62;
    v40 = v61;
    v41 = v63;
    (*(v62 + 16))(v61, *(v36 + 56) + *(v62 + 72) * v37, v63);
    v42 = sub_1E65DC1A8();
    v44 = v43;
    v45 = v43;
    (*(v39 + 8))(v40, v41);
    LODWORD(v65) = v45 < 2;
    sub_1E5FED3F8(v42, v44);
  }

  else
  {
    LODWORD(v65) = 0;
  }

  v63 = sub_1E65DAE38();
  v62 = sub_1E65DAE38();
  sub_1E65DAE08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
  v46 = sub_1E65E2358();
  (*(v76 + 16))(v66, v33, v77);
  sub_1E65DC9B8();
  v47 = a1 + v34[34];
  v49 = *(v47 + 32);
  v48 = *(v47 + 40);
  v50 = v33;
  v51 = *(v47 + 48);
  v52 = *(v47 + 56);
  v53 = a1 + v34[36];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072800, &qword_1E65EBDF8);
  (*(v68 + 16))(v80, v53 + *(v54 + 28), v69);
  v68 = v51;
  v69 = v48;
  LODWORD(v61) = v52;
  sub_1E5FED384(v49, v48, v51, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
  v55 = v71;
  sub_1E65E4C98();
  v56 = v73;
  sub_1E5FAB460(v55, v73, &qword_1ED072808, &qword_1E65EBE00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v70 = v50;
  LODWORD(v64) = v46;
  v66 = v49;
  if (EnumCaseMultiPayload <= 2 && EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072820, &qword_1E65EBE18) + 48);
      v59 = sub_1E65D76A8();
      (*(*(v59 - 8) + 8))(v56 + v58, v59);
    }

    else
    {
      sub_1E5DFE50C(v56, &qword_1ED072808, &qword_1E65EBE00);
    }
  }

  sub_1E65DAE38();
  sub_1E65DAE38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  sub_1E6409C44();
  sub_1E65DAE38();
  sub_1E65DAE38();
  sub_1E65DC6B8();
  return (*(v76 + 8))(v70, v77);
}

uint64_t sub_1E5FE7A58(uint64_t a1)
{
  v21 = sub_1E65DC638();
  v2 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65DC6A8();
  v6 = sub_1E640F9F8(v5);

  v7 = type metadata accessor for AppState(0);
  v8 = a1 + v7[17];

  *(v8 + 8) = v6;
  sub_1E65DC6C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
  sub_1E65E2368();
  v9 = sub_1E65DC698();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a1 + v7[34];
  sub_1E5FED324(*(v16 + 32), *(v16 + 40), *(v16 + 48), *(v16 + 56));
  *(v16 + 32) = v9;
  *(v16 + 40) = v11;
  *(v16 + 48) = v13;
  *(v16 + 56) = v15;
  sub_1E65DC6D8();
  v17 = a1 + v7[36];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072800, &qword_1E65EBDF8);
  return (*(v2 + 40))(v17 + *(v18 + 28), v4, v21);
}

uint64_t sub_1E5FE7C14(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v38 = a3;
  v39 = a2;
  v7 = sub_1E65DC4B8();
  v32 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65DC6E8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31 - v15;
  v40 = &v31 - v15;
  v17 = a1[1];
  v42 = *a1;
  v43[0] = v17;
  *(v43 + 9) = *(a1 + 25);
  v18 = sub_1E65E60A8();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  (*(v11 + 16))(v13, v38, v10);
  v19 = a5[3];
  v33 = *a5;
  v34 = v19;
  v20 = a5[7];
  v36 = a5[5];
  v37 = v20;
  v38 = a5[9];
  v21 = v35;
  (*(v8 + 16))(v35, v39, v7);
  v22 = (*(v11 + 80) + 73) & ~*(v11 + 80);
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v8 + 80) + v23 + 80) & ~*(v8 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  v26 = v43[0];
  *(v25 + 32) = v42;
  *(v25 + 48) = v26;
  *(v25 + 57) = *(v43 + 9);
  (*(v11 + 32))(v25 + v22, v13, v10);
  v27 = (v25 + v23);
  v28 = *(a5 + 3);
  v27[2] = *(a5 + 2);
  v27[3] = v28;
  v27[4] = *(a5 + 4);
  v29 = *(a5 + 1);
  *v27 = *a5;
  v27[1] = v29;
  (*(v8 + 32))(v25 + v24, v21, v32);
  sub_1E5FED2C8(&v42, v41);
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v40, &unk_1E65EBDE8, v25);
}

uint64_t sub_1E5FE7F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X8>)
{
  v100 = a2;
  v102 = a5;
  v8 = sub_1E65E3C48();
  v87 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v86[1] = v9;
  v99 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for AppComposer(0);
  v10 = *(v92 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v92);
  v103 = v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v86 - v13;
  v108 = sub_1E65D76F8();
  *&v109 = *(v108 - 8);
  v15 = MEMORY[0x1EEE9AC00](v108);
  v106 = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v107 = v86 - v17;
  sub_1E65D76E8();
  if (qword_1EE2D4F30 != -1)
  {
    swift_once();
  }

  v86[0] = __swift_project_value_buffer(v8, qword_1EE2D4F38);
  sub_1E5E1D2E4(a1, v14, type metadata accessor for AppComposer);
  sub_1E5DF650C(a3, &v119);
  v101 = v14;
  v18 = *a4;
  v89 = a3;
  v19 = a4[3];
  v94 = a1;
  v20 = a4[5];
  v104 = a4[7];
  v105 = a4[9];
  v21 = *(v10 + 80);
  v90 = ~v21;
  v93 = v8;
  v22 = (v21 + 16) & ~v21;
  v23 = v11 + 7;
  v24 = (v23 + v22) & 0xFFFFFFFFFFFFFFF8;
  v91 = v21 | 7;
  v25 = swift_allocObject();
  sub_1E5E1DF78(v101, v25 + v22, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v119, v25 + v24);
  v101 = v25;
  v26 = (v25 + ((v24 + 47) & 0xFFFFFFFFFFFFFFF8));
  v27 = *(a4 + 3);
  v26[2] = *(a4 + 2);
  v26[3] = v27;
  v26[4] = *(a4 + 4);
  v28 = *(a4 + 1);
  *v26 = *a4;
  v26[1] = v28;
  v96 = v18;
  swift_unknownObjectRetain();
  v97 = v19;

  v98 = v20;
  v29 = v94;

  v88 = sub_1E65E4418();
  v30 = v109;
  if (*(v29 + *(v92 + 20) + 8) >= 3u)
  {
    v54 = v103;
    sub_1E5E1D2E4(v29, v103, type metadata accessor for AppComposer);
    sub_1E5DF650C(v89, &v117);
    (*(v30 + 16))(v106, v107, v108);
    v55 = (v21 + 17) & v90;
    v56 = v30;
    v57 = (v23 + v55) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v58 + 47) & 0xFFFFFFFFFFFFFFF8;
    v60 = (v59 + 87) & 0xFFFFFFFFFFFFFFF8;
    v61 = (v60 + *(v56 + 80) + 16) & ~*(v56 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = v88;
    sub_1E5E1DF78(v54, v62 + v55, type metadata accessor for AppComposer);
    *(v62 + v57) = v100;
    sub_1E5DF599C(&v117, v62 + v58);
    v63 = (v62 + v59);
    v64 = *(a4 + 3);
    v63[2] = *(a4 + 2);
    v63[3] = v64;
    v63[4] = *(a4 + 4);
    v65 = *(a4 + 1);
    *v63 = *a4;
    v63[1] = v65;
    v66 = (v62 + v60);
    v67 = v101;
    *v66 = sub_1E5FEB94C;
    v66[1] = v67;
    v68 = v108;
    (*(v56 + 32))(v62 + v61, v106, v108);
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727B0, &qword_1E65EBC30);
    v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727B8, &qword_1E65EBC38);
    v70 = sub_1E65E0AA8();
    v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727C0, &qword_1E65EBC40);
    v72 = sub_1E5FED46C(&qword_1ED0727C8, &qword_1ED0727C0, &qword_1E65EBC40, MEMORY[0x1E697BE60]);
    *&v114 = v71;
    *(&v114 + 1) = v72;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v74 = sub_1E5FEDF78(&qword_1EE2D6550, MEMORY[0x1E699DB08], MEMORY[0x1E699DB00]);
    *&v114 = v69;
    *(&v114 + 1) = v70;
    v115 = OpaqueTypeConformance2;
    v116 = v74;
    swift_getOpaqueTypeConformance2();
    *&v117 = sub_1E65E3E28();
    *(&v117 + 1) = v75;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072758, &qword_1E65EBBF0);
    v77 = sub_1E5FED46C(&qword_1ED072750, &qword_1ED072758, &qword_1E65EBBF0, MEMORY[0x1E697C268]);
    v78 = *(*(v76 - 8) + 16);
    v78(&v114, &v117, v76);

    v117 = v114;
    v78(&v112, &v117, v76);
    v110 = v112;
    v111 = v113;

    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072748, &qword_1E65EBBE8);
    v80 = sub_1E5FED46C(&qword_1ED072740, &qword_1ED072748, &qword_1E65EBBE8, MEMORY[0x1E697E378]);
    sub_1E62DFB74(&v110, v79, v76, v80, v77);

    (*(v109 + 8))(v107, v68);
  }

  else
  {
    sub_1E5E1D2E4(v29, v103, type metadata accessor for AppComposer);
    sub_1E5DF650C(v89, &v117);
    (*(v30 + 16))(v106, v107, v108);
    v31 = v87;
    (*(v87 + 16))(v99, v86[0], v93);
    v32 = v30;
    v33 = (v21 + 18) & v90;
    v34 = (v23 + v33) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 47) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 87) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + *(v32 + 80) + 16) & ~*(v32 + 80);
    v39 = (v95 + *(v31 + 80) + v38) & ~*(v31 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = v88;
    *(v40 + 17) = 1;
    sub_1E5E1DF78(v103, v40 + v33, type metadata accessor for AppComposer);
    *(v40 + v34) = v100;
    sub_1E5DF599C(&v117, v40 + v35);
    v41 = (v40 + v36);
    v42 = *(a4 + 3);
    v41[2] = *(a4 + 2);
    v41[3] = v42;
    v41[4] = *(a4 + 4);
    v43 = *(a4 + 1);
    *v41 = *a4;
    v41[1] = v43;
    v44 = (v40 + v37);
    v45 = v101;
    *v44 = sub_1E5FEB94C;
    v44[1] = v45;
    v46 = v108;
    (*(v109 + 32))(v40 + v38, v106, v108);
    (*(v31 + 32))(v40 + v39, v99, v93);
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727D0, &qword_1E65EBC48);
    v47 = MEMORY[0x1E697C268];
    sub_1E5FED46C(&qword_1ED0727D8, &qword_1ED0727D0, &qword_1E65EBC48, MEMORY[0x1E697C268]);
    *&v117 = sub_1E65E3D68();
    *(&v117 + 1) = v48;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072748, &qword_1E65EBBE8);
    v50 = sub_1E5FED46C(&qword_1ED072740, &qword_1ED072748, &qword_1E65EBBE8, MEMORY[0x1E697E378]);
    v51 = *(*(v49 - 8) + 16);
    v51(&v114, &v117, v49);

    v117 = v114;
    v51(&v112, &v117, v49);
    v110 = v112;
    v111 = v113;

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072758, &qword_1E65EBBF0);
    v53 = sub_1E5FED46C(&qword_1ED072750, &qword_1ED072758, &qword_1E65EBBF0, v47);
    sub_1E62DFC6C(&v110, v49, v52, v50, v53);

    (*(v109 + 8))(v107, v46);
  }

  v109 = v117;
  v114 = v117;
  LOBYTE(v115) = v118;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072720, &qword_1E65EBBD0);
  sub_1E5FEAB1C();
  v82 = *(*(v81 - 8) + 16);
  v82(&v117, &v114, v81);
  sub_1E5FEBB58(v109, *(&v109 + 1));
  v83 = v117;
  v82(&v119, &v117, v81);
  sub_1E5FEBB58(v83, *(&v83 + 1));
  v84 = v119;
  v117 = v119;
  v118 = v120;
  v82(v102, &v117, v81);
  return sub_1E5FEBB58(v84, *(&v84 + 1));
}

uint64_t sub_1E5FE8CC8(char *a1, uint64_t a2, char *a3, __int128 *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  sub_1E61E66C8(a1, a3, a4, v15 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v12 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
  v15[0] = v11;
  v15[1] = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1E69482C0](v10, v7, OpaqueTypeConformance2);
  return (*(v8 + 8))(v10, v7);
}

__n128 sub_1E5FE8E80@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a4;
  v7 = type metadata accessor for AppComposer(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v33 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072760, &qword_1E65EBBF8);
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v34 = v32 - v14;
  v15 = sub_1E65E1518();
  v36 = *(v15 - 8);
  v37 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v17;
  sub_1E65E14F8();
  v32[0] = a1;
  v32[6] = sub_1E632B32C(v17);
  sub_1E5E1D2E4(a1, v12, type metadata accessor for AppComposer);
  sub_1E5DF650C(a2, v41);
  v32[1] = *a3;
  v32[2] = a3[3];
  v32[3] = a3[5];
  v32[4] = a3[7];
  v32[5] = a3[9];
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = (v18 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_1E5E1DF78(v12, v20 + v18, type metadata accessor for AppComposer);
  sub_1E5DF599C(v41, v20 + v19);
  v21 = (v20 + ((v19 + 47) & 0xFFFFFFFFFFFFFFF8));
  v22 = *(a3 + 3);
  v21[2] = *(a3 + 2);
  v21[3] = v22;
  v21[4] = *(a3 + 4);
  v23 = *(a3 + 1);
  *v21 = *a3;
  v21[1] = v23;
  v24 = v33;
  sub_1E5E1D2E4(v32[0], v33, type metadata accessor for AppComposer);
  v25 = swift_allocObject();
  sub_1E5E1DF78(v24, v25 + v18, type metadata accessor for AppComposer);

  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072788, &qword_1E65EBC00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  sub_1E5FED46C(&qword_1EE2D6500, &qword_1ED072788, &qword_1E65EBC00, MEMORY[0x1E699E850]);
  sub_1E5FEB2FC();
  v26 = v34;
  sub_1E65E1128();
  sub_1E65E4B88();
  sub_1E65E3E38();

  (*(v36 + 8))(v35, v37);
  v27 = v40;
  (*(v38 + 32))(v40, v26, v39);
  v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072728, &qword_1E65EBBD8) + 36);
  v29 = v41[5];
  *(v28 + 64) = v41[4];
  *(v28 + 80) = v29;
  *(v28 + 96) = v41[6];
  v30 = v41[1];
  *v28 = v41[0];
  *(v28 + 16) = v30;
  result = v41[3];
  *(v28 + 32) = v41[2];
  *(v28 + 48) = result;
  return result;
}

uint64_t sub_1E5FE93D4@<X0>(uint64_t a1@<X8>)
{
  sub_1E5FE949C(1, 19, 1);
  sub_1E65DC738();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1E65DB1B8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072730, &qword_1E65EBBE0);
  *(a1 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_1E5FE949C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  v6 = sub_1E5FEB1C4(a1, a2, a3);
  v32 = MEMORY[0x1E69E7CC0];
  result = sub_1E601C0B8(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    goto LABEL_46;
  }

  v8 = v3 >> 63;
  v29 = v3;
  if (!v6)
  {
    v28 = 0;
    v31 = 0;
    v30 = 0;
    goto LABEL_24;
  }

  v28 = 0;
  v31 = 0;
  v30 = 0;
  v25 = v3 >> 63;
  v26 = v8 ^ 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v9 = v5 <= a2;
    if (v3 > 0)
    {
      v9 = v5 >= a2;
    }

    if (v9)
    {
      break;
    }

    v11 = __OFADD__(v5, v3);
    if (v11)
    {
      v10 = v26;
    }

    else
    {
      v10 = v5 + v3;
    }

    v12 = 0x8000000000000000;
    if (!v11)
    {
      v12 = 0;
    }

    v31 = v12;
    v30 = !v11;
LABEL_19:
    sub_1E65E68A8();

    v13 = sub_1E65E6BC8();
    MEMORY[0x1E694D7C0](v13);

    v15 = *(v32 + 16);
    v14 = *(v32 + 24);
    if (v15 >= v14 >> 1)
    {
      result = sub_1E601C0B8((v14 > 1), v15 + 1, 1);
    }

    *(v32 + 16) = v15 + 1;
    v16 = v32 + 16 * v15;
    *(v16 + 32) = 0xD000000000000015;
    *(v16 + 40) = 0x80000001E6610E00;
    v5 = v10;
    --v6;
    v3 = v29;
    if (!v6)
    {
      v5 = v10;
      v8 = v25;
LABEL_24:
      v27 = v8 ^ 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v17 = v5 <= a2;
        if (v3 > 0)
        {
          v17 = v5 >= a2;
        }

        if (v17)
        {
          if ((v5 != a2) | v28 & 1 || !v30 && v31 == 0x8000000000000000)
          {
            return v32;
          }

          v28 = 1;
          v18 = v5;
        }

        else
        {
          v19 = __OFADD__(v5, v3);
          if (v19)
          {
            v18 = v27;
          }

          else
          {
            v18 = v5 + v3;
          }

          v20 = 0x8000000000000000;
          if (!v19)
          {
            v20 = 0;
          }

          v31 = v20;
          v30 = !v19;
        }

        sub_1E65E68A8();

        v21 = sub_1E65E6BC8();
        MEMORY[0x1E694D7C0](v21);

        v23 = *(v32 + 16);
        v22 = *(v32 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1E601C0B8((v22 > 1), v23 + 1, 1);
        }

        *(v32 + 16) = v23 + 1;
        v24 = v32 + 16 * v23;
        *(v24 + 32) = 0xD000000000000015;
        *(v24 + 40) = 0x80000001E6610E00;
        v5 = v18;
        v3 = v29;
      }
    }
  }

  if (!(v28 & 1 | (v5 != a2)))
  {
    if (!v30 && v31 == 0x8000000000000000)
    {
      goto LABEL_45;
    }

    v28 = 1;
    v10 = a2;
    goto LABEL_19;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

void *sub_1E5FE9818()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  return WindowSceneObserver.scene.getter();
}

uint64_t sub_1E5FE9864(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E5FD0B34(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E5FE9910(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FE99E8;

  return sub_1E5FD0E7C(a1, v1 + v5);
}

uint64_t sub_1E5FE99E8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1E5FE9AE4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FEE4D4;

  return sub_1E5FD11CC(a1, v1 + v5);
}

BOOL sub_1E5FE9BBC(uint64_t a1)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E5FD3208(a1, v4);
}

uint64_t sub_1E5FE9C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_1E6122F60(a1, v7, v8, v2 + v6, v10, v11, a2);
}

uint64_t sub_1E5FE9CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  LODWORD(v49) = a5;
  v47 = a4;
  v6 = a3;
  v55 = a6;
  v53 = sub_1E65E3B68();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1E65D76A8();
  v56 = *(v54 - 8);
  v10 = MEMORY[0x1EEE9AC00](v54);
  v52 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v45 - v12;
  v13 = sub_1E65E3AF8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65E3AD8();
  MEMORY[0x1EEE9AC00](v17 - 8);
  sub_1E65DDCC8();
  swift_allocObject();
  v18 = a2;
  v19 = sub_1E65DDC98();
  sub_1E65DDD38();

  sub_1E65E3AE8();
  sub_1E65E3AC8();
  (*(v14 + 8))(v16, v13);
  sub_1E65DDD38();
  sub_1E65DE448();
  swift_allocObject();
  v58 = a1;
  v57 = v6;
  v20 = v48;
  v21 = sub_1E65DE418();
  v60 = v19;
  v22 = sub_1E65E5CE8();
  v24 = v23;
  sub_1E65D7688();
  sub_1E65DDCB8();
  v49 = v21;
  sub_1E65DE438();
  sub_1E65DDD28();

  v25 = sub_1E65E3B48();
  v26 = sub_1E65E6338();

  v27 = os_log_type_enabled(v25, v26);
  v46 = v18;
  v47 = v22;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v60 = v29;
    *v28 = 136446466;
    *(v28 + 4) = sub_1E5DFD4B0(v22, v24, &v60);
    *(v28 + 12) = 2082;
    v30 = sub_1E65E68B8();
    v32 = sub_1E5DFD4B0(v30, v31, &v60);

    *(v28 + 14) = v32;
    _os_log_impl(&dword_1E5DE9000, v25, v26, "[%{public}s] %{public}s begin", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v28, -1, -1);
  }

  (*(v51 + 8))(v20, v53);
  v33 = v56;
  v34 = v52;
  v35 = v59;
  v36 = v54;
  (*(v56 + 16))(v52, v59, v54);
  v37 = (*(v33 + 80) + 49) & ~*(v33 + 80);
  v38 = (v50 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = v47;
  *(v39 + 24) = v24;
  v40 = v46;
  *(v39 + 32) = v58;
  *(v39 + 40) = v40;
  *(v39 + 48) = v57;
  (*(v33 + 32))(v39 + v37, v34, v36);
  *(v39 + v38) = v49;
  *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v41 = sub_1E65DDD18();
  v42 = MEMORY[0x1E69CAAD0];
  v43 = v55;
  v55[3] = v41;
  v43[4] = v42;
  __swift_allocate_boxed_opaque_existential_1(v43);

  sub_1E65DDD08();
  (*(v33 + 8))(v35, v36);
}

uint64_t sub_1E5FEA280(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v61 = a6;
  v59 = a4;
  v60 = a5;
  v58 = a2;
  v64 = a9;
  v65 = a8;
  v12 = sub_1E65D76A8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v57 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v57 - v20;
  v22 = sub_1E65E3B68();
  v62 = *(v22 - 8);
  v63 = v22;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v57 - v26;
  if (a1)
  {
    v28 = a1;
    sub_1E65DDD28();
    (*(v13 + 16))(v16, a7, v12);

    v29 = a1;
    v30 = sub_1E65E3B48();
    v31 = sub_1E65E6328();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v66 = v57;
      *v32 = 136446978;
      *(v32 + 4) = sub_1E5DFD4B0(v58, a3, &v66);
      *(v32 + 12) = 2082;
      v33 = sub_1E65E68B8();
      v61 = v31;
      v35 = sub_1E5DFD4B0(v33, v34, &v66);

      *(v32 + 14) = v35;
      *(v32 + 22) = 2048;
      sub_1E65D7688();
      sub_1E65D7628();
      v37 = v36;
      v38 = *(v13 + 8);
      v38(v19, v12);
      v38(v16, v12);
      *(v32 + 24) = v37;
      *(v32 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x1EEE9AC00](ErrorValue);
      (*(v41 + 16))(&v57 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
      v42 = sub_1E65E5CE8();
      v44 = sub_1E5DFD4B0(v42, v43, &v66);

      *(v32 + 34) = v44;
      _os_log_impl(&dword_1E5DE9000, v30, v61, "[%{public}s] %{public}s ended in %fs -> %{public}s", v32, 0x2Au);
      v45 = v57;
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v45, -1, -1);
      MEMORY[0x1E694F1C0](v32, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v16, v12);
    }

    (*(v62 + 8))(v25, v63);
  }

  else
  {
    sub_1E65DDD28();
    (*(v13 + 16))(v21, a7, v12);

    v46 = sub_1E65E3B48();
    v47 = sub_1E65E6338();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v66 = v57;
      *v48 = 136446722;
      *(v48 + 4) = sub_1E5DFD4B0(v58, a3, &v66);
      *(v48 + 12) = 2082;
      v49 = sub_1E65E68B8();
      v51 = sub_1E5DFD4B0(v49, v50, &v66);

      *(v48 + 14) = v51;
      *(v48 + 22) = 2048;
      sub_1E65D7688();
      sub_1E65D7628();
      v53 = v52;
      v54 = *(v13 + 8);
      v54(v19, v12);
      v54(v21, v12);
      *(v48 + 24) = v53;
      _os_log_impl(&dword_1E5DE9000, v46, v47, "[%{public}s] %{public}s ended in %fs", v48, 0x20u);
      v55 = v57;
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v55, -1, -1);
      MEMORY[0x1E694F1C0](v48, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v21, v12);
    }

    (*(v62 + 8))(v27, v63);
  }

  sub_1E65DE428();
  return sub_1E65DDCA8();
}

uint64_t sub_1E5FEA918()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);

  return sub_1E5FD32A0((v0 + v2), v5, v6, v7, (v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E5FEA9C0@<X0>(__int128 *a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);

  return sub_1E5FE7F74(v1 + v4, v6, v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8), (v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)), a1);
}

double sub_1E5FEAA74@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  *&result = sub_1E5FE8E80(v1 + v4, v1 + v5, (v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), a1).n128_u64[0];
  return result;
}

unint64_t sub_1E5FEAB1C()
{
  result = qword_1ED072738;
  if (!qword_1ED072738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072720, &qword_1E65EBBD0);
    sub_1E5FED46C(&qword_1ED072740, &qword_1ED072748, &qword_1E65EBBE8, MEMORY[0x1E697E378]);
    sub_1E5FED46C(&qword_1ED072750, &qword_1ED072758, &qword_1E65EBBF0, MEMORY[0x1E697C268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072738);
  }

  return result;
}

unint64_t sub_1E5FEAC00()
{
  result = qword_1EE2D4EE0;
  if (!qword_1EE2D4EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072728, &qword_1E65EBBD8);
    sub_1E5FED46C(&qword_1EE2D6538, &qword_1ED072760, &qword_1E65EBBF8, MEMORY[0x1E699E760]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4EE0);
  }

  return result;
}

unint64_t sub_1E5FEACB8()
{
  result = qword_1EE2D4EE8;
  if (!qword_1EE2D4EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072730, &qword_1E65EBBE0);
    sub_1E5FEDF78(&qword_1EE2D6D98, MEMORY[0x1E699D0D8], MEMORY[0x1E699D0D0]);
    sub_1E5FEAD74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4EE8);
  }

  return result;
}

unint64_t sub_1E5FEAD74()
{
  result = qword_1EE2D4DA0;
  if (!qword_1EE2D4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4DA0);
  }

  return result;
}

unint64_t sub_1E5FEAE50()
{
  result = qword_1EE2D7B00;
  if (!qword_1EE2D7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7B00);
  }

  return result;
}

unint64_t sub_1E5FEAEA4()
{
  result = qword_1ED072770;
  if (!qword_1ED072770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0726F8, &qword_1E65EBB80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0726F0, &qword_1E65EBB78);
    sub_1E5FED46C(&qword_1ED072768, &qword_1ED0726F0, &qword_1E65EBB78, MEMORY[0x1E699E120]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072770);
  }

  return result;
}

uint64_t sub_1E5FEAFB8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1E5FEB02C()
{
  result = qword_1ED072778;
  if (!qword_1ED072778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072700, &qword_1E65EBB88);
    sub_1E5FEAEA4();
    sub_1E5FED46C(qword_1EE2D85C0, &unk_1ED07A4B0, &unk_1E65FA7C0, &unk_1E65FB060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072778);
  }

  return result;
}

unint64_t sub_1E5FEB0E4()
{
  result = qword_1ED072780;
  if (!qword_1ED072780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072708, &unk_1E65FA530);
    sub_1E5FEB02C();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072780);
  }

  return result;
}

unint64_t sub_1E5FEB170()
{
  result = qword_1EE2D8840;
  if (!qword_1EE2D8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8840);
  }

  return result;
}

uint64_t sub_1E5FEB1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v9 = a1 <= a2;
    if (a3 > 0)
    {
      v9 = a1 >= a2;
    }

    if (v9)
    {
      if ((a1 != a2) | v5 & 1 || !(v7 & 1 | (v6 != 0x8000000000000000)))
      {
        return result;
      }

      v5 = 1;
    }

    else
    {
      v8 = __OFADD__(a1, a3);
      a1 += a3;
      if (v8)
      {
        a1 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        v6 = 0x8000000000000000;
      }

      else
      {
        v6 = 0;
      }

      v7 = !v8;
    }

    v8 = __OFADD__(result++, 1);
  }

  while (!v8);
  __break(1u);
  return result;
}

uint64_t sub_1E5FEB274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for AppComposer(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1E632D0EC(a1, a2, v8, a3);
}

unint64_t sub_1E5FEB2FC()
{
  result = qword_1EE2D4E80;
  if (!qword_1EE2D4E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077870, &unk_1E65FA560);
    sub_1E5FEB3B4();
    sub_1E5FED46C(&qword_1EE2D4DB0, &qword_1ED0727A8, &qword_1E65EBC28, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E80);
  }

  return result;
}

unint64_t sub_1E5FEB3B4()
{
  result = qword_1EE2D4BB0;
  if (!qword_1EE2D4BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077880, &unk_1E65FA570);
    sub_1E5FEB438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4BB0);
  }

  return result;
}

unint64_t sub_1E5FEB438()
{
  result = qword_1EE2D4C68;
  if (!qword_1EE2D4C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077890, &qword_1E65EBC08);
    sub_1E5FEB4C4();
    sub_1E5FEB7A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4C68);
  }

  return result;
}

unint64_t sub_1E5FEB4C4()
{
  result = qword_1EE2D4CC0;
  if (!qword_1EE2D4CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0778A0, &unk_1E65FA580);
    sub_1E5FEB550();
    sub_1E5FEB638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4CC0);
  }

  return result;
}

unint64_t sub_1E5FEB550()
{
  result = qword_1EE2D4D68;
  if (!qword_1EE2D4D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0778B0, &qword_1E65EBC10);
    sub_1E5FEDF78(qword_1EE2D6BF8, MEMORY[0x1E699D198], MEMORY[0x1E699D190]);
    sub_1E5FED46C(qword_1EE2D4F50, &qword_1ED072790, &unk_1E65FA590, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D68);
  }

  return result;
}

unint64_t sub_1E5FEB638()
{
  result = qword_1EE2D4D80;
  if (!qword_1EE2D4D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072798, &qword_1E65EBC18);
    sub_1E5FEDF78(&qword_1EE2D6DC0, MEMORY[0x1E699CFB8], MEMORY[0x1E699CFB0]);
    sub_1E5FEB6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D80);
  }

  return result;
}

unint64_t sub_1E5FEB6F4()
{
  result = qword_1EE2D4D10;
  if (!qword_1EE2D4D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0778C0, &unk_1E65FA5A0);
    sub_1E5FED46C(qword_1EE2D4F50, &qword_1ED072790, &unk_1E65FA590, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D10);
  }

  return result;
}

unint64_t sub_1E5FEB7A4()
{
  result = qword_1EE2D4D70;
  if (!qword_1EE2D4D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0778D0, &qword_1E65EBC20);
    sub_1E5FEDF78(&qword_1EE2D6DA0, MEMORY[0x1E699D070], MEMORY[0x1E699D068]);
    sub_1E5FEB860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D70);
  }

  return result;
}

unint64_t sub_1E5FEB860()
{
  result = qword_1EE2D4D90;
  if (!qword_1EE2D4D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727A0, &unk_1E65FA5B0);
    sub_1E5FEDF78(&qword_1EE2D49B0, MEMORY[0x1E69CD8A8], MEMORY[0x1E69CD8A0]);
    sub_1E5FEDF78(qword_1EE2D7828, type metadata accessor for WorkoutPlanArtworkViewRepresentable, &unk_1E65FEEF4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D90);
  }

  return result;
}

uint64_t sub_1E5FEB964(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t, unint64_t))
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  return a2(a1, v2 + v5, v2 + v6, v2 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1E5FEBA30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_1E65D76F8() - 8);
  return sub_1E64FE26C(a1, *(v2 + 16), v2 + v6, *(v2 + v7), v2 + v8, v2 + v9, *(v2 + ((v9 + 87) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v9 + 87) & 0xFFFFFFFFFFFFFFF8) + 8), a2, v2 + ((*(v10 + 80) + ((v9 + 87) & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(v10 + 80)));
}

uint64_t sub_1E5FEBB60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 18) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 87) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_1E65D76F8() - 8);
  v12 = (*(v11 + 80) + v10 + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_1E65E3C48() - 8);
  return sub_1E651B5CC(a1, *(v2 + 16), *(v2 + 17), v2 + v6, *(v2 + v7), v2 + v8, (v2 + v9), *(v2 + v10), a2, *(v2 + v10 + 8), v2 + v12, v2 + ((v13 + *(v14 + 80) + v12) & ~*(v14 + 80)));
}

uint64_t sub_1E5FEBCF4(uint64_t a1, char a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E5FD4414(a1, a2, v2 + v7);
}

uint64_t sub_1E5FEBDD8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E5FE1B00(v0);
}

uint64_t sub_1E5FEBE68(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE1C7C(a1, v1 + v5);
}

uint64_t sub_1E5FEBF44(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE2110(a1, v1 + v5);
}

uint64_t sub_1E5FEC020(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE2520(a1, v1 + v5);
}

uint64_t sub_1E5FEC0FC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE2930(a1, v1 + v5);
}

uint64_t sub_1E5FEC1D8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE2AD8(a1, v1 + v5);
}

uint64_t sub_1E5FEC2B4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE2F00(a1, v1 + v5);
}

uint64_t sub_1E5FEC390(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE3504(a1, v1 + v5);
}

uint64_t sub_1E5FEC46C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE37C0(a1, v1 + v5);
}

uint64_t sub_1E5FEC548(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE3968(a1, v1 + v5);
}

uint64_t sub_1E5FEC624(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E5FE3DBC(a1, v1 + v5);
}

uint64_t sub_1E5FEC700(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE41C8(a1, v1 + v5);
}

uint64_t sub_1E5FEC7DC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE4654(a1, v1 + v5);
}

uint64_t sub_1E5FEC8B8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE4910(a1, v1 + v5);
}

uint64_t sub_1E5FEC994(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE4D1C(a1, v1 + v5);
}

uint64_t sub_1E5FECA70()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E5FE5048(v0 + v3);
}

uint64_t sub_1E5FECB3C()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E5FE521C(v0 + v3);
}

uint64_t sub_1E5FECC08()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FE99E8;

  return sub_1E5FE57E0(v0 + v3);
}

uint64_t sub_1E5FECCD4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E5FE5B84(v0);
}

uint64_t sub_1E5FECD64()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v5);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E5FE5CFC(v0 + v3, v7, v8, v9);
}

uint64_t sub_1E5FECE88()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FE99E8;

  return sub_1E5FE6AD4(v0 + v3);
}

uint64_t sub_1E5FECF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1E5FE7070(a1, v2 + v6, v8, v9, a2);
}

uint64_t sub_1E5FED004(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for AppComposer(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E5FE7C14(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_1E5FED0B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 3u)
  {
    if (a6 == 4)
    {
LABEL_4:
    }

    if (a6 == 5)
    {
    }
  }

  else if (a6 == 1)
  {

    return sub_1E5FED148(result, a2, a3);
  }

  else if (a6 == 3)
  {
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_1E5FED148(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1E5FED15C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65DC6E8() - 8);
  v6 = (*(v5 + 80) + 73) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1E65DC4B8() - 8);
  v9 = (v7 + *(v8 + 80) + 80) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFA78C;

  return sub_1E607A94C(a1, v10, v11, v1 + 32, v1 + v6, v1 + v7, v1 + v9);
}

uint64_t sub_1E5FED324(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {

    return sub_1E5FED148(result, a2, a3);
  }

  return result;
}

void sub_1E5FED384(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {

    sub_1E5FED3E4(a1, a2, a3);
  }
}

uint64_t sub_1E5FED3E4(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1E5FED3F8(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return v2;
}

uint64_t sub_1E5FED40C(uint64_t a1, unint64_t a2)
{
  if (a2 != 6)
  {
    return sub_1E5E05374(a1, a2);
  }

  return a1;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1E694F1C0);
  }

  return result;
}

uint64_t sub_1E5FED46C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1E5FED4B4(void *a1)
{
  v3 = *(sub_1E65D76A8() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E5FEA280(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E5FED568(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65D76F8() - 8);
  v9 = v1 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));
  v10 = *(v9 + *(v8 + 64));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1E5DFE6BC;

  return sub_1E5FE09EC(a1, v1 + v6, v9, v10);
}

uint64_t sub_1E5FED6D4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE0EF4(a1, v1 + v5);
}

uint64_t sub_1E5FED7B0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE1144(a1, v1 + v5);
}

uint64_t sub_1E5FED88C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE13A8(a1, v1 + v5);
}

uint64_t sub_1E5FED968(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE14DC(a1, v1 + v5);
}

uint64_t sub_1E5FEDA44(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE1764(a1, v1 + v5);
}

uint64_t sub_1E5FEDB20(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE1898(a1, v1 + v5);
}

uint64_t sub_1E5FEDBFC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE19CC(a1, v1 + v5);
}

uint64_t sub_1E5FEDCF8@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = type metadata accessor for AppComposer(0);
  return sub_1E640A330(v4, *(v3 + *(v5 + 20) + 8), a1);
}

uint64_t sub_1E5FEDD5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5FEDDCC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v10);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1E5DFE6BC;

  return sub_1E612C8FC(a1, v12, v13, v1 + v6, v1 + v9, v14, v1 + v11);
}

uint64_t sub_1E5FEDF78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5FEDFC0(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FD0850(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1E5FEE09C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E5FEE0FC()
{
  result = qword_1ED072980;
  if (!qword_1ED072980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072978, &unk_1E65F0E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072980);
  }

  return result;
}

unint64_t sub_1E5FEE178(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;

  sub_1E6121040(&v44);
  if (!*(&v46 + 1))
  {
    goto LABEL_25;
  }

  v12 = v44;
  v41 = v45;
  v42 = v46;
  v43 = v47;
  v13 = *a5;
  result = sub_1E641708C(v44);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_1E6419AF8(v19, a4 & 1);
    result = sub_1E641708C(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1E65E6C68();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v23 = result;
    sub_1E6423608();
    result = v23;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    sub_1E5FEE468(&v41, v22[7] + 40 * result);
    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  *(v22[6] + result) = v12;
  v24 = v22[7] + 40 * result;
  v25 = v41;
  v26 = v42;
  *(v24 + 32) = v43;
  *v24 = v25;
  *(v24 + 16) = v26;
  v27 = v22[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v22[2] = v28;
LABEL_15:
    sub_1E6121040(&v44);
    if (*(&v46 + 1))
    {
      v20 = 1;
      do
      {
        v12 = v44;
        v41 = v45;
        v42 = v46;
        v43 = v47;
        v29 = *a5;
        result = sub_1E641708C(v44);
        v31 = v29[2];
        v32 = (v30 & 1) == 0;
        v18 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v30;
        if (v29[3] < v33)
        {
          sub_1E6419AF8(v33, 1);
          result = sub_1E641708C(v12);
          if ((a4 & 1) != (v34 & 1))
          {
            goto LABEL_8;
          }
        }

        v35 = *a5;
        if (a4)
        {
          sub_1E5FEE468(&v41, v35[7] + 40 * result);
        }

        else
        {
          v35[(result >> 6) + 8] |= 1 << result;
          *(v35[6] + result) = v12;
          v36 = v35[7] + 40 * result;
          v37 = v41;
          v38 = v42;
          *(v36 + 32) = v43;
          *v36 = v37;
          *(v36 + 16) = v38;
          v39 = v35[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v35[2] = v40;
        }

        sub_1E6121040(&v44);
      }

      while (*(&v46 + 1));
    }

LABEL_25:
    sub_1E5E24EE4(v48);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t AppComposer.libraryGalleryViewBuilder(_:currentRoutingContext:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v51 = a1;
  v59 = a3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072998, &qword_1E65EC170);
  v58 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = v46 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729A0, &unk_1E65FA520);
  v6 = MEMORY[0x1EEE9AC00](v57);
  v54 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = v46 - v8;
  v9 = type metadata accessor for AppComposer(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729A8, &qword_1E65EC178);
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v14 = v46 - v13;
  v15 = sub_1E65DF458();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1E65DF2D8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v3;
  v49 = *v3;
  sub_1E5DF650C(a2, v68);
  v20 = swift_allocObject();
  sub_1E5DF599C(v68, v20 + 16);
  sub_1E65DF448();
  sub_1E65DF2C8();
  v60 = v12;
  sub_1E5E1DEAC(v3, v12);
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v63 = *(v10 + 80);
  v64 = v21;
  v22 = v21 + v11;
  v61 = v21 + v11;
  v23 = swift_allocObject();
  sub_1E5E1FA80(v12, v23 + v21);
  v24 = v51;
  *(v23 + v22) = v51;
  type metadata accessor for AppFeature(0);
  sub_1E5FF0644(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E5FF0644(&qword_1ED0729B0, MEMORY[0x1E699E5D0], MEMORY[0x1E699E5C8]);
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v46[3] = sub_1E65E4F08();
  (*(v50 + 8))(v14, v52);
  (*(v17 + 8))(v19, v16);
  sub_1E65E5148();
  v52 = sub_1E65E5138();
  LOBYTE(v19) = v24;
  v25 = v47;
  v26 = v62;
  sub_1E5FEF474(v24, v52, v47, v62, v68);
  v27 = v60;
  sub_1E5E1DEAC(v26, v60);
  v49 = *(&v68[0] + 1);
  v50 = *&v68[0];
  v48 = v69;
  v46[1] = v70;
  v46[4] = v71;
  v46[2] = v72;
  sub_1E5DF650C(v25, v67);
  v28 = v61;
  v29 = ((v61 & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_1E5E1FA80(v27, v30 + v64);
  *(v30 + v28) = v19;
  v31 = v30 + (v28 & 0xFFFFFFFFFFFFFFF8);
  v32 = v68[0];
  *(v31 + 24) = v68[1];
  *(v31 + 8) = v32;
  *(v31 + 88) = v72;
  v33 = v70;
  *(v31 + 72) = v71;
  v34 = v69;
  *(v31 + 56) = v33;
  *(v31 + 40) = v34;
  sub_1E5DF599C(v67, v30 + v29);

  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729B8, &qword_1E65EC190);
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0729C0, &qword_1E65EC198);
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0729C8, &qword_1E65EC1A0);
  v37 = sub_1E5FED46C(&qword_1ED0729D0, &qword_1ED0729C8, &qword_1E65EC1A0, MEMORY[0x1E6981810]);
  v65 = v36;
  v66 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = v35;
  v66 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v39 = v53;
  sub_1E65DF278();
  v40 = v60;
  sub_1E5E1DEAC(v62, v60);
  v41 = swift_allocObject();
  sub_1E5E1FA80(v40, v41 + v64);
  sub_1E5FED46C(&qword_1ED0729D8, &qword_1ED072998, &qword_1E65EC170, MEMORY[0x1E699E5A8]);
  v42 = v54;
  v43 = v55;
  sub_1E6259D5C(sub_1E5FF0278, v41, v55);

  swift_unknownObjectRelease();

  (*(v58 + 8))(v39, v43);
  sub_1E5FF02D8();
  v44 = v56;
  sub_1E5FEE4C8();
  sub_1E5E4ABD8(v42);
  sub_1E5FEE4C8();
  return sub_1E5E4ABD8(v44);
}

uint64_t sub_1E5FEEE24(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 32) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E5FEEE48, 0, 0);
}

uint64_t sub_1E5FEEE48()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1E5FEEF74;
  v5 = *(v0 + 32);

  return v7(v5, v2, v3);
}

uint64_t sub_1E5FEEF74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E5FEF068(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E5FEEE24(a1, v1 + 16);
}

uint64_t sub_1E5FEF100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E65DF658();
  MEMORY[0x1EEE9AC00](v4 - 8);
  type metadata accessor for AppState(0);
  v5 = type metadata accessor for AppComposer(0);
  sub_1E6093FD0(*(a2 + *(v5 + 20) + 8));
  return sub_1E65DF288();
}

uint64_t sub_1E5FEF1C0(uint64_t a1)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_1E5FEF100(a1, v4, v5);
}

uint64_t sub_1E5FEF260(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729B8, &qword_1E65EC190);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  sub_1E60A2620(v6, a3, v11, a4);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0729C0, &qword_1E65EC198);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0729C8, &qword_1E65EC1A0);
  v16 = sub_1E5FED46C(&qword_1ED0729D0, &qword_1ED0729C8, &qword_1E65EC1A0, MEMORY[0x1E6981810]);
  v20 = v15;
  v21 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v14;
  v21 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E5FEE4C8();
  v18 = *(v8 + 8);
  v18(v11, v7);
  sub_1E5FEE4C8();
  return (v18)(v13, v7);
}

double sub_1E5FEF474@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v81 = a3;
  v7 = a1;
  v71 = a5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072710, &qword_1E65EBB90);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v67 = v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D10, &unk_1E65FAA50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = v56 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072718, &qword_1E65EBB98);
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = v56 - v11;
  v12 = type metadata accessor for AppComposer(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v64 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v56 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v56 - v20;
  v23 = v22;
  v59 = v22;
  MEMORY[0x1EEE9AC00](v19);
  v25 = v56 - v24;
  sub_1E63AE64C(v7, a2, a4, &v86);
  *&v85 = 0;
  *(&v85 + 1) = 0xE000000000000000;
  sub_1E65E68A8();

  *&v85 = 0xD000000000000015;
  *(&v85 + 1) = 0x80000001E6610EC0;
  v26 = sub_1E65DF568();
  MEMORY[0x1E694D7C0](v26);

  v60 = v85;
  sub_1E5E1DEAC(a4, v25);
  v56[12] = v86;
  v56[13] = *(&v87 + 1);
  v56[14] = *(&v88 + 1);
  v56[15] = *(&v89 + 1);
  v56[16] = *(&v90 + 1);
  v27 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v28 = v27 + v23;
  v29 = *(v13 + 80);
  v30 = swift_allocObject();
  v63 = v30;
  sub_1E5E1FA80(v25, v30 + v27);
  v31 = (v30 + ((v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  v32 = v89;
  v31[2] = v88;
  v31[3] = v32;
  v31[4] = v90;
  v33 = v87;
  *v31 = v86;
  v31[1] = v33;
  sub_1E5DF650C(v81, &v85);
  v34 = swift_allocObject();
  sub_1E5DF599C(&v85, v34 + 16);
  sub_1E5E1DEAC(a4, v21);
  v57 = v29;
  v35 = swift_allocObject();
  v80 = v35;
  sub_1E5E1FA80(v21, v35 + v27);
  *(v35 + v28) = v7;
  v58 = a4;
  sub_1E5E1DEAC(a4, v18);
  v36 = swift_allocObject();
  v78 = v36;
  sub_1E5E1FA80(v18, v36 + v27);
  *(v36 + v28) = v7;
  v62 = *a4;
  v81 = type metadata accessor for ActionButtonDescriptor(0);
  v79 = type metadata accessor for ArtworkDescriptor(0);
  v77 = type metadata accessor for ContextMenu(0);
  v76 = type metadata accessor for ItemContext(0);
  v75 = type metadata accessor for ItemMetrics(0);
  v74 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  v56[10] = type metadata accessor for SectionMetrics(0);
  v73 = type metadata accessor for ViewDescriptor(0);
  v56[9] = sub_1E5FF0644(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  v72 = sub_1E5FF0644(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v56[8] = sub_1E5FF0644(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  v56[7] = sub_1E5FF0644(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v56[6] = sub_1E5FF0644(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v56[5] = sub_1E5FF0644(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v56[4] = sub_1E5FF0644(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  v56[3] = sub_1E5FF0644(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  v56[2] = sub_1E5FF0644(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  v56[1] = sub_1E5DF11E0();
  v56[0] = sub_1E5DF1338();
  sub_1E5FF0644(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  swift_unknownObjectRetain();

  v56[11] = v34;

  sub_1E65DC178();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D20, &qword_1E65FAA70);

  v38 = sub_1E65DC168();
  v83 = v37;
  v84 = sub_1E5FED46C(&qword_1EE2D6BA8, &qword_1ED077D20, &qword_1E65FAA70, MEMORY[0x1E699D718]);
  v82 = v38;
  v39 = v65;
  sub_1E65DC248();
  v40 = v64;
  sub_1E5E1DEAC(v58, v64);
  v41 = (v57 + 32) & ~v57;
  v42 = (v59 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v44 = v60;
  *(v43 + 16) = v60;
  sub_1E5E1FA80(v40, v43 + v41);
  v45 = (v43 + v42);
  *v45 = sub_1E5F8AA74;
  v45[1] = 0;
  *(swift_allocObject() + 16) = v44;
  type metadata accessor for AppFeature(0);
  sub_1E5FF0644(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E5FED46C(&qword_1EE2D6BA0, &qword_1ED072718, &qword_1E65EBB98, MEMORY[0x1E699D758]);

  v46 = v67;
  v47 = v66;
  sub_1E65E4DE8();
  v48 = swift_allocObject();
  v49 = v63;
  *(v48 + 16) = sub_1E5FF0390;
  *(v48 + 24) = v49;

  sub_1E65E4CC8();
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1E5FE9CE8;
  *(v50 + 24) = v48;

  v51 = sub_1E65E4F08();

  (*(v69 + 8))(v46, v70);
  (*(v68 + 8))(v39, v47);
  v52 = v71;
  *v71 = v51;
  v53 = v86;
  *(v52 + 3) = v87;
  v54 = v89;
  *(v52 + 5) = v88;
  *(v52 + 7) = v54;
  result = *&v90;
  *(v52 + 9) = v90;
  *(v52 + 1) = v53;
  return result;
}

uint64_t sub_1E5FF01CC()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + v3);

  return sub_1E5FEF260(v0 + v2, v4, (v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8), v0 + (((v3 & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8));
}

void *sub_1E5FF0278()
{
  type metadata accessor for AppComposer(0);

  return sub_1E5FE9818();
}

unint64_t sub_1E5FF02D8()
{
  result = qword_1ED0729E0;
  if (!qword_1ED0729E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0729A0, &unk_1E65FA520);
    sub_1E5FED46C(&qword_1ED0729D8, &qword_1ED072998, &qword_1E65EC170, MEMORY[0x1E699E5A8]);
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0729E0);
  }

  return result;
}

uint64_t sub_1E5FF0390(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E60E46CC(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E5FF0444(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  v6 = *(v5 + *(v4 + 64));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5FE99E8;

  return sub_1E60ABAC4(a1, v5, v6);
}

uint64_t sub_1E5FF0544(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  v6 = *(v5 + *(v4 + 64));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5FEE4D4;

  return sub_1E60AC228(a1, v5, v6);
}

uint64_t sub_1E5FF0644(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5FF0694@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1E65E4EC8();

  v3 = v7;
  if (v7 == 6)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    v4 = v6;
    *(a1 + 24) = type metadata accessor for NavigationControllerRoutingContext(0);
    *(a1 + 32) = &off_1F5FA9B10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    sub_1E5E24114(&v6, boxed_opaque_existential_1);
    return sub_1E5E07DA0(v4, v3);
  }

  return result;
}

uint64_t sub_1E5FF075C(_OWORD *a1, uint64_t a2)
{
  *(v2 + 64) = a2;
  *(v2 + 72) = type metadata accessor for AppAction(0);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1E5FF07FC, 0, 0);
}

uint64_t sub_1E5FF07FC()
{
  v37 = v0;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  __swift_project_value_buffer(v1, qword_1EE2EA2A0);

  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v35 = v5;
    *v4 = 136446210;
    swift_getKeyPath();
    sub_1E65E4EC8();

    *(v0 + 48) = *(v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A08, &qword_1E65EC2A0);
    v6 = sub_1E65E6648();
    v8 = v7;
    sub_1E5E07DA0(*(v0 + 32), *(v0 + 40));
    v9 = sub_1E5DFD4B0(v6, v8, &v35);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Currently selected item is %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E694F1C0](v5, -1, -1);
    MEMORY[0x1E694F1C0](v4, -1, -1);
  }

  v10 = *(v0 + 96);
  *(v0 + 104) = *(*(v0 + 64) + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  if (v12 == 6)
  {
    if (v10 == 6)
    {
      v12 = 6;
      sub_1E5E05374(*(v0 + 88), 6uLL);
LABEL_45:
      sub_1E5E07DA0(v11, v12);
LABEL_46:

      v32 = *(v0 + 8);

      return v32();
    }

    goto LABEL_9;
  }

  if (v10 == 6)
  {
LABEL_9:
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    sub_1E5E05374(v14, v13);
    sub_1E5E07DA0(v11, v12);
    sub_1E5E07DA0(v14, v13);
    goto LABEL_10;
  }

  v20 = 0x65726F6C707865;
  v22 = *(v0 + 88);
  v21 = *(v0 + 96);
  if (v12 > 2)
  {
    switch(v12)
    {
      case 3:
        v23 = 0x686372616573;
        sub_1E5E05374(*(v0 + 88), *(v0 + 96));
        sub_1E5E05374(v22, v21);
        v25 = v11;
        v26 = 3;
        break;
      case 4:
        v23 = 0x7478654E7075;
        sub_1E5E05374(*(v0 + 88), *(v0 + 96));
        sub_1E5E05374(v22, v21);
        v25 = v11;
        v26 = 4;
        break;
      case 5:
        v23 = 0x736E616C70;
        sub_1E5E05374(*(v0 + 88), *(v0 + 96));
        sub_1E5E05374(v22, v21);
        sub_1E5FED40C(v11, 5uLL);
        v24 = 0xE500000000000000;
        goto LABEL_28;
      default:
        goto LABEL_24;
    }
  }

  else
  {
    if (!v12)
    {
      sub_1E5E05374(*(v0 + 88), *(v0 + 96));
      sub_1E5E05374(v22, v21);
      sub_1E5FED40C(v11, 0);
      v24 = 0xE700000000000000;
      v23 = 0x65726F6C707865;
      goto LABEL_28;
    }

    if (v12 != 1)
    {
      if (v12 == 2)
      {
        v23 = 0x7972617262696CLL;
        sub_1E5E05374(*(v0 + 88), *(v0 + 96));
        sub_1E5E05374(v22, v21);
        sub_1E5FED40C(v11, 2uLL);
        v24 = 0xE700000000000000;
        goto LABEL_28;
      }

LABEL_24:
      v35 = 0x7974696C61646F6DLL;
      v36 = 0xE90000000000003ALL;
      sub_1E5E05374(v22, v21);
      sub_1E5E05374(v22, v21);
      sub_1E5FED40C(v11, v12);
      MEMORY[0x1E694D7C0](v11, v12);
      v23 = v35;
      v24 = v36;
      goto LABEL_28;
    }

    v23 = 0x756F59726F66;
    sub_1E5E05374(*(v0 + 88), *(v0 + 96));
    sub_1E5E05374(v22, v21);
    v25 = v11;
    v26 = 1;
  }

  sub_1E5FED40C(v25, v26);
  v24 = 0xE600000000000000;
LABEL_28:
  v27 = *(v0 + 96);
  if (v27 > 2)
  {
    if (v27 == 3)
    {
      v28 = 0xE600000000000000;
      v20 = 0x686372616573;
      goto LABEL_42;
    }

    if (v27 != 4)
    {
      if (v27 == 5)
      {
        v28 = 0xE500000000000000;
        v20 = 0x736E616C70;
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v28 = 0xE600000000000000;
    v20 = 0x7478654E7075;
  }

  else
  {
    if (!v27)
    {
      v28 = 0xE700000000000000;
      goto LABEL_42;
    }

    if (v27 != 1)
    {
      if (v27 == 2)
      {
        v28 = 0xE700000000000000;
        v20 = 0x7972617262696CLL;
        goto LABEL_42;
      }

LABEL_39:
      v29 = *(v0 + 88);
      v35 = 0x7974696C61646F6DLL;
      v36 = 0xE90000000000003ALL;
      MEMORY[0x1E694D7C0](v29);
      v20 = v35;
      v28 = v36;
      goto LABEL_42;
    }

    v28 = 0xE600000000000000;
    v20 = 0x756F59726F66;
  }

LABEL_42:
  v31 = *(v0 + 88);
  v30 = *(v0 + 96);
  if (v23 == v20 && v24 == v28)
  {
    sub_1E5E07DA0(*(v0 + 88), *(v0 + 96));
    sub_1E5E0476C(v31, v30);
    sub_1E5E07DA0(v11, v12);

    goto LABEL_45;
  }

  v33 = sub_1E65E6C18();
  sub_1E5E07DA0(v31, v30);
  sub_1E5E0476C(v31, v30);
  sub_1E5E07DA0(v11, v12);

  sub_1E5E07DA0(v11, v12);
  if (v33)
  {
    goto LABEL_46;
  }

LABEL_10:
  v15 = *(v0 + 88);
  v16 = *(v0 + 96);
  v17 = *(v0 + 80);
  *v17 = v15;
  v17[1] = v16;
  swift_storeEnumTagMultiPayload();
  sub_1E65E6058();
  sub_1E5E05374(v15, v16);
  *(v0 + 112) = sub_1E65E6048();
  v19 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5FF0E8C, v19, v18);
}

uint64_t sub_1E5FF0E8C()
{
  v1 = *(v0 + 80);

  sub_1E65E4EE8();
  sub_1E5FFF4B8(v1, type metadata accessor for AppAction);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FF0F1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 32) = a5;
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_1E5FF0FD4;

  return sub_1E5FA0B34(a3, a4, (v5 + 32));
}

uint64_t sub_1E5FF0FD4()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5FF1108, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E5FF1120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  *(v7 + 123) = a7;
  *(v7 + 122) = a6;
  *(v7 + 121) = a5;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 16) = a2;
  v8 = type metadata accessor for NavigationControllerRoutingContext(0);
  *(v7 + 40) = v8;
  v9 = *(v8 - 8);
  *(v7 + 48) = v9;
  *(v7 + 56) = *(v9 + 64);
  *(v7 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FF11F8, 0, 0);
}

uint64_t sub_1E5FF11F8()
{
  sub_1E65E6058();
  v0[9] = sub_1E65E6048();
  v2 = sub_1E65E5FC8();
  v0[10] = v2;
  v0[11] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1E5FF128C, v2, v1);
}

uint64_t sub_1E5FF128C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 123);
  v15 = *(v0 + 122);
  v4 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);
  v17 = *(v7 + *(*(v0 + 40) + 24) + 8);
  v8 = *(v0 + 121);
  ObjectType = swift_getObjectType();
  *(v0 + 120) = v3;
  sub_1E5FFEEF0(v7, v2, type metadata accessor for NavigationControllerRoutingContext);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = v9 + v1;
  v11 = swift_allocObject();
  *(v0 + 96) = v11;
  *(v11 + 16) = v6;
  sub_1E5FFF518(v2, v11 + v9, type metadata accessor for NavigationControllerRoutingContext);
  *(v11 + v10) = v15;
  v12 = v11 + (v10 & 0xFFFFFFFFFFFFFFF8);
  *(v12 + 8) = v5;
  *(v12 + 16) = v8;

  sub_1E5FA9D20(v5, v8);
  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v13[1] = sub_1E5FF1438;

  return sub_1E61261B8((v0 + 120), &unk_1E65EA720, v11, ObjectType, v17);
}

uint64_t sub_1E5FF1438()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1E5FF15DC;
  }

  else
  {
    v5 = sub_1E5FF1570;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E5FF1570()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FF15DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FF1648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  *(v7 + 147) = a7;
  *(v7 + 146) = a6;
  *(v7 + 145) = a5;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 16) = a2;
  v8 = *(type metadata accessor for RouteDestination(0) - 8);
  *(v7 + 40) = v8;
  *(v7 + 48) = *(v8 + 64);
  *(v7 + 56) = swift_task_alloc();
  v9 = type metadata accessor for NavigationControllerRoutingContext(0);
  *(v7 + 64) = v9;
  v10 = *(v9 - 8);
  *(v7 + 72) = v10;
  *(v7 + 80) = *(v10 + 64);
  *(v7 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FF1780, 0, 0);
}

uint64_t sub_1E5FF1780()
{
  sub_1E65E6058();
  v0[12] = sub_1E65E6048();
  v2 = sub_1E65E5FC8();
  v0[13] = v2;
  v0[14] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1E5FF1814, v2, v1);
}

uint64_t sub_1E5FF1814()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v15 = *(v0 + 48);
  v16 = *(v0 + 80);
  v4 = *(v0 + 147);
  v18 = *(v0 + 146);
  v5 = *(v0 + 40);
  v17 = *(v0 + 32);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v20 = *(v6 + *(*(v0 + 64) + 24) + 8);
  v8 = *(v0 + 145);
  ObjectType = swift_getObjectType();
  *(v0 + 144) = v4;
  sub_1E5FFEEF0(v6, v1, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5FFEEF0(v7, v3, type metadata accessor for RouteDestination);
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = (v16 + *(v5 + 80) + v9) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v0 + 120) = v11;
  sub_1E5FFF518(v1, v11 + v9, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5FFF518(v3, v11 + v10, type metadata accessor for RouteDestination);
  *(v11 + v10 + v15) = v18;
  v12 = v11 + ((v10 + v15) & 0xFFFFFFFFFFFFFFF8);
  *(v12 + 8) = v17;
  *(v12 + 16) = v8;
  sub_1E5FA9D20(v17, v8);
  v13 = swift_task_alloc();
  *(v0 + 128) = v13;
  *v13 = v0;
  v13[1] = sub_1E5FF1A1C;

  return sub_1E61261B8((v0 + 144), &unk_1E65EA820, v11, ObjectType, v20);
}

uint64_t sub_1E5FF1A1C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1E5FF1BCC;
  }

  else
  {
    v5 = sub_1E5FF1B54;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E5FF1B54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FF1BCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FF1C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1E65D76A8();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_1E65D92D8();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v4[12] = swift_task_alloc();
  v7 = sub_1E65D74E8();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FF1E10, 0, 0);
}

uint64_t sub_1E5FF1E10()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  sub_1E5FF3144(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    sub_1E5DFE50C(*(v0 + 96), &qword_1ED072340, &qword_1E65EA410);
    (*(v5 + 16))(v7, v6, v4);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 136);
    v11 = *(v0 + 104);
    v12 = *(v0 + 112);
    v13 = *(v0 + 96);
    v14 = *(v12 + 32);
    *(v0 + 144) = v14;
    *(v0 + 152) = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v14(v10, v13, v11);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v15 = sub_1E65E3B68();
    *(v0 + 160) = __swift_project_value_buffer(v15, qword_1EE2EA2A0);
    sub_1E65E3B18();
    *(v0 + 168) = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
    *(v0 + 280) = *(type metadata accessor for AppComposer(0) + 20);
    *(v0 + 176) = type metadata accessor for AppEnvironment(0);
    v16 = ServiceSubscriptionService.fetchServiceSubscription.getter();
    *(v0 + 184) = v17;
    v20 = (v16 + *v16);
    v18 = swift_task_alloc();
    *(v0 + 192) = v18;
    *v18 = v0;
    v18[1] = sub_1E5FF20F4;
    v19 = *(v0 + 88);

    return v20(v19, 1);
  }
}