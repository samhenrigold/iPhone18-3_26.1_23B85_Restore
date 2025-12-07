uint64_t sub_2280DAE04()
{
  sub_227FCABF8(*(v0 + 248), type metadata accessor for SummarizationParameters);

  v1 = *(v0 + 8);

  return v1();
}

char *sub_2280DAF08(char *result)
{
  v1 = result;
  v2 = *(result + 2);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v9 = *(v1 + 2);
    if (v4 >= v9)
    {
      break;
    }

    if (v6 >= v9)
    {
      goto LABEL_14;
    }

    v11 = *&v1[v3 + 32];
    v10 = *&v1[v3 + 40];
    v13 = *&v1[i - 8];
    v12 = *&v1[i];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_2280DB13C(v1);
    }

    v14 = &v1[v3];
    *(v14 + 4) = v13;
    *(v14 + 5) = v12;

    if (v6 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[i];
    *(v8 - 1) = v11;
    *v8 = v10;

LABEL_5:
    ++v4;
    --v6;
    v3 += 16;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_2280DB020(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6)
{
  if (a1)
  {
    v16 = a1;
    [v16 range];
    v7 = sub_22813967C();
    if (v8)
    {
    }

    else
    {
      v9 = v7;
      v10 = *a6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a6 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_2281339CC(0, *(v10 + 2) + 1, 1, v10);
        *a6 = v10;
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      v14 = v16;
      if (v13 >= v12 >> 1)
      {
        *a6 = sub_2281339CC((v12 > 1), v13 + 1, 1, v10);
        v14 = v16;
      }

      v15 = *a6;
      *(v15 + 2) = v13 + 1;
      *&v15[8 * v13 + 32] = v9;
    }
  }
}

uint64_t sub_2280DB150(uint64_t a1, unint64_t a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  v3 = sub_22813927C();
  [v2 setString_];

  v4 = sub_2281396AC();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v11 = *v6;
      v6 += 2;
      v10 = v11;
      if (v11 >= 0x4000)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_228043AF4(0, *(v7 + 16) + 1, 1);
        }

        v9 = *(v7 + 16);
        v8 = *(v7 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_228043AF4((v8 > 1), v9 + 1, 1);
        }

        *(v7 + 16) = v9 + 1;
        *(v7 + 8 * v9 + 32) = v10;
      }

      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  return v7;
}

uint64_t sub_2280DB2D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2280DB390;

  return sub_2280D9370(a1, v4, v5, v7, v6);
}

