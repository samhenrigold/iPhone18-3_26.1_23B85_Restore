uint64_t sub_1DABB4AA0()
{
  sub_1DAA6AA98(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1DACB78E4();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB7904();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1DACB7084();
  __swift_allocate_value_buffer(v10, qword_1ECBE8608);
  __swift_project_value_buffer(v10, qword_1ECBE8608);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1DACB7914();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1DACB7094();
}

uint64_t sub_1DABB4DE0()
{
  v0 = sub_1DACB6E84();
  __swift_allocate_value_buffer(v0, qword_1ECBE8620);
  __swift_project_value_buffer(v0, qword_1ECBE8620);
  return sub_1DACB6E74();
}

uint64_t sub_1DABB4E44()
{
  sub_1DABB7F38(0, &qword_1ECBE8638, sub_1DABB5034, &type metadata for NewWatchlistIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DABB7F38(0, &qword_1ECBE8640, sub_1DABB5034, &type metadata for NewWatchlistIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1DABB5034();
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DABB50AC(0);
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7214();
}

unint64_t sub_1DABB5034()
{
  result = qword_1EE11E7F8;
  if (!qword_1EE11E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E7F8);
  }

  return result;
}

void sub_1DABB50AC(uint64_t a1)
{
  if (!qword_1ECBE8648)
  {
    sub_1DABB7F38(255, &qword_1ECBE8650, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A1A0]);
    v1 = sub_1DACBA314();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE8648);
    }
  }
}

uint64_t sub_1DABB5144()
{
  swift_getKeyPath();
  sub_1DABB5034();
  v0 = sub_1DACB71F4();

  sub_1DAA61540(0, &qword_1EE11F490, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DACC4A10;
  *(v1 + 32) = v0;
  sub_1DACB71F4();
  v2 = sub_1DACB71E4();

  return v2;
}

uint64_t sub_1DABB5274(uint64_t *a1, uint64_t *a2)
{
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
}

uint64_t (*sub_1DABB5320(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DABB53C8(uint64_t *a1, uint64_t *a2)
{
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
}

uint64_t (*sub_1DABB5474(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DABB550C(void *a1)
{
  sub_1DAA4D678(a1, v3);
  sub_1DACB6D34();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_1DABB5550(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6D14();
  return sub_1DAAD9D74;
}

uint64_t sub_1DABB55E8@<X0>(uint64_t *a1@<X8>)
{
  v58 = a1;
  v57 = sub_1DACB7274();
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DABB5EA0(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v54 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v40 - v5;
  v6 = MEMORY[0x1E69E6720];
  sub_1DAA6AA98(0, &qword_1ECBE8658, MEMORY[0x1E695A7D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v48 = &v40 - v8;
  sub_1DAA6AA98(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v6);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v60 = &v40 - v10;
  v11 = sub_1DACB78E4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_1DACB7904();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DABB7F38(0, &qword_1ECBE8650, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A1A0]);
  v45 = v21;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v22 = *MEMORY[0x1E6968DF0];
  v23 = *(v12 + 104);
  v23(v14, v22, v11);
  v51 = v20;
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v44 = v22;
  v52 = v12 + 104;
  v53 = v11;
  v47 = v23;
  v23(v14, v22, v11);
  v24 = v60;
  sub_1DACB7914();
  v25 = *(v18 + 56);
  v49 = v18 + 56;
  v50 = v17;
  v46 = v25;
  v25(v24, 0, 1, v17);
  v26 = sub_1DACB9274();
  v61 = 0uLL;
  (*(*(v26 - 8) + 56))();
  if (qword_1ECBE5B58 != -1)
  {
    swift_once();
  }

  v27 = sub_1DACB6E84();
  v28 = __swift_project_value_buffer(v27, qword_1ECBE8620);
  v29 = *(v27 - 8);
  v30 = v55;
  (*(v29 + 16))(v55, v28, v27);
  v41 = *(v29 + 56);
  v41(v30, 0, 1, v27);
  v43 = *MEMORY[0x1E695A500];
  v42 = *(v59 + 104);
  v59 += 104;
  v42(v56);
  *v58 = sub_1DACB7024();
  sub_1DABB5ED4(0);
  v48 = v31;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v32 = v44;
  v33 = v53;
  v34 = v47;
  v47(v14, v44, v53);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v34(v14, v32, v33);
  v35 = v60;
  sub_1DACB7914();
  v46(v35, 0, 1, v50);
  *&v61 = 0;
  v36 = v41;
  v41(v55, 1, 1, v27);
  v36(v54, 1, 1, v27);
  (v42)(v56, v43, v57);
  sub_1DAAA1548(&unk_1EE11EF70, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
  v37 = sub_1DACB7014();
  v38 = v58;
  v58[1] = v37;
  sub_1DAA6AA98(0, &qword_1EE123AB0, sub_1DAADA3B0, MEMORY[0x1E6959D18]);
  sub_1DACB6D94();
  v61 = 0u;
  v62 = 0u;
  v63 = 0;
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  v38[2] = result;
  return result;
}

void sub_1DABB5ED4(uint64_t a1)
{
  if (!qword_1ECBE8660)
  {
    sub_1DAA6AA98(255, &qword_1ECBE8668, sub_1DAB1CA10, MEMORY[0x1E69E6720]);
    sub_1DABB5F68();
    v1 = sub_1DACB7044();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE8660);
    }
  }
}

unint64_t sub_1DABB5F68()
{
  result = qword_1ECBE8670;
  if (!qword_1ECBE8670)
  {
    sub_1DAA6AA98(255, &qword_1ECBE8668, sub_1DAB1CA10, MEMORY[0x1E69E6720]);
    sub_1DABB6010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8670);
  }

  return result;
}

unint64_t sub_1DABB6010()
{
  result = qword_1ECBE8678;
  if (!qword_1ECBE8678)
  {
    sub_1DAB1CA10(255);
    sub_1DAAA1548(&qword_1EE123548, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8678);
  }

  return result;
}

uint64_t sub_1DABB60B8(uint64_t a1)
{
  *(v2 + 384) = a1;
  sub_1DAA6AA98(0, qword_1EE11EF28, type metadata accessor for SymbolEntity, MEMORY[0x1E69E6720]);
  *(v2 + 392) = swift_task_alloc();
  v3 = type metadata accessor for SymbolEntity(0);
  *(v2 + 400) = v3;
  *(v2 + 408) = *(v3 - 8);
  *(v2 + 416) = swift_task_alloc();
  *(v2 + 424) = swift_task_alloc();
  sub_1DABB5EA0(0);
  *(v2 + 432) = swift_task_alloc();
  v4 = sub_1DACB7664();
  *(v2 + 440) = v4;
  *(v2 + 448) = *(v4 - 8);
  *(v2 + 456) = swift_task_alloc();
  *(v2 + 464) = *v1;
  *(v2 + 480) = *(v1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DABB6278, 0, 0);
}

uint64_t sub_1DABB6278()
{
  v27 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[61] = __swift_project_value_buffer(v1, qword_1EE11D390);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26 = v5;
    *v4 = 136315138;
    sub_1DACB6FB4();
    v6 = sub_1DAA7ABE4(v0[44], v0[45], &v26);

    *(v4 + 4) = v6;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Creating watchlist name=%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E1278C00](v5, -1, -1);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  v7 = v0[57];
  v8 = v0[55];
  v9 = v0[56];
  sub_1DACB6FB4();
  v10 = v0[37];
  v0[38] = v0[36];
  v0[39] = v10;
  sub_1DACB7624();
  v0[62] = sub_1DAA642D8();
  v11 = sub_1DACB9B34();
  v13 = v12;
  v14 = *(v9 + 8);
  v0[63] = v14;
  v0[64] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v7, v8);

  v15 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v15 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    sub_1DACB6D24();
    v16 = v0[17];
    v17 = v0[18];
    __swift_project_boxed_opaque_existential_1(v0 + 14, v16);
    v0[68] = (*(v17 + 72))(v11, v13, v16, v17);

    v18 = swift_task_alloc();
    v0[69] = v18;
    *v18 = v0;
    v18[1] = sub_1DABB6ABC;

    return MEMORY[0x1EEE44EE0](v0 + 2);
  }

  else
  {

    v0[65] = sub_1DACB6FD4();
    if (qword_1ECBE5B58 != -1)
    {
      swift_once();
    }

    v19 = v0[54];
    v20 = sub_1DACB6E84();
    v21 = __swift_project_value_buffer(v20, qword_1ECBE8620);
    v22 = *(v20 - 8);
    (*(v22 + 16))(v19, v21, v20);
    (*(v22 + 56))(v19, 0, 1, v20);
    v23 = swift_task_alloc();
    v0[66] = v23;
    *v23 = v0;
    v23[1] = sub_1DABB66A0;
    v24 = v0[54];

    return MEMORY[0x1EEDB33A8](v0 + 40, v24);
  }
}

uint64_t sub_1DABB66A0()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  sub_1DABB7D38(*(v2 + 432), sub_1DABB5EA0);

  if (v0)
  {
    v3 = sub_1DABB77B4;
  }

  else
  {
    v3 = sub_1DABB6804;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DABB6804(uint64_t a1)
{
  v2 = v1[63];
  v3 = v1[57];
  v4 = v1[55];
  v5 = v1[41];
  v1[42] = v1[40];
  v1[43] = v5;
  sub_1DACB7624();
  v6 = sub_1DACB9B34();
  v8 = v7;
  v2(v3, v4);

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    sub_1DACB6D24();
    v10 = v1[17];
    v11 = v1[18];
    __swift_project_boxed_opaque_existential_1(v1 + 14, v10);
    v1[68] = (*(v11 + 72))(v6, v8, v10, v11);

    v12 = swift_task_alloc();
    v1[69] = v12;
    *v12 = v1;
    v12[1] = sub_1DABB6ABC;

    return MEMORY[0x1EEE44EE0](v1 + 2);
  }

  else
  {

    v1[65] = sub_1DACB6FD4();
    if (qword_1ECBE5B58 != -1)
    {
      swift_once();
    }

    v13 = v1[54];
    v14 = sub_1DACB6E84();
    v15 = __swift_project_value_buffer(v14, qword_1ECBE8620);
    v16 = *(v14 - 8);
    (*(v16 + 16))(v13, v15, v14);
    (*(v16 + 56))(v13, 0, 1, v14);
    v17 = swift_task_alloc();
    v1[66] = v17;
    *v17 = v1;
    v17[1] = sub_1DABB66A0;
    v18 = v1[54];

    return MEMORY[0x1EEDB33A8](v1 + 40, v18);
  }
}

uint64_t sub_1DABB6ABC()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = sub_1DABB7854;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 112));
    v3 = sub_1DABB6BFC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DABB6BFC()
{
  v84 = v0;
  sub_1DACB6FB4();
  v1 = *(v0 + 368);
  if (v1)
  {
    sub_1DACB71E4();
    v2 = sub_1DACB8C74();
    v3 = sub_1DACB9914();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v6 = v5;
      *&v73 = v5;
      *v4 = 136315138;
      v7 = *(v1 + 16);
      v8 = MEMORY[0x1E69E7CC0];
      if (v7)
      {
        v67 = v5;
        v68 = v4;
        v69 = v3;
        v70 = v2;
        v72 = *(v0 + 424);
        v9 = *(v0 + 408);
        *&v75 = MEMORY[0x1E69E7CC0];
        sub_1DAA5859C(0, v7, 0);
        v8 = v75;
        v71 = v1;
        v10 = v1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
        v11 = *(v9 + 72);
        do
        {
          v12 = *(v0 + 424);
          sub_1DAAA2C80(v10, v12);
          v13 = *v12;
          v14 = *(v72 + 8);
          sub_1DACB71E4();
          sub_1DABB7D38(v12, type metadata accessor for SymbolEntity);
          *&v75 = v8;
          v16 = *(v8 + 16);
          v15 = *(v8 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_1DAA5859C((v15 > 1), v16 + 1, 1);
            v8 = v75;
          }

          *(v8 + 16) = v16 + 1;
          v17 = v8 + 16 * v16;
          *(v17 + 32) = v13;
          *(v17 + 40) = v14;
          v10 += v11;
          --v7;
        }

        while (v7);
        v2 = v70;
        v1 = v71;
        v3 = v69;
        v6 = v67;
        v4 = v68;
      }

      *(v0 + 376) = v8;
      sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1DAA587CC();
      v38 = sub_1DACB9214();
      v40 = v39;

      v41 = sub_1DAA7ABE4(v38, v40, &v73);

      *(v4 + 4) = v41;
      _os_log_impl(&dword_1DAA3F000, v2, v3, "Adding symbols to new watchlist symbols=[%s]", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1E1278C00](v6, -1, -1);
      MEMORY[0x1E1278C00](v4, -1, -1);
    }

    v42 = *(v1 + 16);
    if (v42)
    {
      v43 = *(v0 + 408);
      *&v73 = MEMORY[0x1E69E7CC0];
      sub_1DAA57914(0, v42, 0);
      v44 = v73;
      v45 = v1 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      v46 = *(v43 + 72);
      for (i = v42 - 1; ; --i)
      {
        v49 = *(v0 + 416);
        v48 = *(v0 + 424);
        sub_1DAAA2C80(v45, v48);
        sub_1DAAA2C80(v48, v49);
        sub_1DAB7A390(v49, &v75);
        sub_1DABB7D38(v48, type metadata accessor for SymbolEntity);
        *&v73 = v44;
        v51 = *(v44 + 16);
        v50 = *(v44 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_1DAA57914((v50 > 1), v51 + 1, 1);
          v44 = v73;
        }

        *(v44 + 16) = v51 + 1;
        v52 = v44 + 136 * v51;
        *(v52 + 32) = v75;
        v53 = v76;
        v54 = v77;
        v55 = v79;
        *(v52 + 80) = v78;
        *(v52 + 96) = v55;
        *(v52 + 48) = v53;
        *(v52 + 64) = v54;
        v56 = v80;
        v57 = v81;
        v58 = v82;
        *(v52 + 160) = v83;
        *(v52 + 128) = v57;
        *(v52 + 144) = v58;
        *(v52 + 112) = v56;
        if (!i)
        {
          break;
        }

        v45 += v46;
      }
    }

    else
    {

      v44 = MEMORY[0x1E69E7CC0];
    }

    sub_1DACB6D24();
    v60 = *(v0 + 176);
    v59 = *(v0 + 184);
    __swift_project_boxed_opaque_existential_1((v0 + 152), v60);
    v61 = *(v0 + 24);
    v63 = *(v0 + 32);
    v62 = *(v0 + 40);
    v64 = *(v0 + 48);
    v65 = *(v0 + 56);
    *&v75 = *(v0 + 16);
    *(&v75 + 1) = v61;
    *&v76 = v63;
    *(&v76 + 1) = v62;
    *&v77 = v64;
    WORD4(v77) = v65;
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    *(v0 + 568) = sub_1DAC96724(v44, &v75, v60, v59);

    v66 = swift_task_alloc();
    *(v0 + 576) = v66;
    *v66 = v0;
    v66[1] = sub_1DABB7364;

    return MEMORY[0x1EEE44EE0](v0 + 64);
  }

  else
  {
    v18 = sub_1DACB8C74();
    v19 = sub_1DACB9914();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v75 = v21;
      *v20 = 136315138;
      swift_beginAccess();
      v22 = *(v0 + 40);
      v23 = *(v0 + 48);
      sub_1DACB71E4();
      v24 = sub_1DAA7ABE4(v22, v23, &v75);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1DAA3F000, v18, v19, "Successfully created new watchlist id=%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E1278C00](v21, -1, -1);
      MEMORY[0x1E1278C00](v20, -1, -1);
    }

    v25 = *(v0 + 408);
    v26 = *(v0 + 392);
    v27 = *(v0 + 400);
    swift_beginAccess();
    v28 = *(v0 + 24);
    v30 = *(v0 + 32);
    v29 = *(v0 + 40);
    v31 = *(v0 + 48);
    v32 = *(v0 + 56);
    *&v75 = *(v0 + 16);
    *(&v75 + 1) = v28;
    *&v76 = v30;
    *(&v76 + 1) = v29;
    *&v77 = v31;
    WORD4(v77) = v32;
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    WatchlistEntity.init(from:)(&v75, &v73);
    v33 = v73;
    v34 = v74;
    *(v0 + 216) = v73;
    *(v0 + 232) = v34;
    v75 = v33;
    *&v76 = v34;
    (*(v25 + 56))(v26, 1, 1, v27);
    sub_1DACB71E4();
    sub_1DACB71F4();
    sub_1DAAF42EC(&v75, v26, &v73);
    v35 = v74;
    *(v0 + 240) = v73;
    *(v0 + 256) = v35;
    sub_1DAA8E020();
    sub_1DAAF3184();
    sub_1DACB6EA4();

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_1DABB7364()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v3 = sub_1DABB78FC;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 152));
    v3 = sub_1DABB7488;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DABB7488()
{
  v33 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v25 = *(v0 + 72);

  *(v0 + 16) = v1;
  *(v0 + 24) = v25;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_1DACB8C74();
  v6 = sub_1DACB9914();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v26 = v8;
    *v7 = 136315138;
    swift_beginAccess();
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    sub_1DACB71E4();
    v11 = sub_1DAA7ABE4(v9, v10, &v26);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DAA3F000, v5, v6, "Successfully created new watchlist id=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E1278C00](v8, -1, -1);
    MEMORY[0x1E1278C00](v7, -1, -1);
  }

  v12 = *(v0 + 408);
  v13 = *(v0 + 392);
  v14 = *(v0 + 400);
  swift_beginAccess();
  v15 = *(v0 + 24);
  v17 = *(v0 + 32);
  v16 = *(v0 + 40);
  v18 = *(v0 + 48);
  v19 = *(v0 + 56);
  *&v26 = *(v0 + 16);
  *(&v26 + 1) = v15;
  v27 = v17;
  v28 = v16;
  v29 = v18;
  v30 = v19;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  WatchlistEntity.init(from:)(&v26, &v31);
  v20 = v31;
  v21 = v32;
  *(v0 + 216) = v31;
  *(v0 + 232) = v21;
  v26 = v20;
  v27 = v21;
  (*(v12 + 56))(v13, 1, 1, v14);
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DAAF42EC(&v26, v13, &v31);
  v22 = v32;
  *(v0 + 240) = v31;
  *(v0 + 256) = v22;
  sub_1DAA8E020();
  sub_1DAAF3184();
  sub_1DACB6EA4();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1DABB77B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DABB7854()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DABB78FC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 152));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DABB79C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B48 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7904();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE85F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DABB7A70(uint64_t a1, uint64_t a2)
{
  sub_1DABB7F38(0, &qword_1ECBE8638, sub_1DABB5034, &type metadata for NewWatchlistIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1DABB7F38(0, &qword_1ECBE8640, sub_1DABB5034, &type metadata for NewWatchlistIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DABB50AC(0);
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7214();
}

uint64_t sub_1DABB7C60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DABB60B8(a1);
}

uint64_t sub_1DABB7CFC(uint64_t a1)
{
  v2 = sub_1DABB5034();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1DABB7D38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DABB7D9C()
{
  result = qword_1EE11E7F0;
  if (!qword_1EE11E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E7F0);
  }

  return result;
}

unint64_t sub_1DABB7DF4()
{
  result = qword_1EE11E800;
  if (!qword_1EE11E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E800);
  }

  return result;
}

