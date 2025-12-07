uint64_t storeEnumTagSinglePayload for UserRecordFile.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24810940C()
{
  result = qword_27EE87F38;
  if (!qword_27EE87F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87F38);
  }

  return result;
}

unint64_t sub_248109464()
{
  result = qword_27EE87F40;
  if (!qword_27EE87F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87F40);
  }

  return result;
}

unint64_t sub_2481094BC()
{
  result = qword_27EE87F48;
  if (!qword_27EE87F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87F48);
  }

  return result;
}

unint64_t sub_248109514()
{
  result = qword_27EE87F50;
  if (!qword_27EE87F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87F50);
  }

  return result;
}

unint64_t sub_24810956C()
{
  result = qword_27EE87F58;
  if (!qword_27EE87F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87F58);
  }

  return result;
}

unint64_t sub_2481095C4()
{
  result = qword_27EE87F60;
  if (!qword_27EE87F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87F60);
  }

  return result;
}

unint64_t sub_248109618(uint64_t a1, uint64_t a2)
{
  v2 = sub_248124828();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_248109664(uint64_t a1, uint64_t a2)
{
  v2 = sub_248124828();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

void sub_2481096B0(uint64_t a1)
{
  v47[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2481240D8();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F88, &qword_248126C08);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v39 - v5;
  v6 = sub_2481240B8();
  v43 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_248124408();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultManager];
  sub_2481243E8();
  v14 = sub_248124478();

  v47[0] = 0;
  v15 = [v13 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:v47];

  v16 = v47[0];
  if (!v15)
  {
    v26 = v47[0];
    v27 = sub_2481241E8();

    swift_willThrow();
    v47[0] = v27;
    MEMORY[0x24C1C7A20](v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
    if (swift_dynamicCast())
    {
      v28 = v43;
      v29 = v42;
      (*(v43 + 32))();
      v30 = sub_2481240A8();
      if (v30)
      {
        v46 = v30;
        v31 = v41;
        v32 = v45;
        v33 = swift_dynamicCast();
        v34 = v44;
        (*(v44 + 56))(v31, v33 ^ 1u, 1, v32);
      }

      else
      {
        v34 = v44;
        v32 = v45;
        v31 = v41;
        (*(v44 + 56))(v41, 1, 1, v45);
      }

      v35 = (*(v34 + 48))(v31, 1, v32);
      sub_24810BF44(v31);
      if (v35)
      {
        (*(v28 + 8))(v29, v6);
      }

      else
      {
        v36 = sub_2481240A8();
        if (!v36)
        {
          __break(1u);
          return;
        }

        v37 = v36;

        v46 = v37;
        v38 = v40;
        swift_dynamicCast();
        sub_2481240C8();
        swift_willThrow();
        (*(v28 + 8))(v29, v6);
        (*(v34 + 8))(v38, v32);
      }
    }

    return;
  }

  (*(v10 + 16))(v12, a1, v9);
  v17 = v16;
  v18 = sub_2481242D8();
  v19 = sub_248124618();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v47[0] = v21;
    *v20 = 136446210;
    sub_24810BE44(&qword_27EE87A10, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
    v22 = sub_248124938();
    v24 = v23;
    (*(v10 + 8))(v12, v9);
    v25 = sub_24810C31C(v22, v24, v47);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_2480DF000, v18, v19, "Created directory %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x24C1C7B90](v21, -1, -1);
    MEMORY[0x24C1C7B90](v20, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }
}

void sub_248109CC4(uint64_t a1)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2481240D8();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v44 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F88, &qword_248126C08);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = &v44 - v5;
  v6 = sub_2481240B8();
  v48 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  v11 = sub_248124408();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() defaultManager];
  sub_2481243E8();
  v16 = sub_248124478();

  v51[0] = 0;
  v17 = [v15 removeItemAtPath:v16 error:v51];

  v18 = v51[0];
  if (!v17)
  {
    v29 = v51[0];
    v30 = sub_2481241E8();

    swift_willThrow();
    v51[0] = v30;
    MEMORY[0x24C1C7A20](v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
    if (swift_dynamicCast())
    {
      v31 = v48;
      (*(v48 + 32))(v49, v10, v6);
      v32 = sub_2481240A8();
      if (v32)
      {
        v50 = v32;
        v33 = v45;
        v34 = v47;
        v35 = swift_dynamicCast();
        v36 = v46;
        (*(v46 + 56))(v33, v35 ^ 1u, 1, v34);
      }

      else
      {
        v33 = v45;
        v36 = v46;
        v34 = v47;
        (*(v46 + 56))(v45, 1, 1, v47);
      }

      v37 = (*(v36 + 48))(v33, 1, v34);
      sub_24810BF44(v33);
      if (!v37)
      {
        v38 = sub_2481240A8();
        if (v38)
        {
          v50 = v38;
          v39 = v44;
          swift_dynamicCast();
          sub_24810BE44(&qword_27EE87A20, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
          sub_2481241A8();
          v40 = *(v36 + 8);
          v40(v39, v34);
          v41 = sub_2481243A8();
          if (v41 == sub_2481243A8())
          {
            (*(v48 + 8))(v49, v6);

            return;
          }

          v42 = sub_2481240A8();
          if (v42)
          {
            v43 = v42;

            v50 = v43;
            swift_dynamicCast();
            sub_2481240C8();
            swift_willThrow();
            (*(v48 + 8))(v49, v6);
            v40(v39, v34);
            goto LABEL_16;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      (*(v31 + 8))(v49, v6);
    }

LABEL_16:

    return;
  }

  v19 = v12;
  (*(v12 + 16))(v14, a1, v11);
  v20 = v18;
  v21 = sub_2481242D8();
  v22 = sub_248124618();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v51[0] = v24;
    *v23 = 136446210;
    sub_24810BE44(&qword_27EE87A10, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
    v25 = sub_248124938();
    v27 = v26;
    (*(v19 + 8))(v14, v11);
    v28 = sub_24810C31C(v25, v27, v51);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_2480DF000, v21, v22, "Deleted %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x24C1C7B90](v24, -1, -1);
    MEMORY[0x24C1C7B90](v23, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }
}

void sub_24810A3BC(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v49 = a2;
  v48 = a1;
  v4 = sub_2481240D8();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F88, &qword_248126C08);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41 - v7;
  v9 = sub_2481240B8();
  v44 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = sub_248124408();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_248124208();
  v46 = *(v18 - 8);
  v47 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2481243E8();
  sub_2481241F8();

  v21 = v50;
  sub_248124258();
  if (v21)
  {
    v52 = v21;
    MEMORY[0x24C1C7A20](v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
    if (swift_dynamicCast())
    {
      (*(v44 + 32))(v45, v13, v9);
      v22 = sub_2481240A8();
      if (v22)
      {
        v51 = v22;
        v23 = v43;
        v24 = swift_dynamicCast();
        v25 = v42;
        (*(v42 + 56))(v8, v24 ^ 1u, 1, v23);
      }

      else
      {
        v25 = v42;
        v23 = v43;
        (*(v42 + 56))(v8, 1, 1, v43);
      }

      v36 = (*(v25 + 48))(v8, 1, v23);
      sub_24810BF44(v8);
      if (!v36)
      {
        v37 = v45;
        v38 = sub_2481240A8();
        if (!v38)
        {
          __break(1u);
          return;
        }

        v39 = v38;

        v51 = v39;
        v40 = v41;
        swift_dynamicCast();
        sub_2481240C8();
        swift_willThrow();
        (*(v44 + 8))(v37, v9);
        (*(v46 + 8))(v20, v47);
        (*(v25 + 8))(v40, v23);
        goto LABEL_13;
      }

      (*(v44 + 8))(v45, v9);
    }

    (*(v46 + 8))(v20, v47);
LABEL_13:

    return;
  }

  (*(v15 + 16))(v17, a3, v14);
  v26 = sub_2481242D8();
  v27 = sub_248124618();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v49 = v28;
    v50 = swift_slowAlloc();
    v52 = v50;
    *v28 = 136446210;
    sub_24810BE44(&qword_27EE87A10, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
    v29 = sub_248124938();
    v31 = v30;
    (*(v15 + 8))(v17, v14);
    v32 = sub_24810C31C(v29, v31, &v52);

    v33 = v49;
    *(v49 + 1) = v32;
    v34 = v33;
    _os_log_impl(&dword_2480DF000, v26, v27, "Wrote file %{public}s", v33, 0xCu);
    v35 = v50;
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x24C1C7B90](v35, -1, -1);
    MEMORY[0x24C1C7B90](v34, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v17, v14);
  }

  (*(v46 + 8))(v20, v47);
}

void sub_24810AA04(uint64_t a1, uint64_t a2)
{
  v5 = sub_2481240D8();
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5);
  v60 = &v57[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_248124408();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v57[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v57[-v13];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v57[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v57[-v18];
  v68 = 0;
  v64 = a2;
  v65 = &v68;
  v20 = sub_2481243C8();
  if (v68)
  {
    v67 = MEMORY[0x24C1C6B60](v20);
    v21 = *(v8 + 16);
    v21(v14, a1, v7);
    v21(v11, a2, v7);
    v22 = sub_2481242D8();
    v23 = sub_248124628();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v59 = v22;
      v25 = v24;
      v63 = swift_slowAlloc();
      v66 = v63;
      *v25 = 136446722;
      sub_24810BE44(&qword_27EE87A10, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v58 = v23;
      v26 = sub_248124938();
      v28 = v27;
      v29 = *(v8 + 8);
      v29(v14, v7);
      v30 = sub_24810C31C(v26, v28, &v66);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2082;
      v31 = sub_248124938();
      v33 = v32;
      v29(v11, v7);
      v34 = sub_24810C31C(v31, v33, &v66);

      *(v25 + 14) = v34;
      *(v25 + 22) = 1024;
      *(v25 + 24) = v67;
      v35 = v59;
      _os_log_impl(&dword_2480DF000, v59, v58, "renamex_np(%{public}s, %{public}s) failed: %{darwin.errno}d", v25, 0x1Cu);
      v36 = v63;
      swift_arrayDestroy();
      MEMORY[0x24C1C7B90](v36, -1, -1);
      MEMORY[0x24C1C7B90](v25, -1, -1);
    }

    else
    {

      v52 = *(v8 + 8);
      v52(v11, v7);
      v52(v14, v7);
    }

    v53 = sub_248124398();
    if ((v53 & 0x100000000) != 0)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v66) = v53;
      sub_24810BD34(MEMORY[0x277D84F90]);
      sub_24810BE44(&qword_27EE87A20, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
      v54 = v60;
      v55 = v62;
      sub_2481241C8();
      sub_2481240C8();
      (v61[1].isa)(v54, v55);
      swift_willThrow();
    }
  }

  else
  {
    v62 = v2;
    v37 = *(v8 + 16);
    v37(v19, a1, v7);
    v37(v17, a2, v7);
    v38 = sub_2481242D8();
    v39 = sub_248124618();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v66 = v63;
      *v40 = 136446466;
      sub_24810BE44(&qword_27EE87A10, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v61 = v38;
      LODWORD(v60) = v39;
      v41 = sub_248124938();
      v43 = v42;
      v44 = *(v8 + 8);
      v44(v19, v7);
      v45 = sub_24810C31C(v41, v43, &v66);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2082;
      v46 = sub_248124938();
      v48 = v47;
      v44(v17, v7);
      v49 = sub_24810C31C(v46, v48, &v66);

      *(v40 + 14) = v49;
      v50 = v61;
      _os_log_impl(&dword_2480DF000, v61, v60, "Atomically swapped %{public}s <-> %{public}s", v40, 0x16u);
      v51 = v63;
      swift_arrayDestroy();
      MEMORY[0x24C1C7B90](v51, -1, -1);
      MEMORY[0x24C1C7B90](v40, -1, -1);
    }

    else
    {

      v56 = *(v8 + 8);
      v56(v17, v7);
      v56(v19, v7);
    }
  }
}

uint64_t sub_24810B0F8()
{
  v1 = OBJC_IVAR____TtC23DarwinDirectoryInternal18FilesystemProvider_logger;
  v2 = sub_2481242F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for FilesystemProvider(uint64_t a1)
{
  result = qword_27EE87F68;
  if (!qword_27EE87F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_24810B240()
{
  v60 = *MEMORY[0x277D85DE8];
  v0 = sub_2481240D8();
  v54 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v51 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F88, &qword_248126C08);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_2481240B8();
  v55 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v51 - v10;
  v12 = [objc_opt_self() defaultManager];
  sub_2481243E8();
  v13 = sub_248124478();

  v58 = 0;
  v14 = [v12 contentsOfDirectoryAtPath:v13 error:&v58];

  v15 = v58;
  if (v14)
  {
    v2 = sub_248124548();
    v16 = v15;

    v17 = *(v2 + 2);
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      while (1)
      {
        v20 = *&v2[v18 + 32];
        v21 = *&v2[v18 + 40];
        v22 = v20 == 46 && v21 == 0xE100000000000000;
        if (v22 || (sub_248124B38() & 1) != 0)
        {
          break;
        }

        v23 = v20 == 11822 && v21 == 0xE200000000000000;
        if (v23 || (sub_248124B38() & 1) != 0)
        {
          break;
        }

        ++v19;
        v18 += 16;
        if (v17 == v19)
        {
          goto LABEL_15;
        }
      }

      v31 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
      }

      if (v31 != v17)
      {
        while (1)
        {
          v35 = *(v2 + 2);
          if (v31 >= v35)
          {
            break;
          }

          v36 = *&v2[v18 + 48];
          v37 = *&v2[v18 + 56];
          v38 = v36 == 46 && v37 == 0xE100000000000000;
          if (!v38 && (sub_248124B38() & 1) == 0)
          {
            v39 = v36 == 11822 && v37 == 0xE200000000000000;
            if (!v39 && (sub_248124B38() & 1) == 0)
            {
              if (v31 != v19)
              {
                if (v19 >= v35)
                {
                  goto LABEL_63;
                }

                v40 = &v2[16 * v19 + 32];
                v42 = *v40;
                v41 = *(v40 + 1);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v2 = sub_2480F3008(v2);
                }

                v43 = &v2[16 * v19];
                *(v43 + 4) = v36;
                *(v43 + 5) = v37;

                if (v31 >= *(v2 + 2))
                {
                  goto LABEL_64;
                }

                v44 = &v2[v18];
                *(v44 + 6) = v42;
                *(v44 + 7) = v41;
              }

              ++v19;
            }
          }

          ++v31;
          v18 += 16;
          if (v31 == *(v2 + 2))
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_59;
      }
    }

    else
    {
LABEL_15:
      v19 = v17;
    }

LABEL_21:
    v32 = *(v2 + 2);
    if (v19 <= v32)
    {
      if ((v19 & 0x8000000000000000) == 0)
      {
        if (!__OFADD__(v32, v19 - v32))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v59 = v2;
          if (!isUniquelyReferenced_nonNull_native || v19 > *(v2 + 3) >> 1)
          {
            if (v32 <= v19)
            {
              v34 = v19;
            }

            else
            {
              v34 = v32;
            }

            v2 = sub_2480F4E90(isUniquelyReferenced_nonNull_native, v34, 1, v2);
            v59 = v2;
          }

          sub_2480F3138(v19, v32, 0);
          return v2;
        }

        goto LABEL_61;
      }

LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v52 = v0;
  v53 = v9;
  v24 = v54;
  v25 = v58;
  v26 = sub_2481241E8();

  swift_willThrow();
  v58 = v26;
  MEMORY[0x24C1C7A20](v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
  if (!swift_dynamicCast())
  {
LABEL_56:

    return v2;
  }

  v56 = v26;
  (*(v55 + 32))(v53, v11, v6);
  v27 = sub_2481240A8();
  if (v27)
  {
    v57 = v27;
    v28 = v52;
    v29 = swift_dynamicCast();
    v30 = v24;
    (*(v24 + 56))(v5, v29 ^ 1u, 1, v28);
  }

  else
  {
    v30 = v24;
    v28 = v52;
    (*(v24 + 56))(v5, 1, 1, v52);
  }

  v45 = (*(v30 + 48))(v5, 1, v28);
  sub_24810BF44(v5);
  v46 = v55;
  if (v45)
  {
    (*(v55 + 8))(v53, v6);
    goto LABEL_56;
  }

  v47 = v53;
  result = sub_2481240A8();
  if (result)
  {
    v49 = result;

    v57 = v49;
    v50 = v52;
    swift_dynamicCast();
    sub_2481240C8();
    swift_willThrow();
    (*(v46 + 8))(v47, v6);
    (*(v30 + 8))(v2, v50);
    goto LABEL_56;
  }

  __break(1u);
  return result;
}

uint64_t sub_24810B8B4()
{
  v1 = sub_2481240D8();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x28223BE20](v1);
  v28 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F88, &qword_248126C08);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v27 - v4;
  v6 = sub_2481240B8();
  v31 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v27 - v10;
  v12 = sub_248124208();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2481243E8();
  sub_2481241F8();

  v16 = sub_248124218();
  v32 = v17;
  if (!v0)
  {
    (*(v13 + 8))(v15, v12);
    return v16;
  }

  v34 = v0;
  MEMORY[0x24C1C7A20](v0);
  v27[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
  if (!swift_dynamicCast())
  {
    (*(v13 + 8))(v15, v12);
LABEL_13:

    return v16;
  }

  v27[0] = v16;
  (*(v31 + 32))(v9, v11, v6);
  v18 = sub_2481240A8();
  if (v18)
  {
    v33 = v18;
    v19 = v30;
    v20 = swift_dynamicCast();
    v21 = v29;
    (*(v29 + 56))(v5, v20 ^ 1u, 1, v19);
  }

  else
  {
    v21 = v29;
    v19 = v30;
    (*(v29 + 56))(v5, 1, 1, v30);
  }

  v22 = (*(v21 + 48))(v5, 1, v19);
  sub_24810BF44(v5);
  if (v22)
  {
    (*(v31 + 8))(v9, v6);
    (*(v13 + 8))(v15, v12);
LABEL_12:
    v16 = v27[0];
    goto LABEL_13;
  }

  result = sub_2481240A8();
  if (result)
  {
    v24 = result;

    v33 = v24;
    v25 = v28;
    v26 = v30;
    swift_dynamicCast();
    sub_2481240C8();
    swift_willThrow();
    (*(v31 + 8))(v9, v6);
    (*(v13 + 8))(v15, v12);
    (*(v29 + 8))(v25, v26);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_24810BD34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F78, &qword_248126BF8);
    v3 = sub_248124818();
    v4 = a1 + 32;

    while (1)
    {
      sub_24810BE8C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2480F1E00(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24810BEFC(&v15, (v3[7] + 32 * result));
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

uint64_t sub_24810BE44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24810BE8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F80, &qword_248126C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_24810BEFC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24810BF0C(char *a1)
{
  v2 = *(v1 + 16);
  result = renamex_np(*(v1 + 24), a1, 2u);
  *v2 = result;
  return result;
}

uint64_t sub_24810BF44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F88, &qword_248126C08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24810BFAC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2481244B8();
  v5 = notify_post((v4 + 32));

  v6 = sub_2481242D8();
  if (v5)
  {
    v7 = sub_248124628();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136446466;
      *(v8 + 4) = sub_24810C31C(a1, a2, &v14);
      *(v8 + 12) = 1024;
      *(v8 + 14) = v5;
      _os_log_impl(&dword_2480DF000, v6, v7, "notify_post(%{public}s) Failed: %u", v8, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C1C7B90](v9, -1, -1);
      MEMORY[0x24C1C7B90](v8, -1, -1);
    }

    if ((v5 & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      sub_24810C2C8();
      swift_allocError();
      *v10 = v5;
      swift_willThrow();
    }
  }

  else
  {
    v11 = sub_248124618();

    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_24810C31C(a1, a2, &v14);
      _os_log_impl(&dword_2480DF000, v6, v11, "Posted notification %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C1C7B90](v13, -1, -1);
      MEMORY[0x24C1C7B90](v12, -1, -1);
    }
  }
}

uint64_t sub_24810C1D8()
{
  v1 = OBJC_IVAR____TtC23DarwinDirectoryInternal20NotificationProvider_logger;
  v2 = sub_2481242F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for NotificationProvider(uint64_t a1)
{
  result = qword_27EE87F90;
  if (!qword_27EE87F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24810C2C8()
{
  result = qword_27EE87FA0;
  if (!qword_27EE87FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87FA0);
  }

  return result;
}

unint64_t sub_24810C31C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24810C3E8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24810C8C4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24810C3E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24810C4F4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_248124758();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_24810C4F4(uint64_t a1, unint64_t a2)
{
  v3 = sub_24810C540(a1, a2);
  sub_24810C670(&unk_285A48D90);
  return v3;
}

void *sub_24810C540(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24810C75C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_248124758();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_248124508();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24810C75C(v10, 0);
        result = sub_2481246C8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24810C670(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24810C7D0(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24810C75C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87FA8, qword_248126C48);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24810C7D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87FA8, qword_248126C48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_24810C8C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24810C920(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x724764657473656ELL;
  v5 = 0xEC0000007370756FLL;
  if (a1 != 5)
  {
    v4 = 0x73657361696C61;
    v5 = 0xE700000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1145656661;
  if (a1 != 3)
  {
    v7 = 0x656D614E6C6C7566;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE200000000000000;
  v9 = 17481;
  if (a1 != 1)
  {
    v9 = 1701667182;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E6F6973726576;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE200000000000000;
        if (v10 != 17481)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE400000000000000;
        if (v10 != 1701667182)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E6F6973726576)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEC0000007370756FLL;
      if (v10 != 0x724764657473656ELL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x73657361696C61)
      {
LABEL_39:
        v13 = sub_248124B38();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE400000000000000;
    if (v10 != 1145656661)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x656D614E6C6C7566)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_24810CB28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00734449555565;
  v3 = 0xD000000000000013;
  v4 = a1;
  if (a1 > 1u)
  {
    v5 = 0xD000000000000022;
    if (v4 == 2)
    {
      v5 = 0xD000000000000024;
      v6 = 0x8000000248128790;
    }

    else
    {
      v6 = 0x80000002481287C0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0x7A696D796E6F6E61;
    }

    if (v4)
    {
      v6 = 0x8000000248128770;
    }

    else
    {
      v6 = 0xEE00734449555565;
    }
  }

  v7 = 0xD000000000000024;
  v8 = 0x80000002481287C0;
  if (a2 == 2)
  {
    v8 = 0x8000000248128790;
  }

  else
  {
    v7 = 0xD000000000000022;
  }

  if (a2)
  {
    v2 = 0x8000000248128770;
  }

  else
  {
    v3 = 0x7A696D796E6F6E61;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_248124B38();
  }

  return v11 & 1;
}

uint64_t sub_24810CC5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF44495555746F6FLL;
  if (a1 <= 3u)
  {
    v3 = 0x8000000248128660;
    v9 = 0xD000000000000010;
    if (a1 == 2)
    {
      v9 = 0x4279654B73726464;
      v3 = 0xEF44495555746F6FLL;
    }

    v6 = 0x8000000248128610;
    v10 = 0xD000000000000015;
    if (a1)
    {
      v10 = 0xD000000000000016;
      v6 = 0x8000000248128630;
    }

    v7 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v8 = v10;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0x80000002481286C0;
    v4 = 0xD000000000000011;
    v5 = 0x80000002481286E0;
    if (a1 != 7)
    {
      v5 = 0x8000000248128700;
    }

    if (a1 != 6)
    {
      v4 = 0xD000000000000013;
      v3 = v5;
    }

    v6 = 0x8000000248128680;
    if (a1 != 4)
    {
      v6 = 0x80000002481286A0;
    }

    v7 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v8 = 0xD000000000000012;
    }

    else
    {
      v8 = v4;
    }
  }

  if (v7)
  {
    v11 = v6;
  }

  else
  {
    v11 = v3;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        if (v8 != 0x4279654B73726464)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v2 = 0x8000000248128660;
        if (v8 != 0xD000000000000010)
        {
          goto LABEL_48;
        }
      }
    }

    else if (a2)
    {
      v2 = 0x8000000248128630;
      if (v8 != 0xD000000000000016)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v2 = 0x8000000248128610;
      if (v8 != 0xD000000000000015)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = "ddrsKeyUserNameMap";
    }

    else
    {
      v13 = "ddrsKeyUserUUIDMap";
    }

    v2 = (v13 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000012)
    {
      goto LABEL_48;
    }
  }

  else if (a2 == 6)
  {
    v2 = 0x80000002481286C0;
    if (v8 != 0xD000000000000011)
    {
      goto LABEL_48;
    }
  }

  else
  {
    if (a2 == 7)
    {
      v12 = "ddrsKeyGroupNameMap";
    }

    else
    {
      v12 = "ddrsKeyGroupUUIDMap";
    }

    v2 = (v12 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000013)
    {
      goto LABEL_48;
    }
  }

  if (v11 != v2)
  {
LABEL_48:
    v14 = sub_248124B38();
    goto LABEL_49;
  }

  v14 = 1;
LABEL_49:

  return v14 & 1;
}

uint64_t sub_24810CEF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1701667182;
    }

    else
    {
      v3 = 17481;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE400000000000000;
    v3 = 1145656661;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x614E7265626D656DLL;
    }

    else
    {
      v3 = 0x6C626174754D7369;
    }

    if (v2 == 3)
    {
      v4 = 0xEB0000000073656DLL;
    }

    else
    {
      v4 = 0xE900000000000065;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 1701667182;
    }

    else
    {
      v6 = 17481;
    }

    if (a2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE400000000000000;
    if (v3 != 1145656661)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEB0000000073656DLL;
    if (v3 != 0x614E7265626D656DLL)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE900000000000065;
    if (v3 != 0x6C626174754D7369)
    {
LABEL_34:
      v7 = sub_248124B38();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_24810D07C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 17481;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C656873;
  if (a1 != 6)
  {
    v6 = 0x6C626174754D7369;
    v5 = 0xE900000000000065;
  }

  v7 = 0x65726944656D6F68;
  v8 = 0xED000079726F7463;
  if (a1 != 4)
  {
    v7 = 0x477972616D697270;
    v8 = 0xEE00444970756F72;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE400000000000000;
  v10 = 1145656661;
  if (a1 != 2)
  {
    v10 = 0x656D614E6C6C7566;
    v9 = 0xE800000000000000;
  }

  if (a1)
  {
    v4 = 1701667182;
    v3 = 0xE400000000000000;
  }

  if (a1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x6C6C656873)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v13 = 0xE900000000000065;
        if (v11 != 0x6C626174754D7369)
        {
LABEL_43:
          v14 = sub_248124B38();
          goto LABEL_44;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xED000079726F7463;
      if (v11 != 0x65726944656D6F68)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v13 = 0xEE00444970756F72;
      if (v11 != 0x477972616D697270)
      {
        goto LABEL_43;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1145656661)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x656D614E6C6C7566)
      {
        goto LABEL_43;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE400000000000000;
    if (v11 != 1701667182)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v13 = 0xE200000000000000;
    if (v11 != 17481)
    {
      goto LABEL_43;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_43;
  }

  v14 = 1;
LABEL_44:

  return v14 & 1;
}

uint64_t sub_24810D2FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a3;
  v16 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87FC8, &qword_248126CE8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24810DEC8();
  sub_248124DA8();
  LOBYTE(v18) = 0;
  sub_2481248D8();
  if (!v5)
  {
    v12 = v16;
    v18 = v15;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87ED8, &qword_248126900);
    sub_24810DF1C(&qword_27EE87F00, &qword_27EE87AE8, MEMORY[0x277CC95F8], MEMORY[0x277D83B50]);
    sub_2481248F8();
    v18 = a4;
    v17 = 2;
    sub_2481248F8();
    v18 = v12;
    v17 = 3;
    sub_2481248F8();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24810D550()
{
  sub_248124D58();
  sub_2481244D8();

  return sub_248124D88();
}

uint64_t sub_24810D62C(uint64_t a1)
{
  sub_2481244D8();
}

uint64_t sub_24810D6F4(uint64_t a1)
{
  sub_248124D58();
  sub_2481244D8();

  return sub_248124D88();
}

unint64_t sub_24810D7CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24810DBA8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24810D7FC(unint64_t *a1@<X8>)
{
  v2 = 0xEE00734449555565;
  v3 = 0x7A696D796E6F6E61;
  v4 = 0x8000000248128790;
  v5 = 0xD000000000000022;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000024;
  }

  else
  {
    v4 = 0x80000002481287C0;
  }

  if (*v1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x8000000248128770;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_24810D894()
{
  v1 = 0x7A696D796E6F6E61;
  v2 = 0xD000000000000022;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000024;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24810D928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24810DBA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24810D95C(uint64_t a1)
{
  v2 = sub_24810DEC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24810D998(uint64_t a1)
{
  v2 = sub_24810DEC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24810D9D4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_24810DBF4(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t sub_24810DA30(uint64_t a1)
{
  sub_248124198();
  swift_allocObject();
  sub_248124188();
  sub_24810DB2C();
  v2 = sub_248124178();
  if (v1)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v3 = v2;

    return v3;
  }

  return result;
}

unint64_t sub_24810DB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_24810DB2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24810DB2C()
{
  result = qword_27EE87FB0;
  if (!qword_27EE87FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87FB0);
  }

  return result;
}

unint64_t sub_24810DB80(uint64_t a1)
{
  result = sub_2480E33A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24810DBA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_248124828();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24810DBF4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87FB8, &unk_248126CD8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24810DEC8();
  sub_248124D98();
  LOBYTE(v10) = 0;
  v6 = sub_248124858();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87ED8, &qword_248126900);
  v9 = 1;
  sub_24810DF1C(&qword_27EE87EE0, &qword_27EE87B10, MEMORY[0x277CC9618], MEMORY[0x277D83B70]);
  sub_248124878();
  v9 = 2;
  sub_248124878();
  v9 = 3;
  v8 = 0;
  sub_248124878();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6 & 1;
}

unint64_t sub_24810DEC8()
{
  result = qword_27EE87FC0;
  if (!qword_27EE87FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87FC0);
  }

  return result;
}

uint64_t sub_24810DF1C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE87ED8, &qword_248126900);
    sub_24810DFA4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24810DFA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2481242C8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Configuration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Configuration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24810E144(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24810E18C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_24810E1E0()
{
  result = qword_27EE87FD0;
  if (!qword_27EE87FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87FD0);
  }

  return result;
}

unint64_t sub_24810E238()
{
  result = qword_27EE87FD8;
  if (!qword_27EE87FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87FD8);
  }

  return result;
}

unint64_t sub_24810E290()
{
  result = qword_27EE87FE0;
  if (!qword_27EE87FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87FE0);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24810E2F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_24810E340(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24810E394()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24810E3C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_24810E3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_248124938();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_24810E440(uint64_t a1)
{
  v2 = sub_24810E568();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24810E47C(uint64_t a1)
{
  v2 = sub_24810E568();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24810E4BC()
{
  result = qword_27EE88050;
  if (!qword_27EE88050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE88050);
  }

  return result;
}

unint64_t sub_24810E514()
{
  result = qword_27EE88058;
  if (!qword_27EE88058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE88058);
  }

  return result;
}

unint64_t sub_24810E568()
{
  result = qword_27EE88060;
  if (!qword_27EE88060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE88060);
  }

  return result;
}

uint64_t sub_24810E5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a3;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _XPCEncoder();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D84F90];
  v11[2] = MEMORY[0x277D84F90];
  v11[3] = sub_248111B20(v12);
  v11[4] = 0;
  v13 = *(v7 + 16);
  v13(v9, a1, a2);
  v23 = v10;
  v24 = sub_248112250(&qword_27EE880D0, type metadata accessor for _XPCEncoder, &unk_2481270C0);
  v21 = v11;

  sub_248124428();
  if (v3)
  {

    __swift_destroy_boxed_opaque_existential_0(&v21);
    (*(v7 + 8))(v9, a2);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v21);
    v4 = v11[4];
    v14 = *(v7 + 8);
    swift_unknownObjectRetain();
    v14(v9, a2);
    if (!v4)
    {
      v4 = sub_248124748();
      swift_allocError();
      v17 = v16;
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F28, &unk_248126F70) + 48);
      v17[3] = a2;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
      v13(boxed_opaque_existential_1, a1, a2);
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_2481246E8();

      v21 = 0x6576656C2D706F54;
      v22 = 0xEA0000000000206CLL;
      v19 = sub_248124DF8();
      MEMORY[0x24C1C6C90](v19);

      MEMORY[0x24C1C6C90](0xD00000000000001BLL, 0x8000000248129320);
      sub_248124718();
      (*(*(v4 - 8) + 104))(v17, *MEMORY[0x277D841A8], v4);
      swift_willThrow();
    }
  }

  return v4;
}

uint64_t sub_24810E8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 32);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = swift_unknownObjectRetain();
  v8 = MEMORY[0x24C1C7CF0](v7);
  v9 = v6;
  if (v8 != sub_248124388())
  {
    __break(1u);
LABEL_4:
    v9 = xpc_dictionary_create(0, 0, 0);
    *(v3 + 32) = v9;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
  }

  v10 = *(v3 + 16);
  swift_unknownObjectRetain();

  sub_24810EA64(v3, v10, v9);
  type metadata accessor for _XPCKeyedEncodingContainer(0, a2, a3, v11);

  swift_unknownObjectRetain();

  swift_getWitnessTable();
  sub_248124918();

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_24810EA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x24C1C7CF0](a3);
  if (v4 == sub_248124388())
  {
    return a1;
  }

  result = sub_2481247D8();
  __break(1u);
  return result;
}

uint64_t sub_24810EB0C@<X0>(void *a2@<X8>)
{
  v4 = *(v2 + 32);
  if (v4)
  {
    v5 = swift_unknownObjectRetain();
    v6 = MEMORY[0x24C1C7CF0](v5);
    v7 = v4;
    if (v6 == sub_248124338())
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = xpc_array_create(0, 0);
  *(v2 + 32) = v7;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
LABEL_5:
  v8 = *(v2 + 16);
  swift_unknownObjectRetain();

  v9 = MEMORY[0x24C1C7CF0](v7);
  if (v9 == sub_248124338())
  {
    a2[3] = &type metadata for _XPCUnkeyedEncodingContainer;
    a2[4] = sub_248112020();

    result = swift_unknownObjectRelease();
    *a2 = v2;
    a2[1] = v7;
    a2[2] = v8;
  }

  else
  {
    result = sub_2481247D8();
    __break(1u);
  }

  return result;
}

void sub_24810EC94(void *a1@<X8>)
{
  v3 = *v1;
  if (*(*v1 + 32))
  {
    __break(1u);
  }

  else
  {
    a1[3] = type metadata accessor for _XPCEncoder();
    a1[4] = sub_248112250(&qword_27EE880D8, type metadata accessor for _XPCEncoder, &unk_248127008);
    *a1 = v3;
  }
}

uint64_t sub_24810ED24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[4] = a3;
  v10[3] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  v8 = sub_248111D50(v10);
  result = __swift_destroy_boxed_opaque_existential_0(v10);
  if (!v4)
  {
    *(v3 + 32) = v8;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24810EDD4()
{
  v1 = *v0;
  *(v1 + 32) = xpc_null_create();
  return swift_unknownObjectRelease();
}

uint64_t sub_24810EE10(char a1)
{
  v2 = *v1;
  *(v2 + 32) = xpc_BOOL_create(a1 & 1);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810EE50()
{
  v1 = *v0;
  v2 = sub_2481244B8();
  v3 = xpc_string_create((v2 + 32));

  *(v1 + 32) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_24810EEA8(double a1)
{
  v2 = *v1;
  *(v2 + 32) = xpc_double_create(a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810EEE4(float a1)
{
  v2 = *v1;
  *(v2 + 32) = xpc_double_create(a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810EF50(char a1)
{
  v2 = *v1;
  *(v2 + 32) = xpc_int64_create(a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810EF90(__int16 a1)
{
  v2 = *v1;
  *(v2 + 32) = xpc_int64_create(a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810EFD0(int a1)
{
  v2 = *v1;
  *(v2 + 32) = xpc_int64_create(a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810F054(unsigned __int8 a1)
{
  v2 = *v1;
  *(v2 + 32) = xpc_uint64_create(a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810F094(unsigned __int16 a1)
{
  v2 = *v1;
  *(v2 + 32) = xpc_uint64_create(a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810F0D4(uint64_t value)
{
  v2 = *v1;
  *(v2 + 32) = xpc_uint64_create(value);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810F114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *v4;
  *(v5 + 32) = a4(a1, a2, a3);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810F190(uint64_t a1, ValueMetadata *a2, unint64_t a3)
{
  v4 = v3;
  xarray = *(v3 + 8);
  count = xpc_array_get_count(xarray);
  *&v20 = 0x207865646E49;
  *(&v20 + 1) = 0xE600000000000000;
  v23 = count;
  v8 = sub_248124938();
  MEMORY[0x24C1C6C90](v8);

  v9 = *(v3 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_24811CFC0(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_24811CFC0((v10 > 1), v11 + 1, 1, v9);
  }

  v21 = &type metadata for XPCCodingKey;
  v22 = sub_24810E568();
  v12 = swift_allocObject();
  *&v20 = v12;
  *(v12 + 16) = 0x207865646E49;
  *(v12 + 24) = 0xE600000000000000;
  *(v12 + 32) = count;
  *(v12 + 40) = 0;
  v9[2] = v11 + 1;
  sub_248112238(&v20, &v9[5 * v11 + 4]);
  *(v4 + 16) = v9;
  v21 = a2;
  v22 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
  (*(a2[-1].Description + 2))(boxed_opaque_existential_1, a1, a2);
  v14 = sub_248111D50(&v20);
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_0(&v20);
  }

  else
  {
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_0(&v20);
    xpc_array_append_value(xarray, v15);
    swift_unknownObjectRelease();
  }

  return sub_24810F7DC(v4);
}

uint64_t sub_24810F378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = v3[1];
  count = xpc_array_get_count(v7);
  *&v20 = 0x207865646E49;
  *(&v20 + 1) = 0xE600000000000000;
  v24 = count;
  v9 = sub_248124938();
  MEMORY[0x24C1C6C90](v9);

  v10 = v3[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_24811CFC0(0, v10[2] + 1, 1, v10);
  }

  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_24811CFC0((v11 > 1), v12 + 1, 1, v10);
  }

  v22 = &type metadata for XPCCodingKey;
  v23 = sub_24810E568();
  v13 = swift_allocObject();
  *&v20 = v13;
  *(v13 + 16) = 0x207865646E49;
  *(v13 + 24) = 0xE600000000000000;
  *(v13 + 32) = count;
  *(v13 + 40) = 0;
  v10[2] = v12 + 1;
  sub_248112238(&v20, &v10[5 * v12 + 4]);
  v4[2] = v10;
  v14 = xpc_dictionary_create(0, 0, 0);
  xpc_array_append_value(v7, v14);
  v15 = *v4;

  swift_unknownObjectRetain();
  *&v20 = sub_24810EA64(v15, v10, v14);
  *(&v20 + 1) = v16;
  v21 = v17;
  type metadata accessor for _XPCKeyedEncodingContainer(0, a2, a3, v18);

  swift_unknownObjectRetain();

  swift_getWitnessTable();
  sub_248124918();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return sub_24810F7DC(v4);
}

uint64_t sub_24810F5C0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = v1[1];
  count = xpc_array_get_count(v4);
  *&v16 = 0x207865646E49;
  *(&v16 + 1) = 0xE600000000000000;
  v19 = count;
  v6 = sub_248124938();
  MEMORY[0x24C1C6C90](v6);

  v7 = v1[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_24811CFC0((v8 > 1), v9 + 1, 1, v7);
  }

  v17 = &type metadata for XPCCodingKey;
  v18 = sub_24810E568();
  v10 = swift_allocObject();
  *&v16 = v10;
  *(v10 + 16) = 0x207865646E49;
  *(v10 + 24) = 0xE600000000000000;
  *(v10 + 32) = count;
  *(v10 + 40) = 0;
  v7[2] = v9 + 1;
  sub_248112238(&v16, &v7[5 * v9 + 4]);
  v2[2] = v7;
  v11 = xpc_array_create(0, 0);
  xpc_array_append_value(v4, v11);
  v12 = *v2;

  v13 = swift_unknownObjectRetain();
  v14 = MEMORY[0x24C1C7CF0](v13);
  if (v14 == sub_248124338())
  {
    a1[3] = &type metadata for _XPCUnkeyedEncodingContainer;
    a1[4] = sub_248112020();
    swift_unknownObjectRelease();
    *a1 = v12;
    a1[1] = v11;
    a1[2] = v7;
    return sub_24810F7DC(v2);
  }

  else
  {
    result = sub_2481247D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24810F7DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_24811D210(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v1 = a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    result = __swift_destroy_boxed_opaque_existential_0(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(v1 + 16) = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_24810F85C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);

  xpc_array_get_count(v3);
  v4 = type metadata accessor for _XPCSuperUnkeyedEncoder();
  v5 = swift_allocObject();
  v6 = MEMORY[0x24C1C7CF0](v3);
  result = sub_248124338();
  if (v6 == result)
  {
    v8 = MEMORY[0x277D84F90];
    v5[2] = MEMORY[0x277D84F90];
    v9 = sub_248111B20(v8);

    v5[3] = v9;
    v5[4] = 0;
    a1[3] = v4;
    result = sub_248112250(&unk_27EE88180, type metadata accessor for _XPCSuperUnkeyedEncoder, &unk_2481270C0);
    a1[4] = result;
    *a1 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24810F93C()
{
  v1 = *(v0 + 8);
  v2 = xpc_null_create();
  xpc_array_append_value(v1, v2);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810F988(char a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_BOOL_create(a1 & 1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810F9D8()
{
  v1 = *(v0 + 8);
  v2 = sub_2481244B8();
  v3 = xpc_string_create((v2 + 32));

  xpc_array_append_value(v1, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810FA38(double a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_double_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810FA84(float a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_double_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810FB00(char a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_int64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810FB50(__int16 a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_int64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810FBA0(int a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_int64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810FC34(unsigned __int8 a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_uint64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810FC84(unsigned __int16 a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_uint64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810FCD4(uint64_t value)
{
  v2 = *(v1 + 8);
  v3 = xpc_uint64_create(value);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810FD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(v4 + 8);
  v6 = a4(a1, a2, a3);
  xpc_array_append_value(v5, v6);
  return swift_unknownObjectRelease();
}

uint64_t sub_2481100D0(void *a1, void *a2, uint64_t a3, void *a4)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_248124DB8();
  v6 = sub_2481244B8();

  xpc_dictionary_set_value(a4, (v6 + 32), a1);
}

uint64_t sub_24811015C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = xpc_null_create();
  v12 = *(a2 + 16);
  v10 = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, a1);
  sub_2481100D0(v6, v11, v8, v5);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_248110214(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 8);
  v7 = xpc_BOOL_create(a1 & 1);
  v13 = *(a3 + 16);
  v11 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a2);
  sub_2481100D0(v7, v12, v9, v6);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_2481102D0(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 8);
  v7 = xpc_int64_create(a1);
  v13 = *(a3 + 16);
  v11 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a2);
  sub_2481100D0(v7, v12, v9, v6);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_24811038C(__int16 a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 8);
  v7 = xpc_int64_create(a1);
  v13 = *(a3 + 16);
  v11 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a2);
  sub_2481100D0(v7, v12, v9, v6);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_248110448(int a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 8);
  v7 = xpc_int64_create(a1);
  v13 = *(a3 + 16);
  v11 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a2);
  sub_2481100D0(v7, v12, v9, v6);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_248110504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = *(v4 + 8);
  v8 = a4(a1);
  v14 = *(a3 + 16);
  v12 = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, a2);
  sub_2481100D0(v8, v13, v10, v7);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t sub_2481105C0(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 8);
  v7 = xpc_uint64_create(a1);
  v13 = *(a3 + 16);
  v11 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a2);
  sub_2481100D0(v7, v12, v9, v6);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_24811067C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 8);
  v7 = xpc_uint64_create(a1);
  v13 = *(a3 + 16);
  v11 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a2);
  sub_2481100D0(v7, v12, v9, v6);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_248110738(uint64_t value, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 8);
  v7 = xpc_uint64_create(value);
  v13 = *(a3 + 16);
  v11 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a2);
  sub_2481100D0(v7, v12, v9, v6);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_2481107F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 8);
  v8 = sub_2481244B8();
  v9 = xpc_string_create((v8 + 32));

  v15 = *(a4 + 16);
  v13 = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, a3);
  sub_2481100D0(v9, v14, v11, v7);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v14);
}

uint64_t sub_2481108C0(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(v3 + 8);
  v7 = xpc_double_create(a3);
  v13 = *(a2 + 16);
  v11 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a1);
  sub_2481100D0(v7, v12, v9, v6);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_248110978(uint64_t a1, uint64_t a2, float a3)
{
  v6 = *(v3 + 8);
  v7 = xpc_double_create(a3);
  v13 = *(a2 + 16);
  v11 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a1);
  sub_2481100D0(v7, v12, v9, v6);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_248110A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a1;
  v41 = a5;
  v37 = a4;
  v33 = a3;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = *(v7 + 16);
  v32 = v14;
  v13(&v31 - v11);
  v36 = v5;
  v15 = (v5 + 16);
  v16 = *(v5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_24811CFC0(0, v16[2] + 1, 1, v16);
    *v15 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_24811CFC0((v18 > 1), v19 + 1, 1, v16);
    *v15 = v16;
  }

  v31 = v13;
  (v13)(v10, v12, v6);
  v20 = *(v33 + 24);
  sub_24811D224(v19, v10, v15, v6, v20);
  (*(v7 + 8))(v12, v6);
  v22 = v36;
  v21 = v37;
  *(v36 + 16) = v16;
  v23 = *(v22 + 8);
  v39 = v21;
  v40 = v41;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v34, v21);
  v25 = v35;
  v26 = sub_248111D50(v38);
  if (!v25)
  {
    v27 = v26;
    __swift_destroy_boxed_opaque_existential_0(v38);
    v39 = v6;
    v40 = v20;
    v28 = __swift_allocate_boxed_opaque_existential_1(v38);
    v31(v28, v32, v6);
    sub_2481100D0(v27, v38, v29, v23);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_0(v38);
  return sub_24810F7DC(v22);
}

uint64_t sub_248110CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v44 = a4;
  v45 = a5;
  v42 = a6;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - v14;
  v16 = xpc_dictionary_create(0, 0, 0);
  v17 = *v7;
  v18 = v7[1];
  v43 = v7;
  v21 = v7[2];
  v19 = v7 + 2;
  v20 = v21;
  v22 = *(a3 + 24);
  v46[3] = v10;
  v46[4] = v22;
  v39 = v17;
  v40 = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  v24 = *(v11 + 16);
  v24(boxed_opaque_existential_1, a2, v10);
  v41 = v16;
  sub_2481100D0(v16, v46, v25, v18);
  __swift_destroy_boxed_opaque_existential_0(v46);
  v24(v15, a2, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_24811CFC0(0, v20[2] + 1, 1, v20);
    *v19 = v20;
  }

  v28 = v20[2];
  v27 = v20[3];
  if (v28 >= v27 >> 1)
  {
    v20 = sub_24811CFC0((v27 > 1), v28 + 1, 1, v20);
    *v19 = v20;
  }

  v29 = v38;
  v24(v38, v15, v10);
  sub_24811D224(v28, v29, v19, v10, v40);
  (*(v11 + 8))(v15, v10);
  v30 = v43;
  v43[2] = v20;
  v31 = v39;

  v32 = v41;
  swift_unknownObjectRetain();
  v46[0] = sub_24810EA64(v31, v20, v32);
  v46[1] = v33;
  v46[2] = v34;
  type metadata accessor for _XPCKeyedEncodingContainer(0, v44, v45, v35);
  swift_getWitnessTable();
  sub_248124918();
  sub_24810F7DC(v30);
  return swift_unknownObjectRelease();
}

uint64_t sub_248110F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v35 = a3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = xpc_array_create(0, 0);
  v14 = *v3;
  v15 = v3[1];
  v36 = v4;
  v18 = *(v4 + 16);
  v17 = (v4 + 16);
  v16 = v18;
  v19 = *(a2 + 24);
  v37[3] = v7;
  v37[4] = v19;
  v33 = v19;
  v34 = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  v21 = *(v8 + 16);
  v21(boxed_opaque_existential_1, a1, v7);
  sub_2481100D0(v13, v37, v22, v15);
  __swift_destroy_boxed_opaque_existential_0(v37);
  v21(v12, a1, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_24811CFC0(0, v16[2] + 1, 1, v16);
    *v17 = v16;
  }

  v25 = v16[2];
  v24 = v16[3];
  if (v25 >= v24 >> 1)
  {
    v16 = sub_24811CFC0((v24 > 1), v25 + 1, 1, v16);
    *v17 = v16;
  }

  v26 = v32;
  v21(v32, v12, v7);
  sub_24811D224(v25, v26, v17, v7, v33);
  (*(v8 + 8))(v12, v7);
  *v17 = v16;
  v27 = v34;

  v28 = swift_unknownObjectRetain();
  v29 = MEMORY[0x24C1C7CF0](v28);
  if (v29 == sub_248124338())
  {
    v30 = v35;
    v35[3] = &type metadata for _XPCUnkeyedEncodingContainer;
    v30[4] = sub_248112020();
    *v30 = v27;
    v30[1] = v13;
    v30[2] = v16;
    sub_24810F7DC(v36);
    return swift_unknownObjectRelease();
  }

  else
  {
    result = sub_2481247D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24811126C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = type metadata accessor for _XPCSuperKeyedEncoder();
  v5 = swift_allocObject();
  v6 = MEMORY[0x24C1C7CF0](v3);
  result = sub_248124388();
  if (v6 == result)
  {
    v8 = MEMORY[0x277D84F90];
    v5[2] = MEMORY[0x277D84F90];
    v5[3] = sub_248111B20(v8);
    v5[4] = 0;
    a1[3] = v4;
    result = sub_248112250(&unk_27EE88190, type metadata accessor for _XPCSuperKeyedEncoder, &unk_2481270C0);
    a1[4] = result;
    *a1 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_248111320@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for _XPCSuperKeyedEncoder();
  v3 = swift_allocObject();

  v4 = swift_unknownObjectRetain();
  v5 = MEMORY[0x24C1C7CF0](v4);
  result = sub_248124388();
  if (v5 == result)
  {
    v7 = MEMORY[0x277D84F90];
    v3[2] = MEMORY[0x277D84F90];
    v8 = sub_248111B20(v7);
    swift_unknownObjectRelease();
    v3[3] = v8;
    v3[4] = 0;

    a1[3] = v2;
    result = sub_248112250(&unk_27EE88190, type metadata accessor for _XPCSuperKeyedEncoder, &unk_2481270C0);
    a1[4] = result;
    *a1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2481118DC()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_248111924(uint64_t a1)
{
  sub_2481247C8();
  v2 = sub_248124438();

  return sub_248111988(a1, v2);
}

unint64_t sub_248111988(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_2481247C8();
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_248124468();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_248111B20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE880F0, &qword_248127110);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE880F8, &qword_248127118);
    v7 = sub_248124818();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24811208C(v9, v5);
      result = sub_248111924(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2481247C8();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_24810BEFC(&v5[v8], (v7[7] + 32 * v13));
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

void *sub_248111D50(void *a1)
{
  v29[5] = *MEMORY[0x277D85DE8];
  v3 = sub_2481242C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &uuid - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (swift_getDynamicType() == v3)
  {
    sub_2480F1CC8(a1, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE880E0, &qword_248127108);
    swift_dynamicCast();
    uuid = sub_2481242B8();
    v21 = v11;
    v22 = v12;
    v23 = v13;
    v24 = v14;
    v25 = v15;
    v26 = v16;
    v27 = v17;
    v28 = v18;
    v10 = xpc_uuid_create(&uuid);
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v7 = type metadata accessor for _XPCEncoder();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D84F90];
    v8[2] = MEMORY[0x277D84F90];
    v8[3] = sub_248111B20(v9);
    v8[4] = 0;
    v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v29[3] = v7;
    v29[4] = sub_248112250(&qword_27EE880D0, type metadata accessor for _XPCEncoder, &unk_2481270C0);
    v29[0] = v8;

    sub_248124428();
    if (v1)
    {

      __swift_destroy_boxed_opaque_existential_0(v29);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v29);
      v10 = v8[4];
      if (v10)
      {
        swift_unknownObjectRetain();
      }

      else
      {
        v10 = xpc_null_create();
      }
    }
  }

  return v10;
}

unint64_t sub_248112020()
{
  result = qword_27EE880E8;
  if (!qword_27EE880E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE880E8);
  }

  return result;
}

uint64_t sub_24811208C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE880F0, &qword_248127110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2481120FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_248112160(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2481121A8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_248112200()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_248112238(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_248112250(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_248112380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v25 = a5;
  v9 = sub_248124648();
  v24 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  type metadata accessor for _XPCDecoder();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  v14 = sub_248111B20(MEMORY[0x277D84F90]);
  v12[3] = a2;
  v12[4] = v14;
  v12[2] = v13;
  v15 = a1;
  swift_unknownObjectRetain();
  sub_248112D8C(a3, v11);
  if (v5)
  {
  }

  v16 = v24;
  v17 = v25;
  v18 = *(a3 - 8);
  if ((*(v18 + 48))(v11, 1, a3) == 1)
  {
    (*(v16 + 8))(v11, v9);
    v19 = sub_248124728();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v21 = v15;
    sub_248124718();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84170], v19);
    swift_willThrow();
  }

  return (*(v18 + 32))(v17, v11, a3);
}

uint64_t sub_248112650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 24);
  v7 = MEMORY[0x24C1C7CF0](v6);
  if (v7 == sub_248124318())
  {
    v14 = sub_248124728();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v16 = sub_248124898();
    swift_beginAccess();

    sub_248124718();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84170], v14);
    return swift_willThrow();
  }

  v8 = MEMORY[0x24C1C7CF0](v6);
  if (v8 != sub_248124388())
  {
    swift_beginAccess();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881D0, &qword_248127620);
    v10 = sub_248124728();
    swift_allocError();
    v12 = v11;

    sub_2481246E8();

    v13 = sub_24811D2E0(v6);
    MEMORY[0x24C1C6C90](v13);

    MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v12 = v9;
    sub_248124718();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D84160], v10);
    return swift_willThrow();
  }

  swift_unknownObjectRetain();
  sub_248112960(v3, v6);
  type metadata accessor for _XPCKeyedDecodingContainer(0, a2, a3, v18);
  swift_getWitnessTable();
  return sub_2481248A8();
}

uint64_t sub_248112960(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x24C1C7CF0](a2);
  if (v3 == sub_248124388())
  {
    swift_beginAccess();

    return a1;
  }

  else
  {
    result = sub_2481247D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_248112A24@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = MEMORY[0x24C1C7CF0](v3);
  if (v4 == sub_248124318())
  {
    v11 = sub_248124728();
    swift_allocError();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881C8, &qword_248127618);
    swift_beginAccess();

    sub_248124718();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84170], v11);
    return swift_willThrow();
  }

  v5 = MEMORY[0x24C1C7CF0](v3);
  if (v5 != sub_248124338())
  {
    swift_beginAccess();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881B8, &qword_248127610);
    v7 = sub_248124728();
    swift_allocError();
    v9 = v8;

    sub_2481246E8();

    v10 = sub_24811D2E0(v3);
    MEMORY[0x24C1C6C90](v10);

    MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v9 = v6;
    sub_248124718();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
    return swift_willThrow();
  }

  v15 = swift_unknownObjectRetain();
  v16 = MEMORY[0x24C1C7CF0](v15);
  if (v16 == sub_248124338())
  {
    swift_beginAccess();
    v17 = *(v1 + 16);
    a1[3] = &type metadata for _XPCUnkeyedDecodingContainer;
    a1[4] = sub_24811FA78();
    v18 = swift_allocObject();
    *a1 = v18;
    v18[2] = v1;
    v18[3] = v3;
    v18[4] = v17;
    v18[5] = 0;
  }

  else
  {
    result = sub_2481247D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_248112D8C@<X0>(uint64_t a1@<X2>, uint64_t a3@<X8>)
{
  type metadata accessor for _XPCDecoder();
  sub_24811FB84(qword_27EE881D8, &unk_2481275C0);

  result = sub_2481245B8();
  if (!v3)
  {
    return (*(*(a1 - 8) + 56))(a3, 0, 1, a1);
  }

  return result;
}

uint64_t sub_248112E6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32[0] = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881B0, &qword_248126138);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v32 - v11;
  v13 = sub_2481242C8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v32 - v19;
  if (v18 != a2)
  {
    swift_beginAccess();
    v21 = *(v5 + 16);
    type metadata accessor for _XPCDecoder();
    v22 = swift_allocObject();

    v23 = sub_248111B20(MEMORY[0x277D84F90]);
    v22[3] = a1;
    v22[4] = v23;
    v22[2] = v21;
    swift_unknownObjectRetain();
    sub_248112D8C(a3, a5);
  }

  v25 = v18;
  v26 = v32[5];
  result = sub_248113300(a1, v12);
  if (!v26)
  {
    if ((*(v14 + 48))(v12, 1, v25) == 1)
    {
      sub_24811FA10(v12);
      v27 = *(*(a3 - 8) + 56);
    }

    else
    {
      v28 = *(v14 + 32);
      v28(v20, v12, v25);
      v28(v17, v20, v25);
      v29 = swift_dynamicCast();
      v27 = *(*(a3 - 8) + 56);
      if (v29)
      {
        v30 = a5;
        v31 = 0;
        return v27(v30, v31, 1, a3);
      }
    }

    v30 = a5;
    v31 = 1;
    return v27(v30, v31, 1, a3);
  }

  return result;
}

const char *sub_248113134(void *a1)
{
  v2 = MEMORY[0x24C1C7CF0]();
  if (v2 == sub_248124318())
  {
    return 0;
  }

  v3 = MEMORY[0x24C1C7CF0](a1);
  if (v3 == sub_248124368())
  {
    result = xpc_string_get_string_ptr(a1);
    if (result)
    {
      return sub_2481244F8();
    }
  }

  else
  {
    swift_beginAccess();
    v4 = sub_248124728();
    swift_allocError();
    v6 = v5;

    sub_2481246E8();

    v7 = sub_24811D2E0(a1);
    MEMORY[0x24C1C6C90](v7);

    MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v6 = MEMORY[0x277D837D0];
    sub_248124718();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_248113300@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x24C1C7CF0]();
  if (v4 == sub_248124318())
  {
    goto LABEL_4;
  }

  v5 = MEMORY[0x24C1C7CF0](a1);
  if (v5 != sub_248124328())
  {
    swift_beginAccess();
    v6 = sub_2481242C8();
    v7 = sub_248124728();
    swift_allocError();
    v9 = v8;

    sub_2481246E8();

    v10 = sub_24811D2E0(a1);
    MEMORY[0x24C1C6C90](v10);

    MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v9 = v6;
    sub_248124718();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
    return swift_willThrow();
  }

  bytes = xpc_uuid_get_bytes(a1);
  if (!bytes)
  {
LABEL_4:
    v12 = sub_2481242C8();
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  else
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CCAD78]) initWithUUIDBytes_];
    sub_2481242A8();

    v15 = sub_2481242C8();
    return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
  }
}

uint64_t sub_2481135F8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for _XPCDecoder();
  a1[4] = sub_24811FB84(&qword_27EE881A8, &unk_248127508);
  *a1 = v3;
}

uint64_t sub_248113664()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v5 = MEMORY[0x277D839B0];
    swift_beginAccess();

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_248113780()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v5 = MEMORY[0x277D83B88];
    swift_beginAccess();

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_24811389C()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v5 = MEMORY[0x277D84900];
    swift_beginAccess();

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2481139B8()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v5 = MEMORY[0x277D84958];
    swift_beginAccess();

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_248113AD4()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v5 = MEMORY[0x277D849A8];
    swift_beginAccess();

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_248113BF0()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v5 = MEMORY[0x277D84A28];
    swift_beginAccess();

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_248113D0C()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v5 = MEMORY[0x277D83E88];
    swift_beginAccess();

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_248113E28()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v5 = MEMORY[0x277D84B78];
    swift_beginAccess();

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_248113F44()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v5 = MEMORY[0x277D84C58];
    swift_beginAccess();

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_248114060()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v5 = MEMORY[0x277D84CC0];
    swift_beginAccess();

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_24811417C()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v5 = MEMORY[0x277D84D38];
    swift_beginAccess();

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_248114298()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v5 = MEMORY[0x277D83A90];
    swift_beginAccess();

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2481143B4()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v5 = MEMORY[0x277D839F8];
    swift_beginAccess();

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2481144D0()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v5 = MEMORY[0x277D837D0];
    swift_beginAccess();

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2481145EC(uint64_t a1)
{
  v3 = MEMORY[0x24C1C7CF0](*(v1 + 24));
  result = sub_248124318();
  if (v3 == result)
  {
    v5 = sub_248124728();
    swift_allocError();
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v7 = a1;
    swift_beginAccess();

    sub_2481246E8();

    v8 = sub_248124DF8();
    MEMORY[0x24C1C6C90](v8);

    MEMORY[0x24C1C6C90](0xD00000000000001ELL, 0x8000000248129570);
    sub_248124718();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84170], v5);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_248114780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = sub_248124648();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - v11;
  result = sub_2481145EC(a1);
  if (!v5)
  {
    sub_248112E6C(*(v4 + 24), a1, a2, a3, v12);
    v14 = *(a2 - 8);
    result = (*(v14 + 48))(v12, 1, a2);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return (*(v14 + 32))(a4, v12, a2);
    }
  }

  return result;
}

uint64_t sub_248114948()
{
  v2 = *v0;
  LOBYTE(result) = sub_248113664();
  if (v1)
  {
    return result & 1;
  }

  result = sub_24811D46C(*(v2 + 24));
  if (result != 2)
  {
    return result & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_248114990()
{
  v2 = *v0;
  result = sub_2481144D0();
  if (!v1)
  {
    result = sub_248113134(*(v2 + 24));
    if (!v4)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2481149CC()
{
  v2 = *v0;
  result = sub_2481143B4();
  if (!v1)
  {
    result = sub_24811F840(*(v2 + 24));
    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_248114A10()
{
  v2 = *v0;
  result = sub_248114298();
  if (!v1)
  {
    result = sub_24811F660(*(v2 + 24));
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_248114C2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void))
{
  v7 = *v4;
  result = a3(a1, a2);
  if (!v5)
  {
    result = a4(*(v7 + 24));
    if ((result & 0x100) != 0)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_248114CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void))
{
  v7 = *v4;
  result = a3(a1, a2);
  if (!v5)
  {
    result = a4(*(v7 + 24));
    if ((result & 0x10000) != 0)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_248114D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void))
{
  v7 = *v4;
  result = a3(a1, a2);
  if (!v5)
  {
    result = a4(*(v7 + 24));
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_248114DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void))
{
  v7 = *v4;
  result = a3(a1, a2);
  if (!v5)
  {
    result = a4(*(v7 + 24));
    if (v9)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_248114E48()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  if (v2 >= xpc_array_get_count(v1))
  {
    v6 = sub_248124728();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE88268, &qword_248127A00);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;

    v10 = sub_248124938();
    MEMORY[0x24C1C6C90](v10);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v11 = swift_allocObject();
    *(inited + 32) = v11;
    *(v11 + 16) = 0x207865646E49;
    *(v11 + 24) = 0xE600000000000000;
    *(v11 + 32) = v2;
    *(v11 + 40) = 0;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84170], v6);
    swift_willThrow();
  }

  else
  {
    v3 = xpc_array_get_value(v1, v2);
    v4 = MEMORY[0x24C1C7CF0]();
    swift_unknownObjectRelease();
    if (v4 == sub_248124318())
    {
      *(v0 + 24) = v2 + 1;
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

__int128 *sub_2481150A0()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v17 = sub_248124728();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v19 = MEMORY[0x277D837D0];
    v20 = *v0;
    swift_beginAccess();
    v21 = *(v20 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v40[1] = 0xE600000000000000;
    v40[14] = v4;

    v23 = sub_248124938();
    MEMORY[0x24C1C6C90](v23);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v24 = swift_allocObject();
    *(inited + 32) = v24;
    *(v24 + 16) = 0x207865646E49;
    *(v24 + 24) = 0xE600000000000000;
    *(v24 + 32) = v4;
    *(v24 + 40) = 0;
    v40[0] = v21;
    v14 = v40;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v37 = 0x207865646E49;
    *(&v37 + 1) = 0xE600000000000000;
    v40[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v38 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v39 = v11;
    v12 = swift_allocObject();
    *&v37 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_248112238(&v37, &v7[5 * v10 + 4]);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_248113134(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = v15;
      v26 = v16;
      v36 = v11;
      swift_unknownObjectRelease();
      if (v26)
      {
        v2[3] = v4 + 1;
        sub_248116794(v2);
        return v14;
      }

      v35 = sub_248124728();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v28 = MEMORY[0x277D837D0];
      v29 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_2481262D0;
      *&v37 = 0x207865646E49;
      *(&v37 + 1) = 0xE600000000000000;
      v40[0] = v4;

      v31 = sub_248124938();
      MEMORY[0x24C1C6C90](v31);

      v33 = *(&v37 + 1);
      v32 = v37;
      *(v30 + 56) = &type metadata for XPCCodingKey;
      *(v30 + 64) = v36;
      v34 = swift_allocObject();
      *(v30 + 32) = v34;
      *(v34 + 16) = __PAIR128__(v33, v32);
      *(v34 + 32) = v4;
      *(v34 + 40) = 0;
      *&v37 = v29;
      v14 = &v37;
      sub_24811D108(v30);
      sub_248124718();
      (*(*(v35 - 8) + 104))(v28, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_248116794(v2);
  }

  return v14;
}

uint64_t sub_2481155C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v55 = a3;
  v9 = sub_248124648();
  v53 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  v12 = v4[1];
  v13 = v4[3];
  if (v13 >= xpc_array_get_count(v12))
  {
    v26 = sub_248124728();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v28 = a1;
    v29 = *v4;
    swift_beginAccess();
    v30 = *(v29 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v60 = 0x207865646E49;
    v61 = 0xE600000000000000;
    v62 = v13;

    v32 = sub_248124938();
    MEMORY[0x24C1C6C90](v32);

    v33 = v60;
    v34 = v61;
    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v35 = swift_allocObject();
    *(inited + 32) = v35;
    *(v35 + 16) = v33;
    *(v35 + 24) = v34;
    *(v35 + 32) = v13;
    *(v35 + 40) = 0;
    v60 = v30;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84170], v26);
    return swift_willThrow();
  }

  v48 = v9;
  v49 = a4;
  v14 = *v4;
  *&v57 = 0x207865646E49;
  *(&v57 + 1) = 0xE600000000000000;
  v60 = v13;
  v15 = sub_248124938();
  MEMORY[0x24C1C6C90](v15);

  v50 = *(&v57 + 1);
  v51 = v57;
  swift_beginAccess();
  v16 = *(v14 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + 16) = v16;
  v54 = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_24811CFC0(0, v16[2] + 1, 1, v16);
    *(v14 + 16) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  v52 = v5;
  if (v19 >= v18 >> 1)
  {
    v16 = sub_24811CFC0((v18 > 1), v19 + 1, 1, v16);
  }

  v58 = &type metadata for XPCCodingKey;
  v20 = sub_24810E568();
  v59 = v20;
  v21 = swift_allocObject();
  *&v57 = v21;
  v22 = v50;
  *(v21 + 16) = v51;
  *(v21 + 24) = v22;
  *(v21 + 32) = v13;
  *(v21 + 40) = 0;
  v16[2] = v19 + 1;
  sub_248112238(&v57, &v16[5 * v19 + 4]);
  *(v14 + 16) = v16;
  swift_endAccess();
  v23 = xpc_array_get_value(v12, v13);
  v24 = v54;
  v25 = v56;
  sub_248112E6C(v23, v54, a2, v55, v11);
  if (v25)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v37 = *(a2 - 8);
    if ((*(v37 + 48))(v11, 1, a2) != 1)
    {
      (*(v37 + 32))(v49, v11, a2);
      v47 = v52;
      v52[3] = v13 + 1;
      return sub_248116794(v47);
    }

    (*(v53 + 8))(v11, v48);
    v38 = sub_248124728();
    swift_allocError();
    v40 = v39;
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v40 = v24;
    v41 = *(v14 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    v42 = swift_initStackObject();
    *(v42 + 16) = xmmword_2481262D0;
    *&v57 = 0x207865646E49;
    *(&v57 + 1) = 0xE600000000000000;
    v60 = v13;

    v43 = sub_248124938();
    MEMORY[0x24C1C6C90](v43);

    v44 = v57;
    *(v42 + 56) = &type metadata for XPCCodingKey;
    *(v42 + 64) = v20;
    v45 = swift_allocObject();
    *(v42 + 32) = v45;
    *(v45 + 16) = v44;
    *(v45 + 32) = v13;
    *(v45 + 40) = 0;
    *&v57 = v41;
    sub_24811D108(v42);
    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
    sub_2481246E8();

    *&v57 = 0x6465746365707845;
    *(&v57 + 1) = 0xE900000000000020;
    v46 = sub_248124DF8();
    MEMORY[0x24C1C6C90](v46);

    MEMORY[0x24C1C6C90](0xD000000000000018, 0x8000000248129D50);
    sub_248124718();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84170], v38);
    swift_willThrow();
  }

  v47 = v52;
  return sub_248116794(v47);
}

uint64_t sub_248115CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v5 = *v3;
  v6 = v3[3];
  *&v33 = 0x207865646E49;
  *(&v33 + 1) = 0xE600000000000000;
  v37 = v6;
  v7 = sub_248124938();
  MEMORY[0x24C1C6C90](v7);

  swift_beginAccess();
  v8 = *(v5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_24811CFC0(0, v8[2] + 1, 1, v8);
    *(v5 + 16) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_24811CFC0((v10 > 1), v11 + 1, 1, v8);
  }

  v35 = &type metadata for XPCCodingKey;
  v36 = sub_24810E568();
  v12 = swift_allocObject();
  *&v33 = v12;
  *(v12 + 16) = 0x207865646E49;
  *(v12 + 24) = 0xE600000000000000;
  *(v12 + 32) = v6;
  *(v12 + 40) = 0;
  v8[2] = v11 + 1;
  sub_248112238(&v33, &v8[5 * v11 + 4]);
  *(v5 + 16) = v8;
  swift_endAccess();
  v13 = v4[1];
  if (v6 < xpc_array_get_count(v13))
  {
    v14 = xpc_array_get_value(v13, v6);
    v15 = MEMORY[0x24C1C7CF0]();
    if (v15 == sub_248124318())
    {
      v25 = sub_248124728();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v27 = sub_248124898();

      sub_248124718();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84170], v25);
    }

    else
    {
      v16 = MEMORY[0x24C1C7CF0](v14);
      if (v16 == sub_248124388())
      {
        v4[3] = v6 + 1;

        swift_unknownObjectRetain();
        *&v33 = sub_248112960(v5, v14);
        *(&v33 + 1) = v28;
        v34 = v29;
        type metadata accessor for _XPCKeyedDecodingContainer(0, v38, a3, v30);

        swift_unknownObjectRetain();

        swift_getWitnessTable();
        sub_2481248A8();

        swift_unknownObjectRelease();

        goto LABEL_13;
      }

      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881D0, &qword_248127620);
      v18 = sub_248124728();
      swift_allocError();
      v20 = v19;
      *&v33 = 0;
      *(&v33 + 1) = 0xE000000000000000;
      sub_2481246E8();

      *&v33 = 0xD000000000000035;
      *(&v33 + 1) = 0x8000000248129C10;
      v21 = sub_24811D2E0(v14);
      MEMORY[0x24C1C6C90](v21);

      MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v20 = v17;

      sub_248124718();
      (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84160], v18);
    }

    swift_willThrow();
LABEL_13:
    swift_unknownObjectRelease();
    return sub_248116794(v4);
  }

  v22 = sub_248124728();
  swift_allocError();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
  *v24 = sub_248124898();

  sub_248124718();
  (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84170], v22);
  swift_willThrow();
  return sub_248116794(v4);
}

uint64_t sub_24811621C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = *v1;
  v4 = v1[3];
  *&v32 = 0x207865646E49;
  *(&v32 + 1) = 0xE600000000000000;
  v35 = v4;
  v5 = sub_248124938();
  MEMORY[0x24C1C6C90](v5);

  swift_beginAccess();
  v6 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_24811CFC0(0, v6[2] + 1, 1, v6);
    *(v3 + 16) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_24811CFC0((v8 > 1), v9 + 1, 1, v6);
  }

  v33 = &type metadata for XPCCodingKey;
  v34 = sub_24810E568();
  v10 = swift_allocObject();
  *&v32 = v10;
  *(v10 + 16) = 0x207865646E49;
  *(v10 + 24) = 0xE600000000000000;
  *(v10 + 32) = v4;
  *(v10 + 40) = 0;
  v6[2] = v9 + 1;
  sub_248112238(&v32, &v6[5 * v9 + 4]);
  *(v3 + 16) = v6;
  swift_endAccess();
  v11 = v2[1];
  if (v4 >= xpc_array_get_count(v11))
  {
    v20 = sub_248124728();
    swift_allocError();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881C8, &qword_248127618);

    sub_248124718();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
    swift_willThrow();
    return sub_248116794(v2);
  }

  v12 = xpc_array_get_value(v11, v4);
  v13 = MEMORY[0x24C1C7CF0]();
  if (v13 == sub_248124318())
  {
    v23 = sub_248124728();
    swift_allocError();
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881C8, &qword_248127618);

    sub_248124718();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84170], v23);
    goto LABEL_11;
  }

  v14 = MEMORY[0x24C1C7CF0](v12);
  if (v14 != sub_248124338())
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881B8, &qword_248127610);
    v16 = sub_248124728();
    swift_allocError();
    v18 = v17;
    *&v32 = 0;
    *(&v32 + 1) = 0xE000000000000000;
    sub_2481246E8();

    *&v32 = 0xD000000000000028;
    *(&v32 + 1) = 0x8000000248129B20;
    v19 = sub_24811D2E0(v12);
    MEMORY[0x24C1C6C90](v19);

    MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v18 = v15;

    sub_248124718();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84160], v16);
