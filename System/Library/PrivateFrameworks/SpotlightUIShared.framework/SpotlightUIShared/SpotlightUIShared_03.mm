uint64_t sub_26B937C0C()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_26B937D1C, v1, 0);
}

uint64_t sub_26B937D1C()
{
  v1 = v0[18];

  (*(*v1 + 200))(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_26B937DBC()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21];

  v4 = sub_26B9A7568();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_26B9AB564();
  v6 = sub_26B9AC934();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[26];
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[20];
  if (v7)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26B8E8000, v5, v6, "Unable to retrieve app info from ATXAppDirectoryClient", v12, 2u);
    MEMORY[0x26D6879F0](v12, -1, -1);
  }

  (*(v10 + 8))(v9, v11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v13 = v0[1];

  return v13();
}

void sub_26B937F50(unint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x277D84F90];
  v58 = MEMORY[0x277D84F90];
  v57 = v3;
  v56 = 0;
  sub_26B93D0F4();
  v5 = &type metadata for QueryDisplayStyle;
  sub_26B9AC684();
  v6 = sub_26B9AC684();
  if (v51 == v55)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  LODWORD(v50) = v7;
  v8 = a1;
  v9 = (*(*a1 + 144))(v6);
  if (!v9)
  {
    v45 = v4;
    goto LABEL_26;
  }

  v10 = v9;
  if (v9 >> 62)
  {
    v11 = sub_26B9ACB44();
    if (v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_7:
      v49 = objc_opt_self();
      if (v11 < 1)
      {
        __break(1u);
        goto LABEL_40;
      }

      v12 = 0;
      v47 = 0x800000026B9B8240;
      v48 = v10 & 0xC000000000000001;
      v45 = MEMORY[0x277D84F90];
      do
      {
        if (v48)
        {
          v13 = MEMORY[0x26D686B00](v12, v10);
        }

        else
        {
          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = [v13 localizedName];
        if (!v15)
        {
          v15 = [v14 localizedStringForCategoryID_];
        }

        v16 = v15;
        v17 = sub_26B9AC504();
        v19 = v18;

        v20 = sub_26B9AC4C4();
        v51 = 0xD00000000000001CLL;
        v52 = v47;
        MEMORY[0x26D686470](46, 0xE100000000000000);

        MEMORY[0x26D686470](v17, v19);

        v21 = sub_26B9AC4C4();

        v22 = [v14 appIdentities];
        if (!v22)
        {
          sub_26B9294B8(0, &qword_280426590, 0x277CEB380);
          sub_26B9AC6F4();
          v22 = sub_26B9AC6E4();
        }

        v23 = [v49 appSectionWithTitle:v20 identifier:v21 style:v50 appIdentities:v22];

        if (v23)
        {
          (*(*a1 + 192))(&v51);
          (*(*v46 + 192))(v23, &v51);
          sub_26B8EACD8(&v51, &qword_280426558, &unk_26B9B1DA0);
          v24 = v23;
          MEMORY[0x26D6865A0]();
          if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_26B9AC734();
          }

          sub_26B9AC774();

          v45 = v58;
        }

        else
        {
        }

        ++v12;
      }

      while (v11 != v12);
      goto LABEL_25;
    }
  }

  v45 = MEMORY[0x277D84F90];
LABEL_25:

LABEL_26:
  v25 = *(*a1 + 192);
  v26 = (*a1 + 192);
  v25(&v51);
  v27 = v53;
  if (!v53)
  {
    sub_26B8EACD8(&v51, &qword_280426558, &unk_26B9B1DA0);
    goto LABEL_43;
  }

  v28 = v54;
  v29 = __swift_project_boxed_opaque_existential_1(&v51, v53);
  v30 = *(v27 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v45 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v32);
  sub_26B8EACD8(&v51, &qword_280426558, &unk_26B9B1DA0);
  (*(v28 + 8))(v27, v28);
  (*(v30 + 8))(v32, v27);
  v51 = 0xD00000000000001CLL;
  v52 = 0x800000026B9B8240;
  MEMORY[0x26D686470](0x747365676775532ELL, 0xEC000000736E6F69);
  v33 = objc_opt_self();
  v34 = sub_26B9AC4C4();
  v35 = sub_26B9AC4C4();
  sub_26B9294B8(0, &qword_280426590, 0x277CEB380);
  v36 = sub_26B9AC6E4();
  v5 = [v33 appSectionWithTitle:v34 identifier:v35 style:v50 appIdentities:v36];

  if (!v5)
  {

    goto LABEL_43;
  }

  v37 = [(ValueMetadata *)v5 results];
  if (!v37)
  {
LABEL_52:
    __break(1u);
    return;
  }

  v38 = v37;
  v49 = v26;
  v50 = v25;

  sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
  v8 = sub_26B9AC6F4();

  if (v8 >> 62)
  {
LABEL_40:
    v39 = sub_26B9ACB44();
    if (v39)
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  v39 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v39)
  {
LABEL_31:
    if (v39 < 1)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v40 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x26D686B00](v40, v8);
      }

      else
      {
        v41 = *(v8 + 8 * v40 + 32);
      }

      v42 = v41;
      ++v40;
      v43 = sub_26B9AC4C4();
      [v42 setSectionBundleIdentifier_];
    }

    while (v39 != v40);
  }

LABEL_41:

  v50(&v51, v44);
  (*(*v46 + 192))(v5, &v51);
  sub_26B8EACD8(&v51, &qword_280426558, &unk_26B9B1DA0);
  if (v45 >> 62 && sub_26B9ACB44() < 0)
  {
    __break(1u);
    goto LABEL_51;
  }

  sub_26B93D5E4(0, 0, v5);

LABEL_43:
  if (!(v58 >> 62))
  {
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    goto LABEL_45;
  }

  if (!sub_26B9ACB44())
  {
LABEL_45:
  }
}

unint64_t sub_26B93875C(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x277D84F90];
  v72 = MEMORY[0x277D84F90];
  LOBYTE(v71) = v3;
  LOBYTE(v70) = 0;
  sub_26B93D0F4();
  sub_26B9AC684();
  v5 = sub_26B9AC684();
  if (v68 == v67)
  {
    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  v62 = v6;
  v71 = v4;
  v60 = a1;
  v57 = (*(*a1 + 144))(v5);
  if (v57)
  {
    if (v57 >> 62)
    {
      goto LABEL_37;
    }

    for (i = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26B9ACB44())
    {
      v8 = 0;
      v56 = v57 + 32;
      v9 = MEMORY[0x277D84F90];
      v58 = i;
      while ((v57 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D686B00](v8, v57);
        v11 = __OFADD__(v8, 1);
        v12 = v8 + 1;
        if (v11)
        {
          goto LABEL_34;
        }

LABEL_15:
        v63 = v10;
        v65 = v12;
        v13 = [v10 appIdentities];
        sub_26B9294B8(0, &qword_280426590, 0x277CEB380);
        v14 = sub_26B9AC6F4();

        if (v14 >> 62)
        {
          v15 = sub_26B9ACB44();
          if (!v15)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v15)
          {
            goto LABEL_8;
          }
        }

        if (v15 < 1)
        {
          goto LABEL_35;
        }

        for (j = 0; j != v15; ++j)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x26D686B00](j, v14);
          }

          else
          {
            v17 = *(v14 + 8 * j + 32);
          }

          v18 = v17;
          v19 = [v17 bundleIdentifier];
          if (!v19)
          {
            sub_26B9AC504();
            v19 = sub_26B9AC4C4();
          }

          v20 = SSAppNameForBundleId();

          if (v20)
          {
            v21 = sub_26B9AC504();
            v23 = v22;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_26B93B6AC(0, v9[2] + 1, 1, v9);
            }

            v25 = v9[2];
            v24 = v9[3];
            if (v25 >= v24 >> 1)
            {
              v9 = sub_26B93B6AC((v24 > 1), v25 + 1, 1, v9);
            }

            v9[2] = v25 + 1;
            v26 = &v9[3 * v25];
            v26[4] = v18;
            v26[5] = v21;
            v26[6] = v23;
            v71 = v9;
          }

          else
          {
          }
        }

LABEL_8:

        v8 = v65;
        if (v65 == v58)
        {
          goto LABEL_38;
        }
      }

      if (v8 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v10 = *(v56 + 8 * v8);
      v11 = __OFADD__(v8, 1);
      v12 = v8 + 1;
      if (!v11)
      {
        goto LABEL_15;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      ;
    }

LABEL_38:
  }

  sub_26B938FC0(&v71);
  v27 = MEMORY[0x277D84F90];
  v70 = MEMORY[0x277D84F90];
  v28 = v71[2];
  if (v28)
  {
    v29 = 0;
    v66 = 0;
    v30 = v71 + 6;
    v59 = MEMORY[0x277D84F90];
    while (1)
    {
      v32 = HIBYTE(*v30) & 0xFLL;
      if ((*v30 & 0x2000000000000000) == 0)
      {
        v32 = *(v30 - 1) & 0xFFFFFFFFFFFFLL;
      }

      if (!v32)
      {
        goto LABEL_46;
      }

      v33 = *(v30 - 2);

      v34 = sub_26B9AC604();
      v36 = v35;
      if (!v66)
      {
        goto LABEL_42;
      }

      v68 = v29;
      v69 = v66;
      sub_26B92C070();
      if (!sub_26B9ACA94())
      {

        v34 = v29;
        goto LABEL_43;
      }

      if (v27 >> 62)
      {
        if (sub_26B9ACB44())
        {
LABEL_54:

          v37 = v59;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_26B93B564(0, v59[2] + 1, 1, v59);
          }

          v39 = v37[2];
          v38 = v37[3];
          v59 = v37;
          if (v39 >= v38 >> 1)
          {
            v59 = sub_26B93B564((v38 > 1), v39 + 1, 1, v37);
          }

          v59[2] = v39 + 1;
          v40 = &v59[3 * v39];
          v40[4] = v29;
          v40[5] = v66;
          v40[6] = v27;
          goto LABEL_42;
        }
      }

      else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

LABEL_42:

      v70 = MEMORY[0x277D84F90];
      v66 = v36;
LABEL_43:
      v31 = v33;
      MEMORY[0x26D6865A0]();
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26B9AC734();
      }

      sub_26B9AC774();

      v27 = v70;
      v29 = v34;
LABEL_46:
      v30 += 3;
      if (!--v28)
      {

        v41 = v59;
        goto LABEL_64;
      }
    }
  }

  v41 = MEMORY[0x277D84F90];
LABEL_64:

  v42 = v41[2];
  if (v42)
  {
    v43 = objc_opt_self();
    v44 = v41 + 6;
    v64 = MEMORY[0x277D84F90];
    do
    {
      v45 = sub_26B9AC544();
      v47 = v46;

      v48 = sub_26B9AC4C4();
      v68 = 0xD00000000000001FLL;
      v69 = 0x800000026B9B8C80;
      MEMORY[0x26D686470](v45, v47);

      v49 = sub_26B9AC4C4();

      sub_26B9294B8(0, &qword_280426590, 0x277CEB380);
      v50 = sub_26B9AC6E4();

      v51 = [v43 appSectionWithTitle:v48 identifier:v49 style:v62 appIdentities:v50];

      if (v51)
      {
        (*(*v60 + 192))(&v68);
        (*(*v61 + 192))(v51, &v68);
        sub_26B8EACD8(&v68, &qword_280426558, &unk_26B9B1DA0);
        v52 = v51;
        MEMORY[0x26D6865A0]();
        if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26B9AC734();
        }

        sub_26B9AC774();

        v64 = v72;
      }

      v44 += 3;
      --v42;
    }

    while (v42);
  }

  else
  {
    v64 = MEMORY[0x277D84F90];
  }

  v53 = v64;
  if (v64 >> 62)
  {
    v54 = sub_26B9ACB44();
  }

  else
  {
    v54 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v54)
  {

    return 0;
  }

  return v53;
}