unint64_t sub_1DABB7EA8()
{
  result = qword_1ECBE8680;
  if (!qword_1ECBE8680)
  {
    sub_1DABB7F38(255, &qword_1ECBE8688, sub_1DABB5034, &type metadata for NewWatchlistIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8680);
  }

  return result;
}

void sub_1DABB7F38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1DABB7FA0(uint64_t a1)
{
  if (!qword_1ECBE8698)
  {
    sub_1DAA8E020();
    sub_1DAADCE24();
    v1 = sub_1DACB71B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE8698);
    }
  }
}

uint64_t SDSAuthToken.init(fetchDate:url:accessKey:expirationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1DACB7CC4();
  v19 = *(*(v12 - 8) + 32);
  (v19)((v12 - 8), a6, a1, v12);
  v13 = type metadata accessor for SDSAuthToken(0);
  v14 = v13[5];
  v15 = sub_1DACB7AB4();
  (*(*(v15 - 8) + 32))(a6 + v14, a2, v15);
  v16 = (a6 + v13[6]);
  *v16 = a3;
  v16[1] = a4;
  v17 = a6 + v13[7];

  return v19(v17, a5, v12);
}

uint64_t sub_1DABB8140()
{
  v1 = 0x7461446863746566;
  v2 = 0x654B737365636361;
  if (*v0 != 2)
  {
    v2 = 0x6974617269707865;
  }

  if (*v0)
  {
    v1 = 7107189;
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

uint64_t sub_1DABB81C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DABB8D4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DABB81EC(uint64_t a1)
{
  v2 = sub_1DABB84EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABB8228(uint64_t a1)
{
  v2 = sub_1DABB84EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SDSAuthToken.encode(to:)(void *a1)
{
  sub_1DABB8AB8(0, &qword_1EE11F570, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABB84EC();
  sub_1DACBA304();
  v13 = 0;
  sub_1DACB7CC4();
  sub_1DAA5D5AC(&qword_1EE125288, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1DACBA0E4();
  if (!v1)
  {
    v9[1] = type metadata accessor for SDSAuthToken(0);
    v12 = 1;
    sub_1DACB7AB4();
    sub_1DAA5D5AC(&qword_1EE1252B8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1DACBA0E4();
    v11 = 2;
    sub_1DACBA094();
    v10 = 3;
    sub_1DACBA0E4();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1DABB84EC()
{
  result = qword_1EE125090[0];
  if (!qword_1EE125090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE125090);
  }

  return result;
}

uint64_t SDSAuthToken.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v37 = sub_1DACB7AB4();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7CC4();
  v34 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = v30 - v8;
  sub_1DABB8AB8(0, &qword_1EE11F660, MEMORY[0x1E69E6F48]);
  v40 = v9;
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v30 - v10;
  v12 = type metadata accessor for SDSAuthToken(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABB84EC();
  v41 = v11;
  v15 = v42;
  sub_1DACBA2F4();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v7;
  v32 = v12;
  v16 = a1;
  v42 = v14;
  v17 = v36;
  v18 = v37;
  v46 = 0;
  v19 = sub_1DAA5D5AC(&qword_1EE123A38, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1DACB9FE4();
  v30[1] = v19;
  v20 = *(v34 + 32);
  v21 = v39;
  v39 = v4;
  v20(v42, v21);
  v45 = 1;
  sub_1DAA5D5AC(&qword_1EE1252A8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1DACB9FE4();
  v30[0] = v20;
  v22 = v32;
  (*(v35 + 32))(&v42[*(v32 + 20)], v17, v18);
  v44 = 2;
  v23 = sub_1DACB9FA4();
  v24 = &v42[*(v22 + 24)];
  *v24 = v23;
  v24[1] = v25;
  v43 = 3;
  v26 = v31;
  v27 = v39;
  sub_1DACB9FE4();
  (*(v38 + 8))(v41, v40);
  v28 = v42;
  (v30[0])(&v42[*(v22 + 28)], v26, v27);
  sub_1DABB8B1C(v28, v33);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return sub_1DABB8B80(v28);
}

void sub_1DABB8AB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DABB84EC();
    v7 = a3(a1, &type metadata for SDSAuthToken.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DABB8B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDSAuthToken(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DABB8B80(uint64_t a1)
{
  v2 = type metadata accessor for SDSAuthToken(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DABB8C48()
{
  result = qword_1ECBE86A8;
  if (!qword_1ECBE86A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE86A8);
  }

  return result;
}

unint64_t sub_1DABB8CA0()
{
  result = qword_1EE125080;
  if (!qword_1EE125080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125080);
  }

  return result;
}

unint64_t sub_1DABB8CF8()
{
  result = qword_1EE125088;
  if (!qword_1EE125088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125088);
  }

  return result;
}

uint64_t sub_1DABB8D4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461446863746566 && a2 == 0xE900000000000065;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654B737365636361 && a2 == 0xE900000000000079 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DABB8ECC()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1DACB7904();
  __swift_allocate_value_buffer(v6, qword_1ECBE86B0);
  __swift_project_value_buffer(v6, qword_1ECBE86B0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DABB90E4()
{
  sub_1DAA6AAFC(0, &qword_1EE123A80, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1DACB78E4();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB7904();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1DACB7084();
  __swift_allocate_value_buffer(v10, qword_1ECBE86C8);
  __swift_project_value_buffer(v10, qword_1ECBE86C8);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1DACB7914();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1DACB7094();
}

uint64_t sub_1DABB9410()
{
  sub_1DABBBA88(0, &qword_1ECBE86E0, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DABBBA88(0, &qword_1ECBE86E8, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1DABB95C0();
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DABB9638(0);
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7204();
}

unint64_t sub_1DABB95C0()
{
  result = qword_1EE11E660;
  if (!qword_1EE11E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E660);
  }

  return result;
}

void sub_1DABB9638(uint64_t a1)
{
  if (!qword_1ECBE86F0)
  {
    sub_1DAB2AF6C(255);
    v1 = sub_1DACBA314();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE86F0);
    }
  }
}

uint64_t sub_1DABB96BC(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for SymbolEntity(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  sub_1DAAA2C80(a1, &v10 - v7);
  sub_1DAAA2C80(v8, v6);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
  sub_1DAAD5434(v8);
}

uint64_t sub_1DABB97B8(uint64_t a1)
{
  v2 = type metadata accessor for SymbolEntity(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1DAAA2C80(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DACB6FC4();
  return sub_1DAAD5434(a1);
}

void (*sub_1DABB9848(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6FA4();
  return sub_1DAAD9D78;
}

uint64_t sub_1DABB98BC@<X0>(uint64_t *a1@<X8>)
{
  v38 = a1;
  v1 = sub_1DACB7274();
  v36 = *(v1 - 8);
  v37 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v35 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA6AAFC(0, &qword_1EE123AA0, MEMORY[0x1E6959F70]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v29 - v6;
  sub_1DAA6AAFC(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v32 = &v29 - v8;
  sub_1DAA6AAFC(0, &qword_1EE123A80, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v30 = &v29 - v10;
  v11 = sub_1DACB78E4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_1DACB7904();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  sub_1DAB2AF6C(0);
  v31 = v19;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v20 = *MEMORY[0x1E6968DF0];
  v21 = *(v12 + 104);
  v21(v14, v20, v11);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v21(v14, v20, v11);
  v22 = v30;
  sub_1DACB7914();
  (*(v18 + 56))(v22, 0, 1, v17);
  v23 = type metadata accessor for SymbolEntity(0);
  (*(*(v23 - 8) + 56))(v32, 1, 1, v23);
  v24 = sub_1DACB6E84();
  v25 = *(*(v24 - 8) + 56);
  v25(v33, 1, 1, v24);
  v25(v34, 1, 1, v24);
  (*(v36 + 104))(v35, *MEMORY[0x1E695A500], v37);
  sub_1DAAA1590(&unk_1EE11EF70, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
  v26 = sub_1DACB7014();
  v27 = v38;
  *v38 = v26;
  sub_1DAAF41C0(0, &qword_1ECBE86F8, &qword_1EE125FE0, &protocol descriptor for QuoteManagerType);
  sub_1DACB6D94();
  v39 = 0u;
  v40 = 0u;
  v41 = 0;
  sub_1DACB6D84();
  v27[1] = sub_1DACB6D54();
  sub_1DAAF41C0(0, &qword_1ECBE8700, &qword_1EE125CC8, &protocol descriptor for QuoteDetailManagerType);
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  v27[2] = result;
  return result;
}

uint64_t sub_1DABB9F24(uint64_t a1)
{
  v2[54] = a1;
  type metadata accessor for SymbolEntity(0);
  v2[55] = swift_task_alloc();
  sub_1DAA6AAFC(0, qword_1EE123840, type metadata accessor for QuoteDetail);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  sub_1DAA6AAFC(0, qword_1EE120250, type metadata accessor for Quote);
  v2[58] = swift_task_alloc();
  v3 = swift_task_alloc();
  v4 = *v1;
  v5 = v1[1];
  v2[59] = v3;
  v2[60] = v4;
  v6 = v1[2];
  v2[61] = v5;
  v2[62] = v6;
  v2[46] = v4;
  v2[47] = v5;
  v2[48] = v6;
  v7 = swift_task_alloc();
  v2[63] = v7;
  *v7 = v2;
  v7[1] = sub_1DABBA0AC;

  return sub_1DABBA508(v3);
}

uint64_t sub_1DABBA0AC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 496);
  v8 = *(*v0 + 480);
  v4 = *v0;

  *(v2 + 392) = v8;
  *(v2 + 408) = v3;
  v5 = swift_task_alloc();
  *(v2 + 512) = v5;
  *v5 = v4;
  v5[1] = sub_1DABBA224;
  v6 = *(v1 + 456);

  return sub_1DABBAC14(v6);
}

uint64_t sub_1DABBA224()
{

  return MEMORY[0x1EEE6DFA0](sub_1DABBA320, 0, 0);
}

uint64_t sub_1DABBA320()
{
  v14 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 456);
  v3 = *(v0 + 464);
  v4 = *(v0 + 440);
  v5 = *(v0 + 448);
  sub_1DACB6FB4();
  sub_1DABBB4C0(v1, v3, qword_1EE120250, type metadata accessor for Quote);
  sub_1DABBB4C0(v2, v5, qword_1EE123840, type metadata accessor for QuoteDetail);
  sub_1DAA9CCDC(v4, v3, v5, (v0 + 16));
  v6 = *(v0 + 160);
  *(v0 + 320) = *(v0 + 144);
  *(v0 + 336) = v6;
  *(v0 + 352) = *(v0 + 176);
  v7 = *(v0 + 96);
  *(v0 + 256) = *(v0 + 80);
  *(v0 + 272) = v7;
  v8 = *(v0 + 128);
  *(v0 + 288) = *(v0 + 112);
  *(v0 + 304) = v8;
  v9 = *(v0 + 32);
  *(v0 + 192) = *(v0 + 16);
  *(v0 + 208) = v9;
  v10 = *(v0 + 64);
  *(v0 + 224) = *(v0 + 48);
  *(v0 + 240) = v10;
  sub_1DACB6FB4();
  sub_1DAC45D08(v4, v13);
  *(v0 + 416) = *v13;
  sub_1DAAA3D4C();
  sub_1DAB951C8();
  sub_1DACB6EA4();

  sub_1DABBB52C(v2, qword_1EE123840, type metadata accessor for QuoteDetail);
  sub_1DABBB52C(v1, qword_1EE120250, type metadata accessor for Quote);
  sub_1DABBB588(v0 + 16);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1DABBA508(uint64_t a1)
{
  *(v2 + 120) = a1;
  v3 = sub_1DACB81B4();
  *(v2 + 128) = v3;
  *(v2 + 136) = *(v3 - 8);
  *(v2 + 144) = swift_task_alloc();
  type metadata accessor for SymbolEntity(0);
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = *v1;
  *(v2 + 176) = *(v1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DABBA604, 0, 0);
}

uint64_t sub_1DABBA604(uint64_t a1)
{
  v2 = v1[18];
  v3 = v1[19];
  v4 = v1[17];
  v12 = v1[16];
  sub_1DACB6D24();
  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  sub_1DACB6FB4();
  sub_1DACB6ED4();
  v7 = v1[10];
  v8 = v1[11];
  sub_1DAAD5434(v3);
  (*(v6 + 32))(v5, v6);
  v1[23] = sub_1DAAF9D34(v7, v8, v2, v5, v6);

  (*(v4 + 8))(v2, v12);
  v9 = swift_task_alloc();
  v1[24] = v9;
  *v9 = v1;
  v9[1] = sub_1DABBA774;
  v10 = v1[15];

  return MEMORY[0x1EEE44EE0](v10);
}

uint64_t sub_1DABBA774()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1DABBA950;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_1DABBA898;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DABBA898()
{
  v1 = *(v0 + 120);
  v2 = type metadata accessor for Quote(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DABBA950()
{
  v22 = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = sub_1DACB8C94();
  __swift_project_value_buffer(v2, qword_1EE11D390);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  v3 = v1;
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB9904();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[25];
  if (v6)
  {
    v8 = v0[19];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315394;
    sub_1DACB6FB4();
    sub_1DACB6ED4();
    v11 = v0[12];
    v12 = v0[13];
    sub_1DAAD5434(v8);
    v13 = sub_1DAA7ABE4(v11, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v14 = sub_1DACBA224();
    v16 = sub_1DAA7ABE4(v14, v15, &v21);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "Failed to fetch quote for symbol=%s, error=%s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v10, -1, -1);
    MEMORY[0x1E1278C00](v9, -1, -1);
  }

  else
  {
  }

  v17 = v0[15];
  v18 = type metadata accessor for Quote(0);
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1DABBAC14(uint64_t a1)
{
  *(v2 + 120) = a1;
  v3 = sub_1DACB8204();
  *(v2 + 128) = v3;
  *(v2 + 136) = *(v3 - 8);
  *(v2 + 144) = swift_task_alloc();
  v4 = sub_1DACB7CC4();
  *(v2 + 152) = v4;
  *(v2 + 160) = *(v4 - 8);
  *(v2 + 168) = swift_task_alloc();
  v5 = sub_1DACB81B4();
  *(v2 + 176) = v5;
  *(v2 + 184) = *(v5 - 8);
  *(v2 + 192) = swift_task_alloc();
  type metadata accessor for SymbolEntity(0);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = *v1;
  *(v2 + 224) = *(v1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DABBADC8, 0, 0);
}

uint64_t sub_1DABBADC8(uint64_t a1)
{
  v2 = v1[25];
  v4 = v1[23];
  v3 = v1[24];
  v5 = v1[22];
  v16 = v1[21];
  v19 = v1[20];
  v20 = v1[19];
  v6 = v1[17];
  v7 = v1[18];
  v18 = v1[16];
  sub_1DACB6D24();
  v8 = v1[5];
  v17 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v8);
  sub_1DACB6FB4();
  sub_1DACB6ED4();
  v9 = v1[10];
  v10 = v1[11];
  sub_1DAAD5434(v2);
  *v3 = 0x404E000000000000;
  (*(v4 + 104))(v3, *MEMORY[0x1E69D63E0], v5);
  sub_1DACB7CB4();
  v11 = *MEMORY[0x1E69D6490];
  v12 = sub_1DACB8204();
  (*(*(v12 - 8) + 104))(v7, v11, v12);
  v1[29] = sub_1DAC70874(v9, v10, v3, v16, v7, v8, v17);

  (*(v6 + 8))(v7, v18);
  (*(v19 + 8))(v16, v20);
  (*(v4 + 8))(v3, v5);
  v13 = swift_task_alloc();
  v1[30] = v13;
  *v13 = v1;
  v13[1] = sub_1DABBAFE8;
  v14 = v1[15];

  return MEMORY[0x1EEE44EE0](v14);
}

uint64_t sub_1DABBAFE8()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1DABBB1E4;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_1DABBB10C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DABBB10C()
{
  v1 = *(v0 + 120);
  v2 = type metadata accessor for QuoteDetail(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DABBB1E4()
{
  v22 = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = sub_1DACB8C94();
  __swift_project_value_buffer(v2, qword_1EE11D390);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  v3 = v1;
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB9904();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[31];
  if (v6)
  {
    v8 = v0[25];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315394;
    sub_1DACB6FB4();
    sub_1DACB6ED4();
    v11 = v0[12];
    v12 = v0[13];
    sub_1DAAD5434(v8);
    v13 = sub_1DAA7ABE4(v11, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v14 = sub_1DACBA224();
    v16 = sub_1DAA7ABE4(v14, v15, &v21);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "Failed to fetch quote detail for symbol=%s, error=%s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v10, -1, -1);
    MEMORY[0x1E1278C00](v9, -1, -1);
  }

  else
  {
  }

  v17 = v0[15];
  v18 = type metadata accessor for QuoteDetail(0);
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1DABBB4C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAA6AAFC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DABBB52C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAA6AAFC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1DABBB5E0()
{
  result = qword_1EE11E658;
  if (!qword_1EE11E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E658);
  }

  return result;
}

unint64_t sub_1DABBB638()
{
  result = qword_1EE11E668;
  if (!qword_1EE11E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E668);
  }

  return result;
}

uint64_t sub_1DABBB6DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B60 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7904();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE86B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DABBB784(uint64_t a1, uint64_t a2)
{
  sub_1DABBBA88(0, &qword_1ECBE86E0, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1DABBBA88(0, &qword_1ECBE86E8, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DABB9638(0);
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7204();
}

uint64_t sub_1DABBB92C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DABB9F24(a1);
}

uint64_t sub_1DABBB9C8(uint64_t a1)
{
  v2 = sub_1DABB95C0();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1DABBBA14()
{
  result = qword_1ECBE8708;
  if (!qword_1ECBE8708)
  {
    sub_1DABBBA88(255, &qword_1ECBE8710, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8708);
  }

  return result;
}

void sub_1DABBBA88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DABB95C0();
    v7 = a3(a1, &type metadata for GetSymbolQuoteIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1DABBBAEC(uint64_t a1)
{
  if (!qword_1ECBE8720)
  {
    sub_1DAAA3D4C();
    sub_1DAADCE24();
    v1 = sub_1DACB71B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE8720);
    }
  }
}

uint64_t sub_1DABBBBBC(uint64_t a1)
{
  sub_1DABBBD50(0);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DABBBC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = sub_1DACB9114();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a1;
  v12[5] = a2;
  v14[4] = sub_1DABBBF60;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1DAB10208;
  v14[3] = &block_descriptor_16;
  v13 = _Block_copy(v14);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [a5 handleRemoteNotification:v11 completion:v13];
  _Block_release(v13);
}

void sub_1DABBBD50(uint64_t a1)
{
  if (!qword_1ECBE8C80)
  {
    sub_1DACB88B4();
    v1 = sub_1DACB8B74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE8C80);
    }
  }
}

void sub_1DABBBDA8(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(char *))
{
  v7 = sub_1DACB88B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = a1;
    a2(a1);
  }

  else
  {
    (*(v8 + 104))(v10, *MEMORY[0x1E69D6978], v7);
    a4(v10);
    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_1DABBBF04(uint64_t a1)
{
  sub_1DABBBD50(0);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DABBBF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_1DACB82E4();
  sub_1DACB71F4();
  sub_1DACB8294();
  v13 = sub_1DACB8274();

  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = sub_1DABBC60C;
  v14[5] = v12;
  v16[4] = sub_1DABBC648;
  v16[5] = v14;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1DABBC444;
  v16[3] = &block_descriptor_17;
  v15 = _Block_copy(v16);
  sub_1DACB71F4();

  [a5 fetchSingleConfigurationWithSettings:a6 completionQueue:v13 completion:v15];
  _Block_release(v15);
}

void sub_1DABBC0E0(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, id a5, void (*a6)(id), int a7, void (*a8)(uint64_t, unint64_t, uint64_t, uint64_t), uint64_t a9)
{
  if (a5)
  {
    v11 = a5;
    a6(a5);
    v12 = a5;
LABEL_5:

    return;
  }

  if (a2 >> 60 == 15)
  {
    sub_1DABBC674();
    v13 = swift_allocError();
    (a6)();
    v12 = v13;
    goto LABEL_5;
  }

  v38 = a2;
  v39 = a1;
  if (a3)
  {
    if (a3 >> 62)
    {
      v16 = sub_1DACB9E14();
      a2 = v38;
      a1 = v39;
      if (v16)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v16 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_11:
        sub_1DAB0B080(a1, a2);
        v40 = MEMORY[0x1E69E7CC0];
        sub_1DAB25DD8(0, v16 & ~(v16 >> 63), 0);
        if (v16 < 0)
        {
          __break(1u);
          goto LABEL_40;
        }

        v17 = 0;
        v18 = v40;
        do
        {
          if ((a3 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1E12777A0](v17, a3);
          }

          else
          {
            v19 = *(a3 + 8 * v17 + 32);
          }

          v20 = v19;
          v21 = [v19 longLongValue];

          v23 = *(v40 + 16);
          v22 = *(v40 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_1DAB25DD8((v22 > 1), v23 + 1, 1);
          }

          ++v17;
          *(v40 + 16) = v23 + 1;
          *(v40 + 8 * v23 + 32) = v21;
        }

        while (v16 != v17);
        if (!a4)
        {
          goto LABEL_20;
        }

LABEL_23:
        v25 = v38;
        v26 = v39;
        if (a4 >> 62)
        {
          v36 = sub_1DACB9E14();
          v25 = v38;
          v26 = v39;
          v27 = v36;
        }

        else
        {
          v27 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v24 = MEMORY[0x1E69E7CC0];
        if (!v27)
        {
          goto LABEL_35;
        }

        v41 = MEMORY[0x1E69E7CC0];
        sub_1DAB25DB8(0, v27 & ~(v27 >> 63), 0);
        if ((v27 & 0x8000000000000000) == 0)
        {
          v28 = 0;
          v24 = v41;
          do
          {
            if ((a4 & 0xC000000000000001) != 0)
            {
              v29 = MEMORY[0x1E12777A0](v28, a4);
            }

            else
            {
              v29 = *(a4 + 8 * v28 + 32);
            }

            v30 = v29;
            v31 = [v29 intValue];

            v33 = *(v41 + 16);
            v32 = *(v41 + 24);
            if (v33 >= v32 >> 1)
            {
              sub_1DAB25DB8((v32 > 1), v33 + 1, 1);
            }

            ++v28;
            *(v41 + 16) = v33 + 1;
            *(v41 + 4 * v33 + 32) = v31;
          }

          while (v27 != v28);
          v25 = v38;
          v26 = v39;
          goto LABEL_35;
        }

LABEL_40:
        __break(1u);
        return;
      }
    }
  }

  sub_1DAB0B080(a1, a2);
  v18 = MEMORY[0x1E69E7CC0];
  if (a4)
  {
    goto LABEL_23;
  }

LABEL_20:
  v24 = MEMORY[0x1E69E7CC0];
  v25 = v38;
  v26 = v39;
LABEL_35:
  v34 = v26;
  v35 = v25;
  sub_1DAB0EBC4(v26, v25);
  a8(v34, v35, v18, v24);
  sub_1DAA563C0(v34, v35);

  sub_1DAB4D534(v34, v35);
}

uint64_t sub_1DABBC444(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1DACB71F4();
    v10 = v8;
    v8 = sub_1DACB7B64();
    v12 = v11;

    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1DACB71F4();
  v12 = 0xF000000000000000;
  if (a3)
  {
LABEL_3:
    sub_1DAB0AAC8();
    a3 = sub_1DACB9644();
  }

LABEL_4:
  if (a4)
  {
    sub_1DAB0AAC8();
    a4 = sub_1DACB9644();
  }

  v13 = a5;
  v9(v8, v12, a3, a4, a5);

  sub_1DAB4D534(v8, v12);
}

uint64_t sub_1DABBC554(uint64_t a1)
{
  sub_1DABBC5BC();
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DABBC5BC()
{
  if (!qword_1EE1240A8)
  {
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1240A8);
    }
  }
}

uint64_t sub_1DABBC60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  return v5(v7);
}

unint64_t sub_1DABBC674()
{
  result = qword_1EE11D078;
  if (!qword_1EE11D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D078);
  }

  return result;
}

uint64_t sub_1DABBC6D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DABBC720(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1DABBC774()
{
  result = qword_1ECBE8730;
  if (!qword_1ECBE8730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8730);
  }

  return result;
}

uint64_t sub_1DABBC7C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x746972777265766FLL;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x65646C4F7065656BLL;
    v4 = 0xEA00000000007473;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x694D6649796C6E6FLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED0000676E697373;
  }

  v7 = 0x746972777265766FLL;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x65646C4F7065656BLL;
    v8 = 0xEA00000000007473;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x694D6649796C6E6FLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED0000676E697373;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DABBC8E4()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABBC99C(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DABBCA40(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DABBCAF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DABBCE70(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DABBCB24(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000676E697373;
  v4 = 0xE900000000000065;
  v5 = 0x746972777265766FLL;
  if (v2 != 1)
  {
    v5 = 0x65646C4F7065656BLL;
    v4 = 0xEA00000000007473;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x694D6649796C6E6FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_1DABBCB98(void *a1)
{
  v2 = sub_1DACB7C04();
  v3 = sub_1DACB92F4();
  [a1 encodeObject:v2 forKey:v3];

  v4 = sub_1DACB92F4();

  v5 = sub_1DACB92F4();
  [a1 encodeObject:v4 forKey:v5];
}

unint64_t sub_1DABBCE1C()
{
  result = qword_1ECBE8738;
  if (!qword_1ECBE8738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8738);
  }

  return result;
}

unint64_t sub_1DABBCE70(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DABBCEBC()
{
  result = qword_1EE11D0C0;
  if (!qword_1EE11D0C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE11D0C0);
  }

  return result;
}

id sub_1DABBCF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v52 = a3;
  v53 = a4;
  v50 = a1;
  v51 = a2;
  sub_1DAA4A0F8(0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  if (a6)
  {
    sub_1DAADD4D0(a5, a6, 3u);
    v16 = sub_1DACB7AB4();
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  }

  else
  {
    v17 = sub_1DACB7AB4();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  }

  v55 = v13;
  v18 = qword_1DACCFA88[*(v6 + 64)];
  if (qword_1EE124188 != -1)
  {
    swift_once();
  }

  sub_1DABBDB30();
  sub_1DACB7F84();
  v19 = v56;
  if (qword_1EE1241A0 != -1)
  {
    swift_once();
  }

  v20 = sub_1DACB7FC4();
  v21 = sub_1DABBD54C(v7, v20 & 1, &qword_1EE1241D0, &qword_1EE1241D8, sub_1DAB41288);
  v22 = sub_1DABBD54C(v7, v20 & 1, &qword_1EE1241B8, &qword_1EE1241C0, sub_1DAB414C4);
  v48 = sub_1DABBD9EC(v7, v20 & 1);
  v49 = v23;
  if (qword_1EE1241E8 != -1)
  {
    swift_once();
  }

  sub_1DACB7F84();
  v24 = v56;
  if (qword_1EE124210 != -1)
  {
    swift_once();
  }

  sub_1DACB7F84();
  v25 = v57;
  if (v21)
  {
    sub_1DAB0AAC8();
    v26 = sub_1DACB9634();

    if (v22)
    {
LABEL_14:
      sub_1DAB0AAC8();
      v27 = sub_1DACB9634();

      goto LABEL_17;
    }
  }

  else
  {
    v26 = 0;
    if (v22)
    {
      goto LABEL_14;
    }
  }

  v27 = 0;
LABEL_17:
  v47 = [objc_allocWithZone(MEMORY[0x1E69C6D68]) initWithDisableAbTesting:v24 overrideSegmentSetIDs:v26 additionalSegmentSetIDs:v27 configurationSource:v19 debugEnvironment:v18 ignoreCache:v25];

  sub_1DAA4DC58(v15, v55);
  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v28 = objc_opt_self();
  sub_1DACB71E4();
  v29 = [v28 mainBundle];
  v30 = [v29 bundleIdentifier];

  v54 = v15;
  if (v30)
  {
    v46 = sub_1DACB9324();
  }

  else
  {
    v46 = 0;
  }

  v31 = [objc_opt_self() defaultDeviceInfo];
  v32 = sub_1DACB92F4();
  v33 = sub_1DACB92F4();
  v34 = sub_1DACB7AB4();
  v35 = *(v34 - 8);
  v36 = v55;
  v37 = 0;
  if ((*(v35 + 48))(v55, 1, v34) != 1)
  {
    v37 = sub_1DACB7A04();
    (*(v35 + 8))(v36, v34);
  }

  v38 = objc_allocWithZone(MEMORY[0x1E69C6D60]);
  v39 = sub_1DACB92F4();

  v40 = sub_1DACB92F4();

  v41 = sub_1DACB92F4();

  LOBYTE(v45) = 0;
  v42 = v47;
  v43 = [v38 initWithRequestKey:v32 responseKey:v33 fallbackURL:v37 userID:v39 storefrontID:v40 bundleID:v41 deviceInfo:15.0 debugOverrides:v31 useBackgroundRefreshRate:v47 requestMode:v45 endpointTimeoutDuration:1];

  sub_1DAA4DDD0(v54);
  return v43;
}

uint64_t sub_1DABBD54C(uint64_t a1, char a2, void *a3, void *a4, uint64_t a5)
{
  LOBYTE(v5) = a2;
  if (*a3 != -1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    type metadata accessor for RemoteConfigurationSettingsFactory();
    sub_1DABBDB30();
    sub_1DACB7F84();
    v6 = HIBYTE(v43) & 0xF;
    if ((v43 & 0x2000000000000000) == 0)
    {
      v6 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (!v6 || (v5 & 1) == 0)
    {
      break;
    }

    sub_1DAA642D8();
    v5 = sub_1DACB9B24();

    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v41 = MEMORY[0x1E69E7CC0];
    v9 = *(v5 + 16);
    while (1)
    {
      if (v7 == v9)
      {

        return v8;
      }

      if (v7 >= *(v5 + 16))
      {
        break;
      }

      v10 = (v5 + 32 + 16 * v7);
      v12 = *v10;
      v11 = v10[1];
      v13 = HIBYTE(v11) & 0xF;
      v14 = v12 & 0xFFFFFFFFFFFFLL;
      if ((v11 & 0x2000000000000000) != 0)
      {
        v15 = HIBYTE(v11) & 0xF;
      }

      else
      {
        v15 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (!v15)
      {
        sub_1DACB71E4();
        v18 = 0;
        goto LABEL_73;
      }

      if ((v11 & 0x1000000000000000) == 0)
      {
        if ((v11 & 0x2000000000000000) != 0)
        {
          v42 = v12;
          v43 = v11 & 0xFFFFFFFFFFFFFFLL;
          if (v12 == 43)
          {
            if (!v13)
            {
              goto LABEL_85;
            }

            if (--v13)
            {
              v18 = 0;
              v28 = &v42 + 1;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  break;
                }

                v30 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  break;
                }

                v18 = v30 + v29;
                if (__OFADD__(v30, v29))
                {
                  break;
                }

                ++v28;
                if (!--v13)
                {
                  goto LABEL_70;
                }
              }
            }
          }

          else if (v12 == 45)
          {
            if (!v13)
            {
              goto LABEL_84;
            }

            if (--v13)
            {
              v18 = 0;
              v22 = &v42 + 1;
              while (1)
              {
                v23 = *v22 - 48;
                if (v23 > 9)
                {
                  break;
                }

                v24 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  break;
                }

                v18 = v24 - v23;
                if (__OFSUB__(v24, v23))
                {
                  break;
                }

                ++v22;
                if (!--v13)
                {
                  goto LABEL_70;
                }
              }
            }
          }

          else if (v13)
          {
            v18 = 0;
            v33 = &v42;
            while (1)
            {
              v34 = *v33 - 48;
              if (v34 > 9)
              {
                break;
              }

              v35 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                break;
              }

              v33 = (v33 + 1);
              if (!--v13)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else
        {
          if ((v12 & 0x1000000000000000) != 0)
          {
            v16 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v16 = sub_1DACB9D24();
          }

          v17 = *v16;
          if (v17 == 43)
          {
            if (v14 < 1)
            {
              goto LABEL_87;
            }

            v13 = v14 - 1;
            if (v14 != 1)
            {
              v18 = 0;
              if (!v16)
              {
                goto LABEL_61;
              }

              v25 = v16 + 1;
              while (1)
              {
                v26 = *v25 - 48;
                if (v26 > 9)
                {
                  break;
                }

                v27 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  break;
                }

                v18 = v27 + v26;
                if (__OFADD__(v27, v26))
                {
                  break;
                }

                ++v25;
                if (!--v13)
                {
                  goto LABEL_70;
                }
              }
            }
          }

          else if (v17 == 45)
          {
            if (v14 < 1)
            {
              goto LABEL_86;
            }

            v13 = v14 - 1;
            if (v14 != 1)
            {
              v18 = 0;
              if (v16)
              {
                v19 = v16 + 1;
                while (1)
                {
                  v20 = *v19 - 48;
                  if (v20 > 9)
                  {
                    goto LABEL_69;
                  }

                  v21 = 10 * v18;
                  if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v18 = v21 - v20;
                  if (__OFSUB__(v21, v20))
                  {
                    goto LABEL_69;
                  }

                  ++v19;
                  if (!--v13)
                  {
                    goto LABEL_70;
                  }
                }
              }

LABEL_61:
              LOBYTE(v13) = 0;
LABEL_70:
              v36 = v13;
              sub_1DACB71E4();
              goto LABEL_71;
            }
          }

          else
          {
            if (!v14)
            {
              goto LABEL_69;
            }

            v18 = 0;
            if (!v16)
            {
              goto LABEL_61;
            }

            while (1)
            {
              v31 = *v16 - 48;
              if (v31 > 9)
              {
                break;
              }

              v32 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v32 + v31;
              if (__OFADD__(v32, v31))
              {
                break;
              }

              ++v16;
              if (!--v14)
              {
                goto LABEL_61;
              }
            }
          }
        }

LABEL_69:
        v18 = 0;
        LOBYTE(v13) = 1;
        goto LABEL_70;
      }

      sub_1DACB71E4();
      v18 = sub_1DABBDB84(v12, v11, 10);
      v36 = v39;
LABEL_71:
      if (v36)
      {
        v18 = 0;
      }

LABEL_73:
      ++v7;
      v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];

      if (v37)
      {
        MEMORY[0x1E12770F0](v38);
        if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DACB9694();
        }

        sub_1DACB96F4();
        v8 = v41;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
  }

  return 0;
}

uint64_t sub_1DABBD9EC(void *a1, char a2)
{
  if (qword_1EE1241F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for RemoteConfigurationSettingsFactory();
  sub_1DABBDB30();
  sub_1DACB7F84();
  result = v8;
  v5 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v5 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5 || (a2 & 1) == 0)
  {

    v6 = a1[5];
    v7 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v6);
    return (*(v7 + 8))(v6, v7);
  }

  return result;
}

uint64_t sub_1DABBDACC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_1DABBDB30()
{
  result = qword_1EE1243D0;
  if (!qword_1EE1243D0)
  {
    type metadata accessor for RemoteConfigurationSettingsFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1243D0);
  }

  return result;
}

unsigned __int8 *sub_1DABBDB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_1DACB71E4();
  result = sub_1DACB94D4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DABBE110(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1DACB9D24();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1DABBE110(uint64_t a1, unint64_t a2)
{
  v2 = sub_1DACB94E4();
  v6 = sub_1DABBE190(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1DABBE190(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1DACB9B14();
    if (!v9 || (v10 = v9, v11 = sub_1DAA7BC40(v9, 0), v12 = sub_1DABBE2E8(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_1DACB71E4(), , v12 == v10))
    {
      v13 = sub_1DACB93F4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1DACB93F4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1DACB9D24();
LABEL_4:

  return sub_1DACB93F4();
}

unint64_t sub_1DABBE2E8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1DABBE508(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1DACB9484();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1DACB9D24();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1DABBE508(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1DACB9464();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1DABBE508(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1DACB9494();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1E1276F50](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1DABBE584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 112);
  v16[6] = *(a1 + 96);
  v16[7] = v10;
  v17 = *(a1 + 128);
  v11 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v11;
  v12 = *(a1 + 80);
  v16[4] = *(a1 + 64);
  v16[5] = v12;
  v13 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v13;
  (*(v7 + 104))(v9, *MEMORY[0x1E69D6490], v6);
  v14 = (*(a3 + 8))(v16, v9, 0, 1, a2, a3);
  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_1DABBE6E8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v26 = a6;
  v27 = a3;
  v28 = a4;
  v25 = a1;
  v9 = sub_1DACB8204();
  v24[0] = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DABBE9A8(0);
  v24[1] = v16;
  (*(v13 + 16))(v15, v6, a5);
  (*(v10 + 16))(v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
  v17 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v18 = (v14 + *(v10 + 80) + v17) & ~*(v10 + 80);
  v19 = swift_allocObject();
  v21 = v25;
  v20 = v26;
  *(v19 + 2) = a5;
  *(v19 + 3) = v20;
  *(v19 + 4) = v21;
  (*(v13 + 32))(&v19[v17], v15, a5);
  (*(v10 + 32))(&v19[v18], v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24[0]);
  v22 = &v19[(v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v22 = v27;
  v22[8] = v28 & 1;
  sub_1DACB71E4();
  return sub_1DACB8A44();
}

uint64_t sub_1DABBE93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 112);
  v9[6] = *(a1 + 96);
  v9[7] = v4;
  v10 = *(a1 + 128);
  v5 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v5;
  v6 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v6;
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v7;
  return (*(a4 + 8))(v9, a2, 0, 1, a3, a4);
}

void sub_1DABBE9A8(uint64_t a1)
{
  if (!qword_1EE11D400)
  {
    sub_1DABBEA00(255);
    v1 = sub_1DACB8B74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11D400);
    }
  }
}

void sub_1DABBEA00(uint64_t a1)
{
  if (!qword_1EE11D1C0)
  {
    sub_1DAA488A4(255, &qword_1EE11FAA0, &type metadata for Headline);
    sub_1DAB07284();
    v1 = sub_1DACB91A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11D1C0);
    }
  }
}

uint64_t sub_1DABBEA7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *v4;
  *(v5 + 56) = a3;
  *(v5 + 64) = v6;
  *(v5 + 25) = a4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  *(v5 + 32) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1DABBEACC, 0, 0);
}

uint64_t sub_1DABBEACC()
{
  v14 = v0;
  v1 = *(v0 + 25);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v5 + 112);
  v12[6] = *(v5 + 96);
  v12[7] = v6;
  v13 = *(v5 + 128);
  v7 = *(v5 + 48);
  v12[2] = *(v5 + 32);
  v12[3] = v7;
  v8 = *(v5 + 80);
  v12[4] = *(v5 + 64);
  v12[5] = v8;
  v9 = *(v5 + 16);
  v12[0] = *v5;
  v12[1] = v9;
  *(v0 + 72) = off_1F568E640(v12, v4, v2, v1 & 1, v3);
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_1DABBEBC8;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1DABBEBC8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1DABC2754;
  }

  else
  {

    v2 = sub_1DABC275C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DABBECE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *v4;
  *(v5 + 56) = a3;
  *(v5 + 64) = v6;
  *(v5 + 25) = a4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  *(v5 + 32) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1DABBED34, 0, 0);
}

uint64_t sub_1DABBED34()
{
  v14 = v0;
  v1 = *(v0 + 25);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v5 + 112);
  v12[6] = *(v5 + 96);
  v12[7] = v6;
  v13 = *(v5 + 128);
  v7 = *(v5 + 48);
  v12[2] = *(v5 + 32);
  v12[3] = v7;
  v8 = *(v5 + 80);
  v12[4] = *(v5 + 64);
  v12[5] = v8;
  v9 = *(v5 + 16);
  v12[0] = *v5;
  v12[1] = v9;
  *(v0 + 72) = off_1F568FFF8(v12, v4, v2, v1 & 1, v3);
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_1DABBEE30;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1DABBEE30()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1DABBEF6C;
  }

  else
  {

    v2 = sub_1DABBEF4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DABBEF6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DABBEFD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *v4;
  *(v5 + 56) = a3;
  *(v5 + 64) = v6;
  *(v5 + 25) = a4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  *(v5 + 32) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1DABBF024, 0, 0);
}

uint64_t sub_1DABBF024()
{
  v14 = v0;
  v1 = *(v0 + 25);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v5 + 112);
  v12[6] = *(v5 + 96);
  v12[7] = v6;
  v13 = *(v5 + 128);
  v7 = *(v5 + 48);
  v12[2] = *(v5 + 32);
  v12[3] = v7;
  v8 = *(v5 + 80);
  v12[4] = *(v5 + 64);
  v12[5] = v8;
  v9 = *(v5 + 16);
  v12[0] = *v5;
  v12[1] = v9;
  *(v0 + 72) = off_1F5690088(v12, v4, v2, v1 & 1, v3);
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_1DABBEBC8;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1DABBF120(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 192) = a6;
  *(v7 + 200) = v6;
  *(v7 + 176) = a3;
  *(v7 + 184) = a5;
  *(v7 + 161) = a4;
  *(v7 + 168) = a2;
  v8 = *(a1 + 112);
  *(v7 + 112) = *(a1 + 96);
  *(v7 + 128) = v8;
  *(v7 + 144) = *(a1 + 128);
  v9 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v9;
  v10 = *(a1 + 80);
  *(v7 + 80) = *(a1 + 64);
  *(v7 + 96) = v10;
  v11 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v11;
  return MEMORY[0x1EEE6DFA0](sub_1DABBF174, 0, 0);
}

uint64_t sub_1DABBF174()
{
  *(v0 + 208) = (*(*(v0 + 192) + 8))(v0 + 16, *(v0 + 168), *(v0 + 176), *(v0 + 161) & 1, *(v0 + 184));
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_1DABBF240;

  return MEMORY[0x1EEE44EE0](v0 + 152);
}

uint64_t sub_1DABBF240()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1DABBF37C;
  }

  else
  {

    v2 = sub_1DABBF35C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DABBF37C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DABBF3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 688) = a5;
  *(v5 + 616) = a4;
  *(v5 + 608) = a3;
  *(v5 + 600) = a2;
  *(v5 + 592) = a1;
  v6 = sub_1DACB8204();
  *(v5 + 624) = v6;
  v7 = *(v6 - 8);
  *(v5 + 632) = v7;
  *(v5 + 640) = *(v7 + 64);
  *(v5 + 648) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DABBF4BC, 0, 0);
}

uint64_t sub_1DABBF4BC()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  v4 = *(v0 + 624);
  v5 = *(v0 + 688);
  v6 = *(v0 + 616);
  v7 = *(v0 + 608);
  v8 = *(v0 + 600);
  *(v0 + 584) = *(v0 + 592);
  (*(v3 + 16))(v1, v7, v4);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v0 + 656) = v11;
  *(v11 + 16) = v8;
  (*(v3 + 32))(v11 + v9, v1, v4);
  v12 = v11 + v10;
  *v12 = v6;
  *(v12 + 8) = v5 & 1;
  sub_1DACB71F4();
  v13 = swift_task_alloc();
  *(v0 + 664) = v13;
  sub_1DAA488A4(0, &qword_1EE11FAC0, &type metadata for Stock);
  v15 = v14;
  sub_1DABC17B8(0);
  v17 = v16;
  v18 = sub_1DAA59F54();
  *v13 = v0;
  v13[1] = sub_1DABBF678;

  return MEMORY[0x1EEE45328](&unk_1DACCFB28, v11, v15, v17, v18);
}

uint64_t sub_1DABBF678(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 672) = a1;
  *(v3 + 680) = v1;

  if (v1)
  {
    v4 = sub_1DABC2760;
  }

  else
  {

    v4 = sub_1DABC2764;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DABBF798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 688) = a5;
  *(v5 + 616) = a4;
  *(v5 + 608) = a3;
  *(v5 + 600) = a2;
  *(v5 + 592) = a1;
  v6 = sub_1DACB8204();
  *(v5 + 624) = v6;
  v7 = *(v6 - 8);
  *(v5 + 632) = v7;
  *(v5 + 640) = *(v7 + 64);
  *(v5 + 648) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DABBF870, 0, 0);
}

uint64_t sub_1DABBF870()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  v4 = *(v0 + 624);
  v5 = *(v0 + 688);
  v6 = *(v0 + 616);
  v7 = *(v0 + 608);
  v8 = *(v0 + 600);
  *(v0 + 584) = *(v0 + 592);
  (*(v3 + 16))(v1, v7, v4);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v0 + 656) = v11;
  *(v11 + 16) = v8;
  (*(v3 + 32))(v11 + v9, v1, v4);
  v12 = v11 + v10;
  *v12 = v6;
  *(v12 + 8) = v5 & 1;
  sub_1DACB71F4();
  v13 = swift_task_alloc();
  *(v0 + 664) = v13;
  sub_1DAA488A4(0, &qword_1EE11FAC0, &type metadata for Stock);
  v15 = v14;
  sub_1DABC17B8(0);
  v17 = v16;
  v18 = sub_1DAA59F54();
  *v13 = v0;
  v13[1] = sub_1DABBFA2C;

  return MEMORY[0x1EEE45328](&unk_1DACCFB58, v11, v15, v17, v18);
}

uint64_t sub_1DABBFA2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 672) = a1;
  *(v3 + 680) = v1;

  if (v1)
  {
    v4 = sub_1DABBFE2C;
  }

  else
  {

    v4 = sub_1DABBFB4C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1DABBFB4C()
{
  v1 = *(v0 + 672);
  v39 = *(v1 + 16);
  if (v39)
  {
    v2 = 0;
    v3 = (v0 + 448);
    v4 = (v1 + 32);
    v5 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      *(v0 + 16) = *v4;
      v6 = v4[1];
      v7 = v4[2];
      v8 = v4[4];
      *(v0 + 64) = v4[3];
      *(v0 + 80) = v8;
      *(v0 + 32) = v6;
      *(v0 + 48) = v7;
      v9 = v4[5];
      v10 = v4[6];
      v11 = v4[8];
      *(v0 + 128) = v4[7];
      *(v0 + 144) = v11;
      *(v0 + 96) = v9;
      *(v0 + 112) = v10;
      v12 = *(v0 + 152);
      *v3 = *v4;
      v13 = v4[4];
      v15 = v4[1];
      v14 = v4[2];
      *(v0 + 496) = v4[3];
      *(v0 + 512) = v13;
      *(v0 + 464) = v15;
      *(v0 + 480) = v14;
      v17 = v4[6];
      v16 = v4[7];
      v18 = v4[5];
      *(v0 + 576) = *(v4 + 16);
      *(v0 + 544) = v17;
      *(v0 + 560) = v16;
      *(v0 + 528) = v18;
      sub_1DABC1830(v0 + 16, v0 + 160);
      sub_1DABC1830(v0 + 16, v0 + 304);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v5;
      v20 = sub_1DAB095DC((v0 + 448));
      v22 = v5[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_25;
      }

      v26 = v21;
      if (v5[3] < v25)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v37 = v20;
      sub_1DAB66728();
      v20 = v37;
      v5 = v40;
      if (v26)
      {
LABEL_3:
        sub_1DAA9B1C8(v0 + 16);
        goto LABEL_4;
      }

LABEL_12:
      v5[(v20 >> 6) + 8] |= 1 << v20;
      v28 = v5[6] + 136 * v20;
      v30 = *(v0 + 496);
      v29 = *(v0 + 512);
      v31 = *(v0 + 480);
      *(v28 + 16) = *(v0 + 464);
      *(v28 + 32) = v31;
      *(v28 + 48) = v30;
      *(v28 + 64) = v29;
      *v28 = *v3;
      v32 = *(v0 + 528);
      v33 = *(v0 + 544);
      v34 = *(v0 + 560);
      *(v28 + 128) = *(v0 + 576);
      *(v28 + 96) = v33;
      *(v28 + 112) = v34;
      *(v28 + 80) = v32;
      *(v5[7] + 8 * v20) = MEMORY[0x1E69E7CC0];
      v35 = v5[2];
      v24 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v24)
      {
        goto LABEL_26;
      }

      v5[2] = v36;
LABEL_4:
      ++v2;
      sub_1DAC2899C(v12);
      sub_1DABC1894(v0 + 16);
      v4 += 9;
      if (v39 == v2)
      {
        goto LABEL_18;
      }
    }

    sub_1DAB61D98(v25, isUniquelyReferenced_nonNull_native);
    v20 = sub_1DAB095DC((v0 + 448));
    if ((v26 & 1) != (v27 & 1))
    {

      sub_1DACBA1F4();
      return;
    }

LABEL_11:
    if (v26)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  v5 = MEMORY[0x1E69E7CC8];
LABEL_18:

  v38 = *(v0 + 8);

  v38(v5);
}

uint64_t sub_1DABBFE2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DABBFE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 688) = a5;
  *(v5 + 616) = a4;
  *(v5 + 608) = a3;
  *(v5 + 600) = a2;
  *(v5 + 592) = a1;
  v6 = sub_1DACB8204();
  *(v5 + 624) = v6;
  v7 = *(v6 - 8);
  *(v5 + 632) = v7;
  *(v5 + 640) = *(v7 + 64);
  *(v5 + 648) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DABBFF74, 0, 0);
}

uint64_t sub_1DABBFF74()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  v4 = *(v0 + 624);
  v5 = *(v0 + 688);
  v6 = *(v0 + 616);
  v7 = *(v0 + 608);
  v8 = *(v0 + 600);
  *(v0 + 584) = *(v0 + 592);
  (*(v3 + 16))(v1, v7, v4);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v0 + 656) = v11;
  *(v11 + 16) = v8;
  (*(v3 + 32))(v11 + v9, v1, v4);
  v12 = v11 + v10;
  *v12 = v6;
  *(v12 + 8) = v5 & 1;
  sub_1DACB71F4();
  v13 = swift_task_alloc();
  *(v0 + 664) = v13;
  sub_1DAA488A4(0, &qword_1EE11FAC0, &type metadata for Stock);
  v15 = v14;
  sub_1DABC17B8(0);
  v17 = v16;
  v18 = sub_1DAA59F54();
  *v13 = v0;
  v13[1] = sub_1DABBF678;

  return MEMORY[0x1EEE45328](&unk_1DACCFB88, v11, v15, v17, v18);
}

uint64_t sub_1DABC0130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 640) = a8;
  *(v8 + 632) = a7;
  *(v8 + 736) = a6;
  *(v8 + 624) = a5;
  *(v8 + 616) = a4;
  *(v8 + 608) = a3;
  *(v8 + 600) = a2;
  *(v8 + 592) = a1;
  v10 = sub_1DACB8204();
  *(v8 + 648) = v10;
  v11 = *(v10 - 8);
  *(v8 + 656) = v11;
  *(v8 + 664) = *(v11 + 64);
  *(v8 + 672) = swift_task_alloc();
  v12 = *(a7 - 8);
  *(v8 + 680) = v12;
  *(v8 + 688) = *(v12 + 64);
  *(v8 + 696) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DABC0270, 0, 0);
}

