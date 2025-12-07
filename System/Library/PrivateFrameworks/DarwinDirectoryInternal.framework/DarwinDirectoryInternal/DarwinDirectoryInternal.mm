BOOL DDIUpdateLocalUsersAndGroups(void *a1, uint64_t a2)
{
  if (a1)
  {
    *a1 = 0;
  }

  v6 = 0;
  [DDObjcCompatibility swiftUpdateLocalUsersAndGroupsAndReturnError:&v6 perform:a2];
  v3 = v6;
  if (a1 && v3)
  {
    v3 = v3;
    *a1 = v3;
  }

  v4 = v3 == 0;

  return v4;
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return MEMORY[0x282205058](a1, v6, v5, 80, a5, v7, 16);
}

uint64_t sub_2480E0A38(char a1)
{
  v1 = a1 & 1;
  if (a1)
  {
    v2 = 0x6C61636F6CLL;
  }

  else
  {
    v2 = 0x6D6574737973;
  }

  v3 = 0xE600000000000000;
  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  v38 = v2;
  v39 = v3;
  v4 = sub_2480E1114(a1 & 1);
  v6 = v5;
  v41 = v4;
  v7 = v4 >> 62;
  v8 = v5 >> 62;
  if (v1)
  {
    v9 = sub_248124B38();

    if ((v9 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  if (v7)
  {
    if (sub_2481247E8())
    {
      goto LABEL_12;
    }

LABEL_45:
    v22 = sub_2481242D8();
    v23 = sub_248124628();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v44 = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_24810C31C(0xD00000000000001ALL, 0x80000002481288A0, &v44);
      _os_log_impl(&dword_2480DF000, v22, v23, "%{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x24C1C7B90](v25, -1, -1);
      MEMORY[0x24C1C7B90](v24, -1, -1);
    }

    v26 = "No system user files found";
    v27 = 0xD00000000000002BLL;
    goto LABEL_52;
  }

  if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_45;
  }

LABEL_12:
  if (v8)
  {
    if (sub_2481247E8())
    {
      goto LABEL_14;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    if (v7)
    {
      goto LABEL_43;
    }

    for (i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2481247E8())
    {
      v11 = MEMORY[0x277D84F90];
      if (i)
      {
        break;
      }

      v15 = MEMORY[0x277D84F90];
      v16 = v6 & 0xFFFFFFFFFFFFFF8;
      if (!v8)
      {
        goto LABEL_26;
      }

LABEL_37:
      v17 = sub_2481247E8();
      if (!v17)
      {
LABEL_38:

        return v15;
      }

LABEL_27:
      v44 = v11;
      sub_248124788();
      if (v17 < 0)
      {
        goto LABEL_54;
      }

      v18 = 0;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x24C1C6EA0](v18, v6);
        }

        else
        {
          if (v18 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v20 = *(v6 + 8 * v18 + 32);
        }

        sub_2480F5B0C(v20);

        sub_248124768();
        v8 = v44[2];
        sub_248124798();
        sub_2481247A8();
        sub_248124778();
        ++v18;
        if (v19 == v17)
        {
          goto LABEL_38;
        }
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

    v44 = MEMORY[0x277D84F90];
    sub_248124788();
    if (i < 0)
    {
      goto LABEL_53;
    }

    v40 = v8;
    v12 = 0;
    v8 = v41 & 0xFFFFFFFFFFFFFF8;
    do
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if ((v41 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x24C1C6EA0](v12, v41);
      }

      else
      {
        if (v12 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v14 = *(v41 + 8 * v12 + 32);
      }

      sub_2480F5758(v14);

      sub_248124768();
      sub_248124798();
      sub_2481247A8();
      sub_248124778();
      ++v12;
    }

    while (v13 != i);
    v15 = v44;
    v8 = v40;
    v11 = MEMORY[0x277D84F90];
    v16 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v40)
    {
      goto LABEL_37;
    }

LABEL_26:
    v17 = *(v16 + 16);
    if (!v17)
    {
      goto LABEL_38;
    }

    goto LABEL_27;
  }

  v28 = sub_2481242D8();
  v29 = sub_248124628();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v44 = v31;
    *v30 = 136446210;
    *(v30 + 4) = sub_24810C31C(0xD00000000000001BLL, 0x8000000248128850, &v44);
    _os_log_impl(&dword_2480DF000, v28, v29, "%{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x24C1C7B90](v31, -1, -1);
    MEMORY[0x24C1C7B90](v30, -1, -1);
  }

  v26 = "No system group files found";
  v27 = 0xD00000000000002CLL;
LABEL_52:
  sub_2480E1BF4(v27, v26 | 0x8000000000000000);
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);

  v44 = 0;
  v45 = 0xE000000000000000;
  sub_2481246E8();
  MEMORY[0x24C1C6C90](0x742064656C696146, 0xEF2064616F6C206FLL);
  MEMORY[0x24C1C6C90](v38, v39);

  MEMORY[0x24C1C6C90](0xD000000000000039, 0x80000002481287F0);
  v32 = v44;
  v33 = v45;
  swift_bridgeObjectRetain_n();
  v34 = sub_2481242D8();
  v35 = sub_248124628();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v42 = v37;
    *v36 = 136446210;
    *(v36 + 4) = sub_24810C31C(v32, v33, &v42);
    _os_log_impl(&dword_2480DF000, v34, v35, "%{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x24C1C7B90](v37, -1, -1);
    MEMORY[0x24C1C7B90](v36, -1, -1);
  }

  v42 = 0xD000000000000011;
  v43 = 0x8000000248128830;
  MEMORY[0x24C1C6C90](v32, v33);
  result = sub_2480E1BF4(v42, v43);
  __break(1u);
  return result;
}

void (*sub_2480E1114(int a1))(void)
{
  v2 = sub_248124408();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-v7];
  v19 = a1;
  if (a1)
  {
    if (qword_27EE879D8 != -1)
    {
      swift_once();
    }

    v9 = qword_27EE8AD20;
  }

  else
  {
    if (qword_27EE879C8 != -1)
    {
      swift_once();
    }

    v9 = qword_27EE8ACF0;
  }

  v10 = __swift_project_value_buffer(v2, v9);
  v11 = *(v3 + 16);
  v11(v8, v10, v2);
  v12 = sub_2480E1788(v8, type metadata accessor for UserRecordFile, &qword_27EE87A30, type metadata accessor for UserRecordFile, &unk_2481268D0);
  v13 = *(v3 + 8);
  v13(v8, v2);
  if (v19)
  {
    v14 = v12;
    if (qword_27EE879E0 != -1)
    {
      swift_once();
    }

    v15 = qword_27EE8AD38;
  }

  else
  {
    v14 = v12;
    if (qword_27EE879D0 != -1)
    {
      swift_once();
    }

    v15 = qword_27EE8AD08;
  }

  v16 = __swift_project_value_buffer(v2, v15);
  v11(v6, v16, v2);
  sub_2480E1788(v6, type metadata accessor for GroupRecordFile, &qword_27EE87A28, type metadata accessor for GroupRecordFile, &unk_248126880);
  v13(v6, v2);
  return v14;
}

void (*sub_2480E1788(uint64_t a1, void (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), NSObject *a5))(void)
{
  v31 = a4;
  v32 = a5;
  v30 = a3;
  v9 = sub_248124408();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (v23 - v14);
  result = sub_2480EBD74(a1);
  if (v6)
  {
    v17 = sub_2481242D8();
    v18 = sub_248124628();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2480DF000, v17, v18, "Failed to load record files: failed to get contents of directory", v19, 2u);
      MEMORY[0x24C1C7B90](v19, -1, -1);
    }

    swift_willThrow();
    return a2;
  }

  v20 = result;
  v27 = a2;
  v28 = v5;
  v29 = v15;
  a2 = MEMORY[0x277D84F90];
  v33 = MEMORY[0x277D84F90];
  v25 = *(result + 2);
  if (!v25)
  {
LABEL_11:

    return a2;
  }

  v23[1] = v13;
  v21 = 0;
  v26 = v10 + 16;
  v24 = (v10 + 8);
  v22 = v29;
  while (v21 < *(v20 + 2))
  {
    (*(v10 + 16))(v22, v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v21, v9);
    sub_2480E1C70(v22, v27, v30, v31, v32);
    MEMORY[0x24C1C6CC0]();
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_248124558();
    }

    ++v21;
    sub_248124588();
    v22 = v29;
    result = (*v24)(v29, v9);
    a2 = v33;
    if (v25 == v21)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2480E1BF4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    abort_with_reason();
  }

  return sub_2481246D8();
}

