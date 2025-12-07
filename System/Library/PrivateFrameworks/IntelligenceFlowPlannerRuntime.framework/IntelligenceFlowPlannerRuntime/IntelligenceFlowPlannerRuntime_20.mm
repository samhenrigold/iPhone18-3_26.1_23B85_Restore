uint64_t sub_22C52FE2C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10[-v7];
  sub_22C9039CC();
  v11 = a1;
  v12 = a2;
  *a3 = sub_22C79EB0C(sub_22C5318DC);
  return sub_22C3770B0(v8, &qword_27D9BB908, &qword_22C910960);
}

void sub_22C52FF1C(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v20 = a2;
  v21 = a3;
  v4 = sub_22C90963C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C90952C();
  v8 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  sub_22C374168(a1, v11);
  sub_22C90935C();
  (*(v5 + 104))(v7, *MEMORY[0x277D72E08], v4);
  (*(v12 + 24))(v22, v10, v7, *(v20 + 32), v11, v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v19);
  if (v23)
  {
    v13 = 0xF000000000000007;
  }

  else
  {
    v14 = v22[3];
    v15 = v22[4];
    v17 = v22[1];
    v16 = v22[2];
    v13 = v22[0];

    sub_22C456CE4(v13, v17, v16, v14, v15, 0);
  }

  *v21 = v13;
}

uint64_t sub_22C530154(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22C530210;

  return sub_22C52EF74(a1, a2, a3, a4);
}

uint64_t sub_22C530210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *v8;

  v10 = *(v12 + 8);

  return v10(a1);
}

BOOL sub_22C530310()
{
  v0 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - v4;
  sub_22C9039CC();
  v6 = sub_22C9093BC();
  if (sub_22C370B74(v5, 1, v6) == 1)
  {
    goto LABEL_7;
  }

  sub_22C531200(v5, v3);
  v7 = *(v6 - 8);
  if ((*(v7 + 88))(v3, v6) != *MEMORY[0x277D72A58])
  {
    (*(v7 + 8))(v3, v6);
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  (*(v7 + 96))(v3, v6);
  v8 = sub_22C90931C();
  v9 = swift_projectBox();
  v10 = (*(*(v8 - 8) + 88))(v9, v8);
  if (v10 == *MEMORY[0x277D729D0] || v10 == *MEMORY[0x277D729B0])
  {

    v11 = 1;
  }

  else
  {
    v11 = v10 == *MEMORY[0x277D72970];
  }

LABEL_8:
  sub_22C3770B0(v5, &qword_27D9BB908, &qword_22C910960);
  return v11;
}

BOOL sub_22C53053C()
{
  v71 = sub_22C90977C();
  sub_22C369824();
  v70 = v0;
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v69 = v3 - v2;
  sub_22C9094AC();
  sub_22C369824();
  v72 = v5;
  v73 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v8 = v7 - v6;
  sub_22C90952C();
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = (v11 - v10);
  v13 = sub_22C90919C();
  sub_22C369824();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v19 = v18 - v17;
  v20 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v20 - 8);
  sub_22C369ABC();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v66 - v25;
  sub_22C9039CC();
  v27 = sub_22C9093BC();
  if (sub_22C370B74(v26, 1, v27) == 1)
  {
    goto LABEL_9;
  }

  v67 = v8;
  v68 = v15;
  v28 = v13;
  sub_22C531200(v26, v23);
  v29 = *(v27 - 8);
  if ((*(v29 + 88))(v23, v27) == *MEMORY[0x277D72A38])
  {
    (*(v29 + 96))(v23, v27);
    v30 = swift_projectBox();
    v31 = v68;
    v32 = v28;
    (*(v68 + 16))(v19, v30, v28);
    sub_22C9090AC();
    v33 = sub_22C36BE34();
    v35 = v34(v33);
    if (v35 == *MEMORY[0x277D72D50])
    {
      (*(v31 + 8))(v19, v28);
LABEL_8:
      v38 = sub_22C36BE34();
      v39(v38);

      goto LABEL_9;
    }

    if (v35 == *MEMORY[0x277D72D30])
    {
LABEL_7:
      v36 = sub_22C369F08();
      v37(v36, v28);
      goto LABEL_8;
    }

    if (v35 == *MEMORY[0x277D72D28])
    {
      v42 = sub_22C36BE34();
      v43(v42);
      v44 = *(*v12 + 16);
      v45 = *(*v12 + 24);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      inited = swift_initStackObject();
      v47 = sub_22C37346C(inited);
      *(v47 + 1) = v48;
      v74 = v44;
      v75 = v45;
      MEMORY[0x28223BE20](v47);
      sub_22C3718E0();
      v40 = sub_22C5EC08C(sub_22C457404, v49, inited);
      swift_setDeallocating();
      sub_22C58FFC4();
      v50 = sub_22C369F08();
      v51(v50, v28);
    }

    else
    {
      if (v35 != *MEMORY[0x277D72D18])
      {
        goto LABEL_7;
      }

      v52 = sub_22C36BE34();
      v53(v52);
      v66 = *v12;
      v54 = swift_projectBox();
      v55 = v72;
      v56 = v67;
      (*(v72 + 16))(v67, v54, v73);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v57 = swift_initStackObject();
      *(v57 + 16) = xmmword_22C90F870;
      sub_22C37346C(v57);
      v58 = v69;
      sub_22C90948C();
      v59 = sub_22C9096FC();
      v61 = v60;
      v62 = (*(v70 + 8))(v58, v71);
      v71 = v32;
      v74 = v59;
      v75 = v61;
      MEMORY[0x28223BE20](v62);
      sub_22C3718E0();
      v40 = sub_22C5EC08C(sub_22C3AC11C, v63, v57);
      swift_setDeallocating();
      sub_22C58FFC4();
      (*(v55 + 8))(v56, v73);
      v64 = sub_22C369F08();
      v65(v64, v71);
    }

    goto LABEL_10;
  }

  (*(v29 + 8))(v23, v27);
LABEL_9:
  v40 = 0;
LABEL_10:
  sub_22C3770B0(v26, &qword_27D9BB908, &qword_22C910960);
  return v40;
}

uint64_t sub_22C530BC8(void *a1)
{
  v61 = a1;
  v2 = sub_22C9039FC();
  sub_22C369824();
  v66 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v7 = v5 - v6;
  v9 = MEMORY[0x28223BE20](v8);
  v62 = &v58 - v10;
  MEMORY[0x28223BE20](v9);
  v59 = &v58 - v11;
  sub_22C9063DC();
  sub_22C369824();
  v64 = v13;
  v65 = v12;
  MEMORY[0x28223BE20](v12);
  sub_22C369ABC();
  v63 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v60 = &v58 - v17;
  v18 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v58 - v19;
  v21 = sub_22C90952C();
  sub_22C369824();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  sub_22C369ABC();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v58 - v29;
  sub_22C9039CC();
  v31 = sub_22C9093BC();
  if (sub_22C370B74(v20, 1, v31) == 1)
  {
    sub_22C3770B0(v20, &qword_27D9BB908, &qword_22C910960);
    v32 = v63;
    sub_22C903F7C();
    v33 = v66;
    v34 = *(v66 + 16);
    v34(v7, v1, v2);
    v35 = sub_22C9063CC();
    v36 = sub_22C90AADC();
    v37 = v2;
    if (os_log_type_enabled(v35, v36))
    {
      v38 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v67 = v61;
      *v38 = 136315138;
      v34(v62, v7, v37);
      v39 = sub_22C90A1AC();
      v41 = v40;
      (*(v33 + 8))(v7, v37);
      v42 = sub_22C36F9F4(v39, v41, &v67);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_22C366000, v35, v36, "Dropping span-matched entity, since type cannot be determined: %s", v38, 0xCu);
      sub_22C36FF94(v61);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    else
    {

      (*(v33 + 8))(v7, v2);
    }

    (*(v64 + 8))(v32, v65);
  }

  else
  {
    v43 = v66;
    sub_22C90935C();
    (*(*(v31 - 8) + 8))(v20, v31);
    (*(v23 + 32))(v30, v27, v21);
    if (sub_22C530310() || (sub_22C5E94F0(), (v44 & 1) != 0))
    {
      (*(v23 + 8))(v30, v21);
      return 0;
    }

    v58 = v30;
    v61 = v23;
    v63 = v21;
    v46 = v60;
    sub_22C903F7C();
    v47 = v43;
    v48 = *(v43 + 16);
    v49 = v59;
    v48(v59, v1, v2);
    v50 = sub_22C9063CC();
    v51 = sub_22C90AACC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v67 = v53;
      *v52 = 136315138;
      v48(v62, v49, v2);
      v54 = sub_22C90A1AC();
      v56 = v55;
      (*(v47 + 8))(v49, v2);
      v57 = sub_22C36F9F4(v54, v56, &v67);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_22C366000, v50, v51, "Dropping non-primitive span-matched entity with no matching types among tools in prompt: %s", v52, 0xCu);
      sub_22C36FF94(v53);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v64 + 8))(v60, v65);
    }

    else
    {

      (*(v47 + 8))(v49, v2);
      (*(v64 + 8))(v46, v65);
    }

    (v61[1])(v58, v63);
  }

  return 1;
}

uint64_t sub_22C531200(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22C531270(uint64_t a1)
{
  v63 = sub_22C9039FC();
  v2 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C3A5908(&qword_27D9BDA90, &unk_22C91A460);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v54 - v5;
  v70 = sub_22C90822C();
  v7 = MEMORY[0x28223BE20](v70);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v65 = &v54 - v10;
  MEMORY[0x28223BE20](v9);
  v69 = &v54 - v11;
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v71 = 0;
  v72 = MEMORY[0x277D84F90];
  v68 = v14 + 16;
  v64 = *(a1 + 16);
  v60 = (v2 + 8);
  v61 = v14;
  v56 = (v14 + 8);
  v57 = (v14 + 32);
  v58 = v6;
  v59 = a1;
  while (1)
  {
    if (v12 == v64)
    {

      return;
    }

    if (v12 >= *(a1 + 16))
    {
      break;
    }

    v15 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v66 = *(v61 + 72);
    v67 = v15;
    v16 = a1 + v15 + v66 * v12;
    v17 = *(v61 + 16);
    v17(v69, v16, v70);
    v18 = v62;
    sub_22C90821C();
    v19 = sub_22C9039DC();
    (*v60)(v18, v63);
    sub_22C58B384(v19, v6);

    v20 = sub_22C90361C();
    if (sub_22C370B74(v6, 1, v20) == 1)
    {
      sub_22C3770B0(v6, &qword_27D9BDA90, &unk_22C91A460);
      v21 = 0;
      v22 = 0xE000000000000000;
    }

    else
    {
      v21 = sub_22C9035EC();
      v23 = v6;
      v22 = v24;
      (*(*(v20 - 8) + 8))(v23, v20);
    }

    v25 = v71;
    v26 = v72;
    v27 = *(v72 + 16);
    if (!v71)
    {
      v29 = 0;
      v41 = (v72 + 40);
      while (v27 != v29)
      {
        v42 = *(v41 - 1) == v21 && *v41 == v22;
        if (v42 || (sub_22C90B4FC() & 1) != 0)
        {
          goto LABEL_9;
        }

        ++v29;
        v41 += 2;
      }

      v33 = 0;
LABEL_27:
      sub_22C7D4160(v21, v22, v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B6A94(0, *(v13 + 16) + 1, 1);
        v13 = v73;
      }

      v45 = *(v13 + 16);
      v44 = *(v13 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_22C3B6A94(v44 > 1, v45 + 1, 1);
        v13 = v73;
      }

      *(v13 + 16) = v45 + 1;
      v46 = v13 + 32;
      *(v13 + 32 + 8 * v45) = MEMORY[0x277D84F90];
      v17(v55, v69, v70);
      v36 = *(v13 + 32 + 8 * v45);
      v47 = swift_isUniquelyReferenced_nonNull_native();
      *(v13 + 32 + 8 * v45) = v36;
      if ((v47 & 1) == 0)
      {

        sub_22C59204C();
        *(v46 + 8 * v45) = v52;

        v36 = *(v46 + 8 * v45);
      }

      a1 = v59;
      v38 = *(v36 + 16);
      v39 = v38 + 1;
      if (v38 >= *(v36 + 24) >> 1)
      {
        sub_22C59204C();
        v36 = v53;
        *(v46 + 8 * v45) = v53;
      }

      v40 = v55;
      goto LABEL_36;
    }

    sub_22C7DA844(v21, v22, v26 + 32, v27, (v25 + 16));
    v29 = v28;
    v31 = v30;
    v33 = v32;

    if (v31)
    {
      goto LABEL_27;
    }

LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C56C1DC();
      v13 = v34;
    }

    if ((v29 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    if (v29 >= *(v13 + 16))
    {
      goto LABEL_40;
    }

    v35 = v13 + 32;
    v17(v65, v69, v70);
    v36 = *(v13 + 32 + 8 * v29);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    *(v13 + 32 + 8 * v29) = v36;
    if ((v37 & 1) == 0)
    {

      sub_22C59204C();
      *(v35 + 8 * v29) = v50;

      v36 = *(v35 + 8 * v29);
    }

    a1 = v59;
    v38 = *(v36 + 16);
    v39 = v38 + 1;
    if (v38 >= *(v36 + 24) >> 1)
    {
      sub_22C59204C();
      v36 = v51;
      *(v35 + 8 * v29) = v51;
    }

    v40 = v65;
LABEL_36:
    ++v12;
    *(v36 + 16) = v39;
    v48 = v36 + v67 + v38 * v66;
    v49 = v70;
    (*v57)(v48, v40, v70);

    (*v56)(v69, v49);
    v6 = v58;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t getEnumTagSinglePayload for GenerativeAssistantToolsRiskProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_22C5319F4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C531ACC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v15 = a3 & 0xFFFFFFFFFFFFFFLL;
  v13 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v9 = 15;
  while (1)
  {
    if (4 * v6 == v9 >> 14)
    {
      return a1;
    }

    result = v9;
    if ((v9 & 0xC) == v8)
    {
      result = sub_22C8A3F0C(v9, a2, a3);
    }

    v11 = result >> 16;
    if (result >> 16 >= v6)
    {
      break;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      result = sub_22C90A3FC();
      v12 = result;
    }

    else if ((a3 & 0x2000000000000000) != 0)
    {
      v14[0] = a2;
      v14[1] = v15;
      v12 = *(v14 + v11);
    }

    else
    {
      result = v13;
      if ((a2 & 0x1000000000000000) == 0)
      {
        result = sub_22C90AFCC();
      }

      v12 = *(result + v11);
    }

    if ((v9 & 0xC) == v8)
    {
      result = sub_22C8A3F0C(v9, a2, a3);
      v9 = result;
      if ((a3 & 0x1000000000000000) == 0)
      {
LABEL_19:
        v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_24;
      }
    }

    else if ((a3 & 0x1000000000000000) == 0)
    {
      goto LABEL_19;
    }

    if (v6 <= v9 >> 16)
    {
      goto LABEL_27;
    }

    v9 = sub_22C90A3CC();
LABEL_24:
    a1 = 33 * a1 + v12;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

double sub_22C531C50@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C9063DC();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = *(a1 + 16);
  if (v11)
  {
    v38 = a2;
    *&v39 = MEMORY[0x277D84F90];
    sub_22C3B63F4(0, v11, 0);
    v12 = v39;
    v13 = (a1 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;
      sub_22C36A83C();
      v16 = swift_allocObject();
      *(v16 + 16) = v14;
      *(v16 + 24) = v15;
      *&v39 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);

      if (v18 >= v17 >> 1)
      {
        sub_22C3B63F4(v17 > 1, v18 + 1, 1);
        v12 = v39;
      }

      *(v12 + 16) = v18 + 1;
      *(v12 + 8 * v18 + 32) = v16 | 0x4000000000000000;
      v13 += 4;
      --v11;
    }

    while (v11);

    a2 = v38;
    goto LABEL_8;
  }

  v25 = *(MEMORY[0x277D84F90] + 16);

  if (v25)
  {
LABEL_8:
    v26 = sub_22C531ED0(a1, v19, v20, v21, v22, v23, v24);
    sub_22C46BF90(v26, v27, a1, v28, v29, v30, v31, &v39);

    sub_22C474C14(&v39);

    result = *&v39;
    v33 = v40;
    v34 = v41;
    *a2 = v39;
    *(a2 + 16) = v33;
    *(a2 + 24) = v34;
    return result;
  }

  sub_22C903F7C();
  v35 = sub_22C9063CC();
  v36 = sub_22C90AADC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_22C366000, v35, v36, "ToolGrammarGenerator_v4_0 has an empty tool list!", v37, 2u);
    MEMORY[0x2318B9880](v37, -1, -1);
  }

  (*(v6 + 8))(v10, v4);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_22C531ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v36 = MEMORY[0x277D84F90];
    sub_22C3B5E2C(0, v7, 0, a4, a5, a6, a7);
    v9 = (a1 + 40);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = *(v36 + 16);
      v13 = *(v36 + 24);

      if (v12 >= v13 >> 1)
      {
        sub_22C3B5E2C(v13 > 1, v12 + 1, 1, v14, v15, v16, v17);
      }

      *(v36 + 16) = v12 + 1;
      v18 = v36 + 16 * v12;
      *(v18 + 32) = v11;
      *(v18 + 40) = v10;
      v9 += 4;
      --v7;
    }

    while (v7);
  }

  result = sub_22C7F48EC();
  v21 = v20;
  v22 = 0;
  v23 = 0;
  v24 = *(v21 + 16);
  for (i = (v21 + 40); ; i += 2)
  {
    if (v24 == v22)
    {
      v28 = sub_22C531ACC(5381, v23, 0xE000000000000000);

      sub_22C3A5908(&qword_27D9BB5D8, &unk_22C91A680);
      v29 = swift_allocObject();
      v30 = MEMORY[0x277D849A8];
      *(v29 + 16) = xmmword_22C90F800;
      v31 = MEMORY[0x277D84A20];
      *(v29 + 56) = v30;
      *(v29 + 64) = v31;
      *(v29 + 32) = v28;
      v32 = sub_22C90A14C();
      v34 = v33;
      v35 = sub_22C90B47C();
      MEMORY[0x2318B7850](v35);

      MEMORY[0x2318B7850](95, 0xE100000000000000);
      MEMORY[0x2318B7850](v32, v34);

      return 0x696C5F736C6F6F74;
    }

    if (v22 >= *(v21 + 16))
    {
      break;
    }

    ++v22;
    v27 = *(i - 1);
    v26 = *i;
    v37 = v23;

    MEMORY[0x2318B7850](v27, v26);

    v23 = v37;
  }

  __break(1u);
  return result;
}

void sub_22C532128(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v43 = a1;
  v9 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - v10;
  v12 = sub_22C90941C();
  sub_22C369824();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v18 = v17 - v16;
  v20 = *a3;
  v19 = a3[1];
  v21 = a3[3];
  v41 = a3[2];
  v42 = v21;
  sub_22C534884(a4, v11);
  if (sub_22C370B74(v11, 1, v12) == 1)
  {
    sub_22C5348F4(v11);
LABEL_6:
    sub_22C369AEC();
    v22 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
    sub_22C36BE74();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_22C90FB40;
    sub_22C36A83C();
    v32 = swift_allocObject();
    v30 = v43;
    *(v32 + 16) = v43;
    *(v32 + 24) = a2;
    *(v31 + 32) = v32;
    sub_22C36A83C();
    v33 = swift_allocObject();
    *(v33 + 16) = 61;
    *(v33 + 24) = 0xE100000000000000;
    *(v31 + 40) = v33;
    sub_22C36A83C();
    v34 = swift_allocObject();
    *(v34 + 16) = v20;
    *(v34 + 24) = v19;
    *(v31 + 48) = v34 | 0x4000000000000000;
    *(v22 + 16) = v31;

    goto LABEL_7;
  }

  (*(v14 + 32))(v18, v11, v12);
  if ((sub_22C5FB484() & 1) == 0)
  {
    (*(v14 + 8))(v18, v12);
    goto LABEL_6;
  }

  sub_22C369AEC();
  v22 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22C90D070;
  sub_22C36A83C();
  v24 = swift_allocObject();
  *(v24 + 16) = v43;
  *(v24 + 24) = a2;
  *(v23 + 32) = v24;
  sub_22C36A83C();
  v25 = swift_allocObject();
  sub_22C372900(v25, 0x6C616E6F6974706FLL);
  *(v23 + 40) = v26;
  sub_22C36A83C();
  v27 = swift_allocObject();
  *(v27 + 16) = 61;
  *(v27 + 24) = 0xE100000000000000;
  *(v23 + 48) = v27;
  sub_22C36A83C();
  v28 = swift_allocObject();
  *(v28 + 16) = v20;
  *(v28 + 24) = v19;
  *(v23 + 56) = v28 | 0x4000000000000000;
  v29 = *(v14 + 8);

  v29(v18, v12);
  v30 = v43;
  *(v22 + 16) = v23;
LABEL_7:
  v44 = 0x5F6D61726170;
  v45 = 0xE600000000000000;
  MEMORY[0x2318B7850](v30, a2);
  MEMORY[0x2318B7850](95, 0xE100000000000000);
  MEMORY[0x2318B7850](v20, v19);
  v35 = v44;
  v36 = v45;
  sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
  sub_22C36BE74();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_22C90F800;
  *(v37 + 32) = v20;
  *(v37 + 40) = v19;
  *(v37 + 48) = v41;
  v44 = v37;

  v38 = v42;

  sub_22C3CC3D8(v38);
  v39 = v44;
  *a5 = v35;
  a5[1] = v36;
  a5[2] = v22 | 0xC000000000000000;
  a5[3] = v39;
}

uint64_t sub_22C532504()
{
  v0 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22C90FB40;
  v2 = swift_allocObject();
  *(v2 + 16) = 44;
  *(v2 + 24) = 0xE100000000000000;
  *(v1 + 32) = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = 8236;
  *(v3 + 24) = 0xE200000000000000;
  *(v1 + 40) = v3;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  *(v1 + 48) = result;
  *(v0 + 16) = v1;
  qword_27D9BDA98 = 0xD000000000000017;
  unk_27D9BDAA0 = 0x800000022C931ED0;
  qword_27D9BDAA8 = v0 | 0x8000000000000000;
  return result;
}

uint64_t sub_22C532604@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v113 = *MEMORY[0x277D85DE8];
  v109 = 0x5F6C6F6F74;
  v110 = 0xE500000000000000;
  v11 = sub_22C90A2CC();
  MEMORY[0x2318B7850](v11);

  v12 = *(a5 + 16);
  if (v12)
  {
    v109 = 0x5F6C6F6F74;
    v110 = 0xE500000000000000;

    MEMORY[0x2318B7850](0x74656D617261705FLL, 0xEB00000000737265);
    v95 = a5;
    sub_22C532FDC(0x5F6C6F6F74, 0xE500000000000000, a5, &v109);

    v101 = a4;
    v13 = a3;
    v15 = v109;
    v14 = v110;
    v16 = v111;
    v103 = v110;
    v109 = 0x5F6C6F6F74;
    v110 = 0xE500000000000000;

    MEMORY[0x2318B7850](0x7461636F766E695FLL, 0xEB000000006E6F69);
    v18 = v109;
    v17 = v110;
    v96 = v15;
    v106 = v15;
    v107 = v14;
    v108 = v16;

    v93 = v13;
    sub_22C5333D4(v18, v17, v13, v101, &v106, &v109);

    v19 = v110;
    v20 = v111;
    v21 = v112;
    v22 = v16;
    v102 = v16;
    v100 = v109;
    if (a6)
    {
      v109 = 0x5F6C6F6F74;
      v110 = 0xE500000000000000;

      v23 = v19;
      MEMORY[0x2318B7850](0x6574616470755FLL, 0xE700000000000000);
      v25 = v109;
      v24 = v110;
      v106 = v96;
      v107 = v103;
      v108 = v22;

      sub_22C533654(v25, v24, v93, v101, &v106, &v109);

      v26 = v110;
      v92 = v111;
      v90 = v109;
      v91 = v112;
      sub_22C369AEC();
      v27 = swift_allocObject();
      sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
      sub_22C380498();
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_22C90F870;
      sub_22C36A83C();
      v29 = swift_allocObject();
      *(v29 + 16) = v100;
      *(v29 + 24) = v23;
      *(v28 + 32) = v29 | 0x4000000000000000;
      sub_22C36A83C();
      v30 = swift_allocObject();
      *(v30 + 16) = v90;
      *(v30 + 24) = v26;
      *(v28 + 40) = v30 | 0x4000000000000000;
      *(v27 + 16) = v28;
      v94 = v27 | 0x8000000000000000;
      sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
      sub_22C36BE74();
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_22C90F800;
      *(v31 + 32) = v100;
      *(v31 + 40) = v23;
      *(v31 + 48) = v20;
      v104 = v31;

      swift_bridgeObjectRetain_n();

      sub_22C3CC3D8(v21);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F800;
      *(inited + 32) = v90;
      *(inited + 40) = v26;
      *(inited + 48) = v92;
      v109 = inited;

      sub_22C3CC3D8(v91);
      sub_22C3CC3D8(v109);
      v33 = swift_initStackObject();
      *(v33 + 16) = xmmword_22C90F800;
      *(v33 + 32) = v96;
      *(v33 + 40) = v103;
      *(v33 + 48) = v102;
      v109 = v33;

      sub_22C3CC3D8(v34);
      v35 = &v104;
      sub_22C3CC3D8(v109);
      v97 = v104;
      v36 = (v95 + 56);
      v37 = MEMORY[0x277D84F90];
      while (1)
      {
        v38 = *(v36 - 1);
        v39 = *v36;
        v40 = *(v36 - 3);
        v41 = *(v36 - 2);
        swift_initStackObject();
        sub_22C5349EC();
        *(v35 + 1) = xmmword_22C90F800;
        v35 += 2;
        v42[4] = v40;
        v42[5] = v41;
        v42[6] = v38;
        v43 = *(v39 + 16);

        if (v43 && (sub_22C5902A0(1, v43 + 1, 1, v100), sub_22C5349EC(), v35 += 2, *(v39 + 16)))
        {
          sub_22C374C40();
          if (v55 < v43)
          {
            goto LABEL_62;
          }

          sub_22C3871BC(v54);
          swift_arrayInitWithCopy();

          v56 = *(v100 + 16);
          v44 = v56 + v43;
          if (__OFADD__(v56, v43))
          {
            goto LABEL_64;
          }

          *v35 = v44;
        }

        else
        {

          if (v43)
          {
            __break(1u);
            goto LABEL_53;
          }

          v44 = *v35;
        }

        v45 = *(v37 + 16);
        v46 = v45 + v44;
        if (__OFADD__(v45, v44))
        {
          goto LABEL_54;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v46 > *(v37 + 24) >> 1)
        {
          if (v45 <= v46)
          {
            v48 = v45 + v44;
          }

          else
          {
            v48 = v45;
          }

          sub_22C5902A0(isUniquelyReferenced_nonNull_native, v48, 1, v37);
          v37 = v49;
        }

        if (*v35)
        {
          sub_22C374C40();
          if (v50 < v44)
          {
            goto LABEL_58;
          }

          swift_arrayInitWithCopy();

          if (v44)
          {
            v51 = *(v37 + 16);
            v52 = __OFADD__(v51, v44);
            v53 = v51 + v44;
            if (v52)
            {
              goto LABEL_60;
            }

            *(v37 + 16) = v53;
          }
        }

        else
        {

          if (v44)
          {
            goto LABEL_56;
          }
        }

        v36 += 4;
        if (!--v12)
        {
          v109 = v97;
          sub_22C3CC3D8(v37);

          goto LABEL_50;
        }
      }
    }

    sub_22C36A83C();
    v65 = swift_allocObject();
    *(v65 + 16) = v100;
    *(v65 + 24) = v19;
    v94 = v65 | 0x4000000000000000;
    sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
    sub_22C36BE74();
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_22C90F800;
    *(v66 + 32) = v100;
    *(v66 + 40) = v19;
    *(v66 + 48) = v20;
    v105 = v66;

    swift_bridgeObjectRetain_n();
    sub_22C3CC3D8(v21);
    v67 = swift_initStackObject();
    *(v67 + 16) = xmmword_22C90F800;
    *(v67 + 32) = v96;
    *(v67 + 40) = v103;
    *(v67 + 48) = v16;
    v109 = v67;

    sub_22C3CC3D8(v68);
    v69 = &v105;
    sub_22C3CC3D8(v109);
    v98 = v105;
    v70 = (v95 + 56);
    v71 = MEMORY[0x277D84F90];
    do
    {
      v72 = *(v70 - 1);
      v73 = *v70;
      v75 = *(v70 - 3);
      v74 = *(v70 - 2);
      swift_initStackObject();
      sub_22C5349EC();
      *(v69 + 1) = xmmword_22C90F800;
      v69 += 2;
      v76[4] = v75;
      v76[5] = v74;
      v76[6] = v72;
      v77 = *(v73 + 16);

      if (v77 && (sub_22C5902A0(1, v77 + 1, 1, a6), sub_22C5349EC(), v69 += 2, *(v73 + 16)))
      {
        sub_22C374C40();
        if (v88 < v77)
        {
          goto LABEL_63;
        }

        sub_22C3871BC(v87);
        swift_arrayInitWithCopy();

        v89 = *(a6 + 16);
        v78 = v89 + v77;
        if (__OFADD__(v89, v77))
        {
          goto LABEL_65;
        }

        *v69 = v78;
      }

      else
      {

        if (v77)
        {
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
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
          __break(1u);
        }

        v78 = *v69;
      }

      v79 = *(v71 + 16);
      v80 = v79 + v78;
      if (__OFADD__(v79, v78))
      {
        goto LABEL_55;
      }

      v81 = swift_isUniquelyReferenced_nonNull_native();
      if (!v81 || v80 > *(v71 + 24) >> 1)
      {
        if (v79 <= v80)
        {
          v82 = v79 + v78;
        }

        else
        {
          v82 = v79;
        }

        sub_22C5902A0(v81, v82, 1, v71);
        v71 = v83;
      }

      if (*v69)
      {
        sub_22C374C40();
        if (v84 < v78)
        {
          goto LABEL_59;
        }

        swift_arrayInitWithCopy();

        if (v78)
        {
          v85 = *(v71 + 16);
          v52 = __OFADD__(v85, v78);
          v86 = v85 + v78;
          if (v52)
          {
            goto LABEL_61;
          }

          *(v71 + 16) = v86;
        }
      }

      else
      {

        if (v78)
        {
          goto LABEL_57;
        }
      }

      v70 += 4;
      --v12;
    }

    while (v12);
    v109 = v98;
    sub_22C3CC3D8(v71);

LABEL_50:

    v64 = v109;
    v63 = v94;
  }

  else
  {
    sub_22C369AEC();
    v57 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
    sub_22C380498();
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_22C90F870;
    sub_22C36A8CC();
    v59 = swift_allocObject();
    sub_22C377E2C(v59);
    *(v58 + 32) = v60;
    sub_22C36A8CC();
    v61 = swift_allocObject();

    result = MEMORY[0x2318B7850](10536, 0xE200000000000000);
    *(v61 + 16) = a3;
    *(v61 + 24) = a4;
    *(v58 + 40) = v61;
    *(v57 + 16) = v58;
    v63 = v57 | 0xC000000000000000;
    v64 = MEMORY[0x277D84F90];
  }

  *a7 = 0x5F6C6F6F74;
  a7[1] = 0xE500000000000000;
  a7[2] = v63;
  a7[3] = v64;
  return result;
}