uint64_t sub_26B938F50(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26B93D148(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_26B93B8A0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26B938FC0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26B93D15C(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_26B93B998(v5);
  *a1 = v2;
  return result;
}

void sub_26B939030(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_26B9AB224();
  MEMORY[0x28223BE20](v4 - 8);
  v128[1] = v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26B9AC4B4();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v128[0] = v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = *a2;
  v160 = MEMORY[0x277D84F90];
  v9 = (*a1 + 192);
  v129 = *v9;
  v128[2] = v9;
  v129(&v155, v7);
  v10 = v158;
  v133 = a1;
  if (!v158)
  {
    v29 = sub_26B8EACD8(&v155, &qword_280426558, &unk_26B9B1DA0);
    v131 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v11 = v159;
  v12 = __swift_project_boxed_opaque_existential_1(&v155, v158);
  v13 = *(v10 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15);
  sub_26B8EACD8(&v155, &qword_280426558, &unk_26B9B1DA0);
  (*(v11 + 8))(v10, v11);
  (*(v13 + 8))(v15, v10);
  v155 = 0xD00000000000001CLL;
  v156 = 0x800000026B9B8240;
  MEMORY[0x26D686470](0x747365676775532ELL, 0xEC000000736E6F69);
  v16 = objc_opt_self();
  v17 = sub_26B9AC4C4();
  v18 = sub_26B9AC4C4();
  sub_26B9294B8(0, &qword_280426590, 0x277CEB380);
  v19 = sub_26B9AC6E4();
  v20 = [v16 appSectionWithTitle:v17 identifier:v18 style:1 appIdentities:v19];

  if (v20)
  {
    v21 = [v20 results];
    if (!v21)
    {
      goto LABEL_127;
    }

    v22 = v21;

    sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
    v23 = sub_26B9AC6F4();

    if (v23 >> 62)
    {
      v24 = sub_26B9ACB44();
      if (v24)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
LABEL_6:
        if (v24 >= 1)
        {
          v25 = 0;
          do
          {
            if ((v23 & 0xC000000000000001) != 0)
            {
              v26 = MEMORY[0x26D686B00](v25, v23);
            }

            else
            {
              v26 = *(v23 + 8 * v25 + 32);
            }

            v27 = v26;
            ++v25;
            v28 = sub_26B9AC4C4();
            [v27 setSectionBundleIdentifier_];
          }

          while (v24 != v25);
          goto LABEL_15;
        }

        __break(1u);
LABEL_127:
        __break(1u);
        return;
      }
    }

LABEL_15:

    v129(&v155, v31);
    (*(*v130 + 192))(v20, &v155);
    sub_26B8EACD8(&v155, &qword_280426558, &unk_26B9B1DA0);
    v32 = v20;
    MEMORY[0x26D6865A0]();
    if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26B9AC734();
    }

    sub_26B9AC774();

    v30 = v160;
    goto LABEL_18;
  }

  v30 = MEMORY[0x277D84F90];
LABEL_18:
  v131 = v30;
  a1 = v133;
LABEL_19:
  v153 = MEMORY[0x277D84F90];
  v154 = MEMORY[0x277D84F90];
  v152 = MEMORY[0x277D84F90];
  v33 = (*(*a1 + 144))(v29);
  if (v33)
  {
    v135 = v33 & 0xFFFFFFFFFFFFFF8;
    if (v33 >> 62)
    {
      v127 = v33;
      v34 = sub_26B9ACB44();
      v33 = v127;
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v137 = v33;
    if (v34)
    {
      v35 = 0;
      v36 = 0;
      v139 = v137 & 0xC000000000000001;
      v134 = v137 + 32;
      v136 = ".SA Color Finesse 3 UI";
      v142 = MEMORY[0x277D84F90];
      v37 = &selRef_setObject_forKey_;
      v38 = &qword_280433D80;
      v138 = v34;
      while (1)
      {
        if (v139)
        {
          v39 = MEMORY[0x26D686B00](v35, v137);
        }

        else
        {
          if (v35 >= *(v135 + 16))
          {
            goto LABEL_90;
          }

          v39 = *(v134 + 8 * v35);
        }

        v40 = v39;
        v41 = __OFADD__(v35, 1);
        v42 = v35 + 1;
        if (v41)
        {
          __break(1u);
          goto LABEL_89;
        }

        v43 = [v39 appIdentities];
        sub_26B9294B8(0, &qword_280426590, 0x277CEB380);
        v44 = sub_26B9AC6F4();

        v141 = v42;
        v45 = v44 >> 62 ? sub_26B9ACB44() : *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v140 = v40;
        if (v45)
        {
          break;
        }

LABEL_24:

        v35 = v141;
        if (v141 == v138)
        {
          goto LABEL_71;
        }
      }

      if (v45 >= 1)
      {
        v46 = 0;
        v146 = v44 & 0xC000000000000001;
        v144 = v44;
        while (1)
        {
          if (v146)
          {
            v47 = MEMORY[0x26D686B00](v46, v44);
          }

          else
          {
            v47 = *(v44 + 8 * v46 + 32);
          }

          v48 = v47;
          v49 = [v47 v37[25]];
          if (!v49)
          {
            sub_26B9AC504();
            v49 = sub_26B9AC4C4();
          }

          v50 = SSAppNameForBundleId();

          if (v50)
          {
            break;
          }

LABEL_36:
          if (v45 == ++v46)
          {
            goto LABEL_24;
          }
        }

        v145 = sub_26B9AC504();
        v52 = v51;

        v53 = [v48 v37[25]];
        v54 = sub_26B9AC504();
        v56 = v55;

        if (qword_28042C240 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v57 = *v38;
        if (*(*v38 + 16) && (v58 = sub_26B9201A8(v54, v56), (v59 & 1) != 0))
        {
          v60 = *(*(v57 + 56) + v58);
          v61 = swift_endAccess();
          if (v60 == 1)
          {

            goto LABEL_49;
          }
        }

        else
        {
          v61 = swift_endAccess();
        }

        v155 = v54;
        v156 = v56;
        MEMORY[0x28223BE20](v61);
        v128[-2] = &v155;
        if (sub_26B93B7F4(sub_26B93DAAC, &v128[-4], &unk_287C5E870))
        {

          goto LABEL_63;
        }

        v143 = v36;
        v66 = v38;
        v67 = v37;
        v69 = sub_26B9AC534();
        v70 = v68;
        if (v69 == 0x7075746573 && v68 == 0xE500000000000000 || (sub_26B9ACEB4() & 1) != 0)
        {

          goto LABEL_61;
        }

        v155 = v69;
        v156 = v70;
        v149 = 0x6C6174736E696E75;
        v150 = 0xE90000000000006CLL;
        sub_26B92C070();
        v71 = sub_26B9ACAB4();

        if (v71)
        {

LABEL_61:

          v37 = v67;
        }

        else
        {
          v72 = sub_26B9AC5E4();

          v37 = v67;
          if ((v72 & 1) == 0)
          {
            v38 = v66;
            v36 = v143;
LABEL_49:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v142 = sub_26B93B444(0, *(v142 + 2) + 1, 1, v142);
            }

            v63 = *(v142 + 2);
            v62 = *(v142 + 3);
            if (v63 >= v62 >> 1)
            {
              v142 = sub_26B93B444((v62 > 1), v63 + 1, 1, v142);
            }

            v64 = v142;
            *(v142 + 2) = v63 + 1;
            v65 = &v64[24 * v63];
            *(v65 + 4) = v145;
            *(v65 + 5) = v52;
            *(v65 + 6) = v48;
            v154 = v64;
LABEL_63:
            v44 = v144;
            goto LABEL_36;
          }
        }

        v38 = v66;
        v36 = v143;
        goto LABEL_63;
      }

LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      if (!sub_26B9ACB44())
      {
        goto LABEL_92;
      }

      goto LABEL_81;
    }

LABEL_71:
  }

  v73 = v133;
  (*(*v133 + 168))(v33);
  if (v74)
  {
    sub_26B938F50(&v154);
    sub_26B938F50(&v152);
    sub_26B938F50(&v153);
    v75 = v154;
  }

  else
  {
    v76 = MEMORY[0x277D84F90];
    sub_26B93A5D4(MEMORY[0x277D84F90]);
    sub_26B93A5D4(v76);
    v152 = v76;
    v153 = v76;
    type metadata accessor for FuzzyRanker();
    v77 = v154;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26B9B1290;
    *(inited + 32) = swift_getKeyPath();
    v79 = sub_26B93D26C(inited);
    swift_setDeallocating();
    v80 = swift_arrayDestroy();
    (*(*v73 + 224))(&v149, v80);
    v81 = v150;
    v147 = v149;
    v148 = v150;
    v82 = QueryRepresentation.rawQuery.getter();
    v84 = v83;

    v85 = sub_26B93D6D0();
    v156 = 0;
    v157 = 0;
    v155 = 0;
    v86 = sub_26B906128();
    v75 = sub_26B9731BC(v77, v79, v82, v84, &v155, v86 & 1, &type metadata for AppZKWQueryDataSource.RankableAppIdentity, v85);

    v154 = v75;
  }

  v87 = *(v75 + 2);
  v88 = MEMORY[0x277D84F90];
  if (v87)
  {
    v155 = MEMORY[0x277D84F90];
    sub_26B9ACC94();
    v89 = (v75 + 48);
    do
    {
      v90 = *v89;
      v89 += 3;
      v91 = v90;
      sub_26B9ACC64();
      sub_26B9ACCA4();
      sub_26B9ACCB4();
      sub_26B9ACC74();
      --v87;
    }

    while (v87);
    v88 = v155;
  }

  if (v88 >> 62)
  {
    goto LABEL_91;
  }

  if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_92:

    goto LABEL_93;
  }

LABEL_81:
  v92 = sub_26B9AC4C4();
  v93 = sub_26B9AC4C4();
  LOBYTE(v147) = v132;
  v151 = 0;
  sub_26B93D0F4();
  sub_26B9AC684();
  sub_26B9AC684();
  if (v155 == v149)
  {
    v94 = 0;
  }

  else
  {
    v94 = 3;
  }

  v95 = objc_opt_self();
  sub_26B9294B8(0, &qword_280426590, 0x277CEB380);
  v96 = sub_26B9AC6E4();

  v97 = [v95 appSectionWithTitle:v92 identifier:v93 style:v94 appIdentities:v96];

  if (v97)
  {
    (v129)(&v155);
    (*(*v130 + 192))(v97, &v155);
    sub_26B8EACD8(&v155, &qword_280426558, &unk_26B9B1DA0);
    v98 = v97;
    MEMORY[0x26D6865A0]();
    if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26B9AC734();
    }

    sub_26B9AC774();

    v131 = v160;
  }

LABEL_93:
  v99 = v153;
  v100 = *(v153 + 2);
  v101 = MEMORY[0x277D84F90];
  if (v100)
  {
    v155 = MEMORY[0x277D84F90];
    sub_26B9ACC94();
    v102 = (v99 + 48);
    do
    {
      v103 = *v102;
      v102 += 3;
      v104 = v103;
      sub_26B9ACC64();
      sub_26B9ACCA4();
      sub_26B9ACCB4();
      sub_26B9ACC74();
      --v100;
    }

    while (v100);
    v105 = v155;
  }

  else
  {
    v105 = MEMORY[0x277D84F90];
  }

  if (!(v105 >> 62))
  {
    if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_100;
    }

LABEL_108:

    goto LABEL_109;
  }

  if (!sub_26B9ACB44())
  {
    goto LABEL_108;
  }

LABEL_100:
  sub_26B9AC4A4();
  v106 = [objc_opt_self() bundle];
  sub_26B9AB214();
  sub_26B9AC514();
  v107 = sub_26B9AC4C4();

  v108 = sub_26B9AC4C4();
  LOBYTE(v147) = v132;
  v151 = 0;
  sub_26B93D0F4();
  sub_26B9AC684();
  sub_26B9AC684();
  if (v155 == v149)
  {
    v109 = 0;
  }

  else
  {
    v109 = 3;
  }

  v110 = objc_opt_self();
  sub_26B9294B8(0, &qword_280426590, 0x277CEB380);
  v111 = sub_26B9AC6E4();

  v112 = [v110 appSectionWithTitle:v107 identifier:v108 style:v109 appIdentities:v111];

  if (v112)
  {
    (v129)(&v155);
    (*(*v130 + 192))(v112, &v155);
    sub_26B8EACD8(&v155, &qword_280426558, &unk_26B9B1DA0);
    v113 = v112;
    MEMORY[0x26D6865A0]();
    if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26B9AC734();
    }

    sub_26B9AC774();

    v131 = v160;
  }

LABEL_109:
  v114 = v152;
  v115 = *(v152 + 2);
  if (v115)
  {
    v155 = v101;
    sub_26B9ACC94();
    v116 = 48;
    do
    {
      v117 = *&v114[v116];
      sub_26B9ACC64();
      sub_26B9ACCA4();
      sub_26B9ACCB4();
      sub_26B9ACC74();
      v116 += 24;
      --v115;
    }

    while (v115);

    v118 = v155;
    if (!(v155 >> 62))
    {
LABEL_113:
      if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_114;
      }

LABEL_123:

      return;
    }
  }

  else
  {

    v118 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_113;
    }
  }

  if (!sub_26B9ACB44())
  {
    goto LABEL_123;
  }

LABEL_114:
  sub_26B9AC4A4();
  v119 = [objc_opt_self() &off_279D101F8];
  sub_26B9AB214();
  sub_26B9AC514();
  v120 = sub_26B9AC4C4();

  v121 = sub_26B9AC4C4();
  LOBYTE(v147) = v132;
  v151 = 0;
  sub_26B93D0F4();
  sub_26B9AC684();
  sub_26B9AC684();
  if (v155 == v149)
  {
    v122 = 0;
  }

  else
  {
    v122 = 3;
  }

  v123 = objc_opt_self();
  sub_26B9294B8(0, &qword_280426590, 0x277CEB380);
  v124 = sub_26B9AC6E4();

  v125 = [v123 appSectionWithTitle:v120 identifier:v121 style:v122 appIdentities:v124];

  if (v125)
  {
    v129(&v155, v131);
    (*(*v130 + 192))(v125, &v155);
    sub_26B8EACD8(&v155, &qword_280426558, &unk_26B9B1DA0);
    v126 = v125;
    MEMORY[0x26D6865A0]();
    if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26B9AC734();
    }

    sub_26B9AC774();
  }
}

uint64_t sub_26B93A5D4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_26B93B444(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26B93A6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426598, &qword_26B9B1F60);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v6);
  v10 = &v25[-v9 - 8];
  sub_26B934398(a3, v25);
  if (!v26)
  {
    v17 = &qword_280426558;
    v18 = &unk_26B9B1DA0;
    v19 = v25;
LABEL_11:
    sub_26B8EACD8(v19, v17, v18);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804265A0, &qword_26B9B1F68);
  sub_26B9294B8(0, &qword_2804265A8, 0x277CEB368);
  if (swift_dynamicCast())
  {
    v11 = v24;
    if (a2)
    {
      v12 = objc_allocWithZone(MEMORY[0x277CEB380]);
      v13 = sub_26B9AC4C4();
      v14 = [v12 initWithBundleIdentifier_];

      v15 = [v11 uuidForIdentity_];
      if (v15)
      {
        sub_26B9AB1D4();

        v16 = 0;
      }

      else
      {
        v16 = 1;
      }

      v20 = sub_26B9AB1F4();
      v21 = *(v20 - 8);
      (*(v21 + 56))(v8, v16, 1, v20);
      sub_26B93D77C(v8, v10);
      if ((*(v21 + 48))(v10, 1, v20) != 1)
      {
        v23 = sub_26B9AB1C4();

        (*(v21 + 8))(v10, v20);
        return v23;
      }

      v17 = &qword_280426598;
      v18 = &qword_26B9B1F60;
      v19 = v10;
      goto LABEL_11;
    }
  }

  return 0;
}

uint64_t AppZKWQueryDataSource.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_26B93A9D8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  *a1 = result;
  return result;
}

uint64_t sub_26B93AA10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  v12 = (*(**v4 + 128) + **(**v4 + 128));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_26B8EB6C8;

  return v12(v9, a2, a3, a4);
}

uint64_t sub_26B93AB54()
{
  v1 = v0 + OBJC_IVAR____TtC17SpotlightUIShared32SUIPerformAppBrowseFilterCommand_categoryID;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_26B93ABA0(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC17SpotlightUIShared32SUIPerformAppBrowseFilterCommand_categoryID;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

char *sub_26B93AD28(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC17SpotlightUIShared32SUIPerformAppBrowseFilterCommand_categoryID];
  *v3 = 0;
  v3[8] = 1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SUIPerformAppBrowseFilterCommand();
  v4 = objc_msgSendSuper2(&v9, sel_init);
  v5 = [a1 localizedStringForCategoryID_];
  if (!v5)
  {
    sub_26B9AC504();
    v5 = sub_26B9AC4C4();
  }

  [v4 setTokenString_];

  [v4 setEntityType_];
  v6 = [a1 categoryID];

  v7 = &v4[OBJC_IVAR____TtC17SpotlightUIShared32SUIPerformAppBrowseFilterCommand_categoryID];
  swift_beginAccess();
  *v7 = v6;
  v7[8] = 0;

  return v4;
}

void sub_26B93AE5C(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SUIPerformAppBrowseFilterCommand();
  v3 = objc_msgSendSuper2(&v8, sel_encodeWithCoder_, a1);
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x58))(v3);
  if ((v5 & 1) == 0)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v7 = sub_26B9AC4C4();
    [a1 encodeObject:v6 forKey:v7];
  }
}

id sub_26B93B0C4(void *a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC17SpotlightUIShared32SUIPerformAppBrowseFilterCommand_categoryID];
  *v4 = 0;
  v4[8] = 1;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for SUIPerformAppBrowseFilterCommand();
  v5 = objc_msgSendSuper2(&v17, sel_initWithCoder_, a1);
  if (v5)
  {
    v6 = v5;
    v7 = v5;
    v8 = sub_26B9AC4C4();
    v9 = [a1 decodeObjectForKey_];

    if (v9)
    {
      sub_26B9ACAD4();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v16[0] = v14;
    v16[1] = v15;
    if (*(&v15 + 1))
    {
      sub_26B9294B8(0, &qword_2804265C0, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v11 = [v13 unsignedIntegerValue];

        v12 = &v7[OBJC_IVAR____TtC17SpotlightUIShared32SUIPerformAppBrowseFilterCommand_categoryID];
        swift_beginAccess();
        *v12 = v11;
        v12[8] = 0;
      }

      else
      {
      }
    }

    else
    {

      sub_26B8EACD8(v16, &qword_2804265B8, &qword_26B9B1F70);
    }

    return v6;
  }

  else
  {

    return 0;
  }
}

id sub_26B93B2D4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SUIPerformAppBrowseFilterCommand();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_26B93B308()
{
  sub_26B9ACFB4();
  sub_26B9AC574();
  return sub_26B9ACFF4();
}

uint64_t sub_26B93B35C(uint64_t a1)
{
  sub_26B9ACFB4();
  sub_26B9AC574();
  return sub_26B9ACFF4();
}

uint64_t sub_26B93B3A4(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_26B9ACEB4() & 1) == 0)
  {
    return 0;
  }

  sub_26B9294B8(0, &qword_280426F60, 0x277D82BB8);
  return sub_26B9AC9C4() & 1;
}

void *sub_26B93B428@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

