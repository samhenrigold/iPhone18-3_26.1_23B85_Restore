void sub_1DABE1B90(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v8 = a1[7];
  v57[5] = a1[6];
  v57[6] = v8;
  v9 = a1[9];
  v57[7] = a1[8];
  v57[8] = v9;
  v10 = a1[3];
  v57[1] = a1[2];
  v57[2] = v10;
  v11 = a1[5];
  v57[3] = a1[4];
  v57[4] = v11;
  v12 = a1[1];
  v56 = *a1;
  v57[0] = v12;
  sub_1DAB5916C(v57 + 8, v58);
  v13 = v56;
  v61 = v56;
  sub_1DAB59344(v57 + 8, v55);
  sub_1DACB71E4();
  sub_1DAB6FF48(&v61);
  if (v4)
  {

    __break(1u);
  }

  else
  {
    *&v51 = v61;
    *(&v51 + 1) = *(&v56 + 1);
    *&v52[0] = *&v57[0];
    sub_1DAB5916C(v57 + 8, v52 + 8);
    v39[5] = v52[5];
    v39[6] = v52[6];
    v39[7] = v52[7];
    v39[8] = v52[8];
    v39[1] = v52[1];
    v39[2] = v52[2];
    v39[3] = v52[3];
    v39[4] = v52[4];
    v38 = v51;
    v39[0] = v52[0];
    *&v55[0] = a2;
    sub_1DACB71E4();
    sub_1DAB6B824(v51);
    v15 = v14;
    v17 = *(&v51 + 1);
    v16 = *&v39[0];
    sub_1DACB71E4();
    sub_1DAB59344(v39 + 8, v55);
    sub_1DAB07030(&v38);
    *&v53 = v15;
    *(&v53 + 1) = v17;
    *&v54[0] = v16;
    sub_1DAB5916C(v39 + 8, v54 + 8);
    v47 = v54[5];
    v48 = v54[6];
    v49 = v54[7];
    v50 = v54[8];
    v43 = v54[1];
    v44 = v54[2];
    v45 = v54[3];
    v46 = v54[4];
    v41 = v53;
    v42 = v54[0];
    LOBYTE(v28) = a3;
    StockNewsFeed.sorted(_:)(&v28, v55);
    v40[6] = v47;
    v40[7] = v48;
    v40[8] = v49;
    v40[9] = v50;
    v40[2] = v43;
    v40[3] = v44;
    v40[4] = v45;
    v40[5] = v46;
    v40[0] = v41;
    v40[1] = v42;
    sub_1DAB07030(v40);
    v47 = v55[6];
    v48 = v55[7];
    v49 = v55[8];
    v50 = v55[9];
    v43 = v55[2];
    v44 = v55[3];
    v45 = v55[4];
    v46 = v55[5];
    v41 = v55[0];
    v42 = v55[1];
    if (qword_1EE11FDD0 != -1)
    {
      swift_once();
    }

    v18 = sub_1DACB8C94();
    __swift_project_value_buffer(v18, qword_1EE11FDD8);
    sub_1DAB59344(v57 + 8, &v28);
    sub_1DAB07228(&v56, &v28);
    sub_1DAB07228(&v41, &v28);
    v19 = sub_1DACB8C74();
    v20 = sub_1DACB9914();
    sub_1DAB7669C(v57 + 8);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v28 = v22;
      *v21 = 134218498;
      *(v21 + 4) = *(v13 + 16);
      sub_1DAB07030(&v56);
      *(v21 + 12) = 2048;
      *(v21 + 14) = *(v41 + 16);
      sub_1DAB07030(&v41);
      *(v21 + 22) = 2082;
      *(v21 + 24) = sub_1DAA7ABE4(v59, v60, &v28);
      _os_log_impl(&dword_1DAA3F000, v19, v20, "stock feed service pared %ld headlines down to %ld for %{public}s", v21, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E1278C00](v22, -1, -1);
      MEMORY[0x1E1278C00](v21, -1, -1);
    }

    else
    {
      sub_1DAB07030(&v41);
      sub_1DAB07030(&v56);
    }

    v34 = v47;
    v35 = v48;
    v36 = v49;
    v37 = v50;
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v28 = v41;
    v29 = v42;
    nullsub_1();
    v23 = v35;
    a4[6] = v34;
    a4[7] = v23;
    v24 = v37;
    a4[8] = v36;
    a4[9] = v24;
    v25 = v31;
    a4[2] = v30;
    a4[3] = v25;
    v26 = v33;
    a4[4] = v32;
    a4[5] = v26;
    v27 = v29;
    *a4 = v28;
    a4[1] = v27;
  }
}

uint64_t sub_1DABE1F8C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = a1[7];
  v36 = a1[6];
  v37 = v7;
  v38 = *(a1 + 16);
  v8 = a1[3];
  v32 = a1[2];
  v33 = v8;
  v9 = a1[5];
  v34 = a1[4];
  v35 = v9;
  v10 = a1[1];
  v30 = *a1;
  v31 = v10;
  v11 = v4[10];
  v12 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v11);
  sub_1DAA488F0(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DACC1D20;
  v14 = *(&v31 + 1);
  *(v13 + 32) = v31;
  *(v13 + 40) = v14;
  v15 = *(v12 + 8);
  sub_1DACB71E4();
  v15(v13, 1, v11, v12);

  v16 = v4[13];
  ObjectType = swift_getObjectType();
  (*(v16 + 24))(ObjectType, v16);
  v18 = sub_1DACB89D4();
  sub_1DACB89C4();

  v19 = swift_allocObject();
  v20 = a1[4];
  *(v19 + 104) = a1[5];
  v21 = a1[7];
  *(v19 + 120) = a1[6];
  *(v19 + 136) = v21;
  v22 = *a1;
  *(v19 + 40) = a1[1];
  v23 = a1[3];
  *(v19 + 56) = a1[2];
  *(v19 + 72) = v23;
  *(v19 + 88) = v20;
  *(v19 + 16) = v4;
  v24 = *(a1 + 16);
  *(v19 + 24) = v22;
  *(v19 + 152) = v24;
  *(v19 + 160) = a3;
  *(v19 + 168) = a4 & 1;
  sub_1DACB71F4();
  sub_1DAA806E4(&v30, v29);
  v25 = sub_1DACB89D4();
  sub_1DAAD4E00(0);
  v26 = sub_1DACB8A74();

  return v26;
}

void sub_1DABE21EC(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v55 = a6;
  v61 = a5;
  v54 = a2;
  v9 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v53 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  v14 = a1[2];
  v13 = a1[3];
  v16 = a1[4];
  v15 = a1[5];
  v17 = qword_1EE11FDD0;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v58 = v13;
  sub_1DACB71E4();
  v57 = v16;
  sub_1DACB71E4();
  v56 = v15;
  if (v17 != -1)
  {
    swift_once();
  }

  v18 = sub_1DACB8C94();
  __swift_project_value_buffer(v18, qword_1EE11FDD8);
  sub_1DACB71E4();
  v19 = sub_1DACB8C74();
  v20 = sub_1DACB9914();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v52 = v14;
    v22 = v21;
    v23 = swift_slowAlloc();
    v51 = a3;
    v24 = v23;
    *&v59[0] = v23;
    *v22 = 136446210;
    sub_1DAA488F0(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v25 = sub_1DACB9134();
    v27 = v11;
    v28 = sub_1DAA7ABE4(v25, v26, v59);

    *(v22 + 4) = v28;
    v11 = v27;
    _os_log_impl(&dword_1DAA3F000, v19, v20, "Fetching headlines for feed ids %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v29 = v24;
    a3 = v51;
    MEMORY[0x1E1278C00](v29, -1, -1);
    v30 = v22;
    v14 = v52;
    MEMORY[0x1E1278C00](v30, -1, -1);
  }

  v32 = v61;
  if (!*(v12 + 16))
  {
    goto LABEL_9;
  }

  if (v55)
  {
    v33 = a3[17];
    v34 = a3[18];
    __swift_project_boxed_opaque_existential_1(a3 + 14, v33);
    v35 = v53;
    (*(v34 + 8))(v33, v34);
    v32 = *(v35 + 64);
    v31 = sub_1DAA640AC(v35);
    if (v32 < 0)
    {
      __break(1u);
LABEL_9:

      v36 = *(a4 + 112);
      v59[6] = *(a4 + 96);
      v59[7] = v36;
      v60 = *(a4 + 128);
      v37 = *(a4 + 48);
      v59[2] = *(a4 + 32);
      v59[3] = v37;
      v38 = *(a4 + 80);
      v59[4] = *(a4 + 64);
      v59[5] = v38;
      v39 = *(a4 + 16);
      v59[0] = *a4;
      v59[1] = v39;
      sub_1DABE26F4(v59);

LABEL_12:

      return;
    }

LABEL_11:
    MEMORY[0x1EEE9AC00](v31);
    v40 = v54;
    *(&v50 - 6) = v54;
    *(&v50 - 5) = v12;
    *(&v50 - 4) = a4;
    *(&v50 - 3) = v32;
    *(&v50 - 2) = a3;
    sub_1DAA488F0(0, &qword_1EE11FB70, &type metadata for StockNewsFeed, MEMORY[0x1E69E62F8]);
    sub_1DACB8BB4();

    v41 = swift_allocObject();
    v42 = *(a4 + 64);
    *(v41 + 104) = *(a4 + 80);
    v43 = *(a4 + 112);
    *(v41 + 120) = *(a4 + 96);
    *(v41 + 136) = v43;
    v44 = *a4;
    *(v41 + 40) = *(a4 + 16);
    v45 = *(a4 + 48);
    *(v41 + 56) = *(a4 + 32);
    *(v41 + 72) = v45;
    *(v41 + 88) = v42;
    *(v41 + 16) = a3;
    v46 = *(a4 + 128);
    *(v41 + 24) = v44;
    *(v41 + 152) = v46;
    *(v41 + 160) = v40;
    *(v41 + 168) = v11;
    *(v41 + 176) = v14;
    *(v41 + 184) = v58;
    v47 = v56;
    *(v41 + 192) = v57;
    *(v41 + 200) = v47;
    sub_1DACB71F4();
    sub_1DAA806E4(a4, v59);
    sub_1DACB71F4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    v48 = v47;
    v49 = sub_1DACB89D4();
    sub_1DAAD4E00(0);
    sub_1DACB8A54();

    goto LABEL_12;
  }

  if ((v61 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1DABE26F4(__int128 *a1)
{
  v2 = a1[7];
  v29 = a1[6];
  v30 = v2;
  v31 = *(a1 + 16);
  v3 = a1[3];
  v25 = a1[2];
  v26 = v3;
  v4 = a1[5];
  v27 = a1[4];
  v28 = v4;
  v5 = a1[1];
  v23 = *a1;
  v24 = v5;
  v6 = v1[24];
  v7 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v6);
  if ((*(v7 + 32))(v6, v7))
  {
    if (qword_1EE11FDD0 != -1)
    {
      swift_once();
    }

    v8 = sub_1DACB8C94();
    __swift_project_value_buffer(v8, qword_1EE11FDD8);
    sub_1DAA806E4(&v23, &v22);
    v9 = sub_1DACB8C74();
    v10 = sub_1DACB9914();
    sub_1DAA9B1C8(&v23);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_1DAA7ABE4(v24, *(&v24 + 1), &v22);
      _os_log_impl(&dword_1DAA3F000, v9, v10, "stock feed service checking for bilingual headlines for %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1E1278C00](v12, -1, -1);
      MEMORY[0x1E1278C00](v11, -1, -1);
    }

    MEMORY[0x1EEE9AC00](v13);
    sub_1DABE3F90(0);
    sub_1DACB8BB4();
    v14 = swift_allocObject();
    v15 = v30;
    *(v14 + 112) = v29;
    *(v14 + 128) = v15;
    *(v14 + 144) = v31;
    v16 = v26;
    *(v14 + 48) = v25;
    *(v14 + 64) = v16;
    v17 = v28;
    *(v14 + 80) = v27;
    *(v14 + 96) = v17;
    v18 = v24;
    *(v14 + 16) = v23;
    *(v14 + 32) = v18;
    sub_1DAA806E4(&v23, &v22);
    v19 = sub_1DACB89D4();
    sub_1DAAD4E00(0);
    v20 = sub_1DACB8A74();

    return v20;
  }

  else
  {
    sub_1DABE3F20(0, &qword_1EE11FE40, sub_1DAAD4E00);
    swift_allocObject();
    return sub_1DACB8AE4();
  }
}

uint64_t sub_1DABE2A24(void *a1, uint64_t a2, __int128 *a3, uint64_t a4, void *a5)
{
  v32 = a4;
  v30 = a5;
  v31 = a2;
  v7 = a3[7];
  v40 = a3[6];
  v41 = v7;
  v42 = *(a3 + 16);
  v8 = a3[3];
  v36 = a3[2];
  v37 = v8;
  v9 = a3[5];
  v38 = a3[4];
  v39 = v9;
  v10 = a3[1];
  v34 = *a3;
  v35 = v10;
  v11 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DACB7CC4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - v19;
  v21 = a1[6];
  v28 = a1[5];
  v29 = v21;
  v27 = __swift_project_boxed_opaque_existential_1(a1 + 2, v28);
  v43[6] = v40;
  v43[7] = v41;
  v44 = v42;
  v43[2] = v36;
  v43[3] = v37;
  v43[4] = v38;
  v43[5] = v39;
  v43[0] = v34;
  v43[1] = v35;
  nullsub_1();
  sub_1DAB5916C(v43, v33);
  sub_1DAA806E4(a3, v45);
  sub_1DACB7CB4();
  v23 = v30[17];
  v22 = v30[18];
  __swift_project_boxed_opaque_existential_1(v30 + 14, v23);
  (*(v22 + 8))(v23, v22);
  sub_1DAA640AC(v13);
  sub_1DACB7BF4();
  v24 = *(v15 + 8);
  v24(v18, v14);
  v25 = sub_1DAB6F560(v31, v33, v32, v20, v28, v29);
  v24(v20, v14);
  sub_1DAB5916C(v33, v45);
  sub_1DAB7669C(v45);
  return v25;
}

uint64_t sub_1DABE2CA8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, _OWORD *a5)
{
  v10 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v89 = *(*a1 + 16);
  if (!v89 || (v14 = v13[3], v15 = v13[4], v16 = v13[5], v17 = v13[7], v18 = v13[8], v128 = v13[6], v129 = v17, v126 = v15, v127 = v16, v19 = v13[11], v20 = v13[9], v132 = v13[10], v133 = v19, v130 = v18, v131 = v20, v124 = v13[2], v125 = v14, !*(v124 + 16)))
  {
    v57 = *(a3 + 112);
    v130 = *(a3 + 96);
    v131 = v57;
    *&v132 = *(a3 + 128);
    v58 = *(a3 + 48);
    v126 = *(a3 + 32);
    v127 = v58;
    v59 = *(a3 + 80);
    v128 = *(a3 + 64);
    v129 = v59;
    v60 = *(a3 + 16);
    v124 = *a3;
    v125 = v60;
    return sub_1DABE26F4(&v124);
  }

  v84 = a3;
  v85 = v5;
  v88 = v13;
  v21 = v13 + 2;
  v22 = *(a4 + 17);
  v23 = *(a4 + 18);
  __swift_project_boxed_opaque_existential_1(a4 + 14, v22);
  v86 = a5;
  v87 = v12;
  v90 = a4;
  v24 = *(v23 + 8);
  sub_1DAB07228(&v124, &v114);
  v24(v22, v23);
  v25 = sub_1DABE3CFC();
  v26 = v86;
  v27 = v86[1];
  v114 = *v86;
  v115 = v27;
  *&v116 = *(v86 + 4);
  v28 = *(a4 + 19);
  swift_getObjectType();
  sub_1DABE3D48(v26, &v104);
  swift_unknownObjectRetain();
  v29 = sub_1DAC1EFD0(&v114, v28, v25);
  v30 = MEMORY[0x1E69E6F90];
  sub_1DAA488F0(0, &qword_1EE11F500, &type metadata for NewsFeedFilterOptions.Option, MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1DACC7630;
  v32 = v87;
  *(v31 + 32) = *(v87 + 45);
  v83 = v31 + 32;
  v33 = v32;
  *(v31 + 40) = *(v32 + 46);
  *(v31 + 89) = 3;
  sub_1DAA488F0(0, &qword_1EE11F518, &type metadata for HeadlineCondition, v30);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1DACC1D40;
  *(v34 + 32) = 4;
  *(v34 + 40) = 0u;
  *(v34 + 56) = 0u;
  *(v34 + 72) = 0;
  *(v34 + 80) = 9;
  *(v34 + 88) = *(v33 + 47);
  *(v34 + 136) = 5;
  *(v31 + 96) = v34;
  *(v31 + 153) = 5;
  *(v31 + 160) = 3;
  *(v31 + 168) = 0u;
  *(v31 + 184) = 0u;
  *(v31 + 200) = 0;
  *(v31 + 208) = 9;
  *(v31 + 217) = 4;
  *(v31 + 240) = 0u;
  *(v31 + 256) = 0u;
  *(v31 + 224) = 0u;
  *(v31 + 272) = 9;
  *(v31 + 281) = 4;
  *(v31 + 288) = v29;
  sub_1DAA4D678((v90 + 112), v31 + 296);
  *(v31 + 336) = 0;
  *(v31 + 345) = 4;
  v134 = *(v26 + 8);
  *(v31 + 352) = v134;
  *(v31 + 400) = 3;
  v35 = MEMORY[0x1E69E7CC0];
  *(v31 + 409) = 4;
  v36 = v35;
  *(v31 + 416) = v35;
  *(v31 + 473) = 0;
  *(v31 + 480) = v35;
  *(v31 + 537) = 1;
  v86 = v29;
  sub_1DABE3DA4(&v134, &v114);
  v37 = 0;
  do
  {
    if (v37 >= *(v88 + 2))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      swift_once();
      goto LABEL_23;
    }

    v38 = v36;
    v39 = v31;
    v40 = *v21;
    v115 = v21[1];
    v114 = v40;
    v41 = v21[2];
    v42 = v21[3];
    v43 = v21[4];
    v119 = v21[5];
    v118 = v43;
    v117 = v42;
    v116 = v41;
    v44 = v21[6];
    v45 = v21[7];
    v46 = v21[8];
    v123 = v21[9];
    v122 = v46;
    v121 = v45;
    v120 = v44;
    v47 = v114;
    v48 = *(v114 + 16);
    v49 = *(v36 + 2);
    v50 = &v48[v49];
    if (__OFADD__(v49, v48))
    {
      goto LABEL_28;
    }

    sub_1DAB07228(&v114, &v104);
    sub_1DACB71E4();
    sub_1DACB71E4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v52 = *(v38 + 3) >> 1, v90 = v38, v52 >= v50))
    {
      if (!*(v47 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v49 <= v50)
      {
        v53 = &v48[v49];
      }

      else
      {
        v53 = v49;
      }

      v90 = sub_1DAADC60C(isUniquelyReferenced_nonNull_native, v53, 1, v38);
      v52 = *(v90 + 3) >> 1;
      if (!*(v47 + 16))
      {
LABEL_4:

        v31 = v39;
        v36 = v90;
        if (v48)
        {
          goto LABEL_29;
        }

        goto LABEL_5;
      }
    }

    v36 = v90;
    if (v52 - *(v90 + 2) < v48)
    {
      goto LABEL_30;
    }

    v31 = v39;
    swift_arrayInitWithCopy();

    if (v48)
    {
      v54 = *(v36 + 2);
      v55 = __OFADD__(v54, v48);
      v56 = &v48[v54];
      if (v55)
      {
        goto LABEL_31;
      }

      *(v36 + 2) = v56;
    }

LABEL_5:
    ++v37;
    sub_1DAB07030(&v114);

    v21 += 10;
  }

  while (v89 != v37);
  *&v104 = v36;
  *(&v104 + 1) = *(&v124 + 1);
  *&v105 = v125;
  sub_1DAB5916C(&v125 + 8, &v105 + 8);
  v120 = v110;
  v121 = v111;
  v122 = v112;
  v123 = v113;
  v116 = v106;
  v117 = v107;
  v118 = v108;
  v119 = v109;
  v114 = v104;
  v115 = v105;
  v62 = v104;
  v99 = v104;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DAB59344(&v125 + 8, &v104);
  sub_1DACB71E4();
  v63 = v85;
  sub_1DAB6FF48(&v99);
  if (v63)
  {

    __break(1u);

    __break(1u);
    return result;
  }

  v89 = v62;
  *&v100 = v99;
  *(&v100 + 1) = *(&v114 + 1);
  *&v101[0] = v115;
  sub_1DAB5916C(&v115 + 8, v101 + 8);
  v96[5] = v101[5];
  v96[6] = v101[6];
  v96[7] = v101[7];
  v96[8] = v101[8];
  v96[1] = v101[1];
  v96[2] = v101[2];
  v96[3] = v101[3];
  v96[4] = v101[4];
  v95 = v100;
  v96[0] = v101[0];
  *&v102 = v31;
  v64 = v100;
  sub_1DACB71E4();
  sub_1DAB59344(&v115 + 8, &v104);
  sub_1DAB6B824(v64);
  v66 = v65;
  v67 = *(&v95 + 1);
  v68 = *&v96[0];
  sub_1DACB71E4();
  sub_1DAB59344(v96 + 8, &v104);
  sub_1DAB07030(&v95);
  *&v102 = v66;
  *(&v102 + 1) = v67;
  *&v103[0] = v68;
  sub_1DAB5916C(v96 + 8, v103 + 8);
  v98[5] = v103[5];
  v98[6] = v103[6];
  v98[7] = v103[7];
  v98[8] = v103[8];
  v98[1] = v103[1];
  v98[2] = v103[2];
  v98[3] = v103[3];
  v98[4] = v103[4];
  v97 = v102;
  v98[0] = v103[0];
  v94 = v102;
  sub_1DACB71E4();
  sub_1DAB6FF08(&v94);
  sub_1DAB07030(&v124);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v69 = v94;
  v70 = *(&v97 + 1);
  v71 = *&v98[0];
  sub_1DACB71E4();
  sub_1DAB59344(v98 + 8, &v104);
  sub_1DAB07030(&v97);
  *&v104 = v69;
  *(&v104 + 1) = v70;
  *&v105 = v71;
  sub_1DAB5916C(v98 + 8, &v105 + 8);
  v93[6] = v110;
  v93[7] = v111;
  v93[8] = v112;
  v93[9] = v113;
  v93[2] = v106;
  v93[3] = v107;
  v93[4] = v108;
  v93[5] = v109;
  v93[0] = v104;
  v93[1] = v105;
  if (qword_1EE11FDD0 != -1)
  {
    goto LABEL_32;
  }

LABEL_23:
  v72 = sub_1DACB8C94();
  __swift_project_value_buffer(v72, qword_1EE11FDD8);
  sub_1DAB07228(v93, &v91);
  sub_1DAB07228(v93, &v91);
  sub_1DAB07228(&v114, &v91);
  v73 = v84;
  sub_1DAA806E4(v84, &v91);
  v74 = sub_1DACB8C74();
  v75 = sub_1DACB9914();
  sub_1DAA9B1C8(v73);
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v91 = v77;
    *v76 = 134218498;
    v78 = *(v89 + 16);
    sub_1DAB07030(&v114);
    *(v76 + 4) = v78;
    sub_1DAB07030(&v114);
    *(v76 + 12) = 2048;
    v79 = *(*&v93[0] + 16);
    sub_1DAB07030(v93);
    *(v76 + 14) = v79;
    sub_1DAB07030(v93);
    *(v76 + 22) = 2082;
    *(v76 + 24) = sub_1DAA7ABE4(*(v73 + 16), *(v73 + 24), &v91);
    _os_log_impl(&dword_1DAA3F000, v74, v75, "stock feed service pared %ld headlines down to %ld for %{public}s", v76, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v77);
    MEMORY[0x1E1278C00](v77, -1, -1);
    MEMORY[0x1E1278C00](v76, -1, -1);
  }

  else
  {
    sub_1DAB07030(v93);
    sub_1DAB07030(&v114);
    sub_1DAB07030(v93);
    sub_1DAB07030(&v114);
  }

  v81 = v86;
  v80 = v87;
  v91 = *&v93[0];
  v92 = 0;
  sub_1DABE3F20(0, &qword_1EE11FE40, sub_1DAAD4E00);
  swift_allocObject();
  sub_1DACB71E4();
  v82 = sub_1DACB8AE4();
  sub_1DAB07030(v93);

  sub_1DAA640AC(v80);
  return v82;
}

