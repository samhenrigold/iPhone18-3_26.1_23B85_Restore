uint64_t sub_2753FAB94()
{
  sub_2753FA864(v14);
  sub_2753FC0D8(v14, &v12);
  if (v13)
  {
    sub_2753F16E0(&v12, v9);
    v0 = v10;
    v1 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    OUTLINED_FUNCTION_0_0();
    v3 = v2(v0, v1);
    sub_2753FC520(v14, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_2753FC520(v14, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
    v3 = 0;
  }

  v4 = sub_2753FB4B0(v3);
  v5 = sub_2753FB5F4(v4);

  sub_2753FB858(v5);
  v7 = v6;

  return v7;
}

void *sub_2753FACA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v100 = a2;
  if (*(a1 + 16))
  {
    sub_2753F161C(a1 + 32, &v111);
    v104 = 1;
  }

  else
  {
    v104 = 0;
    v113 = 0;
    v111 = 0u;
    v112 = 0u;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5)
  {
    v108 = 0;
    v6 = 0;
    v101 = a1 + 32;
    v7 = (v4 + 48);
    v8 = MEMORY[0x277D84F90];
    v107 = 1;
    v9 = 1;
    while (1)
    {
      v10 = v7;
      v12 = *(v7 - 2);
      v11 = *(v7 - 1);
      v13 = *v7;
      v14 = v7[40];
      v7 += 64;
      switch(v14 >> 6)
      {
        case 1u:
          v22 = *(&v112 + 1);
          if (*(&v112 + 1))
          {
            LODWORD(v106) = v9;
            OUTLINED_FUNCTION_27();
            v103 = v13;
            v105 = v11;
            v33 = v7;
            v7 = v6;
            v6 = &v98;
            OUTLINED_FUNCTION_7_1();
            MEMORY[0x28223BE20](v34);
            OUTLINED_FUNCTION_18();
            v36 = OUTLINED_FUNCTION_6_2(v35);
            v37(v36);
            v38 = OUTLINED_FUNCTION_14();
            v39(v38);
            v40 = OUTLINED_FUNCTION_24();
            v41(v40, v22);
            OUTLINED_FUNCTION_22_0();
            v9 = v106;
            if (v32)
            {
              if (v106)
              {
                v6 = 0;
              }

              else
              {
                v6 = v99;
                if (__OFADD__(&v98, 1))
                {
                  goto LABEL_91;
                }
              }

              if (v107)
              {
                v108 = 0;
              }

              else
              {
                v54 = __OFADD__(v108++, 1);
                if (v54)
                {
                  goto LABEL_93;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_6_1();
                sub_2754315B8();
                v8 = v96;
              }

              OUTLINED_FUNCTION_13();
              if (v74)
              {
                OUTLINED_FUNCTION_4_2();
                OUTLINED_FUNCTION_23();
              }

              OUTLINED_FUNCTION_1_6(v82, v83, v84, v85);
              if (v32)
              {
                OUTLINED_FUNCTION_9_0(v87);
              }

              else
              {
                if (v86)
                {
                  goto LABEL_98;
                }

                OUTLINED_FUNCTION_8_0();
                v104 = (v33 + 1);
                if (__OFADD__(v33, 1))
                {
                  goto LABEL_101;
                }
              }

              sub_2753FC048(__src, &v111);
              v107 = 0;
              v9 = 0;
              v88 = &v116 + 4;
              goto LABEL_85;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_6_1();
            sub_2754315B8();
            v8 = v92;
          }

          OUTLINED_FUNCTION_17();
          if (v74)
          {
            OUTLINED_FUNCTION_4_2();
            OUTLINED_FUNCTION_23();
          }

          LOBYTE(__src[0]) = v9 & 1;
          v110 = v107 & 1;
          OUTLINED_FUNCTION_5_2(v49, v50, v51, v52);
          OUTLINED_FUNCTION_21(v53);
          v48 = &v118 + 4;
          break;
        case 2u:
          if (v9)
          {
            v6 = 0;
          }

          else
          {
            v54 = __OFADD__(v6++, 1);
            if (v54)
            {
              __break(1u);
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
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
LABEL_101:
              __break(1u);
              JUMPOUT(0x2753FB4A0);
            }
          }

          v22 = *(&v112 + 1);
          if (!*(&v112 + 1))
          {
            goto LABEL_40;
          }

          v105 = v11;
          v106 = v8;
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_7_1();
          MEMORY[0x28223BE20](v55);
          OUTLINED_FUNCTION_18();
          v57 = OUTLINED_FUNCTION_6_2(v56);
          v58(v57);
          v59 = OUTLINED_FUNCTION_14();
          v60(v59);
          v61 = OUTLINED_FUNCTION_24();
          v62(v61, v22);
          if (v13 == v9)
          {
            v8 = v106;
            if (v107)
            {
              v108 = 0;
            }

            else
            {
              v54 = __OFADD__(v108++, 1);
              if (v54)
              {
                goto LABEL_94;
              }
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v69 = v105;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              OUTLINED_FUNCTION_6_1();
              sub_2754315B8();
              v8 = v94;
            }

            OUTLINED_FUNCTION_13();
            if (v74)
            {
              OUTLINED_FUNCTION_4_2();
              OUTLINED_FUNCTION_23();
            }

            OUTLINED_FUNCTION_1_6(v70, v71, v72, v73);
            if (v32)
            {
              OUTLINED_FUNCTION_9_0(v75);
            }

            else
            {
              if (v74)
              {
                goto LABEL_97;
              }

              OUTLINED_FUNCTION_8_0();
              v104 = (v69 + 1);
              if (__OFADD__(v69, 1))
              {
                goto LABEL_99;
              }
            }

            sub_2753FC048(__src, &v111);
            v107 = 0;
            v9 = 0;
            v88 = &v116;
LABEL_85:
            *(v88 - 64) = v22;
            goto LABEL_86;
          }

          v8 = v106;
LABEL_40:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_6_1();
            sub_2754315B8();
            v8 = v93;
          }

          OUTLINED_FUNCTION_17();
          if (v74)
          {
            OUTLINED_FUNCTION_4_2();
            OUTLINED_FUNCTION_23();
          }

          v9 = 0;
          LOBYTE(__src[0]) = v107 & 1;
          OUTLINED_FUNCTION_5_2(v63, v64, v65, v66);
          *(v67 + 64) = v108;
          *(v67 + 72) = __src[0];
          *(v67 + 88) = v47;
          v48 = &v117 + 4;
          break;
        case 3u:
          v22 = *(&v112 + 1);
          if (*(&v112 + 1))
          {
            LODWORD(v106) = v9;
            OUTLINED_FUNCTION_27();
            v103 = v13;
            v105 = v11;
            v23 = v7;
            v7 = v6;
            v6 = &v98;
            OUTLINED_FUNCTION_7_1();
            MEMORY[0x28223BE20](v24);
            OUTLINED_FUNCTION_18();
            v26 = OUTLINED_FUNCTION_6_2(v25);
            v27(v26);
            v28 = OUTLINED_FUNCTION_14();
            v29(v28);
            v30 = OUTLINED_FUNCTION_24();
            v31(v30, v22);
            OUTLINED_FUNCTION_22_0();
            v9 = v106;
            if (v32)
            {
              if (v106)
              {
                v6 = 0;
              }

              else
              {
                v6 = v99;
                if (__OFADD__(&v98, 1))
                {
                  goto LABEL_92;
                }
              }

              if (v107)
              {
                v108 = 0;
              }

              else
              {
                v54 = __OFADD__(v108++, 1);
                if (v54)
                {
                  goto LABEL_95;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_6_1();
                sub_2754315B8();
                v8 = v95;
              }

              OUTLINED_FUNCTION_13();
              if (v74)
              {
                OUTLINED_FUNCTION_4_2();
                OUTLINED_FUNCTION_23();
              }

              OUTLINED_FUNCTION_1_6(v76, v77, v78, v79);
              if (v32)
              {
                OUTLINED_FUNCTION_9_0(v81);
              }

              else
              {
                if (v80)
                {
                  goto LABEL_96;
                }

                OUTLINED_FUNCTION_8_0();
                v104 = (v23 + 1);
                if (__OFADD__(v23, 1))
                {
                  goto LABEL_100;
                }
              }

              sub_2753FC048(__src, &v111);
              v107 = 0;
              v9 = 0;
              v88 = &v115 + 4;
              goto LABEL_85;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_6_1();
            sub_2754315B8();
            v8 = v91;
          }

          OUTLINED_FUNCTION_17();
          if (v74)
          {
            OUTLINED_FUNCTION_4_2();
            OUTLINED_FUNCTION_23();
          }

          LOBYTE(__src[0]) = v9 & 1;
          v110 = v107 & 1;
          OUTLINED_FUNCTION_5_2(v42, v43, v44, v45);
          OUTLINED_FUNCTION_21(v46);
          v48 = &v118;
          break;
        default:
          v105 = v7;
          LOBYTE(__src[0]) = v10[8] & 1;
          LODWORD(v106) = v9;
          v110 = v9 & 1;
          v15 = v107 & 1;
          v109 = v107 & 1;
          v16 = LOBYTE(__src[0]);
          v17 = v9 & 1;
          v18 = v6;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_6_1();
            sub_2754315B8();
            v8 = v89;
          }

          v19 = *(v8 + 16);
          v20 = v8;
          if (v19 >= *(v8 + 24) >> 1)
          {
            OUTLINED_FUNCTION_4_2();
            v20 = v90;
          }

          *(v20 + 16) = v19 + 1;
          v8 = v20;
          v21 = v20 + (v19 << 6);
          *(v21 + 32) = v12;
          *(v21 + 40) = v11;
          *(v21 + 48) = v13;
          *(v21 + 56) = v16;
          v6 = v18;
          *(v21 + 64) = v18;
          *(v21 + 72) = v17;
          *(v21 + 80) = v108;
          *(v21 + 88) = v15;
          v7 = v105;
          v9 = v106;
          goto LABEL_86;
      }

      *(v48 - 64) = v47;
LABEL_86:
      if (!--v5)
      {
        goto LABEL_89;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_89:
  sub_2753F9D50(v8, __src);
  sub_2753FC520(&v111, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
  return memcpy(v100, __src, 0x48uLL);
}

uint64_t sub_2753FB4B0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = v3 + 32;
  v6 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v6;
  }

  while (1)
  {
    sub_2753F161C(v5, &v14);
    v7 = v15;
    v8 = v16;
    __swift_project_boxed_opaque_existential_1(&v14, v15);
    result = (*(v8 + 16))(v7, v8);
    if (__OFSUB__(result, a1))
    {
      break;
    }

    if (((result - a1) & 0x8000000000000003) != 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v14);
    }

    else
    {
      sub_2753F16E0(&v14, v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2754412B4(0, *(v6 + 16) + 1, 1);
        v6 = v17;
      }

      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2754412B4(v11 > 1, v12 + 1, 1);
        v6 = v17;
      }

      *(v6 + 16) = v12 + 1;
      sub_2753F16E0(v13, v6 + 40 * v12 + 32);
    }

    v5 += 40;
    if (!--v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2753FB5F4(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v27 = MEMORY[0x277D84F90];
    sub_2754412B4(0, v3, 0);
    v4 = v27;
    v6 = v2 + 32;
    do
    {
      sub_2753F161C(v6, v21);
      sub_2753FBAC0(v21, a1, &v24);
      if (v25)
      {
        v7 = sub_2753F16E0(&v24, v20);
        MEMORY[0x28223BE20](v7);
        v19[2] = v20;
        if (sub_2753F8B54(sub_2753FC1C0, v19, v2))
        {
          v8 = v22;
          v9 = v23;
          v10 = __swift_project_boxed_opaque_existential_1(v21, v22);
          v25 = v8;
          v26 = *(*(v9 + 8) + 8);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
          (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
        }

        else
        {
          sub_2753F161C(v20, &v24);
        }

        __swift_destroy_boxed_opaque_existential_1(v20);
      }

      else
      {
        sub_2753FC520(&v24, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
        v12 = v22;
        v13 = v23;
        v14 = __swift_project_boxed_opaque_existential_1(v21, v22);
        v25 = v12;
        v26 = *(*(v13 + 8) + 8);
        v15 = __swift_allocate_boxed_opaque_existential_1(&v24);
        (*(*(v12 - 8) + 16))(v15, v14, v12);
      }

      __swift_destroy_boxed_opaque_existential_1(v21);
      v27 = v4;
      v17 = *(v4 + 16);
      v16 = *(v4 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2754412B4(v16 > 1, v17 + 1, 1);
        v4 = v27;
      }

      *(v4 + 16) = v17 + 1;
      sub_2753F16E0(&v24, v4 + 40 * v17 + 32);
      v6 += 40;
      --v3;
    }

    while (v3);
  }

  return v4;
}

void sub_2753FB858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = MEMORY[0x277D84F90];
    v3 = a1 + 32;
    do
    {
      sub_2753F161C(v3, v19);
      v4 = *(v2 + 16);
      if (v4)
      {
        sub_2753F161C(v2 + 40 * v4 - 8, v16);
        v5 = v20;
        v6 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        v7 = (*(v6 + 16))(v5, v6);
        v8 = v17;
        v9 = v18;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        if ((*(v9 + 16))(v8, v9) < v7)
        {
          sub_2753FC168(0, &qword_2809DAEE0, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent, MEMORY[0x277D84560]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_275474500;
          sub_2753F161C(v19, inited + 32);
          v11 = *(v2 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v13 = *(v2 + 24) >> 1, v13 <= v11))
          {
            sub_275431470(isUniquelyReferenced_nonNull_native, v11 + 1, 1, v2);
            v2 = v14;
            v13 = *(v14 + 24) >> 1;
          }

          if (v13 <= *(v2 + 16))
          {
            __break(1u);
            return;
          }

          sub_2753F1680(0, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
          swift_arrayInitWithCopy();

          ++*(v2 + 16);
        }

        __swift_destroy_boxed_opaque_existential_1(v16);
      }

      else
      {
        sub_2753FC168(0, &qword_2809DAEE0, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent, MEMORY[0x277D84560]);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_275474500;
        sub_2753F161C(v19, v15 + 32);

        v2 = v15;
      }

      __swift_destroy_boxed_opaque_existential_1(v19);
      v3 += 40;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_2753FBAC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a1;
  *&v32 = a2;
  v6 = sub_2753FC200(sub_2753FC1E0, v22, a2);
  sub_2753FC2C0(sub_2753FC34C, v6, v7 & 1, v37);
  sub_2753F8CA4(sub_2753FC36C, a2, sub_2753F16E0, v36);
  sub_2753FC0D8(v37, &v32);
  sub_2753FC0D8(v36, &v34);
  if (!v33)
  {
    sub_2753FC520(v36, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
    result = sub_2753FC520(v37, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
    if (!v35)
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v21 = &v34;
    return sub_2753F16E0(v21, a3);
  }

  if (!v35)
  {
    sub_2753FC520(v36, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
    sub_2753FC520(v37, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
    v21 = &v32;
    return sub_2753F16E0(v21, a3);
  }

  sub_2753F16E0(&v32, v29);
  sub_2753F16E0(&v34, v26);
  v9 = v30;
  v8 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  (*(*(*(v8 + 8) + 8) + 8))(&v25, v9);
  v10 = v25;
  v12 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(*(*(*(*(v11 + 8) + 8) + 8) + 8) + 8))(&v24, v12);
  v13 = v24 - v10;
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(*(*(*(*(v14 + 8) + 8) + 8) + 8) + 8))(&v25, v15);
  v16 = v25;
  v18 = v27;
  v17 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  (*(*(*(v17 + 8) + 8) + 8))(&v24, v18);
  sub_2753FC520(v36, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
  sub_2753FC520(v37, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
  if (v13 >= v24 - v16 + -0.000000001)
  {
    v19 = v26;
  }

  else
  {
    v19 = v29;
  }

  sub_2753F161C(v19, a3);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

BOOL sub_2753FBE1C(void *a1, void *a2)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v5 = (*(*(*(v3 + 8) + 8) + 16))(v4);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  return v5 == (*(v7 + 16))(v6, v7);
}

BOOL sub_2753FBEC0(void *a1, void *a2)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(*(*(v3 + 8) + 8) + 8))(&v10, v4);
  v5 = v10;
  v7 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  (*(*(*(*(*(v6 + 8) + 8) + 8) + 8) + 8))(&v9, v7);
  return v9 >= v5;
}

BOOL sub_2753FBF84(void *a1, void *a2)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(*(*(v3 + 8) + 8) + 8))(&v10, v4);
  v5 = v10;
  v7 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  (*(*(*(*(*(v6 + 8) + 8) + 8) + 8) + 8))(&v9, v7);
  return v5 >= v9;
}

uint64_t sub_2753FC048(uint64_t a1, uint64_t a2)
{
  sub_2753FC168(0, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2753FC0D8(uint64_t a1, uint64_t a2)
{
  sub_2753FC168(0, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2753FC168(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = OUTLINED_FUNCTION_28(0, a2, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, v5);
    }
  }
}

uint64_t sub_2753FC200(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  result = *(a3 + 16);
  v6 = a3 + 40 * result - 8;
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    result = a1(v6, a2);
    if (v3)
    {
      break;
    }

    v8 = result;
    v6 -= 40;
    result = v7 - 1;
  }

  while ((v8 & 1) == 0);
  return result;
}

unint64_t sub_2753FC270@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    return sub_2753F161C(a2 + 40 * result + 32, a3);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2753FC2C0@<X0>(uint64_t (*result)(void *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>))(void *)
{
  if (a3)
  {
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    v7[1] = v5;
    v7[2] = v6;
    v7[0] = a2;
    result = result(v7);
    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_2753FC38C(uint64_t a1)
{
  if (!qword_2809DAEF8)
  {
    sub_2753F1680(255, &qword_2809DAEF0, &protocol descriptor for TransitionPlannerSectionBoundaryEvent);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809DAEF8);
    }
  }
}

uint64_t sub_2753FC404(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_19();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_2753FC464(uint64_t a1)
{
  if (!qword_2809DAF00)
  {
    sub_2753FC38C(255);
    v1 = sub_27546E6F0();
    if (!v2)
    {
      atomic_store(v1, &qword_2809DAF00);
    }
  }
}

uint64_t sub_2753FC4BC(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_19();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2753FC520(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4)
{
  sub_2753FC168(0, a2, a3, a4, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_19();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void sub_2753FC5FC(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_28(0, a2, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, v4);
    }
  }
}

uint64_t sub_2753FC650(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4)
{
  sub_2753FC5FC(0, a2, a3, a4);
  OUTLINED_FUNCTION_19();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2753FC6D4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2753FC714(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_0_11(void *result)
{
  *(v1 - 192) = result;
  v2 = *(v1 - 296);
  result[2] = *(v1 - 304);
  result[3] = v2;
  v3 = *(v1 - 272);
  result[4] = *(v1 - 288);
  result[5] = v3;
  return result;
}

void OUTLINED_FUNCTION_1_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v6;
  v12 = a4 + (v8 << 6);
  *(v12 + 32) = v7;
  *(v12 + 40) = v5;
  *(v12 + 48) = v9;
  *(v12 + 56) = v10;
  *(v12 + 64) = *(v11 - 232);
  *(v12 + 88) = v4 & 1 | 0xC0;
}

void OUTLINED_FUNCTION_4_2()
{

  sub_2754315B8();
}

void OUTLINED_FUNCTION_5_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v10 = (a4 + (v7 << 6));
  v10[4] = v6;
  v10[5] = v4;
  v10[6] = v8;
  v10[7] = v9;
}

uint64_t OUTLINED_FUNCTION_8_0()
{
  v2 = *(v0 - 320) + 40 * *(v0 - 264);

  return sub_2753F161C(v2, v0 - 160);
}

double OUTLINED_FUNCTION_9_0@<D0>(uint64_t a1@<X8>)
{
  *(v1 - 128) = 0;
  *(v1 - 264) = a1;
  result = 0.0;
  *(v1 - 160) = 0u;
  *(v1 - 144) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  return sub_2753FC4BC(va, sub_2753FC464);
}

uint64_t OUTLINED_FUNCTION_15()
{
  *(v0 - 160) = 0;
  *(v0 - 192) = 0u;
  *(v0 - 176) = 0u;
  return v0 - 192;
}

uint64_t OUTLINED_FUNCTION_16@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  *(result + 48) = a2;
  *(result + 55) = v4;
  *(result + 53) = v2;
  *(result + 49) = v3;
  return result;
}

double OUTLINED_FUNCTION_20_0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void OUTLINED_FUNCTION_21(char a1@<W8>)
{
  *(v1 + 64) = *(v2 - 160);
  *(v1 + 72) = *(v2 - 232);
  *(v1 + 80) = *(v2 - 216);
  *(v1 + 88) = a1;
}

uint64_t OUTLINED_FUNCTION_26(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v5;
  *(result + 32) = v4;
  *(result + 40) = v3;
  *(result + 48) = v1;
  *(result + 55) = v7;
  *(result + 53) = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_28(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{

  return sub_2753F1680(255, a3, a4);
}

uint64_t OUTLINED_FUNCTION_29()
{

  return sub_2753F16E0((v0 - 192), v0 - 144);
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s11TonalityMapVwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 6))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 3);
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s11TonalityMapVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 3) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_2753FCB58(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = BYTE1(a1);
  if (BYTE1(a1) == (a2 & 0xFF00) >> 8 && a2 == a1)
  {
    return 0;
  }

  v6 = BYTE1(a2);
  if (BYTE1(a1))
  {
    if (BYTE1(a1) != 1)
    {
      return 3;
    }

    if (BYTE1(a2) == 1)
    {
      goto LABEL_19;
    }

    if (BYTE1(a2))
    {
      return 3;
    }
  }

  else
  {
    if (!BYTE1(a2))
    {
      goto LABEL_19;
    }

    if (BYTE1(a2) != 1)
    {
      return 3;
    }
  }

  v7 = sub_2753FCC70(a1);
  if ((v8 & 1) == 0)
  {
    v9 = v7;
    v10 = sub_2753FCC70(v2);
    if ((v11 & 1) == 0 && v9 == v10)
    {
      return 1;
    }
  }

  if (v4)
  {
    if (v6 != 1)
    {
      return 3;
    }
  }

  else if (v6)
  {
    return 3;
  }

LABEL_19:
  v12 = sub_2753FCC70(v3);
  if (v13)
  {
    return 3;
  }

  v14 = v12;
  result = sub_2753FCC70(v2);
  if (v15)
  {
    return 3;
  }

  if (result <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = result;
  }

  if (result >= v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = result;
  }

  if (!v17 && v16 == 11)
  {
    return 2;
  }

  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    if (v16 == v19)
    {
      return 2;
    }

    return 3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2753FCC70(__int16 a1)
{
  v1 = a1;
  if (HIBYTE(a1))
  {
    if (HIBYTE(a1) == 2)
    {
      return 0;
    }

    else
    {
      result = 0;
      for (i = &byte_2884112F9; *(i - 1) != v1 || *i != 1; i += 2)
      {
        if (++result == 12)
        {
          return 0;
        }
      }
    }
  }

  else
  {
    result = 0;
    for (j = &byte_2884112C1; *j || *(j - 1) != v1; j += 2)
    {
      if (++result == 12)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t _s8TonalityVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65283;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s8TonalityVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2753FCE90);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s12TonalityModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x2753FCF94);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2753FCFD0()
{
  result = qword_2809DAF30;
  if (!qword_2809DAF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAF30);
  }

  return result;
}

uint64_t _s13TonalityTonicOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s13TonalityTonicOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x2753FD178);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2753FD1B4()
{
  result = qword_2809DAF38;
  if (!qword_2809DAF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAF38);
  }

  return result;
}

uint64_t sub_2753FD218(double *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = *a1;
    v5 = a1[1];
    v6 = (a2 + 49);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v8 = *(v6 - 17);
      v9 = *(v6 - 9);
      if (v5 >= v8 && v9 >= v4)
      {
        v11 = *(v6 - 1);
        v12 = *v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_27544131C(0, *(v7 + 16) + 1, 1);
        }

        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_27544131C((v13 > 1), v14 + 1, 1);
        }

        *(v7 + 16) = v14 + 1;
        v15 = v7 + 24 * v14;
        *(v15 + 32) = v8;
        *(v15 + 40) = v9;
        *(v15 + 48) = v11;
        *(v15 + 49) = v12;
      }

      v6 += 24;
      --v2;
    }

    while (v2);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v16 = *(v7 + 16);
  if (v16)
  {
    sub_2754412EC(0, v16, 0);
    v17 = v3;
    v18 = *(v3 + 16);
    v19 = 49;
    do
    {
      v20 = *(v7 + v19);
      v21 = *(v3 + 24);
      if (v18 >= v21 >> 1)
      {
        sub_2754412EC(v21 > 1, v18 + 1, 1);
      }

      *(v3 + 16) = v18 + 1;
      *(v3 + v18 + 32) = v20;
      v19 += 24;
      ++v18;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v22 = sub_2753FD4E4(v17);

  return v22;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t _s22VocalActivityMapRegionVwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 18))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s22VocalActivityMapRegionVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

BOOL sub_2753FD48C(uint64_t a1, uint64_t a2)
{
  v2 = vmovn_s64(vceqzq_f64(vsubq_f64(*a2, *a1)));
  if ((v2.i32[0] & v2.i32[1] & 1) == 0)
  {
    return 0;
  }

  return *(a1 + 16) == *(a2 + 16) && *(a1 + 17) == *(a2 + 17);
}

uint64_t sub_2753FD4E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 5;
  }

  result = *(a1 + 32);
  v4 = v1 - 1;
  if (v4)
  {
    v5 = (a1 + 33);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      else
      {
        result = result;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_2753FD524(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_2753FD568(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v5 = sub_275418054(v4, a1);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = a2;
  v13 = v5;
  sub_275418054(v4, v12);
  v15 = v14;
  v17 = v16;
  v18 = v11 >> 1;
  v20 = v19 >> 1;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  v21 = MEMORY[0x277D84F90];
  v22 = v17;
  v23 = v9;
  v24 = v17;
  v25 = v9;
  while (1)
  {
    if (v18 == v25)
    {
LABEL_29:
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease_n();
      sub_2753FD4E4(v21);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return;
    }

    if (v23 < v9 || v25 >= v18)
    {
      break;
    }

    if (v20 == v24)
    {
      goto LABEL_29;
    }

    if (v22 < v17 || v24 >= v20)
    {
      goto LABEL_30;
    }

    v28 = *(v7 + v25);
    v29 = *(v15 + v24++);
    ++v25;
    if (v28 != 5 && v29 != 5)
    {
      if (v29 >= v28)
      {
        v31 = v28;
      }

      else
      {
        v31 = v29;
      }

      v36 = v31;
      v37 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_275431674();
        v21 = v34;
      }

      v32 = *(v21 + 16);
      v33 = v32 + 1;
      if (v32 >= *(v21 + 24) >> 1)
      {
        sub_275431674();
        v33 = v32 + 1;
        v21 = v35;
      }

      *(v21 + 16) = v33;
      *(v21 + v32 + 32) = v36;
      v22 = v24;
      v23 = v25;
      v13 = v37;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t _s13VocalActivityVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65283;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s13VocalActivityVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2753FD8D0);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s17VocalActivityKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x2753FD9D4);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2753FDA10()
{
  result = qword_2809DAF40;
  if (!qword_2809DAF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAF40);
  }

  return result;
}

uint64_t _s21VocalActivityStrengthOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s21VocalActivityStrengthOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x2753FDBECLL);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2753FDC24()
{
  result = qword_2809DAF48;
  if (!qword_2809DAF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAF48);
  }

  return result;
}

uint64_t sub_2753FDC8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2753FDCCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2753FDD38(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_275406650(0, &qword_2809DAFB8, MEMORY[0x277CD8320]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v36 = v8;
  v37 = a2;
  v40 = MEMORY[0x277D84F90];
  sub_27544133C(0, v9, 0);
  v10 = v40;
  v11 = sub_27546E490();
  v12 = *(v11 - 8);
  v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v34 = (v12 + 16);
  v35 = v11;
  v33 = *(v12 + 72);
  while (1)
  {
    v14 = v10;
    v15 = sub_27546E470();
    v39 = v16;
    v17 = v35;
    v18 = v36;
    (*v34)(v36, v13, v35);
    v19 = __swift_storeEnumTagSinglePayload(v18, 0, 1, v17);
    v20 = v37;
    v21 = *v37;
    MEMORY[0x28223BE20](v19);
    *(&v32 - 2) = v18;

    v22 = v21;
    v23 = v3;
    v24 = sub_275424238(sub_275406DB0, (&v32 - 4), v22);
    MEMORY[0x28223BE20](v24);
    *(&v32 - 2) = v18;
    result = sub_275406078(sub_275406DB0, (&v32 - 4));
    v26 = *(*v20 + 16);
    if (v26 < result)
    {
      break;
    }

    sub_27540650C(result, v26);
    v27 = sub_2753FDD38(v24, v20);
    v38 = v23;

    sub_275404F64(v18, &qword_2809DAFB8, MEMORY[0x277CD8320]);
    v10 = v14;
    v40 = v14;
    v29 = *(v14 + 16);
    v28 = *(v14 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_27544133C((v28 > 1), v29 + 1, 1);
      v10 = v40;
    }

    *(v10 + 16) = v29 + 1;
    v30 = (v10 + 24 * v29);
    v3 = v38;
    v31 = v39;
    v30[4] = v15;
    v30[5] = v31;
    v30[6] = v27;
    v13 += v33;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

void *sub_2753FE03C(uint64_t a1, double a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_275431F84(*(a1 + 16), 0, a2);
  v5 = sub_275464A34(&v7, v4 + 32, v3, a1);
  sub_2754066A4(v7);
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v4;
}

__n128 sub_2753FE0CC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  OUTLINED_FUNCTION_0_12();
  sub_275406650(0, v13, v14);
  v16 = OUTLINED_FUNCTION_11_0(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_1();
  v145 = v17 - v18;
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v19);
  v146 = &v138 - v20;
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v21);
  v142 = &v138 - v22;
  OUTLINED_FUNCTION_1_7();
  v139 = v23;
  sub_275406650(0, v24, v25);
  v27 = OUTLINED_FUNCTION_11_0(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8_1();
  v144 = v28 - v29;
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v30);
  v143 = &v138 - v31;
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v32);
  v141 = &v138 - v33;
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v34);
  v36 = &v138 - v35;
  OUTLINED_FUNCTION_6_3();
  sub_275406650(0, v37, v38);
  v40 = OUTLINED_FUNCTION_11_0(v39);
  MEMORY[0x28223BE20](v40);
  v140 = &v138 - v41;
  v42 = *a1;
  v43 = a1[1];
  v44 = sub_2753FE920(a4);
  v45 = sub_2753FEAE4(a4, a2, a6, a3 & 1, v44);
  v47 = v46;
  v49 = v48;
  v50 = v45;
  v52 = v51 & 1;
  v53 = sub_2753FF0E0(v46);
  OUTLINED_FUNCTION_12_0();
  v55 = sub_2753FF524(v54);
  OUTLINED_FUNCTION_12_0();
  v58 = sub_2753FF71C(v56, v57, v53);
  v59 = sub_2753FF994(a4, v50, v52, v47, v49);
  *a5 = v42;
  *(a5 + 8) = v43;
  *(a5 + 16) = v47;
  *(a5 + 24) = v49;
  *(a5 + 32) = v50;
  *(a5 + 40) = v52;
  v60 = _s22MusicKitStructuredSongVMa(0);
  sub_2753FFEA4(a4, a5 + v60[6]);
  *(a5 + v60[7]) = v47 - v53;
  *(a5 + v60[8]) = v47 - v55;
  *(a5 + v60[9]) = v58;
  sub_2753FFF08(a4, v59, v148);
  *(a5 + v60[10]) = v148[0];
  *(a5 + v60[11]) = v59;
  sub_2754003A8(a4, v147);
  v61 = (a5 + v60[12]);
  v62 = v147[1];
  *v61 = v147[0];
  v61[1] = v62;
  v63 = v147[3];
  v61[2] = v147[2];
  v61[3] = v63;
  *(a5 + v60[13]) = v44;
  sub_2754011B4(a4, v148);
  memcpy((a5 + v60[14]), v148, 0x48uLL);
  *(a5 + v60[15]) = sub_27540143C(a4);
  *(a5 + v60[16]) = sub_275401B6C(a4, a6);
  v64 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  sub_275404ED4(a4 + *(v64 + 24), v36, &qword_2809DAF60, v139);
  v65 = sub_27546E2E0();
  OUTLINED_FUNCTION_9_1();
  if (__swift_getEnumTagSinglePayload(v66, v67, v68) == 1)
  {
    OUTLINED_FUNCTION_1_7();
    sub_275404F64(v36, v69, v70);
    sub_2753FE800(0);
    v71 = v140;
    OUTLINED_FUNCTION_14_0(v140, v73, v74, v72);
  }

  else
  {
    v71 = v140;
    sub_27546E2D0();
    OUTLINED_FUNCTION_4_3();
    (*(v75 + 8))(v36, v65);
  }

  v76 = sub_275401F90(v71);
  OUTLINED_FUNCTION_6_3();
  sub_275404F64(v71, v77, v78);
  v79 = a5 + v60[17];
  *(v79 + 4) = WORD2(v76);
  *v79 = v76;
  v80 = OUTLINED_FUNCTION_2_5();
  v81 = v141;
  sub_275404ED4(v80, v141, v82, v83);
  OUTLINED_FUNCTION_9_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v84, v85, v86);
  v88 = v144;
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_1_7();
    sub_275404F64(v81, v89, v90);
    sub_2753FE784();
    v91 = v142;
    OUTLINED_FUNCTION_14_0(v142, v93, v94, v92);
  }

  else
  {
    v95 = v142;
    v96 = v81;
    sub_27546E1D0();
    v91 = v95;
    OUTLINED_FUNCTION_4_3();
    (*(v97 + 8))(v96, v65);
  }

  v98 = v146;
  sub_275402414(v91, v149);
  OUTLINED_FUNCTION_0_12();
  sub_275404F64(v91, v99, v100);
  v101 = a5 + v60[18];
  v102 = v149[1];
  *v101 = v149[0];
  *(v101 + 16) = v102;
  *(v101 + 32) = v150;
  v103 = OUTLINED_FUNCTION_2_5();
  v104 = v143;
  sub_275404ED4(v103, v143, v105, v106);
  OUTLINED_FUNCTION_9_1();
  if (__swift_getEnumTagSinglePayload(v107, v108, v109) == 1)
  {
    OUTLINED_FUNCTION_1_7();
    sub_275404F64(v104, v110, v111);
    sub_2753FE784();
    OUTLINED_FUNCTION_14_0(v98, v113, v114, v112);
  }

  else
  {
    sub_27546E1E0();
    v98 = v146;
    OUTLINED_FUNCTION_4_3();
    (*(v115 + 8))(v104, v65);
  }

  sub_275402414(v98, v151);
  OUTLINED_FUNCTION_0_12();
  sub_275404F64(v98, v116, v117);
  v118 = a5 + v60[19];
  v119 = v151[1];
  *v118 = v151[0];
  *(v118 + 16) = v119;
  *(v118 + 32) = v152;
  v120 = OUTLINED_FUNCTION_2_5();
  sub_275404ED4(v120, v88, v121, v122);
  OUTLINED_FUNCTION_9_1();
  if (__swift_getEnumTagSinglePayload(v123, v124, v125) == 1)
  {
    OUTLINED_FUNCTION_1_7();
    sub_275404F64(v88, v126, v127);
    sub_2753FE784();
    v128 = v145;
    OUTLINED_FUNCTION_14_0(v145, v130, v131, v129);
  }

  else
  {
    v128 = v145;
    sub_27546E1C0();
    OUTLINED_FUNCTION_4_3();
    (*(v132 + 8))(v88, v65);
  }

  sub_275402414(v128, v153);
  sub_275404FBC(a4);
  OUTLINED_FUNCTION_0_12();
  sub_275404F64(v128, v133, v134);
  v135 = (a5 + v60[20]);
  result = v153[0];
  v137 = v153[1];
  *v135 = v153[0];
  v135[1] = v137;
  v135[2].n128_u16[0] = v154;
  return result;
}

void sub_2753FE784()
{
  if (!qword_2809DAF58)
  {
    v0 = sub_27546E270();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DAF58);
    }
  }
}