uint64_t sub_1DABC0270()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v21 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v24 = *(v0 + 736);
  v23 = *(v0 + 624);
  v7 = *(v0 + 616);
  v8 = *(v0 + 608);
  *(v0 + 584) = *(v0 + 600);
  v22 = *(v0 + 632);
  v9 = *(v0 + 632);
  (*(v3 + 16))(v1, v8, v9);
  (*(v5 + 16))(v4, v7, v6);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = (v2 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v0 + 704) = v12;
  *(v12 + 16) = v22;
  (*(v3 + 32))(v12 + v10, v1, v9);
  (*(v5 + 32))(v12 + v11, v4, v6);
  v13 = v12 + ((v21 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v13 = v23;
  *(v13 + 8) = v24 & 1;
  v14 = swift_task_alloc();
  *(v0 + 712) = v14;
  sub_1DAA488A4(0, &qword_1EE11FAC0, &type metadata for Stock);
  v16 = v15;
  sub_1DABC17B8(0);
  v18 = v17;
  v19 = sub_1DAA59F54();
  *v14 = v0;
  v14[1] = sub_1DABC04A8;

  return MEMORY[0x1EEE45328](&unk_1DACCFBA0, v12, v16, v18, v19);
}

uint64_t sub_1DABC04A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 720) = a1;
  *(v3 + 728) = v1;

  if (v1)
  {
    v4 = sub_1DABC08B8;
  }

  else
  {

    v4 = sub_1DABC05C8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1DABC05C8()
{
  v1 = *(v0 + 720);
  v40 = *(v1 + 16);
  if (v40)
  {
    v2 = 0;
    v3 = (v0 + 448);
    v4 = (v1 + 32);
    v5 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      *(v0 + 16) = *v4;
      v6 = v4[1];
      v7 = v4[2];
      v8 = v4[4];
      *(v0 + 64) = v4[3];
      *(v0 + 80) = v8;
      *(v0 + 32) = v6;
      *(v0 + 48) = v7;
      v9 = v4[5];
      v10 = v4[6];
      v11 = v4[8];
      *(v0 + 128) = v4[7];
      *(v0 + 144) = v11;
      *(v0 + 96) = v9;
      *(v0 + 112) = v10;
      v12 = *(v0 + 152);
      *v3 = *v4;
      v13 = v4[4];
      v15 = v4[1];
      v14 = v4[2];
      *(v0 + 496) = v4[3];
      *(v0 + 512) = v13;
      *(v0 + 464) = v15;
      *(v0 + 480) = v14;
      v17 = v4[6];
      v16 = v4[7];
      v18 = v4[5];
      *(v0 + 576) = *(v4 + 16);
      *(v0 + 544) = v17;
      *(v0 + 560) = v16;
      *(v0 + 528) = v18;
      sub_1DABC1830(v0 + 16, v0 + 160);
      sub_1DABC1830(v0 + 16, v0 + 304);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v5;
      v20 = sub_1DAB095DC((v0 + 448));
      v22 = v5[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_25;
      }

      v26 = v21;
      if (v5[3] < v25)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v37 = v20;
      sub_1DAB66728();
      v20 = v37;
      v5 = v41;
      if (v26)
      {
LABEL_3:
        sub_1DAA9B1C8(v0 + 16);
        goto LABEL_4;
      }

LABEL_12:
      v5[(v20 >> 6) + 8] |= 1 << v20;
      v28 = v5[6] + 136 * v20;
      v30 = *(v0 + 496);
      v29 = *(v0 + 512);
      v31 = *(v0 + 480);
      *(v28 + 16) = *(v0 + 464);
      *(v28 + 32) = v31;
      *(v28 + 48) = v30;
      *(v28 + 64) = v29;
      *v28 = *v3;
      v32 = *(v0 + 528);
      v33 = *(v0 + 544);
      v34 = *(v0 + 560);
      *(v28 + 128) = *(v0 + 576);
      *(v28 + 96) = v33;
      *(v28 + 112) = v34;
      *(v28 + 80) = v32;
      *(v5[7] + 8 * v20) = MEMORY[0x1E69E7CC0];
      v35 = v5[2];
      v24 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v24)
      {
        goto LABEL_26;
      }

      v5[2] = v36;
LABEL_4:
      ++v2;
      sub_1DAC2899C(v12);
      sub_1DABC1894(v0 + 16);
      v4 += 9;
      if (v40 == v2)
      {
        goto LABEL_18;
      }
    }

    sub_1DAB61D98(v25, isUniquelyReferenced_nonNull_native);
    v20 = sub_1DAB095DC((v0 + 448));
    if ((v26 & 1) != (v27 & 1))
    {

      sub_1DACBA1F4();
      return;
    }

LABEL_11:
    if (v26)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  v5 = MEMORY[0x1E69E7CC8];
LABEL_18:
  v38 = *(v0 + 592);

  *v38 = v5;

  v39 = *(v0 + 8);

  v39();
}

