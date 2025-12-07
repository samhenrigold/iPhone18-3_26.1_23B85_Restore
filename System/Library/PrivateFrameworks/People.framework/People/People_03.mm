uint64_t sub_22F020014(id *a1, char **a2, char **a3, uint64_t *a4)
{
  v7 = *a1;
  v8 = [*a1 fullName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_22F0D0CAC();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_22F03C784(0, *(v13 + 2) + 1, 1, v13);
    *a2 = v13;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_22F03C784((v15 > 1), v16 + 1, 1, v13);
    *a2 = v13;
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[16 * v16];
  *(v17 + 4) = v10;
  *(v17 + 5) = v12;
  v18 = [v7 appleID];
  if (v18)
  {
    v19 = v18;
    v20 = sub_22F0D0CAC();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = *a3;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v23;
  if ((v24 & 1) == 0)
  {
    v23 = sub_22F03C784(0, *(v23 + 2) + 1, 1, v23);
    *a3 = v23;
  }

  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  if (v26 >= v25 >> 1)
  {
    v23 = sub_22F03C784((v25 > 1), v26 + 1, 1, v23);
    *a3 = v23;
  }

  *(v23 + 2) = v26 + 1;
  v27 = &v23[16 * v26];
  *(v27 + 4) = v20;
  *(v27 + 5) = v22;
  v28 = [v7 contactIncludingImage_];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 identifier];

    v31 = sub_22F0D0CAC();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0xE000000000000000;
  }

  v34 = *a4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v34;
  if ((result & 1) == 0)
  {
    result = sub_22F03C784(0, *(v34 + 16) + 1, 1, v34);
    v34 = result;
    *a4 = result;
  }

  v37 = *(v34 + 16);
  v36 = *(v34 + 24);
  if (v37 >= v36 >> 1)
  {
    result = sub_22F03C784((v36 > 1), v37 + 1, 1, v34);
    v34 = result;
    *a4 = result;
  }

  *(v34 + 16) = v37 + 1;
  v38 = v34 + 16 * v37;
  *(v38 + 32) = v31;
  *(v38 + 40) = v33;
  return result;
}

void sub_22F0202A8(void *a1, void *a2)
{
  v4 = [a1 fullName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22F0D0CAC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = [a1 appleID];
  if (v9)
  {
    v10 = v9;
    v11 = sub_22F0D0CAC();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22F0D2BF0;
  *(v14 + 32) = v6;
  *(v14 + 40) = v8;
  v15 = sub_22F0D0F2C();

  [a2 setAttribute:v15 forKey:*MEMORY[0x277CC24E0]];

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22F0D2BF0;
  *(v16 + 32) = v11;
  *(v16 + 40) = v13;
  v17 = sub_22F0D0F2C();

  [a2 setAttribute:v17 forKey:*MEMORY[0x277CC24C8]];

  v18 = [a1 dsid];
  if (v18)
  {
    v19 = v18;
    [a2 setAttribute_forKey_];
  }
}

void sub_22F02049C(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    v6 = a1;
    v7 = sub_22F0D143C();
    a1 = v6;
    if (!v7)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v9 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  sub_22F01FF10(a1, &v10, &v9, &v8);
  v3 = sub_22F0D0F2C();
  [a2 setAttribute:v3 forKey:*MEMORY[0x277CC3028]];

  v4 = sub_22F0D0F2C();
  [a2 setAttribute:v4 forKey:*MEMORY[0x277CC3020]];

  v5 = sub_22F0D0F2C();
  [a2 setAttribute:v5 forKey:*MEMORY[0x277CC3018]];
}

uint64_t sub_22F0205F4(uint64_t a1, void *a2)
{
  v91 = sub_22F0D01DC();
  v4 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v80 - v10;
  v12 = sub_22F0D043C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v80 - v17;
  v88 = a1;
  if (!*(a1 + OBJC_IVAR____TtC6People12AskToBuyItem_thumbnailPath + 8))
  {
    goto LABEL_4;
  }

  sub_22F0D042C();
  v19 = *(v13 + 48);
  if (v19(v11, 1, v12) == 1)
  {
    sub_22F003A4C(v11, &qword_27DAA10F8, &qword_22F0D5320);
LABEL_4:
    if (qword_280CBDB90 != -1)
    {
LABEL_47:
      swift_once();
    }

    v20 = sub_22F0D0A1C();
    __swift_project_value_buffer(v20, qword_280CBDB98);
    v21 = sub_22F0D09FC();
    v22 = sub_22F0D123C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22EFE1000, v21, v22, "Missing thumbnail path in AskToBuy", v23, 2u);
      MEMORY[0x2318FE8B0](v23, -1, -1);
    }

    return 0;
  }

  v87 = v19;
  v89 = v4;
  v84 = *(v13 + 32);
  v85 = (v13 + 32);
  v84(v18, v11, v12);
  v25 = sub_22F0D0C7C();
  [a2 setAttribute:v25 forKey:*MEMORY[0x277CC31F0]];

  if (String.trimToNil()().value._object)
  {
    v26 = sub_22F0D0C7C();

    [a2 setAttribute:v26 forKey:*MEMORY[0x277CC2750]];
  }

  v86 = v18;
  v27 = *(v88 + OBJC_IVAR____TtC6People12AskToBuyItem_status);
  v28 = sub_22F0D197C();
  [a2 setAttribute:v28 forKey:*MEMORY[0x277CC2450]];

  switch(v27)
  {
    case 1:
      v29 = 0xEE00676E69646E65;
      v30 = 0x5074736575716572;
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22F0D2BF0;
      *(inited + 32) = v30;
      v32 = inited + 32;
      *(inited + 40) = v29;
      v33 = sub_22F05BB98(inited);
      swift_setDeallocating();
      sub_22F022C14(v32);
      if (v33)
      {
        v34 = v33;
        v35 = sub_22F0D0C7C();
        [a2 setAttribute:v34 forKey:v35];
      }

      break;
    case 3:
      v29 = 0xEF6465766F727070;
      v30 = 0x4174736575716572;
      goto LABEL_16;
    case 2:
      v29 = 0xED00006465696E65;
      v30 = 0x4474736575716572;
      goto LABEL_16;
  }

  v36 = v88;
  sub_22F0202A8(*(v88 + OBJC_IVAR____TtC6People12AskToBuyItem_familyMember), a2);
  sub_22F02049C(*(v36 + OBJC_IVAR____TtC6People12AskToBuyItem_requestApprovers), a2);
  v37 = sub_22F0D03AC();
  [a2 setAttribute:v37 forKey:*MEMORY[0x277CC31E0]];

  v38 = sub_22F0D0C7C();
  [a2 setAttribute:v38 forKey:*MEMORY[0x277CC2C48]];

  if (String.trimToNil()().value._object)
  {
    v39 = sub_22F0D0C7C();

    [a2 setAttribute:v39 forKey:*MEMORY[0x277CC3008]];
  }

  v40 = v88;
  [a2 setAttribute:*(v88 + OBJC_IVAR____TtC6People12AskToBuyItem_starRating) forKey:*MEMORY[0x277CC3120]];
  if (*(v40 + OBJC_IVAR____TtC6People12AskToBuyItem_storeLink + 8))
  {
    sub_22F0D042C();
    if (v87(v9, 1, v12) == 1)
    {
      sub_22F003A4C(v9, &qword_27DAA10F8, &qword_22F0D5320);
    }

    else
    {
      v84(v16, v9, v12);
      v41 = sub_22F0D03AC();
      [a2 setAttribute:v41 forKey:*MEMORY[0x277CC2688]];

      (*(v13 + 8))(v16, v12);
    }
  }

  v83 = v13;
  v84 = v12;
  v42 = sub_22F0D0C7C();
  v43 = *MEMORY[0x277CC2678];
  v85 = a2;
  [a2 setAttribute:v42 forKey:v43];

  v44 = sub_22F0454B0();
  v45 = v44;
  v46 = *(v44 + 2);
  if (v46)
  {
    v47 = 0;
    v48 = (v89 + 8);
    v49 = v44 + 40;
    v89 = *(v44 + 2);
    v81 = v46 - 1;
    v87 = MEMORY[0x277D84F90];
    v82 = v44 + 40;
    do
    {
      v50 = &v49[16 * v47];
      v51 = v47;
      while (1)
      {
        if (v51 >= *(v45 + 2))
        {
          __break(1u);
          goto LABEL_47;
        }

        v53 = *(v50 - 1);
        v52 = *v50;
        v47 = v51 + 1;
        v92[0] = v53;
        v92[1] = v52;
        sub_22F0CFF1C();
        v54 = v90;
        sub_22F0D01CC();
        sub_22F00901C();
        v55 = sub_22F0D136C();
        v57 = v56;
        (*v48)(v54, v91);

        v58 = HIBYTE(v57) & 0xF;
        if ((v57 & 0x2000000000000000) == 0)
        {
          v58 = v55 & 0xFFFFFFFFFFFFLL;
        }

        if (v58)
        {
          break;
        }

        v50 += 2;
        ++v51;
        if (v89 == v47)
        {
          goto LABEL_40;
        }
      }

      v59 = v87;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v59;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22EFFC4E8(0, *(v59 + 2) + 1, 1);
        v59 = v93;
      }

      v62 = *(v59 + 2);
      v61 = *(v59 + 3);
      if (v62 >= v61 >> 1)
      {
        sub_22EFFC4E8((v61 > 1), v62 + 1, 1);
        v59 = v93;
      }

      *(v59 + 2) = v62 + 1;
      v87 = v59;
      v63 = v59 + 16 * v62;
      *(v63 + 4) = v53;
      *(v63 + 5) = v52;
      v49 = v82;
    }

    while (v81 != v51);
  }

  else
  {
    v87 = MEMORY[0x277D84F90];
  }

LABEL_40:

  if (qword_280CBDB90 != -1)
  {
    swift_once();
  }

  v64 = sub_22F0D0A1C();
  __swift_project_value_buffer(v64, qword_280CBDB98);
  v65 = v87;
  sub_22F0CFFAC();
  v66 = sub_22F0D09FC();
  v67 = sub_22F0D122C();
  v68 = os_log_type_enabled(v66, v67);
  v69 = v85;
  if (v68)
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v92[0] = v71;
    *v70 = 134218242;
    *(v70 + 4) = *(v65 + 2);
    sub_22F0D00CC();
    *(v70 + 12) = 2080;
    v72 = *MEMORY[0x277CC24C0];
    v73 = sub_22F0D0CAC();
    v75 = sub_22F00A560(v73, v74, v92);

    *(v70 + 14) = v75;
    _os_log_impl(&dword_22EFE1000, v66, v67, "Adding %ld identifiers for %s", v70, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    MEMORY[0x2318FE8B0](v71, -1, -1);
    MEMORY[0x2318FE8B0](v70, -1, -1);
  }

  else
  {

    sub_22F0D00CC();
    v72 = *MEMORY[0x277CC24C0];
  }

  v77 = v83;
  v76 = v84;
  v78 = sub_22F0D0F2C();
  sub_22F0D00CC();
  [v69 setAttribute:v78 forKey:v72];

  v79 = sub_22F0D0C7C();

  [v69 setAttribute:v79 forKey:*MEMORY[0x277CC31C0]];

  (*(v77 + 8))(v86, v76);
  return 1;
}

uint64_t sub_22F021148(uint64_t a1, void *a2)
{
  v65 = sub_22F0D01DC();
  v4 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v59 - v7;
  v9 = sub_22F0D043C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC6People21ScreenTimeRequestItem_thumbnailPath + 8))
  {
    sub_22F0D042C();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v12, v8, v9);
      v14 = sub_22F0D03AC();
      [a2 setAttribute:v14 forKey:*MEMORY[0x277CC31E0]];

      (*(v10 + 8))(v12, v9);
      goto LABEL_9;
    }

    sub_22F003A4C(v8, &qword_27DAA10F8, &qword_22F0D5320);
  }

  if (*(a1 + OBJC_IVAR____TtC6People21ScreenTimeRequestItem_thumbnailData + 8) >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_22F0D046C();
  }

  [a2 setAttribute:v13 forKey:*MEMORY[0x277CC31C8]];
  swift_unknownObjectRelease();
LABEL_9:
  v15 = *(a1 + OBJC_IVAR____TtC6People21ScreenTimeRequestItem_status);
  v16 = sub_22F0D197C();
  [a2 setAttribute:v16 forKey:*MEMORY[0x277CC2450]];

  switch(v15)
  {
    case 1:
      v17 = 0xEE00676E69646E65;
      v18 = 0x5074736575716572;
      break;
    case 3:
      v17 = 0xEF6465766F727070;
      v18 = 0x4174736575716572;
      break;
    case 2:
      v17 = 0xED00006465696E65;
      v18 = 0x4474736575716572;
      break;
    default:
      goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 32) = v18;
  v20 = inited + 32;
  *(inited + 40) = v17;
  v21 = sub_22F05BB98(inited);
  swift_setDeallocating();
  sub_22F022C14(v20);
  if (v21)
  {
    v22 = v21;
    v23 = sub_22F0D0C7C();
    [a2 setAttribute:v22 forKey:v23];
  }

LABEL_17:
  sub_22F0202A8(*(a1 + OBJC_IVAR____TtC6People21ScreenTimeRequestItem_familyMember), a2);
  sub_22F02049C(*(a1 + OBJC_IVAR____TtC6People21ScreenTimeRequestItem_requestApprovers), a2);
  v24 = sub_22F0D0C7C();
  [a2 setAttribute:v24 forKey:*MEMORY[0x277CC3038]];

  v25 = sub_22F0D197C();
  v26 = sub_22F0D0C7C();
  v61 = a2;
  [a2 setAttribute:v25 forKey:v26];

  v27 = sub_22F01B3BC();
  v28 = v27;
  v29 = *(v27 + 2);
  if (v29)
  {
    v30 = 0;
    v31 = (v4 + 8);
    v32 = v27 + 40;
    v63 = *(v27 + 2);
    v59 = v29 - 1;
    v62 = MEMORY[0x277D84F90];
    v60 = v27 + 40;
    v33 = v64;
    do
    {
      v34 = &v32[16 * v30];
      v35 = v30;
      while (1)
      {
        if (v35 >= *(v28 + 2))
        {
          __break(1u);
          goto LABEL_39;
        }

        v36 = *(v34 - 1);
        v37 = *v34;
        v30 = v35 + 1;
        v66[0] = v36;
        v66[1] = v37;
        sub_22F0CFF1C();
        sub_22F0D01CC();
        sub_22F00901C();
        v38 = sub_22F0D136C();
        v40 = v39;
        (*v31)(v33, v65);

        v41 = HIBYTE(v40) & 0xF;
        if ((v40 & 0x2000000000000000) == 0)
        {
          v41 = v38 & 0xFFFFFFFFFFFFLL;
        }

        if (v41)
        {
          break;
        }

        v34 += 2;
        ++v35;
        if (v63 == v30)
        {
          goto LABEL_33;
        }
      }

      v42 = v62;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22EFFC4E8(0, *(v42 + 16) + 1, 1);
        v42 = v67;
      }

      v45 = *(v42 + 16);
      v44 = *(v42 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_22EFFC4E8((v44 > 1), v45 + 1, 1);
        v42 = v67;
      }

      *(v42 + 16) = v45 + 1;
      v62 = v42;
      v46 = v42 + 16 * v45;
      *(v46 + 32) = v36;
      *(v46 + 40) = v37;
      v32 = v60;
    }

    while (v59 != v35);
  }

  else
  {
    v62 = MEMORY[0x277D84F90];
  }

LABEL_33:

  if (qword_280CBDB90 != -1)
  {
LABEL_39:
    swift_once();
  }

  v47 = sub_22F0D0A1C();
  __swift_project_value_buffer(v47, qword_280CBDB98);
  v48 = v62;
  sub_22F0CFFAC();
  v49 = sub_22F0D09FC();
  v50 = sub_22F0D122C();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v66[0] = v52;
    *v51 = 134218242;
    *(v51 + 4) = *(v48 + 16);
    sub_22F0D00CC();
    *(v51 + 12) = 2080;
    v53 = *MEMORY[0x277CC24C0];
    v54 = sub_22F0D0CAC();
    v56 = sub_22F00A560(v54, v55, v66);

    *(v51 + 14) = v56;
    _os_log_impl(&dword_22EFE1000, v49, v50, "Adding %ld identifiers for %s", v51, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x2318FE8B0](v52, -1, -1);
    MEMORY[0x2318FE8B0](v51, -1, -1);
  }

  else
  {

    sub_22F0D00CC();
    v53 = *MEMORY[0x277CC24C0];
  }

  v57 = sub_22F0D0F2C();
  sub_22F0D00CC();
  [v61 setAttribute:v57 forKey:v53];

  return 1;
}