void sub_2753FE800(uint64_t a1)
{
  if (!qword_2809DAF70)
  {
    sub_27546E2C0();
    sub_2753FE8DC(&qword_2809DAF78, MEMORY[0x277D2AAB0]);
    sub_2753FE8DC(&qword_2809DAF80, MEMORY[0x277D2AAA0]);
    sub_2753FE8DC(&qword_2809DAF88, MEMORY[0x277D2AAA8]);
    v1 = sub_27546E270();
    if (!v2)
    {
      atomic_store(v1, &qword_2809DAF70);
    }
  }
}

uint64_t sub_2753FE8DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_27546E2C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2753FE920(uint64_t a1)
{
  v2 = MEMORY[0x277D2AC90];
  sub_275406650(0, &qword_2809DAFC0, MEMORY[0x277D2AC90]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_27546E3B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  sub_275404ED4(a1 + *(v10 + 32), v5, &qword_2809DAFC0, v2);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_275404F64(v5, &qword_2809DAFC0, MEMORY[0x277D2AC90]);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v11 = sub_275403CA4();
    (*(v7 + 8))(v9, v6);
  }

  return v11;
}

uint64_t sub_2753FEAE4(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x277D2AC90];
  sub_275406650(0, &qword_2809DAFC0, MEMORY[0x277D2AC90]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v56 - v11;
  v13 = sub_27546E3B0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  sub_275404ED4(a1 + *(v17 + 32), v12, &qword_2809DAFC0, v9);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
  {
    (*(v14 + 32))(v16, v12, v13);
    if (!a5)
    {
LABEL_26:
      (*(v14 + 8))(v16, v13);
      return a2;
    }

    *&v18 = COERCE_DOUBLE(sub_27546E380());
    if (v19 & 1) != 0 || (v20 = *&v18, *&v21 = COERCE_DOUBLE(sub_27546E390()), (v22))
    {
      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v23 = sub_27546E3E0();
      __swift_project_value_buffer(v23, qword_2809F3C00);
      v24 = sub_27546E3C0();
      v25 = sub_27546E6D0();
      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_25;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "Spatial duration map: Spatial timing information incomplete. Stereo and/or spatial trailing silence not available.";
      v28 = v25;
      v29 = v24;
      v30 = v26;
      v31 = 2;
    }

    else
    {
      v56 = *&v21;
      v57 = a2;
      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v32 = sub_27546E3E0();
      __swift_project_value_buffer(v32, qword_2809F3C00);
      v33 = sub_27546E3C0();
      v34 = sub_27546E6E0();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 134217984;
        *(v35 + 4) = a3;
        _os_log_impl(&dword_2753EC000, v33, v34, "Spatial duration map: Stereo duration = %f.", v35, 0xCu);
        MEMORY[0x277C78090](v35, -1, -1);
      }

      v36 = sub_27546E3C0();
      v37 = sub_27546E6E0();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 134217984;
        *(v38 + 4) = v20;
        _os_log_impl(&dword_2753EC000, v36, v37, "Spatial duration map: Stereo trailing silence duration = %f.", v38, 0xCu);
        MEMORY[0x277C78090](v38, -1, -1);
      }

      v39 = a3 - v20;

      v40 = sub_27546E3C0();
      v41 = sub_27546E6E0();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 134217984;
        *(v42 + 4) = v39;
        _os_log_impl(&dword_2753EC000, v40, v41, "Spatial duration map: Stereo duration excluding trailing silence = %f.", v42, 0xCu);
        MEMORY[0x277C78090](v42, -1, -1);
      }

      v58 = v39;
      sub_2753EF850(&v58, a5, &v59);
      v43 = v59;
      v44 = sub_27546E3C0();
      v45 = sub_27546E6E0();
      v46 = os_log_type_enabled(v44, v45);
      a2 = v57;
      if (v46)
      {
        v47 = swift_slowAlloc();
        *v47 = 134217984;
        *(v47 + 4) = v43;
        _os_log_impl(&dword_2753EC000, v44, v45, "Spatial duration map: Spatial duration excluding trailing silence = %f.", v47, 0xCu);
        MEMORY[0x277C78090](v47, -1, -1);
      }

      v48 = v56;
      v49 = v56;

      v50 = sub_27546E3C0();
      v51 = sub_27546E6E0();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 134217984;
        *(v52 + 4) = v48;
        _os_log_impl(&dword_2753EC000, v50, v51, "Spatial duration map: Spatial trailing silence duration = %f.", v52, 0xCu);
        MEMORY[0x277C78090](v52, -1, -1);
      }

      v53 = v43 + v49;

      v24 = sub_27546E3C0();
      v54 = sub_27546E6E0();
      if (!os_log_type_enabled(v24, v54))
      {
        goto LABEL_25;
      }

      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v53;
      v27 = "Spatial duration map: Spatial duration = %f.";
      v28 = v54;
      v29 = v24;
      v30 = v26;
      v31 = 12;
    }

    _os_log_impl(&dword_2753EC000, v29, v28, v27, v30, v31);
    MEMORY[0x277C78090](v26, -1, -1);