char *sub_2480E1C70(NSObject *a1, void (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), NSObject *a5)
{
  v80 = a4;
  v81 = a5;
  v78 = a2;
  v79 = a3;
  v84 = sub_248124408();
  v7 = *(v84 - 8);
  v8 = MEMORY[0x28223BE20](v84);
  v75 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v77 = &v75 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v75 - v13;
  v15 = sub_2481240D8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v76 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v82 = &v75 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v75 - v21;
  v83 = a1;
  v23 = sub_24810B8B4();
  if (v5)
  {
    v86 = v5;
    MEMORY[0x24C1C7A20](v5);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
    if (swift_dynamicCast())
    {

      v26 = v82;
      (*(v16 + 32))(v82, v22, v15);
      v27 = v7;
      v28 = *(v7 + 16);
      v29 = v77;
      v30 = v84;
      v28(v77, v83, v84);
      v31 = v76;
      (*(v16 + 16))(v76, v26, v15);
      v32 = sub_2481242D8();
      v33 = sub_248124628();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v83 = v32;
        v35 = v16;
        v36 = v34;
        v81 = swift_slowAlloc();
        v85 = v81;
        *v36 = 136446466;
        sub_2480E335C(&qword_27EE87A10, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
        LODWORD(v80) = v33;
        v37 = sub_248124938();
        v39 = v38;
        (*(v27 + 8))(v29, v30);
        v40 = sub_24810C31C(v37, v39, &v85);

        *(v36 + 4) = v40;
        *(v36 + 6) = 1024;
        sub_2480E335C(&qword_27EE87A20, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
        sub_2481241A8();
        LODWORD(v40) = sub_2481243A8();
        v41 = *(v35 + 8);
        v41(v31, v15);
        *(v36 + 14) = v40;
        v42 = v83;
        _os_log_impl(&dword_2480DF000, v83, v80, "Failed to load file %{public}s: %{darwin.errno}d", v36, 0x12u);
        v43 = v81;
        __swift_destroy_boxed_opaque_existential_0(v81);
        MEMORY[0x24C1C7B90](v43, -1, -1);
        MEMORY[0x24C1C7B90](v36, -1, -1);
      }

      else
      {
        v61 = *(v16 + 8);
        v36 = (v16 + 8);
        v41 = v61;
        v61(v31, v15);

        (*(v27 + 8))(v29, v30);
      }

      v62 = v82;
      sub_2481240C8();
      swift_willThrow();
      v41(v62, v15);
    }

    else
    {
      v82 = v25;

      v48 = v7;
      v49 = v75;
      v50 = v84;
      (*(v7 + 16))(v75, v83, v84);
      MEMORY[0x24C1C7A20](v5);
      v51 = sub_2481242D8();
      v52 = sub_248124628();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v86 = v83;
        *v53 = 136446466;
        sub_2480E335C(&qword_27EE87A10, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
        v54 = sub_248124938();
        v56 = v55;
        (*(v48 + 8))(v49, v50);
        v57 = sub_24810C31C(v54, v56, &v86);

        *(v53 + 4) = v57;
        *(v53 + 12) = 2082;
        v85 = v5;
        MEMORY[0x24C1C7A20](v5);
        v58 = sub_2481244A8();
        v36 = sub_24810C31C(v58, v59, &v86);

        *(v53 + 14) = v36;
        _os_log_impl(&dword_2480DF000, v51, v52, "Failed to load file %{public}s: %{public}s", v53, 0x16u);
        v60 = v83;
        swift_arrayDestroy();
        MEMORY[0x24C1C7B90](v60, -1, -1);
        MEMORY[0x24C1C7B90](v53, -1, -1);
      }

      else
      {

        v36 = (v7 + 8);
        (*(v7 + 8))(v49, v50);
      }

      swift_willThrow();
    }
  }

  else
  {
    v77 = v14;
    v44 = v23;
    v45 = v24;
    sub_248124168();
    swift_allocObject();
    sub_248124158();
    v78(0);
    sub_2480E335C(v79, v80, v81);
    v81 = v44;
    v82 = v45;
    sub_248124148();
    v46 = v7;
    v47 = (v7 + 16);

    v36 = v86;
    v63 = v77;
    v64 = v84;
    (*v47)(v77, v83, v84);
    v65 = sub_2481242D8();
    v66 = sub_248124618();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v86 = v83;
      *v67 = 136446210;
      sub_2480E335C(&qword_27EE87A10, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v68 = sub_248124938();
      v69 = v64;
      v71 = v70;
      (*(v46 + 8))(v63, v69);
      v72 = sub_24810C31C(v68, v71, &v86);

      *(v67 + 4) = v72;
      _os_log_impl(&dword_2480DF000, v65, v66, "Loaded file %{public}s", v67, 0xCu);
      v73 = v83;
      __swift_destroy_boxed_opaque_existential_0(v83);
      MEMORY[0x24C1C7B90](v73, -1, -1);
      MEMORY[0x24C1C7B90](v67, -1, -1);
      sub_2480E3308(v81, v82);
    }

    else
    {
      sub_2480E3308(v81, v82);

      (*(v46 + 8))(v63, v64);
    }
  }

  return v36;
}

uint64_t sub_2480E275C(NSObject *a1)
{
  v3 = sub_248124408();
  v81 = *(v3 - 8);
  v82 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v78 = &v72 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v72 - v10;
  v12 = sub_2481240D8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v77 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v79 = &v72 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v72 - v18;
  v80 = a1;
  v20 = sub_24810B8B4();
  if (v1)
  {
    v83 = v1;
    MEMORY[0x24C1C7A20](v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
    if (swift_dynamicCast())
    {

      v22 = v79;
      (*(v13 + 32))(v79, v19, v12);
      v23 = v81;
      v24 = v78;
      v25 = v82;
      (*(v81 + 16))(v78, v80, v82);
      v6 = v77;
      (*(v13 + 16))(v77, v22, v12);
      v26 = sub_2481242D8();
      v27 = sub_248124628();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v80 = v26;
        v29 = v13;
        v30 = v28;
        v76 = swift_slowAlloc();
        v84 = v76;
        *v30 = 136446466;
        sub_2480E335C(&qword_27EE87A10, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
        LODWORD(v75) = v27;
        v31 = sub_248124938();
        v33 = v32;
        (*(v23 + 8))(v24, v25);
        v34 = sub_24810C31C(v31, v33, &v84);

        *(v30 + 4) = v34;
        *(v30 + 12) = 1024;
        sub_2480E335C(&qword_27EE87A20, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
        sub_2481241A8();
        LODWORD(v34) = sub_2481243A8();
        v35 = *(v29 + 8);
        v35(v6, v12);
        *(v30 + 14) = v34;
        v36 = v80;
        _os_log_impl(&dword_2480DF000, v80, v75, "Failed to load file %{public}s: %{darwin.errno}d", v30, 0x12u);
        v37 = v76;
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x24C1C7B90](v37, -1, -1);
        MEMORY[0x24C1C7B90](v30, -1, -1);
      }

      else
      {
        v35 = *(v13 + 8);
        v35(v6, v12);

        (*(v23 + 8))(v24, v25);
      }

      v54 = v79;
      sub_2481240C8();
      swift_willThrow();
      v35(v54, v12);
    }

    else
    {

      v40 = v81;
      v41 = v82;
      (*(v81 + 16))(v6, v80, v82);
      MEMORY[0x24C1C7A20](v1);
      v42 = sub_2481242D8();
      v43 = sub_248124628();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v83 = v80;
        *v44 = 136446466;
        sub_2480E335C(&qword_27EE87A10, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
        v45 = sub_248124938();
        v46 = v40;
        v48 = v47;
        (*(v46 + 8))(v6, v41);
        v49 = sub_24810C31C(v45, v48, &v83);

        *(v44 + 4) = v49;
        *(v44 + 12) = 2082;
        v84 = v1;
        MEMORY[0x24C1C7A20](v1);
        v50 = sub_2481244A8();
        v52 = sub_24810C31C(v50, v51, &v83);

        *(v44 + 14) = v52;
        _os_log_impl(&dword_2480DF000, v42, v43, "Failed to load file %{public}s: %{public}s", v44, 0x16u);
        v53 = v80;
        swift_arrayDestroy();
        MEMORY[0x24C1C7B90](v53, -1, -1);
        MEMORY[0x24C1C7B90](v44, -1, -1);
      }

      else
      {

        (*(v40 + 8))(v6, v41);
      }

      swift_willThrow();
    }
  }

  else
  {
    v38 = v20;
    v39 = v21;
    sub_248124168();
    swift_allocObject();
    sub_248124158();
    sub_2480E33A4();
    v78 = v38;
    v79 = v39;
    sub_248124148();

    LOBYTE(v6) = v83;
    v55 = v81;
    v56 = *(v81 + 16);
    v77 = v11;
    v57 = v11;
    v58 = v82;
    v56(v57, v80, v82);
    v59 = sub_2481242D8();
    v60 = sub_248124618();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v76 = v61;
      v80 = swift_slowAlloc();
      v83 = v80;
      *v61 = 136446210;
      sub_2480E335C(&qword_27EE87A10, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v75 = v59;
      v62 = v77;
      v63 = v82;
      v73 = sub_248124938();
      v74 = v60;
      v65 = v64;
      (*(v55 + 8))(v62, v63);
      v66 = sub_24810C31C(v73, v65, &v83);

      v68 = v75;
      v67 = v76;
      *(v76 + 4) = v66;
      v69 = v67;
      _os_log_impl(&dword_2480DF000, v68, v74, "Loaded file %{public}s", v67, 0xCu);
      v70 = v80;
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x24C1C7B90](v70, -1, -1);
      MEMORY[0x24C1C7B90](v69, -1, -1);
      sub_2480E3308(v78, v79);
    }

    else
    {
      sub_2480E3308(v78, v79);

      (*(v55 + 8))(v77, v58);
    }
  }

  return v6 & 1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_2480E3308(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2480E335C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2480E33A4()
{
  result = qword_27EE87A38;
  if (!qword_27EE87A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87A38);
  }

  return result;
}

uint64_t sub_2480E340C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2481242F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2480E34E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2481242F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for RecordManager(uint64_t a1)
{
  result = qword_27EE87A40;
  if (!qword_27EE87A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2480E35E8(uint64_t a1)
{
  result = sub_2481242F8();
  if (v2 <= 0x3F)
  {
    result = sub_2480E366C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2480E366C()
{
  result = qword_27EE87A50;
  if (!qword_27EE87A50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27EE87A50);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2480E36FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_2480E3744(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2480E37B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FilesystemProvider(0);
  v3 = swift_allocObject();
  sub_2481242E8();
  a1[3] = v2;
  a1[4] = &off_285A497D8;
  *a1 = v3;
  v4 = type metadata accessor for NotificationProvider(0);
  v5 = swift_allocObject();
  sub_2481242E8();
  a1[8] = v4;
  a1[9] = &off_285A49810;
  a1[5] = v5;
  v6 = type metadata accessor for SysctlProvider(0);
  v7 = swift_allocObject();
  result = sub_2481242E8();
  a1[13] = v6;
  a1[14] = &off_285A495A0;
  a1[10] = v7;
  return result;
}

uint64_t User.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2481242C8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  v11 = [a1 uuid];
  sub_2481242A8();

  v47 = [a1 uid];
  v12 = [a1 name];
  v13 = sub_248124488();
  v45 = v14;
  v46 = v13;

  v15 = [a1 primaryGroupUUID];
  sub_2481242A8();

  v16 = [a1 fullName];
  v17 = sub_248124488();
  v43 = v18;
  v44 = v17;

  v19 = [a1 homeDirectory];
  v20 = sub_248124488();
  v41 = v21;
  v42 = v20;

  v22 = [a1 shell];
  v40 = sub_248124488();
  v24 = v23;

  v25 = [a1 memberships];
  v48 = 0;
  sub_2480E3C24();
  result = sub_2481245D8();
  v27 = v48;
  if (v48)
  {

    v28 = [a1 aliases];
    v48 = 0;
    result = sub_2481245D8();
    v29 = v48;
    if (v48)
    {

      v30 = *(v5 + 32);
      v30(a2, v10, v4);
      v31 = type metadata accessor for User(0);
      *(a2 + v31[5]) = v47;
      v32 = (a2 + v31[6]);
      v33 = v45;
      *v32 = v46;
      v32[1] = v33;
      result = (v30)(a2 + v31[7], v8, v4);
      v34 = (a2 + v31[8]);
      v35 = v43;
      *v34 = v44;
      v34[1] = v35;
      v36 = (a2 + v31[9]);
      v37 = v41;
      *v36 = v42;
      v36[1] = v37;
      v38 = (a2 + v31[10]);
      *v38 = v40;
      v38[1] = v24;
      *(a2 + v31[11]) = v27;
      *(a2 + v31[12]) = v29;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2480E3C24()
{
  result = qword_27EE87A58;
  if (!qword_27EE87A58)
  {
    sub_2481242C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87A58);
  }

  return result;
}

id DDIUser.init(_:)(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = sub_248124288();
  v3 = type metadata accessor for User(0);
  v17 = *(a1 + *(v3 + 20));
  v4 = sub_248124478();
  v5 = sub_248124288();
  v6 = sub_248124478();
  v7 = sub_248124478();
  v8 = sub_248124478();
  sub_2481242C8();
  sub_2480E3C24();
  v9 = sub_2481245C8();
  v10 = [ObjCClassFromMetadata userWithUUID:v2 uid:v17 name:v4 primaryGroupUUID:v5 fullName:v6 homeDirectory:v7 shell:v8 memberships:v9];

  v11 = *(a1 + *(v3 + 48));
  v12 = v10;
  sub_2480E3E78(v11);
  v13 = objc_allocWithZone(MEMORY[0x277CBEB58]);
  v14 = sub_2481245C8();

  v15 = [v13 initWithSet_];

  [v12 setAliases_];
  sub_2480E64CC(a1, type metadata accessor for User);
  return v12;
}

uint64_t sub_2480E3E78(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A78, &qword_248125A68);
    v2 = sub_2481246B8();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  while (v5)
  {
LABEL_15:

    swift_dynamicCast();
    result = sub_248124688();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v15);
        if (v19 != -1)
        {
          v10 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v11 = *(v2 + 48) + 40 * v10;
    *(v11 + 32) = v22;
    *v11 = v20;
    *(v11 + 16) = v21;
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2480E40AC(uint64_t a1)
{
  v2 = sub_2481242C8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v31 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - v6;
  v32 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A78, &qword_248125A68);
    v8 = sub_2481246B8();
  }

  else
  {
    v8 = MEMORY[0x277D84FA0];
  }

  v9 = v32 + 56;
  v10 = 1 << *(v32 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v32 + 56);
  v13 = (v10 + 63) >> 6;
  v30[1] = v3 + 32;
  v30[2] = v3 + 16;
  v14 = v8 + 56;

  v16 = 0;
  while (v12)
  {
LABEL_15:
    v22 = v31;
    (*(v3 + 16))(v31, *(v32 + 48) + *(v3 + 72) * (__clz(__rbit64(v12)) | (v16 << 6)), v2);
    (*(v3 + 32))(v7, v22, v2);
    swift_dynamicCast();
    result = sub_248124688();
    v23 = -1 << *(v8 + 32);
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
          v17 = __clz(__rbit64(~v29)) + (v25 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v17 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v14 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v12 &= v12 - 1;
    v18 = *(v8 + 48) + 40 * v17;
    v19 = v33;
    v20 = v34;
    *(v18 + 32) = v35;
    *v18 = v19;
    *(v18 + 16) = v20;
    ++*(v8 + 16);
  }

  while (1)
  {
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v21 >= v13)
    {

      return v8;
    }

    v12 = *(v9 + 8 * v21);
    ++v16;
    if (v12)
    {
      v16 = v21;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

int *Group.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2481242C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 uuid];
  sub_2481242A8();

  v26 = [a1 gid];
  v9 = [a1 name];
  v10 = sub_248124488();
  v24 = v11;
  v25 = v10;

  v12 = [a1 fullName];
  v13 = sub_248124488();
  v15 = v14;

  v16 = [a1 nestedGroups];
  v27 = 0;
  sub_2480E3C24();
  result = sub_2481245D8();
  v18 = v27;
  if (v27)
  {

    v19 = [a1 aliases];
    v27 = 0;
    result = sub_2481245D8();
    v20 = v27;
    if (v27)
    {

      (*(v5 + 32))(a2, v7, v4);
      result = type metadata accessor for Group(0);
      *(a2 + result[5]) = v26;
      v21 = (a2 + result[6]);
      v22 = v24;
      *v21 = v25;
      v21[1] = v22;
      v23 = (a2 + result[7]);
      *v23 = v13;
      v23[1] = v15;
      *(a2 + result[8]) = v18;
      *(a2 + result[9]) = v20;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id DDIGroup.init(_:)(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_248124288();
  v4 = type metadata accessor for Group(0);
  v5 = *(a1 + v4[5]);
  v6 = sub_248124478();
  v7 = sub_248124478();
  v8 = [ObjCClassFromMetadata groupWithUUID:v3 gid:v5 name:v6 fullName:v7];

  v9 = *(a1 + v4[8]);
  v10 = v8;
  sub_2480E40AC(v9);
  v11 = objc_allocWithZone(MEMORY[0x277CBEB58]);
  v12 = sub_2481245C8();

  v13 = [v11 initWithSet_];

  [v10 setNestedGroups_];
  sub_2480E3E78(*(a1 + v4[9]));
  v14 = objc_allocWithZone(MEMORY[0x277CBEB58]);
  v15 = sub_2481245C8();

  v16 = [v14 initWithSet_];

  [v10 setAliases_];
  sub_2480E64CC(a1, type metadata accessor for Group);
  return v10;
}

void static ObjcCompatibility.swiftInitializeLocalUsersAndGroupsAndPerform(_:)(const void *a1)
{
  v1 = _Block_copy(a1);
  v2[2] = v1;
  if (qword_27EE87A00 != -1)
  {
    swift_once();
  }

  sub_2480E5C40(sub_2480E5068, v2, qword_27EE87D70);
  _Block_release(v1);
}

uint64_t sub_2480E4878(uint64_t *a1, uint64_t *a2, void (**a3)(void, void, void))
{
  v61 = a3;
  v65 = a2;
  v4 = type metadata accessor for Group(0);
  v64 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v63 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v56 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v56 - v10;
  v12 = type metadata accessor for User(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v60 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v56 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v56 - v19;
  v59 = a1;
  v21 = *a1;
  v22 = *(v21 + 16);
  v62 = v13;
  v58 = v21;
  if (v22)
  {
    v57 = v9;
    v67 = MEMORY[0x277D84F90];
    sub_248124788();
    sub_2480E630C(0, &qword_27EE87A60, &off_278EFE4F0);
    v23 = v21 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v24 = *(v13 + 72);
    do
    {
      sub_2480E6354(v23, v20, type metadata accessor for User);
      sub_2480E6354(v20, v18, type metadata accessor for User);
      DDIUser.init(_:)(v18);
      sub_2480E64CC(v20, type metadata accessor for User);
      sub_248124768();
      sub_248124798();
      sub_2481247A8();
      sub_248124778();
      v23 += v24;
      --v22;
    }

    while (v22);
    v9 = v57;
  }

  v25 = sub_2480E630C(0, &qword_27EE87A60, &off_278EFE4F0);
  v26 = sub_248124528();

  [v26 mutableCopy];

  sub_248124668();
  swift_unknownObjectRelease();
  sub_2480E630C(0, &qword_27EE87A68, 0x277CBEB18);
  swift_dynamicCast();
  v27 = v66;
  v28 = *v65;
  v29 = *(*v65 + 16);
  v30 = MEMORY[0x277D84F90];
  v56[1] = *v65;
  if (v29)
  {
    v56[0] = v66;
    v57 = v25;
    v67 = MEMORY[0x277D84F90];
    sub_248124788();
    sub_2480E630C(0, &qword_27EE87A70, off_278EFE4E8);
    v31 = v28 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
    v32 = *(v64 + 72);
    do
    {
      sub_2480E6354(v31, v11, type metadata accessor for Group);
      sub_2480E6354(v11, v9, type metadata accessor for Group);
      DDIGroup.init(_:)(v9);
      sub_2480E64CC(v11, type metadata accessor for Group);
      sub_248124768();
      sub_248124798();
      sub_2481247A8();
      sub_248124778();
      v31 += v32;
      --v29;
    }

    while (v29);
    v30 = MEMORY[0x277D84F90];
    v27 = v56[0];
  }

  v57 = sub_2480E630C(0, &qword_27EE87A70, off_278EFE4E8);
  v33 = sub_248124528();

  [v33 mutableCopy];

  sub_248124668();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v34 = v66;
  (v61)[2](v61, v27, v66);
  v67 = 0;
  v35 = v27;
  result = sub_248124538();
  v37 = v67;
  v38 = v62;
  if (!v67)
  {
    goto LABEL_40;
  }

  v61 = v35;

  v39 = v63;
  v40 = v60;
  if (v37 >> 62)
  {
    v41 = sub_2481247E8();
    if (v41)
    {
      goto LABEL_12;
    }

LABEL_22:

    v43 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v41 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v41)
  {
    goto LABEL_22;
  }

LABEL_12:
  v67 = v30;
  result = sub_2480FC3A0(0, v41 & ~(v41 >> 63), 0);
  if (v41 < 0)
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v42 = 0;
  v43 = v67;
  do
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x24C1C6EA0](v42, v37);
    }

    else
    {
      v44 = *(v37 + 8 * v42 + 32);
    }

    User.init(_:)(v44, v40);
    v67 = v43;
    v46 = *(v43 + 16);
    v45 = *(v43 + 24);
    if (v46 >= v45 >> 1)
    {
      sub_2480FC3A0((v45 > 1), v46 + 1, 1);
      v43 = v67;
    }

    ++v42;
    *(v43 + 16) = v46 + 1;
    sub_2480E63BC(v40, v43 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v46, type metadata accessor for User);
  }

  while (v41 != v42);

  v39 = v63;
  v30 = MEMORY[0x277D84F90];
LABEL_23:
  *v59 = v43;
  v67 = 0;
  v47 = v34;
  result = sub_248124538();
  v48 = v67;
  v49 = v64;
  if (v67)
  {

    if (v48 >> 62)
    {
      v50 = sub_2481247E8();
      if (v50)
      {
LABEL_26:
        v67 = v30;
        result = sub_2480FC35C(0, v50 & ~(v50 >> 63), 0);
        if ((v50 & 0x8000000000000000) == 0)
        {
          v51 = 0;
          v52 = v67;
          do
          {
            if ((v48 & 0xC000000000000001) != 0)
            {
              v53 = MEMORY[0x24C1C6EA0](v51, v48);
            }

            else
            {
              v53 = *(v48 + 8 * v51 + 32);
            }

            Group.init(_:)(v53, v39);
            v67 = v52;
            v55 = *(v52 + 16);
            v54 = *(v52 + 24);
            if (v55 >= v54 >> 1)
            {
              sub_2480FC35C((v54 > 1), v55 + 1, 1);
              v52 = v67;
            }

            ++v51;
            *(v52 + 16) = v55 + 1;
            sub_2480E63BC(v39, v52 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v55, type metadata accessor for Group);
          }

          while (v50 != v51);

          goto LABEL_37;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v50 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v50)
      {
        goto LABEL_26;
      }
    }

    v52 = MEMORY[0x277D84F90];
LABEL_37:
    *v65 = v52;
    return result;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t static ObjcCompatibility.swiftUpdateLocalUsersAndGroups(perform:)(const void *a1)
{
  v1 = _Block_copy(a1);
  _Block_copy(v1);
  if (qword_27EE87A00 != -1)
  {
    swift_once();
  }

  v3[3] = &type metadata for ProviderSideEffects;
  v3[4] = &off_285A49328;
  v3[0] = swift_allocObject();
  sub_2480E628C(qword_27EE87D70, v3[0] + 16);
  sub_248105858(v3, v1);
  _Block_release(v1);
  _Block_release(v1);
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

void sub_2480E51E4(unint64_t *a1, char **a2, void **a3)
{
  v67 = a3;
  v68 = a2;
  v4 = type metadata accessor for Group(0);
  v70 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v59 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v59 - v11;
  v13 = type metadata accessor for User(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v65 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v59 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v59 - v20;
  v63 = a1;
  v22 = *a1;
  v23 = *(*a1 + 16);
  v69 = v14;
  v64 = v7;
  v66 = v22;
  if (v23)
  {
    v61 = v12;
    v62 = v10;
    v71 = MEMORY[0x277D84F90];
    sub_248124788();
    sub_2480E630C(0, &qword_27EE87A60, &off_278EFE4F0);
    v24 = v22 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v25 = *(v14 + 72);
    do
    {
      sub_2480E6354(v24, v21, type metadata accessor for User);
      sub_2480E6354(v21, v19, type metadata accessor for User);
      DDIUser.init(_:)(v19);
      sub_2480E64CC(v21, type metadata accessor for User);
      sub_248124768();
      sub_248124798();
      sub_2481247A8();
      sub_248124778();
      v24 += v25;
      --v23;
    }

    while (v23);
    v10 = v62;
    v12 = v61;
  }

  v26 = sub_2480E630C(0, &qword_27EE87A60, &off_278EFE4F0);
  v27 = sub_248124528();

  [v27 mutableCopy];

  sub_248124668();
  swift_unknownObjectRelease();
  v28 = sub_2480E630C(0, &qword_27EE87A68, 0x277CBEB18);
  swift_dynamicCast();
  v29 = v72;
  v30 = *v68;
  v31 = *(*v68 + 2);
  v62 = *v68;
  if (v31)
  {
    v59[1] = v28;
    v60 = v72;
    v61 = v26;
    v71 = MEMORY[0x277D84F90];
    sub_248124788();
    sub_2480E630C(0, &qword_27EE87A70, off_278EFE4E8);
    v32 = &v30[(*(v70 + 80) + 32) & ~*(v70 + 80)];
    v33 = v12;
    v34 = *(v70 + 72);
    do
    {
      sub_2480E6354(v32, v33, type metadata accessor for Group);
      sub_2480E6354(v33, v10, type metadata accessor for Group);
      DDIGroup.init(_:)(v10);
      sub_2480E64CC(v33, type metadata accessor for Group);
      sub_248124768();
      sub_248124798();
      sub_2481247A8();
      sub_248124778();
      v32 += v34;
      --v31;
    }

    while (v31);
    v29 = v60;
  }

  v35 = sub_2480E630C(0, &qword_27EE87A70, off_278EFE4E8);
  v36 = sub_248124528();

  [v36 mutableCopy];

  sub_248124668();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v37 = v72;
  v38 = swift_slowAlloc();
  (v67[2])(v67, v29, v37, v38);
  v39 = *v38;
  if (*v38)
  {
    swift_willThrow();
    v39;
    MEMORY[0x24C1C7B90](v38, -1, -1);

    return;
  }

  v67 = v38;
  v71 = 0;
  v40 = v29;
  sub_248124538();
  v41 = v71;
  if (!v71)
  {
    goto LABEL_43;
  }

  v42 = v65;
  if (v41 >> 62)
  {
    v43 = sub_2481247E8();
  }

  else
  {
    v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = v40;
  if (v43)
  {
    v60 = v35;
    v71 = MEMORY[0x277D84F90];
    sub_2480FC3A0(0, v43 & ~(v43 >> 63), 0);
    if (v43 < 0)
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v44 = 0;
    v45 = v71;
    do
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x24C1C6EA0](v44, v41);
      }

      else
      {
        v46 = *(v41 + 8 * v44 + 32);
      }

      User.init(_:)(v46, v42);
      v71 = v45;
      v48 = *(v45 + 16);
      v47 = *(v45 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_2480FC3A0((v47 > 1), v48 + 1, 1);
        v45 = v71;
      }

      ++v44;
      *(v45 + 16) = v48 + 1;
      sub_2480E63BC(v42, v45 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + v69[9] * v48, type metadata accessor for User);
    }

    while (v43 != v44);
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
  }

  *v63 = v45;
  v71 = 0;
  v49 = v37;
  sub_248124538();
  v50 = v71;
  v51 = v64;
  if (v71)
  {

    if (v50 >> 62)
    {
      v52 = sub_2481247E8();
      if (v52)
      {
LABEL_28:
        v69 = v49;
        v71 = MEMORY[0x277D84F90];
        sub_2480FC35C(0, v52 & ~(v52 >> 63), 0);
        if ((v52 & 0x8000000000000000) == 0)
        {
          v53 = 0;
          v54 = v71;
          do
          {
            if ((v50 & 0xC000000000000001) != 0)
            {
              v55 = MEMORY[0x24C1C6EA0](v53, v50);
            }

            else
            {
              v55 = *(v50 + 8 * v53 + 32);
            }

            Group.init(_:)(v55, v51);
            v71 = v54;
            v57 = *(v54 + 16);
            v56 = *(v54 + 24);
            if (v57 >= v56 >> 1)
            {
              sub_2480FC35C((v56 > 1), v57 + 1, 1);
              v54 = v71;
            }

            ++v53;
            *(v54 + 16) = v57 + 1;
            sub_2480E63BC(v51, v54 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v57, type metadata accessor for Group);
          }

          while (v52 != v53);

          v49 = v69;
          goto LABEL_40;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v52 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v52)
      {
        goto LABEL_28;
      }
    }

    v54 = MEMORY[0x277D84F90];
LABEL_40:
    v58 = v67;
    *v68 = v54;
    MEMORY[0x24C1C7B90](v58, -1, -1);

    return;
  }

LABEL_44:
  __break(1u);
}

id ObjcCompatibility.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ObjcCompatibility.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ObjcCompatibility.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2480E5C40(void (*a1)(uint64_t *, void **), uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RecordManager(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[3] = &type metadata for ProviderSideEffects;
  v36[4] = &off_285A49328;
  v36[0] = swift_allocObject();
  sub_2480E628C(a3, v36[0] + 16);
  v10 = __swift_project_boxed_opaque_existential_1(v36, &type metadata for ProviderSideEffects);
  v11 = &v9[*(v7 + 28)];
  v12 = off_285A49330;
  v11[3] = &type metadata for ProviderSideEffects;
  v11[4] = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(off_285A492E0 + 2))(boxed_opaque_existential_1, v10, &type metadata for ProviderSideEffects);
  sub_2481242E8();
  if (qword_27EE87A08 != -1)
  {
    swift_once();
  }

  v14 = sub_2481242F8();
  v31 = __swift_project_value_buffer(v14, qword_27EE87DE8);
  v15 = sub_2481242D8();
  v16 = sub_248124638();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2480DF000, v15, v16, "Initializing DarwinDirectory local domain...", v17, 2u);
    MEMORY[0x24C1C7B90](v17, -1, -1);
  }

  v32 = sub_2480F4840();
  v19 = v18;
  v21 = v20;
  v35 = v22;
  v23 = sub_2480E1114(1);
  v25 = v24;
  v26 = sub_248102070(v23, v24);
  v33 = v25;
  v34 = v23;
  v28 = sub_2481044F8(v26, v27, a1, a2, v21);
  sub_2480EC5CC(v28, v29, v32 & 1, v19, v21, v35);
  sub_2480E64CC(v9, type metadata accessor for RecordManager);

  return __swift_destroy_boxed_opaque_existential_0(v36);
}

uint64_t sub_2480E6244()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2480E630C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2480E6354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2480E63BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

uint64_t sub_2480E64CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2480E6530(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = sub_248124238();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = 0;
  v8 = sub_2480E66D8();
  sub_24810E5BC(v1, a1, v8);
  if (v2)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    serialization = DarwinDirectory_xpc_make_serialization();
    swift_unknownObjectRelease();
    if (!serialization)
    {
      __break(1u);
    }

    v10 = v12[0];
    (*(v5 + 104))(v7, *MEMORY[0x277CC92A0], v4);
    return sub_2480E68CC(serialization, v10, v7);
  }

  return result;
}

unint64_t sub_2480E66B0(uint64_t a1)
{
  result = sub_2480E66D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2480E66D8()
{
  result = qword_27EE87A80;
  if (!qword_27EE87A80)
  {
    type metadata accessor for RecordStore(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87A80);
  }

  return result;
}

uint64_t sub_2480E6730(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_2480E67E8(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_248124248();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_2481240F8();
  if (v3)
  {
    result = sub_248124118();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_248124108();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_2480E6730(v3, v7);

  return v8;
}

uint64_t sub_2480E68CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_248124238();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_248124228();
  if (a2)
  {
    sub_248124138();
    swift_allocObject();

    v10 = sub_2481240E8();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277CC92A8])
    {
      v11 = sub_248124128();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = sub_2480E67E8(v10, a2);
  }

  else
  {
    v13 = sub_248124228();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

unint64_t sub_2480E6B4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2480EB62C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2480E6B7C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 17481;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C656873;
  if (v2 != 6)
  {
    v6 = 0x6C626174754D7369;
    v5 = 0xE900000000000065;
  }

  v7 = 0xED000079726F7463;
  v8 = 0x65726944656D6F68;
  if (v2 != 4)
  {
    v8 = 0x477972616D697270;
    v7 = 0xEE00444970756F72;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1145656661;
  if (v2 != 2)
  {
    v10 = 0x656D614E6C6C7566;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 1701667182;
    v3 = 0xE400000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_2480E6C78()
{
  v1 = *v0;
  v2 = 17481;
  v3 = 0x6C6C656873;
  if (v1 != 6)
  {
    v3 = 0x6C626174754D7369;
  }

  v4 = 0x65726944656D6F68;
  if (v1 != 4)
  {
    v4 = 0x477972616D697270;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1145656661;
  if (v1 != 2)
  {
    v5 = 0x656D614E6C6C7566;
  }

  if (*v0)
  {
    v2 = 1701667182;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_2480E6D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2480EB62C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2480E6DB0(uint64_t a1)
{
  v2 = sub_2480EAAC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2480E6DEC(uint64_t a1)
{
  v2 = sub_2480EAAC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2480E6E28()
{

  v1 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_uuid;
  v2 = sub_2481242C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2480E6F30(uint64_t a1)
{
  result = sub_2481242C8();
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

uint64_t sub_2480E6FF0(void *a1)
{
  v2 = v1;
  v4 = sub_2481242C8();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87B18, &qword_248125C18);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2480EAAC8();
  sub_248124DA8();
  v20 = 0;
  v19 = v7;
  v11 = v18;
  sub_248124908();
  if (v11)
  {
    return (*(v8 + 8))(v10, v19);
  }

  v13 = v17;
  v18 = v8;
  v20 = 1;

  sub_2481248C8();

  v14 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_uuid;
  swift_beginAccess();
  (*(v13 + 16))(v6, v2 + v14, v4);
  v21 = 2;
  sub_2480EAA28(&qword_27EE87AE8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2481248F8();
  (*(v13 + 8))(v6, v4);
  v21 = 3;

  sub_2481248C8();

  v21 = 4;

  sub_2481248C8();
  v15 = v18;

  v21 = 5;
  sub_248124908();
  v21 = 6;

  sub_2481248C8();

  v21 = 7;
  v16 = v19;
  sub_2481248D8();
  return (*(v15 + 8))(0, v16);
}

void *sub_2480E74C4(void *a1)
{
  v3 = v1;
  v31 = *v3;
  v32 = v2;
  v5 = sub_2481242C8();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87B00, &qword_248125C10);
  v8 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v10 = &v29 - v9;
  v11 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_isMutable;
  v33 = v3;
  v34 = a1;
  *(v3 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_isMutable) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2480EAAC8();
  v12 = v32;
  sub_248124D98();
  if (v12)
  {
    v13 = v33;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v32 = v11;
    v14 = v29;
    v42 = 0;
    v15 = sub_248124888();
    v13 = v33;
    *(v33 + 4) = v15;
    v41 = 1;
    v13[3] = sub_248124848();
    v13[4] = v16;
    v40 = 2;
    sub_2480EAA28(&qword_27EE87B10, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_248124878();
    (*(v14 + 32))(v13 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_uuid, v7, v5);
    v39 = 3;
    v17 = sub_248124848();
    v18 = (v13 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_fullName);
    *v18 = v17;
    v18[1] = v19;
    v38 = 4;
    v20 = sub_248124848();
    v21 = (v13 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_homeDirectory);
    *v21 = v20;
    v21[1] = v22;
    v37 = 5;
    *(v13 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_primaryGroupID) = sub_248124888();
    v36 = 6;
    v23 = sub_248124848();
    v25 = (v13 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_shell);
    *v25 = v23;
    v25[1] = v26;
    v35 = 7;
    v27 = v30;
    v28 = sub_248124858();
    (*(v8 + 8))(v10, v27);
    *(v13 + v32) = v28 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v34);
  return v13;
}

uint64_t sub_2480E7A54()
{
  sub_248124D58();
  sub_2481244D8();

  return sub_248124D88();
}

uint64_t sub_2480E7B28(uint64_t a1)
{
  sub_2481244D8();
}

uint64_t sub_2480E7BE8(uint64_t a1)
{
  sub_248124D58();
  sub_2481244D8();

  return sub_248124D88();
}

unint64_t sub_2480E7CB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2480EB678(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2480E7CE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 17481;
  v5 = 0xE400000000000000;
  v6 = 1145656661;
  v7 = 0xEB0000000073656DLL;
  v8 = 0x614E7265626D656DLL;
  if (v2 != 3)
  {
    v8 = 0x6C626174754D7369;
    v7 = 0xE900000000000065;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1701667182;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2480E7D78()
{
  v1 = *v0;
  v2 = 17481;
  v3 = 1145656661;
  v4 = 0x614E7265626D656DLL;
  if (v1 != 3)
  {
    v4 = 0x6C626174754D7369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
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

unint64_t sub_2480E7E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2480EB678(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2480E7E38(uint64_t a1)
{
  v2 = sub_2480EAB1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2480E7E74(uint64_t a1)
{
  v2 = sub_2480EAB1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2480E7EB0()
{

  v1 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_uuid;
  v2 = sub_2481242C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2480E7F8C(uint64_t a1)
{
  result = sub_2481242C8();
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

uint64_t sub_2480E804C(void *a1)
{
  v2 = v1;
  v4 = sub_2481242C8();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87B40, &qword_248125C30);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2480EAB1C();
  sub_248124DA8();
  v23 = 0;
  v11 = v7;
  v12 = v20;
  sub_248124908();
  if (v12)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v20 = v8;
  v14 = v19;
  v23 = 1;

  sub_2481248C8();

  v15 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_uuid;
  swift_beginAccess();
  (*(v14 + 16))(v6, v2 + v15, v4);
  v22 = 2;
  sub_2480EAA28(&qword_27EE87AE8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2481248F8();
  (*(v14 + 8))(v6, v4);
  v16 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_memberNames;
  swift_beginAccess();
  v24 = *(v2 + v16);
  v21 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87B30, &qword_248126410);
  sub_2480EAB70(&qword_27EE87B48, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_2481248F8();
  v17 = v20;
  LOBYTE(v24) = 4;
  sub_2481248D8();
  return (*(v17 + 8))(v10, v11);
}

void *sub_2480E847C(void *a1)
{
  v3 = v1;
  v22 = *v3;
  v23 = v2;
  v5 = sub_2481242C8();
  v20 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87B20, &unk_248125C20);
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_isMutable;
  v24 = v3;
  v25 = a1;
  *(v3 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_isMutable) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2480EAB1C();
  v12 = v23;
  sub_248124D98();
  if (v12)
  {
    v13 = v24;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = v11;
    v14 = v20;
    v31 = 0;
    v15 = sub_248124888();
    v13 = v24;
    *(v24 + 4) = v15;
    v30 = 1;
    v13[3] = sub_248124848();
    v13[4] = v16;
    v29 = 2;
    sub_2480EAA28(&qword_27EE87B10, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_248124878();
    (*(v14 + 32))(v13 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_uuid, v7, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87B30, &qword_248126410);
    v28 = 3;
    sub_2480EAB70(&qword_27EE87B38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_248124878();
    *(v13 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_memberNames) = v26;
    v27 = 4;
    v18 = v21;
    LOBYTE(v14) = sub_248124858();
    (*(v8 + 8))(v10, v18);
    *(v13 + v23) = v14 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v25);
  return v13;
}

uint64_t sub_2480E8930@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = a2(a1);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_2480E89BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = sub_2481242C8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v136 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v142 = &v133 - v12;
  *a4 = a1;
  a4[1] = a2;
  v13 = *(type metadata accessor for RecordStore(0) + 48);
  v134 = a3;
  v135 = v9;
  v14 = *(v9 + 16);
  v146 = v8;
  v143 = v14;
  v144 = v9 + 16;
  v14(a4 + v13, a3, v8);

  v141 = a2;

  v15 = MEMORY[0x277D84F90];
  a4[2] = sub_2480F35C0(MEMORY[0x277D84F90]);
  a4[3] = sub_2480F35C0(v15);
  a4[4] = sub_2480F35C0(v15);
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_52:

    v74 = MEMORY[0x277D84F90];
    a4[5] = sub_2480F35C0(MEMORY[0x277D84F90]);
    a4[6] = sub_2480F35C0(v74);
    a4[7] = sub_2480F35C0(v74);
    v75 = v141;
    if (v141 >> 62)
    {
      goto LABEL_102;
    }

    v76 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v76)
    {
LABEL_103:

      return (*(v135 + 8))(v134, v146);
    }

LABEL_54:
    v77 = 0;
    v142 = (v75 & 0xC000000000000001);
    v139 = v135 + 8;
    v140 = v75 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v142)
      {
        v75 = MEMORY[0x24C1C6EA0](v77, v75);
        v80 = v75;
        v81 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          goto LABEL_94;
        }
      }

      else
      {
        if (v77 >= *(v140 + 16))
        {
          goto LABEL_95;
        }

        v80 = *(v75 + 8 * v77 + 32);

        v81 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
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
          v131 = v75;
          v76 = sub_2481247E8();
          v75 = v131;
          if (!v76)
          {
            goto LABEL_103;
          }

          goto LABEL_54;
        }
      }

      v145 = v81;
      LODWORD(v148) = *(v80 + 16);
      v82 = sub_248124938();
      v84 = v83;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v148 = a4[5];
      v86 = v148;
      v88 = sub_2480F1E00(v82, v84);
      v89 = *(v86 + 16);
      v90 = (v87 & 1) == 0;
      v75 = v89 + v90;
      if (__OFADD__(v89, v90))
      {
        goto LABEL_96;
      }

      v91 = v87;
      if (*(v86 + 24) >= v75)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v87)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v75 = sub_2480F2C24();
          if (v91)
          {
            goto LABEL_67;
          }
        }
      }

      else
      {
        sub_2480F2328(v75, isUniquelyReferenced_nonNull_native);
        v75 = sub_2480F1E00(v82, v84);
        if ((v91 & 1) != (v92 & 1))
        {
          goto LABEL_104;
        }

        v88 = v75;
        if (v91)
        {
LABEL_67:

          v93 = v148;
          *(*(v148 + 56) + 8 * v88) = v77;
          goto LABEL_74;
        }
      }

      v93 = v148;
      *(v148 + 8 * (v88 >> 6) + 64) |= 1 << v88;
      v94 = (v93[6] + 16 * v88);
      *v94 = v82;
      v94[1] = v84;
      *(v93[7] + 8 * v88) = v77;
      v95 = v93[2];
      v37 = __OFADD__(v95, 1);
      v96 = v95 + 1;
      if (v37)
      {
        goto LABEL_99;
      }

      v93[2] = v96;
LABEL_74:
      a4[5] = v93;
      v97 = *(v80 + 24);
      v98 = *(v80 + 32);

      v99 = swift_isUniquelyReferenced_nonNull_native();
      v148 = a4[6];
      v100 = v148;
      v75 = sub_2480F1E00(v97, v98);
      v102 = *(v100 + 16);
      v103 = (v101 & 1) == 0;
      v37 = __OFADD__(v102, v103);
      v104 = v102 + v103;
      if (v37)
      {
        goto LABEL_97;
      }

      v105 = v101;
      if (*(v100 + 24) < v104)
      {
        sub_2480F2328(v104, v99);
        v75 = sub_2480F1E00(v97, v98);
        if ((v105 & 1) != (v106 & 1))
        {
          goto LABEL_104;
        }

LABEL_79:
        if (v105)
        {
          goto LABEL_80;
        }

        goto LABEL_82;
      }

      if (v99)
      {
        goto LABEL_79;
      }

      v109 = v75;
      sub_2480F2C24();
      v75 = v109;
      if (v105)
      {
LABEL_80:
        v107 = v75;

        v108 = v148;
        *(*(v148 + 56) + 8 * v107) = v77;
        goto LABEL_84;
      }

LABEL_82:
      v108 = v148;
      *(v148 + 8 * (v75 >> 6) + 64) |= 1 << v75;
      v110 = (v108[6] + 16 * v75);
      *v110 = v97;
      v110[1] = v98;
      *(v108[7] + 8 * v75) = v77;
      v111 = v108[2];
      v37 = __OFADD__(v111, 1);
      v112 = v111 + 1;
      if (v37)
      {
        goto LABEL_100;
      }

      v108[2] = v112;
LABEL_84:
      a4[6] = v108;
      v113 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_uuid;
      swift_beginAccess();
      v114 = v136;
      v115 = v146;
      v143(v136, v80 + v113, v146);
      v116 = sub_248124278();
      v118 = v117;
      (*v139)(v114, v115);
      v119 = swift_isUniquelyReferenced_nonNull_native();
      v148 = a4[7];
      v120 = v148;
      v75 = sub_2480F1E00(v116, v118);
      v122 = *(v120 + 16);
      v123 = (v121 & 1) == 0;
      v37 = __OFADD__(v122, v123);
      v124 = v122 + v123;
      if (v37)
      {
        goto LABEL_98;
      }

      v125 = v121;
      if (*(v120 + 24) < v124)
      {
        sub_2480F2328(v124, v119);
        v75 = sub_2480F1E00(v116, v118);
        if ((v125 & 1) != (v126 & 1))
        {
          goto LABEL_104;
        }

LABEL_89:
        if (v125)
        {
          goto LABEL_55;
        }

        goto LABEL_90;
      }

      if (v119)
      {
        goto LABEL_89;
      }

      v130 = v75;
      sub_2480F2C24();
      v75 = v130;
      if (v125)
      {
LABEL_55:
        v78 = v75;

        v79 = v148;
        *(*(v148 + 56) + 8 * v78) = v77;

        goto LABEL_56;
      }

LABEL_90:
      v79 = v148;
      *(v148 + 8 * (v75 >> 6) + 64) |= 1 << v75;
      v127 = (v79[6] + 16 * v75);
      *v127 = v116;
      v127[1] = v118;
      *(v79[7] + 8 * v75) = v77;

      v128 = v79[2];
      v37 = __OFADD__(v128, 1);
      v129 = v128 + 1;
      if (v37)
      {
        goto LABEL_101;
      }

      v79[2] = v129;
LABEL_56:
      a4[7] = v79;
      ++v77;
      v75 = v141;
      if (v145 == v76)
      {
        goto LABEL_103;
      }
    }
  }

LABEL_3:
  v17 = 0;
  v139 = a1 & 0xFFFFFFFFFFFFFF8;
  v140 = a1 & 0xC000000000000001;
  v137 = a1;
  v138 = (v135 + 8);
  while (1)
  {
    if (v140)
    {
      v20 = MEMORY[0x24C1C6EA0](v17, a1);
      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v17 >= *(v139 + 16))
      {
        goto LABEL_44;
      }

      v20 = *(a1 + 8 * v17 + 32);

      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        v16 = sub_2481247E8();
        if (!v16)
        {
          goto LABEL_52;
        }

        goto LABEL_3;
      }
    }

    v145 = v21;
    LODWORD(v147) = *(v20 + 16);
    v22 = sub_248124938();
    v24 = v23;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v147 = a4[2];
    v26 = v147;
    v28 = sub_2480F1E00(v22, v24);
    v29 = *(v26 + 16);
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_45;
    }

    a1 = v27;
    if (*(v26 + 24) >= v31)
    {
      if (v25)
      {
        if (v27)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_2480F2C24();
        if (a1)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      sub_2480F2328(v31, v25);
      v32 = sub_2480F1E00(v22, v24);
      if ((a1 & 1) != (v33 & 1))
      {
        goto LABEL_104;
      }

      v28 = v32;
      if (a1)
      {
LABEL_16:

        v34 = v147;
        *(*(v147 + 56) + 8 * v28) = v17;
        goto LABEL_23;
      }
    }

    v34 = v147;
    *(v147 + 8 * (v28 >> 6) + 64) |= 1 << v28;
    v35 = (v34[6] + 16 * v28);
    *v35 = v22;
    v35[1] = v24;
    *(v34[7] + 8 * v28) = v17;
    v36 = v34[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_48;
    }

    v34[2] = v38;
LABEL_23:
    a4[2] = v34;
    v40 = *(v20 + 24);
    v39 = *(v20 + 32);

    v41 = swift_isUniquelyReferenced_nonNull_native();
    v147 = a4[3];
    v42 = v147;
    v43 = sub_2480F1E00(v40, v39);
    v45 = *(v42 + 16);
    v46 = (v44 & 1) == 0;
    v37 = __OFADD__(v45, v46);
    v47 = v45 + v46;
    if (v37)
    {
      goto LABEL_46;
    }

    a1 = v44;
    if (*(v42 + 24) < v47)
    {
      sub_2480F2328(v47, v41);
      v43 = sub_2480F1E00(v40, v39);
      if ((a1 & 1) != (v48 & 1))
      {
        goto LABEL_104;
      }

LABEL_28:
      if (a1)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

    if (v41)
    {
      goto LABEL_28;
    }

    v51 = v43;
    sub_2480F2C24();
    v43 = v51;
    if (a1)
    {
LABEL_29:
      v49 = v43;

      v50 = v147;
      *(*(v147 + 56) + 8 * v49) = v17;
      goto LABEL_33;
    }

LABEL_31:
    v50 = v147;
    *(v147 + 8 * (v43 >> 6) + 64) |= 1 << v43;
    v52 = (v50[6] + 16 * v43);
    *v52 = v40;
    v52[1] = v39;
    *(v50[7] + 8 * v43) = v17;
    v53 = v50[2];
    v37 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v37)
    {
      goto LABEL_49;
    }

    v50[2] = v54;
LABEL_33:
    a4[3] = v50;
    v55 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_uuid;
    swift_beginAccess();
    v56 = v20 + v55;
    v57 = v142;
    v58 = v146;
    v143(v142, v56, v146);
    v59 = sub_248124278();
    v61 = v60;
    (*v138)(v57, v58);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v147 = a4[4];
    v63 = v147;
    v64 = sub_2480F1E00(v59, v61);
    v66 = *(v63 + 16);
    v67 = (v65 & 1) == 0;
    v37 = __OFADD__(v66, v67);
    v68 = v66 + v67;
    if (v37)
    {
      goto LABEL_47;
    }

    a1 = v65;
    if (*(v63 + 24) < v68)
    {
      break;
    }

    if (v62)
    {
      goto LABEL_38;
    }

    v73 = v64;
    sub_2480F2C24();
    v64 = v73;
    if (a1)
    {
LABEL_4:
      v18 = v64;

      v19 = v147;
      *(*(v147 + 56) + 8 * v18) = v17;

      goto LABEL_5;
    }

LABEL_39:
    v19 = v147;
    *(v147 + 8 * (v64 >> 6) + 64) |= 1 << v64;
    v70 = (v19[6] + 16 * v64);
    *v70 = v59;
    v70[1] = v61;
    *(v19[7] + 8 * v64) = v17;

    v71 = v19[2];
    v37 = __OFADD__(v71, 1);
    v72 = v71 + 1;
    if (v37)
    {
      goto LABEL_50;
    }

    v19[2] = v72;
LABEL_5:
    a4[4] = v19;
    ++v17;
    a1 = v137;
    if (v145 == v16)
    {
      goto LABEL_52;
    }
  }

  sub_2480F2328(v68, v62);
  v64 = sub_2480F1E00(v59, v61);
  if ((a1 & 1) == (v69 & 1))
  {
LABEL_38:
    if (a1)
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

LABEL_104:
  result = sub_248124D08();
  __break(1u);
  return result;
}

unint64_t sub_2480E945C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v3 = 0x4279654B73726464;
    if (a1 != 2)
    {
      v3 = 0xD000000000000010;
    }

    v4 = 0xD000000000000016;
    if (!a1)
    {
      v4 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    if (a1 == 6)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return 0xD000000000000012;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2480E95A4()
{
  v1 = *v0;
  sub_248124D58();
  sub_248105D78(v3, v1);
  return sub_248124D88();
}

uint64_t sub_2480E95F4(uint64_t a1)
{
  v2 = *v1;
  sub_248124D58();
  sub_248105D78(v4, v2);
  return sub_248124D88();
}

unint64_t sub_2480E9638@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2480EB6C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2480E9668@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2480E945C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2480E96B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2480EB6C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2480E96E4(uint64_t a1)
{
  v2 = sub_2480EA8F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2480E9720(uint64_t a1)
{
  v2 = sub_2480EA8F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2480E975C()
{
  v1 = v0;
  v68 = sub_2481242C8();
  v59 = *(v68 - 8);
  v2 = MEMORY[0x28223BE20](v68);
  v60 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v66 = &v58 - v4;
  v5 = sub_2480F35C0(MEMORY[0x277D84F90]);

  v1[4] = v5;
  v6 = *v1;
  if (*v1 >> 62)
  {
    goto LABEL_27;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v1; v7; i = v1)
  {
    v8 = 0;
    v64 = v6 & 0xFFFFFFFFFFFFFF8;
    v65 = v6 & 0xC000000000000001;
    v62 = (v59 + 8);
    v63 = (v59 + 16);
    v61 = v6;
    while (v65)
    {
      v9 = MEMORY[0x24C1C6EA0](v8, v6);
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_23;
      }

LABEL_9:
      v11 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_uuid;
      swift_beginAccess();
      v12 = v9 + v11;
      v13 = v66;
      v14 = v68;
      (*v63)(v66, v12, v68);
      v15 = sub_248124278();
      v17 = v16;
      (*v62)(v13, v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70[0] = v1[4];
      v6 = v70[0];
      v20 = sub_2480F1E00(v15, v17);
      v21 = *(v6 + 16);
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        goto LABEL_25;
      }

      v1 = v19;
      if (*(v6 + 24) >= v23)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v19)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_2480F2C24();
          if (v1)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_2480F2328(v23, isUniquelyReferenced_nonNull_native);
        v24 = sub_2480F1E00(v15, v17);
        if ((v1 & 1) != (v25 & 1))
        {
LABEL_56:
          result = sub_248124D08();
          __break(1u);
          return result;
        }

        v20 = v24;
        if (v1)
        {
LABEL_4:

          v6 = v70[0];
          *(*(v70[0] + 56) + 8 * v20) = v8;

          goto LABEL_5;
        }
      }

      v6 = v70[0];
      *(v70[0] + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v26 = (*(v6 + 48) + 16 * v20);
      *v26 = v15;
      v26[1] = v17;
      *(*(v6 + 56) + 8 * v20) = v8;

      v27 = *(v6 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_26;
      }

      *(v6 + 16) = v29;
LABEL_5:
      v1 = i;
      i[4] = v6;
      ++v8;
      v6 = v61;
      if (v10 == v7)
      {
        goto LABEL_28;
      }
    }

    if (v8 >= *(v64 + 16))
    {
      goto LABEL_24;
    }

    v9 = *(v6 + 8 * v8 + 32);

    v10 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
      goto LABEL_9;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v7 = sub_2481247E8();
  }

LABEL_28:
  v30 = sub_2480F35C0(MEMORY[0x277D84F90]);

  v1[7] = v30;
  v32 = v1[1];
  if (v32 >> 62)
  {
    goto LABEL_54;
  }

  v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v33)
  {
LABEL_30:
    v34 = 0;
    v65 = v32 & 0xFFFFFFFFFFFFFF8;
    v66 = (v32 & 0xC000000000000001);
    v63 = (v59 + 8);
    v64 = v59 + 16;
    v62 = v32;
    do
    {
      if (v66)
      {
        v37 = MEMORY[0x24C1C6EA0](v34, v32);
        v38 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v34 >= *(v65 + 16))
        {
          goto LABEL_51;
        }

        v37 = *(v32 + 8 * v34 + 32);

        v38 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          result = sub_2481247E8();
          v33 = result;
          if (!result)
          {
            return result;
          }

          goto LABEL_30;
        }
      }

      v32 = v33;
      v39 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_uuid;
      swift_beginAccess();
      v40 = v37 + v39;
      v41 = v60;
      v42 = v68;
      (*v64)(v60, v40, v68);
      v43 = sub_248124278();
      v45 = v44;
      (*v63)(v41, v42);
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v69 = v1[7];
      v47 = v69;
      v49 = sub_2480F1E00(v43, v45);
      v50 = v47[2];
      v51 = (v48 & 1) == 0;
      v52 = v50 + v51;
      if (__OFADD__(v50, v51))
      {
        goto LABEL_52;
      }

      v1 = v48;
      if (v47[3] >= v52)
      {
        if (v46)
        {
          if (v48)
          {
            goto LABEL_31;
          }
        }

        else
        {
          sub_2480F2C24();
          if (v1)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        sub_2480F2328(v52, v46);
        v53 = sub_2480F1E00(v43, v45);
        if ((v1 & 1) != (v54 & 1))
        {
          goto LABEL_56;
        }

        v49 = v53;
        if (v1)
        {
LABEL_31:

          v35 = v69;
          *(v69[7] + 8 * v49) = v34;

          goto LABEL_32;
        }
      }

      v35 = v69;
      v69[(v49 >> 6) + 8] |= 1 << v49;
      v55 = (v35[6] + 16 * v49);
      *v55 = v43;
      v55[1] = v45;
      *(v35[7] + 8 * v49) = v34;

      v56 = v35[2];
      v28 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v28)
      {
        goto LABEL_53;
      }

      v35[2] = v57;
LABEL_32:
      v1 = i;
      i[7] = v35;
      ++v34;
      v33 = v32;
      v36 = v38 == v32;
      v32 = v62;
    }

    while (!v36);
  }

  return result;
}

uint64_t sub_2480E9D14(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87AA8, &qword_248125BF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2480EA8F0();
  sub_248124DA8();
  v11 = *v3;
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87AB8, &qword_248125BF8);
  sub_2480EB710(&qword_27EE87AC0, &qword_27EE87AC8, &unk_248125B74, MEMORY[0x277D83948]);
  sub_2481248F8();
  if (!v2)
  {
    v11 = v3[1];
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87AD0, &qword_248125C00);
    sub_2480EA98C(&qword_27EE87AD8, &qword_27EE87AE0, &unk_248125B24, MEMORY[0x277D83948]);
    sub_2481248F8();
    type metadata accessor for RecordStore(0);
    LOBYTE(v11) = 2;
    sub_2481242C8();
    sub_2480EAA28(&qword_27EE87AE8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_2481248F8();
    v11 = v3[2];
    HIBYTE(v10) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87AF0, &qword_248125C08);
    sub_2480EB7AC(&qword_27EE87AF8, MEMORY[0x277D837D8], MEMORY[0x277D83B90], MEMORY[0x277D83508]);
    sub_2481248F8();
    v11 = v3[3];
    HIBYTE(v10) = 4;
    sub_2481248F8();
    v11 = v3[4];
    HIBYTE(v10) = 5;
    sub_2481248F8();
    v11 = v3[5];
    HIBYTE(v10) = 6;
    sub_2481248F8();
    v11 = v3[6];
    HIBYTE(v10) = 7;
    sub_2481248F8();
    v11 = v3[7];
    HIBYTE(v10) = 8;
    sub_2481248F8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2480EA158@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_2481242C8();
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87BC0, &unk_248126030);
  v7 = *(v6 - 8);
  v23 = v6;
  v24 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for RecordStore(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2480EA8F0();
  v14 = v25;
  sub_248124D98();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_0(v26);
  }

  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87AB8, &qword_248125BF8);
  v27 = 0;
  sub_2480EB710(&qword_27EE87BC8, &qword_27EE87BD0, &unk_248125B9C, MEMORY[0x277D83978]);
  v16 = v23;
  sub_248124878();
  v17 = v15;
  *v15 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87AD0, &qword_248125C00);
  v27 = 1;
  sub_2480EA98C(&qword_27EE87BD8, &qword_27EE87BE0, &unk_248125B4C, MEMORY[0x277D83978]);
  sub_248124878();
  *(v15 + 1) = v28;
  LOBYTE(v28) = 2;
  sub_2480EAA28(&qword_27EE87B10, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_248124878();
  v18 = v24;
  (*(v22 + 32))(&v17[*(v10 + 48)], v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87AF0, &qword_248125C08);
  v27 = 3;
  v25 = sub_2480EB7AC(&qword_27EE87BE8, MEMORY[0x277D83808], MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
  sub_248124878();
  *(v17 + 2) = v28;
  v27 = 4;
  sub_248124878();
  *(v17 + 3) = v28;
  v27 = 5;
  sub_248124878();
  *(v17 + 4) = v28;
  v27 = 6;
  sub_248124878();
  *(v17 + 5) = v28;
  v27 = 7;
  sub_248124878();
  *(v17 + 6) = v28;
  v27 = 8;
  sub_248124878();
  (*(v18 + 8))(v9, v16);
  *(v17 + 7) = v28;
  sub_2480EB81C(v17, v21);
  __swift_destroy_boxed_opaque_existential_0(v26);
  return sub_2480EB880(v17);
}

unint64_t sub_2480EA8F0()
{
  result = qword_27EE87AB0;
  if (!qword_27EE87AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87AB0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2480EA98C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE87AD0, &qword_248125C00);
    sub_2480EAA28(a2, type metadata accessor for RecordStore.GroupStoreRecord, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2480EAA28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2480EAA90(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2480EAAC8()
{
  result = qword_27EE87B08;
  if (!qword_27EE87B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87B08);
  }

  return result;
}

unint64_t sub_2480EAB1C()
{
  result = qword_27EE87B28;
  if (!qword_27EE87B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87B28);
  }

  return result;
}

uint64_t sub_2480EAB70(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE87B30, &qword_248126410);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecordStore.GroupStoreRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecordStore.GroupStoreRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecordStore.UserStoreRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecordStore.UserStoreRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecordStore.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecordStore.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2480EB004(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2481242C8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_2480EB0C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2481242C8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2480EB168(uint64_t a1)
{
  sub_2480EB260(319, &qword_27EE87B60, type metadata accessor for RecordStore.UserStoreRecord);
  if (v1 <= 0x3F)
  {
    sub_2480EB260(319, &qword_27EE87B68, type metadata accessor for RecordStore.GroupStoreRecord);
    if (v2 <= 0x3F)
    {
      sub_2480EB2B4();
      if (v3 <= 0x3F)
      {
        sub_2481242C8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2480EB260(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2481245A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2480EB2B4()
{
  if (!qword_27EE87B70)
  {
    v0 = sub_248124418();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE87B70);
    }
  }
}

unint64_t sub_2480EB318()
{
  result = qword_27EE87B78;
  if (!qword_27EE87B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87B78);
  }

  return result;
}

unint64_t sub_2480EB370()
{
  result = qword_27EE87B80;
  if (!qword_27EE87B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87B80);
  }

  return result;
}

unint64_t sub_2480EB3C8()
{
  result = qword_27EE87B88;
  if (!qword_27EE87B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87B88);
  }

  return result;
}

unint64_t sub_2480EB420()
{
  result = qword_27EE87B90;
  if (!qword_27EE87B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87B90);
  }

  return result;
}

unint64_t sub_2480EB478()
{
  result = qword_27EE87B98;
  if (!qword_27EE87B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87B98);
  }

  return result;
}

unint64_t sub_2480EB4D0()
{
  result = qword_27EE87BA0;
  if (!qword_27EE87BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87BA0);
  }

  return result;
}

unint64_t sub_2480EB528()
{
  result = qword_27EE87BA8;
  if (!qword_27EE87BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87BA8);
  }

  return result;
}

unint64_t sub_2480EB580()
{
  result = qword_27EE87BB0;
  if (!qword_27EE87BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87BB0);
  }

  return result;
}

unint64_t sub_2480EB5D8()
{
  result = qword_27EE87BB8;
  if (!qword_27EE87BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87BB8);
  }

  return result;
}

unint64_t sub_2480EB62C(uint64_t a1, uint64_t a2)
{
  v2 = sub_248124828();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2480EB678(uint64_t a1, uint64_t a2)
{
  v2 = sub_248124828();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2480EB6C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_248124828();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2480EB710(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE87AB8, &qword_248125BF8);
    sub_2480EAA28(a2, type metadata accessor for RecordStore.UserStoreRecord, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2480EB7AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE87AF0, &qword_248125C08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2480EB81C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordStore(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2480EB880(uint64_t a1)
{
  v2 = type metadata accessor for RecordStore(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2480EB8F4()
{
  sub_2481246E8();

  v0 = sub_248124938();
  MEMORY[0x24C1C6C90](v0);

  MEMORY[0x24C1C6C90](93, 0xE100000000000000);
  return 0xD000000000000012;
}

uint64_t sub_2480EB9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881B0, &qword_248126138);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87BF0, &qword_248126140);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2481260F0;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_2480EBB54();
  v12 = MEMORY[0x277D84CC0];
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  v13 = MEMORY[0x277D84D30];
  *(v11 + 96) = v12;
  *(v11 + 104) = v13;
  *(v11 + 72) = a3;

  sub_248124498();
  sub_248124268();

  v14 = sub_2481242C8();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v10, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v15 + 32))(a4, v10, v14);
  }

  return result;
}

unint64_t sub_2480EBB54()
{
  result = qword_27EE87BF8;
  if (!qword_27EE87BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87BF8);
  }

  return result;
}

uint64_t sub_2480EBBA8(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = sub_248124408();
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v21 = MEMORY[0x277D84F90];
  sub_2480FC318(0, v9, 0);
  v10 = v21;
  v16 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v12 = *i;
    v20[0] = *(i - 1);
    v20[1] = v12;

    v18(v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v21 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_2480FC318((v13 > 1), v14 + 1, 1);
      v10 = v21;
    }

    *(v10 + 16) = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v17);
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2480EBD74(uint64_t a1)
{
  v55 = sub_248124408();
  v3 = *(v55 - 8);
  v4 = MEMORY[0x28223BE20](v55);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v51 - v7;
  v9 = sub_2481240D8();
  v52 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v53 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  v17 = sub_24810B240();
  if (!v1)
  {
    v35 = v17;
    MEMORY[0x28223BE20](v17);
    *(&v51 - 2) = a1;
    v22 = sub_2480EBBA8(sub_2480EC5AC, (&v51 - 4), v35);

    return v22;
  }

  v57 = v1;
  MEMORY[0x24C1C7A20](v1);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
  if (!swift_dynamicCast())
  {
    v53 = v18;

    v22 = v55;
    (*(v3 + 16))(v6, a1, v55);
    MEMORY[0x24C1C7A20](v1);
    v36 = sub_2481242D8();
    v37 = sub_248124628();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = v3;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v57 = v40;
      *v39 = 136446466;
      sub_2480EC564(&qword_27EE87A10, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v41 = sub_248124938();
      v42 = v22;
      v43 = v41;
      v45 = v44;
      (*(v38 + 8))(v6, v42);
      v46 = sub_24810C31C(v43, v45, &v57);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2082;
      v56 = v1;
      MEMORY[0x24C1C7A20](v1);
      v47 = sub_2481244A8();
      v22 = v48;
      v49 = sub_24810C31C(v47, v48, &v57);

      *(v39 + 14) = v49;
      _os_log_impl(&dword_2480DF000, v36, v37, "Failed to get contents of directory %{public}s: %{public}s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1C7B90](v40, -1, -1);
      MEMORY[0x24C1C7B90](v39, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v22);
    }

    swift_willThrow();
    return v22;
  }

  v20 = v52;
  v19 = v53;
  (*(v52 + 32))(v53, v16, v9);
  v21 = v3;
  v22 = v55;
  (*(v3 + 16))(v8, a1, v55);
  (*(v20 + 16))(v12, v19, v9);
  v23 = sub_2481242D8();
  v24 = sub_248124628();
  if (!os_log_type_enabled(v23, v24))
  {
    v34 = *(v20 + 8);
    v34(v12, v9);

    (*(v3 + 8))(v8, v22);
    goto LABEL_11;
  }

  v25 = swift_slowAlloc();
  v54 = swift_slowAlloc();
  v56 = v54;
  *v25 = 136446466;
  sub_2480EC564(&qword_27EE87A10, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
  v26 = sub_248124938();
  v27 = v22;
  v28 = v26;
  v30 = v29;
  (*(v21 + 8))(v8, v27);
  v31 = sub_24810C31C(v28, v30, &v56);

  *(v25 + 4) = v31;
  *(v25 + 12) = 1024;
  sub_2480EC564(&qword_27EE87A20, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
  result = sub_2481241B8();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v33 = result;
    if (result <= 0x7FFFFFFF)
    {
      v34 = *(v52 + 8);
      v34(v12, v9);
      *(v25 + 14) = v33;
      _os_log_impl(&dword_2480DF000, v23, v24, "Failed to get contents of directory %{public}s: %{darwin.errno}d", v25, 0x12u);
      v22 = v54;
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x24C1C7B90](v22, -1, -1);
      MEMORY[0x24C1C7B90](v25, -1, -1);

LABEL_11:
      v50 = v53;
      sub_2481240C8();
      swift_willThrow();
      v34(v50, v9);

      return v22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2480EC470(uint64_t *a1, uint64_t a2)
{
  v3 = sub_248124408();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

  return sub_2481243F8();
}

uint64_t sub_2480EC564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2480EC5CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v111 = a1;
  v112 = a2;
  v121 = sub_2481242C8();
  v108 = *(v121 - 8);
  v12 = MEMORY[0x28223BE20](v121);
  v113 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v104 - v14;
  v16 = type metadata accessor for RecordStore(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (&v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_2481242D8();
  v20 = sub_248124608();
  v21 = os_log_type_enabled(v19, v20);
  v122 = v15;
  if (v21)
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2480DF000, v19, v20, "Updating local domain...", v22, 2u);
    v23 = v22;
    v15 = v122;
    MEMORY[0x24C1C7B90](v23, -1, -1);
  }

  v24 = a3 & 1;
  v26 = v111;
  v25 = v112;
  v27 = v120;
  result = sub_2480ED2F8(v111, v112, v24, a4, a5, a6, v18);
  if (!v27)
  {
    if (v26 >> 62)
    {
      v102 = sub_2481247E8();
      v25 = v112;
      v29 = v102;
    }

    else
    {
      v29 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = v121;
    v31 = MEMORY[0x277D84F90];
    v106 = v7;
    v105 = 0;
    v104 = v18;
    if (v29)
    {
      v123 = MEMORY[0x277D84F90];
      result = sub_248124788();
      if (v29 < 0)
      {
        __break(1u);
        goto LABEL_35;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v32 = 0;
        v109 = (v108 + 32);
        v110 = (v108 + 16);
        v120 = v29;
        do
        {
          v119 = (v32 + 1);
          v33 = MEMORY[0x24C1C6EA0]();
          LODWORD(v118) = *(v33 + 16);
          v34 = *(v33 + 32);
          v117 = *(v33 + 24);
          v35 = *v110;
          (*v110)(v15, v33 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid, v30);
          v36 = *(v33 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName + 8);
          v116 = *(v33 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName);
          v37 = *(v33 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory + 8);
          v115 = *(v33 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory);
          v38 = v113;
          v35(v113, v33 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID, v121);
          v39 = *(v33 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell + 8);
          v114 = *(v33 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell);
          v40 = OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships;
          swift_beginAccess();
          v41 = *(v33 + v40);
          v42 = *(v33 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases);

          swift_unknownObjectRelease();
          type metadata accessor for UserRecordFile(0);
          v43 = swift_allocObject();
          *(v43 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_aliases) = 0;
          *(v43 + 16) = 3;
          *(v43 + 24) = v118;
          *(v43 + 32) = v117;
          *(v43 + 40) = v34;
          v44 = *v109;
          (*v109)(v43 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_uuid, v122, v121);
          v45 = (v43 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_fullName);
          v46 = v115;
          *v45 = v116;
          v45[1] = v36;
          v47 = (v43 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_homeDirectory);
          *v47 = v46;
          v47[1] = v37;
          v48 = v120;
          v30 = v121;
          v44(v43 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_primaryGroupUUID, v38, v121);
          v49 = (v43 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_shell);
          *v49 = v114;
          v49[1] = v39;
          *(v43 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_memberships) = v41;
          *(v43 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_aliases) = v42;
          v15 = v122;
          sub_248124768();
          sub_248124798();
          sub_2481247A8();
          sub_248124778();
          v32 = v119;
        }

        while (v48 != v119);
      }

      else
      {
        v109 = *(v108 + 16);
        v110 = (v108 + 16);
        v50 = (v26 + 32);
        v107 = (v108 + 32);
        do
        {
          v51 = *v50;
          v119 = v50 + 1;
          v120 = v29;
          v52 = *(v51 + 16);
          v53 = *(v51 + 32);
          v118 = *(v51 + 24);
          v54 = v15;
          v55 = v109;
          (v109)(v54, v51 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid, v30);
          v56 = *(v51 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName + 8);
          v117 = *(v51 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName);
          v115 = v56;
          v57 = *(v51 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory + 8);
          v116 = *(v51 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory);
          v58 = v113;
          (v55)(v113, v51 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID, v30);
          v59 = *(v51 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell + 8);
          v114 = *(v51 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell);
          v111 = v59;
          v60 = OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships;
          swift_beginAccess();
          v61 = *(v51 + v60);
          v62 = *(v51 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases);
          type metadata accessor for UserRecordFile(0);
          v63 = swift_allocObject();
          *(v63 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_aliases) = 0;
          *(v63 + 16) = 3;
          *(v63 + 24) = v52;
          *(v63 + 32) = v118;
          *(v63 + 40) = v53;
          v64 = *v107;
          (*v107)(v63 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_uuid, v122, v121);
          v65 = (v63 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_fullName);
          v66 = v116;
          v67 = v115;
          *v65 = v117;
          v65[1] = v67;
          v68 = (v63 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_homeDirectory);
          *v68 = v66;
          v68[1] = v57;
          v64(v63 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_primaryGroupUUID, v58, v121);
          v30 = v121;
          v69 = (v63 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_shell);
          v70 = v111;
          *v69 = v114;
          v69[1] = v70;
          *(v63 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_memberships) = v61;
          *(v63 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_aliases) = v62;

          v71 = v120;

          v15 = v122;

          sub_248124768();
          sub_248124798();
          sub_2481247A8();
          sub_248124778();
          v50 = v119;
          v29 = v71 - 1;
        }

        while (v29);
      }

      v31 = v123;
      v27 = v105;
      v18 = v104;
      v7 = v106;
      v25 = v112;
    }

    if (v25 >> 62)
    {
      v103 = sub_2481247E8();
      v25 = v112;
      v72 = v103;
    }

    else
    {
      v72 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v73 = MEMORY[0x277D84F90];
    if (!v72)
    {
      goto LABEL_26;
    }

    v123 = MEMORY[0x277D84F90];
    result = sub_248124788();
    if ((v72 & 0x8000000000000000) == 0)
    {
      v114 = v31;
      if ((v25 & 0xC000000000000001) != 0)
      {
        v74 = 0;
        v115 = (v108 + 32);
        v116 = (v108 + 16);
        v120 = v72;
        do
        {
          v119 = (v74 + 1);
          v75 = MEMORY[0x24C1C6EA0]();
          v76 = *(v75 + 32);
          v77 = *(v75 + 48);
          v117 = *(v75 + 40);
          v78 = v121;
          (*v116)(v122, v75 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v121);
          v79 = *(v75 + 24);
          v118 = *(v75 + 16);
          v80 = *(v75 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_nestedGroups);
          v81 = *(v75 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases);

          swift_unknownObjectRelease();
          type metadata accessor for GroupRecordFile(0);
          v82 = swift_allocObject();
          *(v82 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups) = 0;
          *(v82 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases) = 0;
          *(v82 + 16) = 3;
          *(v82 + 24) = v76;
          *(v82 + 32) = v117;
          *(v82 + 40) = v77;
          (*v115)(v82 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_uuid, v122, v78);
          v83 = (v82 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_fullName);
          *v83 = v118;
          v83[1] = v79;
          *(v82 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups) = v80;
          *(v82 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases) = v81;
          sub_248124768();
          sub_248124798();
          v84 = v120;
          sub_2481247A8();
          sub_248124778();
          v74 = v119;
        }

        while (v84 != v119);
      }

      else
      {
        v85 = (v25 + 32);
        v86 = *(v108 + 16);
        v115 = (v108 + 32);
        v116 = v86;
        v108 += 16;
        do
        {
          v120 = v72;
          v87 = *v85++;
          LODWORD(v118) = *(v87 + 32);
          v88 = *(v87 + 48);
          v117 = *(v87 + 40);
          v89 = v121;
          (v116)(v122, v87 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v121);
          v90 = *(v87 + 24);
          v119 = *(v87 + 16);
          v91 = *(v87 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_nestedGroups);
          v92 = *(v87 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases);
          type metadata accessor for GroupRecordFile(0);
          v93 = swift_allocObject();
          *(v93 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups) = 0;
          *(v93 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases) = 0;
          *(v93 + 16) = 3;
          *(v93 + 24) = v118;
          *(v93 + 32) = v117;
          *(v93 + 40) = v88;
          (*v115)(v93 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_uuid, v122, v89);
          v94 = (v93 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_fullName);
          *v94 = v119;
          v94[1] = v90;
          *(v93 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups) = v91;
          *(v93 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases) = v92;

          sub_248124768();
          sub_248124798();
          v95 = v120;
          sub_2481247A8();
          sub_248124778();
          v72 = v95 - 1;
        }

        while (v72);
      }

      v73 = v123;
      v27 = v105;
      v18 = v104;
      v7 = v106;
      v31 = v114;
LABEL_26:
      sub_2480EDC14(v31, v73, v18);
      if (v27)
      {
        sub_2480EB880(v18);
      }

      else
      {

        v96 = sub_2481242D8();
        v97 = sub_248124638();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          *v98 = 0;
          _os_log_impl(&dword_2480DF000, v96, v97, "Updated local domain", v98, 2u);
          v99 = v98;
          v7 = v106;
          MEMORY[0x24C1C7B90](v99, -1, -1);
        }

        v100 = type metadata accessor for RecordManager(0);
        v101 = __swift_project_boxed_opaque_existential_1((v7 + *(v100 + 20)), *(v7 + *(v100 + 20) + 24));
        __swift_project_boxed_opaque_existential_1(v101 + 5, v101[8]);
        sub_24810BFAC(0xD00000000000001FLL, 0x8000000248128CE0);
        return sub_2480EB880(v18);
      }
    }

LABEL_35:
    __break(1u);
  }

  return result;
}

uint64_t sub_2480ED2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v61 = a5;
  v55 = a6;
  v56 = a7;
  v59 = a2;
  v60 = a4;
  v57 = a3;
  v58 = a1;
  v64 = sub_2481242C8();
  v67 = *(v64 - 8);
  v8 = MEMORY[0x28223BE20](v64);
  v63 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v55 - v10;
  v11 = sub_2481242D8();
  v12 = sub_248124608();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2480DF000, v11, v12, "Building updated record store...", v13, 2u);
    MEMORY[0x24C1C7B90](v13, -1, -1);
  }

  v65 = v7;
  v14 = sub_2480E0A38(0);
  v15 = v14;
  v17 = v16;
  v69 = v14;
  v68 = v16;
  v18 = v14 & 0xFFFFFFFFFFFFFF8;
  v19 = v14 >> 62;
  if (v14 >> 62)
  {
LABEL_138:
    v20 = sub_2481247E8();
  }

  else
  {
    v20 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = 0;
  while (1)
  {
    if (v20 == v21)
    {
      if (v19)
      {
        v21 = sub_2481247E8();
      }

      else
      {
        v21 = *(v18 + 16);
      }

      goto LABEL_25;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x24C1C6EA0](v21, v15);
    }

    else
    {
      if (v21 >= *(v18 + 16))
      {
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
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
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }
    }

    v23 = *(v22 + 16);

    v25 = v21 + 1;
    v26 = __OFADD__(v21, 1);
    if (v23 == 501)
    {
      break;
    }

    ++v21;
    if (v26)
    {
      goto LABEL_125;
    }
  }

  if (v26)
  {
    goto LABEL_150;
  }

  if (v19)
  {
    if (v25 != sub_2481247E8())
    {
LABEL_48:
      v19 = v21 + 5;
      do
      {
        v32 = v19 - 4;
        v18 = v15 & 0xC000000000000001;
        if ((v15 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x24C1C6EA0](v19 - 4, v15);
        }

        else
        {
          if ((v32 & 0x8000000000000000) != 0)
          {
            goto LABEL_128;
          }

          if (v32 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_129;
          }
        }

        v34 = *(v33 + 16);

        if (v34 != 501)
        {
          if (v32 != v21)
          {
            if (v18)
            {
              v30 = MEMORY[0x24C1C6EA0](v21, v15);
              v18 = MEMORY[0x24C1C6EA0](v19 - 4, v15);
            }

            else
            {
              if ((v21 & 0x8000000000000000) != 0)
              {
                goto LABEL_144;
              }

              v35 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v21 >= v35)
              {
                goto LABEL_145;
              }

              if (v32 >= v35)
              {
                goto LABEL_146;
              }

              v30 = *(v15 + 8 * v21 + 32);
              v18 = *(v15 + 8 * v19);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
            {
              v15 = sub_2480F3034(v15);
              v36 = (v15 >> 62) & 1;
            }

            else
            {
              LODWORD(v36) = 0;
            }

            v37 = v15 & 0xFFFFFFFFFFFFFF8;
            *((v15 & 0xFFFFFFFFFFFFFF8) + 8 * v21 + 0x20) = v18;

            if ((v15 & 0x8000000000000000) != 0 || v36)
            {
              v15 = sub_2480F3034(v15);
              v37 = v15 & 0xFFFFFFFFFFFFFF8;
              if ((v32 & 0x8000000000000000) != 0)
              {
LABEL_80:
                __break(1u);
                goto LABEL_81;
              }
            }

            else if ((v32 & 0x8000000000000000) != 0)
            {
              goto LABEL_80;
            }

            if (v32 >= *(v37 + 16))
            {
              goto LABEL_136;
            }

            *(v37 + 8 * v19) = v30;

            v69 = v15;
          }

          v38 = __OFADD__(v21++, 1);
          if (v38)
          {
            goto LABEL_134;
          }
        }

        v18 = v19 - 3;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_130;
        }

        if (v15 >> 62)
        {
          v39 = sub_2481247E8();
        }

        else
        {
          v39 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v19;
      }

      while (v18 != v39);
    }
  }

  else if (v25 != *(v18 + 16))
  {
    goto LABEL_48;
  }

LABEL_25:
  if (!(v15 >> 62))
  {
    v27 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27 >= v21)
    {
      goto LABEL_27;
    }

LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v27 = sub_2481247E8();
  if (v27 < v21)
  {
    goto LABEL_140;
  }

LABEL_27:
  result = sub_2480F32FC(v21, v27, type metadata accessor for UserRecord);
  v18 = v17 & 0xFFFFFFFFFFFFFF8;
  v19 = v17 >> 62;
  if (v17 >> 62)
  {
LABEL_141:
    result = sub_2481247E8();
    v15 = result;
    goto LABEL_29;
  }

  v15 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_29:
  v21 = 0;
  while (1)
  {
    if (v15 == v21)
    {
      if (v19)
      {
        result = sub_2481247E8();
        v21 = result;
      }

      else
      {
        v21 = *(v18 + 16);
      }

      goto LABEL_82;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x24C1C6EA0](v21, v17);
    }

    else
    {
      if (v21 >= *(v18 + 16))
      {
        goto LABEL_126;
      }
    }

    v29 = *(v28 + 32);

    v30 = v21 + 1;
    v31 = __OFADD__(v21, 1);
    if (v29 == 501)
    {
      break;
    }

    ++v21;
    if (v31)
    {
      goto LABEL_127;
    }
  }

  if (v31)
  {
LABEL_151:
    __break(1u);
    return result;
  }

  if (v19)
  {
LABEL_81:
    result = sub_2481247E8();
    if (v30 != result)
    {
LABEL_90:
      v19 = v21 + 5;
      do
      {
        v15 = v19 - 4;
        v18 = v17 & 0xC000000000000001;
        if ((v17 & 0xC000000000000001) != 0)
        {
          v51 = MEMORY[0x24C1C6EA0](v19 - 4, v17);
        }

        else
        {
          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_131;
          }

          if (v15 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_132;
          }
        }

        v52 = *(v51 + 32);

        if (v52 != 501)
        {
          if (v15 != v21)
          {
            if (v18)
            {
              v42 = MEMORY[0x24C1C6EA0](v21, v17);
              v18 = MEMORY[0x24C1C6EA0](v19 - 4, v17);
            }

            else
            {
              if ((v21 & 0x8000000000000000) != 0)
              {
                goto LABEL_147;
              }

              v53 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v21 >= v53)
              {
                goto LABEL_148;
              }

              if (v15 >= v53)
              {
                goto LABEL_149;
              }

              v42 = *(v17 + 8 * v21 + 32);
              v18 = *(v17 + 8 * v19);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v17 & 0x8000000000000000) != 0 || (v17 & 0x4000000000000000) != 0)
            {
              v17 = sub_2480F3034(v17);
              v54 = (v17 >> 62) & 1;
            }

            else
            {
              LODWORD(v54) = 0;
            }

            v43 = v17 & 0xFFFFFFFFFFFFFF8;
            *((v17 & 0xFFFFFFFFFFFFFF8) + 8 * v21 + 0x20) = v18;

            if ((v17 & 0x8000000000000000) != 0 || v54)
            {
              v17 = sub_2480F3034(v17);
              v43 = v17 & 0xFFFFFFFFFFFFFF8;
              if ((v15 & 0x8000000000000000) != 0)
              {
LABEL_122:
                __break(1u);
LABEL_123:
                (*(v42 + 8))(v43, v19);
              }
            }

            else if ((v15 & 0x8000000000000000) != 0)
            {
              goto LABEL_122;
            }

            if (v15 >= *(v43 + 16))
            {
              goto LABEL_137;
            }

            *(v43 + 8 * v19) = v42;

            v68 = v17;
          }

          v38 = __OFADD__(v21++, 1);
          if (v38)
          {
            goto LABEL_135;
          }
        }

        v18 = v19 - 3;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_133;
        }

        if (v17 >> 62)
        {
          result = sub_2481247E8();
        }

        else
        {
          result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v19;
      }

      while (v18 != result);
    }
  }

  else
  {
    result = *(v18 + 16);
    if (v30 != result)
    {
      goto LABEL_90;
    }
  }

LABEL_82:
  v40 = v63;
  v19 = v64;
  if (v17 >> 62)
  {
    result = sub_2481247E8();
    v41 = result;
  }

  else
  {
    v41 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = v66;
  v42 = v67;
  v44 = v65;
  if (v41 < v21)
  {
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  sub_2480F32FC(v21, v41, type metadata accessor for GroupRecord);
  v45 = type metadata accessor for RecordManager(0);
  v46 = __swift_project_boxed_opaque_existential_1((v44 + *(v45 + 20)), *(v44 + *(v45 + 20) + 24));
  __swift_project_boxed_opaque_existential_1(v46 + 10, v46[13]);
  v47 = v62;
  sub_2480F49BC(v40);
  if (!v47)
  {
    (*(v42 + 32))(v43, v40, v19);
    sub_2480F68A4(v69, v68, v58, v59, v43, v57 & 1, v60, v56, v55);
    goto LABEL_123;
  }

  v48 = sub_2481242D8();
  v49 = sub_248124628();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_2480DF000, v48, v49, "Failed to update local domain: failed to get current boot UUID", v50, 2u);
    MEMORY[0x24C1C7B90](v50, -1, -1);
  }

  return swift_willThrow();
}

void sub_2480EDC14(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3;
  v28 = sub_2481240D8();
  v27[0] = *(v28 - 8);
  v9 = MEMORY[0x28223BE20](v28);
  v29[6] = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v27[1] = v27 - v12;
  MEMORY[0x28223BE20](v11);
  v13 = sub_2481242D8();
  v14 = sub_248124608();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2480DF000, v13, v14, "Preparing staging directory...", v15, 2u);
    MEMORY[0x24C1C7B90](v15, -1, -1);
  }

  sub_2480EE254();
  if (!v4)
  {
    v16 = sub_2481242D8();
    v17 = sub_248124608();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2480DF000, v16, v17, "Staging files...", v18, 2u);
      MEMORY[0x24C1C7B90](v18, -1, -1);
    }

    sub_2480EE3B0(a1, a2, a3);
    v19 = sub_2481242D8();
    v20 = sub_248124608();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2480DF000, v19, v20, "Swapping in staged files...", v21, 2u);
      MEMORY[0x24C1C7B90](v21, -1, -1);
    }

    v22 = type metadata accessor for RecordManager(0);
    v23 = __swift_project_boxed_opaque_existential_1((v5 + *(v22 + 20)), *(v5 + *(v22 + 20) + 24));
    sub_2480F1CC8(v23, v29);
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    if (qword_27EE879B0 != -1)
    {
      swift_once();
    }

    v24 = sub_248124408();
    v25 = __swift_project_value_buffer(v24, qword_27EE8ACA8);
    if (qword_27EE879A8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v24, qword_27EE8AC90);
    sub_24810AA04(v25, v26);
    __swift_destroy_boxed_opaque_existential_0(v29);
  }

  sub_2480EE184(v5);
}

void sub_2480EE184(uint64_t a1)
{
  v1 = sub_2481242D8();
  v2 = sub_248124608();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2480DF000, v1, v2, "Cleaning up staging directory...", v3, 2u);
    MEMORY[0x24C1C7B90](v3, -1, -1);
  }

  sub_2480EE574();
}

void sub_2480EE254()
{
  sub_2480EE574();
  if (v0)
  {
    MEMORY[0x24C1C7A20](v0);
    v1 = sub_2481242D8();
    v2 = sub_248124628();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v8 = v4;
      *v3 = 136446210;
      MEMORY[0x24C1C7A20](v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
      v5 = sub_2481244A8();
      v7 = sub_24810C31C(v5, v6, &v8);

      *(v3 + 4) = v7;
      _os_log_impl(&dword_2480DF000, v1, v2, "Failed to update local domain: failed to remove staging directory: %{public}s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v4);
      MEMORY[0x24C1C7B90](v4, -1, -1);
      MEMORY[0x24C1C7B90](v3, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    sub_2480EE9E8();
  }
}

void sub_2480EE3B0(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_27EE879E8 != -1)
  {
    swift_once();
  }

  v7 = sub_248124408();
  v8 = __swift_project_value_buffer(v7, qword_27EE8AD50);
  sub_2480EF21C(a1, v8);
  if (v3)
  {
    v11 = sub_2481242D8();
    v12 = sub_248124628();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2480DF000, v11, v12, "Failed to update local domain: failed to save files", v13, 2u);
      MEMORY[0x24C1C7B90](v13, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    if (qword_27EE879F0 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v7, qword_27EE8AD68);
    sub_2480EF8F8(a2, v9);
    if (qword_27EE879C0 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v7, qword_27EE8ACD8);
    sub_2480EFFD4(a3, v10);
  }
}

void sub_2480EE574()
{
  v2 = sub_2481240D8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30[-1] - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v30[-1] - v10;
  v12 = type metadata accessor for RecordManager(0);
  v13 = __swift_project_boxed_opaque_existential_1((v0 + *(v12 + 20)), *(v0 + *(v12 + 20) + 24));
  sub_2480F1CC8(v13, v30);
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  if (qword_27EE879B0 != -1)
  {
    swift_once();
  }

  v14 = sub_248124408();
  v15 = __swift_project_value_buffer(v14, qword_27EE8ACA8);
  sub_248109CC4(v15);
  if (!v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v30);
    return;
  }

  __swift_destroy_boxed_opaque_existential_0(v30);
  v30[0] = v1;
  MEMORY[0x24C1C7A20](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
  if (swift_dynamicCast())
  {

    (*(v3 + 32))(v9, v11, v2);
    (*(v3 + 16))(v6, v9, v2);
    v16 = sub_2481242D8();
    v17 = sub_248124628();
    if (!os_log_type_enabled(v16, v17))
    {
      v21 = *(v3 + 8);
      v21(v6, v2);
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    *v18 = 67109120;
    sub_2480F3904(&qword_27EE87A20, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
    v19 = sub_2481241B8();
    if (v19 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else
    {
      v20 = v19;
      if (v19 <= 0x7FFFFFFF)
      {
        v21 = *(v3 + 8);
        v21(v6, v2);
        *(v18 + 4) = v20;
        _os_log_impl(&dword_2480DF000, v16, v17, "Failed to remove staging directory: %{darwin.errno}d", v18, 8u);
        MEMORY[0x24C1C7B90](v18, -1, -1);
LABEL_14:

        sub_2481240C8();
        swift_willThrow();
        v21(v9, v2);

        return;
      }
    }

    __break(1u);
  }

  else
  {

    MEMORY[0x24C1C7A20](v1);
    v22 = sub_2481242D8();
    v23 = sub_248124628();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30[0] = v25;
      *v24 = 136446210;
      v30[6] = v1;
      MEMORY[0x24C1C7A20](v1);
      v26 = sub_2481244A8();
      v28 = sub_24810C31C(v26, v27, v30);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_2480DF000, v22, v23, "Failed to remove staging directory: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x24C1C7B90](v25, -1, -1);
      MEMORY[0x24C1C7B90](v24, -1, -1);
    }

    swift_willThrow();
  }
}

void sub_2480EE9E8()
{
  v2 = sub_2481240D8();
  v38 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v37[1] = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v37[2] = v37 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v37 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v37 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v13);
  v15 = v37 - v14;
  v16 = *(type metadata accessor for RecordManager(0) + 20);
  v39 = v0;
  v17 = (v0 + v16);
  v18 = __swift_project_boxed_opaque_existential_1((v0 + v16), *(v0 + v16 + 24));
  sub_2480F1CC8(v18, v40);
  __swift_project_boxed_opaque_existential_1(v40, v41);
  if (qword_27EE879E8 != -1)
  {
    swift_once();
  }

  v19 = sub_248124408();
  v20 = __swift_project_value_buffer(v19, qword_27EE8AD50);
  sub_2481096B0(v20);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v40);
    v40[0] = v1;
    MEMORY[0x24C1C7A20](v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
    if (swift_dynamicCast())
    {

      v21 = v38;
      (*(v38 + 32))(v12, v15, v2);
      (*(v21 + 16))(v9, v12, v2);
      v22 = sub_2481242D8();
      v23 = sub_248124628();
      if (!os_log_type_enabled(v22, v23))
      {
        v27 = *(v21 + 8);
        v27(v9, v2);
        goto LABEL_15;
      }

      v24 = swift_slowAlloc();
      *v24 = 67109120;
      sub_2480F3904(&qword_27EE87A20, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
      v25 = sub_2481241B8();
      if (v25 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else
      {
        v26 = v25;
        if (v25 <= 0x7FFFFFFF)
        {
          v27 = *(v38 + 8);
          v27(v9, v2);
          *(v24 + 4) = v26;
          _os_log_impl(&dword_2480DF000, v22, v23, "Failed to update local domain: failed to create user staging directory: %{darwin.errno}d", v24, 8u);
          MEMORY[0x24C1C7B90](v24, -1, -1);
LABEL_15:

          sub_2481240C8();
          swift_willThrow();
          v27(v12, v2);

          return;
        }
      }

      __break(1u);
      __break(1u);
      __break(1u);
    }

    else
    {

      MEMORY[0x24C1C7A20](v1);
      v30 = sub_2481242D8();
      v31 = sub_248124628();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v40[0] = v33;
        *v32 = 136446210;
        v42 = v1;
        MEMORY[0x24C1C7A20](v1);
        v34 = sub_2481244A8();
        v36 = sub_24810C31C(v34, v35, v40);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_2480DF000, v30, v31, "Failed to update local domain: failed to create user staging directory: %{public}s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x24C1C7B90](v33, -1, -1);
        MEMORY[0x24C1C7B90](v32, -1, -1);
      }

      swift_willThrow();
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v40);
    v28 = __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_2480F1CC8(v28, v40);
    __swift_project_boxed_opaque_existential_1(v40, v41);
    if (qword_27EE879F0 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v19, qword_27EE8AD68);
    sub_2481096B0(v29);
    __swift_destroy_boxed_opaque_existential_0(v40);
  }
}

uint64_t *sub_2480EF21C(unint64_t a1, uint64_t a2)
{
  v5 = sub_248124408();
  v71 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v62 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v62 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C38, &qword_248126178);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v62 - v18;
  v20 = v76;
  result = sub_2480F1614(a1, a2, &qword_27EE87C50, &qword_248126190, &qword_27EE87C48, &qword_248126188);
  if (!v20)
  {
    v73 = v2;
    v66 = v13;
    v76 = 0;
    v22 = 0;
    v68 = result;
    v69 = v19;
    v23 = result[8];
    v63 = v8;
    v64 = result + 8;
    v24 = 1 << *(result + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v23;
    v27 = (v24 + 63) >> 6;
    v67 = (v71 + 16);
    v74 = v5;
    v75 = (v71 + 32);
    v70 = (v71 + 8);
    v28 = v17;
    v65 = v17;
    v72 = v11;
    if ((v25 & v23) != 0)
    {
      while (1)
      {
        v29 = v22;
LABEL_13:
        v32 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v33 = v32 | (v29 << 6);
        v34 = v68;
        v35 = v71;
        v36 = v66;
        (*(v71 + 16))(v66, v68[6] + *(v71 + 72) * v33, v5);
        v37 = *(v34[7] + 8 * v33);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C40, &qword_248126180);
        v39 = v5;
        v40 = *(v38 + 48);
        v41 = *(v35 + 32);
        v28 = v65;
        v41(v65, v36, v39);
        *(v28 + v40) = v37;
        (*(*(v38 - 8) + 56))(v28, 0, 1, v38);

        v31 = v29;
        v19 = v69;
LABEL_14:
        sub_2480F389C(v28, v19, &qword_27EE87C38, &qword_248126178);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C40, &qword_248126180);
        if ((*(*(v42 - 8) + 48))(v19, 1, v42) == 1)
        {
        }

        v43 = *(v42 + 48);
        v5 = v74;
        v44 = v72;
        (*v75)(v72, v19, v74);
        v45 = v76;
        sub_2480F0B0C(*&v19[v43], v44, sub_2481089D0);
        v76 = v45;
        if (v45)
        {
          break;
        }

        result = (*v70)(v44, v5);
        v22 = v31;
        if (!v26)
        {
          goto LABEL_6;
        }
      }

      v47 = v63;
      (*v67)(v63, v44, v5);
      v48 = v76;
      MEMORY[0x24C1C7A20](v76);
      v49 = sub_2481242D8();
      v50 = sub_248124628();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = v47;
        v52 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v78 = v75;
        *v52 = 136446466;
        sub_2480F3904(&qword_27EE87A10, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
        v53 = sub_248124938();
        v55 = v54;
        v56 = *v70;
        (*v70)(v51, v74);
        v57 = sub_24810C31C(v53, v55, &v78);

        *(v52 + 4) = v57;
        *(v52 + 12) = 2082;
        v77 = v76;
        MEMORY[0x24C1C7A20](v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
        v58 = sub_2481244A8();
        v60 = sub_24810C31C(v58, v59, &v78);

        *(v52 + 14) = v60;
        v44 = v72;
        _os_log_impl(&dword_2480DF000, v49, v50, "Failed to save files: failed to save file %{public}s: %{public}s", v52, 0x16u);
        v61 = v75;
        swift_arrayDestroy();
        v5 = v74;
        MEMORY[0x24C1C7B90](v61, -1, -1);
        MEMORY[0x24C1C7B90](v52, -1, -1);
      }

      else
      {

        v56 = *v70;
        (*v70)(v47, v5);
      }

      swift_willThrow();

      return v56(v44, v5);
    }

    else
    {
LABEL_6:
      if (v27 <= v22 + 1)
      {
        v30 = v22 + 1;
      }

      else
      {
        v30 = v27;
      }

      v31 = v30 - 1;
      while (1)
      {
        v29 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v29 >= v27)
        {
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C40, &qword_248126180);
          (*(*(v46 - 8) + 56))(v28, 1, 1, v46);
          v26 = 0;
          goto LABEL_14;
        }

        v26 = v64[v29];
        ++v22;
        if (v26)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t *sub_2480EF8F8(unint64_t a1, uint64_t a2)
{
  v5 = sub_248124408();
  v71 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v62 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v62 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C08, &qword_248126158);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v62 - v18;
  v20 = v76;
  result = sub_2480F1614(a1, a2, &qword_27EE87C30, &qword_248126170, &qword_27EE87C18, &qword_248126168);
  if (!v20)
  {
    v73 = v2;
    v66 = v13;
    v76 = 0;
    v22 = 0;
    v68 = result;
    v69 = v19;
    v23 = result[8];
    v63 = v8;
    v64 = result + 8;
    v24 = 1 << *(result + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v23;
    v27 = (v24 + 63) >> 6;
    v67 = (v71 + 16);
    v74 = v5;
    v75 = (v71 + 32);
    v70 = (v71 + 8);
    v28 = v17;
    v65 = v17;
    v72 = v11;
    if ((v25 & v23) != 0)
    {
      while (1)
      {
        v29 = v22;
LABEL_13:
        v32 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v33 = v32 | (v29 << 6);
        v34 = v68;
        v35 = v71;
        v36 = v66;
        (*(v71 + 16))(v66, v68[6] + *(v71 + 72) * v33, v5);
        v37 = *(v34[7] + 8 * v33);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C10, &qword_248126160);
        v39 = v5;
        v40 = *(v38 + 48);
        v41 = *(v35 + 32);
        v28 = v65;
        v41(v65, v36, v39);
        *(v28 + v40) = v37;
        (*(*(v38 - 8) + 56))(v28, 0, 1, v38);

        v31 = v29;
        v19 = v69;
LABEL_14:
        sub_2480F389C(v28, v19, &qword_27EE87C08, &qword_248126158);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C10, &qword_248126160);
        if ((*(*(v42 - 8) + 48))(v19, 1, v42) == 1)
        {
        }

        v43 = *(v42 + 48);
        v5 = v74;
        v44 = v72;
        (*v75)(v72, v19, v74);
        v45 = v76;
        sub_2480F0B0C(*&v19[v43], v44, sub_248108C14);
        v76 = v45;
        if (v45)
        {
          break;
        }

        result = (*v70)(v44, v5);
        v22 = v31;
        if (!v26)
        {
          goto LABEL_6;
        }
      }

      v47 = v63;
      (*v67)(v63, v44, v5);
      v48 = v76;
      MEMORY[0x24C1C7A20](v76);
      v49 = sub_2481242D8();
      v50 = sub_248124628();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = v47;
        v52 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v78 = v75;
        *v52 = 136446466;
        sub_2480F3904(&qword_27EE87A10, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
        v53 = sub_248124938();
        v55 = v54;
        v56 = *v70;
        (*v70)(v51, v74);
        v57 = sub_24810C31C(v53, v55, &v78);

        *(v52 + 4) = v57;
        *(v52 + 12) = 2082;
        v77 = v76;
        MEMORY[0x24C1C7A20](v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
        v58 = sub_2481244A8();
        v60 = sub_24810C31C(v58, v59, &v78);

        *(v52 + 14) = v60;
        v44 = v72;
        _os_log_impl(&dword_2480DF000, v49, v50, "Failed to save files: failed to save file %{public}s: %{public}s", v52, 0x16u);
        v61 = v75;
        swift_arrayDestroy();
        v5 = v74;
        MEMORY[0x24C1C7B90](v61, -1, -1);
        MEMORY[0x24C1C7B90](v52, -1, -1);
      }

      else
      {

        v56 = *v70;
        (*v70)(v47, v5);
      }

      swift_willThrow();

      return v56(v44, v5);
    }

    else
    {
LABEL_6:
      if (v27 <= v22 + 1)
      {
        v30 = v22 + 1;
      }

      else
      {
        v30 = v27;
      }

      v31 = v30 - 1;
      while (1)
      {
        v29 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v29 >= v27)
        {
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C10, &qword_248126160);
          (*(*(v46 - 8) + 56))(v28, 1, 1, v46);
          v26 = 0;
          goto LABEL_14;
        }

        v26 = v64[v29];
        ++v22;
        if (v26)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  return result;
}

void sub_2480EFFD4(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v62 = sub_2481240D8();
  v58 = *(v62 - 8);
  v2 = MEMORY[0x28223BE20](v62);
  v59 = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v60 = v56 - v5;
  MEMORY[0x28223BE20](v4);
  v61 = v56 - v6;
  v7 = sub_248124408();
  v63 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v56 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v56 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v56 - v17;
  v19 = sub_2480F3904(&qword_27EE87C00, type metadata accessor for RecordStore, &unk_248125A74);
  v20 = *(v19 + 16);
  v21 = type metadata accessor for RecordStore(0);
  v22 = v64;
  v23 = v20(v21, v19);
  v64 = v24;
  if (v22)
  {
    v25 = v63;
    (*(v63 + 16))(v18, v66, v7);
    MEMORY[0x24C1C7A20](v22);
    v26 = sub_2481242D8();
    v27 = sub_248124628();

    v28 = v7;
    if (os_log_type_enabled(v26, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v68 = v30;
      *v29 = 136446466;
      sub_2480F3904(&qword_27EE87A10, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v31 = sub_248124938();
      v32 = v28;
      v34 = v33;
      (*(v25 + 8))(v18, v32);
      v35 = sub_24810C31C(v31, v34, &v68);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2082;
      v67 = v22;
      MEMORY[0x24C1C7A20](v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
      v36 = sub_2481244A8();
      v38 = sub_24810C31C(v36, v37, &v68);

      *(v29 + 14) = v38;
      _os_log_impl(&dword_2480DF000, v26, v27, "Failed to save file %{public}s: failed to serialize data: %{public}s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1C7B90](v30, -1, -1);
      MEMORY[0x24C1C7B90](v29, -1, -1);
    }

    else
    {

      (*(v25 + 8))(v18, v7);
    }

    swift_willThrow();
  }

  else
  {
    v56[0] = v10;
    v56[1] = v13;
    v39 = v63;
    v40 = v23;
    v41 = type metadata accessor for RecordManager(0);
    v42 = __swift_project_boxed_opaque_existential_1((v65 + *(v41 + 20)), *(v65 + *(v41 + 20) + 24));
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    v57 = v40;
    v43 = v40;
    v44 = v66;
    sub_24810A3BC(v43, v64, v66);
    v45 = v39;
    v46 = v16;
    (*(v39 + 16))(v16, v44, v7);
    v47 = sub_2481242D8();
    v48 = sub_248124618();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v68 = v50;
      *v49 = 136446210;
      sub_2480F3904(&qword_27EE87A10, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v51 = sub_248124938();
      v52 = v46;
      v54 = v53;
      (*(v45 + 8))(v52, v7);
      v55 = sub_24810C31C(v51, v54, &v68);

      *(v49 + 4) = v55;
      _os_log_impl(&dword_2480DF000, v47, v48, "Saved file %{public}s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x24C1C7B90](v50, -1, -1);
      MEMORY[0x24C1C7B90](v49, -1, -1);
      sub_2480E3308(v57, v64);
    }

    else
    {
      sub_2480E3308(v57, v64);

      (*(v39 + 8))(v46, v7);
    }
  }
}

void sub_2480F0B0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v67 = a3;
  v68 = a2;
  v4 = sub_2481240D8();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v63 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v58 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v58 - v10;
  v12 = sub_248124408();
  v66 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v58 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v58 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v58 - v23;
  v25 = v67(v22);
  v67 = v26;
  if (v3)
  {
    v27 = v66;
    (*(v66 + 16))(v24, v68, v12);
    MEMORY[0x24C1C7A20](v3);
    v28 = sub_2481242D8();
    v29 = sub_248124628();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v69 = v3;
      v32 = v31;
      v71 = v31;
      *v30 = 136446466;
      sub_2480F3904(&qword_27EE87A10, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v33 = sub_248124938();
      v35 = v34;
      (*(v27 + 8))(v24, v12);
      v36 = sub_24810C31C(v33, v35, &v71);

      *(v30 + 4) = v36;
      *(v30 + 12) = 2082;
      v70 = v69;
      MEMORY[0x24C1C7A20](v69);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
      v37 = sub_2481244A8();
      v39 = sub_24810C31C(v37, v38, &v71);

      *(v30 + 14) = v39;
      _os_log_impl(&dword_2480DF000, v28, v29, "Failed to save file %{public}s: failed to serialize data: %{public}s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1C7B90](v32, -1, -1);
      MEMORY[0x24C1C7B90](v30, -1, -1);
    }

    else
    {

      (*(v27 + 8))(v24, v12);
    }

    swift_willThrow();
  }

  else
  {
    v60 = v9;
    v61 = v11;
    v58[2] = v18;
    v59 = v21;
    v58[1] = v15;
    v40 = v66;
    v41 = v25;
    v42 = type metadata accessor for RecordManager(0);
    v43 = __swift_project_boxed_opaque_existential_1(&v69[*(v42 + 20)], *&v69[*(v42 + 20) + 24]);
    __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    v62 = v41;
    v44 = v41;
    v45 = v68;
    sub_24810A3BC(v44, v67, v68);
    v46 = v40;
    v47 = v59;
    v48 = v12;
    (*(v40 + 16))(v59, v45, v12);
    v49 = sub_2481242D8();
    v50 = sub_248124618();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v71 = v52;
      *v51 = 136446210;
      sub_2480F3904(&qword_27EE87A10, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v53 = sub_248124938();
      v54 = v48;
      v56 = v55;
      (*(v46 + 8))(v47, v54);
      v57 = sub_24810C31C(v53, v56, &v71);

      *(v51 + 4) = v57;
      _os_log_impl(&dword_2480DF000, v49, v50, "Saved file %{public}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x24C1C7B90](v52, -1, -1);
      MEMORY[0x24C1C7B90](v51, -1, -1);
      sub_2480E3308(v62, v67);
    }

    else
    {
      sub_2480E3308(v62, v67);

      (*(v40 + 8))(v47, v12);
    }
  }
}

uint64_t *sub_2480F1614(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v71 = a2;
  v13 = sub_2481240D8();
  v61 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_248124408();
  v66 = *(v72 - 8);
  v16 = MEMORY[0x28223BE20](v72);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v70 = &v57 - v20;
  MEMORY[0x28223BE20](v19);
  v76 = &v57 - v21;
  v64 = a5;
  v65 = a6;
  v22 = a6;
  v23 = a1;
  v24 = sub_2480F36BC(MEMORY[0x277D84F90], a3, a4, a5, v22);
  if (a1 >> 62)
  {
LABEL_34:
    v25 = sub_2481247E8();
  }

  else
  {
    v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v62 = v11;
  v26 = v76;
  if (v25)
  {
    v58 = v18;
    v59 = v15;
    v60 = v13;
    v18 = 0;
    v63 = v23 & 0xFFFFFFFFFFFFFF8;
    v74 = (v66 + 16);
    v68 = (v66 + 8);
    v69 = v23 & 0xC000000000000001;
    v27 = v72;
    v67 = v25;
    while (1)
    {
      if (v69)
      {
        v28 = MEMORY[0x24C1C6EA0](v18, v23);
        v11 = (v18 + 1);
        if (__OFADD__(v18, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v18 >= *(v63 + 16))
        {
          goto LABEL_33;
        }

        v28 = *(v23 + 8 * v18 + 32);

        v11 = (v18 + 1);
        if (__OFADD__(v18, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }
      }

      v73 = *v74;
      (v73)(v70, v71, v27);
      v29 = *(v28 + 40);
      v75[0] = *(v28 + 32);
      v75[1] = v29;

      MEMORY[0x24C1C6C90](0x7473696C702ELL, 0xE600000000000000);
      sub_2481243F8();
      if (v24[2])
      {
        sub_2480F1E78(v26);
        if (v30)
        {
          break;
        }
      }

      v15 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75[0] = v24;
      v13 = v24;
      v23 = sub_2480F1E78(v26);
      v33 = v24[2];
      v34 = (v32 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_31;
      }

      v36 = v32;
      if (v24[3] >= v35)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v13 = v75;
          sub_2480F2D8C(MEMORY[0x277D854C0], v64, v65);
        }
      }

      else
      {
        sub_2480F25C8(v35, isUniquelyReferenced_nonNull_native, v64, v65);
        v13 = v75[0];
        v37 = sub_2480F1E78(v76);
        if ((v36 & 1) != (v38 & 1))
        {
          result = sub_248124D08();
          __break(1u);
          return result;
        }

        v23 = v37;
      }

      v27 = v72;
      v24 = v75[0];
      if (v36)
      {
        *(*(v75[0] + 56) + 8 * v23) = v28;

        v26 = v76;
      }

      else
      {
        *(v75[0] + 8 * (v23 >> 6) + 64) |= 1 << v23;
        v26 = v76;
        (v73)(v24[6] + *(v66 + 72) * v23, v76, v27);
        *(v24[7] + 8 * v23) = v28;
        v39 = v24[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_32;
        }

        v24[2] = v41;
      }

      (*v68)(v26, v27);
      ++v18;
      v23 = v15;
      if (v11 == v67)
      {
        return v24;
      }
    }

    v42 = v58;
    (v73)(v58, v26, v27);
    v43 = sub_2481242D8();
    v44 = sub_248124628();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v73 = v45;
      v74 = swift_slowAlloc();
      v75[0] = v74;
      *v45 = 136315138;
      sub_2480F3904(&qword_27EE87A10, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v46 = sub_248124938();
      v48 = v47;
      v49 = *v68;
      (*v68)(v42, v72);
      v50 = sub_24810C31C(v46, v48, v75);
      v27 = v72;

      v51 = v73;
      *(v73 + 1) = v50;
      v52 = v51;
      _os_log_impl(&dword_2480DF000, v43, v44, "Failed to save files: multiple files collided at %s", v51, 0xCu);
      v53 = v74;
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x24C1C7B90](v53, -1, -1);
      MEMORY[0x24C1C7B90](v52, -1, -1);
    }

    else
    {

      v49 = *v68;
      (*v68)(v42, v27);
    }

    LODWORD(v75[0]) = 17;
    sub_24810BD34(MEMORY[0x277D84F90]);
    sub_2480F3904(&qword_27EE87A20, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
    v54 = v59;
    v55 = v60;
    sub_2481241C8();
    sub_2481240C8();
    (*(v61 + 8))(v54, v55);
    swift_willThrow();

    v49(v76, v27);
  }

  return v24;
}

uint64_t sub_2480F1CC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2480F1D2C(uint64_t a1)
{
  sub_2481242C8();
  v2 = MEMORY[0x277CC95F0];
  sub_2480F3904(&qword_27EE87A58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_248124438();
  return sub_2480F2A5C(a1, v3, MEMORY[0x277CC95F0], &qword_27EE87C68, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_2480F1E00(uint64_t a1, uint64_t a2)
{
  sub_248124D58();
  sub_2481244D8();
  v4 = sub_248124D88();

  return sub_2480F29A4(a1, a2, v4);
}

unint64_t sub_2480F1E78(uint64_t a1)
{
  sub_248124408();
  v2 = MEMORY[0x277D854C0];
  sub_2480F3904(&qword_27EE87C20, MEMORY[0x277D854C0], MEMORY[0x277D854D0]);
  v3 = sub_248124438();
  return sub_2480F2A5C(a1, v3, MEMORY[0x277D854C0], &qword_27EE87C28, v2, MEMORY[0x277D854D8]);
}

uint64_t sub_2480F1F4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2481242C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C60, &qword_2481261A0);
  v39 = v4;
  result = sub_248124808();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_2480F3904(&qword_27EE87A58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_248124438();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2480F2328(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C58, &qword_248126198);
  v34 = v4;
  result = sub_248124808();
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

      sub_248124D58();
      sub_2481244D8();
      result = sub_248124D88();
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

uint64_t sub_2480F25C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_248124408();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  result = sub_248124808();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_2480F3904(&qword_27EE87C20, MEMORY[0x277D854C0], MEMORY[0x277D854D0]);
      result = sub_248124438();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

unint64_t sub_2480F29A4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_248124B38())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2480F2A5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_2480F3904(v23, v24, v25);
      v19 = sub_248124468();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

void *sub_2480F2C24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C58, &qword_248126198);
  v2 = *v0;
  v3 = sub_2481247F8();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_2480F2D8C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_2481247F8();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v6;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

uint64_t sub_2480F3034(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2481247E8();
  }

  return sub_248124708();
}

uint64_t sub_2480F3098(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2481247E8();
LABEL_9:
  result = sub_248124708();
  *v2 = result;
  return result;
}

unint64_t sub_2480F3138(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_2480F31F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_2481247E8();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_2481247E8();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2480F32FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_2481247E8();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v9)
  {
    v12 = sub_2481247E8();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (!v13)
  {
    sub_2480F3098(result, 1);
    return sub_2480F31F8(v7, v6, 0, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_2480F33D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C70, &unk_2481261A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C60, &qword_2481261A0);
    v7 = sub_248124818();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2480F394C(v9, v5, &qword_27EE87C70, &unk_2481261A8);
      result = sub_2480F1D2C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2481242C8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_2480F35C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C58, &qword_248126198);
    v3 = sub_248124818();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2480F1E00(v5, v6);
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

unint64_t sub_2480F36BC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = sub_248124818();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_2480F394C(v16, v12, a2, v27);
      result = sub_2480F1E78(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = sub_248124408();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
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

uint64_t sub_2480F389C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2480F3904(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2480F394C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2480F39B8()
{
  v0 = sub_248124408();
  __swift_allocate_value_buffer(v0, qword_27EE8AC48);
  __swift_project_value_buffer(v0, qword_27EE8AC48);
  return MEMORY[0x24C1C6B80](0xD00000000000001FLL, 0x8000000248128D40);
}

uint64_t sub_2480F3A1C()
{
  v0 = sub_248124408();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27EE8AC60);
  __swift_project_value_buffer(v0, qword_27EE8AC60);
  if (qword_27EE87990 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27EE8AC48);
  (*(v1 + 16))(v4, v5, v0);
  return sub_2481243F8();
}

uint64_t sub_2480F3B50()
{
  v0 = sub_248124408();
  __swift_allocate_value_buffer(v0, qword_27EE8AC78);
  __swift_project_value_buffer(v0, qword_27EE8AC78);
  return MEMORY[0x24C1C6B80](0xD00000000000001FLL, 0x8000000248128D00);
}

uint64_t sub_2480F3BB4()
{
  v0 = sub_248124408();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27EE8AC90);
  __swift_project_value_buffer(v0, qword_27EE8AC90);
  if (qword_27EE879A0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27EE8AC78);
  (*(v1 + 16))(v4, v5, v0);
  return sub_2481243F8();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2480F3D4C()
{
  v0 = sub_248124408();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27EE8ACA8);
  __swift_project_value_buffer(v0, qword_27EE8ACA8);
  if (qword_27EE879A0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27EE8AC78);
  (*(v1 + 16))(v4, v5, v0);
  return sub_2481243F8();
}

uint64_t sub_2480F3E90()
{
  v0 = sub_248124408();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27EE8ACC0);
  __swift_project_value_buffer(v0, qword_27EE8ACC0);
  if (qword_27EE87990 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27EE8AC48);
  (*(v1 + 16))(v4, v5, v0);
  return sub_2481243F8();
}

uint64_t sub_2480F3FCC()
{
  v0 = sub_248124408();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27EE8ACD8);
  __swift_project_value_buffer(v0, qword_27EE8ACD8);
  if (qword_27EE879B0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27EE8ACA8);
  (*(v1 + 16))(v4, v5, v0);
  return sub_2481243F8();
}

uint64_t sub_2480F4108()
{
  v0 = sub_248124408();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27EE8ACF0);
  __swift_project_value_buffer(v0, qword_27EE8ACF0);
  if (qword_27EE87998 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27EE8AC60);
  (*(v1 + 16))(v4, v5, v0);
  return sub_2481243F8();
}

uint64_t sub_2480F423C()
{
  v0 = sub_248124408();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27EE8AD08);
  __swift_project_value_buffer(v0, qword_27EE8AD08);
  if (qword_27EE87998 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27EE8AC60);
  (*(v1 + 16))(v4, v5, v0);
  return sub_2481243F8();
}

uint64_t sub_2480F4370()
{
  v0 = sub_248124408();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27EE8AD20);
  __swift_project_value_buffer(v0, qword_27EE8AD20);
  if (qword_27EE879A8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27EE8AC90);
  (*(v1 + 16))(v4, v5, v0);
  return sub_2481243F8();
}

uint64_t sub_2480F44A4()
{
  v0 = sub_248124408();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27EE8AD38);
  __swift_project_value_buffer(v0, qword_27EE8AD38);
  if (qword_27EE879A8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27EE8AC90);
  (*(v1 + 16))(v4, v5, v0);
  return sub_2481243F8();
}

uint64_t sub_2480F45D8()
{
  v0 = sub_248124408();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27EE8AD50);
  __swift_project_value_buffer(v0, qword_27EE8AD50);
  if (qword_27EE879B0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27EE8ACA8);
  (*(v1 + 16))(v4, v5, v0);
  return sub_2481243F8();
}

uint64_t sub_2480F470C()
{
  v0 = sub_248124408();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27EE8AD68);
  __swift_project_value_buffer(v0, qword_27EE8AD68);
  if (qword_27EE879B0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27EE8ACA8);
  (*(v1 + 16))(v4, v5, v0);
  return sub_2481243F8();
}

uint64_t sub_2480F4840()
{
  if (qword_27EE879B8 != -1)
  {
    swift_once();
  }

  v0 = sub_248124408();
  v1 = __swift_project_value_buffer(v0, qword_27EE8ACC0);
  return sub_2480E275C(v1) & 1;
}

uint64_t sub_2480F49BC@<X0>(uint64_t a1@<X8>)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2481240D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881B0, &qword_248126138);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - v7;
  v21[0] = 37;
  v9 = sub_248124578();
  *(v9 + 16) = 37;
  *(v9 + 48) = 0u;
  *(v9 + 61) = 0;
  *(v9 + 32) = 0u;
  if (sysctlbyname("kern.bootsessionuuid", (v9 + 32), v21, 0, 0))
  {
    v10 = MEMORY[0x24C1C6B60]();
    v11 = sub_2481242D8();
    v12 = sub_248124628();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = v10;
      _os_log_impl(&dword_2480DF000, v11, v12, "sysctlbyname(kern.bootsessionuuid) failed: %{darwin.errno}d", v13, 8u);
      MEMORY[0x24C1C7B90](v13, -1, -1);
    }

    result = sub_248124398();
    if ((result & 0x100000000) == 0)
    {
      v15 = result;

      v20[3] = v15;
      sub_24810BD34(MEMORY[0x277D84F90]);
      sub_2480F52CC();
      sub_2481241C8();
      sub_2481240C8();
      (*(v3 + 8))(v5, v2);
      return swift_willThrow();
    }

    __break(1u);
  }

  else
  {

    sub_2480F5324(v16, v17);

    sub_248124268();

    v18 = sub_2481242C8();
    v19 = *(v18 - 8);
    result = (*(v19 + 48))(v8, 1, v18);
    if (result != 1)
    {

      return (*(v19 + 32))(a1, v8, v18);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2480F4D10()
{
  v1 = OBJC_IVAR____TtC23DarwinDirectoryInternal14SysctlProvider_logger;
  v2 = sub_2481242F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for SysctlProvider(uint64_t a1)
{
  result = qword_27EE87C78;
  if (!qword_27EE87C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2480F4E00(uint64_t a1)
{
  result = sub_2481242F8();
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

char *sub_2480F4E90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C90, &qword_248126248);
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

void *sub_2480F4FEC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2480F51C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C88, &qword_248126240);
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

unint64_t sub_2480F52CC()
{
  result = qword_27EE87A20;
  if (!qword_27EE87A20)
  {
    sub_2481240D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87A20);
  }

  return result;
}

uint64_t sub_2480F5324(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return MEMORY[0x2821FBD68](a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return MEMORY[0x2821FBD68](a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return MEMORY[0x2821FBD68](a1, a2);
}

uint64_t sub_2480F5374()
{

  v1 = OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid;
  v2 = sub_2481242C8();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  v3(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID, v2);

  return v0;
}

uint64_t sub_2480F5468()
{
  sub_2480F5374();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2480F54E8(uint64_t a1)
{
  result = sub_2481242C8();
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

uint64_t sub_2480F55A8()
{

  v1 = OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid;
  v2 = sub_2481242C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2480F569C(uint64_t a1)
{
  result = sub_2481242C8();
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

uint64_t sub_2480F5758(uint64_t a1)
{
  v3 = sub_2481242C8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = sub_2481240D8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != 3)
  {
    v40 = 22;
    sub_24810BD34(MEMORY[0x277D84F90]);
    sub_2480F52CC();
    sub_2481241C8();
    sub_2481240C8();
    (*(v11 + 8))(v13, v10);
    swift_willThrow();
    return a1;
  }

  v38 = v1;
  v39 = *(a1 + 24);
  v14 = *(a1 + 40);
  v35 = *(a1 + 32);
  v15 = *(v4 + 16);
  v15(v9, a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_uuid, v3);
  v16 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_fullName + 8);
  v34 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_fullName);
  v37 = v16;
  v17 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_homeDirectory + 8);
  v33 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_homeDirectory);
  v36 = v17;
  result = (v15)(v7, a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_primaryGroupUUID, v3);
  v19 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_aliases);
  if (v19)
  {
    v32 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_memberships);
    v20 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_shell + 8);
    v30 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_shell);
    v31 = v20;
    type metadata accessor for UserRecord(0);
    a1 = swift_allocObject();
    *(a1 + 16) = v39;
    *(a1 + 24) = v35;
    *(a1 + 32) = v14;
    v21 = *(v4 + 32);
    v21(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid, v9, v3);
    v22 = (a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName);
    v23 = v33;
    v24 = v36;
    v25 = v37;
    *v22 = v34;
    v22[1] = v25;
    v26 = (a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory);
    *v26 = v23;
    v26[1] = v24;
    v21(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID, v7, v3);
    v27 = (a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell);
    v28 = v31;
    *v27 = v30;
    v27[1] = v28;
    *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships) = v32;
    *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases) = v19;

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2480F5B0C(uint64_t a1)
{
  v3 = sub_2481242C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2481240D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != 3)
  {
    v21 = 22;
    sub_24810BD34(MEMORY[0x277D84F90]);
    sub_2480F52CC();
    sub_2481241C8();
    sub_2481240C8();
    (*(v8 + 8))(v10, v7);
    swift_willThrow();
    return a1;
  }

  v11 = *(a1 + 24);
  v12 = *(a1 + 40);
  v20 = *(a1 + 32);
  result = (*(v4 + 16))(v6, a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_uuid, v3);
  v14 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups);
  if (v14)
  {
    v19 = v1;
    v15 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases);
    if (v15)
    {
      v16 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_fullName + 8);
      v18 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_fullName);
      type metadata accessor for GroupRecord(0);
      a1 = swift_allocObject();
      *(a1 + 32) = v11;
      *(a1 + 40) = v20;
      *(a1 + 48) = v12;
      (*(v4 + 32))(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v6, v3);
      *(a1 + 16) = v18;
      *(a1 + 24) = v16;
      *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_nestedGroups) = v14;
      *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases) = v15;

      return a1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2480F5DD4(uint64_t a1)
{
  v2 = sub_2481242C8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = *(a1 + 16);
  v10 = *(a1 + 32);
  v33 = *(a1 + 24);
  v11 = *(v3 + 16);
  v11(&v27 - v7, a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid, v2);
  v12 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName);
  v31 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName + 8);
  v32 = v12;
  v13 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory);
  v29 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory + 8);
  v30 = v13;
  v11(v6, a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID, v2);
  v14 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell);
  v27 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell + 8);
  v28 = v14;
  v15 = OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships;
  swift_beginAccess();
  v16 = *(a1 + v15);
  v17 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases);
  type metadata accessor for UserRecord(0);
  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  *(v18 + 24) = v33;
  *(v18 + 32) = v10;
  v19 = *(v3 + 32);
  v19(v18 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid, v8, v2);
  v20 = (v18 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName);
  v21 = v31;
  *v20 = v32;
  v20[1] = v21;
  v22 = (v18 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory);
  v23 = v29;
  *v22 = v30;
  v22[1] = v23;
  v19(v18 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID, v6, v2);
  v24 = (v18 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell);
  v25 = v27;
  *v24 = v28;
  v24[1] = v25;
  *(v18 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships) = v16;
  *(v18 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases) = v17;

  return v18;
}

