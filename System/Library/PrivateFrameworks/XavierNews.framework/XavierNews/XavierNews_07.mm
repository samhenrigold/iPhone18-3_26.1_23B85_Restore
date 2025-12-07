uint64_t sub_217F067DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF7260, &qword_217F59250);
  v4 = *(v3 - 8);
  v80 = v3;
  v81 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v88 = &v65 - v6;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF7268, &qword_217F59258);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v7);
  v84 = &v65 - v8;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF7270, &qword_217F59260);
  v78 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v9);
  v87 = &v65 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF7278, &qword_217F59268);
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v11);
  v86 = &v65 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF7280, &qword_217F59270);
  v75 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v13);
  v82 = &v65 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF7288, &qword_217F59278);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v15);
  v83 = &v65 - v16;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF7290, &qword_217F59280);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v17);
  v19 = &v65 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF7298, &qword_217F59288);
  v67 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v65 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF72A0, &qword_217F59290);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v65 - v27;
  v29 = a1[3];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_217F23AAC();
  v30 = v89;
  sub_217F4B274();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(v90);
  }

  v66 = v23;
  v65 = v20;
  v32 = v86;
  v31 = v87;
  v33 = v88;
  v89 = v25;
  v34 = sub_217F4AFE4();
  v35 = (2 * *(v34 + 16)) | 1;
  v94 = v34;
  v95 = v34 + 32;
  v96 = 0;
  v97 = v35;
  v36 = sub_217EA4904();
  if (v36 == 8 || v96 != v97 >> 1)
  {
    v41 = v28;
    v42 = sub_217F4AE04();
    swift_allocError();
    v44 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5270, &qword_217F4E290);
    *v44 = &_s14descr2829CD401O22HeadlineClusteringRuleON;
    sub_217F4AF04();
    sub_217F4ADE4();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84160], v42);
    swift_willThrow();
    (*(v89 + 8))(v41, v24);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v90);
  }

  v98 = v36;
  if (v36 <= 3u)
  {
    if (v36 <= 1u)
    {
      if (!v36)
      {
        LOBYTE(v91) = 0;
        sub_217F23D4C();
        v37 = v66;
        sub_217F4AEF4();
        v38 = v89;
        v39 = v65;
        v40 = sub_217F4AFB4();
        (*(v67 + 8))(v37, v39);
        (*(v38 + 8))(v28, v24);
        swift_unknownObjectRelease();
LABEL_22:
        v62 = 0;
        v63 = 0;
        goto LABEL_24;
      }

      LOBYTE(v91) = 1;
      sub_217F23CF8();
      sub_217F4AEF4();
      v64 = v89;
      v54 = v69;
      v40 = sub_217F4AFB4();
      (*(v68 + 8))(v19, v54);
LABEL_21:
      (*(v64 + 8))(v28, v24);
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    if (v36 == 2)
    {
      LOBYTE(v91) = 2;
      sub_217F23CA4();
      v50 = v83;
      sub_217F4AEF4();
      v51 = v71;
      v40 = sub_217F4AFB4();
      (*(v70 + 8))(v50, v51);
      v64 = v89;
      goto LABEL_21;
    }

    LOBYTE(v91) = 3;
    sub_217F23C50();
    v57 = v82;
    sub_217F4AEF4();
    LOBYTE(v91) = 0;
    v58 = v74;
    v59 = sub_217F4AFB4();
    v60 = v89;
    v40 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F68, &qword_217F52230);
    v99 = 1;
    sub_217F23E24(&qword_27CBF5F70, MEMORY[0x277D83808], MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
    sub_217F4AFC4();
    (*(v75 + 8))(v57, v58);
    (*(v60 + 8))(v28, v24);
    swift_unknownObjectRelease();
    v63 = 0;
    v62 = v91;
LABEL_24:
    v47 = v85;
    goto LABEL_25;
  }

  v46 = v28;
  v47 = v85;
  v48 = v89;
  if (v36 > 5u)
  {
    if (v36 == 6)
    {
      LOBYTE(v91) = 6;
      sub_217F23B54();
      v52 = v84;
      sub_217F4AEF4();
      v53 = v79;
      v40 = sub_217F4AFB4();
      (*(v77 + 8))(v52, v53);
    }

    else
    {
      LOBYTE(v91) = 7;
      sub_217F23B00();
      sub_217F4AEF4();
      v61 = v80;
      v40 = sub_217F4AFB4();
      (*(v81 + 8))(v33, v61);
    }

    (*(v48 + 8))(v46, v24);
    swift_unknownObjectRelease();
    v62 = 0;
    v63 = 0;
    goto LABEL_25;
  }

  if (v36 != 4)
  {
    LOBYTE(v91) = 5;
    sub_217F23BA8();
    v55 = v31;
    sub_217F4AEF4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6F28, &qword_217F52830);
    sub_217F23DA0(&qword_27CBF6F60, sub_217EF8BA4, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    v56 = v76;
    sub_217F4AFC4();
    (*(v78 + 8))(v55, v56);
    (*(v48 + 8))(v46, v24);
    swift_unknownObjectRelease();
    v62 = 0;
    v63 = 0;
    v40 = v91;
    goto LABEL_24;
  }

  LOBYTE(v91) = 4;
  sub_217F23BFC();
  sub_217F4AEF4();
  sub_217EA2A94();
  v49 = v72;
  sub_217F4AFC4();
  (*(v73 + 8))(v32, v49);
  (*(v48 + 8))(v46, v24);
  swift_unknownObjectRelease();
  v40 = v91;
  v62 = v92;
  v63 = v93;
LABEL_25:
  *v47 = v40;
  *(v47 + 8) = v62;
  *(v47 + 16) = v63;
  *(v47 + 24) = v98;
  return __swift_destroy_boxed_opaque_existential_1(v90);
}

uint64_t sub_217F076B8()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217F07700(uint64_t a1)
{
  v2 = *v1;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v2);
  return sub_217F4B254();
}

