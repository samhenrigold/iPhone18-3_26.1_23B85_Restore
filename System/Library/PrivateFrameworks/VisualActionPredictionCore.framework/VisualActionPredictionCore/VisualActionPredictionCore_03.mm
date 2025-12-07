uint64_t sub_2262F91CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a7(v11);
}

double sub_2262F929C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v151 = a6;
  v147 = a5;
  v173 = a3;
  v174 = a4;
  v188 = a2;
  v150 = a7;
  v8 = sub_22635004C();
  v181 = *(v8 - 8);
  v182 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v159 = &v141 - v13;
  MEMORY[0x28223BE20](v12);
  v144 = &v141 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793720, &qword_226353FA8);
  MEMORY[0x28223BE20](v15 - 8);
  v146 = &v141 - v16;
  v172 = sub_22635028C();
  v168 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v145 = (&v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v153 = sub_2263500DC();
  v149 = *(v153 - 8);
  v18 = MEMORY[0x28223BE20](v153);
  v148 = &v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v152 = &v141 - v20;
  v171 = sub_22635022C();
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v169 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_22635017C();
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v165 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793728, &qword_226353FB0);
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v160 = (&v141 - v23);
  v157 = sub_22635005C();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v155 = (&v141 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v178 = sub_22635014C();
  v176 = *(v178 - 8);
  v25 = MEMORY[0x28223BE20](v178);
  v154 = &v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v158 = &v141 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v175 = &v141 - v30;
  MEMORY[0x28223BE20](v29);
  v164 = &v141 - v31;
  v187 = sub_22634EF3C();
  v189 = *(v187 - 8);
  v32 = MEMORY[0x28223BE20](v187);
  v163 = &v141 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  *&v185 = &v141 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793730, &qword_226353FB8);
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = (&v141 - v37);
  v39 = sub_22635031C();
  KeyPath = *(v39 - 8);
  v184 = v39;
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v141 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v44 = &v141 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793738, &qword_226353FC0);
  MEMORY[0x28223BE20](v45 - 8);
  v190 = &v141 - v46;
  v47 = sub_2263502BC();
  v179 = *(v47 - 8);
  v180 = v47;
  MEMORY[0x28223BE20](v47);
  v177 = &v141 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2262F6B70();
  if (v49)
  {
    v50 = v49;
    sub_22635030C();
    swift_getKeyPath();
    v51 = swift_allocObject();
    v143 = a1;
    *(v51 + 16) = a1;
    *(v51 + 24) = v188;
    *v38 = v51;
    v52 = *(v36 + 104);
    v142 = *MEMORY[0x277D721C8];
    v52(v38);
    sub_2262FB1F4(&qword_27D793748, MEMORY[0x277D73330], MEMORY[0x277D73328]);
    sub_2262FAE80(&qword_27D793750, &qword_27D793730, &qword_226353FB8);

    sub_22635021C();

    (*(v36 + 8))(v38, v35);
    v53 = v184;
    v54 = *(KeyPath + 8);
    v54(v42, v184);
    v55 = v185;
    sub_22634EF1C();
    v56 = v186;
    sub_2263501BC();
    if (v56)
    {

      (*(v189 + 1))(v55, v187);
      v54(v44, v53);
    }

    else
    {
      v62 = v189 + 8;
      v63 = *(v189 + 1);
      v63(v55, v187);
      v54(v44, v53);
      v64 = v179;
      v65 = v180;
      if ((*(v179 + 48))(v190, 1, v180) == 1)
      {
        sub_2262D67D8(v190, &qword_27D793738, &qword_226353FC0);
        v66 = v159;
        sub_22634FFDC();
        v67 = sub_22635003C();
        v68 = sub_22635073C();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&dword_2262B6000, v67, v68, "No container found for bundle id", v69, 2u);
          MEMORY[0x22AA7D570](v69, -1, -1);
        }

        (*(v181 + 8))(v66, v182);
        sub_2262FAB0C();
        swift_allocError();
        *v70 = 1;
        swift_willThrow();
      }

      else
      {
        v184 = v63;
        v189 = v62;
        (*(v64 + 32))(v177, v190, v65);
        v71 = v154;
        sub_22635013C();
        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793758, &qword_226354028);
        v72 = sub_22635007C();
        v73 = *(v72 - 8);
        v74 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v75 = swift_allocObject();
        v185 = xmmword_226351C90;
        *(v75 + 16) = xmmword_226351C90;
        (*(v73 + 104))(v75 + v74, *MEMORY[0x277D720D8], v72);
        v76 = sub_2262FAB60(v75);
        v141 = v50;
        v77 = v76;
        swift_setDeallocating();
        (*(v73 + 8))(v75 + v74, v72);
        swift_deallocClassInstance();
        v78 = v155;
        *v155 = v77;
        v79 = v156;
        v80 = v157;
        (*(v156 + 104))(v78, *MEMORY[0x277D720A8], v157);
        v190 = sub_2262FB1F4(&qword_27D793760, MEMORY[0x277D724B8], MEMORY[0x277D724A0]);
        sub_2262FB1F4(&qword_27D793768, MEMORY[0x277D720C0], MEMORY[0x277D720B8]);
        v81 = v158;
        sub_22635021C();

        (*(v79 + 8))(v78, v80);
        v82 = v176 + 8;
        v83 = *(v176 + 8);
        v83(v71, v178);
        v186 = v83;
        swift_getKeyPath();
        v84 = v180;
        v85 = swift_allocBox();
        (*(v179 + 16))(v86, v177, v84);
        v87 = v160;
        *v160 = v85;
        v88 = v161;
        v89 = v162;
        (v161[13])(v87, v142, v162);
        sub_2262FAE80(&qword_27D793770, &qword_27D793728, &qword_226353FB0);
        sub_22635021C();

        v88[1](v87, v89);
        v83(v81, v178);
        KeyPath = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793778, &qword_226354090);
        v90 = v168;
        v91 = (*(v168 + 80) + 32) & ~*(v168 + 80);
        v92 = swift_allocObject();
        *(v92 + 16) = v185;
        v93 = swift_allocObject();
        v94 = v188;
        v93[2] = v143;
        v93[3] = v94;
        v95 = v174;
        v93[4] = v173;
        v93[5] = v95;
        *(v92 + v91) = v93;
        v96 = *(v90 + 104);
        LODWORD(v162) = *MEMORY[0x277D72D28];
        v97 = v172;
        v161 = v96;
        (v96)(v92 + v91);

        v98 = sub_2262FAED4(v92);
        swift_setDeallocating();
        (*(v90 + 8))(v92 + v91, v97);
        swift_deallocClassInstance();
        v99 = v165;
        MEMORY[0x22AA7C220](v98);

        sub_2262FB1F4(&qword_27D793780, MEMORY[0x277D724E8], MEMORY[0x277D724E0]);
        v100 = v164;
        v101 = v175;
        sub_22635021C();

        (*(v166 + 8))(v99, v167);
        v176 = v82;
        v186(v101, v178);
        v102 = v163;
        sub_22634EF1C();
        v103 = v170;
        v104 = v169;
        v105 = v171;
        (*(v170 + 104))(v169, *MEMORY[0x277D72858], v171);
        v106 = sub_2263501AC();
        v190 = v90 + 104;
        v107 = v106;
        (*(v103 + 8))(v104, v105);
        v184(v102, v187);
        v186(v100, v178);
        if (*(v107 + 16))
        {
          v108 = v149;
          v109 = v148;
          v110 = v153;
          (*(v149 + 16))(v148, v107 + ((*(v108 + 80) + 32) & ~*(v108 + 80)), v153);

          v111 = *(v108 + 32);
          v111(v152, v109, v110);
          v112 = sub_2262FE430(MEMORY[0x277D84F90]);
          if (v151)
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793788, &qword_226354098);
            v113 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793790, &qword_2263540A0) - 8);
            v114 = (*(*v113 + 80) + 32) & ~*(*v113 + 80);
            v115 = swift_allocObject();
            v189 = v111;
            v116 = v115;
            *(v115 + 16) = v185;
            v117 = (v115 + v114);
            v187 = v113[14];
            *v117 = 0x746567726174;
            *(v117 + 1) = 0xE600000000000000;
            sub_22635024C();
            v186 = swift_allocBox();
            *&v185 = v118;
            v119 = swift_allocObject();
            v120 = v143;
            v121 = v188;
            v119[2] = v143;
            v119[3] = v121;
            v122 = v172;
            v123 = v174;
            v119[4] = v173;
            v119[5] = v123;
            v124 = v145;
            *v145 = v119;
            (v161)(v124, v162, v122);
            v125 = sub_2263502CC();
            (*(*(v125 - 8) + 56))(v146, 1, 1, v125);

            sub_22635023C();
            v126 = v187;
            *&v117[v187] = v186;
            v127 = *MEMORY[0x277D729F8];
            v128 = sub_22635027C();
            (*(*(v128 - 8) + 104))(&v117[v126], v127, v128);
            v112 = sub_2262FE430(v116);
            swift_setDeallocating();
            sub_2262D67D8(v117, &qword_27D793790, &qword_2263540A0);
            v111 = v189;
            swift_deallocClassInstance();

            (*(v179 + 8))(v177, v180);
          }

          else
          {
            (*(v179 + 8))(v177, v180);

            v121 = v188;
            v120 = v143;
          }

          v134 = type metadata accessor for VisualAction(0);
          v135 = v150;
          v136 = v150 + v134[5];
          v111(v136, v152, v153);
          v137 = *(type metadata accessor for VisualAction.Kind.SystemTool(0) + 20);
          v138 = *MEMORY[0x277D72120];
          v139 = sub_2263500AC();
          (*(*(v139 - 8) + 104))(&v136[v137], v138, v139);
          type metadata accessor for VisualAction.Kind(0);
          swift_storeEnumTagMultiPayload();
          *v135 = v120;
          v135[1] = v121;
          *(v135 + v134[6]) = v112;
          v140 = MEMORY[0x277D84F98];
          *(v135 + v134[7]) = MEMORY[0x277D84F98];
          *(v135 + v134[8]) = v140;
        }

        else
        {

          v129 = v144;
          sub_22634FFDC();
          v130 = sub_22635003C();
          v131 = sub_22635073C();
          if (os_log_type_enabled(v130, v131))
          {
            v132 = swift_slowAlloc();
            *v132 = 0;
            _os_log_impl(&dword_2262B6000, v130, v131, "No open actions found", v132, 2u);
            MEMORY[0x22AA7D570](v132, -1, -1);
          }

          (*(v181 + 8))(v129, v182);
          sub_2262FAB0C();
          swift_allocError();
          *v133 = 2;
          swift_willThrow();

          (*(v179 + 8))(v177, v180);
        }
      }
    }
  }

  else
  {
    sub_22634FFDC();
    v58 = sub_22635003C();
    v59 = sub_22635073C();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_2262B6000, v58, v59, "No tool database", v60, 2u);
      MEMORY[0x22AA7D570](v60, -1, -1);
    }

    (*(v181 + 8))(v11, v182);
    sub_2262FAB0C();
    swift_allocError();
    *v61 = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_2262FA9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_2262FAAB0()
{
  sub_2262FB3EC(*(v0 + 112));
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

unint64_t sub_2262FAB0C()
{
  result = qword_27D793740;
  if (!qword_27D793740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793740);
  }

  return result;
}

uint64_t sub_2262FAB60(uint64_t a1)
{
  v2 = sub_22635007C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7937B0, &qword_2263540B0);
    v9 = sub_22635094C();
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
      sub_2262FB1F4(&qword_27D7937B8, MEMORY[0x277D72108], MEMORY[0x277D72110]);
      v16 = sub_22635040C();
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
          sub_2262FB1F4(&qword_27D7937C0, MEMORY[0x277D72108], MEMORY[0x277D72118]);
          v23 = sub_22635044C();
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

uint64_t sub_2262FAE80(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2262FAED4(uint64_t a1)
{
  v2 = sub_22635028C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793798, &qword_2263540A8);
    v9 = sub_22635094C();
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
      sub_2262FB1F4(&qword_27D7937A0, MEMORY[0x277D72D58], MEMORY[0x277D72D68]);
      v16 = sub_22635040C();
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
          sub_2262FB1F4(&qword_27D7937A8, MEMORY[0x277D72D58], MEMORY[0x277D72D70]);
          v23 = sub_22635044C();
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

uint64_t sub_2262FB1F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2262FB23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2262D641C;

  return sub_2262F7330(a1, a2, a3, v9, v8);
}

uint64_t sub_2262FB300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7937D8, &qword_2263540D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2262FB3D4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2262FB3EC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_2262FB3FC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_2262FB40C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2262FB47C()
{
  result = qword_27D7937F8;
  if (!qword_27D7937F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7937F8);
  }

  return result;
}

uint64_t sub_2262FB4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2262D66FC(a3, v25 - v10, &qword_27D7939E0, &qword_2263548B0);
  v12 = sub_22635064C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2262D67D8(v11, &qword_27D7939E0, &qword_2263548B0);
  }

  else
  {
    sub_22635063C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2263505BC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2263504DC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2262D67D8(a3, &qword_27D7939E0, &qword_2263548B0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2262D67D8(a3, &qword_27D7939E0, &qword_2263548B0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2262FB7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2262D66FC(a3, v25 - v10, &qword_27D7939E0, &qword_2263548B0);
  v12 = sub_22635064C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2262D67D8(v11, &qword_27D7939E0, &qword_2263548B0);
  }

  else
  {
    sub_22635063C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2263505BC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2263504DC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2262D67D8(a3, &qword_27D7939E0, &qword_2263548B0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2262D67D8(a3, &qword_27D7939E0, &qword_2263548B0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2262FBACC()
{

  v1 = OBJC_IVAR____TtC26VisualActionPredictionCore24SystemToolActionExecutor_featureConfiguration;
  v2 = sub_22634FCDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for SystemToolActionExecutor(uint64_t a1)
{
  result = qword_28137FA10;
  if (!qword_28137FA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2262FBBB0(uint64_t a1)
{
  result = sub_22634FCDC();
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

uint64_t sub_2262FBC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = sub_22635007C();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_2263502EC();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v8 = sub_2263500AC();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = type metadata accessor for VisualAction.Kind(0);
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262FBE0C, v4, 0);
}

uint64_t sub_2262FBE0C()
{
  v1 = v0[21];
  v2 = v0[7];
  v3 = type metadata accessor for VisualAction(0);
  sub_2262FDAD0(v2 + *(v3 + 20), v1, type metadata accessor for VisualAction.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2262FE61C(v1, type metadata accessor for VisualAction.Kind);
  if (EnumCaseMultiPayload)
  {
    v5 = v0[6];
    v6 = *MEMORY[0x277D78AE8];
    v7 = sub_22634FB9C();
    (*(*(v7 - 8) + 104))(v5, v6, v7);
    v8 = MEMORY[0x277D78A40];
LABEL_10:
    v28 = *v8;
    v29 = sub_22634FAEC();
    (*(*(v29 - 8) + 104))(v5, v28, v29);

    v30 = v0[1];

    return v30();
  }

  v0[2] = sub_2262DBE60();
  v0[3] = v9;
  if (qword_27D792EA0 != -1)
  {
    swift_once();
  }

  v11 = v0[18];
  v10 = v0[19];
  v13 = v0[16];
  v12 = v0[17];
  v15 = v0[14];
  v14 = v0[15];
  v17 = v0[12];
  v16 = v0[13];
  v31 = v0[11];
  v18 = __swift_project_value_buffer(v15, qword_27D793ED8);
  (*(v14 + 16))(v13, v18, v15);
  sub_22635032C();
  (*(v11 + 104))(v10, *MEMORY[0x277D72148], v12);
  sub_22635008C();
  (*(v11 + 8))(v10, v12);
  v19 = sub_22635006C();
  v21 = v20;
  (*(v17 + 8))(v16, v31);
  v0[4] = v19;
  v0[5] = v21;
  sub_2262D61E0();
  LOBYTE(v19) = sub_22635087C();

  if ((v19 & 1) == 0)
  {
    v5 = v0[6];
    v8 = MEMORY[0x277D78A48];
    goto LABEL_10;
  }

  v22 = swift_task_alloc();
  v0[22] = v22;
  *v22 = v0;
  v22[1] = sub_2262FC1A4;
  v23 = v0[9];
  v24 = v0[7];
  v25 = v0[8];
  v26 = v0[6];

  return sub_2262FC310(v26, v24, v25, v23);
}

uint64_t sub_2262FC1A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2262FC310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_22635004C();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  v5[15] = swift_task_alloc();
  v7 = sub_22635028C();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = type metadata accessor for VisualAction(0);
  v5[20] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939A0, &unk_2263542A0);
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793010, &unk_226354CE0);
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793800, &qword_2263542B0);
  v5[25] = swift_task_alloc();
  v9 = sub_22634F17C();
  v5[26] = v9;
  v5[27] = *(v9 - 8);
  v5[28] = swift_task_alloc();
  v10 = sub_22634FDDC();
  v5[29] = v10;
  v5[30] = *(v10 - 8);
  v5[31] = swift_task_alloc();
  v11 = sub_22634EEFC();
  v5[32] = v11;
  v12 = *(v11 - 8);
  v5[33] = v12;
  v5[34] = *(v12 + 64);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262FC69C, v4, 0);
}

uint64_t sub_2262FC69C()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = v0[10];
  v5 = *(v0[11] + 120);
  v0[37] = v5;
  v6 = sub_22634F9BC();
  (*(*(v6 - 8) + 16))(v1, v4, v6);
  (*(v2 + 104))(v1, *MEMORY[0x277D78CD0], v3);

  return MEMORY[0x2822009F8](sub_2262FC780, v5, 0);
}

uint64_t sub_2262FC780()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = v0[11];
  sub_2262E0528(v1, v0[36]);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_2262FC820, v4, 0);
}