LABEL_11:
    swift_willThrow();
    swift_unknownObjectRelease();
    return sub_248116794(v2);
  }

  v2[3] = v4 + 1;
  v26 = swift_unknownObjectRetain();
  v27 = MEMORY[0x24C1C7CF0](v26);
  if (v27 == sub_248124338())
  {
    v28 = *(v3 + 16);
    v29 = v36;
    v36[3] = &type metadata for _XPCUnkeyedDecodingContainer;
    v29[4] = sub_24811FA78();
    v30 = swift_allocObject();
    *v29 = v30;

    swift_unknownObjectRelease();
    v30[2] = v3;
    v30[3] = v12;
    v30[4] = v28;
    v30[5] = 0;
    return sub_248116794(v2);
  }

  result = sub_2481247D8();
  __break(1u);
  return result;
}

uint64_t sub_248116794(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_24811D210(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    __swift_destroy_boxed_opaque_existential_0(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(v1 + 16) = v2;
    swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_248116A88()
{
  result = sub_248124968();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_248116AD8()
{
  result = sub_248124978();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_248116B80()
{
  result = sub_2481249A8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_248116BD0()
{
  result = sub_248124988();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_248116D10()
{
  result = sub_2481249B8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_248116D60(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_248116E34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = sub_248124568();
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = &v14;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_248123FAC;
  *(v9 + 24) = v8;
  aBlock[4] = sub_248123FC8;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2481170A0;
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);

  xpc_dictionary_apply(a2, v10);
  _Block_release(v10);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v12 = v14;

    return v12;
  }

  return result;
}

uint64_t sub_248116FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_248124648();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_2481244F8();
  sub_248124DC8();
  result = (*(*(a4 - 8) + 48))(v7, 1, a4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_2481245A8();
    sub_248124598();
    return 1;
  }

  return result;
}

uint64_t sub_2481170A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

BOOL sub_2481170F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_248124DB8();
  v7 = sub_2481244B8();

  v8 = xpc_dictionary_get_value(a3, (v7 + 32));

  if (v8)
  {
    swift_unknownObjectRelease();
  }

  return v8 != 0;
}

BOOL sub_248117178(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_248124DB8();
  v10 = sub_2481244B8();

  v11 = xpc_dictionary_get_value(a3, (v10 + 32));

  if (v11)
  {
    v12 = MEMORY[0x24C1C7CF0](v11);
    v13 = sub_248124318();
    swift_unknownObjectRelease();
    return v12 == v13;
  }

  else
  {
    v15 = sub_248124728();
    swift_allocError();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08);
    v17[3] = a5;
    v17[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
    swift_beginAccess();

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    sub_248124B28();
    MEMORY[0x24C1C6C90](46, 0xE100000000000000);
    sub_248124718();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84158], v15);
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_2481173A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a4;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v33 - v15;
  v39 = v14;
  sub_248124DB8();
  v17 = sub_2481244B8();

  v36 = a3;
  v18 = xpc_dictionary_get_value(a3, (v17 + 32));

  if (v18)
  {
    v34 = a6;
    v19 = *(v10 + 16);
    v19(v16, v39, a5);
    swift_beginAccess();
    v20 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v20;
    v33 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_24811CFC0(0, *(v20 + 16) + 1, 1, v20);
      *(a2 + 16) = v20;
    }

    v23 = *(v20 + 16);
    v22 = *(v20 + 24);
    if (v23 >= v22 >> 1)
    {
      v20 = sub_24811CFC0((v22 > 1), v23 + 1, 1, v20);
      *(a2 + 16) = v20;
    }

    v19(v13, v16, a5);
    sub_24811D224(v23, v13, (a2 + 16), a5, v34);
    (*(v10 + 8))(v16, a5);
    *(a2 + 16) = v20;
    swift_endAccess();
    LOBYTE(v20) = a2;
    v24 = v35;
    v25 = sub_24811D46C(v33);
    if (!v24)
    {
      LOBYTE(v20) = v25;
      if (v25 == 2)
      {
        v20 = sub_248124728();
        swift_allocError();
        v27 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
        *v27 = MEMORY[0x277D839B0];

        sub_248124718();
        (*(*(v20 - 8) + 104))(v27, *MEMORY[0x277D84170], v20);
        swift_willThrow();
      }
    }

    sub_24811C104(a2);
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = sub_248124728();
    swift_allocError();
    v30 = v29;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v30[3] = a5;
    v30[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    (*(v10 + 16))(boxed_opaque_existential_1, v39, a5);
    swift_beginAccess();
    v38[0] = 0;
    v38[1] = 0xE000000000000000;

    v20 = v38;
    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84158], v28);
    swift_willThrow();
  }

  return v20 & 1;
}

int64_t sub_248117844(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a4;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  v43 = v14;
  sub_248124DB8();
  v17 = sub_2481244B8();

  v39 = a3;
  v18 = xpc_dictionary_get_value(a3, (v17 + 32));

  if (v18)
  {
    v37 = a6;
    v19 = *(v10 + 16);
    v19(v16, v43, a5);
    swift_beginAccess();
    v20 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v20;
    v36 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_24811CFC0(0, v20[2] + 1, 1, v20);
      *(a2 + 16) = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_24811CFC0((v22 > 1), v23 + 1, 1, v20);
      *(a2 + 16) = v20;
    }

    v19(v13, v16, a5);
    sub_24811D224(v23, v13, (a2 + 16), a5, v37);
    (*(v10 + 8))(v16, a5);
    *(a2 + 16) = v20;
    swift_endAccess();
    v24 = v38;
    v25 = sub_24811D62C(v36);
    if (v24)
    {
      goto LABEL_9;
    }

    if (v26)
    {
      v27 = sub_248124728();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v29 = MEMORY[0x277D83B88];

      sub_248124718();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84170], v27);
      swift_willThrow();
LABEL_9:
      sub_24811C104(a2);
      return swift_unknownObjectRelease();
    }

    v35 = v25;
    sub_24811C104(a2);
    swift_unknownObjectRelease();
    return v35;
  }

  else
  {
    v31 = sub_248124728();
    swift_allocError();
    v33 = v32;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v33[3] = a5;
    v33[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    (*(v10 + 16))(boxed_opaque_existential_1, v43, a5);
    swift_beginAccess();
    v41 = 0;
    v42 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84158], v31);
    return swift_willThrow();
  }
}