void sub_22F021950(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = [*(a1 + 16) identifier];
    sub_22F0D0CAC();
  }

  v6 = String.trimToNil()();

  if (v6.value._object)
  {
    v56 = MEMORY[0x277D837D0];
    v54 = v6;
    v7 = sub_22F03CDA0(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_22F03CDA0((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    sub_22EFFFA24(&v54, &v7[32 * v9 + 32]);
  }

  v10 = sub_22F0D0F2C();
  [a2 setAttribute:v10 forKey:*MEMORY[0x277CC24C0]];

  if (v4)
  {
    v11 = v4;
    v12 = [v11 phoneNumbers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1480, &qword_22F0D7B10);
    v13 = sub_22F0D0F4C();

    if (v13 >> 62)
    {
      v14 = sub_22F0D143C();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14)
    {
      v15 = [v11 phoneNumbers];
      if (!v15)
      {
        sub_22F0D0F4C();
        v15 = sub_22F0D0F2C();
      }

      [a2 setAttribute:v15 forKey:*MEMORY[0x277CC2EB8]];
    }

    v16 = [v11 emailAddresses];
    v17 = sub_22F0D0F4C();

    if (v17 >> 62)
    {
      v18 = sub_22F0D143C();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v18)
    {
      v19 = [v11 emailAddresses];
      if (!v19)
      {
        sub_22F0D0F4C();
        v19 = sub_22F0D0F2C();
      }

      [a2 setAttribute:v19 forKey:*MEMORY[0x277CC24C8]];
    }

    v52 = a1;
    v53 = a2;
    v57 = MEMORY[0x277D84FA0];
    v20 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
    [v20 setStyle_];
    v54.value._countAndFlagsBits = 0;
    v54.value._object = 0xE000000000000000;
    v55 = v20;
    ContactFormatter.displayName(for:includePhone:)(v11, 0);

    v21 = String.trimToNil()();

    if (v21.value._object)
    {
      sub_22F0567DC(&v54, v21.value._countAndFlagsBits, v21.value._object);
    }

    v22 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
    [v22 setStyle_];
    v54.value._countAndFlagsBits = 0;
    v54.value._object = 0xE000000000000000;
    v55 = v22;
    ContactFormatter.displayName(for:includePhone:)(v11, 0);

    v23 = String.trimToNil()();

    if (v23.value._object)
    {
      sub_22F0567DC(&v54, v23.value._countAndFlagsBits, v23.value._object);
    }

    v24 = v57;
    v25 = *(v57 + 16);
    if (v25)
    {
      v26 = sub_22F0BBB50(*(v57 + 16), 0);
      v27 = sub_22F0BFD34(&v54, v26 + 4, v25, v24);
      sub_22F003524(v54.value._countAndFlagsBits);
      if (v27 != v25)
      {
        __break(1u);
        return;
      }

      v28 = sub_22F0D0F2C();
      sub_22F0D00CC();
      v29 = *MEMORY[0x277CC24E0];
      [a2 setAttribute:v28 forKey:v29];
    }

    else
    {
    }
  }

  else
  {
    v31 = *(a1 + OBJC_IVAR____TtC6People10FindMyItem_contactPerson + 8);
    v30 = *(a1 + OBJC_IVAR____TtC6People10FindMyItem_contactPerson + 16);
    v32 = objc_allocWithZone(MEMORY[0x277CBDB70]);
    v33 = sub_22F0D0C7C();
    v34 = [v32 initWithStringValue_];

    if (v34 && (v35 = [v34 fullyQualifiedDigits]) != 0)
    {
      v36 = v35;
      v37 = sub_22F0D0CAC();
      v39 = v38;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_22F0D2BF0;
      *(v40 + 32) = v37;
      *(v40 + 40) = v39;
      v41 = sub_22F0D0F2C();

      v42 = *MEMORY[0x277CC2EB8];
      [a2 setAttribute:v41 forKey:v42];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_22F0D2BF0;
      *(v43 + 32) = v31;
      *(v43 + 40) = v30;
      sub_22F0CFF1C();
      v44 = sub_22F0D0F2C();

      v45 = *MEMORY[0x277CC24C8];
      [a2 setAttribute:v44 forKey:v45];
    }
  }

  v46 = *(a1 + OBJC_IVAR____TtC6People10FindMyItem_latitude);
  [v46 doubleValue];
  if (v47 == 0.0)
  {
  }

  else
  {
    v48 = *(a1 + OBJC_IVAR____TtC6People10FindMyItem_longitude);
    [v48 doubleValue];
    v50 = v49;

    if (v50 != 0.0)
    {
      [a2 setLatitude_];
      [a2 setLongitude_];
    }
  }

  v51 = sub_22F0D116C();
  [a2 setAttribute:v51 forKey:*MEMORY[0x277CC2D08]];
}

unint64_t sub_22F0220A0(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1440, &unk_22F0D65F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v73 - v3;
  v5 = sub_22F0D05BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v78 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_22F0D01DC();
  v8 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_22F0D098C();
  v10 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v12 = sub_22F0D143C();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = a1 >> 62;
  if (v12)
  {
    if (v12 < 1)
    {
      __break(1u);
LABEL_64:
      swift_once();
      goto LABEL_57;
    }

    v13 = 0;
    v88 = *MEMORY[0x277CC31F0];
    v87 = *MEMORY[0x277CC2640];
    v14 = *MEMORY[0x277CC2D10];
    v85 = a1 & 0xC000000000000001;
    v86 = v14;
    v84 = (v10 + 8);
    v95 = (v8 + 8);
    v81 = *MEMORY[0x277CC2750];
    v80 = *MEMORY[0x277CC2CE8];
    v83 = *MEMORY[0x277CC25F0];
    v82 = (v6 + 48);
    v77 = (v6 + 32);
    v76 = (v6 + 8);
    v15 = &off_278879000;
    v75 = *MEMORY[0x277CC2EB8];
    v79 = MEMORY[0x277D84F90];
    v91 = v4;
    v92 = a1;
    v89 = v12;
    v90 = v5;
    do
    {
      if (v85)
      {
        v16 = MEMORY[0x2318FDAB0](v13, a1);
      }

      else
      {
        v16 = *(a1 + 8 * v13 + 32);
        sub_22F0CFFAC();
      }

      v17 = v93;
      sub_22F0D097C();
      v18 = objc_allocWithZone(MEMORY[0x277CC34B8]);
      v19 = sub_22F0D096C();
      v20 = [v18 initWithContentType_];

      (*v84)(v17, v94);
      v21 = sub_22F0D0C7C();
      [v20 v15[418]];

      v22 = *(v16 + OBJC_IVAR____TtC6People13IndexableItem_description + 8);
      v98 = *(v16 + OBJC_IVAR____TtC6People13IndexableItem_description);
      v99 = v22;
      sub_22F0CFF1C();
      v23 = v96;
      sub_22F0D01CC();
      sub_22F00901C();
      v24 = sub_22F0D136C();
      v26 = v25;
      v27 = *v95;
      (*v95)(v23, v97);
      if ((v26 & 0x2000000000000000) != 0)
      {
        v28 = HIBYTE(v26) & 0xF;
      }

      else
      {
        v28 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        v29 = sub_22F0D0C7C();

        [v20 v15[418]];
      }

      else
      {
      }

      swift_beginAccess();
      v30 = sub_22F0CFF1C();
      v31 = sub_22F05BB98(v30);

      if (v31)
      {
        [v20 setAttribute:v31 forKey:v80];
      }

      v32 = *(v16 + 16);
      if (v32)
      {
        v33 = [v32 identifier];
        v34 = sub_22F0D0CAC();
        v36 = v35;
      }

      else
      {
        v34 = 0;
        v36 = 0xE000000000000000;
      }

      v98 = v34;
      v99 = v36;
      v37 = v96;
      sub_22F0D01CC();
      v38 = sub_22F0D136C();
      v40 = v39;
      v27(v37, v97);
      if ((v40 & 0x2000000000000000) != 0)
      {
        v41 = HIBYTE(v40) & 0xF;
      }

      else
      {
        v41 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {
        v42 = sub_22F0D0C7C();
      }

      else
      {

        v42 = sub_22F0D0C7C();
      }

      v44 = v90;
      v43 = v91;
      v15 = &off_278879000;
      [v20 setAttribute:v42 forKey:v83];

      sub_22F022BA4(v16 + OBJC_IVAR____TtC6People13IndexableItem_expirationDate, v43);
      if ((*v82)(v43, 1, v44) == 1)
      {
        sub_22F003A4C(v43, &qword_27DAA1440, &unk_22F0D65F0);
      }

      else
      {
        v45 = v78;
        (*v77)(v78, v43, v44);
        v46 = sub_22F0D051C();
        [v20 setExpirationDate_];

        (*v76)(v45, v44);
      }

      v47 = sub_22F0D051C();
      [v20 setAttribute:v47 forKey:v87];

      v48 = sub_22F0D051C();
      [v20 setAttribute:v48 forKey:v86];

      v49 = *(v16 + 16);
      a1 = v92;
      if (v49)
      {
        v50 = v49;
        v51 = [v50 phoneNumbers];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1480, &qword_22F0D7B10);
        v52 = sub_22F0D0F4C();

        if (v52 >> 62)
        {
          v53 = sub_22F0D143C();
        }

        else
        {
          v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v53)
        {
          v54 = [v50 phoneNumbers];
          if (!v54)
          {
            sub_22F0D0F4C();
            v54 = sub_22F0D0F2C();
          }

          [v20 setAttribute:v54 forKey:v75];

          v50 = v54;
        }
      }

      type metadata accessor for AskToBuyItem(0);
      v55 = swift_dynamicCastClass();
      if (v55 && (v56 = v55, sub_22F0CFFAC(), LOBYTE(v56) = sub_22F0205F4(v56, v20), sub_22F0D00CC(), (v56 & 1) == 0) || (type metadata accessor for ScreenTimeRequestItem(0), (v57 = swift_dynamicCastClass()) != 0) && (v58 = v57, sub_22F0CFFAC(), LOBYTE(v58) = sub_22F021148(v58, v20), sub_22F0D00CC(), (v58 & 1) == 0))
      {
        sub_22F0D00CC();
      }

      else
      {
        type metadata accessor for FindMyItem(0);
        v59 = swift_dynamicCastClass();
        if (v59)
        {
          v60 = v59;
          sub_22F0CFFAC();
          sub_22F021950(v60, v20);
          sub_22F0D00CC();
        }

        v61 = objc_allocWithZone(MEMORY[0x277CC34B0]);
        v62 = v20;
        v63 = sub_22F0D0C7C();
        v64 = [v61 initWithUniqueIdentifier:v63 domainIdentifier:0 attributeSet:v62];

        v65 = v64;
        MEMORY[0x2318FD450]();
        if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22F0D0F8C();
        }

        sub_22F0D0FEC();

        sub_22F0D00CC();
        v79 = v100;
      }

      ++v13;
    }

    while (v89 != v13);
  }

  else
  {
    v79 = MEMORY[0x277D84F90];
  }

  v66 = v79;
  if (v79 >> 62)
  {
    v67 = sub_22F0D143C();
  }

  else
  {
    v67 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v74)
  {
    if (v67 == sub_22F0D143C())
    {
      return v66;
    }
  }

  else if (v67 == *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v66;
  }

  if (qword_280CBDB90 != -1)
  {
    goto LABEL_64;
  }

LABEL_57:
  v68 = sub_22F0D0A1C();
  __swift_project_value_buffer(v68, qword_280CBDB98);
  v69 = sub_22F0D09FC();
  v70 = sub_22F0D123C();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_22EFE1000, v69, v70, "Failed to create all searchable items from input", v71, 2u);
    MEMORY[0x2318FE8B0](v71, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22F022BA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1440, &unk_22F0D65F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22F022C68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v37 = a3;
  v39 = a2;
  v38 = a1;
  v5 = sub_22F0D05BC();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v40 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22F0D098C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22F0D097C();
  v11 = objc_allocWithZone(MEMORY[0x277CC34B8]);
  v12 = sub_22F0D096C();
  v13 = [v11 initWithContentType_];

  (*(v8 + 8))(v10, v7);
  v14 = 1 << *(a4 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a4 + 64);
  v17 = (v14 + 63) >> 6;
  sub_22F0CFF1C();
  v18 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v22 | (v19 << 6);
      v24 = (*(a4 + 48) + 16 * v23);
      v26 = *v24;
      v25 = v24[1];
      sub_22F003598(*(a4 + 56) + 32 * v23, v43);
      *&v44 = v26;
      *(&v44 + 1) = v25;
      sub_22EFFFA24(v43, &v45);
      sub_22F0CFF1C();
      v21 = v19;
LABEL_13:
      v47 = v44;
      v48[0] = v45;
      v48[1] = v46;
      if (!*(&v44 + 1))
      {
        break;
      }

      sub_22EFFFA24(v48, &v44);
      __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
      v27 = sub_22F0D187C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v44);
      v28 = sub_22F0D0C7C();

      [v13 setAttribute:v27 forKey:v28];
      swift_unknownObjectRelease();

      v18 = v21;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    sub_22F0D00CC();
    v29 = v40;
    sub_22F0D05AC();
    v30 = sub_22F0D051C();
    [v13 setAttribute:v30 forKey:*MEMORY[0x277CC2D10]];

    v31 = sub_22F0D051C();
    [v13 setAttribute:v31 forKey:*MEMORY[0x277CC2448]];

    if (v37)
    {
      [v13 setExpirationDate_];
    }

    v32 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v33 = v13;
    v34 = sub_22F0D0C7C();
    v35 = [v32 initWithUniqueIdentifier:v34 domainIdentifier:0 attributeSet:v33];

    [v35 setIsUpdate_];
    (*(v41 + 8))(v29, v42);
  }

  else
  {
LABEL_5:
    if (v17 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v17;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {
        v16 = 0;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        goto LABEL_13;
      }

      v16 = *(a4 + 64 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_22F0231C0(uint64_t a1)
{
  if (qword_27DAA0568 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D0A1C();
  __swift_project_value_buffer(v2, qword_27DAA1A10);
  sub_22F0CFF1C();
  v3 = sub_22F0D09FC();
  v4 = sub_22F0D124C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_22F00A560(0xD00000000000001BLL, 0x800000022F0DD950, &v14);
    *(v5 + 12) = 2080;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1490, &unk_22F0D6820);
    v8 = MEMORY[0x2318FD490](a1, v7);
    v10 = sub_22F00A560(v8, v9, &v14);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_22EFE1000, v3, v4, "%s - writing overrides: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v6, -1, -1);
    MEMORY[0x2318FE8B0](v5, -1, -1);
  }

  if (qword_280CBEF20 != -1)
  {
    swift_once();
  }

  v11 = qword_280CBEF28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1490, &unk_22F0D6820);
  v12 = sub_22F0D0F2C();
  v13 = sub_22F0D0C7C();
  [v11 setObject:v12 forKey:v13];
}

double sub_22F023434@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_22F0D05BC();
  v9 = *(v8 - 8);
  v100 = v8;
  v101 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v98 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v99 = a4;
  v102 = &v97 - v12;
  sub_22F0D05AC();
  if (qword_27DAA0568 != -1)
  {
    swift_once();
  }

  v97 = sub_22F0D0A1C();
  __swift_project_value_buffer(v97, qword_27DAA1A10);
  sub_22F003598(a3, &v105);
  sub_22F0CFF1C();
  v13 = sub_22F0D09FC();
  v14 = sub_22F0D124C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v104 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_22F00A560(a1, a2, &v104);
    *(v15 + 12) = 2080;
    sub_22F003598(&v105, &v103);
    v17 = sub_22F0D0CFC();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1Tm(&v105);
    v20 = sub_22F00A560(v17, v19, &v104);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_22EFE1000, v13, v14, "Parsing %s with %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v16, -1, -1);
    MEMORY[0x2318FE8B0](v15, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v105);
  }

  v21 = v102;
  if (a1 == 0x7453794D646E6946 && a2 == 0xEC00000073757461 || (sub_22F0D188C() & 1) != 0)
  {
    sub_22F003598(a3, &v105);
    if (swift_dynamicCast())
    {
      countAndFlagsBits = v103._countAndFlagsBits;
      object = v103._object;
      v24 = (v103._object >> 56) & 0xF;
      if ((v103._object & 0x2000000000000000) == 0)
      {
        v24 = v103._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      v26 = v100;
      v25 = v101;
      if (v24)
      {
        v27 = type metadata accessor for LocationPersonStatus(0);
        *(&v106 + 1) = v27;
        v107 = sub_22F0267A0(&qword_27DAA0A28, type metadata accessor for LocationPersonStatus, &protocol conformance descriptor for LocationPersonStatus);
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v105);
        v29 = *(v25 + 16);
        v29(boxed_opaque_existential_1Tm + v27[5], v21, v26);
        v29(boxed_opaque_existential_1Tm + v27[6], v21, v26);
        type metadata accessor for PeopleFeatureFlags();
        v30 = swift_allocObject();
        *(v30 + 16) = sub_22F07CF94(MEMORY[0x277D84F90]);
        v31 = qword_280CBEEF0;
        sub_22F0CFFAC();
        if (v31 != -1)
        {
          swift_once();
        }

        v32 = (*(*off_280CBEEF8 + 136))();
        sub_22F0D00CC();
        (*(v25 + 8))(v21, v26);
        v33 = v99;
        sub_22F003A4C(v99, &qword_27DAA14B8, &qword_22F0D6880);
        swift_beginAccess();
        *(v30 + 16) = v32;

        *boxed_opaque_existential_1Tm = countAndFlagsBits;
        boxed_opaque_existential_1Tm[1] = object;
        *(boxed_opaque_existential_1Tm + v27[7]) = v30;
        *(boxed_opaque_existential_1Tm + v27[8]) = 0;
        result = *&v105;
        v35 = v106;
        *v33 = v105;
        *(v33 + 16) = v35;
        *(v33 + 32) = v107;
      }

      else
      {
        (*(v101 + 8))(v21, v100);
      }

      return result;
    }

LABEL_62:
    (*(v101 + 8))(v21, v100);
    return result;
  }

  if (a1 == 0x7975426F546B7341 && a2 == 0xE800000000000000 || (sub_22F0D188C() & 1) != 0)
  {
    sub_22F003598(a3, &v105);
    v36 = swift_dynamicCast();
    v38 = v100;
    v37 = v101;
    if ((v36 & 1) == 0 || (v39 = sub_22F0D0D0C(), v41 = v40, , v42 = sub_22F025060(v39, v41), v42 == 4))
    {
      v43 = sub_22F0D09FC();
      v44 = sub_22F0D124C();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_22EFE1000, v43, v44, "Invalid product type", v45, 2u);
        MEMORY[0x2318FE8B0](v45, -1, -1);
      }

      (*(v37 + 8))(v21, v38);
      return result;
    }

    v53 = v42;
    v54 = type metadata accessor for AskToBuyRequestPersonStatus(0);
    *(&v106 + 1) = v54;
    v107 = sub_22F0267A0(&qword_27DAA09A8, type metadata accessor for AskToBuyRequestPersonStatus, &protocol conformance descriptor for AskToBuyRequestPersonStatus);
    v55 = __swift_allocate_boxed_opaque_existential_1Tm(&v105);
    (*(v37 + 16))(v55 + v54[5], v21, v38);
    type metadata accessor for PeopleFeatureFlags();
    v56 = swift_allocObject();
    *(v56 + 16) = sub_22F07CF94(MEMORY[0x277D84F90]);
    v57 = qword_280CBEEF0;
    sub_22F0CFFAC();
    if (v57 != -1)
    {
      swift_once();
    }

    v58 = (*(*off_280CBEEF8 + 136))();
    sub_22F0D00CC();
    (*(v37 + 8))(v21, v38);
    v59 = v99;
    sub_22F003A4C(v99, &qword_27DAA14B8, &qword_22F0D6880);
    swift_beginAccess();
    *(v56 + 16) = v58;

    *v55 = 0;
    *(v55 + v54[7]) = v53;
    *(v55 + v54[6]) = v56;
LABEL_33:
    result = *&v105;
    v60 = v106;
    *v59 = v105;
    *(v59 + 16) = v60;
    *(v59 + 32) = v107;
    return result;
  }

  if (a1 == 0x6C62616C69617641 && a2 == 0xEF73757461745365 || (sub_22F0D188C() & 1) != 0)
  {
    sub_22F003598(a3, &v105);
    if (swift_dynamicCast())
    {
      v46 = v99;
      sub_22F003A4C(v99, &qword_27DAA14B8, &qword_22F0D6880);
      v47 = v103._countAndFlagsBits;
      v48 = type metadata accessor for AvailabilityPersonStatus(0);
      *(&v106 + 1) = v48;
      v107 = sub_22F0267A0(&qword_27DAA0A08, type metadata accessor for AvailabilityPersonStatus, &protocol conformance descriptor for AvailabilityPersonStatus);
      v49 = __swift_allocate_boxed_opaque_existential_1Tm(&v105);
      v51 = v100;
      v50 = v101;
      (*(v101 + 16))(v49 + *(v48 + 20), v21, v100);
      *v49 = (v47 & 1) == 0;
      (*(v50 + 32))(v49 + *(v48 + 24), v21, v51);
      result = *&v105;
      v52 = v106;
      *v46 = v105;
      *(v46 + 16) = v52;
      *(v46 + 32) = v107;
      return result;
    }

    goto LABEL_62;
  }

  if (a1 == 0x69546E6565726353 && a2 == 0xEA0000000000656DLL || (sub_22F0D188C() & 1) != 0)
  {
    sub_22F003598(a3, &v105);
    if (!swift_dynamicCast())
    {
      goto LABEL_62;
    }

    v62 = v100;
    v61 = v101;
    if (v103._countAndFlagsBits)
    {
      v63 = type metadata accessor for ScreenTimeRequestPersonStatus(0);
      *(&v106 + 1) = v63;
      v64 = &qword_27DAA09C8;
      v65 = type metadata accessor for ScreenTimeRequestPersonStatus;
      v66 = &protocol conformance descriptor for ScreenTimeRequestPersonStatus;
LABEL_40:
      v107 = sub_22F0267A0(v64, v65, v66);
      v67 = __swift_allocate_boxed_opaque_existential_1Tm(&v105);
      (*(v61 + 16))(v67 + *(v63 + 20), v21, v62);
      type metadata accessor for PeopleFeatureFlags();
      v68 = swift_allocObject();
      *(v68 + 16) = sub_22F07CF94(MEMORY[0x277D84F90]);
      v69 = qword_280CBEEF0;
      sub_22F0CFFAC();
      if (v69 != -1)
      {
        swift_once();
      }

      v70 = (*(*off_280CBEEF8 + 136))();
      sub_22F0D00CC();
      (*(v61 + 8))(v21, v62);
      v59 = v99;
      sub_22F003A4C(v99, &qword_27DAA14B8, &qword_22F0D6880);
      swift_beginAccess();
      *(v68 + 16) = v70;

      *v67 = 0;
      *(v67 + *(v63 + 24)) = v68;
      goto LABEL_33;
    }

    goto LABEL_49;
  }

  if (a1 == 0xD000000000000010 && 0x800000022F0DD910 == a2 || (sub_22F0D188C() & 1) != 0)
  {
    sub_22F003598(a3, &v105);
    if (!swift_dynamicCast())
    {
      goto LABEL_62;
    }

    v62 = v100;
    v61 = v101;
    if (v103._countAndFlagsBits)
    {
      v63 = type metadata accessor for ChildStatePersonStatus(0);
      *(&v106 + 1) = v63;
      v64 = &qword_27DAA09E8;
      v65 = type metadata accessor for ChildStatePersonStatus;
      v66 = &protocol conformance descriptor for ChildStatePersonStatus;
      goto LABEL_40;
    }

LABEL_49:
    (*(v61 + 8))(v21, v62);
    return result;
  }

  if (a1 == 0x614364657373694DLL && a2 == 0xEA00000000006C6CLL || (sub_22F0D188C() & 1) != 0)
  {
    sub_22F003598(a3, &v105);
    if (swift_dynamicCast())
    {
      v72 = v100;
      v71 = v101;
      if (v103._countAndFlagsBits)
      {
        v73 = v99;
        sub_22F003A4C(v99, &qword_27DAA14B8, &qword_22F0D6880);
        v74 = type metadata accessor for MissedCallPersonStatus(0);
        *(&v106 + 1) = v74;
        v107 = sub_22F0267A0(&qword_27DAA0A98, type metadata accessor for MissedCallPersonStatus, &protocol conformance descriptor for MissedCallPersonStatus);
        v75 = __swift_allocate_boxed_opaque_existential_1Tm(&v105);
        *v75 = 0x6465726F6E6769;
        v75[1] = 0xE700000000000000;
        *(v75 + 16) = 1;
        (*(v71 + 32))(v75 + *(v74 + 24), v21, v72);
        result = *&v105;
        v76 = v106;
        *v73 = v105;
        *(v73 + 16) = v76;
        *(v73 + 32) = v107;
        return result;
      }
    }

    goto LABEL_62;
  }

  if (a1 == 0x654D646165726E55 && a2 == 0xED00006567617373 || (sub_22F0D188C() & 1) != 0)
  {
    sub_22F003598(a3, &v105);
    if (swift_dynamicCast() && (v103._countAndFlagsBits & 1) != 0)
    {
      v77 = v99;
      sub_22F003A4C(v99, &qword_27DAA14B8, &qword_22F0D6880);
      v78 = type metadata accessor for MessagePersonStatus(0);
      *(&v106 + 1) = v78;
      v107 = sub_22F0267A0(&qword_27DAA0A70, type metadata accessor for MessagePersonStatus, &protocol conformance descriptor for MessagePersonStatus);
      v79 = __swift_allocate_boxed_opaque_existential_1Tm(&v105);
      *v79 = 49;
      v79[1] = 0xE100000000000000;
      v79[2] = 2;
      (*(v101 + 32))(v79 + *(v78 + 24), v21, v100);
      result = *&v105;
      v80 = v106;
      *v77 = v105;
      *(v77 + 16) = v80;
      *(v77 + 32) = v107;
      return result;
    }

    goto LABEL_62;
  }

  if ((a1 != 0x6E6F69746F4DLL || a2 != 0xE600000000000000) && (sub_22F0D188C() & 1) == 0)
  {
LABEL_87:
    (*(v101 + 8))(v102, v100);
    return result;
  }

  sub_22F003598(a3, &v105);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_82:
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v97, qword_280CBEC40);
    v85 = sub_22F0D09FC();
    v86 = sub_22F0D124C();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_22EFE1000, v85, v86, "Unable to determin motion state", v87, 2u);
      MEMORY[0x2318FE8B0](v87, -1, -1);
    }

    goto LABEL_87;
  }

  ActivityState.init(rawValue:)(v103);
  if (v105 <= 2u)
  {
    if (v105)
    {
      if (v105 == 1)
      {
        v81 = 3;
      }

      else
      {
        v81 = 4;
      }
    }

    else
    {
      v81 = 2;
    }

    goto LABEL_90;
  }

  if (v105 > 4u)
  {
    if (v105 == 5)
    {
      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v97, qword_280CBEC40);
      v82 = sub_22F0D09FC();
      v83 = sub_22F0D124C();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_22EFE1000, v82, v83, "Unable to determin motion state, default stationary", v84, 2u);
        MEMORY[0x2318FE8B0](v84, -1, -1);
      }

      goto LABEL_81;
    }

    goto LABEL_82;
  }

  if (v105 != 3)
  {
LABEL_81:
    v81 = 0;
    goto LABEL_90;
  }

  v81 = 1;
LABEL_90:
  (*(v101 + 16))(v98, v102, v100);
  type metadata accessor for PeopleFeatureFlags();
  v88 = swift_allocObject();
  *(v88 + 16) = sub_22F07CF94(MEMORY[0x277D84F90]);
  v89 = qword_280CBEEF0;
  sub_22F0CFFAC();
  if (v89 != -1)
  {
    swift_once();
  }

  v90 = (*(*off_280CBEEF8 + 136))();
  sub_22F0D00CC();
  v91 = v101;
  v92 = v100;
  (*(v101 + 8))(v102, v100);
  v93 = v99;
  sub_22F003A4C(v99, &qword_27DAA14B8, &qword_22F0D6880);
  swift_beginAccess();
  *(v88 + 16) = v90;

  v94 = type metadata accessor for MotionPersonStatus(0);
  *(&v106 + 1) = v94;
  v107 = sub_22F0267A0(&qword_27DAA0A50, type metadata accessor for MotionPersonStatus, &protocol conformance descriptor for MotionPersonStatus);
  v95 = __swift_allocate_boxed_opaque_existential_1Tm(&v105);
  (*(v91 + 32))(v95, v98, v92);
  *(v95 + *(v94 + 20)) = 0x201000304uLL >> (8 * v81);
  *(v95 + *(v94 + 24)) = v88;
  result = *&v105;
  v96 = v106;
  *v93 = v105;
  *(v93 + 16) = v96;
  *(v93 + 32) = v107;
  return result;
}