LABEL_25:

    goto LABEL_26;
  }

  sub_275404F64(v12, &qword_2809DAFC0, MEMORY[0x277D2AC90]);
  return a2;
}

double sub_2753FF0E0(double a1)
{
  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v2 = sub_27546E3E0();
  __swift_project_value_buffer(v2, qword_2809F3C00);
  v3 = sub_27546E3C0();
  v4 = sub_27546E6E0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_2753EC000, v3, v4, "Maximum preferred transition duration: Song duration = %f.", v5, 0xCu);
    MEMORY[0x277C78090](v5, -1, -1);
  }

  if (a1 >= 60.0)
  {
    if (a1 + -30.0 > 0.0)
    {
      v17 = a1 + -30.0;
    }

    else
    {
      v17 = 0.0;
    }

    v18 = sub_27546E3C0();
    v19 = sub_27546E6E0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = 0x403E000000000000;
      _os_log_impl(&dword_2753EC000, v18, v19, "Maximum preferred transition duration: Minimum song duration excluding incoming and outgoing transition durations = %f.", v20, 0xCu);
      MEMORY[0x277C78090](v20, -1, -1);
    }

    v21 = sub_27546E3C0();
    v22 = sub_27546E6E0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = v17;
      _os_log_impl(&dword_2753EC000, v21, v22, "Maximum preferred transition duration: Maximum incoming plus outgoing transition duration = %f.", v23, 0xCu);
      MEMORY[0x277C78090](v23, -1, -1);
    }

    v12 = v17 * 0.5;

    v24 = sub_27546E3C0();
    v25 = sub_27546E6E0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v12;
      _os_log_impl(&dword_2753EC000, v24, v25, "Maximum preferred transition duration: Maximum transition duration = %f.", v26, 0xCu);
      MEMORY[0x277C78090](v26, -1, -1);
    }

    v13 = sub_27546E3C0();
    v14 = sub_27546E6E0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v12;
      v16 = "Maximum preferred transition duration: Maximum preferred offset from song boundary = %f.";
      goto LABEL_23;
    }
  }

  else
  {
    v6 = sub_27546E3C0();
    v7 = sub_27546E6E0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = 0x404E000000000000;
      _os_log_impl(&dword_2753EC000, v6, v7, "Maximum preferred transition duration: Song duration < %f.", v8, 0xCu);
      MEMORY[0x277C78090](v8, -1, -1);
    }

    v9 = sub_27546E3C0();
    v10 = sub_27546E6E0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = 0x4000000000000000;
      _os_log_impl(&dword_2753EC000, v9, v10, "Maximum preferred transition duration: Maximum transition duration for short song = %f.", v11, 0xCu);
      MEMORY[0x277C78090](v11, -1, -1);
    }

    v12 = fmin(a1, 2.0);

    v13 = sub_27546E3C0();
    v14 = sub_27546E6E0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v12;
      v16 = "Maximum preferred transition duration: Maximum offset from song boundary = %f.";
LABEL_23:
      _os_log_impl(&dword_2753EC000, v13, v14, v16, v15, 0xCu);
      MEMORY[0x277C78090](v15, -1, -1);
    }
  }

  return v12;
}

double sub_2753FF524(double a1)
{
  if (a1 <= 60.0)
  {
    v2 = a1;
  }

  else
  {
    v2 = 60.0;
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v3 = sub_27546E3E0();
  __swift_project_value_buffer(v3, qword_2809F3C00);
  v4 = sub_27546E3C0();
  v5 = sub_27546E6E0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_2753EC000, v4, v5, "Maximum outgoing transition duration: Song duration = %f.", v6, 0xCu);
    MEMORY[0x277C78090](v6, -1, -1);
  }

  v7 = sub_27546E3C0();
  v8 = sub_27546E6E0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = 0x404E000000000000;
    _os_log_impl(&dword_2753EC000, v7, v8, "Maximum outgoing transition duration: Maximum transition duration for long song = %f.", v9, 0xCu);
    MEMORY[0x277C78090](v9, -1, -1);
  }

  v10 = sub_27546E3C0();
  v11 = sub_27546E6E0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v2;
    _os_log_impl(&dword_2753EC000, v10, v11, "Maximum outgoing transition duration: Maximum outgoing offset from song boundary = %f.", v12, 0xCu);
    MEMORY[0x277C78090](v12, -1, -1);
  }

  return v2;
}

double sub_2753FF71C(double a1, double a2, double a3)
{
  if (a3 <= 60.0)
  {
    v5 = a3;
  }

  else
  {
    v5 = 60.0;
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v6 = sub_27546E3E0();
  __swift_project_value_buffer(v6, qword_2809F3C00);
  v7 = sub_27546E3C0();
  v8 = sub_27546E6E0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a1;
    _os_log_impl(&dword_2753EC000, v7, v8, "Maximum incoming transition duration: Song duration = %f.", v9, 0xCu);
    MEMORY[0x277C78090](v9, -1, -1);
  }

  v10 = sub_27546E3C0();
  v11 = sub_27546E6E0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a3;
    _os_log_impl(&dword_2753EC000, v10, v11, "Maximum incoming transition duration: Maximum preferred offset from song boundary = %f.", v12, 0xCu);
    MEMORY[0x277C78090](v12, -1, -1);
  }

  v13 = sub_27546E3C0();
  v14 = sub_27546E6E0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = 0x404E000000000000;
    _os_log_impl(&dword_2753EC000, v13, v14, "Maximum incoming transition duration: Maximum transition duration for long song = %f.", v15, 0xCu);
    MEMORY[0x277C78090](v15, -1, -1);
  }

  v16 = sub_27546E3C0();
  v17 = sub_27546E6E0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v5;
    _os_log_impl(&dword_2753EC000, v16, v17, "Maximum incoming transition duration: Maximum incoming offset from song boundary = %f.", v18, 0xCu);
    MEMORY[0x277C78090](v18, -1, -1);
  }

  return v5;
}

void *sub_2753FF994(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  v8 = sub_275402854(a1, a4, a5);
  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v9 = sub_27546E3E0();
  __swift_project_value_buffer(v9, qword_2809F3C00);
  v10 = sub_27546E3C0();
  v11 = sub_27546E6E0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_2753EC000, v10, v11, "Duration-based transition complexities: Expected duration = %f.", v12, 0xCu);
    MEMORY[0x277C78090](v12, -1, -1);
  }

  v13 = sub_275402AC0(a2, a3 & 1, v8);

  v14 = sub_27546E3C0();
  v15 = sub_27546E6E0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v46 = v17;
    *v16 = 136315138;
    v18 = MEMORY[0x277C77770](v13, &type metadata for Transition.Complexity);
    v20 = sub_275446968(v18, v19, &v46);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2753EC000, v14, v15, "Duration-based transition complexities: Complexities = %s.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x277C78090](v17, -1, -1);
    MEMORY[0x277C78090](v16, -1, -1);
  }

  v21 = sub_275402C30(a1);

  v22 = sub_27546E3C0();
  v23 = sub_27546E6E0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v46 = v25;
    *v24 = 136315138;
    v26 = MEMORY[0x277C77770](v21, &type metadata for Transition.Complexity);
    v28 = sub_275446968(v26, v27, &v46);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_2753EC000, v22, v23, "Spatial transition complexities: Complexities = %s.", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x277C78090](v25, -1, -1);
    MEMORY[0x277C78090](v24, -1, -1);
  }

  v29 = sub_275460EB0(v13);
  v30 = sub_275460EB0(v21);
  v32 = sub_275405954(v30, v29, v31);

  v46 = sub_2753FE03C(v32, v33);

  sub_27540506C(&v46);

  v34 = v46;
  if (v46[2])
  {

    v35 = sub_27546E3C0();
    v36 = sub_27546E6E0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v46 = v38;
      *v37 = 136315138;
      v39 = MEMORY[0x277C77770](v34, &type metadata for Transition.Complexity);
      v41 = sub_275446968(v39, v40, &v46);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_2753EC000, v35, v36, "Transition complexities for song: Complexities = %s.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x277C78090](v38, -1, -1);
      MEMORY[0x277C78090](v37, -1, -1);
    }
  }

  else
  {

    v42 = sub_27546E3C0();
    v43 = sub_27546E6E0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2753EC000, v42, v43, "Transition complexities for song: None. Duration-based and spatial transition complexities do not overlap.", v44, 2u);
      MEMORY[0x277C78090](v44, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v34;
}

uint64_t _s22MusicKitStructuredSongVMa(uint64_t a1)
{
  result = qword_2809DAFE0;
  if (!qword_2809DAFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2753FFEA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2753FFF08(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = MEMORY[0x277D2AC90];
  sub_275406650(0, &qword_2809DAFC0, MEMORY[0x277D2AC90]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v10 = sub_27543CF50(a2, &unk_288411310);
  v11 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  sub_275404ED4(a1 + *(v11 + 32), v9, &qword_2809DAFC0, v6);
  v12 = sub_27546E3B0();
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v9, 1, v12);
  sub_275404F64(v9, &qword_2809DAFC0, v6);
  if (a1 == 1)
  {
    if ((v10 & 1) == 0)
    {
      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v13 = sub_27546E3E0();
      __swift_project_value_buffer(v13, qword_2809F3C00);

      v14 = sub_27546E3C0();
      v15 = sub_27546E6E0();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v39 = v17;
        *v16 = 136315138;
        v18 = MEMORY[0x277C77770](a2, &type metadata for Transition.Complexity);
        v20 = sub_275446968(v18, v19, &v39);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_2753EC000, v14, v15, "Timing accuracy issues: Stereo timing inaccurate. Transition complexities reduced. Complexities = %s.", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x277C78090](v17, -1, -1);
        MEMORY[0x277C78090](v16, -1, -1);
      }

      v21 = 1;
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  if (v10)
  {
LABEL_9:
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v22 = sub_27546E3E0();
    __swift_project_value_buffer(v22, qword_2809F3C00);

    v23 = sub_27546E3C0();
    v24 = sub_27546E6E0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v39 = v26;
      *v25 = 136315138;
      v27 = MEMORY[0x277C77770](a2, &type metadata for Transition.Complexity);
      v29 = sub_275446968(v27, v28, &v39);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2753EC000, v23, v24, "Timing accuracy issues: None. Transition complexities not subject to limitations. Complexities = %s.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x277C78090](v26, -1, -1);
      MEMORY[0x277C78090](v25, -1, -1);
    }

    v21 = 0;
    goto LABEL_19;
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v30 = sub_27546E3E0();
  __swift_project_value_buffer(v30, qword_2809F3C00);

  v31 = sub_27546E3C0();
  v32 = sub_27546E6E0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v33 = 136315138;
    v35 = MEMORY[0x277C77770](a2, &type metadata for Transition.Complexity);
    v37 = sub_275446968(v35, v36, &v39);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_2753EC000, v31, v32, "Timing accuracy issues: Spatial timing inaccurate. Transition complexities reduced. Complexities = %s.", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x277C78090](v34, -1, -1);
    MEMORY[0x277C78090](v33, -1, -1);
  }

  v21 = 2;
LABEL_19:
  *a3 = v21;
}

void sub_2754003A8(uint64_t *a1@<X0>, void (**a2)(uint64_t, char *, uint64_t)@<X8>)
{
  v4 = sub_27546E490();
  v106 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v92 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v100 = &v92 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v101 = &v92 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v92 - v11;
  sub_275406650(0, &qword_2809DAFB8, MEMORY[0x277CD8320]);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v93 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v94 = &v92 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v105 = &v92 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v92 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v92 - v23;
  __swift_storeEnumTagSinglePayload(&v92 - v23, 1, 1, v4);
  v25 = *a1;
  v120 = v25;
  v119 = v24;
  swift_bridgeObjectRetain_n();
  v98 = sub_275424238(sub_275406DB0, v118, v25);
  v107 = v24;
  v117 = v24;
  v26 = sub_275406428(sub_275406408, v116, v25);
  *&v113 = v4;
  v96 = v25;
  v97 = 0;
  if ((v27 & 1) == 0)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_71;
    }

    v111 = v26;
    v95 = a2;
    a2 = (v106 + 40);
    *&v114 = v106 + 8;
    v102 = (v106 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = v96;
    v103 = v106 + 16;
    v104 = v12;
    v99 = (v106 + 40);
    while (1)
    {
      v31 = *(v30 + 16);
      if (v29 == v31)
      {
        v28 = v111;
        a2 = v95;
        if (v29 >= v111)
        {
          goto LABEL_41;
        }

LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        swift_once();
LABEL_51:
        v67 = sub_27546E3E0();
        __swift_project_value_buffer(v67, qword_2809F3C00);

        v68 = sub_27546E3C0();
        v69 = sub_27546E6D0();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *&v121[0] = v71;
          *v70 = 136315138;
          v72 = a2;
          v73 = MEMORY[0x277C77770](v24, &_s5GenreVN);
          v75 = v74;

          v76 = v73;
          a2 = v72;
          v77 = sub_275446968(v76, v75, v121);

          *(v70 + 4) = v77;
          _os_log_impl(&dword_2753EC000, v68, v69, "Genre hierarchy contains more than one root genre. Root genres = %s.", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v71);
          MEMORY[0x277C78090](v71, -1, -1);
          MEMORY[0x277C78090](v70, -1, -1);
        }

        else
        {
        }

        sub_275404F64(v107, &qword_2809DAFB8, MEMORY[0x277CD8320]);
LABEL_55:

        v63 = 0uLL;
        v64 = 0uLL;
        v65 = 0uLL;
        v66 = 0uLL;
        goto LABEL_64;
      }

      if (v29 >= v31)
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v32 = (*(v106 + 80) + 32) & ~*(v106 + 80);
      *&v115 = v30;
      v108 = v32;
      v33 = v30 + v32;
      v109 = *(v106 + 72);
      v34 = *(v106 + 16);
      *&v112 = v109 * v29;
      v34(v12, v33 + v109 * v29, v4);
      sub_27546E480();
      if (__swift_getEnumTagSinglePayload(v22, 1, v4) == 1)
      {
        sub_275404F64(v22, &qword_2809DAFB8, MEMORY[0x277CD8320]);
        v35 = 0;
        v36 = 0;
      }

      else
      {
        v35 = sub_27546E470();
        v36 = v37;
        (*v114)(v22, v4);
      }

      v24 = v105;
      v110 = v34;
      v38 = v22;
      sub_275404ED4(v107, v105, &qword_2809DAFB8, MEMORY[0x277CD8320]);
      if (__swift_getEnumTagSinglePayload(v24, 1, v4) == 1)
      {
        break;
      }

      v39 = v24;
      v24 = sub_27546E470();
      v41 = v40;
      a2 = *v114;
      (*v114)(v39, v4);
      if (!v36)
      {
        if (!v41)
        {
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (!v41)
      {
        goto LABEL_21;
      }

      if (v35 == v24 && v36 == v41)
      {

        v12 = v104;
        v4 = v113;
        (a2)(v104, v113);
LABEL_37:
        v22 = v38;
LABEL_38:
        v30 = v115;
        goto LABEL_39;
      }

      v24 = sub_27546E9A0();

      v12 = v104;
      (a2)(v104, v113);
      if (v24)
      {
        v4 = v113;
        goto LABEL_37;
      }

LABEL_25:
      v43 = v111;
      if (v29 == v111)
      {
        v4 = v113;
        v22 = v38;
        v30 = v115;
      }

      else
      {
        v4 = v113;
        if (v111 < 0)
        {
          goto LABEL_66;
        }

        v44 = *(v115 + 16);
        if (v111 >= v44)
        {
          goto LABEL_67;
        }

        v22 = v38;
        v24 = v109 * v111;
        v45 = v110;
        v110(v101, v33 + v109 * v111, v113);
        if (v29 >= v44)
        {
          goto LABEL_68;
        }

        v45(v100, v33 + v112, v4);
        v30 = v115;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_27540663C(v30);
          v30 = v48;
        }

        a2 = v99;
        v46 = v30 + v108;
        v47 = *v99;
        (*v99)(v30 + v108 + v24, v100, v4);
        if (v29 >= *(v30 + 16))
        {
          goto LABEL_69;
        }

        v47(v46 + v112, v101, v4);
        v120 = v30;
        v43 = v111;
      }

      v111 = v43 + 1;
LABEL_39:
      ++v29;
    }

    sub_275404F64(v24, &qword_2809DAFB8, MEMORY[0x277CD8320]);
    if (!v36)
    {
      a2 = *v114;
LABEL_35:
      v12 = v104;
      v22 = v38;
      v4 = v113;
      (a2)(v104, v113);
      goto LABEL_38;
    }

LABEL_21:

    a2 = *v114;
LABEL_24:
    v12 = v104;
    (a2)(v104, v113);
    goto LABEL_25;
  }

  v28 = *(v25 + 16);
  v29 = v28;