uint64_t sub_22C532FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = a1;

  MEMORY[0x2318B7850](0x6D6574695FLL, 0xE500000000000000);
  v36 = a1;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x277D84F90];
  v38 = v6;
  if (v7)
  {
    v40 = MEMORY[0x277D84F90];
    sub_22C3B63F4(0, v7, 0);
    v8 = v40;
    v9 = (a3 + 40);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = v10;
      v13 = *(v40 + 16);
      v14 = *(v40 + 24);

      if (v13 >= v14 >> 1)
      {
        sub_22C3B63F4(v14 > 1, v13 + 1, 1);
      }

      *(v40 + 16) = v13 + 1;
      *(v40 + 8 * v13 + 32) = v12 | 0x4000000000000000;
      v9 += 4;
      --v7;
    }

    while (v7);
    v6 = v38;
  }

  v35 = swift_allocObject();
  *(v35 + 16) = v8;

  MEMORY[0x2318B7850](0x636E65757165735FLL, 0xE900000000000065);
  v15 = v6;
  v16 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22C90F870;
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22C90FB40;
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  *(v20 + 24) = a2;
  *(v19 + 32) = v20 | 0x4000000000000000;
  v21 = swift_allocObject();
  *(v21 + 16) = 8236;
  *(v21 + 24) = 0xE200000000000000;
  *(v19 + 40) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = v36;
  *(v22 + 24) = a2;
  *(v19 + 48) = v22 | 0x4000000000000000;
  *(v18 + 16) = v19;
  v23 = v16;
  *(v17 + 32) = v18 | 0xC000000000000000;
  v24 = swift_allocObject();
  *(v24 + 16) = v36;
  *(v24 + 24) = a2;
  *(v17 + 40) = v24 | 0x4000000000000000;
  *(v16 + 16) = v17;
  v25 = swift_allocObject();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_22C90F870;
  v27 = swift_allocObject();
  *(v27 + 16) = v15;
  *(v27 + 24) = a2;
  *(v26 + 32) = v27 | 0x4000000000000000;
  v28 = swift_allocObject();
  v29 = qword_27D9BA6B8;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = qword_27D9BDA98;
  v30 = unk_27D9BDAA0;
  *(v28 + 16) = qword_27D9BDA98;
  *(v28 + 24) = v30;
  *(v26 + 40) = v28 | 0x4000000000000000;
  *(v25 + 16) = v26;
  sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_22C90FB40;
  v33 = qword_27D9BDAA8;
  *(v32 + 32) = v31;
  *(v32 + 40) = v30;
  *(v32 + 48) = v33;
  *(v32 + 56) = v15;
  *(v32 + 64) = a2;
  *(v32 + 72) = v23 | 0x8000000000000000;
  *(v32 + 80) = v36;
  *(v32 + 88) = a2;
  *(v32 + 96) = v35 | 0x8000000000000000;
  *a4 = v38;
  a4[1] = a2;
  a4[2] = v25 | 0xC000000000000000;
  a4[3] = v32;

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_22C5333D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v8 = *a5;
  v9 = a5[1];
  v26 = *a5;

  MEMORY[0x2318B7850](0x616E6F6974706F5FLL, 0xE90000000000006CLL);
  v10 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22C90F870;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v12 + 24) = v9;
  *(v11 + 32) = v12 | 0x4000000000000000;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0xE000000000000000;
  *(v11 + 40) = v13;
  *(v10 + 16) = v11;
  v14 = v10 | 0x8000000000000000;
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22C90D070;
  v17 = swift_allocObject();
  *(v17 + 16) = 0x766E695F6C6F6F74;
  *(v17 + 24) = 0xEF6E6F697461636FLL;
  *(v16 + 32) = v17 | 0x4000000000000000;
  v18 = swift_allocObject();

  MEMORY[0x2318B7850](40, 0xE100000000000000);
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v16 + 40) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = v26;
  *(v19 + 24) = v9;
  *(v16 + 48) = v19 | 0x4000000000000000;
  v20 = swift_allocObject();
  *(v20 + 16) = 41;
  *(v20 + 24) = 0xE100000000000000;
  *(v16 + 56) = v20;
  *(v15 + 16) = v16;
  sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22C90F800;
  *(v21 + 32) = v26;
  *(v21 + 40) = v9;
  *(v21 + 48) = v14;
  *a6 = a1;
  a6[1] = a2;
  a6[2] = v15 | 0xC000000000000000;
  a6[3] = v21;
}

uint64_t sub_22C533654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22C90F7F0;
  v14 = swift_allocObject();

  MEMORY[0x2318B7850](40, 0xE100000000000000);
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v13 + 32) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = 0xD000000000000015;
  *(v15 + 24) = 0x800000022C930A10;
  *(v13 + 40) = v15 | 0x4000000000000000;
  v16 = swift_allocObject();
  *(v16 + 16) = 8236;
  *(v16 + 24) = 0xE200000000000000;
  *(v13 + 48) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  *(v17 + 24) = v11;
  *(v13 + 56) = v17 | 0x4000000000000000;
  v18 = swift_allocObject();
  *(v18 + 16) = 41;
  *(v18 + 24) = 0xE100000000000000;
  *(v13 + 64) = v18;
  *(v12 + 16) = v13;
  *a6 = a1;
  a6[1] = a2;
  v19 = MEMORY[0x277D84F90];
  a6[2] = v12 | 0xC000000000000000;
  a6[3] = v19;
}

uint64_t sub_22C533804@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v23 = a1[2];
  v24 = a1[3];

  MEMORY[0x2318B7850](v3, v2);

  MEMORY[0x2318B7850](0x746E65746E6F635FLL, 0xE800000000000000);
  sub_22C369AEC();
  v26 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  sub_22C36BE74();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C90FB40;
  sub_22C369AEC();
  v5 = swift_allocObject();
  sub_22C36BE74();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22C90FB40;
  sub_22C36A8CC();
  v7 = swift_allocObject();
  *(v7 + 16) = 91;
  *(v7 + 24) = 0xE100000000000000;
  *(v6 + 32) = v7;
  sub_22C36A8CC();
  v8 = swift_allocObject();
  *(v8 + 16) = 0x5F7473696CLL;
  *(v8 + 24) = 0xE500000000000000;
  *(v6 + 40) = v8 | 0x4000000000000000;
  sub_22C36A8CC();
  v9 = swift_allocObject();
  *(v9 + 16) = 93;
  *(v9 + 24) = 0xE100000000000000;
  *(v6 + 48) = v9;
  *(v5 + 16) = v6;
  *(v4 + 32) = v5 | 0xC000000000000000;
  sub_22C36A8CC();
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = v2;
  *(v4 + 40) = v10 | 0x4000000000000000;
  sub_22C36A8CC();
  v11 = swift_allocObject();
  *(v11 + 16) = 23899;
  *(v11 + 24) = 0xE200000000000000;
  *(v4 + 48) = v11;
  *(v26 + 16) = v4;
  sub_22C369AEC();
  v12 = swift_allocObject();
  sub_22C380498();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22C90F870;
  sub_22C369AEC();
  v14 = swift_allocObject();
  sub_22C36BE74();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22C90FB40;
  sub_22C36A8CC();
  v16 = swift_allocObject();
  *(v16 + 16) = 0x5F7473696CLL;
  *(v16 + 24) = 0xE500000000000000;
  *(v15 + 32) = v16 | 0x4000000000000000;
  sub_22C36A8CC();
  v17 = swift_allocObject();
  *(v17 + 16) = 8236;
  *(v17 + 24) = 0xE200000000000000;
  *(v15 + 40) = v17;
  sub_22C36A8CC();
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  *(v18 + 24) = v2;
  *(v15 + 48) = v18 | 0x4000000000000000;
  *(v14 + 16) = v15;
  *(v13 + 32) = v14 | 0xC000000000000000;
  sub_22C36A8CC();
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  *(v19 + 24) = v2;
  *(v13 + 40) = v19 | 0x4000000000000000;
  *(v12 + 16) = v13;
  sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
  sub_22C36BE74();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22C90F800;
  *(v20 + 32) = 0x5F7473696CLL;
  *(v20 + 40) = 0xE500000000000000;
  *(v20 + 48) = v12 | 0x8000000000000000;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  *(inited + 32) = v3;
  *(inited + 40) = v2;
  *(inited + 48) = v23;
  v27 = inited;

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  sub_22C3CC3D8(v24);
  sub_22C3CC3D8(v27);

  *a2 = 0x5F7473696CLL;
  a2[1] = 0xE500000000000000;
  a2[2] = v26 | 0x8000000000000000;
  a2[3] = v20;
  return result;
}

uint64_t sub_22C533B78@<X0>(void *a1@<X8>)
{
  sub_22C369AEC();
  v2 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  sub_22C380498();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22C90F870;
  sub_22C36A83C();
  v4 = swift_allocObject();
  sub_22C372900(v4, 0x735F6465746F7571);
  *(v3 + 32) = v5;
  sub_22C36A83C();
  v6 = swift_allocObject();
  result = sub_22C372900(v6, 0x636E657265666572);
  *(v3 + 40) = v8;
  *(v2 + 16) = v3;
  *a1 = 0xD000000000000012;
  a1[1] = 0x800000022C931EB0;
  v9 = MEMORY[0x277D84F90];
  a1[2] = v2 | 0x8000000000000000;
  a1[3] = v9;
  return result;
}

uint64_t sub_22C533C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v6 = sub_22C9094EC();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = sub_22C533F4C(a1, v3);
  if (v3)
  {
    (*(v8 + 16))(v12, a1, v6);
    v14 = (*(v8 + 88))(v12, v6);
    if (v14 == *MEMORY[0x277D72CE0] || v14 == *MEMORY[0x277D72C88])
    {
      v16 = 0x800000022C931E90;
      v17 = 0xD000000000000011;
      goto LABEL_9;
    }

    (*(v8 + 8))(v12, v6);
  }

  v17 = 0;
  v16 = 0xE000000000000000;
LABEL_9:
  MEMORY[0x2318B7850](v17, v16);

  TypeIdentifier.PrimitiveTypeIdentifier.selfLoggingTypeName.getter();
  v18 = sub_22C90A2CC();
  v20 = v19;

  MEMORY[0x2318B7850](v18, v20);

  v21 = v13[2];
  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v31 = MEMORY[0x277D84F90];
    sub_22C3B63F4(0, v21, 0);
    v23 = v31;
    v24 = v13 + 5;
    do
    {
      v26 = *(v24 - 1);
      v25 = *v24;
      sub_22C36A83C();
      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      *(v27 + 24) = v25;
      v29 = *(v31 + 16);
      v28 = *(v31 + 24);

      if (v29 >= v28 >> 1)
      {
        sub_22C3B63F4(v28 > 1, v29 + 1, 1);
      }

      *(v31 + 16) = v29 + 1;
      *(v31 + 8 * v29 + 32) = v27 | 0x4000000000000000;
      v24 += 2;
      --v21;
    }

    while (v21);

    v22 = MEMORY[0x277D84F90];
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  sub_22C369AEC();
  result = swift_allocObject();
  *(result + 16) = v23;
  *a3 = 0x766974696D697270;
  a3[1] = 0xEA00000000005F65;
  a3[2] = result | 0x8000000000000000;
  a3[3] = v22;
  return result;
}

void *sub_22C533F4C(uint64_t a1, char a2)
{
  v4 = sub_22C9094EC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = *(v5 + 16);
  v11(&v23 - v9, a1, v4);
  v12 = *(v5 + 88);
  v13 = v12(v10, v4);
  if (v13 == *MEMORY[0x277D72CB0])
  {
    v14 = &unk_283FAEA10;
  }

  else if (v13 == *MEMORY[0x277D72CA0])
  {
    v14 = &unk_283FAEA40;
  }

  else
  {
    if (v13 != *MEMORY[0x277D72CD0] && v13 != *MEMORY[0x277D72CE8])
    {
      if (v13 == *MEMORY[0x277D72CE0] || v13 == *MEMORY[0x277D72C88])
      {
        if ((a2 & 1) == 0)
        {
          v14 = &unk_283FAE9D0;
          goto LABEL_25;
        }

        v17 = a1;
        v18 = *MEMORY[0x277D72CE0];
        v19 = *MEMORY[0x277D72C88];
        v11(v8, v17, v4);
        v20 = v12(v8, v4);
        if (v20 == v18 || v20 == v19)
        {
          v14 = &unk_283FAE990;
          goto LABEL_25;
        }

        v14 = &unk_283FAE9D0;
      }

      else
      {
        v14 = &unk_283FAEAA0;
        v8 = v10;
      }

      (*(v5 + 8))(v8, v4);
      goto LABEL_25;
    }

    v14 = &unk_283FAEA70;
  }

LABEL_25:
  v24 = v14;
  sub_22C3CC46C(&unk_283FAEAD0);
  return v24;
}

uint64_t sub_22C5341A4@<X0>(uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v8 = sub_22C90A2CC();
  MEMORY[0x2318B7850](v8);

  if (sub_22C90A96C())
  {
    sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_22C90F800;
    sub_22C36A83C();
    v11 = swift_allocObject();
    sub_22C372900(v11, 0x6D756E655F796E61);
    *(v10 + 32) = v12;
  }

  else
  {
    v10 = sub_22C48FF50(sub_22C53435C, 0, a3, &type metadata for BNFGrammarRuleExpression, MEMORY[0x277D84A98], a4, MEMORY[0x277D84AC0], v9);
  }

  sub_22C369AEC();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = v13 | 0x8000000000000000;
  sub_22C3A5908(&qword_27D9BAE30, &qword_22C914EB0);
  sub_22C53495C();
  result = sub_22C90A53C();
  *a5 = 0x7079745F6D756E65;
  a5[1] = 0xEA00000000005F65;
  a5[2] = v14;
  a5[3] = result;
  return result;
}

uint64_t sub_22C53435C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = v5 | 0x4000000000000000;
}

void sub_22C5343B8(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22C90F800;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v6;
  v8 = v7;

  sub_22C3CC3D8(v5);
  *a2 = v8;
}

uint64_t sub_22C534464@<X0>(unint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = sub_22C531ACC(5381, a3, a4);
  sub_22C3A5908(&qword_27D9BB5D8, &unk_22C91A680);
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D849A8];
  *(v9 + 16) = xmmword_22C90F800;
  v11 = MEMORY[0x277D84A20];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  *(v9 + 32) = v8;
  v12 = sub_22C90A14C();
  v14 = v13;
  v15 = sub_22C90A2CC();
  MEMORY[0x2318B7850](v15);

  MEMORY[0x2318B7850](95, 0xE100000000000000);
  MEMORY[0x2318B7850](v12, v14);

  sub_22C36A83C();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *a5 = 0x7361635F6D756E65;
  a5[1] = 0xEA00000000005F65;
  v17 = MEMORY[0x277D84F90];
  a5[2] = v16;
  a5[3] = v17;
}

uint64_t sub_22C5345D0()
{
  v0 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22C90F870;
  v2 = swift_allocObject();
  *(v2 + 16) = 0x6D756E655F796E61;
  *(v2 + 24) = 0xE800000000000000;
  *(v1 + 32) = v2 | 0x4000000000000000;
  result = swift_allocObject();
  *(result + 16) = 0x636E657265666572;
  *(result + 24) = 0xE900000000000065;
  *(v1 + 40) = result | 0x4000000000000000;
  *(v0 + 16) = v1;
  strcpy(&qword_27D9E3FA0, "enum_dynamic");
  algn_27D9E3FA8[5] = 0;
  *&algn_27D9E3FA8[6] = -5120;
  qword_27D9E3FB0 = v0 | 0x8000000000000000;
  unk_27D9E3FB8 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_22C5346E4()
{
  if (qword_27D9BA6C0 != -1)
  {
    sub_22C38BA6C(&qword_27D9BA6C0);
  }

  sub_22C5349C8(&qword_27D9E3FA0);
}

uint64_t sub_22C534758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_22C90A2CC();
  MEMORY[0x2318B7850](v6);

  sub_22C369AEC();
  v7 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  sub_22C380498();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22C90F870;
  sub_22C36A8CC();
  v9 = swift_allocObject();
  sub_22C377E2C(v9);
  *(v8 + 32) = v10;
  sub_22C36A8CC();
  v11 = swift_allocObject();

  result = MEMORY[0x2318B7850](10536, 0xE200000000000000);
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v8 + 40) = v11;
  *(v7 + 16) = v8;
  *a3 = 0xD000000000000011;
  a3[1] = 0x800000022C931EF0;
  v13 = MEMORY[0x277D84F90];
  a3[2] = v7 | 0xC000000000000000;
  a3[3] = v13;
  return result;
}