uint64_t sub_22F0246E8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22F0BFC10(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_22F0D182C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DF0, &unk_22F0D4FC0);
      v7 = sub_22F0D0FCC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_22F02483C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_22F02483C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_22F0BE90C(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_22F024DC4((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
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
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
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
      result = sub_22F03C658(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_22F03C658((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
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

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_22F024DC4((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
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

uint64_t sub_22F024DC4(char *__dst, char *__src, char *a3, char *a4)
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

      if (*v6 < *v4)
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
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_22F024FC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_22EFE6B9C(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_22F025060(uint64_t a1, uint64_t a2)
{
  v2 = sub_22F0D174C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

void *sub_22F0250AC(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_22F0CFF1C();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  for (i = result; v5; v1 = i)
  {
LABEL_10:
    while (1)
    {
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v12 = v11 | (v8 << 6);
      v13 = (*(v1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      sub_22F003598(*(v1 + 56) + 32 * v12, v31);
      v30[0] = v14;
      v30[1] = v15;
      sub_22F0CFF1C();
      sub_22F023434(v14, v15, v31, &v26);
      sub_22F003A4C(v30, &qword_27DAA14B0, &qword_22F0D6878);
      if (v27)
      {
        break;
      }

      result = sub_22F003A4C(&v26, &qword_27DAA14B8, &qword_22F0D6880);
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    sub_22EFE6B9C(&v26, v29);
    sub_22EFE6B9C(v29, &v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_22F03CB00(0, v9[2] + 1, 1, v9);
      v32 = v9;
    }

    v18 = v9[2];
    v17 = v9[3];
    if (v18 >= v17 >> 1)
    {
      v9 = sub_22F03CB00((v17 > 1), v18 + 1, 1, v9);
      v32 = v9;
    }

    v19 = v27;
    v20 = v28;
    v21 = __swift_mutable_project_boxed_opaque_existential_1(&v26, v27);
    MEMORY[0x28223BE20](v21);
    v23 = &i - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v23);
    sub_22F024FC8(v18, v23, &v32, v19, v20);
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v26);
  }

LABEL_6:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      sub_22F0D00CC();
      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void *sub_22F025344(unint64_t a1, unint64_t a2)
{
  if (!os_variant_has_internal_ui())
  {
    v11 = MEMORY[0x277D84F90];

    return sub_22F07D698(v11);
  }

  if (qword_27DAA0568 != -1)
  {
LABEL_56:
    swift_once();
  }

  v3 = sub_22F0D0A1C();
  __swift_project_value_buffer(v3, qword_27DAA1A10);
  sub_22F0CFF1C();
  v4 = sub_22F0D09FC();
  v5 = sub_22F0D124C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v51[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_22F00A560(0xD000000000000017, 0x800000022F0DD9B0, v51);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_22F00A560(a1, a2, v51);
    _os_log_impl(&dword_22EFE1000, v4, v5, "%s - internal device for contactID: -%s-", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v7, -1, -1);
    MEMORY[0x2318FE8B0](v6, -1, -1);
  }

  if (qword_280CBEF20 != -1)
  {
    swift_once();
  }

  v8 = qword_280CBEF28;
  v9 = sub_22F0D0C7C();
  v10 = [v8 objectForKey_];

  if (v10)
  {
    sub_22F0D13CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  v51[0] = v49;
  v51[1] = v50;
  if (!*(&v50 + 1))
  {
    sub_22F003A4C(v51, &qword_27DAA1270, &qword_22F0D7240);
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14A8, &qword_22F0D6870);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v13 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v13 = v48;
LABEL_18:
  v46 = sub_22F07D698(MEMORY[0x277D84F90]);
  v47 = *(v13 + 16);
  if (v47)
  {
    v42 = v8;
    v14 = 0;
    v15 = a2;
    a2 = 0;
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v43 = v15;
    v44 = v16;
    while (1)
    {
      if (a2 >= *(v13 + 16))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v17 = *(v13 + 8 * a2 + 32);
      if (!*(v17 + 16))
      {
        goto LABEL_35;
      }

      sub_22F0CFF1C();
      v18 = sub_22EFFDA80(0xD000000000000011, 0x800000022F0DD8F0);
      if ((v19 & 1) == 0 || (sub_22F003598(*(v17 + 56) + 32 * v18, v51), (swift_dynamicCast() & 1) == 0))
      {

LABEL_35:
        v36 = sub_22F0D09FC();
        v37 = sub_22F0D124C();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *&v51[0] = v39;
          *v38 = 136315138;
          *(v38 + 4) = sub_22F00A560(0xD000000000000017, 0x800000022F0DD9B0, v51);
          _os_log_impl(&dword_22EFE1000, v36, v37, "%s - contactIdentifer is nil or contact is nil", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v39);
          MEMORY[0x2318FE8B0](v39, -1, -1);
          MEMORY[0x2318FE8B0](v38, -1, -1);
        }

        goto LABEL_23;
      }

      sub_22F0CFF1C();
      v20 = sub_22F0D09FC();
      v21 = sub_22F0D124C();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *&v51[0] = v23;
        *v22 = 136315394;
        *(v22 + 4) = sub_22F00A560(0xD000000000000017, 0x800000022F0DD9B0, v51);
        *(v22 + 12) = 2080;
        *(v22 + 14) = sub_22F00A560(v49, *(&v49 + 1), v51);
        _os_log_impl(&dword_22EFE1000, v20, v21, "%s - contactsID to override: %s", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318FE8B0](v23, -1, -1);
        MEMORY[0x2318FE8B0](v22, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1498, &qword_22F0D6860);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22F0D2BF0;
      *(inited + 32) = v49;
      sub_22F0CFF1C();
      v25 = sub_22F0250AC(v17);

      *(inited + 48) = v25;
      v26 = sub_22F07D7A0(inited);
      swift_setDeallocating();
      sub_22F003A4C(inited + 32, &qword_27DAA14A0, &qword_22F0D6868);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v51[0] = v46;
      v29 = sub_22EFFDADC(v14);
      v30 = v46[2];
      v31 = (v28 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        goto LABEL_54;
      }

      v33 = v28;
      if (v46[3] >= v32)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F05FE28();
        }
      }

      else
      {
        sub_22F07A034(v32, isUniquelyReferenced_nonNull_native);
        v34 = sub_22EFFDADC(v14);
        if ((v33 & 1) != (v35 & 1))
        {
          result = sub_22F0D191C();
          __break(1u);
          return result;
        }

        v29 = v34;
      }

      v46 = *&v51[0];
      if (v33)
      {
        *(*(*&v51[0] + 56) + 8 * v29) = v26;

        if (!v44)
        {
          goto LABEL_48;
        }
      }

      else
      {
        sub_22F018620(v29, v14, v26, *&v51[0]);
        if (!v44)
        {
LABEL_48:

          v41 = __OFADD__(v14++, 1);
          if (v41)
          {
            goto LABEL_55;
          }

          goto LABEL_23;
        }
      }

      if (v49 == __PAIR128__(v43, a1))
      {

        goto LABEL_52;
      }

      v40 = sub_22F0D188C();

      if (v40)
      {
LABEL_50:

        goto LABEL_52;
      }

      v41 = __OFADD__(v14++, 1);
      if (v41)
      {
        goto LABEL_55;
      }

LABEL_23:
      if (v47 == ++a2)
      {
        goto LABEL_50;
      }
    }
  }

LABEL_52:

  return v46;
}

unint64_t sub_22F025B10(unint64_t a1)
{
  if (os_variant_has_internal_ui())
  {
    v2 = sub_22F025344(0, 0xE000000000000000);
    v3 = v2;
    v4 = v2 + 8;
    v5 = 1 << *(v2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & v2[8];
    v8 = (v5 + 63) >> 6;
    sub_22F0CFF1C();
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    if (v7)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_74;
      }

      if (v11 >= v8)
      {
        break;
      }

      v7 = v4[v11];
      ++v9;
      if (v7)
      {
        v9 = v11;
        do
        {
LABEL_9:
          v12 = *(v3[7] + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
          sub_22F0CFF1C();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_22F03CC6C(0, v10[2] + 1, 1, v10);
          }

          v14 = v10[2];
          v13 = v10[3];
          if (v14 >= v13 >> 1)
          {
            v10 = sub_22F03CC6C((v13 > 1), v14 + 1, 1, v10);
          }

          v7 &= v7 - 1;
          v10[2] = v14 + 1;
          v10[v14 + 4] = v12;
        }

        while (v7);
      }
    }

    sub_22F0D00CC();

    v80 = v10[2];
    if (!v80)
    {

      v1 = MEMORY[0x277D84F98];
      goto LABEL_45;
    }

    v17 = 0;
    v78 = v10 + 4;
    v1 = MEMORY[0x277D84F98];
    v76 = v10;
LABEL_21:
    if (v17 >= v10[2])
    {
      goto LABEL_77;
    }

    v18 = v78[v17];
    v83 = v17 + 1;
    v85 = v18;
    v19 = v18 + 64;
    v20 = 1 << *(v18 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v18 + 64);
    v23 = (v20 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v24 = 0;
LABEL_28:
    if (v22)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {
        sub_22F0D00CC();

        v17 = v83;
        v10 = v76;
        if (v83 != v80)
        {
          goto LABEL_21;
        }

LABEL_45:
        v85 = sub_22F07D7A0(MEMORY[0x277D84F90]);
        v44 = a1;
        if (a1 >> 62)
        {
          goto LABEL_81;
        }

        v45 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v45)
        {
LABEL_82:

          return v1;
        }

LABEL_47:
        v46 = 0;
        v47 = v44 & 0xC000000000000001;
        v84 = v44 & 0xFFFFFFFFFFFFFF8;
        v48 = &off_278879000;
        v79 = v44 & 0xC000000000000001;
        v81 = v45;
        v77 = v1;
        while (2)
        {
          if (v47)
          {
            v49 = MEMORY[0x2318FDAB0](v46);
          }

          else
          {
            if (v46 >= *(v84 + 16))
            {
              goto LABEL_78;
            }

            v49 = *(v44 + 8 * v46 + 32);
          }

          v50 = v49;
          v51 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_76;
          }

          v52 = [v49 v48[410]];
          v53 = sub_22F0D0CAC();
          v55 = v54;

          if (*(v1 + 16))
          {
            v56 = sub_22EFFDA80(v53, v55);
            v58 = v57;

            if (v58)
            {
              v59 = *(*(v1 + 56) + 8 * v56);
              sub_22F0CFF1C();
              v60 = [v50 v48[410]];
              v61 = sub_22F0D0CAC();
              v1 = v62;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v65 = sub_22EFFDA80(v61, v1);
              v66 = v85[2];
              v67 = (v64 & 1) == 0;
              v68 = v66 + v67;
              if (__OFADD__(v66, v67))
              {
                goto LABEL_79;
              }

              v69 = v64;
              if (v85[3] >= v68)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  if ((v64 & 1) == 0)
                  {
                    goto LABEL_62;
                  }
                }

                else
                {
                  sub_22F05FF84();
                  if ((v69 & 1) == 0)
                  {
                    goto LABEL_62;
                  }
                }
              }

              else
              {
                sub_22F07A2A4(v68, isUniquelyReferenced_nonNull_native);
                v70 = sub_22EFFDA80(v61, v1);
                if ((v69 & 1) != (v71 & 1))
                {
                  goto LABEL_83;
                }

                v65 = v70;
                if ((v69 & 1) == 0)
                {
LABEL_62:
                  v85[(v65 >> 6) + 8] |= 1 << v65;
                  v72 = (v85[6] + 16 * v65);
                  *v72 = v61;
                  v72[1] = v1;
                  *(v85[7] + 8 * v65) = v59;

                  v73 = v85[2];
                  v36 = __OFADD__(v73, 1);
                  v74 = v73 + 1;
                  if (v36)
                  {
                    goto LABEL_80;
                  }

                  v85[2] = v74;
LABEL_68:
                  v45 = v81;
                  v44 = a1;
                  v1 = v77;
                  v47 = v79;
                  v48 = &off_278879000;
LABEL_50:
                  ++v46;
                  if (v51 == v45)
                  {

                    return v85;
                  }

                  continue;
                }
              }

              *(v85[7] + 8 * v65) = v59;

              goto LABEL_68;
            }
          }

          else
          {
          }

          break;
        }

        v44 = a1;
        goto LABEL_50;
      }

      v22 = *(v19 + 8 * v25);
      ++v24;
      if (v22)
      {
        v24 = v25;
LABEL_33:
        v26 = __clz(__rbit64(v22)) | (v24 << 6);
        v27 = (v85[6] + 16 * v26);
        v29 = *v27;
        v28 = v27[1];
        v30 = *(v85[7] + 8 * v26);
        swift_bridgeObjectRetain_n();
        sub_22F0CFF1C();
        v31 = v1;
        v1 = swift_isUniquelyReferenced_nonNull_native();
        v32 = sub_22EFFDA80(v29, v28);
        v34 = *(v31 + 16);
        v35 = (v33 & 1) == 0;
        v36 = __OFADD__(v34, v35);
        v37 = v34 + v35;
        if (v36)
        {
          goto LABEL_73;
        }

        v38 = v33;
        if (*(v31 + 24) < v37)
        {
          sub_22F07A2A4(v37, v1);
          v32 = sub_22EFFDA80(v29, v28);
          if ((v38 & 1) != (v39 & 1))
          {
LABEL_83:
            result = sub_22F0D191C();
            __break(1u);
            return result;
          }

LABEL_38:
          v1 = v31;
          if ((v38 & 1) == 0)
          {
            goto LABEL_39;
          }

LABEL_26:
          *(*(v1 + 56) + 8 * v32) = v30;

LABEL_27:
          v22 &= v22 - 1;

          goto LABEL_28;
        }

        if (v1)
        {
          goto LABEL_38;
        }

        v43 = v32;
        sub_22F05FF84();
        v32 = v43;
        v1 = v31;
        if (v38)
        {
          goto LABEL_26;
        }

LABEL_39:
        *(v1 + 8 * (v32 >> 6) + 64) |= 1 << v32;
        v40 = (*(v1 + 48) + 16 * v32);
        *v40 = v29;
        v40[1] = v28;
        *(*(v1 + 56) + 8 * v32) = v30;
        v41 = *(v1 + 16);
        v36 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (!v36)
        {
          *(v1 + 16) = v42;
          goto LABEL_27;
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
        v75 = sub_22F0D143C();
        v44 = a1;
        v45 = v75;
        if (!v75)
        {
          goto LABEL_82;
        }

        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v15 = MEMORY[0x277D84F90];

  return sub_22F07D7A0(v15);
}

BOOL _s6People0A12DemoOverrideC010isContactsC7EnabledSbyFZ_0()
{
  if (qword_280CBEF20 != -1)
  {
    swift_once();
  }

  v0 = qword_280CBEF28;
  v1 = sub_22F0D0C7C();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_22F0D13CC();
    swift_unknownObjectRelease();
    sub_22F003A4C(v8, &qword_27DAA1270, &qword_22F0D7240);
    if ((byte_27DAA1488 & 1) == 0)
    {
      if (qword_27DAA0568 != -1)
      {
        swift_once();
      }

      v3 = sub_22F0D0A1C();
      __swift_project_value_buffer(v3, qword_27DAA1A10);
      v4 = sub_22F0D09FC();
      v5 = sub_22F0D124C();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_22EFE1000, v4, v5, "override defaults are available ", v6, 2u);
        MEMORY[0x2318FE8B0](v6, -1, -1);
      }

      byte_27DAA1488 = 1;
    }
  }

  else
  {

    memset(v8, 0, sizeof(v8));
    sub_22F003A4C(v8, &qword_27DAA1270, &qword_22F0D7240);
  }

  return v2 != 0;
}

uint64_t sub_22F02638C()
{
  if (!os_variant_has_internal_ui())
  {
    return MEMORY[0x277D84F90];
  }

  v0 = sub_22F025344(0, 0xE000000000000000);
  v1 = v0;
  v2 = v0[2];
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = sub_22F0BBB78(v0[2], 0);
    v5 = sub_22F0BFFE4(v22, v4 + 4, v2, v1);
    v6 = v22[0];
    sub_22F0CFF1C();
    sub_22F003524(v6);
    if (v5 != v2)
    {
      __break(1u);
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v22[0] = v4;
  sub_22F0246E8(v22);

  v7 = v22[0];
  swift_getKeyPath();
  v21 = v3;
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (v7 + 40);
    while (v9 < *(v7 + 16))
    {
      ++v9;
      v3 = *v10;
      v22[0] = *(v10 - 1);
      v22[1] = v3;
      sub_22F0CFF1C();
      swift_getAtKeyPath();

      sub_22F007444(v20);
      v10 += 2;
      if (v8 == v9)
      {
        v3 = v21;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  sub_22F0D00CC();
  sub_22F0D00CC();
  if (qword_27DAA0568 != -1)
  {
LABEL_18:
    swift_once();
  }

  v11 = sub_22F0D0A1C();
  __swift_project_value_buffer(v11, qword_27DAA1A10);
  sub_22F0CFF1C();
  v12 = sub_22F0D09FC();
  v13 = sub_22F0D124C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_22F00A560(0xD00000000000001CLL, 0x800000022F0DD9D0, v22);
    *(v14 + 12) = 2080;
    v16 = MEMORY[0x2318FD490](v3, MEMORY[0x277D837D0]);
    v18 = sub_22F00A560(v16, v17, v22);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_22EFE1000, v12, v13, "%s - contactOverride values: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v15, -1, -1);
    MEMORY[0x2318FE8B0](v14, -1, -1);
  }

  return v3;
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

uint64_t sub_22F0267A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double Measurement<>.timeInterval.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - v2;
  v4 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t Measurement<>.dispatchTimeInterval.getter@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  v6 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  v8 = v7;
  v9 = v7;
  result = (*(v3 + 8))(v5, v2);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 < 9.22337204e18)
  {
    *a1 = v8;
    v11 = *MEMORY[0x277D85188];
    v12 = sub_22F0D0A2C();
    return (*(*(v12 - 8) + 104))(a1, v11, v12);
  }

LABEL_7:
  __break(1u);
  return result;
}

double Measurement<>.factor(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  v6 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  return v8 * a1;
}

uint64_t sub_22F026C20(SEL *a1, double a2)
{
  v2 = [objc_opt_self() *a1];
  sub_22F014850();

  return sub_22F0D017C();
}

void sub_22F026CC8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22F0D0C7C();
    [v5 *a3];
  }

  else
  {
    __break(1u);
  }
}

id sub_22F026D68(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = sub_22F0D0C7C();
    v5 = [v3 availabilityForListenerID:v4 forService:1];

    return (v5 == 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22F026E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = v6;
    v8 = sub_22F0D0C7C();
    [v7 *a5];
  }

  else
  {
    __break(1u);
  }
}

void *MessageSendRules.deinit()
{
  sub_22EFFFB40((v0 + 2), v7);
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v3 = v0[14];
  v4 = v0[15];
  v5 = *(v2 + 8);
  sub_22F0CFF1C();
  v5(v3, v4, v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  sub_22F0D00CC();
  sub_22F0D00CC();

  return v0;
}

uint64_t MessageSendRules.__deallocating_deinit()
{
  MessageSendRules.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22F026FCC()
{
  if (qword_27DAA0590 != -1)
  {
    swift_once();
  }

  v0 = off_27DAA1DA0;
  type metadata accessor for PeopleFeatureFlags();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_22F07CF94(MEMORY[0x277D84F90]);
  v2 = qword_280CBEEF0;
  sub_22F0CFFAC();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = (*(*off_280CBEEF8 + 136))();
  swift_beginAccess();
  *(v1 + 16) = v3;

  v4 = type metadata accessor for iMessageServiceAvailabilty();
  v5 = swift_allocObject();
  if (qword_27DAA04D8 != -1)
  {
    swift_once();
  }

  v6 = off_27DAA1450;
  type metadata accessor for MessageSendRules();
  v7 = swift_allocObject();
  v13[3] = type metadata accessor for MessageDeviceCapabilityLookup();
  v13[4] = &protocol witness table for MessageDeviceCapabilityLookup;
  v12[4] = &protocol witness table for iMessageServiceAvailabilty;
  v13[0] = v0;
  v12[3] = v4;
  v12[0] = v5;
  sub_22EFFFB40(v13, (v7 + 7));
  v7[12] = v1;
  v7[14] = 0xD000000000000016;
  v7[15] = 0x800000022F0DDBF0;
  sub_22EFFFB40(v12, (v7 + 2));
  v7[13] = v6;
  v8 = v7[5];
  v9 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v8);
  v10 = *(v9 + 16);
  swift_retain_n();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  v10(0xD000000000000016, 0x800000022F0DDBF0, v8, v9);
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v13);
  qword_27DAA14C0 = v7;
  return result;
}

void *MessageSendRules.__allocating_init(lookupProvider:featureFlags:serviceAvailabiltyProvider:serverFeatureFlag:listenerId:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25 = swift_allocObject();
  v11 = a1[3];
  v10 = a1[4];
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v17 = a3[3];
  v16 = a3[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a3, v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = sub_22F02BBAC(v14, a2, v20, a4, v26, v27, v25, v11, v17, v10, v16);
  sub_22F0D00CC();
  sub_22F0D00CC();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v22;
}

uint64_t static MessageSendRules.sharedInstance.getter()
{
  if (qword_27DAA04E0 != -1)
  {
    swift_once();
  }

  return sub_22F0CFFAC();
}

void *MessageSendRules.init(lookupProvider:featureFlags:serviceAvailabiltyProvider:serverFeatureFlag:listenerId:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a6;
  v25 = a5;
  v11 = a1[3];
  v10 = a1[4];
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v17 = a3[3];
  v16 = a3[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a3, v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = sub_22F02BBAC(v14, a2, v20, a4, v25, v26, v27, v11, v17, v10, v16);
  sub_22F0D00CC();
  sub_22F0D00CC();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v22;
}

uint64_t sub_22F027684(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, void *a6)
{
  *(v7 + 880) = v6;
  *(v7 + 969) = a4;
  *(v7 + 968) = a3;
  *(v7 + 872) = a2;
  *(v7 + 864) = a1;
  *(v7 + 888) = *a5;
  *(v7 + 970) = *(a5 + 8);
  *(v7 + 896) = *a6;
  return MEMORY[0x2822009F8](sub_22F0276CC, 0, 0);
}

uint64_t sub_22F0276CC()
{
  v75 = v0;
  v1 = *(v0 + 968);
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 970);
    v73 = *(v0 + 888);
    LOBYTE(v74) = v2;
    HIBYTE(v74) = 5;
    AskToMetrics.logScreenTimeMoreTimeRequestCheckpoint(_:)((&v74 + 7));
  }

  v3 = *(v0 + 880);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  if (((*(v5 + 24))(v3[14], v3[15], v4, v5) & 1) == 0)
  {
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v21 = sub_22F0D0A1C();
    __swift_project_value_buffer(v21, qword_280CBEC40);
    v22 = sub_22F0D09FC();
    v23 = sub_22F0D124C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22EFE1000, v22, v23, "MessageSendRule: iMessage not enabled for sender, will not send", v24, 2u);
      MEMORY[0x2318FE8B0](v24, -1, -1);
    }

    if ((v1 & 1) == 0)
    {
      if (qword_280CBE8A8 != -1)
      {
        swift_once();
      }

      v25 = *(v0 + 969);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22F0D6710;
      *(inited + 32) = 0x746E65696C63;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 80) = &protocol witness table for Bool;
      *(inited + 48) = v25;
      *(inited + 88) = 0x746E657665;
      *(inited + 96) = 0xE500000000000000;
      v27 = 0x800000022F0DC9E0;
      *(inited + 128) = MEMORY[0x277D837D0];
      *(inited + 136) = &protocol witness table for String;
      *(inited + 104) = 0xD000000000000017;
      goto LABEL_39;
    }

    if (qword_280CBE8A8 != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 969);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_22F0D6710;
    *(v34 + 32) = 0x746E65696C63;
    *(v34 + 40) = 0xE600000000000000;
    *(v34 + 72) = MEMORY[0x277D839B0];
    *(v34 + 80) = &protocol witness table for Bool;
    *(v34 + 48) = v33;
    *(v34 + 88) = 0x746E657665;
    *(v34 + 96) = 0xE500000000000000;
    v35 = 0x800000022F0DC9E0;
    *(v34 + 128) = MEMORY[0x277D837D0];
    *(v34 + 136) = &protocol witness table for String;
    *(v34 + 104) = 0xD000000000000017;
LABEL_43:
    *(v34 + 112) = v35;
LABEL_44:
    v46 = sub_22F07D320(v34);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
    swift_arrayDestroy();
    v47 = 15;
    goto LABEL_45;
  }

  if ((v1 & 1) == 0)
  {
    v6 = *(v0 + 970);
    v73 = *(v0 + 888);
    LOBYTE(v74) = v6;
    HIBYTE(v74) = 6;
    AskToMetrics.logScreenTimeMoreTimeRequestCheckpoint(_:)((&v74 + 7));
  }

  v7 = [*(v0 + 864) appleID];
  if (!v7 || (v8 = v7, sub_22F0D0CAC(), v8, object = String.trimToNil()().value._object, , !object) || (v10 = objc_opt_self(), v11 = sub_22F0D0C7C(), , v12 = [v10 canSendIMessage_], v11, !v12))
  {
    v28 = [*(v0 + 864) appleID];
    if (v28)
    {
      v29 = v28;
      v30 = sub_22F0D0CAC();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    *(v0 + 816) = v30;
    *(v0 + 824) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D8, &unk_22F0D6A00);
    v36 = sub_22F0D0CFC();
    v38 = v37;
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v39 = sub_22F0D0A1C();
    __swift_project_value_buffer(v39, qword_280CBEC40);
    sub_22F0CFF1C();
    v40 = sub_22F0D09FC();
    v41 = sub_22F0D124C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v73 = v43;
      *v42 = 136315138;
      v44 = sub_22F00A560(v36, v38, &v73);

      *(v42 + 4) = v44;
      _os_log_impl(&dword_22EFE1000, v40, v41, "MessageSendRule: '%s' not enabled for sender, will not send", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x2318FE8B0](v43, -1, -1);
      MEMORY[0x2318FE8B0](v42, -1, -1);
    }

    else
    {
    }

    if ((v1 & 1) == 0)
    {
      if (qword_280CBE8A8 != -1)
      {
        swift_once();
      }

      v45 = *(v0 + 969);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22F0D6710;
      *(inited + 32) = 0x746E65696C63;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 80) = &protocol witness table for Bool;
      *(inited + 48) = v45;
      *(inited + 88) = 0x746E657665;
      *(inited + 96) = 0xE500000000000000;
      v27 = 0x800000022F0DCA00;
      *(inited + 128) = MEMORY[0x277D837D0];
      *(inited + 136) = &protocol witness table for String;
      *(inited + 104) = 0xD00000000000001CLL;
LABEL_39:
      *(inited + 112) = v27;
      v46 = sub_22F07D320(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
      swift_arrayDestroy();
      v47 = 14;
LABEL_45:
      LOBYTE(v73) = v47;
      sub_22F08FCF8(&v73, v46);

      v49 = 0;
LABEL_46:
      v50 = *(v0 + 8);

      return v50(v49);
    }

    if (qword_280CBE8A8 != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 969);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_22F0D6710;
    *(v34 + 32) = 0x746E65696C63;
    *(v34 + 40) = 0xE600000000000000;
    *(v34 + 72) = MEMORY[0x277D839B0];
    *(v34 + 80) = &protocol witness table for Bool;
    *(v34 + 48) = v48;
    *(v34 + 88) = 0x746E657665;
    *(v34 + 96) = 0xE500000000000000;
    v35 = 0x800000022F0DCA00;
    *(v34 + 128) = MEMORY[0x277D837D0];
    *(v34 + 136) = &protocol witness table for String;
    *(v34 + 104) = 0xD00000000000001CLL;
    goto LABEL_43;
  }

  if ((v1 & 1) == 0)
  {
    v13 = *(v0 + 970);
    v73 = *(v0 + 888);
    LOBYTE(v74) = v13;
    HIBYTE(v74) = 7;
    AskToMetrics.logScreenTimeMoreTimeRequestCheckpoint(_:)((&v74 + 7));
    if (qword_27DAA04D8 == -1)
    {
      v14 = *(v0 + 896);
      if (!v14)
      {
LABEL_12:
        if (*(off_27DAA1450 + 25))
        {
          if (qword_27DAA0590 != -1)
          {
            swift_once();
          }

          v15 = off_27DAA1DA0;
          *(v0 + 912) = off_27DAA1DA0;
          v16 = v15[2];
          v17 = v15[3];
          sub_22F0CFFAC();
          v18 = swift_task_alloc();
          *(v0 + 920) = v18;
          *v18 = v0;
          v18[1] = sub_22F028BA0;
          v19 = *(v0 + 872);
          v20 = v0 + 848;
LABEL_83:

          return sub_22F0834D8(v20, v19, v16, v17);
        }

        if (qword_27DAA0590 != -1)
        {
          swift_once();
        }

        v65 = off_27DAA1DA0;
        *(v0 + 800) = type metadata accessor for MessageDeviceCapabilityLookup();
        *(v0 + 808) = &protocol witness table for MessageDeviceCapabilityLookup;
        *(v0 + 776) = v65;
        sub_22F0CFFAC();
        v66 = swift_task_alloc();
        *(v0 + 904) = v66;
        *v66 = v0;
        v66[1] = sub_22F028630;
        v67 = *(v0 + 872);

        return sub_22F02AFB4(v0 + 856, v67, v0 + 776);
      }
    }

    else
    {
      swift_once();
      v14 = *(v0 + 896);
      if (!v14)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_51;
  }

  if (qword_27DAA04D8 == -1)
  {
    v14 = *(v0 + 896);
    if (v14)
    {
LABEL_51:
      v73 = v14;
      sub_22F0CFF1C();
      v52 = DiscoveredHandles.allMembersMeetRequirements.getter();

      if (v52)
      {
        if ((*(v0 + 968) & 1) == 0)
        {
          v53 = *(v0 + 970);
          v73 = *(v0 + 888);
          LOBYTE(v74) = v53;
          HIBYTE(v74) = 8;
          AskToMetrics.logScreenTimeMoreTimeRequestCheckpoint(_:)((&v74 + 7));
        }

        v49 = 1;
        goto LABEL_46;
      }

      if ((*(v0 + 968) & 1) == 0)
      {
        if (qword_280CBEC38 != -1)
        {
          swift_once();
        }

        v54 = sub_22F0D0A1C();
        __swift_project_value_buffer(v54, qword_280CBEC40);
        v55 = sub_22F0D09FC();
        v56 = sub_22F0D124C();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_22EFE1000, v55, v56, "Screen Time iMessage not supported across all approver devices, will not send", v57, 2u);
          MEMORY[0x2318FE8B0](v57, -1, -1);
        }

        if (qword_280CBE8A8 != -1)
        {
          swift_once();
        }

        v58 = *(v0 + 969);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_22F0D6710;
        *(v59 + 32) = 0x746E65696C63;
        *(v59 + 40) = 0xE600000000000000;
        *(v59 + 72) = MEMORY[0x277D839B0];
        *(v59 + 80) = &protocol witness table for Bool;
        *(v59 + 48) = v58;
        *(v59 + 88) = 0x746E657665;
        *(v59 + 96) = 0xE500000000000000;
        *(v59 + 128) = MEMORY[0x277D837D0];
        *(v59 + 136) = &protocol witness table for String;
        *(v59 + 104) = 0x7041646E65536F6ELL;
        *(v59 + 112) = 0xEF737265766F7270;
        v46 = sub_22F07D320(v59);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v47 = 14;
        goto LABEL_45;
      }

      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v60 = sub_22F0D0A1C();
      __swift_project_value_buffer(v60, qword_280CBEC40);
      v61 = sub_22F0D09FC();
      v62 = sub_22F0D124C();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_22EFE1000, v61, v62, "Ask To Buy iMessage not supported across all approver devices, will not send", v63, 2u);
        MEMORY[0x2318FE8B0](v63, -1, -1);
      }

      if (qword_280CBE8A8 != -1)
      {
        swift_once();
      }

      v64 = *(v0 + 969);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
      v34 = swift_initStackObject();
      *(v34 + 16) = xmmword_22F0D6710;
      *(v34 + 32) = 0x746E65696C63;
      *(v34 + 40) = 0xE600000000000000;
      *(v34 + 72) = MEMORY[0x277D839B0];
      *(v34 + 80) = &protocol witness table for Bool;
      *(v34 + 48) = v64;
      *(v34 + 88) = 0x746E657665;
      *(v34 + 96) = 0xE500000000000000;
      *(v34 + 128) = MEMORY[0x277D837D0];
      *(v34 + 136) = &protocol witness table for String;
      *(v34 + 104) = 0x7041646E65536F6ELL;
      *(v34 + 112) = 0xEF737265766F7270;
      goto LABEL_44;
    }
  }

  else
  {
    swift_once();
    v14 = *(v0 + 896);
    if (v14)
    {
      goto LABEL_51;
    }
  }

  if (*(off_27DAA1450 + 26))
  {
    if (qword_27DAA0590 != -1)
    {
      swift_once();
    }

    v68 = off_27DAA1DA0;
    *(v0 + 944) = off_27DAA1DA0;
    v16 = v68[2];
    v17 = v68[3];
    sub_22F0CFFAC();
    v69 = swift_task_alloc();
    *(v0 + 952) = v69;
    *v69 = v0;
    v69[1] = sub_22F0297A4;
    v19 = *(v0 + 872);
    v20 = v0 + 832;
    goto LABEL_83;
  }

  if (qword_27DAA0590 != -1)
  {
    swift_once();
  }

  v70 = off_27DAA1DA0;
  *(v0 + 760) = type metadata accessor for MessageDeviceCapabilityLookup();
  *(v0 + 768) = &protocol witness table for MessageDeviceCapabilityLookup;
  *(v0 + 736) = v70;
  sub_22F0CFFAC();
  v71 = swift_task_alloc();
  *(v0 + 936) = v71;
  *v71 = v0;
  v71[1] = sub_22F029234;
  v72 = *(v0 + 872);

  return sub_22F02B3F0(v0 + 840, v72, v0 + 736);
}

