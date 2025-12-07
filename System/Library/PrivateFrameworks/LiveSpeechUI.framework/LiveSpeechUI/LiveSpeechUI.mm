void *LiveSpeechPreferredLanguages()()
{
  v138 = sub_256021850();
  v128 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v137 = &v106 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_256021870();
  v139 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v135 = (&v106 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8251E0, &qword_256021AF0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v115 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v110 = &v106 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v134 = &v106 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v106 - v9;
  v122 = sub_256021810();
  v11 = *(v122 - 8);
  v12 = MEMORY[0x28223BE20](v122);
  v114 = (&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v109 = (&v106 - v15);
  MEMORY[0x28223BE20](v14);
  v17 = &v106 - v16;
  v18 = sub_256021830();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v121 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v123 = &v106 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v106 - v24;
  v26 = sub_2560217E0();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v112 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v113 = &v106 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v107 = &v106 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v108 = &v106 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v126 = &v106 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v106 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v133 = &v106 - v42;
  MEMORY[0x28223BE20](v41);
  v44 = &v106 - v43;
  sub_2560217F0();
  sub_256021820();
  v45 = *(v19 + 8);
  v120 = v18;
  v119 = v19 + 8;
  v118 = v45;
  v45(v25, v18);
  sub_256021800();
  v46 = *(v11 + 8);
  v117 = v11 + 8;
  v116 = v46;
  v46(v17, v122);
  v140 = *(v27 + 48);
  v141 = v27 + 48;
  if (v140(v10, 1, v26) != 1)
  {
    v132 = *(v27 + 32);
    v132(v44, v10, v26);
    v48 = v133;
    (*(v27 + 16))(v133, v44, v26);
    v47 = sub_2560214F4(0, 1, 1, MEMORY[0x277D84F90]);
    v50 = v47[2];
    v49 = v47[3];
    v51 = (v50 + 1);
    if (v50 >= v49 >> 1)
    {
      goto LABEL_91;
    }

    goto LABEL_4;
  }

  sub_2560212E4(v10);
  v47 = MEMORY[0x277D84F90];
LABEL_5:
  sub_2560218D0();
  v52 = MEMORY[0x259C56E70]();
  v53 = *MEMORY[0x277CE7910];
  swift_beginAccess();
  v54 = *&v52[v53];

  v55 = sub_2560218B0();
  v133 = *(v55 + 16);
  if (v133)
  {
    v56 = 0;
    v132 = v139[2];
    v57 = (*(v139 + 80) + 32) & ~*(v139 + 80);
    v111 = v55;
    v131 = v55 + v57;
    v139 += 2;
    v129 = v139[7];
    v130 = (v139 - 1);
    v58 = (v128 + 1);
    v128 = (v27 + 32);
    v124 = (v27 + 16);
    v125 = (v27 + 8);
    do
    {
      v59 = v135;
      v60 = v136;
      v132(v135, (v131 + v129 * v56), v136);
      v61 = v137;
      sub_256021860();
      (*v130)(v59, v60);
      v62 = v134;
      sub_256021840();
      (*v58)(v61, v138);
      if (v140(v62, 1, v26) == 1)
      {
        sub_2560212E4(v62);
      }

      else
      {
        v127 = *v128;
        (v127)(v40, v62, v26);
        v63 = 0;
        v64 = v47;
        v65 = v47[2];
        while (v65 != v63)
        {
          v66 = v63 + 1;
          sub_256021718();
          v67 = sub_256021880();
          v63 = v66;
          if (v67)
          {
            (*v125)(v40, v26);
            v47 = v64;
            goto LABEL_8;
          }
        }

        (*v124)(v126, v40, v26);
        v47 = v64;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_2560214F4(0, v64[2] + 1, 1, v64);
        }

        v68 = v127;
        v70 = v47[2];
        v69 = v47[3];
        if (v70 >= v69 >> 1)
        {
          v47 = sub_2560214F4((v69 > 1), v70 + 1, 1, v47);
        }

        (*(v27 + 8))(v40, v26);
        v47[2] = v70 + 1;
        (v68)(v47 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v70, v126, v26);
      }

LABEL_8:
      ++v56;
    }

    while (v56 != v133);
  }

  v71 = [objc_opt_self() sharedInputModeController];
  v50 = v123;
  if (v71)
  {
    v129 = v71;
    v72 = [v71 activeUserSelectableInputModes];
    if (v72)
    {
      v44 = v72;
      v51 = sub_2560218A0();

      v48 = sub_25602134C(v51);

      if (v48)
      {
        v40 = v48 & 0xFFFFFFFFFFFFFF8;
        if (v48 >> 62)
        {
          v73 = sub_256021940();
          if (v73)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v73 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v73)
          {
LABEL_24:
            v74 = 0;
            v136 = v73;
            v137 = (v48 & 0xC000000000000001);
            v130 = (v27 + 32);
            v131 = v48 + 32;
            v127 = (v27 + 16);
            v128 = (v27 + 8);
            v132 = (v48 & 0xFFFFFFFFFFFFFF8);
            v133 = v48;
            while (1)
            {
              if (v137)
              {
                v75 = v74;
                v76 = MEMORY[0x259C56E90](v74, v48);
                v77 = __OFADD__(v75, 1);
                v44 = (v75 + 1);
                if (v77)
                {
                  goto LABEL_88;
                }
              }

              else
              {
                v49 = *(v40 + 16);
                if (v74 >= v49)
                {
                  goto LABEL_89;
                }

                v78 = v74;
                v76 = *(v131 + 8 * v74);
                v77 = __OFADD__(v78, 1);
                v44 = (v78 + 1);
                if (v77)
                {
LABEL_88:
                  __break(1u);
LABEL_89:
                  __break(1u);
LABEL_90:
                  __break(1u);
LABEL_91:
                  v47 = sub_2560214F4((v49 > 1), v51, 1, v47);
LABEL_4:
                  (*(v27 + 8))(v44, v26);
                  v47[2] = v51;
                  v132(v47 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v50, v48, v26);
                  goto LABEL_5;
                }
              }

              v138 = v44;
              v139 = v76;
              v79 = [v76 primaryLanguage];
              if (!v79)
              {
                goto LABEL_51;
              }

              v80 = v79;
              v51 = sub_256021890();
              v44 = v81;

              v82 = v51 == 7107949 && v44 == 0xE300000000000000;
              if (!v82 && (sub_256021950() & 1) == 0 && (v51 != 0x696A6F6D65 || v44 != 0xE500000000000000) && (sub_256021950() & 1) == 0)
              {
                break;
              }

LABEL_26:
              v74 = v138;
              if (v138 == v136)
              {
                goto LABEL_93;
              }
            }

            sub_2560217D0();
            v83 = v109;
            sub_256021820();
            v44 = v110;
            v51 = v83;
            sub_256021800();
            v116(v83, v122);
            if (v140(v44, 1, v26) == 1)
            {
              v118(v50, v120);
              sub_2560212E4(v44);
            }

            else
            {
              v51 = *v130;
              v84 = v108;
              (*v130)(v108, v44, v26);
              if (sub_2560211C4(v84, v47))
              {
                (*v128)(v84, v26);
                v118(v50, v120);
              }

              else
              {
                (*v127)(v107, v84, v26);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v47 = sub_2560214F4(0, v47[2] + 1, 1, v47);
                }

                v86 = v47[2];
                v85 = v47[3];
                v44 = (v86 + 1);
                if (v86 >= v85 >> 1)
                {
                  v47 = sub_2560214F4((v85 > 1), v86 + 1, 1, v47);
                }

                (*(v27 + 8))(v108, v26);
                v118(v50, v120);
                v47[2] = v44;
                v51(v47 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v86, v107, v26);
              }
            }

LABEL_51:
            v87 = [v139 multilingualSet];
            if (v87)
            {
              v44 = v87;
              sub_2560216CC();
              v40 = sub_2560218A0();

              if (!(v40 >> 62))
              {
                goto LABEL_53;
              }
            }

            else
            {
              v40 = MEMORY[0x277D84F90];
              if (!(MEMORY[0x277D84F90] >> 62))
              {
LABEL_53:
                v49 = v40 & 0xFFFFFFFFFFFFFF8;
                v48 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v48)
                {
                  goto LABEL_54;
                }

LABEL_86:

                v50 = v123;
LABEL_87:
                v40 = v132;
                v48 = v133;
                goto LABEL_26;
              }
            }

            v48 = sub_256021940();
            if (v48)
            {
LABEL_54:
              if (v48 < 1)
              {
                goto LABEL_90;
              }

              v135 = v47;
              v88 = 0;
              v89 = v40 & 0xC000000000000001;
              v134 = (v40 & 0xC000000000000001);
              while (2)
              {
                if (v89)
                {
                  v90 = MEMORY[0x259C56E90](v88, v40);
                }

                else
                {
                  v90 = *(v40 + 8 * v88 + 32);
                }

                v44 = v90;
                v91 = [v90 primaryLanguage];
                if (v91)
                {
                  v92 = v91;
                  v93 = sub_256021890();
                  v51 = v94;

                  v95 = v93 == 7107949 && v51 == 0xE300000000000000;
                  if (v95 || (sub_256021950() & 1) != 0 || (v93 == 0x696A6F6D65 ? (v96 = v51 == 0xE500000000000000) : (v96 = 0), v96 || (sub_256021950() & 1) != 0))
                  {

                    goto LABEL_71;
                  }

                  v97 = v121;
                  sub_2560217D0();
                  v98 = v114;
                  sub_256021820();
                  v99 = v115;
                  v51 = v98;
                  sub_256021800();
                  v116(v98, v122);
                  if (v140(v99, 1, v26) == 1)
                  {
                    v118(v97, v120);

                    sub_2560212E4(v99);
                    goto LABEL_78;
                  }

                  v100 = *v130;
                  v51 = v113;
                  (*v130)(v113, v99, v26);
                  if (sub_2560211C4(v51, v135))
                  {

                    (*v128)(v51, v26);
                    v118(v121, v120);
LABEL_78:
                    v89 = v134;
                  }

                  else
                  {
                    (*v127)(v112, v51, v26);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v89 = v134;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v135 = sub_2560214F4(0, v135[2] + 1, 1, v135);
                    }

                    v103 = v135[2];
                    v102 = v135[3];
                    v51 = (v103 + 1);
                    if (v103 >= v102 >> 1)
                    {
                      v135 = sub_2560214F4((v102 > 1), v103 + 1, 1, v135);
                    }

                    (*(v27 + 8))(v113, v26);
                    v118(v121, v120);
                    v104 = v135;
                    v135[2] = v51;
                    v100(&v104[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v103], v112, v26);
                  }
                }

                else
                {
LABEL_71:
                }

                if (v48 == ++v88)
                {

                  v50 = v123;
                  v47 = v135;
                  goto LABEL_87;
                }

                continue;
              }
            }

            goto LABEL_86;
          }
        }

LABEL_93:
      }
    }
  }

  return v47;
}