uint64_t sub_22C534884(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C5348F4(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C53495C()
{
  result = qword_27D9BDAB0;
  if (!qword_27D9BDAB0)
  {
    sub_22C3AC1A0(&qword_27D9BAE30, &qword_22C914EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDAB0);
  }

  return result;
}

uint64_t sub_22C5349C8@<X0>(void *a1@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *v1 = *a1;
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = v5;
}

uint64_t sub_22C5349F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t *a6@<X8>)
{
  v195 = a3;
  v189 = a1;
  v190 = a2;
  v202 = a6;
  v204 = sub_22C9063DC();
  sub_22C369824();
  *&v203 = v7;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v186 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v188 = &v186 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v187 = &v186 - v15;
  MEMORY[0x28223BE20](v14);
  v201 = &v186 - v16;
  sub_22C90077C();
  sub_22C369824();
  v193 = v18;
  v194 = v17;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v21 = v20 - v19;
  v22 = a4[1];
  v196 = *a4;
  v197 = v22;
  v23 = a4[2];
  v198 = a4[3];
  v199 = v23;
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  v24 = v210;
  sub_22C382724();
  v25 = v210;
  static PromptGrammarGenerationMode.configuration(from:)(&v210);
  LODWORD(v200) = v210;
  sub_22C382724();
  v192 = v210;
  sub_22C382724();
  v191 = v210;
  sub_22C382724();
  if (v24 == 1)
  {
    v26 = v210;
    if (v25)
    {
      (*(v193 + 16))(v21, v195, v194);
      v27 = sub_22C90136C();
      swift_allocObject();
      v28 = v205;
      result = sub_22C90135C();
      if (v28)
      {
        return result;
      }

      LODWORD(v195) = v26;
      v205 = 0;
      *(&v211 + 1) = v27;
      v212 = &protocol witness table for Tokenizer;
      *&v210 = result;
      *(&v229 + 1) = &type metadata for QuotableStringGrammarConverter;
      v230 = &protocol witness table for QuotableStringGrammarConverter;
      sub_22C36BE74();
      *&v228 = swift_allocObject();
      sub_22C36C730(&v210, v228 + 16);
    }

    else
    {
      LODWORD(v195) = v210;
      v230 = 0;
      v228 = 0u;
      v229 = 0u;
    }

    v38 = v201;
    sub_22C903F7C();
    v39 = sub_22C9063CC();
    v40 = sub_22C90AACC();
    v41 = sub_22C370214();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *&v210 = swift_slowAlloc();
      *v43 = 136315394;
      v44 = 0x800000022C92E2C0;
      v45 = 0x6553646972627968;
      if (v200 == 1)
      {
        v45 = 0xD000000000000012;
      }

      else
      {
        v44 = 0xEC00000072657672;
      }

      if (v200)
      {
        v46 = v45;
      }

      else
      {
        v46 = 0x696C43796C6C7566;
      }

      if (v200)
      {
        v47 = v44;
      }

      else
      {
        v47 = 0xEB00000000746E65;
      }

      v48 = sub_22C36F9F4(v46, v47, &v210);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2080;
      if (v25)
      {
        v49 = 0xD00000000000001CLL;
      }

      else
      {
        v49 = 0x6972745320796E41;
      }

      if (v25)
      {
        v50 = 0x800000022C931F70;
      }

      else
      {
        v50 = 0xEA0000000000676ELL;
      }

      v51 = sub_22C36F9F4(v49, v50, &v210);

      *(v43 + 14) = v51;
      _os_log_impl(&dword_22C366000, v39, v40, "Delta Grammar Configuration - Mode: %s, String Copying: %s", v43, 0x16u);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      v52 = sub_22C36D66C();
      MEMORY[0x2318B9880](v52);

      v53 = *(v203 + 8);
      v54 = v201;
    }

    else
    {

      v53 = *(v203 + 8);
      v54 = v38;
    }

    v55 = v204;
    v53(v54, v204);
    v56 = v199;
    if (v200)
    {
      if (v200 == 1)
      {
        sub_22C464B30(&v228, &v210);
        if (qword_27D9BA650 != -1)
        {
          sub_22C38BA8C(&qword_27D9BA650);
        }

        v225 = qword_27D9BC898;
        v226 = unk_27D9BC8A0;
        v227 = qword_27D9BC8A8;
        v57 = qword_27D9BA648;

        v58 = v192;
        if (v57 != -1)
        {
          sub_22C3830B8(&qword_27D9BA648);
        }

        v221 = xmmword_27D9BC880;
        v222 = qword_27D9BC890;
        v59 = qword_27D9BA658;

        if (v59 != -1)
        {
          sub_22C369F1C(&qword_27D9BA658);
        }

        v217 = xmmword_27D9BC8B0;
        v218 = qword_27D9BC8C0;
        v60 = v202;
        v202[3] = &unk_283FBA150;
        v60[4] = &off_283FBA278;
        sub_22C36BE74();
        v61 = swift_allocObject();
        *v60 = v61;

        sub_22C535E6C(&v225, &v221, &v210, &v217, v58, v61 + 16);
        return sub_22C537404(&v228);
      }

      if ((~v199 & 0x3000000000000007) != 0)
      {
        sub_22C42F0B8(v189, &v225);
        v224 = &off_283FB5340;
        v223 = &type metadata for ToolboxGrammarToolProvider;
        *&v221 = v190;
        v99 = v196;
        v98 = v197;
        v100 = sub_22C374C4C();
        v101 = v198;
        sub_22C4C7C38(v100, v102, v103);
        v104 = sub_22C374C4C();
        sub_22C4C7C38(v104, v105, v106);
        v107 = qword_27D9BA650;

        if (v107 != -1)
        {
          sub_22C38BA8C(&qword_27D9BA650);
        }

        sub_22C3861D0(&qword_27D9BC898);
        if (qword_27D9BA658 != -1)
        {
          sub_22C369F1C(&qword_27D9BA658);
        }

        v204 = *(&xmmword_27D9BC8B0 + 1);
        v190 = xmmword_27D9BC8B0;
        v108 = v202;
        v202[3] = &unk_283FBA1D0;
        v108[4] = &off_283FBA288;
        sub_22C36BE74();
        v201 = swift_allocObject();
        *v108 = v201;
        sub_22C5EA85C();
        *&v206 = v109;
        if (v195)
        {
          sub_22C6A57DC(&v210, 2);
          v109 = v206;
        }

        v202 = v109;
        sub_22C38A950();
        sub_22C3A5908(&qword_27D9BDAC0, &unk_22C91AB00);
        v110 = swift_allocObject();
        *(v110 + 16) = xmmword_22C90F870;
        sub_22C537968();
        sub_22C90AF5C();

        *&v210 = v56;
        *(&v210 + 1) = v99;
        sub_22C37B674();
        v111 = v210;
        sub_22C36A83C();
        v112 = swift_allocObject();
        *(v112 + 16) = v98 + 5;
        *(v112 + 24) = v101;
        v113 = v112 | 0x4000000000000000;
        v195 = sub_22C3A5908(&qword_27D9BDAC8, &qword_22C91A6A0);
        v219 = v195;
        sub_22C37349C();
        v193 = sub_22C3D32C8(v114, v115, &qword_22C91A6A0, v116);
        v220 = v193;
        sub_22C380498();
        v117 = swift_allocObject();
        *&v217 = v117;
        *(v117 + 16) = v111;
        v118 = MEMORY[0x277D84F90];
        *(v117 + 32) = v113;
        *(v117 + 40) = v118;
        sub_22C3A5908(&qword_27D9BDAD8, &qword_22C91A6A8);
        v119 = swift_allocObject();
        sub_22C37A0D8(v119, xmmword_22C90FB40);
        v120 = v210;
        sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
        v121 = swift_allocObject();
        v203 = xmmword_22C90F800;
        *(v121 + 16) = xmmword_22C90F800;
        sub_22C36A83C();
        v122 = swift_allocObject();
        sub_22C3759A0(v122);
        v123 = sub_22C3A5908(&qword_27D9BDAE0, &qword_22C91A6B8);
        v124 = sub_22C375E94(v123);
        sub_22C5379BC(v124);
        v124[3].n128_u64[1] = sub_22C3A5908(&qword_27D9BDAE8, &unk_22C91A6C0);
        v124[4].n128_u64[0] = sub_22C53793C(&qword_27D9BDAF0);
        v124[2].n128_u64[0] = swift_allocObject();
        if (v191)
        {
          sub_22C378A4C(&v221, &v211);
          sub_22C42F0B8(&v225, &v213);
          v215 = &unk_283FB9BD0;
          v216 = &off_283FB9DA0;
          v125 = xmmword_22C91A690;
        }

        else
        {
          bzero(&v211, 0x160uLL);
          v125 = 0uLL;
        }

        sub_22C537A08(v125);
        *(v119 + 56) = &unk_283FB4CB0;
        *(v119 + 64) = &off_2818B2B70;
        v158 = swift_allocObject();
        *(v119 + 32) = v158;
        sub_22C5378F0(v158, "tool_resolve_tool");
        sub_22C37BA74();
        v159 = v210;
        *(v119 + 96) = &unk_283FB4C30;
        *(v119 + 104) = &off_2818B2B58;
        *(v119 + 72) = v159;
        *(v119 + 88) = &unk_283FAEEE8;
        sub_22C537968();
        sub_22C90AF5C();

        *&v210 = v120;
        *(&v210 + 1) = v124;
        sub_22C5379E8();
        v160 = v210;
        sub_22C36A83C();
        v161 = swift_allocObject();
        v162 = v195;
        v163 = v200;
        *(v161 + 16) = v194;
        *(v161 + 24) = v163;
        v164 = v161 | 0x4000000000000000;
        v165 = v193;
        *(v119 + 136) = v162;
        *(v119 + 144) = v165;
        sub_22C380498();
        v166 = swift_allocObject();
        *(v119 + 112) = v166;
        *(v166 + 16) = v160;
        *(v166 + 32) = v164;
        *(v166 + 40) = MEMORY[0x277D84F90];
        *&v210 = v120;
        *(&v210 + 1) = v124;
        sub_22C36C730(&v217, &v211);
        v213 = v202;
        v214 = v119;
        *(v110 + 56) = sub_22C374478();
        sub_22C36AB40();
        *(v110 + 64) = sub_22C3D32C8(v167, &qword_27D9BDAF8, &qword_22C91AB10, v168);
        v169 = swift_allocObject();
        sub_22C5379C8(v169);
        sub_22C3871D0();
        sub_22C5374B4(&v210);
        *(v110 + 96) = sub_22C374478();
        sub_22C37349C();
        *(v110 + 104) = sub_22C3D32C8(v170, v171, &unk_22C91A6D0, v172);
        v173 = sub_22C3A5908(&qword_27D9BAE18, &unk_22C90D6C0);
        v174 = sub_22C375E94(v173);
        sub_22C5379BC(v174);
        v175 = v197;
        *(v176 + 32) = v196;
        *(v176 + 40) = v175;
        v177 = v198;
        v178 = v199;
        *(v176 + 48) = v199;
        *(v176 + 56) = v177;
        *(v176 + 64) = 0;
        *(v110 + 72) = v176;
        if (v192)
        {
          v179 = sub_22C3A5908(&qword_27D9BDB18, &qword_22C91A6E0);
          sub_22C36AB40();
          v182 = sub_22C3D32C8(v180, &qword_27D9BDB18, &qword_22C91A6E0, v181);
          sub_22C3816AC();
          v183 = swift_allocObject();
          *(v183 + 16) = 83;
          *(v183 + 24) = 0xE100000000000000;
          *(v183 + 32) = MEMORY[0x277D84FA0];
          *(v183 + 40) = 0;
          *(&v217 + 1) = &unk_22C91A6E8;
          v218 = v183;
        }

        else
        {
          v182 = &off_2818B2AB0;
          v179 = &type metadata for PromptGrammarCoalescer;
        }

        v184 = v201;
        v220 = v182;
        v219 = v179;
        *&v217 = v110;
        sub_22C3DF2E8(&v225);
        sub_22C36FF94(&v221);
        sub_22C36C730(&v217, &v210);
        v185 = v211;
        *(v184 + 1) = v210;
        *(v184 + 2) = v185;
        *(v184 + 6) = v212;
        sub_22C4CBAA8(v196, v197, v178);
        return sub_22C537404(&v228);
      }

      v62 = v188;
LABEL_40:
      sub_22C903F7C();
      v63 = sub_22C9063CC();
      sub_22C90AADC();
      v64 = sub_22C370214();
      if (os_log_type_enabled(v64, v65))
      {
        sub_22C3720F4();
        v66 = swift_slowAlloc();
        sub_22C53799C(v66);
        sub_22C37F09C(&dword_22C366000, v67, v68, "No base grammar provided in a configuration that requires a grammar.");
        v69 = sub_22C36D66C();
        MEMORY[0x2318B9880](v69);
      }

      v53(v62, v55);
      sub_22C5373B0();
      swift_allocError();
      *v70 = 1;
      swift_willThrow();
      return sub_22C537404(&v228);
    }

    if ((~v199 & 0x3000000000000007) == 0)
    {
      v62 = v187;
      goto LABEL_40;
    }

    sub_22C42F0B8(v189, &v225);
    v220 = &off_283FB5340;
    v219 = &type metadata for ToolboxGrammarToolProvider;
    *&v217 = v190;
    v72 = v196;
    v71 = v197;
    v73 = sub_22C374C4C();
    v74 = v198;
    sub_22C4C7C38(v73, v75, v76);
    v77 = sub_22C374C4C();
    sub_22C4C7C38(v77, v78, v79);
    v80 = qword_27D9BA650;

    if (v80 != -1)
    {
      sub_22C38BA8C(&qword_27D9BA650);
    }

    sub_22C3861D0(&qword_27D9BC898);
    if (qword_27D9BA658 != -1)
    {
      sub_22C369F1C(&qword_27D9BA658);
    }

    v204 = *(&xmmword_27D9BC8B0 + 1);
    v189 = xmmword_27D9BC8B0;
    v223 = &unk_283FBA1D0;
    v224 = &off_283FBA288;
    sub_22C36BE74();
    v201 = swift_allocObject();
    *&v221 = v201;
    sub_22C5EA85C();
    v231 = v81;
    if (v195)
    {
      sub_22C6A57DC(&v210, 2);
      v81 = v231;
    }

    v195 = v81;
    sub_22C38A950();
    sub_22C3A5908(&qword_27D9BDAC0, &unk_22C91AB00);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_22C90F870;
    sub_22C537968();
    sub_22C90AF5C();

    *&v210 = v56;
    *(&v210 + 1) = v72;
    sub_22C37B674();
    v83 = v210;
    sub_22C36A83C();
    v84 = swift_allocObject();
    *(v84 + 16) = v71 + 5;
    *(v84 + 24) = v74;
    v85 = v84 | 0x4000000000000000;
    v193 = sub_22C3A5908(&qword_27D9BDAC8, &qword_22C91A6A0);
    v208 = v193;
    sub_22C37349C();
    v190 = sub_22C3D32C8(v86, v87, &qword_22C91A6A0, v88);
    v209 = v190;
    sub_22C380498();
    v89 = swift_allocObject();
    *&v206 = v89;
    *(v89 + 16) = v83;
    v90 = MEMORY[0x277D84F90];
    *(v89 + 32) = v85;
    *(v89 + 40) = v90;
    sub_22C3A5908(&qword_27D9BDAD8, &qword_22C91A6A8);
    v91 = swift_allocObject();
    sub_22C37A0D8(v91, xmmword_22C90FB40);
    v92 = v210;
    sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
    v93 = swift_allocObject();
    v203 = xmmword_22C90F800;
    *(v93 + 16) = xmmword_22C90F800;
    sub_22C36A83C();
    v94 = swift_allocObject();
    sub_22C3759A0(v94);
    v95 = sub_22C3A5908(&qword_27D9BDAE0, &qword_22C91A6B8);
    v96 = sub_22C375E94(v95);
    sub_22C5379BC(v96);
    v96[3].n128_u64[1] = sub_22C3A5908(&qword_27D9BDAE8, &unk_22C91A6C0);
    v96[4].n128_u64[0] = sub_22C53793C(&qword_27D9BDAF0);
    v96[2].n128_u64[0] = swift_allocObject();
    if (v191)
    {
      sub_22C378A4C(&v217, &v211);
      sub_22C42F0B8(&v225, &v213);
      v215 = &unk_283FB9BD0;
      v216 = &off_283FB9DA0;
      v97 = xmmword_22C91A690;
    }

    else
    {
      bzero(&v211, 0x160uLL);
      v97 = 0uLL;
    }

    sub_22C537A08(v97);
    *(v91 + 56) = &unk_283FB4CB0;
    *(v91 + 64) = &off_2818B2B70;
    v126 = swift_allocObject();
    *(v91 + 32) = v126;
    sub_22C5378F0(v126, "tool_resolve_tool");
    sub_22C37BA74();
    v127 = v210;
    *(v91 + 96) = &unk_283FB4C30;
    *(v91 + 104) = &off_2818B2B58;
    *(v91 + 72) = v127;
    *(v91 + 88) = &unk_283FAEEE8;
    sub_22C537968();
    sub_22C90AF5C();

    *&v210 = v92;
    *(&v210 + 1) = v96;
    sub_22C5379E8();
    v128 = v210;
    sub_22C36A83C();
    v129 = swift_allocObject();
    v130 = v193;
    v131 = v200;
    *(v129 + 16) = v194;
    *(v129 + 24) = v131;
    v132 = v129 | 0x4000000000000000;
    v133 = v190;
    *(v91 + 136) = v130;
    *(v91 + 144) = v133;
    sub_22C380498();
    v134 = swift_allocObject();
    *(v91 + 112) = v134;
    *(v134 + 16) = v128;
    *(v134 + 32) = v132;
    *(v134 + 40) = MEMORY[0x277D84F90];
    *&v210 = v92;
    *(&v210 + 1) = v96;
    sub_22C36C730(&v206, &v211);
    v213 = v195;
    v214 = v91;
    *(v82 + 56) = sub_22C374478();
    sub_22C36AB40();
    *(v82 + 64) = sub_22C3D32C8(v135, &qword_27D9BDAF8, &qword_22C91AB10, v136);
    v137 = swift_allocObject();
    sub_22C5379C8(v137);
    sub_22C3871D0();
    sub_22C5374B4(&v210);
    *(v82 + 96) = sub_22C374478();
    sub_22C37349C();
    *(v82 + 104) = sub_22C3D32C8(v138, v139, &unk_22C91A6D0, v140);
    v141 = sub_22C3A5908(&qword_27D9BAE18, &unk_22C90D6C0);
    v142 = sub_22C375E94(v141);
    sub_22C5379BC(v142);
    v143 = v197;
    *(v144 + 32) = v196;
    *(v144 + 40) = v143;
    v145 = v198;
    *(v144 + 48) = v199;
    *(v144 + 56) = v145;
    *(v144 + 64) = 0;
    *(v82 + 72) = v144;
    v146 = v192;
    if (v192)
    {
      v147 = sub_22C3A5908(&qword_27D9BDB18, &qword_22C91A6E0);
      sub_22C36AB40();
      v150 = sub_22C3D32C8(v148, &qword_27D9BDB18, &qword_22C91A6E0, v149);
      sub_22C3816AC();
      v151 = swift_allocObject();
      *(v151 + 16) = 83;
      *(v151 + 24) = 0xE100000000000000;
      *(v151 + 32) = MEMORY[0x277D84FA0];
      *(v151 + 40) = 0;
      *(&v206 + 1) = &unk_22C91A6F0;
      v207 = v151;
    }

    else
    {
      v150 = &off_2818B2AB0;
      v147 = &type metadata for PromptGrammarCoalescer;
    }

    v208 = v147;
    v209 = v150;
    *&v206 = v82;
    sub_22C3DF2E8(&v225);
    sub_22C36FF94(&v217);
    sub_22C36C730(&v206, &v210);
    v152 = v211;
    v153 = v201;
    *(v201 + 1) = v210;
    *(v153 + 2) = v152;
    *(v153 + 6) = v212;
    sub_22C464B30(&v228, &v210);
    v225 = qword_27D9BC898;
    v226 = unk_27D9BC8A0;
    v227 = qword_27D9BC8A8;
    v154 = qword_27D9BA648;

    if (v154 != -1)
    {
      sub_22C3830B8(&qword_27D9BA648);
    }

    v217 = xmmword_27D9BC880;
    v218 = qword_27D9BC890;
    v206 = xmmword_27D9BC8B0;
    v207 = qword_27D9BC8C0;
    v155 = v202;
    v202[3] = &type metadata for StandalonePromptGrammarGenerator;
    v155[4] = &off_283FB52F8;
    v156 = swift_allocObject();
    *v155 = v156;
    v156[10] = &unk_283FBA150;
    v156[11] = &off_283FBA278;
    sub_22C36BE74();
    v157 = swift_allocObject();
    v156[7] = v157;

    sub_22C535E6C(&v225, &v217, &v210, &v206, v146, v157 + 16);
    sub_22C4CBAA8(v196, v197, v199);
    sub_22C36C730(&v221, (v156 + 2));
    return sub_22C537404(&v228);
  }

  else
  {
    sub_22C903F7C();
    v30 = sub_22C9063CC();
    sub_22C90AACC();
    v31 = sub_22C370214();
    if (os_log_type_enabled(v31, v32))
    {
      sub_22C3720F4();
      v33 = swift_slowAlloc();
      sub_22C53799C(v33);
      sub_22C37F09C(&dword_22C366000, v34, v35, "Constrained decoding support is disabled.");
      v36 = sub_22C36D66C();
      MEMORY[0x2318B9880](v36);
    }

    result = (*(v203 + 8))(v11, v204);
    v37 = v202;
    v202[3] = &type metadata for StubGrammarGenerator;
    v37[4] = &off_283FB5308;
  }

  return result;
}

uint64_t sub_22C535E6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a2[1];
  v29 = *a2;
  v30 = a2[2];
  v10 = *a4;
  v11 = a4[1];
  v27 = a1[2];
  v28 = a4[2];
  sub_22C3A5908(&qword_27D9BDAC0, &unk_22C91AB00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22C90FB40;

  *(v12 + 56) = sub_22C3A5908(&qword_27D9BDB28, &qword_22C91A6F8);
  *(v12 + 64) = sub_22C3D32C8(&qword_27D9BDB30, &qword_27D9BDB28, &qword_22C91A6F8, &unk_22C913BD8);
  v13 = swift_allocObject();
  *(v12 + 32) = v13;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v7;
  v13[5] = v8;
  v14 = a3;
  v15 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84FA0];
  v13[6] = v27;
  v13[7] = v15;
  v13[8] = v16;
  v13[9] = &unk_22C91AB20;
  v13[10] = 0;

  *(v12 + 96) = sub_22C3A5908(&qword_27D9BDB38, &unk_22C91A700);
  *(v12 + 104) = sub_22C3D32C8(&qword_27D9BDB40, &qword_27D9BDB38, &unk_22C91A700, &unk_22C913BD8);
  v17 = swift_allocObject();
  *(v12 + 72) = v17;
  v17[2] = v10;
  v17[3] = v11;
  v17[4] = v10;
  v17[5] = v11;
  v17[6] = v28;
  v17[7] = v15;
  v17[8] = &unk_22C91AB30;
  v17[9] = 0;
  sub_22C464B30(v14, &__src[2]);
  sub_22C36A83C();
  v18 = swift_allocObject();
  strcpy((v18 + 16), "quoted_string");
  *(v18 + 30) = -4864;
  __src[0] = v29;
  __src[1] = v9;
  __src[7] = v18 | 0x4000000000000000;
  __src[8] = v29;
  __src[9] = v9;
  __src[10] = v30;
  __src[11] = v15;

  memcpy(__dst, __src, sizeof(__dst));
  v34 = &unk_22C91AB38;
  v35 = 0;
  *(v12 + 136) = sub_22C3A5908(&qword_27D9BDB48, &unk_22C91AB40);
  *(v12 + 144) = sub_22C3D32C8(&qword_27D9BDB50, &qword_27D9BDB48, &unk_22C91AB40, &unk_22C913BD8);
  v19 = swift_allocObject();
  *(v12 + 112) = v19;
  sub_22C537638(__dst, v19 + 16);
  *(v19 + 128) = &unk_22C913A80;
  *(v19 + 136) = 0;
  sub_22C5376A8(__dst);
  if (a5)
  {
    v20 = v16;
    v21 = sub_22C3A5908(&qword_27D9BDB18, &qword_22C91A6E0);
    sub_22C36AB40();
    v24 = sub_22C3D32C8(v22, &qword_27D9BDB18, &qword_22C91A6E0, v23);
    sub_22C3816AC();
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0xE000000000000000;
    *(v25 + 32) = v20;
    *(v25 + 40) = 1;
    *(&__dst[0] + 1) = &unk_22C91AB50;
    *&__dst[1] = v25;
  }

  else
  {
    v24 = &off_2818B2AB0;
    v21 = &type metadata for PromptGrammarCoalescer;
  }

  *(&__dst[1] + 1) = v21;
  *&__dst[2] = v24;
  *&__dst[0] = v12;
  sub_22C537404(v14);
  return sub_22C36C730(__dst, a6);
}

uint64_t sub_22C5361F4()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_22C9063DC();
  v1[6] = v4;
  sub_22C3699B8(v4);
  v1[7] = v5;
  v1[8] = swift_task_alloc();
  v6 = sub_22C90634C();
  v1[9] = v6;
  sub_22C3699B8(v6);
  v1[10] = v7;
  v1[11] = sub_22C36D0D4();
  v1[12] = swift_task_alloc();
  v8 = sub_22C90636C();
  v1[13] = v8;
  sub_22C3699B8(v8);
  v1[14] = v9;
  v1[15] = sub_22C36D0D4();
  v1[16] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C536358()
{
  sub_22C374458();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v3 = sub_22C37B2C4();
  v4(v3);
  sub_22C90635C();
  v5 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    sub_22C3720F4();
    v6 = swift_slowAlloc();
    sub_22C53799C(v6);
    v7 = sub_22C90632C();
    sub_22C3721A8(&dword_22C366000, v8, v9, v7, "StaticPromptGrammarGenerator.generateGrammar", "");
    v10 = sub_22C36D66C();
    MEMORY[0x2318B9880](v10);
  }

  sub_22C537978();
  v11 = sub_22C375988();
  v12(v11);
  sub_22C9063AC();
  swift_allocObject();
  v13 = sub_22C36D704();
  v14 = sub_22C5379A8(v13);
  v15(v14);
  v20(v5, v1);
  sub_22C374168(v2, v2[3]);
  sub_22C37012C();
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *v16 = v0;
  v17 = sub_22C382704(v16);

  return v18(v17);
}

uint64_t sub_22C53654C()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v4 + 152) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C53664C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C388250();
  sub_22C3743E4();
  v12 = v11[2];
  if (v12)
  {
    sub_22C3722AC(v12);
    sub_22C536FCC(v10, "StaticPromptGrammarGenerator.generateGrammar");

    sub_22C369A24();
  }

  else
  {
    sub_22C903F7C();
    v13 = sub_22C9063CC();
    sub_22C90AADC();
    v14 = sub_22C370214();
    if (os_log_type_enabled(v14, v15))
    {
      sub_22C3720F4();
      *swift_slowAlloc() = 0;
      sub_22C36BB14(&dword_22C366000, v16, v17, "Received nil static grammar from generator.");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v19 = v11[7];
    v18 = v11[8];
    v20 = v11[6];

    (*(v19 + 8))(v18, v20);
    sub_22C5373B0();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    sub_22C36BE80();
    sub_22C536FCC(v18, "StaticPromptGrammarGenerator.generateGrammar");

    sub_22C369A24();
  }

  sub_22C36EC14();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_22C5367EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C388250();
  sub_22C3743E4();
  sub_22C36BE80();
  sub_22C536FCC(v10, "StaticPromptGrammarGenerator.generateGrammar");

  sub_22C369A24();
  sub_22C36EC14();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_22C53688C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C5361F4();
}

uint64_t sub_22C536934()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_22C9063DC();
  v1[6] = v4;
  sub_22C3699B8(v4);
  v1[7] = v5;
  v1[8] = swift_task_alloc();
  v6 = sub_22C90634C();
  v1[9] = v6;
  sub_22C3699B8(v6);
  v1[10] = v7;
  v1[11] = sub_22C36D0D4();
  v1[12] = swift_task_alloc();
  v8 = sub_22C90636C();
  v1[13] = v8;
  sub_22C3699B8(v8);
  v1[14] = v9;
  v1[15] = sub_22C36D0D4();
  v1[16] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C536A98()
{
  sub_22C374458();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v3 = sub_22C37B2C4();
  v4(v3);
  sub_22C90635C();
  v5 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    sub_22C3720F4();
    v6 = swift_slowAlloc();
    sub_22C53799C(v6);
    v7 = sub_22C90632C();
    sub_22C3721A8(&dword_22C366000, v8, v9, v7, "HybridPromptGrammarGenerator.generateGrammar", "");
    v10 = sub_22C36D66C();
    MEMORY[0x2318B9880](v10);
  }

  sub_22C537978();
  v11 = sub_22C375988();
  v12(v11);
  sub_22C9063AC();
  swift_allocObject();
  v13 = sub_22C36D704();
  v14 = sub_22C5379A8(v13);
  v15(v14);
  v20(v5, v1);
  sub_22C374168(v2, v2[3]);
  sub_22C37012C();
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *v16 = v0;
  v17 = sub_22C382704(v16);

  return v18(v17);
}

uint64_t sub_22C536C8C()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v4 + 152) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C536D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C388250();
  sub_22C3743E4();
  v12 = v11[2];
  if (v12)
  {
    sub_22C3722AC(v12);
    sub_22C536FCC(v10, "HybridPromptGrammarGenerator.generateGrammar");

    sub_22C369A24();
  }

  else
  {
    sub_22C903F7C();
    v13 = sub_22C9063CC();
    sub_22C90AADC();
    v14 = sub_22C370214();
    if (os_log_type_enabled(v14, v15))
    {
      sub_22C3720F4();
      *swift_slowAlloc() = 0;
      sub_22C36BB14(&dword_22C366000, v16, v17, "Received an empty hybrid grammar from generator.");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v19 = v11[7];
    v18 = v11[8];
    v20 = v11[6];

    (*(v19 + 8))(v18, v20);
    sub_22C5373B0();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    sub_22C36BE80();
    sub_22C536FCC(v18, "HybridPromptGrammarGenerator.generateGrammar");

    sub_22C369A24();
  }

  sub_22C36EC14();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_22C536F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C388250();
  sub_22C3743E4();
  sub_22C36BE80();
  sub_22C536FCC(v10, "HybridPromptGrammarGenerator.generateGrammar");

  sub_22C369A24();
  sub_22C36EC14();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_22C536FCC(uint64_t a1, const char *a2)
{
  v2 = sub_22C90637C();
  sub_22C369824();
  v27 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = v6 - v5;
  v29 = sub_22C90634C();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = sub_22C90636C();
  sub_22C369824();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v20 = v19 - v18;
  sub_22C90364C();
  v21 = sub_22C90635C();
  sub_22C90638C();
  v26 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    if ((*(v27 + 88))(v7, v2) == *MEMORY[0x277D85B00])
    {
      v22 = "[Error] Interval already ended";
    }

    else
    {
      (*(v27 + 8))(v7, v2);
      v22 = "";
    }

    sub_22C3720F4();
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v21, v26, v24, a2, v22, v23, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v9 + 8))(v13, v29);
  return (*(v16 + 8))(v20, v14);
}

uint64_t sub_22C537274()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C382AF4;

  return sub_22C536934();
}

uint64_t sub_22C53731C(uint64_t a1)
{
  v2 = sub_22C537898();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C537358(uint64_t a1)
{
  v2 = sub_22C537898();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_22C5373B0()
{
  result = qword_27D9BDAB8;
  if (!qword_27D9BDAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDAB8);
  }

  return result;
}

uint64_t sub_22C537508()
{
  sub_22C388730();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C3718F8(v1);

  return sub_22C46109C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22C5375A0()
{
  sub_22C388730();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C3718F8(v1);

  return sub_22C46109C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22C537638(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BDB58, qword_22C91A710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C5376A8(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BDB58, qword_22C91A710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C537710()
{

  sub_22C3816AC();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

_BYTE *sub_22C537764(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_22C537844()
{
  result = qword_27D9BDB60;
  if (!qword_27D9BDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDB60);
  }

  return result;
}

unint64_t sub_22C537898()
{
  result = qword_27D9BDB68;
  if (!qword_27D9BDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDB68);
  }

  return result;
}

uint64_t sub_22C5378F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[2] = 0xD000000000000011;
  a1[3] = (a2 - 32) | 0x8000000000000000;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v3;
  a1[7] = v6;
  *(v2 + 208) = 0x6E6E616C705F6569;
  *(v2 + 216) = 0xEA00000000007265;
}

uint64_t sub_22C53793C(unint64_t *a1)
{

  return sub_22C3D32C8(a1, v2, v1, &unk_22C913B28);
}

void sub_22C537978()
{
}

__n128 sub_22C5379BC(__n128 *a1)
{
  result = v1[8];
  a1[1] = result;
  return result;
}

uint64_t sub_22C5379C8(uint64_t a1)
{
  *(v2 + 32) = a1;

  return sub_22C537458(v1 + 208, a1 + 16);
}

void sub_22C5379E8()
{

  JUMPOUT(0x2318B7850);
}

void *sub_22C537A08(__n128 a1)
{
  v1[13] = a1;

  return memcpy((v2 + 16), &v1[13], 0x170uLL);
}

uint64_t ResolveToolGrammarGenerator_v4_0.makeGrammar(from:identifier:renderingState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + 16))
  {
    v28 = a2;
    v29 = a3;

    MEMORY[0x2318B7850](0x64695F6C6F6F745FLL, 0xE800000000000000);
    v7 = v28;
    v8 = v29;
    v24 = v28;
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    v25 = v9 | 0x8000000000000000;
    v28 = a2;
    v29 = a3;

    MEMORY[0x2318B7850](0x74656D617261705FLL, 0xEA00000000007265);
    sub_22C537D24(a2, a3, v7, v8, &v28);

    v10 = v28;
    v11 = v29;
    v12 = v31;
    v23 = v30;
    v13 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_22C90FB40;
    v15 = sub_22C36AB58();
    strcpy((v15 + 16), "resolve_tool(");
    *(v15 + 30) = -4864;
    *(v14 + 32) = v15;
    v16 = sub_22C36AB58();
    *(v16 + 16) = v10;
    *(v16 + 24) = v11;
    *(v14 + 40) = v16 | 0x4000000000000000;
    v17 = sub_22C36AB58();
    *(v17 + 16) = 41;
    *(v17 + 24) = 0xE100000000000000;
    *(v14 + 48) = v17;
    *(v13 + 16) = v14;
    sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_22C90F800;
    *(v18 + 32) = v10;
    *(v18 + 40) = v11;
    *(v18 + 48) = v23;
    v32 = v18;

    swift_bridgeObjectRetain_n();
    sub_22C3CC3D8(v12);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    *(inited + 32) = v24;
    *(inited + 40) = v8;
    *(inited + 48) = v25;
    v28 = inited;

    v20 = MEMORY[0x277D84F90];

    sub_22C3CC3D8(v20);
    sub_22C3CC3D8(v28);

    v22 = v32;
    *a4 = a2;
    a4[1] = a3;
    a4[2] = v13 | 0xC000000000000000;
    a4[3] = v22;
  }

  else
  {
    sub_22C537EB0();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22C537D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22C90F870;
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22C90FB40;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v13 + 32) = v14 | 0x4000000000000000;
  v15 = swift_allocObject();
  *(v15 + 16) = 8236;
  *(v15 + 24) = 0xE200000000000000;
  *(v13 + 40) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v13 + 48) = v16 | 0x4000000000000000;
  *(v12 + 16) = v13;
  *(v11 + 32) = v12 | 0xC000000000000000;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v11 + 40) = v17 | 0x4000000000000000;
  *(v10 + 16) = v11;
  *a5 = a1;
  a5[1] = a2;
  v18 = MEMORY[0x277D84F90];
  a5[2] = v10 | 0x8000000000000000;
  a5[3] = v18;
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

unint64_t sub_22C537EB0()
{
  result = qword_27D9BDB70;
  if (!qword_27D9BDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDB70);
  }

  return result;
}

uint64_t sub_22C537F04(uint64_t a1)
{
  v2 = sub_22C5380CC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C537F40(uint64_t a1)
{
  v2 = sub_22C5380CC();

  return MEMORY[0x28211F4A8](a1, v2);
}

_BYTE *sub_22C537FC4(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C538078()
{
  result = qword_27D9BDB78;
  if (!qword_27D9BDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDB78);
  }

  return result;
}

unint64_t sub_22C5380CC()
{
  result = qword_27D9BDB80;
  if (!qword_27D9BDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDB80);
  }

  return result;
}

uint64_t type metadata accessor for SpanEventPromptGenerator_v4_0(uint64_t a1)
{
  result = qword_281430D88;
  if (!qword_281430D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C538198(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 129) = a3;
  *(v5 + 128) = a2;
  *(v5 + 72) = a1;
  v6 = sub_22C9063DC();
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C538270, 0, 0);
}