uint64_t sub_1DABE3634(void *a1, uint64_t a2)
{
  v4 = a1[10];
  v5 = a1[11];
  __swift_project_boxed_opaque_existential_1(a1 + 7, v4);
  sub_1DAA488F0(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DACC1D20;
  v7 = *(a2 + 24);
  *(v6 + 32) = *(a2 + 16);
  *(v6 + 40) = v7;
  v8 = *(v5 + 8);
  sub_1DACB71E4();
  v8(v6, 0, v4, v5);

  v9 = a1[13];
  ObjectType = swift_getObjectType();
  (*(v9 + 24))(ObjectType, v9);
  v11 = sub_1DACB89D4();
  v12 = sub_1DACB89C4();

  return v12;
}

uint64_t sub_1DABE376C(uint64_t a1)
{
  if (*(*a1 + 16))
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1DAA488F0(0, &qword_1EE11FB70, &type metadata for StockNewsFeed, MEMORY[0x1E69E62F8]);
    sub_1DACB8BB4();
    v1 = sub_1DACB89D4();
    sub_1DAAD4E00(0);
    v2 = sub_1DACB8A54();

    return v2;
  }

  else
  {
    sub_1DABE3F20(0, &qword_1EE11FE40, sub_1DAAD4E00);
    swift_allocObject();
    return sub_1DACB8AE4();
  }
}

uint64_t sub_1DABE38C4(void *a1, uint64_t a2, __int128 *a3)
{
  v36 = a2;
  v5 = a3[7];
  v44 = a3[6];
  v45 = v5;
  v46 = *(a3 + 16);
  v6 = a3[3];
  v40 = a3[2];
  v41 = v6;
  v7 = a3[5];
  v42 = a3[4];
  v43 = v7;
  v8 = a3[1];
  v38 = *a3;
  v39 = v8;
  v9 = sub_1DACB7CC4();
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v32 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v33 = &v29 - v12;
  v13 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[5];
  v30 = a1[6];
  v31 = v16;
  v29 = __swift_project_boxed_opaque_existential_1(a1 + 2, v16);
  v47[6] = v44;
  v47[7] = v45;
  v48 = v46;
  v47[2] = v40;
  v47[3] = v41;
  v47[4] = v42;
  v47[5] = v43;
  v47[0] = v38;
  v47[1] = v39;
  nullsub_1();
  sub_1DAB5916C(v47, v37);
  v17 = a1[17];
  v18 = a1[18];
  __swift_project_boxed_opaque_existential_1(a1 + 14, v17);
  v19 = *(v18 + 8);
  sub_1DAA806E4(a3, v49);
  v19(v17, v18);
  v20 = *(v15 + 8);
  result = sub_1DAA640AC(v15);
  if (v20 < 0)
  {
    __break(1u);
  }

  else
  {
    v22 = v32;
    sub_1DACB7CB4();
    v23 = a1[17];
    v24 = a1[18];
    __swift_project_boxed_opaque_existential_1(a1 + 14, v23);
    (*(v24 + 8))(v23, v24);
    sub_1DAA640AC(v15);
    v25 = v33;
    sub_1DACB7BF4();
    v26 = v35;
    v27 = *(v34 + 8);
    v27(v22, v35);
    v28 = sub_1DAB6F560(v36, v37, v20, v25, v31, v30);
    v27(v25, v26);
    sub_1DAB5916C(v37, v49);
    sub_1DAB7669C(v49);
    return v28;
  }

  return result;
}

uint64_t sub_1DABE3BA0(uint64_t a1)
{
  sub_1DABE3F20(0, &qword_1EE11FE40, sub_1DAAD4E00);
  swift_allocObject();
  return sub_1DACB8AE4();
}

unint64_t sub_1DABE3CFC()
{
  result = qword_1EE11F870;
  if (!qword_1EE11F870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE11F870);
  }

  return result;
}

uint64_t sub_1DABE3DA4(uint64_t a1, uint64_t a2)
{
  sub_1DAA488F0(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DABE3E2C(uint64_t a1)
{
  sub_1DAA488F0(0, qword_1EE123390, &type metadata for StockNewsFeed, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DABE3F20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB8B74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DABE3F90(uint64_t a1)
{
  if (!qword_1ECBE8AD0)
  {
    sub_1DAA9CB70(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE8AD0);
    }
  }
}

uint64_t NetworkEvent.SDSMetadata.dataSource.getter()
{
  v1 = *(v0 + 32);
  sub_1DACB71E4();
  return v1;
}

uint64_t NetworkEvent.underlyingEvent.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NetworkEvent(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DABE418C(v2, v6);
  if (swift_getEnumCaseMultiPayload() - 2 <= 4)
  {
    sub_1DAA8C2EC(0);
  }

  v7 = sub_1DACB8754();
  return (*(*(v7 - 8) + 32))(a1, v6, v7);
}

uint64_t sub_1DABE418C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double NetworkEvent.metadata.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NetworkEvent(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DABE418C(v2, v6);
  if (swift_getEnumCaseMultiPayload() - 2 > 4)
  {
    sub_1DAB36234(v6);
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  else
  {
    sub_1DAA8C2EC(0);
    v8 = &v6[*(v7 + 48)];
    v9 = *v8;
    v10 = *(v8 + 1);
    v11 = *(v8 + 4);
    v12 = *(v8 + 5);
    v13 = sub_1DACB8754();
    v14 = *(*(v13 - 8) + 8);
    v16 = *(v8 + 1);
    v14(v6, v13);
    *a1 = v9;
    *(a1 + 8) = v10;
    result = *&v16;
    *(a1 + 16) = v16;
    *(a1 + 32) = v11;
    *(a1 + 40) = v12;
  }

  return result;
}

uint64_t sub_1DABE436C(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1DACB8754();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = NetworkEvent.underlyingEvent.getter(v5);
  v7 = a1(v6);
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t NetworkEvent.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DACB7CC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB8754();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  NetworkEvent.underlyingEvent.getter(v9);
  v10 = sub_1DACB8744();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v11 = [v10 fetchStartDate];
    if (v11)
    {
      v12 = v11;
      sub_1DACB7C74();

      return (*(v3 + 32))(a1, v5, v2);
    }
  }

  return sub_1DACB7CB4();
}

double sub_1DABE4654(SEL *a1, SEL *a2)
{
  v30 = a2;
  v32 = a1;
  v2 = sub_1DACB7CC4();
  v31 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v29 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v29 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  v14 = sub_1DACB8754();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  NetworkEvent.underlyingEvent.getter(v17);
  v18 = sub_1DACB8744();
  (*(v15 + 8))(v17, v14);
  v19 = 0.0;
  if (v18)
  {
    v20 = [v18 *v32];
    if (v20)
    {
      v21 = v20;
      sub_1DACB7C74();

      v22 = v31;
      v23 = *(v31 + 32);
      v23(v13, v11, v2);
      v24 = [v18 *v30];
      if (v24)
      {
        v25 = v24;
        sub_1DACB7C74();

        v23(v8, v5, v2);
        sub_1DACB7B84();
        v19 = v26;

        v27 = *(v22 + 8);
        v27(v8, v2);
        v27(v13, v2);
        return v19;
      }

      (*(v22 + 8))(v13, v2);
    }
  }

  return v19;
}

char *NetworkEvent.responseSize.getter()
{
  v0 = sub_1DACB8754();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  NetworkEvent.underlyingEvent.getter(v3);
  v4 = sub_1DACB8744();
  (*(v1 + 8))(v3, v0);
  if (!v4)
  {
    return 0;
  }

  v5 = [v4 countOfResponseBodyBytesReceived];
  v6 = [v4 countOfResponseHeaderBytesReceived];

  result = &v6[v5];
  if (__OFADD__(v5, v6))
  {
    __break(1u);
    return 0;
  }

  return result;
}

uint64_t NetworkEvent.respondingPop.getter()
{
  v0 = sub_1DACB8754();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  NetworkEvent.underlyingEvent.getter(v3);
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x1E69D6848])
  {
    (*(v1 + 96))(v3, v0);
    v5 = *v3;

    goto LABEL_5;
  }

  if (v4 == *MEMORY[0x1E69D6840])
  {
    (*(v1 + 96))(v3, v0);
    v5 = *v3;
LABEL_5:
    v6 = sub_1DACB92F4();
    v7 = [v5 valueForHTTPHeaderField_];

    if (v7)
    {
      v8 = sub_1DACB9324();

      return v8;
    }

    return 0;
  }

  if (v4 != *MEMORY[0x1E69D6858])
  {
    result = sub_1DACBA164();
    __break(1u);
    return result;
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

double NetworkEvent.taskDuration.getter()
{
  v0 = sub_1DACB7CC4();
  v28 = *(v0 - 8);
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v27 - v5;
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v27 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  v12 = sub_1DACB8754();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  NetworkEvent.underlyingEvent.getter(v15);
  v16 = sub_1DACB8744();
  (*(v13 + 8))(v15, v12);
  v17 = 0.0;
  if (v16)
  {
    v18 = [v16 responseEndDate];
    if (v18)
    {
      v19 = v18;
      sub_1DACB7C74();

      v20 = v28;
      v21 = *(v28 + 32);
      v21(v11, v9, v0);
      v22 = [v16 fetchStartDate];
      if (v22)
      {
        v23 = v22;
        sub_1DACB7C74();

        v21(v6, v3, v0);
        sub_1DACB7B84();
        v17 = v24;

        v25 = *(v20 + 8);
        v25(v6, v0);
        v25(v11, v0);
        return v17;
      }

      (*(v20 + 8))(v11, v0);
    }
  }

  return v17;
}

id NetworkEvent.isProxyConnection.getter()
{
  v0 = sub_1DACB8754();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  NetworkEvent.underlyingEvent.getter(v3);
  v4 = sub_1DACB8744();
  (*(v1 + 8))(v3, v0);
  if (!v4)
  {
    return 0;
  }

  v5 = [v4 isProxyConnection];

  return v5;
}

uint64_t sub_1DABE4FE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DABE5028(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1DABE5084(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EE11EDC0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE13E298;
  v8 = sub_1DACB9914();
  sub_1DACB8C64(a3, a4, 2, &dword_1DAA3F000, v7, v8, MEMORY[0x1E69E7CC0]);
  sub_1DAA65E94();
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DABE5154(uint64_t a1, uint64_t *a2)
{
  if (qword_1EE11D6C8 != -1)
  {
    swift_once();
  }

  sub_1DAA66DC0(&qword_1ECBE8AD8, &unk_1DACD293C);
  return sub_1DACB80C4();
}

uint64_t sub_1DABE5228(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = objc_opt_self();
  v4 = [v3 defaultStore];
  v5 = sub_1DACB92F4();
  [v4 removeObjectForKey_];

  v6 = [v3 defaultStore];
  [v6 synchronize];

  if (qword_1EE11EDC0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE13E298;
  v8 = sub_1DACB9914();
  v9 = sub_1DACB8C64("finished performing KVS cleanup", 31, 2, &dword_1DAA3F000, v7, v8, MEMORY[0x1E69E7CC0]);
  return a2(v9);
}

void sub_1DABE5360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_appConfigurationManager + 24);
  v12 = *(a5 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_appConfigurationManager + 32);
  __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_appConfigurationManager), v11);
  v13 = *(v12 + 40);
  sub_1DACB71F4();
  v13(v11, v12);
  v14 = swift_allocObject();
  v14[2] = sub_1DABE6448;
  v14[3] = v10;
  v14[4] = a5;
  v14[5] = a3;
  v14[6] = a4;
  sub_1DACB71F4();
  sub_1DACB71F4();
  v15 = sub_1DACB89D4();
  sub_1DACB8A64();

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  sub_1DACB71F4();
  v17 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

void sub_1DABE551C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (*(a1 + 250) == 1)
  {
    goto LABEL_8;
  }

  if (qword_1EE11D500 != -1)
  {
    swift_once();
  }

  type metadata accessor for KVSCleanupStartupTask(0);
  sub_1DAA66DC0(&qword_1EE11E548, &unk_1DACD297C);
  sub_1DACB7F84();
  if (v10 && v10 == 1)
  {

LABEL_8:
    a2(a1);
    return;
  }

  v7 = sub_1DACBA174();

  if (v7)
  {
    goto LABEL_8;
  }

  sub_1DAA6ABE8();
  v8 = swift_allocError();
  *v9 = 2;
  a5();
}

uint64_t sub_1DABE56C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = sub_1DABE6448;
  v9[3] = v8;
  v9[4] = a3;
  v9[5] = a4;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DABE57A4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v12[4] = sub_1DABE63A0;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DABE5934;
  v12[3] = &block_descriptor_51;
  v11 = _Block_copy(v12);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v9 checkSyncingEnabledWithCompletion_];
  _Block_release(v11);
}

void sub_1DABE58A4(char a1, void (*a2)(void), uint64_t a3, void (*a4)(void))
{
  if (a1)
  {
    a2();
  }

  else
  {
    sub_1DAA6ABE8();
    v5 = swift_allocError();
    *v6 = 3;
    a4();
  }
}

uint64_t sub_1DABE5934(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_1DACB71F4();
  v3(a2);
}

void sub_1DABE5988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = objc_opt_self();
  sub_1DACB71F4();
  v10 = [v9 sharedAccount];
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = sub_1DABE6448;
  v11[5] = v8;
  v13[4] = sub_1DABE6380;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DABE5BA4;
  v13[3] = &block_descriptor_38;
  v12 = _Block_copy(v13);
  sub_1DACB71F4();

  [v10 checkAllDevicesRunningMinimumiOSVersion:12 macOSVersion:0 orInactiveForTimeInterval:10 completionHandler:{14, v12, 7776000.0}];
  _Block_release(v12);
}

void sub_1DABE5AFC(char a1, id a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    v6 = a2;
    v7 = a2;
    v8 = v6;
  }

  else
  {
    if (a1)
    {
      a5();
      return;
    }

    sub_1DAA6ABE8();
    v8 = swift_allocError();
    v6 = v8;
    *v9 = 4;
  }

  a3(v8);
}

void sub_1DABE5BA4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_1DACB71F4();
  v6 = a3;
  v5(a2, a3);
}

void sub_1DABE5C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_watchlistService + 24);
  v12 = *(a5 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_watchlistService + 32);
  __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_watchlistService), v11);
  v13 = *(v12 + 48);
  sub_1DACB71F4();
  v13(v11, v12);
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = sub_1DABE6448;
  v14[6] = v10;
  sub_1DACB71F4();
  sub_1DACB71F4();
  v15 = sub_1DACB89D4();
  sub_1DACB8A64();

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  sub_1DACB71F4();
  v17 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DABE5DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a6;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DABE5E84(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v12[4] = sub_1DABE6374;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DAB10208;
  v12[3] = &block_descriptor_22;
  v11 = _Block_copy(v12);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v9 savePendingChangesToServerWithCompletion_];
  _Block_release(v11);
}

void sub_1DABE5F84(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(void))
{
  if (a1)
  {
    v6 = a1;
    a2(a1);
  }

  else
  {
    (a4)(0, a2, a3);
  }
}

uint64_t sub_1DABE5FF8()
{
  v1 = OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_group;
  v2 = sub_1DACB8574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_appConfigurationManager));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_watchlistService));

  return swift_deallocClassInstance();
}

uint64_t sub_1DABE60C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE11D4A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB8574();
  v3 = __swift_project_value_buffer(v2, qword_1EE11D4A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DABE616C()
{
  if (qword_1EE11D6C8 != -1)
  {
    swift_once();
  }

  return sub_1DACB71F4();
}

unint64_t sub_1DABE63EC()
{
  result = qword_1ECBE8AE0;
  if (!qword_1ECBE8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8AE0);
  }

  return result;
}

uint64_t sub_1DABE6458()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  if (v2 == sub_1DACB9324() && v1 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1DACBA174();
  }

  return v5 & 1;
}

void sub_1DABE64D0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 name];
  v22 = sub_1DACB9324();
  v6 = v5;

  v7 = [a1 symbols];
  v8 = sub_1DACB9644();

  v9 = [a1 identifier];
  v10 = sub_1DACB9324();
  v12 = v11;

  v13 = [a1 sortState];
  v14 = [v13 integerValue];

  v15 = [a1 sortOrderState];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 integerValue];
  }

  else
  {
    v17 = 0;
  }

  sub_1DABF7EBC(v14, v17, v16 == 0, &v24);
  if (v24 <= 0xFDu)
  {
    v18 = v24;
  }

  else
  {
    v18 = -96;
  }

  v19 = [a1 displayState];
  v20 = [v19 integerValue];

  v21 = v20 == 1;
  *a2 = v23;
  *(a2 + 8) = v6;
  if (v20 == 2)
  {
    v21 = 2;
  }

  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v18;
  *(a2 + 41) = v21;
}

uint64_t sub_1DABE6690@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a6;
  v9 = *a7;
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = v8;
  *(a8 + 41) = v9;
  return result;
}

