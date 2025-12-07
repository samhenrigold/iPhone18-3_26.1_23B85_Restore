uint64_t sub_1CF054A5C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v19 = sub_1CF9E70C8();
  if (!v19)
  {
    return sub_1CF9E6DA8();
  }

  v41 = v19;
  v45 = sub_1CF9E7A88();
  v32 = sub_1CF9E7A98();
  sub_1CF9E7A38();
  result = sub_1CF9E70B8();
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
      v22 = sub_1CF9E7168();
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
      sub_1CF9E7A78();
      result = sub_1CF9E70E8();
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

uint64_t sub_1CF054EA0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1CF054F60(uint64_t a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3)
{
  v6 = *v3;
  v7 = (*(*a1 + 184))();
  if (v7 == 9)
  {
    return 0;
  }

  v9 = v7;
  v10 = (*(*v3 + 488))();
  v11 = *(*v3 + 168);

  v13 = v11(v12);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = *(v6 + 80);
  *(v15 + 24) = *(v6 + 88);
  *(v15 + 40) = *(v6 + 104);
  *(v15 + 48) = v14;
  type metadata accessor for JobLimitSlot();
  swift_allocObject();
  sub_1CF9AC8EC(v10, v9, a2, a3, v13, sub_1CF527D34, v15);
  v17 = v16;

  return v17;
}

uint64_t sub_1CF055124()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1CF05515C()
{

  return swift_deallocObject();
}

uint64_t sub_1CF055198@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v203 = a4;
  v7 = a1;
  v186 = a5;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 88);
  v10 = type metadata accessor for JobLockRule(0, v8, v9, a4);
  v218 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v198 = &v183 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v192 = &v183 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v202 = &v183 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v191 = &v183 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v190 = &v183 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v189 = &v183 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v193 = &v183 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v196 = &v183 - v25;
  v183 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v183 - v28;
  swift_beginAccess();
  v207[6] = v8;
  v207[7] = v9;
  v204 = a2;
  v207[8] = a2;
  v207[9] = a3;
  v188 = a3;

  WitnessTable = swift_getWitnessTable();
  v31 = v206;
  v32 = sub_1CF9E66C8();
  v205 = v31;
  *&v208 = v32;
  v184 = v8;
  v185 = v9;
  v207[2] = v8;
  v207[3] = v9;
  v197 = WitnessTable;
  v33 = sub_1CF9E6708();
  v34 = swift_getWitnessTable();
  v206 = v33;
  v35 = v205;
  v37 = sub_1CF054A5C(sub_1CF52BB30, v207, v33, v10, MEMORY[0x1E69E73E0], v34, MEMORY[0x1E69E7410], v36);
  v187 = v35;
  v38 = v32;
  v39 = v196;
  v38, v40, v41, v42, v43, v44, v45, v46;

  v47 = sub_1CF9E6DF8();
  v205 = v7;
  v195 = v37;
  if (v47)
  {
    v55 = 0;
    v200 = (v218 + 32);
    v201 = (v218 + 16);
    v199 = (v218 + 8);
    v194 = v29;
    do
    {
      v56 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v56)
      {
        v57 = (*(v218 + 16))(v29, v37 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v55, v10);
        v58 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_77;
        }
      }

      else
      {
        v57 = sub_1CF9E7998();
        if (v183 != 8)
        {
          goto LABEL_82;
        }

        *&v208 = v57;
        (*v201)(v29, &v208, v10);
        v57 = swift_unknownObjectRelease();
        v58 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
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
          goto LABEL_88;
        }
      }

      (*v200)(v39, v29, v10);
      swift_beginAccess();
      v60 = sub_1CF9E6718();
      if (*v59)
      {
        v61 = v59;
        v57 = sub_1CEFCCBDC(v203, &v208, &unk_1EC4C1BE0, &unk_1CF9FD400);
        if (!*(&v209 + 1))
        {
          goto LABEL_80;
        }

        v62 = v61[1];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61[1] = v62;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v62 = sub_1CF1F7408(0, (*v62->tree + 1), 1, v62);
          v61[1] = v62;
        }

        v65 = *v62->tree;
        v64 = *v62->tester;
        if (v65 >= v64 >> 1)
        {
          v62 = sub_1CF1F7408((v64 > 1), (v65 + 1), 1, v62);
          v61[1] = v62;
        }

        v7 = v205;
        *v62->tree = v65 + 1;
        sub_1CF054EA0(&v208, &v62[1] + 40 * v65);
        v60(&v212, 0);
        swift_endAccess();
        v39 = v196;
        (*v199)(v196, v10);
        v29 = v194;
        v37 = v195;
      }

      else
      {
        v60(&v212, 0);
        swift_endAccess();
        (*v199)(v39, v10);
        v7 = v205;
      }

      ++v55;
    }

    while (v58 != sub_1CF9E6DF8());
  }

  v37, v48, v49, v50, v51, v52, v53, v54;
  *&v208 = v37;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  if (sub_1CF9E7128())
  {
    v55 = v204;
    v66 = sub_1CF9E6DF8();
    v67 = v192;
    if (v66)
    {
      v68 = 0;
      v199 = (v218 + 32);
      v200 = (v218 + 16);
      v194 = (v218 + 8);
      v196 = ((v218 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
      do
      {
        v71 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v71)
        {
          v72 = *(v218 + 16);
          v57 = (v72)(v202, v55 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v68, v10);
        }

        else
        {
          v57 = sub_1CF9E7998();
          if (v183 != 8)
          {
            goto LABEL_83;
          }

          *&v208 = v57;
          v72 = *v200;
          (*v200)(v202, &v208, v10);
          v57 = swift_unknownObjectRelease();
        }

        v55 = v206;
        if (__OFADD__(v68, 1))
        {
          goto LABEL_78;
        }

        v201 = (v68 + 1);
        (*v199)(v67, v202, v10);
        swift_beginAccess();
        sub_1CF9E6728();
        v73 = v67;
        v74 = v212;
        swift_endAccess();
        if (v74)
        {
          sub_1CF24CCFC(v74, *(&v74 + 1), v75, v76, v77, v78, v79, v80);
        }

        else
        {
          v72(v190, v67, v10);
          *&v212 = MEMORY[0x1E69E7CC0];
          *(&v212 + 1) = MEMORY[0x1E69E7CC0];
          swift_beginAccess();
          sub_1CF9E6738();
          swift_endAccess();
        }

        v81 = v198;
        v72(v198, v73, v10);
        swift_beginAccess();
        v83 = sub_1CF9E6718();
        if (*v82)
        {
          v55 = v82;
          v57 = sub_1CEFCCBDC(v203, &v212, &unk_1EC4C1BE0, &unk_1CF9FD400);
          if (!v213)
          {
            goto LABEL_81;
          }

          sub_1CF054EA0(&v212, &v208);
          *(&v210 + 1) = 0;
          v211 = 1;
          v84 = *v55;
          v85 = swift_isUniquelyReferenced_nonNull_native();
          *v55 = v84;
          v70 = v201;
          if ((v85 & 1) == 0)
          {
            v84 = sub_1CF044A50(0, (*v84->tree + 1), 1, v84, v86, v87, v88, v89);
            *v55 = v84;
          }

          v91 = *v84->tree;
          v90 = *v84->tester;
          if (v91 >= v90 >> 1)
          {
            v84 = sub_1CF044A50((v90 > 1), (v91 + 1), 1, v84, v86, v87, v88, v89);
            *v55 = v84;
          }

          v55 = v204;
          *v84->tree = v91 + 1;
          v92 = v84 + 56 * v91;
          v93 = v208;
          v94 = v209;
          v95 = v210;
          v92[80] = v211;
          *(v92 + 3) = v94;
          *(v92 + 4) = v95;
          *(v92 + 2) = v93;
          v83(&v214, 0);
          swift_endAccess();
          v96 = *v194;
          (*v194)(v198, v10);
          v67 = v192;
          v96(v192, v10);
          v7 = v205;
        }

        else
        {
          v83(&v214, 0);
          swift_endAccess();
          v69 = *v194;
          (*v194)(v81, v10);
          v69(v73, v10);
          v55 = v204;
          v67 = v73;
          v70 = v201;
        }

        ++v68;
      }

      while (v70 != sub_1CF9E6DF8());
    }

    v120 = [*(v7 + 5) allObjects];
    v10 = v184;
    type metadata accessor for JobLockAggregator(0, v184, v185, v121);
    v122 = sub_1CF9E6D48();

    if (sub_1CF9E6DF8())
    {
      TupleTypeMetadata2 = 0;
      v130 = v187;
      do
      {
        v131 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v131)
        {
          v55 = *(&v122[1].super.isa + TupleTypeMetadata2);

          v132 = TupleTypeMetadata2 + 1;
          if (__OFADD__(TupleTypeMetadata2, 1))
          {
            goto LABEL_52;
          }
        }

        else
        {
          v55 = sub_1CF9E7998();
          v132 = TupleTypeMetadata2 + 1;
          if (__OFADD__(TupleTypeMetadata2, 1))
          {
LABEL_52:
            __break(1u);
LABEL_53:
            v196 = TupleTypeMetadata2;
            __swift_destroy_boxed_opaque_existential_1(&v208);
            v135 = sub_1CF9E6DF8();
            v136 = v189;
            if (v135)
            {
              v137 = 0;
              v200 = (v218 + 32);
              v201 = (v218 + 16);
              v198 = (v218 + 8);
              v199 = ((v218 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
              do
              {
                v140 = sub_1CF9E6DC8();
                sub_1CF9E6D78();
                if (v140)
                {
                  v141 = *(v218 + 16);
                  v57 = (v141)(v193, v55 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v137, v10);
                }

                else
                {
                  v57 = sub_1CF9E7998();
                  if (v183 != 8)
                  {
                    goto LABEL_85;
                  }

                  *&v208 = v57;
                  v141 = *v201;
                  (*v201)(v193, &v208, v10);
                  v57 = swift_unknownObjectRelease();
                }

                v55 = v206;
                if (__OFADD__(v137, 1))
                {
                  goto LABEL_79;
                }

                v202 = (v137 + 1);
                (*v200)(v136, v193, v10);
                swift_beginAccess();
                sub_1CF9E6728();
                v142 = v136;
                v143 = v212;
                swift_endAccess();
                if (v143)
                {
                  sub_1CF24CCFC(v143, *(&v143 + 1), v144, v145, v146, v147, v148, v149);
                }

                else
                {
                  v141(v190, v136, v10);
                  *&v212 = MEMORY[0x1E69E7CC0];
                  *(&v212 + 1) = MEMORY[0x1E69E7CC0];
                  swift_beginAccess();
                  sub_1CF9E6738();
                  swift_endAccess();
                }

                v150 = v191;
                v141(v191, v142, v10);
                swift_beginAccess();
                v152 = sub_1CF9E6718();
                if (*v151)
                {
                  v55 = v151;
                  v57 = sub_1CEFCCBDC(v203, &v212, &unk_1EC4C1BE0, &unk_1CF9FD400);
                  if (!v213)
                  {
                    goto LABEL_84;
                  }

                  sub_1CF054EA0(&v212, &v208);
                  *(&v210 + 1) = v188;
                  v211 = 0;
                  v153 = *v55;
                  v154 = swift_isUniquelyReferenced_nonNull_native();
                  *v55 = v153;
                  v139 = v202;
                  if ((v154 & 1) == 0)
                  {
                    v153 = sub_1CF044A50(0, (*v153->tree + 1), 1, v153, v155, v156, v157, v158);
                    *v55 = v153;
                  }

                  v160 = *v153->tree;
                  v159 = *v153->tester;
                  if (v160 >= v159 >> 1)
                  {
                    v153 = sub_1CF044A50((v159 > 1), (v160 + 1), 1, v153, v155, v156, v157, v158);
                    *v55 = v153;
                  }

                  v55 = v204;
                  *v153->tree = v160 + 1;
                  v161 = v153 + 56 * v160;
                  v162 = v208;
                  v163 = v209;
                  v164 = v210;
                  v161[80] = v211;
                  *(v161 + 3) = v163;
                  *(v161 + 4) = v164;
                  *(v161 + 2) = v162;
                  v152(&v214, 0);
                  swift_endAccess();
                  v165 = *v198;
                  (*v198)(v191, v10);
                  v136 = v189;
                  v165(v189, v10);
                }

                else
                {
                  v152(&v214, 0);
                  swift_endAccess();
                  v138 = *v198;
                  (*v198)(v150, v10);
                  v138(v142, v10);
                  v55 = v204;
                  v136 = v142;
                  v139 = v202;
                }

                ++v137;
              }

              while (v139 != sub_1CF9E6DF8());
            }

            v57 = sub_1CEFCCBDC(v203, &v208, &unk_1EC4C1BE0, &unk_1CF9FD400);
            v176 = *(&v209 + 1);
            if (*(&v209 + 1))
            {
              v177 = v210;
              __swift_project_boxed_opaque_existential_1(&v208, *(&v209 + 1));
              v178 = (*(v177 + 16))(v176, v177);
              v119 = v195;
              v214 = v55;
              v215 = v195;
              v216 = v178;
              v217 = v179;
              swift_beginAccess();
              sub_1CF9E6708();

              sub_1CF9E6738();
              swift_endAccess();
              result = __swift_destroy_boxed_opaque_existential_1(&v208);
              goto LABEL_76;
            }

LABEL_88:
            __break(1u);
LABEL_89:
            MEMORY[0x1EEE9AC00](v57);
            *(&v183 - 2) = v55;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v183 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
          }
        }

        v57 = objc_sync_enter(v133);
        if (v57)
        {
          goto LABEL_89;
        }

        sub_1CF529494(v55, v204);
        if (v130)
        {

          v181 = objc_sync_exit(v55);
          MEMORY[0x1EEE9AC00](v181);
          v182 = &v183 - 4;
          *(&v183 - 2) = v55;
          goto LABEL_92;
        }

        v134 = objc_sync_exit(v55);
        if (v134)
        {
          MEMORY[0x1EEE9AC00](v134);
          v182 = &v183 - 4;
          *(&v183 - 2) = v55;
LABEL_92:
          fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v182, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
        }

        ++TupleTypeMetadata2;
      }

      while (v132 != sub_1CF9E6DF8());
    }

    v122, v123, v124, v125, v126, v127, v128, v129;
    v57 = sub_1CEFCCBDC(v203, &v208, &unk_1EC4C1BE0, &unk_1CF9FD400);
    if (!*(&v209 + 1))
    {
      goto LABEL_87;
    }

    v195, v166, v167, v168, v169, v170, v171, v172;
    type metadata accessor for JobLock.Registration(0, v10, v185, v173);
    v174 = swift_allocObject();
    *(v174 + 80) = 0;
    *(v174 + 88) = 0;
    *(v174 + 64) = v7;
    sub_1CF054EA0(&v208, v174 + 16);
    *(v174 + 56) = v204;
    *(v174 + 72) = 0;
    *(v174 + 80) = 0;
    *(v174 + 88) = 0;
    v175 = v186;
    *v186 = v174;
    *(v175 + 8) = 0;
  }

  else
  {
    v57 = sub_1CEFCCBDC(v203, &v208, &unk_1EC4C1BE0, &unk_1CF9FD400);
    v97 = *(&v209 + 1);
    v55 = v204;
    if (!*(&v209 + 1))
    {
      goto LABEL_86;
    }

    v98 = v210;
    __swift_project_boxed_opaque_existential_1(&v208, *(&v209 + 1));
    v99 = (*(v98 + 16))(v97, v98);
    v101 = v100;
    swift_beginAccess();
    v216 = v99;
    v217 = v101;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1CF9E6728();
    v101, v103, v104, v105, v106, v107, v108, v109;
    v110 = v214;
    v111 = v215;
    swift_endAccess();
    if (!v110)
    {
      goto LABEL_53;
    }

    sub_1CF24CCFC(v110, v111, v112, v113, v114, v115, v116, v117);
    result = __swift_destroy_boxed_opaque_existential_1(&v208);
    v119 = v195;
LABEL_76:
    v180 = v186;
    *v186 = v119;
    *(v180 + 8) = 1;
  }

  return result;
}

uint64_t sub_1CF056468(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v4 = *a1;
  v11 = a4;
  v9 = a2;
  v5 = v4;
  swift_beginAccess();

  v6 = *(v5 + 632);
  v8[0] = *(v5 + 616);
  v8[1] = v6;
  type metadata accessor for FSOrFPJob(255, v8);
  sub_1CF9E6708();
  sub_1CF9E6738();
  return swift_endAccess();
}

uint64_t sub_1CF056580()
{
  v0 = swift_allocObject();
  sub_1CF0565B8();
  return v0;
}

void *sub_1CF0565B8()
{
  v1 = *v0;
  v0[6] = 0;
  v0[2] = MEMORY[0x1E69E7CC0];
  v3 = v1[26];
  v4 = v1[27];
  v5 = v1[28];
  v9 = v1[25];
  v2 = v9;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  type metadata accessor for Mutation(0, &v9);
  v0[3] = sub_1CF9E6DA8();
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  type metadata accessor for ReconciliationMutation(0, &v9);
  v0[4] = sub_1CF9E6DA8();
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  type metadata accessor for FSOrFPJob(0, &v9);
  v6 = sub_1CF9E6DA8();
  v7 = v0[6];
  v0[5] = v6;
  v0[6] = 0;

  return v0;
}

uint64_t sub_1CF0566C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(*(v6 + 168) + 64))(a1, a2, *(v6 + 160));

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CF05677C(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = sub_1CF045354();

  if (!v3)
  {
    return result;
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = sub_1CF0452C8(a1);
  v6 = *(*v3 + 144);

  v6(v4, v5);
}

uint64_t sub_1CF0568A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF056904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for JobLockAggregator(0, *(*v4 + 80), *(*v4 + 88), a4);
  sub_1CF052DA4(v4, sub_1CF05698C);
  return v6;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF0569B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for JobLockRule(255, a2, a3, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v34[-v8 - 8];
  (*(v10 + 16))(&v34[-v8 - 8], a1, TupleTypeMetadata2, v7);
  v18 = &v9[*(TupleTypeMetadata2 + 48)];
  v19 = *v18;
  v33 = *(v18 + 1);
  result = v19 + 1;
  v21 = -*v19->tree;
  v22 = -1;
  while (1)
  {
    v23 = v21 + v22;
    if (v21 + v22 == -1)
    {
LABEL_5:
      v33, v11, v12, v13, v14, v15, v16, v17;
      v19, v26, v27, v28, v29, v30, v31, v32;
      (*(*(v5 - 8) + 8))(v9, v5);
      return (v23 != -1);
    }

    if (++v22 >= *v19->tree)
    {
      break;
    }

    tester = result[1].tester;
    sub_1CEFCCBDC(result, v34, &qword_1EC4BE650, &qword_1CF9FE490);
    v25 = v34[48];
    sub_1CF056B84(v34);
    result = tester;
    if (v25 == 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF056B84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE650, &qword_1CF9FE490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF056BEC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = MEMORY[0x1E69E77B0];
  v4 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  (*(v5 + 16))(&v16 - v10, v9);
  v12 = *(*(v2 + *v3 + 8) - 8);
  v13 = *(v4 + 48);
  v14 = *(v12 + 32);
  v16 = *&v11[v13];
  v14(v7, v11);
  *&v7[v13] = v16;
  swift_getAtKeyPath();
  return (*(v5 + 8))(v7, v4);
}

uint64_t *sub_1CF056D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for JobLockRule(0, *(*v4 + 80), *(*v4 + 88), a4);
  sub_1CF9E6E58();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v4[2] = sub_1CF9E7078();
  v4[3] = sub_1CF9E7078();
  return v4;
}

unint64_t sub_1CF056E98()
{
  result = qword_1EDEA3930;
  if (!qword_1EDEA3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3930);
  }

  return result;
}

unint64_t sub_1CF056EEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C18, &qword_1CFA07AC0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0C20, &qword_1CFA07AC8);
    v7 = sub_1CF9E7BE8();
    v21 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    while (1)
    {
      sub_1CEFCCBDC(v8, v5, &qword_1EC4C0C18, &qword_1CFA07AC0);
      result = sub_1CF7BF2C0(*v5, v5[8]);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6] + 16 * result;
      v14 = v5[8];
      *v13 = *v5;
      *(v13 + 8) = v14;
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C8, &qword_1CFA058F0);
      result = sub_1CEFE55D0(&v5[v21], v15 + *(*(v16 - 8) + 72) * v12, &qword_1EC4BE1C8, &qword_1CFA058F0);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v8 += v9;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1CF0570E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = 0;
  v17 = 0xE000000000000000;
  if (a1 < 0)
  {
    MEMORY[0x1D3868CC0](2650214, 0xE300000000000000);
    v14 = a4;
    v15 = a1 & 0x7FFFFFFFFFFFFFFFLL;
    v11 = a3;
    v12 = a2;
    v13 = a5;
  }

  else
  {
    MEMORY[0x1D3868CC0](2650982, 0xE300000000000000);
    v14 = a5;
    v15 = a1;
    v11 = a2;
    v12 = a3;
    v13 = a4;
  }

  type metadata accessor for Job(0, &v11);
  swift_getWitnessTable();
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return v16;
}

uint64_t sub_1CF057204(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1BE0, &unk_1CF9FD400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF0572BC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v6 = a1;
  v29 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, 0, 0);
  v7 = v29;
  do
  {
    v8 = v6 & -v6;
    v9 = a2(v8);
    if (!v10)
    {
      a3(v9);
      v11 = sub_1CF9E6B28();
      v13 = v12;
      MEMORY[0x1D3868CC0](v11);
      v13, v14, v15, v16, v17, v18, v19, v20;
      v9 = 30768;
      v10 = 0xE200000000000000;
    }

    v30 = v7;
    v22 = *(v7 + 16);
    v21 = *(v7 + 24);
    if (v22 >= v21 >> 1)
    {
      v28 = v9;
      v25 = v10;
      sub_1CEFE95CC((v21 > 1), v22 + 1, 1);
      v10 = v25;
      v9 = v28;
      v7 = v30;
    }

    *(v7 + 16) = v22 + 1;
    v23 = v7 + 16 * v22;
    *(v23 + 32) = v9;
    *(v23 + 40) = v10;
    v24 = v6 == v8;
    v6 ^= v8;
  }

  while (!v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v26 = sub_1CF9E67D8();

  return v26;
}

uint64_t sub_1CF057488(unint64_t a1)
{
  if ((a1 & 0x1FFFFFFFFFFFFFFFLL) == 0)
  {
    v4 = a1 >> 61;
    if (a1 >> 61 > 2)
    {
      if (v4 == 3)
      {
        return 0x74696E4972657375;
      }

      if (v4 == 4)
      {
        return 0x65746E4972657375;
      }
    }

    else
    {
      if (!v4)
      {
        return 0x756F72676B636162;
      }

      if (v4 == 2)
      {
        return 0x746C7561666564;
      }
    }

    return 0x7974696C697475;
  }

  v1 = a1 >> 61;
  if (a1 >> 61 <= 1)
  {
    if (!v1)
    {
      v2 = 0x756F72676B636162;
      v3 = 0xEA0000000000646ELL;
      goto LABEL_19;
    }

LABEL_12:
    v3 = 0xE700000000000000;
    v2 = 0x7974696C697475;
    goto LABEL_19;
  }

  if (v1 == 2)
  {
    v2 = 0x746C7561666564;
    v3 = 0xE700000000000000;
    goto LABEL_19;
  }

  if (v1 == 3)
  {
    v2 = 0x74696E4972657375;
    v3 = 0xED00006465746169;
    goto LABEL_19;
  }

  if (v1 != 4)
  {
    goto LABEL_12;
  }

  v2 = 0x65746E4972657375;
  v3 = 0xEF65766974636172;
LABEL_19:
  MEMORY[0x1D3868CC0](v2, v3);
  v3, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](46, 0xE100000000000000);
  v13 = sub_1CF9E6F58();
  v15 = v14;
  MEMORY[0x1D3868CC0](v13);
  v15, v16, v17, v18, v19, v20, v21, v22;
  return 0;
}