void sub_22C538270(uint64_t a1)
{
  v2 = v1[4].i64[1];
  if (!*(v2 + 16))
  {
    sub_22C903F7C();
    v20 = sub_22C9063CC();
    v21 = sub_22C90AACC();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v1;
    v26 = &v1[6].i8[8];
    v25 = v1[6].i64[1];
    v24 = *(v26 + 1);
    v27 = v23[6].i64[0];
    if (v22)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "No span entities to include in the prompt";
LABEL_18:
      _os_log_impl(&dword_22C366000, v20, v21, v29, v28, 2u);
      MEMORY[0x2318B9880](v28, -1, -1);
    }

LABEL_19:

    (*(v25 + 8))(v24, v27);
    v32 = MEMORY[0x277D84F90];
    v33 = v59;
    goto LABEL_31;
  }

  if (v1[8].i8[0] && (v1[8].i8[0] == 2 || v1[8].i8[1] != 1))
  {
    sub_22C903F7C();
    v20 = sub_22C9063CC();
    v21 = sub_22C90AACC();
    v30 = os_log_type_enabled(v20, v21);
    v24 = v1[7].i64[1];
    v31 = v1;
    v25 = v1[6].i64[1];
    v27 = v31[6].i64[0];
    if (v30)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "Omitting stale span entities from old turn";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v3 = swift_task_alloc();
  v3[1] = vextq_s8(v1[5], v1[5], 8uLL);

  v4 = sub_22C47B550(sub_22C539458, v3, v2);

  sub_22C539478(v4);
  v6 = v5;
  v8 = v7;
  v9 = *(v7 + 16);
  v57 = v5;
  if (v9)
  {
    v62 = MEMORY[0x277D84F90];

    sub_22C3B6A74(0, v9, 0);
    v10 = *(v62 + 16);
    v11 = 32 * v10 + 56;
    v12 = 32;
    do
    {
      v13 = *(v8 + v12);
      if (*(v13 + 16) >= 0x14uLL)
      {
        v14 = 20;
      }

      else
      {
        v14 = *(v13 + 16);
      }

      v15 = *(v62 + 24);
      v16 = v10 + 1;

      if (v10 >= v15 >> 1)
      {
        sub_22C3B6A74((v15 > 1), v16, 1);
      }

      v17 = *(sub_22C90822C() - 8);
      v18 = v13 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
      *(v62 + 16) = v16;
      v19 = (v62 + v11);
      *(v19 - 3) = v13;
      *(v19 - 2) = v18;
      *(v19 - 1) = 0;
      *v19 = (2 * v14) | 1;
      v11 += 32;
      v12 += 8;
      ++v10;
      --v9;
    }

    while (v9);
    v34 = v62;

    v6 = v57;

    v1 = v59;
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  v35 = v1[5].i64[1];
  v36 = type metadata accessor for SpanEventPromptGenerator_v4_0(0);
  sub_22C378A4C(v35 + *(v36 + 20) + 232, v1[1].i64);
  v63 = MEMORY[0x277D84F90];
  sub_22C3B63D4(0, 0, 0);
  v37 = 0;
  v38 = 0;
  v39 = (v34 + 56);
  v58 = v34;
  while (v38 != 20 && v38 < *(v34 + 16))
  {
    if (v38 >= *(v6 + 16))
    {
      __break(1u);
      return;
    }

    v60 = v59[5].i64[0];
    v61 = v38;
    v40 = *(v6 + v37 + 32);
    v41 = *(v6 + v37 + 40);
    v42 = *(v39 - 3);
    v43 = *(v39 - 2);
    v44 = *(v39 - 1);
    v45 = *v39;

    swift_unknownObjectRetain();
    sub_22C538A78(v40, v41, v42, v43, v44, v45, v59[1].i64, v60);
    v47 = v46;

    swift_unknownObjectRelease();
    v49 = *(v63 + 16);
    v48 = *(v63 + 24);
    if (v49 >= v48 >> 1)
    {
      sub_22C3B63D4(v48 > 1, v49 + 1, 1);
    }

    *(v63 + 16) = v49 + 1;
    *(v63 + 8 * v49 + 32) = v47;
    v39 += 4;
    v37 += 16;
    v38 = v61 + 1;
    v6 = v57;
    v34 = v58;
  }

  if (*(v63 + 16))
  {
    sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_22C90F870;
    v50 = swift_allocObject();
    v33 = v59;
    v59[3].i64[1] = 0x6E6170735F746567;
    v59[4].i64[0] = 0xEB00000000292873;
    *(v50 + 16) = sub_22C90A49C();
    *(v50 + 24) = v51;
    *(v32 + 32) = 1;
    *(v32 + 40) = v50 | 2;
    v52 = sub_22C3DB9B0(v63);

    v53 = sub_22C529D00(10, 0xE100000000000000, v52);

    v54 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v55 = swift_allocObject();
    *(v55 + 16) = v53;
    *(v54 + 16) = v55;
    *(v32 + 48) = 5;
    *(v32 + 56) = v54 | 0x6000000000000002;

    sub_22C36FF94(v59[1].i64);
  }

  else
  {

    v33 = v59;
    sub_22C36FF94(v59[1].i64);
    v32 = MEMORY[0x277D84F90];
  }

LABEL_31:

  v56 = v33->i64[1];

  v56(v32);
}

BOOL sub_22C53889C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C9039FC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  sub_22C90821C();
  v12 = 0;
  if (*(a2 + *(type metadata accessor for SpanEventPromptGenerator_v4_0(0) + 24)) == 1)
  {
    v12 = *(a3 + 24);
  }

  (*(v6 + 16))(v9, v11, v5);
  if (!v12)
  {
    v15 = *(v6 + 8);
    v15(v9, v5);
    goto LABEL_7;
  }

  v14 = sub_22C530BC8(v13);

  v15 = *(v6 + 8);
  v15(v9, v5);
  if ((v14 & 1) == 0)
  {
LABEL_7:
    v17 = sub_22C53053C();

    v16 = !v17;
    goto LABEL_8;
  }

  v16 = 0;
LABEL_8:
  v15(v11, v5);
  return v16;
}

void sub_22C538A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = a7;
  v58 = a8;
  v65 = a4;
  v59 = a1;
  v64 = sub_22C90822C();
  v11 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22C9039FC();
  v14 = *(v63 - 8);
  v15 = MEMORY[0x28223BE20](v63);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a6 >> 1;
  v19 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v56 = a2;
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v66 = MEMORY[0x277D84F90];
    sub_22C3B73FC(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
      return;
    }

    v20 = v66;
    v61 = v11 + 8;
    v62 = v11 + 16;
    v60 = v14 + 32;
    while (a5 < v18)
    {
      v21 = v64;
      (*(v11 + 16))(v13, v65 + *(v11 + 72) * a5, v64);
      sub_22C90821C();
      (*(v11 + 8))(v13, v21);
      v66 = v20;
      v23 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_22C3B73FC(v22 > 1, v23 + 1, 1);
        v20 = v66;
      }

      *(v20 + 16) = v23 + 1;
      v15 = (*(v14 + 32))(v20 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v23, v17, v63);
      if (v18 == ++a5)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_9:
  MEMORY[0x28223BE20](v15);
  v24 = v58;
  *(&v56 - 2) = v57;
  *(&v56 - 1) = v24;
  v25 = sub_22C793528(sub_22C539AA8, (&v56 - 4), v20);

  v26 = sub_22C3DB9B0(v25);

  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v27 + 32) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22C9173F0;
  v30 = swift_allocObject();
  *(v30 + 16) = v27 | 0x8000000000000000;
  *(v29 + 32) = v30;
  v17 = swift_allocObject();
  v31 = swift_allocObject();
  *(v31 + 16) = v29 | 0x8000000000000000;
  *(v17 + 16) = v31;
  v18 = swift_allocObject();
  *(v18 + 16) = 8227;
  *(v18 + 24) = 0xE200000000000000;
  sub_22C591324();
  v33 = v32;
  a5 = *(v32 + 16);
  v14 = a5 + 1;
  if (a5 >= *(v32 + 24) >> 1)
  {
LABEL_21:
    sub_22C591324();
    v33 = v51;
  }

  *(v33 + 16) = v14;
  *(v33 + 8 * a5 + 32) = v18;
  v34 = sub_22C90A2AC();
  v36 = v35;
  v37 = swift_allocObject();
  *(v37 + 16) = v34;
  *(v37 + 24) = v36;
  v39 = *(v33 + 16);
  v38 = *(v33 + 24);

  if (v39 >= v38 >> 1)
  {
    sub_22C591324();
    v33 = v52;
  }

  *(v33 + 16) = v39 + 1;
  *(v33 + 8 * v39 + 32) = v37;

  v40 = swift_allocObject();
  *(v40 + 16) = 8250;
  *(v40 + 24) = 0xE200000000000000;
  v41 = *(v33 + 16);
  v42 = *(v33 + 24) >> 1;
  v43 = v41 + 1;
  if (v42 <= v41)
  {
    sub_22C591324();
    v33 = v53;
    v42 = *(v53 + 24) >> 1;
  }

  *(v33 + 16) = v43;
  *(v33 + 8 * v41 + 32) = v40;
  v44 = v41 + 2;
  if (v42 < (v41 + 2))
  {
    sub_22C591324();
    v33 = v54;
  }

  *(v33 + 16) = v44;
  *(v33 + 8 * v43 + 32) = v17 | 0x6000000000000000;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0xE000000000000000;
  v46 = *(v33 + 24);
  v47 = v41 + 3;

  if (v47 > (v46 >> 1))
  {
    sub_22C591324();
    v33 = v55;
  }

  *(v33 + 16) = v47;
  *(v33 + 8 * v44 + 32) = v45;
  v48 = sub_22C3DB9B0(v33);

  v49 = swift_allocObject();
  v50 = swift_allocObject();
  *(v50 + 16) = v48;
  *(v49 + 16) = v50;
}

uint64_t sub_22C539074@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10[-v7];
  sub_22C9039CC();
  v11 = a1;
  v12 = a2;
  *a3 = sub_22C79EB0C(sub_22C539AC4);
  return sub_22C3770B0(v8, &qword_27D9BB908, &qword_22C910960);
}

void sub_22C539164(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v20 = a2;
  v21 = a3;
  v4 = sub_22C90963C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C90952C();
  v8 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  sub_22C374168(a1, v11);
  sub_22C90935C();
  (*(v5 + 104))(v7, *MEMORY[0x277D72E08], v4);
  (*(v12 + 24))(v22, v10, v7, *(v20 + 32), v11, v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v19);
  if (v23)
  {
    v13 = 0xF000000000000007;
  }

  else
  {
    v14 = v22[3];
    v15 = v22[4];
    v17 = v22[1];
    v16 = v22[2];
    v13 = v22[0];

    sub_22C456CE4(v13, v17, v16, v14, v15, 0);
  }

  *v21 = v13;
}

uint64_t sub_22C53939C(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22C530210;

  return sub_22C538198(a1, a2, a3, a4);
}