LABEL_41:
  sub_27540650C(v28, v29);
  v24 = sub_2753FDD38(v98, &v120);

  v49 = *(v24 + 16);
  if (!v49)
  {
    sub_275404F64(v107, &qword_2809DAFB8, MEMORY[0x277CD8320]);

    goto LABEL_55;
  }

  if (v49 != 1)
  {
    if (qword_2809DACB0 != -1)
    {
      goto LABEL_72;
    }

    goto LABEL_51;
  }

  v95 = a2;
  v51 = *(v24 + 32);
  v50 = *(v24 + 40);
  v52 = *(v24 + 48);

  if (*(v120 + 16))
  {

    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v53 = sub_27546E3E0();
    __swift_project_value_buffer(v53, qword_2809F3C00);
    v54 = sub_27546E3C0();
    v55 = sub_27546E6D0();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v121[0] = v57;
      *v56 = 136315138;

      v59 = MEMORY[0x277C77770](v58, v113);
      v61 = v60;

      v62 = sub_275446968(v59, v61, v121);

      *(v56 + 4) = v62;
      _os_log_impl(&dword_2753EC000, v54, v55, "Genre hierarchy contains orphaned subgenres. Orphaned subgenres = %s.", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x277C78090](v57, -1, -1);
      MEMORY[0x277C78090](v56, -1, -1);
    }

    sub_275404F64(v107, &qword_2809DAFB8, MEMORY[0x277CD8320]);

    v63 = 0uLL;
    v64 = 0uLL;
    v65 = 0uLL;
    v66 = 0uLL;
  }

  else
  {
    v78 = v94;
    sub_2753F8E7C(v96, v94);
    v79 = v93;
    sub_275404ED4(v78, v93, &qword_2809DAFB8, MEMORY[0x277CD8320]);
    v80 = v113;
    if (__swift_getEnumTagSinglePayload(v79, 1, v113) == 1)
    {
      sub_275404F64(v78, &qword_2809DAFB8, MEMORY[0x277CD8320]);

      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v81 = sub_27546E3E0();
      __swift_project_value_buffer(v81, qword_2809F3C00);
      v82 = sub_27546E3C0();
      v83 = sub_27546E6D0();
      v84 = os_log_type_enabled(v82, v83);
      a2 = v95;
      if (v84)
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_2753EC000, v82, v83, "Main genre not identified.", v85, 2u);
        MEMORY[0x277C78090](v85, -1, -1);
      }

      sub_275404F64(v107, &qword_2809DAFB8, MEMORY[0x277CD8320]);
      goto LABEL_55;
    }

    v86 = v106;
    v87 = v92;
    (*(v106 + 32))(v92, v79, v80);
    v88 = sub_27546E470();
    v90 = v89;
    (*(v86 + 8))(v87, v80);
    v91 = MEMORY[0x277CD8320];
    sub_275404F64(v78, &qword_2809DAFB8, MEMORY[0x277CD8320]);
    sub_2753F3210(v51, v50, v52, v88, v90, v121);
    v115 = v121[0];
    v114 = v121[1];
    v113 = v121[2];
    v112 = v121[3];
    sub_275404F64(v107, &qword_2809DAFB8, v91);

    v66 = v112;
    v65 = v113;
    v64 = v114;
    v63 = v115;
  }

  a2 = v95;
LABEL_64:
  *a2 = v63;
  *(a2 + 1) = v64;
  *(a2 + 2) = v65;
  *(a2 + 3) = v66;
}

uint64_t sub_2754011B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = MEMORY[0x277D2A988];
  sub_275406650(0, &qword_2809DAFB0, MEMORY[0x277D2A988]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_27546E1B0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  sub_275404ED4(a1 + *(v13 + 28), v8, &qword_2809DAFB0, v5);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    result = sub_275404F64(v8, &qword_2809DAFB0, MEMORY[0x277D2A988]);
    v15 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v20 = sub_27546E1A0();
    v21 = sub_275403EF4(v20);

    sub_2753F9D50(v21, v27);
    v22 = sub_2753FAB94();
    sub_2753FACA4(v22, v28);
    v26 = v28[0];
    v25 = v28[1];
    v24 = v28[2];
    v23 = v28[3];
    v15 = v29;

    sub_275405018(v27);
    result = (*(v10 + 8))(v12, v9);
    v19 = v23;
    v18 = v24;
    v17 = v25;
    v16 = v26;
  }

  *a2 = v16;
  *(a2 + 16) = v17;
  *(a2 + 32) = v18;
  *(a2 + 48) = v19;
  *(a2 + 64) = v15;
  return result;
}

uint64_t sub_27540143C(uint64_t a1)
{
  v73 = a1;
  v1 = sub_27546E2F0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v68 = &v50[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v74 = &v50[-v5];
  v6 = sub_27546E300();
  v69 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v67 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v50[-v9];
  v11 = sub_27546E350();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v50[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x277D2AAB8];
  sub_275406650(0, &qword_2809DAF60, MEMORY[0x277D2AAB8]);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v50[-v17];
  v19 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  sub_275404ED4(v73 + *(v19 + 24), v18, &qword_2809DAF60, v15);
  v20 = sub_27546E2E0();
  if (__swift_getEnumTagSinglePayload(v18, 1, v20) == 1)
  {
    sub_275404F64(v18, &qword_2809DAF60, MEMORY[0x277D2AAB8]);
    return 0;
  }

  v73 = v2;
  v21 = sub_27546E230();
  (*(*(v20 - 8) + 8))(v18, v20);
  v22 = *(v21 + 16);
  if (!v22)
  {

    return 0;
  }

  v24 = *(v12 + 16);
  v23 = v12 + 16;
  v72 = v24;
  v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
  v52 = v21;
  v26 = v21 + v25;
  v71 = *(v23 + 56);
  v65 = (v69 + 88);
  v66 = (v69 + 16);
  v64 = *MEMORY[0x277D2AC48];
  v57 = *MEMORY[0x277D2AC30];
  v55 = *MEMORY[0x277D2AC40];
  v53 = *MEMORY[0x277D2AC38];
  v51 = *MEMORY[0x277D2AC50];
  v62 = (v73 + 16);
  v63 = (v69 + 8);
  v61 = (v73 + 88);
  v60 = *MEMORY[0x277D2AC28];
  v56 = *MEMORY[0x277D2AC18];
  v59 = (v73 + 8);
  v54 = *MEMORY[0x277D2AC20];
  v73 = v23;
  v27 = (v23 - 8);
  v28 = MEMORY[0x277D84F90];
  v58 = v1;
  v70 = v11;
  do
  {
    v72(v14, v26, v11);
    sub_27546E330();
    v30 = v29;
    sub_27546E310();
    if (v31 < v30)
    {
      goto LABEL_6;
    }

    v32 = v31;
    sub_27546E340();
    v33 = v67;
    (*v66)(v67, v10, v6);
    v34 = (*v65)(v33, v6);
    if (v34 == v64)
    {
      LODWORD(v69) = 0;
    }

    else
    {
      if (v34 == v57)
      {
        v35 = 1;
      }

      else if (v34 == v55)
      {
        v35 = 2;
      }

      else if (v34 == v53)
      {
        v35 = 3;
      }

      else
      {
        if (v34 != v51)
        {
          v46 = *v63;
          (*v63)(v67, v6);
          v46(v10, v6);
          goto LABEL_33;
        }

        v35 = 4;
      }

      LODWORD(v69) = v35;
    }

    v36 = v10;
    v37 = v10;
    v38 = v6;
    (*v63)(v37, v6);
    v39 = v74;
    sub_27546E320();
    v40 = v68;
    (*v62)(v68, v39, v1);
    v41 = (*v61)(v40, v1);
    if (v41 != v60)
    {
      if (v41 == v56)
      {
        v42 = 1;
        goto LABEL_24;
      }

      if (v41 == v54)
      {
        v42 = 2;
        goto LABEL_24;
      }

      v45 = *v59;
      (*v59)(v68, v1);
      v45(v74, v1);
      v6 = v38;
      v10 = v36;
LABEL_33:
      v11 = v70;
LABEL_6:
      (*v27)(v14, v11);
      goto LABEL_29;
    }

    v42 = 0;
LABEL_24:
    (*v59)(v74, v1);
    (*v27)(v14, v70);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_275431804();
      v28 = v47;
    }

    v43 = *(v28 + 16);
    if (v43 >= *(v28 + 24) >> 1)
    {
      sub_275431804();
      v28 = v48;
    }

    *(v28 + 16) = v43 + 1;
    v44 = v28 + 24 * v43;
    *(v44 + 32) = v30;
    *(v44 + 40) = v32;
    *(v44 + 48) = v42;
    *(v44 + 49) = v69;
    v1 = v58;
    v6 = v38;
    v10 = v36;
    v11 = v70;
LABEL_29:
    v26 += v71;
    --v22;
  }

  while (v22);

  return v28;
}

char *sub_275401B6C(uint64_t a1, double a2)
{
  v4 = MEMORY[0x277D2AAB8];
  sub_275406650(0, &qword_2809DAF60, MEMORY[0x277D2AAB8]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  sub_275406650(0, &qword_2809DAFA8, MEMORY[0x277D2A9C0]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_27546E210();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  sub_275404ED4(a1 + *(v15 + 24), v7, &qword_2809DAF60, v4);
  v16 = sub_27546E2E0();
  if (__swift_getEnumTagSinglePayload(v7, 1, v16) == 1)
  {
    sub_275404F64(v7, &qword_2809DAF60, MEMORY[0x277D2AAB8]);
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
LABEL_4:
    sub_275404F64(v10, &qword_2809DAFA8, MEMORY[0x277D2A9C0]);
    return 0;
  }

  sub_27546E220();
  (*(*(v16 - 8) + 8))(v7, v16);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    goto LABEL_4;
  }

  (*(v12 + 32))(v14, v10, v11);
  v17 = *(sub_27546E200() + 16);

  if (!v17)
  {
LABEL_20:
    (*(v12 + 8))(v14, v11);
    return v17;
  }

  v19 = COERCE_DOUBLE(sub_27546E1F0());
  if (v21 & 1) != 0 && (v22 = *(sub_27546E200() + 16), , v20.n128_f64[0] = sub_275404584(v22, a2), (v23) || (v24 = v19, v19 <= 0.0))
  {
    (*(v12 + 8))(v14, v11, v20);
    return 0;
  }

  v25 = sub_27546E200();
  v26 = *(v25 + 16);
  if (!v26)
  {

    (*(v12 + 8))(v14, v11);
    return MEMORY[0x277D84F90];
  }

  v35 = MEMORY[0x277D84F90];
  v27 = 1.0 / v24;
  result = sub_27544116C(0, v26, 0);
  v28 = 0;
  v17 = v35;
  v29 = *(v25 + 16);
  while (v29 != v28)
  {
    if (v28 >= *(v25 + 16))
    {
      goto LABEL_23;
    }

    v30 = *(v25 + 8 * v28 + 32);
    v35 = v17;
    v32 = *(v17 + 16);
    v31 = *(v17 + 24);
    if (v32 >= v31 >> 1)
    {
      result = sub_27544116C((v31 > 1), v32 + 1, 1);
      v17 = v35;
    }

    *(v17 + 16) = v32 + 1;
    v33 = v17 + 16 * v32;
    *(v33 + 32) = v30;
    *(v33 + 40) = v27 * v28++;
    if (v26 == v28)
    {

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_275401F90(uint64_t a1)
{
  sub_275406650(0, &qword_2809DAF68, sub_2753FE800);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v28 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  sub_275406650(0, &qword_2809DAF90, MEMORY[0x277D2AA98]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v28 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  sub_275404ED4(a1, v10, &qword_2809DAF68, sub_2753FE800);
  sub_2753FE800(0);
  v21 = v20;
  if (__swift_getEnumTagSinglePayload(v10, 1, v20) == 1)
  {
    sub_275404F64(v10, &qword_2809DAF68, sub_2753FE800);
    v22 = 1;
  }

  else
  {
    sub_27546E240();
    (*(*(v21 - 8) + 8))(v10, v21);
    v22 = 0;
  }

  v23 = sub_27546E2C0();
  __swift_storeEnumTagSinglePayload(v19, v22, 1, v23);
  v24 = sub_2754045C4(v19);
  sub_275404F64(v19, &qword_2809DAF90, MEMORY[0x277D2AA98]);
  if ((v24 & 0xFF00) == 0x300)
  {
    return 50331648;
  }

  sub_275404ED4(a1, v8, &qword_2809DAF68, sub_2753FE800);
  if (__swift_getEnumTagSinglePayload(v8, 1, v21) == 1)
  {
    sub_275404F64(v8, &qword_2809DAF68, sub_2753FE800);
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v23);
  }

  else
  {
    sub_27546E260();
    (*(*(v21 - 8) + 8))(v8, v21);
  }

  v26 = sub_2754045C4(v17);
  sub_275404F64(v17, &qword_2809DAF90, MEMORY[0x277D2AA98]);
  sub_275404ED4(a1, v5, &qword_2809DAF68, sub_2753FE800);
  if (__swift_getEnumTagSinglePayload(v5, 1, v21) == 1)
  {
    sub_275404F64(v5, &qword_2809DAF68, sub_2753FE800);
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v23);
  }

  else
  {
    sub_27546E250();
    (*(*(v21 - 8) + 8))(v5, v21);
  }

  v27 = sub_2754045C4(v14);
  sub_275404F64(v14, &qword_2809DAF90, MEMORY[0x277D2AA98]);
  return v26 | (v24 << 16) | (HIBYTE(v24) << 24) | (v27 << 32);
}

uint64_t sub_275402414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_275406650(0, &qword_2809DAF50, sub_2753FE784);
  v5 = OUTLINED_FUNCTION_11_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8_1();
  v8 = v6 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - v13;
  sub_275404ED4(a1, &v47 - v13, &qword_2809DAF50, sub_2753FE784);
  sub_2753FE784();
  v16 = v15;
  OUTLINED_FUNCTION_13_0(v14);
  if (v33)
  {
    OUTLINED_FUNCTION_0_12();
    result = sub_275404F64(v14, v17, v18);
  }

  else
  {
    sub_27546E240();
    v19 = v47;
    OUTLINED_FUNCTION_0_9();
    v21 = *(v20 + 8);
    result = v21(v14, v16);
    if (v19 >= 0.0 && v19 <= 1.0)
    {
      v30 = OUTLINED_FUNCTION_5_3();
      sub_275404ED4(v30, v12, v31, v32);
      OUTLINED_FUNCTION_13_0(v12);
      if (v33)
      {
        OUTLINED_FUNCTION_0_12();
        sub_275404F64(v12, v34, v35);
        v24 = 0.0;
        v25 = 1;
      }

      else
      {
        sub_27546E260();
        v36 = v47;
        v37 = v48;
        v21(v12, v16);
        v38 = v36 > 1.0 || v36 < 0.0;
        if (v38)
        {
          v39 = 0.0;
        }

        else
        {
          v39 = v36;
        }

        if (v37)
        {
          v24 = 0.0;
        }

        else
        {
          v24 = v39;
        }

        v25 = (v37 & 1) != 0 || v38;
      }

      v40 = OUTLINED_FUNCTION_5_3();
      sub_275404ED4(v40, v8, v41, v42);
      OUTLINED_FUNCTION_13_0(v8);
      if (v33)
      {
        OUTLINED_FUNCTION_0_12();
        result = sub_275404F64(v8, v43, v44);
      }

      else
      {
        sub_27546E250();
        v45 = v47;
        v46 = v48;
        result = v21(v8, v16);
        if ((v46 & 1) == 0)
        {
          v28 = v45 < 0.0;
          if (v45 > 1.0)
          {
            v28 = 1;
          }

          if (v28)
          {
            v27 = 0.0;
          }

          else
          {
            v27 = v45;
          }

          goto LABEL_35;
        }
      }

      v27 = 0.0;
      LOBYTE(v28) = 1;
LABEL_35:
      v29 = 0;
      v26 = v19;
      goto LABEL_36;
    }
  }

  v24 = 0.0;
  v25 = 0;
  v26 = 0.0;
  v27 = 0.0;
  LOBYTE(v28) = 0;
  v29 = 1;
LABEL_36:
  *a2 = v24;
  *(a2 + 8) = v25;
  *(a2 + 16) = v26;
  *(a2 + 24) = v27;
  *(a2 + 32) = v28;
  *(a2 + 33) = v29;
  return result;
}

double sub_2754026F8@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(v2 + *(a1 + 28));
  *a2 = result;
  return result;
}

double sub_275402708@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(v2 + *(a1 + 32));
  *a2 = result;
  return result;
}

double sub_275402718@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(v2 + *(a1 + 36));
  *a2 = result;
  return result;
}

__n128 sub_2754027E8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 72);
  v4 = *(v3 + 32);
  v5 = *(v3 + 33);
  result = *v3;
  v7 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v7;
  *(a2 + 32) = v4;
  *(a2 + 33) = v5;
  return result;
}

__n128 sub_27540280C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 76);
  v4 = *(v3 + 32);
  v5 = *(v3 + 33);
  result = *v3;
  v7 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v7;
  *(a2 + 32) = v4;
  *(a2 + 33) = v5;
  return result;
}

__n128 sub_275402830@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 80);
  v4 = *(v3 + 32);
  v5 = *(v3 + 33);
  result = *v3;
  v7 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v7;
  *(a2 + 32) = v4;
  *(a2 + 33) = v5;
  return result;
}

double sub_275402854(uint64_t a1, double a2, double a3)
{
  v6 = MEMORY[0x277D2AC90];
  sub_275406650(0, &qword_2809DAFC0, MEMORY[0x277D2AC90]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  sub_275404ED4(a1 + *(v10 + 32), v9, &qword_2809DAFC0, v6);
  v11 = sub_27546E3B0();
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v9, 1, v11);
  sub_275404F64(v9, &qword_2809DAFC0, v6);
  if (a1 == 1)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v12 = sub_27546E3E0();
    __swift_project_value_buffer(v12, qword_2809F3C00);
    v13 = sub_27546E3C0();
    v14 = sub_27546E6E0();
    if (!os_log_type_enabled(v13, v14))
    {
      a3 = a2;
      goto LABEL_12;
    }

    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = a2;
    _os_log_impl(&dword_2753EC000, v13, v14, "Expected duration: Song is stereo. Expected stereo duration = %f.", v15, 0xCu);
    a3 = a2;
    goto LABEL_10;
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v16 = sub_27546E3E0();
  __swift_project_value_buffer(v16, qword_2809F3C00);
  v13 = sub_27546E3C0();
  v17 = sub_27546E6E0();
  if (os_log_type_enabled(v13, v17))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = a3;
    _os_log_impl(&dword_2753EC000, v13, v17, "Expected duration: Song is spatial. Expected spatial duration = %f.", v15, 0xCu);
LABEL_10:
    MEMORY[0x277C78090](v15, -1, -1);
  }

LABEL_12:

  return a3;
}

uint64_t sub_275402AC0(uint64_t a1, char a2, double a3)
{
  v3 = sub_275402EAC(a1, a2 & 1, a3);
  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v4 = sub_27546E3E0();
  __swift_project_value_buffer(v4, qword_2809F3C00);
  v5 = sub_27546E3C0();
  v6 = sub_27546E6E0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = sub_27546E540();
    v11 = sub_275446968(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2753EC000, v5, v6, "Confidence in duration: Confidence = %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x277C78090](v8, -1, -1);
    MEMORY[0x277C78090](v7, -1, -1);
  }

  return *(&off_27A64AF50 + v3);
}

void *sub_275402C30(uint64_t a1)
{
  v2 = MEMORY[0x277D2AC90];
  sub_275406650(0, &qword_2809DAFC0, MEMORY[0x277D2AC90]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_27546E3B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  sub_275404ED4(a1 + *(v10 + 32), v5, &qword_2809DAFC0, v2);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_275404F64(v5, &qword_2809DAFC0, MEMORY[0x277D2AC90]);
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v11 = sub_27546E3E0();
    __swift_project_value_buffer(v11, qword_2809F3C00);
    v12 = sub_27546E3C0();
    v13 = sub_27546E6E0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2753EC000, v12, v13, "Spatial transition complexities: Using default complexities. Not spatial playback.", v14, 2u);
      MEMORY[0x277C78090](v14, -1, -1);
    }

    return &unk_288411310;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v15 = sub_275403204(v9);
    (*(v7 + 8))(v9, v6);
  }

  return v15;
}