uint64_t sub_217F0778C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, _OWORD *a6@<X5>, char *a7@<X6>, char **a8@<X7>, void *a9@<X8>, unint64_t a10, double (*a11)(uint64_t, double, double), uint64_t a12, unsigned __int8 a13)
{
  v142 = a9;
  v15 = a5;
  v16 = a4;
  v17 = a2;
  v19 = a6[1];
  v194[0] = *a6;
  v194[1] = v19;
  v20 = a6[3];
  v194[2] = a6[2];
  v194[3] = v20;
  v150 = a2;
  v195 = a4;
  if (a7)
  {
    if (a3)
    {
      v21 = 0;
    }

    else
    {
      v21 = a2;
    }

    v22 = a6[1];
    v179 = *a6;
    v180 = v22;
    v23 = a6[3];
    v181 = a6[2];
    v182 = v23;
    *v183 = v21;
    *&v183[8] = a4;
    *&v183[16] = a5;
    v24 = a3;
    sub_217EB2994(v194, &v184);

    ClusteringJournal.set(clusteringRequirements:)(&v179);
    v16 = v195;
    v17 = v150;
    v186 = v181;
    v187 = v182;
    *v188 = *v183;
    *&v188[16] = *&v183[16];
    v184 = v179;
    v185 = v180;
    sub_217EB2C80(&v184);
    a3 = v24;
  }

  v158 = a7;
  if ((a3 & 1) == 0)
  {
    v25 = *(a1 + 16);
    if (v25 < v17)
    {
      if (v158 && v158[OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode] != 2)
      {
        swift_beginAccess();
        v26 = *(v158 + 6);
        if (!v26)
        {
          if (qword_280C28808 != -1)
          {
            goto LABEL_118;
          }

          goto LABEL_107;
        }

        *&v184 = v17;
        *(&v184 + 1) = v25;
        v185 = v26;
        LOBYTE(v186) = 1;

        sub_217EB06FC(&v184);
        v17 = v150;
        sub_217EB3F48(v184, *(&v184 + 1), v185, *(&v185 + 1), v186);
      }

LABEL_108:
      sub_217F23EEC();
      swift_allocError();
      *v130 = v25;
      *(v130 + 8) = v17;
      *(v130 + 16) = 0;
      return swift_willThrow();
    }
  }

  if (v16 < 0)
  {
    goto LABEL_115;
  }

  v160 = a1;
  v161 = v15;
  v148 = a3;
  v27 = MEMORY[0x277D84F90];
  v147 = a8;
  if (v16)
  {
    v164 = a11;
    *&v184 = MEMORY[0x277D84F90];
    v28 = sub_217EA0D00(0, v195, 0);
    v29 = v195;
    v30 = 0;
    a8 = v184;
    v31 = *v194;
    v15 = *(*(&v194[0] + 1) + 16);
    v163 = *(&v194[0] + 1);
    v162 = *(&v194[0] + 1) + 32;
    do
    {
      v32 = v31;
      if (v30 < v15)
      {
        if (v30 >= *(v163 + 2))
        {
          __break(1u);
          goto LABEL_114;
        }

        v32 = *(v162 + 8 * v30);
      }

      if (v32 <= 0.0)
      {
        if (v32 < 0.0)
        {
          v35 = v164(v28, 0.0, 1.0);
          v29 = v195;
          if (v35 > -v32)
          {
            v34 = 1;
          }

          else
          {
            v34 = 2;
          }
        }

        else
        {
          v34 = 0;
        }
      }

      else
      {
        v33 = v164(v28, 0.0, 1.0);
        v29 = v195;
        if (v33 <= v32)
        {
          v34 = 1;
        }

        else
        {
          v34 = 2;
        }
      }

      *&v184 = a8;
      a1 = a8[2];
      v36 = a8[3];
      v17 = a1 + 1;
      if (a1 >= v36 >> 1)
      {
        v28 = sub_217EA0D00((v36 > 1), a1 + 1, 1);
        v29 = v195;
        a8 = v184;
      }

      ++v30;
      a8[2] = v17;
      *(a8 + a1 + 32) = v34;
    }

    while (v29 != v30);
    v27 = MEMORY[0x277D84F90];
  }

  else
  {
    a8 = MEMORY[0x277D84F90];
  }

  a1 = a10;
  v37 = swift_allocObject();
  v156 = v37;
  *(v37 + 16) = v27;
  v17 = v37 + 16;
  v38 = swift_allocObject();
  v155 = v38;
  *(v38 + 16) = v27;
  v151 = (v38 + 16);
  v39 = swift_allocObject();
  v146 = v39;
  *(v39 + 16) = MEMORY[0x277D84FA0];
  v15 = (v39 + 16);
  if (qword_280C27680 != -1)
  {
    goto LABEL_116;
  }

  while (2)
  {
    v41 = *algn_280C31B88;
    v42 = MEMORY[0x28223BE20](v39, v40);
    v43 = v161;
    v135[0] = v161;
    v44 = v147;
    v135[1] = v147;
    v136 = a1;
    v162 = v41;
    v163 = v45;
    v45(sub_217F23E94, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF53D0, &qword_217F4CC40);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_217F4BC20;
    *(v46 + 40) = 0;
    *(v46 + 48) = 0;
    *(v46 + 32) = v44;
    *(v46 + 56) = 6;
    *&v184 = v43;

    sub_217E80E44(v46);
    v157 = v184;
    v47 = swift_allocObject();
    v153 = a1;
    v145 = v47;
    *(v47 + 16) = a1 >= v44;
    v48 = (v47 + 16);
    v49 = swift_allocObject();
    v144 = v49;
    *(v49 + 16) = 0;
    v50 = (v49 + 16);
    v51 = swift_allocObject();
    v154 = v51;
    *(v51 + 16) = 0;
    v52 = (v51 + 16);
    v53 = *(v160 + 16);
    swift_beginAccess();
    swift_beginAccess();
    v141 = v48;
    swift_beginAccess();
    v139 = v52;
    swift_beginAccess();
    v140 = v50;
    v54 = swift_beginAccess();
    if (!v53)
    {
LABEL_62:

      a8 = v151;
      goto LABEL_99;
    }

    a1 = 0;
    v138 = a13;
    v164 = (v160 + 32);
    v149 = a8 + 4;
    v159 = v53;
    v161 = v15;
    v152 = v17;
    while (1)
    {
      v59 = (v164 + 96 * a1);
      v60 = v59[3];
      v61 = v59[4];
      v62 = *(v59 + 73);
      v63 = *v59;
      v64 = v59[1];
      v186 = v59[2];
      v187 = v60;
      *v188 = v61;
      *&v188[9] = v62;
      v184 = v63;
      v185 = v64;
      v189 = v63;
      v190 = v64;
      v191 = v186;
      v192 = v60;
      v193[0] = v61;
      *(v193 + 9) = v62;
      MEMORY[0x28223BE20](v54, v55);
      v136 = &v189;
      v137 = a1;
      sub_217E98218(&v184, &v179);
      v65 = (v163)(sub_217F23ECC, v135);
      v25 = *v15;
      if (*(*v15 + 16))
      {
        v67 = v189;
        sub_217F4B224();

        sub_217F4AB24();
        v68 = sub_217F4B254();
        v69 = -1 << *(v25 + 32);
        v70 = v68 & ~v69;
        if ((*(v25 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70))
        {
          v71 = ~v69;
          while (1)
          {
            v72 = (*(v25 + 48) + 16 * v70);
            v73 = *v72 == v67 && v72[1] == *(&v67 + 1);
            if (v73 || (sub_217F4B144() & 1) != 0)
            {
              break;
            }

            v70 = (v70 + 1) & v71;
            if (((*(v25 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
            {
              goto LABEL_46;
            }
          }

          v58 = MEMORY[0x28223BE20](v56, v57);
          v136 = &v189;
          v163(sub_217F23ED4, v58);
          v54 = sub_217E98274(&v189);
          v17 = v152;
          v53 = v159;
          v15 = v161;
          goto LABEL_36;
        }

LABEL_46:

        v17 = v152;
        v53 = v159;
        v15 = v161;
      }

      v74 = *(*v17 + 16);
      v75 = v195;
      if (v74 >= v195)
      {
        break;
      }

      *&v183[9] = *(v193 + 9);
      v182 = v192;
      *v183 = v193[0];
      v180 = v190;
      v181 = v191;
      v179 = v189;
      if (v74 >= a8[2])
      {
        goto LABEL_56;
      }

      v76 = *(v149 + v74);
      if (!v76)
      {
        goto LABEL_56;
      }

      if (v76 != 1)
      {
        if ((*v140 & 1) == 0)
        {
          sub_217E98218(&v189, &v168);
          v78 = sub_217F0C1FC(v146, v157, v156, v153, v154, v160, a1, v158, v155, v144, &v189, v75, v138 & 1, v145, a8, v147);
          goto LABEL_58;
        }

LABEL_56:
        sub_217E98218(&v189, &v168);
LABEL_57:
        v78 = sub_217F143A0(v157, &v189, v156, v160, v153, v154, &v179, v158, a1, v155);
        goto LABEL_58;
      }

      if (*v141)
      {
        goto LABEL_56;
      }

      if (__OFADD__(*v139, v153))
      {
        __break(1u);
LABEL_118:
        swift_once();
LABEL_107:
        v128 = qword_280C28810;
        v129 = sub_217F4AD34();
        sub_217F4AA44("Failed to finish clustering, no events", 38, 2, &dword_217E7B000, v128, v129, MEMORY[0x277D84F90]);
        v17 = v150;
        goto LABEL_108;
      }

      v77 = v147;
      if ((v153 + *v139) >= v147)
      {
        MEMORY[0x28223BE20](v65, v66);
        v136 = v77;
        sub_217E98218(&v189, &v168);
        (v163)(sub_217F23F94, v135);
        goto LABEL_57;
      }

      sub_217E98218(&v189, &v168);
      v78 = sub_217F09038(v138 & 1, v146, v157, v156, v153, v154, v155, v158, v160, a1, v145, &v189, v75, v144, a8, v77);
LABEL_58:
      v79 = v78;
      v170 = v181;
      v171 = v182;
      v172[0] = *v183;
      *(v172 + 9) = *&v183[9];
      v168 = v179;
      v169 = v180;
      sub_217E98274(&v168);
      if ((v79 & 1) == 0)
      {

        a8 = v151;
        goto LABEL_98;
      }

      v54 = sub_217E98274(&v189);
LABEL_36:
      if (++a1 == v53)
      {
        goto LABEL_62;
      }
    }

    v82 = MEMORY[0x28223BE20](v80, v81);
    v136 = v160;
    v137 = a1;
    v163(sub_217F23EDC, v82);
    swift_bridgeObjectRetain_n();
    a8 = v151;
    if (a1 >= v53)
    {
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      v39 = swift_once();
      continue;
    }

    break;
  }

  v157 = (2 * v53) | 1;
  v17 = a1;
  while (2)
  {
    v83 = v164 + 96 * v17;
    v84 = *(v83 + 3);
    v85 = *(v83 + 1);
    v181 = *(v83 + 2);
    v182 = v84;
    v86 = *(v83 + 3);
    *v183 = *(v83 + 4);
    *&v183[9] = *(v83 + 73);
    v87 = *(v83 + 1);
    v179 = *v83;
    v180 = v87;
    v175 = v181;
    v176 = v86;
    v177 = *(v83 + 4);
    v178 = *(v83 + 10);
    v173 = v179;
    v174 = v85;
    v88 = *v15;
    if (!*(v88 + 16))
    {
      sub_217E98218(&v179, &v168);
      goto LABEL_76;
    }

    LODWORD(v195) = v183[24];
    v89 = v179;
    sub_217F4B224();
    sub_217E98218(&v179, &v168);

    sub_217F4AB24();
    v90 = sub_217F4B254();
    v91 = -1 << *(v88 + 32);
    v92 = v90 & ~v91;
    if (((*(v88 + 56 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92) & 1) == 0)
    {
LABEL_74:

      a8 = v151;
      v53 = v159;
LABEL_76:
      v170 = v175;
      v171 = v176;
      v172[0] = v177;
      *&v172[1] = v178;
      v168 = v173;
      v169 = v174;
      BYTE8(v172[1]) = 2;
      swift_beginAccess();
      v96 = *a8;
      sub_217E98218(&v168, v165);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a8 = v96;
      v15 = v161;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v96 = sub_217E8D720(0, *(v96 + 2) + 1, 1, v96);
        *a8 = v96;
      }

      v99 = *(v96 + 2);
      v98 = *(v96 + 3);
      if (v99 >= v98 >> 1)
      {
        v96 = sub_217E8D720((v98 > 1), v99 + 1, 1, v96);
      }

      *(v96 + 2) = v99 + 1;
      v100 = &v96[96 * v99];
      v101 = v169;
      *(v100 + 2) = v168;
      *(v100 + 3) = v101;
      v102 = v170;
      v103 = v171;
      v104 = v172[0];
      *(v100 + 105) = *(v172 + 9);
      *(v100 + 5) = v103;
      *(v100 + 6) = v104;
      *(v100 + 4) = v102;
      *a8 = v96;
      swift_endAccess();
      v165[2] = v175;
      v165[3] = v176;
      v165[4] = v177;
      v166 = v178;
      v165[0] = v173;
      v165[1] = v174;
      v167 = 2;
      sub_217E98274(v165);
      goto LABEL_82;
    }

    v93 = ~v91;
    while (1)
    {
      v94 = (*(v88 + 48) + 16 * v92);
      v95 = *v94 == v89 && v94[1] == *(&v89 + 1);
      if (v95 || (sub_217F4B144() & 1) != 0)
      {
        break;
      }

      v92 = (v92 + 1) & v93;
      if (((*(v88 + 56 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92) & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    v107 = MEMORY[0x28223BE20](v105, v106);
    v136 = &v189;
    v163(sub_217F23EE4, v107);
    v170 = v175;
    v171 = v176;
    v172[0] = v177;
    *&v172[1] = v178;
    v168 = v173;
    v169 = v174;
    BYTE8(v172[1]) = v195;
    sub_217E98274(&v168);
    a8 = v151;
    v53 = v159;
    v15 = v161;
LABEL_82:
    if (++v17 != v53)
    {
      if (v17 < a1 || v17 >= v53)
      {
        goto LABEL_114;
      }

      continue;
    }

    break;
  }

  if (v158)
  {
    swift_beginAccess();
    v108 = *a8;

    v109 = v143;
    v110 = sub_217F20B38(v164, a1, v157, v15);
    v143 = v109;

    *&v179 = v108;
    sub_217E80538(v110);
    v111 = v179;
    v112 = *(v179 + 16);
    if (v112)
    {
      *&v179 = MEMORY[0x277D84F90];
      sub_217EA0CC0(0, v112, 0);
      v113 = v179;
      v195 = v111;
      v114 = (v111 + 88);
      do
      {
        v116 = *(v114 - 7);
        v115 = *(v114 - 6);
        v117 = *v114;
        *&v179 = v113;
        v119 = *(v113 + 16);
        v118 = *(v113 + 24);

        if (v119 >= v118 >> 1)
        {
          sub_217EA0CC0((v118 > 1), v119 + 1, 1);
          v113 = v179;
        }

        *(v113 + 16) = v119 + 1;
        v120 = (v113 + 24 * v119);
        v120[4] = v116;
        v120[5] = v115;
        v120[6] = v117;
        v114 += 12;
        --v112;
      }

      while (v112);

      a8 = v151;
      v53 = v159;
    }

    else
    {

      v113 = MEMORY[0x277D84F90];
    }

    *&v168 = v113;
    LOBYTE(v172[0]) = -127;
    ClusteringJournal.record(event:)(&v168);
    v181 = v170;
    v182 = v171;
    v183[0] = v172[0];
    v179 = v168;
    v180 = v169;
    sub_217F23F40(&v179);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v17 = v152;
LABEL_98:
  (v163)(sub_217F15B4C, 0);
  sub_217E98274(&v189);
LABEL_99:
  v121 = v150;
  if ((v148 & 1) != 0 || (swift_beginAccess(), *(*v17 + 16) >= v121))
  {
    swift_beginAccess();
    v124 = *(v156 + 16);
    swift_beginAccess();
    v125 = *(v155 + 16);

    v126 = v142;
    *v142 = v124;
    v126[1] = v125;
  }

  else
  {
    if (v158)
    {
      swift_beginAccess();
      if (v158[OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode] != 2)
      {
        v122 = *(*a8 + 2);
        swift_beginAccess();
        v123 = *(v158 + 6);
        if (v123)
        {
          *&v184 = v150;
          *(&v184 + 1) = v53;
          *&v185 = v122;
          *(&v185 + 1) = v123;
          LOBYTE(v186) = 2;

          sub_217EB06FC(&v184);
          sub_217EB3F48(v184, *(&v184 + 1), v185, *(&v185 + 1), v186);
        }

        else
        {
          if (qword_280C28808 != -1)
          {
            swift_once();
          }

          v131 = qword_280C28810;
          v132 = sub_217F4AD34();
          sub_217F4AA44("Failed to finish clustering, no events", 38, 2, &dword_217E7B000, v131, v132, MEMORY[0x277D84F90]);
        }
      }
    }

    v133 = *(*(v156 + 16) + 16);
    sub_217F23EEC();
    swift_allocError();
    *v134 = v133;
    *(v134 + 8) = v150;
    *(v134 + 16) = 0;
    swift_willThrow();
  }
}

void sub_217F089A4(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_217F1C068(0x20000000000001uLL);
  }
}

uint64_t sub_217F08A10(uint64_t a1, uint64_t a2, char a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD000000000000020, 0x8000000217F60D40);
  v9 = sub_217F4B104();
  MEMORY[0x21CEAEAC0](v9);

  MEMORY[0x21CEAEAC0](0xD00000000000001ALL, 0x8000000217F60D70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF7320, &qword_217F5A068);
  v10 = sub_217F4AB14();
  MEMORY[0x21CEAEAC0](v10);

  MEMORY[0x21CEAEAC0](0x69732078616D202CLL, 0xEC000000203A657ALL);
  v11 = sub_217F4B104();
  MEMORY[0x21CEAEAC0](v11);

  MEMORY[0x21CEAEAC0](0xD000000000000018, 0x8000000217F60D90);
  sub_217F4AE54();
  MEMORY[0x21CEAEAC0](0xD000000000000012, 0x8000000217F60DB0);
  v12 = MEMORY[0x21CEAEBA0](a6, &_s14descr2829CD401O24BundleArticleQuotaResultON);
  MEMORY[0x21CEAEAC0](v12);

  MEMORY[0x21CEAEAC0](0xD000000000000011, 0x8000000217F60DD0);
  v13 = sub_217F4B104();
  MEMORY[0x21CEAEAC0](v13);

  MEMORY[0x21CEAEAC0](0x3A73656C7572202CLL, 0xE900000000000020);
  v14 = MEMORY[0x21CEAEBA0](a7, &_s14descr2829CD401O22HeadlineClusteringRuleON);
  MEMORY[0x21CEAEAC0](v14);

  MEMORY[0x21CEAEAC0](0xD00000000000002BLL, 0x8000000217F60DF0);
  v15 = sub_217F4B104();
  MEMORY[0x21CEAEAC0](v15);

  MEMORY[0x21CEAEAC0](0xD00000000000002BLL, 0x8000000217F60E20);
  v16 = sub_217F4B104();
  MEMORY[0x21CEAEAC0](v16);

  return 0;
}

unint64_t sub_217F08D50(void *a1)
{
  sub_217F4ADD4();

  MEMORY[0x21CEAEAC0](*a1, a1[1]);
  MEMORY[0x21CEAEAC0](0x6E69206D6F726620, 0xEC00000020786564);
  v2 = sub_217F4B104();
  MEMORY[0x21CEAEAC0](v2);

  return 0xD000000000000016;
}

uint64_t sub_217F08E20(void *a1)
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD000000000000013, 0x8000000217F60A20);
  MEMORY[0x21CEAEAC0](*a1, a1[1]);
  MEMORY[0x21CEAEAC0](0xD00000000000002ELL, 0x8000000217F60CA0);
  return 0;
}

uint64_t sub_217F08EC0(uint64_t a1, uint64_t a2)
{
  sub_217F4ADD4();
  result = MEMORY[0x21CEAEAC0](0xD00000000000001FLL, 0x8000000217F60CD0);
  if (__OFSUB__(*(a1 + 16), a2))
  {
    __break(1u);
  }

  else
  {
    v5 = sub_217F4B104();
    MEMORY[0x21CEAEAC0](v5);

    MEMORY[0x21CEAEAC0](0xD000000000000028, 0x8000000217F60CF0);
    return 0;
  }

  return result;
}

uint64_t sub_217F08F98(void *a1)
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD00000000000001DLL, 0x8000000217F60C80);
  MEMORY[0x21CEAEAC0](*a1, a1[1]);
  MEMORY[0x21CEAEAC0](0xD00000000000002ELL, 0x8000000217F60CA0);
  return 0;
}

uint64_t sub_217F09038(int a1, char *a2, uint64_t a3, int64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, char *a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, unint64_t a14, uint64_t a15, __int128 *a16)
{
  v326 = a8;
  v335 = a5;
  v329 = a3;
  v331 = a1;
  v22 = 0;
  v316 = a16;
  v319 = a15;
  v317 = a14;
  v320 = a13;
  v330 = a12;
  v318 = a11;
  v332 = a10;
  v327 = a9;
  swift_beginAccess();
  v333 = a7;
  v334 = a2;
  v23 = *(a7 + 16);
  v24 = *(v23 + 16);
  v336 = a6;
  v337 = a4;
  v328 = v24;
  if (!v24)
  {
    swift_retain_n();
    goto LABEL_36;
  }

  swift_retain_n();

  swift_beginAccess();
  if (!*(v23 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v25 = 0;
  v26 = v23 + 32;
  v321 = v23 + 32;
  v322 = (v329 + 56);
  v324 = v23;
  while (1)
  {
    v27 = (v26 + 96 * v25);
    v28 = v27[2];
    v29 = v27[3];
    v30 = *(v27 + 73);
    v371[0] = v27[4];
    v31 = v27[1];
    v367 = *v27;
    v368 = v31;
    *(v371 + 9) = v30;
    v369 = v28;
    v370 = v29;
    if (BYTE2(v371[0]) != 1 || ((LOBYTE(v371[0]) ^ v331) & 1) != 0)
    {
      goto LABEL_23;
    }

    v323 = 96 * v25;
    v32 = *(a2 + 2);
    if (!*(v32 + 16))
    {
      sub_217E98218(&v367, &v372);
LABEL_17:
      v325 = v25;
      v39 = *(v329 + 16);
      sub_217E98218(&v367, &v372);
      swift_beginAccess();
      swift_beginAccess();
      if (v39)
      {
        v40 = v322;
        while (1)
        {
          v41 = *(a6 + 16);
          v42 = v335 + v41;
          if (__OFADD__(v335, v41))
          {
            break;
          }

          v338 = v39;
          v25 = *(v40 - 3);
          v17 = *(v40 - 2);
          v43 = *(v40 - 1);
          v44 = *v40;
          v45 = *(a4 + 16);
          *&v356 = v25;
          *(&v356 + 1) = v17;
          *&v357 = v43;
          BYTE8(v357) = v44;
          v374 = v369;
          v375 = v370;
          *v376 = v371[0];
          *&v376[9] = *(v371 + 9);
          v372 = v367;
          v373 = v368;
          sub_217F2BB04(v25, v17, v43, v44);

          sub_217F1FA44(&v372, v45, v42, 1);
          v40 += 32;

          sub_217F2BB34(v25, v17, v43, v44);
          a4 = v337;
          --v39;
          a6 = v336;
          if (v338 == 1)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_231:

        v262 = v332;
        goto LABEL_232;
      }

LABEL_26:
      sub_217E98274(&v367);
      sub_217E98274(&v367);

      v46 = v333;
      swift_beginAccess();
      v47 = *(v333 + 16);
      v48 = v325;
      if (v325 >= *(v47 + 16))
      {
        __break(1u);
      }

      else
      {
        v49 = (v47 + v323);
        v50 = v49[3];
        v372 = v49[2];
        v373 = v50;
        v51 = v49[4];
        v52 = v49[5];
        v53 = v49[6];
        *&v376[9] = *(v49 + 105);
        v375 = v52;
        *v376 = v53;
        v374 = v51;
        v54 = v372;
        swift_beginAccess();
        v55 = *(*(a4 + 16) + 16);
        v363 = v374;
        v364 = v375;
        v365 = *v376;
        v366 = *&v376[16];
        v361 = v372;
        v362 = v373;
        swift_beginAccess();
        sub_217E98218(&v372, &v356);
        sub_217E98218(&v372, &v356);

        sub_217F194B0(&v356, v54, *(&v54 + 1));
        swift_endAccess();

        if (v326)
        {
          v351 = v54;
          *&v352 = *(&v375 + 1);
          *(&v352 + 1) = v55;
          v353 = xmmword_217F591C0;
          LOBYTE(v355[0]) = 0;

          ClusteringJournal.record(event:)(&v351);
          v358 = v353;
          v359 = v354;
          LOBYTE(v360[0]) = v355[0];
          v356 = v351;
          v357 = v352;
          sub_217F23F40(&v356);
        }

        v358 = v363;
        v359 = v364;
        v360[0] = v365;
        *&v360[1] = v366;
        v356 = v361;
        v357 = v362;
        BYTE8(v360[1]) = 8;
        a4 = v337;
        swift_beginAccess();
        v46 = *(v337 + 16);
        sub_217E98218(&v356, &v351);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v337 + 16) = v46;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_30:
          v58 = *(v46 + 2);
          v57 = *(v46 + 3);
          if (v58 >= v57 >> 1)
          {
            v46 = sub_217E8D720((v57 > 1), v58 + 1, 1, v46);
          }

          *(v46 + 2) = v58 + 1;
          v59 = &v46[96 * v58];
          v60 = v357;
          *(v59 + 2) = v356;
          *(v59 + 3) = v60;
          v61 = v358;
          v62 = v359;
          v63 = v360[0];
          *(v59 + 105) = *(v360 + 9);
          *(v59 + 5) = v62;
          *(v59 + 6) = v63;
          *(v59 + 4) = v61;
          *(a4 + 16) = v46;
          swift_endAccess();
          v346 = v363;
          v347 = v364;
          v348 = v365;
          v349 = v366;
          v344 = v361;
          v345 = v362;
          v350 = 8;
          sub_217E98274(&v344);
          swift_beginAccess();
          v64 = *(a6 + 16);
          v65 = __OFADD__(v64, 1);
          v66 = v64 + 1;
          if (v65)
          {
            __break(1u);
          }

          else
          {
            *(a6 + 16) = v66;
            swift_beginAccess();
            sub_217F0BEE4(v48, &v339);
            swift_endAccess();
            v353 = v341;
            v354 = v342;
            v355[0] = v343[0];
            *(v355 + 9) = *(v343 + 9);
            v351 = v339;
            v352 = v340;
            v67 = sub_217E98274(&v351);
            if (qword_280C27680 == -1)
            {
LABEL_34:
              v69 = *algn_280C31B88;
              v71.n128_f64[0] = MEMORY[0x28223BE20](v67, v68);
              v314 = &v372;
              v72 = sub_217F2BB6C;
              goto LABEL_131;
            }
          }

          v67 = swift_once();
          goto LABEL_34;
        }
      }

      v46 = sub_217E8D720(0, *(v46 + 2) + 1, 1, v46);
      *(a4 + 16) = v46;
      goto LABEL_30;
    }

    v17 = *(&v367 + 1);
    v33 = v367;
    sub_217F4B224();
    sub_217E98218(&v367, &v372);

    sub_217F4AB24();
    v34 = sub_217F4B254();
    v35 = -1 << *(v32 + 32);
    v36 = v34 & ~v35;
    if (((*(v32 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
    {
LABEL_15:

      a4 = v337;
      goto LABEL_17;
    }

    v16 = ~v35;
    while (1)
    {
      v37 = (*(v32 + 48) + 16 * v36);
      v38 = *v37 == v33 && v37[1] == v17;
      if (v38 || (sub_217F4B144() & 1) != 0)
      {
        break;
      }

      v36 = (v36 + 1) & v16;
      if (((*(v32 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    sub_217E98274(&v367);
    a2 = v334;
    a4 = v337;
    v23 = v324;
    v26 = v321;
LABEL_23:
    if (++v25 == v328)
    {
      break;
    }

    if (v25 >= *(v23 + 16))
    {
      goto LABEL_25;
    }
  }

LABEL_36:
  v25 = *(v327 + 16);
  v73 = v332;
  if (v25 < v332)
  {
    __break(1u);
    goto LABEL_254;
  }

  if (v332 < 0)
  {
LABEL_254:
    __break(1u);
    goto LABEL_255;
  }

  v17 = v327 + 32;
  v328 = (v327 + 32);
  v325 = v25;
  if (v25 != v332)
  {
    swift_bridgeObjectRetain_n();
    swift_beginAccess();
    if (v25 > v332)
    {
      v322 = (v329 + 56);
      do
      {
        v112 = (v17 + 96 * v73);
        v113 = v112[4];
        v370 = v112[3];
        v371[0] = v113;
        v114 = v112[2];
        v368 = v112[1];
        v369 = v114;
        *(v371 + 9) = *(v112 + 73);
        v367 = *v112;
        if (BYTE2(v371[0]) == 1 && ((LOBYTE(v371[0]) ^ v331) & 1) == 0)
        {
          v323 = v17 + 96 * v73;
          v324 = v73;
          v115 = *(a2 + 2);
          if (!*(v115 + 2))
          {
            sub_217E98218(&v367, &v372);
LABEL_80:
            v123 = *(v329 + 16);
            sub_217E98218(&v367, &v372);
            swift_beginAccess();
            swift_beginAccess();
            if (v123)
            {
              v124 = v322;
              while (1)
              {
                v125 = *(a6 + 16);
                v126 = v335 + v125;
                if (__OFADD__(v335, v125))
                {
                  break;
                }

                v338 = v123;
                v16 = *(v124 - 2);
                v127 = *(v124 - 1);
                v115 = *v124;
                v128 = *(a4 + 16);
                *&v356 = *(v124 - 3);
                *(&v356 + 1) = v16;
                *&v357 = v127;
                BYTE8(v357) = v115;
                v374 = v369;
                v375 = v370;
                *v376 = v371[0];
                *&v376[9] = *(v371 + 9);
                v372 = v367;
                v373 = v368;
                sub_217F2BB04(v356, v16, v127, v115);

                sub_217F1FA44(&v372, v128, v126, 1);
                v124 += 32;

                sub_217F2BB34(v356, v16, v127, v115);
                a4 = v337;
                --v123;
                a6 = v336;
                if (v338 == 1)
                {
                  goto LABEL_89;
                }
              }

              __break(1u);
LABEL_244:
              v202 = v317;
              swift_beginAccess();
              if (*(v317 + 16))
              {
LABEL_245:
                sub_217E98218(v22, &v367);
                v315 = v333;
                v314 = v332;
                v290 = v329;
                v291 = v22;
                v292 = v16;
                v293 = v327;
                v295 = v335;
                v296 = a6;
                v294 = v123;
                goto LABEL_226;
              }

LABEL_247:
              sub_217E98218(v22, &v367);
              v260 = sub_217F0C1FC(v115, v329, v16, v335, a6, v327, v332, v123, v333, v202, v22, v320, v331 & 1, v318, v319, v316);
LABEL_227:
              v190 = v260;

              v369 = v374;
              v370 = v375;
              v371[0] = *v376;
              *(v371 + 9) = *&v376[9];
              v367 = v372;
              v368 = v373;
              v234 = &v367;
LABEL_175:
              sub_217E98274(v234);
              return v190 & 1;
            }

LABEL_89:
            sub_217E98274(&v367);
            sub_217E98274(&v367);
            swift_bridgeObjectRelease_n();
            v129 = *(v323 + 48);
            v374 = *(v323 + 32);
            v375 = v129;
            *v376 = *(v323 + 64);
            *&v376[9] = *(v323 + 73);
            v130 = *(v323 + 16);
            v372 = *v323;
            v373 = v130;
            v131 = v372;
            swift_beginAccess();
            v132 = *(*(a4 + 16) + 16);
            v346 = v374;
            v347 = v375;
            v348 = *v376;
            v349 = *&v376[16];
            v344 = v372;
            v345 = v373;
            swift_beginAccess();
            sub_217E98218(&v372, &v356);
            sub_217E98218(&v372, &v356);

            sub_217F194B0(&v356, v131, *(&v131 + 1));
            swift_endAccess();

            if (v326)
            {
              v351 = v131;
              *&v352 = *(&v375 + 1);
              *(&v352 + 1) = v132;
              *&v353 = v324;
              *(&v353 + 1) = 2;
              LOBYTE(v355[0]) = 0;

              ClusteringJournal.record(event:)(&v351);
              v358 = v353;
              v359 = v354;
              LOBYTE(v360[0]) = v355[0];
              v356 = v351;
              v357 = v352;
              sub_217F23F40(&v356);
            }

            v358 = v346;
            v359 = v347;
            v360[0] = v348;
            *&v360[1] = v349;
            v356 = v344;
            v357 = v345;
            BYTE8(v360[1]) = 8;
            a4 = v337;
            swift_beginAccess();
            a2 = *(v337 + 16);
            sub_217E98218(&v356, &v351);
            v133 = swift_isUniquelyReferenced_nonNull_native();
            *(v337 + 16) = a2;
            if (v133)
            {
              goto LABEL_92;
            }

            goto LABEL_260;
          }

          v16 = *(&v367 + 1);
          v116 = v367;
          sub_217F4B224();
          sub_217E98218(&v367, &v372);

          sub_217F4AB24();
          v117 = sub_217F4B254();
          v118 = -1 << v115[32];
          v119 = v117 & ~v118;
          if (((*&v115[((v119 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v119) & 1) == 0)
          {
LABEL_78:

            a6 = v336;
            a4 = v337;
            goto LABEL_80;
          }

          v120 = ~v118;
          while (1)
          {
            v121 = (*(v115 + 6) + 16 * v119);
            v122 = *v121 == v116 && v121[1] == v16;
            if (v122 || (sub_217F4B144() & 1) != 0)
            {
              break;
            }

            v119 = (v119 + 1) & v120;
            if (((*&v115[((v119 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v119) & 1) == 0)
            {
              goto LABEL_78;
            }
          }

          sub_217E98274(&v367);
          a2 = v334;
          a6 = v336;
          a4 = v337;
          v73 = v324;
        }

        if (++v73 == v25)
        {
          goto LABEL_40;
        }
      }

      while (v73 < v25);
    }

    __break(1u);
    goto LABEL_89;
  }

  swift_bridgeObjectRetain_n();
LABEL_40:
  swift_beginAccess();
  v74 = *(*(v333 + 16) + 16);

  v324 = v75;
  if (v74)
  {
    v76 = 0;
    v77 = v75 + 32;
    v323 = v75 + 32;
    do
    {
      v78 = (v77 + 96 * v76);
      v79 = v78[2];
      v80 = v78[3];
      v81 = *(v78 + 73);
      v371[0] = v78[4];
      v82 = v78[1];
      v367 = *v78;
      v368 = v82;
      *(v371 + 9) = v81;
      v369 = v79;
      v370 = v80;
      if (BYTE2(v371[0]) == 1 && ((LOBYTE(v371[0]) ^ v331) & 1) == 0)
      {
        v338 = 96 * v76;
        v83 = v367;
        swift_beginAccess();
        v84 = *(a2 + 2);
        if (!*(v84 + 16))
        {
          sub_217E98218(&v367, &v372);
          sub_217E98274(&v367);

LABEL_56:
          swift_bridgeObjectRelease_n();
          v91 = v333;
          swift_beginAccess();
          v92 = *(v333 + 16);
          a6 = v336;
          if (v76 >= *(v92 + 16))
          {
            __break(1u);
          }

          else
          {
            v93 = (v92 + v338);
            v94 = v93[3];
            v372 = v93[2];
            v373 = v94;
            v95 = v93[4];
            v96 = v93[5];
            v97 = v93[6];
            *&v376[9] = *(v93 + 105);
            v375 = v96;
            *v376 = v97;
            v374 = v95;
            v98 = v372;
            swift_beginAccess();
            v99 = *(*(a4 + 16) + 16);
            v363 = v374;
            v364 = v375;
            v365 = *v376;
            v366 = *&v376[16];
            v361 = v372;
            v362 = v373;
            swift_beginAccess();
            sub_217E98218(&v372, &v356);
            sub_217E98218(&v372, &v356);

            sub_217F194B0(&v356, v98, *(&v98 + 1));
            swift_endAccess();

            if (v326)
            {
              v351 = v98;
              *&v352 = *(&v375 + 1);
              *(&v352 + 1) = v99;
              v353 = xmmword_217F591C0;
              LOBYTE(v355[0]) = 0;

              ClusteringJournal.record(event:)(&v351);
              v358 = v353;
              v359 = v354;
              LOBYTE(v360[0]) = v355[0];
              v356 = v351;
              v357 = v352;
              sub_217F23F40(&v356);
            }

            v358 = v363;
            v359 = v364;
            v360[0] = v365;
            *&v360[1] = v366;
            v356 = v361;
            v357 = v362;
            BYTE8(v360[1]) = 8;
            a4 = v337;
            swift_beginAccess();
            v91 = *(v337 + 16);
            sub_217E98218(&v356, &v351);
            v100 = swift_isUniquelyReferenced_nonNull_native();
            *(v337 + 16) = v91;
            if (v100)
            {
LABEL_60:
              v102 = *(v91 + 2);
              v101 = *(v91 + 3);
              if (v102 >= v101 >> 1)
              {
                v91 = sub_217E8D720((v101 > 1), v102 + 1, 1, v91);
              }

              *(v91 + 2) = v102 + 1;
              v103 = &v91[96 * v102];
              v104 = v357;
              *(v103 + 2) = v356;
              *(v103 + 3) = v104;
              v105 = v358;
              v106 = v359;
              v107 = v360[0];
              *(v103 + 105) = *(v360 + 9);
              *(v103 + 5) = v106;
              *(v103 + 6) = v107;
              *(v103 + 4) = v105;
              *(a4 + 16) = v91;
              swift_endAccess();
              v346 = v363;
              v347 = v364;
              v348 = v365;
              v349 = v366;
              v344 = v361;
              v345 = v362;
              v350 = 8;
              sub_217E98274(&v344);
              swift_beginAccess();
              v108 = *(a6 + 16);
              v65 = __OFADD__(v108, 1);
              v109 = v108 + 1;
              if (v65)
              {
                __break(1u);
              }

              else
              {
                *(a6 + 16) = v109;
                swift_beginAccess();
                sub_217F0BEE4(v76, &v339);
                swift_endAccess();
                v353 = v341;
                v354 = v342;
                v355[0] = v343[0];
                *(v355 + 9) = *(v343 + 9);
                v351 = v339;
                v352 = v340;
                v110 = sub_217E98274(&v351);
                if (qword_280C27680 == -1)
                {
LABEL_64:
                  v69 = *algn_280C31B88;
                  v71.n128_f64[0] = MEMORY[0x28223BE20](v110, v111);
                  v314 = &v372;
                  v72 = sub_217F2BAEC;
                  goto LABEL_131;
                }
              }

              v110 = swift_once();
              goto LABEL_64;
            }
          }

          v91 = sub_217E8D720(0, *(v91 + 2) + 1, 1, v91);
          *(a4 + 16) = v91;
          goto LABEL_60;
        }

        sub_217F4B224();
        sub_217E98218(&v367, &v372);

        sub_217F4AB24();
        v85 = sub_217F4B254();
        v86 = -1 << *(v84 + 32);
        v87 = v85 & ~v86;
        if (((*(v84 + 56 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) == 0)
        {
LABEL_55:

          sub_217E98274(&v367);

          a4 = v337;
          goto LABEL_56;
        }

        v88 = ~v86;
        while (1)
        {
          v89 = (*(v84 + 48) + 16 * v87);
          v90 = *v89 == v83 && v89[1] == *(&v83 + 1);
          if (v90 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v87 = (v87 + 1) & v88;
          if (((*(v84 + 56 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) == 0)
          {
            goto LABEL_55;
          }
        }

        sub_217E98274(&v367);
        a2 = v334;
        a6 = v336;
        a4 = v337;
        v17 = v328;
        v25 = v325;
        v77 = v323;
      }

      ++v76;
    }

    while (v76 != v74);
  }

  a4 = v332;
  if (v25 == v332)
  {
LABEL_98:
    if (v326)
    {
      v374 = 0u;
      v375 = 0u;
      v372 = 0u;
      v373 = 0u;
      v376[0] = -16;
      v145 = ClusteringJournal.record(event:)(&v372);
    }

    if (qword_280C27680 != -1)
    {
      v145 = swift_once();
    }

    v147 = *algn_280C31B88;
    v148 = MEMORY[0x28223BE20](v145, v146);
    v314 = v335;
    v336 = v147;
    v338 = v149;
    v149(sub_217F2BAFC, v148);
    swift_beginAccess();
    *(v318 + 16) = 1;
    swift_beginAccess();
    v150 = *(v334 + 2);
    v151 = *v330;
    v152 = v330[1];

    LOBYTE(v151) = sub_217EA3608(v151, v152, v150);

    if (v151)
    {
      v153 = swift_bridgeObjectRelease_n();
      v155 = MEMORY[0x28223BE20](v153, v154);
      v314 = v330;
      (v338)(sub_217F2BFF4, v155);
      goto LABEL_135;
    }

    v16 = v337;
    v250 = swift_beginAccess();
    if (*(*(v337 + 16) + 16) < v320)
    {
      swift_bridgeObjectRelease_n();
      v22 = v330;
      v252 = *(v330 + 3);
      v374 = *(v330 + 2);
      v375 = v252;
      *v376 = *(v330 + 4);
      *&v376[9] = *(v330 + 73);
      v253 = *(v330 + 1);
      v372 = *v330;
      v373 = v253;
      v254 = *(v319 + 16);
      swift_beginAccess();
      v255 = *(*(v337 + 16) + 16);
      v115 = v334;
      if (v255 >= v254 || (v256 = *(v319 + v255 + 32)) == 0)
      {
        sub_217E98218(v330, &v367);
        v315 = v333;
        v314 = v332;
        v290 = v329;
        v291 = v330;
        v292 = v337;
        v294 = v326;
        v293 = v327;
        v295 = v335;
        v296 = a6;
        goto LABEL_226;
      }

      v123 = v326;
      if (v256 != 1)
      {
        goto LABEL_244;
      }

      swift_beginAccess();
      if (*(v318 + 16))
      {
        goto LABEL_245;
      }

      result = swift_beginAccess();
      v258 = *(a6 + 16);
      v65 = __OFADD__(v258, v335);
      v259 = v335 + v258;
      if (v65)
      {
        __break(1u);
        return result;
      }

      if (v259 >= v316)
      {
        MEMORY[0x28223BE20](result, v257);
        v314 = v312;
        sub_217E98218(v22, &v367);
        (v338)(sub_217F2BFF0, &v313);
        v315 = v333;
        v314 = v332;
        v290 = v329;
        v291 = v22;
        v292 = v16;
        v293 = v327;
        v295 = v335;
        v296 = a6;
        v294 = v123;
LABEL_226:
        v260 = sub_217F143A0(v290, v291, v292, v293, v295, v296, &v372, v294, v314, v315);
      }

      else
      {
        sub_217E98218(v330, &v367);
        v260 = sub_217F09038(v331 & 1, v334, v329, v337, v335, a6, v333, v326, v327, v332, v318, v330, v320, v317, v319, v316);
      }

      goto LABEL_227;
    }

    v261 = MEMORY[0x28223BE20](v250, v251);
    v262 = v332;
    v314 = v327;
    v315 = v332;
    (v338)(sub_217F2BFB8, v261);
    if (v25 != v332)
    {

      v263 = v334;
      swift_beginAccess();
      a6 = v332;
      if (v25 > v332)
      {
        do
        {
          v264 = v17 + 96 * a6;
          v265 = *(v264 + 48);
          v266 = *(v264 + 16);
          v374 = *(v264 + 32);
          v375 = v265;
          v267 = *(v264 + 48);
          *v376 = *(v264 + 64);
          *&v376[9] = *(v264 + 73);
          v268 = *(v264 + 16);
          v372 = *v264;
          v373 = v268;
          v353 = v374;
          v354 = v267;
          v355[0] = *(v264 + 64);
          *&v355[1] = *(v264 + 80);
          v351 = v372;
          v352 = v266;
          v269 = *(v263 + 2);
          if (*(v269 + 16))
          {
            v270 = v376[24];
            v271 = v372;
            sub_217F4B224();
            sub_217E98218(&v372, &v367);

            sub_217F4AB24();
            v272 = sub_217F4B254();
            v273 = -1 << *(v269 + 32);
            v274 = v272 & ~v273;
            if ((*(v269 + 56 + ((v274 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v274))
            {
              v275 = ~v273;
              while (1)
              {
                v276 = (*(v269 + 48) + 16 * v274);
                v277 = *v276 == v271 && v276[1] == *(&v271 + 1);
                if (v277 || (sub_217F4B144() & 1) != 0)
                {
                  break;
                }

                v274 = (v274 + 1) & v275;
                if (((*(v269 + 56 + ((v274 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v274) & 1) == 0)
                {
                  goto LABEL_212;
                }
              }

              v289 = MEMORY[0x28223BE20](v287, v288);
              v314 = v330;
              (v338)(sub_217F2BFEC, v289);
              v369 = v353;
              v370 = v354;
              v371[0] = v355[0];
              *&v371[1] = *&v355[1];
              v367 = v351;
              v368 = v352;
              BYTE8(v371[1]) = v270;
              sub_217E98274(&v367);
              v17 = v328;
              v25 = v325;
              goto LABEL_220;
            }

LABEL_212:

            v17 = v328;
            v25 = v325;
          }

          else
          {
            sub_217E98218(&v372, &v367);
          }

          v369 = v353;
          v370 = v354;
          v371[0] = v355[0];
          *&v371[1] = *&v355[1];
          v367 = v351;
          v368 = v352;
          BYTE8(v371[1]) = 2;
          swift_beginAccess();
          v278 = *(v333 + 16);
          sub_217E98218(&v367, &v356);
          v279 = swift_isUniquelyReferenced_nonNull_native();
          *(v333 + 16) = v278;
          if ((v279 & 1) == 0)
          {
            v278 = sub_217E8D720(0, *(v278 + 2) + 1, 1, v278);
            *(v333 + 16) = v278;
          }

          v281 = *(v278 + 2);
          v280 = *(v278 + 3);
          if (v281 >= v280 >> 1)
          {
            v278 = sub_217E8D720((v280 > 1), v281 + 1, 1, v278);
          }

          *(v278 + 2) = v281 + 1;
          v282 = &v278[96 * v281];
          v283 = v368;
          *(v282 + 2) = v367;
          *(v282 + 3) = v283;
          v284 = v369;
          v285 = v370;
          v286 = v371[0];
          *(v282 + 105) = *(v371 + 9);
          *(v282 + 5) = v285;
          *(v282 + 6) = v286;
          *(v282 + 4) = v284;
          *(v333 + 16) = v278;
          swift_endAccess();
          v358 = v353;
          v359 = v354;
          v360[0] = v355[0];
          *&v360[1] = *&v355[1];
          v356 = v351;
          v357 = v352;
          BYTE8(v360[1]) = 2;
          sub_217E98274(&v356);
LABEL_220:
          ++a6;
          v263 = v334;
          if (a6 == v25)
          {
            goto LABEL_231;
          }
        }

        while (a6 >= v332 && a6 < v25);
      }

LABEL_255:
      __break(1u);
      goto LABEL_256;
    }

LABEL_232:
    if (!v326)
    {
      goto LABEL_184;
    }

    swift_beginAccess();
    v300 = *(v333 + 16);

    v301 = sub_217F20B38(v17, v262, (2 * v25) | 1, v334 + 2);

    *&v372 = v300;
    sub_217E80538(v301);
    v302 = v372;
    v303 = *(v372 + 16);
    if (v303)
    {
      *&v372 = MEMORY[0x277D84F90];
      sub_217EA0CC0(0, v303, 0);
      v304 = v372;
      v338 = v302;
      v305 = (v302 + 88);
      do
      {
        v307 = *(v305 - 7);
        v306 = *(v305 - 6);
        v308 = *v305;
        *&v372 = v304;
        v310 = *(v304 + 16);
        v309 = *(v304 + 24);

        if (v310 >= v309 >> 1)
        {
          sub_217EA0CC0((v309 > 1), v310 + 1, 1);
          v304 = v372;
        }

        *(v304 + 16) = v310 + 1;
        v311 = (v304 + 24 * v310);
        v311[4] = v307;
        v311[5] = v306;
        v311[6] = v308;
        v305 += 12;
        --v303;
      }

      while (v303);
    }

    else
    {

      v304 = MEMORY[0x277D84F90];
    }

    *&v367 = v304;
    LOBYTE(v371[0]) = -127;
    ClusteringJournal.record(event:)(&v367);

    v374 = v369;
    v375 = v370;
    v376[0] = v371[0];
    v372 = v367;
    v373 = v368;
    v248 = &v372;
LABEL_187:
    sub_217F23F40(v248);
LABEL_188:
    v190 = 0;
    return v190 & 1;
  }

  while (2)
  {
    v156 = (v17 + 96 * a4);
    v157 = v156[4];
    v370 = v156[3];
    v371[0] = v157;
    v158 = v156[2];
    v368 = v156[1];
    v369 = v158;
    *(v371 + 9) = *(v156 + 73);
    v367 = *v156;
    if (BYTE2(v371[0]) != 1 || ((LOBYTE(v371[0]) ^ v331) & 1) != 0)
    {
LABEL_118:
      v65 = __OFADD__(a4++, 1);
      if (v65)
      {
        goto LABEL_259;
      }

      if (a4 == v25)
      {
        goto LABEL_98;
      }

      continue;
    }

    break;
  }

  v159 = v367;
  swift_beginAccess();
  v160 = *(a2 + 2);
  if (*(v160 + 16))
  {
    sub_217F4B224();
    sub_217E98218(&v367, &v372);

    sub_217F4AB24();
    v161 = sub_217F4B254();
    v162 = -1 << *(v160 + 32);
    v163 = v161 & ~v162;
    if (((*(v160 + 56 + ((v163 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v163) & 1) == 0)
    {
LABEL_121:

      goto LABEL_122;
    }

    v164 = ~v162;
    while (1)
    {
      v165 = (*(v160 + 48) + 16 * v163);
      v166 = *v165 == v159 && v165[1] == *(&v159 + 1);
      if (v166 || (sub_217F4B144() & 1) != 0)
      {
        break;
      }

      v163 = (v163 + 1) & v164;
      if (((*(v160 + 56 + ((v163 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v163) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    v145 = sub_217E98274(&v367);
    a2 = v334;
    a6 = v336;
    v17 = v328;
    v25 = v325;
    goto LABEL_118;
  }

  sub_217E98218(&v367, &v372);
LABEL_122:
  sub_217E98274(&v367);

  v167 = v156[3];
  v374 = v156[2];
  v375 = v167;
  *v376 = v156[4];
  *&v376[9] = *(v156 + 73);
  v168 = v156[1];
  v372 = *v156;
  v373 = v168;
  v169 = v372;
  swift_beginAccess();
  v170 = *(*(v337 + 16) + 16);
  v346 = v374;
  v347 = v375;
  v348 = *v376;
  v349 = *&v376[16];
  v344 = v372;
  v345 = v373;
  swift_beginAccess();
  sub_217E98218(&v372, &v356);
  sub_217E98218(&v372, &v356);

  sub_217F194B0(&v356, v169, *(&v169 + 1));
  swift_endAccess();

  a6 = v336;
  if (v326)
  {
    v351 = v169;
    *&v352 = *(&v375 + 1);
    *(&v352 + 1) = v170;
    *&v353 = a4;
    *(&v353 + 1) = 2;
    LOBYTE(v355[0]) = 0;

    ClusteringJournal.record(event:)(&v351);
    v358 = v353;
    v359 = v354;
    LOBYTE(v360[0]) = v355[0];
    v356 = v351;
    v357 = v352;
    sub_217F23F40(&v356);
  }

  v358 = v346;
  v359 = v347;
  v360[0] = v348;
  *&v360[1] = v349;
  v356 = v344;
  v357 = v345;
  BYTE8(v360[1]) = 8;
  a4 = v337;
  swift_beginAccess();
  v171 = *(v337 + 16);
  sub_217E98218(&v356, &v351);
  v172 = swift_isUniquelyReferenced_nonNull_native();
  *(v337 + 16) = v171;
  if ((v172 & 1) == 0)
  {
    v171 = sub_217E8D720(0, *(v171 + 2) + 1, 1, v171);
    *(a4 + 16) = v171;
  }

  v174 = *(v171 + 2);
  v173 = *(v171 + 3);
  if (v174 >= v173 >> 1)
  {
    v171 = sub_217E8D720((v173 > 1), v174 + 1, 1, v171);
  }

  *(v171 + 2) = v174 + 1;
  v175 = &v171[96 * v174];
  v176 = v357;
  *(v175 + 2) = v356;
  *(v175 + 3) = v176;
  v177 = v358;
  v178 = v359;
  v179 = v360[0];
  *(v175 + 105) = *(v360 + 9);
  *(v175 + 5) = v178;
  *(v175 + 6) = v179;
  *(v175 + 4) = v177;
  *(a4 + 16) = v171;
  swift_endAccess();
  v353 = v346;
  v354 = v347;
  v355[0] = v348;
  *&v355[1] = v349;
  v351 = v344;
  v352 = v345;
  BYTE8(v355[1]) = 8;
  sub_217E98274(&v351);
  v180 = swift_beginAccess();
  v182 = *(a6 + 16);
  v65 = __OFADD__(v182, 1);
  v183 = v182 + 1;
  if (v65)
  {
    __break(1u);
  }

  else
  {
    *(a6 + 16) = v183;
    if (qword_280C27680 == -1)
    {
      goto LABEL_130;
    }
  }

  v180 = swift_once();
LABEL_130:
  v69 = *algn_280C31B88;
  v71.n128_f64[0] = MEMORY[0x28223BE20](v180, v181);
  v314 = &v372;
  v72 = sub_217F2BAF4;
LABEL_131:
  while (2)
  {
    v325 = v69;
    v328 = v70;
    v70(v72, v71);
    sub_217E98274(&v372);
    swift_beginAccess();
    v184 = *(v334 + 2);
    v185 = *v330;
    v186 = v330[1];

    LOBYTE(v185) = sub_217EA3608(v185, v186, v184);

    if ((v185 & 1) == 0)
    {
      v191 = swift_beginAccess();
      v193 = *(*(a4 + 16) + 16);
      if (v193 < v320)
      {
        v194 = *(v330 + 3);
        v369 = *(v330 + 2);
        v370 = v194;
        v371[0] = *(v330 + 4);
        *(v371 + 9) = *(v330 + 73);
        v195 = *(v330 + 1);
        v367 = *v330;
        v368 = v195;
        if (v193 >= *(v319 + 16) || (v196 = *(v319 + v193 + 32)) == 0)
        {
          sub_217E98218(v330, &v356);
          v315 = v333;
          v314 = v332;
          v227 = v329;
          v228 = v330;
LABEL_172:
          v229 = a4;
          v231 = v326;
          v230 = v327;
          v232 = v335;
          v233 = a6;
LABEL_173:
          v200 = sub_217F143A0(v227, v228, v229, v230, v232, v233, &v367, v231, v314, v315);
          goto LABEL_174;
        }

        if (v196 == 1)
        {
          v197 = v318;
          swift_beginAccess();
          if ((*(v318 + 16) & 1) == 0)
          {
            swift_beginAccess();
            v198 = *(a6 + 16);
            v65 = __OFADD__(v198, v335);
            v199 = v335 + v198;
            if (v65)
            {
              __break(1u);
            }

            else
            {
              if (v199 < v316)
              {
                sub_217E98218(v330, &v356);
                v200 = sub_217F09038(v331 & 1, v334, v329, a4, v335, a6, v333, v326, v327, v332, v318, v330, v320, v317, v319, v316);
LABEL_174:
                v190 = v200;

                v358 = v369;
                v359 = v370;
                v360[0] = v371[0];
                *(v360 + 9) = *(v371 + 9);
                v356 = v367;
                v357 = v368;
                v234 = &v356;
                goto LABEL_175;
              }

              v297 = sub_217E98218(v330, &v356);
              v197 = v330;
              if (qword_280C27680 == -1)
              {
                goto LABEL_229;
              }
            }

            v297 = swift_once();
LABEL_229:
            v299 = MEMORY[0x28223BE20](v297, v298);
            v328(sub_217F2BFE4, v299);
            v315 = v333;
            v314 = v332;
            v227 = v329;
            v228 = v197;
            goto LABEL_172;
          }
        }

        else
        {
          swift_beginAccess();
          if ((*(v317 + 16) & 1) == 0)
          {
            sub_217E98218(v330, &v356);
            v200 = sub_217F0C1FC(v334, v329, a4, v335, a6, v327, v332, v326, v333, v317, v330, v320, v331 & 1, v318, v319, v316);
            goto LABEL_174;
          }
        }

        sub_217E98218(v330, &v356);
        v315 = v333;
        v314 = v332;
        v227 = v329;
        v228 = v330;
        v229 = a4;
        v230 = v327;
        v232 = v335;
        v233 = a6;
        v231 = v326;
        goto LABEL_173;
      }

      if (qword_280C27680 != -1)
      {
LABEL_256:
        v191 = swift_once();
      }

      v201 = MEMORY[0x28223BE20](v191, v192);
      v202 = v327;
      v203 = v332;
      v314 = v327;
      v315 = v332;
      a2 = v325;
      v328(sub_217F2BFB4, v201);
      a4 = *(v327 + 16);
      if (a4 < v332)
      {
        __break(1u);
      }

      else
      {
        v115 = v334;
        if ((v332 & 0x8000000000000000) == 0)
        {
          v123 = v327;
          v338 = v327 + 32;
          swift_bridgeObjectRetain_n();
          if (a4 == v332)
          {
            goto LABEL_177;
          }

          swift_beginAccess();
          v16 = v332;
          if (a4 <= v332)
          {
LABEL_246:
            __break(1u);
            goto LABEL_247;
          }

          a6 = 96;
          while (1)
          {
            v204 = v338 + 96 * v16;
            v205 = *(v204 + 48);
            v206 = *(v204 + 16);
            v369 = *(v204 + 32);
            v370 = v205;
            v207 = *(v204 + 48);
            v371[0] = *(v204 + 64);
            *(v371 + 9) = *(v204 + 73);
            v208 = *(v204 + 16);
            v367 = *v204;
            v368 = v208;
            v346 = v369;
            v347 = v207;
            v348 = *(v204 + 64);
            v349 = *(v204 + 80);
            v344 = v367;
            v345 = v206;
            v209 = *(v115 + 2);
            if (!*(v209 + 16))
            {
              break;
            }

            v210 = BYTE8(v371[1]);
            v211 = v367;
            sub_217F4B224();
            sub_217E98218(&v367, &v356);

            sub_217F4AB24();
            v212 = sub_217F4B254();
            v213 = -1 << *(v209 + 32);
            v202 = v212 & ~v213;
            if (((*(v209 + 56 + ((v202 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v202) & 1) == 0)
            {
LABEL_159:

              a6 = 96;
LABEL_161:
              v358 = v346;
              v359 = v347;
              v360[0] = v348;
              *&v360[1] = v349;
              v356 = v344;
              v357 = v345;
              BYTE8(v360[1]) = 2;
              swift_beginAccess();
              v123 = *(v333 + 16);
              sub_217E98218(&v356, &v351);
              v217 = swift_isUniquelyReferenced_nonNull_native();
              *(v333 + 16) = v123;
              if ((v217 & 1) == 0)
              {
                v123 = sub_217E8D720(0, *(v123 + 2) + 1, 1, v123);
                *(v333 + 16) = v123;
              }

              v202 = *(v123 + 2);
              v218 = *(v123 + 3);
              if (v202 >= v218 >> 1)
              {
                v123 = sub_217E8D720((v218 > 1), v202 + 1, 1, v123);
              }

              *(v123 + 2) = v202 + 1;
              v219 = &v123[96 * v202];
              v220 = v357;
              *(v219 + 2) = v356;
              *(v219 + 3) = v220;
              v221 = v358;
              v222 = v359;
              v223 = v360[0];
              *(v219 + 105) = *(v360 + 9);
              *(v219 + 5) = v222;
              *(v219 + 6) = v223;
              *(v219 + 4) = v221;
              *(v333 + 16) = v123;
              swift_endAccess();
              v353 = v346;
              v354 = v347;
              v355[0] = v348;
              *&v355[1] = v349;
              v351 = v344;
              v352 = v345;
              BYTE8(v355[1]) = 2;
              sub_217E98274(&v351);
              goto LABEL_167;
            }

            LODWORD(v337) = v210;
            v214 = ~v213;
            while (1)
            {
              v215 = (*(v209 + 48) + 16 * v202);
              v216 = *v215 == v211 && v215[1] == *(&v211 + 1);
              if (v216 || (sub_217F4B144() & 1) != 0)
              {
                break;
              }

              v202 = (v202 + 1) & v214;
              if (((*(v209 + 56 + ((v202 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v202) & 1) == 0)
              {
                goto LABEL_159;
              }
            }

            v226 = MEMORY[0x28223BE20](v224, v225);
            v314 = v330;
            v123 = v325;
            v328(sub_217F2BFE0, v226);
            v358 = v346;
            v359 = v347;
            v360[0] = v348;
            *&v360[1] = v349;
            v356 = v344;
            v357 = v345;
            BYTE8(v360[1]) = v337;
            sub_217E98274(&v356);
            a6 = 96;
LABEL_167:
            ++v16;
            v115 = v334;
            if (v16 == a4)
            {

              v203 = v332;
LABEL_177:
              if (v326)
              {
                swift_beginAccess();
                v235 = v115;
                v236 = *(v333 + 16);

                v237 = sub_217F20B38(v338, v203, (2 * a4) | 1, v235 + 2);

                *&v367 = v236;
                sub_217E80538(v237);
                v238 = v367;
                v239 = *(v367 + 16);
                if (v239)
                {
                  *&v367 = MEMORY[0x277D84F90];
                  sub_217EA0CC0(0, v239, 0);
                  v240 = v367;
                  v338 = v238;
                  v241 = (v238 + 88);
                  do
                  {
                    v243 = *(v241 - 7);
                    v242 = *(v241 - 6);
                    v244 = *v241;
                    *&v367 = v240;
                    v246 = *(v240 + 16);
                    v245 = *(v240 + 24);

                    if (v246 >= v245 >> 1)
                    {
                      sub_217EA0CC0((v245 > 1), v246 + 1, 1);
                      v240 = v367;
                    }

                    *(v240 + 16) = v246 + 1;
                    v247 = (v240 + 24 * v246);
                    v247[4] = v243;
                    v247[5] = v242;
                    v247[6] = v244;
                    v241 += 12;
                    --v239;
                  }

                  while (v239);
                }

                else
                {

                  v240 = MEMORY[0x277D84F90];
                }

                *&v356 = v240;
                LOBYTE(v360[0]) = -127;
                ClusteringJournal.record(event:)(&v356);

                v369 = v358;
                v370 = v359;
                LOBYTE(v371[0]) = v360[0];
                v367 = v356;
                v368 = v357;
                v248 = &v367;
                goto LABEL_187;
              }

LABEL_184:

              swift_bridgeObjectRelease_n();
              goto LABEL_188;
            }

            if (v16 < v332 || v16 >= a4)
            {
              goto LABEL_246;
            }
          }

          sub_217E98218(&v367, &v356);
          goto LABEL_161;
        }
      }

      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      a2 = sub_217E8D720(0, *(a2 + 2) + 1, 1, a2);
      *(a4 + 16) = a2;
LABEL_92:
      v135 = *(a2 + 2);
      v134 = *(a2 + 3);
      if (v135 >= v134 >> 1)
      {
        a2 = sub_217E8D720((v134 > 1), v135 + 1, 1, a2);
      }

      *(a2 + 2) = v135 + 1;
      v136 = &a2[96 * v135];
      v137 = v357;
      *(v136 + 2) = v356;
      *(v136 + 3) = v137;
      v138 = v358;
      v139 = v359;
      v140 = v360[0];
      *(v136 + 105) = *(v360 + 9);
      *(v136 + 5) = v139;
      *(v136 + 6) = v140;
      *(v136 + 4) = v138;
      *(a4 + 16) = a2;
      swift_endAccess();
      v353 = v346;
      v354 = v347;
      v355[0] = v348;
      *&v355[1] = v349;
      v351 = v344;
      v352 = v345;
      BYTE8(v355[1]) = 8;
      sub_217E98274(&v351);
      v141 = swift_beginAccess();
      v143 = *(a6 + 16);
      v65 = __OFADD__(v143, 1);
      v144 = v143 + 1;
      if (v65)
      {
        __break(1u);
      }

      else
      {
        *(a6 + 16) = v144;
        if (qword_280C27680 == -1)
        {
LABEL_96:
          v69 = *algn_280C31B88;
          v71.n128_f64[0] = MEMORY[0x28223BE20](v141, v142);
          v314 = &v372;
          v72 = sub_217F2BB64;
          continue;
        }
      }

      v141 = swift_once();
      goto LABEL_96;
    }

    break;
  }

  if (qword_280C27680 != -1)
  {
    v187 = swift_once();
  }

  v189 = MEMORY[0x28223BE20](v187, v188);
  v314 = v330;
  v328(sub_217F2BFE8, v189);
LABEL_135:

  v190 = 1;
  return v190 & 1;
}

uint64_t sub_217F0BC74(uint64_t a1, char a2, uint64_t a3)
{
  if (*(a1 + 66) != 1)
  {
    return 0;
  }

  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 64);
  if (a2)
  {
    if (!*(a1 + 64))
    {
      return v5 & 1;
    }

    goto LABEL_8;
  }

  if ((*(a1 + 64) & 1) == 0)
  {
LABEL_8:
    swift_beginAccess();
    v8 = *(a3 + 16);

    v9 = sub_217EA3608(v4, v3, v8);

    v5 = v9 ^ 1;
    return v5 & 1;
  }

  v5 = 0;
  return v5 & 1;
}

uint64_t sub_217F0BD30(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1[3];
  v26 = a1[2];
  v27 = v8;
  v28[0] = a1[4];
  *(v28 + 9) = *(a1 + 73);
  v9 = a1[1];
  v24 = *a1;
  v25 = v9;
  v10 = *(a2 + 16);
  sub_217E98218(&v24, v22);
  swift_beginAccess();
  v18 = a5;
  result = swift_beginAccess();
  if (v10)
  {
    v12 = (a2 + 56);
    while (1)
    {
      v13 = *(v18 + 16);
      v14 = a4 + v13;
      if (__OFADD__(a4, v13))
      {
        break;
      }

      v16 = *(a3 + 16);
      v15 = *(v12 - 3);
      v19 = *(v12 - 2);
      v20 = *(v12 - 1);
      v21 = *v12;
      v22[3] = v27;
      v23[0] = v28[0];
      *(v23 + 9) = *(v28 + 9);
      v22[0] = v24;
      v22[1] = v25;
      v22[2] = v26;
      sub_217F2BB04(v15, v19, v20, v21);

      sub_217F1FA44(v22, v16, v14, 1);

      v12 += 32;
      result = sub_217F2BB34(v15, v19, v20, v21);
      if (!--v10)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    sub_217E98274(&v24);
    return 1;
  }

  return result;
}

uint64_t sub_217F0BEE4@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_217F1C0F4(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 96 * a1);
    v9 = v8[5];
    v10 = v7 - 1;
    a2[2] = v8[4];
    a2[3] = v9;
    a2[4] = v8[6];
    *(a2 + 73) = *(v8 + 105);
    v11 = v8[3];
    *a2 = v8[2];
    a2[1] = v11;
    result = memmove(v8 + 2, v8 + 8, 96 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_217F0BF94(void *a1)
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD00000000000003DLL, 0x8000000217F60710);
  MEMORY[0x21CEAEAC0](*a1, a1[1]);
  return 0;
}

uint64_t sub_217F0C008(void *a1)
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD00000000000007ALL, 0x8000000217F60750);
  MEMORY[0x21CEAEAC0](*a1, a1[1]);
  return 0;
}

uint64_t sub_217F0C07C(void *a1)
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD000000000000033, 0x8000000217F60880);
  MEMORY[0x21CEAEAC0](*a1, a1[1]);
  return 0;
}

uint64_t sub_217F0C0F0(void *a1)
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD00000000000003DLL, 0x8000000217F60840);
  MEMORY[0x21CEAEAC0](*a1, a1[1]);
  return 0;
}

uint64_t sub_217F0C164()
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD00000000000006ALL, 0x8000000217F607D0);
  v0 = sub_217F4B104();
  MEMORY[0x21CEAEAC0](v0);

  return 0;
}

uint64_t sub_217F0C1FC(char *a1, uint64_t a2, int64_t a3, __int128 *a4, unint64_t a5, int64_t a6, uint64_t a7, char *a8, uint64_t a9, unint64_t a10, uint64_t *a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, __int128 *a16)
{
  v789 = a4;
  v780 = a2;
  v17 = *(a6 + 16);
  if (v17 < a7)
  {
    __break(1u);
    goto LABEL_337;
  }

  v18 = a7;
  if (a7 < 0)
  {
LABEL_337:
    __break(1u);
    goto LABEL_338;
  }

  v19 = a6;
  v20 = a5;
  v21 = a3;
  v22 = a1;
  v781 = a8;
  v773 = a16;
  v772 = a15;
  v770 = a14;
  v769 = a13;
  v776 = a12;
  v782 = a11;
  v787 = a6 + 32;
  v775 = (2 * v17) | 1;
  v771 = a10;
  v785 = v17;
  v786 = a9;
  v783 = a1;
  v784 = a7;
  v788 = a5;
  v790 = a3;
  if (v17 != a7)
  {
    v38 = v17;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_beginAccess();
    if (v38 <= v18)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v39 = v38;
    v774 = v780 + 56;
    v40 = v18;
    v778 = v19;
    while (1)
    {
      v41 = (v787 + 96 * v40);
      v42 = v41[3];
      v842[0] = v41[4];
      v840 = v41[2];
      v841 = v42;
      *(v842 + 9) = *(v41 + 73);
      v43 = v41[1];
      v838 = *v41;
      v839 = v43;
      if (LOBYTE(v842[0]) == 1)
      {
        v777 = (v787 + 96 * v40);
        v779 = v40;
        v44 = *(v22 + 16);
        if (!*(v44 + 16))
        {
          sub_217E98218(&v838, &v848);
LABEL_26:
          v50 = *(v780 + 16);
          sub_217E98218(&v838, &v848);
          swift_beginAccess();
          swift_beginAccess();
          if (v50)
          {
            v22 = v774;
            while (1)
            {
              v51 = *(v20 + 16);
              v19 = v789 + v51;
              if (__OFADD__(v789, v51))
              {
                break;
              }

              v791 = v50;
              v53 = *(v22 - 24);
              v52 = *(v22 - 16);
              v54 = *(v22 - 8);
              v55 = *v22;
              v16 = *(v21 + 16);
              *&v843 = v53;
              *(&v843 + 1) = v52;
              *&v844 = v54;
              BYTE8(v844) = v55;
              v850 = v840;
              v851 = v841;
              *v852 = v842[0];
              *&v852[9] = *(v842 + 9);
              v848 = v838;
              v849 = v839;
              sub_217F2BB04(v53, v52, v54, v55);

              sub_217F1FA44(&v848, v16, v19, 0);
              v22 += 32;

              sub_217F2BB34(v53, v52, v54, v55);
              v21 = v790;
              v50 = (v791 - 1);
              v20 = v788;
              if (v791 == 1)
              {
                goto LABEL_35;
              }
            }

            __break(1u);
LABEL_188:
            v178 = v782;
            sub_217E98218(v782, &v848);

            swift_beginAccess();
            if ((*(v771 + 16) & 1) == 0)
            {
              v181 = sub_217F0C1FC(v22, v780, v16, v789, v20, v19, v784, v781, v786, v771, v782, v776, v769 & 1, v770, v772, v773);
              goto LABEL_113;
            }

LABEL_111:
            v759 = v786;
            v758 = v784;
            v179 = v780;
            v180 = v178;
LABEL_112:
            v181 = sub_217F143A0(v179, v180, v16, v19, v789, v20, &v838, v781, v758, v759);
LABEL_113:
            v120 = v181;

            v850 = v840;
            v851 = v841;
            *v852 = v842[0];
            *&v852[9] = *(v842 + 9);
            v848 = v838;
            v849 = v839;
            sub_217E98274(&v848);
            return v120 & 1;
          }

LABEL_35:
          sub_217E98274(&v838);
          sub_217E98274(&v838);
          v19 = v778;
          if (*(v778 + 16) <= v779)
          {
            __break(1u);
          }

          else
          {
            v56 = v777[3];
            v845 = v777[2];
            v846 = v56;
            v847[0] = v777[4];
            *(v847 + 9) = *(v777 + 73);
            v57 = v777[1];
            v843 = *v777;
            v844 = v57;
            v58 = v843;
            swift_beginAccess();
            v59 = *(*(v21 + 16) + 16);
            v830 = v845;
            v831 = v846;
            v832[0] = v847[0];
            *&v832[1] = *&v847[1];
            v828 = v843;
            v829 = v844;
            v22 = v783;
            swift_beginAccess();
            sub_217E98218(&v843, &v848);
            sub_217E98218(&v843, &v848);

            sub_217F194B0(&v848, v58, *(&v58 + 1));
            swift_endAccess();

            if (v781)
            {
              v833 = v58;
              *&v834 = *(&v846 + 1);
              *(&v834 + 1) = v59;
              *&v835 = v779;
              *(&v835 + 1) = 3;
              LOBYTE(v837[0]) = 0;

              ClusteringJournal.record(event:)(&v833);
              v850 = v835;
              v851 = v836;
              v852[0] = v837[0];
              v848 = v833;
              v849 = v834;
              sub_217F23F40(&v848);
            }

            v850 = v830;
            v851 = v831;
            *v852 = v832[0];
            *&v852[16] = *&v832[1];
            v848 = v828;
            v849 = v829;
            v852[24] = 8;
            swift_beginAccess();
            sub_217E98218(&v848, &v833);
            sub_217F1BC40();
            v60 = *(*(v790 + 16) + 16);
            sub_217F1946C(v60);
            v61 = *(v790 + 16);
            *(v61 + 16) = v60 + 1;
            v62 = (v61 + 96 * v60);
            v63 = v849;
            v62[2] = v848;
            v62[3] = v63;
            v64 = v850;
            v65 = v851;
            v66 = *v852;
            *(v62 + 105) = *&v852[9];
            v62[5] = v65;
            v62[6] = v66;
            v62[4] = v64;
            swift_endAccess();
            v835 = v830;
            v836 = v831;
            v837[0] = v832[0];
            *&v837[1] = *&v832[1];
            v833 = v828;
            v834 = v829;
            BYTE8(v837[1]) = 8;
            v67 = sub_217E98274(&v833);
            if (qword_280C27680 == -1)
            {
LABEL_39:
              v69 = *algn_280C31B88;
              v70 = MEMORY[0x28223BE20](v67, v68);
              v758 = &v843;
              v779 = v69;
              v791 = v71;
              v71(sub_217F2C07C, v70);
              v72 = &v843;
              goto LABEL_53;
            }
          }

          v67 = swift_once();
          goto LABEL_39;
        }

        v45 = v838;
        sub_217F4B224();
        sub_217E98218(&v838, &v848);

        sub_217F4AB24();
        v46 = sub_217F4B254();
        v47 = -1 << *(v44 + 32);
        v16 = v46 & ~v47;
        if (((*(v44 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
LABEL_24:

          v21 = v790;
          goto LABEL_26;
        }

        v22 = ~v47;
        while (1)
        {
          v48 = (*(v44 + 48) + 16 * v16);
          v49 = *v48 == v45 && v48[1] == *(&v45 + 1);
          if (v49 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v16 = (v16 + 1) & v22;
          if (((*(v44 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        sub_217E98274(&v838);
        v22 = v783;
        v18 = v784;
        v21 = v790;
        v39 = v785;
        v40 = v779;
      }

      if (++v40 == v39)
      {
        goto LABEL_5;
      }

      if (v40 >= v39)
      {
        goto LABEL_34;
      }
    }
  }

  swift_bridgeObjectRetain_n();
  swift_retain_n();
LABEL_5:
  swift_beginAccess();

  v24 = sub_217F2064C(v23, v22);
  v26 = v25;

  if (v26)
  {

    v27 = sub_217F208C4(v787, v18, v775, v22);
    v29 = v28;

    if (v29)
    {

      if (v781)
      {
        v850 = 0u;
        v851 = 0u;
        v848 = 0u;
        v849 = 0u;
        v852[0] = 112;
        ClusteringJournal.record(event:)(&v848);
      }

      v778 = v19;
      if (qword_280C27680 == -1)
      {
LABEL_10:
        v31 = qword_280C31B80;
        v30 = *algn_280C31B88;
        qword_280C31B80(sub_217F14384, 0);
        swift_beginAccess();
        *(v771 + 16) = 1;
        swift_beginAccess();
        v32 = *(v22 + 16);
        v34 = *v782;
        v33 = v782[1];

        v774 = v34;
        v777 = v33;
        LOBYTE(v33) = sub_217EA3608(v34, v33, v32);

        if (v33)
        {
          v35 = swift_bridgeObjectRelease_n();
          v37 = MEMORY[0x28223BE20](v35, v36);
          v758 = v782;
          v31(sub_217F2C02C, v37);
LABEL_57:

          v120 = 1;
          return v120 & 1;
        }

        v779 = v30;
        v791 = v31;
        v16 = v790;
        swift_beginAccess();
        v169 = *(*(v790 + 16) + 16);
        v19 = v778;

        if (v169 < v776)
        {

          v172 = *(v782 + 3);
          v840 = *(v782 + 2);
          v841 = v172;
          v842[0] = *(v782 + 4);
          *(v842 + 9) = *(v782 + 73);
          v173 = *(v782 + 1);
          v838 = *v782;
          v839 = v173;
          v113 = *(v772 + 16);
          v174 = swift_beginAccess();
          v176 = *(*(v790 + 16) + 16);
          if (v176 >= v113)
          {
LABEL_110:
            v178 = v782;
            sub_217E98218(v782, &v848);

            goto LABEL_111;
          }

          if (*(v772 + 16) > v176)
          {
            v177 = *(v772 + 32 + v176);
            if (!v177)
            {
              goto LABEL_110;
            }

            if (v177 != 1)
            {
              goto LABEL_188;
            }

            swift_beginAccess();
            if (*(v770 + 16))
            {
              goto LABEL_110;
            }

            result = swift_beginAccess();
            v284 = *(v20 + 16);
            v92 = __OFADD__(v284, v789);
            v285 = v789 + v284;
            if (v92)
            {
              __break(1u);
              goto LABEL_556;
            }

            if (v285 >= v773)
            {
              sub_217E98218(v782, &v848);

              v344 = MEMORY[0x28223BE20](v342, v343);
              v791(sub_217F2BFFC, v344);
              v759 = v786;
              v758 = v784;
              v179 = v780;
              v180 = v782;
              goto LABEL_112;
            }

            swift_beginAccess();
            v286 = *(v786 + 16);
            v287 = *(v286 + 2);
            v761 = v113;
            v762 = v772 + 32;
            if (!v287)
            {
              swift_retain_n();
              sub_217E98218(v782, &v848);
              v116 = v784;
              goto LABEL_360;
            }

            swift_retain_n();
            sub_217E98218(v782, &v848);

            swift_beginAccess();
            v288 = v769;
            v116 = v784;
            if (*(v286 + 2))
            {
              v289 = 0;
              v290 = v286 + 2;
              v760 = v780 + 56;
              v766 = v286;
              v763 = (v286 + 2);
              v764 = v287;
              do
              {
                v291 = &v290[6 * v289];
                v292 = v291[2];
                v293 = v291[3];
                v294 = *(v291 + 73);
                v837[0] = v291[4];
                v295 = *v291;
                v834 = v291[1];
                v833 = v295;
                *(v837 + 9) = v294;
                v836 = v293;
                v835 = v292;
                if (BYTE2(v837[0]) == 1 && ((LOBYTE(v837[0]) ^ v288) & 1) == 0)
                {
                  v765 = 96 * v289;
                  v767 = v289;
                  v297 = *(&v833 + 1);
                  v296 = v833;
                  v16 = *(v22 + 16);
                  sub_217E98218(&v833, &v848);

                  LOBYTE(v296) = sub_217EA3608(v296, v297, v16);

                  if ((v296 & 1) == 0)
                  {
                    v298 = *(v780 + 16);
                    sub_217E98218(&v833, &v848);
                    v299 = v790;
                    swift_beginAccess();
                    swift_beginAccess();
                    if (v298)
                    {
                      v22 = v760;
                      while (1)
                      {
                        v768 = v298;
                        v300 = *(v20 + 16);
                        v19 = v789 + v300;
                        if (__OFADD__(v789, v300))
                        {
                          break;
                        }

                        v301 = *(v22 - 24);
                        v116 = *(v22 - 16);
                        v113 = *(v22 - 8);
                        v302 = *v22;
                        v303 = *(v299 + 16);
                        *&v843 = v301;
                        *(&v843 + 1) = v116;
                        *&v844 = v113;
                        BYTE8(v844) = v302;
                        v850 = v835;
                        v851 = v836;
                        *v852 = v837[0];
                        *&v852[9] = *(v837 + 9);
                        v848 = v833;
                        v849 = v834;
                        sub_217F2BB04(v301, v116, v113, v302);

                        sub_217F1FA44(&v848, v303, v19, 1);
                        v22 += 32;

                        sub_217F2BB34(v301, v116, v113, v302);
                        v298 = v768 - 1;
                        v20 = v788;
                        v299 = v790;
                        if (v768 == 1)
                        {
                          goto LABEL_262;
                        }
                      }

                      __break(1u);
                      goto LABEL_524;
                    }

LABEL_262:
                    sub_217E98274(&v833);
                    sub_217E98274(&v833);

                    swift_beginAccess();
                    v364 = *(v786 + 16);
                    if (*(v364 + 16) > v767)
                    {
                      v365 = (v364 + v765);
                      v366 = v365[3];
                      v843 = v365[2];
                      v844 = v366;
                      v367 = v365[4];
                      v368 = v365[5];
                      v369 = v365[6];
                      *(v847 + 9) = *(v365 + 105);
                      v847[0] = v369;
                      v846 = v368;
                      v845 = v367;
                      v370 = v843;
                      swift_beginAccess();
                      v371 = *(*(v299 + 16) + 16);
                      v815 = v845;
                      v816 = v846;
                      v817[0] = v847[0];
                      *&v817[1] = *&v847[1];
                      v813 = v843;
                      v814 = v844;
                      v22 = v783;
                      swift_beginAccess();
                      sub_217E98218(&v843, &v848);
                      sub_217E98218(&v843, &v848);

                      sub_217F194B0(&v848, v370, *(&v370 + 1));
                      swift_endAccess();

                      v19 = v778;
                      v116 = v762;
                      if (v781)
                      {
                        v828 = v370;
                        *&v829 = *(&v846 + 1);
                        *(&v829 + 1) = v371;
                        v830 = xmmword_217F591C0;
                        LOBYTE(v832[0]) = 0;

                        ClusteringJournal.record(event:)(&v828);
                        v850 = v830;
                        v851 = v831;
                        v852[0] = v832[0];
                        v848 = v828;
                        v849 = v829;
                        sub_217F23F40(&v848);
                      }

                      v850 = v815;
                      v851 = v816;
                      *v852 = v817[0];
                      *&v852[16] = *&v817[1];
                      v848 = v813;
                      v849 = v814;
                      v852[24] = 8;
                      v113 = v790;
                      swift_beginAccess();
                      sub_217E98218(&v848, &v828);
                      sub_217F1BC40();
                      v372 = *(*(v790 + 16) + 16);
                      sub_217F1946C(v372);
                      v373 = *(v790 + 16);
                      *(v373 + 16) = v372 + 1;
                      v374 = (v373 + 96 * v372);
                      v375 = v849;
                      v374[2] = v848;
                      v374[3] = v375;
                      v376 = v850;
                      v377 = v851;
                      v378 = *v852;
                      *(v374 + 105) = *&v852[9];
                      v374[5] = v377;
                      v374[6] = v378;
                      v374[4] = v376;
                      swift_endAccess();
                      v825 = v815;
                      v826 = v816;
                      v827[0] = v817[0];
                      *&v827[1] = *&v817[1];
                      v823 = v813;
                      v824 = v814;
                      BYTE8(v827[1]) = 8;
                      sub_217E98274(&v823);
                      swift_beginAccess();
                      v379 = *(v20 + 16);
                      v92 = __OFADD__(v379, 1);
                      v380 = v379 + 1;
                      if (!v92)
                      {
                        *(v20 + 16) = v380;
                        swift_beginAccess();
                        sub_217F0BEE4(v767, &v818);
                        swift_endAccess();
                        v830 = v820;
                        v831 = v821;
                        v832[0] = v822[0];
                        *(v832 + 9) = *(v822 + 9);
                        v828 = v818;
                        v829 = v819;
                        v381 = sub_217E98274(&v828);
                        v383.n128_f64[0] = MEMORY[0x28223BE20](v381, v382);
                        v758 = &v843;
                        v384 = sub_217F2C028;
LABEL_392:
                        (v791)(v384, v383);
                        sub_217E98274(&v843);
                        v113 = v784;
                        v548 = v790;
                        goto LABEL_393;
                      }

LABEL_566:
                      __break(1u);
                      goto LABEL_567;
                    }

LABEL_565:
                    __break(1u);
                    goto LABEL_566;
                  }

                  sub_217E98274(&v833);
                  v288 = v769;
                  v286 = v766;
                  v289 = v767;
                  v290 = v763;
                  v287 = v764;
                }

                if (++v289 == v287)
                {

LABEL_360:
                  if (v785 == v116)
                  {
                    goto LABEL_361;
                  }

                  swift_beginAccess();
                  v501 = v785;
                  v502 = v769;
                  if (v785 <= v116)
                  {
LABEL_380:
                    __break(1u);
                    goto LABEL_381;
                  }

                  v765 = v780 + 56;
                  v503 = v116;
                  while (1)
                  {
                    v504 = (v787 + 96 * v503);
                    v505 = v504[3];
                    v837[0] = v504[4];
                    v835 = v504[2];
                    v836 = v505;
                    *(v837 + 9) = *(v504 + 73);
                    v506 = v504[1];
                    v833 = *v504;
                    v834 = v506;
                    if (BYTE2(v837[0]) == 1 && ((LOBYTE(v837[0]) ^ v502) & 1) == 0)
                    {
                      v766 = (v787 + 96 * v503);
                      v767 = v503;
                      v286 = *(v22 + 16);
                      v508 = *(&v833 + 1);
                      v507 = v833;
                      sub_217E98218(&v833, &v848);

                      v287 = sub_217EA3608(v507, v508, v286);

                      if ((v287 & 1) == 0)
                      {
                        v287 = *(v780 + 16);
                        sub_217E98218(&v833, &v848);
                        v286 = v790;
                        swift_beginAccess();
                        swift_beginAccess();
                        if (v287)
                        {
                          v509 = v765;
                          while (1)
                          {
                            v768 = v287;
                            v510 = *(v20 + 16);
                            v511 = v789 + v510;
                            if (__OFADD__(v789, v510))
                            {
                              break;
                            }

                            v513 = *(v509 - 3);
                            v512 = *(v509 - 2);
                            v113 = *(v509 - 1);
                            v514 = *v509;
                            v515 = *(v286 + 2);
                            *&v843 = v513;
                            *(&v843 + 1) = v512;
                            *&v844 = v113;
                            BYTE8(v844) = v514;
                            v850 = v835;
                            v851 = v836;
                            *v852 = v837[0];
                            *&v852[9] = *(v837 + 9);
                            v848 = v833;
                            v849 = v834;
                            sub_217F2BB04(v513, v512, v113, v514);

                            sub_217F1FA44(&v848, v515, v511, 1);
                            v509 += 32;

                            sub_217F2BB34(v513, v512, v113, v514);
                            v287 = v768 - 1;
                            v20 = v788;
                            v286 = v790;
                            if (v768 == 1)
                            {
                              goto LABEL_381;
                            }
                          }

                          __break(1u);
                          goto LABEL_545;
                        }

LABEL_381:
                        sub_217E98274(&v833);
                        sub_217E98274(&v833);
                        v19 = v778;
                        if (*(v778 + 16) <= v767)
                        {
                          __break(1u);
                        }

                        else
                        {
                          v516 = v766[3];
                          v845 = v766[2];
                          v846 = v516;
                          v847[0] = v766[4];
                          *(v847 + 9) = *(v766 + 73);
                          v517 = v766[1];
                          v843 = *v766;
                          v844 = v517;
                          v518 = v843;
                          swift_beginAccess();
                          v519 = *(*(v286 + 2) + 16);
                          v825 = v845;
                          v826 = v846;
                          v827[0] = v847[0];
                          *&v827[1] = *&v847[1];
                          v823 = v843;
                          v824 = v844;
                          v22 = v783;
                          swift_beginAccess();
                          sub_217E98218(&v843, &v848);
                          sub_217E98218(&v843, &v848);

                          sub_217F194B0(&v848, v518, *(&v518 + 1));
                          swift_endAccess();

                          v116 = v762;
                          if (v781)
                          {
                            v828 = v518;
                            *&v829 = *(&v846 + 1);
                            *(&v829 + 1) = v519;
                            *&v830 = v767;
                            *(&v830 + 1) = 2;
                            LOBYTE(v832[0]) = 0;

                            ClusteringJournal.record(event:)(&v828);
                            v850 = v830;
                            v851 = v831;
                            v852[0] = v832[0];
                            v848 = v828;
                            v849 = v829;
                            sub_217F23F40(&v848);
                          }

                          v850 = v825;
                          v851 = v826;
                          *v852 = v827[0];
                          *&v852[16] = *&v827[1];
                          v848 = v823;
                          v849 = v824;
                          v852[24] = 8;
                          v113 = v790;
                          swift_beginAccess();
                          sub_217E98218(&v848, &v828);
                          sub_217F1BC40();
                          v287 = *(*(v790 + 16) + 16);
                          sub_217F1946C(v287);
                          v520 = *(v790 + 16);
                          *(v520 + 16) = v287 + 1;
                          v521 = (v520 + 96 * v287);
                          v522 = v849;
                          v521[2] = v848;
                          v521[3] = v522;
                          v523 = v850;
                          v524 = v851;
                          v525 = *v852;
                          *(v521 + 105) = *&v852[9];
                          v521[5] = v524;
                          v521[6] = v525;
                          v521[4] = v523;
                          swift_endAccess();
                          v830 = v825;
                          v831 = v826;
                          v832[0] = v827[0];
                          *&v832[1] = *&v827[1];
                          v828 = v823;
                          v829 = v824;
                          BYTE8(v832[1]) = 8;
                          sub_217E98274(&v828);
                          v526 = swift_beginAccess();
                          v528 = *(v20 + 16);
                          v92 = __OFADD__(v528, 1);
                          v529 = v528 + 1;
                          if (!v92)
                          {
                            *(v20 + 16) = v529;
                            v383.n128_f64[0] = MEMORY[0x28223BE20](v526, v527);
                            v758 = &v843;
                            v384 = sub_217F2C024;
                            goto LABEL_392;
                          }
                        }

                        __break(1u);
                        goto LABEL_574;
                      }

                      sub_217E98274(&v833);
                      v502 = v769;
                      v501 = v785;
                      v503 = v767;
                    }

                    if (++v503 == v501)
                    {
                      v19 = v778;
LABEL_361:
                      swift_beginAccess();

                      v768 = sub_217F20DB0(v488, v769 & 1, v22);
                      v287 = v489;

                      if (v287)
                      {

                        v20 = sub_217F21044(v787, v784, v775, v769 & 1, v22);
                        v491 = v490;

                        if (v491)
                        {
                          v116 = v113;
                          v20 = v19;

                          if (v781)
                          {
                            v850 = 0u;
                            v851 = 0u;
                            v848 = 0u;
                            v849 = 0u;
                            v852[0] = -16;
                            v492 = ClusteringJournal.record(event:)(&v848);
                          }

                          v494 = MEMORY[0x28223BE20](v492, v493);
                          v758 = v789;
                          v495 = v791;
                          v791(sub_217F2C000, v494);
                          swift_beginAccess();
                          *(v770 + 16) = 1;
                          swift_beginAccess();
                          v496 = *(v22 + 16);

                          v497 = sub_217EA3608(v774, v777, v496);

                          if (v497)
                          {
                            v500 = MEMORY[0x28223BE20](v498, v499);
                            v758 = v782;
                            v495(sub_217F2C00C, v500);

                            v850 = v840;
                            v851 = v841;
                            *v852 = v842[0];
                            *&v852[9] = *(v842 + 9);
                            v848 = v838;
                            v849 = v839;
                            v282 = &v848;
                            goto LABEL_280;
                          }

                          v317 = swift_beginAccess();
                          v644 = *(*(v790 + 16) + 16);
                          if (v644 >= v776)
                          {
                            goto LABEL_493;
                          }

                          v645 = *(v782 + 3);
                          v850 = *(v782 + 2);
                          v851 = v645;
                          *v852 = *(v782 + 4);
                          *&v852[9] = *(v782 + 73);
                          v646 = *(v782 + 1);
                          v848 = *v782;
                          v849 = v646;
                          if (v644 >= v116)
                          {
                            goto LABEL_546;
                          }

                          if (*(v772 + 16) <= v644)
                          {
                            __break(1u);
                            goto LABEL_595;
                          }

                          v647 = *(v762 + v644);
                          if (!v647)
                          {
                            goto LABEL_546;
                          }

                          if (v647 == 1)
                          {
                            swift_beginAccess();
                            if ((*(v770 + 16) & 1) == 0)
                            {
                              result = swift_beginAccess();
                              v648 = *(v788 + 16);
                              v92 = __OFADD__(v648, v789);
                              v649 = v789 + v648;
                              if (v92)
                              {
                                __break(1u);
                                return result;
                              }

                              if (v649 < v773)
                              {
                                sub_217E98218(v782, &v843);
                                v650 = sub_217F09038(v769 & 1, v783, v780, v790, v789, v788, v786, v781, v19, v784, v770, v782, v776, v771, v772, v773);
                                goto LABEL_554;
                              }

LABEL_556:
                              MEMORY[0x28223BE20](result, v283);
                              v758 = v773;
                              v756 = v782;
                              sub_217E98218(v782, &v843);
                              (v791)(sub_217F2C008, &v757);
                              v759 = v786;
                              v758 = v784;
                              v754 = v780;
                              v755 = v756;
LABEL_547:
                              v120 = sub_217F143A0(v754, v755, v790, v20, v789, v788, &v848, v781, v758, v759);
LABEL_548:

                              v835 = v850;
                              v836 = v851;
                              v837[0] = *v852;
                              *(v837 + 9) = *&v852[9];
                              v833 = v848;
                              v834 = v849;
                              sub_217E98274(&v833);
                              v845 = v840;
                              v846 = v841;
                              v847[0] = v842[0];
                              *(v847 + 9) = *(v842 + 9);
                              v843 = v838;
                              v844 = v839;
                              sub_217E98274(&v843);
                              return v120 & 1;
                            }

                            goto LABEL_546;
                          }

LABEL_545:
                          swift_beginAccess();
                          if ((*(v771 + 16) & 1) == 0)
                          {
                            sub_217E98218(v782, &v843);
                            v650 = sub_217F0C1FC(v783, v780, v790, v789, v788, v20, v784, v781, v786, v771, v782, v776, v769 & 1, v770, v772, v773);
LABEL_554:
                            v120 = v650;
                            goto LABEL_548;
                          }

LABEL_546:
                          sub_217E98218(v782, &v843);
                          v759 = v786;
                          v758 = v784;
                          v754 = v780;
                          v755 = v782;
                          goto LABEL_547;
                        }

                        if ((v20 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_579;
                        }

                        if (*(v19 + 16) <= v20)
                        {
LABEL_580:
                          __break(1u);
                        }

                        else
                        {
                          v620 = (v787 + 96 * v20);
                          v621 = v620[3];
                          v845 = v620[2];
                          v846 = v621;
                          v847[0] = v620[4];
                          *(v847 + 9) = *(v620 + 73);
                          v622 = v620[1];
                          v843 = *v620;
                          v844 = v622;
                          v623 = v843;
                          swift_beginAccess();
                          v624 = *(*(v790 + 16) + 16);
                          v830 = v845;
                          v831 = v846;
                          v832[0] = v847[0];
                          *&v832[1] = *&v847[1];
                          v828 = v843;
                          v829 = v844;
                          swift_beginAccess();
                          sub_217E98218(&v843, &v848);
                          sub_217E98218(&v843, &v848);

                          sub_217F194B0(&v848, v623, *(&v623 + 1));
                          swift_endAccess();

                          if (v781)
                          {
                            v833 = v623;
                            *&v834 = *(&v846 + 1);
                            *(&v834 + 1) = v624;
                            *&v835 = v20;
                            *(&v835 + 1) = 2;
                            LOBYTE(v837[0]) = 0;

                            ClusteringJournal.record(event:)(&v833);
                            v850 = v835;
                            v851 = v836;
                            v852[0] = v837[0];
                            v848 = v833;
                            v849 = v834;
                            sub_217F23F40(&v848);
                          }

                          v850 = v830;
                          v851 = v831;
                          *v852 = v832[0];
                          *&v852[16] = *&v832[1];
                          v848 = v828;
                          v849 = v829;
                          v852[24] = 8;
                          v113 = v790;
                          swift_beginAccess();
                          sub_217E98218(&v848, &v833);
                          sub_217F1BC40();
                          v287 = *(*(v790 + 16) + 16);
                          sub_217F1946C(v287);
                          v625 = *(v790 + 16);
                          *(v625 + 16) = v287 + 1;
                          v626 = (v625 + 96 * v287);
                          v627 = v849;
                          v626[2] = v848;
                          v626[3] = v627;
                          v628 = v850;
                          v629 = v851;
                          v630 = *v852;
                          *(v626 + 105) = *&v852[9];
                          v626[5] = v629;
                          v626[6] = v630;
                          v626[4] = v628;
                          swift_endAccess();
                          v835 = v830;
                          v836 = v831;
                          v837[0] = v832[0];
                          *&v837[1] = *&v832[1];
                          v833 = v828;
                          v834 = v829;
                          BYTE8(v837[1]) = 8;
                          sub_217E98274(&v833);
                          v20 = v788;
                          v631 = swift_beginAccess();
                          v633 = *(v788 + 16);
                          v92 = __OFADD__(v633, 1);
                          v634 = v633 + 1;
                          if (!v92)
                          {
                            *(v788 + 16) = v634;
                            v635 = MEMORY[0x28223BE20](v631, v632);
                            v758 = &v843;
                            v791(sub_217F2C010, v635);
                            sub_217E98274(&v843);
                            v22 = v783;
                            v113 = v784;
                            v548 = v790;
                            v116 = v762;
LABEL_393:
                            swift_beginAccess();
                            v549 = *(v22 + 16);

                            v287 = sub_217EA3608(v774, v777, v549);

                            if (v287)
                            {

                              v552 = MEMORY[0x28223BE20](v550, v551);
                              v758 = v782;
                              v791(sub_217F2C01C, v552);

                              v835 = v840;
                              v836 = v841;
                              v837[0] = v842[0];
                              *(v837 + 9) = *(v842 + 9);
                              v833 = v838;
                              v834 = v839;
                              v282 = &v833;
                              goto LABEL_280;
                            }

                            v553 = swift_beginAccess();
                            if (*(*(v548 + 16) + 16) < v776)
                            {

                              v555 = *(v782 + 3);
                              v835 = *(v782 + 2);
                              v836 = v555;
                              v837[0] = *(v782 + 4);
                              *(v837 + 9) = *(v782 + 73);
                              v556 = *(v782 + 1);
                              v833 = *v782;
                              v834 = v556;
                              swift_beginAccess();
                              v557 = *(*(v548 + 16) + 16);
                              if (v557 >= v761)
                              {
                                goto LABEL_406;
                              }

                              if (*(v772 + 16) > v557)
                              {
                                v558 = *(v116 + v557);
                                if (v558)
                                {
                                  if (v558 == 1)
                                  {
                                    swift_beginAccess();
                                    if ((*(v770 + 16) & 1) == 0)
                                    {
                                      v559 = swift_beginAccess();
                                      v561 = *(v788 + 16);
                                      v92 = __OFADD__(v561, v789);
                                      v562 = v789 + v561;
                                      if (!v92)
                                      {
                                        if (v562 < v773)
                                        {
                                          sub_217E98218(v782, &v828);
                                          v563 = sub_217F09038(v769 & 1, v783, v780, v790, v789, v788, v786, v781, v19, v784, v770, v782, v776, v771, v772, v773);
                                          goto LABEL_490;
                                        }

                                        MEMORY[0x28223BE20](v559, v560);
                                        v758 = v773;
                                        v714 = v782;
                                        sub_217E98218(v782, &v828);
                                        (v791)(sub_217F2C018, &v757);
                                        v759 = v786;
                                        v758 = v784;
                                        v642 = v780;
                                        v643 = v714;
LABEL_468:
                                        v120 = sub_217F143A0(v642, v643, v790, v19, v789, v788, &v833, v781, v758, v759);
LABEL_491:

                                        v825 = v835;
                                        v826 = v836;
                                        v827[0] = v837[0];
                                        *(v827 + 9) = *(v837 + 9);
                                        v823 = v833;
                                        v824 = v834;
                                        sub_217E98274(&v823);
                                        v830 = v840;
                                        v831 = v841;
                                        v832[0] = v842[0];
                                        *(v832 + 9) = *(v842 + 9);
                                        v477 = v838;
                                        v478 = v839;
LABEL_346:
                                        v828 = v477;
                                        v829 = v478;
                                        sub_217E98274(&v828);
                                        return v120 & 1;
                                      }

                                      __break(1u);
LABEL_590:
                                      __break(1u);
LABEL_591:
                                      __break(1u);
LABEL_592:
                                      __break(1u);
LABEL_593:
                                      v710 = swift_once();
LABEL_515:
                                      v670.n128_f64[0] = MEMORY[0x28223BE20](v710, v711);
                                      v758 = &v823;
                                      v671 = sub_217F2C060;
LABEL_542:
                                      (v791)(v671, v670);
                                      sub_217E98274(&v823);
LABEL_543:
                                      v120 = sub_217F21584(v783, v782, v790, v776, v116, v784, v786, v781, v769 & 1, v780, v789, v788, v770, v771, v772, v773);

                                      v805 = v815;
                                      v806 = v816;
                                      v807[0] = v817[0];
                                      *(v807 + 9) = *(v817 + 9);
                                      v803 = v813;
                                      v804 = v814;
                                      sub_217E98274(&v803);
                                      v810 = v820;
                                      v811 = v821;
                                      v812[0] = v822[0];
                                      *(v812 + 9) = *(v822 + 9);
                                      v808 = v818;
                                      v809 = v819;
                                      sub_217E98274(&v808);
                                      return v120 & 1;
                                    }
                                  }

                                  else
                                  {
                                    swift_beginAccess();
                                    if ((*(v771 + 16) & 1) == 0)
                                    {
                                      sub_217E98218(v782, &v828);
                                      v563 = sub_217F0C1FC(v783, v780, v790, v789, v788, v19, v784, v781, v786, v771, v782, v776, v769 & 1, v770, v772, v773);
LABEL_490:
                                      v120 = v563;
                                      goto LABEL_491;
                                    }
                                  }

                                  sub_217E98218(v782, &v828);
                                  v759 = v786;
                                  v758 = v784;
                                  v642 = v780;
                                  v643 = v782;
                                  goto LABEL_468;
                                }

LABEL_406:
                                sub_217E98218(v782, &v828);
                                v120 = sub_217F143A0(v780, v782, v548, v19, v789, v20, &v833, v781, v113, v786);
                                goto LABEL_491;
                              }

LABEL_578:
                              __break(1u);
LABEL_579:
                              __break(1u);
                              goto LABEL_580;
                            }

                            v564 = MEMORY[0x28223BE20](v553, v554);
                            v758 = v19;
                            v759 = v113;
                            v791(sub_217F2BFC4, v564);
                            if (v785 == v113)
                            {
LABEL_430:

                              if (v781)
                              {
                                swift_beginAccess();
                                v591 = *(v786 + 16);

                                v592 = sub_217F20B38(v787, v113, v775, (v22 + 16));
                                *&v833 = v591;
                                sub_217E80538(v592);
                                v593 = sub_217F04AF4(v833);

                                *&v823 = v593;
                                LOBYTE(v827[0]) = -127;
                                ClusteringJournal.record(event:)(&v823);

                                v830 = v825;
                                v831 = v826;
                                LOBYTE(v832[0]) = v827[0];
                                v829 = v824;
                                v828 = v823;
                                sub_217F23F40(&v828);
                                v835 = v840;
                                v836 = v841;
                                v837[0] = v842[0];
                                *(v837 + 9) = *(v842 + 9);
                                v833 = v838;
                                v834 = v839;
                                sub_217E98274(&v833);
                                goto LABEL_180;
                              }

                              v835 = v840;
                              v836 = v841;
                              v837[0] = v842[0];
                              *(v837 + 9) = *(v842 + 9);
                              v833 = v838;
                              v834 = v839;
                              v619 = &v833;
                              goto LABEL_471;
                            }

                            swift_beginAccess();
                            if (v785 > v113)
                            {
                              v116 = 96;
                              v20 = 2;
                              v19 = v113;
                              do
                              {
                                v565 = v787 + 96 * v19;
                                v566 = *(v565 + 48);
                                v567 = *(v565 + 16);
                                v835 = *(v565 + 32);
                                v836 = v566;
                                v568 = *(v565 + 48);
                                v837[0] = *(v565 + 64);
                                *(v837 + 9) = *(v565 + 73);
                                v569 = *(v565 + 16);
                                v833 = *v565;
                                v834 = v569;
                                v820 = v835;
                                v821 = v568;
                                v822[0] = *(v565 + 64);
                                *&v822[1] = *(v565 + 80);
                                v818 = v833;
                                v819 = v567;
                                v570 = *(v22 + 16);
                                if (*(v570 + 16))
                                {
                                  v571 = BYTE8(v837[1]);
                                  v572 = v833;
                                  sub_217F4B224();
                                  sub_217E98218(&v833, &v828);

                                  sub_217F4AB24();
                                  v573 = sub_217F4B254();
                                  v574 = -1 << *(v570 + 32);
                                  v575 = v573 & ~v574;
                                  if ((*(v570 + 56 + ((v575 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v575))
                                  {
                                    v576 = ~v574;
                                    while (1)
                                    {
                                      v577 = (*(v570 + 48) + 16 * v575);
                                      v578 = *v577 == v572 && v577[1] == *(&v572 + 1);
                                      if (v578 || (sub_217F4B144() & 1) != 0)
                                      {
                                        break;
                                      }

                                      v575 = (v575 + 1) & v576;
                                      if (((*(v570 + 56 + ((v575 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v575) & 1) == 0)
                                      {
                                        goto LABEL_418;
                                      }
                                    }

                                    v590 = MEMORY[0x28223BE20](v588, v589);
                                    v758 = v782;
                                    v791(sub_217F2C014, v590);
                                    v830 = v820;
                                    v831 = v821;
                                    v832[0] = v822[0];
                                    *&v832[1] = *&v822[1];
                                    v828 = v818;
                                    v829 = v819;
                                    BYTE8(v832[1]) = v571;
                                    sub_217E98274(&v828);
                                    v22 = v783;
                                    v113 = v784;
                                    v116 = 96;
                                    v20 = 2;
                                    goto LABEL_426;
                                  }

LABEL_418:

                                  v22 = v783;
                                  v113 = v784;
                                  v116 = 96;
                                  v20 = 2;
                                }

                                else
                                {
                                  sub_217E98218(&v833, &v828);
                                }

                                v830 = v820;
                                v831 = v821;
                                v832[0] = v822[0];
                                *&v832[1] = *&v822[1];
                                v828 = v818;
                                v829 = v819;
                                BYTE8(v832[1]) = 2;
                                swift_beginAccess();
                                v579 = *(v786 + 16);
                                sub_217E98218(&v828, &v823);
                                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                                *(v786 + 16) = v579;
                                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                                {
                                  v579 = sub_217E8D720(0, *(v579 + 2) + 1, 1, v579);
                                  *(v786 + 16) = v579;
                                }

                                v582 = *(v579 + 2);
                                v581 = *(v579 + 3);
                                if (v582 >= v581 >> 1)
                                {
                                  v579 = sub_217E8D720((v581 > 1), v582 + 1, 1, v579);
                                }

                                *(v579 + 2) = v582 + 1;
                                v583 = &v579[96 * v582];
                                v584 = v829;
                                *(v583 + 2) = v828;
                                *(v583 + 3) = v584;
                                v585 = v830;
                                v586 = v831;
                                v587 = v832[0];
                                *(v583 + 105) = *(v832 + 9);
                                *(v583 + 5) = v586;
                                *(v583 + 6) = v587;
                                *(v583 + 4) = v585;
                                *(v786 + 16) = v579;
                                swift_endAccess();
                                v825 = v820;
                                v826 = v821;
                                v827[0] = v822[0];
                                *&v827[1] = *&v822[1];
                                v823 = v818;
                                v824 = v819;
                                BYTE8(v827[1]) = 2;
                                sub_217E98274(&v823);
LABEL_426:
                                if (++v19 == v785)
                                {
                                  goto LABEL_430;
                                }
                              }

                              while (v19 >= v113 && v19 < v785);
                            }

                            __break(1u);
LABEL_550:
                            __break(1u);
                            goto LABEL_551;
                          }
                        }

                        __break(1u);
LABEL_582:
                        v636 = swift_once();
LABEL_457:
                        v638 = MEMORY[0x28223BE20](v636, v637);
                        v791(sub_217F2C050, v638);
                        v758 = v113;
                        v759 = v786;
                        v473 = v780;
                        v474 = v287;
                        v475 = v790;
LABEL_344:
                        v476 = sub_217F143A0(v473, v474, v475, v19, v789, v20, &v813, v781, v758, v759);
LABEL_345:
                        v120 = v476;

                        v825 = v815;
                        v826 = v816;
                        v827[0] = v817[0];
                        *(v827 + 9) = *(v817 + 9);
                        v823 = v813;
                        v824 = v814;
                        sub_217E98274(&v823);
                        v830 = v820;
                        v831 = v821;
                        v832[0] = v822[0];
                        *(v832 + 9) = *(v822 + 9);
                        v477 = v818;
                        v478 = v819;
                        goto LABEL_346;
                      }

                      swift_beginAccess();
                      v116 = v762;
                      if ((v768 & 0x8000000000000000) == 0)
                      {
                        v530 = *(v786 + 16);
                        if (*(v530 + 16) > v768)
                        {
                          v531 = (v530 + 96 * v768);
                          v532 = v531[3];
                          v843 = v531[2];
                          v844 = v532;
                          v533 = v531[4];
                          v534 = v531[5];
                          v535 = v531[6];
                          *(v847 + 9) = *(v531 + 105);
                          v847[0] = v535;
                          v846 = v534;
                          v845 = v533;
                          v536 = v843;
                          swift_beginAccess();
                          v537 = *(*(v790 + 16) + 16);
                          v820 = v845;
                          v821 = v846;
                          v822[0] = v847[0];
                          *&v822[1] = *&v847[1];
                          v818 = v843;
                          v819 = v844;
                          swift_beginAccess();
                          sub_217E98218(&v843, &v848);
                          sub_217E98218(&v843, &v848);

                          sub_217F194B0(&v848, v536, *(&v536 + 1));
                          swift_endAccess();

                          if (v781)
                          {
                            v833 = v536;
                            *&v834 = *(&v846 + 1);
                            *(&v834 + 1) = v537;
                            v835 = xmmword_217F591C0;
                            LOBYTE(v837[0]) = 0;

                            ClusteringJournal.record(event:)(&v833);
                            v850 = v835;
                            v851 = v836;
                            v852[0] = v837[0];
                            v848 = v833;
                            v849 = v834;
                            sub_217F23F40(&v848);
                          }

                          v850 = v820;
                          v851 = v821;
                          *v852 = v822[0];
                          *&v852[16] = *&v822[1];
                          v848 = v818;
                          v849 = v819;
                          v852[24] = 8;
                          v113 = v790;
                          swift_beginAccess();
                          sub_217E98218(&v848, &v833);
                          sub_217F1BC40();
                          v287 = *(*(v790 + 16) + 16);
                          sub_217F1946C(v287);
                          v538 = *(v790 + 16);
                          *(v538 + 16) = v287 + 1;
                          v539 = (v538 + 96 * v287);
                          v540 = v849;
                          v539[2] = v848;
                          v539[3] = v540;
                          v541 = v850;
                          v542 = v851;
                          v543 = *v852;
                          *(v539 + 105) = *&v852[9];
                          v539[5] = v542;
                          v539[6] = v543;
                          v539[4] = v541;
                          swift_endAccess();
                          v830 = v820;
                          v831 = v821;
                          v832[0] = v822[0];
                          *&v832[1] = *&v822[1];
                          v828 = v818;
                          v829 = v819;
                          BYTE8(v832[1]) = 8;
                          sub_217E98274(&v828);
                          swift_beginAccess();
                          v544 = *(v20 + 16);
                          v92 = __OFADD__(v544, 1);
                          v545 = v544 + 1;
                          if (!v92)
                          {
                            *(v20 + 16) = v545;
                            swift_beginAccess();
                            sub_217F0BEE4(v768, &v823);
                            swift_endAccess();
                            v835 = v825;
                            v836 = v826;
                            v837[0] = v827[0];
                            *(v837 + 9) = *(v827 + 9);
                            v833 = v823;
                            v834 = v824;
                            v546 = sub_217E98274(&v833);
                            v383.n128_f64[0] = MEMORY[0x28223BE20](v546, v547);
                            v758 = &v843;
                            v384 = sub_217F2C020;
                            goto LABEL_392;
                          }

LABEL_576:
                          __break(1u);
LABEL_577:
                          __break(1u);
                          goto LABEL_578;
                        }

LABEL_575:
                        __break(1u);
                        goto LABEL_576;
                      }

LABEL_574:
                      __break(1u);
                      goto LABEL_575;
                    }

                    if (v503 >= v501)
                    {
                      goto LABEL_380;
                    }
                  }
                }
              }

              while (v289 < *(v286 + 2));
            }

            __break(1u);
LABEL_223:
            __break(1u);
            goto LABEL_224;
          }

LABEL_533:
          __break(1u);
          goto LABEL_534;
        }

        v182 = MEMORY[0x28223BE20](v170, v171);
        v113 = v784;
        v758 = v778;
        v759 = v784;
        v183 = v779;
        v791(sub_217F2BFBC, v182);
        if (v785 != v784)
        {

          swift_beginAccess();
          if (v785 > v784)
          {
            v20 = 2;
            v19 = v784;
            do
            {
              v184 = v787 + 96 * v19;
              v185 = *(v184 + 48);
              v186 = *(v184 + 16);
              v850 = *(v184 + 32);
              v851 = v185;
              v187 = *(v184 + 48);
              *v852 = *(v184 + 64);
              *&v852[9] = *(v184 + 73);
              v188 = *(v184 + 16);
              v848 = *v184;
              v849 = v188;
              v835 = v850;
              v836 = v187;
              v837[0] = *(v184 + 64);
              *&v837[1] = *(v184 + 80);
              v833 = v848;
              v834 = v186;
              v16 = *(v22 + 16);
              if (*(v16 + 16))
              {
                v189 = v852[24];
                v190 = v848;
                sub_217F4B224();
                sub_217E98218(&v848, &v843);

                sub_217F4AB24();
                v191 = sub_217F4B254();
                v192 = -1 << *(v16 + 32);
                v193 = v191 & ~v192;
                if ((*(v16 + 56 + ((v193 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v193))
                {
                  v194 = ~v192;
                  while (1)
                  {
                    v195 = (*(v16 + 48) + 16 * v193);
                    v196 = *v195 == v190 && v195[1] == *(&v190 + 1);
                    if (v196 || (sub_217F4B144() & 1) != 0)
                    {
                      break;
                    }

                    v193 = (v193 + 1) & v194;
                    if (((*(v16 + 56 + ((v193 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v193) & 1) == 0)
                    {
                      goto LABEL_130;
                    }
                  }

                  v206 = MEMORY[0x28223BE20](v204, v205);
                  v758 = v782;
                  v183 = v779;
                  v791(sub_217F2BFF8, v206);
                  v845 = v835;
                  v846 = v836;
                  v847[0] = v837[0];
                  *&v847[1] = *&v837[1];
                  v843 = v833;
                  v844 = v834;
                  BYTE8(v847[1]) = v189;
                  sub_217E98274(&v843);
                  v22 = v783;
                  v113 = v784;
                  v20 = 2;
                  goto LABEL_138;
                }

LABEL_130:

                v22 = v783;
                v113 = v784;
                v20 = 2;
              }

              else
              {
                sub_217E98218(&v848, &v843);
              }

              v845 = v835;
              v846 = v836;
              v847[0] = v837[0];
              *&v847[1] = *&v837[1];
              v843 = v833;
              v844 = v834;
              BYTE8(v847[1]) = 2;
              swift_beginAccess();
              v183 = *(v786 + 16);
              sub_217E98218(&v843, &v838);
              v197 = swift_isUniquelyReferenced_nonNull_native();
              *(v786 + 16) = v183;
              if ((v197 & 1) == 0)
              {
                v183 = sub_217E8D720(0, *(v183 + 2) + 1, 1, v183);
                *(v786 + 16) = v183;
              }

              v16 = *(v183 + 2);
              v198 = *(v183 + 3);
              if (v16 >= v198 >> 1)
              {
                v183 = sub_217E8D720((v198 > 1), v16 + 1, 1, v183);
              }

              *(v183 + 2) = v16 + 1;
              v199 = &v183[96 * v16];
              v200 = v844;
              *(v199 + 2) = v843;
              *(v199 + 3) = v200;
              v201 = v845;
              v202 = v846;
              v203 = v847[0];
              *(v199 + 105) = *(v847 + 9);
              *(v199 + 5) = v202;
              *(v199 + 6) = v203;
              *(v199 + 4) = v201;
              *(v786 + 16) = v183;
              swift_endAccess();
              v840 = v835;
              v841 = v836;
              v842[0] = v837[0];
              *&v842[1] = *&v837[1];
              v838 = v833;
              v839 = v834;
              BYTE8(v842[1]) = 2;
              sub_217E98274(&v838);
LABEL_138:
              if (++v19 == v785)
              {
                goto LABEL_169;
              }
            }

            while (v19 >= v113 && v19 < v785);
          }

          __break(1u);
          goto LABEL_342;
        }

LABEL_170:
        if (v781)
        {
          swift_beginAccess();
          v231 = *(v786 + 16);

          v232 = sub_217F20B38(v787, v113, v775, (v22 + 16));

          *&v848 = v231;
          sub_217E80538(v232);
          v233 = v848;
          v234 = *(v848 + 16);
          if (v234)
          {
            *&v848 = MEMORY[0x277D84F90];
            sub_217F193F4(v234);
            v235 = v848;
            v236 = (v233 + 88);
            do
            {
              v238 = *(v236 - 7);
              v237 = *(v236 - 6);
              v239 = *v236;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_217EA0CC0(0, *(v235 + 16) + 1, 1);
                v235 = v848;
              }

              v241 = *(v235 + 16);
              v240 = *(v235 + 24);
              if (v241 >= v240 >> 1)
              {
                sub_217EA0CC0((v240 > 1), v241 + 1, 1);
                v235 = v848;
              }

              *(v235 + 16) = v241 + 1;
              v242 = (v235 + 24 * v241);
              v242[4] = v238;
              v242[5] = v237;
              v242[6] = v239;
              v236 += 12;
              --v234;
            }

            while (v234);
          }

          else
          {

            v235 = MEMORY[0x277D84F90];
          }

          *&v843 = v235;
          LOBYTE(v847[0]) = -127;
          ClusteringJournal.record(event:)(&v843);

          v850 = v845;
          v851 = v846;
          v852[0] = v847[0];
          v848 = v843;
          v849 = v844;
          sub_217F23F40(&v848);
LABEL_180:
          v120 = 0;
          return v120 & 1;
        }

        goto LABEL_179;
      }

LABEL_459:
      swift_once();
      goto LABEL_10;
    }

    if (v27 >= v785)
    {
      __break(1u);
    }

    else
    {
      v98 = (v787 + 96 * v27);
      v99 = v98[3];
      v850 = v98[2];
      v851 = v99;
      *v852 = v98[4];
      *&v852[9] = *(v98 + 73);
      v100 = v98[1];
      v848 = *v98;
      v849 = v100;
      v101 = v848;
      swift_beginAccess();
      v102 = *(*(v790 + 16) + 16);
      v835 = v850;
      v836 = v851;
      v837[0] = *v852;
      *&v837[1] = *&v852[16];
      v833 = v848;
      v834 = v849;
      swift_beginAccess();
      sub_217E98218(&v848, &v843);
      sub_217E98218(&v848, &v843);

      sub_217F194B0(&v843, v101, *(&v101 + 1));
      swift_endAccess();

      if (v781)
      {
        v838 = v101;
        *&v839 = *(&v851 + 1);
        *(&v839 + 1) = v102;
        *&v840 = v27;
        *(&v840 + 1) = 3;
        LOBYTE(v842[0]) = 0;

        ClusteringJournal.record(event:)(&v838);
        v845 = v840;
        v846 = v841;
        LOBYTE(v847[0]) = v842[0];
        v844 = v839;
        v843 = v838;
        sub_217F23F40(&v843);
      }

      v840 = v835;
      v841 = v836;
      v842[0] = v837[0];
      *&v842[1] = *&v837[1];
      v838 = v833;
      v839 = v834;
      BYTE8(v842[1]) = 8;
      v103 = v790;
      swift_beginAccess();
      sub_217E98218(&v838, &v843);
      sub_217F1BC40();
      v104 = *(*(v790 + 16) + 16);
      sub_217F1946C(v104);
      v105 = *(v790 + 16);
      *(v105 + 16) = v104 + 1;
      v106 = (v105 + 96 * v104);
      v107 = v839;
      v106[2] = v838;
      v106[3] = v107;
      v108 = v840;
      v109 = v841;
      v110 = v842[0];
      *(v106 + 105) = *(v842 + 9);
      v106[5] = v109;
      v106[6] = v110;
      v106[4] = v108;
      *(v103 + 16) = v105;
      swift_endAccess();
      v845 = v835;
      v846 = v836;
      v847[0] = v837[0];
      *&v847[1] = *&v837[1];
      v843 = v833;
      v844 = v834;
      BYTE8(v847[1]) = 8;
      v111 = sub_217E98274(&v843);
      if (qword_280C27680 == -1)
      {
        goto LABEL_51;
      }
    }

    v111 = swift_once();
LABEL_51:
    v94 = *algn_280C31B88;
    v96.n128_f64[0] = MEMORY[0x28223BE20](v111, v112);
    v758 = &v848;
    v97 = sub_217F2BBC8;
    goto LABEL_52;
  }

  swift_beginAccess();
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_433;
  }

  v73 = *(v786 + 16);
  if (v24 >= *(v73 + 16))
  {
LABEL_433:
    __break(1u);
LABEL_434:
    __break(1u);
    goto LABEL_435;
  }

  v74 = (v73 + 96 * v24);
  v75 = v74[3];
  v848 = v74[2];
  v849 = v75;
  v76 = v74[4];
  v77 = v74[5];
  v78 = v74[6];
  *&v852[9] = *(v74 + 105);
  v851 = v77;
  *v852 = v78;
  v850 = v76;
  v79 = v848;
  swift_beginAccess();
  v80 = *(*(v790 + 16) + 16);
  v835 = v850;
  v836 = v851;
  v837[0] = *v852;
  *&v837[1] = *&v852[16];
  v833 = v848;
  v834 = v849;
  swift_beginAccess();
  sub_217E98218(&v848, &v843);
  sub_217E98218(&v848, &v843);

  sub_217F194B0(&v843, v79, *(&v79 + 1));
  swift_endAccess();

  if (v781)
  {
    v838 = v79;
    *&v839 = *(&v851 + 1);
    *(&v839 + 1) = v80;
    v840 = xmmword_217F591D0;
    LOBYTE(v842[0]) = 0;

    ClusteringJournal.record(event:)(&v838);
    v845 = v840;
    v846 = v841;
    LOBYTE(v847[0]) = v842[0];
    v844 = v839;
    v843 = v838;
    sub_217F23F40(&v843);
  }

  v840 = v835;
  v841 = v836;
  v842[0] = v837[0];
  *&v842[1] = *&v837[1];
  v838 = v833;
  v839 = v834;
  BYTE8(v842[1]) = 8;
  v81 = v790;
  swift_beginAccess();
  sub_217E98218(&v838, &v843);
  sub_217F1BC40();
  v82 = *(*(v790 + 16) + 16);
  sub_217F1946C(v82);
  v83 = *(v790 + 16);
  *(v83 + 16) = v82 + 1;
  v84 = (v83 + 96 * v82);
  v85 = v839;
  v84[2] = v838;
  v84[3] = v85;
  v86 = v840;
  v87 = v841;
  v88 = v842[0];
  *(v84 + 105) = *(v842 + 9);
  v84[5] = v87;
  v84[6] = v88;
  v84[4] = v86;
  *(v81 + 16) = v83;
  swift_endAccess();
  v845 = v835;
  v846 = v836;
  v847[0] = v837[0];
  *&v847[1] = *&v837[1];
  v843 = v833;
  v844 = v834;
  BYTE8(v847[1]) = 8;
  sub_217E98274(&v843);
  v89 = swift_beginAccess();
  v91 = *(v20 + 16);
  v92 = __OFADD__(v91, 1);
  v93 = v91 + 1;
  if (v92)
  {
    goto LABEL_434;
  }

  *(v20 + 16) = v93;
  if (qword_280C27680 != -1)
  {
LABEL_435:
    v89 = swift_once();
  }

  v94 = *algn_280C31B88;
  v96.n128_f64[0] = MEMORY[0x28223BE20](v89, v90);
  v758 = &v848;
  v97 = sub_217F2BBFC;
LABEL_52:
  v779 = v94;
  v791 = v95;
  v95(v97, v96);
  v72 = &v848;
LABEL_53:
  sub_217E98274(v72);
  v113 = v784;
  v16 = v790;
  swift_beginAccess();
  v114 = *(v22 + 16);
  v115 = *v782;
  v116 = v782[1];

  v777 = v115;
  LOBYTE(v115) = sub_217EA3608(v115, v116, v114);

  if (v115)
  {
    v117 = swift_bridgeObjectRelease_n();
    if (qword_280C27680 != -1)
    {
      v117 = swift_once();
    }

    v119 = MEMORY[0x28223BE20](v117, v118);
    v758 = v782;
    v791(sub_217F2C078, v119);
    goto LABEL_57;
  }

  swift_beginAccess();
  v121 = *(*(v790 + 16) + 16);
  v122 = swift_bridgeObjectRelease_n();
  if (v121 >= v776)
  {
    if (qword_280C27680 != -1)
    {
      v122 = swift_once();
    }

    v132 = MEMORY[0x28223BE20](v122, v123);
    v758 = v19;
    v759 = v784;
    v791(sub_217F2BFC8, v132);
    if (v785 == v784)
    {
LABEL_95:
      if (v781)
      {
        swift_beginAccess();
        v157 = *(v786 + 16);

        v158 = sub_217F20B38(v787, v113, v775, (v22 + 16));

        *&v838 = v157;
        sub_217E80538(v158);
        v159 = v838;
        v160 = *(v838 + 16);
        if (v160)
        {
          *&v838 = MEMORY[0x277D84F90];
          sub_217F193F4(v160);
          v161 = v838;
          v162 = (v159 + 88);
          do
          {
            v164 = *(v162 - 7);
            v163 = *(v162 - 6);
            v165 = *v162;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_217EA0CC0(0, *(v161 + 16) + 1, 1);
              v161 = v838;
            }

            v167 = *(v161 + 16);
            v166 = *(v161 + 24);
            if (v167 >= v166 >> 1)
            {
              sub_217EA0CC0((v166 > 1), v167 + 1, 1);
              v161 = v838;
            }

            *(v161 + 16) = v167 + 1;
            v168 = (v161 + 24 * v167);
            v168[4] = v164;
            v168[5] = v163;
            v168[6] = v165;
            v162 += 12;
            --v160;
          }

          while (v160);
        }

        else
        {

          v161 = MEMORY[0x277D84F90];
        }

        *&v833 = v161;
        LOBYTE(v837[0]) = -127;
        ClusteringJournal.record(event:)(&v833);

        v840 = v835;
        v841 = v836;
        LOBYTE(v842[0]) = v837[0];
        v839 = v834;
        v838 = v833;
        sub_217F23F40(&v838);
        goto LABEL_180;
      }

LABEL_179:

      swift_bridgeObjectRelease_n();
      goto LABEL_180;
    }

    v778 = v19;

    swift_beginAccess();
    if (v785 <= v784)
    {
      goto LABEL_223;
    }

    v116 = 96;
    v20 = 2;
    v19 = v784;
    while (1)
    {
      v133 = v787 + 96 * v19;
      v134 = *(v133 + 48);
      v135 = *(v133 + 16);
      v840 = *(v133 + 32);
      v841 = v134;
      v136 = *(v133 + 48);
      v842[0] = *(v133 + 64);
      *(v842 + 9) = *(v133 + 73);
      v137 = *(v133 + 16);
      v838 = *v133;
      v839 = v137;
      v825 = v840;
      v826 = v136;
      v827[0] = *(v133 + 64);
      *&v827[1] = *(v133 + 80);
      v823 = v838;
      v824 = v135;
      v16 = *(v22 + 16);
      if (!*(v16 + 16))
      {
        break;
      }

      v138 = BYTE8(v842[1]);
      v139 = v838;
      sub_217F4B224();
      sub_217E98218(&v838, &v833);

      sub_217F4AB24();
      v140 = sub_217F4B254();
      v141 = -1 << *(v16 + 32);
      v142 = v140 & ~v141;
      if (((*(v16 + 56 + ((v142 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v142) & 1) == 0)
      {
LABEL_82:

        v22 = v783;
        v113 = v784;
        v116 = 96;
        v20 = 2;
LABEL_84:
        v835 = v825;
        v836 = v826;
        v837[0] = v827[0];
        *&v837[1] = *&v827[1];
        v833 = v823;
        v834 = v824;
        BYTE8(v837[1]) = 2;
        swift_beginAccess();
        v146 = *(v786 + 16);
        sub_217E98218(&v833, &v828);
        v147 = swift_isUniquelyReferenced_nonNull_native();
        *(v786 + 16) = v146;
        if ((v147 & 1) == 0)
        {
          v146 = sub_217E8D720(0, *(v146 + 2) + 1, 1, v146);
          *(v786 + 16) = v146;
        }

        v16 = *(v146 + 2);
        v148 = *(v146 + 3);
        if (v16 >= v148 >> 1)
        {
          v146 = sub_217E8D720((v148 > 1), v16 + 1, 1, v146);
        }

        *(v146 + 2) = v16 + 1;
        v149 = &v146[96 * v16];
        v150 = v834;
        *(v149 + 2) = v833;
        *(v149 + 3) = v150;
        v151 = v835;
        v152 = v836;
        v153 = v837[0];
        *(v149 + 105) = *(v837 + 9);
        *(v149 + 5) = v152;
        *(v149 + 6) = v153;
        *(v149 + 4) = v151;
        *(v786 + 16) = v146;
        swift_endAccess();
        v830 = v825;
        v831 = v826;
        v832[0] = v827[0];
        *&v832[1] = *&v827[1];
        v828 = v823;
        v829 = v824;
        BYTE8(v832[1]) = 2;
        sub_217E98274(&v828);
        goto LABEL_90;
      }

      v143 = ~v141;
      while (1)
      {
        v144 = (*(v16 + 48) + 16 * v142);
        v145 = *v144 == v139 && v144[1] == *(&v139 + 1);
        if (v145 || (sub_217F4B144() & 1) != 0)
        {
          break;
        }

        v142 = (v142 + 1) & v143;
        if (((*(v16 + 56 + ((v142 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v142) & 1) == 0)
        {
          goto LABEL_82;
        }
      }

      v156 = MEMORY[0x28223BE20](v154, v155);
      v758 = v782;
      v791(sub_217F2C030, v156);
      v835 = v825;
      v836 = v826;
      v837[0] = v827[0];
      *&v837[1] = *&v827[1];
      v833 = v823;
      v834 = v824;
      BYTE8(v837[1]) = v138;
      sub_217E98274(&v833);
      v22 = v783;
      v113 = v784;
      v116 = 96;
      v20 = 2;
LABEL_90:
      if (++v19 == v785)
      {

        goto LABEL_95;
      }

      if (v19 < v113 || v19 >= v785)
      {
        goto LABEL_223;
      }
    }

    sub_217E98218(&v838, &v833);
    goto LABEL_84;
  }

  v768 = v116;
  v124 = *(v782 + 3);
  v820 = *(v782 + 2);
  v821 = v124;
  v822[0] = *(v782 + 4);
  *(v822 + 9) = *(v782 + 73);
  v125 = *(v782 + 1);
  v818 = *v782;
  v819 = v125;
  v116 = *(v772 + 16);
  swift_beginAccess();
  v126 = *(*(v790 + 16) + 16);
  if (v126 >= v116)
  {
    goto LABEL_64;
  }

  if (*(v772 + 16) <= v126)
  {
    __break(1u);
    goto LABEL_470;
  }

  v127 = *(v772 + 32 + v126);
  if (!v127)
  {
    goto LABEL_64;
  }

  if (v127 != 1)
  {
    v128 = v782;
    sub_217E98218(v782, &v838);
    swift_bridgeObjectRelease_n();
    swift_beginAccess();
    if ((*(v771 + 16) & 1) == 0)
    {
      v131 = sub_217F0C1FC(v22, v780, v790, v789, v20, v19, v784, v781, v786, v771, v782, v776, v769 & 1, v770, v772, v773);
      goto LABEL_67;
    }

    goto LABEL_65;
  }

  v767 = v772 + 32;
  swift_beginAccess();
  if (*(v770 + 16))
  {
LABEL_64:
    v128 = v782;
    sub_217E98218(v782, &v838);
    swift_bridgeObjectRelease_n();
LABEL_65:
    v758 = v784;
    v759 = v786;
    v129 = v780;
    v130 = v128;
LABEL_66:
    v131 = sub_217F143A0(v129, v130, v790, v19, v789, v20, &v818, v781, v758, v759);
LABEL_67:
    v120 = v131;

    v840 = v820;
    v841 = v821;
    v842[0] = v822[0];
    *(v842 + 9) = *(v822 + 9);
    v838 = v818;
    v839 = v819;
    sub_217E98274(&v838);
    return v120 & 1;
  }

  v174 = swift_beginAccess();
  v207 = *(v20 + 16);
  v92 = __OFADD__(v207, v789);
  v208 = v789 + v207;
  if (v92)
  {
    __break(1u);
    goto LABEL_533;
  }

  if (v208 >= v773)
  {
    sub_217E98218(v782, &v838);
    v244 = swift_bridgeObjectRelease_n();
    if (qword_280C27680 != -1)
    {
      v244 = swift_once();
    }

    v246 = MEMORY[0x28223BE20](v244, v245);
    v791(sub_217F2C034, v246);
    v758 = v784;
    v759 = v786;
    v129 = v780;
    v130 = v782;
    goto LABEL_66;
  }

  swift_beginAccess();
  v209 = *(v786 + 16);
  v210 = *(v209 + 16);
  v762 = v116;
  v765 = v210;
  v778 = v19;
  if (!v210)
  {
    swift_retain_n();
    sub_217E98218(v782, &v838);
    goto LABEL_198;
  }

  swift_retain_n();
  sub_217E98218(v782, &v838);

  swift_beginAccess();
  v211 = v769;
  if (!*(v209 + 16))
  {
LABEL_168:
    __break(1u);
LABEL_169:

    goto LABEL_170;
  }

  v212 = 0;
  v213 = v209 + 32;
  v760 = v209 + 32;
  v761 = v780 + 56;
  v764 = v209;
  while (1)
  {
    v214 = (v213 + 96 * v212);
    v215 = v214[2];
    v216 = v214[3];
    v217 = *(v214 + 73);
    v832[0] = v214[4];
    v218 = *v214;
    v829 = v214[1];
    v828 = v218;
    *(v832 + 9) = v217;
    v831 = v216;
    v830 = v215;
    if (BYTE2(v832[0]) != 1 || ((LOBYTE(v832[0]) ^ v211) & 1) != 0)
    {
      goto LABEL_166;
    }

    v763 = 96 * v212;
    v766 = v212;
    v113 = *(v22 + 16);
    if (!*(v113 + 16))
    {
      sub_217E98218(&v828, &v838);
LABEL_160:
      v225 = *(v780 + 16);
      sub_217E98218(&v828, &v838);
      swift_beginAccess();
      swift_beginAccess();
      if (v225)
      {
        v22 = v761;
        while (1)
        {
          v774 = v225;
          v226 = *(v20 + 16);
          v227 = v789 + v226;
          if (__OFADD__(v789, v226))
          {
            break;
          }

          v228 = *(v22 - 24);
          v116 = *(v22 - 16);
          v113 = *(v22 - 8);
          v229 = *v22;
          v230 = *(v16 + 16);
          *&v833 = v228;
          *(&v833 + 1) = v116;
          *&v834 = v113;
          BYTE8(v834) = v229;
          v840 = v830;
          v841 = v831;
          v842[0] = v832[0];
          *(v842 + 9) = *(v832 + 9);
          v838 = v828;
          v839 = v829;
          sub_217F2BB04(v228, v116, v113, v229);

          sub_217F1FA44(&v838, v230, v227, 1);
          v22 += 32;

          sub_217F2BB34(v228, v116, v113, v229);
          v225 = v774 - 1;
          v20 = v788;
          v16 = v790;
          if (v774 == 1)
          {
            goto LABEL_190;
          }
        }

        __break(1u);
        goto LABEL_459;
      }

LABEL_190:
      sub_217E98274(&v828);
      sub_217E98274(&v828);

      swift_beginAccess();
      v247 = *(v786 + 16);
      v19 = v778;
      if (*(v247 + 16) <= v766)
      {
        goto LABEL_550;
      }

      v248 = (v247 + v763);
      v249 = v248[3];
      v833 = v248[2];
      v834 = v249;
      v250 = v248[4];
      v251 = v248[5];
      v252 = v248[6];
      *(v837 + 9) = *(v248 + 105);
      v837[0] = v252;
      v836 = v251;
      v835 = v250;
      v253 = v833;
      swift_beginAccess();
      v254 = *(*(v16 + 16) + 16);
      v805 = v835;
      v806 = v836;
      v807[0] = v837[0];
      *&v807[1] = *&v837[1];
      v803 = v833;
      v804 = v834;
      v22 = v783;
      swift_beginAccess();
      sub_217E98218(&v833, &v838);
      sub_217E98218(&v833, &v838);

      sub_217F194B0(&v838, v253, *(&v253 + 1));
      swift_endAccess();

      v116 = v762;
      if (v781)
      {
        v823 = v253;
        *&v824 = *(&v836 + 1);
        *(&v824 + 1) = v254;
        v825 = xmmword_217F591C0;
        LOBYTE(v827[0]) = 0;

        ClusteringJournal.record(event:)(&v823);
        v840 = v825;
        v841 = v826;
        LOBYTE(v842[0]) = v827[0];
        v839 = v824;
        v838 = v823;
        sub_217F23F40(&v838);
      }

      v840 = v805;
      v841 = v806;
      v842[0] = v807[0];
      *&v842[1] = *&v807[1];
      v838 = v803;
      v839 = v804;
      BYTE8(v842[1]) = 8;
      v113 = v790;
      swift_beginAccess();
      sub_217E98218(&v838, &v823);
      sub_217F1BC40();
      v255 = *(*(v790 + 16) + 16);
      sub_217F1946C(v255);
      v256 = *(v790 + 16);
      *(v256 + 16) = v255 + 1;
      v257 = (v256 + 96 * v255);
      v258 = v839;
      v257[2] = v838;
      v257[3] = v258;
      v259 = v840;
      v260 = v841;
      v261 = v842[0];
      *(v257 + 105) = *(v842 + 9);
      v257[5] = v260;
      v257[6] = v261;
      v257[4] = v259;
      swift_endAccess();
      v815 = v805;
      v816 = v806;
      v817[0] = v807[0];
      *&v817[1] = *&v807[1];
      v813 = v803;
      v814 = v804;
      BYTE8(v817[1]) = 8;
      sub_217E98274(&v813);
      swift_beginAccess();
      v262 = *(v20 + 16);
      v92 = __OFADD__(v262, 1);
      v263 = v262 + 1;
      if (v92)
      {
LABEL_551:
        __break(1u);
      }

      else
      {
        *(v20 + 16) = v263;
        swift_beginAccess();
        sub_217F0BEE4(v766, &v808);
        swift_endAccess();
        v825 = v810;
        v826 = v811;
        v827[0] = v812[0];
        *(v827 + 9) = *(v812 + 9);
        v823 = v808;
        v824 = v809;
        v264 = sub_217E98274(&v823);
        v113 = v784;
        if (qword_280C27680 == -1)
        {
LABEL_195:
          v266.n128_f64[0] = MEMORY[0x28223BE20](v264, v265);
          v758 = &v833;
          v267 = sub_217F2C074;
          goto LABEL_196;
        }
      }

      v264 = swift_once();
      goto LABEL_195;
    }

    v116 = *(&v828 + 1);
    v219 = v828;
    sub_217F4B224();
    sub_217E98218(&v828, &v838);

    sub_217F4AB24();
    v220 = sub_217F4B254();
    v221 = -1 << *(v113 + 32);
    v222 = v220 & ~v221;
    if (((*(v113 + 56 + ((v222 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v222) & 1) == 0)
    {
LABEL_158:

      v16 = v790;
      goto LABEL_160;
    }

    v22 = ~v221;
    while (1)
    {
      v223 = (*(v113 + 48) + 16 * v222);
      v224 = *v223 == v219 && v223[1] == v116;
      if (v224 || (sub_217F4B144() & 1) != 0)
      {
        break;
      }

      v222 = (v222 + 1) & v22;
      if (((*(v113 + 56 + ((v222 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v222) & 1) == 0)
      {
        goto LABEL_158;
      }
    }

    sub_217E98274(&v828);
    v22 = v783;
    v113 = v784;
    v16 = v790;
    v211 = v769;
    v212 = v766;
    v209 = v764;
    v213 = v760;
LABEL_166:
    v212 = (v212 + 1);
    if (v212 == v765)
    {
      break;
    }

    if (v212 >= *(v209 + 16))
    {
      goto LABEL_168;
    }
  }

LABEL_198:
  if (v785 == v113)
  {
LABEL_199:
    swift_beginAccess();

    v116 = v769;
    v774 = sub_217F20DB0(v268, v769 & 1, v22);
    v270 = v269;

    if (v270)
    {

      v271 = sub_217F21044(v787, v113, v775, v769 & 1, v22);
      v273 = v272;

      if (v273)
      {
        v274 = swift_bridgeObjectRelease_n();
        if (v781)
        {
          v841 = 0u;
          v840 = 0u;
          v839 = 0u;
          v838 = 0u;
          LOBYTE(v842[0]) = -16;
          v274 = ClusteringJournal.record(event:)(&v838);
        }

        if (qword_280C27680 == -1)
        {
LABEL_204:
          v276 = MEMORY[0x28223BE20](v274, v275);
          v758 = v789;
          v116 = v791;
          v791(sub_217F2C038, v276);
          swift_beginAccess();
          *(v770 + 16) = 1;
          swift_beginAccess();
          v277 = *(v22 + 16);

          v278 = sub_217EA3608(v777, v768, v277);

          if (v278)
          {
            v281 = MEMORY[0x28223BE20](v279, v280);
            v758 = v782;
            (v116)(sub_217F2C044, v281);

            v840 = v820;
            v841 = v821;
            v842[0] = v822[0];
            *(v842 + 9) = *(v822 + 9);
            v838 = v818;
            v839 = v819;
            v282 = &v838;
            goto LABEL_280;
          }

          v479 = swift_beginAccess();
          v481 = *(*(v790 + 16) + 16);
          if (v481 < v776)
          {
            v482 = *(v782 + 3);
            v840 = *(v782 + 2);
            v841 = v482;
            v842[0] = *(v782 + 4);
            *(v842 + 9) = *(v782 + 73);
            v483 = *(v782 + 1);
            v838 = *v782;
            v839 = v483;
            if (v481 >= v762)
            {
              goto LABEL_455;
            }

            if (*(v772 + 16) > v481)
            {
              v484 = *(v767 + v481);
              if (v484)
              {
                if (v484 == 1)
                {
                  swift_beginAccess();
                  if ((*(v770 + 16) & 1) == 0)
                  {
                    v174 = swift_beginAccess();
                    v485 = *(v788 + 16);
                    v92 = __OFADD__(v485, v789);
                    v486 = v789 + v485;
                    if (v92)
                    {
                      goto LABEL_596;
                    }

                    if (v486 < v773)
                    {
                      sub_217E98218(v782, &v833);
                      v487 = sub_217F09038(v769 & 1, v783, v780, v790, v789, v788, v786, v781, v19, v784, v770, v782, v776, v771, v772, v773);
                      goto LABEL_521;
                    }

LABEL_534:
                    MEMORY[0x28223BE20](v174, v175);
                    v758 = v773;
                    v737 = v782;
                    sub_217E98218(v782, &v833);
                    (v791)(sub_217F2C040, &v757);
                    v759 = v786;
                    v758 = v784;
                    v696 = v780;
                    v697 = v737;
LABEL_508:
                    v120 = sub_217F143A0(v696, v697, v790, v19, v789, v788, &v838, v781, v758, v759);
LABEL_522:

                    v830 = v840;
                    v831 = v841;
                    v832[0] = v842[0];
                    *(v832 + 9) = *(v842 + 9);
                    v828 = v838;
                    v829 = v839;
                    sub_217E98274(&v828);
                    v835 = v820;
                    v836 = v821;
                    v837[0] = v822[0];
                    *(v837 + 9) = *(v822 + 9);
                    v833 = v818;
                    v834 = v819;
                    sub_217E98274(&v833);
                    return v120 & 1;
                  }

LABEL_507:
                  sub_217E98218(v782, &v833);
                  v759 = v786;
                  v758 = v784;
                  v696 = v780;
                  v697 = v782;
                  goto LABEL_508;
                }

LABEL_506:
                swift_beginAccess();
                if ((*(v771 + 16) & 1) == 0)
                {
                  sub_217E98218(v782, &v833);
                  v487 = sub_217F0C1FC(v783, v780, v790, v789, v788, v19, v784, v781, v786, v771, v782, v776, v769 & 1, v770, v772, v773);
LABEL_521:
                  v120 = v487;
                  goto LABEL_522;
                }

                goto LABEL_507;
              }

LABEL_455:
              sub_217E98218(v782, &v833);
              v120 = sub_217F143A0(v780, v782, v790, v19, v789, v20, &v838, v781, v113, v786);
              goto LABEL_522;
            }

            __break(1u);
LABEL_584:
            __break(1u);
LABEL_585:
            __break(1u);
LABEL_586:
            __break(1u);
LABEL_587:
            __break(1u);
LABEL_588:
            v668 = swift_once();
LABEL_488:
            v670.n128_f64[0] = MEMORY[0x28223BE20](v668, v669);
            v758 = &v823;
            v671 = sub_217F2C064;
            goto LABEL_542;
          }

          v594 = MEMORY[0x28223BE20](v479, v480);
          v758 = v19;
          v759 = v113;
          v791(sub_217F2BFCC, v594);
          if (v785 != v113)
          {
            if (v785 <= v113)
            {
              goto LABEL_584;
            }

            swift_beginAccess();
            v595 = v113;
            v596 = v785 + ~v113;
            for (i = 96 * v595 + 32; ; i += 96)
            {
              v598 = v19;
              v599 = *(v19 + i + 48);
              v600 = *(v19 + i + 16);
              v840 = *(v19 + i + 32);
              v841 = v599;
              v601 = *(v19 + i + 48);
              v842[0] = *(v19 + i + 64);
              *(v842 + 9) = *(v19 + i + 73);
              v602 = *(v19 + i + 16);
              v838 = *(v19 + i);
              v839 = v602;
              v825 = v840;
              v826 = v601;
              v827[0] = *(v19 + i + 64);
              v604 = *(&v838 + 1);
              v603 = v838;
              *&v827[1] = *(v19 + i + 80);
              v823 = v838;
              v824 = v600;
              v605 = BYTE8(v842[1]);
              v606 = *(v783 + 2);
              sub_217E98218(&v838, &v833);

              LOBYTE(v603) = sub_217EA3608(v603, v604, v606);

              if (v603)
              {
                v609 = MEMORY[0x28223BE20](v607, v608);
                v758 = v782;
                v791(sub_217F2C03C, v609);
                v835 = v825;
                v836 = v826;
                v837[0] = v827[0];
                *&v837[1] = *&v827[1];
                v833 = v823;
                v834 = v824;
                BYTE8(v837[1]) = v605;
                sub_217E98274(&v833);
                v19 = v598;
              }

              else
              {
                v835 = v825;
                v836 = v826;
                v837[0] = v827[0];
                *&v837[1] = *&v827[1];
                v833 = v823;
                v834 = v824;
                BYTE8(v837[1]) = 2;
                swift_beginAccess();
                v610 = *(v786 + 16);
                sub_217E98218(&v833, &v828);
                v611 = swift_isUniquelyReferenced_nonNull_native();
                *(v786 + 16) = v610;
                if ((v611 & 1) == 0)
                {
                  v610 = sub_217E8D720(0, *(v610 + 2) + 1, 1, v610);
                  *(v786 + 16) = v610;
                }

                v19 = v598;
                v613 = *(v610 + 2);
                v612 = *(v610 + 3);
                if (v613 >= v612 >> 1)
                {
                  v610 = sub_217E8D720((v612 > 1), v613 + 1, 1, v610);
                }

                *(v610 + 2) = v613 + 1;
                v614 = &v610[96 * v613];
                v615 = v834;
                *(v614 + 2) = v833;
                *(v614 + 3) = v615;
                v616 = v835;
                v617 = v836;
                v618 = v837[0];
                *(v614 + 105) = *(v837 + 9);
                *(v614 + 5) = v617;
                *(v614 + 6) = v618;
                *(v614 + 4) = v616;
                *(v786 + 16) = v610;
                swift_endAccess();
                v830 = v825;
                v831 = v826;
                v832[0] = v827[0];
                *&v832[1] = *&v827[1];
                v828 = v823;
                v829 = v824;
                BYTE8(v832[1]) = 2;
                sub_217E98274(&v828);
              }

              if (!v596)
              {
                break;
              }

              --v596;
            }

            v22 = v783;
            v113 = v784;
          }

          if (v781)
          {
            swift_beginAccess();
            v639 = *(v786 + 16);

            v640 = sub_217F20B38(v787, v113, v775, (v22 + 16));
            *&v838 = v639;
            sub_217E80538(v640);
            v641 = sub_217F04AF4(v838);

            *&v828 = v641;
            LOBYTE(v832[0]) = -127;
            ClusteringJournal.record(event:)(&v828);

            v835 = v830;
            v836 = v831;
            LOBYTE(v837[0]) = v832[0];
            v834 = v829;
            v833 = v828;
            sub_217F23F40(&v833);
            v840 = v820;
            v841 = v821;
            v842[0] = v822[0];
            *(v842 + 9) = *(v822 + 9);
            v838 = v818;
            v839 = v819;
            sub_217E98274(&v838);
            goto LABEL_180;
          }

LABEL_470:
          v840 = v820;
          v841 = v821;
          v842[0] = v822[0];
          *(v842 + 9) = *(v822 + 9);
          v838 = v818;
          v839 = v819;
          v619 = &v838;
LABEL_471:
          sub_217E98274(v619);
          goto LABEL_472;
        }

LABEL_567:
        v274 = swift_once();
        goto LABEL_204;
      }

      v116 = v762;
      if ((v271 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*(v19 + 16) > v271)
      {
        v774 = v271;
        v385 = (v787 + 96 * v271);
        v386 = v385[3];
        v835 = v385[2];
        v836 = v386;
        v837[0] = v385[4];
        *(v837 + 9) = *(v385 + 73);
        v387 = v385[1];
        v833 = *v385;
        v834 = v387;
        v388 = v833;
        swift_beginAccess();
        v389 = *(*(v790 + 16) + 16);
        v825 = v835;
        v826 = v836;
        v827[0] = v837[0];
        *&v827[1] = *&v837[1];
        v823 = v833;
        v824 = v834;
        swift_beginAccess();
        sub_217E98218(&v833, &v838);
        sub_217E98218(&v833, &v838);

        sub_217F194B0(&v838, v388, *(&v388 + 1));
        swift_endAccess();

        if (v781)
        {
          v828 = v388;
          *&v829 = *(&v836 + 1);
          *(&v829 + 1) = v389;
          *&v830 = v774;
          *(&v830 + 1) = 2;
          LOBYTE(v832[0]) = 0;

          ClusteringJournal.record(event:)(&v828);
          v840 = v830;
          v841 = v831;
          LOBYTE(v842[0]) = v832[0];
          v839 = v829;
          v838 = v828;
          sub_217F23F40(&v838);
        }

        v840 = v825;
        v841 = v826;
        v842[0] = v827[0];
        *&v842[1] = *&v827[1];
        v838 = v823;
        v839 = v824;
        BYTE8(v842[1]) = 8;
        v113 = v790;
        swift_beginAccess();
        sub_217E98218(&v838, &v828);
        sub_217F1BC40();
        v390 = *(*(v790 + 16) + 16);
        sub_217F1946C(v390);
        v391 = *(v790 + 16);
        *(v391 + 16) = v390 + 1;
        v392 = (v391 + 96 * v390);
        v393 = v839;
        v392[2] = v838;
        v392[3] = v393;
        v394 = v840;
        v395 = v841;
        v396 = v842[0];
        *(v392 + 105) = *(v842 + 9);
        v392[5] = v395;
        v392[6] = v396;
        v392[4] = v394;
        swift_endAccess();
        v830 = v825;
        v831 = v826;
        v832[0] = v827[0];
        *&v832[1] = *&v827[1];
        v828 = v823;
        v829 = v824;
        BYTE8(v832[1]) = 8;
        sub_217E98274(&v828);
        v397 = swift_beginAccess();
        v399 = *(v20 + 16);
        v92 = __OFADD__(v399, 1);
        v400 = v399 + 1;
        if (!v92)
        {
          *(v20 + 16) = v400;
          v113 = v784;
          if (qword_280C27680 == -1)
          {
LABEL_274:
            v340.n128_f64[0] = MEMORY[0x28223BE20](v397, v398);
            v758 = &v833;
            v341 = sub_217F2C048;
            goto LABEL_275;
          }

LABEL_571:
          v397 = swift_once();
          goto LABEL_274;
        }

LABEL_570:
        __break(1u);
        goto LABEL_571;
      }

      __break(1u);
      goto LABEL_570;
    }

    swift_beginAccess();
    if ((v774 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v345 = *(v786 + 16);
      v116 = v762;
      if (*(v345 + 16) > v774)
      {
        v346 = (v345 + 96 * v774);
        v347 = v346[3];
        v833 = v346[2];
        v834 = v347;
        v348 = v346[4];
        v349 = v346[5];
        v350 = v346[6];
        *(v837 + 9) = *(v346 + 105);
        v837[0] = v350;
        v836 = v349;
        v835 = v348;
        v351 = v833;
        swift_beginAccess();
        v352 = *(*(v790 + 16) + 16);
        v810 = v835;
        v811 = v836;
        v812[0] = v837[0];
        *&v812[1] = *&v837[1];
        v808 = v833;
        v809 = v834;
        swift_beginAccess();
        sub_217E98218(&v833, &v838);
        sub_217E98218(&v833, &v838);

        sub_217F194B0(&v838, v351, *(&v351 + 1));
        swift_endAccess();

        if (v781)
        {
          v828 = v351;
          *&v829 = *(&v836 + 1);
          *(&v829 + 1) = v352;
          v830 = xmmword_217F591C0;
          LOBYTE(v832[0]) = 0;

          ClusteringJournal.record(event:)(&v828);
          v840 = v830;
          v841 = v831;
          LOBYTE(v842[0]) = v832[0];
          v839 = v829;
          v838 = v828;
          sub_217F23F40(&v838);
        }

        v840 = v810;
        v841 = v811;
        v842[0] = v812[0];
        *&v842[1] = *&v812[1];
        v838 = v808;
        v839 = v809;
        BYTE8(v842[1]) = 8;
        v113 = v790;
        swift_beginAccess();
        sub_217E98218(&v838, &v828);
        sub_217F1BC40();
        v353 = *(*(v790 + 16) + 16);
        sub_217F1946C(v353);
        v354 = *(v790 + 16);
        *(v354 + 16) = v353 + 1;
        v355 = (v354 + 96 * v353);
        v356 = v839;
        v355[2] = v838;
        v355[3] = v356;
        v357 = v840;
        v358 = v841;
        v359 = v842[0];
        *(v355 + 105) = *(v842 + 9);
        v355[5] = v358;
        v355[6] = v359;
        v355[4] = v357;
        swift_endAccess();
        v825 = v810;
        v826 = v811;
        v827[0] = v812[0];
        *&v827[1] = *&v812[1];
        v823 = v808;
        v824 = v809;
        BYTE8(v827[1]) = 8;
        sub_217E98274(&v823);
        swift_beginAccess();
        v360 = *(v20 + 16);
        v92 = __OFADD__(v360, 1);
        v361 = v360 + 1;
        if (!v92)
        {
          *(v20 + 16) = v361;
          swift_beginAccess();
          sub_217F0BEE4(v774, &v813);
          swift_endAccess();
          v830 = v815;
          v831 = v816;
          v832[0] = v817[0];
          *(v832 + 9) = *(v817 + 9);
          v828 = v813;
          v829 = v814;
          v362 = sub_217E98274(&v828);
          v113 = v784;
          if (qword_280C27680 == -1)
          {
            goto LABEL_261;
          }

          goto LABEL_563;
        }

LABEL_562:
        __break(1u);
LABEL_563:
        v362 = swift_once();
LABEL_261:
        v266.n128_f64[0] = MEMORY[0x28223BE20](v362, v363);
        v758 = &v833;
        v267 = sub_217F2C06C;
LABEL_196:
        (v791)(v267, v266);
        goto LABEL_276;
      }
    }

    __break(1u);
    goto LABEL_562;
  }

LABEL_224:
  swift_beginAccess();
  v304 = v785;
  v305 = v769;
  if (v785 <= v113)
  {
LABEL_247:
    __break(1u);
    goto LABEL_248;
  }

  v764 = v780 + 56;
  v306 = v113;
  while (2)
  {
    v307 = (v787 + 96 * v306);
    v308 = v307[3];
    v832[0] = v307[4];
    v830 = v307[2];
    v831 = v308;
    *(v832 + 9) = *(v307 + 73);
    v309 = v307[1];
    v828 = *v307;
    v829 = v309;
    if (BYTE2(v832[0]) != 1 || ((LOBYTE(v832[0]) ^ v305) & 1) != 0)
    {
LABEL_245:
      if (++v306 == v304)
      {
        goto LABEL_199;
      }

      if (v306 >= v304)
      {
        goto LABEL_247;
      }

      continue;
    }

    break;
  }

  v765 = v787 + 96 * v306;
  v766 = v306;
  v113 = *(v22 + 16);
  if (*(v113 + 16))
  {
    v116 = *(&v828 + 1);
    v310 = v828;
    sub_217F4B224();
    sub_217E98218(&v828, &v838);

    sub_217F4AB24();
    v311 = sub_217F4B254();
    v312 = -1 << *(v113 + 32);
    v313 = v311 & ~v312;
    if (((*(v113 + 56 + ((v313 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v313) & 1) == 0)
    {
LABEL_237:

      v16 = v790;
      goto LABEL_239;
    }

    v22 = ~v312;
    while (1)
    {
      v314 = (*(v113 + 48) + 16 * v313);
      v315 = *v314 == v310 && v314[1] == v116;
      if (v315 || (sub_217F4B144() & 1) != 0)
      {
        break;
      }

      v313 = (v313 + 1) & v22;
      if (((*(v113 + 56 + ((v313 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v313) & 1) == 0)
      {
        goto LABEL_237;
      }
    }

    sub_217E98274(&v828);
    v22 = v783;
    v113 = v784;
    v16 = v790;
    v305 = v769;
    v304 = v785;
    v306 = v766;
    goto LABEL_245;
  }

  sub_217E98218(&v828, &v838);
LABEL_239:
  v316 = *(v780 + 16);
  sub_217E98218(&v828, &v838);
  swift_beginAccess();
  v317 = swift_beginAccess();
  if (v316)
  {
    v22 = v764;
    while (1)
    {
      v774 = v316;
      v319 = *(v20 + 16);
      v320 = v789 + v319;
      if (__OFADD__(v789, v319))
      {
        break;
      }

      v321 = *(v22 - 24);
      v116 = *(v22 - 16);
      v113 = *(v22 - 8);
      v322 = *v22;
      v323 = *(v16 + 16);
      *&v833 = v321;
      *(&v833 + 1) = v116;
      *&v834 = v113;
      BYTE8(v834) = v322;
      v840 = v830;
      v841 = v831;
      v842[0] = v832[0];
      *(v842 + 9) = *(v832 + 9);
      v838 = v828;
      v839 = v829;
      sub_217F2BB04(v321, v116, v113, v322);

      sub_217F1FA44(&v838, v323, v320, 1);
      v22 += 32;

      v317 = sub_217F2BB34(v321, v116, v113, v322);
      v316 = v774 - 1;
      v20 = v788;
      v16 = v790;
      if (v774 == 1)
      {
        goto LABEL_248;
      }
    }

    __break(1u);
LABEL_493:
    v672 = MEMORY[0x28223BE20](v317, v318);
    v758 = v20;
    v759 = v784;
    v791(sub_217F2BFC0, v672);
    if (v785 != v784)
    {
      if (v785 > v784)
      {
        v673 = v20;

        swift_beginAccess();
        v674 = v785 + ~v784;
        for (j = 96 * v784 + 32; ; j += 96)
        {
          v676 = *(v673 + j + 48);
          v677 = *(v673 + j + 16);
          v850 = *(v673 + j + 32);
          v851 = v676;
          v678 = *(v673 + j + 48);
          *v852 = *(v673 + j + 64);
          *&v852[9] = *(v673 + j + 73);
          v679 = *(v673 + j + 16);
          v848 = *(v673 + j);
          v849 = v679;
          v830 = v850;
          v831 = v678;
          v832[0] = *(v673 + j + 64);
          v681 = *(&v848 + 1);
          v680 = v848;
          *&v832[1] = *(v673 + j + 80);
          v828 = v848;
          v829 = v677;
          v682 = v852[24];
          v683 = *(v783 + 2);
          sub_217E98218(&v848, &v843);

          LOBYTE(v680) = sub_217EA3608(v680, v681, v683);

          if (v680)
          {
            v686 = MEMORY[0x28223BE20](v684, v685);
            v758 = v782;
            v791(sub_217F2C004, v686);
            v845 = v830;
            v846 = v831;
            v847[0] = v832[0];
            *&v847[1] = *&v832[1];
            v843 = v828;
            v844 = v829;
            BYTE8(v847[1]) = v682;
            sub_217E98274(&v843);
            v673 = v20;
          }

          else
          {
            v845 = v830;
            v846 = v831;
            v847[0] = v832[0];
            *&v847[1] = *&v832[1];
            v843 = v828;
            v844 = v829;
            BYTE8(v847[1]) = 2;
            swift_beginAccess();
            v687 = *(v786 + 16);
            sub_217E98218(&v843, &v833);
            v688 = swift_isUniquelyReferenced_nonNull_native();
            *(v786 + 16) = v687;
            if ((v688 & 1) == 0)
            {
              v687 = sub_217E8D720(0, *(v687 + 2) + 1, 1, v687);
              *(v786 + 16) = v687;
            }

            v673 = v20;
            v690 = *(v687 + 2);
            v689 = *(v687 + 3);
            if (v690 >= v689 >> 1)
            {
              v687 = sub_217E8D720((v689 > 1), v690 + 1, 1, v687);
            }

            *(v687 + 2) = v690 + 1;
            v691 = &v687[96 * v690];
            v692 = v844;
            *(v691 + 2) = v843;
            *(v691 + 3) = v692;
            v693 = v845;
            v694 = v846;
            v695 = v847[0];
            *(v691 + 105) = *(v847 + 9);
            *(v691 + 5) = v694;
            *(v691 + 6) = v695;
            *(v691 + 4) = v693;
            *(v786 + 16) = v687;
            swift_endAccess();
            v835 = v830;
            v836 = v831;
            v837[0] = v832[0];
            *&v837[1] = *&v832[1];
            v833 = v828;
            v834 = v829;
            BYTE8(v837[1]) = 2;
            sub_217E98274(&v833);
          }

          if (!v674)
          {
            break;
          }

          --v674;
        }

        goto LABEL_518;
      }

LABEL_595:
      __break(1u);
LABEL_596:
      __break(1u);
LABEL_597:
      __break(1u);
      goto LABEL_598;
    }

LABEL_518:
    if (v781)
    {
      swift_beginAccess();
      v715 = *(v786 + 16);

      v716 = sub_217F20B38(v787, v784, v775, v783 + 2);
      *&v848 = v715;
      sub_217E80538(v716);
      v717 = sub_217F04AF4(v848);

      *&v833 = v717;
      LOBYTE(v837[0]) = -127;
      ClusteringJournal.record(event:)(&v833);

      v845 = v835;
      v846 = v836;
      LOBYTE(v847[0]) = v837[0];
      v844 = v834;
      v843 = v833;
      sub_217F23F40(&v843);
      v850 = v840;
      v851 = v841;
      *v852 = v842[0];
      *&v852[9] = *(v842 + 9);
      v848 = v838;
      v849 = v839;
      sub_217E98274(&v848);
      goto LABEL_180;
    }

    v850 = v840;
    v851 = v841;
    *v852 = v842[0];
    *&v852[9] = *(v842 + 9);
    v848 = v838;
    v849 = v839;
    sub_217E98274(&v848);
LABEL_472:

    goto LABEL_180;
  }

LABEL_248:
  sub_217E98274(&v828);
  sub_217E98274(&v828);
  v19 = v778;
  if (*(v778 + 16) <= v766)
  {
    __break(1u);
  }

  else
  {
    v324 = *(v765 + 48);
    v835 = *(v765 + 32);
    v836 = v324;
    v837[0] = *(v765 + 64);
    *(v837 + 9) = *(v765 + 73);
    v325 = *(v765 + 16);
    v833 = *v765;
    v834 = v325;
    v326 = v833;
    swift_beginAccess();
    v327 = *(*(v16 + 16) + 16);
    v815 = v835;
    v816 = v836;
    v817[0] = v837[0];
    *&v817[1] = *&v837[1];
    v813 = v833;
    v814 = v834;
    v22 = v783;
    swift_beginAccess();
    sub_217E98218(&v833, &v838);
    sub_217E98218(&v833, &v838);

    sub_217F194B0(&v838, v326, *(&v326 + 1));
    swift_endAccess();

    v116 = v762;
    if (v781)
    {
      v823 = v326;
      *&v824 = *(&v836 + 1);
      *(&v824 + 1) = v327;
      *&v825 = v766;
      *(&v825 + 1) = 2;
      LOBYTE(v827[0]) = 0;

      ClusteringJournal.record(event:)(&v823);
      v840 = v825;
      v841 = v826;
      LOBYTE(v842[0]) = v827[0];
      v839 = v824;
      v838 = v823;
      sub_217F23F40(&v838);
    }

    v840 = v815;
    v841 = v816;
    v842[0] = v817[0];
    *&v842[1] = *&v817[1];
    v838 = v813;
    v839 = v814;
    BYTE8(v842[1]) = 8;
    v113 = v790;
    swift_beginAccess();
    sub_217E98218(&v838, &v823);
    sub_217F1BC40();
    v328 = *(*(v790 + 16) + 16);
    sub_217F1946C(v328);
    v329 = *(v790 + 16);
    *(v329 + 16) = v328 + 1;
    v330 = (v329 + 96 * v328);
    v331 = v839;
    v330[2] = v838;
    v330[3] = v331;
    v332 = v840;
    v333 = v841;
    v334 = v842[0];
    *(v330 + 105) = *(v842 + 9);
    v330[5] = v333;
    v330[6] = v334;
    v330[4] = v332;
    swift_endAccess();
    v825 = v815;
    v826 = v816;
    v827[0] = v817[0];
    *&v827[1] = *&v817[1];
    v823 = v813;
    v824 = v814;
    BYTE8(v827[1]) = 8;
    sub_217E98274(&v823);
    v335 = swift_beginAccess();
    v337 = *(v20 + 16);
    v92 = __OFADD__(v337, 1);
    v338 = v337 + 1;
    if (!v92)
    {
      *(v20 + 16) = v338;
      v113 = v784;
      if (qword_280C27680 == -1)
      {
        goto LABEL_253;
      }

      goto LABEL_559;
    }
  }

  __break(1u);
LABEL_559:
  v335 = swift_once();
LABEL_253:
  v340.n128_f64[0] = MEMORY[0x28223BE20](v335, v336);
  v758 = &v833;
  v341 = sub_217F2C070;
LABEL_275:
  v339(v341, v340);
LABEL_276:
  sub_217E98274(&v833);
  v16 = v790;
  swift_beginAccess();
  v401 = *(v22 + 16);

  v402 = sub_217EA3608(v777, v768, v401);

  if ((v402 & 1) == 0)
  {
    v406 = swift_beginAccess();
    if (*(*(v790 + 16) + 16) < v776)
    {
      swift_bridgeObjectRelease_n();
      v408 = *(v782 + 3);
      v815 = *(v782 + 2);
      v816 = v408;
      v817[0] = *(v782 + 4);
      *(v817 + 9) = *(v782 + 73);
      v409 = *(v782 + 1);
      v813 = *v782;
      v814 = v409;
      swift_beginAccess();
      v410 = *(*(v790 + 16) + 16);
      v183 = v773;
      if (v410 >= v116)
      {
        goto LABEL_343;
      }

      if (*(v772 + 16) <= v410)
      {
        __break(1u);
        goto LABEL_565;
      }

      v411 = *(v767 + v410);
      if (!v411)
      {
LABEL_343:
        sub_217E98218(v782, &v828);
        v758 = v113;
        v759 = v786;
        v473 = v780;
        v474 = v782;
        v475 = v16;
        goto LABEL_344;
      }

      if (v411 != 1)
      {
LABEL_342:
        swift_beginAccess();
        if ((*(v771 + 16) & 1) == 0)
        {
          sub_217E98218(v782, &v828);
          v476 = sub_217F0C1FC(v22, v780, v16, v789, v20, v19, v113, v781, v786, v771, v782, v776, v769 & 1, v770, v772, v183);
          goto LABEL_345;
        }

        goto LABEL_343;
      }

      v287 = v770;
      swift_beginAccess();
      if (*(v770 + 16))
      {
        goto LABEL_343;
      }

      swift_beginAccess();
      v412 = *(v20 + 16);
      v92 = __OFADD__(v412, v789);
      v413 = v789 + v412;
      if (v92)
      {
        goto LABEL_577;
      }

      if (v413 >= v773)
      {
        v287 = v782;
        v636 = sub_217E98218(v782, &v828);
        if (qword_280C27680 != -1)
        {
          goto LABEL_582;
        }

        goto LABEL_457;
      }

      v414 = swift_allocObject();
      *(v414 + 16) = v769 & 1;
      *(v414 + 24) = v22;
      v415 = swift_allocObject();
      v416 = v789;
      v417 = v790;
      v415[2] = v780;
      v415[3] = v417;
      v415[4] = v416;
      v415[5] = v20;
      swift_beginAccess();
      swift_retain_n();
      sub_217E98218(v782, &v828);

      v419 = sub_217F212D0(v418, sub_217F2BBE4, v414, sub_217F2BBF0);
      v421 = v420;

      v785 = v415;

      if ((v421 & 1) == 0)
      {
        v116 = v19;
        swift_beginAccess();
        if ((v419 & 0x8000000000000000) != 0)
        {
          goto LABEL_585;
        }

        v651 = *(v786 + 16);
        if (*(v651 + 16) <= v419)
        {
          goto LABEL_586;
        }

        v652 = (v651 + 96 * v419);
        v653 = v652[3];
        v823 = v652[2];
        v824 = v653;
        v654 = v652[4];
        v655 = v652[5];
        v656 = v652[6];
        *(v827 + 9) = *(v652 + 105);
        v827[0] = v656;
        v826 = v655;
        v825 = v654;
        v657 = v823;
        swift_beginAccess();
        v658 = *(*(v790 + 16) + 16);
        v799 = v825;
        v800 = v826;
        v801 = v827[0];
        v802 = *&v827[1];
        v797 = v823;
        v798 = v824;
        swift_beginAccess();
        sub_217E98218(&v823, &v828);
        sub_217E98218(&v823, &v828);

        sub_217F194B0(&v828, v657, *(&v657 + 1));
        swift_endAccess();

        if (v781)
        {
          v808 = v657;
          *&v809 = *(&v826 + 1);
          *(&v809 + 1) = v658;
          v810 = xmmword_217F591C0;
          LOBYTE(v812[0]) = 0;

          ClusteringJournal.record(event:)(&v808);
          v830 = v810;
          v831 = v811;
          LOBYTE(v832[0]) = v812[0];
          v829 = v809;
          v828 = v808;
          sub_217F23F40(&v828);
        }

        v830 = v799;
        v831 = v800;
        v832[0] = v801;
        *&v832[1] = v802;
        v828 = v797;
        v829 = v798;
        BYTE8(v832[1]) = 8;
        swift_beginAccess();
        sub_217E98218(&v828, &v808);
        sub_217F1BC40();
        v659 = *(*(v790 + 16) + 16);
        sub_217F1946C(v659);
        v660 = *(v790 + 16);
        *(v660 + 16) = v659 + 1;
        v661 = (v660 + 96 * v659);
        v662 = v829;
        v661[2] = v828;
        v661[3] = v662;
        v663 = v830;
        v664 = v831;
        v665 = v832[0];
        *(v661 + 105) = *(v832 + 9);
        v661[5] = v664;
        v661[6] = v665;
        v661[4] = v663;
        swift_endAccess();
        v805 = v799;
        v806 = v800;
        v807[0] = v801;
        *&v807[1] = v802;
        v803 = v797;
        v804 = v798;
        BYTE8(v807[1]) = 8;
        sub_217E98274(&v803);
        swift_beginAccess();
        v666 = *(v788 + 16);
        v92 = __OFADD__(v666, 1);
        v667 = v666 + 1;
        if (v92)
        {
          goto LABEL_587;
        }

        *(v788 + 16) = v667;
        swift_beginAccess();
        sub_217F0BEE4(v419, &v792);
        swift_endAccess();
        v810 = v794;
        v811 = v795;
        v812[0] = v796[0];
        *(v812 + 9) = *(v796 + 9);
        v808 = v792;
        v809 = v793;
        v668 = sub_217E98274(&v808);
        if (qword_280C27680 != -1)
        {
          goto LABEL_588;
        }

        goto LABEL_488;
      }

      v422 = sub_217F2141C(v787, v113, v775, sub_217F2BBE4, v414, sub_217F2BBF0, v785);
      v424 = v423;
      v116 = v19;

      if ((v424 & 1) == 0)
      {
        if ((v422 & 0x8000000000000000) != 0)
        {
          goto LABEL_590;
        }

        if (*(v19 + 16) <= v422)
        {
          goto LABEL_591;
        }

        v698 = (v787 + 96 * v422);
        v699 = v698[3];
        v825 = v698[2];
        v826 = v699;
        v827[0] = v698[4];
        *(v827 + 9) = *(v698 + 73);
        v700 = v698[1];
        v823 = *v698;
        v824 = v700;
        v701 = v823;
        swift_beginAccess();
        v702 = *(*(v790 + 16) + 16);
        v805 = v825;
        v806 = v826;
        v807[0] = v827[0];
        *&v807[1] = *&v827[1];
        v803 = v823;
        v804 = v824;
        swift_beginAccess();
        sub_217E98218(&v823, &v828);
        sub_217E98218(&v823, &v828);

        sub_217F194B0(&v828, v701, *(&v701 + 1));
        swift_endAccess();

        if (v781)
        {
          v808 = v701;
          *&v809 = *(&v826 + 1);
          *(&v809 + 1) = v702;
          *&v810 = v422;
          *(&v810 + 1) = 2;
          LOBYTE(v812[0]) = 0;

          ClusteringJournal.record(event:)(&v808);
          v830 = v810;
          v831 = v811;
          LOBYTE(v832[0]) = v812[0];
          v829 = v809;
          v828 = v808;
          sub_217F23F40(&v828);
        }

        v830 = v805;
        v831 = v806;
        v832[0] = v807[0];
        *&v832[1] = *&v807[1];
        v828 = v803;
        v829 = v804;
        BYTE8(v832[1]) = 8;
        swift_beginAccess();
        sub_217E98218(&v828, &v808);
        sub_217F1BC40();
        v703 = *(*(v790 + 16) + 16);
        sub_217F1946C(v703);
        v704 = *(v790 + 16);
        *(v704 + 16) = v703 + 1;
        v705 = (v704 + 96 * v703);
        v706 = v829;
        v705[2] = v828;
        v705[3] = v706;
        v707 = v830;
        v708 = v831;
        v709 = v832[0];
        *(v705 + 105) = *(v832 + 9);
        v705[5] = v708;
        v705[6] = v709;
        v705[4] = v707;
        swift_endAccess();
        v810 = v805;
        v811 = v806;
        v812[0] = v807[0];
        *&v812[1] = *&v807[1];
        v808 = v803;
        v809 = v804;
        BYTE8(v812[1]) = 8;
        sub_217E98274(&v808);
        v710 = swift_beginAccess();
        v712 = *(v788 + 16);
        v92 = __OFADD__(v712, 1);
        v713 = v712 + 1;
        if (v92)
        {
          goto LABEL_592;
        }

        *(v788 + 16) = v713;
        if (qword_280C27680 != -1)
        {
          goto LABEL_593;
        }

        goto LABEL_515;
      }

      swift_beginAccess();

      v22 = sub_217F20DB0(v425, v769 & 1, v783);
      v427 = v426;

      if (v427)
      {

        v428 = sub_217F21044(v787, v784, v775, v769 & 1, v783);
        v430 = v429;

        if (v430)
        {
          if (v781)
          {
            v831 = 0u;
            v830 = 0u;
            v829 = 0u;
            v828 = 0u;
            LOBYTE(v832[0]) = -16;
            v431 = ClusteringJournal.record(event:)(&v828);
          }

          if (qword_280C27680 != -1)
          {
            v431 = swift_once();
          }

          v433 = MEMORY[0x28223BE20](v431, v432);
          v758 = v789;
          v791(sub_217F2C054, v433);
          swift_beginAccess();
          *(v770 + 16) = 1;
          goto LABEL_543;
        }

        if ((v428 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (*(v19 + 16) > v428)
        {
          v738 = (v787 + 96 * v428);
          v739 = v738[3];
          v825 = v738[2];
          v826 = v739;
          v827[0] = v738[4];
          *(v827 + 9) = *(v738 + 73);
          v740 = v738[1];
          v823 = *v738;
          v824 = v740;
          v741 = v823;
          swift_beginAccess();
          v742 = *(*(v790 + 16) + 16);
          v805 = v825;
          v806 = v826;
          v807[0] = v827[0];
          *&v807[1] = *&v827[1];
          v803 = v823;
          v804 = v824;
          swift_beginAccess();
          sub_217E98218(&v823, &v828);
          sub_217E98218(&v823, &v828);

          sub_217F194B0(&v828, v741, *(&v741 + 1));
          swift_endAccess();

          if (v781)
          {
            v808 = v741;
            *&v809 = *(&v826 + 1);
            *(&v809 + 1) = v742;
            *&v810 = v428;
            *(&v810 + 1) = 2;
            LOBYTE(v812[0]) = 0;

            ClusteringJournal.record(event:)(&v808);
            v830 = v810;
            v831 = v811;
            LOBYTE(v832[0]) = v812[0];
            v829 = v809;
            v828 = v808;
            sub_217F23F40(&v828);
          }

          v830 = v805;
          v831 = v806;
          v832[0] = v807[0];
          *&v832[1] = *&v807[1];
          v828 = v803;
          v829 = v804;
          BYTE8(v832[1]) = 8;
          swift_beginAccess();
          sub_217E98218(&v828, &v808);
          sub_217F1BC40();
          v743 = *(*(v790 + 16) + 16);
          sub_217F1946C(v743);
          v744 = *(v790 + 16);
          *(v744 + 16) = v743 + 1;
          v745 = (v744 + 96 * v743);
          v746 = v829;
          v745[2] = v828;
          v745[3] = v746;
          v747 = v830;
          v748 = v831;
          v749 = v832[0];
          *(v745 + 105) = *(v832 + 9);
          v745[5] = v748;
          v745[6] = v749;
          v745[4] = v747;
          swift_endAccess();
          v810 = v805;
          v811 = v806;
          v812[0] = v807[0];
          *&v812[1] = *&v807[1];
          v808 = v803;
          v809 = v804;
          BYTE8(v812[1]) = 8;
          sub_217E98274(&v808);
          v750 = swift_beginAccess();
          v752 = *(v788 + 16);
          v92 = __OFADD__(v752, 1);
          v753 = v752 + 1;
          if (!v92)
          {
            *(v788 + 16) = v753;
            if (qword_280C27680 == -1)
            {
LABEL_541:
              v670.n128_f64[0] = MEMORY[0x28223BE20](v750, v751);
              v758 = &v823;
              v671 = sub_217F2C058;
              goto LABEL_542;
            }

LABEL_604:
            v750 = swift_once();
            goto LABEL_541;
          }

LABEL_603:
          __break(1u);
          goto LABEL_604;
        }

        __break(1u);
        goto LABEL_603;
      }

LABEL_524:
      swift_beginAccess();
      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_597;
      }

      v718 = *(v786 + 16);
      if (*(v718 + 16) <= v22)
      {
LABEL_598:
        __break(1u);
      }

      else
      {
        v719 = (v718 + 96 * v22);
        v720 = v719[3];
        v823 = v719[2];
        v824 = v720;
        v721 = v719[4];
        v722 = v719[5];
        v723 = v719[6];
        *(v827 + 9) = *(v719 + 105);
        v827[0] = v723;
        v826 = v722;
        v825 = v721;
        v724 = v823;
        swift_beginAccess();
        v725 = *(*(v790 + 16) + 16);
        v799 = v825;
        v800 = v826;
        v801 = v827[0];
        v802 = *&v827[1];
        v797 = v823;
        v798 = v824;
        swift_beginAccess();
        sub_217E98218(&v823, &v828);
        sub_217E98218(&v823, &v828);

        sub_217F194B0(&v828, v724, *(&v724 + 1));
        swift_endAccess();

        if (v781)
        {
          v808 = v724;
          *&v809 = *(&v826 + 1);
          *(&v809 + 1) = v725;
          v810 = xmmword_217F591C0;
          LOBYTE(v812[0]) = 0;

          ClusteringJournal.record(event:)(&v808);
          v830 = v810;
          v831 = v811;
          LOBYTE(v832[0]) = v812[0];
          v829 = v809;
          v828 = v808;
          sub_217F23F40(&v828);
        }

        v830 = v799;
        v831 = v800;
        v832[0] = v801;
        *&v832[1] = v802;
        v828 = v797;
        v829 = v798;
        BYTE8(v832[1]) = 8;
        swift_beginAccess();
        sub_217E98218(&v828, &v808);
        sub_217F1BC40();
        v726 = *(*(v790 + 16) + 16);
        sub_217F1946C(v726);
        v727 = *(v790 + 16);
        *(v727 + 16) = v726 + 1;
        v728 = (v727 + 96 * v726);
        v729 = v829;
        v728[2] = v828;
        v728[3] = v729;
        v730 = v830;
        v731 = v831;
        v732 = v832[0];
        *(v728 + 105) = *(v832 + 9);
        v728[5] = v731;
        v728[6] = v732;
        v728[4] = v730;
        swift_endAccess();
        v805 = v799;
        v806 = v800;
        v807[0] = v801;
        *&v807[1] = v802;
        v803 = v797;
        v804 = v798;
        BYTE8(v807[1]) = 8;
        sub_217E98274(&v803);
        swift_beginAccess();
        v733 = *(v788 + 16);
        v92 = __OFADD__(v733, 1);
        v734 = v733 + 1;
        if (!v92)
        {
          *(v788 + 16) = v734;
          swift_beginAccess();
          sub_217F0BEE4(v22, &v792);
          swift_endAccess();
          v810 = v794;
          v811 = v795;
          v812[0] = v796[0];
          *(v812 + 9) = *(v796 + 9);
          v808 = v792;
          v809 = v793;
          v735 = sub_217E98274(&v808);
          if (qword_280C27680 == -1)
          {
LABEL_530:
            v670.n128_f64[0] = MEMORY[0x28223BE20](v735, v736);
            v758 = &v823;
            v671 = sub_217F2C05C;
            goto LABEL_542;
          }

LABEL_600:
          v735 = swift_once();
          goto LABEL_530;
        }
      }

      __break(1u);
      goto LABEL_600;
    }

    if (qword_280C27680 != -1)
    {
      v406 = swift_once();
    }

    v434 = MEMORY[0x28223BE20](v406, v407);
    v758 = v19;
    v759 = v113;
    v791(sub_217F2BFD0, v434);
    if (v785 != v113)
    {

      swift_beginAccess();
      if (v785 <= v113)
      {
LABEL_505:
        __break(1u);
        goto LABEL_506;
      }

      v19 = v113;
      while (1)
      {
        v435 = v787 + 96 * v19;
        v436 = *(v435 + 48);
        v437 = *(v435 + 16);
        v830 = *(v435 + 32);
        v831 = v436;
        v438 = *(v435 + 48);
        v832[0] = *(v435 + 64);
        *(v832 + 9) = *(v435 + 73);
        v439 = *(v435 + 16);
        v828 = *v435;
        v829 = v439;
        v810 = v830;
        v811 = v438;
        v812[0] = *(v435 + 64);
        *&v812[1] = *(v435 + 80);
        v808 = v828;
        v809 = v437;
        v440 = *(v22 + 16);
        if (!*(v440 + 16))
        {
          break;
        }

        v441 = BYTE8(v832[1]);
        v442 = v828;
        sub_217F4B224();
        sub_217E98218(&v828, &v823);

        sub_217F4AB24();
        v443 = sub_217F4B254();
        v444 = -1 << *(v440 + 32);
        v445 = v443 & ~v444;
        if (((*(v440 + 56 + ((v445 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v445) & 1) == 0)
        {
LABEL_312:

          v22 = v783;
          v113 = v784;
LABEL_314:
          v825 = v810;
          v826 = v811;
          v827[0] = v812[0];
          *&v827[1] = *&v812[1];
          v823 = v808;
          v824 = v809;
          BYTE8(v827[1]) = 2;
          swift_beginAccess();
          v449 = *(v786 + 16);
          sub_217E98218(&v823, &v813);
          v450 = swift_isUniquelyReferenced_nonNull_native();
          *(v786 + 16) = v449;
          if ((v450 & 1) == 0)
          {
            v449 = sub_217E8D720(0, *(v449 + 2) + 1, 1, v449);
            *(v786 + 16) = v449;
          }

          v452 = *(v449 + 2);
          v451 = *(v449 + 3);
          if (v452 >= v451 >> 1)
          {
            v449 = sub_217E8D720((v451 > 1), v452 + 1, 1, v449);
          }

          *(v449 + 2) = v452 + 1;
          v453 = &v449[96 * v452];
          v454 = v824;
          *(v453 + 2) = v823;
          *(v453 + 3) = v454;
          v455 = v825;
          v456 = v826;
          v457 = v827[0];
          *(v453 + 105) = *(v827 + 9);
          *(v453 + 5) = v456;
          *(v453 + 6) = v457;
          *(v453 + 4) = v455;
          *(v786 + 16) = v449;
          swift_endAccess();
          v815 = v810;
          v816 = v811;
          v817[0] = v812[0];
          *&v817[1] = *&v812[1];
          v813 = v808;
          v814 = v809;
          BYTE8(v817[1]) = 2;
          sub_217E98274(&v813);
          goto LABEL_320;
        }

        v446 = ~v444;
        while (1)
        {
          v447 = (*(v440 + 48) + 16 * v445);
          v448 = *v447 == v442 && v447[1] == *(&v442 + 1);
          if (v448 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v445 = (v445 + 1) & v446;
          if (((*(v440 + 56 + ((v445 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v445) & 1) == 0)
          {
            goto LABEL_312;
          }
        }

        v460 = MEMORY[0x28223BE20](v458, v459);
        v758 = v782;
        v791(sub_217F2C04C, v460);
        v825 = v810;
        v826 = v811;
        v827[0] = v812[0];
        *&v827[1] = *&v812[1];
        v823 = v808;
        v824 = v809;
        BYTE8(v827[1]) = v441;
        sub_217E98274(&v823);
        v22 = v783;
        v113 = v784;
LABEL_320:
        if (++v19 == v785)
        {

          goto LABEL_325;
        }

        if (v19 < v113 || v19 >= v785)
        {
          goto LABEL_505;
        }
      }

      sub_217E98218(&v828, &v823);
      goto LABEL_314;
    }

LABEL_325:
    if (!v781)
    {
      swift_bridgeObjectRelease_n();

LABEL_340:
      v830 = v820;
      v831 = v821;
      v832[0] = v822[0];
      *(v832 + 9) = *(v822 + 9);
      v828 = v818;
      v829 = v819;
      sub_217E98274(&v828);
      goto LABEL_180;
    }

    swift_beginAccess();
    v461 = *(v786 + 16);

    v462 = sub_217F20B38(v787, v113, v775, (v22 + 16));

    *&v828 = v461;
    sub_217E80538(v462);
    v463 = v828;
    v464 = *(v828 + 16);
    if (v464)
    {
      *&v828 = MEMORY[0x277D84F90];
      sub_217F193F4(v464);
      v465 = v828;
      v466 = (v463 + 88);
      do
      {
        v468 = *(v466 - 7);
        v467 = *(v466 - 6);
        v469 = *v466;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_217EA0CC0(0, *(v465 + 16) + 1, 1);
          v465 = v828;
        }

        v471 = *(v465 + 16);
        v470 = *(v465 + 24);
        if (v471 >= v470 >> 1)
        {
          sub_217EA0CC0((v470 > 1), v471 + 1, 1);
          v465 = v828;
        }

        *(v465 + 16) = v471 + 1;
        v472 = (v465 + 24 * v471);
        v472[4] = v468;
        v472[5] = v467;
        v472[6] = v469;
        v466 += 12;
        --v464;
      }

      while (v464);

      goto LABEL_339;
    }

LABEL_338:

    v465 = MEMORY[0x277D84F90];
LABEL_339:
    *&v813 = v465;
    LOBYTE(v817[0]) = -127;
    ClusteringJournal.record(event:)(&v813);

    v825 = v815;
    v826 = v816;
    LOBYTE(v827[0]) = v817[0];
    v824 = v814;
    v823 = v813;
    sub_217F23F40(&v823);
    goto LABEL_340;
  }

  v403 = swift_bridgeObjectRelease_n();
  if (qword_280C27680 != -1)
  {
    v403 = swift_once();
  }

  v405 = MEMORY[0x28223BE20](v403, v404);
  v758 = v782;
  v791(sub_217F2C068, v405);

  v830 = v820;
  v831 = v821;
  v832[0] = v822[0];
  *(v832 + 9) = *(v822 + 9);
  v828 = v818;
  v829 = v819;
  v282 = &v828;
LABEL_280:
  sub_217E98274(v282);
  v120 = 1;
  return v120 & 1;
}

uint64_t sub_217F142A0(void *a1)
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD000000000000041, 0x8000000217F60970);
  MEMORY[0x21CEAEAC0](*a1, a1[1]);
  return 0;
}

unint64_t sub_217F14314(void *a1)
{
  sub_217F4ADD4();

  MEMORY[0x21CEAEAC0](*a1, a1[1]);
  return 0xD00000000000002FLL;
}

uint64_t sub_217F143A0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v13 = a1;
  v14 = *(a1 + 16);
  sub_217E98218(a2, &v73);

  swift_beginAccess();
  swift_beginAccess();
  if (v14)
  {
    v61 = a10;
    v15 = (v13 + 56);
    v64 = a6;
    while (1)
    {
      v67 = v14;
      v10 = *(v15 - 3);
      v16 = *(v15 - 2);
      v17 = *(v15 - 1);
      v18 = *v15;
      *&v68 = v10;
      *(&v68 + 1) = v16;
      *&v69 = v17;
      BYTE8(v69) = v18;
      v19 = a2[3];
      v75 = a2[2];
      v76 = v19;
      v77[0] = a2[4];
      *(v77 + 9) = *(a2 + 73);
      v20 = a2[1];
      v73 = *a2;
      v74 = v20;
      v21 = *(a6 + 16);
      v22 = a5 + v21;
      if (__OFADD__(a5, v21))
      {
        break;
      }

      v23 = *(a3 + 16);
      sub_217F2BB04(v10, v16, v17, v18);

      v13 = &v68;
      sub_217F1FA44(&v73, v23, v22, 0);
      v15 += 32;

      sub_217F2BB34(v10, v16, v17, v18);
      v14 = v67 - 1;
      a6 = v64;
      if (v67 == 1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_5:

  sub_217E98274(a2);
  v18 = a7;
  swift_beginAccess();
  *(a7 + 88) = 0;
  v16 = a3;
  if (a8)
  {
    swift_beginAccess();
    v24 = *a7;
    v10 = a7[1];
    v25 = a7[7];
    swift_beginAccess();
    v26 = *(*(a3 + 16) + 16);
    *&v68 = v24;
    *(&v68 + 1) = v10;
    *&v69 = v25;
    *(&v69 + 1) = v26;
    v70 = a9;
    v72 = 0;

    ClusteringJournal.record(event:)(&v68);
    v75 = v70;
    v76 = v71;
    LOBYTE(v77[0]) = v72;
    v73 = v68;
    v74 = v69;
    sub_217F23F40(&v73);
  }

  swift_beginAccess();
  v27 = *(a7 + 3);
  v75 = *(a7 + 2);
  v76 = v27;
  v77[0] = *(a7 + 4);
  *(v77 + 9) = *(a7 + 73);
  v28 = *(a7 + 1);
  v73 = *a7;
  v74 = v28;
  swift_beginAccess();
  v13 = *(a3 + 16);
  sub_217E98218(&v73, &v68);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_24:
    v13 = sub_217E8D720(0, *(v13 + 2) + 1, 1, v13);
    *(v16 + 16) = v13;
  }

  v31 = *(v13 + 2);
  v30 = *(v13 + 3);
  v32 = v31 + 1;
  if (v31 >= v30 >> 1)
  {
    v13 = sub_217E8D720((v30 > 1), v31 + 1, 1, v13);
  }

  *(v13 + 2) = v32;
  v33 = &v13[96 * v31];
  v34 = v74;
  *(v33 + 2) = v73;
  *(v33 + 3) = v34;
  v35 = v75;
  v36 = v76;
  v37 = v77[0];
  *(v33 + 105) = *(v77 + 9);
  *(v33 + 5) = v36;
  *(v33 + 6) = v37;
  *(v33 + 4) = v35;
  *(v16 + 16) = v13;
  swift_endAccess();
  v38 = swift_beginAccess();
  if (*(v18 + 66) != 1)
  {
    goto LABEL_14;
  }

  v38 = swift_beginAccess();
  if (v18[8])
  {
    goto LABEL_14;
  }

  v38 = swift_beginAccess();
  v40 = *(a6 + 16);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (!v41)
  {
    *(a6 + 16) = v42;
LABEL_14:
    if (qword_280C27680 != -1)
    {
      v38 = swift_once();
    }

    v43 = MEMORY[0x28223BE20](v38, v39);
    v44(sub_217F2BC7C, v43);
    return 1;
  }

  __break(1u);
  v60 = swift_once();
  v47 = MEMORY[0x28223BE20](v60, v46);
  v48(sub_217F2BC04, v47);
  swift_beginAccess();
  v49 = v10[3];
  v75 = v10[2];
  v76 = v49;
  v77[0] = v10[4];
  *(v77 + 9) = *(v10 + 73);
  v50 = v10[1];
  v73 = *v10;
  v74 = v50;
  swift_beginAccess();
  v51 = *(v61 + 16);
  sub_217E98218(&v73, &v68);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  *(v61 + 16) = v51;
  if ((v52 & 1) == 0)
  {
    v51 = sub_217E8D720(0, *(v51 + 2) + 1, 1, v51);
    *(v61 + 16) = v51;
  }

  v54 = *(v51 + 2);
  v53 = *(v51 + 3);
  if (v54 >= v53 >> 1)
  {
    v51 = sub_217E8D720((v53 > 1), v54 + 1, 1, v51);
  }

  *(v51 + 2) = v54 + 1;
  v55 = &v51[96 * v54];
  v56 = v74;
  *(v55 + 2) = v73;
  *(v55 + 3) = v56;
  v57 = v75;
  v58 = v76;
  v59 = v77[0];
  *(v55 + 105) = *(v77 + 9);
  *(v55 + 5) = v58;
  *(v55 + 6) = v59;
  *(v55 + 4) = v57;
  *(v61 + 16) = v51;
  swift_endAccess();
  MEMORY[0x21CEAF510](v32);
  return 1;
}

unint64_t sub_217F15484(void *a1)
{
  sub_217F4ADD4();

  MEMORY[0x21CEAEAC0](*a1, a1[1]);
  return 0xD000000000000014;
}

uint64_t sub_217F154F4(void *a1)
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD000000000000013, 0x8000000217F60A20);
  MEMORY[0x21CEAEAC0](*a1, a1[1]);
  MEMORY[0x21CEAEAC0](0xD000000000000036, 0x8000000217F60A40);
  return 0;
}

uint64_t sub_217F15594(void *a1)
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD000000000000013, 0x8000000217F60A20);
  MEMORY[0x21CEAEAC0](*a1, a1[1]);
  MEMORY[0x21CEAEAC0](0xD000000000000033, 0x8000000217F60A80);
  return 0;
}

uint64_t sub_217F15634(void *a1)
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD000000000000013, 0x8000000217F60A20);
  MEMORY[0x21CEAEAC0](*a1, a1[1]);
  MEMORY[0x21CEAEAC0](0xD000000000000035, 0x8000000217F60AC0);
  return 0;
}

uint64_t sub_217F156D4(void *a1)
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD000000000000013, 0x8000000217F60A20);
  MEMORY[0x21CEAEAC0](*a1, a1[1]);
  MEMORY[0x21CEAEAC0](0xD00000000000002DLL, 0x8000000217F60B00);
  return 0;
}

uint64_t sub_217F15774(void *a1)
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD000000000000013, 0x8000000217F60A20);
  MEMORY[0x21CEAEAC0](*a1, a1[1]);
  MEMORY[0x21CEAEAC0](0xD000000000000034, 0x8000000217F60B30);
  return 0;
}

uint64_t sub_217F15814(void *a1)
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD000000000000013, 0x8000000217F60A20);
  MEMORY[0x21CEAEAC0](*a1, a1[1]);
  MEMORY[0x21CEAEAC0](0xD00000000000003FLL, 0x8000000217F60B70);
  return 0;
}

uint64_t sub_217F158B8(void *a1)
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD000000000000013, 0x8000000217F60A20);
  MEMORY[0x21CEAEAC0](*a1, a1[1]);
  MEMORY[0x21CEAEAC0](0xD00000000000003FLL, 0x8000000217F60BB0);
  return 0;
}

uint64_t sub_217F1595C(void *a1)
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD000000000000013, 0x8000000217F60A20);
  MEMORY[0x21CEAEAC0](*a1, a1[1]);
  MEMORY[0x21CEAEAC0](0xD00000000000002CLL, 0x8000000217F60BF0);
  return 0;
}

unint64_t sub_217F159FC(void *a1)
{
  sub_217F4ADD4();

  MEMORY[0x21CEAEAC0](*a1, a1[1]);
  MEMORY[0x21CEAEAC0](0xD000000000000016, 0x8000000217F60C20);
  return 0xD000000000000013;
}

uint64_t sub_217F15A90()
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD000000000000051, 0x8000000217F608C0);
  v0 = sub_217F4B104();
  MEMORY[0x21CEAEAC0](v0);

  MEMORY[0x21CEAEAC0](0xD00000000000001ELL, 0x8000000217F60920);
  return 0;
}

uint64_t sub_217F15B68(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v208 = v2;
  v209 = v4;
  v210 = v3;
  v6 = v5;
  v207 = v7;
  v9 = v8;
  isUniquelyReferenced_nonNull_native = v10;
  v13 = v12;
  v15 = memcpy(v239, v14, sizeof(v239));
  if (qword_280C27680 != -1)
  {
    goto LABEL_129;
  }

  while (1)
  {
    v201 = v13;
    v17 = *algn_280C31B88;
    v18 = MEMORY[0x28223BE20](v15, v16);
    v205 = v17;
    v206 = v19;
    (v19)(sub_217F23F9C, v18);
    if (qword_280C28808 != -1)
    {
      swift_once();
    }

    v211 = v6;
    v20 = qword_280C28810;
    v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_217F4C8A0;
    v202 = isUniquelyReferenced_nonNull_native;
    v22 = *(isUniquelyReferenced_nonNull_native + 16);
    v23 = MEMORY[0x277D83B88];
    v24 = MEMORY[0x277D83C10];
    *(v21 + 56) = MEMORY[0x277D83B88];
    *(v21 + 64) = v24;
    v216 = v22;
    *(v21 + 32) = v22;
    v25 = v9[2];
    *(v21 + 96) = v23;
    *(v21 + 104) = v24;
    *(v21 + 72) = v25;
    sub_217F4AD54();
    v203 = v20;
    sub_217F4AA44("Attempting to cluster %lu headlines into %lu tags", v200, v201);

    v6 = MEMORY[0x277D84F98];
    if (!v25)
    {
      break;
    }

    v26 = v9 + 4;
    while (1)
    {
      v225[0] = *v26;
      *(v225 + 13) = *(v26 + 13);
      v30 = *(&v225[0] + 1);
      v9 = *&v225[0];
      sub_217E98168(v225, v240);
      sub_217E98168(v225, v240);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v230 = v6;
      v13 = v6;
      v31 = sub_217E8E88C(v9, v30);
      v33 = *(v6 + 16);
      v34 = (v32 & 1) == 0;
      v35 = __OFADD__(v33, v34);
      v36 = v33 + v34;
      if (v35)
      {
        break;
      }

      v37 = v32;
      if (*(v6 + 24) >= v36)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v32)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v13 = &v230;
          v44 = v31;
          sub_217E8FDE4();
          v31 = v44;
          if (v37)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        sub_217E92DB0(v36, isUniquelyReferenced_nonNull_native);
        v13 = v230;
        v31 = sub_217E8E88C(v9, v30);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_131;
        }

        if (v37)
        {
LABEL_6:
          v6 = v230;
          v27 = (*(v230 + 56) + 32 * v31);
          v28 = *(v27 + 13);
          v240[0] = *v27;
          *(v240 + 13) = v28;
          v29 = v225[0];
          *(v27 + 13) = *(v225 + 13);
          *v27 = v29;
          sub_217F23FA4(v240);
          sub_217F23FA4(v225);
          goto LABEL_7;
        }
      }

      v6 = v230;
      *(v230 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v39 = (*(v6 + 48) + 16 * v31);
      *v39 = v9;
      v39[1] = v30;
      v40 = (*(v6 + 56) + 32 * v31);
      v41 = *(v225 + 13);
      *v40 = v225[0];
      *(v40 + 13) = v41;
      v42 = *(v6 + 16);
      v35 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v35)
      {
        goto LABEL_127;
      }

      *(v6 + 16) = v43;
LABEL_7:
      v26 += 2;
      if (!--v25)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    v15 = swift_once();
  }

LABEL_19:
  v45 = MEMORY[0x277D84FA0];
  v46 = MEMORY[0x277D84F98];
  v223[0] = MEMORY[0x277D84F98];
  if (!v216)
  {
    v217 = 0;
    v75 = MEMORY[0x277D84F98];
    goto LABEL_43;
  }

  v47 = 0;
  v217 = 0;
  *&v215 = v202 + 32;
  v214 = xmmword_217F4BC20;
  v48 = MEMORY[0x277D84F90];
  while (2)
  {
    v49 = (v215 + 96 * v47);
    v50 = v49[3];
    v241 = v49[2];
    v242 = v50;
    v243[0] = v49[4];
    *(v243 + 9) = *(v49 + 73);
    v51 = v49[1];
    v240[0] = *v49;
    v240[1] = v51;
    v52 = v241;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
    v53 = swift_allocObject();
    v244 = v49[1];
    v54 = v244;
    *(v53 + 16) = v214;
    *(v53 + 32) = v54;
    v55 = *(v52 + 16);
    sub_217E98218(v240, v225);
    sub_217F23FF8(&v244, v225);
    *&v225[0] = sub_217E8DB18(0, v55 + 1, 0, v48);

    sub_217E80724(v56);
    sub_217E80630(v53);
    v57 = *&v225[0];
    v58 = *(*&v225[0] + 16);
    if (!v58)
    {
      v61 = v48;
      goto LABEL_39;
    }

    v59 = 0;
    v60 = *&v225[0] + 40;
    v212 = v58 - 1;
    v213 = *&v225[0] + 40;
    v61 = v48;
    while (2)
    {
      v62 = (v60 + 16 * v59);
      v63 = v59;
      while (2)
      {
        if (v63 >= *(v57 + 16))
        {
          __break(1u);
          goto LABEL_118;
        }

        if (!*(v6 + 16))
        {
          goto LABEL_26;
        }

        v64 = *(v62 - 1);
        v65 = *v62;

        v66 = sub_217E8E88C(v64, v65);
        if ((v67 & 1) == 0)
        {

LABEL_26:
          ++v63;
          v62 += 2;
          if (v58 == v63)
          {
            v48 = MEMORY[0x277D84F90];
            goto LABEL_39;
          }

          continue;
        }

        break;
      }

      v68 = (*(v6 + 56) + 32 * v66);
      v69 = *(v68 + 13);
      v225[0] = *v68;
      *(v225 + 13) = v69;
      sub_217E98168(v225, &v230);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_217E8DFD0(0, *(v61 + 2) + 1, 1, v61);
      }

      v71 = *(v61 + 2);
      v70 = *(v61 + 3);
      if (v71 >= v70 >> 1)
      {
        v61 = sub_217E8DFD0((v70 > 1), v71 + 1, 1, v61);
      }

      v59 = v63 + 1;
      *(v61 + 2) = v71 + 1;
      v72 = &v61[32 * v71];
      v73 = v225[0];
      *(v72 + 45) = *(v225 + 13);
      *(v72 + 2) = v73;
      v60 = v213;
      v48 = MEMORY[0x277D84F90];
      if (v212 != v63)
      {
        continue;
      }

      break;
    }

LABEL_39:

    if (*(v61 + 2))
    {
      sub_217E98218(v240, v225);
      v74 = v217;
      sub_217F246EC(v61, v223, v240);
      v217 = v74;
      sub_217E98274(v240);
      sub_217E98274(v240);
    }

    else
    {

      sub_217F19600(&v230, v240);
      v225[2] = v232;
      v225[3] = v233;
      v225[4] = v234[0];
      *(&v225[4] + 9) = *(v234 + 9);
      v225[0] = v230;
      v225[1] = v231;
      sub_217E98274(v225);
    }

    if (++v47 != v216)
    {
      continue;
    }

    break;
  }

  v45 = *(&v223[0] + 1);
  v75 = *&v223[0];
  v46 = MEMORY[0x277D84F98];
LABEL_43:
  v229 = v75;
  v228 = v45;
  v227 = v46;
  v226 = 0;
  if (!*(v75 + 16))
  {
    v216 = 0;
    goto LABEL_95;
  }

  v216 = 0;
  v76 = MEMORY[0x277D84F98];
LABEL_45:
  if (*(v76 + 2) >= *&v239[59])
  {
    goto LABEL_95;
  }

  v77 = v211;
  ClusteringJournal.startedBuildingCandidateGroups()();

  sub_217EB4358(v239, v225);
  v78 = v207;

  v79 = v209;

  v9 = v217;
  v80 = sub_217F21FB4(MEMORY[0x277D84F90], v75, v77, v239, v78, &v226, v210, v79, v208 & 1, &v227);

  sub_217EB5CB8(v239);

  *&v225[0] = v80;

  sub_217F1A8BC(v225);
  v217 = v9;
  if (v9)
  {
    goto LABEL_132;
  }

  v81 = *&v225[0];
  v82 = sub_217F174B8(&v227, v239);
  v83 = sub_217F176C4(&v227, v239);
  v84 = v83;
  v9 = &v200;
  v86 = MEMORY[0x28223BE20](v83, v85);
  (v206)(sub_217F2A5CC, v86);
  v87 = 0;
  v88 = *(v81 + 16);
  v89 = (v81 + 32);
  v90 = v88 + 1;
  while (--v90)
  {
    v91 = v87 + 40;
    v92 = *(v81 + v87 + 48);
    v87 += 40;
    if ((v82 ^ v84 ^ 1 | v82 ^ v92))
    {
      v13 = (v92 & 1);
      v93 = (v81 + v91);
      v94 = (v81 + v91 + 16);
      v95 = (v81 + v91 + 24);
      v89 = (v81 + v91 - 8);
LABEL_53:
      v96 = *v94;
      isUniquelyReferenced_nonNull_native = *v93;
      v97 = *v89;
      v98 = *v95;

      v99 = 0;
      v100 = v13;
      v101 = (v96 + 98);
      v102 = *(v96 + 16) + 1;
      while (--v102)
      {
        v103 = *v101;
        v104 = *(v101 - 2);
        v101 += 96;
        v105 = v103 & ~v104 & 1;
        v35 = __OFADD__(v99, v105);
        v99 += v105;
        if (v35)
        {
          __break(1u);
          goto LABEL_124;
        }
      }

      v35 = __OFADD__(v216, v99);
      v106 = v216 + v99;
      if (v35)
      {
        goto LABEL_128;
      }

      v216 = v106;
      v226 = v106;
      v107._countAndFlagsBits = v97;
      v107._object = isUniquelyReferenced_nonNull_native;
      ClusteringJournal.finishedBuildingCandidateGroups(selectedTag:)(v107);
      v235[0] = v97;
      v235[1] = isUniquelyReferenced_nonNull_native;
      v236 = v13;
      v237 = v96;
      v238 = v98;

      sub_217F2A5E0(v97, isUniquelyReferenced_nonNull_native, v13, v96);
      v108 = swift_isUniquelyReferenced_nonNull_native();
      *&v225[0] = v227;
      sub_217F1A1D0(v235, v97, isUniquelyReferenced_nonNull_native, v108);
      v76 = *&v225[0];
      v227 = *&v225[0];
      if (!*(v6 + 16))
      {
        sub_217F2A624(v97, isUniquelyReferenced_nonNull_native, v13, v96);

LABEL_64:
        v75 = v229;
        goto LABEL_65;
      }

      v109 = sub_217E8E88C(v97, isUniquelyReferenced_nonNull_native);
      v111 = v110;

      if ((v111 & 1) == 0 || (v112 = (*(v6 + 56) + 32 * v109), v113 = *v112, *(v225 + 13) = *(v112 + 13), v225[0] = v113, v75 = v229, !*(v229 + 16)))
      {
        sub_217F2A624(v97, isUniquelyReferenced_nonNull_native, v100, v96);
        goto LABEL_64;
      }

      sub_217E98168(v225, &v230);
      v114 = 256;
      if (!BYTE9(v225[1]))
      {
        v114 = 0;
      }

      v115 = v215 & 0xFFFFFF0000000000 | BYTE8(v225[1]) | v114;
      v116 = 0x10000;
      if (!BYTE10(v225[1]))
      {
        v116 = 0;
      }

      v117 = 0x1000000;
      if (!BYTE11(v225[1]))
      {
        v117 = 0;
      }

      v118 = v115 | v116 | v117;
      v119 = 0x100000000;
      if (!BYTE12(v225[1]))
      {
        v119 = 0;
      }

      *&v215 = v118 | v119;
      v120 = sub_217E8E9D0(*&v225[0], *(&v225[0] + 1), v118 | v119, *&v225[1]);
      if (v121)
      {
        v212 = v76;
        v122 = *(*(v75 + 56) + 8 * v120);
        v200 = *(&v225[0] + 1);
        v123 = *&v225[0];
        v124 = *&v225[1];
        v125 = 256;
        if (!BYTE9(v225[1]))
        {
          v125 = 0;
        }

        v126 = v213 & 0xFFFFFF0000000000 | BYTE8(v225[1]) | v125;
        v127 = 0x10000;
        if (!BYTE10(v225[1]))
        {
          v127 = 0;
        }

        v128 = 0x1000000;
        if (!BYTE11(v225[1]))
        {
          v128 = 0;
        }

        v129 = v126 | v127 | v128;
        v130 = 0x100000000;
        if (!BYTE12(v225[1]))
        {
          v130 = 0;
        }

        v131 = v129 | v130;
        *&v214 = v122;

        v213 = v131;
        sub_217F19AE8(v123, v200, v131, v124);

        sub_217F23FA4(v225);
        if (BYTE12(v225[1]) == 1)
        {
          if ((BYTE9(v239[57]) & 1) == 0)
          {
            goto LABEL_87;
          }

LABEL_89:

          v132 = sub_217E97374(v133);
        }

        else
        {
          if (BYTE8(v239[57]))
          {
            goto LABEL_89;
          }

LABEL_87:
          v132 = v214;
        }

        v135 = v217;
        sub_217F24400(v134, &v229, v132);
        v217 = v135;

        swift_bridgeObjectRelease_n();
        if (BYTE8(v239[56]))
        {

          v137 = sub_217E97374(v136);

          sub_217F2A624(v97, isUniquelyReferenced_nonNull_native, v100, v96);
          sub_217F1C108(v137);
        }

        else
        {
          sub_217F2A624(v97, isUniquelyReferenced_nonNull_native, v100, v96);
          sub_217F1C108(v214);
        }

        v76 = v212;
        goto LABEL_64;
      }

      sub_217F23FA4(v225);
      sub_217F2A624(v97, isUniquelyReferenced_nonNull_native, v100, v96);
LABEL_65:
      if (!*(v75 + 16))
      {
LABEL_95:

        goto LABEL_96;
      }

      goto LABEL_45;
    }
  }

  if (v88)
  {
    v93 = (v81 + 40);
    v13 = *(v81 + 48);
    v94 = (v81 + 56);
    v95 = (v81 + 64);
    goto LABEL_53;
  }

  v194 = v211;
  if (v211[OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode] != 2)
  {
    swift_beginAccess();
    *(v194 + 2) = 0;
    goto LABEL_95;
  }

LABEL_96:
  v138 = v227;
  v139 = v217;
  v140 = sub_217F1BC8C(v227, sub_217F1BEF0, sub_217F1BEF0);
  v141 = sub_217F24A80(v140);

  v213 = v138;
  v142 = sub_217F1BC8C(v138, sub_217F1BDFC, sub_217F1BDFC);
  v206 = v139;
  memcpy(v225, v239, sizeof(v225));
  v143 = sub_217F2A234(v142, v202, v225);

  v144 = swift_allocObject();
  v145 = v144;
  v215 = xmmword_217F4BC20;
  *(v144 + 16) = xmmword_217F4BC20;
  v146 = *(v141 + 2);
  v147 = MEMORY[0x277D84F90];
  v212 = v141;
  *&v214 = v143;
  if (v146)
  {
    v205 = v144;
    *&v225[0] = MEMORY[0x277D84F90];
    sub_217EA0D60(0, v146, 0);
    v147 = *&v225[0];
    v148 = v141 + 48;
    do
    {
      v149 = *(v148 - 1);
      v217 = *(v148 - 2);
      v150 = *(*v148 + 16);
      *&v225[0] = v147;
      v152 = *(v147 + 16);
      v151 = *(v147 + 24);

      if (v152 >= v151 >> 1)
      {
        sub_217EA0D60((v151 > 1), v152 + 1, 1);
        v147 = *&v225[0];
      }

      *(v147 + 16) = v152 + 1;
      v153 = (v147 + 24 * v152);
      v153[4] = v217;
      v153[5] = v149;
      v153[6] = v150;
      v148 += 24;
      --v146;
    }

    while (v146);
    v143 = v214;
    v145 = v205;
  }

  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF72A8, &qword_217F59298);
  v145[7] = v154;
  v155 = sub_217F2A568();
  v145[8] = v155;
  v145[4] = v147;
  v156 = sub_217F4AD54();
  sub_217F4AA44("Created channel clusters %{public}@", 35, 2, &dword_217E7B000, v203, v156, v145);

  v157 = swift_allocObject();
  *(v157 + 16) = v215;
  v158 = *(v143 + 2);
  v159 = MEMORY[0x277D84F90];
  if (v158)
  {
    v200 = v157;
    v202 = v155;
    v205 = v154;
    *&v225[0] = MEMORY[0x277D84F90];
    sub_217EA0D60(0, v158, 0);
    v159 = *&v225[0];
    v160 = v143 + 48;
    do
    {
      v161 = *(v160 - 1);
      v217 = *(v160 - 2);
      v162 = *(*v160 + 16);
      *&v225[0] = v159;
      v164 = *(v159 + 16);
      v163 = *(v159 + 24);

      if (v164 >= v163 >> 1)
      {
        sub_217EA0D60((v163 > 1), v164 + 1, 1);
        v159 = *&v225[0];
      }

      *(v159 + 16) = v164 + 1;
      v165 = (v159 + 24 * v164);
      v165[4] = v217;
      v165[5] = v161;
      v165[6] = v162;
      v160 += 24;
      --v158;
    }

    while (v158);
    v154 = v205;
    v155 = v202;
    v157 = v200;
  }

  *(v157 + 56) = v154;
  *(v157 + 64) = v155;
  *(v157 + 32) = v159;
  v166 = v157;
  v167 = sub_217F4AD54();
  v9 = v203;
  sub_217F4AA44("Created topic clusters %{public}@", 33, 2, &dword_217E7B000, v203, v167, v166);

  v225[0] = 0uLL;
  LOBYTE(v225[1]) = 2;
  ClusteringJournal.startedClustering(group:)(v225);
  v168 = swift_allocObject();
  *(v168 + 16) = v215;
  v169 = v228;
  v170 = *(v228 + 16);
  *(v168 + 56) = MEMORY[0x277D83B88];
  *(v168 + 64) = MEMORY[0x277D83C10];
  *(v168 + 32) = v170;
  sub_217F4AD54();
  sub_217F4AA44("Attempting to create MoreForYou with from %lu headlines", v200);

  v171 = *(v169 + 16);
  v172 = MEMORY[0x277D84F90];
  v217 = v169;
  if (v171)
  {
    v172 = sub_217E8E420(v171, 0);
    v173 = sub_217E96EF4(v225, v172 + 32, v171, v169);
    v174 = *&v225[0];

    sub_217E7F628(v174);
    if (v173 != v171)
    {
      __break(1u);
LABEL_131:
      sub_217F4B1C4();
      __break(1u);
LABEL_132:
      v199 = v217;
      goto LABEL_133;
    }
  }

  *&v225[0] = v172;
  v9 = v206;
  sub_217F1AA2C(v225);
  if (v9)
  {
    while (1)
    {
      v199 = v9;
LABEL_133:
      MEMORY[0x21CEAF510](v199);

      __break(1u);
    }
  }

  v175 = *&v225[0];
  v176 = *(&v239[60] + 1);
  v177 = *(&v239[63] + 1);
  v178 = *(&v239[66] + 1);
  v179 = *(&v239[69] + 1);
  v180 = *&v239[70];
  v206 = *&v239[73];
  v181 = *&v239[76];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF53D0, &qword_217F4CC40);
  v182 = swift_allocObject();
  *(v182 + 16) = xmmword_217F591E0;
  *(v182 + 40) = 0;
  *(v182 + 48) = 0;
  *(v182 + 32) = v177;
  *(v182 + 56) = 0;
  *(v182 + 64) = v178;
  *(v182 + 72) = v179;
  *(v182 + 80) = 0;
  *(v182 + 88) = 3;
  *(v182 + 104) = 0;
  *(v182 + 112) = 0;
  *(v182 + 96) = v176;
  *(v182 + 120) = 1;
  *(v182 + 136) = 0;
  *(v182 + 144) = 0;
  *(v182 + 128) = v180;
  *(v182 + 152) = 2;
  v183 = *&v239[84];
  v245 = v239[83];
  v246 = *&v239[84];
  *(v182 + 160) = v239[83];
  *(v182 + 176) = v183;
  *(v182 + 184) = 4;
  *(v182 + 192) = v207;
  *(v182 + 200) = 0;
  *(v182 + 208) = 0;
  *(v182 + 216) = 5;
  *(v182 + 224) = *&v239[89];
  *(v182 + 232) = 0;
  *(v182 + 240) = 0;
  *(v182 + 248) = 7;
  v225[2] = v239[81];
  v225[3] = v239[82];
  v225[0] = v239[79];
  v225[1] = v239[80];
  v230 = v239[79];
  v231 = v239[80];
  v232 = v239[81];
  v233 = v239[82];
  v184 = *&v239[57];

  sub_217F2B89C(&v245, v223, &qword_27CBF72B0, &qword_217F592A0);
  sub_217F2B89C(v225, v223, &qword_27CBF5C60, &qword_217F52080);
  sub_217F0778C(v175, v181, 0, v206, v182, &v230, v211, v184, &v224, v216, v210, v209, v208 & 1);
  v223[0] = v230;
  v223[1] = v231;
  v223[2] = v232;
  v223[3] = v233;
  sub_217EB2A44(v223);

  v185 = v224;

  v186 = *(v185 + 16);
  if (!v186)
  {
LABEL_118:

    v6 = MEMORY[0x277D84F90];
    goto LABEL_119;
  }

  v218 = MEMORY[0x277D84F90];
  sub_217EA0864(0, v186, 0);
  v6 = v218;
  v187 = (v185 + 40);
  do
  {
    v189 = *(v187 - 1);
    v188 = *v187;
    v218 = v6;
    v191 = *(v6 + 16);
    v190 = *(v6 + 24);

    if (v191 >= v190 >> 1)
    {
      sub_217EA0864((v190 > 1), v191 + 1, 1);
      v6 = v218;
    }

    *(v6 + 16) = v191 + 1;
    v192 = v6 + 16 * v191;
    *(v192 + 32) = v189;
    *(v192 + 40) = v188;
    v187 += 12;
    --v186;
  }

  while (v186);

LABEL_119:
  v9 = v201;
  v82 = v212;
  isUniquelyReferenced_nonNull_native = v214;
  v193 = v211;
  if (v211[OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode] != 2)
  {
    swift_beginAccess();
    if (*(v193 + 6))
    {
      v218 = *(v193 + 6);
      v219 = 0;
      v220 = 0;
      v221 = 0;
      v222 = 0;

      sub_217EB06FC(&v218);
      sub_217EB3F48(v218, v219, v220, v221, v222);
    }

    else
    {
LABEL_124:
      v195 = sub_217F4AD34();
      sub_217F4AA44("Failed to finish clustering, no events", 38, 2, &dword_217E7B000, v203, v195, MEMORY[0x277D84F90]);
    }
  }

  v196 = swift_allocObject();
  *(v196 + 16) = v215;
  v197 = *(v6 + 16);
  *(v196 + 56) = MEMORY[0x277D83B88];
  *(v196 + 64) = MEMORY[0x277D83C10];
  *(v196 + 32) = v197;
  sub_217F4AD54();
  sub_217F4AA44("Created MoreForYou with %lu headlines", v200);

  *v9 = v82;
  v9[1] = isUniquelyReferenced_nonNull_native;
  v9[2] = v6;
}

unint64_t sub_217F17190(uint64_t a1)
{
  sub_217F4ADD4();

  v2 = MEMORY[0x21CEAEBA0](a1, &type metadata for GroupableHeadline);
  MEMORY[0x21CEAEAC0](v2);

  return 0xD00000000000002BLL;
}

uint64_t sub_217F17218(_OWORD *a1, void *a2, uint64_t *a3)
{
  *v38 = *a1;
  *&v38[13] = *(a1 + 13);
  sub_217E98168(v38, v36);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *a2;
  *&v36[0] = *a2;
  *a2 = 0x8000000000000000;
  v8 = 256;
  if (!v38[25])
  {
    v8 = 0;
  }

  v9 = v8 | v38[24];
  v10 = 0x10000;
  if (!v38[26])
  {
    v10 = 0;
  }

  v11 = 0x1000000;
  if (!v38[27])
  {
    v11 = 0;
  }

  v12 = v9 | v10 | v11;
  v13 = 0x100000000;
  if (!v38[28])
  {
    v13 = 0;
  }

  v15 = sub_217E8E9D0(*v38, *&v38[8], v12 | v13, *&v38[16]);
  v16 = v7[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_35;
  }

  v3 = v14;
  if (v7[3] >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

LABEL_35:
    sub_217E8FA94();
    v7 = *&v36[0];
    goto LABEL_22;
  }

  sub_217E927B4(v18, isUniquelyReferenced_nonNull_native);
  v7 = *&v36[0];
  v19 = 256;
  if (!v38[25])
  {
    v19 = 0;
  }

  v20 = v19 | v38[24];
  v21 = 0x10000;
  if (!v38[26])
  {
    v21 = 0;
  }

  v22 = 0x1000000;
  if (!v38[27])
  {
    v22 = 0;
  }

  v23 = v20 | v21 | v22;
  v24 = 0x100000000;
  if (!v38[28])
  {
    v24 = 0;
  }

  v25 = sub_217E8E9D0(*v38, *&v38[8], v23 | v24, *&v38[16]);
  if ((v3 & 1) != (v26 & 1))
  {
    result = sub_217F4B1C4();
    __break(1u);
    return result;
  }

  v15 = v25;
LABEL_22:
  *a2 = v7;

  if (v3)
  {
    sub_217F23FA4(v38);
  }

  else
  {
    v27 = 256;
    if (!v38[25])
    {
      v27 = 0;
    }

    v28 = v27 | v38[24];
    v29 = 0x10000;
    if (!v38[26])
    {
      v29 = 0;
    }

    v30 = 0x1000000;
    if (!v38[27])
    {
      v30 = 0;
    }

    v31 = v28 | v29 | v30;
    v32 = 0x100000000;
    if (!v38[28])
    {
      v32 = 0;
    }

    sub_217F35600(v15, *v38, *&v38[8], v31 | v32, MEMORY[0x277D84FA0], *a2, *&v38[16]);
  }

  sub_217E98218(a3, v36);
  sub_217F19600(v36, a3);
  v34[2] = v36[2];
  v34[3] = v36[3];
  v35[0] = v37[0];
  *(v35 + 9) = *(v37 + 9);
  v34[0] = v36[0];
  v34[1] = v36[1];
  return sub_217E98274(v34);
}

uint64_t sub_217F174B8(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = floor(*(a2 + 952) * (*(*result + 16) + 1));
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v3 < 9.22337204e18)
  {
    v4 = 1 << *(v2 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v2 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    if (!v6)
    {
      goto LABEL_9;
    }

    do
    {
LABEL_7:
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(v2 + 56) + 40 * (v10 | (v8 << 6));
        if ((*(v11 + 16) & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_9;
        }
      }

      v14 = *v11;
      v13 = *(v11 + 8);
      v15 = *(v11 + 24);
      v16 = *(v11 + 32);

      result = swift_isUniquelyReferenced_nonNull_native();
      v22 = v14;
      if ((result & 1) == 0)
      {
        result = sub_217EA0D20(0, *(v9 + 16) + 1, 1);
      }

      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        result = sub_217EA0D20((v17 > 1), v18 + 1, 1);
        v19 = v18 + 1;
      }

      *(v9 + 16) = v19;
      v20 = v9 + 40 * v18;
      *(v20 + 32) = v22;
      *(v20 + 40) = v13;
      *(v20 + 48) = 0;
      *(v20 + 56) = v15;
      *(v20 + 64) = v16;
    }

    while (v6);
LABEL_9:
    while (1)
    {
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v12 >= v7)
      {

        v21 = *(v9 + 16);

        return v21 < v3;
      }

      v6 = *(v2 + 64 + 8 * v12);
      ++v8;
      if (v6)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_217F176C4(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = floor(*(a2 + 960) * (*(*result + 16) + 1));
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v3 < 9.22337204e18)
  {
    v4 = 1 << *(v2 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v2 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    if (!v6)
    {
      goto LABEL_9;
    }

    do
    {
LABEL_7:
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(v2 + 56) + 40 * (v10 | (v8 << 6));
        if (*(v11 + 16))
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_9;
        }
      }

      v13 = *(v11 + 8);
      v21 = *v11;
      v14 = *(v11 + 24);
      v15 = *(v11 + 32);

      result = swift_isUniquelyReferenced_nonNull_native();
      v22 = v14;
      if ((result & 1) == 0)
      {
        result = sub_217EA0D20(0, *(v9 + 16) + 1, 1);
      }

      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        result = sub_217EA0D20((v16 > 1), v17 + 1, 1);
        v18 = v17 + 1;
      }

      *(v9 + 16) = v18;
      v19 = v9 + 40 * v17;
      *(v19 + 32) = v21;
      *(v19 + 40) = v13;
      *(v19 + 48) = 1;
      *(v19 + 56) = v22;
      *(v19 + 64) = v15;
    }

    while (v6);
LABEL_9:
    while (1)
    {
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v12 >= v7)
      {

        v20 = *(v9 + 16);

        return v20 < v3;
      }

      v6 = *(v2 + 64 + 8 * v12);
      ++v8;
      if (v6)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_217F178D4(uint64_t a1, void *a2, uint64_t a3, char a4, char a5)
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0x6E697463656C6553, 0xEF206D6F72662067);
  v6 = *(a1 + 16);
  v7 = sub_217F4B104();
  MEMORY[0x21CEAEAC0](v7);

  result = MEMORY[0x21CEAEAC0](0xD000000000000017, 0x8000000217F60590);
  v9 = 0;
  v10 = a1 - 8;
  v11 = MEMORY[0x277D84F90];
LABEL_2:
  v12 = (v10 + 40 * v9);
  while (v6 != v9)
  {
    if (v9 >= v6)
    {
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_67;
    }

    v14 = *(v12 + 56);
    ++v9;
    v12 += 5;
    if ((v14 & 1) == 0)
    {
      v15 = *v12;
      v16 = v12[1];
      v17 = v12[3];
      v18 = v12[4];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_217EA0D20(0, *(v11 + 16) + 1, 1);
      }

      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_217EA0D20((v19 > 1), v20 + 1, 1);
      }

      *(v11 + 16) = v20 + 1;
      v21 = v11 + 40 * v20;
      *(v21 + 32) = v15;
      *(v21 + 40) = v16;
      *(v21 + 48) = 0;
      *(v21 + 56) = v17;
      *(v21 + 64) = v18;
      v9 = v13;
      goto LABEL_2;
    }
  }

  v22 = sub_217F4B104();
  MEMORY[0x21CEAEAC0](v22);

  result = MEMORY[0x21CEAEAC0](0xD000000000000014, 0x8000000217F605B0);
  v23 = 0;
  v24 = MEMORY[0x277D84F90];
LABEL_13:
  v25 = (v10 + 40 * v23);
  while (v6 != v23)
  {
    if (v23 >= v6)
    {
      goto LABEL_70;
    }

    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_71;
    }

    v27 = *(v25 + 56);
    ++v23;
    v25 += 5;
    if (v27)
    {
      v29 = *v25;
      v28 = v25[1];
      v30 = v25[3];
      v31 = v25[4];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_217EA0D20(0, *(v24 + 16) + 1, 1);
      }

      v33 = *(v24 + 16);
      v32 = *(v24 + 24);
      if (v33 >= v32 >> 1)
      {
        result = sub_217EA0D20((v32 > 1), v33 + 1, 1);
      }

      *(v24 + 16) = v33 + 1;
      v34 = v24 + 40 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v28;
      *(v34 + 48) = 1;
      *(v34 + 56) = v30;
      *(v34 + 64) = v31;
      v23 = v26;
      goto LABEL_13;
    }
  }

  v35 = sub_217F4B104();
  MEMORY[0x21CEAEAC0](v35);

  MEMORY[0x21CEAEAC0](0xD000000000000025, 0x8000000217F605D0);
  v36 = *a2;
  v37 = *a2 + 64;
  v38 = 1 << *(*a2 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(*a2 + 64);
  v41 = (v38 + 63) >> 6;

  v42 = 0;
  v43 = MEMORY[0x277D84F90];
  if (!v40)
  {
    goto LABEL_28;
  }

  do
  {
LABEL_26:
    while (1)
    {
      v44 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v45 = *(v36 + 56) + 40 * (v44 | (v42 << 6));
      if ((*(v45 + 16) & 1) == 0)
      {
        break;
      }

      if (!v40)
      {
        goto LABEL_28;
      }
    }

    v47 = *(v45 + 8);
    v76 = *v45;
    v48 = *(v45 + 24);
    v49 = *(v45 + 32);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_217EA0D20(0, *(v43 + 16) + 1, 1);
    }

    v51 = *(v43 + 16);
    v50 = *(v43 + 24);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      result = sub_217EA0D20((v50 > 1), v51 + 1, 1);
      v52 = v51 + 1;
    }

    *(v43 + 16) = v52;
    v53 = v43 + 40 * v51;
    *(v53 + 32) = v76;
    *(v53 + 40) = v47;
    *(v53 + 48) = 0;
    *(v53 + 56) = v48;
    *(v53 + 64) = v49;
  }

  while (v40);
LABEL_28:
  while (1)
  {
    v46 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v46 >= v41)
    {

      v54 = sub_217F4B104();
      MEMORY[0x21CEAEAC0](v54);

      MEMORY[0x21CEAEAC0](0xD000000000000014, 0x8000000217F605B0);
      v55 = *a2;
      v56 = *a2 + 64;
      v57 = 1 << *(*a2 + 32);
      v58 = -1;
      if (v57 < 64)
      {
        v58 = ~(-1 << v57);
      }

      v59 = v58 & *(*a2 + 64);
      v60 = (v57 + 63) >> 6;

      v61 = 0;
      v62 = MEMORY[0x277D84F90];
      if (!v59)
      {
        goto LABEL_43;
      }

      do
      {
LABEL_41:
        while (1)
        {
          v63 = __clz(__rbit64(v59));
          v59 &= v59 - 1;
          v64 = *(v55 + 56) + 40 * (v63 | (v61 << 6));
          if (*(v64 + 16))
          {
            break;
          }

          if (!v59)
          {
            goto LABEL_43;
          }
        }

        v77 = *v64;
        v78 = *(v64 + 8);
        v66 = *(v64 + 24);
        v67 = *(v64 + 32);

        v82 = v66;

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_217EA0D20(0, *(v62 + 16) + 1, 1);
        }

        v69 = *(v62 + 16);
        v68 = *(v62 + 24);
        if (v69 >= v68 >> 1)
        {
          result = sub_217EA0D20((v68 > 1), v69 + 1, 1);
        }

        *(v62 + 16) = v69 + 1;
        v70 = v62 + 40 * v69;
        *(v70 + 32) = v77;
        *(v70 + 40) = v78;
        *(v70 + 48) = 1;
        *(v70 + 56) = v82;
        *(v70 + 64) = v67;
      }

      while (v59);
LABEL_43:
      while (1)
      {
        v65 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          goto LABEL_69;
        }

        if (v65 >= v60)
        {

          v71 = sub_217F4B104();
          MEMORY[0x21CEAEAC0](v71);

          MEMORY[0x21CEAEAC0](0xD000000000000024, 0x8000000217F60600);
          sub_217F4ACB4();
          MEMORY[0x21CEAEAC0](0xD000000000000015, 0x8000000217F60630);
          sub_217F4ACB4();
          MEMORY[0x21CEAEAC0](0xD000000000000016, 0x8000000217F60650);
          if (a4)
          {
            v72 = 1702195828;
          }

          else
          {
            v72 = 0x65736C6166;
          }

          if (a4)
          {
            v73 = 0xE400000000000000;
          }

          else
          {
            v73 = 0xE500000000000000;
          }

          MEMORY[0x21CEAEAC0](v72, v73);

          MEMORY[0x21CEAEAC0](0xD000000000000014, 0x8000000217F60670);
          if (a5)
          {
            v74 = 1702195828;
          }

          else
          {
            v74 = 0x65736C6166;
          }

          if (a5)
          {
            v75 = 0xE400000000000000;
          }

          else
          {
            v75 = 0xE500000000000000;
          }

          MEMORY[0x21CEAEAC0](v74, v75);

          return 0;
        }

        v59 = *(v56 + 8 * v65);
        ++v61;
        if (v59)
        {
          v61 = v65;
          goto LABEL_41;
        }
      }
    }

    v40 = *(v37 + 8 * v46);
    ++v42;
    if (v40)
    {
      v42 = v46;
      goto LABEL_26;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t (*sub_217F180A0(uint64_t **a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = sub_217F1C5F8(v10, a3, a4, a5 & 0x101010101, a2);
  return sub_217F18148;
}

void sub_217F18148(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_217F18194(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memcpy(__dst, __src, 0x1B2uLL);
  if (sub_217F2B6CC(__dst) == 1)
  {
    if ((a4 & 0x100000000) != 0)
    {
      if ((a4 & 0x100) != 0)
      {
        memcpy(v19, (a5 + 1440), 0x1B2uLL);
        v10 = swift_allocObject();
        memcpy((v10 + 16), (a5 + 1440), 0x1B2uLL);
        sub_217F2B89C(v19, v17, &qword_27CBF5F98, &qword_217F52250);
        v11 = sub_217F2C1D4;
        v12 = sub_217F2B9B8;
      }

      else
      {
        memcpy(v19, a5, 0x1B2uLL);
        v10 = swift_allocObject();
        memcpy((v10 + 16), a5, 0x1B2uLL);
        sub_217F2B89C(v19, v17, &qword_27CBF5F80, &qword_217F52238);
        v11 = sub_217F2C1D4;
        v12 = sub_217F2C118;
      }
    }

    else
    {
      memcpy(v19, (a5 + 440), 0x1B2uLL);
      v10 = swift_allocObject();
      memcpy((v10 + 16), (a5 + 440), 0x1B2uLL);
      sub_217F2B89C(v19, v17, &qword_27CBF5F88, &qword_217F52240);
      v11 = sub_217F2C1D4;
      v12 = sub_217F2C11C;
    }

    v13 = v12;
  }

  else
  {
    v10 = swift_allocObject();
    memcpy((v10 + 16), __dst, 0x1B2uLL);
    v11 = sub_217F2C1D8;
    v13 = sub_217F2C120;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v10;
  sub_217F2B89C(__src, v17, &qword_27CBF7308, &qword_217F5A030);
  v15 = v11(a6);

  return v15;
}