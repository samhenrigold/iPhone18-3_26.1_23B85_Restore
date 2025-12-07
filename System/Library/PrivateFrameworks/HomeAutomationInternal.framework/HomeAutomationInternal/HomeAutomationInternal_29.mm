void *sub_252B49584(unint64_t a1)
{
  v23 = MEMORY[0x277D84F98];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F98];
  }

LABEL_23:
  v2 = sub_252E378C4();
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x277D84F98];
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2530ADF00](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v6 = *(a1 + 8 * v3 + 32);
    }

    v7 = v6;
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v9 = [v6 taskType];
    v10 = sub_252A488EC();
    v12 = v4[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      goto LABEL_21;
    }

    v16 = v11;
    if (v4[3] < v15)
    {
      sub_252DFE824(v15, 1);
      v4 = v23;
      v10 = sub_252A488EC();
      if ((v16 & 1) != (v17 & 1))
      {
        break;
      }
    }

    if (v16)
    {
      v5 = (v4[7] + 8 * v10);
      MEMORY[0x2530AD700]();
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
    }

    else
    {
      v18 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_252E3C130;
      *(v19 + 32) = v7;
      v4[(v18 >> 6) + 8] |= 1 << v18;
      *(v4[6] + 8 * v18) = v9;
      *(v4[7] + 8 * v18) = v19;
      v20 = v4[2];
      v14 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v14)
      {
        goto LABEL_22;
      }

      v4[2] = v21;
    }

    ++v3;
    if (v8 == v2)
    {
      return v4;
    }
  }

  result = sub_252E37E24();
  __break(1u);
  return result;
}

void sub_252B497DC(void *a1, uint64_t a2)
{
  v77 = a1;
  v76 = sub_252E32E84();
  v2 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  v5 = sub_252B49584(v4);

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v9 = v5 + 8;
  v8 = v5[8];
  v10 = 1 << *(v5 + 32);
  v11 = -1;
  v83 = MEMORY[0x277D84F90];
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v8;
  v13 = (v10 + 63) >> 6;
  v69 = "Got error sending Ace Command: ";
  v74 = (v2 + 8);
  v14 = &off_279711000;
  v65 = v5;
  v66 = v13;
  v64 = v5 + 8;
  if (!v12)
  {
LABEL_4:
    while (1)
    {
      v15 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = v9[v15];
      ++v6;
      if (v12)
      {
        v6 = v15;
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

LABEL_8:
  while (1)
  {
    v67 = v12;
    v16 = *(v5[7] + ((v6 << 9) | (8 * __clz(__rbit64(v12)))));
    v82 = v7;
    if (!(v16 >> 62))
    {
      break;
    }

    v54 = v16;
    v55 = sub_252E378C4();
    v16 = v54;
    v17 = v55;
    v68 = v6;
    if (v55)
    {
      goto LABEL_10;
    }

LABEL_40:
    v56 = [objc_allocWithZone(MEMORY[0x277D47330]) init];
    sub_25293F638(0, &qword_27F540368, 0x277D47328);
    v57 = sub_252E37254();

    [v56 setActions_];

    [v56 setFilter_];
    v58 = v56;
    v59 = v75;
    sub_252E32E74();
    sub_252E32E24();
    (*v74)(v59, v76);
    v60 = sub_252E36F04();

    [v58 setAceId_];

    v61 = v58;
    MEMORY[0x2530AD700]();
    if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    v62 = v67;
    sub_252E372D4();

    v12 = (v62 - 1) & v62;
    v6 = v68;
    v13 = v66;
    if (!v12)
    {
      goto LABEL_4;
    }
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v68 = v6;
  if (!v17)
  {
    goto LABEL_40;
  }

LABEL_10:
  if (v17 >= 1)
  {
    v71 = v16 & 0xC000000000000001;
    v18 = v16;

    v19 = v18;
    v20 = 0;
    v72 = v17;
    v73 = v18;
    while (1)
    {
      if (v71)
      {
        v21 = MEMORY[0x2530ADF00](v20, v19);
      }

      else
      {
        v21 = *(v19 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = sub_252D13B74(v21);
      v25 = v24;
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (!v26)
      {
        goto LABEL_20;
      }

      v27 = v26;
      v28 = v77;
      v29 = [v27 v14[203]];
      if (!v29)
      {
        break;
      }

      v30 = [v27 v14[203]];
      if (!v30)
      {

LABEL_26:
        v32 = 0;
        v34 = 0;
        goto LABEL_27;
      }

      v31 = v30;
      v32 = sub_252E36F34();
      v34 = v33;

LABEL_27:
      v39 = [v22 value];
      v40 = sub_252D13C70(v39);

      v41 = [objc_allocWithZone(MEMORY[0x277D47328]) init];
      if (v25)
      {

        v42 = sub_252E36F04();
      }

      else
      {
        v42 = 0;
      }

      v78 = v22;
      [v41 setActionType_];

      if (v34)
      {

        v43 = v32;
        v44 = sub_252E36F04();
      }

      else
      {
        v43 = v32;
        v44 = 0;
      }

      [v41 setAttribute_];

      v45 = v41;
      v46 = v75;
      sub_252E32E74();
      sub_252E32E24();
      (*v74)(v46, v76);
      v47 = sub_252E36F04();

      [v45 setAceId_];

      [v45 setValue_];
      v48 = v45;
      MEMORY[0x2530AD700]();
      if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v70 = v82;
      if (qword_27F53F4B0 != -1)
      {
        swift_once();
      }

      ++v20;
      v49 = sub_252E36AD4();
      __swift_project_value_buffer(v49, qword_27F544CB8);
      v81[0] = 0;
      v81[1] = 0xE000000000000000;
      sub_252E379F4();

      v80 = v25;
      strcpy(v81, "actionType: ");
      BYTE5(v81[1]) = 0;
      HIWORD(v81[1]) = -5120;
      v79 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
      v50 = sub_252E36F94();
      MEMORY[0x2530AD570](v50);

      MEMORY[0x2530AD570](0x6269727474610A2CLL, 0xED0000203A657475);
      v79 = v43;
      v80 = v34;
      v51 = sub_252E36F94();
      MEMORY[0x2530AD570](v51);

      MEMORY[0x2530AD570](0x3A65756C61760A2CLL, 0xE900000000000020);
      v79 = v40;
      v52 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543600, &qword_252E4D548);
      v53 = sub_252E36F94();
      MEMORY[0x2530AD570](v53);

      sub_252CC3D90(v81[0], v81[1], 0xD000000000000072, v69 | 0x8000000000000000);

      v19 = v73;
      v14 = &off_279711000;
      if (v72 == v20)
      {

        v5 = v65;
        v7 = MEMORY[0x277D84F90];
        v9 = v64;
        goto LABEL_40;
      }
    }

LABEL_20:
    [v22 v14[203]];
    if (qword_27F53F6A8 != -1)
    {
      swift_once();
    }

    v35 = off_27F5456A8;
    if (!*(off_27F5456A8 + 2))
    {
      goto LABEL_26;
    }

    v36 = sub_252A488EC();
    if ((v37 & 1) == 0)
    {
      goto LABEL_26;
    }

    v38 = (v35[7] + 16 * v36);
    v32 = *v38;
    v34 = v38[1];

    goto LABEL_27;
  }

LABEL_46:
  __break(1u);
}

id sub_252B4A004(unint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v50 = a4;
  v51 = a3;
  v56 = a1;
  v5 = sub_252E32E84();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v52 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_252E36AB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2814B0A18 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v11 = qword_2814B0A20;
    sub_252E36A94();
    sub_252E375D4();
    v55 = v11;
    sub_252E36A84();
    v12 = a2 >> 62 ? sub_252E378C4() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v57 = v10;
    v58 = v8;
    v59 = v7;
    v7 = MEMORY[0x277D84F90];
    if (!v12)
    {
      break;
    }

    v13 = 0;
    v14 = a2 & 0xC000000000000001;
    v15 = a2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v14)
      {
        v16 = MEMORY[0x2530ADF00](v13, a2);
      }

      else
      {
        if (v13 >= *(v15 + 16))
        {
          goto LABEL_32;
        }

        v16 = *(a2 + 8 * v13 + 32);
      }

      v17 = v16;
      v8 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v10 = a2;
      v18 = [v16 attribute];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2529F7A6C(0, *(v7 + 16) + 1, 1, v7);
      }

      v20 = *(v7 + 16);
      v19 = *(v7 + 24);
      if (v20 >= v19 >> 1)
      {
        v7 = sub_2529F7A6C((v19 > 1), v20 + 1, 1, v7);
      }

      *(v7 + 16) = v20 + 1;
      *(v7 + 8 * v20 + 32) = v18;
      ++v13;
      a2 = v10;
      if (v8 == v12)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

LABEL_17:
  v21 = sub_252B487CC(v56, v7);

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    v24 = v21;
    v25 = [v23 identifiers];
    if (v25)
    {
      v26 = v25;
      v27 = sub_252E37264();

      v28 = *(v27 + 16);

      if (!v28)
      {
        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        v29 = sub_252E36AD4();
        __swift_project_value_buffer(v29, qword_27F544CB8);
        sub_252CC4050(0xD000000000000027, 0x8000000252E806C0, 0xD000000000000072, 0x8000000252E80390, 0xD00000000000001ALL, 0x8000000252E806F0, 190);
        sub_2529318DC();
        v30 = swift_allocError();
        *v31 = 15;
        v33 = v58;
        v32 = v59;
        v34 = v57;
        goto LABEL_30;
      }
    }

    else
    {
    }
  }

  v35 = [objc_allocWithZone(MEMORY[0x277D47348]) init];
  sub_252B497DC(v21, a2);
  sub_25293F638(0, &qword_27F540358, 0x277D47330);
  v36 = sub_252E37254();

  [v35 setActionRequests_];

  if (v50)
  {
    v37 = 7000;
  }

  else
  {
    v37 = v51;
  }

  v38 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  [v35 setCommandTimeout_];

  v39 = v35;
  v40 = v52;
  sub_252E32E74();
  sub_252E32E24();
  (*(v53 + 8))(v40, v54);
  v41 = sub_252E36F04();

  [v39 setAceId_];

  if (qword_2814B09D0 != -1)
  {
    swift_once();
  }

  v42 = sub_252E36AD4();
  __swift_project_value_buffer(v42, qword_2814B09D8);
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_252E379F4();

  v60 = 0xD000000000000011;
  v61 = 0x8000000252E806A0;
  v30 = v39;
  v43 = [v30 description];
  v44 = sub_252E36F34();
  v46 = v45;

  MEMORY[0x2530AD570](v44, v46);

  sub_252CC4A5C(v60, v61, 1, 0xD000000000000072, 0x8000000252E80390);

  v47 = sub_252E375C4();
  v34 = v57;
  sub_252E36A74(v47, &dword_252917000, v55, "CreateAceHACommand", 18, 2, v57, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v33 = v58;
  v32 = v59;
LABEL_30:

  (*(v33 + 8))(v34, v32);
  return v30;
}

void *sub_252B4A6EC(void *a1, uint64_t a2, int a3)
{
  v83 = a3;
  v84 = a2;
  v78 = a1;
  v3 = sub_252E36C84();
  v76 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v73 = (&v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = sub_252E36D54();
  v74 = *(v75 - 8);
  v5 = MEMORY[0x28223BE20](v75);
  v82 = (&v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v72 = &v63 - v7;
  v81 = sub_252E36CA4();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_252E36D04();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_252E36AB4();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_252E36CB4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(sub_252C38378(v16) + 16);
  v20 = v19;

  if (!v19)
  {
    sub_252B4DAD8();
    v56 = swift_allocError();
    *v57 = 3;
    return v56;
  }

  v67 = v3;
  v21 = swift_allocObject();
  sub_252B4DAD8();
  v22 = swift_allocError();
  *v23 = 0;
  *(v21 + 16) = v22;
  v65 = v21 + 16;
  *(v21 + 24) = 1;
  v24 = dispatch_semaphore_create(0);
  sub_25293F638(0, &qword_2814B0218, 0x277D85C78);
  (*(v15 + 104))(v18, *MEMORY[0x277D851C0], v14);
  v69 = sub_252E375A4();
  (*(v15 + 8))(v18, v14);
  if (qword_2814B0A18 != -1)
  {
    swift_once();
  }

  v25 = qword_2814B0A20;
  sub_252E36A94();
  sub_252E375D4();
  v64 = v25;
  v68 = v13;
  sub_252E36A84();
  type metadata accessor for SELFPerformanceLogger();
  swift_initStackObject();
  v66 = sub_252D2D190(204, 0x6E776F6E6B6E75, 0xE700000000000000);
  v26 = v78;
  v27 = sub_252AEBE50();
  sub_252DB7C84(v27);
  v28 = v27;
  sub_252DB7138(v27);

  v29 = swift_allocObject();
  v29[2] = v26;
  v29[3] = v20;
  v29[4] = v21;
  v29[5] = v24;
  aBlock[4] = sub_252B4DB2C;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = &block_descriptor_13;
  v30 = _Block_copy(aBlock);
  v63 = v20;
  v78 = v26;

  v31 = v24;
  sub_252E36CD4();
  v85 = MEMORY[0x277D84F90];
  sub_252B4DB58(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860, MEMORY[0x277D83970]);
  v32 = v81;
  sub_252E37824();
  v33 = v69;
  MEMORY[0x2530ADA30](0, v11, v9, v30);
  _Block_release(v30);
  (*(v80 + 8))(v9, v32);
  (*(v77 + 8))(v11, v79);

  v34 = v82;
  sub_252E36D14();
  v35 = 7000;
  if ((v83 & 1) == 0)
  {
    v35 = v84;
  }

  v36 = __OFADD__(v35, 400);
  v37 = v35 + 400;
  if (v36)
  {
    __break(1u);
    goto LABEL_24;
  }

  v30 = v21;
  v38 = v73;
  *v73 = v37;
  v39 = v76;
  v40 = v67;
  (*(v76 + 104))(v38, *MEMORY[0x277D85178], v67);
  v41 = v72;
  sub_252E36D24();
  (*(v39 + 8))(v38, v40);
  v42 = *(v74 + 8);
  v43 = v75;
  v42(v34, v75);
  sub_252E375F4();
  v44 = (v42)(v41, v43);
  sub_252DB7C84(v44);

  v11 = sub_252DB5924();

  v21 = v28;
  v9 = v68;
  if (!v66)
  {
    goto LABEL_32;
  }

  v45 = [v78 actionRequests];
  v46 = v45;
  if (!v45)
  {
    goto LABEL_31;
  }

  sub_25293F638(0, &qword_27F540358, 0x277D47330);
  v34 = sub_252E37264();

  if (v34 >> 62)
  {
LABEL_24:
    if (!sub_252E378C4())
    {
      goto LABEL_29;
    }

    goto LABEL_11;
  }

  if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

LABEL_11:
  if ((v34 & 0xC000000000000001) != 0)
  {
    v47 = MEMORY[0x2530ADF00](0, v34);
  }

  else
  {
    if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v47 = *(v34 + 32);
  }

  v48 = v47;

  v49 = [v48 actions];

  if (!v49)
  {
    goto LABEL_30;
  }

  sub_25293F638(0, &qword_27F540368, 0x277D47328);
  v34 = sub_252E37264();

  if (v34 >> 62)
  {
LABEL_28:
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_17;
    }

LABEL_29:

    goto LABEL_30;
  }

  result = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_29;
  }

LABEL_17:
  if ((v34 & 0xC000000000000001) != 0)
  {
    goto LABEL_43;
  }

  if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  for (i = *(v34 + 32); ; i = MEMORY[0x2530ADF00](0, v34))
  {
    v52 = i;

    v53 = [v52 actionType];

    if (v53)
    {
      v54 = sub_252E36F34();
      v46 = v55;

      v45 = v54;
    }

    else
    {
LABEL_30:
      v45 = 0;
      v46 = 0;
    }

LABEL_31:
    sub_252D2D83C(v45, v46);

LABEL_32:
    v58 = sub_252E375C4();
    LOBYTE(v62) = 2;
    sub_252E36A74(v58, &dword_252917000, v64, "SendAceHACommand", 16, 2, v9, " enableTelemetry=YES ", 21, v62, MEMORY[0x277D84F90]);
    if (!v21)
    {
      break;
    }

    aBlock[0] = v21;
    swift_beginAccess();
    if (v30[3])
    {
      break;
    }

    v34 = v30[2];
    if (v34)
    {
      v59 = v21;
      sub_2529904E4(v34);
      sub_252AECBCC(aBlock, v78);
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v61 = v21;
      if ((v11 & 0x8000000000000000) != 0)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    if (!HIDWORD(v11))
    {
      [v21 setCommandDuration_];
      sub_252927D3C(v34);

      break;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  v60 = sub_252CC4C20(v11, 14);
  sub_252DB7C84(v60);
  sub_252DB649C(0, 0, 1);

  (*(v70 + 8))(v9, v71);
  swift_beginAccess();
  v56 = v30[2];
  sub_2529904E4(v56);

  return v56;
}

void *sub_252B4B2F4(unint64_t a1)
{
  v23 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_252E378C4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x277D84F98];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2530ADF00](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v6 = *(a1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v9 = [v6 entity];
        v11 = sub_252A44C84(v9);
        v12 = v4[2];
        v13 = (v10 & 1) == 0;
        v14 = v12 + v13;
        if (__OFADD__(v12, v13))
        {
          goto LABEL_22;
        }

        v15 = v10;
        if (v4[3] < v14)
        {
          sub_252DFEB28(v14, 1);
          v4 = v23;
          v16 = sub_252A44C84(v9);
          if ((v15 & 1) != (v17 & 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5435D8, &unk_252E4D528);
            result = sub_252E37E24();
            __break(1u);
            return result;
          }

          v11 = v16;
        }

        if (v15)
        {

          v5 = (v4[7] + 8 * v11);
          MEMORY[0x2530AD700]();
          if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_252E3C130;
          *(v18 + 32) = v7;
          v4[(v11 >> 6) + 8] |= 1 << v11;
          *(v4[6] + 8 * v11) = v9;
          *(v4[7] + 8 * v11) = v18;
          v19 = v4[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_23;
          }

          v4[2] = v21;
        }

        ++v3;
        if (v8 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t sub_252B4B564(uint64_t a1, unint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v81 = MEMORY[0x277D84F90];
  if (!a1)
  {
    if (qword_27F53F4B0 != -1)
    {
      goto LABEL_75;
    }

    goto LABEL_67;
  }

  v5 = sub_252B4B2F4(v4);

  v6 = 0;
  v7 = v5 + 8;
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5[8];
  v11 = (v8 + 63) >> 6;
  v12 = a2 & 0xC000000000000001;
  v13 = v2;
  v66 = v5;
  v67 = v11;
  v68 = v5 + 8;
  if (v10)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_5:
    v14 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_72;
    }

    if (v14 >= v11)
    {

      return v13;
    }

    v10 = v7[v14];
    ++v6;
  }

  while (!v10);
  v6 = v14;
  while (1)
  {
LABEL_9:
    v71 = v10;
    v15 = (v6 << 9) | (8 * __clz(__rbit64(v10)));
    v16 = *(v5[6] + v15);
    v17 = *(v5[7] + v15);
    v80 = v2;
    v70 = v16;
    if (v16)
    {

      v18 = v16;
      v69 = sub_252D10E24();
      if (!(v17 >> 62))
      {
        goto LABEL_11;
      }
    }

    else
    {

      v69 = 0;
      if (!(v17 >> 62))
      {
LABEL_11:
        v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v72 = v6;
        if (v19)
        {
          break;
        }

        goto LABEL_60;
      }
    }

    v19 = sub_252E378C4();
    v72 = v6;
    if (v19)
    {
      break;
    }

LABEL_60:

    v57 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
    v58 = v69;
    v59 = sub_252E36F04();
    v60 = [v57 initWithIdentifier:0 displayString:v59];

    v61 = v60;
    [v61 setEntity_];
    type metadata accessor for HomeUserTaskResponse();
    v62 = sub_252E37254();

    [v61 setTaskResponses_];

    v63 = v61;
    MEMORY[0x2530AD700]();
    if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();

    v10 = (v71 - 1) & v71;
    v13 = v81;
    v11 = v67;
    v7 = v68;
    v6 = v72;
    if (!v10)
    {
      goto LABEL_5;
    }
  }

  v78 = a2 >> 62;
  if (a2 >> 62)
  {
    v77 = sub_252E378C4();
  }

  else
  {
    v77 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = 0;
  v79 = v17 & 0xC000000000000001;
  v73 = v17 + 32;
  v74 = v17 & 0xFFFFFFFFFFFFFF8;
  v75 = v19;
  v76 = v17;
  while (1)
  {
    if (v79)
    {
      v21 = MEMORY[0x2530ADF00](v20, v17);
    }

    else
    {
      if (v20 >= *(v74 + 16))
      {
        goto LABEL_73;
      }

      v21 = *(v73 + 8 * v20);
    }

    v22 = v21;
    if (__OFADD__(v20++, 1))
    {
      break;
    }

    v24 = [v21 resultAttribute];
    if (v24)
    {
      v25 = v24;
      v26 = sub_252E36F34();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v29 = sub_252D14A74(v26, v28);

    if (v77 == 1)
    {
      if (v78)
      {
        if (sub_252E378C4())
        {
LABEL_31:
          if (v12)
          {
            v31 = MEMORY[0x2530ADF00](0, a2);
          }

          else
          {
            if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_74;
            }

            v31 = *(a2 + 32);
          }

          v32 = v31;
LABEL_35:
          v30 = [v32 taskType];

          goto LABEL_47;
        }
      }

      else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_46:
      v30 = 0;
    }

    else if (v78)
    {
      v30 = sub_252E378C4();
      if (v30)
      {
LABEL_37:
        v33 = 0;
        while (1)
        {
          if (v12)
          {
            v34 = MEMORY[0x2530ADF00](v33, a2);
          }

          else
          {
            if (v33 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_70;
            }

            v34 = *(a2 + 8 * v33 + 32);
          }

          v32 = v34;
          v35 = (v33 + 1);
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if ([v34 attribute] == v29)
          {
            goto LABEL_35;
          }

          ++v33;
          if (v35 == v30)
          {
            goto LABEL_46;
          }
        }

        __break(1u);
LABEL_70:
        __break(1u);
        break;
      }
    }

    else
    {
      v30 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        goto LABEL_37;
      }
    }

LABEL_47:
    v36 = [v22 resultValue];
    v37 = sub_252D14EA4(v36);

    v38 = objc_allocWithZone(type metadata accessor for HomeUserTask());
    v39 = sub_252E36F04();
    v40 = [v38 initWithIdentifier:0 displayString:v39];

    v41 = v40;
    [v41 setTaskType_];
    [v41 setAttribute_];
    [v41 setValue_];

    v42 = [v22 outcome];
    if (v42)
    {
      v43 = v42;
      v44 = sub_252E36F34();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    v47 = sub_252D153E4(v44, v46);
    v49 = v48;

    if (v49)
    {
      v50 = 7;
    }

    else
    {
      v50 = v47;
    }

    v51 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
    v52 = v41;
    v53 = sub_252E36F04();
    v54 = [v51 initWithIdentifier:0 displayString:v53];

    v55 = v54;
    [v55 setTaskOutcome_];
    [v55 setUserTask_];

    v56 = v55;
    MEMORY[0x2530AD700]();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();

    v17 = v76;
    if (v20 == v75)
    {
      v2 = MEMORY[0x277D84F90];
      v5 = v66;
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  swift_once();
LABEL_67:
  v64 = sub_252E36AD4();
  __swift_project_value_buffer(v64, qword_27F544CB8);
  sub_252CC4050(0xD000000000000040, 0x8000000252E80500, 0xD000000000000072, 0x8000000252E80390, 0xD000000000000029, 0x8000000252E80550, 374);
  return MEMORY[0x277D84F90];
}

void *sub_252B4BCB8(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, id *a5)
{
  type metadata accessor for ControlHomeIntentResponse.Builder();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D84F90];
  *(v10 + 16) = 4;
  *(v10 + 24) = v11;
  v12 = sub_252B4EF24(a1);
  v13 = sub_25297D0C0(v12);

  sub_252B458C0(a2, a3, a1, a4, a5);
  v14 = (*(*v13 + 152))();

  v16 = (*(*v14 + 176))(v15);

  sub_252B458C0(a2, a3, a1, a4, a5);
  if (v17 == 105)
  {
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_2814B0A78);
    v19 = sub_252E36AC4();
    v20 = sub_252E374C4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_252917000, v19, v20, "Setting requiresAuthentication to true. It will be handled by SiriKit", v21, 2u);
      MEMORY[0x2530AED00](v21, -1, -1);
    }

    [v16 _setRequiresAuthentication_];
  }

  return v16;
}

void *sub_252B4BEB4(id a1, unint64_t a2)
{
  if (a1)
  {
    if (a2 >> 62)
    {
      goto LABEL_38;
    }

    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_39:
      v38 = qword_27F53F4B0;
      v3 = a1;
      if (v38 != -1)
      {
        swift_once();
      }

      v39 = sub_252E36AD4();
      __swift_project_value_buffer(v39, qword_27F544CB8);
      sub_252CC4050(0xD000000000000011, 0x8000000252E804E0, 0xD000000000000072, 0x8000000252E80390, 0xD00000000000002BLL, 0x8000000252E80490, 289);
      sub_2529318DC();
      v29 = swift_allocError();
      *v40 = 0;
      goto LABEL_42;
    }

LABEL_4:
    v2 = a2;
    v3 = a1;
    v4 = [v3 commandOutcome];
    if (v4)
    {
      v5 = v4;
      v6 = sub_252E36F34();
      v8 = v7;

      v9 = [v3 actionResults];
      if (!v9)
      {
        a1 = sub_252B4B564(0, v2);
        v31 = 0;
        v11 = 0;
LABEL_46:
        v41 = sub_252B4BCB8(a1, v31, v11, v6, v8);

        return v41;
      }

      v10 = v9;
      sub_25293F638(0, &qword_27F540388, 0x277D47338);
      v11 = sub_252E37264();

      a1 = sub_252B4B564(v11, v2);
      if (!v11)
      {
        v31 = 0;
        goto LABEL_46;
      }

      v42 = a1;
      v43 = v6;
      v44 = v8;
      if (v11 >> 62)
      {
        a1 = sub_252E378C4();
        v12 = a1;
        if (!a1)
        {
LABEL_44:

          v31 = 0;
          v11 = 0;
LABEL_45:
          v8 = v44;
          a1 = v42;
          v6 = v43;
          goto LABEL_46;
        }
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v12)
        {
          goto LABEL_44;
        }
      }

      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          a1 = MEMORY[0x2530ADF00](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          a1 = *(v11 + 8 * v13 + 32);
        }

        v14 = a1;
        v15 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          v34 = a1;
          v35 = a2;
          v36 = sub_252E378C4();
          a2 = v35;
          v37 = v36;
          a1 = v34;
          if (!v37)
          {
            goto LABEL_39;
          }

          goto LABEL_4;
        }

        v16 = [a1 outcome];
        if (!v16)
        {
          break;
        }

        v17 = v16;
        v18 = sub_252E36F34();
        v20 = v19;

        v21 = sub_252E36F34();
        if (!v20)
        {
          goto LABEL_11;
        }

        if (v18 == v21 && v20 == v22)
        {

          goto LABEL_35;
        }

        v24 = sub_252E37DB4();

        if (v24)
        {

LABEL_35:
          v32 = sub_252E36F34();
          v11 = v33;
          v31 = v32;
          goto LABEL_45;
        }

LABEL_12:
        ++v13;
        if (v15 == v12)
        {
          goto LABEL_44;
        }
      }

      sub_252E36F34();
LABEL_11:

      goto LABEL_12;
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v28 = sub_252E36AD4();
    __swift_project_value_buffer(v28, qword_27F544CB8);
    sub_252CC4050(0xD000000000000017, 0x8000000252E804C0, 0xD000000000000072, 0x8000000252E80390, 0xD00000000000002BLL, 0x8000000252E80490, 294);
    sub_252B4DAD8();
    v29 = swift_allocError();
    *v30 = 2;
LABEL_42:

    return v29;
  }

  else
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v25 = sub_252E36AD4();
    __swift_project_value_buffer(v25, qword_27F544CB8);
    sub_252CC4050(0xD000000000000019, 0x8000000252E80470, 0xD000000000000072, 0x8000000252E80390, 0xD00000000000002BLL, 0x8000000252E80490, 284);
    sub_252B4DAD8();
    result = swift_allocError();
    *v27 = 1;
  }

  return result;
}

void *sub_252B4C40C(unint64_t a1, void *a2, uint64_t a3, char a4)
{
  v32 = a1;
  v7 = sub_252E36AB4();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B0A18 != -1)
  {
    swift_once();
  }

  v10 = qword_2814B0A20;
  sub_252E36A94();
  sub_252E375D4();
  v35 = v10;
  v36 = v9;
  v11 = sub_252E36A84();
  v12 = sub_252B680FC(v11);
  v34 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_numberOfTargetedEntities);
  v13 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_numberOfTargetedEntities + 8);

  v15 = *(sub_252B680FC(v14) + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedServiceTypes);

  v17 = sub_252B680FC(v16);
  v18 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedContainer + 8);
  v33 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedContainer);

  LOBYTE(v58) = v13;
  LOBYTE(v50) = 1;
  LOBYTE(v39) = 1;
  LOBYTE(v72[0]) = 1;
  v19 = sub_252B4A6EC(a2, a3, a4 & 1);
  v20 = v19;
  if (v21)
  {
    LODWORD(v32) = v13;
    v22 = v19;
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_2814B0A78);
    *&v58 = 0;
    *(&v58 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E80370);
    *&v50 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(v58, *(&v58 + 1), 0xD000000000000072, 0x8000000252E80390, 0xD00000000000003BLL, 0x8000000252E80410, 162);

    *&v50 = v34;
    BYTE8(v50) = v32;
    *(&v50 + 9) = v72[0];
    HIDWORD(v50) = *(v72 + 3);
    *&v51 = v15;
    *(&v51 + 1) = v33;
    *(v52 + 8) = 0u;
    *(&v52[1] + 8) = 0u;
    *(&v52[2] + 8) = 0u;
    *&v52[0] = v18;
    *(&v52[3] + 1) = 0;
    LOBYTE(v53) = 1;
    *(&v53 + 1) = *v71;
    DWORD1(v53) = *&v71[3];
    v54 = 0uLL;
    *(&v53 + 1) = 0;
    LOWORD(v55) = 513;
    *(&v55 + 2) = v69;
    WORD3(v55) = v70;
    v56 = 0uLL;
    *(&v55 + 1) = 0;
    v57 = 1;
    GEOLocationCoordinate2DMake();
    v47 = v55;
    v48 = v56;
    v49 = v57;
    v43 = v52[2];
    v44 = v52[3];
    v45 = v53;
    v46 = v54;
    v39 = v50;
    v40 = v51;
    v41 = v52[0];
    v42 = v52[1];
    v24 = v36;
    _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v35, v36, "SendHomeKitCommand", 18, 2, &v39);
    sub_252927D3C(v20);
    v66 = v47;
    v67 = v48;
    v68 = v49;
    v62 = v43;
    v63 = v44;
    v64 = v45;
    v65 = v46;
    v58 = v39;
    v59 = v40;
    v60 = v41;
    v61 = v42;
    sub_2529765AC(&v58);
    (*(v37 + 8))(v24, v38);
  }

  else
  {
    if (qword_2814B09D0 != -1)
    {
      swift_once();
    }

    v25 = sub_252E36AD4();
    __swift_project_value_buffer(v25, qword_2814B09D8);
    *&v58 = 0;
    *(&v58 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v58 = 0xD00000000000001ALL;
    *(&v58 + 1) = 0x8000000252E80450;
    *&v50 = v20;
    v26 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5435C8, &unk_252E4D518);
    v27 = sub_252E36F94();
    MEMORY[0x2530AD570](v27);

    sub_252CC4A5C(v58, *(&v58 + 1), 1, 0xD000000000000072, 0x8000000252E80390);

    *&v50 = v34;
    BYTE8(v50) = v13;
    *(&v50 + 9) = v72[0];
    HIDWORD(v50) = *(v72 + 3);
    *&v51 = v15;
    *(&v51 + 1) = v33;
    *(v52 + 8) = 0u;
    *(&v52[1] + 8) = 0u;
    *(&v52[2] + 8) = 0u;
    *&v52[0] = v18;
    *(&v52[3] + 1) = 0;
    LOBYTE(v53) = 1;
    *(&v53 + 1) = *v71;
    DWORD1(v53) = *&v71[3];
    v54 = 0uLL;
    *(&v53 + 1) = 0;
    LOWORD(v55) = 513;
    *(&v55 + 2) = v69;
    WORD3(v55) = v70;
    v56 = 0uLL;
    *(&v55 + 1) = 0;
    v57 = 1;
    GEOLocationCoordinate2DMake();
    v47 = v55;
    v48 = v56;
    v49 = v57;
    v43 = v52[2];
    v44 = v52[3];
    v45 = v53;
    v46 = v54;
    v39 = v50;
    v40 = v51;
    v41 = v52[0];
    v42 = v52[1];
    v28 = v36;
    _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v35, v36, "SendHomeKitCommand", 18, 2, &v39);
    v66 = v47;
    v67 = v48;
    v68 = v49;
    v62 = v43;
    v63 = v44;
    v64 = v45;
    v65 = v46;
    v58 = v39;
    v59 = v40;
    v60 = v41;
    v61 = v42;
    sub_2529765AC(&v58);
    v29 = sub_252B4BEB4(v20, v32);
    sub_252927D3C(v20);
    (*(v37 + 8))(v28, v38);
    return v29;
  }

  return v20;
}