uint64_t sub_2262FC820(uint64_t a1)
{
  v2 = v1[36];
  v3 = v1[32];
  v4 = v1[33];
  v5 = v1[24];
  v7 = v1[22];
  v6 = v1[23];
  v50 = v1[21];
  sub_22634F4EC();
  sub_22634F50C();
  v8 = *(v4 + 16);
  v1[38] = v8;
  v1[39] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v5, v2, v3);
  (*(v4 + 56))(v5, 0, 1, v3);
  sub_22634F16C();
  sub_22634F15C();
  swift_getOpaqueTypeConformance2();
  v9 = sub_22634ECEC();
  (*(v7 + 8))(v6, v50);
  v10 = [v9 value];

  sub_22635088C();
  swift_unknownObjectRelease();
  sub_2262FD8B0();
  if (swift_dynamicCast())
  {
    v11 = v1[20];
    v12 = v1[17];
    v13 = v1[18];
    v48 = v1[16];
    v49 = v1[19];
    v14 = v1[8];
    v15 = v1[6];
    v1[40] = v15;
    sub_2262FDAD0(v14, v11, type metadata accessor for VisualAction);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793788, &qword_226354098);
    v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793790, &qword_2263540A0) - 8);
    v17 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_226351C90;
    v19 = (v18 + v17);
    v20 = v16[14];
    *v19 = 0x6369746E616D6573;
    *(v19 + 1) = 0xEF746E65746E6F43;
    sub_22635026C();
    v21 = swift_allocBox();
    v22 = swift_allocObject();
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x8000000226356D80;
    v22[4] = 0xD000000000000032;
    v22[5] = 0x8000000226356DA0;
    *v13 = v22;
    (*(v12 + 104))(v13, *MEMORY[0x277D72D28], v48);
    v23 = v15;
    sub_22635025C();
    *&v19[v20] = v21;
    v24 = *MEMORY[0x277D72A38];
    v25 = sub_22635027C();
    (*(*(v25 - 8) + 104))(&v19[v20], v24, v25);
    v26 = sub_2262FE430(v18);
    swift_setDeallocating();
    sub_2262D67D8(v19, &qword_27D793790, &qword_2263540A0);
    swift_deallocClassInstance();
    v27 = *(v49 + 24);

    *(v11 + v27) = v26;
    v28 = swift_task_alloc();
    v1[41] = v28;
    *v28 = v1;
    v28[1] = sub_2262FCEDC;
    v29 = v1[20];

    return sub_2262F6C00(v29);
  }

  else
  {
    v31 = v1[7];
    (*(v1[27] + 8))(v1[28], v1[26]);
    v32 = *MEMORY[0x277D78AF8];
    v33 = sub_22634FB9C();
    (*(*(v33 - 8) + 104))(v31, v32, v33);
    v34 = *MEMORY[0x277D78A40];
    v35 = sub_22634FAEC();
    (*(*(v35 - 8) + 104))(v31, v34, v35);
    v36 = v1[38];
    v38 = v1[35];
    v37 = v1[36];
    v39 = v1[33];
    v40 = v1[32];
    v41 = v1[15];
    v42 = v1[11];
    v43 = sub_22635064C();
    (*(*(v43 - 8) + 56))(v41, 1, 1, v43);
    v36(v38, v37, v40);
    v44 = sub_2262FD858();
    v45 = (*(v39 + 80) + 40) & ~*(v39 + 80);
    v46 = swift_allocObject();
    *(v46 + 2) = v42;
    *(v46 + 3) = v44;
    *(v46 + 4) = v42;
    (*(v39 + 32))(&v46[v45], v38, v40);
    swift_retain_n();
    sub_2262FB7D4(0, 0, v41, &unk_2263542C0, v46);

    (*(v39 + 8))(v37, v40);

    v47 = v1[1];

    return v47();
  }
}

uint64_t sub_2262FCEDC()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_2262FD2A4;
  }

  else
  {
    v4 = sub_2262FD008;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2262FD008()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 160);
  v5 = *(v0 + 56);

  (*(v2 + 8))(v1, v3);
  v6 = *MEMORY[0x277D78A48];
  v7 = sub_22634FAEC();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  sub_2262FE61C(v4, type metadata accessor for VisualAction);
  v8 = *(v0 + 304);
  v10 = *(v0 + 280);
  v9 = *(v0 + 288);
  v11 = *(v0 + 264);
  v12 = *(v0 + 256);
  v13 = *(v0 + 120);
  v14 = *(v0 + 88);
  v15 = sub_22635064C();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v8(v10, v9, v12);
  v16 = sub_2262FD858();
  v17 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v14;
  *(v18 + 3) = v16;
  *(v18 + 4) = v14;
  (*(v11 + 32))(&v18[v17], v10, v12);
  swift_retain_n();
  sub_2262FB7D4(0, 0, v13, &unk_2263542D8, v18);

  (*(v11 + 8))(v9, v12);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2262FD2A4()
{
  v1 = v0[42];
  sub_22635001C();
  v2 = v1;
  v3 = sub_22635003C();
  v4 = sub_22635073C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[42];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2262B6000, v3, v4, "Error executing action with ToolKit: %@", v6, 0xCu);
    sub_2262D67D8(v7, &qword_27D793CC0, qword_226352A00);
    MEMORY[0x22AA7D570](v7, -1, -1);
    MEMORY[0x22AA7D570](v6, -1, -1);
  }

  v10 = v0[42];
  v11 = v0[40];
  v12 = v0[27];
  v13 = v0[28];
  v14 = v0[26];
  v37 = v0[20];
  v15 = v3;
  v16 = v0[13];
  v17 = v0[14];
  v18 = v0[12];
  v19 = v0[7];

  (*(v16 + 8))(v17, v18);
  (*(v12 + 8))(v13, v14);
  v20 = *MEMORY[0x277D78AB8];
  v21 = sub_22634FB9C();
  (*(*(v21 - 8) + 104))(v19, v20, v21);
  v22 = *MEMORY[0x277D78A40];
  v23 = sub_22634FAEC();
  (*(*(v23 - 8) + 104))(v19, v22, v23);
  sub_2262FE61C(v37, type metadata accessor for VisualAction);
  v24 = v0[38];
  v26 = v0[35];
  v25 = v0[36];
  v27 = v0[33];
  v28 = v0[32];
  v29 = v0[15];
  v30 = v0[11];
  v31 = sub_22635064C();
  (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
  v24(v26, v25, v28);
  v32 = sub_2262FD858();
  v33 = (*(v27 + 80) + 40) & ~*(v27 + 80);
  v34 = swift_allocObject();
  *(v34 + 2) = v30;
  *(v34 + 3) = v32;
  *(v34 + 4) = v30;
  (*(v27 + 32))(&v34[v33], v26, v28);
  swift_retain_n();
  sub_2262FB7D4(0, 0, v29, &unk_2263542C8, v34);

  (*(v27 + 8))(v25, v28);

  v35 = v0[1];

  return v35();
}

BOOL sub_2262FD6A4(uint64_t a1)
{
  v2 = type metadata accessor for VisualAction.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VisualAction(0);
  sub_2262FDAD0(a1 + *(v5 + 20), v4, type metadata accessor for VisualAction.Kind);
  v6 = swift_getEnumCaseMultiPayload() == 0;
  sub_2262FE61C(v4, type metadata accessor for VisualAction.Kind);
  return v6;
}

uint64_t sub_2262FD770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2262D641C;

  return sub_2262FBC5C(a1, a2, a3, a4);
}

unint64_t sub_2262FD830(uint64_t a1)
{
  result = sub_2262FD858();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2262FD858()
{
  result = qword_28137FA28;
  if (!qword_28137FA28)
  {
    type metadata accessor for SystemToolActionExecutor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28137FA28);
  }

  return result;
}

unint64_t sub_2262FD8B0()
{
  result = qword_27D793808;
  if (!qword_27D793808)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D793808);
  }

  return result;
}

uint64_t sub_2262FD8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2262FD920, a4, 0);
}

uint64_t sub_2262FD920()
{
  v1 = *(*(v0 + 24) + 120);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2262FD944, v1, 0);
}

uint64_t sub_2262FD944()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = sub_2262E0C04(*(v0 + 32));

  return MEMORY[0x2822009F8](sub_2262FD9B8, v1, 0);
}

uint64_t sub_2262FD9D8(uint64_t a1)
{
  v4 = *(sub_22634EEFC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2262FF0E0;

  return sub_2262FD8FC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2262FDAD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2262FDB38(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2262FDC30;

  return v6(a1);
}

uint64_t sub_2262FDC30()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2262FDD28(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_2262FDD88(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_2262FDDFC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2262FDEF0;

  return v5(v2 + 32);
}

uint64_t sub_2262FDEF0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_2262FE004(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793848, &unk_226355680);
    v3 = sub_226350A9C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22633941C(v5, v6);
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

unint64_t sub_2262FE100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793840, &unk_226354360);
    v3 = sub_226350A9C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22633941C(v5, v6);
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

unint64_t sub_2262FE204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793838, &unk_226354350);
    v3 = sub_226350A9C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2262D66FC(v4, v13, &qword_27D793130, qword_226352318);
      result = sub_226339494(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + result) = v15;
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

unint64_t sub_2262FE32C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793830, &qword_226355650);
    v3 = sub_226350A9C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_22633941C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_2262FE430(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793790, &qword_2263540A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793810, &qword_2263542E0);
    v7 = sub_226350A9C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2262D66FC(v9, v5, &qword_27D793790, &qword_2263540A0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_22633941C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_22635027C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2262FE61C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2262FE67C(uint64_t a1)
{
  v4 = *(sub_22634EEFC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2262D641C;

  return sub_2262FD8FC(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroyTm()
{
  v1 = sub_22634EEFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2262FE840(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2262FDDFC(a1, v4);
}

uint64_t sub_2262FE8F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262D641C;

  return sub_2262FDDFC(a1, v4);
}

unint64_t sub_2262FE9B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793818, &unk_226354300);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793C30, &unk_226355620);
    v7 = sub_226350A9C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2262D66FC(v9, v5, &qword_27D793818, &unk_226354300);
      v11 = *v5;
      v12 = v5[1];
      result = sub_22633941C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for VisualAction(0);
      result = sub_2262FEB84(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2262FEB84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2262FEBE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2262FDB38(a1, v4);
}

unint64_t sub_2262FECA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793060, &qword_226351F10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C70, &unk_226354340);
    v7 = sub_226350A9C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2262D66FC(v9, v5, &qword_27D793060, &qword_226351F10);
      result = sub_226339680(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_22634F0EC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_22634F10C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2262FEEC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793820, &qword_226354328);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793828, &unk_226354330);
    v7 = sub_226350A9C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2262D66FC(v9, v5, &qword_27D793820, &qword_226354328);
      result = sub_2263394D8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_22634EEFC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_22634FDDC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2262FF0FC(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    a3(0);
    return a2;
  }

  return result;
}

uint64_t sub_2262FF194()
{
  v1 = sub_22634F0EC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931E0, &qword_2263524F0);
  sub_22634F06C();
  v5 = swift_allocObject();
  v23 = xmmword_226351C90;
  *(v5 + 16) = xmmword_226351C90;
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_timestampAttribute, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793348, &unk_2263529F0);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793350, &unk_2263543E0) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v23;
  v9 = v8 + v7;
  v10 = v6[14];
  v11 = *MEMORY[0x277D78240];
  v12 = sub_22634F0CC();
  (*(*(v12 - 8) + 104))(v9, v11, v12);
  sub_22634EE5C();
  *(v9 + v10) = v13;
  v14 = *MEMORY[0x277D78280];
  v15 = sub_22634F10C();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v9 + v10, v14, v15);
  (*(v16 + 56))(v9 + v10, 0, 1, v15);
  v17 = v24;
  sub_22634F05C();

  v18 = v25;
  sub_226303D5C(v17, v5, v19);

  if (!v18)
  {
    result = sub_226301FFC(v17);
    if (result >= 10001)
    {

      return sub_226304250(v21, v17, 0x2710, v22);
    }
  }

  return result;
}

uint64_t sub_2262FF4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v152 = a6;
  v159[1] = *MEMORY[0x277D85DE8];
  v149 = sub_22634EEFC();
  v14 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v148 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_22634F14C();
  v151 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v153 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22634F10C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v23 = *(a1 + 16);
  v150 = a2;
  if (v23 == *(a2 + 16) && v23 == *(a3 + 16) && v23 == *(a4 + 16) && v23 == *(a5 + 16) && v23 == *(v152 + 16) && v23 == *(a7 + 16))
  {
    v24 = MEMORY[0x277D84F90];
    v159[0] = MEMORY[0x277D84F90];
    if (v23)
    {
      v120 = (&v100 - v21);
      v121 = v22;
      v142 = v20;
      v115 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_bundleIdAttribute;
      v114 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_timestampAttribute;
      v113 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_actionIdAttribute;
      v112 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_isMissingEmbeddingAttribute;
      v103 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_majorLabelAttribute;
      v102 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_minorLabelAttribute;
      v118 = a1 + 32;
      v101 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_appInFocusAttribute;
      v135 = v23;
      v25 = sub_22634EECC();
      v146 = 0;
      v117 = *(v25 - 8);
      v116 = a5 + ((*(v117 + 80) + 32) & ~*(v117 + 80));
      v136 = (v18 + 104);
      v111 = a3 + 32;
      v119 = (v18 + 32);
      v26 = 0;
      v110 = a4 + 32;
      v109 = (v14 + 8);
      v108 = v151 + 32;
      v143 = *MEMORY[0x277D78288];
      v107 = *MEMORY[0x277D78280];
      v106 = a7 + 40;
      v105 = *MEMORY[0x277D78290];
      v104 = xmmword_226351C80;
      v132 = xmmword_226351C90;
      v145 = v7;
      while (1)
      {
        v27 = *(v118 + 8 * v26);
        if (v27)
        {

          v28 = v27;
        }

        else
        {
          v28 = sub_22635059C();
          *(v28 + 16) = 512;
          bzero((v28 + 32), 0x800uLL);
        }

        v29 = *(v28 + 16);
        if (v29 >> 61)
        {
          __break(1u);
LABEL_40:
          __break(1u);
        }

        v30 = 4 * v29;
        v134 = v24;
        if (4 * v29)
        {
          if (v30 <= 14)
          {
            *(&__dst + 6) = 0;
            *&__dst = 0;
            BYTE14(__dst) = 4 * v29;
            memmove(&__dst, (v28 + 32), 4 * v29);
            v133 = __dst;
            v33 = v100 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
            v100 = v33;
          }

          else
          {
            sub_22634ED8C();
            swift_allocObject();
            v31 = sub_22634ED7C();
            v32 = v31;
            if (v30 >= 0x7FFFFFFF)
            {
              sub_22634EE1C();
              v34 = swift_allocObject();
              *(v34 + 16) = 0;
              *(v34 + 24) = v30;
              v133 = v34;
              v33 = v32 | 0x8000000000000000;
            }

            else
            {
              v133 = v29 << 34;
              v33 = v31 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v133 = 0;
          v33 = 0xC000000000000000;
        }

        v141 = v33;

        sub_22634ED4C();
        swift_allocObject();
        sub_22634ED3C();
        if (v135 == v26)
        {
          goto LABEL_40;
        }

        v36 = *(v152 + v146 + 32);
        v35 = *(v152 + v146 + 40);
        v37 = *(v150 + v146 + 32);
        v38 = *(v150 + v146 + 40);
        v39 = v116 + *(v117 + 72) * v26;

        v130 = v39;
        sub_22634EE5C();
        *&__dst = v36;
        *(&__dst + 1) = v35;
        v156 = v37;
        v157 = v38;
        v158 = v40;
        sub_2262D60C8();
        v41 = v154;
        v131 = sub_22634ED2C();
        v154 = v41;
        if (v41)
        {
          break;
        }

        v128 = v42;
        v129 = v26;
        v127 = v27 == 0;

        v140 = v35;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793058, &qword_226351F08);
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793060, &qword_226351F10);
        v139 = v43;
        v44 = *(v43 - 8);
        v144 = *(v44 + 72);
        v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v46 = swift_allocObject();
        v126 = v46;
        *(v46 + 16) = v104;
        v47 = v46 + v45;
        v48 = (v47 + *(v43 + 48));
        v49 = sub_22634F0EC();
        v50 = *(v49 - 8);
        v51 = *(v50 + 16);
        v122 = v50 + 16;
        v123 = v38;
        v52 = v145;
        v124 = v47;
        v138 = v49;
        (v51)(v47, v145 + v115, v49);
        v137 = v51;
        *v48 = v37;
        v48[1] = v38;
        v125 = v36;
        v53 = *v136;
        (*v136)(v48, v143, v142);
        v54 = v47 + v144;
        v55 = *(v139 + 48);
        (v51)(v47 + v144, v52 + v114, v49);

        sub_22634EE5C();
        *(v54 + v55) = v56;
        v57 = (v54 + v55);
        v58 = v142;
        v53(v57, v107, v142);
        v59 = v145;
        v60 = v124;
        v61 = 2 * v144;
        v62 = v139;
        v63 = (v124 + 2 * v144 + *(v139 + 48));
        v137();
        v64 = v140;
        *v63 = v125;
        v63[1] = v64;
        v53(v63, v143, v58);
        v65 = v60 + v61 + v144;
        v66 = *(v62 + 48);
        (v137)(v65, v59 + v112, v138);
        *(v65 + v66) = v127;
        v53((v65 + v66), v105, v58);

        v67 = sub_2262FECA0(v126);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v68 = *(v111 + v146 + 8);
        if (v68)
        {
          v69 = v120;
          *v120 = *(v111 + v146);
          v69[1] = v68;
          v53(v69, v143, v58);
          v70 = v121;
          (*v119)(v121, v69, v58);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&__dst = v67;
          v72 = v145;
          sub_2262E3E68(v70, v145 + v103, isUniquelyReferenced_nonNull_native);
          v67 = __dst;
          v73 = v72;
        }

        else
        {
          v73 = v145;
        }

        v74 = *(v110 + v146 + 8);
        v75 = v129;
        if (v74)
        {
          v76 = v120;
          *v120 = *(v110 + v146);
          v76[1] = v74;
          v77 = v143;
          v78 = v142;
          v79 = v53;
          v53(v76, v143, v142);
          v80 = v121;
          (*v119)(v121, v76, v78);

          v81 = swift_isUniquelyReferenced_nonNull_native();
          *&__dst = v67;
          sub_2262E3E68(v80, v73 + v102, v81);
          v67 = __dst;
        }

        else
        {
          v79 = v53;
          v77 = v143;
        }

        v82 = *(v106 + v146);
        if (v82)
        {
          v83 = v120;
          *v120 = *(v106 + v146 - 8);
          v83[1] = v82;
          v84 = v142;
          v79(v83, v77, v142);
          v85 = v121;
          (*v119)(v121, v83, v84);

          v86 = swift_isUniquelyReferenced_nonNull_native();
          *&__dst = v67;
          sub_2262E3E68(v85, v73 + v101, v86);
          v67 = __dst;
        }

        v87 = v148;
        sub_22634EEEC();
        sub_22634EEDC();
        (*v109)(v87, v149);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793068, &qword_226351F18);
        v88 = swift_allocObject();
        *(v88 + 16) = v132;
        v89 = v133;
        v90 = v141;
        *(v88 + 32) = v133;
        *(v88 + 40) = v90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793070, &qword_226351F20);
        v91 = swift_allocObject();
        *(v91 + 16) = v132;
        *(v91 + 32) = v67;
        sub_2262D6170(v89, v90);
        v92 = v131;
        v93 = v128;
        sub_2262D6170(v131, v128);
        v94 = v93;
        sub_22634F11C();
        v24 = v134;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_2262DCF9C(0, v24[2] + 1, 1, v24);
        }

        v96 = v24[2];
        v95 = v24[3];
        if (v96 >= v95 >> 1)
        {
          v24 = sub_2262DCF9C((v95 > 1), v96 + 1, 1, v24);
        }

        v26 = v75 + 1;
        sub_2262D611C(v92, v94);
        sub_2262D611C(v89, v141);
        v24[2] = v96 + 1;
        (*(v151 + 32))(v24 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v96, v153, v147);
        v159[0] = v24;
        v7 = v145;
        v146 += 16;
        if (v135 == v26)
        {
          goto LABEL_37;
        }
      }

      sub_2262D611C(v133, v141);
    }

    else
    {
LABEL_37:
      sub_226305194(v7, v159);
    }
  }

  else
  {
    v97 = sub_22634EF4C();
    sub_22630C1DC(&qword_27D793880, MEMORY[0x277D781D0], MEMORY[0x277D781D8]);
    swift_allocError();
    *v98 = 0xD00000000000002ALL;
    v98[1] = 0x8000000226356F50;
    (*(*(v97 - 8) + 104))(v98, *MEMORY[0x277D781C8], v97);
    return swift_willThrow();
  }
}

