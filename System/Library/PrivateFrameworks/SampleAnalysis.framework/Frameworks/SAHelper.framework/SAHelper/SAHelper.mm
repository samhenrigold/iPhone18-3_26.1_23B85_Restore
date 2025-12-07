uint64_t sub_2647DB6D8()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2647DB724()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2647DB75C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2647DB7A4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2647DB7EC()
{
  v1 = sub_2647EEEC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2647DB8D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2647DB924()
{
  result = 0xD000000000000010;
  if ((v0[1] & 1) == 0)
  {
    v2 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80880, &qword_2647EFB90);
    v3 = swift_allocObject();
    v4 = MEMORY[0x277D839F8];
    *(v3 + 16) = xmmword_2647EF9C0;
    v5 = MEMORY[0x277D83A80];
    *(v3 + 56) = v4;
    *(v3 + 64) = v5;
    *(v3 + 32) = v2;
    return sub_2647EF254();
  }

  return result;
}

uint64_t sub_2647DB9D8()
{
  v0 = sub_2647EF1A4();
  __swift_allocate_value_buffer(v0, qword_2814C1230);
  __swift_project_value_buffer(v0, qword_2814C1230);
  return sub_2647EF194();
}

uint64_t sub_2647DBA4C(double a1)
{
  v34 = sub_2647EEE44();
  v1 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2647EEE24();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2647EEE34();
  v8 = *(v7 - 8);
  v25 = v7;
  v26 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2647EEEE4();
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2647EEE54();
  v29 = *(v14 - 8);
  v30 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2647EEE94();
  v27 = *(v17 - 8);
  v28 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2647EEE04();
  sub_2647EEED4();
  (*(v8 + 104))(v10, *MEMORY[0x277CC9460], v7);
  v20 = v3;
  (*(v4 + 104))(v6, *MEMORY[0x277CC9458], v3);
  v22 = v33;
  v21 = v34;
  (*(v1 + 104))(v33, *MEMORY[0x277CC9468], v34);
  sub_2647EEEF4();
  (*(v1 + 8))(v22, v21);
  (*(v4 + 8))(v6, v20);
  (*(v26 + 8))(v10, v25);
  (*(v31 + 8))(v13, v32);
  v23 = sub_2647EEE14();
  (*(v29 + 8))(v16, v30);
  (*(v27 + 8))(v19, v28);
  return v23;
}

uint64_t sub_2647DBEC0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_2647EF044();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80810, &qword_2647EFAB8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v50 - v9;
  sub_2647EF054();
  if ((*(v5 + 48))(v10, 1, v4) != 1)
  {
    v30 = *(v5 + 32);
    v30(v7, v10, v4);
    v30(a2, v7, v4);
LABEL_11:
    v31 = *(v5 + 56);
    v32 = a2;
    return v31(v32, 0, 1, v4);
  }

  sub_2647EAD34(v10, &qword_27FF80810, &qword_2647EFAB8);
  v11 = sub_2647EF074();
  v13 = v12;
  v56 = v11;
  v57 = v12;
  v54 = 0x6E69676562;
  v55 = 0xE500000000000000;
  sub_2647EAB08();
  if (sub_2647EF3A4() & 1) != 0 || (v56 = v11, v57 = v13, v54 = 0x7472617473, v55 = 0xE500000000000000, (sub_2647EF3A4()))
  {

    if (qword_2814C1228 != -1)
    {
      swift_once();
    }

    v14 = sub_2647EF1A4();
    __swift_project_value_buffer(v14, qword_2814C1230);
    v15 = sub_2647EF094();
    v16 = *(v15 - 8);
    MEMORY[0x28223BE20](v15);
    v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v18, a1, v15);
    v19 = sub_2647EF184();
    v20 = sub_2647EF364();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v51 = &v50;
      v22 = v21;
      v23 = swift_slowAlloc();
      v53 = a2;
      v24 = v23;
      v56 = v23;
      *v22 = 136315138;
      v25 = sub_2647EF074();
      v52 = v4;
      v27 = v26;
      (*(v16 + 8))(v18, v15);
      v28 = sub_2647E7ED4(v25, v27, &v56);
      v4 = v52;

      *(v22 + 4) = v28;
      _os_log_impl(&dword_2647DA000, v19, v20, "inferred subtype start due to eventType %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      v29 = v24;
      a2 = v53;
      MEMORY[0x266741280](v29, -1, -1);
      MEMORY[0x266741280](v22, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v18, v15);
    }

    (*(v5 + 104))(a2, *MEMORY[0x277D20AF0], v4);
    goto LABEL_11;
  }

  v56 = v11;
  v57 = v13;
  v54 = 6581861;
  v55 = 0xE300000000000000;
  if (sub_2647EF3A4())
  {

LABEL_16:
    v53 = a2;
    if (qword_2814C1228 != -1)
    {
      swift_once();
    }

    v35 = sub_2647EF1A4();
    __swift_project_value_buffer(v35, qword_2814C1230);
    v36 = sub_2647EF094();
    v37 = *(v36 - 8);
    MEMORY[0x28223BE20](v36);
    v39 = &v50 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v39, a1, v36);
    v40 = sub_2647EF184();
    v41 = sub_2647EF364();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v56 = v51;
      *v42 = 136315138;
      v43 = sub_2647EF074();
      v52 = &v50;
      v44 = v4;
      v46 = v45;
      (*(v37 + 8))(v39, v36);
      v47 = sub_2647E7ED4(v43, v46, &v56);
      v4 = v44;

      *(v42 + 4) = v47;
      _os_log_impl(&dword_2647DA000, v40, v41, "inferred subtype end due to eventType %s", v42, 0xCu);
      v48 = v51;
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x266741280](v48, -1, -1);
      MEMORY[0x266741280](v42, -1, -1);
    }

    else
    {

      (*(v37 + 8))(v39, v36);
    }

    v49 = v53;
    (*(v5 + 104))(v53, *MEMORY[0x277D20AC8], v4);
    v31 = *(v5 + 56);
    v32 = v49;
    return v31(v32, 0, 1, v4);
  }

  v56 = v11;
  v57 = v13;
  v54 = 0x6873696E6966;
  v55 = 0xE600000000000000;
  v34 = sub_2647EF3A4();

  if (v34)
  {
    goto LABEL_16;
  }

  return (*(v5 + 56))(a2, 1, 1, v4);
}

uint64_t sub_2647DC60C(void *a1)
{
  v1 = 0x646564616F6C6E75;
  if (a1)
  {
    v2 = a1;
    v3 = [v2 loadedRequesters];
    if (v3)
    {
      v4 = v3;
      v5 = sub_2647EF2F4();

      if (*(v5 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80870, &qword_2647EFB10);
        sub_2647EADE0();
        v6 = sub_2647EF214();
        v8 = v7;
      }

      else
      {

        v8 = 0xE600000000000000;
        v6 = 0x656E6F206F6ELL;
      }

      MEMORY[0x266740C20](v6, v8);

      return 0x6220646564616F6CLL;
    }

    else
    {
      v9 = [v2 inMemory];

      if (v9)
      {
        return 0x63696D616E7964;
      }
    }
  }

  return v1;
}

id sub_2647DC780(uint64_t a1)
{
  v2 = sub_2647EF0F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (!MEMORY[0x277D20B88] || v6 != *MEMORY[0x277D20B88])
  {
    if (MEMORY[0x277D20B90] && v6 == *MEMORY[0x277D20B90])
    {
      return [objc_allocWithZone(MEMORY[0x277D4B450]) initWithTimestamp:0 endTime:0 userInitiated:0 loadedRequesters:0 inMemory:0];
    }

    if (MEMORY[0x277D20B78] && v6 == *MEMORY[0x277D20B78])
    {
      return [objc_allocWithZone(MEMORY[0x277D4B450]) initWithTimestamp:0 endTime:0 userInitiated:0 loadedRequesters:0 inMemory:1];
    }

    if (MEMORY[0x277D20B80] && v6 == *MEMORY[0x277D20B80])
    {
      v8 = objc_allocWithZone(MEMORY[0x277D4B450]);
      v9 = sub_2647EF2E4();
      v10 = [v8 initWithTimestamp:0 endTime:0 userInitiated:0 loadedRequesters:v9 inMemory:1];

      return v10;
    }

    (*(v3 + 8))(v5, v2);
  }

  sub_2647EAA54();
  swift_allocError();
  *v11 = 0;
  *(v11 + 8) = 1;
  return swift_willThrow();
}

uint64_t static SAModelInfo.gatherModelInfo(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2647DCA88;

  return sub_2647E8AC0(a1, a2);
}

uint64_t sub_2647DCA88(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_2647DCB88()
{
  v1[5] = v0;
  v1[2] = 122;
  v2 = swift_task_alloc();
  v1[6] = v2;
  *v2 = v1;
  v2[1] = sub_2647DCC28;

  return sub_2647EBE74(v1 + 2);
}

uint64_t sub_2647DCC28(char a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v5 = *(v4 + 8);

    return v5(1);
  }

  else
  {
    *(v3 + 24) = 123;
    v7 = (v3 + 24);
    v8 = swift_task_alloc();
    v7[4] = v8;
    *v8 = v4;
    v8[1] = sub_2647DCDA8;

    return sub_2647EBE74(v7);
  }
}

uint64_t sub_2647DCDA8(char a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v5 = *(v4 + 8);

    return v5(1);
  }

  else
  {
    *(v3 + 32) = 125;
    v7 = (v3 + 32);
    v8 = swift_task_alloc();
    v7[4] = v8;
    *v8 = v4;
    v8[1] = sub_2647DCF28;

    return sub_2647EBE74(v7);
  }
}