char *sub_252B4CA9C(unint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_252B4A004(a1, a2, a3, a4 & 1);
  v8 = v7;
  if (v9)
  {
    v10 = v7;
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_2814B0A78);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E80A30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(0, 0xE000000000000000, 0xD000000000000072, 0x8000000252E80390, 0xD000000000000021, 0x8000000252E80A60, 80);

    v12 = v8;
    if ((swift_dynamicCast() & 1) != 0 && v8 == 15)
    {
      v13 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
      v14 = OBJC_IVAR___ControlHomeIntentResponse_code;
      swift_beginAccess();
      *&v13[v14] = 102;
      [v13 setUserActivity_];
      type metadata accessor for HomeEntityResponse();
      v15 = sub_252E37254();
      [v13 setEntityResponses_];
      sub_252927D3C(v8);
      sub_252927D3C(v8);

      return v13;
    }

    else
    {
      sub_252927D3C(v8);
    }
  }

  else
  {
    v16 = sub_252B4C40C(a2, v7, a3, a4 & 1);
    sub_252927D3C(v8);
    return v16;
  }

  return v8;
}

uint64_t sub_252B4CD30(void *a1, uint64_t a2, char a3)
{
  v6 = [a1 userTask];
  if (v6)
  {
    v7 = v6;
    v8 = [a1 filters];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for HomeFilter();
      v10 = sub_252E37264();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C130;
      *(inited + 32) = v7;
      v12 = v7;
      v13 = sub_252B4CA9C(v10, inited, a2, a3 & 1);

      swift_setDeallocating();
      swift_arrayDestroy();
    }

    else
    {
      if (qword_2814B0A70 != -1)
      {
        swift_once();
      }

      v17 = sub_252E36AD4();
      __swift_project_value_buffer(v17, qword_2814B0A78);
      sub_252CC4050(0xD00000000000001ELL, 0x8000000252E80AD0, 0xD000000000000072, 0x8000000252E80390, 0xD000000000000016, 0x8000000252E80AB0, 58);
      sub_2529318DC();
      v13 = swift_allocError();
      *v18 = 1;
    }

    return v13;
  }

  else
  {
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_2814B0A78);
    sub_252CC4050(0xD00000000000001FLL, 0x8000000252E80A90, 0xD000000000000072, 0x8000000252E80390, 0xD000000000000016, 0x8000000252E80AB0, 54);
    sub_2529318DC();
    result = swift_allocError();
    *v16 = 0;
  }

  return result;
}

id sub_252B4CFE0(unint64_t a1)
{
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 >> 62);
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  if (sub_252E378C4() != 1)
  {
LABEL_9:
    v11 = [objc_allocWithZone(MEMORY[0x277D47348]) init];
    v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    [v11 setCommandTimeout_];

    v13 = v11;
    sub_252E32E74();
    sub_252E32E24();
    (*(v5 + 8))(v7, v4);
    v14 = sub_252E36F04();

    [v13 setAceId_];

    if (v8)
    {
      v15 = sub_252E378C4();
    }

    else
    {
      v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v55 = v13;
    v1 = 0xD000000000000072;
    v2 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/App/ACE/AceCommandDispatcher.swift";
    if (!v15)
    {
      v66 = MEMORY[0x277D84F90];
LABEL_56:
      sub_25293F638(0, &qword_27F540358, 0x277D47330);
      v49 = sub_252E37254();

      v8 = v55;
      [v55 setActionRequests_];

      if (qword_27F53F4B0 == -1)
      {
        goto LABEL_57;
      }

      goto LABEL_69;
    }

    v16 = 0;
    v64 = a1 & 0xC000000000000001;
    v61 = a1 + 32;
    v62 = a1 & 0xFFFFFFFFFFFFFF8;
    v59 = "Got error sending Ace Command: ";
    v60 = 0x8000000252E80630;
    v66 = MEMORY[0x277D84F90];
    v58 = 0xD000000000000026;
    v63 = v15;
    v56 = a1;
    while (1)
    {
      if (v64)
      {
        v17 = MEMORY[0x2530ADF00](v16, a1);
      }

      else
      {
        if (v16 >= *(v62 + 16))
        {
          goto LABEL_62;
        }

        v17 = *(v61 + 8 * v16);
      }

      v18 = v17;
      v19 = __OFADD__(v16++, 1);
      if (v19)
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:

        JUMPOUT(0x2530ADF00);
      }

      v20 = [v17 actionRequests];
      if (!v20)
      {
        v31 = a1;
        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        v32 = sub_252E36AD4();
        __swift_project_value_buffer(v32, qword_27F544CB8);
        v67 = 0;
        v68 = 0xE000000000000000;
        sub_252E379F4();

        v67 = v58;
        v68 = v60;
        v33 = [v18 description];
        v34 = sub_252E36F34();
        v35 = v18;
        v37 = v36;

        MEMORY[0x2530AD570](v34, v37);

        sub_252CC3D90(v67, v68, 0xD000000000000072, v59 | 0x8000000000000000);

        a1 = v31;
        v1 = 0xD000000000000072;
        goto LABEL_15;
      }

      v21 = v20;
      sub_25293F638(0, &qword_27F540358, 0x277D47330);
      v22 = sub_252E37264();

      v23 = v22 >> 62;
      v24 = v22 >> 62 ? sub_252E378C4() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v66;
      v26 = v66 >> 62;
      if (v66 >> 62)
      {
        v48 = sub_252E378C4();
        v28 = v48 + v24;
        if (__OFADD__(v48, v24))
        {
          goto LABEL_59;
        }
      }

      else
      {
        v27 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v28 = v27 + v24;
        if (__OFADD__(v27, v24))
        {
          goto LABEL_59;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v65 = v18;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        break;
      }

      if (v26)
      {
        goto LABEL_34;
      }

      v30 = v25 & 0xFFFFFFFFFFFFFF8;
      if (v28 > *(v30 + 24) >> 1)
      {
        goto LABEL_35;
      }

LABEL_36:
      v38 = *(v30 + 16);
      v39 = *(v30 + 24);
      if (v23)
      {
        v40 = sub_252E378C4();
        if (!v40)
        {
LABEL_14:

          v2 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/App/ACE/AceCommandDispatcher.swift";
          v1 = 0xD000000000000072;
          v15 = v63;
          if (v24 > 0)
          {
            goto LABEL_60;
          }

          goto LABEL_15;
        }
      }

      else
      {
        v40 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v40)
        {
          goto LABEL_14;
        }
      }

      if (((v39 >> 1) - v38) < v24)
      {
        goto LABEL_61;
      }

      v41 = v30 + 8 * v38 + 32;
      if (v23)
      {
        v57 = v24;
        if (v40 < 1)
        {
          goto LABEL_64;
        }

        sub_2529E6488(&qword_27F5435F8, &qword_27F5435F0, &unk_252E4D538, MEMORY[0x277D83988]);
        for (i = 0; i != v40; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5435F0, &unk_252E4D538);
          v43 = sub_2529FBD80(&v67, i, v22);
          v45 = *v44;
          (v43)(&v67, 0);
          *(v41 + 8 * i) = v45;
        }

        a1 = v56;
        v24 = v57;
      }

      else
      {
        swift_arrayInitWithCopy();
      }

      v2 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/App/ACE/AceCommandDispatcher.swift";
      v1 = 0xD000000000000072;
      if (v24 > 0)
      {
        v46 = *(v30 + 16);
        v19 = __OFADD__(v46, v24);
        v47 = v46 + v24;
        if (v19)
        {
          goto LABEL_63;
        }

        *(v30 + 16) = v47;
      }

      v15 = v63;
LABEL_15:
      if (v16 == v15)
      {
        goto LABEL_56;
      }
    }

    if (v26)
    {
LABEL_34:
      sub_252E378C4();
    }

LABEL_35:
    v66 = sub_252E37A54();
    v30 = v66 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_36;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_65;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_69:
    swift_once();
LABEL_57:
    v50 = sub_252E36AD4();
    __swift_project_value_buffer(v50, qword_27F544CB8);
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_252E379F4();

    v67 = v1 - 88;
    v68 = 0x8000000252E80660;
    v51 = [v8 description];
    v52 = sub_252E36F34();
    v54 = v53;

    MEMORY[0x2530AD570](v52, v54);

    sub_252CC3D90(v67, v68, 0xD000000000000072, (v2 - 32) | 0x8000000000000000);

    return v8;
  }

  v9 = *(a1 + 32);

  return v9;
}

char *sub_252B4D7EC(uint64_t a1, uint64_t a2, char a3)
{
  v24 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a3 & 1;
    v6 = (a1 + 40);
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      swift_bridgeObjectRetain_n();

      v9 = sub_252B4A004(v7, v8, a2, v5);
      v11 = v10;

      if (v11)
      {
        break;
      }

      v12 = v9;
      MEMORY[0x2530AD700]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v13 = v23;
      sub_25297A8D8(v7);
      sub_25297A904(v8);
      sub_252927D3C(v9);
      v6 += 2;
      if (!--v4)
      {
        v19 = v24;
        goto LABEL_12;
      }
    }

    v14 = v9;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    if ((swift_dynamicCast() & 1) != 0 && v22 == 15)
    {
      v16 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
      v17 = OBJC_IVAR___ControlHomeIntentResponse_code;
      swift_beginAccess();
      *&v16[v17] = 102;
      [v16 setUserActivity_];
      type metadata accessor for HomeEntityResponse();
      v18 = sub_252E37254();
      [v16 setEntityResponses_];
      sub_252927D3C(v9);
      sub_252927D3C(v9);

      return v16;
    }

    else
    {
      sub_252927D3C(v9);
    }
  }

  else
  {
    LOBYTE(v5) = a3 & 1;
    v19 = MEMORY[0x277D84F90];
    v13 = MEMORY[0x277D84F90];
LABEL_12:
    v20 = sub_252B4CFE0(v13);

    v9 = sub_252B4C40C(v19, v20, a2, v5);
  }

  return v9;
}

