uint64_t sub_22C468E64()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v7 + 160) = v6;
  *(v7 + 168) = v0;

  if (v0)
  {
    sub_22C369A24();

    return v8();
  }

  else
  {
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

void sub_22C468F9C()
{
  v64 = v0;
  v1 = 0;
  v2 = v0[20];
  v3 = MEMORY[0x277D84F90];
  *&v61 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  v5 = v2 + 64;
  while (v4 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    ++v1;
    v5 += 40;

    sub_22C3CCB98(v6);
  }

  v7 = v0[21];
  v8 = v0[17];
  v9 = sub_22C3AD928(v61);
  sub_22C4694F8(v9, *(v8 + 32), &v61);

  if (v7)
  {

    sub_22C369A24();
  }

  else
  {
    v15 = v61;
    v57 = v62;
    v58 = *(&v61 + 1);
    v56 = v63;
    v16 = *(v2 + 16);
    if (v16)
    {
      v54 = v61;
      v55 = v0;
      *&v61 = v3;
      sub_22C3B6440(0, v16, 0, v10, v11, v12, v13);
      v17 = v61;
      v18 = *(v61 + 16);
      v19 = 32 * v18 + 56;
      v20 = (v2 + 56);
      do
      {
        v21 = *(v20 - 2);
        v59 = *(v20 - 3);
        *&v61 = v17;
        v22 = *(v20 - 1);
        v23 = *v20;
        v24 = v18 + 1;
        v25 = *(v17 + 24);

        if (v18 >= v25 >> 1)
        {
          sub_22C3B6440(v25 > 1, v24, 1, v26, v27, v28, v29);
          v17 = v61;
        }

        *(v17 + 16) = v24;
        v30 = (v17 + v19);
        *(v30 - 3) = v59;
        *(v30 - 2) = v21;
        v19 += 32;
        v20 += 5;
        ++v18;
        *(v30 - 1) = v22;
        *v30 = v23;
        --v16;
      }

      while (v16);
      v60 = v17;
      v0 = v55;

      v15 = v54;
    }

    else
    {

      v60 = MEMORY[0x277D84F90];
    }

    sub_22C3A5908(&qword_27D9BC798, &qword_22C914228);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    *(inited + 32) = v15;
    *(inited + 40) = v58;
    *(inited + 48) = v57;
    *(inited + 56) = v56;
    sub_22C456C94(v15, v58, v57);
    v32 = MEMORY[0x277D84F90];
    v33 = *(inited + 40);
    if (v33)
    {
      v34 = *(inited + 32);
      v35 = *(inited + 48);
      v36 = *(inited + 56);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C591018(0, *(v32 + 16) + 1, 1, v32);
        v32 = v40;
      }

      v38 = *(v32 + 16);
      v37 = *(v32 + 24);
      if (v38 >= v37 >> 1)
      {
        v41 = sub_22C369AB0(v37);
        sub_22C591018(v41, v38 + 1, 1, v32);
        v32 = v42;
      }

      *(v32 + 16) = v38 + 1;
      v39 = (v32 + 32 * v38);
      v39[4] = v34;
      v39[5] = v33;
      v39[6] = v35;
      v39[7] = v36;
    }

    v43 = v0[16];
    swift_setDeallocating();
    sub_22C590014();
    *&v61 = v60;
    sub_22C3CCB08(v32);
    v44 = v61;
    v45 = sub_22C3726C4();
    sub_22C46BF90(v45, v46, v44, v47, v48, v49, v50, v51);
    sub_22C456D48(v15, v58, v57);

    v52 = v62;
    v53 = v63;
    *v43 = v61;
    *(v43 + 16) = v52;
    *(v43 + 24) = v53;
    sub_22C369C50();
  }

  v14();
}

uint64_t sub_22C4692E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22C46930C, 0, 0);
}

uint64_t sub_22C46930C()
{
  sub_22C374168(*(v0 + 24), *(*(v0 + 24) + 24));
  sub_22C37012C();
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = sub_22C469418;
  sub_22C46BC34();

  return v3();
}

uint64_t sub_22C469418()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  sub_22C369A24();

  return v3();
}

uint64_t sub_22C4694F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_22C9063DC();
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  sub_22C8741B8(a1, v10, v11, v12, v13, v14, v15, v16, v35, v36, v37, v38, &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v41, *(&v41 + 1), v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
  v18 = v17;
  v19 = *(v17 + 16);
  if (v19)
  {
    v35 = a2;
    v36 = v8;
    v37 = a3;
    v38 = v3;
    *&v41 = MEMORY[0x277D84F90];
    sub_22C3B63F4(0, v19, 0);
    v20 = v41;
    v21 = (v18 + 40);
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      v24 = swift_allocObject();
      *(v24 + 16) = v22;
      *(v24 + 24) = v23;
      *&v41 = v20;
      v26 = *(v20 + 16);
      v25 = *(v20 + 24);

      if (v26 >= v25 >> 1)
      {
        sub_22C3B63F4(v25 > 1, v26 + 1, 1);
        v20 = v41;
      }

      *(v20 + 16) = v26 + 1;
      *(v20 + 8 * v26 + 32) = v24;
      v21 += 2;
      --v19;
    }

    while (v19);

    a3 = v37;
    v4 = v38;
    v8 = v36;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  v27 = v45;
  *&v41 = v45[4];

  sub_22C3CCA78(v20);
  if (*(v41 + 16))
  {
    ResolveToolGrammarGenerator_v4_0.makeGrammar(from:identifier:renderingState:)(v41, *v27, v27[1], &v41);

    if (!v4)
    {
      v29 = v42;
      v30 = v43;
      *a3 = v41;
      *(a3 + 16) = v29;
      *(a3 + 24) = v30;
    }
  }

  else
  {

    v31 = v39;
    sub_22C903F7C();
    v32 = sub_22C9063CC();
    v33 = sub_22C90AADC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_22C366000, v32, v33, "Empty tool name list provided for resolve tool. resolve_tool will be excluded from the grammar.", v34, 2u);
      MEMORY[0x2318B9880](v34, -1, -1);
    }

    result = (*(v40 + 8))(v31, v8);
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22C4697C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22C46BC08;

  return sub_22C468D74(a1, a2);
}

uint64_t sub_22C469868()
{
  sub_22C369980();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v0[6] = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  v0[7] = sub_22C3699D4();
  v5 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C469DBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C469868();
}

uint64_t sub_22C469E70()
{
  sub_22C369980();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = sub_22C9063DC();
  v0[6] = v5;
  sub_22C3699B8(v5);
  v0[7] = v6;
  v0[8] = sub_22C3699D4();
  v7 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C469F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = v8;
  v9 = v8[5];
  v10 = *(v9 + 16);
  if (v10)
  {
    v47[0] = MEMORY[0x277D84F90];

    v11 = sub_22C36D6CC();
    sub_22C3B63F4(v11, v12, v13);
    v14 = v47[0];
    v15 = (v9 + 40);
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = v16;
      v47[0] = v14;
      v19 = *(v14 + 16);
      v20 = *(v14 + 24);

      if (v19 >= v20 >> 1)
      {
        sub_22C3B63F4(v20 > 1, v19 + 1, 1);
        v14 = v47[0];
      }

      *(v14 + 16) = v19 + 1;
      *(v14 + 8 * v19 + 32) = v18 | 0x4000000000000000;
      v15 += 2;
      --v10;
    }

    while (v10);
    v21 = swift_allocObject();
    *(v21 + 16) = v14;
    v22 = v21 | 0x8000000000000000;
    sub_22C903F7C();

    v23 = MEMORY[0x277D84F90];

    v24 = sub_22C9063CC();
    v25 = sub_22C90AACC();

    v26 = os_log_type_enabled(v24, v25);
    v27 = v8[7];
    v28 = v8[8];
    v29 = v8[6];
    if (v26)
    {
      v31 = v8[3];
      v30 = v8[4];
      v45 = v8[8];
      v32 = v22;
      v33 = sub_22C36FB44();
      v34 = swift_slowAlloc();
      v46 = v34;
      v47[0] = v31;
      *v33 = 136315138;
      v47[1] = v30;
      v47[2] = v32;
      v47[3] = MEMORY[0x277D84F90];
      BNFGrammarRenderer.renderGrammar(grammar:)(v47);
      v37 = sub_22C36F9F4(v35, v36, &v46);

      *(v33 + 4) = v37;
      sub_22C37B250(&dword_22C366000, v38, v39, "Generated grammar for built in tools: \n%s");
      sub_22C36FF94(v34);
      v23 = MEMORY[0x277D84F90];
      sub_22C3699EC();
      v22 = v32;
      sub_22C3699EC();

      (*(v27 + 8))(v45, v29);
    }

    else
    {

      (*(v27 + 8))(v28, v29);
    }

    v41 = v8[4];
    v42 = v8[2];
    *v42 = v8[3];
    v42[1] = v41;
    v42[2] = v22;
    v42[3] = v23;
  }

  else
  {
    v40 = v8[2];
    *v40 = 0u;
    v40[1] = 0u;
  }

  sub_22C369C50();

  return v43();
}

uint64_t sub_22C46A1C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C382AF4;

  return sub_22C469E70();
}

_BYTE *sub_22C46A278(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22C46A368(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_22C46A3A8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 _s16ForcedPromptRateVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22C46A418(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_22C46A458(uint64_t result, int a2, int a3)
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

uint64_t sub_22C46A4A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22C46A4E4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22C46A544(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 368))
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

uint64_t sub_22C46A584(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 360) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 368) = 1;
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

    *(result + 368) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C46A63C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return sub_22C36A77C();
}

uint64_t sub_22C46A654()
{
  sub_22C36FB38();
  v1 = v0[7];
  v2 = *(v0[8] + 64);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  v4 = sub_22C36FB5C();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_22C46A720;

  return v6(&unk_22C914270, v3, v2);
}

uint64_t sub_22C46A720()
{
  sub_22C36FB38();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369A30();
  *v5 = v4;
  *(v7 + 88) = v6;

  if (v0)
  {
    v8 = *(v4 + 8);

    return v8();
  }

  else
  {
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_22C46A874()
{
  sub_22C374168((*(v0 + 64) + 16), *(*(v0 + 64) + 40));
  sub_22C37012C();
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 96) = v1;
  *v1 = v2;
  v1[1] = sub_22C46A984;
  sub_22C46BC34();

  return v3();
}

uint64_t sub_22C46A984()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C46AA88()
{
  v21 = v0;
  v1 = v0[3];
  v2 = v0[11];
  if (v1)
  {
    v3 = v0[5];
    v4 = v0[6];
    v5 = v0[4];
    *&v18 = v0[2];
    v6 = v18;
    *(&v18 + 1) = v1;
    v19 = v5;
    v20 = v3;
    sub_22C46AD10(&v18, v2, &v15);

    v18 = v15;
    v19 = v16;
    v20 = v17;
    sub_22C474C14(&v12);
    sub_22C456D48(v6, v1, v5);

    v7 = v13;
    v8 = v14;
    *v4 = v12;
    *(v4 + 16) = v7;
    *(v4 + 24) = v8;
    sub_22C369C50();
  }

  else
  {

    v10 = sub_22C46B7E0();
    sub_22C36FBE4(&unk_283FB4EC0, v10);
    swift_willThrow();
    sub_22C369A24();
  }

  return v9();
}

uint64_t sub_22C46ABE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22C46AC04, 0, 0);
}

uint64_t sub_22C46AC04()
{
  sub_22C374168(*(v0 + 24), *(*(v0 + 24) + 24));
  sub_22C37012C();
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = sub_22C46BC0C;
  sub_22C46BC34();

  return v3();
}

uint64_t sub_22C46AD10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v6 = *a1;
  v7 = a1[1];
  v50 = a1[2];
  v51 = a1[3];
  v52 = v3[1];
  v53 = *v3;
  v56 = *v3;
  v57 = v52;

  MEMORY[0x2318B7850](1952670047, 0xE400000000000000);
  sub_22C46BF90(v56, v52, a2, v8, v9, v10, v11, &v56);

  v12 = v56;
  v13 = v57;
  v48 = v58;
  v45 = v59;

  sub_22C46B270(v6, v7, &v56);
  v14 = v56;
  v15 = v57;
  v47 = v58;
  v44 = v59;
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22C90F870;
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  *(v17 + 24) = v13;
  *(v16 + 32) = v17 | 0x4000000000000000;
  v18 = swift_allocObject();
  v49 = v6;
  *(v18 + 16) = v6;
  *(v18 + 24) = v7;
  v46 = v7;
  *(v16 + 40) = v18 | 0x4000000000000000;
  v19 = v4[7];
  if (sub_22C5E9440(0, v19))
  {
    v20 = swift_allocObject();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_22C90FB40;
    v22 = swift_allocObject();
    *(v22 + 16) = v14;
    *(v22 + 24) = v15;
    *(v21 + 32) = v22 | 0x4000000000000000;
    v23 = swift_allocObject();
    *(v23 + 16) = 8202;
    *(v23 + 24) = 0xE200000000000000;
    *(v21 + 40) = v23;
    v24 = swift_allocObject();
    *(v24 + 16) = v12;
    *(v24 + 24) = v13;
    *(v21 + 48) = v24 | 0x4000000000000000;
    *(v20 + 16) = v21;
    swift_bridgeObjectRetain_n();

    sub_22C590240(1, 3, 1, v16);
    v16 = v25;
    *(v25 + 16) = 3;
    *(v25 + 48) = v20 | 0xC000000000000000;
  }

  else
  {
  }

  if (sub_22C5E9440(1u, v19))
  {
    v26 = swift_allocObject();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_22C90FB40;
    v28 = swift_allocObject();
    *(v28 + 16) = v12;
    *(v28 + 24) = v13;
    *(v27 + 32) = v28 | 0x4000000000000000;
    v29 = swift_allocObject();
    *(v29 + 16) = 8202;
    *(v29 + 24) = 0xE200000000000000;
    *(v27 + 40) = v29;
    v30 = swift_allocObject();
    *(v30 + 16) = v14;
    *(v30 + 24) = v15;
    *(v27 + 48) = v30 | 0x4000000000000000;
    *(v26 + 16) = v27;
    v31 = *(v16 + 16);
    v32 = *(v16 + 24);

    if (v31 >= v32 >> 1)
    {
      sub_22C590240(v32 > 1, v31 + 1, 1, v16);
      v16 = v41;
    }

    *(v16 + 16) = v31 + 1;
    *(v16 + 8 * v31 + 32) = v26 | 0xC000000000000000;
  }

  if (sub_22C5E9440(2u, v19))
  {
    v33 = swift_allocObject();
    *(v33 + 16) = v14;
    *(v33 + 24) = v15;
    v34 = *(v16 + 16);
    v35 = *(v16 + 24);

    if (v34 >= v35 >> 1)
    {
      sub_22C590240(v35 > 1, v34 + 1, 1, v16);
      v16 = v42;
    }

    *(v16 + 16) = v34 + 1;
    *(v16 + 8 * v34 + 32) = v33 | 0x4000000000000000;
  }

  v36 = swift_allocObject();
  *(v36 + 16) = v16;
  v43 = v36 | 0x8000000000000000;
  sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_22C90F800;
  *(v37 + 32) = v14;
  *(v37 + 40) = v15;
  *(v37 + 48) = v47;
  v55 = v37;

  sub_22C3CC3D8(v44);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  *(inited + 32) = v12;
  *(inited + 40) = v13;
  *(inited + 48) = v48;
  v56 = inited;

  sub_22C3CC3D8(v45);
  sub_22C3CC3D8(v56);
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_22C90F800;
  *(v39 + 32) = v49;
  *(v39 + 40) = v46;
  *(v39 + 48) = v50;
  v56 = v39;

  sub_22C3CC3D8(v51);
  sub_22C3CC3D8(v56);

  *a3 = v53;
  a3[1] = v52;
  a3[2] = v43;
  a3[3] = v55;
  return result;
}

uint64_t sub_22C46B270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  MEMORY[0x2318B7850]();
  v6 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22C90F870;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22C90FB40;
  v10 = swift_allocObject();
  *(v10 + 16) = 0x5F746165706572;
  *(v10 + 24) = 0xE700000000000000;
  *(v9 + 32) = v10 | 0x4000000000000000;
  v11 = swift_allocObject();
  *(v11 + 16) = 8202;
  *(v11 + 24) = 0xE200000000000000;
  *(v9 + 40) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v9 + 48) = v12 | 0x4000000000000000;
  *(v8 + 16) = v9;
  *(v7 + 32) = v8 | 0xC000000000000000;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v7 + 40) = v13 | 0x4000000000000000;
  *(v6 + 16) = v7;
  *a3 = 0x5F746165706572;
  a3[1] = 0xE700000000000000;
  v14 = MEMORY[0x277D84F90];
  a3[2] = v6 | 0x8000000000000000;
  a3[3] = v14;
  swift_bridgeObjectRetain_n();
}

uint64_t sub_22C46B428(uint64_t a1)
{
  v2 = sub_22C46BBB4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C46B464(uint64_t a1)
{
  v2 = sub_22C46BBB4();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C46B4BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22C46BC08;

  return sub_22C46A63C(a1, a2);
}

unint64_t sub_22C46B568()
{
  result = qword_27D9BC790;
  if (!qword_27D9BC790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC790);
  }

  return result;
}

uint64_t sub_22C46B5BC()
{
  sub_22C36FB38();
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_22C372190(v1);

  return sub_22C4692E8(v3, v4, v5);
}

uint64_t sub_22C46B654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 == a3 && a2 == a4;
  if (v4 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {

    v5 = sub_22C36A724();
    MEMORY[0x2318B7850](v5);
  }

  else
  {
  }

  return sub_22C36A724();
}

uint64_t sub_22C46B6D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C46B748()
{
  sub_22C36FB38();
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_22C372190(v1);

  return sub_22C46ABE0(v3, v4, v5);
}

unint64_t sub_22C46B7E0()
{
  result = qword_27D9BC7A0;
  if (!qword_27D9BC7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC7A0);
  }

  return result;
}

uint64_t sub_22C46B854(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C46B89C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C46B904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22C46B96C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicEnumeration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C46B9D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22C46BA30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicEnumeration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *sub_22C46BAB0(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C46BB60()
{
  result = qword_27D9BC7B0;
  if (!qword_27D9BC7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC7B0);
  }

  return result;
}

unint64_t sub_22C46BBB4()
{
  result = qword_27D9BC7B8;
  if (!qword_27D9BC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC7B8);
  }

  return result;
}

uint64_t sub_22C46BC10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_22C3D32C8(a1, a2, a3, &unk_22C917330);
}

void sub_22C46BC48(void *a1, NSObject *a2, os_signpost_type_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, a4, a5, a6, v6, 2u);
}