uint64_t sub_248117CE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a4;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v35 - v15;
  v42 = v14;
  sub_248124DB8();
  v17 = sub_2481244B8();

  v38 = a3;
  v18 = xpc_dictionary_get_value(a3, (v17 + 32));

  if (v18)
  {
    v36 = a6;
    v19 = *(v10 + 16);
    v19(v16, v42, a5);
    swift_beginAccess();
    v20 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v20;
    v35 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_24811CFC0(0, v20[2] + 1, 1, v20);
      *(a2 + 16) = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_24811CFC0((v22 > 1), v23 + 1, 1, v20);
      *(a2 + 16) = v20;
    }

    v19(v13, v16, a5);
    sub_24811D224(v23, v13, (a2 + 16), a5, v36);
    (*(v10 + 8))(v16, a5);
    *(a2 + 16) = v20;
    swift_endAccess();
    v24 = v37;
    v25 = sub_24811D960(v35);
    if (!v24)
    {
      if ((v25 & 0x100) == 0)
      {
        v26 = v25;
        sub_24811C104(a2);
        swift_unknownObjectRelease();
        return v26;
      }

      v32 = sub_248124728();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v34 = MEMORY[0x277D84900];

      sub_248124718();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84170], v32);
      swift_willThrow();
    }

    sub_24811C104(a2);
    return swift_unknownObjectRelease();
  }

  else
  {
    v28 = sub_248124728();
    swift_allocError();
    v30 = v29;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v30[3] = a5;
    v30[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    (*(v10 + 16))(boxed_opaque_existential_1, v42, a5);
    swift_beginAccess();
    v40 = 0;
    v41 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84158], v28);
    return swift_willThrow();
  }
}

