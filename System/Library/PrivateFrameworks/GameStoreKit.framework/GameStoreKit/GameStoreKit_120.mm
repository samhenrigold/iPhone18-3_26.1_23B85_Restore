void sub_24F23EAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void))
{
  *&v151 = a3;
  v139 = a1;
  *&v150 = sub_24F92AAE8();
  v7 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v149 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F92A078();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v14 = *(Strong + qword_27F22F198);
  if (!v14)
  {
LABEL_88:

    return;
  }

  v134 = qword_27F22F198;
  v144 = Strong;
  v15 = *(Strong + qword_27F39C7D8);
  v133 = a5;
  v137 = a4;
  if (v15)
  {
    *v12 = 0;
    (*(v10 + 104))(v12, *MEMORY[0x277D22288], v9);

    sub_24F92A0C8();
    (*(v10 + 8))(v12, v9);
  }

  else
  {
  }

  v16 = MEMORY[0x277D84F90];
  v143 = sub_24E60986C(MEMORY[0x277D84F90]);
  v135 = sub_24E60ACC8(v16);
  v17 = *(v139 + 16);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v148 = qword_27F39C780;
  v22 = *v137;
  v132 = qword_27F22F1D8;
  v140 = v17;

  v152 = v14;
  v147 = v22;
  swift_beginAccess();
  v23 = v144;
  swift_beginAccess();
  v24 = 0;
  v136 = 0;
  v25 = ((v19 + 63) >> 6);
  v146 = (v7 + 8);
  v145 = xmmword_24F93A400;
  v138 = v25;
  while (1)
  {
    if (v21)
    {
      v26 = v152;
    }

    else
    {
      v26 = v152;
      do
      {
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_91;
        }

        if (v27 >= v25)
        {
          goto LABEL_33;
        }

        v21 = *(v18 + 8 * v27);
        ++v24;
      }

      while (!v21);
      v24 = v27;
    }

    v28 = __clz(__rbit64(v21)) | (v24 << 6);
    v29 = v140;
    sub_24E65864C(*(v140 + 48) + 40 * v28, &v160);
    v30 = *(*(v29 + 56) + 8 * v28);
    v141 = v160;
    v31 = v162;
    v142 = v161;
    v32 = *(&v161 + 1);

    if (!v32)
    {
      break;
    }

    v21 &= v21 - 1;
    v160 = v141;
    v161 = v142;
    v162 = v31;
    if (v30[OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched])
    {
      if (!*(*(v26 + v147) + 16))
      {
        goto LABEL_21;
      }

      sub_24E76D934(&v160);
      if ((v33 & 1) == 0)
      {

LABEL_21:
        v34 = v18;
        v35 = v23;
        v36 = v149;
        sub_24F23B9E0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = v145;
        sub_24F9283A8();
        *(&v156 + 1) = MEMORY[0x277D84030];
        *&v155 = swift_allocObject();
        sub_24E65864C(&v160, v155 + 16);
        sub_24F928438();
        sub_24E601704(&v155, &qword_27F2129B0, &unk_24F945320);
        v37 = v150;
        sub_24F92A5A8();

        v38 = v36;
        v23 = v35;
        v18 = v34;
        v25 = v138;
        (*v146)(v38, v37);
        goto LABEL_22;
      }

      v46 = v136;
      v47 = Shelf.mergingWith(_:)(v30);
      v136 = v46;
      if (!v46)
      {
        v48 = v47;
        v49 = v143;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v155 = v49;
        sub_24E81C630(v48, &v160, isUniquelyReferenced_nonNull_native);

        goto LABEL_30;
      }

      v53 = v135;
      v54 = swift_isUniquelyReferenced_nonNull_native();
      *&v155 = v53;
      sub_24E81CAA8(v136, &v160, v54);

      v135 = v155;
      sub_24E6585F8(&v160);
      v136 = 0;
    }

    else
    {
      v39 = *(v23 + v148);
      v40 = v143;
      if (!*(v39 + 16))
      {
        goto LABEL_29;
      }

      v41 = sub_24E76D934(&v160);
      if ((v42 & 1) == 0)
      {

LABEL_29:

        v51 = swift_isUniquelyReferenced_nonNull_native();
        *&v155 = v40;
        sub_24E81C630(v30, &v160, v51);
LABEL_30:
        v143 = v155;
        goto LABEL_31;
      }

      v43 = *(*(v39 + 56) + 8 * v41);

      sub_24E65864C(v43 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v153);

      v155 = v153[0];
      v156 = v153[1];
      v157 = v154;
      v44 = Shelf.withId(_:)(&v155);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      *&v153[0] = v40;
      sub_24E81C630(v44, &v160, v45);
      v143 = *&v153[0];
      sub_24E6585F8(&v155);
LABEL_31:
      v52 = v132;
      swift_beginAccess();
      sub_24F7A58DC(&v160, &v155);
      sub_24E601704(&v155, &qword_27F235830, &qword_24F93B8C0);
      swift_endAccess();
      sub_24F23404C(*(*(v23 + v52) + 16) != 0);

LABEL_22:
      sub_24E6585F8(&v160);
    }
  }