BOOL sub_2560211C4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_2560217E0();
    ++v2;
    sub_256021718();
  }

  while ((sub_256021880() & 1) == 0);
  return v3 != v4;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2560212E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8251E0, &qword_256021AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25602134C(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_256021910();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_256021774(i, v5);
    sub_2560216CC();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_2560218F0();
    sub_256021920();
    sub_256021930();
    sub_256021900();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

Swift::String_optional __swiftcall LiveSpeechCurrentInputModeID()()
{
  v0 = [objc_opt_self() sharedInputModeController];
  if (!v0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v0;
  v3 = [v0 currentInputMode];

  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = [v3 identifier];
  if (!v4)
  {

LABEL_6:
    v0 = 0;
    v1 = 0;
    goto LABEL_8;
  }

  v5 = v4;
  v6 = sub_256021890();
  v8 = v7;

  v1 = v8;
  v0 = v6;
LABEL_8:
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

void *sub_2560214F4(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8251F8, &qword_256021AF8);
  v10 = *(sub_2560217E0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2560217E0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_2560216CC()
{
  result = qword_27F8251E8;
  if (!qword_27F8251E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8251E8);
  }

  return result;
}

unint64_t sub_256021718()
{
  result = qword_27F8251F0;
  if (!qword_27F8251F0)
  {
    sub_2560217E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8251F0);
  }

  return result;
}

uint64_t sub_256021774(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}