uint64_t sub_24811817C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a4;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v35 - v15;
  v42 = v14;
  sub_248124DB8();
  v17 = sub_2481244B8();

  v38 = a3;
  v18 = xpc_dictionary_get_value(a3, (v17 + 32));

  if (v18)
  {
    v36 = a6;
    v19 = *(v10 + 16);
    v19(v16, v42, a5);
    swift_beginAccess();
    v20 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v20;
    v35 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_24811CFC0(0, v20[2] + 1, 1, v20);
      *(a2 + 16) = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_24811CFC0((v22 > 1), v23 + 1, 1, v20);
      *(a2 + 16) = v20;
    }

    v19(v13, v16, a5);
    sub_24811D224(v23, v13, (a2 + 16), a5, v36);
    (*(v10 + 8))(v16, a5);
    *(a2 + 16) = v20;
    swift_endAccess();
    v24 = v37;
    v25 = sub_24811DC94(v35);
    if (!v24)
    {
      if ((v25 & 0x10000) == 0)
      {
        v26 = v25;
        sub_24811C104(a2);
        swift_unknownObjectRelease();
        return v26;
      }

      v32 = sub_248124728();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v34 = MEMORY[0x277D84958];

      sub_248124718();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84170], v32);
      swift_willThrow();
    }

    sub_24811C104(a2);
    return swift_unknownObjectRelease();
  }

  else
  {
    v28 = sub_248124728();
    swift_allocError();
    v30 = v29;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v30[3] = a5;
    v30[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    (*(v10 + 16))(boxed_opaque_existential_1, v42, a5);
    swift_beginAccess();
    v40 = 0;
    v41 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84158], v28);
    return swift_willThrow();
  }
}