uint64_t sub_22F028630()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 776));

  return MEMORY[0x2822009F8](sub_22F028734, 0, 0);
}

uint64_t sub_22F028734()
{
  v22 = v0;
  v19 = *(v0 + 856);
  sub_22F0CFF1C();
  v1 = DiscoveredHandles.allMembersMeetRequirements.getter();

  if (v1)
  {
    if ((*(v0 + 968) & 1) == 0)
    {
      v2 = *(v0 + 970);
      v19 = *(v0 + 888);
      v20 = v2;
      v21 = 8;
      AskToMetrics.logScreenTimeMoreTimeRequestCheckpoint(_:)(&v21);
    }
  }

  else
  {
    if (*(v0 + 968))
    {
      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v11 = sub_22F0D0A1C();
      __swift_project_value_buffer(v11, qword_280CBEC40);
      v12 = sub_22F0D09FC();
      v13 = sub_22F0D124C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_22EFE1000, v12, v13, "Ask To Buy iMessage not supported across all approver devices, will not send", v14, 2u);
        MEMORY[0x2318FE8B0](v14, -1, -1);
      }

      if (qword_280CBE8A8 != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 969);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22F0D6710;
      *(inited + 32) = 0x746E65696C63;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 80) = &protocol witness table for Bool;
      *(inited + 48) = v15;
      *(inited + 88) = 0x746E657665;
      *(inited + 96) = 0xE500000000000000;
      *(inited + 128) = MEMORY[0x277D837D0];
      *(inited + 136) = &protocol witness table for String;
      *(inited + 104) = 0x7041646E65536F6ELL;
      *(inited + 112) = 0xEF737265766F7270;
      v9 = sub_22F07D320(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
      swift_arrayDestroy();
      v10 = 15;
    }

    else
    {
      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v3 = sub_22F0D0A1C();
      __swift_project_value_buffer(v3, qword_280CBEC40);
      v4 = sub_22F0D09FC();
      v5 = sub_22F0D124C();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_22EFE1000, v4, v5, "Screen Time iMessage not supported across all approver devices, will not send", v6, 2u);
        MEMORY[0x2318FE8B0](v6, -1, -1);
      }

      if (qword_280CBE8A8 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 969);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_22F0D6710;
      *(v8 + 32) = 0x746E65696C63;
      *(v8 + 40) = 0xE600000000000000;
      *(v8 + 72) = MEMORY[0x277D839B0];
      *(v8 + 80) = &protocol witness table for Bool;
      *(v8 + 48) = v7;
      *(v8 + 88) = 0x746E657665;
      *(v8 + 96) = 0xE500000000000000;
      *(v8 + 128) = MEMORY[0x277D837D0];
      *(v8 + 136) = &protocol witness table for String;
      *(v8 + 104) = 0x7041646E65536F6ELL;
      *(v8 + 112) = 0xEF737265766F7270;
      v9 = sub_22F07D320(v8);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v10 = 14;
    }

    LOBYTE(v19) = v10;
    sub_22F08FCF8(&v19, v9);
  }

  v17 = *(v0 + 8);

  return v17(v1);
}

uint64_t sub_22F028BA0()
{
  *(*v1 + 928) = v0;

  if (v0)
  {
    v2 = sub_22F028CBC;
  }

  else
  {
    sub_22F0D00CC();
    v2 = sub_22F028DC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22F028CBC()
{
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 928);
  v2 = sub_22F0D0A1C();
  __swift_project_value_buffer(v2, qword_280CBEC40);
  v3 = v1;
  Logger.ifError(_:message:)(v1, 0xD00000000000002DLL, 0x800000022F0DDB20);

  v4 = sub_22F07DAA0(MEMORY[0x277D84F90]);
  sub_22F0D00CC();
  *(v0 + 848) = v4;

  return MEMORY[0x2822009F8](sub_22F028DC8, 0, 0);
}

uint64_t sub_22F028DC8()
{
  v22 = v0;
  v19 = *(v0 + 848);
  sub_22F0CFF1C();
  v1 = DiscoveredHandles.allMembersMeetRequirements.getter();

  if (v1)
  {
    if ((*(v0 + 968) & 1) == 0)
    {
      v2 = *(v0 + 970);
      v19 = *(v0 + 888);
      v20 = v2;
      v21 = 8;
      AskToMetrics.logScreenTimeMoreTimeRequestCheckpoint(_:)(&v21);
    }
  }

  else
  {
    if (*(v0 + 968))
    {
      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v11 = sub_22F0D0A1C();
      __swift_project_value_buffer(v11, qword_280CBEC40);
      v12 = sub_22F0D09FC();
      v13 = sub_22F0D124C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_22EFE1000, v12, v13, "Ask To Buy iMessage not supported across all approver devices, will not send", v14, 2u);
        MEMORY[0x2318FE8B0](v14, -1, -1);
      }

      if (qword_280CBE8A8 != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 969);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22F0D6710;
      *(inited + 32) = 0x746E65696C63;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 80) = &protocol witness table for Bool;
      *(inited + 48) = v15;
      *(inited + 88) = 0x746E657665;
      *(inited + 96) = 0xE500000000000000;
      *(inited + 128) = MEMORY[0x277D837D0];
      *(inited + 136) = &protocol witness table for String;
      *(inited + 104) = 0x7041646E65536F6ELL;
      *(inited + 112) = 0xEF737265766F7270;
      v9 = sub_22F07D320(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
      swift_arrayDestroy();
      v10 = 15;
    }

    else
    {
      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v3 = sub_22F0D0A1C();
      __swift_project_value_buffer(v3, qword_280CBEC40);
      v4 = sub_22F0D09FC();
      v5 = sub_22F0D124C();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_22EFE1000, v4, v5, "Screen Time iMessage not supported across all approver devices, will not send", v6, 2u);
        MEMORY[0x2318FE8B0](v6, -1, -1);
      }

      if (qword_280CBE8A8 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 969);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_22F0D6710;
      *(v8 + 32) = 0x746E65696C63;
      *(v8 + 40) = 0xE600000000000000;
      *(v8 + 72) = MEMORY[0x277D839B0];
      *(v8 + 80) = &protocol witness table for Bool;
      *(v8 + 48) = v7;
      *(v8 + 88) = 0x746E657665;
      *(v8 + 96) = 0xE500000000000000;
      *(v8 + 128) = MEMORY[0x277D837D0];
      *(v8 + 136) = &protocol witness table for String;
      *(v8 + 104) = 0x7041646E65536F6ELL;
      *(v8 + 112) = 0xEF737265766F7270;
      v9 = sub_22F07D320(v8);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v10 = 14;
    }

    LOBYTE(v19) = v10;
    sub_22F08FCF8(&v19, v9);
  }

  v17 = *(v0 + 8);

  return v17(v1);
}

uint64_t sub_22F029234()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 736));

  return MEMORY[0x2822009F8](sub_22F029338, 0, 0);
}

uint64_t sub_22F029338()
{
  v22 = v0;
  v19 = *(v0 + 840);
  sub_22F0CFF1C();
  v1 = DiscoveredHandles.allMembersMeetRequirements.getter();

  if (v1)
  {
    if ((*(v0 + 968) & 1) == 0)
    {
      v2 = *(v0 + 970);
      v19 = *(v0 + 888);
      v20 = v2;
      v21 = 8;
      AskToMetrics.logScreenTimeMoreTimeRequestCheckpoint(_:)(&v21);
    }
  }

  else
  {
    if (*(v0 + 968))
    {
      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v11 = sub_22F0D0A1C();
      __swift_project_value_buffer(v11, qword_280CBEC40);
      v12 = sub_22F0D09FC();
      v13 = sub_22F0D124C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_22EFE1000, v12, v13, "Ask To Buy iMessage not supported across all approver devices, will not send", v14, 2u);
        MEMORY[0x2318FE8B0](v14, -1, -1);
      }

      if (qword_280CBE8A8 != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 969);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22F0D6710;
      *(inited + 32) = 0x746E65696C63;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 80) = &protocol witness table for Bool;
      *(inited + 48) = v15;
      *(inited + 88) = 0x746E657665;
      *(inited + 96) = 0xE500000000000000;
      *(inited + 128) = MEMORY[0x277D837D0];
      *(inited + 136) = &protocol witness table for String;
      *(inited + 104) = 0x7041646E65536F6ELL;
      *(inited + 112) = 0xEF737265766F7270;
      v9 = sub_22F07D320(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
      swift_arrayDestroy();
      v10 = 15;
    }

    else
    {
      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v3 = sub_22F0D0A1C();
      __swift_project_value_buffer(v3, qword_280CBEC40);
      v4 = sub_22F0D09FC();
      v5 = sub_22F0D124C();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_22EFE1000, v4, v5, "Screen Time iMessage not supported across all approver devices, will not send", v6, 2u);
        MEMORY[0x2318FE8B0](v6, -1, -1);
      }

      if (qword_280CBE8A8 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 969);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_22F0D6710;
      *(v8 + 32) = 0x746E65696C63;
      *(v8 + 40) = 0xE600000000000000;
      *(v8 + 72) = MEMORY[0x277D839B0];
      *(v8 + 80) = &protocol witness table for Bool;
      *(v8 + 48) = v7;
      *(v8 + 88) = 0x746E657665;
      *(v8 + 96) = 0xE500000000000000;
      *(v8 + 128) = MEMORY[0x277D837D0];
      *(v8 + 136) = &protocol witness table for String;
      *(v8 + 104) = 0x7041646E65536F6ELL;
      *(v8 + 112) = 0xEF737265766F7270;
      v9 = sub_22F07D320(v8);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v10 = 14;
    }

    LOBYTE(v19) = v10;
    sub_22F08FCF8(&v19, v9);
  }

  v17 = *(v0 + 8);

  return v17(v1);
}

uint64_t sub_22F0297A4()
{
  *(*v1 + 960) = v0;

  if (v0)
  {
    v2 = sub_22F0298C0;
  }

  else
  {
    sub_22F0D00CC();
    v2 = sub_22F0299CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22F0298C0()
{
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 960);
  v2 = sub_22F0D0A1C();
  __swift_project_value_buffer(v2, qword_280CBEC40);
  v3 = v1;
  Logger.ifError(_:message:)(v1, 0xD00000000000002DLL, 0x800000022F0DDB20);

  v4 = sub_22F07DAA0(MEMORY[0x277D84F90]);
  sub_22F0D00CC();
  *(v0 + 832) = v4;

  return MEMORY[0x2822009F8](sub_22F0299CC, 0, 0);
}

uint64_t sub_22F0299CC()
{
  v22 = v0;
  v19 = *(v0 + 832);
  sub_22F0CFF1C();
  v1 = DiscoveredHandles.allMembersMeetRequirements.getter();

  if (v1)
  {
    if ((*(v0 + 968) & 1) == 0)
    {
      v2 = *(v0 + 970);
      v19 = *(v0 + 888);
      v20 = v2;
      v21 = 8;
      AskToMetrics.logScreenTimeMoreTimeRequestCheckpoint(_:)(&v21);
    }
  }

  else
  {
    if (*(v0 + 968))
    {
      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v11 = sub_22F0D0A1C();
      __swift_project_value_buffer(v11, qword_280CBEC40);
      v12 = sub_22F0D09FC();
      v13 = sub_22F0D124C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_22EFE1000, v12, v13, "Ask To Buy iMessage not supported across all approver devices, will not send", v14, 2u);
        MEMORY[0x2318FE8B0](v14, -1, -1);
      }

      if (qword_280CBE8A8 != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 969);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22F0D6710;
      *(inited + 32) = 0x746E65696C63;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 80) = &protocol witness table for Bool;
      *(inited + 48) = v15;
      *(inited + 88) = 0x746E657665;
      *(inited + 96) = 0xE500000000000000;
      *(inited + 128) = MEMORY[0x277D837D0];
      *(inited + 136) = &protocol witness table for String;
      *(inited + 104) = 0x7041646E65536F6ELL;
      *(inited + 112) = 0xEF737265766F7270;
      v9 = sub_22F07D320(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
      swift_arrayDestroy();
      v10 = 15;
    }

    else
    {
      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v3 = sub_22F0D0A1C();
      __swift_project_value_buffer(v3, qword_280CBEC40);
      v4 = sub_22F0D09FC();
      v5 = sub_22F0D124C();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_22EFE1000, v4, v5, "Screen Time iMessage not supported across all approver devices, will not send", v6, 2u);
        MEMORY[0x2318FE8B0](v6, -1, -1);
      }

      if (qword_280CBE8A8 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 969);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_22F0D6710;
      *(v8 + 32) = 0x746E65696C63;
      *(v8 + 40) = 0xE600000000000000;
      *(v8 + 72) = MEMORY[0x277D839B0];
      *(v8 + 80) = &protocol witness table for Bool;
      *(v8 + 48) = v7;
      *(v8 + 88) = 0x746E657665;
      *(v8 + 96) = 0xE500000000000000;
      *(v8 + 128) = MEMORY[0x277D837D0];
      *(v8 + 136) = &protocol witness table for String;
      *(v8 + 104) = 0x7041646E65536F6ELL;
      *(v8 + 112) = 0xEF737265766F7270;
      v9 = sub_22F07D320(v8);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v10 = 14;
    }

    LOBYTE(v19) = v10;
    sub_22F08FCF8(&v19, v9);
  }

  v17 = *(v0 + 8);

  return v17(v1);
}

uint64_t sub_22F029E38(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, void *a5)
{
  *(v6 + 313) = a3;
  *(v6 + 328) = a1;
  *(v6 + 336) = a2;
  v7 = *a4;
  *(v6 + 344) = v5;
  *(v6 + 352) = v7;
  *(v6 + 314) = *(a4 + 8);
  *(v6 + 360) = *a5;
  return MEMORY[0x2822009F8](sub_22F029E74, 0, 0);
}