void sub_22C539478(uint64_t a1)
{
  v63 = sub_22C9039FC();
  v2 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C3A5908(&qword_27D9BDA90, &unk_22C91A460);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v54 - v5;
  v70 = sub_22C90822C();
  v7 = MEMORY[0x28223BE20](v70);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v65 = &v54 - v10;
  MEMORY[0x28223BE20](v9);
  v69 = &v54 - v11;
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v71 = 0;
  v72 = MEMORY[0x277D84F90];
  v68 = v14 + 16;
  v64 = *(a1 + 16);
  v60 = (v2 + 8);
  v61 = v14;
  v56 = (v14 + 8);
  v57 = (v14 + 32);
  v58 = v6;
  v59 = a1;
  while (1)
  {
    if (v12 == v64)
    {

      return;
    }

    if (v12 >= *(a1 + 16))
    {
      break;
    }

    v15 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v66 = *(v61 + 72);
    v67 = v15;
    v16 = a1 + v15 + v66 * v12;
    v17 = *(v61 + 16);
    v17(v69, v16, v70);
    v18 = v62;
    sub_22C90821C();
    v19 = sub_22C9039DC();
    (*v60)(v18, v63);
    sub_22C58B384(v19, v6);

    v20 = sub_22C90361C();
    if (sub_22C370B74(v6, 1, v20) == 1)
    {
      sub_22C3770B0(v6, &qword_27D9BDA90, &unk_22C91A460);
      v21 = 0;
      v22 = 0xE000000000000000;
    }

    else
    {
      v21 = sub_22C9035EC();
      v23 = v6;
      v22 = v24;
      (*(*(v20 - 8) + 8))(v23, v20);
    }

    v25 = v71;
    v26 = v72;
    v27 = *(v72 + 16);
    if (!v71)
    {
      v29 = 0;
      v41 = (v72 + 40);
      while (v27 != v29)
      {
        v42 = *(v41 - 1) == v21 && *v41 == v22;
        if (v42 || (sub_22C90B4FC() & 1) != 0)
        {
          goto LABEL_9;
        }

        ++v29;
        v41 += 2;
      }

      v33 = 0;
LABEL_27:
      sub_22C7D4160(v21, v22, v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B6A94(0, *(v13 + 16) + 1, 1);
        v13 = v73;
      }

      v45 = *(v13 + 16);
      v44 = *(v13 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_22C3B6A94(v44 > 1, v45 + 1, 1);
        v13 = v73;
      }

      *(v13 + 16) = v45 + 1;
      v46 = v13 + 32;
      *(v13 + 32 + 8 * v45) = MEMORY[0x277D84F90];
      v17(v55, v69, v70);
      v36 = *(v13 + 32 + 8 * v45);
      v47 = swift_isUniquelyReferenced_nonNull_native();
      *(v13 + 32 + 8 * v45) = v36;
      if ((v47 & 1) == 0)
      {

        sub_22C59204C();
        *(v46 + 8 * v45) = v52;

        v36 = *(v46 + 8 * v45);
      }

      a1 = v59;
      v38 = *(v36 + 16);
      v39 = v38 + 1;
      if (v38 >= *(v36 + 24) >> 1)
      {
        sub_22C59204C();
        v36 = v53;
        *(v46 + 8 * v45) = v53;
      }

      v40 = v55;
      goto LABEL_36;
    }

    sub_22C7DA844(v21, v22, v26 + 32, v27, (v25 + 16));
    v29 = v28;
    v31 = v30;
    v33 = v32;

    if (v31)
    {
      goto LABEL_27;
    }

LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C56C1DC();
      v13 = v34;
    }

    if ((v29 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    if (v29 >= *(v13 + 16))
    {
      goto LABEL_40;
    }

    v35 = v13 + 32;
    v17(v65, v69, v70);
    v36 = *(v13 + 32 + 8 * v29);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    *(v13 + 32 + 8 * v29) = v36;
    if ((v37 & 1) == 0)
    {

      sub_22C59204C();
      *(v35 + 8 * v29) = v50;

      v36 = *(v35 + 8 * v29);
    }

    a1 = v59;
    v38 = *(v36 + 16);
    v39 = v38 + 1;
    if (v38 >= *(v36 + 24) >> 1)
    {
      sub_22C59204C();
      v36 = v51;
      *(v35 + 8 * v29) = v51;
    }

    v40 = v65;
LABEL_36:
    ++v12;
    *(v36 + 16) = v39;
    v48 = v36 + v67 + v38 * v66;
    v49 = v70;
    (*v57)(v48, v40, v70);

    (*v56)(v69, v49);
    v6 = v58;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_22C539AF4(uint64_t a1)
{
  sub_22C9070DC();
  sub_22C369824();
  v60 = v3;
  v61 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22C3698A8();
  v66 = v4;
  sub_22C9063DC();
  sub_22C369824();
  v62 = v6;
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  v64 = v7;
  v8 = sub_22C90654C();
  sub_22C369824();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v65 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v67 = &v58 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v58 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v58 - v19;
  sub_22C90702C();
  v21 = *(v10 + 88);
  v22 = v21(v20, v8);
  v23 = *MEMORY[0x277D1D9F8];
  v24 = v20;
  v25 = v8;
  v68 = *(v10 + 8);
  v68(v24, v8);
  if (v22 == v23)
  {
    return 2;
  }

  v27 = sub_22C9070CC();
  if (v27 == 2)
  {
    sub_22C90702C();
    v28 = sub_22C441C04();
    v68(v18, v8);
  }

  else
  {
    v28 = v27;
  }

  v26 = (v28 & 1) == 0;
  v59 = a1;
  v29 = sub_22C90704C();
  if (v29 != 2 && (v29 & 1) != 0)
  {
    v58 = v10 + 8;
    v30 = v67;
    sub_22C90702C();
    v31 = v21(v30, v25);
    if (v31 == *MEMORY[0x277D1DAA8])
    {
      v32 = v65;
      (*(v10 + 16))(v65, v30, v25);
      (*(v10 + 96))(v32, v25);
      v33 = sub_22C906F2C();
      v34 = *(v33 - 8);
      v35 = (*(v34 + 88))(v32, v33);
      v36 = v30;
      v37 = v66;
      if (v35 == *MEMORY[0x277D1DEE8])
      {
        (*(v34 + 96))(v32, v33);
        v38 = *(*v32 + 16);

        if (v38 == 1)
        {
          v26 = 2;
        }

        else
        {
          v26 = v26;
        }

        goto LABEL_16;
      }

      (*(v34 + 8))(v32, v33);
      goto LABEL_18;
    }

    v37 = v66;
    if (v31 == v23)
    {
      v26 = 2;
      v36 = v67;
    }

    else
    {
      v54 = v31 == *MEMORY[0x277D1DAA0] || v31 == *MEMORY[0x277D1DA98];
      v36 = v67;
      if (v54)
      {
        goto LABEL_16;
      }

      if (v31 != *MEMORY[0x277D1DA48] && v31 != *MEMORY[0x277D1DAE8])
      {
LABEL_18:
        v40 = v64;
        sub_22C903F7C();
        v41 = v60;
        v42 = v61;
        (*(v60 + 16))(v37, v59, v61);
        v43 = sub_22C9063CC();
        v44 = sub_22C90AADC();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = v37;
          v46 = v41;
          v26 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v70 = v69;
          *v26 = 136315138;
          sub_22C53A180();
          v47 = sub_22C909F4C();
          v48 = v42;
          v49 = v25;
          v51 = v50;
          (*(v46 + 8))(v45, v48);
          v52 = sub_22C36F9F4(v47, v51, &v70);
          v25 = v49;

          *(v26 + 4) = v52;
          _os_log_impl(&dword_22C366000, v43, v44, "Encountered unexpected expression with isExpanded=true. ProgramStatement: %s", v26, 0xCu);
          v53 = v69;
          sub_22C36FF94(v69);
          MEMORY[0x2318B9880](v53, -1, -1);
          MEMORY[0x2318B9880](v26, -1, -1);

          (*(v62 + 8))(v64, v63);
        }

        else
        {

          v56 = *(v41 + 8);
          v26 = v41 + 8;
          v56(v37, v42);
          (*(v62 + 8))(v40, v63);
        }

        sub_22C442014();
        swift_allocError();
        *v57 = xmmword_22C91AA60;
        *(v57 + 16) = 5;
        swift_willThrow();
        v68(v36, v25);
        return v26;
      }

      v26 = 2;
    }

LABEL_16:
    v68(v36, v25);
  }

  return v26;
}

unint64_t sub_22C53A180()
{
  result = qword_27D9BDB88;
  if (!qword_27D9BDB88)
  {
    sub_22C9070DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDB88);
  }

  return result;
}

uint64_t type metadata accessor for StructuredSearchToolGrammarComponent_v5_0(uint64_t a1)
{
  result = qword_27D9BDB90;
  if (!qword_27D9BDB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C53A24C(uint64_t a1)
{
  result = type metadata accessor for ToolDefinitionGrammarGenerator_v5_0(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C53A2B8(uint64_t a1)
{
  *(v1 + 80) = a1;
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_22C53A358;

  return sub_22C45D9F0(v1 + 48);
}

uint64_t sub_22C53A358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*v9 + 96) = v8;

  if (v8)
  {
    v10 = sub_22C53A52C;
  }

  else
  {
    v10 = sub_22C53A46C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_22C53A46C()
{
  v1 = v0[6];
  v2 = v0[8];
  v3 = v0[9];
  if (v0[7])
  {
    sub_22C474C14(v0 + 2);

    v1 = v0[2];
    v4 = v0[3];
    v2 = v0[4];
    v3 = v0[5];
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[10];
  *v5 = v1;
  v5[1] = v4;
  v5[2] = v2;
  v5[3] = v3;
  v6 = v0[1];

  return v6();
}

uint64_t sub_22C53A544(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C3B00E8;

  return sub_22C53A2B8(a1);
}

uint64_t sub_22C53A5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22C53A614, 0, 0);
}

uint64_t sub_22C53A614()
{
  sub_22C3743E4();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  sub_22C3A5908(&qword_27D9BAE18, &unk_22C90D6C0);
  sub_22C369F54();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22C90F800;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  *(v6 + 48) = v2 | 0x2000000000000000;
  *(v6 + 56) = v1;
  *(v6 + 64) = 0;
  *v5 = v6;
  sub_22C369A24();
  v9 = v7;

  return v9();
}

uint64_t sub_22C53A6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22C53DEC0, 0, 0);
}

uint64_t sub_22C53A708(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22C53A728, 0, 0);
}

uint64_t sub_22C53A728()
{
  sub_22C3743E4();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_22C3A5908(&qword_27D9BAE18, &unk_22C90D6C0);
  sub_22C369F54();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22C90F800;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v6 | 0x2000000000000000;
  *(v7 + 56) = v5;
  *(v7 + 64) = 0;
  *v2 = v7;
  sub_22C369A24();
  v10 = v8;

  return v10();
}

uint64_t sub_22C53A7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v229 = type metadata accessor for GrammarToolDefinitionBundle(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  v220 = v10 - v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  sub_22C36BA58();
  v225 = v13;
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA64();
  v219 = v15;
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v16);
  sub_22C369ABC();
  v233 = v17 - v18;
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  sub_22C36BA64();
  v232 = v20;
  v21 = sub_22C3A5908(&qword_27D9BB738, &unk_22C9185A0);
  MEMORY[0x28223BE20](v21 - 8);
  sub_22C369ABC();
  v224 = v22 - v23;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  sub_22C36BA58();
  v231 = v25;
  sub_22C369930();
  MEMORY[0x28223BE20](v26);
  sub_22C36BA58();
  v223 = v27;
  sub_22C369930();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA64();
  v230 = v29;
  sub_22C9063DC();
  sub_22C369824();
  v262 = v31;
  v265 = v30;
  MEMORY[0x28223BE20](v30);
  sub_22C369ABC();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  sub_22C36BA58();
  v222 = v36;
  sub_22C369930();
  MEMORY[0x28223BE20](v37);
  sub_22C36BA58();
  v221 = v38;
  sub_22C369930();
  MEMORY[0x28223BE20](v39);
  sub_22C36BA64();
  v252 = v40;
  v41 = sub_22C90077C();
  sub_22C369824();
  v235 = v42;
  MEMORY[0x28223BE20](v43);
  sub_22C369838();
  v237 = v45 - v44;
  v246 = *a4;
  v247 = a4[1];
  v251 = a4[2];
  v248 = a4[3];
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  v46 = v279;
  sub_22C381A70();
  v47 = v279;
  static PromptGrammarGenerationMode.configuration(from:)(&v279);
  v257 = v279;
  sub_22C381A70();
  v249 = v279;
  sub_22C381A70();
  v242 = v279;
  sub_22C901EDC();
  if (v46 == 1)
  {
    v48 = v47;
    if (v47)
    {
      (*(v235 + 16))(v237, a3, v41);
      v49 = sub_22C90136C();
      swift_allocObject();
      result = sub_22C90135C();
      v51 = v252;
      if (v266)
      {
        return result;
      }

      *(&v280 + 1) = v49;
      v281 = &protocol witness table for Tokenizer;
      *&v279 = result;
      *(&v294 + 1) = &type metadata for QuotableStringGrammarConverter;
      v295 = &protocol witness table for QuotableStringGrammarConverter;
      sub_22C36BE74();
      *&v293 = swift_allocObject();
      sub_22C36C730(&v279, v293 + 16);
    }

    else
    {
      v295 = 0;
      v293 = 0u;
      v294 = 0u;
      v51 = v252;
    }

    sub_22C903F7C();
    v57 = sub_22C9063CC();
    v58 = sub_22C90AACC();
    v59 = sub_22C370214();
    if (os_log_type_enabled(v59, v60))
    {
      v253 = v58;
      v61 = swift_slowAlloc();
      *&v279 = swift_slowAlloc();
      *v61 = 136315906;
      v62 = 0x800000022C92E2C0;
      v63 = 0x6553646972627968;
      if (v257 == 1)
      {
        v63 = 0xD000000000000012;
      }

      else
      {
        v62 = 0xEC00000072657672;
      }

      if (v257)
      {
        v64 = v63;
      }

      else
      {
        v64 = 0x696C43796C6C7566;
      }

      if (v257)
      {
        v65 = v62;
      }

      else
      {
        v65 = 0xEB00000000746E65;
      }

      v66 = sub_22C36F9F4(v64, v65, &v279);

      *(v61 + 4) = v66;
      *(v61 + 12) = 2080;
      sub_22C3819C0();
      if (v48)
      {
        v68 = 0xD00000000000001CLL;
      }

      else
      {
        v68 = 0x6972745320796E41;
      }

      if (v48)
      {
        v69 = v67;
      }

      else
      {
        v69 = 0xEA0000000000676ELL;
      }

      v70 = sub_22C36F9F4(v68, v69, &v279);

      *(v61 + 14) = v70;
      *(v61 + 22) = 1024;
      *(v61 + 24) = v242;
      *(v61 + 28) = 1024;
      *(v61 + 30) = v249;
      _os_log_impl(&dword_22C366000, v57, v253, "Echo Grammar Configuration - Mode: %s\n    String Copying: %s\n    Include Global Tools (Standalone Only): %{BOOL}d\n    Minify Grammar: %{BOOL}d", v61, 0x22u);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v71 = *(v262 + 8);
    v71(v51, v265);
    if (v257)
    {
      if (v257 == 1)
      {
        sub_22C464B30(&v293, &v279);
        if (qword_27D9BA650 != -1)
        {
          sub_22C38BA8C(&qword_27D9BA650);
        }

        v290 = qword_27D9BC898;
        v291 = unk_27D9BC8A0;
        v292 = qword_27D9BC8A8;
        v72 = qword_27D9BA648;

        if (v72 != -1)
        {
          sub_22C3830B8(&qword_27D9BA648);
        }

        v286 = xmmword_27D9BC880;
        v287 = qword_27D9BC890;
        v73 = qword_27D9BA658;

        if (v73 != -1)
        {
          sub_22C369F1C(&qword_27D9BA658);
        }

        v275 = xmmword_27D9BC8B0;
        v276 = qword_27D9BC8C0;
        a7[3] = &type metadata for PromptGrammarGenerator_v5_0.HybridPromptGrammarGenerator;
        a7[4] = &off_283FBA800;
        sub_22C36BE74();
        v74 = swift_allocObject();
        *a7 = v74;

        sub_22C53C4CC(&v290, &v286, &v279, &v275, v249, v74 + 16);
        return sub_22C537404(&v293);
      }

      if ((~v251 & 0x3000000000000007) != 0)
      {
        sub_22C42F0B8(a1, &v290);
        v289 = &off_283FB5340;
        v288 = &type metadata for ToolboxGrammarToolProvider;
        *&v286 = a2;
        sub_22C3E8FB4(a5, v231, &qword_27D9BB738, &unk_22C9185A0);
        sub_22C3734B8();
        sub_22C53DAA4(a6, v233, v100);
        v101 = sub_22C38A974();
        sub_22C4C7C38(v101, v102, v103);
        v104 = sub_22C38A974();
        sub_22C4C7C38(v104, v105, v106);
        v107 = qword_27D9BA650;

        if (v107 != -1)
        {
          sub_22C38BA8C(&qword_27D9BA650);
        }

        v255 = qword_27D9BC898;
        v259 = unk_27D9BC8A0;
        if (qword_27D9BA658 != -1)
        {
          sub_22C369F1C(&qword_27D9BA658);
        }

        v108 = xmmword_27D9BC8B0;
        a7[3] = &type metadata for PromptGrammarGenerator_v5_0.StaticPromptGrammarGenerator;
        a7[4] = &off_283FBA810;
        sub_22C36BE74();
        v264 = swift_allocObject();
        *a7 = v264;
        sub_22C901EDC();
        sub_22C53DF0C();
        sub_22C901EDC();
        v261 = v279;
        *&v279 = 0x6E6E616C705F6569;
        *(&v279 + 1) = 0xEA00000000007265;
        MEMORY[0x2318B7850](0x736C6F6F745FLL, 0xE600000000000000);
        v109 = v279;
        sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
        v110 = swift_allocObject();
        *(v110 + 16) = xmmword_22C90F800;
        sub_22C36A83C();
        v111 = swift_allocObject();
        *(v111 + 16) = v108;
        v239 = v110;
        *(v110 + 32) = v111 | 0x4000000000000000;
        sub_22C3A5908(&qword_27D9BDAE0, &qword_22C91A6B8);
        sub_22C369F54();
        v112 = swift_allocObject();
        sub_22C53DEF4(v112);
        v112[3].n128_u64[1] = sub_22C3A5908(&qword_27D9BDAE8, &unk_22C91A6C0);
        sub_22C53DED8();
        v112[4].n128_u64[0] = sub_22C3D32C8(v113, v114, &unk_22C91A6C0, v115);
        v116 = swift_allocObject();
        v112[2].n128_u64[0] = v116;
        if (v242)
        {
          sub_22C378A4C(&v286, &v280);
          sub_22C42F0B8(&v290, &v282);
          v284 = &unk_283FB9BD0;
          v285 = &off_283FB9DA0;
          v117 = xmmword_22C91A690;
        }

        else
        {
          bzero(&v280, 0x160uLL);
          v117 = 0uLL;
        }

        sub_22C53DF20(v117);

        sub_22C5EA85C();
        *&v267 = v176;
        if (v235)
        {
          v116 = &v267;
          sub_22C6A57DC(&v279, 2);
        }

        sub_22C3E8FB4(v231, v224, &qword_27D9BB738, &unk_22C9185A0);
        if (sub_22C370B74(v224, 1, v229) == 1)
        {
          sub_22C36DD28(v224, &qword_27D9BB738, &unk_22C9185A0);
          sub_22C36A83C();
          v177 = swift_allocObject();
          *(v177 + 16) = 0xD000000000000016;
          *(v177 + 24) = 0x800000022C930A30;
          v178 = v177 | 0x4000000000000000;
          *(&v280 + 1) = sub_22C3A5908(&qword_27D9BDAC8, &qword_22C91A6A0);
          sub_22C369F3C();
          v281 = sub_22C3D32C8(v179, &qword_27D9BDAC8, &qword_22C91A6A0, v180);
          sub_22C380498();
          v181 = swift_allocObject();
          *&v279 = v181;
          v181[2] = 0xD00000000000001FLL;
          v181[3] = 0x800000022C932020;
          v181[4] = v178;
          v181[5] = MEMORY[0x277D84F90];
        }

        else
        {
          sub_22C3819C0();
          v245 = v182;
          sub_22C53DA40(v224, v220);
          sub_22C36D870();
          sub_22C53DAA4(v220, v225, v183);
          *(&v280 + 1) = type metadata accessor for StructuredSearchToolGrammarComponent_v5_0(0);
          v281 = &off_2818B46A0;
          v184 = sub_22C36D548(&v279);
          v185 = type metadata accessor for ToolDefinitionGrammarGenerator_v5_0(0);
          sub_22C3734B8();
          sub_22C53DAA4(v233, v184 + v186, v187);
          sub_22C53DAA4(v225, v184 + v185[5], v116);
          sub_22C53DF00(v184 + v185[6]);
          v188 = v184 + v185[7];
          *(v188 + 3) = &unk_283FB9CD0;
          *(v188 + 4) = &off_283FB9E00;
          v189 = v184 + v185[8];
          *(v189 + 3) = &unk_283FB9CF0;
          *(v189 + 4) = &off_283FB9E10;
          sub_22C53DF00(v184 + v185[9]);
          v190 = v184 + v185[10];
          *(v190 + 3) = &unk_283FB9BF0;
          *(v190 + 4) = &off_283FB9DB0;
          v191 = v184 + v185[11];
          *(v191 + 3) = &unk_283FB9D10;
          *(v191 + 4) = &off_283FB9E20;
          sub_22C53DB04(v225, v116);
          *v184 = 0xD00000000000001DLL;
          v184[1] = v245;
          sub_22C53DB04(v220, v116);
        }

        sub_22C36C730(&v279, &v275);
        sub_22C3A5908(&qword_27D9BDAC0, &unk_22C91AB00);
        v192 = swift_allocObject();
        *(v192 + 16) = xmmword_22C90F870;
        sub_22C378A4C(&v275, &v280);
        v250 = v267;
        sub_22C3A5908(&qword_27D9BDAD8, &qword_22C91A6A8);
        v193 = swift_allocObject();
        *(v193 + 16) = xmmword_22C90FB40;
        *(v193 + 56) = &unk_283FB4CB0;
        *(v193 + 64) = &off_2818B2B70;
        v194 = swift_allocObject();
        *(v193 + 32) = v194;
        *(v194 + 16) = 0xD000000000000011;
        *(v194 + 24) = 0x800000022C931F30;
        *(v194 + 32) = v109;
        *(v194 + 48) = v239;
        *(v194 + 56) = v112;
        sub_22C53DEC4();
        *&v271 = v195;
        v196 = v195;
        *(&v271 + 1) = 0xEA00000000007265;
        v197 = sub_22C38563C();
        MEMORY[0x2318B7850](v197, 0xE800000000000000);
        v198 = v271;
        *(v193 + 96) = &unk_283FB4C30;
        *(v193 + 104) = &off_2818B2B58;
        *(v193 + 72) = v198;
        *(v193 + 88) = &unk_283FAEEE8;
        *&v271 = 0;
        *(&v271 + 1) = 0xE000000000000000;
        sub_22C90AF5C();

        *&v271 = v196;
        *(&v271 + 1) = *(&v109 + 1);
        MEMORY[0x2318B7850](0xD000000000000012, 0x800000022C931F50);
        v199 = v271;
        sub_22C36A83C();
        v200 = swift_allocObject();
        *(v200 + 16) = v255;
        *(v200 + 24) = v259;
        v201 = v200 | 0x4000000000000000;
        *(v193 + 136) = sub_22C3A5908(&qword_27D9BDAC8, &qword_22C91A6A0);
        sub_22C369F3C();
        v256 = v202;
        *(v193 + 144) = sub_22C3D32C8(v203, &qword_27D9BDAC8, &qword_22C91A6A0, v204);
        sub_22C380498();
        v205 = swift_allocObject();
        *(v193 + 112) = v205;
        *(v205 + 16) = v199;
        *(v205 + 32) = v201;
        *(v205 + 40) = MEMORY[0x277D84F90];
        sub_22C53DEC4();
        sub_22C3861E4(v206);
        v282 = v250;
        v283 = v193;
        *(v192 + 56) = sub_22C3A5908(&qword_27D9BDAF8, &qword_22C91AB10);
        sub_22C36AB40();
        *(v192 + 64) = sub_22C3D32C8(v207, &qword_27D9BDAF8, &qword_22C91AB10, v208);
        v209 = swift_allocObject();
        *(v192 + 32) = v209;
        sub_22C537458(&v279, v209 + 16);
        *(v209 + 88) = &unk_22C91AB18;
        *(v209 + 96) = 0;

        sub_22C5374B4(&v279);
        *(v192 + 96) = sub_22C3A5908(&qword_27D9BDB08, &unk_22C91A6D0);
        *(v192 + 104) = sub_22C3D32C8(&qword_27D9BDB10, &qword_27D9BDB08, &unk_22C91A6D0, v256);
        sub_22C3A5908(&qword_27D9BAE18, &unk_22C90D6C0);
        sub_22C369F54();
        v210 = swift_allocObject();
        sub_22C53DEF4(v210);
        *(v211 + 32) = v246;
        *(v211 + 40) = v247;
        *(v211 + 48) = v251;
        *(v211 + 56) = v248;
        *(v211 + 64) = 0;
        *(v192 + 72) = v211;
        if (v261)
        {
          v212 = sub_22C3A5908(&qword_27D9BDB18, &qword_22C91A6E0);
          sub_22C36AB40();
          v215 = sub_22C3D32C8(v213, &qword_27D9BDB18, &qword_22C91A6E0, v214);
          sub_22C3816AC();
          v216 = swift_allocObject();
          *(v216 + 16) = 83;
          *(v216 + 24) = 0xE100000000000000;
          *(v216 + 32) = MEMORY[0x277D84FA0];
          *(v216 + 40) = 0;
          *(&v271 + 1) = &unk_22C91A6E8;
          v272 = v216;
        }

        else
        {
          v215 = &off_2818B2AB0;
          v212 = &type metadata for PromptGrammarCoalescer;
        }

        v273 = v212;
        v274 = v215;
        *&v271 = v192;
        sub_22C36FF94(&v275);
        sub_22C388FD0();
        sub_22C53DB04(v233, v217);
        sub_22C36DD28(v231, &qword_27D9BB738, &unk_22C9185A0);
        sub_22C3DF2E8(&v290);
        sub_22C36FF94(&v286);
        sub_22C36C730(&v271, &v279);
        v218 = v280;
        *(v264 + 16) = v279;
        *(v264 + 32) = v218;
        *(v264 + 48) = v281;
        sub_22C4CBAA8(v246, v247, v251);
        return sub_22C537404(&v293);
      }

      v75 = v222;
LABEL_39:
      sub_22C903F7C();
      v76 = sub_22C9063CC();
      v77 = sub_22C90AADC();
      v78 = sub_22C370214();
      if (os_log_type_enabled(v78, v79))
      {
        sub_22C3720F4();
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_22C366000, v76, v77, "No base grammar provided in a configuration that requires a grammar.", v80, 2u);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      v71(v75, v265);
      sub_22C5373B0();
      swift_allocError();
      *v81 = 1;
      swift_willThrow();
      return sub_22C537404(&v293);
    }

    if ((~v251 & 0x3000000000000007) == 0)
    {
      v75 = v221;
      goto LABEL_39;
    }

    sub_22C42F0B8(a1, &v290);
    v277 = &type metadata for ToolboxGrammarToolProvider;
    v278 = &off_283FB5340;
    *&v275 = a2;
    sub_22C3E8FB4(a5, v230, &qword_27D9BB738, &unk_22C9185A0);
    sub_22C3734B8();
    sub_22C53DAA4(a6, v232, v82);
    v83 = sub_22C38A974();
    sub_22C4C7C38(v83, v84, v85);
    v86 = sub_22C38A974();
    sub_22C4C7C38(v86, v87, v88);
    v89 = qword_27D9BA650;

    if (v89 != -1)
    {
      sub_22C38BA8C(&qword_27D9BA650);
    }

    v241 = qword_27D9BC898;
    v258 = unk_27D9BC8A0;
    if (qword_27D9BA658 != -1)
    {
      sub_22C369F1C(&qword_27D9BA658);
    }

    v90 = xmmword_27D9BC8B0;
    v288 = &type metadata for PromptGrammarGenerator_v5_0.StaticPromptGrammarGenerator;
    v289 = &off_283FBA810;
    sub_22C36BE74();
    v263 = swift_allocObject();
    *&v286 = v263;
    sub_22C901EDC();
    sub_22C53DF0C();
    sub_22C901EDC();
    v254 = v279;
    *&v279 = 0x6E6E616C705F6569;
    *(&v279 + 1) = 0xEA00000000007265;
    MEMORY[0x2318B7850](0x736C6F6F745FLL, 0xE600000000000000);
    v91 = *(&v279 + 1);
    v238 = v279;
    sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_22C90F800;
    sub_22C36A83C();
    v93 = swift_allocObject();
    *(v93 + 16) = v90;
    *(v92 + 32) = v93 | 0x4000000000000000;
    sub_22C3A5908(&qword_27D9BDAE0, &qword_22C91A6B8);
    sub_22C369F54();
    v94 = swift_allocObject();
    sub_22C53DEF4(v94);
    v94[3].n128_u64[1] = sub_22C3A5908(&qword_27D9BDAE8, &unk_22C91A6C0);
    sub_22C53DED8();
    v94[4].n128_u64[0] = sub_22C3D32C8(v95, v96, &unk_22C91A6C0, v97);
    v98 = swift_allocObject();
    v94[2].n128_u64[0] = v98;
    if (v242)
    {
      sub_22C378A4C(&v275, &v280);
      sub_22C42F0B8(&v290, &v282);
      v284 = &unk_283FB9BD0;
      v285 = &off_283FB9DA0;
      v99 = xmmword_22C91A690;
    }

    else
    {
      bzero(&v280, 0x160uLL);
      v99 = 0uLL;
    }

    sub_22C53DF20(v99);
    sub_22C3819C0();
    v243 = v118;

    sub_22C5EA85C();
    v296 = v119;
    if (v235)
    {
      v98 = &v296;
      sub_22C6A57DC(&v279, 2);
    }

    sub_22C3E8FB4(v230, v223, &qword_27D9BB738, &unk_22C9185A0);
    if (sub_22C370B74(v223, 1, v229) == 1)
    {
      sub_22C36DD28(v223, &qword_27D9BB738, &unk_22C9185A0);
      sub_22C36A83C();
      v120 = swift_allocObject();
      *(v120 + 16) = 0xD000000000000016;
      *(v120 + 24) = 0x800000022C930A30;
      v121 = v120 | 0x4000000000000000;
      *(&v280 + 1) = sub_22C3A5908(&qword_27D9BDAC8, &qword_22C91A6A0);
      sub_22C369F3C();
      v281 = sub_22C3D32C8(v122, &qword_27D9BDAC8, &qword_22C91A6A0, v123);
      sub_22C380498();
      v124 = swift_allocObject();
      *&v279 = v124;
      v124[2] = 0xD00000000000001FLL;
      v124[3] = 0x800000022C932020;
      v125 = MEMORY[0x277D84F90];
      v124[4] = v121;
      v124[5] = v125;
    }

    else
    {
      sub_22C3819C0();
      v234 = v126;
      sub_22C53DA40(v223, v219);
      sub_22C36D870();
      sub_22C53DAA4(v219, v225, v127);
      *(&v280 + 1) = type metadata accessor for StructuredSearchToolGrammarComponent_v5_0(0);
      v281 = &off_2818B46A0;
      v128 = sub_22C36D548(&v279);
      v129 = type metadata accessor for ToolDefinitionGrammarGenerator_v5_0(0);
      sub_22C3734B8();
      sub_22C53DAA4(v232, v128 + v130, v131);
      sub_22C53DAA4(v225, v128 + v129[5], v98);
      sub_22C53DF00(v128 + v129[6]);
      v132 = v128 + v129[7];
      *(v132 + 3) = &unk_283FB9CD0;
      *(v132 + 4) = &off_283FB9E00;
      v133 = v128 + v129[8];
      *(v133 + 3) = &unk_283FB9CF0;
      *(v133 + 4) = &off_283FB9E10;
      sub_22C53DF00(v128 + v129[9]);
      v134 = v128 + v129[10];
      *(v134 + 3) = &unk_283FB9BF0;
      *(v134 + 4) = &off_283FB9DB0;
      v135 = v128 + v129[11];
      *(v135 + 3) = &unk_283FB9D10;
      *(v135 + 4) = &off_283FB9E20;
      sub_22C53DB04(v225, v98);
      *v128 = 0xD00000000000001DLL;
      v128[1] = v234;
      sub_22C53DB04(v219, v98);
    }

    sub_22C36C730(&v279, &v271);
    sub_22C3A5908(&qword_27D9BDAC0, &unk_22C91AB00);
    v136 = swift_allocObject();
    *(v136 + 16) = xmmword_22C90F870;
    sub_22C378A4C(&v271, &v280);
    v236 = v296;
    sub_22C3A5908(&qword_27D9BDAD8, &qword_22C91A6A8);
    v137 = swift_allocObject();
    *(v137 + 16) = xmmword_22C90FB40;
    *(v137 + 56) = &unk_283FB4CB0;
    *(v137 + 64) = &off_2818B2B70;
    v138 = swift_allocObject();
    *(v137 + 32) = v138;
    v138[2] = 0xD000000000000011;
    v138[3] = v243;
    v138[4] = v238;
    v138[5] = v91;
    v138[6] = v92;
    v138[7] = v94;
    sub_22C53DEC4();
    *&v267 = v139;
    v140 = v139;
    *(&v267 + 1) = 0xEA00000000007265;
    v141 = sub_22C38563C();
    MEMORY[0x2318B7850](v141, 0xE800000000000000);
    v142 = v267;
    *(v137 + 96) = &unk_283FB4C30;
    *(v137 + 104) = &off_2818B2B58;
    *(v137 + 72) = v142;
    *(v137 + 88) = &unk_283FAEEE8;
    sub_22C90AF5C();

    *&v267 = v140;
    *(&v267 + 1) = v94;
    MEMORY[0x2318B7850](0xD000000000000012, 0x800000022C931F50);
    v143 = v267;
    sub_22C36A83C();
    v144 = swift_allocObject();
    *(v144 + 16) = v241;
    *(v144 + 24) = v258;
    v145 = v144 | 0x4000000000000000;
    *(v137 + 136) = sub_22C53DF40();
    sub_22C369F3C();
    v244 = v146;
    sub_22C47274C();
    *(v137 + 144) = sub_22C3D32C8(v147, v148, v149, v150);
    sub_22C380498();
    v151 = swift_allocObject();
    *(v137 + 112) = v151;
    *(v151 + 16) = v143;
    v152 = MEMORY[0x277D84F90];
    *(v151 + 32) = v145;
    *(v151 + 40) = v152;
    sub_22C53DEC4();
    sub_22C3861E4(v153);
    v282 = v236;
    v283 = v137;
    *(v136 + 56) = sub_22C53DF40();
    sub_22C36AB40();
    sub_22C47274C();
    *(v136 + 64) = sub_22C3D32C8(v154, v155, v156, v157);
    v158 = swift_allocObject();
    *(v136 + 32) = v158;
    sub_22C537458(&v279, v158 + 16);
    *(v158 + 88) = &unk_22C91AB18;
    *(v158 + 96) = 0;

    sub_22C5374B4(&v279);
    *(v136 + 96) = sub_22C53DF40();
    sub_22C47274C();
    *(v136 + 104) = sub_22C3D32C8(v159, v160, v161, v244);
    sub_22C3A5908(&qword_27D9BAE18, &unk_22C90D6C0);
    sub_22C369F54();
    v162 = swift_allocObject();
    sub_22C53DEF4(v162);
    *(v163 + 32) = v246;
    *(v163 + 40) = v247;
    *(v163 + 48) = v251;
    *(v163 + 56) = v248;
    *(v163 + 64) = 0;
    *(v136 + 72) = v163;
    if (v254)
    {
      v164 = sub_22C53DF40();
      sub_22C36AB40();
      sub_22C47274C();
      v169 = sub_22C3D32C8(v165, v166, v167, v168);
      sub_22C3816AC();
      v170 = swift_allocObject();
      *(v170 + 16) = 83;
      *(v170 + 24) = 0xE100000000000000;
      *(v170 + 32) = MEMORY[0x277D84FA0];
      *(v170 + 40) = 0;
      *(&v267 + 1) = &unk_22C91A6F0;
      v268 = v170;
    }

    else
    {
      v169 = &off_2818B2AB0;
      v164 = &type metadata for PromptGrammarCoalescer;
    }

    v269 = v164;
    v270 = v169;
    *&v267 = v136;
    sub_22C36FF94(&v271);
    sub_22C388FD0();
    sub_22C53DB04(v232, v171);
    sub_22C36DD28(v230, &qword_27D9BB738, &unk_22C9185A0);
    sub_22C3DF2E8(&v290);
    sub_22C36FF94(&v275);
    sub_22C36C730(&v267, &v279);
    v172 = v280;
    *(v263 + 16) = v279;
    *(v263 + 32) = v172;
    *(v263 + 48) = v281;
    sub_22C464B30(&v293, &v279);
    v290 = qword_27D9BC898;
    v291 = unk_27D9BC8A0;
    v292 = qword_27D9BC8A8;
    v173 = qword_27D9BA648;

    if (v173 != -1)
    {
      sub_22C3830B8(&qword_27D9BA648);
    }

    v275 = xmmword_27D9BC880;
    v276 = qword_27D9BC890;
    v271 = xmmword_27D9BC8B0;
    v272 = qword_27D9BC8C0;
    a7[3] = &type metadata for StandalonePromptGrammarGenerator;
    a7[4] = &off_283FB52F8;
    v174 = swift_allocObject();
    *a7 = v174;
    v174[10] = &type metadata for PromptGrammarGenerator_v5_0.HybridPromptGrammarGenerator;
    v174[11] = &off_283FBA800;
    sub_22C36BE74();
    v175 = swift_allocObject();
    v174[7] = v175;

    sub_22C53C4CC(&v290, &v275, &v279, &v271, v249, v175 + 16);
    sub_22C4CBAA8(v246, v247, v251);
    sub_22C36C730(&v286, (v174 + 2));
    return sub_22C537404(&v293);
  }

  else
  {
    sub_22C903F7C();
    v52 = sub_22C9063CC();
    v53 = sub_22C90AACC();
    v54 = sub_22C370214();
    if (os_log_type_enabled(v54, v55))
    {
      sub_22C3720F4();
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_22C366000, v52, v53, "Constrained decoding support is disabled.", v56, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    result = (*(v262 + 8))(v34, v265);
    a7[3] = &type metadata for StubGrammarGenerator;
    a7[4] = &off_283FB5308;
  }

  return result;
}

uint64_t sub_22C53C4CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a2[1];
  v29 = *a2;
  v30 = a2[2];
  v10 = *a4;
  v11 = a4[1];
  v27 = a1[2];
  v28 = a4[2];
  sub_22C3A5908(&qword_27D9BDAC0, &unk_22C91AB00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22C90FB40;

  *(v12 + 56) = sub_22C3A5908(&qword_27D9BDB28, &qword_22C91A6F8);
  *(v12 + 64) = sub_22C3D32C8(&qword_27D9BDB30, &qword_27D9BDB28, &qword_22C91A6F8, &unk_22C913BD8);
  v13 = swift_allocObject();
  *(v12 + 32) = v13;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v7;
  v13[5] = v8;
  v14 = a3;
  v15 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84FA0];
  v13[6] = v27;
  v13[7] = v15;
  v13[8] = v16;
  v13[9] = &unk_22C91AB20;
  v13[10] = 0;

  *(v12 + 96) = sub_22C3A5908(&qword_27D9BDB38, &unk_22C91A700);
  *(v12 + 104) = sub_22C3D32C8(&qword_27D9BDB40, &qword_27D9BDB38, &unk_22C91A700, &unk_22C913BD8);
  v17 = swift_allocObject();
  *(v12 + 72) = v17;
  v17[2] = v10;
  v17[3] = v11;
  v17[4] = v10;
  v17[5] = v11;
  v17[6] = v28;
  v17[7] = v15;
  v17[8] = &unk_22C91AB30;
  v17[9] = 0;
  sub_22C464B30(v14, &__src[2]);
  sub_22C36A83C();
  v18 = swift_allocObject();
  strcpy((v18 + 16), "quoted_string");
  *(v18 + 30) = -4864;
  __src[0] = v29;
  __src[1] = v9;
  __src[7] = v18 | 0x4000000000000000;
  __src[8] = v29;
  __src[9] = v9;
  __src[10] = v30;
  __src[11] = v15;

  memcpy(__dst, __src, sizeof(__dst));
  v34 = &unk_22C91AB38;
  v35 = 0;
  *(v12 + 136) = sub_22C3A5908(&qword_27D9BDB48, &unk_22C91AB40);
  *(v12 + 144) = sub_22C3D32C8(&qword_27D9BDB50, &qword_27D9BDB48, &unk_22C91AB40, &unk_22C913BD8);
  v19 = swift_allocObject();
  *(v12 + 112) = v19;
  sub_22C3E8FB4(__dst, v19 + 16, &qword_27D9BDB58, qword_22C91A710);
  *(v19 + 128) = &unk_22C913A80;
  *(v19 + 136) = 0;
  sub_22C36DD28(__dst, &qword_27D9BDB58, qword_22C91A710);
  if (a5)
  {
    v20 = v16;
    v21 = sub_22C3A5908(&qword_27D9BDB18, &qword_22C91A6E0);
    sub_22C36AB40();
    v24 = sub_22C3D32C8(v22, &qword_27D9BDB18, &qword_22C91A6E0, v23);
    sub_22C3816AC();
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0xE000000000000000;
    *(v25 + 32) = v20;
    *(v25 + 40) = 1;
    *(&__dst[0] + 1) = &unk_22C91AB50;
    *&__dst[1] = v25;
  }

  else
  {
    v24 = &off_2818B2AB0;
    v21 = &type metadata for PromptGrammarCoalescer;
  }

  *(&__dst[1] + 1) = v21;
  *&__dst[2] = v24;
  *&__dst[0] = v12;
  sub_22C537404(v14);
  return sub_22C36C730(__dst, a6);
}

uint64_t sub_22C53C874()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_22C9063DC();
  v1[6] = v4;
  sub_22C3699B8(v4);
  v1[7] = v5;
  v1[8] = swift_task_alloc();
  v6 = sub_22C90634C();
  v1[9] = v6;
  sub_22C3699B8(v6);
  v1[10] = v7;
  v1[11] = sub_22C36D0D4();
  v1[12] = swift_task_alloc();
  v8 = sub_22C90636C();
  v1[13] = v8;
  sub_22C3699B8(v8);
  v1[14] = v9;
  v1[15] = sub_22C36D0D4();
  v1[16] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C53C9D8()
{
  sub_22C374458();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v3 = sub_22C37B2C4();
  v4(v3);
  sub_22C90635C();
  v5 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    sub_22C3720F4();
    v1 = swift_slowAlloc();
    *v1 = 0;
    v6 = sub_22C90632C();
    sub_22C3721A8(&dword_22C366000, v7, v8, v6, "HybridPromptGrammarGenerator.generateGrammar", "");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  sub_22C537978();
  v9 = sub_22C375988();
  v10(v9);
  sub_22C9063AC();
  swift_allocObject();
  v11 = sub_22C36D704();
  v12 = sub_22C5379A8(v11);
  v13(v12);
  v18(v5, v1);
  sub_22C374168(v2, v2[3]);
  sub_22C37012C();
  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  *v14 = v0;
  v15 = sub_22C382704(v14);

  return v16(v15);
}

uint64_t sub_22C53CBD4()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v4 + 152) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C53CCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C388250();
  sub_22C3743E4();
  v12 = v11[2];
  if (v12)
  {
    sub_22C3722AC(v12);
    sub_22C53D65C(v10, "HybridPromptGrammarGenerator.generateGrammar");

    sub_22C369A24();
  }

  else
  {
    sub_22C903F7C();
    v13 = sub_22C9063CC();
    sub_22C90AADC();
    v14 = sub_22C370214();
    if (os_log_type_enabled(v14, v15))
    {
      sub_22C3720F4();
      *swift_slowAlloc() = 0;
      sub_22C36BB14(&dword_22C366000, v16, v17, "Received nil hybrid grammar from generator.");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v19 = v11[7];
    v18 = v11[8];
    v20 = v11[6];

    (*(v19 + 8))(v18, v20);
    sub_22C5373B0();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    sub_22C36BE80();
    sub_22C53D65C(v18, "HybridPromptGrammarGenerator.generateGrammar");

    sub_22C369A24();
  }

  sub_22C36EC14();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_22C53CE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C388250();
  sub_22C3743E4();
  sub_22C36BE80();
  sub_22C53D65C(v10, "HybridPromptGrammarGenerator.generateGrammar");

  sub_22C369A24();
  sub_22C36EC14();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_22C53CF14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C53C874();
}

uint64_t sub_22C53CFBC()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_22C9063DC();
  v1[6] = v4;
  sub_22C3699B8(v4);
  v1[7] = v5;
  v1[8] = swift_task_alloc();
  v6 = sub_22C90634C();
  v1[9] = v6;
  sub_22C3699B8(v6);
  v1[10] = v7;
  v1[11] = sub_22C36D0D4();
  v1[12] = swift_task_alloc();
  v8 = sub_22C90636C();
  v1[13] = v8;
  sub_22C3699B8(v8);
  v1[14] = v9;
  v1[15] = sub_22C36D0D4();
  v1[16] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C53D120()
{
  sub_22C374458();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v3 = sub_22C37B2C4();
  v4(v3);
  sub_22C90635C();
  v5 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    sub_22C3720F4();
    v1 = swift_slowAlloc();
    *v1 = 0;
    v6 = sub_22C90632C();
    sub_22C3721A8(&dword_22C366000, v7, v8, v6, "StaticPromptGrammarGenerator.generateGrammar", "");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  sub_22C537978();
  v9 = sub_22C375988();
  v10(v9);
  sub_22C9063AC();
  swift_allocObject();
  v11 = sub_22C36D704();
  v12 = sub_22C5379A8(v11);
  v13(v12);
  v18(v5, v1);
  sub_22C374168(v2, v2[3]);
  sub_22C37012C();
  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  *v14 = v0;
  v15 = sub_22C382704(v14);

  return v16(v15);
}

uint64_t sub_22C53D31C()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v4 + 152) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C53D41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C388250();
  sub_22C3743E4();
  v12 = v11[2];
  if (v12)
  {
    sub_22C3722AC(v12);
    sub_22C53D65C(v10, "StaticPromptGrammarGenerator.generateGrammar");

    sub_22C369A24();
  }

  else
  {
    sub_22C903F7C();
    v13 = sub_22C9063CC();
    sub_22C90AADC();
    v14 = sub_22C370214();
    if (os_log_type_enabled(v14, v15))
    {
      sub_22C3720F4();
      *swift_slowAlloc() = 0;
      sub_22C36BB14(&dword_22C366000, v16, v17, "Received nil static grammar from generator.");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v19 = v11[7];
    v18 = v11[8];
    v20 = v11[6];

    (*(v19 + 8))(v18, v20);
    sub_22C5373B0();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    sub_22C36BE80();
    sub_22C53D65C(v18, "StaticPromptGrammarGenerator.generateGrammar");

    sub_22C369A24();
  }

  sub_22C36EC14();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_22C53D5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C388250();
  sub_22C3743E4();
  sub_22C36BE80();
  sub_22C53D65C(v10, "StaticPromptGrammarGenerator.generateGrammar");

  sub_22C369A24();
  sub_22C36EC14();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_22C53D65C(uint64_t a1, const char *a2)
{
  v2 = sub_22C90637C();
  sub_22C369824();
  v27 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = v6 - v5;
  v29 = sub_22C90634C();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = sub_22C90636C();
  sub_22C369824();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v20 = v19 - v18;
  sub_22C90364C();
  v21 = sub_22C90635C();
  sub_22C90638C();
  v26 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    if ((*(v27 + 88))(v7, v2) == *MEMORY[0x277D85B00])
    {
      v22 = "[Error] Interval already ended";
    }

    else
    {
      (*(v27 + 8))(v7, v2);
      v22 = "";
    }

    sub_22C3720F4();
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v21, v26, v24, a2, v22, v23, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v9 + 8))(v13, v29);
  return (*(v16 + 8))(v20, v14);
}