uint64_t *sub_248118618(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a4;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v34 - v15;
  v40 = v14;
  sub_248124DB8();
  v17 = sub_2481244B8();

  v37 = a3;
  v18 = xpc_dictionary_get_value(a3, (v17 + 32));

  if (v18)
  {
    v35 = a6;
    v19 = *(v10 + 16);
    v19(v16, v40, a5);
    swift_beginAccess();
    v20 = a2[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a2[2] = v20;
    v34 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_24811CFC0(0, v20[2] + 1, 1, v20);
      a2[2] = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_24811CFC0((v22 > 1), v23 + 1, 1, v20);
      a2[2] = v20;
    }

    v19(v13, v16, a5);
    sub_24811D224(v23, v13, a2 + 2, a5, v35);
    (*(v10 + 8))(v16, a5);
    a2[2] = v20;
    swift_endAccess();
    v24 = a2;
    v25 = v36;
    v26 = sub_24811DFCC(v34);
    if (!v25)
    {
      v24 = v26;
      if ((v26 & 0x100000000) != 0)
      {
        v24 = sub_248124728();
        swift_allocError();
        v32 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
        *v32 = MEMORY[0x277D849A8];

        sub_248124718();
        (*(*(v24 - 1) + 104))(v32, *MEMORY[0x277D84170], v24);
        swift_willThrow();
      }
    }

    sub_24811C104(a2);
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = sub_248124728();
    swift_allocError();
    v29 = v28;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v29[3] = a5;
    v29[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
    (*(v10 + 16))(boxed_opaque_existential_1, v40, a5);
    swift_beginAccess();
    v39[0] = 0;
    v39[1] = 0xE000000000000000;

    v24 = v39;
    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84158], v27);
    swift_willThrow();
  }

  return v24;
}

int64_t sub_248118AB4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a4;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  v43 = v14;
  sub_248124DB8();
  v17 = sub_2481244B8();

  v39 = a3;
  v18 = xpc_dictionary_get_value(a3, (v17 + 32));

  if (v18)
  {
    v37 = a6;
    v19 = *(v10 + 16);
    v19(v16, v43, a5);
    swift_beginAccess();
    v20 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v20;
    v36 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_24811CFC0(0, v20[2] + 1, 1, v20);
      *(a2 + 16) = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_24811CFC0((v22 > 1), v23 + 1, 1, v20);
      *(a2 + 16) = v20;
    }

    v19(v13, v16, a5);
    sub_24811D224(v23, v13, (a2 + 16), a5, v37);
    (*(v10 + 8))(v16, a5);
    *(a2 + 16) = v20;
    swift_endAccess();
    v24 = v38;
    v25 = sub_24811E30C(v36);
    if (v24)
    {
      goto LABEL_9;
    }

    if (v26)
    {
      v27 = sub_248124728();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v29 = MEMORY[0x277D84A28];

      sub_248124718();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84170], v27);
      swift_willThrow();
LABEL_9:
      sub_24811C104(a2);
      return swift_unknownObjectRelease();
    }

    v35 = v25;
    sub_24811C104(a2);
    swift_unknownObjectRelease();
    return v35;
  }

  else
  {
    v31 = sub_248124728();
    swift_allocError();
    v33 = v32;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v33[3] = a5;
    v33[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    (*(v10 + 16))(boxed_opaque_existential_1, v43, a5);
    swift_beginAccess();
    v41 = 0;
    v42 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84158], v31);
    return swift_willThrow();
  }
}

uint64_t sub_248118F50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a4;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  v43 = v14;
  sub_248124DB8();
  v17 = sub_2481244B8();

  v39 = a3;
  v18 = xpc_dictionary_get_value(a3, (v17 + 32));

  if (v18)
  {
    v37 = a6;
    v19 = *(v10 + 16);
    v19(v16, v43, a5);
    swift_beginAccess();
    v20 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v20;
    v36 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_24811CFC0(0, v20[2] + 1, 1, v20);
      *(a2 + 16) = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_24811CFC0((v22 > 1), v23 + 1, 1, v20);
      *(a2 + 16) = v20;
    }

    v19(v13, v16, a5);
    sub_24811D224(v23, v13, (a2 + 16), a5, v37);
    (*(v10 + 8))(v16, a5);
    *(a2 + 16) = v20;
    swift_endAccess();
    v24 = v38;
    v25 = sub_24811E644(v36);
    if (v24)
    {
      goto LABEL_9;
    }

    if (v26)
    {
      v27 = sub_248124728();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v29 = MEMORY[0x277D83E88];

      sub_248124718();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84170], v27);
      swift_willThrow();
LABEL_9:
      sub_24811C104(a2);
      return swift_unknownObjectRelease();
    }

    v35 = v25;
    sub_24811C104(a2);
    swift_unknownObjectRelease();
    return v35;
  }

  else
  {
    v31 = sub_248124728();
    swift_allocError();
    v33 = v32;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v33[3] = a5;
    v33[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    (*(v10 + 16))(boxed_opaque_existential_1, v43, a5);
    swift_beginAccess();
    v41 = 0;
    v42 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84158], v31);
    return swift_willThrow();
  }
}

uint64_t sub_2481193EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a4;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v35 - v15;
  v42 = v14;
  sub_248124DB8();
  v17 = sub_2481244B8();

  v38 = a3;
  v18 = xpc_dictionary_get_value(a3, (v17 + 32));

  if (v18)
  {
    v36 = a6;
    v19 = *(v10 + 16);
    v19(v16, v42, a5);
    swift_beginAccess();
    v20 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v20;
    v35 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_24811CFC0(0, v20[2] + 1, 1, v20);
      *(a2 + 16) = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_24811CFC0((v22 > 1), v23 + 1, 1, v20);
      *(a2 + 16) = v20;
    }

    v19(v13, v16, a5);
    sub_24811D224(v23, v13, (a2 + 16), a5, v36);
    (*(v10 + 8))(v16, a5);
    *(a2 + 16) = v20;
    swift_endAccess();
    v24 = v37;
    v25 = sub_24811E978(v35);
    if (!v24)
    {
      if ((v25 & 0x100) == 0)
      {
        v26 = v25;
        sub_24811C104(a2);
        swift_unknownObjectRelease();
        return v26;
      }

      v32 = sub_248124728();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v34 = MEMORY[0x277D84B78];

      sub_248124718();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84170], v32);
      swift_willThrow();
    }

    sub_24811C104(a2);
    return swift_unknownObjectRelease();
  }

  else
  {
    v28 = sub_248124728();
    swift_allocError();
    v30 = v29;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v30[3] = a5;
    v30[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    (*(v10 + 16))(boxed_opaque_existential_1, v42, a5);
    swift_beginAccess();
    v40 = 0;
    v41 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84158], v28);
    return swift_willThrow();
  }
}

uint64_t sub_248119888(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a4;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v35 - v15;
  v42 = v14;
  sub_248124DB8();
  v17 = sub_2481244B8();

  v38 = a3;
  v18 = xpc_dictionary_get_value(a3, (v17 + 32));

  if (v18)
  {
    v36 = a6;
    v19 = *(v10 + 16);
    v19(v16, v42, a5);
    swift_beginAccess();
    v20 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v20;
    v35 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_24811CFC0(0, v20[2] + 1, 1, v20);
      *(a2 + 16) = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_24811CFC0((v22 > 1), v23 + 1, 1, v20);
      *(a2 + 16) = v20;
    }

    v19(v13, v16, a5);
    sub_24811D224(v23, v13, (a2 + 16), a5, v36);
    (*(v10 + 8))(v16, a5);
    *(a2 + 16) = v20;
    swift_endAccess();
    v24 = v37;
    v25 = sub_24811ECB0(v35);
    if (!v24)
    {
      if ((v25 & 0x10000) == 0)
      {
        v26 = v25;
        sub_24811C104(a2);
        swift_unknownObjectRelease();
        return v26;
      }

      v32 = sub_248124728();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v34 = MEMORY[0x277D84C58];

      sub_248124718();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84170], v32);
      swift_willThrow();
    }

    sub_24811C104(a2);
    return swift_unknownObjectRelease();
  }

  else
  {
    v28 = sub_248124728();
    swift_allocError();
    v30 = v29;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v30[3] = a5;
    v30[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    (*(v10 + 16))(boxed_opaque_existential_1, v42, a5);
    swift_beginAccess();
    v40 = 0;
    v41 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84158], v28);
    return swift_willThrow();
  }
}

uint64_t *sub_248119D24(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a4;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v34 - v15;
  v40 = v14;
  sub_248124DB8();
  v17 = sub_2481244B8();

  v37 = a3;
  v18 = xpc_dictionary_get_value(a3, (v17 + 32));

  if (v18)
  {
    v35 = a6;
    v19 = *(v10 + 16);
    v19(v16, v40, a5);
    swift_beginAccess();
    v20 = a2[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a2[2] = v20;
    v34 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_24811CFC0(0, v20[2] + 1, 1, v20);
      a2[2] = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_24811CFC0((v22 > 1), v23 + 1, 1, v20);
      a2[2] = v20;
    }

    v19(v13, v16, a5);
    sub_24811D224(v23, v13, a2 + 2, a5, v35);
    (*(v10 + 8))(v16, a5);
    a2[2] = v20;
    swift_endAccess();
    v24 = a2;
    v25 = v36;
    v26 = sub_24811EFE8(v34);
    if (!v25)
    {
      v24 = v26;
      if ((v26 & 0x100000000) != 0)
      {
        v24 = sub_248124728();
        swift_allocError();
        v32 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
        *v32 = MEMORY[0x277D84CC0];

        sub_248124718();
        (*(*(v24 - 1) + 104))(v32, *MEMORY[0x277D84170], v24);
        swift_willThrow();
      }
    }

    sub_24811C104(a2);
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = sub_248124728();
    swift_allocError();
    v29 = v28;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v29[3] = a5;
    v29[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
    (*(v10 + 16))(boxed_opaque_existential_1, v40, a5);
    swift_beginAccess();
    v39[0] = 0;
    v39[1] = 0xE000000000000000;

    v24 = v39;
    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84158], v27);
    swift_willThrow();
  }

  return v24;
}

uint64_t sub_24811A1C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a4;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  v43 = v14;
  sub_248124DB8();
  v17 = sub_2481244B8();

  v39 = a3;
  v18 = xpc_dictionary_get_value(a3, (v17 + 32));

  if (v18)
  {
    v37 = a6;
    v19 = *(v10 + 16);
    v19(v16, v43, a5);
    swift_beginAccess();
    v20 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v20;
    v36 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_24811CFC0(0, v20[2] + 1, 1, v20);
      *(a2 + 16) = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_24811CFC0((v22 > 1), v23 + 1, 1, v20);
      *(a2 + 16) = v20;
    }

    v19(v13, v16, a5);
    sub_24811D224(v23, v13, (a2 + 16), a5, v37);
    (*(v10 + 8))(v16, a5);
    *(a2 + 16) = v20;
    swift_endAccess();
    v24 = v38;
    v25 = sub_24811F328(v36);
    if (v24)
    {
      goto LABEL_9;
    }

    if (v26)
    {
      v27 = sub_248124728();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v29 = MEMORY[0x277D84D38];

      sub_248124718();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84170], v27);
      swift_willThrow();
LABEL_9:
      sub_24811C104(a2);
      return swift_unknownObjectRelease();
    }

    v35 = v25;
    sub_24811C104(a2);
    swift_unknownObjectRelease();
    return v35;
  }

  else
  {
    v31 = sub_248124728();
    swift_allocError();
    v33 = v32;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v33[3] = a5;
    v33[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    (*(v10 + 16))(boxed_opaque_existential_1, v43, a5);
    swift_beginAccess();
    v41 = 0;
    v42 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84158], v31);
    return swift_willThrow();
  }
}