uint64_t sub_2480F6060(unint64_t *a1, uint64_t a2)
{
  v4 = sub_2481242C8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v28 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v24 = a1;
  v10 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_28;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (result)
  {
    v12 = 0;
    v13 = *(a2 + 16);
    v26 = (v5 + 8);
    v27 = (v5 + 16);
    v22 = (v5 + 40);
    v23 = "99998888-7777-6666-5555-4444";
    v25 = result;
    while (2)
    {
      v29 = v10 + 8 * v12;
      v30 = v10 & 0xC000000000000001;
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x24C1C6EA0](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          break;
        }

        v14 = *(v10 + 8 * v12 + 32);
      }

      v31 = v12 + 1;
      v15 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_uuid;
      swift_beginAccess();
      (*v27)(v9, v14 + v15, v4);

      v16 = 0;
      do
      {
        if (v13 == v16)
        {
          result = (*v26)(v9, v4);
          goto LABEL_6;
        }

        v17 = v16 + 1;
        sub_2480FFF88(&qword_27EE87C68, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v18 = sub_248124468();
        v16 = v17;
      }

      while ((v18 & 1) == 0);
      (*v26)(v9, v4);
      if (v30)
      {
        v19 = MEMORY[0x24C1C6EA0](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v19 = *(v29 + 32);
      }

      sub_2480EB9B0(0xD00000000000001CLL, v23 | 0x8000000000000000, *(v19 + 16), v28);

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0)
      {
        v10 = sub_2480F39B4(v10);
      }

      if (v12 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v12 + 0x20);
        v21 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_uuid;
        swift_beginAccess();
        (*v22)(v20 + v21, v28, v4);
        result = swift_endAccess();
        *v24 = v10;
LABEL_6:
        v12 = v31;
        if (v31 == v25)
        {
          return result;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_2481247E8();
    if (result < 0)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_2480F63FC(unint64_t *a1, uint64_t a2)
{
  v4 = sub_2481242C8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v28 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v24 = a1;
  v10 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_28;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (result)
  {
    v12 = 0;
    v13 = *(a2 + 16);
    v26 = (v5 + 8);
    v27 = (v5 + 16);
    v22 = (v5 + 40);
    v23 = "ctoryInternal11GroupRecord";
    v25 = result;
    while (2)
    {
      v29 = v10 + 8 * v12;
      v30 = v10 & 0xC000000000000001;
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x24C1C6EA0](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          break;
        }

        v14 = *(v10 + 8 * v12 + 32);
      }

      v31 = v12 + 1;
      v15 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_uuid;
      swift_beginAccess();
      (*v27)(v9, v14 + v15, v4);

      v16 = 0;
      do
      {
        if (v13 == v16)
        {
          result = (*v26)(v9, v4);
          goto LABEL_6;
        }

        v17 = v16 + 1;
        sub_2480FFF88(&qword_27EE87C68, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v18 = sub_248124468();
        v16 = v17;
      }

      while ((v18 & 1) == 0);
      (*v26)(v9, v4);
      if (v30)
      {
        v19 = MEMORY[0x24C1C6EA0](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v19 = *(v29 + 32);
      }

      sub_2480EB9B0(0xD00000000000001CLL, v23 | 0x8000000000000000, *(v19 + 16), v28);

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0)
      {
        v10 = sub_2480F39B4(v10);
      }

      if (v12 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v12 + 0x20);
        v21 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_uuid;
        swift_beginAccess();
        (*v22)(v20 + v21, v28, v4);
        result = swift_endAccess();
        *v24 = v10;
LABEL_6:
        v12 = v31;
        if (v31 == v25)
        {
          return result;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_2481247E8();
    if (result < 0)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}