uint64_t sub_226300388(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7938B0, &qword_2263544E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22630C5A8();
  sub_226350D2C();
  v8[15] = 0;
  sub_226350BBC();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_226350BBC();
  v8[13] = 2;
  sub_226350BDC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_226300528()
{
  v1 = 0x6449656C646E7562;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64496E6F69746361;
  }
}

uint64_t sub_226300588@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22630C234(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2263005B0(uint64_t a1)
{
  v2 = sub_22630C5A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2263005EC(uint64_t a1)
{
  v2 = sub_22630C5A8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_226300628@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_22630C354(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_226300688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a5;
  v61 = a4;
  v62 = a3;
  v64 = a2;
  v73 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70);
  v66 = *(v68 - 8);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v65 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  MEMORY[0x28223BE20](v7 - 8);
  v63 = &v47 - v8;
  v9 = sub_22634F0BC();
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v58 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22634F07C();
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x28223BE20](v11);
  v71 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_22634EE0C();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v14;
  v15 = sub_22634F04C();
  v56 = *(v15 - 8);
  v57 = v15;
  MEMORY[0x28223BE20](v15);
  v55 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22634F0FC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v5 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly) = 0;
  v21 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793868, &qword_226354400);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v5 + v21) = v22;
  *(v5 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_kMaxSize) = 10000;
  v23 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_bundleIdAttribute;
  *v20 = 0;
  v20[1] = 0;
  v24 = *MEMORY[0x277D78268];
  v25 = *(v18 + 104);
  v25(v20, v24, v17);
  sub_22634F0DC();
  v52 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_majorLabelAttribute;
  *v20 = 0;
  v20[1] = 0;
  v25(v20, v24, v17);
  sub_22634F0DC();
  v51 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_minorLabelAttribute;
  *v20 = 0;
  v20[1] = 0;
  v25(v20, v24, v17);
  sub_22634F0DC();
  v50 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_actionIdAttribute;
  *v20 = 0;
  v20[1] = 0;
  v25(v20, v24, v17);
  sub_22634F0DC();
  v48 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_timestampAttribute;
  *v20 = 0;
  *(v20 + 8) = 1;
  v25(v20, *MEMORY[0x277D78260], v17);
  sub_22634F0DC();
  v26 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_isMissingEmbeddingAttribute;
  *v20 = 0;
  *(v20 + 8) = 0;
  v25(v20, *MEMORY[0x277D78270], v17);
  sub_22634F0DC();
  v27 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_appInFocusAttribute;
  *v20 = 0;
  v20[1] = 0;
  v25(v20, v24, v17);
  sub_22634F0DC();
  (*(v70 + 16))(v14, v73, v72);
  (*(v53 + 104))(v71, *MEMORY[0x277D781F8], v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793870, &qword_226354408);
  v28 = sub_22634F0EC();
  v29 = *(v28 - 8);
  v30 = *(v29 + 72);
  v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_226354370;
  v33 = v32 + v31;
  v34 = *(v29 + 16);
  v34(v33, v5 + v23, v28);
  v34(v33 + v30, v5 + v52, v28);
  v34(v33 + 2 * v30, v5 + v51, v28);
  v34(v33 + 3 * v30, v5 + v50, v28);
  v34(v33 + 4 * v30, v5 + v48, v28);
  v34(v33 + 5 * v30, v5 + v26, v28);
  v34(v33 + 6 * v30, v5 + v27, v28);
  (*(v59 + 104))(v58, *MEMORY[0x277D78218], v60);
  v35 = v55;
  sub_22634F01C();
  (*(v56 + 32))(v5 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config, v35, v57);
  v36 = sub_22635064C();
  v37 = v63;
  (*(*(v36 - 8) + 56))(v63, 1, 1, v36);
  v39 = v65;
  v38 = v66;
  v41 = v68;
  v40 = v69;
  (*(v66 + 16))(v65, v69, v68);
  v42 = v38;
  v43 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v44 = (v67 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  (*(v42 + 32))(v45 + v43, v39, v41);
  *(v45 + v44) = v5;

  sub_2262FB4D4(0, 0, v37, &unk_226354418, v45);

  (*(v42 + 8))(v40, v41);
  (*(v70 + 8))(v73, v72);
  return v5;
}

uint64_t sub_226301048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_22634FD8C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793C00, &qword_226354420);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793878, &qword_226354428);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2263011A8, 0, 0);
}

uint64_t sub_2263011A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70);
  sub_22635069C();
  *(v0 + 112) = *MEMORY[0x277D78C98];
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_226301280;
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_226301280()
{

  return MEMORY[0x2822009F8](sub_22630137C, 0, 0);
}

uint64_t sub_22630137C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 112);
    v7 = *(v0 + 48);
    (*(v3 + 32))(v7, v1, v2);
    v8 = (*(v3 + 88))(v7, v2);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    v11 = *(v0 + 32);
    if (v8 == v6)
    {
      (*(v9 + 96))(*(v0 + 48), v11);
      v12 = *v10;
      *(v0 + 96) = *v10;
      v13 = swift_task_alloc();
      *(v0 + 104) = v13;
      *v13 = v0;
      v13[1] = sub_2263015C4;

      return sub_226301780(v12);
    }

    else
    {
      (*(v9 + 8))(*(v0 + 48), v11);
      v14 = swift_task_alloc();
      *(v0 + 88) = v14;
      *v14 = v0;
      v14[1] = sub_226301280;
      v15 = *(v0 + 56);
      v16 = *(v0 + 64);

      return MEMORY[0x2822003E8](v15, 0, 0, v16);
    }
  }
}

uint64_t sub_2263015C4()
{

  return MEMORY[0x2822009F8](sub_2263016DC, 0, 0);
}

uint64_t sub_2263016DC()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_226301280;
  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_226301780(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22635004C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226301840, 0, 0);
}

uint64_t sub_226301840()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = v0[3];
      v5 = *(v3 - 1);
      v6 = *v3;
      swift_bridgeObjectRetain_n();

      sub_22630474C(v7, v4, v5, v6, v8);

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  v9 = v0[1];

  return v9();
}

id sub_226301ADC(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v48[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22634F04C();
  v45 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22634EE0C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v13 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v39 = v3;
    v40 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v41 = v5;
    v42 = v10;
    v43 = v13;
    v44 = v7;
    v15 = v6;
    v16 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v17 = v46;
    v18 = sub_22634F03C();
    v20 = a1;
    if (v17)
    {
      v46 = *(v44 + 8);
      v46(v12, v6);
      v21 = sub_22634F02C();
      v23 = v22;
    }

    else
    {
      v21 = v18;
      v23 = v19;
      v46 = *(v44 + 8);
      v46(v12, v6);
    }

    v24 = v42;
    if (v21 == sub_22634F02C() && v23 == v25)
    {
    }

    else
    {
      v26 = sub_226350C4C();

      if ((v26 & 1) == 0)
      {
        v36 = sub_22630606C();
        goto LABEL_14;
      }
    }

    sub_22634F00C();
    v27 = objc_opt_self();
    v28 = [v27 defaultManager];
    sub_22634EDFC();
    v29 = sub_22635045C();

    v30 = [v28 fileExistsAtPath_];

    v31 = v41;
    if ((v30 & 1) == 0)
    {
      v42 = v16;
      v32 = [v27 defaultManager];
      v33 = sub_22634EDDC();
      v48[0] = 0;
      v34 = [v32 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:v48];

      if ((v34 & 1) == 0)
      {
        v14 = v48[0];
        sub_22634EDAC();

        swift_willThrow();
        v46(v24, v15);
        goto LABEL_17;
      }

      v35 = v48[0];
      v16 = v42;
    }

    (*(v45 + 16))(v31, v20 + v16, v39);
    sub_22634EFFC();
    swift_allocObject();
    v36 = sub_22634EF9C();
    v46(v24, v15);
LABEL_14:
    *(v20 + v40) = v36;
    swift_retain_n();

    v14 = sub_22634EF8C();

LABEL_17:
    os_unfair_lock_unlock(v43 + 4);

    return v14;
  }

  v14 = sub_22634EF8C();

  os_unfair_lock_unlock(v13 + 4);

  return v14;
}

id sub_226301FFC(uint64_t a1)
{
  v47[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22634F04C();
  v45 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22634EE0C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v39 - v10;
  v12 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v12 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v41 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v42 = v9;
    v40 = v4;
    v43 = v12;
    v44 = v6;
    v14 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v15 = v46;
    v16 = sub_22634F03C();
    if (v15)
    {
      v46 = *(v44 + 8);
      v46(v11, v5);
      v18 = sub_22634F02C();
      v20 = v19;
    }

    else
    {
      v18 = v16;
      v20 = v17;
      v46 = *(v44 + 8);
      v46(v11, v5);
    }

    v21 = v14;
    v23 = v2;
    if (v18 == sub_22634F02C() && v20 == v22)
    {

      v24 = v42;
    }

    else
    {
      v25 = sub_226350C4C();

      v24 = v42;
      if ((v25 & 1) == 0)
      {
        v36 = sub_22630606C();
        v31 = v43;
        goto LABEL_14;
      }
    }

    v42 = v23;
    sub_22634F00C();
    v26 = objc_opt_self();
    v27 = v21;
    v28 = [v26 defaultManager];
    sub_22634EDFC();
    v29 = sub_22635045C();

    v30 = [v28 fileExistsAtPath_];

    v31 = v43;
    if ((v30 & 1) == 0)
    {
      v39 = v27;
      v32 = [v26 defaultManager];
      v33 = sub_22634EDDC();
      v47[0] = 0;
      v34 = [v32 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:v47];

      v13 = v47[0];
      if ((v34 & 1) == 0)
      {
        v37 = v47[0];
        sub_22634EDAC();

        swift_willThrow();
        v46(v24, v5);
        goto LABEL_17;
      }

      v35 = v47[0];
      v27 = v39;
    }

    (*(v45 + 16))(v40, a1 + v27, v42);
    sub_22634EFFC();
    swift_allocObject();
    v36 = sub_22634EF9C();
    v46(v24, v5);
LABEL_14:
    *(a1 + v41) = v36;
    swift_retain_n();

    v13 = sub_22634EF8C();

LABEL_17:
    os_unfair_lock_unlock(v31 + 4);
    return v13;
  }

  v13 = sub_22634EF8C();

  os_unfair_lock_unlock(v12 + 4);
  return v13;
}

id sub_226302514(uint64_t a1, void *a2)
{
  v47 = a2;
  v49[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22634F04C();
  v46 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22634EE0C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - v11;
  v13 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v13 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v40 = v3;
    v41 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v42 = v5;
    v43 = v10;
    v44 = v13;
    v45 = v7;
    v15 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v16 = v48;
    v17 = sub_22634F03C();
    if (v16)
    {
      v48 = *(v45 + 8);
      v48(v12, v6);
      v19 = sub_22634F02C();
      v21 = v20;
    }

    else
    {
      v19 = v17;
      v21 = v18;
      v48 = *(v45 + 8);
      v48(v12, v6);
    }

    v22 = v43;
    if (v19 == sub_22634F02C() && v21 == v23)
    {
    }

    else
    {
      v24 = sub_226350C4C();

      if ((v24 & 1) == 0)
      {
        v35 = sub_22630606C();
        goto LABEL_14;
      }
    }

    sub_22634F00C();
    v25 = objc_opt_self();
    v26 = [v25 defaultManager];
    sub_22634EDFC();
    v27 = sub_22635045C();

    v28 = [v26 fileExistsAtPath_];

    v29 = v6;
    v30 = v42;
    if ((v28 & 1) == 0)
    {
      v43 = v29;
      v39 = v15;
      v31 = [v25 defaultManager];
      v32 = sub_22634EDDC();
      v49[0] = 0;
      v33 = [v31 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:v49];

      v14 = v49[0];
      if ((v33 & 1) == 0)
      {
        v37 = v49[0];
        sub_22634EDAC();

        swift_willThrow();
        v48(v22, v43);
        v36 = v44;
        goto LABEL_17;
      }

      v34 = v49[0];
      v15 = v39;
      v29 = v43;
    }

    (*(v46 + 16))(v30, a1 + v15, v40);
    sub_22634EFFC();
    swift_allocObject();
    v35 = sub_22634EF9C();
    v48(v22, v29);
LABEL_14:
    v36 = v44;
    *(a1 + v41) = v35;
    swift_retain_n();

    v14 = sub_22634EF8C();

LABEL_17:
    os_unfair_lock_unlock(v36 + 4);
    return v14;
  }

  v14 = sub_22634EF8C();

  os_unfair_lock_unlock(v13 + 4);
  return v14;
}

uint64_t sub_226302A38(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v52 = a3;
  v50 = a2;
  v54[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22634F04C();
  v49 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22634EE0C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  v14 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v14 + 4);
  if (*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {

    v15 = v51;
    sub_226307C9C(v50, v52, v54);

    os_unfair_lock_unlock(v14 + 4);

    if (v15)
    {
      return result;
    }

    return v54[0];
  }

  v44 = v6;
  v45 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
  v43 = v4;
  v46 = v11;
  v47 = v14;
  v48 = v7;
  v17 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
  sub_22634F00C();
  v18 = v51;
  v19 = sub_22634F03C();
  v21 = a1;
  if (v18)
  {
    v51 = *(v8 + 8);
    v51(v13, v48);
    v22 = sub_22634F02C();
    v24 = v23;
  }

  else
  {
    v22 = v19;
    v24 = v20;
    v51 = *(v8 + 8);
    v51(v13, v48);
  }

  v25 = v46;
  if (v22 == sub_22634F02C() && v24 == v26)
  {
  }

  else
  {
    v27 = sub_226350C4C();

    if ((v27 & 1) == 0)
    {
      v40 = sub_22630606C();
      v39 = v50;
      v37 = v40;
      v38 = v52;
      v32 = v47;
      goto LABEL_15;
    }
  }

  sub_22634F00C();
  v28 = objc_opt_self();
  v29 = [v28 defaultManager];
  sub_22634EDFC();
  v30 = sub_22635045C();

  v31 = [v29 fileExistsAtPath_];

  v32 = v47;
  if (v31)
  {
LABEL_14:
    (*(v49 + 16))(v44, v21 + v17, v43);
    sub_22634EFFC();
    swift_allocObject();
    v37 = sub_22634EF9C();
    v51(v25, v48);
    v38 = v52;
    v39 = v50;
LABEL_15:
    *(v21 + v45) = v37;
    swift_retain_n();

    sub_226307C9C(v39, v38, v54);

    os_unfair_lock_unlock(v32 + 4);

    return v54[0];
  }

  v33 = [v28 defaultManager];
  v34 = sub_22634EDDC();
  v53 = 0;
  v35 = [v33 createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:&v53];

  if (v35)
  {
    v36 = v53;
    goto LABEL_14;
  }

  v41 = v53;
  sub_22634EDAC();

  swift_willThrow();
  v51(v25, v48);
  os_unfair_lock_unlock(v32 + 4);
}

uint64_t sub_226302F60(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v58 = a4;
  v61 = a3;
  v62 = a5;
  v63[1] = *MEMORY[0x277D85DE8];
  v7 = sub_22634F04C();
  v57 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22634EE0C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v60 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v60 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v50 = v9;
    v51 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v49 = v7;
    v55 = v14;
    v56 = v11;
    v53 = a2;
    v54 = v10;
    v23 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v24 = v59;
    v25 = sub_22634F03C();
    v27 = a1;
    if (v24)
    {
      v52 = *(v56 + 8);
      v52(v16, v54);
      v28 = sub_22634F02C();
      v30 = v29;
    }

    else
    {
      v28 = v25;
      v30 = v26;
      v52 = *(v56 + 8);
      v52(v16, v54);
    }

    v59 = v23;
    if (v28 == sub_22634F02C() && v30 == v31)
    {
    }

    else
    {
      v32 = sub_226350C4C();

      if ((v32 & 1) == 0)
      {
        v43 = sub_22630606C();
        v44 = v61;
LABEL_16:
        *(v27 + v51) = v43;
        swift_retain_n();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793068, &qword_226351F18);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_226351C90;
        v46 = v53;
        *(v45 + 32) = v53;
        *(v45 + 40) = v44;
        sub_2262D6170(v46, v44);

        a1 = sub_22634EFCC();

        os_unfair_lock_unlock(v60 + 4);
        sub_2262D611C(v46, v44);
        return a1;
      }
    }

    v33 = v59;
    sub_22634F00C();
    v34 = objc_opt_self();
    v35 = [v34 defaultManager];
    sub_22634EDFC();
    v36 = sub_22635045C();

    v37 = [v35 fileExistsAtPath_];

    a1 = v54;
    v38 = v55;
    if ((v37 & 1) == 0)
    {
      v39 = [v34 defaultManager];
      v40 = sub_22634EDDC();
      v63[0] = 0;
      v41 = [v39 createDirectoryAtURL:v40 withIntermediateDirectories:1 attributes:0 error:v63];

      if ((v41 & 1) == 0)
      {
        v47 = v63[0];
        sub_22634EDAC();

        swift_willThrow();
        v52(v38, a1);
        os_unfair_lock_unlock(v60 + 4);
        v21 = v53;
        v22 = v61;
        goto LABEL_19;
      }

      v42 = v63[0];
      v33 = v59;
    }

    (*(v57 + 16))(v50, v33 + v27, v49);
    sub_22634EFFC();
    swift_allocObject();
    v43 = sub_22634EF9C();
    v52(v38, a1);
    v44 = v61;
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793068, &qword_226351F18);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_226351C90;
  v18 = v61;
  *(v17 + 32) = a2;
  *(v17 + 40) = v18;

  sub_2262D6170(a2, v18);

  v19 = v59;
  v20 = sub_22634EFCC();
  if (v19)
  {

    os_unfair_lock_unlock(v60 + 4);
    v21 = a2;
    v22 = v18;
LABEL_19:
    sub_2262D611C(v21, v22);
    return a1;
  }

  a1 = v20;

  os_unfair_lock_unlock(v60 + 4);
  sub_2262D611C(a2, v18);
  return a1;
}