float sub_24811A65C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a4;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v35 - v16;
  v41 = v15;
  sub_248124DB8();
  v18 = sub_2481244B8();

  v39 = a3;
  v19 = xpc_dictionary_get_value(a3, (v18 + 32));

  if (!v19)
  {
    v27 = sub_248124728();
    swift_allocError();
    v29 = v28;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v29[3] = a5;
    v29[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
    (*(v11 + 16))(boxed_opaque_existential_1, v41, a5);
    swift_beginAccess();
    v42 = 0;
    v43 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84158], v27);
    swift_willThrow();
    return v6;
  }

  v37 = a6;
  v20 = *(v11 + 16);
  v20(v17, v41, a5);
  swift_beginAccess();
  v21 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v21;
  v36 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_24811CFC0(0, v21[2] + 1, 1, v21);
    *(a2 + 16) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_24811CFC0((v23 > 1), v24 + 1, 1, v21);
    *(a2 + 16) = v21;
  }

  v20(v14, v17, a5);
  sub_24811D224(v24, v14, (a2 + 16), a5, v37);
  (*(v11 + 8))(v17, a5);
  *(a2 + 16) = v21;
  swift_endAccess();
  v25 = v38;
  v26 = sub_24811F660(v36);
  if (v25)
  {
LABEL_11:
    sub_24811C104(a2);
    swift_unknownObjectRelease();
    return v6;
  }

  if ((v26 & 0x100000000) != 0)
  {
    v31 = sub_248124728();
    swift_allocError();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v33 = MEMORY[0x277D83A90];

    sub_248124718();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84170], v31);
    swift_willThrow();
    goto LABEL_11;
  }

  v6 = *&v26;
  sub_24811C104(a2);
  swift_unknownObjectRelease();
  return v6;
}

double sub_24811AB00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a4;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v36 - v16;
  v42 = v15;
  sub_248124DB8();
  v18 = sub_2481244B8();

  v40 = a3;
  v19 = xpc_dictionary_get_value(a3, (v18 + 32));

  v39 = v19;
  if (v19)
  {
    v37 = a6;
    v20 = *(v11 + 16);
    v20(v17, v42, a5);
    swift_beginAccess();
    v21 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v21;
    v23 = a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_24811CFC0(0, v21[2] + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_24811CFC0((v24 > 1), v25 + 1, 1, v21);
      *(v23 + 16) = v21;
    }

    v20(v14, v17, a5);
    sub_24811D224(v25, v14, (v23 + 16), a5, v37);
    (*(v11 + 8))(v17, a5);
    *(v23 + 16) = v21;
    swift_endAccess();
    v26 = v38;
    v27 = sub_24811F840(v39);
    if (!v26)
    {
      if ((v28 & 1) == 0)
      {
        v6 = *&v27;
        sub_24811C104(v23);
        swift_unknownObjectRelease();
        return v6;
      }

      v29 = sub_248124728();
      swift_allocError();
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v31 = MEMORY[0x277D839F8];

      sub_248124718();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84170], v29);
      swift_willThrow();
    }

    sub_24811C104(v23);
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = sub_248124728();
    swift_allocError();
    v33 = v32;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v33[3] = a5;
    v33[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    (*(v11 + 16))(boxed_opaque_existential_1, v42, a5);
    swift_beginAccess();
    v43 = 0;
    v44 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v41 - 8) + 104))(v33, *MEMORY[0x277D84158]);
    swift_willThrow();
  }

  return v6;
}

const char *sub_24811AFA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a4;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v36 - v15;
  v42 = v14;
  sub_248124DB8();
  v17 = sub_2481244B8();

  v38 = a3;
  v18 = xpc_dictionary_get_value(a3, (v17 + 32));

  v37 = v18;
  if (v18)
  {
    v36[0] = a6;
    v19 = *(v10 + 16);
    v19(v16, v42, a5);
    swift_beginAccess();
    v20 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v20;
    v22 = a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_24811CFC0(0, v20[2] + 1, 1, v20);
      *(a2 + 16) = v20;
    }

    v24 = v20[2];
    v23 = v20[3];
    if (v24 >= v23 >> 1)
    {
      v20 = sub_24811CFC0((v23 > 1), v24 + 1, 1, v20);
      *(v22 + 16) = v20;
    }

    v19(v13, v16, a5);
    sub_24811D224(v24, v13, (v22 + 16), a5, v36[0]);
    (*(v10 + 8))(v16, a5);
    *(v22 + 16) = v20;
    swift_endAccess();
    v25 = v36[1];
    v26 = sub_248113134(v37);
    if (v25)
    {
      goto LABEL_7;
    }

    if (!v27)
    {
      v33 = sub_248124728();
      swift_allocError();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v35 = MEMORY[0x277D837D0];

      sub_248124718();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84170], v33);
      swift_willThrow();
LABEL_7:
      sub_24811C104(v22);
      return swift_unknownObjectRelease();
    }

    v32 = v26;
    sub_24811C104(v22);
    swift_unknownObjectRelease();
    return v32;
  }

  else
  {
    v39 = sub_248124728();
    swift_allocError();
    v30 = v29;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v30[3] = a5;
    v30[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    (*(v10 + 16))(boxed_opaque_existential_1, v42, a5);
    swift_beginAccess();
    v40 = 0;
    v41 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v39 - 8) + 104))(v30, *MEMORY[0x277D84158]);
    return swift_willThrow();
  }
}

uint64_t sub_24811B44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v59 = a5;
  v60 = a7;
  v51 = a9;
  v52 = a1;
  v15 = sub_248124648();
  v49 = *(v15 - 8);
  v50 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v57 = &v48 - v17;
  v18 = *(a6 - 8);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v48 - v22;
  v65 = a2;
  v24 = a8;
  sub_248124DB8();
  v25 = sub_2481244B8();

  v58 = a4;
  v26 = xpc_dictionary_get_value(a4, (v25 + 32));

  if (v26)
  {
    v54 = v26;
    v55 = v24;
    v53 = a10;
    v27 = *(v18 + 16);
    v28 = a6;
    v27(v23, v65, a6);
    swift_beginAccess();
    v29 = *(a3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v29;
    v65 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_24811CFC0(0, v29[2] + 1, 1, v29);
      *(v65 + 16) = v29;
    }

    v32 = v29[2];
    v31 = v29[3];
    if (v32 >= v31 >> 1)
    {
      v29 = sub_24811CFC0((v31 > 1), v32 + 1, 1, v29);
      *(v65 + 16) = v29;
    }

    v33 = v54;
    v27(v21, v23, v28);
    v34 = v65;
    sub_24811D224(v32, v21, (v65 + 16), v28, v55);
    (*(v18 + 8))(v23, v28);
    *(v34 + 16) = v29;
    swift_endAccess();
    v35 = v56;
    v36 = v57;
    v37 = v60;
    sub_248112E6C(v33, v60, v60, v53, v57);
    if (!v35)
    {
      v56 = v28;
      v43 = *(v37 - 8);
      if ((*(v43 + 48))(v36, 1, v37) == 1)
      {
        (*(v49 + 8))(v36, v50);
        v44 = sub_248124728();
        swift_allocError();
        v46 = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
        *v46 = v52;
        v63 = 0;
        v64 = 0xE000000000000000;

        sub_2481246E8();

        v63 = 0x6465746365707845;
        v64 = 0xE900000000000020;
        v47 = sub_248124DF8();
        MEMORY[0x24C1C6C90](v47);

        MEMORY[0x24C1C6C90](0xD00000000000001ELL, 0x800000024812A090);
        sub_248124718();
        (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84170], v44);
        swift_willThrow();
      }

      else
      {
        (*(v43 + 32))(v51, v36, v37);
      }
    }

    sub_24811C104(v34);
    return swift_unknownObjectRelease();
  }

  else
  {
    v39 = sub_248124728();
    v59 = swift_allocError();
    v41 = v40;
    v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v41[3] = a6;
    v41[4] = v24;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
    (*(v18 + 16))(boxed_opaque_existential_1, v65, a6);
    swift_beginAccess();
    v61 = 0;
    v62 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84158], v39);
    return swift_willThrow();
  }
}

uint64_t sub_24811BAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v48 = a8;
  v55 = a7;
  v53 = a6;
  v60 = a3;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v47 - v15;
  v17 = *(v11 + 16);
  v50 = v18;
  v54 = v19;
  v17(v47 - v15);
  swift_beginAccess();
  v20 = *(a2 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_24811CFC0(0, v20[2] + 1, 1, v20);
    *(a2 + 16) = v20;
  }

  v51 = a9;
  v52 = a4;
  v23 = v20[2];
  v22 = v20[3];
  v56 = a2;
  if (v23 >= v22 >> 1)
  {
    v20 = sub_24811CFC0((v22 > 1), v23 + 1, 1, v20);
    *(a2 + 16) = v20;
  }

  v24 = v54;
  (v17)(v14, v16, v54);
  v25 = v56;
  v26 = v23;
  v27 = v55;
  sub_24811D224(v26, v14, (v56 + 16), v24, v55);
  (*(v11 + 8))(v16, v24);
  *(v25 + 16) = v20;
  swift_endAccess();
  v28 = v50;
  sub_248124DB8();
  v29 = sub_2481244B8();

  v30 = xpc_dictionary_get_value(v60, (v29 + 32));

  if (!v30)
  {

    v48 = sub_248124728();
    v49 = swift_allocError();
    v39 = v38;
    v47[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v39[3] = v24;
    v39[4] = v27;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
    (v17)(boxed_opaque_existential_1, v28, v24);
    v57 = 0;
    v58 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0x6720746F6E6E6143, 0xEB00000000207465);
    sub_248124898();
    v41 = sub_248124DF8();
    MEMORY[0x24C1C6C90](v41);

    MEMORY[0x24C1C6C90](0xD00000000000001BLL, 0x800000024812A050);
    sub_248124B28();
    sub_248124718();
    (*(*(v48 - 8) + 104))(v39, *MEMORY[0x277D84158]);
    swift_willThrow();
    v32 = v56;
    return sub_24811C104(v32);
  }

  v31 = MEMORY[0x24C1C7CF0](v30);
  if (v31 != sub_248124388())
  {
    v32 = v56;

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881D0, &qword_248127620);
    v34 = sub_248124728();
    swift_allocError();
    v36 = v35;
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_2481246E8();

    v57 = 0xD000000000000035;
    v58 = 0x8000000248129C10;
    v37 = sub_24811D2E0(v30);
    MEMORY[0x24C1C6C90](v37);

    MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v36 = v33;

    sub_248124718();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    return sub_24811C104(v32);
  }

  swift_unknownObjectRetain();
  v43 = v56;
  v57 = sub_248112960(v56, v30);
  v58 = v44;
  v59 = v45;
  type metadata accessor for _XPCKeyedDecodingContainer(0, v53, v51, v46);

  swift_unknownObjectRetain();

  swift_getWitnessTable();
  sub_2481248A8();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return sub_24811C104(v43);
}

uint64_t sub_24811C104(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_24811D210(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    __swift_destroy_boxed_opaque_existential_0(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(a1 + 16) = v2;
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_24811C1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v50 = a4;
  v51 = a6;
  v52 = a3;
  v47 = a7;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v16 = *(v10 + 16);
  v16(&v46 - v14, a1, v17);
  swift_beginAccess();
  v18 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = a2;
  *(a2 + 16) = v18;
  v20 = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_24811CFC0(0, v18[2] + 1, 1, v18);
    *(v55 + 16) = v18;
  }

  v22 = v18[2];
  v21 = v18[3];
  if (v22 >= v21 >> 1)
  {
    v18 = sub_24811CFC0((v21 > 1), v22 + 1, 1, v18);
    *(v55 + 16) = v18;
  }

  v16(v13, v15, a5);
  v48 = v16;
  v23 = v55;
  v24 = v13;
  v25 = v51;
  sub_24811D224(v22, v24, (v55 + 16), a5, v51);
  (*(v10 + 8))(v15, a5);
  v26 = v25;
  *(v23 + 16) = v18;
  swift_endAccess();
  sub_248124DB8();
  v27 = sub_2481244B8();

  v28 = xpc_dictionary_get_value(v52, (v27 + 32));

  if (!v28)
  {
    v35 = sub_248124728();
    v49 = swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08);
    v37[3] = a5;
    v37[4] = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
    v48(boxed_opaque_existential_1, v20, a5);
    v53 = 0;
    v54 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000003ELL, 0x800000024812A010);
    sub_248124B28();
    MEMORY[0x24C1C6C90](41, 0xE100000000000000);
    sub_248124718();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84158], v35);
    swift_willThrow();
    return sub_24811C104(v55);
  }

  v29 = MEMORY[0x24C1C7CF0](v28);
  if (v29 != sub_248124338())
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881B8, &qword_248127610);
    v31 = sub_248124728();
    swift_allocError();
    v33 = v32;
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_2481246E8();

    v53 = 0xD000000000000028;
    v54 = 0x8000000248129B20;
    v34 = sub_24811D2E0(v28);
    MEMORY[0x24C1C6C90](v34);

    MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v33 = v30;

    sub_248124718();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
    swift_willThrow();
    swift_unknownObjectRelease();
    return sub_24811C104(v55);
  }

  v40 = swift_unknownObjectRetain();
  v41 = MEMORY[0x24C1C7CF0](v40);
  if (v41 == sub_248124338())
  {
    v42 = v55;
    v43 = *(v55 + 16);
    v44 = v47;
    v47[3] = &type metadata for _XPCUnkeyedDecodingContainer;
    v44[4] = sub_24811FA78();
    v45 = swift_allocObject();
    *v44 = v45;

    swift_unknownObjectRelease();
    v45[2] = v42;
    v45[3] = v28;
    v45[4] = v43;
    v45[5] = 0;
    return sub_24811C104(v42);
  }

  else
  {
    result = sub_2481247D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24811CC0C()
{
  result = sub_248124BA8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_24811CC5C()
{
  result = sub_248124BB8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_24811CD04()
{
  result = sub_248124BE8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_24811CD54()
{
  result = sub_248124BC8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_24811CE94()
{
  result = sub_248124BF8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_24811CEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

void *sub_24811CFC0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE88260, &qword_2481279F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24811D108(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_24811CFC0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE88260, &qword_2481279F8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24811D224(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_248112238(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_24811D2E0(uint64_t a1)
{
  v2 = MEMORY[0x24C1C7CF0]();
  if (v2 == sub_248124318())
  {
    return 0x76206C6C756E2061;
  }

  v3 = 0x7265626D756E2061;
  v4 = MEMORY[0x24C1C7CF0](a1);
  if (v4 != sub_248124348())
  {
    v5 = MEMORY[0x24C1C7CF0](a1);
    if (v5 != sub_248124378())
    {
      v6 = MEMORY[0x24C1C7CF0](a1);
      if (v6 == sub_248124368())
      {
        return 0x676E697274732061;
      }

      else
      {
        v7 = MEMORY[0x24C1C7CF0](a1);
        if (v7 == sub_248124338())
        {
          return 0x7961727261206E61;
        }

        else
        {
          v8 = MEMORY[0x24C1C7CF0](a1);
          if (v8 == sub_248124388())
          {
            return 0x6F69746369642061;
          }

          else
          {
            v9 = MEMORY[0x24C1C7CF0](a1);
            if (v9 == sub_248124328())
            {
              return 0x646975752061;
            }

            else
            {
              v10 = MEMORY[0x24C1C7CF0](a1);
              xpc_type_get_name(v10);
              return sub_2481244F8();
            }
          }
        }
      }
    }
  }

  return v3;
}

uint64_t sub_24811D46C(void *a1)
{
  v2 = MEMORY[0x24C1C7CF0]();
  if (v2 == sub_248124318())
  {
    return 2;
  }

  v3 = MEMORY[0x24C1C7CF0](a1);
  if (v3 == sub_248124308())
  {
    return xpc_BOOL_get_value(a1);
  }

  swift_beginAccess();
  v4 = sub_248124728();
  swift_allocError();
  v6 = v5;

  sub_2481246E8();

  v7 = sub_24811D2E0(a1);
  MEMORY[0x24C1C6C90](v7);

  MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
  *v6 = MEMORY[0x277D839B0];
  sub_248124718();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
  return swift_willThrow();
}

int64_t sub_24811D62C(void *a1)
{
  v2 = MEMORY[0x24C1C7CF0]();
  if (v2 == sub_248124318())
  {
    return 0;
  }

  v3 = MEMORY[0x24C1C7CF0](a1);
  if (v3 == sub_248124348())
  {
    value = xpc_int64_get_value(a1);
    v10 = xpc_int64_get_value(a1);
    result = value;
    if (value == v10)
    {
      return result;
    }

    v11 = sub_248124728();
    swift_allocError();
    v13 = v12;
    swift_beginAccess();

    sub_2481246E8();

    xpc_int64_get_value(a1);
    v14 = sub_248124938();
    MEMORY[0x24C1C6C90](v14);

    MEMORY[0x24C1C6C90](0xD000000000000011, 0x80000002481295C0);
    MEMORY[0x24C1C6C90](7630409, 0xE300000000000000);
    MEMORY[0x24C1C6C90](46, 0xE100000000000000);
    sub_248124718();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84168], v11);
  }

  else
  {
    swift_beginAccess();
    v4 = sub_248124728();
    swift_allocError();
    v6 = v5;

    sub_2481246E8();

    v7 = sub_24811D2E0(a1);
    MEMORY[0x24C1C6C90](v7);

    MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v6 = MEMORY[0x277D83B88];
    sub_248124718();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
  }

  return swift_willThrow();
}

uint64_t sub_24811D960(void *a1)
{
  v2 = MEMORY[0x24C1C7CF0]();
  v3 = sub_248124318();
  if (v2 == v3)
  {
    value = 0;
    return value | ((v2 == v3) << 8);
  }

  v4 = MEMORY[0x24C1C7CF0](a1);
  if (v4 == sub_248124348())
  {
    value = xpc_int64_get_value(a1);
    if (xpc_int64_get_value(a1) != value)
    {
      v11 = sub_248124728();
      swift_allocError();
      v13 = v12;
      swift_beginAccess();

      sub_2481246E8();

      xpc_int64_get_value(a1);
      v14 = sub_248124938();
      MEMORY[0x24C1C6C90](v14);

      MEMORY[0x24C1C6C90](0xD000000000000011, 0x80000002481295C0);
      MEMORY[0x24C1C6C90](947154505, 0xE400000000000000);
      MEMORY[0x24C1C6C90](46, 0xE100000000000000);
      sub_248124718();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84168], v11);
      return swift_willThrow();
    }

    return value | ((v2 == v3) << 8);
  }

  swift_beginAccess();
  v5 = sub_248124728();
  swift_allocError();
  v7 = v6;

  sub_2481246E8();

  v8 = sub_24811D2E0(a1);
  MEMORY[0x24C1C6C90](v8);

  MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
  *v7 = MEMORY[0x277D84900];
  sub_248124718();
  (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84160], v5);
  return swift_willThrow();
}

uint64_t sub_24811DC94(void *a1)
{
  v2 = MEMORY[0x24C1C7CF0]();
  v3 = sub_248124318();
  if (v2 == v3)
  {
    value = 0;
    return value | ((v2 == v3) << 16);
  }

  v4 = MEMORY[0x24C1C7CF0](a1);
  if (v4 == sub_248124348())
  {
    value = xpc_int64_get_value(a1);
    if (xpc_int64_get_value(a1) != value)
    {
      v11 = sub_248124728();
      swift_allocError();
      v13 = v12;
      swift_beginAccess();

      sub_2481246E8();

      xpc_int64_get_value(a1);
      v14 = sub_248124938();
      MEMORY[0x24C1C6C90](v14);

      MEMORY[0x24C1C6C90](0xD000000000000011, 0x80000002481295C0);
      MEMORY[0x24C1C6C90](0x3631746E49, 0xE500000000000000);
      MEMORY[0x24C1C6C90](46, 0xE100000000000000);
      sub_248124718();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84168], v11);
      return swift_willThrow();
    }

    return value | ((v2 == v3) << 16);
  }

  swift_beginAccess();
  v5 = sub_248124728();
  swift_allocError();
  v7 = v6;

  sub_2481246E8();

  v8 = sub_24811D2E0(a1);
  MEMORY[0x24C1C6C90](v8);

  MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
  *v7 = MEMORY[0x277D84958];
  sub_248124718();
  (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84160], v5);
  return swift_willThrow();
}

unint64_t sub_24811DFCC(void *a1)
{
  v2 = MEMORY[0x24C1C7CF0]();
  v3 = sub_248124318();
  if (v2 == v3)
  {
    value = 0;
    return value | ((v2 == v3) << 32);
  }

  v4 = MEMORY[0x24C1C7CF0](a1);
  if (v4 == sub_248124348())
  {
    value = xpc_int64_get_value(a1);
    if (xpc_int64_get_value(a1) != value)
    {
      v11 = sub_248124728();
      swift_allocError();
      v13 = v12;
      swift_beginAccess();

      sub_2481246E8();

      xpc_int64_get_value(a1);
      v14 = sub_248124938();
      MEMORY[0x24C1C6C90](v14);

      MEMORY[0x24C1C6C90](0xD000000000000011, 0x80000002481295C0);
      MEMORY[0x24C1C6C90](0x3233746E49, 0xE500000000000000);
      MEMORY[0x24C1C6C90](46, 0xE100000000000000);
      sub_248124718();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84168], v11);
      return swift_willThrow();
    }

    return value | ((v2 == v3) << 32);
  }

  swift_beginAccess();
  v5 = sub_248124728();
  swift_allocError();
  v7 = v6;

  sub_2481246E8();

  v8 = sub_24811D2E0(a1);
  MEMORY[0x24C1C6C90](v8);

  MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
  *v7 = MEMORY[0x277D849A8];
  sub_248124718();
  (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84160], v5);
  return swift_willThrow();
}