uint64_t sub_22C53D904()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C53CFBC();
}

uint64_t sub_22C53D9AC()
{
  sub_22C36D5EC();
  sub_22C36FD2C();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C36BE94(v1);

  return sub_22C53A5EC(v3, v4, v5, v6, v7);
}

uint64_t sub_22C53DA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GrammarToolDefinitionBundle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C53DAA4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C53DB04(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C53DB5C()
{
  sub_22C36D5EC();
  sub_22C36FD2C();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C36BE94(v1);

  return sub_22C53A6E0(v3, v4, v5, v6, v7);
}

uint64_t sub_22C53DBF0()
{
  sub_22C36D5EC();
  sub_22C36FD2C();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C36BE94(v1);

  return sub_22C53A6E0(v3, v4, v5, v6, v7);
}

uint64_t sub_22C53DC84()
{
  sub_22C369980();
  v2 = v1;
  v4 = *(v3 + 16);
  *(v0 + 16) = *v3;
  *(v0 + 32) = v4;
  *(v0 + 48) = *(v3 + 32);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_22C53DD2C;

  return sub_22C53A708(v2, v0 + 16);
}

uint64_t sub_22C53DD2C()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  sub_22C369A24();

  return v3();
}

uint64_t sub_22C53DE0C()
{
  sub_22C36D5EC();
  sub_22C388730();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C3718F8(v1);

  return sub_22C46109C(v3, v4, v5, v6, v7, v8);
}

__n128 sub_22C53DEF4(__n128 *a1)
{
  result = v1[16];
  a1[1] = result;
  return result;
}

void sub_22C53DF00(uint64_t a1@<X8>)
{
  *(a1 + 24) = v1;
  *(a1 + 32) = v2;
  *a1 = 0;
}

void *sub_22C53DF20(__n128 a1)
{
  v1[25] = a1;

  return memcpy((v2 + 16), &v1[25], 0x170uLL);
}

uint64_t sub_22C53DF40()
{

  return sub_22C3A5908(v0, v1);
}