uint64_t sub_22F029E74()
{
  v25 = v0;
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v1 = sub_22F0D0A1C();
  *(v0 + 368) = __swift_project_value_buffer(v1, qword_280CBEC40);
  v2 = sub_22F0D09FC();
  v3 = sub_22F0D122C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_22F00A560(0xD000000000000049, 0x800000022F0DD9F0, &v22);
    _os_log_impl(&dword_22EFE1000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x2318FE8B0](v5, -1, -1);
    MEMORY[0x2318FE8B0](v4, -1, -1);
  }

  if (qword_27DAA04D8 != -1)
  {
    swift_once();
  }

  if (*(off_27DAA1450 + 64))
  {
    if (qword_280CBE8A8 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 313);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22F0D6710;
    *(inited + 32) = 0x746E65696C63;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 80) = &protocol witness table for Bool;
    *(inited + 48) = v6;
    *(inited + 88) = 0x746E657665;
    *(inited + 96) = 0xE500000000000000;
    *(inited + 128) = MEMORY[0x277D837D0];
    *(inited + 136) = &protocol witness table for String;
    *(inited + 104) = 0xD000000000000010;
    *(inited + 112) = 0x800000022F0DCA30;
    v8 = sub_22F07D320(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
    swift_arrayDestroy();
    LOBYTE(v22) = 14;
    sub_22F08FCF8(&v22, v8);

    v9 = sub_22F0D09FC();
    v10 = sub_22F0D122C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_22F00A560(0xD000000000000049, 0x800000022F0DD9F0, &v22);
      _os_log_impl(&dword_22EFE1000, v9, v10, "%s returns false, killswitch set", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x2318FE8B0](v12, -1, -1);
      MEMORY[0x2318FE8B0](v11, -1, -1);
    }

    v13 = *(v0 + 8);

    return v13(0);
  }

  else
  {
    v15 = *(v0 + 314);
    v16 = *(v0 + 360);
    v22 = *(v0 + 352);
    v17 = v22;
    v23 = v15;
    v24 = 4;
    AskToMetrics.logScreenTimeMoreTimeRequestCheckpoint(_:)(&v24);
    *(v0 + 304) = v17;
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    v18 = swift_task_alloc();
    *(v0 + 376) = v18;
    *v18 = v0;
    v18[1] = sub_22F02A2F4;
    v19 = *(v0 + 336);
    v20 = *(v0 + 313);
    v21 = *(v0 + 328);

    return sub_22F027684(v21, v19, 0, v20, v0 + 304, (v0 + 320));
  }
}

uint64_t sub_22F02A2F4(char a1)
{
  *(*v1 + 315) = a1;

  return MEMORY[0x2822009F8](sub_22F02A3F4, 0, 0);
}

uint64_t sub_22F02A3F4(uint64_t a1)
{
  v17 = v1;
  v2 = *(v1 + 315);
  v3 = sub_22F0D09FC();
  v4 = sub_22F0D122C();
  v5 = os_log_type_enabled(v3, v4);
  if (v2 == 1)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_22F00A560(0xD000000000000049, 0x800000022F0DD9F0, &v16);
      _os_log_impl(&dword_22EFE1000, v3, v4, "%s logging and returning true", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x2318FE8B0](v7, -1, -1);
      MEMORY[0x2318FE8B0](v6, -1, -1);
    }

    if (qword_280CBE8A8 != -1)
    {
      swift_once();
    }

    v8 = *(v1 + 313);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
    inited = swift_initStackObject();
    *(inited + 32) = 0x746E65696C63;
    *(inited + 40) = 0xE600000000000000;
    v10 = MEMORY[0x277D839B0];
    *(inited + 16) = xmmword_22F0D6710;
    *(inited + 72) = v10;
    *(inited + 80) = &protocol witness table for Bool;
    *(inited + 48) = v8;
    *(inited + 88) = 0x746E657665;
    *(inited + 96) = 0xE500000000000000;
    *(inited + 128) = MEMORY[0x277D837D0];
    *(inited + 136) = &protocol witness table for String;
    *(inited + 104) = 1684956531;
    *(inited + 112) = 0xE400000000000000;
    v11 = sub_22F07D320(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
    swift_arrayDestroy();
    LOBYTE(v16) = 14;
    sub_22F08FCF8(&v16, v11);
  }

  else
  {
    if (v5)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_22F00A560(0xD000000000000049, 0x800000022F0DD9F0, &v16);
      _os_log_impl(&dword_22EFE1000, v3, v4, "%s returns false, common checks fail", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x2318FE8B0](v13, -1, -1);
      MEMORY[0x2318FE8B0](v12, -1, -1);
    }
  }

  v14 = *(v1 + 8);

  return v14(v2);
}

uint64_t sub_22F02A704(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, void *a5)
{
  *(v6 + 313) = a3;
  *(v6 + 328) = a1;
  *(v6 + 336) = a2;
  v7 = *a4;
  *(v6 + 344) = v5;
  *(v6 + 352) = v7;
  *(v6 + 314) = *(a4 + 8);
  *(v6 + 360) = *a5;
  return MEMORY[0x2822009F8](sub_22F02A740, 0, 0);
}

uint64_t sub_22F02A740()
{
  v22 = v0;
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v1 = sub_22F0D0A1C();
  *(v0 + 368) = __swift_project_value_buffer(v1, qword_280CBEC40);
  v2 = sub_22F0D09FC();
  v3 = sub_22F0D122C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_22F00A560(0xD000000000000047, 0x800000022F0DDA40, &v21);
    _os_log_impl(&dword_22EFE1000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x2318FE8B0](v5, -1, -1);
    MEMORY[0x2318FE8B0](v4, -1, -1);
  }

  if (qword_27DAA04D8 != -1)
  {
    swift_once();
  }

  if (*(off_27DAA1450 + 65))
  {
    if (qword_280CBE8A8 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 313);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22F0D6710;
    *(inited + 32) = 0x746E65696C63;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 80) = &protocol witness table for Bool;
    *(inited + 48) = v6;
    *(inited + 88) = 0x746E657665;
    *(inited + 96) = 0xE500000000000000;
    *(inited + 128) = MEMORY[0x277D837D0];
    *(inited + 136) = &protocol witness table for String;
    *(inited + 104) = 0xD000000000000010;
    *(inited + 112) = 0x800000022F0DCA30;
    v8 = sub_22F07D320(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
    swift_arrayDestroy();
    LOBYTE(v21) = 15;
    sub_22F08FCF8(&v21, v8);

    v9 = sub_22F0D09FC();
    v10 = sub_22F0D122C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_22F00A560(0xD000000000000047, 0x800000022F0DDA40, &v21);
      _os_log_impl(&dword_22EFE1000, v9, v10, "%s returns false, killswitch set", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x2318FE8B0](v12, -1, -1);
      MEMORY[0x2318FE8B0](v11, -1, -1);
    }

    v13 = *(v0 + 8);

    return v13(0);
  }

  else
  {
    v15 = *(v0 + 314);
    v16 = *(v0 + 360);
    *(v0 + 304) = *(v0 + 352);
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    v17 = swift_task_alloc();
    *(v0 + 376) = v17;
    *v17 = v0;
    v17[1] = sub_22F02ABA4;
    v18 = *(v0 + 336);
    v19 = *(v0 + 313);
    v20 = *(v0 + 328);

    return sub_22F027684(v20, v18, 1, v19, v0 + 304, (v0 + 320));
  }
}

uint64_t sub_22F02ABA4(char a1)
{
  *(*v1 + 315) = a1;

  return MEMORY[0x2822009F8](sub_22F02ACA4, 0, 0);
}

uint64_t sub_22F02ACA4(uint64_t a1)
{
  v17 = v1;
  v2 = *(v1 + 315);
  v3 = sub_22F0D09FC();
  v4 = sub_22F0D122C();
  v5 = os_log_type_enabled(v3, v4);
  if (v2 == 1)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_22F00A560(0xD000000000000047, 0x800000022F0DDA40, &v16);
      _os_log_impl(&dword_22EFE1000, v3, v4, "%s logging and returning true", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x2318FE8B0](v7, -1, -1);
      MEMORY[0x2318FE8B0](v6, -1, -1);
    }

    if (qword_280CBE8A8 != -1)
    {
      swift_once();
    }

    v8 = *(v1 + 313);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
    inited = swift_initStackObject();
    *(inited + 32) = 0x746E65696C63;
    *(inited + 40) = 0xE600000000000000;
    v10 = MEMORY[0x277D839B0];
    *(inited + 16) = xmmword_22F0D6710;
    *(inited + 72) = v10;
    *(inited + 80) = &protocol witness table for Bool;
    *(inited + 48) = v8;
    *(inited + 88) = 0x746E657665;
    *(inited + 96) = 0xE500000000000000;
    *(inited + 128) = MEMORY[0x277D837D0];
    *(inited + 136) = &protocol witness table for String;
    *(inited + 104) = 1684956531;
    *(inited + 112) = 0xE400000000000000;
    v11 = sub_22F07D320(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
    swift_arrayDestroy();
    LOBYTE(v16) = 15;
    sub_22F08FCF8(&v16, v11);
  }

  else
  {
    if (v5)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_22F00A560(0xD000000000000047, 0x800000022F0DDA40, &v16);
      _os_log_impl(&dword_22EFE1000, v3, v4, "%s returns false, common checks fail", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x2318FE8B0](v13, -1, -1);
      MEMORY[0x2318FE8B0](v12, -1, -1);
    }
  }

  v14 = *(v1 + 8);

  return v14(v2);
}

uint64_t sub_22F02AFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22F02AFD8, 0, 0);
}

uint64_t sub_22F02AFD8()
{
  v1 = v0[4];
  v2 = sub_22F0D0CAC();
  v4 = v3;
  v0[5] = v2;
  v0[6] = v3;
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  v11 = (*(v6 + 16) + **(v6 + 16));
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_22F02B134;
  v8 = v0[2];
  v9 = v0[3];

  return v11(v8, v9, v2, v4, v5, v6);
}

uint64_t sub_22F02B134()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_22F02B270, 0, 0);
}

uint64_t sub_22F02B270()
{
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[2];
  v5 = sub_22F0D0A1C();
  __swift_project_value_buffer(v5, qword_280CBEC40);
  v6 = v1;
  sub_22F0D152C();

  MEMORY[0x2318FD2C0](v3, v2);

  MEMORY[0x2318FD2C0](0xD000000000000011, 0x800000022F0DDAD0);
  Logger.ifError(_:message:)(v1, 0xD000000000000030, 0x800000022F0DDA90);

  v7 = sub_22F07DAA0(MEMORY[0x277D84F90]);
  *v4 = v7;
  v8 = v0[1];

  return v8();
}

uint64_t sub_22F02B3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22F02B414, 0, 0);
}

uint64_t sub_22F02B414()
{
  v1 = v0[4];
  v2 = sub_22F0D0CAC();
  v4 = v3;
  v0[5] = v2;
  v0[6] = v3;
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  v11 = (*(v6 + 16) + **(v6 + 16));
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_22F02B570;
  v8 = v0[2];
  v9 = v0[3];

  return v11(v8, v9, v2, v4, v5, v6);
}

uint64_t sub_22F02B570()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_22F02B6AC, 0, 0);
}

uint64_t sub_22F02B6AC()
{
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[2];
  v5 = sub_22F0D0A1C();
  __swift_project_value_buffer(v5, qword_280CBEC40);
  v6 = v1;
  sub_22F0D152C();

  MEMORY[0x2318FD2C0](v3, v2);

  MEMORY[0x2318FD2C0](0xD000000000000011, 0x800000022F0DDAD0);
  Logger.ifError(_:message:)(v1, 0xD00000000000002ELL, 0x800000022F0DDAF0);

  v7 = sub_22F07DAA0(MEMORY[0x277D84F90]);
  *v4 = v7;
  v8 = v0[1];

  return v8();
}

uint64_t sub_22F02B82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22F02B850, 0, 0);
}

uint64_t sub_22F02B850()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_22F02B97C;
  v5 = v0[2];
  v6 = v0[3];

  return v8(v5, v6, v2, v3);
}

uint64_t sub_22F02B97C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_22F02BAB0, 0, 0);
}

uint64_t sub_22F02BAB0()
{
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[2];
  v3 = sub_22F0D0A1C();
  __swift_project_value_buffer(v3, qword_280CBEC40);
  v4 = v1;
  Logger.ifError(_:message:)(v1, 0xD00000000000002DLL, 0x800000022F0DDB20);

  v5 = sub_22F07DAA0(MEMORY[0x277D84F90]);
  *v2 = v5;
  v6 = v0[1];

  return v6();
}

void *sub_22F02BBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v26[3] = a8;
  v26[4] = a10;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v26);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a8);
  v25[3] = a9;
  v25[4] = a11;
  v20 = __swift_allocate_boxed_opaque_existential_1Tm(v25);
  (*(*(a9 - 8) + 32))(v20, a3, a9);
  sub_22EFFFB40(v26, (a7 + 7));
  a7[12] = a2;
  a7[14] = a5;
  a7[15] = a6;
  sub_22EFFFB40(v25, (a7 + 2));
  a7[13] = a4;
  v21 = a7[5];
  v22 = a7[6];
  __swift_project_boxed_opaque_existential_1(a7 + 2, v21);
  v23 = *(v22 + 16);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  v23(a5, a6, v21, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return a7;
}

uint64_t dispatch thunk of MessageSendRules.willSendScreenTimeRequest(from:to:client:askToMetrics:discoveredHandles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 144) + **(*v5 + 144));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_22F01FC80;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MessageSendRules.willSendAskToBuyRequest(from:to:client:askToMetrics:discoveredHandles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 152) + **(*v5 + 152));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_22F01F1CC;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MessageSendRules.approversSupportingScreenTimeMessage(_:lookup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 160) + **(*v3 + 160));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22F00CF60;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MessageSendRules.approversSupportingAskToBuyMessage(_:lookup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 168) + **(*v3 + 168));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22F00CF60;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MessageSendRules.iMessageHandles(for:lookup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 176) + **(*v3 + 176));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22F00CD54;

  return v10(a1, a2, a3);
}

uint64_t ResolvedFamilyCache.__allocating_init(usePersistentCache:)(uint64_t a1)
{
  if (a1)
  {
    v1 = objc_opt_self();
    v2 = [v1 defaultManager];
    v11 = &type metadata for ResolvedFamilyCacheURLProvider;
    v12 = &off_2843CDCB0;
    v3 = swift_allocObject();
    *&v10 = v3;
    v4 = sub_22F02C624();
    v3[5] = v4;
    v3[6] = &protocol witness table for NSFileManager;
    v3[2] = v2;
    v8 = v4;
    v9 = &protocol witness table for NSFileManager;
    *&v7 = [v1 defaultManager];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14E8, &unk_22F0D6A60);
    v5 = swift_allocObject();
    sub_22EFE6B9C(&v10, (v5 + 2));
    sub_22EFE6B9C(&v7, (v5 + 7));
    v5[12] = sub_22F02C670;
    v5[13] = 0;
    v5[14] = sub_22F02C71C;
    v5[15] = 0;
  }

  else
  {
    v5 = 0;
  }

  type metadata accessor for ResolvedFamilyCache();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  *(result + 24) = v5;
  return result;
}

unint64_t sub_22F02C624()
{
  result = qword_27DAA14E0;
  if (!qword_27DAA14E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAA14E0);
  }

  return result;
}

uint64_t sub_22F02C670(uint64_t a1)
{
  sub_22F0D016C();
  swift_allocObject();
  sub_22F0D015C();
  type metadata accessor for ResolvedFamily(0);
  sub_22F02D404(&qword_27DAA14F8, &protocol conformance descriptor for ResolvedFamily);
  v1 = sub_22F0D014C();
  sub_22F0D00CC();
  return v1;
}

uint64_t sub_22F02C71C(uint64_t a1, uint64_t a2)
{
  sub_22F0D013C();
  swift_allocObject();
  sub_22F0D012C();
  type metadata accessor for ResolvedFamily(0);
  sub_22F02D404(&qword_27DAA14F0, &protocol conformance descriptor for ResolvedFamily);
  sub_22F0D011C();
  return sub_22F0D00CC();
}

void sub_22F02C7D4(id *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = [*a1 dsid];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 integerValue];
    sub_22F01DEA8(a1, v5);
    v9 = type metadata accessor for ResolvedFamily(0);
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    swift_beginAccess();
    sub_22F046214(v5, v8);
    swift_endAccess();
    if (*(v1 + 24))
    {
      sub_22F0CFFAC();
      v10 = [v7 description];
      v11 = sub_22F0D0CAC();
      v13 = v12;

      sub_22F010B64(a1, v11, v13);

      sub_22F0D00CC();
    }

    else
    {
    }
  }

  else
  {
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v14 = sub_22F0D0A1C();
    __swift_project_value_buffer(v14, qword_27DAA1A28);
    v19 = sub_22F0D09FC();
    v15 = sub_22F0D123C();
    if (os_log_type_enabled(v19, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22EFE1000, v19, v15, "requestingFamilyMember dsid is nil", v16, 2u);
      MEMORY[0x2318FE8B0](v16, -1, -1);
    }

    v17 = v19;
  }
}

uint64_t sub_22F02CB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v25 - v10;
  swift_beginAccess();
  v12 = *(v2 + 16);
  if (*(v12 + 16) && (v13 = sub_22EFFDADC(a1), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = type metadata accessor for ResolvedFamily(0);
    v18 = *(v17 - 8);
    sub_22F01DEA8(v16 + *(v18 + 72) * v15, a2);
    result = (*(v18 + 56))(a2, 0, 1, v17);
    if (!*(v3 + 24))
    {
      return result;
    }
  }

  else
  {
    v20 = type metadata accessor for ResolvedFamily(0);
    result = (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
    if (!*(v3 + 24))
    {
      return result;
    }
  }

  sub_22F02D28C(a2, v11);
  v21 = type metadata accessor for ResolvedFamily(0);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v11, 1, v21) != 1)
  {
    return sub_22F003A4C(v11, &qword_27DAA1448, &unk_22F0D6640);
  }

  sub_22F0CFFAC();
  sub_22F003A4C(v11, &qword_27DAA1448, &unk_22F0D6640);
  v25[2] = a1;
  v23 = sub_22F0D183C();
  sub_22F0100A0(v23, v24, v9);
  sub_22F003A4C(a2, &qword_27DAA1448, &unk_22F0D6640);
  sub_22F0D00CC();

  (*(v22 + 56))(v9, 0, 1, v21);
  return sub_22F02D2FC(v9, a2);
}

uint64_t ResolvedFamilyCache.deinit()
{

  sub_22F0D00CC();
  return v0;
}

uint64_t ResolvedFamilyCache.__deallocating_deinit()
{

  sub_22F0D00CC();

  return swift_deallocClassInstance();
}

uint64_t sub_22F02D020@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v17[0] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  v8 = sub_22F0D043C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3[3];
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v12);
  (*(v13 + 24))(13, 1, 0, v12, v13);
  v14 = *(v9 + 56);
  v14(v7, 0, 1, v8);
  sub_22F0CFF1C();
  sub_22F0D03BC();

  v15 = *(v9 + 8);
  v15(v7, v8);
  sub_22F0D03CC();
  v15(v11, v8);
  return (v14)(a3, 0, 1, v8);
}

uint64_t sub_22F02D28C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F02D2FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F02D404(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ResolvedFamily(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22F02D460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22F01F1CC;

  return sub_22F02D6A0(a1, a2, a3, a4, a5);
}

uint64_t sub_22F02D538(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = 0;
  if (a2)
  {
    sub_22F02E388();
    v4 = sub_22F0D0F4C();
  }

  **(*(v3 + 64) + 40) = v4;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_22F02D5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22F01FC80;

  return sub_22F02D6A0(a1, a2, a3, a4, a5);
}

uint64_t sub_22F02D6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x2822009F8](sub_22F02D6C8, 0, 0);
}