LABEL_33:

  v55 = *(v139 + 24);
  v58 = *(v55 + 64);
  v57 = v55 + 64;
  v56 = v58;
  v59 = 1 << *(*(v139 + 24) + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & v56;
  v62 = (v59 + 63) >> 6;
  *&v142 = *(v139 + 24);

  v63 = 0;
  *&v141 = v57;
  v140 = v62;
  if (v61)
  {
    while (1)
    {
LABEL_43:
      while (1)
      {
        v69 = __clz(__rbit64(v61)) | (v63 << 6);
        v70 = (*(v142 + 48) + 16 * v69);
        v71 = *v70;
        v72 = v70[1];
        v73 = *(*(v142 + 56) + 8 * v69);
        v74 = *(v152 + v147);
        v61 &= v61 - 1;
        *&v155 = *v70;
        *(&v155 + 1) = v72;
        swift_bridgeObjectRetain_n();
        v75 = v73;

        sub_24F92C7F8();
        if (*(v74 + 16))
        {
          break;
        }

        sub_24E6585F8(&v160);

LABEL_38:
        v64 = v149;
        sub_24F23B9E0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        v65 = v73;
        *(swift_allocObject() + 16) = v145;
        sub_24F9283A8();
        *(&v161 + 1) = MEMORY[0x277D837D0];
        *&v160 = v71;
        *(&v160 + 1) = v72;
        v23 = v144;
        sub_24F928458();
        sub_24E601704(&v160, &qword_27F2129B0, &unk_24F945320);
        v66 = v150;
        sub_24F92A5A8();

        v67 = v65;
        v62 = v140;

        (*v146)(v64, v66);
        v57 = v141;
        if (!v61)
        {
          goto LABEL_39;
        }
      }

      sub_24E76D934(&v160);
      v77 = v76;
      sub_24E6585F8(&v160);

      if ((v77 & 1) == 0)
      {
        goto LABEL_38;
      }

      *&v155 = v71;
      *(&v155 + 1) = v72;

      sub_24F92C7F8();
      v78 = v73;
      v79 = v135;
      v80 = swift_isUniquelyReferenced_nonNull_native();
      *&v155 = v79;
      v138 = v73;
      sub_24E81CAA8(v73, &v160, v80);
      sub_24E6585F8(&v160);
      v81 = v155;
      swift_beginAccess();
      *&v160 = v71;
      *(&v160 + 1) = v72;

      sub_24F92C7F8();
      sub_24F24655C(&v155, &v160);
      sub_24E6585F8(&v155);
      v135 = v81;
      if (*(&v161 + 1))
      {
        v155 = v160;
        v156 = v161;
        v157 = v162;
        sub_24F92C7D8();
        sub_24E6585F8(&v155);
        swift_dynamicCast();
      }

      else
      {
        v158 = 0;
        v159 = 0;
      }

      v57 = v141;

      swift_endAccess();

      sub_24F23404C(*(*(v23 + v132) + 16) != 0);

      if (!v61)
      {
        goto LABEL_39;
      }
    }
  }

  while (1)
  {
LABEL_39:
    v68 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    if (v68 >= v62)
    {
      break;
    }

    v61 = *(v57 + 8 * v68);
    ++v63;
    if (v61)
    {
      v63 = v68;
      goto LABEL_43;
    }
  }

  v82 = v143 + 64;
  v83 = 1 << *(v143 + 32);
  v84 = -1;
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  v85 = v84 & *(v143 + 64);
  v86 = (v83 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v87 = 0;
  while (1)
  {
    if (!v85)
    {
      while (1)
      {
        v88 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          goto LABEL_92;
        }

        if (v88 >= v86)
        {
          goto LABEL_70;
        }

        v85 = *(v82 + 8 * v88);
        ++v87;
        if (v85)
        {
          v87 = v88;
          break;
        }
      }
    }

    v89 = __clz(__rbit64(v85)) | (v87 << 6);
    v90 = v143;
    sub_24E65864C(*(v143 + 48) + 40 * v89, &v160);
    v91 = *(*(v90 + 56) + 8 * v89);
    v150 = v160;
    v92 = v162;
    v151 = v161;
    v93 = *(&v161 + 1);

    if (!v93)
    {
      break;
    }

    v160 = v150;
    v161 = v151;
    v162 = v92;
    v94 = v148;
    swift_beginAccess();

    v95 = swift_isUniquelyReferenced_nonNull_native();
    *&v153[0] = *(v23 + v94);
    v96 = *&v153[0];
    *(v23 + v94) = 0x8000000000000000;
    v97 = sub_24E76D934(&v160);
    v99 = *(v96 + 16);
    v100 = (v98 & 1) == 0;
    v101 = __OFADD__(v99, v100);
    v102 = v99 + v100;
    if (v101)
    {
      goto LABEL_94;
    }

    v103 = v98;
    if (*(v96 + 24) >= v102)
    {
      if ((v95 & 1) == 0)
      {
        v109 = v97;
        sub_24E8ADF84();
        v97 = v109;
      }
    }

    else
    {
      sub_24E899884(v102, v95);
      v97 = sub_24E76D934(&v160);
      if ((v103 & 1) != (v104 & 1))
      {
        goto LABEL_96;
      }
    }

    v105 = *&v153[0];
    if (v103)
    {
      *(*(*&v153[0] + 56) + 8 * v97) = v91;

      sub_24E6585F8(&v160);
    }

    else
    {
      *(*&v153[0] + 8 * (v97 >> 6) + 64) |= 1 << v97;
      v106 = v97;
      sub_24E65864C(&v160, v105[6] + 40 * v97);
      *(v105[7] + 8 * v106) = v91;
      sub_24E6585F8(&v160);
      v107 = v105[2];
      v101 = __OFADD__(v107, 1);
      v108 = v107 + 1;
      if (v101)
      {
        goto LABEL_95;
      }

      v105[2] = v108;
    }

    v85 &= v85 - 1;
    *(v23 + v148) = v105;
    swift_endAccess();
  }

LABEL_70:

  v110 = *(v23 + v134);
  if (v110)
  {
    v111 = *v137;
    swift_beginAccess();

    v113 = v136;
    sub_24F23A4D8(v112, v144);
    v115 = v114;
    v136 = v113;

    *(v110 + v111) = v115;
    v23 = v144;
  }

  v116 = *(v23 + qword_27F22F1A0);
  v117 = MEMORY[0x277D84F90];
  *&v153[0] = MEMORY[0x277D84F90];
  v118 = *(v116 + 16);

  if (!v118)
  {
LABEL_83:

    v125 = v143;
    *&v160 = v117;
    *(&v160 + 1) = v143;
    *&v161 = v135;
    *(&v161 + 1) = v139;
    v162 = 0;

    sub_24F92AD88();
    v126 = v162;

    v127 = *(v125 + 16);
    if (v127)
    {
      v128 = sub_24EAEACA0(*(v125 + 16), 0);
      v129 = sub_24EAEAC98();
      v130 = v160;

      sub_24E6586B4(v130);
      if (v129 == v127)
      {
LABEL_87:
        sub_24F23A070(v128, v133);

        goto LABEL_88;
      }

      __break(1u);
    }

    v128 = MEMORY[0x277D84F90];
    goto LABEL_87;
  }

  v119 = 0;
  *&v151 = v118 - 1;
LABEL_74:
  v120 = v116 + 32 + 40 * v119;
  v121 = v119;
  v122 = v148;
  while (v121 < *(v116 + 16))
  {
    sub_24E65864C(v120, &v160);
    if (*(*(v23 + v122) + 16))
    {

      sub_24E76D934(&v160);
      if (v123)
      {

        v124 = sub_24E6585F8(&v160);
        MEMORY[0x253050F00](v124);
        if (*((*&v153[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v153[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        v119 = v121 + 1;
        sub_24F92B638();
        v117 = *&v153[0];
        if (v151 != v121)
        {
          goto LABEL_74;
        }

        goto LABEL_83;
      }
    }

    ++v121;
    sub_24E6585F8(&v160);
    v120 += 40;
    if (v118 == v121)
    {
      goto LABEL_83;
    }
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  sub_24F92CF88();
  __break(1u);
}

void sub_24F23FCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v143 = a3;
  v134 = a1;
  *&v142 = sub_24F92AAE8();
  v3 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v141 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92A078();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = Strong;
  if (!*(Strong + qword_27F22F198))
  {
    goto LABEL_88;
  }

  v130 = qword_27F22F198;
  if (*(Strong + qword_27F39C7D8))
  {
    *v8 = 0;
    (*(v6 + 104))(v8, *MEMORY[0x277D22288], v5);

    sub_24F92A0C8();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
  }

  v11 = MEMORY[0x277D84F90];
  v137 = sub_24E60986C(MEMORY[0x277D84F90]);
  v131 = sub_24E60ACC8(v11);
  v12 = *(v134 + 16);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = qword_27F39C780;
  v129 = qword_27F22F1D8;
  v135 = v12;

  v140 = v17;
  swift_beginAccess();
  v18 = 0;
  v132 = 0;
  v19 = (v14 + 63) >> 6;
  v139 = (v3 + 8);
  v138 = xmmword_24F93A400;
  v133 = v13;
  while (2)
  {
    if (v16)
    {
      goto LABEL_14;
    }

    do
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        sub_24F92CF88();
        __break(1u);
        return;
      }

      if (v20 >= v19)
      {
        goto LABEL_29;
      }

      v16 = *(v13 + 8 * v20);
      ++v18;
    }

    while (!v16);
    v18 = v20;
LABEL_14:
    v21 = __clz(__rbit64(v16)) | (v18 << 6);
    v22 = v135;
    sub_24E65864C(*(v135 + 48) + 40 * v21, &v153);
    v23 = *(*(v22 + 56) + 8 * v21);
    v136 = v153;
    v24 = v155;
    v145 = v154;
    v25 = *(&v154 + 1);

    if (v25)
    {
      v16 &= v16 - 1;
      v153 = v136;
      v154 = v145;
      v155 = v24;
      if (v23[OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched])
      {
        v26 = off_28620E0A8;
        type metadata accessor for SearchChartsAndCategoriesPage(0);
        v26();
        if (!*(v27 + 16) || (sub_24E76D934(&v153), (v28 & 1) == 0))
        {

          v29 = v141;
          sub_24F23B9E0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
          sub_24F928468();
          *(swift_allocObject() + 16) = v138;
          sub_24F9283A8();
          *(&v149 + 1) = MEMORY[0x277D84030];
          *&v148 = swift_allocObject();
          sub_24E65864C(&v153, v148 + 16);
          sub_24F928438();
          sub_24E601704(&v148, &qword_27F2129B0, &unk_24F945320);
          v30 = v142;
          sub_24F92A5A8();

          (*v139)(v29, v30);
          sub_24E6585F8(&v153);
          goto LABEL_19;
        }

        v38 = v132;
        v39 = Shelf.mergingWith(_:)(v23);
        v132 = v38;
        if (!v38)
        {
          v40 = v39;
          v41 = v137;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v148 = v41;
          sub_24E81C630(v40, &v153, isUniquelyReferenced_nonNull_native);

          v137 = v148;
          v13 = v133;
          goto LABEL_27;
        }

        v46 = v131;
        v47 = swift_isUniquelyReferenced_nonNull_native();
        *&v148 = v46;
        sub_24E81CAA8(v132, &v153, v47);

        v131 = v148;
        sub_24E6585F8(&v153);
        v132 = 0;
LABEL_19:
        v13 = v133;
      }

      else
      {
        v31 = *(v10 + v140);
        if (*(v31 + 16))
        {

          v32 = sub_24E76D934(&v153);
          if (v33)
          {
            v34 = *(*(v31 + 56) + 8 * v32);

            sub_24E65864C(v34 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v146);

            v148 = v146[0];
            v149 = v146[1];
            v150 = v147;
            v35 = Shelf.withId(_:)(&v148);
            v36 = v137;
            v37 = swift_isUniquelyReferenced_nonNull_native();
            *&v146[0] = v36;
            sub_24E81C630(v35, &v153, v37);
            v137 = *&v146[0];
            sub_24E6585F8(&v148);
            goto LABEL_27;
          }
        }

        v43 = v137;
        v44 = swift_isUniquelyReferenced_nonNull_native();
        *&v148 = v43;
        sub_24E81C630(v23, &v153, v44);
        v137 = v148;
LABEL_27:
        v45 = v129;
        swift_beginAccess();
        sub_24F7A58DC(&v153, &v148);
        sub_24E601704(&v148, &qword_27F235830, &qword_24F93B8C0);
        swift_endAccess();
        sub_24F23404C(*(*(v10 + v45) + 16) != 0);

        sub_24E6585F8(&v153);
      }

      continue;
    }

    break;
  }

LABEL_29:

  v48 = *(v134 + 24);
  v51 = *(v48 + 64);
  v50 = v48 + 64;
  v49 = v51;
  v52 = 1 << *(*(v134 + 24) + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & v49;
  v55 = (v52 + 63) >> 6;
  *&v136 = *(v134 + 24);

  v56 = 0;
  *&v145 = v10;
  v135 = v50;
  v133 = v55;
  if (v54)
  {
    while (1)
    {
LABEL_39:
      while (1)
      {
        v62 = __clz(__rbit64(v54));
        v54 &= v54 - 1;
        v63 = v62 | (v56 << 6);
        v64 = (*(v136 + 48) + 16 * v63);
        v66 = *v64;
        v65 = v64[1];
        v67 = *(*(v136 + 56) + 8 * v63);
        v68 = off_28620E0A8;
        type metadata accessor for SearchChartsAndCategoriesPage(0);
        v68();
        v70 = v69;
        *&v148 = v66;
        *(&v148 + 1) = v65;
        swift_bridgeObjectRetain_n();
        v71 = v67;
        sub_24F92C7F8();
        if (*(v70 + 16))
        {
          break;
        }

        sub_24E6585F8(&v153);

LABEL_34:
        v57 = v67;
        v58 = v141;
        sub_24F23B9E0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = v138;
        sub_24F9283A8();
        *(&v154 + 1) = MEMORY[0x277D837D0];
        *&v153 = v66;
        *(&v153 + 1) = v65;
        sub_24F928458();
        sub_24E601704(&v153, &qword_27F2129B0, &unk_24F945320);
        v59 = v142;
        sub_24F92A5A8();

        v60 = v57;
        v55 = v133;

        (*v139)(v58, v59);
        v10 = v145;
        v50 = v135;
        if (!v54)
        {
          goto LABEL_35;
        }
      }

      sub_24E76D934(&v153);
      v73 = v72;
      sub_24E6585F8(&v153);

      if ((v73 & 1) == 0)
      {
        goto LABEL_34;
      }

      *&v148 = v66;
      *(&v148 + 1) = v65;

      sub_24F92C7F8();
      v74 = v67;
      v75 = v131;
      v76 = swift_isUniquelyReferenced_nonNull_native();
      *&v148 = v75;
      v128 = v67;
      sub_24E81CAA8(v67, &v153, v76);
      sub_24E6585F8(&v153);
      v77 = v148;
      v10 = v145;
      swift_beginAccess();
      *&v153 = v66;
      *(&v153 + 1) = v65;

      sub_24F92C7F8();
      sub_24F24655C(&v148, &v153);
      sub_24E6585F8(&v148);
      v131 = v77;
      if (*(&v154 + 1))
      {
        v148 = v153;
        v149 = v154;
        v150 = v155;
        sub_24F92C7D8();
        sub_24E6585F8(&v148);
        swift_dynamicCast();
      }

      else
      {
        v151 = 0;
        v152 = 0;
      }

      v50 = v135;

      swift_endAccess();

      sub_24F23404C(*(*(v10 + v129) + 16) != 0);

      if (!v54)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
LABEL_35:
    v61 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
      goto LABEL_91;
    }

    if (v61 >= v55)
    {
      break;
    }

    v54 = *(v50 + 8 * v61);
    ++v56;
    if (v54)
    {
      v56 = v61;
      goto LABEL_39;
    }
  }

  v78 = v137 + 64;
  v79 = 1 << *(v137 + 32);
  v80 = -1;
  if (v79 < 64)
  {
    v80 = ~(-1 << v79);
  }

  v81 = v80 & *(v137 + 64);
  v82 = (v79 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v83 = 0;
  while (1)
  {
    if (!v81)
    {
      while (1)
      {
        v84 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          goto LABEL_92;
        }

        if (v84 >= v82)
        {
          goto LABEL_67;
        }

        v81 = *(v78 + 8 * v84);
        ++v83;
        if (v81)
        {
          v83 = v84;
          break;
        }
      }
    }

    v85 = __clz(__rbit64(v81)) | (v83 << 6);
    v86 = v137;
    sub_24E65864C(*(v137 + 48) + 40 * v85, &v153);
    v87 = *(*(v86 + 56) + 8 * v85);
    v142 = v153;
    v88 = v155;
    v143 = v154;
    v89 = *(&v154 + 1);

    if (!v89)
    {
      break;
    }

    v153 = v142;
    v154 = v143;
    v155 = v88;
    v10 = v145;
    v90 = v140;
    swift_beginAccess();

    v91 = swift_isUniquelyReferenced_nonNull_native();
    *&v146[0] = *(v10 + v90);
    v92 = *&v146[0];
    *(v10 + v90) = 0x8000000000000000;
    v93 = sub_24E76D934(&v153);
    v95 = *(v92 + 16);
    v96 = (v94 & 1) == 0;
    v97 = __OFADD__(v95, v96);
    v98 = v95 + v96;
    if (v97)
    {
      goto LABEL_94;
    }

    v99 = v94;
    if (*(v92 + 24) >= v98)
    {
      if ((v91 & 1) == 0)
      {
        v105 = v93;
        sub_24E8ADF84();
        v93 = v105;
      }
    }

    else
    {
      sub_24E899884(v98, v91);
      v93 = sub_24E76D934(&v153);
      if ((v99 & 1) != (v100 & 1))
      {
        goto LABEL_97;
      }
    }

    v101 = *&v146[0];
    if (v99)
    {
      *(*(*&v146[0] + 56) + 8 * v93) = v87;

      sub_24E6585F8(&v153);
    }

    else
    {
      *(*&v146[0] + 8 * (v93 >> 6) + 64) |= 1 << v93;
      v102 = v93;
      sub_24E65864C(&v153, v101[6] + 40 * v93);
      *(v101[7] + 8 * v102) = v87;
      sub_24E6585F8(&v153);
      v103 = v101[2];
      v97 = __OFADD__(v103, 1);
      v104 = v103 + 1;
      if (v97)
      {
        goto LABEL_95;
      }

      v101[2] = v104;
      v10 = v145;
    }

    v81 &= v81 - 1;
    *(v10 + v140) = v101;
    swift_endAccess();
  }

  v10 = v145;
LABEL_67:
  v106 = v137;

  v107 = *(v10 + v130);
  if (v107)
  {
    v108 = qword_27F39DC30;
    swift_beginAccess();

    v110 = v132;
    sub_24F23A4D8(v109, v145);
    v112 = v111;
    v132 = v110;

    *(v107 + v108) = v112;
    v10 = v145;
  }

  v113 = *(v10 + qword_27F22F1A0);
  v114 = MEMORY[0x277D84F90];
  *&v146[0] = MEMORY[0x277D84F90];
  v115 = *(v113 + 16);

  if (v115)
  {
    v116 = 0;
    *&v145 = v115 - 1;
LABEL_71:
    v117 = v113 + 32 + 40 * v116;
    v118 = v116;
    v119 = v140;
    while (v118 < *(v113 + 16))
    {
      sub_24E65864C(v117, &v153);
      if (*(*(v10 + v119) + 16))
      {

        sub_24E76D934(&v153);
        if (v120)
        {

          v121 = sub_24E6585F8(&v153);
          MEMORY[0x253050F00](v121);
          if (*((*&v146[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v146[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          v116 = v118 + 1;
          sub_24F92B638();
          v114 = *&v146[0];
          v122 = v145 == v118;
          v106 = v137;
          if (v122)
          {
            goto LABEL_83;
          }

          goto LABEL_71;
        }
      }

      ++v118;
      sub_24E6585F8(&v153);
      v117 += 40;
      if (v115 == v118)
      {
        v106 = v137;
        goto LABEL_83;
      }
    }

    goto LABEL_93;
  }

LABEL_83:

  *&v153 = v114;
  *(&v153 + 1) = v106;
  *&v154 = v131;
  *(&v154 + 1) = v134;
  v155 = 0;

  sub_24F92AD88();
  v123 = v155;

  v124 = *(v106 + 16);
  if (v124)
  {
    v125 = sub_24EAEACA0(*(v106 + 16), 0);
    v126 = sub_24EAEAC98();
    v127 = v153;

    sub_24E6586B4(v127);
    if (v126 != v124)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v125 = MEMORY[0x277D84F90];
  }

  sub_24F23A070(v125, type metadata accessor for SearchChartsAndCategoriesPage);

LABEL_88:
}

void sub_24F240F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v145 = a3;
  v136 = a1;
  *&v144 = sub_24F92AAE8();
  v3 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v143 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92A078();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = Strong;
  if (!*(Strong + qword_27F22F198))
  {
    goto LABEL_88;
  }

  v132 = qword_27F22F198;
  if (*(Strong + qword_27F39C7D8))
  {
    *v8 = 0;
    (*(v6 + 104))(v8, *MEMORY[0x277D22288], v5);

    sub_24F92A0C8();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
  }

  v11 = MEMORY[0x277D84F90];
  v139 = sub_24E60986C(MEMORY[0x277D84F90]);
  v133 = sub_24E60ACC8(v11);
  v12 = *(v136 + 16);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = qword_27F39C780;
  v131 = qword_27F22F1D8;
  v137 = v12;

  v142 = v17;
  swift_beginAccess();
  v18 = 0;
  v134 = 0;
  v19 = (v14 + 63) >> 6;
  v141 = (v3 + 8);
  v140 = xmmword_24F93A400;
  v135 = v13;
  while (2)
  {
    if (v16)
    {
      goto LABEL_14;
    }

    do
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        sub_24F92CF88();
        __break(1u);
        return;
      }

      if (v20 >= v19)
      {
        goto LABEL_29;
      }

      v16 = *(v13 + 8 * v20);
      ++v18;
    }

    while (!v16);
    v18 = v20;
LABEL_14:
    v21 = __clz(__rbit64(v16)) | (v18 << 6);
    v22 = v137;
    sub_24E65864C(*(v137 + 48) + 40 * v21, &v155);
    v23 = *(*(v22 + 56) + 8 * v21);
    v138 = v155;
    v24 = v157;
    v147 = v156;
    v25 = *(&v156 + 1);

    if (v25)
    {
      v16 &= v16 - 1;
      v155 = v138;
      v156 = v147;
      v157 = v24;
      if (v23[OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched])
      {
        v26 = off_28620C700;
        v27 = type metadata accessor for ArcadeSeeAllGamesPage(0);
        v26(v27, &protocol witness table for GenericPage);
        if (!*(v28 + 16) || (sub_24E76D934(&v155), (v29 & 1) == 0))
        {

          v30 = v143;
          sub_24F23B9E0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
          sub_24F928468();
          *(swift_allocObject() + 16) = v140;
          sub_24F9283A8();
          *(&v151 + 1) = MEMORY[0x277D84030];
          *&v150 = swift_allocObject();
          sub_24E65864C(&v155, v150 + 16);
          sub_24F928438();
          sub_24E601704(&v150, &qword_27F2129B0, &unk_24F945320);
          v31 = v144;
          sub_24F92A5A8();

          (*v141)(v30, v31);
          sub_24E6585F8(&v155);
          goto LABEL_19;
        }

        v39 = v134;
        v40 = Shelf.mergingWith(_:)(v23);
        v134 = v39;
        if (!v39)
        {
          v41 = v40;
          v42 = v139;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v150 = v42;
          sub_24E81C630(v41, &v155, isUniquelyReferenced_nonNull_native);

          v139 = v150;
          v13 = v135;
          goto LABEL_27;
        }

        v47 = v133;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        *&v150 = v47;
        sub_24E81CAA8(v134, &v155, v48);

        v133 = v150;
        sub_24E6585F8(&v155);
        v134 = 0;
LABEL_19:
        v13 = v135;
      }

      else
      {
        v32 = *(v10 + v142);
        if (*(v32 + 16))
        {

          v33 = sub_24E76D934(&v155);
          if (v34)
          {
            v35 = *(*(v32 + 56) + 8 * v33);

            sub_24E65864C(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v148);

            v150 = v148[0];
            v151 = v148[1];
            v152 = v149;
            v36 = Shelf.withId(_:)(&v150);
            v37 = v139;
            v38 = swift_isUniquelyReferenced_nonNull_native();
            *&v148[0] = v37;
            sub_24E81C630(v36, &v155, v38);
            v139 = *&v148[0];
            sub_24E6585F8(&v150);
            goto LABEL_27;
          }
        }

        v44 = v139;
        v45 = swift_isUniquelyReferenced_nonNull_native();
        *&v150 = v44;
        sub_24E81C630(v23, &v155, v45);
        v139 = v150;
LABEL_27:
        v46 = v131;
        swift_beginAccess();
        sub_24F7A58DC(&v155, &v150);
        sub_24E601704(&v150, &qword_27F235830, &qword_24F93B8C0);
        swift_endAccess();
        sub_24F23404C(*(*(v10 + v46) + 16) != 0);

        sub_24E6585F8(&v155);
      }

      continue;
    }

    break;
  }

LABEL_29:

  v49 = *(v136 + 24);
  v52 = *(v49 + 64);
  v51 = v49 + 64;
  v50 = v52;
  v53 = 1 << *(*(v136 + 24) + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & v50;
  v56 = (v53 + 63) >> 6;
  *&v138 = *(v136 + 24);

  v57 = 0;
  *&v147 = v10;
  v137 = v51;
  v135 = v56;
  if (v55)
  {
    while (1)
    {
LABEL_39:
      while (1)
      {
        v63 = __clz(__rbit64(v55));
        v55 &= v55 - 1;
        v64 = v63 | (v57 << 6);
        v65 = (*(v138 + 48) + 16 * v64);
        v67 = *v65;
        v66 = v65[1];
        v68 = *(*(v138 + 56) + 8 * v64);
        v69 = off_28620C700;
        v70 = type metadata accessor for ArcadeSeeAllGamesPage(0);
        v69(v70, &protocol witness table for GenericPage);
        v72 = v71;
        *&v150 = v67;
        *(&v150 + 1) = v66;
        swift_bridgeObjectRetain_n();
        v73 = v68;
        sub_24F92C7F8();
        if (*(v72 + 16))
        {
          break;
        }

        sub_24E6585F8(&v155);

LABEL_34:
        v58 = v68;
        v59 = v143;
        sub_24F23B9E0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = v140;
        sub_24F9283A8();
        *(&v156 + 1) = MEMORY[0x277D837D0];
        *&v155 = v67;
        *(&v155 + 1) = v66;
        sub_24F928458();
        sub_24E601704(&v155, &qword_27F2129B0, &unk_24F945320);
        v60 = v144;
        sub_24F92A5A8();

        v61 = v58;
        v56 = v135;

        (*v141)(v59, v60);
        v10 = v147;
        v51 = v137;
        if (!v55)
        {
          goto LABEL_35;
        }
      }

      sub_24E76D934(&v155);
      v75 = v74;
      sub_24E6585F8(&v155);

      if ((v75 & 1) == 0)
      {
        goto LABEL_34;
      }

      *&v150 = v67;
      *(&v150 + 1) = v66;

      sub_24F92C7F8();
      v76 = v68;
      v77 = v133;
      v78 = swift_isUniquelyReferenced_nonNull_native();
      *&v150 = v77;
      v130 = v68;
      sub_24E81CAA8(v68, &v155, v78);
      sub_24E6585F8(&v155);
      v79 = v150;
      v10 = v147;
      swift_beginAccess();
      *&v155 = v67;
      *(&v155 + 1) = v66;

      sub_24F92C7F8();
      sub_24F24655C(&v150, &v155);
      sub_24E6585F8(&v150);
      v133 = v79;
      if (*(&v156 + 1))
      {
        v150 = v155;
        v151 = v156;
        v152 = v157;
        sub_24F92C7D8();
        sub_24E6585F8(&v150);
        swift_dynamicCast();
      }

      else
      {
        v153 = 0;
        v154 = 0;
      }

      v51 = v137;

      swift_endAccess();

      sub_24F23404C(*(*(v10 + v131) + 16) != 0);

      if (!v55)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
LABEL_35:
    v62 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      __break(1u);
      goto LABEL_91;
    }

    if (v62 >= v56)
    {
      break;
    }

    v55 = *(v51 + 8 * v62);
    ++v57;
    if (v55)
    {
      v57 = v62;
      goto LABEL_39;
    }
  }

  v80 = v139 + 64;
  v81 = 1 << *(v139 + 32);
  v82 = -1;
  if (v81 < 64)
  {
    v82 = ~(-1 << v81);
  }

  v83 = v82 & *(v139 + 64);
  v84 = (v81 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v85 = 0;
  while (1)
  {
    if (!v83)
    {
      while (1)
      {
        v86 = v85 + 1;
        if (__OFADD__(v85, 1))
        {
          goto LABEL_92;
        }

        if (v86 >= v84)
        {
          goto LABEL_67;
        }

        v83 = *(v80 + 8 * v86);
        ++v85;
        if (v83)
        {
          v85 = v86;
          break;
        }
      }
    }

    v87 = __clz(__rbit64(v83)) | (v85 << 6);
    v88 = v139;
    sub_24E65864C(*(v139 + 48) + 40 * v87, &v155);
    v89 = *(*(v88 + 56) + 8 * v87);
    v144 = v155;
    v90 = v157;
    v145 = v156;
    v91 = *(&v156 + 1);

    if (!v91)
    {
      break;
    }

    v155 = v144;
    v156 = v145;
    v157 = v90;
    v10 = v147;
    v92 = v142;
    swift_beginAccess();

    v93 = swift_isUniquelyReferenced_nonNull_native();
    *&v148[0] = *(v10 + v92);
    v94 = *&v148[0];
    *(v10 + v92) = 0x8000000000000000;
    v95 = sub_24E76D934(&v155);
    v97 = *(v94 + 16);
    v98 = (v96 & 1) == 0;
    v99 = __OFADD__(v97, v98);
    v100 = v97 + v98;
    if (v99)
    {
      goto LABEL_94;
    }

    v101 = v96;
    if (*(v94 + 24) >= v100)
    {
      if ((v93 & 1) == 0)
      {
        v107 = v95;
        sub_24E8ADF84();
        v95 = v107;
      }
    }

    else
    {
      sub_24E899884(v100, v93);
      v95 = sub_24E76D934(&v155);
      if ((v101 & 1) != (v102 & 1))
      {
        goto LABEL_97;
      }
    }

    v103 = *&v148[0];
    if (v101)
    {
      *(*(*&v148[0] + 56) + 8 * v95) = v89;

      sub_24E6585F8(&v155);
    }

    else
    {
      *(*&v148[0] + 8 * (v95 >> 6) + 64) |= 1 << v95;
      v104 = v95;
      sub_24E65864C(&v155, v103[6] + 40 * v95);
      *(v103[7] + 8 * v104) = v89;
      sub_24E6585F8(&v155);
      v105 = v103[2];
      v99 = __OFADD__(v105, 1);
      v106 = v105 + 1;
      if (v99)
      {
        goto LABEL_95;
      }

      v103[2] = v106;
      v10 = v147;
    }

    v83 &= v83 - 1;
    *(v10 + v142) = v103;
    swift_endAccess();
  }

  v10 = v147;
LABEL_67:
  v108 = v139;

  v109 = *(v10 + v132);
  if (v109)
  {
    v110 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;
    swift_beginAccess();

    v112 = v134;
    sub_24F23A4D8(v111, v147);
    v114 = v113;
    v134 = v112;

    *(v109 + v110) = v114;
    v10 = v147;
  }

  v115 = *(v10 + qword_27F22F1A0);
  v116 = MEMORY[0x277D84F90];
  *&v148[0] = MEMORY[0x277D84F90];
  v117 = *(v115 + 16);

  if (v117)
  {
    v118 = 0;
    *&v147 = v117 - 1;
LABEL_71:
    v119 = v115 + 32 + 40 * v118;
    v120 = v118;
    v121 = v142;
    while (v120 < *(v115 + 16))
    {
      sub_24E65864C(v119, &v155);
      if (*(*(v10 + v121) + 16))
      {

        sub_24E76D934(&v155);
        if (v122)
        {

          v123 = sub_24E6585F8(&v155);
          MEMORY[0x253050F00](v123);
          if (*((*&v148[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v148[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          v118 = v120 + 1;
          sub_24F92B638();
          v116 = *&v148[0];
          v124 = v147 == v120;
          v108 = v139;
          if (v124)
          {
            goto LABEL_83;
          }

          goto LABEL_71;
        }
      }

      ++v120;
      sub_24E6585F8(&v155);
      v119 += 40;
      if (v117 == v120)
      {
        v108 = v139;
        goto LABEL_83;
      }
    }

    goto LABEL_93;
  }

LABEL_83:

  *&v155 = v116;
  *(&v155 + 1) = v108;
  *&v156 = v133;
  *(&v156 + 1) = v136;
  v157 = 0;

  sub_24F92AD88();
  v125 = v157;

  v126 = *(v108 + 16);
  if (v126)
  {
    v127 = sub_24EAEACA0(*(v108 + 16), 0);
    v128 = sub_24EAEAC98();
    v129 = v155;

    sub_24E6586B4(v129);
    if (v128 != v126)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v127 = MEMORY[0x277D84F90];
  }

  sub_24F23A070(v127, type metadata accessor for ArcadeSeeAllGamesPage);

LABEL_88:
}

void sub_24F2421B4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24F92A078();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (*(Strong + qword_27F39C7D8))
    {
      *v8 = a1;
      v8[8] = 0;
      (*(v6 + 104))(v8, *MEMORY[0x277D22278], v5);
      v11 = a1;
      sub_24F92A0C8();
      (*(v6 + 8))(v8, v5);
    }

    v39 = a1;
    v12 = 1 << *(a3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a3 + 64);
    v15 = qword_27F22F1D8;
    v16 = qword_27F22F1D0;
    v17 = (v12 + 63) >> 6;

    v18 = 0;
    if (v14)
    {
      while (1)
      {
        v19 = v18;
LABEL_12:
        v20 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        sub_24E65864C(*(a3 + 48) + 40 * (v20 | (v19 << 6)), v42);
        swift_beginAccess();
        sub_24F7A58DC(v42, v41);
        sub_24E601704(v41, &qword_27F235830, &qword_24F93B8C0);
        swift_endAccess();
        v21 = *(v10 + v16);
        *(v10 + v16) = *(*(v10 + v15) + 16) != 0;
        sub_24F23BF64(v21);
        sub_24E6585F8(v42);
        if (!v14)
        {
          goto LABEL_8;
        }
      }
    }

    while (1)
    {
LABEL_8:
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v19 >= v17)
      {
        break;
      }

      v14 = *(a3 + 64 + 8 * v19);
      ++v18;
      if (v14)
      {
        v18 = v19;
        goto LABEL_12;
      }
    }

    v22 = *(v10 + qword_27F22F1A0);
    v23 = MEMORY[0x277D84F90];
    v40 = MEMORY[0x277D84F90];
    v24 = *(v22 + 16);
    v25 = qword_27F39C780;

    swift_beginAccess();
    if (!v24)
    {
LABEL_25:

      v32 = MEMORY[0x277D84F90];
      v33 = sub_24E60986C(MEMORY[0x277D84F90]);
      v34 = sub_24E60ACC8(v32);
      v42[0] = v23;
      v42[1] = v33;
      v42[2] = v34;
      v42[3] = 0;
      v43 = v39;
      v35 = v39;
      sub_24F92AD88();
      v36 = v43;

      return;
    }

    v26 = 0;
    v27 = v22 + 32;
    v37 = v24 - 1;
    v38 = v22 + 32;
LABEL_16:
    v28 = v27 + 40 * v26;
    v29 = v26;
    while (v29 < *(v22 + 16))
    {
      sub_24E65864C(v28, v42);
      if (*(*(v10 + v25) + 16))
      {

        sub_24E76D934(v42);
        if (v30)
        {

          v31 = sub_24E6585F8(v42);
          MEMORY[0x253050F00](v31);
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          v26 = v29 + 1;
          sub_24F92B638();
          v23 = v40;
          v27 = v38;
          if (v37 != v29)
          {
            goto LABEL_16;
          }

          goto LABEL_25;
        }
      }

      ++v29;
      sub_24E6585F8(v42);
      v28 += 40;
      if (v24 == v29)
      {
        goto LABEL_25;
      }
    }

LABEL_28:
    __break(1u);
  }
}

void sub_24F242608(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24F92A078();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (*(Strong + qword_27F39C7D8))
    {
      *v8 = a1;
      v8[8] = 0;
      (*(v6 + 104))(v8, *MEMORY[0x277D22278], v5);
      v11 = a1;
      sub_24F92A0C8();
      (*(v6 + 8))(v8, v5);
    }

    v37 = a1;
    v12 = 1 << *(a3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a3 + 64);
    v15 = qword_27F22F1D8;
    v16 = (v12 + 63) >> 6;

    v17 = 0;
    if (v14)
    {
      while (1)
      {
        v18 = v17;
LABEL_12:
        v19 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        sub_24E65864C(*(a3 + 48) + 40 * (v19 | (v18 << 6)), v40);
        swift_beginAccess();
        sub_24F7A58DC(v40, v39);
        sub_24E601704(v39, &qword_27F235830, &qword_24F93B8C0);
        swift_endAccess();
        sub_24F23404C(*(*(v10 + v15) + 16) != 0);
        sub_24E6585F8(v40);
        if (!v14)
        {
          goto LABEL_8;
        }
      }
    }

    while (1)
    {
LABEL_8:
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v18 >= v16)
      {
        break;
      }

      v14 = *(a3 + 64 + 8 * v18);
      ++v17;
      if (v14)
      {
        v17 = v18;
        goto LABEL_12;
      }
    }

    v20 = *(v10 + qword_27F22F1A0);
    v21 = MEMORY[0x277D84F90];
    v38 = MEMORY[0x277D84F90];
    v22 = *(v20 + 16);
    v23 = qword_27F39C780;

    swift_beginAccess();
    if (!v22)
    {
LABEL_25:

      v30 = MEMORY[0x277D84F90];
      v31 = sub_24E60986C(MEMORY[0x277D84F90]);
      v32 = sub_24E60ACC8(v30);
      v40[0] = v21;
      v40[1] = v31;
      v40[2] = v32;
      v40[3] = 0;
      v41 = v37;
      v33 = v37;
      sub_24F92AD88();
      v34 = v41;

      return;
    }

    v24 = 0;
    v25 = v20 + 32;
    v35 = v22 - 1;
    v36 = v20 + 32;
LABEL_16:
    v26 = v25 + 40 * v24;
    v27 = v24;
    while (v27 < *(v20 + 16))
    {
      sub_24E65864C(v26, v40);
      if (*(*(v10 + v23) + 16))
      {

        sub_24E76D934(v40);
        if (v28)
        {

          v29 = sub_24E6585F8(v40);
          MEMORY[0x253050F00](v29);
          if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          v24 = v27 + 1;
          sub_24F92B638();
          v21 = v38;
          v25 = v36;
          if (v35 != v27)
          {
            goto LABEL_16;
          }

          goto LABEL_25;
        }
      }

      ++v27;
      sub_24E6585F8(v40);
      v26 += 40;
      if (v22 == v27)
      {
        goto LABEL_25;
      }
    }

LABEL_28:
    __break(1u);
  }
}

uint64_t ArcadeDiffablePagePresenter.__allocating_init(objectGraph:arcadeSubscriptionManager:subscriptionStateFetchTimeout:sidePackedPage:pageUrls:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, double a5)
{
  swift_allocObject();
  v10 = sub_24F24C4A4(a1, a2, a3, a4, a5);

  return v10;
}

uint64_t ArcadeDiffablePagePresenter.init(objectGraph:arcadeSubscriptionManager:subscriptionStateFetchTimeout:sidePackedPage:pageUrls:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = sub_24F24C4A4(a1, a2, a3, a4, a5);

  return v6;
}

double sub_24F242B30()
{

  sub_24EF43964(*(v0 + qword_27F39DFC0), *(v0 + qword_27F39DFC0 + 8), *(v0 + qword_27F39DFC0 + 16), *(v0 + qword_27F39DFC0 + 24), *(v0 + qword_27F39DFC0 + 32), *(v0 + qword_27F39DFC0 + 40));

  sub_24F24CFC8(v0 + qword_27F23CC10);

  sub_24EB6CE70(*(v0 + qword_27F23CC20), *(v0 + qword_27F23CC20 + 8));
  sub_24E824448(*(v0 + qword_27F23CC28), *(v0 + qword_27F23CC28 + 8));

  return result;
}

uint64_t ArcadeDiffablePagePresenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = sub_24EBBFBB0();

  sub_24EF43964(*(v2 + qword_27F39DFC0), *(v2 + qword_27F39DFC0 + 8), *(v2 + qword_27F39DFC0 + 16), *(v2 + qword_27F39DFC0 + 24), *(v2 + qword_27F39DFC0 + 32), *(v2 + qword_27F39DFC0 + 40));

  sub_24F24CFC8(v2 + qword_27F23CC10);

  sub_24EB6CE70(*(v2 + qword_27F23CC20), *(v2 + qword_27F23CC20 + 8));
  sub_24E824448(*(v2 + qword_27F23CC28), *(v2 + qword_27F23CC28 + 8));

  return v2;
}

uint64_t ArcadeDiffablePagePresenter.__deallocating_deinit()
{
  ArcadeDiffablePagePresenter.deinit();

  return swift_deallocClassInstance();
}

id ArcadeDiffablePagePresenter.titleEffect.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + qword_27F39DFC0;
  swift_beginAccess();
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
  v9 = *(v3 + 40);
  *(a1 + 40) = v9;
  return sub_24ED21BB0(v4, v5, v6, v7, v8, v9);
}

uint64_t ArcadeDiffablePagePresenter.didFetchPage.getter()
{
  v1 = qword_27F39DFE8;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24F242E94(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27F39DFE8;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  if ((v5 & 1) == 0)
  {
    if (v2)
    {
      sub_24F92AD88();
    }
  }
}

double ArcadeDiffablePagePresenter.uber.setter(uint64_t a1)
{
  v3 = qword_27F39DFC8;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void sub_24F242FD4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + qword_27F23CC20;
  v5 = *(v1 + qword_27F23CC20 + 8);
  v17 = *(v1 + qword_27F23CC20);
  v18 = v5;
  v15 = v2;
  v16 = v3;
  sub_24EB6CE50(v17, v5);
  v6 = static ArcadeState.== infix(_:_:)(&v17, &v15);
  sub_24EB6CE70(v17, v18);
  if (v6)
  {
    return;
  }

  v7 = *v4;
  v8 = *(v4 + 8);
  v9 = v8 >> 6;
  if (v8 >> 6 == 3 && (v7 & 1) != 0)
  {
    v10 = v2;
    v11 = v3;
LABEL_21:
    sub_24EB6CE50(v10, v11);
    goto LABEL_22;
  }

  v12 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v12 != 2)
    {
      v10 = v7;
      v11 = v8;
      goto LABEL_21;
    }

    if (!v9)
    {
      v14 = v2;
      goto LABEL_22;
    }

    if (v9 == 2)
    {
      sub_24EB6CE50(v2, v3);
      sub_24EB6CE50(v7, v8);
      sub_24EB6CE70(v2, v3);
      sub_24EB6CE70(v7, v8);
      if ((v3 & 0x3F) == (v8 & 0x3F))
      {
        return;
      }

      if ((v3 & 0x3F) != 0)
      {
        if ((v3 & 0x3F) != 1 && (v8 & 0x3F) == 0)
        {
          return;
        }
      }

      else if ((v8 & 0x3F) == 2)
      {
        return;
      }

      goto LABEL_23;
    }

    sub_24EB6CE50(v2, v3);
  }

  else
  {
    if (v12)
    {
      sub_24EB6CE50(v2, v3);
      sub_24EB6CE50(v7, v8);
      sub_24EB6CE70(v2, v3);
      sub_24EB6CE70(v7, v8);
      if (v9 != 2)
      {
        return;
      }

      goto LABEL_23;
    }

    if (v9 == 2)
    {
      v13 = v7;
LABEL_22:
      sub_24EB6CE70(v2, v3);
      sub_24EB6CE70(v7, v8);
LABEL_23:

      ArcadeDiffablePagePresenter.update(ignoringCache:)(1);
      return;
    }
  }

  sub_24EB6CE50(v7, v8);
  sub_24EB6CE70(v2, v3);

  sub_24EB6CE70(v7, v8);
}

Swift::Void __swiftcall ArcadeDiffablePagePresenter.update(ignoringCache:)(Swift::Bool ignoringCache)
{
  v2 = v1;
  v25 = ignoringCache;
  v3 = *v1;
  v4 = sub_24F927D88();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F927DC8();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F927D98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E74EC40();
  (*(v11 + 104))(v13, *MEMORY[0x277D851C8], v10);
  v14 = sub_24F92BF48();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = sub_24F24D034;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_130;
  v16 = _Block_copy(aBlock);
  sub_24F927DA8();
  v26 = MEMORY[0x277D84F90];
  sub_24F24DA18(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v9, v6, v16);
  _Block_release(v16);

  (*(v24 + 8))(v6, v4);
  (*(v22 + 8))(v9, v23);

  if (((*(v1 + qword_27F23CC20 + 8) >> 6) | 2) == 2)
  {
    v17 = qword_27F39DFE8;
    swift_beginAccess();
    v18 = *(v2 + v17);
    *(v2 + v17) = 1;
    if ((v18 & 1) == 0)
    {
      sub_24F92AD88();
    }
  }

  swift_beginAccess();
  v19 = v2[4];

  sub_24F23A970(v25);
  v20 = v2[4];
  if (v19)
  {
    if (v20 && v19 == v20 || (*(v2 + qword_27F23CC38) & 1) == 0 || !v20)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!v20)
  {
    return;
  }

  if (*(v2 + qword_27F23CC38))
  {
LABEL_12:

    sub_24F92A0A8();
  }

LABEL_13:
}

void *sub_24F2436D0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = v1[2];
  v20 = *(v1 + qword_27F23CC18);
  v10 = *(v1 + qword_27F23CC20);
  v11 = *(v1 + qword_27F23CC20 + 8);
  v21 = v10;
  v12 = *(v1 + qword_27F23CC48);
  v22 = v11;
  v13 = v1 + qword_27F23CC10;
  if ((v11 & 0xC0) != 0x80)
  {
    v13 += *(type metadata accessor for ArcadePageUrls(0) + 20);
  }

  sub_24E60169C(v13, v5, &qword_27F228530, &unk_24F93C6E0);
  sub_24E6009C8(v5, v8, &qword_27F228530, &unk_24F93C6E0);
  swift_beginAccess();
  v14 = v1[3];
  swift_beginAccess();
  v15 = v1[4];
  type metadata accessor for ArcadeDiffablePageContentPresenter(0);
  swift_allocObject();

  v16 = v20;
  sub_24EB6CE50(v10, v11);

  v17 = sub_24EE5DFD4(v9, v16, &v21, v8, a1, v14, v15, v12);

  return v17;
}

Swift::Void __swiftcall ArcadeDiffablePagePresenter.didLoad()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-v4];
  v6 = *(v0 + qword_27F23CC18);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = *(v6 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock);

  [v8 lock];
  sub_24F213714(v1, sub_24F24D054, v7, v6);
  [v8 unlock];

  type metadata accessor for ASKBagContract(0);
  sub_24F928FD8();
  sub_24F92A758();
  if (qword_27F210A00 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();

  (*(v3 + 8))(v5, v2);
  if (v9[15])
  {
    v10[0] = -127;
    ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(v10);
  }

  ArcadeDiffablePagePresenter.update(ignoringCache:)(0);
}

void sub_24F243B68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = v2;
    v5 = v3;
    sub_24EB6CE50(v2, v3);
    sub_24F243BF8(&v4);

    sub_24EB6CE70(v4, v5);
  }
}

double sub_24F243BF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F92AAE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a1 + 8);
  sub_24F23B9E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v18 = &type metadata for ArcadeState;
  v16 = v8;
  v17 = v9;
  sub_24EB6CE50(v8, v9);
  sub_24F928438();
  sub_24E601704(&v16, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A588();

  (*(v5 + 8))(v7, v4);
  v10 = v2 + qword_27F23CC20;
  v11 = *(v2 + qword_27F23CC20);
  *v10 = v8;
  LOBYTE(v7) = *(v10 + 8);
  *(v10 + 8) = v9;
  sub_24EB6CE50(v8, v9);
  sub_24EB6CE50(v11, v7);
  sub_24EB6CE70(v11, v7);
  v16 = v11;
  v17 = v7;
  sub_24F242FD4(&v16);
  sub_24EB6CE70(v11, v7);
  v13 = (v2 + qword_27F23CC28);
  v14 = *(v2 + qword_27F23CC28);
  if (v14)
  {
    v15 = v13[1];
    *v13 = 0;
    v13[1] = 0;
    v14();
    return sub_24E824448(v14, v15);
  }

  return result;
}