uint64_t sub_1DABC08B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DABC0934(uint64_t a1)
{
  v3 = v2;
  v6 = v1[2];
  v5 = v1[3];
  v7 = *(*(v6 - 8) + 64);
  v8 = (*(*(v6 - 8) + 80) + 40) & ~*(*(v6 - 8) + 80);
  v9 = *(sub_1DACB8204() - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[4];
  v12 = v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = v12[8];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1DAA9A3AC;

  return sub_1DABC0130(a1, v11, v1 + v8, v1 + v10, v13, v14, v6, v5);
}

uint64_t sub_1DABC0AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 608) = a8;
  *(v8 + 600) = a7;
  *(v8 + 640) = a6;
  *(v8 + 592) = a5;
  *(v8 + 584) = a4;
  *(v8 + 576) = a3;
  *(v8 + 568) = a2;
  *(v8 + 560) = a1;
  v9 = *(a2 + 112);
  *(v8 + 112) = *(a2 + 96);
  *(v8 + 128) = v9;
  *(v8 + 144) = *(a2 + 128);
  v10 = *(a2 + 48);
  *(v8 + 48) = *(a2 + 32);
  *(v8 + 64) = v10;
  v11 = *(a2 + 80);
  *(v8 + 80) = *(a2 + 64);
  *(v8 + 96) = v11;
  v12 = *(a2 + 16);
  *(v8 + 16) = *a2;
  *(v8 + 32) = v12;
  return MEMORY[0x1EEE6DFA0](sub_1DABC0B34, 0, 0);
}

