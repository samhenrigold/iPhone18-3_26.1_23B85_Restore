uint64_t sub_25C82B334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v24 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  sub_25C7E92DC(a1, &v24 - v14, &qword_27FC16048, qword_25C8309D0);
  sub_25C7E92DC(v15, v13, &qword_27FC16048, qword_25C8309D0);
  v16 = sub_25C82DFBC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v18(v13, 1, v16);
  sub_25C7E97F4(v13, &qword_27FC16048, qword_25C8309D0);
  if (v19 == 1)
  {
    sub_25C82DF2C();
    sub_25C7E97F4(v15, &qword_27FC16048, qword_25C8309D0);
    (*(v17 + 56))(v10, 0, 1, v16);
    sub_25C80E758(v10, v15);
  }

  sub_25C7E92DC(v15, v7, &qword_27FC16048, qword_25C8309D0);
  result = v18(v7, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_25C82DF3C();
    (*(v17 + 8))(v7, v16);
    v26 = v24;
    v27 = v25;

    MEMORY[0x25F88F460](45, 0xE100000000000000);

    MEMORY[0x25F88F460](0xD000000000000021, 0x800000025C834310);

    v21 = [objc_opt_self() standardUserDefaults];
    v22 = sub_25C82E21C();
    v23 = sub_25C82E07C();

    [v21 setValue:v22 forKey:v23];

    return sub_25C7E97F4(v15, &qword_27FC16048, qword_25C8309D0);
  }

  return result;
}

uint64_t sub_25C82B668@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  if (a2)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v9 = sub_25C82E07C();
    [v8 setDateFormat_];

    v10 = sub_25C82E07C();
    v11 = [v8 dateFromString_];

    if (v11)
    {
      sub_25C82DF8C();

      v12 = sub_25C82DFBC();
      (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    }

    else
    {

      v16 = sub_25C82DFBC();
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    }

    return sub_25C80E758(v7, a3);
  }

  else
  {
    v13 = sub_25C82DFBC();
    v14 = *(*(v13 - 8) + 56);

    return v14(a3, 1, 1, v13);
  }
}