char *sub_26B93B444(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804265E0, &qword_26B9B21F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26B93B564(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426608, &qword_26B9B2220);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426610, &qword_26B9B2228);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26B93B6AC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804265F8, &qword_26B9B2210);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426600, &qword_26B9B2218);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26B93B7F4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_26B93B8A0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26B9ACE64();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_26B9AC754();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26B93BCCC(v7, v8, a1, v4);
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
    return sub_26B93BAA0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26B93B998(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26B9ACE64();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426600, &qword_26B9B2218);
        v5 = sub_26B9AC754();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26B93C37C(v7, v8, a1, v4);
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
    return sub_26B93BBB8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26B93BAA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_26B92C070();
    v7 = v6 + 24 * v4 - 24;
    v8 = v5 - v4;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = sub_26B9ACA94();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *(v10 + 32);
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      *(v10 + 24) = *v10;
      *(v10 + 40) = v13;
      *v10 = v12;
      *(v10 + 8) = v11;
      v10 -= 24;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B93BBB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_26B92C070();
    v7 = (v6 + 24 * v4);
    v8 = v5 - v4;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = sub_26B9ACA94();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 3;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v12 = *v10;
      v11 = v10[1];
      v13 = v10[2];
      *v10 = *(v10 - 3);
      v10[2] = *(v10 - 1);
      *(v10 - 2) = v11;
      *(v10 - 1) = v13;
      *(v10 - 3) = v12;
      v10 -= 3;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B93BCCC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v90 = result;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      if (v7 + 1 >= v6)
      {
        v6 = v7 + 1;
      }

      else
      {
        v88 = v5;
        v10 = 24 * v7;
        v11 = *a3 + 24 * v7 + 56;
        sub_26B92C070();
        result = sub_26B9ACA94();
        v12 = result;
        v13 = v7 + 2;
        while (v6 != v13)
        {
          result = sub_26B9ACA94();
          ++v13;
          v11 += 24;
          if ((v12 == -1) == (result != -1))
          {
            v6 = v13 - 1;
            break;
          }
        }

        v5 = v88;
        if (v12 == -1)
        {
          v9 = v7;
          if (v6 < v7)
          {
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
            return result;
          }

          if (v7 < v6)
          {
            v62 = 0;
            v63 = 24 * v6;
            v64 = v7;
            do
            {
              if (v64 != v6 + v62 - 1)
              {
                v70 = *a3;
                if (!*a3)
                {
                  goto LABEL_126;
                }

                v65 = (v70 + v10);
                v66 = v70 + v63;
                v67 = *v65;
                v68 = *(v65 + 1);
                v69 = *(v66 - 24);
                v65[2] = *(v66 - 8);
                *v65 = v69;
                *(v66 - 24) = v67;
                *(v66 - 16) = v68;
              }

              ++v64;
              --v62;
              v63 -= 24;
              v10 += 24;
            }

            while (v64 < v6 + v62);
          }
        }

        else
        {
          v9 = v7;
        }
      }

      v14 = a3[1];
      if (v6 >= v14)
      {
        goto LABEL_20;
      }

      if (__OFSUB__(v6, v9))
      {
        goto LABEL_118;
      }

      if (v6 - v9 >= a4)
      {
        goto LABEL_20;
      }

      if (__OFADD__(v9, a4))
      {
        goto LABEL_119;
      }

      if (v9 + a4 < v14)
      {
        v14 = v9 + a4;
      }

      if (v14 < v9)
      {
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      if (v6 == v14)
      {
LABEL_20:
        v7 = v6;
      }

      else
      {
        v91 = v14;
        v89 = v5;
        v71 = v9;
        v72 = *a3;
        sub_26B92C070();
        v73 = v72 + 24 * v6 - 24;
        v87 = v71;
        v74 = v71 - v6;
        do
        {
          v75 = v74;
          v76 = v73;
          do
          {
            result = sub_26B9ACA94();
            if (result != -1)
            {
              break;
            }

            if (!v72)
            {
              goto LABEL_123;
            }

            v77 = *(v76 + 32);
            v79 = *(v76 + 16);
            v78 = *(v76 + 24);
            *(v76 + 24) = *v76;
            *(v76 + 40) = v79;
            *v76 = v78;
            *(v76 + 8) = v77;
            v76 -= 24;
          }

          while (!__CFADD__(v75++, 1));
          ++v6;
          v73 += 24;
          --v74;
        }

        while (v6 != v91);
        v9 = v87;
        v5 = v89;
        v7 = v91;
      }

      v6 = a3;
      if (v7 < v9)
      {
        goto LABEL_117;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26B93088C(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v16 = *(v8 + 2);
      v15 = *(v8 + 3);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        result = sub_26B93088C((v15 > 1), v16 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v17;
      v18 = &v8[16 * v16];
      *(v18 + 4) = v9;
      *(v18 + 5) = v7;
      v19 = *v90;
      if (!*v90)
      {
        goto LABEL_127;
      }

      if (v16)
      {
        while (1)
        {
          v20 = v17 - 1;
          if (v17 >= 4)
          {
            break;
          }

          if (v17 == 3)
          {
            v21 = *(v8 + 4);
            v22 = *(v8 + 5);
            v31 = __OFSUB__(v22, v21);
            v23 = v22 - v21;
            v24 = v31;
LABEL_41:
            if (v24)
            {
              goto LABEL_106;
            }

            v37 = &v8[16 * v17];
            v39 = *v37;
            v38 = *(v37 + 1);
            v40 = __OFSUB__(v38, v39);
            v41 = v38 - v39;
            v42 = v40;
            if (v40)
            {
              goto LABEL_109;
            }

            v43 = &v8[16 * v20 + 32];
            v45 = *v43;
            v44 = *(v43 + 1);
            v31 = __OFSUB__(v44, v45);
            v46 = v44 - v45;
            if (v31)
            {
              goto LABEL_112;
            }

            if (__OFADD__(v41, v46))
            {
              goto LABEL_113;
            }

            if (v41 + v46 >= v23)
            {
              if (v23 < v46)
              {
                v20 = v17 - 2;
              }

              goto LABEL_62;
            }

            goto LABEL_55;
          }

          v47 = &v8[16 * v17];
          v49 = *v47;
          v48 = *(v47 + 1);
          v31 = __OFSUB__(v48, v49);
          v41 = v48 - v49;
          v42 = v31;
LABEL_55:
          if (v42)
          {
            goto LABEL_108;
          }

          v50 = &v8[16 * v20];
          v52 = *(v50 + 4);
          v51 = *(v50 + 5);
          v31 = __OFSUB__(v51, v52);
          v53 = v51 - v52;
          if (v31)
          {
            goto LABEL_111;
          }

          if (v53 < v41)
          {
            goto LABEL_3;
          }

LABEL_62:
          v58 = v20 - 1;
          if (v20 - 1 >= v17)
          {
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
            goto LABEL_124;
          }

          v59 = *&v8[16 * v58 + 32];
          v60 = *&v8[16 * v20 + 40];
          sub_26B93CA2C((*a3 + 24 * v59), (*a3 + 24 * *&v8[16 * v20 + 32]), *a3 + 24 * v60, v19);
          if (v5)
          {
          }

          if (v60 < v59)
          {
            goto LABEL_102;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_26B932B28(v8);
          }

          if (v58 >= *(v8 + 2))
          {
            goto LABEL_103;
          }

          v61 = &v8[16 * v58];
          *(v61 + 4) = v59;
          *(v61 + 5) = v60;
          result = sub_26B932A9C(v20);
          v17 = *(v8 + 2);
          if (v17 <= 1)
          {
            goto LABEL_3;
          }
        }

        v25 = &v8[16 * v17 + 32];
        v26 = *(v25 - 64);
        v27 = *(v25 - 56);
        v31 = __OFSUB__(v27, v26);
        v28 = v27 - v26;
        if (v31)
        {
          goto LABEL_104;
        }

        v30 = *(v25 - 48);
        v29 = *(v25 - 40);
        v31 = __OFSUB__(v29, v30);
        v23 = v29 - v30;
        v24 = v31;
        if (v31)
        {
          goto LABEL_105;
        }

        v32 = &v8[16 * v17];
        v34 = *v32;
        v33 = *(v32 + 1);
        v31 = __OFSUB__(v33, v34);
        v35 = v33 - v34;
        if (v31)
        {
          goto LABEL_107;
        }

        v31 = __OFADD__(v23, v35);
        v36 = v23 + v35;
        if (v31)
        {
          goto LABEL_110;
        }

        if (v36 >= v28)
        {
          v54 = &v8[16 * v20 + 32];
          v56 = *v54;
          v55 = *(v54 + 1);
          v31 = __OFSUB__(v55, v56);
          v57 = v55 - v56;
          if (v31)
          {
            goto LABEL_114;
          }

          if (v23 < v57)
          {
            v20 = v17 - 2;
          }

          goto LABEL_62;
        }

        goto LABEL_41;
      }

LABEL_3:
      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_89;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_89:
  v6 = *v90;
  if (!*v90)
  {
    goto LABEL_128;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_121:
    result = sub_26B932B28(v8);
    v8 = result;
  }

  v81 = v5;
  v82 = *(v8 + 2);
  if (v82 >= 2)
  {
    while (*a3)
    {
      v5 = v82 - 1;
      v83 = *&v8[16 * v82];
      v84 = *&v8[16 * v82 + 24];
      sub_26B93CA2C((*a3 + 24 * v83), (*a3 + 24 * *&v8[16 * v82 + 16]), *a3 + 24 * v84, v6);
      if (v81)
      {
      }

      if (v84 < v83)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_26B932B28(v8);
      }

      if (v82 - 2 >= *(v8 + 2))
      {
        goto LABEL_116;
      }

      v85 = &v8[16 * v82];
      *v85 = v83;
      *(v85 + 1) = v84;
      result = sub_26B932A9C(v5);
      v82 = *(v8 + 2);
      if (v82 <= 1)
      {
      }
    }

    goto LABEL_125;
  }
}

uint64_t sub_26B93C37C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = result;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      if (v7 + 1 >= v6)
      {
        v6 = v7 + 1;
      }

      else
      {
        v89 = v5;
        v10 = 24 * v7;
        v11 = *a3 + 24 * v7;
        sub_26B92C070();
        result = sub_26B9ACA94();
        v12 = result;
        v13 = v7 + 2;
        v14 = v11 + 64;
        while (v6 != v13)
        {
          result = sub_26B9ACA94();
          ++v13;
          v14 += 24;
          if ((v12 == -1) == (result != -1))
          {
            v6 = v13 - 1;
            break;
          }
        }

        v5 = v89;
        if (v12 == -1)
        {
          v9 = v7;
          if (v6 < v7)
          {
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
            return result;
          }

          if (v7 < v6)
          {
            v63 = 0;
            v64 = 24 * v6;
            v65 = v7;
            do
            {
              if (v65 != v6 + v63 - 1)
              {
                v71 = *a3;
                if (!*a3)
                {
                  goto LABEL_126;
                }

                v66 = (v71 + v10);
                v67 = v71 + v64;
                v68 = *v66;
                v69 = *(v66 + 2);
                v70 = *(v67 - 8);
                *v66 = *(v67 - 24);
                *(v66 + 2) = v70;
                *(v67 - 24) = v68;
                *(v67 - 8) = v69;
              }

              ++v65;
              --v63;
              v64 -= 24;
              v10 += 24;
            }

            while (v65 < v6 + v63);
          }
        }

        else
        {
          v9 = v7;
        }
      }

      v15 = a3[1];
      if (v6 >= v15)
      {
        goto LABEL_20;
      }

      if (__OFSUB__(v6, v9))
      {
        goto LABEL_118;
      }

      if (v6 - v9 >= a4)
      {
        goto LABEL_20;
      }

      if (__OFADD__(v9, a4))
      {
        goto LABEL_119;
      }

      if (v9 + a4 < v15)
      {
        v15 = v9 + a4;
      }

      if (v15 < v9)
      {
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      if (v6 == v15)
      {
LABEL_20:
        v7 = v6;
      }

      else
      {
        v92 = v15;
        v90 = v5;
        v72 = v9;
        v73 = *a3;
        sub_26B92C070();
        v74 = (v73 + 24 * v6);
        v88 = v72;
        v75 = v72 - v6;
        do
        {
          v76 = v75;
          v77 = v74;
          do
          {
            result = sub_26B9ACA94();
            if (result != -1)
            {
              break;
            }

            if (!v73)
            {
              goto LABEL_123;
            }

            v79 = *v77;
            v78 = v77[1];
            v80 = v77[2];
            *v77 = *(v77 - 3);
            v77[2] = *(v77 - 1);
            *(v77 - 2) = v78;
            *(v77 - 1) = v80;
            *(v77 - 3) = v79;
            v77 -= 3;
          }

          while (!__CFADD__(v76++, 1));
          ++v6;
          v74 += 3;
          --v75;
        }

        while (v6 != v92);
        v9 = v88;
        v5 = v90;
        v7 = v92;
      }

      v6 = a3;
      if (v7 < v9)
      {
        goto LABEL_117;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26B93088C(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v17 = *(v8 + 2);
      v16 = *(v8 + 3);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        result = sub_26B93088C((v16 > 1), v17 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v18;
      v19 = &v8[16 * v17];
      *(v19 + 4) = v9;
      *(v19 + 5) = v7;
      v20 = *v91;
      if (!*v91)
      {
        goto LABEL_127;
      }

      if (v17)
      {
        while (1)
        {
          v21 = v18 - 1;
          if (v18 >= 4)
          {
            break;
          }

          if (v18 == 3)
          {
            v22 = *(v8 + 4);
            v23 = *(v8 + 5);
            v32 = __OFSUB__(v23, v22);
            v24 = v23 - v22;
            v25 = v32;
LABEL_41:
            if (v25)
            {
              goto LABEL_106;
            }

            v38 = &v8[16 * v18];
            v40 = *v38;
            v39 = *(v38 + 1);
            v41 = __OFSUB__(v39, v40);
            v42 = v39 - v40;
            v43 = v41;
            if (v41)
            {
              goto LABEL_109;
            }

            v44 = &v8[16 * v21 + 32];
            v46 = *v44;
            v45 = *(v44 + 1);
            v32 = __OFSUB__(v45, v46);
            v47 = v45 - v46;
            if (v32)
            {
              goto LABEL_112;
            }

            if (__OFADD__(v42, v47))
            {
              goto LABEL_113;
            }

            if (v42 + v47 >= v24)
            {
              if (v24 < v47)
              {
                v21 = v18 - 2;
              }

              goto LABEL_62;
            }

            goto LABEL_55;
          }

          v48 = &v8[16 * v18];
          v50 = *v48;
          v49 = *(v48 + 1);
          v32 = __OFSUB__(v49, v50);
          v42 = v49 - v50;
          v43 = v32;
LABEL_55:
          if (v43)
          {
            goto LABEL_108;
          }

          v51 = &v8[16 * v21];
          v53 = *(v51 + 4);
          v52 = *(v51 + 5);
          v32 = __OFSUB__(v52, v53);
          v54 = v52 - v53;
          if (v32)
          {
            goto LABEL_111;
          }

          if (v54 < v42)
          {
            goto LABEL_3;
          }

LABEL_62:
          v59 = v21 - 1;
          if (v21 - 1 >= v18)
          {
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
            goto LABEL_124;
          }

          v60 = *&v8[16 * v59 + 32];
          v61 = *&v8[16 * v21 + 40];
          sub_26B93CCF4((*a3 + 24 * v60), (*a3 + 24 * *&v8[16 * v21 + 32]), *a3 + 24 * v61, v20);
          if (v5)
          {
          }

          if (v61 < v60)
          {
            goto LABEL_102;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_26B932B28(v8);
          }

          if (v59 >= *(v8 + 2))
          {
            goto LABEL_103;
          }

          v62 = &v8[16 * v59];
          *(v62 + 4) = v60;
          *(v62 + 5) = v61;
          result = sub_26B932A9C(v21);
          v18 = *(v8 + 2);
          if (v18 <= 1)
          {
            goto LABEL_3;
          }
        }

        v26 = &v8[16 * v18 + 32];
        v27 = *(v26 - 64);
        v28 = *(v26 - 56);
        v32 = __OFSUB__(v28, v27);
        v29 = v28 - v27;
        if (v32)
        {
          goto LABEL_104;
        }

        v31 = *(v26 - 48);
        v30 = *(v26 - 40);
        v32 = __OFSUB__(v30, v31);
        v24 = v30 - v31;
        v25 = v32;
        if (v32)
        {
          goto LABEL_105;
        }

        v33 = &v8[16 * v18];
        v35 = *v33;
        v34 = *(v33 + 1);
        v32 = __OFSUB__(v34, v35);
        v36 = v34 - v35;
        if (v32)
        {
          goto LABEL_107;
        }

        v32 = __OFADD__(v24, v36);
        v37 = v24 + v36;
        if (v32)
        {
          goto LABEL_110;
        }

        if (v37 >= v29)
        {
          v55 = &v8[16 * v21 + 32];
          v57 = *v55;
          v56 = *(v55 + 1);
          v32 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v32)
          {
            goto LABEL_114;
          }

          if (v24 < v58)
          {
            v21 = v18 - 2;
          }

          goto LABEL_62;
        }

        goto LABEL_41;
      }

LABEL_3:
      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_89;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_89:
  v6 = *v91;
  if (!*v91)
  {
    goto LABEL_128;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_121:
    result = sub_26B932B28(v8);
    v8 = result;
  }

  v82 = v5;
  v83 = *(v8 + 2);
  if (v83 >= 2)
  {
    while (*a3)
    {
      v5 = v83 - 1;
      v84 = *&v8[16 * v83];
      v85 = *&v8[16 * v83 + 24];
      sub_26B93CCF4((*a3 + 24 * v84), (*a3 + 24 * *&v8[16 * v83 + 16]), *a3 + 24 * v85, v6);
      if (v82)
      {
      }

      if (v85 < v84)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_26B932B28(v8);
      }

      if (v83 - 2 >= *(v8 + 2))
      {
        goto LABEL_116;
      }

      v86 = &v8[16 * v83];
      *v86 = v84;
      *(v86 + 1) = v85;
      result = sub_26B932A9C(v5);
      v83 = *(v8 + 2);
      if (v83 <= 1)
      {
      }
    }

    goto LABEL_125;
  }
}

uint64_t sub_26B93CA2C(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 24;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 24;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[24 * v11] <= a4)
    {
      memmove(a4, __dst, 24 * v11);
    }

    v12 = &v4[24 * v11];
    if (v10 >= 24 && v6 > v7)
    {
      sub_26B92C070();
LABEL_23:
      v22 = v6 - 24;
      v5 -= 24;
      v16 = v12;
      do
      {
        v17 = (v5 + 24);
        v16 -= 24;
        if (sub_26B9ACA94() == -1)
        {
          if (v17 != v6)
          {
            v19 = *v22;
            *(v5 + 16) = *(v6 - 1);
            *v5 = v19;
          }

          if (v12 <= v4 || (v6 -= 24, v22 <= v7))
          {
            v6 = v22;
            goto LABEL_35;
          }

          goto LABEL_23;
        }

        if (v17 != v12)
        {
          v18 = *v16;
          *(v5 + 16) = *(v16 + 16);
          *v5 = v18;
        }

        v5 -= 24;
        v12 = v16;
      }

      while (v16 > v4);
      v12 = v16;
    }
  }

  else
  {
    if (a4 != __src || &__src[24 * v9] <= a4)
    {
      memmove(a4, __src, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 >= 24 && v6 < v5)
    {
      sub_26B92C070();
      while (sub_26B9ACA94() == -1)
      {
        v13 = v6;
        v14 = v7 == v6;
        v6 += 24;
        if (!v14)
        {
          goto LABEL_10;
        }

LABEL_11:
        v7 += 24;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_33;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (v14)
      {
        goto LABEL_11;
      }

LABEL_10:
      v15 = *v13;
      *(v7 + 2) = *(v13 + 2);
      *v7 = v15;
      goto LABEL_11;
    }

LABEL_33:
    v6 = v7;
  }

LABEL_35:
  v20 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

uint64_t sub_26B93CCF4(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 24;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 24;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[24 * v11] <= a4)
    {
      memmove(a4, __dst, 24 * v11);
    }

    v12 = &v4[24 * v11];
    if (v10 >= 24 && v6 > v7)
    {
      sub_26B92C070();
LABEL_23:
      v5 -= 24;
      do
      {
        v16 = (v5 + 24);
        if (sub_26B9ACA94() == -1)
        {
          v19 = v6 - 24;
          if (v16 != v6)
          {
            v20 = *v19;
            *(v5 + 16) = *(v6 - 1);
            *v5 = v20;
          }

          if (v12 <= v4 || (v6 -= 24, v19 <= v7))
          {
            v6 = v19;
            goto LABEL_35;
          }

          goto LABEL_23;
        }

        v17 = v12 - 24;
        if (v16 != v12)
        {
          v18 = *v17;
          *(v5 + 16) = *(v12 - 1);
          *v5 = v18;
        }

        v5 -= 24;
        v12 -= 24;
      }

      while (v17 > v4);
      v12 = v17;
    }
  }

  else
  {
    if (a4 != __src || &__src[24 * v9] <= a4)
    {
      memmove(a4, __src, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 >= 24 && v6 < v5)
    {
      sub_26B92C070();
      while (sub_26B9ACA94() == -1)
      {
        v13 = v6;
        v14 = v7 == v6;
        v6 += 24;
        if (!v14)
        {
          goto LABEL_10;
        }

LABEL_11:
        v7 += 24;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_33;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (v14)
      {
        goto LABEL_11;
      }

LABEL_10:
      v15 = *v13;
      *(v7 + 2) = *(v13 + 2);
      *v7 = v15;
      goto LABEL_11;
    }

LABEL_33:
    v6 = v7;
  }

LABEL_35:
  v21 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v21])
  {
    memmove(v6, v4, 24 * v21);
  }

  return 1;
}

uint64_t sub_26B93CFC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v10 = *(v1 + 48);
  v9 = *(v1 + 56);
  if (v8)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_26B8EC52C;

  return sub_26B936A54(a1, v6, v4, v5, v11 | v7, v10, v9);
}

unint64_t sub_26B93D0F4()
{
  result = qword_280426588;
  if (!qword_280426588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426588);
  }

  return result;
}