uint64_t sub_2263035CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v63 = a3;
  v64[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22634F04C();
  v60 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22634EE0C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - v13;
  v62 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v62 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v54 = v5;
    v55 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v58 = v12;
    v59 = v9;
    v56 = v7;
    v57 = a2;
    v24 = v8;
    v25 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v26 = v61;
    v27 = sub_22634F03C();
    if (v26)
    {
      v61 = *(v59 + 8);
      v61(v14, v8);
      v29 = sub_22634F02C();
      v31 = v30;
    }

    else
    {
      v29 = v27;
      v31 = v28;
      v61 = *(v59 + 8);
      v61(v14, v24);
    }

    v32 = v58;
    if (v29 == sub_22634F02C() && v31 == v33)
    {
    }

    else
    {
      v34 = sub_226350C4C();

      if ((v34 & 1) == 0)
      {
        v44 = sub_22630606C();
LABEL_16:
        *(a1 + v55) = v44;
        swift_retain_n();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793890, &qword_226354440);
        v45 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793898, &qword_226354448) - 8);
        v46 = (*(*v45 + 80) + 32) & ~*(*v45 + 80);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_226351C90;
        v48 = v47 + v46;
        v49 = v45[14];
        v50 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_timestampAttribute;
        v51 = sub_22634F0EC();
        (*(*(v51 - 8) + 16))(v48, v63 + v50, v51);
        *(v48 + v49) = 0;

        v18 = sub_22634EF6C();

        os_unfair_lock_unlock(v62 + 4);

        return v18;
      }
    }

    v58 = v24;
    v35 = v25;
    sub_22634F00C();
    v36 = objc_opt_self();
    v37 = [v36 defaultManager];
    sub_22634EDFC();
    v38 = sub_22635045C();

    v39 = [v37 fileExistsAtPath_];

    v40 = v56;
    if ((v39 & 1) == 0)
    {
      v41 = [v36 defaultManager];
      v42 = sub_22634EDDC();
      v64[0] = 0;
      v18 = [v41 createDirectoryAtURL:v42 withIntermediateDirectories:1 attributes:0 error:v64];

      if ((v18 & 1) == 0)
      {
        v52 = v64[0];
        sub_22634EDAC();

        swift_willThrow();
        v61(v32, v58);
        os_unfair_lock_unlock(v62 + 4);
        goto LABEL_19;
      }

      v43 = v64[0];
      v35 = v25;
    }

    (*(v60 + 16))(v40, a1 + v35, v54);
    sub_22634EFFC();
    swift_allocObject();
    v44 = sub_22634EF9C();
    v61(v32, v58);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793890, &qword_226354440);
  v15 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793898, &qword_226354448) - 8);
  v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_226351C90;
  v18 = v17 + v16;
  v19 = v15[14];
  v20 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_timestampAttribute;
  v21 = sub_22634F0EC();
  (*(*(v21 - 8) + 16))(v18, v63 + v20, v21);
  *(v18 + v19) = 0;

  v22 = v61;
  v23 = sub_22634EF6C();
  if (v22)
  {

    os_unfair_lock_unlock(v62 + 4);
LABEL_19:

    return v18;
  }

  v18 = v23;

  os_unfair_lock_unlock(v62 + 4);

  return v18;
}

uint64_t sub_226303D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v46 = a3;
  v49[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22634F04C();
  v45 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22634EE0C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v14 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v40 = v6;
    v41 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v39 = v4;
    v42 = v11;
    v43 = v14;
    v44 = v7;
    v16 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v17 = v47;
    v18 = sub_22634F03C();
    v20 = a1;
    if (v17)
    {
      v47 = *(v8 + 8);
      v47(v13, v44);
      v21 = sub_22634F02C();
      v23 = v22;
    }

    else
    {
      v21 = v18;
      v23 = v19;
      v47 = *(v8 + 8);
      v47(v13, v44);
    }

    v24 = v42;
    if (v21 == sub_22634F02C() && v23 == v25)
    {
    }

    else
    {
      v26 = sub_226350C4C();

      if ((v26 & 1) == 0)
      {
        v35 = sub_22630606C();
        v36 = v48;
        v14 = v43;
LABEL_14:
        *(v20 + v41) = v35;
        swift_retain_n();

        sub_22630761C(v35, v36);

        goto LABEL_17;
      }
    }

    sub_22634F00C();
    v27 = objc_opt_self();
    v28 = [v27 defaultManager];
    sub_22634EDFC();
    v29 = sub_22635045C();

    v30 = [v28 fileExistsAtPath_];

    v14 = v43;
    if ((v30 & 1) == 0)
    {
      v31 = [v27 defaultManager];
      v32 = sub_22634EDDC();
      v49[0] = 0;
      v33 = [v31 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:v49];

      if ((v33 & 1) == 0)
      {
        v37 = v49[0];
        sub_22634EDAC();

        swift_willThrow();
        v47(v24, v44);
        goto LABEL_17;
      }

      v34 = v49[0];
    }

    (*(v45 + 16))(v40, v20 + v16, v39);
    sub_22634EFFC();
    swift_allocObject();
    v35 = sub_22634EF9C();
    v47(v24, v44);
    v36 = v48;
    goto LABEL_14;
  }

  sub_22630761C(v15, v48);

LABEL_17:
  os_unfair_lock_unlock(v14 + 4);
}

uint64_t sub_226304250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void, void)@<X2>, uint64_t a4@<X8>)
{
  v52 = a3;
  v54 = a2;
  v51 = a4;
  v55[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22634F04C();
  v50 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22634EE0C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v15 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v45 = v7;
    v46 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v44 = v5;
    v48 = v12;
    v49 = v15;
    v17 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v18 = v53;
    v19 = sub_22634F03C();
    v47 = v8;
    if (v18)
    {
      v53 = *(v9 + 8);
      v53(v14, v8);
      v21 = sub_22634F02C();
      v23 = v22;
    }

    else
    {
      v21 = v19;
      v23 = v20;
      v53 = *(v9 + 8);
      v53(v14, v8);
    }

    v24 = a1;
    v25 = sub_22634F02C();
    v27 = v48;
    if (v21 == v25 && v23 == v26)
    {
    }

    else
    {
      v28 = sub_226350C4C();

      if ((v28 & 1) == 0)
      {
        v40 = sub_22630606C();
        v39 = v52;
        v37 = v40;
        v38 = v54;
        v15 = v49;
LABEL_14:
        *(v24 + v46) = v37;
        swift_retain_n();

        sub_226307850(v37, v38, v39);

        goto LABEL_17;
      }
    }

    sub_22634F00C();
    v29 = objc_opt_self();
    v30 = [v29 defaultManager];
    sub_22634EDFC();
    v31 = sub_22635045C();

    v32 = [v30 fileExistsAtPath_];

    v15 = v49;
    if ((v32 & 1) == 0)
    {
      v33 = [v29 defaultManager];
      v34 = sub_22634EDDC();
      v55[0] = 0;
      v35 = [v33 createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:v55];

      if ((v35 & 1) == 0)
      {
        v41 = v55[0];
        sub_22634EDAC();

        swift_willThrow();
        v53(v27, v47);
        goto LABEL_17;
      }

      v36 = v55[0];
    }

    (*(v50 + 16))(v45, v24 + v17, v44);
    sub_22634EFFC();
    swift_allocObject();
    v37 = sub_22634EF9C();
    v53(v27, v47);
    v38 = v54;
    v39 = v52;
    goto LABEL_14;
  }

  sub_226307850(v16, v54, v52);

LABEL_17:
  os_unfair_lock_unlock(v15 + 4);
}

uint64_t sub_22630474C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a3;
  v57 = a2;
  v53 = a5;
  v58[1] = *MEMORY[0x277D85DE8];
  v7 = sub_22634F04C();
  v52 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22634EE0C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v45 - v15;
  v56 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v56 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v47 = v9;
    v48 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v46 = v7;
    v49 = v14;
    v50 = a4;
    v51 = v10;
    v19 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v20 = v54;
    v21 = sub_22634F03C();
    if (v20)
    {
      v23 = *(v11 + 8);
      v23(v16, v51);
      v24 = sub_22634F02C();
      v26 = v25;
    }

    else
    {
      v24 = v21;
      v26 = v22;
      v23 = *(v11 + 8);
      v23(v16, v51);
    }

    if (v24 == sub_22634F02C() && v26 == v27)
    {
    }

    else
    {
      v28 = sub_226350C4C();

      if ((v28 & 1) == 0)
      {
        v43 = sub_22630606C();
        v34 = v55;
        v39 = v43;
        v40 = v57;
        v41 = v50;
LABEL_16:
        *(a1 + v48) = v39;
        swift_retain_n();

        sub_2263072D0(v39, v40, v34, v41);

        os_unfair_lock_unlock(v56 + 4);
        goto LABEL_19;
      }
    }

    v45[1] = v11;
    v54 = v23;
    v29 = v49;
    sub_22634F00C();
    v30 = objc_opt_self();
    v31 = [v30 defaultManager];
    sub_22634EDFC();
    v32 = sub_22635045C();

    v33 = [v31 fileExistsAtPath_];

    v34 = v55;
    if ((v33 & 1) == 0)
    {
      v45[0] = v19;
      v35 = [v30 defaultManager];
      v36 = sub_22634EDDC();
      v58[0] = 0;
      v37 = [v35 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:v58];

      if ((v37 & 1) == 0)
      {
        v44 = v58[0];
        sub_22634EDAC();

        swift_willThrow();
        v54(v29, v51);
        os_unfair_lock_unlock(v56 + 4);
      }

      v38 = v58[0];
      v19 = v45[0];
    }

    (*(v52 + 16))(v47, a1 + v19, v46);
    sub_22634EFFC();
    swift_allocObject();
    v39 = sub_22634EF9C();
    v54(v29, v51);
    v40 = v57;
    v41 = v50;
    goto LABEL_16;
  }

  v18 = v54;
  sub_2263072D0(v17, v57, v55, a4);
  if (v18)
  {

    os_unfair_lock_unlock(v56 + 4);
  }

  os_unfair_lock_unlock(v56 + 4);
LABEL_19:
}

void sub_226304CC0(uint64_t a1)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22634F04C();
  v44 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22634EE0C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v12 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v40 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v41 = v9;
    v39 = v4;
    v42 = v12;
    v43 = v6;
    v14 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v15 = v45;
    v16 = sub_22634F03C();
    if (v15)
    {
      v45 = *(v43 + 8);
      v45(v11, v5);
      v18 = sub_22634F02C();
      v20 = v19;
    }

    else
    {
      v18 = v16;
      v20 = v17;
      v45 = *(v43 + 8);
      v45(v11, v5);
    }

    v21 = v14;
    v23 = v2;
    if (v18 == sub_22634F02C() && v20 == v22)
    {

      v24 = v41;
    }

    else
    {
      v25 = sub_226350C4C();

      v24 = v41;
      if ((v25 & 1) == 0)
      {
        v35 = sub_22630606C();
        goto LABEL_14;
      }
    }

    v41 = v23;
    sub_22634F00C();
    v26 = objc_opt_self();
    v27 = v21;
    v28 = [v26 defaultManager];
    sub_22634EDFC();
    v29 = sub_22635045C();

    v30 = [v28 fileExistsAtPath_];

    if ((v30 & 1) == 0)
    {
      v38 = v27;
      v31 = [v26 defaultManager];
      v32 = sub_22634EDDC();
      v46[0] = 0;
      v33 = [v31 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:v46];

      if ((v33 & 1) == 0)
      {
        v37 = v46[0];
        sub_22634EDAC();

        swift_willThrow();
        v45(v24, v5);
        v36 = v42;
        goto LABEL_17;
      }

      v34 = v46[0];
      v27 = v38;
    }

    (*(v44 + 16))(v39, a1 + v27, v41);
    sub_22634EFFC();
    swift_allocObject();
    v35 = sub_22634EF9C();
    v45(v24, v5);
LABEL_14:
    v36 = v42;
    *(a1 + v40) = v35;
    swift_retain_n();

    sub_22634EFEC();

LABEL_17:
    v13 = v36 + 4;
    goto LABEL_18;
  }

  sub_22634EFEC();

  v13 = v12 + 4;
LABEL_18:
  os_unfair_lock_unlock(v13);
}

void sub_226305194(uint64_t a1, uint64_t *a2)
{
  v46 = a2;
  v48[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22634F04C();
  v45 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22634EE0C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v13 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v39 = v3;
    v40 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v41 = v5;
    v42 = v10;
    v43 = v13;
    v44 = v7;
    v15 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v16 = v47;
    v17 = sub_22634F03C();
    if (v16)
    {
      v47 = *(v44 + 8);
      v47(v12, v6);
      v19 = sub_22634F02C();
      v21 = v20;
    }

    else
    {
      v19 = v17;
      v21 = v18;
      v47 = *(v44 + 8);
      v47(v12, v6);
    }

    v22 = v42;
    if (v19 == sub_22634F02C() && v21 == v23)
    {
    }

    else
    {
      v24 = sub_226350C4C();

      if ((v24 & 1) == 0)
      {
        v35 = sub_22630606C();
        v36 = v43;
        goto LABEL_14;
      }
    }

    sub_22634F00C();
    v25 = objc_opt_self();
    v26 = [v25 defaultManager];
    sub_22634EDFC();
    v27 = sub_22635045C();

    v28 = [v26 fileExistsAtPath_];

    v29 = v6;
    v30 = v41;
    if ((v28 & 1) == 0)
    {
      v42 = v29;
      v38 = v15;
      v31 = [v25 defaultManager];
      v32 = sub_22634EDDC();
      v48[0] = 0;
      v33 = [v31 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:v48];

      if ((v33 & 1) == 0)
      {
        v37 = v48[0];
        sub_22634EDAC();

        swift_willThrow();
        v47(v22, v42);
        v36 = v43;
        goto LABEL_17;
      }

      v34 = v48[0];
      v15 = v38;
      v29 = v42;
    }

    (*(v45 + 16))(v30, a1 + v15, v39);
    sub_22634EFFC();
    swift_allocObject();
    v35 = sub_22634EF9C();
    v47(v22, v29);
    v36 = v43;
LABEL_14:
    *(a1 + v40) = v35;
    swift_retain_n();

    sub_22634EFBC();

LABEL_17:
    v14 = v36 + 4;
    goto LABEL_18;
  }

  sub_22634EFBC();

  v14 = v13 + 4;
LABEL_18:
  os_unfair_lock_unlock(v14);
}