int64_t sub_24811E30C(void *a1)
{
  v2 = MEMORY[0x24C1C7CF0]();
  if (v2 == sub_248124318())
  {
    return 0;
  }

  v3 = MEMORY[0x24C1C7CF0](a1);
  if (v3 == sub_248124348())
  {
    value = xpc_int64_get_value(a1);
    v10 = xpc_int64_get_value(a1);
    result = value;
    if (value == v10)
    {
      return result;
    }

    v11 = sub_248124728();
    swift_allocError();
    v13 = v12;
    swift_beginAccess();

    sub_2481246E8();

    xpc_int64_get_value(a1);
    v14 = sub_248124938();
    MEMORY[0x24C1C6C90](v14);

    MEMORY[0x24C1C6C90](0xD000000000000011, 0x80000002481295C0);
    MEMORY[0x24C1C6C90](0x3436746E49, 0xE500000000000000);
    MEMORY[0x24C1C6C90](46, 0xE100000000000000);
    sub_248124718();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84168], v11);
  }

  else
  {
    swift_beginAccess();
    v4 = sub_248124728();
    swift_allocError();
    v6 = v5;

    sub_2481246E8();

    v7 = sub_24811D2E0(a1);
    MEMORY[0x24C1C6C90](v7);

    MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v6 = MEMORY[0x277D84A28];
    sub_248124718();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
  }

  return swift_willThrow();
}

uint64_t sub_24811E644(void *a1)
{
  v2 = MEMORY[0x24C1C7CF0]();
  if (v2 == sub_248124318())
  {
    return 0;
  }

  v3 = MEMORY[0x24C1C7CF0](a1);
  if (v3 == sub_248124378())
  {
    value = xpc_uint64_get_value(a1);
    v10 = xpc_uint64_get_value(a1);
    result = value;
    if (value == v10)
    {
      return result;
    }

    v11 = sub_248124728();
    swift_allocError();
    v13 = v12;
    swift_beginAccess();

    sub_2481246E8();

    xpc_uint64_get_value(a1);
    v14 = sub_248124938();
    MEMORY[0x24C1C6C90](v14);

    MEMORY[0x24C1C6C90](0xD000000000000011, 0x80000002481295C0);
    MEMORY[0x24C1C6C90](1953384789, 0xE400000000000000);
    MEMORY[0x24C1C6C90](46, 0xE100000000000000);
    sub_248124718();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84168], v11);
  }

  else
  {
    swift_beginAccess();
    v4 = sub_248124728();
    swift_allocError();
    v6 = v5;

    sub_2481246E8();

    v7 = sub_24811D2E0(a1);
    MEMORY[0x24C1C6C90](v7);

    MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v6 = MEMORY[0x277D83E88];
    sub_248124718();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
  }

  return swift_willThrow();
}

uint64_t sub_24811E978(void *a1)
{
  v2 = MEMORY[0x24C1C7CF0]();
  v3 = sub_248124318();
  if (v2 == v3)
  {
    value = 0;
    return value | ((v2 == v3) << 8);
  }

  v4 = MEMORY[0x24C1C7CF0](a1);
  if (v4 == sub_248124378())
  {
    value = xpc_uint64_get_value(a1);
    if (xpc_uint64_get_value(a1) != value)
    {
      v11 = sub_248124728();
      swift_allocError();
      v13 = v12;
      swift_beginAccess();

      sub_2481246E8();

      xpc_uint64_get_value(a1);
      v14 = sub_248124938();
      MEMORY[0x24C1C6C90](v14);

      MEMORY[0x24C1C6C90](0xD000000000000011, 0x80000002481295C0);
      MEMORY[0x24C1C6C90](0x38746E4955, 0xE500000000000000);
      MEMORY[0x24C1C6C90](46, 0xE100000000000000);
      sub_248124718();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84168], v11);
      return swift_willThrow();
    }

    return value | ((v2 == v3) << 8);
  }

  swift_beginAccess();
  v5 = sub_248124728();
  swift_allocError();
  v7 = v6;

  sub_2481246E8();

  v8 = sub_24811D2E0(a1);
  MEMORY[0x24C1C6C90](v8);

  MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
  *v7 = MEMORY[0x277D84B78];
  sub_248124718();
  (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84160], v5);
  return swift_willThrow();
}

uint64_t sub_24811ECB0(void *a1)
{
  v2 = MEMORY[0x24C1C7CF0]();
  v3 = sub_248124318();
  if (v2 == v3)
  {
    value = 0;
    return value | ((v2 == v3) << 16);
  }

  v4 = MEMORY[0x24C1C7CF0](a1);
  if (v4 == sub_248124378())
  {
    value = xpc_uint64_get_value(a1);
    if (xpc_uint64_get_value(a1) != value)
    {
      v11 = sub_248124728();
      swift_allocError();
      v13 = v12;
      swift_beginAccess();

      sub_2481246E8();

      xpc_uint64_get_value(a1);
      v14 = sub_248124938();
      MEMORY[0x24C1C6C90](v14);

      MEMORY[0x24C1C6C90](0xD000000000000011, 0x80000002481295C0);
      MEMORY[0x24C1C6C90](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x24C1C6C90](46, 0xE100000000000000);
      sub_248124718();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84168], v11);
      return swift_willThrow();
    }

    return value | ((v2 == v3) << 16);
  }

  swift_beginAccess();
  v5 = sub_248124728();
  swift_allocError();
  v7 = v6;

  sub_2481246E8();

  v8 = sub_24811D2E0(a1);
  MEMORY[0x24C1C6C90](v8);

  MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
  *v7 = MEMORY[0x277D84C58];
  sub_248124718();
  (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84160], v5);
  return swift_willThrow();
}

unint64_t sub_24811EFE8(void *a1)
{
  v2 = MEMORY[0x24C1C7CF0]();
  v3 = sub_248124318();
  if (v2 == v3)
  {
    value = 0;
    return value | ((v2 == v3) << 32);
  }

  v4 = MEMORY[0x24C1C7CF0](a1);
  if (v4 == sub_248124378())
  {
    value = xpc_uint64_get_value(a1);
    if (xpc_uint64_get_value(a1) != value)
    {
      v11 = sub_248124728();
      swift_allocError();
      v13 = v12;
      swift_beginAccess();

      sub_2481246E8();

      xpc_uint64_get_value(a1);
      v14 = sub_248124938();
      MEMORY[0x24C1C6C90](v14);

      MEMORY[0x24C1C6C90](0xD000000000000011, 0x80000002481295C0);
      MEMORY[0x24C1C6C90](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x24C1C6C90](46, 0xE100000000000000);
      sub_248124718();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84168], v11);
      return swift_willThrow();
    }

    return value | ((v2 == v3) << 32);
  }

  swift_beginAccess();
  v5 = sub_248124728();
  swift_allocError();
  v7 = v6;

  sub_2481246E8();

  v8 = sub_24811D2E0(a1);
  MEMORY[0x24C1C6C90](v8);

  MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
  *v7 = MEMORY[0x277D84CC0];
  sub_248124718();
  (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84160], v5);
  return swift_willThrow();
}

uint64_t sub_24811F328(void *a1)
{
  v2 = MEMORY[0x24C1C7CF0]();
  if (v2 == sub_248124318())
  {
    return 0;
  }

  v3 = MEMORY[0x24C1C7CF0](a1);
  if (v3 == sub_248124378())
  {
    value = xpc_uint64_get_value(a1);
    v10 = xpc_uint64_get_value(a1);
    result = value;
    if (value == v10)
    {
      return result;
    }

    v11 = sub_248124728();
    swift_allocError();
    v13 = v12;
    swift_beginAccess();

    sub_2481246E8();

    xpc_uint64_get_value(a1);
    v14 = sub_248124938();
    MEMORY[0x24C1C6C90](v14);

    MEMORY[0x24C1C6C90](0xD000000000000011, 0x80000002481295C0);
    MEMORY[0x24C1C6C90](0x3436746E4955, 0xE600000000000000);
    MEMORY[0x24C1C6C90](46, 0xE100000000000000);
    sub_248124718();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84168], v11);
  }

  else
  {
    swift_beginAccess();
    v4 = sub_248124728();
    swift_allocError();
    v6 = v5;

    sub_2481246E8();

    v7 = sub_24811D2E0(a1);
    MEMORY[0x24C1C6C90](v7);

    MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v6 = MEMORY[0x277D84D38];
    sub_248124718();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
  }

  return swift_willThrow();
}

unint64_t sub_24811F660(void *a1)
{
  v2 = MEMORY[0x24C1C7CF0]();
  v3 = sub_248124318();
  if (v2 == v3)
  {
    v10 = 0;
  }

  else
  {
    v4 = MEMORY[0x24C1C7CF0](a1);
    if (v4 != sub_248124358())
    {
      swift_beginAccess();
      v5 = sub_248124728();
      swift_allocError();
      v7 = v6;

      sub_2481246E8();

      v8 = sub_24811D2E0(a1);
      MEMORY[0x24C1C6C90](v8);

      MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v7 = MEMORY[0x277D83A90];
      sub_248124718();
      (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84160], v5);
      return swift_willThrow();
    }

    *&v11 = xpc_double_get_value(a1);
    v10 = v11;
  }

  return v10 | ((v2 == v3) << 32);
}

uint64_t sub_24811F840(void *a1)
{
  v2 = MEMORY[0x24C1C7CF0]();
  if (v2 == sub_248124318())
  {
    return 0;
  }

  v3 = MEMORY[0x24C1C7CF0](a1);
  if (v3 == sub_248124358())
  {
    return xpc_double_get_value(a1);
  }

  swift_beginAccess();
  v4 = sub_248124728();
  swift_allocError();
  v6 = v5;

  sub_2481246E8();

  v7 = sub_24811D2E0(a1);
  MEMORY[0x24C1C6C90](v7);

  MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
  *v6 = MEMORY[0x277D839F8];
  sub_248124718();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
  return swift_willThrow();
}

uint64_t sub_24811FA10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881B0, &qword_248126138);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24811FA78()
{
  result = qword_27EE881C0;
  if (!qword_27EE881C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE881C0);
  }

  return result;
}

uint64_t sub_24811FAFC(void (*a1)(void), uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  a1(v3[2]);
  swift_unknownObjectRelease();

  return a3(v3, a2, 7);
}

uint64_t sub_24811FB84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _XPCDecoder();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24811FBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24811FC00(uint64_t *a1, int a2)
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

uint64_t sub_24811FC48(uint64_t result, int a2, int a3)
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

uint64_t sub_24811FC98()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_24811FCD0()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v15 = sub_248124728();
    swift_allocError();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v17 = MEMORY[0x277D839B0];
    v18 = *v0;
    swift_beginAccess();
    v19 = *(v18 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v37[1] = 0xE600000000000000;
    v37[14] = v4;

    v21 = sub_248124938();
    MEMORY[0x24C1C6C90](v21);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v22 = swift_allocObject();
    *(inited + 32) = v22;
    *(v22 + 16) = 0x207865646E49;
    *(v22 + 24) = 0xE600000000000000;
    *(v22 + 32) = v4;
    *(v22 + 40) = 0;
    v37[0] = v19;
    v7 = v37;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84170], v15);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v34 = 0x207865646E49;
    *(&v34 + 1) = 0xE600000000000000;
    v37[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, *(v7 + 2) + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v35 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v36 = v11;
    v12 = swift_allocObject();
    *&v34 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    *(v7 + 2) = v10 + 1;
    sub_248112238(&v34, v7 + 40 * v10 + 32);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    LOBYTE(v7) = v5;
    v14 = sub_24811D46C(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v7) = v14;
      v33 = v11;
      swift_unknownObjectRelease();
      if (v7 != 2)
      {
        v2[3] = v4 + 1;
        sub_248116794(v2);
        return v7 & 1;
      }

      v32 = sub_248124728();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v24 = MEMORY[0x277D839B0];
      v25 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_2481262D0;
      *&v34 = 0x207865646E49;
      *(&v34 + 1) = 0xE600000000000000;
      v37[0] = v4;

      v27 = sub_248124938();
      MEMORY[0x24C1C6C90](v27);

      v29 = *(&v34 + 1);
      v28 = v34;
      *(v26 + 56) = &type metadata for XPCCodingKey;
      *(v26 + 64) = v33;
      v30 = swift_allocObject();
      *(v26 + 32) = v30;
      *(v30 + 16) = __PAIR128__(v29, v28);
      *(v30 + 32) = v4;
      *(v30 + 40) = 0;
      *&v34 = v25;
      v7 = &v34;
      sub_24811D108(v26);
      sub_248124718();
      (*(*(v32 - 8) + 104))(v24, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_248116794(v2);
  }

  return v7 & 1;
}

__int128 *sub_2481201F8()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v17 = sub_248124728();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v19 = MEMORY[0x277D83B88];
    v20 = *v0;
    swift_beginAccess();
    v21 = *(v20 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v39[1] = 0xE600000000000000;
    v39[14] = v4;

    v23 = sub_248124938();
    MEMORY[0x24C1C6C90](v23);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v24 = swift_allocObject();
    *(inited + 32) = v24;
    *(v24 + 16) = 0x207865646E49;
    *(v24 + 24) = 0xE600000000000000;
    *(v24 + 32) = v4;
    *(v24 + 40) = 0;
    v39[0] = v21;
    v14 = v39;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v36 = 0x207865646E49;
    *(&v36 + 1) = 0xE600000000000000;
    v39[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v37 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v38 = v11;
    v12 = swift_allocObject();
    *&v36 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_248112238(&v36, &v7[5 * v10 + 4]);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_24811D62C(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = v15;
      v25 = v16;
      swift_unknownObjectRelease();
      if ((v25 & 1) == 0)
      {
        v2[3] = v4 + 1;
        sub_248116794(v2);
        return v14;
      }

      v35 = sub_248124728();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v27 = MEMORY[0x277D83B88];
      v28 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_2481262D0;
      *&v36 = 0x207865646E49;
      *(&v36 + 1) = 0xE600000000000000;
      v39[0] = v4;

      v30 = sub_248124938();
      MEMORY[0x24C1C6C90](v30);

      v32 = *(&v36 + 1);
      v31 = v36;
      *(v29 + 56) = &type metadata for XPCCodingKey;
      *(v29 + 64) = v11;
      v33 = swift_allocObject();
      *(v29 + 32) = v33;
      *(v33 + 16) = __PAIR128__(v32, v31);
      *(v33 + 32) = v4;
      *(v33 + 40) = 0;
      *&v36 = v28;
      v14 = &v36;
      sub_24811D108(v29);
      sub_248124718();
      (*(*(v35 - 8) + 104))(v27, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_248116794(v2);
  }

  return v14;
}

__int128 *sub_248120714()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_248124728();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v18 = MEMORY[0x277D84900];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v38[1] = 0xE600000000000000;
    v38[14] = v4;

    v22 = sub_248124938();
    MEMORY[0x24C1C6C90](v22);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v4;
    *(v23 + 40) = 0;
    v38[0] = v20;
    v14 = v38;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v35 = 0x207865646E49;
    *(&v35 + 1) = 0xE600000000000000;
    v38[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v36 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v37 = v11;
    v12 = swift_allocObject();
    *&v35 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_248112238(&v35, &v7[5 * v10 + 4]);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_24811D960(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_248116794(v2);
      return v14;
    }

    v14 = v15;
    v34 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x100) != 0)
    {
      v33 = sub_248124728();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v25 = MEMORY[0x277D84900];
      v26 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_2481262D0;
      *&v35 = 0x207865646E49;
      *(&v35 + 1) = 0xE600000000000000;
      v38[0] = v4;

      v28 = sub_248124938();
      MEMORY[0x24C1C6C90](v28);

      v30 = *(&v35 + 1);
      v29 = v35;
      *(v27 + 56) = &type metadata for XPCCodingKey;
      *(v27 + 64) = v34;
      v31 = swift_allocObject();
      *(v27 + 32) = v31;
      *(v31 + 16) = __PAIR128__(v30, v29);
      *(v31 + 32) = v4;
      *(v31 + 40) = 0;
      *&v35 = v26;
      v14 = &v35;
      sub_24811D108(v27);
      sub_248124718();
      (*(*(v33 - 8) + 104))(v25, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_248116794(v2);
  }

  return v14;
}

__int128 *sub_248120C34()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_248124728();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v18 = MEMORY[0x277D84958];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v38[1] = 0xE600000000000000;
    v38[14] = v4;

    v22 = sub_248124938();
    MEMORY[0x24C1C6C90](v22);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v4;
    *(v23 + 40) = 0;
    v38[0] = v20;
    v14 = v38;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v35 = 0x207865646E49;
    *(&v35 + 1) = 0xE600000000000000;
    v38[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v36 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v37 = v11;
    v12 = swift_allocObject();
    *&v35 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_248112238(&v35, &v7[5 * v10 + 4]);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_24811DC94(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_248116794(v2);
      return v14;
    }

    v14 = v15;
    v34 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x10000) != 0)
    {
      v33 = sub_248124728();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v25 = MEMORY[0x277D84958];
      v26 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_2481262D0;
      *&v35 = 0x207865646E49;
      *(&v35 + 1) = 0xE600000000000000;
      v38[0] = v4;

      v28 = sub_248124938();
      MEMORY[0x24C1C6C90](v28);

      v30 = *(&v35 + 1);
      v29 = v35;
      *(v27 + 56) = &type metadata for XPCCodingKey;
      *(v27 + 64) = v34;
      v31 = swift_allocObject();
      *(v27 + 32) = v31;
      *(v31 + 16) = __PAIR128__(v30, v29);
      *(v31 + 32) = v4;
      *(v31 + 40) = 0;
      *&v35 = v26;
      v14 = &v35;
      sub_24811D108(v27);
      sub_248124718();
      (*(*(v33 - 8) + 104))(v25, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_248116794(v2);
  }

  return v14;
}