uint64_t sub_2280DB390()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2280DB484(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ED08, &qword_228140BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2280DB4F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ED08, &qword_228140BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2280DB55C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarizationParameters(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static DateUtils.parseDateFromMessage(message:referenceDate:referenceTimeZone:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v131 = a4;
  v128 = a3;
  v138 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v104[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v114 = &v104[-v11];
  v12 = MEMORY[0x28223BE20](v10);
  v127 = &v104[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v113 = &v104[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v112 = &v104[-v17];
  MEMORY[0x28223BE20](v16);
  v119 = &v104[-v18];
  v19 = sub_228136F8C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v109 = &v104[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v111 = &v104[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v116 = &v104[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v108 = &v104[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v110 = &v104[-v30];
  v31 = MEMORY[0x28223BE20](v29);
  v115 = &v104[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v107 = &v104[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  v118 = &v104[-v36];
  MEMORY[0x28223BE20](v35);
  v126 = &v104[-v37];
  v38 = objc_opt_self();
  v39 = sub_22813927C();
  v40 = [v38 scanString_];

  sub_2280DC17C();
  v41 = sub_22813951C();

  v42 = *(v20 + 56);
  v129 = a5;
  v120 = v42;
  v121 = v20 + 56;
  v42(a5, 1, 1, v19);
  v43 = v41;
  if (v41 >> 62)
  {
    v44 = sub_22813990C();
    v43 = v41;
    if (v44)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v44 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v44)
    {
LABEL_3:
      if (v44 < 1)
      {
        __break(1u);
      }

      v45 = 0;
      v132 = (v20 + 32);
      v122 = (v20 + 8);
      v123 = v43 & 0xC000000000000001;
      v117 = (v20 + 48);
      v125 = v43;
      v106 = v9;
      v124 = v44;
      while (1)
      {
        if (v123)
        {
          v51 = MEMORY[0x22AAB1E40](v45);
        }

        else
        {
          v51 = *(v43 + 8 * v45 + 32);
        }

        v52 = v51;
        v53 = v127;
        v137 = 0;
        v54 = sub_228136F2C();
        v55 = sub_2281371CC();
        v136 = 0;
        v56 = [v52 dateFromReferenceDate:v54 referenceTimezone:v55 timezoneRef:&v136 allDayRef:&v137];

        v57 = v136;
        v130 = v136;
        if (!v56)
        {
          v66 = v136;
          goto LABEL_22;
        }

        v58 = v118;
        sub_228136F5C();
        v59 = v57;

        v60 = *v132;
        v61 = v126;
        (*v132)(v126, v58, v19);
        if (sub_228136F3C())
        {
          v62 = v129;
          v63 = v112;
          sub_2280DC238(v129, v112);
          v64 = (*v117)(v63, 1, v19);
          v65 = v119;
          if (v64 == 1)
          {
            sub_2280DC2A8(v62);
            sub_2280DC2A8(v63);
LABEL_20:
            (v60)(v65, v126, v19);
            v120(v65, 0, 1, v19);
            goto LABEL_21;
          }

          v67 = v107;
          v60();
          v68 = v126;
          v69 = sub_228136F3C();
          v70 = v62;
          v71 = v69;
          sub_2280DC2A8(v70);
          v72 = *v122;
          if ((v71 & 1) == 0)
          {
            v72(v67, v19);
            v62 = v129;
            v53 = v127;
            goto LABEL_20;
          }

          v72(v68, v19);
          (v60)(v65, v67, v19);
          v120(v65, 0, 1, v19);
          v62 = v129;
          v53 = v127;
        }

        else
        {
          (*v122)(v61, v19);
          v62 = v129;
          v65 = v119;
          sub_2280DC1C8(v129, v119);
        }

LABEL_21:
        sub_2280DC1C8(v65, v62);
LABEL_22:
        v73 = sub_228136F2C();
        v74 = sub_2281371CC();
        v135 = 0;
        v136 = 0;
        v133 = 0;
        v134 = 0;
        v75 = [v52 extractStartDate:&v136 startTimezone:&v135 endDate:&v134 endTimezone:&v133 allDayRef:&v137 referenceDate:v73 referenceTimezone:v74];

        v50 = v133;
        v48 = v134;
        v49 = v135;
        if (v75)
        {
          v47 = v136;
          if (v136)
          {
            sub_228136F5C();
            v76 = *v132;
            v77 = v115;
            (*v132)();
            v78 = v50;
            v79 = v48;
            v80 = v49;
            v81 = v47;
            if (sub_228136F3C())
            {
              v82 = v129;
              sub_2280DC238(v129, v53);
              if ((*v117)(v53, 1, v19) == 1)
              {
                sub_2280DC2A8(v82);
                sub_2280DC2A8(v53);
                goto LABEL_33;
              }

              v76();
              v89 = v115;
              v105 = sub_228136F3C();
              sub_2280DC2A8(v82);
              v90 = *v122;
              if (v105)
              {
                v90(v89, v19);
                v88 = v113;
                v91 = v113;
                v92 = &v139;
              }

              else
              {
                v90(v108, v19);
LABEL_33:
                v88 = v113;
                v91 = v113;
                v92 = &v141;
              }

              (v76)(v91, *(v92 - 32), v19);
              v120(v88, 0, 1, v19);
              v87 = v129;
            }

            else
            {
              (*v122)(v77, v19);
              v87 = v129;
              v88 = v113;
              sub_2280DC1C8(v129, v113);
            }

            sub_2280DC1C8(v88, v87);
            v86 = v132;
            if (v48)
            {
LABEL_36:
              sub_228136F5C();
              v93 = *v86;
              v94 = v116;
              (*v86)();
              if (sub_228136F3C())
              {
                v95 = v129;
                v96 = v106;
                sub_2280DC238(v129, v106);
                if ((*v117)(v96, 1, v19) == 1)
                {

                  sub_2280DC2A8(v95);
                  sub_2280DC2A8(v96);
                  goto LABEL_43;
                }

                v93();
                v99 = v116;
                v105 = sub_228136F3C();

                sub_2280DC2A8(v95);
                v100 = *v122;
                if (v105)
                {
                  v100(v99, v19);
                  v98 = v114;
                  v101 = v114;
                  v102 = &v140;
                }

                else
                {
                  v100(v109, v19);
LABEL_43:
                  v98 = v114;
                  v101 = v114;
                  v102 = &v142;
                }

                (v93)(v101, *(v102 - 32), v19);
                v120(v98, 0, 1, v19);
                v97 = v129;
              }

              else
              {

                (*v122)(v94, v19);
                v97 = v129;
                v98 = v114;
                sub_2280DC1C8(v129, v114);
              }

              sub_2280DC1C8(v98, v97);
              goto LABEL_7;
            }
          }

          else
          {
            v83 = v133;
            v84 = v48;
            v85 = v49;
            v86 = v132;
            if (v48)
            {
              goto LABEL_36;
            }
          }

          v48 = v49;
          v49 = v50;
          goto LABEL_6;
        }

        v46 = v133;
        v47 = v48;
        v48 = v49;
        v49 = v46;
LABEL_6:
        v50 = v52;
LABEL_7:
        ++v45;

        v43 = v125;
        if (v124 == v45)
        {
        }
      }
    }
  }
}

unint64_t sub_2280DC17C()
{
  result = qword_2813C4610;
  if (!qword_2813C4610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813C4610);
  }

  return result;
}

uint64_t sub_2280DC1C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2280DC238(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2280DC2A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for DateUtils(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DateUtils(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2280DC3FC(char *a1)
{
  v2 = sub_228136D8C();
  v78 = *(v2 - 8);
  v79 = v2;
  MEMORY[0x28223BE20](v2);
  v76 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2281371AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v74 - v9;
  v11 = sub_228136F8C();
  v84 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v75 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v74 = &v74 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v83 = &v74 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v74 - v18;
  v20 = sub_2281371BC();
  v81 = *(v20 - 8);
  v82 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22813714C();
  v77 = a1;
  sub_22813717C();
  v23 = *(v5 + 104);
  v23(v7, *MEMORY[0x277CC9968], v4);
  v80 = v19;
  sub_22813719C();
  v24 = v7;
  v25 = v84;
  (*(v5 + 8))(v24, v4);
  if ((*(v25 + 48))(v10, 1, v11) == 1)
  {
    v26 = v11;
    v77 = v22;
    sub_2280DC2A8(v10);
    if (qword_2813C49D8 != -1)
    {
      swift_once();
    }

    v27 = sub_22813882C();
    __swift_project_value_buffer(v27, qword_2813C8A08);
    v28 = v75;
    v29 = v80;
    (*(v25 + 16))(v75, v80, v11);
    v30 = sub_22813880C();
    v31 = sub_2281396DC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = v25;
      v34 = swift_slowAlloc();
      v85 = v34;
      *v32 = 136446210;
      sub_2280DCD38();
      v35 = sub_22813998C();
      v37 = v36;
      v38 = *(v33 + 8);
      v38(v28, v26);
      v39 = sub_227FCC340(v35, v37, &v85);

      *(v32 + 4) = v39;
      _os_log_impl(&dword_227FC3000, v30, v31, "Failed to find the next day of %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x22AAB28A0](v34, -1, -1);
      MEMORY[0x22AAB28A0](v32, -1, -1);

      v38(v29, v26);
    }

    else
    {

      v67 = *(v25 + 8);
      v67(v28, v11);
      v67(v29, v11);
    }
  }

  else
  {
    (*(v25 + 32))(v83, v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D81F070, &qword_228140BD0);
    v40 = *(v5 + 72);
    v41 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_22813B030;
    v43 = v42 + v41;
    v23(v43, *MEMORY[0x277CC9980], v4);
    v23((v43 + v40), *MEMORY[0x277CC99A0], v4);
    sub_228028EF8(v42);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v44 = v76;
    v45 = v83;
    sub_22813718C();

    v46 = sub_228136D6C();
    v47 = v22;
    v48 = v45;
    if ((v49 & 1) == 0)
    {
      v50 = v46;
      v51 = sub_228136D7C();
      if ((v52 & 1) == 0)
      {
        v72 = v51;
        (*(v78 + 8))(v44, v79);
        v73 = *(v84 + 8);
        v73(v45, v11);
        v73(v80, v11);
        (*(v81 + 8))(v47, v82);
        v70 = 0;
        v69 = COERCE_UNSIGNED_INT((v72 / 60.0) + v50);
        goto LABEL_16;
      }
    }

    if (qword_2813C49D8 != -1)
    {
      swift_once();
    }

    v53 = sub_22813882C();
    __swift_project_value_buffer(v53, qword_2813C8A08);
    v54 = v84;
    v55 = v74;
    (*(v84 + 16))(v74, v48, v11);
    v56 = sub_22813880C();
    v57 = sub_2281396DC();
    if (!os_log_type_enabled(v56, v57))
    {

      v68 = *(v54 + 8);
      v68(v55, v11);
      (*(v78 + 8))(v44, v79);
      v68(v48, v11);
      v68(v80, v11);
      (*(v81 + 8))(v47, v82);
      goto LABEL_15;
    }

    v58 = swift_slowAlloc();
    v77 = v47;
    v59 = v58;
    v60 = swift_slowAlloc();
    v85 = v60;
    *v59 = 136446210;
    sub_2280DCD38();
    v61 = sub_22813998C();
    v62 = v55;
    v64 = v63;
    v65 = *(v54 + 8);
    v65(v62, v11);
    v66 = sub_227FCC340(v61, v64, &v85);

    *(v59 + 4) = v66;
    _os_log_impl(&dword_227FC3000, v56, v57, "Failed to get the hours and minutes from %{public}s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x22AAB28A0](v60, -1, -1);
    MEMORY[0x22AAB28A0](v59, -1, -1);

    (*(v78 + 8))(v44, v79);
    v65(v83, v11);
    v65(v80, v11);
  }

  (*(v81 + 8))(v77, v82);
LABEL_15:
  v69 = 0;
  v70 = 1;
LABEL_16:
  LOBYTE(v85) = v70;
  return v69 | (v70 << 32);
}

unint64_t sub_2280DCD38()
{
  result = qword_27D81EF90;
  if (!qword_27D81EF90)
  {
    sub_228136F8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81EF90);
  }

  return result;
}

uint64_t sub_2280DCD90(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = (a3 + 32);
    do
    {
      v6 = *v4;
      v4 += 2;
      v5 = v6;
      if (a2)
      {
        if (a1)
        {
          if (a1 == 1)
          {
            if (v5 == 1)
            {
              return 1;
            }
          }

          else if (v5 == 2)
          {
            return 1;
          }
        }

        else if (!v5)
        {
          return 1;
        }
      }

      else if (v5 == a1)
      {
        return 1;
      }

      --v3;
    }

    while (v3);
  }

  return 0;
}

void *sub_2280DCDF0()
{
  result = sub_227FE5460(&unk_283B5B330);
  off_2813C6530 = result;
  return result;
}

void sub_2280DCE18(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v10 = 0;
LABEL_6:
    if (v7)
    {
      v11 = v10;
LABEL_11:
      if (*(a1 + 16))
      {
        v12 = *(a2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7))));
        v13 = *v12;
        v14 = *(v12 + 8);
        sub_228139AAC();
        sub_227FED188();
        sub_2281391EC();
        v15 = sub_228139AEC();
        v16 = -1 << *(a1 + 32);
        v17 = v15 & ~v16;
        if ((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          v7 &= v7 - 1;
          v18 = ~v16;
          do
          {
            v19 = *(*(a1 + 48) + 16 * v17);
            if (v14)
            {
              if (v13)
              {
                if (v13 == 1)
                {
                  if (v19 == 1)
                  {
                    v10 = v11;
                    goto LABEL_6;
                  }
                }

                else if (v19 == 2)
                {
                  v10 = v11;
                  goto LABEL_6;
                }
              }

              else if (!v19)
              {
                v10 = v11;
                goto LABEL_6;
              }
            }

            else if (v19 == v13)
            {
              v10 = v11;
              goto LABEL_6;
            }

            v17 = (v17 + 1) & v18;
          }

          while (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
        }
      }
    }

    else
    {
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v8)
        {

          return;
        }

        v7 = *(v4 + 8 * v11);
        ++v10;
        if (v7)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_2280DD00C(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = sub_22813805C();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v4 = sub_228137D2C();
  v2[23] = v4;
  v2[24] = *(v4 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280DD170, 0, 0);
}

uint64_t sub_2280DD170()
{
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_2280DD20C;
  v2 = *(v0 + 128);

  return sub_227FD5DB8(v2);
}

uint64_t sub_2280DD20C(uint64_t a1, char a2)
{
  v5 = *v3;
  *(v5 + 248) = a1;
  *(v5 + 256) = v2;

  if (v2)
  {
    v6 = sub_2280DD4F0;
  }

  else
  {
    *(v5 + 264) = a2;
    v6 = sub_2280DD334;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2280DD334()
{
  v1 = *(v0 + 264);
  if (v1 == 2)
  {
    v2 = *(v0 + 248);
    if (qword_2813C49E0[0] != -1)
    {
      swift_once();
    }

    v3 = sub_22813882C();
    __swift_project_value_buffer(v3, qword_2813C8A20);
    v4 = sub_22813880C();
    v5 = sub_2281396CC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67240448;
      *(v6 + 4) = v2 & 1;
      *(v6 + 8) = 1026;
      *(v6 + 10) = (v2 >> 8) & 1;
      _os_log_impl(&dword_227FC3000, v4, v5, "Factual Consistency Classification: %{BOOL,public}d,\ndidFallbackToDefaultThresholds: %{BOOL,public}d", v6, 0xEu);
      MEMORY[0x22AAB28A0](v6, -1, -1);
    }
  }

  v7 = *(v0 + 248);

  v8 = *(v0 + 8);

  return v8(v7, v1);
}

uint64_t sub_2280DD4F0()
{
  v109 = v0;
  v1 = *(v0 + 256);
  *(v0 + 112) = v1;
  v2 = (v0 + 112);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 256);
  if (v4)
  {
    v7 = *(v0 + 224);
    v6 = *(v0 + 232);
    v8 = *(v0 + 216);
    v9 = *(v0 + 184);
    v10 = *(v0 + 192);

    v11 = *(v10 + 32);
    v11(v7, v6, v9);
    v107 = *(v10 + 16);
    v107(v8, v7, v9);
    v12 = (*(v10 + 88))(v8, v9);
    v105 = v11;
    if (v12 == *MEMORY[0x277D29D38] || v12 == *MEMORY[0x277D29D30] || v12 == *MEMORY[0x277D29D10] || v12 == *MEMORY[0x277D29D18] || v12 == *MEMORY[0x277D29D48] || v12 == *MEMORY[0x277D29D08] || v12 == *MEMORY[0x277D29D20])
    {
      v104 = *(*(v0 + 192) + 8);
      v104(*(v0 + 216), *(v0 + 184));
      if (qword_2813C49E0[0] != -1)
      {
        swift_once();
      }

      v58 = *(v0 + 224);
      v59 = *(v0 + 208);
      v60 = *(v0 + 184);
      v61 = sub_22813882C();
      __swift_project_value_buffer(v61, qword_2813C8A20);
      v107(v59, v58, v60);
      v62 = sub_22813880C();
      v63 = sub_2281396DC();
      v64 = os_log_type_enabled(v62, v63);
      v65 = *(v0 + 208);
      v66 = *(v0 + 184);
      if (v64)
      {
        v102 = v62;
        v67 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *v67 = 138412290;
        sub_2280DE238(&qword_2813C4820, MEMORY[0x277D29D58], MEMORY[0x277D29D60]);
        swift_allocError();
        v107(v68, v65, v66);
        v69 = _swift_stdlib_bridgeErrorToNSError();
        v104(v65, v66);
        *(v67 + 4) = v69;
        *v99 = v69;
        _os_log_impl(&dword_227FC3000, v102, v63, "FCC request failed due to asset error: %@", v67, 0xCu);
        sub_2280DF494(v99, &qword_27D81E3B0, &qword_22813AA20);
        MEMORY[0x22AAB28A0](v99, -1, -1);
        MEMORY[0x22AAB28A0](v67, -1, -1);
      }

      else
      {

        v104(v65, v66);
      }

      v82 = *(v0 + 224);
      v83 = *(v0 + 184);
      sub_2280DE238(&qword_2813C4820, MEMORY[0x277D29D58], MEMORY[0x277D29D60]);
      v84 = swift_allocError();
      v105(v85, v82, v83);
      v86 = 0;
    }

    else
    {
      if (qword_2813C49E0[0] != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 224);
      v14 = *(v0 + 200);
      v15 = *(v0 + 184);
      v16 = sub_22813882C();
      __swift_project_value_buffer(v16, qword_2813C8A20);
      v107(v14, v13, v15);
      v17 = sub_22813880C();
      v18 = sub_2281396DC();
      v19 = os_log_type_enabled(v17, v18);
      v21 = *(v0 + 192);
      v20 = *(v0 + 200);
      v22 = *(v0 + 184);
      if (v19)
      {
        v23 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        *v23 = 138412290;
        sub_2280DE238(&qword_2813C4820, MEMORY[0x277D29D58], MEMORY[0x277D29D60]);
        swift_allocError();
        v107(v24, v20, v22);
        v25 = _swift_stdlib_bridgeErrorToNSError();
        v26 = v22;
        v27 = *(v21 + 8);
        v27(v20, v26);
        *(v23 + 4) = v25;
        *v100 = v25;
        _os_log_impl(&dword_227FC3000, v17, v18, "FCC request failed due to model manager error: %@", v23, 0xCu);
        sub_2280DF494(v100, &qword_27D81E3B0, &qword_22813AA20);
        MEMORY[0x22AAB28A0](v100, -1, -1);
        MEMORY[0x22AAB28A0](v23, -1, -1);
      }

      else
      {

        v90 = v22;
        v27 = *(v21 + 8);
        v27(v20, v90);
      }

      v92 = *(v0 + 216);
      v91 = *(v0 + 224);
      v93 = *(v0 + 184);
      sub_2280DE238(&qword_2813C4820, MEMORY[0x277D29D58], MEMORY[0x277D29D60]);
      v84 = swift_allocError();
      v105(v94, v91, v93);
      v27(v92, v93);
      v86 = 1;
    }

LABEL_35:

    v95 = *(v0 + 8);

    return v95(v84, v86);
  }

  v28 = (v0 + 120);

  *(v0 + 120) = v5;
  v29 = v5;
  if (swift_dynamicCast())
  {
    v30 = v0 + 16;
    v31 = *(v0 + 168);
    v32 = *(v0 + 176);
    v34 = *(v0 + 144);
    v33 = *(v0 + 152);

    v106 = *(v33 + 32);
    v106(v31, v32, v34);
    if (qword_2813C49E0[0] != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 160);
    v36 = *(v0 + 168);
    v38 = *(v0 + 144);
    v37 = *(v0 + 152);
    v39 = *(v0 + 128);
    v40 = sub_22813882C();
    __swift_project_value_buffer(v40, qword_2813C8A20);
    sub_2280DE1DC(v39, v30);
    v41 = *(v37 + 16);
    v41(v35, v36, v38);
    v42 = sub_22813880C();
    v43 = sub_2281396DC();
    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 152);
    v46 = *(v0 + 160);
    v47 = *(v0 + 144);
    if (v44)
    {
      v101 = v43;
      v48 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v108 = v103;
      *v48 = 136446466;
      v96 = v41;
      v50 = *(v0 + 96);
      v49 = *(v0 + 104);
      __swift_project_boxed_opaque_existential_1((v0 + 72), v50);
      v97 = v42;
      v51 = v50;
      v28 = (v0 + 120);
      v52 = (*(v49 + 16))(v51, v49);
      v54 = v53;
      sub_22805D8E4(v30);
      v55 = sub_227FCC340(v52, v54, &v108);

      *(v48 + 4) = v55;
      *(v48 + 12) = 2114;
      sub_2280DE238(&qword_27D81E6E0, MEMORY[0x277D71F10], MEMORY[0x277D71F18]);
      swift_allocError();
      v96(v56, v46, v47);
      v57 = _swift_stdlib_bridgeErrorToNSError();
      (*(v45 + 8))(v46, v47);
      *(v48 + 14) = v57;
      *v98 = v57;
      _os_log_impl(&dword_227FC3000, v97, v101, "PromptTemplateRenderError encountered for FCC request: %{public}s, error: %{public}@", v48, 0x16u);
      sub_2280DF494(v98, &qword_27D81E3B0, &qword_22813AA20);
      MEMORY[0x22AAB28A0](v98, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm_2(v103);
      MEMORY[0x22AAB28A0](v103, -1, -1);
      MEMORY[0x22AAB28A0](v48, -1, -1);
    }

    else
    {

      (*(v45 + 8))(v46, v47);
      sub_22805D8E4(v30);
    }

    v87 = *(v0 + 168);
    v88 = *(v0 + 144);
    sub_2280DE238(&qword_27D81E6E0, MEMORY[0x277D71F10], MEMORY[0x277D71F18]);
    v84 = swift_allocError();
    v106(v89, v87, v88);
    v86 = 0;
    v2 = v28;
    goto LABEL_35;
  }

  if (qword_2813C49E0[0] != -1)
  {
    swift_once();
  }

  v70 = *(v0 + 256);
  v71 = sub_22813882C();
  __swift_project_value_buffer(v71, qword_2813C8A20);
  v72 = v70;
  v73 = sub_22813880C();
  v74 = sub_2281396DC();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = *(v0 + 256);
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v76 = 138412290;
    v78 = v75;
    v79 = _swift_stdlib_bridgeErrorToNSError();
    *(v76 + 4) = v79;
    *v77 = v79;
    _os_log_impl(&dword_227FC3000, v73, v74, "FCC request failed due to unknown error: %@", v76, 0xCu);
    sub_2280DF494(v77, &qword_27D81E3B0, &qword_22813AA20);
    MEMORY[0x22AAB28A0](v77, -1, -1);
    MEMORY[0x22AAB28A0](v76, -1, -1);
  }

  swift_willThrow();

  v80 = *(v0 + 8);

  return v80();
}

uint64_t sub_2280DE180()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2280DE238(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2280DE280(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v84 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A0, &unk_22813C6D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v90 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v87 = &v84 - v8;
  v92 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  v88 = *(v92 - 8);
  v9 = MEMORY[0x28223BE20](v92);
  v89 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v86 = &v84 - v11;
  v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v93 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A8, &unk_22813C6E0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v84 - v19;
  v91 = *a3;
  v21 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 28);
  v85 = a2;
  sub_2280DF42C(a2 + v21, v20, &qword_27D81E9A8, &unk_22813C6E0);
  v22 = *(v13 + 48);
  LODWORD(a3) = v22(v20, 1, v12);
  sub_2280DF494(v20, &qword_27D81E9A8, &unk_22813C6E0);
  if (a3 == 1)
  {
    LODWORD(v92) = 0;
    v23 = 0;
LABEL_37:
    v73 = objc_opt_self();

    if (qword_2813C4620 != -1)
    {
      swift_once();
    }

    if (byte_2813C4629 == 1)
    {
      if (qword_27D81E2A0 != -1)
      {
        swift_once();
      }

      v74 = &off_27D81EDB0;
    }

    else
    {
      if (qword_2813C76F0 != -1)
      {
        swift_once();
      }

      v74 = &qword_2813C76F8;
    }

    v75 = *(*v74 + 880);
    v76 = *(*v74 + 888);
    v77 = *(*v74 + 2208);

    if (qword_2813C4630 != -1)
    {
      swift_once();
    }

    if (byte_2813C4638 == 1)
    {
      v76(v94, v77);

      v75 = LOBYTE(v94[0]);
    }

    else
    {
    }

    if (v75 != 2)
    {
      if (v75)
      {
        v78 = v84[3];
        v79 = v84[4];
        __swift_project_boxed_opaque_existential_1(v84, v78);
        v23 = sub_2280A0FF0(v78, v79) ^ 1;
      }

      else
      {
        v23 = 0;
      }
    }

    return v92 | v23 & 1;
  }

  sub_2280DF42C(v85 + v21, v18, &qword_27D81E9A8, &unk_22813C6E0);
  if (v22(v18, 1, v12) == 1)
  {
    v24 = v93;
    sub_228137D6C();
    v25 = v88;
    (*(v88 + 56))(v24 + *(v12 + 20), 1, 1, v92);
    v26 = v22(v18, 1, v12);
    v27 = v89;
    v28 = v87;
    if (v26 != 1)
    {
      sub_2280DF494(v18, &qword_27D81E9A8, &unk_22813C6E0);
    }
  }

  else
  {
    v24 = v93;
    sub_2280DF5B8(v18, v93, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
    v25 = v88;
    v27 = v89;
    v28 = v87;
  }

  v29 = *(v12 + 20);
  sub_2280DF42C(v24 + v29, v28, &qword_27D81E9A0, &unk_22813C6D0);
  v30 = *(v25 + 48);
  v31 = v92;
  v32 = v30(v28, 1, v92);
  v33 = MEMORY[0x277D84F90];
  if (v32 == 1)
  {
    v34 = v86;
    *v86 = 0;
    *(v34 + 1) = 0;
    v34[16] = 1;
    *(v34 + 3) = v33;
    *(v34 + 4) = v33;
    sub_228137D6C();
    if (v30(v28, 1, v31) != 1)
    {
      sub_2280DF494(v28, &qword_27D81E9A0, &unk_22813C6D0);
    }
  }

  else
  {
    v34 = v86;
    sub_2280DF5B8(v28, v86, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  }

  v35 = v34;
  v36 = *(v34 + 4);

  sub_2280DF558(v35, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  v37 = v90;
  sub_2280DF42C(v93 + v29, v90, &qword_27D81E9A0, &unk_22813C6D0);
  if (v30(v37, 1, v31) == 1)
  {
    *v27 = 0;
    *(v27 + 8) = 0;
    *(v27 + 16) = 1;
    *(v27 + 24) = v33;
    *(v27 + 32) = v33;
    sub_228137D6C();
    v38 = v30(v37, 1, v31);
    v39 = v91;
    if (v38 != 1)
    {
      sub_2280DF494(v37, &qword_27D81E9A0, &unk_22813C6D0);
    }
  }

  else
  {
    sub_2280DF5B8(v37, v27, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
    v39 = v91;
  }

  v40 = *(v27 + 24);

  sub_2280DF558(v27, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);

  v42 = sub_227FED110(v41);

  v44 = sub_227FED110(v43);

  sub_2280DCE18(v44, v42);
  v46 = v45;

  if (v46)
  {
    if (qword_2813C6528 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v47 = off_2813C6530;
    if (*(off_2813C6530 + 2) && (v48 = sub_22808CFAC(v39), (v49 & 1) != 0))
    {
      v50 = v47[7] + 16 * v48;
      v51 = *v50;
      v52 = *(v50 + 8);
      swift_endAccess();
      v23 = sub_2280DCD90(v51, v52, v40);
    }

    else
    {
      swift_endAccess();
      v23 = 0;
    }

    swift_beginAccess();
    v66 = off_2813C6530;
    if (*(off_2813C6530 + 2) && (v67 = sub_22808CFAC(v39), (v68 & 1) != 0))
    {
      v69 = v66[7] + 16 * v67;
      v70 = *v69;
      v71 = *(v69 + 8);
      swift_endAccess();
      LOBYTE(v70) = sub_2280DCD90(v70, v71, v36);

      if (v70)
      {
        v72 = 256;
      }

      else
      {
        v72 = 0;
      }

      LODWORD(v92) = v72;
    }

    else
    {
      swift_endAccess();

      LODWORD(v92) = 0;
    }

    sub_2280DF558(v93, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
    goto LABEL_37;
  }

  if (qword_2813C49E0[0] != -1)
  {
    swift_once();
  }

  v53 = sub_22813882C();
  __swift_project_value_buffer(v53, qword_2813C8A20);
  sub_2280DF4F4(v84, v94);
  v54 = sub_22813880C();
  v55 = sub_2281396DC();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v97 = v57;
    *v56 = 136446466;
    v59 = v95;
    v58 = v96;
    __swift_project_boxed_opaque_existential_1(v94, v95);
    v60 = (*(*(v58 + 8) + 8))(v59);
    v62 = v61;
    __swift_destroy_boxed_opaque_existential_0Tm_2(v94);
    v63 = sub_227FCC340(v60, v62, &v97);

    *(v56 + 4) = v63;
    *(v56 + 12) = 2082;
    if (v39 <= 1)
    {
      if (v39)
      {
        v64 = 0xE700000000000000;
        v65 = 0x656E694C706F74;
      }

      else
      {
        v64 = 0xE500000000000000;
        v65 = 0x6369706F74;
      }
    }

    else if (v39 == 2)
    {
      v64 = 0xE800000000000000;
      v65 = 0x736973706F6E7973;
    }

    else if (v39 == 3)
    {
      v64 = 0xEE0073747065636ELL;
      v65 = 0x6F436C6175736976;
    }

    else
    {
      v64 = 0xED0000656E694C70;
      v65 = 0x6F546C6175736976;
    }

    v81 = v93;
    v82 = sub_227FCC340(v65, v64, &v97);

    *(v56 + 14) = v82;
    _os_log_impl(&dword_227FC3000, v54, v55, "Invalid configuration for Factual Consistency Classifier for usecase: %{public}s, style: %{public}s.", v56, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v57, -1, -1);
    MEMORY[0x22AAB28A0](v56, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm_2(v94);
    v81 = v93;
  }

  sub_227FE4988();
  swift_allocError();
  *v83 = 5;
  swift_willThrow();
  return sub_2280DF558(v81, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
}

uint64_t sub_2280DEE74(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v7 = sub_22813882C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a3;
  v12 = sub_22801ED18();
  if (v12 == 2)
  {
    v39[3] = &type metadata for FeatureFlag;
    v39[4] = sub_2280DF38C();
    v13 = sub_2281371FC();
    __swift_destroy_boxed_opaque_existential_0Tm_2(v39);
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v12 & 1) == 0)
  {
    return 0;
  }

  LOBYTE(v39[0]) = v11;
  result = sub_2280DE280(a1, a2, v39);
  if (!v3)
  {
    if (result)
    {
      v15 = BYTE1(result);

      if (qword_2813C4620 != -1)
      {
        swift_once();
      }

      v16 = a1[3];
      v17 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v16);
      RequestInfo.sessionInfo.getter(v16, v17, v39);
      type metadata accessor for FactualConsistencyClassifier();
      memset(v37, 0, sizeof(v37));
      v38 = 0;
      v18 = swift_allocObject();
      sub_2280DF4F4(v39, v36);
      sub_2280DF42C(v37, v35, &qword_27D81E348, &qword_22813A7F0);
      type metadata accessor for GMSFactualConsistencyClassifierModelEngine(0);
      swift_allocObject();
      sub_227FD52A8(v36, v35);
      v34 = v33;
      sub_2280DF494(v37, &qword_27D81E348, &qword_22813A7F0);
      __swift_destroy_boxed_opaque_existential_0Tm_2(v39);
      result = v18;
      *(v18 + 24) = v34;
      *(v18 + 16) = v15 & 1;
    }

    else
    {
      if (qword_2813C49E0[0] != -1)
      {
        swift_once();
      }

      v19 = __swift_project_value_buffer(v7, qword_2813C8A20);
      if (qword_2813C49C8 != -1)
      {
        swift_once();
      }

      if ((byte_2813C49D0 & 1) == 0)
      {
        if (qword_2813C4988 != -1)
        {
          swift_once();
        }

        v19 = __swift_project_value_buffer(v7, qword_2813C4990);
      }

      (*(v8 + 16))(v10, v19, v7);
      v20 = sub_22813880C();
      v21 = sub_2281396BC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v39[0] = v40;
        v23 = 0xE500000000000000;
        v24 = 0x6369706F74;
        *v22 = 136446210;
        v25 = 0xE800000000000000;
        v26 = 0x736973706F6E7973;
        v27 = 0xEE0073747065636ELL;
        v28 = 0x6F436C6175736976;
        if (v11 != 3)
        {
          v28 = 0x6F546C6175736976;
          v27 = 0xED0000656E694C70;
        }

        if (v11 != 2)
        {
          v26 = v28;
          v25 = v27;
        }

        if (v11)
        {
          v24 = 0x656E694C706F74;
          v23 = 0xE700000000000000;
        }

        if (v11 <= 1)
        {
          v29 = v24;
        }

        else
        {
          v29 = v26;
        }

        if (v11 <= 1)
        {
          v30 = v23;
        }

        else
        {
          v30 = v25;
        }

        v31 = sub_227FCC340(v29, v30, v39);

        *(v22 + 4) = v31;
        _os_log_impl(&dword_227FC3000, v20, v21, "Factual consistency classifier didn't run because it is not enabled for style %{public}s.", v22, 0xCu);
        v32 = v40;
        __swift_destroy_boxed_opaque_existential_0Tm_2(v40);
        MEMORY[0x22AAB28A0](v32, -1, -1);
        MEMORY[0x22AAB28A0](v22, -1, -1);
      }

      (*(v8 + 8))(v10, v7);
      return 0;
    }
  }

  return result;
}

unint64_t sub_2280DF38C()
{
  result = qword_2813C8090;
  if (!qword_2813C8090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C8090);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_2(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2280DF42C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2280DF494(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2280DF4F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2280DF558(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2280DF5B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2280DF620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2280DF668(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2280DF6B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2280DF708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2280DF764(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2280DF7AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2280DF810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2280DF870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2280DF8E4()
{
  v1 = *v0;
  sub_228139AAC();
  MEMORY[0x22AAB2060](v1);
  return sub_228139AEC();
}

uint64_t sub_2280DF958(uint64_t a1)
{
  v2 = *v1;
  sub_228139AAC();
  MEMORY[0x22AAB2060](v2);
  return sub_228139AEC();
}

uint64_t sub_2280DF99C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2280DF9D4(void *a1, void *a2)
{
  sub_227FE77E0(a1, v18);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_227FE77E0(a2, v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v5 = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v17);
  if (DynamicType == v5)
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    v9 = (*(v8 + 24))(v7, v8);
    v11 = v10;
    v12 = a2[3];
    v13 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v12);
    if (v9 == (*(v13 + 24))(v12, v13) && v11 == v14)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_2281399BC();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_2280DFB60()
{
  sub_228139AAC();
  MEMORY[0x22AAB2060](*(v0 + 40));
  return sub_228139AEC();
}

uint64_t sub_2280DFBAC(uint64_t a1)
{
  sub_228139AAC();
  sub_2280DFB34();
  return sub_228139AEC();
}

uint64_t getEnumTagSinglePayload for ErrorContextPropertyCodingFormat(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ErrorContextPropertyCodingFormat(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2280DFD70()
{
  result = qword_27D81F178;
  if (!qword_27D81F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81F178);
  }

  return result;
}

uint64_t sub_2280DFDC4(void *a1)
{
  sub_22813988C();
  MEMORY[0x22AAB1970](0xD000000000000014, 0x80000002281441C0);
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  MEMORY[0x22AAB1970](v4);

  MEMORY[0x22AAB1970](0xD000000000000015, 0x80000002281443F0);
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v7 = (*(*(v5 + 8) + 8))(v6);
  MEMORY[0x22AAB1970](v7);

  MEMORY[0x22AAB1970](0xD00000000000001FLL, 0x8000000228144410);
  v9 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v10 = (*(*(v8 + 8) + 16))(v9);
  MEMORY[0x22AAB1970](v10);

  MEMORY[0x22AAB1970](0xD00000000000001BLL, 0x8000000228144430);
  v12 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v15 = (*(*(v11 + 8) + 24))(v12);
  v13 = sub_22813998C();
  MEMORY[0x22AAB1970](v13);

  MEMORY[0x22AAB1970](0xD000000000000015, 0x8000000228146590);
  return HIDWORD(v15);
}

uint64_t sub_2280DFFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31[3] = a3;
  v31[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  sub_228004954(v31, v30);
  sub_228004954(v31, v29);
  sub_228004954(v31, v28);
  sub_228004954(v31, v27);
  sub_22810A6C8();
  sub_22810A6D0();
  v8 = sub_22813880C();
  v9 = sub_2281396BC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136447234;
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    v12 = (*(a4 + 16))(a3, a4);
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1(v30);
    v15 = sub_227FCC340(v12, v14, &v26);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    v16 = *(a4 + 8);
    v17 = v16[1](a3, v16);
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1(v29);
    v20 = sub_227FCC340(v17, v19, &v26);

    *(v10 + 14) = v20;
    *(v10 + 22) = 2082;
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    v21 = v16[2](a3, v16);
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1(v28);
    v24 = sub_227FCC340(v21, v23, &v26);

    *(v10 + 24) = v24;
    *(v10 + 32) = 1026;
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    LODWORD(v24) = v16[3](a3, v16);
    __swift_destroy_boxed_opaque_existential_1(v27);
    *(v10 + 34) = v24;
    *(v10 + 38) = 1026;
    *(v10 + 40) = qos_class_self();
    _os_log_impl(&dword_227FC3000, v8, v9, "Received request [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d, QoS: 0x%{public}x]", v10, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v11, -1, -1);
    MEMORY[0x22AAB28A0](v10, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v27);

    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_2280E0308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31[3] = a3;
  v31[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  sub_228004954(v31, v30);
  sub_228004954(v31, v29);
  sub_228004954(v31, v28);
  sub_228004954(v31, v27);
  v8 = sub_22813880C();
  v9 = sub_2281396BC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136446978;
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    v12 = (*(a4 + 16))(a3, a4);
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1(v30);
    v15 = sub_227FCC340(v12, v14, &v26);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    v16 = *(a4 + 8);
    v17 = v16[1](a3, v16);
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1(v29);
    v20 = sub_227FCC340(v17, v19, &v26);

    *(v10 + 14) = v20;
    *(v10 + 22) = 2082;
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    v21 = v16[2](a3, v16);
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1(v28);
    v24 = sub_227FCC340(v21, v23, &v26);

    *(v10 + 24) = v24;
    *(v10 + 32) = 1026;
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    LODWORD(v24) = v16[3](a3, v16);
    __swift_destroy_boxed_opaque_existential_1(v27);
    *(v10 + 34) = v24;
    _os_log_impl(&dword_227FC3000, v8, v9, "Successfully handled [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d]", v10, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v11, -1, -1);
    MEMORY[0x22AAB28A0](v10, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v27);

    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_2280E0610(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v39[3] = a4;
  v39[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a2, a4);
  sub_228004954(v39, v38);
  sub_228004954(v39, v37);
  sub_228004954(v39, v36);
  sub_228004954(v39, v35);
  v10 = a3;
  v11 = sub_22813880C();
  v12 = sub_2281396DC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34 = v14;
    *v13 = 136447234;
    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    v15 = (*(a5 + 16))(a4, a5);
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1(v38);
    v18 = sub_227FCC340(v15, v17, &v34);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    __swift_project_boxed_opaque_existential_1(v37, v37[3]);
    v19 = *(a5 + 8);
    v20 = v19[1](a4, v19);
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1(v37);
    v23 = sub_227FCC340(v20, v22, &v34);

    *(v13 + 14) = v23;
    *(v13 + 22) = 2082;
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    v24 = v19[2](a4, v19);
    v26 = v25;
    __swift_destroy_boxed_opaque_existential_1(v36);
    v27 = sub_227FCC340(v24, v26, &v34);

    *(v13 + 24) = v27;
    *(v13 + 32) = 1026;
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    LODWORD(v27) = v19[3](a4, v19);
    __swift_destroy_boxed_opaque_existential_1(v35);
    *(v13 + 34) = v27;
    *(v13 + 38) = 2082;
    swift_getErrorValue();
    v28 = Error.loggingDescription.getter(v32, v33);
    v30 = sub_227FCC340(v28, v29, &v34);

    *(v13 + 40) = v30;
    _os_log_impl(&dword_227FC3000, v11, v12, "Request failed [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d] with error: %{public}s", v13, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v14, -1, -1);
    MEMORY[0x22AAB28A0](v13, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v35);

    __swift_destroy_boxed_opaque_existential_1(v38);
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.disallowedWordCandidates.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig(0) + 24);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig(0) + 24);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray.variants.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray(0) + 20);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray(0) + 20);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray(0);
  return sub_228137D6C();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig(0);
  return sub_228137D6C();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_228137F4C(), !v4))
  {
    if (!*(*(v3 + 8) + 16) || (type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray(0), sub_227FC755C(&qword_2813C5030, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray), result = sub_228137F7C(), !v4))
    {
      type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig(0);
      return sub_228137D5C();
    }
  }

  return result;
}

uint64_t static Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (sub_228037C98(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig(0);
  sub_228137D7C();
  sub_227FC755C(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22813926C() & 1;
}

uint64_t sub_2280E0FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2280E1050(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2280E1104(uint64_t a1, uint64_t a2)
{
  v4 = sub_227FC755C(&qword_27D81F1B8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280E1180(uint64_t a1)
{
  v2 = sub_227FC755C(qword_2813C4F90, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280E11EC(uint64_t a1, uint64_t a2)
{
  sub_227FC755C(qword_2813C4F90, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig);

  return sub_228137EDC();
}

uint64_t sub_2280E1268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_228037C98(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  sub_228137D7C();
  sub_227FC755C(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22813926C() & 1;
}

uint64_t sub_2280E1320()
{
  result = MEMORY[0x22AAB1970](0x72724164726F572ELL, 0xEA00000000007961);
  qword_27D81F180 = 0xD000000000000039;
  *algn_27D81F188 = 0x8000000228148530;
  return result;
}

uint64_t static Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray.protoMessageName.getter()
{
  if (qword_27D81E2A8 != -1)
  {
    swift_once();
  }

  v0 = qword_27D81F180;

  return v0;
}

uint64_t sub_2280E13F8()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5040);
  __swift_project_value_buffer(v0, qword_2813C5040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22813A4B0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "variants";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_228137F9C();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_228137FAC();
}

uint64_t sub_2280E1588@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_228137FBC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_228137DCC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_228137E5C();
    }
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_228137F5C(), !v4))
  {
    type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray(0);
    return sub_228137D5C();
  }

  return result;
}

uint64_t static Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_228037F4C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray(0);
  sub_228137D7C();
  sub_227FC755C(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22813926C() & 1;
}

uint64_t sub_2280E180C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_228139AAC();
  a1(0);
  sub_227FC755C(a2, a3, a4);
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_2280E18C0()
{
  if (qword_27D81E2A8 != -1)
  {
    swift_once();
  }

  v0 = qword_27D81F180;

  return v0;
}

uint64_t sub_2280E1928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2280E199C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2280E1A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_227FC755C(&qword_27D81F1B0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280E1B08(uint64_t a1)
{
  v2 = sub_227FC755C(&qword_2813C5030, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280E1B74(uint64_t a1, uint64_t a2)
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_2280E1BCC(uint64_t a1, uint64_t a2)
{
  sub_227FC755C(&qword_2813C5030, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray);

  return sub_228137EDC();
}

uint64_t sub_2280E1C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_2280E1E94(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_228037F4C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_228137D7C();
  sub_227FC755C(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22813926C() & 1;
}

void sub_2280E1F64(uint64_t a1)
{
  sub_2280E1FF8(319);
  if (v1 <= 0x3F)
  {
    sub_228137D7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2280E1FF8(uint64_t a1)
{
  if (!qword_2813C46A0)
  {
    type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray(255);
    v1 = sub_22813956C();
    if (!v2)
    {
      atomic_store(v1, &qword_2813C46A0);
    }
  }
}

void sub_2280E2078(uint64_t a1)
{
  sub_227FFD494();
  if (v1 <= 0x3F)
  {
    sub_228137D7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t SKTextMessageThread.preprocess(sharedSessionData:)(uint64_t a1)
{
  v2[17] = a1;
  v3 = sub_22813716C();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v4 = sub_228136CDC();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB50, &qword_22813DAA0);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v5 = sub_228138E6C();
  v2[26] = v5;
  v2[27] = *(v5 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v6 = sub_228138AAC();
  v2[31] = v6;
  v2[32] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *v1;
  v2[33] = v7;
  v2[34] = v8;

  return MEMORY[0x2822009F8](sub_2280E2360, 0, 0);
}

uint64_t sub_2280E2360()
{
  v212 = v1;
  v3 = v1;
  v4 = v1[34];
  v184 = *(v4 + 16);
  if (!v184)
  {
    v114 = swift_allocObject();
    *(v114 + 16) = 10;
    *(v114 + 24) = 0;
    *(v114 + 32) = 0;
    v115 = sub_227FF96D4(0, 0xD000000000000085, 0x80000002281485A0, 18, sub_2280E4FBC, v114);
    sub_227FDB3CC();
    swift_allocError();
    *v116 = 10;
    *(v116 + 8) = v115;
    swift_willThrow();
    goto LABEL_117;
  }

  v180 = 0;
  v181 = 0;
  v182 = 0;
  v5 = 0;
  v6 = v1[32];
  v7 = MEMORY[0x277D84F90];
  v1[12] = MEMORY[0x277D84F90];
  v187 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v204 = (v1[27] + 8);
  v197 = (v1[22] + 8);
  v202 = v1[27];
  v188 = v6;
  v186 = (v6 + 8);
  v195 = v1[24];
  v179 = v1[17];
  v196 = *MEMORY[0x277D4B3A8];
  v191 = *MEMORY[0x277D4B3A0];
  v185 = *MEMORY[0x277D4B3B0];
  v8 = v7;
  v9 = v7;
  v199 = v1;
  v183 = v4;
  do
  {
    if (v5 >= *(v4 + 16))
    {
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

    v189 = v5;
    v190 = v7;
    v10 = v3[30];
    v11 = v3[26];
    (*(v188 + 16))(v3[33], v187 + *(v188 + 72) * v5, v3[31]);
    sub_228138A7C();
    v12 = sub_228045C1C();
    v14 = v13;
    v201 = *v204;
    (*v204)(v10, v11);
    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v17 = sub_2280A88EC(v15, v16);
    v19 = v18;

    v20 = HIBYTE(v19) & 0xF;
    v192 = v19;
    v193 = v17;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (!v20)
    {
      v21 = objc_opt_self();

      if (qword_2813C4620 != -1)
      {
        swift_once();
      }

      if (byte_2813C4629 == 1)
      {
        v22 = &off_27D81EDB0;
        if (qword_27D81E2A0 != -1)
        {
          swift_once();
          v22 = &off_27D81EDB0;
        }
      }

      else
      {
        v22 = &qword_2813C76F8;
        if (qword_2813C76F0 != -1)
        {
          swift_once();
          v22 = &qword_2813C76F8;
        }
      }

      v23 = *(*v22 + 1648);
      v24 = *(*v22 + 1656);
      v25 = *(*v22 + 2208);

      if (qword_2813C4630 != -1)
      {
        swift_once();
      }

      if (byte_2813C4638 == 1)
      {
        v24(v210, v25);

        v19 = v192;
        if ((v210[0] & 1) == 0)
        {
          goto LABEL_120;
        }
      }

      else
      {

        v19 = v192;
        if (!v23)
        {
LABEL_120:
          v119 = v3[33];
          v120 = v3[31];

          v121 = swift_allocObject();
          v122 = 12;
          *(v121 + 16) = 12;
          *(v121 + 24) = 0;
          *(v121 + 32) = 0;
          v123 = sub_2280E4FB8;
          v124 = 38;
          goto LABEL_122;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2281338C0(0, *(v8 + 2) + 1, 1, v8);
    }

    v27 = *(v8 + 2);
    v26 = *(v8 + 3);
    v7 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      v8 = sub_2281338C0((v26 > 1), v27 + 1, 1, v8);
    }

    v194 = v8;
    *(v8 + 2) = v7;
    v28 = &v8[16 * v27];
    *(v28 + 4) = v193;
    *(v28 + 5) = v19;
    v29 = *(sub_2281389EC() + 16);

    if (v29)
    {
      goto LABEL_44;
    }

    v30 = objc_opt_self();

    if (qword_2813C4620 != -1)
    {
      swift_once();
    }

    if (byte_2813C4629 == 1)
    {
      v31 = &off_27D81EDB0;
      if (qword_27D81E2A0 != -1)
      {
        swift_once();
        v31 = &off_27D81EDB0;
      }
    }

    else
    {
      v31 = &qword_2813C76F8;
      if (qword_2813C76F0 != -1)
      {
        swift_once();
        v31 = &qword_2813C76F8;
      }
    }

    v7 = *v31;
    v32 = *(*v31 + 1648);
    v33 = *(*v31 + 1656);
    v34 = *(*v31 + 2208);

    if (qword_2813C4630 != -1)
    {
      swift_once();
    }

    if (byte_2813C4638 != 1)
    {

      if (v32)
      {
        goto LABEL_44;
      }

LABEL_121:
      v119 = v3[33];
      v120 = v3[31];

      v121 = swift_allocObject();
      v122 = 11;
      *(v121 + 16) = 11;
      *(v121 + 24) = 0;
      *(v121 + 32) = 0;
      v123 = sub_2280E4FB4;
      v124 = 44;
LABEL_122:
      v125 = sub_227FF96D4(0, 0xD000000000000085, 0x80000002281485A0, v124, v123, v121);
      sub_227FDB3CC();
      swift_allocError();
      *v126 = v122;
      *(v126 + 8) = v125;
      swift_willThrow();
      (*v186)(v119, v120);
LABEL_117:

      v117 = v3[1];

      return v117();
    }

    v33(v210, v34);

    if ((v210[0] & 1) == 0)
    {
      goto LABEL_121;
    }

LABEL_44:
    v0 = v3[33];
    v35 = sub_2281389EC();
    v2 = v35;
    v200 = *(v35 + 16);
    if (v200)
    {
      v36 = 0;
      v37 = MEMORY[0x277D84F90];
      v198 = v35;
      do
      {
        if (v36 >= *(v2 + 16))
        {
          __break(1u);
          goto LABEL_139;
        }

        v206 = v37;
        (*(v202 + 16))(v3[29], v2 + ((*(v202 + 80) + 32) & ~*(v202 + 80)) + *(v202 + 72) * v36, v3[26]);
        v38 = sub_228138E5C();
        if (v39)
        {
          v40 = v38;
          v41 = v39;
          v42 = HIBYTE(v39) & 0xF;
          if ((v39 & 0x2000000000000000) == 0)
          {
            v42 = v38 & 0xFFFFFFFFFFFFLL;
          }

          if (v42)
          {
            goto LABEL_61;
          }
        }

        v43 = v3[25];
        sub_228138E2C();
        v44 = sub_228138E3C();
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(v43, 1, v44) == 1)
        {
          goto LABEL_53;
        }

        v46 = v3[24];
        sub_228045760(v3[25], v46);
        v47 = (*(v45 + 88))(v46, v44);
        if (v47 == v196 || v47 == v191)
        {
          v48 = v3[24];
        }

        else
        {
          v48 = v3[24];
          if (v47 != v185)
          {
            (*(v45 + 8))(v3[24], v44);
LABEL_53:
            v40 = 0;
            v41 = 0xE000000000000000;
            goto LABEL_58;
          }
        }

        (*(v45 + 96))(v48, v44);
        v40 = *v48;
        v41 = *(v195 + 8);
LABEL_58:
        sub_2280BB0A0(v3[25]);
        v49 = HIBYTE(v41) & 0xF;
        if ((v41 & 0x2000000000000000) == 0)
        {
          v49 = v40 & 0xFFFFFFFFFFFFLL;
        }

        if (!v49)
        {
          v107 = v3[33];
          v108 = v3[31];
          v109 = v3[29];
          v110 = v3[26];

          v201(v109, v110);

          v111 = swift_allocObject();
          *(v111 + 16) = 11;
          *(v111 + 24) = 0;
          *(v111 + 32) = 0;
          v112 = sub_227FF96D4(0, 0xD000000000000085, 0x80000002281485A0, 49, sub_2280E4E6C, v111);
          sub_227FDB3CC();
          swift_allocError();
          *v113 = 11;
          *(v113 + 8) = v112;
          swift_willThrow();
          (*v186)(v107, v108);
          goto LABEL_117;
        }

LABEL_61:
        v201(v3[29], v3[26]);
        v50 = sub_22813936C();
        v205 = v9;
        if (v50)
        {
          v51 = v50;
          v210[0] = MEMORY[0x277D84F90];
          sub_228043D00(0, v50 & ~(v50 >> 63), 0);
          if (v51 < 0)
          {
            __break(1u);
            goto LABEL_158;
          }

          v52 = v210[0];
          do
          {
            v53 = sub_22813945C();
            v55 = v54;
            if (sub_2281036C8(v53, v54))
            {

              v55 = 0xE100000000000000;
              v53 = 32;
            }

            v210[0] = v52;
            v57 = *(v52 + 16);
            v56 = *(v52 + 24);
            if (v57 >= v56 >> 1)
            {
              sub_228043D00((v56 > 1), v57 + 1, 1);
              v52 = v210[0];
            }

            *(v52 + 16) = v57 + 1;
            v58 = v52 + 16 * v57;
            *(v58 + 32) = v53;
            *(v58 + 40) = v55;
            sub_22813937C();
            --v51;
          }

          while (v51);
        }

        else
        {
          v52 = MEMORY[0x277D84F90];
        }

        v3 = v199;
        v59 = v199[23];
        v60 = v199[21];
        v199[13] = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF18, &qword_228141340);
        sub_2280E4E78(&qword_2813C4688, &qword_27D81EF18, &qword_228141340, MEMORY[0x277D83970]);
        v199[10] = sub_22813946C();
        v199[11] = v61;
        sub_228136C8C();
        sub_227FDB420();
        v62 = sub_2281397AC();
        v64 = v63;
        (*v197)(v59, v60);

        v65 = HIBYTE(v64) & 0xF;
        if ((v64 & 0x2000000000000000) == 0)
        {
          v65 = v62 & 0xFFFFFFFFFFFFLL;
        }

        if (v65)
        {
          v66 = v62;
        }

        else
        {
          v66 = v40;
        }

        if (v65)
        {
          v0 = v64;
        }

        else
        {
          v0 = v41;
        }

        v37 = v206;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_2281338C0(0, *(v206 + 2) + 1, 1, v206);
        }

        v9 = v205;
        v68 = *(v37 + 2);
        v67 = *(v37 + 3);
        v2 = v198;
        if (v68 >= v67 >> 1)
        {
          v37 = sub_2281338C0((v67 > 1), v68 + 1, 1, v37);
        }

        *(v37 + 2) = v68 + 1;
        v69 = &v37[16 * v68];
        *(v69 + 4) = v66;
        *(v69 + 5) = v0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2281338C0(0, *(v205 + 2) + 1, 1, v205);
        }

        v71 = *(v9 + 2);
        v70 = *(v9 + 3);
        v7 = v71 + 1;
        if (v71 >= v70 >> 1)
        {
          v9 = sub_2281338C0((v70 > 1), v71 + 1, 1, v9);
        }

        ++v36;
        *(v9 + 2) = v7;
        v72 = &v9[16 * v71];
        *(v72 + 4) = v66;
        *(v72 + 5) = v0;
      }

      while (v36 != v200);
    }

    v73 = sub_2281389EC();
    sub_228138A7C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v73 = sub_228133B70(0, v73[2] + 1, 1, v73);
    }

    v8 = v194;
    v75 = v73[2];
    v74 = v73[3];
    if (v75 >= v74 >> 1)
    {
      v73 = sub_228133B70((v74 > 1), v75 + 1, 1, v73);
    }

    v76 = v3[28];
    v77 = v3[26];
    v73[2] = v75 + 1;
    (*(v202 + 32))(v73 + ((*(v202 + 80) + 32) & ~*(v202 + 80)) + *(v202 + 72) * v75, v76, v77);

    v78 = sub_228138A6C();
    if (v79)
    {
      v0 = v79;
    }

    else
    {
      v78 = 0;
      v0 = 0xE000000000000000;
    }

    v80 = sub_2280A8A4C(v78, v0);

    if (v80)
    {
      (*v186)(v3[33], v3[31]);

      v7 = v190;
    }

    else
    {
      v81 = sub_228138A6C();
      if (v82)
      {
        v83 = v82;
      }

      else
      {
        v81 = 0;
        v83 = 0xE000000000000000;
      }

      v207 = *(v179 + 208);
      v84 = sub_2280A7954(v81, v83, v179 + 160, v207);
      v86 = v85;

      v87 = sub_2280A8BD4(v84, v86);
      v89 = v88;
      v90 = v87;

      v91 = sub_2281389FC();
      v92 = sub_228042774(v91, v193, v192);
      v94 = v93;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22813B030;
      *(inited + 32) = v90;
      *(inited + 40) = v89;
      *(inited + 48) = v92;
      *(inited + 56) = v94;

      sub_227FED308(inited);
      v2 = v90;
      v96 = sub_2280C0A78(v193, v192, v90, v89, v92, v94);
      v97 = v96;
      v7 = v98;
      if (v207)
      {
        v99 = v96;
        v100 = *(sub_228138A8C() + 16);

        v101 = v100 != 0;
        KeyPath = swift_getKeyPath("H\vnU");
        os_unfair_lock_lock((v207 + 16));
        v211 = MEMORY[0x277D839B0];
        LOBYTE(v210[0]) = v101;

        sub_2280449FC(v210, KeyPath, (v207 + 24));
        v97 = v99;
        os_unfair_lock_unlock((v207 + 16));
      }

      v0 = sub_22813936C();

      if (__OFADD__(v182, v0))
      {
        goto LABEL_183;
      }

      v182 += v0;
      v0 = sub_22813936C();

      if (__OFADD__(v181, v0))
      {
        goto LABEL_184;
      }

      v181 += v0;
      v0 = sub_22813936C();

      if (__OFADD__(v180, v0))
      {
        goto LABEL_185;
      }

      v2 = v97;
      v103 = v7;
      v180 += v0;
      v7 = v190;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2281338C0(0, *(v190 + 2) + 1, 1, v190);
      }

      v3 = v199;
      v8 = v194;
      v105 = *(v7 + 16);
      v104 = *(v7 + 24);
      v0 = v105 + 1;
      if (v105 >= v104 >> 1)
      {
        v7 = sub_2281338C0((v104 > 1), v105 + 1, 1, v7);
      }

      (*v186)(v199[33], v199[31]);
      *(v7 + 16) = v0;
      v106 = (v7 + 16 * v105);
      *(v106 + 4) = v2;
      *(v106 + 5) = v103;
    }

    v5 = v189 + 1;
    v3[35] = v7;
    v4 = v183;
  }

  while (v189 + 1 != v184);
  v0 = v3[12];
  sub_2280A8554(v0, (v179 + 160));
  v127 = *(v9 + 2);
  v128 = *(v8 + 2);
  v129 = __OFADD__(v127, v128);
  v130 = v127 + v128;
  if (v129)
  {
LABEL_189:
    __break(1u);
LABEL_190:
    swift_once();
    goto LABEL_160;
  }

  v131 = v130 & ~(v130 >> 63);

  v37 = MEMORY[0x277D84F90];
  v210[0] = sub_2281338C0(0, v131, 0, MEMORY[0x277D84F90]);
  v0 = v210;
  sub_227FED428(v8);
  sub_227FED308(v9);
  v132 = *(v210[0] + 16);
  if (v132)
  {
    v7 = 0;
    v133 = v210[0] + 40;
    v203 = v210[0] + 40;
LABEL_126:
    v134 = (v133 + 16 * v7);
    v135 = v7;
    while (v135 < v132)
    {
      v7 = v135 + 1;
      if (__OFADD__(v135, 1))
      {
        goto LABEL_188;
      }

      v137 = *(v134 - 1);
      v136 = *v134;
      v138 = sub_2281392FC();
      v2 = v139;

      v0 = sub_2280BD990(v210, v138, v2);

      if (v0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v209 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v0 = &v209;
          sub_228043AD4(0, *(v37 + 2) + 1, 1);
          v37 = v209;
        }

        v133 = v203;
        v2 = *(v37 + 2);
        v141 = *(v37 + 3);
        if (v2 >= v141 >> 1)
        {
          v0 = &v209;
          sub_228043AD4((v141 > 1), v2 + 1, 1);
          v37 = v209;
        }

        *(v37 + 2) = v2 + 1;
        v142 = &v37[16 * v2];
        *(v142 + 4) = v137;
        *(v142 + 5) = v136;
        if (v7 != v132)
        {
          goto LABEL_126;
        }

        goto LABEL_139;
      }

      ++v135;
      v134 += 2;
      if (v7 == v132)
      {
        goto LABEL_139;
      }
    }

    goto LABEL_187;
  }

LABEL_139:

  v143 = 0;
  v2 = *(v37 + 2);
  v144 = MEMORY[0x277D84F90];
LABEL_140:
  v145 = &v37[16 * v143 + 40];
  while (v2 != v143)
  {
    if (v143 >= *(v37 + 2))
    {
      goto LABEL_186;
    }

    v147 = *(v145 - 1);
    v146 = *v145;
    v145 += 16;
    ++v143;
    v148 = HIBYTE(v146) & 0xF;
    if ((v146 & 0x2000000000000000) == 0)
    {
      v148 = v147 & 0xFFFFFFFFFFFFLL;
    }

    if (v148)
    {

      v149 = swift_isUniquelyReferenced_nonNull_native();
      v210[0] = v144;
      if ((v149 & 1) == 0)
      {
        v0 = v210;
        sub_228043AD4(0, *(v144 + 16) + 1, 1);
        v144 = v210[0];
      }

      v7 = *(v144 + 16);
      v150 = *(v144 + 24);
      if (v7 >= v150 >> 1)
      {
        v0 = v210;
        sub_228043AD4((v150 > 1), v7 + 1, 1);
        v144 = v210[0];
      }

      *(v144 + 16) = v7 + 1;
      v151 = v144 + 16 * v7;
      *(v151 + 32) = v147;
      *(v151 + 40) = v146;
      goto LABEL_140;
    }
  }

  if (*(v144 + 16) >= 6uLL)
  {
    sub_2280C0964(v144, v144 + 32, 0, 0xBuLL);
    v153 = v152;

    v144 = v153;
  }

  v199[14] = v144;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
  sub_2280E4E78(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80, MEMORY[0x277D83958]);
  v154 = sub_22813925C();
  v156 = v155;

  v157 = HIBYTE(v156) & 0xF;
  if ((v156 & 0x2000000000000000) == 0)
  {
    v157 = v154 & 0xFFFFFFFFFFFFLL;
  }

  if (v157)
  {
    v210[0] = 0;
    v210[1] = 0xE000000000000000;
    sub_22813988C();

    strcpy(v210, "Participants: ");
    HIBYTE(v210[1]) = -18;
    MEMORY[0x22AAB1970](v154, v156);

    MEMORY[0x22AAB1970](10, 0xE100000000000000);
    v7 = v210[0];
    v2 = v210[1];
  }

  else
  {
LABEL_158:

    v7 = 0;
    v2 = 0xE000000000000000;
  }

  v0 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    goto LABEL_190;
  }

LABEL_160:
  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v158 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v158 = &qword_2813C76F8;
  }

  v159 = *(*v158 + 680);
  v160 = *(*v158 + 688);
  v161 = *(*v158 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v160(v210, v161);

    v159 = v210[0];
  }

  else
  {
  }

  if (v159)
  {
    if (qword_2813C8758 != -1)
    {
      swift_once();
    }

    v162 = v199[19];
    v163 = v199[20];
    v164 = v199[18];
    sub_228139B6C();
    v165 = swift_task_alloc();
    *(v165 + 16) = v163;
    v166 = sub_2280B866C(sub_2280E4EC0, v165, v159);

    (*(v162 + 8))(v163, v164);
    if (v166)
    {

      v7 = 0;
      v2 = 0xE000000000000000;
    }
  }

  v199[36] = v7;
  v199[37] = v2;
  v167 = *(v179 + 208);
  if (v167)
  {
    v168 = swift_getKeyPath(byte_228141348);
    os_unfair_lock_lock((v167 + 16));
    v169 = MEMORY[0x277D84A28];
    v211 = MEMORY[0x277D84A28];
    v210[0] = v182;

    sub_2280449E4(v210, v168, (v167 + 24));
    os_unfair_lock_unlock((v167 + 16));

    v170 = swift_getKeyPath(byte_228141370);
    os_unfair_lock_lock((v167 + 16));
    v211 = v169;
    v210[0] = v181;

    sub_2280449E4(v210, v170, (v167 + 24));
    os_unfair_lock_unlock((v167 + 16));

    v171 = swift_getKeyPath(byte_228141398);
    os_unfair_lock_lock((v167 + 16));
    v211 = v169;
    v210[0] = v180;

    sub_2280449E4(v210, v171, (v167 + 24));
    os_unfair_lock_unlock((v167 + 16));

    v172 = sub_22813936C();
    v173 = swift_getKeyPath("h\vnU");
    os_unfair_lock_lock((v167 + 16));
    v211 = v169;
    v210[0] = v172;

    sub_2280449E4(v210, v173, (v167 + 24));
    os_unfair_lock_unlock((v167 + 16));
  }

  v174 = v199[17];
  v175 = v174[3];
  v176 = v174[4];
  __swift_project_boxed_opaque_existential_1(v174, v175);
  v177 = *(v176 + 8);
  v208 = (*(v177 + 16) + **(v177 + 16));
  v178 = swift_task_alloc();
  v199[38] = v178;
  *v178 = v199;
  v178[1] = sub_2280E3F6C;

  return v208(v7, v2, v175, v177);
}

uint64_t sub_2280E3F6C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v4 = sub_2280E4358;
  }

  else
  {
    v4 = sub_2280E4080;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2280E4080()
{
  v1 = v0[17];
  v0[15] = *(v0[35] + 16) + 1;
  v2 = sub_22813998C();
  MEMORY[0x22AAB1970](v2);

  MEMORY[0x22AAB1970](2618, 0xE200000000000000);
  v0[41] = 0xE900000000000023;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(v4 + 8);
  v8 = (*(v5 + 16) + **(v5 + 16));
  v6 = swift_task_alloc();
  v0[42] = v6;
  *v6 = v0;
  v6[1] = sub_2280E4230;

  return v8(0x206567617373654DLL, 0xE900000000000023, v3, v5);
}

uint64_t sub_2280E4230(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v5 = sub_2280E4640;
  }

  else
  {
    *(v4 + 352) = a1;
    v5 = sub_2280E4434;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280E4358()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280E4434()
{
  v1 = v0[44];
  v2 = v0[35];

  v4 = *(v2 + 16);
  v5 = v1 * v4;
  if ((v1 * v4) >> 64 != (v1 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v0[39];
  v7 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = v0[17];
  v9 = swift_task_alloc();
  v0[45] = v9;
  *v9 = v0;
  v9[1] = sub_2280E4518;
  v10 = v0[35];

  return sub_2280D8D74(v10, v8 + 160, v7);
}

uint64_t sub_2280E4518(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {

    v4 = sub_2280E4960;
  }

  else
  {
    v4 = sub_2280E4728;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2280E4640()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280E4728()
{
  result = v0[46];
  v3 = v0[36];
  v2 = v0[37];
  v17 = v3;
  v16 = *(result + 16);
  if (v16)
  {
    v4 = 0;
    v5 = (result + 40);
    while (v4 < *(result + 16))
    {
      v6 = v0[35];
      v8 = *(v5 - 1);
      v7 = *v5;
      v9 = v4 + 1;
      v0[16] = v4 + 1;
      v10 = result;

      v11 = sub_22813998C();
      MEMORY[0x22AAB1970](v11);

      MEMORY[0x22AAB1970](2618, 0xE200000000000000);
      MEMORY[0x22AAB1970](v8, v7);

      v12 = *(v6 + 16) - 1;
      if (v4 >= v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = 10;
      }

      if (v4 >= v12)
      {
        v14 = 0xE000000000000000;
      }

      else
      {
        v14 = 0xE100000000000000;
      }

      MEMORY[0x22AAB1970](v13, v14);

      MEMORY[0x22AAB1970](0x206567617373654DLL, 0xE900000000000023);

      result = v10;
      v5 += 2;
      ++v4;
      if (v9 == v16)
      {
        v3 = v17;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v15 = v0[1];

    return v15(v3, v2);
  }

  return result;
}

uint64_t sub_2280E4960()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SKTextMessageThread.preprocessForLanguageCheck()()
{
  v30 = sub_228138AAC();
  MEMORY[0x28223BE20](v30);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*v0 + 16);
  if (v5)
  {
    v7 = *(v2 + 16);
    v6 = v2 + 16;
    v8 = *v0 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v28 = *(v6 + 56);
    v29 = v7;
    v26 = v1;
    v27 = (v6 - 8);
    v9 = MEMORY[0x277D84F90];
    do
    {
      v11 = v30;
      v12 = v6;
      v29(v4, v8, v30);
      v13 = sub_228138A6C();
      v15 = v14;
      (*v27)(v4, v11);
      if (v15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2281338C0(0, *(v9 + 2) + 1, 1, v9);
        }

        v17 = *(v9 + 2);
        v16 = *(v9 + 3);
        if (v17 >= v16 >> 1)
        {
          v9 = sub_2281338C0((v16 > 1), v17 + 1, 1, v9);
        }

        *(v9 + 2) = v17 + 1;
        v10 = &v9[16 * v17];
        *(v10 + 4) = v13;
        *(v10 + 5) = v15;
      }

      v8 += v28;
      --v5;
      v6 = v12;
    }

    while (v5);
    v18 = sub_228045C24();
    v20 = v19;
  }

  else
  {
    v21 = swift_allocObject();
    v20 = 10;
    *(v21 + 16) = 10;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    v18 = sub_227FF96D4(0, 0xD000000000000085, 0x80000002281485A0, 141, sub_2280E4FC0, v21);
    sub_227FDB3CC();
    swift_allocError();
    *v22 = 10;
    *(v22 + 8) = v18;
    swift_willThrow();
  }

  v23 = v18;
  v24 = v20;
  result._object = v24;
  result._countAndFlagsBits = v23;
  return result;
}

uint64_t sub_2280E4CB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2280E4D44;

  return SKTextMessageThread.preprocess(sharedSessionData:)(a1);
}

uint64_t sub_2280E4D44(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_2280E4E78(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t objectdestroyTm_14()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2280E4F20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2280E4F68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2280E4FD0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_2280E4FF8, 0, 0);
}

uint64_t sub_2280E4FF8()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_model), *(v0[4] + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_model + 24));
  v1 = off_283B5ECA0;
  v2 = sub_22813755C();
  v7 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2280E5DA0;
  v5 = v0[2];
  v4 = v0[3];

  return (v7)(v5, v4, v2, &off_283B5EC90);
}

uint64_t sub_2280E5150(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_2280E5178, 0, 0);
}

uint64_t sub_2280E5178()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_model), *(v0[4] + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_model + 24));
  v1 = off_283B5ECA8;
  v2 = sub_22813755C();
  v7 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2280E5D9C;
  v5 = v0[2];
  v4 = v0[3];

  return (v7)(v5, v4, v2, &off_283B5EC90);
}

uint64_t sub_2280E52F4()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_model), *(*(v0 + 16) + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_model + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2280E5DA8;

  return MEMORY[0x2821D9808]();
}

uint64_t sub_2280E53B0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_2280E53D8, 0, 0);
}

uint64_t sub_2280E53D8()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model), *(v0[4] + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model + 24));
  v1 = off_283B5ECA0;
  v2 = sub_22813755C();
  v7 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2280E5DAC;
  v5 = v0[2];
  v4 = v0[3];

  return (v7)(v5, v4, v2, &off_283B5EC90);
}

uint64_t sub_2280E5530(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_2280E5558, 0, 0);
}

uint64_t sub_2280E5558()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model), *(v0[4] + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model + 24));
  v1 = off_283B5ECA8;
  v2 = sub_22813755C();
  v7 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2280E5DA4;
  v5 = v0[2];
  v4 = v0[3];

  return (v7)(v5, v4, v2, &off_283B5EC90);
}

uint64_t sub_2280E56D4()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model), *(*(v0 + 16) + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2280E5DB4;

  return MEMORY[0x2821D9808]();
}

uint64_t sub_2280E57C8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_2280E57F0, 0, 0);
}

uint64_t sub_2280E57F0()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model), *(v0[4] + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model + 24));
  v1 = off_283B5ECA0;
  v2 = sub_22813755C();
  v7 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2280E5948;
  v5 = v0[2];
  v4 = v0[3];

  return (v7)(v5, v4, v2, &off_283B5EC90);
}

uint64_t sub_2280E5948(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_2280E5A48(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_2280E5A70, 0, 0);
}

uint64_t sub_2280E5A70()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model), *(v0[4] + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model + 24));
  v1 = off_283B5ECA8;
  v2 = sub_22813755C();
  v7 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2280E5DB0;
  v5 = v0[2];
  v4 = v0[3];

  return (v7)(v5, v4, v2, &off_283B5EC90);
}