void sub_226305698(uint64_t a1)
{
  v50[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22634F04C();
  v48 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22634EE0C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  v12 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v12 + 4);
  if (*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {

    sub_22634EFDC();

    os_unfair_lock_unlock(v12 + 4);
    return;
  }

  v42 = v4;
  v43 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
  v45 = v9;
  v46 = v12;
  v47 = v6;
  v13 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
  sub_22634F00C();
  v14 = v49;
  v15 = sub_22634F03C();
  if (v14)
  {
    v44 = *(v47 + 8);
    v44(v11, v5);
    v17 = sub_22634F02C();
    v19 = v18;

    v49 = 0;
  }

  else
  {
    v17 = v15;
    v19 = v16;
    v49 = 0;
    v44 = *(v47 + 8);
    v44(v11, v5);
  }

  v20 = v48;
  v21 = v13;
  v22 = sub_22634F02C();
  v48 = v2;
  v24 = a1;
  if (v17 == v22 && v19 == v23)
  {

    v25 = v45;
  }

  else
  {
    v26 = sub_226350C4C();

    v25 = v45;
    if ((v26 & 1) == 0)
    {
      v39 = v49;
      v40 = sub_22630606C();
      if (!v39)
      {
        v36 = v40;
        v37 = v46;
        goto LABEL_14;
      }

      goto LABEL_18;
    }
  }

  v45 = v5;
  sub_22634F00C();
  v27 = objc_opt_self();
  v28 = v21;
  v29 = [v27 defaultManager];
  sub_22634EDFC();
  v30 = sub_22635045C();

  v31 = [v29 fileExistsAtPath_];

  if ((v31 & 1) == 0)
  {
    v32 = [v27 defaultManager];
    v33 = sub_22634EDDC();
    v50[0] = 0;
    v34 = [v32 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:v50];

    if (v34)
    {
      v35 = v50[0];
      goto LABEL_13;
    }

    v41 = v50[0];
    sub_22634EDAC();

    swift_willThrow();
    v44(v25, v45);
LABEL_18:
    v38 = v46 + 4;
    goto LABEL_19;
  }

LABEL_13:
  (*(v20 + 16))(v42, a1 + v28, v48);
  sub_22634EFFC();
  swift_allocObject();
  v36 = sub_22634EF9C();
  v44(v25, v45);
  v37 = v46;
  v24 = a1;
LABEL_14:
  *(v24 + v43) = v36;
  swift_retain_n();

  sub_22634EFDC();

  v38 = v37 + 4;
LABEL_19:
  os_unfair_lock_unlock(v38);
}

void sub_226305B74(uint64_t a1)
{
  v47[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22634F04C();
  v44 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22634EE0C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  v12 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v12 + 4);
  if (*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {

    sub_2263091C0(v47);

    os_unfair_lock_unlock(v12 + 4);
    return;
  }

  v40 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
  v41 = v9;
  v39 = v4;
  v42 = v12;
  v43 = v6;
  v13 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
  sub_22634F00C();
  v14 = v45;
  v15 = sub_22634F03C();
  if (v14)
  {
    v45 = *(v43 + 8);
    v45(v11, v5);
    v17 = sub_22634F02C();
    v19 = v18;
  }

  else
  {
    v17 = v15;
    v19 = v16;
    v45 = *(v43 + 8);
    v45(v11, v5);
  }

  v20 = v13;
  v22 = v2;
  if (v17 == sub_22634F02C() && v19 == v21)
  {

    v23 = v41;
  }

  else
  {
    v24 = sub_226350C4C();

    v23 = v41;
    if ((v24 & 1) == 0)
    {
      v34 = sub_22630606C();
      goto LABEL_14;
    }
  }

  v41 = v22;
  sub_22634F00C();
  v25 = objc_opt_self();
  v26 = v20;
  v27 = [v25 defaultManager];
  sub_22634EDFC();
  v28 = sub_22635045C();

  v29 = [v27 fileExistsAtPath_];

  if (v29)
  {
LABEL_13:
    (*(v44 + 16))(v39, a1 + v26, v41);
    sub_22634EFFC();
    swift_allocObject();
    v34 = sub_22634EF9C();
    v45(v23, v5);
LABEL_14:
    v35 = v42;
    *(a1 + v40) = v34;
    swift_retain_n();

    sub_2263091C0(v47);

    os_unfair_lock_unlock(v35 + 4);
    return;
  }

  v38 = v26;
  v30 = [v25 defaultManager];
  v31 = sub_22634EDDC();
  v46 = 0;
  v32 = [v30 createDirectoryAtURL:v31 withIntermediateDirectories:1 attributes:0 error:&v46];

  if (v32)
  {
    v33 = v46;
    v26 = v38;
    goto LABEL_13;
  }

  v36 = v46;
  sub_22634EDAC();

  swift_willThrow();
  v45(v23, v5);
  os_unfair_lock_unlock(v42 + 4);
}

uint64_t sub_22630606C()
{
  v2 = sub_22634F04C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
  v7 = *(v3 + 16);
  v13 = v0;
  v7(v5, v0 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config, v2);
  sub_22634EFFC();
  swift_allocObject();
  v8 = sub_22634EF9C();
  v9 = sub_22634EF6C();
  if (v1)
  {
  }

  else
  {
    v12[0] = v6;
    v12[1] = v9;
    v10 = v13;
    sub_22634EF7C();
    v7(v5, v10 + v12[0], v2);
    swift_allocObject();
    v8 = sub_22634EF9C();
    sub_22634EFBC();
  }

  return v8;
}

void *sub_22630625C(void *result, uint64_t a2, __n128 a3)
{
  if (result)
  {
    if ((a2 - 0x2000000000000000) >> 62 == 3)
    {
      v3 = 4 * a2;
      if (4 * a2)
      {
        if (v3 <= 14)
        {
          return sub_22630BF88(result, result + v3);
        }

        else
        {
          sub_22634ED8C();
          swift_allocObject();
          sub_22634ED7C();
          if (v3 >= 0x7FFFFFFF)
          {
            sub_22634EE1C();
            result = swift_allocObject();
            result[2] = 0;
            result[3] = v3;
          }

          else
          {
            return (a2 << 34);
          }
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_226306330(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931B0, &unk_226354450);
  v3 = sub_22634F14C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_226351C90;
  (*(v4 + 16))(v6 + v5, a2, v3);
  sub_22634EFBC();
}

void (*sub_226306440(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8))(char *, uint64_t, uint64_t)
{
  v123 = a8;
  v122 = a7;
  v144 = a5;
  v119 = a4;
  v128 = a3;
  v117 = a2;
  v115 = sub_22634F0AC();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v13 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22634F0EC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22634F06C();
  v19 = *(v18 - 8);
  v147 = v18;
  v148 = v19;
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  v118 = &v111 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v116 = &v111 - v24;
  MEMORY[0x28223BE20](v23);
  v28 = &v111 - v27;
  if (!a1)
  {
    return sub_2262FE100(MEMORY[0x277D84F90]);
  }

  v112 = v25;
  v113 = a6;
  v149 = v13;
  v124 = v9;
  v120 = sub_22630625C((a1 + 32), *(a1 + 16), v26);
  v121 = v29;
  v30 = *(v15 + 16);
  v145 = v15 + 16;
  v146 = v8;
  v141 = v30;
  v142 = v14;
  v30(v17, v8 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_isMissingEmbeddingAttribute, v14);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793348, &unk_2263529F0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793350, &unk_2263543E0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v137 = *(v33 + 80);
  v138 = v34;
  v140 = v31;
  v36 = swift_allocObject();
  v135 = xmmword_226351C90;
  *(v36 + 16) = xmmword_226351C90;
  v125 = v35;
  v37 = v36 + v35;
  v139 = v32;
  v38 = *(v32 + 48);
  v39 = *MEMORY[0x277D78238];
  v40 = sub_22634F0CC();
  v41 = *(v40 - 8);
  v42 = *(v41 + 104);
  v136 = v39;
  v134 = v40;
  v133 = v42;
  v132 = v41 + 104;
  (v42)(v37, v39);
  *(v37 + v38) = 0;
  v43 = *MEMORY[0x277D78290];
  v44 = sub_22634F10C();
  v45 = *(v44 - 8);
  v46 = *(v45 + 104);
  v131 = v45 + 104;
  v130 = v46;
  v46((v37 + v38), v43, v44);
  v129 = *(v45 + 56);
  v129(v37 + v38, 0, 1, v44);
  v143 = v17;
  sub_22634F05C();
  v47 = sub_2262DC96C(0, 1, 1, MEMORY[0x277D84F90]);
  v49 = v47[2];
  v48 = v47[3];
  v50 = v49 + 1;
  if (v49 >= v48 >> 1)
  {
LABEL_46:
    v47 = sub_2262DC96C((v48 > 1), v50, 1, v47);
  }

  v51 = v148;
  v52 = v128;
  v47[2] = v50;
  v54 = *(v51 + 4);
  v53 = v51 + 32;
  v127 = (v53[48] + 32) & ~v53[48];
  v126 = *(v53 + 5);
  v128 = v54;
  v54(v47 + v127 + v126 * v49, v28, v147);
  v153 = v47;
  v55 = MEMORY[0x277D78288];
  if (v52)
  {
    v141(v143, v146 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_majorLabelAttribute, v142);
    v56 = v125;
    v57 = swift_allocObject();
    *(v57 + 16) = v135;
    v58 = (v57 + v56 + *(v139 + 48));
    v133();
    *v58 = v117;
    v58[1] = v52;
    v130(v58, *v55, v44);
    v129(v58, 0, 1, v44);

    v59 = v116;
    sub_22634F05C();
    v61 = v47[2];
    v60 = v47[3];
    if (v61 >= v60 >> 1)
    {
      v47 = sub_2262DC96C((v60 > 1), v61 + 1, 1, v47);
    }

    v47[2] = v61 + 1;
    v128(v47 + v127 + v61 * v126, v59, v147);
    v153 = v47;
  }

  v62 = v122;
  v63 = v144;
  v148 = v53;
  if (v144)
  {
    v141(v143, v146 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_minorLabelAttribute, v142);
    v64 = v125;
    v65 = swift_allocObject();
    *(v65 + 16) = v135;
    v66 = (v65 + v64 + *(v139 + 48));
    v133();
    *v66 = v119;
    v66[1] = v63;
    v130(v66, *MEMORY[0x277D78288], v44);
    v129(v66, 0, 1, v44);

    v67 = v118;
    sub_22634F05C();
    v69 = v47[2];
    v68 = v47[3];
    if (v69 >= v68 >> 1)
    {
      v47 = sub_2262DC96C((v68 > 1), v69 + 1, 1, v47);
    }

    v47[2] = v69 + 1;
    v128(v47 + v127 + v69 * v126, v67, v147);
    v153 = v47;
  }

  v144 = v47;
  v70 = MEMORY[0x277D78288];
  if (v62)
  {
    v141(v143, v146 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_appInFocusAttribute, v142);
    v71 = v125;
    v72 = swift_allocObject();
    *(v72 + 16) = v135;
    v73 = (v72 + v71 + *(v139 + 48));
    v133();
    *v73 = v113;
    v73[1] = v62;
    v130(v73, *v70, v44);
    v129(v73, 0, 1, v44);

    v74 = v112;
    sub_22634F05C();
    v76 = v144[2];
    v75 = v144[3];
    if (v76 >= v75 >> 1)
    {
      v144 = sub_2262DC96C((v75 > 1), v76 + 1, 1, v144);
    }

    v77 = v124;
    v78 = v121;
    v79 = v120;
    v80 = v123;
    v81 = v144;
    v144[2] = v76 + 1;
    v44 = v149;
    v128(v81 + v127 + v76 * v126, v74, v147);
    v153 = v81;
  }

  else
  {
    v77 = v124;
    v44 = v149;
    v78 = v121;
    v79 = v120;
    v80 = v123;
  }

  sub_2262D6170(v79, v78);
  v83 = sub_226302F60(v146, v79, v78, &v153, v80);
  v84 = v77;
  if (v77)
  {
    sub_2262D611C(v79, v78);
  }

  if (!*(v83 + 16))
  {
    sub_2262D611C(v79, v78);

    return MEMORY[0x277D84F98];
  }

  v85 = *(v83 + 32);

  v148 = *(v85 + 16);
  if (!v148)
  {
    v141 = MEMORY[0x277D84F98];
LABEL_44:
    sub_2262D611C(v120, v121);

    return v141;
  }

  v28 = 0;
  v50 = v114;
  v147 = v85 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
  v146 = v114 + 16;
  v47 = (v114 + 8);
  v141 = MEMORY[0x277D84F98];
  v49 = v115;
  while (1)
  {
    v48 = *(v85 + 16);
    if (v28 >= v48)
    {
      __break(1u);
      goto LABEL_46;
    }

    (*(v50 + 16))(v44, v147 + *(v50 + 72) * v28, v49);
    v86 = sub_22634F09C();
    if (v87 >> 60 == 15)
    {
      (*v47)(v44, v49);
      goto LABEL_23;
    }

    v88 = v86;
    v89 = v87;
    sub_22634ED1C();
    swift_allocObject();
    sub_22634ED0C();
    sub_22630BE08();
    sub_22634ECFC();
    if (v84)
    {

      sub_2262D66C4(v88, v89);
      v44 = v149;
      (*v47)(v149, v49);
      v84 = 0;
      goto LABEL_23;
    }

    v145 = v151;
    v142 = v150;
    v143 = v152;
    sub_22634F08C();
    if ((~v90 & 0x7FF0000000000000) == 0 && (v90 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v91 = v149;
      (*v47)(v149, v49);

      v92 = v88;
      v44 = v91;
      sub_2262D66C4(v92, v89);
      goto LABEL_23;
    }

    v124 = 0;
    sub_22634F08C();
    v94 = v93;
    v95 = v141;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v150 = v95;
    v98 = sub_22633941C(v142, v145);
    v99 = *(v95 + 2);
    v100 = (v97 & 1) == 0;
    v101 = v99 + v100;
    if (__OFADD__(v99, v100))
    {
      break;
    }

    v102 = v97;
    if (*(v95 + 3) >= v101)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22633A104();
      }
    }

    else
    {
      sub_226336994(v101, isUniquelyReferenced_nonNull_native);
      v103 = sub_22633941C(v142, v145);
      if ((v102 & 1) != (v104 & 1))
      {
        goto LABEL_49;
      }

      v98 = v103;
    }

    v105 = v150;
    v141 = v150;
    if (v102)
    {
      *(*(v150 + 56) + 8 * v98) = v94;
      sub_2262D66C4(v88, v89);

      v44 = v149;
      v49 = v115;
      (*v47)(v149, v115);
    }

    else
    {
      *(v150 + 8 * (v98 >> 6) + 64) |= 1 << v98;
      v106 = (v105[6] + 16 * v98);
      v107 = v145;
      *v106 = v142;
      v106[1] = v107;
      *(v105[7] + 8 * v98) = v94;
      sub_2262D66C4(v88, v89);

      v44 = v149;
      v49 = v115;
      (*v47)(v149, v115);
      v108 = v105[2];
      v109 = __OFADD__(v108, 1);
      v110 = v108 + 1;
      if (v109)
      {
        goto LABEL_48;
      }

      v105[2] = v110;
    }

    v84 = v124;
    v50 = v114;
LABEL_23:
    if (v148 == ++v28)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_226350C8C();
  __break(1u);
  return result;
}

uint64_t sub_2263072D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v7 = sub_22634F0EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931E0, &qword_2263524F0);
  sub_22634F06C();
  v11 = swift_allocObject();
  v24 = xmmword_226351C90;
  *(v11 + 16) = xmmword_226351C90;
  (*(v8 + 16))(v10, a2 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_bundleIdAttribute, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793348, &unk_2263529F0);
  v12 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793350, &unk_2263543E0) - 8);
  v13 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v24;
  v15 = v14 + v13;
  v16 = (v14 + v13 + v12[14]);
  v17 = *MEMORY[0x277D78238];
  v18 = sub_22634F0CC();
  (*(*(v18 - 8) + 104))(v15, v17, v18);
  *v16 = a3;
  v16[1] = a4;
  v19 = *MEMORY[0x277D78288];
  v20 = sub_22634F10C();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v16, v19, v20);
  (*(v21 + 56))(v16, 0, 1, v20);

  sub_22634F05C();
  v22 = v26;
  sub_22634EF5C();

  if (!v22)
  {
    sub_22634EFAC();
  }

  return result;
}

uint64_t sub_22630761C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22634F14C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F90];
  result = sub_22634EF6C();
  if (!v2)
  {
    v25[2] = 0;
    v10 = *(result + 16);
    if (v10)
    {
      v29 = v7;
      v25[0] = a1;
      v31 = v8;
      v11 = result;
      sub_226316630(0, v10, 0);
      v12 = v31;
      v14 = *(v5 + 16);
      v13 = v5 + 16;
      v15 = *(v13 + 64);
      v25[1] = v11;
      v16 = v11 + ((v15 + 32) & ~v15);
      v27 = *(v13 + 56);
      v28 = v14;
      v26 = (v13 - 8);
      v30 = v13;
      do
      {
        v17 = v29;
        v28(v29, v16, v4);
        v18 = sub_22634F12C();
        v20 = v19;
        v21 = v4;
        (*v26)(v17, v4);
        v31 = v12;
        v23 = *(v12 + 16);
        v22 = *(v12 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_226316630((v22 > 1), v23 + 1, 1);
          v12 = v31;
        }

        *(v12 + 16) = v23 + 1;
        v24 = v12 + 16 * v23;
        *(v24 + 32) = v18;
        *(v24 + 40) = v20;
        v16 += v27;
        --v10;
        v4 = v21;
      }

      while (v10);
    }

    sub_22634EFAC();
  }

  return result;
}

uint64_t sub_226307850(uint64_t a1, uint64_t a2, void (*a3)(void, void, void))
{
  v50 = a3;
  v5 = sub_22634F14C();
  v49 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793890, &qword_226354440);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793898, &qword_226354448) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_226351C90;
  v11 = v10 + v9;
  v12 = v8[14];
  v13 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_timestampAttribute;
  v14 = sub_22634F0EC();
  (*(*(v14 - 8) + 16))(v11, a2 + v13, v14);
  *(v11 + v12) = 1;
  v15 = MEMORY[0x277D84F90];
  v16 = v52;
  v17 = sub_22634EF6C();

  if (v16)
  {
    return result;
  }

  v47[2] = 0;
  v51 = v5;
  v52 = v7;
  v19 = v49;
  v23 = sub_2262FF0FC(v50 / 2, v17, MEMORY[0x277D782B0]);
  if ((v22 & 1) == 0)
  {
    goto LABEL_3;
  }

  v27 = v22;
  v28 = v21;
  v29 = v20;
  sub_226350C5C();
  swift_unknownObjectRetain_n();
  v30 = swift_dynamicCastClass();
  if (!v30)
  {
    swift_unknownObjectRelease();
    v30 = MEMORY[0x277D84F90];
  }

  v31 = *(v30 + 16);

  if (__OFSUB__(v27 >> 1, v28))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v31 != (v27 >> 1) - v28)
  {
LABEL_19:
    swift_unknownObjectRelease();
    v22 = v27;
    v21 = v28;
    v20 = v29;
LABEL_3:
    sub_226309820(v23, v20, v21, v22, &qword_27D7931B0, &unk_226354450, MEMORY[0x277D782B0]);
    v25 = v24;
    v26 = v52;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v25 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v26 = v52;
  if (!v25)
  {
    v25 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

LABEL_11:
  v32 = *(v25 + 16);
  if (v32)
  {
    v47[1] = a1;
    v53 = v15;
    sub_226316630(0, v32, 0);
    v33 = v53;
    v34 = v19 + 16;
    v35 = *(v19 + 16);
    v36 = *(v19 + 80);
    v47[0] = v25;
    v37 = v25 + ((v36 + 32) & ~v36);
    v49 = *(v34 + 56);
    v50 = v35;
    v48 = (v34 - 8);
    v38 = v51;
    do
    {
      v39 = v34;
      (v50)(v26, v37, v38);
      v40 = sub_22634F12C();
      v38 = v51;
      v41 = v40;
      v43 = v42;
      (*v48)(v26, v51);
      v53 = v33;
      v45 = *(v33 + 16);
      v44 = *(v33 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_226316630((v44 > 1), v45 + 1, 1);
        v38 = v51;
        v33 = v53;
      }

      *(v33 + 16) = v45 + 1;
      v46 = v33 + 16 * v45;
      *(v46 + 32) = v41;
      *(v46 + 40) = v43;
      v37 += v49;
      --v32;
      v34 = v39;
      v26 = v52;
    }

    while (v32);
  }

  sub_22634EFAC();
}

uint64_t sub_226307C9C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v37 = a3;
  v38 = a2;
  v5 = sub_22634F0EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22634F06C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v40 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;

  v12 = sub_22634EF8C();

  if (!v3)
  {
    v35 = v10;
    v36 = v9;
    (*(v6 + 16))(v8, v38 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_bundleIdAttribute, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793348, &unk_2263529F0);
    v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793350, &unk_2263543E0) - 8);
    v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_226351C90;
    v17 = v16 + v15;
    v18 = (v16 + v15 + v14[14]);
    v19 = *MEMORY[0x277D78238];
    v20 = sub_22634F0CC();
    (*(*(v20 - 8) + 104))(v17, v19, v20);
    *v18 = sub_22634FFAC();
    v18[1] = v21;
    v22 = *MEMORY[0x277D78288];
    v23 = sub_22634F10C();
    v24 = *(v23 - 8);
    (*(v24 + 104))(v18, v22, v23);
    (*(v24 + 56))(v18, 0, 1, v23);
    v25 = v40;
    sub_22634F05C();
    v26 = v39;
    v27 = *v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v26 = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_2262DC96C(0, v27[2] + 1, 1, v27);
      *v26 = v27;
    }

    v29 = v35;
    v31 = v27[2];
    v30 = v27[3];
    if (v31 >= v30 >> 1)
    {
      v33 = sub_2262DC96C((v30 > 1), v31 + 1, 1, v27);
      v25 = v40;
      v27 = v33;
      *v26 = v33;
    }

    v27[2] = v31 + 1;
    (*(v29 + 32))(v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v31, v25);

    v32 = sub_22634EF8C();

    if (__OFSUB__(v12, v32))
    {
      __break(1u);
    }

    else
    {
      *v37 = v12 - v32;
    }
  }

  return result;
}

id sub_2263080C4(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v4 = sub_22634F0EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931E0, &qword_2263524F0);
  sub_22634F06C();
  v8 = swift_allocObject();
  v22 = xmmword_226351C90;
  *(v8 + 16) = xmmword_226351C90;
  (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_appInFocusAttribute, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793348, &unk_2263529F0);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793350, &unk_2263543E0) - 8);
  v10 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v22;
  v12 = v11 + v10;
  v13 = (v11 + v10 + v9[14]);
  v14 = *MEMORY[0x277D78238];
  v15 = sub_22634F0CC();
  (*(*(v15 - 8) + 104))(v12, v14, v15);
  v16 = v24;
  *v13 = a1;
  v13[1] = v16;
  v17 = *MEMORY[0x277D78288];
  v18 = sub_22634F10C();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v13, v17, v18);
  (*(v19 + 56))(v13, 0, 1, v18);

  sub_22634F05C();

  v20 = sub_226301ADC(v23, v8);

  return v20;
}

uint64_t sub_2263083FC(uint64_t a1)
{
  v3 = sub_22635004C();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_226305698(v1);
  v7 = sub_22635064C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;

  sub_226308F24(0, 0, v6, &unk_2263543D0, v8);
}

uint64_t sub_2263086C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[10] = *a5;
  v6 = sub_22634FF9C();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793BC0, &qword_2263525D8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2263087EC, 0, 0);
}