Swift::Void __swiftcall ArcadeDiffablePagePresenter.viewDidAppear()()
{
  v1 = v0;
  v2 = sub_24F91F648();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v6 = *(v1 + 24);
  if (v6)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v8 = v7;
    (*(v3 + 8))(v5, v2);
    v9 = v6 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime;
    swift_beginAccess();
    *v9 = v8;
    *(v9 + 8) = 0;
    v10 = *(v6 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasAppearTime);
    swift_beginAccess();
    *(v10 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  *(v1 + qword_27F23CC38) = 1;
}

void sub_24F244058()
{
  v0 = sub_24F92AAE8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F23B9E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  (*(v1 + 8))(v3, v0);
  v4 = [objc_opt_self() daemonProxy];
}

void sub_24F244230()
{
  v1 = v0;
  v2 = sub_24F92AAE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_27F39DFE8;
  swift_beginAccess();
  if (*(v0 + v6) != 1)
  {
    return;
  }

  v7 = sub_24F91EB48();
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7;
  v15[1] = 0x6449666C656873;
  v15[2] = 0xE700000000000000;
  sub_24F92C7F8();
  if (!*(v8 + 16) || (v9 = sub_24E76D934(v16), (v10 & 1) == 0))
  {

    sub_24E6585F8(v16);
LABEL_12:
    v17 = 0u;
    v18 = 0u;
    goto LABEL_13;
  }

  sub_24E643A9C(*(v8 + 56) + 32 * v9, &v17);
  sub_24E6585F8(v16);

  if (!*(&v18 + 1))
  {
LABEL_13:
    sub_24E601704(&v17, &qword_27F2129B0, &unk_24F945320);
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    goto LABEL_14;
  }

  if (!*(&v20 + 1))
  {
LABEL_14:
    sub_24E601704(&v19, &qword_27F235830, &qword_24F93B8C0);
    sub_24F23B9E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();

    (*(v3 + 8))(v5, v2);
    return;
  }

  v22[0] = v19;
  v22[1] = v20;
  v23 = v21;
  v11 = *(v1 + qword_27F23CC30);

  os_unfair_lock_lock(v11 + 6);
  sub_24E65864C(v22, v16);
  sub_24ED7D5A0(&v19, v16);
  sub_24E6585F8(&v19);
  os_unfair_lock_unlock(v11 + 6);

  v12 = *(v1 + qword_27F39CC00);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BF8, &qword_24F93B820);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_24F93DE60;
    sub_24E65864C(v22, v13 + 32);

    sub_24F2495D8(v13, sub_24ED93AC0, 0, v12, &unk_286212898, &unk_286212910, &unk_286212938, sub_24F24DBA0, v14, sub_24F24DB9C);
  }

  sub_24E6585F8(v22);
}

double sub_24F24469C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v2;
  v12 = *(a1 + 32);
  sub_24EBD19C4(v11);
  v3 = *(v1 + qword_27F23CC30);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(&v11[0] + 1);
  v13 = *(&v11[0] + 1);
  v5 = *(v3 + 16);
  sub_24E60169C(&v13, v10, &qword_27F22F4A8, &qword_24F99C1A8);

  v6 = sub_24EAE70B4(v4, v5);
  sub_24F7A6CB4(v6);
  sub_24E601704(&v13, &qword_27F22F4A8, &qword_24F99C1A8);
  os_unfair_lock_unlock((v3 + 24));

  v7 = *(v1 + qword_27F39CC00);
  if (v7)
  {

    sub_24F24788C(v6, sub_24ED93ACC, 0, v7, v8);
  }

  return result;
}

uint64_t sub_24F2447D8()
{
  v1 = v0;
  v45 = *v0;
  v2 = sub_24F92AAE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F91F6B8();
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_24F928AD8();
  v13 = *(v12 - 8);
  v43 = v12;
  v44 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v19 = sub_24F91EB48();
  if (!v19)
  {
    goto LABEL_9;
  }

  v20 = v19;
  *&v48 = 0x6449666C656873;
  *(&v48 + 1) = 0xE700000000000000;
  sub_24F92C7F8();
  if (!*(v20 + 16) || (v21 = sub_24E76D934(v54), (v22 & 1) == 0))
  {

    sub_24E6585F8(v54);
LABEL_9:
    v51 = 0u;
    v52 = 0u;
    goto LABEL_10;
  }

  sub_24E643A9C(*(v20 + 56) + 32 * v21, &v51);
  sub_24E6585F8(v54);

  if (!*(&v52 + 1))
  {
LABEL_10:
    sub_24E601704(&v51, &qword_27F2129B0, &unk_24F945320);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_24F23B9E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();

    return (*(v3 + 8))(v5, v2);
  }

  v24 = *(&v54[0] + 1);
  v23 = *&v54[0];
  sub_24F928A98();
  type metadata accessor for ShelfBasedPageScrollAction(0);
  v25 = swift_allocObject();
  v26 = (v25 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_shelfId);
  *v26 = v23;
  v26[1] = v24;
  v27 = (v25 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_purchasedShelfId);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v25 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_notPurchasedShelfId);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v25 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_adamId);
  *v29 = 0;
  v29[1] = 0;
  v30 = v25 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_index;
  *v30 = 0;
  *(v30 + 8) = 1;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_clicksOnScroll) = 0;
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  v32 = v43;
  v31 = v44;
  (*(v44 + 16))(v15, v18, v43);
  v33 = sub_24F929608();
  (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
  v34 = (v25 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v34 = 0u;
  v34[1] = 0u;
  sub_24E60169C(v54, &v48, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v49 + 1))
  {
    v51 = v48;
    v52 = v49;
    v53 = v50;
  }

  else
  {
    sub_24F91F6A8();
    v36 = sub_24F91F668();
    v38 = v37;
    (*(v42 + 8))(v8, v6);
    v46 = v36;
    v47 = v38;
    v31 = v44;
    sub_24F92C7F8();
    sub_24E601704(&v48, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v54, &qword_27F235830, &qword_24F93B8C0);
  (*(v31 + 8))(v18, v32);
  v39 = v25 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v40 = v52;
  *v39 = v51;
  *(v39 + 16) = v40;
  *(v39 + 32) = v53;
  sub_24E6009C8(v11, v25 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  *(v25 + 16) = xmmword_24F9D8B80;
  *(v25 + 32) = 0;
  *(v25 + 40) = 0;
  (*(v31 + 32))(v25 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v15, v32);
  *&v54[0] = v25;
  *(&v54[0] + 1) = v1;
  v55 = v45;

  sub_24F92AD88();

  return sub_24E601704(v54, &qword_27F22CE40, &qword_24F99AAA0);
}

uint64_t sub_24F244EE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_24F91EB58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();

  a4(v8);

  return (*(v6 + 8))(v8, v5);
}

double sub_24F244FE0(uint64_t a1, char a2)
{
  sub_24F2F585C(a1, a2);
  *(v2 + qword_27F23CC40) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions);
  v5 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v4 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
  v6 = (v2 + qword_27F39DFB0);
  swift_beginAccess();
  *v6 = v5;
  v6[1] = v4;

  v8 = *(a1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_tabTitle);
  v7 = *(a1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_tabTitle + 8);
  v9 = (v2 + qword_27F39DFB8);
  swift_beginAccess();
  *v9 = v8;
  v9[1] = v7;

  v10 = *(a1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect);
  v11 = *(a1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 8);
  v12 = *(a1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 16);
  v13 = *(a1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 24);
  v14 = *(a1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 32);
  v15 = v2 + qword_27F39DFC0;
  v16 = *(a1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 40);
  swift_beginAccess();
  v29 = *(v15 + 8);
  v30 = *v15;
  v27 = *(v15 + 24);
  v28 = *(v15 + 16);
  v26 = *(v15 + 32);
  *v15 = v10;
  *(v15 + 8) = v11;
  *(v15 + 16) = v12;
  *(v15 + 24) = v13;
  *(v15 + 32) = v14;
  v17 = *(v15 + 40);
  *(v15 + 40) = v16;
  sub_24ED21BB0(v10, v11, v12, v13, v14, v16);
  sub_24EF43964(v30, v29, v28, v27, v26, v17);
  v18 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  swift_beginAccess();
  v19 = *(a1 + v18);
  v20 = qword_27F39DFC8;
  swift_beginAccess();
  *(v2 + v20) = v19;

  v21 = *(a1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionLockup);
  v22 = qword_27F39DFD0;
  swift_beginAccess();
  *(v2 + v22) = v21;

  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_autoUpsellAction))
  {
    v24 = *(a1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_shouldForceAutoUpsell);

    sub_24F245254(v25, v24);
  }

  return result;
}

void sub_24F245254(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0, &qword_24F95E500);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = sub_24F92AAE8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + qword_27F23CC18) + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v15 = *(v14 + 8);
  if (v15 >= 0xC0)
  {
    sub_24F23B9E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    (*(v11 + 8))(v13, v10);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = a1;
    *(v17 + 32) = a2 & 1;
    v18 = (v3 + qword_27F23CC28);
    v19 = *(v3 + qword_27F23CC28);
    v20 = *(v3 + qword_27F23CC28 + 8);
    *v18 = sub_24F24D3A8;
    v18[1] = v17;

    sub_24E824448(v19, v20);

    return;
  }

  v38 = v7;
  v39 = v11;
  if (v15 > 0x3F)
  {
    sub_24F23B9E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    goto LABEL_7;
  }

  if (a2)
  {
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = a1;
    v41 = sub_24F24D384;
    v42 = v22;

    sub_24F92AD88();

    sub_24F23B9E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
LABEL_7:
    sub_24F9283A8();
    sub_24F92A588();

    (*(v39 + 8))(v13, v10);
    return;
  }

  v36 = v10;
  type metadata accessor for ASKBagContract(0);
  sub_24F928FD8();
  sub_24F92A758();
  v37 = v41;
  v35 = [objc_opt_self() standardUserDefaults];
  v23 = NSUserDefaults.arcadeUpsellAutoPresentationCount.getter();
  v24 = a1;
  v34 = v6;
  if (qword_27F210A08 != -1)
  {
    swift_once();
  }

  sub_24F92A398();
  v25 = v38;
  sub_24F92A408();
  v27 = v40 + 8;
  v26 = *(v40 + 8);
  v26(v9, v25);
  if (v23 >= v41)
  {
    sub_24F23B9E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
  }

  else
  {
    v40 = v27;
    v33 = v26;
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = v24;
    v30 = v35;
    v29[4] = v35;
    v41 = sub_24F24D35C;
    v42 = v29;

    v35 = v30;
    sub_24F92AD88();

    sub_24F23B9E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    sub_24F92A398();
    sub_24F92A408();
    v33(v9, v25);
    v43 = MEMORY[0x277D83B88];
    sub_24F928438();
    sub_24E601704(&v41, &qword_27F2129B0, &unk_24F945320);
  }

  v31 = v36;
  sub_24F92A588();

  (*(v39 + 8))(v13, v31);
}

double sub_24F245C14(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24F245254(a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24F245C88(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F927D88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F927DC8();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E74EC40();
  v16 = sub_24F92BEF8();
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;
  aBlock[4] = sub_24F24D3B4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_81;
  v12 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24F24DA18(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  v13 = v16;
  MEMORY[0x2530518B0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v17);
}

uint64_t sub_24F245FBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v5 = Strong;
    if (Strong)
    {
      Strong = type metadata accessor for ArcadeDiffablePagePresenter(0);
    }

    v6[0] = a2;
    v6[1] = v5;
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = Strong;

    sub_24F92AD88();

    return sub_24E601704(v6, &qword_27F22CE40, &qword_24F99AAA0);
  }

  return result;
}

uint64_t sub_24F2460A4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_24F927D88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F927DC8();
  v9 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E74EC40();
  v19 = sub_24F92BEF8();
  v12 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_24F24D3BC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_88_1;
  v14 = _Block_copy(aBlock);

  v15 = a3;

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24F24DA18(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  v16 = v19;
  MEMORY[0x2530518B0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v20);
}

void sub_24F2463E4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v6 = Strong;
    if (Strong)
    {
      Strong = type metadata accessor for ArcadeDiffablePagePresenter(0);
    }

    v10[0] = a2;
    v10[1] = v6;
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = Strong;

    sub_24F92AD88();

    sub_24E601704(v10, &qword_27F22CE40, &qword_24F99AAA0);
  }

  v7 = NSUserDefaults.arcadeUpsellAutoPresentationCount.getter();
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = sub_24F92B098();
    [a3 setInteger:v8 forKey:v9];
  }
}

void sub_24F24655C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_24F92C7B8();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v10 = ~v8;
  while (1)
  {
    sub_24E65864C(*(v6 + 48) + 40 * v9, v35);
    v11 = MEMORY[0x253052150](v35, a1);
    sub_24E6585F8(v35);
    if (v11)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  v34 = *v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    v14 = *v3;
LABEL_8:
    v15 = *(v14 + 48) + 40 * v9;
    v16 = *(v15 + 16);
    *a2 = *v15;
    *(a2 + 16) = v16;
    *(a2 + 32) = *(v15 + 32);
    sub_24F2467C4(v9);
    *v3 = v34;
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5B8, &qword_24F95C7A0);
  v17 = sub_24F92C808();
  v14 = v17;
  if (!*(v13 + 16))
  {
LABEL_24:

    v34 = v14;
    goto LABEL_8;
  }

  v18 = (v17 + 56);
  v19 = v13 + 56;
  v20 = ((1 << *(v14 + 32)) + 63) >> 6;
  if (v14 != v13 || v18 >= v19 + 8 * v20)
  {
    memmove(v18, (v13 + 56), 8 * v20);
  }

  v21 = 0;
  *(v14 + 16) = *(v13 + 16);
  v22 = 1 << *(v13 + 32);
  v23 = *(v13 + 56);
  v24 = -1;
  if (v22 < 64)
  {
    v24 = ~(-1 << v22);
  }

  v25 = v24 & v23;
  v26 = (v22 + 63) >> 6;
  if ((v24 & v23) != 0)
  {
    do
    {
      v27 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_22:
      v30 = 40 * (v27 | (v21 << 6));
      sub_24E65864C(*(v13 + 48) + v30, v35);
      v31 = *(v14 + 48) + v30;
      v32 = v35[0];
      v33 = v35[1];
      *(v31 + 32) = v36;
      *v31 = v32;
      *(v31 + 16) = v33;
    }

    while (v25);
  }

  v28 = v21;
  while (1)
  {
    v21 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v21 >= v26)
    {
      goto LABEL_24;
    }

    v29 = *(v19 + 8 * v21);
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v25 = (v29 - 1) & v29;
      goto LABEL_22;
    }
  }

  __break(1u);
}