unint64_t sub_252B4DAD8()
{
  result = qword_27F5435D0;
  if (!qword_27F5435D0)
  {
    result = swift_getWitnessTable(asc_252E5A274, &type metadata for AceError, v0, v1);
    atomic_store(result, &qword_27F5435D0);
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252B4DB58(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252B4DBA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  v7 = *(v0 + 24);
  if (v7 && (sub_252956C1C(v7 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event, &v18 - v5), v8 = sub_252E36324(), v9 = *(v8 - 8), v10 = *(v9 + 48), v11 = v10(v6, 1, v8), sub_252938BBC(v6), v11 != 1))
  {
    sub_252956C1C(v7 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event, v4);
    if (v10(v4, 1, v8) == 1)
    {
      sub_252938BBC(v4);
      v12 = 0;
    }

    else
    {
      v14 = sub_252E36304();
      v16 = v15;
      (*(v9 + 8))(v4, v8);
      if (v14 == 0x7465736E7573 && v16 == 0xE600000000000000)
      {

        v12 = 1;
      }

      else
      {
        v12 = sub_252E37DB4();
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_252B4DDA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  v7 = *(v0 + 24);
  if (v7 && (sub_252956C1C(v7 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event, &v18 - v5), v8 = sub_252E36324(), v9 = *(v8 - 8), v10 = *(v9 + 48), v11 = v10(v6, 1, v8), sub_252938BBC(v6), v11 != 1))
  {
    sub_252956C1C(v7 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event, v4);
    if (v10(v4, 1, v8) == 1)
    {
      sub_252938BBC(v4);
      v12 = 0;
    }

    else
    {
      v14 = sub_252E36304();
      v16 = v15;
      (*(v9 + 8))(v4, v8);
      if (v14 == 0x657369726E7573 && v16 == 0xE700000000000000)
      {

        v12 = 1;
      }

      else
      {
        v12 = sub_252E37DB4();
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_252B4DFA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  v7 = *(v0 + 24);
  if (v7 && (sub_252956C1C(v7 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event, &v18 - v5), v8 = sub_252E36324(), v9 = *(v8 - 8), v10 = *(v9 + 48), v11 = v10(v6, 1, v8), sub_252938BBC(v6), v11 != 1))
  {
    sub_252956C1C(v7 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event, v4);
    if (v10(v4, 1, v8) == 1)
    {
      sub_252938BBC(v4);
      v12 = 0;
    }

    else
    {
      v14 = sub_252E36304();
      v16 = v15;
      (*(v9 + 8))(v4, v8);
      if (v14 == 0x685F657669727261 && v16 == 0xEB00000000656D6FLL)
      {

        v12 = 1;
      }

      else
      {
        v12 = sub_252E37DB4();
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_252B4E1AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  v7 = *(v0 + 24);
  if (v7 && (sub_252956C1C(v7 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event, &v18 - v5), v8 = sub_252E36324(), v9 = *(v8 - 8), v10 = *(v9 + 48), v11 = v10(v6, 1, v8), sub_252938BBC(v6), v11 != 1))
  {
    sub_252956C1C(v7 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event, v4);
    if (v10(v4, 1, v8) == 1)
    {
      sub_252938BBC(v4);
      v12 = 0;
    }

    else
    {
      v14 = sub_252E36304();
      v16 = v15;
      (*(v9 + 8))(v4, v8);
      if (v14 == 0x6F685F657661656CLL && v16 == 0xEA0000000000656DLL)
      {

        v12 = 1;
      }

      else
      {
        v12 = sub_252E37DB4();
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t QuestionTypeSemantic.rawValue.getter()
{
  if (*v0)
  {
    return 0x7265626D656D6572;
  }

  else
  {
    return 0x746567726F66;
  }
}

uint64_t static QuestionTypeSemantic.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7265626D656D6572;
  }

  else
  {
    v3 = 0x746567726F66;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x7265626D656D6572;
  }

  else
  {
    v5 = 0x746567726F66;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

HomeAutomationInternal::QuestionTypeSemantic_optional __swiftcall QuestionTypeSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252B4E500(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7265626D656D6572;
  }

  else
  {
    v3 = 0x746567726F66;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x7265626D656D6572;
  }

  else
  {
    v5 = 0x746567726F66;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252B4E5A4()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B4E624(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252B4E690(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B4E70C@<X0>(char *a2@<X8>)
{
  v3 = sub_252E37B74();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_252B4E76C(uint64_t *a1@<X8>)
{
  v2 = 0x746567726F66;
  if (*v1)
  {
    v2 = 0x7265626D656D6572;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_252B4E7A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7265626D656D6572;
  }

  else
  {
    v3 = 0x746567726F66;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x7265626D656D6572;
  }

  else
  {
    v5 = 0x746567726F66;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252B4E84C(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x7265626D656D6572;
  }

  else
  {
    v3 = 0x746567726F66;
  }

  if (*a2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (v2)
  {
    v5 = 0x7265626D656D6572;
  }

  else
  {
    v5 = 0x746567726F66;
  }

  if (v2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_252B4E904(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7265626D656D6572;
  }

  else
  {
    v3 = 0x746567726F66;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x7265626D656D6572;
  }

  else
  {
    v5 = 0x746567726F66;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_252B4E9BC(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x7265626D656D6572;
  }

  else
  {
    v3 = 0x746567726F66;
  }

  if (*a2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (v2)
  {
    v5 = 0x7265626D656D6572;
  }

  else
  {
    v5 = 0x746567726F66;
  }

  if (v2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252B4EB20(uint64_t a1, uint64_t a2)
{
  v4 = sub_252B4ED10();
  v5 = sub_252B4ED64();
  v6 = sub_252B4EDB8();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_252B4EB94()
{
  result = qword_27F543618;
  if (!qword_27F543618)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QuestionTypeSemantic, &type metadata for QuestionTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F543618);
  }

  return result;
}

unint64_t sub_252B4EBEC()
{
  result = qword_27F543620;
  if (!qword_27F543620)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QuestionTypeSemantic, &type metadata for QuestionTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F543620);
  }

  return result;
}

unint64_t sub_252B4EC44()
{
  result = qword_27F543628;
  if (!qword_27F543628)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F543630, &qword_252E4D670);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F543628);
  }

  return result;
}

unint64_t sub_252B4ECAC()
{
  result = qword_27F543638;
  if (!qword_27F543638)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QuestionTypeSemantic, &type metadata for QuestionTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F543638);
  }

  return result;
}

unint64_t sub_252B4ED10()
{
  result = qword_27F543640;
  if (!qword_27F543640)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QuestionTypeSemantic, &type metadata for QuestionTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F543640);
  }

  return result;
}

unint64_t sub_252B4ED64()
{
  result = qword_27F543648;
  if (!qword_27F543648)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QuestionTypeSemantic, &type metadata for QuestionTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F543648);
  }

  return result;
}

unint64_t sub_252B4EDB8()
{
  result = qword_27F543650;
  if (!qword_27F543650)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QuestionTypeSemantic, &type metadata for QuestionTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F543650);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_252B4EE44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_252B4EE8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_252B4EF74(unint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  if (a1 >> 62)
  {
    v8 = sub_252E378C4();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v15 = MEMORY[0x277D84F90];
    result = sub_252E37AB4();
    if (v8 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = 0;
        do
        {
          v11 = v10 + 1;
          MEMORY[0x2530ADF00]();
          a2(0);
          __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
          swift_dynamicCast();
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          v10 = v11;
        }

        while (v8 != v11);
      }

      else
      {
        v12 = (a1 + 32);
        a2(0);
        do
        {
          v13 = *v12++;
          v14 = v13;
          __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
          swift_dynamicCast();
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          --v8;
        }

        while (v8);
      }

      return v15;
    }
  }

  return result;
}

uint64_t sub_252B4F134(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_2529AA400(0, v1, 0);
    v4 = a1 + 40;
    v2 = v11;
    do
    {
      sub_2529904E4(*(v4 - 8));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540880, &qword_252E53B20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402B0, &qword_252E3C0E0);
      swift_dynamicCast();
      v6 = *(v11 + 16);
      v5 = *(v11 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2529AA400((v5 > 1), v6 + 1, 1);
      }

      *(v11 + 16) = v6 + 1;
      v7 = v11 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_252B4F270(uint64_t a1)
{
  v2 = sub_252E34AB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2529AA520(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2529AA520((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = MEMORY[0x277D5E670];
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
      v9(boxed_opaque_existential_0, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_252927BEC(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_252B4F43C(uint64_t a1)
{
  v2 = sub_252E34544();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540288, &qword_252E41DE0);
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2529AA600(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2529AA600((v14 > 1), v15 + 1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v15 + 1;
      sub_252A3E5E0(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_252B4F670()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if (v2 >> 62)
  {
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v16 = MEMORY[0x277D84F90];
    result = sub_252E37AB4();
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v6, v2);
      }

      else
      {
      }

      ++v6;
      sub_252A03108();

      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    while (v3 != v6);
    v7 = v16;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = sub_252E24D98(*(v1 + 48));
  if (v9)
  {
    v10 = 5;
  }

  else
  {
    v10 = v8;
  }

  type metadata accessor for ControlHomeIntentResponse.Builder();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v4;
  v12 = sub_252B4EF74(v7, type metadata accessor for HomeEntityResponse, &qword_27F540CC8, &unk_252E3F8F0);

  v13 = sub_25297D0C0(v12);

  v15 = (*(*v13 + 176))(v14);

  return v15;
}

uint64_t sub_252B4F854()
{
  v0 = sub_252A05170();
  type metadata accessor for ControlHomeIntent.Builder();
  swift_allocObject();
  v1 = *(*ControlHomeIntent.Builder.init()() + 184);
  v2 = v0;
  v3 = v1(v0);

  v4 = (*(*v3 + 224))();

  sub_25293DEE0(__src);
  memcpy(v8, __src, sizeof(v8));
  v5 = v4;
  v6 = sub_252953488(v4, v8, 0);

  return v6;
}

uint64_t sub_252B4F96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v7 = sub_252E36AB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v14 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v8 + 16))(v11, v13, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = *(v8 + 32);
  v38 = v7;
  v18(v17 + v15, v11, v7);
  v19 = (v17 + v16);
  *v19 = a3;
  v19[1] = a4;
  aBlock = 0xD000000000000027;
  v40 = 0x8000000252E80C30;

  MEMORY[0x2530AD570](a1, v37);
  v21 = aBlock;
  v20 = v40;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D30);

  v23 = sub_252E36AC4();
  v24 = sub_252E374C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_252BE2CE0(v21, v20, &aBlock);
    _os_log_impl(&dword_252917000, v23, v24, "Getting record from: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530AED00](v26, -1, -1);
    MEMORY[0x2530AED00](v25, -1, -1);
  }

  v27 = v38;
  v28 = qword_27F545F50;
  if (qword_27F545F50)
  {
    v29 = qword_27F545F50;
  }

  else
  {
    sub_252E35A24();
    v30 = sub_252E35A14();
    v31 = qword_27F545F50;
    qword_27F545F50 = v30;
    v29 = v30;

    v27 = v38;
    v28 = 0;
  }

  v32 = v28;
  v33 = sub_252E36F04();

  v34 = swift_allocObject();
  *(v34 + 16) = sub_252B5C840;
  *(v34 + 24) = v17;
  v43 = sub_252B5B030;
  v44 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_252B567F8;
  v42 = &block_descriptor_25;
  v35 = _Block_copy(&aBlock);

  [v29 valueForKey:v33 completionHandler:v35];
  _Block_release(v35);

  return (*(v8 + 8))(v13, v27);
}

uint64_t sub_252B4FDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v7 = sub_252E36AB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v14 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v8 + 16))(v11, v13, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = *(v8 + 32);
  v38 = v7;
  v18(v17 + v15, v11, v7);
  v19 = (v17 + v16);
  *v19 = a3;
  v19[1] = a4;
  aBlock = 0xD000000000000029;
  v40 = 0x8000000252E80C60;

  MEMORY[0x2530AD570](a1, v37);
  v21 = aBlock;
  v20 = v40;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D30);

  v23 = sub_252E36AC4();
  v24 = sub_252E374C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_252BE2CE0(v21, v20, &aBlock);
    _os_log_impl(&dword_252917000, v23, v24, "Getting record from: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530AED00](v26, -1, -1);
    MEMORY[0x2530AED00](v25, -1, -1);
  }

  v27 = v38;
  v28 = qword_27F545F50;
  if (qword_27F545F50)
  {
    v29 = qword_27F545F50;
  }

  else
  {
    sub_252E35A24();
    v30 = sub_252E35A14();
    v31 = qword_27F545F50;
    qword_27F545F50 = v30;
    v29 = v30;

    v27 = v38;
    v28 = 0;
  }

  v32 = v28;
  v33 = sub_252E36F04();

  v34 = swift_allocObject();
  *(v34 + 16) = sub_252B5C844;
  *(v34 + 24) = v17;
  v43 = sub_252B5BC4C;
  v44 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_252B567F8;
  v42 = &block_descriptor_34_0;
  v35 = _Block_copy(&aBlock);

  [v29 valueForKey:v33 completionHandler:v35];
  _Block_release(v35);

  return (*(v8 + 8))(v13, v27);
}

uint64_t sub_252B50274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v7 = sub_252E36AB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v14 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v8 + 16))(v11, v13, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = *(v8 + 32);
  v38 = v7;
  v18(v17 + v15, v11, v7);
  v19 = (v17 + v16);
  *v19 = a3;
  v19[1] = a4;
  aBlock = 0xD00000000000002ELL;
  v40 = 0x8000000252E80C90;

  MEMORY[0x2530AD570](a1, v37);
  v21 = aBlock;
  v20 = v40;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D30);

  v23 = sub_252E36AC4();
  v24 = sub_252E374C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_252BE2CE0(v21, v20, &aBlock);
    _os_log_impl(&dword_252917000, v23, v24, "Getting record from: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530AED00](v26, -1, -1);
    MEMORY[0x2530AED00](v25, -1, -1);
  }

  v27 = v38;
  v28 = qword_27F545F50;
  if (qword_27F545F50)
  {
    v29 = qword_27F545F50;
  }

  else
  {
    sub_252E35A24();
    v30 = sub_252E35A14();
    v31 = qword_27F545F50;
    qword_27F545F50 = v30;
    v29 = v30;

    v27 = v38;
    v28 = 0;
  }

  v32 = v28;
  v33 = sub_252E36F04();

  v34 = swift_allocObject();
  *(v34 + 16) = sub_252B5C844;
  *(v34 + 24) = v17;
  v43 = sub_252B5BD40;
  v44 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_252B567F8;
  v42 = &block_descriptor_43;
  v35 = _Block_copy(&aBlock);

  [v29 valueForKey:v33 completionHandler:v35];
  _Block_release(v35);

  return (*(v8 + 8))(v13, v27);
}

uint64_t sub_252B506F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v7 = sub_252E36AB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v14 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v8 + 16))(v11, v13, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = *(v8 + 32);
  v38 = v7;
  v18(v17 + v15, v11, v7);
  v19 = (v17 + v16);
  *v19 = a3;
  v19[1] = a4;
  aBlock = 0xD000000000000054;
  v40 = 0x8000000252E80CC0;

  MEMORY[0x2530AD570](a1, v37);
  v21 = aBlock;
  v20 = v40;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D30);

  v23 = sub_252E36AC4();
  v24 = sub_252E374C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_252BE2CE0(v21, v20, &aBlock);
    _os_log_impl(&dword_252917000, v23, v24, "Getting record from: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530AED00](v26, -1, -1);
    MEMORY[0x2530AED00](v25, -1, -1);
  }

  v27 = v38;
  v28 = qword_27F545F50;
  if (qword_27F545F50)
  {
    v29 = qword_27F545F50;
  }

  else
  {
    sub_252E35A24();
    v30 = sub_252E35A14();
    v31 = qword_27F545F50;
    qword_27F545F50 = v30;
    v29 = v30;

    v27 = v38;
    v28 = 0;
  }

  v32 = v28;
  v33 = sub_252E36F04();

  v34 = swift_allocObject();
  *(v34 + 16) = sub_252B5BDA0;
  *(v34 + 24) = v17;
  v43 = sub_252B5BDA4;
  v44 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_252B567F8;
  v42 = &block_descriptor_52;
  v35 = _Block_copy(&aBlock);

  [v29 valueForKey:v33 completionHandler:v35];
  _Block_release(v35);

  return (*(v8 + 8))(v13, v27);
}

uint64_t sub_252B50B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v7 = sub_252E36AB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v14 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v8 + 16))(v11, v13, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = *(v8 + 32);
  v38 = v7;
  v18(v17 + v15, v11, v7);
  v19 = (v17 + v16);
  *v19 = a3;
  v19[1] = a4;
  aBlock = 0xD000000000000026;
  v40 = 0x8000000252E80E10;

  MEMORY[0x2530AD570](a1, v37);
  v21 = aBlock;
  v20 = v40;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D30);

  v23 = sub_252E36AC4();
  v24 = sub_252E374C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_252BE2CE0(v21, v20, &aBlock);
    _os_log_impl(&dword_252917000, v23, v24, "Getting record from: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530AED00](v26, -1, -1);
    MEMORY[0x2530AED00](v25, -1, -1);
  }

  v27 = v38;
  v28 = qword_27F545F50;
  if (qword_27F545F50)
  {
    v29 = qword_27F545F50;
  }

  else
  {
    sub_252E35A24();
    v30 = sub_252E35A14();
    v31 = qword_27F545F50;
    qword_27F545F50 = v30;
    v29 = v30;

    v27 = v38;
    v28 = 0;
  }

  v32 = v28;
  v33 = sub_252E36F04();

  v34 = swift_allocObject();
  *(v34 + 16) = sub_252B5BE1C;
  *(v34 + 24) = v17;
  v43 = sub_252B5BEBC;
  v44 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_252B567F8;
  v42 = &block_descriptor_64;
  v35 = _Block_copy(&aBlock);

  [v29 valueForKey:v33 completionHandler:v35];
  _Block_release(v35);

  return (*(v8 + 8))(v13, v27);
}

uint64_t sub_252B51000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v7 = sub_252E36AB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v14 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v8 + 16))(v11, v13, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = *(v8 + 32);
  v38 = v7;
  v18(v17 + v15, v11, v7);
  v19 = (v17 + v16);
  *v19 = a3;
  v19[1] = a4;
  aBlock = 0xD00000000000002ALL;
  v40 = 0x8000000252E80BC0;

  MEMORY[0x2530AD570](a1, v37);
  v21 = aBlock;
  v20 = v40;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D30);

  v23 = sub_252E36AC4();
  v24 = sub_252E374C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_252BE2CE0(v21, v20, &aBlock);
    _os_log_impl(&dword_252917000, v23, v24, "Getting record from: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530AED00](v26, -1, -1);
    MEMORY[0x2530AED00](v25, -1, -1);
  }

  v27 = v38;
  v28 = qword_27F545F50;
  if (qword_27F545F50)
  {
    v29 = qword_27F545F50;
  }

  else
  {
    sub_252E35A24();
    v30 = sub_252E35A14();
    v31 = qword_27F545F50;
    qword_27F545F50 = v30;
    v29 = v30;

    v27 = v38;
    v28 = 0;
  }

  v32 = v28;
  v33 = sub_252E36F04();

  v34 = swift_allocObject();
  *(v34 + 16) = sub_252B5C840;
  *(v34 + 24) = v17;
  v43 = sub_252B5AEC8;
  v44 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_252B567F8;
  v42 = &block_descriptor_16_0;
  v35 = _Block_copy(&aBlock);

  [v29 valueForKey:v33 completionHandler:v35];
  _Block_release(v35);

  return (*(v8 + 8))(v13, v27);
}

uint64_t sub_252B51484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v7 = sub_252E36AB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v14 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v8 + 16))(v11, v13, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = *(v8 + 32);
  v38 = v7;
  v18(v17 + v15, v11, v7);
  v19 = (v17 + v16);
  *v19 = a3;
  v19[1] = a4;
  aBlock = 0xD000000000000023;
  v40 = 0x8000000252E81160;

  MEMORY[0x2530AD570](a1, v37);
  v21 = aBlock;
  v20 = v40;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D30);

  v23 = sub_252E36AC4();
  v24 = sub_252E374C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_252BE2CE0(v21, v20, &aBlock);
    _os_log_impl(&dword_252917000, v23, v24, "Getting record from: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530AED00](v26, -1, -1);
    MEMORY[0x2530AED00](v25, -1, -1);
  }

  v27 = v38;
  v28 = qword_27F545F50;
  if (qword_27F545F50)
  {
    v29 = qword_27F545F50;
  }

  else
  {
    sub_252E35A24();
    v30 = sub_252E35A14();
    v31 = qword_27F545F50;
    qword_27F545F50 = v30;
    v29 = v30;

    v27 = v38;
    v28 = 0;
  }

  v32 = v28;
  v33 = sub_252E36F04();

  v34 = swift_allocObject();
  *(v34 + 16) = sub_252B5BFCC;
  *(v34 + 24) = v17;
  v43 = sub_252B5BFD0;
  v44 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_252B567F8;
  v42 = &block_descriptor_88;
  v35 = _Block_copy(&aBlock);

  [v29 valueForKey:v33 completionHandler:v35];
  _Block_release(v35);

  return (*(v8 + 8))(v13, v27);
}