uint64_t sub_22C46BC60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = a5 >> 1;
  v7 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFSUB__(v7, result);
  v9 = v7 - result;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_22C4726CC(a4, v9 & ~(v9 >> 63), a5 >> 1);
  if (v10)
  {
    v11 = v6;
  }

  else
  {
    v11 = result;
  }

  if (v11 >= a4)
  {
    sub_22C37F754();
    sub_22C3E1F20();
    sub_22C3716F4();
    swift_unknownObjectRelease();
    return sub_22C38B418();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_22C46BD44(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  sub_22C375E34();
  result = sub_22C90ACBC();
  if (__OFSUB__(result, v7))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = sub_22C90AC9C();
  if (v8)
  {
    v9 = a3;
  }

  else
  {
    v9 = result;
  }

  if (v9 >> 14 >= a2 >> 14)
  {
    sub_22C375E34();
    sub_22C90ACCC();
    sub_22C3716F4();

    return sub_22C38B418();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_22C46BDFC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = sub_22C90A30C();
    if (!__OFSUB__(result, v3))
    {
      sub_22C90A33C();
      sub_22C90A4AC();
      sub_22C3716F4();

      return sub_22C38B418();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C46BF00(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, (v5 - result) & ~((v5 - result) >> 63), v5, a2);
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = result;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      a4(0);
      sub_22C3716F4();

      return sub_22C38B418();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C46BF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v8 = a3;
  v9 = *(a3 + 16);
  if (v9)
  {
    v66 = MEMORY[0x277D84F90];
    sub_22C3B5E2C(0, v9, 0, a4, a5, a6, a7);
    v10 = (v8 + 40);
    v11 = v9;
    do
    {
      v13 = *(v10 - 1);
      v12 = *v10;
      v15 = *(v66 + 16);
      v14 = *(v66 + 24);

      if (v15 >= v14 >> 1)
      {
        sub_22C3B5E2C(v14 > 1, v15 + 1, 1, v16, v17, v18, v19);
      }

      *(v66 + 16) = v15 + 1;
      v20 = v66 + 16 * v15;
      *(v20 + 32) = v13;
      *(v20 + 40) = v12;
      v10 += 4;
      --v11;
    }

    while (v11);
  }

  sub_22C7F48EC();
  v22 = *(v21 + 16);
  v23 = MEMORY[0x277D84F90];
  v64 = v21;
  if (v22)
  {
    v24 = v21;
    v65 = v8;
    v67 = MEMORY[0x277D84F90];
    v25 = sub_22C4727BC();
    sub_22C3B63F4(v25, v26, v27);
    v28 = 0;
    v23 = v67;
    v29 = (v24 + 40);
    do
    {
      if (v28 >= *(v64 + 16))
      {
        goto LABEL_40;
      }

      v31 = *(v29 - 1);
      v30 = *v29;
      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      *(v32 + 24) = v30;
      v34 = *(v67 + 16);
      v33 = *(v67 + 24);

      if (v34 >= v33 >> 1)
      {
        sub_22C36ECC0();
        sub_22C3B63F4(v35, v36, v37);
      }

      ++v28;
      *(v67 + 16) = v34 + 1;
      *(v67 + 8 * v34 + 32) = v32 | 0x4000000000000000;
      v29 += 2;
    }

    while (v22 != v28);
    v8 = v65;
  }

  v60 = swift_allocObject();
  *(v60 + 16) = v23;

  v38 = (v8 + 56);
  for (i = MEMORY[0x277D84F90]; v9; --v9)
  {
    v41 = *(v38 - 1);
    v40 = *v38;
    v42 = *(v38 - 3);
    v43 = *(v38 - 2);
    sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    v45 = (inited + 16);
    *(inited + 32) = v42;
    *(inited + 40) = v43;
    *(inited + 48) = v41;
    v46 = *(v40 + 16);

    if (v46 && (sub_22C5902A0(1, v46 + 1, 1, inited), v57 = v56, v45 = (v56 + 16), *(v40 + 16)))
    {
      if ((*(v56 + 24) >> 1) - *(v56 + 16) < v46)
      {
        goto LABEL_43;
      }

      swift_arrayInitWithCopy();

      v58 = *(v57 + 16);
      v47 = v58 + v46;
      if (__OFADD__(v58, v46))
      {
        goto LABEL_44;
      }

      *v45 = v47;
    }

    else
    {

      if (v46)
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
      }

      v47 = *v45;
    }

    v48 = *(i + 16);
    v49 = v48 + v47;
    if (__OFADD__(v48, v47))
    {
      goto LABEL_38;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v49 > *(i + 24) >> 1)
    {
      if (v48 <= v49)
      {
        v51 = v48 + v47;
      }

      else
      {
        v51 = v48;
      }

      sub_22C5902A0(isUniquelyReferenced_nonNull_native, v51, 1, i);
      i = v52;
    }

    if (*v45)
    {
      if ((*(i + 24) >> 1) - *(i + 16) < v47)
      {
        goto LABEL_41;
      }

      swift_arrayInitWithCopy();

      if (v47)
      {
        v53 = *(i + 16);
        v54 = __OFADD__(v53, v47);
        v55 = v53 + v47;
        if (v54)
        {
          goto LABEL_42;
        }

        *(i + 16) = v55;
      }
    }

    else
    {

      if (v47)
      {
        goto LABEL_39;
      }
    }

    v38 += 4;
  }

  *a8 = a1;
  a8[1] = a2;
  a8[2] = v60 | 0x8000000000000000;
  a8[3] = i;
  return result;
}

uint64_t BNFGrammarRule.init(identifier:component:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  a4[1] = a2;
  a4[2] = v4;
  return result;
}

uint64_t RootedBNFGrammar.rules.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22C90F800;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  *(v5 + 48) = v4;
  v7 = v5;

  sub_22C3CC3D8(v3);
  return v7;
}

__n128 RootedBNFGrammar.init(rootRule:subRules:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  result = *a1;
  v4 = a1[1].n128_u64[0];
  *a3 = *a1;
  a3[1].n128_u64[0] = v4;
  a3[1].n128_u64[1] = a2;
  return result;
}

void RootedBNFGrammar.description.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *v0;
  v4 = v1;
  v5 = v2;
  BNFGrammarRenderer.renderGrammar(grammar:)(&v3);
}