void sub_24F2467C4(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24F92C6C8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_24E65864C(*(v3 + 48) + 40 * v6, v22);
        v12 = sub_24F92C7B8();
        sub_24E6585F8(v22);
        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = v16 + 40 * v2;
            v18 = (v16 + 40 * v6);
            if (v2 != v6 || v17 >= v18 + 40)
            {
              v10 = *v18;
              v11 = v18[1];
              *(v17 + 32) = *(v18 + 4);
              *v17 = v10;
              *(v17 + 16) = v11;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

void sub_24F24697C(uint64_t a1, char a2, void *a3)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  __swift_project_value_buffer(v6, qword_27F225388);
  sub_24F928868();

  if (v10 == 2 || (v10 & 1) == 0)
  {
    v8 = MEMORY[0x28223BE20](v7);
    v9[16] = a2 & 1;
    sub_24F246AA8(a1, sub_24F24DB84, v9, a3, v8);
  }
}

void sub_24F246AA8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4, __n128 a5)
{
  v5 = a4;
  v98 = a3;
  v104 = a2;
  v7 = *a4;
  v97 = sub_24F92A088();
  v8 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v86 - v11;
  v102 = sub_24F91F4A8();
  v13 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v93 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v101 = (&v86 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4B8, &unk_24F99C1D0);
  v117[3] = v17;
  v117[4] = sub_24E602068(&qword_27F22F4C0, &qword_27F22F4B8, &unk_24F99C1D0, MEMORY[0x277D83488]);
  v117[0] = a1;
  if (*(v5 + qword_27F39C790) == 1 || !*(a1 + 16))
  {

LABEL_50:
    __swift_destroy_boxed_opaque_existential_1(v117);
    return;
  }

  v87 = v8;
  v89 = v7;

  v100 = sub_24E60AABC(MEMORY[0x277D84F90]);
  v116 = v100;
  v18 = __swift_project_boxed_opaque_existential_1(v117, v17);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v19);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v113);
  v24 = -1 << *(*v21 + 32);
  v25 = ~v24;
  v26 = (*v21 + 64);
  v27 = *v26;
  v28 = -v24;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  *boxed_opaque_existential_1 = *v21;
  boxed_opaque_existential_1[1] = v26;
  boxed_opaque_existential_1[2] = v25;
  boxed_opaque_existential_1[3] = 0;
  boxed_opaque_existential_1[4] = v29 & v27;
  v30 = qword_27F39C780;
  v31 = qword_27F22F1D8;
  v92 = qword_27F22F1D0;
  swift_beginAccess();
  v99 = v31;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v113, AssociatedTypeWitness);
  sub_24F92C4D8();
  v103 = v5;
  if (*(&v111 + 1))
  {
    v100 = (v13 + 48);
    v94 = (v13 + 8);
    v95 = (v13 + 32);
    v90 = (v13 + 16);
    v88 = xmmword_24F93DE60;
    v33 = v101;
    v32 = v102;
    while (1)
    {
      v109 = v112;
      v108[0] = v110;
      v108[1] = v111;
      v34 = *(v5 + v30);
      if (!*(v34 + 16))
      {
        goto LABEL_9;
      }

      v35 = sub_24E76D934(v108);
      if ((v36 & 1) == 0)
      {
        break;
      }

      v37 = *(*(v34 + 56) + 8 * v35);

      sub_24E65864C(v108, v107);
      v104(v37);
      if ((*v100)(v12, 1, v32) != 1)
      {
        (*v95)(v33, v12, v32);
        v38 = *(v99 + v5);
        if (*(v38 + 16))
        {

          v39 = sub_24F92C7B8();
          v40 = -1 << *(v38 + 32);
          v41 = v39 & ~v40;
          if ((*(v38 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
          {
            v42 = ~v40;
            while (1)
            {
              sub_24E65864C(*(v38 + 48) + 40 * v41, v106);
              v43 = MEMORY[0x253052150](v106, v107);
              sub_24E6585F8(v106);
              if (v43)
              {
                break;
              }

              v41 = (v41 + 1) & v42;
              if (((*(v38 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            v33 = v101;
            v32 = v102;
            (*v94)(v101, v102);
            sub_24E6585F8(v107);
            sub_24E6585F8(v108);
            v5 = v103;
            goto LABEL_10;
          }

LABEL_20:
        }

        v44 = (v37 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
        if (v116[2] && (sub_24E76D644(*v44, v44[1]), (v45 & 1) != 0))
        {
          v46 = *v44;
          v47 = v44[1];

          v48 = sub_24F4D6258(v106, v46, v47);
          if (*v49)
          {
            v50 = v49;
            v91 = v48;
            v51 = v93;
            v33 = v101;
            v32 = v102;
            (*v90)(v93, v101, v102);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v105[0] = *v50;
            *v50 = 0x8000000000000000;
            sub_24E81CBE8(v51, v107, isUniquelyReferenced_nonNull_native);
            *v50 = v105[0];

            v91(v106, 0);

            goto LABEL_26;
          }

          (v48)(v106, 0);

          v32 = v102;
          v5 = v103;
          v33 = v101;
        }

        else
        {
          v53 = v44[1];
          v91 = *v44;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4B0, &unk_24F99C1C0);
          v54 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213100, &qword_24F96AFA0) - 8);
          v55 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
          v56 = swift_allocObject();
          *(v56 + 16) = v88;
          v57 = v56 + v55;
          v58 = v54[14];
          sub_24E65864C(v107, v57);
          v59 = (v57 + v58);
          v33 = v101;
          v32 = v102;
          (*v90)(v59, v101, v102);

          v60 = sub_24E60AAD0(v56);
          swift_setDeallocating();
          sub_24E601704(v57, &qword_27F213100, &qword_24F96AFA0);
          swift_deallocClassInstance();
          v61 = v116;
          v62 = swift_isUniquelyReferenced_nonNull_native();
          v106[0] = v61;
          sub_24E81CD60(v60, v91, v53, v62);

          v116 = v106[0];
LABEL_26:
          v5 = v103;
        }

        sub_24E65864C(v107, v105);
        v63 = v99;
        swift_beginAccess();
        sub_24ED7D5A0(v106, v105);
        sub_24E6585F8(v106);
        swift_endAccess();
        v64 = *(v5 + v92);
        *(v5 + v92) = *(*(v63 + v5) + 16) != 0;
        sub_24F23BF64(v64);

        (*v94)(v33, v32);
        sub_24E6585F8(v107);
        sub_24E6585F8(v108);
        goto LABEL_10;
      }

      sub_24E6585F8(v107);
      sub_24E6585F8(v108);
      sub_24E601704(v12, &qword_27F228530, &unk_24F93C6E0);
LABEL_10:
      __swift_mutable_project_boxed_opaque_existential_1(v113, AssociatedTypeWitness);
      sub_24F92C4D8();
      if (!*(&v111 + 1))
      {
        v65 = v116;
        goto LABEL_33;
      }
    }

LABEL_9:
    sub_24E6585F8(v108);
    goto LABEL_10;
  }

  v65 = v100;
LABEL_33:
  __swift_destroy_boxed_opaque_existential_1(v113);
  if (!v65[2])
  {
LABEL_49:

    goto LABEL_50;
  }

  v66 = v65 + 8;
  v67 = 1 << *(v65 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & v65[8];
  v70 = (v5 + qword_27F22F1C0);
  v98 = qword_27F39C7D8;
  v71 = (v67 + 63) >> 6;
  LODWORD(v95) = *MEMORY[0x277D22298];
  v93 = (v87 + 8);
  v94 = (v87 + 104);

  v72 = 0;
  v99 = v70;
  v100 = v65;
  while (v69)
  {
    v73 = v69;
LABEL_43:
    v69 = (v73 - 1) & v73;
    if (*v70)
    {
      v101 = *v70;
      v102 = (v73 - 1) & v73;
      v75 = *(v65[7] + ((v72 << 9) | (8 * __clz(__rbit64(v73)))));
      v104 = v70[1];
      if (*(v5 + v98))
      {
        v77 = v96;
        v76 = v97;
        *v96 = 0;
        (*v94)(v77, v95, v76);

        v78 = v101;
        sub_24E5FCA4C(v101, v104);
        sub_24F92A0D8();
        (*v93)(v77, v76);
      }

      else
      {

        v78 = v101;
        sub_24E5FCA4C(v101, v104);
      }

      v79 = v89;
      v101 = v78(v75);
      v80 = swift_allocObject();
      swift_weakInit();
      v81 = swift_allocObject();
      *(v81 + 16) = v80;
      *(v81 + 24) = v79;
      v82 = swift_allocObject();
      swift_weakInit();
      v83 = swift_allocObject();
      *(v83 + 16) = v82;
      *(v83 + 24) = v75;
      v84 = sub_24E74EC40();

      v85 = sub_24F92BEF8();
      AssociatedTypeWitness = v84;
      AssociatedConformanceWitness = MEMORY[0x277D225C0];
      v113[0] = v85;
      sub_24F92A958();
      sub_24E824448(v78, v104);

      v5 = v103;

      __swift_destroy_boxed_opaque_existential_1(v113);

      v70 = v99;
      v65 = v100;
      v69 = v102;
    }
  }

  while (1)
  {
    v74 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      break;
    }

    if (v74 >= v71)
    {

      goto LABEL_49;
    }

    v73 = v66[v74];
    ++v72;
    if (v73)
    {
      v72 = v74;
      goto LABEL_43;
    }
  }

  __break(1u);
}

void sub_24F24771C(uint64_t a1, char a2, void *a3)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  __swift_project_value_buffer(v6, qword_27F225388);
  sub_24F928868();

  if (v10 == 2 || (v10 & 1) == 0)
  {
    v8 = MEMORY[0x28223BE20](v7);
    v9[16] = a2 & 1;
    sub_24F248658(a1, sub_24F24DB84, v9, a3, &unk_286212898, &unk_286212DE8, &unk_286212E10, sub_24F24DBA0, v8, sub_24F24DB9C);
  }
}

void sub_24F24788C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4, __n128 a5)
{
  v5 = a4;
  v96 = a3;
  v102 = a2;
  v7 = *a4;
  v95 = sub_24F92A088();
  v8 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v85 - v11;
  v100 = sub_24F91F4A8();
  v13 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v91 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v99 = (&v85 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2326B8, &unk_24F9AA500);
  v115[3] = v17;
  v115[4] = sub_24E602068(&qword_27F2326C0, &qword_27F2326B8, &unk_24F9AA500, MEMORY[0x277D83B78]);
  v115[0] = a1;
  if (*(v5 + qword_27F39C790) == 1 || !*(a1 + 16))
  {

LABEL_50:
    __swift_destroy_boxed_opaque_existential_1(v115);
    return;
  }

  v86 = v8;
  v88 = v7;

  v98 = sub_24E60AABC(MEMORY[0x277D84F90]);
  v114 = v98;
  v18 = __swift_project_boxed_opaque_existential_1(v115, v17);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v19);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v111);
  v24 = -1 << *(*v21 + 32);
  v25 = ~v24;
  v26 = (*v21 + 56);
  v27 = *v26;
  v28 = -v24;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  *boxed_opaque_existential_1 = *v21;
  boxed_opaque_existential_1[1] = v26;
  boxed_opaque_existential_1[2] = v25;
  boxed_opaque_existential_1[3] = 0;
  boxed_opaque_existential_1[4] = v29 & v27;
  v30 = qword_27F39C780;
  v31 = qword_27F22F1D8;
  swift_beginAccess();
  v97 = v31;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v111, AssociatedTypeWitness);
  sub_24F92C4D8();
  v101 = v5;
  if (*(&v109 + 1))
  {
    v98 = (v13 + 48);
    v92 = (v13 + 8);
    v93 = (v13 + 32);
    v89 = (v13 + 16);
    v87 = xmmword_24F93DE60;
    v33 = v99;
    v32 = v100;
    while (1)
    {
      v107 = v110;
      v106[0] = v108;
      v106[1] = v109;
      v34 = *(v5 + v30);
      if (!*(v34 + 16))
      {
        goto LABEL_9;
      }

      v35 = sub_24E76D934(v106);
      if ((v36 & 1) == 0)
      {
        break;
      }

      v37 = *(*(v34 + 56) + 8 * v35);

      sub_24E65864C(v106, v105);
      v102(v37);
      if ((*v98)(v12, 1, v32) != 1)
      {
        (*v93)(v33, v12, v32);
        v38 = *(v97 + v5);
        if (*(v38 + 16))
        {

          v39 = sub_24F92C7B8();
          v40 = -1 << *(v38 + 32);
          v41 = v39 & ~v40;
          if ((*(v38 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
          {
            v42 = ~v40;
            while (1)
            {
              sub_24E65864C(*(v38 + 48) + 40 * v41, v104);
              v43 = MEMORY[0x253052150](v104, v105);
              sub_24E6585F8(v104);
              if (v43)
              {
                break;
              }

              v41 = (v41 + 1) & v42;
              if (((*(v38 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            v33 = v99;
            v32 = v100;
            (*v92)(v99, v100);
            sub_24E6585F8(v105);
            sub_24E6585F8(v106);
            v5 = v101;
            goto LABEL_10;
          }

LABEL_20:
        }

        v44 = (v37 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
        if (v114[2] && (sub_24E76D644(*v44, v44[1]), (v45 & 1) != 0))
        {
          v46 = *v44;
          v47 = v44[1];

          v48 = sub_24F4D6258(v104, v46, v47);
          if (*v49)
          {
            v50 = v49;
            v90 = v48;
            v51 = v91;
            v33 = v99;
            v32 = v100;
            (*v89)(v91, v99, v100);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v103[0] = *v50;
            *v50 = 0x8000000000000000;
            sub_24E81CBE8(v51, v105, isUniquelyReferenced_nonNull_native);
            *v50 = v103[0];

            v90(v104, 0);

            goto LABEL_26;
          }

          (v48)(v104, 0);

          v32 = v100;
          v5 = v101;
          v33 = v99;
        }

        else
        {
          v53 = v44[1];
          v90 = *v44;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4B0, &unk_24F99C1C0);
          v54 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213100, &qword_24F96AFA0) - 8);
          v55 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
          v56 = swift_allocObject();
          *(v56 + 16) = v87;
          v57 = v56 + v55;
          v58 = v54[14];
          sub_24E65864C(v105, v57);
          v59 = (v57 + v58);
          v33 = v99;
          v32 = v100;
          (*v89)(v59, v99, v100);

          v60 = sub_24E60AAD0(v56);
          swift_setDeallocating();
          sub_24E601704(v57, &qword_27F213100, &qword_24F96AFA0);
          swift_deallocClassInstance();
          v61 = v114;
          v62 = swift_isUniquelyReferenced_nonNull_native();
          v104[0] = v61;
          sub_24E81CD60(v60, v90, v53, v62);

          v114 = v104[0];
LABEL_26:
          v5 = v101;
        }

        sub_24E65864C(v105, v103);
        v63 = v97;
        swift_beginAccess();
        sub_24ED7D5A0(v104, v103);
        sub_24E6585F8(v104);
        swift_endAccess();
        sub_24F23404C(*(*(v63 + v5) + 16) != 0);

        (*v92)(v33, v32);
        sub_24E6585F8(v105);
        sub_24E6585F8(v106);
        goto LABEL_10;
      }

      sub_24E6585F8(v105);
      sub_24E6585F8(v106);
      sub_24E601704(v12, &qword_27F228530, &unk_24F93C6E0);
LABEL_10:
      __swift_mutable_project_boxed_opaque_existential_1(v111, AssociatedTypeWitness);
      sub_24F92C4D8();
      if (!*(&v109 + 1))
      {
        v64 = v114;
        goto LABEL_33;
      }
    }

LABEL_9:
    sub_24E6585F8(v106);
    goto LABEL_10;
  }

  v64 = v98;
LABEL_33:
  __swift_destroy_boxed_opaque_existential_1(v111);
  if (!v64[2])
  {
LABEL_49:

    goto LABEL_50;
  }

  v65 = v64 + 8;
  v66 = 1 << *(v64 + 32);
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v68 = v67 & v64[8];
  v69 = (v5 + qword_27F22F1C0);
  v96 = qword_27F39C7D8;
  v70 = (v66 + 63) >> 6;
  LODWORD(v93) = *MEMORY[0x277D22298];
  v91 = (v86 + 8);
  v92 = (v86 + 104);

  v71 = 0;
  v97 = v69;
  v98 = v64;
  while (v68)
  {
    v72 = v68;
LABEL_43:
    v68 = (v72 - 1) & v72;
    if (*v69)
    {
      v99 = *v69;
      v100 = (v72 - 1) & v72;
      v74 = *(v64[7] + ((v71 << 9) | (8 * __clz(__rbit64(v72)))));
      v102 = v69[1];
      if (*(v5 + v96))
      {
        v76 = v94;
        v75 = v95;
        *v94 = 0;
        (*v92)(v76, v93, v75);

        v77 = v99;
        sub_24E5FCA4C(v99, v102);
        sub_24F92A0D8();
        (*v91)(v76, v75);
      }

      else
      {

        v77 = v99;
        sub_24E5FCA4C(v99, v102);
      }

      v78 = v88;
      v99 = v77(v74);
      v79 = swift_allocObject();
      swift_weakInit();
      v80 = swift_allocObject();
      *(v80 + 16) = v79;
      *(v80 + 24) = v78;
      v81 = swift_allocObject();
      swift_weakInit();
      v82 = swift_allocObject();
      *(v82 + 16) = v81;
      *(v82 + 24) = v74;
      v83 = sub_24E74EC40();

      v84 = sub_24F92BEF8();
      AssociatedTypeWitness = v83;
      AssociatedConformanceWitness = MEMORY[0x277D225C0];
      v111[0] = v84;
      sub_24F92A958();
      sub_24E824448(v77, v102);

      v5 = v101;

      __swift_destroy_boxed_opaque_existential_1(v111);

      v69 = v97;
      v64 = v98;
      v68 = v100;
    }
  }

  while (1)
  {
    v73 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      break;
    }

    if (v73 >= v70)
    {

      goto LABEL_49;
    }

    v72 = v65[v73];
    ++v71;
    if (v72)
    {
      v71 = v73;
      goto LABEL_43;
    }
  }

  __break(1u);
}

void sub_24F2484E8(uint64_t a1, char a2, void *a3)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  __swift_project_value_buffer(v6, qword_27F225388);
  sub_24F928868();

  if (v10 == 2 || (v10 & 1) == 0)
  {
    v8 = MEMORY[0x28223BE20](v7);
    v9[16] = a2 & 1;
    sub_24F248658(a1, sub_24F24DB84, v9, a3, &unk_286212BE0, &unk_286212C30, &unk_286212C58, sub_24F24D80C, v8, sub_24F24DB9C);
  }
}

void sub_24F248658(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10)
{
  v109 = a6;
  v110 = a7;
  v11 = a4;
  v116 = a2;
  v117 = a3;
  v107 = *a4;
  v108 = a5;
  v106 = sub_24F92A088();
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v105 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v96 - v15;
  v115 = sub_24F91F4A8();
  v17 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v19 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v114 = &v96 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4B8, &unk_24F99C1D0);
  v130[3] = v22;
  v130[4] = sub_24E602068(&qword_27F22F4C0, &qword_27F22F4B8, &unk_24F99C1D0, MEMORY[0x277D83488]);
  v130[0] = a1;
  if (*(v11 + qword_27F39C790) == 1 || !*(a1 + 16))
  {

LABEL_49:
    __swift_destroy_boxed_opaque_existential_1(v130);
    return;
  }

  v99 = a8;

  v113 = sub_24E60AABC(MEMORY[0x277D84F90]);
  v129 = v113;
  v23 = __swift_project_boxed_opaque_existential_1(v130, v22);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26, v24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v126);
  v29 = -1 << *(*v26 + 32);
  v30 = ~v29;
  v31 = (*v26 + 64);
  v32 = *v31;
  v33 = -v29;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  else
  {
    v34 = -1;
  }

  *boxed_opaque_existential_1 = *v26;
  boxed_opaque_existential_1[1] = v31;
  boxed_opaque_existential_1[2] = v30;
  boxed_opaque_existential_1[3] = 0;
  boxed_opaque_existential_1[4] = v34 & v32;
  v35 = qword_27F39C780;
  v36 = qword_27F22F1D8;
  swift_beginAccess();
  v112 = v36;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v126, AssociatedTypeWitness);
  sub_24F92C4D8();
  v111 = v11;
  if (*(&v124 + 1))
  {
    v97 = v19;
    v113 = (v17 + 48);
    v102 = (v17 + 8);
    v103 = (v17 + 32);
    v100 = (v17 + 16);
    v98 = xmmword_24F93DE60;
    v37 = v114;
    v38 = v115;
    while (1)
    {
      v122 = v125;
      v121[0] = v123;
      v121[1] = v124;
      v39 = *(v11 + v35);
      if (*(v39 + 16))
      {

        v40 = sub_24E76D934(v121);
        if (v41)
        {
          v42 = *(*(v39 + 56) + 8 * v40);

          sub_24E65864C(v121, v120);
          v116(v42);
          if ((*v113)(v16, 1, v38) == 1)
          {

            sub_24E6585F8(v120);
            sub_24E6585F8(v121);
            sub_24E601704(v16, &qword_27F228530, &unk_24F93C6E0);
            goto LABEL_10;
          }

          (*v103)(v37, v16, v38);
          v43 = *(v11 + v112);
          if (!*(v43 + 16))
          {
            goto LABEL_21;
          }

          v44 = sub_24F92C7B8();
          v45 = -1 << *(v43 + 32);
          v46 = v44 & ~v45;
          if (((*(v43 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
          {
LABEL_20:

LABEL_21:
            v49 = (v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
            if (v129[2] && (sub_24E76D644(*v49, v49[1]), (v50 & 1) != 0))
            {
              v52 = *v49;
              v51 = v49[1];

              v53 = sub_24F4D6258(v119, v52, v51);
              if (*v54)
              {
                v55 = v54;
                v96 = v53;
                v56 = *v100;
                v57 = v97;
                v101 = v51;
                v58 = v114;
                v38 = v115;
                v56(v97, v114, v115);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v118[0] = *v55;
                *v55 = 0x8000000000000000;
                sub_24E81CBE8(v57, v120, isUniquelyReferenced_nonNull_native);
                *v55 = v118[0];

                (v96)(v119, 0);
              }

              else
              {
                (v53)(v119, 0);

                v58 = v114;
                v38 = v115;
              }
            }

            else
            {
              v60 = *v49;
              v61 = v49[1];
              v101 = v60;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4B0, &unk_24F99C1C0);
              v62 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213100, &qword_24F96AFA0) - 8);
              v63 = (*(*v62 + 80) + 32) & ~*(*v62 + 80);
              v64 = swift_allocObject();
              *(v64 + 16) = v98;
              v65 = v64 + v63;
              v66 = v62[14];
              sub_24E65864C(v120, v64 + v63);
              v58 = v114;
              v38 = v115;
              (*v100)(v65 + v66, v114, v115);

              v67 = sub_24E60AAD0(v64);
              swift_setDeallocating();
              v68 = v65;
              v11 = v111;
              sub_24E601704(v68, &qword_27F213100, &qword_24F96AFA0);
              swift_deallocClassInstance();
              v69 = v129;
              v70 = swift_isUniquelyReferenced_nonNull_native();
              v119[0] = v69;
              sub_24E81CD60(v67, v101, v61, v70);

              v129 = v119[0];
            }

            sub_24E65864C(v120, v118);
            v71 = v112;
            swift_beginAccess();
            sub_24ED7D5A0(v119, v118);
            sub_24E6585F8(v119);
            swift_endAccess();
            sub_24F23404C(*(*(v11 + v71) + 16) != 0);

            (*v102)(v58, v38);
            sub_24E6585F8(v120);
            sub_24E6585F8(v121);
            v37 = v58;
            goto LABEL_10;
          }

          v47 = ~v45;
          while (1)
          {
            sub_24E65864C(*(v43 + 48) + 40 * v46, v119);
            v48 = MEMORY[0x253052150](v119, v120);
            sub_24E6585F8(v119);
            if (v48)
            {
              break;
            }

            v46 = (v46 + 1) & v47;
            if (((*(v43 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          v37 = v114;
          v38 = v115;
          (*v102)(v114, v115);
          sub_24E6585F8(v120);
        }

        else
        {
        }
      }

      sub_24E6585F8(v121);
LABEL_10:
      __swift_mutable_project_boxed_opaque_existential_1(v126, AssociatedTypeWitness);
      sub_24F92C4D8();
      if (!*(&v124 + 1))
      {
        v72 = v129;
        goto LABEL_32;
      }
    }
  }

  v72 = v113;
LABEL_32:
  __swift_destroy_boxed_opaque_existential_1(v126);
  if (!v72[2])
  {
LABEL_48:

    goto LABEL_49;
  }

  v112 = a10;
  v73 = v72 + 8;
  v74 = 1 << *(v72 + 32);
  v75 = -1;
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  v76 = v75 & v72[8];
  v77 = (v11 + qword_27F22F1C0);
  v102 = qword_27F39C7D8;
  v78 = (v74 + 63) >> 6;
  LODWORD(v101) = *MEMORY[0x277D22298];
  v100 = (v104 + 13);
  ++v104;

  v79 = 0;
  v113 = v72;
  v103 = v77;
  while (v76)
  {
    v80 = v76;
LABEL_42:
    v76 = (v80 - 1) & v80;
    if (*v77)
    {
      v82 = *v77;
      v83 = *(v72[7] + ((v79 << 9) | (8 * __clz(__rbit64(v80)))));
      v116 = v76;
      v117 = v83;
      v84 = v77[1];
      if (*(v102 + v111))
      {
        v86 = v105;
        v85 = v106;
        *v105 = 0;
        (*v100)(v86, v101, v85);

        v87 = v82;
        sub_24E5FCA4C(v82, v84);
        sub_24F92A0D8();
        (*v104)(v86, v85);
      }

      else
      {

        v87 = v82;
        sub_24E5FCA4C(v82, v84);
      }

      v88 = v117;
      v115 = v84;
      v114 = v87(v117);
      v89 = swift_allocObject();
      swift_weakInit();
      v90 = swift_allocObject();
      v91 = v107;
      *(v90 + 16) = v89;
      *(v90 + 24) = v91;
      v92 = swift_allocObject();
      swift_weakInit();
      v93 = swift_allocObject();
      *(v93 + 16) = v92;
      *(v93 + 24) = v88;
      v94 = sub_24E74EC40();

      v95 = sub_24F92BEF8();
      AssociatedTypeWitness = v94;
      AssociatedConformanceWitness = MEMORY[0x277D225C0];
      v126[0] = v95;
      sub_24F92A958();
      sub_24E824448(v87, v115);

      __swift_destroy_boxed_opaque_existential_1(v126);

      v72 = v113;
      v77 = v103;
      v76 = v116;
    }
  }

  while (1)
  {
    v81 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      break;
    }

    if (v81 >= v78)
    {

      goto LABEL_48;
    }

    v80 = v73[v81];
    ++v79;
    if (v80)
    {
      v79 = v81;
      goto LABEL_42;
    }
  }

  __break(1u);
}

void sub_24F249298(uint64_t a1, char a2, void *a3)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  __swift_project_value_buffer(v6, qword_27F225388);
  sub_24F928868();

  if (v10 == 2 || (v10 & 1) == 0)
  {
    v8 = MEMORY[0x28223BE20](v7);
    v9[16] = a2 & 1;
    sub_24F248658(a1, sub_24F24DB84, v9, a3, &unk_286212AA0, &unk_286212AF0, &unk_286212B18, sub_24F24D698, v8, sub_24F24DB9C);
  }
}

void sub_24F249408(uint64_t a1, char a2, void *a3)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  __swift_project_value_buffer(v6, qword_27F225388);
  sub_24F928868();

  if (v10 == 2 || (v10 & 1) == 0)
  {
    v8 = MEMORY[0x28223BE20](v7);
    v9[16] = a2 & 1;
    sub_24F248658(a1, sub_24F24DB84, v9, a3, &unk_286212A00, &unk_286212A50, &unk_286212A78, sub_24F24D5C4, v8, sub_24F24D620);
  }
}

void sub_24F2495D8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10)
{
  v103 = a6;
  v104 = a7;
  v11 = a4;
  v110 = a2;
  v111 = a3;
  v101 = *a4;
  v102 = a5;
  v100 = sub_24F92A088();
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v90 - v15;
  v109 = sub_24F91F4A8();
  v17 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v108 = &v90 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214E0, &qword_24F9664A0);
  v124[3] = v22;
  v124[4] = sub_24E602068(&qword_27F2214E8, &qword_27F2214E0, &qword_24F9664A0, MEMORY[0x277D83988]);
  v124[0] = a1;
  if (*(v11 + qword_27F39C790) == 1 || !*(a1 + 16))
  {

LABEL_46:
    __swift_destroy_boxed_opaque_existential_1(v124);
    return;
  }

  v93 = a8;

  v107 = sub_24E60AABC(MEMORY[0x277D84F90]);
  v123 = v107;
  v23 = __swift_project_boxed_opaque_existential_1(v124, v22);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = (&v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26, v24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v120);
  *boxed_opaque_existential_1 = *v26;
  boxed_opaque_existential_1[1] = 0;
  v29 = qword_27F39C780;
  v30 = qword_27F22F1D8;
  swift_beginAccess();
  v106 = v30;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v120, AssociatedTypeWitness);
  sub_24F92C4D8();
  v105 = v11;
  if (*(&v118 + 1))
  {
    v91 = v19;
    v107 = (v17 + 48);
    v96 = (v17 + 8);
    v97 = (v17 + 32);
    v94 = (v17 + 16);
    v92 = xmmword_24F93DE60;
    v31 = v108;
    v32 = v109;
    while (1)
    {
      v116 = v119;
      v115[0] = v117;
      v115[1] = v118;
      v33 = *(v11 + v29);
      if (*(v33 + 16))
      {

        v34 = sub_24E76D934(v115);
        if (v35)
        {
          v36 = *(*(v33 + 56) + 8 * v34);

          sub_24E65864C(v115, v114);
          v110(v36);
          if ((*v107)(v16, 1, v32) == 1)
          {

            sub_24E6585F8(v114);
            sub_24E6585F8(v115);
            sub_24E601704(v16, &qword_27F228530, &unk_24F93C6E0);
            goto LABEL_7;
          }

          (*v97)(v31, v16, v32);
          v37 = *(v11 + v106);
          if (!*(v37 + 16))
          {
            goto LABEL_18;
          }

          v38 = sub_24F92C7B8();
          v39 = -1 << *(v37 + 32);
          v40 = v38 & ~v39;
          if (((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
LABEL_17:

LABEL_18:
            v43 = (v36 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
            if (v123[2] && (sub_24E76D644(*v43, v43[1]), (v44 & 1) != 0))
            {
              v46 = *v43;
              v45 = v43[1];

              v47 = sub_24F4D6258(v113, v46, v45);
              if (*v48)
              {
                v49 = v48;
                v90 = v47;
                v50 = *v94;
                v51 = v91;
                v95 = v45;
                v52 = v108;
                v32 = v109;
                v50(v91, v108, v109);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v112[0] = *v49;
                *v49 = 0x8000000000000000;
                sub_24E81CBE8(v51, v114, isUniquelyReferenced_nonNull_native);
                *v49 = v112[0];

                (v90)(v113, 0);
              }

              else
              {
                (v47)(v113, 0);

                v52 = v108;
                v32 = v109;
              }
            }

            else
            {
              v54 = *v43;
              v55 = v43[1];
              v95 = v54;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4B0, &unk_24F99C1C0);
              v56 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213100, &qword_24F96AFA0) - 8);
              v57 = (*(*v56 + 80) + 32) & ~*(*v56 + 80);
              v58 = swift_allocObject();
              *(v58 + 16) = v92;
              v59 = v58 + v57;
              v60 = v56[14];
              sub_24E65864C(v114, v58 + v57);
              v52 = v108;
              v32 = v109;
              (*v94)(v59 + v60, v108, v109);

              v61 = sub_24E60AAD0(v58);
              swift_setDeallocating();
              v62 = v59;
              v11 = v105;
              sub_24E601704(v62, &qword_27F213100, &qword_24F96AFA0);
              swift_deallocClassInstance();
              v63 = v123;
              v64 = swift_isUniquelyReferenced_nonNull_native();
              v113[0] = v63;
              sub_24E81CD60(v61, v95, v55, v64);

              v123 = v113[0];
            }

            sub_24E65864C(v114, v112);
            v65 = v106;
            swift_beginAccess();
            sub_24ED7D5A0(v113, v112);
            sub_24E6585F8(v113);
            swift_endAccess();
            sub_24F23404C(*(*(v11 + v65) + 16) != 0);

            (*v96)(v52, v32);
            sub_24E6585F8(v114);
            sub_24E6585F8(v115);
            v31 = v52;
            goto LABEL_7;
          }

          v41 = ~v39;
          while (1)
          {
            sub_24E65864C(*(v37 + 48) + 40 * v40, v113);
            v42 = MEMORY[0x253052150](v113, v114);
            sub_24E6585F8(v113);
            if (v42)
            {
              break;
            }

            v40 = (v40 + 1) & v41;
            if (((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v31 = v108;
          v32 = v109;
          (*v96)(v108, v109);
          sub_24E6585F8(v114);
        }

        else
        {
        }
      }

      sub_24E6585F8(v115);
LABEL_7:
      __swift_mutable_project_boxed_opaque_existential_1(v120, AssociatedTypeWitness);
      sub_24F92C4D8();
      if (!*(&v118 + 1))
      {
        v66 = v123;
        goto LABEL_29;
      }
    }
  }

  v66 = v107;
LABEL_29:
  __swift_destroy_boxed_opaque_existential_1(v120);
  if (!v66[2])
  {
LABEL_45:

    goto LABEL_46;
  }

  v106 = a10;
  v67 = v66 + 8;
  v68 = 1 << *(v66 + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & v66[8];
  v71 = (v11 + qword_27F22F1C0);
  v96 = qword_27F39C7D8;
  v72 = (v68 + 63) >> 6;
  LODWORD(v95) = *MEMORY[0x277D22298];
  v94 = (v98 + 13);
  ++v98;

  v73 = 0;
  v107 = v66;
  v97 = v71;
  while (v70)
  {
    v74 = v70;
LABEL_39:
    v70 = (v74 - 1) & v74;
    if (*v71)
    {
      v76 = *v71;
      v77 = *(v66[7] + ((v73 << 9) | (8 * __clz(__rbit64(v74)))));
      v110 = v70;
      v111 = v77;
      v78 = v71[1];
      if (*(v96 + v105))
      {
        v80 = v99;
        v79 = v100;
        *v99 = 0;
        (*v94)(v80, v95, v79);

        v81 = v76;
        sub_24E5FCA4C(v76, v78);
        sub_24F92A0D8();
        (*v98)(v80, v79);
      }

      else
      {

        v81 = v76;
        sub_24E5FCA4C(v76, v78);
      }

      v82 = v111;
      v109 = v78;
      v108 = v81(v111);
      v83 = swift_allocObject();
      swift_weakInit();
      v84 = swift_allocObject();
      v85 = v101;
      *(v84 + 16) = v83;
      *(v84 + 24) = v85;
      v86 = swift_allocObject();
      swift_weakInit();
      v87 = swift_allocObject();
      *(v87 + 16) = v86;
      *(v87 + 24) = v82;
      v88 = sub_24E74EC40();

      v89 = sub_24F92BEF8();
      AssociatedTypeWitness = v88;
      AssociatedConformanceWitness = MEMORY[0x277D225C0];
      v120[0] = v89;
      sub_24F92A958();
      sub_24E824448(v81, v109);

      __swift_destroy_boxed_opaque_existential_1(v120);

      v66 = v107;
      v71 = v97;
      v70 = v110;
    }
  }

  while (1)
  {
    v75 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    if (v75 >= v72)
    {

      goto LABEL_45;
    }

    v74 = v67[v75];
    ++v73;
    if (v74)
    {
      v73 = v75;
      goto LABEL_39;
    }
  }

  __break(1u);
}

void sub_24F24A1E4(uint64_t a1, char a2, void *a3)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  __swift_project_value_buffer(v6, qword_27F225388);
  sub_24F928868();

  if (v10 == 2 || (v10 & 1) == 0)
  {
    v8 = MEMORY[0x28223BE20](v7);
    v9[16] = a2 & 1;
    sub_24F248658(a1, sub_24F24DB84, v9, a3, &unk_286212C80, &unk_286212CD0, &unk_286212CF8, sub_24F24D8A8, v8, sub_24F24DB9C);
  }
}

void sub_24F24A354(uint64_t a1, char a2, void *a3)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  __swift_project_value_buffer(v6, qword_27F225388);
  sub_24F928868();

  if (v10 == 2 || (v10 & 1) == 0)
  {
    v8 = MEMORY[0x28223BE20](v7);
    v9[16] = a2 & 1;
    sub_24F248658(a1, sub_24F24DB84, v9, a3, &unk_286212B40, &unk_286212B90, &unk_286212BB8, sub_24F24D750, v8, sub_24F24DB9C);
  }
}

void sub_24F24A4C4(uint64_t a1, char a2, void *a3)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  __swift_project_value_buffer(v6, qword_27F225388);
  sub_24F928868();

  if (v10 == 2 || (v10 & 1) == 0)
  {
    v8 = MEMORY[0x28223BE20](v7);
    v9[16] = a2 & 1;
    sub_24F248658(a1, sub_24F24DB84, v9, a3, &unk_286212960, &unk_2862129B0, &unk_2862129D8, sub_24F24D510, v8, sub_24F24DB9C);
  }
}

void sub_24F24A634(uint64_t a1, char a2, void *a3)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  __swift_project_value_buffer(v6, qword_27F225388);
  sub_24F928868();

  if (v10 == 2 || (v10 & 1) == 0)
  {
    v8 = MEMORY[0x28223BE20](v7);
    v9[16] = a2 & 1;
    sub_24F248658(a1, sub_24F24DB84, v9, a3, &unk_2862126E0, &unk_286212730, &unk_286212758, sub_24F24D34C, v8, sub_24F24DB9C);
  }
}

void sub_24F24A7A4(uint64_t a1, char a2, void *a3)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  __swift_project_value_buffer(v6, qword_27F225388);
  sub_24F928868();

  if (v10 == 2 || (v10 & 1) == 0)
  {
    v8 = MEMORY[0x28223BE20](v7);
    v9[16] = a2 & 1;
    sub_24F248658(a1, sub_24ED962B0, v9, a3, &unk_286212618, &unk_286212668, &unk_286212690, sub_24F24D2F4, v8, sub_24F24D300);
  }
}

void sub_24F24A914(unint64_t a1, void *a2, uint64_t a3)
{
  v33 = a3;
  v32 = sub_24F928818();
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v30 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v31 = &v23 - v9;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v11 = 0;
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    v29 = a1 & 0xC000000000000001;
    v24 = (v5 + 8);
    v25 = qword_27F39C7C8;
    v26 = i;
    v27 = a1;
    v12 = v30;
    while (v29)
    {
      MEMORY[0x253052270](v11, a1, v8);
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v15 = a2[3];
      v14 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v15);
      (*(v14 + 8))(v15, v14);
      v16 = v31;
      sub_24F0F22FC(v12, v31);
      (*v24)(v12, v32);
      v17 = a2[3];
      v18 = a2[4];
      __swift_mutable_project_boxed_opaque_existential_1(a2, v17);
      v19 = *(v18 + 16);
      v20 = v17;
      v21 = v18;
      v22 = v26;
      a1 = v27;
      v19(v16, v20, v21);
      v5 = *(v33 + v25);
      sub_24F92AD88();

      ++v11;
      if (v13 == v22)
      {
        return;
      }
    }

    if (v11 >= *(v28 + 16))
    {
      goto LABEL_12;
    }

    v13 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_24F24AB78(char *a1, uint64_t a2)
{
  v3 = sub_24F92A078();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v46 = v3;
    *(Strong + qword_27F39C790) = 0;
    v9 = *(Strong + qword_27F22F1B8);
    v45 = v4;
    v48 = a1;
    if (v9)
    {
      v10 = *(Strong + qword_27F22F1B8 + 8);

      a1 = v9(a1);
      sub_24E824448(v9, v10);
    }

    else
    {
    }

    v11 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;
    swift_beginAccess();

    sub_24F23A2A4(v12);
    v14 = v13;

    *&a1[v11] = v14;

    *(v8 + qword_27F22F198) = a1;
    swift_retain_n();

    v15 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
    swift_beginAccess();
    v16 = qword_27F22F1A0;
    *(v8 + qword_27F22F1A0) = *&a1[v15];

    v17 = *&a1[v11];
    v18 = qword_27F39C780;
    swift_beginAccess();
    *(v8 + v18) = v17;

    sub_24E60169C(&a1[OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage], &v50, &qword_27F2129B0, &unk_24F945320);
    v53 = 0;
    v54 = 0;
    v19 = qword_27F39C788;
    swift_beginAccess();
    sub_24EBD46D4(&v50, v8 + v19);
    swift_endAccess();
    sub_24E9B7D88(v8 + v19, v49);
    sub_24F92AD88();
    sub_24E94E128(v49);
    sub_24E94E128(&v50);
    v47 = *(v8 + qword_27F39C7A0);
    v20 = *(v8 + v16);
    v21 = MEMORY[0x277D84F90];
    v49[0] = MEMORY[0x277D84F90];
    v22 = *(v20 + 16);

    if (v22)
    {
      v23 = 0;
      v24 = v20 + 32;
      v41 = v22 - 1;
      v42 = v20 + 32;
      v43 = a1;
      v44 = v6;
      while (1)
      {
        v25 = v24 + 40 * v23;
        v26 = v23;
        while (1)
        {
          if (v26 >= *(v20 + 16))
          {
            __break(1u);
            return;
          }

          sub_24E65864C(v25, &v50);
          if (*(*(v8 + v18) + 16))
          {
            break;
          }

LABEL_8:
          ++v26;
          sub_24E6585F8(&v50);
          v25 += 40;
          if (v22 == v26)
          {
            a1 = v43;
            v6 = v44;
            goto LABEL_19;
          }
        }

        sub_24E76D934(&v50);
        if ((v27 & 1) == 0)
        {
          break;
        }

        v28 = sub_24E6585F8(&v50);
        MEMORY[0x253050F00](v28);
        if (*((v49[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        v23 = v26 + 1;
        sub_24F92B638();
        v21 = v49[0];
        v24 = v42;
        v29 = v41 == v26;
        a1 = v43;
        v6 = v44;
        if (v29)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_8;
    }

LABEL_19:

    v50 = a1;
    v51 = v21;
    v52 = 0;
    sub_24F92AD88();
    sub_24F24D968(v50, v51, v52);
    swift_beginAccess();

    sub_24F24697C(v30, 0, v8);

    v31 = *(v8 + qword_27F22F1F0);
    if (v31)
    {
      v32 = *(v31 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v33 = *(v32 + 48);
      if (v33 <= 0)
      {
        goto LABEL_24;
      }

      v34 = v33 - 1;
      *(v32 + 48) = v34;
      v35 = v34 == 0;
      swift_beginAccess();
      *(v32 + 40) = v35;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }

      if (!*(v32 + 48))
      {
LABEL_24:
        PendingPageRender.tryToEstablishUserReadyTime()();
      }
    }

    if (*(v8 + qword_27F39C7D8))
    {
      v36 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
      swift_beginAccess();
      v37 = sub_24F928818();
      (*(*(v37 - 8) + 16))(v6, &a1[v36], v37);
      v39 = v45;
      v38 = v46;
      (*(v45 + 104))(v6, *MEMORY[0x277D22290], v46);
      sub_24F92A0C8();

      (*(v39 + 8))(v6, v38);
    }

    else
    {
    }
  }
}

void sub_24F24B184(char *a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t), uint64_t), uint64_t (*a4)(void, __n128), void (*a5)(void))
{
  v9 = sub_24F92A078();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v14 = Strong;
  v49 = v12;
  v50 = v10;
  v51 = v9;
  *(Strong + qword_27F39C790) = 0;
  v15 = *(Strong + qword_27F22F1B8);
  v55 = a5;
  if (v15)
  {
    v16 = *(Strong + qword_27F22F1B8 + 8);

    v17 = v15(a1);
    a3(v15, v16);
  }

  else
  {

    v17 = a1;
  }

  v54 = a1;
  v18 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;
  swift_beginAccess();

  sub_24F23A2A4(v19);
  v21 = v20;

  *&v17[v18] = v21;

  *(v14 + qword_27F22F198) = v17;
  swift_retain_n();

  v22 = off_28620C6F8[0];
  v23 = (a4)(0);
  v22(v23, &protocol witness table for GenericPage);
  v24 = qword_27F22F1A0;
  *(v14 + qword_27F22F1A0) = v25;

  v53 = v23;
  v52 = off_28620C700;
  off_28620C700(v23, &protocol witness table for GenericPage);
  v27 = v26;
  v28 = qword_27F39C780;
  swift_beginAccess();
  *(v14 + v28) = v27;

  sub_24E60169C(&v17[OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage], &v57, &qword_27F2129B0, &unk_24F945320);
  v60 = 0;
  v61 = 0;
  v29 = qword_27F39C788;
  swift_beginAccess();
  sub_24EBD46D4(&v57, v14 + v29);
  swift_endAccess();
  sub_24E9B7D88(v14 + v29, v56);
  sub_24F92AD88();
  sub_24E94E128(v56);
  sub_24E94E128(&v57);
  v30 = *(v14 + qword_27F39C7A0);
  v31 = *(v14 + v24);
  v32 = MEMORY[0x277D84F90];
  v56[0] = MEMORY[0x277D84F90];
  v33 = *(v31 + 16);

  if (!v33)
  {
    goto LABEL_16;
  }

  v34 = 0;
  v35 = v31 + 32;
  v46 = v33 - 1;
  v48 = v30;
  v47 = v31 + 32;
  do
  {
    v36 = v35 + 40 * v34;
    v37 = v34;
    while (1)
    {
      if (v37 >= *(v31 + 16))
      {
        __break(1u);
        return;
      }

      sub_24E65864C(v36, &v57);
      if (*(*(v14 + v28) + 16))
      {
        break;
      }

LABEL_8:
      ++v37;
      sub_24E6585F8(&v57);
      v36 += 40;
      if (v33 == v37)
      {
        goto LABEL_16;
      }
    }

    sub_24E76D934(&v57);
    if ((v38 & 1) == 0)
    {

      goto LABEL_8;
    }

    v39 = sub_24E6585F8(&v57);
    MEMORY[0x253050F00](v39);
    if (*((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v34 = v37 + 1;
    sub_24F92B638();
    v32 = v56[0];
    v35 = v47;
  }

  while (v46 != v37);
LABEL_16:

  v57 = v17;
  v58 = v32;
  v59 = 0;
  sub_24F92AD88();
  sub_24F24D968(v57, v58, v59);
  v52(v53);
  v55();

  if (*(v14 + qword_27F22F1F0))
  {

    sub_24ED6F318();
  }

  if (*(v14 + qword_27F39C7D8))
  {
    v40 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v41 = sub_24F928818();
    v42 = v49;
    (*(*(v41 - 8) + 16))(v49, &v17[v40], v41);
    v43 = v50;
    v44 = v51;
    (*(v50 + 104))(v42, *MEMORY[0x277D22290], v51);
    sub_24F92A0C8();

    (*(v43 + 8))(v42, v44);
  }

  else
  {
  }
}

void sub_24F24B7AC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t), uint64_t), uint64_t *a4, uint64_t *a5, void *a6, void (*a7)(__n128))
{
  v52 = a4;
  v53 = a1;
  v11 = sub_24F92A078();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  v47 = v14;
  v48 = v12;
  *(Strong + qword_27F39C790) = 0;
  v17 = *(Strong + qword_27F22F1B8);
  v49 = v11;
  if (v17)
  {
    v18 = *(Strong + qword_27F22F1B8 + 8);

    v19 = v17(v53);
    a3(v17, v18);
  }

  else
  {
    v19 = v53;
  }

  v50 = a7;
  v20 = *v52;
  swift_beginAccess();

  sub_24F23A2A4(v21);
  v23 = v22;

  *&v19[v20] = v23;

  *(v16 + qword_27F22F198) = v19;
  swift_retain_n();

  v24 = *a5;
  swift_beginAccess();
  v25 = qword_27F22F1A0;
  *(v16 + qword_27F22F1A0) = *&v19[v24];

  v26 = *&v19[v20];
  v27 = qword_27F39C780;
  swift_beginAccess();
  *(v16 + v27) = v26;

  sub_24E60169C(&v19[*a6], &v55, &qword_27F2129B0, &unk_24F945320);
  v58 = 0;
  v59 = 0;
  v28 = qword_27F39C788;
  swift_beginAccess();
  sub_24EBD46D4(&v55, v16 + v28);
  swift_endAccess();
  sub_24E9B7D88(v16 + v28, v54);
  sub_24F92AD88();
  sub_24E94E128(v54);
  sub_24E94E128(&v55);
  v51 = *(v16 + qword_27F39C7A0);
  v29 = *(v16 + v25);
  v30 = MEMORY[0x277D84F90];
  v54[0] = MEMORY[0x277D84F90];
  v31 = *(v29 + 16);

  if (!v31)
  {
    goto LABEL_16;
  }

  v32 = 0;
  v33 = v29 + 32;
  v45 = v31 - 1;
  v46 = v29 + 32;
  do
  {
    v34 = v33 + 40 * v32;
    v35 = v32;
    while (1)
    {
      if (v35 >= *(v29 + 16))
      {
        __break(1u);
        return;
      }

      sub_24E65864C(v34, &v55);
      if (*(*(v16 + v27) + 16))
      {
        break;
      }

LABEL_8:
      ++v35;
      sub_24E6585F8(&v55);
      v34 += 40;
      if (v31 == v35)
      {
        goto LABEL_16;
      }
    }

    sub_24E76D934(&v55);
    if ((v36 & 1) == 0)
    {

      goto LABEL_8;
    }

    v37 = sub_24E6585F8(&v55);
    MEMORY[0x253050F00](v37);
    if (*((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v32 = v35 + 1;
    sub_24F92B638();
    v30 = v54[0];
    v33 = v46;
  }

  while (v45 != v35);
LABEL_16:

  v55 = v19;
  v56 = v30;
  v57 = 0;
  sub_24F92AD88();
  sub_24F24D968(v55, v56, v57);
  swift_beginAccess();

  (v50)(v38, 0, v16);

  if (*(v16 + qword_27F22F1F0))
  {

    sub_24ED6F318();
  }

  if (*(v16 + qword_27F39C7D8))
  {
    v39 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v40 = sub_24F928818();
    v41 = v47;
    (*(*(v40 - 8) + 16))(v47, &v19[v39], v40);
    v42 = v48;
    v43 = v49;
    (*(v48 + 104))(v41, *MEMORY[0x277D22290], v49);
    sub_24F92A0C8();

    (*(v42 + 8))(v41, v43);
  }

  else
  {
  }
}

void sub_24F24BDA4(char *a1, uint64_t a2)
{
  v3 = sub_24F92A078();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v51 = v6;
  v52 = v4;
  v53 = v3;
  *(Strong + qword_27F39C790) = 0;
  v9 = *(Strong + qword_27F22F1B8);
  v56 = a1;
  if (v9)
  {
    v10 = *(Strong + qword_27F22F1B8 + 8);

    a1 = v9(a1);
    sub_24E824448(v9, v10);
  }

  else
  {
  }

  v11 = qword_27F39DC30;
  swift_beginAccess();

  sub_24F23A2A4(v12);
  v14 = v13;

  *&a1[v11] = v14;

  *(v8 + qword_27F22F198) = a1;
  swift_retain_n();

  v15 = sub_24F24DA18(&qword_27F23CC60, type metadata accessor for SearchChartsAndCategoriesPage, &protocol conformance descriptor for DynamicPage<A>);
  v16 = *(v15 + 56);
  v17 = type metadata accessor for SearchChartsAndCategoriesPage(0);
  v18 = v16(v17, v15);
  v19 = &a1[*(*a1 + 184)];
  swift_beginAccess();
  v20 = MEMORY[0x277D84F90];
  if (*(v18 + 16))
  {
    v23 = v19;
    v21 = *v19;
    v22 = v23[1];

    v24 = sub_24E7728F0(v21, v22);
    v26 = v25;

    if (v26)
    {
      v27 = *(*(v18 + 56) + 8 * v24);
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  v28 = qword_27F22F1A0;
  *(v8 + qword_27F22F1A0) = v27;

  v55 = v17;
  v54 = off_28620E0A8;
  off_28620E0A8();
  v30 = v29;
  v31 = qword_27F39C780;
  swift_beginAccess();
  *(v8 + v31) = v30;

  sub_24E60169C(&a1[*(*a1 + 192)], &v59, &qword_27F2129B0, &unk_24F945320);
  v62 = 0;
  v63 = 0;
  v32 = qword_27F39C788;
  swift_beginAccess();
  sub_24EBD46D4(&v59, v8 + v32);
  swift_endAccess();
  sub_24E9B7D88(v8 + v32, v58);
  sub_24F92AD88();
  sub_24E94E128(v58);
  sub_24E94E128(&v59);
  v33 = *(v8 + qword_27F39C7A0);
  v34 = *(v8 + v28);
  v58[0] = v20;
  v35 = *(v34 + 16);

  if (!v35)
  {
    v57 = v20;
    goto LABEL_24;
  }

  v36 = 0;
  v37 = v34 + 32;
  v48 = v35 - 1;
  v57 = MEMORY[0x277D84F90];
  v50 = v33;
  v49 = v34 + 32;
  do
  {
    v38 = v37 + 40 * v36;
    v39 = v36;
    while (1)
    {
      if (v39 >= *(v34 + 16))
      {
        __break(1u);
        return;
      }

      sub_24E65864C(v38, &v59);
      if (*(*(v8 + v31) + 16))
      {
        break;
      }

LABEL_13:
      ++v39;
      sub_24E6585F8(&v59);
      v38 += 40;
      if (v35 == v39)
      {
        goto LABEL_24;
      }
    }

    sub_24E76D934(&v59);
    if ((v40 & 1) == 0)
    {

      goto LABEL_13;
    }

    v41 = sub_24E6585F8(&v59);
    MEMORY[0x253050F00](v41);
    if (*((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v36 = v39 + 1;
    sub_24F92B638();
    v57 = v58[0];
    v37 = v49;
  }

  while (v48 != v39);
LABEL_24:

  v59 = a1;
  v60 = v57;
  v61 = 0;
  sub_24F92AD88();
  sub_24F24D968(v59, v60, v61);
  v42 = (v54)(v55, &protocol witness table for DynamicPage<A>);
  sub_24F24A634(v42, 0, v8);

  if (*(v8 + qword_27F22F1F0))
  {

    sub_24ED6F318();
  }

  if (*(v8 + qword_27F39C7D8))
  {
    v43 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v44 = sub_24F928818();
    v45 = v51;
    (*(*(v44 - 8) + 16))(v51, &a1[v43], v44);
    v46 = v52;
    v47 = v53;
    (*(v52 + 104))(v45, *MEMORY[0x277D22290], v53);
    sub_24F92A0C8();

    (*(v46 + 8))(v45, v47);
  }

  else
  {
  }
}

uint64_t sub_24F24C4A4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v64 = a3;
  v58[1] = a1;
  v10 = sub_24F92BEE8();
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x28223BE20](v10);
  v60 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_24F92BE88();
  MEMORY[0x28223BE20](v59);
  v58[2] = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F927DC8();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v58 - v15;
  v58[0] = v58 - v15;
  v17 = (v5 + qword_27F39DFB0);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v5 + qword_27F39DFB8);
  *v18 = 0;
  v18[1] = 0;
  v19 = v5 + qword_27F39DFC0;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  *(v19 + 40) = 3;
  *(v5 + qword_27F39DFE8) = 0;
  *(v5 + qword_27F39DFC8) = 0;
  *(v5 + qword_27F23CC40) = 0;
  *(v5 + qword_27F39DFD0) = 0;
  v20 = (v5 + qword_27F23CC28);
  *v20 = 0;
  v20[1] = 0;
  v21 = qword_27F39DFD8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CC68, &unk_24F9D8C40);
  swift_allocObject();
  *(v5 + v21) = sub_24F92ADA8();
  v22 = qword_27F39DFE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  *(v5 + v22) = sub_24F92ADA8();
  *(v5 + qword_27F23CC38) = 0;
  v23 = qword_27F23CC30;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23CC70, &qword_24F9D8C50);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 16) = MEMORY[0x277D84FA0];
  *(v6 + v23) = v24;
  *(v6 + qword_27F23CC18) = a2;
  *(v6 + qword_27F23CC48) = a5;
  v25 = &a2[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
  swift_beginAccess();
  v26 = *v25;
  v27 = v6 + qword_27F23CC20;
  v28 = v25[8];
  *v27 = *v25;
  *(v27 + 8) = v28;
  v63 = a4;
  sub_24F24D9B4(a4, v6 + qword_27F23CC10);
  v29 = sub_24F91F4A8();
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
  v68 = 0;
  memset(v67, 0, sizeof(v67));
  *(v6 + qword_27F39CC00) = 0;
  *(v6 + qword_27F39CC10) = MEMORY[0x277D84F90];
  *(v6 + qword_27F2326C8) = 0;
  v30 = *(*v6 + 640);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD20, &qword_24F989D28);
  v32 = *(*(v31 - 8) + 56);
  v32(v6 + v30, 1, 1, v31);
  v33 = *(*v6 + 648);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
  (*(*(v34 - 8) + 56))(v6 + v33, 1, 1, v34);
  v35 = *(*v6 + 656);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD10, &qword_24F989D18);
  (*(*(v36 - 8) + 56))(v6 + v35, 1, 1, v36);
  v32(v6 + *(*v6 + 664), 1, 1, v31);
  v37 = *(*v6 + 672);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  (*(*(v38 - 8) + 56))(v6 + v37, 1, 1, v38);
  v39 = *(*v6 + 680);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
  (*(*(v40 - 8) + 56))(v6 + v39, 1, 1, v40);
  v41 = *(*v6 + 688);
  sub_24E74EC40();

  v42 = a2;

  sub_24EB6CE50(v26, v28);
  sub_24F927DA8();
  v66 = MEMORY[0x277D84F90];
  sub_24F24DA18(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E602068(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  (*(v61 + 104))(v60, *MEMORY[0x277D85260], v62);
  *(v6 + v41) = sub_24F92BF38();
  sub_24EBD3128(v6 + *(*v6 + 696));
  v43 = (v6 + *(*v6 + 704));
  *v43 = 0u;
  v43[1] = 0u;
  *(v43 + 25) = 0u;
  v44 = *(*v6 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0, &unk_24F989B90);
  swift_allocObject();
  *(v6 + v44) = sub_24F92ADA8();
  v45 = *(*v6 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8, &unk_24F9AA7A0);
  swift_allocObject();
  *(v6 + v45) = sub_24F92ADA8();
  v46 = *(*v6 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v6 + v46) = sub_24F92ADA8();
  *(v6 + *(*v6 + 736)) = 0;
  v47 = (v6 + *(*v6 + 752));
  *v47 = 0;
  v47[1] = 0;
  v48 = v58[0];
  sub_24E60169C(v58[0], v6 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);
  sub_24E60169C(v67, v6 + *(*v6 + 744), &qword_27F229490, &unk_24F984C40);
  v49 = type metadata accessor for InlineUnifiedMessagePresenter();
  v65.receiver = objc_allocWithZone(v49);
  v65.super_class = v49;
  *(v6 + qword_27F39CC08) = objc_msgSendSuper2(&v65, sel_init);

  v51 = sub_24EBBA1D0(v50, 0, 0, 0);
  v52 = *(*v51 + 1112);

  *(v51 + qword_27F39CC00) = v52(v64);

  sub_24EBC1940(0);

  sub_24E601704(v67, &qword_27F229490, &unk_24F984C40);
  sub_24E601704(v48, &qword_27F228530, &unk_24F93C6E0);
  v53 = objc_opt_self();
  swift_retain_n();
  v54 = [v53 defaultCenter];
  if (qword_27F210FF0 != -1)
  {
    swift_once();
  }

  [v54 addObserver:v51 selector:? name:? object:?];

  v55 = [v53 defaultCenter];
  v56 = qword_27F2103B8;

  if (v56 != -1)
  {
    swift_once();
  }

  [v55 addObserver:v51 selector:sel_onScrollToShelfNotification_ name:qword_27F22B070 object:0];

  sub_24F24CFC8(v63);
  return v51;
}

uint64_t sub_24F24CFC8(uint64_t a1)
{
  v2 = type metadata accessor for ArcadePageUrls(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24F24D05C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F39DFE8;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t type metadata accessor for ArcadeDiffablePagePresenter(uint64_t a1)
{
  result = qword_27F23CC50;
  if (!qword_27F23CC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F24D104(uint64_t a1)
{
  result = type metadata accessor for ArcadePageUrls(319);
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void *sub_24F24D234(void *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    v7 = result;

    return sub_24E5FCA4C(a2, a3);
  }

  else if (!a4)
  {
  }

  return result;
}

uint64_t sub_24F24D308()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_24F24D424()
{

  return swift_deallocObject();
}

uint64_t sub_24F24D478()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_24F24D968(void *a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_24F24D9B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArcadePageUrls(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F24DA18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_41Tm_0(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return swift_deallocObject();
}

uint64_t Queue.contents.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Queue.init()@<X0>(uint64_t *a2@<X8>)
{
  result = sub_24F92AE18();
  *a2 = result;
  return result;
}

uint64_t Queue.enqueue(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2, v3);
  sub_24F92B6E8();
  return sub_24F92B658();
}

uint64_t Queue.dequeue()(uint64_t a1)
{
  v2 = v1;
  sub_24F92B6E8();
  swift_getWitnessTable();
  sub_24F92BC48();

  sub_24F92BC68();
  sub_24F92C658();
  swift_getWitnessTable();
  v3 = sub_24F92B738();

  *v2 = v3;
  return result;
}

uint64_t sub_24F24DE5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = sub_24F92B6E8();
  WitnessTable = swift_getWitnessTable();
  return a3(v4, WitnessTable);
}

uint64_t sub_24F24DED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

int64x2_t sub_24F24DF2C(uint64_t a1)
{
  v2 = sub_24E6B00B4(*a1);
  v3 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0, &qword_24F93B918);
  v4 = swift_allocObject();
  if (v3 == 1)
  {
    v5 = qword_24F9D8CD0[v2];
    v6 = *(a1 + 16);
    *(v4 + 16) = xmmword_24F93DE60;
    *(v4 + 32) = xmmword_24F944DE0;
    *(v4 + 48) = vdupq_n_s64(0x4077F00000000000uLL);
    *(v4 + 64) = 0;
    *(v4 + 72) = vdupq_n_s64(0xC0C81C8000000000);
    __asm { FMOV            V1.2D, #1.0 }

    *(v4 + 88) = _Q1;
    *(v4 + 104) = v5;
    *(v4 + 112) = v5;
    *(v4 + 120) = v5;
    *(v4 + 128) = v5;
    *(v4 + 136) = v6;
    *(v4 + 144) = v6;
    *(v4 + 152) = 0;
    result = *MEMORY[0x277D768C8];
    v13 = *(MEMORY[0x277D768C8] + 16);
    *(v4 + 160) = *MEMORY[0x277D768C8];
    *(v4 + 176) = v13;
  }

  else
  {
    v14 = *(a1 + 16);
    v15 = *MEMORY[0x277D768C8];
    v16 = *(MEMORY[0x277D768C8] + 8);
    v17 = *(MEMORY[0x277D768C8] + 16);
    v18 = *(MEMORY[0x277D768C8] + 24);
    *(v4 + 16) = xmmword_24F93A400;
    *(v4 + 32) = xmmword_24F9D8CB0;
    result = vdupq_n_s64(0xC0C81C8000000000);
    *(v4 + 48) = result;
    *(v4 + 64) = 0;
    *(v4 + 72) = 0;
    *(v4 + 80) = 0;
    __asm { FMOV            V5.2D, #1.0 }

    *(v4 + 88) = _Q5;
    *&_Q5 = qword_24F9D8CD0[v2];
    *(v4 + 104) = _Q5;
    *(v4 + 112) = _Q5;
    *(v4 + 120) = _Q5;
    *(v4 + 128) = _Q5;
    *(v4 + 136) = v14;
    *(v4 + 144) = v14;
    *(v4 + 152) = 1;
    *(v4 + 160) = v15;
    *(v4 + 168) = v16;
    *(v4 + 176) = v17;
    *(v4 + 184) = v18;
    *(v4 + 192) = xmmword_24F9D8CC0;
    *(v4 + 208) = result;
    *(v4 + 224) = 0;
    *(v4 + 232) = 0;
    *(v4 + 240) = 0;
    *(v4 + 248) = v3;
    *(v4 + 256) = v3;
    *(v4 + 264) = _Q5;
    *(v4 + 272) = _Q5;
    *(v4 + 280) = _Q5;
    *(v4 + 288) = _Q5;
    *(v4 + 296) = v14;
    *(v4 + 304) = v14;
    *(v4 + 312) = 1;
    *(v4 + 320) = v15;
    *(v4 + 328) = v16;
    *(v4 + 336) = v17;
    *(v4 + 344) = v18;
  }

  return result;
}

uint64_t static TodayCardOverlay.tryToMakeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720, &unk_24F97ABA0);
  MEMORY[0x28223BE20](v4);
  v5 = sub_24F928328();
  result = 0;
  if ((v5 & 1) == 0)
  {
    return static TodayCardOverlay.makeInstance(byDeserializing:using:)(a1, a2);
  }

  return result;
}

unint64_t sub_24F24E2D4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24F252D28(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t TodayCardOverlay.__allocating_init(id:kind:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  sub_24E60169C(a1, &v15, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v16 + 1))
  {
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    v18 = v15;
    v19 = v16;
    v20 = v17;
  }

  else
  {
    sub_24F91F6A8();
    v9 = sub_24F91F668();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    v14[1] = v9;
    v14[2] = v11;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(&v15, &qword_27F235830, &qword_24F93B8C0);
  }

  v12 = v19;
  *(v8 + 24) = v18;
  *(v8 + 40) = v12;
  *(v8 + 56) = v20;
  *(v8 + 16) = a2;
  return v8;
}

uint64_t TodayCardOverlay.init(id:kind:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v16, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v17 + 1))
  {
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    v19 = v16;
    v20 = v17;
    v21 = v18;
  }

  else
  {
    sub_24F91F6A8();
    v10 = sub_24F91F668();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    v15[1] = v10;
    v15[2] = v12;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(&v16, &qword_27F235830, &qword_24F93B8C0);
  }

  v13 = v20;
  *(v3 + 24) = v19;
  *(v3 + 40) = v13;
  *(v3 + 56) = v21;
  *(v3 + 16) = a2;
  return v3;
}

uint64_t static TodayCardOverlay.kind(from:)()
{
  v1 = v0;
  v2 = sub_24F92AC38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928398();
  v10 = sub_24F928348();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (v12)
  {

    v13 = sub_24F252A4C(v10, v12);
    if (v14)
    {
      *v5 = v10;
      v5[1] = v12;
      v5[2] = v1;
      v15 = *MEMORY[0x277D22528];
      v22 = *(v3 + 104);
      v22(v5, v15, v2);
      sub_24F252EF8(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0, &qword_24F97AD70);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_24F93DE60;
      *(v6 + 32) = swift_allocError();
      (*(v3 + 16))(v18, v5, v2);
      *v17 = 1684957547;
      v17[1] = 0xE400000000000000;
      v17[2] = v1;
      v17[3] = v6;
      v22(v17, *MEMORY[0x277D22540], v2);
      swift_willThrow();
      (*(v3 + 8))(v5, v2);
    }

    else
    {
      v6 = v13;
    }
  }

  else
  {
    sub_24F252EF8(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v19 = 1684957547;
    v19[1] = 0xE400000000000000;
    v19[2] = v1;
    (*(v3 + 104))(v19, *MEMORY[0x277D22530], v2);
    swift_willThrow();
  }

  return v6;
}

uint64_t TodayCardOverlay.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardOverlay.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v34 = a2;
  v7 = sub_24F91F6B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_24F928398();
  v15 = sub_24F928348();
  if (v16)
  {
    v29 = v15;
    v30 = v16;
  }

  else
  {
    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v20 = v19;
    (*(v8 + 8))(v10, v7);
    v29 = v18;
    v30 = v20;
    v4 = v3;
  }

  sub_24F92C7F8();
  v17 = *(v12 + 8);
  v17(v14, v11);
  v21 = v32;
  *(v5 + 24) = v31;
  *(v5 + 40) = v21;
  *(v5 + 56) = v33;
  type metadata accessor for TodayCardOverlay();
  v22 = v28;
  v23 = static TodayCardOverlay.kind(from:)();
  if (v4)
  {
    v24 = sub_24F9285B8();
    (*(*(v24 - 8) + 8))(v34, v24);
    v17(v22, v11);
    sub_24E6585F8(v5 + 24);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = v23;
    v26 = sub_24F9285B8();
    (*(*(v26 - 8) + 8))(v34, v26);
    v17(v22, v11);
    *(v5 + 16) = v25;
  }

  return v5;
}

uint64_t static TodayCardOverlay.makeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v3 = sub_24F9285B8();
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v67[1] = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v73 = v67 - v6;
  MEMORY[0x28223BE20](v7);
  v72 = v67 - v8;
  MEMORY[0x28223BE20](v9);
  v71 = v67 - v10;
  MEMORY[0x28223BE20](v11);
  v77 = v67 - v12;
  MEMORY[0x28223BE20](v13);
  v70 = v67 - v14;
  MEMORY[0x28223BE20](v15);
  v68 = v67 - v16;
  MEMORY[0x28223BE20](v17);
  v69 = v67 - v18;
  MEMORY[0x28223BE20](v19);
  v76 = v67 - v20;
  v75 = sub_24F928388();
  v81 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v67[0] = v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v74 = v67 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = v67 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v67 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v67 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = v67 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = v67 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = v67 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = v67 - v43;
  v45 = a1;
  v46 = v82;
  v47 = v83;
  v48 = static TodayCardOverlay.kind(from:)();
  if (v47)
  {
    return v46;
  }

  v50 = v44;
  v51 = v41;
  v53 = v76;
  v52 = v77;
  v54 = v78;
  if (v48 > 3)
  {
    v56 = v78;
    if (v48 <= 5)
    {
      if (v48 == 4)
      {
        (*(v81 + 16))(v32, v45, v75);
        (*(v79 + 16))(v52, v56, v80);
        type metadata accessor for TodayCardActionOverlay();
        v46 = swift_allocObject();
        TodayCardActionOverlay.init(deserializing:using:)(v32, v52);
      }

      else
      {
        (*(v81 + 16))(v29, v45, v75);
        v62 = v71;
        (*(v79 + 16))(v71, v56, v80);
        type metadata accessor for TodayCardThreeLineOverlay();
        v46 = swift_allocObject();
        TodayCardThreeLineOverlay.init(deserializing:using:)(v29, v62);
      }

      return v46;
    }

    if (v48 == 6)
    {
      (*(v81 + 16))(v26, v45, v75);
      v58 = v72;
      (*(v79 + 16))(v72, v56, v80);
      type metadata accessor for TodayCardArcadeLockupOverlay();
      v46 = swift_allocObject();
      TodayCardArcadeLockupOverlay.init(deserializing:using:)(v26, v58);
      return v46;
    }

    if (v48 == 7)
    {
      v65 = v74;
      v83 = *(v81 + 16);
      v81 += 16;
      v83(v74);
      v66 = v73;
      v82 = *(v79 + 16);
      v82(v73, v54, v80);
      type metadata accessor for TodayCardLockupOverlay();
      v46 = swift_allocObject();
      TodayCardLockupOverlay.init(deserializing:using:)(v65, v66);
      return v46;
    }
  }

  else
  {
    if (v48 > 1)
    {
      if (v48 == 2)
      {
        (*(v81 + 16))(v38, v45, v75);
        v57 = v68;
        (*(v79 + 16))(v68, v54, v80);
        type metadata accessor for TodayCardLockupListOverlay();
        v46 = swift_allocObject();
        TodayCardLockupListOverlay.init(deserializing:using:)(v38, v57);
      }

      else
      {
        v63 = v78;
        (*(v81 + 16))(v35, v45, v75);
        v64 = v70;
        (*(v79 + 16))(v70, v63, v80);
        type metadata accessor for TodayCardParagraphOverlay();
        v46 = swift_allocObject();
        TodayCardParagraphOverlay.init(deserializing:using:)(v35, v64);
      }

      return v46;
    }

    if (!v48)
    {
      v55 = v50;
      (*(v81 + 16))(v50, v45, v75);
      (*(v79 + 16))(v53, v54, v80);
      type metadata accessor for TodayCardLockupOverlay();
      v46 = swift_allocObject();
      TodayCardLockupOverlay.init(deserializing:using:)(v55, v53);
      return v46;
    }

    if (v48 == 1)
    {
      v59 = v78;
      v60 = v51;
      (*(v81 + 16))(v51, v45, v75);
      v61 = v69;
      (*(v79 + 16))(v69, v59, v80);
      type metadata accessor for TodayCardMarketingLockupOverlay();
      v46 = swift_allocObject();
      TodayCardMarketingLockupOverlay.init(deserializing:using:)(v60, v61);
      return v46;
    }
  }

  v84 = v48;
  result = sub_24F92CF48();
  __break(1u);
  return result;
}

uint64_t TodayCardLockupOverlay.__allocating_init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardLockupOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardMarketingLockupOverlay.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardMarketingLockupOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardLockupListOverlay.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardLockupListOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardParagraphOverlay.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardParagraphOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardActionOverlay.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardActionOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardThreeLineOverlay.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardThreeLineOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardArcadeLockupOverlay.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardArcadeLockupOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardAppEventLockupOverlay.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardAppEventLockupOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardOverlay.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_24F24F8EC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *TodayCardLockupOverlay.init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v62 = a2;
  v59 = v2;
  v5 = *v2;
  v57 = v3;
  v58 = v5;
  v6 = sub_24F9285B8();
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x28223BE20](v6);
  v56 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v49[-v9];
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v54 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v53 = &v49[-v15];
  MEMORY[0x28223BE20](v16);
  v18 = &v49[-v17];
  MEMORY[0x28223BE20](v19);
  v21 = &v49[-v20];
  MEMORY[0x28223BE20](v22);
  v24 = &v49[-v23];
  sub_24F928398();
  v25 = sub_24F928328();
  v55 = v12;
  v26 = *(v12 + 8);
  v27 = v24;
  v28 = v11;
  v26(v27, v11);
  if (v25)
  {
    v29 = sub_24F92AC38();
    sub_24F252EF8(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v31 = v30;
    *v30 = 0x70756B636F6CLL;
    v32 = 0xE600000000000000;
LABEL_5:
    v34 = v58;
    v30[1] = v32;
    v30[2] = v34;
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D22530], v29);
    swift_willThrow();
    goto LABEL_6;
  }

  sub_24F928398();
  v50 = sub_24F928278();
  v33 = v50;
  v26(v21, v11);
  if (v33 == 2)
  {
    v29 = sub_24F92AC38();
    sub_24F252EF8(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v31 = v30;
    *v30 = 0x7379616C70736964;
    v32 = 0xEC0000006E6F6349;
    goto LABEL_5;
  }

  v51 = v26;
  v52 = v11;
  sub_24F928398();
  v37 = *(v60 + 16);
  v37(v10, v62, v61);
  type metadata accessor for Lockup(0);
  swift_allocObject();
  v38 = v57;
  v39 = Lockup.init(deserializing:using:)(v18, v10);
  if (!v38)
  {
    v57 = v37;
    v40 = a1;
    v35 = v59;
    v59[8] = v39;
    v41 = v53;
    sub_24F928398();
    v42 = sub_24F928278();
    v43 = v52;
    v51(v41, v52);
    *(v35 + 73) = (v42 == 2) | v42 & 1;
    *(v35 + 72) = v50 & 1;
    v44 = v54;
    v45 = *(v55 + 16);
    v58 = v40;
    v45(v54, v40, v43);
    v46 = v56;
    v47 = v62;
    v48 = v61;
    v57(v56, v62, v61);
    TodayCardOverlay.init(deserializing:using:)(v44, v46);
    (*(v60 + 8))(v47, v48);
    v51(v58, v52);
    return v35;
  }

  v26 = v51;
  v28 = v52;
LABEL_6:
  (*(v60 + 8))(v62, v61);
  v26(a1, v28);
  v35 = v59;
  swift_deallocPartialClassInstance();
  return v35;
}

uint64_t TodayCardLockupOverlay.__allocating_init(lockup:displaysIcon:hasMaterialBackground:)(uint64_t a1, char a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 64) = a1;
  *(v6 + 72) = a2;
  *(v6 + 73) = a3;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  TodayCardOverlay.init(id:kind:)(v8, 0);
  return v6;
}

uint64_t TodayCardLockupOverlay.init(lockup:displaysIcon:hasMaterialBackground:)(uint64_t a1, char a2, char a3)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  *(v3 + 73) = a3;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  TodayCardOverlay.init(id:kind:)(v5, 0);
  return v3;
}

void *TodayCardMarketingLockupOverlay.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v73 = v2;
  v5 = *v2;
  v71 = v3;
  v72 = v5;
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v70 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = v63 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = v63 - v12;
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v68 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v67 = v63 - v18;
  MEMORY[0x28223BE20](v19);
  v65 = v63 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = v63 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v63 - v25;
  sub_24F928398();
  v27 = sub_24F928328();
  v69 = v15;
  v28 = *(v15 + 8);
  v77 = v14;
  v75 = v28;
  v28(v26, v14);
  v74 = v7;
  if (v27)
  {
    v29 = sub_24F92AC38();
    sub_24F252EF8(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v30 = 0x70756B636F6CLL;
    v31 = v72;
    v30[1] = 0xE600000000000000;
    v30[2] = v31;
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D22530], v29);
    swift_willThrow();
    v32 = a1;
    v33 = v76;
    v34 = v6;
LABEL_4:
    (*(v74 + 8))(v33, v34);
    v75(v32, v77);
    v40 = v73;
    swift_deallocPartialClassInstance();
    return v40;
  }

  sub_24F928398();
  v32 = a1;
  v36 = v7 + 16;
  v35 = *(v7 + 16);
  v37 = v76;
  v64 = v35;
  v35(v13, v76, v6);
  type metadata accessor for Lockup(0);
  swift_allocObject();
  v38 = v71;
  v39 = Lockup.init(deserializing:using:)(v23, v13);
  v33 = v37;
  v34 = v6;
  if (v38)
  {
    goto LABEL_4;
  }

  v42 = v37;
  v43 = v34;
  v44 = v73;
  v73[8] = v39;
  v63[1] = type metadata accessor for Paragraph(0);
  sub_24F928398();
  v45 = v42;
  v71 = v36;
  v72 = v43;
  v40 = v44;
  v64(v66, v45, v43);
  sub_24F252EF8(&qword_27F214718, 255, type metadata accessor for Paragraph, &protocol conformance descriptor for Paragraph);
  sub_24F929548();
  v44[9] = v78;
  v46 = v65;
  sub_24F928398();
  v47 = sub_24F928278();
  v48 = v46;
  v49 = v32;
  v50 = v77;
  v51 = v75;
  v75(v48, v77);
  *(v40 + 80) = v47 & 1;
  v52 = v67;
  sub_24F928398();
  sub_24F928348();
  v54 = v53;
  v51(v52, v50);
  v55 = v49;
  v56 = 0;
  if (v54)
  {
    sub_24E77ACC8();
    v56 = sub_24F92C398();
    v57 = v74;
    v58 = v76;
    v59 = v72;
  }

  else
  {
    v58 = v76;
    v59 = v72;
    v57 = v74;
  }

  v60 = v77;
  v40[11] = v56;
  v61 = v68;
  (*(v69 + 16))(v68, v55, v60);
  v62 = v70;
  v64(v70, v58, v59);
  TodayCardOverlay.init(deserializing:using:)(v61, v62);
  (*(v57 + 8))(v58, v59);
  v75(v55, v77);
  return v40;
}

uint64_t TodayCardMarketingLockupOverlay.__allocating_init(lockup:paragraph:hideBackground:artworkBackgroundColor:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 64) = a1;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;
  *(v8 + 88) = a4;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  TodayCardOverlay.init(id:kind:)(v10, 1);
  return v8;
}