uint64_t sub_275402EAC(uint64_t a1, char a2, double a3)
{
  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v6 = sub_27546E3E0();
  __swift_project_value_buffer(v6, qword_2809F3C00);
  v7 = sub_27546E3C0();
  v8 = sub_27546E6E0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a3;
    _os_log_impl(&dword_2753EC000, v7, v8, "Confidence in duration: Expected duration = %f.", v9, 0xCu);
    MEMORY[0x277C78090](v9, -1, -1);
  }

  if ((a2 & 1) == 0)
  {
    v14 = sub_27546E3C0();
    v15 = sub_27546E6E0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = a1;
      _os_log_impl(&dword_2753EC000, v14, v15, "Confidence in duration: Actual duration = %f.", v16, 0xCu);
      MEMORY[0x277C78090](v16, -1, -1);
    }

    v17 = vabdd_f64(a3, *&a1);
    v18 = sub_27546E3C0();
    v19 = sub_27546E6E0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v17;
      _os_log_impl(&dword_2753EC000, v18, v19, "Confidence in duration: Duration delta = %f.", v20, 0xCu);
      MEMORY[0x277C78090](v20, -1, -1);
    }

    v10 = sub_27546E3C0();
    v21 = sub_27546E6E0();
    v22 = os_log_type_enabled(v10, v21);
    if (v17 >= 2.0)
    {
      if (!v22)
      {
        v12 = 0;
        goto LABEL_20;
      }

      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = 0x4000000000000000;
      _os_log_impl(&dword_2753EC000, v10, v21, "Confidence in duration: None: Duration delta >= %f.", v13, 0xCu);
      v12 = 0;
      goto LABEL_17;
    }

    if (v22)
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = 0x4000000000000000;
      _os_log_impl(&dword_2753EC000, v10, v21, "Confidence in duration: High: Duration delta < %f.", v13, 0xCu);
      v12 = 2;
      goto LABEL_17;
    }

LABEL_18:
    v12 = 2;
    goto LABEL_20;
  }

  v10 = sub_27546E3C0();
  v11 = sub_27546E6E0();
  if (!os_log_type_enabled(v10, v11))
  {
    goto LABEL_18;
  }

  v12 = 2;
  v13 = swift_slowAlloc();
  *v13 = 0;
  _os_log_impl(&dword_2753EC000, v10, v11, "Confidence in duration: High: Song is not downloaded.", v13, 2u);
LABEL_17:
  MEMORY[0x277C78090](v13, -1, -1);
LABEL_20:

  return v12;
}

void *sub_275403204(uint64_t a1)
{
  v1 = sub_2754035D0();
  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v2 = sub_27546E3E0();
  __swift_project_value_buffer(v2, qword_2809F3C00);
  v3 = sub_27546E3C0();
  v4 = sub_27546E6E0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25 = v6;
    *v5 = 136315138;
    v7 = sub_27546E540();
    v9 = sub_275446968(v7, v8, &v25);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2753EC000, v3, v4, "Confidence in spatial song being close match: Confidence = %s.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x277C78090](v6, -1, -1);
    MEMORY[0x277C78090](v5, -1, -1);
  }

  v10 = sub_275403810();
  v11 = sub_27546E3C0();
  v12 = sub_27546E6E0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136315138;
    v15 = sub_27546E540();
    v17 = sub_275446968(v15, v16, &v25);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2753EC000, v11, v12, "Confidence in spatial time drift: Confidence = %s.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x277C78090](v14, -1, -1);
    MEMORY[0x277C78090](v13, -1, -1);
  }

  if (v1)
  {
    if (v1 == 1)
    {
      if (v10 == 2)
      {
        v18 = sub_27546E3C0();
        v19 = sub_27546E6E0();
        if (!os_log_type_enabled(v18, v19))
        {
          v21 = &unk_288411388;
          goto LABEL_19;
        }

        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_2753EC000, v18, v19, "Spatial transition complexities: Only beat-matched or fallback transitions allowed. Low confidence in close match but high confidence in time drift.", v20, 2u);
        v21 = &unk_288411388;
        goto LABEL_17;
      }
    }

    else if (v10 == 2)
    {
      v18 = sub_27546E3C0();
      v22 = sub_27546E6E0();
      if (!os_log_type_enabled(v18, v22))
      {
        v21 = &unk_288411310;
        goto LABEL_19;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2753EC000, v18, v22, "Spatial transition complexities: All transitions allowed. High confidence in close match and time drift.", v20, 2u);
      v21 = &unk_288411310;
      goto LABEL_17;
    }
  }

  v18 = sub_27546E3C0();
  v23 = sub_27546E6E0();
  if (!os_log_type_enabled(v18, v23))
  {
    v21 = &unk_2884113B0;
    goto LABEL_19;
  }

  v20 = swift_slowAlloc();
  *v20 = 0;
  _os_log_impl(&dword_2753EC000, v18, v23, "Spatial transition complexities: Only fallback transitions allowed. Low or no confidence in close match and/or time drift.", v20, 2u);
  v21 = &unk_2884113B0;
LABEL_17:
  MEMORY[0x277C78090](v20, -1, -1);
LABEL_19:

  return v21;
}

uint64_t sub_2754035D0()
{
  v0 = sub_27546E370();
  if (v0 == 2)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v1 = sub_27546E3E0();
    __swift_project_value_buffer(v1, qword_2809F3C00);
    v2 = sub_27546E3C0();
    v3 = sub_27546E6D0();
    if (!os_log_type_enabled(v2, v3))
    {
      v5 = 0;
LABEL_17:

      return v5;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2753EC000, v2, v3, "Confidence in spatial song being close match: None. Spatial timing information incomplete. Flag indicating close match not available.", v4, 2u);
    v5 = 0;
LABEL_15:
    MEMORY[0x277C78090](v4, -1, -1);
    goto LABEL_17;
  }

  v6 = v0;
  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v7 = sub_27546E3E0();
  __swift_project_value_buffer(v7, qword_2809F3C00);
  v8 = sub_27546E3C0();
  v9 = sub_27546E6E0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v6 & 1;
    _os_log_impl(&dword_2753EC000, v8, v9, "Confidence in spatial song being close match: Close match = %{BOOL}d.", v10, 8u);
    MEMORY[0x277C78090](v10, -1, -1);
  }

  if ((v6 & 1) == 0)
  {
    v2 = sub_27546E3C0();
    v11 = sub_27546E6E0();
    if (!os_log_type_enabled(v2, v11))
    {
      v5 = 1;
      goto LABEL_17;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2753EC000, v2, v11, "Confidence in spatial song being close match: Low. Not close match.", v4, 2u);
    v5 = 1;
    goto LABEL_15;
  }

  return 2;
}

uint64_t sub_275403810()
{
  v0 = sub_27546E3A0();
  if (v1)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v2 = sub_27546E3E0();
    __swift_project_value_buffer(v2, qword_2809F3C00);
    v3 = sub_27546E3C0();
    v4 = sub_27546E6D0();
    if (!os_log_type_enabled(v3, v4))
    {
      v6 = 0;
      goto LABEL_17;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2753EC000, v3, v4, "Confidence in spatial time drift: None. Spatial timing information incomplete. Time drift not available.", v5, 2u);
    v6 = 0;
LABEL_13:
    MEMORY[0x277C78090](v5, -1, -1);
LABEL_17:

    return v6;
  }

  v7 = *&v0;
  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v8 = sub_27546E3E0();
  __swift_project_value_buffer(v8, qword_2809F3C00);
  v9 = sub_27546E3C0();
  v10 = sub_27546E6E0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v7;
    _os_log_impl(&dword_2753EC000, v9, v10, "Confidence in spatial time drift: Time drift = %f.", v11, 0xCu);
    MEMORY[0x277C78090](v11, -1, -1);
  }

  if (v7 > 0.04)
  {
    v3 = sub_27546E3C0();
    v12 = sub_27546E6E0();
    if (!os_log_type_enabled(v3, v12))
    {
      v6 = 1;
      goto LABEL_17;
    }

    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = 0x3FA47AE147AE147BLL;
    _os_log_impl(&dword_2753EC000, v3, v12, "Confidence in spatial time drift: Low. Time drift > %f.", v5, 0xCu);
    v6 = 1;
    goto LABEL_13;
  }

  return 2;
}

uint64_t sub_275403A74(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_5();
  sub_275406650(0, v3, v4);
  v6 = OUTLINED_FUNCTION_11_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_1();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  sub_27546E480();
  v13 = sub_27546E490();
  OUTLINED_FUNCTION_9_1();
  if (__swift_getEnumTagSinglePayload(v14, v15, v16) == 1)
  {
    OUTLINED_FUNCTION_3_5();
    sub_275404F64(v12, v17, v18);
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v19 = sub_27546E470();
    v20 = v21;
    OUTLINED_FUNCTION_4_3();
    (*(v22 + 8))(v12, v13);
  }

  sub_275404ED4(a2, v9, &qword_2809DAFB8, MEMORY[0x277CD8320]);
  OUTLINED_FUNCTION_9_1();
  if (__swift_getEnumTagSinglePayload(v23, v24, v25) == 1)
  {
    OUTLINED_FUNCTION_3_5();
    sub_275404F64(v9, v26, v27);
    if (!v20)
    {
      goto LABEL_17;
    }

LABEL_14:
    v33 = 0;
LABEL_19:

    return v33 & 1;
  }

  v28 = sub_27546E470();
  v30 = v29;
  OUTLINED_FUNCTION_4_3();
  (*(v31 + 8))(v9, v13);
  if (v20)
  {
    if (v30)
    {
      if (v19 == v28 && v20 == v30)
      {

        v33 = 1;
      }

      else
      {
        v33 = sub_27546E9A0();
      }

      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (v30)
  {
    v33 = 0;
    goto LABEL_19;
  }

LABEL_17:
  v33 = 1;
  return v33 & 1;
}

uint64_t sub_275403CA4()
{
  sub_275403DF4(v7);
  if (v8)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v0 = sub_27546E3E0();
    __swift_project_value_buffer(v0, qword_2809F3C00);
    v1 = sub_27546E3C0();
    v2 = sub_27546E6D0();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_2753EC000, v1, v2, "Spatial time alignment map: Spatial timing information incomplete. Transformation between stereo and spatial times not identified.", v3, 2u);
      MEMORY[0x277C78090](v3, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    v6 = v7[0];
    v5 = v7[1];
    sub_275406C8C(0, &qword_2809DAFD8, &_s25SpatialTimeAlignmentPointVN, MEMORY[0x277D84560]);
    result = swift_allocObject();
    *(result + 16) = xmmword_275474500;
    *(result + 32) = v6;
    *(result + 40) = v5;
  }

  return result;
}

void sub_275403DF4(uint64_t a1@<X8>)
{
  v2 = sub_27546E360();
  if (v3)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v4 = sub_27546E3E0();
    __swift_project_value_buffer(v4, qword_2809F3C00);
    v5 = sub_27546E3C0();
    v6 = sub_27546E6D0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2753EC000, v5, v6, "Spatial time alignment map: Spatial timing information incomplete. Start offset not available.", v7, 2u);
      MEMORY[0x277C78090](v7, -1, -1);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = v2;
    *(a1 + 16) = 0;
  }
}