void BNFGrammarRenderer.renderComponent(component:)(unint64_t *a1)
{
  v1 = *a1;
  switch(*a1 >> 62)
  {
    case 1uLL:

      v46 = sub_22C36BAFC();
      MEMORY[0x2318B7850](v46);

      MEMORY[0x2318B7850](62, 0xE100000000000000);
      return;
    case 2uLL:
      v3 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v4 = *(v3 + 16);
      v5 = MEMORY[0x277D84F90];
      if (!v4)
      {
        goto LABEL_18;
      }

      v50 = MEMORY[0x277D84F90];

      v6 = sub_22C4727BC();
      sub_22C3B5E2C(v6, v7, v8, v9, v10, v11, v12);
      v13 = 0;
      v5 = v50;
      while (v13 < *(v3 + 16))
      {
        v49 = *(v3 + 8 * v13 + 32);
        v14 = BNFGrammarRenderer.renderComponent(component:)(&v49);
        v16 = v15;
        v50 = v5;
        v18 = *(v5 + 16);
        v17 = *(v5 + 24);
        if (v18 >= v17 >> 1)
        {
          v20 = sub_22C4727AC(v17);
          sub_22C3B5E2C(v20, v18 + 1, 1, v21, v22, v23, v24);
          v5 = v50;
        }

        ++v13;
        *(v5 + 16) = v18 + 1;
        v19 = v5 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
        if (v4 == v13)
        {

LABEL_18:
          v50 = v5;
          v47 = sub_22C37170C();
          sub_22C3A5908(v47, v48);
          sub_22C382638(&qword_28142F9F0);
          sub_22C90A04C();
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_23;
    case 3uLL:
      v25 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v26 = *(v25 + 16);
      v27 = MEMORY[0x277D84F90];
      if (!v26)
      {
        goto LABEL_19;
      }

      v50 = MEMORY[0x277D84F90];

      sub_22C3B5E2C(0, v26, 0, v28, v29, v30, v31);
      v32 = 0;
      v27 = v50;
      break;
    default:

      v2._countAndFlagsBits = sub_22C36BA00();
      BNFGrammarRenderer.renderTerminal(content:)(v2);
      goto LABEL_20;
  }

  do
  {
    if (v32 >= *(v25 + 16))
    {
LABEL_23:
      __break(1u);
      return;
    }

    v49 = *(v25 + 8 * v32 + 32);
    v33 = BNFGrammarRenderer.renderComponent(component:)(&v49);
    v35 = v34;
    v50 = v27;
    v37 = *(v27 + 16);
    v36 = *(v27 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_22C4727AC(v36);
      sub_22C36ECC0();
      sub_22C3B5E2C(v39, v40, v41, v42, v43, v44, v45);
      v27 = v50;
    }

    ++v32;
    *(v27 + 16) = v37 + 1;
    v38 = v27 + 16 * v37;
    *(v38 + 32) = v33;
    *(v38 + 40) = v35;
  }

  while (v26 != v32);

LABEL_19:
  sub_22C46FBF8(v27);
LABEL_20:
}

uint64_t static BNFGrammarRuleExpression.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  switch(*a1 >> 62)
  {
    case 1uLL:
      if (v5 >> 62 != 1)
      {
        goto LABEL_17;
      }

      v10 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      v6 = *(v10 + 16);
      v7 = *(v10 + 24);
      v5 &= 0x3FFFFFFFFFFFFFFFuLL;
      goto LABEL_10;
    case 2uLL:
      if (v5 >> 62 != 2)
      {
        goto LABEL_17;
      }

      goto LABEL_7;
    case 3uLL:
      if (v5 >> 62 != 3)
      {
        goto LABEL_17;
      }

LABEL_7:
      sub_22C4727CC(v5);

      v8 = sub_22C46E724(v2, v3);

      result = v8 & 1;
      break;
    default:
      if (v5 >> 62)
      {
LABEL_17:
        result = 0;
      }

      else
      {
        v6 = *(v4 + 16);
        v7 = *(v4 + 24);
LABEL_10:
        if (v6 == *(v5 + 16) && v7 == *(v5 + 24))
        {
          result = 1;
        }

        else
        {

          result = sub_22C90B4FC();
        }
      }

      break;
  }

  return result;
}

void sub_22C46C884()
{
  sub_22C36BA7C();
  v2 = sub_22C371718();
  v3 = type metadata accessor for ContextRule(v2);
  sub_22C3885DC();
  MEMORY[0x28223BE20](v4);
  sub_22C379868();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8);
  v10 = (&v76 - v9);
  v11 = *(v1 + 16);
  if (v11 == *(v0 + 16) && v11 && v1 != v0)
  {
    sub_22C47278C();
    v13 = v1 + v12;
    v14 = v0 + v12;
    v77 = *(v15 + 72);
    v78 = v3;
    v79 = v10;
    v80 = v7;
    do
    {
      sub_22C472588();
      sub_22C472588();
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_22C90B4FC() & 1) == 0)
      {
LABEL_41:
        sub_22C472630();
        sub_22C472630();
        break;
      }

      sub_22C90355C();
      sub_22C37FD24();
      sub_22C472684(&qword_281435778, v17, MEMORY[0x277D1EB78]);
      sub_22C36BAFC();
      sub_22C90A56C();
      sub_22C36BAFC();
      sub_22C90A56C();
      if (v84 == v82 && v85 == v83)
      {
      }

      else
      {
        v19 = sub_22C90B4FC();

        if ((v19 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      v81 = v13;
      v20 = *(v3 + 24);
      v21 = (v10 + v20);
      v22 = *(v10 + v20);
      v23 = v21[1];
      v24 = v7;
      v26 = v21[2];
      v25 = v21[3];
      v27 = (v24 + v20);
      v28 = v27[1];
      v29 = v27[2];
      v30 = v27[3];
      if (v23)
      {
        if (!v28)
        {
          v56 = sub_22C36A878();
          sub_22C4722FC(v56, v57);
          sub_22C37F754();
          sub_22C4722FC(v58, v59);
          v60 = sub_22C36A878();
          sub_22C4722FC(v60, v61);

LABEL_38:
          v64 = sub_22C36A878();
          sub_22C472340(v64, v65);
          v66 = sub_22C472718();
LABEL_40:
          sub_22C472340(v66, v67);
          goto LABEL_41;
        }

        v31 = v22 == *v27 && v23 == v28;
        if (!v31 && (sub_22C90B4FC() & 1) == 0)
        {
          v68 = sub_22C36A878();
          sub_22C4722FC(v68, v69);
          v70 = sub_22C472718();
          sub_22C4722FC(v70, v71);
          v72 = sub_22C36A878();
          sub_22C4722FC(v72, v73);
          v74 = sub_22C472718();
          sub_22C472340(v74, v75);

          v66 = sub_22C36A878();
          goto LABEL_40;
        }

        if (v26 != v29 || v25 != v30)
        {
          sub_22C37F754();
          HIDWORD(v76) = sub_22C90B4FC();
          v33 = sub_22C36A878();
          sub_22C4722FC(v33, v34);
          v35 = sub_22C472718();
          sub_22C4722FC(v35, v36);
          v37 = sub_22C36A878();
          sub_22C4722FC(v37, v38);
          v39 = sub_22C472718();
          sub_22C472340(v39, v40);

          v41 = sub_22C36A878();
          sub_22C472340(v41, v42);
          sub_22C37664C();
          v7 = v80;
          sub_22C472630();
          v10 = v79;
          sub_22C472630();
          v43 = v81;
          if ((v76 & 0x100000000) == 0)
          {
            break;
          }

          goto LABEL_34;
        }

        v46 = sub_22C36A878();
        sub_22C4722FC(v46, v47);
        v48 = sub_22C472828();
        sub_22C4722FC(v48, v49);
        v50 = sub_22C36A878();
        sub_22C4722FC(v50, v51);
        v52 = sub_22C472828();
        sub_22C472340(v52, v53);
      }

      else
      {
        sub_22C4722FC(v22, 0);
        if (v28)
        {
          v62 = sub_22C472718();
          sub_22C4722FC(v62, v63);
          goto LABEL_38;
        }

        sub_22C37F754();
        sub_22C4722FC(v44, v45);
      }

      v54 = sub_22C36A878();
      sub_22C472340(v54, v55);
      sub_22C37664C();
      v7 = v80;
      sub_22C472630();
      v10 = v79;
      sub_22C472630();
      v43 = v81;
LABEL_34:
      v3 = v78;
      v14 += v77;
      v13 = v43 + v77;
      --v11;
    }

    while (v11);
  }

  sub_22C36CC48();
}

void sub_22C46CCC8(uint64_t a1, uint64_t a2)
{
  sub_22C47279C();
  if (v12 && v2 && a1 != a2)
  {
    v3 = 0;
    do
    {
      v4 = *(a1 + v3 + 48);
      v5 = *(a1 + v3 + 56);
      v6 = *(a1 + v3 + 64);
      v7 = *(a1 + v3 + 72);
      v8 = *(a2 + v3 + 48);
      v9 = *(a2 + v3 + 56);
      v10 = *(a2 + v3 + 64);
      v11 = *(a2 + v3 + 72);
      v12 = *(a1 + v3 + 32) == *(a2 + v3 + 32) && *(a1 + v3 + 40) == *(a2 + v3 + 40);
      if (!v12 && (sub_22C90B4FC() & 1) == 0)
      {
        break;
      }

      v13 = v4 == v8 && v5 == v9;
      if (!v13 && (sub_22C90B4FC() & 1) == 0)
      {
        break;
      }

      if (v6 != v10 || v7 != v11)
      {
        sub_22C47274C();
        if ((sub_22C90B4FC() & 1) == 0)
        {
          break;
        }
      }

      v3 += 48;
      --v2;
    }

    while (v2);
  }
}

void sub_22C46CDD8()
{
  sub_22C47279C();
  if (v5 && v0 && v1 != v2)
  {
    v3 = (v1 + 40);
    v4 = (v2 + 40);
    do
    {
      v5 = *(v3 - 1) == *(v4 - 1) && *v3 == *v4;
      if (!v5 && (sub_22C90B4FC() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      v4 += 2;
      --v0;
    }

    while (v0);
  }
}

void sub_22C46CEA4()
{
  sub_22C374AAC();
  if (v17 && v0 && v1 != v2)
  {
    v3 = (v1 + 32);
    v4 = (v2 + 32);
    sub_22C38C358();
    v6 = v5 - 14;
    v19 = v5 - 2;
    do
    {
      v7 = *v4;
      v8 = v6;
      v9 = "REGULAR_EXPRESSION";
      switch(*v3)
      {
        case 1:
          v8 = v19;
          v9 = "OUTPUT_ENUM_SUCCESS";
          break;
        case 2:
          v8 = 0xD000000000000021;
          v9 = "OUTPUT_ENUM_ACTION_CONFIRMATION";
          break;
        case 3:
          sub_22C38C358();
          v8 = v11 + 1;
          v9 = "METER_NEEDS_VALUE";
          break;
        case 4:
          sub_22C38C358();
          v8 = v10 + 3;
          v9 = "METER_CONFIRMATION";
          break;
        case 5:
          v8 = 0xD000000000000021;
          v9 = "METER_DISAMBIGUATION";
          break;
        default:
          break;
      }

      v12 = v9 | 0x8000000000000000;
      v13 = v6;
      v14 = "REGULAR_EXPRESSION";
      switch(v7)
      {
        case 1:
          v13 = v19;
          v14 = "OUTPUT_ENUM_SUCCESS";
          break;
        case 2:
          v13 = 0xD000000000000021;
          v14 = "OUTPUT_ENUM_ACTION_CONFIRMATION";
          break;
        case 3:
          sub_22C47281C();
          v13 = v16 + 1;
          v14 = "METER_NEEDS_VALUE";
          break;
        case 4:
          sub_22C47281C();
          v13 = v15 + 3;
          v14 = "METER_CONFIRMATION";
          break;
        case 5:
          v13 = 0xD000000000000021;
          v14 = "METER_DISAMBIGUATION";
          break;
        default:
          break;
      }

      v17 = v8 == v13 && v12 == (v14 | 0x8000000000000000);
      if (v17)
      {
      }

      else
      {
        v18 = sub_22C90B4FC();

        if ((v18 & 1) == 0)
        {
          return;
        }
      }

      ++v3;
      ++v4;
      --v0;
    }

    while (v0);
  }
}

void sub_22C46D100()
{
  sub_22C36BA7C();
  v35 = v0;
  v36 = v1;
  v34 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7(0);
  sub_22C369824();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22C369ABC();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v18 = *(v6 + 16);
  if (v18 == *(v4 + 16) && v18 && v6 != v4)
  {
    sub_22C36BA94();
    v20 = v6 + v19;
    v21 = v4 + v19;
    v23 = *(v10 + 16);
    v22 = v10 + 16;
    v24 = (v22 - 8);
    v32 = *(v22 + 56);
    v33 = v23;
    while (1)
    {
      v25 = sub_22C37B9D0();
      v26 = v33;
      (v33)(v25);
      if (!v18)
      {
        break;
      }

      v27 = v22;
      v26(v14, v21, v8);
      sub_22C472684(v34, v35, v36);
      v28 = sub_22C90A0BC();
      v29 = *v24;
      (*v24)(v14, v8);
      v29(v17, v8);
      if (v28)
      {
        v21 += v32;
        v20 += v32;
        v30 = v18-- == 1;
        v22 = v27;
        if (!v30)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    sub_22C36CC48();
  }
}

void sub_22C46D2C8()
{
  sub_22C374AAC();
  if (v7 && v0 && v1 != v2)
  {
    v3 = (v1 + 48);
    v4 = (v2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      v7 = *(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1);
      if (!v7 && (sub_22C90B4FC() & 1) == 0)
      {
        break;
      }

      v9 = v6;
      v10 = v5;
      swift_retain_n();
      swift_retain_n();

      v8 = static BNFGrammarRuleExpression.== infix(_:_:)(&v10, &v9);

      if ((v8 & 1) == 0)
      {
        break;
      }

      v3 += 3;
      v4 += 3;
      --v0;
    }

    while (v0);
  }
}

void sub_22C46D424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem(0);
  sub_22C3885DC();
  MEMORY[0x28223BE20](v27);
  sub_22C379868();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = *(v25 + 16);
  if (v34 == *(v23 + 16) && v34 && v25 != v23)
  {
    sub_22C47278C();
    v36 = v25 + v35;
    v37 = v23 + v35;
    v39 = *(v38 + 72);
    while (1)
    {
      sub_22C472588();
      sub_22C370018();
      sub_22C472588();
      sub_22C37170C();
      if ((sub_22C901F6C() & 1) == 0 || v33[*(v26 + 20)] != *(v30 + *(v26 + 20)))
      {
        break;
      }

      v40 = v33[*(v26 + 24)];
      sub_22C472630();
      v41 = *(v30 + *(v26 + 24));
      sub_22C472630();
      if (((v40 ^ v41) & 1) == 0)
      {
        v37 += v39;
        v36 += v39;
        if (--v34)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    sub_22C472630();
    sub_22C472630();
  }

LABEL_12:
  sub_22C36CC48();
}

uint64_t sub_22C46D658(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3 ^ *v4;
        if (v5)
        {
          break;
        }

        ++v3;
        ++v4;
        --v2;
      }

      while (v2);
      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_22C46D710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for SegmentedPrompt.Segment(0);
  sub_22C3885DC();
  MEMORY[0x28223BE20](v27);
  sub_22C379868();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = *(v25 + 16);
  if (v34 == *(v23 + 16) && v34 && v25 != v23)
  {
    v35 = 0;
    sub_22C47278C();
    while (1)
    {
      sub_22C3705E8();
      sub_22C472588();
      if (v35 == v34)
      {
        break;
      }

      sub_22C472588();
      sub_22C57ADA4();
      if ((v36 & 1) == 0 || (v37 = *(v26 + 20), v38 = *&v33[v37], v39 = *(v30 + v37), v40 = *(v38 + 16), v40 != *(v39 + 16)))
      {
LABEL_19:
        sub_22C472630();
        sub_22C472630();
        goto LABEL_20;
      }

      if (v40)
      {
        v41 = v38 == v39;
      }

      else
      {
        v41 = 1;
      }

      if (!v41)
      {
        v42 = (v38 + 32);
        v43 = (v39 + 32);
        while (v40)
        {
          if (*v42 != *v43)
          {
            goto LABEL_19;
          }

          ++v42;
          ++v43;
          if (!--v40)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        break;
      }

LABEL_16:
      ++v35;
      sub_22C472630();
      sub_22C472630();
      if (v35 == v34)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    sub_22C36CC48();
  }
}

uint64_t sub_22C46D91C()
{
  sub_22C374AAC();
  if (v3)
  {
    if (!v0 || v1 == v2)
    {
      return 1;
    }

    v4 = (v1 + 32);
    for (i = (v2 + 32); ; i += 88)
    {
      memcpy(__dst, v4, sizeof(__dst));
      memcpy(v11, v4, sizeof(v11));
      memcpy(v13, i, sizeof(v13));
      memcpy(__src, i, sizeof(__src));
      sub_22C748778(v11, __src);
      v7 = v6;
      memcpy(v14, __src, sizeof(v14));
      sub_22C4724D8(__dst, v9);
      sub_22C4724D8(v13, v9);
      sub_22C472534(v14);
      memcpy(v15, v11, sizeof(v15));
      sub_22C472534(v15);
      if ((v7 & 1) == 0)
      {
        break;
      }

      v4 += 88;
      if (!--v0)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_22C46DA24()
{
  sub_22C36BA7C();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = v0 + 64;
    v4 = v1 + 64;
    do
    {
      v5 = *(v3 - 16);
      v6 = *(v3 - 8);
      v7 = *(v4 - 16);
      v8 = *(v4 - 8);
      v9 = *(v3 - 32) == *(v4 - 32) && *(v3 - 24) == *(v4 - 24);
      if (!v9 && (sub_22C90B4FC() & 1) == 0)
      {
        break;
      }

      if (v5 != v7 || v6 != v8)
      {
        sub_22C47274C();
        if ((sub_22C90B4FC() & 1) == 0)
        {
          break;
        }
      }

      v11 = sub_22C36BA00();
      sub_22C749DA0(v11, v12);
      if ((v13 & 1) == 0)
      {
        break;
      }

      v3 += 40;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  sub_22C36CC48();
}

uint64_t sub_22C46DAF8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v57 = a2 + 32;
  v58 = result + 32;
  v56 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_35;
    }

    v4 = (v58 + 40 * v3);
    v5 = *v4;
    v6 = v4[1];
    v8 = v4[2];
    v7 = v4[3];
    v9 = v4[4];
    v10 = (v57 + 40 * v3);
    v11 = v10[2];
    v62 = v10[3];
    v63 = v7;
    v12 = v10[4];
    v13 = v5 == *v10 && v6 == v10[1];
    if (!v13 && (sub_22C90B4FC() & 1) == 0)
    {

      swift_bridgeObjectRetain_n();
      sub_22C3819E0();
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      sub_22C37B22C();
      swift_bridgeObjectRetain_n();

      goto LABEL_32;
    }

    v64 = v11;
    v65 = v8;
    v14 = v11 & 0x3FFFFFFFFFFFFFFFLL;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    sub_22C37B22C();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v15 = static BNFGrammarRuleExpression.== infix(_:_:)(&v65, &v64);

    sub_22C3819E0();

    if ((v15 & 1) == 0)
    {

      sub_22C3732F8();
      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
LABEL_32:

      goto LABEL_26;
    }

    sub_22C46D2C8();
    v17 = v16;

    v61 = v11 & 0x3FFFFFFFFFFFFFFFLL;

    if ((v17 & 1) == 0)
    {
      sub_22C37B22C();
      v39 = swift_bridgeObjectRelease_n();
      sub_22C37ABEC(v39, v40, v41, v42, v43, v44, v45, v46, v55, v56, v57, v58, v59, v14, v62, v63);
      sub_22C3819E0();

      swift_bridgeObjectRelease_n();
LABEL_26:
      sub_22C37B22C();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      sub_22C3819E0();

      swift_bridgeObjectRelease_n();
      return 0;
    }

    v18 = *(v9 + 16);
    if (v18 != *(v12 + 16))
    {
      sub_22C37B22C();
      v47 = swift_bridgeObjectRelease_n();
      sub_22C37ABEC(v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v14, v62, v63);
      sub_22C3819E0();

LABEL_25:
      swift_bridgeObjectRelease_n();
      goto LABEL_26;
    }

    v60 = v6;
    if (v18)
    {
      if (v9 != v12)
      {
        break;
      }
    }

LABEL_21:
    ++v3;
    sub_22C37B22C();
    v23 = swift_bridgeObjectRelease_n();
    sub_22C37ABEC(v23, v24, v25, v26, v27, v28, v29, v30, v55, v56, v57, v58, v60, v61, v62, v63);
    sub_22C3819E0();

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();
    result = 1;
    v2 = v56;
    if (v3 == v56)
    {
      return result;
    }
  }

  v19 = 4;
  while ((v19 - 4) < *(v9 + 16))
  {
    if ((v19 - 4) >= *(v12 + 16))
    {
      goto LABEL_34;
    }

    v20 = *(v9 + 8 * v19);
    v21 = *(v12 + 8 * v19);

    v22 = sub_22C48819C(v20, v21);

    if ((v22 & 1) == 0)
    {
      sub_22C37B22C();
      v31 = swift_bridgeObjectRelease_n();
      sub_22C37ABEC(v31, v32, v33, v34, v35, v36, v37, v38, v55, v56, v57, v58, v60, v61, v62, v63);
      sub_22C3819E0();

      goto LABEL_25;
    }

    ++v19;
    if (!--v18)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void sub_22C46DF1C()
{
  sub_22C374AAC();
  if (v3 && v0 && v1 != v2)
  {
    v4 = v1 + 32;
    v5 = v2 + 32;
    do
    {
      v4 += 8;
      v5 += 8;

      v6 = sub_22C37170C();
      v8 = sub_22C48819C(v6, v7);

      if ((v8 & 1) == 0)
      {
        break;
      }

      --v0;
    }

    while (v0);
  }
}

void sub_22C46DFC8()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C90952C();
  sub_22C369824();
  v41 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22C369ABC();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = *(v3 + 16);
  if (v13 == *(v1 + 16) && v13 && v3 != v1)
  {
    v14 = 0;
    v36 = v1 + 32;
    v37 = v3 + 32;
    v15 = (v41 + 8);
    v33 = v13;
    while (v14 != v13)
    {
      v16 = (v37 + 24 * v14);
      v17 = *v16;
      v18 = v16[1];
      v19 = v16[2];
      v20 = (v36 + 24 * v14);
      v21 = *v20;
      v22 = v20[1];
      v42 = v20[2];
      v23 = v17 == v21 && v18 == v22;
      if (!v23 && (sub_22C90B4FC() & 1) == 0)
      {
        goto LABEL_24;
      }

      v38 = v22;
      v24 = *(v19 + 16);
      if (v24 != *(v42 + 16))
      {
        goto LABEL_24;
      }

      if (v24 && v19 != v42)
      {
        v34 = v14;
        v35 = v18;
        v25 = v42;
        sub_22C36BA94();
        v39 = v25 + v26;
        v40 = v19 + v26;

        v27 = 0;
        while (v27 < *(v19 + 16))
        {
          v28 = *(v41 + 72) * v27;
          v29 = *(v41 + 16);
          v29(v12, v40 + v28, v4);
          if (v27 >= *(v42 + 16))
          {
            goto LABEL_26;
          }

          v29(v9, v39 + v28, v4);
          sub_22C3773C8();
          sub_22C472684(&qword_28142FA78, v30, MEMORY[0x277D72D70]);
          v31 = sub_22C90A0BC();
          v32 = *v15;
          (*v15)(v9, v4);
          v32(v12, v4);
          if ((v31 & 1) == 0)
          {

            goto LABEL_24;
          }

          if (v24 == ++v27)
          {

            v13 = v33;
            v14 = v34;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
        break;
      }

LABEL_20:
      if (++v14 == v13)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    sub_22C36CC48();
  }
}

uint64_t sub_22C46E310(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
    return 0;
  }

  if (!v3 || a1 == a2)
  {
    return 1;
  }

  v4 = (a2 + 64);
  for (i = (a1 + 64); ; i += 40)
  {
    v7 = *(i - 4);
    v6 = *(i - 3);
    v8 = *(i - 2);
    v9 = *(i - 1);
    v10 = *i;
    v11 = *(v4 - 4);
    v12 = *(v4 - 3);
    v13 = *(v4 - 2);
    v104 = *v4;
    if ((v8 & 0x2000000000000000) == 0)
    {
      if ((v13 & 0x2000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (v7 == v11 && v6 == v12)
      {
        v55 = sub_22C36D384();
        v2 = v56;
        sub_22C472434(v55, v57, v13);
        v58 = sub_22C369C60();
        sub_22C472434(v58, v59, v60);
        v61 = sub_22C369C60();
        sub_22C472480(v61, v62, v63);
        v64 = sub_22C36D384();
        sub_22C472480(v64, v65, v13);
        if (v10 != v104)
        {
          return 0;
        }
      }

      else
      {
        v15 = sub_22C36D384();
        v100 = sub_22C37B578(v15, v16);
        sub_22C472434(v10, v7, v2);
        v17 = sub_22C36EBF0();
        sub_22C472434(v17, v18, v9);
        v19 = sub_22C36EBF0();
        sub_22C472480(v19, v20, v9);
        sub_22C472480(v10, v7, v2);
        result = 0;
        if (v100 & 1) == 0 || ((v10 ^ v104))
        {
          return result;
        }
      }

      goto LABEL_25;
    }

    if ((v13 & 0x2000000000000000) == 0)
    {
LABEL_27:
      v66 = sub_22C472808();
      v68 = v67;
      sub_22C472434(v66, v69, v70);
      v71 = sub_22C36EBF0();
      sub_22C472434(v71, v72, v8);
      v73 = sub_22C36EBF0();
      sub_22C472480(v73, v74, v8);
      v75 = v4;
      v76 = v68;
      v77 = v13;
      goto LABEL_30;
    }

    v22 = v7 == v11 && v6 == v12;
    v102 = *(v4 - 4);
    if (!v22)
    {
      v23 = sub_22C36D384();
      v25 = sub_22C37B578(v23, v24);
      v12 = v7;
      v8 = v9;
      v13 = v2;
      v11 = v10;
      if ((v25 & 1) == 0)
      {
        break;
      }
    }

    v103 = v3;
    v105 = v13 & 0xDFFFFFFFFFFFFFFFLL;
    v106 = v8 & 0xDFFFFFFFFFFFFFFFLL;
    v2 = v13;
    sub_22C472434(v11, v12, v13);
    v26 = sub_22C369C60();
    sub_22C472434(v26, v27, v28);
    sub_22C47283C();
    v29 = sub_22C369C60();
    sub_22C472434(v29, v30, v31);
    sub_22C47283C();
    v32 = sub_22C369C60();
    sub_22C472434(v32, v33, v34);
    swift_retain_n();
    swift_retain_n();

    v35 = static BNFGrammarRuleExpression.== infix(_:_:)(&v106, &v105);

    if ((v35 & 1) == 0)
    {
      goto LABEL_29;
    }

    sub_22C46D2C8();
    v101 = v36;
    v37 = sub_22C369C60();
    sub_22C472480(v37, v38, v39);
    v40 = sub_22C37B9D0();
    sub_22C472480(v40, v41, v42);
    v43 = sub_22C37B9D0();
    sub_22C472480(v43, v44, v45);
    sub_22C47274C();
    sub_22C472480(v46, v47, v48);
    v49 = sub_22C37B9D0();
    sub_22C472480(v49, v50, v51);
    sub_22C47274C();
    sub_22C472480(v52, v53, v54);
    result = 0;
    if ((v101 & 1) == 0)
    {
      return result;
    }

    v3 = v103;
    if ((v10 ^ v104))
    {
      return result;
    }

LABEL_25:
    v4 += 40;
    if (!--v3)
    {
      return 1;
    }
  }

  v78 = sub_22C472808();
  sub_22C472434(v78, v79, v80);
  v81 = sub_22C369C60();
  sub_22C472434(v81, v82, v83);
  v84 = sub_22C36BAFC();
  sub_22C472434(v84, v85, v2);
  v86 = sub_22C369C60();
  sub_22C472434(v86, v87, v88);
  v89 = sub_22C36BAFC();
  sub_22C472434(v89, v90, v2);
  v91 = sub_22C369C60();
  sub_22C472434(v91, v92, v93);
LABEL_29:
  v94 = sub_22C369C60();
  sub_22C472480(v94, v95, v96);
  sub_22C370148(v102);
  sub_22C370148(v102);
  v97 = sub_22C369C60();
  sub_22C472480(v97, v98, v99);
  sub_22C370148(v102);
  v75 = sub_22C369C60();
LABEL_30:
  sub_22C472480(v75, v76, v77);
  return 0;
}

uint64_t sub_22C46E724(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (v4 && a1 != a2)
  {
    v5 = (a1 + 32);
    v6 = (a2 + 32);
    while (2)
    {
      v8 = *v5++;
      v7 = v8;
      v9 = *v6;
      v10 = *v6 >> 62;
      switch(v8 >> 62)
      {
        case 1uLL:
          if (v10 != 1)
          {
            return 0;
          }

          v13 = v7 & 0x3FFFFFFFFFFFFFFFLL;
          v11 = *(v13 + 16);
          v12 = *(v13 + 24);
          v9 &= 0x3FFFFFFFFFFFFFFFuLL;
          goto LABEL_15;
        case 2uLL:
          if (v10 != 2)
          {
            return 0;
          }

          goto LABEL_11;
        case 3uLL:
          if (*v6 >> 62 != 3)
          {
            return 0;
          }

LABEL_11:
          sub_22C4727CC(v9);
          swift_retain_n();
          sub_22C3732F8();
          swift_retain_n();

          v2 = sub_22C46E724(v2, v3);

          sub_22C3732F8();

          if ((v2 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_20;
        default:
          if (v10)
          {
            return 0;
          }

          v11 = *(v7 + 16);
          v12 = *(v7 + 24);
LABEL_15:
          v14 = v11 == *(v9 + 16) && v12 == *(v9 + 24);
          if (!v14 && (sub_22C90B4FC() & 1) == 0)
          {
            return 0;
          }

LABEL_20:
          ++v6;
          if (!--v4)
          {
            return 1;
          }

          continue;
      }
    }
  }

  return 1;
}

uint64_t sub_22C46E86C()
{
  sub_22C374AAC();
  if (v3)
  {
    if (!v0 || v1 == v2)
    {
      return 1;
    }

    v4 = (v1 + 32);
    for (i = (v2 + 32); ; i += 208)
    {
      memcpy(__dst, v4, sizeof(__dst));
      memcpy(v10, v4, sizeof(v10));
      memcpy(v12, i, sizeof(v12));
      memcpy(__src, i, sizeof(__src));
      sub_22C472384(__dst, v8);
      sub_22C472384(v12, v8);
      v6 = static Statement.== infix(_:_:)(v10);
      memcpy(v13, __src, sizeof(v13));
      sub_22C4723E0(v13);
      memcpy(v14, v10, sizeof(v14));
      sub_22C4723E0(v14);
      if ((v6 & 1) == 0)
      {
        break;
      }

      v4 += 208;
      if (!--v0)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_22C46E974()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  sub_22C3885DC();
  MEMORY[0x28223BE20](v5);
  sub_22C379868();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = *(v3 + 16);
  if (v12 == *(v1 + 16) && v12 && v3 != v1)
  {
    sub_22C47278C();
    v14 = v3 + v13;
    v15 = v1 + v13;
    v19 = *(v16 + 72);
    while (1)
    {
      sub_22C36EBF0();
      sub_22C472588();
      if (!v12)
      {
        break;
      }

      sub_22C472588();
      if ((sub_22C9036DC() & 1) == 0 || v11[*(v4 + 20)] != *(v8 + *(v4 + 20)))
      {
        sub_22C472630();
        sub_22C472630();
        goto LABEL_16;
      }

      sub_22C9037DC();
      sub_22C472758();
      sub_22C472684(&qword_27D9BC7F8, v17, MEMORY[0x277D1ED68]);
      sub_22C90A56C();
      sub_22C90A56C();
      sub_22C472630();
      sub_22C472630();
      v18 = v21 != v20 || v12-- == 1;
      v15 += v19;
      v14 += v19;
      if (v18)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    sub_22C36CC48();
  }
}

void sub_22C46EBB8()
{
  sub_22C47279C();
  if (v11 && v0 && v1 != v2)
  {
    v3 = (v1 + 56);
    v4 = (v2 + 56);
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      if (v5)
      {
        if (!v8)
        {
          return;
        }

        v11 = *(v3 - 3) == *(v4 - 3) && v5 == v8;
        if (!v11 && (sub_22C90B4FC() & 1) == 0)
        {
          return;
        }
      }

      else if (v8)
      {
        return;
      }

      if (v7)
      {
        if (!v10)
        {
          return;
        }
      }

      else
      {
        if (v6 == v9)
        {
          v12 = v10;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          return;
        }
      }

      v3 += 32;
      v4 += 32;
      --v0;
    }

    while (v0);
  }
}

uint64_t BNFGrammarRuleExpression.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*v1 >> 62)
  {
    case 1uLL:
      v4 = 1;
      goto LABEL_7;
    case 2uLL:
      v5 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = 2;
      goto LABEL_5;
    case 3uLL:
      v5 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = 3;
LABEL_5:
      MEMORY[0x2318B8B10](v6);

      sub_22C471854(a1, v5);
      break;
    default:
      v4 = 0;
LABEL_7:
      MEMORY[0x2318B8B10](v4);

      sub_22C909FFC();
      break;
  }
}

uint64_t BNFGrammarRuleExpression.hashValue.getter()
{
  v2[9] = *v0;
  sub_22C90B62C();
  BNFGrammarRuleExpression.hash(into:)(v2);
  return sub_22C90B66C();
}

uint64_t sub_22C46EDFC(uint64_t a1)
{
  v3[9] = *v1;
  sub_22C90B62C();
  BNFGrammarRuleExpression.hash(into:)(v3);
  return sub_22C90B66C();
}

uint64_t BNFGrammarRule.component.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

unint64_t BNFGrammarRule.description.getter()
{
  v1 = *(v0 + 2);
  v3 = *v0;
  v4 = v1;
  return BNFGrammarRenderer.renderRule(rule:)(&v3);
}

unint64_t BNFGrammarRenderer.renderRule(rule:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v6 = 0xE100000000000000;

  v2 = sub_22C36BAFC();
  MEMORY[0x2318B7850](v2);
  MEMORY[0x2318B7850](62, 0xE100000000000000);
  v5 = v1;
  BNFGrammarRenderer.renderComponent(component:)(&v5);

  v5 = 60;
  v6 = 0xE100000000000000;
  MEMORY[0x2318B7850](0x203D3A3A20, 0xE500000000000000);
  v3 = sub_22C36BAFC();
  MEMORY[0x2318B7850](v3);

  return v5;
}

uint64_t static BNFGrammarRule.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = 0, (sub_22C90B4FC() & 1) != 0))
  {
    v7 = v3;
    v8 = v2;

    v5 = static BNFGrammarRuleExpression.== infix(_:_:)(&v8, &v7);
  }

  return v5 & 1;
}

uint64_t BNFGrammarRule.hashValue.getter()
{
  sub_22C90B62C();
  sub_22C909FFC();
  BNFGrammarRuleExpression.hash(into:)(v1);
  return sub_22C90B66C();
}

uint64_t sub_22C46F118(uint64_t a1)
{
  v2 = *(v1 + 16);
  *&v4[72] = *v1;
  v5 = v2;
  sub_22C90B62C();
  BNFGrammarRule.hash(into:)(v4);
  return sub_22C90B66C();
}

uint64_t RootedBNFGrammar.rootRule.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

void BNFGrammarRenderer.renderGrammar(grammar:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  *(inited + 48) = v4;
  v41 = inited;

  sub_22C3CC3D8(v3);
  v6 = v41;
  v7 = *(v41 + 16);
  if (v7)
  {
    v43 = MEMORY[0x277D84F90];
    v8 = sub_22C4727BC();
    sub_22C3B5E2C(v8, v9, v10, v11, v12, v13, v14);
    v15 = 0;
    v16 = v43;
    v17 = (v41 + 48);
    while (v15 < *(v6 + 16))
    {
      v18 = *(v17 - 2);
      v19 = *(v17 - 1);
      v20 = *v17;
      v41 = 60;
      v42 = 0xE100000000000000;

      MEMORY[0x2318B7850](v18, v19);
      MEMORY[0x2318B7850](62, 0xE100000000000000);
      v21 = v41;
      v22 = v42;
      v41 = v20;
      BNFGrammarRenderer.renderComponent(component:)(&v41);
      v24 = v23;
      v26 = v25;

      v41 = v21;
      v42 = v22;
      MEMORY[0x2318B7850](0x203D3A3A20, 0xE500000000000000);
      MEMORY[0x2318B7850](v24, v26);

      v27 = v41;
      v28 = v42;
      v43 = v16;
      v30 = *(v16 + 16);
      v29 = *(v16 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_22C4727AC(v29);
        sub_22C36ECC0();
        sub_22C3B5E2C(v32, v33, v34, v35, v36, v37, v38);
        v16 = v43;
      }

      ++v15;
      *(v16 + 16) = v30 + 1;
      v31 = v16 + 16 * v30;
      *(v31 + 32) = v27;
      *(v31 + 40) = v28;
      v17 += 3;
      if (v7 == v15)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
LABEL_9:
    v41 = v16;
    v39 = sub_22C37170C();
    sub_22C3A5908(v39, v40);
    sub_22C382638(&qword_28142F9F0);
    sub_22C90A04C();

    sub_22C37170C();
  }
}

void static RootedBNFGrammar.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v9[0] = *a1;
  v9[1] = v2;
  v9[2] = v3;
  v8[0] = v4;
  v8[1] = v5;
  v8[2] = v6;

  v7 = static BNFGrammarRule.== infix(_:_:)(v9, v8);

  if (v7)
  {
    sub_22C36BA00();

    sub_22C46D2C8();
  }
}

uint64_t RootedBNFGrammar.hash(into:)(uint64_t a1)
{
  sub_22C909FFC();
  BNFGrammarRuleExpression.hash(into:)(a1);
  v2 = sub_22C36BAFC();

  return sub_22C471C48(v2, v3);
}

uint64_t RootedBNFGrammar.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_22C90B62C();
  sub_22C909FFC();
  BNFGrammarRuleExpression.hash(into:)(v3);
  sub_22C471C48(v3, v1);
  return sub_22C90B66C();
}

uint64_t sub_22C46F5C0(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_22C90B62C();
  RootedBNFGrammar.hash(into:)(v5);
  return sub_22C90B66C();
}

uint64_t sub_22C46F618()
{
  result = swift_allocObject();
  *(result + 16) = 0x53454E494C57454ELL;
  *(result + 24) = 0xE800000000000000;
  qword_27D9BC7C0 = result | 0x4000000000000000;
  return result;
}

Swift::String __swiftcall BNFGrammarRenderer.renderTerminal(content:)(Swift::String content)
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  v53 = v4;
  v54 = v2;
  v51 = 10;
  v52 = 0xE100000000000000;
  sub_22C3858B4();
  if ((sub_22C90AD8C() & 1) == 0)
  {
    v51 = v4;
    v52 = v2;
    sub_22C90306C();
    sub_22C471D70();
    sub_22C471DC4();
    sub_22C3D32C8(&qword_27D9BC2F8, &qword_27D9BC170, &unk_22C912180, MEMORY[0x277D85AC0]);
    sub_22C90A9FC();
    (*(v7 + 8))(v10, v5);
    v36 = v53;
    v37 = v54;
    v53 = 34;
    v54 = 0xE100000000000000;
    MEMORY[0x2318B7850](v36, v37);

    MEMORY[0x2318B7850](34, 0xE100000000000000);
    goto LABEL_29;
  }

  v53 = v4;
  v54 = v2;
  v11 = sub_22C90AD9C();
  v12 = 0;
  v13 = *(v11 + 16);
  v14 = v11 + 56;
  v15 = MEMORY[0x277D84F90];
  v16 = 0x27D9BA000uLL;
  v50 = v11;
  while (v13 != v12)
  {
    if (v12 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    v17 = *(v14 - 24);
    v18 = *(v14 - 16);
    v19 = *v14;
    if ((v18 ^ v17) >= 0x4000)
    {
      v20 = v13;
      v21 = v16;
      v22 = *(v14 - 8);
      v23 = swift_allocObject();

      *(v23 + 16) = MEMORY[0x2318B76D0](v17, v18, v22, v19);
      *(v23 + 24) = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C4727E4();
        v15 = v34;
      }

      v26 = *(v15 + 16);
      v25 = *(v15 + 24);
      v16 = v21;
      if (v26 >= v25 >> 1)
      {
        sub_22C590240(v25 > 1, v26 + 1, 1, v15);
        v15 = v35;
      }

      v13 = v20;
      *(v15 + 16) = v26 + 1;
      *(v15 + 8 * v26 + 32) = v23;
      v11 = v50;
    }

    else
    {
    }

    if (*(v16 + 1600) != -1)
    {
      swift_once();
    }

    v27 = qword_27D9BC7C0;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C4727E4();
      v15 = v29;
    }

    v28 = *(v15 + 16);
    if (v28 >= *(v15 + 24) >> 1)
    {
      sub_22C36ECC0();
      sub_22C590240(v30, v31, v32, v15);
      v15 = v33;
    }

    *(v15 + 16) = v28 + 1;
    *(v15 + 8 * v28 + 32) = v27;
    v14 += 32;
    ++v12;
  }

  sub_22C46BF00(1, v15, sub_22C88842C, sub_22C633A28);
  v13 = v38;
  v14 = v39;
  if ((v39 & 1) == 0)
  {
LABEL_21:
    v40 = sub_22C36BA00();
    sub_22C46FE2C(v40, v41, v13, v14);
    v43 = v42;
    goto LABEL_28;
  }

  sub_22C90B50C();
  sub_22C3732F8();
  swift_unknownObjectRetain_n();
  v44 = swift_dynamicCastClass();
  if (!v44)
  {
    swift_unknownObjectRelease();
    v44 = MEMORY[0x277D84F90];
  }

  v45 = *(v44 + 16);

  if (__OFSUB__(v14 >> 1, v13))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v45 != (v14 >> 1) - v13)
  {
LABEL_32:
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  v43 = swift_dynamicCastClass();
  if (!v43)
  {
    swift_unknownObjectRelease();
    v43 = MEMORY[0x277D84F90];
  }

LABEL_28:
  v46 = swift_allocObject();
  *(v46 + 16) = v43;
  v53 = v46 | 0xC000000000000000;
  BNFGrammarRenderer.renderComponent(component:)(&v53);
  swift_unknownObjectRelease();

LABEL_29:
  sub_22C37170C();
  sub_22C36CC48();
  result._object = v48;
  result._countAndFlagsBits = v47;
  return result;
}

uint64_t sub_22C46FB4C@<X0>(uint64_t *a1@<X8>)
{
  sub_22C3A5908(&qword_27D9BC178, &unk_22C914830);
  sub_22C9030CC();
  v2 = MEMORY[0x2318B76D0]();
  v4 = v3;

  MEMORY[0x2318B7850](v2, v4);

  *a1 = 92;
  a1[1] = v6;
  return result;
}

uint64_t sub_22C46FBF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  for (i = (a1 + 40); v1; --v1)
  {
    v4 = *(i - 1);
    v3 = *i;
    if ((*i & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(*i) & 0xF;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      if (sub_22C90A46C() != 34 || v6 != 0xE100000000000000)
      {
        sub_22C90B4FC();
      }
    }

    MEMORY[0x2318B7850](v4, v3);

    i += 2;
  }

  return 0;
}

void sub_22C46FE2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 8);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_22C46FF28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 24);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_22C46FFFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_22C4701A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_22C3A5908(&qword_27D9BB0A0, &qword_22C90D940);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * ((v9 - 32) / 8);
    }

    if (v4 != a3)
    {
      memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
      return;
    }

    goto LABEL_10;
  }
}

uint64_t sub_22C4702AC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  sub_22C597A98(*(a1 + 16), 0);
  sub_22C3704C4();
  sub_22C908C5C();
  sub_22C36BA94();
  v10 = sub_22C3743F0(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
  sub_22C3D1C44(v10);
  sub_22C38B868();
  sub_22C374ABC();
  if (!v11)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t sub_22C470414(uint64_t a1, uint64_t (*a2)(void, void), uint64_t *a3, uint64_t *a4, void (*a5)(char *))
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v8 = a2(*(a1 + 16), 0);
  sub_22C3A5908(a3, a4);
  sub_22C36BA94();
  v17 = sub_22C3743F0(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21);
  a5(v17);
  sub_22C38B868();
  sub_22C374ABC();
  if (!v18)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v8;
}

uint64_t sub_22C4704E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22C597B9C(*(a3 + 16), 0);
  v5 = sub_22C3704C4();
  type metadata accessor for RetrievedToolWithAttribution(v5);
  sub_22C36BA94();
  sub_22C3D2B00();
  v7 = v6;

  if (v7 != v4)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_22C470610(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void), void (*a6)(void))
{
  v6 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    a5((a4 >> 1) - a3, 0);
    if (v6 != a3)
    {
      a6(0);
      sub_22C372570();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_22C4706F0()
{
  sub_22C36BA7C();
  v2 = v1;
  v3 = sub_22C3704C4();
  v89 = type metadata accessor for SegmentedPrompt.DeferredReference.TypeIdentifierReference(v3);
  sub_22C36985C();
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v88 = v6 - v5;
  v87 = sub_22C90069C();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v86 = v11 - v10;
  v12 = type metadata accessor for SegmentedPrompt.DeferredReference(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  v96 = (v14 - v15);
  v17 = MEMORY[0x28223BE20](v16);
  v94 = &v80 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v95 = (&v80 - v20);
  MEMORY[0x28223BE20](v19);
  v93 = &v80 - v21;
  v100 = type metadata accessor for SegmentedPrompt.SegmentPayload(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  v25 = v24 - v23;
  v26 = type metadata accessor for SegmentedPrompt.Segment(0);
  sub_22C369824();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  sub_22C369838();
  v32 = v31 - v30;
  v33 = *(v2 + 16);
  MEMORY[0x2318B8B10](v33);
  v99 = v33;
  if (v33)
  {
    v34 = 0;
    v35 = *(v26 + 20);
    sub_22C36BA94();
    v98 = v2 + v36;
    v82 = (v8 + 8);
    v83 = (v8 + 32);
    v97 = *(v28 + 72);
    v84 = v35;
    v85 = v12;
    while (1)
    {
      sub_22C3705E8();
      sub_22C472588();
      sub_22C472588();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v38 = (v25 + *(sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0) + 48));
        v91 = *v38;
        v39 = v38[2];
        sub_22C388F00();
        sub_22C4725DC();
        MEMORY[0x2318B8B10](1);
        sub_22C382F78();
        sub_22C472588();
        v40 = swift_getEnumCaseMultiPayload();
        v92 = v39;
        if (v40)
        {
          if (v40 == 1)
          {
            sub_22C379FD4();
            v41 = v88;
            sub_22C4725DC();
            MEMORY[0x2318B8B10](1);
            sub_22C4706F0();
            sub_22C7EDAF8(v0, *(v41 + 8), v42, v43, v44, v45, v46, v47, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
            sub_22C90963C();
            sub_22C38A8C0();
            sub_22C472684(&qword_27D9BC850, v48, MEMORY[0x277D72E20]);
            sub_22C909F8C();
            sub_22C37F104();
            sub_22C472630();
          }

          else
          {
            v64 = *v96;
            v81 = v96[1];
            MEMORY[0x2318B8B10](2);
            v90 = v64;
            v65 = *(v64 + 16);
            MEMORY[0x2318B8B10](v65);
            if (v65)
            {
              sub_22C901FAC();
              sub_22C372570();
              v67 = v90 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
              v69 = *(v68 + 72);
              sub_22C472684(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
              do
              {
                sub_22C909F8C();
                v67 += v69;
                --v65;
              }

              while (v65);
            }

            sub_22C4706F0();

            v35 = v84;
          }
        }

        else
        {
          (*v83)(v86, v96, v87);
          MEMORY[0x2318B8B10](0);
          sub_22C36D724();
          sub_22C472684(&qword_27D9BC858, v58, MEMORY[0x277CC9600]);
          sub_22C37EBB4();
          sub_22C909F8C();
          v59 = sub_22C36EBF0();
          v60(v59);
        }

        sub_22C909FFC();

        sub_22C472774();
LABEL_24:
        sub_22C472630();
        goto LABEL_25;
      }

      MEMORY[0x2318B8B10](2);
      sub_22C36BAFC();
      sub_22C909FFC();

LABEL_25:
      v76 = *(v32 + v35);
      MEMORY[0x2318B8B10](*(v76 + 16));
      v77 = *(v76 + 16);
      if (v77)
      {
        v78 = (v76 + 32);
        do
        {
          v79 = *v78++;
          MEMORY[0x2318B8B10](v79);
          --v77;
        }

        while (v77);
      }

      ++v34;
      sub_22C472630();
      if (v34 == v99)
      {
        goto LABEL_29;
      }
    }

    sub_22C388F00();
    sub_22C4725DC();
    MEMORY[0x2318B8B10](0);
    sub_22C382F78();
    sub_22C472588();
    v49 = swift_getEnumCaseMultiPayload();
    if (v49)
    {
      if (v49 == 1)
      {
        sub_22C379FD4();
        v50 = v88;
        sub_22C4725DC();
        MEMORY[0x2318B8B10](1);
        sub_22C4706F0();
        sub_22C7EDAF8(v0, *(v50 + 8), v51, v52, v53, v54, v55, v56, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
        sub_22C90963C();
        sub_22C38A8C0();
        sub_22C472684(&qword_27D9BC850, v57, MEMORY[0x277D72E20]);
        sub_22C36BAFC();
        sub_22C909F8C();
        sub_22C37F104();
        sub_22C472630();
      }

      else
      {
        v70 = *v95;
        v92 = v95[1];
        MEMORY[0x2318B8B10](2);
        v71 = *(v70 + 16);
        MEMORY[0x2318B8B10](v71);
        if (v71)
        {
          sub_22C901FAC();
          sub_22C372570();
          v73 = v70 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
          v75 = *(v74 + 72);
          sub_22C472684(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
          do
          {
            sub_22C909F8C();
            v73 += v75;
            --v71;
          }

          while (v71);
        }

        sub_22C4706F0();

        v35 = v84;
      }
    }

    else
    {
      v62 = v86;
      v61 = v87;
      (*v83)(v86, v95, v87);
      MEMORY[0x2318B8B10](0);
      sub_22C36D724();
      sub_22C472684(&qword_27D9BC858, v63, MEMORY[0x277CC9600]);
      sub_22C37EBB4();
      sub_22C909F8C();
      (*v82)(v62, v61);
    }

    sub_22C472774();
    goto LABEL_24;
  }

LABEL_29:
  sub_22C36CC48();
}

void sub_22C470F4C()
{
  sub_22C47272C();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      MEMORY[0x2318B8B10](v3);
      --v0;
    }

    while (v0);
  }
}

void sub_22C470F8C(uint64_t a1, uint64_t a2)
{
  sub_22C382C88();
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      memcpy(v6, v5, sizeof(v6));
      memcpy(__dst, v5, sizeof(__dst));
      sub_22C472384(v6, v7);
      Statement.hash(into:)(v2);
      memcpy(v7, __dst, sizeof(v7));
      sub_22C4723E0(v7);
      v5 += 208;
      --v3;
    }

    while (v3);
  }
}

void sub_22C47102C()
{
  sub_22C47272C();
  if (v0)
  {
    v2 = (v1 + 56);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;
      if (*(v2 - 2))
      {
        sub_22C90B64C();

        sub_22C909FFC();
        if (!v4)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_22C90B64C();
        if (!v4)
        {
LABEL_7:
          sub_22C90B64C();
          MEMORY[0x2318B8B10](v3);
          goto LABEL_8;
        }
      }

      sub_22C90B64C();
LABEL_8:

      v2 += 32;
      --v0;
    }

    while (v0);
  }
}

void sub_22C4710DC()
{
  sub_22C47272C();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {

      sub_22C38B418();
      sub_22C909FFC();

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

void sub_22C47113C()
{
  sub_22C36BA7C();
  sub_22C47272C();
  if (v0)
  {
    v2 = v1 + 72;
    do
    {

      sub_22C38B418();
      sub_22C909FFC();
      sub_22C909FFC();
      sub_22C909FFC();

      v2 += 48;
      --v0;
    }

    while (v0);
  }

  sub_22C36CC48();
}

void sub_22C4711E4()
{
  sub_22C36BA7C();
  v3 = v2;
  v4 = sub_22C3704C4();
  v5 = type metadata accessor for ContextRule(v4);
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  sub_22C36FC38();
  if (v1)
  {
    v9 = v0 + *(v5 + 24);
    sub_22C36BA94();
    v11 = v3 + v10;
    v13 = *(v7 + 72);
    do
    {
      sub_22C370018();
      sub_22C472588();
      sub_22C909FFC();
      sub_22C90355C();
      sub_22C37FD24();
      sub_22C472684(&qword_27D9BC838, v12, MEMORY[0x277D1EB68]);
      sub_22C909F8C();
      if (*(v9 + 8))
      {
        sub_22C90B64C();
        sub_22C909FFC();
        sub_22C909FFC();
      }

      else
      {
        sub_22C90B64C();
      }

      sub_22C472630();
      v11 += v13;
      --v1;
    }

    while (v1);
  }

  sub_22C36CC48();
}

void sub_22C471388()
{
  sub_22C47272C();
  if (v0)
  {
    sub_22C38C358();
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      switch(v3)
      {
        case 3:
        case 4:
          sub_22C47281C();
          break;
        default:
          break;
      }

      sub_22C909FFC();

      --v0;
    }

    while (v0);
  }
}

void sub_22C4714BC()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C90952C();
  sub_22C369824();
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = *(v1 + 16);
  MEMORY[0x2318B8B10](v9);
  v24 = v9;
  if (v9)
  {
    v10 = 0;
    v23 = v1 + 32;
    do
    {
      v11 = *(v23 + 24 * v10 + 16);

      sub_22C909FFC();
      MEMORY[0x2318B8B10](*(v11 + 16));
      v12 = *(v11 + 16);
      if (v12)
      {
        v25 = v10;
        sub_22C36BA94();
        v13 = v3;
        v16 = v14 + v15;
        v18 = *(v17 + 72);
        v19 = *(v17 + 16);
        do
        {
          v19(v8, v16, v4);
          sub_22C3773C8();
          sub_22C472684(&qword_28142FA80, v20, MEMORY[0x277D72D68]);
          sub_22C909F8C();
          v21 = sub_22C370018();
          v22(v21);
          v16 += v18;
          --v12;
        }

        while (v12);

        v10 = v25;
        v3 = v13;
      }

      else
      {
      }

      ++v10;
    }

    while (v10 != v24);
  }

  sub_22C36CC48();
}

void sub_22C471738(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  sub_22C382C88();
  if (v6)
  {
    a3(0);
    sub_22C372570();
    v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v15 = *(v14 + 72);
    sub_22C472684(a4, a5, a6);
    do
    {
      sub_22C47274C();
      sub_22C909F8C();
      v13 += v15;
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_22C471854(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x2318B8B10](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      v8 = *v6++;
      v7 = v8;
      switch(v8 >> 62)
      {
        case 1uLL:
          MEMORY[0x2318B8B10](1);
          goto LABEL_9;
        case 2uLL:
          v9 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v10 = 2;
          goto LABEL_7;
        case 3uLL:
          v9 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v10 = 3;
LABEL_7:
          MEMORY[0x2318B8B10](v10);

          sub_22C471854(a1, v9);
          break;
        default:
          MEMORY[0x2318B8B10](0);
LABEL_9:

          sub_22C909FFC();
          break;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_22C4719E8()
{
  sub_22C36BA7C();
  v2 = v1;
  v3 = sub_22C3704C4();
  type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem(v3);
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C36FC38();
  if (v0)
  {
    sub_22C36BA94();
    v8 = v2 + v7;
    v9 = *(v5 + 72);
    do
    {
      sub_22C370018();
      sub_22C472588();
      sub_22C901FAC();
      sub_22C472684(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
      sub_22C37EBB4();
      sub_22C909F8C();
      sub_22C90B64C();
      sub_22C90B64C();
      sub_22C472630();
      v8 += v9;
      --v0;
    }

    while (v0);
  }

  sub_22C36CC48();
}

uint64_t sub_22C471B80(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v9 = a3(a2);
  MEMORY[0x2318B8B10](v9);
  result = a4(a2);
  if (result)
  {
    v11 = result;
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v11; ++i)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2318B8460](i, a2);
        }

        else
        {
        }

        a5(a1);
      }
    }
  }

  return result;
}

uint64_t sub_22C471C48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x2318B8B10](v4);
  if (v4)
  {
    v6 = (a2 + 48);
    do
    {
      v7 = *v6;
      v6 += 3;
      v8 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      swift_retain_n();

      sub_22C909FFC();
      switch(v7 >> 62)
      {
        case 1uLL:
          v9 = 1;
          goto LABEL_9;
        case 2uLL:
          v10 = *(v8 + 16);
          v11 = 2;
          goto LABEL_7;
        case 3uLL:
          v10 = *(v8 + 16);
          v11 = 3;
LABEL_7:
          MEMORY[0x2318B8B10](v11);

          sub_22C471854(a1, v10);
          break;
        default:
          v9 = 0;
LABEL_9:
          MEMORY[0x2318B8B10](v9);

          sub_22C909FFC();
          break;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t sub_22C471D70()
{
  result = qword_27D9BC7C8;
  if (!qword_27D9BC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC7C8);
  }

  return result;
}

unint64_t sub_22C471DC4()
{
  result = qword_27D9BC7D0;
  if (!qword_27D9BC7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC7D0);
  }

  return result;
}

unint64_t sub_22C471E1C()
{
  result = qword_27D9BC7D8;
  if (!qword_27D9BC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC7D8);
  }

  return result;
}

unint64_t sub_22C471E74()
{
  result = qword_27D9BC7E0;
  if (!qword_27D9BC7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC7E0);
  }

  return result;
}

unint64_t sub_22C471ECC()
{
  result = qword_27D9BC7E8;
  if (!qword_27D9BC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC7E8);
  }

  return result;
}

uint64_t sub_22C471F20(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 8))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_22C471F74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BNFGrammarRenderer(_BYTE *result, int a2, int a3)
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

void sub_22C47216C()
{
  sub_22C36BA7C();
  v2 = v1;
  v3 = sub_22C3704C4();
  type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(v3);
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C36FC38();
  if (v0)
  {
    sub_22C36BA94();
    v8 = v2 + v7;
    v9 = *(v5 + 72);
    do
    {
      sub_22C370018();
      sub_22C472588();
      sub_22C9036EC();
      sub_22C472684(&qword_281435770, MEMORY[0x277D1ED00], MEMORY[0x277D1ED10]);
      sub_22C37EBB4();
      sub_22C909F8C();
      sub_22C90B64C();
      sub_22C9037DC();
      sub_22C472758();
      sub_22C472684(&qword_27D9BC7F0, v10, MEMORY[0x277D1ED58]);
      sub_22C909F8C();
      sub_22C472630();
      v8 += v9;
      --v0;
    }

    while (v0);
  }

  sub_22C36CC48();
}

uint64_t sub_22C4722FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22C472340(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22C472434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
  }
}