uint64_t sub_22F02D6C8()
{
  v27 = v0;
  v1 = objc_allocWithZone(MEMORY[0x277CC34A8]);
  v2 = sub_22F0D0C7C();
  v3 = sub_22F0D0C7C();
  v25 = [v1 initWithName:v2 protectionClass:0 bundleIdentifier:v3];
  v0[24] = v25;

  if (qword_27DAA0570 != -1)
  {
    swift_once();
  }

  v4 = sub_22F0D0A1C();
  v0[25] = __swift_project_value_buffer(v4, qword_27DAA1A28);
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  v5 = sub_22F0D09FC();
  v6 = sub_22F0D122C();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[22];
    v7 = v0[23];
    v9 = v0[21];
    v24 = v0[20];
    v10 = v0[19];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315650;
    v13 = MEMORY[0x2318FD490](v7, MEMORY[0x277D837D0]);
    v15 = sub_22F00A560(v13, v14, &v26);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_22F00A560(v9, v8, &v26);
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_22F00A560(v10, v24, &v26);
    _os_log_impl(&dword_22EFE1000, v5, v6, "Searching for atts:%s bundleID:%s id:%s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v12, -1, -1);
    MEMORY[0x2318FE8B0](v11, -1, -1);
  }

  v16 = v0[20];
  v17 = v0[19];
  v18 = sub_22F0D0F2C();
  v0[26] = v18;
  v19 = sub_22F0D0C7C();
  v0[27] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22F0D2BF0;
  *(v20 + 32) = v17;
  *(v20 + 40) = v16;
  sub_22F0CFF1C();
  v21 = sub_22F0D0F2C();
  v0[28] = v21;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22F02DAA8;
  v22 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1500, &qword_22F0D6BA8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22F02D538;
  v0[13] = &block_descriptor_3;
  v0[14] = v22;
  [v25 slowFetchAttributes:v18 protectionClass:0 bundleID:v19 identifiers:v21 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22F02DAA8()
{

  return MEMORY[0x2822009F8](sub_22F02DB88, 0, 0);
}

void sub_22F02DB88()
{
  v55 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);
  v3 = *(v0 + 144);

  if (!v3)
  {
    goto LABEL_44;
  }

  isUniquelyReferenced_nonNull_native = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_42:
    if (sub_22F0D143C())
    {
      goto LABEL_4;
    }

LABEL_43:

    goto LABEL_44;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_43;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x2318FDAB0](0, v3);
  }

  else
  {
    if (!*(isUniquelyReferenced_nonNull_native + 16))
    {
      __break(1u);
      goto LABEL_52;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v54 = 0;
    v7 = MEMORY[0x277D84F68];
    sub_22F0D0F3C();

    v8 = v54;
    if (v54)
    {
      isUniquelyReferenced_nonNull_native = *(v0 + 160);
      sub_22F0CFF1C();
      sub_22F0CFF1C();
      v3 = sub_22F0D09FC();
      v9 = sub_22F0D122C();

      if (os_log_type_enabled(v3, v9))
      {
        v11 = *(v0 + 152);
        v10 = *(v0 + 160);
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v54 = v13;
        *v12 = 136315394;
        *(v12 + 4) = sub_22F00A560(v11, v10, &v54);
        *(v12 + 12) = 2080;
        v14 = MEMORY[0x2318FD4D0](v8, v7 + 8);
        isUniquelyReferenced_nonNull_native = v15;
        v16 = sub_22F00A560(v14, v15, &v54);

        *(v12 + 14) = v16;
        _os_log_impl(&dword_22EFE1000, v3, v9, "Results for %s results %s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318FE8B0](v13, -1, -1);
        MEMORY[0x2318FE8B0](v12, -1, -1);
      }

      v50 = v0;
      v17 = *(v0 + 184);
      v52 = *(v17 + 16);
      if (v52)
      {
        v18 = 0;
        v53 = v8 & 0xC000000000000001;
        v49 = v8 & 0xFFFFFFFFFFFFFF8;
        v19 = (v17 + 40);
        v20 = MEMORY[0x277D84F98];
        v51 = v8;
        while (1)
        {
          v0 = *(v19 - 1);
          v21 = *v19;
          if (v53)
          {
            sub_22F0CFF1C();
            v22 = MEMORY[0x2318FDAB0](v18, v8);
          }

          else
          {
            if (v18 >= *(v49 + 16))
            {
              goto LABEL_41;
            }

            v22 = *(v8 + 8 * v18 + 32);
            sub_22F0CFF1C();
            swift_unknownObjectRetain();
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            sub_22F0CFF1C();
            v23 = sub_22F0D09FC();
            v24 = sub_22F0D122C();

            if (os_log_type_enabled(v23, v24))
            {
              v25 = swift_slowAlloc();
              v26 = swift_slowAlloc();
              v54 = v26;
              *v25 = 136315138;
              *(v25 + 4) = sub_22F00A560(v0, v21, &v54);
              _os_log_impl(&dword_22EFE1000, v23, v24, "Nil value for %s", v25, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v26);
              MEMORY[0x2318FE8B0](v26, -1, -1);
              MEMORY[0x2318FE8B0](v25, -1, -1);
            }
          }

          swift_unknownObjectRetain();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v54 = v20;
          v3 = v20;
          v28 = sub_22EFFDA80(v0, v21);
          v29 = v20[2];
          v30 = (v27 & 1) == 0;
          v31 = v29 + v30;
          if (__OFADD__(v29, v30))
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v32 = v27;
          if (v20[3] >= v31)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v27)
              {
                goto LABEL_13;
              }
            }

            else
            {
              v3 = &v54;
              sub_22F0604A4();
              if (v32)
              {
                goto LABEL_13;
              }
            }
          }

          else
          {
            sub_22F07AB54(v31, isUniquelyReferenced_nonNull_native);
            v3 = v54;
            v33 = sub_22EFFDA80(v0, v21);
            if ((v32 & 1) != (v34 & 1))
            {

              sub_22F0D191C();
              return;
            }

            v28 = v33;
            if (v32)
            {
LABEL_13:

              v20 = v54;
              *(v54[7] + 8 * v28) = v22;
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              goto LABEL_14;
            }
          }

          v20 = v54;
          v54[(v28 >> 6) + 8] |= 1 << v28;
          v35 = (v20[6] + 16 * v28);
          *v35 = v0;
          v35[1] = v21;
          *(v20[7] + 8 * v28) = v22;
          swift_unknownObjectRelease();
          v36 = v20[2];
          v37 = __OFADD__(v36, 1);
          v38 = v36 + 1;
          if (v37)
          {
            goto LABEL_40;
          }

          v20[2] = v38;
LABEL_14:
          ++v18;
          v19 += 2;
          v8 = v51;
          if (v52 == v18)
          {
            v0 = v50;
            v39 = *(v50 + 192);

            goto LABEL_47;
          }
        }
      }

LABEL_52:
      __break(1u);
      return;
    }
  }

  else
  {
  }

LABEL_44:
  sub_22F0CFF1C();
  v40 = sub_22F0D09FC();
  v41 = sub_22F0D124C();

  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v0 + 192);
  if (v42)
  {
    v45 = *(v0 + 152);
    v44 = *(v0 + 160);
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v54 = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_22F00A560(v45, v44, &v54);
    _os_log_impl(&dword_22EFE1000, v40, v41, "No search results for %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x2318FE8B0](v47, -1, -1);
    MEMORY[0x2318FE8B0](v46, -1, -1);
  }

  v20 = MEMORY[0x277D84F98];
LABEL_47:
  v48 = *(v0 + 8);

  v48(v20);
}

uint64_t dispatch thunk of SpotLightFetcher.fetchItem(itemID:indexBundleId:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 88) + **(*v5 + 88));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_22F01F1CC;

  return v14(a1, a2, a3, a4, a5);
}

unint64_t sub_22F02E388()
{
  result = qword_280CBDC38;
  if (!qword_280CBDC38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CBDC38);
  }

  return result;
}

uint64_t sub_22F02E3FC()
{
  v0 = sub_22F02638C();
  if (qword_27DAA0568 != -1)
  {
    swift_once();
  }

  v1 = sub_22F0D0A1C();
  __swift_project_value_buffer(v1, qword_27DAA1A10);
  sub_22F0CFF1C();
  v2 = sub_22F0D09FC();
  v3 = sub_22F0D124C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = MEMORY[0x2318FD490](v0, MEMORY[0x277D837D0]);
    v8 = sub_22F00A560(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_22EFE1000, v2, v3, "overriding contact suggestions: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x2318FE8B0](v5, -1, -1);
    MEMORY[0x2318FE8B0](v4, -1, -1);
  }

  return v0;
}

void sub_22F02E568(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    a2(a1, 1);
  }

  else
  {
    v5 = sub_22F01B3BC();
    a2(v5, 0);
  }
}

char *sub_22F02E65C(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10)
{
  v106 = a7;
  v107 = a8;
  v104 = a5;
  v105 = a6;
  v102 = a4;
  v97 = a2;
  v98 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v93 - v13;
  v15 = sub_22F0D05BC();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v93 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v93 - v23;
  [a1 eventTime];
  sub_22F0D04BC();
  v25 = [a1 requestID];
  v103 = sub_22F0D0CAC();
  v109 = v26;

  v112 = [a1 kind];
  v108 = [a1 status];
  v110 = v16;
  v111 = v22;
  v101 = *(v16 + 16);
  v101(v22, v24, v15);
  if (qword_27DAA0530 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v11, qword_27DAACE68);
  v27 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v12 + 8))(v14, v11);
  sub_22F0D054C();
  v28 = [a1 approvalTime];
  v29 = [a1 websitePath];
  if (v29)
  {
    v30 = v29;
    v31 = sub_22F0D0CAC();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v34 = [a1 bundleID];
  if (v34)
  {
    v35 = v34;
    v100 = sub_22F0D0CAC();
    v37 = v36;
  }

  else
  {
    v100 = 0;
    v37 = 0;
  }

  type metadata accessor for ScreenTimeRequestItem(0);
  v38 = swift_allocObject();
  if (v112 == 1)
  {
    v95 = v37;
    v99 = v24;
    if (v33)
    {
      v44 = v31;
    }

    else
    {
      v44 = 0;
    }

    v97 = v44;
    v45 = 0xE000000000000000;
    if (v33)
    {
      v45 = v33;
    }

    v96 = v45;
    type metadata accessor for DaemonConnection();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v43 = [objc_opt_self() bundleForClass_];
    goto LABEL_22;
  }

  if (v112 == 2)
  {
    v95 = v37;
    v99 = v24;

    v39 = v97;
    if (!v98)
    {
      v39 = 0;
    }

    v97 = v39;
    v40 = 0xE000000000000000;
    if (v98)
    {
      v40 = v98;
    }

    v96 = v40;
    type metadata accessor for DaemonConnection();
    v41 = swift_getObjCClassFromMetadata();
    v42 = objc_opt_self();
    sub_22F0CFF1C();
    v43 = [v42 bundleForClass_];
LABEL_22:
    v94 = sub_22F0D031C();
    v93 = v47;
    v98 = v19;
    v48 = v28;

    v49 = v108;
    if (v108 != 1 && !a9)
    {
      if (qword_280CBDB90 != -1)
      {
        swift_once();
      }

      v50 = sub_22F0D0A1C();
      __swift_project_value_buffer(v50, qword_280CBDB98);
      v51 = sub_22F0D09FC();
      v52 = sub_22F0D122C();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_22EFE1000, v51, v52, "ScreenTimeRequestItem responding user missing!", v53, 2u);
        MEMORY[0x2318FE8B0](v53, -1, -1);
      }

      v49 = v108;
    }

    v54 = (v38 + OBJC_IVAR____TtC6People21ScreenTimeRequestItem_bundleId);
    v55 = v95;
    *v54 = v100;
    v54[1] = v55;
    v56 = (v38 + OBJC_IVAR____TtC6People21ScreenTimeRequestItem_thumbnailPath);
    v57 = v104;
    v58 = v105;
    *v56 = v102;
    v56[1] = v57;
    v59 = (v38 + OBJC_IVAR____TtC6People21ScreenTimeRequestItem_thumbnailData);
    v60 = v106;
    *v59 = v58;
    v59[1] = v60;
    *(v38 + OBJC_IVAR____TtC6People21ScreenTimeRequestItem_kind) = v112;
    *(v38 + OBJC_IVAR____TtC6People21ScreenTimeRequestItem_status) = v49;
    *(v38 + OBJC_IVAR____TtC6People21ScreenTimeRequestItem_approvalTime) = v48;
    *(v38 + OBJC_IVAR____TtC6People21ScreenTimeRequestItem_actionFamilyMember) = a9;
    v61 = v107;
    *(v38 + OBJC_IVAR____TtC6People21ScreenTimeRequestItem_familyMember) = v107;
    *(v38 + OBJC_IVAR____TtC6People21ScreenTimeRequestItem_requestApprovers) = a10;
    sub_22F0CFF1C();
    sub_22F0303BC(v58, v60);
    v62 = a9;
    v63 = v61;
    sub_22F0CFF1C();
    v64 = [v63 contactIncludingImage_];
    v65 = v111;
    v66 = v101;
    v101((v38 + OBJC_IVAR____TtC6People13IndexableItem_eventDate), v111, v15);
    v67 = OBJC_IVAR____TtC6People13IndexableItem_expirationDate;
    v68 = v98;
    v66(v38 + OBJC_IVAR____TtC6People13IndexableItem_expirationDate);
    v69 = v110;
    (*(v110 + 56))(v38 + v67, 0, 1, v15);
    v70 = OBJC_IVAR____TtC6People13IndexableItem_keywordStrings;
    v71 = MEMORY[0x277D84F90];
    *(v38 + OBJC_IVAR____TtC6People13IndexableItem_keywordStrings) = MEMORY[0x277D84F90];
    v72 = (v38 + OBJC_IVAR____TtC6People13IndexableItem_title);
    v73 = v96;
    *v72 = v97;
    v72[1] = v73;
    v74 = (v38 + OBJC_IVAR____TtC6People13IndexableItem_description);
    v75 = v93;
    *v74 = v94;
    v74[1] = v75;
    *(v38 + 16) = v64;
    v76 = (v38 + OBJC_IVAR____TtC6People13IndexableItem_indexableID);
    v77 = v109;
    *v76 = v103;
    v76[1] = v77;
    swift_beginAccess();
    *(v38 + v70) = v71;
    sub_22F0CFFAC();
    v78 = sub_22F03C784(0, 1, 1, v71);
    *(v38 + v70) = v78;
    v80 = *(v78 + 2);
    v79 = *(v78 + 3);
    if (v80 >= v79 >> 1)
    {
      v78 = sub_22F03C784((v79 > 1), v80 + 1, 1, v78);
    }

    v81 = v99;
    *(v78 + 2) = v80 + 1;
    v82 = &v78[16 * v80];
    *(v82 + 4) = 0x74736575716572;
    *(v82 + 5) = 0xE700000000000000;
    *(v38 + v70) = v78;
    v84 = *(v78 + 2);
    v83 = *(v78 + 3);
    if (v84 >= v83 >> 1)
    {
      v78 = sub_22F03C784((v83 > 1), v84 + 1, 1, v78);
    }

    *(v78 + 2) = v84 + 1;
    v85 = &v78[16 * v84];
    *(v85 + 4) = 0xD000000000000011;
    *(v85 + 5) = 0x800000022F0DDD20;
    *(v38 + v70) = v78;
    swift_endAccess();
    v86 = *(v69 + 8);
    v86(v68, v15);
    v86(v65, v15);
    v86(v81, v15);
    sub_22F0D00CC();
    return v38;
  }

  if (qword_280CBDB90 != -1)
  {
    swift_once();
  }

  v87 = sub_22F0D0A1C();
  __swift_project_value_buffer(v87, qword_280CBDB98);
  v88 = sub_22F0D09FC();
  v89 = sub_22F0D123C();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_22EFE1000, v88, v89, "ScreenTimeRequestItem invalid event kind", v90, 2u);
    MEMORY[0x2318FE8B0](v90, -1, -1);
  }

  v91 = *(v110 + 8);
  v91(v19, v15);
  v91(v111, v15);
  v91(v24, v15);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_22F02F0A4(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, void *a11, void (*a12)(uint64_t, uint64_t), uint64_t a13)
{
  v187 = a12;
  v188 = a13;
  v186 = a11;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v181 = *(v182 - 8);
  v21 = MEMORY[0x28223BE20](v182);
  v179 = &v175 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v180 = &v175 - v23;
  v185 = sub_22F0D05BC();
  v184 = *(v185 - 1);
  MEMORY[0x28223BE20](v185);
  v183 = &v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22F02E65C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  if (v25)
  {
    v26 = v25;
    v27 = *&v25[OBJC_IVAR____TtC6People21ScreenTimeRequestItem_status];
    if (v27 == 1)
    {
      v185 = MEMORY[0x2318FE070]();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_22F0D6C00;
      *(v28 + 32) = v26;
      sub_22F0CFFAC();
      v29 = sub_22F0220A0(v28);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      if (v29 >> 62)
      {
        if (sub_22F0D143C() == 1)
        {
          goto LABEL_5;
        }
      }

      else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
LABEL_5:
        v30 = v186[3];
        v31 = v186[4];
        __swift_project_boxed_opaque_existential_1(v186, v30);
        v32 = swift_allocObject();
        v33 = v188;
        v32[2] = v187;
        v32[3] = v33;
        v32[4] = v26;
        v34 = *(v31 + 24);
        sub_22F0CFFAC();
        sub_22F0CFFAC();
        v34(v29, 0xD000000000000022, 0x800000022F0DCBE0, sub_22F0303D0, v32, v30, v31);

        sub_22F0D00CC();
LABEL_59:
        objc_autoreleasePoolPop(v185);
LABEL_60:

        return sub_22F0D00CC();
      }

      if (qword_27DAA05A0 == -1)
      {
LABEL_58:
        v187(qword_27DAACED0, 1);
        goto LABEL_59;
      }

LABEL_66:
      swift_once();
      goto LABEL_58;
    }

    v36 = OBJC_IVAR____TtC6People21ScreenTimeRequestItem_actionFamilyMember;
    if (!*&v25[OBJC_IVAR____TtC6People21ScreenTimeRequestItem_actionFamilyMember])
    {
      if (qword_280CBDB90 != -1)
      {
        swift_once();
      }

      v86 = sub_22F0D0A1C();
      __swift_project_value_buffer(v86, qword_280CBDB98);
      sub_22F0CFFAC();
      v87 = sub_22F0D09FC();
      v88 = sub_22F0D122C();
      sub_22F0D00CC();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        *&v191 = v90;
        *v89 = 136315138;
        v91 = *&v26[OBJC_IVAR____TtC6People13IndexableItem_indexableID];
        v92 = *&v26[OBJC_IVAR____TtC6People13IndexableItem_indexableID + 8];
        sub_22F0CFF1C();
        v93 = sub_22F00A560(v91, v92, &v191);

        *(v89 + 4) = v93;
        _os_log_impl(&dword_22EFE1000, v87, v88, "Deleting screenTimeRequest %s - no actionFamilyMember", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v90);
        MEMORY[0x2318FE8B0](v90, -1, -1);
        MEMORY[0x2318FE8B0](v89, -1, -1);
      }

      v94 = v186[4];
      v185 = v186[3];
      __swift_project_boxed_opaque_existential_1(v186, v185);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_22F0D2BF0;
      v96 = *&v26[OBJC_IVAR____TtC6People13IndexableItem_indexableID + 8];
      *(v95 + 32) = *&v26[OBJC_IVAR____TtC6People13IndexableItem_indexableID];
      *(v95 + 40) = v96;
      v97 = swift_allocObject();
      v98 = v188;
      v97[2] = v187;
      v97[3] = v98;
      v97[4] = v26;
      v99 = *(v94 + 32);
      sub_22F0CFFAC();
      sub_22F0CFFAC();
      sub_22F0CFF1C();
      v99(v95, 0xD000000000000022, 0x800000022F0DCBE0, sub_22F03035C, v97, v185, v94);

      sub_22F0D00CC();
      goto LABEL_60;
    }

    v177 = a1;
    v178 = v27;
    [a1 eventTime];
    v37 = v183;
    sub_22F0D04BC();
    v38 = sub_22F0D0CAC();
    v40 = v39;
    v41 = v185;
    v192 = v185;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v191);
    v43 = *(v184 + 16);
    v43(boxed_opaque_existential_1Tm, v37, v41);
    sub_22EFFFA24(&v191, v190);
    v44 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v189 = v44;
    sub_22F018078(v190, v38, v40, isUniquelyReferenced_nonNull_native);

    v46 = v189;
    v47 = sub_22F0D0CAC();
    v49 = v48;
    v192 = v41;
    v50 = __swift_allocate_boxed_opaque_existential_1Tm(&v191);
    v43(v50, v37, v41);
    sub_22EFFFA24(&v191, v190);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v189 = v46;
    sub_22F018078(v190, v47, v49, v51);

    v52 = v189;
    v53 = sub_22F0D0CAC();
    v55 = v54;
    v56 = MEMORY[0x277D849A8];
    v192 = MEMORY[0x277D849A8];
    LODWORD(v191) = v178;
    sub_22EFFFA24(&v191, v190);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v189 = v52;
    sub_22F018078(v190, v53, v55, v57);

    v58 = v189;
    v59 = *&v26[v36];
    if (v59)
    {
      v60 = v59;
      v61 = [v60 dsid];
      if (v61)
      {
        v62 = v61;
        v63 = sub_22F0D0CAC();
        v65 = v64;
        v192 = sub_22F01B924(0, &qword_27DAA1850, 0x277CCABB0);
        *&v191 = v62;
        sub_22EFFFA24(&v191, v190);
        v66 = v62;
        v67 = swift_isUniquelyReferenced_nonNull_native();
        v189 = v58;
        sub_22F018078(v190, v63, v65, v67);

        v58 = v189;
      }

      v176 = v26;
      v68 = [v60 contactIncludingImage_];
      v69 = v60;
      if (v68)
      {
        v70 = v68;
        v71 = [v68 identifier];
        v72 = sub_22F0D0CAC();
        v74 = v73;

        v192 = MEMORY[0x277D837D0];
        *&v191 = v72;
        *(&v191 + 1) = v74;
        sub_22EFFFA24(&v191, v190);
        v75 = swift_isUniquelyReferenced_nonNull_native();
        v189 = v58;
        sub_22F018078(v190, 0xD00000000000001DLL, 0x800000022F0DCF70, v75);
        v76 = v189;
        v77 = sub_22F0D0CAC();
        v79 = v78;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
        v80 = swift_allocObject();
        *(v80 + 16) = xmmword_22F0D2BF0;
        v81 = [v70 identifier];
        v82 = sub_22F0D0CAC();
        v84 = v83;

        *(v80 + 32) = v82;
        *(v80 + 40) = v84;
        v60 = v69;
        v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA0DE0, &unk_22F0D4FB0);
        *&v191 = v80;
        sub_22EFFFA24(&v191, v190);
        v85 = swift_isUniquelyReferenced_nonNull_native();
        v189 = v76;
        sub_22F018078(v190, v77, v79, v85);

        v58 = v189;
      }

      v102 = sub_22F0D0CAC();
      v104 = v103;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
      v105 = swift_allocObject();
      v175 = xmmword_22F0D2BF0;
      *(v105 + 16) = xmmword_22F0D2BF0;
      v106 = [v60 fullName];
      if (v106)
      {
        v107 = v106;
        v108 = sub_22F0D0CAC();
        v110 = v109;

        v60 = v69;
      }

      else
      {
        v108 = 0;
        v110 = 0xE000000000000000;
      }

      v100 = v177;
      *(v105 + 32) = v108;
      *(v105 + 40) = v110;
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA0DE0, &unk_22F0D4FB0);
      v192 = v111;
      *&v191 = v105;
      sub_22EFFFA24(&v191, v190);
      v112 = swift_isUniquelyReferenced_nonNull_native();
      v189 = v58;
      sub_22F018078(v190, v102, v104, v112);

      v113 = v189;
      v114 = sub_22F0D0CAC();
      v116 = v115;
      v117 = swift_allocObject();
      *(v117 + 16) = v175;
      v118 = [v60 appleID];
      if (v118)
      {
        v119 = v118;
        v120 = sub_22F0D0CAC();
        v122 = v121;
      }

      else
      {
        v120 = 0;
        v122 = 0xE000000000000000;
      }

      v26 = v176;
      *(v117 + 32) = v120;
      *(v117 + 40) = v122;
      v192 = v111;
      *&v191 = v117;
      sub_22EFFFA24(&v191, v190);
      v123 = swift_isUniquelyReferenced_nonNull_native();
      v189 = v113;
      sub_22F018078(v190, v114, v116, v123);

      v58 = v189;
      v101 = &loc_22F0D2000;
      v56 = MEMORY[0x277D849A8];
    }

    else
    {
      v100 = v177;
      v101 = &loc_22F0D2000;
    }

    v124 = *(v26 + 2);
    sub_22F0CFFAC();
    if (v124)
    {
      v125 = [v124 identifier];
      sub_22F0D0CAC();
    }

    object = String.trimToNil()().value._object;
    sub_22F0D00CC();

    if (object)
    {
    }

    else
    {
      v127 = sub_22F0D0CAC();
      v129 = v128;
      v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA0DE0, &unk_22F0D4FB0);
      *&v191 = MEMORY[0x277D84F90];
      sub_22EFFFA24(&v191, v190);
      v130 = swift_isUniquelyReferenced_nonNull_native();
      v189 = v58;
      sub_22F018078(v190, v127, v129, v130);

      v58 = v189;
    }

    if (v178 == 2)
    {
      v131 = 0xED00006465696E65;
      v132 = 0x4474736575716572;
    }

    else
    {
      if (v178 != 3)
      {
        goto LABEL_39;
      }

      v131 = 0xEF6465766F727070;
      v132 = 0x4174736575716572;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
    v133 = swift_allocObject();
    *(v133 + 16) = v101[191];
    *(v133 + 32) = v132;
    v134 = v133 + 32;
    *(v133 + 40) = v131;
    v135 = sub_22F05BB98(v133);
    swift_setDeallocating();
    sub_22F022C14(v134);
    swift_deallocClassInstance();
    if (v135)
    {
      v192 = sub_22F01B924(0, &qword_27DAA1508, 0x277CC3440);
      *&v191 = v135;
      sub_22EFFFA24(&v191, v190);
      v136 = v135;
      v137 = swift_isUniquelyReferenced_nonNull_native();
      v189 = v58;
      sub_22F018078(v190, 0xD00000000000001ELL, 0x800000022F0DCF50, v137);

      v58 = v189;
    }

LABEL_39:
    v138 = 0xEE00736E696D3036;
    v139 = OBJC_IVAR____TtC6People21ScreenTimeRequestItem_approvalTime;
    v140 = *&v26[OBJC_IVAR____TtC6People21ScreenTimeRequestItem_approvalTime];
    switch(v140)
    {
      case 1:
        v138 = 0xEE00736E696D3531;
        break;
      case 3:
        v138 = 0xEB00000000796144;
        break;
      case 2:
        break;
      default:
        goto LABEL_48;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
    inited = swift_initStackObject();
    *(inited + 16) = v101[191];
    *(inited + 32) = 0x6C61766F72707061;
    v142 = inited + 32;
    *(inited + 40) = v138;
    v143 = sub_22F05BB98(inited);
    swift_setDeallocating();
    sub_22F022C14(v142);
    if (v143)
    {
      v192 = sub_22F01B924(0, &qword_27DAA1508, 0x277CC3440);
      *&v191 = v143;
      sub_22EFFFA24(&v191, v190);
      v144 = v143;
      v145 = swift_isUniquelyReferenced_nonNull_native();
      v189 = v58;
      sub_22F018078(v190, 0xD00000000000001DLL, 0x800000022F0DCF90, v145);

      v58 = v189;
    }

    v140 = *&v26[v139];
LABEL_48:
    if (v140)
    {
      v192 = v56;
      LODWORD(v191) = v140;
      sub_22EFFFA24(&v191, v190);
      v146 = swift_isUniquelyReferenced_nonNull_native();
      v189 = v58;
      sub_22F018078(v190, 0xD000000000000022, 0x800000022F0DCFB0, v146);
      v58 = v189;
    }

    v147 = v179;
    sub_22F01B574();
    v148 = [objc_opt_self() seconds];
    v149 = v180;
    v150 = v182;
    sub_22F0D019C();

    v151 = *(v181 + 8);
    v151(v147, v150);
    sub_22F0D018C();
    v153 = v152;
    v154 = v152;
    v151(v149, v150);
    if ((*&v154 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v153 > -9.22337204e18)
    {
      if (v153 < 9.22337204e18)
      {
        v155 = v153;
        v156 = sub_22F0D0CAC();
        v158 = v157;
        if (v153 < 0)
        {
          v155 = -1;
        }

        v159 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v192 = sub_22F01B924(0, &qword_27DAA1850, 0x277CCABB0);
        *&v191 = v159;
        sub_22EFFFA24(&v191, v190);
        v160 = swift_isUniquelyReferenced_nonNull_native();
        v189 = v58;
        sub_22F018078(v190, v156, v158, v160);

        v161 = v189;
        v162 = [v100 requestID];
        v163 = sub_22F0D0CAC();
        v165 = v164;

        sub_22F022C68(v163, v165, 1, v161);
        v167 = v166;

        sub_22F0D00CC();
        v168 = v186[3];
        v169 = v186[4];
        v186 = __swift_project_boxed_opaque_existential_1(v186, v168);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
        v170 = swift_allocObject();
        *(v170 + 16) = xmmword_22F0D6C00;
        *(v170 + 32) = v167;
        v171 = swift_allocObject();
        v172 = v188;
        v171[2] = v187;
        v171[3] = v172;
        v171[4] = v26;
        v173 = *(v169 + 24);
        sub_22F0CFFAC();
        sub_22F0CFFAC();
        v174 = v167;
        v173(v170, 0xD000000000000022, 0x800000022F0DCBE0, sub_22F0303D0, v171, v168, v169);

        sub_22F0D00CC();

        sub_22F0D00CC();
        return (*(v184 + 8))(v183, v185);
      }

LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    __break(1u);
    goto LABEL_65;
  }

  if (qword_27DAA05A0 != -1)
  {
    swift_once();
  }

  return (v187)(qword_27DAACED0, 1);
}

uint64_t objectdestroyTm()
{
  sub_22F0D00CC();
  sub_22F0D00CC();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F0303BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22F00AC04(result, a2);
  }

  return result;
}

People::QuickActionType_optional __swiftcall QuickActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F0D174C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t QuickActionType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C61436563696F76;
  v3 = 0x6567617373656DLL;
  v4 = 1818845549;
  if (v1 != 3)
  {
    v4 = 0x6E6F697461636F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C61436F65646976;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22F0304D0()
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F0305AC(uint64_t a1)
{
  sub_22F0D0D5C();
}

uint64_t sub_22F030674(uint64_t a1)
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

void sub_22F030758(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6C61436563696F76;
  v4 = 0xE700000000000000;
  v5 = 0x6567617373656DLL;
  v6 = 0xE400000000000000;
  v7 = 1818845549;
  if (v2 != 3)
  {
    v7 = 0x6E6F697461636F6CLL;
    v6 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v3 = 0x6C61436F65646976;
  }

  if (*v1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 <= 1u)
  {
    v9 = 0xE90000000000006CLL;
  }

  else
  {
    v9 = v4;
  }

  *a1 = v8;
  a1[1] = v9;
}

uint64_t nativeQuickActions(deviceClass:type:contactIdentifier:handle:customIdentifier:isPhoneNumber:)(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *a2;
  if (*a2)
  {
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        return MEMORY[0x277D84F90];
      }

      v36 = 2;
      v37 = *a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_22F0D2BF0;
      goto LABEL_12;
    }

    v36 = 1;
    v37 = *a1;
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_22F0D2BF0;
LABEL_12:
    result = sub_22F0D0CAC();
    *(v10 + 32) = result;
    *(v10 + 40) = v17;
    v16 = 1;
    goto LABEL_13;
  }

  v36 = *a2;
  v37 = *a1;
  if (*a1 == 1)
  {
  }

  else
  {
    v12 = sub_22F0D188C();

    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22F0D6710;
  *(v10 + 32) = sub_22F0D0CAC();
  *(v10 + 40) = v13;
  result = sub_22F0D0CAC();
  *(v10 + 48) = result;
  *(v10 + 56) = v15;
  v16 = 2;
LABEL_13:
  v18 = 0;
  v19 = v10 + 32;
  v11 = MEMORY[0x277D84F90];
  while (v18 < v16)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_51;
    }

    v21 = (v19 + 16 * v18);
    v22 = *v21;
    v23 = v21[1];
    if (v22 == sub_22F0D0CAC() && v23 == v24)
    {
      sub_22F0CFF1C();

      if (a9)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v26 = sub_22F0D188C();
      sub_22F0CFF1C();

      if (v26 & 1) == 0 || (a9)
      {
        goto LABEL_40;
      }
    }

    if (v20 == v16)
    {
      goto LABEL_48;
    }

    if (v20 >= v16)
    {
      break;
    }

    v18 += 2;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_51;
    }

    v27 = (v19 + 16 * v20);
    v22 = *v27;
    v23 = v27[1];
    if (v22 == sub_22F0D0CAC() && v23 == v28)
    {
      sub_22F0CFF1C();
    }

    else
    {
      v29 = sub_22F0D188C();
      sub_22F0CFF1C();

      if ((v29 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    if ((a9 & 1) == 0)
    {

      if (v18 == v16)
      {
        goto LABEL_48;
      }

      if (v18 >= v16)
      {
        break;
      }

      v20 += 2;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_51;
      }

      v30 = (v19 + 16 * v18);
      v22 = *v30;
      v23 = v30[1];
      if (v22 == sub_22F0D0CAC() && v23 == v31)
      {
        sub_22F0CFF1C();

LABEL_39:
        if ((a9 & 1) == 0)
        {

LABEL_48:

          return v11;
        }
      }

      else
      {
        v32 = sub_22F0D188C();
        sub_22F0CFF1C();

        if (v32)
        {
          goto LABEL_39;
        }
      }

LABEL_40:
      v18 = v20;
    }

LABEL_41:
    sub_22F0CFF1C();
    sub_22F0CFF1C();
    sub_22F0CFF1C();
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F03CEB0(0, *(v11 + 16) + 1, 1, v11);
      v11 = result;
    }

    v34 = *(v11 + 16);
    v33 = *(v11 + 24);
    if (v34 >= v33 >> 1)
    {
      result = sub_22F03CEB0((v33 > 1), v34 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 16) = v34 + 1;
    v35 = v11 + 80 * v34;
    *(v35 + 32) = v36;
    *(v35 + 33) = *v44;
    *(v35 + 36) = *&v44[3];
    *(v35 + 40) = a3;
    *(v35 + 48) = a4;
    *(v35 + 56) = a7;
    *(v35 + 64) = a8;
    *(v35 + 72) = a5;
    *(v35 + 80) = a6;
    *(v35 + 88) = v22;
    *(v35 + 96) = v23;
    *(v35 + 104) = 1;
    *(v35 + 105) = v37;
    if (v18 == v16)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

void __swiftcall QuickAction.init(type:contactIdentifier:customIdentifier:handle:bundleID:useStandardProtocol:deviceClass:)(People::QuickAction *__return_ptr retstr, People::QuickActionType type, Swift::String contactIdentifier, Swift::String_optional customIdentifier, Swift::String_optional handle, Swift::String_optional bundleID, Swift::Bool useStandardProtocol, People::DeviceClass_optional deviceClass)
{
  v8 = *v9;
  retstr->type = *type;
  retstr->contactIdentifier = contactIdentifier;
  retstr->customIdentifier = customIdentifier;
  retstr->handle = handle;
  retstr->bundleID = bundleID;
  retstr->useStandardProtocol = useStandardProtocol;
  retstr->deviceClass.value = v8;
}

uint64_t QuickAction.contactIdentifier.getter()
{
  v1 = *(v0 + 8);
  sub_22F0CFF1C();
  return v1;
}

uint64_t QuickAction.customIdentifier.getter()
{
  v1 = *(v0 + 24);
  sub_22F0CFF1C();
  return v1;
}

uint64_t QuickAction.handle.getter()
{
  v1 = *(v0 + 40);
  sub_22F0CFF1C();
  return v1;
}

uint64_t QuickAction.bundleID.getter()
{
  v1 = *(v0 + 56);
  sub_22F0CFF1C();
  return v1;
}

uint64_t QuickAction.iconSystemName.getter()
{
  v1 = *v0;
  v2 = 0x69662E656E6F6870;
  v3 = 0x2E6567617373656DLL;
  v4 = 0x65706F6C65766E65;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x69662E6F65646976;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t QuickAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v34 = sub_22F0D02DC();
  v32 = *(v34 - 8);
  v2 = MEMORY[0x28223BE20](v34);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v5;
  v6 = *v1;
  v7 = *(v1 + 1);
  v8 = *(v1 + 2);
  v9 = *(v1 + 4);
  v28 = *(v1 + 3);
  v10 = *(v1 + 6);
  v29 = *(v1 + 5);
  v11 = *(v1 + 8);
  v30 = *(v1 + 7);
  v12 = v1[72];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1458, &qword_22F0D6780);
  inited = swift_initStackObject();
  v14 = inited;
  *(inited + 16) = xmmword_22F0D5A70;
  *(inited + 32) = 0;
  v15 = *&aLocationl[8 * v6 + 8];
  *(inited + 40) = *&aVoicecalvideoc[8 * v6];
  *(inited + 48) = v15;
  *(inited + 56) = 1;
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = 2;
  *(inited + 88) = v28;
  *(inited + 96) = v9;
  *(inited + 104) = 3;
  *(inited + 112) = v29;
  *(inited + 120) = v10;
  *(inited + 128) = 5;
  *(inited + 136) = v30;
  *(inited + 144) = v11;
  *(inited + 152) = 6;
  v16 = 1702195828;
  if (!v12)
  {
    v16 = 0x65736C6166;
  }

  v17 = 0xE500000000000000;
  if (v12)
  {
    v17 = 0xE400000000000000;
  }

  *(inited + 160) = v16;
  *(inited + 168) = v17;
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  v18 = sub_22F07D9A8(v14);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1460, &qword_22F0D6788);
  swift_arrayDestroy();
  v19 = sub_22F07D244(MEMORY[0x277D84F90]);
  v20 = sub_22F003CCC(v18);

  v21 = sub_22F003F28(v19);

  v35 = v20;
  sub_22F007154(v21);
  v22 = v35;
  sub_22F0D02CC();
  sub_22F0D02BC();
  MEMORY[0x2318FC7D0](0xD000000000000011, 0x800000022F0DC470);
  KeyPath = swift_getKeyPath();
  v35 = v22;
  sub_22F0CFFAC();
  sub_22F0CFF1C();
  sub_22F008F78(&v35, KeyPath);

  sub_22F005844(v35);
  sub_22F0D00CC();
  v24 = v32;
  v25 = v31;
  v26 = v34;
  (*(v32 + 32))(v31, v4, v34);
  sub_22F0D026C();
  return (*(v24 + 8))(v25, v26);
}