uint64_t sub_1DABE66B0()
{
  v1 = *v0;
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABE66E8()
{
  v1 = *(v0 + 24);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABE6734()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x696669746E656469;
  v4 = 0x7461745374726F73;
  if (v1 != 3)
  {
    v4 = 0x5379616C70736964;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x736C6F626D7973;
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

uint64_t sub_1DABE67D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DABE7590(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DABE6800(uint64_t a1)
{
  v2 = sub_1DABE726C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABE683C(uint64_t a1)
{
  v2 = sub_1DABE726C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABE6878(void *a1)
{
  sub_1DABE7368(0, &qword_1ECBE8AE8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  v8 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = v8;
  v15 = *(v1 + 32);
  LODWORD(v8) = *(v1 + 40);
  v13 = *(v1 + 41);
  v14 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABE726C();
  sub_1DACBA304();
  v26 = 0;
  v9 = v18;
  sub_1DACBA094();
  if (!v9)
  {
    v10 = v13;
    v11 = v14;
    v19 = v17;
    v25 = 1;
    sub_1DAA613E8();
    sub_1DAA962D8(&qword_1EE123E98, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1DACBA0E4();
    v24 = 2;
    sub_1DACBA094();
    v23 = v11;
    v22 = 3;
    sub_1DABE72C0();
    sub_1DACBA0E4();
    v21 = v10;
    v20 = 4;
    sub_1DABE7314();
    sub_1DACBA0E4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DABE6B08(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  v4 = *(v1 + 41);
  sub_1DACB9404();
  MEMORY[0x1E1277D70](*(v2 + 16));
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = v2 + 40;
    do
    {
      sub_1DACB71E4();
      sub_1DACB9404();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  sub_1DACB9404();
  v7 = v3 >> 5;
  if (v3 >> 5 > 2)
  {
    if (v7 == 3)
    {
      v9 = 4;
    }

    else
    {
      if (v7 != 4)
      {
        v10 = 0;
        goto LABEL_15;
      }

      v9 = 5;
    }
  }

  else
  {
    v8 = 2;
    if (v7 != 1)
    {
      v8 = 3;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1;
    }
  }

  MEMORY[0x1E1277D70](v9);
  v10 = v3 & 1;
LABEL_15:
  MEMORY[0x1E1277D70](v10);
  return MEMORY[0x1E1277D70](v4);
}

uint64_t sub_1DABE6C24()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v0 + 20);
  v6 = *v0;
  v7 = *(v0 + 1);
  v8 = v1;
  v9 = v2;
  v10 = v3;
  sub_1DACBA284();
  sub_1DABE6B08(v5);
  return sub_1DACBA2C4();
}

uint64_t sub_1DABE6C88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DABE7368(0, &qword_1ECBE8B08, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABE726C();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v10 = sub_1DACB9FA4();
  v22 = v11;
  sub_1DAA613E8();
  v29 = 1;
  sub_1DAA962D8(&qword_1EE123E88, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1DACB9FE4();
  v21 = v23;
  v28 = 2;
  v19 = sub_1DACB9FA4();
  v20 = v12;
  v26 = 3;
  sub_1DABE73CC();
  sub_1DACB9FE4();
  HIDWORD(v18) = v27;
  v24 = 4;
  sub_1DABE7420();
  sub_1DACB9FE4();
  (*(v7 + 8))(v9, v6);
  v14 = v25;
  v15 = v22;
  *a2 = v10;
  *(a2 + 8) = v15;
  v16 = v20;
  v17 = v19;
  *(a2 + 16) = v21;
  *(a2 + 24) = v17;
  *(a2 + 32) = v16;
  *(a2 + 40) = BYTE4(v18);
  *(a2 + 41) = v14;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DABE7018()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v0 + 20);
  v6 = *v0;
  v7 = *(v0 + 1);
  v8 = v1;
  v9 = v2;
  v10 = v3;
  sub_1DACBA284();
  sub_1DABE6B08(v5);
  return sub_1DACBA2C4();
}

uint64_t sub_1DABE7080(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = *(v1 + 20);
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_1DACBA284();
  sub_1DABE6B08(v6);
  return sub_1DACBA2C4();
}

uint64_t sub_1DABE7114@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
  return sub_1DACB71E4();
}

BOOL sub_1DABE7120(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 41);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1DACBA174() & 1) == 0 || (sub_1DAA51414(v2, v8) & 1) == 0 || (v3 != v7 || v4 != v9) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  v12 = v5 >> 5;
  if (v5 >> 5 > 2)
  {
    if (v12 == 3)
    {
      if ((v10 & 0xE0) == 0x60)
      {
        return v6 == v11;
      }
    }

    else if (v12 == 4)
    {
      if ((v10 & 0xE0) == 0x80)
      {
        return v6 == v11;
      }
    }

    else if (v10 == 160)
    {
      return v6 == v11;
    }

    return 0;
  }

  if (!v12)
  {
    if (v10 < 0x20)
    {
      return v6 == v11;
    }

    return 0;
  }

  if (v12 != 1)
  {
    if ((v10 & 0xE0) == 0x40)
    {
      return v6 == v11;
    }

    return 0;
  }

  if ((v10 & 0xE0) != 0x20)
  {
    return 0;
  }

  return v6 == v11;
}

unint64_t sub_1DABE726C()
{
  result = qword_1ECBE8AF0;
  if (!qword_1ECBE8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8AF0);
  }

  return result;
}

unint64_t sub_1DABE72C0()
{
  result = qword_1ECBE8AF8;
  if (!qword_1ECBE8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8AF8);
  }

  return result;
}

unint64_t sub_1DABE7314()
{
  result = qword_1ECBE8B00;
  if (!qword_1ECBE8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B00);
  }

  return result;
}

void sub_1DABE7368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DABE726C();
    v7 = a3(a1, &type metadata for Watchlist.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DABE73CC()
{
  result = qword_1ECBE8B10;
  if (!qword_1ECBE8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B10);
  }

  return result;
}

unint64_t sub_1DABE7420()
{
  result = qword_1ECBE8B18;
  if (!qword_1ECBE8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B18);
  }

  return result;
}

unint64_t sub_1DABE748C()
{
  result = qword_1ECBE8B20;
  if (!qword_1ECBE8B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B20);
  }

  return result;
}

unint64_t sub_1DABE74E4()
{
  result = qword_1ECBE8B28;
  if (!qword_1ECBE8B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B28);
  }

  return result;
}

unint64_t sub_1DABE753C()
{
  result = qword_1ECBE8B30;
  if (!qword_1ECBE8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B30);
  }

  return result;
}

uint64_t sub_1DABE7590(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736C6F626D7973 && a2 == 0xE700000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461745374726F73 && a2 == 0xE900000000000065 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC00000065746174)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