uint64_t sub_22C472480(uint64_t a1, uint64_t a2, uint64_t a3)
{

  if ((a3 & 0x2000000000000000) != 0)
  {
  }

  return result;
}

uint64_t sub_22C472588()
{
  v1 = sub_22C371718();
  v2(v1);
  sub_22C36985C();
  v3 = sub_22C36BA00();
  v4(v3);
  return v0;
}

uint64_t sub_22C4725DC()
{
  v1 = sub_22C371718();
  v2(v1);
  sub_22C36985C();
  v3 = sub_22C36BA00();
  v4(v3);
  return v0;
}

uint64_t sub_22C472630()
{
  v1 = sub_22C3704C4();
  v2(v1);
  sub_22C36985C();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_22C472684(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C4726CC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

void sub_22C47272C()
{

  JUMPOUT(0x2318B8B10);
}

void sub_22C4727E4()
{
  v2 = *(v0 + 16) + 1;

  sub_22C590240(0, v2, 1, v0);
}

uint64_t sub_22C47283C()
{

  return sub_22C472434(v1, v2, v0);
}

unint64_t sub_22C47285C@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a1 >> 62;
  if (v6)
  {
    v13 = v5 >> 62;
    if (v5 >> 62 == 1)
    {
      v14 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v15 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if (v6 == 1)
      {
        v17 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v16 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        if (v14 != v17 || v15 != v16)
        {
          if (sub_22C90B4FC())
          {
            v16 = v15;
          }

          else
          {
            v14 = v17;
          }
        }

        sub_22C36A83C();
        result = swift_allocObject();
        *(result + 16) = v14;
        *(result + 24) = v16;
        goto LABEL_26;
      }

LABEL_25:

      sub_22C36A83C();
      result = swift_allocObject();
      *(result + 16) = v14;
      *(result + 24) = v15;
LABEL_26:
      v4 = result | 0x4000000000000000;
      goto LABEL_27;
    }

    if (!v13)
    {
      v7 = *(v5 + 16);
      v8 = *(v5 + 24);
      goto LABEL_13;
    }

    if (v6 == 1)
    {
      v14 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v15 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      goto LABEL_25;
    }

    if (v13 == 2)
    {
      v19 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (v6 == 2)
      {
        v20 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

        v21 = sub_22C473658(v19, v20);

        if (v21)
        {
          goto LABEL_36;
        }

        goto LABEL_37;
      }
    }

    else
    {
      if (v6 != 2)
      {
        v22 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v23 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

        LOBYTE(v22) = sub_22C473658(v22, v23);

        if (v22)
        {
LABEL_36:

          goto LABEL_27;
        }

LABEL_37:

        v4 = v5;
        goto LABEL_27;
      }

      v19 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    }

    result = swift_allocObject();
    *(result + 16) = v19;
    v4 = result | 0x8000000000000000;
    goto LABEL_27;
  }

  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  if (v5 >> 62)
  {
LABEL_13:

    sub_22C36A83C();
    result = swift_allocObject();
    v4 = result;
    *(result + 16) = v7;
    *(result + 24) = v8;
    goto LABEL_27;
  }

  v10 = *(v5 + 16);
  v9 = *(v5 + 24);
  v11 = v10 == v7 && v9 == v8;
  if (v11 || (sub_22C90B4FC() & 1) == 0)
  {
    v9 = v8;
    v10 = v7;
  }

  sub_22C36A83C();
  result = swift_allocObject();
  v4 = result;
  *(result + 16) = v10;
  *(result + 24) = v9;
LABEL_27:
  *a3 = v4;
  return result;
}

uint64_t sub_22C472AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC860, &qword_22C914920);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v34 - v5;
  v6 = type metadata accessor for SegmentedPrompt.Segment(0);
  sub_22C369824();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v34 - v14;
  v16 = 0;
  v17 = *(a2 + 16);
  while (v17 != v16)
  {
    sub_22C474C08();
    v20 = v19 & ~v18;
    v21 = *(v8 + 72) * v16;
    result = sub_22C474AC0(a2 + v20 + v21, v15);
    v22 = *(a1 + 16);
    if (v16 == v22)
    {
      sub_22C474B24(v15);
      return 0;
    }

    if (v16++ >= v22)
    {
      __break(1u);
      goto LABEL_24;
    }

    sub_22C474AC0(a1 + v20 + v21, v12);
    sub_22C57ADA4();
    if (v23)
    {
      if (sub_22C472D84(*&v12[*(v6 + 20)], *&v15[*(v6 + 20)]))
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_22C57A6B4();
      if (v24)
      {
LABEL_19:
        sub_22C474B24(v12);
        sub_22C474B24(v15);
        return 1;
      }
    }

    sub_22C57ADA4();
    if (v25)
    {
      v26 = sub_22C472D84(*&v15[*(v6 + 20)], *&v12[*(v6 + 20)]);
    }

    else
    {
      sub_22C57A6B4();
    }

    v27 = v26;
    sub_22C474B24(v12);
    result = sub_22C474B24(v15);
    if (v27)
    {
      return 0;
    }
  }

  v28 = *(a1 + 16);
  v29 = v17 != v28;
  if (v17 == v28)
  {
    v33 = 1;
    v32 = v35;
    goto LABEL_21;
  }

  if (v17 < v28)
  {
    sub_22C474C08();
    v32 = v35;
    sub_22C474AC0(a1 + (v31 & ~v30) + *(v8 + 72) * v17, v35);
    v33 = 0;
LABEL_21:
    sub_22C36C640(v32, v33, 1, v6);
    sub_22C3770B0(v32, &qword_27D9BC860, &qword_22C914920);
    return v29;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22C472D84(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (v3 != v2)
  {
    v4 = *(result + 16);
    if (v2 == v4)
    {
      return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
    }

    if (v2 >= v4)
    {
      __break(1u);
      goto LABEL_14;
    }

    v5 = *(a2 + 32 + v2);
    v6 = *(result + 32 + v2);
    if (v6 == 1 && ((v5 ^ 1) & 1) != 0)
    {
      return 1;
    }

    ++v2;
    if ((v5 & (v6 ^ 1)) == 1)
    {
      return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
    }
  }

  v7 = *(result + 16);
  if (v3 == v7)
  {
    return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
  }

  if (v3 < v7)
  {
    return 1;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_22C472E00(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v14 = result;
  v15 = *(a2 + 16);
  v3 = (result + 48);
  v4 = (a2 + 48);
  while (1)
  {
    if (v15 == v2)
    {
      v13 = *(v14 + 16);
      if (v15 == v13)
      {
        return 0;
      }

      if (v15 >= v13)
      {
        goto LABEL_32;
      }

      return 1;
    }

    v5 = *(v14 + 16);
    if (v2 == v5)
    {
      return 0;
    }

    if (v2 >= v5)
    {
      break;
    }

    v17 = v3;
    v18 = v2;
    v16 = v4;
    v6 = *v4;
    v7 = *v3;
    v8 = *(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1);
    v9 = v8;
    if (v8 || (sub_22C36BC58(), (sub_22C90B4FC() & 1) != 0))
    {
      v21 = v7;
      v22 = v6;

      if ((static BNFGrammarRuleExpression.== infix(_:_:)(&v22, &v21) & 1) != 0 || (v21 = v6, v22 = v6, v20 = v7, sub_22C47285C(&v21, &v20, &v19), v10 = static BNFGrammarRuleExpression.== infix(_:_:)(&v22, &v19), , (v10 & 1) == 0))
      {
        if (v9)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

LABEL_27:

      return 1;
    }

    sub_22C36BC58();
    v11 = sub_22C90B4FC();

    if (v11)
    {
      goto LABEL_27;
    }

LABEL_18:
    sub_22C474BF4();
    if ((sub_22C90B4FC() & 1) == 0)
    {
      sub_22C474BF4();
      v12 = sub_22C90B4FC();

      goto LABEL_23;
    }

LABEL_19:
    v21 = v6;
    v22 = v7;
    if (static BNFGrammarRuleExpression.== infix(_:_:)(&v22, &v21))
    {

      goto LABEL_24;
    }

    v21 = v7;
    v22 = v7;
    v20 = v6;
    sub_22C47285C(&v21, &v20, &v19);
    v12 = static BNFGrammarRuleExpression.== infix(_:_:)(&v22, &v19);

LABEL_23:

    if (v12)
    {
      return 0;
    }

LABEL_24:
    v3 = v17 + 3;
    v4 = v16 + 3;
    v2 = v18 + 1;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22C4730A0(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v3 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v34 - v4;
  v5 = sub_22C901FAC();
  sub_22C369824();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v34 - v13;
  v15 = 0;
  v35 = a2;
  v16 = *(a2 + 16);
  v37 = v7 + 16;
  v17 = (v7 + 8);
  while (v16 != v15)
  {
    sub_22C474C08();
    v20 = v19 & ~v18;
    v21 = *(v7 + 72) * v15;
    v22 = *(v7 + 16);
    result = v22(v14, v35 + v20 + v21, v5);
    v23 = *(v36 + 16);
    if (v15 == v23)
    {
      (*v17)(v14, v5);
      return 0;
    }

    if (v15++ >= v23)
    {
      __break(1u);
      goto LABEL_18;
    }

    v22(v11, v36 + v20 + v21, v5);
    sub_22C474B80();
    if (sub_22C90A06C())
    {
      v33 = *v17;
      (*v17)(v11, v5);
      v33(v14, v5);
      return 1;
    }

    v24 = sub_22C90A06C();
    v25 = *v17;
    (*v17)(v11, v5);
    result = (v25)(v14, v5);
    if (v24)
    {
      return 0;
    }
  }

  v26 = *(v36 + 16);
  v27 = v16 != v26;
  if (v16 == v26)
  {
    v32 = 1;
    v31 = v34;
    goto LABEL_15;
  }

  if (v16 < v26)
  {
    sub_22C474C08();
    v31 = v34;
    (*(v7 + 16))(v34, v30 + (v29 & ~v28) + *(v7 + 72) * v16, v5);
    v32 = 0;
LABEL_15:
    sub_22C36C640(v31, v32, 1, v5);
    sub_22C3770B0(v31, &qword_27D9BC030, &unk_22C911CC0);
    return v27;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_22C4733B4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v7 = ~(-1 << v5);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a2 + 64);
  v27 = a1 + 64;
  v9 = -1 << *(a1 + 32);
  if (-v9 < 64)
  {
    v6 = ~(-1 << -v9);
  }

  v10 = v6 & *(a1 + 64);
  v11 = (v5 + 63) >> 6;
  v26 = (63 - v9) >> 6;

  v12 = 0;
  v13 = 0;
  v28 = v2;
  while (v8)
  {
LABEL_12:
    v15 = *(*(v2 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v8)))));
    if (!v10)
    {
      v16 = v13;
      while (1)
      {
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v13 >= v26)
        {

          v24 = sub_22C377BF0();
          sub_22C36A674(v24);

          goto LABEL_28;
        }

        v10 = *(v27 + 8 * v13);
        ++v16;
        if (v10)
        {
          goto LABEL_17;
        }
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_17:
    v17 = v3;
    v18 = *(*(v3 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v10)))));

    if (sub_22C472AD8(v19, v15))
    {
      sub_22C36A674(v17);

LABEL_29:
      sub_22C388F1C();
      return;
    }

    v8 &= v8 - 1;
    v10 &= v10 - 1;
    v20 = sub_22C472AD8(v15, v18);

    v3 = v17;
    v2 = v28;
    if (v20)
    {
      sub_22C36A674(v3);
LABEL_28:

      goto LABEL_29;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v14 >= v11)
    {
      break;
    }

    v8 = *(v4 + 8 * v14);
    ++v12;
    if (v8)
    {
      v12 = v14;
      goto LABEL_12;
    }
  }

  if (v10)
  {
LABEL_25:
    v23 = sub_22C377BF0();
    sub_22C36A674(v23);
    goto LABEL_29;
  }

  v21 = v13;
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v26)
    {
      v25 = sub_22C377BF0();
      sub_22C36A674(v25);
      goto LABEL_29;
    }

    ++v21;
    if (*(v27 + 8 * v22))
    {
      goto LABEL_25;
    }
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_22C473658(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 32;
  v6 = result + 32;
  while (1)
  {
    if (v4 == v3)
    {
      v12 = *(v2 + 16);
      if (v4 == v12)
      {
        return 0;
      }

      if (v4 >= v12)
      {
        __break(1u);
LABEL_15:
      }

      return 1;
    }

    v7 = *(v2 + 16);
    if (v3 == v7)
    {
      return 0;
    }

    if (v3 >= v7)
    {
      break;
    }

    v8 = *(v5 + 8 * v3);
    v9 = *(v6 + 8 * v3);
    v15 = v9;
    v16 = v8;

    if ((static BNFGrammarRuleExpression.== infix(_:_:)(&v16, &v15) & 1) == 0)
    {
      v15 = v8;
      v16 = v8;
      v14 = v9;
      sub_22C47285C(&v15, &v14, &v13);
      v10 = static BNFGrammarRuleExpression.== infix(_:_:)(&v16, &v13);

      if (v10)
      {
        goto LABEL_15;
      }
    }

    v15 = v8;
    v16 = v9;
    if (static BNFGrammarRuleExpression.== infix(_:_:)(&v16, &v15))
    {
    }

    else
    {
      v15 = v9;
      v16 = v9;
      v14 = v8;
      sub_22C47285C(&v15, &v14, &v13);
      v11 = static BNFGrammarRuleExpression.== infix(_:_:)(&v16, &v13);

      if (v11)
      {
        return 0;
      }
    }

    ++v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C4737D0(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = (result + 48);
  v5 = (a2 + 48);
  while (v3 != v2)
  {
    v6 = *(result + 16);
    if (v2 == v6)
    {
      return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
    }

    if (v2 >= v6)
    {
      __break(1u);
      goto LABEL_21;
    }

    v7 = *v5;
    v8 = *v4;
    if (v7 == v8)
    {
      v9 = *(v4 - 2);
      v10 = *(v5 - 2) >> 14;
      if (v10 == v9 >> 14)
      {
        v11 = *(v4 - 1);
        v12 = *(v5 - 1) >> 14;
        if (v12 < v11 >> 14)
        {
          return 1;
        }

        if (v11 >> 14 < v12)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }
      }

      else
      {
        v13 = v9 >> 14;
        if (v10 < v13)
        {
          return 1;
        }

        if (v13 < v10)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }
      }
    }

    else
    {
      if (v7 < v8)
      {
        return 1;
      }

      if (v8 < v7)
      {
        return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
      }
    }

    v4 += 24;
    v5 += 24;
    ++v2;
  }

  v14 = *(result + 16);
  if (v3 == v14)
  {
    return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
  }

  if (v3 < v14)
  {
    return 1;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t static BNFGrammarRuleExpression.< infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v8 = *a2;
  v9 = v2;
  if (static BNFGrammarRuleExpression.== infix(_:_:)(&v9, &v8))
  {
    v4 = 0;
  }

  else
  {
    v8 = v2;
    v9 = v2;
    v7 = v3;
    sub_22C47285C(&v8, &v7, &v6);
    v4 = static BNFGrammarRuleExpression.== infix(_:_:)(&v9, &v6);
  }

  return v4 & 1;
}

BOOL sub_22C473928(unint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = a1;
  return (static BNFGrammarRuleExpression.< infix(_:_:)(&v3, &v4) & 1) == 0;
}

uint64_t sub_22C47395C(unint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a4)
  {
    switch(a3)
    {
      case 1:
        v4 = 2;
        if ((a2 & 1) != 0 && a1 == 1)
        {
          return sub_22C474BD8(0);
        }

        goto LABEL_27;
      case 2:
        v4 = 3;
        if ((a2 & 1) == 0 || a1 != 2)
        {
          goto LABEL_27;
        }

        return sub_22C474BD8(0);
      case 3:
        v4 = 4;
        if ((a2 & 1) == 0 || a1 != 3)
        {
          goto LABEL_27;
        }

        return sub_22C474BD8(0);
      case 4:
        v4 = 5;
        if ((a2 & 1) == 0 || a1 != 4)
        {
          goto LABEL_27;
        }

        return sub_22C474BD8(0);
      case 5:
        v4 = 6;
        if ((a2 & 1) == 0 || a1 != 5)
        {
          goto LABEL_27;
        }

        return sub_22C474BD8(0);
      case 6:
        v4 = 7;
        if ((a2 & 1) != 0 && a1 > 5)
        {
          return sub_22C474BD8(0);
        }

        goto LABEL_27;
      default:
        v4 = 1;
        if ((a2 & 1) != 0 && !a1)
        {
          return sub_22C474BD8(0);
        }

LABEL_27:
        if (a2)
        {
          goto LABEL_28;
        }

        v6 = 0;
        break;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      return sub_22C474BD8(a3 < a1);
    }

    v4 = 0;
LABEL_28:
    v6 = 1;
    switch(a1)
    {
      case 1uLL:
        v6 = 2;
        break;
      case 2uLL:
        v6 = 3;
        break;
      case 3uLL:
        v6 = 4;
        break;
      case 4uLL:
        v6 = 5;
        break;
      case 5uLL:
        v6 = 6;
        break;
      case 6uLL:
        v6 = 7;
        break;
      default:
        return sub_22C474BD8(v4 < v6);
    }
  }

  return sub_22C474BD8(v4 < v6);
}

BOOL sub_22C473A94(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    if (a2)
    {
      v4 = 0;
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  if (a4 == 1)
  {
    if (a2 != 1)
    {
      v4 = 1;
      goto LABEL_12;
    }

LABEL_21:
    v6 = 0;
    return sub_22C373304(v6);
  }

  if (a4 != 2)
  {
    if (a2 < 3)
    {
      v4 = 2;
      goto LABEL_12;
    }

    if (a3 != a1 || a4 != a2)
    {
      sub_22C36A88C();
      if ((sub_22C90B4FC() & 1) == 0)
      {
        sub_22C36A88C();
        v6 = sub_22C90B4FC();
        return sub_22C373304(v6);
      }
    }

    goto LABEL_21;
  }

  if (a2 == 2)
  {
    goto LABEL_21;
  }

  v4 = 3;
LABEL_12:
  if (a2 > 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = qword_22C914928[a2];
  }

  v6 = v4 < v5;
  return sub_22C373304(v6);
}

BOOL sub_22C473B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  v10[0] = a5;
  v10[1] = a6;
  v10[2] = a7;
  v10[3] = a8;
  static RootedBNFGrammar.< infix(_:_:)(v10, v11);
  return (v8 & 1) == 0;
}

BOOL sub_22C473BCC(uint64_t a1, uint64_t a2)
{
  sub_22C370600(a1, a2);
  if (v2)
  {
    v3 = type metadata accessor for SegmentedPrompt.Segment(0);
    v4 = sub_22C371728(v3);
    v6 = sub_22C472D84(v4, v5);
  }

  else
  {
    sub_22C57A6B4();
  }

  return sub_22C373304(v6);
}

BOOL sub_22C473C28(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C3885F0(a1, a2);
  v3 = sub_22C57B324(v2);
  return sub_22C373304(v3);
}

BOOL sub_22C473C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C38B88C(a1, a2, a3);
  if (v7)
  {
    v8 = sub_22C472AD8(v5, v3);
  }

  else
  {
    v8 = sub_22C4730A0(v6, v4);
  }

  return sub_22C373304(v8);
}