uint64_t QuickAction.standardProtocolURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22F0D01DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 6);
  if (v7)
  {
    v8 = *v1;
    v9 = *(v1 + 5);
    v10 = *(v1 + 8);
    v42 = *(v1 + 7);
    v43 = v10;
    LODWORD(v10) = v1[72];
    v44 = v8;
    v45 = v10;
    v11 = v1[73];
    v48 = v9;
    v49 = v7;
    sub_22F00901C();
    v12 = sub_22F0D139C();
    if (v13 && (v46 = v12, v47 = v13, sub_22F0D01BC(), v14 = sub_22F0D138C(), v16 = v15, (*(v4 + 8))(v6, v3), , v16))
    {
      v9 = v14;
      v7 = v16;
      if (v11 != 3)
      {
LABEL_5:
        if (v45)
        {
          if (v43)
          {
            v17 = v42;
          }

          else
          {
            v17 = 0;
          }

          if (v43)
          {
            v18 = v43;
          }

          else
          {
            v18 = 0xE000000000000000;
          }

          if (v17 == sub_22F0D0CAC() && v18 == v19)
          {
            v20 = 1;
          }

          else
          {
            v20 = sub_22F0D188C();
          }

          sub_22F0CFF1C();

          if (v44)
          {
            if (v44 == 1)
            {
              v36 = 0x656D697465636166;
              v37 = 0xE90000000000003ALL;
            }

            else
            {
              if (v44 != 2)
              {
                v40 = sub_22F0D043C();
                (*(*(v40 - 8) + 56))(a1, 1, 1, v40);
              }

              v36 = 980643187;
              v37 = 0xE400000000000000;
            }

            v48 = v36;
            v49 = v37;
          }

          else
          {
            v48 = 0;
            v49 = 0xE000000000000000;
            if (v20)
            {
              v38 = 7103860;
            }

            else
            {
              v38 = 0x656D697465636166;
            }

            if (v20)
            {
              v39 = 0xE300000000000000;
            }

            else
            {
              v39 = 0xEE006F696475612DLL;
            }

            MEMORY[0x2318FD2C0](v38, v39);

            MEMORY[0x2318FD2C0](58, 0xE100000000000000);
          }

          MEMORY[0x2318FD2C0](v9, v7);

          sub_22F0D042C();
        }

        if (qword_280CBEC38 != -1)
        {
          swift_once();
        }

        v33 = sub_22F0D0A1C();
        __swift_project_value_buffer(v33, qword_280CBEC40);
        v22 = sub_22F0D09FC();
        v34 = sub_22F0D123C();
        if (os_log_type_enabled(v22, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_22EFE1000, v22, v34, "Trying to access standardProtocolURL but useStandardProtocol is false", v35, 2u);
          MEMORY[0x2318FE8B0](v35, -1, -1);
        }

LABEL_20:

        v25 = sub_22F0D043C();
        return (*(*(v25 - 8) + 56))(a1, 1, 1, v25);
      }
    }

    else
    {
      sub_22F0CFF1C();
      if (v11 != 3)
      {
        goto LABEL_5;
      }
    }

    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v21 = sub_22F0D0A1C();
    __swift_project_value_buffer(v21, qword_280CBEC40);
    v22 = sub_22F0D09FC();
    v23 = sub_22F0D123C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22EFE1000, v22, v23, "Could not find device class", v24, 2u);
      MEMORY[0x2318FE8B0](v24, -1, -1);
    }

    goto LABEL_20;
  }

  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v27 = sub_22F0D0A1C();
  __swift_project_value_buffer(v27, qword_280CBEC40);
  v28 = sub_22F0D09FC();
  v29 = sub_22F0D123C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_22EFE1000, v28, v29, "Missing handle for standardProtocolURL in action", v30, 2u);
    MEMORY[0x2318FE8B0](v30, -1, -1);
  }

  v31 = sub_22F0D043C();
  v32 = *(*(v31 - 8) + 56);

  return v32(a1, 1, 1, v31);
}

uint64_t QuickAction.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22F0D01DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1278, &unk_22F0D5F60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v54 - v9;
  v11 = sub_22F0D02DC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F0D025C();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v15 = sub_22F0D043C();
    (*(*(v15 - 8) + 8))(a1, v15);
    result = sub_22F003A4C(v10, &qword_27DAA1278, &unk_22F0D5F60);
LABEL_25:
    *(a2 + 58) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v60 = a1;
  (*(v12 + 32))(v14, v10, v11);
  v17 = sub_22F0D02AC();
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  if (v17 == 0x656C706F6570 && v19 == 0xE600000000000000)
  {
LABEL_14:

    goto LABEL_15;
  }

  v21 = sub_22F0D188C();

  if ((v21 & 1) == 0)
  {
    v22 = sub_22F0D027C();
    v24 = v23;
    swift_beginAccess();
    if (!v24)
    {
      goto LABEL_24;
    }

    if (v22 == qword_27DAA10E0 && v24 == off_27DAA10E8)
    {
      goto LABEL_14;
    }

    v37 = sub_22F0D188C();

    if ((v37 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_15:
  v61 = sub_22F0D028C();
  v62 = v25;
  sub_22F0D01AC();
  sub_22F00901C();
  sub_22F0D136C();
  (*(v5 + 8))(v7, v4);

  v26 = sub_22F0D174C();

  if (v26 > 3 || (sub_22EFE853C(v26, 0) & 1) == 0)
  {
    goto LABEL_24;
  }

  v27 = sub_22F005C48(1701869940, 0xE400000000000000);
  if (!*(v27 + 2))
  {
    goto LABEL_22;
  }

  v28 = *(v27 + 4);
  v29 = *(v27 + 5);
  sub_22F0CFF1C();

  v30._countAndFlagsBits = v28;
  v30._object = v29;
  QuickActionType.init(rawValue:)(v30);
  v31 = v61;
  if (v61 == 5)
  {
LABEL_24:
    v38 = sub_22F0D043C();
    (*(*(v38 - 8) + 8))(v60, v38);
    result = (*(v12 + 8))(v14, v11);
    goto LABEL_25;
  }

  v32 = sub_22F005C48(0xD000000000000011, 0x800000022F0DC4D0);
  if (!*(v32 + 2))
  {
LABEL_22:

    goto LABEL_24;
  }

  v33 = *(v32 + 4);
  v34 = *(v32 + 5);
  sub_22F0CFF1C();

  v35 = sub_22F005C48(0xD000000000000010, 0x800000022F0DC4F0);
  if (*(v35 + 2))
  {
    v36 = *(v35 + 4);
    v59 = *(v35 + 5);
    sub_22F0CFF1C();
  }

  else
  {
    v36 = 0;
    v59 = 0;
  }

  v39 = sub_22F005C48(0x656C646E6168, 0xE600000000000000);
  if (*(v39 + 2))
  {
    v40 = *(v39 + 4);
    v57 = *(v39 + 5);
    v58 = v40;
    sub_22F0CFF1C();
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  v41 = sub_22F005C48(0x4449656C646E7562, 0xE800000000000000);
  if (*(v41 + 2))
  {
    v42 = *(v41 + 4);
    v55 = *(v41 + 5);
    v56 = v42;
    sub_22F0CFF1C();
  }

  else
  {
    v55 = 0;
    v56 = 0;
  }

  if (*(sub_22F005C48(0xD000000000000013, 0x800000022F0DC520) + 2))
  {
    v54 = v36;
    v43 = v33;
    v44 = v34;
    sub_22F0CFF1C();

    v45 = sub_22F0D0C7C();

    v46 = [v45 BOOLValue];

    v34 = v44;
    v33 = v43;
    v36 = v54;
  }

  else
  {

    v46 = 0;
  }

  if (qword_27DAA0610 != -1)
  {
    swift_once();
  }

  v47 = byte_27DAA2160;
  v48 = sub_22F0D043C();
  (*(*(v48 - 8) + 8))(v60, v48);
  result = (*(v12 + 8))(v14, v11);
  *a2 = v31;
  *(a2 + 8) = v33;
  *(a2 + 16) = v34;
  v50 = v58;
  v49 = v59;
  *(a2 + 24) = v36;
  *(a2 + 32) = v49;
  v52 = v56;
  v51 = v57;
  *(a2 + 40) = v50;
  *(a2 + 48) = v51;
  v53 = v55;
  *(a2 + 56) = v52;
  *(a2 + 64) = v53;
  *(a2 + 72) = v46;
  *(a2 + 73) = v47;
  return result;
}

uint64_t QuickAction.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  MEMORY[0x28223BE20](v1 - 8);
  v50 = &v40 - v2;
  v51 = 0;
  v3 = *v0;
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v7 = *(v0 + 3);
  v6 = *(v0 + 4);
  v8 = *(v0 + 6);
  v48 = *(v0 + 5);
  v9 = *(v0 + 7);
  v45 = *(v0 + 8);
  v46 = v9;
  v44 = v0[72];
  v49 = v0[73];
  v52 = 0xE000000000000000;
  sub_22F0D152C();
  v62 = v51;
  v63 = v52;
  MEMORY[0x2318FD2C0](0xD000000000000017, 0x800000022F0DDD60);
  v10 = 0x6C61436563696F76;
  v11 = 0xE700000000000000;
  v12 = 0x6567617373656DLL;
  v13 = 1818845549;
  v14 = 0xE800000000000000;
  if (v3 == 3)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v13 = 0x6E6F697461636F6CLL;
  }

  if (v3 != 2)
  {
    v12 = v13;
    v11 = v14;
  }

  if (v3)
  {
    v10 = 0x6C61436F65646976;
  }

  v47 = v3;
  if (v3 <= 1)
  {
    v15 = v10;
  }

  else
  {
    v15 = v12;
  }

  if (v3 <= 1)
  {
    v16 = 0xE90000000000006CLL;
  }

  else
  {
    v16 = v11;
  }

  MEMORY[0x2318FD2C0](v15, v16);

  MEMORY[0x2318FD2C0](0xD000000000000018, 0x800000022F0DDD80);
  v40 = v5;
  MEMORY[0x2318FD2C0](v4, v5);
  MEMORY[0x2318FD2C0](0xD000000000000018, 0x800000022F0DDDA0);
  v43 = v4;
  v41 = v7;
  if (v6)
  {
    v17 = v7;
  }

  else
  {
    v17 = 45;
  }

  if (v6)
  {
    v18 = v6;
  }

  else
  {
    v18 = 0xE100000000000000;
  }

  sub_22F0CFF1C();
  MEMORY[0x2318FD2C0](v17, v18);

  MEMORY[0x2318FD2C0](0x6168202020200A2CLL, 0xEE00203A656C646ELL);
  v19 = v48;
  if (v8)
  {
    v20 = v48;
  }

  else
  {
    v20 = 45;
  }

  if (v8)
  {
    v21 = v8;
  }

  else
  {
    v21 = 0xE100000000000000;
  }

  sub_22F0CFF1C();
  MEMORY[0x2318FD2C0](v20, v21);

  v42 = v6;
  MEMORY[0x2318FD2C0](0xD000000000000010, 0x800000022F0DDDC0);
  v23 = v45;
  v22 = v46;
  if (v45)
  {
    v24 = v46;
  }

  else
  {
    v24 = 45;
  }

  if (v45)
  {
    v25 = v45;
  }

  else
  {
    v25 = 0xE100000000000000;
  }

  sub_22F0CFF1C();
  MEMORY[0x2318FD2C0](v24, v25);

  MEMORY[0x2318FD2C0](0xD00000000000001BLL, 0x800000022F0DDDE0);
  v26 = v44;
  if (v44)
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (v44)
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  MEMORY[0x2318FD2C0](v27, v28);

  MEMORY[0x2318FD2C0](0xD00000000000001BLL, 0x800000022F0DDE00);
  LOBYTE(v51) = v47;
  *(&v51 + 1) = *(v0 + 1);
  HIDWORD(v51) = *(v0 + 1);
  v52 = v43;
  v53 = v40;
  v54 = v41;
  v55 = v42;
  v56 = v19;
  v57 = v8;
  v58 = v22;
  v59 = v23;
  v60 = v26;
  v29 = v49;
  v61 = v49;
  v30 = v50;
  QuickAction.standardProtocolURL.getter(v50);
  v31 = sub_22F0D043C();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_22F003A4C(v30, &qword_27DAA10F8, &qword_22F0D5320);
    v33 = 0xE100000000000000;
    v34 = 45;
  }

  else
  {
    v35 = sub_22F0D038C();
    v33 = v36;
    (*(v32 + 8))(v30, v31);
    v34 = v35;
  }

  MEMORY[0x2318FD2C0](v34, v33);

  MEMORY[0x2318FD2C0](0xD000000000000013, 0x800000022F0DDE20);
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      v37 = 0xE400000000000000;
      v38 = 1684099177;
    }

    else
    {
      v37 = 0xE100000000000000;
      v38 = 45;
    }
  }

  else if (v29)
  {
    v37 = 0xE600000000000000;
    v38 = 0x656E6F685069;
  }

  else
  {
    v37 = 0xE300000000000000;
    v38 = 6512973;
  }

  MEMORY[0x2318FD2C0](v38, v37);

  MEMORY[0x2318FD2C0](10506, 0xE200000000000000);
  return v62;
}