StocksCore::MultiSizeVideo __swiftcall MultiSizeVideo.init(videoSmall:videoLarge:)(Swift::String_optional videoSmall, Swift::String_optional videoLarge)
{
  if (videoSmall.value._object)
  {
    countAndFlagsBits = videoSmall.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (videoSmall.value._object)
  {
    object = videoSmall.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  if (videoLarge.value._object)
  {
    v5 = videoLarge.value._countAndFlagsBits;
  }

  else
  {
    v5 = 0;
  }

  *v2 = countAndFlagsBits;
  v2[1] = object;
  if (videoLarge.value._object)
  {
    v6 = videoLarge.value._object;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v2[2] = v5;
  v2[3] = v6;
  result.videoLarge = videoLarge.value;
  result.videoSmall = videoSmall.value;
  return result;
}

uint64_t sub_1DABE7780(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x72614C6F65646976;
  }

  else
  {
    v3 = 0x616D536F65646976;
  }

  if (v2)
  {
    v4 = 0xEA00000000006C6CLL;
  }

  else
  {
    v4 = 0xEA00000000006567;
  }

  if (*a2)
  {
    v5 = 0x72614C6F65646976;
  }

  else
  {
    v5 = 0x616D536F65646976;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006567;
  }

  else
  {
    v6 = 0xEA00000000006C6CLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DABE782C()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABE78B4(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DABE7928(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABE79AC@<X0>(char *a2@<X8>)
{
  v3 = sub_1DACB9F04();

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

void sub_1DABE7A0C(uint64_t *a1@<X8>)
{
  v2 = 0x616D536F65646976;
  if (*v1)
  {
    v2 = 0x72614C6F65646976;
  }

  v3 = 0xEA00000000006567;
  if (!*v1)
  {
    v3 = 0xEA00000000006C6CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DABE7A50()
{
  if (*v0)
  {
    return 0x72614C6F65646976;
  }

  else
  {
    return 0x616D536F65646976;
  }
}

uint64_t sub_1DABE7A90@<X0>(char *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1DABE7AF4(uint64_t a1)
{
  v2 = sub_1DABE8000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABE7B30(uint64_t a1)
{
  v2 = sub_1DABE8000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MultiSizeVideo.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1DABE82A8(0, &qword_1ECBE8B38, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABE8000();
  sub_1DACBA2F4();
  if (!v2)
  {
    v41 = MEMORY[0x1E69E7CC0];
    v40 = 0;
    sub_1DACB9F84();
    v10 = v39;
    v35 = v38;
    if (v39)
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v34 = 0;
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
      *(v14 + 4) = 0x616D536F65646976;
      *(v14 + 5) = 0xEA00000000006C6CLL;
      v41 = v11;
      swift_endAccess();
      v10 = v34;
    }

    LOBYTE(v38) = 1;
    sub_1DACB9F84();
    if (v37)
    {
      v33 = v37;
      v15 = v35;
      v16 = *(v11 + 2);
      if (!v10)
      {
        v15 = 0;
      }

      v34 = v36;
      v35 = v15;
      if (!v10)
      {
        v10 = 0xE000000000000000;
      }

      if (!v16)
      {
        sub_1DAA41DCC();
        v25 = sub_1DACB9AD4();
        v27 = sub_1DACB9914();
        sub_1DACB8C64("loaded MultiSizeVideo configuration with no need for fallback values", 68, 2, &dword_1DAA3F000, v25, v27, MEMORY[0x1E69E7CC0]);
        goto LABEL_26;
      }

      v32 = v10;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v18 = *(v11 + 2);
      v17 = *(v11 + 3);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v34 = v18 + 1;
        v31 = sub_1DAA9A3B0((v17 > 1), v18 + 1, 1, v11);
        v19 = v34;
        v11 = v31;
      }

      *(v11 + 2) = v19;
      v20 = &v11[16 * v18];
      *(v20 + 4) = 0x72614C6F65646976;
      *(v20 + 5) = 0xEA00000000006567;
      v21 = v35;
      if (!v10)
      {
        v21 = 0;
      }

      v34 = 0;
      v35 = v21;
      if (v10)
      {
        v22 = v10;
      }

      else
      {
        v22 = 0xE000000000000000;
      }

      v32 = v22;
      v33 = 0xE000000000000000;
    }

    sub_1DAA41D64(0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DACC1D20;
    sub_1DAA613E8();
    *(v23 + 56) = v24;
    *(v23 + 64) = sub_1DAAF691C();
    *(v23 + 32) = v11;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v25 = sub_1DACB9AD4();
    v26 = sub_1DACB9914();
    sub_1DACB8C64("loaded MultiSizeVideo configuration with fallback values for keys: %@", 69, 2, &dword_1DAA3F000, v25, v26, v23);

    v10 = v32;
LABEL_26:

    (*(v7 + 8))(v9, v6);

    v28 = v34;
    *a2 = v35;
    a2[1] = v10;
    v29 = v33;
    a2[2] = v28;
    a2[3] = v29;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DABE8000()
{
  result = qword_1ECBE8B40;
  if (!qword_1ECBE8B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B40);
  }

  return result;
}

uint64_t static MultiSizeVideo.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DACBA174(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DACBA174();
    }
  }

  return result;
}

uint64_t MultiSizeVideo.encode(to:)(void *a1)
{
  sub_1DABE82A8(0, &qword_1ECBE8B48, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABE8000();
  sub_1DACBA304();
  v13 = 0;
  v9 = v11[3];
  sub_1DACBA094();
  if (!v9)
  {
    v12 = 1;
    sub_1DACBA094();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_1DABE82A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DABE8000();
    v7 = a3(a1, &type metadata for MultiSizeVideo.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DABE8330()
{
  result = qword_1ECBE8B50;
  if (!qword_1ECBE8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B50);
  }

  return result;
}

unint64_t sub_1DABE8388()
{
  result = qword_1ECBE8B58;
  if (!qword_1ECBE8B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B58);
  }

  return result;
}

unint64_t sub_1DABE83E0()
{
  result = qword_1ECBE8B60;
  if (!qword_1ECBE8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B60);
  }

  return result;
}

unint64_t sub_1DABE8438()
{
  result = qword_1ECBE8B68;
  if (!qword_1ECBE8B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B68);
  }

  return result;
}

uint64_t sub_1DABE848C(uint64_t a1)
{
  v1[9] = a1;
  v2 = sub_1DACB78E4();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  sub_1DACB7E44();
  v1[13] = swift_task_alloc();
  v3 = sub_1DACB92E4();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  sub_1DACB7904();
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DABE860C, 0, 0);
}

uint64_t sub_1DABE860C(uint64_t a1)
{
  sub_1DACB6D24();
  v3 = v1[5];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v4 = swift_task_alloc();
  v1[19] = v4;
  *v4 = v1;
  v4[1] = sub_1DABE86D0;

  return sub_1DAC95D1C(v3, v2);
}

uint64_t sub_1DABE86D0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_1DAB0F7B8;
  }

  else
  {
    v4 = sub_1DABE87E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DABE87E4()
{
  v1 = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = *(v1 + 16);
  v3 = v0[20];
  if (v2)
  {
    v4 = v0[15];
    v5 = v0[11];
    v38 = MEMORY[0x1E69E7CC0];
    sub_1DAB25C68(0, v2, 0);
    sub_1DAA9A574(0);
    v6 = v38;
    v33 = (v5 + 104);
    v30 = (v4 + 8);
    v31 = (v4 + 16);
    v7 = (v3 + 64);
    v32 = *MEMORY[0x1E6968DF0];
    while (1)
    {
      v37 = v2;
      v8 = v0[12];
      v9 = v0[10];
      v34 = *(v7 - 4);
      v35 = *(v7 - 3);
      v10 = *(v7 - 1);
      v11 = *v7;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1DACB9284();
      sub_1DACB7DF4();
      (*v33)(v8, v32, v9);
      sub_1DACB7914();
      v12 = sub_1DACB6F34();
      if (v10 == sub_1DACB9324() && v11 == v13)
      {
        break;
      }

      v14 = sub_1DACBA174();
      sub_1DACB71E4();

      v15 = v34;
      v16 = v35;
      if (v14)
      {
        goto LABEL_7;
      }

LABEL_10:

      v0[7] = v15;
      v0[8] = v16;
      sub_1DACB6EE4();

      v26 = *(v38 + 16);
      v25 = *(v38 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1DAB25C68((v25 > 1), v26 + 1, 1);
      }

      *(v38 + 16) = v26 + 1;
      v27 = (v38 + 24 * v26);
      v27[4] = v10;
      v27[5] = v11;
      v27[6] = v12;
      v7 += 6;
      v2 = v37 - 1;
      if (v37 == 1)
      {

        goto LABEL_15;
      }
    }

    sub_1DACB71E4();

LABEL_7:
    v36 = v12;
    v17 = v10;
    v18 = v0[16];
    v19 = v0[17];
    v20 = v0[14];
    sub_1DACB9284();
    (*v31)(v18, v19, v20);
    if (qword_1EE123DD8 != -1)
    {
      swift_once();
    }

    v21 = v0[17];
    v22 = v0[14];
    v23 = qword_1EE13E470;
    sub_1DACB7DF4();
    v15 = sub_1DACB9384();
    v16 = v24;
    (*v30)(v21, v22);

    v10 = v17;
    v12 = v36;
    goto LABEL_10;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_15:

  v28 = v0[1];

  return v28(v6);
}

uint64_t sub_1DABE8BFC(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1DAAFF1F4;

  return sub_1DABE848C(v3);
}

uint64_t sub_1DABE8CA4(uint64_t a1)
{
  sub_1DABE9824(0, &qword_1EE11D420, type metadata accessor for ForYouConfigRecord, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DABE8D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = sub_1DABE9214(a5);
  v32 = v7;
  sub_1DABE9824(0, &qword_1EE11CEB0, sub_1DABE9888, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC1D30;
  if (qword_1EE121F40[0] != -1)
  {
    swift_once();
  }

  v9 = qword_1EE13E340;
  *(inited + 32) = qword_1EE13E338;
  *(inited + 40) = v9;
  sub_1DAA614EC(0, &qword_1EE123B50, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DACC1D40;
  v11 = unk_1EE13E360;
  *(v10 + 32) = qword_1EE13E358;
  *(v10 + 40) = v11;
  v12 = unk_1EE13E380;
  *(v10 + 48) = qword_1EE13E378;
  *(v10 + 56) = v12;
  *(inited + 48) = v10;
  *(inited + 56) = sub_1DACB9324();
  *(inited + 64) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DACC1D40;
  *(v14 + 32) = sub_1DACB9324();
  *(v14 + 40) = v15;
  *(v14 + 48) = sub_1DACB9324();
  *(v14 + 56) = v16;
  *(inited + 72) = v14;
  *(inited + 80) = sub_1DACB9324();
  *(inited + 88) = v17;
  v18 = MEMORY[0x1E69E7CC0];
  *(inited + 96) = MEMORY[0x1E69E7CC0];
  *(inited + 104) = sub_1DACB9324();
  *(inited + 112) = v19;
  *(inited + 120) = v18;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DAB69444(inited);
  swift_setDeallocating();
  sub_1DABE9888(0);
  swift_arrayDestroy();
  v31 = [objc_opt_self() ignoreCacheCachePolicy];
  if (qword_1EE11D618 != -1)
  {
    swift_once();
  }

  sub_1DABE9970(qword_1EE11DE28, v20, type metadata accessor for ForYouConfigRecordService, &unk_1DACD3058);
  sub_1DACB7F84();
  if (aBlock[0])
  {
    v21 = 0;
  }

  else
  {
    v22 = objc_allocWithZone(MEMORY[0x1E69B5268]);
    v23 = sub_1DACB92F4();
    v24 = sub_1DACB92F4();
    v21 = [v22 initWithGroupName:v23 cacheControlKey:v24];
  }

  v25 = a5[2];
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1DACC1D20;
  *(v26 + 32) = v6;
  *(v26 + 40) = v32;
  sub_1DACB71E4();
  v27 = sub_1DACB9634();

  sub_1DAA614EC(0, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
  v28 = sub_1DACB9114();

  v29 = swift_allocObject();
  v29[2] = a1;
  v29[3] = a2;
  v29[4] = a3;
  v29[5] = a4;
  v29[6] = v6;
  v29[7] = v32;
  aBlock[4] = sub_1DABE990C;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DABAE648;
  aBlock[3] = &block_descriptor_23;
  v30 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v25 fetchRecordTreeWithRootIDs:v27 branchKeysByRecordType:v28 cachePolicy:v31 edgeCacheHint:v21 completion:v30];
  _Block_release(v30);
}

uint64_t sub_1DABE9214(uint64_t *a1)
{
  v2 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE11D630 != -1)
  {
    swift_once();
  }

  sub_1DABE9970(qword_1EE11DE28, v3, type metadata accessor for ForYouConfigRecordService, &unk_1DACD3058);
  sub_1DACB7F84();
  v6 = v11;
  v7 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v7 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    v8 = a1[6];
    v9 = a1[7];
    __swift_project_boxed_opaque_existential_1(a1 + 3, v8);
    (*(v9 + 8))(v8, v9);
    v6 = *(v5 + 178);
    sub_1DACB71E4();
    sub_1DABE99B8(v5, type metadata accessor for AppConfiguration);
  }

  return v6;
}

void sub_1DABE93B8(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34[0] = a3;
  v13 = type metadata accessor for ForYouConfigRecord(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = v34 - v17;
  if (a2)
  {
    swift_getErrorValue();
    v19 = v34[2];
    v20 = a2;
    sub_1DABDB680(v19);
    if (v21)
    {
      sub_1DAA41DCC();
      v22 = sub_1DACB9AD4();
      v23 = sub_1DACB9914();
      v24 = MEMORY[0x1E69E7CC0];
      sub_1DACB8C64("For You Config service encountered missing For You Config record", 64, 2, &dword_1DAA3F000, v22, v23, MEMORY[0x1E69E7CC0]);

      v25 = (v16 + v13[5]);
      type metadata accessor for ForYouConfigRecord.Configuration.TopStories(0);
      sub_1DACB7CB4();
      *v25 = v24;
      *v16 = 0x676E697373696DLL;
      v16[1] = 0xE700000000000000;
      *(v16 + v13[6]) = v24;
      v26 = (v16 + v13[7]);
      *v26 = 0;
      v26[1] = 0xE000000000000000;
      *(v16 + v13[8]) = v24;
      (v34[0])(v16);

      sub_1DABE99B8(v16, type metadata accessor for ForYouConfigRecord);
    }

    else
    {
      a5(a2);
    }
  }

  else if (*(a1 + 16) && (v27 = sub_1DAA4BF3C(a7, a8), (v28 & 1) != 0))
  {
    v29 = (*(a1 + 56) + 16 * v27);
    v30 = *v29;
    v31 = v29[1];
    sub_1DACB7554();
    swift_allocObject();
    sub_1DAB0B080(v30, v31);
    sub_1DACB7544();
    sub_1DABE9970(&qword_1EE11E810, 255, type metadata accessor for ForYouConfigRecord, &unk_1DACDA48C);
    sub_1DACB7524();

    (v34[0])(v18);
    sub_1DAA563C0(v30, v31);
    sub_1DABE99B8(v18, type metadata accessor for ForYouConfigRecord);
  }

  else
  {
    sub_1DABE991C();
    v32 = swift_allocError();
    *v33 = a7;
    v33[1] = a8;
    sub_1DACB71E4();
    a5(v32);
  }
}

uint64_t sub_1DABE973C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DABE97A8()
{
  sub_1DACB71F4();
  v0 = sub_1DACB8364();

  return v0;
}

void sub_1DABE9824(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DABE9888(uint64_t a1)
{
  if (!qword_1EE11D190)
  {
    sub_1DAA614EC(255, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11D190);
    }
  }
}

unint64_t sub_1DABE991C()
{
  result = qword_1ECBE8B70;
  if (!qword_1ECBE8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B70);
  }

  return result;
}

uint64_t sub_1DABE9970(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DABE99B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DABE9A44()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABE9B24(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DABE9BF0(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DABE9CCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DABEA354(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DABE9CFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000656D616E5FLL;
  v4 = 0x65676E6168637865;
  v5 = 0xEA0000000000656DLL;
  v6 = 0x616E5F74726F6873;
  v7 = 0xE400000000000000;
  v8 = 1701667182;
  if (v2 != 3)
  {
    v8 = 0x6C6F626D7973;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1701869940;
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

uint64_t sub_1DABE9D98()
{
  v1 = *v0;
  v2 = 0x65676E6168637865;
  v3 = 0x616E5F74726F6873;
  v4 = 1701667182;
  if (v1 != 3)
  {
    v4 = 0x6C6F626D7973;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701869940;
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

unint64_t sub_1DABE9E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABEA354(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABE9E58(uint64_t a1)
{
  v2 = sub_1DABEB464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABE9E94(uint64_t a1)
{
  v2 = sub_1DABEB464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1DABE9ED0@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DABEA3A0(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1DABE9FA4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DABE9FFC(uint64_t a1)
{
  v2 = sub_1DABEAF7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABEA038(uint64_t a1)
{
  v2 = sub_1DABEAF7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DABEA074@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DABEA798(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DABEA114@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DABEA16C(uint64_t a1)
{
  v2 = sub_1DABEB14C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABEA1A8(uint64_t a1)
{
  v2 = sub_1DABEB14C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABEA1E4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DABEA940(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DABEA228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65636E616E6966 && a2 == 0xE700000000000000)
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

uint64_t sub_1DABEA2B0(uint64_t a1)
{
  v2 = sub_1DABEADAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABEA2EC(uint64_t a1)
{
  v2 = sub_1DABEADAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DABEA328@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DABEAC04(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1DABEA354(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DABEA3A0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = a2;
  sub_1DABEB404(0, &qword_1ECBE8C20, sub_1DABEB464, &type metadata for YahooSearchResponse.Stock.CodingKeys);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABEB464();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  LOBYTE(v39) = 0;
  v10 = v5;
  v11 = sub_1DACB9FA4();
  v13 = v12;
  LOBYTE(v39) = 1;
  v14 = sub_1DACB9F34();
  v32 = v15;
  v30 = v14;
  LOBYTE(v39) = 2;
  v29 = sub_1DACB9F34();
  v31 = v16;
  LOBYTE(v39) = 3;
  *&v28 = sub_1DACB9FA4();
  *(&v28 + 1) = v17;
  v48 = 4;
  v18 = sub_1DACB9FA4();
  v20 = v19;
  (*(v9 + 8))(v8, v10);
  v34 = v28;
  *&v35 = v18;
  *(&v35 + 1) = v20;
  *&v36 = v11;
  *(&v36 + 1) = v13;
  v21 = v30;
  v22 = v32;
  *&v37 = v30;
  *(&v37 + 1) = v32;
  v23 = v31;
  *&v38 = v29;
  *(&v38 + 1) = v31;
  sub_1DABEB4B8(&v34, &v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v39 = v28;
  v40 = v18;
  v41 = v20;
  v42 = v11;
  v43 = v13;
  v44 = v21;
  v45 = v22;
  v46 = v29;
  v47 = v23;
  result = sub_1DABEB4F0(&v39);
  v25 = v37;
  v26 = v33;
  v33[2] = v36;
  v26[3] = v25;
  v26[4] = v38;
  v27 = v35;
  *v26 = v34;
  v26[1] = v27;
  return result;
}

void *sub_1DABEA798(void *a1)
{
  sub_1DABEB404(0, &qword_1ECBE8BA8, sub_1DABEAF7C, &type metadata for YahooSearchResponse.Finance.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABEAF7C();
  v9 = v8;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABEAFD0();
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1DABEA940(void *a1)
{
  sub_1DABEB404(0, &qword_1ECBE8BD8, sub_1DABEB14C, &type metadata for YahooSearchResponse.Results.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1DABEB14C();
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABEB288(0, &qword_1ECBE8BE8, MEMORY[0x1E69E62F8]);
    sub_1DABEB1A0();
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v8 = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void *sub_1DABEAC04(void *a1)
{
  sub_1DABEB404(0, &qword_1ECBE8B78, sub_1DABEADAC, &type metadata for YahooSearchResponse.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABEADAC();
  v9 = v8;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABEAE00();
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1DABEADAC()
{
  result = qword_1ECBE8B80;
  if (!qword_1ECBE8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B80);
  }

  return result;
}

unint64_t sub_1DABEAE00()
{
  result = qword_1ECBE8B88;
  if (!qword_1ECBE8B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B88);
  }

  return result;
}

unint64_t sub_1DABEAE78()
{
  result = qword_1ECBE8B90;
  if (!qword_1ECBE8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B90);
  }

  return result;
}

unint64_t sub_1DABEAED0()
{
  result = qword_1ECBE8B98;
  if (!qword_1ECBE8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B98);
  }

  return result;
}

unint64_t sub_1DABEAF28()
{
  result = qword_1ECBE8BA0;
  if (!qword_1ECBE8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8BA0);
  }

  return result;
}

unint64_t sub_1DABEAF7C()
{
  result = qword_1ECBE8BB0;
  if (!qword_1ECBE8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8BB0);
  }

  return result;
}

unint64_t sub_1DABEAFD0()
{
  result = qword_1ECBE8BB8;
  if (!qword_1ECBE8BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8BB8);
  }

  return result;
}

unint64_t sub_1DABEB048()
{
  result = qword_1ECBE8BC0;
  if (!qword_1ECBE8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8BC0);
  }

  return result;
}

unint64_t sub_1DABEB0A0()
{
  result = qword_1ECBE8BC8;
  if (!qword_1ECBE8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8BC8);
  }

  return result;
}

unint64_t sub_1DABEB0F8()
{
  result = qword_1ECBE8BD0;
  if (!qword_1ECBE8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8BD0);
  }

  return result;
}

unint64_t sub_1DABEB14C()
{
  result = qword_1ECBE8BE0;
  if (!qword_1ECBE8BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8BE0);
  }

  return result;
}

unint64_t sub_1DABEB1A0()
{
  result = qword_1ECBE8BF0;
  if (!qword_1ECBE8BF0)
  {
    sub_1DABEB288(255, &qword_1ECBE8BE8, MEMORY[0x1E69E62F8]);
    sub_1DABEB234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8BF0);
  }

  return result;
}

unint64_t sub_1DABEB234()
{
  result = qword_1ECBE8BF8;
  if (!qword_1ECBE8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8BF8);
  }

  return result;
}

void sub_1DABEB288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for YahooSearchResponse.Stock);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DABEB300()
{
  result = qword_1ECBE8C08;
  if (!qword_1ECBE8C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8C08);
  }

  return result;
}

unint64_t sub_1DABEB358()
{
  result = qword_1ECBE8C10;
  if (!qword_1ECBE8C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8C10);
  }

  return result;
}

unint64_t sub_1DABEB3B0()
{
  result = qword_1ECBE8C18;
  if (!qword_1ECBE8C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8C18);
  }

  return result;
}

void sub_1DABEB404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
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

unint64_t sub_1DABEB464()
{
  result = qword_1ECBE8C28;
  if (!qword_1ECBE8C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8C28);
  }

  return result;
}

unint64_t sub_1DABEB534()
{
  result = qword_1ECBE8C30;
  if (!qword_1ECBE8C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8C30);
  }

  return result;
}

unint64_t sub_1DABEB58C()
{
  result = qword_1ECBE8C38;
  if (!qword_1ECBE8C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8C38);
  }

  return result;
}

unint64_t sub_1DABEB5E4()
{
  result = qword_1ECBE8C40;
  if (!qword_1ECBE8C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8C40);
  }

  return result;
}

uint64_t sub_1DABEB638@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[7];
  v29[6] = v2[6];
  v29[7] = v5;
  v29[8] = v2[8];
  v6 = v2[3];
  v29[2] = v2[2];
  v29[3] = v6;
  v7 = v2[5];
  v29[4] = v2[4];
  v29[5] = v7;
  v8 = v2[1];
  v29[0] = *v2;
  v29[1] = v8;
  if (sub_1DAA9B6F0(v29) == 1)
  {
    sub_1DAA9B6E0(v29);
    *&v20 = a1;
    sub_1DAAD4DD0(&v20);
    v9 = v27;
    a2[6] = v26;
    a2[7] = v9;
    a2[8] = v28;
    v10 = v23;
    a2[2] = v22;
    a2[3] = v10;
    v11 = v25;
    a2[4] = v24;
    a2[5] = v11;
    v12 = v21;
    *a2 = v20;
    a2[1] = v12;
  }

  else
  {
    v13 = sub_1DAA9B6E0(v29);
    *&v20 = a1;
    memmove(&v20 + 8, (v13 + 8), 0x88uLL);
    sub_1DAAA58BC(&v20);
    v14 = v27;
    a2[6] = v26;
    a2[7] = v14;
    a2[8] = v28;
    v15 = v23;
    a2[2] = v22;
    a2[3] = v15;
    v16 = v25;
    a2[4] = v24;
    a2[5] = v16;
    v17 = v21;
    *a2 = v20;
    a2[1] = v17;
    sub_1DAAA5860(v13 + 8, v19);
  }

  return swift_unknownObjectRetain();
}

id sub_1DABEB754()
{
  v1 = v0[7];
  v9[6] = v0[6];
  v9[7] = v1;
  v9[8] = v0[8];
  v2 = v0[3];
  v9[2] = v0[2];
  v9[3] = v2;
  v3 = v0[5];
  v9[4] = v0[4];
  v9[5] = v3;
  v4 = v0[1];
  v9[0] = *v0;
  v9[1] = v4;
  sub_1DAA9B6F0(v9);
  v5 = *sub_1DAA9B6E0(v9);
  if (([v5 respondsToSelector_] & 1) == 0)
  {
    return 0;
  }

  result = [v5 stocksFields];
  if (!result)
  {
    return result;
  }

  v7 = [result stocksClusterID];
  swift_unknownObjectRelease();
  if (!v7)
  {
    return 0;
  }

  v8 = sub_1DACB9324();

  return v8;
}

uint64_t sub_1DABEB89C(SEL *a1)
{
  v3 = v1[7];
  v11[6] = v1[6];
  v11[7] = v3;
  v11[8] = v1[8];
  v4 = v1[3];
  v11[2] = v1[2];
  v11[3] = v4;
  v5 = v1[5];
  v11[4] = v1[4];
  v11[5] = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  sub_1DAA9B6F0(v11);
  v7 = [*sub_1DAA9B6E0(v11) *a1];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = sub_1DACB9324();

  return v9;
}

id sub_1DABEB944()
{
  v1 = v0[7];
  v7[6] = v0[6];
  v7[7] = v1;
  v7[8] = v0[8];
  v2 = v0[3];
  v7[2] = v0[2];
  v7[3] = v2;
  v3 = v0[5];
  v7[4] = v0[4];
  v7[5] = v3;
  v4 = v0[1];
  v7[0] = *v0;
  v7[1] = v4;
  sub_1DAA9B6F0(v7);
  v5 = *sub_1DAA9B6E0(v7);
  if ([v5 respondsToSelector_])
  {
    return [v5 hasAudioTrack];
  }

  else
  {
    return 0;
  }
}

id sub_1DABEB9D4()
{
  v1 = v0[7];
  v6[6] = v0[6];
  v6[7] = v1;
  v6[8] = v0[8];
  v2 = v0[3];
  v6[2] = v0[2];
  v6[3] = v2;
  v3 = v0[5];
  v6[4] = v0[4];
  v6[5] = v3;
  v4 = v0[1];
  v6[0] = *v0;
  v6[1] = v4;
  sub_1DAA9B6F0(v6);
  return [*sub_1DAA9B6E0(v6) hasThumbnail];
}

uint64_t sub_1DABEBA38()
{
  v1 = v0[7];
  v9[6] = v0[6];
  v9[7] = v1;
  v9[8] = v0[8];
  v2 = v0[3];
  v9[2] = v0[2];
  v9[3] = v2;
  v3 = v0[5];
  v9[4] = v0[4];
  v9[5] = v3;
  v4 = v0[1];
  v9[0] = *v0;
  v9[1] = v4;
  sub_1DAA9B6F0(v9);
  if ([*sub_1DAA9B6E0(v9) respondsToSelector_])
  {
    v5 = [swift_unknownObjectRetain() narrativeTrackPreferredUpsellVariantID];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1DACB9324();

      swift_unknownObjectRelease();
      return v7;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

id sub_1DABEBB10()
{
  v1 = v0[7];
  v11[6] = v0[6];
  v11[7] = v1;
  v11[8] = v0[8];
  v2 = v0[3];
  v11[2] = v0[2];
  v11[3] = v2;
  v3 = v0[5];
  v11[4] = v0[4];
  v11[5] = v3;
  v4 = v0[1];
  v11[0] = *v0;
  v11[1] = v4;
  v5 = sub_1DAA9B6F0(v11);
  v6 = *sub_1DAA9B6E0(v11);
  v7 = [v6 respondsToSelector_];
  if (v5 != 1)
  {
    if (v7)
    {
      result = [v6 dismissingIdentifier];
      if (!result)
      {
        return result;
      }

      goto LABEL_7;
    }

    return 0;
  }

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  result = [v6 dismissingIdentifier];
  if (result)
  {
LABEL_7:
    v9 = result;
    v10 = sub_1DACB9324();

    return v10;
  }

  return result;
}

uint64_t sub_1DABEBC04(uint64_t a1)
{
  v2 = v1[7];
  v8[6] = v1[6];
  v8[7] = v2;
  v8[8] = v1[8];
  v3 = v1[3];
  v8[2] = v1[2];
  v8[3] = v3;
  v4 = v1[5];
  v8[4] = v1[4];
  v8[5] = v4;
  v5 = v1[1];
  v8[0] = *v1;
  v8[1] = v5;
  sub_1DAA9B6F0(v8);
  v6 = [*sub_1DAA9B6E0(v8) identifier];
  sub_1DACB9324();

  sub_1DACB9404();
}

uint64_t sub_1DABEBCB0()
{
  sub_1DACBA284();
  v1 = v0[7];
  v7[6] = v0[6];
  v7[7] = v1;
  v7[8] = v0[8];
  v2 = v0[3];
  v7[2] = v0[2];
  v7[3] = v2;
  v3 = v0[5];
  v7[4] = v0[4];
  v7[5] = v3;
  v4 = v0[1];
  v7[0] = *v0;
  v7[1] = v4;
  sub_1DAA9B6F0(v7);
  v5 = [*sub_1DAA9B6E0(v7) identifier];
  sub_1DACB9324();

  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABEBD70()
{
  sub_1DACBA284();
  v1 = v0[7];
  v7[6] = v0[6];
  v7[7] = v1;
  v7[8] = v0[8];
  v2 = v0[3];
  v7[2] = v0[2];
  v7[3] = v2;
  v3 = v0[5];
  v7[4] = v0[4];
  v7[5] = v3;
  v4 = v0[1];
  v7[0] = *v0;
  v7[1] = v4;
  sub_1DAA9B6F0(v7);
  v5 = [*sub_1DAA9B6E0(v7) identifier];
  sub_1DACB9324();

  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABEBE30(uint64_t a1)
{
  v2 = v1[7];
  v8[6] = v1[6];
  v8[7] = v2;
  v8[8] = v1[8];
  v3 = v1[3];
  v8[2] = v1[2];
  v8[3] = v3;
  v4 = v1[5];
  v8[4] = v1[4];
  v8[5] = v4;
  v5 = v1[1];
  v8[0] = *v1;
  v8[1] = v5;
  sub_1DAA9B6F0(v8);
  v6 = [*sub_1DAA9B6E0(v8) identifier];
  sub_1DACB9324();

  sub_1DACB9404();
}

uint64_t sub_1DABEBEDC(uint64_t a1)
{
  sub_1DACBA284();
  v2 = v1[7];
  v8[6] = v1[6];
  v8[7] = v2;
  v8[8] = v1[8];
  v3 = v1[3];
  v8[2] = v1[2];
  v8[3] = v3;
  v4 = v1[5];
  v8[4] = v1[4];
  v8[5] = v4;
  v5 = v1[1];
  v8[0] = *v1;
  v8[1] = v5;
  sub_1DAA9B6F0(v8);
  v6 = [*sub_1DAA9B6E0(v8) identifier];
  sub_1DACB9324();

  sub_1DACB9404();

  return sub_1DACBA2C4();
}

void *sub_1DABEBF98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v2 = 0;
  v3 = a1 + 32;
  v4 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    v5 = (v3 + 144 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v7 = v5[7];
      v55 = v5[6];
      v56 = v7;
      v57 = v5[8];
      v8 = v5[3];
      v51 = v5[2];
      v52 = v8;
      v9 = v5[5];
      v53 = v5[4];
      v54 = v9;
      v10 = v5[1];
      v49 = *v5;
      v50 = v10;
      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_27;
      }

      v11 = v5[7];
      v58[6] = v5[6];
      v58[7] = v11;
      v58[8] = v5[8];
      v12 = v5[3];
      v58[2] = v5[2];
      v58[3] = v12;
      v13 = v5[5];
      v58[4] = v5[4];
      v58[5] = v13;
      v14 = v5[1];
      v58[0] = *v5;
      v58[1] = v14;
      if (sub_1DAA9B6F0(v58) == 1)
      {
        v15 = *sub_1DAA9B6E0(v58);
        v42 = v51;
        v43 = v52;
        v40 = v49;
        v41 = v50;
        v48 = v57;
        v46 = v55;
        v47 = v56;
        v44 = v53;
        v45 = v54;
        sub_1DAA9B6E0(&v40);
      }

      else
      {
        v15 = *sub_1DAA9B6E0(v58);
      }

      swift_unknownObjectRetain();
      sub_1DAAD4CCC(&v49, &v40);
      v16 = [v15 scoreProfile];
      swift_unknownObjectRelease();
      if (v16)
      {
        break;
      }

      sub_1DAAD4D28(&v49);
      v5 += 9;
      if (v2 == v1)
      {
        return v4;
      }
    }

    v39 = v3;
    v46 = v55;
    v47 = v56;
    v48 = v57;
    v42 = v51;
    v43 = v52;
    v44 = v53;
    v45 = v54;
    v40 = v49;
    v41 = v50;
    sub_1DAA9B6F0(&v40);
    v17 = [*sub_1DAA9B6E0(&v40) identifier];
    v18 = sub_1DACB9324();
    v20 = v19;

    v21 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = sub_1DAA4BF3C(v18, v20);
    v25 = v4[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v29 = v24;
    if (v4[3] < v28)
    {
      sub_1DAB6221C(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_1DAA4BF3C(v18, v20);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_30;
      }

LABEL_17:
      v3 = v39;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_20:
      v4[(v23 >> 6) + 8] |= 1 << v23;
      v35 = (v4[6] + 16 * v23);
      *v35 = v18;
      v35[1] = v20;
      *(v4[7] + 8 * v23) = v21;
      sub_1DAAD4D28(&v49);

      v36 = v4[2];
      v27 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (!v27)
      {
        v4[2] = v37;
        goto LABEL_22;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      result = sub_1DACBA1F4();
      __break(1u);
      return result;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v34 = v23;
    sub_1DAB66BA0();
    v23 = v34;
    v3 = v39;
    if ((v29 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_18:
    v31 = v23;

    v32 = v4[7];
    v33 = *(v32 + 8 * v31);
    *(v32 + 8 * v31) = v21;

    sub_1DAAD4D28(&v49);
LABEL_22:
    if (v2 != v1)
    {
      continue;
    }

    return v4;
  }
}

unint64_t sub_1DABEC2E0()
{
  result = qword_1ECBE8C50;
  if (!qword_1ECBE8C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8C50);
  }

  return result;
}

unint64_t sub_1DABEC34C()
{
  result = qword_1ECBE8C58;
  if (!qword_1ECBE8C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8C58);
  }

  return result;
}

unint64_t sub_1DABEC3A4()
{
  result = qword_1EE123548;
  if (!qword_1EE123548)
  {
    type metadata accessor for SymbolEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123548);
  }

  return result;
}

uint64_t sub_1DABEC3FC(uint64_t a1, uint64_t a2)
{
  v2[56] = a1;
  v2[57] = a2;
  v2[58] = *(type metadata accessor for SymbolEntity(0) - 8);
  v2[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DABEC4B8, 0, 0);
}

uint64_t sub_1DABEC4B8()
{
  if (sub_1DACB7304())
  {
    swift_getKeyPath();
    sub_1DAA8E020();
    sub_1DACB7054();

    v1 = *(v0 + 416);
    v8 = *(v0 + 424);
    *(v0 + 480) = v8;
    sub_1DACB6D24();
    v2 = *(v0 + 360);
    v3 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_1((v0 + 336), v2);
    *(v0 + 496) = (*(v3 + 144))(v1, v8, v2, v3);
    v4 = swift_task_alloc();
    *(v0 + 504) = v4;
    *v4 = v0;
    v4[1] = sub_1DABEC654;

    return MEMORY[0x1EEE44EE0](v0 + 288);
  }

  else
  {

    v5 = *(v0 + 8);
    v6 = MEMORY[0x1E69E7CC0];

    return v5(v6);
  }
}

uint64_t sub_1DABEC654()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_1DABECC54;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 336));
    v3 = sub_1DABEC788;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DABEC788(uint64_t a1)
{
  v16 = v1;
  v2 = *(v1 + 296);
  if (v2)
  {
    v3 = *(v1 + 288);
    v4 = *(v1 + 304);
    v5 = *(v1 + 312);
    v6 = *(v1 + 320);
    v7 = *(v1 + 328);
    sub_1DACB6D24();
    v8 = *(v1 + 400);
    v9 = *(v1 + 408);
    __swift_project_boxed_opaque_existential_1((v1 + 376), v8);
    v14[0] = v3;
    v14[1] = v2;
    v14[2] = v4;
    v14[3] = v5;
    v14[4] = v6;
    v15 = v7;
    *(v1 + 512) = (*(v9 + 112))(v14, v8, v9);
    sub_1DAA75E60(v3, v2, v4, v5, v6);
    v10 = swift_task_alloc();
    *(v1 + 520) = v10;
    *v10 = v1;
    v10[1] = sub_1DABEC940;

    return MEMORY[0x1EEE44EE0](v1 + 440);
  }

  else
  {

    v11 = *(v1 + 8);
    v12 = MEMORY[0x1E69E7CC0];

    return v11(v12);
  }
}

uint64_t sub_1DABEC940()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_1DABECCD8;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 376));
    v3 = sub_1DABECA74;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DABECA74()
{
  v26 = v0;
  v1 = *(v0 + 440);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 464);
    v23 = MEMORY[0x1E69E7CC0];
    sub_1DAB25CC8(0, v2, 0);
    v4 = v23;
    v5 = v2 - 1;
    for (i = 32; ; i += 136)
    {
      v7 = *(v0 + 472);
      *(v0 + 16) = *(v1 + i);
      v8 = *(v1 + i + 64);
      v10 = *(v1 + i + 16);
      v9 = *(v1 + i + 32);
      *(v0 + 64) = *(v1 + i + 48);
      *(v0 + 80) = v8;
      *(v0 + 32) = v10;
      *(v0 + 48) = v9;
      v12 = *(v1 + i + 96);
      v11 = *(v1 + i + 112);
      v13 = *(v1 + i + 80);
      *(v0 + 144) = *(v1 + i + 128);
      *(v0 + 112) = v12;
      *(v0 + 128) = v11;
      *(v0 + 96) = v13;
      v14 = *(v1 + i + 112);
      v24[6] = *(v1 + i + 96);
      v24[7] = v14;
      v25 = *(v1 + i + 128);
      v15 = *(v1 + i + 48);
      v24[2] = *(v1 + i + 32);
      v24[3] = v15;
      v16 = *(v1 + i + 80);
      v24[4] = *(v1 + i + 64);
      v24[5] = v16;
      v17 = *(v1 + i + 16);
      v24[0] = *(v1 + i);
      v24[1] = v17;
      sub_1DAA806E4(v0 + 16, v0 + 152);
      SymbolEntity.init(from:)(v24, v7);
      v19 = *(v23 + 16);
      v18 = *(v23 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1DAB25CC8((v18 > 1), v19 + 1, 1);
      }

      v20 = *(v0 + 472);
      *(v23 + 16) = v19 + 1;
      sub_1DAAF5AA4(v20, v23 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19);
      if (!v5)
      {
        break;
      }

      --v5;
    }
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v0 + 8);

  return v21(v4);
}

uint64_t sub_1DABECC54()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 336));

  v1 = *(v0 + 8);
  v2 = MEMORY[0x1E69E7CC0];

  return v1(v2);
}

uint64_t sub_1DABECCD8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 376));

  v1 = *(v0 + 8);
  v2 = MEMORY[0x1E69E7CC0];

  return v1(v2);
}

uint64_t sub_1DABECD5C(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_1DAAFF1F4;

  return sub_1DABEC3FC(v3, v4);
}

id sub_1DABECEB4(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_1DAA492B4(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7CC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DACB92F4();
  v13 = [a1 decodeObjectForKey_];

  if (v13)
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (!*(&v20 + 1))
  {

    sub_1DAB0826C(v21, sub_1DAADFABC);
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_8;
  }

  v14 = swift_dynamicCast();
  (*(v9 + 56))(v7, v14 ^ 1u, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

LABEL_8:
    sub_1DAB0826C(v7, sub_1DAA492B4);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v16 = *(v9 + 32);
  v16(v11, v7, v8);
  v16(&v2[OBJC_IVAR___SCUpdateAppLaunchUpsellLastSeenDateCommand_appLaunchUpsellLastSeenDate], v11, v8);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v18, sel_init);

  return v17;
}

uint64_t sub_1DABED28C(void *a1, uint64_t a2)
{
  v3 = [a1 encryptedValues];
  swift_getObjectType();
  v4 = OBJC_IVAR___SCUpdateAppLaunchUpsellLastSeenDateCommand_appLaunchUpsellLastSeenDate;
  v5 = sub_1DACB7CC4();
  v8[3] = v5;
  v8[4] = MEMORY[0x1E695B590];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a2 + v4, v5);
  sub_1DACB9A44();
  return swift_unknownObjectRelease();
}

uint64_t sub_1DABED4B4(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 96) = a1;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 104) = v4;
  *v4 = v3;
  v4[1] = sub_1DABED5A8;

  return v6(v3 + 16);
}

uint64_t sub_1DABED5A8()
{

  return MEMORY[0x1EEE6DFA0](sub_1DABED6A4, 0, 0);
}

uint64_t sub_1DABED6A4()
{
  sub_1DACB9794();
  *(v0 + 112) = sub_1DACB9784();
  v2 = sub_1DACB9744();

  return MEMORY[0x1EEE6DFA0](sub_1DABED738, v2, v1);
}

void *sub_1DABED738()
{

  sub_1DAA4436C(0, &qword_1EE125CC8, &protocol descriptor for QuoteDetailManagerType);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  result = sub_1DACB8254();
  if (*(v0 + 80))
  {
    sub_1DAA4D460((v0 + 56), *(v0 + 96));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABED810(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 96) = a1;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 104) = v4;
  *v4 = v3;
  v4[1] = sub_1DABED904;

  return v6(v3 + 16);
}

uint64_t sub_1DABED904()
{

  return MEMORY[0x1EEE6DFA0](sub_1DABEDA00, 0, 0);
}

uint64_t sub_1DABEDA00()
{
  sub_1DACB9794();
  *(v0 + 112) = sub_1DACB9784();
  v2 = sub_1DACB9744();

  return MEMORY[0x1EEE6DFA0](sub_1DABEDA94, v2, v1);
}

void *sub_1DABEDA94()
{

  sub_1DAA4436C(0, &qword_1EE125FE0, &protocol descriptor for QuoteManagerType);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  result = sub_1DACB8254();
  if (*(v0 + 80))
  {
    sub_1DAA4D460((v0 + 56), *(v0 + 96));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABEDB6C(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 96) = a1;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 104) = v4;
  *v4 = v3;
  v4[1] = sub_1DABEDC60;

  return v6(v3 + 16);
}

uint64_t sub_1DABEDC60()
{

  return MEMORY[0x1EEE6DFA0](sub_1DABEDD5C, 0, 0);
}

uint64_t sub_1DABEDD5C()
{
  sub_1DACB9794();
  *(v0 + 112) = sub_1DACB9784();
  v2 = sub_1DACB9744();

  return MEMORY[0x1EEE6DFA0](sub_1DABEDDF0, v2, v1);
}

void *sub_1DABEDDF0()
{

  sub_1DAA4436C(0, &qword_1EE123948, &protocol descriptor for StocksIntentHandlerType);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  result = sub_1DACB8254();
  if (*(v0 + 80))
  {
    sub_1DAA4D460((v0 + 56), *(v0 + 96));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABEDEC8(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 96) = a1;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 104) = v4;
  *v4 = v3;
  v4[1] = sub_1DABEDFBC;

  return v6(v3 + 16);
}

uint64_t sub_1DABEDFBC()
{

  return MEMORY[0x1EEE6DFA0](sub_1DABEE0B8, 0, 0);
}

uint64_t sub_1DABEE0B8()
{
  sub_1DACB9794();
  *(v0 + 112) = sub_1DACB9784();
  v2 = sub_1DACB9744();

  return MEMORY[0x1EEE6DFA0](sub_1DABEE14C, v2, v1);
}

void *sub_1DABEE14C()
{

  sub_1DAA4436C(0, &qword_1EE125E40, &protocol descriptor for WatchlistManagerType);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  result = sub_1DACB8254();
  if (*(v0 + 80))
  {
    sub_1DAA4D460((v0 + 56), *(v0 + 96));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABEE224(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 96) = a1;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 104) = v4;
  *v4 = v3;
  v4[1] = sub_1DABEE318;

  return v6(v3 + 16);
}

uint64_t sub_1DABEE318()
{

  return MEMORY[0x1EEE6DFA0](sub_1DABEE414, 0, 0);
}

uint64_t sub_1DABEE414()
{
  sub_1DACB9794();
  *(v0 + 112) = sub_1DACB9784();
  v2 = sub_1DACB9744();

  return MEMORY[0x1EEE6DFA0](sub_1DABEE4A8, v2, v1);
}

void *sub_1DABEE4A8()
{

  sub_1DAA4436C(0, &unk_1EE125A10, &protocol descriptor for StockMetadataManagerType);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  result = sub_1DACB8254();
  if (*(v0 + 80))
  {
    sub_1DAA4D460((v0 + 56), *(v0 + 96));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABEE580(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 96) = a1;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 104) = v4;
  *v4 = v3;
  v4[1] = sub_1DABEE674;

  return v6(v3 + 16);
}

uint64_t sub_1DABEE674()
{

  return MEMORY[0x1EEE6DFA0](sub_1DABEE770, 0, 0);
}

uint64_t sub_1DABEE770()
{
  sub_1DACB9794();
  *(v0 + 112) = sub_1DACB9784();
  v2 = sub_1DACB9744();

  return MEMORY[0x1EEE6DFA0](sub_1DABEE804, v2, v1);
}

void *sub_1DABEE804()
{

  sub_1DAA4436C(0, qword_1EE125F28, &protocol descriptor for SearchServiceType);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  result = sub_1DACB8254();
  if (*(v0 + 80))
  {
    sub_1DAA4D460((v0 + 56), *(v0 + 96));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABEE8DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAA9A3AC;

  return sub_1DABEE580(a1, v4, v5);
}

uint64_t sub_1DABEE990(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAA9A3AC;

  return sub_1DABEE224(a1, v4, v5);
}

uint64_t sub_1DABEEA44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAA9A3AC;

  return sub_1DABEDEC8(a1, v4, v5);
}

uint64_t sub_1DABEEAF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAA9A3AC;

  return sub_1DABEDB6C(a1, v4, v5);
}

uint64_t sub_1DABEEBAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAA9A3AC;

  return sub_1DABED810(a1, v4, v5);
}

uint64_t sub_1DABEEC60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAA94754;

  return sub_1DABED4B4(a1, v4, v5);
}

uint64_t YahooHeadline.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DACB7AB4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t YahooHeadline.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for YahooHeadline(0) + 20));
  sub_1DACB71E4();
  return v1;
}