uint64_t sub_22C53DF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C901FAC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22C3A5908(&qword_27D9BC048, &qword_22C91AC70);
  v9 = MEMORY[0x28223BE20](v54);
  v53 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = v38 - v11;
  v51 = sub_22C3A5908(&qword_27D9BDBB0, &qword_22C91AC88);
  v12 = MEMORY[0x28223BE20](v51);
  v50 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v49 = v38 - v15;
  MEMORY[0x28223BE20](v14);
  v48 = v38 - v16;
  v17 = *(a3 + 16);
  v56 = MEMORY[0x277D84F90];
  sub_22C3B6EDC();
  v18 = v56;
  v47 = v17;
  if (!v17)
  {
    return v18;
  }

  result = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  v20 = 0;
  v42 = *(result - 8);
  v43 = result;
  v41 = a2 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
  v21 = *(a2 + 16);
  v45 = v6;
  v46 = v21;
  v39 = (v6 + 16);
  v40 = a3 + 32;
  v38[2] = v6 + 32;
  v44 = v8;
  while (v46 != v20)
  {
    v22 = v54;
    v23 = *(v54 + 48);
    v24 = v52;
    sub_22C542C74(v41 + *(v42 + 72) * v20, v52, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
    *(v24 + v23) = *(v40 + 8 * v20);
    v25 = v53;
    sub_22C3D7EEC(v24, v53, &qword_27D9BC048, &qword_22C91AC70);
    v26 = *(v22 + 48);
    v27 = v5;
    v55 = v18;
    v28 = v51;
    v29 = *(v51 + 48);
    v30 = v48;
    sub_22C542CD4(v25, v48, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
    *(v30 + v29) = *(v25 + v26);
    v31 = v49;
    sub_22C542D34(v30, v49);
    v32 = *(v28 + 48);
    v33 = *(v31 + v32);
    v34 = v50;
    sub_22C542CD4(v31, v50, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
    *(v34 + v32) = v33;
    v35 = v44;
    v5 = v27;
    (*v39)(v44, v34 + *(v43 + 20), v27);

    v36 = v34;
    v18 = v55;
    sub_22C36DD28(v36, &qword_27D9BDBB0, &qword_22C91AC88);
    sub_22C36DD28(v30, &qword_27D9BDBB0, &qword_22C91AC88);
    v56 = v18;
    v37 = *(v18 + 16);
    if (v37 >= *(v18 + 24) >> 1)
    {
      sub_22C3B6EDC();
      v18 = v56;
    }

    ++v20;
    *(v18 + 16) = v37 + 1;
    result = (*(v45 + 32))(v18 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v37, v35, v27);
    if (v47 == v20)
    {
      return v18;
    }
  }

  __break(1u);
  return result;
}

void *sub_22C53E3B4(uint64_t a1)
{
  v2 = type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem(0);
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v40 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v44 = v37 - v5;
  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  v45 = MEMORY[0x277D84F98];
  v43 = *(a1 + 16);
  v38 = xmmword_22C90F800;
  v39 = a1;
  while (1)
  {
    if (v43 == v6)
    {

      return v7;
    }

    if (v6 >= *(a1 + 16))
    {
      break;
    }

    v8 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v9 = *(v41 + 72);
    v10 = v44;
    sub_22C542C74(a1 + v8 + v9 * v6, v44, type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
    v11 = *(v10 + *(v42 + 24));
    v19 = sub_22C628AF8(v11);
    v20 = v7[2];
    v21 = (v12 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_19;
    }

    v23 = v12;
    if (v7[3] < v22)
    {
      sub_22C88EB24(v22, 1, v13, v14, v15, v16, v17, v18, v37[0], v37[1], v38, SBYTE4(v38));
      v7 = v45;
      v24 = sub_22C628AF8(v11);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_21;
      }

      v19 = v24;
    }

    if (v23)
    {
      v26 = v7[7];
      sub_22C542CD4(v44, v40, type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
      v27 = *(v26 + 8 * v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v26 + 8 * v19) = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C592F08();
        v27 = v34;
        *(v26 + 8 * v19) = v34;
      }

      v29 = *(v27 + 16);
      if (v29 >= *(v27 + 24) >> 1)
      {
        sub_22C592F08();
        v27 = v35;
        *(v26 + 8 * v19) = v35;
      }

      *(v27 + 16) = v29 + 1;
      sub_22C542CD4(v40, v27 + v8 + v29 * v9, type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
      a1 = v39;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAEF8, &unk_22C90D7A0);
      v30 = swift_allocObject();
      *(v30 + 16) = v38;
      sub_22C542CD4(v44, v30 + v8, type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
      v7[(v19 >> 6) + 8] |= 1 << v19;
      *(v7[6] + v19) = v11;
      *(v7[7] + 8 * v19) = v30;
      v31 = v7[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_20;
      }

      v7[2] = v33;
    }

    ++v6;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C53E700(unint64_t a1)
{
  switch(a1 >> 61)
  {
    case 0uLL:
      v2 = *(a1 + 16);
      v1 = *(a1 + 24);
      v3 = swift_allocObject();
      *(v3 + 16) = v2;
      *(v3 + 24) = v1;

      goto LABEL_6;
    case 3uLL:
      v11 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = swift_allocObject();
      v13 = *(v11 + 16);

      v14 = sub_22C53E948(v13);

      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v12 + 16) = v15;
      v3 = v12 | 0x6000000000000000;
      goto LABEL_6;
    case 4uLL:
      v16 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v17 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v18 = swift_allocObject();
      *(v18 + 16) = v16;
      swift_beginAccess();
      v19 = *(v17 + 16);

      v20 = sub_22C53E700(v19);

      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v18 + 24) = v21;
      v3 = v18 | 0x8000000000000000;
      goto LABEL_6;
    case 5uLL:
      v4 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v6 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v7 = swift_allocObject();
      *(v7 + 16) = v4;
      *(v7 + 24) = v5;
      swift_beginAccess();
      v8 = *(v6 + 16);

      v9 = sub_22C53E700(v8);

      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v7 + 32) = v10;
      v3 = v7 | 0xA000000000000000;
LABEL_6:
      result = v3;
      break;
    default:
      sub_22C3A5908(&qword_27D9BDBB8, qword_22C91AC90);
      result = sub_22C90B4EC();
      __break(1u);
      break;
  }

  return result;
}

unint64_t sub_22C53E948(uint64_t a1)
{
  if (a1 < 0)
  {
    v9 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v11 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    v13 = *(v11 + 16);
    sub_22C480170(v9, v10);

    v14 = sub_22C53E948(v13);

    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v12 + 32) = v15;
    return v12 | 0x8000000000000000;
  }

  else
  {
    v1 = *(a1 + 16);
    if (v1 >> 62)
    {
      v2 = sub_22C90B1BC();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (!v2)
    {
LABEL_12:
      result = swift_allocObject();
      *(result + 16) = v3;
      return result;
    }

    v16 = MEMORY[0x277D84F90];

    result = sub_22C90B01C();
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2318B8460](v5, v1);
        }

        else
        {
          v6 = *(v1 + 8 * v5 + 32);
        }

        ++v5;
        swift_beginAccess();
        v7 = *(v6 + 16);

        v8 = sub_22C53E700(v7);

        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        *(swift_allocObject() + 16) = v8;
        sub_22C90AFEC();
        sub_22C90B02C();
        sub_22C90B03C();
        sub_22C90AFFC();
      }

      while (v2 != v5);

      v3 = v16;
      goto LABEL_12;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C53EB6C(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v319 = a1;
  v339 = sub_22C3A5908(&qword_27D9BC048, &qword_22C91AC70);
  sub_22C36985C();
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  v338 = v10;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA64();
  v337 = v12;
  v336 = sub_22C3A5908(&qword_27D9BDBA0, &qword_22C91AC78);
  sub_22C36985C();
  MEMORY[0x28223BE20](v13);
  sub_22C3698E4();
  v335 = v14;
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA64();
  v334 = v16;
  v17 = sub_22C36BA0C();
  type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem(v17);
  sub_22C369824();
  v311 = v19;
  v312 = v18;
  MEMORY[0x28223BE20](v18);
  sub_22C3698E4();
  v329 = v20;
  sub_22C369930();
  MEMORY[0x28223BE20](v21);
  sub_22C36BA58();
  v315 = v22;
  sub_22C369930();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA64();
  v316 = v24;
  sub_22C36BA0C();
  v345 = sub_22C901FAC();
  sub_22C369824();
  v348 = v25;
  MEMORY[0x28223BE20](v26);
  sub_22C3698E4();
  v304 = v27;
  sub_22C369930();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA64();
  v344 = v29;
  sub_22C36BA0C();
  sub_22C902D0C();
  sub_22C369824();
  v346 = v31;
  v347 = v30;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = (v303 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  sub_22C36BA58();
  v307 = v35;
  sub_22C369930();
  MEMORY[0x28223BE20](v36);
  sub_22C36BA64();
  v320 = v37;
  v38 = sub_22C36BA0C();
  v39 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(v38);
  sub_22C36985C();
  MEMORY[0x28223BE20](v40);
  v317 = v303 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22C36BA0C();
  v318 = type metadata accessor for PromptTreeIdentifier(v42);
  sub_22C36985C();
  MEMORY[0x28223BE20](v43);
  sub_22C3698E4();
  v310 = v44;
  sub_22C369930();
  MEMORY[0x28223BE20](v45);
  sub_22C36BA58();
  v321 = v46;
  sub_22C369930();
  MEMORY[0x28223BE20](v47);
  sub_22C36BA64();
  v331 = v48;
  sub_22C36BA0C();
  v330 = sub_22C9063DC();
  sub_22C369824();
  v327 = v49;
  MEMORY[0x28223BE20](v50);
  v52 = v303 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_22C3A5908(&qword_27D9BDBA8, &qword_22C91AC80);
  MEMORY[0x28223BE20](v53 - 8);
  v55 = v303 - v54;
  v341 = sub_22C3A5908(&qword_27D9BDBB0, &qword_22C91AC88);
  sub_22C36985C();
  MEMORY[0x28223BE20](v56);
  sub_22C3698E4();
  v333 = v57;
  sub_22C369930();
  MEMORY[0x28223BE20](v58);
  sub_22C36BA58();
  v332 = v59;
  sub_22C369930();
  v61 = MEMORY[0x28223BE20](v60);
  v63 = (v303 - v62);
  MEMORY[0x28223BE20](v61);
  sub_22C36BA64();
  v340 = v64;
  if ((a5 & 0x8000000000000000) != 0)
  {
    goto LABEL_92;
  }

  v328 = v34;

  sub_22C7E34FC();
  v66 = v65;

  v342 = v66;
  v343 = a3;
  if (*(v66 + 16) != 1)
  {
LABEL_5:
    sub_22C54072C(v319, a2, a3);
    v314 = v67;
    v68 = *(v67 + 16);
    v340 = *(a4 + 16);
    v70 = v340 < v68 || v340 > a5;
    sub_22C36C640(v317, 2, 3, v347);
    sub_22C38A984();
    swift_storeEnumTagMultiPayload();
    v308 = a2;
    v351 = sub_22C53DF58(a2, a3, a4);

    sub_22C5418A0(&v351);
    v309 = 0;
    v305 = v70;
    v313 = a4;
    v306 = v39;

    a3 = v351;
    v39 = *(v351 + 16);
    if (v39)
    {
      v351 = MEMORY[0x277D84F90];
      sub_22C542E9C();
      sub_22C38A984();
      sub_22C3B69C4(v71, v72, v73);
      v74 = 0;
      v52 = v351;
      sub_22C37054C();
      v330 = a3 + v75;
      v327 = v76 + 16;
      v325 = *MEMORY[0x277D1D798];
      v323 = v76 + 8;
      v324 = (v346 + 104);
      v322 = v346 + 32;
      a2 = v307;
      v331 = a3;
      v326 = v39;
      while (1)
      {
        v64 = *(a3 + 16);
        if (v74 >= v64)
        {
          break;
        }

        v77 = v348;
        v78 = *(v348 + 16);
        v79 = v344;
        v80 = v345;
        v78(v344, v330 + *(v348 + 72) * v74, v345);
        v81 = swift_allocBox();
        v78(v82, v79, v80);
        *a2 = v81;
        v83 = v347;
        (*v324)(a2, v325, v347);
        (*(v77 + 8))(v79, v80);
        v351 = v52;
        v85 = *(v52 + 16);
        v84 = *(v52 + 24);
        if (v85 >= v84 >> 1)
        {
          v89 = sub_22C377E58(v84);
          sub_22C3B69C4(v89, v85 + 1, 1);
          v83 = v347;
          v52 = v351;
        }

        ++v74;
        *(v52 + 16) = v85 + 1;
        sub_22C37054C();
        v87 = sub_22C542E8C(v52 + v86);
        v88(v87, a2, v83);
        v39 = v326;
        a3 = v331;
        if (v326 == v74)
        {

          goto LABEL_19;
        }
      }

LABEL_90:
      __break(1u);
    }

    else
    {

      v52 = MEMORY[0x277D84F90];
LABEL_19:
      v90 = swift_allocBox();
      v92 = v91;
      sub_22C36D6EC();
      v93 = swift_allocObject();
      *(v93 + 16) = v52;
      *(v93 + 24) = 0;
      *(v93 + 32) = 4;
      *v92 = v93;
      v94 = v346 + 104;
      v95 = *(v346 + 104);
      LODWORD(v322) = *MEMORY[0x277D1D7E8];
      v95(v92);
      v307 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
      v96 = *(v307 + 20);
      v97 = v321;
      *(v321 + v96) = v90;
      v303[3] = *MEMORY[0x277D1D7A0];
      v330 = v95;
      v331 = v94;
      v95((v97 + v96));
      sub_22C542CD4(v317, v97, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category);
      swift_storeEnumTagMultiPayload();
      v98 = 0;
      v39 = v314;
      a2 = *(v314 + 16);
      v99 = MEMORY[0x277D84F90];
      v326 = MEMORY[0x277D84F90];
      v52 = v311;
      v100 = v312;
      a3 = v316;
      while (a2 != v98)
      {
        v64 = *(v39 + 16);
        if (v98 >= v64)
        {
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        sub_22C542C74(v39 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v98, a3, type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
        if (*(a3 + *(v100 + 20)) == 1)
        {
          sub_22C37290C();
          sub_22C542CD4(a3, v315, v101);
          v102 = v326;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v351 = v102;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v104 = sub_22C542E9C();
            sub_22C3B71E0(v104, v105, 1);
            v100 = v312;
            v102 = v351;
          }

          v107 = *(v102 + 16);
          v106 = *(v102 + 24);
          v108 = v102;
          if (v107 >= v106 >> 1)
          {
            v111 = sub_22C377E58(v106);
            sub_22C3B71E0(v111, v107 + 1, 1);
            v100 = v312;
            v108 = v351;
          }

          ++v98;
          *(v108 + 16) = v107 + 1;
          v326 = v108;
          sub_22C37290C();
          sub_22C542CD4(v315, v109, v110);
          a3 = v316;
          v39 = v314;
        }

        else
        {
          sub_22C542DA4(a3, type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
          ++v98;
        }
      }

      v112 = v326;
      v113 = *(v326 + 16);
      if (v113)
      {
        v351 = v99;
        sub_22C542E9C();
        sub_22C3B6EDC();
        v114 = v351;
        v39 = v112 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
        v327 = *(v52 + 72);
        v115 = (v348 + 16);
        v116 = v345;
        v117 = v304;
        do
        {
          v118 = v329;
          sub_22C542C74(v39, v329, type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
          (*v115)(v117, v118, v116);
          sub_22C542DA4(v118, type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
          v351 = v114;
          v120 = *(v114 + 16);
          v119 = *(v114 + 24);
          if (v120 >= v119 >> 1)
          {
            sub_22C377E58(v119);
            sub_22C3B6EDC();
            v114 = v351;
          }

          *(v114 + 16) = v120 + 1;
          sub_22C37054C();
          v122 = sub_22C542E8C(v114 + v121);
          v123(v122, v117, v116);
          v39 += v327;
          --v113;
        }

        while (v113);

        v99 = MEMORY[0x277D84F90];
      }

      else
      {

        v114 = MEMORY[0x277D84F90];
      }

      v351 = v114;

      v124 = v309;
      sub_22C5418A0(&v351);
      if (v124)
      {

        __break(1u);
        return result;
      }

      a3 = v351;
      v52 = *(v351 + 16);
      if (!v52)
      {

        a2 = MEMORY[0x277D84F90];
LABEL_45:
        if (*(a2 + 16))
        {
          sub_22C36D6EC();
          v144 = swift_allocObject();
          *(v144 + 16) = a2;
          *(v144 + 24) = 0;
          *(v144 + 32) = 4;
          v145 = v330;
        }

        else
        {
          v146 = v347;
          v144 = swift_allocBox();
          v148 = v147;
          sub_22C36D6EC();
          v149 = swift_allocObject();
          *(v149 + 16) = a2;
          *(v149 + 24) = 0;
          *(v149 + 32) = 4;
          *v148 = v149;
          v145 = v330;
          (v330)(v148, v322, v146);
        }

        *v320 = v144;
        v145();
        sub_22C36A83C();
        v52 = swift_allocObject();
        *(v52 + 16) = 0x746E695B74636964;
        *(v52 + 24) = 0xEA0000000000202CLL;
        sub_22C374C14();
        sub_22C591324();
        v151 = v150;
        v39 = *(v150 + 16);
        v64 = *(v150 + 24);
        v152 = v64 >> 1;
        a3 = v39 + 1;
        a2 = v308;
        if (v64 >> 1 > v39)
        {
          goto LABEL_49;
        }

        goto LABEL_93;
      }

      v351 = v99;
      v125 = sub_22C542E9C();
      sub_22C3B69C4(v125, v52, 0);
      v126 = 0;
      a2 = v351;
      sub_22C37054C();
      v327 = a3 + v127;
      v326 = v128 + 16;
      v325 = *MEMORY[0x277D1D798];
      v323 = v346 + 32;
      v324 = (v128 + 8);
      v329 = a3;
      v129 = v344;
      while (1)
      {
        v64 = *(a3 + 16);
        if (v126 >= v64)
        {
          break;
        }

        v39 = v348;
        v130 = *(v348 + 16);
        v131 = v345;
        v130(v129, v327 + *(v348 + 72) * v126, v345);
        v132 = swift_allocBox();
        v130(v133, v129, v131);
        v134 = v328;
        *v328 = v132;
        v135 = v347;
        (v330)(v134, v325, v347);
        v136 = sub_22C37FE24();
        v137(v136);
        v351 = a2;
        v139 = *(a2 + 16);
        v138 = *(a2 + 24);
        if (v139 >= v138 >> 1)
        {
          v143 = sub_22C377E58(v138);
          sub_22C3B69C4(v143, v139 + 1, 1);
          v135 = v347;
          a2 = v351;
        }

        ++v126;
        *(a2 + 16) = v139 + 1;
        sub_22C37054C();
        v141 = sub_22C542E8C(a2 + v140);
        v142(v141, v134, v135);
        a3 = v329;
        if (v52 == v126)
        {

          goto LABEL_45;
        }
      }
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    sub_22C369AB0(v64);
    sub_22C591324();
    v151 = v283;
    v64 = *(v283 + 24);
    v152 = v64 >> 1;
LABEL_49:
    *(v151 + 16) = a3;
    *(v151 + 8 * v39 + 32) = v52;
    v153 = *(v319 + 40);
    v154 = v39 + 2;
    if (v152 < (v39 + 2))
    {
      sub_22C369AB0(v64);
      sub_22C591324();
      v151 = v284;
    }

    *(v151 + 16) = v154;
    *(v151 + 8 * a3 + 32) = v153;
    sub_22C36A83C();
    v155 = swift_allocObject();
    *(v155 + 16) = 93;
    *(v155 + 24) = 0xE100000000000000;
    v156 = *(v151 + 24);
    v157 = v39 + 3;

    if (v157 > (v156 >> 1))
    {
      sub_22C591324();
      v151 = v285;
    }

    *(v151 + 16) = v157;
    *(v151 + 8 * v154 + 32) = v155;
    v158 = sub_22C3DB9B0(v151);

    sub_22C369AEC();
    v159 = swift_allocObject();
    v344 = sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v160 = swift_allocObject();
    *(v160 + 16) = v158;
    *(v159 + 16) = v160;
    v331 = v159;
    v161 = v159 | 0x6000000000000000;
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C919310;
    *(inited + 32) = sub_22C540D38(a2, v343);
    type metadata accessor for PromptTreeIdentifier.Label(0);
    v163 = swift_allocBox();
    sub_22C486784();
    v330 = inited;
    *(inited + 40) = v163 | 0x2000000000000000;
    sub_22C36A83C();
    v164 = swift_allocObject();
    *(v164 + 16) = 8250;
    *(v164 + 24) = 0xE200000000000000;
    v165 = MEMORY[0x277D84F90];
    sub_22C374C14();
    sub_22C591324();
    v167 = v166;
    v169 = *(v166 + 16);
    v168 = *(v166 + 24);
    v170 = v168 >> 1;
    v171 = v169 + 1;
    if (v168 >> 1 <= v169)
    {
      v286 = sub_22C369AB0(v168);
      sub_22C3871F8(v286, v169 + 1);
      v167 = v287;
      v168 = *(v287 + 24);
      v170 = v168 >> 1;
    }

    *(v167 + 16) = v171;
    *(v167 + 8 * v169 + 32) = v164;
    v172 = v169 + 2;
    if (v170 < (v169 + 2))
    {
      v288 = sub_22C369AB0(v168);
      sub_22C3871F8(v288, v169 + 2);
      v167 = v289;
    }

    *(v167 + 16) = v172;
    *(v167 + 8 * v171 + 32) = v161;
    sub_22C36A83C();
    v39 = swift_allocObject();
    *(v39 + 16) = 0xA7B203D20;
    *(v39 + 24) = 0xE500000000000000;
    v173 = *(v167 + 24);

    if ((v169 + 3) > (v173 >> 1))
    {
      sub_22C3871F8(v173 > 1, v169 + 3);
      v167 = v290;
    }

    *(v167 + 16) = v169 + 3;
    *(v167 + 8 * v172 + 32) = v39;
    a3 = sub_22C3DB9B0(v167);

    sub_22C369AEC();
    v52 = swift_allocObject();
    sub_22C369AEC();
    v174 = swift_allocObject();
    *(v174 + 16) = a3;
    *(v52 + 16) = v174;
    *(v330 + 48) = v52 | 0x6000000000000000;
    v329 = swift_initStackObject();
    *(v329 + 16) = xmmword_22C90F870;
    v351 = v165;
    v175 = sub_22C542E9C();
    sub_22C3B63D4(v175, 0, 0);
    a2 = 0;
    v345 = v313 + 32;
    v176 = v351;
    while (1)
    {
      v177 = v343;
      if (v340 == a2)
      {
        break;
      }

      v64 = *(v343 + 16);
      if (a2 >= v64)
      {
        goto LABEL_89;
      }

      v178 = v339;
      v179 = *(v339 + 48);
      v180 = *(type metadata accessor for PromptTreeIdentifier.ContextSubItem(0) - 8);
      v181 = v177 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * a2;
      v182 = v337;
      sub_22C542C74(v181, v337, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
      v348 = v176;
      *(v182 + v179) = *(v345 + 8 * a2);
      v183 = v338;
      sub_22C3D7EEC(v182, v338, &qword_27D9BC048, &qword_22C91AC70);
      v184 = *(v178 + 48);
      v185 = v341;
      v186 = *(v341 + 48);
      v187 = v333;
      sub_22C542CD4(v183, v333, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
      *(v187 + v186) = *(v183 + v184);
      v188 = v187;
      v189 = v332;
      sub_22C3D7EEC(v188, v332, &qword_27D9BDBB0, &qword_22C91AC88);
      v190 = v335;
      v191 = v336;
      v192 = *(v336 + 48);
      *v335 = a2;
      v193 = v342;
      sub_22C3D7EEC(v189, v190 + v192, &qword_27D9BDBB0, &qword_22C91AC88);
      v194 = v334;
      v52 = &qword_27D9BDBA0;
      a3 = &qword_22C91AC78;
      sub_22C3D7EEC(v190, v334, &qword_27D9BDBA0, &qword_22C91AC78);
      v195 = *v194;
      v196 = v194 + *(v191 + 48);
      v197 = *(v196 + *(v185 + 48));
      v176 = v348;

      v39 = sub_22C5410C4(v195, v196, v197, v193);
      sub_22C36DD28(v194, &qword_27D9BDBA0, &qword_22C91AC78);
      v351 = v176;
      v199 = *(v176 + 16);
      v198 = *(v176 + 24);
      if (v199 >= v198 >> 1)
      {
        v200 = sub_22C377E58(v198);
        sub_22C3B63D4(v200, v199 + 1, 1);
        v176 = v351;
      }

      *(v176 + 16) = v199 + 1;
      *(v176 + 8 * v199 + 32) = v39;
      ++a2;
    }

    v201 = sub_22C3DB9B0(v176);

    sub_22C369AEC();
    v202 = swift_allocObject();
    sub_22C369AEC();
    v203 = swift_allocObject();
    *(v203 + 16) = v201;
    *(v202 + 16) = v203;
    v204 = v329;
    *(v329 + 32) = v202 | 0x6000000000000000;
    sub_22C36A83C();
    v205 = swift_allocObject();
    if (v305)
    {
      v351 = 774778378;
      v352 = 0xE400000000000000;
      v206 = sub_22C90A49C();
    }

    else
    {
      v206 = 0;
      v207 = 0xE000000000000000;
    }

    v208 = v307;
    *(v205 + 16) = v206;
    *(v205 + 24) = v207;
    *(v204 + 40) = v205;
    v209 = sub_22C3DB9B0(v204);
    swift_setDeallocating();
    sub_22C58FFB0();
    sub_22C369AEC();
    v210 = swift_allocObject();
    sub_22C369AEC();
    v211 = swift_allocObject();
    *(v211 + 16) = v209;
    *(v210 + 16) = v211;
    v212 = v210 | 0x6000000000000000;
    v213 = swift_allocObject();
    *(v213 + 16) = 1;
    *(v213 + 24) = 1;
    v348 = sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v214 = swift_allocObject();
    *(v214 + 16) = v212;
    *(v213 + 32) = v214;
    v215 = v330;
    *(v330 + 56) = v213 | 0xA000000000000000;
    sub_22C36A83C();
    v216 = swift_allocObject();
    v351 = 32010;
    v352 = 0xE200000000000000;
    *(v216 + 16) = sub_22C90A49C();
    *(v216 + 24) = v217;
    *(v215 + 64) = v216;
    v218 = v310;
    *v310 = 0x64657463656C6573;
    *(v218 + 8) = 0xE800000000000000;
    type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v219 = *(v208 + 20);
    v220 = v346;
    (*(v346 + 16))(v218 + v219, v320, v347);
    sub_22C38A984();
    swift_storeEnumTagMultiPayload();
    sub_22C36A83C();
    v221 = swift_allocObject();
    *(v221 + 16) = 0;
    *(v221 + 24) = 0xE000000000000000;
    v222 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
    v223 = swift_allocBox();
    v225 = v224;
    v226 = *(v222 + 48);
    sub_22C542CD4(v218, v224, type metadata accessor for PromptTreeIdentifier);
    sub_22C369AEC();
    v227 = swift_allocObject();
    *(v227 + 16) = v221;
    *(v225 + v226) = v227;
    *(v215 + 72) = v223 | 0x4000000000000000;
    v228 = sub_22C3DB9B0(v215);

    swift_setDeallocating();
    sub_22C58FFB0();
    (*(v220 + 8))(v320, v347);
    sub_22C369AEC();
    v229 = swift_allocObject();
    sub_22C369AEC();
    v230 = swift_allocObject();
    *(v230 + 16) = v228;
    *(v229 + 16) = v230;
    v231 = swift_allocBox();
    v233 = (v232 + *(v222 + 48));
    sub_22C542CD4(v321, v232, type metadata accessor for PromptTreeIdentifier);
    goto LABEL_87;
  }

  sub_22C58B318(v342, v55);
  if (sub_22C370B74(v55, 1, v341) == 1)
  {
    sub_22C36DD28(v55, &qword_27D9BDBA8, &qword_22C91AC80);
    a3 = v343;
    goto LABEL_5;
  }

  sub_22C3D7EEC(v55, v340, &qword_27D9BDBB0, &qword_22C91AC88);
  sub_22C903F7C();
  sub_22C4AB1F0(v319, &v351);
  v234 = sub_22C9063CC();
  v235 = sub_22C90AACC();
  if (os_log_type_enabled(v234, v235))
  {
    v236 = swift_slowAlloc();
    v237 = swift_slowAlloc();
    v350 = v237;
    *v236 = 136315138;
    sub_22C4AB1F0(&v351, &v349);
    v238 = sub_22C90A1AC();
    v240 = v239;
    sub_22C48A6C0(&v351);
    v241 = sub_22C36F9F4(v238, v240, &v350);

    *(v236 + 4) = v241;
    _os_log_impl(&dword_22C366000, v234, v235, "Only one item present in context group %s. Unwrapping", v236, 0xCu);
    sub_22C36FF94(v237);
    MEMORY[0x2318B9880](v237, -1, -1);
    MEMORY[0x2318B9880](v236, -1, -1);
  }

  else
  {

    sub_22C48A6C0(&v351);
  }

  (*(v327 + 8))(v52, v330);
  v242 = v345;
  v243 = v331;
  v244 = v347;
  sub_22C36C640(v331, 2, 3, v347);
  sub_22C38A984();
  swift_storeEnumTagMultiPayload();
  v245 = swift_allocBox();
  v247 = v246;
  v248 = sub_22C37FE24();
  sub_22C542D34(v248, v249);
  sub_22C388FE8();
  v250 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  (*(v348 + 16))(v247, v63 + *(v250 + 20), v242);
  sub_22C542DA4(v63, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
  v251 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
  *(v243 + v251) = v245;
  (*(v346 + 104))(v243 + v251, *MEMORY[0x277D1D798], v244);
  swift_storeEnumTagMultiPayload();
  v252 = sub_22C37FE24();
  sub_22C542D34(v252, v253);
  sub_22C388FE8();
  v254 = *(v63 + *(v250 + 24));

  sub_22C542DA4(v63, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
  v255 = sub_22C37FE24();
  sub_22C542D34(v255, v256);
  sub_22C388FE8();
  v257 = *v63;

  sub_22C542DA4(v63, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
  v258 = sub_22C53E700(v257);

  sub_22C36A83C();
  v259 = swift_allocObject();
  *(v259 + 16) = 0;
  *(v259 + 24) = 0xE000000000000000;
  sub_22C374C14();
  sub_22C591324();
  v261 = v260;
  v263 = *(v260 + 16);
  v262 = *(v260 + 24);
  if (v263 >= v262 >> 1)
  {
    v291 = sub_22C369AB0(v262);
    sub_22C3871F8(v291, v263 + 1);
    v261 = v292;
  }

  *(v261 + 16) = v263 + 1;
  *(v261 + 8 * v263 + 32) = v259;
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v264 = swift_allocBox();
  sub_22C486784();
  v265 = v264 | 0x2000000000000000;
  v267 = *(v261 + 16);
  v266 = *(v261 + 24);
  if (v267 >= v266 >> 1)
  {
    v293 = sub_22C369AB0(v266);
    sub_22C3871F8(v293, v267 + 1);
    v261 = v294;
  }

  *(v261 + 16) = v267 + 1;
  *(v261 + 8 * v267 + 32) = v265;
  sub_22C36A83C();
  v268 = swift_allocObject();
  *(v268 + 16) = 2112800;
  *(v268 + 24) = 0xE300000000000000;
  v269 = *(v261 + 24);
  if ((v267 + 2) > (v269 >> 1))
  {
    v295 = sub_22C369AB0(v269);
    sub_22C3871F8(v295, v267 + 2);
    v261 = v296;
  }

  sub_22C370730();
  if ((v267 + 3) > (v270 >> 1))
  {
    v297 = sub_22C369AB0(v270);
    sub_22C3871F8(v297, v267 + 3);
    v261 = v298;
  }

  *(v261 + 16) = v267 + 3;
  *(v261 + 8 * (v267 + 2) + 32) = v254;
  sub_22C36A83C();
  v271 = swift_allocObject();
  *(v271 + 16) = 0;
  *(v271 + 24) = 0xE000000000000000;
  v272 = *(v261 + 24);

  if ((v267 + 4) > (v272 >> 1))
  {
    sub_22C3871F8(v272 > 1, v267 + 4);
    v261 = v299;
  }

  sub_22C370730();
  v274 = v267 + 5;
  if ((v267 + 5) > (v273 >> 1))
  {
    v300 = sub_22C369AB0(v273);
    sub_22C3871F8(v300, v267 + 5);
    v261 = v301;
  }

  *(v261 + 16) = v274;
  *(v261 + 8 * (v267 + 4) + 32) = v258;
  sub_22C36A83C();
  v275 = swift_allocObject();
  *(v275 + 16) = 0;
  *(v275 + 24) = 0xE000000000000000;
  v276 = *(v261 + 24);

  if ((v267 + 6) > (v276 >> 1))
  {
    sub_22C3871F8(v276 > 1, v267 + 6);
    v261 = v302;
  }

  *(v261 + 16) = v267 + 6;
  *(v261 + 8 * v274 + 32) = v275;
  v277 = sub_22C3DB9B0(v261);

  sub_22C36DD28(v340, &qword_27D9BDBB0, &qword_22C91AC88);
  sub_22C369AEC();
  v229 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v278 = swift_allocObject();
  *(v278 + 16) = v277;
  *(v229 + 16) = v278;
  v279 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v231 = swift_allocBox();
  v233 = (v280 + *(v279 + 48));
  sub_22C542CD4(v243, v280, type metadata accessor for PromptTreeIdentifier);
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
LABEL_87:
  sub_22C369AEC();
  v281 = swift_allocObject();
  *(v281 + 16) = v229 | 0x6000000000000000;
  *v233 = v281;
  return v231 | 0x4000000000000000;
}

void sub_22C54072C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem(0);
  v54 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - v7;
  v9 = sub_22C901FAC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - v14;

  v17 = sub_22C53E3B4(v16);
  v18 = v17[2];
  v47 = 0;
  if (v18)
  {
    v19 = sub_22C628AF8(1);
    if (v20)
    {
      v21 = *(v17[7] + 8 * v19);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    if (v17[2] && (v22 = sub_22C628AF8(0), (v23 & 1) != 0))
    {
      v48 = *(v17[7] + 8 * v22);
    }

    else
    {
      v48 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
    v48 = MEMORY[0x277D84F90];
  }

  v24 = *(a3 + 16);
  v50 = v21;
  if (v24)
  {
    v53 = v8;
    v59 = MEMORY[0x277D84F90];
    sub_22C3B6EDC();
    v25 = v59;
    v58 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
    v26 = a3 + ((*(*(v58 - 8) + 80) + 32) & ~*(*(v58 - 8) + 80));
    v57 = *(*(v58 - 8) + 72);
    v27 = *(v10 + 16);
    v55 = (v10 + 32);
    v56 = v27;
    do
    {
      v56(v15, v26 + *(v58 + 20), v9);
      v59 = v25;
      v28 = *(v25 + 16);
      if (v28 >= *(v25 + 24) >> 1)
      {
        sub_22C3B6EDC();
        v25 = v59;
      }

      *(v25 + 16) = v28 + 1;
      (*(v10 + 32))(v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v28, v15, v9);
      v26 += v57;
      --v24;
    }

    while (v24);
    v8 = v53;
    v21 = v50;
  }

  sub_22C3ADC38();
  v30 = v29;
  v31 = 0;
  v55 = *(v21 + 16);
  v32 = v29 + 56;
  v58 = v10 + 16;
  v51 = MEMORY[0x277D84F90];
  v57 = v10 + 8;
  while (1)
  {
    if (v31 == v55)
    {

      v59 = v51;
      sub_22C3CE328(v48);
      return;
    }

    if (v31 >= *(v21 + 16))
    {
      break;
    }

    v33 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v34 = *(v54 + 72);
    v35 = (v31 + 1);
    sub_22C542C74(v21 + v33 + v34 * v31, v8, type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
    if (*(v30 + 16))
    {
      v52 = v34;
      v53 = v33;
      v56 = v35;
      sub_22C4E9D34(&qword_2814357B0, MEMORY[0x277D1C348]);
      v36 = v8;
      v37 = sub_22C909F7C();
      v38 = ~(-1 << *(v30 + 32));
      do
      {
        v39 = v37 & v38;
        if (((*(v32 + (((v37 & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v38)) & 1) == 0)
        {
          v8 = v36;
          v21 = v50;
          v35 = v56;
          goto LABEL_29;
        }

        (*(v10 + 16))(v13, *(v30 + 48) + *(v10 + 72) * v39, v9);
        sub_22C4E9D34(&qword_27D9BAA28, MEMORY[0x277D1C358]);
        v40 = sub_22C90A0BC();
        (*(v10 + 8))(v13, v9);
        v37 = v39 + 1;
      }

      while ((v40 & 1) == 0);
      v8 = v36;
      sub_22C542CD4(v36, v49, type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
      v41 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v41;
      v59 = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B71E0(0, *(v41 + 16) + 1, 1);
        v43 = v59;
      }

      v44 = v52;
      v46 = *(v43 + 16);
      v45 = *(v43 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_22C3B71E0(v45 > 1, v46 + 1, 1);
        v43 = v59;
      }

      *(v43 + 16) = v46 + 1;
      v51 = v43;
      sub_22C542CD4(v49, &v53[v43 + v46 * v44], type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
      v31 = v56;
      v21 = v50;
    }

    else
    {
LABEL_29:
      sub_22C542DA4(v8, type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem);
      v31 = v35;
    }
  }

  __break(1u);
}

uint64_t sub_22C540D38(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PromptTreeIdentifier(0);
  MEMORY[0x28223BE20](v3);
  v5 = (v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v34 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    sub_22C4055C0(v12 - 1);
    sub_22C542CD4(v9, v11, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
    v13 = sub_22C3A5908(&qword_27D9BC330, &qword_22C9126C8);
    v14 = swift_allocBox();
    v16 = v15;
    v34[1] = v3;
    v17 = *(v13 + 48);
    *v15 = 1;
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_22C912340;
    *(v18 + 32) = 1;
    *&v16[v17] = v18;
    v19 = *MEMORY[0x277D1D7E8];
    v20 = sub_22C902D0C();
    v21 = *(*(v20 - 8) + 104);
    v21(&v16[v17], v19, v20);
    *v5 = v14;
    v21(v5, *MEMORY[0x277D1D7E0], v20);
    type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
    swift_storeEnumTagMultiPayload();
    v22 = sub_22C901FAC();
    v23 = swift_allocBox();
    (*(*(v22 - 8) + 16))(v24, &v11[*(v6 + 20)], v22);
    v25 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
    *(v5 + v25) = v23;
    v21((v5 + v25), *MEMORY[0x277D1D798], v20);
    swift_storeEnumTagMultiPayload();
    v26 = swift_allocObject();
    sub_22C542DA4(v11, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
    *(v26 + 16) = 0;
    *(v26 + 24) = 0xE000000000000000;
    v27 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
    v28 = swift_allocBox();
    v30 = v29;
    v31 = *(v27 + 48);
    sub_22C542CD4(v5, v29, type metadata accessor for PromptTreeIdentifier);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    v32 = swift_allocObject();
    *(v32 + 16) = v26;
    *(v30 + v31) = v32;
    return v28 | 0x4000000000000000;
  }

  else
  {
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = 0xE000000000000000;
  }

  return result;
}

uint64_t sub_22C5410C4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v60 = a4;
  v59 = a1;
  v58 = type metadata accessor for PromptTreeIdentifier(0);
  MEMORY[0x28223BE20](v58);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C3A5908(&qword_27D9BDBB0, &qword_22C91AC88);
  v9 = MEMORY[0x28223BE20](v8);
  v61 = (&v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v57 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v57 - v14;
  sub_22C542C74(a2, &v57 - v14, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
  *&v15[*(v8 + 48)] = a3;
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  swift_storeEnumTagMultiPayload();
  v16 = sub_22C901FAC();
  v17 = swift_allocBox();
  v19 = v18;
  sub_22C542D34(v15, v13);

  v20 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  (*(*(v16 - 8) + 16))(v19, &v13[*(v20 + 20)], v16);
  sub_22C542DA4(v13, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
  v21 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
  *&v7[v21] = v17;
  v22 = *MEMORY[0x277D1D798];
  v23 = sub_22C902D0C();
  (*(*(v23 - 8) + 104))(&v7[v21], v22, v23);
  swift_storeEnumTagMultiPayload();
  v24 = *(v60 + 2) - 1;
  if (v24 > v59)
  {
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C919310;
    type metadata accessor for PromptTreeIdentifier.Label(0);
    v26 = swift_allocBox();
    sub_22C486784();
    *(inited + 32) = v26 | 0x2000000000000000;
    v27 = swift_allocObject();
    v62 = 8250;
    v63 = 0xE200000000000000;
    v60 = v7;
    *(v27 + 16) = sub_22C90A49C();
    *(v27 + 24) = v28;
    *(inited + 40) = v27;
    sub_22C542D34(v15, v13);
    *(inited + 48) = *&v13[*(v8 + 48)];
    v29 = swift_allocObject();
    v62 = 44;
    v63 = 0xE100000000000000;
    *(v29 + 16) = sub_22C90A49C();
    *(v29 + 24) = v30;
    *(inited + 56) = v29;
    v31 = v61;
    sub_22C542D34(v15, v61);

    v32 = *v31;

    sub_22C542DA4(v31, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
    v33 = sub_22C53E700(v32);

    *(inited + 64) = v33;
    v34 = swift_allocObject();
    v62 = 10;
    v63 = 0xE100000000000000;
    v7 = v60;
    *(v34 + 16) = sub_22C90A49C();
    *(v34 + 24) = v35;
    *(inited + 72) = v34;
    sub_22C542DA4(v13, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
    v36 = sub_22C3DB9B0(inited);
    swift_setDeallocating();
    sub_22C58FFB0();
    v37 = v15;
LABEL_6:
    sub_22C36DD28(v37, &qword_27D9BDBB0, &qword_22C91AC88);
    v47 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v48 = swift_allocObject();
    *(v48 + 16) = v36;
    *(v47 + 16) = v48;
    v49 = v47 | 0x6000000000000000;
    goto LABEL_7;
  }

  v38 = v8;
  v39 = v15;
  v40 = v61;
  if (v24 == v59)
  {
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    v41 = swift_initStackObject();
    *(v41 + 16) = xmmword_22C90D070;
    type metadata accessor for PromptTreeIdentifier.Label(0);
    v42 = swift_allocBox();
    sub_22C486784();
    *(v41 + 32) = v42 | 0x2000000000000000;
    v43 = swift_allocObject();
    v62 = 8250;
    v63 = 0xE200000000000000;
    *(v43 + 16) = sub_22C90A49C();
    *(v43 + 24) = v44;
    *(v41 + 40) = v43;
    sub_22C542D34(v39, v13);
    *(v41 + 48) = *&v13[*(v38 + 48)];
    sub_22C542D34(v39, v40);

    v45 = *v40;

    sub_22C542DA4(v40, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
    v46 = sub_22C53E700(v45);

    *(v41 + 56) = v46;
    sub_22C542DA4(v13, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
    v36 = sub_22C3DB9B0(v41);
    swift_setDeallocating();
    sub_22C58FFB0();
    v37 = v39;
    goto LABEL_6;
  }

  v49 = swift_allocObject();
  sub_22C36DD28(v39, &qword_27D9BDBB0, &qword_22C91AC88);
  *(v49 + 16) = 0;
  *(v49 + 24) = 0xE000000000000000;
LABEL_7:
  v50 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v51 = swift_allocBox();
  v53 = v52;
  v54 = *(v50 + 48);
  sub_22C542CD4(v7, v52, type metadata accessor for PromptTreeIdentifier);
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v55 = swift_allocObject();
  *(v55 + 16) = v49;
  *(v53 + v54) = v55;
  return v51 | 0x4000000000000000;
}

uint64_t sub_22C5417F8(uint64_t a1)
{
  sub_22C90B62C();
  MEMORY[0x2318B8B10](a1);
  return sub_22C90B66C();
}

uint64_t sub_22C541850(uint64_t a1)
{
  v2 = *v1;
  sub_22C90B62C();
  MEMORY[0x2318B8B10](v2);
  return sub_22C90B66C();
}

uint64_t sub_22C5418A0(uint64_t *a1)
{
  v2 = *(sub_22C901FAC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C2B8();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C541948(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22C541948(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_22C90B45C();
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
        sub_22C901FAC();
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22C901FAC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22C541D20(v8, v9, a1, v4);
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
    return sub_22C541A78(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C541A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22C901FAC();
  v9 = MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v45 = &v31 - v12;
  result = MEMORY[0x28223BE20](v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v36 = v19;
      v37 = a3;
      v34 = v21;
      v35 = v20;
      v22 = v19;
      do
      {
        v23 = v44;
        v24 = v42;
        v42(v44, v21, v8);
        v25 = v45;
        v24(v45, v22, v8);
        sub_22C4E9D34(&qword_27D9BC868, MEMORY[0x277D1C350]);
        v26 = sub_22C90A06C();
        v27 = *v18;
        (*v18)(v25, v8);
        result = v27(v23, v8);
        if ((v26 & 1) == 0)
        {
          break;
        }

        if (!v40)
        {
          __break(1u);
          return result;
        }

        v28 = *v39;
        v29 = v41;
        (*v39)(v41, v21, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v28)(v22, v29, v8);
        v22 += v38;
        v21 += v38;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v37 + 1;
      v19 = v36 + v32;
      v20 = v35 - 1;
      v21 = v34 + v32;
      if (v37 + 1 != v33)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C541D20(unint64_t *a1, uint64_t a2, char **a3, unint64_t a4)
{
  v5 = v4;
  v123 = a1;
  v8 = sub_22C901FAC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v11 = MEMORY[0x28223BE20](v10);
  v136 = &v120 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v142 = &v120 - v14;
  MEMORY[0x28223BE20](v13);
  v141 = &v120 - v16;
  v133 = v9;
  v134 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_99:
    v143 = *v123;
    if (!v143)
    {
      goto LABEL_141;
    }

    a4 = v5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_101:
      v112 = v19 + 16;
      v113 = *(v19 + 2);
      while (v113 >= 2)
      {
        if (!*v134)
        {
          goto LABEL_138;
        }

        v114 = a4;
        v115 = v19;
        v116 = &v19[16 * v113];
        v117 = *v116;
        a4 = &v112[2 * v113];
        v118 = *(a4 + 8);
        sub_22C54272C(&(*v134)[v9[9] * *v116], &(*v134)[v9[9] * *a4], &(*v134)[v9[9] * v118], v143);
        v9 = v114;
        if (v114)
        {
          break;
        }

        if (v118 < v117)
        {
          goto LABEL_126;
        }

        if (v113 - 2 >= *v112)
        {
          goto LABEL_127;
        }

        *v116 = v117;
        *(v116 + 1) = v118;
        v119 = *v112 - v113;
        if (*v112 < v113)
        {
          goto LABEL_128;
        }

        v113 = *v112 - 1;
        sub_22C56BFF0((a4 + 16), v119, a4);
        *v112 = v113;
        a4 = 0;
        v9 = v133;
        v19 = v115;
      }

LABEL_109:

      return;
    }

LABEL_135:
    v19 = sub_22C56BFD8();
    goto LABEL_101;
  }

  v121 = a4;
  v18 = 0;
  v139 = (v9 + 1);
  v140 = v9 + 2;
  v138 = (v9 + 4);
  v19 = MEMORY[0x277D84F90];
  v126 = v15;
  v143 = v8;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v125 = v18;
    if (v18 + 1 < v17)
    {
      v127 = v5;
      v122 = v19;
      v22 = v18;
      v23 = *v134;
      v24 = v9[9];
      a4 = &(*v134)[v24 * v21];
      v25 = v9[2];
      v132 = v18 + 1;
      v26 = v141;
      v135 = v17;
      v25(v141, a4, v8);
      v27 = &v23[v24 * v22];
      v28 = v8;
      v29 = v142;
      v130 = v25;
      v25(v142, v27, v28);
      v129 = sub_22C4E9D34(&qword_27D9BC868, MEMORY[0x277D1C350]);
      LODWORD(v131) = sub_22C90A06C();
      v30 = v9[1];
      (v30)(v29, v28);
      v31 = v26;
      v21 = v132;
      v128 = v30;
      (v30)(v31, v28);
      v32 = v135;
      v33 = (v125 + 2);
      v137 = v24;
      v34 = &v23[v24 * (v125 + 2)];
      while (1)
      {
        v9 = v33;
        v35 = v21 + 1;
        if (v35 >= v32)
        {
          break;
        }

        v36 = v141;
        v37 = v143;
        v38 = v130;
        (v130)(v141, v34, v143);
        v39 = v35;
        v40 = v142;
        v38(v142, a4, v37);
        v41 = sub_22C90A06C() & 1;
        v42 = v40;
        v21 = v39;
        v43 = v128;
        (v128)(v42, v37);
        (v43)(v36, v37);
        v32 = v135;
        v34 += v137;
        a4 += v137;
        v33 = (v9 + 1);
        if ((v131 & 1) != v41)
        {
          goto LABEL_9;
        }
      }

      v21 = v32;
LABEL_9:
      if (v131)
      {
        v20 = v125;
        if (v21 < v125)
        {
          goto LABEL_132;
        }

        if (v125 >= v21)
        {
          v9 = v133;
          v19 = v122;
          v8 = v143;
          v5 = v127;
        }

        else
        {
          if (v32 >= v9)
          {
            v44 = v9;
          }

          else
          {
            v44 = v32;
          }

          v45 = v137 * (v44 - 1);
          v46 = v137 * v44;
          v47 = v125 * v137;
          v48 = v21;
          v49 = v125;
          v5 = v127;
          do
          {
            if (v49 != --v48)
            {
              v127 = v5;
              v50 = *v134;
              if (!*v134)
              {
                goto LABEL_139;
              }

              a4 = &v50[v47];
              v51 = v143;
              v135 = *v138;
              (v135)(v126, &v50[v47], v143);
              v52 = v47 < v45 || a4 >= &v50[v46];
              if (v52)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v47 != v45)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              (v135)(&v50[v45], v126, v51);
              v5 = v127;
              v20 = v125;
            }

            ++v49;
            v45 -= v137;
            v46 -= v137;
            v47 += v137;
          }

          while (v49 < v48);
          v9 = v133;
          v19 = v122;
          v8 = v143;
        }
      }

      else
      {
        v9 = v133;
        v19 = v122;
        v8 = v143;
        v5 = v127;
        v20 = v125;
      }
    }

    v53 = v134[1];
    if (v21 < v53)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_131;
      }

      if (v21 - v20 < v121)
      {
        break;
      }
    }

LABEL_47:
    if (v21 < v20)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C590218(0, *(v19 + 2) + 1, 1, v19);
      v19 = v110;
    }

    v70 = *(v19 + 2);
    v69 = *(v19 + 3);
    a4 = v70 + 1;
    if (v70 >= v69 >> 1)
    {
      sub_22C590218(v69 > 1, v70 + 1, 1, v19);
      v19 = v111;
    }

    *(v19 + 2) = a4;
    v71 = v19 + 32;
    v72 = &v19[16 * v70 + 32];
    *v72 = v20;
    *(v72 + 1) = v21;
    v137 = *v123;
    if (!v137)
    {
      goto LABEL_140;
    }

    v132 = v21;
    if (v70)
    {
      while (1)
      {
        v73 = a4 - 1;
        v74 = &v71[16 * a4 - 16];
        v75 = &v19[16 * a4];
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v76 = *(v19 + 4);
          v77 = *(v19 + 5);
          v86 = __OFSUB__(v77, v76);
          v78 = v77 - v76;
          v79 = v86;
LABEL_67:
          if (v79)
          {
            goto LABEL_117;
          }

          v91 = *v75;
          v90 = *(v75 + 1);
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_120;
          }

          v95 = *(v74 + 1);
          v96 = v95 - *v74;
          if (__OFSUB__(v95, *v74))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v93, v96))
          {
            goto LABEL_125;
          }

          if (v93 + v96 >= v78)
          {
            if (v78 < v96)
            {
              v73 = a4 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (a4 < 2)
        {
          goto LABEL_119;
        }

        v98 = *v75;
        v97 = *(v75 + 1);
        v86 = __OFSUB__(v97, v98);
        v93 = v97 - v98;
        v94 = v86;
LABEL_82:
        if (v94)
        {
          goto LABEL_122;
        }

        v100 = *v74;
        v99 = *(v74 + 1);
        v86 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v86)
        {
          goto LABEL_124;
        }

        if (v101 < v93)
        {
          goto LABEL_96;
        }

LABEL_89:
        if (v73 - 1 >= a4)
        {
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
          goto LABEL_134;
        }

        if (!*v134)
        {
          goto LABEL_137;
        }

        v105 = v19;
        v106 = &v71[16 * v73 - 16];
        a4 = *v106;
        v107 = &v71[16 * v73];
        v108 = *(v107 + 1);
        sub_22C54272C(&(*v134)[v9[9] * *v106], &(*v134)[v9[9] * *v107], &(*v134)[v9[9] * v108], v137);
        if (v5)
        {
          goto LABEL_109;
        }

        if (v108 < a4)
        {
          goto LABEL_112;
        }

        v9 = *(v105 + 2);
        if (v73 > v9)
        {
          goto LABEL_113;
        }

        *v106 = a4;
        v106[1] = v108;
        if (v73 >= v9)
        {
          goto LABEL_114;
        }

        a4 = v9 - 1;
        sub_22C56BFF0(v107 + 16, v9 - v73 - 1, &v71[16 * v73]);
        v19 = v105;
        *(v105 + 2) = v9 - 1;
        v109 = v9 > 2;
        v9 = v133;
        if (!v109)
        {
          goto LABEL_96;
        }
      }

      v80 = &v71[16 * a4];
      v81 = *(v80 - 8);
      v82 = *(v80 - 7);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_115;
      }

      v85 = *(v80 - 6);
      v84 = *(v80 - 5);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_116;
      }

      v87 = *(v75 + 1);
      v88 = v87 - *v75;
      if (__OFSUB__(v87, *v75))
      {
        goto LABEL_118;
      }

      v86 = __OFADD__(v78, v88);
      v89 = v78 + v88;
      if (v86)
      {
        goto LABEL_121;
      }

      if (v89 >= v83)
      {
        v103 = *v74;
        v102 = *(v74 + 1);
        v86 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v86)
        {
          goto LABEL_129;
        }

        if (v78 < v104)
        {
          v73 = a4 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

LABEL_96:
    v17 = v134[1];
    v18 = v132;
    v8 = v143;
    if (v132 >= v17)
    {
      goto LABEL_99;
    }
  }

  v54 = (v20 + v121);
  if (__OFADD__(v20, v121))
  {
    goto LABEL_133;
  }

  if (v54 >= v53)
  {
    v54 = v134[1];
  }

  if (v54 < v20)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v21 == v54)
  {
    goto LABEL_47;
  }

  v122 = v19;
  v127 = v5;
  v128 = v54;
  v55 = *v134;
  v56 = v9[9];
  v137 = v9[2];
  v57 = &v55[v56 * (v21 - 1)];
  v58 = -v56;
  v59 = (v20 - v21);
  v135 = v55;
  v124 = v56;
  a4 = &v55[v21 * v56];
LABEL_40:
  v131 = v57;
  v132 = v21;
  v129 = a4;
  v130 = v59;
  v60 = v57;
  while (1)
  {
    v61 = v141;
    v62 = v137;
    (v137)(v141, a4, v8);
    v63 = v142;
    v62(v142, v60, v143);
    sub_22C4E9D34(&qword_27D9BC868, MEMORY[0x277D1C350]);
    v64 = sub_22C90A06C();
    v65 = *v139;
    v66 = v63;
    v8 = v143;
    (*v139)(v66, v143);
    v65(v61, v8);
    if ((v64 & 1) == 0)
    {
LABEL_45:
      v21 = v132 + 1;
      v57 = &v131[v124];
      v59 = v130 - 1;
      a4 = v129 + v124;
      if ((v132 + 1) == v128)
      {
        v21 = v128;
        v5 = v127;
        v9 = v133;
        v19 = v122;
        v20 = v125;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v135)
    {
      break;
    }

    v67 = *v138;
    v68 = v136;
    (*v138)(v136, a4, v8);
    swift_arrayInitWithTakeFrontToBack();
    v67(v60, v68, v8);
    v60 += v58;
    a4 += v58;
    v52 = __CFADD__(v59++, 1);
    if (v52)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

uint64_t sub_22C54272C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v63 = a4;
  v7 = sub_22C901FAC();
  v8 = MEMORY[0x28223BE20](v7);
  v61 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v60 = &v51 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v15 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v18 = (a2 - a1) / v14;
  v66 = a1;
  v65 = v63;
  v58 = (v11 + 8);
  v59 = (v11 + 16);
  v19 = v14;
  v20 = v16 / v14;
  if (v18 >= v16 / v14)
  {
    v35 = v63;
    sub_22C3D735C(a2, v16 / v14, v63);
    v36 = v35 + v20 * v19;
    v37 = -v19;
    v38 = v36;
    v54 = -v19;
    v55 = a1;
LABEL_36:
    v56 = a2;
    v57 = a2 + v37;
    v39 = a3;
    v52 = v38;
    while (1)
    {
      if (v36 <= v63)
      {
        v66 = a2;
        v64 = v38;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v53 = v38;
      v62 = v39 + v37;
      v40 = v36 + v37;
      v41 = v36;
      v42 = v60;
      v43 = *v59;
      (*v59)(v60, v40, v7);
      v44 = v61;
      v43(v61, v57, v7);
      sub_22C4E9D34(&qword_27D9BC868, MEMORY[0x277D1C350]);
      LOBYTE(v43) = sub_22C90A06C();
      v45 = *v58;
      (*v58)(v44, v7);
      v45(v42, v7);
      if (v43)
      {
        v36 = v41;
        a3 = v62;
        if (v39 < v56 || v62 >= v56)
        {
          a2 = v57;
          swift_arrayInitWithTakeFrontToBack();
          v38 = v53;
          v37 = v54;
          a1 = v55;
        }

        else
        {
          v49 = v53;
          v37 = v54;
          v38 = v53;
          v15 = v39 == v56;
          v50 = v57;
          a2 = v57;
          a1 = v55;
          if (!v15)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v50;
            v38 = v49;
          }
        }

        goto LABEL_36;
      }

      v46 = v62;
      if (v39 < v41 || v62 >= v41)
      {
        swift_arrayInitWithTakeFrontToBack();
        v39 = v46;
        v36 = v40;
        v38 = v40;
        a1 = v55;
        a2 = v56;
        v37 = v54;
      }

      else
      {
        v38 = v40;
        v15 = v41 == v39;
        v39 = v62;
        v36 = v40;
        a1 = v55;
        a2 = v56;
        v37 = v54;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v39 = v46;
          v36 = v40;
          v38 = v40;
        }
      }
    }

    v66 = a2;
    v64 = v52;
  }

  else
  {
    v21 = v63;
    sub_22C3D735C(a1, (a2 - a1) / v14, v63);
    v57 = v21 + v18 * v19;
    v64 = v57;
    v22 = v19;
    v62 = a3;
    while (v63 < v57 && a2 < a3)
    {
      v24 = a1;
      v25 = v60;
      v26 = *v59;
      (*v59)(v60, a2, v7);
      v27 = a2;
      v28 = v61;
      v26(v61, v63, v7);
      sub_22C4E9D34(&qword_27D9BC868, MEMORY[0x277D1C350]);
      v29 = sub_22C90A06C();
      v30 = *v58;
      (*v58)(v28, v7);
      v30(v25, v7);
      if (v29)
      {
        a2 = v27 + v22;
        v31 = v24;
        if (v24 < v27 || v24 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v62;
        }

        else
        {
          a3 = v62;
          if (v24 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v33 = v63 + v22;
        v31 = v24;
        if (v24 < v63 || v24 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v27;
          a3 = v62;
        }

        else
        {
          a3 = v62;
          a2 = v27;
          if (v24 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v65 = v33;
        v63 = v33;
      }

      a1 = v31 + v22;
      v66 = a1;
    }
  }

LABEL_58:
  sub_22C8381A0(&v66, &v65, &v64);
  return 1;
}

uint64_t sub_22C542C74(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C542CD4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22C542D34(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BDBB0, &qword_22C91AC88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C542DA4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_22C542E0C(uint64_t a1)
{
  result = sub_22C48A760();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C542E38()
{
  result = qword_27D9BDBC0;
  if (!qword_27D9BDBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDBC0);
  }

  return result;
}

uint64_t sub_22C542EF0(uint64_t a1)
{
  result = sub_22C542F8C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FullPlannerPreferences(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22C542F8C()
{
  result = qword_27D9BDBD8;
  if (!qword_27D9BDBD8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D9BDBD8);
  }

  return result;
}

uint64_t sub_22C542FE8(uint64_t a1)
{
  v2 = sub_22C54CDE0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C543024(uint64_t a1)
{
  v2 = sub_22C54CDE0();

  return MEMORY[0x28211F4A8](a1, v2);
}

void sub_22C54307C(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v192 = a4;
  v205 = a3;
  v5 = sub_22C3A5908(&qword_27D9BD980, &qword_22C919DC0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v7);
  sub_22C36D234(v187 - v8);
  v201 = sub_22C3A5908(&qword_27D9BD990, qword_22C919DD0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v9);
  sub_22C36D234(v187 - v10);
  sub_22C901FAC();
  sub_22C369824();
  v217 = v11;
  v218 = v12;
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  sub_22C36D234(v14 - v13);
  v15 = type metadata accessor for ContextEventPromptGenerator_v5_0(0);
  v16 = sub_22C369914(v15);
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v215 = v18 - v17;
  v198 = sub_22C9063DC();
  sub_22C369824();
  v196 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v21);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v22);
  sub_22C36D234(v187 - v23);
  v24 = sub_22C3A5908(&qword_27D9BDBE0, &qword_22C9275D0);
  v25 = sub_22C369914(v24);
  MEMORY[0x28223BE20](v25);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v26);
  v28 = v187 - v27;
  v220 = sub_22C90399C();
  sub_22C369824();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  sub_22C369838();
  v34 = v33 - v32;
  v35 = sub_22C9081CC();
  sub_22C369824();
  MEMORY[0x28223BE20](v36);
  sub_22C3698E4();
  v216 = v37;
  MEMORY[0x28223BE20](v38);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v39);
  sub_22C3698D4();
  v41 = MEMORY[0x28223BE20](v40);
  v43 = v187 - v42;
  v44 = *(a1 + 16);
  v219 = v41;
  v197 = v45;
  v213 = v44;
  v214 = v5;
  v188 = a1;
  if (v44)
  {
    sub_22C36BA94();
    v47 = a1 + v46;
    v210 = *(v48 + 56);
    v211 = v49;
    v209 = v30 + 8;
    v221 = MEMORY[0x277D84F90];
    v212 = v48;
    v208 = (v48 - 8);
    v199 = v34;
    do
    {
      v50 = v5;
      v211(v43, v47, v35);
      sub_22C9081AC();
      sub_22C90397C();
      v51 = v34;
      v52 = sub_22C9038BC();
      if (sub_22C370B74(v28, 1, v52) == 1)
      {
        sub_22C36DD28(v28, &qword_27D9BDBE0, &qword_22C9275D0);
        v53 = sub_22C389004();
        v54(v53);
        (*v208)(v43, v35);
        v34 = v51;
        v5 = v50;
      }

      else
      {
        v55 = v200;
        sub_22C3A7214();
        LODWORD(v207) = sub_22C90385C();
        sub_22C36BBA8();
        (*(v56 + 8))(v55, v52);
        sub_22C36DD28(v28, &qword_27D9BDBE0, &qword_22C9275D0);
        v57 = sub_22C389004();
        v58(v57);
        (*v208)(v43, v35);
        v59 = v221;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_22C36D270();
          sub_22C592364(v62, v63, v64, v59);
          v59 = v65;
        }

        v61 = *(v59 + 16);
        v60 = *(v59 + 24);
        if (v61 >= v60 >> 1)
        {
          v66 = sub_22C369AB0(v60);
          sub_22C592364(v66, v61 + 1, 1, v59);
          v59 = v67;
        }

        *(v59 + 16) = v61 + 1;
        v221 = v59;
        *(v59 + v61 + 32) = v207 & 1;
        v35 = v219;
        v5 = v214;
        v34 = v199;
      }

      v47 += v210;
      --v44;
    }

    while (v44);
  }

  else
  {
    v221 = MEMORY[0x277D84F90];
  }

  v68 = sub_22C8B5310(1, v221);

  LODWORD(v211) = v68;
  v69 = v197;
  v70 = v188;
  v71 = v213;
  if (v68)
  {
    v72 = v187[1];
    sub_22C903F7C();
    v73 = sub_22C9063CC();
    v74 = sub_22C90AADC();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      v69 = v197;
      sub_22C3699EC();
    }

    (*(v196 + 8))(v72, v198);
  }

  sub_22C54CA2C();
  v76 = 0;
  v220 = (v69 + 8);
  v221 = v69 + 16;
  v210 = v69 + 32;
  v212 = MEMORY[0x277D84F90];
  v77 = v193;
LABEL_18:
  v78 = v219;
  while (v71 != v76)
  {
    v79 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v80 = *(v69 + 72);
    (*(v69 + 16))(v77, v70 + v79 + v80 * v76, v78);
    if (sub_22C544484(v77))
    {
      v81 = *v210;
      (*v210)(v194, v77, v78);
      v82 = v212;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v223[0] = v82;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B6170(0, *(v82 + 16) + 1, 1);
        v77 = v193;
        v82 = v223[0];
      }

      v85 = *(v82 + 16);
      v84 = *(v82 + 24);
      if (v85 >= v84 >> 1)
      {
        v86 = sub_22C369AB0(v84);
        sub_22C3B6170(v86, v85 + 1, 1);
        v77 = v193;
        v82 = v223[0];
      }

      ++v76;
      *(v82 + 16) = v85 + 1;
      v212 = v82;
      v81((v82 + v79 + v85 * v80), v194, v219);
      v71 = v213;
      v5 = v214;
      v69 = v197;
      goto LABEL_18;
    }

    (v220->isa)(v77, v78);
    ++v76;
    v71 = v213;
  }

  sub_22C54CA84(v215, type metadata accessor for ContextEventPromptGenerator_v5_0);
  v87 = v189;
  sub_22C903F7C();
  v88 = v212;

  v89 = sub_22C9063CC();
  v90 = sub_22C90AACC();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 134217984;
    *(v91 + 4) = *(v88 + 16);

    _os_log_impl(&dword_22C366000, v89, v90, "Processing %ld contextual entities.", v91, 0xCu);
    sub_22C3699EC();
  }

  else
  {
  }

  v92 = v191;
  v93 = v190;
  v94 = v196 + 8;
  v194 = *(v196 + 8);
  v194(v87, v198);
  v95 = v93;
  sub_22C54BB58(v88);
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v102 = v95;
  sub_22C903F7C();

  v103 = v99;
  v104 = sub_22C9063CC();
  v105 = sub_22C90AACC();

  v199 = v97;

  LODWORD(v193) = v105;
  v106 = os_log_type_enabled(v104, v105);
  v212 = v103;
  v213 = v101;
  if (v106)
  {
    v107 = v199;
    v191 = v104;
    v108 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    v223[0] = v189;
    v109 = v108;
    *v108 = 136315138;
    v110 = *(v101 + 16);
    v111 = v198;
    v190 = v109;
    if (v110)
    {
      v188 = v102;
      v224 = MEMORY[0x277D84F90];

      v200 = v110;
      sub_22C3B6D68(0, v110, 0);
      v112 = v200;
      v113 = 0;
      v114 = v224;
      v207 = v101 + 32;
      v215 = v218 + 32;
      v196 = v94;
      do
      {
        v115 = *(v207 + 8 * v113);
        v116 = *(v115 + 16);
        if (v116)
        {
          v210 = v113;
          v209 = v114;
          v222 = MEMORY[0x277D84F90];

          sub_22C3B6EDC();
          v117 = v222;
          sub_22C36BA94();
          v208 = v115;
          v119 = v115 + v118;
          v121 = *(v120 + 72);
          v122 = *(v120 + 16);
          do
          {
            v123 = v216;
            v124 = v219;
            v122(v216, v119, v219);
            sub_22C9068FC();
            (v220->isa)(v123, v124);
            v222 = v117;
            v126 = *(v117 + 16);
            v125 = *(v117 + 24);
            if (v126 >= v125 >> 1)
            {
              sub_22C369AB0(v125);
              sub_22C3B6EDC();
              v117 = v222;
            }

            *(v117 + 16) = v126 + 1;
            sub_22C36BA94();
            (*(v128 + 32))(v117 + v127 + *(v128 + 72) * v126, v92);
            v119 += v121;
            --v116;
          }

          while (v116);

          v101 = v213;
          v5 = v214;
          v111 = v198;
          v112 = v200;
          v114 = v209;
          v113 = v210;
        }

        else
        {
          v117 = MEMORY[0x277D84F90];
        }

        v224 = v114;
        v130 = *(v114 + 16);
        v129 = *(v114 + 24);
        if (v130 >= v129 >> 1)
        {
          v131 = sub_22C369AB0(v129);
          v210 = v132;
          sub_22C3B6D68(v131, v130 + 1, 1);
          v113 = v210;
          v112 = v200;
          v114 = v224;
        }

        ++v113;
        *(v114 + 16) = v130 + 1;
        *(v114 + 8 * v130 + 32) = v117;
      }

      while (v113 != v112);
      v102 = v188;
      v135 = v199;
      v103 = v212;
    }

    else
    {
      v135 = v107;

      v114 = MEMORY[0x277D84F90];
    }

    sub_22C54C3D8(v135, v103, v114);

    v136 = sub_22C36BA00();
    v139 = sub_22C36F9F4(v136, v137, v138);
    v103 = v212;

    v140 = v190;
    *(v190 + 1) = v139;
    v141 = v191;
    _os_log_impl(&dword_22C366000, v191, v193, "Grouped contextual entities by type: %s", v140, 0xCu);
    sub_22C36FF94(v189);
    sub_22C3699EC();
    sub_22C3699EC();

    v133 = v195;
    v134 = v111;
  }

  else
  {

    v133 = v195;
    v134 = v198;
  }

  v194(v133, v134);
  v142 = 0;
  v220 = v192[4];
  v219 = MEMORY[0x277D84F90];
  v221 = *(v101 + 16);
  while (v142 < v221)
  {
    if (v142 >= *(v103 + 16))
    {
      __break(1u);
LABEL_73:
      __break(1u);
      return;
    }

    v143 = *(v5 + 48);
    sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
    v144 = v204;
    sub_22C3A7214();
    if (v142 >= *(v101 + 16))
    {
      goto LABEL_73;
    }

    *(v144 + v143) = *(v101 + 8 * v142 + 32);
    v145 = v102;
    v146 = v203;
    sub_22C407C2C();
    v147 = *(v5 + 48);
    v148 = *(v201 + 48);
    v149 = v202;
    sub_22C407C2C();
    v150 = *(v146 + v147);
    *(v149 + v148) = v150;

    v151 = sub_22C545710(v149, v150, v206, v205, 0, v220, v211 & 1);
    v102 = v145;
    if (v145)
    {

      sub_22C379838();

      sub_22C36DD28(v149, &qword_27D9BD990, qword_22C919DD0);

      return;
    }

    v152 = v151;
    ++v142;
    sub_22C36DD28(v149, &qword_27D9BD990, qword_22C919DD0);
    v101 = v213;
    v5 = v214;
    v103 = v212;
    if ((~v152 & 0xF000000000000007) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C36D270();
        sub_22C591324();
        v219 = v157;
      }

      v154 = *(v219 + 16);
      v153 = *(v219 + 24);
      v155 = v154 + 1;
      if (v154 >= v153 >> 1)
      {
        sub_22C369AB0(v153);
        v218 = v158;
        sub_22C591324();
        v155 = v218;
        v219 = v159;
      }

      v156 = v219;
      *(v219 + 16) = v155;
      *(v156 + 8 * v154 + 32) = v152;
    }
  }

  v160 = v219;
  if (*(v219 + 16))
  {
    v161 = v192;
    v162 = v192[8];
    v163 = v192[9];
    sub_22C374168(v192 + 5, v162);
    v164 = sub_22C3DB9B0(v160);

    v165 = swift_allocObject();
    *(v165 + 16) = xmmword_22C911490;
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v166 = swift_allocObject();
    *(v166 + 16) = v164;
    *(v165 + 32) = v166;
    v167 = sub_22C529D00(8202, 0xE200000000000000, v165 | 0x8000000000000000);

    sub_22C369AEC();
    v168 = swift_allocObject();
    sub_22C369AEC();
    v169 = swift_allocObject();
    *(v169 + 16) = v167;
    *(v168 + 16) = v169;
    v170 = sub_22C457454(5, v168 | 0x6000000000000000, v162, v163);

    if (v206[39].isa)
    {
      v171 = v161[8];
      v172 = v161[9];
      sub_22C374168(v161 + 5, v171);
      sub_22C36A83C();
      v173 = swift_allocObject();
      strcpy(v223, "get_context()");
      HIWORD(v223[1]) = -4864;
      *(v173 + 16) = sub_22C90A49C();
      *(v173 + 24) = v174;
      v175 = sub_22C457454(1, v173, v171, v172);

      sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
      v176 = swift_allocObject();
      sub_22C37A10C(v176, xmmword_22C90F800);
      if (v177)
      {
        v178 = 1;
      }

      else
      {
        v178 = 0;
      }

      sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F870;
      *(inited + 32) = v175;
      *(inited + 40) = v170;

      v180 = sub_22C3DB9B0(inited);
      swift_setDeallocating();
      sub_22C58FFB0();
      sub_22C369AEC();
      v181 = swift_allocObject();
      sub_22C369AEC();
      v182 = swift_allocObject();
      *(v182 + 16) = v180;
      *(v181 + 16) = v182;
      sub_22C36A83C();
      *(swift_allocObject() + 16) = v178;
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v183 = swift_allocObject();
      *(v183 + 16) = v181 | 0x6000000000000000;
      sub_22C37F7E8(v183);
      sub_22C379838();
    }

    else
    {
      sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
      v184 = swift_allocObject();
      sub_22C37A10C(v184, xmmword_22C90F800);
      if (v177)
      {
        v185 = 1;
      }

      else
      {
        v185 = 0;
      }

      sub_22C36A83C();
      *(swift_allocObject() + 16) = v185;
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v186 = swift_allocObject();
      *(v186 + 16) = v170;
      sub_22C37F7E8(v186);
      sub_22C379838();
    }
  }

  else
  {

    sub_22C379838();
  }
}

uint64_t sub_22C544484(uint64_t a1)
{
  v2 = sub_22C901FAC();
  v148 = *(v2 - 8);
  v149 = v2;
  MEMORY[0x28223BE20](v2);
  v147 = &v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C9081CC();
  v152 = *(v4 - 8);
  v153 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v156 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v150 = &v127 - v8;
  MEMORY[0x28223BE20](v7);
  v145 = &v127 - v9;
  v10 = sub_22C9063DC();
  v154 = *(v10 - 8);
  v155 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v157 = (&v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v146 = &v127 - v14;
  MEMORY[0x28223BE20](v13);
  v133 = &v127 - v15;
  v135 = sub_22C90993C();
  v132 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v129 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_22C3A5908(&qword_27D9BDC18, &unk_22C91ADC0);
  MEMORY[0x28223BE20](v134);
  v139 = &v127 - v17;
  v18 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v131 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v137 = &v127 - v22;
  MEMORY[0x28223BE20](v21);
  v138 = &v127 - v23;
  v24 = sub_22C90931C();
  v141 = *(v24 - 8);
  v142 = v24;
  MEMORY[0x28223BE20](v24);
  v140 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22C90926C();
  v143 = *(v26 - 8);
  v144 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v128 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v130 = &v127 - v30;
  MEMORY[0x28223BE20](v29);
  v136 = &v127 - v31;
  v32 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v127 - v33;
  v35 = sub_22C90399C();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v127 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v127 - v40;
  v42 = sub_22C9093BC();
  v151 = *(v42 - 8);
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v127 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v47 = &v127 - v46;
  v158 = a1;
  sub_22C9081AC();
  sub_22C90391C();
  v50 = *(v36 + 8);
  v48 = (v36 + 8);
  v49 = v50;
  (v50)(v41, v35);
  if (sub_22C370B74(v34, 1, v42) == 1)
  {
    v145 = v49;
    v146 = v48;
    v151 = v35;
    sub_22C36DD28(v34, &qword_27D9BB908, &qword_22C910960);
    sub_22C903F7C();
    v51 = v152;
    v52 = v153;
    v53 = *(v152 + 16);
    v54 = v150;
    v55 = v158;
    v53(v150, v158, v153);
    v53(v156, v55, v52);
    v56 = sub_22C9063CC();
    v57 = sub_22C90AACC();
    v58 = v51;
    if (os_log_type_enabled(v56, v57))
    {
      v59 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v159 = v158;
      *v59 = 136315394;
      v60 = v147;
      LODWORD(v144) = v57;
      sub_22C9068FC();
      sub_22C54CC10(&qword_27D9BAA48, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
      v61 = v54;
      v62 = v149;
      v63 = sub_22C90B47C();
      v65 = v64;
      (*(v148 + 8))(v60, v62);
      v66 = *(v58 + 8);
      v66(v61, v52);
      v67 = sub_22C36F9F4(v63, v65, &v159);

      *(v59 + 4) = v67;
      *(v59 + 12) = 2080;
      v68 = v156;
      sub_22C9081AC();
      v69 = sub_22C90390C();
      v71 = v70;
      (v145)(v39, v151);
      v66(v68, v52);
      v72 = sub_22C36F9F4(v69, v71, &v159);

      *(v59 + 14) = v72;
      _os_log_impl(&dword_22C366000, v56, v144, "No typedValue found on retrievedContext. StatementID: %s, Identifier: %s", v59, 0x16u);
      v73 = v158;
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v73, -1, -1);
      MEMORY[0x2318B9880](v59, -1, -1);
    }

    else
    {

      v92 = *(v51 + 8);
      v92(v156, v52);
      v92(v54, v52);
    }

    (*(v154 + 8))(v157, v155);
    return 0;
  }

  v74 = v151;
  (*(v151 + 32))(v47, v34, v42);
  sub_22C9081AC();
  v75 = sub_22C50D9B8();
  (v49)(v39, v35);
  v76 = v74;
  if ((v75 & 1) == 0)
  {
    v127 = v47;
    v94 = v146;
    sub_22C903F7C();
    v95 = v152;
    v96 = v153;
    v97 = v145;
    (*(v152 + 16))(v145, v158, v153);
    v98 = sub_22C9063CC();
    v99 = sub_22C90AACC();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v159 = v157;
      *v100 = 136315138;
      v101 = v147;
      sub_22C9068FC();
      sub_22C54CC10(&qword_27D9BAA48, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
      v102 = v149;
      v103 = sub_22C90B47C();
      v158 = v42;
      v105 = v104;
      (*(v148 + 8))(v101, v102);
      (*(v95 + 8))(v97, v96);
      v106 = sub_22C36F9F4(v103, v105, &v159);

      *(v100 + 4) = v106;
      _os_log_impl(&dword_22C366000, v98, v99, "Entity %s should not be rendered in the prompt. Skipping rendering.", v100, 0xCu);
      v107 = v157;
      sub_22C36FF94(v157);
      MEMORY[0x2318B9880](v107, -1, -1);
      MEMORY[0x2318B9880](v100, -1, -1);

      (*(v154 + 8))(v146, v155);
      (*(v151 + 8))(v127, v158);
    }

    else
    {

      (*(v95 + 8))(v97, v96);
      (*(v154 + 8))(v94, v155);
      (*(v74 + 8))(v127, v42);
    }

    return 0;
  }

  (*(v74 + 16))(v45, v47, v42);
  if ((*(v74 + 88))(v45, v42) == *MEMORY[0x277D72A58])
  {
    (*(v74 + 96))(v45, v42);
    v77 = swift_projectBox();
    v79 = v140;
    v78 = v141;
    v80 = v142;
    (*(v141 + 16))(v140, v77, v142);
    if ((*(v78 + 88))(v79, v80) == *MEMORY[0x277D72970])
    {
      v127 = v47;
      (*(v78 + 96))(v79, v80);
      v81 = v136;
      (*(v143 + 32))(v136, v79, v144);

      v82 = v138;
      sub_22C90925C();
      v83 = v137;
      v84 = v135;
      sub_22C36C640(v137, 1, 1, v135);
      v85 = *(v134 + 48);
      v86 = v139;
      sub_22C3A7214();
      sub_22C3A7214();
      if (sub_22C370B74(v86, 1, v84) == 1)
      {
        sub_22C36DD28(v83, &qword_27D9BC390, &qword_22C912AC0);
        v87 = v139;
        sub_22C36DD28(v82, &qword_27D9BC390, &qword_22C912AC0);
        v88 = sub_22C370B74(v87 + v85, 1, v84);
        v89 = v127;
        v90 = v143;
        if (v88 == 1)
        {
          sub_22C36DD28(v87, &qword_27D9BC390, &qword_22C912AC0);
          v91 = v144;
LABEL_24:
          v158 = v42;
          v114 = v133;
          sub_22C903F7C();
          v115 = *(v90 + 16);
          v116 = v130;
          v115(v130, v81, v91);
          v117 = sub_22C9063CC();
          v118 = sub_22C90AACC();
          if (os_log_type_enabled(v117, v118))
          {
            v119 = swift_slowAlloc();
            v157 = swift_slowAlloc();
            v159 = v157;
            *v119 = 136315138;
            v115(v128, v116, v91);
            v120 = sub_22C90A1AC();
            v122 = v121;
            v123 = *(v90 + 8);
            v123(v116, v91);
            v124 = sub_22C36F9F4(v120, v122, &v159);

            *(v119 + 4) = v124;
            _os_log_impl(&dword_22C366000, v117, v118, "Context rendering is skipping app value %s because it will fail to render!", v119, 0xCu);
            v125 = v157;
            sub_22C36FF94(v157);
            MEMORY[0x2318B9880](v125, -1, -1);
            MEMORY[0x2318B9880](v119, -1, -1);

            (*(v154 + 8))(v133, v155);
            v123(v136, v91);
          }

          else
          {

            v126 = *(v90 + 8);
            v126(v116, v91);
            (*(v154 + 8))(v114, v155);
            v126(v81, v91);
          }

          (*(v76 + 8))(v127, v158);
          return 0;
        }
      }

      else
      {
        v109 = v131;
        sub_22C3A7214();
        if (sub_22C370B74(v86 + v85, 1, v84) != 1)
        {
          v110 = v132;
          v111 = v86 + v85;
          v112 = v129;
          (*(v132 + 32))(v129, v111, v84);
          sub_22C54CC10(&qword_27D9BDC20, MEMORY[0x277D73220], MEMORY[0x277D73230]);
          LODWORD(v158) = sub_22C90A0BC();
          v113 = *(v110 + 8);
          v113(v112, v84);
          sub_22C36DD28(v137, &qword_27D9BC390, &qword_22C912AC0);
          sub_22C36DD28(v138, &qword_27D9BC390, &qword_22C912AC0);
          v113(v109, v84);
          v81 = v136;
          sub_22C36DD28(v86, &qword_27D9BC390, &qword_22C912AC0);
          v89 = v127;
          v90 = v143;
          v91 = v144;
          if (v158)
          {
            goto LABEL_24;
          }

          goto LABEL_21;
        }

        sub_22C36DD28(v137, &qword_27D9BC390, &qword_22C912AC0);
        v87 = v139;
        sub_22C36DD28(v138, &qword_27D9BC390, &qword_22C912AC0);
        (*(v132 + 8))(v109, v84);
        v89 = v127;
        v90 = v143;
      }

      sub_22C36DD28(v87, &qword_27D9BDC18, &unk_22C91ADC0);
      v91 = v144;
LABEL_21:
      (*(v90 + 8))(v81, v91);
      (*(v76 + 8))(v89, v42);
      return 1;
    }

    (*(v74 + 8))(v47, v42);
    (*(v78 + 8))(v79, v80);
  }

  else
  {
    v108 = *(v74 + 8);
    v108(v47, v42);
    v108(v45, v42);
  }

  return 1;
}