uint64_t TodayCardMarketingLockupOverlay.init(lockup:paragraph:hideBackground:artworkBackgroundColor:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 88) = a4;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  TodayCardOverlay.init(id:kind:)(v6, 1);
  return v4;
}

void *TodayCardMarketingLockupOverlay.artworkBackgroundColor.getter()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void sub_24F250800()
{

  v1 = *(v0 + 88);
}

uint64_t TodayCardMarketingLockupOverlay.deinit()
{
  sub_24E6585F8(v0 + 24);

  return v0;
}

uint64_t TodayCardMarketingLockupOverlay.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);

  v1 = *(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t TodayCardLockupListOverlay.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = sub_24F9285B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v20 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = sub_24F928388();
  v24 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  sub_24F928398();
  v23 = v4;
  v13 = *(v4 + 16);
  v13(v8, a2, v3);
  type metadata accessor for Lockup(0);
  sub_24F252EF8(&qword_27F221FB8, 255, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  v14 = v21;
  v15 = v19;
  *(v14 + 64) = sub_24F92B698();
  v16 = *(v24 + 16);
  v22 = v9;
  v16(v11, v15, v9);
  v17 = v20;
  v13(v20, a2, v3);
  TodayCardOverlay.init(deserializing:using:)(v11, v17);
  (*(v23 + 8))(a2, v3);
  (*(v24 + 8))(v15, v22);
  return v14;
}

char *TodayCardLockupListOverlay.offerAdamIds.getter()
{
  v1 = *(v0 + 64);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x253052270](v3, v1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_24E6164C0(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_24E6164C0((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t TodayCardLockupListOverlay.deinit()
{
  sub_24E6585F8(v0 + 24);

  return v0;
}

void *TodayCardParagraphOverlay.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v41 = v2;
  v44 = *v2;
  v45 = a2;
  v4 = sub_24F9285B8();
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v37 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  sub_24F928398();
  v18 = sub_24F928328();
  v19 = *(v10 + 8);
  v40 = v9;
  v42 = v19;
  v19(v17, v9);
  if (v18)
  {
    v20 = sub_24F92AC38();
    sub_24F252EF8(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v21 = 0x7061726761726170;
    v21[1] = 0xE900000000000068;
    v21[2] = v44;
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D22530], v20);
    swift_willThrow();
    v22 = v45;
    v23 = v43;
  }

  else
  {
    v36 = v10;
    sub_24F928398();
    v24 = a1;
    v25 = v43;
    v22 = v45;
    v35 = *(v43 + 16);
    v35(v8, v45, v4);
    v26 = v39;
    v27 = sub_24F0151C0(v14, v8);
    v23 = v25;
    a1 = v24;
    if (!v26)
    {
      v28 = v41;
      v41[8] = v27;
      sub_24F928398();
      sub_24F2239E8();
      sub_24F928248();
      v30 = v17;
      v31 = v40;
      v42(v30, v40);
      *(v28 + 72) = v46;
      v32 = v37;
      (*(v36 + 16))(v37, v24, v31);
      v33 = v38;
      v44 = v4;
      v35(v38, v45, v4);
      TodayCardOverlay.init(deserializing:using:)(v32, v33);
      (*(v43 + 8))(v45, v44);
      v42(a1, v31);
      return v28;
    }
  }

  (*(v23 + 8))(v22, v4);
  v42(a1, v40);
  v28 = v41;
  swift_deallocPartialClassInstance();
  return v28;
}

uint64_t TodayCardParagraphOverlay.__allocating_init(paragraph:style:)(uint64_t a1, char *a2)
{
  v4 = swift_allocObject();
  v5 = *a2;
  *(v4 + 64) = a1;
  *(v4 + 72) = v5;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  TodayCardOverlay.init(id:kind:)(v7, 3);
  return v4;
}

uint64_t TodayCardParagraphOverlay.init(paragraph:style:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  *(v2 + 64) = a1;
  *(v2 + 72) = v3;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  TodayCardOverlay.init(id:kind:)(v5, 3);
  return v2;
}

uint64_t *TodayCardActionOverlay.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v36 = v2;
  v37 = a2;
  v6 = *v4;
  v33 = v3;
  v34 = v6;
  v35 = sub_24F9285B8();
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v32 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v38 = a1;
  sub_24F928398();
  LOBYTE(a1) = sub_24F928328();
  v19 = *(v10 + 8);
  v19(v18, v9);
  if (a1)
  {
    v20 = sub_24F92AC38();
    sub_24F252EF8(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v21 = 0x6E6F69746361;
    v22 = v34;
    v21[1] = 0xE600000000000000;
    v21[2] = v22;
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D22530], v20);
    swift_willThrow();
    (*(v7 + 8))(v37, v35);
    v19(v38, v9);
  }

  else
  {
    type metadata accessor for Action(0);
    sub_24F928398();
    v23 = v33;
    v24 = static Action.makeInstance(byDeserializing:using:)(v15, v37);
    if (!v23)
    {
      v27 = v24;
      v19(v15, v9);
      v25 = v36;
      v36[8] = v27;
      (*(v10 + 16))(v12, v38, v9);
      v28 = v7;
      v29 = *(v7 + 16);
      v30 = v32;
      v31 = v35;
      v29(v32, v37, v35);
      TodayCardOverlay.init(deserializing:using:)(v12, v30);
      (*(v28 + 8))(v37, v31);
      v19(v38, v9);
      return v25;
    }

    (*(v7 + 8))(v37, v35);
    v19(v38, v9);
    v19(v15, v9);
  }

  v25 = v36;
  swift_deallocPartialClassInstance();
  return v25;
}

uint64_t TodayCardActionOverlay.init(action:)(uint64_t a1)
{
  *(v1 + 64) = a1;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  TodayCardOverlay.init(id:kind:)(v3, 4);
  return v1;
}

uint64_t TodayCardActionOverlay.offerAdamIds.getter()
{
  type metadata accessor for OfferAction(0);
  v0 = swift_dynamicCastClass();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BE10, &qword_24F96FCC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId + 8);
  *(v2 + 32) = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  *(v2 + 40) = v3;

  return v2;
}