unint64_t sub_248121154()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_248124728();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v18 = MEMORY[0x277D849A8];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v38[1] = 0xE600000000000000;
    v38[14] = v4;

    v22 = sub_248124938();
    MEMORY[0x24C1C6C90](v22);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v4;
    *(v23 + 40) = 0;
    v38[0] = v20;
    v14 = v38;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v35 = 0x207865646E49;
    *(&v35 + 1) = 0xE600000000000000;
    v38[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v36 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v37 = v11;
    v12 = swift_allocObject();
    *&v35 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_248112238(&v35, &v7[5 * v10 + 4]);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_24811DFCC(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_248116794(v2);
      return v14;
    }

    v14 = v15;
    v34 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x100000000) != 0)
    {
      v33 = sub_248124728();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v25 = MEMORY[0x277D849A8];
      v26 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_2481262D0;
      *&v35 = 0x207865646E49;
      *(&v35 + 1) = 0xE600000000000000;
      v38[0] = v4;

      v28 = sub_248124938();
      MEMORY[0x24C1C6C90](v28);

      v30 = *(&v35 + 1);
      v29 = v35;
      *(v27 + 56) = &type metadata for XPCCodingKey;
      *(v27 + 64) = v34;
      v31 = swift_allocObject();
      *(v27 + 32) = v31;
      *(v31 + 16) = __PAIR128__(v30, v29);
      *(v31 + 32) = v4;
      *(v31 + 40) = 0;
      *&v35 = v26;
      v14 = &v35;
      sub_24811D108(v27);
      sub_248124718();
      (*(*(v33 - 8) + 104))(v25, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_248116794(v2);
  }

  return v14;
}

__int128 *sub_248121674()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v17 = sub_248124728();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v19 = MEMORY[0x277D84A28];
    v20 = *v0;
    swift_beginAccess();
    v21 = *(v20 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v40[1] = 0xE600000000000000;
    v40[14] = v4;

    v23 = sub_248124938();
    MEMORY[0x24C1C6C90](v23);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v24 = swift_allocObject();
    *(inited + 32) = v24;
    *(v24 + 16) = 0x207865646E49;
    *(v24 + 24) = 0xE600000000000000;
    *(v24 + 32) = v4;
    *(v24 + 40) = 0;
    v40[0] = v21;
    v14 = v40;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v37 = 0x207865646E49;
    *(&v37 + 1) = 0xE600000000000000;
    v40[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v38 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v39 = v11;
    v12 = swift_allocObject();
    *&v37 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_248112238(&v37, &v7[5 * v10 + 4]);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_24811E30C(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = v15;
      v25 = v16;
      v36 = v11;
      swift_unknownObjectRelease();
      if ((v25 & 1) == 0)
      {
        v2[3] = v4 + 1;
        sub_248116794(v2);
        return v14;
      }

      v35 = sub_248124728();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v27 = MEMORY[0x277D84A28];
      v28 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_2481262D0;
      *&v37 = 0x207865646E49;
      *(&v37 + 1) = 0xE600000000000000;
      v40[0] = v4;

      v30 = sub_248124938();
      MEMORY[0x24C1C6C90](v30);

      v32 = *(&v37 + 1);
      v31 = v37;
      *(v29 + 56) = &type metadata for XPCCodingKey;
      *(v29 + 64) = v36;
      v33 = swift_allocObject();
      *(v29 + 32) = v33;
      *(v33 + 16) = __PAIR128__(v32, v31);
      *(v33 + 32) = v4;
      *(v33 + 40) = 0;
      *&v37 = v28;
      v14 = &v37;
      sub_24811D108(v29);
      sub_248124718();
      (*(*(v35 - 8) + 104))(v27, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_248116794(v2);
  }

  return v14;
}

__int128 *sub_248121B98()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v17 = sub_248124728();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v19 = MEMORY[0x277D83E88];
    v20 = *v0;
    swift_beginAccess();
    v21 = *(v20 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v40[1] = 0xE600000000000000;
    v40[14] = v4;

    v23 = sub_248124938();
    MEMORY[0x24C1C6C90](v23);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v24 = swift_allocObject();
    *(inited + 32) = v24;
    *(v24 + 16) = 0x207865646E49;
    *(v24 + 24) = 0xE600000000000000;
    *(v24 + 32) = v4;
    *(v24 + 40) = 0;
    v40[0] = v21;
    v14 = v40;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v37 = 0x207865646E49;
    *(&v37 + 1) = 0xE600000000000000;
    v40[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v38 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v39 = v11;
    v12 = swift_allocObject();
    *&v37 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_248112238(&v37, &v7[5 * v10 + 4]);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_24811E644(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = v15;
      v25 = v16;
      v36 = v11;
      swift_unknownObjectRelease();
      if ((v25 & 1) == 0)
      {
        v2[3] = v4 + 1;
        sub_248116794(v2);
        return v14;
      }

      v35 = sub_248124728();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v27 = MEMORY[0x277D83E88];
      v28 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_2481262D0;
      *&v37 = 0x207865646E49;
      *(&v37 + 1) = 0xE600000000000000;
      v40[0] = v4;

      v30 = sub_248124938();
      MEMORY[0x24C1C6C90](v30);

      v32 = *(&v37 + 1);
      v31 = v37;
      *(v29 + 56) = &type metadata for XPCCodingKey;
      *(v29 + 64) = v36;
      v33 = swift_allocObject();
      *(v29 + 32) = v33;
      *(v33 + 16) = __PAIR128__(v32, v31);
      *(v33 + 32) = v4;
      *(v33 + 40) = 0;
      *&v37 = v28;
      v14 = &v37;
      sub_24811D108(v29);
      sub_248124718();
      (*(*(v35 - 8) + 104))(v27, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_248116794(v2);
  }

  return v14;
}

__int128 *sub_2481220BC()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_248124728();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v18 = MEMORY[0x277D84B78];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v38[1] = 0xE600000000000000;
    v38[14] = v4;

    v22 = sub_248124938();
    MEMORY[0x24C1C6C90](v22);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v4;
    *(v23 + 40) = 0;
    v38[0] = v20;
    v14 = v38;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v35 = 0x207865646E49;
    *(&v35 + 1) = 0xE600000000000000;
    v38[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v36 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v37 = v11;
    v12 = swift_allocObject();
    *&v35 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_248112238(&v35, &v7[5 * v10 + 4]);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_24811E978(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_248116794(v2);
      return v14;
    }

    v14 = v15;
    v34 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x100) != 0)
    {
      v33 = sub_248124728();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v25 = MEMORY[0x277D84B78];
      v26 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_2481262D0;
      *&v35 = 0x207865646E49;
      *(&v35 + 1) = 0xE600000000000000;
      v38[0] = v4;

      v28 = sub_248124938();
      MEMORY[0x24C1C6C90](v28);

      v30 = *(&v35 + 1);
      v29 = v35;
      *(v27 + 56) = &type metadata for XPCCodingKey;
      *(v27 + 64) = v34;
      v31 = swift_allocObject();
      *(v27 + 32) = v31;
      *(v31 + 16) = __PAIR128__(v30, v29);
      *(v31 + 32) = v4;
      *(v31 + 40) = 0;
      *&v35 = v26;
      v14 = &v35;
      sub_24811D108(v27);
      sub_248124718();
      (*(*(v33 - 8) + 104))(v25, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_248116794(v2);
  }

  return v14;
}

__int128 *sub_2481225DC()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_248124728();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v18 = MEMORY[0x277D84C58];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v38[1] = 0xE600000000000000;
    v38[14] = v4;

    v22 = sub_248124938();
    MEMORY[0x24C1C6C90](v22);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v4;
    *(v23 + 40) = 0;
    v38[0] = v20;
    v14 = v38;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v35 = 0x207865646E49;
    *(&v35 + 1) = 0xE600000000000000;
    v38[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v36 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v37 = v11;
    v12 = swift_allocObject();
    *&v35 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_248112238(&v35, &v7[5 * v10 + 4]);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_24811ECB0(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_248116794(v2);
      return v14;
    }

    v14 = v15;
    v34 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x10000) != 0)
    {
      v33 = sub_248124728();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v25 = MEMORY[0x277D84C58];
      v26 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_2481262D0;
      *&v35 = 0x207865646E49;
      *(&v35 + 1) = 0xE600000000000000;
      v38[0] = v4;

      v28 = sub_248124938();
      MEMORY[0x24C1C6C90](v28);

      v30 = *(&v35 + 1);
      v29 = v35;
      *(v27 + 56) = &type metadata for XPCCodingKey;
      *(v27 + 64) = v34;
      v31 = swift_allocObject();
      *(v27 + 32) = v31;
      *(v31 + 16) = __PAIR128__(v30, v29);
      *(v31 + 32) = v4;
      *(v31 + 40) = 0;
      *&v35 = v26;
      v14 = &v35;
      sub_24811D108(v27);
      sub_248124718();
      (*(*(v33 - 8) + 104))(v25, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_248116794(v2);
  }

  return v14;
}

unint64_t sub_248122AFC()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_248124728();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v18 = MEMORY[0x277D84CC0];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v38[1] = 0xE600000000000000;
    v38[14] = v4;

    v22 = sub_248124938();
    MEMORY[0x24C1C6C90](v22);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v4;
    *(v23 + 40) = 0;
    v38[0] = v20;
    v14 = v38;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v35 = 0x207865646E49;
    *(&v35 + 1) = 0xE600000000000000;
    v38[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v36 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v37 = v11;
    v12 = swift_allocObject();
    *&v35 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_248112238(&v35, &v7[5 * v10 + 4]);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_24811EFE8(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_248116794(v2);
      return v14;
    }

    v14 = v15;
    v34 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x100000000) != 0)
    {
      v33 = sub_248124728();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v25 = MEMORY[0x277D84CC0];
      v26 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_2481262D0;
      *&v35 = 0x207865646E49;
      *(&v35 + 1) = 0xE600000000000000;
      v38[0] = v4;

      v28 = sub_248124938();
      MEMORY[0x24C1C6C90](v28);

      v30 = *(&v35 + 1);
      v29 = v35;
      *(v27 + 56) = &type metadata for XPCCodingKey;
      *(v27 + 64) = v34;
      v31 = swift_allocObject();
      *(v27 + 32) = v31;
      *(v31 + 16) = __PAIR128__(v30, v29);
      *(v31 + 32) = v4;
      *(v31 + 40) = 0;
      *&v35 = v26;
      v14 = &v35;
      sub_24811D108(v27);
      sub_248124718();
      (*(*(v33 - 8) + 104))(v25, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_248116794(v2);
  }

  return v14;
}

__int128 *sub_24812301C()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v17 = sub_248124728();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v19 = MEMORY[0x277D84D38];
    v20 = *v0;
    swift_beginAccess();
    v21 = *(v20 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v40[1] = 0xE600000000000000;
    v40[14] = v4;

    v23 = sub_248124938();
    MEMORY[0x24C1C6C90](v23);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v24 = swift_allocObject();
    *(inited + 32) = v24;
    *(v24 + 16) = 0x207865646E49;
    *(v24 + 24) = 0xE600000000000000;
    *(v24 + 32) = v4;
    *(v24 + 40) = 0;
    v40[0] = v21;
    v14 = v40;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v37 = 0x207865646E49;
    *(&v37 + 1) = 0xE600000000000000;
    v40[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v38 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v39 = v11;
    v12 = swift_allocObject();
    *&v37 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_248112238(&v37, &v7[5 * v10 + 4]);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_24811F328(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = v15;
      v25 = v16;
      v36 = v11;
      swift_unknownObjectRelease();
      if ((v25 & 1) == 0)
      {
        v2[3] = v4 + 1;
        sub_248116794(v2);
        return v14;
      }

      v35 = sub_248124728();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v27 = MEMORY[0x277D84D38];
      v28 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_2481262D0;
      *&v37 = 0x207865646E49;
      *(&v37 + 1) = 0xE600000000000000;
      v40[0] = v4;

      v30 = sub_248124938();
      MEMORY[0x24C1C6C90](v30);

      v32 = *(&v37 + 1);
      v31 = v37;
      *(v29 + 56) = &type metadata for XPCCodingKey;
      *(v29 + 64) = v36;
      v33 = swift_allocObject();
      *(v29 + 32) = v33;
      *(v33 + 16) = __PAIR128__(v32, v31);
      *(v33 + 32) = v4;
      *(v33 + 40) = 0;
      *&v37 = v28;
      v14 = &v37;
      sub_24811D108(v29);
      sub_248124718();
      (*(*(v35 - 8) + 104))(v27, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_248116794(v2);
  }

  return v14;
}

float sub_248123540()
{
  v3 = v0;
  v4 = v0[1];
  v5 = v0[3];
  if (v5 >= xpc_array_get_count(v4))
  {
    v16 = sub_248124728();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v18 = MEMORY[0x277D83A90];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v38 = 0xE600000000000000;
    v39 = v5;

    v22 = sub_248124938();
    MEMORY[0x24C1C6C90](v22);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v5;
    *(v23 + 40) = 0;
    v37 = v20;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v6 = *v0;
    *&v34 = 0x207865646E49;
    *(&v34 + 1) = 0xE600000000000000;
    v37 = v5;
    v7 = sub_248124938();
    MEMORY[0x24C1C6C90](v7);

    swift_beginAccess();
    v8 = *(v6 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 16) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_24811CFC0(0, v8[2] + 1, 1, v8);
      *(v6 + 16) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_24811CFC0((v10 > 1), v11 + 1, 1, v8);
    }

    v35 = &type metadata for XPCCodingKey;
    v12 = sub_24810E568();
    v36 = v12;
    v13 = swift_allocObject();
    *&v34 = v13;
    *(v13 + 16) = 0x207865646E49;
    *(v13 + 24) = 0xE600000000000000;
    *(v13 + 32) = v5;
    *(v13 + 40) = 0;
    v8[2] = v11 + 1;
    sub_248112238(&v34, &v8[5 * v11 + 4]);
    *(v6 + 16) = v8;
    swift_endAccess();
    v14 = xpc_array_get_value(v4, v5);
    v15 = sub_24811F660(v14);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_248116794(v3);
      return v2;
    }

    v24 = v15;
    swift_unknownObjectRelease();
    if ((v24 & 0x100000000) != 0)
    {
      v33 = sub_248124728();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v26 = MEMORY[0x277D83A90];
      v27 = *(v6 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_2481262D0;
      *&v34 = 0x207865646E49;
      *(&v34 + 1) = 0xE600000000000000;
      v37 = v5;

      v29 = sub_248124938();
      MEMORY[0x24C1C6C90](v29);

      v30 = v34;
      *(v28 + 56) = &type metadata for XPCCodingKey;
      *(v28 + 64) = v12;
      v31 = swift_allocObject();
      *(v28 + 32) = v31;
      *(v31 + 16) = v30;
      *(v31 + 32) = v5;
      *(v31 + 40) = 0;
      *&v34 = v27;
      sub_24811D108(v28);
      sub_248124718();
      (*(*(v33 - 8) + 104))(v26, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2 = *&v24;
    v3[3] = v5 + 1;
    sub_248116794(v3);
  }

  return v2;
}

double sub_248123A6C()
{
  v3 = v0;
  v4 = v0[1];
  v5 = v0[3];
  if (v5 >= xpc_array_get_count(v4))
  {
    v17 = sub_248124728();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
    *v19 = MEMORY[0x277D839F8];
    v20 = *v0;
    swift_beginAccess();
    v21 = *(v20 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v41 = 0xE600000000000000;
    v42 = v5;

    v23 = sub_248124938();
    MEMORY[0x24C1C6C90](v23);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v24 = swift_allocObject();
    *(inited + 32) = v24;
    *(v24 + 16) = 0x207865646E49;
    *(v24 + 24) = 0xE600000000000000;
    *(v24 + 32) = v5;
    *(v24 + 40) = 0;
    v40 = v21;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v6 = *v0;
    *&v37 = 0x207865646E49;
    *(&v37 + 1) = 0xE600000000000000;
    v40 = v5;
    v7 = sub_248124938();
    MEMORY[0x24C1C6C90](v7);

    swift_beginAccess();
    v8 = *(v6 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 16) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_24811CFC0(0, v8[2] + 1, 1, v8);
      *(v6 + 16) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_24811CFC0((v10 > 1), v11 + 1, 1, v8);
    }

    v38 = &type metadata for XPCCodingKey;
    v12 = sub_24810E568();
    v39 = v12;
    v13 = swift_allocObject();
    *&v37 = v13;
    *(v13 + 16) = 0x207865646E49;
    *(v13 + 24) = 0xE600000000000000;
    *(v13 + 32) = v5;
    *(v13 + 40) = 0;
    v8[2] = v11 + 1;
    sub_248112238(&v37, &v8[5 * v11 + 4]);
    *(v6 + 16) = v8;
    swift_endAccess();
    v14 = xpc_array_get_value(v4, v5);
    v15 = sub_24811F840(v14);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = v16;
      v36 = v12;
      v26 = *&v15;
      swift_unknownObjectRelease();
      if ((v25 & 1) == 0)
      {
        v2 = v26;
        v3[3] = v5 + 1;
        sub_248116794(v3);
        return v2;
      }

      v35 = sub_248124728();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0);
      *v28 = MEMORY[0x277D839F8];
      v29 = *(v6 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_2481262D0;
      *&v37 = 0x207865646E49;
      *(&v37 + 1) = 0xE600000000000000;
      v40 = v5;

      v31 = sub_248124938();
      MEMORY[0x24C1C6C90](v31);

      v32 = v37;
      *(v30 + 56) = &type metadata for XPCCodingKey;
      *(v30 + 64) = v36;
      v33 = swift_allocObject();
      *(v30 + 32) = v33;
      *(v33 + 16) = v32;
      *(v33 + 32) = v5;
      *(v33 + 40) = 0;
      *&v37 = v29;
      sub_24811D108(v30);
      sub_248124718();
      (*(*(v35 - 8) + 104))(v28, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_248116794(v3);
  }

  return v2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}