uint64_t sub_2263087EC()
{
  sub_226305B74(*(v0 + 64));
  *(v0 + 128) = v1;
  v3 = *(v0 + 72);
  v4 = *(v1 + 32);
  *(v0 + 184) = v4;
  v5 = -1;
  v6 = -1 << v4;
  v7 = *(v1 + 56);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  *(v0 + 136) = 0;
  v8 = v5 & v7;
  if (v8)
  {
    v9 = 0;
LABEL_12:
    *(v0 + 144) = v8;
    *(v0 + 152) = v9;
    v12 = (*(v1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v8)))));
    *(v0 + 160) = *v12;
    *(v0 + 168) = v12[1];

    return MEMORY[0x2822009F8](sub_226308990, v3, 0);
  }

  else
  {
    v10 = 0;
    v11 = ((63 - v6) >> 6) - 1;
    while (v11 != v10)
    {
      v9 = v10 + 1;
      v8 = *(v1 + 8 * v10++ + 64);
      if (v8)
      {
        goto LABEL_12;
      }
    }

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_226308990()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_22633941C(v0[20], v0[21]), (v4 & 1) != 0))
  {
    (*(v0[12] + 16))(v0[15], *(v2 + 56) + *(v0[12] + 72) * v3, v0[11]);
    swift_endAccess();

    v5 = v0[17];
  }

  else
  {
    v6 = v0[20];
    v7 = v0[21];
    v8 = v0[17];
    v9 = v0[14];
    swift_endAccess();
    sub_226330584(v6, v7, v9);
    if (v8)
    {

      v10 = sub_226308B7C;
      goto LABEL_8;
    }

    v12 = v0[20];
    v11 = v0[21];
    v14 = v0[14];
    v13 = v0[15];
    v16 = v0[12];
    v15 = v0[13];
    v17 = v0[11];
    v18 = v0[9];
    swift_beginAccess();
    (*(v16 + 16))(v15, v14, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v18 + 112);
    *(v18 + 112) = 0x8000000000000000;
    sub_2262E3608(v15, v12, v11, isUniquelyReferenced_nonNull_native);

    *(v18 + 112) = v21;
    swift_endAccess();
    (*(v16 + 32))(v13, v14, v17);
    v5 = 0;
  }

  v0[22] = v5;
  v10 = sub_226308D90;
LABEL_8:

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_226308B7C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 120);
  v4 = *(v0 + 64);
  (*(*(v0 + 96) + 56))(v3, 1, 1, *(v0 + 88));
  sub_2262D67D8(v3, &unk_27D793BC0, &qword_2263525D8);

  sub_22630474C(v5, v4, v1, v2, v6);

  v12 = *(v0 + 144);
  v11 = *(v0 + 152);
  *(v0 + 136) = 0;
  v13 = (v12 - 1) & v12;
  if (v13)
  {
    v8 = *(v0 + 128);
LABEL_11:
    *(v0 + 144) = v13;
    *(v0 + 152) = v11;
    v15 = *(v0 + 72);
    v16 = (*(v8 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v13)))));
    *(v0 + 160) = *v16;
    *(v0 + 168) = v16[1];

    v8 = sub_226308990;
    v9 = v15;
    v10 = 0;

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {
    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v8, v9, v10);
      }

      v8 = *(v0 + 128);
      if (v14 >= (((1 << *(v0 + 184)) + 63) >> 6))
      {
        break;
      }

      v13 = *(v8 + 8 * v14 + 56);
      ++v11;
      if (v13)
      {
        v11 = v14;
        goto LABEL_11;
      }
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_226308D90()
{
  v1 = *(v0 + 120);
  (*(*(v0 + 96) + 56))(v1, 0, 1, *(v0 + 88));
  v2 = sub_2262D67D8(v1, &unk_27D793BC0, &qword_2263525D8);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  *(v0 + 136) = *(v0 + 176);
  v7 = (v6 - 1) & v6;
  if (v7)
  {
    v2 = *(v0 + 128);
LABEL_7:
    *(v0 + 144) = v7;
    *(v0 + 152) = v5;
    v9 = *(v0 + 72);
    v10 = (*(v2 + 48) + ((v5 << 10) | (16 * __clz(__rbit64(v7)))));
    *(v0 + 160) = *v10;
    *(v0 + 168) = v10[1];

    v2 = sub_226308990;
    v3 = v9;
    v4 = 0;

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v2, v3, v4);
      }

      v2 = *(v0 + 128);
      if (v8 >= (((1 << *(v0 + 184)) + 63) >> 6))
      {
        break;
      }

      v7 = *(v2 + 8 * v8 + 56);
      ++v5;
      if (v7)
      {
        v5 = v8;
        goto LABEL_7;
      }
    }

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_226308F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_226309A84(a3, v22 - v9);
  v11 = sub_22635064C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2262D67D8(v10, &qword_27D7939E0, &qword_2263548B0);
  }

  else
  {
    sub_22635063C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2263505BC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2263504DC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_2262D67D8(a3, &qword_27D7939E0, &qword_2263548B0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2262D67D8(a3, &qword_27D7939E0, &qword_2263548B0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2263091C0@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_22634F14C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22634EF6C();
  if (!v1)
  {
    v8 = *(result + 16);
    if (v8)
    {
      v24[1] = result;
      v25 = a1;
      v10 = *(v4 + 16);
      v9 = v4 + 16;
      v11 = result + ((*(v9 + 64) + 32) & ~*(v9 + 64));
      v28 = *(v9 + 56);
      v29 = v10;
      v32 = v9;
      v12 = (v9 - 8);
      v27 = MEMORY[0x277D84F90];
      v10(v6, v11, v3);
      while (1)
      {
        v13 = sub_22634F13C();
        if (v14 >> 60 == 15)
        {
          (*v12)(v6, v3);
        }

        else
        {
          v15 = v13;
          v16 = v14;
          sub_22634ED1C();
          swift_allocObject();
          sub_22634ED0C();
          sub_22630BE08();
          sub_22634ECFC();
          (*v12)(v6, v3);
          sub_2262D66C4(v15, v16);

          v17 = v31;
          v26 = v30;
          v18 = (swift_isUniquelyReferenced_nonNull_native() & 1) != 0 ? v27 : sub_2262DCFC4(0, *(v27 + 2) + 1, 1, v27);
          v20 = *(v18 + 2);
          v19 = *(v18 + 3);
          if (v20 >= v19 >> 1)
          {
            v18 = sub_2262DCFC4((v19 > 1), v20 + 1, 1, v18);
          }

          *(v18 + 2) = v20 + 1;
          v27 = v18;
          v21 = &v18[16 * v20];
          *(v21 + 4) = v26;
          *(v21 + 5) = v17;
        }

        v11 += v28;
        if (!--v8)
        {
          break;
        }

        v29(v6, v11, v3);
      }

      a1 = v25;
      v22 = v27;
    }

    else
    {

      v22 = MEMORY[0x277D84F90];
    }

    v23 = sub_22630BD70(v22);

    *a1 = v23;
  }

  return result;
}

uint64_t sub_2263094D4()
{
  v1 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
  v2 = sub_22634F04C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_bundleIdAttribute;
  v4 = sub_22634F0EC();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_majorLabelAttribute, v4);
  v5(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_minorLabelAttribute, v4);
  v5(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_actionIdAttribute, v4);
  v5(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_timestampAttribute, v4);
  v5(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_isMissingEmbeddingAttribute, v4);
  v5(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_appInFocusAttribute, v4);
  return v0;
}

uint64_t sub_226309650()
{
  sub_2263094D4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VectorDatabase(uint64_t a1)
{
  result = qword_28137E988;
  if (!qword_28137E988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2263096FC(uint64_t a1)
{
  result = sub_22634F04C();
  if (v2 <= 0x3F)
  {
    result = sub_22634F0EC();
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

void sub_226309820(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_2263099C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2262D641C;

  return sub_2263086C0(a1, v4, v5, v7, v6);
}

uint64_t sub_226309A84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226309AF4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_226350CEC();
  sub_2263504EC();
  v8 = sub_226350D0C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_226350C4C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_22630A9F8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_226309C44(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22634EEFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22630C1DC(&qword_28137FA50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_22635040C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_22630C1DC(&qword_28137FA40, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_22635044C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_22630AB78(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_226309F24(void *a1, void *a2)
{
  v4 = *v2;
  sub_226350CEC();
  v6 = *a2;
  v5 = a2[1];
  sub_2263504EC();
  v7 = a2[2];
  v36 = a2[3];
  sub_2263504EC();
  v32 = a2;
  v34 = a2[4];
  sub_22635083C();
  v8 = sub_226350D0C();
  v9 = v4 + 56;
  v35 = v4;
  v10 = -1 << *(v4 + 32);
  v11 = v8 & ~v10;
  if ((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v15 = (*(v35 + 48) + 40 * v11);
      v16 = v15[2];
      v17 = v15[3];
      v18 = v15[4];
      v19 = *v15 == v6 && v15[1] == v5;
      if (v19 || (sub_226350C4C() & 1) != 0)
      {
        v20 = v16 == v7 && v17 == v36;
        if (v20 || (sub_226350C4C() & 1) != 0)
        {
          sub_2262DA244();

          v13 = v18;
          v14 = sub_22635082C();

          if (v14)
          {
            break;
          }
        }
      }

      v11 = (v11 + 1) & v12;
      if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v25 = (*(v35 + 48) + 40 * v11);
    v26 = v25[1];
    v27 = v25[2];
    v28 = v25[3];
    v29 = v25[4];
    *a1 = *v25;
    a1[1] = v26;
    a1[2] = v27;
    a1[3] = v28;
    a1[4] = v29;

    v30 = v29;
    return 0;
  }

  else
  {
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *v31;

    v22 = v34;
    sub_22630AE1C(v32, v11, isUniquelyReferenced_nonNull_native);
    *v31 = v37;
    v23 = *(v32 + 1);
    *a1 = *v32;
    *(a1 + 1) = v23;
    a1[4] = v32[4];
    return 1;
  }
}

uint64_t sub_22630A194(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793858, &unk_226355300);
  result = sub_22635093C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_226350CEC();
      sub_2263504EC();
      result = sub_226350D0C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22630A3F4(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22634EEFC();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793888, &qword_226354438);
  result = sub_22635093C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_22630C1DC(&qword_28137FA50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22635040C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_22630A750(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793860, &unk_2263543F0);
  result = sub_22635093C();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v1;
    v33 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 40 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      v23 = v18[4];
      sub_226350CEC();
      sub_2263504EC();
      sub_2263504EC();
      sub_22635083C();
      result = sub_226350D0C();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 40 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      v14[4] = v23;
      ++*(v5 + 16);
      v3 = v33;
      v10 = v34;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_22630A9F8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22630A194(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_22630B06C();
      goto LABEL_16;
    }

    sub_22630B584(v8 + 1);
  }

  v10 = *v4;
  sub_226350CEC();
  sub_2263504EC();
  v11 = sub_226350D0C();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_226350C4C() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_226350C7C();
  __break(1u);
}

uint64_t sub_22630AB78(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_22634EEFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22630A3F4(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_22630B1C8();
      goto LABEL_12;
    }

    sub_22630B7BC(v10 + 1);
  }

  v12 = *v3;
  sub_22630C1DC(&qword_28137FA50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = sub_22635040C();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_22630C1DC(&qword_28137FA40, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_22635044C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_226350C7C();
  __break(1u);
  return result;
}

uint64_t sub_22630AE1C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v30 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a3)
  {
    sub_22630A750(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_22630B400();
      goto LABEL_23;
    }

    sub_22630BAD8(v6 + 1);
  }

  v8 = *v3;
  sub_226350CEC();
  v9 = *v5;
  v10 = v5[1];
  sub_2263504EC();
  v11 = v5[3];
  v32 = v5[2];
  sub_2263504EC();
  sub_22635083C();
  result = sub_226350D0C();
  v31 = v8;
  v12 = -1 << *(v8 + 32);
  a2 = result & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = v8 + 56;
    v14 = ~v12;
    do
    {
      v17 = (*(v31 + 48) + 40 * a2);
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[4];
      v21 = *v17 == v9 && v17[1] == v10;
      if (v21 || (result = sub_226350C4C(), (result & 1) != 0))
      {
        v22 = v18 == v32 && v19 == v11;
        if (v22 || (result = sub_226350C4C(), (result & 1) != 0))
        {
          sub_2262DA244();

          v15 = v20;
          v16 = sub_22635082C();

          if (v16)
          {
            goto LABEL_26;
          }
        }
      }

      a2 = (a2 + 1) & v14;
    }

    while (((*(v13 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_23:
  v23 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v24 = *(v23 + 48) + 40 * a2;
  v25 = *(v30 + 16);
  *v24 = *v30;
  *(v24 + 16) = v25;
  *(v24 + 32) = *(v30 + 32);
  v26 = *(v23 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v23 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_26:
  result = sub_226350C7C();
  __break(1u);
  return result;
}

void sub_22630B06C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793858, &unk_226355300);
  v2 = *v0;
  v3 = sub_22635092C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void *sub_22630B1C8()
{
  v1 = v0;
  v2 = sub_22634EEFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793888, &qword_226354438);
  v6 = *v0;
  v7 = sub_22635092C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_22630B400()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793860, &unk_2263543F0);
  v2 = *v0;
  v3 = sub_22635092C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = v18[4];
        v23 = (*(v4 + 48) + v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        v23[4] = v22;

        result = v22;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_22630B584(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793858, &unk_226355300);
  result = sub_22635093C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_226350CEC();

      sub_2263504EC();
      result = sub_226350D0C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22630B7BC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22634EEFC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793888, &qword_226354438);
  v7 = sub_22635093C();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_22630C1DC(&qword_28137FA50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22635040C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_22630BAD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793860, &unk_2263543F0);
  result = sub_22635093C();
  v5 = result;
  if (*(v3 + 16))
  {
    v33 = v1;
    v34 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v35 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 40 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      v23 = v18[4];
      sub_226350CEC();

      v36 = v19;
      v24 = v21;
      v25 = v23;
      sub_2263504EC();
      sub_2263504EC();
      sub_22635083C();
      result = sub_226350D0C();
      v26 = -1 << *(v5 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 40 * v13);
      v10 = v35;
      *v14 = v36;
      v14[1] = v20;
      v14[2] = v24;
      v14[3] = v22;
      v14[4] = v25;
      ++*(v5 + 16);
      v3 = v34;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v33;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v35 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22630BD70(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AA7C7A0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_226309AF4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_22630BE08()
{
  result = qword_27D793850;
  if (!qword_27D793850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793850);
  }

  return result;
}

uint64_t sub_22630BE5C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2262D641C;

  return sub_226301048(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_22630BF88(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_22630C040(uint64_t a1)
{
  v2 = sub_22634EEFC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_22630C1DC(&qword_28137FA50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x22AA7C7A0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_226309C44(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_22630C1DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22630C234(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496E6F69746361 && a2 == 0xE800000000000000;
  if (v4 || (sub_226350C4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000 || (sub_226350C4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v6 = sub_226350C4C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_22630C354@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7938A0, &qword_2263544E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22630C5A8();
  sub_226350D1C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v24 = 0;
  v9 = sub_226350B0C();
  v11 = v10;
  v20 = a2;
  v21 = v9;
  v23 = 1;
  v12 = sub_226350B0C();
  v19 = v13;
  v22 = 2;
  sub_226350B2C();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v17 = v20;
  *v20 = v21;
  v17[1] = v11;
  v18 = v19;
  v17[2] = v12;
  v17[3] = v18;
  v17[4] = v15;
  return result;
}

unint64_t sub_22630C5A8()
{
  result = qword_27D7938A8;
  if (!qword_27D7938A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7938A8);
  }

  return result;
}

unint64_t sub_22630C610()
{
  result = qword_27D7938B8;
  if (!qword_27D7938B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7938B8);
  }

  return result;
}

unint64_t sub_22630C668()
{
  result = qword_27D7938C0;
  if (!qword_27D7938C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7938C0);
  }

  return result;
}

unint64_t sub_22630C6C0()
{
  result = qword_27D7938C8;
  if (!qword_27D7938C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7938C8);
  }

  return result;
}

unint64_t sub_22630C714(void *a1)
{
  sub_22635096C();

  v2 = [a1 description];
  v3 = sub_22635046C();
  v5 = v4;

  MEMORY[0x22AA7C5B0](v3, v5);

  MEMORY[0x22AA7C5B0](23358, 0xE200000000000000);
  v6 = sub_226350C1C();
  MEMORY[0x22AA7C5B0](v6);

  MEMORY[0x22AA7C5B0](93, 0xE100000000000000);
  return 0xD000000000000010;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22630C844(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22630C8A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_22630C904(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22630C94C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_22630C9AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22630C9F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_22630CA54(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    sub_22635096C();

    v1 = 0x7265747369676552;
  }

  else
  {
    sub_22635096C();

    v1 = 0x7473696765726E55;
  }

  v4 = v1;
  v3 = sub_226350C1C();
  MEMORY[0x22AA7C5B0](v3);

  MEMORY[0x22AA7C5B0](0xD00000000000001FLL, 0x8000000226357210);
  return v4;
}

uint64_t sub_22630CB90(char a1, uint64_t a2)
{
  if (!a2)
  {
    return 0x6C616974696E49;
  }

  sub_22635096C();

  v3 = sub_22630CA54(a1);
  MEMORY[0x22AA7C5B0](v3);

  return 0xD000000000000011;
}

void *sub_22630CC40()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E8, &qword_2263548B8);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939F0, &qword_2263548C0);
  MEMORY[0x28223BE20](v6 - 8);
  swift_defaultActor_initialize();
  v7 = [objc_allocWithZone(MEMORY[0x277D23C38]) initWithOptions_];
  v8 = MEMORY[0x277D84F90];
  v0[14] = v7;
  v0[15] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939F8, &qword_2263548C8);
  sub_22634FB6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A00, &qword_2263548D0);
  swift_allocObject();
  v0[16] = sub_22634FB7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A08, &qword_2263548D8);
  sub_22634FB6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A10, &qword_2263548E0);
  swift_allocObject();
  v0[17] = sub_22634FB7C();
  v9 = sub_22635064C();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;

  sub_2262FB4D4(0, 0, v4, &unk_2263548F0, v10);

  return v1;
}

uint64_t sub_22630CEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22630CF60, 0, 0);
}

uint64_t sub_22630CF60()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_22635064C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v0[7] = sub_2262FB4D4(0, 0, v1, &unk_226354900, v5);

  return MEMORY[0x2822009F8](sub_22630D078, v2, 0);
}

uint64_t sub_22630D078()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 120) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2262DD0D0(0, v2[2] + 1, 1, v2);
    *(v1 + 120) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_2262DD0D0((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = v0[7];
  v2[2] = v5 + 1;
  v2[v5 + 4] = v6;
  *(v1 + 120) = v2;
  swift_endAccess();
  sub_22630E268(0, 0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22630D194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = sub_22635004C();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A30, &qword_226354918);
  v4[17] = swift_task_alloc();
  v6 = sub_22634ED6C();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = sub_2263507BC();
  v4[22] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A38, &qword_226354920);
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793A40, &qword_226354928);
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22630D3E8, 0, 0);
}

uint64_t sub_22630D3E8()
{
  v1 = *(v0 + 208);
  sub_2262D9C1C(0, &qword_28137DF88, 0x277CCA9A0);
  v2 = [swift_getObjCClassFromMetadata() defaultCenter];
  v3 = sub_2263507DC();

  *(v0 + 88) = v3;
  sub_2263507CC();
  sub_2263157F8(&qword_28137DFA0, 255, MEMORY[0x277CC9D78], MEMORY[0x277CC9D80]);
  sub_226350A5C();
  MEMORY[0x22AA7CAC0](v1);
  sub_2263506CC();
  sub_226350A2C();
  sub_226350A3C();
  swift_beginAccess();

  return MEMORY[0x2822009F8](sub_22630D5BC, 0, 0);
}

uint64_t sub_22630D5BC()
{
  v0[29] = sub_226350A1C();
  sub_2263157F8(&unk_28137DFA8, 255, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v1 = swift_task_alloc();
  v0[30] = v1;
  *v1 = v0;
  v1[1] = sub_22630D6B8;
  v2 = v0[17];

  return MEMORY[0x282200310](v2, 0, 0);
}

uint64_t sub_22630D6B8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = sub_22630D99C;
  }

  else
  {
    (*(v2 + 232))();
    v3 = sub_22630D7E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22630D7E0()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2262D67D8(v3, &qword_27D793A30, &qword_226354918);

    return MEMORY[0x2822009F8](sub_22630DE88, 0, 0);
  }

  else
  {
    (*(v2 + 32))(v0[20], v3, v1);
    v4 = sub_226350A2C();
    v0[31] = v5;
    v9 = (v4 + *v4);
    v6 = swift_task_alloc();
    v0[32] = v6;
    *v6 = v0;
    v6[1] = sub_22630D9B4;
    v7 = v0[20];

    return (v9)(v0 + 9, v7);
  }
}

uint64_t sub_22630D9B4()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 144);

  (*(v3 + 8))(v2, v4);
  *(v1 + 280) = *(v1 + 72);
  *(v1 + 264) = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_22630DB58, 0, 0);
}

uint64_t sub_22630DB74()
{
  Strong = swift_weakLoadStrong();
  v0[34] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_22630DCB8, Strong, 0);
  }

  else
  {

    v3 = v0[27];
    v2 = v0[28];
    v4 = v0[26];
    (*(v0[24] + 8))(v0[25], v0[23]);
    (*(v3 + 8))(v2, v4);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22630DCB8(uint64_t a1)
{
  v18 = v1;
  sub_22634FFDC();

  v2 = sub_22635003C();
  v3 = sub_22635071C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v1 + 120);
    v4 = *(v1 + 128);
    v6 = *(v1 + 112);
    v7 = *(v1 + 280);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = sub_22630CA54(v7);
    v12 = sub_226345004(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2262B6000, v2, v3, "Handling metadata change %s...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x22AA7D570](v9, -1, -1);
    MEMORY[0x22AA7D570](v8, -1, -1);

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v14 = *(v1 + 120);
    v13 = *(v1 + 128);
    v15 = *(v1 + 112);

    (*(v14 + 8))(v13, v15);
  }

  sub_22630E268(*(v1 + 280), *(v1 + 264));

  return MEMORY[0x2822009F8](sub_22630DF6C, 0, 0);
}

uint64_t sub_22630DE88()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  (*(v0[24] + 8))(v0[25], v0[23]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22630DF6C()
{

  return MEMORY[0x2822009F8](sub_22630D5BC, 0, 0);
}

uint64_t sub_22630DFD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return MEMORY[0x2822009F8](sub_22630DFF4, 0, 0);
}

uint64_t sub_22630DFF4()
{
  v1 = sub_22634ED5C();
  if (!v1)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_11;
  }

  v2 = v1;
  *(v0 + 88) = sub_22635046C();
  *(v0 + 96) = v3;
  sub_22635091C();
  if (!*(v2 + 16) || (v4 = sub_226339494(v0 + 16), (v5 & 1) == 0))
  {

    sub_226315840(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_11;
  }

  sub_2262FB40C(*(v2 + 56) + 32 * v4, v0 + 56);
  sub_226315840(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_11:
    sub_2262D67D8(v0 + 56, &unk_27D793A50, &qword_226354938);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  v6 = *(v0 + 16);
  if (v6)
  {
    v7 = 2 * (v6 == 1);
  }

  else
  {
    v7 = 1;
  }

LABEL_13:
  v8 = sub_22634ED5C();
  if (!v8)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_21;
  }

  v9 = v8;
  *(v0 + 88) = sub_22635046C();
  *(v0 + 96) = v10;
  sub_22635091C();
  if (!*(v9 + 16) || (v11 = sub_226339494(v0 + 16), (v12 & 1) == 0))
  {

    sub_226315840(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_21;
  }

  sub_2262FB40C(*(v9 + 56) + 32 * v11, v0 + 56);
  sub_226315840(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_21:
    sub_2262D67D8(v0 + 56, &unk_27D793A50, &qword_226354938);
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930A8, &qword_226354940);
  if (swift_dynamicCast())
  {
    v13 = *(v0 + 16);
    goto LABEL_23;
  }

LABEL_22:
  v13 = MEMORY[0x277D84F90];
LABEL_23:
  v14 = *(v0 + 104);
  *v14 = v7;
  *(v14 + 8) = v13;
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_22630E268(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v4 = sub_22635004C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  sub_22634FFDC();

  v12 = sub_22635003C();
  v13 = sub_22635071C();

  v14 = os_log_type_enabled(v12, v13);
  v34 = v2;
  v35 = v4;
  v36 = v5;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v39[0] = v16;
    *v15 = 136315138;
    if (a2)
    {
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_22635096C();

      v37 = 0xD000000000000011;
      v38 = 0x80000002263571F0;
      v17 = sub_22630CA54(v33);
      MEMORY[0x22AA7C5B0](v17);

      v18 = v37;
      v19 = v38;
    }

    else
    {
      v19 = 0xE700000000000000;
      v18 = 0x6C616974696E49;
    }

    v21 = sub_226345004(v18, v19, v39);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_2262B6000, v12, v13, "Reloading VisualSearch queryable targets for reason '%s'...", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x22AA7D570](v16, -1, -1);
    MEMORY[0x22AA7D570](v15, -1, -1);

    v4 = v35;
    v20 = *(v36 + 8);
    v20(v11, v35);
  }

  else
  {

    v20 = *(v5 + 8);
    v20(v11, v4);
  }

  sub_22630E9D0();
  v23 = v22;
  sub_22634FFDC();

  v24 = sub_22635003C();
  v25 = sub_22635071C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v39[0] = v27;
    *v26 = 136315138;
    if (a2)
    {
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_22635096C();

      v37 = 0xD000000000000011;
      v38 = 0x80000002263571F0;
      v28 = sub_22630CA54(v33);
      MEMORY[0x22AA7C5B0](v28);

      v29 = v37;
      v30 = v38;
    }

    else
    {
      v30 = 0xE700000000000000;
      v29 = 0x6C616974696E49;
    }

    v31 = sub_226345004(v29, v30, v39);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_2262B6000, v24, v25, "Done reloading VisualSearch queryable targets for reason '%s'.", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x22AA7D570](v27, -1, -1);
    MEMORY[0x22AA7D570](v26, -1, -1);

    v20(v9, v35);
  }

  else
  {

    v20(v9, v4);
  }

  v37 = v23;
  return sub_22634FB8C();
}