uint64_t sub_1CF0576C4(uint64_t a1)
{
  if (a1 >= 0x2000)
  {
    if (a1 < 0x80000)
    {
      if (a1 >= 0x10000)
      {
        v15 = 0x1000000000000013;
        v16 = 0x1000000000000012;
        v21 = 0x1000000000000016;
        if (a1 != 0x40000)
        {
          v21 = 0;
        }

        if (a1 != 0x20000)
        {
          v16 = v21;
        }

        v18 = a1 == 0x10000;
        goto LABEL_70;
      }

      v13 = 0x1000000000000015;
      v14 = 0x726F6E676997A7E2;
      if (a1 != 0x8000)
      {
        v14 = 0;
      }

      if (a1 != 0x4000)
      {
        v13 = v14;
      }

      if (a1 == 0x2000)
      {
        return 0x696174657297A7E2;
      }

      else
      {
        return v13;
      }
    }

    else if (a1 < 0x400000)
    {
      v19 = 0x1000000000000013;
      v20 = 0x616572747397A7E2;
      if (a1 != 0x200000)
      {
        v20 = 0;
      }

      if (a1 != 0x100000)
      {
        v19 = v20;
      }

      if (a1 == 0x80000)
      {
        return 0x696E6E757297A7E2;
      }

      else
      {
        return v19;
      }
    }

    else
    {
      if (a1 == 0x2000000)
      {
        v6 = 0x100000000000001DLL;
      }

      else
      {
        v6 = 0;
      }

      if (a1 == 0x1000000)
      {
        v7 = 0x1000000000000015;
      }

      else
      {
        v7 = v6;
      }

      v8 = 0x1000000000000018;
      if (a1 != 0x800000)
      {
        v8 = 0;
      }

      if (a1 == 0x400000)
      {
        v8 = 0x1000000000000015;
      }

      if (a1 <= 0xFFFFFF)
      {
        return v8;
      }

      else
      {
        return v7;
      }
    }
  }

  else
  {
    if (a1 > 63)
    {
      if (a1 > 511)
      {
        v1 = 0x657571657297A7E2;
        v2 = 0x1000000000000015;
        if (a1 != 4096)
        {
          v2 = 0;
        }

        if (a1 != 2048)
        {
          v1 = v2;
        }

        v3 = 0x100000000000001BLL;
        v4 = 0x4D6874617097A7E2;
        if (a1 != 1024)
        {
          v4 = 0;
        }

        if (a1 != 512)
        {
          v3 = v4;
        }

        if (a1 <= 2047)
        {
          return v3;
        }

        else
        {
          return v1;
        }
      }

      v15 = 0x746369766597A7E2;
      v16 = 0x496B73696497A7E2;
      v17 = 0x746F72687497A7E2;
      if (a1 != 256)
      {
        v17 = 0;
      }

      if (a1 != 128)
      {
        v16 = v17;
      }

      v18 = a1 == 64;
LABEL_70:
      if (v18)
      {
        return v15;
      }

      else
      {
        return v16;
      }
    }

    v9 = 0x1000000000000013;
    v10 = 0x726574616D97A7E2;
    if (a1 != 32)
    {
      v10 = 0;
    }

    if (a1 == 16)
    {
      v10 = 0x1000000000000013;
    }

    if (a1 != 8)
    {
      v9 = v10;
    }

    v11 = 0x1000000000000011;
    v12 = 0x1000000000000013;
    if (a1 != 4)
    {
      v12 = 0;
    }

    if (a1 != 2)
    {
      v11 = v12;
    }

    if (a1 == 1)
    {
      v11 = 0x697372657097A7E2;
    }

    if (a1 <= 7)
    {
      return v11;
    }

    else
    {
      return v9;
    }
  }
}

void *sub_1CF057B28()
{
  v1 = *v0;
  if (v0[28])
  {
    v2 = v0[28];
  }

  else
  {
    v3 = v0;
    v4 = *(v1 + 632);
    v7[0] = *(v1 + 616);
    v7[1] = v4;
    type metadata accessor for SwappedDatabase(0, v7);

    v2 = sub_1CF68C1B8(v5);

    v3[28] = v2;
  }

  return v2;
}