BOOL sub_22C473C94(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C3885F0(a1, a2);
  v3 = sub_22C57BF08(v2);
  return sub_22C373304(v3);
}

BOOL sub_22C473CB4(uint64_t a1, uint64_t a2)
{
  sub_22C3885F0(a1, a2);
  sub_22C57A6B4();
  return sub_22C373304(v2);
}

BOOL sub_22C473CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v7[0] = a4;
  v7[1] = a5;
  v7[2] = a6;
  return (static BNFGrammarRule.< infix(_:_:)(v7, v8) & 1) == 0;
}

uint64_t sub_22C473DBC()
{
  sub_22C36D73C();
  v6 = v4 < v5;
  if (v4 == v7 >> 14)
  {
    v8 = v3;
  }

  else
  {
    v8 = v6;
  }

  if (v1 == v0)
  {
    return sub_22C474BD8(v8);
  }

  else
  {
    return sub_22C474BD8(v2);
  }
}

uint64_t sub_22C473DF8(unint64_t a1, unint64_t a2, unsigned __int8 a3, unint64_t a4, unint64_t a5, unsigned __int8 a6)
{
  if (a1 >> 14 == a4 >> 14)
  {
    v6 = a2 >> 14 < a5 >> 14;
  }

  else
  {
    v6 = a1 >> 14 < a4 >> 14;
  }

  if (a3 == a6)
  {
    return sub_22C474BD8(v6);
  }

  else
  {
    return sub_22C474BD8(a3 < a6);
  }
}