uint64_t sub_2280E5BEC()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model), *(*(v0 + 16) + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2280E5C9C;

  return MEMORY[0x2821D9808]();
}

uint64_t sub_2280E5C9C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

char *sub_2280E5DB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a5;
  v7 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v7 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    return v6;
  }

  v10 = sub_22813927C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F1C0, &qword_228141570);
  sub_2280E63AC();
  sub_227FDB420();
  v11 = sub_22813973C();
  v24 = v12;
  v25 = v11;
  v13 = [objc_allocWithZone(MEMORY[0x277CCAB68]) init];
  v29 = 0;
  v30 = 0;
  v14 = sub_22813927C();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = &v29;
  v15[5] = v10;
  v15[6] = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2280E6410;
  *(v16 + 24) = v15;
  aBlock[4] = sub_2280E6420;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2280E6468;
  aBlock[3] = &block_descriptor_1;
  v17 = _Block_copy(aBlock);
  v18 = v10;
  v19 = v13;

  [a1 enumerateMatchesInString:v14 options:a2 range:v25 usingBlock:{v24, v17}];

  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    if (v30 + v29 < 1)
    {

      return v6;
    }

    v21 = [v18 length];
    v22 = v30 + v29;
    if (v30 + v29 >= v21)
    {
      goto LABEL_11;
    }

    result = [v18 length];
    if (!__OFSUB__(result, v30 + v29))
    {
      v23 = [v18 substringWithRange_];
      if (!v23)
      {
        sub_2281392AC();
        v23 = sub_22813927C();
      }

      [v19 appendString_];

LABEL_11:
      v6 = sub_2281392AC();

      return v6;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2280E60EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a7@<X8>)
{
  v10 = sub_22813927C();
  v11 = sub_22813927C();
  v12 = [a2 replacementStringForResult:a1 inString:v10 offset:0 template:v11];

  v13 = sub_2281392AC();
  v15 = v14;

  a7[3] = MEMORY[0x277D837D0];
  result = sub_227FDB420();
  a7[4] = result;
  *a7 = v13;
  a7[1] = v15;
  return result;
}