unint64_t sub_252B51908(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6E6F6973726576;
    v7 = 0xD000000000000011;
    if (a1 != 2)
    {
      v7 = 0x65736E6F70736572;
    }

    if (a1)
    {
      v6 = 0x696669746E656469;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6C616E696769726FLL;
    v2 = 0xD000000000000015;
    if (a1 != 9)
    {
      v2 = 0x6D614E656E656373;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6B73615472657375;
    v4 = 0x6574617473;
    if (a1 != 6)
    {
      v4 = 0x79746964696C6176;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_252B51A90(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5436B0, &qword_252E4D888);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252B5BB5C();
  sub_252E37F84();
  LOBYTE(v11) = 0;
  sub_252E37CF4();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_252E37CF4();
    v11 = v3[4];
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    sub_252984B28(&qword_27F540B18, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_252E37D54();
    v11 = v3[5];
    HIBYTE(v10) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543698, &qword_252E4D880);
    sub_252B5BBB0(&qword_27F5436B8, &qword_27F5436C0, asc_252E40E08, MEMORY[0x277D83948]);
    sub_252E37D54();
    LOBYTE(v11) = 4;
    sub_252E37D34();
    v11 = v3[7];
    HIBYTE(v10) = 5;
    type metadata accessor for CodableUserTask();
    sub_252B5AF54(&qword_27F541988, type metadata accessor for CodableUserTask, aY_10);
    sub_252E37D54();
    LOBYTE(v11) = 6;
    sub_252E37CF4();
    LOBYTE(v11) = 7;
    sub_252E37D14();
    LOBYTE(v11) = 8;
    sub_252E37C94();
    LOBYTE(v11) = 9;
    sub_252E37C94();
    LOBYTE(v11) = 10;
    sub_252E37C94();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_252B51E68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252B5B068(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252B51E90(uint64_t a1)
{
  v2 = sub_252B5BB5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252B51ECC(uint64_t a1)
{
  v2 = sub_252B5BB5C();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_252B51F08@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_252B5B400(a2, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v9;
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_252B51FB8()
{
  result = qword_27F543670;
  if (!qword_27F543670)
  {
    result = swift_getWitnessTable(asc_252E4D800, &type metadata for AsyncInteractionRecord, v0, v1);
    atomic_store(result, &qword_27F543670);
  }

  return result;
}

unint64_t sub_252B5200C()
{
  result = qword_27F543678;
  if (!qword_27F543678)
  {
    result = swift_getWitnessTable(byte_252E4D7D8, &type metadata for AsyncInteractionRecord, v0, v1);
    atomic_store(result, &qword_27F543678);
  }

  return result;
}

uint64_t sub_252B52060(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543708, &qword_252E4DA70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252B5C670();
  sub_252E37F84();
  v13 = 0;
  sub_252E37CF4();
  if (!v2)
  {
    v12 = 1;
    sub_252E37CF4();
    v11 = *(v3 + 32);
    v10[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    sub_252984B28(&qword_27F540B18, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_252E37D54();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_252B52278()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_252B522DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252B5C300(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252B52304(uint64_t a1)
{
  v2 = sub_252B5C670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252B52340(uint64_t a1)
{
  v2 = sub_252B5C670();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_252B5237C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_252B5C428(a2, v6);
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

uint64_t sub_252B523DC()
{
  v7 = sub_252E37564();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_252E37534();
  MEMORY[0x28223BE20](v3);
  v4 = sub_252E36D04();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_25293F638(0, &qword_2814B0218, 0x277D85C78);
  sub_252E36CE4();
  v8 = MEMORY[0x277D84F90];
  sub_252B5AF54(&qword_2814B0220, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540300, &qword_252E3C170);
  sub_252936E8C(&qword_2814B0278, &qword_27F540300, &qword_252E3C170);
  sub_252E37824();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_252E37594();
  qword_27F543668 = result;
  return result;
}

void sub_252B5263C(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544D30);

    v7 = a1;
    oslog = sub_252E36AC4();
    v8 = sub_252E374D4();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_252BE2CE0(a2, a3, &v16);
      *(v9 + 12) = 2080;
      v11 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
      v12 = sub_252E36F94();
      v14 = sub_252BE2CE0(v12, v13, &v16);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_252917000, oslog, v8, "    Exception writing on Coreknowledge for the AsyncInteractionRecord\n    with id: %s. Error: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v10, -1, -1);
      MEMORY[0x2530AED00](v9, -1, -1);
    }

    else
    {
    }
  }
}

void sub_252B5282C(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6)
{
  v44 = a6;
  v47 = a5;
  v10 = sub_252E36C84();
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = (v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_252E36D54();
  v49 = *(v13 - 8);
  v50 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v46 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v48 = v43 - v16;
  v17 = sub_252E36AD4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v17, qword_27F544D30);
  v22 = *(v18 + 16);
  v43[1] = v21;
  v22(v20);
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E80D20);
  v53 = a1;
  MEMORY[0x2530AD570](a1, a2);
  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E80D50);
  v55 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5436C8, &unk_252E4D890);
  v23 = sub_252E36F94();
  MEMORY[0x2530AD570](v23);

  MEMORY[0x2530AD570](0x3A65746174730A2CLL, 0xE900000000000020);
  v54 = a2;
  v45 = a4;
  if (a4 <= 1u)
  {
    if (a4)
    {
      v25 = 0xE700000000000000;
      v24 = 0x676E696F476E6FLL;
    }

    else
    {
      v25 = 0xEB0000000064657ALL;
      v24 = 0x696C616974696E69;
    }

    goto LABEL_11;
  }

  if (a4 == 2)
  {
    v25 = 0xEE006E6967756C50;
    v24 = 0x676E696B6F766E69;
LABEL_11:
    v26 = v44;
    goto LABEL_12;
  }

  v24 = 0;
  v25 = 0;
  v26 = v44;
  if (a4 == 3)
  {
    v25 = 0x8000000252E80DF0;
    v24 = 0xD000000000000010;
  }

LABEL_12:
  v55 = v24;
  v56 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v27 = sub_252E36F94();
  MEMORY[0x2530AD570](v27);

  MEMORY[0x2530AD570](0x203A65646F630A2CLL, 0xE800000000000000);
  v28 = v26 & 1;
  v29 = v47;
  if (v28)
  {
    v30 = 0;
  }

  else
  {
    v30 = v47;
  }

  v55 = v30;
  LOBYTE(v56) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
  v31 = sub_252E36F94();
  MEMORY[0x2530AD570](v31);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  sub_252CC3D90(v57, v58, 0xD000000000000086, 0x8000000252E80B30);

  (*(v18 + 8))(v20, v17);
  v32 = dispatch_semaphore_create(0);
  v33 = swift_allocObject();
  v35 = v53;
  v34 = v54;
  *(v33 + 16) = v53;
  *(v33 + 24) = v34;
  *(v33 + 32) = v45;
  *(v33 + 40) = a3;
  *(v33 + 48) = v29;
  *(v33 + 56) = v28;
  *(v33 + 64) = v32;

  v36 = v32;
  sub_252B50B7C(v35, v34, sub_252B5BE04, v33);

  v37 = v46;
  sub_252E36D14();
  *v12 = 200;
  v39 = v51;
  v38 = v52;
  (*(v51 + 104))(v12, *MEMORY[0x277D85178], v52);
  v40 = v48;
  sub_252E36D24();
  (*(v39 + 8))(v12, v38);
  v41 = v50;
  v42 = *(v49 + 8);
  v42(v37, v50);
  sub_252E375F4();
  v42(v40, v41);
  if (sub_252E36C94())
  {
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000046, 0x8000000252E80D70);
    MEMORY[0x2530AD570](v35, v34);
    sub_252CC4050(v57, v58, 0xD000000000000086, 0x8000000252E80B30, 0xD000000000000023, 0x8000000252E80DC0, 209);
  }

  else
  {
  }
}

uint64_t sub_252B52E88(__int128 *a1, uint64_t a2, unint64_t a3, unsigned __int8 a4, unint64_t a5, uint64_t a6, int a7, void *a8)
{
  v74 = a7;
  v75 = a6;
  v14 = sub_252E36AD4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[7];
  v122 = a1[6];
  v123 = v18;
  v124 = *(a1 + 16);
  v19 = a1[3];
  v118 = a1[2];
  v119 = v19;
  v20 = a1[5];
  v120 = a1[4];
  v121 = v20;
  v21 = a1[1];
  v116 = *a1;
  v117 = v21;
  if (sub_252AFB7A0(&v116) == 1)
  {
    if (qword_27F53F4D8 == -1)
    {
LABEL_3:
      __swift_project_value_buffer(v14, qword_27F544D30);
      *&v107 = 0;
      *(&v107 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E80E40);
      MEMORY[0x2530AD570](a2, a3);
      MEMORY[0x2530AD570](46, 0xE100000000000000);
      sub_252CC4050(v107, *(&v107 + 1), 0xD000000000000086, 0x8000000252E80B30, 0xD000000000000023, 0x8000000252E80DC0, 173);
    }

LABEL_40:
    swift_once();
    goto LABEL_3;
  }

  v71 = v17;
  v72 = v15;
  v94 = v116;
  v95 = v117;
  v23 = *(&v118 + 1);
  v96 = v118;
  v70 = v119;
  v24 = *(&v120 + 1);
  v93 = v124;
  v91 = v122;
  v92 = v123;
  v90 = v121;
  v66 = *(&v119 + 1);
  if (a4 <= 1u)
  {
    if (a4)
    {
      v25 = 0xE700000000000000;
      v26 = 0x676E696F476E6FLL;
    }

    else
    {
      v25 = 0xEB0000000064657ALL;
      v26 = 0x696C616974696E69;
    }
  }

  else if (a4 == 2)
  {
    v25 = 0xEE006E6967756C50;
    v26 = 0x676E696B6F766E69;
  }

  else
  {
    if (a4 != 3)
    {
      *&v65 = v120;
      v27 = a1[7];
      v113 = a1[6];
      v114 = v27;
      v115 = *(a1 + 16);
      v28 = a1[3];
      v109 = a1[2];
      v110 = v28;
      v29 = a1[5];
      v111 = a1[4];
      v112 = v29;
      v30 = a1[1];
      v107 = *a1;
      v108 = v30;
      sub_252B5ADE8(&v107, v97);
      goto LABEL_14;
    }

    v25 = 0x8000000252E80DF0;
    v26 = 0xD000000000000010;
  }

  *&v65 = v26;
  v31 = a1[7];
  v113 = a1[6];
  v114 = v31;
  v115 = *(a1 + 16);
  v32 = a1[3];
  v109 = a1[2];
  v110 = v32;
  v33 = a1[5];
  v111 = a1[4];
  v112 = v33;
  v34 = a1[1];
  v107 = *a1;
  v108 = v34;
  sub_252B5ADE8(&v107, v97);

  v24 = v25;
LABEL_14:
  v35 = *(&v118 + 1);
  v68 = a2;
  v69 = a3;
  v67 = a8;
  *(&v65 + 1) = v24;
  v73 = v14;
  if (a5)
  {
    v76 = *(&v118 + 1);
    if (*(&v118 + 1) >> 62)
    {
      v36 = sub_252E378C4();
    }

    else
    {
      v36 = *((*(&v118 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = MEMORY[0x277D84F90];
    if (v36)
    {
      *&v107 = MEMORY[0x277D84F90];

      result = sub_252E37AB4();
      if (v36 < 0)
      {
        goto LABEL_63;
      }

      v38 = 0;
      v39 = v76 & 0xC000000000000001;
      do
      {
        if (v39)
        {
          MEMORY[0x2530ADF00](v38, v76);
        }

        else
        {
        }

        ++v38;
        a2 = sub_252A03108();

        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      while (v36 != v38);
      v40 = v107;
    }

    else
    {

      v40 = MEMORY[0x277D84F90];
    }

    *&v107 = v40;
    sub_25297A894(a5);
    v41 = v107;
    v14 = combineEntityResponses(entityResponses:)(v107);
    *&v97[0] = v37;
    if (v14 >> 62)
    {
      v42 = sub_252E378C4();
      if (v42)
      {
LABEL_28:
        v64 = v41;
        v43 = 0;
        while (1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v44 = MEMORY[0x2530ADF00](v43, v14);
          }

          else
          {
            if (v43 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }

            v44 = *(v14 + 8 * v43 + 32);
          }

          v45 = v44;
          a3 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            break;
          }

          type metadata accessor for CodableEntityResponse();
          swift_allocObject();
          a2 = sub_252A066DC(v45);

          MEMORY[0x2530AD700](v46);
          if (*((*&v97[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v97[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          ++v43;
          if (a3 == v42)
          {
            v23 = *&v97[0];
            goto LABEL_44;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    else
    {
      v42 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v42)
      {
        goto LABEL_28;
      }
    }

    v23 = MEMORY[0x277D84F90];
LABEL_44:

    v35 = v23;
  }

  if (v74)
  {
    v47 = v70;
  }

  else
  {
    v47 = v75;
  }

  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v48 = v73;
  v49 = __swift_project_value_buffer(v73, qword_27F544D30);
  (*(v72 + 16))(v71, v49, v48);
  *&v107 = 0;
  *(&v107 + 1) = 0xE000000000000000;
  sub_252E379F4();

  v88 = 0xD000000000000026;
  v89 = 0x8000000252E80E80;
  v50 = v35;
  if (v35 >> 62)
  {
    v51 = sub_252E378C4();
  }

  else
  {
    v51 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = MEMORY[0x277D84F90];
  if (!v51)
  {
    goto LABEL_60;
  }

  *&v107 = MEMORY[0x277D84F90];
  result = sub_252E37AB4();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v53 = 0;
    do
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v53, v50);
      }

      else
      {
      }

      ++v53;
      sub_252A03108();

      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    while (v51 != v53);
    v52 = v107;
LABEL_60:
    v54 = type metadata accessor for HomeEntityResponse();
    v55 = MEMORY[0x2530AD730](v52, v54);
    v57 = v56;

    MEMORY[0x2530AD570](v55, v57);

    v58 = v71;
    sub_252CC3D90(v88, v89, 0xD000000000000086, 0x8000000252E80B30);

    (*(v72 + 8))(v58, v73);
    v97[0] = v94;
    v97[1] = v95;
    v103 = v90;
    v104 = v91;
    v105 = v92;
    v107 = v94;
    v108 = v95;
    v114 = v92;
    v106 = v93;
    v98 = v96;
    v99 = v23;
    v60 = *(&v65 + 1);
    v59 = v66;
    v100 = v47;
    v101 = v66;
    v61 = v65;
    v102 = v65;
    *&v109 = v96;
    *(&v109 + 1) = v23;
    *&v110 = v47;
    *(&v110 + 1) = v66;
    v111 = v65;
    v115 = v93;
    v112 = v90;
    v113 = v91;
    v62 = v69;

    sub_252B5ADE8(&v107, v77);
    v63 = v67;
    sub_252DBF330(v97, v68, v62, &v107, v63);

    sub_252B5AE20(&v107);
    v77[0] = v94;
    v77[1] = v95;
    v78 = v96;
    v79 = v23;
    v80 = v47;
    v81 = v59;
    v82 = v61;
    v83 = v60;
    v84 = v90;
    v85 = v91;
    v86 = v92;
    v87 = v93;
    return sub_252B5AE20(v77);
  }

  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_252B5377C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_252E36AD4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v37 = v11;
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v10, qword_27F544D30);

    v14 = a1;
    v15 = sub_252E36AC4();
    v16 = sub_252E374D4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v36[1] = a5;
      v18 = v17;
      v19 = swift_slowAlloc();
      v36[0] = a4;
      v20 = v19;
      v39 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_252BE2CE0(a2, a3, &v39);
      *(v18 + 12) = 2080;
      v38 = a1;
      v21 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
      v22 = sub_252E36F94();
      v24 = sub_252BE2CE0(v22, v23, &v39);

      *(v18 + 14) = v24;
      _os_log_impl(&dword_252917000, v15, v16, "Exception writing on Coreknowledge for AsyncInteractionRecord\nwith id: %s. Error: %s", v18, 0x16u);
      swift_arrayDestroy();
      v25 = v20;
      a4 = v36[0];
      MEMORY[0x2530AED00](v25, -1, -1);
      MEMORY[0x2530AED00](v18, -1, -1);
    }

    v11 = v37;
  }

  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v10, qword_27F544D30);
  (*(v11 + 16))(v13, v26, v10);
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_252E379F4();

  v39 = 0xD000000000000010;
  v40 = 0x8000000252E80EB0;
  MEMORY[0x2530AD570](a2, a3);
  MEMORY[0x2530AD570](0x6465746164707520, 0xED0000203A6F7420);
  v27 = *(a4 + 40);
  if (v27 >> 62)
  {
    v28 = sub_252E378C4();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = MEMORY[0x277D84F90];
  if (!v28)
  {
    goto LABEL_19;
  }

  v38 = MEMORY[0x277D84F90];
  result = sub_252E37AB4();
  if ((v28 & 0x8000000000000000) == 0)
  {
    v37 = v10;
    v31 = 0;
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v31, v27);
      }

      else
      {
      }

      ++v31;
      sub_252A03108();

      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    while (v28 != v31);
    v10 = v37;
    v29 = v38;
LABEL_19:
    v32 = type metadata accessor for HomeEntityResponse();
    v33 = MEMORY[0x2530AD730](v29, v32);
    v35 = v34;

    MEMORY[0x2530AD570](v33, v35);

    sub_252CC3D90(v39, v40, 0xD000000000000086, 0x8000000252E80B30);

    (*(v11 + 8))(v13, v10);
    return sub_252E37614();
  }

  __break(1u);
  return result;
}

uint64_t sub_252B53C20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  v9 = a4;
  sub_252B50B7C(a1, a2, sub_252B5C114, v8);
}

uint64_t sub_252B53CBC(__int128 *a1, uint64_t a2)
{
  v3 = a1[7];
  v23 = a1[6];
  v24 = v3;
  v25 = *(a1 + 16);
  v4 = a1[3];
  v19 = a1[2];
  v20 = v4;
  v5 = a1[5];
  v21 = a1[4];
  v22 = v5;
  v6 = a1[1];
  v17 = *a1;
  v18 = v6;
  swift_beginAccess();
  v7 = *(a2 + 128);
  v26[6] = *(a2 + 112);
  v26[7] = v7;
  v27 = *(a2 + 144);
  v8 = *(a2 + 64);
  v26[2] = *(a2 + 48);
  v26[3] = v8;
  v9 = *(a2 + 96);
  v26[4] = *(a2 + 80);
  v26[5] = v9;
  v10 = *(a2 + 32);
  v26[0] = *(a2 + 16);
  v26[1] = v10;
  v11 = v22;
  *(a2 + 80) = v21;
  *(a2 + 96) = v11;
  v12 = v24;
  *(a2 + 112) = v23;
  *(a2 + 128) = v12;
  *(a2 + 144) = v25;
  v13 = v20;
  *(a2 + 48) = v19;
  *(a2 + 64) = v13;
  v14 = v18;
  *(a2 + 16) = v17;
  *(a2 + 32) = v14;
  sub_252938414(&v17, &v16, &qword_27F543160, &qword_252E4E950);
  sub_25293847C(v26, &qword_27F543160, &qword_252E4E950);
  return sub_252E37614();
}

uint64_t sub_252B53DB4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_252B50B7C(a1, a2, sub_252B5C0B8, v4);
}

uint64_t sub_252B53E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 80);
  v6 = *(a1 + 112);
  v24 = *(a1 + 96);
  v25 = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 48);
  v20 = *(a1 + 32);
  v21 = v8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 80);
  v22 = *(a1 + 64);
  v23 = v10;
  v11 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v11;
  v12 = *(a1 + 112);
  v33 = v24;
  v34 = v12;
  v29 = v20;
  v30 = v9;
  v31 = v22;
  v32 = v5;
  v26 = *(a1 + 128);
  v35 = *(a1 + 128);
  v27 = v19[0];
  v28 = v7;
  if (sub_252AFB7A0(&v27) == 1)
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544D30);
    sub_252E379F4();

    MEMORY[0x2530AD570](a2, a3);
    sub_252CC4050(0xD00000000000001FLL, 0x8000000252E81270, 0xD000000000000086, 0x8000000252E80B30, 0xD000000000000013, 0x8000000252E81290, 239);
  }

  else
  {
    v17[6] = v33;
    v17[7] = v34;
    v18 = v35;
    v17[2] = v29;
    v17[3] = v30;
    v17[4] = v31;
    v17[5] = v32;
    v17[0] = v27;
    v17[1] = v28;
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    sub_252938414(v19, v16, &qword_27F543160, &qword_252E4E950);

    sub_252D70068(v17, sub_252B5C0C0, v15);

    return sub_25293847C(v19, &qword_27F543160, &qword_252E4E950);
  }
}

uint64_t sub_252B54068(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544D30);

    v7 = a1;
    v8 = sub_252E36AC4();
    v9 = sub_252E374D4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_252BE2CE0(a2, a3, &v18);
      *(v10 + 12) = 2080;
      v12 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
      v13 = sub_252E36F94();
      v15 = sub_252BE2CE0(v13, v14, &v18);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_252917000, v8, v9, "Exception removing AsyncInteractionRecord\nwith id: %s. Error: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v11, -1, -1);
      MEMORY[0x2530AED00](v10, -1, -1);
    }
  }

  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v16 = sub_252E36AD4();
  __swift_project_value_buffer(v16, qword_27F544D30);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_252E379F4();

  v18 = 0xD00000000000001ALL;
  v19 = 0x8000000252E812B0;
  MEMORY[0x2530AD570](a2, a3);
  sub_252CC3D90(v18, v19, 0xD000000000000086, 0x8000000252E80B30);
}

uint64_t sub_252B542F0(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = a2;
  sub_252B51000(0xD00000000000001ALL, 0x8000000252E4D830, sub_252B5AEC0, v4);
}

uint64_t sub_252B5438C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  swift_beginAccess();
  v8 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  v13 = a2[6];
  a2[2] = v3;
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = v6;
  a2[6] = v7;
  sub_252B5AE70(v3, v4);
  sub_252ADDEBC(v8, v9, v11, v10, v13);
  return sub_252E37614();
}

void sub_252B5444C(uint64_t a1, uint64_t a2)
{
  v23 = sub_252E36C84();
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_252E36D54();
  v7 = *(v22 - 8);
  v8 = MEMORY[0x28223BE20](v22);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v13 = dispatch_semaphore_create(0);
  v14 = swift_allocObject();
  v20 = a1;
  v21 = a2;
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v13;

  v15 = v13;
  sub_252B51000(0xD00000000000001ALL, 0x8000000252E4D830, sub_252B5BF20, v14);

  sub_252E36D14();
  *v6 = 200;
  v16 = v23;
  (*(v4 + 104))(v6, *MEMORY[0x277D85178], v23);
  sub_252E36D24();
  (*(v4 + 8))(v6, v16);
  v17 = *(v7 + 8);
  v18 = v22;
  v17(v10, v22);
  sub_252E375F4();
  v17(v12, v18);
  if (sub_252E36C94())
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v19 = sub_252E36AD4();
    __swift_project_value_buffer(v19, qword_27F544D30);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000002ELL, 0x8000000252E81040);
    MEMORY[0x2530AD570](v20, v21);
    MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E81070);
    sub_252CC4050(v24, v25, 0xD000000000000086, 0x8000000252E80B30, 0xD000000000000016, 0x8000000252E81090, 326);
  }

  else
  {
  }
}

void sub_252B547D0(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v7 = a1[1];
  if (v7)
  {
    v8 = *a1;
    v10 = a1[2];
    v9 = a1[3];
    v11 = a1[4];
    sub_252B5AE70(*a1, v7);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_2529F7A80(0, *(v11 + 16) + 1, 1, v11);
    }

    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_2529F7A80((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 16) = v13 + 1;
    v14 = v11 + 16 * v13;
    *(v14 + 32) = a2;
    *(v14 + 40) = a3;
    goto LABEL_11;
  }

  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v16 = sub_252E36AD4();
  __swift_project_value_buffer(v16, qword_27F544D30);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E810B0);
  v9 = 0x8000000252E4D830;
  v10 = 0xD00000000000001ALL;
  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E4D830);
  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E810F0);
  sub_252CC4050(0, 0xE000000000000000, 0xD000000000000086, 0x8000000252E80B30, 0xD000000000000016, 0x8000000252E81090, 303);

  v8 = qword_27F543658;
  v7 = qword_27F543660;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_252E3C290;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;

  if (v7)
  {
    v4 = a4;
LABEL_11:
    *&v18 = v8;
    *(&v18 + 1) = v7;
    v19 = v10;
    v20 = v9;
    v21 = v11;
    v15 = v4;
    sub_252DBFF00(&v18, v15);

    sub_252ADDEBC(v8, v7, v10, v9, v11);
    return;
  }

  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v16, qword_27F544D30);
  sub_252CC4050(0xD000000000000049, 0x8000000252E81110, 0xD000000000000086, 0x8000000252E80B30, 0xD000000000000016, 0x8000000252E81090, 308);
}

void sub_252B54AF0(uint64_t a1, uint64_t a2)
{
  v23 = sub_252E36C84();
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_252E36D54();
  v7 = *(v22 - 8);
  v8 = MEMORY[0x28223BE20](v22);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v13 = dispatch_semaphore_create(0);
  v14 = swift_allocObject();
  v20 = a1;
  v21 = a2;
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v13;

  v15 = v13;
  sub_252B51000(0xD00000000000001ALL, 0x8000000252E4D830, sub_252B5C0AC, v14);

  sub_252E36D14();
  *v6 = 200;
  v16 = v23;
  (*(v4 + 104))(v6, *MEMORY[0x277D85178], v23);
  sub_252E36D24();
  (*(v4 + 8))(v6, v16);
  v17 = *(v7 + 8);
  v18 = v22;
  v17(v10, v22);
  sub_252E375F4();
  v17(v12, v18);
  if (sub_252E36C94())
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v19 = sub_252E36AD4();
    __swift_project_value_buffer(v19, qword_27F544D30);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E81190);
    MEMORY[0x2530AD570](v20, v21);
    MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E811D0);
    sub_252CC4050(v24, v25, 0xD000000000000086, 0x8000000252E80B30, 0xD00000000000001BLL, 0x8000000252E811F0, 362);
  }

  else
  {
  }
}

void sub_252B54E74(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a1[1];
  if (v4)
  {
    v8 = a1[3];
    v9 = a1[4];
    v29 = a1[2];
    v30 = *a1;
    v10 = v9[2];

    v28 = v4;

    if (v10)
    {
      v11 = 0;
      v12 = (v9 + 5);
      v13 = MEMORY[0x277D84F90];
      v26 = a4;
      v27 = v8;
      do
      {
        v14 = &v12[16 * v11];
        v15 = v11;
        while (1)
        {
          if (v15 >= v9[2])
          {
            __break(1u);
            goto LABEL_29;
          }

          v16 = *(v14 - 1);
          v17 = *v14;
          v18 = v16 == a2 && v17 == a3;
          if (!v18)
          {
            v19 = v12;
            v20 = sub_252E37DB4();
            v12 = v19;
            if ((v20 & 1) == 0)
            {
              break;
            }
          }

          ++v15;
          v14 += 16;
          if (v10 == v15)
          {
            a4 = v26;
            v8 = v27;
            goto LABEL_25;
          }
        }

        *&v32 = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA3A0(0, *(v13 + 16) + 1, 1);
          v13 = v32;
        }

        v22 = *(v13 + 16);
        v21 = *(v13 + 24);
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          sub_2529AA3A0((v21 > 1), v22 + 1, 1);
          v23 = v22 + 1;
          v13 = v32;
        }

        v11 = v15 + 1;
        *(v13 + 16) = v23;
        v24 = v13 + 16 * v22;
        *(v24 + 32) = v16;
        *(v24 + 40) = v17;
        v18 = v10 - 1 == v15;
        a4 = v26;
        v8 = v27;
        v12 = v19;
      }

      while (!v18);
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

LABEL_25:
    *&v32 = v30;
    *(&v32 + 1) = v28;
    v33 = v29;
    v34 = v8;
    v35 = v13;
    v31 = a4;
    sub_252DBFF68(&v32, v31);
  }

  else
  {
    if (qword_27F53F4D8 != -1)
    {
LABEL_29:
      swift_once();
    }

    v25 = sub_252E36AD4();
    __swift_project_value_buffer(v25, qword_27F544D30);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000053, 0x8000000252E81210);
    MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E4D830);
    sub_252CC4050(0, 0xE000000000000000, 0xD000000000000086, 0x8000000252E80B30, 0xD00000000000001BLL, 0x8000000252E811F0, 338);
  }
}

uint64_t sub_252B55184(void *a1)
{
  if (a1)
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544D30);
    v3 = a1;
    v4 = sub_252E36AC4();
    v5 = sub_252E374D4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315394;
      *(v6 + 4) = sub_252BE2CE0(0xD00000000000001ALL, 0x8000000252E4D830, &v13);
      *(v6 + 12) = 2080;
      v8 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
      v9 = sub_252E36F94();
      v11 = sub_252BE2CE0(v9, v10, &v13);

      *(v6 + 14) = v11;
      _os_log_impl(&dword_252917000, v4, v5, "Exception writing on Coreknowledge for AsyncInteractionRecord\nwith id: %s. Error: %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v7, -1, -1);
      MEMORY[0x2530AED00](v6, -1, -1);
    }
  }

  return sub_252E37614();
}