BOOL sub_22C473EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v7[0] = a4;
  v7[1] = a5;
  v7[2] = a6;
  return (static BNFGrammarRule.< infix(_:_:)(v8, v7) & 1) == 0;
}

BOOL sub_22C473F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C46D6C8();
  if (v8)
  {
    v9 = sub_22C472AD8(a4, a2);
  }

  else
  {
    v9 = sub_22C4730A0(a3, a1);
  }

  return sub_22C373304(v9);
}

BOOL sub_22C473FFC(uint64_t a1, uint64_t a2)
{
  sub_22C57ADA4();
  if (v2)
  {
    v3 = type metadata accessor for SegmentedPrompt.Segment(0);
    v4 = sub_22C371728(v3);
    v6 = sub_22C472D84(v4, v5);
  }

  else
  {
    sub_22C57A6B4();
  }

  return sub_22C373304(v6);
}

BOOL sub_22C47404C(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C3885F0(a1, a2);
  v4 = sub_22C472AD8(v2, v3);
  return sub_22C373304(v4);
}

BOOL sub_22C47406C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  v10[0] = a5;
  v10[1] = a6;
  v10[2] = a7;
  v10[3] = a8;
  static RootedBNFGrammar.< infix(_:_:)(v11, v10);
  return (v8 & 1) == 0;
}

BOOL sub_22C4740AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    if (a4)
    {
      v4 = 0;
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  if (a2 == 1)
  {
    if (a4 != 1)
    {
      v4 = 1;
      goto LABEL_12;
    }

LABEL_21:
    v6 = 0;
    return sub_22C373304(v6);
  }

  if (a2 != 2)
  {
    if (a4 < 3)
    {
      v4 = 2;
      goto LABEL_12;
    }

    if (a1 != a3 || a2 != a4)
    {
      sub_22C36BC58();
      if ((sub_22C90B4FC() & 1) == 0)
      {
        sub_22C36BC58();
        v6 = sub_22C90B4FC();
        return sub_22C373304(v6);
      }
    }

    goto LABEL_21;
  }

  if (a4 == 2)
  {
    goto LABEL_21;
  }

  v4 = 3;
LABEL_12:
  if (a4 > 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = qword_22C914928[a4];
  }

  v6 = v4 < v5;
  return sub_22C373304(v6);
}

uint64_t sub_22C474198(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if (a2)
  {
    switch(a1)
    {
      case 1:
        v4 = 2;
        if ((a4 & 1) != 0 && a3 == 1)
        {
          return sub_22C474BD8(0);
        }

        goto LABEL_27;
      case 2:
        v4 = 3;
        if ((a4 & 1) == 0 || a3 != 2)
        {
          goto LABEL_27;
        }

        return sub_22C474BD8(0);
      case 3:
        v4 = 4;
        if ((a4 & 1) == 0 || a3 != 3)
        {
          goto LABEL_27;
        }

        return sub_22C474BD8(0);
      case 4:
        v4 = 5;
        if ((a4 & 1) == 0 || a3 != 4)
        {
          goto LABEL_27;
        }

        return sub_22C474BD8(0);
      case 5:
        v4 = 6;
        if ((a4 & 1) == 0 || a3 != 5)
        {
          goto LABEL_27;
        }

        return sub_22C474BD8(0);
      case 6:
        v4 = 7;
        if ((a4 & 1) != 0 && a3 > 5)
        {
          return sub_22C474BD8(0);
        }

        goto LABEL_27;
      default:
        v4 = 1;
        if ((a4 & 1) != 0 && !a3)
        {
          return sub_22C474BD8(0);
        }

LABEL_27:
        if (a4)
        {
          goto LABEL_28;
        }

        v6 = 0;
        break;
    }
  }

  else
  {
    if ((a4 & 1) == 0)
    {
      return sub_22C474BD8(a1 < a3);
    }

    v4 = 0;
LABEL_28:
    v6 = 1;
    switch(a3)
    {
      case 1uLL:
        v6 = 2;
        break;
      case 2uLL:
        v6 = 3;
        break;
      case 3uLL:
        v6 = 4;
        break;
      case 4uLL:
        v6 = 5;
        break;
      case 5uLL:
        v6 = 6;
        break;
      case 6uLL:
        v6 = 7;
        break;
      default:
        return sub_22C474BD8(v4 < v6);
    }
  }

  return sub_22C474BD8(v4 < v6);
}

BOOL sub_22C4742D0(unint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = a1;
  return (static BNFGrammarRuleExpression.< infix(_:_:)(&v4, &v3) & 1) == 0;
}

uint64_t sub_22C474310(unint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = a1;
  return static BNFGrammarRuleExpression.< infix(_:_:)(&v3, &v4) & 1;
}

uint64_t sub_22C474340(uint64_t result, char a2, uint64_t a3, char a4)
{
  if (a4)
  {
    switch(a3)
    {
      case 1:
        v4 = 2;
        if ((a2 & 1) != 0 && result == 1)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }

        goto LABEL_27;
      case 2:
        v4 = 3;
        if ((a2 & 1) == 0 || result != 2)
        {
          goto LABEL_27;
        }

        return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
      case 3:
        v4 = 4;
        if ((a2 & 1) == 0 || result != 3)
        {
          goto LABEL_27;
        }

        return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
      case 4:
        v4 = 5;
        if ((a2 & 1) == 0 || result != 4)
        {
          goto LABEL_27;
        }

        return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
      case 5:
        v4 = 6;
        if ((a2 & 1) == 0 || result != 5)
        {
          goto LABEL_27;
        }

        return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
      case 6:
        v4 = 7;
        if ((a2 & 1) == 0 || result <= 5)
        {
          goto LABEL_27;
        }

        return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
      default:
        v4 = 1;
        if ((a2 & 1) != 0 && !result)
        {
          return result;
        }

LABEL_27:
        if (a2)
        {
          goto LABEL_28;
        }

        v5 = 0;
        break;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      return a3 < result;
    }

    v4 = 0;
LABEL_28:
    v5 = 1;
    switch(result)
    {
      case 1:
        v5 = 2;
        break;
      case 2:
        v5 = 3;
        break;
      case 3:
        v5 = 4;
        break;
      case 4:
        v5 = 5;
        break;
      case 5:
        v5 = 6;
        break;
      case 6:
        v5 = 7;
        break;
      default:
        return v4 < v5;
    }
  }

  return v4 < v5;
}

uint64_t sub_22C474474(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(a4)
  {
    case 0:
      if (a2)
      {
        v4 = 0;
        goto LABEL_12;
      }

      return 0;
    case 1:
      if (a2 != 1)
      {
        v4 = 1;
        goto LABEL_12;
      }

      return 0;
    case 2:
      if (a2 != 2)
      {
        v4 = 3;
LABEL_12:
        if (a2 > 2)
        {
          v5 = 2;
        }

        else
        {
          v5 = qword_22C914928[a2];
        }

        return v4 < v5;
      }

      return 0;
  }

  if (a2 < 3)
  {
    v4 = 2;
    goto LABEL_12;
  }

  if (a3 == a1 && a4 == a2)
  {
    return 0;
  }

  sub_22C36A88C();
  if (sub_22C90B4FC())
  {
    return 0;
  }

  sub_22C36A88C();

  return sub_22C90B4FC();
}

uint64_t sub_22C474564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  v10[0] = a5;
  v10[1] = a6;
  v10[2] = a7;
  v10[3] = a8;
  static RootedBNFGrammar.< infix(_:_:)(v10, v11);
  return v8 & 1;
}

void sub_22C4745A4(uint64_t a1, uint64_t a2)
{
  sub_22C370600(a1, a2);
  if (v2)
  {
    v3 = type metadata accessor for SegmentedPrompt.Segment(0);
    v4 = sub_22C371728(v3);

    sub_22C472D84(v4, v5);
  }

  else
  {

    sub_22C57A6B4();
  }
}

uint64_t sub_22C474634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C38B88C(a1, a2, a3);
  if (v7)
  {

    return sub_22C472AD8(v5, v3);
  }

  else
  {

    return sub_22C4730A0(v6, v4);
  }
}

uint64_t sub_22C4746D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v7[0] = a4;
  v7[1] = a5;
  v7[2] = a6;
  return static BNFGrammarRule.< infix(_:_:)(v7, v8) & 1;
}

uint64_t sub_22C4747C8()
{
  sub_22C36D73C();
  v6 = v4 < v5;
  if (v4 == v7 >> 14)
  {
    v8 = v3;
  }

  else
  {
    v8 = v6;
  }

  if (v1 == v0)
  {
    return v8;
  }

  else
  {
    return v2;
  }
}

uint64_t static BNFGrammarRule.< infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_22C371738(), (sub_22C90B4FC() & 1) != 0))
  {
    v7 = v3;
    v8 = v2;

    v5 = static BNFGrammarRuleExpression.< infix(_:_:)(&v8, &v7);

    return v5 & 1;
  }

  else
  {
    sub_22C371738();

    return sub_22C90B4FC();
  }
}

void static RootedBNFGrammar.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_22C474BE0();

  v2 = static BNFGrammarRule.== infix(_:_:)(&v7, &v6);

  if (v2)
  {
    sub_22C36BC58();
    sub_22C388F1C();

    sub_22C472E00(v3, v4);
  }

  else
  {
    sub_22C474BE0();

    static BNFGrammarRule.< infix(_:_:)(&v7, &v6);

    sub_22C388F1C();
  }
}

uint64_t sub_22C474AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SegmentedPrompt.Segment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C474B24(uint64_t a1)
{
  v2 = type metadata accessor for SegmentedPrompt.Segment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C474B80()
{
  result = qword_27D9BC868;
  if (!qword_27D9BC868)
  {
    sub_22C901FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC868);
  }

  return result;
}

uint64_t sub_22C474C14@<X0>(void *a1@<X8>)
{
  v5 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  v7 = v1[3];
  sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  v37 = v5;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  *(inited + 48) = v8;
  v42 = inited;
  v39 = v8;

  v40 = v6;

  sub_22C3CC3D8(v7);
  sub_22C4771F4(v42);
  v11 = v10;
  v13 = v12;
  v14 = v12 + 32;
  KeyPath = swift_getKeyPath();
  v16 = 0;
  v17 = *(v13 + 16);
  v18 = v11 + 40;
  v41 = MEMORY[0x277D84F90];
LABEL_2:
  v19 = v18 + 16 * v16;
  while (v16 < v17)
  {
    if (v16 >= *(v11 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v16 >= *(v13 + 16))
    {
      goto LABEL_23;
    }

    swift_getAtKeyPath();

    v4 = v42;
    v2 = v43;
    v3 = v44;
    if (v43)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C5902A0(0, *(v41 + 16) + 1, 1, v41);
        v41 = v24;
      }

      v21 = *(v41 + 16);
      v20 = *(v41 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v25 = sub_22C369AB0(v20);
        v36 = v26;
        sub_22C5902A0(v25, v26, 1, v41);
        v22 = v36;
        v41 = v27;
      }

      ++v16;
      *(v41 + 16) = v22;
      v23 = (v41 + 24 * v21);
      v23[4] = v42;
      v23[5] = v43;
      v23[6] = v44;
      v18 = v11 + 40;
      goto LABEL_2;
    }

    sub_22C477CA8(v42, 0);
    v19 += 16;
    ++v16;
  }

  v14 = v40;

  v17 = v39;

  v2 = sub_22C862EFC(1, v41);
  KeyPath = v28;
  v3 = v29;
  v4 = v30;
  if ((v30 & 1) == 0)
  {
LABEL_14:
    sub_22C46FF28(v2, KeyPath, v3, v4);
    v32 = v31;
    goto LABEL_21;
  }

  sub_22C90B50C();
  swift_unknownObjectRetain_n();
  v33 = swift_dynamicCastClass();
  if (!v33)
  {
    swift_unknownObjectRelease();
    v33 = MEMORY[0x277D84F90];
  }

  v34 = *(v33 + 16);

  if (__OFSUB__(v4 >> 1, v3))
  {
    goto LABEL_24;
  }

  if (v34 != (v4 >> 1) - v3)
  {
LABEL_25:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    v32 = MEMORY[0x277D84F90];
  }

LABEL_21:
  swift_unknownObjectRelease();

  *a1 = v37;
  a1[1] = v14;
  a1[2] = v17;
  a1[3] = v32;
  return result;
}

void sub_22C474F34(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  LODWORD(v178) = a4;
  v176 = a3;
  v184 = a2;
  v182 = a1;
  v164 = a5;
  v6 = sub_22C90634C();
  sub_22C369824();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v185 = &v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v163 - v12;
  v14 = sub_22C90636C();
  sub_22C369824();
  v16 = v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v163 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v163 - v21;
  v175 = *v5;
  sub_22C90364C();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v23 = *(v16 + 8);
  v23(v20, v14);
  v24 = sub_22C90635C();
  v25 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v26 = swift_slowAlloc();
    v183 = v6;
    v27 = v26;
    *v26 = 0;
    v28 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v24, v25, v28, "PromptGrammar.minified", "", v27, 2u);
    v29 = v27;
    v6 = v183;
    MEMORY[0x2318B9880](v29, -1, -1);
  }

  (*(v8 + 16))(v185, v13, v6);
  sub_22C9063AC();
  swift_allocObject();
  v163 = sub_22C90639C();
  (*(v8 + 8))(v13, v6);
  v23(v22, v14);
  v30 = 0;
  v189 = 0;
  v190 = MEMORY[0x277D84F90];
  v31 = v175;
  v32 = *(v175 + 16);
  v33 = v175 + 32;
  v179 = xmmword_22C90F800;
  v174 = v175 + 32;
  v177 = v32;