uint64_t sub_1DABC0B34()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v2 + 64);
  v6 = *(v2 + 16);
  v5 = *(v2 + 32);
  *(v3 + 48) = *(v2 + 48);
  *(v3 + 64) = v4;
  *(v3 + 16) = v6;
  *(v3 + 32) = v5;
  v8 = *(v2 + 96);
  v7 = *(v2 + 112);
  v9 = *(v2 + 80);
  *(v3 + 128) = *(v2 + 128);
  *(v3 + 96) = v8;
  *(v3 + 112) = v7;
  *(v3 + 80) = v9;
  *v3 = *v2;
  *(v0 + 152) = *v2;
  v10 = *(v2 + 16);
  v11 = *(v2 + 32);
  v12 = *(v2 + 48);
  *(v0 + 216) = *(v2 + 64);
  *(v0 + 200) = v12;
  *(v0 + 184) = v11;
  *(v0 + 168) = v10;
  v13 = *(v2 + 80);
  v14 = *(v2 + 96);
  v15 = *(v2 + 112);
  *(v0 + 280) = *(v2 + 128);
  *(v0 + 264) = v15;
  *(v0 + 248) = v14;
  *(v0 + 232) = v13;
  sub_1DAA806E4(v0 + 16, v0 + 288);
  v16 = swift_task_alloc();
  *(v0 + 616) = v16;
  *v16 = v0;
  v16[1] = sub_1DABC0C6C;
  v17 = *(v0 + 608);
  v18 = *(v0 + 600);
  v19 = *(v0 + 592);
  v20 = *(v0 + 584);

  return sub_1DABBF120(v0 + 152, v20, v19, v1 & 1, v18, v17);
}

uint64_t sub_1DABC0C6C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 624) = v1;

  if (v1)
  {
    v5 = sub_1DABC0DB8;
  }

  else
  {
    *(v4 + 632) = a1;
    v5 = sub_1DABC0D94;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DABC0DB8()
{
  v1 = *(v0 + 568);
  *(v0 + 424) = *v1;
  v2 = *(v1 + 64);
  v4 = *(v1 + 16);
  v3 = *(v1 + 32);
  *(v0 + 472) = *(v1 + 48);
  *(v0 + 488) = v2;
  *(v0 + 440) = v4;
  *(v0 + 456) = v3;
  v6 = *(v1 + 96);
  v5 = *(v1 + 112);
  v7 = *(v1 + 80);
  *(v0 + 552) = *(v1 + 128);
  *(v0 + 520) = v6;
  *(v0 + 536) = v5;
  *(v0 + 504) = v7;
  sub_1DAA9B1C8(v0 + 424);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1DABC0E50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  sub_1DAAD4E00(0);
  sub_1DACB8BB4();
  *(swift_allocObject() + 16) = v4;
  sub_1DACB71E4();
  v5 = sub_1DACB89D4();
  v6 = sub_1DACB8A64();

  return v6;
}

void sub_1DABC0F84(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_1DAB6B824(*a1);
  *a2 = v4;
  *(a2 + 8) = v3;
}

uint64_t sub_1DABC1070(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v21 = a4;
  v12 = sub_1DACB8204();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = *v8;
  sub_1DABBE9A8(0);
  (*(v13 + 16))(&v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v12);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v15;
  (*(v13 + 32))(v17 + v16, &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v12);
  v18 = v17 + ((v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v18 = a3;
  *(v18 + 8) = v21 & 1;
  sub_1DACB71E4();
  sub_1DACB71F4();
  return sub_1DACB8A44();
}

uint64_t sub_1DABC11F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  v11 = *a3;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1DAB07890;

  return sub_1DABBF3E4(a2, v11, a4, a5, a6 & 1);
}

uint64_t sub_1DABC12BC(uint64_t a1)
{
  v4 = *(sub_1DACB8204() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DAA9A3AC;

  return sub_1DABC11F4(a1, v6, (v1 + 24), v1 + v5, v8, v9);
}

uint64_t sub_1DABC13FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 488) = a6;
  *(v6 + 440) = a4;
  *(v6 + 448) = a5;
  *(v6 + 424) = a1;
  *(v6 + 432) = a2;
  v7 = *(a2 + 112);
  *(v6 + 112) = *(a2 + 96);
  *(v6 + 128) = v7;
  *(v6 + 144) = *(a2 + 128);
  v8 = *(a2 + 48);
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 64) = v8;
  v9 = *(a2 + 80);
  *(v6 + 80) = *(a2 + 64);
  *(v6 + 96) = v9;
  v10 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v10;
  *(v6 + 456) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1DABC1454, 0, 0);
}

uint64_t sub_1DABC1454()
{
  v1 = *(v0 + 488);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v2 + 64);
  v6 = *(v2 + 16);
  v5 = *(v2 + 32);
  *(v3 + 48) = *(v2 + 48);
  *(v3 + 64) = v4;
  *(v3 + 16) = v6;
  *(v3 + 32) = v5;
  v8 = *(v2 + 96);
  v7 = *(v2 + 112);
  v9 = *(v2 + 80);
  *(v3 + 128) = *(v2 + 128);
  *(v3 + 96) = v8;
  *(v3 + 112) = v7;
  *(v3 + 80) = v9;
  *v3 = *v2;
  sub_1DAA806E4(v0 + 16, v0 + 152);
  v10 = swift_task_alloc();
  *(v0 + 464) = v10;
  *v10 = v0;
  v10[1] = sub_1DABC1550;
  v11 = *(v0 + 448);
  v12 = *(v0 + 440);

  return sub_1DABBEA7C(v0 + 16, v12, v11, v1 & 1);
}

uint64_t sub_1DABC1550(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 472) = v1;

  if (v1)
  {
    v5 = sub_1DABC2758;
  }

  else
  {
    *(v4 + 480) = a1;
    v5 = sub_1DABC2750;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DABC1678(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_1DACB8204() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1DAA9A3AC;

  return sub_1DABC13FC(a1, a2, (v2 + 16), v2 + v7, v9, v10);
}

void sub_1DABC17B8(uint64_t a1)
{
  if (!qword_1ECBE87A0)
  {
    sub_1DAA488A4(255, &qword_1EE11FAA0, &type metadata for Headline);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE87A0);
    }
  }
}

uint64_t sub_1DABC1830(uint64_t a1, uint64_t a2)
{
  sub_1DABC17B8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DABC1894(uint64_t a1)
{
  sub_1DABC17B8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DABC18F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  v11 = *a3;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1DAAFF1F4;

  return sub_1DABBF798(a2, v11, a4, a5, a6 & 1);
}

uint64_t sub_1DABC19B8(uint64_t a1)
{
  v4 = *(sub_1DACB8204() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DAA94754;

  return sub_1DABC18F0(a1, v6, (v1 + 24), v1 + v5, v8, v9);
}

uint64_t sub_1DABC1AF8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 488) = a6;
  *(v6 + 440) = a4;
  *(v6 + 448) = a5;
  *(v6 + 424) = a1;
  *(v6 + 432) = a2;
  v7 = *(a2 + 112);
  *(v6 + 112) = *(a2 + 96);
  *(v6 + 128) = v7;
  *(v6 + 144) = *(a2 + 128);
  v8 = *(a2 + 48);
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 64) = v8;
  v9 = *(a2 + 80);
  *(v6 + 80) = *(a2 + 64);
  *(v6 + 96) = v9;
  v10 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v10;
  *(v6 + 456) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1DABC1B50, 0, 0);
}

uint64_t sub_1DABC1B50()
{
  v1 = *(v0 + 488);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v2 + 64);
  v6 = *(v2 + 16);
  v5 = *(v2 + 32);
  *(v3 + 48) = *(v2 + 48);
  *(v3 + 64) = v4;
  *(v3 + 16) = v6;
  *(v3 + 32) = v5;
  v8 = *(v2 + 96);
  v7 = *(v2 + 112);
  v9 = *(v2 + 80);
  *(v3 + 128) = *(v2 + 128);
  *(v3 + 96) = v8;
  *(v3 + 112) = v7;
  *(v3 + 80) = v9;
  *v3 = *v2;
  sub_1DAA806E4(v0 + 16, v0 + 152);
  v10 = swift_task_alloc();
  *(v0 + 464) = v10;
  *v10 = v0;
  v10[1] = sub_1DABC1C4C;
  v11 = *(v0 + 448);
  v12 = *(v0 + 440);

  return sub_1DABBECE4(v0 + 16, v12, v11, v1 & 1);
}

uint64_t sub_1DABC1C4C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 472) = v1;

  if (v1)
  {
    v5 = sub_1DABC1D98;
  }

  else
  {
    *(v4 + 480) = a1;
    v5 = sub_1DABC1D74;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DABC1D98()
{
  v1 = *(v0 + 432);
  *(v0 + 288) = *v1;
  v2 = *(v1 + 64);
  v4 = *(v1 + 16);
  v3 = *(v1 + 32);
  *(v0 + 336) = *(v1 + 48);
  *(v0 + 352) = v2;
  *(v0 + 304) = v4;
  *(v0 + 320) = v3;
  v6 = *(v1 + 96);
  v5 = *(v1 + 112);
  v7 = *(v1 + 80);
  *(v0 + 416) = *(v1 + 128);
  *(v0 + 384) = v6;
  *(v0 + 400) = v5;
  *(v0 + 368) = v7;
  sub_1DAA9B1C8(v0 + 288);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1DABC1E30(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_1DACB8204() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1DAA9A3AC;

  return sub_1DABC1AF8(a1, a2, (v2 + 16), v2 + v7, v9, v10);
}

uint64_t sub_1DABC1F70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  v11 = *a3;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1DAB07890;

  return sub_1DABBFE9C(a2, v11, a4, a5, a6 & 1);
}

uint64_t objectdestroy_8Tm()
{
  v1 = sub_1DACB8204();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 9, v3 | 7);
}

uint64_t sub_1DABC2110(uint64_t a1)
{
  v4 = *(sub_1DACB8204() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DAA9A3AC;

  return sub_1DABC1F70(a1, v6, (v1 + 24), v1 + v5, v8, v9);
}

uint64_t sub_1DABC2250(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 488) = a6;
  *(v6 + 440) = a4;
  *(v6 + 448) = a5;
  *(v6 + 424) = a1;
  *(v6 + 432) = a2;
  v7 = *(a2 + 112);
  *(v6 + 112) = *(a2 + 96);
  *(v6 + 128) = v7;
  *(v6 + 144) = *(a2 + 128);
  v8 = *(a2 + 48);
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 64) = v8;
  v9 = *(a2 + 80);
  *(v6 + 80) = *(a2 + 64);
  *(v6 + 96) = v9;
  v10 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v10;
  *(v6 + 456) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1DABC22A8, 0, 0);
}

uint64_t sub_1DABC22A8()
{
  v1 = *(v0 + 488);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v2 + 64);
  v6 = *(v2 + 16);
  v5 = *(v2 + 32);
  *(v3 + 48) = *(v2 + 48);
  *(v3 + 64) = v4;
  *(v3 + 16) = v6;
  *(v3 + 32) = v5;
  v8 = *(v2 + 96);
  v7 = *(v2 + 112);
  v9 = *(v2 + 80);
  *(v3 + 128) = *(v2 + 128);
  *(v3 + 96) = v8;
  *(v3 + 112) = v7;
  *(v3 + 80) = v9;
  *v3 = *v2;
  sub_1DAA806E4(v0 + 16, v0 + 152);
  v10 = swift_task_alloc();
  *(v0 + 464) = v10;
  *v10 = v0;
  v10[1] = sub_1DABC1550;
  v11 = *(v0 + 448);
  v12 = *(v0 + 440);

  return sub_1DABBEFD4(v0 + 16, v12, v11, v1 & 1);
}

uint64_t objectdestroy_14Tm()
{
  v1 = sub_1DACB8204();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 9, v3 | 7);
}

uint64_t sub_1DABC2474(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_1DACB8204() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1DAA9A3AC;

  return sub_1DABC2250(a1, a2, (v2 + 16), v2 + v7, v9, v10);
}

uint64_t sub_1DABC25B4(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(*(v7 - 8) + 64);
  v10 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v11 = *(sub_1DACB8204() - 8);
  v12 = (v10 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = swift_task_alloc();
  *(v5 + 16) = v16;
  *v16 = v5;
  v16[1] = sub_1DAA9A3AC;

  return sub_1DABC0AD0(a1, a2, v2 + v10, v2 + v12, v14, v15, v7, v8);
}

uint64_t sub_1DABC2788@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v9 = *&result;
  if (a2)
  {
    v9 = 1.79769313e308;
  }

  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (a4)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = a3;
  }

  if (a6)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = a5;
  }

  *a9 = v9;
  if ((a8 & 1) == 0)
  {
    v10 = a7;
  }

  *(a9 + 8) = v11;
  *(a9 + 16) = v12;
  *(a9 + 24) = v10;
  return result;
}