unint64_t sub_26B93D170(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426620, &unk_26B9B2230);
    v3 = sub_26B9ACD84();
    sub_26B9AAAE4();
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26B9201A8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_26B93D26C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_26B9ACB44();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804265E8, &qword_26B9B21F8);
      result = sub_26B9ACBA4();
      v3 = result;
      v18 = v1;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_26B9ACB44();
      v4 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v18 = v1;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v3;
  }

LABEL_9:
  v5 = 0;
  v6 = v3 + 56;
  v17 = v4;
  while ((v18 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x26D686B00](v5, v18);
    v7 = result;
    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      goto LABEL_25;
    }

LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804265F0, &unk_26B9B2200);
    result = sub_26B9AC454();
    v9 = -1 << *(v3 + 32);
    v10 = result & ~v9;
    v11 = v10 >> 6;
    v12 = *(v6 + 8 * (v10 >> 6));
    v13 = 1 << v10;
    if (((1 << v10) & v12) != 0)
    {
      v14 = ~v9;
      while (1)
      {
        result = sub_26B9AC494();
        if (result)
        {
          break;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v6 + 8 * (v10 >> 6));
        v13 = 1 << v10;
        if (((1 << v10) & v12) == 0)
        {
          v4 = v17;
          goto LABEL_22;
        }
      }

      v4 = v17;
      if (v5 == v17)
      {
        return v3;
      }
    }

    else
    {
LABEL_22:
      *(v6 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v7;
      v15 = *(v3 + 16);
      v8 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v8)
      {
        goto LABEL_26;
      }

      *(v3 + 16) = v16;
      if (v5 == v4)
      {
        return v3;
      }
    }
  }

  if (v5 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v7 = *(v18 + 32 + 8 * v5);
  result = sub_26B9AAAE4();
  v8 = __OFADD__(v5++, 1);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

char *sub_26B93D4B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_26B9294B8(0, &qword_280426618, 0x277D65848);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_26B9ACB44();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_26B9ACB44();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_26B93D5E4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_26B9ACB44();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_26B9ACB44();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_26B928DFC(result, 1);

  return sub_26B93D4B8(v7, v6, 1, v4);
}

unint64_t sub_26B93D6D0()
{
  result = qword_28042C250[0];
  if (!qword_28042C250[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28042C250);
  }

  return result;
}

uint64_t sub_26B93D724(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26B9ACEB4() & 1;
  }
}

uint64_t sub_26B93D77C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426598, &qword_26B9B1F60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of AppZKWQueryDataSource.start(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 128) + **(*v4 + 128));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_26B8EC52C;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_26B93D988(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26B93D9D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26B93DA24()
{
  result = qword_28042C360[0];
  if (!qword_28042C360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28042C360);
  }

  return result;
}

__n128 EmptyQuery.platterBehavior.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_26B92CA84();
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

__n128 sub_26B93DB1C@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_26B92CA84();
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_26B93DB50(uint64_t a1)
{
  result = sub_26B903C04();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B93DB78@<X0>(void *a1@<X8>)
{
  sub_26B93DE34();

  return StaticQuery.representation.getter(a1);
}

uint64_t sub_26B93DBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B93DE34();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return StaticQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B93DCA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  sub_26B93DE34();
  *v1 = v0;
  v1[1] = sub_26B8EB6C8;

  return StaticQuery.stop(with:)();
}

unint64_t sub_26B93DD54(uint64_t a1)
{
  result = sub_26B93DD7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B93DD7C()
{
  result = qword_280426628;
  if (!qword_280426628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426628);
  }

  return result;
}

uint64_t sub_26B93DDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B903C04();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_26B93DE34()
{
  result = qword_280426630;
  if (!qword_280426630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426630);
  }

  return result;
}

id ErrorQuery.error.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t ErrorQuery.representation.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
  v3 = v2;
}

void ErrorQuery.representation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
}

__n128 ErrorQuery.platterBehavior.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_26B92CA84();
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

uint64_t ErrorQuery.init(error:representation:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = MEMORY[0x277D84F90];
  *a3 = result;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  return result;
}

unint64_t sub_26B93DFF4(uint64_t a1)
{
  result = sub_26B93E01C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B93E01C()
{
  result = qword_280426638;
  if (!qword_280426638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426638);
  }

  return result;
}

uint64_t sub_26B93E070@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
  v3 = v2;
}

uint64_t sub_26B93E0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B93E3A4();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return StaticQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B93E188()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  sub_26B93E3A4();
  *v1 = v0;
  v1[1] = sub_26B8EB6C8;

  return StaticQuery.stop(with:)();
}

unint64_t sub_26B93E23C(uint64_t a1)
{
  result = sub_26B93E264();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B93E264()
{
  result = qword_280426640;
  if (!qword_280426640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426640);
  }

  return result;
}

uint64_t sub_26B93E2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B93E01C();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_26B93E30C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26B93E354(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26B93E3A4()
{
  result = qword_280426648;
  if (!qword_280426648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426648);
  }

  return result;
}

unint64_t sub_26B93E480()
{
  result = qword_280426F60;
  if (!qword_280426F60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280426F60);
  }

  return result;
}

id sub_26B93E4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v13 = sub_26B9AC4C4();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = 0;
    if (a4)
    {
LABEL_3:
      v14 = sub_26B9AC4C4();

      if (a6)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v14 = 0;
  if (a6)
  {
LABEL_4:
    v15 = sub_26B9AC4C4();

    if (a7)
    {
      goto LABEL_5;
    }

LABEL_10:
    v16 = 0;
    if (a8)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v15 = 0;
  if (!a7)
  {
    goto LABEL_10;
  }

LABEL_5:
  v16 = sub_26B9AC6E4();

  if (a8)
  {
LABEL_6:
    sub_26B93E480();
    v17 = sub_26B9AC6E4();

    goto LABEL_12;
  }

LABEL_11:
  v17 = 0;
LABEL_12:
  v20.receiver = v8;
  v20.super_class = type metadata accessor for FilesZKWFallbackResult();
  v18 = objc_msgSendSuper2(&v20, sel_initWithIdentifier_bundleIdentifier_protectionClass_attributeKeys_attributeValues_, v13, v14, v15, v16, v17);

  if (v18)
  {
  }

  return v18;
}

id sub_26B93E76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    v16 = sub_26B9AC4C4();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = 0;
    if (a4)
    {
LABEL_3:
      v17 = sub_26B9AC4C4();

      if (a6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v18 = 0;
      if (a7)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v17 = 0;
  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v18 = sub_26B9AC4C4();

  if (a7)
  {
LABEL_5:
    v19 = sub_26B9AC6E4();

    goto LABEL_10;
  }

LABEL_9:
  v19 = 0;
LABEL_10:
  if (a8)
  {
    sub_26B93E480();
    v20 = sub_26B9AC6E4();

    if (a11)
    {
LABEL_12:
      v21 = sub_26B9AC4C4();

      goto LABEL_15;
    }
  }

  else
  {
    v20 = 0;
    if (a11)
    {
      goto LABEL_12;
    }
  }

  v21 = 0;
LABEL_15:
  v24.receiver = v11;
  v24.super_class = type metadata accessor for FilesZKWFallbackResult();
  v22 = objc_msgSendSuper2(&v24, sel_initWithIdentifier_bundleIdentifier_protectionClass_attributeKeys_attributeValues_type_completion_, v16, v17, v18, v19, v20, a9, v21);

  if (v22)
  {
  }

  return v22;
}

id sub_26B93EA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    v15 = sub_26B9AC4C4();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = 0;
    if (a4)
    {
LABEL_3:
      v16 = sub_26B9AC4C4();

      v17 = a10;
      if (a6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v18 = 0;
      if (v17)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v16 = 0;
  v17 = a10;
  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v18 = sub_26B9AC4C4();

  if (v17)
  {
LABEL_5:
    v19 = sub_26B9AC4C4();

    goto LABEL_10;
  }

LABEL_9:
  v19 = 0;
LABEL_10:
  v22.receiver = v10;
  v22.super_class = type metadata accessor for FilesZKWFallbackResult();
  v20 = objc_msgSendSuper2(&v22, sel_initWithIdentifier_bundleIdentifier_protectionClass_attributes_type_completion_, v15, v16, v18, a7, a8, v19);

  if (v20)
  {
  }

  return v20;
}

id sub_26B93ECEC(void *a1, uint64_t a2, void *a3, const char **a4)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for FilesZKWFallbackResult();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id sub_26B93EDE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FilesZKWFallbackResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26B93EE1C(uint64_t a1)
{
  v3 = sub_26B9AB104();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  v8 = *(a1 + 16);
  if (v8)
  {
    v11 = *(v4 + 16);
    v10 = v4 + 16;
    v9 = v11;
    v12 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v24 = *(v10 + 56);
    v13 = (v10 - 8);
    v20 = v12;
    v11(v6, a1 + v12, v3);
    sub_26B93F2EC(v6);
    if (v1)
    {
      v7 = MEMORY[0x277D84F90];
      (*v13)(v6, v3);
    }

    else
    {
      v21 = v9;
      v22 = v10;
      v23 = *v13;
      v15 = a1 + v24 + v20;
      while (1)
      {
        v16 = (v23)(v6, v3);
        MEMORY[0x26D6865A0](v16);
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v20 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_26B9AC734();
        }

        sub_26B9AC774();
        v7 = v25;
        if (!--v8)
        {
          break;
        }

        v17 = v13;
        v18 = v15 + v24;
        v21(v6, v15, v3);
        sub_26B93F2EC(v6);
        v15 = v18;
        v13 = v17;
      }
    }
  }

  return v7;
}

uint64_t sub_26B93F060(uint64_t a1)
{
  v2 = sub_26B93F624(&qword_280426680, &unk_26B9B2558);
  v3 = sub_26B93F624(&qword_280426688, &unk_26B9B24F8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26B93F0F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426658, &qword_26B9B2430);
    v3 = sub_26B9ACBA4();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_26B9AC504();
      sub_26B9ACFB4();
      v27 = v7;
      sub_26B9AC574();
      v8 = sub_26B9ACFF4();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_26B9AC504();
        v18 = v17;
        if (v16 == sub_26B9AC504() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_26B9ACEB4();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

id sub_26B93F2EC(uint64_t a1)
{
  v26 = a1;
  v1 = sub_26B9AAF24();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426650, &qword_26B9B2428);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B9B23E0;
  v5 = *MEMORY[0x277CBE7C0];
  *(inited + 32) = *MEMORY[0x277CBE7C0];
  v6 = (inited + 32);
  v7 = *MEMORY[0x277CBE7B0];
  v8 = *MEMORY[0x277CBE8D8];
  *(inited + 40) = *MEMORY[0x277CBE7B0];
  *(inited + 48) = v8;
  v9 = *MEMORY[0x277CBE8E8];
  v10 = *MEMORY[0x277CBE838];
  *(inited + 56) = *MEMORY[0x277CBE8E8];
  *(inited + 64) = v10;
  v11 = *MEMORY[0x277CBE7B8];
  v12 = *MEMORY[0x277CBE8F8];
  *(inited + 72) = *MEMORY[0x277CBE7B8];
  *(inited + 80) = v12;
  v13 = v5;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v3;
  v19 = v11;
  v20 = v12;
  sub_26B93F0F8(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey();
  swift_arrayDestroy();
  v21 = v27;
  sub_26B9AB084();

  if (!v21)
  {
    v6 = [objc_allocWithZone(type metadata accessor for FilesZKWFallbackResult()) init];
    [v6 setSectionBundleIdentifier_];
    v22 = sub_26B9AB0A4();
    [v6 setUrl_];

    (*(v24 + 8))(v18, v25);
  }

  return v6;
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_280426660)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280426660);
    }
  }
}

uint64_t sub_26B93F624(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_26B93F668@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 120))(v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_26B93F6C4(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v7[0] = *a1;
  v7[1] = v2;
  v4 = *(*v3 + 128);
  v5 = v2;

  return v4(v7);
}

uint64_t sub_26B93F730@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v3;
  v4 = v3;
}

void sub_26B93F788(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  v4 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

uint64_t sub_26B93F82C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_26B93F878(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 152);

  return v2(v3);
}

uint64_t sub_26B93F954(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t sub_26B93F9D4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t sub_26B93FAA4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

double sub_26B93FAEC@<D0>(__int128 *a1@<X8>)
{
  if ([objc_opt_self() isWiderFilesBrowseViewEnabled])
  {
    static ResultPlatterBehavior.gridBrowse.getter(&v6);
  }

  else
  {
    v2 = sub_26B92CDA0();
    v3 = v2[1];
    v6 = *v2;
    v7 = v3;
    v8 = v2[2];
  }

  v4 = v7;
  *a1 = v6;
  a1[1] = v4;
  result = *&v8;
  a1[2] = v8;
  return result;
}

uint64_t FilesZKWQuery.__allocating_init(representation:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v15 = *a1;
  v16 = v3;
  v5 = QueryRepresentation.tokenProviders.getter();
  v14 = MEMORY[0x277D84F90];
  v6 = v5[2];
  if (v6)
  {
    v10 = v1;
    v7 = (v5 + 4);
    v8 = MEMORY[0x277D84F90];
    do
    {
      sub_26B907F08(v7, v13);
      sub_26B8ECB70(v13, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263E8, &unk_26B9B1280);
      sub_26B9294B8(0, &qword_280426690, 0x277D4C508);
      if ((swift_dynamicCast() & 1) != 0 && v12)
      {
        MEMORY[0x26D6865A0]();
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26B9AC734();
        }

        sub_26B9AC774();
        v8 = v14;
      }

      v7 += 40;
      --v6;
    }

    while (v6);

    v2 = v10;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  *&v13[0] = v4;
  *(&v13[0] + 1) = v3;
  return (*(v2 + 248))(v8, v13);
}

uint64_t FilesZKWQuery.__allocating_init(commands:representation:)(unint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FilesZKWQuery.init(commands:representation:)(a1, a2);
  return v4;
}

uint64_t *FilesZKWQuery.init(commands:representation:)(unint64_t a1, uint64_t a2)
{
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  v4 = *a2;
  v5 = *(a2 + 8);
  v15 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26B9ACB44())
  {
    v12 = v5;
    v5 = 0;
    v4 = &off_279D10000;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D686B00](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v7 entityType] == 7)
      {
        sub_26B9ACC64();
        sub_26B9ACCA4();
        sub_26B9ACCB4();
        v2 = &v15;
        sub_26B9ACC74();
      }

      else
      {
      }

      ++v5;
      if (v9 == i)
      {
        v2 = v14;
        v10 = v15;
        v5 = v12;
        v4 = v13;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_18:

  swift_beginAccess();
  v2[4] = v10;

  v2[2] = v4;
  v2[3] = v5;
  return v2;
}