uint64_t sub_275403EF4(uint64_t a1)
{
  v2 = sub_27546E170();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = sub_27546E190();
  v8 = 0;
  v67 = 0;
  v69 = 0;
  v9 = (v3 + 88);
  v10 = *(v7 - 8);
  v11 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v12 = *(v10 + 72);
  v65 = *MEMORY[0x277D2A970];
  v63 = *MEMORY[0x277D2A978];
  v58 = *MEMORY[0x277D2A968];
  v70 = MEMORY[0x277D84F90];
  v54 = (v3 + 8);
  v13 = 0;
  v56 = *MEMORY[0x277D2A980];
  v64 = 1;
  v66 = 1;
  v68 = 1;
  v14 = 1;
  v61 = v5;
  v62 = v2;
  v60 = v12;
  while (1)
  {
    v15 = MEMORY[0x277C772B0]();
    sub_27546E180();
    result = (*v9)(v5, v2);
    if (result == v65)
    {
      break;
    }

    if (result == v63)
    {
      if (v14)
      {
        v13 = 0;
      }

      else
      {
        v17 = __OFADD__(v13++, 1);
        if (v17)
        {
          goto LABEL_63;
        }
      }

      if (v68)
      {
        v69 = 0;
      }

      else
      {
        v17 = __OFADD__(v69++, 1);
        if (v17)
        {
          goto LABEL_64;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2754315B8();
        v70 = v48;
      }

      v28 = *(v70 + 16);
      v29 = v59;
      if (v28 >= *(v70 + 24) >> 1)
      {
        sub_2754315B8();
        v29 = v59;
        v70 = v49;
      }

      v68 = 0;
      v75 = v66 & 1;
      v74 = v64 & 1;
      v30 = v29 & 1 | 0x40;
      v32 = v69;
      v31 = v70;
      *(v70 + 16) = v28 + 1;
      v33 = v31 + (v28 << 6);
      v14 = 0;
      *(v33 + 32) = v15;
      *(v33 + 40) = v13;
      *(v33 + 48) = v32;
      *(v33 + 56) = v67;
      *(v33 + 64) = v75;
      *(v33 + 72) = v8;
      *(v33 + 80) = v74;
      *(v33 + 88) = v30;
      v59 = v30;
    }

    else if (result == v58)
    {
      if (v14)
      {
        v13 = 0;
      }

      else
      {
        v17 = __OFADD__(v13++, 1);
        if (v17)
        {
          goto LABEL_65;
        }
      }

      if (v68)
      {
        v69 = 0;
      }

      else
      {
        v17 = __OFADD__(v69++, 1);
        if (v17)
        {
          goto LABEL_66;
        }
      }

      if (v66)
      {
        v67 = 0;
      }

      else
      {
        v17 = __OFADD__(v67++, 1);
        if (v17)
        {
          goto LABEL_67;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2754315B8();
        v70 = v50;
      }

      v34 = *(v70 + 16);
      v35 = v57;
      if (v34 >= *(v70 + 24) >> 1)
      {
        sub_2754315B8();
        v35 = v57;
        v70 = v51;
      }

      v66 = 0;
      v68 = 0;
      v76 = v64 & 1;
      v36 = v35 & 1 | 0xFFFFFF80;
      v38 = v69;
      v37 = v70;
      *(v70 + 16) = v34 + 1;
      v39 = v37 + (v34 << 6);
      v14 = 0;
      *(v39 + 32) = v15;
      *(v39 + 40) = v13;
      *(v39 + 48) = v38;
      *(v39 + 56) = v67;
      *(v39 + 64) = v8;
      *(v39 + 72) = v76;
      *(v39 + 88) = v36;
      v57 = v36;
    }

    else if (result == v56)
    {
      if (v14)
      {
        v13 = 0;
      }

      else
      {
        v17 = __OFADD__(v13++, 1);
        if (v17)
        {
          goto LABEL_68;
        }
      }

      if (v68)
      {
        v69 = 0;
      }

      else
      {
        v17 = __OFADD__(v69++, 1);
        if (v17)
        {
          goto LABEL_69;
        }
      }

      if (v66)
      {
        v67 = 0;
      }

      else
      {
        v17 = __OFADD__(v67++, 1);
        if (v17)
        {
          goto LABEL_70;
        }
      }

      if (v64)
      {
        v8 = 0;
      }

      else
      {
        v17 = __OFADD__(v8++, 1);
        if (v17)
        {
          goto LABEL_71;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2754315B8();
        v70 = v52;
      }

      v40 = *(v70 + 16);
      v41 = v55;
      if (v40 >= *(v70 + 24) >> 1)
      {
        sub_2754315B8();
        v41 = v55;
        v70 = v53;
      }

      v64 = 0;
      v66 = 0;
      v68 = 0;
      v42 = v70;
      *(v70 + 16) = v40 + 1;
      v43 = v41 & 1 | 0xFFFFFFC0;
      v44 = v42 + (v40 << 6);
      v14 = 0;
      *(v44 + 32) = v15;
      v45 = v69;
      *(v44 + 40) = v13;
      *(v44 + 48) = v45;
      *(v44 + 56) = v67;
      *(v44 + 64) = v8;
      *(v44 + 88) = v43;
      v55 = v43;
    }

    else
    {
      (*v54)(v5, v2);
    }

LABEL_58:
    v11 += v12;
    if (!--v6)
    {
      return v70;
    }
  }

  if (v14)
  {
    v13 = 0;
LABEL_10:
    v18 = v9;
    v73 = v68 & 1;
    v72 = v66 & 1;
    v19 = v64 & 1;
    v71 = v64 & 1;
    v20 = v68 & 1;
    v21 = v66 & 1;
    v22 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2754315B8();
      v70 = v46;
    }

    v23 = *(v70 + 16);
    if (v23 >= *(v70 + 24) >> 1)
    {
      sub_2754315B8();
      v70 = v47;
    }

    v25 = v69;
    v24 = v70;
    *(v70 + 16) = v23 + 1;
    v26 = v24 + (v23 << 6);
    *(v26 + 32) = v15;
    *(v26 + 40) = v13;
    *(v26 + 48) = v25;
    v27 = v67;
    *(v26 + 56) = v20;
    *(v26 + 64) = v27;
    *(v26 + 72) = v21;
    *(v26 + 80) = v22;
    v14 = 0;
    v8 = v22;
    *(v26 + 88) = v19;
    v5 = v61;
    v2 = v62;
    v9 = v18;
    v12 = v60;
    goto LABEL_58;
  }

  v17 = __OFADD__(v13++, 1);
  if (!v17)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
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

double sub_275404584(int64_t a1, double result)
{
  if (result > 0.0 && a1 >= 1)
  {
    return a1 / result;
  }

  return result;
}

uint64_t sub_2754045C4(uint64_t a1)
{
  sub_275406650(0, &qword_2809DAF98, MEMORY[0x277D2A9E0]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = MEMORY[0x277D2AA98];
  sub_275406650(0, &qword_2809DAF90, MEMORY[0x277D2AA98]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  sub_275406650(0, &qword_2809DAFA0, MEMORY[0x277D2AA90]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  sub_275404ED4(a1, v11, &qword_2809DAF90, v5);
  v15 = sub_27546E2C0();
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) == 1)
  {
    sub_275404F64(v11, &qword_2809DAF90, MEMORY[0x277D2AA98]);
    v16 = sub_27546E2A0();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v16);
  }

  else
  {
    sub_27546E2B0();
    (*(*(v15 - 8) + 8))(v11, v15);
  }

  v17 = sub_27540493C(v14);
  sub_275404F64(v14, &qword_2809DAFA0, MEMORY[0x277D2AA90]);
  if (v17 == 12)
  {
    return 768;
  }

  sub_275404ED4(a1, v9, &qword_2809DAF90, MEMORY[0x277D2AA98]);
  if (__swift_getEnumTagSinglePayload(v9, 1, v15) == 1)
  {
    sub_275404F64(v9, &qword_2809DAF90, MEMORY[0x277D2AA98]);
    v18 = sub_27546E280();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v18);
  }

  else
  {
    sub_27546E290();
    (*(*(v15 - 8) + 8))(v9, v15);
  }

  v19 = sub_275404CD8(v4);
  sub_275404F64(v4, &qword_2809DAF98, MEMORY[0x277D2A9E0]);
  if (v19 == 3)
  {
    return 768;
  }

  else
  {
    return v17 | (v19 << 8);
  }
}

uint64_t sub_27540493C(uint64_t a1)
{
  v2 = MEMORY[0x277D2AA90];
  sub_275406650(0, &qword_2809DAFA0, MEMORY[0x277D2AA90]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  sub_275404ED4(a1, &v18 - v7, &qword_2809DAFA0, v2);
  v9 = sub_27546E2A0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    goto LABEL_2;
  }

  sub_275404ED4(v8, v6, &qword_2809DAFA0, MEMORY[0x277D2AA90]);
  v11 = *(v9 - 8);
  v12 = (*(v11 + 88))(v6, v9);
  if (v12 == *MEMORY[0x277D2AA20])
  {
LABEL_4:
    v10 = 0;
    goto LABEL_17;
  }

  if (v12 == *MEMORY[0x277D2A9E8])
  {
    v10 = 1;
    goto LABEL_17;
  }

  if (v12 == *MEMORY[0x277D2AA58] || v12 == *MEMORY[0x277D2AA28])
  {
    v10 = 2;
    goto LABEL_17;
  }

  if (v12 == *MEMORY[0x277D2A9F0])
  {
LABEL_14:
    v10 = 3;
    goto LABEL_17;
  }

  if (v12 == *MEMORY[0x277D2AA60])
  {
    goto LABEL_16;
  }

  if (v12 == *MEMORY[0x277D2AA30])
  {
    goto LABEL_14;
  }

  if (v12 == *MEMORY[0x277D2A9F8])
  {
LABEL_16:
    v10 = 4;
    goto LABEL_17;
  }

  if (v12 == *MEMORY[0x277D2AA68] || v12 == *MEMORY[0x277D2AA38])
  {
    v10 = 5;
    goto LABEL_17;
  }

  if (v12 == *MEMORY[0x277D2AA00])
  {
    v10 = 6;
    goto LABEL_17;
  }

  if (v12 == *MEMORY[0x277D2AA70] || v12 == *MEMORY[0x277D2AA40])
  {
    v10 = 7;
    goto LABEL_17;
  }

  if (v12 == *MEMORY[0x277D2AA08])
  {
LABEL_35:
    v10 = 8;
    goto LABEL_17;
  }

  if (v12 == *MEMORY[0x277D2AA78])
  {
    goto LABEL_37;
  }

  if (v12 == *MEMORY[0x277D2AA48])
  {
    goto LABEL_35;
  }

  if (v12 == *MEMORY[0x277D2AA10])
  {
LABEL_37:
    v10 = 9;
    goto LABEL_17;
  }

  if (v12 == *MEMORY[0x277D2AA80] || v12 == *MEMORY[0x277D2AA50])
  {
    v10 = 10;
    goto LABEL_17;
  }

  if (v12 == *MEMORY[0x277D2AA18])
  {
    v10 = 11;
    goto LABEL_17;
  }

  if (v12 == *MEMORY[0x277D2AA88])
  {
    goto LABEL_4;
  }

  (*(v11 + 8))(v6, v9);
LABEL_2:
  v10 = 12;
LABEL_17:
  sub_275404F64(v8, &qword_2809DAFA0, MEMORY[0x277D2AA90]);
  return v10;
}

uint64_t sub_275404CD8(uint64_t a1)
{
  v2 = MEMORY[0x277D2A9E0];
  sub_275406650(0, &qword_2809DAF98, MEMORY[0x277D2A9E0]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  sub_275404ED4(a1, &v14 - v7, &qword_2809DAF98, v2);
  v9 = sub_27546E280();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    sub_275404ED4(v8, v6, &qword_2809DAF98, MEMORY[0x277D2A9E0]);
    v11 = *(v9 - 8);
    v12 = (*(v11 + 88))(v6, v9);
    if (v12 == *MEMORY[0x277D2A9C8])
    {
      v10 = 0;
      goto LABEL_9;
    }

    if (v12 == *MEMORY[0x277D2A9D0])
    {
      v10 = 1;
      goto LABEL_9;
    }

    if (v12 == *MEMORY[0x277D2A9D8])
    {
      v10 = 2;
      goto LABEL_9;
    }

    (*(v11 + 8))(v6, v9);
  }

  v10 = 3;
LABEL_9:
  sub_275404F64(v8, &qword_2809DAF98, MEMORY[0x277D2A9E0]);
  return v10;
}

uint64_t sub_275404ED4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_275406650(0, a3, a4);
  OUTLINED_FUNCTION_0_9();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_275404F64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_275406650(0, a2, a3);
  OUTLINED_FUNCTION_0_9();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_275404FBC(uint64_t a1)
{
  v2 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_27540506C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_275464C44(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v4;
  sub_2754050D8(v5);
  *a1 = v2;
}

void sub_2754050D8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_27546E970();
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
        v6 = sub_27546E630();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_275405228(v7, v8, a1, v4);
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
    sub_2754051CC(0, v2, 1, a1);
  }
}

uint64_t sub_2754051CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *(v9 - 1);
        if (v7 >= v10)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v10;
        *--v9 = v7;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      ++v5;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_275405228(unsigned __int8 **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v72 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + v8);
        v10 = *(*a3 + v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + v11++) >= v12);
          v12 = *(*a3 + v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + v16);
                *(v17 + v16) = *(v17 + v15);
                *(v17 + v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = (*a3 + v8);
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *(v25 - 1);
                if (v23 >= v26)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v26;
                *--v25 = v23;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              ++v21;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v74 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2754310F8();
        v7 = v70;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_2754310F8();
        v7 = v71;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v75 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
            __break(1u);
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
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_2754057F4((*a3 + *v64), (*a3 + *v66), (*a3 + v67), v75);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v74;
      a4 = v72;
      if (v74 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_2754056C8(&v77, *a1, a3);
LABEL_89:
}

uint64_t sub_2754056C8(uint64_t *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2754647E4(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_2754057F4((*a3 + *v9), (*a3 + *v11), (*a3 + v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_2754057F4(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (a2 - a1 < a3 - a2)
  {
    sub_275444334(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      v11 = v4 >= v10 || v6 >= v5;
      if (v11)
      {
        v6 = v7;
        goto LABEL_42;
      }

      v12 = *v6;
      v13 = *v4;
      if (v12 >= v13)
      {
        v11 = v7 >= v4++;
        v15 = !v11 || v7 >= v4;
        LOBYTE(v12) = v13;
        if (v15)
        {
LABEL_18:
          *v7 = v12;
        }
      }

      else
      {
        v11 = v7 >= v6++;
        if (!v11 || v7 >= v6)
        {
          goto LABEL_18;
        }
      }

      ++v7;
    }
  }

  sub_275444334(a2, a3 - a2, a4);
  v10 = &v4[v9];
LABEL_21:
  v16 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v18 = *(v10 - 1);
    v19 = *v16;
    if (v18 < v19)
    {
      v21 = v5 + 1 < v6 || v5 >= v6;
      --v6;
      if (v21)
      {
        *v5 = v19;
        v6 = v16;
      }

      goto LABEL_21;
    }

    if ((v5 + 1) < v10 || v5 >= v10)
    {
      *v5 = v18;
    }

    --v5;
    --v10;
  }

LABEL_42:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

unint64_t sub_275405954(uint64_t a1, uint64_t a2, __n128 a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;

  if (v6 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = v15 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_275463328(0, v7, v9);
    v11 = sub_275405BAC(v9, v7, a2, a1, v10);
  }

  else
  {
    v13 = swift_slowAlloc();

    v11 = sub_275405B1C(v13, v7, a2, a1, v14);

    MEMORY[0x277C78090](v13, -1, -1);
  }

  return v11;
}

void *sub_275405B1C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v9 = sub_275405BAC(v8, a2, a3, a4, a5);

    return v9;
  }

  return result;
}

unint64_t sub_275405BAC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v33 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v36 = 0;
    v21 = 0;
    v22 = 1 << *(a3 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(a3 + 56);
    v25 = (v22 + 63) >> 6;
LABEL_24:
    while (v24)
    {
      v26 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_31:
      v35 = v26 | (v21 << 6);
      v29 = *(*(a3 + 48) + v35);
      sub_27546EA90();
      MEMORY[0x277C77BF0](v29);
      result = sub_27546EAC0();
      v30 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v31 = result & v30;
        if (((*(a4 + 56 + (((result & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v30)) & 1) == 0)
        {
          break;
        }

        result = v31 + 1;
        if (*(*(a4 + 48) + v31) == v29)
        {
          *(v33 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
          v20 = __OFADD__(v36++, 1);
          if (!v20)
          {
            goto LABEL_24;
          }

          __break(1u);
          goto LABEL_37;
        }
      }
    }

    v27 = v21;
    while (1)
    {
      v21 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v21 >= v25)
      {
LABEL_37:

        return sub_275405E84(v33, a2, v36, a3);
      }

      v28 = *(a3 + 56 + 8 * v21);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_31;
      }
    }
  }

  else
  {
    v36 = 0;
    v7 = 0;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
LABEL_6:
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
LABEL_13:
      v15 = *(*(a4 + 48) + (v12 | (v7 << 6)));
      sub_27546EA90();
      MEMORY[0x277C77BF0](v15);
      result = sub_27546EAC0();
      v16 = ~(-1 << *(a3 + 32));
      do
      {
        v17 = result & v16;
        v18 = (result & v16) >> 6;
        v19 = 1 << (result & v16);
        if ((v19 & *(a3 + 56 + 8 * v18)) == 0)
        {
          v10 = v34;
          goto LABEL_6;
        }

        result = v17 + 1;
      }

      while (*(*(a3 + 48) + v17) != v15);
      v33[v18] |= v19;
      v20 = __OFADD__(v36++, 1);
      v10 = v34;
      if (v20)
      {
        goto LABEL_40;
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_37;
      }

      v14 = *(a4 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v34 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_275405E84(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_2754066AC(0);
  result = sub_27546E740();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_27546EA90();
    MEMORY[0x277C77BF0](v16);
    result = sub_27546EAC0();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_275406078(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v4 = v2;
  v7 = sub_27546E490();
  v50 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v41 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v16 = *v4;
  result = sub_275406428(a1, a2, *v4);
  if (!v3)
  {
    v46 = a2;
    v47 = v15;
    v51 = v7;
    if (v18)
    {
      return *(v16 + 16);
    }

    else
    {
      v41 = v4;
      v53 = result;
      v19 = result + 1;
      if (!__OFADD__(result, 1))
      {
        v54 = 0;
        v20 = v50;
        v21 = v51;
        v49 = v50 + 16;
        v44 = v13;
        v45 = (v50 + 8);
        v42 = (v50 + 40);
        v43 = v10;
        v22 = v47;
        while (1)
        {
          v23 = *(v16 + 16);
          if (v19 == v23)
          {
            return v53;
          }

          if (v19 >= v23)
          {
            break;
          }

          v24 = v16;
          v48 = (*(v20 + 80) + 32) & ~*(v20 + 80);
          v25 = v16 + v48;
          v26 = *(v20 + 72);
          v55 = v19;
          v27 = *(v20 + 16);
          v52 = v26 * v19;
          v27(v22, v16 + v48 + v26 * v19, v21);
          v28 = v54;
          v29 = a1;
          v30 = a1(v22);
          v54 = v28;
          if (v28)
          {
            return (*v45)(v22, v21);
          }

          v31 = v30;
          result = (*v45)(v22, v21);
          if (v31)
          {
            a1 = v29;
            v20 = v50;
            v21 = v51;
            v22 = v47;
            v16 = v24;
            v32 = v55;
          }

          else
          {
            v32 = v55;
            if (v55 == v53)
            {
              a1 = v29;
              v20 = v50;
              v21 = v51;
              v22 = v47;
            }

            else
            {
              if ((v53 & 0x8000000000000000) != 0)
              {
                goto LABEL_26;
              }

              v33 = *(v24 + 16);
              if (v53 >= v33)
              {
                goto LABEL_27;
              }

              v34 = v26 * v53;
              v35 = v51;
              result = (v27)(v44, v25 + v34, v51);
              if (v55 >= v33)
              {
                goto LABEL_28;
              }

              v36 = v25 + v52;
              v37 = v43;
              v27(v43, v36, v35);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_27540663C(v24);
                v24 = v40;
              }

              a1 = v29;
              v38 = v24 + v48;
              v39 = *v42;
              v21 = v51;
              result = (*v42)(v24 + v48 + v34, v37, v51);
              v22 = v47;
              if (v55 >= *(v24 + 16))
              {
                goto LABEL_29;
              }

              result = v39(v38 + v52, v44, v21);
              v32 = v55;
              *v41 = v24;
              v20 = v50;
            }

            v16 = v24;
            ++v53;
          }

          v19 = v32 + 1;
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_275406428(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(sub_27546E490() - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

void sub_27540650C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_275459430(v4 - v6, 1);
  v8 = *v2;
  v9 = *(sub_27546E490() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * result;
  swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  sub_275440F08(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_275406650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_27546E6F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2754066AC(uint64_t a1)
{
  if (!qword_2809DAFC8)
  {
    sub_275406708();
    v1 = sub_27546E750();
    if (!v2)
    {
      atomic_store(v1, &qword_2809DAFC8);
    }
  }
}

unint64_t sub_275406708()
{
  result = qword_2809DAFD0;
  if (!qword_2809DAFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAFD0);
  }

  return result;
}

_BYTE *_s22MusicKitStructuredSongV30TransitionComplexityConfidenceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x275406828);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_275406874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_275406910(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_275406990(uint64_t a1)
{
  type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(319);
  if (v1 <= 0x3F)
  {
    sub_275406C8C(319, &qword_2809DAFF0, &type metadata for Transition.Complexity, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_275406C8C(319, &qword_2809DAFF8, &_s9GenreTreeVN, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_275406C8C(319, &qword_2809DB000, &_s23SpatialTimeAlignmentMapVN, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_275406C8C(319, &qword_2809DB008, &_s13SongStructureVN, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_275406C8C(319, &qword_2809DB010, &_s16VocalActivityMapVN, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_275406C8C(319, &qword_2809DB018, &_s11LoudnessMapVN, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_275406C8C(319, &qword_2809DB020, &_s11TonalityMapVN, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_275406C8C(319, &qword_2809DB028, &_s15AcousticnessMapVN, MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    sub_275406C8C(319, &qword_2809DB030, &_s15DanceabilityMapVN, MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
                    {
                      sub_275406C8C(319, &qword_2809DB038, &_s14MelodicnessMapVN, MEMORY[0x277D83D88]);
                      if (v11 <= 0x3F)
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
    }
  }
}

void sub_275406C8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_275406CE0()
{
  result = qword_2809DB040;
  if (!qword_2809DB040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB040);
  }

  return result;
}

uint64_t sub_275406D34(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_275406C8C(0, a3, a4, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_0_9();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

double sub_275406F3C@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

double sub_275406F58@<D0>(_OWORD *a1@<X8>)
{
  j__OUTLINED_FUNCTION_0_13(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

double sub_275407014@<D0>(uint64_t a1@<X8>)
{
  sub_275407058(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

double sub_275407058@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 256;
  return result;
}

double OUTLINED_FUNCTION_0_13@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_2754070A0(uint64_t a1)
{
  if ((sub_27540719C(a1) & 1) != 0 && sub_275407758(a1))
  {
    return 1;
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v3 = sub_27546E3E0();
  __swift_project_value_buffer(v3, qword_2809F3C00);
  v4 = sub_27546E3C0();
  v5 = sub_27546E6E0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2753EC000, v4, v5, "Placement constraints: Not satisfied.", v6, 2u);
    MEMORY[0x277C78090](v6, -1, -1);
  }

  return 0;
}

uint64_t sub_27540719C(uint64_t a1)
{
  sub_2754097E0(v65);
  sub_2753F12B8(v65, __src);
  if (v67)
  {
    sub_2753F122C(v65);
    v3 = __src;
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    v3 = v57;
    sub_275409C88();
    sub_2753F1398(__dst);
    sub_2753F122C(v65);
  }

  v4 = *v3;
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  (*(v6 + 24))(__src, v5, v6);
  if (v4 >= *__src)
  {
    sub_2754097E0(v65);
    sub_2753F12B8(v65, __src);
    if (v67)
    {
      v21 = &__src[8];
    }

    else
    {
      v21 = &v57[8];
      memcpy(__dst, __src, sizeof(__dst));
      sub_275409C88();
      sub_2753F1398(__dst);
    }

    sub_2753F122C(v65);
    v22 = *v21;
    v23 = v1[3];
    v24 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v23);
    (*(v24 + 32))(__src, v23, v24);
    if (v22 >= *__src)
    {
      return 1;
    }

    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v25 = sub_27546E3E0();
    __swift_project_value_buffer(v25, qword_2809F3C00);
    sub_2753F2548(a1, v65);
    sub_275407A94(v1, v62);
    v8 = sub_27546E3C0();
    v9 = sub_27546E6E0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v61 = v11;
      *v10 = 136315394;
      sub_2754097E0(__src);
      sub_2753F12B8(__src, __dst);
      if (v59)
      {
        v26 = sub_2753F122C(__src);
        v34 = __dst;
      }

      else
      {
        memcpy(v57, __dst, 0x51uLL);
        v34 = v60;
        sub_275409C88();
        sub_2753F1398(v57);
        v26 = sub_2753F122C(__src);
      }

      v47 = sub_2753F1314(*v34, v34[1], v26, v27, v28, v29, v30, v31, v32, v33);
      v49 = v48;
      sub_2753F25A4(v65);
      v50 = sub_275446968(v47, v49, &v61);

      *(v10 + 4) = v50;
      *(v10 + 12) = 2080;
      v51 = v63;
      v52 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      (*(v52 + 32))(__src, v51, v52);
      v53 = sub_27546E540();
      v55 = v54;
      sub_275407ACC(v62);
      v56 = sub_275446968(v53, v55, &v61);

      *(v10 + 14) = v56;
      v46 = "Outgoing placement constraints: Not satisfied. Outgoing region = %s. Minimum outgoing region end time = %s.";
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v7 = sub_27546E3E0();
    __swift_project_value_buffer(v7, qword_2809F3C00);
    sub_2753F2548(a1, v65);
    sub_275407A94(v1, v62);
    v8 = sub_27546E3C0();
    v9 = sub_27546E6E0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v61 = v11;
      *v10 = 136315394;
      sub_2754097E0(__src);
      sub_2753F12B8(__src, __dst);
      if (v59)
      {
        v12 = sub_2753F122C(__src);
        v20 = __dst;
      }

      else
      {
        memcpy(v57, __dst, 0x51uLL);
        v20 = v60;
        sub_275409C88();
        sub_2753F1398(v57);
        v12 = sub_2753F122C(__src);
      }

      v36 = sub_2753F1314(*v20, v20[1], v12, v13, v14, v15, v16, v17, v18, v19);
      v38 = v37;
      sub_2753F25A4(v65);
      v39 = sub_275446968(v36, v38, &v61);

      *(v10 + 4) = v39;
      *(v10 + 12) = 2080;
      v40 = v63;
      v41 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      (*(v41 + 24))(__src, v40, v41);
      v42 = sub_27546E540();
      v44 = v43;
      sub_275407ACC(v62);
      v45 = sub_275446968(v42, v44, &v61);

      *(v10 + 14) = v45;
      v46 = "Outgoing placement constraints: Not satisfied. Outgoing region = %s. Minimum outgoing region start time = %s.";
LABEL_25:
      _os_log_impl(&dword_2753EC000, v8, v9, v46, v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C78090](v11, -1, -1);
      MEMORY[0x277C78090](v10, -1, -1);

      return 0;
    }
  }

  sub_2753F25A4(v65);
  sub_275407ACC(v62);
  return 0;
}

BOOL sub_275407758(uint64_t a1)
{
  sub_275409858(v41);
  sub_2753F12B8(v41, __src);
  if (v43)
  {
    v3 = &__src[8];
  }

  else
  {
    v3 = &v33[8];
    memcpy(__dst, __src, 0x51uLL);
    sub_275409C88();
    sub_2753F1398(__dst);
  }

  sub_2753F122C(v41);
  v4 = *v3;
  v5 = v1[8];
  v6 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v5);
  (*(v6 + 40))(__src, v5, v6);
  v7 = *__src;
  if (*__src < v4)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v8 = sub_27546E3E0();
    __swift_project_value_buffer(v8, qword_2809F3C00);
    sub_2753F2548(a1, v41);
    sub_275407A94(v1, v37);
    v9 = sub_27546E3C0();
    v10 = sub_27546E6E0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v36 = v12;
      *v11 = 136315394;
      sub_275409858(__src);
      sub_2753F12B8(__src, __dst);
      if (__dst[81])
      {
        v13 = sub_2753F122C(__src);
        v21 = __dst;
      }

      else
      {
        memcpy(v33, __dst, 0x51uLL);
        v21 = &v35;
        sub_275409C88();
        sub_2753F1398(v33);
        v13 = sub_2753F122C(__src);
      }

      v22 = sub_2753F1314(*v21, v21[1], v13, v14, v15, v16, v17, v18, v19, v20);
      v24 = v23;
      sub_2753F25A4(v41);
      v25 = sub_275446968(v22, v24, &v36);

      *(v11 + 4) = v25;
      *(v11 + 12) = 2080;
      v26 = v39;
      v27 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      (*(v27 + 40))(__src, v26, v27);
      v28 = sub_27546E540();
      v30 = v29;
      sub_275407ACC(v37);
      v31 = sub_275446968(v28, v30, &v36);

      *(v11 + 14) = v31;
      _os_log_impl(&dword_2753EC000, v9, v10, "Incoming placement constraints: Not satisfied. Incoming region = %s. Maximum incoming region end time = %s.", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C78090](v12, -1, -1);
      MEMORY[0x277C78090](v11, -1, -1);
    }

    else
    {

      sub_2753F25A4(v41);
      sub_275407ACC(v37);
    }
  }

  return v7 >= v4;
}

void sub_275407B1C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v97 = a4;
  *&v83 = a2;
  v81 = a5;
  v8 = type metadata accessor for TransitionPlanner.Song(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = (v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = (v67 - v12);
  *&v82 = *a3;
  v14 = *(a3 + 8);
  v16 = *(a3 + 16);
  v15 = *(a3 + 24);
  v17 = *(a3 + 32);
  v18 = *(a3 + 33);
  v19 = sub_275408140(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_3_6(v97);
    v24 = v23;
    sub_275408F38(v83, v23);
    sub_275408F38(a1, v24);
  }

  else
  {
    v25 = v21;
    v26 = v22;
    v73 = v13;
    v74 = v20;
    v75 = v19;
    v76 = v11;
    v77 = v17;
    v78 = v15;
    v79 = v16;
    v80 = v14;
    v27 = v83;
    v28 = sub_275408140(v83);
    v30 = v29;
    v32 = v31;
    v70 = v33;
    v71 = v28;
    v72 = v18;
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_14();
      swift_once();
    }

    v34 = sub_27546E3E0();
    v35 = __swift_project_value_buffer(v34, qword_2809F3C00);
    OUTLINED_FUNCTION_4_4();
    v69 = a1;
    v36 = v73;
    sub_275408ED0(a1, v73, v37);
    v38 = sub_27546E3C0();
    v68 = sub_27546E6E0();
    v39 = os_log_type_enabled(v38, v68);
    v40 = v76;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v67[1] = v35;
      v42 = v41;
      v43 = swift_slowAlloc();
      __src[0] = v43;
      *v42 = 136315138;
      v45 = *v36;
      v44 = v36[1];

      OUTLINED_FUNCTION_1_8();
      sub_275408F38(v36, v46);
      v47 = sub_275446968(v45, v44, __src);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_2753EC000, v38, v68, "Styling context: Outgoing song ID = %s.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      OUTLINED_FUNCTION_5_4();
      MEMORY[0x277C78090]();
      OUTLINED_FUNCTION_5_4();
      MEMORY[0x277C78090]();
    }

    else
    {

      OUTLINED_FUNCTION_1_8();
      sub_275408F38(v36, v48);
    }

    v49 = v69;
    sub_2754084B4(v69, v75, v74 & 1, &v96, v25, v26);
    OUTLINED_FUNCTION_4_4();
    sub_275408ED0(v27, v40, v50);
    v51 = sub_27546E3C0();
    v52 = sub_27546E6E0();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      __src[0] = v54;
      *v53 = 136315138;
      v55 = v40[1];
      v75 = *v40;

      OUTLINED_FUNCTION_1_8();
      sub_275408F38(v40, v56);
      v57 = sub_275446968(v75, v55, __src);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_2753EC000, v51, v52, "Styling context: Incoming song ID = %s.", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      OUTLINED_FUNCTION_5_4();
      MEMORY[0x277C78090]();
      OUTLINED_FUNCTION_5_4();
      MEMORY[0x277C78090]();
    }

    else
    {

      OUTLINED_FUNCTION_1_8();
      sub_275408F38(v40, v58);
    }

    v59 = v81;
    v60 = v82;
    v61 = v80;
    v62 = v79;
    v63 = v78;
    sub_2754084B4(v27, v71, v70 & 1, &v95, v30, v32);
    sub_2753F161C(&v96, __src);
    sub_2753F161C(&v95, &__src[5]);
    v84 = v60;
    v85 = v61;
    v86 = v62;
    v87 = v63;
    v88 = v77;
    v89 = v72;
    sub_2753F1B68(&v84, v90, v30, v25);
    v64 = v97;
    sub_275408F38(v27, type metadata accessor for TransitionPlanner.Song);
    sub_275408F38(v49, type metadata accessor for TransitionPlanner.Song);
    __swift_destroy_boxed_opaque_existential_1(&v95);
    __swift_destroy_boxed_opaque_existential_1(&v96);
    v65 = v90[0];
    v66 = v93;
    v83 = v91;
    v82 = v92;
    memcpy(v59, __src, 0x50uLL);
    *(v59 + 80) = v65;
    *(v59 + 88) = v83;
    *(v59 + 104) = v82;
    *(v59 + 120) = v66;
    sub_2753F16E0(v64, v59 + 128);
  }
}

uint64_t sub_275408140(uint64_t a1)
{
  v2 = type metadata accessor for TransitionPlanner.Song(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275408DDC(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 32);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  sub_275408ED0(a1 + v12, v11, sub_275408DDC);
  v15 = type metadata accessor for TransitionPlanner.Song.Analysis(0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) == 1 || swift_getEnumCaseMultiPayload() == 1)
  {
    if ((v14 & 1) == 0)
    {
      return v13;
    }
  }

  else
  {
    sub_275408E6C(v11, v8);
    v23 = v8[16];
    sub_275408F38(v8, type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis);
    if (v23 != 1)
    {
      return v13;
    }
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v16 = sub_27546E3E0();
  __swift_project_value_buffer(v16, qword_2809F3C00);
  sub_275408ED0(a1, v5, type metadata accessor for TransitionPlanner.Song);
  v17 = sub_27546E3C0();
  v13 = sub_27546E6D0();
  if (os_log_type_enabled(v17, v13))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136315138;
    v20 = *v5;
    v21 = v5[1];

    sub_275408F38(v5, type metadata accessor for TransitionPlanner.Song);
    v22 = sub_275446968(v20, v21, &v27);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_2753EC000, v17, v13, "Duration map not available. Song ID = %s.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x277C78090](v19, -1, -1);
    MEMORY[0x277C78090](v18, -1, -1);
  }

  else
  {

    sub_275408F38(v5, type metadata accessor for TransitionPlanner.Song);
  }

  sub_275408F98();
  swift_allocError();
  *v24 = 13;
  swift_willThrow();
  return v13;
}

void sub_2754084B4(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = (v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = v29 - v16;
  sub_275408DDC(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TransitionPlanner.Song(0);
  sub_275408ED0(a1 + *(v21 + 24), v20, sub_275408DDC);
  v22 = type metadata accessor for TransitionPlanner.Song.Analysis(0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v22) == 1)
  {
    v24 = *a1;
    v23 = a1[1];
    a4[3] = &_s16UnstructuredSongVN;
    a4[4] = &off_288413E48;
LABEL_5:
    v25 = swift_allocObject();
    *a4 = v25;
    *(v25 + 16) = v24;
    *(v25 + 24) = v23;
    *(v25 + 32) = a5;
    *(v25 + 40) = a6;
    *(v25 + 48) = a2;
    *(v25 + 56) = a3 & 1;

    return;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *a1;
    v23 = a1[1];
    a4[3] = &_s27AdaptiveMusicStructuredSongVN;
    a4[4] = &off_288413B98;
    goto LABEL_5;
  }

  sub_275408E6C(v20, v17);
  v26 = *a1;
  v27 = a1[1];
  v29[0] = v26;
  v29[1] = v27;
  sub_275408ED0(v17, v15, type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis);
  a4[3] = _s22MusicKitStructuredSongVMa(0);
  a4[4] = &off_288413CB8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);

  sub_2753FE0CC(v29, a2, a3 & 1, v15, boxed_opaque_existential_1, a5);
  sub_275408F38(v17, type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis);
}

uint64_t sub_275408728(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  if (*(v1 + 120) >= v3)
  {
    __swift_project_boxed_opaque_existential_1(v1, *(v1 + 24));
    v33 = OUTLINED_FUNCTION_2_6();
    v35 = *(v34(v33) + 16);

    if (v35)
    {
      v36 = v2[3];
      __swift_project_boxed_opaque_existential_1(v2, v36);
      v37 = OUTLINED_FUNCTION_2_6();
      v39 = v38(v37);
      OUTLINED_FUNCTION_8_2(v39);
      if ((v36 & 1) == 0)
      {
        if (qword_2809DACB0 != -1)
        {
          OUTLINED_FUNCTION_0_14();
          swift_once();
        }

        v53 = sub_27546E3E0();
        __swift_project_value_buffer(v53, qword_2809F3C00);
        sub_275408FEC(v2, v103);
        v54 = sub_27546E3C0();
        v55 = sub_27546E6E0();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v102 = v57;
          v58.n128_u64[0] = 136315394;
          *v56 = 136315394;
          v66 = OUTLINED_FUNCTION_7_2(v58, v57, v59, v60, v61, v62, v63, v64, v65, v96, *v98, *&v98[4], v98[6], v3);
          v68 = sub_275446968(v66, v67, &v102);

          *(v56 + 4) = v68;
          *(v56 + 12) = 2080;
          __swift_project_boxed_opaque_existential_1(v103, v103[3]);
          v69 = OUTLINED_FUNCTION_6_4();
          v70(v69);
          v71 = MEMORY[0x277C77770]();
          v73 = v72;

          sub_275409024(v103);
          v74 = sub_275446968(v71, v73, &v102);

          *(v56 + 14) = v74;
          v75 = "Transition complexity: Outgoing song has timing accuracy issues. Transition complexity for algorithm incompatible with reduced complexities for song. Algorithm complexity = %s. Outgoing song complexities = %s.";
LABEL_30:
          _os_log_impl(&dword_2753EC000, v54, v55, v75, v56, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_5_4();
          MEMORY[0x277C78090]();
          OUTLINED_FUNCTION_5_4();
          MEMORY[0x277C78090]();

          return 0;
        }

LABEL_31:

        goto LABEL_32;
      }

      __swift_project_boxed_opaque_existential_1(v2 + 5, v2[8]);
      v40 = OUTLINED_FUNCTION_2_6();
      v42 = *(v41(v40) + 16);

      if (v42)
      {
        v43 = v2[8];
        __swift_project_boxed_opaque_existential_1(v2 + 5, v43);
        v44 = OUTLINED_FUNCTION_2_6();
        v46 = v45(v44);
        OUTLINED_FUNCTION_8_2(v46);
        if (v43)
        {
          return 1;
        }

        if (qword_2809DACB0 != -1)
        {
          OUTLINED_FUNCTION_0_14();
          swift_once();
        }

        v77 = sub_27546E3E0();
        __swift_project_value_buffer(v77, qword_2809F3C00);
        sub_275408FEC(v2, v103);
        v54 = sub_27546E3C0();
        v55 = sub_27546E6E0();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v102 = v78;
          v79.n128_u64[0] = 136315394;
          *v56 = 136315394;
          v87 = OUTLINED_FUNCTION_7_2(v79, v78, v80, v81, v82, v83, v84, v85, v86, v96, *v98, *&v98[4], v98[6], v3);
          v89 = sub_275446968(v87, v88, &v102);

          *(v56 + 4) = v89;
          *(v56 + 12) = 2080;
          __swift_project_boxed_opaque_existential_1(v104, v104[3]);
          v90 = OUTLINED_FUNCTION_6_4();
          v91(v90);
          v92 = MEMORY[0x277C77770]();
          v94 = v93;

          sub_275409024(v103);
          v95 = sub_275446968(v92, v94, &v102);

          *(v56 + 14) = v95;
          v75 = "Transition complexity: Incoming song has timing accuracy issues. Transition complexity for algorithm incompatible with reduced complexities for song. Algorithm complexity = %s. Incoming song complexities = %s.";
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      if (qword_2809DACB0 != -1)
      {
        OUTLINED_FUNCTION_0_14();
        swift_once();
      }

      v76 = sub_27546E3E0();
      __swift_project_value_buffer(v76, qword_2809F3C00);
      v49 = sub_27546E3C0();
      v50 = sub_27546E6E0();
      if (!os_log_type_enabled(v49, v50))
      {
LABEL_25:

        return 0;
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = "Transition complexity: Incoming song has timing accuracy issues. No transitions allowed.";
    }

    else
    {
      if (qword_2809DACB0 != -1)
      {
        OUTLINED_FUNCTION_0_14();
        swift_once();
      }

      v48 = sub_27546E3E0();
      __swift_project_value_buffer(v48, qword_2809F3C00);
      v49 = sub_27546E3C0();
      v50 = sub_27546E6E0();
      if (!os_log_type_enabled(v49, v50))
      {
        goto LABEL_25;
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = "Transition complexity: Outgoing song has timing accuracy issues. No transitions allowed.";
    }

    _os_log_impl(&dword_2753EC000, v49, v50, v52, v51, 2u);
    OUTLINED_FUNCTION_5_4();
    MEMORY[0x277C78090]();
    goto LABEL_25;
  }

  if (qword_2809DACB0 != -1)
  {
    OUTLINED_FUNCTION_0_14();
    swift_once();
  }

  v4 = sub_27546E3E0();
  __swift_project_value_buffer(v4, qword_2809F3C00);
  sub_275408FEC(v1, v103);
  v5 = sub_27546E3C0();
  v6 = sub_27546E6E0();
  if (!os_log_type_enabled(v5, v6))
  {

LABEL_32:
    sub_275409024(v103);
    return 0;
  }

  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v102 = v8;
  v9.n128_u64[0] = 136315394;
  *v7 = 136315394;
  v17 = OUTLINED_FUNCTION_7_2(v9, v8, v10, v11, v12, v13, v14, v15, v16, v96, *v98, *&v98[4], v98[6], v3);
  v19 = sub_275446968(v17, v18, &v102);

  *(v7 + 4) = v19;
  *(v7 + 12) = 2080;
  v29 = OUTLINED_FUNCTION_7_2(v28, v20, v21, v22, v23, v24, v25, v26, v27, v97, v99, v100, v101, v105);
  v31 = v30;
  sub_275409024(v103);
  v32 = sub_275446968(v29, v31, &v102);

  *(v7 + 14) = v32;
  _os_log_impl(&dword_2753EC000, v5, v6, "Transition complexity: Transition complexity for algorithm incompatible with maximum complexity specified in criteria. Algorithm complexity = %s. Maximum complexity = %s.", v7, 0x16u);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x277C78090]();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x277C78090]();

  return 0;
}

BOOL sub_275408DAC(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void sub_275408DDC(uint64_t a1)
{
  if (!qword_2809DB048)
  {
    type metadata accessor for TransitionPlanner.Song.Analysis(255);
    v1 = sub_27546E6F0();
    if (!v2)
    {
      atomic_store(v1, &qword_2809DB048);
    }
  }
}

uint64_t sub_275408E34()
{

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_275408E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275408ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275408F38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_275408F98()
{
  result = qword_2809DB050;
  if (!qword_2809DB050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB050);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_2(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{

  return sub_27546E540();
}

double OUTLINED_FUNCTION_8_2(uint64_t a1)
{
  sub_275408DAC(v1, a1);

  return result;
}

void sub_27540914C(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v19 = *(a1 + 16);
  if (v19)
  {
    v3 = 0;
    v4 = *(a2 + 16);
    v16 = a2 + 32;
    v5 = MEMORY[0x277D84F90];
    v17 = v4;
    v18 = a1 + 32;
    while (1)
    {
      sub_2753F1440(v18 + 88 * v3, v22);
      if (v4)
      {
        v21 = v2;
        sub_275441874(0, v4, 0);
        v6 = v21;
        v7 = v16;
        do
        {
          sub_2753F1440(v22, __src);
          sub_2753F1440(v7, &__src[88]);
          __src[169] = 1;
          v21 = v6;
          v9 = *(v6 + 16);
          v8 = *(v6 + 24);
          if (v9 >= v8 >> 1)
          {
            sub_275441874(v8 > 1, v9 + 1, 1);
            v6 = v21;
          }

          *(v6 + 16) = v9 + 1;
          memcpy((v6 + 176 * v9 + 32), __src, 0xAAuLL);
          v7 += 88;
          --v4;
        }

        while (v4);
        v2 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = v2;
      }

      sub_2753F1398(v22);
      v10 = *(v6 + 16);
      v11 = *(v5 + 16);
      if (__OFADD__(v11, v10))
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v11 + v10 > *(v5 + 24) >> 1)
      {
        sub_2754318C4();
        v5 = v12;
      }

      v4 = v17;
      if (*(v6 + 16))
      {
        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v10)
        {
          goto LABEL_25;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v13 = *(v5 + 16);
          v14 = __OFADD__(v13, v10);
          v15 = v13 + v10;
          if (v14)
          {
            goto LABEL_26;
          }

          *(v5 + 16) = v15;
        }
      }

      else
      {

        if (v10)
        {
          goto LABEL_24;
        }
      }

      if (++v3 == v19)
      {
        return;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_275409368(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    sub_27540914C(a1, a2);
    v16 = v15;
    v17 = *(v15 + 16);
    if (v17)
    {
      OUTLINED_FUNCTION_0_15(MEMORY[0x277D84F90]);
      v6 = v26;
      v18 = v16 + 32;
      do
      {
        sub_275409520(v18, __src);
        __src[170] = 0;
        v26 = v6;
        v20 = *(v6 + 16);
        v19 = *(v6 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2754418C4(v19 > 1, v20 + 1, 1);
          v6 = v26;
        }

        *(v6 + 16) = v20 + 1;
        memcpy((v6 + 176 * v20 + 32), __src, 0xABuLL);
        v18 += 176;
        --v17;
      }

      while (v17);
      goto LABEL_13;
    }

LABEL_14:

    return MEMORY[0x277D84F90];
  }

  sub_2754095A0(a1, a2);
  v4 = v3;
  v5 = *(v3 + 16);
  if (!v5)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_0_15(MEMORY[0x277D84F90]);
  v6 = v26;
  v7 = *(v26 + 16);
  v8 = 176 * v7 + 202;
  v9 = (v4 + 48);
  do
  {
    v10 = *(v9 - 1);
    v11 = *v9;
    v25 = 1;
    v26 = v6;
    v12 = *(v6 + 24);
    v13 = v7 + 1;
    if (v7 >= v12 >> 1)
    {
      v22 = v11;
      v23 = v10;
      sub_2754418C4(v12 > 1, v7 + 1, 1);
      v11 = v22;
      v10 = v23;
      v6 = v26;
    }

    *(v6 + 16) = v13;
    v14 = (v6 + v8);
    *(v14 - 170) = v10;
    *(v14 - 154) = v11;
    memcpy((v6 + v8 - 138), __src, 0x8AuLL);
    *v14 = v25;
    v8 += 176;
    v9 += 2;
    v7 = v13;
    --v5;
  }

  while (v5);
LABEL_13:

  return v6;
}

void OUTLINED_FUNCTION_0_15(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;

  sub_2754418C4(0, v1, 0);
}

void sub_2754095A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v5 = *(a2 + 16);
    v27 = (a2 + 32);
    v28 = a1 + 32;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v5)
      {
        v29 = *(v28 + 16 * v4);
        sub_2754418A4(0, v5, 0);
        v7 = v29;
        v8 = v3;
        v9 = *(v3 + 16);
        v10 = 32 * v9;
        v11 = v27;
        v12 = v5;
        do
        {
          v13 = *v11;
          v14 = *(v3 + 24);
          if (v9++ >= v14 >> 1)
          {
            v26 = *v11;
            sub_2754418A4((v14 > 1), v9, 1);
            v13 = v26;
            v7 = v29;
          }

          *(v3 + 16) = v9;
          v16 = v3 + v10;
          *(v16 + 32) = v7;
          *(v16 + 48) = v13;
          v10 += 32;
          ++v11;
          --v12;
        }

        while (v12);
      }

      else
      {
        v9 = *(v3 + 16);
        v8 = v3;
      }

      v17 = *(v6 + 16);
      v18 = v17 + v9;
      if (__OFADD__(v17, v9))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v18 > *(v6 + 24) >> 1)
      {
        if (v17 <= v18)
        {
          v20 = v17 + v9;
        }

        else
        {
          v20 = v17;
        }

        sub_275431984(isUniquelyReferenced_nonNull_native, v20, 1, v6);
        v6 = v21;
      }

      if (*(v8 + 16))
      {
        v22 = *(v6 + 16);
        if ((*(v6 + 24) >> 1) - v22 < v9)
        {
          goto LABEL_28;
        }

        memcpy((v6 + 32 * v22 + 32), (v8 + 32), 32 * v9);

        if (v9)
        {
          v23 = *(v6 + 16);
          v24 = __OFADD__(v23, v9);
          v25 = v23 + v9;
          if (v24)
          {
            goto LABEL_29;
          }

          *(v6 + 16) = v25;
        }
      }

      else
      {

        if (v9)
        {
          goto LABEL_27;
        }
      }

      if (++v4 == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_2754097E0@<X0>(uint64_t a1@<X8>)
{
  result = sub_2753EF3C8(v1, __src);
  v4 = v7;
  if (v7)
  {
    *a1 = *__src;
  }

  else
  {
    memcpy(v5, __src, 0xAAuLL);
    sub_2753F1440(v5, a1);
    result = sub_2753F13EC(v5);
  }

  *(a1 + 81) = v4;
  return result;
}

uint64_t sub_275409858@<X0>(uint64_t a1@<X8>)
{
  result = sub_2753EF3C8(v1, __src);
  v4 = v7;
  if (v7)
  {
    *a1 = *&__src[16];
  }

  else
  {
    memcpy(v5, __src, 0xAAuLL);
    sub_2753F1440(&v5[88], a1);
    result = sub_2753F13EC(v5);
  }

  *(a1 + 81) = v4;
  return result;
}

uint64_t sub_2754098D4(uint64_t a1, uint64_t a2)
{
  sub_2753EF3C8(a1, v10);
  sub_2753EF3C8(a2, v11);
  if ((v10[170] & 1) == 0)
  {
    sub_2753EF3C8(v10, v8);
    if ((v12 & 1) == 0)
    {
      memcpy(v7, v11, 0xAAuLL);
      if (sub_27540AABC(v8, v7) & 1) != 0 && (sub_27540AABC(v9, &v7[88]))
      {
        v4 = v9[81];
        v5 = v7[169];
        sub_2753F13EC(v7);
        if (v4 == v5)
        {
          sub_2753F13EC(v8);
          sub_275409AE4(v10);
          v3 = 1;
          return v3 & 1;
        }
      }

      else
      {
        sub_2753F13EC(v7);
      }

      sub_2753F13EC(v8);
      sub_275409AE4(v10);
LABEL_13:
      v3 = 0;
      return v3 & 1;
    }

    sub_2753F13EC(v8);
LABEL_6:
    sub_275409A2C(v10);
    goto LABEL_13;
  }

  sub_2753EF3C8(v10, v8);
  if (v12 != 1)
  {
    goto LABEL_6;
  }

  v3 = vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(vsubq_f64(*v11, v8[0])), vceqzq_f64(vsubq_f64(*&v11[16], v8[1])))))) ^ 1;
  sub_275409AE4(v10);
  return v3 & 1;
}

uint64_t sub_275409A2C(uint64_t a1)
{
  sub_275409A88();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_275409A88()
{
  if (!qword_2809DB058)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809DB058);
    }
  }
}

uint64_t sub_275409B1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 171))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 170);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_275409B58(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    v5 = a2 - 255;
    bzero(a1, 0xABuLL);
    *a1 = v5;
    if (a3 >= 0xFF)
    {
      *(a1 + 171) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(a1 + 171) = 0;
    }

    if (a2)
    {
      *(a1 + 170) = -a2;
    }
  }
}

void sub_275409BCC(unsigned int *a1, unsigned int a2)
{
  if (a2 > 1)
  {
    v3 = a2 - 2;
    bzero(a1, 0xAAuLL);
    *a1 = v3;
    LOBYTE(a2) = 2;
  }

  *(a1 + 170) = a2;
}

uint64_t sub_275409C20(float64x2_t *a1, float64x2_t *a2)
{
  v2 = vmovn_s64(vceqzq_f64(vsubq_f64(*a2, *a1)));
  if (v2.i32[0] & v2.i32[1])
  {
    v3 = vmovn_s64(vceqzq_f64(vsubq_f64(a2[1], a1[1])));
    v4 = v3.i8[0] & v3.i8[4];
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_275409C88()
{
  v1 = OUTLINED_FUNCTION_11_1();
  LODWORD(result) = sub_27540AA84(v1, v23);
  if ((v23[80] & 1) == 0)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_12_1(result, v3, v4, v5, v6, v7, v8, v9, v12, v13[0], v14, v15, v16, v17, v18, v19, v20, v21, v22);
  sub_27540A364();
  v10 = v24[0];
  sub_27540A458();
  result = sub_2753F15A4(v13);
  v11 = *&v12;
  if (*&v12 < v10)
  {
    __break(1u);
LABEL_4:
    OUTLINED_FUNCTION_12_1(result, v3, v4, v5, v6, v7, v8, v9, v12, v13[0], v14, v15, v16, v17, v18, v19, v20, v21, v22);
    sub_27540A5DC(v24);
    result = sub_2753EDF40(v13);
    v10 = v24[0];
    v11 = v24[1];
  }

  *v0 = v10;
  v0[1] = v11;
  return result;
}

void *sub_275409D20()
{
  v1 = OUTLINED_FUNCTION_11_1();
  sub_27540AA84(v1, __src);
  if ((__src[80] & 1) == 0)
  {
    return memcpy(v0, __src, 0x50uLL);
  }

  memcpy(__dst, __src, sizeof(__dst));
  sub_2753F1548(__dst, v9);
  v2 = v9[3];
  v3 = v9[4];
  OUTLINED_FUNCTION_5_5(v9);
  v0[3] = v2;
  v0[4] = *(v3 + 8);
  __swift_allocate_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_8_3();
  v4();
  v5 = v10[3];
  v6 = v10[4];
  OUTLINED_FUNCTION_5_5(v10);
  v0[8] = v5;
  v0[9] = *(v6 + 8);
  __swift_allocate_boxed_opaque_existential_1(v0 + 5);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_8_3();
  v7();
  sub_2753F15A4(__dst);
  return sub_2753F15A4(v9);
}

void *sub_275409E34()
{
  v1 = OUTLINED_FUNCTION_11_1();
  v2 = sub_27540AA84(v1, __src);
  if (__src[80])
  {
    return memcpy(v0, __src, 0x50uLL);
  }

  OUTLINED_FUNCTION_12_1(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12[0], v13, v14, v15, v16, v17, v18, v19, v20, v21);
  sub_27540A8A0(v12, v0);
  return sub_2753EDF40(v12);
}

uint64_t sub_275409E98@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = v1[3];
  v5 = v2[4];
  v6 = __swift_project_boxed_opaque_existential_1(v2, v4);
  v18 = v4;
  v19 = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  v8 = v18;
  v9 = v19;
  v10 = __swift_project_boxed_opaque_existential_1(v17, v18);
  v21 = v8;
  v22 = *(v9 + 8);
  v11 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(v8 - 8) + 16))(v11, v10, v8);
  __swift_destroy_boxed_opaque_existential_1(v17);
  v12 = v21;
  v13 = v22;
  v14 = __swift_project_boxed_opaque_existential_1(v20, v21);
  a1[3] = v12;
  a1[4] = *(v13 + 8);
  v15 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(*(v12 - 8) + 16))(v15, v14, v12);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_275409FE4@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[8];
  v4 = v1[9];
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 5, v3);
  v17 = v3;
  v18 = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  v7 = v17;
  v8 = v18;
  v9 = __swift_project_boxed_opaque_existential_1(v16, v17);
  v20 = v7;
  v21 = *(v8 + 8);
  v10 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v7 - 8) + 16))(v10, v9, v7);
  __swift_destroy_boxed_opaque_existential_1(v16);
  v11 = v20;
  v12 = v21;
  v13 = __swift_project_boxed_opaque_existential_1(v19, v20);
  a1[3] = v11;
  a1[4] = *(v12 + 8);
  v14 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(*(v11 - 8) + 16))(v14, v13, v11);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_27540A12C()
{
  v1 = OUTLINED_FUNCTION_11_1();
  v2 = *(v0 + 24);
  v3 = v1[4];
  OUTLINED_FUNCTION_5_5(v1);
  v8 = v2;
  v9 = *(v3 + 8);
  __swift_allocate_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_8_3();
  v4();
  __swift_project_boxed_opaque_existential_1(v7, v8);
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_8_3();
  v5();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_27540A1E0()
{
  v1 = OUTLINED_FUNCTION_11_1();
  __swift_project_boxed_opaque_existential_1(v1, *(v0 + 24));
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_8_3();

  return v2();
}

uint64_t sub_27540A24C()
{
  OUTLINED_FUNCTION_9_2();
  v6 = v0;
  v7 = *(v1 + 8);
  __swift_allocate_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_10_2();
  v2();
  __swift_project_boxed_opaque_existential_1(v5, v6);
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_8_3();
  v3();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_27540A2F4()
{
  OUTLINED_FUNCTION_9_2();
  v0[3] = v1;
  v0[4] = *(v2 + 8);
  __swift_allocate_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_10_2();

  return v3();
}

uint64_t sub_27540A364()
{
  v1 = OUTLINED_FUNCTION_11_1();
  v2 = *(v0 + 24);
  v3 = v1[4];
  OUTLINED_FUNCTION_5_5(v1);
  v18 = v2;
  v19 = *(v3 + 8);
  __swift_allocate_boxed_opaque_existential_1(v17);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_8_3();
  v4();
  v5 = __swift_project_boxed_opaque_existential_1(v17, v18);
  OUTLINED_FUNCTION_6_5(v5, v6, v7, v8, v9, v10, v11, v12, v17[0], v17[1], v17[2], v18, v19, v20[0], v20[1], v20[2], v20[3], v20[4]);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_10_2();
  v13();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v14 = OUTLINED_FUNCTION_2_7();
  v15(v14);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_27540A458()
{
  OUTLINED_FUNCTION_9_2();
  v16 = v0;
  v17 = *(v1 + 8);
  __swift_allocate_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_10_2();
  v2();
  v3 = __swift_project_boxed_opaque_existential_1(v15, v16);
  OUTLINED_FUNCTION_6_5(v3, v4, v5, v6, v7, v8, v9, v10, v15[0], v15[1], v15[2], v16, v17, v18[0], v18[1], v18[2], v18[3], v18[4]);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_10_2();
  v11();
  __swift_destroy_boxed_opaque_existential_1(v15);
  v12 = OUTLINED_FUNCTION_2_7();
  v13(v12);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_27540A53C(void (*a1)(uint64_t *__return_ptr))
{
  a1(v13);
  v1 = __swift_project_boxed_opaque_existential_1(v13, v14);
  OUTLINED_FUNCTION_6_5(v1, v2, v3, v4, v5, v6, v7, v8, v13[0], v13[1], v13[2], v14, v15, v16[0], v16[1], v16[2], v16[3], v16[4]);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_10_2();
  v9();
  __swift_destroy_boxed_opaque_existential_1(v13);
  v10 = OUTLINED_FUNCTION_2_7();
  v11(v10);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_27540A5DC@<X0>(double *a1@<X8>)
{
  v2 = v1;
  v4 = v1[3];
  v5 = v1[4];
  v6 = __swift_project_boxed_opaque_existential_1(v1, v4);
  v19 = v4;
  v7 = *(v5 + 8);
  v20 = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  (*(v7 + 8))(&v21, v4, v7);
  __swift_destroy_boxed_opaque_existential_1(v18);
  v9 = v21;
  v10 = v2[8];
  v11 = v2[9];
  v12 = __swift_project_boxed_opaque_existential_1(v2 + 5, v10);
  v19 = v10;
  v20 = *(v11 + 8);
  v13 = v20;
  v14 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v10 - 8) + 16))(v14, v12, v10);
  (*(v13 + 8))(&v17, v10, v13);
  result = __swift_destroy_boxed_opaque_existential_1(v18);
  v16 = v17;
  if (v17 < v9)
  {
    __break(1u);
  }

  else
  {
    *a1 = v9;
    a1[1] = v16;
  }

  return result;
}

double sub_27540A748()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  v4 = __swift_project_boxed_opaque_existential_1(v0, v2);
  v14 = v2;
  v5 = *(v3 + 8);
  v15 = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v4, v2);
  (*(v5 + 8))(&v16, v2, v5);
  __swift_destroy_boxed_opaque_existential_1(v13);
  v7 = v16;
  v9 = v1[8];
  v8 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v9);
  v14 = v9;
  v15 = *(v8 + 8);
  v10 = v15;
  __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v9 - 8) + 16))();
  (*(v10 + 8))(&v12, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v12 - v7;
}

double sub_27540A8A0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2753F161C(a1, v11);
  sub_2753F1680(0, &qword_2809DADD8, &protocol descriptor for TransitionPlannerBeatEvent);
  sub_2753F1680(0, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
  if (swift_dynamicCast())
  {
    sub_2753F16E0(v9, v12);
    sub_2753F161C(a1 + 40, v9);
    if (swift_dynamicCast())
    {
      sub_2753F16E0(v7, v11);
      sub_2753F16E0(v12, a2);
      sub_2753F16E0(v11, a2 + 40);
      return result;
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    OUTLINED_FUNCTION_3_7();
    v6 = v7;
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    OUTLINED_FUNCTION_3_7();
    v6 = v9;
  }

  sub_27540AE20(v6, v5);
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

double sub_27540A9DC()
{
  sub_27540AA84(v0, __src);
  memcpy(__dst, __src, sizeof(__dst));
  if (__src[80])
  {
    sub_27540A364();
    sub_27540A458();
    sub_2753F15A4(__dst);
    return v3 - v4;
  }

  else
  {
    v1 = sub_27540A748();
    sub_2753EDF40(__dst);
  }

  return v1;
}

uint64_t sub_27540AABC(uint64_t a1, uint64_t a2)
{
  sub_27540AA84(a1, v63);
  sub_27540AA84(a2, &v64);
  if (v63[80])
  {
    v4 = sub_27540AA84(v63, v57);
    if (v65 == 1)
    {
      OUTLINED_FUNCTION_13_1(v4, v5, v6, v7, v8, v9, v10, v11, v51);
      v12 = v58;
      v13 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      OUTLINED_FUNCTION_0_0();
      v15 = v14(v12, v13);
      v16 = v61;
      v17 = v62;
      __swift_project_boxed_opaque_existential_1(v60, v61);
      OUTLINED_FUNCTION_0_0();
      result = v18(v16, v17);
      if (result >= v15)
      {
        v20 = result;
        v21 = v53;
        v22 = v54;
        __swift_project_boxed_opaque_existential_1(v52, v53);
        OUTLINED_FUNCTION_0_0();
        v24 = v23(v21, v22);
        v25 = v55;
        v26 = v56;
        __swift_project_boxed_opaque_existential_1((v2 + 40), v55);
        OUTLINED_FUNCTION_0_0();
        result = v27(v25, v26);
        if (result >= v24)
        {
          if (v15 == v24)
          {
            v28 = result;
            sub_2753F15A4(v52);
            sub_2753F15A4(v57);
            goto LABEL_15;
          }

          sub_2753F15A4(v52);
          sub_2753F15A4(v57);
          goto LABEL_19;
        }

        goto LABEL_24;
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2753F15A4(v57);
  }

  else
  {
    v29 = sub_27540AA84(v63, v57);
    if ((v65 & 1) == 0)
    {
      OUTLINED_FUNCTION_13_1(v29, v30, v31, v32, v33, v34, v35, v36, v51);
      v37 = v58;
      v38 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      OUTLINED_FUNCTION_0_0();
      v40 = v39(v37, v38);
      v41 = v61;
      v42 = v62;
      __swift_project_boxed_opaque_existential_1(v60, v61);
      OUTLINED_FUNCTION_0_0();
      result = v43(v41, v42);
      if (result >= v40)
      {
        v20 = result;
        v44 = v53;
        v45 = v54;
        __swift_project_boxed_opaque_existential_1(v52, v53);
        OUTLINED_FUNCTION_0_0();
        v47 = v46(v44, v45);
        v48 = v55;
        v49 = v56;
        __swift_project_boxed_opaque_existential_1((v2 + 40), v55);
        OUTLINED_FUNCTION_0_0();
        result = v50(v48, v49);
        if (result >= v47)
        {
          if (v40 == v47)
          {
            v28 = result;
            sub_2753EDF40(v52);
            sub_2753EDF40(v57);
LABEL_15:
            if (v20 == v28)
            {
              sub_27540AEDC(v63);
              return 1;
            }

            goto LABEL_19;
          }

          sub_2753EDF40(v52);
          sub_2753EDF40(v57);
LABEL_19:
          sub_27540AEDC(v63);
          return 0;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      goto LABEL_23;
    }

    sub_2753EDF40(v57);
  }

  sub_27540AE20(v63, sub_27540AE80);
  return 0;
}

void sub_27540ADB8(uint64_t a1)
{
  if (!qword_2809DAED8)
  {
    sub_2753F1680(255, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
    v1 = sub_27546E6F0();
    if (!v2)
    {
      atomic_store(v1, &qword_2809DAED8);
    }
  }
}

uint64_t sub_27540AE20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_27540AE80()
{
  if (!qword_2809DB060)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809DB060);
    }
  }
}

uint64_t sub_27540AF14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27540AF50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_27540AFA4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t sub_27540AFE0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 81))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 80);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27540B020(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t *OUTLINED_FUNCTION_4_5()
{
  v0[3] = v1;
  v0[4] = *(v2 + 8);

  return __swift_allocate_boxed_opaque_existential_1(v0);
}

uint64_t *OUTLINED_FUNCTION_6_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  a17 = v18;
  a18 = *(v19 + 8);

  return __swift_allocate_boxed_opaque_existential_1(&a14);
}

void *OUTLINED_FUNCTION_12_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(__srca, a19);
  __src = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);

  return memcpy(&__dst, __srca, 0x50uLL);
}

void *OUTLINED_FUNCTION_13_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, (v9 + 88), 0x50uLL);
}

double sub_27540B1D4()
{
  sub_2753F12B8(v0, __src);
  if (v5)
  {
    return *&__src[8] - *__src;
  }

  memcpy(v3, __src, 0x51uLL);
  v1 = sub_27540A9DC();
  sub_2753F1398(v3);
  return v1;
}