uint64_t sub_1DABC27C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DABC31EC(0, &qword_1EE123C70, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC2EFC();
  sub_1DACBA2F4();
  if (!v2)
  {
    v48 = MEMORY[0x1E69E7CC0];
    v47 = 0;
    sub_1DACB9F84();
    v10 = v45;
    LODWORD(v42) = v46;
    if (v46)
    {
      swift_beginAccess();
      v11 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v13 = *(v11 + 2);
      v12 = *(v11 + 3);
      if (v13 >= v12 >> 1)
      {
        v11 = sub_1DAA9A3B0((v12 > 1), v13 + 1, 1, v11);
      }

      *(v11 + 2) = v13 + 1;
      v14 = &v11[16 * v13];
      *(v14 + 4) = 0xD000000000000012;
      *(v14 + 5) = 0x80000001DACEC230;
      v48 = v11;
      swift_endAccess();
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v47 = 1;
    sub_1DACB9F84();
    v41 = *&v45;
    LODWORD(v40) = v46;
    if (v46)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_1DAA9A3B0((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[16 * v16];
      *(v17 + 4) = 0xD000000000000017;
      *(v17 + 5) = 0x80000001DACEC250;
      v48 = v11;
      swift_endAccess();
    }

    v47 = 2;
    sub_1DACB9F84();
    v39 = *&v45;
    v38 = v46;
    if (v46)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v19 = *(v11 + 2);
      v18 = *(v11 + 3);
      if (v19 >= v18 >> 1)
      {
        v11 = sub_1DAA9A3B0((v18 > 1), v19 + 1, 1, v11);
      }

      *(v11 + 2) = v19 + 1;
      v20 = &v11[16 * v19];
      *(v20 + 4) = 0xD000000000000016;
      *(v20 + 5) = 0x80000001DACEC270;
      v48 = v11;
      swift_endAccess();
    }

    LOBYTE(v45) = 3;
    sub_1DACB9F84();
    if (v44)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v23 = *(v11 + 2);
      v22 = *(v11 + 3);
      if (v23 >= v22 >> 1)
      {
        v11 = sub_1DAA9A3B0((v22 > 1), v23 + 1, 1, v11);
      }

      *(v11 + 2) = v23 + 1;
      v24 = &v11[16 * v23];
      *(v24 + 4) = 0xD000000000000022;
      *(v24 + 5) = 0x80000001DACEC290;
      if (v42)
      {
        v10 = 1.79769313e308;
      }

      if (v40)
      {
        v25 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v41;
      }

      v26 = v39;
      v40 = 0x7FFFFFFFFFFFFFFFLL;
      if (v38)
      {
        v26 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v41 = v26;
      v42 = v25;
    }

    else
    {
      v27 = v43;
      v28 = *(v11 + 2);
      if (v42)
      {
        v10 = 1.79769313e308;
      }

      v29 = 0x7FFFFFFFFFFFFFFFLL;
      if (v40)
      {
        v30 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v41;
      }

      if (!v38)
      {
        v29 = v39;
      }

      v41 = v29;
      v42 = v30;
      if (!v28)
      {
        sub_1DAA41DCC();
        v33 = sub_1DACB9AD4();
        v36 = sub_1DACB9914();
        sub_1DACB8C64("loaded App Review Prompt configuration with no need for fallback values", 71, 2, &dword_1DAA3F000, v33, v36, MEMORY[0x1E69E7CC0]);
        goto LABEL_44;
      }

      v40 = v43;
    }

    sub_1DAA41D64(0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1DACC1D20;
    sub_1DAA613E8();
    *(v31 + 56) = v32;
    *(v31 + 64) = sub_1DAAF691C();
    *(v31 + 32) = v11;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v33 = sub_1DACB9AD4();
    v34 = sub_1DACB9914();
    sub_1DACB8C64("loaded App Review Prompt configuration with fallback values for keys: %@", 72, 2, &dword_1DAA3F000, v33, v34, v31);

    v27 = v40;
LABEL_44:

    (*(v7 + 8))(v9, v6);

    *a2 = v10;
    v35 = v41;
    *(a2 + 8) = v42;
    *(a2 + 16) = v35;
    *(a2 + 24) = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DABC2E88()
{
  v1 = 0xD000000000000012;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000022;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
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

unint64_t sub_1DABC2EFC()
{
  result = qword_1EE124540;
  if (!qword_1EE124540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124540);
  }

  return result;
}

uint64_t sub_1DABC2F50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DABC33B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DABC2F78(uint64_t a1)
{
  v2 = sub_1DABC2EFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC2FB4(uint64_t a1)
{
  v2 = sub_1DABC2EFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABC2FF0(void *a1)
{
  sub_1DABC31EC(0, &qword_1EE123BB8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v10[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC2EFC();
  sub_1DACBA304();
  v14 = 0;
  v8 = v10[2];
  sub_1DACBA0B4();
  if (!v8)
  {
    v13 = 1;
    sub_1DACBA0C4();
    v12 = 2;
    sub_1DACBA0C4();
    v11 = 3;
    sub_1DACBA0C4();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_1DABC31EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DABC2EFC();
    v7 = a3(a1, &type metadata for AppReviewPromptConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DABC3250(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DABC3270(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_1DABC32B0()
{
  result = qword_1ECBE87A8;
  if (!qword_1ECBE87A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE87A8);
  }

  return result;
}

unint64_t sub_1DABC3308()
{
  result = qword_1EE124530;
  if (!qword_1EE124530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124530);
  }

  return result;
}

unint64_t sub_1DABC3360()
{
  result = qword_1EE124538;
  if (!qword_1EE124538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124538);
  }

  return result;
}

uint64_t sub_1DABC33B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001DACEC230 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DACEC250 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DACEC270 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001DACEC290 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1DACBA174();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DABC3520(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(a1);
  sub_1DACB8434();
}

uint64_t sub_1DABC3574@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v10 = 0xFFFFFFFFLL;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
  }

  if (a5)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4;
  }

  *a9 = result;
  *(a9 + 8) = v10;
  *(a9 + 16) = 0;
  if (a7)
  {
    a6 = 1;
  }

  *(a9 + 24) = v11;
  v13 = 86400;
  if ((a10 & 1) == 0)
  {
    v13 = a8;
  }

  *(a9 + 32) = 0;
  *(a9 + 40) = a6;
  *(a9 + 48) = 0;
  *(a9 + 56) = v13;
  *(a9 + 64) = 0;
  return result;
}

unint64_t sub_1DABC35E4()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  v3 = 0xD000000000000018;
  v4 = 0xD00000000000001ELL;
  if (v2 != 3)
  {
    v4 = 0xD000000000000028;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DABC3674@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DABC40A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DABC369C(uint64_t a1)
{
  v2 = sub_1DABC3E00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC36D8(uint64_t a1)
{
  v2 = sub_1DABC3E00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABC3714(void *a1)
{
  sub_1DABC3E54(0, &qword_1EE123B98, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v19 = v1[1];
  v18 = *(v1 + 16);
  v17 = v1[3];
  v16 = *(v1 + 32);
  v15 = v1[5];
  v10 = *(v1 + 48);
  v12 = v1[7];
  v13 = *(v1 + 64);
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC3E00();
  sub_1DACB71E4();
  sub_1DACBA304();
  v25 = v9;
  v24 = 0;
  sub_1DAA613E8();
  sub_1DAA962D8(&qword_1EE123E98, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1DACBA074();
  if (v2)
  {
  }

  else
  {

    v23 = 1;
    sub_1DACBA064();
    v22 = 2;
    sub_1DACBA054();
    v21 = 3;
    sub_1DACBA054();
    v20 = 4;
    sub_1DACBA054();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DABC39BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DABC3E54(0, &qword_1EE123C50, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC3E00();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1DAA613E8();
  LOBYTE(v33) = 0;
  sub_1DAA962D8(&qword_1EE123E88, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1DACB9F84();
  v10 = v38[0];
  LOBYTE(v38[0]) = 1;
  v11 = sub_1DACB9F74();
  v56 = v12 & 1;
  LOBYTE(v38[0]) = 2;
  v57 = sub_1DACB9F64();
  v54 = v13 & 1;
  LOBYTE(v38[0]) = 3;
  v32 = sub_1DACB9F64();
  v52 = v14 & 1;
  v49 = 4;
  v15 = sub_1DACB9F64();
  v17 = v16;
  v18 = *(v7 + 8);
  v31 = v15;
  v18(v9, v6);
  v50 = v17 & 1;
  *&v33 = v10;
  v30 = v11;
  *(&v33 + 1) = v11;
  v29 = v56;
  LOBYTE(v34) = v56;
  *(&v34 + 1) = *v55;
  DWORD1(v34) = *&v55[3];
  v19 = v57;
  *(&v34 + 1) = v57;
  v28 = v54;
  LOBYTE(v35) = v54;
  *(&v35 + 1) = *v53;
  DWORD1(v35) = *&v53[3];
  v20 = v32;
  *(&v35 + 1) = v32;
  v21 = v52;
  LOBYTE(v36) = v52;
  DWORD1(v36) = *&v51[3];
  *(&v36 + 1) = *v51;
  *(&v36 + 1) = v31;
  v22 = v50;
  v37 = v50;
  v23 = v35;
  v24 = v36;
  *(a2 + 64) = v50;
  *(a2 + 32) = v23;
  *(a2 + 48) = v24;
  v25 = v34;
  *a2 = v33;
  *(a2 + 16) = v25;
  sub_1DAA4F3F4(&v33, v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v38[0] = v10;
  v38[1] = v30;
  v39 = v29;
  *v40 = *v55;
  *&v40[3] = *&v55[3];
  v41 = v19;
  v42 = v28;
  *v43 = *v53;
  *&v43[3] = *&v53[3];
  v44 = v20;
  v45 = v21;
  *&v46[3] = *&v51[3];
  *v46 = *v51;
  v47 = v31;
  v48 = v22;
  return sub_1DAA5337C(v38);
}

unint64_t sub_1DABC3E00()
{
  result = qword_1EE1243F8;
  if (!qword_1EE1243F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1243F8);
  }

  return result;
}

void sub_1DABC3E54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DABC3E00();
    v7 = a3(a1, &type metadata for PaidBundleViaOfferConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DABC3EB8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DABC3F14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1DABC3FA0()
{
  result = qword_1ECBE87B0;
  if (!qword_1ECBE87B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE87B0);
  }

  return result;
}

unint64_t sub_1DABC3FF8()
{
  result = qword_1EE1243E8;
  if (!qword_1EE1243E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1243E8);
  }

  return result;
}

unint64_t sub_1DABC4050()
{
  result = qword_1EE1243F0;
  if (!qword_1EE1243F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1243F0);
  }

  return result;
}

uint64_t sub_1DABC40A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001DACEC360 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001DACEC380 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DACEC3A0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DACEC3C0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001DACEC3E0 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_1DACBA174();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1DABC4258@<X0>(char *a1@<X8>)
{
  sub_1DAA82998(0);
  v39 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v36 - v6;
  sub_1DAA492B4(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  v13 = sub_1DACB7CC4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - v17;
  v19 = type metadata accessor for Quote(0);
  sub_1DAA89B98(v1 + *(v19 + 52), v12, sub_1DAA492B4);
  v20 = *(v14 + 48);
  if (v20(v12, 1, v13) == 1)
  {
    v10 = v12;
LABEL_5:
    sub_1DAA89DF0(v10, sub_1DAA492B4);
    sub_1DAA49610(0);
    return (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
  }

  v37 = a1;
  v21 = v12;
  v22 = *(v14 + 32);
  v22(v18, v21, v13);
  sub_1DAA89B98(v1 + *(v19 + 56), v10, sub_1DAA492B4);
  if (v20(v10, 1, v13) == 1)
  {
    (*(v14 + 8))(v18, v13);
    a1 = v37;
    goto LABEL_5;
  }

  v25 = v41;
  v22(v41, v10, v13);
  sub_1DAA804F4(&qword_1EE123A48, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  result = sub_1DACB9244();
  if (result)
  {
    v26 = v22;
    v27 = v38;
    v26(v38, v18, v13);
    v28 = v39;
    v26((v27 + *(v39 + 48)), v25, v13);
    v29 = v40;
    sub_1DAA89B98(v27, v40, sub_1DAA82998);
    v30 = *(v28 + 48);
    v31 = v37;
    v26(v37, v29, v13);
    v32 = *(v14 + 8);
    v32(v29 + v30, v13);
    sub_1DAA83664(v27, v29, sub_1DAA82998);
    v33 = *(v28 + 48);
    sub_1DAA49610(0);
    v35 = v34;
    v26(&v31[*(v34 + 36)], (v29 + v33), v13);
    v32(v29, v13);
    return (*(*(v35 - 8) + 56))(v31, 0, 1, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABC4748()
{
  v1 = *(v0 + 112);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABC4868@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Quote(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t sub_1DABC489C@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Quote(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t sub_1DABC48D0@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Quote(0);
  *a1 = *(v1 + *(result + 72));
  return result;
}

uint64_t sub_1DABC499C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Quote(0) + 88);
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DABC4A64@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Quote(0) + 96);
  v4 = sub_1DACB7F54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DABC4AE0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, char *a23, char *a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v32 = *a18;
  v33 = *a22;
  v34 = *a23;
  v35 = *a24;
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15 & 1;
  *(a9 + 112) = a16;
  *(a9 + 120) = a17;
  *(a9 + 128) = v32;
  v36 = type metadata accessor for Quote(0);
  sub_1DAA83664(a19, a9 + v36[13], sub_1DAA492B4);
  sub_1DAA83664(a20, a9 + v36[14], sub_1DAA492B4);
  sub_1DAA83664(a21, a9 + v36[15], sub_1DAA492B4);
  *(a9 + v36[16]) = v33;
  *(a9 + v36[17]) = v34;
  *(a9 + v36[18]) = v35;
  v37 = a9 + v36[19];
  *v37 = a25;
  *(v37 + 8) = a26 & 1;
  sub_1DAA83664(a27, a9 + v36[20], sub_1DAA492B4);
  sub_1DAA83664(a28, a9 + v36[21], sub_1DAA492B4);
  sub_1DAA83664(a29, a9 + v36[23], sub_1DAA492B4);
  v38 = v36[22];
  v39 = sub_1DACB7CC4();
  (*(*(v39 - 8) + 32))(a9 + v38, a30, v39);
  v40 = v36[24];
  v41 = sub_1DACB7F54();
  v42 = *(*(v41 - 8) + 32);

  return v42(a9 + v40, a31, v41);
}

uint64_t sub_1DABC4D48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DABC5B88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DABC4D7C(uint64_t a1)
{
  v2 = sub_1DAA7E358();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC4DB8(uint64_t a1)
{
  v2 = sub_1DAA7E358();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABC4DF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v72 = sub_1DACB7F54();
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7CC4();
  v74 = *(v4 - 8);
  v75 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA492B4(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v67 = &v66 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v66 = &v66 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v77 = &v66 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v66 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v66 - v18;
  sub_1DAA7E2F0(0, &qword_1EE11F5A0, sub_1DAA7E358, &type metadata for Quote.CodingKeys, MEMORY[0x1E69E6F48]);
  v78 = v20;
  v76 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - v21;
  v23 = type metadata accessor for Quote(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1DAA7E358();
  v79 = v22;
  v27 = v81;
  sub_1DACBA2F4();
  if (v27)
  {
    v81 = v27;
    return __swift_destroy_boxed_opaque_existential_1(v80);
  }

  v28 = v17;
  v29 = v76;
  v30 = v77;
  v83 = 0;
  *v25 = sub_1DACB9F54();
  v25[8] = v31 & 1;
  v83 = 1;
  *(v25 + 2) = sub_1DACB9F54();
  v25[24] = v32 & 1;
  v83 = 2;
  *(v25 + 4) = sub_1DACB9F54();
  v25[40] = v33 & 1;
  v83 = 3;
  *(v25 + 6) = sub_1DACB9F54();
  v25[56] = v34 & 1;
  v83 = 4;
  *(v25 + 8) = sub_1DACB9F54();
  v25[72] = v35 & 1;
  v83 = 5;
  *(v25 + 10) = sub_1DACB9F54();
  v25[88] = v36 & 1;
  v83 = 6;
  *(v25 + 12) = sub_1DACB9F54();
  v25[104] = v38 & 1;
  v83 = 7;
  v39 = sub_1DACB9F34();
  v81 = 0;
  *(v25 + 14) = v39;
  *(v25 + 15) = v40;
  v82 = 8;
  sub_1DABC5A78();
  v41 = v81;
  sub_1DACB9FE4();
  v81 = v41;
  if (v41 || (v25[128] = v83, v83 = 9, sub_1DAA804F4(&qword_1EE123A38, MEMORY[0x1E6969530], MEMORY[0x1E6969558]), v42 = v81, sub_1DACB9F84(), (v81 = v42) != 0))
  {
    (*(v29 + 8))(v79, v78);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
  }

  else
  {
    sub_1DAA83664(v19, &v25[v23[13]], sub_1DAA492B4);
    v83 = 10;
    v52 = v81;
    sub_1DACB9F84();
    v81 = v52;
    if (v52)
    {
      (*(v29 + 8))(v79, v78);
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v43 = 1;
    }

    else
    {
      sub_1DAA83664(v28, &v25[v23[14]], sub_1DAA492B4);
      v83 = 11;
      v53 = v81;
      sub_1DACB9F84();
      v81 = v53;
      if (v53)
      {
        (*(v29 + 8))(v79, v78);
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v43 = 1;
        v44 = 1;
      }

      else
      {
        sub_1DAA83664(v30, &v25[v23[15]], sub_1DAA492B4);
        v82 = 12;
        sub_1DABC5ACC();
        v54 = v81;
        sub_1DACB9F84();
        v81 = v54;
        if (v54 || (v25[v23[16]] = v83, v82 = 13, v55 = v81, sub_1DACB9F84(), (v81 = v55) != 0) || (v25[v23[17]] = v83, v82 = 14, v56 = v81, sub_1DACB9F84(), (v81 = v56) != 0) || (v25[v23[18]] = v83, v83 = 15, v57 = v81, v58 = sub_1DACB9F54(), (v81 = v57) != 0) || (v60 = &v25[v23[19]], *v60 = v58, v60[8] = v59 & 1, v83 = 16, v61 = v81, sub_1DACB9F84(), (v81 = v61) != 0))
        {
          (*(v29 + 8))(v79, v78);
          v46 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v43 = 1;
          v44 = 1;
          v45 = 1;
        }

        else
        {
          sub_1DAA83664(v66, &v25[v23[20]], sub_1DAA492B4);
          v83 = 17;
          v62 = v81;
          sub_1DACB9F84();
          v81 = v62;
          if (v62)
          {
            (*(v29 + 8))(v79, v78);
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v43 = 1;
            v44 = 1;
            v45 = 1;
            v46 = 1;
          }

          else
          {
            sub_1DAA83664(v67, &v25[v23[21]], sub_1DAA492B4);
            v83 = 18;
            v63 = v81;
            sub_1DACB9FE4();
            v81 = v63;
            if (v63)
            {
              (*(v29 + 8))(v79, v78);
              v48 = 0;
              v49 = 0;
              v43 = 1;
              v44 = 1;
              v45 = 1;
              v46 = 1;
              v47 = 1;
            }

            else
            {
              (*(v74 + 32))(&v25[v23[22]], v69, v75);
              v83 = 19;
              v64 = v81;
              sub_1DACB9F84();
              v81 = v64;
              if (v64)
              {
                (*(v29 + 8))(v79, v78);
                v49 = 0;
                v43 = 1;
                v44 = 1;
                v45 = 1;
                v46 = 1;
                v47 = 1;
                v48 = 1;
              }

              else
              {
                sub_1DAA83664(v68, &v25[v23[23]], sub_1DAA492B4);
                v83 = 20;
                sub_1DAA804F4(&qword_1EE1239F8, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BE0]);
                v65 = v81;
                sub_1DACB9FE4();
                v81 = v65;
                if (!v65)
                {
                  (*(v29 + 8))(v79, v78);
                  (*(v70 + 32))(&v25[v23[24]], v71, v72);
                  sub_1DAA89B98(v25, v73, type metadata accessor for Quote);
                  __swift_destroy_boxed_opaque_existential_1(v80);
                  v50 = type metadata accessor for Quote;
                  v51 = v25;
                  return sub_1DAA89DF0(v51, v50);
                }

                (*(v29 + 8))(v79, v78);
                v43 = 1;
                v44 = 1;
                v45 = 1;
                v46 = 1;
                v47 = 1;
                v48 = 1;
                v49 = 1;
              }
            }
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v80);

  if (v43)
  {
    result = sub_1DAA89DF0(&v25[v23[13]], sub_1DAA492B4);
    if ((v44 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v44)
  {
LABEL_10:
    if (v45)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  result = sub_1DAA89DF0(&v25[v23[14]], sub_1DAA492B4);
  if (v45)
  {
LABEL_11:
    result = sub_1DAA89DF0(&v25[v23[15]], sub_1DAA492B4);
    if ((v46 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  if (!v46)
  {
LABEL_12:
    if (v47)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = sub_1DAA89DF0(&v25[v23[20]], sub_1DAA492B4);
  if (v47)
  {
LABEL_13:
    result = sub_1DAA89DF0(&v25[v23[21]], sub_1DAA492B4);
    if ((v48 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

LABEL_20:
  if (!v48)
  {
LABEL_14:
    if (v49)
    {
      goto LABEL_22;
    }

    return result;
  }

LABEL_21:
  result = (*(v74 + 8))(&v25[v23[22]], v75);
  if (v49)
  {
LABEL_22:
    v50 = sub_1DAA492B4;
    v51 = &v25[v23[23]];
    return sub_1DAA89DF0(v51, v50);
  }

  return result;
}

unint64_t sub_1DABC5A78()
{
  result = qword_1EE123370;
  if (!qword_1EE123370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123370);
  }

  return result;
}

unint64_t sub_1DABC5ACC()
{
  result = qword_1EE1237C8;
  if (!qword_1EE1237C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1237C8);
  }

  return result;
}

unint64_t sub_1DABC5B34()
{
  result = qword_1ECBE87B8;
  if (!qword_1ECBE87B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE87B8);
  }

  return result;
}

uint64_t sub_1DABC5B88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6168436563697270 && a2 == 0xEB0000000065676ELL || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DACE1AF0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F487265746661 && a2 == 0xEF65636972507372 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACE19D0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656B72614D657270 && a2 == 0xEE00656369725074 || (sub_1DACBA174() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DACE1C10 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_1DACBA174() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xEE00737574617453 || (sub_1DACBA174() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xEC0000006E65704FLL || (sub_1DACBA174() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xED000065736F6C43 || (sub_1DACBA174() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DACE1A90 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x756F536563697270 && a2 == 0xEB00000000656372 || (sub_1DACBA174() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DACE19F0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x656B72614D657270 && a2 == 0xEF656372756F5374 || (sub_1DACBA174() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DACEC420 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DACE1B60 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x73676E696E726165 && a2 == 0xEF65746144646E45 || (sub_1DACBA174() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DACE3AF0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x7243726576726573 && a2 == 0xEF74416465746165 || (sub_1DACBA174() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x695474656B72616DLL && a2 == 0xEE00656E6F5A656DLL)
  {

    return 20;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

uint64_t sub_1DABC6274()
{
  if (*v0)
  {
    return 1635018093;
  }

  else
  {
    return 0x656E696C64616568;
  }
}

uint64_t sub_1DABC62A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656E696C64616568 && a2 == 0xE800000000000000;
  if (v6 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DABC6384(uint64_t a1)
{
  v2 = sub_1DABC854C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC63C0(uint64_t a1)
{
  v2 = sub_1DABC854C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DABC63FC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1DABC7254(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_1DABC6448()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 0x6D755374726F6873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1DABC64A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DABC75E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DABC64C8(uint64_t a1)
{
  v2 = sub_1DABC89E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC6504(uint64_t a1)
{
  v2 = sub_1DABC89E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DABC6540@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1DABC76FC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

unint64_t sub_1DABC6584()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 1)
  {
    v1 = 0x546873696C627570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72656469766F7270;
  }
}

uint64_t sub_1DABC65EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DABC796C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DABC6614(uint64_t a1)
{
  v2 = sub_1DABC8A38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC6650(uint64_t a1)
{
  v2 = sub_1DABC8A38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DABC668C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1DABC7A90(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1DABC66E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DABC6768(uint64_t a1)
{
  v2 = sub_1DABC9084();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC67A4(uint64_t a1)
{
  v2 = sub_1DABC9084();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABC67E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  sub_1DABC9484(0, &qword_1ECBE88D0, sub_1DABC9084, &type metadata for YahooNewsResponse.Provider.CodingKeys);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC9084();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v15;
  v10 = sub_1DACB9F34();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v9 = v10;
  v9[1] = v12;
  return result;
}

uint64_t sub_1DABC6990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DABC6A14(uint64_t a1)
{
  v2 = sub_1DABC90D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC6A50(uint64_t a1)
{
  v2 = sub_1DABC90D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABC6A8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  sub_1DABC9484(0, &qword_1ECBE88E0, sub_1DABC90D8, &type metadata for YahooNewsResponse.FinancialInstrument.CodingKeys);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC90D8();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v15;
  v10 = sub_1DACB9FA4();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v9 = v10;
  v9[1] = v12;
  return result;
}

uint64_t sub_1DABC6C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DABC6CC8(uint64_t a1)
{
  v2 = sub_1DABC893C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC6D04(uint64_t a1)
{
  v2 = sub_1DABC893C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DABC6D40@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DABC7D30(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DABC6D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D6574497377656ELL && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DABC6E18(uint64_t a1)
{
  v2 = sub_1DABC8FDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC6E54(uint64_t a1)
{
  v2 = sub_1DABC8FDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DABC6E90@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DABC7ED8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DABC6EBC()
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DABC6F28(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DABC6F78@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1DACB9F04();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1DABC7000@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DABC7058(uint64_t a1)
{
  v2 = sub_1DABC94E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC7094(uint64_t a1)
{
  v2 = sub_1DABC94E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABC70D0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DABC8080(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DABC7120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5265636976726573 && a2 == 0xEF65736E6F707365)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DABC71B0(uint64_t a1)
{
  v2 = sub_1DABC84A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABC71EC(uint64_t a1)
{
  v2 = sub_1DABC84A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DABC7228@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DABC82FC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DABC7254@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v30 = a2;
  sub_1DABC9484(0, &qword_1ECBE87D8, sub_1DABC854C, &type metadata for YahooNewsResponse.NewsItem.CodingKeys);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC854C();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  LOBYTE(v31) = 0;
  sub_1DABC85A0();
  sub_1DACB9FE4();
  v10 = v38;
  v29 = v37;
  v11 = v40;
  v28 = v39;
  v12 = v42;
  v27 = v41;
  v52 = 1;
  sub_1DABC85F4();
  sub_1DACB9FE4();
  (*(v9 + 8))(v8, v5);
  v25 = *(&v49 + 1);
  v26 = v49;
  v13 = *(&v50 + 1);
  v24 = v50;
  v22 = *(&v51 + 1);
  v23 = v51;
  v14 = v29;
  *&v31 = v29;
  *(&v31 + 1) = v10;
  v15 = v28;
  *&v32 = v28;
  *(&v32 + 1) = v11;
  v16 = v27;
  *&v33 = v27;
  *(&v33 + 1) = v12;
  v34 = v49;
  v35 = v50;
  v36 = v51;
  sub_1DAADF6A8(&v31, &v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37 = v14;
  v38 = v10;
  v39 = v15;
  v40 = v11;
  v41 = v16;
  v42 = v12;
  v43 = v26;
  v44 = v25;
  v45 = v24;
  v46 = v13;
  v47 = v23;
  v48 = v22;
  result = sub_1DAADF704(&v37);
  v18 = v34;
  v19 = v30;
  v30[2] = v33;
  v19[3] = v18;
  v20 = v36;
  v19[4] = v35;
  v19[5] = v20;
  v21 = v32;
  *v19 = v31;
  v19[1] = v21;
  return result;
}

uint64_t sub_1DABC75E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D755374726F6873 && a2 == 0xEC0000007972616DLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DACBA174();

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

uint64_t sub_1DABC76FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  sub_1DABC9484(0, &qword_1ECBE8840, sub_1DABC89E4, &type metadata for YahooNewsResponse.Headline.CodingKeys);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC89E4();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v24;
  v27 = 0;
  v11 = sub_1DACB9FA4();
  v13 = v12;
  v23 = v11;
  v26 = 1;
  v21 = sub_1DACB9FA4();
  v22 = v14;
  v25 = 2;
  v15 = sub_1DACB9F34();
  v16 = v8;
  v18 = v17;
  (*(v9 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v23;
  v10[1] = v13;
  v20 = v22;
  v10[2] = v21;
  v10[3] = v20;
  v10[4] = v15;
  v10[5] = v18;
  return result;
}

uint64_t sub_1DABC796C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001DACEC440 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546873696C627570 && a2 == 0xEB00000000656D69)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DACBA174();

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

uint64_t sub_1DABC7A90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v22 = a2;
  sub_1DABC9484(0, &qword_1ECBE8850, sub_1DABC8A38, &type metadata for YahooNewsResponse.Meta.CodingKeys);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC8A38();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v22;
  v25 = 0;
  sub_1DABC8A8C();
  sub_1DACB9FE4();
  v11 = v23;
  v21 = v24;
  v25 = 1;
  sub_1DABC8AE0();
  sub_1DACB9FE4();
  v19 = v23;
  v20 = v11;
  v12 = v24;
  LOBYTE(v23) = 2;
  v13 = sub_1DACB9FA4();
  v14 = v8;
  v16 = v15;
  (*(v9 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v18 = v21;
  *v10 = v20;
  v10[1] = v18;
  v10[2] = v19;
  v10[3] = v12;
  v10[4] = v13;
  v10[5] = v16;
  return result;
}

void *sub_1DABC7D30(void *a1)
{
  sub_1DABC9484(0, &qword_1ECBE8828, sub_1DABC893C, &type metadata for YahooNewsResponse.ServiceResponse.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC893C();
  v9 = v8;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABC8990();
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void *sub_1DABC7ED8(void *a1)
{
  sub_1DABC9484(0, &qword_1ECBE88B8, sub_1DABC8FDC, &type metadata for YahooNewsResponse.Response.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC8FDC();
  v9 = v8;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABC9030();
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1DABC8080(void *a1)
{
  sub_1DABC9484(0, &qword_1ECBE8938, sub_1DABC94E4, &type metadata for YahooNewsResponse.NewsItems.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1DABC94E4();
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABC9620(0, &qword_1ECBE8948, MEMORY[0x1E69E62F8]);
    sub_1DABC9538();
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v8 = v10[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void *sub_1DABC82FC(void *a1)
{
  sub_1DABC9484(0, &qword_1ECBE87C0, sub_1DABC84A4, &type metadata for YahooNewsResponse.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABC84A4();
  v9 = v8;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABC84F8();
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1DABC84A4()
{
  result = qword_1ECBE87C8;
  if (!qword_1ECBE87C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE87C8);
  }

  return result;
}

unint64_t sub_1DABC84F8()
{
  result = qword_1ECBE87D0;
  if (!qword_1ECBE87D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE87D0);
  }

  return result;
}

unint64_t sub_1DABC854C()
{
  result = qword_1ECBE87E0;
  if (!qword_1ECBE87E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE87E0);
  }

  return result;
}

unint64_t sub_1DABC85A0()
{
  result = qword_1ECBE87E8;
  if (!qword_1ECBE87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE87E8);
  }

  return result;
}

unint64_t sub_1DABC85F4()
{
  result = qword_1ECBE87F0;
  if (!qword_1ECBE87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE87F0);
  }

  return result;
}

uint64_t sub_1DABC8668(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DABC86B0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1DABC8730()
{
  result = qword_1ECBE87F8;
  if (!qword_1ECBE87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE87F8);
  }

  return result;
}

unint64_t sub_1DABC8788()
{
  result = qword_1ECBE8800;
  if (!qword_1ECBE8800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8800);
  }

  return result;
}

unint64_t sub_1DABC87E0()
{
  result = qword_1ECBE8808;
  if (!qword_1ECBE8808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8808);
  }

  return result;
}

unint64_t sub_1DABC8838()
{
  result = qword_1ECBE8810;
  if (!qword_1ECBE8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8810);
  }

  return result;
}

unint64_t sub_1DABC8890()
{
  result = qword_1ECBE8818;
  if (!qword_1ECBE8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8818);
  }

  return result;
}

unint64_t sub_1DABC88E8()
{
  result = qword_1ECBE8820;
  if (!qword_1ECBE8820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8820);
  }

  return result;
}

unint64_t sub_1DABC893C()
{
  result = qword_1ECBE8830;
  if (!qword_1ECBE8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8830);
  }

  return result;
}

unint64_t sub_1DABC8990()
{
  result = qword_1ECBE8838;
  if (!qword_1ECBE8838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8838);
  }

  return result;
}

unint64_t sub_1DABC89E4()
{
  result = qword_1ECBE8848;
  if (!qword_1ECBE8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8848);
  }

  return result;
}

unint64_t sub_1DABC8A38()
{
  result = qword_1ECBE8858;
  if (!qword_1ECBE8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8858);
  }

  return result;
}

unint64_t sub_1DABC8A8C()
{
  result = qword_1ECBE8860;
  if (!qword_1ECBE8860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8860);
  }

  return result;
}

unint64_t sub_1DABC8AE0()
{
  result = qword_1ECBE8868;
  if (!qword_1ECBE8868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8868);
  }

  return result;
}

uint64_t sub_1DABC8B64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DABC8BAC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1DABC8BF8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1DABC8C54(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DABC8CC8()
{
  result = qword_1ECBE8870;
  if (!qword_1ECBE8870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8870);
  }

  return result;
}

unint64_t sub_1DABC8D20()
{
  result = qword_1ECBE8878;
  if (!qword_1ECBE8878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8878);
  }

  return result;
}

unint64_t sub_1DABC8D78()
{
  result = qword_1ECBE8880;
  if (!qword_1ECBE8880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8880);
  }

  return result;
}

unint64_t sub_1DABC8DD0()
{
  result = qword_1ECBE8888;
  if (!qword_1ECBE8888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8888);
  }

  return result;
}

unint64_t sub_1DABC8E28()
{
  result = qword_1ECBE8890;
  if (!qword_1ECBE8890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8890);
  }

  return result;
}

unint64_t sub_1DABC8E80()
{
  result = qword_1ECBE8898;
  if (!qword_1ECBE8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8898);
  }

  return result;
}

unint64_t sub_1DABC8ED8()
{
  result = qword_1ECBE88A0;
  if (!qword_1ECBE88A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE88A0);
  }

  return result;
}

unint64_t sub_1DABC8F30()
{
  result = qword_1ECBE88A8;
  if (!qword_1ECBE88A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE88A8);
  }

  return result;
}

unint64_t sub_1DABC8F88()
{
  result = qword_1ECBE88B0;
  if (!qword_1ECBE88B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE88B0);
  }

  return result;
}

unint64_t sub_1DABC8FDC()
{
  result = qword_1ECBE88C0;
  if (!qword_1ECBE88C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE88C0);
  }

  return result;
}

unint64_t sub_1DABC9030()
{
  result = qword_1ECBE88C8;
  if (!qword_1ECBE88C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE88C8);
  }

  return result;
}

unint64_t sub_1DABC9084()
{
  result = qword_1ECBE88D8;
  if (!qword_1ECBE88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE88D8);
  }

  return result;
}

unint64_t sub_1DABC90D8()
{
  result = qword_1ECBE88E8;
  if (!qword_1ECBE88E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE88E8);
  }

  return result;
}

unint64_t sub_1DABC9170()
{
  result = qword_1ECBE88F0;
  if (!qword_1ECBE88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE88F0);
  }

  return result;
}

unint64_t sub_1DABC91C8()
{
  result = qword_1ECBE88F8;
  if (!qword_1ECBE88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE88F8);
  }

  return result;
}

unint64_t sub_1DABC9220()
{
  result = qword_1ECBE8900;
  if (!qword_1ECBE8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8900);
  }

  return result;
}

unint64_t sub_1DABC9278()
{
  result = qword_1ECBE8908;
  if (!qword_1ECBE8908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8908);
  }

  return result;
}

unint64_t sub_1DABC92D0()
{
  result = qword_1ECBE8910;
  if (!qword_1ECBE8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8910);
  }

  return result;
}

unint64_t sub_1DABC9328()
{
  result = qword_1ECBE8918;
  if (!qword_1ECBE8918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8918);
  }

  return result;
}

unint64_t sub_1DABC9380()
{
  result = qword_1ECBE8920;
  if (!qword_1ECBE8920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8920);
  }

  return result;
}

unint64_t sub_1DABC93D8()
{
  result = qword_1ECBE8928;
  if (!qword_1ECBE8928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8928);
  }

  return result;
}

unint64_t sub_1DABC9430()
{
  result = qword_1ECBE8930;
  if (!qword_1ECBE8930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8930);
  }

  return result;
}

void sub_1DABC9484(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1DACBA004();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1DABC94E4()
{
  result = qword_1ECBE8940;
  if (!qword_1ECBE8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8940);
  }

  return result;
}

unint64_t sub_1DABC9538()
{
  result = qword_1ECBE8950;
  if (!qword_1ECBE8950)
  {
    sub_1DABC9620(255, &qword_1ECBE8948, MEMORY[0x1E69E62F8]);
    sub_1DABC95CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8950);
  }

  return result;
}

unint64_t sub_1DABC95CC()
{
  result = qword_1ECBE8958;
  if (!qword_1ECBE8958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8958);
  }

  return result;
}

void sub_1DABC9620(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for YahooNewsResponse.NewsItem);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DABC9688()
{
  result = qword_1ECBE8968;
  if (!qword_1ECBE8968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8968);
  }

  return result;
}

unint64_t sub_1DABC96E0()
{
  result = qword_1ECBE8970;
  if (!qword_1ECBE8970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8970);
  }

  return result;
}

unint64_t sub_1DABC9738()
{
  result = qword_1ECBE8978;
  if (!qword_1ECBE8978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8978);
  }

  return result;
}

uint64_t sub_1DABC97A8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DABC9810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Chart(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DABC9914@<X0>(double a1@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, double a7@<X6>, char a8@<W7>, double *a9@<X8>, double a10, char a11, double a12, char a13, double a14, char a15, double a16, char a17, double a18, char a19, double a20, char a21, double a22, char a23, double a24, char a25, double a26, char a27, double a28, char a29, double a30, char a31, double a32, char a33, double a34, char a35, double a36, char a37, double a38, char a39, double a40, char a41)
{
  v42 = 0.05;
  if (a2)
  {
    a1 = 0.05;
  }

  v44 = 0.3;
  if (a4)
  {
    a3 = 0.3;
  }

  v46 = 1.0;
  if (a6)
  {
    a5 = 1.0;
  }

  v48 = 0.0;
  if (a8)
  {
    a7 = 0.0;
  }

  if (a11)
  {
    a10 = 0.0;
  }

  if (a13)
  {
    a12 = 0.0;
  }

  if ((a15 & 1) == 0)
  {
    v42 = a14;
  }

  if (a17)
  {
    a16 = 0.01;
  }

  v53 = 0.1;
  if (a19)
  {
    a18 = 0.1;
  }

  if (a21)
  {
    a20 = 0.12;
  }

  result = 0x3FC3333333333333;
  if (a23)
  {
    a22 = 0.15;
  }

  if (a25)
  {
    a24 = 0.3;
  }

  if ((a27 & 1) == 0)
  {
    v46 = a26;
  }

  if (a29)
  {
    a28 = 0.0;
  }

  if ((a31 & 1) == 0)
  {
    v44 = a30;
  }

  if (a33)
  {
    a32 = 0.2;
  }

  v61 = 0.5;
  if (a35)
  {
    a34 = 0.5;
  }

  if ((a37 & 1) == 0)
  {
    v61 = a36;
  }

  if ((a39 & 1) == 0)
  {
    v53 = a38;
  }

  if ((a41 & 1) == 0)
  {
    v48 = a40;
  }

  *a9 = a1;
  a9[1] = a3;
  a9[2] = a5;
  a9[3] = a7;
  a9[4] = a10;
  a9[5] = a12;
  a9[6] = v42;
  a9[7] = a16;
  a9[8] = a18;
  a9[9] = a20;
  a9[10] = a22;
  a9[11] = a24;
  a9[12] = v46;
  a9[13] = a28;
  a9[14] = v44;
  a9[15] = a32;
  a9[16] = a34;
  a9[17] = v61;
  a9[18] = v53;
  a9[19] = v48;
  return result;
}

uint64_t sub_1DABC9ADC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DABCBB44(0, &qword_1EE123C78, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v111 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABCB514();
  sub_1DACBA2F4();
  if (!v2)
  {
    v148 = MEMORY[0x1E69E7CC0];
    v147 = 0;
    sub_1DACB9F84();
    v10 = v145;
    LODWORD(v142) = v146;
    if (v146)
    {
      swift_beginAccess();
      v11 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v13 = *(v11 + 2);
      v12 = *(v11 + 3);
      if (v13 >= v12 >> 1)
      {
        v11 = sub_1DAA9A3B0((v12 > 1), v13 + 1, 1, v11);
      }

      *(v11 + 2) = v13 + 1;
      v14 = &v11[16 * v13];
      *(v14 + 4) = 0xD00000000000001ELL;
      *(v14 + 5) = 0x80000001DACEC4D0;
      v148 = v11;
      swift_endAccess();
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v147 = 1;
    sub_1DACB9F84();
    v15 = v145;
    LODWORD(v141) = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_1DAA9A3B0((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[16 * v17];
      *(v18 + 4) = 0xD000000000000011;
      *(v18 + 5) = 0x80000001DACEC4F0;
      v148 = v11;
      swift_endAccess();
    }

    v147 = 2;
    sub_1DACB9F84();
    v19 = v145;
    LODWORD(v140) = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v21 = *(v11 + 2);
      v20 = *(v11 + 3);
      if (v21 >= v20 >> 1)
      {
        v11 = sub_1DAA9A3B0((v20 > 1), v21 + 1, 1, v11);
      }

      *(v11 + 2) = v21 + 1;
      v22 = &v11[16 * v21];
      *(v22 + 4) = 0xD000000000000017;
      *(v22 + 5) = 0x80000001DACEC510;
      v148 = v11;
      swift_endAccess();
    }

    v147 = 3;
    sub_1DACB9F84();
    v23 = v145;
    LODWORD(v139) = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v25 = *(v11 + 2);
      v24 = *(v11 + 3);
      if (v25 >= v24 >> 1)
      {
        v11 = sub_1DAA9A3B0((v24 > 1), v25 + 1, 1, v11);
      }

      *(v11 + 2) = v25 + 1;
      v26 = &v11[16 * v25];
      *(v26 + 4) = 0xD00000000000001ELL;
      *(v26 + 5) = 0x80000001DACEC530;
      v148 = v11;
      swift_endAccess();
    }

    v147 = 4;
    sub_1DACB9F84();
    v27 = v145;
    LODWORD(v138) = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v29 = *(v11 + 2);
      v28 = *(v11 + 3);
      if (v29 >= v28 >> 1)
      {
        v11 = sub_1DAA9A3B0((v28 > 1), v29 + 1, 1, v11);
      }

      *(v11 + 2) = v29 + 1;
      v30 = &v11[16 * v29];
      *(v30 + 4) = 0xD00000000000001ELL;
      *(v30 + 5) = 0x80000001DACEC550;
      v148 = v11;
      swift_endAccess();
    }

    v147 = 5;
    sub_1DACB9F84();
    v31 = v145;
    LODWORD(v137) = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v33 = *(v11 + 2);
      v32 = *(v11 + 3);
      if (v33 >= v32 >> 1)
      {
        v11 = sub_1DAA9A3B0((v32 > 1), v33 + 1, 1, v11);
      }

      *(v11 + 2) = v33 + 1;
      v34 = &v11[16 * v33];
      *(v34 + 4) = 0xD000000000000027;
      *(v34 + 5) = 0x80000001DACEC570;
      v148 = v11;
      swift_endAccess();
    }

    v147 = 6;
    sub_1DACB9F84();
    v35 = v145;
    LODWORD(v136) = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v37 = *(v11 + 2);
      v36 = *(v11 + 3);
      if (v37 >= v36 >> 1)
      {
        v11 = sub_1DAA9A3B0((v36 > 1), v37 + 1, 1, v11);
      }

      *(v11 + 2) = v37 + 1;
      v38 = &v11[16 * v37];
      *(v38 + 4) = 0xD000000000000017;
      *(v38 + 5) = 0x80000001DACEC5A0;
      v148 = v11;
      swift_endAccess();
    }

    v147 = 7;
    sub_1DACB9F84();
    v40 = v145;
    LODWORD(v135) = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v42 = *(v11 + 2);
      v41 = *(v11 + 3);
      if (v42 >= v41 >> 1)
      {
        v11 = sub_1DAA9A3B0((v41 > 1), v42 + 1, 1, v11);
      }

      *(v11 + 2) = v42 + 1;
      v43 = &v11[16 * v42];
      *(v43 + 4) = 0xD000000000000015;
      *(v43 + 5) = 0x80000001DACE2350;
      v148 = v11;
      swift_endAccess();
    }

    v147 = 8;
    sub_1DACB9F84();
    v134 = v145;
    LODWORD(v133) = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v45 = *(v11 + 2);
      v44 = *(v11 + 3);
      if (v45 >= v44 >> 1)
      {
        v11 = sub_1DAA9A3B0((v44 > 1), v45 + 1, 1, v11);
      }

      *(v11 + 2) = v45 + 1;
      v46 = &v11[16 * v45];
      *(v46 + 4) = 0xD000000000000014;
      *(v46 + 5) = 0x80000001DACE2270;
      v148 = v11;
      swift_endAccess();
    }

    v147 = 9;
    sub_1DACB9F84();
    v132 = *&v145;
    v131 = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v48 = *(v11 + 2);
      v47 = *(v11 + 3);
      if (v48 >= v47 >> 1)
      {
        v11 = sub_1DAA9A3B0((v47 > 1), v48 + 1, 1, v11);
      }

      *(v11 + 2) = v48 + 1;
      v49 = &v11[16 * v48];
      *(v49 + 4) = 0xD000000000000014;
      *(v49 + 5) = 0x80000001DACE2310;
      v148 = v11;
      swift_endAccess();
    }

    v147 = 10;
    sub_1DACB9F84();
    v130 = *&v145;
    v129 = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v51 = *(v11 + 2);
      v50 = *(v11 + 3);
      if (v51 >= v50 >> 1)
      {
        v11 = sub_1DAA9A3B0((v50 > 1), v51 + 1, 1, v11);
      }

      *(v11 + 2) = v51 + 1;
      v52 = &v11[16 * v51];
      *(v52 + 4) = 0xD000000000000016;
      *(v52 + 5) = 0x80000001DACE22D0;
      v148 = v11;
      swift_endAccess();
    }

    v147 = 11;
    sub_1DACB9F84();
    v128 = v145;
    v127 = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v54 = *(v11 + 2);
      v53 = *(v11 + 3);
      if (v54 >= v53 >> 1)
      {
        v11 = sub_1DAA9A3B0((v53 > 1), v54 + 1, 1, v11);
      }

      *(v11 + 2) = v54 + 1;
      v55 = &v11[16 * v54];
      *(v55 + 4) = 0xD000000000000015;
      *(v55 + 5) = 0x80000001DACEC5C0;
      v148 = v11;
      swift_endAccess();
    }

    v147 = 12;
    sub_1DACB9F84();
    v126 = v145;
    v125 = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v57 = *(v11 + 2);
      v56 = *(v11 + 3);
      if (v57 >= v56 >> 1)
      {
        v11 = sub_1DAA9A3B0((v56 > 1), v57 + 1, 1, v11);
      }

      *(v11 + 2) = v57 + 1;
      v58 = &v11[16 * v57];
      *(v58 + 4) = 0xD000000000000019;
      *(v58 + 5) = 0x80000001DACEC5E0;
      v148 = v11;
      swift_endAccess();
    }

    v147 = 13;
    sub_1DACB9F84();
    v124 = v145;
    v123 = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v60 = *(v11 + 2);
      v59 = *(v11 + 3);
      if (v60 >= v59 >> 1)
      {
        v11 = sub_1DAA9A3B0((v59 > 1), v60 + 1, 1, v11);
      }

      *(v11 + 2) = v60 + 1;
      v61 = &v11[16 * v60];
      *(v61 + 4) = 0xD00000000000001DLL;
      *(v61 + 5) = 0x80000001DACEC600;
      v148 = v11;
      swift_endAccess();
    }

    v147 = 14;
    sub_1DACB9F84();
    v122 = v145;
    v121 = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v63 = *(v11 + 2);
      v62 = *(v11 + 3);
      if (v63 >= v62 >> 1)
      {
        v11 = sub_1DAA9A3B0((v62 > 1), v63 + 1, 1, v11);
      }

      *(v11 + 2) = v63 + 1;
      v64 = &v11[16 * v63];
      *(v64 + 4) = 0xD000000000000014;
      *(v64 + 5) = 0x80000001DACEC620;
      v148 = v11;
      swift_endAccess();
    }

    v147 = 15;
    sub_1DACB9F84();
    v120 = v145;
    v119 = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v66 = *(v11 + 2);
      v65 = *(v11 + 3);
      if (v66 >= v65 >> 1)
      {
        v11 = sub_1DAA9A3B0((v65 > 1), v66 + 1, 1, v11);
      }

      *(v11 + 2) = v66 + 1;
      v67 = &v11[16 * v66];
      *(v67 + 4) = 0xD00000000000001CLL;
      *(v67 + 5) = 0x80000001DACEC640;
      v148 = v11;
      swift_endAccess();
    }

    v147 = 16;
    sub_1DACB9F84();
    v118 = v145;
    v117 = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v69 = *(v11 + 2);
      v68 = *(v11 + 3);
      if (v69 >= v68 >> 1)
      {
        v11 = sub_1DAA9A3B0((v68 > 1), v69 + 1, 1, v11);
      }

      *(v11 + 2) = v69 + 1;
      v70 = &v11[16 * v69];
      *(v70 + 4) = 0xD000000000000013;
      *(v70 + 5) = 0x80000001DACE2600;
      v148 = v11;
      swift_endAccess();
    }

    v147 = 17;
    sub_1DACB9F84();
    v116 = v145;
    v115 = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v72 = *(v11 + 2);
      v71 = *(v11 + 3);
      if (v72 >= v71 >> 1)
      {
        v11 = sub_1DAA9A3B0((v71 > 1), v72 + 1, 1, v11);
      }

      *(v11 + 2) = v72 + 1;
      v73 = &v11[16 * v72];
      *(v73 + 4) = 0x616E655064616572;
      *(v73 + 5) = 0xEB0000000079746CLL;
      v148 = v11;
      swift_endAccess();
    }

    v147 = 18;
    sub_1DACB9F84();
    v114 = v145;
    v113 = v146;
    if (v146)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v75 = *(v11 + 2);
      v74 = *(v11 + 3);
      if (v75 >= v74 >> 1)
      {
        v11 = sub_1DAA9A3B0((v74 > 1), v75 + 1, 1, v11);
      }

      *(v11 + 2) = v75 + 1;
      v76 = &v11[16 * v75];
      *(v76 + 4) = 0xD000000000000015;
      *(v76 + 5) = 0x80000001DACEC660;
      v148 = v11;
      swift_endAccess();
    }

    LOBYTE(v145) = 19;
    sub_1DACB9F84();
    if (v144)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v78 = *(v11 + 2);
      v77 = *(v11 + 3);
      if (v78 >= v77 >> 1)
      {
        v11 = sub_1DAA9A3B0((v77 > 1), v78 + 1, 1, v11);
      }

      v79 = 0;
      *(v11 + 2) = v78 + 1;
      v80 = &v11[16 * v78];
      *(v80 + 4) = 0x6769655769626174;
      *(v80 + 5) = 0xEA00000000007468;
      v112 = 0;
    }

    else
    {
      v112 = v143;
      v79 = *(v11 + 2) == 0;
    }

    v81 = 0.05;
    if (LODWORD(v142))
    {
      v82 = 0.05;
    }

    else
    {
      v82 = v10;
    }

    if (LODWORD(v141))
    {
      v83 = 0.3;
    }

    else
    {
      v83 = v15;
    }

    v141 = v83;
    v142 = v82;
    if (LODWORD(v140))
    {
      v84 = 1.0;
    }

    else
    {
      v84 = v19;
    }

    if (LODWORD(v139))
    {
      v85 = 0.0;
    }

    else
    {
      v85 = v23;
    }

    v139 = v85;
    v140 = v84;
    if (LODWORD(v138))
    {
      v86 = 0.0;
    }

    else
    {
      v86 = v27;
    }

    if (LODWORD(v137))
    {
      v87 = 0.0;
    }

    else
    {
      v87 = v31;
    }

    v137 = v87;
    v138 = v86;
    if (!LODWORD(v136))
    {
      v81 = v35;
    }

    v136 = v81;
    v88 = 0.01;
    if (!LODWORD(v135))
    {
      v88 = v40;
    }

    v135 = v88;
    v89 = v134;
    if (v133)
    {
      v89 = 0.1;
    }

    v134 = v89;
    v90 = 0x3FBEB851EB851EB8;
    if (!v131)
    {
      v90 = v132;
    }

    v133 = v90;
    v91 = 0x3FC3333333333333;
    if (!v129)
    {
      v91 = v130;
    }

    v132 = v91;
    if (v127)
    {
      v92 = 0.3;
    }

    else
    {
      v92 = v128;
    }

    if (v125)
    {
      v93 = 1.0;
    }

    else
    {
      v93 = v126;
    }

    if (v123)
    {
      v94 = 0.0;
    }

    else
    {
      v94 = v124;
    }

    if (v121)
    {
      v95 = 0.3;
    }

    else
    {
      v95 = v122;
    }

    if (v119)
    {
      v96 = 0.2;
    }

    else
    {
      v96 = v120;
    }

    if (v117)
    {
      v97 = 0.5;
    }

    else
    {
      v97 = v118;
    }

    if (v115)
    {
      v98 = 0.5;
    }

    else
    {
      v98 = v116;
    }

    if (v113)
    {
      v99 = 0.1;
    }

    else
    {
      v99 = v114;
    }

    if (v79)
    {
      sub_1DAA41DCC();
      v100 = sub_1DACB9AD4();
      v101 = sub_1DACB9914();
      sub_1DACB8C64("loaded article scoring configuration with no need for fallback values", 69, 2, &dword_1DAA3F000, v100, v101, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      sub_1DAA41D64(0);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_1DACC1D20;
      sub_1DAA613E8();
      *(v102 + 56) = v103;
      *(v102 + 64) = sub_1DAAF691C();
      *(v102 + 32) = v11;
      sub_1DAA41DCC();
      sub_1DACB71E4();
      v100 = sub_1DACB9AD4();
      v104 = sub_1DACB9914();
      sub_1DACB8C64("loaded article scoring configuration with fallback values for keys: %@", 70, 2, &dword_1DAA3F000, v100, v104, v102);
    }

    (*(v7 + 8))(v9, v6);

    v105 = v141;
    *a2 = v142;
    *(a2 + 8) = v105;
    v106 = v139;
    *(a2 + 16) = v140;
    *(a2 + 24) = v106;
    v107 = v137;
    *(a2 + 32) = v138;
    *(a2 + 40) = v107;
    v108 = v135;
    *(a2 + 48) = v136;
    *(a2 + 56) = v108;
    v109 = v133;
    *(a2 + 64) = v134;
    *(a2 + 72) = v109;
    *(a2 + 80) = v132;
    *(a2 + 88) = v92;
    *(a2 + 96) = v93;
    *(a2 + 104) = v94;
    *(a2 + 112) = v95;
    *(a2 + 120) = v96;
    *(a2 + 128) = v97;
    *(a2 + 136) = v98;
    v110 = v112;
    *(a2 + 144) = v99;
    *(a2 + 152) = v110;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DABCB2F0(char a1)
{
  result = 0x616E655064616572;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
    case 6:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000027;
      break;
    case 7:
    case 11:
    case 18:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000019;
      break;
    case 13:
      v3 = 9;
      goto LABEL_11;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      return result;
    case 19:
      result = 0x6769655769626174;
      break;
    default:
      v3 = 10;
LABEL_11:
      result = v3 | 0xD000000000000014;
      break;
  }

  return result;
}

unint64_t sub_1DABCB514()
{
  result = qword_1EE124568;
  if (!qword_1EE124568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124568);
  }

  return result;
}

uint64_t sub_1DABCB568@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DABCBE84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DABCB59C(uint64_t a1)
{
  v2 = sub_1DABCB514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABCB5D8(uint64_t a1)
{
  v2 = sub_1DABCB514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABCB614(void *a1)
{
  sub_1DABCBB44(0, &qword_1EE123BC0, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - v7;
  v9 = v1[1];
  v10 = v1[3];
  v16[11] = v1[2];
  v16[12] = v9;
  v11 = v1[5];
  v16[9] = v1[4];
  v16[10] = v10;
  v12 = v1[7];
  v16[7] = v1[6];
  v16[8] = v11;
  v13 = v1[9];
  v16[5] = v1[8];
  v16[6] = v12;
  v14 = v1[11];
  v16[3] = v1[10];
  v16[4] = v13;
  v16[1] = v1[12];
  v16[2] = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABCB514();
  sub_1DACBA304();
  v17 = 0;
  sub_1DACBA0B4();
  if (!v2)
  {
    v17 = 1;
    sub_1DACBA0B4();
    v17 = 2;
    sub_1DACBA0B4();
    v17 = 3;
    sub_1DACBA0B4();
    v17 = 4;
    sub_1DACBA0B4();
    v17 = 5;
    sub_1DACBA0B4();
    v17 = 6;
    sub_1DACBA0B4();
    v17 = 7;
    sub_1DACBA0B4();
    v17 = 8;
    sub_1DACBA0B4();
    v17 = 9;
    sub_1DACBA0B4();
    v17 = 10;
    sub_1DACBA0B4();
    v17 = 11;
    sub_1DACBA0B4();
    v17 = 12;
    sub_1DACBA0B4();
    v17 = 13;
    sub_1DACBA0B4();
    v17 = 14;
    sub_1DACBA0B4();
    v17 = 15;
    sub_1DACBA0B4();
    v17 = 16;
    sub_1DACBA0B4();
    v17 = 17;
    sub_1DACBA0B4();
    v17 = 18;
    sub_1DACBA0B4();
    v17 = 19;
    sub_1DACBA0B4();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1DABCBB44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DABCB514();
    v7 = a3(a1, &type metadata for ArticleScoringConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DABCBBA8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 160))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DABCBBC8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 160) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ArticleScoringConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}