uint64_t sub_26B93FEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 488) = a4;
  *(v5 + 496) = v4;
  *(v5 + 472) = a1;
  *(v5 + 480) = a3;
  v7 = sub_26B9AB584();
  *(v5 + 504) = v7;
  *(v5 + 512) = *(v7 - 8);
  *(v5 + 520) = swift_task_alloc();
  *(v5 + 51) = *(a2 + 8);
  *(v5 + 528) = *(a2 + 24);

  return MEMORY[0x2822009F8](sub_26B93FFC4, 0, 0);
}

uint64_t sub_26B93FFC4()
{
  v1 = *(v0 + 472);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = type metadata accessor for FilesZKWQueryDataSource();
  v7 = (*(v3 + 40) + **(v3 + 40));
  v5 = swift_task_alloc();
  *(v0 + 536) = v5;
  *v5 = v0;
  v5[1] = sub_26B940114;

  return v7(v0 + 456, v4, v4, &protocol witness table for FilesZKWQueryDataSource, v2, v3);
}

uint64_t sub_26B940114()
{

  return MEMORY[0x2822009F8](sub_26B940210, 0, 0);
}

uint64_t sub_26B940210()
{
  v39 = v0;
  v1 = *(v0 + 51);
  *(v0 + 544) = *(v0 + 456);
  if (v1 == 2)
  {
    if (MEMORY[0x277D84F90] >> 62)
    {
      sub_26B9294B8(0, &qword_280426400, 0x277D4C588);
      v2 = sub_26B9ACD34();
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      sub_26B9ACDA4();
    }

    v3 = *(v0 + 528);
    v4 = *(v0 + 480);
    v5 = sub_26B906128();
    SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v2, v3, 1, 1, 0, v5 & 1, v0 + 16);
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 33);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    *(v0 + 56) = *(v0 + 16);
    v11 = v0 + 56;
    *(v0 + 64) = v6;
    *(v0 + 72) = v7;
    *(v0 + 73) = v8;
    *(v0 + 80) = v9;
    *(v0 + 88) = v10;
    v33 = (v4 + *v4);
    v12 = swift_task_alloc();
    *(v0 + 784) = v12;
    *v12 = v0;
    v13 = sub_26B941560;
    goto LABEL_5;
  }

  v15 = MEMORY[0x277D84F90];
  v16 = *(v0 + 496);
  *(v0 + 464) = MEMORY[0x277D84F90];
  v17 = (*(*v16 + 168))();
  *(v0 + 552) = v17;
  if (v17)
  {
    v18 = sub_26B92A538();
    *(v0 + 560) = v18;
    swift_beginAccess();
    v19 = *v18;
    v20 = sub_26B9405E4;
  }

  else
  {
    *(v0 + 656) = v15;
    *(v0 + 648) = 0;
    v21 = (*(**(v0 + 496) + 192))();
    *(v0 + 664) = v21;
    if (!v21)
    {
      v23 = *(v0 + 528);
      v24 = *(v0 + 480);
      v25 = (*(**(v0 + 496) + 216))();
      v26 = sub_26B906128();
      SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(MEMORY[0x277D84F90], v23, 1, 1, v25, v26 & 1, v34);
      v27 = v34[0];
      v28 = v34[1];
      *(v0 + 760) = v34[0];
      v29 = v35;
      v30 = v36;
      v31 = v37;
      *(v0 + 768) = v37;
      v32 = v38;
      *(v0 + 96) = v27;
      v11 = v0 + 96;
      *(v0 + 104) = v28;
      *(v0 + 112) = v29;
      *(v0 + 113) = v30;
      *(v0 + 120) = v31;
      *(v0 + 128) = v32;
      v33 = (v24 + *v24);
      v12 = swift_task_alloc();
      *(v0 + 776) = v12;
      *v12 = v0;
      v13 = sub_26B9413C4;
LABEL_5:
      v12[1] = v13;

      return v33(v11);
    }

    v22 = sub_26B92A538();
    *(v0 + 672) = v22;
    swift_beginAccess();
    v19 = *v22;
    v20 = sub_26B940CFC;
  }

  return MEMORY[0x2822009F8](v20, v19, 0);
}

uint64_t sub_26B9405E4()
{
  *(v0 + 568) = sub_26B942870();

  return MEMORY[0x2822009F8](sub_26B94064C, 0, 0);
}

uint64_t sub_26B94064C()
{
  v1 = *(v0 + 560);
  swift_beginAccess();
  v2 = *v1;

  return MEMORY[0x2822009F8](sub_26B9406C4, v2, 0);
}

uint64_t sub_26B9406C4()
{
  v1 = v0[71];
  v0[72] = *v1;
  v0[73] = v1[1];

  return MEMORY[0x2822009F8](sub_26B940740, 0, 0);
}

uint64_t sub_26B940740()
{
  v1 = *(v0 + 560);
  swift_beginAccess();
  v2 = *v1;

  return MEMORY[0x2822009F8](sub_26B9407B8, v2, 0);
}

uint64_t sub_26B9407B8()
{
  *(v0 + 592) = sub_26B942934();

  return MEMORY[0x2822009F8](sub_26B940820, 0, 0);
}

uint64_t sub_26B940820()
{
  v1 = *(v0 + 560);
  swift_beginAccess();
  v2 = *v1;

  return MEMORY[0x2822009F8](sub_26B940898, v2, 0);
}

uint64_t sub_26B940898()
{
  v1 = v0[74];
  v0[75] = *v1;
  v0[76] = v1[1];

  return MEMORY[0x2822009F8](sub_26B940914, 0, 0);
}

uint64_t sub_26B940914()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 544);
  *(v0 + 50) = *(v0 + 51) & 1;
  v3 = *v2 + 128;
  *(v0 + 616) = *v3;
  *(v0 + 624) = v3 & 0xFFFFFFFFFFFFLL | 0xD493000000000000;
  swift_beginAccess();
  v4 = *v1;

  return MEMORY[0x2822009F8](sub_26B9409BC, v4, 0);
}

uint64_t sub_26B9409BC()
{
  *(v0 + 632) = (*(v0 + 616))(*(v0 + 552), *(v0 + 576), *(v0 + 584), *(v0 + 600), *(v0 + 608), v0 + 50);
  *(v0 + 640) = 0;

  return MEMORY[0x2822009F8](sub_26B940A8C, 0, 0);
}

uint64_t sub_26B940A8C()
{
  v25 = v0;
  v1 = *(v0 + 632);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_26B9B1290;
    *(v2 + 32) = v1;
    *(v0 + 464) = v2;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = *(v0 + 640);
  *(v0 + 656) = v2;
  *(v0 + 648) = v3;
  v4 = (*(**(v0 + 496) + 192))();
  *(v0 + 664) = v4;
  if (v4)
  {
    v5 = sub_26B92A538();
    *(v0 + 672) = v5;
    swift_beginAccess();
    v6 = *v5;

    return MEMORY[0x2822009F8](sub_26B940CFC, v6, 0);
  }

  else
  {
    v7 = *(v0 + 528);
    v8 = *(v0 + 480);
    v9 = (*(**(v0 + 496) + 216))();
    v10 = sub_26B906128();
    SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v2, v7, 1, 1, v9, v10 & 1, v20);
    v11 = v20[0];
    v12 = v20[1];
    *(v0 + 760) = v20[0];
    v13 = v21;
    v14 = v22;
    v15 = v23;
    *(v0 + 768) = v23;
    v16 = v24;
    *(v0 + 96) = v11;
    *(v0 + 104) = v12;
    *(v0 + 112) = v13;
    *(v0 + 113) = v14;
    *(v0 + 120) = v15;
    *(v0 + 128) = v16;
    v19 = (v8 + *v8);
    v17 = swift_task_alloc();
    *(v0 + 776) = v17;
    *v17 = v0;
    v17[1] = sub_26B9413C4;

    return v19(v0 + 96);
  }
}

uint64_t sub_26B940CFC()
{
  *(v0 + 680) = sub_26B942AB4();

  return MEMORY[0x2822009F8](sub_26B940D64, 0, 0);
}

uint64_t sub_26B940D64()
{
  v1 = *(v0 + 672);
  swift_beginAccess();
  v2 = *v1;

  return MEMORY[0x2822009F8](sub_26B940DDC, v2, 0);
}

uint64_t sub_26B940DDC()
{
  v1 = v0[85];
  v0[86] = *v1;
  v0[87] = v1[1];

  return MEMORY[0x2822009F8](sub_26B940E58, 0, 0);
}

uint64_t sub_26B940E58()
{
  v1 = *(v0 + 672);
  swift_beginAccess();
  v2 = *v1;

  return MEMORY[0x2822009F8](sub_26B940ED0, v2, 0);
}

uint64_t sub_26B940ED0()
{
  *(v0 + 704) = sub_26B942B80();

  return MEMORY[0x2822009F8](sub_26B940F38, 0, 0);
}

uint64_t sub_26B940F38()
{
  v1 = *(v0 + 672);
  swift_beginAccess();
  v2 = *v1;

  return MEMORY[0x2822009F8](sub_26B940FB0, v2, 0);
}

uint64_t sub_26B940FB0()
{
  v1 = v0[88];
  v0[89] = *v1;
  v0[90] = v1[1];

  return MEMORY[0x2822009F8](sub_26B94102C, 0, 0);
}

uint64_t sub_26B94102C()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 544);
  *(v0 + 49) = *(v0 + 51) & 1;
  v3 = *v2 + 128;
  *(v0 + 728) = *v3;
  *(v0 + 736) = v3 & 0xFFFFFFFFFFFFLL | 0xD493000000000000;
  swift_beginAccess();
  v4 = *v1;

  return MEMORY[0x2822009F8](sub_26B9410D4, v4, 0);
}

uint64_t sub_26B9410D4()
{
  v1 = *(v0 + 648);
  *(v0 + 744) = (*(v0 + 728))(*(v0 + 664), *(v0 + 688), *(v0 + 696), *(v0 + 712), *(v0 + 720), v0 + 49);
  *(v0 + 752) = v1;

  if (v1)
  {

    v2 = sub_26B941AF0;
  }

  else
  {
    v2 = sub_26B9411D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B9411D0()
{
  v23 = v0;
  v1 = *(v0 + 744);
  if (v1)
  {
    v2 = (v0 + 464);
    v3 = v1;
    MEMORY[0x26D6865A0]();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26B9AC734();
    }

    sub_26B9AC774();
  }

  else
  {
    v2 = (v0 + 656);
  }

  v4 = *v2;
  v5 = *(v0 + 528);
  v6 = *(v0 + 480);
  v7 = (*(**(v0 + 496) + 216))();
  v8 = sub_26B906128();
  SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v4, v5, 1, 1, v7, v8 & 1, v18);
  v9 = v18[0];
  v10 = v18[1];
  *(v0 + 760) = v18[0];
  v11 = v19;
  v12 = v20;
  v13 = v21;
  *(v0 + 768) = v21;
  v14 = v22;
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  *(v0 + 112) = v11;
  *(v0 + 113) = v12;
  *(v0 + 120) = v13;
  *(v0 + 128) = v14;
  v17 = (v6 + *v6);
  v15 = swift_task_alloc();
  *(v0 + 776) = v15;
  *v15 = v0;
  v15[1] = sub_26B9413C4;

  return v17(v0 + 96);
}

uint64_t sub_26B9413C4()
{

  return MEMORY[0x2822009F8](sub_26B9414F8, 0, 0);
}

uint64_t sub_26B9414F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B941560()
{

  return MEMORY[0x2822009F8](sub_26B9414F8, 0, 0);
}

uint64_t sub_26B941694()
{

  return MEMORY[0x2822009F8](sub_26B9417C8, 0, 0);
}

uint64_t sub_26B9417C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B941830()
{

  v1 = *(v0 + 640);
  *(v0 + 792) = v1;
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  v5 = sub_26B9A7568();
  (*(v4 + 16))(v2, v5, v3);
  v6 = v1;
  v7 = sub_26B9AB564();
  v8 = sub_26B9AC934();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_26B8E8000, v7, v8, "Unable to redisplay suggested files for ZKW from ATXSpotlightClient: %@", v9, 0xCu);
    sub_26B9422F4(v10);
    MEMORY[0x26D6879F0](v10, -1, -1);
    MEMORY[0x26D6879F0](v9, -1, -1);
  }

  v13 = *(v0 + 520);
  v14 = *(v0 + 504);
  v15 = *(v0 + 512);

  (*(v15 + 8))(v13, v14);
  if (MEMORY[0x277D84F90] >> 62)
  {
    sub_26B9294B8(0, &qword_280426400, 0x277D4C588);
    v16 = sub_26B9ACD34();
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
    sub_26B9ACDA4();
  }

  v17 = *(v0 + 528);
  v18 = *(v0 + 480);
  v19 = sub_26B906128();
  SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v16, v17, 1, 1, 0, v19 & 1, v0 + 136);
  v20 = *(v0 + 144);
  v21 = *(v0 + 152);
  v22 = *(v0 + 153);
  v23 = *(v0 + 160);
  v24 = *(v0 + 168);
  *(v0 + 176) = *(v0 + 136);
  *(v0 + 184) = v20;
  *(v0 + 192) = v21;
  *(v0 + 193) = v22;
  *(v0 + 200) = v23;
  *(v0 + 208) = v24;
  v27 = (v18 + *v18);
  v25 = swift_task_alloc();
  *(v0 + 800) = v25;
  *v25 = v0;
  v25[1] = sub_26B941694;

  return v27(v0 + 176);
}

uint64_t sub_26B941AF0()
{

  v1 = *(v0 + 752);
  *(v0 + 792) = v1;
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  v5 = sub_26B9A7568();
  (*(v4 + 16))(v2, v5, v3);
  v6 = v1;
  v7 = sub_26B9AB564();
  v8 = sub_26B9AC934();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_26B8E8000, v7, v8, "Unable to redisplay suggested files for ZKW from ATXSpotlightClient: %@", v9, 0xCu);
    sub_26B9422F4(v10);
    MEMORY[0x26D6879F0](v10, -1, -1);
    MEMORY[0x26D6879F0](v9, -1, -1);
  }

  v13 = *(v0 + 520);
  v14 = *(v0 + 504);
  v15 = *(v0 + 512);

  (*(v15 + 8))(v13, v14);
  if (MEMORY[0x277D84F90] >> 62)
  {
    sub_26B9294B8(0, &qword_280426400, 0x277D4C588);
    v16 = sub_26B9ACD34();
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
    sub_26B9ACDA4();
  }

  v17 = *(v0 + 528);
  v18 = *(v0 + 480);
  v19 = sub_26B906128();
  SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v16, v17, 1, 1, 0, v19 & 1, v0 + 136);
  v20 = *(v0 + 144);
  v21 = *(v0 + 152);
  v22 = *(v0 + 153);
  v23 = *(v0 + 160);
  v24 = *(v0 + 168);
  *(v0 + 176) = *(v0 + 136);
  *(v0 + 184) = v20;
  *(v0 + 192) = v21;
  *(v0 + 193) = v22;
  *(v0 + 200) = v23;
  *(v0 + 208) = v24;
  v27 = (v18 + *v18);
  v25 = swift_task_alloc();
  *(v0 + 800) = v25;
  *v25 = v0;
  v25[1] = sub_26B941694;

  return v27(v0 + 176);
}

void *FilesZKWQuery.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t FilesZKWQuery.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_26B941E60@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FilesZKWQuery();

  return TypedQuery<>.request.getter(v2, a1);
}

uint64_t sub_26B941EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 264) + **(**v4 + 264));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_26B8EB6C8;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_26B942084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  WitnessTable = swift_getWitnessTable();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_26B942178(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return TypedQuery.stop(with:)(a1, a2, WitnessTable);
}