void sub_2280E61AC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, id), uint64_t a5, void *a6, void *a7, void *a8)
{
  if (a1)
  {
    v12 = a1;
    v13 = MEMORY[0x22AAB2180]();
    v14 = [v12 range];
    v16 = v15;
    a4(v24, v12);
    v17 = a6[1] + *a6;
    if (v17 < v14)
    {
      if (__OFSUB__(v14, v17))
      {
        __break(1u);
        return;
      }

      v18 = [a7 substringWithRange_];
      if (!v18)
      {
        sub_2281392AC();
        v18 = sub_22813927C();
      }

      [a8 appendString_];
    }

    v19 = __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    MEMORY[0x28223BE20](v19);
    (*(v21 + 16))(&v24[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_22813947C();
    v22 = sub_22813927C();

    [a8 appendString_];

    *a6 = v14;
    a6[1] = v16;
    __swift_destroy_boxed_opaque_existential_1(v24);
    objc_autoreleasePoolPop(v13);
  }
}

unint64_t sub_2280E63AC()
{
  result = qword_2813C45B8;
  if (!qword_2813C45B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81F1C0, &qword_228141570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C45B8);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2280E6468(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v7(a2, a3, a4);
}

uint64_t SKUserNotificationThread.preprocess(sharedSessionData:)(uint64_t a1)
{
  v2[47] = a1;
  v3 = sub_22813882C();
  v2[48] = v3;
  v2[49] = *(v3 - 8);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v4 = sub_228138AEC();
  v2[52] = v4;
  v2[53] = *(v4 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0) - 8);
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v5 = sub_228138B8C();
  v2[59] = v5;
  v2[60] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v1;
  v2[61] = v6;
  v2[62] = v7;

  return MEMORY[0x2822009F8](sub_2280E6710, 0, 0);
}

uint64_t sub_2280E6710()
{
  v233 = v0;
  v232 = *MEMORY[0x277D85DE8];
  if (*(v0[62] + 16))
  {
    v0[38] = MEMORY[0x277D84F90];
    isEscapingClosureAtFileLocation = objc_opt_self();

    v2 = off_2785F1000;

    if (qword_2813C4620 != -1)
    {
      goto LABEL_147;
    }

    while (1)
    {
      if (byte_2813C4629 == 1)
      {
        if (qword_27D81E2A0 != -1)
        {
          swift_once();
        }

        v3 = &off_27D81EDB0;
      }

      else
      {
        if (qword_2813C76F0 != -1)
        {
          swift_once();
        }

        v3 = &qword_2813C76F8;
      }

      v7 = *(*v3 + 480);
      v9 = *(*v3 + 488);
      v8 = *(*v3 + 496);
      v10 = *(*v3 + 2208);

      if (qword_2813C4630 != -1)
      {
        swift_once();
      }

      if (byte_2813C4638 == 1)
      {
        isEscapingClosureAtFileLocation = v8;
        v9(v230, v10);

        v7 = v230[0];
      }

      else
      {
      }

      sub_2280E89AC(v7, v0[62]);
      v203 = v13;
      if (v11 == v12 >> 1)
      {
        swift_unknownObjectRelease();
        v14 = 0;
        v215 = 0;
        v216 = 0;
        v15 = MEMORY[0x277D84F90];
        v16 = MEMORY[0x277D84F90];
LABEL_18:
        v0[63] = v16;
        sub_2280A8554(v15, (v0[47] + 160));
        v139 = v0[47];

        v140 = *(v139 + 208);
        if (v140)
        {
          KeyPath = swift_getKeyPath("H\nnU");
          os_unfair_lock_lock((v140 + 16));
          v142 = MEMORY[0x277D84A28];
          v231 = MEMORY[0x277D84A28];
          v230[0] = v216;

          sub_2280449E4(v230, KeyPath, (v140 + 24));
          os_unfair_lock_unlock((v140 + 16));

          v143 = swift_getKeyPath("(\nnU");
          os_unfair_lock_lock((v140 + 16));
          v231 = v142;
          v230[0] = v215;

          sub_2280449E4(v230, v143, (v140 + 24));
          os_unfair_lock_unlock((v140 + 16));

          v144 = swift_getKeyPath("\b\nnU");
          os_unfair_lock_lock((v140 + 16));
          v231 = v142;
          v230[0] = v14;

          sub_2280449E4(v230, v144, (v140 + 24));
          os_unfair_lock_unlock((v140 + 16));
        }

        v145 = v0[47];
        v230[0] = 0;
        v230[1] = 0xE000000000000000;
        sub_22813988C();

        strcpy(v230, "Notification #");
        HIBYTE(v230[1]) = -18;
        v0[41] = *(v16 + 2) + 1;
        v146 = sub_22813998C();
        MEMORY[0x22AAB1970](v146);

        MEMORY[0x22AAB1970](2618, 0xE200000000000000);
        v147 = v230[0];
        v148 = v230[1];
        v0[64] = v230[1];
        v149 = v145[3];
        v150 = v145[4];
        __swift_project_boxed_opaque_existential_1(v145, v149);
        v151 = *(v150 + 8);
        v227 = (*(v151 + 16) + **(v151 + 16));
        v152 = swift_task_alloc();
        v0[65] = v152;
        *v152 = v0;
        v152[1] = sub_2280E81B8;

        return v227(v147, v148, v149, v151);
      }

      v17 = v11;
      v14 = 0;
      v215 = 0;
      v216 = 0;
      v193 = v0 + 32;
      v219 = v0[58];
      v201 = v0[60];
      v18 = v0[49];
      v200 = (v201 + 8);
      v213 = (v18 + 16);
      v214 = (v18 + 8);
      v194 = (v0[53] + 8);
      v16 = MEMORY[0x277D84F90];
      v19 = v11 <= (v12 >> 1) ? v12 >> 1 : v11;
      v202 = v19;
      v226 = v0[57];
      v228 = v0[56];
      v195 = v0[47];
      v196 = v12 >> 1;
      while (1)
      {
        if (v17 == v202)
        {
          goto LABEL_142;
        }

        v207 = v17;
        v208 = v14;
        (*(v201 + 16))(v0[61], v203 + *(v201 + 72) * v17, v0[59]);
        v20 = sub_228138B5C();
        if (v21)
        {
          v22 = v20;
        }

        else
        {
          v22 = 0;
        }

        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = 0xE000000000000000;
        }

        if ((v23 & 0x2000000000000000) != 0)
        {
          v24 = HIBYTE(v23) & 0xF;
        }

        else
        {
          v24 = v22 & 0xFFFFFFFFFFFFLL;
        }

        if (!v24)
        {

          goto LABEL_54;
        }

        if (qword_2813C8178 != -1)
        {
          swift_once();
        }

        sub_228139B6C();
        v25 = *(v0[39] + 16);

        if (!v25)
        {
          v187 = v0[61];
          v188 = v0[59];

          v189 = swift_allocObject();
          *(v189 + 16) = 20;
          *(v189 + 24) = 0;
          *(v189 + 32) = 0;
          v190 = sub_227FF96D4(0, 0xD000000000000077, 0x8000000228147A80, 78, sub_2280E9CC0, v189);
          sub_227FDB3CC();
          swift_allocError();
          *v191 = 20;
          *(v191 + 8) = v190;
          swift_willThrow();

          swift_unknownObjectRelease();
          (*v200)(v187, v188);
          goto LABEL_136;
        }

        v26 = qword_2813C8078;
        swift_beginAccess();
        isEscapingClosureAtFileLocation = *(v25 + v26);
        if (*(isEscapingClosureAtFileLocation + 16))
        {
          v27 = sub_22808CF24(3, 1);
          if (v28)
          {
            break;
          }
        }

        swift_endAccess();

LABEL_53:

LABEL_54:
        v44 = sub_228138B6C();
        if (v45)
        {
          v46 = v44;
        }

        else
        {
          v46 = 0;
        }

        if (v45)
        {
          v47 = v45;
        }

        else
        {
          v47 = 0xE000000000000000;
        }

        v48 = sub_228138B7C();
        if (v49)
        {
          v50 = v48;
        }

        else
        {
          v50 = 0;
        }

        if (v49)
        {
          v51 = v49;
        }

        else
        {
          v51 = 0xE000000000000000;
        }

        v205 = v50;
        v206 = v51;
        v52 = sub_228138B5C();
        if (v53)
        {
          v54 = v52;
        }

        else
        {
          v54 = 0;
        }

        if (v53)
        {
          v55 = v53;
        }

        else
        {
          v55 = 0xE000000000000000;
        }

        v217 = v54;
        v218 = v55;
        if (qword_2813C8178 != -1)
        {
          swift_once();
        }

        sub_228139B6C();
        v56 = *(v0[40] + 16);

        if (!v56)
        {
          v182 = v0[61];
          v183 = v0[59];

          v184 = swift_allocObject();
          *(v184 + 16) = 20;
          *(v184 + 24) = 0;
          *(v184 + 32) = 0;
          v185 = sub_227FF96D4(0, 0xD000000000000077, 0x8000000228147A80, 61, sub_2280E9F14, v184);
          sub_227FDB3CC();
          swift_allocError();
          *v186 = 20;
          *(v186 + 8) = v185;
          swift_willThrow();
          swift_unknownObjectRelease();
          (*v200)(v182, v183);
LABEL_136:

          goto LABEL_137;
        }

        v204 = v46;
        v57 = qword_2813C8078;
        swift_beginAccess();
        v58 = *(v56 + v57);
        v223 = v47;
        v209 = v16;
        if (*(v58 + 16) && (v59 = sub_22808CF24(2, 1), (v60 & 1) != 0))
        {
          v61 = *(*(v58 + 56) + 8 * v59);
          swift_endAccess();
          v62 = *(v61 + 16);
          if (v62)
          {
            v2 = (v61 + ((*(v228 + 80) + 32) & ~*(v228 + 80)));
            isEscapingClosureAtFileLocation = v218;

            v63 = 0;
            v221 = v217;
            v225 = v218;
            v211 = v61;
            v210 = v62;
            v212 = v2;
            while (v63 < *(v61 + 16))
            {
              sub_227FFE9B0(v2 + *(v228 + 72) * v63, v0[57]);
              v90 = *(v226 + 32);
              v89 = *(v226 + 40);
              if (*(v226 + 48) > 1u)
              {
                if (*(v226 + 48) == 2)
                {
                  v112 = qword_2813C49A8;

                  if (v112 != -1)
                  {
                    swift_once();
                  }

                  v113 = v0[51];
                  v114 = v0[48];
                  v115 = __swift_project_value_buffer(v114, qword_2813C89F0);
                  (*v213)(v113, v115, v114);
                  v116 = objc_allocWithZone(MEMORY[0x277CCAC68]);
                  v117 = sub_22813927C();

                  v0[44] = 0;
                  v118 = [v116 initWithPattern:v117 options:0 error:v0 + 44];

                  v119 = v0[44];
                  v120 = v0[51];
                  if (!v118)
                  {
                    v170 = v119;
                    v171 = sub_228136E2C();

                    swift_willThrow();
                    v172 = v171;
                    v173 = sub_22813880C();
                    v174 = sub_2281396EC();

                    if (os_log_type_enabled(v173, v174))
                    {
                      v175 = swift_slowAlloc();
                      v176 = swift_slowAlloc();
                      *v175 = 138412290;
                      v177 = v171;
                      v178 = _swift_stdlib_bridgeErrorToNSError();
                      *(v175 + 4) = v178;
                      *v176 = v178;
                      _os_log_impl(&dword_227FC3000, v173, v174, "Error compiling regular expression: %@", v175, 0xCu);
                      sub_227FE60F8(v176);
                      MEMORY[0x22AAB28A0](v176, -1, -1);
                      MEMORY[0x22AAB28A0](v175, -1, -1);
                    }

                    v166 = v0[61];
                    v167 = v0[59];
                    v179 = v0[51];
                    v180 = v0[48];

                    swift_willThrow();
                    (*v214)(v179, v180);

                    swift_unknownObjectRelease();

                    goto LABEL_133;
                  }

                  v121 = v0[48];
                  isEscapingClosureAtFileLocation = *v214;
                  v122 = v119;
                  (isEscapingClosureAtFileLocation)(v120, v121);
                  v123 = swift_task_alloc();
                  v124 = v123;
                  v123[2] = v118;
                  v123[3] = v221;
                  v123[4] = v225;
                  v123[5] = v90;
                  v125 = HIBYTE(v225) & 0xF;
                  if ((v225 & 0x2000000000000000) == 0)
                  {
                    v125 = v221 & 0xFFFFFFFFFFFFLL;
                  }

                  v123[6] = v89;
                  if (v125)
                  {
                    v126 = sub_22813927C();
                    v0[45] = 15;
                    v0[30] = v221;
                    v0[31] = v225;

                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F1C0, &qword_228141570);
                    sub_2280E9DF8(&qword_2813C45B8, &qword_27D81F1C0, &qword_228141570, MEMORY[0x277D84338]);
                    sub_227FDB420();
                    v127 = sub_22813973C();
                    v198 = v128;
                    v199 = v127;
                    v129 = [objc_allocWithZone(MEMORY[0x277CCAB68]) init];
                    *v193 = 0;
                    v0[33] = 0;
                    v197 = sub_22813927C();
                    v130 = swift_allocObject();
                    *(v130 + 2) = sub_2280E9F20;
                    *(v130 + 3) = v124;
                    *(v130 + 4) = v193;
                    *(v130 + 5) = v126;
                    *(v130 + 6) = v129;
                    v2 = swift_allocObject();
                    v2[2] = sub_2280E9D44;
                    v2[3] = v130;
                    v0[22] = sub_2280E9D54;
                    v0[23] = v2;
                    v0[18] = MEMORY[0x277D85DD0];
                    v0[19] = 1107296256;
                    v0[20] = sub_2280E6468;
                    v0[21] = &block_descriptor_2;
                    v131 = _Block_copy(v0 + 18);
                    v132 = v126;
                    v133 = v129;

                    [v118 enumerateMatchesInString:v197 options:0 range:v199 usingBlock:{v198, v131}];

                    _Block_release(v131);
                    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                    if (isEscapingClosureAtFileLocation)
                    {
                      goto LABEL_146;
                    }

                    v2 = v212;
                    if ((v0[33] + v0[32]) <= 0)
                    {
                    }

                    else
                    {
                      v134 = [v132 length];
                      v135 = v0[33] + v0[32];
                      if (v135 < v134)
                      {
                        v136 = [v132 length];
                        v137 = v0[33] + v0[32];
                        if (__OFSUB__(v136, v137))
                        {
                          __break(1u);
                        }

                        v138 = [v132 substringWithRange_];
                        if (!v138)
                        {
                          sub_2281392AC();
                          v138 = sub_22813927C();
                          v2 = v212;
                        }

                        [v133 appendString_];
                      }

                      v221 = sub_2281392AC();
                      isEscapingClosureAtFileLocation = v88;

                      v225 = isEscapingClosureAtFileLocation;
                    }
                  }

                  else
                  {

                    v2 = v212;
                  }

                  v61 = v211;
                  v62 = v210;
                }
              }

              else if (*(v226 + 48))
              {
                v91 = objc_opt_self();
                v92 = sub_22813927C();
                v93 = [v91 escapedTemplateForString_];

                v94 = sub_2281392AC();
                v96 = v95;

                v97 = qword_2813C49A8;

                if (v97 != -1)
                {
                  swift_once();
                }

                v98 = v0[50];
                v99 = v0[48];
                v100 = __swift_project_value_buffer(v99, qword_2813C89F0);
                (*v213)(v98, v100, v99);
                v101 = objc_allocWithZone(MEMORY[0x277CCAC68]);
                v102 = sub_22813927C();

                v0[43] = 0;
                v103 = [v101 initWithPattern:v102 options:0 error:v0 + 43];

                v104 = v0[43];
                v105 = v0[50];
                if (!v103)
                {
                  v157 = v104;
                  v158 = sub_228136E2C();

                  swift_willThrow();
                  v159 = v158;
                  v160 = sub_22813880C();
                  v161 = sub_2281396EC();

                  if (os_log_type_enabled(v160, v161))
                  {
                    v162 = swift_slowAlloc();
                    v163 = swift_slowAlloc();
                    *v162 = 138412290;
                    v164 = v158;
                    v165 = _swift_stdlib_bridgeErrorToNSError();
                    *(v162 + 4) = v165;
                    *v163 = v165;
                    _os_log_impl(&dword_227FC3000, v160, v161, "Error compiling regular expression: %@", v162, 0xCu);
                    sub_227FE60F8(v163);
                    MEMORY[0x22AAB28A0](v163, -1, -1);
                    MEMORY[0x22AAB28A0](v162, -1, -1);
                  }

                  v166 = v0[61];
                  v167 = v0[59];
                  v168 = v0[50];
                  v169 = v0[48];

                  swift_willThrow();
                  (*v214)(v168, v169);

                  swift_unknownObjectRelease();

LABEL_133:

                  (*v200)(v166, v167);
                  v181 = v0[57];

                  sub_2280E9CD4(v181);

                  goto LABEL_136;
                }

                v106 = v0[48];
                v107 = *v214;
                v108 = v104;
                v107(v105, v106);
                v109 = swift_task_alloc();
                v109[2] = v103;
                v109[3] = v221;
                isEscapingClosureAtFileLocation = v225;
                v109[4] = v225;
                v109[5] = v94;
                v109[6] = v96;
                v221 = sub_2280E5DB8(v103, 0, sub_2280E9D30, v109, v221, v225);
                v111 = v110;

                v225 = v111;
                v61 = v211;
                v62 = v210;
                v2 = v212;
              }

              ++v63;
              sub_2280E9CD4(v0[57]);
              if (v62 == v63)
              {

                v64 = v225;
                v65 = v221;
                goto LABEL_81;
              }
            }

            __break(1u);
            goto LABEL_141;
          }
        }

        else
        {
          swift_endAccess();
        }

        v64 = v218;

        v65 = v217;
LABEL_81:

        v66 = sub_2280A7954(v65, v64, v195 + 160, *(v195 + 208));
        v68 = v67;
        v70 = v0[54];
        v69 = v0[55];
        v71 = v0[52];

        sub_228138B2C();
        sub_228138ADC();
        sub_2280A00CC();
        v72 = sub_2281397EC();
        v73 = *v194;
        (*v194)(v70, v71);
        v73(v69, v71);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
        inited = swift_initStackObject();
        if (v72)
        {
          *(inited + 16) = xmmword_22813A4B0;
          *(inited + 32) = v66;
          *(inited + 40) = v68;
          v75 = v208;
          v76 = v223;
          v77 = v205;
          v2 = v206;
          v78 = v204;
        }

        else
        {
          *(inited + 16) = xmmword_22813B480;
          v78 = v204;
          v77 = v205;
          v76 = v223;
          *(inited + 32) = v204;
          *(inited + 40) = v223;
          v2 = v206;
          *(inited + 48) = v205;
          *(inited + 56) = v206;
          *(inited + 64) = v66;
          *(inited + 72) = v68;

          v75 = v208;
        }

        sub_227FED308(inited);
        isEscapingClosureAtFileLocation = sub_2280A0124(v78, v76, v77, v2, v66, v68);
        v80 = v79;

        v81 = sub_22813936C();

        if (__OFADD__(v216, v81))
        {
          goto LABEL_143;
        }

        v216 += v81;
        v82 = sub_22813936C();

        if (__OFADD__(v215, v82))
        {
          goto LABEL_144;
        }

        v215 += v82;
        v83 = sub_22813936C();

        v84 = __OFADD__(v75, v83);
        v14 = v75 + v83;
        if (v84)
        {
          goto LABEL_145;
        }

        v16 = v209;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_2281338C0(0, *(v209 + 2) + 1, 1, v209);
        }

        v86 = *(v16 + 2);
        v85 = *(v16 + 3);
        if (v86 >= v85 >> 1)
        {
          v16 = sub_2281338C0((v85 > 1), v86 + 1, 1, v16);
        }

        (*v200)(v0[61], v0[59]);
        *(v16 + 2) = v86 + 1;
        v87 = &v16[16 * v86];
        *(v87 + 4) = isEscapingClosureAtFileLocation;
        *(v87 + 5) = v80;
LABEL_92:
        v17 = v207 + 1;
        if (v207 + 1 == v196)
        {
          swift_unknownObjectRelease();
          v15 = v0[38];
          goto LABEL_18;
        }
      }

      v29 = *(*(isEscapingClosureAtFileLocation + 56) + 8 * v27);
      swift_endAccess();
      v224 = *(v29 + 16);
      if (!v224)
      {
        break;
      }

      v222 = v29 + ((*(v228 + 80) + 32) & ~*(v228 + 80));
      v30 = 7;
      if (((v23 >> 60) & ((v22 & 0x800000000000000) == 0)) != 0)
      {
        v30 = 11;
      }

      v220 = v30 | (v24 << 16);

      v31 = 0;
      while (v31 < *(v29 + 16))
      {
        sub_227FFE9B0(v222 + *(v228 + 72) * v31, v0[58]);
        if (*(v219 + 48) != 255)
        {
          isEscapingClosureAtFileLocation = v16;
          v32 = objc_allocWithZone(MEMORY[0x277CCAC68]);
          v33 = sub_22813927C();
          v0[46] = 0;
          v34 = [v32 initWithPattern:v33 options:0 error:v0 + 46];

          v35 = v0[46];
          if (!v34)
          {
            v154 = v0[61];
            v155 = v0[59];
            v229 = v0[58];
            v156 = v35;

            sub_228136E2C();

            swift_willThrow();

            swift_unknownObjectRelease();
            (*v200)(v154, v155);
            sub_2280E9CD4(v229);

            goto LABEL_136;
          }

          v0[34] = 15;
          v0[35] = v220;
          v0[36] = v22;
          v0[37] = v23;
          v36 = v35;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E550, &qword_22813B0F0);
          sub_2280E9DF8(&qword_2813C4650, &qword_27D81E550, &qword_22813B0F0, MEMORY[0x277D83D30]);
          sub_227FDB420();
          v37 = sub_22813973C();
          v39 = v38;
          v40 = sub_22813927C();
          v2 = [v34 firstMatchInString:v40 options:0 range:{v37, v39}];

          v16 = isEscapingClosureAtFileLocation;
          if (v2)
          {
            v41 = v0[61];
            v43 = v0[58];
            v42 = v0[59];

            sub_2280E9CD4(v43);

            (*v200)(v41, v42);
            v14 = v208;
            goto LABEL_92;
          }
        }

        ++v31;
        sub_2280E9CD4(v0[58]);
        if (v224 == v31)
        {

          goto LABEL_52;
        }
      }

LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      swift_once();
    }