uint64_t type metadata accessor for YahooHeadline(uint64_t a1)
{
  result = qword_1ECBE8C60;
  if (!qword_1ECBE8C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t YahooHeadline.summary.getter()
{
  v1 = *(v0 + *(type metadata accessor for YahooHeadline(0) + 24));
  sub_1DACB71E4();
  return v1;
}

uint64_t YahooHeadline.source.getter()
{
  v1 = *(v0 + *(type metadata accessor for YahooHeadline(0) + 28));
  sub_1DACB71E4();
  return v1;
}

uint64_t YahooHeadline.publishDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for YahooHeadline(0) + 32);
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t YahooHeadline.relatedSymbol.getter()
{
  v1 = *(v0 + *(type metadata accessor for YahooHeadline(0) + 36));
  sub_1DACB71E4();
  return v1;
}

void sub_1DABEEF6C(uint64_t a1)
{
  sub_1DACB7AB4();
  if (v1 <= 0x3F)
  {
    sub_1DAB33850();
    if (v2 <= 0x3F)
    {
      sub_1DACB7CC4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1DABEF01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DABEF040, 0, 0);
}

uint64_t sub_1DABEF040()
{
  v0[6] = (*(v0[4] + 24))(v0[3]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1DABEF0FC;
  v2 = v0[2];

  return MEMORY[0x1EEE44EE0](v2);
}

uint64_t sub_1DABEF0FC()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DABEF238, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DABEF238()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DABEF2B4()
{
  [objc_allocWithZone(MEMORY[0x1E69B51F0]) init];
  sub_1DAA97008(0, &qword_1EE11FEA0, &type metadata for NewsUserProfile);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DABEF334()
{
  sub_1DABEF3C0();
  swift_allocError();
  sub_1DAA984E0(0, &qword_1ECBE8C80, MEMORY[0x1E69D6980], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8AD4();
}

unint64_t sub_1DABEF3C0()
{
  result = qword_1ECBE8C78;
  if (!qword_1ECBE8C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8C78);
  }

  return result;
}

uint64_t sub_1DABEF42C()
{
  [objc_allocWithZone(MEMORY[0x1E69B51F0]) init];
  sub_1DAA97008(0, &qword_1EE11FEA0, &type metadata for NewsUserProfile);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DABEF4AC(uint64_t a1)
{
  *(a1 + 8) = sub_1DAA5CD90(&qword_1EE1267A8, type metadata accessor for EmptyNewsUserProfileProvider, &unk_1DACD3BAC);
  result = sub_1DAA5CD90(&qword_1EE1267B0, type metadata accessor for EmptyNewsUserProfileProvider, &unk_1DACD3B44);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DABEF554()
{
  sub_1DABEF3C0();
  swift_allocError();
  sub_1DAA984E0(0, &qword_1ECBE8C80, MEMORY[0x1E69D6980], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8AD4();
}

void sub_1DABEF620(void *a1)
{
  sub_1DAA984E0(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DACC2610;
  v3 = [a1 subscribedTagIDs];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = sub_1DACB9804();

  v6 = *(v5 + 16);

  v7 = MEMORY[0x1E69E6530];
  v8 = MEMORY[0x1E69E65A8];
  *(v2 + 56) = MEMORY[0x1E69E6530];
  *(v2 + 64) = v8;
  *(v2 + 32) = v6;
  v9 = [a1 autoFavoriteTagIDs];
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  v11 = sub_1DACB9804();

  v12 = *(v11 + 16);

  *(v2 + 96) = v7;
  *(v2 + 104) = v8;
  *(v2 + 72) = v12;
  v13 = [a1 mutedTagIDs];
  if (!v13)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = sub_1DACB9804();

  v16 = *(v15 + 16);

  *(v2 + 136) = v7;
  *(v2 + 144) = v8;
  *(v2 + 112) = v16;
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  v18 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64("did sync News subscriptions to %ld subscriptions, %ld auto-favorites, and %ld muted tags", v17, v18, v20);
}

uint64_t sub_1DABEF884()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1DABEF8E0()
{
  result = qword_1ECBE8C90;
  if (!qword_1ECBE8C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8C90);
  }

  return result;
}

void sub_1DABEF934(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 16);
  v8 = [v7 subscriptionList];
  v9 = [v8 subscribedTagIDs];

  if (!v9)
  {
    __break(1u);
    goto LABEL_25;
  }

  v10 = sub_1DACB9804();

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = sub_1DAA7D2EC(*(v10 + 16), 0);
    v13 = sub_1DAB05C50(v33, v12 + 4, v11, v10);
    sub_1DAA54B38(v33[0]);
    if (v13 == v11)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v14 = [v7 subscriptionList];
  v15 = [v14 mutedTagIDs];

  if (!v15)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = sub_1DACB9804();

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = sub_1DAA7D2EC(*(v16 + 16), 0);
    v19 = sub_1DAB05C50(v33, v18 + 4, v17, v16);
    sub_1DAA54B38(v33[0]);
    if (v19 == v17)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v20 = [v7 subscriptionList];
  v21 = [v20 autoFavoriteTagIDs];

  if (!v21)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = sub_1DACB9804();

  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = sub_1DAA7D2EC(*(v22 + 16), 0);
    v25 = sub_1DAB05C50(v33, v24 + 4, v23, v22);
    sub_1DAA54B38(v33[0]);
    if (v25 == v23)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v26 = [*(a5 + 24) allPurchasedTagIDs];
  if (!v26)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v27 = v26;
  v28 = sub_1DACB9804();

  v29 = *(v28 + 16);
  if (!v29)
  {
LABEL_20:

    v30 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v30 = sub_1DAA7D2EC(*(v28 + 16), 0);
  v31 = sub_1DAB05C50(v33, v30 + 4, v29, v28);
  sub_1DAA54B38(v33[0]);
  if (v31 != v29)
  {
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  v32 = [*(a5 + 32) cachedSubscription];
  v33[0] = v12;
  v33[1] = v18;
  v33[2] = v24;
  v33[3] = v30;
  v34 = v32;
  a1(v33);
}

uint64_t sub_1DABEFCBC()
{
  sub_1DAA97008(0, &qword_1EE11FEA0, &type metadata for NewsUserProfile);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DABEFD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  v9 = sub_1DACB9AD4();
  v10 = sub_1DACB9914();
  sub_1DACB8C64("will forward push notification to NewsCore", 42, 2, &dword_1DAA3F000, v9, v10, MEMORY[0x1E69E7CC0]);

  v11 = [*(a5 + 16) privatePushNotificationHandler];
  v12 = sub_1DACB9114();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v15[4] = sub_1DABF02F0;
  v15[5] = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1DABF01D8;
  v15[3] = &block_descriptor_42;
  v14 = _Block_copy(v15);
  sub_1DACB71F4();

  [v11 handleRemoteNotification:v12 completionHandler:v14];
  _Block_release(v14);
  swift_unknownObjectRelease();
}

uint64_t sub_1DABEFEBC(void *a1, void (*a2)(char *))
{
  v4 = sub_1DACB88B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && [a1 wasHandled])
  {
    sub_1DAA984E0(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1DACC1D20;
    v22 = 0;
    v23 = 0xE000000000000000;
    v9 = [a1 recordZoneIDs];
    if (v9)
    {
      v10 = v9;
      sub_1DAA420F4(0, &qword_1ECBE8CB0, 0x1E695BA90);
      sub_1DABF036C();
      v11 = sub_1DACB9804();
    }

    else
    {
      v11 = 0;
    }

    v21[1] = v11;
    sub_1DAA984E0(0, &qword_1ECBE8CA0, sub_1DABF02F8, MEMORY[0x1E69E6720]);
    v15 = sub_1DACB9394();
    MEMORY[0x1E1276F20](v15);

    v16 = v22;
    v17 = v23;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1DAA443C8();
    *(v8 + 32) = v16;
    *(v8 + 40) = v17;
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v18 = sub_1DACB9AD4();
    v19 = sub_1DACB9914();
    sub_1DACB8C64("NewsCore did handle push notification with dirtied zones: %{public}@", 68, 2, &dword_1DAA3F000, v18, v19, v8);

    v14 = MEMORY[0x1E69D6978];
  }

  else
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v12 = sub_1DACB9AD4();
    v13 = sub_1DACB9914();
    sub_1DACB8C64("NewsCore did not handle push notification", 41, 2, &dword_1DAA3F000, v12, v13, MEMORY[0x1E69E7CC0]);

    v14 = MEMORY[0x1E69D6970];
  }

  (*(v5 + 104))(v7, *v14, v4);
  a2(v7);
  return (*(v5 + 8))(v7, v4);
}

void sub_1DABF01D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1DACB71F4();
  v4 = a2;
  v3(a2);
}

uint64_t sub_1DABF0244(uint64_t a1)
{
  sub_1DAA984E0(0, &qword_1ECBE8C80, MEMORY[0x1E69D6980], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DABF02F8(uint64_t a1)
{
  if (!qword_1ECBE8CA8)
  {
    sub_1DAA420F4(255, &qword_1ECBE8CB0, 0x1E695BA90);
    sub_1DABF036C();
    v1 = sub_1DACB9834();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE8CA8);
    }
  }
}

unint64_t sub_1DABF036C()
{
  result = qword_1ECBE8CB8;
  if (!qword_1ECBE8CB8)
  {
    sub_1DAA420F4(255, &qword_1ECBE8CB0, 0x1E695BA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8CB8);
  }

  return result;
}

uint64_t StocksKitClientConfig.clientBundleID.getter()
{
  v1 = *v0;
  sub_1DACB71E4();
  return v1;
}

uint64_t StocksKitClientConfig.stocksDataServiceEndpointVersion.getter()
{
  v1 = *(v0 + 24);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABF045C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000018;
  v3 = *a1;
  v4 = 0x80000001DACE1DB0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000020;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001DACE1DB0;
  }

  else
  {
    v6 = 0x80000001DACE1DD0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7542746E65696C63;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEE004449656C646ELL;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000020;
    v4 = 0x80000001DACE1DD0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x7542746E65696C63;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEE004449656C646ELL;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DABF0544()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABF05F8(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DABF0698(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DABF0748@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DABF1430(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DABF0778(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE004449656C646ELL;
  v4 = 0xD000000000000018;
  v5 = 0x80000001DACE1DB0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000020;
    v5 = 0x80000001DACE1DD0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x7542746E65696C63;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1DABF07E8()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7542746E65696C63;
  }
}

unint64_t sub_1DABF0854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABF1430(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABF087C(uint64_t a1)
{
  v2 = sub_1DABF0EC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABF08B8(uint64_t a1)
{
  v2 = sub_1DABF0EC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StocksKitClientConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DABF12A4(0, &qword_1ECBE8CC0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABF0EC8();
  sub_1DACBA2F4();
  if (!v2)
  {
    v48 = MEMORY[0x1E69E7CC0];
    v47 = 0;
    sub_1DACB9F84();
    v10 = v46;
    v41 = v45;
    if (v46)
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v42 = 0;
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
      strcpy(v14 + 32, "clientBundleID");
      v14[47] = -18;
      v48 = v11;
      swift_endAccess();
      v10 = v42;
    }

    LOBYTE(v45) = 1;
    sub_1DACB9F84();
    v42 = v10;
    LODWORD(v10) = v47;
    if (v47 == 2)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v40 = v16 + 1;
        v35 = sub_1DAA9A3B0((v15 > 1), v16 + 1, 1, v11);
        v17 = v40;
        v11 = v35;
      }

      *(v11 + 2) = v17;
      v18 = &v11[16 * v16];
      *(v18 + 4) = 0xD000000000000018;
      *(v18 + 5) = 0x80000001DACE1DB0;
      v48 = v11;
      swift_endAccess();
    }

    LOBYTE(v45) = 2;
    sub_1DACB9F84();
    if (v44)
    {
      v40 = v44;
      v39 = v43;
      v19 = *(v11 + 2);
      if (v42)
      {
        v20 = v41;
      }

      else
      {
        v20 = 0;
      }

      v21 = 0xE000000000000000;
      if (v42)
      {
        v21 = v42;
      }

      v41 = v20;
      v42 = v21;
      if (!v19)
      {
        sub_1DAA41DCC();
        v29 = sub_1DACB9AD4();
        v31 = sub_1DACB9914();
        sub_1DACB8C64("loaded StocksKit client configuration with no need for fallback values", 70, 2, &dword_1DAA3F000, v29, v31, MEMORY[0x1E69E7CC0]);
        goto LABEL_33;
      }

      v38 = v10;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v23 = *(v11 + 2);
      v22 = *(v11 + 3);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v40 = v23 + 1;
        v36 = sub_1DAA9A3B0((v22 > 1), v23 + 1, 1, v11);
        v24 = v40;
        v11 = v36;
      }

      v38 = v10;
      *(v11 + 2) = v24;
      v25 = &v11[16 * v23];
      *(v25 + 4) = 0xD000000000000020;
      *(v25 + 5) = 0x80000001DACE1DD0;
      if (v42)
      {
        v26 = v41;
      }

      else
      {
        v26 = 0;
      }

      v27 = 0xE000000000000000;
      if (v42)
      {
        v27 = v42;
      }

      v41 = v26;
      v42 = v27;
      v39 = 12662;
      v40 = 0xE200000000000000;
    }

    sub_1DAA41D64(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DACC1D20;
    sub_1DAA613E8();
    *(v10 + 56) = v28;
    *(v10 + 64) = sub_1DAAF691C();
    *(v10 + 32) = v11;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v29 = sub_1DACB9AD4();
    v30 = sub_1DACB9914();
    sub_1DACB8C64("loaded StocksKit client configuration with fallback values for keys: %@", 71, 2, &dword_1DAA3F000, v29, v30, v10);

    LOBYTE(v10) = v38;
LABEL_33:

    (*(v7 + 8))(v9, v6);

    v32 = v42;
    *a2 = v41;
    *(a2 + 8) = v32;
    *(a2 + 16) = v10 & 1;
    v33 = v40;
    *(a2 + 24) = v39;
    *(a2 + 32) = v33;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DABF0EC8()
{
  result = qword_1ECBE8CC8;
  if (!qword_1ECBE8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8CC8);
  }

  return result;
}

uint64_t static StocksKitClientConfig.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v5)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_1DACBA174();
    result = 0;
    if (v9 & 1) == 0 || ((v2 ^ v5))
    {
      return result;
    }
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_1DACBA174();
}

uint64_t StocksKitClientConfig.encode(to:)(void *a1)
{
  sub_1DABF12A4(0, &qword_1ECBE8CD0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v12 = *(v1 + 16);
  v8 = *(v1 + 24);
  v11[1] = *(v1 + 32);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABF0EC8();
  sub_1DACBA304();
  v15 = 0;
  v9 = v11[3];
  sub_1DACBA094();
  if (!v9)
  {
    v14 = 1;
    sub_1DACBA0A4();
    v13 = 2;
    sub_1DACBA094();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DABF11D0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v5)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_1DACBA174();
    result = 0;
    if (v9 & 1) == 0 || ((v2 ^ v5))
    {
      return result;
    }
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_1DACBA174();
}

void sub_1DABF12A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DABF0EC8();
    v7 = a3(a1, &type metadata for StocksKitClientConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DABF132C()
{
  result = qword_1ECBE8CD8;
  if (!qword_1ECBE8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8CD8);
  }

  return result;
}

unint64_t sub_1DABF1384()
{
  result = qword_1ECBE8CE0;
  if (!qword_1ECBE8CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8CE0);
  }

  return result;
}

unint64_t sub_1DABF13DC()
{
  result = qword_1ECBE8CE8;
  if (!qword_1ECBE8CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8CE8);
  }

  return result;
}

unint64_t sub_1DABF1430(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DABF160C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DABF1670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[45] = a3;
  v4[46] = v3;
  v4[44] = a1;
  v5 = sub_1DACB8FB4();
  v4[47] = v5;
  v4[48] = *(v5 - 8);
  v4[49] = swift_task_alloc();
  v6 = sub_1DACB9004();
  v4[50] = v6;
  v4[51] = *(v6 - 8);
  v4[52] = swift_task_alloc();
  v7 = sub_1DACB8674();
  v4[53] = v7;
  v4[54] = *(v7 - 8);
  v4[55] = swift_task_alloc();
  sub_1DABF4804(0, &qword_1EE11DEF0, sub_1DABF2D70, &type metadata for SDSCurrencyResponse, type metadata accessor for SDSBaseOperationResponse);
  v4[56] = v8;
  v4[57] = swift_task_alloc();
  v9 = sub_1DACB7CC4();
  v4[58] = v9;
  v4[59] = *(v9 - 8);
  v4[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DABF18B0, 0, 0);
}

uint64_t sub_1DABF18B0()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[58];
  v4 = v0[45];
  __swift_project_boxed_opaque_existential_1((v0[46] + 16), *(v0[46] + 40));
  v5 = sub_1DAA4BDD8(MEMORY[0x1E69E7CC0]);
  sub_1DACB7CB4();
  v6 = sub_1DABF30F4(0, v5, v1, v4, qword_1EE11EB30, sub_1DABF2D70, &type metadata for SDSCurrencyResponse);
  v0[61] = v6;

  (*(v2 + 8))(v1, v3);
  v7 = (v6 + *((*MEMORY[0x1E69E7D40] & *v6) + qword_1EE13E480 + 16));
  v8 = *v7;
  v9 = v7[1];
  *v7 = sub_1DAB87E70;
  v7[1] = 0;
  sub_1DAA4F910(v8, v9);
  v10 = swift_task_alloc();
  v0[62] = v10;
  *(v10 + 16) = v6;
  v11 = swift_task_alloc();
  v0[63] = v11;
  *v11 = v0;
  v11[1] = sub_1DABF1AAC;
  v13 = v0[56];
  v12 = v0[57];

  return MEMORY[0x1EEE6DE38](v12, 0, 0, 0x286D726F66726570, 0xE900000000000029, sub_1DABF4294, v10, v13);
}

uint64_t sub_1DABF1AAC()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_1DABF2074;
  }

  else
  {
    v2 = sub_1DABF1BC0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DABF1BC0()
{
  v1 = *(v0 + 368);
  sub_1DABF470C(0, &qword_1EE11D490, &type metadata for SDSCurrencyResponse, MEMORY[0x1E69D68E0]);
  sub_1DACB8794();
  v2 = *(v1 + 56);
  v3 = *(v2 + 16);
  if (v3)
  {
    v30 = *(v0 + 136);
    v29 = *(v0 + 144);
    v28 = *(v0 + 152);
    v27 = *(v0 + 160);
    v4 = v2 + 32;
    v26 = (*(v0 + 384) + 8);
    v25 = (*(v0 + 408) + 8);
    v5 = *(v0 + 168);
    do
    {
      sub_1DAA4D678(v4, v0 + 304);
      v6 = __swift_project_boxed_opaque_existential_1((v0 + 304), *(v0 + 328));
      v7 = *v6;
      if (!*(*v6 + 24))
      {
        v8 = *(v0 + 392);
        v32 = *(v0 + 400);
        v9 = *(v0 + 376);
        v31 = *(v0 + 416);
        v10 = swift_allocObject();
        v10[2] = v7;
        v10[3] = v30;
        v10[4] = v29;
        v10[5] = v28;
        v10[6] = v27;
        v10[7] = v5;
        *(v0 + 288) = sub_1DABF4330;
        *(v0 + 296) = v10;
        *(v0 + 256) = MEMORY[0x1E69E9820];
        *(v0 + 264) = 1107296256;
        *(v0 + 272) = sub_1DAA5796C;
        *(v0 + 280) = &block_descriptor_26;
        v11 = _Block_copy((v0 + 256));
        sub_1DACB71F4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB8FD4();
        *(v0 + 344) = MEMORY[0x1E69E7CC0];
        sub_1DAA66A50(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        sub_1DAA667F4(0);
        sub_1DAA66A50(&qword_1EE123EB0, sub_1DAA667F4, MEMORY[0x1E69E6328]);
        sub_1DACB9BB4();
        MEMORY[0x1E1277440](0, v31, v8, v11);
        _Block_release(v11);
        (*v26)(v8, v9);
        (*v25)(v31, v32);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 304));
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  sub_1DABD9F04(v0 + 96);
  sub_1DACB8794();
  v12 = *(v0 + 224);
  *(v0 + 48) = *(v0 + 208);
  *(v0 + 64) = v12;
  *(v0 + 80) = *(v0 + 240);
  v13 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 32) = v13;
  v14 = sub_1DACB87A4();
  if (v14)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v15 = *(v0 + 432);
      v16 = *(v0 + 440);
      v17 = *(v0 + 424);
      sub_1DACB8664();
      v14 = sub_1DACB8654();
      v19 = v18;
      v21 = v20;
      (*(v15 + 8))(v16, v17);
      goto LABEL_11;
    }

    v14 = 0;
  }

  v19 = 0;
  v21 = 1;
LABEL_11:
  sub_1DABF2124(v0 + 16, v14, v19, v21 & 1, *(v0 + 352));
  v22 = *(v0 + 488);
  sub_1DABF429C(*(v0 + 456));

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1DABF2074()
{
  v1 = *(v0 + 488);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DABF2124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char *a5@<X8>)
{
  v86 = a4;
  v85[2] = a3;
  v85[1] = a2;
  v87 = a5;
  v117 = sub_1DACB7BD4();
  v123 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v116 = v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1DACB7BB4();
  v124 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v8 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1DACB7B94();
  v122 = *(v113 - 8);
  v9 = v122;
  MEMORY[0x1EEE9AC00](v113);
  v11 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1DACB7BA4();
  v121 = *(v110 - 8);
  v12 = v121;
  MEMORY[0x1EEE9AC00](v110);
  v14 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v14;
  v114 = sub_1DACB7BE4();
  v120 = *(v114 - 8);
  v15 = MEMORY[0x1EEE9AC00](v114);
  v104 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v103 = v85 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v111 = v85 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = v85 - v21;
  v107 = sub_1DACB7CC4();
  v106 = *(v107 - 8);
  v23 = MEMORY[0x1EEE9AC00](v107);
  v88 = v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v108 = v85 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v119 = v85 - v27;
  v118 = a1;
  v28 = *(a1 + 24);
  v29 = *(a1 + 32);
  v125 = v28;
  v126 = v29;
  v30 = *(v12 + 104);
  LODWORD(v101) = *MEMORY[0x1E6969360];
  v102 = (v12 + 104);
  v100 = v30;
  (v30)(v14);
  v31 = *(v9 + 104);
  v98 = *MEMORY[0x1E6969358];
  v99 = v9 + 104;
  v97 = v31;
  v31(v11);
  v32 = v124;
  v33 = *(v124 + 104);
  v95 = *MEMORY[0x1E6969370];
  v34 = v115;
  v96 = v124 + 104;
  v94 = v33;
  v33(v8);
  v35 = v123;
  v36 = *(v123 + 104);
  v37 = v116;
  v92 = *MEMORY[0x1E6969380];
  v38 = v117;
  v93 = v123 + 104;
  v91 = v36;
  v36(v116);
  sub_1DACB71E4();
  v39 = v109;
  sub_1DACB8C54();
  v40 = v35 + 8;
  v41 = *(v35 + 8);
  v123 = v40;
  v41(v37, v38);
  v42 = *(v32 + 8);
  v105 = v8;
  v124 = v32 + 8;
  v42(v8, v34);
  v43 = *(v122 + 8);
  v44 = v11;
  v122 += 8;
  v90 = v43;
  v43(v11, v113);
  v45 = *(v121 + 8);
  v46 = v110;
  v121 += 8;
  v45(v39);
  sub_1DACB7BC4();
  v47 = *(v120 + 8);
  v120 += 8;
  v89 = v47;
  v47(v22, v114);
  v111 = sub_1DAA66A50(&qword_1EE125290, MEMORY[0x1E69693A0], MEMORY[0x1E6969398]);
  v48 = v112;
  sub_1DACB7CD4();
  if (v48)
  {
    return sub_1DABD9F04(v118);
  }

  v50 = *(v118 + 8);
  v51 = *(v118 + 16);
  v112 = 0;
  v125 = v50;
  v126 = v51;
  v85[0] = v41;
  v52 = v39;
  v53 = v101;
  v101 = v42;
  v54 = v46;
  v100(v39, v53, v46);
  v55 = v113;
  v97(v44, v98, v113);
  v102 = v45;
  v56 = v105;
  v57 = v115;
  v94(v105, v95, v115);
  v58 = v116;
  v59 = v117;
  v91(v116, v92, v117);
  sub_1DACB71E4();
  v60 = v103;
  sub_1DACB8C54();
  (v85[0])(v58, v59);
  v101(v56, v57);
  v90(v44, v55);
  v102(v52, v54);
  sub_1DACB7BC4();
  v89(v60, v114);
  v61 = v112;
  sub_1DACB7CD4();
  v62 = v118;
  v112 = v61;
  if (v61)
  {
    sub_1DABD9F04(v118);
    return (*(v106 + 8))(v119, v107);
  }

  else
  {
    v63 = v107;
    v64 = v106;
    v65 = v119;
    if ((v86 & 1) == 0)
    {
      sub_1DACBA324();
    }

    v66 = v87;
    sub_1DACB7BF4();
    v67 = *v62;
    v68 = *(*v62 + 16);
    v69 = MEMORY[0x1E69E7CC0];
    if (v68)
    {
      v125 = MEMORY[0x1E69E7CC0];
      sub_1DAB25D78(0, v68, 0);
      v69 = v125;
      v70 = (v67 + 64);
      do
      {
        v72 = *(v70 - 4);
        v71 = *(v70 - 3);
        v74 = *(v70 - 2);
        v73 = *(v70 - 1);
        v75 = *v70;
        v125 = v69;
        v77 = *(v69 + 16);
        v76 = *(v69 + 24);
        sub_1DACB71E4();
        sub_1DACB71E4();
        if (v77 >= v76 >> 1)
        {
          sub_1DAB25D78((v76 > 1), v77 + 1, 1);
          v69 = v125;
        }

        *(v69 + 16) = v77 + 1;
        v78 = (v69 + 40 * v77);
        v78[4] = v72;
        v78[5] = v71;
        v78[6] = v74;
        v78[7] = v73;
        v78[8] = v75;
        v70 += 7;
        --v68;
      }

      while (v68);
      v66 = v87;
      v62 = v118;
      v63 = v107;
      v64 = v106;
      v65 = v119;
    }

    v79 = type metadata accessor for CurrencyResponse(0);
    v80 = *(v64 + 16);
    v80(&v66[v79[5]], v65, v63);
    v81 = v88;
    v80(&v66[v79[6]], v88, v63);
    v82 = *(v62 + 56);
    v128 = *(v62 + 72);
    v127[0] = *(v62 + 40);
    v127[1] = v82;
    v131 = v127[0];
    v129 = *(v62 + 64);
    v130 = v82;
    v83 = v79[7];
    sub_1DAAA1344(&v131, &v125);
    sub_1DABF456C(&v130, &v125, sub_1DAB5395C);
    sub_1DABF433C(&v129, &v125);
    sub_1DAB51960(v127, &v66[v83]);
    sub_1DABD9F04(v62);
    v84 = *(v64 + 8);
    v84(v81, v63);
    v84(v108, v63);
    result = (v84)(v119, v63);
    *v66 = v69;
  }

  return result;
}

uint64_t sub_1DABF2CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DAA94754;

  return sub_1DABF1670(a1, v6, a3);
}

unint64_t sub_1DABF2D70()
{
  result = qword_1EE11E670;
  if (!qword_1EE11E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E670);
  }

  return result;
}

uint64_t sub_1DABF2DC4(uint64_t a1, uint64_t a2)
{
  sub_1DABF43C4(0);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_1DACB8304();
  sub_1DACB82E4();
  sub_1DACB8294();
  sub_1DACB82C4();
}

uint64_t sub_1DABF2F20(uint64_t a1)
{
  sub_1DABF4804(0, &qword_1EE11DEF0, sub_1DABF2D70, &type metadata for SDSCurrencyResponse, type metadata accessor for SDSBaseOperationResponse);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  sub_1DABF44DC(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DABF456C(a1, v10, sub_1DABF44DC);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12[1] = *v10;
    sub_1DABF43C4(0);
    return sub_1DACB9754();
  }

  else
  {
    sub_1DABF45D4(v10, v7);
    sub_1DABF4670(v7, v5);
    sub_1DABF43C4(0);
    sub_1DACB9764();
    return sub_1DABF429C(v7);
  }
}

id sub_1DABF30F4(int a1, uint64_t a2, void (*a3)(void, void, void), void (*a4)(void, void, void), unint64_t *a5, uint64_t (*a6)(void), objc_class *a7)
{
  v115 = a7;
  v114 = a6;
  v113 = a5;
  v8 = v7;
  v111 = a4;
  v110 = a3;
  LODWORD(v117) = a1;
  v10 = sub_1DACB8204();
  v127 = *(v10 - 8);
  v128 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v109 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v124 = &v102 - v13;
  v126 = sub_1DACB7CC4();
  v14 = *(v126 - 8);
  v15 = MEMORY[0x1EEE9AC00](v126);
  v108 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v123 = &v102 - v17;
  v120 = sub_1DACB7AB4();
  v118 = *(v120 - 8);
  v18 = MEMORY[0x1EEE9AC00](v120);
  v106 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v121 = &v102 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v122 = &v102 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v107 = &v102 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v125 = &v102 - v26;
  v27 = type metadata accessor for AppConfiguration(0);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v102 - v31;
  v33 = v7[16];
  v34 = v7[17];
  __swift_project_boxed_opaque_existential_1(v7 + 13, v33);
  v35 = *(v34 + 8);
  sub_1DACB71E4();
  v35(v33, v34);
  v36 = *(v32 + 530);
  sub_1DACB71E4();
  sub_1DAA640AC(v32);
  v132 = v36;
  sub_1DABF470C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAA587CC();
  v37 = sub_1DACB9214();
  v39 = v38;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v132 = a2;
  sub_1DACA53DC(v37, v39, 0x6E656D7461657274, 0xEC00000073444974, isUniquelyReferenced_nonNull_native);
  v116 = v132;
  v41 = v7[16];
  v42 = v7[17];
  __swift_project_boxed_opaque_existential_1(v8 + 13, v8[16]);
  (*(v42 + 8))(v41, v42);
  v43 = [objc_opt_self() mainBundle];
  v44 = [v43 bundleIdentifier];

  if (v44)
  {
    v45 = sub_1DACB9324();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0;
  }

  v48 = 0x73752D6E65;
  sub_1DAA8B654(v45, v47, &v132);

  sub_1DAA640AC(v30);
  v119 = v14;
  if (!v133)
  {
    sub_1DACB8BD4();
    v55 = [objc_opt_self() sharedPreferences];
    v56 = v55;
    if (v55)
    {
      v57 = [v55 stocksLanguageCode];
      if (v57)
      {
        v58 = v57;
        v112 = sub_1DACB9324();
        v125 = v59;
      }

      else
      {
        v112 = 0x73752D6E65;
        v125 = 0xE500000000000000;
      }

      v83 = [v56 stocksCountryCode];
      if (v83)
      {
        v84 = v83;
        v85 = sub_1DACB9324();
        v122 = v86;

LABEL_22:
        sub_1DAA4D678((v8 + 3), &v132);
        sub_1DAA4D678((v8 + 8), &v131);
        v123 = *(v14 + 16);
        (v123)(v108, v110, v126);
        v124 = *(v127 + 16);
        (v124)(v109, v111, v128);
        sub_1DABF4804(0, v113, v114, v115, type metadata accessor for SDSBaseOperation);
        v115 = v87;
        v88 = objc_allocWithZone(v87);
        v89 = MEMORY[0x1E69E7D40];
        v90 = (v88 + *((*MEMORY[0x1E69E7D40] & *v88) + qword_1EE13E480 + 16));
        *v90 = 0;
        v90[1] = 0;
        *(v88 + *((*v89 & *v88) + qword_1EE13E480 + 88)) = MEMORY[0x1E69E7CC0];
        *(v88 + *((*v89 & *v88) + qword_1EE13E480 + 24)) = v117;
        v91 = v106;
        sub_1DACB7A24();

        v92 = v118;
        v93 = v120;
        (*(v118 + 32))(v88 + *((*v89 & *v88) + qword_1EE13E480 + 32), v91, v120);
        *(v88 + *((*v89 & *v88) + qword_1EE13E480 + 40)) = v116;
        v94 = (v88 + *((*v89 & *v88) + qword_1EE13E480 + 48));
        v95 = v125;
        *v94 = v112;
        v94[1] = v95;
        v96 = v122;
        v94[2] = v85;
        v94[3] = v96;
        sub_1DAA4D678(&v132, v88 + *((*v89 & *v88) + qword_1EE13E480 + 56));
        sub_1DAA4D678(&v131, v88 + *((*v89 & *v88) + qword_1EE13E480 + 64));
        v97 = v108;
        v98 = v126;
        (v123)(v88 + *((*v89 & *v88) + qword_1EE13E480 + 72), v108, v126);
        v99 = v109;
        v100 = v128;
        (v124)(v88 + *((*v89 & *v88) + qword_1EE13E480 + 80), v109, v128);
        v130.receiver = v88;
        v130.super_class = v115;
        v82 = objc_msgSendSuper2(&v130, sel_init);
        (*(v127 + 8))(v99, v100);
        (*(v119 + 8))(v97, v98);
        __swift_destroy_boxed_opaque_existential_1(&v131);
        __swift_destroy_boxed_opaque_existential_1(&v132);
        (*(v92 + 8))(v121, v93);
        return v82;
      }
    }

    else
    {
      v112 = 0x73752D6E65;
      v125 = 0xE500000000000000;
    }

    v122 = 0xE200000000000000;
    v85 = 21333;
    goto LABEL_22;
  }

  v109 = v133;
  v105 = v132;
  v49 = v135;
  v108 = v134;
  v121 = v136;
  sub_1DACB8BD4();
  v50 = [objc_opt_self() sharedPreferences];
  v51 = v50;
  if (!v50)
  {
    v104 = 0xE500000000000000;
LABEL_15:
    v112 = v48;

    v103 = 0xE200000000000000;
    v102 = 21333;
    goto LABEL_16;
  }

  v52 = [v50 stocksLanguageCode];
  if (v52)
  {
    v53 = v52;
    v48 = sub_1DACB9324();
    v104 = v54;
  }

  else
  {
    v104 = 0xE500000000000000;
  }

  v60 = [v51 stocksCountryCode];
  if (!v60)
  {
    goto LABEL_15;
  }

  v112 = v48;
  v61 = v60;
  v102 = sub_1DACB9324();
  v103 = v62;

LABEL_16:
  sub_1DAA4D678((v8 + 3), &v132);
  sub_1DAA4D678((v8 + 8), &v131);
  v63 = v110;
  v110 = *(v14 + 16);
  v110(v123, v63, v126);
  v64 = v111;
  v111 = *(v127 + 16);
  v111(v124, v64, v128);
  sub_1DABF4804(0, v113, v114, v115, type metadata accessor for SDSBaseOperation);
  v115 = v65;
  v66 = objc_allocWithZone(v65);
  v67 = MEMORY[0x1E69E7D40];
  v68 = (v66 + *((*MEMORY[0x1E69E7D40] & *v66) + qword_1EE13E480 + 16));
  *v68 = 0;
  v68[1] = 0;
  *(v66 + *((*v67 & *v66) + qword_1EE13E480 + 88)) = MEMORY[0x1E69E7CC0];
  *(v66 + *((*v67 & *v66) + qword_1EE13E480 + 24)) = v117;
  sub_1DACB7A24();
  v106 = v49;
  v69 = v107;
  v70 = v122;
  sub_1DACB7A24();

  v71 = v118;
  v117 = *(v118 + 8);
  v72 = v70;
  v73 = v120;
  v117(v72, v120);
  (*(v71 + 32))(v66 + *((*v67 & *v66) + qword_1EE13E480 + 32), v69, v73);
  *(v66 + *((*v67 & *v66) + qword_1EE13E480 + 40)) = v116;
  v74 = (v66 + *((*v67 & *v66) + qword_1EE13E480 + 48));
  v75 = v104;
  *v74 = v112;
  v74[1] = v75;
  v76 = v103;
  v74[2] = v102;
  v74[3] = v76;
  sub_1DAA4D678(&v132, v66 + *((*v67 & *v66) + qword_1EE13E480 + 56));
  sub_1DAA4D678(&v131, v66 + *((*v67 & *v66) + qword_1EE13E480 + 64));
  v77 = v123;
  v78 = v126;
  v110(v66 + *((*v67 & *v66) + qword_1EE13E480 + 72), v123, v126);
  v79 = *v67 & *v66;
  v80 = v124;
  v81 = v128;
  v111(v66 + *(v79 + qword_1EE13E480 + 80), v124, v128);
  v129.receiver = v66;
  v129.super_class = v115;
  v82 = objc_msgSendSuper2(&v129, sel_init);
  sub_1DAB326A8(v105, v109, v108, v106, v121);
  (*(v127 + 8))(v80, v81);
  (*(v119 + 8))(v77, v78);
  __swift_destroy_boxed_opaque_existential_1(&v131);
  __swift_destroy_boxed_opaque_existential_1(&v132);
  v117(v125, v73);
  return v82;
}

uint64_t sub_1DABF429C(uint64_t a1)
{
  sub_1DABF4804(0, &qword_1EE11DEF0, sub_1DABF2D70, &type metadata for SDSCurrencyResponse, type metadata accessor for SDSBaseOperationResponse);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DABF433C(uint64_t a1, uint64_t a2)
{
  sub_1DABF470C(0, &qword_1EE123FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DABF43C4(uint64_t a1)
{
  if (!qword_1EE11D120)
  {
    sub_1DABF4804(255, &qword_1EE11DEF0, sub_1DABF2D70, &type metadata for SDSCurrencyResponse, type metadata accessor for SDSBaseOperationResponse);
    sub_1DABDBA24();
    v1 = sub_1DACB9774();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11D120);
    }
  }
}

uint64_t sub_1DABF446C(uint64_t a1)
{
  sub_1DABF43C4(0);

  return sub_1DABF2F20(a1);
}

void sub_1DABF44DC(uint64_t a1)
{
  if (!qword_1EE11D460)
  {
    sub_1DABF4804(255, &qword_1EE11DEF0, sub_1DABF2D70, &type metadata for SDSCurrencyResponse, type metadata accessor for SDSBaseOperationResponse);
    v1 = sub_1DACB89E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11D460);
    }
  }
}

uint64_t sub_1DABF456C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DABF45D4(uint64_t a1, uint64_t a2)
{
  sub_1DABF4804(0, &qword_1EE11DEF0, sub_1DABF2D70, &type metadata for SDSCurrencyResponse, type metadata accessor for SDSBaseOperationResponse);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DABF4670(uint64_t a1, uint64_t a2)
{
  sub_1DABF4804(0, &qword_1EE11DEF0, sub_1DABF2D70, &type metadata for SDSCurrencyResponse, type metadata accessor for SDSBaseOperationResponse);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DABF470C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1DABF475C()
{
  result = qword_1ECBE8CF8;
  if (!qword_1ECBE8CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8CF8);
  }

  return result;
}

unint64_t sub_1DABF47B0()
{
  result = qword_1ECBE8D08;
  if (!qword_1ECBE8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8D08);
  }

  return result;
}

void sub_1DABF4804(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void *sub_1DABF487C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125908, &protocol descriptor for AppConfigurationServiceType, 1);
  result = sub_1DACB8254();
  if (v7[3])
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, qword_1EE125958, &protocol descriptor for AppConfigurationStoreType, 1);
    result = sub_1DACB8254();
    if (v6[3])
    {
      v5 = type metadata accessor for AppConfigurationManager();
      swift_allocObject();
      result = sub_1DAC17598(v7, v6);
      a2[3] = v5;
      a2[4] = &off_1F568DBB8;
      *a2 = result;
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

uint64_t sub_1DABF498C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AppConfigurationStore();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_1F568DBF8;
  *a1 = result;
  return result;
}

void *sub_1DABF49D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1DACB8234();
  if (LOBYTE(v6[0]) == 2)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((v6[0] & 1) == 0)
  {
    sub_1DAA44440(0, &qword_1EE125FE8, &protocol descriptor for ChartServiceType, 1);
    result = sub_1DACB8254();
    if (v7)
    {
      type metadata accessor for ChartManager();
      swift_allocObject();
      result = sub_1DAC652CC(v6);
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  sub_1DAA44440(0, &qword_1EE125FE8, &protocol descriptor for ChartServiceType, 1);
  result = sub_1DACB8254();
  if (!v7)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
  result = sub_1DACB8224();
  if (result)
  {
    v5 = result;
    type metadata accessor for ChartManager();
    swift_allocObject();
    result = sub_1DAC64D14(v6, v5);
LABEL_8:
    *a2 = result;
    a2[1] = &off_1F5690D78;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

void *sub_1DABF4BD0@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125F10, &protocol descriptor for CurrencyServiceType, 1);
  result = sub_1DACB8254();
  if (v22)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, qword_1EE125AF8, &protocol descriptor for CurrencyManagerCacheType, 1);
    result = sub_1DACB8254();
    if (v20)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x1EEE9AC00](v5);
      v7 = (&v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v18[3] = &type metadata for CurrencyManagerCache;
      v18[4] = &off_1F5692598;
      v18[0] = v9;
      v10 = type metadata accessor for CurrencyManager(0);
      v11 = swift_allocObject();
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, &type metadata for CurrencyManagerCache);
      MEMORY[0x1EEE9AC00](v12);
      v14 = (&v18[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v15 + 16))(v14);
      v16 = sub_1DABF7128(&v21, *v14, sub_1DABF4E6C, 0, v11);
      __swift_destroy_boxed_opaque_existential_1(v18);
      result = __swift_destroy_boxed_opaque_existential_1(v19);
      a2[3] = v10;
      a2[4] = &off_1F5687248;
      *a2 = v16;
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

uint64_t sub_1DABF4E70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1DAA46854(0, &qword_1EE11FD80, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_1DACB7AB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA46854(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], v4);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACB8234();
  result = (*(v9 + 48))(v14, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 16))(v11, v14, v8);
    v16 = sub_1DACB8C94();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    sub_1DABF73EC(0);
    swift_allocObject();
    v17 = sub_1DACB8534();
    result = (*(v9 + 8))(v14, v8);
    a2[3] = &type metadata for CurrencyManagerCache;
    a2[4] = &off_1F5692598;
    *a2 = v17;
  }

  return result;
}