uint64_t _s6People11QuickActionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v24 = *(a1 + 72);
  v19 = *(a1 + 73);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 48);
  v25 = *(a2 + 40);
  v26 = *(a1 + 40);
  v21 = *(a2 + 56);
  v22 = *(a1 + 56);
  v27 = *(a2 + 64);
  v28 = *(a1 + 64);
  v23 = *(a2 + 72);
  v20 = *(a2 + 73);
  if ((sub_22EFE77EC(*a1, *a2) & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_22F0D188C() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v4 != v10 || v5 != v9) && (sub_22F0D188C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v26 != v25 || v6 != v11) && (sub_22F0D188C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (!v28)
  {
    result = 0;
    if (v27)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!v27)
  {
    return 0;
  }

  if (v22 != v21 || v28 != v27)
  {
    v13 = sub_22F0D188C();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }

LABEL_28:
    if ((v24 ^ v23))
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v24 != v23)
  {
    return 0;
  }

LABEL_29:
  if (v19 == 3)
  {
    if (v20 == 3)
    {
      return 1;
    }
  }

  else if (v20 != 3)
  {
    v14 = 6512973;
    if (v19)
    {
      if (v19 == 1)
      {
        v15 = 0xE600000000000000;
        v16 = 0x656E6F685069;
      }

      else
      {
        v15 = 0xE400000000000000;
        v16 = 1684099177;
      }
    }

    else
    {
      v15 = 0xE300000000000000;
      v16 = 6512973;
    }

    if (v20)
    {
      if (v20 == 1)
      {
        v17 = 0xE600000000000000;
        v14 = 0x656E6F685069;
      }

      else
      {
        v17 = 0xE400000000000000;
        v14 = 1684099177;
      }
    }

    else
    {
      v17 = 0xE300000000000000;
    }

    if (v16 == v14 && v15 == v17)
    {
    }

    else
    {
      v18 = sub_22F0D188C();

      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

unint64_t sub_22F032674()
{
  result = qword_27DAA1510;
  if (!qword_27DAA1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1510);
  }

  return result;
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22F0326FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F032744(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_22F0327A8()
{
  v1 = [*v0 reloadTimeline];

  return v1;
}

unint64_t sub_22F0327F8@<X0>(void *a5@<X8>)
{
  v6 = objc_allocWithZone(MEMORY[0x277CFA320]);
  v7 = sub_22F0D0C7C();
  v8 = sub_22F0D0C7C();
  v9 = [v6 initForAvocadoIdentifier:v7 inBundleIdentifier:v8];

  result = sub_22F0328A4();
  a5[3] = result;
  a5[4] = &protocol witness table for CHSTimelineController;
  *a5 = v9;
  return result;
}

unint64_t sub_22F0328A4()
{
  result = qword_280CBD140;
  if (!qword_280CBD140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CBD140);
  }

  return result;
}

uint64_t sub_22F032908(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_22F032A6C;
  v6[3] = &block_descriptor_4;
  v4 = _Block_copy(v6);
  sub_22F0CFFAC();
  [v3 allConfiguredWidgetsWithCompletion_];
  _Block_release(v4);
  return sub_22F0D00CC();
}

uint64_t sub_22F032A6C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1518, &qword_22F0D6F60);
    v4 = sub_22F0D0F4C();
  }

  sub_22F0CFFAC();
  v6 = a3;
  v5(v4, a3);
  sub_22F0D00CC();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22F0CFFAC();
}

uint64_t sub_22F032B24(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 > 4u)
  {
    v10 = 0x7373654D64616572;
    v11 = 0xEB00000000656761;
    v12 = 0xEA00000000006C6CLL;
    v13 = 0x614364657373696DLL;
    if (a1 != 8)
    {
      v13 = 0x7261646E656C6163;
      v12 = 0xE800000000000000;
    }

    if (a1 != 7)
    {
      v10 = v13;
      v11 = v12;
    }

    v14 = 0x617453646C696863;
    v15 = 0xEA00000000006574;
    if (a1 != 5)
    {
      v14 = 0x654D646165726E75;
      v15 = 0xED00006567617373;
    }

    if (a1 <= 6u)
    {
      v8 = v14;
    }

    else
    {
      v8 = v10;
    }

    if (v1 <= 6)
    {
      v9 = v15;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v2 = 0xEF7974696C696261;
    v3 = 0x6C69617641646E64;
    v4 = 0xE800000000000000;
    v5 = 0x6E6F697461636F6CLL;
    v6 = 0xEF74736575716552;
    v7 = 0x7975426F546B7361;
    if (a1 != 3)
    {
      v7 = 0xD000000000000011;
      v6 = 0x800000022F0DC350;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    if (a1)
    {
      v3 = 0x74536E6F69746F6DLL;
      v2 = 0xEB00000000657461;
    }

    if (a1 <= 1u)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }

    if (v1 <= 1)
    {
      v9 = v2;
    }

    else
    {
      v9 = v4;
    }
  }

  MEMORY[0x2318FD2C0](v8, v9);
}

uint64_t static BiomeUtilities.shared.getter()
{
  v0 = type metadata accessor for BiomeUtilities();

  return MEMORY[0x2821FEAF0](v0, &unk_280CBE5F0);
}

id sub_22F032D30(unsigned __int8 *a1, int a2)
{
  v34 = a2;
  v3 = sub_22F0D05EC();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22F0D126C();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22F0D0A6C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_22F0D127C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v33 = sub_22F033250();
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_22F0D152C();
  MEMORY[0x2318FD2C0](0xD000000000000010, 0x800000022F0DD990);
  MEMORY[0x2318FD2C0](0x712D656D6F69622DLL, 0xED00002E65756575);
  v35 = v11;
  sub_22F032B24(v11);
  (*(v8 + 104))(v10, *MEMORY[0x277D85268], v7);
  sub_22F0D0A5C();
  v36 = MEMORY[0x277D84F90];
  sub_22F03329C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1E90, qword_22F0DA870);
  sub_22F0332F4();
  sub_22F0D13EC();
  v12 = v34;
  v13 = sub_22F0D129C();
  v36 = 0;
  v37 = 0xE000000000000000;
  MEMORY[0x2318FD2C0](0xD000000000000010, 0x800000022F0DD990);
  if ((v12 & 1) == 0)
  {
    MEMORY[0x2318FD2C0](46, 0xE100000000000000);
    v14 = v30;
    sub_22F0CFD4C();
    v15 = sub_22F0D05CC();
    v17 = v16;
    (*(v31 + 8))(v14, v32);
    MEMORY[0x2318FD2C0](v15, v17);
  }

  MEMORY[0x2318FD2C0](46, 0xE100000000000000);
  sub_22F032B24(v35);
  v19 = v36;
  v18 = v37;
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v20 = sub_22F0D0A1C();
  __swift_project_value_buffer(v20, qword_280CBEC40);
  sub_22F0CFF1C();
  v21 = sub_22F0D09FC();
  v22 = sub_22F0D122C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_22F00A560(v19, v18, &v36);
    *(v23 + 12) = 1024;
    *(v23 + 14) = v12 & 1;
    _os_log_impl(&dword_22EFE1000, v21, v22, "Creating listening scheduler for %s with waking: %{BOOL}d", v23, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x2318FE8B0](v24, -1, -1);
    MEMORY[0x2318FE8B0](v23, -1, -1);
  }

  v25 = objc_allocWithZone(MEMORY[0x277CF1918]);
  v26 = sub_22F0D0C7C();

  v27 = [v25 initWithIdentifier:v26 targetQueue:v13 waking:v12 & 1];

  return v27;
}

unint64_t sub_22F033250()
{
  result = qword_280CBEC70;
  if (!qword_280CBEC70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CBEC70);
  }

  return result;
}

unint64_t sub_22F03329C()
{
  result = qword_280CBEC78;
  if (!qword_280CBEC78)
  {
    sub_22F0D126C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBEC78);
  }

  return result;
}

unint64_t sub_22F0332F4()
{
  result = qword_280CBEC80;
  if (!qword_280CBEC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1E90, qword_22F0DA870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBEC80);
  }

  return result;
}

uint64_t sub_22F033400()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1540, &qword_22F0DB420);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_22F0D036C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = sub_22F0D005C();
  __swift_allocate_value_buffer(v5, qword_27DAA1520);
  __swift_project_value_buffer(v5, qword_27DAA1520);
  sub_22F0D034C();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_22F0D004C();
}

uint64_t static PersonTypeAppEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAA04E8 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D005C();
  v3 = __swift_project_value_buffer(v2, qword_27DAA1520);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static PersonTypeAppEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27DAA04E8 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D005C();
  v3 = __swift_project_value_buffer(v2, qword_27DAA1520);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static PersonTypeAppEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t)
{
  if (qword_27DAA04E8 != -1)
  {
    swift_once();
  }

  v1 = sub_22F0D005C();
  __swift_project_value_buffer(v1, qword_27DAA1520);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_22F0337B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAA04E8 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D005C();
  v3 = __swift_project_value_buffer(v2, qword_27DAA1520);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_22F033870(uint64_t a1)
{
  if (qword_27DAA04E8 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D005C();
  v3 = __swift_project_value_buffer(v2, qword_27DAA1520);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_22F03393C()
{
  if (qword_280CBEC28 != -1)
  {
    swift_once();
  }

  v0 = qword_280CBEC30;
  qword_280CBDE80 = type metadata accessor for ContactFetcher();
  unk_280CBDE88 = &protocol witness table for ContactFetcher;
  qword_280CBDE68 = v0;

  return sub_22F0CFFAC();
}

uint64_t static PersonTypeAppEntity.defaultQuery.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280CBDE60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_22F034664(&qword_280CBDE68, a1);
}

uint64_t static PersonTypeAppEntity.defaultQuery.setter(uint64_t a1)
{
  if (qword_280CBDE60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_22F0346C0(a1, &qword_280CBDE68);
  swift_endAccess();
  return sub_22F03471C(a1);
}

uint64_t (*static PersonTypeAppEntity.defaultQuery.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280CBDE60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22F033B5C@<X0>(uint64_t a1@<X8>)
{
  if (qword_280CBDE60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_22F034664(&qword_280CBDE68, a1);
}

uint64_t sub_22F033BDC(uint64_t a1)
{
  if (qword_280CBDE60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_22F0346C0(a1, &qword_280CBDE68);
  return swift_endAccess();
}

uint64_t sub_22F033C64(uint64_t *a1, uint64_t *a2)
{
  sub_22F0CFF1C();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFE1C();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t (*PersonTypeAppEntity.id.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_22F0CFDFC();
  return sub_22F034C18;
}

uint64_t sub_22F033D8C(uint64_t *a1, uint64_t *a2)
{
  sub_22F0CFF1C();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFE1C();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t (*PersonTypeAppEntity.displayString.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_22F0CFDFC();
  return sub_22F033E90;
}

void sub_22F033E94(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t PersonTypeAppEntity.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1538, &unk_22F0D6FA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1540, &qword_22F0DB420);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_22F0D036C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = sub_22F0D0C6C();
  MEMORY[0x28223BE20](v8 - 8);
  sub_22F0D0C5C();
  sub_22F0D0C4C();
  sub_22F0CFE0C();
  sub_22F0D0C3C();

  sub_22F0D0C4C();
  sub_22F0D035C();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_22F0CFF6C();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_22F0CFF7C();
}

uint64_t PersonTypeAppEntity.init(id:displayString:)@<X0>(uint64_t *a5@<X8>)
{
  v6 = sub_22F0D036C();
  MEMORY[0x28223BE20](v6 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1548, &qword_22F0D6FB0);
  sub_22F0D034C();
  *a5 = sub_22F0CFE4C();
  sub_22F0D034C();
  a5[1] = sub_22F0CFE4C();
  sub_22F0CFE1C();
  return sub_22F0CFE1C();
}

void *sub_22F03429C@<X0>(void *a1@<X8>)
{
  result = sub_22F0CFE0C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_22F0342DC(uint64_t a1)
{
  v2 = sub_22F034BA0();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_22F03432C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22F00CD54;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_22F0343F0(uint64_t a1)
{
  v2 = sub_22F0349E0();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t _s6People19PersonTypeAppEntityV2eeoiySbAC_ACtFZ_0()
{
  sub_22F0CFE0C();
  sub_22F0CFE0C();

  sub_22F0CFE0C();
  sub_22F0CFE0C();

  return 1;
}

uint64_t _s6People19PersonTypeAppEntityV15decodeContactID3forSSSgAF_tFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a2)
  {
    v13[0] = 124;
    v13[1] = 0xE100000000000000;
    MEMORY[0x28223BE20](a1);
    v12[2] = v13;
    v4 = v3;
    sub_22F0CFF1C();
    v6 = sub_22F042274(0x7FFFFFFFFFFFFFFFLL, 1, sub_22F034BF4, v12, v2, v4, v5);
    if (v6[2])
    {
      v7 = v6[4];
      v8 = v6[5];
      v9 = v6[6];
      v10 = v6[7];
      swift_bridgeObjectRetain_n();

      v2 = MEMORY[0x2318FD270](v7, v8, v9, v10);
      swift_bridgeObjectRelease_n();
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

unint64_t sub_22F034774()
{
  result = qword_280CBDE50;
  if (!qword_280CBDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE50);
  }

  return result;
}

unint64_t sub_22F0347CC()
{
  result = qword_280CBDE38;
  if (!qword_280CBDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE38);
  }

  return result;
}

unint64_t sub_22F034824()
{
  result = qword_280CBDE18;
  if (!qword_280CBDE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE18);
  }

  return result;
}

unint64_t sub_22F03487C()
{
  result = qword_280CBDDB8;
  if (!qword_280CBDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDDB8);
  }

  return result;
}

unint64_t sub_22F0348E0()
{
  result = qword_280CBDE30;
  if (!qword_280CBDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE30);
  }

  return result;
}

unint64_t sub_22F034934()
{
  result = qword_280CBDE58;
  if (!qword_280CBDE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE58);
  }

  return result;
}

unint64_t sub_22F034988()
{
  result = qword_280CBDE40;
  if (!qword_280CBDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE40);
  }

  return result;
}

unint64_t sub_22F0349E0()
{
  result = qword_280CBDE28;
  if (!qword_280CBDE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE28);
  }

  return result;
}

unint64_t sub_22F034A44()
{
  result = qword_280CBDC20;
  if (!qword_280CBDC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1550, &qword_22F0D7128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDC20);
  }

  return result;
}

unint64_t sub_22F034AAC()
{
  result = qword_280CBDE20;
  if (!qword_280CBDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE20);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22F034B0C(uint64_t *a1, int a2)
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

uint64_t sub_22F034B54(uint64_t result, int a2, int a3)
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

unint64_t sub_22F034BA0()
{
  result = qword_280CBDE48;
  if (!qword_280CBDE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE48);
  }

  return result;
}

uint64_t UserDefaultsLaunchDiaryWriter.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0x694468636E75616CLL;
  *(result + 24) = 0xEB00000000797261;
  return result;
}

uint64_t UserDefaultsLaunchDiaryWriter.init()()
{
  result = v0;
  *(v0 + 16) = 0x694468636E75616CLL;
  *(v0 + 24) = 0xEB00000000797261;
  return result;
}

void sub_22F034C90(uint64_t a1, uint64_t a2)
{
  if (qword_280CBEF20 != -1)
  {
    swift_once();
  }

  v2 = qword_280CBEF28;
  v3 = sub_22F0D046C();
  v4 = sub_22F0D0C7C();
  [v2 setValue:v3 forKey:v4];

  [v2 synchronize];
}

uint64_t sub_22F034D5C()
{
  if (qword_280CBEF20 != -1)
  {
    swift_once();
  }

  v0 = qword_280CBEF28;
  v1 = sub_22F0D0C7C();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_22F0D13CC();

    swift_unknownObjectRelease();
  }

  else
  {

    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22F012704(v7);
    return 0;
  }
}

uint64_t UserDefaultsLaunchDiaryWriter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_22F034EE8(uint64_t a1, uint64_t a2)
{
  if (qword_280CBEF20 != -1)
  {
    swift_once();
  }

  v2 = qword_280CBEF28;
  v3 = sub_22F0D046C();
  v4 = sub_22F0D0C7C();
  [v2 setValue:v3 forKey:v4];

  [v2 synchronize];
}

uint64_t sub_22F0350EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  if (sub_22F0D186C())
  {
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v7, v5, a1);
  }

  return swift_willThrow();
}

unint64_t sub_22F035260()
{
  result = qword_27DAA1558[0];
  if (!qword_27DAA1558[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DAA1558);
  }

  return result;
}

uint64_t sub_22F0352B4()
{
  v1 = *v0;
  sub_22F0CFF1C();
  return v1;
}

uint64_t sub_22F0352F0(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  [a1 resume];
  return 1;
}

uint64_t sub_22F0353AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8[2] = v19;
  v8[3] = v20;
  v13 = *((*MEMORY[0x277D85000] & *a4) + 0x58);
  v14 = *((*MEMORY[0x277D85000] & *a4) + 0x50);
  v17 = (*(v13 + 16) + **(v13 + 16));
  v15 = swift_task_alloc();
  v8[4] = v15;
  *v15 = v8;
  v15[1] = sub_22F035554;

  return v17(a5, a6, a7, a8 & 1, v14, v13);
}

uint64_t sub_22F035554(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_22F0367B0;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_22F0367AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_22F0356CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_22F0D032C();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(a3 + 16))(a3);
}

uint64_t sub_22F035758(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a6;
  v34 = a8;
  v29 = a7;
  v30 = a1;
  v32 = a5;
  v31 = a4;
  v11 = *v8;
  v12 = *MEMORY[0x277D85000];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1418, &qword_22F0D7460);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v29 - v19;
  sub_22F0D10BC();
  v21 = sub_22F0D10EC();
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  sub_22F036154(a3, v17);
  v22 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v23 = v22 + v15;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = *((v12 & v11) + 0x50);
  v24[5] = *((v12 & v11) + 0x58);
  v24[6] = v8;
  v24[7] = v30;
  v24[8] = a2;
  sub_22F0361C4(v17, v24 + v22);
  *(v24 + v23) = v31;
  v25 = v24 + (v23 & 0xFFFFFFFFFFFFFFF8);
  v26 = v33;
  *(v25 + 1) = v32;
  *(v25 + 2) = v26;
  v27 = v8;
  sub_22F0CFF1C();
  sub_22F0CFFAC();
  sub_22F01A61C(0, 0, v20, v34, v24);
  return sub_22F0D00CC();
}

uint64_t sub_22F035994(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8[2] = v19;
  v8[3] = v20;
  v13 = *((*MEMORY[0x277D85000] & *a4) + 0x58);
  v14 = *((*MEMORY[0x277D85000] & *a4) + 0x50);
  v17 = (*(v13 + 24) + **(v13 + 24));
  v15 = swift_task_alloc();
  v8[4] = v15;
  *v15 = v8;
  v15[1] = sub_22F035B3C;

  return v17(a5, a6, a7, a8 & 1, v14, v13);
}

uint64_t sub_22F035B3C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_22F035CEC;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_22F035C64;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22F035C64()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22F035CEC()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v1;
  v2(v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22F035DCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  v17 = _Block_copy(a6);
  v18 = sub_22F0D0CAC();
  v20 = v19;
  if (a4)
  {
    sub_22F0D03EC();
    v21 = sub_22F0D043C();
    (*(*(v21 - 8) + 56))(v16, 0, 1, v21);
  }

  else
  {
    v22 = sub_22F0D043C();
    (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v17;
  v24 = a1;
  a9(v18, v20, v16, a5, a8, v23);

  sub_22F0D00CC();
  return sub_22F009070(v16);
}

id sub_22F035FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LegacyConfiguration.ExportedObject(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_22F0360A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22F036118(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22F036154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F0361C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F036234(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320) - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = v1[3];
  v12 = v1[2];
  v6 = v1[6];
  v7 = v1[7];
  v8 = *(v1 + v4 + *(v3 + 64));
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22F00CD54;

  return sub_22F035994(a1, v12, v5, v6, v7, v9, v1 + v4, v8);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_22F0D043C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  sub_22F0D00CC();

  return MEMORY[0x2821FE8E8](v0, ((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 24, v2 | 7);
}

uint64_t sub_22F0364D8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320) - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = v1[3];
  v12 = v1[2];
  v6 = v1[6];
  v7 = v1[7];
  v8 = *(v1 + v4 + *(v3 + 64));
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22F00CF60;

  return sub_22F0353AC(a1, v12, v5, v6, v7, v9, v1 + v4, v8);
}

id sub_22F036638(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  (*(*(v4 - 8) + 16))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)], a1, v4);
  v6 = type metadata accessor for LegacyConfiguration.ExportedObject(0, v4, *((v3 & v2) + 0x58), v5);
  v8.receiver = v1;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t LaunchRecorder.__allocating_init(dataWriter:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v10 = *(a1 + 24);
  v3 = v10;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
  v5 = *(v10 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  *(v2 + 48) = v10;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v2 + 24));
  (*(v5 + 32))(boxed_opaque_existential_1Tm, v7, v3);
  *(v2 + 16) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}