uint64_t sub_2647DCF28(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_2647DD024(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_2814C1228 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v6 = sub_2647EF1A4();
    v7 = __swift_project_value_buffer(v6, qword_2814C1230);

    v8 = sub_2647EF184();
    v9 = sub_2647EF364();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      swift_beginAccess();
      *(v10 + 4) = *(a2 + 16);

      _os_log_impl(&dword_2647DA000, v8, v9, "done reading model history (%ld callbacks)", v10, 0xCu);
      MEMORY[0x266741280](v10, -1, -1);
    }

    else
    {
    }

    if (a3 >> 62)
    {
      v11 = sub_2647EF3F4();
      if (!v11)
      {
        return;
      }
    }

    else
    {
      v11 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        return;
      }
    }

    if (v11 < 1)
    {
      break;
    }

    v12 = 0;
    v40 = a3 & 0xC000000000000001;
    v38 = a3 & 0xFFFFFFFFFFFFFF8;
    v37 = a3;
    v39 = v11;
    while (1)
    {
      if (v40)
      {
        v17 = MEMORY[0x266740D50](v12, a3);
      }

      else
      {
        if (v12 >= *(v38 + 16))
        {
          goto LABEL_36;
        }

        v17 = *(a3 + 8 * v12 + 32);
      }

      v16 = v17;
      v18 = [v17 loadedChanges];
      sub_2647EACEC(0, &qword_2814C11A8, 0x277D4B450);
      a2 = sub_2647EF2F4();

      if (a2 >> 62)
      {
        v19 = sub_2647EF3F4();
        if (!v19)
        {
LABEL_29:

          goto LABEL_30;
        }
      }

      else
      {
        v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_29;
        }
      }

      v20 = __OFSUB__(v19, 1);
      v21 = v19 - 1;
      if (v20)
      {
        break;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x266740D50](v21, a2);
      }

      else
      {
        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        if (v21 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v22 = *(a2 + 8 * v21 + 32);
      }

      v15 = v22;

      if ([v15 loaded])
      {
        goto LABEL_10;
      }

      v23 = [v15 endTime];
      if (v23)
      {
        a2 = v23;
        v24 = [v23 ge_];

        if (v24)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

LABEL_30:
      a2 = v16;
      v25 = sub_2647EF184();
      v26 = sub_2647EF364();

      v41 = v16;
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v42 = v28;
        *v27 = 136315138;
        v29 = [a2 identifier];
        v30 = sub_2647EF244();
        v31 = v7;
        v33 = v32;

        v34 = sub_2647E7ED4(v30, v33, &v42);
        v7 = v31;

        *(v27 + 4) = v34;
        _os_log_impl(&dword_2647DA000, v25, v26, "Model %s loaded, not mentioned in the biome stream, must have been loaded the whole time", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        v35 = v28;
        a3 = v37;
        MEMORY[0x266741280](v35, -1, -1);
        MEMORY[0x266741280](v27, -1, -1);
      }

      v13 = objc_allocWithZone(MEMORY[0x277D4B450]);
      v14 = sub_2647EF2E4();
      v15 = [v13 initWithTimestamp:0 endTime:0 userInitiated:0 loadedRequesters:v14 inMemory:1];

      [a2 addLoadedChange_];
      v11 = v39;
      v16 = v41;
LABEL_10:

LABEL_11:
      ++v12;

      if (v11 == v12)
      {
        return;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  __break(1u);
}

unint64_t sub_2647DD4C8(unint64_t result)
{
  if (!(result >> 62))
  {
    v1 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v4 = result;
  v1 = sub_2647EF3F4();
  result = v4;
  if (!v1)
  {
    return 0;
  }

LABEL_3:
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
    return MEMORY[0x266740D50](v3, result);
  }

  if ((result & 0xC000000000000001) != 0)
  {
    return MEMORY[0x266740D50](v3, result);
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(result + 8 * v3 + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_2647DD570(char *a1, uint64_t a2, NSObject *a3, char *a4, char *a5, char *a6)
{
  v897 = a6;
  v905 = a5;
  v906 = a3;
  v902 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80808, &qword_2647EFAB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v904 = (&v854 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v898 = &v854 - v10;
  v11 = sub_2647EEEC4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v901 = &v854 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v895 = (&v854 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v903 = (&v854 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v896 = &v854 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v854 - v21;
  v23 = sub_2647EEF84();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_2647EF084();
  sub_2647EEF54();
  v908 = *(v24 + 8);
  (v908)(&v854 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  v26 = sub_2647EEEB4();
  v27 = *(v12 + 8);
  v899 = v22;
  result = v27(v22, v11);
  if ((v26 & 1) == 0)
  {
    return result;
  }

  v891 = v12;
  v887 = v27;
  v888 = (v12 + 8);
  v892 = v11;
  v29 = sub_2647EF004();
  v30 = 0.0;
  if (v31 != 0.0)
  {
    v29 = sub_2647EF004();
    v30 = v32 - *MEMORY[0x277CBECD0];
  }

  MEMORY[0x28223BE20](v29);
  v907 = a1;
  sub_2647EF084();
  v33 = sub_2647EEF94();
  v893 = &v854;
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v854 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2647EEF74();
  (v908)(&v854 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  v37 = *(v34 + 88);
  v894 = v33;
  v38 = v37(v36, v33);
  if (MEMORY[0x277D20608] && v38 == *MEMORY[0x277D20608])
  {
    (*(v34 + 96))(&v854 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v894);
    v39 = SASecondsFromNanoseconds(*(*v36 + 16));
    v40 = [objc_opt_self() timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:v39 machContTimeSec:0.0 wallTime:v30];
  }

  else
  {
    if (!MEMORY[0x277D20600] || v38 != *MEMORY[0x277D20600])
    {
      v900 = &v854;
      if (qword_2814C1228 != -1)
      {
        swift_once();
      }

      v87 = sub_2647EF1A4();
      __swift_project_value_buffer(v87, qword_2814C1230);
      v88 = sub_2647EF094();
      v906 = &v854;
      v89 = *(v88 - 8);
      MEMORY[0x28223BE20](v88);
      v91 = &v854 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
      v92 = *(v89 + 16);
      v93 = v907;
      v907 = v94;
      v92(v91, v93);
      v95 = sub_2647EF184();
      LODWORD(v905) = sub_2647EF384();
      if (os_log_type_enabled(v95, v905))
      {
        v96 = swift_slowAlloc();
        v902 = v96;
        v97 = swift_slowAlloc();
        v904 = v97;
        v901 = &v854;
        v914 = v97;
        *v96 = 136315138;
        MEMORY[0x28223BE20](v97);
        v903 = v95;
        v98 = sub_2647EF084();
        v899 = &v854;
        MEMORY[0x28223BE20](v98);
        sub_2647EEF74();
        (v908)(&v854 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
        v99 = v894;
        v100 = sub_2647EF274();
        v102 = sub_2647E7ED4(v100, v101, &v914);

        v103 = v902;
        *(v902 + 4) = v102;
        (*(v89 + 8))(v91, v907);
        v104 = v903;
        _os_log_impl(&dword_2647DA000, v903, v905, "Unhandled timestamp %s", v103, 0xCu);
        v105 = v904;
        __swift_destroy_boxed_opaque_existential_1Tm(v904);
        MEMORY[0x266741280](v105, -1, -1);
        MEMORY[0x266741280](v103, -1, -1);
      }

      else
      {

        (*(v89 + 8))(v91, v907);
        v99 = v894;
      }

      return (*(v34 + 8))(v36, v99);
    }

    (*(v34 + 96))(&v854 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v894);
    v41 = SASecondsFromNanoseconds(*(*v36 + 16));
    v40 = [objc_opt_self() timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:v41 wallTime:v30];
  }

  v42 = v40;

  v43 = v907;
  v889 = sub_2647EF074();
  v908 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80810, &qword_2647EFAB8);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v48 = &v854 - v47;
  sub_2647DBEC0(v43, &v854 - v47);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80818, &qword_2647EFAC0);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v894 = &v854 - v51;
  sub_2647EF064();
  v52 = v906;
  swift_beginAccess();
  isa = v52[2].isa;
  v54 = __OFADD__(isa, 1);
  v55 = (isa + 1);
  if (v54)
  {
    __break(1u);
    goto LABEL_211;
  }

  v882 = v42;
  v880 = v49;
  v886 = v50;
  v879 = v45;
  v881 = v46;
  v890 = &v854;
  v893 = v48;
  v900 = &v854;
  v52[2].isa = v55;
  if (qword_2814C1228 != -1)
  {
LABEL_211:
    swift_once();
  }

  v56 = sub_2647EF1A4();
  v57 = __swift_project_value_buffer(v56, qword_2814C1230);
  v58 = sub_2647EF094();
  v885 = &v854;
  v59 = *(v58 - 8);
  v60 = v59[8];
  MEMORY[0x28223BE20](v58);
  v61 = &v854 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v59[2];
  v63 = v907;
  v64 = v62(v61, v907, v58);
  v884 = &v854;
  MEMORY[0x28223BE20](v64);
  v65 = v61;
  v66 = v62(v61, v63, v58);
  v883 = &v854;
  MEMORY[0x28223BE20](v66);
  v67 = v61;
  v62(v61, v63, v58);
  v68 = v908;
  swift_bridgeObjectRetain_n();
  v69 = v882;
  v882 = v57;
  v70 = sub_2647EF184();
  v71 = sub_2647EF364();
  v72 = os_log_type_enabled(v70, v71);
  v906 = v69;
  if (v72)
  {
    LODWORD(v877) = v71;
    v878 = v70;
    v73 = swift_slowAlloc();
    v876 = swift_slowAlloc();
    v913[0] = v876;
    *v73 = 136316162;
    [v69 wallTime];
    v75 = sub_2647DBA4C(v74);
    v77 = sub_2647E7ED4(v75, v76, v913);

    *(v73 + 4) = v77;

    *(v73 + 12) = 2048;
    sub_2647EF004();
    *(v73 + 14) = v78;
    v875 = v59[1];
    (v875)(v61, v58);
    *(v73 + 22) = 2080;

    v79 = sub_2647E7ED4(v889, v68, v913);

    *(v73 + 24) = v79;
    v80 = swift_bridgeObjectRelease_n();
    v874 = &v854;
    *(v73 + 32) = 2080;
    MEMORY[0x28223BE20](v80);
    v82 = &v854 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2647EF054();
    v83 = sub_2647EF044();
    v84 = *(v83 - 8);
    if ((*(v84 + 48))(v82, 1, v83) == 1)
    {
      sub_2647EAD34(v82, &qword_27FF80810, &qword_2647EFAB8);
      v85 = 0xE400000000000000;
      v86 = 1701736302;
    }

    else
    {
      v86 = sub_2647EF034();
      v85 = v108;
      (*(v84 + 8))(v82, v83);
    }

    v109 = sub_2647E7ED4(v86, v85, v913);

    *(v73 + 34) = v109;
    v110 = v875;
    v111 = (v875)(v65, v58);
    *(v73 + 42) = 2080;
    v107 = v886;
    MEMORY[0x28223BE20](v111);
    sub_2647EF064();
    v112 = sub_2647EF394();
    v114 = v113;
    sub_2647EAD34(&v854 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27FF80818, &qword_2647EFAC0);
    v115 = sub_2647E7ED4(v112, v114, v913);

    *(v73 + 44) = v115;
    (v110)(v67, v58);
    v116 = v878;
    _os_log_impl(&dword_2647DA000, v878, v877, "%s (%f) model event %s subtype %s for %s", v73, 0x34u);
    v117 = v876;
    swift_arrayDestroy();
    MEMORY[0x266741280](v117, -1, -1);
    MEMORY[0x266741280](v73, -1, -1);
  }

  else
  {

    v106 = v59[1];
    v106(v61, v58);
    swift_bridgeObjectRelease_n();
    v106(v61, v58);
    v106(v61, v58);
    v107 = v886;
  }

  v118 = sub_2647EF174();
  v119 = *(v118 - 8);
  v120 = *(v119 + 64);
  v121 = MEMORY[0x28223BE20](v118);
  MEMORY[0x28223BE20](v121);
  sub_2647EAEF4(v894, &v854 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27FF80818, &qword_2647EFAC0);
  if ((*(v119 + 48))(&v854 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v118) == 1)
  {
    sub_2647EAD34(&v854 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27FF80818, &qword_2647EFAC0);
    v122 = v908;
    v913[0] = v889;
    v913[1] = v908;
    v911 = 0xD00000000000001BLL;
    v912 = 0x80000002647EFE60;
    sub_2647EAB08();
    v123 = sub_2647EF3A4();
    v124 = v893;
    v125 = v892;
    if ((v123 & 1) == 0)
    {

      sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
      v156 = v124;
      return sub_2647EAD34(v156, &qword_27FF80810, &qword_2647EFAB8);
    }

    v126 = sub_2647EEFE4();
    v127 = *(v126 - 8);
    MEMORY[0x28223BE20](v126);
    v129 = &v854 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2647EEFF4();
    v130 = v904;
    sub_2647EEFD4();
    (*(v127 + 8))(v129, v126);
    v131 = v891;
    if ((*(v891 + 48))(v130, 1, v125) == 1)
    {
      sub_2647EAD34(v130, &qword_27FF80808, &qword_2647EFAB0);
      swift_bridgeObjectRetain_n();
      v132 = sub_2647EF184();
      v133 = sub_2647EF374();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v913[0] = v135;
        *v134 = 136315138;

        v136 = sub_2647E7ED4(v889, v122, v913);

        *(v134 + 4) = v136;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_2647DA000, v132, v133, "%s has no modelManagerRequestIdentifier", v134, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v135);
        MEMORY[0x266741280](v135, -1, -1);
        MEMORY[0x266741280](v134, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      goto LABEL_75;
    }

    v170 = v903;
    (*(v131 + 32))(v903, v130, v125);
    v171 = v902;
    swift_beginAccess();
    v172 = *(v171 + 2);
    if (!*(v172 + 16) || (v173 = sub_2647EC7A0(v170), (v174 & 1) == 0))
    {
      swift_endAccess();
      v208 = v901;
      (*(v891 + 16))(v901, v170, v125);
      swift_bridgeObjectRetain_n();
      v209 = sub_2647EF184();
      v210 = sub_2647EF374();
      if (os_log_type_enabled(v209, v210))
      {
        v211 = swift_slowAlloc();
        v907 = swift_slowAlloc();
        v913[0] = v907;
        *v211 = 136315394;

        v212 = sub_2647E7ED4(v889, v122, v913);

        *(v211 + 4) = v212;
        swift_bridgeObjectRelease_n();
        *(v211 + 12) = 2080;
        v213 = sub_2647EEEA4();
        v215 = sub_2647E7ED4(v213, v214, v913);

        *(v211 + 14) = v215;

        v216 = v887;
        (v887)(v208, v125);
        _os_log_impl(&dword_2647DA000, v209, v210, "%s %s has no existing execution", v211, 0x16u);
        v217 = v907;
        swift_arrayDestroy();
        MEMORY[0x266741280](v217, -1, -1);
        MEMORY[0x266741280](v211, -1, -1);

        (v216)(v903, v125);
      }

      else
      {

        v285 = v887;
        (v887)(v208, v125);
        swift_bridgeObjectRelease_n();
        (v285)(v170, v125);
      }

LABEL_75:
      sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
      v156 = v893;
      return sub_2647EAD34(v156, &qword_27FF80810, &qword_2647EFAB8);
    }

    v175 = *(*(v172 + 56) + 8 * v173);
    swift_endAccess();
    v176 = *(v891 + 16);
    v177 = v899;
    v891 += 16;
    v905 = v176;
    (v176)(v899, v170, v125);
    swift_beginAccess();
    v178 = v175;
    sub_2647E6DB8(0, v177);
    v179 = swift_endAccess();
    v180 = v881;
    MEMORY[0x28223BE20](v179);
    v181 = (v180 + 15) & 0xFFFFFFFFFFFFFFF0;
    v182 = &v854 - v181;
    sub_2647EAEF4(v893, &v854 - v181, &qword_27FF80810, &qword_2647EFAB8);
    v183 = v906;
    v184 = v178;
    v185 = v183;
    v186 = v184;
    v187 = sub_2647EF184();
    v188 = sub_2647EF364();
    v189 = os_log_type_enabled(v187, v188);
    v906 = v186;
    v907 = v185;
    if (v189)
    {
      v904 = &v854;
      v190 = swift_slowAlloc();
      v902 = swift_slowAlloc();
      v913[0] = v902;
      *v190 = 136315650;
      v191 = [v186 debugDescription];
      v192 = sub_2647EF244();
      v194 = v193;

      v195 = sub_2647E7ED4(v192, v194, v913);

      *(v190 + 4) = v195;

      v901 = &v854;
      *(v190 + 12) = 2080;
      MEMORY[0x28223BE20](v196);
      v197 = &v854 - v181;
      sub_2647EAEF4(&v854 - v181, &v854 - v181, &qword_27FF80810, &qword_2647EFAB8);
      v198 = sub_2647EF044();
      v199 = *(v198 - 8);
      if ((*(v199 + 48))(v197, 1, v198) == 1)
      {
        v200 = 0x7974627573206F6ELL;
        sub_2647EAD34(v197, &qword_27FF80810, &qword_2647EFAB8);
        v201 = 0xEA00000000006570;
      }

      else
      {
        v200 = sub_2647EF034();
        v201 = v351;
        (*(v199 + 8))(v197, v198);
      }

      v352 = sub_2647E7ED4(v200, v201, v913);

      *(v190 + 14) = v352;
      sub_2647EAD34(v182, &qword_27FF80810, &qword_2647EFAB8);
      *(v190 + 22) = 2080;
      v353 = v907;
      v354 = [v907 debugDescription];
      v355 = sub_2647EF244();
      v357 = v356;

      v358 = sub_2647E7ED4(v355, v357, v913);

      *(v190 + 24) = v358;

      _os_log_impl(&dword_2647DA000, v187, v188, "%s %s at %s", v190, 0x20u);
      v359 = v902;
      swift_arrayDestroy();
      MEMORY[0x266741280](v359, -1, -1);
      MEMORY[0x266741280](v190, -1, -1);

      v293 = v881;
    }

    else
    {

      sub_2647EAD34(&v854 - v181, &qword_27FF80810, &qword_2647EFAB8);
      v293 = v180;
    }

    MEMORY[0x28223BE20](v292);
    v360 = (v293 + 15) & 0xFFFFFFFFFFFFFFF0;
    v361 = &v854 - v360;
    v362 = v893;
    sub_2647EAEF4(v893, &v854 - v360, &qword_27FF80810, &qword_2647EFAB8);
    v363 = sub_2647EF044();
    v364 = *(v363 - 8);
    v365 = (*(v364 + 48))(&v854 - v360, 1, v363);
    v366 = v908;
    if (v365 == 1)
    {

      (v887)(v903, v892);
      sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
      sub_2647EAD34(v362, &qword_27FF80810, &qword_2647EFAB8);
      return sub_2647EAD34(v361, &qword_27FF80810, &qword_2647EFAB8);
    }

    MEMORY[0x28223BE20](v365);
    v367 = &v854 - v360;
    sub_2647EAEF4(v361, v367, &qword_27FF80810, &qword_2647EFAB8);
    v368 = (*(v364 + 88))(v367, v363);
    if (MEMORY[0x277D20B00] && v368 == *MEMORY[0x277D20B00])
    {

LABEL_114:
LABEL_142:
      (v887)(v903, v892);
      sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
      sub_2647EAD34(v893, &qword_27FF80810, &qword_2647EFAB8);
      return sub_2647EAD34(v361, &qword_27FF80810, &qword_2647EFAB8);
    }

    v369 = v906;
    if (MEMORY[0x277D20AF0] && v368 == *MEMORY[0x277D20AF0])
    {
      v370 = v895;
      v371 = v892;
      (v905)(v895, v903, v892);
      swift_bridgeObjectRetain_n();
      v372 = sub_2647EF184();
      v373 = sub_2647EF374();
      if (os_log_type_enabled(v372, v373))
      {
        v374 = swift_slowAlloc();
        v905 = &v854;
        v375 = v366;
        v376 = v374;
        v904 = swift_slowAlloc();
        v913[0] = v904;
        *v376 = 136315394;

        v377 = v370;
        v378 = sub_2647E7ED4(v889, v375, v913);

        *(v376 + 4) = v378;
        swift_bridgeObjectRelease_n();
        *(v376 + 12) = 2080;
        v379 = sub_2647EEEA4();
        v381 = sub_2647E7ED4(v379, v380, v913);

        *(v376 + 14) = v381;

        v382 = v887;
        (v887)(v377, v371);
        _os_log_impl(&dword_2647DA000, v372, v373, "%s %s start without any metadata", v376, 0x16u);
        v383 = v904;
        swift_arrayDestroy();
        MEMORY[0x266741280](v383, -1, -1);
        MEMORY[0x266741280](v376, -1, -1);
      }

      else
      {

        v382 = v887;
        (v887)(v370, v371);

        swift_bridgeObjectRelease_n();
      }

      (v382)(v903, v371);
      sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
      sub_2647EAD34(v893, &qword_27FF80810, &qword_2647EFAB8);
      return sub_2647EAD34(v361, &qword_27FF80810, &qword_2647EFAB8);
    }

    if (MEMORY[0x277D20AC8] && v368 == *MEMORY[0x277D20AC8])
    {

      v384 = v907;
      [v369 setEndTime:v907];
    }

    else
    {
      if (!MEMORY[0x277D20AD0] || v368 != *MEMORY[0x277D20AD0])
      {
        if (!MEMORY[0x277D20AE0] || v368 != *MEMORY[0x277D20AE0])
        {

          (v887)(v903, v892);
          sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
          sub_2647EAD34(v893, &qword_27FF80810, &qword_2647EFAB8);
          (*(v364 + 8))(v367, v363);
          return sub_2647EAD34(v361, &qword_27FF80810, &qword_2647EFAB8);
        }

        goto LABEL_114;
      }

      v384 = [v369 startTime];
      [v369 setEndTime:v384];
    }

    goto LABEL_142;
  }

  v903 = &v854;
  v904 = v119;
  v137 = *(v119 + 32);
  v886 = &v854 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v885 = v118;
  v137(v886, &v854 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0), v118);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80820, &qword_2647EFAC8);
  MEMORY[0x28223BE20](v138 - 8);
  v140 = &v854 - v139;
  v141 = sub_2647EEFE4();
  v142 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v901 = v143;
  v144 = &v854 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2647EEFF4();
  sub_2647EEFB4();
  v147 = *(v142 + 8);
  v146 = (v142 + 8);
  v145 = v147;
  (v147)(v144, v141);
  v148 = sub_2647EF024();
  v149 = *(v148 - 8);
  if ((*(v149 + 48))(v140, 1, v148) == 1)
  {
    sub_2647EAD34(v140, &qword_27FF80820, &qword_2647EFAC8);
    v150 = v908;
    swift_bridgeObjectRetain_n();
    v151 = sub_2647EF184();
    v152 = sub_2647EF364();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      v913[0] = v154;
      *v153 = 136315138;

      v155 = sub_2647E7ED4(v889, v150, v913);

      *(v153 + 4) = v155;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_2647DA000, v151, v152, "No identifier for %s, ignoring", v153, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v154);
      MEMORY[0x266741280](v154, -1, -1);
      MEMORY[0x266741280](v153, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (v904[1])(v886, v885);
    sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
    return sub_2647EAD34(v893, &qword_27FF80810, &qword_2647EFAB8);
  }

  v878 = v145;
  v880 = v141;
  v157 = sub_2647EF014();
  v159 = v158;
  (*(v149 + 8))(v140, v148);
  swift_beginAccess();

  v895 = v157;
  v161 = 0;
  v162 = sub_2647EAB5C(v160, v157, v159);

  if (v162)
  {
    v905 = v162;
    swift_bridgeObjectRetain_n();
    v163 = sub_2647EF184();
    v164 = sub_2647EF364();
    v165 = os_log_type_enabled(v163, v164);
    v166 = v886;
    if (v165)
    {
      v167 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      v911 = v168;
      *v167 = 136315138;

      v169 = sub_2647E7ED4(v895, v159, &v911);

      *(v167 + 4) = v169;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_2647DA000, v163, v164, "Found existing model %s", v167, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v168);
      MEMORY[0x266741280](v168, -1, -1);
      MEMORY[0x266741280](v167, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v218 = v904;
    v219 = v885;
  }

  else
  {
    v884 = 0;
    swift_bridgeObjectRetain_n();
    v202 = sub_2647EF184();
    v203 = sub_2647EF364();
    v204 = os_log_type_enabled(v202, v203);
    v166 = v886;
    if (v204)
    {
      v205 = swift_slowAlloc();
      v206 = swift_slowAlloc();
      v911 = v206;
      *v205 = 136315138;

      v207 = sub_2647E7ED4(v895, v159, &v911);

      *(v205 + 4) = v207;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_2647DA000, v202, v203, "Creating new model %s", v205, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v206);
      MEMORY[0x266741280](v206, -1, -1);
      MEMORY[0x266741280](v205, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v218 = v904;
    v219 = v885;
    v220 = objc_allocWithZone(MEMORY[0x277D4B440]);

    v221 = sub_2647EF234();

    v222 = [v220 initWithIdentifier_];

    v223 = v905;
    swift_beginAccess();
    v224 = v222;
    MEMORY[0x266740C50]();
    if (*((*(v223 + 2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v223 + 2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2647EF304();
    }

    v905 = v224;
    sub_2647EF314();
    swift_endAccess();
    v161 = v884;
  }

  v225 = sub_2647EF164();
  v899 = &v854;
  v883 = *(v225 - 8);
  v226 = MEMORY[0x28223BE20](v225);
  v884 = &v854 - ((v227 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v226);
  v228 = (&v854 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0));
  (v218[2])(v228, v166, v219);
  v229 = (v218[11])(v228, v219);
  if (MEMORY[0x277D20BB0] && v229 == *MEMORY[0x277D20BB0])
  {
    v877 = v159;
    v874 = v146;
    (v218[12])(v228, v219);
    v230 = swift_projectBox();
    (v883[2])(v884, v230, v225);

    v232 = v881;
    MEMORY[0x28223BE20](v231);
    v233 = (v232 + 15) & 0xFFFFFFFFFFFFFFF0;
    v234 = &v854 - v233;
    v235 = v893;
    sub_2647EAEF4(v893, &v854 - v233, &qword_27FF80810, &qword_2647EFAB8);
    v236 = sub_2647EF044();
    v895 = *(v236 - 1);
    v237 = v895[6];
    v897 = v236;
    v879 = v895 + 6;
    v875 = v237;
    v238 = (v237)(&v854 - v233, 1);
    v876 = v225;
    if (v238 == 1)
    {
      goto LABEL_61;
    }

    v873 = &v854;
    MEMORY[0x28223BE20](v238);
    sub_2647EAEF4(&v854 - v233, &v854 - v233, &qword_27FF80810, &qword_2647EFAB8);
    v239 = v897;
    v240 = (v895[11])(&v854 - v233, v897);
    if (MEMORY[0x277D20B00] && v240 == *MEMORY[0x277D20B00])
    {
LABEL_60:
      v232 = v881;
      v235 = v893;
LABEL_61:
      v241 = sub_2647EAD34(&v854 - v233, &qword_27FF80810, &qword_2647EFAB8);
      MEMORY[0x28223BE20](v241);
      v242 = &v854 - v233;
      sub_2647EAEF4(v235, &v854 - v233, &qword_27FF80810, &qword_2647EFAB8);
      v243 = v905;
      v244 = sub_2647EF184();
      v245 = sub_2647EF364();
      if (os_log_type_enabled(v244, v245))
      {
        v907 = &v854;
        v246 = swift_slowAlloc();
        v905 = swift_slowAlloc();
        v911 = v905;
        *v246 = 136315394;
        v247 = [v243 identifier];
        v248 = sub_2647EF244();
        v250 = v249;

        v251 = sub_2647E7ED4(v248, v250, &v911);

        *(v246 + 4) = v251;

        *(v246 + 12) = 2080;
        MEMORY[0x28223BE20](v252);
        v253 = &v854 - ((v232 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_2647EAEF4(v242, v253, &qword_27FF80810, &qword_2647EFAB8);
        v254 = v897;
        if ((v875)(v253, 1, v897) == 1)
        {
          v255 = 0x7974627573206F6ELL;
          sub_2647EAD34(v253, &qword_27FF80810, &qword_2647EFAB8);
          v256 = 0xEA00000000006570;
        }

        else
        {
          v255 = sub_2647EF034();
          v256 = v308;
          (v895[1])(v253, v254);
        }

        v309 = sub_2647E7ED4(v255, v256, &v911);

        *(v246 + 14) = v309;

        sub_2647EAD34(v242, &qword_27FF80810, &qword_2647EFAB8);
        _os_log_impl(&dword_2647DA000, v244, v245, "Model %s mmExecuteRequest %s", v246, 0x16u);
        v310 = v905;
        swift_arrayDestroy();
        MEMORY[0x266741280](v310, -1, -1);
        MEMORY[0x266741280](v246, -1, -1);

        (v883[1])(v884, v876);
        (v904[1])(v886, v885);
        sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
        return sub_2647EAD34(v893, &qword_27FF80810, &qword_2647EFAB8);
      }

      else
      {

        sub_2647EAD34(v242, &qword_27FF80810, &qword_2647EFAB8);

        (v883[1])(v884, v876);
        (v904[1])(v886, v885);
        sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
        return sub_2647EAD34(v235, &qword_27FF80810, &qword_2647EFAB8);
      }
    }

    if (MEMORY[0x277D20AF0] && v240 == *MEMORY[0x277D20AF0])
    {
      v872 = &v854;
      v286 = sub_2647EF154();
      if (v287)
      {
        v288 = v286;
        v289 = v287;
        v290 = MEMORY[0x266740AB0]();
        if (v291)
        {
          goto LABEL_151;
        }
      }

      else
      {
        v421 = sub_2647EF144();
        if (!v422)
        {
          v290 = MEMORY[0x266740AB0](v421);
          if (v597)
          {
            v290 = MEMORY[0x266740AA0](v290);
            if (v598)
            {
              v289 = 0;
              goto LABEL_151;
            }
          }

          v424 = v290;
          v911 = 0;
          v912 = 0xE000000000000000;
          v425 = 91;
          v426 = 0xE100000000000000;
          goto LABEL_150;
        }

        v288 = v421;
        v289 = v422;
        v290 = MEMORY[0x266740AA0]();
        if (v423)
        {
LABEL_151:
          MEMORY[0x28223BE20](v290);
          v429 = &v854 - ((v428 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_2647EEFF4();
          sub_2647EEFA4();
          v431 = v430;
          (v878)(v429, v880);
          v432 = [objc_allocWithZone(MEMORY[0x277D4B448]) init];
          if (v289)
          {
            v433 = sub_2647EF234();
          }

          else
          {
            v433 = 0;
          }

          v435 = v905;
          v434 = v906;
          [v432 setRequester_];

          if (v431)
          {

            v436 = sub_2647EF234();
          }

          else
          {
            v436 = 0;
          }

          v905 = v431;
          [v432 setUseCaseID_];

          [v432 setStartTime_];
          v437 = v435;
          [v437 addExecution_];
          v438 = v432;
          v439 = v437;
          v440 = v438;
          v441 = sub_2647EF184();
          v442 = sub_2647EF354();
          v443 = os_log_type_enabled(v441, v442);
          v897 = v439;
          v895 = v440;
          if (v443)
          {
            v444 = swift_slowAlloc();
            v881 = swift_slowAlloc();
            v911 = v881;
            *v444 = 136315394;
            v445 = v439;
            v446 = [v439 identifier];
            v447 = sub_2647EF244();
            v449 = v448;

            v450 = sub_2647E7ED4(v447, v449, &v911);

            *(v444 + 4) = v450;

            *(v444 + 12) = 2080;
            v451 = [v440 debugDescription];
            v452 = sub_2647EF244();
            v454 = v453;

            v455 = sub_2647E7ED4(v452, v454, &v911);

            *(v444 + 14) = v455;

            _os_log_impl(&dword_2647DA000, v441, v442, "Model %s mmExecuteRequest start %s", v444, 0x16u);
            v456 = v881;
            swift_arrayDestroy();
            MEMORY[0x266741280](v456, -1, -1);
            MEMORY[0x266741280](v444, -1, -1);
          }

          else
          {
          }

          v457 = v904;
          v458 = v885;
          v459 = v898;
          MEMORY[0x28223BE20](v460);
          v462 = &v854 - ((v461 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_2647EEFF4();
          sub_2647EEFD4();
          (v878)(v462, v880);
          v463 = v891;
          v464 = v892;
          if ((*(v891 + 48))(v459, 1, v892) == 1)
          {
            sub_2647EAD34(v459, &qword_27FF80808, &qword_2647EFAB0);
            v465 = v908;
            swift_bridgeObjectRetain_n();
            v466 = sub_2647EF184();
            v467 = sub_2647EF374();
            if (os_log_type_enabled(v466, v467))
            {
              v468 = swift_slowAlloc();
              v469 = swift_slowAlloc();
              v911 = v469;
              *v468 = 136315138;

              v470 = sub_2647E7ED4(v889, v465, &v911);
              v471 = v883;
              v472 = v234;
              v473 = v470;

              *(v468 + 4) = v473;
              v234 = v472;

              swift_bridgeObjectRelease_n();

              _os_log_impl(&dword_2647DA000, v466, v467, "%s has no modelManagerRequestIdentifier", v468, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v469);
              MEMORY[0x266741280](v469, -1, -1);
              MEMORY[0x266741280](v468, -1, -1);

              (v471[1])(v884, v876);
              (v457[1])(v886, v885);
            }

            else
            {

              swift_bridgeObjectRelease_n();

              (v883[1])(v884, v876);
              (v457[1])(v886, v458);
            }

            sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
            sub_2647EAD34(v893, &qword_27FF80810, &qword_2647EFAB8);
            return sub_2647EAD34(v234, &qword_27FF80810, &qword_2647EFAB8);
          }

          else
          {

            v474 = v896;
            (*(v463 + 32))(v896, v459, v464);
            v475 = v902;
            swift_beginAccess();
            v476 = v895;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v910 = *(v475 + 2);
            sub_2647ED64C(v476, v474, isUniquelyReferenced_nonNull_native);
            *(v475 + 2) = v910;
            swift_endAccess();

            (v887)(v474, v464);
            (v883[1])(v884, v876);
            (v457[1])(v886, v458);
            sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
            sub_2647EAD34(v893, &qword_27FF80810, &qword_2647EFAB8);
            return sub_2647EAD34(v234, &qword_27FF80810, &qword_2647EFAB8);
          }
        }
      }

      v424 = v290;
      v911 = 0;
      v912 = 0xE000000000000000;
      MEMORY[0x266740C20](0, 0xE000000000000000);
      MEMORY[0x266740C20](v288, v289);

      v425 = 23328;
      v426 = 0xE200000000000000;
LABEL_150:
      MEMORY[0x266740C20](v425, v426);
      v910 = v424;
      v427 = sub_2647EF434();
      MEMORY[0x266740C20](v427);

      v290 = MEMORY[0x266740C20](93, 0xE100000000000000);
      v289 = v912;
      goto LABEL_151;
    }

    if (MEMORY[0x277D20AC8] && v240 == *MEMORY[0x277D20AC8])
    {
      v294 = [v905 executions];
      sub_2647EACEC(0, &qword_27FF80828, 0x277D4B448);
      v295 = sub_2647EF2F4();

      v296 = sub_2647DD4C8(v295);

      v298 = v883;
      if (!v296)
      {
        goto LABEL_90;
      }

      v299 = [v296 endTime];
      if (v299)
      {
        v300 = v299;

LABEL_90:
        v907 = v234;
        v301 = v881;
        MEMORY[0x28223BE20](v297);
        v302 = (v301 + 15) & 0xFFFFFFFFFFFFFFF0;
        v303 = &v854 - v302;
        v304 = v893;
        sub_2647EAEF4(v893, &v854 - v302, &qword_27FF80810, &qword_2647EFAB8);
        v305 = v905;
        v306 = sub_2647EF184();
        v307 = sub_2647EF374();
        if (os_log_type_enabled(v306, v307))
        {
          goto LABEL_105;
        }

LABEL_146:

        sub_2647EAD34(v303, &qword_27FF80810, &qword_2647EFAB8);

        (v883[1])(v884, v876);
        (v904[1])(v886, v885);
        sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
        sub_2647EAD34(v304, &qword_27FF80810, &qword_2647EFAB8);
        return sub_2647EAD34(v907, &qword_27FF80810, &qword_2647EFAB8);
      }

      v596 = v906;
      [v296 setEndTime_];
LABEL_205:

      (v298[1])(v884, v876);
      (v218[1])(v886, v219);
      sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
      sub_2647EAD34(v893, &qword_27FF80810, &qword_2647EFAB8);
      return sub_2647EAD34(v234, &qword_27FF80810, &qword_2647EFAB8);
    }

    if (!MEMORY[0x277D20AD0] || v240 != *MEMORY[0x277D20AD0])
    {
      if (MEMORY[0x277D20AE0] && v240 == *MEMORY[0x277D20AE0])
      {
        goto LABEL_60;
      }

      v907 = &v854 - v233;
      v402 = v895[1];
      ++v895;
      v902 = v402;
      v403 = (v402)(&v854 - v233, v239);
      v404 = v881;
      MEMORY[0x28223BE20](v403);
      v405 = v893;
      v406 = (v404 + 15) & 0xFFFFFFFFFFFFFFF0;
      v407 = &v854 - v406;
      sub_2647EAEF4(v893, &v854 - v406, &qword_27FF80810, &qword_2647EFAB8);
      v408 = v905;
      v409 = sub_2647EF184();
      v410 = sub_2647EF384();
      if (os_log_type_enabled(v409, v410))
      {
        LODWORD(v901) = v410;
        v905 = &v854;
        v411 = swift_slowAlloc();
        v898 = swift_slowAlloc();
        v911 = v898;
        *v411 = 136315394;
        v412 = [v408 identifier];
        v413 = sub_2647EF244();
        v415 = v414;

        v416 = sub_2647E7ED4(v413, v415, &v911);

        *(v411 + 4) = v416;

        *(v411 + 12) = 2080;
        MEMORY[0x28223BE20](v417);
        sub_2647EAEF4(&v854 - v406, &v854 - v406, &qword_27FF80810, &qword_2647EFAB8);
        v418 = v897;
        if ((v875)(&v854 - v406, 1, v897) == 1)
        {
          v419 = 0x7974627573206F6ELL;
          sub_2647EAD34(&v854 - v406, &qword_27FF80810, &qword_2647EFAB8);
          v420 = 0xEA00000000006570;
        }

        else
        {
          v419 = sub_2647EF034();
          v420 = v533;
          (v902)(&v854 - v406, v418);
        }

        v534 = v893;
        v535 = v883;
        v536 = sub_2647E7ED4(v419, v420, &v911);

        *(v411 + 14) = v536;

        sub_2647EAD34(v407, &qword_27FF80810, &qword_2647EFAB8);
        _os_log_impl(&dword_2647DA000, v409, v901, "Model %s mmExecuteRequest unknown subtype %s", v411, 0x16u);
        v537 = v898;
        swift_arrayDestroy();
        MEMORY[0x266741280](v537, -1, -1);
        MEMORY[0x266741280](v411, -1, -1);

        (v535[1])(v884, v876);
        (v904[1])(v886, v885);
        sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
        sub_2647EAD34(v534, &qword_27FF80810, &qword_2647EFAB8);
      }

      else
      {

        sub_2647EAD34(&v854 - v406, &qword_27FF80810, &qword_2647EFAB8);

        (v883[1])(v884, v876);
        (v904[1])(v886, v885);
        sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
        sub_2647EAD34(v405, &qword_27FF80810, &qword_2647EFAB8);
      }

      return sub_2647EAD34(v907, &qword_27FF80810, &qword_2647EFAB8);
    }

    v333 = [v905 executions];
    sub_2647EACEC(0, &qword_27FF80828, 0x277D4B448);
    v334 = sub_2647EF2F4();

    v296 = sub_2647DD4C8(v334);

    v298 = v883;
    if (v296)
    {
      v336 = [v296 endTime];
      if (!v336)
      {

        v596 = [v296 startTime];
        [v296 setEndTime_];

        goto LABEL_205;
      }

      v337 = v336;
    }

    v907 = v234;
    v338 = v881;
    MEMORY[0x28223BE20](v335);
    v302 = (v338 + 15) & 0xFFFFFFFFFFFFFFF0;
    v303 = &v854 - v302;
    v304 = v893;
    sub_2647EAEF4(v893, &v854 - v302, &qword_27FF80810, &qword_2647EFAB8);
    v305 = v905;
    v306 = sub_2647EF184();
    v307 = sub_2647EF374();
    if (os_log_type_enabled(v306, v307))
    {
LABEL_105:
      LODWORD(v902) = v307;
      v905 = &v854;
      v339 = swift_slowAlloc();
      v901 = swift_slowAlloc();
      v911 = v901;
      *v339 = 136315394;
      v340 = [v305 identifier];
      v341 = sub_2647EF244();
      v343 = v342;

      v344 = sub_2647E7ED4(v341, v343, &v911);

      *(v339 + 4) = v344;

      *(v339 + 12) = 2080;
      MEMORY[0x28223BE20](v345);
      v346 = &v854 - v302;
      sub_2647EAEF4(v303, &v854 - v302, &qword_27FF80810, &qword_2647EFAB8);
      v347 = v897;
      v348 = (v875)(&v854 - v302, 1, v897);
      v872 = &v854;
      if (v348 == 1)
      {
        v349 = 0x7974627573206F6ELL;
        sub_2647EAD34(v346, &qword_27FF80810, &qword_2647EFAB8);
        v350 = 0xEA00000000006570;
      }

      else
      {
        v349 = sub_2647EF034();
        v350 = v529;
        (v895[1])(v346, v347);
      }

      v530 = v883;
      v531 = sub_2647E7ED4(v349, v350, &v911);

      *(v339 + 14) = v531;

      sub_2647EAD34(v303, &qword_27FF80810, &qword_2647EFAB8);
      _os_log_impl(&dword_2647DA000, v306, v902, "Model %s mmExecuteRequest %s, but we didn't know it was executing", v339, 0x16u);
      v532 = v901;
      swift_arrayDestroy();
      MEMORY[0x266741280](v532, -1, -1);
      MEMORY[0x266741280](v339, -1, -1);

      (v530[1])(v884, v876);
      (v904[1])(v886, v885);
      sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
      sub_2647EAD34(v893, &qword_27FF80810, &qword_2647EFAB8);
      return sub_2647EAD34(v907, &qword_27FF80810, &qword_2647EFAB8);
    }

    goto LABEL_146;
  }

  if (!MEMORY[0x277D20BA8] || v229 != *MEMORY[0x277D20BA8])
  {

    v284 = v218[1];
    v284(v166, v219);
    sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
    sub_2647EAD34(v893, &qword_27FF80810, &qword_2647EFAB8);
    return (v284)(v228, v219);
  }

  v884 = v161;
  v889 = &v854;
  (v218[12])(v228, v219);
  v257 = *v228;
  v258 = sub_2647EF114();
  v892 = v257;
  v259 = swift_projectBox();
  v896 = &v854;
  v260 = *(v258 - 8);
  MEMORY[0x28223BE20](v259);
  v887 = v261;
  v891 = v260;
  v263 = *(v260 + 16);
  v262 = (v260 + 16);
  v902 = &v854 - ((&v261[1].isa + 7) & 0xFFFFFFFFFFFFFFF0);
  v898 = v258;
  v888 = v263;
  v264 = (v263)();
  v265 = v881;
  MEMORY[0x28223BE20](v264);
  v266 = (v265 + 15) & 0xFFFFFFFFFFFFFFF0;
  v267 = &v854 - v266;
  v268 = v893;
  sub_2647EAEF4(v893, &v854 - v266, &qword_27FF80810, &qword_2647EFAB8);
  v269 = sub_2647EF044();
  v270 = *(v269 - 8);
  v271 = (*(v270 + 48))(&v854 - v266, 1, v269);
  if (v271 != 1)
  {
    v883 = &v854;
    MEMORY[0x28223BE20](v271);
    sub_2647EAEF4(&v854 - v266, &v854 - v266, &qword_27FF80810, &qword_2647EFAB8);
    v272 = (*(v270 + 88))(&v854 - v266, v269);
    if (!MEMORY[0x277D20B00] || v272 != *MEMORY[0x277D20B00])
    {
      if (MEMORY[0x277D20AF0] && v272 == *MEMORY[0x277D20AF0])
      {
        v872 = v262;
        v881 = &v854;
        v879 = (&v854 - v266);
        v877 = v159;
        v273 = sub_2647EF0F4();
        v874 = &v854;
        v274 = *(v273 - 8);
        MEMORY[0x28223BE20](v273);
        v875 = v275;
        v871 = ((v275 + 15) & 0xFFFFFFFFFFFFFFF0);
        v876 = (&v854 - v871);
        v870 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80860, &qword_2647EFB00);
        v276 = *(*(v870 - 8) + 64);
        v277 = (v276 + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v870);
        v278 = v902;
        sub_2647EF104();
        v279 = v274;
        v280 = (v274 + 48);
        v281 = *(v274 + 48);
        v884 = v273;
        v282 = v281(&v854 - v277, 1, v273);
        v869 = v276;
        if (v282 == 1)
        {
          v901 = v281;
          v907 = v280;
          v873 = &v854;
          v283 = sub_2647EAD34(&v854 - v277, &qword_27FF80860, &qword_2647EFB00);
        }

        else
        {
          v868 = v279;
          v478 = v279[4];
          v479 = v884;
          v480 = v478(v876, &v854 - v277, v884);
          v873 = &v854;
          v481 = MEMORY[0x28223BE20](v480);
          v867 = (&v854 - v871);
          v871 = &v854;
          MEMORY[0x28223BE20](v481);
          sub_2647EF0E4();
          if (v281(&v854 - v277, 1, v479) != 1)
          {
            v538 = v867;
            v539 = v884;
            v540 = v478(v867, &v854 - v277, v884);
            v871 = &v854;
            MEMORY[0x28223BE20](v540);
            v542 = (v541 + 15) & 0xFFFFFFFFFFFFFFF0;
            v543 = v868;
            v544 = v868[13];
            LODWORD(v870) = *MEMORY[0x277D20B80];
            v872 = v544;
            (v544)(&v854 - v542);
            sub_2647EAD94(&qword_2814C11D0, MEMORY[0x28221F520], MEMORY[0x28221F538]);
            sub_2647EF2C4();
            sub_2647EF2C4();
            v546 = v910;
            v545 = v911;
            v547 = v543[1];
            v888 = (v543 + 1);
            v887 = v547;
            v548 = (v547)(&v854 - v542, v539);
            v549 = v545 == v546;
            v550 = v538;
            if ((v549 || (MEMORY[0x28223BE20](v548), v551 = v884, (v872)(&v854 - v542, *MEMORY[0x277D20B90], v884), sub_2647EF2C4(), sub_2647EF2C4(), v553 = v910, v552 = v911, v548 = (v887)(&v854 - v542, v551), v549 = v552 == v553, v550 = v538, v549) || (MEMORY[0x28223BE20](v548), v555 = &v854 - ((v554 + 15) & 0xFFFFFFFFFFFFFFF0), v556 = v884, (v872)(v555, *MEMORY[0x277D20B78], v884), sub_2647EF2C4(), sub_2647EF2C4(), v558 = v910, v557 = v911, v548 = (v887)(v555, v556), v549 = v557 == v558, v550 = v538, v549)) && ((MEMORY[0x28223BE20](v548), v559 = &v854 - v542, v560 = v884, (v872)(&v854 - v542, v870, v884), sub_2647EF2C4(), sub_2647EF2C4(), v562 = v910, v561 = v911, v563 = (v887)(v559, v560), v561 == v562) || (MEMORY[0x28223BE20](v563), v565 = (v564 + 15) & 0xFFFFFFFFFFFFFFF0, v566 = v884, (v872)(&v854 - v565, *MEMORY[0x277D20B90], v884), sub_2647EF2C4(), sub_2647EF2C4(), v568 = v910, v567 = v911, v569 = (v887)(&v854 - v565, v566), v567 == v568) || (MEMORY[0x28223BE20](v569), v570 = &v854 - v565, v571 = &v854 - v565, v572 = v884, (v872)(v571, *MEMORY[0x277D20B78], v884), sub_2647EF2C4(), sub_2647EF2C4(), v574 = v910, v573 = v911, v548 = (v887)(v570, v572), v573 == v574)))
            {

              v575 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80840, &qword_2647EFAE0);
              v908 = &v854;
              MEMORY[0x28223BE20](v575 - 8);
              v577 = (&v854 - v576);
              v578 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
              v882 = &v854;
              v579 = v578[16];
              v580 = v578[20];
              v875 = v578[24];
              MEMORY[0x28223BE20](v578);
              v582 = &v854 - ((v581 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_2647EEFF4();
              v583 = sub_2647EEFC4();
              v584 = v550;
              v586 = v585;
              v587 = (v878)(v582, v880);
              *v577 = v583;
              v577[1] = v586;
              v588 = v902;
              MEMORY[0x266740A40](v587);
              v589 = v906;
              *(v577 + v579) = v906;
              v590 = v868[2];
              v591 = v577 + v580;
              v592 = v876;
              v593 = v884;
              v590(v591, v876, v884);
              v590(v875 + v577, v584, v593);
              (*(*(v578 - 1) + 56))(v577, 0, 1, v578);
              swift_beginAccess();
              v594 = v589;
              sub_2647E6BE8(v577, v895, v877);
              swift_endAccess();

              v595 = v887;
              (v887)(v584, v593);
              (v595)(v592, v593);
              (*(v891 + 8))(v588, v898);
              (v904[1])(v886, v885);
              sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
              sub_2647EAD34(v893, &qword_27FF80810, &qword_2647EFAB8);
            }

            else
            {
              v907 = &v854;
              v615 = v875;
              MEMORY[0x28223BE20](v548);
              v616 = v884;
              v617 = &v854 - ((v615 + 15) & 0xFFFFFFFFFFFFFFF0);
              v618 = v868[2];
              v619 = v618(v617, v876, v884);
              v901 = &v854;
              MEMORY[0x28223BE20](v619);
              v620 = v617;
              v618(v617, v550, v616);
              v621 = v877;
              swift_bridgeObjectRetain_n();
              v622 = sub_2647EF184();
              LODWORD(v897) = sub_2647EF374();
              if (os_log_type_enabled(v622, v897))
              {
                v623 = swift_slowAlloc();
                v882 = swift_slowAlloc();
                v911 = v882;
                *v623 = 136315650;

                v624 = sub_2647E7ED4(v895, v621, &v911);

                *(v623 + 4) = v624;
                swift_bridgeObjectRelease_n();
                *(v623 + 12) = 2080;
                sub_2647EAD94(&qword_2814C11C8, MEMORY[0x28221F520], MEMORY[0x28221F540]);
                v625 = sub_2647EF434();
                v627 = sub_2647E7ED4(v625, v626, &v911);

                *(v623 + 14) = v627;
                v628 = v887;
                (v887)(v617, v616);
                *(v623 + 22) = 2080;
                v629 = sub_2647EF434();
                v631 = sub_2647E7ED4(v629, v630, &v911);

                *(v623 + 24) = v631;

                (v628)(v620, v616);
                _os_log_impl(&dword_2647DA000, v622, v897, "Model %s assetTransition start with unhandled fromState %s or toState %s", v623, 0x20u);
                v632 = v882;
                swift_arrayDestroy();
                MEMORY[0x266741280](v632, -1, -1);
                MEMORY[0x266741280](v623, -1, -1);

                (v628)(v867, v616);
                (v628)(v876, v616);
              }

              else
              {

                v776 = v887;
                (v887)(v617, v616);
                (v776)(v617, v616);

                swift_bridgeObjectRelease_n();

                (v776)(v867, v616);
                (v776)(v876, v616);
              }

              (*(v891 + 8))(v902, v898);
              (v904[1])(v886, v885);
              sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
              sub_2647EAD34(v893, &qword_27FF80810, &qword_2647EFAB8);
            }

            goto LABEL_201;
          }

          v901 = v281;
          v907 = v280;
          (v868[1])(v876, v884);
          v283 = sub_2647EAD34(&v854 - v277, &qword_27FF80860, &qword_2647EFB00);
          v278 = v902;
        }

        v482 = v887;
        MEMORY[0x28223BE20](v283);
        v483 = &v854 - ((&v482[1].isa + 7) & 0xFFFFFFFFFFFFFFF0);
        v484 = v898;
        v485 = v888;
        v486 = (v888)(v483, v278, v898);
        MEMORY[0x28223BE20](v486);
        (v485)(v483, v278, v484);
        v487 = v278;
        v488 = v877;
        swift_bridgeObjectRetain_n();
        v489 = sub_2647EF184();
        v490 = sub_2647EF374();
        v491 = os_log_type_enabled(v489, v490);
        v492 = v893;
        if (v491)
        {
          LODWORD(v882) = v490;
          v887 = v489;
          v888 = &v854;
          v897 = &v854;
          v493 = swift_slowAlloc();
          v880 = swift_slowAlloc();
          v911 = v880;
          *v493 = 136315650;

          v494 = sub_2647E7ED4(v895, v488, &v911);

          *(v493 + 4) = v494;
          v495 = swift_bridgeObjectRelease_n();
          *(v493 + 12) = 2080;
          v496 = v869;
          MEMORY[0x28223BE20](v495);
          v497 = (v496 + 15) & 0xFFFFFFFFFFFFFFF0;
          sub_2647EF104();
          LODWORD(v494) = (v901)(&v854 - v497, 1, v884);
          v498 = sub_2647EAD34(&v854 - v497, &qword_27FF80860, &qword_2647EFB00);
          if (v494 == 1)
          {
            v499 = 0xE600000000000000;
            v500 = 0x29656E6F6E28;
          }

          else
          {
            MEMORY[0x28223BE20](v498);
            sub_2647EF104();
            v500 = sub_2647EF264();
            v499 = v599;
          }

          v600 = sub_2647E7ED4(v500, v499, &v911);

          *(v493 + 14) = v600;
          v601 = *(v891 + 8);
          v602 = v601(v483, v484);
          *(v493 + 22) = 2080;
          MEMORY[0x28223BE20](v602);
          sub_2647EF0E4();
          v603 = (v901)(&v854 - v497, 1, v884);
          v604 = sub_2647EAD34(&v854 - v497, &qword_27FF80860, &qword_2647EFB00);
          if (v603 == 1)
          {
            v605 = 0xE600000000000000;
            v606 = 0x29656E6F6E28;
          }

          else
          {
            MEMORY[0x28223BE20](v604);
            sub_2647EF0E4();
            v606 = sub_2647EF264();
            v605 = v607;
          }

          v608 = sub_2647E7ED4(v606, v605, &v911);

          *(v493 + 24) = v608;

          v609 = v898;
          v601(v483, v898);
          v610 = v887;
          _os_log_impl(&dword_2647DA000, v887, v882, "Model %s assetTransition start with no fromState %s or toState %s", v493, 0x20u);
          v611 = v880;
          swift_arrayDestroy();
          MEMORY[0x266741280](v611, -1, -1);
          MEMORY[0x266741280](v493, -1, -1);

          v601(v902, v609);
          (v904[1])(v886, v885);
          sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
          sub_2647EAD34(v893, &qword_27FF80810, &qword_2647EFAB8);
        }

        else
        {

          v501 = *(v891 + 8);
          v501(v483, v484);
          v501(v483, v484);

          swift_bridgeObjectRelease_n();

          v501(v487, v484);
          (v904[1])(v886, v885);
          sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
          sub_2647EAD34(v492, &qword_27FF80810, &qword_2647EFAB8);
        }

LABEL_201:
        sub_2647EAD34(v879, &qword_27FF80810, &qword_2647EFAB8);
      }

      if (MEMORY[0x277D20AC8] && v272 == *MEMORY[0x277D20AC8])
      {
        v881 = &v854;
        v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80830, &qword_2647EFAD0);
        v876 = &v854;
        v866 = v311;
        v872 = *(*(v311 - 8) + 64);
        MEMORY[0x28223BE20](v311);
        v880 = &v854 - v312;
        v313 = sub_2647EF0F4();
        v875 = &v854;
        v901 = *(v313 - 8);
        v314 = MEMORY[0x28223BE20](v313);
        v907 = &v854 - ((v315 + 15) & 0xFFFFFFFFFFFFFFF0);
        v871 = v315;
        MEMORY[0x28223BE20](v314);
        v869 = v316;
        v878 = (&v854 - v316);
        v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80838, &qword_2647EFAD8);
        v874 = &v854;
        MEMORY[0x28223BE20](v317);
        v319 = &v854 - v318;
        v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80840, &qword_2647EFAE0);
        v873 = &v854;
        v868 = *(*(v320 - 8) + 64);
        MEMORY[0x28223BE20](v320 - 8);
        v867 = v321;
        v322 = (&v854 - v321);
        v323 = v897;
        swift_beginAccess();
        sub_2647E6AA4(*(v323 + 2), v322, v895, v159);
        swift_endAccess();
        v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
        v325 = *(v324 - 1);
        if ((*(v325 + 48))(v322, 1, v324) == 1)
        {
          sub_2647EAD34(v322, &qword_27FF80840, &qword_2647EFAE0);
          swift_bridgeObjectRetain_n();
          v326 = sub_2647EF184();
          v327 = sub_2647EF354();
          v328 = os_log_type_enabled(v326, v327);
          v329 = v886;
          if (v328)
          {
            v330 = swift_slowAlloc();
            v331 = swift_slowAlloc();
            v911 = v331;
            *v330 = 136315138;

            v332 = sub_2647E7ED4(v895, v159, &v911);

            *(v330 + 4) = v332;
            swift_bridgeObjectRelease_n();

            _os_log_impl(&dword_2647DA000, v326, v327, "Model %s assetTransition end without start", v330, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v331);
            MEMORY[0x266741280](v331, -1, -1);
            MEMORY[0x266741280](v330, -1, -1);
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          (*(v891 + 8))(v902, v898);
          (v904[1])(v329, v885);
          sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
          sub_2647EAD34(v893, &qword_27FF80810, &qword_2647EFAB8);
          sub_2647EAD34(v267, &qword_27FF80810, &qword_2647EFAB8);
        }

        v864 = &v854;
        v879 = v267;
        v502 = v324[12];
        v503 = *(v322 + v324[16]);
        v865 = v324[20];
        v870 = v324[24];
        v504 = v317[12];
        v505 = v317[16];
        v877 = v159;
        v862 = v317[20];
        v863 = v317[24];
        *v319 = *v322;
        sub_2647EAE8C(v322 + v502, &v319[v504], &qword_27FF80830, &qword_2647EFAD0);
        *&v319[v505] = v503;
        v506 = v901 + 32;
        v507 = *(v901 + 4);
        (v507)(&v862[v319], v865 + v322, v313);
        (v507)(v863 + v319, v322 + v870, v313);
        v508 = *(v319 + 1);
        v861 = *v319;
        v870 = v508;
        v509 = v317[12];
        v865 = *&v319[v317[16]];
        v510 = v317[20];
        v511 = v317[24];
        sub_2647EAE8C(&v319[v509], v880, &qword_27FF80830, &qword_2647EFAD0);
        (v507)(v907, &v319[v510], v313);
        v512 = &v319[v511];
        v513 = v878;
        v873 = v313;
        v863 = v506;
        v862 = v507;
        v514 = (v507)(v878, v512, v313);
        MEMORY[0x28223BE20](v514);
        v515 = (&v854 - v867);
        (*(v325 + 56))(&v854 - v867, 1, 1, v324);
        swift_beginAccess();
        v516 = v877;

        sub_2647E6BE8(v515, v895, v516);
        swift_endAccess();
        v517 = [v905 loadedChanges];
        sub_2647EACEC(0, &qword_2814C11A8, 0x277D4B450);
        v518 = sub_2647EF2F4();

        v519 = sub_2647DD4C8(v518);

        v874 = &v854;
        v910 = v519;
        v521 = v871;
        v522 = MEMORY[0x28223BE20](v520);
        v523 = (&v854 - v869);
        v524 = v886;
        v897 = v519;
        if (v519)
        {
          MEMORY[0x28223BE20](v522);
          v525 = v519;
          if ([v525 loaded])
          {

            v526 = *MEMORY[0x277D20B80];
            v527 = v901;
            v528 = *(v901 + 13);
          }

          else
          {
            v613 = [v525 inMemory];

            v527 = v901;
            v528 = *(v901 + 13);
            if (v613)
            {
              v614 = MEMORY[0x277D20B78];
            }

            else
            {
              v614 = MEMORY[0x277D20B90];
            }

            v526 = *v614;
          }

          v612 = v873;
          v528(&v854 - ((v521 + 15) & 0xFFFFFFFFFFFFFFF0), v526, v873);
          (v862)(v523, &v854 - ((v521 + 15) & 0xFFFFFFFFFFFFFFF0), v612);
        }

        else
        {
          v527 = v901;
          v612 = v873;
          (*(v901 + 13))(&v854 - v869, *MEMORY[0x277D20B90], v873);
        }

        v633 = sub_2647EAD94(&qword_2814C11D8, MEMORY[0x28221F520], MEMORY[0x28221F530]);
        v634 = v907;
        v869 = v523;
        v635 = sub_2647EF224();
        if ((v635 & 1) == 0)
        {
          v867 = &v854;
          v636 = v872;
          MEMORY[0x28223BE20](v635);
          v858 = (v636 + 15) & 0xFFFFFFFFFFFFFFF0;
          v637 = &v854 - v858;
          v638 = sub_2647EAEF4(v880, &v854 - v858, &qword_27FF80830, &qword_2647EFAD0);
          v863 = &v854;
          MEMORY[0x28223BE20](v638);
          v639 = &v854 - ((v521 + 15) & 0xFFFFFFFFFFFFFFF0);
          v640 = *(v527 + 2);
          v862 = v527 + 16;
          v860 = v640;
          v640(v639, v634, v612);
          swift_bridgeObjectRetain_n();
          v641 = v905;
          v642 = sub_2647EF184();
          v859 = sub_2647EF374();
          v643 = os_log_type_enabled(v642, v859);
          v868 = v633;
          v857 = v641;
          if (v643)
          {
            v644 = swift_slowAlloc();
            v856 = swift_slowAlloc();
            v911 = v856;
            *v644 = 136316162;
            v645 = [v641 identifier];
            v855 = v642;
            v646 = v645;
            v647 = sub_2647EF244();
            v648 = v527;
            v650 = v649;

            v651 = sub_2647E7ED4(v647, v650, &v911);

            *(v644 + 4) = v651;

            *(v644 + 12) = 2080;
            MEMORY[0x28223BE20](v652);
            sub_2647EAEF4(v637, &v854 - v858, &qword_27FF80830, &qword_2647EFAD0);
            v653 = sub_2647EF274();
            v655 = sub_2647E7ED4(v653, v654, &v911);

            *(v644 + 14) = v655;
            sub_2647EAD34(v637, &qword_27FF80830, &qword_2647EFAD0);
            *(v644 + 22) = 2080;
            sub_2647EAD94(&qword_2814C11C8, MEMORY[0x28221F520], MEMORY[0x28221F540]);
            v656 = sub_2647EF434();
            v658 = sub_2647E7ED4(v656, v657, &v911);

            *(v644 + 24) = v658;
            v659 = *(v648 + 1);
            v659(v639, v873);
            *(v644 + 32) = 2080;
            if (v870)
            {
              v660 = v861;
            }

            else
            {
              v660 = 0x656E6F206F6ELL;
            }

            if (v870)
            {
              v661 = v870;
            }

            else
            {
              v661 = 0xE600000000000000;
            }

            v662 = sub_2647E7ED4(v660, v661, &v911);

            *(v644 + 34) = v662;
            swift_bridgeObjectRelease_n();
            *(v644 + 42) = 2080;
            v663 = v897;
            v664 = v897;
            v665 = sub_2647DC60C(v663);
            v667 = v666;

            v668 = sub_2647E7ED4(v665, v667, &v911);
            v634 = v907;

            *(v644 + 44) = v668;
            v669 = v855;
            _os_log_impl(&dword_2647DA000, v855, v859, "Model %s %s assetTransition %s -> loaded by %s, thought it was already %s, adding missing earlier state", v644, 0x34u);
            v670 = v856;
            swift_arrayDestroy();
            MEMORY[0x266741280](v670, -1, -1);
            v612 = v873;
            MEMORY[0x266741280](v644, -1, -1);
          }

          else
          {

            sub_2647EAD34(v637, &qword_27FF80830, &qword_2647EFAD0);
            v659 = *(v527 + 1);
            v659(v639, v612);
            swift_bridgeObjectRelease_n();
          }

          v671 = v884;
          v672 = sub_2647DC780(v634);
          v521 = v871;
          if (v671)
          {
            v884 = &v854;
            MEMORY[0x28223BE20](v672);
            v673 = &v854 - ((v521 + 15) & 0xFFFFFFFFFFFFFFF0);
            v860(v673, v634, v612);
            v674 = sub_2647EF184();
            v675 = sub_2647EF384();
            if (os_log_type_enabled(v674, v675))
            {
              v676 = swift_slowAlloc();
              v911 = swift_slowAlloc();
              v867 = v659;
              v677 = v911;
              *v676 = 136315138;
              sub_2647EAD94(&qword_2814C11C8, MEMORY[0x28221F520], MEMORY[0x28221F540]);
              v678 = sub_2647EF434();
              v680 = sub_2647E7ED4(v678, v679, &v911);

              *(v676 + 4) = v680;
              v521 = v871;
              v681 = v886;
              (v867)(v673, v612);
              v682 = v675;
              v524 = v681;
              _os_log_impl(&dword_2647DA000, v674, v682, "Unable to create model load change for state %s", v676, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v677);
              MEMORY[0x266741280](v677, -1, -1);
              MEMORY[0x266741280](v676, -1, -1);

              v513 = v878;
              goto LABEL_234;
            }

            v659(&v854 - ((v521 + 15) & 0xFFFFFFFFFFFFFFF0), v612);
          }

          else
          {
            v683 = v672;
            swift_beginAccess();
            v910 = v683;
            v684 = v683;

            [v857 addLoadedChange_];
            v897 = v683;
          }

          v513 = v878;
          v524 = v886;
        }

LABEL_234:
        v685 = sub_2647EF224();
        if (v685)
        {
          v686 = v513;
          MEMORY[0x28223BE20](v685);
          v687 = (v521 + 15) & 0xFFFFFFFFFFFFFFF0;
          v688 = v901;
          (*(v901 + 13))(&v854 - v687, *MEMORY[0x277D20B80], v612);
          v689 = sub_2647EF224();
          v884 = *(v688 + 1);
          v690 = (v884)(&v854 - v687, v612);
          if (v689)
          {
            v895 = &v854;
            MEMORY[0x28223BE20](v690);
            v691 = &v854 - v687;
            v692 = *(v901 + 2);
            v693 = v692(&v854 - v687, v907, v612);
            v901 = &v854;
            MEMORY[0x28223BE20](v693);
            v694 = &v854 - v687;
            v692(&v854 - v687, v686, v612);
            v695 = v905;
            v696 = sub_2647EF184();
            v697 = sub_2647EF364();
            LODWORD(v905) = v697;
            if (os_log_type_enabled(v696, v697))
            {
              v698 = swift_slowAlloc();
              v888 = swift_slowAlloc();
              v909 = v888;
              *v698 = 136315650;
              v699 = [v695 identifier];
              v887 = v696;
              v700 = v699;
              v701 = sub_2647EF244();
              v703 = v702;

              v704 = sub_2647E7ED4(v701, v703, &v909);

              *(v698 + 4) = v704;

              *(v698 + 12) = 2080;
              sub_2647EAD94(&qword_2814C11C8, MEMORY[0x28221F520], MEMORY[0x28221F540]);
              v705 = sub_2647EF434();
              v707 = sub_2647E7ED4(v705, v706, &v909);

              *(v698 + 14) = v707;
              v708 = v884;
              (v884)(v691, v612);
              *(v698 + 22) = 2080;
              v709 = sub_2647EF434();
              v711 = sub_2647E7ED4(v709, v710, &v909);

              *(v698 + 24) = v711;

              (v708)(v694, v612);
              v712 = v887;
              _os_log_impl(&dword_2647DA000, v887, v905, "Model %s assetTransition ignoring %s -> %s", v698, 0x20u);
              v713 = v888;
              swift_arrayDestroy();
              MEMORY[0x266741280](v713, -1, -1);
              MEMORY[0x266741280](v698, -1, -1);

              (v708)(v869, v612);
              (v708)(v686, v612);
              (v708)(v907, v612);
              sub_2647EAD34(v880, &qword_27FF80830, &qword_2647EFAD0);
              (*(v891 + 8))(v902, v898);
              (v904[1])(v886, v885);
            }

            else
            {

              v775 = v884;
              (v884)(&v854 - v687, v612);
              (v775)(&v854 - v687, v612);

              (v775)(v869, v612);
              (v775)(v686, v612);
              (v775)(v907, v612);
              sub_2647EAD34(v880, &qword_27FF80830, &qword_2647EFAD0);
              (*(v891 + 8))(v902, v898);
              (v904[1])(v524, v885);
            }

            sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
            sub_2647EAD34(v893, &qword_27FF80810, &qword_2647EFAB8);

            goto LABEL_201;
          }
        }

        v714 = v521;
        v868 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80850, &qword_2647EFAF0);
        v715 = *(*(v868 - 1) + 64);
        v716 = (v715 + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v868);
        v717 = &v854 - v716;
        sub_2647EF0D4();
        v718 = sub_2647EF0B4();
        v719 = *(v718 - 8);
        v720 = (*(v719 + 48))(&v854 - v716, 1, v718);
        v721 = v872;
        if (v720 != 1)
        {
          v884 = &v854;
          MEMORY[0x28223BE20](v720);
          v722 = &v854 - v716;
          sub_2647EAEF4(v717, v722, &qword_27FF80850, &qword_2647EFAF0);
          v723 = (*(v719 + 88))(v722, v718);
          if (!MEMORY[0x277D20B70] || v723 != *MEMORY[0x277D20B70])
          {
            if (MEMORY[0x277D20B68] && v723 == *MEMORY[0x277D20B68])
            {
              v871 = &v854;
              v868 = &v854;
              MEMORY[0x28223BE20](v723);
              v724 = &v854 - ((v521 + 15) & 0xFFFFFFFFFFFFFFF0);
              v725 = v901;
              v726 = *(v901 + 2);
              v727 = v873;
              v726(v724, v878, v873);
              v728 = (*(v725 + 11))(v724, v727);
              if (MEMORY[0x277D20B90] && v728 == *MEMORY[0x277D20B90])
              {
                LODWORD(v867) = 0;
                v888 = 0;
                v887 = 0;
              }

              else
              {
                if (MEMORY[0x277D20B78] && v728 == *MEMORY[0x277D20B78])
                {
                  v888 = 0;
                  v887 = 0;
                }

                else
                {
                  if (!MEMORY[0x277D20B80] || v728 != *MEMORY[0x277D20B80])
                  {
                    v888 = &v854;
                    MEMORY[0x28223BE20](v728);
                    v779 = &v854 - ((v521 + 15) & 0xFFFFFFFFFFFFFFF0);
                    v780 = (v726)(v779, v907, v873);
                    v887 = &v854;
                    MEMORY[0x28223BE20](v780);
                    v872 = v779;
                    (v726)();
                    swift_bridgeObjectRetain_n();
                    v781 = sub_2647EF184();
                    v782 = sub_2647EF384();
                    v882 = v781;
                    LODWORD(v867) = v782;
                    if (os_log_type_enabled(v781, v782))
                    {
                      v783 = swift_slowAlloc();
                      v866 = swift_slowAlloc();
                      v909 = v866;
                      *v783 = 136315650;
                      v784 = v877;

                      v785 = sub_2647E7ED4(v895, v784, &v909);

                      *(v783 + 4) = v785;
                      swift_bridgeObjectRelease_n();
                      *(v783 + 12) = 2080;
                      v895 = sub_2647EAD94(&qword_2814C11C8, MEMORY[0x28221F520], MEMORY[0x28221F540]);
                      v786 = v873;
                      v787 = sub_2647EF434();
                      v789 = sub_2647E7ED4(v787, v788, &v909);

                      *(v783 + 14) = v789;
                      v790 = *(v901 + 1);
                      v901 = ((v901 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
                      v790(v779, v786);
                      *(v783 + 22) = 2080;
                      v791 = v872;
                      v792 = sub_2647EF434();
                      v794 = sub_2647E7ED4(v792, v793, &v909);

                      *(v783 + 24) = v794;

                      v790(v791, v786);
                      v795 = v882;
                      _os_log_impl(&dword_2647DA000, v882, v867, "Model %s assetTransition with unhandled fromState %s or toState %s", v783, 0x20u);
                      v796 = v866;
                      swift_arrayDestroy();
                      MEMORY[0x266741280](v796, -1, -1);
                      MEMORY[0x266741280](v783, -1, -1);
                    }

                    else
                    {

                      v790 = *(v901 + 1);
                      v901 = ((v901 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
                      v786 = v873;
                      v790(v872, v873);
                      v790(v779, v786);
                      swift_bridgeObjectRelease_n();
                    }

                    v790(v869, v786);
                    v790(v878, v786);
                    v790(v907, v786);
                    sub_2647EAD34(v880, &qword_27FF80830, &qword_2647EFAD0);
                    (*(v891 + 8))(v902, v898);
                    (v904[1])(v886, v885);
                    sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
                    sub_2647EAD34(v893, &qword_27FF80810, &qword_2647EFAB8);
                    v790(v724, v873);
                    sub_2647EAD34(v717, &qword_27FF80850, &qword_2647EFAF0);

                    goto LABEL_201;
                  }

                  if (v897 && (v777 = [v897 loadedRequesters]) != 0)
                  {
                    v778 = v777;
                    v888 = sub_2647EF2F4();
                  }

                  else
                  {
                    v888 = MEMORY[0x277D84F90];
                  }

                  if (v870)
                  {

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v888 = sub_2647E7DC8(0, *(v888 + 2) + 1, 1, v888);
                    }

                    v798 = *(v888 + 2);
                    v797 = *(v888 + 3);
                    if (v798 >= v797 >> 1)
                    {
                      v888 = sub_2647E7DC8((v797 > 1), v798 + 1, 1, v888);
                    }

                    v799 = v888;
                    *(v888 + 2) = v798 + 1;
                    v800 = &v799[16 * v798];
                    v801 = v870;
                    *(v800 + 4) = v861;
                    *(v800 + 5) = v801;
                  }

                  v887 = v906;
                }

                LODWORD(v867) = 1;
              }

              v868 = &v854;
              MEMORY[0x28223BE20](v728);
              v803 = (v802 + 15) & 0xFFFFFFFFFFFFFFF0;
              v804 = &v854 - v803;
              v805 = *MEMORY[0x277D20B58];
              v806 = sub_2647EF0A4();
              v807 = *(v806 - 8);
              (*(v807 + 104))(&v854 - v803, v805, v806);
              (*(v807 + 56))(&v854 - v803, 0, 1, v806);
              v808 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80858, &qword_2647EFAF8);
              v866 = &v854;
              v809 = MEMORY[0x28223BE20](v808 - 8);
              v811 = &v854 - v810;
              v812 = *(v809 + 56);
              sub_2647EAEF4(&v854 - v803, &v854 - v810, &qword_27FF80830, &qword_2647EFAD0);
              sub_2647EAEF4(v880, &v811[v812], &qword_27FF80830, &qword_2647EFAD0);
              v813 = *(v807 + 48);
              v814 = v813(v811, 1, v806);
              if (v814 == 1)
              {
                sub_2647EAD34(&v854 - v803, &qword_27FF80830, &qword_2647EFAD0);
                if (v813(&v811[v812], 1, v806) == 1)
                {
                  sub_2647EAD34(v811, &qword_27FF80830, &qword_2647EFAD0);
                  v815 = 1;
LABEL_284:
                  if (v888)
                  {
                    v821 = v865;
                    v822 = sub_2647EF2E4();
                  }

                  else
                  {
                    v823 = v865;
                    v822 = 0;
                  }

                  v824 = objc_allocWithZone(MEMORY[0x277D4B450]);
                  v825 = v865;
                  v826 = v887;
                  v827 = [v824 initWithTimestamp:v865 endTime:v887 userInitiated:v815 & 1 loadedRequesters:v822 inMemory:v867];

                  [v905 addLoadedChange_];
                  v828 = v827;
                  swift_bridgeObjectRetain_n();
                  v829 = v828;
                  v830 = sub_2647EF184();
                  v831 = sub_2647EF354();
                  if (os_log_type_enabled(v830, v831))
                  {
                    v832 = swift_slowAlloc();
                    v882 = swift_slowAlloc();
                    v909 = v882;
                    *v832 = 136315906;
                    v833 = v877;

                    v834 = sub_2647E7ED4(v895, v833, &v909);

                    *(v832 + 4) = v834;
                    swift_bridgeObjectRelease_n();
                    *(v832 + 12) = 2080;
                    v835 = v897;
                    v836 = v897;
                    v837 = sub_2647DC60C(v835);
                    v839 = v838;

                    v840 = sub_2647E7ED4(v837, v839, &v909);

                    *(v832 + 14) = v840;
                    *(v832 + 22) = 2080;
                    v841 = sub_2647DC60C(v829);
                    v843 = sub_2647E7ED4(v841, v842, &v909);

                    *(v832 + 24) = v843;

                    *(v832 + 32) = 2080;
                    v844 = [v829 debugDescription];
                    v845 = sub_2647EF244();
                    v847 = v846;

                    v848 = sub_2647E7ED4(v845, v847, &v909);

                    *(v832 + 34) = v848;

                    _os_log_impl(&dword_2647DA000, v830, v831, "Model %s %s -> %s: %s", v832, 0x2Au);
                    v849 = v882;
                    swift_arrayDestroy();
                    MEMORY[0x266741280](v849, -1, -1);
                    MEMORY[0x266741280](v832, -1, -1);

                    v850 = *(v901 + 1);
                    v851 = v873;
                    v850(v869, v873);
                    v850(v878, v851);
                    v850(v907, v851);
                    sub_2647EAD34(v880, &qword_27FF80830, &qword_2647EFAD0);
                    (*(v891 + 8))(v902, v898);
                    (v904[1])(v886, v885);
                    sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
                    sub_2647EAD34(v893, &qword_27FF80810, &qword_2647EFAB8);
                    sub_2647EAD34(v717, &qword_27FF80850, &qword_2647EFAF0);
                  }

                  else
                  {

                    swift_bridgeObjectRelease_n();

                    v852 = *(v901 + 1);
                    v853 = v873;
                    v852(v869, v873);
                    v852(v878, v853);
                    v852(v907, v853);
                    sub_2647EAD34(v880, &qword_27FF80830, &qword_2647EFAD0);
                    (*(v891 + 8))(v902, v898);
                    (v904[1])(v886, v885);
                    sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
                    sub_2647EAD34(v893, &qword_27FF80810, &qword_2647EFAB8);
                    sub_2647EAD34(v717, &qword_27FF80850, &qword_2647EFAF0);
                  }

                  goto LABEL_201;
                }
              }

              else
              {
                v863 = &v854;
                MEMORY[0x28223BE20](v814);
                v816 = &v854 - v803;
                sub_2647EAEF4(v811, &v854 - v803, &qword_27FF80830, &qword_2647EFAD0);
                v817 = v813(&v811[v812], 1, v806);
                if (v817 != 1)
                {
                  v872 = &v854;
                  MEMORY[0x28223BE20](v817);
                  v819 = &v854 - ((v818 + 15) & 0xFFFFFFFFFFFFFFF0);
                  (*(v807 + 32))(v819, &v811[v812], v806);
                  sub_2647EAD94(&qword_2814C11E0, MEMORY[0x28221F500], MEMORY[0x28221F510]);
                  v815 = sub_2647EF224();
                  v820 = *(v807 + 8);
                  v820(v819, v806);
                  sub_2647EAD34(v804, &qword_27FF80830, &qword_2647EFAD0);
                  v820(v816, v806);
                  sub_2647EAD34(v811, &qword_27FF80830, &qword_2647EFAD0);
                  goto LABEL_284;
                }

                sub_2647EAD34(&v854 - v803, &qword_27FF80830, &qword_2647EFAD0);
                (*(v807 + 8))(&v854 - v803, v806);
              }

              sub_2647EAD34(v811, &qword_27FF80858, &qword_2647EFAF8);
              v815 = 0;
              goto LABEL_284;
            }

            if (!MEMORY[0x277D20B60] || v723 != *MEMORY[0x277D20B60])
            {
              (*(v719 + 8))(v722, v718);
            }
          }
        }

        v729 = sub_2647EAD34(v717, &qword_27FF80850, &qword_2647EFAF0);
        v895 = &v854;
        MEMORY[0x28223BE20](v729);
        v867 = ((v721 + 15) & 0xFFFFFFFFFFFFFFF0);
        v730 = (&v854 - v867);
        v731 = sub_2647EAEF4(v880, &v854 - v867, &qword_27FF80830, &qword_2647EFAD0);
        v884 = &v854;
        MEMORY[0x28223BE20](v731);
        v871 = &v854 - ((v732 + 15) & 0xFFFFFFFFFFFFFFF0);
        v733 = (v888)();
        v888 = &v854;
        MEMORY[0x28223BE20](v733);
        v734 = &v854 - ((v521 + 15) & 0xFFFFFFFFFFFFFFF0);
        v735 = v901;
        v736 = *(v901 + 2);
        v737 = v873;
        v738 = v736(v734, v907, v873);
        v887 = &v854;
        MEMORY[0x28223BE20](v738);
        v739 = &v854 - ((v714 + 15) & 0xFFFFFFFFFFFFFFF0);
        v740 = v878;
        v736(v734, v878, v737);
        v741 = v905;
        v742 = sub_2647EF184();
        v743 = sub_2647EF364();
        v744 = v743;
        if (os_log_type_enabled(v742, v743))
        {
          v745 = swift_slowAlloc();
          v905 = swift_slowAlloc();
          v909 = v905;
          *v745 = 136316162;
          v746 = [v741 identifier];
          v882 = v742;
          v747 = v746;
          v748 = sub_2647EF244();
          v861 = v715;
          v749 = v741;
          v750 = v748;
          LODWORD(v862) = v744;
          v752 = v751;

          v753 = sub_2647E7ED4(v750, v752, &v909);

          *(v745 + 4) = v753;
          v863 = v749;

          *(v745 + 12) = 2080;
          MEMORY[0x28223BE20](v754);
          sub_2647EAEF4(v730, &v854 - v867, &qword_27FF80830, &qword_2647EFAD0);
          v755 = sub_2647EF274();
          v757 = sub_2647E7ED4(v755, v756, &v909);

          *(v745 + 14) = v757;
          v758 = sub_2647EAD34(v730, &qword_27FF80830, &qword_2647EFAD0);
          *(v745 + 22) = 2080;
          MEMORY[0x28223BE20](v758);
          v759 = v871;
          sub_2647EF0D4();
          v760 = sub_2647EF264();
          v762 = sub_2647E7ED4(v760, v761, &v909);

          *(v745 + 24) = v762;
          v891 = *(v891 + 8);
          (v891)(v759, v898);
          *(v745 + 32) = 2080;
          sub_2647EAD94(&qword_2814C11C8, MEMORY[0x28221F520], MEMORY[0x28221F540]);
          v763 = sub_2647EF434();
          v765 = sub_2647E7ED4(v763, v764, &v909);

          *(v745 + 34) = v765;
          v766 = *(v735 + 1);
          v766(v734, v737);
          *(v745 + 42) = 2080;
          v767 = sub_2647EF434();
          v769 = sub_2647E7ED4(v767, v768, &v909);

          *(v745 + 44) = v769;

          v766(v739, v737);
          v770 = v882;
          _os_log_impl(&dword_2647DA000, v882, v862, "Model %s %s assetTransition unhandled result %s for %s -> %s", v745, 0x34u);
          v771 = v905;
          swift_arrayDestroy();
          MEMORY[0x266741280](v771, -1, -1);
          MEMORY[0x266741280](v745, -1, -1);

          v766(v869, v737);
          v766(v878, v737);
          v766(v907, v737);
          sub_2647EAD34(v880, &qword_27FF80830, &qword_2647EFAD0);
          (v891)(v902, v898);
        }

        else
        {

          v772 = *(v735 + 1);
          v772(v739, v737);
          v772(v734, v737);
          v773 = *(v891 + 8);
          v774 = v898;
          v773(v871, v898);
          sub_2647EAD34(v730, &qword_27FF80830, &qword_2647EFAD0);

          v772(v869, v737);
          v772(v740, v737);
          v772(v907, v737);
          sub_2647EAD34(v880, &qword_27FF80830, &qword_2647EFAD0);
          v773(v902, v774);
        }

        (v904[1])(v886, v885);
        sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
        sub_2647EAD34(v893, &qword_27FF80810, &qword_2647EFAB8);

        goto LABEL_201;
      }

      if ((!MEMORY[0x277D20AD0] || v272 != *MEMORY[0x277D20AD0]) && (!MEMORY[0x277D20AE0] || v272 != *MEMORY[0x277D20AE0]))
      {
        (*(v270 + 8))(&v854 - v266, v269);
      }
    }

    v268 = v893;
    v265 = v881;
  }

  v385 = sub_2647EAD34(&v854 - v266, &qword_27FF80810, &qword_2647EFAB8);
  MEMORY[0x28223BE20](v385);
  v386 = &v854 - v266;
  sub_2647EAEF4(v268, &v854 - v266, &qword_27FF80810, &qword_2647EFAB8);
  v387 = v905;
  v388 = sub_2647EF184();
  v389 = sub_2647EF374();
  if (os_log_type_enabled(v388, v389))
  {
    v390 = swift_slowAlloc();
    v905 = swift_slowAlloc();
    v911 = v905;
    *v390 = 136315394;
    v391 = [v387 identifier];
    v907 = &v854;
    v392 = v391;
    v393 = sub_2647EF244();
    v395 = v394;

    v396 = sub_2647E7ED4(v393, v395, &v911);

    *(v390 + 4) = v396;

    *(v390 + 12) = 2080;
    MEMORY[0x28223BE20](v397);
    sub_2647EAEF4(v386, &v854 - ((v265 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27FF80810, &qword_2647EFAB8);
    v398 = sub_2647EF264();
    v400 = sub_2647E7ED4(v398, v399, &v911);

    *(v390 + 14) = v400;

    sub_2647EAD34(v386, &qword_27FF80810, &qword_2647EFAB8);
    _os_log_impl(&dword_2647DA000, v388, v389, "Model %s assetTransition unhandled subtype %s", v390, 0x16u);
    v401 = v905;
    swift_arrayDestroy();
    MEMORY[0x266741280](v401, -1, -1);
    MEMORY[0x266741280](v390, -1, -1);

    (*(v891 + 8))(v902, v898);
    (v904[1])(v886, v885);
    sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
    sub_2647EAD34(v893, &qword_27FF80810, &qword_2647EFAB8);
  }

  else
  {

    sub_2647EAD34(&v854 - v266, &qword_27FF80810, &qword_2647EFAB8);

    (*(v891 + 8))(v902, v898);
    (v904[1])(v886, v885);
    sub_2647EAD34(v894, &qword_27FF80818, &qword_2647EFAC0);
    sub_2647EAD34(v268, &qword_27FF80810, &qword_2647EFAB8);
  }
}

uint64_t sub_2647E6AA4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_2647EC824(a3, a4), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a1 + 56);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
    v17 = *(v10 - 8);
    sub_2647EAEF4(v9 + *(v17 + 72) * v8, a2, &qword_27FF80848, &qword_2647EFAE8);
    v11 = *(v17 + 56);
    v12 = a2;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a2;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t sub_2647E6BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
  v8 = (*(*(v7 - 8) + 48))(a1, 1, v7);
  if (v8 == 1)
  {
    sub_2647EAD34(a1, &qword_27FF80840, &qword_2647EFAE0);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80840, &qword_2647EFAE0);
    MEMORY[0x28223BE20](v9 - 8);
    v11 = &v16 - v10;
    sub_2647E847C(&v16 - v10, a2, a3);

    return sub_2647EAD34(v11, &qword_27FF80840, &qword_2647EFAE0);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2647EAE8C(a1, v14, &qword_27FF80848, &qword_2647EFAE8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_2647ED818(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_2647E6DB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_2647ED64C(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_2647EEEC4();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_2647EC7A0(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_2647EDC30();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_2647EEEC4();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_2647E8604(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_2647EEEC4();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_2647E7104(uint64_t a1, uint64_t a2, const void *a3)
{
  v7 = sub_2647EEE94();
  v8 = *(v7 - 8);
  v9 = swift_task_alloc();
  v3[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF807F8, &qword_2647EFA98);
  v10 = swift_task_alloc();
  v3[3] = v10;
  v11 = swift_task_alloc();
  v3[4] = v11;
  v3[5] = _Block_copy(a3);
  if (a1)
  {
    sub_2647EEE84();
    (*(v8 + 32))(v11, v9, v7);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(v8 + 56);
  v14 = 1;
  v13(v11, v12, 1, v7);
  if (a2)
  {
    sub_2647EEE84();
    (*(v8 + 32))(v10, v9, v7);
    v14 = 0;
  }

  v13(v10, v14, 1, v7);
  v15 = swift_task_alloc();
  v3[6] = v15;
  *v15 = v3;
  v15[1] = sub_2647E7340;

  return sub_2647E8AC0(v11, v10);
}

uint64_t sub_2647E7340(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v4 = *v2;
  v6 = *v2;

  v7 = *(v4 + 32);
  sub_2647EAD34(*(v4 + 24), &qword_27FF807F8, &qword_2647EFA98);
  sub_2647EAD34(v7, &qword_27FF807F8, &qword_2647EFA98);
  if (v3)
  {
    v8 = sub_2647EEDF4();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_2647EACEC(0, &qword_2814C1220, 0x277D4B440);
    v8 = sub_2647EF2E4();

    v10 = v8;
    v9 = 0;
  }

  v11 = v8;
  v12 = *(v5 + 40);
  v12[2](v12, v10, v9);

  _Block_release(v12);

  v13 = *(v6 + 8);

  return v13();
}

id SAModelInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SAModelInfo.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SAModelInfo();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SAModelInfo.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SAModelInfo();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2647E7618(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2647EB12C;

  return v6();
}

uint64_t sub_2647E7700(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2647E77E8;

  return v7();
}

uint64_t sub_2647E77E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2647E78DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF807F0, &qword_2647EFA48);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2647EAEF4(a3, v23 - v10, &qword_27FF807F0, &qword_2647EFA48);
  v12 = sub_2647EF344();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2647EAD34(v11, &qword_27FF807F0, &qword_2647EFA48);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2647EF334();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_2647EF324();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_2647EF284() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_2647EAD34(a3, &qword_27FF807F0, &qword_2647EFA48);

    return v21;
  }

LABEL_8:
  sub_2647EAD34(a3, &qword_27FF807F0, &qword_2647EFA48);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_2647E7BD8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2647E7CD0;

  return v6(a1);
}

uint64_t sub_2647E7CD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_2647E7DC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80868, &qword_2647EFB08);
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

unint64_t sub_2647E7ED4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2647E7FA0(v11, 0, 0, 1, a1, a2);
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
    sub_2647EAFB4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2647E7FA0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2647E80AC(a5, a6);
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
    result = sub_2647EF3E4();
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

void *sub_2647E80AC(uint64_t a1, unint64_t a2)
{
  v3 = sub_2647E80F8(a1, a2);
  sub_2647E8228(&unk_28761F550);
  return v3;
}

void *sub_2647E80F8(uint64_t a1, unint64_t a2)
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

  v6 = sub_2647E8314(v5, 0);
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

  result = sub_2647EF3E4();
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
        v10 = sub_2647EF2B4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2647E8314(v10, 0);
        result = sub_2647EF3C4();
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

uint64_t sub_2647E8228(uint64_t result)
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

  result = sub_2647E8388(result, v11, 1, v3);
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

void *sub_2647E8314(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80878, &qword_2647EFB18);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2647E8388(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80878, &qword_2647EFB18);
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

uint64_t sub_2647E847C@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v4 = v3;
  v6 = sub_2647EC824(a2, a3);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2647EDEA4();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
    v19 = *(v12 - 8);
    sub_2647EAE8C(v11 + *(v19 + 72) * v8, a1, &qword_27FF80848, &qword_2647EFAE8);
    sub_2647E88BC(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a1;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a1;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

unint64_t sub_2647E8604(int64_t a1, uint64_t a2)
{
  v4 = sub_2647EEEC4();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_2647EF3B4();
    v14 = v12;
    v37 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = *(v15 + 56);
    v35 = (v15 - 8);
    v36 = v16;
    do
    {
      v17 = v9;
      v18 = v38 * v11;
      v19 = v14;
      v20 = v15;
      v36(v8, *(a2 + 48) + v38 * v11, v4);
      sub_2647EAF5C();
      v21 = sub_2647EF204();
      result = (*v35)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v37)
      {
        if (v22 >= v37 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v38 * a1;
          v26 = v25 + v18 + v38;
          v27 = v38 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v38 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v37 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2647E88BC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2647EF3B4() + 1) & ~v5;
    while (1)
    {
      sub_2647EF4A4();

      sub_2647EF294();
      v9 = sub_2647EF4C4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2647E8AC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return MEMORY[0x2822009F8](sub_2647E8AE0, 0, 0);
}

uint64_t sub_2647E8AE0()
{
  if (MEMORY[0x277D29ED0])
  {
    v1 = MEMORY[0x277D29ED8] == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1 || MEMORY[0x277D29EE0] == 0 || MEMORY[0x277CF1A58] == 0 || MEMORY[0x277D0DEA0] == 0 || MEMORY[0x277D0DEA8] == 0 || MEMORY[0x277D0DEB0] == 0 || MEMORY[0x277D20B40] == 0 || MEMORY[0x277D20B08] == 0 || MEMORY[0x277D20B10] == 0 || MEMORY[0x277D20B38] == 0 || MEMORY[0x277D20B18] == 0 || MEMORY[0x277D20B28] == 0 || MEMORY[0x277D20B30] == 0)
  {
    if (qword_2814C1228 != -1)
    {
      swift_once();
    }

    v14 = sub_2647EF1A4();
    __swift_project_value_buffer(v14, qword_2814C1230);
    v15 = sub_2647EF184();
    v16 = sub_2647EF354();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2647DA000, v15, v16, "Not all dependencies are available, returning no models", v17, 2u);
      MEMORY[0x266741280](v17, -1, -1);
    }

    v18 = *(v0 + 8);
    v19 = MEMORY[0x277D84F90];

    return v18(v19);
  }

  else
  {
    if (qword_2814C1338 != -1)
    {
      swift_once();
    }

    v21 = swift_task_alloc();
    *(v0 + 136) = v21;
    *v21 = v0;
    v21[1] = sub_2647E8D60;

    return sub_2647DCB88();
  }
}

uint64_t sub_2647E8D60(char a1)
{
  *(*v1 + 272) = a1;

  return MEMORY[0x2822009F8](sub_2647E8E60, 0, 0);
}

uint64_t sub_2647E8E60()
{
  if (*(v0 + 272) == 1)
  {
    v1 = sub_2647EEEC4();
    *(v0 + 144) = v1;
    v2 = *(v1 - 8);
    v3 = v2;
    *(v0 + 152) = v2;
    *(v0 + 160) = *(v2 + 64);
    v4 = swift_task_alloc();
    *(v0 + 168) = v4;
    sub_2647EEF64();
    v27 = v3;
    v13 = *(v0 + 128);
    v14 = swift_allocObject();
    *(v0 + 176) = v14;
    *(v14 + 16) = MEMORY[0x277D84F90];
    v15 = sub_2647EEE94();
    *(v0 + 184) = v15;
    v16 = *(v15 - 8);
    *(v0 + 192) = v16;
    v17 = swift_task_alloc();
    *(v0 + 200) = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF807F8, &qword_2647EFA98) - 8) + 64);
    v18 = swift_task_alloc();
    sub_2647EAEF4(v13, v18, &qword_27FF807F8, &qword_2647EFA98);
    v19 = *(v16 + 48);
    *(v0 + 208) = v19;
    *(v0 + 216) = (v16 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v20 = v19(v18, 1, v15);
    if (v20 == 1)
    {
      sub_2647EAD34(v18, &qword_27FF807F8, &qword_2647EFA98);

LABEL_17:

      v22 = sub_2647EEF24();
      *(v0 + 224) = v22;
      *(v0 + 232) = *(v22 - 8);
      *(v0 + 240) = swift_task_alloc();
      sub_2647EEF14();
      v23 = swift_task_alloc();
      *(v0 + 248) = v23;
      *v23 = v0;
      v23[1] = sub_2647E938C;

      return MEMORY[0x282188D88]();
    }

    (*(v16 + 32))(v17, v18, v15);

    sub_2647EEE74();
    if (v21 > -600.0)
    {
      (*(v16 + 8))(v17, v15);
      goto LABEL_17;
    }

    sub_2647EEE74();
    v25 = -v24;
    sub_2647EAA54();
    swift_allocError();
    *v26 = v25;
    *(v26 + 8) = 0;
    swift_willThrow();
    (*(v16 + 8))(v17, v15);
    (*(v27 + 8))(v4, v1);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    if (qword_2814C1228 != -1)
    {
      swift_once();
    }

    v7 = sub_2647EF1A4();
    __swift_project_value_buffer(v7, qword_2814C1230);
    v8 = sub_2647EF184();
    v9 = sub_2647EF354();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2647DA000, v8, v9, "Apple Intelligence not available, returning no models", v10, 2u);
      MEMORY[0x266741280](v10, -1, -1);
    }

    v11 = *(v0 + 8);
    v12 = MEMORY[0x277D84F90];

    return v11(v12);
  }
}

uint64_t sub_2647E938C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[32] = a1;
  v4[33] = v1;

  (*(v3[29] + 8))(v3[30], v3[28]);
  if (v1)
  {
    v5 = sub_2647E9DF4;
  }

  else
  {
    v5 = sub_2647E94FC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2647E94FC()
{
  v1 = v0[32];

  v2 = *(v1 + 16);
  v3 = v0[32];
  if (v2)
  {
    v4 = sub_2647EEF44();
    v5 = *(v4 - 8);
    v6 = swift_task_alloc();
    v7 = *(v5 + 16);
    v5 += 16;
    v8 = v3 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v74 = *(v5 + 56);
    v76 = v7;
    v9 = (v5 - 8);
    do
    {
      v10 = v0[22];
      v76(v6, v8, v4);
      sub_2647EEF34();
      (*v9)(v6, v4);
      v11 = objc_allocWithZone(MEMORY[0x277D4B440]);
      v12 = sub_2647EF234();

      v13 = [v11 initWithIdentifier_];

      v14 = v13;
      MEMORY[0x266740C50]();
      if (*((*(v10 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v10 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2647EF304();
      }

      sub_2647EF314();

      v8 += v74;
      --v2;
    }

    while (v2);
  }

  else
  {

    if (qword_2814C1228 != -1)
    {
      swift_once();
    }

    v15 = sub_2647EF1A4();
    __swift_project_value_buffer(v15, qword_2814C1230);
    v16 = sub_2647EF184();
    v17 = sub_2647EF364();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2647DA000, v16, v17, "Model manager reports no assets are currently loaded", v18, 2u);
      MEMORY[0x266741280](v18, -1, -1);
    }
  }

  v73 = v0;
  v19 = v0[33];
  v20 = v0[26];
  v22 = v0[22];
  v21 = v0[23];
  v23 = v0[15];
  v78 = [objc_opt_self() now];
  v24 = *(v22 + 16);
  v25 = swift_allocObject();
  v72 = v24;

  v26 = MEMORY[0x277D84F90];
  v75 = v25;
  *(v25 + 16) = sub_2647EEA08(MEMORY[0x277D84F90]);
  v27 = swift_allocObject();
  v28 = v26;
  v29 = v27;
  v30 = v73;
  *(v27 + 16) = sub_2647EEBEC(v28);
  v77 = swift_allocObject();
  *(v77 + 16) = 0;
  v31 = [objc_allocWithZone(MEMORY[0x277CF1A58]) init];
  v32 = swift_task_alloc();
  sub_2647EAEF4(v23, v32, &qword_27FF807F8, &qword_2647EFA98);
  v33 = v20(v32, 1, v21);
  v34 = 0;
  if (v33 != 1)
  {
    v35 = v73[23];
    v36 = v73[24];
    v34 = sub_2647EEE64();
    (*(v36 + 8))(v32, v35);
  }

  [v31 setStartDate_];

  v37 = sub_2647EF1D4();
  v38 = *(v37 - 8);
  v39 = swift_task_alloc();
  sub_2647EF1C4();
  sub_2647EF1B4();
  if (v19)
  {
    (*(v38 + 8))(v39, v37);

    if (qword_2814C1228 != -1)
    {
      swift_once();
    }

    v40 = sub_2647EF1A4();
    __swift_project_value_buffer(v40, qword_2814C1230);
    v41 = v19;
    v42 = sub_2647EF184();
    v43 = sub_2647EF374();

    v44 = os_log_type_enabled(v42, v43);
    v45 = v73[21];
    v46 = v73[18];
    v47 = v73[19];
    if (v44)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      v50 = v19;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v51;
      *v49 = v51;
      _os_log_impl(&dword_2647DA000, v42, v43, "Unable to get model info: %@", v48, 0xCu);
      sub_2647EAD34(v49, &qword_27FF80800, &qword_2647EFAA8);
      MEMORY[0x266741280](v49, -1, -1);
      v30 = v73;
      MEMORY[0x266741280](v48, -1, -1);
    }

    else
    {
    }

    (*(v47 + 8))(v45, v46);
  }

  else
  {
    v52 = v73[21];
    v68 = v29;
    v69 = v73[22];
    v70 = v52;
    v53 = v73[19];
    v54 = v73[20];
    v71 = v31;
    v55 = v73[18];
    (*(v38 + 8))(v39, v37);

    sub_2647EA92C((v73 + 7), (v73 + 2));
    __swift_project_boxed_opaque_existential_1(v73 + 2, v73[5]);
    v56 = swift_allocObject();
    v56[2] = v77;
    v56[3] = v72;
    v56[4] = v78;
    v57 = swift_task_alloc();
    (*(v53 + 16))(v57, v52, v55);
    v58 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v59 = (v54 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
    v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    (*(v53 + 32))(v62 + v58, v57, v55);
    *(v62 + v59) = v77;
    *(v62 + v60) = v68;
    *(v62 + v61) = v69;
    v30 = v73;
    *(v62 + ((v61 + 15) & 0xFFFFFFFFFFFFFFF8)) = v75;

    swift_retain_n();
    v63 = v78;

    sub_2647EF1F4();

    (*(v53 + 8))(v70, v55);
    __swift_destroy_boxed_opaque_existential_1Tm(v73 + 2);
  }

  v64 = v30[22];
  swift_beginAccess();
  v65 = *(v64 + 16);

  v66 = v30[1];

  return v66(v65);
}

uint64_t sub_2647E9DF4()
{

  v1 = *(v0 + 208);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 120);
  v45 = [objc_opt_self() now];
  v5 = *(v3 + 16);
  v6 = swift_allocObject();
  v43 = v5;

  v7 = MEMORY[0x277D84F90];
  v42 = v6;
  *(v6 + 16) = sub_2647EEA08(MEMORY[0x277D84F90]);
  v44 = swift_allocObject();
  *(v44 + 16) = sub_2647EEBEC(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = [objc_allocWithZone(MEMORY[0x277CF1A58]) init];
  v10 = swift_task_alloc();
  sub_2647EAEF4(v4, v10, &qword_27FF807F8, &qword_2647EFA98);
  v11 = v1(v10, 1, v2);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = *(v0 + 184);
    v14 = *(v0 + 192);
    v12 = sub_2647EEE64();
    (*(v14 + 8))(v10, v13);
  }

  v15 = v9;
  [v9 setStartDate_];

  v16 = sub_2647EF1D4();
  v17 = *(v16 - 8);
  v18 = swift_task_alloc();
  sub_2647EF1C4();
  sub_2647EF1B4();
  v19 = *(v0 + 168);
  v40 = *(v0 + 176);
  v41 = v15;
  v20 = *(v0 + 152);
  v21 = *(v0 + 160);
  v22 = *(v0 + 144);
  (*(v17 + 8))(v18, v16);

  sub_2647EA92C((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v39 = swift_allocObject();
  v37 = v8;
  v39[2] = v8;
  v39[3] = v43;
  v39[4] = v45;
  v23 = swift_task_alloc();
  v24 = v20;
  v25 = *(v20 + 16);
  v26 = v22;
  v38 = v22;
  v25(v23, v19, v22);
  v27 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v28 = (v21 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v24 + 32))(v31 + v27, v23, v26);
  *(v31 + v28) = v37;
  *(v31 + v29) = v44;
  *(v31 + v30) = v40;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v42;

  swift_retain_n();
  v32 = v45;

  sub_2647EF1F4();

  (*(v24 + 8))(v19, v38);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v33 = *(v0 + 176);
  swift_beginAccess();
  v34 = *(v33 + 16);

  v35 = *(v0 + 8);

  return v35(v34);
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

uint64_t sub_2647EA4F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2647E77E8;

  return sub_2647E7104(v2, v3, v4);
}

uint64_t sub_2647EA5B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2647EB12C;

  return sub_2647E7618(v2, v3, v4);
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2647EA6B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2647EB12C;

  return sub_2647E7700(a1, v4, v5, v6);
}

uint64_t sub_2647EA784(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2647EB12C;

  return sub_2647E7BD8(a1, v4);
}

uint64_t sub_2647EA83C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2647E77E8;

  return sub_2647E7BD8(a1, v4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2647EA92C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
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

uint64_t sub_2647EA994(char *a1)
{
  v3 = *(sub_2647EEEC4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2647DD570(a1, v1 + v4, v8, v9, v10, v11);
}

unint64_t sub_2647EAA54()
{
  result = qword_2814C11C0;
  if (!qword_2814C11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C11C0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

unint64_t sub_2647EAB08()
{
  result = qword_2814C11B8;
  if (!qword_2814C11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C11B8);
  }

  return result;
}

void *sub_2647EAB5C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  if (a1 >> 62)
  {
LABEL_21:
    v7 = sub_2647EF3F4();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      v22 = v6 & 0xC000000000000001;
      v21 = v6 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v22)
        {
          v9 = MEMORY[0x266740D50](v8, v6);
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_17:
            __break(1u);
LABEL_18:

            return v3;
          }
        }

        else
        {
          if (v8 >= *(v21 + 16))
          {
            __break(1u);
            goto LABEL_21;
          }

          v9 = *(v6 + 8 * v8 + 32);
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_17;
          }
        }

        v11 = v7;
        v3 = v9;
        v12 = a3;
        v13 = [v9 identifier];
        v14 = sub_2647EF244();
        v16 = v15;

        v17 = v14 == a2 && v16 == v12;
        if (v17)
        {
          goto LABEL_18;
        }

        a3 = v12;
        v18 = sub_2647EF444();

        if (v18)
        {
          return v3;
        }

        ++v8;
        v7 = v11;
        v17 = v10 == v11;
        v6 = v20;
        if (v17)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_2647EACEC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2647EAD34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2647EAD94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2647EADE0()
{
  result = qword_2814C11B0;
  if (!qword_2814C11B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF80870, &qword_2647EFB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C11B0);
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

uint64_t sub_2647EAE8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2647EAEF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2647EAF5C()
{
  result = qword_2814C11F0;
  if (!qword_2814C11F0)
  {
    sub_2647EEEC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C11F0);
  }

  return result;
}

uint64_t sub_2647EAFB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SAError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SAError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2647EB0DC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2647EB0FC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t SAEligibilityChecking.isAppleIntelligenceEligible.getter(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[2] = 122;
  v6 = *(a2 + 8);
  v3[8] = v6;
  v3[9] = (a2 + 8) & 0xFFFFFFFFFFFFLL | 0x9BCC000000000000;
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  v3[10] = v7;
  *v7 = v3;
  v7[1] = sub_2647EB270;

  return (v9)(v3 + 2, a1, a2);
}

uint64_t sub_2647EB270(char a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v5 = *(v4 + 8);

    return v5(1);
  }

  else
  {
    *(v3 + 24) = 123;
    v7 = (v3 + 24);
    v11 = (v7[5] + *v7[5]);
    v8 = swift_task_alloc();
    v7[8] = v8;
    *v8 = v4;
    v8[1] = sub_2647EB44C;
    v9 = v7[3];
    v10 = v7[2];

    return v11(v7, v10, v9);
  }
}

uint64_t sub_2647EB44C(char a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v5 = *(v4 + 8);

    return v5(1);
  }

  else
  {
    *(v3 + 32) = 125;
    v7 = (v3 + 32);
    v11 = (v7[4] + *v7[4]);
    v8 = swift_task_alloc();
    v7[8] = v8;
    *v8 = v4;
    v8[1] = sub_2647EB628;
    v9 = v7[2];
    v10 = v7[1];

    return v11(v7, v10, v9);
  }
}

uint64_t sub_2647EB628(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2647EB724()
{
  v0 = sub_2647EF1A4();
  __swift_allocate_value_buffer(v0, qword_2814C1250);
  __swift_project_value_buffer(v0, qword_2814C1250);
  return sub_2647EF194();
}

void *sub_2647EB7A0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2647EB7BC()
{
  v1 = *v0;
  sub_2647EF4A4();
  MEMORY[0x266740E30](v1);
  return sub_2647EF4C4();
}

uint64_t sub_2647EB830(uint64_t a1)
{
  v2 = *v1;
  sub_2647EF4A4();
  MEMORY[0x266740E30](v2);
  return sub_2647EF4C4();
}

uint64_t SAEligibilityChecker.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = sub_2647EE0E0(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t SAEligibilityChecker.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = sub_2647EE0E0(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_2647EB904(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF807F0, &qword_2647EFA48);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = *a1;
  v7 = sub_2647EF344();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = v6;

  sub_2647EBBA4(0, 0, v5, &unk_2647EFBB8, v8);
}

uint64_t sub_2647EBA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_2647EBAB0;

  return sub_2647EBE74((v5 + 16));
}

uint64_t sub_2647EBAB0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2647EBBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF807F0, &qword_2647EFA48);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2647EAEF4(a3, v25 - v10, &qword_27FF807F0, &qword_2647EFA48);
  v12 = sub_2647EF344();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2647EE70C(v11);
  }

  else
  {
    sub_2647EF334();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2647EF324();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2647EF284() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2647EE70C(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2647EE70C(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2647EBE74(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 72) = v1;
  *(v2 + 80) = v3;

  return MEMORY[0x2822009F8](sub_2647EBF08, v1, 0);
}

uint64_t sub_2647EBF08()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = sub_2647EC734(v0[10]);
    if (v4 & 1) != 0 && (*(*(v2 + 56) + v3))
    {
      v5 = 1;
      goto LABEL_22;
    }
  }

  v0[8] = 0;
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer == sub_2647EF1E4())
  {
    if (v0[8] != 4)
    {
      if (qword_2814C1248 != -1)
      {
        swift_once();
      }

      v16 = sub_2647EF1A4();
      __swift_project_value_buffer(v16, qword_2814C1250);
      v8 = sub_2647EF184();
      v9 = sub_2647EF364();
      if (!os_log_type_enabled(v8, v9))
      {
        v5 = 0;
        goto LABEL_21;
      }

      v17 = v0[10];
      v12 = swift_slowAlloc();
      v5 = 0;
      *v12 = 134217984;
      *(v12 + 4) = v17;
      v13 = "Determined not eligible for domain %llu";
      v11 = 12;
      goto LABEL_20;
    }

    if (qword_2814C1248 != -1)
    {
      swift_once();
    }

    v7 = sub_2647EF1A4();
    __swift_project_value_buffer(v7, qword_2814C1250);
    v8 = sub_2647EF184();
    v9 = sub_2647EF364();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[10];
      v11 = 12;
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = v10;
      v5 = 1;
      v13 = "Determined eligible for domain %llu";
LABEL_20:
      _os_log_impl(&dword_2647DA000, v8, v9, v13, v12, v11);
      MEMORY[0x266741280](v12, -1, -1);
      goto LABEL_21;
    }
  }

  else
  {
    if (qword_2814C1248 != -1)
    {
      swift_once();
    }

    v14 = sub_2647EF1A4();
    __swift_project_value_buffer(v14, qword_2814C1250);
    v8 = sub_2647EF184();
    v9 = sub_2647EF374();
    if (os_log_type_enabled(v8, v9))
    {
      v15 = v0[10];
      v11 = 18;
      v12 = swift_slowAlloc();
      *v12 = 134218240;
      *(v12 + 4) = v15;
      *(v12 + 12) = 1024;
      *(v12 + 14) = domain_answer;
      v5 = 1;
      v13 = "Unable to determine eligibility for domain %llu, status: %d";
      goto LABEL_20;
    }
  }

  v5 = 1;
LABEL_21:
  v18 = v0[10];

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_2647ED520(v5, v18, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v22;
  swift_endAccess();
LABEL_22:
  v20 = v0[1];

  return v20(v5);
}

unint64_t sub_2647EC2A4()
{
  type metadata accessor for SAEligibilityChecker();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_2647EE0E0(MEMORY[0x277D84F90]);
  *(v0 + 112) = result;
  qword_2814C1340 = v0;
  return result;
}

uint64_t static SAEligibilityChecker.shared.getter()
{
  if (qword_2814C1338 != -1)
  {
    swift_once();
  }
}

uint64_t SAEligibilityChecker.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SAEligibilityChecker.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2647EC3C4(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2647EC45C;

  return sub_2647EBE74(a1);
}

uint64_t sub_2647EC45C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2647EC558(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF807F0, &qword_2647EFA48);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = *a1;
  v8 = sub_2647EF344();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v6;
  v9[5] = v7;

  sub_2647EBBA4(0, 0, v5, &unk_2647EFD50, v9);
}

Swift::Void __swiftcall SAEligibilityChecking.prewarmAppleIntelligence()()
{
  v2 = v1;
  v3 = v0;
  v5 = 122;
  v4 = *(v1 + 16);
  v4(&v5);
  v5 = 123;
  (v4)(&v5, v3, v2);
  v5 = 125;
  (v4)(&v5, v3, v2);
}

unint64_t sub_2647EC734(uint64_t a1)
{
  sub_2647EF4A4();
  MEMORY[0x266740E30](a1);
  v2 = sub_2647EF4C4();

  return sub_2647EC89C(a1, v2);
}

unint64_t sub_2647EC7A0(uint64_t a1)
{
  sub_2647EEEC4();
  sub_2647EE9C4(&qword_2814C11F0, MEMORY[0x277CC9600]);
  v2 = sub_2647EF204();

  return sub_2647EC908(a1, v2);
}

unint64_t sub_2647EC824(uint64_t a1, uint64_t a2)
{
  sub_2647EF4A4();
  sub_2647EF294();
  v4 = sub_2647EF4C4();

  return sub_2647ECAB4(a1, a2, v4);
}

unint64_t sub_2647EC89C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2647EC908(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_2647EEEC4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2647EE9C4(&qword_2814C11E8, MEMORY[0x277CC9610]);
      v15 = sub_2647EF224();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_2647ECAB4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2647EF444())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2647ECB6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80888, &qword_2647EFD58);
  result = sub_2647EF414();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v21 = *(*(v5 + 56) + v19);
      sub_2647EF4A4();
      MEMORY[0x266740E30](v20);
      result = sub_2647EF4C4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_2647ECDEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2647EEEC4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80898, &qword_2647EFD88);
  v39 = v4;
  result = sub_2647EF414();
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

      sub_2647EE9C4(&qword_2814C11F0, MEMORY[0x277CC9600]);
      result = sub_2647EF204();
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

uint64_t sub_2647ED1B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80890, &qword_2647EFD80);
  v42 = v4;
  result = sub_2647EF414();
  v7 = result;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
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
    v41 = result;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v45 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
      v44 = &v39;
      MEMORY[0x28223BE20](v21 - 8);
      v23 = &v39 - v22;
      v24 = *(v5 + 56);
      v25 = (*(v5 + 48) + 16 * v20);
      v27 = *v25;
      v26 = v25[1];
      v43 = *(v28 + 72);
      v29 = v24 + v43 * v20;
      if (v42)
      {
        sub_2647EE954(v29, &v39 - v22);
      }

      else
      {
        sub_2647EAEF4(v29, &v39 - v22, &qword_27FF80848, &qword_2647EFAE8);
      }

      v30 = v41;
      sub_2647EF4A4();
      sub_2647EF294();
      result = sub_2647EF4C4();
      v31 = -1 << *(v30 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v30 + 48) + 16 * v15);
      *v16 = v27;
      v16[1] = v26;
      result = sub_2647EE954(v23, *(v30 + 56) + v43 * v15);
      ++*(v30 + 16);
      v12 = v45;
      v5 = v40;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        v45 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      v7 = v41;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    v7 = v41;
    if (v38 >= 64)
    {
      bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_2647ED520(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2647EC734(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_2647EDAE4();
    result = v17;
    goto LABEL_8;
  }

  sub_2647ECB6C(v14, a3 & 1);
  result = sub_2647EC734(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + result) = a1 & 1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + result) = a1 & 1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_2647EF454();
  __break(1u);
  return result;
}

void sub_2647ED64C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2647EEEC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2647EC7A0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2647EDC30();
      goto LABEL_7;
    }

    sub_2647ECDEC(v17, a3 & 1);
    v23 = sub_2647EC7A0(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_2647ED988(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_2647EF454();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_2647ED818(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2647EC824(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_2647EDEA4();
      goto LABEL_7;
    }

    sub_2647ED1B4(v15, a4 & 1);
    v22 = sub_2647EC824(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2647EF454();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8) - 8) + 72) * v12;

    return sub_2647EE8E4(a1, v20);
  }

LABEL_13:
  sub_2647EDA40(v12, a2, a3, a1, v18);
}

uint64_t sub_2647ED988(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2647EEEC4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2647EDA40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
  result = sub_2647EE954(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_2647EDAE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80888, &qword_2647EFD58);
  v2 = *v0;
  v3 = sub_2647EF404();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

char *sub_2647EDC30()
{
  v1 = v0;
  v31 = sub_2647EEEC4();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80898, &qword_2647EFD88);
  v3 = *v0;
  v4 = sub_2647EF404();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_2647EDEA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80890, &qword_2647EFD80);
  v2 = *v0;
  v3 = sub_2647EF404();
  v4 = v3;
  if (*(v2 + 16))
  {
    v32 = v1;
    result = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v7)
    {
      result = memmove(result, (v2 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v2 + 16);
    v33 = v2;
    v34 = v4;
    *(v4 + 16) = v10;
    v11 = 1 << *(v2 + 32);
    v12 = -1;
    v13 = *(v2 + 64);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v14 = v12 & v13;
    v15 = (v11 + 63) >> 6;
    if ((v12 & v13) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v9 << 6);
        v20 = v33;
        v21 = 16 * v19;
        v22 = (*(v33 + 48) + 16 * v19);
        v23 = *v22;
        v24 = v22[1];
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
        v35 = &v32;
        MEMORY[0x28223BE20](v25 - 8);
        v27 = &v32 - v26;
        v29 = *(v28 + 72) * v19;
        sub_2647EAEF4(*(v20 + 56) + v29, &v32 - v26, &qword_27FF80848, &qword_2647EFAE8);
        v30 = v34;
        v31 = (*(v34 + 48) + v21);
        *v31 = v23;
        v31[1] = v24;
        sub_2647EE954(v27, *(v30 + 56) + v29);
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v32;
        v4 = v34;
        goto LABEL_21;
      }

      v18 = *(v6 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_2647EE0E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80888, &qword_2647EFD58);
    v3 = sub_2647EF424();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_2647EC734(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
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

uint64_t sub_2647EE1C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2647EB12C;

  return sub_2647EBA14(a1, v4, v5, v7, v6);
}

unint64_t sub_2647EE284()
{
  result = qword_2814C1348;
  if (!qword_2814C1348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C1348);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SAEligibilityDomain(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SAEligibilityDomain(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t dispatch thunk of SAEligibilityChecking.isEligible(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2647EEDD8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SAEligibilityChecker.isEligible(for:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2647EC45C;

  return v6(a1);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2647EE64C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2647E77E8;

  return sub_2647EBA14(a1, v4, v5, v7, v6);
}

uint64_t sub_2647EE70C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF807F0, &qword_2647EFA48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2647EE774(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2647EB12C;

  return sub_2647E7BD8(a1, v4);
}

uint64_t sub_2647EE82C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2647E77E8;

  return sub_2647E7BD8(a1, v4);
}

uint64_t sub_2647EE8E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2647EE954(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2647EE9C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2647EEEC4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2647EEA08(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80890, &qword_2647EFD80);
    v3 = sub_2647EF424();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF808A8, &qword_2647EFD98);
  v5 = MEMORY[0x28223BE20](v4);
  v8 = (&v23 - v7);
  if (!v2)
  {
    return v3;
  }

  v9 = *(v5 + 48);
  v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = *(v6 + 72);

  while (1)
  {
    sub_2647EAEF4(v10, v8, &qword_27FF808A8, &qword_2647EFD98);
    v13 = *v8;
    v12 = v8[1];
    result = sub_2647EC824(*v8, v12);
    if (v15)
    {
      break;
    }

    v16 = result;
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v17 = (v3[6] + 16 * result);
    *v17 = v13;
    v17[1] = v12;
    v18 = v3[7];
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80848, &qword_2647EFAE8);
    result = sub_2647EE954(v8 + v9, v18 + *(*(v19 - 8) + 72) * v16);
    v20 = v3[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_12;
    }

    v3[2] = v22;
    v10 += v11;
    if (!--v2)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_2647EEBEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF808A0, &qword_2647EFD90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF80898, &qword_2647EFD88);
    v7 = sub_2647EF424();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2647EAEF4(v9, v5, &qword_27FF808A0, &qword_2647EFD90);
      result = sub_2647EC7A0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2647EEEC4();
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