LABEL_52:

    goto LABEL_53;
  }

  v4 = swift_allocObject();
  *(v4 + 16) = 10;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v5 = sub_227FF96D4(0, 0xD00000000000008ALL, 0x8000000228148630, 19, sub_2280E9F18, v4);
  sub_227FDB3CC();
  swift_allocError();
  *v6 = 10;
  *(v6 + 8) = v5;
  swift_willThrow();
LABEL_137:

  v192 = v0[1];

  return v192();
}

uint64_t sub_2280E81B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 528) = v1;

  if (v1)
  {
    v5 = sub_2280E8558;
  }

  else
  {
    *(v4 + 536) = a1;
    v5 = sub_2280E8308;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280E8308()
{
  v1 = v0[67];
  v2 = v0[63];

  v3 = *(v2 + 16);
  v4 = v1 * v3;
  if ((v1 * v3) >> 64 != (v1 * v3) >> 63)
  {
    __break(1u);
  }

  v5 = v0[47];
  v6 = swift_task_alloc();
  v0[68] = v6;
  *v6 = v0;
  v6[1] = sub_2280E8404;
  v7 = v0[63];

  return sub_2280D8D74(v7, v5 + 160, v4);
}

uint64_t sub_2280E8404(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 552) = a1;
  *(v3 + 560) = v1;

  if (v1)
  {

    v4 = sub_2280E88C8;
  }

  else
  {
    v4 = sub_2280E864C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2280E8558()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280E864C()
{
  v17 = v0;
  v16[2] = *MEMORY[0x277D85DE8];
  v1 = v0[69];
  v15 = *(v1 + 16);
  if (v15)
  {
    v2 = 0;
    v3 = (v1 + 40);
    v14 = v0[69];
    do
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
      }

      v4 = v0[63];
      v6 = *(v3 - 1);
      v5 = *v3;

      sub_22813988C();

      strcpy(v16, "Notification #");
      HIBYTE(v16[1]) = -18;
      v7 = v2 + 1;
      v0[42] = v2 + 1;
      v8 = sub_22813998C();
      MEMORY[0x22AAB1970](v8);

      MEMORY[0x22AAB1970](2618, 0xE200000000000000);
      MEMORY[0x22AAB1970](v6, v5);

      v9 = *(v4 + 16) - 1;
      if (v2 >= v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = 10;
      }

      if (v2 >= v9)
      {
        v11 = 0xE000000000000000;
      }

      else
      {
        v11 = 0xE100000000000000;
      }

      MEMORY[0x22AAB1970](v10, v11);

      MEMORY[0x22AAB1970](v16[0], v16[1]);

      v1 = v14;
      v3 += 2;
      ++v2;
    }

    while (v7 != v15);
  }

  v12 = v0[1];

  return v12(0, 0xE000000000000000);
}