uint64_t TodayCardActionOverlay.deinit()
{
  sub_24E6585F8(v0 + 24);

  return v0;
}

uint64_t sub_24F251928()
{
  type metadata accessor for OfferAction(0);
  v0 = swift_dynamicCastClass();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BE10, &qword_24F96FCC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId + 8);
  *(v2 + 32) = *(v1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  *(v2 + 40) = v3;

  return v2;
}

void *TodayCardThreeLineOverlay.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  MEMORY[0x28223BE20](v5);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v17 = *(v9 + 8);
  v17(v13, v8);
  v3[8] = v14;
  v3[9] = v16;
  sub_24F928398();
  v18 = sub_24F928348();
  v20 = v19;
  v17(v13, v8);
  v3[10] = v18;
  v3[11] = v20;
  sub_24F928398();
  v21 = sub_24F928348();
  v23 = v22;
  v24 = v13;
  v25 = v35;
  v33 = v17;
  v17(v24, v8);
  v3[12] = v21;
  v3[13] = v23;
  v26 = a1;
  v27 = v32;
  (*(v9 + 16))(v32, a1, v8);
  v28 = v37;
  v29 = v36;
  v30 = v34;
  (*(v36 + 16))(v34, v37, v25);
  TodayCardOverlay.init(deserializing:using:)(v27, v30);
  (*(v29 + 8))(v28, v25);
  v33(v26, v8);
  return v3;
}