uint64_t sub_26B942288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static Query.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_26B9422F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426230, &unk_26B9B25F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B942368(uint64_t a1)
{
  result = sub_26B942458(&qword_280426698, &protocol conformance descriptor for FilesZKWQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B9423D0(uint64_t a1)
{
  result = sub_26B942458(&qword_2804266A0, &protocol conformance descriptor for FilesZKWQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B942414(uint64_t a1)
{
  result = sub_26B942458(&qword_2804266A8, &protocol conformance descriptor for FilesZKWQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B942458(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FilesZKWQuery();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of FilesZKWQuery.updateLayout(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 264) + **(*v4 + 264));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_26B8EB6C8;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_26B942738()
{
  v0 = sub_26B9AB224();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_26B9AC4B4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_26B9AC4A4();
  v2 = [objc_opt_self() bundle];
  sub_26B9AB214();
  result = sub_26B9AC514();
  qword_280433D88 = result;
  unk_280433D90 = v4;
  return result;
}

uint64_t *sub_26B942870()
{
  if (qword_28042CDF0 != -1)
  {
    swift_once();
  }

  return &qword_280433D88;
}

uint64_t sub_26B9428C0()
{
  v0 = sub_26B935E24();
  v2 = *v0;
  v3 = v0[1];
  swift_bridgeObjectRetain_n();
  MEMORY[0x26D686470](0xD000000000000012, 0x800000026B9B90C0);

  qword_280433D98 = v2;
  unk_280433DA0 = v3;
  return result;
}

uint64_t *sub_26B942934()
{
  if (qword_28042CDF8 != -1)
  {
    swift_once();
  }

  return &qword_280433D98;
}

uint64_t sub_26B942984()
{
  v0 = sub_26B9AB224();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_26B9AC4B4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_26B9AC4A4();
  v2 = [objc_opt_self() bundle];
  sub_26B9AB214();
  result = sub_26B9AC514();
  qword_280433DA8 = result;
  unk_280433DB0 = v4;
  return result;
}

uint64_t *sub_26B942AB4()
{
  if (qword_28042CE00 != -1)
  {
    swift_once();
  }

  return &qword_280433DA8;
}

uint64_t sub_26B942B04()
{
  v0 = sub_26B935E24();
  v2 = *v0;
  v3 = v0[1];
  swift_bridgeObjectRetain_n();
  MEMORY[0x26D686470](0x722E73656C69662ELL, 0xEE0073746E656365);

  qword_280433DB8 = v2;
  unk_280433DC0 = v3;
  return result;
}

uint64_t *sub_26B942B80()
{
  if (qword_28042CE08 != -1)
  {
    swift_once();
  }

  return &qword_280433DB8;
}

uint64_t sub_26B942BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = v4;
  *(v5 + 80) = a1;
  *(v5 + 88) = a3;
  *(v5 + 112) = *a2;
  *(v5 + 160) = *(a2 + 8);
  *(v5 + 161) = *(a2 + 9);
  *(v5 + 120) = *(a2 + 16);
  v6 = sub_26B92A538();
  swift_beginAccess();
  v7 = *v6;
  *(v5 + 136) = v7;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B942C9C, v7, 0);
}

uint64_t sub_26B942C9C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 161);
  v4 = *(v0 + 160);
  v5 = *(v0 + 112);
  v6 = *(v0 + 104);
  v7 = *(v0 + 80);
  *(v0 + 72) = v6;
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 25) = v3;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  *(v8 + 32) = v5;
  *(v8 + 40) = v4;
  *(v8 + 41) = v3;
  *(v8 + 48) = v2;
  *(v8 + 56) = v1;
  v9 = swift_task_alloc();
  *(v0 + 152) = v9;
  type metadata accessor for FilesZKWQueryDataSource();
  *v9 = v0;
  v9[1] = sub_26B9368C8;
  v10 = *(v0 + 88);
  v11 = *(v0 + 96);

  return QueryDataSource.wrapWithFeedback(context:spotlightBrowsingSearchScope:resultHandler:fetchResults:)(v0 + 16, 2, v10, v11, &unk_26B9B2760);
}

uint64_t sub_26B942DDC(uint64_t a1, double a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a2;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  v10 = sub_26B92A538();
  swift_beginAccess();
  *(v7 + 72) = *v10;
  sub_26B9AAAE4();
  v11 = swift_task_alloc();
  *(v7 + 80) = v11;
  *v11 = v7;
  v11[1] = sub_26B936B48;

  return sub_26B942FCC(a1, a4, v7 + 16);
}

uint64_t sub_26B942EC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v10 = *(v1 + 48);
  v9 = *(v1 + 56);
  if (v8)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_26B8EB6C8;

  return sub_26B942DDC(a1, v6, v4, v5, v11 | v7, v10, v9);
}

uint64_t sub_26B942FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 208) = a1;
  *(v3 + 216) = a2;
  v5 = sub_26B9AB584();
  *(v3 + 224) = v5;
  *(v3 + 232) = *(v5 - 8);
  v6 = swift_task_alloc();
  *(v3 + 300) = *(a3 + 8);
  v7 = *(a3 + 24);
  *(v3 + 240) = v6;
  *(v3 + 248) = v7;
  v8 = sub_26B92A538();
  swift_beginAccess();
  v9 = *v8;
  *(v3 + 256) = v9;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B9430C8, v9, 0);
}