uint64_t sub_2280E88C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280E89AC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_228138B8C();
    return a2;
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SKUserNotificationThread.preprocessForLanguageCheck()()
{
  v119 = sub_228138AEC();
  v2 = *(v119 - 8);
  v3 = MEMORY[0x28223BE20](v119);
  v118 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v117 = &v100 - v5;
  v112 = sub_228138B8C();
  v124 = *(v112 - 8);
  v6 = MEMORY[0x28223BE20](v112);
  v8 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v100 - v10;
  MEMORY[0x28223BE20](v9);
  v120 = &v100 - v12;
  v13 = *v0;
  v14 = *(*v0 + 16);
  if (v14)
  {
    v15 = objc_opt_self();

    if (qword_2813C4620 != -1)
    {
      swift_once();
    }

    v107 = v1;
    v106 = v8;
    v110 = v14;
    v105 = v11;
    if (byte_2813C4629 == 1)
    {
      if (qword_27D81E2A0 != -1)
      {
        swift_once();
      }

      v16 = &off_27D81EDB0;
    }

    else
    {
      if (qword_2813C76F0 != -1)
      {
        swift_once();
      }

      v16 = &qword_2813C76F8;
    }

    v21 = *v16;
    v109 = *(*v16 + 520);
    v22 = *(v21 + 528);
    v23 = *(v21 + 2208);

    if (qword_2813C4630 != -1)
    {
      swift_once();
    }

    if (byte_2813C4638 == 1)
    {
      v22(v132, v23);

      v109 = LOBYTE(v132[0]);
    }

    else
    {
    }

    v123 = *(v124 + 16);
    v24 = v13 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
    v122 = *(v124 + 72);
    v116 = (v2 + 8);
    v124 += 16;
    v121 = (v124 - 8);
    v111 = MEMORY[0x277D84F90];
    v108 = v24;
    v25 = v110;
    v26 = v112;
    v27 = v120;
    do
    {
      v113 = v25;
      v123(v27, v24, v26);
      v28 = v117;
      sub_228138B2C();
      v29 = v27;
      v30 = v118;
      sub_228138ADC();
      v31 = sub_2280A00CC();
      v32 = v119;
      v115 = v31;
      v33 = sub_2281397EC();
      v34 = *v116;
      (*v116)(v30, v32);
      v114 = v34;
      v34(v28, v32);
      if (v33)
      {
        v120 = *v121;
        (v120)(v29, v26);
        v27 = v29;
      }

      else
      {
        v35 = sub_228138B6C();
        v37 = v36;
        v120 = *v121;
        (v120)(v29, v26);
        v27 = v29;
        if (v37)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v111 = sub_2281338C0(0, *(v111 + 2) + 1, 1, v111);
          }

          v39 = *(v111 + 2);
          v38 = *(v111 + 3);
          if (v39 >= v38 >> 1)
          {
            v111 = sub_2281338C0((v38 > 1), v39 + 1, 1, v111);
          }

          v40 = v111;
          *(v111 + 2) = v39 + 1;
          v41 = &v40[16 * v39];
          *(v41 + 4) = v35;
          *(v41 + 5) = v37;
          v26 = v112;
        }
      }

      v24 += v122;
      v25 = v113 - 1;
    }

    while (v113 != 1);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    v132[3] = v42;
    v101 = sub_2280E9DF8(&qword_2813C4670, &qword_27D81EB10, &unk_22813DB80, MEMORY[0x277D83988]);
    v132[4] = v101;
    v132[0] = v111;
    v111 = v42;
    if (v109)
    {
      v43 = __swift_project_boxed_opaque_existential_1(v132, v42);
      MEMORY[0x28223BE20](v43);
      v45 = (&v100 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v46 + 16))(v45);
      v47 = sub_2280E9840(*v45);
      v49 = v48;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F1C8, &qword_228141578);
      v130 = v50;
      v131 = sub_2280E9DF8(&qword_2813C4828, &qword_27D81F1C8, &qword_228141578, MEMORY[0x277CFB8C8]);
      v129[0] = v47;
      v129[1] = v49;
    }

    else
    {
      sub_2280E9D94(v132, v129);
      v50 = v130;
    }

    v51 = v105;
    __swift_project_boxed_opaque_existential_1(v129, v50);
    v102 = sub_227FDB420();
    v103 = sub_2281394BC();
    v104 = v52;
    v113 = MEMORY[0x277D84F90];
    v53 = v108;
    v54 = v110;
    v55 = v112;
    do
    {
      v123(v51, v53, v55);
      v56 = v117;
      sub_228138B2C();
      v57 = v118;
      sub_228138ADC();
      v58 = v119;
      v59 = sub_2281397EC();
      v60 = v57;
      v61 = v114;
      v114(v60, v58);
      v61(v56, v58);
      if (v59)
      {
        (v120)(v51, v55);
      }

      else
      {
        v62 = sub_228138B7C();
        v64 = v63;
        (v120)(v51, v55);
        if (v64)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = sub_2281338C0(0, *(v113 + 2) + 1, 1, v113);
          }

          v66 = *(v113 + 2);
          v65 = *(v113 + 3);
          if (v66 >= v65 >> 1)
          {
            v113 = sub_2281338C0((v65 > 1), v66 + 1, 1, v113);
          }

          v67 = v113;
          *(v113 + 2) = v66 + 1;
          v68 = &v67[16 * v66];
          *(v68 + 4) = v62;
          *(v68 + 5) = v64;
          v55 = v112;
        }
      }

      v53 += v122;
      --v54;
    }

    while (v54);
    v128[3] = v111;
    v128[4] = v101;
    v128[0] = v113;
    if (v109)
    {
      v69 = __swift_project_boxed_opaque_existential_1(v128, v111);
      MEMORY[0x28223BE20](v69);
      v71 = (&v100 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v72 + 16))(v71);
      v73 = sub_2280E9840(*v71);
      v75 = v74;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F1C8, &qword_228141578);
      v126 = v76;
      v127 = sub_2280E9DF8(&qword_2813C4828, &qword_27D81F1C8, &qword_228141578, MEMORY[0x277CFB8C8]);
      v125[0] = v73;
      v125[1] = v75;
    }

    else
    {
      sub_2280E9D94(v128, v125);
      v76 = v126;
    }

    v77 = v106;
    v78 = v110;
    __swift_project_boxed_opaque_existential_1(v125, v76);
    v79 = sub_2281394BC();
    v119 = v80;
    v81 = MEMORY[0x277D84F90];
    v82 = v108;
    do
    {
      v84 = v82;
      v85 = v112;
      (v123)(v77);
      v86 = sub_228138B5C();
      v88 = v87;
      (v120)(v77, v85);
      if (v88)
      {
        v89 = v78;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_2281338C0(0, *(v81 + 2) + 1, 1, v81);
        }

        v91 = *(v81 + 2);
        v90 = *(v81 + 3);
        if (v91 >= v90 >> 1)
        {
          v81 = sub_2281338C0((v90 > 1), v91 + 1, 1, v81);
        }

        *(v81 + 2) = v91 + 1;
        v83 = &v81[16 * v91];
        *(v83 + 4) = v86;
        *(v83 + 5) = v88;
        v78 = v89;
      }

      v82 = v84 + v122;
      --v78;
    }

    while (v78);
    v132[7] = v81;
    sub_2280E9DF8(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80, MEMORY[0x277D83958]);
    v92 = sub_22813925C();
    v94 = v93;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
    inited = swift_initStackObject();
    *(inited + 32) = v103;
    *(inited + 16) = xmmword_22813B480;
    *(inited + 40) = v104;
    *(inited + 48) = v79;
    *(inited + 56) = v119;
    *(inited + 64) = v92;
    *(inited + 72) = v94;
    v19 = sub_228045C2C();
    v18 = v96;
    swift_setDeallocating();
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(v125);
    __swift_destroy_boxed_opaque_existential_1(v128);
    __swift_destroy_boxed_opaque_existential_1(v129);
    __swift_destroy_boxed_opaque_existential_1(v132);
  }

  else
  {
    v17 = swift_allocObject();
    v18 = 10;
    *(v17 + 16) = 10;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    v19 = sub_227FF96D4(0, 0xD00000000000008ALL, 0x8000000228148630, 102, sub_2280E9F1C, v17);
    sub_227FDB3CC();
    swift_allocError();
    *v20 = 10;
    *(v20 + 8) = v19;
    swift_willThrow();
  }

  v97 = v19;
  v98 = v18;
  result._object = v98;
  result._countAndFlagsBits = v97;
  return result;
}

uint64_t sub_2280E9840(uint64_t a1)
{
  v16 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F1D0, &qword_2281415E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v14);
    v2 = sub_2280E9CCC();
    result = sub_228129EE8(a1, 0, 1, v2);
    if (*(a1 + 16) <= 0xFuLL)
    {

      return 0;
    }
  }

  else
  {
    v4 = *(a1 + 16);
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    sub_22812A758(v4, 0);
    v5 = 0;
    v6 = *(a1 + 16);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = (a1 + 32 + 16 * i);
        v10 = *v8;
        v9 = v8[1];
        v11 = *(v15 + 16);
        if (v11)
        {
          v12 = (v15 + 40);
          while (1)
          {
            v13 = *(v12 - 1) == v10 && *v12 == v9;
            if (v13 || (sub_2281399BC() & 1) != 0)
            {
              break;
            }

            v12 += 2;
            if (!--v11)
            {
              goto LABEL_6;
            }
          }
        }

        else
        {
LABEL_6:

          sub_228128810(v10, v9, 0);
        }
      }

      v5 = v14;
    }

    return v5;
  }

  return result;
}

uint64_t sub_2280E9A28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2280E9ABC;

  return SKUserNotificationThread.preprocess(sharedSessionData:)(a1);
}