uint64_t sub_22630E8C4()
{
  swift_beginAccess();
  v1 = *(*(v0 + 120) + 16);
  if (v1)
  {

    v2 = 32;
    do
    {

      sub_2263506BC();

      v2 += 8;
      --v1;
    }

    while (v1);
  }

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

void sub_22630E9D0()
{
  v1 = sub_22635004C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v58 = v57 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = v57 - v8;
  sub_22634FFDC();
  v10 = sub_22635003C();
  v11 = sub_22635071C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2262B6000, v10, v11, "Fetching VisualSearch-related LNQueryMetadata entries from LNMetadataProvider...", v12, 2u);
    MEMORY[0x22AA7D570](v12, -1, -1);
  }

  v13 = *(v2 + 8);
  v61 = v1;
  v62 = v13;
  v63 = v2 + 8;
  v13(v9, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793A18, &qword_226354908);
  sub_22634FC0C();
  if (v0)
  {
    sub_22634FFDC();
    v14 = v0;
    v15 = sub_22635003C();
    v16 = sub_22635073C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v70 = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_226350C9C();
      v21 = sub_226345004(v19, v20, &v70);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_2262B6000, v15, v16, "Error %s occurred when fetching VisualSearch-related LNQueryMetadata entries from LNMetadataProvider.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x22AA7D570](v18, -1, -1);
      MEMORY[0x22AA7D570](v17, -1, -1);
    }

    v62(v5, v61);
    swift_willThrow();
    return;
  }

  v57[1] = 0;
  v22 = v70 + 8;
  v23 = 1 << *(v70 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & v70[8];
  v26 = (v23 + 63) >> 6;
  v64 = v70;

  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v59 = v26;
  v60 = v22;
  while (v25)
  {
    v29 = v27;
LABEL_17:
    v30 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v31 = v30 | (v29 << 6);
    v32 = *(*(v64 + 56) + 8 * v31);
    v65 = *(*(v64 + 48) + 16 * v31);
    v33 = v32 + 64;
    v34 = 1 << *(v32 + 32);
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v36 = v35 & *(v32 + 64);
    v37 = (v34 + 63) >> 6;
    v67 = v32;
    swift_bridgeObjectRetain_n();
    v38 = 0;

    {
LABEL_25:
      v40 = __clz(__rbit64(v36)) | (v38 << 6);
      v41 = (*(v67 + 48) + 16 * v40);
      v43 = *v41;
      v42 = v41[1];
      v44 = *(*(v67 + 56) + 8 * v40);

      v68 = v44;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_2262DD204(0, *(v28 + 2) + 1, 1, v28);
      }

      v47 = *(v28 + 2);
      v46 = *(v28 + 3);
      v48 = v28;
      if (v47 >= v46 >> 1)
      {
        v48 = sub_2262DD204((v46 > 1), v47 + 1, 1, v28);
      }

      v36 &= v36 - 1;
      *(v48 + 2) = v47 + 1;
      v28 = v48;
      v49 = &v48[40 * v47];
      v50 = i;
      *(v49 + 4) = v65;
      *(v49 + 5) = v50;
      v51 = v68;
      *(v49 + 6) = v69;
      *(v49 + 7) = v42;
    }

    while (1)
    {
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      if (v39 >= v37)
      {
        break;
      }

      v36 = *(v33 + 8 * v39);
      ++v38;
      if (v36)
      {
        v38 = v39;
        goto LABEL_25;
      }
    }

    v27 = v29;
    v26 = v59;
    v22 = v60;
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_36;
    }

    if (v29 >= v26)
    {
      break;
    }

    v25 = v22[v29];
    ++v27;
    if (v25)
    {
      goto LABEL_17;
    }
  }

  v52 = v58;
  sub_22634FFDC();

  v53 = sub_22635003C();
  v54 = sub_22635071C();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = v28;
    v56 = swift_slowAlloc();
    *v56 = 134217984;
    *(v56 + 4) = *(v55 + 2);

    _os_log_impl(&dword_2262B6000, v53, v54, "Fetched %ld VisualSearch-related LNQueryMetadata entries from LNMetadataProvider.", v56, 0xCu);
    MEMORY[0x22AA7D570](v56, -1, -1);
  }

  else
  {
  }

  v62(v52, v61);
}

void sub_22630EFD8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22635004C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22634FFDC();
  v8 = sub_22635003C();
  v9 = sub_22635071C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2262B6000, v8, v9, "Use fast path for fetching VisualSearch-related LNQueryMetadata entries.", v10, 2u);
    MEMORY[0x22AA7D570](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = *(a1 + 112);
  sub_2262D9C1C(0, &unk_28137DF90, 0x277D23930);
  v12 = sub_2263507EC();
  v18[0] = 0;
  v13 = [v11 queriesWithCapabilities:32 inputValueType:v12 resultValueType:0 error:v18];

  v14 = v18[0];
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A28, &qword_226354910);
    v15 = sub_2263503EC();
    v16 = v14;

    *a2 = v15;
  }

  else
  {
    v17 = v18[0];
    sub_22634EDAC();

    swift_willThrow();
  }
}

uint64_t sub_22630F230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793990, &unk_226354870);
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22630F300, 0, 0);
}