uint64_t sub_26B9430C8()
{
  v22 = v0;
  v1 = (*(**(v0 + 216) + 144))();
  if (!v1)
  {
LABEL_18:
    v11 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    v18 = v1;
    v19 = sub_26B9ACB44();
    v1 = v18;
    if (!v19)
    {
      goto LABEL_17;
    }
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:

    goto LABEL_18;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x26D686B00](0);
  }

  else
  {
    if (!*(v2 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

  v5 = [v4 filterQueries];
  if (!v5 || (v6 = v5, v7 = [objc_opt_self() uttypesFromFilterQueries_], v6, !v7))
  {

    v11 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v8 = sub_26B9AB414();
  sub_26B947164();
  v9 = sub_26B9AC874();

  v10 = *(v9 + 16);
  if (!v10)
  {

    goto LABEL_17;
  }

  v11 = sub_26B945780(*(v9 + 16), 0);
  v12 = sub_26B946A10(&v21, &v11[(*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)], v10, v9);
  v1 = sub_26B9471BC(v21);
  if (v12 != v10)
  {
LABEL_28:
    __break(1u);
    return MEMORY[0x282200938](v1);
  }

  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (*(v11 + 2))
  {
LABEL_15:
    v13 = objc_allocWithZone(MEMORY[0x277CEB4F0]);
    v14 = sub_26B945570(v11);
    goto LABEL_21;
  }

LABEL_19:

LABEL_20:
  v14 = 0;
LABEL_21:
  *(v0 + 264) = 0;
  *(v0 + 272) = v14;
  v15 = [objc_allocWithZone(MEMORY[0x277CEB4E8]) initWithLimit:100 documentScope:v14];
  *(v0 + 280) = v15;
  v16 = objc_opt_self();
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_26B9435C4;
  v17 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804266C0, &qword_26B9B27E8);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_26B944FE4;
  *(v0 + 104) = &block_descriptor_2;
  *(v0 + 112) = v17;
  [v16 categoriesForRequest:v15 withReply:v0 + 80];
  v1 = v0 + 16;

  return MEMORY[0x282200938](v1);
}

uint64_t sub_26B9435C4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  v3 = *(v1 + 256);
  if (v2)
  {
    v4 = sub_26B944E08;
  }

  else
  {
    v4 = sub_26B9436E4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26B9436E4()
{
  v192 = v2;

  v177 = v2;
  v4 = *(v2 + 168);
  v5 = [objc_opt_self() isWiderFilesBrowseViewEnabled];
  if (v5)
  {
    v6 = 7;
  }

  else
  {
    v6 = 5;
  }

  if (!(v4 >> 62))
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_84:

    v25 = 0;
    v8 = 0;
    v87 = MEMORY[0x277D84F90];
    v190 = MEMORY[0x277D84F90];
    v191 = MEMORY[0x277D84F90];
    v173 = MEMORY[0x277D84F90];
    v7 = v177;
LABEL_110:
    v172 = v25;
    if (*(v7 + 272))
    {

      isUniquelyReferenced_nonNull_native = 0;
LABEL_214:
      v165 = *(v7 + 272);
      v164 = *(v7 + 280);
      v166 = *(v7 + 248);
      v167 = *(v7 + 208);
      v168 = sub_26B906128();
      SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v173, v166, 1, 1, isUniquelyReferenced_nonNull_native, v168 & 1, v167);

      goto LABEL_215;
    }

    v174 = v87;
    v101 = sub_26B947014(MEMORY[0x277D84F90]);
    if (v174 >> 62)
    {
      goto LABEL_169;
    }

    v102 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v179 = v8;
    if (v102)
    {
LABEL_114:
      isUniquelyReferenced_nonNull_native = 0;
      v176 = objc_opt_self();
      v175 = v102;
      do
      {
        if ((v174 & 0xC000000000000001) != 0)
        {
          v103 = MEMORY[0x26D686B00](isUniquelyReferenced_nonNull_native, v174);
        }

        else
        {
          if (isUniquelyReferenced_nonNull_native >= *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_168;
          }

          v103 = *(v174 + 32 + 8 * isUniquelyReferenced_nonNull_native);
        }

        v104 = v103;
        v105 = __OFADD__(isUniquelyReferenced_nonNull_native++, 1);
        if (v105)
        {
          goto LABEL_167;
        }

        v106 = [v176 filtersForResult_];
        if (v106)
        {
          v107 = v106;
          sub_26B9294B8(0, &qword_2804263D0, 0x277D65918);
          v8 = sub_26B9AC6F4();

          if (v8 >> 62)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v8 = MEMORY[0x277D84F90];
          if (MEMORY[0x277D84F90] >> 62)
          {
LABEL_158:
            v108 = sub_26B9ACB44();
            v180 = v104;
            v181 = isUniquelyReferenced_nonNull_native;
            if (!v108)
            {
              goto LABEL_115;
            }

LABEL_124:
            v109 = 0;
            v1 = (v8 & 0xC000000000000001);
            v187 = v8 & 0xFFFFFFFFFFFFFF8;
            v182 = v8 & 0xC000000000000001;
            v184 = v8;
LABEL_127:
            if (v1)
            {
              v110 = MEMORY[0x26D686B00](v109, v8);
            }

            else
            {
              if (v109 >= *(v187 + 16))
              {
                goto LABEL_162;
              }

              v110 = *(v8 + 8 * v109 + 32);
            }

            v111 = v110;
            v112 = v109 + 1;
            if (__OFADD__(v109, 1))
            {
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              __break(1u);
LABEL_165:
              __break(1u);
LABEL_166:
              __break(1u);
LABEL_167:
              __break(1u);
LABEL_168:
              __break(1u);
LABEL_169:
              v102 = sub_26B9ACB44();
              v179 = v8;
              if (!v102)
              {
                break;
              }

              goto LABEL_114;
            }

            if (*(v101 + 16))
            {
              v113 = sub_26B94587C(v110);
              if (v114)
              {
                v115 = *(*(v101 + 56) + 8 * v113);
                v1 = (v115 + 1);
                if (__OFADD__(v115, 1))
                {
                  goto LABEL_164;
                }

                v8 = v108;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v189 = v101;
                v117 = sub_26B94587C(v111);
                v118 = *(v101 + 16);
                v119 = (v116 & 1) == 0;
                v120 = v118 + v119;
                if (__OFADD__(v118, v119))
                {
                  goto LABEL_165;
                }

                v121 = v116;
                if (*(v101 + 24) >= v120)
                {
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    if ((v116 & 1) == 0)
                    {
                      goto LABEL_139;
                    }
                  }

                  else
                  {
                    sub_26B946780();
                    v101 = v189;
                    if ((v121 & 1) == 0)
                    {
                      goto LABEL_139;
                    }
                  }
                }

                else
                {
                  sub_26B946448(v120, isUniquelyReferenced_nonNull_native);
                  v101 = v189;
                  v122 = sub_26B94587C(v111);
                  if ((v121 & 1) != (v123 & 1))
                  {
                    goto LABEL_226;
                  }

                  v117 = v122;
                  if ((v121 & 1) == 0)
                  {
LABEL_139:
                    *(v101 + 8 * (v117 >> 6) + 64) |= 1 << v117;
                    *(*(v101 + 48) + 8 * v117) = v111;
                    *(*(v101 + 56) + 8 * v117) = v1;
                    v124 = *(v101 + 16);
                    v105 = __OFADD__(v124, 1);
                    v125 = v124 + 1;
                    if (v105)
                    {
                      goto LABEL_166;
                    }

                    *(v101 + 16) = v125;
LABEL_152:
                    v108 = v8;
                    v1 = v182;
                    v8 = v184;
LABEL_126:
                    ++v109;
                    if (v112 == v108)
                    {
                      goto LABEL_115;
                    }

                    goto LABEL_127;
                  }
                }

                *(*(v101 + 56) + 8 * v117) = v1;

                goto LABEL_152;
              }
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v189 = v101;
            v126 = sub_26B94587C(v111);
            v128 = *(v101 + 16);
            v129 = (v127 & 1) == 0;
            v105 = __OFADD__(v128, v129);
            v130 = v128 + v129;
            if (v105)
            {
              goto LABEL_161;
            }

            v131 = v127;
            if (*(v101 + 24) >= v130)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_146;
              }

              isUniquelyReferenced_nonNull_native = v126;
              sub_26B946780();
              v126 = isUniquelyReferenced_nonNull_native;
              v101 = v189;
              if ((v131 & 1) == 0)
              {
LABEL_147:
                *(v101 + 8 * (v126 >> 6) + 64) |= 1 << v126;
                *(*(v101 + 48) + 8 * v126) = v111;
                *(*(v101 + 56) + 8 * v126) = 1;
                v133 = *(v101 + 16);
                v105 = __OFADD__(v133, 1);
                v134 = v133 + 1;
                if (v105)
                {
                  goto LABEL_163;
                }

                *(v101 + 16) = v134;
                goto LABEL_126;
              }
            }

            else
            {
              sub_26B946448(v130, isUniquelyReferenced_nonNull_native);
              v101 = v189;
              v126 = sub_26B94587C(v111);
              if ((v131 & 1) != (v132 & 1))
              {
                goto LABEL_226;
              }

LABEL_146:
              if ((v131 & 1) == 0)
              {
                goto LABEL_147;
              }
            }

            *(*(v101 + 56) + 8 * v126) = 1;

            goto LABEL_126;
          }
        }

        v108 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v180 = v104;
        v181 = isUniquelyReferenced_nonNull_native;
        if (v108)
        {
          goto LABEL_124;
        }

LABEL_115:

        isUniquelyReferenced_nonNull_native = v181;
        v8 = v179;
      }

      while (v181 != v175);
    }

    v1 = (v101 + 64);
    v135 = 1 << *(v101 + 32);
    v136 = -1;
    if (v135 < 64)
    {
      v136 = ~(-1 << v135);
    }

    v137 = v136 & *(v101 + 64);
    v138 = (v135 + 63) >> 6;

    v139 = 0;
    v140 = MEMORY[0x277D84F90];
    v141 = MEMORY[0x277D84F90];
    while (v137)
    {
      v142 = v137;
LABEL_179:
      v137 = (v142 - 1) & v142;
      if (*(v101 + 16))
      {
        isUniquelyReferenced_nonNull_native = *(*(v101 + 48) + ((v139 << 9) | (8 * __clz(__rbit64(v142)))));
        v144 = sub_26B94587C(isUniquelyReferenced_nonNull_native);
        if (v145)
        {
          v188 = *(*(v101 + 56) + 8 * v144);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v141 = sub_26B94564C(0, v141[2] + 1, 1, v141);
          }

          v147 = v141[2];
          v146 = v141[3];
          if (v147 >= v146 >> 1)
          {
            v141 = sub_26B94564C((v146 > 1), v147 + 1, 1, v141);
          }

          v141[2] = v147 + 1;
          v148 = &v141[2 * v147];
          v148[4] = isUniquelyReferenced_nonNull_native;
          v148[5] = v188;
          v8 = v179;
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v143 = v139 + 1;
      if (__OFADD__(v139, 1))
      {
        __break(1u);
        goto LABEL_208;
      }

      if (v143 >= v138)
      {
        break;
      }

      v142 = v1[v143];
      ++v139;
      if (v142)
      {
        v139 = v143;
        goto LABEL_179;
      }
    }

    v189 = v141;

    v1 = 0;
    sub_26B9458C0(&v189);

    v149 = v189;
    v150 = v189[2];
    if (v150)
    {
      v189 = v140;
      sub_26B9AAAE4();
      sub_26B9ACC94();
      v151 = 32;
      do
      {
        v1 = *(v149 + v151);
        sub_26B9ACC64();
        sub_26B9ACCA4();
        sub_26B9ACCB4();
        sub_26B9ACC74();
        v151 += 16;
        --v150;
      }

      while (v150);

      isUniquelyReferenced_nonNull_native = v189;
    }

    else
    {

      isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
    }

    v141 = (isUniquelyReferenced_nonNull_native >> 62);
    if (!(isUniquelyReferenced_nonNull_native >> 62))
    {
      if (*((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10) > 5uLL)
      {
        goto LABEL_194;
      }

LABEL_212:

LABEL_213:
      v7 = v177;
      v161 = *(v177 + 216);

      v162 = *(*v161 + 224);

      v162(v163);
      goto LABEL_214;
    }

LABEL_208:
    if (sub_26B9ACB44() <= 5)
    {
      goto LABEL_212;
    }

    if ((sub_26B9ACB44() & 0x8000000000000000) == 0)
    {
      v8 = v179;
      if (sub_26B9ACB44() < 5)
      {
        __break(1u);
        goto LABEL_212;
      }

LABEL_194:
      if ((isUniquelyReferenced_nonNull_native & 0xC000000000000001) != 0)
      {
        sub_26B9294B8(0, &qword_2804263D0, 0x277D65918);

        sub_26B9ACC14();
        sub_26B9ACC14();
        sub_26B9ACC14();
        sub_26B9ACC14();
        sub_26B9ACC14();
      }

      else
      {
      }

      if (v141)
      {
        v152 = sub_26B9ACD54();
        v153 = v155;
        v141 = v156;
        v154 = v157;

        if ((v154 & 1) == 0)
        {
LABEL_200:
          sub_26B945A1C(v152, v153, v141, v154, &qword_2804263D0, 0x277D65918);
          isUniquelyReferenced_nonNull_native = v158;

          swift_unknownObjectRelease();
          goto LABEL_213;
        }
      }

      else
      {
        v152 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
        v153 = (isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 32;
        v154 = 11;
      }

      sub_26B9ACED4();
      swift_unknownObjectRetain_n();
      v159 = swift_dynamicCastClass();
      if (!v159)
      {
        swift_unknownObjectRelease();
        v159 = MEMORY[0x277D84F90];
      }

      v160 = *(v159 + 16);

      if (__OFSUB__(v154 >> 1, v141))
      {
        __break(1u);
      }

      else if (v160 == (v154 >> 1) - v141)
      {
        isUniquelyReferenced_nonNull_native = swift_dynamicCastClass();

        swift_unknownObjectRelease_n();
        if (!isUniquelyReferenced_nonNull_native)
        {
          swift_unknownObjectRelease();
          isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
        }

        goto LABEL_213;
      }

      swift_unknownObjectRelease_n();
      goto LABEL_200;
    }

    __break(1u);
LABEL_226:
    sub_26B9294B8(0, &qword_2804263D0, 0x277D65918);
    sub_26B9ACF24();
    __break(1u);
LABEL_227:
    __break(1u);

    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = v5;
  v7 = sub_26B9ACB44();
  LOBYTE(v5) = isUniquelyReferenced_nonNull_native;
  if (!v7)
  {
    goto LABEL_84;
  }

LABEL_6:
  if (v7 < 1)
  {
    __break(1u);
LABEL_86:
    if (v6 >= sub_26B9ACB44())
    {
LABEL_91:
      v7 = v177;
      v8 = v178;
      v25 = v3;
      v65 = v183;
      goto LABEL_68;
    }

    if (sub_26B9ACB44() < 0)
    {
      goto LABEL_227;
    }

    v8 = v178;
    v65 = v183;
    if (sub_26B9ACB44() >= v6)
    {
      goto LABEL_39;
    }

    goto LABEL_89;
  }

  v185 = v5;
  v3 = 0;
  v8 = 0;
  for (isUniquelyReferenced_nonNull_native = 0; isUniquelyReferenced_nonNull_native != v7; ++isUniquelyReferenced_nonNull_native)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D686B00](isUniquelyReferenced_nonNull_native, v4);
    }

    else
    {
      v9 = *(v4 + 8 * isUniquelyReferenced_nonNull_native + 32);
    }

    v10 = v9;
    v11 = [v9 categoryID];
    if (v11 == 2)
    {

      v3 = v10;
    }

    else if (v11 == 1)
    {

      v8 = v10;
    }

    else
    {
    }
  }

  v12 = MEMORY[0x277D84F90];
  v190 = MEMORY[0x277D84F90];
  v191 = MEMORY[0x277D84F90];
  v178 = v8;
  if (!v8)
  {
    v7 = v177;
    v24 = *(v177 + 264);
LABEL_23:
    v173 = v12;
    goto LABEL_24;
  }

  v13 = v8;
  v14 = [v13 documentURLs];
  v15 = sub_26B9AB104();
  isUniquelyReferenced_nonNull_native = sub_26B9AC6F4();

  v16 = *(isUniquelyReferenced_nonNull_native + 16);

  if (!v16)
  {

    v7 = v177;
    v24 = *(v177 + 264);
    v12 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v17 = *(v177 + 264);
  v18 = [v13 documentURLs];
  v19 = sub_26B9AC6F4();

  v20 = sub_26B93EE1C(v19);
  v171 = v17;
  if (v17)
  {
    v21 = *(v177 + 272);
    v22 = *(v177 + 280);

    v23 = v177;
    goto LABEL_28;
  }

  isUniquelyReferenced_nonNull_native = v20;

  sub_26B9450D4(v56);
  v57 = [v13 documentURLs];
  v58 = sub_26B9AC6F4();

  v59 = *(v58 + 16);

  v183 = v13;
  v1 = [v13 documentURLs];
  v60 = sub_26B9AC6F4();

  if (v6 < v59)
  {
    v61 = *(v60 + 16);
    if (v61 < v6)
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (v61 != v6)
    {
      sub_26B945B18(v60, v60 + ((*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80)), 0, (2 * v6) | 1);
      v63 = v62;

      v60 = v63;
    }
  }

  (*(**(v177 + 216) + 176))(v60);
  v7 = isUniquelyReferenced_nonNull_native >> 62;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_86;
  }

  v64 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  v65 = v13;
  if (v6 >= v64)
  {
    v7 = v177;
    v25 = v3;
    goto LABEL_68;
  }

  if (v64 < v6)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

LABEL_39:

  if ((isUniquelyReferenced_nonNull_native & 0xC000000000000001) != 0)
  {
    sub_26B9294B8(0, &qword_2804266B8, 0x277D65850);
    sub_26B9ACC14();
    sub_26B9ACC14();
    sub_26B9ACC14();
    sub_26B9ACC14();
    sub_26B9ACC14();
    if (v185)
    {
      sub_26B9ACC14();
      sub_26B9ACC14();
    }
  }

  if (v7)
  {
    v66 = sub_26B9ACD54();
    v1 = v77;
    v7 = v78;
    v67 = v79;

    if ((v67 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v66 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v1 = ((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 32);
    v67 = (2 * v6) | 1;
  }

  sub_26B9ACED4();
  swift_unknownObjectRetain_n();
  v81 = swift_dynamicCastClass();
  if (!v81)
  {
    swift_unknownObjectRelease();
    v81 = MEMORY[0x277D84F90];
  }

  v82 = *(v81 + 16);

  if (__OFSUB__(v67 >> 1, v7))
  {
    goto LABEL_221;
  }

  if (v82 != (v67 >> 1) - v7)
  {
    goto LABEL_222;
  }

  isUniquelyReferenced_nonNull_native = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v7 = v177;
  v25 = v3;
  v65 = v183;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_68;
  }

  isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
  while (1)
  {
    swift_unknownObjectRelease();
LABEL_68:
    if (*(v7 + 300) == 2)
    {

      v24 = 0;
      v173 = MEMORY[0x277D84F90];
      if (v25)
      {
        goto LABEL_25;
      }

      goto LABEL_109;
    }

    if (qword_28042CDF0 != -1)
    {
      swift_once();
    }

    if (qword_28042CDF8 != -1)
    {
      swift_once();
    }

    v67 = qword_280433D98;
    if (isUniquelyReferenced_nonNull_native >> 62)
    {
      v66 = sub_26B9ACB44();
      if (!v66)
      {
        goto LABEL_93;
      }
    }

    else
    {
      v66 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v66)
      {
        goto LABEL_93;
      }
    }

    if (v66 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    swift_unknownObjectRelease_n();
    v65 = v183;
LABEL_60:
    sub_26B945A1C(v66, v1, v7, v67, &qword_2804266B8, 0x277D65850);
    isUniquelyReferenced_nonNull_native = v80;
    v7 = v177;
    v25 = v3;
  }

  v83 = 0;
  do
  {
    if ((isUniquelyReferenced_nonNull_native & 0xC000000000000001) != 0)
    {
      v84 = MEMORY[0x26D686B00](v83, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      v84 = *(isUniquelyReferenced_nonNull_native + 8 * v83 + 32);
    }

    ++v83;
    v85 = v84;
    v86 = sub_26B9AC4C4();
    [v85 setSectionBundleIdentifier_];

    v8 = v178;
  }

  while (v66 != v83);
LABEL_93:
  *(v177 + 298) = 0;
  sub_26B93D0F4();
  sub_26B9AC684();
  sub_26B9AC684();
  if (*(v177 + 192) == *(v177 + 200))
  {
    v88 = 0;
  }

  else
  {
    v88 = 3;
  }

  sub_26B9294B8(0, &qword_2804266B0, 0x277D65908);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v90 = sub_26B9AC4C4();
  v91 = sub_26B9AC4C4();
  sub_26B9294B8(0, &qword_2804266B8, 0x277D65850);
  v92 = sub_26B9AC6E4();

  v93 = [ObjCClassFromMetadata sectionWithTitle:v90 identifier:v91 style:v88 results:v92];

  if (v93)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_26B9B1290;
    *(v94 + 32) = v93;

    v24 = 0;
    v173 = v94;
    v190 = v94;
  }

  else
  {

    v24 = 0;
    v173 = MEMORY[0x277D84F90];
  }

  v7 = v177;
LABEL_24:
  v25 = v3;
  if (!v3)
  {
LABEL_109:
    v87 = v191;
    goto LABEL_110;
  }

LABEL_25:
  v26 = v25;
  v27 = [v26 documentURLs];
  sub_26B9AB104();
  isUniquelyReferenced_nonNull_native = sub_26B9AC6F4();

  v28 = *(isUniquelyReferenced_nonNull_native + 16);

  if (!v28)
  {

    goto LABEL_109;
  }

  v29 = *(v7 + 216);
  v30 = [v26 documentURLs];
  v31 = v26;
  v32 = v7;
  v33 = sub_26B9AC6F4();

  (*(*v29 + 200))(v33);
  v34 = [v31 documentURLs];
  v35 = sub_26B9AC6F4();

  v36 = sub_26B93EE1C(v35);
  v171 = v24;
  if (!v24)
  {
    isUniquelyReferenced_nonNull_native = v36;
    v186 = v31;
    v68 = *(v32 + 300);

    v70 = sub_26B9450D4(v69);
    if (v68 == 2)
    {
      v7 = v32;

LABEL_108:
      v25 = v3;
      goto LABEL_109;
    }

    if (qword_28042CE00 != -1)
    {
      v70 = swift_once();
    }

    v71 = unk_280433DB0;
    if (qword_28042CE08 != -1)
    {
      v70 = swift_once();
    }

    v25 = qword_280433DB8;
    if (isUniquelyReferenced_nonNull_native >> 62)
    {
      v70 = sub_26B9ACB44();
      v72 = v70;
      if (!v70)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v72 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v72)
      {
        goto LABEL_101;
      }
    }

    if (v72 < 1)
    {
      __break(1u);
LABEL_224:
      isUniquelyReferenced_nonNull_native = v70;
      sub_26B9AC734();
LABEL_106:
      sub_26B9AC774();

      v173 = v190;
      v7 = v177;
      goto LABEL_109;
    }

    v73 = 0;
    do
    {
      if ((isUniquelyReferenced_nonNull_native & 0xC000000000000001) != 0)
      {
        v74 = MEMORY[0x26D686B00](v73, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v74 = *(isUniquelyReferenced_nonNull_native + 8 * v73 + 32);
      }

      ++v73;
      v75 = v74;
      v76 = sub_26B9AC4C4();
      [v75 setSectionBundleIdentifier_];

      v8 = v178;
    }

    while (v72 != v73);
LABEL_101:
    *(v177 + 296) = *(v177 + 300) & 1;
    sub_26B93D0F4();
    sub_26B9AC684();
    sub_26B9AC684();
    if (*(v177 + 176) == *(v177 + 184))
    {
      v95 = 0;
    }

    else
    {
      v95 = 3;
    }

    sub_26B9294B8(0, &qword_2804266B0, 0x277D65908);
    v96 = swift_getObjCClassFromMetadata();
    v97 = sub_26B9AC4C4();
    v98 = sub_26B9AC4C4();
    sub_26B9294B8(0, &qword_2804266B8, 0x277D65850);
    v99 = sub_26B9AC6E4();

    v100 = [v96 sectionWithTitle:v97 identifier:v98 style:v95 results:v99];

    if (!v100)
    {

      v7 = v177;
      goto LABEL_108;
    }

    v71 = v100;
    MEMORY[0x26D6865A0]();
    v70 = *((v190 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v3;
    v24 = v186;
    if (v70 < *((v190 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_106;
    }

    goto LABEL_224;
  }

  v37 = *(v32 + 272);
  v38 = *(v32 + 280);

  v23 = v32;
LABEL_28:
  v39 = v23[29];
  v40 = v23[30];
  v41 = v23[28];
  v42 = sub_26B9A7568();
  (*(v39 + 16))(v40, v42, v41);
  v43 = v171;
  v44 = sub_26B9AB564();
  v45 = sub_26B9AC934();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412290;
    v48 = v171;
    v49 = _swift_stdlib_bridgeErrorToNSError();
    *(v46 + 4) = v49;
    *v47 = v49;
    _os_log_impl(&dword_26B8E8000, v44, v45, "Unable to retrieve suggested files for ZKW from ATXSpotlightClient: %@", v46, 0xCu);
    sub_26B9422F4(v47);
    MEMORY[0x26D6879F0](v47, -1, -1);
    MEMORY[0x26D6879F0](v46, -1, -1);
  }

  v50 = v23[30];
  v51 = v23[31];
  v52 = *(v177 + 232);
  v53 = *(v177 + 224);
  v54 = *(v177 + 208);

  (*(v52 + 8))(v50, v53);
  v7 = v177;
  v55 = sub_26B906128();
  SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(MEMORY[0x277D84F90], v51, 1, 1, 0, v55 & 1, v54);

LABEL_215:

  v169 = *(v7 + 8);

  return v169();
}

uint64_t sub_26B944E08()
{
  v1 = v0[35];
  v2 = v0[34];

  swift_willThrow();

  v3 = v0[36];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  v7 = sub_26B9A7568();
  (*(v5 + 16))(v4, v7, v6);
  v8 = v3;
  v9 = sub_26B9AB564();
  v10 = sub_26B9AC934();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v3;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_26B8E8000, v9, v10, "Unable to retrieve suggested files for ZKW from ATXSpotlightClient: %@", v11, 0xCu);
    sub_26B9422F4(v12);
    MEMORY[0x26D6879F0](v12, -1, -1);
    MEMORY[0x26D6879F0](v11, -1, -1);
  }

  v16 = v0[30];
  v15 = v0[31];
  v17 = v0[28];
  v18 = v0[29];
  v19 = v0[26];

  (*(v18 + 8))(v16, v17);
  v20 = sub_26B906128();
  SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(MEMORY[0x277D84F90], v15, 1, 1, 0, v20 & 1, v19);

  v21 = v0[1];

  return v21();
}

uint64_t sub_26B944FE4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426530, &unk_26B9B1CA0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_26B9294B8(0, &qword_2804266F8, 0x277CEB4D8);
    **(*(v4 + 64) + 40) = sub_26B9AC6F4();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_26B9450D4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_26B9ACB44();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_26B9ACB44();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_26B928DFC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_26B946E58(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_26B9451C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  result = sub_26B93EE1C(a1);
  if (v7)
  {
    return v6;
  }

  v9 = result;
  if (!(result >> 62))
  {
    v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_11:
    sub_26B93D0F4();
    sub_26B9AC684();
    sub_26B9AC684();
    if (v21 == v20)
    {
      v15 = 0;
    }

    else
    {
      v15 = 3;
    }

    sub_26B9294B8(0, &qword_2804266B0, 0x277D65908);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = sub_26B9AC4C4();
    v18 = sub_26B9AC4C4();
    sub_26B9294B8(0, &qword_2804266B8, 0x277D65850);
    v19 = sub_26B9AC6E4();

    v6 = [ObjCClassFromMetadata sectionWithTitle:v17 identifier:v18 style:v15 results:v19];

    return v6;
  }

  result = sub_26B9ACB44();
  v10 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v10 >= 1)
  {
    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26D686B00](v11, v9);
      }

      else
      {
        v12 = *(v9 + 8 * v11 + 32);
      }

      ++v11;
      v13 = v12;
      v14 = sub_26B9AC4C4();
      [v13 setSectionBundleIdentifier_];
    }

    while (v10 != v11);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B9453F4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 80))();
  *a1 = result;
  return result;
}

uint64_t sub_26B94542C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  v12 = (*(**v4 + 112) + **(**v4 + 112));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_26B8EB6C8;

  return v12(v9, a2, a3, a4);
}

id sub_26B945570(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  sub_26B9AB414();
  v2 = sub_26B9AC6E4();

  v7[0] = 0;
  v3 = [v1 initWithUTTypes:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_26B9AAFE4();

    swift_willThrow();
  }

  return v3;
}