uint64_t sub_2280E9ABC(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

id sub_2280E9BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22813927C();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_228136E2C();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_2280E9CD4(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2280E9D94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2280E9DF8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t objectdestroyTm_15()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2280E9E80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2280E9EC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SummarizationSession.Configuration.init(modelBundleIdentifier:locale:handlesProactiveRequests:handlesSensitiveData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for SummarizationSession.Configuration(0);
  v11 = v10[5];
  v12 = sub_22813716C();
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  sub_227FC8614(a1, a5);
  sub_2280EA124(a2, a5 + v11);
  *(a5 + v10[6]) = a3;
  *(a5 + v10[7]) = a4;
  type metadata accessor for SKAssetManager();
  swift_initStackObject();
  v13 = SKAssetManager.init()();
  type metadata accessor for ClientSafetyConfiguration(0);
  v14 = swift_allocObject();
  v15 = (v14 + qword_2813C6C50);
  *v15 = 0xD000000000000019;
  v15[1] = 0x80000002281486C0;
  v16 = (v14 + qword_2813C6C58);
  *v16 = 0x7478746270;
  v16[1] = 0xE500000000000000;
  v17 = (v14 + qword_2813C6C48);
  *v17 = 0xD000000000000010;
  v17[1] = 0x8000000228143AB0;
  v18 = sub_227FE02B4(v13, 0, 0xD000000000000019, 0x80000002281486C0, 0x7478746270, 0xE500000000000000, 0xD000000000000010, 0x8000000228143AB0);
  sub_2280EAA7C(a2, &qword_27D81E6A8, &qword_22813F930);
  result = sub_227FC8720(a1);
  *(a5 + v10[8]) = v18;
  return result;
}

uint64_t type metadata accessor for SummarizationSession.Configuration(uint64_t a1)
{
  result = qword_2813C8300;
  if (!qword_2813C8300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2280EA124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_2280EA1E0(uint64_t a1)
{
  type metadata accessor for ModelBundleIdentifier(319);
  if (v1 <= 0x3F)
  {
    sub_2280EA28C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ClientSafetyConfiguration(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2280EA28C(uint64_t a1)
{
  if (!qword_2813C8750)
  {
    sub_22813716C();
    v1 = sub_22813977C();
    if (!v2)
    {
      atomic_store(v1, &qword_2813C8750);
    }
  }
}

uint64_t sub_2280EA2F4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24[-v5];
  v7 = type metadata accessor for ModelBundleIdentifier(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2813C7048 != -1)
  {
    v23 = v8;
    swift_once();
    v8 = v23;
  }

  v11 = __swift_project_value_buffer(v8, qword_2813C8B20);
  sub_227FC8614(v11, v10);
  v12 = sub_22813716C();
  v13 = *(*(v12 - 8) + 56);
  v13(v6, 1, 1, v12);
  v14 = type metadata accessor for SummarizationSession.Configuration(0);
  v15 = v14[5];
  v13((a2 + v15), 1, 1, v12);
  sub_227FC8614(v10, a2);
  sub_2280EA124(v6, a2 + v15);
  *(a2 + v14[6]) = a1;
  *(a2 + v14[7]) = 1;
  type metadata accessor for SKAssetManager();
  swift_initStackObject();
  v16 = SKAssetManager.init()();
  type metadata accessor for ClientSafetyConfiguration(0);
  v17 = swift_allocObject();
  v18 = (v17 + qword_2813C6C50);
  *v18 = 0xD000000000000019;
  v18[1] = 0x80000002281486C0;
  v19 = (v17 + qword_2813C6C58);
  *v19 = 0x7478746270;
  v19[1] = 0xE500000000000000;
  v20 = (v17 + qword_2813C6C48);
  *v20 = 0xD000000000000010;
  v20[1] = 0x8000000228143AB0;
  v21 = sub_227FE02B4(v16, 0, 0xD000000000000019, 0x80000002281486C0, 0x7478746270, 0xE500000000000000, 0xD000000000000010, 0x8000000228143AB0);
  sub_2280EAA7C(v6, &qword_27D81E6A8, &qword_22813F930);
  result = sub_227FC8720(v10);
  *(a2 + v14[8]) = v21;
  return result;
}

uint64_t sub_2280EA5AC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D81F1D8, &unk_228142EA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_228138CCC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_22810D23C(a1, a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2280EAA7C(v8, qword_27D81F1D8, &unk_228142EA0);
    v13 = swift_allocObject();
    *(v13 + 16) = 21;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    v14 = sub_227FF96D4(0, 0xD000000000000087, 0x80000002281486E0, 70, sub_2280EAADC, v13);
    sub_227FDB3CC();
    swift_allocError();
    *v15 = 21;
    *(v15 + 8) = v14;
    return swift_willThrow();
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_2280EA7F4(v12, a3);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_2280EA7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22[-v6];
  v8 = type metadata accessor for ModelBundleIdentifier(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_2280EAAE8(a1);
  if (!v2)
  {
    sub_2280FA9A8(v10);
    v12 = sub_22813716C();
    v13 = *(*(v12 - 8) + 56);
    v13(v7, 1, 1, v12);
    v14 = type metadata accessor for SummarizationSession.Configuration(0);
    v15 = v14[5];
    v13((a2 + v15), 1, 1, v12);
    sub_227FC8614(v10, a2);
    sub_2280EA124(v7, a2 + v15);
    *(a2 + v14[6]) = 0;
    *(a2 + v14[7]) = 0;
    type metadata accessor for SKAssetManager();
    swift_initStackObject();
    v16 = SKAssetManager.init()();
    type metadata accessor for ClientSafetyConfiguration(0);
    v17 = swift_allocObject();
    v18 = (v17 + qword_2813C6C50);
    *v18 = 0xD000000000000019;
    v18[1] = 0x80000002281486C0;
    v19 = (v17 + qword_2813C6C58);
    *v19 = 0x7478746270;
    v19[1] = 0xE500000000000000;
    v20 = (v17 + qword_2813C6C48);
    *v20 = 0xD000000000000010;
    v20[1] = 0x8000000228143AB0;
    v21 = sub_227FE02B4(v16, 0, 0xD000000000000019, 0x80000002281486C0, 0x7478746270, 0xE500000000000000, 0xD000000000000010, 0x8000000228143AB0);
    sub_2280EAA7C(v7, &qword_27D81E6A8, &qword_22813F930);
    result = sub_227FC8720(v10);
    *(a2 + v14[8]) = v21;
  }

  return result;
}

uint64_t sub_2280EAA7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2280EAAE8(uint64_t a1)
{
  v2 = sub_228138CCC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  v9 = *(v3 + 16);
  v9(&v32 - v7, a1, v2);
  result = (*(v3 + 88))(v8, v2);
  if (result != *MEMORY[0x277D4B110] && result != *MEMORY[0x277D4B120] && result != *MEMORY[0x277D4B0C0] && result != *MEMORY[0x277D4B0B8] && result != *MEMORY[0x277D4B108] && result != *MEMORY[0x277D4B0E8])
  {
    if (qword_2813C49E0[0] != -1)
    {
      swift_once();
    }

    v16 = sub_22813882C();
    __swift_project_value_buffer(v16, qword_2813C8A20);
    v9(v6, a1, v2);
    v17 = sub_22813880C();
    v18 = sub_2281396DC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v34 = v19;
      v35 = swift_slowAlloc();
      v36 = v35;
      *v19 = 136315138;
      v33 = sub_228138CAC();
      v21 = v20;
      v22 = *(v3 + 8);
      v22(v6, v2);
      v23 = v22;
      v24 = sub_227FCC340(v33, v21, &v36);

      v25 = v34;
      *(v34 + 1) = v24;
      v26 = v25;
      _os_log_impl(&dword_227FC3000, v17, v18, "Unsupported use case identifier for on-demand text summarization: %s", v25, 0xCu);
      v27 = v35;
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AAB28A0](v27, -1, -1);
      v28 = v23;
      MEMORY[0x22AAB28A0](v26, -1, -1);
    }

    else
    {

      v28 = *(v3 + 8);
      v28(v6, v2);
    }

    v29 = swift_allocObject();
    *(v29 + 16) = 22;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0;
    v30 = sub_227FF96D4(0, 0xD000000000000087, 0x80000002281486E0, 160, sub_2280EAEDC, v29);
    sub_227FDB3CC();
    swift_allocError();
    *v31 = 22;
    *(v31 + 8) = v30;
    swift_willThrow();
    return (v28)(v8, v2);
  }

  return result;
}

uint64_t objectdestroyTm_16()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2280EAEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_228139AAC();
  sub_22813923C();
  v6 = sub_228139AEC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2281399BC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2280EAFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_228139AAC();
  sub_22813923C();
  v6 = sub_228139AEC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2281399BC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2280EB0D0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v35 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - v3;
  v5 = sub_2281370BC();
  v6 = *(v5 - 8);
  v33 = v5;
  v34 = v6;
  MEMORY[0x28223BE20](v5);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = sub_22813701C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22813710C();
  v18 = *(v15 + 48);
  if (v18(v13, 1, v14) == 1)
  {
    sub_2280EB708(v13, &qword_27D81E328, &qword_2281402C0);
    goto LABEL_7;
  }

  (*(v15 + 32))(v17, v13, v14);
  if ((sub_2280EB56C(v17) & 1) == 0)
  {
    (*(v15 + 8))(v17, v14);
LABEL_7:
    sub_22813710C();
    if (v18(v11, 1, v14) == 1)
    {
      sub_2280EB708(v11, &qword_27D81E328, &qword_2281402C0);
      v20 = 0xE300000000000000;
      v21 = 7104878;
    }

    else
    {
      v21 = sub_228136FFC();
      v20 = v22;
      (*(v15 + 8))(v11, v14);
    }

    goto LABEL_11;
  }

  sub_22813712C();
  v19 = v33;
  if ((*(v34 + 48))(v4, 1, v33) == 1)
  {
    (*(v15 + 8))(v17, v14);
    sub_2280EB708(v4, &qword_27D81E320, &unk_22813A7D0);
    goto LABEL_7;
  }

  v23 = v34;
  v24 = v32;
  (*(v34 + 32))(v32, v4, v19);
  v37 = 0;
  v38 = 0xE000000000000000;
  v25 = v19;
  sub_2281398EC();
  MEMORY[0x22AAB1970](45, 0xE100000000000000);
  sub_2281398EC();
  v21 = v37;
  v20 = v38;
  (*(v23 + 8))(v24, v25);
  (*(v15 + 8))(v17, v14);
LABEL_11:
  v26 = v35;

  v27 = *v26;

  v28 = sub_2280EAEE0(v21, v20, v27);

  if (v28)
  {

    v21 = 0;
    v20 = 0;
  }

  else
  {

    sub_2280BD990(&v37, v21, v20);
  }

  v30 = v36;
  *v36 = v21;
  v30[1] = v20;
  return result;
}

uint64_t sub_2280EB56C(uint64_t a1)
{
  v2 = sub_22813701C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  (*(v3 + 16))(&v13 - v7, a1, v2);
  sub_22813700C();
  sub_2280EB768();
  v9 = sub_22813926C();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    sub_22813700C();
    v11 = sub_22813926C();
    v10(v6, v2);
  }

  v10(v8, v2);
  return v11 & 1;
}

uint64_t sub_2280EB708(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2280EB768()
{
  result = qword_2813C8760;
  if (!qword_2813C8760)
  {
    sub_22813701C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C8760);
  }

  return result;
}

uint64_t sub_2280EB7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v31 = a1;
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MajorityElement(0, v8, v8, v9);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v32 = &v27 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v17 = &v27 - v16;
  v18 = *(v15 + 48);
  v30 = v11;
  v19 = *(v11 + 16);
  v19(&v27 - v16, v31, v10);
  v19(&v17[v18], a2, v10);
  v31 = v6;
  v20 = *(v6 + 48);
  if (v20(v17, 1, a3) == 1)
  {
    v21 = 1;
    if (v20(&v17[v18], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v19(v32, v17, v10);
    if (v20(&v17[v18], 1, a3) != 1)
    {
      v22 = v31;
      v23 = v28;
      (*(v31 + 32))(v28, &v17[v18], a3);
      v24 = v32;
      v21 = sub_22813926C();
      v25 = *(v22 + 8);
      v25(v23, a3);
      v25(v24, a3);
LABEL_8:
      v14 = v30;
      goto LABEL_9;
    }

    (*(v31 + 8))(v32, a3);
  }

  v21 = 0;
  v10 = TupleTypeMetadata2;
LABEL_9:
  (*(v14 + 8))(v17, v10);
  return v21 & 1;
}

uint64_t sub_2280EBB28(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2280EBB84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_2280EBD04(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

unint64_t Com_Apple_Summarizationkit_Proto_ConfidenceBucket.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_2280EC00C(uint64_t a1, uint64_t a2)
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_2280EC078(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280F7528();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_2280EC0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t Com_Apple_Summarizationkit_Proto_ConfidenceRange.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  return sub_228137D6C();
}

uint64_t Com_Apple_Summarizationkit_Proto_BucketInfo.bucketNames.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_BucketInfo.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_227FE4410(MEMORY[0x277D84F90]);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  return sub_228137D6C();
}

void Com_Apple_Summarizationkit_Proto_ConfidencePair.bucket.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_Summarizationkit_Proto_ConfidencePair.bucket.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_ConfidencePair.range.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAC8, &qword_22813D908);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0);
  sub_2280F7478(v1 + *(v6 + 24), v5, &qword_27D81EAC8, &qword_22813D908);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_2280F72D0(v5, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
  }

  *a1 = 0;
  sub_228137D6C();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_2280F8A9C(v5, &qword_27D81EAC8, &qword_22813D908);
  }

  return result;
}

uint64_t sub_2280EC55C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAC8, &qword_22813D908);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0);
  sub_2280F7478(a1 + *(v7 + 24), v6, &qword_27D81EAC8, &qword_22813D908);
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_2280F72D0(v6, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
  }

  *a2 = 0;
  sub_228137D6C();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_2280F8A9C(v6, &qword_27D81EAC8, &qword_22813D908);
  }

  return result;
}

uint64_t sub_2280EC6BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2280F7338(a1, v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
  v8 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0) + 24);
  sub_2280F8A9C(a2 + v8, &qword_27D81EAC8, &qword_22813D908);
  sub_2280F72D0(v7, a2 + v8, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_ConfidencePair.range.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0) + 24);
  sub_2280F8A9C(v1 + v3, &qword_27D81EAC8, &qword_22813D908);
  sub_2280F72D0(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_ConfidencePair.range.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAC8, &qword_22813D908) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0) + 24);
  *(v5 + 12) = v15;
  sub_2280F7478(v1 + v15, v8, &qword_27D81EAC8, &qword_22813D908);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_2280F8A9C(v8, &qword_27D81EAC8, &qword_22813D908);
    }
  }

  else
  {
    sub_2280F72D0(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
  }

  return sub_2280ECAB0;
}

uint64_t sub_2280ECB68@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2280ECC04(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Com_Apple_Summarizationkit_Proto_ConfidencePair.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0);
  sub_228137D6C();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo.bucketInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F260, &unk_228141690);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  sub_2280F7478(v1 + *(v6 + 24), v5, &qword_27D81F260, &unk_228141690);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_2280F72D0(v5, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
  }

  *a1 = sub_227FE4410(MEMORY[0x277D84F90]);
  sub_228137D6C();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_2280F8A9C(v5, &qword_27D81F260, &unk_228141690);
  }

  return result;
}

uint64_t sub_2280ECEF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F260, &unk_228141690);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  sub_2280F7478(a1 + *(v7 + 24), v6, &qword_27D81F260, &unk_228141690);
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_2280F72D0(v6, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
  }

  *a2 = sub_227FE4410(MEMORY[0x277D84F90]);
  sub_228137D6C();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_2280F8A9C(v6, &qword_27D81F260, &unk_228141690);
  }

  return result;
}

uint64_t sub_2280ED05C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2280F7338(a1, v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
  v8 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0) + 24);
  sub_2280F8A9C(a2 + v8, &qword_27D81F260, &unk_228141690);
  sub_2280F72D0(v7, a2 + v8, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo.bucketInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0) + 24);
  sub_2280F8A9C(v1 + v3, &qword_27D81F260, &unk_228141690);
  sub_2280F72D0(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo.bucketInfo.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F260, &unk_228141690) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0) + 24);
  *(v5 + 12) = v15;
  sub_2280F7478(v1 + v15, v8, &qword_27D81F260, &unk_228141690);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = sub_227FE4410(MEMORY[0x277D84F90]);
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_2280F8A9C(v8, &qword_27D81F260, &unk_228141690);
    }
  }

  else
  {
    sub_2280F72D0(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
  }

  return sub_2280ED45C;
}

BOOL sub_2280ED4C0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_2280F7478(v4 + *(v12 + 24), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_2280F8A9C(v11, a1, a2);
  return v14;
}

uint64_t sub_2280ED5F8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_2280F8A9C(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationConfig.confidenceInfo.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F268, &qword_228142CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  sub_2280F7478(v1 + *(v6 + 28), v5, &qword_27D81F268, &qword_228142CB0);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_2280F72D0(v5, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  }

  *a1 = MEMORY[0x277D84F90];
  sub_228137D6C();
  v9 = *(v7 + 24);
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_2280F8A9C(v5, &qword_27D81F268, &qword_228142CB0);
  }

  return result;
}

uint64_t sub_2280ED928@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F268, &qword_228142CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  sub_2280F7478(a1 + *(v7 + 28), v6, &qword_27D81F268, &qword_228142CB0);
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_2280F72D0(v6, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  }

  *a2 = MEMORY[0x277D84F90];
  sub_228137D6C();
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_2280F8A9C(v6, &qword_27D81F268, &qword_228142CB0);
  }

  return result;
}

uint64_t sub_2280EDAD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2280F7338(a1, v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  v8 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0) + 28);
  sub_2280F8A9C(a2 + v8, &qword_27D81F268, &qword_228142CB0);
  sub_2280F72D0(v7, a2 + v8, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationConfig.confidenceInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0) + 28);
  sub_2280F8A9C(v1 + v3, &qword_27D81F268, &qword_228142CB0);
  sub_2280F72D0(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_SKClassificationConfig.confidenceInfo.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F268, &qword_228142CB0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0) + 28);
  *(v5 + 12) = v15;
  sub_2280F7478(v1 + v15, v8, &qword_27D81F268, &qword_228142CB0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    sub_228137D6C();
    v17 = *(v9 + 24);
    v18 = type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
    (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_2280F8A9C(v8, &qword_27D81F268, &qword_228142CB0);
    }
  }

  else
  {
    sub_2280F72D0(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  }

  return sub_2280EDF14;
}

BOOL Com_Apple_Summarizationkit_Proto_SKClassificationConfig.hasConfidenceInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F268, &qword_228142CB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  sub_2280F7478(v0 + *(v4 + 28), v3, &qword_27D81F268, &qword_228142CB0);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_2280F8A9C(v3, &qword_27D81F268, &qword_228142CB0);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Summarizationkit_Proto_SKClassificationConfig.clearConfidenceInfo()()
{
  v1 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0) + 28);
  sub_2280F8A9C(v0 + v1, &qword_27D81F268, &qword_228142CB0);
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationConfig.clientConfigList.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_2280EE12C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2280EE1C8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  sub_228137D6C();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig.clientID.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0);
  sub_2280F7478(v1 + *(v6 + 24), v5, &qword_27D81E4B0, &qword_22813AB20);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_2280F72D0(v5, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  sub_228137D6C();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_2280F8A9C(v5, &qword_27D81E4B0, &qword_22813AB20);
  }

  return result;
}