LABEL_4:
  while (2)
  {
    if (v30 == v32)
    {
      v73 = v33;
      v75 = sub_22C47755C(v176, v189, v190);
      v76 = *(v31 + 16);
      if (!v76)
      {

        v81 = MEMORY[0x277D84F90];
LABEL_73:
        *v164 = v81;
        sub_22C476D58(v163);

        return;
      }

      v188 = MEMORY[0x277D84F90];
      v183 = v74;
      v77 = v76;
      sub_22C3B6E10(0, v76, 0);
      v78 = v183;
      v79 = v184;
      v80 = 0;
      v81 = v188;
      v178 = (v183 + 40);
      v185 = v75;
      v82 = v73;
      v165 = v77;
      while (1)
      {
        if (v80 >= *(v31 + 16))
        {
          goto LABEL_75;
        }

        v83 = v82 + 40 * v80;
        v84 = *v83;
        v85 = *(v83 + 8);
        v87 = *(v83 + 16);
        v86 = *(v83 + 24);
        LODWORD(v83) = *(v83 + 32);
        v177 = v87;
        LODWORD(v176) = v83;
        if ((v87 & 0x2000000000000000) != 0)
        {
          break;
        }

        v88 = v84;
        v89 = sub_22C36A8A0();
        v91 = v90;
        v93 = v92;
        sub_22C472434(v89, v94, v95);
        v82 = v93;
        v96 = v91;
        v97 = v88;
LABEL_68:
        v188 = v81;
        v158 = *(v81 + 16);
        v157 = *(v81 + 24);
        if (v158 >= v157 >> 1)
        {
          v160 = sub_22C369AB0(v157);
          v162 = v161;
          sub_22C3B6E10(v160, v158 + 1, 1);
          v82 = v162;
          v96 = v165;
          v78 = v183;
          v81 = v188;
        }

        ++v80;
        *(v81 + 16) = v158 + 1;
        v159 = v81 + 40 * v158;
        *(v159 + 32) = v97;
        *(v159 + 40) = v85;
        *(v159 + 48) = v177;
        *(v159 + 56) = v86;
        *(v159 + 64) = v176;
        v75 = v185;
        if (v80 == v96)
        {

          goto LABEL_73;
        }
      }

      v172 = v80;
      v173 = v86;
      v98 = v78;
      v99 = *(v78 + 16);
      v171 = v84;
      if (v75)
      {

        v100 = sub_22C36A8A0();
        sub_22C472434(v100, v101, v102);

        v103 = sub_22C36A8A0();
        sub_22C472434(v103, v104, v105);

        sub_22C7DA844(v84, v85, v98 + 32, v99, (v75 + 16));
        if ((v107 & 1) == 0)
        {
          v108 = v106;
LABEL_44:
          v118 = v182;
          v189 = v182;
          v190 = v79;
          v117 = v79;

          MEMORY[0x2318B7850](22565, 0xE200000000000000);
          sub_22C3A5908(&qword_27D9BB5D8, &unk_22C91A680);
          v119 = swift_allocObject();
          *(v119 + 16) = v179;
          *(v119 + 56) = MEMORY[0x277D83B88];
          *(v119 + 64) = MEMORY[0x277D83C10];
          *(v119 + 32) = v108;
          v84 = sub_22C90A14C();
          v169 = v120;

          goto LABEL_45;
        }
      }

      else
      {
        v109 = sub_22C7D9010(v84, v85, v98 + 32, v99);
        LODWORD(v181) = v110;

        v111 = sub_22C36A8A0();
        sub_22C472434(v111, v112, v113);

        v114 = sub_22C36A8A0();
        sub_22C472434(v114, v115, v116);
        v108 = v109;

        if ((v181 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      v169 = v85;
      v117 = v79;
      v118 = v182;
LABEL_45:
      v170 = v84;
      v187 = v177 & 0xDFFFFFFFFFFFFFFFLL;
      v78 = v183;
      sub_22C47683C(&v187, v75, v183, v118, v117, &v189);

      v121 = v189;
      v122 = v173;
      v123 = *(v173 + 16);
      if (!v123)
      {
        v151 = sub_22C36A8A0();
        sub_22C472480(v151, v152, v153);
        v154 = sub_22C36A8A0();
        sub_22C472480(v154, v155, v156);

        v86 = MEMORY[0x277D84F90];
        v96 = v165;
        v82 = v174;
        v31 = v175;
LABEL_67:
        v177 = v121 | 0x2000000000000000;
        v79 = v184;
        v80 = v172;
        v97 = v170;
        v85 = v169;
        goto LABEL_68;
      }

      v166 = v189;
      v167 = v85;
      v168 = v81;
      v187 = MEMORY[0x277D84F90];
      sub_22C3B64F4(0, v123, 0);
      v78 = v183;
      v124 = 0;
      v125 = v122;
      v86 = v187;
      v180 = v125 + 32;
      v181 = v123;
      while (1)
      {
        v126 = (v180 + 24 * v124);
        v127 = *v126;
        v128 = v126[1];
        v129 = v126[2];
        v130 = v78;
        v131 = *(v78 + 16);
        if (!v75)
        {
          break;
        }

        swift_retain_n();

        sub_22C7DA844(v127, v128, v130 + 32, v131, (v75 + 16));
        v133 = v132;
        v135 = v134;

        if (v135)
        {
          goto LABEL_61;
        }

LABEL_59:
        v138 = v182;
        v139 = v184;
        v189 = v182;
        v190 = v184;

        MEMORY[0x2318B7850](22565, 0xE200000000000000);
        sub_22C3A5908(&qword_27D9BB5D8, &unk_22C91A680);
        v140 = swift_allocObject();
        *(v140 + 16) = v179;
        *(v140 + 56) = MEMORY[0x277D83B88];
        *(v140 + 64) = MEMORY[0x277D83C10];
        *(v140 + 32) = v133;
        v127 = sub_22C90A14C();
        v142 = v141;

        v75 = v185;
LABEL_62:
        v186 = v129;
        v78 = v183;

        sub_22C47683C(&v186, v75, v78, v138, v139, &v189);

        v143 = v189;
        v187 = v86;
        v145 = *(v86 + 16);
        v144 = *(v86 + 24);
        if (v145 >= v144 >> 1)
        {
          v147 = sub_22C369AB0(v144);
          sub_22C3B64F4(v147, v145 + 1, 1);
          v78 = v183;
          v86 = v187;
        }

        ++v124;
        *(v86 + 16) = v145 + 1;
        v146 = (v86 + 24 * v145);
        v146[4] = v127;
        v146[5] = v142;
        v146[6] = v143;
        v75 = v185;
        if (v124 == v181)
        {
          v148 = v171;
          v149 = v167;
          v150 = v177;
          sub_22C472480(v171, v167, v177);
          sub_22C472480(v148, v149, v150);

          v82 = v174;
          v31 = v175;
          v96 = v165;
          v81 = v168;
          v121 = v166;
          goto LABEL_67;
        }
      }

      v133 = 0;
      v136 = v178;
      while (v131 != v133)
      {
        v137 = *(v136 - 1) == v127 && *v136 == v128;
        if (v137 || (sub_22C90B4FC() & 1) != 0)
        {
          swift_retain_n();

          goto LABEL_59;
        }

        ++v133;
        v136 += 2;
      }

      swift_retain_n();

      v75 = v185;
LABEL_61:

      v142 = v128;
      v139 = v184;
      v138 = v182;
      goto LABEL_62;
    }

    if (v30 < *(v31 + 16))
    {
      v34 = (v33 + 40 * v30);
      v35 = v34[2];
      ++v30;
      if ((v35 & 0x2000000000000000) == 0)
      {
        continue;
      }

      v36 = *v34;
      v37 = v34[1];
      v38 = v34[3];
      if (v178)
      {
        sub_22C37272C();

        v43 = v38;
      }

      else
      {
        sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
        v44 = swift_allocObject();
        *(v44 + 16) = v179;
        *(v44 + 32) = v36;
        *(v44 + 40) = v37;
        *(v44 + 48) = v35 & 0xDFFFFFFFFFFFFFFFLL;
        v188 = v44;
        sub_22C37272C();

        sub_22C3CC3D8(v38);
        v43 = v188;
      }

      v180 = v37;
      v181 = v36;
      v183 = v38;
      v185 = v35;
      v45 = *(v43 + 16);
      if (v45)
      {
        v188 = MEMORY[0x277D84F90];
        sub_22C3B5E2C(0, v45, 0, v39, v40, v41, v42);
        v46 = v188;
        v47 = (v43 + 40);
        do
        {
          v48 = *(v47 - 1);
          v49 = *v47;
          v188 = v46;
          v51 = *(v46 + 16);
          v50 = *(v46 + 24);

          if (v51 >= v50 >> 1)
          {
            sub_22C3B5E2C(v50 > 1, v51 + 1, 1, v52, v53, v54, v55);
            v46 = v188;
          }

          *(v46 + 16) = v51 + 1;
          v56 = v46 + 16 * v51;
          *(v56 + 32) = v48;
          *(v56 + 40) = v49;
          v47 += 3;
          --v45;
        }

        while (v45);
      }

      else
      {

        v46 = MEMORY[0x277D84F90];
      }

      v57 = 0;
      v58 = *(v46 + 16);
      while (1)
      {
LABEL_18:
        if (v57 == v58)
        {

          sub_22C472480(v181, v180, v185);
          v33 = v174;
          v31 = v175;
          v32 = v177;
          goto LABEL_4;
        }

        v59 = (v46 + 32 + 16 * v57);
        v60 = *v59;
        v61 = v59[1];
        ++v57;
        v62 = v189;
        v63 = v190;
        v64 = *(v190 + 16);
        if (!v189)
        {
          break;
        }

        sub_22C7DA844(v60, v61, v63 + 32, v64, (v62 + 16));
        v66 = v65;
        v68 = v67;

        if (v66)
        {
          goto LABEL_31;
        }

LABEL_32:
      }

      v69 = (v190 + 40);
      v68 = v64 + 1;
      while (--v68)
      {
        v70 = v69 + 2;
        if (*(v69 - 1) != v60 || *v69 != v61)
        {
          v72 = sub_22C90B4FC();
          v69 = v70;
          if ((v72 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

LABEL_31:
      sub_22C7D4160(v60, v61, v68);
      goto LABEL_32;
    }

    break;
  }

  __break(1u);
LABEL_75:
  __break(1u);
}

void sub_22C475B54(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v13 = a1;
    v14 = MEMORY[0x277D84F90];
    sub_22C3B6E10(0, v3, 0);
    v4 = v14;
    v5 = (v2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      sub_22C472434(v6, v7, v8);
      v11 = *(v14 + 16);
      v10 = *(v14 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_22C3B6E10(v10 > 1, v11 + 1, 1);
      }

      v5 += 5;
      *(v14 + 16) = v11 + 1;
      v12 = v14 + 40 * v11;
      *(v12 + 32) = v6;
      *(v12 + 40) = v7;
      *(v12 + 48) = v8;
      *(v12 + 56) = v9;
      *(v12 + 64) = 1;
      --v3;
    }

    while (v3);
    a1 = v13;
  }

  *a1 = v4;
}

uint64_t sub_22C475C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *v4;
  v9 = v4[1];
  v10 = v4[2];
  v11 = v4[3];
  sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  *(inited + 32) = v8;
  *(inited + 40) = v9;
  *(inited + 48) = v10;
  v68 = inited;

  sub_22C3CC3D8(v11);
  v17 = v68;
  v18 = *(v68 + 16);
  v62 = a1;
  v63 = a2;
  if (v18)
  {
    v64 = a3;
    v66 = v11;
    v57 = v9;
    v59 = v8;
    v68 = MEMORY[0x277D84F90];
    sub_22C3B5E2C(0, v18, 0, v13, v14, v15, v16);
    v19 = v68;
    v20 = (v17 + 40);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v68 = v19;
      v23 = *(v19 + 16);
      v24 = *(v19 + 24);

      if (v23 >= v24 >> 1)
      {
        sub_22C3B5E2C(v24 > 1, v23 + 1, 1, v25, v26, v27, v28);
        v19 = v68;
      }

      *(v19 + 16) = v23 + 1;
      v29 = v19 + 16 * v23;
      *(v29 + 32) = v21;
      *(v29 + 40) = v22;
      v20 += 3;
      --v18;
    }

    while (v18);

    a2 = v63;
    v9 = v57;
    v8 = v59;
    a3 = v64;
    v11 = v66;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v30 = sub_22C3AD928(v19);
  v31 = sub_22C491A74(a3, v30);
  swift_bridgeObjectRetain_n();
  sub_22C3732F8();
  swift_bridgeObjectRetain_n();

  if (sub_22C5E935C(v8, v9, v31))
  {
    v68 = a1;
    v69 = a2;

    MEMORY[0x2318B7850](v8, v9);
    v8 = a1;
    v9 = a2;
  }

  else
  {
  }

  v70 = v10;

  sub_22C476484(&v70, v31, a1, a2, &v68);

  v32 = v68;
  v33 = *(v11 + 16);
  if (v33)
  {
    v55 = v68;
    v58 = v9;
    v70 = MEMORY[0x277D84F90];
    sub_22C3B64F4(0, v33, 0);
    v34 = 0;
    v35 = v70;
    v60 = v11 + 32;
    v61 = v33;
    do
    {
      v36 = (v60 + 24 * v34);
      v37 = *v36;
      v38 = v36[1];
      v39 = v36[2];
      if (*(v31 + 16))
      {
        sub_22C90B62C();
        v65 = v39;
        swift_retain_n();

        sub_22C909FFC();
        v40 = sub_22C90B66C();
        v41 = ~(-1 << *(v31 + 32));
        while (1)
        {
          v42 = v40 & v41;
          if (((*(v31 + 56 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
          {
            break;
          }

          v43 = (*(v31 + 48) + 16 * v42);
          if (*v43 != v37 || v43[1] != v38)
          {
            v45 = sub_22C90B4FC();
            v40 = v42 + 1;
            if ((v45 & 1) == 0)
            {
              continue;
            }
          }

          v47 = v62;
          v46 = v63;
          v68 = v62;
          v69 = v63;

          MEMORY[0x2318B7850](v37, v38);
          v37 = v68;
          v48 = v69;
          v39 = v65;
          goto LABEL_25;
        }

        v39 = v65;
      }

      else
      {
        swift_retain_n();
      }

      v48 = v38;
      v47 = v62;
      v46 = v63;
LABEL_25:
      v67 = v39;

      sub_22C476484(&v67, v31, v47, v46, &v68);

      v49 = v68;
      v70 = v35;
      v51 = *(v35 + 16);
      v50 = *(v35 + 24);
      if (v51 >= v50 >> 1)
      {
        v53 = sub_22C369AB0(v50);
        sub_22C3B64F4(v53, v51 + 1, 1);
        v35 = v70;
      }

      ++v34;
      *(v35 + 16) = v51 + 1;
      v52 = (v35 + 24 * v51);
      v52[4] = v37;
      v52[5] = v48;
      v52[6] = v49;
    }

    while (v34 != v61);

    swift_bridgeObjectRelease_n();
    v9 = v58;
    v32 = v55;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v35 = MEMORY[0x277D84F90];
  }

  *a4 = v8;
  a4[1] = v9;
  a4[2] = v32;
  a4[3] = v35;
}

uint64_t sub_22C4760BC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X6>, unint64_t *a6@<X8>)
{
  v6 = *a1;
  v9 = a6;
  switch(*a1 >> 62)
  {
    case 1uLL:
      v34 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v35 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v36 = *(v34 + 24);
      v37 = swift_allocObject();

      sub_22C3732F8();
      swift_bridgeObjectRetain_n();

      v38 = sub_22C46B654(v35, v36, a2, a3);
      v40 = v39;

      *(v37 + 16) = v38;
      *(v37 + 24) = v40;

      v6 = v37 | 0x4000000000000000;
      break;
    case 2uLL:
      if (*(*((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) + 16))
      {
        v44 = a6;
        sub_22C37174C();
        v49 = MEMORY[0x277D84F90];
        sub_22C38701C();
        sub_22C374AE8();
        sub_22C477D40();
        v46 = a5;
        sub_22C3732F8();
        swift_bridgeObjectRetain_n();

        sub_22C477D20();
        v10 = v49;
        do
        {
          sub_22C388600();

          v11 = v46;

          sub_22C369CA0(v12, v13, v14, v15, v16, v17, v18, v19, v44, v46);
          sub_22C377C00();
          if (v21)
          {
            sub_22C3B63F4(v20 > 1, v11, 1);
            v10 = v49;
          }

          sub_22C477D04();
        }

        while (!v22);

        v9 = v44;
      }

      else
      {
        sub_22C37174C();
        sub_22C374AE8();
        sub_22C477D40();
        sub_22C3732F8();
        swift_bridgeObjectRetain_n();
        sub_22C38701C();
        v10 = MEMORY[0x277D84F90];
      }

      v41 = swift_allocObject();
      *(v41 + 16) = v10;

      v6 = v41 | 0x8000000000000000;
      break;
    case 3uLL:
      if (*(*((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) + 16))
      {
        v45 = a6;
        sub_22C37174C();
        v50 = MEMORY[0x277D84F90];
        sub_22C38701C();
        sub_22C374AE8();
        sub_22C477D40();
        v47 = a5;
        sub_22C3732F8();
        swift_bridgeObjectRetain_n();

        sub_22C477D20();
        v23 = v50;
        do
        {
          sub_22C388600();

          v24 = v47;

          sub_22C369CA0(v25, v26, v27, v28, v29, v30, v31, v32, v45, v47);
          sub_22C377C00();
          if (v21)
          {
            sub_22C3B63F4(v33 > 1, v24, 1);
            v23 = v50;
          }

          sub_22C477D04();
        }

        while (!v22);

        v9 = v45;
      }

      else
      {
        sub_22C37174C();
        sub_22C374AE8();
        sub_22C477D40();
        sub_22C3732F8();
        swift_bridgeObjectRetain_n();
        sub_22C38701C();
        v23 = MEMORY[0x277D84F90];
      }

      v42 = swift_allocObject();
      *(v42 + 16) = v23;

      v6 = v42 | 0xC000000000000000;
      break;
    default:
      sub_22C37174C();

      break;
  }

  *v9 = v6;

  sub_22C3732F8();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22C476484@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v5 = *a1;
  v6 = *a1 >> 62;
  v7 = *a1 & 0x3FFFFFFFFFFFFFFFLL;
  v10 = a5;
  switch(v6)
  {
    case 1uLL:
      v27 = *(v7 + 16);
      v28 = *(v7 + 24);
      v29 = swift_allocObject();

      swift_bridgeObjectRetain_n();

      v30 = sub_22C476C9C(v27, v28, a2, a3);
      v32 = v31;

      *(v29 + 16) = v30;
      *(v29 + 24) = v32;

      v5 = v29 | 0x4000000000000000;
      break;
    case 2uLL:
      v11 = *(v7 + 16);
      v12 = *(v11 + 16);
      if (v12)
      {
        v41 = MEMORY[0x277D84F90];
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        sub_22C3B63F4(0, v12, 0);
        v13 = 32;
        v14 = v41;
        v15 = a3;
        do
        {
          v39 = *(v11 + v13);

          sub_22C476484(&v39, a2, v15, a4, &v40);
          v16 = v40;
          v41 = v14;
          v18 = *(v14 + 16);
          v17 = *(v14 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_22C3B63F4(v17 > 1, v18 + 1, 1);
            v15 = a3;
            v14 = v41;
          }

          *(v14 + 16) = v18 + 1;
          *(v14 + 8 * v18 + 32) = v16;
          v13 += 8;
          --v12;
        }

        while (v12);

        v10 = a5;
      }

      else
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v14 = MEMORY[0x277D84F90];
      }

      v33 = swift_allocObject();
      *(v33 + 16) = v14;

      v5 = v33 | 0x8000000000000000;
      break;
    case 3uLL:
      v19 = *(v7 + 16);
      v20 = *(v19 + 16);
      if (v20)
      {
        v41 = MEMORY[0x277D84F90];
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        sub_22C3B63F4(0, v20, 0);
        v21 = 32;
        v22 = v41;
        v23 = a3;
        do
        {
          v39 = *(v19 + v21);

          sub_22C476484(&v39, a2, v23, a4, &v40);
          v24 = v40;
          v41 = v22;
          v26 = *(v22 + 16);
          v25 = *(v22 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_22C3B63F4(v25 > 1, v26 + 1, 1);
            v23 = a3;
            v22 = v41;
          }

          *(v22 + 16) = v26 + 1;
          *(v22 + 8 * v26 + 32) = v24;
          v21 += 8;
          --v20;
        }

        while (v20);

        v10 = a5;
      }

      else
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v22 = MEMORY[0x277D84F90];
      }

      v34 = swift_allocObject();
      *(v34 + 16) = v22;

      v5 = v34 | 0xC000000000000000;
      break;
    default:

      break;
  }

  *v10 = v5;

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22C47683C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v6 = *a1;
  v10 = a6;
  switch(*a1 >> 62)
  {
    case 1uLL:
      v28 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v29 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v30 = *(v28 + 24);
      v31 = swift_allocObject();

      swift_retain_n();
      swift_bridgeObjectRetain_n();

      v32 = sub_22C477044(v29, v30, a2, a3, a4, a5);
      v34 = v33;

      *(v31 + 16) = v32;
      *(v31 + 24) = v34;

      v6 = v31 | 0x4000000000000000;
      break;
    case 2uLL:
      v11 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *(v11 + 16);
      if (v12)
      {
        v45 = MEMORY[0x277D84F90];
        swift_retain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();

        sub_22C3B63F4(0, v12, 0);
        v13 = 32;
        v14 = v45;
        v15 = a4;
        v41 = v11;
        do
        {
          v43 = *(v11 + v13);

          sub_22C47683C(&v43, a2, a3, v15, a5, &v44);
          v16 = v44;
          v45 = v14;
          v18 = *(v14 + 16);
          v17 = *(v14 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_22C3B63F4(v17 > 1, v18 + 1, 1);
            v15 = a4;
            v14 = v45;
          }

          *(v14 + 16) = v18 + 1;
          *(v14 + 8 * v18 + 32) = v16;
          v13 += 8;
          --v12;
          v11 = v41;
        }

        while (v12);

        v10 = a6;
      }

      else
      {
        swift_retain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        v14 = MEMORY[0x277D84F90];
      }

      v35 = swift_allocObject();
      *(v35 + 16) = v14;

      v6 = v35 | 0x8000000000000000;
      break;
    case 3uLL:
      v19 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v20 = *(v19 + 16);
      if (v20)
      {
        v45 = MEMORY[0x277D84F90];
        swift_retain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();

        sub_22C3B63F4(0, v20, 0);
        v21 = 32;
        v22 = v45;
        v23 = a4;
        do
        {
          v24 = v19;
          v43 = *(v19 + v21);

          sub_22C47683C(&v43, a2, a3, v23, a5, &v44);
          v25 = v44;
          v45 = v22;
          v27 = *(v22 + 16);
          v26 = *(v22 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_22C3B63F4(v26 > 1, v27 + 1, 1);
            v23 = a4;
            v22 = v45;
          }

          *(v22 + 16) = v27 + 1;
          *(v22 + 8 * v27 + 32) = v25;
          v21 += 8;
          --v20;
          v19 = v24;
        }

        while (v20);

        v10 = a6;
      }

      else
      {
        swift_retain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        v22 = MEMORY[0x277D84F90];
      }

      v36 = swift_allocObject();
      *(v36 + 16) = v22;

      v6 = v36 | 0xC000000000000000;
      break;
    default:

      swift_bridgeObjectRetain_n();

      break;
  }

  *v10 = v6;
  swift_bridgeObjectRelease_n();
}

uint64_t sub_22C476C9C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a1;
  if (sub_22C5E935C(a1, a2, a3))
  {

    MEMORY[0x2318B7850](v6, a2);
    return a4;
  }

  else
  {
  }

  return v6;
}

double sub_22C476D14@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22C58B038(*a1, &v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_22C476D58(uint64_t a1)
{
  v1 = sub_22C90637C();
  v19 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_22C90634C();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22C90636C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C90364C();
  v11 = sub_22C90635C();
  sub_22C90638C();
  v18 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    v12 = v19;
    if ((*(v19 + 88))(v3, v1) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v12 + 8))(v3, v1);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v11, v18, v15, "PromptGrammar.minified", v13, v14, 2u);
    MEMORY[0x2318B9880](v14, -1, -1);
  }

  (*(v4 + 8))(v6, v20);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22C477044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1;
  v17 = a1;
  v18 = a2;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = &v17;
  v9 = sub_22C7D5C1C(sub_22C477C20, v16, a4);
  if (v10)
  {
  }

  else
  {
    v11 = v9;
    v17 = a5;
    v18 = a6;

    MEMORY[0x2318B7850](22565, 0xE200000000000000);
    sub_22C3A5908(&qword_27D9BB5D8, &unk_22C91A680);
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D83B88];
    *(v12 + 16) = xmmword_22C90F800;
    v14 = MEMORY[0x277D83C10];
    *(v12 + 56) = v13;
    *(v12 + 64) = v14;
    *(v12 + 32) = v11;
    v8 = sub_22C90A14C();
  }

  return v8;
}

uint64_t sub_22C47715C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = v2[1];
  v12[0] = a1;
  v12[1] = a2;
  v11[2] = v6;
  v11[3] = v5;
  v11[4] = v12;
  sub_22C7D5C1C(sub_22C477CEC, v11, v5);
  v9 = v8;
  if (v8)
  {
    sub_22C7D4160(a1, a2, v7);
  }

  return v9 & 1;
}

void sub_22C4771F4(uint64_t result)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v34 = MEMORY[0x277D84F90];
  v31 = *(result + 16);
  v30 = result + 32;
LABEL_2:
  if (v1 == v31)
  {
  }

  else
  {
    if (v1 >= *(result + 16))
    {
      __break(1u);
    }

    else
    {
      v3 = (v30 + 24 * v1);
      v5 = *v3;
      v4 = v3[1];
      v6 = *(v34 + 16);
      v33 = v3[2];
      v7 = 0;
      for (i = (v34 + 40); ; i += 2)
      {
        if (v6 == v7)
        {

          swift_bridgeObjectRetain_n();
          sub_22C7D4160(v5, v4, 0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C3B64D4(0, *(v2 + 16) + 1, 1);
          }

          v19 = *(v2 + 16);
          v18 = *(v2 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_22C3B64D4(v18 > 1, v19 + 1, 1);
          }

          *(v2 + 16) = v19 + 1;
          v20 = v2 + 32;
          v12 = MEMORY[0x277D84F90];
          *(v2 + 32 + 8 * v19) = MEMORY[0x277D84F90];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 32 + 8 * v19) = v12;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v26 = MEMORY[0x277D84F90];
            v27 = *(MEMORY[0x277D84F90] + 16);

            sub_22C5902A0(0, v27 + 1, 1, v26);
            *(v20 + 8 * v19) = v28;

            v12 = *(v20 + 8 * v19);
          }

          v15 = *(v12 + 16);
          v22 = *(v12 + 24);
          v16 = v15 + 1;
          if (v15 >= v22 >> 1)
          {
            sub_22C5902A0(v22 > 1, v15 + 1, 1, v12);
            v12 = v29;
            *(v20 + 8 * v19) = v29;
          }

LABEL_28:
          ++v1;
          *(v12 + 16) = v16;
          v23 = (v12 + 24 * v15);
          v23[4] = v5;
          v23[5] = v4;
          v23[6] = v33;

          goto LABEL_2;
        }

        v9 = *(i - 1) == v5 && *i == v4;
        if (v9 || (sub_22C90B4FC() & 1) != 0)
        {
          break;
        }

        ++v7;
      }

      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C56C14C();
        v2 = v10;
      }

      if ((v7 & 0x8000000000000000) == 0)
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_32;
        }

        v11 = v2 + 32;
        v12 = *(v2 + 32 + 8 * v7);
        v13 = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 32 + 8 * v7) = v12;
        if ((v13 & 1) == 0)
        {
          v24 = *(v12 + 16);

          sub_22C5902A0(0, v24 + 1, 1, v12);
          *(v11 + 8 * v7) = v25;

          v12 = *(v11 + 8 * v7);
        }

        v15 = *(v12 + 16);
        v14 = *(v12 + 24);
        v16 = v15 + 1;
        if (v15 >= v14 >> 1)
        {
          sub_22C5902A0(v14 > 1, v15 + 1, 1, v12);
          v12 = v17;
          *(v11 + 8 * v7) = v17;
        }

        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }
}