uint64_t sub_1CF057C00()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  type metadata accessor for Propagation.CreateItem(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 0;
  }

  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  type metadata accessor for Propagation.UpdateItem(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  type metadata accessor for Propagation.DeleteItem(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 2;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Ingestion.FetchItemMetadata(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 3;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Ingestion.DeleteFolderFromSnapshotIfEmpty(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 4;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Ingestion.ReSnapshotChildren(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 5;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Ingestion.FetchChildrenMetadata(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 6;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Materialization.MaterializeItem(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 7;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Materialization.EvictItem(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 8;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Materialization.EvictChildren(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 9;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Bouncing.BounceItem(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 10;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Ingestion.CollectCapturedContent(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 11;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Ingestion.DeleteRejectedItemInTree(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 12;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for DiskImport.MarkDirectorDiskImportAsDone(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 13;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Ingestion.FaultDirectoryInTree(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 14;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Ingestion.CancelFetchFileContent(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 15;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for DiskImport.DiskImportFinished(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 16;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for DiskImport.ContinueDiskImport(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 17;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Ingestion.UnfaultDirectoryInTree(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 18;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for DiskImport.UnfaultDirectoryAndChildren(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 19;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Ingestion.MergeItems(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 20;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Materialization.MaterializeParentHierarchy(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 21;
  }

  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  type metadata accessor for Propagation.CancelUpdate(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 22;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Ingestion.FetchContent(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 23;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Ingestion.FetchEventStream(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 24;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Materialization.MaterializeIgnoredItem(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 25;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UnblockEvictability(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 26;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.MarkPackagesAsEvictable(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 27;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.MarkPackagesAsSyncRoot(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 28;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UnblockIgnoreFolderProcessing(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 29;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.IgnoreChildrenOfIgnoredHierarchy(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 30;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.MarkDirectoriesAsLocked(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 31;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Ingestion.DeferredRescan(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 32;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Ingestion.MarkParentDeleted(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 33;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for PinningJob.PinItem(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 63;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for PinningJob.UnpinItem(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 64;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UnpauseReconciliations(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 34;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.RetriggerResolvedVendorExclusion(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 35;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.ResolveItemEvictability(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 36;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Conflict.PopulateConflicts(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 37;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for RemoteVersion.CleanRemoteVersions(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 38;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UpdateClosestSyncRoot(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 39;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.RescanParentDeletedChildren(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 40;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UnblockItemRejection(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 41;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UnblockDiskImportItems(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 42;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.RescanPendingSetFSSide(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 43;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.RescanPendingSetFPSide(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 44;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UnblockRemoteDeletions(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 45;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UnblockPathMatchingCycles(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 46;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UnblockChildrenDeletion(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 47;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.RescanRecTableForConflictsInGS(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 48;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UnmarkParentDeletedMergeSource(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 49;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.ReimportMissingJobs(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 50;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UnblockPathMatchingDuringImport(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 51;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UnblockThrottledReconciliations(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 52;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UnblockThrottledItemJobs(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 53;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UnblockThrottledJobs(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 54;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Ingestion.TrackTemporaryItem(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 55;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.RescanMaterializedSpeculativeItems(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 56;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Materialization.BackgroundMaterializeParentHierarchy(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 57;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.ReimportOnGitOrFolderPackage(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 58;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.FixupOutOfSyncFSBaseVersion(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 59;
  }

  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  type metadata accessor for Propagation.DeletionAcked(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 62;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.RemoveConflictStuckInTheWharf(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 60;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.FixupConflictInGSForDatalessItems(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 61;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.MarkAllUploadedItemAsPurgable(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 65;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.RefreshInheritedContentPolicy(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 66;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.FixContentPolicyInNonMaterializedFolders(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 67;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for PinningJob.RefreshChildPinStatus(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 68;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.PaceRefreshInheritedContentPolicy(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 69;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UnblockChildrenEviction(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 70;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UnblockMaterializingUnboundDatalessItems(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 71;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UnblockItemBlockedOnMissingBounceItem(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 72;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UnblockSnapshottingItemsWithoutJob(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 73;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Ingestion.UnlinkOldVersion(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 74;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Materialization.InjectOldVersion(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 75;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UnblockEvictionWithNotInterested(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 76;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UnblockDiskImportStatusOnFPSide(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 77;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UnblockDeletionsInIgnoredHierarchy(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 78;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.ExpireAllThrottles(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 79;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UnblockIgnoreWithDLV2Content(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 80;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UnblockMissedChildDeletion(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 81;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UpdateContentRankForMaterializedItems(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 82;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Ingestion.ReparentTrashedItemToTrashRoot(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 83;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UpdateContentRankAfterIndexDrop(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 84;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UpdateIndexableItems(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 85;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.UpdateDLV2ItemsWithRecursiveCount(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 86;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Maintenance.FixParentMaterializationStuckOnImport(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 87;
  }

  v6 = v2;
  v7 = v1;
  v8 = v4;
  v9 = v3;
  type metadata accessor for Ingestion.ReactToOwnershipChange(0, &v6);
  if (swift_dynamicCastMetatype())
  {
    return 88;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF058BD8()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_1CF058C1C();

    return v1 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF058C24(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3 & 0x7FFFFFFFFFFFFFFFLL;
  v5 = *(v4 + 0x60);
  v6 = *(v4 + 104);
  *(v4 + 96) = a1;
  *(v4 + 104) = a2;
  v7 = *(v4 + 112);
  *(v4 + 112) = a3;

  sub_1CF03D7A8(v5, v6, v7);
}

uint64_t sub_1CF058C94(void (*a1)(void))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    a1();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF058CE4()
{
  v1 = sub_1CF9E6068();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  result = fp_task_tracker_is_cancelled(*(*(v0 + 168) + 16));
  if ((result & 1) == 0 && (*(v0 + 152) & 1) == 0)
  {
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDEBBE40;
    (*(v2 + 56))(v10, 1, 1, v1);
    sub_1CEFCCBDC(v10, v7, &unk_1EC4BED20, &unk_1CFA00700);
    v13 = *(v2 + 48);
    if (v13(v7, 1, v1) == 1)
    {
      v14 = v12;
      sub_1CF9E6048();
      if (v13(v7, 1, v1) != 1)
      {
        sub_1CEFCCC44(v7, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v2 + 32))(v4, v7, v1);
    }

    sub_1CF9E7478();
    sub_1CF9E6038();
    (*(v2 + 8))(v4, v1);
    sub_1CEFCCC44(v10, &unk_1EC4BED20, &unk_1CFA00700);
    os_unfair_lock_lock((v0 + 208));
    if (!*(v0 + 216))
    {
      *(v0 + 216) = os_transaction_create();
    }

    os_unfair_lock_unlock((v0 + 208));
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    MEMORY[0x1D3869790](1, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CF058FF0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1CF059030(a1);
  return v2;
}

uint64_t sub_1CF059030(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1CF059074(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(*(v6 + 168) + 40))(a1, a2, *(v6 + 160));

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CF059140(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = sub_1CF045354();

  if (!v3)
  {
    return result;
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = sub_1CF0452C8(a1);
  v6 = *(*v3 + 120);

  v6(v4, v5);
}

uint64_t sub_1CF059264@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  os_unfair_lock_lock((v1 + v4));
  swift_endAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + *(*v1 + 88));
  return sub_1CF059330(v1);
}

uint64_t sub_1CF059330(uint64_t a1)
{
  v2 = *(*a1 + 96);
  swift_beginAccess();
  os_unfair_lock_unlock((a1 + v2));
  return swift_endAccess();
}

uint64_t sub_1CF059390()
{
  MEMORY[0x1D386CEF0](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF0593C8(uint64_t a1)
{
  v2 = type metadata accessor for Signpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF059424()
{
  v1 = v0;
  v2 = sub_1CF9E5CF8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 48) & 1) == 0)
  {
    v8 = *(v1 + 40);
    v150 = 0x6574726174732820;
    v151 = 0xEA00000000002064;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v10 = v9;
    result = (*(v3 + 8))(v5, v2);
    v12 = v10 * 1000000000.0;
    if (COERCE__INT64(fabs(v10 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v12 > -9.22337204e18)
    {
      if (v12 < 9.22337204e18)
      {
        v13 = sub_1CF065A84(v12, v8);
        v15 = v14;
        MEMORY[0x1D3868CC0](v13);
        v15, v16, v17, v18, v19, v20, v21, v22;
        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
        v6 = v150;
        v7 = v151;
        goto LABEL_7;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_31;
  }

  v6 = 0;
  v7 = 0xE000000000000000;
LABEL_7:
  v150 = 0;
  v151 = 0xE000000000000000;
  sub_1CF9E7948();
  v151, v23, v24, v25, v26, v27, v28, v29;
  v153 = 60;
  v154 = 0xE100000000000000;
  swift_beginAccess();
  sub_1CEFCCBDC(v1 + 56, &v150, &unk_1EC4C1BE0, &unk_1CF9FD400);
  v30 = v152;
  sub_1CEFCCC44(&v150, &unk_1EC4C1BE0, &unk_1CF9FD400);
  if (!v30)
  {
    v38 = 0xE600000000000000;
    v37 = 0x3E77656E3C4ALL;
LABEL_11:
    MEMORY[0x1D3868CC0](v37, v38);
    v38, v39, v40, v41, v42, v43, v44, v45;
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v46 = *(v1 + 96);
    v47 = *(v1 + 104);
    v48 = *(v1 + 112);
    if (v48 <= 1)
    {
      if (*(v1 + 112))
      {
        v52 = 548376546;
        if (v46)
        {

          v52 = 548966370;
        }
      }

      else
      {

        v52 = 548638690;
      }

      v50 = 0xA400000000000000;
      goto LABEL_28;
    }

    if (v48 == 2)
    {

      v50 = 0xA700000000000000;
      v51 = -273246494;
    }

    else
    {
      if (v48 != 3)
      {
        if (v46 | v47)
        {
          v52 = 545627362;
        }

        else
        {
          v52 = 0x208FB8EFB49CE2;
        }

        if (v46 | v47)
        {
          v50 = 0xA400000000000000;
        }

        else
        {
          v50 = 0xA700000000000000;
        }

        goto LABEL_28;
      }

      v49 = v46;
      v50 = 0xA700000000000000;
      v51 = -272858910;
    }

    v52 = v51 | 0x208FB800000000;
LABEL_28:
    MEMORY[0x1D3868CC0](v52, v50);
    v50, v53, v54, v55, v56, v57, v58, v59;
    sub_1CF03D7A8(v46, v47, v48);
    MEMORY[0x1D3868CC0](v6, v7);
    v7, v60, v61, v62, v63, v64, v65, v66;
    v67 = MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v150 = (*(*v1 + 176))(v67);
    v151 = v68;
    v69 = MEMORY[0x1D3868CC0](40, 0xE100000000000000);
    v70 = (*(*v1 + 456))(v69);
    v72 = v71;
    MEMORY[0x1D3868CC0](v70);
    v72, v73, v74, v75, v76, v77, v78, v79;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v80 = v151;
    MEMORY[0x1D3868CC0](v150, v151);
    v80, v81, v82, v83, v84, v85, v86, v87;
    MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
    v88 = sub_1CF0572BC(*(v1 + 136), sub_1CF68CA84, sub_1CF66DD74, MEMORY[0x1E69E6810]);
    v90 = v89;
    MEMORY[0x1D3868CC0](v88);
    v90, v91, v92, v93, v94, v95, v96, v97;
    v99 = v153;
    v98 = v154;
    v150 = 0x3A646568637320;
    v151 = 0xE700000000000000;
    v153 = sub_1CF057488(*(v1 + 120));
    v154 = v100;
    MEMORY[0x1D3868CC0](35, 0xE100000000000000);
    v101 = sub_1CF9E6F58();
    v103 = v102;
    MEMORY[0x1D3868CC0](v101);
    v103, v104, v105, v106, v107, v108, v109, v110;
    v111 = v154;
    MEMORY[0x1D3868CC0](v153, v154);
    v111, v112, v113, v114, v115, v116, v117, v118;
    v119 = *(v1 + 96);
    v120 = *(v1 + 104);
    v121 = *(v1 + 112);
    sub_1CF03C530(v119, v120, v121);
    v122 = sub_1CF0534E8(v119, v120, v121);
    v124 = v123;
    sub_1CF03D7A8(v119, v120, v121);
    MEMORY[0x1D3868CC0](v122, v124);
    v124, v125, v126, v127, v128, v129, v130, v131;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v132 = v150;
    v133 = v151;
    v150 = v99;
    v151 = v98;

    MEMORY[0x1D3868CC0](v132, v133);
    v98, v134, v135, v136, v137, v138, v139, v140;
    v133, v141, v142, v143, v144, v145, v146, v147;
    return v150;
  }

  v148 = 0;
  v149 = 0xE000000000000000;
  result = sub_1CEFCCBDC(v1 + 56, &v150, &unk_1EC4C1BE0, &unk_1CF9FD400);
  v31 = v152;
  if (v152)
  {
    v32 = __swift_project_boxed_opaque_existential_1(&v150, v152);
    v33 = *(v31 - 8);
    v34 = MEMORY[0x1EEE9AC00](v32);
    v36 = &v148 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v36, v34);
    sub_1CF9E7FE8();
    (*(v33 + 8))(v36, v31);
    __swift_destroy_boxed_opaque_existential_1(&v150);
    v37 = v148;
    v38 = v149;
    goto LABEL_11;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1CF059AB4()
{
  if (*(v0 + 8))
  {
    v1 = 20550;
  }

  else
  {
    v1 = 21318;
  }

  MEMORY[0x1D3868CC0](v1, 0xE200000000000000);
  0xE200000000000000, v2, v3, v4, v5, v6, v7, v8;
  sub_1CF056E98();
  v9 = sub_1CF9E6B28();
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  return 0;
}

uint64_t *sub_1CF059B48()
{
  sub_1CF04ADA4();
  v1 = *(*v0 + 576);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  return v0;
}

uint64_t sub_1CF059BFC(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF059C70()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_1CF042760();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF059CC8()
{
  if (*v0)
  {
    return 20550;
  }

  else
  {
    return 21318;
  }
}

uint64_t sub_1CF059CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v13[0] = a4;
  v13[1] = a5;
  v13[2] = a6;
  v13[3] = a7;
  v10 = *(type metadata accessor for PersistenceTrigger.AffectedItemJobs(0, v13) + 56);
  swift_getAssociatedTypeWitness();
  v11 = sub_1CF9E75D8();
  return (*(*(v11 - 8) + 32))(&a8[v10], a3, v11);
}

uint64_t sub_1CF059DA4()
{
  sub_1CF064568();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for JobCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xA8)
  {
    goto LABEL_17;
  }

  if (a2 + 88 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 88) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 88;
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

      return (*a1 | (v4 << 8)) - 88;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 88;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x59;
  v8 = v6 - 89;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1CF059E68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CF9E7F98();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1CF059ECC(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = *(AssociatedTypeWitness - 8);
  v94 = v84;
  v93 = *(v84 + 84);
  if (v93)
  {
    v4 = v93 - 1;
  }

  else
  {
    v4 = 0;
  }

  v74 = swift_getAssociatedTypeWitness();
  v81 = *(v74 - 8);
  v91 = v81;
  v5 = *(v81 + 84);
  v71 = swift_getAssociatedTypeWitness();
  v87 = *(v71 - 8);
  v6 = *(v87 + 84);
  v76 = v5;
  v70 = v6;
  if (v5 > v6)
  {
    v6 = v5;
  }

  v73 = v6;
  if (v6 <= 0x7FFFFFFE)
  {
    v6 = 2147483646;
  }

  v77 = v6;
  v7 = v6 - 1;
  if (v4 > v7)
  {
    v7 = v4;
  }

  v79 = v4;
  v80 = v7;
  if (v7 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  v95 = v7;
  v75 = swift_getAssociatedTypeWitness();
  v86 = *(v75 - 8);
  v92 = *(v86 + 84);
  if (v92)
  {
    v8 = v92 - 1;
  }

  else
  {
    v8 = 0;
  }

  v69 = swift_getAssociatedTypeWitness();
  v83 = *(v69 - 8);
  v9 = *(v83 + 84);
  v10 = 0;
  v68 = swift_getAssociatedTypeWitness();
  v11 = *(v68 - 8);
  v12 = *(v11 + 84);
  v13 = *(v84 + 64);
  v14 = v81;
  v72 = v9;
  if (v9 <= v12)
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = v15;
  }

  v82 = v16;
  v17 = v16 - 1;
  v85 = v8;
  if (v8 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v8;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v87 + 80);
  v67 = *(v68 - 8);
  v21 = *(v11 + 80);
  v22 = *(v14 + 64);
  v23 = *(v83 + 64);
  if (v19 <= v95)
  {
    v24 = v95;
  }

  else
  {
    v24 = v19;
  }

  if (v24 <= 0x7FFFFFFF)
  {
    v25 = 0x7FFFFFFF;
  }

  else
  {
    v25 = v24;
  }

  if (v25 - 1 < v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v25 - 1;
  }

  if (v93)
  {
    v27 = v13;
  }

  else
  {
    v27 = v13 + 1;
  }

  v28 = *(v91 + 80) & 0xF8 | v20;
  v29 = v28 | 7u;
  v30 = *(v83 + 80) & 0xF8 | v21 | 7;
  v31 = v30 | *(v86 + 80) & 0xF8;
  v32 = v28 | *(v94 + 80) & 0xF8 | v31;
  v33 = v22 + 7;
  v34 = ((((*(v87 + 64) + ((v20 + 8 + ((v22 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v20) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v35 = v27 + 7;
  v36 = v29 + 9;
  v37 = ((((((((v29 + 9 + ((((v27 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v29) + v34 + 34) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v92)
  {
    v38 = *(v86 + 64);
  }

  else
  {
    v38 = *(v86 + 64) + 1;
  }

  v39 = v23 + 7;
  v40 = ((((*(*(v68 - 8) + 64) + ((v21 + 8 + ((v23 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v21) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v41 = v38 + 7;
  v42 = (((v38 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = v30 + 9;
  v44 = ((((((((v30 + 9 + v42) & ~v30) + v40 + 34) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v45 = (((((v44 + ((v37 + v31) & ~v31) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v46 = ((v32 + 9 + ((((v45 + ((((v32 + 9) | v32) + v45 + 8) & ~v32) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v32) + v45 + 8;
  if (a3 > v26)
  {
    if (v46 <= 3)
    {
      v47 = ((a3 - v26 + ~(-1 << (8 * v46))) >> (8 * v46)) + 1;
      if (HIWORD(v47))
      {
        v10 = 4;
      }

      else
      {
        if (v47 < 0x100)
        {
          v48 = 1;
        }

        else
        {
          v48 = 2;
        }

        if (v47 >= 2)
        {
          v10 = v48;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  if (v26 < a2)
  {
    v49 = ~v26 + a2;
    if (v46 >= 4)
    {
      v50 = a1;
      bzero(a1, v46);
      *a1 = v49;
      v51 = 1;
      if (v10 > 1)
      {
        goto LABEL_56;
      }

      goto LABEL_88;
    }

    v51 = (v49 >> (8 * v46)) + 1;
    v50 = a1;
    if (v46)
    {
      v53 = v49 & ~(-1 << (8 * v46));
      bzero(a1, v46);
      if (v46 != 3)
      {
        if (v46 == 2)
        {
          *a1 = v53;
          if (v10 > 1)
          {
            goto LABEL_56;
          }
        }

        else
        {
          *a1 = v49;
          if (v10 > 1)
          {
LABEL_56:
            if (v10 == 2)
            {
              *&v50[v46] = v51;
            }

            else
            {
              *&v50[v46] = v51;
            }

            return;
          }
        }

LABEL_88:
        if (v10)
        {
          v50[v46] = v51;
        }

        return;
      }

      *a1 = v53;
      a1[2] = BYTE2(v53);
    }

    if (v10 > 1)
    {
      goto LABEL_56;
    }

    goto LABEL_88;
  }

  if (v10 > 1)
  {
    v52 = a1;
    if (v10 != 2)
    {
      *&a1[v46] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_70;
    }

    *&a1[v46] = 0;
  }

  else
  {
    v52 = a1;
    if (v10)
    {
      a1[v46] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_70;
    }
  }

  if (!a2)
  {
    return;
  }

LABEL_70:
  v54 = (&v52[v32 + 9] & ~v32);
  if (v80 == v25)
  {
    v55 = ~v29;
    if (v95 < a2)
    {
      v56 = (((((v34 + ((v36 + (((v35 & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v55) + 34) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8;
      v34 = (v56 + 8);
      if (v56 == -8)
      {
        return;
      }

      v57 = ~v95 + a2;
LABEL_102:
      bzero(v54, v34);
      *v54 = v57;
      return;
    }

    if (v79 == v95)
    {
      v60 = *(v94 + 56);
      v61 = a2 + 1;
      v62 = v54;
      v12 = v93;
      v63 = AssociatedTypeWitness;
LABEL_113:

      v60(v62, v61, v12, v63);
      return;
    }

    v54 = ((v36 + ((((v54 + v35) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v55);
    v57 = a2 - v77;
    if (a2 >= v77)
    {
      if (!v34)
      {
        return;
      }

      goto LABEL_102;
    }

    v61 = a2 + 1;
    v12 = v76;
    if (v76 == v77)
    {
      v60 = *(v91 + 56);
      v62 = v54;
      v63 = v74;
      goto LABEL_113;
    }

    v66 = ((v54 + v33) & 0xFFFFFFFFFFFFFFF8);
    if (v73 > 0x7FFFFFFE)
    {
      v60 = *(v87 + 56);
      v62 = (v66 + v20 + 8) & ~v20;
      v12 = v70;
      v63 = v71;
      goto LABEL_113;
    }

LABEL_109:
    if (a2 > 0x7FFFFFFD)
    {
      *v66 = 0;
      *v66 = a2 - 2147483646;
    }

    else
    {
      *v66 = v61;
    }

    return;
  }

  v54 = ((v54 + v31 + v37) & ~v31);
  if (v18 != v25)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v64 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v64 = a2 - 1;
    }

    *(((v54 + v44) & 0xFFFFFFFFFFFFFFF8) + 8) = v64;
    return;
  }

  v58 = ~v30;
  if (v19 < a2)
  {
    v59 = (((((v40 + ((v43 + (((v41 & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v58) + 34) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8;
    v34 = (v59 + 8);
    if (v59 == -8)
    {
      return;
    }

    v57 = ~v19 + a2;
    goto LABEL_102;
  }

  if (v85 == v19)
  {
    v60 = *(v86 + 56);
    v61 = a2 + 1;
    v62 = v54;
    v12 = v92;
    v63 = v75;
    goto LABEL_113;
  }

  v65 = ((v43 + ((((v54 + v41) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v58);
  if (a2 < v82)
  {
    v61 = a2 + 1;
    if (v72 == v82)
    {
      v60 = *(v83 + 56);
      v62 = v65;
      v12 = v72;
      v63 = v69;
      goto LABEL_113;
    }

    v66 = ((v65 + v39) & 0xFFFFFFFFFFFFFFF8);
    if (v15 > 0x7FFFFFFE)
    {
      v63 = v68;
      v60 = *(v67 + 56);
      v62 = (v66 + v21 + 8) & ~v21;
      goto LABEL_113;
    }

    goto LABEL_109;
  }

  if (v40)
  {
    bzero(v65, v40);
    *v65 = a2 - v82;
  }
}

uint64_t sub_1CF05A838(int a1, uint64_t a2, void *a3)
{
  v669 = a2;
  v706 = a1;
  v4 = a3[5];
  v5 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for ItemState(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  v666 = sub_1CF9E75D8();
  v665 = *(v666 - 8);
  MEMORY[0x1EEE9AC00](v666);
  v655 = &v637 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v663 = &v637 - v11;
  v675 = v8;
  v674 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v652 = &v637 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v664 = &v637 - v15;
  v16 = a3[2];
  v17 = a3[4];
  v19 = type metadata accessor for FileTreeError(255, v16, v17, v18);
  v641 = sub_1CF9E75D8();
  v640 = *(v641 - 8);
  MEMORY[0x1EEE9AC00](v641);
  v644 = &v637 - v20;
  v646 = v19;
  v645 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v639 = &v637 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v642 = &v637 - v24;
  v25 = swift_getAssociatedTypeWitness();
  v722 = swift_getAssociatedConformanceWitness();
  v27 = type metadata accessor for ItemState(255, v25, v722, v26);
  v649 = sub_1CF9E75D8();
  v648 = *(v649 - 8);
  MEMORY[0x1EEE9AC00](v649);
  v647 = &v637 - v28;
  v654 = v27;
  v651 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v650 = &v637 - v30;
  v709 = type metadata accessor for SnapshotItem(0, v16, v17, v31);
  v707 = *(v709 - 8);
  MEMORY[0x1EEE9AC00](v709);
  v693 = &v637 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v700 = &v637 - v34;
  v35.i64[0] = v16;
  v35.i64[1] = v5;
  v36.i64[0] = v17;
  v36.i64[1] = v4;
  v714 = v36;
  v729 = v35;
  v730 = v36;
  v713 = v35;
  v37 = type metadata accessor for PersistenceTrigger.AffectedReconciliation(255, &v729);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v719 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v703 = &v637 - v38;
  v720 = v37;
  v708 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v705 = &v637 - v40;
  v657 = v5;
  v656 = v4;
  v42 = type metadata accessor for SnapshotItem(0, v5, v4, v41);
  v715 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v692 = &v637 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v660 = &v637 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v661 = &v637 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v659 = &v637 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v643 = &v637 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v670 = &v637 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v662 = &v637 - v55;
  v712 = v56;
  v702 = sub_1CF9E75D8();
  v711 = *(v702 - 8);
  MEMORY[0x1EEE9AC00](v702);
  v672 = &v637 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v673 = &v637 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v671 = &v637 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v653 = &v637 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v694 = &v637 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v676 = &v637 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v704 = &v637 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v701 = &v637 - v71;
  *(&v723 + 1) = AssociatedTypeWitness;
  v717 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v72);
  v699 = &v637 - v73;
  v74 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v75);
  v691 = &v637 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77);
  v690 = &v637 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v688 = &v637 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v687 = &v637 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v696 = &v637 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v682 = &v637 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v681 = &v637 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v685 = &v637 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v678 = &v637 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v683 = &v637 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v695 = &v637 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v677 = &v637 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v680 = &v637 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v679 = &v637 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v684 = &v637 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v689 = &v637 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v109 = &v637 - v108;
  MEMORY[0x1EEE9AC00](v110);
  v686 = &v637 - v111;
  MEMORY[0x1EEE9AC00](v112);
  v698 = &v637 - v113;
  MEMORY[0x1EEE9AC00](v114);
  v116 = &v637 - v115;
  MEMORY[0x1EEE9AC00](v117);
  v119 = &v637 - v118;
  MEMORY[0x1EEE9AC00](v120);
  v710 = &v637 - v121;
  MEMORY[0x1EEE9AC00](v122);
  v124 = &v637 - v123;
  v728 = (&v637 - v123);
  *&v723 = v25;
  v718 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v697 = &v637 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v127);
  v668 = &v637 - v128;
  MEMORY[0x1EEE9AC00](v129);
  v638 = &v637 - v130;
  MEMORY[0x1EEE9AC00](v131);
  v133 = &v637 - v132;
  MEMORY[0x1EEE9AC00](v134);
  v716.i64[0] = &v637 - v135;
  MEMORY[0x1EEE9AC00](v136);
  v667 = &v637 - v137;
  MEMORY[0x1EEE9AC00](v138);
  v140 = &v637 - v139;
  MEMORY[0x1EEE9AC00](v141);
  v658 = &v637 - v142;
  v144 = MEMORY[0x1EEE9AC00](v143);
  v146 = &v637 - v145;
  v724 = v74;
  v147 = *(v74 + 16);
  v147(v124, v725.i64[0], a3, v144);
  v727 = a3;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v148 = v710;
      (v147)(v710, v728, v727);
      v149 = v723;
      v725.i64[0] = *(swift_getTupleTypeMetadata2() + 48);
      v150 = v718;
      v151 = v716.i64[0];
      v718[4](v716.i64[0], v148, v149.i64[0]);
      v152 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      swift_allocObject();
      v153 = sub_1CF9E6D68();
      v154 = *(v152 + 48);
      *v155 = 2;
      v156 = v155 + v154;
      v729 = v149;
      v730.i64[0] = v722;
      v730.i64[1] = AssociatedConformanceWitness;
      type metadata accessor for ReconciliationID(255, &v729);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
      v157 = &v156[*(swift_getTupleTypeMetadata2() + 48)];
      v150[2](v156, v151, v149.i64[0]);
      swift_storeEnumTagMultiPayload();
      *v157 = 0;
      *(v157 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v158 = sub_1CF045898(v153, v152);
      (v150[1])(v151, v149.i64[0]);
      (*(v717 + 8))(&v148[v725.i64[0]], v149.i64[1]);
      goto LABEL_63;
    case 3u:
      v219 = v727;
      v220 = v728;
      (v147)(v119, v728, v727);
      v221 = *(&v723 + 1);
      v729 = v723;
      v730.i64[0] = v722;
      v730.i64[1] = AssociatedConformanceWitness;
      v162 = type metadata accessor for ReconciliationID(0, &v729);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_53;
      }

      v222 = v717;
      v223 = v699;
      (*(v717 + 32))(v699, v119, v221);
      v224 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      swift_allocObject();
      v225 = sub_1CF9E6D68();
      v227 = v226 + *(v224 + 48);
      *v226 = 2;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
      v228 = &v227[*(swift_getTupleTypeMetadata2() + 48)];
      (*(v222 + 16))(v227, v223, v221);
      swift_storeEnumTagMultiPayload();
      *v228 = 0;
      *(v228 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v158 = sub_1CF045898(v225, v224);
      (*(v222 + 8))(v223, v221);
      (*(v724 + 8))(v220, v219);
      return v158;
    case 5u:
      v189 = v689;
      v160 = v727;
      (v147)(v689, v728, v727);
      v190 = *(&v723 + 1);
      v729 = v723;
      v730.i64[0] = v722;
      v730.i64[1] = AssociatedConformanceWitness;
      v191 = type metadata accessor for ReconciliationID(255, &v729);
      v192 = *(swift_getTupleTypeMetadata2() + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v193 = v717;
        v194 = v699;
        (*(v717 + 32))(v699, &v189[v192], v190);
        v195 = TupleTypeMetadata2;
        sub_1CF9E7FA8();
        swift_allocObject();
        v196 = sub_1CF9E6D68();
        v197 = *(v195 + 48);
        *v198 = 16;
        (*(v193 + 16))(&v198[v197], v194, v190);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v158 = sub_1CF045898(v196, v195);
        (*(v193 + 8))(v194, v190);
        (*(*(v191 - 8) + 8))(v189, v191);
        goto LABEL_140;
      }

      v306 = *(*(v191 - 8) + 8);
      v306(&v189[v192], v191);
      v306(v189, v191);
      goto LABEL_61;
    case 6u:
      v271 = v698;
      v248 = v727;
      (v147)(v698, v728, v727);
      v272 = v709;
      v273 = sub_1CF9E75D8();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v275 = *(TupleTypeMetadata3 + 48);
      v276 = *&v271[*(TupleTypeMetadata3 + 64)];
      v277 = v707;
      if ((*(v707 + 48))(v271, 1, v272) == 1)
      {
        v278 = *(*(v273 - 8) + 8);
        v278(&v271[v275], v273);
        v278(v271, v273);
        goto LABEL_61;
      }

      v725.i64[0] = v275;
      v325 = *(v277 + 32);
      v326 = v700;
      v325(v700, v271, v272);
      v734 = sub_1CF9E6DA8();
      v327 = v720;
      v328 = v723;
      v329 = AssociatedConformanceWitness;
      v330 = v703;
      if ((v276 & 2) != 0)
      {
        v331 = v705;
        v718[2](v705, &v326[*(v272 + 36)], v723);
        v729.i64[0] = v328;
        v729.i64[1] = *(&v723 + 1);
        v730.i64[0] = v722;
        v730.i64[1] = v329;
        type metadata accessor for ReconciliationID(0, &v729);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v332 = *(TupleTypeMetadata2 + 48);
        *v330 = 4;
        (*(v708 + 32))(&v330[v332], v331, v327);
        sub_1CF9E6E58();
        sub_1CF9E6E18();
        v326 = v700;
      }

      if ((v276 & 3) != 0)
      {
        v719 = v718[2];
        v333 = v705;
        (v719)(v705, v326, v328);
        v729.i64[0] = v328;
        v729.i64[1] = *(&v723 + 1);
        v730.i64[0] = v722;
        v730.i64[1] = v329;
        type metadata accessor for ReconciliationID(0, &v729);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v334 = TupleTypeMetadata2;
        v335 = *(TupleTypeMetadata2 + 48);
        *v330 = 1024;
        *(&v723 + 1) = *(v708 + 32);
        (*(&v723 + 1))(&v330[v335], v333, v327);
        v722 = sub_1CF9E6E58();
        sub_1CF9E6E18();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
        v336 = swift_getTupleTypeMetadata2();
        v337 = v328;
        v338 = &v333[*(v336 + 48)];
        (v719)(v333, &v700[*(v709 + 36)], v337);
        v272 = v709;
        swift_storeEnumTagMultiPayload();
        v339 = &v700[*(v272 + 44)];
        v340 = *(v339 + 1);
        *v338 = *v339;
        *(v338 + 1) = v340;
        swift_storeEnumTagMultiPayload();
        v341 = *(v334 + 48);
        *v330 = 1024;
        (*(&v723 + 1))(&v330[v341], v333, v327);
        v248 = v727;

        sub_1CF9E6E18();
        v326 = v700;
      }

      (*(v707 + 8))(v326, v272);
      v158 = v734;
      (*(*(v273 - 8) + 8))(&v698[v725.i64[0]], v273);
      goto LABEL_91;
    case 7u:
      (v147)(v116, v728, v727);
      v279 = v702;
      v280 = swift_getTupleTypeMetadata3();
      v281 = *(v280 + 48);
      v282 = *&v116[*(v280 + 64)];
      v283 = v711;
      v284 = *(v711 + 32);
      v285 = v701;
      v284(v701, v116, v279);
      v286 = &v116[v281];
      v287 = v704;
      v284(v704, v286, v279);
      v288 = TupleTypeMetadata2;
      v734 = sub_1CF9E6DA8();
      v289 = *(v283 + 16);
      v719 = v282;
      v416 = (v282 & 3) == 0;
      v290 = v712;
      v291 = v715;
      if (!v416)
      {
        v292 = v676;
        (v289)(v676, v285, v279);
        if ((*(v291 + 48))(v292, 1, v290) == 1)
        {
          (*(v711 + 8))(v292, v279);
        }

        else
        {
          v718 = v289;
          v382 = v662;
          (*(v291 + 32))(v662, v292, v290);
          WitnessTable = swift_getWitnessTable();
          sub_1CF06D940(v290, WitnessTable, &v729);
          v384 = *(&v723 + 1);
          v385 = v703;
          v386 = v705;
          if (v729.u8[0] == 1)
          {
            v729 = v723;
            v730.i64[0] = v722;
            v730.i64[1] = AssociatedConformanceWitness;
            v387 = type metadata accessor for ReconciliationID(255, &v729);
            __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
            v388 = &v386[*(swift_getTupleTypeMetadata2() + 48)];
            v716.i64[0] = *(v717 + 16);
            (v716.i64[0])(v386, v382, v384);
            v725.i64[0] = v387;
            swift_storeEnumTagMultiPayload();
            *v388 = 0;
            *(v388 + 1) = 0;
            v389 = v720;
            swift_storeEnumTagMultiPayload();
            v390 = *(v288 + 48);
            *v385 = 2;
            v714.i64[0] = *(v708 + 32);
            (v714.i64[0])(&v385[v390], v386, v389);
            sub_1CF9E6E58();
            sub_1CF9E6E18();
            if (v706)
            {
              (v716.i64[0])(v386, &v382[*(v712 + 36)], v384);
              swift_storeEnumTagMultiPayload();
              v391 = v720;
              swift_storeEnumTagMultiPayload();
              v392 = *(v288 + 48);
              *v385 = 2;
              (v714.i64[0])(&v385[v392], v386, v391);
              sub_1CF9E6E18();
            }
          }

          v729.i64[0] = v723;
          v729.i64[1] = v384;
          v730.i64[0] = v722;
          v730.i64[1] = AssociatedConformanceWitness;
          type metadata accessor for ReconciliationID(255, &v729);
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
          v393 = &v386[*(swift_getTupleTypeMetadata2() + 48)];
          v394 = v712;
          (*(v717 + 16))(v386, &v382[*(v712 + 36)], v384);
          swift_storeEnumTagMultiPayload();
          v395 = &v382[*(v394 + 44)];
          v396 = *(v395 + 1);
          *v393 = *v395;
          *(v393 + 1) = v396;
          v397 = v720;
          swift_storeEnumTagMultiPayload();
          v398 = *(v288 + 48);
          *v385 = 1024;
          (*(v708 + 32))(&v385[v398], v386, v397);
          sub_1CF9E6E58();

          sub_1CF9E6E18();
          v291 = v715;
          (*(v715 + 8))(v382, v394);
          v290 = v394;
          v279 = v702;
          v287 = v704;
          v289 = v718;
        }
      }

      v399 = v694;
      (v289)(v694, v287, v279);
      v725.i64[0] = *(v291 + 48);
      if ((v725.i64[0])(v399, 1, v290) == 1)
      {
        (*(v711 + 8))(v399, v279);
        goto LABEL_112;
      }

      v400 = *(v291 + 32);
      v401 = v670;
      v400(v670, v399, v290);
      if ((v706 & 1) != 0 && (v719 & 0x12) != 0)
      {
        v402 = v289;
        v403 = swift_getWitnessTable();
        sub_1CF06D940(v290, v403, &v729);
        if (v729.u8[0] == 2 || (sub_1CF937C7C(v290, v403) & 1) != 0)
        {
          (*(v291 + 8))(v401, v290);
        }

        else
        {
          v567 = *(v717 + 16);
          v718 = *(v290 + 36);
          v568 = v705;
          v569 = *(&v723 + 1);
          v716.i64[0] = v717 + 16;
          v714.i64[0] = v567;
          v567(v705, v718 + v401, *(&v723 + 1));
          v729.i64[0] = v723;
          v729.i64[1] = v569;
          v730.i64[0] = v722;
          v730.i64[1] = AssociatedConformanceWitness;
          v710 = type metadata accessor for ReconciliationID(0, &v729);
          swift_storeEnumTagMultiPayload();
          v570 = v720;
          swift_storeEnumTagMultiPayload();
          v571 = *(TupleTypeMetadata2 + 48);
          v572 = v703;
          *v703 = 16;
          v573 = *(v708 + 32);
          v574 = v568;
          v290 = v712;
          v713.i64[0] = v708 + 32;
          v709 = v573;
          v573(&v572[v571], v574, v570);
          v707 = sub_1CF9E6E58();
          sub_1CF9E6E18();
          v575 = v653;
          v576 = v702;
          (v402)(v653, v701, v702);
          if ((v725.i64[0])(v575, 1, v290) == 1)
          {
            v291 = v715;
            (*(v715 + 8))(v401, v290);
            (*(v711 + 8))(v575, v576);
            v288 = TupleTypeMetadata2;
            v279 = v576;
            goto LABEL_110;
          }

          v605 = v643;
          v400(v643, v575, v290);
          v606 = *(v290 + 36);
          v607 = *(&v723 + 1);
          if ((sub_1CF9E6868() & 1) == 0)
          {
            v621 = v607;
            v622 = v705;
            (v714.i64[0])(v705, &v605[v606], v621);
            swift_storeEnumTagMultiPayload();
            v623 = v605;
            v624 = v720;
            swift_storeEnumTagMultiPayload();
            v288 = TupleTypeMetadata2;
            v625 = *(TupleTypeMetadata2 + 48);
            v626 = v703;
            *v703 = 16;
            (v709)(v626 + v625, v622, v624);
            sub_1CF9E6E18();
            v291 = v715;
            v627 = *(v715 + 8);
            v627(v623, v290);
            v627(v401, v290);
            goto LABEL_109;
          }

          v291 = v715;
          v608 = *(v715 + 8);
          v608(v605, v290);
          v608(v401, v290);
        }

        v288 = TupleTypeMetadata2;
LABEL_109:
        v279 = v702;
LABEL_110:
        v287 = v704;
        v289 = v402;
        goto LABEL_112;
      }

      (*(v291 + 8))(v401, v290);
      v288 = TupleTypeMetadata2;
      v279 = v702;
LABEL_112:
      if ((v719 & 2) != 0)
      {
        v408 = v671;
        v718 = v289;
        (v289)();
        if ((v725.i64[0])(v408, 1, v290) == 1)
        {
          (*(v711 + 8))(v408, v279);
          v409 = v720;
          v410 = v703;
          v411 = v290;
          v412 = v705;
        }

        else
        {
          v427 = v659;
          (*(v291 + 32))(v659, v408, v290);
          v428 = &v427[*(v290 + 36)];
          v411 = v290;
          v412 = v705;
          v429 = *(&v723 + 1);
          (*(v717 + 16))(v705, v428, *(&v723 + 1));
          v729.i64[0] = v723;
          v729.i64[1] = v429;
          v730.i64[0] = v722;
          v730.i64[1] = AssociatedConformanceWitness;
          type metadata accessor for ReconciliationID(0, &v729);
          swift_storeEnumTagMultiPayload();
          v409 = v720;
          swift_storeEnumTagMultiPayload();
          v430 = *(v288 + 48);
          v431 = v291;
          v410 = v703;
          *v703 = 12;
          (*(v708 + 32))(&v410[v430], v412, v409);
          sub_1CF9E6E58();
          sub_1CF9E6E18();
          v432 = v431;
          v279 = v702;
          (*(v432 + 8))(v427, v411);
        }

        v433 = v673;
        v434 = v701;
        (v718)(v673, v701, v279);
        if ((v725.i64[0])(v433, 1, v411) != 1)
        {
          v436 = v715;
          v437 = v661;
          (*(v715 + 32))(v661, v433, v411);
          v438 = *(&v723 + 1);
          (*(v717 + 16))(v412, &v437[*(v411 + 36)], *(&v723 + 1));
          v729.i64[0] = v723;
          v729.i64[1] = v438;
          v730.i64[0] = v722;
          v730.i64[1] = AssociatedConformanceWitness;
          type metadata accessor for ReconciliationID(0, &v729);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          v439 = *(v288 + 48);
          *v410 = 8;
          (*(v708 + 32))(&v410[v439], v412, v409);
          sub_1CF9E6E58();
          sub_1CF9E6E18();
          (*(v436 + 8))(v437, v411);
          v406 = *(v711 + 8);
          v406(v704, v279);
          v435 = v434;
          goto LABEL_136;
        }

        v404 = v433;
        v406 = *(v711 + 8);
        v406(v704, v279);
        v407 = v434;
LABEL_134:
        v406(v407, v279);
        v435 = v404;
LABEL_136:
        v406(v435, v279);
        v426 = v728;
        goto LABEL_137;
      }

      v404 = v672;
      (v289)(v672, v287, v279);
      if ((v725.i64[0])(v404, 1, v290) == 1)
      {
        v405 = v287;
        v406 = *(v711 + 8);
        v406(v405, v279);
        v407 = v701;
        goto LABEL_134;
      }

      v414 = v660;
      (*(v291 + 32))(v660, v404, v290);
      v415 = swift_getWitnessTable();
      sub_1CF06D940(v290, v415, &v729);
      v416 = (v719 & 0x4000) != 0 && v729.u8[0] == 1;
      v417 = v719 & 0xFFFFFFFFFFFFBFFDLL;
      if (!v416)
      {
        v417 = v719;
      }

      if ((v417 & 0x10800) != 0)
      {
        v417 &= 0xFFFFFFFFFFFEF7FDLL;
      }

      v418 = v728;
      v419 = v701;
      if (v417)
      {
        v420 = v705;
        v421 = *(&v723 + 1);
        (*(v717 + 16))(v705, &v414[*(v290 + 36)], *(&v723 + 1));
        v729.i64[0] = v723;
        v729.i64[1] = v421;
        v730.i64[0] = v722;
        v730.i64[1] = AssociatedConformanceWitness;
        type metadata accessor for ReconciliationID(0, &v729);
        swift_storeEnumTagMultiPayload();
        v422 = v720;
        swift_storeEnumTagMultiPayload();
        v423 = *(v288 + 48);
        v424 = v703;
        *v703 = 8;
        (*(v708 + 32))(&v424[v423], v420, v422);
        sub_1CF9E6E58();
        sub_1CF9E6E18();
      }

      (*(v291 + 8))(v414, v290);
      v425 = *(v711 + 8);
      v425(v704, v279);
      v425(v419, v279);
      v426 = v418;
LABEL_137:
      v158 = v734;
      (*(v724 + 8))(v426, v727);
      return v158;
    case 8u:
      v199 = v710;
      v160 = v727;
      (v147)(v710, v728, v727);
      v200 = v707;
      v201 = v693;
      v202 = v709;
      (*(v707 + 32))(v693, v199, v709);
      v203 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      swift_allocObject();
      v204 = sub_1CF9E6D68();
      v205 = *(v203 + 48);
      *v206 = 2;
      v207 = v206 + v205;
      v208 = v723;
      v729 = v723;
      v730.i64[0] = v722;
      v730.i64[1] = AssociatedConformanceWitness;
      type metadata accessor for ReconciliationID(255, &v729);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
      v209 = &v207[*(swift_getTupleTypeMetadata2() + 48)];
      v718[2](v207, v201, v208);
      swift_storeEnumTagMultiPayload();
      *v209 = 0;
      *(v209 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v158 = sub_1CF045898(v204, v203);
      (*(v200 + 8))(v201, v202);
      goto LABEL_140;
    case 9u:
      v229 = v710;
      (v147)(v710, v728, v727);
      v230 = v692;
      v231 = v712;
      (*(v715 + 32))(v692, v229);
      v232 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      v718 = *(v719 + 72);
      swift_allocObject();
      v725.i64[0] = sub_1CF9E6D68();
      v234 = v233;
      v235 = *(v232 + 48);
      *v233 = 1024;
      v236 = v233 + v235;
      v237 = *(&v723 + 1);
      v729 = v723;
      v730.i64[0] = v722;
      v730.i64[1] = AssociatedConformanceWitness;
      type metadata accessor for ReconciliationID(255, &v729);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
      v238 = &v236[*(swift_getTupleTypeMetadata2() + 48)];
      v239 = *(v231 + 36);
      v240 = *(v717 + 16);
      v240(v236, &v230[v239], v237);
      swift_storeEnumTagMultiPayload();
      v241 = &v230[*(v231 + 44)];
      v242 = *(v241 + 1);
      *v238 = *v241;
      *(v238 + 1) = v242;
      swift_storeEnumTagMultiPayload();
      v243 = v718 + v234;
      v244 = TupleTypeMetadata2;
      v245 = *(TupleTypeMetadata2 + 48);
      *v243 = 8;
      v240(&v243[v245], &v230[v239], *(&v723 + 1));
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v158 = sub_1CF045898(v725.i64[0], v244);
      v246 = *(v715 + 8);

      v246(v230, v712);
      goto LABEL_63;
    case 0xBu:
      v247 = v696;
      v248 = v727;
      (v147)(v696, v728, v727);
      v249 = v723;
      v729 = v723;
      v250 = v722;
      v251 = AssociatedConformanceWitness;
      v730.i64[0] = v722;
      v730.i64[1] = AssociatedConformanceWitness;
      v729.i64[0] = type metadata accessor for ReconciliationID(255, &v729);
      v729.i64[1] = sub_1CF9E75D8();
      v730.i64[0] = &type metadata for ContentStatus;
      v730.i64[1] = &type metadata for ContentStatus;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v253 = TupleTypeMetadata[12];
      v254 = v247[TupleTypeMetadata[16]];
      v255 = v247[TupleTypeMetadata[20]];
      v729 = v249;
      v730.i64[0] = v250;
      v730.i64[1] = v251;
      v256 = type metadata accessor for ReconciliationID(0, &v729);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v307 = v718;
        v718[4](v697, v247, v249.i64[0]);
        v308 = TupleTypeMetadata2;
        v729.i64[0] = sub_1CF9E6DA8();
        v309 = v720;
        v725.i64[0] = v253;
        if ((v706 & 1) != 0 && v255 == 2)
        {
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
          v310 = swift_getTupleTypeMetadata2();
          v311 = v248;
          v312 = v705;
          v313 = &v705[*(v310 + 48)];
          v307[2](v705, v697, v249.i64[0]);
          swift_storeEnumTagMultiPayload();
          *v313 = 0;
          *(v313 + 1) = 0;
          swift_storeEnumTagMultiPayload();
          v314 = *(v308 + 48);
          v315 = v703;
          *v703 = 2;
          v316 = v312;
          v248 = v311;
          v253 = v725.i64[0];
          (*(v708 + 32))(&v315[v314], v316, v309);
          sub_1CF9E6E58();
          v247 = v696;
          sub_1CF9E6E18();
        }

        if (v254 == 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
          v317 = swift_getTupleTypeMetadata2();
          v318 = v248;
          v319 = v705;
          v320 = &v705[*(v317 + 48)];
          v307[2](v705, v697, v249.i64[0]);
          swift_storeEnumTagMultiPayload();
          *v320 = 0;
          *(v320 + 1) = 0;
          swift_storeEnumTagMultiPayload();
          v321 = *(v308 + 48);
          v322 = v703;
          *v703 = 0x100000;
          v323 = v319;
          v248 = v318;
          v253 = v725.i64[0];
          (*(v708 + 32))(&v322[v321], v323, v309);
          sub_1CF9E6E58();
          sub_1CF9E6E18();
        }

        (v307[1])(v697, v249.i64[0]);
        v158 = v729.i64[0];
        v324 = sub_1CF9E75D8();
        (*(*(v324 - 8) + 8))(&v247[v253], v324);
        goto LABEL_91;
      }

      v257 = *(v256 - 8);
      v258 = (*(v257 + 48))(&v247[v253], 1, v256);
      v259 = v718;
      if (v258 == 1)
      {
        (*(v257 + 8))(v247, v256);
        v260 = sub_1CF9E75D8();
        (*(*(v260 - 8) + 8))(&v247[v253], v260);
        goto LABEL_61;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v413 = *(v257 + 8);
        v413(&v247[v253], v256);
        v413(v247, v256);
        goto LABEL_61;
      }

      if (v254 == 1)
      {
        v497 = v716.i64[0];
        v259[4](v716.i64[0], &v247[v253], v249.i64[0]);
        v498 = TupleTypeMetadata2;
        sub_1CF9E7FA8();
        swift_allocObject();
        v499 = sub_1CF9E6D68();
        v501 = v500 + *(v498 + 48);
        *v500 = 0x100000;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
        v502 = &v501[*(swift_getTupleTypeMetadata2() + 48)];
        v259[2](v501, v497, v249.i64[0]);
        swift_storeEnumTagMultiPayload();
        *v502 = 0;
        *(v502 + 1) = 0;
        swift_storeEnumTagMultiPayload();
        v158 = sub_1CF045898(v499, v498);
        (v259[1])(v497, v249.i64[0]);
        (*(v257 + 8))(v247, v256);
        goto LABEL_63;
      }

      (v259[1])(&v247[v253], v249.i64[0]);
      (*(v257 + 8))(v247, v256);
      goto LABEL_61;
    case 0xDu:
      v296 = v686;
      v297 = v727;
      (v147)(v686, v728, v727);
      v298 = v723;
      v729 = v723;
      v299 = v722;
      v300 = AssociatedConformanceWitness;
      v730.i64[0] = v722;
      v730.i64[1] = AssociatedConformanceWitness;
      type metadata accessor for ThrottlingKey(255, &v729);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);

      v729 = v298;
      v730.i64[0] = v299;
      v730.i64[1] = v300;
      v301 = type metadata accessor for ReconciliationID(255, &v729);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(*(v301 - 8) + 8))(v296, v301);
        goto LABEL_61;
      }

      v348 = v296[*(swift_getTupleTypeMetadata2() + 48)];
      if ((v348 - 1) < 2)
      {
        v462 = v718[4];
        v462(v146, v296, v298.i64[0]);
        (*(v724 + 8))(v728, v297);
        v350 = TupleTypeMetadata2;
        sub_1CF9E7FA8();
        swift_allocObject();
        v463 = sub_1CF9E6D68();
        v464 = *(v350 + 48);
        *v465 = 1024;
        v462(v465 + v464, v146, v298.i64[0]);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v185 = v463;
        goto LABEL_151;
      }

      v349 = v728;
      v350 = TupleTypeMetadata2;
      if (!v348 || v348 == 23)
      {
        v351 = v718[4];
        v352 = v658;
        v351(v658, v296, v298.i64[0]);
        (*(v724 + 8))(v349, v297);
        sub_1CF9E7FA8();
        swift_allocObject();
        v353 = sub_1CF9E6D68();
        v354 = *(v350 + 48);
        *v355 = 4;
        v351(v355 + v354, v352, v298.i64[0]);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v185 = v353;
LABEL_151:
        v186 = v350;
        return sub_1CF045898(v185, v186);
      }

      (v718[1])(v296, v298.i64[0]);
LABEL_61:
      v181 = sub_1CF9E6DA8();
LABEL_62:
      v158 = v181;
      goto LABEL_63;
    case 0xEu:
      v159 = v684;
      (v147)(v684, v728, v727);
      v293 = v723;
      v729 = v723;
      v730.i64[0] = v722;
      v730.i64[1] = AssociatedConformanceWitness;
      v162 = type metadata accessor for ReconciliationID(255, &v729);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_49;
      }

      v342 = v159[*(swift_getTupleTypeMetadata2() + 48)];
      if (v342 > 0x17)
      {
        goto LABEL_177;
      }

      if (((1 << v342) & 0x80104B) != 0)
      {
        v343 = v718[4];
        v343(v140, v159, v293);
        (*(v724 + 8))(v728, v727);
        v344 = TupleTypeMetadata2;
        sub_1CF9E7FA8();
        swift_allocObject();
        v345 = sub_1CF9E6D68();
        v346 = *(v344 + 48);
        *v347 = 262400;
        v343(v347 + v346, v140, v293);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v185 = v345;
        v186 = v344;
        return sub_1CF045898(v185, v186);
      }

      if (v342 == 2)
      {
        v503 = v718;
        v504 = v716.i64[0];
        v718[4](v716.i64[0], v159, v293);
        v505 = TupleTypeMetadata2;
        sub_1CF9E7FA8();
        swift_allocObject();
        v506 = sub_1CF9E6D68();
        v507 = *(v505 + 48);
        *v508 = 262912;
        v503[2](&v508[v507], v504, v293);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v158 = sub_1CF045898(v506, v505);
        (v503[1])(v504, v293);
        goto LABEL_63;
      }

LABEL_177:
      v294 = v718[1];
      goto LABEL_56;
    case 0x15u:
      v175 = v678;
      v176 = v727;
      (v147)(v678, v728, v727);
      if ((*v175 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }

      v729 = v713;
      v730 = v714;
      type metadata accessor for Propagation.CreateItem(0, &v729);
      v372 = swift_dynamicCastClass();
      if (v372)
      {
        v373 = v372;
        v374 = v723;
        goto LABEL_156;
      }

      v729 = v713;
      v730 = v714;
      type metadata accessor for Propagation.UpdateItem(0, &v729);
      v466 = swift_dynamicCastClass();
      v374 = v723;
      if (!v466)
      {
        goto LABEL_13;
      }

      goto LABEL_179;
    case 0x16u:
      v210 = v677;
      v176 = v727;
      (v147)(v677, v728, v727);
      if ((*v210 & 0x8000000000000000) == 0)
      {
        v729 = v713;
        v730 = v714;
        type metadata accessor for Materialization.MaterializeIgnoredItem(0, &v729);
        v211 = swift_dynamicCastClass();
        v212 = v723;
        if (v211)
        {
          v213 = v211;
          v214 = TupleTypeMetadata2;
          sub_1CF9E7FA8();
          swift_allocObject();

          v216 = sub_1CF9E6D68();
          v217 = *(v214 + 48);
          v218 = 0x4000;
LABEL_29:
          *v215 = v218;
          v718[2](v215 + v217, (v213 + *(*v213 + 576)), v212);
          v729.i64[0] = v212;
          v729.i64[1] = *(&v723 + 1);
          v730.i64[0] = v722;
          v730.i64[1] = AssociatedConformanceWitness;
          type metadata accessor for ReconciliationID(0, &v729);
          swift_storeEnumTagMultiPayload();
LABEL_96:
          swift_storeEnumTagMultiPayload();
          v158 = sub_1CF045898(v216, v214);

LABEL_197:
          (*(v724 + 8))(v728, v176);
          return v158;
        }

        v716 = vextq_s8(v713, v713, 8uLL);
        v729 = v716;
        v730 = vextq_s8(v714, v714, 8uLL);
        v725 = v730;
        type metadata accessor for Propagation.CreateItem(0, &v729);
        v441 = swift_dynamicCastClass();
        if (v441)
        {
          if ((v706 & 1) != 0 && v441[112] == 3)
          {
            v442 = *(*v441 + 664);
            v443 = v441;
            swift_beginAccess();
            v444 = v648;
            v445 = *(v648 + 16);
            v725.i64[0] = v443;
            v446 = v647;
            v447 = v649;
            v445(v647, &v443[v442], v649);
            v448 = v651;
            v449 = v654;
            if ((*(v651 + 48))(v446, 1, v654) != 1)
            {
              v609 = v650;
              (*(v448 + 32))(v650, v446, v449);
              v610 = v212;
              v611 = TupleTypeMetadata2;
              sub_1CF9E7FA8();
              v612 = *(v719 + 72);
              swift_allocObject();
              v719 = sub_1CF9E6D68();
              v613 = v448;
              v615 = v614;
              v616 = *(v611 + 48);
              *v614 = 8;
              v718[2](v614 + v616, v609, v610);
              v617 = *(&v723 + 1);
              v729.i64[0] = v610;
              v729.i64[1] = *(&v723 + 1);
              v730.i64[0] = v722;
              v730.i64[1] = AssociatedConformanceWitness;
              type metadata accessor for ReconciliationID(0, &v729);
              swift_storeEnumTagMultiPayload();
              swift_storeEnumTagMultiPayload();
              v618 = v615 + v612;
              v619 = *(v611 + 48);
              *v618 = 8;
              (*(v717 + 16))(&v618[v619], v725.i64[0] + *(*v725.i64[0] + 576), v617);
              swift_storeEnumTagMultiPayload();
              swift_storeEnumTagMultiPayload();
              v158 = sub_1CF045898(v719, v611);

              (*(v613 + 8))(v650, v654);
              goto LABEL_197;
            }

            (*(v444 + 8))(v446, v447);
          }

LABEL_196:
          v158 = sub_1CF9E6DA8();

          goto LABEL_197;
        }

        v729 = v716;
        v730 = v725;
        type metadata accessor for Propagation.UpdateItem(0, &v729);
        v509 = swift_dynamicCastClass();
        if (v509)
        {
          if (*(v509 + 112) == 3)
          {
            v510 = v509;
            v729.i64[0] = *(v509 + 96);
            v511 = v729.i64[0];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            v512 = v644;
            v513 = v646;
            v514 = swift_dynamicCast();
            v515 = v645;
            v516 = *(v645 + 56);
            if (v514)
            {
              v516(v512, 0, 1, v513);
              v517 = v642;
              (*(v515 + 32))(v642, v512, v513);
              if ((*(v510 + *(*v510 + 648)) & 3) != 0)
              {
                v518 = v639;
                (*(v515 + 16))(v639, v517, v513);
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                if (EnumCaseMultiPayload == 1)
                {
                  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
                  strcpy(&v637 - 48, " filename below syncability originalError ");
                  v729.i64[0] = v212;
                  v729.i64[1] = &type metadata for Filename;
                  v730.i64[0] = v212;
                  v730.i64[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C2310, &unk_1CFA11710);
                  v731 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
                  v520 = swift_getTupleTypeMetadata();
                  *&v518[v520[12] + 8], v521, v522, v523, v524, v525, v526, v527;
                  v528 = v520[16];
                  sub_1CF480620(*&v518[v520[20]], *&v518[v520[20] + 8]);

                  v529 = v718;
                  v530 = v638;
                  v718[4](v638, v518, v212);
                  v725.i64[0] = v529[1];
                  (v725.i64[0])(&v518[v528], v212);
                  v531 = TupleTypeMetadata2;
                  sub_1CF9E7FA8();
                  swift_allocObject();
                  v719 = sub_1CF9E6D68();
                  v532 = *(v531 + 48);
                  *v533 = 1024;
                  v529[2](&v533[v532], v530, v212);
                  v729.i64[0] = v212;
                  v729.i64[1] = *(&v723 + 1);
                  v730.i64[0] = v722;
                  v730.i64[1] = AssociatedConformanceWitness;
                  type metadata accessor for ReconciliationID(0, &v729);
                  swift_storeEnumTagMultiPayload();
                  swift_storeEnumTagMultiPayload();
                  v158 = sub_1CF045898(v719, v531);

                  (v725.i64[0])(v530, v212);
                  (*(v515 + 8))(v642, v646);
                }

                else
                {
                  v636 = *(v515 + 8);
                  v636(v518, v513);
                  v158 = sub_1CF9E6DA8();

                  v636(v517, v513);
                }
              }

              else
              {
                v158 = sub_1CF9E6DA8();

                (*(v515 + 8))(v517, v513);
              }

              goto LABEL_197;
            }

            v516(v512, 1, 1, v513);
            (*(v640 + 8))(v512, v641);
          }

          goto LABEL_196;
        }

        v729 = v713;
        v730 = v714;
        type metadata accessor for Ingestion.DeleteFolderFromSnapshotIfEmpty(0, &v729);
        v588 = swift_dynamicCastClass();
        if (v588)
        {
          v589 = v588;
          v214 = TupleTypeMetadata2;
          sub_1CF9E7FA8();
          swift_allocObject();

          v216 = sub_1CF9E6D68();
          v590 = *(v214 + 48);
          *v591 = 1024;
          v718[2](&v591[v590], (v589 + *(*v589 + 576)), v212);
          v729.i64[0] = v212;
          v729.i64[1] = *(&v723 + 1);
          v730.i64[0] = v722;
          v730.i64[1] = AssociatedConformanceWitness;
          type metadata accessor for ReconciliationID(0, &v729);
          swift_storeEnumTagMultiPayload();
          goto LABEL_96;
        }

        v729 = v713;
        v730 = v714;
        type metadata accessor for Ingestion.FaultDirectoryInTree(0, &v729);
        v620 = swift_dynamicCastClass();
        if (v620)
        {
          v213 = v620;
          goto LABEL_200;
        }

        v729 = v713;
        v730 = v714;
        type metadata accessor for Ingestion.FetchItemMetadata(0, &v729);
        v635 = swift_dynamicCastClass();
        if (v635)
        {
          v213 = v635;
          if ((*(v635 + 136) & 0x2140) == 0)
          {
            goto LABEL_196;
          }

LABEL_200:
          v214 = TupleTypeMetadata2;
          sub_1CF9E7FA8();
          swift_allocObject();

          v216 = sub_1CF9E6D68();
          v217 = *(v214 + 48);
          v218 = 256;
          goto LABEL_29;
        }

LABEL_13:

        goto LABEL_61;
      }

      v716 = vextq_s8(v713, v713, 8uLL);
      v729 = v716;
      v730 = vextq_s8(v714, v714, 8uLL);
      v725 = v730;
      type metadata accessor for Materialization.EvictChildren(0, &v729);
      v375 = swift_dynamicCastClass();
      v374 = v723;
      if (v375)
      {
        v376 = v375;
        v214 = TupleTypeMetadata2;
        sub_1CF9E7FA8();
        swift_allocObject();

        v216 = sub_1CF9E6D68();
        v377 = *(v214 + 48);
        *v378 = 16;
        v379 = v378 + v377;
        v380 = v376 + *(*v376 + 576);
        v381 = *(&v723 + 1);
        (*(v717 + 16))(v379, v380, *(&v723 + 1));
        v729.i64[0] = v374;
        v729.i64[1] = v381;
        v730.i64[0] = v722;
        v730.i64[1] = AssociatedConformanceWitness;
        type metadata accessor for ReconciliationID(0, &v729);
        swift_storeEnumTagMultiPayload();
        goto LABEL_96;
      }

      v729 = v713;
      v730 = v714;
      type metadata accessor for Propagation.CreateItem(0, &v729);
      v467 = swift_dynamicCastClass();
      if (v467)
      {
        v373 = v467;
LABEL_156:
        (*(v724 + 8))(v728, v176);
        v468 = *(*v373 + 664);
        swift_beginAccess();
        v469 = v665;
        v470 = v663;
        v471 = v666;
        (*(v665 + 16))(v663, v373 + v468, v666);
        v472 = v674;
        v473 = v675;
        if ((*(v674 + 48))(v470, 1, v675) == 1)
        {
          (*(v469 + 8))(v470, v471);
          v474 = TupleTypeMetadata2;
          sub_1CF9E7FA8();
          swift_allocObject();
          v475 = sub_1CF9E6D68();
          v476 = *(v474 + 48);
          *v477 = 8;
          v718[2](&v477[v476], (v373 + *(*v373 + 576)), v374);

          v729.i64[0] = v374;
          v729.i64[1] = *(&v723 + 1);
          v730.i64[0] = v722;
          v730.i64[1] = AssociatedConformanceWitness;
          type metadata accessor for ReconciliationID(0, &v729);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          v185 = v475;
          v186 = v474;
          return sub_1CF045898(v185, v186);
        }

        (*(v472 + 32))(v664, v470, v473);
        v478 = TupleTypeMetadata2;
        sub_1CF9E7FA8();
        v725.i64[0] = *(v719 + 72);
        v727 = (2 * v725.i64[0]);
        swift_allocObject();
        v479 = sub_1CF9E6D68();
        v481 = v480;
        v482 = *(v478 + 48);
        *v480 = 1024;
        v483 = v480 + v482;
        v728 = v479;
        v729.i64[0] = v374;
        v484 = *(&v723 + 1);
        v729.i64[1] = *(&v723 + 1);
        v730.i64[0] = v722;
        v730.i64[1] = AssociatedConformanceWitness;
        v485 = type metadata accessor for ReconciliationID(255, &v729);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
        v722 = v485;
        v486 = &v483[*(swift_getTupleTypeMetadata2() + 48)];
        v487 = *(v717 + 16);
        v488 = v664;
        v487(v483, v664, v484);
        swift_storeEnumTagMultiPayload();
        v489 = &v488[*(v473 + 36)];
        v491 = *v489;
        v490 = *(v489 + 1);
        v724 = v490;
        *v486 = v491;
        *(v486 + 1) = v490;
        swift_storeEnumTagMultiPayload();
        v492 = v481 + v725.i64[0];
        v493 = TupleTypeMetadata2;
        v494 = *(TupleTypeMetadata2 + 48);
        *v492 = 8;
        v487(&v492[v494], v488, v484);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v495 = v727 + v481;
        v496 = *(v493 + 48);
        *v495 = 8;
        v718[2](&v495[v496], (v373 + *(*v373 + 576)), v723);

        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v158 = sub_1CF045898(v728, v493);
        (*(v674 + 8))(v488, v675);
      }

      else
      {
        v729 = v713;
        v730 = v714;
        type metadata accessor for Propagation.UpdateItem(0, &v729);
        v466 = swift_dynamicCastClass();
        if (v466)
        {
LABEL_179:
          v551 = v466;
          (*(v724 + 8))(v728, v176);
          v552 = TupleTypeMetadata2;
          v734 = sub_1CF9E6DA8();
          v553 = v705;
          v718[2](v705, (v551 + *(*v551 + 576)), v374);
          v554 = *(&v723 + 1);
          v729.i64[0] = v374;
          v729.i64[1] = *(&v723 + 1);
          v730.i64[0] = v722;
          v730.i64[1] = AssociatedConformanceWitness;
          type metadata accessor for ReconciliationID(0, &v729);
          swift_storeEnumTagMultiPayload();
          v555 = v720;
          swift_storeEnumTagMultiPayload();
          v556 = *(v552 + 48);
          v557 = v703;
          *v703 = 8;
          v558 = *(v708 + 32);
          v708 += 32;
          v558(&v557[v556], v553, v555);
          sub_1CF9E6E58();
          sub_1CF9E6E18();
          if ((*(v551 + *(*v551 + 648)) & 3) != 0)
          {
            v559 = *(*v551 + 672);
            swift_beginAccess();
            v560 = v665;
            v561 = v551 + v559;
            v562 = v655;
            v563 = v666;
            (*(v665 + 16))(v655, v561, v666);
            v564 = v562;

            v565 = v674;
            v566 = v675;
            if ((*(v674 + 48))(v564, 1, v675) == 1)
            {
              (*(v560 + 8))(v564, v563);
            }

            else
            {
              v577 = *(v565 + 32);
              v728 = v558;
              v578 = v652;
              v577(v652, v564, v566);
              __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
              v579 = swift_getTupleTypeMetadata2();
              v580 = v705;
              v581 = v565;
              v582 = &v705[*(v579 + 48)];
              (*(v717 + 16))(v705, v578, v554);
              swift_storeEnumTagMultiPayload();
              v583 = &v578[*(v566 + 36)];
              v584 = *(v583 + 1);
              *v582 = *v583;
              *(v582 + 1) = v584;
              v585 = v720;
              swift_storeEnumTagMultiPayload();
              v586 = *(v552 + 48);
              v587 = v703;
              *v703 = 1024;
              v728(&v587[v586], v580, v585);

              sub_1CF9E6E18();
              (*(v581 + 8))(v578, v566);
            }

            return v734;
          }

          else
          {

            return v734;
          }
        }

        else
        {
          v729 = v716;
          v730 = v725;
          type metadata accessor for Ingestion.FetchItemMetadata(0, &v729);
          v592 = swift_dynamicCastClass();
          if (!v592)
          {
            v729 = v716;
            v730 = v725;
            type metadata accessor for Ingestion.ReparentTrashedItemToTrashRoot(0, &v729);
            v628 = swift_dynamicCastClass();
            if (v628)
            {
              v629 = v628;
              v214 = TupleTypeMetadata2;
              sub_1CF9E7FA8();
              swift_allocObject();

              v216 = sub_1CF9E6D68();
              v630 = *(v214 + 48);
              *v631 = 8;
              v632 = v631 + v630;
              v633 = v629 + *(*v629 + 576);
              v634 = *(&v723 + 1);
              (*(v717 + 16))(v632, v633, *(&v723 + 1));
              v729.i64[0] = v374;
              v729.i64[1] = v634;
              v730.i64[0] = v722;
              v730.i64[1] = AssociatedConformanceWitness;
              type metadata accessor for ReconciliationID(0, &v729);
              swift_storeEnumTagMultiPayload();
              goto LABEL_96;
            }

            goto LABEL_13;
          }

          v593 = v592;
          if ((*(v592 + 136) & 0x2140) == 0)
          {
            goto LABEL_196;
          }

          v594 = TupleTypeMetadata2;
          sub_1CF9E7FA8();
          v718 = *(v719 + 72);
          swift_allocObject();

          v725.i64[0] = sub_1CF9E6D68();
          v596 = v595;
          v597 = v595 + *(v594 + 48);
          *v595 = 2;
          v598 = *(&v723 + 1);
          v729.i64[0] = v374;
          v729.i64[1] = *(&v723 + 1);
          v730.i64[0] = v722;
          v730.i64[1] = AssociatedConformanceWitness;
          type metadata accessor for ReconciliationID(255, &v729);
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
          v599 = &v597[*(swift_getTupleTypeMetadata2() + 48)];
          v600 = *(*v593 + 576);
          v601 = *(v717 + 16);
          v601(v597, v593 + v600, v598);
          swift_storeEnumTagMultiPayload();
          *v599 = 0;
          *(v599 + 1) = 0;
          swift_storeEnumTagMultiPayload();
          v602 = v718 + v596;
          v603 = TupleTypeMetadata2;
          v604 = *(TupleTypeMetadata2 + 48);
          *v602 = 256;
          v601(&v602[v604], v593 + v600, *(&v723 + 1));
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          v158 = sub_1CF045898(v725.i64[0], v603);

LABEL_63:
          (*(v724 + 8))(v728, v727);
        }
      }

      return v158;
    case 0x17u:
      v177 = v681;
      (v147)(v681, v728, v727);
      if (*v177 != 1)
      {
        goto LABEL_20;
      }

      if ((v669 & 0x4000) == 0)
      {
        goto LABEL_61;
      }

      v178 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      swift_allocObject();
      v179 = sub_1CF9E6D68();
      *v180 = 512;
      swift_storeEnumTagMultiPayload();
      v181 = sub_1CF045898(v179, v178);
      goto LABEL_62;
    case 0x18u:
      v173 = v682;
      (v147)(v682, v728, v727);
      if (*v173)
      {
        goto LABEL_61;
      }

LABEL_20:
      (*(v724 + 8))(v728, v727);
      v182 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      swift_allocObject();
      v183 = sub_1CF9E6D68();
      *v184 = 512;
      swift_storeEnumTagMultiPayload();
      v185 = v183;
      v186 = v182;
      return sub_1CF045898(v185, v186);
    case 0x19u:
      v159 = v683;
      v160 = v727;
      (v147)(v683, v728, v727);
      v261 = v723;
      v729 = v723;
      v730.i64[0] = v722;
      v730.i64[1] = AssociatedConformanceWitness;
      v162 = type metadata accessor for ReconciliationID(0, &v729);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_49;
      }

      v262 = v718;
      v263 = v668;
      v718[4](v668, v159, v261);
      if (v706)
      {
        v268 = sub_1CF9E6DA8();
      }

      else
      {
        v264 = TupleTypeMetadata2;
        sub_1CF9E7FA8();
        swift_allocObject();
        v265 = sub_1CF9E6D68();
        v266 = *(v264 + 48);
        *v267 = 0x4000;
        v262[2](&v267[v266], v263, v261);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v268 = sub_1CF045898(v265, v264);
      }

      v158 = v268;
      (v262[1])(v263, v261);
      goto LABEL_140;
    case 0x1Au:
      v159 = v679;
      v160 = v727;
      (v147)(v679, v728, v727);
      v161 = *(&v723 + 1);
      v729 = v723;
      v730.i64[0] = v722;
      v730.i64[1] = AssociatedConformanceWitness;
      v162 = type metadata accessor for ReconciliationID(0, &v729);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_49;
      }

      v163 = v717;
      v164 = v699;
      (*(v717 + 32))(v699, v159, v161);
      v165 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      swift_allocObject();
      v167 = sub_1CF9E6D68();
      v269 = *(v165 + 48);
      *v270 = 4096;
      v163[2](&v270[v269], v164, v161);
      goto LABEL_41;
    case 0x1Bu:
      v159 = v680;
      v160 = v727;
      (v147)(v680, v728, v727);
      v303 = v723;
      v729 = v723;
      v730.i64[0] = v722;
      v730.i64[1] = AssociatedConformanceWitness;
      v293 = type metadata accessor for ReconciliationID(0, &v729);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v360 = v718;
        v718[4](v133, v159, v303);
        if (v706)
        {
          v365 = sub_1CF9E6DA8();
        }

        else
        {
          v361 = TupleTypeMetadata2;
          sub_1CF9E7FA8();
          swift_allocObject();
          v362 = sub_1CF9E6D68();
          v363 = *(v361 + 48);
          *v364 = 2;
          v360[2](&v364[v363], v133, v303);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          v365 = sub_1CF045898(v362, v361);
        }

        v158 = v365;
        (v360[1])(v133, v303);
        goto LABEL_140;
      }

      v294 = *(*(v293 - 8) + 8);
LABEL_56:
      v295 = v159;
      v304 = v293;
      goto LABEL_60;
    case 0x1Cu:
      v119 = v695;
      v302 = v727;
      (v147)(v695, v728, v727);
      v729 = v713;
      v730 = v714;
      v162 = type metadata accessor for TestingOperation(0, &v729);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_53;
      }

      v729 = v713;
      v730 = v714;
      v162 = type metadata accessor for DirectionalTestingOperation(0, &v729);
      v356 = swift_getEnumCaseMultiPayload();
      if (v356 <= 1)
      {
        v357 = v723;
        if (!v356)
        {
          MEMORY[0x1EEE9AC00](v356);
          strcpy(&v637 - 48, " item version domainVersion ");
          v729.i64[0] = v357;
          v729.i64[1] = sub_1CF9E75D8();
          v730.i64[0] = MEMORY[0x1E69E6810];
          v730.i64[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
          v544 = swift_getTupleTypeMetadata();
          v545 = *(v544 + 48);

          v358 = v718[4];
          v359 = v667;
          v358(v667, v119, v357);
          v546 = sub_1CF9E75D8();
          (*(*(v546 - 8) + 8))(&v119[v545], v546);
          goto LABEL_173;
        }

        if (v356 != 1)
        {
LABEL_53:
          v294 = *(*(v162 - 8) + 8);
          v295 = v119;
          goto LABEL_59;
        }

        MEMORY[0x1EEE9AC00](v356);
        strcpy(&v637 - 80, " item destinationItemID baseVersion fields version domainVersion ");
        v729.i64[0] = v357;
        v729.i64[1] = sub_1CF9E75D8();
        v730.i64[0] = sub_1CF9E75D8();
        v450 = v119;
        v451 = swift_getAssociatedTypeWitness();
        v452 = swift_getAssociatedTypeWitness();
        v453 = swift_getAssociatedConformanceWitness();
        v454 = swift_getAssociatedConformanceWitness();
        v734 = v451;
        v735 = v452;
        v736 = v453;
        v737 = v454;
        type metadata accessor for FileItemVersion(255, &v734);
        v730.i64[1] = sub_1CF9E75D8();
        v731 = &type metadata for Fields;
        v732 = MEMORY[0x1E69E6810];
        v733 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
        v455 = swift_getTupleTypeMetadata();
        v725.i64[0] = v455[12];
        v717 = v455[16];
        v456 = v455[20];

        v358 = v718[4];
        v359 = v667;
        v358(v667, v450, v723);
        v729.i64[0] = v451;
        v729.i64[1] = v452;
        v730.i64[0] = v453;
        v730.i64[1] = v454;
        v457 = *(&v723 + 1);
        type metadata accessor for FileItemVersion(255, &v729);
        v458 = sub_1CF9E75D8();
        v459 = &v450[v456];
        v357 = v723;
        (*(*(v458 - 8) + 8))(v459, v458);
        v460 = sub_1CF9E75D8();
        (*(*(v460 - 8) + 8))(&v450[v717], v460);
        v461 = sub_1CF9E75D8();
        (*(*(v461 - 8) + 8))(&v450[v725.i64[0]], v461);
LABEL_171:
        v543 = v724;
        goto LABEL_174;
      }

      v357 = v723;
      if (v356 == 2)
      {
        v725.i64[0] = &v637;
        MEMORY[0x1EEE9AC00](v356);
        strcpy(&v637 - 64, " destinationItemID baseVersion recursive domainVersion ");
        v729.i64[0] = v357;
        v729.i64[1] = sub_1CF9E75D8();
        v534 = v119;
        v535 = swift_getAssociatedTypeWitness();
        v536 = swift_getAssociatedTypeWitness();
        v537 = swift_getAssociatedConformanceWitness();
        v717 = v537;
        v538 = swift_getAssociatedConformanceWitness();
        v734 = v535;
        v735 = v536;
        v736 = v537;
        v737 = v538;
        type metadata accessor for FileItemVersion(255, &v734);
        v730.i64[0] = sub_1CF9E75D8();
        v730.i64[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC4C5730, &qword_1CF9FCCE0);
        v731 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
        v539 = swift_getTupleTypeMetadata();
        v725.i64[0] = v539[12];
        v540 = v539[16];

        v358 = v718[4];
        v359 = v667;
        v358(v667, v534, v357);
        v729.i64[0] = v535;
        v729.i64[1] = v536;
        v730.i64[0] = v717;
        v730.i64[1] = v538;
        v457 = *(&v723 + 1);
        type metadata accessor for FileItemVersion(255, &v729);
        v541 = sub_1CF9E75D8();
        (*(*(v541 - 8) + 8))(&v534[v540], v541);
        v542 = sub_1CF9E75D8();
        (*(*(v542 - 8) + 8))(&v534[v725.i64[0]], v542);
        goto LABEL_171;
      }

      if (v356 != 4 && v356 != 5)
      {
        goto LABEL_53;
      }

      v358 = v718[4];
      v359 = v667;
      v358(v667, v119, v723);
LABEL_173:
      v457 = *(&v723 + 1);
      v543 = v724;
LABEL_174:
      (*(v543 + 8))(v728, v302);
      v547 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      swift_allocObject();
      v548 = sub_1CF9E6D68();
      v549 = *(v547 + 48);
      *v550 = 0x2000;
      v358(v550 + v549, v359, v357);
      v729.i64[0] = v357;
      v729.i64[1] = v457;
      v730.i64[0] = v722;
      v730.i64[1] = AssociatedConformanceWitness;
      type metadata accessor for ReconciliationID(0, &v729);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v185 = v548;
      v186 = v547;
      return sub_1CF045898(v185, v186);
    case 0x1Fu:
      v159 = v688;
      v160 = v727;
      (v147)(v688, v728, v727);
      v161 = v723;
      v729 = v723;
      v730.i64[0] = v722;
      v730.i64[1] = AssociatedConformanceWitness;
      v162 = type metadata accessor for ReconciliationID(0, &v729);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_49;
      }

      v163 = v718;
      v164 = v716.i64[0];
      v718[4](v716.i64[0], v159, v161);
      v165 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      swift_allocObject();
      v167 = sub_1CF9E6D68();
      v168 = v166 + *(v165 + 48);
      v169 = 0x4000;
      goto LABEL_11;
    case 0x21u:
      v159 = v685;
      v160 = v727;
      (v147)(v685, v728, v727);
      v161 = v723;
      v729 = v723;
      v730.i64[0] = v722;
      v730.i64[1] = AssociatedConformanceWitness;
      v162 = type metadata accessor for ReconciliationID(0, &v729);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_49;
      }

      v163 = v718;
      v164 = v716.i64[0];
      v718[4](v716.i64[0], v159, v161);
      v165 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      swift_allocObject();
      v167 = sub_1CF9E6D68();
      v187 = *(v165 + 48);
      *v188 = 8;
      v163[2](&v188[v187], v164, v161);
      swift_storeEnumTagMultiPayload();
      goto LABEL_42;
    case 0x22u:
      v248 = v727;
      (v147)(v109, v728, v727);
      v305 = v723;
      v729 = v723;
      v730.i64[0] = v722;
      v730.i64[1] = AssociatedConformanceWitness;
      v162 = type metadata accessor for ReconciliationID(0, &v729);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v294 = *(*(v162 - 8) + 8);
        v295 = v109;
        goto LABEL_59;
      }

      v366 = v718;
      v367 = v716.i64[0];
      v718[4](v716.i64[0], v109, v305);
      v368 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      swift_allocObject();
      v369 = sub_1CF9E6D68();
      v370 = *(v368 + 48);
      *v371 = 1024;
      v366[2](&v371[v370], v367, v305);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v158 = sub_1CF045898(v369, v368);
      (v366[1])(v367, v305);
LABEL_91:
      (*(v724 + 8))(v728, v248);
      return v158;
    case 0x23u:
      v159 = v687;
      v160 = v727;
      (v147)(v687, v728, v727);
      v161 = v723;
      v729 = v723;
      v730.i64[0] = v722;
      v730.i64[1] = AssociatedConformanceWitness;
      v162 = type metadata accessor for ReconciliationID(0, &v729);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_49;
      }

      v163 = v718;
      v164 = v716.i64[0];
      v718[4](v716.i64[0], v159, v161);
      v165 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      swift_allocObject();
      v167 = sub_1CF9E6D68();
      v171 = *(v165 + 48);
      v172 = 0x80000;
      goto LABEL_16;
    case 0x28u:
      v159 = v690;
      v160 = v727;
      (v147)(v690, v728, v727);
      v161 = v723;
      v729 = v723;
      v730.i64[0] = v722;
      v730.i64[1] = AssociatedConformanceWitness;
      v162 = type metadata accessor for ReconciliationID(0, &v729);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_49;
      }

      v163 = v718;
      v164 = v716.i64[0];
      v718[4](v716.i64[0], v159, v161);
      v165 = TupleTypeMetadata2;
      sub_1CF9E7FA8();
      swift_allocObject();
      v167 = sub_1CF9E6D68();
      v171 = *(v165 + 48);
      v172 = 1024;
LABEL_16:
      *v170 = v172;
      v163[2](v170 + v171, v164, v161);
LABEL_41:
      swift_storeEnumTagMultiPayload();
      goto LABEL_42;
    case 0x2Au:
      v159 = v691;
      v160 = v727;
      (v147)(v691, v728, v727);
      v161 = v723;
      v729 = v723;
      v730.i64[0] = v722;
      v730.i64[1] = AssociatedConformanceWitness;
      v162 = type metadata accessor for ReconciliationID(0, &v729);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v163 = v718;
        v164 = v716.i64[0];
        v718[4](v716.i64[0], v159, v161);
        v165 = TupleTypeMetadata2;
        sub_1CF9E7FA8();
        swift_allocObject();
        v167 = sub_1CF9E6D68();
        v168 = v166 + *(v165 + 48);
        v169 = 512;
LABEL_11:
        *v166 = v169;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
        v174 = &v168[*(swift_getTupleTypeMetadata2() + 48)];
        v163[2](v168, v164, v161);
        swift_storeEnumTagMultiPayload();
        *v174 = 0;
        *(v174 + 1) = 0;
LABEL_42:
        swift_storeEnumTagMultiPayload();
        v158 = sub_1CF045898(v167, v165);
        (v163[1])(v164, v161);
LABEL_140:
        (*(v724 + 8))(v728, v160);
        return v158;
      }

LABEL_49:
      v294 = *(*(v162 - 8) + 8);
      v295 = v159;
LABEL_59:
      v304 = v162;
LABEL_60:
      (v294)(v295, v304);
      goto LABEL_61;
    default:
      goto LABEL_61;
  }
}

void sub_1CF060D50(_TtC18FileProviderDaemon8FSTester *a1, char *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (a5)
  {
  }

  else
  {
    a1, a2, a3, a4, a5, a6, a7, a8;

    a2, v10, v11, v12, v13, v14, v15, v16;
  }
}

uint64_t sub_1CF060D9C(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 32), v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 40), v23, v24, v25, v26, v27, v28, v29;

  return v8;
}

uint64_t sub_1CF060DDC()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 272))(result);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF060E50()
{
  v1 = *(*v0 + 616);
  v2 = *(*v0 + 624);
  v3 = *(*v0 + 632);
  v4 = *(*v0 + 640);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v5 = type metadata accessor for PersistenceTrigger(0, &v11);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = v2;
    v12 = v1;
    v13 = v4;
    v14 = v3;
    v10 = type metadata accessor for PersistenceTrigger(0, &v11);
    sub_1CF060FD0(v10, v8);
    sub_1CF042D98(v8);

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF060FD0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v253 = a2;
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  *&v257 = a1[2];
  v4 = v257;
  *(&v257 + 1) = v3;
  *&v258 = v5;
  *(&v258 + 1) = v6;
  v238 = type metadata accessor for ItemReconciliation(0, &v257);
  v237 = *(v238 - 8);
  MEMORY[0x1EEE9AC00](v238);
  v235 = &v223 - v7;
  *&v257 = v4;
  *(&v257 + 1) = v3;
  *&v258 = v5;
  *(&v258 + 1) = v6;
  v234 = type metadata accessor for TestingOperation(0, &v257);
  v233 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234);
  v232 = &v223 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  *&v257 = AssociatedTypeWitness;
  *(&v257 + 1) = v10;
  *&v258 = AssociatedConformanceWitness;
  *(&v258 + 1) = v12;
  v243 = type metadata accessor for ThrottlingKey(0, &v257);
  v242 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v240 = &v223 - v13;
  *&v257 = AssociatedTypeWitness;
  *(&v257 + 1) = v10;
  *&v247 = v10;
  *(&v246 + 1) = AssociatedConformanceWitness;
  *&v258 = AssociatedConformanceWitness;
  *(&v258 + 1) = v12;
  *&v246 = v12;
  v14 = type metadata accessor for ReconciliationID(255, &v257);
  v244 = sub_1CF9E75D8();
  v245 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v236 = &v223 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v241 = &v223 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v231 = &v223 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v230 = &v223 - v21;
  *&v251 = v3;
  *&v252 = v6;
  v224 = type metadata accessor for SnapshotItem(255, v3, v6, v22);
  v228 = sub_1CF9E75D8();
  v227 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v226 = &v223 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v223 - v25;
  *(&v251 + 1) = v4;
  *(&v252 + 1) = v5;
  v28 = type metadata accessor for SnapshotItem(255, v4, v5, v27);
  v29 = sub_1CF9E75D8();
  v225 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v223 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v223 - v33;
  v250 = v14;
  v249 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v229 = &v223 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v223 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v239 = &v223 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v248 = &v223 - v43;
  *(&v247 + 1) = AssociatedTypeWitness;
  v44 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v223 - v46;
  v49 = MEMORY[0x1EEE9AC00](v48);
  v51 = &v223 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v52 + 16))(v51, v254, a1, v49);
  v254 = v51;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v141 = *(&v247 + 1);
      v142 = v247;
      v143 = *(swift_getTupleTypeMetadata2() + 48);
      v144 = *(v44 + 32);
      v145 = v254;
      v144(v47, v254, v141);
      v146 = *(swift_getTupleTypeMetadata2() + 48);
      v147 = v145 + v143;
      v148 = v253;
      (*(*(v142 - 8) + 32))(v253, v147, v142);
      v144(&v148[v146], v47, v141);
      v257 = v251;
      v258 = v252;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 2:
    case 3:
    case 10:
    case 18:
    case 25:
    case 26:
    case 27:
    case 30:
    case 31:
    case 33:
    case 34:
    case 35:
    case 36:
    case 40:
    case 41:
    case 42:
      v71 = v249;
      v70 = v250;
      v72 = v248;
      (*(v249 + 32))(v248, v254, v250);
      sub_1CF050768(v70, v253);
      (*(v71 + 8))(v72, v70);
      v257 = v251;
      v258 = v252;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 4:
    case 29:
      v104 = v250;
      v105 = *(v254 + *(swift_getTupleTypeMetadata2() + 48));
      v106 = v249;
      v107 = v248;
      (*(v249 + 32))(v248);
      v257 = v247;
      v258 = v246;
      type metadata accessor for ReconciliationID(255, &v257);
      v108 = *(swift_getTupleTypeMetadata2() + 48);
      v109 = v253;
      sub_1CF050768(v104, v253);
      (*(v106 + 8))(v107, v104);
      v109[v108] = v105;
      v257 = v251;
      v258 = v252;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 5:
      v164 = v250;
      v165 = *(swift_getTupleTypeMetadata2() + 48);
      v166 = v249;
      v167 = *(v249 + 32);
      v168 = v248;
      v169 = v254;
      v167(v248, v254, v164);
      v170 = v169 + v165;
      v171 = v239;
      v167(v239, v170, v164);
      v257 = v247;
      v258 = v246;
      type metadata accessor for ReconciliationID(255, &v257);
      v172 = *(swift_getTupleTypeMetadata2() + 48);
      v173 = v253;
      sub_1CF050768(v164, v253);
      v174 = *(v166 + 8);
      v174(v168, v164);
      sub_1CF050768(v164, &v173[v172]);
      v174(v171, v164);
      v257 = v251;
      v258 = v252;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 6:
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v182 = *(TupleTypeMetadata3 + 48);
      v183 = v254;
      v184 = *(v254 + *(TupleTypeMetadata3 + 64));
      v185 = *(v225 + 32);
      v185(v34, v254, v29);
      v185(v31, v183 + v182, v29);
      v186 = *(TupleTypeMetadata3 + 48);
      v187 = *(TupleTypeMetadata3 + 64);
      v188 = v253;
      v185(v253, v34, v29);
      v185(&v188[v186], v31, v29);
      *&v188[v187] = v184;
      v257 = v251;
      v258 = v252;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 7:
      v131 = v228;
      v132 = swift_getTupleTypeMetadata3();
      v133 = *(v132 + 48);
      v134 = v254;
      v135 = *(v254 + *(v132 + 64));
      v136 = *(v227 + 32);
      v136(v26, v254, v131);
      v137 = v226;
      v136(v226, v134 + v133, v131);
      v138 = *(v132 + 48);
      v139 = *(v132 + 64);
      v140 = v253;
      v136(v253, v26, v131);
      v136(&v140[v138], v137, v131);
      *&v140[v139] = v135;
      v257 = v251;
      v258 = v252;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 8:
      (*(*(v28 - 8) + 32))(v253, v254, v28);
      v257 = v251;
      v258 = v252;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 9:
      (*(*(v224 - 8) + 32))(v253, v254);
      v257 = v251;
      v258 = v252;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 11:
      v86 = v250;
      v87 = v244;
      *&v257 = v250;
      *(&v257 + 1) = v244;
      *&v258 = &type metadata for ContentStatus;
      *(&v258 + 1) = &type metadata for ContentStatus;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v89 = TupleTypeMetadata[12];
      v90 = v254;
      LODWORD(v248) = *(v254 + TupleTypeMetadata[16]);
      LODWORD(v243) = *(v254 + TupleTypeMetadata[20]);
      v91 = v249;
      (*(v249 + 32))(v39, v254, v86);
      v92 = *(v245 + 32);
      v93 = v90 + v89;
      v94 = v230;
      v92(v230, v93, v87);
      v257 = v247;
      v258 = v246;
      *&v257 = type metadata accessor for ReconciliationID(255, &v257);
      *(&v257 + 1) = sub_1CF9E75D8();
      *&v258 = &type metadata for ContentStatus;
      *(&v258 + 1) = &type metadata for ContentStatus;
      v254 = swift_getTupleTypeMetadata();
      v242 = *(v254 + 48);
      v95 = v253;
      sub_1CF050768(v86, v253);
      v96 = *(v91 + 8);
      v96(v39, v86);
      v97 = v231;
      v92(v231, v94, v87);
      if ((*(v91 + 48))(v97, 1, v86) == 1)
      {
        (*(v245 + 8))(v97, v87);
        v257 = v247;
        v258 = v246;
        v98 = type metadata accessor for ReconciliationID(0, &v257);
        v99 = 1;
        v100 = *(&v252 + 1);
        v101 = v252;
        v102 = v251;
        v103 = v242;
      }

      else
      {
        v217 = v242;
        sub_1CF050768(v86, &v95[v242]);
        v96(v97, v86);
        v257 = v247;
        v258 = v246;
        v98 = type metadata accessor for ReconciliationID(0, &v257);
        v99 = 0;
        v100 = *(&v252 + 1);
        v101 = v252;
        v102 = v251;
        v103 = v217;
      }

      (*(*(v98 - 8) + 56))(&v95[v103], v99, 1);
      v218 = *(v254 + 80);
      v95[*(v254 + 64)] = v248;
      v95[v218] = v243;
      *&v257 = v102;
      *(&v257 + 1) = *(&v251 + 1);
      *&v258 = v101;
      *(&v258 + 1) = v100;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 12:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      v110 = v254;
      strcpy(&v223 - 32, " otherID from to ");
      v111 = v250;
      v112 = v244;
      *&v257 = v250;
      *(&v257 + 1) = v244;
      *&v258 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
      *(&v258 + 1) = v258;
      v113 = swift_getTupleTypeMetadata();
      v114 = v113[12];
      LODWORD(v248) = *(v110 + v113[16]);
      LODWORD(v243) = *(v110 + v113[20]);
      v115 = v249;
      v116 = v229;
      (*(v249 + 32))(v229, v110, v111);
      v242 = *(v245 + 32);
      v117 = (v242)(v241, v110 + v114, v112);
      MEMORY[0x1EEE9AC00](v117);
      strcpy(&v223 - 32, " otherID from to ");
      v257 = v247;
      v258 = v246;
      *&v257 = type metadata accessor for ReconciliationID(255, &v257);
      *(&v257 + 1) = sub_1CF9E75D8();
      *&v258 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
      *(&v258 + 1) = v258;
      v118 = swift_getTupleTypeMetadata();
      v119 = v118[12];
      v120 = v253;
      sub_1CF050768(v111, v253);
      v121 = *(v115 + 8);
      v121(v116, v111);
      v122 = v236;
      (v242)(v236, v241, v112);
      if ((*(v115 + 48))(v122, 1, v111) == 1)
      {
        (*(v245 + 8))(v122, v112);
        v257 = v247;
        v258 = v246;
        v123 = type metadata accessor for ReconciliationID(0, &v257);
        v124 = 1;
      }

      else
      {
        sub_1CF050768(v111, &v120[v119]);
        v121(v122, v111);
        v257 = v247;
        v258 = v246;
        v123 = type metadata accessor for ReconciliationID(0, &v257);
        v124 = 0;
      }

      v219 = v252;
      v220 = v251;
      (*(*(v123 - 8) + 56))(&v120[v119], v124, 1);
      v221 = v118[20];
      v120[v118[16]] = v248;
      v120[v221] = v243;
      v257 = v220;
      v258 = v219;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 13:
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      v175 = v243;
      v176 = *(v254 + *(swift_getTupleTypeMetadata2() + 48));
      v177 = v242;
      v178 = v240;
      (*(v242 + 32))(v240);
      v257 = v247;
      v258 = v246;
      type metadata accessor for ThrottlingKey(255, &v257);
      v179 = *(swift_getTupleTypeMetadata2() + 48);
      v180 = v253;
      sub_1CF05043C(v175, v253);
      (*(v177 + 8))(v178, v175);
      *&v180[v179] = v176;
      v257 = v251;
      v258 = v252;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 14:
      v83 = v242;
      v84 = v240;
      v85 = v243;
      (*(v242 + 32))(v240, v254, v243);
      sub_1CF05043C(v85, v253);
      (*(v83 + 8))(v84, v85);
      v257 = v251;
      v258 = v252;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 15:
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      v125 = v250;
      v126 = *(v254 + *(swift_getTupleTypeMetadata2() + 48));
      v127 = v249;
      v128 = v248;
      (*(v249 + 32))(v248);
      v257 = v247;
      v258 = v246;
      type metadata accessor for ReconciliationID(255, &v257);
      v129 = *(swift_getTupleTypeMetadata2() + 48);
      v130 = v253;
      sub_1CF050768(v125, v253);
      (*(v127 + 8))(v128, v125);
      *&v130[v129] = v126;
      v257 = v251;
      v258 = v252;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 16:
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      v73 = v250;
      v74 = swift_getTupleTypeMetadata3();
      v75 = *(v254 + *(v74 + 48));
      v76 = *(v254 + *(v74 + 64));
      v77 = v249;
      v78 = v248;
      (*(v249 + 32))(v248);
      v257 = v247;
      v258 = v246;
      type metadata accessor for ReconciliationID(255, &v257);
      v79 = swift_getTupleTypeMetadata3();
      v80 = *(v79 + 48);
      v81 = *(v79 + 64);
      v82 = v253;
      sub_1CF050768(v73, v253);
      (*(v77 + 8))(v78, v73);
      *&v82[v80] = v75;
      v82[v81] = v76;
      v257 = v251;
      v258 = v252;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 17:
      v150 = v253;
      v149 = v254;
      v151 = *(v254 + 16);
      *v253 = *v254;
      *(v150 + 1) = v151;
      v152 = *(v149 + 48);
      *(v150 + 2) = *(v149 + 32);
      *(v150 + 3) = v152;
      v257 = v251;
      v258 = v252;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 19:
      v200 = *(&v247 + 1);
      v201 = v247;
      v202 = *(swift_getTupleTypeMetadata2() + 48);
      v203 = *(v44 + 32);
      v204 = v254;
      v203(v47, v254, v200);
      v205 = *(swift_getTupleTypeMetadata2() + 48);
      v206 = v204 + v202;
      v207 = v253;
      (*(*(v201 - 8) + 32))(v253, v206, v201);
      v203(&v207[v205], v47, v200);
      v257 = v251;
      v258 = v252;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 20:
      v153 = v254;
      v154 = *v254;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
      v155 = v250;
      v156 = swift_getTupleTypeMetadata3();
      v157 = *(v153 + *(v156 + 64));
      v158 = v249;
      v159 = v248;
      (*(v249 + 32))(v248, v153 + *(v156 + 48), v155);
      v257 = v247;
      v258 = v246;
      type metadata accessor for ReconciliationID(255, &v257);
      v160 = swift_getTupleTypeMetadata3();
      v161 = *(v160 + 48);
      v162 = *(v160 + 64);
      v163 = v253;
      *v253 = v154;
      sub_1CF050768(v155, &v163[v161]);
      (*(v158 + 8))(v159, v155);
      *&v163[v162] = v157;
      v257 = v251;
      v258 = v252;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 23:
    case 24:
      *v253 = (*v254 & 1) == 0;
      v257 = v251;
      v258 = v252;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 28:
      v208 = v233;
      v209 = v232;
      v210 = v234;
      (*(v233 + 32))(v232, v254, v234);
      sub_1CF940280(v210, v253);
      (*(v208 + 8))(v209, v210);
      v257 = v251;
      v258 = v252;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 32:
      v189 = v250;
      v190 = *(swift_getTupleTypeMetadata2() + 48);
      v191 = v249;
      v192 = *(v249 + 32);
      v193 = v248;
      v194 = v254;
      v192(v248, v254, v189);
      v195 = v194 + v190;
      v196 = v239;
      v192(v239, v195, v189);
      v257 = v247;
      v258 = v246;
      type metadata accessor for ReconciliationID(255, &v257);
      v197 = *(swift_getTupleTypeMetadata2() + 48);
      v198 = v253;
      sub_1CF050768(v189, v253);
      v199 = *(v191 + 8);
      v199(v193, v189);
      sub_1CF050768(v189, &v198[v197]);
      v199(v196, v189);
      v257 = v251;
      v258 = v252;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 37:
      v66 = v237;
      v67 = v235;
      v68 = v238;
      (*(v237 + 32))(v235, v254, v238);
      sub_1CF07EE34(v68, v69, v253);
      (*(v66 + 8))(v67, v68);
      v257 = v251;
      v258 = v252;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 38:
      v211 = v250;
      v212 = *(v254 + *(swift_getTupleTypeMetadata2() + 48));
      v213 = v249;
      v214 = v248;
      (*(v249 + 32))(v248);
      v257 = v247;
      v258 = v246;
      type metadata accessor for ReconciliationID(255, &v257);
      v215 = *(swift_getTupleTypeMetadata2() + 48);
      v216 = v253;
      sub_1CF050768(v211, v253);
      (*(v213 + 8))(v214, v211);
      v216[v215] = v212;
      v257 = v251;
      v258 = v252;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 39:
      *v253 = *v254;
      v257 = v251;
      v258 = v252;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    case 43:
      v57 = v250;
      v58 = (v254 + *(swift_getTupleTypeMetadata2() + 48));
      v59 = v58[1];
      v257 = *v58;
      v258 = v59;
      v60 = v58[3];
      v259 = v58[2];
      v260 = v60;
      v61 = v249;
      v62 = v248;
      (*(v249 + 32))(v248);
      v255 = v247;
      v256 = v246;
      type metadata accessor for ReconciliationID(255, &v255);
      v63 = &v253[*(swift_getTupleTypeMetadata2() + 48)];
      sub_1CF050768(v57, v253);
      (*(v61 + 8))(v62, v57);
      v64 = v258;
      *v63 = v257;
      *(v63 + 1) = v64;
      v65 = v260;
      *(v63 + 2) = v259;
      *(v63 + 3) = v65;
      v255 = v251;
      v256 = v252;
      type metadata accessor for PersistenceTrigger(0, &v255);
      break;
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
      v257 = v251;
      v258 = v252;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
    default:
      v54 = v251;
      v55 = v252;
      v56 = sub_1CF0452C8(*v254);

      *v253 = v56;
      v257 = v54;
      v258 = v55;
      type metadata accessor for PersistenceTrigger(0, &v257);
      break;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF063B10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(*(v6 + 168) + 48))(a1, a2, *(v6 + 160));

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CF063BC4(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = sub_1CF045354();

  if (!v3)
  {
    return result;
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = sub_1CF0452C8(a1);
  v6 = *(*v3 + 128);

  v6(v4, v5);
}

uint64_t sub_1CF063CE8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v68 = *(swift_getAssociatedTypeWitness() - 8);
  v71 = *(v68 + 84);
  if (v71)
  {
    v3 = v71 - 1;
  }

  else
  {
    v3 = 0;
  }

  v67 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = *(v67 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  v5 = *(v66 + 84);
  v55 = v5;
  if (v4 > v5)
  {
    v5 = v4;
  }

  v58 = v5;
  if (v5 <= 0x7FFFFFFE)
  {
    v5 = 2147483646;
  }

  v60 = v5;
  v6 = v5 - 1;
  if (v3 > v6)
  {
    v6 = v3;
  }

  v61 = v3;
  v62 = v6;
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v65 = *(swift_getAssociatedTypeWitness() - 8);
  v70 = *(v65 + 84);
  if (v70)
  {
    v8 = v70 - 1;
  }

  else
  {
    v8 = 0;
  }

  v54 = swift_getAssociatedTypeWitness();
  v64 = *(v54 - 8);
  v9 = *(v64 + 84);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v57 = v9;
  if (v9 <= v13)
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = v9;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = v14;
  }

  v59 = v8;
  if (v8 <= v15 - 1)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = v8;
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= v7)
  {
    v18 = v7;
  }

  else
  {
    v18 = v17;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v66 + 80);
  v21 = *(v11 + 80);
  v22 = *(v64 + 64);
  v23 = v19 - 1;
  if (v19 - 1 < v19)
  {
    v23 = v19;
  }

  if (v71)
  {
    v24 = *(v68 + 64);
  }

  else
  {
    v24 = *(v68 + 64) + 1;
  }

  if (v70)
  {
    v25 = *(v65 + 64);
  }

  else
  {
    v25 = *(v65 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v26 = *(v67 + 80) & 0xF8 | v20;
  v27 = v26 | 7u;
  v28 = v26 | *(v68 + 80) & 0xF8;
  v29 = *(v64 + 80) & 0xF8 | v21 | 7;
  v30 = v29 | *(v65 + 80) & 0xF8;
  v31 = v28 | v30;
  v32 = *(v67 + 64) + 7;
  v33 = v24 + 7;
  v34 = ((((((((v27 + 9 + ((((v24 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v27) + ((((*(v66 + 64) + ((v20 + 8 + (v32 & 0xFFFFFFFFFFFFFFF8)) & ~v20) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 50) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v35 = v25 + 7;
  v36 = ((((((((v29 + 9 + (((v35 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v29) + ((((*(*(v10 - 8) + 64) + ((v21 + 8 + ((v22 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v21) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 50) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (a2 <= v23)
  {
    goto LABEL_65;
  }

  v37 = (((((v36 + ((v34 + v30) & ~v30) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v38 = ((v31 + 9 + ((((v37 + ((((v31 + 9) | v31) + v37 + 8) & ~v31) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v31) + v37 + 8;
  v39 = 8 * v38;
  if (v38 > 3)
  {
    goto LABEL_45;
  }

  v41 = ((a2 - v23 + ~(-1 << v39)) >> v39) + 1;
  if (HIWORD(v41))
  {
    v40 = *(a1 + v38);
    if (v40)
    {
      goto LABEL_52;
    }
  }

  else
  {
    if (v41 <= 0xFF)
    {
      if (v41 < 2)
      {
        goto LABEL_65;
      }

LABEL_45:
      v40 = *(a1 + v38);
      if (!*(a1 + v38))
      {
        goto LABEL_65;
      }

LABEL_52:
      v42 = (v40 - 1) << v39;
      if (v38 > 3)
      {
        v42 = 0;
      }

      if (v38)
      {
        if (v38 <= 3)
        {
          v43 = v38;
        }

        else
        {
          v43 = 4;
        }

        if (v43 > 2)
        {
          if (v43 == 3)
          {
            v44 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v44 = *a1;
          }
        }

        else if (v43 == 1)
        {
          v44 = *a1;
        }

        else
        {
          v44 = *a1;
        }
      }

      else
      {
        v44 = 0;
      }

      return v23 + (v44 | v42) + 1;
    }

    v40 = *(a1 + v38);
    if (*(a1 + v38))
    {
      goto LABEL_52;
    }
  }

LABEL_65:
  v45 = (a1 + v31 + 9) & ~v31;
  if (v62 == v19)
  {
    if (v61 == v7)
    {
      if (v71 >= 2)
      {
        v46 = (*(v68 + 48))(v45);
        goto LABEL_93;
      }

      return 0;
    }

    v49 = (v27 + 9 + ((((v33 + v45) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v27;
    if (v4 == v60)
    {
      v46 = (*(v67 + 48))(v49);
      goto LABEL_93;
    }

    v52 = ((v32 + v49) & 0xFFFFFFFFFFFFFFF8);
    if (v58 > 0x7FFFFFFE)
    {
      v46 = (*(v66 + 48))((v52 + v20 + 8) & ~v20, v55, AssociatedTypeWitness);
      goto LABEL_93;
    }

LABEL_87:
    v53 = *v52;
    if (v53 >= 0xFFFFFFFF)
    {
      LODWORD(v53) = -1;
    }

    if ((v53 + 1) >= 2)
    {
      v46 = v53;
    }

    else
    {
      v46 = 0;
    }

    goto LABEL_93;
  }

  v47 = (v45 + v30 + v34) & ~v30;
  if (v16 == v19)
  {
    if (v59 == v17)
    {
      if (v70 < 2)
      {
        return 0;
      }

      v46 = (*(v65 + 48))(v47);
    }

    else
    {
      v51 = (v29 + 9 + ((((v35 + v47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v29;
      if (v57 == v15)
      {
        v46 = (*(v64 + 48))(v51, v57, v54);
        goto LABEL_93;
      }

      v52 = ((v22 + 7 + v51) & 0xFFFFFFFFFFFFFFF8);
      if (v14 <= 0x7FFFFFFE)
      {
        goto LABEL_87;
      }

      v46 = (*(v12 + 48))((v52 + v21 + 8) & ~v21, v13, v10);
    }

LABEL_93:
    if (v46 >= 2)
    {
      return v46 - 1;
    }

    else
    {
      return 0;
    }
  }

  v50 = *(((v47 + v36) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v50 >= 0xFFFFFFFF)
  {
    LODWORD(v50) = -1;
  }

  return (v50 + 1);
}

void *sub_1CF064568()
{
  v1 = *(v0 + 64);

  v3 = objc_sync_enter(v2);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v17 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v16, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF0646E8(v0, v4, v5, v6);
  v7 = objc_sync_exit(v1);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v7);
    v17 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v16, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 56), v8, v9, v10, v11, v12, v13, v14;

  sub_1CF045404(*(v0 + 80), *(v0 + 88));
  return v0;
}

void sub_1CF0646E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = type metadata accessor for JobLockRule(0, *(*a1 + 80), *(*a1 + 88), a4);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v57 - v14;
  v71 = *(v6 + 64);
  if (sub_1CF04B9F0(v6))
  {
    v15 = *(v6 + 80);
    if (v15)
    {
      v16 = *(v6 + 88);

      v15(v17);
      sub_1CF045404(v15, v16);
    }
  }

  if (*(v6 + 73) != 1)
  {
    return;
  }

  v18 = *(v6 + 56);

  if (!sub_1CF9E6DF8())
  {
    v56 = v18;
LABEL_49:
    v56, v19, v20, v21, v22, v23, v24, v25;
    return;
  }

  v58 = v9;
  v26 = 0;
  v70 = (v8 + 16);
  v66 = (v8 + 32);
  v64 = (v8 + 8);
  v27 = v63;
  v28 = v18;
  v59 = v7;
  v60 = v8;
  v61 = v12;
  v65 = v18;
  while (1)
  {
    v29 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v29)
    {
      v30 = v28 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v26;
      v69 = *(v8 + 16);
      v69(v27, v30, v7);
      v31 = __OFADD__(v26++, 1);
      if (v31)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v55 = sub_1CF9E7998();
      if (v58 != 8)
      {
        goto LABEL_60;
      }

      *&v73[0] = v55;
      v69 = *v70;
      v69(v27, v73, v7);
      swift_unknownObjectRelease();
      v31 = __OFADD__(v26++, 1);
      if (v31)
      {
LABEL_46:
        __break(1u);
LABEL_47:
        v56 = v28;
        goto LABEL_49;
      }
    }

    (*v66)(v12, v27, v7);
    swift_beginAccess();
    WitnessTable = swift_getWitnessTable();
    sub_1CF9E6728();
    v32 = *&v72[0];
    if (!*&v72[0])
    {
      swift_endAccess();
      (*v64)(v12, v7);
      goto LABEL_8;
    }

    v67 = *(&v72[0] + 1);
    swift_endAccess();
    v33 = sub_1CF82645C(sub_1CF52BE20, v6, v32);
    if ((v34 & 1) == 0)
    {
      break;
    }

    v35 = *v32->tree;
    v36 = v35;
LABEL_18:
    if (__OFADD__(v35, v36 - v35))
    {
      goto LABEL_58;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v36 > *v32->tester >> 1)
    {
      if (v35 <= v36)
      {
        v41 = v36;
      }

      else
      {
        v41 = v35;
      }

      v32 = sub_1CF1F7408(isUniquelyReferenced_nonNull_native, v41, 1, v32);
      v74 = v32;
    }

    sub_1CF8E42DC(v36, v35, 0);
    if (*v32->tree | v67)
    {
      v12 = v61;
      v49 = v67;
      v69(v62, v61, v7);
      *&v72[0] = v32;
      *(&v72[0] + 1) = v49;
    }

    else
    {
      v32, v42, v43, v44, v45, v46, v47, v48;
      v12 = v61;
      v69(v62, v61, v7);
      v72[0] = 0uLL;
    }

    swift_beginAccess();
    sub_1CF9E6708();
    sub_1CF9E6738();
    swift_endAccess();
    (*v64)(v12, v7);
    v27 = v63;
LABEL_8:
    v28 = v65;
    if (v26 == sub_1CF9E6DF8())
    {
      goto LABEL_47;
    }
  }

  v36 = v33;
  v35 = v33 + 1;
  if (__OFADD__(v33, 1))
  {
    goto LABEL_59;
  }

  v37 = v6;
  tree = v32->tree;
  v38 = *v32->tree;
  if (v35 == v38)
  {
LABEL_16:
    v8 = v60;
    if (v35 < v36)
    {
      goto LABEL_56;
    }

    v6 = v37;
    v7 = v59;
    if (v36 < 0)
    {
      goto LABEL_57;
    }

    goto LABEL_18;
  }

  v50 = 40 * v33 + 72;
  while (v35 < v38)
  {
    sub_1CF1A91AC(v32 + v50, v73);
    v51 = sub_1CF528F8C(v73, v37);
    if (v5)
    {
      goto LABEL_61;
    }

    v52 = v51;
    v5 = 0;
    __swift_destroy_boxed_opaque_existential_1(v73);
    if ((v52 & 1) == 0)
    {
      if (v35 != v36)
      {
        if (v36 < 0)
        {
          goto LABEL_52;
        }

        v53 = *tree;
        if (v36 >= *tree)
        {
          goto LABEL_53;
        }

        sub_1CF1A91AC(&v32[1] + 40 * v36, v73);
        if (v35 >= v53)
        {
          goto LABEL_54;
        }

        sub_1CF1A91AC(v32 + v50, v72);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_1CF7722AC(v32);
        }

        v54 = v32 + 40 * v36;
        __swift_destroy_boxed_opaque_existential_1(v54 + 4);
        sub_1CF054EA0(v72, (v54 + 32));
        if (v35 >= *v32->tree)
        {
          goto LABEL_55;
        }

        __swift_destroy_boxed_opaque_existential_1((&v32->super.isa + v50));
        sub_1CF054EA0(v73, v32 + v50);
      }

      ++v36;
    }

    ++v35;
    tree = v32->tree;
    v38 = *v32->tree;
    v50 += 40;
    if (v35 == v38)
    {
      goto LABEL_16;
    }
  }

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
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __swift_destroy_boxed_opaque_existential_1(v73);
  __break(1u);
}

uint64_t sub_1CF064DAC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  v6[0] = *(*v1 + 80);
  v6[1] = v3;
  v4 = type metadata accessor for TestingOperation(0, v6);
  return (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
}

uint64_t objectdestroy_4Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1CF064ED0(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocClassInstance();
}

uint64_t sub_1CF064F10(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  sub_1CF060D9C(a1, a2, a3, a4, a5, a6, a7, a8);

  return swift_deallocClassInstance();
}

unint64_t sub_1CF064F48()
{
  result = qword_1EDEA8320;
  if (!qword_1EDEA8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8320);
  }

  return result;
}

unint64_t sub_1CF064F9C()
{
  result = qword_1EDEA33B8;
  if (!qword_1EDEA33B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BFF50, &unk_1CFA05610);
    sub_1CEFCCCEC(&qword_1EDEA37D0, &qword_1EC4BE170, qword_1CFA03A20, MEMORY[0x1E69E6310]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA33B8);
  }

  return result;
}

uint64_t sub_1CF065054@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CF0660C4(*a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_1CF0650B4()
{
  v1 = sub_1CF9E6118();
  v19 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - v4;
  v6 = sub_1CF9E64A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = fpfs_adopt_log();
  v11 = *(v0 + 64);
  *v9 = v11;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v12 = v11;
  LOBYTE(v11) = sub_1CF9E64D8();
  (*(v7 + 8))(v9, v6);
  if (v11)
  {
    if (*(v0 + 88) == 1)
    {
      if (fp_task_tracker_is_cancelled(*(*(v0 + 168) + 16)) & 1) != 0 || (*(v0 + 152))
      {
        v13 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v14 = sub_1CF9E6108();
        v15 = sub_1CF9E7298();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_1CEFC7000, v14, v15, "not processing more jobs since we were cancelled", v16, 2u);
          MEMORY[0x1D386CDC0](v16, -1, -1);
        }

        (*(v19 + 8))(v5, v1);
      }

      else
      {
        sub_1CF7FD00C("onRunnableJobs()", 0x10uLL, 2, sub_1CF482DE0, v0);
      }
    }

    v17 = fpfs_adopt_log();
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF0655D4()
{
  v20 = sub_1CF9E7F98();
  v21 = v1;
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v2 = sub_1CF9E7F98();
  v4 = v3;
  MEMORY[0x1D3868CC0](v2);
  v4, v5, v6, v7, v8, v9, v10, v11;
  v12 = v0[3];
  if (v12 == v0[5] && v12 != v0[4])
  {
    MEMORY[0x1D3868CC0](0x208FB8EFA09AE220, 0xAC00000064726168);
    v12 = v0[3];
  }

  if (__OFSUB__(v12, v0[2]))
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1D3868CC0](v20, v21);
    v21, v13, v14, v15, v16, v17, v18, v19;
  }
}

BOOL sub_1CF06570C(_BOOL8 result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_15;
  }

  if (*(result + 8) != *(a2 + 8))
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = *result < *a2;
  if (*result == *a2)
  {
    if (*(result + 32))
    {
      if (*(a2 + 32))
      {
        return 0;
      }

      goto LABEL_14;
    }

    if (*(a2 + 32))
    {
LABEL_16:
      __break(1u);
      return result;
    }

    return *(result + 24) < *(a2 + 24);
  }

  return v2;
}

void sub_1CF06577C(_TtC18FileProviderDaemon8FSTester *result)
{
  v2 = *result->tree;
  v3 = *v1;
  v4 = *(*v1)->tree;
  v5 = &v4[v2];
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *v3->tester >> 1)
  {
    if (*result->tree)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v25 = &v4[v2];
  }

  else
  {
    v25 = v4;
  }

  v3 = sub_1CF065884(isUniquelyReferenced_nonNull_native, v25, 1, v3, v11, v12, v13, v14);
  if (!*result->tree)
  {
LABEL_13:
    result, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*v3->tester >> 1) - *v3->tree < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1BC0, &qword_1CF9FE630);
  swift_arrayInitWithCopy();
  result, v15, v16, v17, v18, v19, v20, v21;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v22 = *v3->tree;
  v23 = __OFADD__(v22, v2);
  v24 = v22 + v2;
  if (!v23)
  {
    *v3->tree = v24;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

_TtC18FileProviderDaemon8FSTester *sub_1CF065884(_TtC18FileProviderDaemon8FSTester *result, const char *a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
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

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE778, &qword_1CF9FE638);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *v14->tree = v12;
    *v14->tester = 2 * ((v15 - 32) / 56);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || &v14[1] >= (&a4[1] + 56 * v12))
    {
      memmove(&v14[1], &a4[1], 56 * v12);
    }

    *a4->tree = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1BC0, &qword_1CF9FE630);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

uint64_t storeEnumTagSinglePayload for JobCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 88 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 88) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xA8)
  {
    v4 = 0;
  }

  if (a2 > 0xA7)
  {
    v5 = ((a2 - 168) >> 8) + 1;
    *result = a2 + 88;
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
    *result = a2 + 88;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CF065A84(uint64_t result, uint64_t a2)
{
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x726576656ELL;
  }

  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_1CF064F48();
  v23 = sub_1CF9E7F98();
  result = MEMORY[0x1D3868CC0](10272, 0xE200000000000000);
  if (v2 < 0)
  {
    v5 = __OFSUB__(0, v2);
    v2 = -v2;
    if (!v5)
    {
      v4 = 0xE100000000000000;
      v3 = 45;
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v3 = 0;
  v4 = 0xE000000000000000;
LABEL_8:
  v6 = sub_1CF04F854(v2);
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](v3, v4);
  v4, v16, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return v23;
}

uint64_t sub_1CF065BDC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a3;
  v10 = sub_1CF03D7E8();
  v18 = v10;
  v19 = *v10->tree;
  if (!v19)
  {
LABEL_37:
    v18, v11, v12, v13, v14, v15, v16, v17;
    v60 = sub_1CF03D7E8();
    v61 = swift_allocObject();
    *(v61 + 16) = a4;
    *(v61 + 24) = a5;
    v77[0] = v60;
    v77[1] = sub_1CF065054;
    v77[2] = v61;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF50, &unk_1CFA05610);
    sub_1CF064F9C();
    v62 = sub_1CF9E67D8();

    v60, v63, v64, v65, v66, v67, v68, v69;
    return v62;
  }

  v20 = 0;
  v21 = v10 + 1;
  if (a1 | a2)
  {
    v22 = 4;
  }

  else
  {
    v22 = 5;
  }

  v76 = v22;
  v74 = v10 + 1;
  v75 = a2;
  v71 = a1;
  while (v20 < *v18->tree)
  {
    if (v7 == 0xFF)
    {
      v23 = [v6 bindObjectParameter_];
LABEL_7:

      goto LABEL_8;
    }

    if (!*(&v21->super.isa + v20))
    {
      v24 = v76;
      if (v7 == 3)
      {
        v24 = 3;
      }

      if (v7 == 2)
      {
        v24 = 2;
      }

      v25 = v7;
      if (v7)
      {
        v25 = 1;
      }

      if (v7 <= 1u)
      {
        v26 = v25;
      }

      else
      {
        v26 = v24;
      }

      v23 = [v6 bindLongParameter_];
      goto LABEL_7;
    }

    if (*(&v21->super.isa + v20) == 1)
    {
      if (v7)
      {
        v23 = [v6 bindLongParameter_];
        goto LABEL_7;
      }

      v78 = MEMORY[0x1E69E6530];
      v77[0] = a1;
      sub_1CEFF8EA0(v77);
      v38 = v37;
      sub_1CEFCCC44(v77, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      if (!v38)
      {
        goto LABEL_39;
      }

      v38, v39, v40, v41, v42, v43, v44, v45;
      a2 = v75;
    }

    else
    {
      if (v7)
      {
        if (v7 == 1 || v7 == 2)
        {
          v27 = a1;
          if (a1)
          {
LABEL_29:
            v79 = v27;
            v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
            v77[0] = v27;

            sub_1CF03C530(a1, a2, v7);
            sub_1CEFF8EA0(v77);
            v29 = v28;
            sub_1CEFCCC44(v77, &unk_1EC4BEC50, &qword_1CF9FB4B0);
            if (v29)
            {
              sub_1CF201778(a1, a2, v7);
              v29, v30, v31, v32, v33, v34, v35, v36;
            }

            else
            {
              sub_1CF9E56C8();
              swift_allocObject();
              sub_1CF9E56B8();
              sub_1CF9E5698();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE508, &qword_1CF9FDDC0);
              sub_1CF1E0FC0();
              v46 = sub_1CF9E56A8();
              v48 = v47;
              v49 = v46;
              sub_1CF04E5D8(v46, v47);
              v51 = v50;

              sub_1CEFE4714(v49, v48);
              a1 = v71;
              sub_1CF201778(v71, v75, v7);
              v52 = v51;
              a2 = v75;
              v52, v53, v54, v55, v56, v57, v58, v59;
            }

            v21 = v74;
            goto LABEL_8;
          }
        }
      }

      else
      {
        v27 = a2;
        if (a2)
        {
          goto LABEL_29;
        }
      }
    }

LABEL_8:
    if (v19 == ++v20)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_39:
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF066084(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF0660C4(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (a1 == 1)
    {
      v4 = 0x80000001CFA2C3F0;
    }

    else
    {
      v4 = 0x80000001CFA2C410;
    }
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x6574617473;
  }

  MEMORY[0x1D3868CC0](v3, v4);
  v4, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x1D3868CC0](1059077408, 0xE400000000000000);
  return a2;
}

void sub_1CF066180(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, __int128 *)@<X1>, uint64_t a3@<X8>)
{
  v5 = -1 << *(a1 + 32);
  v6 = *(a1 + 36);
  v7 = a1 + 64;
  v8 = sub_1CF9E77C8();
  if (*(a1 + 36) == v6)
  {
    v14 = v8;
    v47 = a3;
    v49 = -v5;
    v15 = v8 == -v5;
    if (v8 == -v5)
    {
LABEL_3:
      sub_1CF0663D8(v49, v6, 0, v9, v10, v11, v12, v13);
      v14 = 1 << *(a1 + 32);
      v6 = *(a1 + 36);
LABEL_4:
      *v47 = v14;
      *(v47 + 8) = v6;
      *(v47 + 16) = 0;
      *(v47 + 24) = 0;
      *(v47 + 32) = v15;
      return;
    }

    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v17 = v14 >> 6;
      if ((*(v7 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_23;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v51 = *(*(a1 + 56) + 16 * v14);
      v50 = v51;

      a2(&v52, &v51);
      *(&v50 + 1), v18, v19, v20, v21, v22, v23, v24;
      v50, v25, v26, v27, v28, v29, v30, v31;
      v32 = *v52->tree;
      v52, v33, v34, v35, v36, v37, v38, v39;
      if (v32)
      {
        goto LABEL_4;
      }

      v16 = 1 << *(a1 + 32);
      if (v14 >= v16)
      {
        goto LABEL_25;
      }

      v40 = *(v7 + 8 * v17);
      if ((v40 & (1 << v14)) == 0)
      {
        goto LABEL_26;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v41 = v40 & (-2 << (v14 & 0x3F));
      if (v41)
      {
        v16 = __clz(__rbit64(v41)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v42 = v17 << 6;
        v43 = v17 + 1;
        v44 = (a1 + 72 + 8 * v17);
        while (v43 < (v16 + 63) >> 6)
        {
          v46 = *v44++;
          v45 = v46;
          v42 += 64;
          ++v43;
          if (v46)
          {
            sub_1CF0663D8(v14, v6, 0, v9, v10, v11, v12, v13);
            v16 = __clz(__rbit64(v45)) + v42;
            goto LABEL_6;
          }
        }

        sub_1CF0663D8(v14, v6, 0, v9, v10, v11, v12, v13);
      }

LABEL_6:
      v14 = v16;
      v15 = v16 == v49;
      if (v15)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1CF0663D8(_TtC18FileProviderDaemon8FSTester *result, SEL a2, int64_t a3, int64_t x3_0, id x4_0, id x5_0, uint64_t w6_0, id x7_0)
{
  if (a3)
  {
    result, a2, a3, x3_0, x4_0, x5_0, w6_0, x7_0;
  }
}

void sub_1CF0663E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, __int128 *), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void, uint64_t, void, void, uint64_t))
{
  v9 = sub_1CF06570C(a2, a1);
  if (v9)
  {
    v10 = -(-1 << *(a3 + 32));
    v11 = *(a3 + 36);
    v12 = sub_1CF9E77C8();
    a6(v10, v11, 0, v12, *(a3 + 36), 0, a3);
  }

  if (*(a1 + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_60;
  }

  v13 = *(a1 + 8);
  v14 = *(a2 + 8);
  v15 = a3;
  if (v13 != v14)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v16 = *a1;
  v17 = *a2;
  v18 = *(a1 + 24);
  v19 = *(a1 + 32);
  v20 = *(a2 + 24);
  v21 = *(a2 + 32);
  if (v16 != *a2)
  {
    v173 = v19;
    v172 = v18;
    if (v9)
    {
      v22 = sub_1CF477A40(v17, v14, 0, a3);
      v24 = v23;
      *&v182 = v22;
      *(&v182 + 1) = v23;
      a4(&v183, &v182);
      v24, v25, v26, v27, v28, v29, v30, v31;
      v22, v32, v33, v34, v35, v36, v37, v38;
      if (v21)
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v46 = *v183->tree;
      v183, v39, v40, v41, v42, v43, v44, v45;
      if (__OFSUB__(v20, v46))
      {
        goto LABEL_57;
      }

      v181 = &v20[-v46];
      v177 = -1;
      v178 = v16;
      v171 = v13;
      LOBYTE(v20) = v173;
      goto LABEL_19;
    }

LABEL_16:
    v72 = sub_1CF477A40(v16, v13, 0, v15);
    v74 = v73;
    *&v182 = v72;
    *(&v182 + 1) = v73;
    a4(&v183, &v182);
    v74, v75, v76, v77, v78, v79, v80, v81;
    v72, v82, v83, v84, v85, v86, v87, v88;
    if (v173)
    {
LABEL_63:
      __break(1u);
      return;
    }

    v96 = *v183->tree;
    v183, v89, v90, v91, v92, v93, v94, v95;
    if (__OFSUB__(v96, v172))
    {
      goto LABEL_58;
    }

    v181 = (v96 - v172);
    v177 = 1;
    v178 = v17;
    v171 = v14;
    v172 = v20;
    LOBYTE(v20) = v21;
    v17 = v16;
    v14 = v13;
LABEL_19:
    v97 = sub_1CF47794C(v17, v14, 0, a3);
    v99 = v98;
    v101 = v100;
    sub_1CF0663D8(v17, v14, 0, v102, v103, v104, v105, v106);
    if (v101)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v99 == v171)
    {
      if (v97 < v178)
      {
        v174 = v20;
        v107 = a3;
        if ((v97 & 0x8000000000000000) == 0 && v97 < 1 << *(a3 + 32))
        {
          v108 = a3 + 64;
          v176 = v99;
          v109 = v99;
          while (1)
          {
            v20 = v99;
            v110 = v97 >> 6;
            if ((*(v108 + 8 * (v97 >> 6)) & (1 << v97)) == 0)
            {
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
              goto LABEL_55;
            }

            if (*(v107 + 36) != v109)
            {
              goto LABEL_49;
            }

            v182 = *(*(v107 + 56) + 16 * v97);
            v180 = v182;

            a4(&v183, &v182);
            *(&v180 + 1), v111, v112, v113, v114, v115, v116, v117;
            v180, v118, v119, v120, v121, v122, v123, v124;
            v125 = *v183->tree;
            v183, v126, v127, v128, v129, v130, v131, v132;
            v138 = &v181[v125 * v177];
            if (__OFADD__(v181, v125 * v177))
            {
              goto LABEL_50;
            }

            v139 = 1 << *(v107 + 32);
            if (v97 >= v139)
            {
              goto LABEL_51;
            }

            v140 = *(v108 + 8 * v110);
            if ((v140 & (1 << v97)) == 0)
            {
              goto LABEL_52;
            }

            v181 = v138;
            if (*(v107 + 36) != v109)
            {
              goto LABEL_53;
            }

            v141 = v140 & (-2 << (v97 & 0x3F));
            if (v141)
            {
              v97 = __clz(__rbit64(v141)) | v97 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v142 = v110 << 6;
              v143 = v110 + 1;
              v144 = (a3 + 72 + 8 * v110);
              while (v143 < (v139 + 63) >> 6)
              {
                v146 = *v144++;
                v145 = v146;
                v142 += 64;
                ++v143;
                if (v146)
                {
                  sub_1CF0663D8(v97, v109, 0, v133, v134, v135, v136, v137);
                  v107 = a3;
                  v97 = __clz(__rbit64(v145)) + v142;
                  goto LABEL_38;
                }
              }

              sub_1CF0663D8(v97, v109, 0, v133, v134, v135, v136, v137);
              v107 = a3;
              v97 = v139;
            }

LABEL_38:
            v99 = v20;
            if (v109 != v20)
            {
              goto LABEL_54;
            }

            if (v97 >= v178)
            {
              break;
            }

            if ((v97 & 0x8000000000000000) == 0)
            {
              v109 = v176;
              if (v97 < 1 << *(v107 + 32))
              {
                continue;
              }
            }

            goto LABEL_42;
          }

          if (v174)
          {
            return;
          }

          goto LABEL_46;
        }

LABEL_42:
        __break(1u);
      }

      v107 = a3;
      if (v20)
      {
        return;
      }

LABEL_46:
      v147 = sub_1CF477A40(v178, v171, 0, v107);
      v149 = v148;
      *&v182 = v147;
      *(&v182 + 1) = v148;
      a4(&v183, &v182);
      v149, v150, v151, v152, v153, v154, v155, v156;
      v147, v157, v158, v159, v160, v161, v162, v163;
      v183, v164, v165, v166, v167, v168, v169, v170;
      if (!__OFADD__(v181, v172 * v177))
      {
        return;
      }

      goto LABEL_59;
    }

    goto LABEL_56;
  }

  if (((v19 | v21) & 1) == 0)
  {
    v47 = v18;
    v48 = sub_1CF477A40(v16, v13, 0, a3);
    v50 = v49;
    *&v182 = v48;
    *(&v182 + 1) = v49;
    a4(&v183, &v182);
    v50, v51, v52, v53, v54, v55, v56, v57;
    v48, v58, v59, v60, v61, v62, v63, v64;
    v183, v65, v66, v67, v68, v69, v70, v71;
    if (__OFSUB__(v20, v47))
    {
      __break(1u);
      goto LABEL_16;
    }
  }
}

void sub_1CF066960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v122 = a4;
  v125 = a2;
  v127 = type metadata accessor for SyncState(0);
  v123 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v129 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v128 = &v121 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v121 - v12;
  if (!*(v5 + 88))
  {
    *(v5 + 88) = os_transaction_create();
  }

  v124 = a3;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = a1 + 32;
    while (1)
    {
      v24 = *(v15 + 1) | ((*(v15 + 5) | (*(v15 + 7) << 16)) << 32);
      v25 = *v15;
      v26 = *(v15 + 8);
      v27 = *(v15 + 16);
      v28 = *(v15 + 24);
      v29 = *v15 | (v24 << 8);
      if (v28 <= 2)
      {
        break;
      }

      if (*(v15 + 24) <= 4u)
      {
        if (v28 != 3)
        {
          v73 = *(v5 + 80);
          v74 = *v15;
          sub_1CF796430(v25, *(v15 + 8), *(v15 + 16), 4u);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v73 = sub_1CF1F6AB4(0, *v73->tree + 1, 1, v73, v75, v76, v77, v78);
          }

          v80 = *v73->tree;
          v79 = *v73->tester;
          if (v80 >= v79 >> 1)
          {
            v73 = sub_1CF1F6AB4((v79 > 1), v80 + 1, 1, v73, v75, v76, v77, v78);
          }

          *v73->tree = v80 + 1;
          v81 = &v73->super.isa + v80;
          *(v81 + 32) = v74;
          *(v81 + 33) = v24;
          *(v81 + 39) = BYTE6(v24);
          *(v81 + 37) = WORD2(v24);
          *(v5 + 80) = v73;
          goto LABEL_13;
        }

        sub_1CF796430(v25, *(v15 + 8), *(v15 + 16), 3u);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v130 = *(v5 + 56);
        v31 = v130;
        v32 = sub_1CEFE863C(v29);
        v34 = v31[2];
        v35 = (v33 & 1) == 0;
        v36 = __OFADD__(v34, v35);
        v37 = v34 + v35;
        if (v36)
        {
          goto LABEL_123;
        }

        v38 = v33;
        if (v31[3] < v37)
        {
          sub_1CF7C9A00(v37, isUniquelyReferenced_nonNull_native);
          v32 = sub_1CEFE863C(v29);
          if ((v38 & 1) != (v39 & 1))
          {
            goto LABEL_129;
          }

          goto LABEL_58;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_58:
          v31 = v130;
          if ((v38 & 1) == 0)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v93 = v32;
          sub_1CF7D1F60();
          v32 = v93;
          v31 = v130;
          if ((v38 & 1) == 0)
          {
LABEL_75:
            v31[(v32 >> 6) + 8] |= 1 << v32;
            *(v31[6] + 8 * v32) = v29;
            v94 = v31[7] + 16 * v32;
            *v94 = v26;
            *(v94 + 8) = v27 & 1;
            v95 = v31[2];
            v36 = __OFADD__(v95, 1);
            v96 = v95 + 1;
            if (v36)
            {
              goto LABEL_126;
            }

            v31[2] = v96;
            *(v5 + 56) = v31;
            goto LABEL_13;
          }
        }

        v83 = v31[7] + 16 * v32;
        *v83 = v26;
        *(v83 + 8) = v27 & 1;

        *(v5 + 56) = v31;
        goto LABEL_13;
      }

      if (v28 != 5)
      {
        if (v27 | v26 | v29)
        {
          if (v29 == 1 && (v27 | v26) == 0)
          {
            *(v5 + 65) = 1;
          }

          else
          {
            *(v5 + 66) = 1;
          }
        }

        else
        {
          *(v5 + 64) = 1;
        }

        v21 = 0;
        v22 = v27;
        v23 = 6;
LABEL_12:
        sub_1CF796430(v25, v21, v22, v23);
        goto LABEL_13;
      }

      sub_1CF796430(v25, *(v15 + 8), *(v15 + 16), 5u);
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v130 = *(v5 + 8);
      v31 = v130;
      v49 = sub_1CEFE863C(v29);
      v50 = v31[2];
      v51 = (v48 & 1) == 0;
      v52 = v50 + v51;
      if (__OFADD__(v50, v51))
      {
        goto LABEL_122;
      }

      v53 = v48;
      if (v31[3] >= v52)
      {
        if (v47)
        {
          v31 = v130;
          if ((v48 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          sub_1CF7D1E04();
          v31 = v130;
          if ((v53 & 1) == 0)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        sub_1CF7C9744(v52, v47);
        v54 = sub_1CEFE863C(v29);
        if ((v53 & 1) != (v55 & 1))
        {
          goto LABEL_129;
        }

        v49 = v54;
        v31 = v130;
        if ((v53 & 1) == 0)
        {
LABEL_32:
          v31[(v49 >> 6) + 8] |= 1 << v49;
          *(v31[6] + 8 * v49) = v29;
          *(v31[7] + v49) = v26;
          v56 = v31[2];
          v36 = __OFADD__(v56, 1);
          v57 = v56 + 1;
          if (v36)
          {
            goto LABEL_125;
          }

          v31[2] = v57;
          *(v5 + 8) = v31;
          goto LABEL_13;
        }
      }

      *(v31[7] + v49) = v26;

      *(v5 + 8) = v31;
LABEL_13:
      v15 += 32;
      if (!--v14)
      {
        goto LABEL_82;
      }
    }

    if (!*(v15 + 24))
    {
      v58 = *(v5 + 65);
      if (v58 == 1)
      {
        LOBYTE(v58) = 2;
      }

      *(v5 + 65) = v58;
      v59 = *(v5 + 64);
      if (v59 == 1)
      {
        LOBYTE(v59) = 2;
      }

      *(v5 + 64) = v59;
      v60 = *(v5 + 16);
      v61 = *(v60 + 16);
      sub_1CF796430(v25, v26, v27, 0);
      if (v61)
      {
        v62 = sub_1CEFE863C(v29);
        if ((v63 & 1) != 0 && !*(*(v60 + 56) + 24 * v62 + 8))
        {
          v88 = sub_1CEFE863C(v29);
          if (v89)
          {
            v90 = v88;
            v91 = swift_isUniquelyReferenced_nonNull_native();
            v92 = *(v5 + 56);
            v130 = v92;
            if (!v91)
            {
              sub_1CF7D1F60();
              v92 = v130;
            }

            sub_1CF1CFD5C(v90, v92);

            *(v5 + 56) = v92;
          }

          else
          {
          }

          goto LABEL_13;
        }
      }

      v64 = v29;
      v65 = swift_isUniquelyReferenced_nonNull_native();
      v130 = *(v5 + 16);
      v31 = v130;
      v66 = sub_1CEFE863C(v64);
      v68 = v31[2];
      v69 = (v67 & 1) == 0;
      v36 = __OFADD__(v68, v69);
      v70 = v68 + v69;
      if (v36)
      {
        goto LABEL_124;
      }

      v71 = v67;
      if (v31[3] < v70)
      {
        sub_1CF7C9CD4(v70, v65);
        v31 = v130;
        v66 = sub_1CEFE863C(v64);
        if ((v71 & 1) != (v72 & 1))
        {
LABEL_129:
          type metadata accessor for NSFileProviderItemIdentifier(0);
          sub_1CF9E8108();
          __break(1u);
          return;
        }

        goto LABEL_64;
      }

      if (v65)
      {
LABEL_64:
        v84 = v130;
        if ((v71 & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v31 = &v130;
        v97 = v66;
        sub_1CF7D20D0();
        v66 = v97;
        v84 = v130;
        if ((v71 & 1) == 0)
        {
LABEL_80:
          v84[(v66 >> 6) + 8] |= 1 << v66;
          *(v84[6] + 8 * v66) = v64;
          v98 = (v84[7] + 24 * v66);
          *v98 = v64;
          v98[1] = v26;
          v98[2] = v27;
          v99 = v84[2];
          v36 = __OFADD__(v99, 1);
          v100 = v99 + 1;
          if (v36)
          {
            goto LABEL_127;
          }

          v84[2] = v100;
          *(v5 + 16) = v84;
          goto LABEL_13;
        }
      }

      v85 = v84[7] + 24 * v66;
      v87 = *v85;
      v86 = *(v85 + 8);
      v126 = *(v85 + 16);
      *v85 = v64;
      *(v85 + 8) = v26;
      *(v85 + 16) = v27;

      *(v5 + 16) = v84;
      goto LABEL_13;
    }

    if (v28 == 1)
    {
      sub_1CF796430(v25, *(v15 + 8), *(v15 + 16), 1u);
      v40 = sub_1CEFE863C(v29);
      if (v41)
      {
        v42 = v40;
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v44 = *(v5 + 16);
        v130 = v44;
        if (!v43)
        {
          sub_1CF7D20D0();
          v44 = v130;
        }

        v45 = *(v44 + 56) + 24 * v42;
        v46 = *(v45 + 8);

        sub_1CF1CFF30(v42, v44);

        *(v5 + 16) = v44;
      }

      else
      {
      }

      goto LABEL_13;
    }

    v16 = *(v5 + 32);
    v17 = *(v5 + 40);
    v18 = *(v5 + 48);
    if (v16 == 2)
    {
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      v16 = *v15;
    }

    *(v5 + 32) = v16 & 1;
    *(v5 + 40) = v17;
    *(v5 + 48) = v18 & 1;
    v19 = *(v5 + 65);
    if (v19 == 1)
    {
      LOBYTE(v19) = 2;
    }

    *(v5 + 65) = v19;
    v20 = *(v5 + 64);
    if (v20 == 1)
    {
      LOBYTE(v20) = 2;
    }

    *(v5 + 64) = v20;
    v21 = v26;
    v22 = v27;
    v23 = 2;
    goto LABEL_12;
  }

LABEL_82:
  v101 = *(v125 + 16);
  if (v101)
  {
    v26 = v125 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
    v102 = *(v123 + 72);
    while (1)
    {
      sub_1CEFE505C(v26, v13, type metadata accessor for SyncState);
      sub_1CEFE505C(v13, v128, type metadata accessor for SyncState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload == 2)
          {
            sub_1CF007CB8(v128, type metadata accessor for SyncState);
            v105 = 2;
          }

          else
          {
            v105 = 3;
          }
        }

        else if (EnumCaseMultiPayload)
        {
          v105 = 1;
        }

        else
        {
          sub_1CF007CB8(v128, type metadata accessor for SyncState);
          v105 = 0;
        }
      }

      else if (EnumCaseMultiPayload <= 5)
      {
        if (EnumCaseMultiPayload == 4)
        {
          sub_1CF007CB8(v128, type metadata accessor for SyncState);
          v105 = 4;
        }

        else
        {
          sub_1CF007CB8(v128, type metadata accessor for SyncState);
          v105 = 5;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 7)
        {
          v104 = 7;
        }

        else
        {
          v104 = 8;
        }

        if (EnumCaseMultiPayload == 6)
        {
          v105 = 6;
        }

        else
        {
          v105 = v104;
        }
      }

      sub_1CEFE505C(v13, v129, type metadata accessor for SyncState);
      v106 = swift_isUniquelyReferenced_nonNull_native();
      v130 = *(v5 + 24);
      v31 = v130;
      v107 = sub_1CF7BF4F4(v105);
      v109 = v31[2];
      v110 = (v108 & 1) == 0;
      v36 = __OFADD__(v109, v110);
      v111 = v109 + v110;
      if (v36)
      {
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
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
        v26 = sub_1CF1F6A6C(0, (*(v26 + 16) + 1), 1, v26);
LABEL_116:
        v119 = *(v26 + 16);
        v118 = *(v26 + 24);
        if (v119 >= v118 >> 1)
        {
          v26 = sub_1CF1F6A6C((v118 > 1), (v119 + 1), 1, v26);
        }

        *(v26 + 16) = v119 + 1;
        v120 = (v26 + 16 * v119);
        *(v120 + 4) = sub_1CF2B1738;
        *(v120 + 5) = v31;
        *(v5 + 72) = v26;
        return;
      }

      v112 = v108;
      if (v31[3] < v111)
      {
        break;
      }

      if (v106)
      {
        goto LABEL_109;
      }

      v116 = v107;
      sub_1CF7CFBE4();
      v107 = v116;
      v31 = v130;
      if (v112)
      {
LABEL_84:
        sub_1CF1D5818(v129, v31[7] + v107 * v102);
        sub_1CF007CB8(v13, type metadata accessor for SyncState);
        goto LABEL_85;
      }

LABEL_110:
      v31[(v107 >> 6) + 8] |= 1 << v107;
      *(v31[6] + v107) = v105;
      sub_1CEFE4E00(v129, v31[7] + v107 * v102, type metadata accessor for SyncState);
      sub_1CF007CB8(v13, type metadata accessor for SyncState);
      v114 = v31[2];
      v36 = __OFADD__(v114, 1);
      v115 = v114 + 1;
      if (v36)
      {
        goto LABEL_121;
      }

      v31[2] = v115;
LABEL_85:
      *(v5 + 24) = v31;
      v26 += v102;
      if (!--v101)
      {
        goto LABEL_114;
      }
    }

    sub_1CF7C4B2C(v111, v106);
    v107 = sub_1CF7BF4F4(v105);
    if ((v112 & 1) != (v113 & 1))
    {
      sub_1CF9E8108();
      __break(1u);
      goto LABEL_129;
    }

LABEL_109:
    v31 = v130;
    if (v112)
    {
      goto LABEL_84;
    }

    goto LABEL_110;
  }

LABEL_114:
  v117 = v124;
  if (v124)
  {
    v31 = swift_allocObject();
    v31[2] = v117;
    v31[3] = v122;
    v26 = *(v5 + 72);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_116;
  }
}

uint64_t sub_1CF0674AC()
{

  return swift_deallocObject();
}

void *sub_1CF0674E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12 = 0;
  v13 = -1;
  v6 = swift_allocObject();
  v6[2] = &v12;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CF480F6C;
  *(v7 + 24) = v6;
  v11[4] = sub_1CF1C0B54;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1CEFFD02C;
  v11[3] = &block_descriptor_800;
  v8 = _Block_copy(v11);

  [v3 runIfPossible_];
  _Block_release(v8);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (v13 == 255)
    {

      return 0;
    }

    else
    {
      v10 = v12;
      if (v13)
      {
        v11[0] = v12;
        sub_1CF480F78(v12, 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        swift_willThrowTypedImpl();
      }

      sub_1CF480F84(v12, v13);
    }

    return v10;
  }

  return result;
}

void sub_1CF06771C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1CF9E57E8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1CF06779C(uint64_t a1, uint64_t a2)
{
  v11 = 1;
  v5 = swift_allocObject();
  v5[2] = &v11;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CF982328;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1CF1C0B54;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFFD02C;
  aBlock[3] = &block_descriptor_48;
  v7 = _Block_copy(aBlock);

  [v2 runIfPossible_];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF067934(uint64_t a1)
{
  v2 = *v1;
  v6 = a1;
  swift_beginAccess();

  v3 = *(v2 + 216);
  v5[0] = *(v2 + 200);
  v5[1] = v3;
  type metadata accessor for FSOrFPJob(255, v5);
  sub_1CF9E6E58();
  sub_1CF9E6E18();
  return swift_endAccess();
}

void sub_1CF0679E4(void *a1@<X8>)
{
  v3 = [*v1 itemID];
  v4 = [v3 identifier];

  *a1 = v4;
}

uint64_t sub_1CF067A50(uint64_t a1)
{
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v2 = v1;
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  v3 = sub_1CF9E8228();
  v2, v4, v5, v6, v7, v8, v9, v10;
  return v3;
}

id sub_1CF067B30(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  (*(*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x50) - 8) + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x60)], a1);
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1CF067BE8(void *a1)
{
  v1 = a1;
  v2 = sub_1CF067C24();

  return v2;
}

uint64_t sub_1CF067C98()
{
  v0 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v2 = v1;
  v3 = MEMORY[0x1D3868D90](v0);
  v2, v4, v5, v6, v7, v8, v9, v10;
  return v3;
}

void sub_1CF067D38(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v57 = v5;
  v6 = *(v5 + 84);
  v48 = swift_getAssociatedTypeWitness();
  v7 = *(v48 - 8);
  v56 = v7;
  v8 = *(v7 + 84);
  v47 = swift_getAssociatedTypeWitness();
  v9 = *(v47 - 8);
  v55 = v9;
  v49 = v8;
  v46 = *(v9 + 84);
  if (v8 <= v46)
  {
    v8 = *(v9 + 84);
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v8;
  }

  v50 = v10;
  v52 = v6;
  if (v10 > v6)
  {
    v6 = v10;
  }

  v11 = *(sub_1CF9E5CF8() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = *(v5 + 64);
  if (v13 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  v16 = *(v5 + 80);
  v17 = *(v9 + 80);
  v18 = *(v7 + 64);
  v19 = *(v11 + 80);
  v20 = *(v11 + 64);
  if (v6 <= v15)
  {
    v21 = v15;
  }

  else
  {
    v21 = v6;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  v23 = *(v7 + 80) & 0xF8 | v17 | 7;
  v24 = v18 + 7;
  v25 = ((((*(v9 + 64) + ((v17 + 8 + ((v18 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v26 = (v19 | 7) + 16;
  v27 = ((v19 + ((((((((v20 + ((v20 + v19 + ((v19 + 12) & ~v19)) & ~v19) + 12) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v19) + v20;
  if (v13)
  {
    v28 = ((v19 + ((((((((v20 + ((v20 + v19 + ((v19 + 12) & ~v19)) & ~v19) + 12) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v19) + v20;
  }

  else
  {
    v28 = v27 + 1;
  }

  v29 = ((((((((((((((v28 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + ((v26 + ((v14 + ((v14 + v16) & ~v16) + v23) & ~v23) + v25) & ~(v19 | 7)) + 335) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v22 >= a3)
  {
    v32 = 0;
  }

  else
  {
    if (((((((((((((((v28 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) + ((v26 + ((v14 + ((v14 + v16) & ~v16) + v23) & ~v23) + v25) & ~(v19 | 7)) + 335) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v30 = a3 - v22 + 1;
    }

    else
    {
      v30 = 2;
    }

    if (v30 >= 0x10000)
    {
      v31 = 4;
    }

    else
    {
      v31 = 2;
    }

    if (v30 < 0x100)
    {
      v31 = 1;
    }

    if (v30 >= 2)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }
  }

  if (a2 > v22)
  {
    if (v29)
    {
      v33 = 1;
    }

    else
    {
      v33 = a2 - v22;
    }

    if (v29)
    {
      v34 = ~v22 + a2;
      bzero(a1, v29);
      *a1 = v34;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        *(a1 + v29) = v33;
      }

      else
      {
        *(a1 + v29) = v33;
      }
    }

    else if (v32)
    {
      *(a1 + v29) = v33;
    }

    return;
  }

  if (v32 > 1)
  {
    v35 = a1;
    if (v32 != 2)
    {
      *(a1 + v29) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_51;
    }

    *(a1 + v29) = 0;
  }

  else
  {
    v35 = a1;
    if (v32)
    {
      *(a1 + v29) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_51;
    }
  }

  if (!a2)
  {
    return;
  }

LABEL_51:
  if (v52 == v22)
  {
    v36 = *(v57 + 56);
    v37 = a2;
    v38 = v52;
    v39 = AssociatedTypeWitness;
LABEL_53:

    v36(v35, v37, v38, v39);
    return;
  }

  v40 = ((((v35 + v14 + v16) & ~v16) + v14 + v23) & ~v23);
  if (v8 == v22)
  {
    if (v50 >= a2)
    {
      v38 = v49;
      if (v49 == v50)
      {
        v36 = *(v56 + 56);
        v35 = ((((v35 + v14 + v16) & ~v16) + v14 + v23) & ~v23);
        v37 = a2;
        v39 = v48;
      }

      else
      {
        v36 = *(v55 + 56);
        v35 = ((v17 + 8 + ((v40 + v24) & 0xFFFFFFFFFFFFFFF8)) & ~v17);
        v37 = a2;
        v38 = v46;
        v39 = v47;
      }

      goto LABEL_53;
    }

    if (!v25)
    {
      return;
    }

    v41 = ~v50;
LABEL_71:
    v44 = v41 + a2;
    bzero(v40, v25);
    *v40 = v44;
    return;
  }

  v42 = (v40 + v25);
  if ((v21 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *v42 = a2 & 0x7FFFFFFF;
      v42[1] = 0;
    }

    else
    {
      v42[1] = a2 - 1;
    }

    return;
  }

  v40 = ((v42 + v26) & ~(v19 | 7));
  if (v15 < a2)
  {
    v43 = (((((((((v27 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8;
    v25 = (v43 + 16);
    if (v43 == -16)
    {
      return;
    }

    v41 = ~v15;
    goto LABEL_71;
  }

  v45 = *(v12 + 56);

  v45((v40 + v19 + 12) & ~v19, a2);
}

uint64_t sub_1CF0682F8(int *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 84);
  v49 = swift_getAssociatedTypeWitness();
  v6 = *(v49 - 8);
  v54 = v6;
  v7 = *(v6 + 84);
  v48 = swift_getAssociatedTypeWitness();
  v8 = *(v48 - 8);
  v50 = v7;
  v47 = *(v8 + 84);
  if (v7 <= v47)
  {
    v9 = *(v8 + 84);
  }

  else
  {
    v9 = v7;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v52 = v5;
  if (v10 > v5)
  {
    v5 = v10;
  }

  v11 = *(sub_1CF9E5CF8() - 8);
  v12 = *(v11 + 84);
  v13 = *(v4 + 64);
  v14 = *(v4 + 80);
  v15 = *(v6 + 80);
  v16 = *(v8 + 80);
  v17 = *(v6 + 64);
  v18 = *(v11 + 80);
  if (v12 <= v5)
  {
    v20 = v5;
  }

  else
  {
    v20 = *(v11 + 84);
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v20;
  }

  if (v12)
  {
    v22 = 7;
  }

  else
  {
    v22 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v13 + v14;
  v24 = v15 & 0xF8 | v16 | 7;
  v25 = v17 + 7;
  v26 = ((((*(v8 + 64) + ((v16 + 8 + (v25 & 0xFFFFFFFFFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v27 = v18 | 7;
  v28 = (v18 | 7) + 16;
  v29 = v18 + 12;
  v30 = a1;
  if (v21 >= a2)
  {
    goto LABEL_41;
  }

  v19 = *(v11 + 64);
  v31 = ((((((v28 + ((v13 + (v23 & ~v14) + v24) & ~v24) + v26) & ~v27) + ((((((((((v22 + v19 + ((v18 + ((((((((v19 + ((v19 + v18 + (v29 & ~v18)) & ~v18) + 12) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 335) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v32 = v31 & 0xFFFFFFF8;
  if ((v31 & 0xFFFFFFF8) != 0)
  {
    v33 = 2;
  }

  else
  {
    v33 = a2 - v21 + 1;
  }

  if (v33 >= 0x10000)
  {
    v34 = 4;
  }

  else
  {
    v34 = 2;
  }

  if (v33 < 0x100)
  {
    v34 = 1;
  }

  if (v33 >= 2)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  if (v35 <= 1)
  {
    if (!v35)
    {
      goto LABEL_41;
    }

    v36 = *(a1 + v31);
    if (!v36)
    {
      goto LABEL_41;
    }

LABEL_38:
    v38 = v36 - 1;
    if (v32)
    {
      v38 = 0;
      v39 = *a1;
    }

    else
    {
      v39 = 0;
    }

    return v21 + (v39 | v38) + 1;
  }

  if (v35 == 2)
  {
    v36 = *(a1 + v31);
    if (v36)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v36 = *(a1 + v31);
    if (v36)
    {
      goto LABEL_38;
    }
  }

LABEL_41:
  if (v52 == v21)
  {
    v40 = *(v4 + 48);
    v41 = v52;
    v42 = AssociatedTypeWitness;
    goto LABEL_43;
  }

  v30 = ((((a1 + v23) & ~v14) + v13 + v24) & ~v24);
  if (v9 == v21)
  {
    v41 = v50;
    if (v50 == v10)
    {
      v40 = *(v54 + 48);
      v42 = v49;
    }

    else
    {
      v40 = *(v8 + 48);
      v30 = ((v16 + 8 + ((v30 + v25) & 0xFFFFFFFFFFFFFFF8)) & ~v16);
      v41 = v47;
      v42 = v48;
    }

LABEL_43:

    return v40(v30, v41, v42);
  }

  v43 = v30 + v26;
  if ((v20 & 0x80000000) != 0)
  {
    v45 = v29 + (&v43[v28] & ~v27);
    v46 = *(v11 + 48);

    return v46(v45 & ~v18);
  }

  else
  {
    v44 = *(v43 + 1);
    if (v44 >= 0xFFFFFFFF)
    {
      LODWORD(v44) = -1;
    }

    return (v44 + 1);
  }
}

void sub_1CF0687FC(uint64_t *a1@<X8>)
{
  v3 = [*v1 filename];
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v5 = v4;

  sub_1CEFE4E68();
  v6 = sub_1CF9E7668();
  v8 = v7;
  v5, v7, v9, v10, v11, v12, v13, v14;
  *a1 = v6;
  a1[1] = v8;
}

uint64_t sub_1CF0688E0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v6;
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v9;
  if (v5 == v8 && v7 == v9)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1CF9E8048();
  }

  v7, v9, v10, v11, v12, v13, v14, v15;
  v16, v19, v20, v21, v22, v23, v24, v25;
  return v18 & 1;
}

id sub_1CF0689B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CF0689E4();
  *a1 = result;
  return result;
}

id sub_1CF0689E4()
{
  v1 = [v0 itemID];
  v2 = [v1 identifier];

  v3 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v5 = v4;
  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;
  if (v3 == v6 && v5 == v7)
  {

    v5, v27, v28, v29, v30, v31, v32, v33;
    v8, v34, v35, v36, v37, v38, v39, v40;
    goto LABEL_11;
  }

  v10 = sub_1CF9E8048();

  v5, v11, v12, v13, v14, v15, v16, v17;
  v8, v18, v19, v20, v21, v22, v23, v24;
  if (v10)
  {
LABEL_11:
    v41 = [v0 itemID];
    v42 = [v41 identifier];
LABEL_12:
    v43 = v42;

    return v43;
  }

  if (![v0 isTrashed])
  {
    v41 = [v0 parentItemID];
    v42 = [v41 identifier];
    goto LABEL_12;
  }

  v25 = *MEMORY[0x1E6967280];

  return v25;
}

uint64_t sub_1CF068B74(uint64_t a1)
{
  v2 = *v1;
  swift_beginAccess();
  v3 = v1[2];
  type metadata accessor for JobLockRule(255, *(v2 + 80), *(v2 + 88), v4);

  swift_getWitnessTable();
  sub_1CF9E7068();
  swift_getWitnessTable();
  v5 = sub_1CF9E6BF8();
  v3, v6, v7, v8, v9, v10, v11, v12;
  return v5 & 1;
}

uint64_t sub_1CF068CFC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v174 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v175 = &v160 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v173 = &v160 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v167 = &v160 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v176 = &v160 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v164 = &v160 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v181 = &v160 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v161 = &v160 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v180 = &v160 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v160 = &v160 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v177 = &v160 - v26;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v183 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v187 = &v160 - v27;
  v28 = *(a2 + 16);
  v29 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v186 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v32 = &v160 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v160 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v168 = &v160 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v160 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v163 = &v160 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v162 = &v160 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v165 = &v160 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v172 = &v160 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v171 = &v160 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v170 = &v160 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v169 = &v160 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v179 = &v160 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v178 = &v160 - v58;
  v184 = v29;
  if (sub_1CF0537B0(v2, a1, v28, v29) & 1) != 0 && (sub_1CF527F60(a2))
  {
    v59 = 1;
    return v59 & 1;
  }

  v166 = v28;
  v185 = AssociatedTypeWitness;
  v60 = v187;
  v61 = &v187[*(TupleTypeMetadata2 + 48)];
  v182 = v5;
  v62 = *(v5 + 16);
  v62(v187, v2, a2);
  v62(v61, a1, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_70;
        }

        goto LABEL_60;
      }

      v77 = v174;
      v62(v174, v60, a2);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v83 = v185;
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v85 = &v61[*(TupleTypeMetadata3 + 48)];
        v86 = &v61[*(TupleTypeMetadata3 + 64)];
        goto LABEL_37;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_70;
        }

        v74 = v185;
        v75 = sub_1CF9E75D8();
        v76 = swift_getTupleTypeMetadata2();
        (*(*(v75 - 8) + 8))(&v61[*(v76 + 48)], v75);
        (*(v186 + 8))(v61, v74);
        (*(v182 + 8))(v60, a2);
LABEL_21:
        v59 = 1;
        return v59 & 1;
      }

      v77 = v173;
      v62(v173, v60, a2);
      if (!swift_getEnumCaseMultiPayload())
      {
        v66 = v185;
        v67 = v186;
        v119 = *(v186 + 32);
        v73 = v178;
        v119(v178, v77, v185);
        v70 = v179;
        v119(v179, v61, v66);
        (*(v182 + 8))(v60, a2);
LABEL_57:
        swift_getAssociatedConformanceWitness();
        v59 = sub_1CF9E6868();
        v132 = *(v67 + 8);
        v132(v70, v66);
        v132(v73, v66);
        return v59 & 1;
      }
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v77 = v177;
      v62(v177, v60, a2);
      v78 = sub_1CF9E75D8();
      v79 = swift_getTupleTypeMetadata2();
      v80 = &v77[*(v79 + 48)];
      v81 = swift_getEnumCaseMultiPayload();
      if (v81 <= 1)
      {
        if (!v81)
        {
          v154 = v160;
          v62(v160, v61, a2);
          v66 = v185;
          v67 = v186;
          if ((*(v186 + 48))(v80, 1, v185) != 1)
          {
            v158 = *(v67 + 32);
            v73 = v178;
            v158();
            v70 = v179;
            (v158)(v179, v154, v66);
            (*(v67 + 8))(v77, v66);
            v159 = *(v182 + 8);
            v159(v61, a2);
            v159(v187, a2);
            goto LABEL_57;
          }

          v60 = v187;
          v129 = v182;
          v128 = v154;
LABEL_67:
          v155 = *(v67 + 8);
          v155(v128, v66);
          v155(v77, v66);
          goto LABEL_61;
        }

        if (v81 == 1)
        {
          v110 = v180;
          v62(v180, v61, a2);
          v83 = v185;
          v111 = swift_getTupleTypeMetadata3();
          TupleTypeMetadata2 = *(v111 + 48);
          v112 = *(v111 + 64);
          v113 = v77;
          v114 = v186;
          v115 = *(v186 + 32);
          v115(v169, v113, v83);
          v115(v170, v110, v83);
          v94 = *(v114 + 8);
          v94(&v110[v112], v83);
          v94(&v110[TupleTypeMetadata2], v83);
          (*(*(v78 - 8) + 8))(v80, v78);
          v116 = *(v182 + 8);
          v116(v61, a2);
          v116(v187, a2);
          goto LABEL_44;
        }

        goto LABEL_68;
      }

      if (v81 == 2)
      {
        v62(v180, v61, a2);
        v183 = *(v79 + 48);
        TupleTypeMetadata2 = v61;
        v140 = v186;
        v141 = *(v186 + 32);
        v142 = v77;
        v143 = v185;
        v141(v35, v142, v185);
        v144 = v180;
        v141(v32, v180, v143);
        swift_getAssociatedConformanceWitness();
        v59 = sub_1CF9E6868();
        v145 = *(v140 + 8);
        v145(v32, v143);
        v145(v35, v143);
        v146 = *(*(v78 - 8) + 8);
        v146(&v144[v183], v78);
        v146(v80, v78);
        v147 = *(v182 + 8);
        v147(TupleTypeMetadata2, a2);
        v147(v187, a2);
        return v59 & 1;
      }

      if (v81 != 3)
      {
        if (v81 == 4)
        {
          (*(*(v78 - 8) + 8))(v80, v78);
          (*(v186 + 8))(v77, v185);
          v82 = *(v182 + 8);
          v82(v61, a2);
          v82(v187, a2);
          goto LABEL_21;
        }

LABEL_68:
        (*(*(v78 - 8) + 8))(v80, v78);
        (*(v186 + 8))(v77, v185);
        v60 = v187;
        goto LABEL_70;
      }

      v136 = v161;
      v62(v161, v61, a2);
      v134 = v185;
      v135 = v186;
      v148 = (*(v186 + 48))(v80, 1, v185);
      v137 = v136;
      v133 = v77;
      v60 = v187;
      if (v148 != 1)
      {
LABEL_64:
        v167 = v133;
        v149 = *(v135 + 32);
        v150 = v162;
        v149(v162, v80, v134);
        v151 = v163;
        v149(v163, v137, v134);
        v152 = *(v135 + 8);
        v152(v167, v134);
        v153 = *(v182 + 8);
        v153(v61, a2);
        v153(v60, a2);
        swift_getAssociatedConformanceWitness();
        v59 = sub_1CF9E6868();
        v152(v151, v134);
        v152(v150, v134);
        return v59 & 1;
      }

      goto LABEL_59;
    }

    v77 = v176;
    v62(v176, v60, a2);
    v95 = swift_getEnumCaseMultiPayload();
    if (v95 > 1)
    {
      if (v95 == 2)
      {
        v133 = v167;
        v62(v167, v61, a2);
        v134 = v185;
        sub_1CF9E75D8();
        v80 = &v133[*(swift_getTupleTypeMetadata2() + 48)];
        v135 = v186;
        v136 = v133;
        v137 = v77;
        if ((*(v186 + 48))(v80, 1, v134) != 1)
        {
          goto LABEL_64;
        }

LABEL_59:
        v138 = *(v135 + 8);
        v138(v136, v134);
        v138(v77, v134);
        goto LABEL_60;
      }

      if (v95 == 7)
      {
        (*(v186 + 8))(v77, v185);
LABEL_60:
        v129 = v182;
LABEL_61:
        v139 = *(v129 + 8);
        v139(v61, a2);
        v139(v60, a2);
        v59 = 1;
        return v59 & 1;
      }
    }

    else
    {
      if (!v95)
      {
        v62(v180, v61, a2);
        v66 = v185;
        v67 = v186;
        v68 = *(v186 + 32);
        v73 = v178;
        v68(v178, v77, v185);
        v70 = v179;
        v72 = v180;
        v71 = v179;
        goto LABEL_56;
      }

      if (v95 == 1)
      {
        v96 = v180;
        v62(v180, v61, a2);
        v83 = v185;
        v97 = swift_getTupleTypeMetadata3();
        v98 = *(v97 + 64);
        v99 = v186;
        v100 = *(v186 + 32);
        v100(v171, &v96[*(v97 + 48)], v83);
        v100(v172, &v96[v98], v83);
        v101 = v165;
        v100(v165, v77, v83);
        v102 = *(v99 + 8);
        v103 = v96;
        v104 = v101;
        v102(v103, v83);
        v105 = *(v182 + 8);
        v105(v61, a2);
        goto LABEL_47;
      }
    }

LABEL_30:
    (*(v186 + 8))(v77, v185);
    goto LABEL_70;
  }

  if (!EnumCaseMultiPayload)
  {
    v62(v181, v60, a2);
    v64 = swift_getEnumCaseMultiPayload();
    if (v64 != 2)
    {
      if (v64 == 5 || v64 == 3)
      {
        v65 = v180;
        v62(v180, v61, a2);
        v66 = v185;
        v67 = v186;
        v68 = *(v186 + 32);
        v69 = v178;
        v68(v178, v181, v185);
        v70 = v179;
        v71 = v179;
        v72 = v65;
        v73 = v69;
LABEL_56:
        v68(v71, v72, v66);
        v131 = *(v182 + 8);
        v131(v61, a2);
        v131(v60, a2);
        goto LABEL_57;
      }

      (*(v186 + 8))(v181, v185);
LABEL_70:
      (*(v183 + 8))(v60, TupleTypeMetadata2);
      v59 = 0;
      return v59 & 1;
    }

    v125 = v164;
    v62(v164, v61, a2);
    v66 = v185;
    v126 = sub_1CF9E75D8();
    v127 = *(swift_getTupleTypeMetadata2() + 48);
    v67 = v186;
    if ((*(v186 + 48))(&v125[v127], 1, v66) != 1)
    {
      (*(*(v126 - 8) + 8))(&v125[v127], v126);
      v156 = *(v67 + 8);
      v156(v125, v66);
      v156(v181, v66);
      goto LABEL_70;
    }

    v128 = v125;
    v77 = v181;
    v129 = v182;
    goto LABEL_67;
  }

  v77 = v175;
  v62(v175, v60, a2);
  v83 = v185;
  v87 = swift_getTupleTypeMetadata3();
  v85 = &v77[*(v87 + 48)];
  v86 = &v77[*(v87 + 64)];
  v88 = swift_getEnumCaseMultiPayload();
  if (v88 == 6)
  {
LABEL_37:
    v106 = v186;
    v107 = *(v186 + 32);
    v107(v40, v77, v83);
    v108 = v168;
    v107(v168, v61, v83);
    v109 = *(v106 + 8);
    v109(v86, v83);
    v109(v85, v83);
    (*(v182 + 8))(v187, a2);
    swift_getAssociatedConformanceWitness();
    v59 = sub_1CF9E6868();
    v109(v108, v83);
    v109(v40, v83);
    return v59 & 1;
  }

  if (v88 != 3)
  {
    if (v88 != 2)
    {
      v130 = *(v186 + 8);
      v130(v86, v83);
      v130(v85, v83);
      v130(v77, v83);
      goto LABEL_70;
    }

    v89 = sub_1CF9E75D8();
    v90 = *(swift_getTupleTypeMetadata2() + 48);
    v91 = v77;
    v92 = v186;
    v93 = *(v186 + 32);
    v93(v169, v91, v83);
    v93(v170, v61, v83);
    (*(*(v89 - 8) + 8))(&v61[v90], v89);
    v94 = *(v92 + 8);
    v94(v86, v83);
    v94(v85, v83);
    (*(v182 + 8))(v187, a2);
LABEL_44:
    swift_getAssociatedConformanceWitness();
    v117 = v169;
    v118 = v170;
    v59 = sub_1CF9E6868();
    v94(v118, v83);
    v94(v117, v83);
    return v59 & 1;
  }

  v120 = v186;
  v121 = *(v186 + 32);
  v121(v171, v85, v83);
  v121(v172, v86, v83);
  v104 = v165;
  v121(v165, v61, v83);
  v102 = *(v120 + 8);
  v102(v77, v83);
  v105 = *(v182 + 8);
LABEL_47:
  v105(v187, a2);
  swift_getAssociatedConformanceWitness();
  v122 = v171;
  v123 = sub_1CF9E6868();
  v102(v122, v83);
  if (v123)
  {
    v59 = 1;
    v124 = v172;
  }

  else
  {
    v124 = v172;
    v59 = sub_1CF9E6868();
  }

  v102(v104, v83);
  v102(v124, v83);
  return v59 & 1;
}