void *sub_26B94564C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804266F0, &unk_26B9B2818);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804266E8, &qword_26B9B2808);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26B945780(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426130, qword_26B9B0298);
  v4 = *(sub_26B9AB414() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_26B94587C(uint64_t a1)
{
  v2 = sub_26B9AC9B4();

  return sub_26B9466AC(a1, v2);
}

uint64_t sub_26B9458C0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26B946FE8(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_26B9ACE64();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 6;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[2 * i + 5];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 2;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804266E8, &qword_26B9B2808);
      v7 = sub_26B9AC754();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_26B945CB8(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_26B945A1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
LABEL_7:
        sub_26B9294B8(0, a5, a6);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v13 = v12 - 32;
      if (v12 < 32)
      {
        v13 = v12 - 25;
      }

      v11[2] = v7;
      v11[3] = (2 * (v13 >> 3)) | 1;
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_26B945B18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804266C8, &qword_26B9B27F0);
      v7 = *(sub_26B9AB104() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_26B9AB104();
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

uint64_t sub_26B945CB8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_26B932B28(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_26B946244((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = (v13 < v10) ^ (v16 >= v17);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26B93088C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_26B93088C((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
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

LABEL_79:
        if (v5 - 1 >= v36)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_26B946244((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_26B946244(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v4 + 1) < *(v6 + 1))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 16;
    do
    {
      v17 = v5 + 16;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 16;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 16;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 -= 16;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v20 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_26B946448(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804266E0, &qword_26B9B2800);
  result = sub_26B9ACD74();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      }

      result = sub_26B9AC9B4();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_26B9466AC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_26B9294B8(0, &qword_2804263D0, 0x277D65918);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_26B9AC9C4();

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

id sub_26B946780()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804266E0, &qword_26B9B2800);
  v2 = *v0;
  v3 = sub_26B9ACD64();
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
        result = v18;
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

void *sub_26B9468DC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804266F0, &unk_26B9B2818);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804266E8, &qword_26B9B2808);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26B946A10(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_26B9AB414();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of FilesZKWQueryDataSource.start(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 112) + **(*v4 + 112));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_26B8EC52C;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_26B946E58(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26B9ACB44();
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
      result = sub_26B9ACB44();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26B947100();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804266D0, &qword_26B9B27F8);
            v9 = sub_26B928E9C(v13, i, a3);
            v11 = *v10;
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
        sub_26B9294B8(0, &qword_2804266B8, 0x277D65850);
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

unint64_t sub_26B947014(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804266E0, &qword_26B9B2800);
    v3 = sub_26B9ACD84();
    sub_26B9AAAE4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_26B94587C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_26B947100()
{
  result = qword_2804266D8;
  if (!qword_2804266D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804266D0, &qword_26B9B27F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804266D8);
  }

  return result;
}

unint64_t sub_26B947164()
{
  result = qword_280426700;
  if (!qword_280426700)
  {
    sub_26B9AB414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426700);
  }

  return result;
}

uint64_t LoadingQuery.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LoadingQuery.description.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LoadingQuery.sections.getter()
{
  v1 = sub_26B9AB1F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v6 = [objc_allocWithZone(MEMORY[0x277D65850]) init];
  v7 = [objc_allocWithZone(MEMORY[0x277D4C1B0]) init];
  if (v5)
  {
    v8 = sub_26B9AC4C4();
  }

  else
  {
    v8 = 0;
  }

  [v7 setText_];

  v9 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  v10 = swift_allocObject();
  v22 = xmmword_26B9B1290;
  *(v10 + 16) = xmmword_26B9B1290;
  *(v10 + 32) = v7;
  sub_26B9294B8(0, &qword_2804272E0, 0x277D4C238);
  v11 = v7;
  v12 = sub_26B9AC6E4();

  [v9 setCardSections_];

  v13 = v6;
  [v13 setInlineCard_];
  sub_26B9AA884();
  sub_26B9AB1C4();
  (*(v2 + 8))(v4, v1);
  v14 = sub_26B9AC4C4();

  [v13 setIdentifier_];

  v15 = [objc_allocWithZone(MEMORY[0x277D65848]) init];
  v16 = sub_26B9AC4C4();
  [v15 setTitle_];

  v17 = sub_26B9AC4C4();
  [v15 setIdentifier_];

  v18 = swift_allocObject();
  *(v18 + 16) = v22;
  *(v18 + 32) = v13;
  sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
  v19 = sub_26B9AC6E4();

  [v15 setResults_];

  v20 = swift_allocObject();
  *(v20 + 16) = v22;
  *(v20 + 32) = v15;

  return v20;
}

SpotlightUIShared::LoadingQuery __swiftcall LoadingQuery.init(description:)(Swift::String_optional description)
{
  object = description.value._object;
  countAndFlagsBits = description.value._countAndFlagsBits;
  v4 = v1;

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.description.value._object = v6;
  result.description.value._countAndFlagsBits = v5;
  return result;
}

unint64_t sub_26B9475E8(uint64_t a1)
{
  result = sub_26B947610();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B947610()
{
  result = qword_280426708;
  if (!qword_280426708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426708);
  }

  return result;
}

uint64_t sub_26B947664@<X0>(void *a1@<X8>)
{
  sub_26B9479CC();

  return StaticQuery.representation.getter(a1);
}

uint64_t sub_26B9476B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B9479CC();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return StaticQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B94778C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  sub_26B9479CC();
  *v1 = v0;
  v1[1] = sub_26B8EB6C8;

  return StaticQuery.stop(with:)();
}

unint64_t sub_26B947840(uint64_t a1)
{
  result = sub_26B947868();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B947868()
{
  result = qword_280426710;
  if (!qword_280426710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426710);
  }

  return result;
}

uint64_t sub_26B9478BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B947610();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_26B947910(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_26B94796C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_26B9479CC()
{
  result = qword_280426718;
  if (!qword_280426718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426718);
  }

  return result;
}

void sub_26B947A20(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [*v1 command];
  [v4 copy];

  sub_26B9ACAD4();
  swift_unknownObjectRelease();
  sub_26B9294B8(0, &qword_280426690, 0x277D4C508);
  if (swift_dynamicCast())
  {
    v5 = QueryRepresentation.rawQuery.getter();
    v7 = v6;
    a1[3] = &type metadata for EntitySpotlightQuery;
    a1[4] = sub_26B948B6C();
    v8 = swift_allocObject();
    *a1 = v8;
    v9 = v3;
    EntitySpotlightQuery.init(command:searchString:browseFilter:)(v10, v5, v7, v3, (v8 + 16));
  }

  else
  {
    a1[3] = &type metadata for EmptyQuery;
    a1[4] = sub_26B903C04();
    EmptyQuery.init()();
  }
}

__n128 PasteboardQuery.platterBehavior.getter@<Q0>(uint64_t a1@<X8>)
{
  if (QueryRepresentation.isEmpty.getter())
  {
    v2 = sub_26B92CDA0();
  }

  else
  {
    v2 = sub_26B92CB8C();
  }

  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

uint64_t PasteboardQuery.representation.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
  v3 = v2;
}

void PasteboardQuery.representation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
}

id PasteboardQuery.init(representation:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = [objc_opt_self() pasteboard];
  *a2 = result;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

uint64_t PasteboardQuery.start(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 144) = a3;
  *(v5 + 152) = a4;
  *(v5 + 136) = a1;
  *(v5 + 160) = *a2;
  *(v5 + 224) = *(a2 + 8);
  *(v5 + 225) = *(a2 + 9);
  *(v5 + 168) = *(a2 + 16);
  *(v5 + 184) = *v4;
  *(v5 + 200) = *(v4 + 16);
  v6 = sub_26B92A538();
  swift_beginAccess();
  v7 = *v6;
  *(v5 + 208) = v7;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B947D68, v7, 0);
}

uint64_t sub_26B947D68()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 225);
  v5 = *(v0 + 224);
  v6 = *(v0 + 160);
  *(v0 + 112) = *(v0 + 184);
  *(v0 + 128) = v1;
  sub_26B947A20((v0 + 16));
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
  *(v0 + 56) = v6;
  *(v0 + 64) = v5;
  *(v0 + 65) = v4;
  *(v0 + 72) = v3;
  *(v0 + 80) = v2;
  v14 = (*(v8 + 24) + **(v8 + 24));
  v9 = swift_task_alloc();
  *(v0 + 216) = v9;
  *v9 = v0;
  v9[1] = sub_26B947EFC;
  v10 = *(v0 + 144);
  v11 = *(v0 + 152);
  v12 = *(v0 + 136);

  return v14(v12, v0 + 56, v10, v11, v7, v8);
}

uint64_t sub_26B947EFC()
{
  v1 = *(*v0 + 208);

  return MEMORY[0x2822009F8](sub_26B94800C, v1, 0);
}

uint64_t sub_26B94800C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PasteboardQuery.stop(with:)(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = *v1;
  *(v2 + 128) = *(v1 + 16);
  v3 = sub_26B92A538();
  swift_beginAccess();
  v4 = *v3;
  *(v2 + 136) = v4;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B948114, v4, 0);
}

uint64_t sub_26B948114()
{
  v1 = *(v0 + 128);
  *(v0 + 80) = *(v0 + 112);
  *(v0 + 96) = v1;
  sub_26B947A20((v0 + 16));
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v7 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_26B94825C;
  v5 = *(v0 + 104);

  return v7(v5, v2, v3);
}

uint64_t sub_26B94825C()
{
  v1 = *(*v0 + 136);

  return MEMORY[0x2822009F8](sub_26B94836C, v1, 0);
}

uint64_t sub_26B94836C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

Swift::OpaquePointer_optional __swiftcall PasteboardQuery.searchBarButtonItems()()
{
  v1 = [*v0 searchBarButtonItems];
  sub_26B9294B8(0, &qword_280426720, 0x277D4C200);
  v2 = sub_26B9AC6F4();

  v4 = v2;
  result.value._rawValue = v4;
  result.is_nil = v3;
  return result;
}

uint64_t sub_26B948444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26B8EC52C;

  return PasteboardQuery.start(with:context:resultHandler:)(a1, a2, a3, a4);
}

uint64_t sub_26B948500(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = *v1;
  *(v2 + 128) = *(v1 + 16);
  v3 = sub_26B92A538();
  swift_beginAccess();
  v4 = *v3;
  *(v2 + 136) = v4;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B9485A0, v4, 0);
}

uint64_t sub_26B9485A0()
{
  v1 = *(v0 + 128);
  *(v0 + 80) = *(v0 + 112);
  *(v0 + 96) = v1;
  sub_26B947A20((v0 + 16));
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v7 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_26B9486E8;
  v5 = *(v0 + 104);

  return v7(v5, v2, v3);
}

uint64_t sub_26B9486E8()
{
  v1 = *(*v0 + 136);

  return MEMORY[0x2822009F8](sub_26B948BC0, v1, 0);
}

unint64_t sub_26B9487F8(uint64_t a1)
{
  result = sub_26B948820();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B948820()
{
  result = qword_280426728;
  if (!qword_280426728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426728);
  }

  return result;
}

unint64_t sub_26B948874()
{
  result = qword_280426730;
  if (!qword_280426730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426730);
  }

  return result;
}

unint64_t sub_26B9488C8(uint64_t a1)
{
  result = sub_26B9488F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B9488F0()
{
  result = qword_280426738;
  if (!qword_280426738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426738);
  }

  return result;
}

uint64_t sub_26B948948()
{
  v1 = [*v0 searchBarButtonItems];
  sub_26B9294B8(0, &qword_280426720, 0x277D4C200);
  v2 = sub_26B9AC6F4();

  return v2;
}

uint64_t sub_26B9489B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26B8EB6C8;

  return ViewOptionConfigurableQuery.updateLayout(with:context:resultHandler:)();
}

unint64_t sub_26B948A88(uint64_t a1)
{
  result = sub_26B948874();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B948AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B948874();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

__n128 sub_26B948B04@<Q0>(uint64_t a1@<X8>)
{
  if (QueryRepresentation.isEmpty.getter())
  {
    v2 = sub_26B92CDA0();
  }

  else
  {
    v2 = sub_26B92CB8C();
  }

  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_26B948B6C()
{
  result = qword_280426740;
  if (!qword_280426740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426740);
  }

  return result;
}

unint64_t sub_26B948BC8()
{
  result = qword_280426750;
  if (!qword_280426750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426750);
  }

  return result;
}

id SpotlightQueryDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SpotlightQueryDataSource.init()()
{
  v1 = sub_26B9AB584();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentTask] = 0;
  v5 = &v0[OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentQuery];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentContinuation;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426748, qword_26B9B2A20);
  (*(*(v7 - 8) + 56))(&v0[v6], 1, 1, v7);
  v8 = &v0[OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_resultHandler];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_signpostState;
  v10 = sub_26B9A7568();
  (*(v2 + 16))(v4, v10, v1);
  v11 = sub_26B948BC8();
  SignpostIntervals.init(with:log:)(0, v4, &type metadata for SpotlightSignpostInterval, v11, &v0[v9]);
  DataSource = type metadata accessor for SpotlightQueryDataSource(0);
  v14.receiver = v0;
  v14.super_class = DataSource;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_26B948FA4()
{
  sub_26B92A538();
  swift_beginAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B949010(uint64_t a1, uint64_t a2)
{
  sub_26B92C070();
  sub_26B9ACA74();
  v2 = sub_26B9ACA74();
  v4 = v3;

  MEMORY[0x26D686470](v2, v4);

  MEMORY[0x26D686470](34, 0xE100000000000000);
  return 34;
}

uint64_t sub_26B949130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 344) = a4;
  *(v5 + 352) = v4;
  *(v5 + 328) = a1;
  *(v5 + 336) = a3;
  v7 = sub_26B9AB584();
  *(v5 + 360) = v7;
  *(v5 + 368) = *(v7 - 8);
  *(v5 + 376) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426768, &qword_26B9B2A50);
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = *a2;
  *(v5 + 91) = *(a2 + 8);
  *(v5 + 92) = *(a2 + 9);
  *(v5 + 400) = *(a2 + 16);
  v8 = sub_26B92A538();
  *(v5 + 416) = v8;
  swift_beginAccess();
  *(v5 + 424) = *v8;
  v9 = *((*MEMORY[0x277D85000] & *v4) + 0x130);
  sub_26B9AAAE4();
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v5 + 432) = v10;
  *v10 = v5;
  v10[1] = sub_26B949358;

  return v12();
}

uint64_t sub_26B949358()
{
  v1 = *(*v0 + 424);

  return MEMORY[0x2822009F8](sub_26B949468, v1, 0);
}

uint64_t sub_26B949468()
{
  v37 = v0;
  v1 = *(v0 + 91);
  v2 = *(v0 + 328);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = (*(v4 + 16))(v3, v4);
  *(v0 + 440) = v5;
  if (v1 != 2)
  {
    *(v0 + 89) = *(v0 + 91) & 1;
    sub_26B93D0F4();
    sub_26B9AC684();
    sub_26B9AC684();
    [v5 setDisplayAllResultsAsIcons_];
  }

  v6 = [v5 searchString];
  v7 = sub_26B9AC504();
  v9 = v8;

  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v14 = v2[3];
    v13 = v2[4];
    __swift_project_boxed_opaque_existential_1(*(v0 + 328), v14);
    (*(*(*(v13 + 8) + 8) + 16))(v36, v14);
    v15 = v36[1];

    if (v15)
    {

      v12 = 1;
    }

    else
    {
      v16 = [v5 searchEntities];
      sub_26B9294B8(0, &qword_280426778, 0x277D65890);
      v17 = sub_26B9AC6F4();

      if (v17 >> 62)
      {
        v18 = sub_26B9ACB44();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v18 != 0;
    }
  }

  if ((*((*MEMORY[0x277D85000] & **(v0 + 352)) + 0xF0))(v10) & 1) != 0 || (v20 = v2[3], v19 = v2[4], __swift_project_boxed_opaque_existential_1(*(v0 + 328), v20), (((*(v19 + 24))(v20, v19) | v12)))
  {
    v21 = *(v0 + 416);
    v22 = *(v0 + 344);
    v23 = (*(v0 + 352) + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_resultHandler);
    v24 = *v23;
    v25 = v23[1];
    *v23 = *(v0 + 336);
    v23[1] = v22;
    sub_26B9AAAE4();
    sub_26B9353FC(v24, v25);
    swift_beginAccess();
    v26 = *v21;

    return MEMORY[0x2822009F8](sub_26B949880, v26, 0);
  }

  else
  {
    v27 = *(v0 + 336);
    static SearchResults.empty(queryID:)(*(v0 + 408), v0 + 56);
    v28 = *(v0 + 64);
    v29 = *(v0 + 72);
    v30 = *(v0 + 73);
    v31 = *(v0 + 80);
    v32 = *(v0 + 88);
    *(v0 + 96) = *(v0 + 56);
    *(v0 + 104) = v28;
    *(v0 + 112) = v29;
    *(v0 + 113) = v30;
    *(v0 + 120) = v31;
    *(v0 + 128) = v32;
    v35 = (v27 + *v27);
    v33 = swift_task_alloc();
    *(v0 + 456) = v33;
    *v33 = v0;
    v33[1] = sub_26B949E2C;

    return v35(v0 + 96);
  }
}