uint64_t sub_25C82B87C(uint64_t a1, uint64_t a2)
{
  *&v33[0] = a1;
  *(&v33[0] + 1) = a2;

  MEMORY[0x25F88F460](45, 0xE100000000000000);

  MEMORY[0x25F88F460](0xD000000000000022, 0x800000025C8343E0);

  v2 = v33[0];
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_25C82E07C();
  v5 = [v3 valueForKey_];

  if (v5)
  {
    sub_25C82E31C();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33[0] = v31;
  v33[1] = v32;
  v6 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v7 = qword_281559838;
  if (os_log_type_enabled(qword_281559838, v6))
  {
    v8 = v7;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v31 = v10;
    *v9 = 136315138;
    v11 = NSHomeDirectory();
    v12 = sub_25C82E0AC();
    v14 = v13;

    v15 = sub_25C7E77E4(v12, v14, &v31);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_25C7D2000, v8, v6, "TIGER: NSHomeDefault: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x25F890110](v10, -1, -1);
    MEMORY[0x25F890110](v9, -1, -1);
  }

  sub_25C7E92DC(v33, &v31, &qword_27FC16290, &qword_25C830908);
  v16 = *(&v32 + 1);
  sub_25C7E97F4(&v31, &qword_27FC16290, &qword_25C830908);
  if (v16 || (*(&v32 + 1) = MEMORY[0x277D839F8], *&v31 = 0, sub_25C82D5C4(&v31, v33), v17 = sub_25C82E25C(), v18 = qword_281559838, !os_log_type_enabled(qword_281559838, v17)))
  {
LABEL_12:
    v22 = sub_25C82E25C();
    v23 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v22))
    {
      v24 = v23;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30[0] = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_25C7E77E4(v2, *(&v2 + 1), v30);
      *(v25 + 12) = 2048;
      swift_beginAccess();
      result = sub_25C7E92DC(v33, &v28, &qword_27FC16290, &qword_25C830908);
      if (!v29)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      sub_25C801F34(&v28, &v31);
      swift_dynamicCast();
      *(v25 + 14) = v27;
      _os_log_impl(&dword_25C7D2000, v24, v22, "Get last personalization time: %s, value: %f", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x25F890110](v26, -1, -1);
      MEMORY[0x25F890110](v25, -1, -1);
    }

    swift_beginAccess();
    result = sub_25C7E92DC(v33, &v28, &qword_27FC16290, &qword_25C830908);
    if (v29)
    {

      sub_25C801F34(&v28, &v31);
      swift_dynamicCast();
      return sub_25C7E97F4(v33, &qword_27FC16290, &qword_25C830908);
    }

    __break(1u);
    goto LABEL_18;
  }

  v19 = v18;
  v20 = swift_slowAlloc();
  *v20 = 134217984;
  swift_beginAccess();
  result = sub_25C7E92DC(v33, &v28, &qword_27FC16290, &qword_25C830908);
  if (v29)
  {
    sub_25C801F34(&v28, &v31);
    swift_dynamicCast();
    *(v20 + 4) = v30[0];
    _os_log_impl(&dword_25C7D2000, v19, v17, "Get last personalization setting to default value: %f", v20, 0xCu);
    MEMORY[0x25F890110](v20, -1, -1);

    goto LABEL_12;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25C82BDBC(uint64_t a1, uint64_t a2)
{
  *&v23[0] = a1;
  *(&v23[0] + 1) = a2;

  MEMORY[0x25F88F460](45, 0xE100000000000000);

  MEMORY[0x25F88F460](0xD000000000000021, 0x800000025C834310);

  v2 = v23[0];
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_25C82E07C();
  v5 = [v3 valueForKey_];

  if (v5)
  {
    sub_25C82E31C();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  sub_25C7E92DC(v23, &v21, &qword_27FC16290, &qword_25C830908);
  v6 = *(&v22 + 1);
  sub_25C7E97F4(&v21, &qword_27FC16290, &qword_25C830908);
  if (v6)
  {
    goto LABEL_10;
  }

  *(&v22 + 1) = MEMORY[0x277D839F8];
  *&v21 = 0;
  sub_25C82D5C4(&v21, v23);
  v7 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v8 = qword_281559838;
  if (!os_log_type_enabled(qword_281559838, v7))
  {
LABEL_10:
    v12 = sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v13 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v12))
    {
      v14 = v13;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20[0] = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_25C7E77E4(v2, *(&v2 + 1), v20);
      *(v15 + 12) = 2048;
      swift_beginAccess();
      result = sub_25C7E92DC(v23, &v18, &qword_27FC16290, &qword_25C830908);
      if (!v19)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      sub_25C801F34(&v18, &v21);
      swift_dynamicCast();
      *(v15 + 14) = v17;
      _os_log_impl(&dword_25C7D2000, v14, v12, "Get last eval time: %s, value %f", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x25F890110](v16, -1, -1);
      MEMORY[0x25F890110](v15, -1, -1);
    }

    swift_beginAccess();
    result = sub_25C7E92DC(v23, &v18, &qword_27FC16290, &qword_25C830908);
    if (v19)
    {

      sub_25C801F34(&v18, &v21);
      swift_dynamicCast();
      return sub_25C7E97F4(v23, &qword_27FC16290, &qword_25C830908);
    }

    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  v10 = swift_slowAlloc();
  *v10 = 134217984;
  swift_beginAccess();
  result = sub_25C7E92DC(v23, &v18, &qword_27FC16290, &qword_25C830908);
  if (v19)
  {
    sub_25C801F34(&v18, &v21);
    swift_dynamicCast();
    *(v10 + 4) = v20[0];
    _os_log_impl(&dword_25C7D2000, v9, v7, "Get last eval setting to default value: %f", v10, 0xCu);
    MEMORY[0x25F890110](v10, -1, -1);

    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_25C82C240()
{
  result = qword_27FC16078;
  if (!qword_27FC16078)
  {
    sub_25C82DFBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC16078);
  }

  return result;
}

uint64_t sub_25C82C298(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25C82E4CC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25C82DFBC();
        v6 = sub_25C82E1FC();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25C82DFBC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25C82C648(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25C82C3C4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25C82C3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_25C82DFBC();
  v9 = MEMORY[0x28223BE20](v8);
  v40 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v44 = &v30 - v12;
  result = MEMORY[0x28223BE20](v11);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v14 + 16);
    v42 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v19 = v16 + v17 * (a3 - 1);
    v37 = -v17;
    v38 = (v14 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      v41(v43, v21, v8);
      v24 = v44;
      v23(v44, v19, v8);
      v25 = sub_25C82DF5C();
      v26 = *v18;
      (*v18)(v24, v8);
      result = v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v27)(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25C82C648(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v121 = a1;
  v9 = sub_25C82DFBC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v124 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v132 = &v117 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v138 = &v117 - v16;
  result = MEMORY[0x28223BE20](v15);
  v137 = &v117 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v121;
    if (!*v121)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_25C807028(a4);
    }

    v112 = v6;
    v140 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v113 = v10;
      v10 = a3;
      a3 = v113;
      while (*v10)
      {
        v114 = *(result + 16 * a4);
        v115 = result;
        v6 = *(result + 16 * (a4 - 1) + 40);
        sub_25C82D034(*v10 + a3[9] * v114, *v10 + a3[9] * *(result + 16 * (a4 - 1) + 32), *v10 + a3[9] * v6, v5);
        if (v112)
        {
        }

        if (v6 < v114)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_25C807028(v115);
        }

        if (a4 - 2 >= *(v115 + 2))
        {
          goto LABEL_124;
        }

        v116 = &v115[16 * a4];
        *v116 = v114;
        *(v116 + 1) = v6;
        v140 = v115;
        sub_25C806F9C(a4 - 1);
        result = v140;
        a4 = *(v140 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v20 = 0;
  v135 = (v10 + 1);
  v136 = v10 + 2;
  v134 = (v10 + 4);
  v21 = MEMORY[0x277D84F90];
  v122 = a3;
  v120 = a4;
  v139 = v9;
  while (1)
  {
    v22 = v20;
    v125 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v130 = v19;
      v119 = v6;
      v127 = *a3;
      v23 = v127;
      v24 = v10[9];
      v5 = v127 + v24 * (v20 + 1);
      v25 = v10[2];
      v26 = v137;
      v25(v137, v5, v9);
      v27 = v23 + v24 * v22;
      v28 = v138;
      v129 = v25;
      v25(v138, v27, v9);
      LODWORD(v131) = sub_25C82DF5C();
      v29 = v9;
      v30 = v10[1];
      v30(v28, v29);
      v128 = v30;
      result = (v30)(v26, v29);
      v118 = v22;
      v31 = v22 + 2;
      v133 = v24;
      v32 = v127 + v24 * (v22 + 2);
      while (1)
      {
        v33 = v130;
        if (v130 == v31)
        {
          break;
        }

        v34 = v10;
        v35 = v137;
        v36 = v139;
        v37 = v129;
        (v129)(v137, v32, v139);
        v38 = v138;
        v37(v138, v5, v36);
        v39 = sub_25C82DF5C() & 1;
        v40 = v128;
        (v128)(v38, v36);
        v41 = v35;
        v10 = v34;
        result = v40(v41, v36);
        ++v31;
        v32 += v133;
        v5 += v133;
        if ((v131 & 1) != v39)
        {
          v33 = v31 - 1;
          break;
        }
      }

      a3 = v122;
      v21 = v125;
      v6 = v119;
      a4 = v120;
      v9 = v139;
      v22 = v118;
      if (v131)
      {
        if (v33 < v118)
        {
          goto LABEL_127;
        }

        if (v118 < v33)
        {
          v117 = v10;
          v42 = v133 * (v33 - 1);
          v43 = v33 * v133;
          v44 = v33;
          v45 = v118;
          v46 = v118 * v133;
          do
          {
            if (v45 != --v44)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v49 = v33;
              v5 = v48 + v46;
              v131 = *v134;
              (v131)(v124, v48 + v46, v139, v21);
              if (v46 < v42 || v5 >= v48 + v43)
              {
                v47 = v139;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v47 = v139;
                if (v46 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v131)(v48 + v42, v124, v47);
              a3 = v122;
              v21 = v125;
              v33 = v49;
            }

            ++v45;
            v42 -= v133;
            v43 -= v133;
            v46 += v133;
          }

          while (v45 < v44);
          v6 = v119;
          a4 = v120;
          v10 = v117;
          v9 = v139;
          v22 = v118;
        }
      }
    }

    v50 = a3[1];
    if (v33 < v50)
    {
      if (__OFSUB__(v33, v22))
      {
        goto LABEL_126;
      }

      if (v33 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v22 + a4;
        }

        if (v51 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v33 != v51)
        {
          break;
        }
      }
    }

    v52 = v33;
    if (v33 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v125;
    }

    else
    {
      result = sub_25C7E6F4C(0, *(v125 + 2) + 1, 1, v125);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v53 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      result = sub_25C7E6F4C((v53 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v52;
    v55 = *v121;
    if (!*v121)
    {
      goto LABEL_135;
    }

    v126 = v52;
    if (a4)
    {
      while (1)
      {
        v56 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v57 = *(v21 + 4);
          v58 = *(v21 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_114;
          }

          v73 = &v21[16 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_117;
          }

          v79 = &v21[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_121;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v21[16 * v5];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_116;
        }

        v86 = &v21[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_119;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v56 - 1;
        if (v56 - 1 >= v5)
        {
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
LABEL_120:
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
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v94 = v21;
        v95 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v56 + 40];
        sub_25C82D034(*a3 + v10[9] * v95, *a3 + v10[9] * *&v21[16 * v56 + 32], *a3 + v10[9] * v5, v55);
        if (v6)
        {
        }

        if (v5 < v95)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_25C807028(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_111;
        }

        v96 = &v94[16 * a4];
        *(v96 + 4) = v95;
        *(v96 + 5) = v5;
        v140 = v94;
        result = sub_25C806F9C(v56);
        v21 = v140;
        v5 = *(v140 + 16);
        v9 = v139;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v21[16 * v5 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_112;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_113;
      }

      v68 = &v21[16 * v5];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_115;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_118;
      }

      if (v72 >= v64)
      {
        v90 = &v21[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v59 < v93)
        {
          v56 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v126;
    a4 = v120;
    if (v126 >= v19)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v97 = *a3;
  v98 = v10[9];
  v117 = v10;
  v133 = v10[2];
  v99 = v97 + v98 * (v33 - 1);
  v100 = -v98;
  v118 = v22;
  v101 = (v22 - v33);
  v131 = v97;
  v123 = v98;
  v5 = v97 + v33 * v98;
  v126 = v51;
LABEL_85:
  v129 = v99;
  v130 = v33;
  v127 = v5;
  v128 = v101;
  v102 = v99;
  while (1)
  {
    v103 = v137;
    v104 = v133;
    (v133)(v137, v5, v9, v21);
    v105 = v138;
    v104(v138, v102, v139);
    v106 = sub_25C82DF5C();
    a4 = v135;
    v107 = *v135;
    v108 = v105;
    v9 = v139;
    (*v135)(v108, v139);
    result = v107(v103, v9);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v33 = v130 + 1;
      v99 = &v129[v123];
      v101 = v128 - 1;
      v5 = v127 + v123;
      v52 = v126;
      if (v130 + 1 != v126)
      {
        goto LABEL_85;
      }

      v6 = v119;
      a3 = v122;
      v10 = v117;
      v22 = v118;
      if (v126 < v118)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    a4 = v134;
    v109 = *v134;
    v110 = v132;
    (*v134)(v132, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v9);
    v102 += v100;
    v5 += v100;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_25C82D034(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = sub_25C82DFBC();
  v8 = *(v57 - 8);
  v9 = MEMORY[0x28223BE20](v57);
  v55 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v54 = &v45 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v56 = a3;
  v16 = (a2 - a1) / v14;
  v60 = a1;
  v59 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v18;
    if (v18 < 1)
    {
      v33 = a4 + v18;
    }

    else
    {
      v30 = -v14;
      v49 = (v8 + 8);
      v50 = (v8 + 16);
      v31 = a4 + v18;
      v32 = v56;
      v33 = v29;
      v47 = a1;
      v48 = a4;
      v51 = -v14;
      do
      {
        v45 = v33;
        v34 = a2;
        v35 = a2 + v30;
        v52 = v34;
        v53 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v60 = v34;
            v58 = v45;
            goto LABEL_59;
          }

          v37 = v32;
          v46 = v33;
          v56 = v32 + v30;
          v38 = v31 + v30;
          v39 = *v50;
          v40 = v54;
          v41 = v57;
          v42 = v31;
          (*v50)(v54, v38, v57);
          v43 = v55;
          (v39)(v55, v35, v41);
          LOBYTE(v39) = sub_25C82DF5C();
          v44 = *v49;
          (*v49)(v43, v41);
          v44(v40, v41);
          if (v39)
          {
            break;
          }

          v33 = v38;
          v32 = v56;
          if (v37 < v42 || v56 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v53;
            a1 = v47;
          }

          else
          {
            v35 = v53;
            a1 = v47;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v38;
          v36 = v38 > v48;
          v30 = v51;
          v34 = v52;
          if (!v36)
          {
            a2 = v52;
            goto LABEL_58;
          }
        }

        v45 = v42;
        v32 = v56;
        if (v37 < v52 || v56 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v46;
          a1 = v47;
          v30 = v51;
        }

        else
        {
          a2 = v53;
          v33 = v46;
          a1 = v47;
          v30 = v51;
          if (v37 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v31 = v45;
      }

      while (v45 > v48);
    }

LABEL_58:
    v60 = a2;
    v58 = v33;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = a4 + v17;
    v58 = a4 + v17;
    if (v17 >= 1 && a2 < v56)
    {
      v51 = *(v8 + 16);
      v52 = v8 + 16;
      v49 = v14;
      v50 = (v8 + 8);
      do
      {
        v20 = v54;
        v21 = v57;
        v22 = v51;
        (v51)(v54, a2, v57);
        v23 = a2;
        v24 = v55;
        v22(v55, a4, v21);
        v25 = sub_25C82DF5C();
        v26 = *v50;
        (*v50)(v24, v21);
        v26(v20, v21);
        if (v25)
        {
          v27 = v49;
          a2 = v49 + v23;
          if (a1 < v23 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v23)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v27 = v49;
          v28 = v49 + a4;
          if (a1 < a4 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v23;
          }

          else
          {
            a2 = v23;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = v28;
          a4 += v27;
        }

        a1 += v27;
        v60 = a1;
      }

      while (a4 < v53 && a2 < v56);
    }
  }

LABEL_59:
  sub_25C80703C(&v60, &v59, &v58);
  return 1;
}

uint64_t sub_25C82D5C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16290, &qword_25C830908);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ODCurareEvaluationAndReportingError.hashValue.getter()
{
  v1 = *v0;
  sub_25C82E57C();
  MEMORY[0x25F88F8B0](v1);
  return sub_25C82E59C();
}

uint64_t sub_25C82D6D0()
{
  v1 = *v0;
  sub_25C82E57C();
  MEMORY[0x25F88F8B0](v1);
  return sub_25C82E59C();
}

uint64_t sub_25C82D744(uint64_t a1)
{
  v2 = *v1;
  sub_25C82E57C();
  MEMORY[0x25F88F8B0](v2);
  return sub_25C82E59C();
}

unint64_t sub_25C82D78C()
{
  result = qword_27FC16390;
  if (!qword_27FC16390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC16390);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ODCurareEvaluationAndReportingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ODCurareEvaluationAndReportingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}