uint64_t sub_252B55350(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), const char *a8)
{
  v41 = a4;
  v15 = sub_252E36F84();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v40 = v17;
    sub_252938414(a2, v44, &qword_27F541E80, &qword_252E3DFA0);
    if (v44[3])
    {
      if (swift_dynamicCast())
      {
        v39 = a3;
        sub_252E36F74();
        v38 = sub_252E36F44();
        v36 = v35;
        a3 = v39;

        (*(v16 + 8))(v19, v40);
        if (v36 >> 60 != 15)
        {
          sub_252E32994();
          swift_allocObject();
          sub_252E32984();
          a5(0);
          sub_252B5AF54(a6, a7, a8);
          v37 = v38;
          sub_252E32974();

          a3(v44);
          sub_252982EFC(v37, v36);
        }
      }
    }

    else
    {
      sub_25293847C(v44, &qword_27F541E80, &qword_252E3DFA0);
    }
  }

  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v20 = sub_252E36AD4();
  __swift_project_value_buffer(v20, qword_27F544D30);
  sub_252938414(a2, v44, &qword_27F541E80, &qword_252E3DFA0);
  v21 = a1;
  v22 = sub_252E36AC4();
  v23 = sub_252E374D4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43 = v25;
    *v24 = 136315394;
    sub_252938414(v44, &v42, &qword_27F541E80, &qword_252E3DFA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E80, &qword_252E3DFA0);
    v26 = sub_252E36F94();
    v28 = v27;
    sub_25293847C(v44, &qword_27F541E80, &qword_252E3DFA0);
    v29 = sub_252BE2CE0(v26, v28, &v43);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    v42 = a1;
    v30 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
    v31 = sub_252E36F94();
    v33 = sub_252BE2CE0(v31, v32, &v43);

    *(v24 + 14) = v33;
    _os_log_impl(&dword_252917000, v22, v23, "    CoreKnowledgeStore found no entries or unable to convert result to String or data, assuming store is empty.\n    Result %s, error: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530AED00](v25, -1, -1);
    MEMORY[0x2530AED00](v24, -1, -1);
  }

  else
  {

    sub_25293847C(v44, &qword_27F541E80, &qword_252E3DFA0);
  }

  v44[0] = 0;
  return (a3)(v44);
}

uint64_t sub_252B559F0(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v35 = a4;
  v7 = sub_252E36F84();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    goto LABEL_8;
  }

  v12 = a3;
  v13 = v9;
  sub_252938414(a2, &v54, &qword_27F541E80, &qword_252E3DFA0);
  if (!*(&v55 + 1))
  {
    sub_25293847C(&v54, &qword_27F541E80, &qword_252E3DFA0);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    a3 = v12;
    goto LABEL_8;
  }

  sub_252E36F74();
  v14 = sub_252E36F44();
  v16 = v15;

  (*(v8 + 8))(v11, v13);
  a3 = v12;
  if (v16 >> 60 != 15)
  {
    sub_252E32994();
    swift_allocObject();
    sub_252E32984();
    sub_252B51FB8();
    sub_252E32974();

    GEOLocationCoordinate2DMake();
    v12(&v54);
    sub_252982EFC(v14, v16);
    v51 = v60;
    v52 = v61;
    v53 = v62;
    v47 = v56;
    v48 = v57;
    v49 = v58;
    v50 = v59;
    v45 = v54;
    v46 = v55;
    v32 = &v45;
    return sub_25293847C(v32, &qword_27F543160, &qword_252E4E950);
  }

LABEL_8:
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v17 = sub_252E36AD4();
  __swift_project_value_buffer(v17, qword_27F544D30);
  sub_252938414(a2, v63, &qword_27F541E80, &qword_252E3DFA0);
  v18 = a1;
  v19 = sub_252E36AC4();
  v20 = sub_252E374D4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v45 = v34;
    *v21 = 136315394;
    sub_252938414(v63, &v54, &qword_27F541E80, &qword_252E3DFA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E80, &qword_252E3DFA0);
    v22 = sub_252E36F94();
    v24 = v23;
    sub_25293847C(v63, &qword_27F541E80, &qword_252E3DFA0);
    v25 = sub_252BE2CE0(v22, v24, &v45);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    *&v54 = a1;
    v26 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
    v27 = sub_252E36F94();
    v29 = sub_252BE2CE0(v27, v28, &v45);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_252917000, v19, v20, "    CoreKnowledgeStore found no entries or unable to convert result to String or data, assuming store is empty.\n    Result %s, error: %s", v21, 0x16u);
    v30 = v34;
    swift_arrayDestroy();
    MEMORY[0x2530AED00](v30, -1, -1);
    MEMORY[0x2530AED00](v21, -1, -1);
  }

  else
  {

    sub_25293847C(v63, &qword_27F541E80, &qword_252E3DFA0);
  }

  sub_252B5ADCC(&v45);
  v42 = v51;
  v43 = v52;
  v44 = v53;
  v38 = v47;
  v39 = v48;
  v40 = v49;
  v41 = v50;
  v36 = v45;
  v37 = v46;
  a3(&v36);
  v60 = v42;
  v61 = v43;
  v62 = v44;
  v56 = v38;
  v57 = v39;
  v58 = v40;
  v59 = v41;
  v54 = v36;
  v55 = v37;
  v32 = &v54;
  return sub_25293847C(v32, &qword_27F543160, &qword_252E4E950);
}

void sub_252B56154(void *a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v10 = sub_252E36F84();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v29 = v12;
    sub_252938414(a2, &v37, &qword_27F541E80, &qword_252E3DFA0);
    if (*(&v38 + 1))
    {
      if (swift_dynamicCast())
      {
        v34 = a3;
        sub_252E36F74();
        v33 = sub_252E36F44();
        v31 = v30;
        a3 = v34;

        (*(v11 + 8))(v14, v29);
        if (v31 >> 60 != 15)
        {
          sub_252E32994();
          swift_allocObject();
          sub_252E32984();
          a5();
          v32 = v33;
          sub_252E32974();

          a3(&v37);
          sub_252982EFC(v32, v31);
          sub_252ADDEBC(v37, *(&v37 + 1), v38, *(&v38 + 1), v39);
          return;
        }
      }
    }

    else
    {
      sub_25293847C(&v37, &qword_27F541E80, &qword_252E3DFA0);
    }
  }

  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544D30);
  sub_252938414(a2, &v37, &qword_27F541E80, &qword_252E3DFA0);
  v16 = a1;
  v17 = sub_252E36AC4();
  v18 = sub_252E374D4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v19 = 136315394;
    sub_252938414(&v37, &v35, &qword_27F541E80, &qword_252E3DFA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E80, &qword_252E3DFA0);
    v20 = sub_252E36F94();
    v22 = v21;
    sub_25293847C(&v37, &qword_27F541E80, &qword_252E3DFA0);
    v23 = sub_252BE2CE0(v20, v22, &v36);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v35 = a1;
    v24 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
    v25 = sub_252E36F94();
    v27 = sub_252BE2CE0(v25, v26, &v36);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_252917000, v17, v18, "    CoreKnowledgeStore found no entries or unable to convert result to String or data, assuming store is empty.\n    Result %s, error: %s", v19, 0x16u);
    v28 = v34;
    swift_arrayDestroy();
    MEMORY[0x2530AED00](v28, -1, -1);
    MEMORY[0x2530AED00](v19, -1, -1);
  }

  else
  {

    sub_25293847C(&v37, &qword_27F541E80, &qword_252E3DFA0);
  }

  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  a3(&v37);
}

uint64_t sub_252B567F8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a3;
    sub_252A00AF4(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v6 = a2;
  swift_unknownObjectRetain();
  v5(a2, v10);

  return sub_25293847C(v10, &qword_27F541E80, &qword_252E3DFA0);
}

uint64_t sub_252B568B0(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  v8 = *a1;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v5 = qword_27F544F78;
  v6 = sub_252E375C4();
  sub_252E36A74(v6, &dword_252917000, v5, "GetRecord", 9, 2, a2, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90], v8);
  return a3(&v8);
}

uint64_t sub_252B56980(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *))
{
  v5 = *(a1 + 112);
  v12[6] = *(a1 + 96);
  v12[7] = v5;
  v13 = *(a1 + 128);
  v6 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v6;
  v7 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v7;
  v8 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v8;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v9 = qword_27F544F78;
  v10 = sub_252E375C4();
  sub_252E36A74(v10, &dword_252917000, v9, "GetRecord", 9, 2, a2, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  return a3(v12);
}

uint64_t sub_252B56A70(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *))
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v11 = v5;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v7 = qword_27F544F78;
  v8 = sub_252E375C4();
  sub_252E36A74(v8, &dword_252917000, v7, "GetRecord", 9, 2, a2, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  return a3(v10);
}