uint64_t sub_22630F300()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[22];
  v11 = v1[20];
  v12 = v1[21];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_22630F4D0;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_2262D9C1C(0, &qword_27D793978, 0x277D23C50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793998, &qword_226354D80);
  sub_2263505CC();
  (*(v6 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_22630F6C0;
  v1[13] = &block_descriptor;
  [v11 performConfigurableQuery:v12 completionHandler:v4];
  (*(v6 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_22630F4D0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_22630F64C;
  }

  else
  {
    v2 = sub_22630F5E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22630F5E0()
{
  **(v0 + 152) = *(v0 + 144);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22630F64C(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

void sub_22630F6C0(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793990, &unk_226354870);
    sub_2263505DC();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793990, &unk_226354870);
    sub_2263505EC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22630F77C(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  v4 = sub_22635004C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22634FFDC();
  v8 = sub_22635003C();
  v9 = sub_22635072C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = sub_226350D3C();
    v14 = sub_226345004(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2262B6000, v8, v9, a3, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x22AA7D570](v11, -1, -1);
    MEMORY[0x22AA7D570](v10, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_22630F928(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_22634FBEC();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v4 = sub_22635004C();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22630FAC0, v1, 0);
}

uint64_t sub_22630FAC0(uint64_t a1)
{
  v134 = v1;
  v133[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 128);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 72);
  sub_22634FFDC();
  v6 = *(v4 + 16);
  *(v1 + 184) = v6;
  *(v1 + 192) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = sub_22635003C();
  v8 = sub_22635071C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v1 + 176);
  v12 = *(v1 + 136);
  v11 = *(v1 + 144);
  v13 = *(v1 + 128);
  v15 = *(v1 + 88);
  v14 = *(v1 + 96);
  if (v9)
  {
    v127 = *(v1 + 136);
    v16 = swift_slowAlloc();
    v121 = v8;
    v17 = swift_slowAlloc();
    v133[0] = v17;
    *v16 = 136315138;
    sub_2263157F8(&qword_27D7939C8, 255, MEMORY[0x277D78B10], MEMORY[0x277D78B18]);
    v18 = sub_226350C1C();
    v124 = v10;
    v20 = v19;
    v131 = *(v14 + 8);
    v131(v13, v15);
    v21 = sub_226345004(v18, v20, v133);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_2262B6000, v7, v121, "Performing open action with target %s...", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x22AA7D570](v17, -1, -1);
    MEMORY[0x22AA7D570](v16, -1, -1);

    v22 = *(v11 + 8);
    v22(v124, v127);
  }

  else
  {

    v131 = *(v14 + 8);
    v131(v13, v15);
    v22 = *(v11 + 8);
    v22(v10, v12);
  }

  v23 = *(*(v1 + 80) + 112);
  sub_22634FBAC();
  v24 = sub_22635045C();

  sub_22634FBCC();
  v25 = sub_22635045C();

  *(v1 + 40) = 0;
  v26 = [v23 openActionsForTypeIdentifier:v24 bundleIdentifier:v25 error:v1 + 40];

  v27 = *(v1 + 40);
  if (!v26)
  {
    v65 = v27;
    sub_22634EDAC();

    swift_willThrow();
LABEL_36:

    v117 = *(v1 + 8);

    return v117();
  }

  sub_2262D9C1C(0, &qword_28137DFE0, 0x277D23730);
  v28 = sub_22635056C();
  *(v1 + 200) = v28;
  v29 = v27;

  v30 = [objc_allocWithZone(MEMORY[0x277D23BC8]) init];
  *(v1 + 208) = v30;
  sub_22634FBCC();
  v31 = sub_22635045C();

  [v30 setPreferredBundleIdentifier_];

  if (!(v28 >> 62))
  {
    v32 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v1 + 216) = v32;
    if (v32)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  v96 = sub_226350A6C();
  *(v1 + 216) = v96;
  if (!v96)
  {
LABEL_32:
    v97 = *(v1 + 184);
    v98 = *(v1 + 104);
    v99 = *(v1 + 88);
    v100 = *(v1 + 72);

    sub_22634FFDC();
    v97(v98, v100, v99);
    v101 = sub_22635003C();
    v102 = sub_22635073C();
    v103 = os_log_type_enabled(v101, v102);
    v104 = *(v1 + 152);
    v105 = *(v1 + 136);
    v106 = *(v1 + 104);
    v107 = *(v1 + 88);
    if (v103)
    {
      v130 = *(v1 + 136);
      v108 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v133[0] = v126;
      *v108 = 136315138;
      sub_2263157F8(&qword_27D7939C8, 255, MEMORY[0x277D78B10], MEMORY[0x277D78B18]);
      v123 = v104;
      v109 = sub_226350C1C();
      v111 = v110;
      v131(v106, v107);
      v112 = sub_226345004(v109, v111, v133);

      *(v108 + 4) = v112;
      _os_log_impl(&dword_2262B6000, v101, v102, "No open action for target %s can be found.", v108, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v126);
      MEMORY[0x22AA7D570](v126, -1, -1);
      MEMORY[0x22AA7D570](v108, -1, -1);

      v113 = v123;
      v114 = v130;
    }

    else
    {

      v131(v106, v107);
      v113 = v104;
      v114 = v105;
    }

    v22(v113, v114);
    v115 = *(v1 + 208);
    sub_226315490();
    swift_allocError();
    *v116 = 5;
    swift_willThrow();

    goto LABEL_36;
  }

LABEL_7:
  v33 = 0;
  while (1)
  {
    *(v1 + 224) = v33;
    v34 = *(v1 + 200);
    if ((v34 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x22AA7CA30](v33);
    }

    else
    {
      if (v33 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v35 = *(v34 + 8 * v33 + 32);
    }

    *(v1 + 232) = v35;
    *(v1 + 240) = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v22 = [objc_opt_self() policyWithActionMetadata:v35 signals:*(v1 + 208)];
    *(v1 + 248) = v22;
    *(v1 + 48) = 0;
    v36 = [v22 connectionWithUserIdentity:0 error:v1 + 48];
    *(v1 + 256) = v36;
    v37 = *(v1 + 48);
    if (v36)
    {
      break;
    }

    v38 = v37;
    v39 = sub_22634EDAC();

    swift_willThrow();
    v40 = *(v1 + 200);
    if (v40 >> 62)
    {
      v41 = sub_226350A6C();
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(v41, 1))
    {
      goto LABEL_30;
    }

    v42 = v39;
    if (*(v1 + 224) == v41 - 1)
    {
      v94 = *(v1 + 232);
      v95 = *(v1 + 208);

      swift_willThrow();

      goto LABEL_36;
    }

    v43 = *(v1 + 184);
    v44 = *(v1 + 112);
    v45 = *(v1 + 88);
    v46 = *(v1 + 72);
    sub_22634FFDC();
    v43(v44, v46, v45);
    v47 = v42;
    v48 = sub_22635003C();
    v49 = sub_22635073C();

    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v1 + 160);
    v52 = *(v1 + 136);
    v53 = *(v1 + 144);
    v54 = *(v1 + 112);
    v55 = *(v1 + 88);
    v56 = *(v1 + 96);
    if (v50)
    {
      v125 = *(v1 + 232);
      v128 = *(v1 + 136);
      v57 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v133[0] = v120;
      *v57 = 136315394;
      swift_getErrorValue();
      v122 = v51;
      v58 = sub_226350C9C();
      v119 = v42;
      v60 = sub_226345004(v58, v59, v133);

      *(v57 + 4) = v60;
      *(v57 + 12) = 2080;
      sub_2263157F8(&qword_27D7939C8, 255, MEMORY[0x277D78B10], MEMORY[0x277D78B18]);
      v61 = sub_226350C1C();
      v63 = v62;
      v131 = *(v56 + 8);
      v131(v54, v55);
      v64 = sub_226345004(v61, v63, v133);

      *(v57 + 14) = v64;
      _os_log_impl(&dword_2262B6000, v48, v49, "Error %s while executing open action for target %s. Skipping to the next open action...", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v120, -1, -1);
      MEMORY[0x22AA7D570](v57, -1, -1);

      v22 = *(v53 + 8);
      v22(v122, v128);
    }

    else
    {

      v131 = *(v56 + 8);
      v131(v54, v55);
      v22 = *(v53 + 8);
      v22(v51, v52);
    }

    v33 = *(v1 + 240);
    if (v33 == *(v1 + 216))
    {
      goto LABEL_32;
    }
  }

  v129 = *(v1 + 80);
  v132 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939D0, &qword_2263548A8);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_2263547A0;
  v67 = v37;
  sub_22634FBAC();
  sub_22634FBDC();
  v68 = objc_allocWithZone(MEMORY[0x277D23800]);
  v69 = sub_22635045C();

  v70 = sub_22635045C();

  v71 = [v68 initWithTypeIdentifier:v69 instanceIdentifier:v70];

  v72 = [objc_allocWithZone(MEMORY[0x277D237F0]) initWithIdentifier_];
  sub_22634FBAC();
  v73 = objc_allocWithZone(MEMORY[0x277D23828]);
  v74 = sub_22635045C();

  v75 = [v73 initWithIdentifier_];

  v76 = objc_allocWithZone(MEMORY[0x277D23958]);
  v77 = v72;
  v78 = [v76 initWithValue:v77 valueType:v75];

  v79 = objc_allocWithZone(MEMORY[0x277D238D8]);
  v80 = sub_22635045C();
  v81 = [v79 initWithIdentifier:v80 value:v78];

  *(v66 + 32) = v81;
  sub_2262D9C1C(0, &qword_27D7939A8, 0x277D238D8);
  v82 = sub_22635055C();

  v83 = [v22 actionWithParameters_];

  v84 = [v83 actionWithOpenWhenRun_];
  *(v1 + 264) = v84;

  v85 = [objc_allocWithZone(MEMORY[0x277D23AF8]) init];
  *(v1 + 272) = v85;
  [v85 setSource_];
  v86 = sub_22635045C();
  [v85 setClientLabel_];

  v87 = [objc_allocWithZone(type metadata accessor for _LinkActionExecutorDelegate(0)) init];
  *(v1 + 280) = v87;
  v88 = [v132 executorForAction:v84 options:v85 delegate:v87];
  *(v1 + 288) = v88;
  v90 = sub_2263157F8(&qword_27D7939D8, v89, type metadata accessor for LinkManager, &unk_226354828);
  v91 = swift_task_alloc();
  *(v1 + 296) = v91;
  *(v91 + 16) = v87;
  *(v91 + 24) = v88;
  v92 = swift_task_alloc();
  *(v1 + 304) = v92;
  v93 = sub_2262D9C1C(0, &qword_27D7939B0, 0x277D23CA8);
  *v92 = v1;
  v92[1] = sub_226310884;

  return MEMORY[0x2822008A0](v1 + 64, v129, v90, 0xD000000000000018, 0x80000002263571D0, sub_226315618, v91, v93);
}

uint64_t sub_226310884()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_226310DD4;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_226310A04;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_226310A04(uint64_t a1)
{
  v43 = v1;
  v42[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 184);
  v3 = *(v1 + 120);
  v4 = *(v1 + 88);
  v6 = *(v1 + 64);
  v5 = *(v1 + 72);
  sub_22634FFDC();
  v2(v3, v5, v4);
  v7 = v6;
  v8 = sub_22635003C();
  v9 = sub_22635071C();

  v10 = os_log_type_enabled(v8, v9);
  v35 = *(v1 + 272);
  v36 = *(v1 + 264);
  v37 = *(v1 + 256);
  v38 = *(v1 + 248);
  v39 = *(v1 + 232);
  v40 = *(v1 + 208);
  v41 = *(v1 + 280);
  v11 = *(v1 + 168);
  v13 = *(v1 + 136);
  v12 = *(v1 + 144);
  v14 = *(v1 + 120);
  v16 = *(v1 + 88);
  v15 = *(v1 + 96);
  if (v10)
  {
    v33 = *(v1 + 288);
    v34 = *(v1 + 136);
    v17 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42[0] = v31;
    *v17 = 136315394;
    sub_2263157F8(&qword_27D7939C8, 255, MEMORY[0x277D78B10], MEMORY[0x277D78B18]);
    log = v8;
    v18 = sub_226350C1C();
    v32 = v11;
    v20 = v19;
    (*(v15 + 8))(v14, v16);
    v21 = sub_226345004(v18, v20, v42);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = v7;
    v23 = [v22 description];
    v24 = sub_22635046C();
    v26 = v25;

    v27 = sub_226345004(v24, v26, v42);

    *(v17 + 14) = v27;
    _os_log_impl(&dword_2262B6000, log, v9, "Performed open action for target %s with result %s.", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v31, -1, -1);
    MEMORY[0x22AA7D570](v17, -1, -1);

    (*(v12 + 8))(v32, v34);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
  }

  v28 = *(v1 + 8);

  return v28(v7);
}

uint64_t sub_226310DD4()
{
  v106 = v0;
  v105[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 288);
  v2 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 248);

  v6 = *(v0 + 312);
  while (1)
  {
    v7 = *(v0 + 200);
    if (v7 >> 62)
    {
      v8 = sub_226350A6C();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v6;
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    if (*(v0 + 224) == v8 - 1)
    {
      v44 = *(v0 + 232);
      v45 = *(v0 + 208);

      swift_willThrow();

      goto LABEL_26;
    }

    v10 = *(v0 + 184);
    v11 = *(v0 + 112);
    v12 = *(v0 + 88);
    v13 = *(v0 + 72);
    sub_22634FFDC();
    v10(v11, v13, v12);
    v14 = v6;
    v15 = sub_22635003C();
    v16 = sub_22635073C();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 160);
    v19 = *(v0 + 136);
    v20 = *(v0 + 144);
    v21 = *(v0 + 112);
    v22 = *(v0 + 88);
    v23 = *(v0 + 96);
    if (v17)
    {
      v99 = *(v0 + 232);
      v102 = *(v0 + 136);
      v24 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v105[0] = v95;
      *v24 = 136315394;
      swift_getErrorValue();
      v97 = v18;
      v25 = sub_226350C9C();
      v94 = v9;
      v27 = sub_226345004(v25, v26, v105);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      sub_2263157F8(&qword_27D7939C8, 255, MEMORY[0x277D78B10], MEMORY[0x277D78B18]);
      v28 = sub_226350C1C();
      v30 = v29;
      v31 = v22;
      v32 = *(v23 + 8);
      v32(v21, v31);
      v33 = sub_226345004(v28, v30, v105);

      *(v24 + 14) = v33;
      _os_log_impl(&dword_2262B6000, v15, v16, "Error %s while executing open action for target %s. Skipping to the next open action...", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v95, -1, -1);
      MEMORY[0x22AA7D570](v24, -1, -1);

      v34 = *(v20 + 8);
      v34(v97, v102);
    }

    else
    {

      v35 = v22;
      v32 = *(v23 + 8);
      v32(v21, v35);
      v34 = *(v20 + 8);
      v34(v18, v19);
    }

    v36 = *(v0 + 240);
    if (v36 == *(v0 + 216))
    {
      break;
    }

    *(v0 + 224) = v36;
    v37 = *(v0 + 200);
    if ((v37 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x22AA7CA30](v36);
    }

    else
    {
      if (v36 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v38 = *(v37 + 8 * v36 + 32);
    }

    *(v0 + 232) = v38;
    *(v0 + 240) = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_30;
    }

    v39 = [objc_opt_self() policyWithActionMetadata:v38 signals:*(v0 + 208)];
    *(v0 + 248) = v39;
    *(v0 + 48) = 0;
    v40 = [v39 connectionWithUserIdentity:0 error:v0 + 48];
    *(v0 + 256) = v40;
    v41 = *(v0 + 48);
    if (v40)
    {
      v101 = *(v0 + 80);
      v104 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939D0, &qword_2263548A8);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_2263547A0;
      v64 = v41;
      sub_22634FBAC();
      sub_22634FBDC();
      v65 = objc_allocWithZone(MEMORY[0x277D23800]);
      v66 = sub_22635045C();

      v67 = sub_22635045C();

      v68 = [v65 initWithTypeIdentifier:v66 instanceIdentifier:v67];

      v69 = [objc_allocWithZone(MEMORY[0x277D237F0]) initWithIdentifier_];
      sub_22634FBAC();
      v70 = objc_allocWithZone(MEMORY[0x277D23828]);
      v71 = sub_22635045C();

      v72 = [v70 initWithIdentifier_];

      v73 = objc_allocWithZone(MEMORY[0x277D23958]);
      v74 = v69;
      v75 = [v73 initWithValue:v74 valueType:v72];

      v76 = objc_allocWithZone(MEMORY[0x277D238D8]);
      v77 = sub_22635045C();
      v78 = [v76 initWithIdentifier:v77 value:v75];

      *(v63 + 32) = v78;
      sub_2262D9C1C(0, &qword_27D7939A8, 0x277D238D8);
      v79 = sub_22635055C();

      v80 = [v39 actionWithParameters_];

      v81 = [v80 actionWithOpenWhenRun_];
      *(v0 + 264) = v81;

      v82 = [objc_allocWithZone(MEMORY[0x277D23AF8]) init];
      *(v0 + 272) = v82;
      [v82 setSource_];
      v83 = sub_22635045C();
      [v82 setClientLabel_];

      v84 = [objc_allocWithZone(type metadata accessor for _LinkActionExecutorDelegate(0)) init];
      *(v0 + 280) = v84;
      v85 = [v104 executorForAction:v81 options:v82 delegate:v84];
      *(v0 + 288) = v85;
      v87 = sub_2263157F8(&qword_27D7939D8, v86, type metadata accessor for LinkManager, &unk_226354828);
      v88 = swift_task_alloc();
      *(v0 + 296) = v88;
      *(v88 + 16) = v84;
      *(v88 + 24) = v85;
      v89 = swift_task_alloc();
      *(v0 + 304) = v89;
      v90 = sub_2262D9C1C(0, &qword_27D7939B0, 0x277D23CA8);
      *v89 = v0;
      v89[1] = sub_226310884;

      return MEMORY[0x2822008A0](v0 + 64, v101, v87, 0xD000000000000018, 0x80000002263571D0, sub_226315618, v88, v90);
    }

    v42 = v41;
    v43 = sub_22634EDAC();

    v6 = v43;
    swift_willThrow();
  }

  v46 = *(v0 + 184);
  v47 = *(v0 + 104);
  v48 = *(v0 + 88);
  v49 = *(v0 + 72);

  sub_22634FFDC();
  v46(v47, v49, v48);
  v50 = sub_22635003C();
  v103 = sub_22635073C();
  v51 = os_log_type_enabled(v50, v103);
  v52 = *(v0 + 152);
  v53 = *(v0 + 136);
  v54 = *(v0 + 104);
  v55 = *(v0 + 88);
  if (v51)
  {
    v100 = *(v0 + 136);
    v56 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v105[0] = v98;
    *v56 = 136315138;
    sub_2263157F8(&qword_27D7939C8, 255, MEMORY[0x277D78B10], MEMORY[0x277D78B18]);
    v96 = v52;
    v57 = sub_226350C1C();
    v59 = v58;
    v32(v54, v55);
    v60 = sub_226345004(v57, v59, v105);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_2262B6000, v50, v103, "No open action for target %s can be found.", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
    MEMORY[0x22AA7D570](v98, -1, -1);
    MEMORY[0x22AA7D570](v56, -1, -1);

    v61 = v96;
    v62 = v100;
  }

  else
  {

    v32(v54, v55);
    v61 = v52;
    v62 = v53;
  }

  v34(v61, v62);
  v44 = *(v0 + 208);
  sub_226315490();
  swift_allocError();
  *v91 = 5;
  swift_willThrow();
LABEL_26:

  v92 = *(v0 + 8);

  return v92();
}

id sub_2263118A4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7939B8, &qword_226354898);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793960, &qword_226354820);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC26VisualActionPredictionCoreP33_610E6787A62CF717964A8E858C6CA80327_LinkActionExecutorDelegate_continuation;
  swift_beginAccess();
  sub_2263155A8(v8, a2 + v11);
  swift_endAccess();
  sub_22634F98C();
  sub_2262D67D8(v8, &unk_27D7939B8, &qword_226354898);
  return [a3 perform];
}

id sub_226311CD4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for _LinkActionExecutorDelegate(uint64_t a1)
{
  result = qword_27D793948;
  if (!qword_27D793948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226311DE0(uint64_t a1, uint64_t a2)
{
  sub_22634F9AC();
  if (v2 <= 0x3F)
  {
    sub_226311EAC(319);
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_226311EAC(uint64_t a1)
{
  if (!qword_27D793958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D793960, &qword_226354820);
    v1 = sub_22635085C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D793958);
    }
  }
}

uint64_t sub_226311F10(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_22635004C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226312008, 0, 0);
}

uint64_t sub_226312008(uint64_t a1)
{
  v47 = v1;
  v46[1] = *MEMORY[0x277D85DE8];
  v2 = v1[5];
  sub_22634FFDC();
  v3 = *v2;
  v1[10] = *v2;
  v4 = v2[1];
  v1[11] = v4;
  v5 = v2[2];
  v1[12] = v5;
  v6 = v2[3];
  v1[13] = v6;
  v7 = v2[4];
  v1[14] = v7;

  v8 = v7;
  v9 = sub_22635003C();
  v10 = sub_22635071C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v1[7];
  v44 = v1[6];
  v45 = v1[9];
  if (v11)
  {
    v13 = v1[4];
    v43 = v3;
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v46[0] = v41;
    *v14 = 136315394;
    v15 = sub_2262D9C1C(0, &qword_27D7939A8, 0x277D238D8);
    v16 = MEMORY[0x22AA7C630](v13, v15);
    v42 = v8;
    v18 = sub_226345004(v16, v17, v46);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    sub_22635096C();

    MEMORY[0x22AA7C5B0](v43, v4);
    MEMORY[0x22AA7C5B0](46, 0xE100000000000000);
    MEMORY[0x22AA7C5B0](v5, v6);
    MEMORY[0x22AA7C5B0](41, 0xE100000000000000);
    v19 = sub_226345004(0xD000000000000015, 0x8000000226356820, v46);

    *(v14 + 14) = v19;
    v8 = v42;
    _os_log_impl(&dword_2262B6000, v9, v10, "Performing action with parameters %s on actionable target %s...", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v41, -1, -1);
    MEMORY[0x22AA7D570](v14, -1, -1);
  }

  v20 = *(v12 + 8);
  v20(v45, v44);
  v1[15] = v20;
  v21 = [objc_allocWithZone(MEMORY[0x277D23BC8]) init];
  v1[16] = v21;
  v22 = sub_22635045C();
  [v21 setPreferredBundleIdentifier_];

  v23 = [objc_opt_self() policyWithActionMetadata:v8 signals:v21];
  v1[17] = v23;
  v1[2] = 0;
  v24 = [v23 connectionWithUserIdentity:0 error:v1 + 2];
  v1[18] = v24;
  v25 = v1[2];
  if (v24)
  {
    v26 = v24;
    sub_2262D9C1C(0, &qword_27D7939A8, 0x277D238D8);
    v27 = v25;
    v28 = sub_22635055C();
    v29 = [v23 actionWithParameters_];

    v30 = [v29 actionWithOpenWhenRun_];
    v1[19] = v30;

    v31 = [objc_allocWithZone(MEMORY[0x277D23AF8]) init];
    v1[20] = v31;
    [v31 setSource_];
    v32 = sub_22635045C();
    [v31 setClientLabel_];

    v33 = [objc_allocWithZone(type metadata accessor for _LinkActionExecutorDelegate(0)) init];
    v1[21] = v33;
    v34 = [v26 executorForAction:v30 options:v31 delegate:v33];
    v1[22] = v34;
    v35 = swift_task_alloc();
    v1[23] = v35;
    *(v35 + 16) = v33;
    *(v35 + 24) = v34;
    v36 = swift_task_alloc();
    v1[24] = v36;
    v37 = sub_2262D9C1C(0, &qword_27D7939B0, 0x277D23CA8);
    *v36 = v1;
    v36[1] = sub_2263125F8;

    return MEMORY[0x2822008A0](v1 + 3, 0, 0, 0xD000000000000018, 0x80000002263571B0, sub_226315ED0, v35, v37);
  }

  else
  {
    v38 = v25;
    sub_22634EDAC();

    swift_willThrow();

    v39 = v1[1];

    return v39();
  }
}

uint64_t sub_2263125F8()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_226312ADC;
  }

  else
  {

    v2 = sub_226312748;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226312748(uint64_t a1)
{
  v42 = v1;
  v41[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 112);
  v3 = *(v1 + 24);
  sub_22634FFDC();

  v4 = v2;
  v5 = v3;
  v6 = sub_22635003C();
  v7 = sub_22635071C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 168);
  v37 = *(v1 + 176);
  v38 = *(v1 + 160);
  v10 = *(v1 + 136);
  v39 = *(v1 + 152);
  v40 = *(v1 + 144);
  v11 = *(v1 + 120);
  if (v8)
  {
    v35 = *(v1 + 120);
    v36 = v5;
    v12 = *(v1 + 96);
    v13 = *(v1 + 104);
    v14 = *(v1 + 80);
    v15 = *(v1 + 88);
    v32 = *(v1 + 128);
    v33 = *(v1 + 48);
    v34 = *(v1 + 64);
    v31 = *(v1 + 136);
    v16 = swift_slowAlloc();
    v30 = v9;
    v17 = swift_slowAlloc();
    v41[0] = v17;
    *v16 = 136315394;
    sub_22635096C();

    MEMORY[0x22AA7C5B0](v14, v15);
    MEMORY[0x22AA7C5B0](46, 0xE100000000000000);
    v18 = v13;
    v5 = v36;
    MEMORY[0x22AA7C5B0](v12, v18);
    MEMORY[0x22AA7C5B0](41, 0xE100000000000000);
    v19 = sub_226345004(0xD000000000000015, 0x8000000226356820, v41);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = v36;
    v21 = [v20 description];
    v22 = sub_22635046C();
    v24 = v23;

    v25 = sub_226345004(v22, v24, v41);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_2262B6000, v6, v7, "Performed action on actionable target %s with result %s.", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v17, -1, -1);
    MEMORY[0x22AA7D570](v16, -1, -1);

    v35(v34, v33);
  }

  else
  {
    v26 = *(v1 + 64);
    v27 = *(v1 + 48);

    v11(v26, v27);
  }

  v28 = *(v1 + 8);

  return v28(v5);
}

uint64_t sub_226312ADC()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);

  v7 = *(v0 + 8);

  return v7();
}