void *TodayCardThreeLineOverlay.__allocating_init(heading:title:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[8] = a1;
  v12[9] = a2;
  v12[10] = a3;
  v12[11] = a4;
  v12[12] = a5;
  v12[13] = a6;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  TodayCardOverlay.init(id:kind:)(v14, 3);
  return v12;
}

void *TodayCardThreeLineOverlay.init(heading:title:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a1;
  v6[9] = a2;
  v6[10] = a3;
  v6[11] = a4;
  v6[12] = a5;
  v6[13] = a6;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  TodayCardOverlay.init(id:kind:)(v8, 3);
  return v6;
}

uint64_t TodayCardThreeLineOverlay.heading.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t TodayCardThreeLineOverlay.title.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t TodayCardThreeLineOverlay.description.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_24F251E48()
{
}

uint64_t TodayCardThreeLineOverlay.deinit()
{
  sub_24E6585F8(v0 + 24);

  return v0;
}

uint64_t TodayCardThreeLineOverlay.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);

  return swift_deallocClassInstance();
}

void *TodayCardArcadeLockupOverlay.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = a2;
  v40 = v3;
  v38 = *v3;
  v42 = sub_24F9285B8();
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  v37 = a1;
  sub_24F928398();
  LOBYTE(a1) = sub_24F928328();
  v20 = *(v11 + 8);
  v41 = v10;
  v36 = v20;
  v20(v19, v10);
  v39 = v5;
  if (a1)
  {
    v21 = sub_24F92AC38();
    sub_24F252EF8(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    strcpy(v22, "arcadeLockup");
    v23 = v38;
    v22[13] = 0;
    *(v22 + 7) = -5120;
    *(v22 + 2) = v23;
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D22530], v21);
    swift_willThrow();
    v24 = v37;
  }

  else
  {
    type metadata accessor for ArcadeLockup(0);
    v24 = v37;
    sub_24F928398();
    v33 = *(v5 + 16);
    v33(v9, v43, v42);
    v25 = v35;
    v26 = ArcadeLockup.__allocating_init(deserializing:using:)(v16, v9);
    if (!v25)
    {
      v27 = v40;
      v29 = v41;
      v40[8] = v26;
      (*(v11 + 16))(v13, v24, v29);
      v30 = v34;
      v31 = v43;
      v32 = v42;
      v33(v34, v43, v42);
      TodayCardOverlay.init(deserializing:using:)(v13, v30);
      (*(v39 + 8))(v31, v32);
      v36(v24, v41);
      return v27;
    }
  }

  (*(v39 + 8))(v43, v42);
  v36(v24, v41);
  v27 = v40;
  swift_deallocPartialClassInstance();
  return v27;
}

uint64_t TodayCardArcadeLockupOverlay.init(arcadeLockup:)(uint64_t a1)
{
  *(v1 + 64) = a1;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  TodayCardOverlay.init(id:kind:)(v3, 6);
  return v1;
}

uint64_t *TodayCardAppEventLockupOverlay.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v35 = v2;
  v36 = a2;
  v34 = *v3;
  v37 = sub_24F9285B8();
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  v38 = a1;
  sub_24F928398();
  LOBYTE(a1) = sub_24F928328();
  v33 = *(v11 + 8);
  v33(v19, v10);
  if (a1)
  {
    v20 = sub_24F92AC38();
    sub_24F252EF8(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v21 = 0x70756B636F6CLL;
    v22 = v34;
    v21[1] = 0xE600000000000000;
    v21[2] = v22;
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D22530], v20);
    swift_willThrow();
  }

  else
  {
    sub_24F928398();
    v30 = *(v5 + 16);
    v30(v9, v36, v37);
    type metadata accessor for Lockup(0);
    swift_allocObject();
    v23 = v32;
    v24 = Lockup.init(deserializing:using:)(v16, v9);
    if (!v23)
    {
      v25 = v35;
      v35[8] = v24;
      (*(v11 + 16))(v13, v38, v10);
      v27 = v31;
      v28 = v36;
      v30(v31, v36, v37);
      TodayCardOverlay.init(deserializing:using:)(v13, v27);
      v29 = v38;
      (*(v5 + 8))(v28, v37);
      v33(v29, v10);
      return v25;
    }
  }

  (*(v5 + 8))(v36, v37);
  v33(v38, v10);
  v25 = v35;
  swift_deallocPartialClassInstance();
  return v25;
}

uint64_t sub_24F252824(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 64) = a1;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  TodayCardOverlay.init(id:kind:)(v6, a2);
  return v4;
}

uint64_t TodayCardAppEventLockupOverlay.init(lockup:)(uint64_t a1)
{
  *(v1 + 64) = a1;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  TodayCardOverlay.init(id:kind:)(v3, 7);
  return v1;
}

uint64_t _s12GameStoreKit22TodayCardActionOverlayC11clickSenderypSgvg_0@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t _s12GameStoreKit22TodayCardLockupOverlayC12offerAdamIdsSayAA0I2IdVGvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BE10, &qword_24F96FCC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24F93DE60;
  v2 = *(v0 + 64);
  v3 = *(v2 + 24);
  *(v1 + 32) = *(v2 + 16);
  *(v1 + 40) = v3;

  return v1;
}

uint64_t sub_24F25298C(void (*a1)(void), uint64_t a2)
{
  sub_24E6585F8(v2 + 24);
  a1(*(v2 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_24F2529E8()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BE10, &qword_24F96FCC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = *(v1 + 64);
  v4 = *(v3 + 24);
  *(v2 + 32) = *(v3 + 16);
  *(v2 + 40) = v4;

  return v2;
}

uint64_t sub_24F252A4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70756B636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6974656B72616DLL && a2 == 0xEF70756B636F4C67 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x694C70756B636F6CLL && a2 == 0xEA00000000007473 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7061726761726170 && a2 == 0xE900000000000068 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E694C6565726874 && a2 == 0xE900000000000065 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F4C656461637261 && a2 == 0xEC00000070756B63 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746E657645707061 && a2 == 0xEE0070756B636F4CLL)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t sub_24F252D28(unint64_t result)
{
  if (result > 7)
  {
    return 0;
  }

  return result;
}

unint64_t sub_24F252E5C()
{
  result = qword_27F23CCF8;
  if (!qword_27F23CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CCF8);
  }

  return result;
}

uint64_t sub_24F252EF8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FamilyMember.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *FamilyMember.artwork.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_24F25321C@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for FamilyMember(0);
  *a1 = v1;
}

uint64_t type metadata accessor for FamilyMember(uint64_t a1)
{
  result = qword_27F23CD10;
  if (!qword_27F23CD10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FamilyMember.__allocating_init(id:name:artwork:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a4;
  v25 = a5;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 40) = 0;
  sub_24E60169C(a1, &v28, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v29 + 1))
  {
    v15 = v29;
    *(v14 + 48) = v28;
    *(v14 + 64) = v15;
    *(v14 + 80) = v30;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v23 = a3;
    v17 = a6;
    v18 = a1;
    v19 = a2;
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    v26 = v16;
    v27 = v21;
    a2 = v19;
    a1 = v18;
    a6 = v17;
    a3 = v23;
    sub_24F92C7F8();
    sub_24E601704(&v28, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E60169C(a6, v14 + OBJC_IVAR____TtC12GameStoreKit12FamilyMember_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  if (!a3)
  {
    a2 = 0;
    a3 = 0xE000000000000000;
  }

  sub_24E601704(a6, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = v24;
  swift_beginAccess();
  *(v14 + 40) = v25;
  return v14;
}

uint64_t FamilyMember.init(id:name:artwork:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v25 = a4;
  v26 = a5;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 40) = 0;
  sub_24E60169C(a1, &v29, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v24 = a3;
    v17 = a6;
    v18 = a1;
    v19 = a2;
    v21 = v20;
    (*(v13 + 8))(v15, v12);
    v27 = v16;
    v28 = v21;
    a2 = v19;
    a1 = v18;
    a6 = v17;
    a3 = v24;
    sub_24F92C7F8();
    sub_24E601704(&v29, &qword_27F235830, &qword_24F93B8C0);
  }

  v22 = v33;
  *(v7 + 48) = v32;
  *(v7 + 64) = v22;
  *(v7 + 80) = v34;
  sub_24E60169C(a6, v7 + OBJC_IVAR____TtC12GameStoreKit12FamilyMember_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  if (!a3)
  {
    a2 = 0;
    a3 = 0xE000000000000000;
  }

  sub_24E601704(a6, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = v25;
  swift_beginAccess();
  *(v7 + 40) = v26;

  return v7;
}

void FamilyMember.init(deserializing:using:)()
{
  *(v0 + 40) = 0;
  sub_24F92CA88();
  __break(1u);
}

uint64_t FamilyMember.deinit()
{

  sub_24E6585F8(v0 + 48);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12FamilyMember_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t FamilyMember.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 48);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12FamilyMember_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

unint64_t sub_24F253920()
{
  result = qword_27F23CD08;
  if (!qword_27F23CD08)
  {
    type metadata accessor for FamilyMember(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CD08);
  }

  return result;
}

uint64_t sub_24F2539E4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for FamilyMember(0);
  *a1 = v3;
}

uint64_t sub_24F253A68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

void sub_24F253AC0(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F253C78(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for SocialSuggestionLockup.Accessory(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_24F253E30(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for SocialSuggestionLockup.Accessory(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

void sub_24F253FD4(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SocialSuggestionLockup.Accessory(319);
    if (v2 <= 0x3F)
    {
      sub_24E7CA640();
      if (v3 <= 0x3F)
      {
        sub_24F254198(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
          if (v5 <= 0x3F)
          {
            sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
            if (v6 <= 0x3F)
            {
              sub_24E65B038(319, &qword_27F21C120, &qword_27F213840, &unk_24F93B3C0);
              if (v7 <= 0x3F)
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

uint64_t sub_24F254150(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24F254198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F2541FC(void *a1)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CEA0, &qword_24F9D9708);
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v29 = &v28 - v2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CEA8, &qword_24F9D9710);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v30 = &v28 - v3;
  v4 = sub_24F9289E8();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CEB0, &qword_24F9D9718);
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for SocialSuggestionLockup.Accessory(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CEB8, &qword_24F9D9720);
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F258F80();
  sub_24F92D128();
  sub_24F258DFC(v37, v12, type metadata accessor for SocialSuggestionLockup.Accessory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = v31;
      v17 = v32;
      (*(v31 + 32))(v6, v12, v32);
      v42 = 1;
      sub_24F259028();
      v19 = v30;
      v20 = v39;
      sub_24F92CC98();
      sub_24F254150(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
      v21 = v36;
      sub_24F92CD48();
      (*(v34 + 8))(v19, v21);
      (*(v18 + 8))(v6, v17);
      return (*(v38 + 8))(v15, v20);
    }

    else
    {
      v43 = 2;
      sub_24F258FD4();
      v25 = v29;
      v26 = v39;
      sub_24F92CC98();
      v27 = v35;
      sub_24F92CD08();

      (*(v33 + 8))(v25, v27);
      return (*(v38 + 8))(v15, v26);
    }
  }

  else
  {
    v23 = *v12;
    v41 = 0;
    sub_24F25907C();
    v24 = v39;
    sub_24F92CC98();
    v40 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218590, &qword_24F9D7B90);
    sub_24F2590D0(&qword_27F218A30, &qword_27F218A38, &protocol conformance descriptor for PlayerAvatar, MEMORY[0x277D83948]);
    sub_24F92CD48();
    (*(v28 + 8))(v9, v7);
    (*(v38 + 8))(v15, v24);
  }
}

uint64_t sub_24F254820@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CE60, &qword_24F9D96E8);
  v61 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v62 = &v53 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CE68, &qword_24F9D96F0);
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v64 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CE70, &qword_24F9D96F8);
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v63 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CE78, &qword_24F9D9700);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - v9;
  v11 = type metadata accessor for SocialSuggestionLockup.Accessory(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v23 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24F258F80();
  v24 = v68;
  sub_24F92D108();
  if (!v24)
  {
    v53 = v13;
    v54 = v19;
    v55 = v16;
    v25 = v63;
    v26 = v64;
    v68 = v22;
    v27 = v11;
    v28 = v65;
    v29 = v67;
    v30 = sub_24F92CC78();
    v31 = (2 * *(v30 + 16)) | 1;
    v70 = v30;
    v71 = v30 + 32;
    v72 = 0;
    v73 = v31;
    v32 = sub_24E643434();
    if (v32 != 3 && v72 == v73 >> 1)
    {
      if (v32)
      {
        if (v32 == 1)
        {
          LOBYTE(v74) = 1;
          sub_24F259028();
          sub_24F92CBA8();
          sub_24F9289E8();
          sub_24F254150(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
          v33 = v55;
          v34 = v60;
          sub_24F92CC68();
          v35 = v26;
          v36 = v66;
          (*(v59 + 8))(v35, v34);
          (*(v36 + 8))(v10, v67);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v49 = v33;
LABEL_12:
          v52 = v68;
          sub_24F258E64(v49, v68, type metadata accessor for SocialSuggestionLockup.Accessory);
          sub_24F258E64(v52, v28, type metadata accessor for SocialSuggestionLockup.Accessory);
          return __swift_destroy_boxed_opaque_existential_1(v69);
        }

        LOBYTE(v74) = 2;
        sub_24F258FD4();
        v44 = v62;
        sub_24F92CBA8();
        v45 = v44;
        v46 = v56;
        v47 = sub_24F92CC28();
        v64 = v48;
        v50 = v47;
        (*(v61 + 8))(v45, v46);
        (*(v66 + 8))(v10, v29);
        swift_unknownObjectRelease();
        v43 = v53;
        v51 = v64;
        *v53 = v50;
        v43[1] = v51;
      }

      else
      {
        LOBYTE(v74) = 0;
        sub_24F25907C();
        sub_24F92CBA8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218590, &qword_24F9D7B90);
        sub_24F2590D0(&qword_27F218598, &qword_27F2185A0, &protocol conformance descriptor for PlayerAvatar, MEMORY[0x277D83978]);
        v42 = v58;
        sub_24F92CC68();
        (*(v57 + 8))(v25, v42);
        (*(v66 + 8))(v10, v29);
        swift_unknownObjectRelease();
        v43 = v54;
        *v54 = v74;
      }

      swift_storeEnumTagMultiPayload();
      v49 = v43;
      goto LABEL_12;
    }

    v37 = v29;
    v38 = sub_24F92C918();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
    *v40 = v27;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    (*(v66 + 8))(v10, v37);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v69);
}

uint64_t sub_24F255048(uint64_t a1)
{
  v2 = sub_24F259028();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F255084(uint64_t a1)
{
  v2 = sub_24F259028();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F2550C0()
{
  v1 = 0x6B726F77747261;
  if (*v0 != 1)
  {
    v1 = 0x6C6F626D7973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7641726579616C70;
  }
}

uint64_t sub_24F255124@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F2598B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F25514C(uint64_t a1)
{
  v2 = sub_24F258F80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F255188(uint64_t a1)
{
  v2 = sub_24F258F80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F2551C4(uint64_t a1)
{
  v2 = sub_24F25907C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F255200(uint64_t a1)
{
  v2 = sub_24F25907C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F25523C(uint64_t a1)
{
  v2 = sub_24F258FD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F255278(uint64_t a1)
{
  v2 = sub_24F258FD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F2552E4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CE50, &qword_24F9D96E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F258F2C();
  sub_24F92D128();
  LOBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for SocialSuggestionLockup(0);
    LOBYTE(v12) = 1;
    type metadata accessor for SocialSuggestionLockup.Accessory(0);
    sub_24F254150(&qword_27F23CE58, type metadata accessor for SocialSuggestionLockup.Accessory, &unk_24F9D937C);
    sub_24F92CD48();
    LOBYTE(v12) = 2;
    sub_24F92CD08();
    LOBYTE(v12) = 3;
    sub_24F92CCB8();
    LOBYTE(v12) = 4;
    sub_24F929608();
    sub_24F254150(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    LOBYTE(v12) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    LOBYTE(v12) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    v12 = *(v3 + *(v9 + 44));
    v11[7] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0, &qword_24F9576D0);
    sub_24E7AA500();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F2556F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v44);
  v45 = &v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v41 - v5;
  v6 = type metadata accessor for SocialSuggestionLockup.Accessory(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CE38, &unk_24F9D96D0);
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = type metadata accessor for SocialSuggestionLockup(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_24F929608();
  v18 = *(*(v17 - 8) + 56);
  v52 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = &v14[*(v12 + 36)];
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  v51 = v19;
  sub_24E61DA68(&v55, v19, qword_27F21B590, &unk_24F93BE30);
  v20 = *(v12 + 40);
  v21 = sub_24F92A6D8();
  v22 = *(*(v21 - 8) + 56);
  v54 = v14;
  v22(&v14[v20], 1, 1, v21);
  v23 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24F258F2C();
  v49 = v11;
  v24 = v50;
  sub_24F92D108();
  if (v24)
  {
    v26 = v51;
    __swift_destroy_boxed_opaque_existential_1(v53);
    v27 = v54;
    sub_24E601704(v54 + v52, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v26, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(v27 + v20, &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v50 = v6;
    v42 = v12;
    v25 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v58 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v28 = v56;
    v29 = v54;
    *v54 = v55;
    v29[1] = v28;
    *(v29 + 4) = v57;
    LOBYTE(v55) = 1;
    sub_24F254150(&qword_27F23CE48, type metadata accessor for SocialSuggestionLockup.Accessory, &unk_24F9D93A4);
    sub_24F92CC68();
    v30 = v42;
    sub_24F258E64(v8, v29 + *(v42 + 20), type metadata accessor for SocialSuggestionLockup.Accessory);
    LOBYTE(v55) = 2;
    v31 = sub_24F92CC28();
    v32 = v29;
    v33 = (v29 + *(v30 + 24));
    *v33 = v31;
    v33[1] = v34;
    LOBYTE(v55) = 3;
    v35 = sub_24F92CBD8();
    v50 = 0;
    *(v29 + *(v30 + 28)) = v35;
    LOBYTE(v55) = 4;
    sub_24F254150(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v36 = v46;
    sub_24F92CC18();
    sub_24E61DA68(v36, v32 + v52, &qword_27F213E68, &unk_24F93BC80);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v58 = 5;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v55, v51, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v55) = 6;
    sub_24E65CAA0();
    v37 = v45;
    sub_24F92CC68();
    sub_24E61DA68(v37, v54 + v20, &qword_27F215440, &unk_24F942BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0, &qword_24F9576D0);
    v58 = 7;
    sub_24E7AA3E4();
    sub_24F92CC68();
    v38 = *(v42 + 44);
    (*(v25 + 8))(v49, v48);
    v39 = v54;
    *(v54 + v38) = v55;
    sub_24F258DFC(v39, v43, type metadata accessor for SocialSuggestionLockup);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return sub_24F258ECC(v39, type metadata accessor for SocialSuggestionLockup);
  }
}

uint64_t sub_24F255F9C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  if (v1 != 6)
  {
    v3 = 1970169197;
  }

  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 2)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0x726F737365636361;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F256094@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F2599D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F2560BC(uint64_t a1)
{
  v2 = sub_24F258F2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F2560F8(uint64_t a1)
{
  v2 = sub_24F258F2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F256134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 40), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v7, a2);
}

unint64_t sub_24F256264()
{
  result = qword_27F23CD40;
  if (!qword_27F23CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CD40);
  }

  return result;
}

double sub_24F2562B8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_24F9289E8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_24F3E5448(MEMORY[0x277D84F90]);
  sub_24F928948();
  v14 = type metadata accessor for PlayerAvatar(0);
  sub_24E60169C(a1 + *(v14 + 20), v9, &qword_27F22DF80, &unk_24F942E50);
  sub_24E60169C(a1 + *(v14 + 24), v29, qword_27F24EC90, &unk_24F93C1D0);
  (*(v11 + 32))(a2, v13, v10);
  type metadata accessor for PlayerAvatarView.AvatarType(0);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for PlayerAvatarView(0);
  v16 = v15[5];
  v17 = type metadata accessor for PlayerAvatar.Overlay(0);
  if ((*(*(v17 - 8) + 48))(v9, 1, v17) == 1)
  {
    sub_24E601704(v9, &qword_27F22DF80, &unk_24F942E50);
    v18 = 1;
  }

  else
  {
    sub_24F258E64(v9, v6, type metadata accessor for PlayerAvatar.Overlay);
    v19 = &v6[*(v4 + 20)];
    *v19 = 0x4030000000000000;
    v19[8] = 0;
    __asm { FMOV            V0.2D, #2.0 }

    *&v6[*(v4 + 24)] = _Q0;
    sub_24F258E64(v6, a2 + v16, type metadata accessor for PlayerAvatarView.Overlay);
    v18 = 0;
  }

  (*(v28 + 56))(a2 + v16, v18, 1, v4);
  v25 = a2 + v15[6];
  result = *v29;
  v27 = v29[1];
  *v25 = v29[0];
  *(v25 + 16) = v27;
  *(v25 + 32) = v30;
  *(a2 + v15[7]) = 7;
  return result;
}

uint64_t sub_24F256618@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CD58, &qword_24F9D9540) - 8;
  MEMORY[0x28223BE20](v57);
  v4 = &v55 - v3;
  v59 = sub_24F9248C8();
  v5 = *(v59 - 1);
  MEMORY[0x28223BE20](v59);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223598, &qword_24F96E6E8);
  MEMORY[0x28223BE20](v8);
  v10 = &v55 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223588, &qword_24F96E6E0);
  v11 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CD60, &qword_24F9D9548);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v55 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CD68, &qword_24F9D9550);
  MEMORY[0x28223BE20](v58);
  v18 = &v55 - v17;
  *v10 = sub_24F924C88();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CD70, &qword_24F9D9558);
  sub_24F256C4C(a1, &v10[*(v19 + 44)]);
  sub_24F927618();
  sub_24F9238C8();
  v20 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2235C0, &qword_24F9D9560) + 36)];
  v21 = v62;
  *v20 = v61;
  *(v20 + 1) = v21;
  *(v20 + 2) = v63;
  v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2235B0, &unk_24F96E6F0) + 36)] = 0;
  sub_24F9248B8();
  sub_24E99BF58();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v5 + 8))(v7, v59);
  sub_24E601704(v10, &qword_27F223598, &qword_24F96E6E8);
  v22 = type metadata accessor for SocialSuggestionLockup(0);
  v23 = *(v22 + 44);
  v59 = a1;
  sub_24E994078(*(a1 + v23));
  (*(v11 + 8))(v13, v56);
  v24 = *(sub_24F924258() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_24F924B38();
  (*(*(v26 - 8) + 104))(&v4[v24], v25, v26);
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v32 = &v4[*(type metadata accessor for AsymmetricalInsetRoundedRectangle(0) + 20)];
  __asm { FMOV            V0.2D, #-5.0 }

  *v32 = _Q0;
  *(v32 + 1) = _Q0;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v34 = sub_24F926D08();

  *&v4[*(v57 + 60)] = v34;
  sub_24E60169C(v4, v18, &qword_27F23CD58, &qword_24F9D9540);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CD78, &qword_24F9D9568);
  sub_24E60169C(v16, &v18[v35[9]], &qword_27F23CD60, &qword_24F9D9548);
  v36 = &v18[v35[10]];
  *v36 = sub_24F923398() & 1;
  *(v36 + 1) = v37;
  v36[16] = v38 & 1;
  v39 = &v18[v35[11]];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v40 = qword_27F24E488;
  v41 = sub_24F923398();
  v43 = v42;
  v45 = v44;
  v46 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CD80, &qword_24F9D9598) + 36)];
  *v46 = v40;
  v46[8] = v41 & 1;
  *(v46 + 2) = v43;
  v46[24] = v45 & 1;
  LOBYTE(v40) = sub_24F923398();
  v48 = v47;
  LOBYTE(v43) = v49;
  sub_24E601704(v4, &qword_27F23CD58, &qword_24F9D9540);
  sub_24E601704(v16, &qword_27F23CD60, &qword_24F9D9548);
  v50 = &v18[*(v58 + 36)];
  *v50 = v40 & 1;
  *(v50 + 1) = v48;
  v50[16] = v43 & 1;
  v51 = *(v59 + *(v22 + 28));
  if (v51 == 2 || (v52 = 0.0, (v51 & 1) == 0))
  {
    v52 = 1.0;
  }

  v53 = v60;
  sub_24E6009C8(v18, v60, &qword_27F23CD68, &qword_24F9D9550);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CD88, &qword_24F9D95A0);
  *(v53 + *(result + 36)) = v52;
  return result;
}

