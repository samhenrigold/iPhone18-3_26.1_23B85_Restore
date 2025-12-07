uint64_t sub_22868D354@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_2286A089C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v44 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2286A092C();
  v45 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 relevanceProviders];
  sub_228696230(0, &qword_27D84EEF0, off_2785F8E30);
  v9 = sub_2286A09FC();

  v52 = MEMORY[0x277D84F90];
  v47 = v4;
  if (v9 >> 62)
  {
LABEL_19:
    v10 = sub_2286A0BAC();
    v49 = v6;
    if (!v10)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v49 = v6;
    if (!v10)
    {
      goto LABEL_20;
    }
  }

  v6 = 0;
  do
  {
    v11 = v6;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x22AABB310](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v51 = &unk_283BBF700;
      if (swift_dynamicCastObjCProtocolConditional())
      {
        break;
      }

      ++v11;
      if (v6 == v10)
      {
        goto LABEL_20;
      }
    }

    MEMORY[0x22AABB1E0]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2286A0A1C();
    }

    sub_2286A0A3C();
  }

  while (v6 != v10);
LABEL_20:

  v52 = sub_2286932FC(v14);
  sub_228691364(&v52);

  v15 = v52;
  v16 = v3;
  v17 = v48;
  v18 = v49;
  if ((v52 & 0x8000000000000000) == 0 && (v52 & 0x4000000000000000) == 0)
  {
    v19 = v47;
    if (*(v52 + 16))
    {
      goto LABEL_23;
    }

LABEL_31:

    v41 = 1;
    v40 = v46;
    return (*(v19 + 56))(v40, v41, 1, v16);
  }

  v42 = sub_2286A0BAC();
  v19 = v47;
  if (!v42)
  {
    goto LABEL_31;
  }

LABEL_23:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x22AABB310](0, v15);
    goto LABEL_26;
  }

  if (*(v15 + 16))
  {
    v20 = *(v15 + 32);
    swift_unknownObjectRetain();
LABEL_26:

    v21 = sub_22868A460();
    v22 = v45;
    (*(v45 + 16))(v17, v21, v18);
    swift_unknownObjectRetain();
    v23 = sub_2286A090C();
    v24 = sub_2286A0A6C();
    swift_unknownObjectRelease();
    v25 = &selRef_removeFeatureValueAtIndex_;
    if (os_log_type_enabled(v23, v24))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v52 = v27;
      *v26 = 136315394;
      v28 = [v20 startDate];
      v29 = v16;
      v30 = v44;
      sub_2286A087C();

      sub_228696278(&qword_27D84EEF8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v31 = sub_2286A0C9C();
      v33 = v32;
      v34 = v30;
      v16 = v29;
      (*(v19 + 8))(v34, v29);
      v35 = sub_22868FE70(v31, v33, &v52);

      *(v26 + 4) = v35;
      *(v26 + 12) = 2080;
      v50 = v20;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF00, &qword_2286B3ED8);
      v36 = sub_2286A098C();
      v38 = sub_22868FE70(v36, v37, &v52);
      v25 = &selRef_removeFeatureValueAtIndex_;

      *(v26 + 14) = v38;
      _os_log_impl(&dword_22859F000, v23, v24, "Using startDate: %s from the first REDateRelevanceProviding found: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABCAC0](v27, -1, -1);
      MEMORY[0x22AABCAC0](v26, -1, -1);

      (*(v45 + 8))(v48, v49);
    }

    else
    {

      (*(v22 + 8))(v17, v18);
    }

    v39 = [v20 v25[322]];
    v40 = v46;
    sub_2286A087C();
    swift_unknownObjectRelease();

    v41 = 0;
    return (*(v19 + 56))(v40, v41, 1, v16);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22868DA8C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = sub_2286A089C();
  v7 = *(v6 - 1);
  v8 = MEMORY[0x28223BE20](v6);
  v104 = v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v106 = v97 - v10;
  v116 = sub_2286A092C();
  v11 = *(v116 - 8);
  v12 = MEMORY[0x28223BE20](v116);
  v103 = v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v105 = v97 - v15;
  MEMORY[0x28223BE20](v14);
  v114 = v97 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v109 = v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v108 = v97 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v107 = v97 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v97 - v25;
  MEMORY[0x28223BE20](v24);
  v121 = v97 - v27;
  v28 = *(v7 + 56);
  v29 = 1;
  v115 = a2;
  v120 = v7 + 56;
  v119 = v28;
  v28(a2, 1, 1, v6);
  v126 = v3;
  v30 = [v3 rankingStartDateForElement_];
  if (v30)
  {
    v31 = v30;
    sub_2286A087C();

    v29 = 0;
  }

  v119(v26, v29, 1, v6);
  sub_228694F1C(v26, v121);
  v136 = sub_22868C770(a1);
  v32 = [a1 relevanceProviders];
  sub_228696230(0, &qword_27D84EEF0, off_2785F8E30);
  v33 = sub_2286A09FC();

  v35 = v33;
  v123 = v33;
  if (v33 >> 62)
  {
    goto LABEL_82;
  }

  v36 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v36)
  {
    v125 = v35 & 0xC000000000000001;
    v118 = v35 & 0xFFFFFFFFFFFFFF8;
    v117 = v35 + 32;
    v37 = v136 & 0xFFFFFFFFFFFFFF8;
    v135 = v136 & 0xFFFFFFFFFFFFFF8;
    if (v136 < 0)
    {
      v37 = v136;
    }

    v97[1] = v37;
    v134 = v136 & 0xC000000000000001;
    v112 = (v7 + 48);
    v102 = (v7 + 8);
    v111 = (v11 + 16);
    v110 = (v11 + 8);
    v101 = (v7 + 32);
    v100 = (v7 + 16);
    v7 = 0;
    *&v34 = 134217984;
    v99 = v34;
    *&v34 = 136315138;
    v98 = v34;
    v113 = v6;
    v122 = v36;
    while (1)
    {
      if (v125)
      {
        v38 = MEMORY[0x22AABB310](v7, v35);
        v39 = __OFADD__(v7++, 1);
        if (v39)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v7 >= *(v118 + 16))
        {
          goto LABEL_81;
        }

        v38 = *(v117 + 8 * v7);
        v39 = __OFADD__(v7++, 1);
        if (v39)
        {
          goto LABEL_80;
        }
      }

      v127 = v7;
      v40 = v38;
      v41 = [v126 relevanceEngine];
      v42 = [v41 featuresForRelevanceProvider_];

      if (!v42)
      {

        goto LABEL_9;
      }

      v124 = v40;
      sub_228696230(0, &qword_281057DB0, off_2785F8AF8);
      v43 = sub_2286A09FC();

      v130 = v43;
      if (v43 >> 62)
      {
        v44 = sub_2286A0BAC();
        v7 = v127;
        if (!v44)
        {
LABEL_73:

          goto LABEL_10;
        }
      }

      else
      {
        v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v7 = v127;
        if (!v44)
        {
          goto LABEL_73;
        }
      }

      v7 = v136 >> 62 ? sub_2286A0BAC() : *(v135 + 16);
      v45 = 0;
      v131 = v44;
      v132 = (v130 & 0xC000000000000001);
      v128 = v130 + 32;
      v129 = v130 & 0xFFFFFFFFFFFFFF8;
LABEL_25:
      if (v132)
      {
        v46 = MEMORY[0x22AABB310](v45, v130);
      }

      else
      {
        if (v45 >= *(v129 + 16))
        {
          goto LABEL_79;
        }

        v46 = *(v128 + 8 * v45);
      }

      v47 = v46;
      v39 = __OFADD__(v45++, 1);
      v48 = MEMORY[0x277D84F90];
      if (v39)
      {
        goto LABEL_77;
      }

      v137[0] = MEMORY[0x277D84F90];
      if (v7)
      {
        break;
      }

LABEL_48:
      if ((v48 & 0x8000000000000000) == 0 && (v48 & 0x4000000000000000) == 0)
      {
        if (*(v48 + 16))
        {
          goto LABEL_51;
        }

LABEL_23:

LABEL_24:
        if (v45 == v131)
        {

          goto LABEL_9;
        }

        goto LABEL_25;
      }

      v62 = v48;
      v63 = sub_2286A0BAC();
      v48 = v62;
      if (!v63)
      {
        goto LABEL_23;
      }

LABEL_51:
      if ((v48 & 0xC000000000000001) != 0)
      {
        v59 = MEMORY[0x22AABB310](0, v48);
      }

      else
      {
        if (!*(v48 + 16))
        {
          goto LABEL_78;
        }

        v59 = *(v48 + 32);
      }

      (*(*v59 + 120))(v137, v60);
      v61 = v137[0];
      if ((v137[0] & 0x8000000000000000) == 0)
      {

        goto LABEL_24;
      }

      v65 = v61 & 0x7FFFFFFFFFFFFFFFLL;
      v66 = *(*v65 + 88);
      v133 = v65;
      v66(v137, v64);
      v67 = v137[3];

      v68 = v108;
      sub_228696168(v121, v108, &unk_27D84EF08, &unk_2286B3F70);
      v69 = *v112;
      v70 = v113;
      if ((*v112)(v68, 1, v113) == 1)
      {
        v71 = v115;
        sub_2286961D0(v115, &unk_27D84EF08, &unk_2286B3F70);
        sub_2286961D0(v68, &unk_27D84EF08, &unk_2286B3F70);
        v72 = 1;
        v73 = v107;
      }

      else
      {
        v73 = v107;
        sub_2286A082C();
        v71 = v115;
        sub_2286961D0(v115, &unk_27D84EF08, &unk_2286B3F70);
        (*v102)(v68, v70);
        v72 = 0;
      }

      v119(v73, v72, 1, v70);
      sub_228694F1C(v73, v71);
      v74 = sub_22868A460();
      v6 = *v111;
      (*v111)(v114, v74, v116);
      v75 = sub_2286A090C();
      v76 = sub_2286A0A6C();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = v99;
        *(v77 + 4) = v67;
        _os_log_impl(&dword_22859F000, v75, v76, "startDateOffset: %f", v77, 0xCu);
        MEMORY[0x22AABCAC0](v77, -1, -1);
      }

      v78 = v116;
      v132 = *v110;
      v132(v114, v116);
      v79 = v109;
      v11 = &unk_2286B3F70;
      sub_228696168(v115, v109, &unk_27D84EF08, &unk_2286B3F70);
      v80 = v113;
      if (v69(v79, 1, v113) == 1)
      {
        sub_2286961D0(v79, &unk_27D84EF08, &unk_2286B3F70);
        v81 = v103;
        (v6)(v103, v74, v78);
        v82 = sub_2286A090C();
        v83 = sub_2286A0A6C();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&dword_22859F000, v82, v83, "startDate: nil", v84, 2u);
          MEMORY[0x22AABCAC0](v84, -1, -1);
        }

        v132(v81, v78);
      }

      else
      {
        v11 = v106;
        (*v101)(v106, v79, v80);
        v85 = v105;
        (v6)(v105, v74, v78);
        v86 = v104;
        (*v100)(v104, v11, v80);
        v87 = sub_2286A090C();
        v6 = sub_2286A0A6C();
        if (os_log_type_enabled(v87, v6))
        {
          v88 = swift_slowAlloc();
          v131 = swift_slowAlloc();
          v137[0] = v131;
          *v88 = v98;
          sub_228696278(&qword_27D84EEF8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v89 = sub_2286A0C9C();
          v90 = v86;
          v92 = v91;
          v11 = *v102;
          (*v102)(v90, v80);
          v93 = sub_22868FE70(v89, v92, v137);

          *(v88 + 4) = v93;
          _os_log_impl(&dword_22859F000, v87, v6, "startDate: %s", v88, 0xCu);
          v94 = v131;
          __swift_destroy_boxed_opaque_existential_1(v131);
          MEMORY[0x22AABCAC0](v94, -1, -1);
          MEMORY[0x22AABCAC0](v88, -1, -1);

          v132(v105, v116);
          (v11)(v106, v80);
        }

        else
        {

          v95 = *v102;
          (*v102)(v86, v80);
          v132(v85, v78);
          (v95)(v11, v80);
        }
      }

LABEL_9:
      v7 = v127;
LABEL_10:
      v35 = v123;
      if (v7 == v122)
      {
        goto LABEL_83;
      }
    }

    v133 = v45;
    v49 = 0;
    while (v134)
    {
      v50 = MEMORY[0x22AABB310](v49, v136);
      v6 = (v49 + 1);
      if (__OFADD__(v49, 1))
      {
        goto LABEL_75;
      }

LABEL_38:
      v51 = (*(*v50 + 96))();
      v53 = v52;
      v54 = [v47 name];
      v55 = sub_2286A097C();
      v11 = v56;

      if (v51 == v55 && v53 == v11)
      {
      }

      else
      {
        v58 = sub_2286A0CAC();

        if ((v58 & 1) == 0)
        {

          goto LABEL_34;
        }
      }

      sub_2286A0B4C();
      sub_2286A0B6C();
      sub_2286A0B7C();
      sub_2286A0B5C();
LABEL_34:
      ++v49;
      if (v6 == v7)
      {
        v48 = v137[0];
        v45 = v133;
        goto LABEL_48;
      }
    }

    if (v49 >= *(v135 + 16))
    {
      goto LABEL_76;
    }

    v50 = *(v136 + 8 * v49 + 32);

    v6 = (v49 + 1);
    if (!__OFADD__(v49, 1))
    {
      goto LABEL_38;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
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
    v36 = sub_2286A0BAC();
    v35 = v123;
  }