void sub_252B56B48(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v234 = a6;
  v235 = a8;
  v244 = a7;
  v233 = a5;
  v232 = a4;
  v14 = sub_252E36CA4();
  v240 = *(v14 - 8);
  v241 = v14;
  MEMORY[0x28223BE20](v14);
  v238 = &v224 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_252E36D04();
  v237 = *(v239 - 8);
  MEMORY[0x28223BE20](v239);
  v236 = &v224 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_252E32E04();
  v230 = *(v17 - 8);
  v231 = v17;
  MEMORY[0x28223BE20](v17);
  v229 = &v224 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_252E32E84();
  v243 = *(v264 - 8);
  v19 = MEMORY[0x28223BE20](v264);
  v246 = &v224 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v248 = &v224 - v22;
  MEMORY[0x28223BE20](v21);
  v263 = &v224 - v23;
  if (qword_27F53F4D8 != -1)
  {
    goto LABEL_135;
  }

  while (1)
  {
    v245 = sub_252E36AD4();
    v24 = __swift_project_value_buffer(v245, qword_27F544D30);
    *&v290 = 0;
    *(&v290 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v290 = 0xD000000000000027;
    *(&v290 + 1) = 0x8000000252E80ED0;
    v242 = a1;
    MEMORY[0x2530AD570](a1, a2);
    v247 = "cInteractionRecord with id: ";
    v250 = v24;
    sub_252CC3D90(v290, *(&v290 + 1), 0xD000000000000086, 0x8000000252E80B30);

    v25 = sub_252C4D664(5);
    v256 = a9;
    v251 = a3;
    if ((v25 & 1) == 0)
    {
      v39 = type metadata accessor for HomeStore(0);
      v40 = static HomeStore.shared.getter(v39);
      v41 = v40;
      v42 = v40[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
      if (v42 == 2 || (v42 & 1) != 0)
      {
        v43 = v251;
        v44 = [v251 filters];
        if (!v44)
        {

          goto LABEL_32;
        }

        v45 = v44;
        v228 = a2;
        type metadata accessor for HomeFilter();
        v46 = sub_252E37264();

        v47 = [v43 userTask];
        v48 = HomeStore.services(matching:supporting:)(v46, v47);
        v50 = v49;

        if ((v50 & 1) == 0)
        {
          v9 = v48 & 0xFFFFFFFFFFFFFF8;
          if (v48 >> 62)
          {
            goto LABEL_218;
          }

          a2 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a2)
          {
            goto LABEL_40;
          }

LABEL_219:
          a1 = MEMORY[0x277D84F90];
LABEL_220:
          sub_252929F10(v48, 0);
          v284 = a1;
          v189 = qword_27F53F510;

          if (v189 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v245, qword_27F544DD8);
          *&v290 = 0;
          *(&v290 + 1) = 0xE000000000000000;
          sub_252E379F4();

          *&v290 = 0xD00000000000002FLL;
          *(&v290 + 1) = 0x8000000252E80F00;
          v190 = MEMORY[0x2530AD730](a1, MEMORY[0x277D837D0]);
          v192 = v191;

          MEMORY[0x2530AD570](v190, v192);

          sub_252CC3D90(v290, *(&v290 + 1), 0xD000000000000086, v247 | 0x8000000000000000);

          v226 = 0;
          v227 = 0;
          goto LABEL_223;
        }

        sub_252929F10(v48, 1);
      }

      else
      {
      }

      v43 = v251;
LABEL_32:
      v60 = v43;
      *(&v265 + 1) = sub_252E36AC4();
      v34 = sub_252E374D4();

      if (os_log_type_enabled(*(&v265 + 1), v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138412290;
        *(v35 + 4) = v60;
        *v36 = v60;
        v61 = v60;
        v38 = "Couldn't find Services matching intent: %@";
LABEL_34:
        _os_log_impl(&dword_252917000, *(&v265 + 1), v34, v38, v35, 0xCu);
        sub_25293847C(v36, &qword_27F541B78, &qword_252E4A340);
        MEMORY[0x2530AED00](v36, -1, -1);
        MEMORY[0x2530AED00](v35, -1, -1);
      }

LABEL_35:
      v62 = *(&v265 + 1);

      return;
    }

    v26 = [a3 filters];
    if (!v26)
    {
      goto LABEL_6;
    }

    v27 = v26;
    v228 = a2;
    type metadata accessor for HomeFilter();
    v28 = sub_252E37264();

    v29 = type metadata accessor for HomeStore(0);
    v30 = static HomeStore.shared.getter(v29);
    a1 = HomeStore.scenes(matching:)(v28);
    v32 = v31;

    if (v32)
    {
      sub_252929F10(a1, 1);
LABEL_6:
      v33 = v251;
      *(&v265 + 1) = sub_252E36AC4();
      v34 = sub_252E374D4();

      if (os_log_type_enabled(*(&v265 + 1), v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138412290;
        *(v35 + 4) = v33;
        *v36 = v33;
        v37 = v33;
        v38 = "Couldn't find scenes matching intent: %@";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    v226 = sub_252C4E214();
    v227 = v51;
    v52 = a1 & 0xFFFFFFFFFFFFFF8;
    v259 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!(a1 >> 62))
    {
      v260 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v261 = a1;
      if (!v260)
      {
        goto LABEL_138;
      }

      goto LABEL_15;
    }

LABEL_137:
    v129 = sub_252E378C4();
    v52 = v259;
    v260 = v129;
    v261 = a1;
    if (!v129)
    {
LABEL_138:
      v128 = MEMORY[0x277D84F90];
      v284 = MEMORY[0x277D84F90];
      goto LABEL_139;
    }

LABEL_15:
    v53 = 0;
    v257 = a1 & 0xC000000000000001;
    v249 = a1 + 32;
    a2 = MEMORY[0x277D84F90];
    do
    {
      if (v257)
      {
        a3 = MEMORY[0x2530ADF00](v53, a1);
        a1 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_129;
        }
      }

      else
      {
        if (v53 >= *(v52 + 16))
        {
          goto LABEL_130;
        }

        a3 = *(a1 + 8 * v53 + 32);

        a1 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_129;
        }
      }

      v54 = sub_252E32E24();
      a9 = v55;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_2529F7A80(0, *(a2 + 16) + 1, 1, a2);
      }

      v57 = *(a2 + 16);
      v56 = *(a2 + 24);
      a3 = v57 + 1;
      if (v57 >= v56 >> 1)
      {
        a2 = sub_2529F7A80((v56 > 1), v57 + 1, 1, a2);
      }

      *(a2 + 16) = a3;
      v58 = a2 + 16 * v57;
      *(v58 + 32) = v54;
      *(v58 + 40) = a9;
      ++v53;
      v52 = v259;
      v59 = a1 == v260;
      a1 = v261;
    }

    while (!v59);
    v69 = 0;
    v284 = a2;
    *&v290 = MEMORY[0x277D84F90];
    v262 = (v243 + 8);
    v225 = (v243 + 32);
LABEL_54:
    if (v257)
    {
      v70 = MEMORY[0x2530ADF00](v69, a1);
      v71 = __OFADD__(v69, 1);
      v72 = v69 + 1;
      if (v71)
      {
        goto LABEL_133;
      }
    }

    else
    {
      if (v69 >= *(v52 + 16))
      {
        goto LABEL_134;
      }

      v71 = __OFADD__(v69, 1);
      v72 = v69 + 1;
      if (v71)
      {
        goto LABEL_133;
      }
    }

    v253 = v72;
    v252 = v70;
    v73 = [*(v70 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
    v74 = sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
    sub_2529E6100();
    v75 = sub_252E373A4();

    *&v268 = MEMORY[0x277D84F90];
    v255 = v75;
    v258 = v74;
    if ((v75 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_252E37874();
      sub_252E373E4();
      a9 = v285;
      a2 = v286;
      v76 = v287;
      v77 = v288;
      v9 = v289;
    }

    else
    {
      v78 = -1 << *(v75 + 32);
      a2 = v75 + 56;
      v76 = ~v78;
      v79 = -v78;
      if (v79 < 64)
      {
        v80 = ~(-1 << v79);
      }

      else
      {
        v80 = -1;
      }

      v9 = v80 & *(v75 + 56);

      v77 = 0;
      a9 = v75;
    }

    v254 = v76;
    a1 = (v76 + 64) >> 6;
    a3 = MEMORY[0x277D84F90];
    *&v265 = a2;
    *(&v265 + 1) = MEMORY[0x277D84F90];
    if ((a9 & 0x8000000000000000) != 0)
    {
LABEL_64:
      v81 = sub_252E37904();
      if (!v81)
      {
        goto LABEL_84;
      }

      v266[0] = v81;
      swift_dynamicCast();
      v82 = v267[0];
      v83 = v77;
      v84 = v9;
      if (!v267[0])
      {
        goto LABEL_84;
      }

      goto LABEL_72;
    }

LABEL_67:
    v85 = v77;
    v86 = v9;
    v83 = v77;
    if (v9)
    {
      break;
    }

    while (1)
    {
      v83 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      if (v83 >= a1)
      {
        goto LABEL_84;
      }

      v86 = *(a2 + 8 * v83);
      ++v85;
      if (v86)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    swift_once();
  }

LABEL_71:
  v84 = (v86 - 1) & v86;
  v82 = *(*(a9 + 48) + ((v83 << 9) | (8 * __clz(__rbit64(v86)))));
  if (v82)
  {
LABEL_72:
    v87 = a9;
    type metadata accessor for Action();
    a3 = swift_allocObject();
    *(a3 + 16) = v82;
    v88 = v82;
    v89 = [v88 uniqueIdentifier];
    v90 = v263;
    sub_252E32E64();

    v91 = sub_252E32E24();
    v93 = v92;
    (*v262)(v90, v264);
    *(a3 + 24) = v91;
    *(a3 + 32) = v93;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v94 = 1;
      a9 = v87;
    }

    else
    {
      objc_opt_self();
      a9 = v87;
      if (!swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        v95 = swift_dynamicCastObjCClass();
        v9 = v84;
        a2 = v265;
        if (v95)
        {
          v94 = 3;
        }

        else
        {
          objc_opt_self();
          v94 = 4 * (swift_dynamicCastObjCClass() != 0);
        }

        goto LABEL_77;
      }

      v94 = 2;
    }

    v9 = v84;
    a2 = v265;
LABEL_77:

    *(a3 + 40) = v94;
    MEMORY[0x2530AD700]();
    if (*((v268 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v268 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    *(&v265 + 1) = v268;
    v77 = v83;
    if ((a9 & 0x8000000000000000) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_67;
  }

LABEL_84:
  sub_25291AE30(a9);

  *&v268 = MEMORY[0x277D84F90];
  v9 = *(&v265 + 1);
  a2 = *(&v265 + 1) & 0xFFFFFFFFFFFFFF8;
  if (*(&v265 + 1) >> 62)
  {
    v96 = sub_252E378C4();
    if (!v96)
    {
LABEL_111:
      v97 = MEMORY[0x277D84F90];
      goto LABEL_112;
    }
  }

  else
  {
    v96 = *((*(&v265 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v96)
    {
      goto LABEL_111;
    }
  }

  a1 = 0;
  a3 = v9 & 0xC000000000000001;
  v97 = MEMORY[0x277D84F90];
  do
  {
    *&v265 = v97;
    v98 = a1;
    while (1)
    {
      if (a3)
      {
        v99 = MEMORY[0x2530ADF00](v98, v9);
        a1 = v98 + 1;
        if (__OFADD__(v98, 1))
        {
          goto LABEL_127;
        }
      }

      else
      {
        if (v98 >= *(a2 + 16))
        {
          goto LABEL_128;
        }

        v99 = *(v9 + 8 * v98 + 32);

        a1 = v98 + 1;
        if (__OFADD__(v98, 1))
        {
          goto LABEL_127;
        }
      }

      if (*(v99 + 40) != 1)
      {
        goto LABEL_88;
      }

      a9 = *(v99 + 16);
      objc_opt_self();
      v100 = swift_dynamicCastObjCClass();
      if (!v100)
      {
        goto LABEL_88;
      }

      v101 = v100;
      a9 = a9;
      v102 = [v101 characteristic];
      v103 = [v102 service];

      if (v103)
      {
        break;
      }

      v9 = *(&v265 + 1);
LABEL_88:

      ++v98;
      if (a1 == v96)
      {
        v97 = v265;
        goto LABEL_112;
      }
    }

    *&v265 = a2;
    type metadata accessor for Service(0);
    v104 = swift_allocObject();
    *(v104 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) = v103;
    v105 = v103;
    v106 = [v105 uniqueIdentifier];
    sub_252E32E64();

    v107 = [v105 name];
    v258 = sub_252E36F34();
    v255 = v108;

    v109 = [v105 assistantIdentifier];
    if (v109)
    {
      v110 = v109;
      v254 = sub_252E36F34();
      v112 = v111;

      v113 = v112;
      v114 = v254;
    }

    else
    {

      v114 = 0;
      v113 = 0;
    }

    v115 = (*v225)(v104 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v248, v264);
    v116 = (v104 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v117 = v255;
    *v116 = v258;
    v116[1] = v117;
    *(v104 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 7;
    v118 = (v104 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
    *v118 = v114;
    v118[1] = v113;
    MEMORY[0x2530AD700](v115);
    v9 = *(&v265 + 1);
    if (*((v268 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v268 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      a9 = *((v268 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    v97 = v268;
    a2 = v265;
  }

  while (a1 != v96);
LABEL_112:
  a1 = v97;

  if (a1 >> 62)
  {
    a2 = sub_252E378C4();
    if (!a2)
    {
      goto LABEL_124;
    }

LABEL_114:
    *&v268 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, a2 & ~(a2 >> 63), 0);
    if ((a2 & 0x8000000000000000) == 0)
    {
      a3 = 0;
      v119 = v268;
      v120 = a1;
      *(&v265 + 1) = a1 & 0xC000000000000001;
      v121 = a1;
      v122 = a2;
      do
      {
        if (*(&v265 + 1))
        {
          MEMORY[0x2530ADF00](a3, v120);
        }

        else
        {
        }

        v123 = sub_252E32E24();
        v125 = v124;

        *&v268 = v119;
        a2 = *(v119 + 16);
        v126 = *(v119 + 24);
        v9 = a2 + 1;
        if (a2 >= v126 >> 1)
        {
          sub_2529AA3A0((v126 > 1), a2 + 1, 1);
          v119 = v268;
        }

        ++a3;
        *(v119 + 16) = v9;
        v127 = v119 + 16 * a2;
        *(v127 + 32) = v123;
        *(v127 + 40) = v125;
        v120 = v121;
      }

      while (v122 != a3);

      goto LABEL_53;
    }

    __break(1u);
    goto LABEL_137;
  }

  a2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (a2)
  {
    goto LABEL_114;
  }

LABEL_124:

  v119 = MEMORY[0x277D84F90];
LABEL_53:
  sub_25297A744(v119);
  a1 = v261;
  v69 = v253;
  a9 = v256;
  v52 = v259;
  if (v253 != v260)
  {
    goto LABEL_54;
  }

  v128 = v290;
LABEL_139:

  sub_25297A744(v130);
  if (qword_27F53F510 != -1)
  {
    swift_once();
  }

  a3 = __swift_project_value_buffer(v245, qword_27F544DD8);
  *&v290 = 0;
  *(&v290 + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E80FC0);
  v48 = MEMORY[0x2530AD730](v128, MEMORY[0x277D837D0]);
  v132 = v131;

  MEMORY[0x2530AD570](v48, v132);

  v248 = a3;
  sub_252CC3D90(v290, *(&v290 + 1), 0xD000000000000086, v247 | 0x8000000000000000);

  v133 = MEMORY[0x277D84F90];
  *&v290 = MEMORY[0x277D84F90];
  if (!v260)
  {
    v136 = v261;
    goto LABEL_210;
  }

  v134 = 0;
  v135 = 0;
  v257 = v261 & 0xC000000000000001;
  v255 = v261 + 32;
  v252 = (v243 + 32);
  while (2)
  {
    if (v257)
    {
      v137 = MEMORY[0x2530ADF00](v134);
      v71 = __OFADD__(v134, 1);
      v138 = (v134 + 1);
      if (v71)
      {
        goto LABEL_215;
      }
    }

    else
    {
      if (v134 >= *(v259 + 16))
      {
        goto LABEL_216;
      }

      v137 = *(v255 + 8 * v134);

      v71 = __OFADD__(v134, 1);
      v138 = (v134 + 1);
      if (v71)
      {
        goto LABEL_215;
      }
    }

    v263 = v138;
    v139 = [*(v137 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
    sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
    sub_2529E6100();
    v140 = sub_252E373A4();

    a3 = sub_252B2E20C(v140);
    v262 = v135;

    *&v268 = v133;
    v48 = a3 & 0xFFFFFFFFFFFFFF8;
    if (a3 >> 62)
    {
      v9 = sub_252E378C4();
      v258 = v137;
      if (!v9)
      {
LABEL_174:
        *&v265 = v133;
        goto LABEL_175;
      }
    }

    else
    {
      v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v258 = v137;
      if (!v9)
      {
        goto LABEL_174;
      }
    }

    v141 = 0;
    v142 = a3 & 0xC000000000000001;
    *&v265 = v133;
    *(&v265 + 1) = a3 & 0xC000000000000001;
    while (2)
    {
      v143 = v141;
      while (2)
      {
        if (v142)
        {
          v144 = MEMORY[0x2530ADF00](v143, a3);
          v141 = v143 + 1;
          if (__OFADD__(v143, 1))
          {
            goto LABEL_211;
          }
        }

        else
        {
          if (v143 >= *(v48 + 16))
          {
            goto LABEL_212;
          }

          v144 = *(a3 + 8 * v143 + 32);

          v141 = v143 + 1;
          if (__OFADD__(v143, 1))
          {
LABEL_211:
            __break(1u);
LABEL_212:
            __break(1u);
LABEL_213:
            __break(1u);
LABEL_214:
            __break(1u);
LABEL_215:
            __break(1u);
LABEL_216:
            __break(1u);
LABEL_217:
            __break(1u);
LABEL_218:
            a2 = sub_252E378C4();
            if (!a2)
            {
              goto LABEL_219;
            }

LABEL_40:
            a9 = 0;
            *(&v265 + 1) = v48 & 0xC000000000000001;
            a1 = MEMORY[0x277D84F90];
            *&v265 = v48;
            while (1)
            {
              if (*(&v265 + 1))
              {
                MEMORY[0x2530ADF00](a9, v48);
                v63 = a9 + 1;
                if (__OFADD__(a9, 1))
                {
                  goto LABEL_131;
                }
              }

              else
              {
                if (a9 >= *(v9 + 16))
                {
                  goto LABEL_132;
                }

                v63 = a9 + 1;
                if (__OFADD__(a9, 1))
                {
                  goto LABEL_131;
                }
              }

              v64 = sub_252E32E24();
              a3 = v65;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                a1 = sub_2529F7A80(0, *(a1 + 16) + 1, 1, a1);
              }

              v67 = *(a1 + 16);
              v66 = *(a1 + 24);
              if (v67 >= v66 >> 1)
              {
                a1 = sub_2529F7A80((v66 > 1), v67 + 1, 1, a1);
              }

              *(a1 + 16) = v67 + 1;
              v68 = a1 + 16 * v67;
              *(v68 + 32) = v64;
              *(v68 + 40) = a3;
              ++a9;
              v48 = v265;
              if (v63 == a2)
              {
                goto LABEL_220;
              }
            }
          }
        }

        if (*(v144 + 40) != 1 || (v145 = *(v144 + 16), objc_opt_self(), (v146 = swift_dynamicCastObjCClass()) == 0))
        {
LABEL_151:

          ++v143;
          if (v141 == v9)
          {
            v133 = MEMORY[0x277D84F90];
            goto LABEL_175;
          }

          continue;
        }

        break;
      }

      v147 = v146;
      v148 = a3;
      v149 = v9;
      v150 = v145;
      v151 = [v147 characteristic];
      v152 = [v151 service];

      if (!v152)
      {

        v9 = v149;
        a3 = v148;
        v142 = *(&v265 + 1);
        goto LABEL_151;
      }

      type metadata accessor for Service(0);
      v253 = swift_allocObject();
      *(v253 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) = v152;
      v153 = v152;
      v154 = [v153 uniqueIdentifier];
      sub_252E32E64();

      v155 = [v153 name];
      *&v265 = sub_252E36F34();
      v254 = v156;

      v157 = [v153 assistantIdentifier];
      if (v157)
      {
        v158 = v157;
        v249 = sub_252E36F34();
        v160 = v159;

        v161 = v249;
      }

      else
      {

        v161 = 0;
        v160 = 0;
      }

      v162 = v253;
      v163 = (*v252)(v253 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v246, v264);
      v164 = (v162 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v165 = v254;
      *v164 = v265;
      v164[1] = v165;
      *(v162 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 7;
      v166 = (v162 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v166 = v161;
      v166[1] = v160;
      MEMORY[0x2530AD700](v163);
      v9 = v149;
      if (*((v268 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v268 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      *&v265 = v268;
      v133 = MEMORY[0x277D84F90];
      a3 = v148;
      v142 = *(&v265 + 1);
      if (v141 != v9)
      {
        continue;
      }

      break;
    }

LABEL_175:

    *&v268 = v133;
    v167 = v265;
    if (v265 >> 62)
    {
      v48 = sub_252E378C4();
      if (v48)
      {
        goto LABEL_177;
      }

LABEL_193:
      v169 = v133;
      goto LABEL_194;
    }

    v48 = *((v265 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v48)
    {
      goto LABEL_193;
    }

LABEL_177:
    v168 = 0;
    v169 = v133;
    do
    {
      v170 = v168;
      while (1)
      {
        if ((v167 & 0xC000000000000001) != 0)
        {
          a3 = MEMORY[0x2530ADF00](v170, v167);
          v168 = v170 + 1;
          if (__OFADD__(v170, 1))
          {
            goto LABEL_213;
          }
        }

        else
        {
          if (v170 >= *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_214;
          }

          a3 = *(v167 + 8 * v170 + 32);

          v168 = v170 + 1;
          if (__OFADD__(v170, 1))
          {
            goto LABEL_213;
          }
        }

        v171 = [*(a3 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
        if (v171)
        {
          break;
        }

        ++v170;
        if (v168 == v48)
        {
          goto LABEL_194;
        }
      }

      v172 = v171;
      type metadata accessor for Accessory(0);
      swift_allocObject();
      sub_252D4CE7C(v172);

      MEMORY[0x2530AD700](v173);
      if (*((v268 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v268 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a3 = *((v268 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v169 = v268;
    }

    while (v168 != v48);
LABEL_194:

    v174 = sub_252C759D4(v169);

    v175 = sub_2529A3758(v174);

    if ((v175 & 0x8000000000000000) != 0 || (v175 & 0x4000000000000000) != 0)
    {
      v176 = v175;
      v177 = sub_252E378C4();
      v133 = MEMORY[0x277D84F90];
      if (!v177)
      {
        goto LABEL_207;
      }

LABEL_197:
      *&v268 = v133;
      sub_2529AA3A0(0, v177 & ~(v177 >> 63), 0);
      if (v177 < 0)
      {
        goto LABEL_217;
      }

      v178 = 0;
      a3 = v268;
      v179 = v176;
      *(&v265 + 1) = v176 & 0xC000000000000001;
      v180 = v176;
      do
      {
        if (*(&v265 + 1))
        {
          MEMORY[0x2530ADF00](v178, v179);
        }

        else
        {
        }

        v181 = sub_252E32E24();
        v9 = v182;

        *&v268 = a3;
        v48 = *(a3 + 16);
        v183 = *(a3 + 24);
        if (v48 >= v183 >> 1)
        {
          sub_2529AA3A0((v183 > 1), v48 + 1, 1);
          a3 = v268;
        }

        ++v178;
        *(a3 + 16) = v48 + 1;
        v184 = a3 + 16 * v48;
        *(v184 + 32) = v181;
        *(v184 + 40) = v9;
        v179 = v180;
      }

      while (v177 != v178);

      v133 = MEMORY[0x277D84F90];
    }

    else
    {
      v176 = v175;
      v177 = *(v175 + 16);
      v133 = MEMORY[0x277D84F90];
      if (v177)
      {
        goto LABEL_197;
      }

LABEL_207:

      a3 = v133;
    }

    sub_25297A744(a3);
    v136 = v261;
    v135 = v262;
    v134 = v263;
    if (v263 != v260)
    {
      continue;
    }

    break;
  }

  v133 = v290;
LABEL_210:
  sub_252929F10(v136, 0);

  sub_25297A744(v185);
  *&v290 = 0;
  *(&v290 + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E81000);
  v186 = MEMORY[0x2530AD730](v133, MEMORY[0x277D837D0]);
  v188 = v187;

  MEMORY[0x2530AD570](v186, v188);

  sub_252CC3D90(v290, *(&v290 + 1), 0xD000000000000086, v247 | 0x8000000000000000);

LABEL_223:
  v193 = [v251 userTask];
  v194 = v284;
  if (v193)
  {
    v195 = v193;
    v196 = qword_27F543660;
    *&v265 = qword_27F543658;
    v263 = type metadata accessor for CodableUserTask();
    swift_allocObject();
    v197 = v195;
    *(&v265 + 1) = v196;

    v198 = v228;

    v262 = v197;
    v264 = sub_252A04C5C(v197);
    if (v233)
    {
      v199 = 7.0;
    }

    else
    {
      v199 = (v232 / 1000);
    }

    v200 = v229;
    sub_252E32DF4();
    sub_252E32D94();
    v202 = v201;
    (*(v230 + 8))(v200, v231);
    v203 = v199 + v202;
    if (qword_27F53F510 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v245, qword_27F544DD8);
    *&v290 = 0;
    *(&v290 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v290 = 0xD000000000000024;
    *(&v290 + 1) = 0x8000000252E80F30;
    v204 = v242;
    MEMORY[0x2530AD570](v242, v198);
    MEMORY[0x2530AD570](32, 0xE100000000000000);
    v205 = v247;
    sub_252CC3D90(v290, *(&v290 + 1), 0xD000000000000086, v247 | 0x8000000000000000);

    *&v290 = 0;
    *(&v290 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v290 = 0xD00000000000002BLL;
    *(&v290 + 1) = 0x8000000252E80F60;
    v206 = MEMORY[0x2530AD730](v194, MEMORY[0x277D837D0]);
    v208 = v207;

    MEMORY[0x2530AD570](v206, v208);

    MEMORY[0x2530AD570](32, 0xE100000000000000);
    sub_252CC3D90(v290, *(&v290 + 1), 0xD000000000000086, v205 | 0x8000000000000000);

    *&v290 = 0;
    *(&v290 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E80F90);
    swift_allocObject();
    v209 = v262;
    *&v268 = sub_252A04C5C(v209);
    sub_252E37AE4();

    MEMORY[0x2530AD570](32, 0xE100000000000000);
    sub_252CC3D90(v290, *(&v290 + 1), 0xD000000000000086, v205 | 0x8000000000000000);

    v263 = v209;

    v290 = v265;
    *&v291 = v204;
    *(&v291 + 1) = v198;
    v210 = MEMORY[0x277D84F90];
    *&v292 = v194;
    *(&v292 + 1) = MEMORY[0x277D84F90];
    *&v293 = 0;
    *(&v293 + 1) = v264;
    *&v294 = 0x696C616974696E69;
    *(&v294 + 1) = 0xEB0000000064657ALL;
    *&v295 = v203;
    *(&v295 + 1) = v234;
    *&v296 = v244;
    *(&v296 + 1) = v235;
    *&v297 = v256;
    *(&v297 + 1) = v226;
    v298 = v227;
    v268 = v265;
    v269 = v204;
    v270 = v198;
    v271 = v194;
    v272 = MEMORY[0x277D84F90];
    v273 = 0;
    v274 = v264;
    v275 = 0x696C616974696E69;
    v276 = 0xEB0000000064657ALL;
    v277 = v203;
    v278 = v234;
    v279 = v244;
    v280 = v235;
    v281 = v256;
    v282 = v226;
    v283 = v227;
    sub_252B5ADE8(&v290, v267);
    sub_252B5AE20(&v268);
    if (qword_27F53F370 != -1)
    {
      swift_once();
    }

    *(&v265 + 1) = qword_27F543668;
    v211 = swift_allocObject();
    v212 = v297;
    *(v211 + 112) = v296;
    *(v211 + 128) = v212;
    v213 = v298;
    v214 = v293;
    *(v211 + 48) = v292;
    *(v211 + 64) = v214;
    v215 = v295;
    *(v211 + 80) = v294;
    *(v211 + 96) = v215;
    v216 = v291;
    *(v211 + 16) = v290;
    *(v211 + 32) = v216;
    *(v211 + 144) = v213;
    *(v211 + 152) = v204;
    *(v211 + 160) = v198;
    v266[4] = sub_252B5BEC4;
    v266[5] = v211;
    v266[0] = MEMORY[0x277D85DD0];
    v266[1] = 1107296256;
    v266[2] = sub_252AD686C;
    v266[3] = &block_descriptor_70;
    v217 = _Block_copy(v266);

    sub_252B5ADE8(&v290, v267);
    v218 = v236;
    sub_252E36CD4();
    v267[0] = v210;
    sub_252B5AF54(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
    sub_252936E8C(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
    v219 = v238;
    v220 = v241;
    sub_252E37824();
    MEMORY[0x2530ADA30](0, v218, v219, v217);
    _Block_release(v217);
    (*(v240 + 8))(v219, v220);
    (*(v237 + 8))(v218, v239);

    sub_252B58D08(v204, v198, &unk_2864B7AE8, sub_252B5BF18, &block_descriptor_76);
    sub_252B5AE20(&v290);
  }

  else
  {

    v221 = sub_252E36AC4();
    v222 = sub_252E374D4();
    if (os_log_type_enabled(v221, v222))
    {
      v223 = swift_slowAlloc();
      *v223 = 0;
      _os_log_impl(&dword_252917000, v221, v222, "Can't save an async record without userTask", v223, 2u);
      MEMORY[0x2530AED00](v223, -1, -1);
    }
  }
}

uint64_t sub_252B58D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_252E36CA4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_252E36D04();
  v13 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F370 != -1)
  {
    swift_once();
  }

  v19[1] = qword_27F543668;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = a5;
  v17 = _Block_copy(aBlock);

  sub_252E36CD4();
  v21 = MEMORY[0x277D84F90];
  sub_252B5AF54(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_252936E8C(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v20);
}

uint64_t sub_252B58FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E36CA4();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_252E36D04();
  v7 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F370 != -1)
  {
    swift_once();
  }

  v15 = qword_27F543668;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  aBlock[4] = sub_252B5C05C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = &block_descriptor_94;
  v11 = _Block_copy(aBlock);

  sub_252E36CD4();
  v18 = MEMORY[0x277D84F90];
  sub_252B5AF54(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v14 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_252936E8C(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v9, v6, v11);
  _Block_release(v11);
  (*(v17 + 8))(v6, v4);
  (*(v7 + 8))(v9, v16);

  return sub_252B58D08(a1, v14, &unk_2864B7C28, sub_252B5C064, &block_descriptor_100);
}

uint64_t sub_252B59318@<X0>(uint64_t *a1@<X8>)
{
  v44 = a1;
  v1 = sub_252E36C84();
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x28223BE20](v1);
  v39 = (v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_252E36D54();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v37 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = v33 - v6;
  v7 = sub_252E36CA4();
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252E36D04();
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = dispatch_semaphore_create(0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0u;
  v33[1] = v14 + 16;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0;
  if (qword_27F53F370 != -1)
  {
    swift_once();
  }

  v33[2] = qword_27F543668;
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v50 = sub_252B5AE50;
  v51 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_252AD686C;
  v49 = &block_descriptor_14;
  v16 = _Block_copy(&aBlock);

  v17 = v13;
  sub_252E36CD4();
  v45 = MEMORY[0x277D84F90];
  sub_252B5AF54(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_252936E8C(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v12, v9, v16);
  _Block_release(v16);
  (*(v36 + 8))(v9, v7);
  (*(v34 + 8))(v12, v35);

  v18 = v37;
  sub_252E36D14();
  v19 = v39;
  *v39 = 200;
  v21 = v42;
  v20 = v43;
  (*(v42 + 104))(v19, *MEMORY[0x277D85178], v43);
  v22 = v38;
  sub_252E36D24();
  (*(v21 + 8))(v19, v20);
  v23 = v41;
  v24 = *(v40 + 8);
  v24(v18, v41);
  sub_252E375F4();
  v24(v22, v23);
  if (sub_252E36C94())
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v25 = sub_252E36AD4();
    __swift_project_value_buffer(v25, qword_27F544D30);
    aBlock = 0;
    v47 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E80AF0);
    MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E4D830);
    sub_252CC4050(aBlock, v47, 0xD000000000000086, 0x8000000252E80B30, 0x726F636552746567, 0xEF29287473694C64, 286);

    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

  else
  {

    swift_beginAccess();
    v27 = *(v14 + 16);
    v28 = *(v14 + 24);
    v29 = *(v14 + 32);
    v30 = *(v14 + 40);
    v31 = *(v14 + 48);
    sub_252B5AE70(v27, v28);
  }

  v32 = v44;
  *v44 = v27;
  v32[1] = v28;
  v32[2] = v29;
  v32[3] = v30;
  v32[4] = v31;
  return result;
}

__n128 sub_252B59988@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v5 = sub_252E36C84();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v53 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_252E36D54();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v51 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = &v44 - v10;
  v11 = sub_252E36CA4();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_252E36D04();
  v47 = *(v14 - 8);
  v48 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = dispatch_semaphore_create(0);
  v18 = swift_allocObject();
  sub_252B5ADCC(&v77);
  v19 = v84;
  *(v18 + 112) = v83;
  *(v18 + 128) = v19;
  *(v18 + 144) = v85;
  v20 = v80;
  *(v18 + 48) = v79;
  *(v18 + 64) = v20;
  v21 = v82;
  *(v18 + 80) = v81;
  *(v18 + 96) = v21;
  v22 = v78;
  *(v18 + 16) = v77;
  *(v18 + 32) = v22;
  if (qword_27F53F370 != -1)
  {
    swift_once();
  }

  v46 = qword_27F543668;
  v23 = swift_allocObject();
  v44 = a1;
  v23[2] = a1;
  v23[3] = a2;
  v23[4] = v18;
  v23[5] = v17;
  *&v70 = sub_252B5C0C8;
  *(&v70 + 1) = v23;
  *&v68 = MEMORY[0x277D85DD0];
  *(&v68 + 1) = 1107296256;
  v69.n128_u64[0] = sub_252AD686C;
  v69.n128_u64[1] = &block_descriptor_118;
  v24 = _Block_copy(&v68);
  v45 = a2;

  v25 = v17;
  sub_252E36CD4();
  *&v59 = MEMORY[0x277D84F90];
  sub_252B5AF54(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_252936E8C(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
  v26 = v50;
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v16, v13, v24);
  _Block_release(v24);
  (*(v49 + 8))(v13, v26);
  (*(v47 + 8))(v16, v48);

  v27 = v51;
  sub_252E36D14();
  v28 = v53;
  *v53 = 200;
  v30 = v56;
  v29 = v57;
  (*(v56 + 104))(v28, *MEMORY[0x277D85178], v57);
  v31 = v52;
  sub_252E36D24();
  (*(v30 + 8))(v28, v29);
  v32 = v55;
  v33 = *(v54 + 8);
  v33(v27, v55);
  sub_252E375F4();
  v33(v31, v32);
  if (sub_252E36C94())
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v34 = sub_252E36AD4();
    __swift_project_value_buffer(v34, qword_27F544D30);
    *&v68 = 0;
    *(&v68 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E80AF0);
    MEMORY[0x2530AD570](v44, v45);
    sub_252CC4050(v68, *(&v68 + 1), 0xD000000000000086, 0x8000000252E80B30, 0xD000000000000010, 0x8000000252E812D0, 229);

    v74 = v83;
    v75 = v84;
    v76 = v85;
    v70 = v79;
    v71 = v80;
    v72 = v81;
    v73 = v82;
    v68 = v77;
    v69 = v78;
  }

  else
  {

    swift_beginAccess();
    v35 = *(v18 + 112);
    v66 = *(v18 + 128);
    v67 = *(v18 + 144);
    v36 = *(v18 + 64);
    v61 = *(v18 + 48);
    v62 = v36;
    v37 = *(v18 + 80);
    v64 = *(v18 + 96);
    v65 = v35;
    v63 = v37;
    v38 = *(v18 + 32);
    v59 = *(v18 + 16);
    v60 = v38;
    sub_252938414(&v59, &v68, &qword_27F543160, &qword_252E4E950);

    v74 = v65;
    v75 = v66;
    v76 = v67;
    v70 = v61;
    v71 = v62;
    v72 = v63;
    v73 = v64;
    v68 = v59;
    v69 = v60;
  }

  v39 = v75;
  v40 = v58;
  *(v58 + 96) = v74;
  *(v40 + 112) = v39;
  *(v40 + 128) = v76;
  v41 = v71;
  *(v40 + 32) = v70;
  *(v40 + 48) = v41;
  v42 = v73;
  *(v40 + 64) = v72;
  *(v40 + 80) = v42;
  result = v69;
  *v40 = v68;
  *(v40 + 16) = result;
  return result;
}

__n128 sub_252B5A0C8@<Q0>(void *a1@<X0>, unint64_t a2@<X8>)
{
  sub_252B59318(&v120);
  if (!v121)
  {
    goto LABEL_26;
  }

  v98 = a2;
  v4 = v123;
  v144 = v123;
  v145[0] = v120;
  v145[1] = v121;

  sub_252A01B34(v145);
  v146 = v122;
  sub_252A01B34(&v146);
  sub_25293847C(&v144, &qword_27F540480, &qword_252E3C910);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 40);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v15 = *(v6 - 1);
      v16 = *v6;

      sub_252B59988(v15, v16, v124);

      v132 = v124[6];
      v133 = v124[7];
      v134 = v125;
      v128 = v124[2];
      v129 = v124[3];
      v130 = v124[4];
      v131 = v124[5];
      v126 = v124[0];
      v127 = v124[1];
      if (sub_252AFB7A0(&v126) != 1)
      {
        v141 = v132;
        v142 = v133;
        v143 = v134;
        v137 = v128;
        v138 = v129;
        v139 = v130;
        v140 = v131;
        v135 = v126;
        v136 = v127;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2529F8DF8(0, *(v7 + 2) + 1, 1, v7);
        }

        v18 = *(v7 + 2);
        v17 = *(v7 + 3);
        if (v18 >= v17 >> 1)
        {
          v7 = sub_2529F8DF8((v17 > 1), v18 + 1, 1, v7);
        }

        *(v7 + 2) = v18 + 1;
        v8 = &v7[136 * v18];
        *(v8 + 2) = v135;
        v9 = v136;
        v10 = v137;
        v11 = v139;
        *(v8 + 5) = v138;
        *(v8 + 6) = v11;
        *(v8 + 3) = v9;
        *(v8 + 4) = v10;
        v12 = v140;
        v13 = v141;
        v14 = v142;
        *(v8 + 20) = v143;
        *(v8 + 8) = v13;
        *(v8 + 9) = v14;
        *(v8 + 7) = v12;
      }

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  sub_25293847C(&v144, &qword_27F540480, &qword_252E3C910);
  v101 = v7;
  if (sub_252C4D664(5))
  {
    v19 = [a1 filters];
    if (v19)
    {
      v20 = v19;
      type metadata accessor for HomeFilter();
      v21 = sub_252E37264();

      v22 = type metadata accessor for HomeStore(0);
      v23 = static HomeStore.shared.getter(v22);
      v24 = HomeStore.scenes(matching:)(v21);
      v26 = v25;

      if ((v26 & 1) == 0)
      {
        a2 = v24 & 0xFFFFFFFFFFFFFF8;
        if (v24 >> 62)
        {
          v53 = sub_252E378C4();
          if (!v53)
          {
            goto LABEL_65;
          }
        }

        else
        {
          v53 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v53)
          {
            goto LABEL_65;
          }
        }

        v54 = 0;
        v45 = MEMORY[0x277D84F90];
        a1 = (v24 & 0xFFFFFFFFFFFFFF8);
        do
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](v54, v24);
            v55 = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              goto LABEL_59;
            }
          }

          else
          {
            if (v54 >= *(a2 + 16))
            {
              goto LABEL_60;
            }

            v55 = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              goto LABEL_59;
            }
          }

          v56 = sub_252E32E24();
          v58 = v57;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_2529F7A80(0, *(v45 + 2) + 1, 1, v45);
          }

          v60 = *(v45 + 2);
          v59 = *(v45 + 3);
          if (v60 >= v59 >> 1)
          {
            v45 = sub_2529F7A80((v59 > 1), v60 + 1, 1, v45);
          }

          *(v45 + 2) = v60 + 1;
          v61 = &v45[16 * v60];
          *(v61 + 4) = v56;
          *(v61 + 5) = v58;
          ++v54;
          v7 = v101;
          a2 = v24 & 0xFFFFFFFFFFFFFF8;
        }

        while (v55 != v53);
        goto LABEL_66;
      }

      sub_252929F10(v24, 1);
    }
  }

  v27 = type metadata accessor for HomeStore(0);
  v28 = static HomeStore.shared.getter(v27);
  v29 = v28[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v29 != 2 && (v29 & 1) == 0 || (v30 = [a1 filters]) == 0)
  {

LABEL_22:
    a2 = v98;
    if (qword_27F53F4D8 != -1)
    {
      goto LABEL_61;
    }

    goto LABEL_23;
  }

  v31 = v30;
  type metadata accessor for HomeFilter();
  v32 = sub_252E37264();

  v33 = [a1 userTask];
  v24 = HomeStore.services(matching:supporting:)(v32, v33);
  v35 = v34;

  if (v35)
  {
    sub_252929F10(v24, 1);

    goto LABEL_22;
  }

  a1 = (v24 & 0xFFFFFFFFFFFFFF8);
  if (v24 >> 62)
  {
    v43 = sub_252E378C4();
    v7 = v101;
    if (v43)
    {
      goto LABEL_29;
    }

    goto LABEL_65;
  }

  v43 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7 = v101;
  if (!v43)
  {
LABEL_65:
    v45 = MEMORY[0x277D84F90];
LABEL_66:
    sub_252929F10(v24, 0);
    v100 = sub_252C75848(v45);

    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v62 = sub_252E36AD4();
    __swift_project_value_buffer(v62, qword_27F544D30);
    v63 = sub_252E36AC4();
    v64 = sub_252E374C4();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v147 = v66;
      *v65 = 136315138;

      v67 = sub_252E373B4();
      v69 = v68;

      v70 = sub_252BE2CE0(v67, v69, &v147);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_252917000, v63, v64, "EntityIDs targeted by Intent: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      v71 = v66;
      v7 = v101;
      MEMORY[0x2530AED00](v71, -1, -1);
      MEMORY[0x2530AED00](v65, -1, -1);
    }

    v72 = *(v7 + 2);
    if (v72)
    {
      v73 = 0;
      v74 = v72 - 1;
      v75 = 32;
      while (1)
      {
        v111 = *&v7[v75];
        v76 = *&v7[v75 + 16];
        v77 = *&v7[v75 + 32];
        v78 = *&v7[v75 + 64];
        v114 = *&v7[v75 + 48];
        v115 = v78;
        v112 = v76;
        v113 = v77;
        v79 = *&v7[v75 + 80];
        v80 = *&v7[v75 + 96];
        v81 = *&v7[v75 + 112];
        v119 = *&v7[v75 + 128];
        v117 = v80;
        v118 = v81;
        v116 = v79;
        sub_252B5ADE8(&v111, &v147);

        v83 = sub_252C75848(v82);

        v84 = sub_252E36AC4();
        v85 = sub_252E374C4();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = v74;
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          *&v147 = v88;
          *v87 = 136315138;
          v89 = sub_252E373B4();
          v91 = sub_252BE2CE0(v89, v90, &v147);
          v7 = v101;

          *(v87 + 4) = v91;
          _os_log_impl(&dword_252917000, v84, v85, "Entity IDs in records: %s", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v88);
          MEMORY[0x2530AED00](v88, -1, -1);
          v92 = v87;
          v74 = v86;
          MEMORY[0x2530AED00](v92, -1, -1);
        }

        v93 = sub_252A1218C(v83, v100);

        if ((v93 & 1) == 0)
        {
          break;
        }

        sub_252B5AE20(&v111);
        if (v74 == v73)
        {
          goto LABEL_78;
        }

        ++v73;
        v75 += 136;
        if (v73 >= *(v7 + 2))
        {
          __break(1u);
          goto LABEL_78;
        }
      }

      v108 = v117;
      v109 = v118;
      v110 = v119;
      v104 = v113;
      v105 = v114;
      v106 = v115;
      v107 = v116;
      v102 = v111;
      v103 = v112;
      GEOLocationCoordinate2DMake();
      v153 = v108;
      v154 = v109;
      v155 = v110;
      v149 = v104;
      v150 = v105;
      v151 = v106;
      v152 = v107;
      v147 = v102;
      v148 = v103;
    }

    else
    {
LABEL_78:

      sub_252B5ADCC(&v147);
    }

    a2 = v98;
    goto LABEL_81;
  }

LABEL_29:
  v44 = 0;
  v99 = v24 & 0xC000000000000001;
  v45 = MEMORY[0x277D84F90];
  a2 = v24;
  while (v99)
  {
    MEMORY[0x2530ADF00](v44, v24);
    v46 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_57;
    }

LABEL_33:
    v47 = sub_252E32E24();
    v49 = v48;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_2529F7A80(0, *(v45 + 2) + 1, 1, v45);
    }

    v51 = *(v45 + 2);
    v50 = *(v45 + 3);
    if (v51 >= v50 >> 1)
    {
      v45 = sub_2529F7A80((v50 > 1), v51 + 1, 1, v45);
    }

    *(v45 + 2) = v51 + 1;
    v52 = &v45[16 * v51];
    *(v52 + 4) = v47;
    *(v52 + 5) = v49;
    ++v44;
    v7 = v101;
    v24 = a2;
    if (v46 == v43)
    {
      goto LABEL_66;
    }
  }

  if (v44 >= a1[2])
  {
    goto LABEL_58;
  }

  v46 = v44 + 1;
  if (!__OFADD__(v44, 1))
  {
    goto LABEL_33;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  swift_once();
LABEL_23:
  v36 = sub_252E36AD4();
  __swift_project_value_buffer(v36, qword_27F544D30);
  v37 = a1;
  v38 = sub_252E36AC4();
  v39 = sub_252E374D4();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412290;
    *(v40 + 4) = v37;
    *v41 = v37;
    v42 = v37;
    _os_log_impl(&dword_252917000, v38, v39, "Couldn't find services matching intent: %@", v40, 0xCu);
    sub_25293847C(v41, &qword_27F541B78, &qword_252E4A340);
    MEMORY[0x2530AED00](v41, -1, -1);
    MEMORY[0x2530AED00](v40, -1, -1);
  }

LABEL_26:
  sub_252B5ADCC(&v147);
LABEL_81:
  v94 = v154;
  *(a2 + 96) = v153;
  *(a2 + 112) = v94;
  *(a2 + 128) = v155;
  v95 = v150;
  *(a2 + 32) = v149;
  *(a2 + 48) = v95;
  v96 = v152;
  *(a2 + 64) = v151;
  *(a2 + 80) = v96;
  result = v148;
  *a2 = v147;
  *(a2 + 16) = result;
  return result;
}

BOOL sub_252B5AB90(void *a1)
{
  v2 = sub_252E32E04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252B5A0C8(a1, v17);
  v25 = v17[6];
  v26 = v17[7];
  v27 = v18;
  v21 = v17[2];
  v22 = v17[3];
  v23 = v17[4];
  v24 = v17[5];
  v19 = v17[0];
  v20 = v17[1];
  if (sub_252AFB7A0(&v19) == 1)
  {
    return 0;
  }

  v7 = v20;
  v8 = *&v24;
  sub_252E32DF4();
  sub_252E32D94();
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  v6 = v8 >= v10;
  if (v8 < v10)
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544D30);
    v12 = sub_252E36AC4();
    v13 = sub_252E374C4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_252917000, v12, v13, "Found an invalid async record, will proceed to remove", v14, 2u);
      MEMORY[0x2530AED00](v14, -1, -1);
    }

    sub_252B58FEC(v7, *(&v7 + 1));
  }

  sub_25293847C(v17, &qword_27F543160, &qword_252E4E950);
  return v6;
}

double sub_252B5ADCC(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252B5AE70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_252B5AF00()
{
  result = qword_27F543680;
  if (!qword_27F543680)
  {
    result = swift_getWitnessTable(byte_252E4DA40, &type metadata for AsyncInteractionRecordList, v0, v1);
    atomic_store(result, &qword_27F543680);
  }

  return result;
}

uint64_t sub_252B5AF54(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252B5AF9C(uint64_t a1)
{
  v3 = *(sub_252E36AB4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_252B56A70(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_252B5B068(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000252E812F0 == a2 || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE900000000000073 || (sub_252E37DB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F43 || (sub_252E37DB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6B73615472657375 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x79746964696C6176 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xEE0064496B736154 || (sub_252E37DB4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000252E81310 == a2 || (sub_252E37DB4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6D614E656E656373 && a2 == 0xE900000000000065)
  {

    return 10;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_252B5B400@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543688, &qword_252E4D878);
  v5 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v7 = &v32 - v6;
  v8 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_252B5BB5C();

  sub_252E37F74();
  if (v2)
  {
    v45 = MEMORY[0x277D84F90];
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    v9 = v5;
    LOBYTE(v55) = 0;
    *&v38 = sub_252E37C04();
    *(&v38 + 1) = v10;

    LOBYTE(v55) = 1;
    v11 = sub_252E37C04();
    v42 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    LOBYTE(v46) = 2;
    sub_252984B28(&qword_27F540920, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_252E37C64();
    v41 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543698, &qword_252E4D880);
    LOBYTE(v46) = 3;
    sub_252B5BBB0(&qword_27F5436A0, &qword_27F5436A8, asc_252E40E30, MEMORY[0x277D83978]);
    sub_252E37C64();
    v45 = v55;
    LOBYTE(v55) = 4;
    v37 = sub_252E37C44();
    type metadata accessor for CodableUserTask();
    LOBYTE(v46) = 5;
    sub_252B5AF54(&qword_27F541930, type metadata accessor for CodableUserTask, byte_252E40E58);
    sub_252E37C64();
    v40 = v55;
    LOBYTE(v55) = 6;
    v13 = sub_252E37C04();
    v39 = v14;
    v36 = v13;
    LOBYTE(v55) = 7;
    sub_252E37C24();
    *&v34 = v15;
    LOBYTE(v55) = 8;
    *(&v34 + 1) = sub_252E37BA4();
    v35 = v16;
    LOBYTE(v55) = 9;
    v17 = sub_252E37BA4();
    v19 = v18;
    v70[0] = 10;
    v20 = sub_252E37BA4();
    v33 = v21;
    v22 = v20;
    (*(v9 + 8))(v7, v43);
    v46 = v38;
    v32 = v11;
    v23 = v42;
    *&v47 = v11;
    *(&v47 + 1) = v42;
    *&v48 = v41;
    *(&v48 + 1) = v45;
    v24 = v36;
    *&v49 = v37;
    *(&v49 + 1) = v40;
    *&v50 = v36;
    *(&v50 + 1) = v39;
    v25 = v34;
    v51 = v34;
    v26 = v35;
    *&v52 = v35;
    *(&v52 + 1) = v17;
    *&v53 = v19;
    *(&v53 + 1) = v22;
    v54 = v33;
    sub_252B5ADE8(&v46, &v55);
    __swift_destroy_boxed_opaque_existential_1(v44);
    v55 = v38;
    v56 = v32;
    v57 = v23;
    v58 = v41;
    v59 = v45;
    v60 = v37;
    v61 = v40;
    v62 = v24;
    v63 = v39;
    v64 = __PAIR128__(*(&v34 + 1), v25);
    v65 = v26;
    v66 = v17;
    v67 = v19;
    v68 = v22;
    v69 = v33;
    result = sub_252B5AE20(&v55);
    v28 = v53;
    *(a2 + 96) = v52;
    *(a2 + 112) = v28;
    *(a2 + 128) = v54;
    v29 = v49;
    *(a2 + 32) = v48;
    *(a2 + 48) = v29;
    v30 = v51;
    *(a2 + 64) = v50;
    *(a2 + 80) = v30;
    v31 = v47;
    *a2 = v46;
    *(a2 + 16) = v31;
  }

  return result;
}

unint64_t sub_252B5BB5C()
{
  result = qword_27F543690;
  if (!qword_27F543690)
  {
    result = swift_getWitnessTable(a9_1, &type metadata for AsyncInteractionRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543690);
  }

  return result;
}

uint64_t sub_252B5BBB0(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F543698, &qword_252E4D880);
    v10 = sub_252B5AF54(a2, type metadata accessor for CodableEntityResponse, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252B5BCAC(uint64_t *a1)
{
  v3 = *(sub_252E36AB4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_252B568B0(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_252B5BE1C(uint64_t a1)
{
  v3 = *(sub_252E36AB4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_252B56980(a1, v1 + v4, v5);
}

uint64_t sub_252B5BEC4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  sub_252DBE828((v0 + 16), v1, v2);
}

uint64_t objectdestroy_9Tm()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

unint64_t sub_252B5C008()
{
  result = qword_27F5436D0;
  if (!qword_27F5436D0)
  {
    result = swift_getWitnessTable(byte_252E59A30, &type metadata for DevicesFailedRecord, v0, v1);
    atomic_store(result, &qword_27F5436D0);
  }

  return result;
}

uint64_t objectdestroy_78Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_3Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252B5C168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_252B5C1A4()
{
  result = qword_27F5436D8;
  if (!qword_27F5436D8)
  {
    result = swift_getWitnessTable(byte_252E4D9C8, &type metadata for AsyncInteractionRecordList, v0, v1);
    atomic_store(result, &qword_27F5436D8);
  }

  return result;
}

unint64_t sub_252B5C1FC()
{
  result = qword_27F5436E0;
  if (!qword_27F5436E0)
  {
    result = swift_getWitnessTable(asc_252E4D9A0, &type metadata for AsyncInteractionRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5436E0);
  }

  return result;
}

unint64_t sub_252B5C254()
{
  result = qword_27F5436E8;
  if (!qword_27F5436E8)
  {
    result = swift_getWitnessTable(byte_252E4D910, &type metadata for AsyncInteractionRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5436E8);
  }

  return result;
}

unint64_t sub_252B5C2AC()
{
  result = qword_27F5436F0;
  if (!qword_27F5436F0)
  {
    result = swift_getWitnessTable(byte_252E4D938, &type metadata for AsyncInteractionRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5436F0);
  }

  return result;
}

uint64_t sub_252B5C300(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000252E81330 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_252E37DB4();

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

uint64_t sub_252B5C428@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5436F8, &qword_252E4DA68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252B5C670();
  sub_252E37F74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v9 = sub_252E37C04();
  v11 = v10;
  v20 = v9;
  v23 = 1;
  v12 = sub_252E37C04();
  v14 = v13;
  v19 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  v22 = 2;
  sub_252984B28(&qword_27F540920, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_252E37C64();
  (*(v6 + 8))(v8, v5);
  v15 = v21;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v17 = v19;
  *a2 = v20;
  a2[1] = v11;
  a2[2] = v17;
  a2[3] = v14;
  a2[4] = v15;
  return result;
}

unint64_t sub_252B5C670()
{
  result = qword_27F543700;
  if (!qword_27F543700)
  {
    result = swift_getWitnessTable(byte_252E4DB30, &type metadata for AsyncInteractionRecordList.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543700);
  }

  return result;
}

unint64_t sub_252B5C6D8()
{
  result = qword_27F543710;
  if (!qword_27F543710)
  {
    result = swift_getWitnessTable(byte_252E4DB08, &type metadata for AsyncInteractionRecordList.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543710);
  }

  return result;
}

unint64_t sub_252B5C730()
{
  result = qword_27F543718;
  if (!qword_27F543718)
  {
    result = swift_getWitnessTable(asc_252E4DA78, &type metadata for AsyncInteractionRecordList.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543718);
  }

  return result;
}

unint64_t sub_252B5C788()
{
  result = qword_27F543720;
  if (!qword_27F543720)
  {
    result = swift_getWitnessTable(a9_2, &type metadata for AsyncInteractionRecordList.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543720);
  }

  return result;
}

uint64_t sub_252B5C874()
{
  type metadata accessor for BrigthnessZeroAsPowerOffHandleDelegate();

  return swift_allocObject();
}

void sub_252B5C8A4(void *a1, void (*a2)(char *))
{
  v3 = [a1 filters];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeFilter();
    v5 = sub_252E37264();

    v6 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v7 = sub_252E36F04();
    v8 = [v6 initWithIdentifier:0 displayString:v7];

    v9 = v8;
    [v9 setBoolValue_];
    [v9 setType_];

    v10 = objc_allocWithZone(type metadata accessor for HomeUserTask());
    v11 = sub_252E36F04();
    v12 = [v10 initWithIdentifier:0 displayString:v11];

    v13 = v12;
    [v13 setTaskType_];
    [v13 setAttribute_];
    [v13 setValue_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402A8, &unk_252E3E850);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_252E3C130;
    *(v15 + 32) = v13;
    v16 = v13;
    v17 = sub_252B4CA9C(v5, v15, 0, 1);
    v19 = v18;

    swift_setDeallocating();
    swift_arrayDestroy();
    *(inited + 32) = v17;
    *(inited + 40) = v19 & 1;
    v20 = combineResults(results:)(inited);
    swift_setDeallocating();
    sub_2529904F0(inited + 32);
    sub_252990634();
    a2(v20);
  }

  else
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_27F544C70);
    sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD00000000000008CLL, 0x8000000252E813A0, 0xD000000000000021, 0x8000000252E68B10, 26);
    v20 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v22 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v20[v22] = 5;
    [v20 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v23 = sub_252E37254();
    [v20 setEntityResponses_];

    a2(v20);
  }
}

uint64_t sub_252B5CC4C(void *a1)
{
  if (!sub_252C4B5D4() || (sub_252C4B680(1) & 1) == 0)
  {
    goto LABEL_11;
  }

  v2 = [a1 userTask];
  if (!v2)
  {
    sub_252C515AC();
LABEL_11:
    v6 = 0;
    return v6 & 1;
  }

  v3 = v2;
  v4 = [v2 attribute];

  if (v4 != 2 || (sub_252AABAA0() & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = sub_252C4D57C();
  v6 = 0;
  if ((v7 & 1) == 0 && (v5 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5);
    sub_252929E74((v8 + 288), v16);

    v9 = v17;
    v10 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v11 = (*(v10 + 80))(v9, v10);
    if (v11)
    {
      v12 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v11);
      sub_252929E74((v12 + 16), v15);

      __swift_project_boxed_opaque_existential_1(v15, v15[3]);
      v13 = sub_252E338F4();
      __swift_destroy_boxed_opaque_existential_1(v15);
      v6 = v13 ^ 1;
    }

    else
    {
      v6 = 1;
    }

    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return v6 & 1;
}

id HomeUserTaskResponse.__allocating_init(userTask:taskOutcome:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  [v8 setTaskOutcome_];
  [v8 setUserTask_];

  return v8;
}

uint64_t HomeUserTaskResponse.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  HomeUserTaskResponse.Builder.init()();
  return v0;
}

uint64_t HomeUserTaskResponse.Builder.init()()
{
  *(v0 + 16) = 1;
  v1 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v2 = sub_252E36F04();
  v3 = [v1 initWithIdentifier:0 displayString:v2];

  v4 = v3;
  [v4 setTaskType_];
  [v4 setAttribute_];
  [v4 setValue_];

  *(v0 + 24) = v4;
  return v0;
}

uint64_t sub_252B5CF34(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + 24);
    *(v1 + 24) = a1;
    v3 = a1;
  }
}

uint64_t sub_252B5CF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v8 = sub_252E36F04();
  v9 = [v7 initWithIdentifier:0 displayString:v8];

  v10 = v9;
  [v10 setTaskType_];
  [v10 setAttribute_];
  [v10 setValue_];

  v11 = *(v3 + 24);
  *(v3 + 24) = v10;
}

id sub_252B5D054()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
  v4 = v2;
  v5 = sub_252E36F04();
  v6 = [v3 initWithIdentifier:0 displayString:v5];

  v7 = v6;
  [v7 setTaskOutcome_];
  [v7 setUserTask_];

  return v7;
}

uint64_t sub_252B5D0FC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  type metadata accessor for HomeUserTaskResponse.Builder();
  v4 = swift_allocObject();
  v5 = v2;
  HomeUserTaskResponse.Builder.init()();
  v6 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;

  return v4;
}

uint64_t HomeUserTaskResponse.Builder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_252B5D2B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5415C8, &qword_252E40550);
  *(v1 + 1184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543728, &qword_252E4DBE8);
  *(v1 + 1192) = swift_task_alloc();
  v2 = sub_252E32BA4();
  *(v1 + 1200) = v2;
  *(v1 + 1208) = *(v2 - 8);
  *(v1 + 1216) = swift_task_alloc();
  *(v1 + 1224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  *(v1 + 1232) = swift_task_alloc();
  *(v1 + 1240) = swift_task_alloc();
  *(v1 + 1248) = swift_task_alloc();
  *(v1 + 1256) = swift_task_alloc();
  v3 = sub_252E32E04();
  *(v1 + 1264) = v3;
  *(v1 + 1272) = *(v3 - 8);
  *(v1 + 1280) = swift_task_alloc();
  v4 = sub_252E35BE4();
  *(v1 + 1288) = v4;
  *(v1 + 1296) = *(v4 - 8);
  *(v1 + 1304) = swift_task_alloc();
  v5 = sub_252E35BF4();
  *(v1 + 1312) = v5;
  *(v1 + 1320) = *(v5 - 8);
  *(v1 + 1328) = swift_task_alloc();
  v6 = sub_252E35C14();
  *(v1 + 1336) = v6;
  *(v1 + 1344) = *(v6 - 8);
  *(v1 + 1352) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  *(v1 + 1360) = swift_task_alloc();
  *(v1 + 1368) = swift_task_alloc();
  *(v1 + 1376) = swift_task_alloc();
  *(v1 + 1384) = swift_task_alloc();
  *(v1 + 1392) = swift_task_alloc();
  *(v1 + 1400) = swift_task_alloc();
  *(v1 + 1104) = *v0;
  *(v1 + 1408) = *(v0 + 16);
  *(v1 + 1120) = *(v0 + 24);
  *(v1 + 983) = *(v0 + 40);
  memcpy((v1 + 520), (v0 + 41), 0x1CFuLL);

  return MEMORY[0x2822009F8](sub_252B5D658, 0, 0);
}

uint64_t sub_252B5D658()
{
  v119 = v0;
  v1 = *(v0 + 1408);
  v2 = *(v0 + 1400);
  v3 = *(v0 + 1208);
  v4 = *(v0 + 1200);
  *(v0 + 1416) = [objc_allocWithZone(type metadata accessor for AutomateHomeIntent()) init];
  memcpy(v118, (v0 + 520), sizeof(v118));
  v5 = sub_252AEFEB0();
  *(v0 + 1424) = sub_252A43278();

  v6 = *(v3 + 56);
  *(v0 + 1432) = v6;
  *(v0 + 1440) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v2, 1, 1, v4);
  if (v1)
  {
    v7 = *(v0 + 983);
    v8 = *(v0 + 1408);
    v9 = *(v0 + 1328);
    v10 = *(v0 + 1320);
    v11 = *(v0 + 1312);
    v12 = *(v0 + 1304);
    v13 = *(v0 + 1296);
    v14 = *(v0 + 1288);
    *(v0 + 16) = *(v0 + 1104);
    *(v0 + 32) = v8;
    *(v0 + 40) = *(v0 + 1120);
    *(v0 + 56) = v7;
    memcpy((v0 + 57), (v0 + 520), 0x1CFuLL);
    (*(v10 + 104))(v9, *MEMORY[0x277D56130], v11);
    (*(v13 + 104))(v12, *MEMORY[0x277D56128], v14);
    sub_252CC6450(MEMORY[0x277D84F90]);
    sub_252E35C04();
    sub_252E32DF4();
    v15 = swift_task_alloc();
    *(v0 + 1448) = v15;
    *v15 = v0;
    v15[1] = sub_252B5E598;
    v16 = *(v0 + 1352);
    v17 = *(v0 + 1280);

    return sub_252BAE648(v16, v17);
  }

  memcpy(v118, (v0 + 520), sizeof(v118));
  if (sub_252BB2304())
  {
    v19 = *(v0 + 983);
    if (v19 <= 1)
    {
      if (*(v0 + 983))
      {
        v20 = 4;
      }

      else
      {
        v20 = 3;
      }
    }

    else if (v19 == 2)
    {
      v20 = 1;
    }

    else
    {
      if (v19 != 3)
      {
        v47 = *(v0 + 1360);
        v48 = *(v0 + 1208);
        v49 = *(v0 + 1200);
        sub_252938414(*(v0 + 1400), v47, &qword_27F540F00, &unk_252E3FEC0);
        v50 = *(v48 + 48);
        v51 = v50(v47, 1, v49);
        v52 = *(v0 + 1360);
        if (v51 == 1)
        {
          v53 = *(v0 + 1200);
          v54 = *(v0 + 1192);
          v55 = *(v0 + 1184);
          v56 = sub_252E32FF4();
          (*(*(v56 - 8) + 56))(v54, 1, 1, v56);
          v57 = sub_252E33044();
          (*(*(v57 - 8) + 56))(v55, 1, 1, v57);
          sub_252E32B94();
          if (v50(v52, 1, v53) != 1)
          {
            sub_25293847C(*(v0 + 1360), &qword_27F540F00, &unk_252E3FEC0);
          }
        }

        else
        {
          (*(*(v0 + 1208) + 32))(*(v0 + 1216), *(v0 + 1360), *(v0 + 1200));
        }

        v87 = *(v0 + 1400);
        v88 = *(v0 + 1200);
        if (v50(v87, 1, v88))
        {
          (*(*(v0 + 1272) + 56))(*(v0 + 1232), 1, 1, *(v0 + 1264));
        }

        else
        {
          v89 = *(v0 + 1224);
          v90 = *(v0 + 1208);
          (*(v90 + 16))(v89, v87, v88);
          sub_252E32B44();
          (*(v90 + 8))(v89, v88);
        }

        v91 = *(v0 + 1272);
        v92 = *(v0 + 1248);
        v93 = *(v0 + 1232);
        v94 = *(v0 + 1224);
        v95 = *(v0 + 1216);
        v96 = *(v0 + 1208);
        v114 = *(v0 + 1264);
        v97 = *(v0 + 1200);
        v98 = objc_allocWithZone(type metadata accessor for TriggerCondition());
        v99 = sub_252E36F04();
        v100 = [v98 initWithIdentifier:0 displayString:v99 pronunciationHint:0];

        v117 = v100;
        [v117 setType_];
        v101 = *(v96 + 16);
        v101(v94, v95, v97);
        sub_252938414(v93, v92, &qword_27F540F38, &unk_252E41490);
        v102 = type metadata accessor for TimeTriggerValue(0);
        v103 = objc_allocWithZone(v102);
        v104 = OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_recurringDate;
        (*(v91 + 56))(&v103[OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_recurringDate], 1, 1, v114);
        v101(&v103[OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate], v94, v97);
        swift_beginAccess();
        sub_2529D032C(v92, &v103[v104], &qword_27F540F38, &unk_252E41490);
        swift_endAccess();
        v103[OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_isDateInterval] = 0;
        v105 = sub_252E36F04();
        *(v0 + 1152) = v103;
        *(v0 + 1160) = v102;
        v106 = objc_msgSendSuper2((v0 + 1152), sel_initWithIdentifier_displayString_pronunciationHint_, 0, v105, 0);

        sub_25293847C(v92, &qword_27F540F38, &unk_252E41490);
        v107 = *(v96 + 8);
        v107(v94, v97);
        [v117 setValue_];

        v108 = *(v0 + 1232);
        v109 = *(v0 + 1216);
        v110 = *(v0 + 1200);
        [v117 setRecurrence_];

        sub_25293847C(v108, &qword_27F540F38, &unk_252E41490);
        v107(v109, v110);
        v42 = v117;
        goto LABEL_26;
      }

      v20 = 2;
    }

    v116 = v20;
    v58 = *(v0 + 1400);
    v59 = *(v0 + 1208);
    v60 = *(v0 + 1200);
    (*(v0 + 1432))(*(v0 + 1368), 1, 1, v60);
    if ((*(v59 + 48))(v58, 1, v60))
    {
      (*(*(v0 + 1272) + 56))(*(v0 + 1240), 1, 1, *(v0 + 1264));
    }

    else
    {
      v61 = *(v0 + 1224);
      v62 = *(v0 + 1208);
      v63 = *(v0 + 1200);
      (*(v62 + 16))(v61, *(v0 + 1400), v63);
      sub_252E32B44();
      (*(v62 + 8))(v61, v63);
    }

    v113 = *(v0 + 1432);
    v64 = *(v0 + 1376);
    v65 = *(v0 + 1368);
    v66 = *(v0 + 1272);
    v67 = *(v0 + 1264);
    v68 = *(v0 + 1248);
    v69 = *(v0 + 1240);
    v70 = *(v0 + 1200);
    v71 = objc_allocWithZone(type metadata accessor for TriggerCondition());
    v72 = sub_252E36F04();
    v73 = [v71 initWithIdentifier:0 displayString:v72 pronunciationHint:0];

    v74 = v73;
    [v74 setType_];
    sub_252938414(v65, v64, &qword_27F540F00, &unk_252E3FEC0);
    sub_252938414(v69, v68, &qword_27F540F38, &unk_252E41490);
    v111 = type metadata accessor for EventTriggerValue(0);
    v75 = objc_allocWithZone(v111);
    v76 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset;
    v113(&v75[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset], 1, 1, v70);
    v77 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate;
    (*(v66 + 56))(&v75[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate], 1, 1, v67);
    *&v75[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event] = v116;
    swift_beginAccess();
    v78 = &v75[v76];
    v42 = v74;
    sub_2529D032C(v64, v78, &qword_27F540F00, &unk_252E3FEC0);
    swift_endAccess();
    swift_beginAccess();
    sub_2529D032C(v68, &v75[v77], &qword_27F540F38, &unk_252E41490);
    swift_endAccess();
    v79 = sub_252E36F04();
    *(v0 + 1168) = v75;
    *(v0 + 1176) = v111;
    v80 = objc_msgSendSuper2((v0 + 1168), sel_initWithIdentifier_displayString_pronunciationHint_, 0, v79, 0);

    sub_25293847C(v68, &qword_27F540F38, &unk_252E41490);
    sub_25293847C(v64, &qword_27F540F00, &unk_252E3FEC0);
    [v74 setValue_];

    v45 = *(v0 + 1368);
    v46 = *(v0 + 1240);
  }

  else
  {
    v21 = *(v0 + 1400);
    v22 = *(v0 + 1208);
    v23 = *(v0 + 1200);
    (*(v0 + 1432))(*(v0 + 1384), 1, 1, v23);
    if ((*(v22 + 48))(v21, 1, v23))
    {
      (*(*(v0 + 1272) + 56))(*(v0 + 1256), 1, 1, *(v0 + 1264));
    }

    else
    {
      v24 = *(v0 + 1224);
      v25 = *(v0 + 1208);
      v26 = *(v0 + 1200);
      (*(v25 + 16))(v24, *(v0 + 1400), v26);
      sub_252E32B44();
      (*(v25 + 8))(v24, v26);
    }

    v115 = *(v0 + 1432);
    v27 = *(v0 + 1384);
    v28 = *(v0 + 1376);
    v29 = *(v0 + 1272);
    v30 = *(v0 + 1264);
    v31 = *(v0 + 1256);
    v32 = *(v0 + 1248);
    v33 = *(v0 + 1200);
    v34 = objc_allocWithZone(type metadata accessor for TriggerCondition());
    v35 = sub_252E36F04();
    v36 = [v34 initWithIdentifier:0 displayString:v35 pronunciationHint:0];

    v37 = v36;
    [v37 setType_];
    sub_252938414(v27, v28, &qword_27F540F00, &unk_252E3FEC0);
    sub_252938414(v31, v32, &qword_27F540F38, &unk_252E41490);
    v112 = type metadata accessor for EventTriggerValue(0);
    v38 = objc_allocWithZone(v112);
    v39 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset;
    v115(&v38[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset], 1, 1, v33);
    v40 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate;
    (*(v29 + 56))(&v38[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate], 1, 1, v30);
    *&v38[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event] = 0;
    swift_beginAccess();
    v41 = &v38[v39];
    v42 = v37;
    sub_2529D032C(v28, v41, &qword_27F540F00, &unk_252E3FEC0);
    swift_endAccess();
    swift_beginAccess();
    sub_2529D032C(v32, &v38[v40], &qword_27F540F38, &unk_252E41490);
    swift_endAccess();
    v43 = sub_252E36F04();
    *(v0 + 1136) = v38;
    *(v0 + 1144) = v112;
    v44 = objc_msgSendSuper2((v0 + 1136), sel_initWithIdentifier_displayString_pronunciationHint_, 0, v43, 0);

    sub_25293847C(v32, &qword_27F540F38, &unk_252E41490);
    sub_25293847C(v28, &qword_27F540F00, &unk_252E3FEC0);
    [v37 setValue_];

    v45 = *(v0 + 1384);
    v46 = *(v0 + 1256);
  }

  [v42 setRecurrence_];

  sub_25293847C(v46, &qword_27F540F38, &unk_252E41490);
  sub_25293847C(v45, &qword_27F540F00, &unk_252E3FEC0);
LABEL_26:
  v81 = *(v0 + 1424);
  v82 = *(v0 + 1416);
  v83 = *(v0 + 1400);
  v84 = v42;
  [v82 setAutomatableTask_];
  [v82 setTrigger_];

  sub_25293847C(v83, &qword_27F540F00, &unk_252E3FEC0);

  v85 = *(v0 + 8);
  v86 = *(v0 + 1416);

  return v85(v86);
}

uint64_t sub_252B5E598(uint64_t a1)
{
  v2 = *(*v1 + 1352);
  v3 = *(*v1 + 1344);
  v4 = *(*v1 + 1336);
  v5 = *(*v1 + 1280);
  v6 = *(*v1 + 1272);
  v7 = *(*v1 + 1264);
  *(*v1 + 1456) = a1;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_252B5E754, 0, 0);
}

uint64_t sub_252B5E754()
{
  v139 = v0;
  v1 = *(v0 + 1456);
  if (v1)
  {
    v2 = [*(v0 + 1456) startDateComponents];
    if (v2)
    {
      v3 = v2;
      sub_252E32B24();

      v4 = 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(v0 + 1400);
    v6 = *(v0 + 1392);
    (*(v0 + 1432))(v6, v4, 1, *(v0 + 1200));
    sub_252B5F69C(v6, v5);
    memcpy(v138, (v0 + 520), sizeof(v138));
    v7 = [v1 recurrenceRule];
    v8 = sub_252BB1378(v7);

    if (v8)
    {

      v9 = 0;
      goto LABEL_15;
    }

    if (sub_252E35D34() && (v10 = sub_252E35CF4(), , v10))
    {
    }

    else if (sub_252E35D34())
    {
      v11 = sub_252E35D04();

      if (v11)
      {

        v8 = 0;
        v9 = 1;
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v9 = 0;
  v8 = 0;
LABEL_15:
  memcpy(v138, (v0 + 520), sizeof(v138));
  v137 = v8;
  if ((sub_252BB2304() & 1) == 0)
  {
    v14 = *(v0 + 1400);
    v15 = *(v0 + 1208);
    v16 = *(v0 + 1200);
    (*(v0 + 1432))(*(v0 + 1384), 1, 1, v16);
    if ((*(v15 + 48))(v14, 1, v16))
    {
      (*(*(v0 + 1272) + 56))(*(v0 + 1256), 1, 1, *(v0 + 1264));
    }

    else
    {
      v17 = *(v0 + 1224);
      v18 = *(v0 + 1208);
      v19 = *(v0 + 1200);
      (*(v18 + 16))(v17, *(v0 + 1400), v19);
      sub_252E32B44();
      (*(v18 + 8))(v17, v19);
    }

    v130 = *(v0 + 1432);
    v20 = *(v0 + 1384);
    v21 = *(v0 + 1376);
    v22 = *(v0 + 1272);
    v134 = *(v0 + 1264);
    v23 = *(v0 + 1256);
    v24 = *(v0 + 1248);
    v25 = *(v0 + 1200);
    v26 = objc_allocWithZone(type metadata accessor for TriggerCondition());
    v27 = sub_252E36F04();
    v28 = [v26 initWithIdentifier:0 displayString:v27 pronunciationHint:0];

    v29 = v28;
    [v29 setType_];
    sub_252938414(v20, v21, &qword_27F540F00, &unk_252E3FEC0);
    sub_252938414(v23, v24, &qword_27F540F38, &unk_252E41490);
    v30 = type metadata accessor for EventTriggerValue(0);
    v31 = objc_allocWithZone(v30);
    v32 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset;
    v130(&v31[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset], 1, 1, v25);
    v33 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate;
    (*(v22 + 56))(&v31[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate], 1, 1, v134);
    *&v31[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event] = 0;
    swift_beginAccess();
    sub_2529D032C(v21, &v31[v32], &qword_27F540F00, &unk_252E3FEC0);
    swift_endAccess();
    swift_beginAccess();
    sub_2529D032C(v24, &v31[v33], &qword_27F540F38, &unk_252E41490);
    swift_endAccess();
    v34 = sub_252E36F04();
    *(v0 + 1136) = v31;
    v35 = v29;
    *(v0 + 1144) = v30;
    v36 = objc_msgSendSuper2((v0 + 1136), sel_initWithIdentifier_displayString_pronunciationHint_, 0, v34, 0);

    sub_25293847C(v24, &qword_27F540F38, &unk_252E41490);
    sub_25293847C(v21, &qword_27F540F00, &unk_252E3FEC0);
    [v29 setValue_];

    if (v137)
    {
      v37 = sub_252E37254();
    }

    else
    {
      v37 = 0;
    }

    v38 = *(v0 + 1384);
    v39 = *(v0 + 1256);
    goto LABEL_41;
  }

  v12 = *(v0 + 983);
  if (v12 <= 1)
  {
    if (*(v0 + 983))
    {
      v13 = 4;
    }

    else
    {
      v13 = 3;
    }

LABEL_34:
    v135 = v13;
    v51 = *(v0 + 1400);
    v52 = *(v0 + 1208);
    v53 = *(v0 + 1200);
    (*(v0 + 1432))(*(v0 + 1368), 1, 1, v53);
    if ((*(v52 + 48))(v51, 1, v53))
    {
      (*(*(v0 + 1272) + 56))(*(v0 + 1240), 1, 1, *(v0 + 1264));
    }

    else
    {
      v54 = *(v0 + 1224);
      v55 = *(v0 + 1208);
      v56 = *(v0 + 1200);
      (*(v55 + 16))(v54, *(v0 + 1400), v56);
      sub_252E32B44();
      (*(v55 + 8))(v54, v56);
    }

    v129 = *(v0 + 1432);
    v57 = *(v0 + 1376);
    v58 = *(v0 + 1368);
    v59 = *(v0 + 1272);
    v132 = *(v0 + 1264);
    v60 = *(v0 + 1248);
    v61 = *(v0 + 1240);
    v62 = *(v0 + 1200);
    v63 = objc_allocWithZone(type metadata accessor for TriggerCondition());
    v64 = sub_252E36F04();
    v65 = [v63 initWithIdentifier:0 displayString:v64 pronunciationHint:0];

    v66 = v65;
    [v66 setType_];
    sub_252938414(v58, v57, &qword_27F540F00, &unk_252E3FEC0);
    sub_252938414(v61, v60, &qword_27F540F38, &unk_252E41490);
    v67 = type metadata accessor for EventTriggerValue(0);
    v68 = objc_allocWithZone(v67);
    v69 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset;
    v129(&v68[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset], 1, 1, v62);
    v70 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate;
    (*(v59 + 56))(&v68[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate], 1, 1, v132);
    *&v68[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event] = v135;
    swift_beginAccess();
    sub_2529D032C(v57, &v68[v69], &qword_27F540F00, &unk_252E3FEC0);
    swift_endAccess();
    swift_beginAccess();
    sub_2529D032C(v60, &v68[v70], &qword_27F540F38, &unk_252E41490);
    swift_endAccess();
    v71 = sub_252E36F04();
    *(v0 + 1168) = v68;
    v35 = v66;
    *(v0 + 1176) = v67;
    v72 = objc_msgSendSuper2((v0 + 1168), sel_initWithIdentifier_displayString_pronunciationHint_, 0, v71, 0);

    sub_25293847C(v60, &qword_27F540F38, &unk_252E41490);
    sub_25293847C(v57, &qword_27F540F00, &unk_252E3FEC0);
    [v66 setValue_];

    if (v137)
    {
      v37 = sub_252E37254();
    }

    else
    {
      v37 = 0;
    }

    v38 = *(v0 + 1368);
    v39 = *(v0 + 1240);
LABEL_41:
    [v35 setRecurrence_];

    sub_25293847C(v39, &qword_27F540F38, &unk_252E41490);
    sub_25293847C(v38, &qword_27F540F00, &unk_252E3FEC0);
    goto LABEL_42;
  }

  if (v12 == 2)
  {
    v13 = 1;
    goto LABEL_34;
  }

  if (v12 == 3)
  {
    v13 = 2;
    goto LABEL_34;
  }

  v40 = *(v0 + 1360);
  v41 = *(v0 + 1208);
  v42 = *(v0 + 1200);
  sub_252938414(*(v0 + 1400), v40, &qword_27F540F00, &unk_252E3FEC0);
  v43 = *(v41 + 48);
  v44 = v43(v40, 1, v42);
  v45 = *(v0 + 1360);
  if (v44 == 1)
  {
    v46 = *(v0 + 1200);
    v47 = *(v0 + 1192);
    v48 = *(v0 + 1184);
    v49 = sub_252E32FF4();
    (*(*(v49 - 8) + 56))(v47, 1, 1, v49);
    v50 = sub_252E33044();
    (*(*(v50 - 8) + 56))(v48, 1, 1, v50);
    LOBYTE(v125) = 1;
    v124 = 0;
    LOBYTE(v123) = 1;
    v122 = 0;
    LOBYTE(v121) = 1;
    v120 = 0;
    LOBYTE(v119) = 1;
    v118 = 0;
    LOBYTE(v117) = 1;
    v116 = 0;
    LOBYTE(v115) = 1;
    v114 = 0;
    LOBYTE(v113) = 1;
    v112 = 0;
    LOBYTE(v111) = 1;
    v110 = 0;
    LOBYTE(v109) = 1;
    v108 = 0;
    LOBYTE(v107) = 1;
    v106 = 0;
    LOBYTE(v105) = 1;
    v104 = 0;
    sub_252E32B94();
    if (v43(v45, 1, v46) != 1)
    {
      sub_25293847C(*(v0 + 1360), &qword_27F540F00, &unk_252E3FEC0);
    }
  }

  else
  {
    (*(*(v0 + 1208) + 32))(*(v0 + 1216), *(v0 + 1360), *(v0 + 1200));
  }

  v80 = *(v0 + 1400);
  v81 = *(v0 + 1200);
  v136 = v9;
  if (v43(v80, 1, v81))
  {
    (*(*(v0 + 1272) + 56))(*(v0 + 1232), 1, 1, *(v0 + 1264));
  }

  else
  {
    v82 = *(v0 + 1224);
    v83 = *(v0 + 1208);
    (*(v83 + 16))(v82, v80, v81);
    sub_252E32B44();
    (*(v83 + 8))(v82, v81);
  }

  v84 = *(v0 + 1272);
  v85 = *(v0 + 1248);
  v131 = *(v0 + 1232);
  v133 = *(v0 + 1264);
  v86 = *(v0 + 1224);
  v127 = v85;
  v128 = *(v0 + 1216);
  v87 = *(v0 + 1208);
  v126 = v87;
  v88 = *(v0 + 1200);
  v89 = objc_allocWithZone(type metadata accessor for TriggerCondition());
  v90 = sub_252E36F04();
  v91 = [v89 initWithIdentifier:0 displayString:v90 pronunciationHint:0];

  v92 = v91;
  [v92 setType_];
  v93 = *(v87 + 16);
  v93(v86, v128, v88);
  sub_252938414(v131, v85, &qword_27F540F38, &unk_252E41490);
  v94 = type metadata accessor for TimeTriggerValue(0);
  v95 = objc_allocWithZone(v94);
  v96 = OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_recurringDate;
  (*(v84 + 56))(&v95[OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_recurringDate], 1, 1, v133);
  v93(&v95[OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate], v86, v88);
  v35 = v92;
  swift_beginAccess();
  sub_2529D032C(v127, &v95[v96], &qword_27F540F38, &unk_252E41490);
  swift_endAccess();
  v95[OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_isDateInterval] = v136;
  v97 = sub_252E36F04();
  *(v0 + 1152) = v95;
  *(v0 + 1160) = v94;
  v98 = objc_msgSendSuper2((v0 + 1152), sel_initWithIdentifier_displayString_pronunciationHint_, 0, v97, 0);

  sub_25293847C(v127, &qword_27F540F38, &unk_252E41490);
  v99 = *(v126 + 8);
  v99(v86, v88);
  [v92 setValue_];

  if (v137)
  {
    v100 = sub_252E37254();
  }

  else
  {
    v100 = 0;
  }

  v101 = *(v0 + 1232);
  v102 = *(v0 + 1216);
  v103 = *(v0 + 1200);
  [v35 setRecurrence_];

  sub_25293847C(v101, &qword_27F540F38, &unk_252E41490);
  v99(v102, v103);
LABEL_42:
  v73 = *(v0 + 1424);
  v74 = *(v0 + 1416);
  v75 = *(v0 + 1400);
  v76 = v35;
  [v74 setAutomatableTask_];
  [v74 setTrigger_];

  sub_25293847C(v75, &qword_27F540F00, &unk_252E3FEC0);

  v77 = *(v0 + 8);
  v78 = *(v0 + 1416);

  return v77(v78);
}