uint64_t sub_24F256C4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CD90, &qword_24F9D95A8);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v53 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CD98, &qword_24F9D95B0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v56 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - v11;
  MEMORY[0x28223BE20](v13);
  v55 = &v53 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDA0, &qword_24F9D95B8);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v54 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  *v20 = sub_24F9249A8();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDA8, &qword_24F9D95C0);
  sub_24F2571D4(a1, &v20[*(v21 + 44)]);
  sub_24F927618();
  sub_24F9238C8();
  v22 = &v20[*(v16 + 44)];
  v23 = v59;
  *v22 = v58;
  *(v22 + 1) = v23;
  *(v22 + 2) = v60;
  v24 = (a1 + *(type metadata accessor for SocialSuggestionLockup(0) + 24));
  v25 = v24[1];
  *&v61 = *v24;
  *(&v61 + 1) = v25;
  sub_24E600AEC();

  v26 = sub_24F925E18();
  v28 = v27;
  *&v61 = v26;
  *(&v61 + 1) = v27;
  v30 = v29 & 1;
  LOBYTE(v62) = v29 & 1;
  *(&v62 + 1) = v31;
  sub_24F926B88();
  sub_24E600B40(v26, v28, v30);

  KeyPath = swift_getKeyPath();
  v33 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDB0, &qword_24F9D95F8) + 36)];
  *v33 = KeyPath;
  v33[8] = 1;
  v34 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDB8, &unk_24F9D9600) + 36)];
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDC0, &qword_24FA04220) + 28);
  v36 = *MEMORY[0x277CE0B28];
  v37 = sub_24F925C38();
  (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  *v34 = swift_getKeyPath();
  v38 = sub_24F925A08();
  v39 = swift_getKeyPath();
  v40 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDC8, &qword_24F9D9670) + 36)];
  *v40 = v39;
  v40[1] = v38;
  *&v6[*(v4 + 44)] = sub_24F925198();
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v6, v12, &qword_27F23CD90, &qword_24F9D95A8);
  v41 = &v12[*(v8 + 44)];
  v42 = v66;
  *(v41 + 4) = v65;
  *(v41 + 5) = v42;
  *(v41 + 6) = v67;
  v43 = v62;
  *v41 = v61;
  *(v41 + 1) = v43;
  v44 = v64;
  *(v41 + 2) = v63;
  *(v41 + 3) = v44;
  v45 = v12;
  v46 = v55;
  sub_24E6009C8(v45, v55, &qword_27F23CD98, &qword_24F9D95B0);
  v47 = v54;
  sub_24E60169C(v20, v54, &qword_27F23CDA0, &qword_24F9D95B8);
  v48 = v56;
  sub_24E60169C(v46, v56, &qword_27F23CD98, &qword_24F9D95B0);
  v49 = v57;
  sub_24E60169C(v47, v57, &qword_27F23CDA0, &qword_24F9D95B8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDD0, &unk_24F9D9678);
  v51 = v49 + *(v50 + 48);
  *v51 = 0x4000000000000000;
  *(v51 + 8) = 0;
  sub_24E60169C(v48, v49 + *(v50 + 64), &qword_27F23CD98, &qword_24F9D95B0);
  sub_24E601704(v46, &qword_27F23CD98, &qword_24F9D95B0);
  sub_24E601704(v20, &qword_27F23CDA0, &qword_24F9D95B8);
  sub_24E601704(v48, &qword_27F23CD98, &qword_24F9D95B0);
  return sub_24E601704(v47, &qword_27F23CDA0, &qword_24F9D95B8);
}

uint64_t sub_24F2571D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v162 = a1;
  v145 = a2;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C00, &qword_24F943E20);
  MEMORY[0x28223BE20](v146);
  v150 = v127 - v2;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDD8, &qword_24F9D9688);
  MEMORY[0x28223BE20](v140);
  v151 = v127 - v3;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDE0, &qword_24F9D9690);
  v159 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v158 = v127 - v4;
  v161 = sub_24F9289E8();
  v152 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v160 = v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDE8, &qword_24F9D9698);
  MEMORY[0x28223BE20](v143);
  v144 = v127 - v6;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDF0, &qword_24F9D96A0);
  MEMORY[0x28223BE20](v137);
  v138 = v127 - v7;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDF8, &qword_24F9D96A8);
  MEMORY[0x28223BE20](v142);
  v139 = v127 - v8;
  v156 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v148 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v147 = v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v10 - 8);
  v155 = v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v163 = v127 - v13;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8, &qword_24F957520);
  MEMORY[0x28223BE20](v135);
  v131 = v127 - v14;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF70, &qword_24F997680);
  v130 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v129 = v127 - v15;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF78, &qword_24F997688);
  MEMORY[0x28223BE20](v132);
  v134 = v127 - v16;
  v157 = type metadata accessor for PlayerAvatarView(0);
  v154 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v153 = v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (v127 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = v127 - v22;
  v24 = type metadata accessor for PlayerAvatar(0);
  v149 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = (v127 - v28);
  MEMORY[0x28223BE20](v30);
  v32 = v127 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = (v127 - v34);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF88, &unk_24F9D96B0);
  MEMORY[0x28223BE20](v136);
  v37 = v127 - v36;
  v38 = type metadata accessor for SocialSuggestionLockup.Accessory(0);
  MEMORY[0x28223BE20](v38);
  v40 = v127 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for SocialSuggestionLockup(0);
  sub_24F258DFC(v162 + *(v41 + 20), v40, type metadata accessor for SocialSuggestionLockup.Accessory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v162 = v29;
    v150 = v26;
    v151 = v24;
    v152 = v20;
    v128 = v37;
    v70 = *v40;
    v71 = *(*v40 + 16);
    if (v71)
    {
      if (v71 == 1)
      {
        sub_24F258DFC(v70 + ((*(v149 + 80) + 32) & ~*(v149 + 80)), v32, type metadata accessor for PlayerAvatar);

        sub_24F258E64(v32, v35, type metadata accessor for PlayerAvatar);
        sub_24F2562B8(v35, v23);
        sub_24F258DFC(v23, v134, type metadata accessor for PlayerAvatarView);
        swift_storeEnumTagMultiPayload();
        sub_24F254150(&qword_27F214AD0, type metadata accessor for PlayerAvatarView, &unk_24FA31B24);
        v72 = sub_24ECFF4A4();
        v73 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
        *&v167 = &type metadata for GroupedPlayerAvatarView;
        *(&v167 + 1) = v135;
        *&v168 = v72;
        *(&v168 + 1) = v73;
        swift_getOpaqueTypeConformance2();
        v74 = v128;
        sub_24F924E28();
        sub_24F258ECC(v23, type metadata accessor for PlayerAvatarView);
        sub_24F258ECC(v35, type metadata accessor for PlayerAvatar);
        goto LABEL_21;
      }

      v85 = (*(v149 + 80) + 32) & ~*(v149 + 80);
      v127[1] = *v40;
      v86 = v70 + v85;
      v149 = *(v149 + 72);
      v148 += 7;
      v84 = MEMORY[0x277D84F90];
      v88 = v162;
      v87 = v163;
      do
      {
        v160 = v71;
        v161 = v84;
        v159 = v86;
        sub_24F258DFC(v86, v88, type metadata accessor for PlayerAvatar);
        v89 = *v88;
        v90 = v162[1];
        v91 = type metadata accessor for PlayerAvatar.Overlay(0);
        v92 = *(v91 - 8);
        v93 = *(v92 + 56);
        v158 = v91;
        v93(v87, 1, 1, v91);
        *&v169 = 0;
        v167 = 0u;
        v168 = 0u;
        v94 = v151;
        v95 = *(v151 + 5);
        v96 = v150;
        v93(&v150[v95], 1, 1, v91);
        v97 = v96 + *(v94 + 6);
        v166 = 0;
        v164 = 0u;
        v165 = 0u;
        *v97 = 0u;
        *(v97 + 16) = 0u;
        *(v97 + 32) = 0;

        sub_24E61DA68(&v164, v97, qword_27F21B590, &unk_24F93BE30);
        *v96 = v89;
        v96[1] = v90;

        sub_24E61DA68(v163, v96 + v95, &qword_27F22DF80, &unk_24F942E50);
        sub_24E61DA68(&v167, v97, qword_27F21B590, &unk_24F93BE30);
        v98 = v153;
        v88 = v162;
        sub_24F928948();
        sub_24F258ECC(v88, type metadata accessor for PlayerAvatar);
        type metadata accessor for PlayerAvatarView.AvatarType(0);
        swift_storeEnumTagMultiPayload();
        v99 = v155;
        sub_24E60169C(v96 + v95, v155, &qword_27F22DF80, &unk_24F942E50);
        v100 = v157;
        v101 = *(v157 + 20);
        if ((*(v92 + 48))(v99, 1, v158) == 1)
        {
          sub_24E601704(v99, &qword_27F22DF80, &unk_24F942E50);
          v102 = 1;
          v103 = v156;
        }

        else
        {
          v104 = v99;
          v105 = v147;
          sub_24F258E64(v104, v147, type metadata accessor for PlayerAvatar.Overlay);
          v103 = v156;
          v106 = v105 + *(v156 + 20);
          *v106 = 0;
          *(v106 + 8) = 1;
          v107 = (v105 + *(v103 + 24));
          *v107 = 0;
          v107[1] = 0;
          sub_24F258E64(v105, v98 + v101, type metadata accessor for PlayerAvatarView.Overlay);
          v102 = 0;
        }

        (*v148)(v98 + v101, v102, 1, v103);
        v108 = v98 + *(v100 + 24);
        sub_24E60169C(v97, &v167, qword_27F24EC90, &unk_24F93C1D0);
        sub_24F258ECC(v96, type metadata accessor for PlayerAvatar);
        v109 = v168;
        *v108 = v167;
        *(v108 + 16) = v109;
        *(v108 + 32) = v169;
        *(v98 + *(v100 + 28)) = 7;
        v110 = v152;
        sub_24F258E64(v98, v152, type metadata accessor for PlayerAvatarView);
        v84 = v161;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_24E619074(0, v84[2] + 1, 1, v84);
        }

        v87 = v163;
        v111 = v154;
        v113 = v84[2];
        v112 = v84[3];
        if (v113 >= v112 >> 1)
        {
          v84 = sub_24E619074((v112 > 1), v113 + 1, 1, v84);
        }

        v84[2] = v113 + 1;
        sub_24F258E64(v110, v84 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v113, type metadata accessor for PlayerAvatarView);
        v86 = v159 + v149;
        v71 = v160 - 1;
      }

      while (v160 != 1);
    }

    else
    {

      v84 = MEMORY[0x277D84F90];
    }

    v114 = v131;
    *&v167 = v84;
    *(&v167 + 1) = 0x404A800000000000;
    v115 = *MEMORY[0x277CDFA10];
    v116 = sub_24F923E98();
    (*(*(v116 - 8) + 104))(v114, v115, v116);
    sub_24F254150(&qword_27F22DF90, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    result = sub_24F92AFF8();
    v117 = v135;
    v118 = v134;
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v119 = sub_24ECFF4A4();
    v120 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
    v121 = v129;
    sub_24F9263F8();
    sub_24E601704(v114, &qword_27F21CCC8, &qword_24F957520);

    v122 = v130;
    v123 = v133;
    (*(v130 + 16))(v118, v121, v133);
    swift_storeEnumTagMultiPayload();
    sub_24F254150(&qword_27F214AD0, type metadata accessor for PlayerAvatarView, &unk_24FA31B24);
    *&v167 = &type metadata for GroupedPlayerAvatarView;
    *(&v167 + 1) = v117;
    *&v168 = v119;
    *(&v168 + 1) = v120;
    swift_getOpaqueTypeConformance2();
    v74 = v128;
    sub_24F924E28();
    (*(v122 + 8))(v121, v123);
LABEL_21:
    sub_24E60169C(v74, v138, &qword_27F22DF88, &unk_24F9D96B0);
    swift_storeEnumTagMultiPayload();
    sub_24ECFF540();
    v124 = sub_24F258BA8();
    v125 = sub_24F258DA8();
    *&v167 = v140;
    *(&v167 + 1) = &type metadata for ClearPlaceholderMediaArtworkStyle;
    *&v168 = v124;
    *(&v168 + 1) = v125;
    swift_getOpaqueTypeConformance2();
    v126 = v139;
    sub_24F924E28();
    sub_24E60169C(v126, v144, &qword_27F23CDF8, &qword_24F9D96A8);
    swift_storeEnumTagMultiPayload();
    sub_24F258AC4();
    sub_24E6C06F8();
    sub_24F924E28();
    sub_24E601704(v126, &qword_27F23CDF8, &qword_24F9D96A8);
    return sub_24E601704(v74, &qword_27F22DF88, &unk_24F9D96B0);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v43 = v152;
    v44 = v160;
    v45 = v161;
    v152[4](v160, v40, v161);
    v46 = sub_24F9258F8();
    KeyPath = swift_getKeyPath();
    v48 = v141;
    v49 = KeyPath;
    v50 = v151;
    (*(v43 + 16))(v151, v44, v45);
    v51 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CE28, &qword_24F9D96C8) + 36));
    *v51 = v49;
    v51[1] = v46;
    LOBYTE(v46) = sub_24F925808();
    sub_24F923318();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v60 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CE18, &qword_24F9D96C0) + 36);
    *v60 = v46;
    *(v60 + 8) = v53;
    *(v60 + 16) = v55;
    *(v60 + 24) = v57;
    *(v60 + 32) = v59;
    *(v60 + 40) = 0;
    sub_24F927618();
    sub_24F9238C8();
    v61 = v140;
    v62 = (v50 + *(v140 + 36));
    v63 = v168;
    *v62 = v167;
    v62[1] = v63;
    v62[2] = v169;
    v64 = sub_24F258BA8();
    v65 = sub_24F258DA8();
    v66 = v158;
    sub_24F925ED8();
    sub_24E601704(v50, &qword_27F23CDD8, &qword_24F9D9688);
    v67 = v159;
    (*(v159 + 16))(v138, v66, v48);
    swift_storeEnumTagMultiPayload();
    sub_24ECFF540();
    *&v164 = v61;
    *(&v164 + 1) = &type metadata for ClearPlaceholderMediaArtworkStyle;
    *&v165 = v64;
    *(&v165 + 1) = v65;
    swift_getOpaqueTypeConformance2();
    v68 = v139;
    sub_24F924E28();
    sub_24E60169C(v68, v144, &qword_27F23CDF8, &qword_24F9D96A8);
    swift_storeEnumTagMultiPayload();
    sub_24F258AC4();
    sub_24E6C06F8();
    sub_24F924E28();
    sub_24E601704(v68, &qword_27F23CDF8, &qword_24F9D96A8);
    (*(v67 + 8))(v66, v48);
    return (*(v43 + 8))(v160, v161);
  }

  else
  {
    v75 = sub_24F926E48();
    v76 = sub_24F925898();
    v77 = swift_getKeyPath();
    v78 = sub_24F9251C8();
    v79 = v150;
    v80 = &v150[*(v146 + 36)];
    v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
    v82 = *MEMORY[0x277CE13B8];
    v83 = sub_24F927748();
    (*(*(v83 - 8) + 104))(&v80[v81], v82, v83);
    *v80 = v78;
    *v79 = v75;
    v79[1] = v77;
    v79[2] = v76;
    sub_24E60169C(v79, v144, &qword_27F216C00, &qword_24F943E20);
    swift_storeEnumTagMultiPayload();
    sub_24F258AC4();
    sub_24E6C06F8();
    sub_24F924E28();
    return sub_24E601704(v79, &qword_27F216C00, &qword_24F943E20);
  }
}

uint64_t sub_24F258808(uint64_t a1)
{
  sub_24F256264();

  return sub_24F9218E8();
}

unint64_t sub_24F258898()
{
  result = qword_27F23CD50;
  if (!qword_27F23CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CD50);
  }

  return result;
}

uint64_t sub_24F2589F0(uint64_t a1)
{
  v2 = sub_24F925C38();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24F924578();
}

unint64_t sub_24F258AC4()
{
  result = qword_27F23CE00;
  if (!qword_27F23CE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CDF8, &qword_24F9D96A8);
    sub_24ECFF540();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CDD8, &qword_24F9D9688);
    sub_24F258BA8();
    sub_24F258DA8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CE00);
  }

  return result;
}

unint64_t sub_24F258BA8()
{
  result = qword_27F23CE08;
  if (!qword_27F23CE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CDD8, &qword_24F9D9688);
    sub_24F258C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CE08);
  }

  return result;
}

unint64_t sub_24F258C34()
{
  result = qword_27F23CE10;
  if (!qword_27F23CE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CE18, &qword_24F9D96C0);
    sub_24F258CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CE10);
  }

  return result;
}

unint64_t sub_24F258CC0()
{
  result = qword_27F23CE20;
  if (!qword_27F23CE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CE28, &qword_24F9D96C8);
    sub_24F254150(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CE20);
  }

  return result;
}

unint64_t sub_24F258DA8()
{
  result = qword_27F23CE30;
  if (!qword_27F23CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CE30);
  }

  return result;
}

uint64_t sub_24F258DFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F258E64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F258ECC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F258F2C()
{
  result = qword_27F23CE40;
  if (!qword_27F23CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CE40);
  }

  return result;
}

unint64_t sub_24F258F80()
{
  result = qword_27F23CE80;
  if (!qword_27F23CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CE80);
  }

  return result;
}

unint64_t sub_24F258FD4()
{
  result = qword_27F23CE88;
  if (!qword_27F23CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CE88);
  }

  return result;
}

unint64_t sub_24F259028()
{
  result = qword_27F23CE90;
  if (!qword_27F23CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CE90);
  }

  return result;
}

unint64_t sub_24F25907C()
{
  result = qword_27F23CE98;
  if (!qword_27F23CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CE98);
  }

  return result;
}

uint64_t sub_24F2590D0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218590, &qword_24F9D7B90);
    sub_24F254150(a2, type metadata accessor for PlayerAvatar, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F2591C0()
{
  result = qword_27F23CEC0;
  if (!qword_27F23CEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CD88, &qword_24F9D95A0);
    sub_24F25924C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CEC0);
  }

  return result;
}

unint64_t sub_24F25924C()
{
  result = qword_27F23CEC8;
  if (!qword_27F23CEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CD68, &qword_24F9D9550);
    sub_24F2592D8();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CEC8);
  }

  return result;
}

unint64_t sub_24F2592D8()
{
  result = qword_27F23CED0;
  if (!qword_27F23CED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CD80, &qword_24F9D9598);
    sub_24E602068(&qword_27F23CED8, &qword_27F23CD78, &qword_24F9D9568, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CED0);
  }

  return result;
}

unint64_t sub_24F259394()
{
  result = qword_27F23CEE0;
  if (!qword_27F23CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CEE0);
  }

  return result;
}

unint64_t sub_24F2593EC()
{
  result = qword_27F23CEE8;
  if (!qword_27F23CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CEE8);
  }

  return result;
}

unint64_t sub_24F259444()
{
  result = qword_27F23CEF0;
  if (!qword_27F23CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CEF0);
  }

  return result;
}

unint64_t sub_24F25949C()
{
  result = qword_27F23CEF8;
  if (!qword_27F23CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CEF8);
  }

  return result;
}

unint64_t sub_24F2594F4()
{
  result = qword_27F23CF00;
  if (!qword_27F23CF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF00);
  }

  return result;
}

unint64_t sub_24F25954C()
{
  result = qword_27F23CF08;
  if (!qword_27F23CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CF08);
  }

  return result;
}