void *sub_1DABF514C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125E40, &protocol descriptor for WatchlistManagerType, 1);
  result = sub_1DACB8254();
  v4 = v9;
  if (v9)
  {
    v5 = v10;
    v6 = __swift_project_boxed_opaque_existential_1(v8, v9);
    a2[3] = v4;
    a2[4] = *(v5 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABF5228@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
  v3 = sub_1DACB8224();
  if (v3)
  {
    v4 = v3;
    v5 = type metadata accessor for HeadlineViewingHistory();
    swift_allocObject();
    result = sub_1DAAA1C64(v4);
    a2[3] = v5;
    a2[4] = &off_1F568D570;
    *a2 = result;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void *sub_1DABF5330@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, qword_1EE1261E0, &protocol descriptor for UserInfoType, 1);
  result = sub_1DACB8254();
  if (v5[3])
  {
    type metadata accessor for UserLaunchHistory(0);
    swift_allocObject();
    v4 = sub_1DAA5C338(v5);
    result = sub_1DAA4F53C(&qword_1EE11E9A8, type metadata accessor for UserLaunchHistory, &unk_1DACC2C00);
    *a2 = v4;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABF5408@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NetworkMonitor();
  v3 = swift_allocObject();
  sub_1DAA8C1B0(0);
  swift_allocObject();
  result = sub_1DACB8F04();
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_1F5693550;
  *a1 = v3;
  return result;
}

void *sub_1DABF547C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
  result = sub_1DACB8224();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, &qword_1EE125780, &protocol descriptor for AttributionSourceAssetServiceType, 1);
    result = sub_1DACB8254();
    if (v21)
    {
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      MEMORY[0x1EEE9AC00](v6);
      v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v11 = type metadata accessor for AttributionSourceAssetService();
      v19[3] = v11;
      v19[4] = &off_1F5682040;
      v19[0] = v10;
      v12 = type metadata accessor for AttributionSourceAssetManager();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
      MEMORY[0x1EEE9AC00](v14);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = sub_1DAA6FA5C(v5, *v16, v13);
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v20);
      a2[3] = v12;
      a2[4] = &off_1F56939F8;
      *a2 = v18;
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

void *sub_1DABF5730@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125BD0, &protocol descriptor for FeatureAvailabilityType, 1);
  result = sub_1DACB8254();
  if (!v11)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1DAA4D460(&v10, v12);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  if ((*(v6 + 8))(v5, v6))
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = type metadata accessor for AppleAttributionProvider();
    result = sub_1DACB8244();
    if (result)
    {
      v8 = &off_1F5693658;
LABEL_10:
      a2[3] = v7;
      a2[4] = v8;
      *a2 = result;
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }

    goto LABEL_12;
  }

  sub_1DAA4D678(a1, &v10);
  v9 = sub_1DAA6CBB4(&v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v9)
  {
    v7 = type metadata accessor for SDSAttributionProvider();
    result = sub_1DACB8224();
    if (result)
    {
      v8 = &off_1F5685C28;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v7 = type metadata accessor for YahooAttributionProvider();
  result = sub_1DACB8244();
  if (result)
  {
    v8 = &off_1F568EB98;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1DABF58E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DAA469E8(0, &qword_1EE123B70, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DACC1D40;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = type metadata accessor for SDSAttributionProvider();
  result = sub_1DACB8224();
  if (result)
  {
    *(v4 + 56) = v5;
    *(v4 + 64) = &off_1F5685C18;
    *(v4 + 32) = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    result = sub_1DACB8224();
    if (result)
    {
      *(v4 + 96) = v5;
      *(v4 + 104) = &off_1F5685C18;
      *(v4 + 72) = result;
      *a2 = v4;
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

uint64_t sub_1DABF59FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UnnecessaryWordRemover();
  swift_allocObject();
  result = sub_1DAA67828();
  a1[3] = v2;
  a1[4] = &off_1F568FF90;
  *a1 = result;
  return result;
}

void *sub_1DABF5A54(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125BB8, &protocol descriptor for SDSAuthTokenManagerType, 1);
  result = sub_1DACB8254();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA46854(0, &qword_1EE125578, MEMORY[0x1E6968FB0], MEMORY[0x1E69D6B80]);
    result = sub_1DACB8224();
    if (result)
    {
      v3 = result;
      type metadata accessor for SDSAuthTokenRefresher();
      v4 = swift_allocObject();
      sub_1DAA4D460(&v5, v4 + 16);
      *(v4 + 56) = v3;
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DABF5C14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v19[1] = a4;
  v20 = sub_1DACB81D4();
  MEMORY[0x1EEE9AC00](v20);
  v21 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB8EC4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DAA46854(0, &qword_1EE125550, MEMORY[0x1E69D62A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v19 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1DACB8234();
  v14 = v25;
  if (v25)
  {
    v19[0] = v24;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DACB8254();
    result = (*(v8 + 48))(v12, 1, v7);
    if (result != 1)
    {
      (*(v8 + 16))(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v7);
      v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = v19[0];
      *(v16 + 24) = v14;
      (*(v8 + 32))(v16 + v15, v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      v23 = MEMORY[0x1E69E7CC0];
      sub_1DAA4F53C(&qword_1EE1255D0, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
      v17 = MEMORY[0x1E69D6420];
      sub_1DAA46854(0, &qword_1EE125540, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
      sub_1DAA585BC(&qword_1EE125530, &qword_1EE125540, v17);
      sub_1DACB71E4();
      sub_1DACB9BB4();
      sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
      swift_allocObject();
      v18 = sub_1DACB8914();

      (*(v8 + 8))(v12, v7);
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DABF5FFC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1DACB81D4();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DAA4F53C(&qword_1EE1255D0, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  v3 = MEMORY[0x1E69D6420];
  sub_1DAA46854(0, &qword_1EE125540, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1DAA585BC(&qword_1EE125530, &qword_1EE125540, v3);
  sub_1DACB9BB4();
  sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
  swift_allocObject();
  result = sub_1DACB8914();
  *a1 = result;
  return result;
}

uint64_t sub_1DABF61B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE124058 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB8EC4();
  v3 = __swift_project_value_buffer(v2, qword_1EE11D2A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_1DABF625C(void *a1)
{
  v2 = sub_1DACB86E4();
  MEMORY[0x1EEE9AC00](v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE1257A0, &protocol descriptor for WatchlistDeprecationServiceType, 1);
  result = sub_1DACB8254();
  if (v7)
  {
    type metadata accessor for WatchlistDeprecationMonitor();
    v4 = swift_allocObject();
    sub_1DAA4F53C(&qword_1EE1255A8, MEMORY[0x1E69D67A0], MEMORY[0x1E69D67A8]);
    v5 = MEMORY[0x1E69D67A0];
    sub_1DAA46854(0, &qword_1EE125510, MEMORY[0x1E69D67A0], MEMORY[0x1E69E62F8]);
    sub_1DAA585BC(&qword_1EE125508, &qword_1EE125510, v5);
    sub_1DACB9BB4();
    sub_1DAA5CEEC();
    swift_allocObject();
    *(v4 + 56) = sub_1DACB8354();
    sub_1DAA4D460(&v6, v4 + 16);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1DABF6440(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for WatchlistDeprecationMonitor();
  result = sub_1DACB8244();
  if (result)
  {
    sub_1DAA4F53C(qword_1EE11DC68, type metadata accessor for WatchlistDeprecationMonitor, &unk_1DACD3A0C);
    sub_1DACB8784();

    __swift_destroy_boxed_opaque_existential_1(v5);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1DAA44440(0, &unk_1EE125790, &protocol descriptor for EarningsCalendarEventManagerType, 0);
    result = sub_1DACB8254();
    if (v4)
    {
      sub_1DACB8784();
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DABF65A8(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DAA44440(0, &unk_1EE125CD0, &protocol descriptor for UserLaunchHistoryType, 0);
  result = sub_1DACB8254();
  if (v4)
  {
    sub_1DACB8894();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1DABF6670(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DAA44440(0, &qword_1EE125910, &protocol descriptor for AppConfigurationManagerType, 1);
  result = sub_1DACB8254();
  if (!ObjectType)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DAA44440(0, &qword_1EE125E38, &protocol descriptor for WatchlistServiceType, 1);
  result = sub_1DACB8254();
  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DAA63A44(0);
  result = sub_1DACB8244();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  v5 = type metadata accessor for KVSCleanupStartupTask(0);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_group;
  if (qword_1EE11D4A0 != -1)
  {
    swift_once();
  }

  v8 = sub_1DACB8574();
  v9 = __swift_project_value_buffer(v8, qword_1EE11D4A8);
  (*(*(v8 - 8) + 16))(v6 + v7, v9, v8);
  sub_1DAA4D460(&v14, v6 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_appConfigurationManager);
  sub_1DAA4D460(&v12, v6 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_watchlistService);
  *(v6 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_lazyDatabase) = v4;
  ObjectType = v5;
  v16 = sub_1DAA4F53C(&qword_1EE11E540, type metadata accessor for KVSCleanupStartupTask, &unk_1DACD29BC);
  *&v14 = v6;
  sub_1DACB86C4();
  __swift_destroy_boxed_opaque_existential_1(&v14);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DAA44440(0, &unk_1EE125790, &protocol descriptor for EarningsCalendarEventManagerType, 0);
  result = sub_1DACB8254();
  v10 = v12;
  if (v12)
  {
    v11 = *(&v12 + 1);
    ObjectType = swift_getObjectType();
    v16 = *(v11 + 16);
    *&v14 = v10;
    sub_1DACB86C4();
    return __swift_destroy_boxed_opaque_existential_1(&v14);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1DABF6940(void *a1, int a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for YahooAttributionProvider();
  result = sub_1DACB8244();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v6 = type metadata accessor for SDSMetadataCache();
    result = sub_1DACB8244();
    if (result)
    {
      v14[3] = v6;
      v14[4] = &off_1F568E330;
      v14[0] = result;
      type metadata accessor for SDSAttributionProvider();
      v7 = swift_allocObject();
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v14, v6);
      MEMORY[0x1EEE9AC00](v8);
      v10 = (&v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v11 + 16))(v10);
      v12 = sub_1DAA6EF68(a2, v5, *v10, v7);

      __swift_destroy_boxed_opaque_existential_1(v14);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DABF6AD8(void *a1)
{
  v2 = sub_1DACB81D4();
  MEMORY[0x1EEE9AC00](v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
  result = sub_1DACB8224();
  if (result)
  {
    type metadata accessor for SDSMetadataCache();
    v4 = swift_allocObject();
    v5 = MEMORY[0x1E69D6420];
    sub_1DAA46854(0, &qword_1EE1252D0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
    *(swift_allocObject() + 16) = xmmword_1DACC1D20;
    sub_1DACB81C4();
    sub_1DAA4F53C(&qword_1EE1255D0, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
    sub_1DAA46854(0, &qword_1EE125540, v5, MEMORY[0x1E69E62F8]);
    sub_1DAA585BC(&qword_1EE125530, &qword_1EE125540, v5);
    sub_1DACB9BB4();
    sub_1DAA46854(0, &qword_1EE1240D8, sub_1DAA6ED90, MEMORY[0x1E69D6A80]);
    swift_allocObject();
    *(v4 + 16) = sub_1DACB8914();
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABF6DA4()
{
  v20 = type metadata accessor for RawAttributionSourceLogo;
  v0 = MEMORY[0x1E69E6720];
  sub_1DAA46854(0, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  v4 = MEMORY[0x1E6968FB0];
  sub_1DAA46854(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], v0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for RawAttributionSource(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppleAttributionProvider();
  v12 = swift_allocObject();
  sub_1DACB7A94();
  v13 = type metadata accessor for RawAttributionSourceLogo(0);
  v14 = *(*(v13 - 8) + 56);
  v14(v3, 1, 1, v13);
  v15 = *(v9 + 28);
  v16 = sub_1DACB7AB4();
  (*(*(v16 - 8) + 56))(&v11[v15], 1, 1, v16);
  v17 = *(v9 + 32);
  v14(&v11[v17], 1, 1, v13);
  *v11 = 0x654EAF80E2BFA3EFLL;
  *(v11 + 1) = 0xAA00000000007377;
  sub_1DAA6EB5C(v7, &v11[v15], &qword_1EE1263D0, v4);
  sub_1DAA6EB5C(v3, &v11[v17], &qword_1EE124698, v20);
  sub_1DAA46854(0, &qword_1EE1240F0, type metadata accessor for RawAttributionSource, MEMORY[0x1E69D6550]);
  swift_allocObject();
  *(v12 + 16) = sub_1DACB8424();
  return v12;
}

void *sub_1DABF7090(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910, &protocol descriptor for AppConfigurationManagerType, 1);
  result = sub_1DACB8254();
  if (v2[3])
  {
    type metadata accessor for YahooAttributionProvider();
    swift_allocObject();
    return sub_1DAA6D598(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1DABF7128(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = sub_1DACB86E4();
  MEMORY[0x1EEE9AC00](v10);
  v16 = &type metadata for CurrencyManagerCache;
  v17 = &off_1F5692598;
  *&v15 = a2;
  sub_1DAA4F53C(&qword_1EE1255A8, MEMORY[0x1E69D67A0], MEMORY[0x1E69D67A8]);
  v11 = MEMORY[0x1E69D67A0];
  sub_1DAA46854(0, &qword_1EE125510, MEMORY[0x1E69D67A0], MEMORY[0x1E69E62F8]);
  sub_1DAA585BC(&qword_1EE125508, &qword_1EE125510, v11);
  sub_1DACB9BB4();
  sub_1DAA6FEDC(0, &qword_1EE11D4C8, sub_1DABF74B8, sub_1DABF7514, sub_1DABF7580);
  swift_allocObject();
  *(a5 + 12) = sub_1DACB8354();
  v12 = OBJC_IVAR____TtC10StocksCore15CurrencyManager_inMemory;
  v13 = type metadata accessor for CurrencyResponse(0);
  (*(*(v13 - 8) + 56))(&a5[v12], 1, 1, v13);
  sub_1DAA4D460(a1, (a5 + 16));
  sub_1DAA4D460(&v15, (a5 + 56));
  *(a5 + 13) = a3;
  *(a5 + 14) = a4;
  return a5;
}

uint64_t sub_1DABF7370@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_1DACB8EC4() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_1DAC637D4(v4, v5, v6, a1);
}

void sub_1DABF73EC(uint64_t a1)
{
  if (!qword_1EE11D4C0)
  {
    type metadata accessor for CurrencyResponse(255);
    sub_1DAA4F53C(&qword_1EE11EBD8, type metadata accessor for CurrencyResponse, &unk_1DACC33E0);
    sub_1DAA4F53C(&qword_1EE11EBE0, type metadata accessor for CurrencyResponse, &unk_1DACC3408);
    v1 = sub_1DACB8554();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11D4C0);
    }
  }
}

void sub_1DABF74B8(uint64_t a1)
{
  if (!qword_1EE11D108)
  {
    sub_1DAB69930();
    v1 = sub_1DACB9834();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11D108);
    }
  }
}

void sub_1DABF7514(uint64_t a1)
{
  if (!qword_1EE11D1C8)
  {
    type metadata accessor for CurrencyResponse(255);
    sub_1DAB69930();
    v1 = sub_1DACB91A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11D1C8);
    }
  }
}

uint64_t sub_1DABF75BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61756E616DLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = -96;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DACEDF30 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DACEDF50 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DACEDF70 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 32;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DACEDF90 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 33;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DACEDFB0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 64;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACEDFD0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 65;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACEDFF0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 96;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DACEE010 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 97;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DACEE030 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0x80;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DACEE050 == a2)
  {

    v8 = -127;
  }

  else
  {
    v9 = sub_1DACBA174();

    if (v9)
    {
      v8 = -127;
    }

    else
    {
      v8 = -2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DABF7960()
{
  v1 = *v0 >> 5;
  v2 = 4;
  v3 = 5;
  if (v1 != 4)
  {
    v3 = 0;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 1;
  v5 = 2;
  if (v1 != 1)
  {
    v5 = 3;
  }

  if (v1)
  {
    v4 = v5;
  }

  if (*v0 >> 5 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DABF79D8()
{
  v1 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = *v0 >> 5;
  if (v3 <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        sub_1DACB9284();
        if (qword_1EE123DD8 == -1)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_1DACB9284();
        if (qword_1EE123DD8 == -1)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_1DACB9284();
      if (qword_1EE123DD8 == -1)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_18;
  }

  if (v3 == 3)
  {
    sub_1DACB9284();
    if (qword_1EE123DD8 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v3 == 4)
  {
    sub_1DACB9284();
    if (qword_1EE123DD8 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  sub_1DACB9284();
  if (qword_1EE123DD8 != -1)
  {
LABEL_18:
    swift_once();
  }

LABEL_17:
  v4 = qword_1EE13E470;
  sub_1DACB7DF4();
  return sub_1DACB9374();
}

uint64_t sub_1DABF7E18(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1 >> 5;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      if ((v2 & 0xE0) == 0x60)
      {
        return 1;
      }
    }

    else if (v3 == 4)
    {
      if ((v2 & 0xE0) == 0x80)
      {
        return 1;
      }
    }

    else if (v2 == 160)
    {
      return 1;
    }
  }

  else if (v3)
  {
    v4 = v2 & 0xE0;
    if (v3 == 1)
    {
      if (v4 == 32)
      {
        return 1;
      }
    }

    else if (v4 == 64)
    {
      return 1;
    }
  }

  else if (v2 < 0x20)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1DABF7EBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v4 = (a2 == 1) & ~a3;
  v5 = v4 | 0x40;
  v6 = v4 | 0x60;
  v7 = v4 | 0x80;
  if (result != 5)
  {
    v7 = -2;
  }

  if (result != 4)
  {
    v6 = v7;
  }

  if (result != 3)
  {
    v5 = v6;
  }

  if (result == 2)
  {
    v8 = v4 | 0x20;
  }

  else
  {
    v8 = -2;
  }

  if (result != 1)
  {
    v4 = v8;
  }

  if (!result)
  {
    v4 = -96;
  }

  if (result > 2)
  {
    v4 = v5;
  }

  *a4 = v4;
  return result;
}

uint64_t sub_1DABF7FCC()
{
  v1 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1DACB92E4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14[-v7];
  v9 = *v0;
  v10 = (v3 + 16);
  if (v9)
  {
    sub_1DACB9284();
    (*v10)(v6, v8, v2);
    if (qword_1EE123DD8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_1DACB9284();
  (*v10)(v6, v8, v2);
  if (qword_1EE123DD8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v11 = qword_1EE13E470;
  sub_1DACB7DF4();
  v12 = sub_1DACB9384();
  (*(v3 + 8))(v8, v2);
  return v12;
}

uint64_t sub_1DABF825C@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void *sub_1DABF8280@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1DABF83B0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  *a2 = a1;
}

uint64_t sub_1DABF8454(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  sub_1DACB71E4();
  swift_beginAccess();
  *a5 = v6;
}

void sub_1DABF84A8(_BYTE *a1@<X8>)
{
  v2 = *v1;
  v3 = v2 >> 5;
  v4 = v2 & 1;
  if (v3 == 4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v3 == 3)
  {
    v5 = v4;
  }

  if (v3 > 2)
  {
    v4 = v5;
  }

  *a1 = v4;
}

uint64_t sub_1DABF84E4()
{
  v1 = *v0;
  v2 = 0x6C61756E616DLL;
  v3 = 0x614374656B72616DLL;
  v4 = 0x6C6F626D7973;
  if (v1 != 4)
  {
    v4 = 1701667182;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6168436563697270;
  if (v1 != 1)
  {
    v5 = 0x43746E6563726570;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DABF85A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DABFAC48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DABF85D0(uint64_t a1)
{
  v2 = sub_1DABFA198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABF860C(uint64_t a1)
{
  v2 = sub_1DABFA198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABF8654@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1DABF8684(uint64_t a1)
{
  v2 = sub_1DABFA144();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABF86C0(uint64_t a1)
{
  v2 = sub_1DABFA144();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABF86FC(uint64_t a1)
{
  v2 = sub_1DABFA048();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABF8738(uint64_t a1)
{
  v2 = sub_1DABFA048();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABF8774(uint64_t a1)
{
  v2 = sub_1DABF9FA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABF87B0(uint64_t a1)
{
  v2 = sub_1DABF9FA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABF87EC(uint64_t a1)
{
  v2 = sub_1DABFA09C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABF8828(uint64_t a1)
{
  v2 = sub_1DABFA09C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABF8864(uint64_t a1)
{
  v2 = sub_1DABFA0F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABF88A0(uint64_t a1)
{
  v2 = sub_1DABFA0F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABF88DC(uint64_t a1)
{
  v2 = sub_1DABF9FF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABF8918(uint64_t a1)
{
  v2 = sub_1DABF9FF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABF8954(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1DABFA240(0, &qword_1ECBE8D18, sub_1DABF9FA0, &type metadata for WatchlistSortState.NameCodingKeys, MEMORY[0x1E69E6F58]);
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v31 - v5;
  sub_1DABFA240(0, &qword_1ECBE8D28, sub_1DABF9FF4, &type metadata for WatchlistSortState.SymbolCodingKeys, v3);
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v31 - v7;
  sub_1DABFA240(0, &qword_1ECBE8D38, sub_1DABFA048, &type metadata for WatchlistSortState.MarketCapCodingKeys, v3);
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v31 - v9;
  sub_1DABFA240(0, &qword_1ECBE8D48, sub_1DABFA09C, &type metadata for WatchlistSortState.PercentChangeCodingKeys, v3);
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v31 - v11;
  sub_1DABFA240(0, &qword_1ECBE8D58, sub_1DABFA0F0, &type metadata for WatchlistSortState.PriceChangeCodingKeys, v3);
  v35 = *(v12 - 8);
  v36 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v31 - v13;
  sub_1DABFA240(0, &qword_1ECBE8D68, sub_1DABFA144, &type metadata for WatchlistSortState.ManualCodingKeys, v3);
  v32 = *(v14 - 8);
  v33 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  sub_1DABFA240(0, &qword_1ECBE8D78, sub_1DABFA198, &type metadata for WatchlistSortState.CodingKeys, v3);
  v18 = v17;
  v49 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - v19;
  v21 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABFA198();
  sub_1DACBA304();
  v22 = v21 >> 5;
  if (v21 >> 5 <= 2)
  {
    if (v22)
    {
      v23 = v18;
      if (v22 == 1)
      {
        v54 = 2;
        sub_1DABFA09C();
        v24 = v37;
        sub_1DACBA014();
        v53 = v21 & 1;
        sub_1DABFA1EC();
        v25 = v39;
        sub_1DACBA0E4();
        v26 = v38;
      }

      else
      {
        v56 = 3;
        sub_1DABFA048();
        v24 = v40;
        sub_1DACBA014();
        v55 = v21 & 1;
        sub_1DABFA1EC();
        v25 = v42;
        sub_1DACBA0E4();
        v26 = v41;
      }

      goto LABEL_12;
    }

    v52[0] = 1;
    sub_1DABFA0F0();
    v27 = v34;
    sub_1DACBA014();
    v51 = v21 & 1;
    sub_1DABFA1EC();
    v28 = v36;
    sub_1DACBA0E4();
    v29 = v35;
LABEL_10:
    (*(v29 + 8))(v27, v28);
    return (*(v49 + 8))(v20, v18);
  }

  if (v22 == 3)
  {
    v58 = 4;
    sub_1DABF9FF4();
    v27 = v43;
    sub_1DACBA014();
    v57 = v21 & 1;
    sub_1DABFA1EC();
    v28 = v45;
    sub_1DACBA0E4();
    v29 = v44;
    goto LABEL_10;
  }

  v23 = v18;
  if (v22 != 4)
  {
    v50 = 0;
    sub_1DABFA144();
    sub_1DACBA014();
    (*(v32 + 8))(v16, v33);
    return (*(v49 + 8))(v20, v18);
  }

  v60 = 5;
  sub_1DABF9FA0();
  v24 = v46;
  sub_1DACBA014();
  v59 = v21 & 1;
  sub_1DABFA1EC();
  v25 = v48;
  sub_1DACBA0E4();
  v26 = v47;
LABEL_12:
  (*(v26 + 8))(v24, v25);
  return (*(v49 + 8))(v20, v23);
}

uint64_t sub_1DABF915C()
{
  v1 = *v0;
  v2 = v1 >> 5;
  if (v1 >> 5 > 2)
  {
    if (v2 == 3)
    {
      v4 = 4;
    }

    else
    {
      if (v2 != 4)
      {
        v5 = 0;
        return MEMORY[0x1E1277D70](v5);
      }

      v4 = 5;
    }
  }

  else
  {
    v3 = 2;
    if (v2 != 1)
    {
      v3 = 3;
    }

    if (v2)
    {
      v4 = v3;
    }

    else
    {
      v4 = 1;
    }
  }

  MEMORY[0x1E1277D70](v4);
  v5 = v1 & 1;
  return MEMORY[0x1E1277D70](v5);
}

uint64_t sub_1DABF91E0()
{
  v1 = *v0;
  sub_1DACBA284();
  v2 = v1 >> 5;
  if (v1 >> 5 <= 2)
  {
    v3 = 2;
    if (v2 != 1)
    {
      v3 = 3;
    }

    if (v2)
    {
      v4 = v3;
    }

    else
    {
      v4 = 1;
    }

    goto LABEL_11;
  }

  if (v2 == 3)
  {
    v4 = 4;
    goto LABEL_11;
  }

  v5 = 0;
  if (v2 == 4)
  {
    v4 = 5;
LABEL_11:
    MEMORY[0x1E1277D70](v4);
    v5 = v1 & 1;
  }

  MEMORY[0x1E1277D70](v5);
  return sub_1DACBA2C4();
}

uint64_t sub_1DABF927C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v65 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1DABFA240(0, &qword_1ECBE8D90, sub_1DABF9FA0, &type metadata for WatchlistSortState.NameCodingKeys, MEMORY[0x1E69E6F48]);
  v56 = v4;
  v59 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v47 - v5;
  sub_1DABFA240(0, &qword_1ECBE8D98, sub_1DABF9FF4, &type metadata for WatchlistSortState.SymbolCodingKeys, v3);
  v7 = *(v6 - 8);
  v57 = v6;
  v58 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v47 - v8;
  sub_1DABFA240(0, &qword_1ECBE8DA0, sub_1DABFA048, &type metadata for WatchlistSortState.MarketCapCodingKeys, v3);
  v52 = v9;
  v55 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v47 - v10;
  sub_1DABFA240(0, &qword_1ECBE8DA8, sub_1DABFA09C, &type metadata for WatchlistSortState.PercentChangeCodingKeys, v3);
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v47 - v12;
  sub_1DABFA240(0, &qword_1ECBE8DB0, sub_1DABFA0F0, &type metadata for WatchlistSortState.PriceChangeCodingKeys, v3);
  v51 = v13;
  v50 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v47 - v14;
  sub_1DABFA240(0, &qword_1ECBE8DB8, sub_1DABFA144, &type metadata for WatchlistSortState.ManualCodingKeys, v3);
  v16 = v15;
  v49 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v47 - v17;
  sub_1DABFA240(0, &qword_1ECBE8DC0, sub_1DABFA198, &type metadata for WatchlistSortState.CodingKeys, v3);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v47 - v22;
  v24 = a1;
  v25 = a1[3];
  v67 = v24;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  sub_1DABFA198();
  v26 = v66;
  sub_1DACBA2F4();
  if (!v26)
  {
    v27 = v18;
    v48 = v16;
    v28 = v62;
    v29 = v63;
    v66 = v21;
    v31 = v64;
    v30 = v65;
    v32 = sub_1DACB9FF4();
    v33 = (2 * *(v32 + 16)) | 1;
    v68 = v32;
    v69 = v32 + 32;
    v70 = 0;
    v71 = v33;
    v34 = sub_1DAB4A848();
    if (v34 == 6 || v70 != v71 >> 1)
    {
      v37 = sub_1DACB9D14();
      swift_allocError();
      v39 = v38;
      sub_1DAB4B3BC(0);
      *v39 = &type metadata for WatchlistSortState;
      sub_1DACB9F24();
      sub_1DACB9CF4();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
      swift_willThrow();
      (*(v66 + 8))(v23, v20);
      swift_unknownObjectRelease();
    }

    else if (v34 > 2u)
    {
      if (v34 == 3)
      {
        v72 = 3;
        sub_1DABFA048();
        sub_1DACB9F14();
        sub_1DABFA2A8();
        v43 = v52;
        sub_1DACB9FE4();
        (*(v55 + 8))(v29, v43);
        (*(v66 + 8))(v23, v20);
        swift_unknownObjectRelease();
        *v30 = v72 | 0x40;
      }

      else if (v34 == 4)
      {
        v72 = 4;
        sub_1DABF9FF4();
        v41 = v61;
        sub_1DACB9F14();
        sub_1DABFA2A8();
        v42 = v57;
        sub_1DACB9FE4();
        (*(v58 + 8))(v41, v42);
        (*(v66 + 8))(v23, v20);
        swift_unknownObjectRelease();
        *v30 = v72 | 0x60;
      }

      else
      {
        v72 = 5;
        sub_1DABF9FA0();
        sub_1DACB9F14();
        sub_1DABFA2A8();
        v46 = v56;
        sub_1DACB9FE4();
        (*(v59 + 8))(v31, v46);
        (*(v66 + 8))(v23, v20);
        swift_unknownObjectRelease();
        *v30 = v72 | 0x80;
      }
    }

    else if (v34)
    {
      if (v34 == 1)
      {
        v72 = 1;
        sub_1DABFA0F0();
        sub_1DACB9F14();
        v35 = v66;
        sub_1DABFA2A8();
        v36 = v51;
        sub_1DACB9FE4();
        (*(v50 + 8))(v28, v36);
        (*(v35 + 8))(v23, v20);
        swift_unknownObjectRelease();
        *v30 = v72;
      }

      else
      {
        v72 = 2;
        sub_1DABFA09C();
        v44 = v60;
        sub_1DACB9F14();
        sub_1DABFA2A8();
        v45 = v54;
        sub_1DACB9FE4();
        (*(v53 + 8))(v44, v45);
        (*(v66 + 8))(v23, v20);
        swift_unknownObjectRelease();
        *v30 = v72 | 0x20;
      }
    }

    else
    {
      v72 = 0;
      sub_1DABFA144();
      sub_1DACB9F14();
      (*(v49 + 8))(v27, v48);
      (*(v66 + 8))(v23, v20);
      swift_unknownObjectRelease();
      *v30 = -96;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v67);
}

uint64_t sub_1DABF9DB0(uint64_t a1)
{
  v2 = *v1;
  sub_1DACBA284();
  v3 = v2 >> 5;
  if (v2 >> 5 > 2)
  {
    if (v3 == 3)
    {
      v5 = 4;
    }

    else
    {
      if (v3 != 4)
      {
        v6 = 0;
        goto LABEL_12;
      }

      v5 = 5;
    }
  }

  else
  {
    v4 = 2;
    if (v3 != 1)
    {
      v4 = 3;
    }

    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1;
    }
  }

  MEMORY[0x1E1277D70](v5);
  v6 = v2 & 1;
LABEL_12:
  MEMORY[0x1E1277D70](v6);
  return sub_1DACBA2C4();
}

uint64_t sub_1DABF9E4C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1 >> 5;
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      if (v3 == 4)
      {
        if ((v2 & 0xE0) != 0x80)
        {
          return 0;
        }
      }

      else if (v2 != 160)
      {
        return 0;
      }

      return 1;
    }

    if ((v2 & 0xE0) == 0x60)
    {
      return 1;
    }
  }

  else
  {
    if (v3)
    {
      v4 = v2 & 0xE0;
      if (v3 == 1)
      {
        if (v4 != 32)
        {
          return 0;
        }
      }

      else if (v4 != 64)
      {
        return 0;
      }

      return 1;
    }

    if (v2 < 0x20)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1DABF9F14@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *a1;
  return sub_1DACB71E4();
}

uint64_t sub_1DABF9F70@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DABF7960();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

unint64_t sub_1DABF9FA0()
{
  result = qword_1ECBE8D20;
  if (!qword_1ECBE8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8D20);
  }

  return result;
}

unint64_t sub_1DABF9FF4()
{
  result = qword_1ECBE8D30;
  if (!qword_1ECBE8D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8D30);
  }

  return result;
}

unint64_t sub_1DABFA048()
{
  result = qword_1ECBE8D40;
  if (!qword_1ECBE8D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8D40);
  }

  return result;
}

unint64_t sub_1DABFA09C()
{
  result = qword_1ECBE8D50;
  if (!qword_1ECBE8D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8D50);
  }

  return result;
}

unint64_t sub_1DABFA0F0()
{
  result = qword_1ECBE8D60;
  if (!qword_1ECBE8D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8D60);
  }

  return result;
}

unint64_t sub_1DABFA144()
{
  result = qword_1ECBE8D70;
  if (!qword_1ECBE8D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8D70);
  }

  return result;
}

unint64_t sub_1DABFA198()
{
  result = qword_1ECBE8D80;
  if (!qword_1ECBE8D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8D80);
  }

  return result;
}

unint64_t sub_1DABFA1EC()
{
  result = qword_1ECBE8D88;
  if (!qword_1ECBE8D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8D88);
  }

  return result;
}

void sub_1DABFA240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1DABFA2A8()
{
  result = qword_1ECBE8DC8;
  if (!qword_1ECBE8DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8DC8);
  }

  return result;
}

unint64_t sub_1DABFA300()
{
  result = qword_1ECBE8DD0;
  if (!qword_1ECBE8DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8DD0);
  }

  return result;
}

unint64_t sub_1DABFA388()
{
  result = qword_1ECBE8DE8;
  if (!qword_1ECBE8DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8DE8);
  }

  return result;
}

uint64_t sub_1DABFA40C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA488A4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X3>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *a1;
  return sub_1DACB71E4();
}

_BYTE *sub_1DABFA4B8(_BYTE *result, unsigned int a2)
{
  if (a2 < 5)
  {
    *result = *result & 1 | (32 * a2);
  }

  else
  {
    *result = a2 & 1 ^ 0xA1;
  }

  return result;
}

unint64_t sub_1DABFA56C()
{
  result = qword_1ECBE8E00;
  if (!qword_1ECBE8E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E00);
  }

  return result;
}

unint64_t sub_1DABFA5C4()
{
  result = qword_1ECBE8E08;
  if (!qword_1ECBE8E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E08);
  }

  return result;
}

unint64_t sub_1DABFA61C()
{
  result = qword_1ECBE8E10;
  if (!qword_1ECBE8E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E10);
  }

  return result;
}

unint64_t sub_1DABFA674()
{
  result = qword_1ECBE8E18;
  if (!qword_1ECBE8E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E18);
  }

  return result;
}

unint64_t sub_1DABFA6CC()
{
  result = qword_1ECBE8E20;
  if (!qword_1ECBE8E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E20);
  }

  return result;
}

unint64_t sub_1DABFA724()
{
  result = qword_1ECBE8E28;
  if (!qword_1ECBE8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E28);
  }

  return result;
}

unint64_t sub_1DABFA77C()
{
  result = qword_1ECBE8E30;
  if (!qword_1ECBE8E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E30);
  }

  return result;
}

unint64_t sub_1DABFA7D4()
{
  result = qword_1ECBE8E38;
  if (!qword_1ECBE8E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E38);
  }

  return result;
}

unint64_t sub_1DABFA82C()
{
  result = qword_1ECBE8E40;
  if (!qword_1ECBE8E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E40);
  }

  return result;
}

unint64_t sub_1DABFA884()
{
  result = qword_1ECBE8E48;
  if (!qword_1ECBE8E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E48);
  }

  return result;
}

unint64_t sub_1DABFA8DC()
{
  result = qword_1ECBE8E50;
  if (!qword_1ECBE8E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E50);
  }

  return result;
}

unint64_t sub_1DABFA934()
{
  result = qword_1ECBE8E58;
  if (!qword_1ECBE8E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E58);
  }

  return result;
}

unint64_t sub_1DABFA98C()
{
  result = qword_1ECBE8E60;
  if (!qword_1ECBE8E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E60);
  }

  return result;
}

unint64_t sub_1DABFA9E4()
{
  result = qword_1ECBE8E68;
  if (!qword_1ECBE8E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E68);
  }

  return result;
}

unint64_t sub_1DABFAA3C()
{
  result = qword_1ECBE8E70;
  if (!qword_1ECBE8E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E70);
  }

  return result;
}

unint64_t sub_1DABFAA94()
{
  result = qword_1ECBE8E78;
  if (!qword_1ECBE8E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E78);
  }

  return result;
}

unint64_t sub_1DABFAAEC()
{
  result = qword_1ECBE8E80;
  if (!qword_1ECBE8E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E80);
  }

  return result;
}

unint64_t sub_1DABFAB44()
{
  result = qword_1ECBE8E88;
  if (!qword_1ECBE8E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E88);
  }

  return result;
}

unint64_t sub_1DABFAB9C()
{
  result = qword_1ECBE8E90;
  if (!qword_1ECBE8E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E90);
  }

  return result;
}

unint64_t sub_1DABFABF4()
{
  result = qword_1ECBE8E98;
  if (!qword_1ECBE8E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E98);
  }

  return result;
}

uint64_t sub_1DABFAC48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61756E616DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6168436563697270 && a2 == 0xEB0000000065676ELL || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x43746E6563726570 && a2 == 0xED000065676E6168 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614374656B72616DLL && a2 == 0xE900000000000070 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1DABFAE50()
{
  result = qword_1ECBE8EA0;
  if (!qword_1ECBE8EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8EA0);
  }

  return result;
}

uint64_t sub_1DABFAEC0(void *a1, __int128 *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_1DABFAF14(v6, a2, v2, v4, v5);
}

uint64_t sub_1DABFAF14(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[3] = a4;
  v15[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v13 = *a2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    v14 = v13;
    (*(v10 + 8))(v15, &v14, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1DABFAFF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 720))
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

uint64_t sub_1DABFB038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 712) = 0;
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
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 720) = 1;
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

    *(result + 720) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}