LABEL_83:

  return sub_2286961D0(v121, &unk_27D84EF08, &unk_2286B3F70);
}

unint64_t sub_22868EAE4(void *a1, char *a2)
{
  v4 = sub_2286A089C();
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF18, &qword_2286B3EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2286B3EC0;
  *(inited + 32) = 0x49746E656D656C65;
  *(inited + 40) = 0xE900000000000064;
  v9 = [a1 identifier];
  v10 = sub_2286A097C();
  v12 = v11;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  sub_228693940(inited);
  swift_setDeallocating();
  sub_2286961D0(inited + 32, &qword_27D84EF20, &qword_2286B3EE8);
  v13 = sub_2286A093C();

  [v7 traceEvent:3 withMetadata:v13];

  sub_2286A088C();
  sub_2286A081C();
  v15 = v14;
  v43 = a1;
  result = sub_22868C770(a1);
  v17 = result;
  if (result >> 62)
  {
    result = sub_2286A0BAC();
    v18 = result;
  }

  else
  {
    v18 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = v15 / 60.0;
  v40 = v4;
  if (!v18)
  {
    v21 = MEMORY[0x277D84F90];
    v22 = 0.0;
LABEL_22:

    sub_228695A60(v43, v21, a2, v6, v22, v19);

    return (*(v39 + 8))(v6, v40);
  }

  if (v18 >= 1)
  {
    v20 = 0;
    v42 = v17 & 0xC000000000000001;
    v21 = MEMORY[0x277D84F90];
    v22 = 0.0;
    v41 = v17;
    do
    {
      if (v42)
      {
        v23 = MEMORY[0x22AABB310](v20, v17);
      }

      else
      {
        v23 = *(v17 + 8 * v20 + 32);
      }

      v24 = (*(*v23 + 160))(a2, v6);
      v25 = sub_228694F8C(v43, v23, a2, v6, v24, v19);
      if (v24 == v22)
      {
        v26 = (*(*v23 + 96))(v25);
        v28 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_22868FC58(0, *(v21 + 2) + 1, 1, v21);
        }

        v30 = *(v21 + 2);
        v29 = *(v21 + 3);
        if (v30 >= v29 >> 1)
        {
          v21 = sub_22868FC58((v29 > 1), v30 + 1, 1, v21);
        }

        *(v21 + 2) = v30 + 1;
        v31 = &v21[16 * v30];
        *(v31 + 4) = v26;
        *(v31 + 5) = v28;
        v17 = v41;
      }

      else if (v22 >= v24)
      {
      }

      else
      {

        v33 = (*(*v23 + 96))(v32);
        v35 = v34;
        v21 = sub_22868FC58(0, 1, 1, MEMORY[0x277D84F90]);
        v37 = *(v21 + 2);
        v36 = *(v21 + 3);
        if (v37 >= v36 >> 1)
        {
          v21 = sub_22868FC58((v36 > 1), v37 + 1, 1, v21);
        }

        *(v21 + 2) = v37 + 1;
        v38 = &v21[16 * v37];
        *(v38 + 4) = v33;
        *(v38 + 5) = v35;
        v22 = v24;
        v17 = v41;
      }

      ++v20;
    }

    while (v18 != v20);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id sub_22868F09C(void *a1)
{
  v2 = v1;
  v87 = a1;
  v3 = sub_2286A092C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v76 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v76 - v11;
  v13 = [v2 relevanceEngine];
  v14 = &selRef__setSection_forElementWithIdentifier_;
  v15 = [v13 configuration];

  v16 = [v15 rankingTierFilteringRules];
  if (!v16)
  {
    goto LABEL_5;
  }

  v85 = v12;
  v86 = v2;
  v77 = v10;
  v78 = v4;
  sub_228696230(0, &qword_27D84EF30, 0x277CCABB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF38, &qword_2286B3EF8);
  sub_228695F80(&qword_27D84EF40, &qword_27D84EF30, 0x277CCABB0);
  v17 = sub_2286A094C();

  v7 = *(v17 + 16);
  v76 = v17;
  if (!v7)
  {
LABEL_9:
    v18 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v18 = sub_22868FDEC(v7, 0);
  v19 = sub_2286935CC(v90, v18 + 4, v7, v17);
  v2 = v90[0];
  v14 = v90[2];
  v4 = v90[3];

  sub_228695FD0(v2);
  if (v19 != v7)
  {
    __break(1u);
LABEL_5:
    v20 = sub_22868A460();
    (*(v4 + 16))(v7, v20, v3);
    v21 = v2;
    v22 = sub_2286A090C();
    v23 = sub_2286A0A7C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = [v21 relevanceEngine];
      v27 = [v26 v14[328]];

      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_22859F000, v22, v23, "Could not unwrap ranking tier filtering rules from configuration: %@", v24, 0xCu);
      sub_2286961D0(v25, &qword_27D84EF28, &qword_2286B3EF0);
      MEMORY[0x22AABCAC0](v25, -1, -1);
      MEMORY[0x22AABCAC0](v24, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    result = [objc_opt_self() none];
    if (result)
    {
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  v90[0] = v18;
  v29 = 0;
  sub_2286913E0(v90);
  v30 = v90[0];
  v89 = *(v90[0] + 16);
  if (v89)
  {
    v88 = objc_opt_self();
    v31 = 0;
    v82 = (v78 + 8);
    v83 = (v78 + 16);
    v32 = (v30 + 40);
    *&v33 = 138412546;
    v80 = v33;
    v84 = v30;
    v79 = v3;
    while (v31 < *(v30 + 16))
    {
      v34 = *(v32 - 1);
      v35 = *v32;
      v36 = sub_228696230(0, &qword_27D84EF48, off_2785F8B50);
      v37 = v34;

      v38 = sub_2286A09EC();
      v39 = [v88 comparatorWithFilteringRules_];

      if (v39)
      {

        v29 = [v86 relevanceEngine];
        v40 = [v29 elementRankerForComparator_];

        if (([v40 shouldHideElement_] & 1) == 0)
        {

          v74 = [v37 integerValue];
          v75 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];

          swift_unknownObjectRelease();
          return v75;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v41 = sub_22868A460();
        v42 = v85;
        (*v83)(v85, v41, v3);
        v29 = v3;
        v43 = v37;

        v44 = sub_2286A090C();
        v45 = sub_2286A0A7C();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v90[0] = v81;
          *v46 = v80;
          *(v46 + 4) = v43;
          *v29 = v43;
          *(v46 + 12) = 2080;
          v47 = v43;
          v48 = MEMORY[0x22AABB210](v35, v36);
          v50 = v49;

          v51 = sub_22868FE70(v48, v50, v90);

          *(v46 + 14) = v51;
          _os_log_impl(&dword_22859F000, v44, v45, "Could not unwrap comparator for tier number %@ with tier rules: %s", v46, 0x16u);
          sub_2286961D0(v29, &qword_27D84EF28, &qword_2286B3EF0);
          MEMORY[0x22AABCAC0](v29, -1, -1);
          v52 = v81;
          __swift_destroy_boxed_opaque_existential_1(v81);
          MEMORY[0x22AABCAC0](v52, -1, -1);
          MEMORY[0x22AABCAC0](v46, -1, -1);

          v3 = v79;
          (*v82)(v85, v79);
        }

        else
        {

          (*v82)(v42, v29);
          v3 = v29;
        }

        v30 = v84;
      }

      ++v31;
      v32 += 2;
      if (v89 == v31)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    v53 = sub_22868A460();
    v55 = v77;
    v54 = v78;
    (*(v78 + 16))(v77, v53, v3);
    v56 = v87;
    v57 = sub_2286A090C();
    v58 = sub_2286A0A7C();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v90[0] = v60;
      *v59 = 136315394;
      v61 = [v56 applicationBundleIdentifier];
      if (!v61)
      {
        v61 = [v56 bundleIdentifier];
      }

      v62 = v61;
      v63 = sub_2286A097C();
      v65 = v64;

      v66 = sub_22868FE70(v63, v65, v90);

      *(v59 + 4) = v66;
      *(v59 + 12) = 2080;
      v67 = [v56 identifier];
      v29 = sub_2286A097C();
      v69 = v68;

      v70 = sub_22868FE70(v29, v69, v90);

      *(v59 + 14) = v70;
      _os_log_impl(&dword_22859F000, v57, v58, "Element: %s, Element ID: %s doesn't match any tier! Returning no tier.", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABCAC0](v60, -1, -1);
      MEMORY[0x22AABCAC0](v59, -1, -1);

      (*(v78 + 8))(v77, v3);
    }

    else
    {

      v71 = *(v54 + 8);
      v29 = (v54 + 8);
      v71(v55, v3);
    }

    v72 = [objc_opt_self() none];
    if (v72)
    {
      v73 = v72;

      return v73;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

void __swiftcall RankingManager.init()(RankingManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

char *sub_22868FB54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF70, &qword_2286B3F10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_22868FC58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF80, &qword_2286B3F20);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_22868FD64(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EFC0, &qword_2286B3F40);
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
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_22868FDEC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF78, &qword_2286B3F18);
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

unint64_t sub_22868FE70(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22868FF3C(v11, 0, 0, 1, a1, a2);
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
    sub_2286960A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_22868FF3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_228690048(a5, a6);
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
    result = sub_2286A0B3C();
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

void *sub_228690048(uint64_t a1, unint64_t a2)
{
  v3 = sub_228690094(a1, a2);
  sub_2286901C4(&unk_283B96BB0);
  return v3;
}

void *sub_228690094(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2286902B0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2286A0B3C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2286A09BC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2286902B0(v10, 0);
        result = sub_2286A0AEC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_2286901C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_228690324(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_2286902B0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EFA8, &qword_2286B3F30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_228690324(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EFA8, &qword_2286B3F30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_228690418(uint64_t a1, uint64_t a2)
{
  sub_2286A0CEC();
  sub_2286A099C();
  v4 = sub_2286A0D1C();

  return sub_2286904D4(a1, a2, v4);
}

unint64_t sub_228690490(uint64_t a1)
{
  v2 = sub_2286A0A9C();

  return sub_22869058C(a1, v2);
}

unint64_t sub_2286904D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2286A0CAC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22869058C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_228696230(0, &qword_281057DB0, off_2785F8AF8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2286A0AAC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_228690660(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_228690490(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_228690F08(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_228691094();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_2286A0BBC();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_2286A0BAC();
  v8 = sub_2286907AC(v4, v7);

  v9 = sub_228690490(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_228690F08(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_2286907AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EFF0, &qword_2286B3F58);
    v2 = sub_2286A0C1C();
    v19 = v2;
    sub_2286A0B9C();
    v3 = sub_2286A0BCC();
    if (v3)
    {
      v4 = v3;
      sub_228696230(0, &qword_281057DB0, off_2785F8AF8);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_228696230(0, &qword_27D84EFA0, off_2785F8908);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_2286909F8(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_2286A0A9C();
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
        v5 = sub_2286A0BCC();
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

uint64_t sub_2286909F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EFF0, &qword_2286B3F58);
  result = sub_2286A0C0C();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_2286A0A9C();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_228690C60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EFE8, &qword_2286B3F50);
  v34 = v4;
  result = sub_2286A0C0C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_2286A0CEC();
      sub_2286A099C();
      result = sub_2286A0D1C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_228690F08(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2286A0ACC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_2286A0A9C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

id sub_228691094()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EFF0, &qword_2286B3F58);
  v2 = *v0;
  v3 = sub_2286A0BFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2286911F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EFE8, &qword_2286B3F50);
  v2 = *v0;
  v3 = sub_2286A0BFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_228691364(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2286935A4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22869144C(v6);
  return sub_2286A0B5C();
}

void sub_2286913E0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2286935B8(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_22869155C(v4);
  *a1 = v2;
}

void sub_22869144C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2286A0C8C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF00, &qword_2286B3ED8);
        v6 = sub_2286A0A2C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_2286919BC(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_228691664(0, v2, 1, a1);
  }
}

void sub_22869155C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2286A0C8C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF68, &qword_2286B3F08);
        v5 = sub_2286A0A2C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_228692244(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22869188C(0, v2, 1, a1);
  }
}

uint64_t sub_228691664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = sub_2286A089C();
  v8 = MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v28 - v12;
  v29 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v35 = *a4;
    v15 = v35 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_5:
    v31 = v15;
    v32 = a3;
    v17 = *(v35 + 8 * a3);
    v30 = v16;
    v18 = v16;
    while (1)
    {
      v19 = *v15;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v20 = [v17 startDate];
      sub_2286A087C();

      v21 = [v19 startDate];
      v22 = v33;
      sub_2286A087C();

      LOBYTE(v21) = sub_2286A085C();
      v23 = *v14;
      v24 = v22;
      v25 = v34;
      (*v14)(v24, v34);
      v23(v13, v25);
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if ((v21 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v15 = v31 + 8;
        v16 = v30 - 1;
        if (v32 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v26 = *v15;
      v17 = *(v15 + 8);
      *v15 = v17;
      *(v15 + 8) = v26;
      v15 -= 8;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22869188C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v18 = *a4;
    v4 = *a4 + 16 * a3 - 16;
    v5 = a1 - a3;
LABEL_5:
    v16 = v4;
    v17 = a3;
    v6 = *(v18 + 16 * a3);
    v15 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;

      v9 = v7;

      v10 = [v8 integerValue];
      v11 = [v9 integerValue];

      if (v10 >= v11)
      {
LABEL_4:
        a3 = v17 + 1;
        v4 = v16 + 16;
        v5 = v15 - 1;
        if (v17 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v18)
      {
        break;
      }

      v12 = *v4;
      v6 = *(v4 + 16);
      *v4 = v6;
      *(v4 + 16) = v12;
      v4 -= 16;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_2286919BC(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v120 = sub_2286A089C();
  v9 = MEMORY[0x28223BE20](v120);
  v119 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v118 = &v105 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v100 = a4;
    }

    else
    {
LABEL_121:
      v100 = sub_2286931B4(a4);
    }

    v121 = v100;
    v101 = *(v100 + 2);
    if (v101 >= 2)
    {
      while (*v16)
      {
        a4 = *&v100[16 * v101];
        v102 = v100;
        v103 = *&v100[16 * v101 + 24];
        sub_228692950((*v16 + 8 * a4), (*v16 + 8 * *&v100[16 * v101 + 16]), (*v16 + 8 * v103), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v103 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_2286931B4(v102);
        }

        if (v101 - 2 >= *(v102 + 2))
        {
          goto LABEL_115;
        }

        v104 = &v102[16 * v101];
        *v104 = a4;
        v104[1] = v103;
        v121 = v102;
        sub_228693128(v101 - 1);
        v100 = v121;
        v101 = *(v121 + 2);
        if (v101 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v117 = (v11 + 8);
  v15 = MEMORY[0x277D84F90];
  v110 = a4;
  v106 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v115 = v13;
      v108 = v15;
      v109 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v114 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21 = [v18 startDate];
      v22 = v118;
      sub_2286A087C();

      v23 = [v20 startDate];
      v24 = v119;
      sub_2286A087C();

      LODWORD(v116) = sub_2286A085C();
      v25 = *v117;
      v26 = v120;
      (*v117)(v24, v120);
      v25(v22, v26);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v107 = v16;
      v27 = (v16 + 2);
      while (1)
      {
        v14 = v115;
        if (v115 == v27)
        {
          break;
        }

        v28 = *(v5 - 8);
        v29 = *v5;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v30 = [v29 startDate];
        v31 = v118;
        sub_2286A087C();

        v32 = [v28 startDate];
        v33 = v119;
        sub_2286A087C();

        LODWORD(v32) = sub_2286A085C() & 1;
        v34 = v33;
        v35 = v120;
        v25(v34, v120);
        v25(v31, v35);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        ++v27;
        v5 += 8;
        if ((v116 & 1) != v32)
        {
          v14 = (v27 - 1);
          break;
        }
      }

      v15 = v108;
      v6 = v109;
      a4 = v110;
      v16 = v107;
      v36 = v114;
      if (v116)
      {
        if (v14 < v107)
        {
          goto LABEL_118;
        }

        a3 = v106;
        if (v107 < v14)
        {
          v37 = 8 * v14 - 8;
          v38 = v14;
          v39 = v107;
          do
          {
            if (v39 != --v38)
            {
              v41 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v40 = *(v41 + v36);
              *(v41 + v36) = *(v41 + v37);
              *(v41 + v37) = v40;
            }

            v39 = (v39 + 1);
            v37 -= 8;
            v36 += 8;
          }

          while (v39 < v38);
        }
      }

      else
      {
        a3 = v106;
      }
    }

    v42 = a3[1];
    if (v14 < v42)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v43 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v43 >= v42)
        {
          v43 = a3[1];
        }

        if (v43 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v43)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v56 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v56;
    }

    else
    {
      v15 = sub_22868FB54(0, *(v56 + 2) + 1, 1, v56);
    }

    a4 = *(v15 + 2);
    v57 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v57 >> 1)
    {
      v15 = sub_22868FB54((v57 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v58 = &v15[16 * a4];
    *(v58 + 4) = v16;
    *(v58 + 5) = v14;
    v59 = *v111;
    if (!*v111)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v60 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v61 = *(v15 + 4);
          v62 = *(v15 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_56:
          if (v64)
          {
            goto LABEL_105;
          }

          v77 = &v15[16 * v5];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_108;
          }

          v83 = &v15[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_112;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v87 = &v15[16 * v5];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_70:
        if (v82)
        {
          goto LABEL_107;
        }

        v90 = &v15[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_110;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v60 - 1;
        if (v60 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v98 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v60 + 40];
        sub_228692950((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v60 + 32]), (*a3 + 8 * v16), v59);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_2286931B4(v98);
        }

        if (a4 >= *(v98 + 2))
        {
          goto LABEL_102;
        }

        v99 = &v98[16 * a4];
        *(v99 + 4) = v5;
        *(v99 + 5) = v16;
        v121 = v98;
        a4 = &v121;
        sub_228693128(v60);
        v15 = v121;
        v5 = *(v121 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v15[16 * v5 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_103;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_104;
      }

      v72 = &v15[16 * v5];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_106;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_109;
      }

      if (v76 >= v68)
      {
        v94 = &v15[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_113;
        }

        if (v63 < v97)
        {
          v60 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v110;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v108 = v15;
  v109 = v6;
  v116 = *a3;
  v44 = v116 + 8 * v14 - 8;
  v107 = v16;
  a4 = v16 - v14;
  v112 = v43;
LABEL_29:
  v114 = v44;
  v115 = v14;
  v5 = *(v116 + 8 * v14);
  v113 = a4;
  v45 = v44;
  while (1)
  {
    v46 = *v45;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v47 = [v5 startDate];
    v48 = v118;
    sub_2286A087C();

    v49 = [v46 startDate];
    v50 = v119;
    sub_2286A087C();

    LOBYTE(v49) = sub_2286A085C();
    v51 = *v117;
    v52 = v50;
    v53 = v120;
    (*v117)(v52, v120);
    v51(v48, v53);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v49 & 1) == 0)
    {
LABEL_28:
      v14 = v115 + 1;
      v44 = v114 + 8;
      a4 = v113 - 1;
      if ((v115 + 1) != v112)
      {
        goto LABEL_29;
      }

      v14 = v112;
      v15 = v108;
      v6 = v109;
      a3 = v106;
      v16 = v107;
      goto LABEL_36;
    }

    if (!v116)
    {
      break;
    }

    v54 = *v45;
    v5 = *(v45 + 8);
    *v45 = v5;
    *(v45 + 8) = v54;
    v45 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

void sub_228692244(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_89:
    v7 = v9;
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v7 = sub_2286931B4(v7);
    }

    v92 = *(v7 + 16);
    if (v92 >= 2)
    {
      do
      {
        v93 = *v6;
        if (!*v6)
        {
          goto LABEL_125;
        }

        v6 = (v92 - 1);
        v94 = *(v7 + 16 * v92);
        v95 = *(v7 + 16 * (v92 - 1) + 40);
        sub_228692DE8((v93 + 16 * v94), (v93 + 16 * *(v7 + 16 * (v92 - 1) + 32)), (v93 + 16 * v95), v9);
        if (v5)
        {
          break;
        }

        if (v95 < v94)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2286931B4(v7);
        }

        if (v92 - 2 >= *(v7 + 16))
        {
          goto LABEL_115;
        }

        v96 = (v7 + 16 * v92);
        *v96 = v94;
        v96[1] = v95;
        sub_228693128(v92 - 1);
        v92 = *(v7 + 16);
        v6 = a3;
      }

      while (v92 > 1);
    }

LABEL_99:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    v102 = v10;
    if (v11 >= v7)
    {
      v7 = v11;
    }

    else
    {
      v98 = v9;
      v99 = v5;
      v12 = v10;
      v106 = 16 * v10;
      v13 = (*v6 + 16 * v10);
      v14 = *v13;
      v15 = *(*v6 + 16 * v11);

      v16 = v14;

      v112 = [v15 integerValue];
      v108 = [v16 integerValue];

      v17 = v12 + 2;
      v18 = v13 + 3;
      v110 = v7;
      while (v7 != v17)
      {
        v19 = v18 + 2;
        v20 = *(v18 - 1);
        v21 = v18[1];

        v22 = v20;

        v23 = [v21 integerValue];
        v24 = [v22 integerValue];

        ++v17;
        v18 = v19;
        v7 = v110;
        if (v112 < v108 == v23 >= v24)
        {
          v7 = v17 - 1;
          break;
        }
      }

      v25 = v106;
      v9 = v98;
      v5 = v99;
      v10 = v102;
      v6 = a3;
      if (v112 < v108)
      {
        if (v7 < v102)
        {
          goto LABEL_118;
        }

        if (v102 < v7)
        {
          v26 = 16 * v7 - 16;
          v27 = v7;
          v28 = v102;
          do
          {
            if (v28 != --v27)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v29 = *(v30 + v25);
              *(v30 + v25) = *(v30 + v26);
              *(v30 + v26) = v29;
            }

            ++v28;
            v26 -= 16;
            v25 += 16;
          }

          while (v28 < v27);
        }
      }
    }

    v31 = v6[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_117;
      }

      if (v7 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_119;
        }

        if (v10 + a4 >= v31)
        {
          v32 = v6[1];
        }

        else
        {
          v32 = v10 + a4;
        }

        if (v32 < v10)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v7 != v32)
        {
          break;
        }
      }
    }

    v33 = v7;
    if (v7 < v10)
    {
      goto LABEL_116;
    }

LABEL_29:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_22868FB54(0, *(v9 + 2) + 1, 1, v9);
    }

    v35 = *(v9 + 2);
    v34 = *(v9 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      v9 = sub_22868FB54((v34 > 1), v35 + 1, 1, v9);
    }

    *(v9 + 2) = v36;
    v37 = &v9[16 * v35];
    *(v37 + 4) = v102;
    *(v37 + 5) = v33;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v104 = v33;
    if (v35)
    {
      while (1)
      {
        v38 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v9 + 4);
          v40 = *(v9 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_48:
          if (v42)
          {
            goto LABEL_105;
          }

          v55 = &v9[16 * v36];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_108;
          }

          v61 = &v9[16 * v38 + 32];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_112;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v36 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v65 = &v9[16 * v36];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_62:
        if (v60)
        {
          goto LABEL_107;
        }

        v68 = &v9[16 * v38];
        v70 = *(v68 + 4);
        v69 = *(v68 + 5);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_69:
        v76 = v38 - 1;
        if (v38 - 1 >= v36)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*v6)
        {
          goto LABEL_123;
        }

        v77 = *&v9[16 * v76 + 32];
        v78 = *&v9[16 * v38 + 40];
        sub_228692DE8((*v6 + 16 * v77), (*v6 + 16 * *&v9[16 * v38 + 32]), (*v6 + 16 * v78), v7);
        if (v5)
        {
          goto LABEL_99;
        }

        if (v78 < v77)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2286931B4(v9);
        }

        if (v76 >= *(v9 + 2))
        {
          goto LABEL_102;
        }

        v79 = &v9[16 * v76];
        *(v79 + 4) = v77;
        *(v79 + 5) = v78;
        sub_228693128(v38);
        v36 = *(v9 + 2);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v43 = &v9[16 * v36 + 32];
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_103;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_104;
      }

      v50 = &v9[16 * v36];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_106;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_109;
      }

      if (v54 >= v46)
      {
        v72 = &v9[16 * v38 + 32];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v38 = v36 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v104;
    if (v104 >= v7)
    {
      goto LABEL_89;
    }
  }

  v100 = v5;
  v80 = *v6;
  v81 = *v6 + 16 * v7 - 16;
  v82 = v10 - v7;
  v105 = v32;
LABEL_80:
  v109 = v81;
  v111 = v7;
  v83 = *(v80 + 16 * v7);
  v107 = v82;
  v84 = v82;
  while (1)
  {
    v85 = *v81;
    v86 = v83;

    v87 = v85;

    v88 = [v86 integerValue];
    v89 = [v87 integerValue];

    if (v88 >= v89)
    {
LABEL_79:
      v7 = v111 + 1;
      v81 = v109 + 16;
      v33 = v105;
      v82 = v107 - 1;
      if (v111 + 1 != v105)
      {
        goto LABEL_80;
      }

      v5 = v100;
      v6 = a3;
      if (v105 < v102)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v80)
    {
      break;
    }

    v90 = *v81;
    v83 = *(v81 + 16);
    *v81 = v83;
    *(v81 + 16) = v90;
    v81 -= 16;
    if (__CFADD__(v84++, 1))
    {
      goto LABEL_79;
    }
  }

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
}

uint64_t sub_228692950(void **a1, void **a2, void **a3, void **a4)
{
  v51 = sub_2286A089C();
  v8 = *(v51 - 8);
  v9 = MEMORY[0x28223BE20](v51);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v45 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v52 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v54 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v52)
    {
      v46 = a4;
      v47 = (v8 + 8);
LABEL_27:
      v45 = a1;
      v29 = a1 - 1;
      v30 = (a3 - 1);
      v31 = v54;
      v48 = a1 - 1;
      do
      {
        v53 = v30;
        v32 = (v30 + 8);
        v33 = *--v31;
        v34 = *v29;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v35 = [v33 startDate];
        v36 = v49;
        sub_2286A087C();

        v37 = [v34 startDate];
        v38 = v50;
        sub_2286A087C();

        LOBYTE(v37) = sub_2286A085C();
        v39 = *v47;
        v40 = v38;
        v41 = v51;
        (*v47)(v40, v51);
        v39(v36, v41);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v37)
        {
          a4 = v46;
          a3 = v53;
          v43 = v48;
          if (v32 != v45)
          {
            *v53 = *v48;
          }

          if (v54 <= a4 || (a1 = v43, v43 <= v52))
          {
            a1 = v43;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v46;
        v42 = v53;
        if (v32 != v54)
        {
          *v53 = *v31;
        }

        v30 = v42 - 8;
        v54 = v31;
        v29 = v48;
      }

      while (v31 > a4);
      v54 = v31;
      a1 = v45;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v54 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v52 = a1;
        v17 = *a2;
        v18 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v19 = [v17 startDate];
        v20 = v49;
        sub_2286A087C();

        v21 = [v18 startDate];
        v22 = v50;
        sub_2286A087C();

        LOBYTE(v21) = sub_2286A085C();
        v23 = *v16;
        v24 = v22;
        v25 = v51;
        (*v16)(v24, v51);
        v23(v20, v25);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v21 & 1) == 0)
        {
          break;
        }

        v26 = a2;
        v27 = v52;
        v28 = v52 == a2++;
        if (!v28)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v27 + 1;
        if (a4 >= v54 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v26 = a4;
      v27 = v52;
      v28 = v52 == a4++;
      if (v28)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v27 = *v26;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v54 - a4 + (v54 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v54 - a4));
  }

  return 1;
}

uint64_t sub_228692DE8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v7 = __src - __dst;
  v8 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 4;
  v10 = a3 - __src;
  v11 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 4;
  if (v9 >= v11 >> 4)
  {
    if (a4 != __src || &__src[16 * v12] <= a4)
    {
      v22 = a4;
      memmove(a4, __src, 16 * v12);
      a4 = v22;
    }

    v38 = &a4[16 * v12];
    v13 = a4;
    if (v10 >= 16 && v5 > __dst)
    {
      v36 = a4;
LABEL_26:
      v37 = v5;
      v34 = v5 - 16;
      v23 = v4 - 16;
      v24 = v38;
      do
      {
        v25 = v23;
        v26 = v23 + 16;
        v27 = *(v24 - 2);
        v24 -= 16;
        v28 = *(v37 - 2);
        v29 = v27;

        v30 = v28;

        v31 = [v29 integerValue];
        v32 = [v30 integerValue];

        if (v31 < v32)
        {
          v4 = v25;
          if (v26 != v37)
          {
            *v25 = *v34;
          }

          v13 = v36;
          if (v38 <= v36 || (v5 = v34, v34 <= __dst))
          {
            v5 = v34;
            goto LABEL_38;
          }

          goto LABEL_26;
        }

        if (v26 != v38)
        {
          *v25 = *v24;
        }

        v23 = v25 - 16;
        v38 = v24;
        v13 = v36;
      }

      while (v24 > v36);
      v38 = v24;
      v5 = v37;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[16 * v9] <= a4)
    {
      memmove(a4, __dst, 16 * v9);
    }

    v38 = &v13[2 * v9];
    if (v7 < 16)
    {
      v5 = __dst;
    }

    else
    {
      v14 = __dst;
      if (v5 < v4)
      {
        while (1)
        {
          v15 = *v13;
          v16 = *v5;

          v17 = v15;

          v18 = [v16 integerValue];
          v19 = [v17 integerValue];

          if (v18 >= v19)
          {
            break;
          }

          v20 = v5;
          v21 = v14 == v5;
          v5 += 16;
          if (!v21)
          {
            goto LABEL_16;
          }

LABEL_17:
          v14 += 16;
          if (v13 >= v38 || v5 >= v4)
          {
            goto LABEL_19;
          }
        }

        v20 = v13;
        v21 = v14 == v13;
        v13 += 2;
        if (v21)
        {
          goto LABEL_17;
        }

LABEL_16:
        *v14 = *v20;
        goto LABEL_17;
      }

LABEL_19:
      v5 = v14;
    }
  }

LABEL_38:
  if (v5 != v13 || v5 >= v13 + ((v38 - v13 + (v38 - v13 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0))
  {
    memmove(v5, v13, 16 * ((v38 - v13) / 16));
  }

  return 1;
}

uint64_t sub_228693128(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2286931B4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_2286931C8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF78, &qword_2286B3F18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF68, &qword_2286B3F08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2286932FC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_2286A0BAC();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_22868FD64(v3, 0);
  sub_228693390((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_228693390(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2286A0BAC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2286A0BAC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_228696104();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EFB0, &qword_2286B3F38);
            v9 = sub_22869351C(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF00, &qword_2286B3ED8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_22869351C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AABB310](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_22869359C;
  }

  __break(1u);
  return result;
}

void *sub_2286935CC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 48) + v17);
      v19 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = v18;
      v11[1] = v19;
      if (v14 == v10)
      {
        v23 = v18;

        goto LABEL_23;
      }

      v11 += 2;
      v20 = v18;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_228693744(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EFE8, &qword_2286B3F50);
    v3 = sub_2286A0C2C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_228690418(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_228693848(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EFF0, &qword_2286B3F58);
    v3 = sub_2286A0C2C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_228690490(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_228693940(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF98, &qword_2286B3F28);
    v3 = sub_2286A0C2C();
    v4 = a1 + 32;

    while (1)
    {
      sub_228696168(v4, &v13, &qword_27D84EF20, &qword_2286B3EE8);
      v5 = v13;
      v6 = v14;
      result = sub_228690418(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_228696098(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_228693A70(void (*a1)(void, void, void), uint64_t a2)
{
  v229 = a1;
  v219 = 0;
  v4 = sub_2286A092C();
  *&v222 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v228 = (&v206 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v232 = &v206 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  i = (&v206 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v216 = &v206 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v206 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF60, &qword_2286B3F00);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v206 - v16;
  v18 = sub_2286A07EC();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v227 = &v206 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v215 = &v206 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v206 - v24;
  v26 = OBJC_IVAR___RankingManager_featureNameToBehavior;
  v27 = MEMORY[0x277D84F90];
  v28 = sub_228693744(MEMORY[0x277D84F90]);
  v234 = v26;
  *(v26 + v2) = v28;
  v29 = v229;
  v30 = v27;
  v31 = OBJC_IVAR___RankingManager_featureToConditionEvaluator;
  v233 = OBJC_IVAR___RankingManager_featureToConditionEvaluator;
  *&v2[v31] = sub_228693848(v30);
  v223 = OBJC_IVAR___RankingManager_relevanceEngine;
  *&v2[OBJC_IVAR___RankingManager_relevanceEngine] = v29;
  v218 = a2;
  v32 = v18;
  v33 = v19;
  sub_228696168(a2, v17, &qword_27D84EF60, &qword_2286B3F00);
  v34 = (*(v19 + 48))(v17, 1, v32);
  v231 = v2;
  v225 = v4;
  if (v34 == 1)
  {
    v35 = v29;
    sub_2286961D0(v17, &qword_27D84EF60, &qword_2286B3F00);
    v36 = sub_22868A460();
    v37 = v222;
    v229 = *(v222 + 16);
    v229(v14, v36, v4);
    v38 = sub_2286A090C();
    v39 = sub_2286A0A7C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22859F000, v38, v39, "Could not load ranking properties from provided URL", v40, 2u);
      MEMORY[0x22AABCAC0](v40, -1, -1);
    }

    v41 = v14;
    v42 = v4;
    v228 = *(v37 + 8);
    v228(v41, v4);
    goto LABEL_5;
  }

  (*(v19 + 32))(v25, v17, v32);
  sub_2286A07BC();
  swift_allocObject();
  v45 = v29;
  v46 = sub_2286A07AC();
  v47 = v219;
  v48 = sub_2286A07FC();
  if (!v47)
  {
    v53 = v48;
    v54 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EFD0, &qword_2286B3F48);
    sub_2286962C0();
    sub_2286A079C();
    v55 = v53;
    v42 = v225;
    v207 = v55;
    v208 = v54;
    v209 = v46;
    v213 = v25;
    v210 = v33;
    v211 = v32;
    v219 = 0;
    v212 = v237;
    v149 = v237[2];
    if (!v149)
    {
LABEL_70:

      v189 = sub_22868A460();
      v37 = v222;
      v190 = v216;
      v229 = *(v222 + 16);
      v229(v216, v189, v42);
      v191 = v210;
      v192 = v215;
      v193 = v213;
      v194 = v211;
      (*(v210 + 16))(v215, v213, v211);
      v195 = sub_2286A090C();
      v196 = sub_2286A0A5C();
      if (os_log_type_enabled(v195, v196))
      {
        v197 = swift_slowAlloc();
        v234 = swift_slowAlloc();
        v237 = v234;
        *v197 = 136315138;
        sub_228696278(&qword_27D84EFC8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v198 = sub_2286A0C9C();
        v199 = v192;
        v201 = v200;
        v202 = *(v191 + 8);
        v202(v199, v194);
        v203 = sub_22868FE70(v198, v201, &v237);

        *(v197 + 4) = v203;
        _os_log_impl(&dword_22859F000, v195, v196, "Initialized ranking properties from URL: %s", v197, 0xCu);
        v204 = v234;
        __swift_destroy_boxed_opaque_existential_1(v234);
        MEMORY[0x22AABCAC0](v204, -1, -1);
        MEMORY[0x22AABCAC0](v197, -1, -1);
        sub_228696398(v207, v208);

        v228 = *(v37 + 8);
        v228(v216, v225);
        v202(v213, v194);
      }

      else
      {
        sub_228696398(v207, v208);

        v205 = *(v191 + 8);
        v205(v192, v194);
        v228 = *(v37 + 8);
        v228(v190, v42);
        v205(v193, v194);
      }

LABEL_5:
      v43 = v231;
      v44 = v232;
      goto LABEL_11;
    }

    v221 = type metadata accessor for RankingBehavior();
    v220 = (v222 + 16);
    v217 = (v222 + 8);
    v150 = v212 + 8;
    *&v151 = 136315138;
    v214 = v151;
    while (1)
    {
      v227 = v149;
      v152 = *(v150 - 4);
      v153 = *(v150 - 3);
      v155 = *(v150 - 2);
      v154 = *(v150 - 1);
      v226 = v150;
      v156 = *v150;
      v237 = v152;
      v238 = v153;
      v239 = v155;
      v240 = v154;
      v241 = v156;
      sub_228687E50(v152, v153);
      v157 = sub_228688D30();
      v229 = v158;
      v236[0] = v152;
      v236[1] = v153;
      v236[2] = v155;
      v236[3] = v154;
      v236[4] = v156;
      v224 = v156;
      sub_228687E50(v152, v153);
      v228 = RankingBehavior.__allocating_init(properties:)(v236);
      v159 = v231;
      v160 = v234;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v235 = *(v160 + v159);
      v162 = v235;
      *(v160 + v159) = 0x8000000000000000;
      v163 = v157;
      v164 = v157;
      v165 = v229;
      v167 = sub_228690418(v164, v229);
      v168 = v162[2];
      v169 = (v166 & 1) == 0;
      v170 = v168 + v169;
      if (__OFADD__(v168, v169))
      {
        goto LABEL_77;
      }

      v171 = v166;
      if (v162[3] >= v170)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v174 = v235;
          if ((v166 & 1) == 0)
          {
            goto LABEL_66;
          }
        }

        else
        {
          sub_2286911F4();
          v174 = v235;
          if ((v171 & 1) == 0)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
        sub_228690C60(v170, isUniquelyReferenced_nonNull_native);
        v172 = sub_228690418(v163, v165);
        if ((v171 & 1) != (v173 & 1))
        {
          goto LABEL_80;
        }

        v167 = v172;
        v174 = v235;
        if ((v171 & 1) == 0)
        {
LABEL_66:
          v174[(v167 >> 6) + 8] |= 1 << v167;
          v175 = (v174[6] + 16 * v167);
          *v175 = v163;
          v175[1] = v165;
          *(v174[7] + 8 * v167) = v228;
          v176 = v174[2];
          v137 = __OFADD__(v176, 1);
          v177 = v176 + 1;
          if (v137)
          {
            goto LABEL_78;
          }

          v174[2] = v177;
          goto LABEL_68;
        }
      }

      *(v174[7] + 8 * v167) = v228;

LABEL_68:
      *(v234 + v231) = v174;
      swift_endAccess();
      v178 = sub_22868A460();
      v179 = i;
      v180 = v225;
      (*v220)(i, v178, v225);
      v181 = v224;
      sub_228687E50(v152, v153);
      v182 = sub_2286A090C();
      v183 = sub_2286A0A6C();
      sub_2286963EC(v152, v153);
      if (os_log_type_enabled(v182, v183))
      {
        v184 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        v236[0] = v185;
        *v184 = v214;
        v237 = v152;
        v238 = v153;
        v239 = v155;
        v240 = v154;
        v241 = v181;
        v186 = sub_2286A098C();
        v188 = sub_22868FE70(v186, v187, v236);

        *(v184 + 4) = v188;
        _os_log_impl(&dword_22859F000, v182, v183, "rankingProperties: %s", v184, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v185);
        MEMORY[0x22AABCAC0](v185, -1, -1);
        MEMORY[0x22AABCAC0](v184, -1, -1);

        (*v217)(i, v180);
      }

      else
      {
        sub_2286963EC(v152, v153);

        (*v217)(v179, v180);
      }

      v42 = v180;
      v150 = v226 + 5;
      v149 = v227 - 1;
      if (v227 == 1)
      {
        goto LABEL_70;
      }
    }
  }

  v50 = v25;

  v219 = 0;
  v51 = v225;
  v43 = v231;
  v44 = v232;
  v52 = v222;
  v56 = sub_22868A460();
  v229 = *(v52 + 16);
  v229(v228, v56, v51);
  v57 = v227;
  (*(v33 + 16))(v227, v50, v32);
  v58 = v47;
  v59 = sub_2286A090C();
  v60 = sub_2286A0A7C();

  if (!os_log_type_enabled(v59, v60))
  {

    v80 = *(v33 + 8);
    v80(v57, v32);
    v81 = v222;
    v82 = v228;
    v42 = v225;
    v228 = *(v222 + 8);
    v228(v82, v225);
    v80(v50, v32);
    v79 = v223;
    v37 = v81;
    goto LABEL_13;
  }

  v61 = swift_slowAlloc();
  i = swift_slowAlloc();
  v62 = swift_slowAlloc();
  v213 = v50;
  v63 = v62;
  v237 = v62;
  *v61 = 136315394;
  sub_228696278(&qword_27D84EFC8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v64 = sub_2286A0C9C();
  v66 = v65;
  v234 = *(v33 + 8);
  v67 = v57;
  v68 = v32;
  (v234)(v67, v32);
  v69 = sub_22868FE70(v64, v66, &v237);

  *(v61 + 4) = v69;
  *(v61 + 12) = 2112;
  v70 = v47;
  v71 = _swift_stdlib_bridgeErrorToNSError();
  *(v61 + 14) = v71;
  v72 = i;
  *i = v71;
  _os_log_impl(&dword_22859F000, v59, v60, "Error initializing ranking properties from URL: %s error: %@", v61, 0x16u);
  sub_2286961D0(v72, &qword_27D84EF28, &qword_2286B3EF0);
  v73 = v72;
  v37 = v222;
  v74 = v231;
  v75 = v232;
  MEMORY[0x22AABCAC0](v73, -1, -1);
  __swift_destroy_boxed_opaque_existential_1(v63);
  v76 = v63;
  v44 = v75;
  MEMORY[0x22AABCAC0](v76, -1, -1);
  v77 = v61;
  v43 = v74;
  MEMORY[0x22AABCAC0](v77, -1, -1);

  v78 = v228;
  v42 = v225;
  v228 = *(v37 + 8);
  v228(v78, v225);
  (v234)(v213, v68);
LABEL_11:
  v79 = v223;
LABEL_13:
  v83 = [*&v43[v79] configuration];
  v84 = [v83 featureToConditionMap];

  v85 = sub_228696230(0, &qword_281057DB0, off_2785F8AF8);
  v86 = sub_228696230(0, qword_281057DB8, off_2785F8900);
  sub_228695F80(&unk_281057DA0, &qword_281057DB0, off_2785F8AF8);
  v221 = v85;
  v220 = v86;
  v87 = sub_2286A094C();

  if ((v87 & 0xC000000000000001) != 0)
  {
    v89 = sub_2286A0B9C();
    v224 = 0;
    v90 = 0;
    v91 = 0;
    v87 = v89 | 0x8000000000000000;
  }

  else
  {
    v92 = -1 << *(v87 + 32);
    v93 = *(v87 + 64);
    v224 = v87 + 64;
    v90 = ~v92;
    v94 = -v92;
    if (v94 < 64)
    {
      v95 = ~(-1 << v94);
    }

    else
    {
      v95 = -1;
    }

    v91 = (v95 & v93);
  }

  v96 = 0;
  v217 = v90;
  v223 = (v90 + 64) >> 6;
  v227 = (v37 + 16);
  v226 = (v37 + 8);
  *&v88 = 138412546;
  v222 = v88;
  v97 = v42;
  for (i = v87; ; v87 = i)
  {
    v99 = v43;
    if ((v87 & 0x8000000000000000) == 0)
    {
      break;
    }

    v109 = sub_2286A0BCC();
    if (!v109 || (v111 = v110, v236[0] = v109, swift_dynamicCast(), v107 = v237, v236[0] = v111, swift_dynamicCast(), v108 = v237, v102 = v96, v103 = v91, !v107))
    {
LABEL_52:
      sub_228695FD0(i);
      v242.receiver = v99;
      v242.super_class = RankingManager;
      v147 = objc_msgSendSuper2(&v242, sel_init);
      sub_2286961D0(v218, &qword_27D84EF60, &qword_2286B3F00);
      return v147;
    }

LABEL_31:
    v234 = v103;
    v112 = sub_22868A460();
    v229(v44, v112, v97);
    v113 = v107;
    v114 = v108;
    v115 = sub_2286A090C();
    v116 = sub_2286A0A6C();

    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *v117 = v222;
      *(v117 + 4) = v113;
      *(v117 + 12) = 2112;
      *(v117 + 14) = v114;
      *v118 = v107;
      v118[1] = v108;
      v119 = v113;
      v120 = v114;
      _os_log_impl(&dword_22859F000, v115, v116, "featureToConditionEvaluator - featureName: %@, condition: %@", v117, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF28, &qword_2286B3EF0);
      swift_arrayDestroy();
      v121 = v225;
      MEMORY[0x22AABCAC0](v118, -1, -1);
      v122 = v117;
      v97 = v121;
      v99 = v231;
      v44 = v232;
      MEMORY[0x22AABCAC0](v122, -1, -1);
    }

    v228(v44, v97);
    v123 = objc_allocWithZone(REConditionEvaluator);
    v124 = v113;
    v125 = [v123 initWithCondition_];
    v126 = v233;
    v43 = v99;
    swift_beginAccess();
    if (v125)
    {
      v127 = *&v99[v126];
      if ((v127 & 0xC000000000000001) != 0)
      {
        if (v127 < 0)
        {
          v128 = *&v99[v126];
        }

        else
        {
          v128 = v127 & 0xFFFFFFFFFFFFFF8;
        }

        v129 = sub_2286A0BAC();
        if (__OFADD__(v129, 1))
        {
          goto LABEL_75;
        }

        v130 = v97;
        *&v99[v126] = sub_2286907AC(v128, v129 + 1);
      }

      else
      {
        v130 = v97;
      }

      v131 = swift_isUniquelyReferenced_nonNull_native();
      v236[0] = *&v99[v126];
      v132 = v236[0];
      *&v99[v126] = 0x8000000000000000;
      v133 = sub_228690490(v124);
      v135 = *(v132 + 16);
      v136 = (v134 & 1) == 0;
      v137 = __OFADD__(v135, v136);
      v138 = v135 + v136;
      if (v137)
      {
        goto LABEL_74;
      }

      v139 = v134;
      if (*(v132 + 24) >= v138)
      {
        if ((v131 & 1) == 0)
        {
          v146 = v133;
          sub_228691094();
          v133 = v146;
        }
      }

      else
      {
        sub_2286909F8(v138, v131);
        v133 = sub_228690490(v124);
        if ((v139 & 1) != (v140 & 1))
        {
          goto LABEL_79;
        }
      }

      v43 = v99;
      v97 = v130;
      v141 = v236[0];
      v44 = v232;
      if (v139)
      {
        v142 = *(v236[0] + 56);
        v143 = *(v142 + 8 * v133);
        *(v142 + 8 * v133) = v125;
      }

      else
      {
        *(v236[0] + 8 * (v133 >> 6) + 64) |= 1 << v133;
        *(v141[6] + 8 * v133) = v124;
        *(v141[7] + 8 * v133) = v125;
        v144 = v141[2];
        v137 = __OFADD__(v144, 1);
        v145 = v144 + 1;
        if (v137)
        {
          goto LABEL_76;
        }

        v141[2] = v145;
      }

      *&v99[v233] = v141;
    }

    else
    {
      v98 = sub_228690660(v124);
    }

    swift_endAccess();

    v96 = v102;
    v91 = v234;
  }

  v100 = v96;
  v101 = v91;
  v102 = v96;
  if (v91)
  {
LABEL_27:
    v103 = ((v101 - 1) & v101);
    v104 = (v102 << 9) | (8 * __clz(__rbit64(v101)));
    v105 = *(*(v87 + 48) + v104);
    v106 = *(*(v87 + 56) + v104);
    v107 = v105;
    v108 = v106;
    if (!v107)
    {
      goto LABEL_52;
    }

    goto LABEL_31;
  }

  while (1)
  {
    v102 = v100 + 1;
    if (__OFADD__(v100, 1))
    {
      break;
    }

    if (v102 >= v223)
    {
      goto LABEL_52;
    }

    v101 = *(v224 + 8 * v102);
    ++v100;
    if (v101)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  sub_2286A0CDC();
  __break(1u);
LABEL_80:
  result = sub_2286A0CDC();
  __break(1u);
  return result;
}

uint64_t sub_228694F1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228694F8C(void *a1, uint64_t a2, char *a3, char *a4, float a5, double a6)
{
  v124 = a3;
  v125 = a4;
  v126 = a1;
  v127 = sub_2286A089C();
  v9 = *(v127 - 8);
  v10 = MEMORY[0x28223BE20](v127);
  v12 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v123 = &v118 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v118 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v118 - v18;
  v20 = sub_2286A092C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v118 - v26;
  (*(*a2 + 120))(&v132, v25);
  v128 = v21;
  v129 = v20;
  if ((v132 & 0x8000000000000000) != 0)
  {
    v44 = v20;
    v45 = v132 & 0x7FFFFFFFFFFFFFFFLL;
    v46 = sub_22868A460();
    (*(v21 + 16))(v24, v46, v44);
    isa = v9[2].isa;
    v48 = v123;
    v49 = v127;
    isa(v123, v124, v127);
    isa(v12, v125, v49);
    v50 = v24;
    v51 = v126;

    v52 = sub_2286A090C();
    v53 = sub_2286A0A5C();

    LODWORD(v126) = v53;
    v54 = os_log_type_enabled(v52, v53);
    v55 = v48;
    if (v54)
    {
      v56 = v45;
      v124 = v12;
      v125 = v50;
      v121 = v9;
      v57 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v131 = v122;
      *v57 = 136316930;
      v58 = (*(*a2 + 96))();
      v60 = sub_22868FE70(v58, v59, &v131);

      *(v57 + 4) = v60;
      *(v57 + 12) = 2080;
      v61 = [v51 applicationBundleIdentifier];
      if (v61)
      {
        v62 = v55;
        v63 = v61;
        v64 = sub_2286A097C();
        v66 = v65;

        v55 = v62;
      }

      else
      {
        v64 = 0xD00000000000001ELL;
        v66 = 0x80000002286BB9C0;
      }

      v95 = sub_22868FE70(v64, v66, &v131);

      *(v57 + 14) = v95;
      *(v57 + 22) = 2080;
      v96 = [v51 identifier];
      v97 = sub_2286A097C();
      v99 = v98;

      v100 = sub_22868FE70(v97, v99, &v131);

      *(v57 + 24) = v100;
      *(v57 + 32) = 2080;
      (*(*v56 + 88))(&v130, v101);
      sub_228695FF0();
      v102 = sub_2286A0C9C();
      v104 = v103;

      v105 = sub_22868FE70(v102, v104, &v131);

      *(v57 + 34) = v105;
      *(v57 + 42) = 2080;
      sub_228696278(&qword_27D84EEF8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v106 = sub_2286A0C9C();
      v108 = v107;
      v109 = v55;
      v110 = v121[1].isa;
      (v110)(v109, v49);
      v111 = sub_22868FE70(v106, v108, &v131);

      *(v57 + 44) = v111;
      *(v57 + 52) = 2080;
      v112 = v124;
      v113 = sub_2286A0C9C();
      v115 = v114;
      (v110)(v112, v49);
      v116 = sub_22868FE70(v113, v115, &v131);

      *(v57 + 54) = v116;
      *(v57 + 62) = 2048;
      *(v57 + 64) = a6;
      *(v57 + 72) = 2048;
      *(v57 + 74) = a5;
      _os_log_impl(&dword_22859F000, v52, v126, "Feature: %s, Element: %s, Element ID: %s, Normal function params: %s, Created at: %s, Current date: %s, Relevant minutes: %f, Score: %f", v57, 0x52u);
      v117 = v122;
      swift_arrayDestroy();
      MEMORY[0x22AABCAC0](v117, -1, -1);
      MEMORY[0x22AABCAC0](v57, -1, -1);

      return (*(v128 + 8))(v125, v129);
    }

    else
    {

      v69 = v9[1].isa;
      v69(v12, v49);
      v69(v48, v49);
      return (*(v128 + 8))(v50, v129);
    }
  }

  else
  {
    v28 = v132;
    v29 = sub_22868A460();
    (*(v21 + 16))(v27, v29, v20);
    v30 = v127;
    v31 = v9[2].isa;
    v31(v19, v124, v127);
    v31(v17, v125, v30);
    v32 = v126;

    v33 = sub_2286A090C();
    LODWORD(v31) = sub_2286A0A5C();

    v125 = v32;

    LODWORD(v126) = v31;
    if (os_log_type_enabled(v33, v31))
    {
      v121 = v33;
      v122 = v19;
      v123 = v28;
      v124 = v27;
      v119 = v17;
      v34 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v131 = v120;
      *v34 = 136316930;
      v35 = (*(*a2 + 96))();
      v37 = sub_22868FE70(v35, v36, &v131);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      v38 = v125;
      v39 = [v125 applicationBundleIdentifier];
      if (v39)
      {
        v40 = v39;
        v41 = sub_2286A097C();
        v43 = v42;
      }

      else
      {
        v41 = 0xD00000000000001ELL;
        v43 = 0x80000002286BB9C0;
      }

      v70 = v9;
      v71 = sub_22868FE70(v41, v43, &v131);

      *(v34 + 14) = v71;
      *(v34 + 22) = 2080;
      v72 = [v38 identifier];
      v73 = sub_2286A097C();
      v75 = v74;

      v76 = sub_22868FE70(v73, v75, &v131);

      *(v34 + 24) = v76;
      *(v34 + 32) = 2080;
      (*(*v123 + 88))(&v130, v77);
      sub_228696044();
      v78 = sub_2286A0C9C();
      v80 = v79;

      v81 = sub_22868FE70(v78, v80, &v131);

      *(v34 + 34) = v81;
      *(v34 + 42) = 2080;
      sub_228696278(&qword_27D84EEF8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v82 = v122;
      v83 = sub_2286A0C9C();
      v85 = v84;
      v86 = v70[1].isa;
      v86(v82, v30);
      v87 = sub_22868FE70(v83, v85, &v131);

      *(v34 + 44) = v87;
      *(v34 + 52) = 2080;
      v88 = v119;
      v89 = sub_2286A0C9C();
      v91 = v90;
      v86(v88, v30);
      v92 = sub_22868FE70(v89, v91, &v131);

      *(v34 + 54) = v92;
      *(v34 + 62) = 2048;
      *(v34 + 64) = a6;
      *(v34 + 72) = 2048;
      *(v34 + 74) = a5;
      v93 = v121;
      _os_log_impl(&dword_22859F000, v121, v126, "Feature: %s, Element: %s, Element ID: %s, Linear function params: %s, Created at: %s, Current date: %s, Relevant minutes: %f, Score: %f", v34, 0x52u);
      v94 = v120;
      swift_arrayDestroy();
      MEMORY[0x22AABCAC0](v94, -1, -1);
      MEMORY[0x22AABCAC0](v34, -1, -1);

      return (*(v128 + 8))(v124, v129);
    }

    else
    {

      v67 = v9[1].isa;
      v67(v17, v30);
      v67(v19, v30);
      return (*(v128 + 8))(v27, v129);
    }
  }
}

uint64_t sub_228695A60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, double a6)
{
  v66 = a3;
  v67 = a4;
  v10 = sub_2286A089C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v60 - v15;
  v17 = sub_2286A092C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22868A460();
  (*(v18 + 16))(v20, v21, v17);
  v68 = v11;
  v22 = *(v11 + 16);
  v22(v16, v66, v10);
  v22(v14, v67, v10);
  v23 = a1;

  v24 = sub_2286A090C();
  v25 = sub_2286A0A8C();
  v67 = a2;

  v26 = v23;

  if (os_log_type_enabled(v24, v25))
  {
    v62 = v25;
    v60 = v10;
    v63 = v16;
    v64 = v24;
    v27 = v68;
    v65 = v20;
    v66 = v17;
    v28 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v69 = v61;
    *v28 = 136316674;
    v29 = [v26 identifier];
    v30 = sub_2286A097C();
    v32 = v31;

    v33 = sub_22868FE70(v30, v32, &v69);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v34 = [v26 applicationBundleIdentifier];
    if (v34)
    {
      v35 = v34;
      v36 = sub_2286A097C();
      v38 = v37;
    }

    else
    {
      v38 = 0x80000002286BB9C0;
      v36 = 0xD00000000000001ELL;
    }

    v41 = v18;
    v42 = v14;
    v43 = v63;
    v44 = v60;
    v45 = sub_22868FE70(v36, v38, &v69);

    *(v28 + 14) = v45;
    *(v28 + 22) = 2080;
    v46 = MEMORY[0x22AABB210](v67, MEMORY[0x277D837D0]);
    v48 = sub_22868FE70(v46, v47, &v69);

    *(v28 + 24) = v48;
    *(v28 + 32) = 2080;
    sub_228696278(&qword_27D84EEF8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v49 = sub_2286A0C9C();
    v51 = v50;
    v52 = *(v27 + 8);
    v52(v43, v44);
    v53 = sub_22868FE70(v49, v51, &v69);

    *(v28 + 34) = v53;
    *(v28 + 42) = 2080;
    v54 = sub_2286A0C9C();
    v56 = v55;
    v52(v42, v44);
    v57 = sub_22868FE70(v54, v56, &v69);

    *(v28 + 44) = v57;
    *(v28 + 52) = 2048;
    *(v28 + 54) = a6;
    *(v28 + 62) = 2048;
    *(v28 + 64) = a5;
    v58 = v64;
    _os_log_impl(&dword_22859F000, v64, v62, "Element ID: %s, Element: %s, Selected features: %s, Created at: %s, Current date: %s, Relevant minutes: %f, Final score: %f", v28, 0x48u);
    v59 = v61;
    swift_arrayDestroy();
    MEMORY[0x22AABCAC0](v59, -1, -1);
    MEMORY[0x22AABCAC0](v28, -1, -1);

    return (*(v41 + 8))(v65, v66);
  }

  else
  {

    v39 = *(v68 + 8);
    v39(v14, v10);
    v39(v16, v10);
    return (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_228695F80(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_228696230(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_228695FF0()
{
  result = qword_27D84EF88;
  if (!qword_27D84EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D84EF88);
  }

  return result;
}

unint64_t sub_228696044()
{
  result = qword_27D84EF90;
  if (!qword_27D84EF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D84EF90);
  }

  return result;
}

_OWORD *sub_228696098(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2286960A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_228696104()
{
  result = qword_27D84EFB8;
  if (!qword_27D84EFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D84EFB0, &qword_2286B3F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D84EFB8);
  }

  return result;
}

uint64_t sub_228696168(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2286961D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228696230(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_228696278(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2286962C0()
{
  result = qword_27D84EFD8;
  if (!qword_27D84EFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D84EFD0, &qword_2286B3F48);
    sub_228696344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D84EFD8);
  }

  return result;
}

unint64_t sub_228696344()
{
  result = qword_27D84EFE0;
  if (!qword_27D84EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D84EFE0);
  }

  return result;
}

uint64_t sub_228696398(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22869640C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228696494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_228696558(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_22869640C(a1, &v8 - v5);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x68))(v6);
}

id sub_228696688(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = *a3;
  swift_beginAccess();
  sub_22869640C(a1 + v8, v7);
  v9 = sub_2286A089C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_2286A083C();
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  return v12;
}

uint64_t sub_2286967D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_22869640C(v2 + v4, a2);
}

void sub_228696830(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  if (a3)
  {
    sub_2286A087C();
    v10 = sub_2286A089C();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_2286A089C();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = *a4;
  swift_beginAccess();
  v13 = a1;
  sub_228696494(v9, &a1[v12]);
  swift_endAccess();
}

uint64_t sub_22869697C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_228696494(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_228696A2C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_22869640C(a1, &v8 - v5);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x80))(v6);
}

id sub_228696B50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  v7 = OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_wakeupTime;
  v8 = sub_2286A089C();
  v9 = *(*(v8 - 8) + 56);
  v9(&v6[v7], 1, 1, v8);
  v10 = OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_bedtime;
  v9(&v6[OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_bedtime], 1, 1, v8);
  swift_beginAccess();
  sub_228696C98(a1, &v6[v7]);
  swift_endAccess();
  swift_beginAccess();
  sub_228696C98(a2, &v6[v10]);
  swift_endAccess();
  v13.receiver = v6;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_228696D08(a2);
  sub_228696D08(a1);
  return v11;
}

uint64_t sub_228696C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_228696D08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for RESleepScheduleEntry(uint64_t a1)
{
  result = qword_27D850928;
  if (!qword_27D850928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id RESleepScheduleEntry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RESleepScheduleEntry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RESleepScheduleEntry(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228697294(uint64_t a1)
{
  v2 = sub_2286A08DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84F088, &unk_2286B3FC0);
    v9 = sub_2286A0ADC();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_2286993D0(&qword_27D84F090, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_2286A095C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_2286993D0(&qword_27D84F098, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_2286A096C();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_2286975B4(char *a1, void *a2)
{
  v140 = a2;
  v137 = a1;
  v136 = sub_2286A092C();
  v131 = *(v136 - 8);
  v2 = MEMORY[0x28223BE20](v136);
  v124 = &v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v125 = &v105 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84F068, &qword_2286B3FB0);
  MEMORY[0x28223BE20](v5 - 8);
  v118 = &v105 - v6;
  v7 = sub_2286A08DC();
  v8 = *(v7 - 8);
  v9 = v8;
  MEMORY[0x28223BE20](v7);
  v135 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_2286A078C();
  v110 = *(v126 - 8);
  v11 = MEMORY[0x28223BE20](v126);
  v139 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v117 = &v105 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v122 = &v105 - v16;
  MEMORY[0x28223BE20](v15);
  v138 = &v105 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v108 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v119 = &v105 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v105 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v105 - v26;
  v28 = sub_2286A08AC();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_2286A08FC();
  v109 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v33 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 104))(v31, *MEMORY[0x277CC9830], v28);
  sub_2286A08BC();
  (*(v29 + 8))(v31, v28);
  v34 = sub_2286A089C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v37 = v35 + 56;
  v123 = v27;
  v36(v27, 1, 1, v34);
  v120 = v25;
  v107 = v34;
  v106 = v36;
  v105 = v37;
  v36(v25, 1, 1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84F070, &qword_2286B3FB8);
  v38 = *(v8 + 72);
  v39 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2286B3F60;
  v41 = v40 + v39;
  v42 = *(v9 + 104);
  v42(v41, *MEMORY[0x277CC9988], v7);
  v42(v41 + v38, *MEMORY[0x277CC9998], v7);
  v42(v41 + 2 * v38, *MEMORY[0x277CC9968], v7);
  sub_228697294(v40);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2286A08CC();

  v43 = v135;
  v42(v135, *MEMORY[0x277CC99B8], v7);
  v137 = v33;
  sub_2286A08EC();
  (*(v9 + 8))(v43, v7);
  HKSPDayForNSGregorianCalendarDay();
  v44 = HKSPWeekdaysFromDay();
  v45 = [v140 occurrences];
  sub_228699384();
  v46 = sub_2286A09FC();

  if (v46 >> 62)
  {
LABEL_25:
    v48 = sub_2286A0BAC();
  }

  else
  {
    v48 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = v126;
  v50 = v122;
  if (v48)
  {
    if (v48 >= 1)
    {
      v51 = 0;
      v52 = v46 & 0xC000000000000001;
      v116 = (v110 + 16);
      v134 = (v109 + 56);
      v135 = (v109 + 16);
      v132 = (v131 + 2);
      v133 = (v110 + 8);
      ++v131;
      v53 = &_OBJC_LABEL_PROTOCOL___REBluetoothDeviceRelevanceProviderManagerProperties;
      *&v47 = 136315138;
      v111 = v47;
      v115 = v44;
      v114 = v46;
      v113 = v48;
      v112 = v46 & 0xC000000000000001;
      while (1)
      {
        if (v52)
        {
          v54 = MEMORY[0x22AABB310](v51, v46);
        }

        else
        {
          v54 = *(v46 + 8 * v51 + 32);
        }

        v55 = v54;
        if ((v44 & ~[v54 v53[70]]) != 0)
        {
        }

        else
        {
          v127 = v51;
          v140 = v55;
          v130 = *v116;
          (v130)(v50, v138, v49);
          v129 = *v135;
          v56 = v118;
          v57 = v121;
          v129(v118, v137, v121);
          v128 = *v134;
          v128(v56, 0, 1, v57);
          swift_beginAccess();
          sub_2286A077C();
          swift_endAccess();
          v58 = [v140 wakeUpComponents];
          v59 = v117;
          sub_2286A06FC();

          sub_2286A073C();
          v60 = *v133;
          (*v133)(v59, v49);
          swift_beginAccess();
          sub_2286A074C();
          swift_endAccess();
          v61 = [v140 wakeUpComponents];
          sub_2286A06FC();

          sub_2286A075C();
          v60(v59, v49);
          swift_beginAccess();
          sub_2286A076C();
          swift_endAccess();
          v46 = v139;
          (v130)(v139, v138, v49);
          v62 = v140;
          v129(v56, v137, v57);
          v128(v56, 0, 1, v57);
          swift_beginAccess();
          v63 = v136;
          sub_2286A077C();
          swift_endAccess();
          v64 = [v62 bedtimeComponents];
          sub_2286A06FC();

          sub_2286A073C();
          v60(v59, v49);
          swift_beginAccess();
          sub_2286A074C();
          swift_endAccess();
          v65 = [v62 bedtimeComponents];
          sub_2286A06FC();

          sub_2286A075C();
          v130 = v60;
          v60(v59, v49);
          swift_beginAccess();
          sub_2286A076C();
          swift_endAccess();
          swift_beginAccess();
          v66 = sub_2286A070C();
          v44 = v67;
          swift_endAccess();
          v68 = v125;
          if ((v44 & 1) == 0 && [v62 crossesDayBoundary])
          {
            if (__OFSUB__(v66, 1))
            {
              __break(1u);
              goto LABEL_25;
            }

            swift_beginAccess();
            sub_2286A071C();
            swift_endAccess();
          }

          v69 = sub_22868A370();
          v70 = *v132;
          (*v132)(v68, v69, v63);
          v71 = sub_2286A090C();
          v72 = sub_2286A0A8C();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v142 = v74;
            *v73 = v111;
            sub_2286993D0(&qword_27D84F080, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
            v75 = sub_2286A0C9C();
            v77 = sub_22868FE70(v75, v76, &v142);

            *(v73 + 4) = v77;
            v63 = v136;
            _os_log_impl(&dword_22859F000, v71, v72, "The bedtime(startDate) is %s", v73, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v74);
            MEMORY[0x22AABCAC0](v74, -1, -1);
            MEMORY[0x22AABCAC0](v73, -1, -1);

            v78 = *v131;
            (*v131)(v125, v63);
          }

          else
          {

            v78 = *v131;
            (*v131)(v68, v63);
          }

          v79 = v124;
          v50 = v122;
          v51 = v127;
          v70(v124, v69, v63);
          v80 = sub_2286A090C();
          v81 = sub_2286A0A8C();
          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            v142 = v83;
            *v82 = v111;
            sub_2286993D0(&qword_27D84F080, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
            v84 = v126;
            v85 = sub_2286A0C9C();
            v87 = sub_22868FE70(v85, v86, &v142);

            *(v82 + 4) = v87;
            v88 = v136;
            _os_log_impl(&dword_22859F000, v80, v81, "The wakeup(endDate) time is %s", v82, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v83);
            MEMORY[0x22AABCAC0](v83, -1, -1);
            MEMORY[0x22AABCAC0](v82, -1, -1);

            v78(v124, v88);
            v49 = v84;
          }

          else
          {

            v78(v79, v63);
            v49 = v126;
          }

          v52 = v112;
          v53 = &_OBJC_LABEL_PROTOCOL___REBluetoothDeviceRelevanceProviderManagerProperties;
          v89 = v140;
          v90 = v119;
          sub_2286A072C();
          v91 = v123;
          sub_228696D08(v123);
          sub_228694F1C(v90, v91);
          v92 = v139;
          sub_2286A072C();

          v93 = v120;
          sub_228696D08(v120);
          sub_228694F1C(v90, v93);
          v94 = v92;
          v95 = v130;
          v130(v94, v49);
          v95(v50, v49);
          v44 = v115;
          v46 = v114;
          v48 = v113;
        }

        if (v48 == ++v51)
        {
          goto LABEL_23;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    v96 = v119;
    sub_22869640C(v123, v119);
    v97 = v120;
    v98 = v108;
    sub_22869640C(v120, v108);
    v99 = type metadata accessor for RESleepScheduleEntry(0);
    v100 = objc_allocWithZone(v99);
    v101 = OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_wakeupTime;
    v102 = v107;
    v103 = v106;
    v106(&v100[OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_wakeupTime], 1, 1, v107);
    v104 = OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_bedtime;
    v103(&v100[OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_bedtime], 1, 1, v102);
    swift_beginAccess();
    sub_228696C98(v96, &v100[v101]);
    swift_endAccess();
    swift_beginAccess();
    sub_228696C98(v98, &v100[v104]);
    swift_endAccess();
    v141.receiver = v100;
    v141.super_class = v99;
    objc_msgSendSuper2(&v141, sel_init);
    sub_228696D08(v98);
    sub_228696D08(v96);
    (*(v110 + 8))(v138, v126);
    sub_228696D08(v97);
    sub_228696D08(v123);
    (*(v109 + 8))(v137, v121);
  }
}

id _s15RelevanceEngine20RESleepScheduleEntryC05sleepE8ForDates7current4next8scheduleAC10Foundation4DateV_AJSo09HKSPSleepD0CtFZ_0(char *a1, char *a2, void *a3)
{
  v107 = a3;
  v91 = a2;
  v94 = a1;
  v3 = sub_2286A089C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v90 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v103 = &v84 - v8;
  MEMORY[0x28223BE20](v7);
  v95 = &v84 - v9;
  v10 = sub_2286A092C();
  v100 = *(v10 - 8);
  v101 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v97 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v89 = &v84 - v14;
  MEMORY[0x28223BE20](v13);
  v99 = &v84 - v15;
  v16 = sub_2286A08AC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2286A08FC();
  v105 = *(v20 - 8);
  v106 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v92 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v84 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v96 = &v84 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v102 = &v84 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v84 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v84 - v36;
  v93 = v4;
  v38 = *(v4 + 56);
  v38(&v84 - v36, 1, 1, v3);
  v98 = v3;
  v38(v35, 1, 1, v3);
  (*(v17 + 104))(v19, *MEMORY[0x277CC9830], v16);
  v104 = v22;
  sub_2286A08BC();
  (*(v17 + 8))(v19, v16);
  if ([v107 isEnabled])
  {
    v88 = v37;
    v92 = v35;
    v39 = sub_22868A370();
    v40 = *(v100 + 16);
    v85 = v39;
    v87 = v100 + 16;
    v86 = v40;
    (v40)(v99);
    v41 = v93;
    v42 = v94;
    v43 = *(v93 + 16);
    v44 = v95;
    v45 = v98;
    v43(v95, v94, v98);
    v46 = sub_2286A090C();
    v47 = sub_2286A0A8C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v84 = v43;
      v50 = v49;
      v109[0] = v49;
      *v48 = 136315138;
      sub_2286993D0(&qword_27D84EEF8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v51 = sub_2286A0C9C();
      v52 = v44;
      v53 = v45;
      v55 = v54;
      v95 = *(v41 + 8);
      (v95)(v52, v53);
      v56 = sub_22868FE70(v51, v55, v109);
      v45 = v53;

      *(v48 + 4) = v56;
      _os_log_impl(&dword_22859F000, v46, v47, "Obtaining the schedule for %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      v57 = v50;
      v43 = v84;
      MEMORY[0x22AABCAC0](v57, -1, -1);
      MEMORY[0x22AABCAC0](v48, -1, -1);
    }

    else
    {

      v95 = *(v41 + 8);
      (v95)(v44, v45);
    }

    v64 = v99;
    v65 = v101;
    v99 = *(v100 + 8);
    (v99)(v64, v101);
    v66 = v88;
    v43(v103, v42, v45);
    sub_2286975B4(v42, v107);
    v63 = v67;
    v68 = v102;
    (*((*MEMORY[0x277D85000] & *v67) + 0x60))();
    v69 = v68;
    v70 = v96;
    sub_22869640C(v69, v96);
    if ((*(v41 + 48))(v70, 1, v45) == 1)
    {
      sub_228696D08(v70);
      v37 = v66;
      v71 = v65;
    }

    else
    {
      v72 = v90;
      (*(v41 + 32))(v90, v70, v45);
      v71 = v65;
      if (sub_2286A085C())
      {
        v73 = v89;
        v86(v89, v85, v71);
        v74 = sub_2286A090C();
        v75 = sub_2286A0A8C();
        v37 = v66;
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&dword_22859F000, v74, v75, "Gettng the bedtime for currentDate", v76, 2u);
          MEMORY[0x22AABCAC0](v76, -1, -1);
        }

        (v99)(v73, v71);
        v82 = v95;
        (v95)(v90, v45);
        sub_228696D08(v102);
        v82(v103, v45);
        goto LABEL_16;
      }

      (v95)(v72, v45);
      v37 = v66;
    }

    v86(v97, v85, v71);
    v77 = sub_2286A090C();
    v78 = sub_2286A0A8C();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_22859F000, v77, v78, "Now is after currentDate's wakeupTime. gettng the bedtime for nextOccurrence", v79, 2u);
      MEMORY[0x22AABCAC0](v79, -1, -1);
    }

    (v99)(v97, v71);
    sub_2286975B4(v91, v107);
    v81 = v80;

    sub_228696D08(v102);
    (v95)(v103, v45);
    v63 = v81;
LABEL_16:
    v35 = v92;
    goto LABEL_17;
  }

  sub_22869640C(v37, v28);
  v58 = v92;
  sub_22869640C(v35, v92);
  v107 = type metadata accessor for RESleepScheduleEntry(0);
  v59 = objc_allocWithZone(v107);
  v60 = OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_wakeupTime;
  v61 = v98;
  v38(&v59[OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_wakeupTime], 1, 1, v98);
  v62 = OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_bedtime;
  v38(&v59[OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_bedtime], 1, 1, v61);
  swift_beginAccess();
  sub_228696C98(v28, &v59[v60]);
  swift_endAccess();
  swift_beginAccess();
  sub_228696C98(v58, &v59[v62]);
  swift_endAccess();
  v108.receiver = v59;
  v108.super_class = v107;
  v63 = objc_msgSendSuper2(&v108, sel_init);
  sub_228696D08(v58);
  sub_228696D08(v28);
LABEL_17:
  (*(v105 + 8))(v104, v106);
  sub_228696D08(v35);
  sub_228696D08(v37);
  return v63;
}

void sub_22869914C(uint64_t a1)
{
  sub_22869932C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22869932C(uint64_t a1)
{
  if (!qword_27D84F060)
  {
    sub_2286A089C();
    v1 = sub_2286A0ABC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D84F060);
    }
  }
}

unint64_t sub_228699384()
{
  result = qword_27D84F078;
  if (!qword_27D84F078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D84F078);
  }

  return result;
}

uint64_t sub_2286993D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void REStoreLogFileForTask_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_22859F000, log, OS_LOG_TYPE_ERROR, "Unable to store logs for task %@ %@", &v3, 0x16u);
}

void __REProcessIsRelevanced_block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "Unable to get process identifier: %@", &v3, 0xCu);
}

void RERaiseInternalException_cold_1(void *a1)
{
  LODWORD(v7) = 136315138;
  *(&v7 + 4) = [a1 UTF8String];
  OUTLINED_FUNCTION_6(&dword_22859F000, v1, v2, "Internal exception: %s", v3, v4, v5, v6, v7, DWORD2(v7));
}

void _REGenerateSimulatedCrash_cold_1(void *a1)
{
  LODWORD(v7) = 136315138;
  *(&v7 + 4) = [a1 UTF8String];
  OUTLINED_FUNCTION_6(&dword_22859F000, v1, v2, "Simulated exception: %s", v3, v4, v5, v6, v7, DWORD2(v7));
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7928]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}