uint64_t sub_22C47755C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    MEMORY[0x28223BE20](a1);
    v5 = 0;
    MEMORY[0x28223BE20]((v3 + 63) >> 6);
    sub_22C9031BC();
    __break(1u);

    result = sub_22C477BDC(0, v5);
    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

unint64_t sub_22C4776C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = *(a3 + 16);
  sub_22C9031EC();
  v8 = a2;
  v9 = a4 + 56;
  v10 = 1 << *(a4 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a4 + 56);
  v13 = (v10 + 63) >> 6;
  v37 = a4;

  v14 = 0;
  v33 = v7;
  v34 = (v5 + 40);
  v38 = v7;
  v35 = a2;
  while (v12)
  {
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = (*(v37 + 48) + ((v14 << 10) | (16 * v16)));
    v19 = *v17;
    v18 = v17[1];
    if (v8)
    {

      sub_22C7DA844(v19, v18, v5 + 32, v38, (v8 + 16));
      v21 = v20;
      v23 = v22;

      if ((v23 & 1) == 0 && (v21 & 0x8000000000000000) == 0)
      {
LABEL_22:
        v8 = v35;
        if (sub_22C9031CC())
        {
          if (v33 == 1)
          {
            goto LABEL_29;
          }

          --v33;
        }
      }
    }

    else
    {
      v24 = v5;
      v25 = 0;
      v26 = v34;
      while (v38 != v25)
      {
        v27 = *(v26 - 1) == v19 && *v26 == v18;
        if (v27 || (sub_22C90B4FC() & 1) != 0)
        {

          v5 = v24;
          goto LABEL_22;
        }

        ++v25;
        v26 += 2;
      }

      v5 = v24;
      v8 = v35;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      v28 = v8;
      v29 = *a1;
      v30 = a1[1];
      v31 = sub_22C3B0E80();

      return sub_22C47797C(v29, v30, v33, 0, v31, v28, v5);
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_29:

  return 0;
}

void *sub_22C477920(uint64_t a1, uint64_t *a2, void *(*a3)(__int128 *__return_ptr))
{
  result = (a3)(&v8, a1);
  if (!v3)
  {
    v6 = *a2;
    v7 = a2[1];
    *a2 = v8;
    return sub_22C477BDC(v6, v7);
  }

  return result;
}

unint64_t sub_22C47797C(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  if (a4)
  {
    if (result && a2)
    {
      a3 = 0;
      v11 = 8 * a2;
      v12 = result;
      while (1)
      {
        v13 = vcnt_s8(*v12);
        v13.i16[0] = vaddlv_u8(v13);
        v14 = __OFADD__(a3, v13.u32[0]);
        a3 += v13.u32[0];
        if (v14)
        {
          goto LABEL_28;
        }

        ++v12;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_7;
        }
      }
    }

    goto LABEL_11;
  }

LABEL_7:
  if (!a3)
  {
LABEL_11:
    sub_22C40776C(a5, 0);

    return 0;
  }

  if (a3 != *(a7 + 16))
  {
    result = a3 + a5;
    if (__OFADD__(a3, a5))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    sub_22C40776C(result, 0);
    v19 = 0;
    while (1)
    {
      result = sub_22C9031DC();
      if (v15)
      {

        return v19;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        break;
      }

      if (result >= *(a7 + 16))
      {
        goto LABEL_27;
      }

      v16 = (a7 + 32 + 16 * result);
      v17 = *v16;
      v18 = v16[1];

      sub_22C405F74(v17, v18);
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a6)
  {
    swift_beginAccess();
    result = MEMORY[0x2318B0640](*(v8 + 16) & 0x3FLL);
  }

  else
  {
    result = 15;
  }

  if (__OFSUB__(result, a3))
  {
    goto LABEL_30;
  }

  if ((result - a3) >= a5)
  {
    return v8;
  }

  v19 = v8;
  result = a3 + a5;
  if (!__OFADD__(a3, a5))
  {
    sub_22C40776C(result, 0);
    return v19;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_22C477B6C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, unint64_t *a5@<X8>)
{
  result = sub_22C4776C4(a1, a2, a3, *a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
  }

  return result;
}

uint64_t sub_22C477BDC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_22C477C44()
{
  result = qword_27D9BC870;
  if (!qword_27D9BC870)
  {
    sub_22C3AC1A0(&qword_27D9BAE30, &qword_22C914EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC870);
  }

  return result;
}

uint64_t sub_22C477CA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_22C477D20()
{

  sub_22C3B63F4(0, v0, 0);
}

uint64_t sub_22C477D40()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_22C477D58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C477DA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_22C477E04(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C477E68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_22C477EA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C477F1C()
{
  sub_22C369980();
  v0[2] = v1;
  v2 = sub_22C9063DC();
  v0[3] = v2;
  sub_22C3699B8(v2);
  v0[4] = v3;
  v0[5] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C477FCC()
{
  sub_22C36D5EC();
  sub_22C903F7C();
  v1 = sub_22C9063CC();
  v2 = sub_22C90AACC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22C366000, v1, v2, "Grammar generation disabled. Using empty PromptGrammar.", v3, 2u);
    MEMORY[0x2318B9880](v3, -1, -1);
  }

  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v6 = v0[3];

  (*(v5 + 8))(v4, v6);
  *v7 = MEMORY[0x277D84F90];

  sub_22C369A24();

  return v8();
}

uint64_t sub_22C4780D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C478170;

  return sub_22C477F1C();
}

uint64_t sub_22C478170()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  sub_22C369A24();

  return v3();
}

uint64_t sub_22C478254()
{
  sub_22C369980();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_22C90634C();
  v1[7] = v4;
  sub_22C3699B8(v4);
  v1[8] = v5;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v6 = sub_22C90636C();
  v1[11] = v6;
  sub_22C3699B8(v6);
  v1[12] = v7;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C478374(uint64_t a1)
{
  v2 = v1[13];
  v3 = v1[11];
  v4 = v1[12];
  sub_22C90364C();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v20 = *(v4 + 8);
  v20(v2, v3);
  v5 = sub_22C90635C();
  v6 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v5, v6, v8, "StandalonePromptGrammarGenerator.generateGrammar", "", v7, 2u);
    MEMORY[0x2318B9880](v7, -1, -1);
  }

  v9 = v1[14];
  v11 = v1[10];
  v10 = v1[11];
  v13 = v1[8];
  v12 = v1[9];
  v15 = v1[6];
  v14 = v1[7];

  (*(v13 + 16))(v12, v11, v14);
  sub_22C9063AC();
  swift_allocObject();
  v1[15] = sub_22C90639C();
  (*(v13 + 8))(v11, v14);
  v20(v9, v10);
  sub_22C374168(v15, v15[3]);
  sub_22C36CCA8();
  swift_task_alloc();
  sub_22C36CC90();
  v1[16] = v16;
  *v16 = v17;
  v16[1] = sub_22C4785F4;
  sub_22C46BC34();

  return v18();
}

uint64_t sub_22C4785F4()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v4 + 136) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C4786F4()
{
  sub_22C36D5EC();
  v1 = v0[6];
  v0[18] = v0[2];
  sub_22C374168((v1 + 40), *(v1 + 64));
  sub_22C36CCA8();
  swift_task_alloc();
  sub_22C36CC90();
  v0[19] = v2;
  *v2 = v3;
  v2[1] = sub_22C478814;
  sub_22C46BC34();

  return v4();
}

uint64_t sub_22C478814()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v3 + 160) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C47891C()
{
  sub_22C371758();
  v2 = *(v1 + 32);
  v6 = v3;
  sub_22C3CC9E4(*(v1 + 24));
  *v2 = v6;
  sub_22C478B0C(v0);

  sub_22C369A24();

  return v4();
}

uint64_t sub_22C4789DC()
{
  sub_22C36D5EC();
  sub_22C371758();
  sub_22C478B0C(v0);

  sub_22C369A24();

  return v1();
}

uint64_t sub_22C478A74()
{
  sub_22C36D5EC();
  sub_22C371758();
  sub_22C478B0C(v0);

  sub_22C369A24();

  return v1();
}

uint64_t sub_22C478B0C(uint64_t a1)
{
  v1 = sub_22C90637C();
  v19 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_22C90634C();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22C90636C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C90364C();
  v11 = sub_22C90635C();
  sub_22C90638C();
  v18 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    v12 = v19;
    if ((*(v19 + 88))(v3, v1) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v12 + 8))(v3, v1);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v11, v18, v15, "StandalonePromptGrammarGenerator.generateGrammar", v13, v14, 2u);
    MEMORY[0x2318B9880](v14, -1, -1);
  }

  (*(v4 + 8))(v6, v20);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22C478DF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C382AF4;

  return sub_22C478254();
}

void sub_22C478ED0()
{
  sub_22C3A5908(&qword_27D9BB118, &qword_22C90D9B8);
  v1 = sub_22C90644C();
  sub_22C369824();
  v3 = v2;
  v5 = *(v4 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22C90F7F0;
  v8 = v7 + v6;
  v9 = *(v3 + 104);
  v9(v7 + v6, *MEMORY[0x277D1D890], v1);
  v9(v8 + v5, *MEMORY[0x277D1D880], v1);
  v9(v8 + 2 * v5, *MEMORY[0x277D1D888], v1);
  v9(v8 + 3 * v5, *MEMORY[0x277D1D878], v1);
  v9(v8 + 4 * v5, *MEMORY[0x277D1D898], v1);
  sub_22C7F4B3C();
  v11 = v10;
  v12 = 0;
  v17 = MEMORY[0x277D84F90];
  v13 = *(v10 + 16);
  v14 = v10 + v6;
  while (v13 != v12)
  {
    if (v12 >= *(v11 + 16))
    {
      __break(1u);
      return;
    }

    v15 = sub_22C47915C(v14);
    ++v12;
    sub_22C3CCDDC(v15);
    v14 += v5;
  }

  v16 = *(v0 + 8);

  v16(v17);
}

uint64_t sub_22C47915C(uint64_t a1)
{
  v3 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v53 - v4;
  v67 = sub_22C908ABC();
  sub_22C369824();
  v62 = v6;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  sub_22C908AEC();
  sub_22C369824();
  v60 = v14;
  v61 = v13;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v59 = &v53 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v53 - v20;
  v22 = sub_22C9071AC();
  if (v1)
  {
    return a1;
  }

  sub_22C8741B8(v22, v23, v24, v25, v26, v27, v28, v29, v53, v54, 0, a1, v56, v12, v10, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  v31 = v30;

  sub_22C90718C();
  v33 = v59;
  v32 = v60;
  v34 = v61;
  (*(v60 + 16))(v59, v21, v61);
  result = (*(v32 + 32))(v17, v21, v34);
  v36 = 0;
  v64 = *(v31 + 16);
  v65 = v31;
  v56 = (v62 + 32);
  v37 = v31 + 40;
  v63 = MEMORY[0x277D84F90];
  v38 = v32;
  v54 = v37;
LABEL_3:
  for (i = v37 + 16 * v36; ; i += 16)
  {
    if (v64 == v36)
    {
      v50 = *(v38 + 8);
      v50(v33, v34);

      v51 = (v50)(v17, v34);
      MEMORY[0x28223BE20](v51);
      *(&v53 - 2) = v55;
      sub_22C7930C0();
      a1 = v52;

      return a1;
    }

    if (v36 >= *(v65 + 16))
    {
      break;
    }

    v40 = v17;
    v41 = v34;

    sub_22C908ACC();

    v42 = v67;
    if (sub_22C370B74(v5, 1, v67) != 1)
    {
      v43 = *v56;
      (*v56)(v57, v5, v42);
      v43(v58, v57, v42);
      v44 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C592E40();
        v63 = v48;
      }

      v45 = *(v63 + 16);
      if (v45 >= *(v63 + 24) >> 1)
      {
        sub_22C592E40();
        v63 = v49;
      }

      ++v36;
      v46 = v62;
      v47 = v63;
      *(v63 + 16) = v45 + 1;
      result = v44(v47 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v45, v58, v67);
      v34 = v41;
      v17 = v40;
      v37 = v54;
      goto LABEL_3;
    }

    result = sub_22C46B89C(v5);
    ++v36;
    v17 = v40;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C4795F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v48 = a2;
  v49 = a1;
  v3 = sub_22C9063DC();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C90644C();
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C908EAC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v46 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C908DAC();
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C908ABC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, v49, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x277D1E8E0])
  {
    (*(v15 + 96))(v17, v14);
    v19 = *(v9 + 32);
    v20 = v46;
    v19(v46, v17, v8);
    v21 = v47;
    (*(v47 + 104))(v7, *MEMORY[0x277D1D898], v5);
    sub_22C479C48();
    sub_22C90A56C();
    sub_22C90A56C();
    (*(v21 + 8))(v7, v5);
    v22 = v52;
    v23 = v51;
    v24 = v50;
    v19(v50, v20, v8);
    v25 = sub_22C9036EC();
    if (v22 == v23)
    {
      v26 = MEMORY[0x277D1ECD8];
    }

    else
    {
      v26 = MEMORY[0x277D1ECE0];
    }

    (*(*(v25 - 8) + 104))(v24, *v26, v25);
    v30 = v24;
    v31 = v25;
    return sub_22C36C640(v30, 0, 1, v31);
  }

  v27 = v8;
  v28 = v50;
  if (v18 == *MEMORY[0x277D1E8C8])
  {
    (*(v15 + 96))(v17, v14);
    (*(v9 + 32))(v28, v17, v27);
    v29 = MEMORY[0x277D1ECD0];
LABEL_10:
    v33 = *v29;
    v34 = sub_22C9036EC();
    (*(*(v34 - 8) + 104))(v28, v33, v34);
    v30 = v28;
    v31 = v34;
    return sub_22C36C640(v30, 0, 1, v31);
  }

  if (v18 == *MEMORY[0x277D1E8D0])
  {
    (*(v15 + 96))(v17, v14);
    v32 = v42;
    (*(v42 + 32))(v13, v17, v11);
    sub_22C908D7C();
    (*(v32 + 8))(v13, v11);
    v29 = MEMORY[0x277D1ECE8];
    goto LABEL_10;
  }

  v36 = v43;
  sub_22C903F7C();
  v37 = sub_22C9063CC();
  v38 = sub_22C90AADC();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_22C366000, v37, v38, "Unknown tool type retrieved for grammar generation.", v39, 2u);
    MEMORY[0x2318B9880](v39, -1, -1);
  }

  (*(v44 + 8))(v36, v45);
  v40 = sub_22C9036EC();
  sub_22C36C640(v28, 1, 1, v40);
  return (*(v15 + 8))(v17, v14);
}

unint64_t sub_22C479C48()
{
  result = qword_27D9BC878;
  if (!qword_27D9BC878)
  {
    sub_22C90644C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC878);
  }

  return result;
}

uint64_t sub_22C479E44()
{
  sub_22C36A83C();
  result = swift_allocObject();
  strcpy((result + 16), "quoted_string");
  *(result + 30) = -4864;
  *&xmmword_27D9BC880 = 0xD000000000000012;
  *(&xmmword_27D9BC880 + 1) = 0x800000022C92E230;
  qword_27D9BC890 = result | 0x4000000000000000;
  return result;
}

uint64_t static PlannerGrammarConstants.Grammar_v4_0.dynamicQuotedStringLink.getter()
{
  if (qword_27D9BA648 != -1)
  {
    swift_once();
  }

  sub_22C47B16C(&xmmword_27D9BC880);
}

void *sub_22C479F30()
{
  sub_22C36A83C();
  v0 = swift_allocObject();
  result = sub_22C47B190(v0, 0x800000022C930AE0);
  qword_27D9BC898 = v2;
  unk_27D9BC8A0 = 0x800000022C930AC0;
  qword_27D9BC8A8 = v3;
  return result;
}

uint64_t static PlannerGrammarConstants.Grammar_v4_0.dynamicClientToolsLink.getter()
{
  if (qword_27D9BA650 != -1)
  {
    swift_once();
  }

  sub_22C47B16C(&qword_27D9BC898);
}

void *sub_22C47A004()
{
  sub_22C36A83C();
  v0 = swift_allocObject();
  result = sub_22C47B190(v0, 0x800000022C930A90);
  *&xmmword_27D9BC8B0 = v2;
  *(&xmmword_27D9BC8B0 + 1) = 0x800000022C930A70;
  qword_27D9BC8C0 = v3;
  return result;
}

uint64_t static PlannerGrammarConstants.Grammar_v4_0.dynamicResolvableToolNameLink.getter()
{
  if (qword_27D9BA658 != -1)
  {
    swift_once();
  }

  sub_22C47B16C(&xmmword_27D9BC8B0);
}

uint64_t static PlannerGrammarConstants.readGrammarFromBundle(grammarName:fileExtension:bundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v59 = a3;
  v60 = a4;
  sub_22C9063DC();
  sub_22C369824();
  v57 = v11;
  v58 = v10;
  MEMORY[0x28223BE20](v10);
  sub_22C369ABC();
  v55 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v54 = &v53 - v15;
  v16 = sub_22C90046C();
  sub_22C369824();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22C369ABC();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v53 - v24;
  sub_22C47A574();

  v26 = sub_22C47A5B8(a5);
  if (v26)
  {
    v27 = v60;
    v60 = v26;
    v28 = sub_22C47AE68(a1, a2, v59, v27, v26);
    if (v28)
    {
      v29 = v28;
      sub_22C9003DC();

      (*(v18 + 32))(v25, v22, v16);
      v30 = v56;
      v31 = static PlannerGrammarConstants.readGrammar(from:)(v25);
      if (!v30)
      {
        a1 = v31;
        (*(v18 + 8))(v25, v16);

        return a1;
      }

      (*(v18 + 8))(v25, v16);
    }

    else
    {
      v41 = a1;
      v42 = v54;
      sub_22C903F7C();

      v43 = sub_22C9063CC();
      v44 = sub_22C90AADC();

      if (os_log_type_enabled(v43, v44))
      {
        a1 = sub_22C36FB44();
        v45 = sub_22C370060();
        v61 = v45;
        *a1 = 136315138;
        *(a1 + 4) = sub_22C36F9F4(v41, a2, &v61);
        sub_22C387034(&dword_22C366000, v46, v47, "Failed to load plan constraining grammar: unable to locate %s");
        sub_22C36FF94(v45);
        sub_22C3699EC();
        sub_22C3699EC();
      }

      (*(v57 + 8))(v42, v58);
      type metadata accessor for PlannerGrammarConstants.StaticGrammarError(0);
      sub_22C36A8B4();
      v50 = sub_22C47B060(v48, v49, &unk_22C914E64);
      sub_22C370620(v50);
      *v51 = v41;
      v51[1] = a2;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    v32 = v55;
    sub_22C903F7C();

    v33 = sub_22C9063CC();
    v34 = sub_22C90AADC();

    if (os_log_type_enabled(v33, v34))
    {
      a1 = sub_22C36FB44();
      v35 = sub_22C370060();
      v61 = v35;
      *a1 = 136315138;
      *(a1 + 4) = sub_22C36F9F4(a5, a6, &v61);
      sub_22C387034(&dword_22C366000, v36, v37, "Failed to load plan constraining grammar: unable to locate %s bundle");
      sub_22C36FF94(v35);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    (*(v57 + 8))(v32, v58);
    type metadata accessor for PlannerGrammarConstants.StaticGrammarError(0);
    sub_22C36A8B4();
    v40 = sub_22C47B060(v38, v39, &unk_22C914E64);
    sub_22C370620(v40);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return a1;
}