uint64_t sub_2280EE48C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0);
  sub_2280F7478(a1 + *(v7 + 24), v6, &qword_27D81E4B0, &qword_22813AB20);
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_2280F72D0(v6, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  sub_228137D6C();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_2280F8A9C(v6, &qword_27D81E4B0, &qword_22813AB20);
  }

  return result;
}

uint64_t sub_2280EE5F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2280F7338(a1, v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  v8 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0) + 24);
  sub_2280F8A9C(a2 + v8, &qword_27D81E4B0, &qword_22813AB20);
  sub_2280F72D0(v7, a2 + v8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig.clientID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0) + 24);
  sub_2280F8A9C(v1 + v3, &qword_27D81E4B0, &qword_22813AB20);
  sub_2280F72D0(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig.clientID.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0) + 24);
  *(v5 + 12) = v15;
  sub_2280F7478(v1 + v15, v8, &qword_27D81E4B0, &qword_22813AB20);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_2280F8A9C(v8, &qword_27D81E4B0, &qword_22813AB20);
    }
  }

  else
  {
    sub_2280F72D0(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  }

  return sub_2280EE9E8;
}

uint64_t sub_2280EEB54@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  *a3 = MEMORY[0x277D84F90];
  v5 = a1(0);
  sub_228137D6C();
  v6 = *(v5 + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a3[v6], 1, 1, v7);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig.useCaseID.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
  sub_2280F7478(v1 + *(v6 + 20), v5, &qword_27D81E4A8, &unk_22813DE00);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_2280F72D0(v5, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  sub_228137D6C();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_2280F8A9C(v5, &qword_27D81E4A8, &unk_22813DE00);
  }

  return result;
}

uint64_t sub_2280EED60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
  sub_2280F7478(a1 + *(v7 + 20), v6, &qword_27D81E4A8, &unk_22813DE00);
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_2280F72D0(v6, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  sub_228137D6C();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_2280F8A9C(v6, &qword_27D81E4A8, &unk_22813DE00);
  }

  return result;
}

uint64_t sub_2280EEEC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2280F7338(a1, v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  v8 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0) + 20);
  sub_2280F8A9C(a2 + v8, &qword_27D81E4A8, &unk_22813DE00);
  sub_2280F72D0(v7, a2 + v8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig.useCaseID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0) + 20);
  sub_2280F8A9C(v1 + v3, &qword_27D81E4A8, &unk_22813DE00);
  sub_2280F72D0(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig.useCaseID.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0) + 20);
  *(v5 + 12) = v15;
  sub_2280F7478(v1 + v15, v8, &qword_27D81E4A8, &unk_22813DE00);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_2280F8A9C(v8, &qword_27D81E4A8, &unk_22813DE00);
    }
  }

  else
  {
    sub_2280F72D0(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  }

  return sub_2280EF2BC;
}

BOOL sub_2280EF320(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_2280F7478(v4 + *(v12 + 20), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_2280F8A9C(v11, a1, a2);
  return v14;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig.safetyConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB8, &qword_2281416A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
  sub_2280F7478(v1 + *(v6 + 24), v5, &qword_27D81EAB8, &qword_2281416A0);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_2280F72D0(v5, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  }

  sub_228137D6C();
  v9 = *(v7 + 20);
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_2280F8A9C(v5, &qword_27D81EAB8, &qword_2281416A0);
  }

  return result;
}

uint64_t sub_2280EF5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB8, &qword_2281416A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
  sub_2280F7478(a1 + *(v7 + 24), v6, &qword_27D81EAB8, &qword_2281416A0);
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_2280F72D0(v6, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  }

  sub_228137D6C();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_2280F8A9C(v6, &qword_27D81EAB8, &qword_2281416A0);
  }

  return result;
}

uint64_t sub_2280EF78C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2280F7338(a1, v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  v8 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0) + 24);
  sub_2280F8A9C(a2 + v8, &qword_27D81EAB8, &qword_2281416A0);
  sub_2280F72D0(v7, a2 + v8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig.safetyConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0) + 24);
  sub_2280F8A9C(v1 + v3, &qword_27D81EAB8, &qword_2281416A0);
  sub_2280F72D0(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig.init()@<X0>(uint64_t a2@<X8>)
{
  sub_228137D6C();
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0) + 20);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 1, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig.safetyConfig.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB8, &qword_2281416A0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0) + 24);
  *(v5 + 12) = v15;
  sub_2280F7478(v1 + v15, v8, &qword_27D81EAB8, &qword_2281416A0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_228137D6C();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_2280F8A9C(v8, &qword_27D81EAB8, &qword_2281416A0);
    }
  }

  else
  {
    sub_2280F72D0(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  }

  return sub_2280EFC38;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig.init()@<X0>(uint64_t a2@<X8>)
{
  sub_228137D6C();
  v3 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig.langCheckConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  sub_2280F7478(v1 + *(v6 + 20), v5, &qword_27D81E998, &unk_228141680);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_2280F72D0(v5, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  }

  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  sub_228137D6C();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_2280F8A9C(v5, &qword_27D81E998, &unk_228141680);
  }

  return result;
}

uint64_t sub_2280EFF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  sub_2280F7478(a1 + *(v7 + 20), v6, &qword_27D81E998, &unk_228141680);
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_2280F72D0(v6, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  }

  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  sub_228137D6C();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_2280F8A9C(v6, &qword_27D81E998, &unk_228141680);
  }

  return result;
}

uint64_t sub_2280F00A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2280F7338(a1, v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  v8 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0) + 20);
  sub_2280F8A9C(a2 + v8, &qword_27D81E998, &unk_228141680);
  sub_2280F72D0(v7, a2 + v8, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig.langCheckConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0) + 20);
  sub_2280F8A9C(v1 + v3, &qword_27D81E998, &unk_228141680);
  sub_2280F72D0(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig.langCheckConfig.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0) + 20);
  *(v5 + 12) = v15;
  sub_2280F7478(v1 + v15, v8, &qword_27D81E998, &unk_228141680);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    *(v14 + 12) = 0;
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_2280F8A9C(v8, &qword_27D81E998, &unk_228141680);
    }
  }

  else
  {
    sub_2280F72D0(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  }

  return sub_2280F04A8;
}

void sub_2280F04D0(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_2280F7338(v11, v10, a5);
    sub_2280F8A9C(v14 + v9, a3, a4);
    sub_2280F72D0(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_2280F73A0(v11, a5);
  }

  else
  {
    sub_2280F8A9C(v14 + v9, a3, a4);
    sub_2280F72D0(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

uint64_t sub_2280F0644(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  sub_2280F8A9C(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_2280F06F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_228137D7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2280F0760(uint64_t a1)
{
  v3 = sub_228137D7C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2280F07EC()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5B20);
  __swift_project_value_buffer(v0, qword_2813C5B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813C6C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "today";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "within_24_hours";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "after_24_hours";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "no_event_time";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t sub_2280F0A94()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5CC0);
  __swift_project_value_buffer(v0, qword_2813C5CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B030;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "low_threshold";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "high_threshold";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_ConfidenceRange.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_228137DCC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_228137E3C();
    }
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_ConfidenceRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_228137F3C(), !v4))
  {
    if (!v3[1] || (result = sub_228137F3C(), !v4))
    {
      type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
      return sub_228137D5C();
    }
  }

  return result;
}

uint64_t static Com_Apple_Summarizationkit_Proto_ConfidenceRange.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  sub_228137D7C();
  sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22813926C() & 1;
}

uint64_t sub_2280F0F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280F74E0(&qword_27D81F338, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280F0FE8(uint64_t a1)
{
  v2 = sub_2280F74E0(&qword_2813C5CB0, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280F1054(uint64_t a1, uint64_t a2)
{
  sub_2280F74E0(&qword_2813C5CB0, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);

  return sub_228137EDC();
}

uint64_t sub_2280F10D0(float *a1, float *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  sub_228137D7C();
  sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22813926C() & 1;
}

uint64_t sub_2280F1208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_228137D3C();
  sub_228137D4C();
  return sub_228137DBC();
}

uint64_t Com_Apple_Summarizationkit_Proto_BucketInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_228137D3C(), sub_228137D4C(), result = sub_228137EEC(), !v4))
  {
    type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
    return sub_228137D5C();
  }

  return result;
}

uint64_t static Com_Apple_Summarizationkit_Proto_BucketInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_2280F5678(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  sub_228137D7C();
  sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22813926C() & 1;
}

uint64_t sub_2280F14FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280F74E0(&qword_27D81F330, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_BucketInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280F159C(uint64_t a1)
{
  v2 = sub_2280F74E0(&qword_2813C5FD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_BucketInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280F1608(uint64_t a1, uint64_t a2)
{
  sub_2280F74E0(&qword_2813C5FD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_BucketInfo);

  return sub_228137EDC();
}

uint64_t sub_2280F1684(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_2280F5678(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_228137D7C();
  sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22813926C() & 1;
}

uint64_t sub_2280F1748()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5D88);
  __swift_project_value_buffer(v0, qword_2813C5D88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B030;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bucket";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "range";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_ConfidencePair.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_228137DCC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_2280F7528();
        sub_228137E1C();
      }

      else if (result == 2)
      {
        sub_2280F19F4(a1, v5, a2, a3);
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t sub_2280F19F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  sub_2280F74E0(&qword_2813C5CB0, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
  return sub_228137E9C();
}

uint64_t Com_Apple_Summarizationkit_Proto_ConfidencePair.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_2280F7528(), result = sub_228137F2C(), !v4))
  {
    result = sub_2280F1B74(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0);
      return sub_228137D5C();
    }
  }

  return result;
}

uint64_t sub_2280F1B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAC8, &qword_22813D908);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0);
  sub_2280F7478(a1 + *(v12 + 24), v7, &qword_27D81EAC8, &qword_22813D908);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2280F8A9C(v7, &qword_27D81EAC8, &qword_22813D908);
  }

  sub_2280F72D0(v7, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
  sub_2280F74E0(&qword_2813C5CB0, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
  sub_228137F8C();
  return sub_2280F73A0(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
}

uint64_t sub_2280F1DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  sub_228137D6C();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_2280F1ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280F74E0(&qword_27D81F328, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_ConfidencePair);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280F1F70(uint64_t a1)
{
  v2 = sub_2280F74E0(&qword_2813C5D78, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_ConfidencePair);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280F1FDC(uint64_t a1, uint64_t a2)
{
  sub_2280F74E0(&qword_2813C5D78, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_ConfidencePair);

  return sub_228137EDC();
}

uint64_t sub_2280F2078()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C4ED8);
  __swift_project_value_buffer(v0, qword_2813C4ED8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B030;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "confidence_pairs";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bucket_info";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_228137DCC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0);
        sub_2280F74E0(&qword_2813C5D78, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_ConfidencePair);
        sub_228137E8C();
      }

      else if (result == 2)
      {
        sub_2280F2364(a1, v5, a2, a3);
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t sub_2280F2364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  sub_2280F74E0(&qword_2813C5FD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_BucketInfo);
  return sub_228137E9C();
}

uint64_t Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0), sub_2280F74E0(&qword_2813C5D78, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_ConfidencePair), result = sub_228137F7C(), !v4))
  {
    result = sub_2280F2514(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
      return sub_228137D5C();
    }
  }

  return result;
}

uint64_t sub_2280F2514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F260, &unk_228141690);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  sub_2280F7478(a1 + *(v12 + 24), v7, &qword_27D81F260, &unk_228141690);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2280F8A9C(v7, &qword_27D81F260, &unk_228141690);
  }

  sub_2280F72D0(v7, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
  sub_2280F74E0(&qword_2813C5FD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_BucketInfo);
  sub_228137F8C();
  return sub_2280F73A0(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
}

uint64_t sub_2280F27FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280F74E0(&qword_27D81F320, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280F289C(uint64_t a1)
{
  v2 = sub_2280F74E0(&qword_2813C4EC8, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280F2908(uint64_t a1, uint64_t a2)
{
  sub_2280F74E0(&qword_2813C4EC8, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);

  return sub_228137EDC();
}

uint64_t sub_2280F29A4()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C56F8);
  __swift_project_value_buffer(v0, qword_2813C56F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B480;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "config_version";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confidence_info";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "client_config_list";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_228137DCC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0);
          sub_2280F74E0(&qword_2813C4A88, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig);
          sub_228137E8C();
          break;
        case 2:
          sub_2280F2CFC(a1, v5, a2, a3);
          break;
        case 1:
          sub_228137E4C();
          break;
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t sub_2280F2CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  sub_2280F74E0(&qword_2813C4EC8, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  return sub_228137E9C();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_228137F4C(), !v4))
  {
    result = sub_2280F2ECC(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(*(v3 + 8) + 16))
      {
        type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0);
        sub_2280F74E0(&qword_2813C4A88, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig);
        sub_228137F7C();
      }

      type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
      return sub_228137D5C();
    }
  }

  return result;
}

uint64_t sub_2280F2ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F268, &qword_228142CB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  sub_2280F7478(a1 + *(v12 + 28), v7, &qword_27D81F268, &qword_228142CB0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2280F8A9C(v7, &qword_27D81F268, &qword_228142CB0);
  }

  sub_2280F72D0(v7, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  sub_2280F74E0(&qword_2813C4EC8, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  sub_228137F8C();
  return sub_2280F73A0(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
}

uint64_t sub_2280F3128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  sub_228137D6C();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_2280F31D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2280F3248(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2280F3314(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280F74E0(&qword_27D81F318, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280F33B4(uint64_t a1)
{
  v2 = sub_2280F74E0(&qword_2813C56E8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280F3420(uint64_t a1, uint64_t a2)
{
  sub_2280F74E0(&qword_2813C56E8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);

  return sub_228137EDC();
}

uint64_t sub_2280F34BC()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C4A98);
  __swift_project_value_buffer(v0, qword_2813C4A98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B030;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "client_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "use_case_config_list";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_228137DCC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_2280F37A8(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
        sub_2280F74E0(&qword_2813C4B50, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
        sub_228137E8C();
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t sub_2280F37A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  sub_2280F74E0(&qword_2813C5F08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientID);
  return sub_228137E9C();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2280F3958(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
      sub_2280F74E0(&qword_2813C4B50, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
      sub_228137F7C();
    }

    type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0);
    return sub_228137D5C();
  }

  return result;
}

uint64_t sub_2280F3958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0);
  sub_2280F7478(a1 + *(v12 + 24), v7, &qword_27D81E4B0, &qword_22813AB20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2280F8A9C(v7, &qword_27D81E4B0, &qword_22813AB20);
  }

  sub_2280F72D0(v7, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  sub_2280F74E0(&qword_2813C5F08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientID);
  sub_228137F8C();
  return sub_2280F73A0(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
}

uint64_t sub_2280F3BCC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = MEMORY[0x277D84F90];
  sub_228137D6C();
  v6 = *(a1 + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a3[v6], 1, 1, v7);
}

uint64_t sub_2280F3C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2280F3CF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2280F3DC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280F74E0(&qword_27D81F310, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280F3E64(uint64_t a1)
{
  v2 = sub_2280F74E0(&qword_2813C4A88, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280F3ED0(uint64_t a1, uint64_t a2)
{
  sub_2280F74E0(&qword_2813C4A88, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig);

  return sub_228137EDC();
}

uint64_t sub_2280F3F6C()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C4B60);
  __swift_project_value_buffer(v0, qword_2813C4B60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B030;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "use_case_id";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "safety_config";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_228137DCC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2280F41EC(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_2280F42A0(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_2280F41EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  sub_2280F74E0(&qword_2813C5AD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  return sub_228137E9C();
}

uint64_t sub_2280F42A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  sub_2280F74E0(&qword_2813C4DF8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  return sub_228137E9C();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2280F43C4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_2280F45D4(v3, a1, a2, a3);
    return sub_228137D5C();
  }

  return result;
}

uint64_t sub_2280F43C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
  sub_2280F7478(a1 + *(v12 + 20), v7, &qword_27D81E4A8, &unk_22813DE00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2280F8A9C(v7, &qword_27D81E4A8, &unk_22813DE00);
  }

  sub_2280F72D0(v7, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  sub_2280F74E0(&qword_2813C5AD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  sub_228137F8C();
  return sub_2280F73A0(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
}

uint64_t sub_2280F45D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB8, &qword_2281416A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
  sub_2280F7478(a1 + *(v12 + 24), v7, &qword_27D81EAB8, &qword_2281416A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2280F8A9C(v7, &qword_27D81EAB8, &qword_2281416A0);
  }

  sub_2280F72D0(v7, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  sub_2280F74E0(&qword_2813C4DF8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  sub_228137F8C();
  return sub_2280F73A0(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
}

uint64_t sub_2280F4830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_228137D6C();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_2280F4964(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280F74E0(&qword_27D81F308, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280F4A04(uint64_t a1)
{
  v2 = sub_2280F74E0(&qword_2813C4B50, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280F4A70(uint64_t a1, uint64_t a2)
{
  sub_2280F74E0(&qword_2813C4B50, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);

  return sub_228137EDC();
}

uint64_t sub_2280F4B24(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_228137FBC();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22813A4B0;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21888];
  v13 = sub_228137F9C();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_228137FAC();
}

uint64_t sub_2280F4CB4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_228137FBC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2280F4D78(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_228137DCC();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_2280F4DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  sub_2280F74E0(&qword_2813C5BE0, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  return sub_228137E9C();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2280F4F08(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_228137D5C();
  }

  return result;
}

uint64_t sub_2280F4F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  sub_2280F7478(a1 + *(v12 + 20), v7, &qword_27D81E998, &unk_228141680);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2280F8A9C(v7, &qword_27D81E998, &unk_228141680);
  }

  sub_2280F72D0(v7, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  sub_2280F74E0(&qword_2813C5BE0, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  sub_228137F8C();
  return sub_2280F73A0(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
}

uint64_t sub_2280F5164(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_228139AAC();
  a1(0);
  sub_2280F74E0(a2, a3, a4);
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_2280F51EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_228137D6C();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_2280F5280@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_228137D7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2280F52E8(uint64_t a1)
{
  v3 = sub_228137D7C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2280F53A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280F74E0(&qword_27D81F300, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280F5444@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_228137FBC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2280F54E0(uint64_t a1)
{
  v2 = sub_2280F74E0(&qword_2813C4DF8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280F554C(uint64_t a1, uint64_t a2)
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_2280F55A4(uint64_t a1, uint64_t a2)
{
  sub_2280F74E0(&qword_2813C4DF8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);

  return sub_228137EDC();
}

uint64_t sub_2280F5620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_2280F5678(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 4 * v12);
    v14 = (*(v3 + 56) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = sub_22808C91C(v13);
    if (v18)
    {
      v19 = (*(a2 + 56) + 16 * v17);
      result = *v19;
      if (*v19 == v15 && v19[1] == v16)
      {
        continue;
      }

      result = sub_2281399BC();
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}