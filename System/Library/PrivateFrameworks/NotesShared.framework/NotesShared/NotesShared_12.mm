uint64_t sub_214F9D944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_214F9D9E0()
{
  v1 = sub_2150A5C10();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = *(v0 + 16);
    if (v6 < *(v7 + 16))
    {
      v8 = v7 + 16 * v6;
      v10 = *(v8 + 32);
      v9 = *(v8 + 40);
      v11 = v10 & 0xFFFFFFFFFFFFLL;
      if ((v9 & 0x2000000000000000) != 0)
      {
        v12 = HIBYTE(v9) & 0xF;
      }

      else
      {
        v12 = v11;
      }

      LOBYTE(v12) = v12 == 0;
      *(v0 + 24) = v6 + 1;
      return v12 & 1;
    }
  }

  swift_beginAccess();

  sub_2150A5BF0();
  v13 = sub_2150A5C20();
  swift_allocError();
  v15 = v14;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
  *v15 = MEMORY[0x277D84F70] + 8;
  (*(v2 + 16))(&v15[v16], v5, v1);
  (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84170], v13);
  swift_willThrow();
  result = (*(v2 + 8))(v5, v1);
  v12 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    *(v0 + 24) = v12;
    return v12 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F9DC04()
{
  v2 = v1;
  v3 = sub_2150A5C10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[3];
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v0[2];
    if (v8 < *(v9 + 16))
    {
      v10 = v9 + 16 * v8;
      v11 = *(v10 + 32);
      v12 = *(v10 + 40);
      v13 = *v0;
      v14 = v0[1];

      v3 = sub_214F9F18C(v13, v14, v11, v12);

      v15 = v8 + 1;
      if (!v2)
      {
        v0[3] = v15;
        return v3;
      }

LABEL_6:
      v0[3] = v15;
      return v3;
    }
  }

  swift_beginAccess();

  sub_2150A5BF0();
  v16 = sub_2150A5C20();
  swift_allocError();
  v18 = v17;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
  *v18 = MEMORY[0x277D837D0];
  (*(v4 + 16))(&v18[v19], v7, v3);
  (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
  swift_willThrow();
  result = (*(v4 + 8))(v7, v3);
  v15 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F9DE6C()
{
  v2 = v1;
  v3 = sub_2150A5C10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[3];
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v0[2];
    if (v8 < *(v9 + 16))
    {
      v10 = v9 + 16 * v8;
      v11 = *(v10 + 32);
      v12 = *(v10 + 40);
      v13 = *v0;
      v14 = v0[1];

      LOBYTE(v3) = sub_214F9F624(v13, v14, v11, v12);

      v15 = v8 + 1;
      if (!v2)
      {
        v0[3] = v15;
        return v3 & 1;
      }

LABEL_6:
      v0[3] = v15;
      return v3 & 1;
    }
  }

  swift_beginAccess();

  sub_2150A5BF0();
  v16 = sub_2150A5C20();
  swift_allocError();
  v18 = v17;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
  *v18 = MEMORY[0x277D839B0];
  (*(v4 + 16))(&v18[v19], v7, v3);
  (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
  swift_willThrow();
  result = (*(v4 + 8))(v7, v3);
  v15 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F9E0CC()
{
  v2 = v1;
  v3 = sub_2150A5C10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[3];
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v0[2];
    if (v8 < *(v9 + 16))
    {
      v10 = v9 + 16 * v8;
      v12 = *(v10 + 32);
      v11 = *(v10 + 40);
      v13 = *v0;
      v14 = v0[1];

      sub_214F9FAB0(v13, v14, v12, v11);

      v16 = v8 + 1;
      if (!v2)
      {
        v0[3] = v16;
        return result;
      }

      goto LABEL_6;
    }
  }

  swift_beginAccess();

  sub_2150A5BF0();
  v17 = sub_2150A5C20();
  swift_allocError();
  v19 = v18;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
  *v19 = MEMORY[0x277D839F8];
  (*(v4 + 16))(&v19[v20], v7, v3);
  (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
  swift_willThrow();
  result = (*(v4 + 8))(v7, v3);
  v16 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
LABEL_6:
    v0[3] = v16;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F9E334()
{
  v2 = v1;
  v3 = sub_2150A5C10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[3];
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v0[2];
    if (v8 < *(v9 + 16))
    {
      v10 = v9 + 16 * v8;
      v12 = *(v10 + 32);
      v11 = *(v10 + 40);
      v13 = *v0;
      v14 = v0[1];

      sub_214F9FEF8(v13, v14, v12, v11);

      v16 = v8 + 1;
      if (!v2)
      {
        v0[3] = v16;
        return result;
      }

      goto LABEL_6;
    }
  }

  swift_beginAccess();

  sub_2150A5BF0();
  v17 = sub_2150A5C20();
  swift_allocError();
  v19 = v18;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
  *v19 = MEMORY[0x277D83A90];
  (*(v4 + 16))(&v19[v20], v7, v3);
  (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
  swift_willThrow();
  result = (*(v4 + 8))(v7, v3);
  v16 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
LABEL_6:
    v0[3] = v16;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F9E59C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v6 = v3;
  v7 = sub_2150A5C10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[3];
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = v2[2];
    if (v12 < *(v13 + 16))
    {
      v14 = v13 + 16 * v12;
      v15 = *(v14 + 32);
      v16 = *(v14 + 40);
      v17 = *v2;
      v18 = v2[1];

      v7 = a1(v17, v18, v15, v16);

      v19 = v12 + 1;
      if (!v6)
      {
        v2[3] = v19;
        return v7;
      }

LABEL_6:
      v2[3] = v19;
      return v7;
    }
  }

  swift_beginAccess();

  sub_2150A5BF0();
  v20 = sub_2150A5C20();
  swift_allocError();
  v22 = v21;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
  *v22 = a2;
  (*(v8 + 16))(&v22[v23], v11, v7);
  (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
  swift_willThrow();
  result = (*(v8 + 8))(v11, v7);
  v19 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F9E800(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v6 = v3;
  v7 = sub_2150A5C10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[3];
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = v2[2];
    if (v12 < *(v13 + 16))
    {
      v14 = v13 + 16 * v12;
      v15 = *(v14 + 32);
      v16 = *(v14 + 40);
      v17 = *v2;
      v18 = v2[1];

      v7 = a1(v17, v18, v15, v16);

      v19 = v12 + 1;
      if (!v6)
      {
        v2[3] = v19;
        return v7;
      }

LABEL_6:
      v2[3] = v19;
      return v7;
    }
  }

  swift_beginAccess();

  sub_2150A5BF0();
  v20 = sub_2150A5C20();
  swift_allocError();
  v22 = v21;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
  *v22 = a2;
  (*(v8 + 16))(&v22[v23], v11, v7);
  (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
  swift_willThrow();
  result = (*(v8 + 8))(v11, v7);
  v19 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F9EA64(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v6 = v3;
  v7 = sub_2150A5C10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[3];
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = v2[2];
    if (v12 < *(v13 + 16))
    {
      v14 = v13 + 16 * v12;
      v15 = *(v14 + 32);
      v16 = *(v14 + 40);
      v17 = *v2;
      v18 = v2[1];

      v7 = a1(v17, v18, v15, v16);

      v19 = v12 + 1;
      if (!v6)
      {
        v2[3] = v19;
        return v7;
      }

LABEL_6:
      v2[3] = v19;
      return v7;
    }
  }

  swift_beginAccess();

  sub_2150A5BF0();
  v20 = sub_2150A5C20();
  swift_allocError();
  v22 = v21;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
  *v22 = a2;
  (*(v8 + 16))(&v22[v23], v11, v7);
  (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
  swift_willThrow();
  result = (*(v8 + 8))(v11, v7);
  v19 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F9ECC8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v6 = v3;
  v7 = sub_2150A5C10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[3];
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = v2[2];
    if (v12 < *(v13 + 16))
    {
      v14 = v13 + 16 * v12;
      v15 = *(v14 + 32);
      v16 = *(v14 + 40);
      v17 = *v2;
      v18 = v2[1];

      v7 = a1(v17, v18, v15, v16);

      v19 = v12 + 1;
      if (!v6)
      {
        v2[3] = v19;
        return v7;
      }

LABEL_6:
      v2[3] = v19;
      return v7;
    }
  }

  swift_beginAccess();

  sub_2150A5BF0();
  v20 = sub_2150A5C20();
  swift_allocError();
  v22 = v21;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
  *v22 = a2;
  (*(v8 + 16))(&v22[v23], v11, v7);
  (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
  swift_willThrow();
  result = (*(v8 + 8))(v11, v7);
  v19 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F9EF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2150A5C10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3[3];
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = v3[2];
    if (v12 < *(v13 + 16))
    {
      v14 = v13 + 16 * v12;
      v16 = *(v14 + 32);
      v15 = *(v14 + 40);
      v17 = *v3;
      v18 = v3[1];

      sub_214FA3680(a1, v17, v18, v16, v15, a2, a3);

      v20 = v12 + 1;
LABEL_5:
      v3[3] = v20;
      return result;
    }
  }

  swift_beginAccess();

  sub_2150A5BF0();
  v21 = sub_2150A5C20();
  swift_allocError();
  v23 = v22;
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
  *v23 = a1;
  (*(v8 + 16))(&v23[v24], v11, v7);
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84170], v21);
  swift_willThrow();
  result = (*(v8 + 8))(v11, v7);
  v20 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F9F18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D837D0];
  if (a4)
  {
    v37[1] = a2;
    v37[2] = v4;
    v15 = sub_2150A57E0();
    v44 = v37;
    v16 = *(v15 - 8);
    MEMORY[0x28223BE20](v15, v17);
    v19 = (v37 - v18);
    *v19 = a3;
    v19[1] = a4;
    v20 = *(v14 - 8);
    if ((*(v20 + 48))(v37 - v18, 1, v14) == 1)
    {
      v21 = v14;
      v22 = *(v16 + 8);

      v22(v19, v15);

      sub_2150A5BF0();
      v23 = MEMORY[0x277D84160];
LABEL_8:
      v32 = sub_2150A5C20();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
      *v34 = v21;
      (*(v10 + 16))(v34 + v35, v13, v9);
      (*(*(v32 - 8) + 104))(v34, *v23, v32);
      swift_willThrow();
      (*(v10 + 8))(v13, v9);
      return v9;
    }

    v39 = v14;
    v40 = &protocol witness table for String;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
    (*(v20 + 32))(boxed_opaque_existential_1, v19, v14);
    sub_214D7A458(&v38, v41);
    v29 = v42;
    v30 = __swift_project_boxed_opaque_existential_1(v41, v42);
    v39 = v29;
    v31 = __swift_allocate_boxed_opaque_existential_1(&v38);
    (*(*(v29 - 8) + 16))(v31, v30, v29);

    v9 = sub_214F6CADC(&v38);
    __swift_destroy_boxed_opaque_existential_0(&v38);
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    swift_beginAccess();
    if ((*(a1 + 32) & 1) == 0)
    {
      v21 = v14;
      swift_beginAccess();

      sub_2150A5BF0();
      v23 = MEMORY[0x277D84170];
      goto LABEL_8;
    }

    v42 = v14;
    v43 = &protocol witness table for String;
    v24 = __swift_allocate_boxed_opaque_existential_1(v41);
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v25 = v42;
    v26 = __swift_project_boxed_opaque_existential_1(v41, v42);
    v39 = v25;
    v27 = __swift_allocate_boxed_opaque_existential_1(&v38);
    (*(*(v25 - 8) + 16))(v27, v26, v25);
    v9 = sub_214F6CADC(&v38);
    __swift_destroy_boxed_opaque_existential_0(&v38);
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  return v9;
}

uint64_t sub_214F9F624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D839B0];
  if (a4)
  {
    v33[1] = a2;
    v33[2] = v4;
    v15 = sub_2150A57E0();
    v40 = v33;
    v16 = *(v15 - 8);
    MEMORY[0x28223BE20](v15, v17);
    v19 = v33 - v18;

    *v19 = _sSb11NotesSharedE12fromArgumentSbSgSS_tcfC_0(a3, a4);
    v20 = *(v14 - 8);
    if ((*(v20 + 48))(v19, 1, v14) == 1)
    {
      v21 = v14;
      (*(v16 + 8))(v19, v15);

      sub_2150A5BF0();
      v22 = MEMORY[0x277D84160];
LABEL_8:
      v28 = sub_2150A5C20();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
      *v30 = v21;
      (*(v10 + 16))(v30 + v31, v13, v9);
      (*(*(v28 - 8) + 104))(v30, *v22, v28);
      swift_willThrow();
      (*(v10 + 8))(v13, v9);
      return v9 & 1;
    }

    v35 = v14;
    v36 = &protocol witness table for Bool;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
    (*(v20 + 32))(boxed_opaque_existential_1, v19, v14);
    sub_214D7A458(&v34, v37);
    v9 = v38;
    v26 = __swift_project_boxed_opaque_existential_1(v37, v38);
    v35 = v9;
    v27 = __swift_allocate_boxed_opaque_existential_1(&v34);
    (*(*(v9 - 8) + 16))(v27, v26, v9);
    LOBYTE(v9) = sub_214F6CD40(&v34);
    __swift_destroy_boxed_opaque_existential_0(&v34);
    __swift_destroy_boxed_opaque_existential_0(v37);
  }

  else
  {
    swift_beginAccess();
    if ((*(a1 + 32) & 1) == 0)
    {
      v21 = v14;
      swift_beginAccess();

      sub_2150A5BF0();
      v22 = MEMORY[0x277D84170];
      goto LABEL_8;
    }

    v38 = v14;
    v39 = &protocol witness table for Bool;
    *__swift_allocate_boxed_opaque_existential_1(v37) = 0;
    v9 = v38;
    v23 = __swift_project_boxed_opaque_existential_1(v37, v38);
    v35 = v9;
    v24 = __swift_allocate_boxed_opaque_existential_1(&v34);
    (*(*(v9 - 8) + 16))(v24, v23, v9);
    LOBYTE(v9) = sub_214F6CD40(&v34);
    __swift_destroy_boxed_opaque_existential_0(&v34);
    __swift_destroy_boxed_opaque_existential_0(v37);
  }

  return v9 & 1;
}

double sub_214F9FAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D839F8];
  if (a4)
  {
    v35 = a2;
    v36 = v9;
    v15 = sub_2150A57E0();
    v37 = &v35;
    v16 = *(v15 - 8);
    MEMORY[0x28223BE20](v15, v17);
    v18 = v14;
    v20 = &v35 - v19;
    v44[0] = 0;
    v21 = sub_21500F978(a3, a4, v44);
    v22 = v44[0];
    if ((v21 & 1) == 0)
    {
      v22 = 0;
    }

    *v20 = v22;
    v20[8] = (v21 & 1) == 0;
    v23 = *(v18 - 8);
    if ((*(v23 + 48))(v20, 1, v18) == 1)
    {
      (*(v16 + 8))(v20, v15);

      sub_2150A5BF0();
      v24 = MEMORY[0x277D84160];
      v14 = v18;
      v9 = v36;
LABEL_11:
      v30 = sub_2150A5C20();
      swift_allocError();
      v32 = v31;
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
      *v32 = v14;
      (*(v10 + 16))(v32 + v33, v13, v9);
      (*(*(v30 - 8) + 104))(v32, *v24, v30);
      swift_willThrow();
      (*(v10 + 8))(v13, v9);
      return v4;
    }

    v39 = v18;
    v40 = &protocol witness table for Double;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
    (*(v23 + 32))(boxed_opaque_existential_1, v20, v18);
    sub_214D7A458(&v38, v41);
  }

  else
  {
    swift_beginAccess();
    if ((*(a1 + 32) & 1) == 0)
    {
      swift_beginAccess();

      sub_2150A5BF0();
      v24 = MEMORY[0x277D84170];
      goto LABEL_11;
    }

    v42 = v14;
    v43 = &protocol witness table for Double;
    *__swift_allocate_boxed_opaque_existential_1(v41) = 0;
  }

  v26 = v42;
  v27 = __swift_project_boxed_opaque_existential_1(v41, v42);
  v39 = v26;
  v28 = __swift_allocate_boxed_opaque_existential_1(&v38);
  (*(*(v26 - 8) + 16))(v28, v27, v26);
  sub_214F6CF84(&v38);
  v4 = v29;
  __swift_destroy_boxed_opaque_existential_0(&v38);
  __swift_destroy_boxed_opaque_existential_0(v41);
  return v4;
}

float sub_214F9FEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D83A90];
  if (a4)
  {
    v35 = a2;
    v36 = v9;
    v15 = sub_2150A57E0();
    v37 = &v35;
    v16 = *(v15 - 8);
    MEMORY[0x28223BE20](v15, v17);
    v18 = v14;
    v20 = &v35 - v19;
    v44[0] = 0;
    v21 = sub_21500F9BC(a3, a4, v44);
    v22 = v44[0];
    if ((v21 & 1) == 0)
    {
      v22 = 0;
    }

    *v20 = v22;
    v20[4] = (v21 & 1) == 0;
    v23 = *(v18 - 8);
    if ((*(v23 + 48))(v20, 1, v18) == 1)
    {
      (*(v16 + 8))(v20, v15);

      sub_2150A5BF0();
      v24 = MEMORY[0x277D84160];
      v14 = v18;
      v9 = v36;
LABEL_11:
      v30 = sub_2150A5C20();
      swift_allocError();
      v32 = v31;
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
      *v32 = v14;
      (*(v10 + 16))(v32 + v33, v13, v9);
      (*(*(v30 - 8) + 104))(v32, *v24, v30);
      swift_willThrow();
      (*(v10 + 8))(v13, v9);
      return v4;
    }

    v39 = v18;
    v40 = &protocol witness table for Float;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
    (*(v23 + 32))(boxed_opaque_existential_1, v20, v18);
    sub_214D7A458(&v38, v41);
  }

  else
  {
    swift_beginAccess();
    if ((*(a1 + 32) & 1) == 0)
    {
      swift_beginAccess();

      sub_2150A5BF0();
      v24 = MEMORY[0x277D84170];
      goto LABEL_11;
    }

    v42 = v14;
    v43 = &protocol witness table for Float;
    *__swift_allocate_boxed_opaque_existential_1(v41) = 0;
  }

  v26 = v42;
  v27 = __swift_project_boxed_opaque_existential_1(v41, v42);
  v39 = v26;
  v28 = __swift_allocate_boxed_opaque_existential_1(&v38);
  (*(*(v26 - 8) + 16))(v28, v27, v26);
  sub_214F6D1C4(&v38);
  v4 = v29;
  __swift_destroy_boxed_opaque_existential_0(&v38);
  __swift_destroy_boxed_opaque_existential_0(v41);
  return v4;
}

uint64_t sub_214FA0340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2150A5C10();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D83B88];
  if (a4)
  {
    v35[1] = a2;
    v35[2] = v4;
    v14 = sub_2150A57E0();
    v42 = v35;
    v15 = *(v14 - 8);
    MEMORY[0x28223BE20](v14, v16);
    v18 = v35 - v17;

    *v18 = sub_215011CDC();
    v18[8] = v19 & 1;
    v20 = *(v13 - 8);
    if ((*(v20 + 48))(v18, 1, v13) == 1)
    {
      v21 = v13;
      (*(v15 + 8))(v18, v14);

      sub_2150A5BF0();
      v22 = MEMORY[0x277D84160];
LABEL_8:
      v30 = sub_2150A5C20();
      swift_allocError();
      v32 = v31;
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
      *v32 = v21;
      (*(v9 + 16))(v32 + v33, v12, v8);
      (*(*(v30 - 8) + 104))(v32, *v22, v30);
      swift_willThrow();
      (*(v9 + 8))(v12, v8);
      return v8;
    }

    v37 = v13;
    v38 = &protocol witness table for Int;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
    (*(v20 + 32))(boxed_opaque_existential_1, v18, v13);
    sub_214D7A458(&v36, v39);
    v27 = v40;
    v28 = __swift_project_boxed_opaque_existential_1(v39, v40);
    v37 = v27;
    v29 = __swift_allocate_boxed_opaque_existential_1(&v36);
    (*(*(v27 - 8) + 16))(v29, v28, v27);
    v8 = sub_214F6D404(&v36);
    __swift_destroy_boxed_opaque_existential_0(&v36);
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    swift_beginAccess();
    if ((*(a1 + 32) & 1) == 0)
    {
      v21 = v13;
      swift_beginAccess();

      sub_2150A5BF0();
      v22 = MEMORY[0x277D84170];
      goto LABEL_8;
    }

    v40 = v13;
    v41 = &protocol witness table for Int;
    *__swift_allocate_boxed_opaque_existential_1(v39) = 0;
    v23 = v40;
    v24 = __swift_project_boxed_opaque_existential_1(v39, v40);
    v37 = v23;
    v25 = __swift_allocate_boxed_opaque_existential_1(&v36);
    (*(*(v23 - 8) + 16))(v25, v24, v23);
    v8 = sub_214F6D404(&v36);
    __swift_destroy_boxed_opaque_existential_0(&v36);
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  return v8;
}

uint64_t sub_214FA07D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v50 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D84900];
  v14 = swift_conformsToProtocol2();
  if (v14)
  {
    v15 = v14;
    if (a4)
    {
      v39 = a2;
      v40 = v9;
      v43 = v10;
      v41 = v4;
      v16 = *(v14 + 24);
      v17 = sub_2150A57E0();
      v42 = &v39;
      v18 = *(v17 - 8);
      MEMORY[0x28223BE20](v17, v19);
      v21 = &v39 - v20;

      v16(a3, a4, v13, v15);
      v22 = *(v13 - 8);
      if ((*(v22 + 48))(v21, 1, v13) == 1)
      {
        (*(v18 + 8))(v21, v17);

        v23 = v50;
        sub_2150A5BF0();
        v24 = MEMORY[0x277D84160];
        v9 = v40;
LABEL_9:
        v29 = sub_2150A5C20();
        swift_allocError();
        v35 = v34;
        v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
        *v35 = v13;
        v37 = v43;
        (*(v43 + 16))(v35 + v36, v23, v9);
        (*(*(v29 - 8) + 104))(v35, *v24, v29);
        swift_willThrow();
        (*(v37 + 8))(v23, v9);
        return v29;
      }

      v45 = v13;
      v46 = v15;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(v22 + 32))(boxed_opaque_existential_1, v21, v13);
      sub_214D7A458(&v44, v47);
      v31 = v48;
      v32 = __swift_project_boxed_opaque_existential_1(v47, v48);
      v45 = v31;
      v33 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(*(v31 - 8) + 16))(v33, v32, v31);
      v29 = sub_214F6D420(&v44);
      __swift_destroy_boxed_opaque_existential_0(&v44);
      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    else
    {
      swift_beginAccess();
      if ((*(a1 + 32) & 1) == 0)
      {
        v43 = v10;
        swift_beginAccess();

        v23 = v50;
        sub_2150A5BF0();
        v24 = MEMORY[0x277D84170];
        goto LABEL_9;
      }

      v25 = *(v15 + 16);
      v48 = v13;
      v49 = v15;
      __swift_allocate_boxed_opaque_existential_1(v47);
      v25(v13, v15);
      v26 = v48;
      v27 = __swift_project_boxed_opaque_existential_1(v47, v48);
      v45 = v26;
      v28 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(*(v26 - 8) + 16))(v28, v27, v26);
      v29 = sub_214F6D420(&v44);
      __swift_destroy_boxed_opaque_existential_0(&v44);
      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    return v29;
  }

  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214FA0D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v50 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D84958];
  v14 = swift_conformsToProtocol2();
  if (v14)
  {
    v15 = v14;
    if (a4)
    {
      v39 = a2;
      v40 = v9;
      v43 = v10;
      v41 = v4;
      v16 = *(v14 + 24);
      v17 = sub_2150A57E0();
      v42 = &v39;
      v18 = *(v17 - 8);
      MEMORY[0x28223BE20](v17, v19);
      v21 = &v39 - v20;

      v16(a3, a4, v13, v15);
      v22 = *(v13 - 8);
      if ((*(v22 + 48))(v21, 1, v13) == 1)
      {
        (*(v18 + 8))(v21, v17);

        v23 = v50;
        sub_2150A5BF0();
        v24 = MEMORY[0x277D84160];
        v9 = v40;
LABEL_9:
        v29 = sub_2150A5C20();
        swift_allocError();
        v35 = v34;
        v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
        *v35 = v13;
        v37 = v43;
        (*(v43 + 16))(v35 + v36, v23, v9);
        (*(*(v29 - 8) + 104))(v35, *v24, v29);
        swift_willThrow();
        (*(v37 + 8))(v23, v9);
        return v29;
      }

      v45 = v13;
      v46 = v15;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(v22 + 32))(boxed_opaque_existential_1, v21, v13);
      sub_214D7A458(&v44, v47);
      v31 = v48;
      v32 = __swift_project_boxed_opaque_existential_1(v47, v48);
      v45 = v31;
      v33 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(*(v31 - 8) + 16))(v33, v32, v31);
      v29 = sub_214F6D43C(&v44);
      __swift_destroy_boxed_opaque_existential_0(&v44);
      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    else
    {
      swift_beginAccess();
      if ((*(a1 + 32) & 1) == 0)
      {
        v43 = v10;
        swift_beginAccess();

        v23 = v50;
        sub_2150A5BF0();
        v24 = MEMORY[0x277D84170];
        goto LABEL_9;
      }

      v25 = *(v15 + 16);
      v48 = v13;
      v49 = v15;
      __swift_allocate_boxed_opaque_existential_1(v47);
      v25(v13, v15);
      v26 = v48;
      v27 = __swift_project_boxed_opaque_existential_1(v47, v48);
      v45 = v26;
      v28 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(*(v26 - 8) + 16))(v28, v27, v26);
      v29 = sub_214F6D43C(&v44);
      __swift_destroy_boxed_opaque_existential_0(&v44);
      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    return v29;
  }

  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214FA1258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v50 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D849A8];
  v14 = swift_conformsToProtocol2();
  if (v14)
  {
    v15 = v14;
    if (a4)
    {
      v39 = a2;
      v40 = v9;
      v43 = v10;
      v41 = v4;
      v16 = *(v14 + 24);
      v17 = sub_2150A57E0();
      v42 = &v39;
      v18 = *(v17 - 8);
      MEMORY[0x28223BE20](v17, v19);
      v21 = &v39 - v20;

      v16(a3, a4, v13, v15);
      v22 = *(v13 - 8);
      if ((*(v22 + 48))(v21, 1, v13) == 1)
      {
        (*(v18 + 8))(v21, v17);

        v23 = v50;
        sub_2150A5BF0();
        v24 = MEMORY[0x277D84160];
        v9 = v40;
LABEL_9:
        v29 = sub_2150A5C20();
        swift_allocError();
        v35 = v34;
        v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
        *v35 = v13;
        v37 = v43;
        (*(v43 + 16))(v35 + v36, v23, v9);
        (*(*(v29 - 8) + 104))(v35, *v24, v29);
        swift_willThrow();
        (*(v37 + 8))(v23, v9);
        return v29;
      }

      v45 = v13;
      v46 = v15;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(v22 + 32))(boxed_opaque_existential_1, v21, v13);
      sub_214D7A458(&v44, v47);
      v31 = v48;
      v32 = __swift_project_boxed_opaque_existential_1(v47, v48);
      v45 = v31;
      v33 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(*(v31 - 8) + 16))(v33, v32, v31);
      v29 = sub_214F6D458(&v44);
      __swift_destroy_boxed_opaque_existential_0(&v44);
      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    else
    {
      swift_beginAccess();
      if ((*(a1 + 32) & 1) == 0)
      {
        v43 = v10;
        swift_beginAccess();

        v23 = v50;
        sub_2150A5BF0();
        v24 = MEMORY[0x277D84170];
        goto LABEL_9;
      }

      v25 = *(v15 + 16);
      v48 = v13;
      v49 = v15;
      __swift_allocate_boxed_opaque_existential_1(v47);
      v25(v13, v15);
      v26 = v48;
      v27 = __swift_project_boxed_opaque_existential_1(v47, v48);
      v45 = v26;
      v28 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(*(v26 - 8) + 16))(v28, v27, v26);
      v29 = sub_214F6D458(&v44);
      __swift_destroy_boxed_opaque_existential_0(&v44);
      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    return v29;
  }

  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214FA179C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2150A5C10();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D84A28];
  if (a4)
  {
    v35[1] = a2;
    v35[2] = v4;
    v14 = sub_2150A57E0();
    v42 = v35;
    v15 = *(v14 - 8);
    MEMORY[0x28223BE20](v14, v16);
    v18 = v35 - v17;

    *v18 = sub_215011CDC();
    v18[8] = v19 & 1;
    v20 = *(v13 - 8);
    if ((*(v20 + 48))(v18, 1, v13) == 1)
    {
      v21 = v13;
      (*(v15 + 8))(v18, v14);

      sub_2150A5BF0();
      v22 = MEMORY[0x277D84160];
LABEL_8:
      v30 = sub_2150A5C20();
      swift_allocError();
      v32 = v31;
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
      *v32 = v21;
      (*(v9 + 16))(v32 + v33, v12, v8);
      (*(*(v30 - 8) + 104))(v32, *v22, v30);
      swift_willThrow();
      (*(v9 + 8))(v12, v8);
      return v8;
    }

    v37 = v13;
    v38 = &protocol witness table for Int64;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
    (*(v20 + 32))(boxed_opaque_existential_1, v18, v13);
    sub_214D7A458(&v36, v39);
    v27 = v40;
    v28 = __swift_project_boxed_opaque_existential_1(v39, v40);
    v37 = v27;
    v29 = __swift_allocate_boxed_opaque_existential_1(&v36);
    (*(*(v27 - 8) + 16))(v29, v28, v27);
    v8 = sub_214F6D474(&v36);
    __swift_destroy_boxed_opaque_existential_0(&v36);
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    swift_beginAccess();
    if ((*(a1 + 32) & 1) == 0)
    {
      v21 = v13;
      swift_beginAccess();

      sub_2150A5BF0();
      v22 = MEMORY[0x277D84170];
      goto LABEL_8;
    }

    v40 = v13;
    v41 = &protocol witness table for Int64;
    *__swift_allocate_boxed_opaque_existential_1(v39) = 0;
    v23 = v40;
    v24 = __swift_project_boxed_opaque_existential_1(v39, v40);
    v37 = v23;
    v25 = __swift_allocate_boxed_opaque_existential_1(&v36);
    (*(*(v23 - 8) + 16))(v25, v24, v23);
    v8 = sub_214F6D474(&v36);
    __swift_destroy_boxed_opaque_existential_0(&v36);
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  return v8;
}

uint64_t sub_214FA1C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v50 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D83E88];
  v14 = swift_conformsToProtocol2();
  if (v14)
  {
    v15 = v14;
    if (a4)
    {
      v39 = a2;
      v40 = v9;
      v43 = v10;
      v41 = v4;
      v16 = *(v14 + 24);
      v17 = sub_2150A57E0();
      v42 = &v39;
      v18 = *(v17 - 8);
      MEMORY[0x28223BE20](v17, v19);
      v21 = &v39 - v20;

      v16(a3, a4, v13, v15);
      v22 = *(v13 - 8);
      if ((*(v22 + 48))(v21, 1, v13) == 1)
      {
        (*(v18 + 8))(v21, v17);

        v23 = v50;
        sub_2150A5BF0();
        v24 = MEMORY[0x277D84160];
        v9 = v40;
LABEL_9:
        v29 = sub_2150A5C20();
        swift_allocError();
        v35 = v34;
        v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
        *v35 = v13;
        v37 = v43;
        (*(v43 + 16))(v35 + v36, v23, v9);
        (*(*(v29 - 8) + 104))(v35, *v24, v29);
        swift_willThrow();
        (*(v37 + 8))(v23, v9);
        return v29;
      }

      v45 = v13;
      v46 = v15;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(v22 + 32))(boxed_opaque_existential_1, v21, v13);
      sub_214D7A458(&v44, v47);
      v31 = v48;
      v32 = __swift_project_boxed_opaque_existential_1(v47, v48);
      v45 = v31;
      v33 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(*(v31 - 8) + 16))(v33, v32, v31);
      v29 = sub_214F6D490(&v44);
      __swift_destroy_boxed_opaque_existential_0(&v44);
      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    else
    {
      swift_beginAccess();
      if ((*(a1 + 32) & 1) == 0)
      {
        v43 = v10;
        swift_beginAccess();

        v23 = v50;
        sub_2150A5BF0();
        v24 = MEMORY[0x277D84170];
        goto LABEL_9;
      }

      v25 = *(v15 + 16);
      v48 = v13;
      v49 = v15;
      __swift_allocate_boxed_opaque_existential_1(v47);
      v25(v13, v15);
      v26 = v48;
      v27 = __swift_project_boxed_opaque_existential_1(v47, v48);
      v45 = v26;
      v28 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(*(v26 - 8) + 16))(v28, v27, v26);
      v29 = sub_214F6D490(&v44);
      __swift_destroy_boxed_opaque_existential_0(&v44);
      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    return v29;
  }

  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214FA2170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v50 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D84B78];
  v14 = swift_conformsToProtocol2();
  if (v14)
  {
    v15 = v14;
    if (a4)
    {
      v39 = a2;
      v40 = v9;
      v43 = v10;
      v41 = v4;
      v16 = *(v14 + 24);
      v17 = sub_2150A57E0();
      v42 = &v39;
      v18 = *(v17 - 8);
      MEMORY[0x28223BE20](v17, v19);
      v21 = &v39 - v20;

      v16(a3, a4, v13, v15);
      v22 = *(v13 - 8);
      if ((*(v22 + 48))(v21, 1, v13) == 1)
      {
        (*(v18 + 8))(v21, v17);

        v23 = v50;
        sub_2150A5BF0();
        v24 = MEMORY[0x277D84160];
        v9 = v40;
LABEL_9:
        v29 = sub_2150A5C20();
        swift_allocError();
        v35 = v34;
        v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
        *v35 = v13;
        v37 = v43;
        (*(v43 + 16))(v35 + v36, v23, v9);
        (*(*(v29 - 8) + 104))(v35, *v24, v29);
        swift_willThrow();
        (*(v37 + 8))(v23, v9);
        return v29;
      }

      v45 = v13;
      v46 = v15;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(v22 + 32))(boxed_opaque_existential_1, v21, v13);
      sub_214D7A458(&v44, v47);
      v31 = v48;
      v32 = __swift_project_boxed_opaque_existential_1(v47, v48);
      v45 = v31;
      v33 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(*(v31 - 8) + 16))(v33, v32, v31);
      v29 = sub_214F6D4AC(&v44);
      __swift_destroy_boxed_opaque_existential_0(&v44);
      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    else
    {
      swift_beginAccess();
      if ((*(a1 + 32) & 1) == 0)
      {
        v43 = v10;
        swift_beginAccess();

        v23 = v50;
        sub_2150A5BF0();
        v24 = MEMORY[0x277D84170];
        goto LABEL_9;
      }

      v25 = *(v15 + 16);
      v48 = v13;
      v49 = v15;
      __swift_allocate_boxed_opaque_existential_1(v47);
      v25(v13, v15);
      v26 = v48;
      v27 = __swift_project_boxed_opaque_existential_1(v47, v48);
      v45 = v26;
      v28 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(*(v26 - 8) + 16))(v28, v27, v26);
      v29 = sub_214F6D4AC(&v44);
      __swift_destroy_boxed_opaque_existential_0(&v44);
      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    return v29;
  }

  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214FA26B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v50 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D84C58];
  v14 = swift_conformsToProtocol2();
  if (v14)
  {
    v15 = v14;
    if (a4)
    {
      v39 = a2;
      v40 = v9;
      v43 = v10;
      v41 = v4;
      v16 = *(v14 + 24);
      v17 = sub_2150A57E0();
      v42 = &v39;
      v18 = *(v17 - 8);
      MEMORY[0x28223BE20](v17, v19);
      v21 = &v39 - v20;

      v16(a3, a4, v13, v15);
      v22 = *(v13 - 8);
      if ((*(v22 + 48))(v21, 1, v13) == 1)
      {
        (*(v18 + 8))(v21, v17);

        v23 = v50;
        sub_2150A5BF0();
        v24 = MEMORY[0x277D84160];
        v9 = v40;
LABEL_9:
        v29 = sub_2150A5C20();
        swift_allocError();
        v35 = v34;
        v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
        *v35 = v13;
        v37 = v43;
        (*(v43 + 16))(v35 + v36, v23, v9);
        (*(*(v29 - 8) + 104))(v35, *v24, v29);
        swift_willThrow();
        (*(v37 + 8))(v23, v9);
        return v29;
      }

      v45 = v13;
      v46 = v15;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(v22 + 32))(boxed_opaque_existential_1, v21, v13);
      sub_214D7A458(&v44, v47);
      v31 = v48;
      v32 = __swift_project_boxed_opaque_existential_1(v47, v48);
      v45 = v31;
      v33 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(*(v31 - 8) + 16))(v33, v32, v31);
      v29 = sub_214F6D70C(&v44);
      __swift_destroy_boxed_opaque_existential_0(&v44);
      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    else
    {
      swift_beginAccess();
      if ((*(a1 + 32) & 1) == 0)
      {
        v43 = v10;
        swift_beginAccess();

        v23 = v50;
        sub_2150A5BF0();
        v24 = MEMORY[0x277D84170];
        goto LABEL_9;
      }

      v25 = *(v15 + 16);
      v48 = v13;
      v49 = v15;
      __swift_allocate_boxed_opaque_existential_1(v47);
      v25(v13, v15);
      v26 = v48;
      v27 = __swift_project_boxed_opaque_existential_1(v47, v48);
      v45 = v26;
      v28 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(*(v26 - 8) + 16))(v28, v27, v26);
      v29 = sub_214F6D70C(&v44);
      __swift_destroy_boxed_opaque_existential_0(&v44);
      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    return v29;
  }

  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214FA2BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v50 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D84CC0];
  v14 = swift_conformsToProtocol2();
  if (v14)
  {
    v15 = v14;
    if (a4)
    {
      v39 = a2;
      v40 = v9;
      v43 = v10;
      v41 = v4;
      v16 = *(v14 + 24);
      v17 = sub_2150A57E0();
      v42 = &v39;
      v18 = *(v17 - 8);
      MEMORY[0x28223BE20](v17, v19);
      v21 = &v39 - v20;

      v16(a3, a4, v13, v15);
      v22 = *(v13 - 8);
      if ((*(v22 + 48))(v21, 1, v13) == 1)
      {
        (*(v18 + 8))(v21, v17);

        v23 = v50;
        sub_2150A5BF0();
        v24 = MEMORY[0x277D84160];
        v9 = v40;
LABEL_9:
        v29 = sub_2150A5C20();
        swift_allocError();
        v35 = v34;
        v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
        *v35 = v13;
        v37 = v43;
        (*(v43 + 16))(v35 + v36, v23, v9);
        (*(*(v29 - 8) + 104))(v35, *v24, v29);
        swift_willThrow();
        (*(v37 + 8))(v23, v9);
        return v29;
      }

      v45 = v13;
      v46 = v15;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(v22 + 32))(boxed_opaque_existential_1, v21, v13);
      sub_214D7A458(&v44, v47);
      v31 = v48;
      v32 = __swift_project_boxed_opaque_existential_1(v47, v48);
      v45 = v31;
      v33 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(*(v31 - 8) + 16))(v33, v32, v31);
      v29 = sub_214F6D96C(&v44);
      __swift_destroy_boxed_opaque_existential_0(&v44);
      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    else
    {
      swift_beginAccess();
      if ((*(a1 + 32) & 1) == 0)
      {
        v43 = v10;
        swift_beginAccess();

        v23 = v50;
        sub_2150A5BF0();
        v24 = MEMORY[0x277D84170];
        goto LABEL_9;
      }

      v25 = *(v15 + 16);
      v48 = v13;
      v49 = v15;
      __swift_allocate_boxed_opaque_existential_1(v47);
      v25(v13, v15);
      v26 = v48;
      v27 = __swift_project_boxed_opaque_existential_1(v47, v48);
      v45 = v26;
      v28 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(*(v26 - 8) + 16))(v28, v27, v26);
      v29 = sub_214F6D96C(&v44);
      __swift_destroy_boxed_opaque_existential_0(&v44);
      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    return v29;
  }

  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214FA313C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v50 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D84D38];
  v14 = swift_conformsToProtocol2();
  if (v14)
  {
    v15 = v14;
    if (a4)
    {
      v39 = a2;
      v40 = v9;
      v43 = v10;
      v41 = v4;
      v16 = *(v14 + 24);
      v17 = sub_2150A57E0();
      v42 = &v39;
      v18 = *(v17 - 8);
      MEMORY[0x28223BE20](v17, v19);
      v21 = &v39 - v20;

      v16(a3, a4, v13, v15);
      v22 = *(v13 - 8);
      if ((*(v22 + 48))(v21, 1, v13) == 1)
      {
        (*(v18 + 8))(v21, v17);

        v23 = v50;
        sub_2150A5BF0();
        v24 = MEMORY[0x277D84160];
        v9 = v40;
LABEL_9:
        v29 = sub_2150A5C20();
        swift_allocError();
        v35 = v34;
        v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
        *v35 = v13;
        v37 = v43;
        (*(v43 + 16))(v35 + v36, v23, v9);
        (*(*(v29 - 8) + 104))(v35, *v24, v29);
        swift_willThrow();
        (*(v37 + 8))(v23, v9);
        return v29;
      }

      v45 = v13;
      v46 = v15;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(v22 + 32))(boxed_opaque_existential_1, v21, v13);
      sub_214D7A458(&v44, v47);
      v31 = v48;
      v32 = __swift_project_boxed_opaque_existential_1(v47, v48);
      v45 = v31;
      v33 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(*(v31 - 8) + 16))(v33, v32, v31);
      v29 = sub_214F6DBCC(&v44);
      __swift_destroy_boxed_opaque_existential_0(&v44);
      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    else
    {
      swift_beginAccess();
      if ((*(a1 + 32) & 1) == 0)
      {
        v43 = v10;
        swift_beginAccess();

        v23 = v50;
        sub_2150A5BF0();
        v24 = MEMORY[0x277D84170];
        goto LABEL_9;
      }

      v25 = *(v15 + 16);
      v48 = v13;
      v49 = v15;
      __swift_allocate_boxed_opaque_existential_1(v47);
      v25(v13, v15);
      v26 = v48;
      v27 = __swift_project_boxed_opaque_existential_1(v47, v48);
      v45 = v26;
      v28 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(*(v26 - 8) + 16))(v28, v27, v26);
      v29 = sub_214F6DBCC(&v44);
      __swift_destroy_boxed_opaque_existential_0(&v44);
      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    return v29;
  }

  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214FA3680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v49 = a3;
  v50 = a7;
  v13 = sub_2150A5C10();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v58 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_conformsToProtocol2();
  if (v17 && a1)
  {
    v18 = v17;
    if (a5)
    {
      v44 = a6;
      v45 = v14;
      v46 = v13;
      v47 = v7;
      v19 = *(v17 + 24);
      v20 = sub_2150A57E0();
      v48 = &v43;
      v21 = *(v20 - 8);
      MEMORY[0x28223BE20](v20, v22);
      v24 = &v43 - v23;

      v19(a4, a5, a1, v18);
      v25 = *(a1 - 8);
      if ((*(v25 + 48))(v24, 1, a1) != 1)
      {
        v52 = a1;
        v53 = v18;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v51);
        (*(v25 + 32))(boxed_opaque_existential_1, v24, a1);
        sub_214D7A458(&v51, &v54);
        v35 = v56;
        v36 = __swift_project_boxed_opaque_existential_1(&v54, v56);
        v52 = v35;
        v37 = __swift_allocate_boxed_opaque_existential_1(&v51);
        (*(*(v35 - 8) + 16))(v37, v36, v35);
        castOrFatalError<A>(_:as:)(&v51, v44, v44, v50);
        __swift_destroy_boxed_opaque_existential_0(&v51);
        return __swift_destroy_boxed_opaque_existential_0(&v54);
      }

      (*(v21 + 8))(v24, v20);

      v26 = v58;
      sub_2150A5BF0();
      v27 = MEMORY[0x277D84160];
      v14 = v45;
      v13 = v46;
    }

    else
    {
      swift_beginAccess();
      if (*(a2 + 32))
      {
        v28 = a6;
        v29 = *(v18 + 16);
        v56 = a1;
        v57 = v18;
        __swift_allocate_boxed_opaque_existential_1(&v54);
        v29(a1, v18);
        v30 = v56;
        v31 = __swift_project_boxed_opaque_existential_1(&v54, v56);
        v52 = v30;
        v32 = __swift_allocate_boxed_opaque_existential_1(&v51);
        (*(*(v30 - 8) + 16))(v32, v31, v30);
        castOrFatalError<A>(_:as:)(&v51, v28, v28, v50);
        __swift_destroy_boxed_opaque_existential_0(&v51);
        return __swift_destroy_boxed_opaque_existential_0(&v54);
      }

      swift_beginAccess();

      v26 = v58;
      sub_2150A5BF0();
      v27 = MEMORY[0x277D84170];
    }

    v38 = sub_2150A5C20();
    swift_allocError();
    v40 = v39;
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8, &qword_2150C53F0) + 48);
    *v40 = a1;
    (*(v14 + 16))(&v40[v41], v26, v13);
    (*(*(v38 - 8) + 104))(v40, *v27, v38);
    swift_willThrow();
    return (*(v14 + 8))(v26, v13);
  }

  else
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_2150A5B20();

    v54 = 0x2065707954;
    v55 = 0xE500000000000000;
    v42 = sub_2150A6670();
    MEMORY[0x2160617E0](v42);

    MEMORY[0x2160617E0](0xD000000000000026, 0x80000002150E52E0);
    result = sub_2150A5E10();
    __break(1u);
  }

  return result;
}

uint64_t sub_214FA3FAC()
{
  result = sub_2150A6180();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_214FA3FFC()
{
  result = sub_2150A6190();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_214FA40A4()
{
  result = sub_2150A61C0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_214FA40F4()
{
  result = sub_2150A61A0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_214FA4234()
{
  result = sub_2150A61D0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_214FA4284(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

void (*sub_214FA45CC(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_214FA48F0(v7);
  v7[9] = sub_214FA46D8(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_214FA4678;
}

void sub_214FA4678(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_214FA46D8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x38uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[3] = a3;
  v10[4] = v4;
  v10[2] = a2;
  v12 = *v4;
  v13 = sub_214F30094(a2, a3);
  *(v11 + 48) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_214FED04C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_214FE9184(v18, a4 & 1);
    v13 = sub_214F30094(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_2150A63E0();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[5] = v13;
  if (v19)
  {
    v23 = (*(*v5 + 56) + 16 * v13);
    v24 = *v23;
    v25 = v23[1];
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  *v11 = v24;
  v11[1] = v25;
  return sub_214FA4838;
}

void sub_214FA4838(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = *(*a1 + 48);
  if (v3)
  {
    v5 = v1[5];
    v6 = *v1[4];
    if (v4)
    {
      v7 = (v6[7] + 16 * v5);
      *v7 = v2;
      v7[1] = v3;
    }

    else
    {
      sub_214FECA7C(v5, v1[2], v1[3], v2, v3, v6);
    }
  }

  else if ((*a1)[6])
  {
    v8 = v1[5];
    v9 = *v1[4];
    sub_214F8467C(*(v9 + 48) + 16 * v8);
    sub_214F41144(v8, v9);
  }

  free(v1);
}

uint64_t (*sub_214FA48F0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_214FA4918;
}

uint64_t sub_214FA4924(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_214D7A458(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_214FA49BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EC0, &qword_2150C53F8);
    v3 = sub_2150A5EA0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_214FB18DC(v6);
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

void *sub_214FA4AB4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42F60, &qword_2150C54A8);
  v3 = sub_2150A5EA0();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_214FB1920(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_214FB1920(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_214FA4BBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42F10, &unk_2150C7D60);
    v3 = sub_2150A5EA0();
    v4 = a1 + 32;

    while (1)
    {
      sub_214F43C14(v4, &v13, &qword_27CA41D60, &unk_2150C5450);
      v5 = v13;
      v6 = v14;
      result = sub_214F30094(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_214D72488(&v15, (v3[7] + 32 * result));
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

unint64_t sub_214FA4CEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DC8, &qword_2150C5460);
    v3 = sub_2150A5EA0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_214F30094(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_214FA4E00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F20, &qword_2150C5468);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F28, &unk_2150C5470);
    v8 = sub_2150A5EA0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_214F43C14(v10, v6, &qword_27CA42F20, &qword_2150C5468);
      result = sub_214FB1A60(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2150A5DF0();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_214D72488(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_214FA4FEC(uint64_t a1, uint64_t a2)
{
  result = qword_27CA42E08;
  if (!qword_27CA42E08)
  {
    type metadata accessor for ArgumentDecoder.Decoder(0, a2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42E08);
  }

  return result;
}

unint64_t sub_214FA5058(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F38, &unk_2150C5480);
    v3 = sub_2150A5EA0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_214F30094(v5, v6);
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

unint64_t sub_214FA515C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F50, &qword_2150C5ED0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F58, &qword_2150C54A0);
    v8 = sub_2150A5EA0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_214F43C14(v10, v6, &qword_27CA42F50, &qword_2150C5ED0);
      result = sub_214FB1870(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for NoteEditActivityEvent.Parents(0);
      result = sub_214FA61D0(v6, v15 + *(*(v16 - 8) + 72) * v14);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_214FA532C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F40, &unk_2150C5F20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F48, &unk_2150C5490);
    v8 = sub_2150A5EA0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_214F43C14(v10, v6, &qword_27CA42F40, &unk_2150C5F20);
      result = sub_214FB1870(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for NoteEditActivityEvent.Parents(0);
      result = sub_214FA61D0(v6, v15 + *(*(v16 - 8) + 72) * v14);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_214FA54FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F00, &qword_2150C5438);
    v3 = sub_2150A5EA0();
    v4 = a1 + 32;

    while (1)
    {
      sub_214F43C14(v4, &v11, &qword_27CA42F08, &unk_2150C5440);
      v5 = v11;
      result = sub_214FB6D98();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_214D72488(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_214FA5624(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42ED8, &qword_2150C5410);
    v3 = sub_2150A5EA0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_214FB6D98();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_214FA571C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EF0, &qword_2150C5428);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EF8, &qword_2150C5430);
    v8 = sub_2150A5EA0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_214F43C14(v10, v6, &qword_27CA42EF0, &qword_2150C5428);
      result = sub_214FB1B98(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2150A3750();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_214FA5904(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EE0, &qword_2150C5418);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v23 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EE8, &qword_2150C5420);
    v8 = sub_2150A5EA0();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_214F43C14(v10, v6, &qword_27CA42EE0, &qword_2150C5418);
      result = sub_214FB1B98(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2150A3750();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 40 * v14;
      v18 = *v9;
      v19 = *(v9 + 1);
      *(v17 + 32) = v9[32];
      *v17 = v18;
      *(v17 + 16) = v19;
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_214FA5B00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EC8, &qword_2150C5400);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42ED0, &qword_2150C5408);
    v8 = sub_2150A5EA0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_214F43C14(v10, v6, &qword_27CA42EC8, &qword_2150C5400);
      result = sub_214FB198C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2150A3A00();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

void sub_214FA5CE8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = MEMORY[0x277D84F90];
  if (a4)
  {
    v5 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v5 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v23 = objc_opt_self();
      v6 = [v23 ic_attachmentCharacterString];
      sub_2150A4AD0();

      v7 = sub_214D6E6C4();
      v8 = MEMORY[0x277D837D0];
      v21 = v7;
      v22 = v7;
      v19 = MEMORY[0x277D837D0];
      v20 = v7;
      sub_2150A5890();

      v9 = sub_2150A5870();

      v10 = *(v9 + 16);
      if (v10)
      {
        sub_214F86A20(0, v10, 0);
        v11 = v9 + 40;
        do
        {

          v12 = [v23 ic_attachmentCharacterString];
          sub_2150A4AD0();

          v21 = v7;
          v22 = v7;
          v19 = v8;
          v20 = v7;
          v13 = sub_2150A5890();
          v15 = v14;

          v17 = *(v4 + 16);
          v16 = *(v4 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_214F86A20((v16 > 1), v17 + 1, 1);
          }

          *(v4 + 16) = v17 + 1;
          v18 = v4 + 16 * v17;
          *(v18 + 32) = v13;
          *(v18 + 40) = v15;
          v11 += 16;
          --v10;
        }

        while (v10);
      }
    }
  }
}

unint64_t sub_214FA5F68()
{
  result = qword_27CA42E10;
  if (!qword_27CA42E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42E10);
  }

  return result;
}

unint64_t sub_214FA5FBC()
{
  result = qword_27CA42E18[0];
  if (!qword_27CA42E18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CA42E18);
  }

  return result;
}

uint64_t sub_214FA60A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_214FA6150(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 >= 2)
  {
    if (a5)
    {
      return v5;
    }
  }

  else
  {
  }
}

uint64_t sub_214FA61D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214FA6240(char a1)
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FA62A0(unsigned __int8 a1)
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FA63B0(uint64_t a1, unsigned __int8 a2)
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FA64BC(uint64_t a1, char a2)
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FA6518()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA42F70);
  v1 = __swift_project_value_buffer(v0, qword_27CA42F70);
  if (qword_280C23230 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C23238);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t RealtimeCollaborationSelectionDocument.Selection.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F88, &qword_2150C54B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214FA90B0();
  sub_2150A6590();
  if (!v2)
  {
    v20 = 0;
    sub_214FA9104();
    sub_2150A5FC0();
    if (v19)
    {
      v20 = 2;
      if (v19 == 1)
      {
        sub_214FA9158();
        sub_2150A5FC0();
        (*(v6 + 8))(v9, v5);
        v11 = v19;
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        *a2 = v12 | 0x4000000000000000;
      }

      else
      {
        sub_214FA9158();
        sub_2150A5FC0();
        v15 = v19;
        v20 = 3;
        sub_214FA91AC();
        sub_2150A5FC0();
        (*(v6 + 8))(v9, v5);
        v16 = v19;
        v17 = swift_allocObject();
        *(v17 + 16) = v15;
        *(v17 + 24) = v16;
        *a2 = v17 | 0x8000000000000000;
      }
    }

    else
    {
      v20 = 3;
      sub_214FA9200();
      sub_2150A5FC0();
      (*(v6 + 8))(v9, v5);
      v13 = v19;
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *a2 = v14;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void RealtimeCollaborationSelectionDocument.Selection.encode(to:)(void *a1)
{
  v3 = sub_2150A5C40();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42FB8, &qword_2150C54B8);
  v8 = *(v7 - 8);
  v41 = v7;
  v42 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v37 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_214FA90B0();
  v14 = v11;
  sub_2150A65B0();
  v15 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v20 = v12 & 0x3FFFFFFFFFFFFFFFLL;
      v22 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *(v20 + 24);
      LOBYTE(v44) = 2;
      v43 = 0;
      sub_214FA9254();
      v23 = v40;
      v24 = v41;
      sub_2150A60A0();
      if (!v23)
      {
        LOBYTE(v44) = 1;
        sub_2150A6070();
        v44 = v22;
        v43 = 2;
        sub_214FA92A8();
        sub_2150A60A0();
        v44 = v21;
        v43 = 3;
        sub_214FA92FC();
        sub_2150A60A0();
      }

      (*(v42 + 8))(v14, v24);
    }

    else
    {
      v28 = v41;
      v29 = sub_2150A6020();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42FC0, &qword_2150C54C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2150C25D0;
      *(inited + 56) = &_s9SelectionO10CodingKeysON;
      *(inited + 64) = v13;
      *(inited + 32) = 0;
      v44 = v29;
      sub_215068884(inited);
      sub_2150A5BF0();
      v31 = sub_2150A5C50();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42FC8, &qword_2150C54C8) + 48);
      *(v33 + 3) = &type metadata for RealtimeCollaborationSelectionDocument.Selection;
      *v33 = v12;
      v36 = v38;
      v35 = v39;
      (*(v38 + 16))(&v33[v34], v6, v39);
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D841A8], v31);
      swift_willThrow();
      (*(v36 + 8))(v6, v35);
      (*(v42 + 8))(v14, v28);
    }
  }

  else
  {
    if (v15)
    {
      v25 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v44) = 1;
      v43 = 0;
      sub_214FA9254();
      v17 = v25;
      v26 = v40;
      v27 = v41;
      sub_2150A60A0();
      if (!v26)
      {
        LOBYTE(v44) = 1;
        sub_2150A6070();
        v44 = v17;
        v43 = 2;
        sub_214FA92A8();
        sub_2150A60A0();
      }

      (*(v42 + 8))(v14, v27);
    }

    else
    {
      v16 = *(v12 + 16);
      LOBYTE(v44) = 0;
      v43 = 0;
      sub_214FA9254();
      v17 = v16;
      v18 = v40;
      v19 = v41;
      sub_2150A60A0();
      if (!v18)
      {
        LOBYTE(v44) = 1;
        sub_2150A6070();
        v44 = v17;
        v43 = 3;
        sub_214FA9350();
        sub_2150A60A0();
      }

      (*(v42 + 8))(v14, v19);
    }
  }
}

uint64_t RealtimeCollaborationSelectionDocument.TableSelection.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = sub_2150A3A00();
  v36 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42FF0, &qword_2150C54D0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v34 - v14;
  v16 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_214FA93A4();
  v17 = v37;
  sub_2150A6590();
  if (!v17)
  {
    v37 = v10;
    v18 = v36;
    v40 = 0;
    sub_214FA93F8();
    sub_2150A5FC0();
    if (v39 > 1u)
    {
      if (v39 == 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43020, &qword_2150C54E0);
        v40 = 1;
        sub_214FA958C(&qword_27CA43028, &qword_27CA43008, MEMORY[0x277CC9618], MEMORY[0x277D83B70]);
        sub_2150A5FC0();
        v24 = v39;
        v40 = 2;
        sub_2150A5FC0();
        (*(v12 + 8))(v15, v11);
        v25 = v39;
        v26 = swift_allocObject();
        *(v26 + 16) = v24;
        *(v26 + 24) = v25;
        v21 = v26 | 0x4000000000000000;
      }

      else
      {
        LOBYTE(v39) = 3;
        v34 = sub_214FA94F4(&qword_27CA43008, MEMORY[0x277CC9618]);
        sub_2150A5FC0();
        LOBYTE(v39) = 4;
        sub_2150A5FC0();
        v40 = 5;
        sub_214FA944C();
        sub_2150A5FC0();
        (*(v12 + 8))(v15, v11);
        v27 = v39;
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43018, &qword_2150C54D8);
        v34 = swift_allocBox();
        v30 = v29;
        v31 = *(v28 + 48);
        v32 = *(v28 + 64);
        v33 = *(v18 + 32);
        v33(v29, v37, v3);
        v33(v30 + v31, v7, v3);
        *(v30 + v32) = v27;
        v21 = v34 | 0x6000000000000000;
      }
    }

    else if (v39)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43020, &qword_2150C54E0);
      v40 = 2;
      sub_214FA958C(&qword_27CA43028, &qword_27CA43008, MEMORY[0x277CC9618], MEMORY[0x277D83B70]);
      sub_2150A5FC0();
      (*(v12 + 8))(v15, v11);
      v22 = v39;
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      v21 = v23 | 0x2000000000000000;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43020, &qword_2150C54E0);
      v40 = 1;
      sub_214FA958C(&qword_27CA43028, &qword_27CA43008, MEMORY[0x277CC9618], MEMORY[0x277D83B70]);
      sub_2150A5FC0();
      (*(v12 + 8))(v15, v11);
      v20 = v39;
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
    }

    *v35 = v21;
  }

  return __swift_destroy_boxed_opaque_existential_0(v38);
}

uint64_t RealtimeCollaborationSelectionDocument.TableSelection.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_2150A5C40();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2150A3A00();
  v63 = *(v8 - 8);
  v64 = v8;
  v10 = MEMORY[0x28223BE20](v8, v9);
  v65 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v66 = &v60 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43030, &qword_2150C54E8);
  v15 = *(v14 - 8);
  v68 = v14;
  v69 = v15;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v60 - v17;
  v19 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_214FA93A4();
  v21 = v18;
  sub_2150A65B0();
  v22 = v19 >> 61;
  if ((v19 >> 61) <= 1)
  {
    if (v22)
    {
      v53 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v71) = 1;
      v70 = 0;
      sub_214FA94A0();
      v54 = v67;
      v37 = v68;
      v38 = v18;
      sub_2150A60A0();
      if (!v54)
      {
        v71 = v53;
        v39 = 2;
        goto LABEL_14;
      }
    }

    else
    {
      v35 = *(v19 + 16);
      LOBYTE(v71) = 0;
      v70 = 0;
      sub_214FA94A0();
      v36 = v67;
      v37 = v68;
      v38 = v18;
      sub_2150A60A0();
      if (!v36)
      {
        v71 = v35;
        v39 = 1;
LABEL_14:
        v70 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43020, &qword_2150C54E0);
        sub_214FA958C(&qword_27CA43048, &qword_280C241B8, MEMORY[0x277CC95F8], MEMORY[0x277D83B50]);
        sub_2150A60A0();
      }
    }

    return (*(v69 + 8))(v38, v37);
  }

  if (v22 == 2)
  {
    v40 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v41 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    LOBYTE(v71) = 2;
    v70 = 0;
    sub_214FA94A0();
    v42 = v67;
    v31 = v68;
    v32 = v18;
    sub_2150A60A0();
    if (!v42)
    {
      v71 = v40;
      v70 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43020, &qword_2150C54E0);
      sub_214FA958C(&qword_27CA43048, &qword_280C241B8, MEMORY[0x277CC95F8], MEMORY[0x277D83B50]);
      sub_2150A60A0();
      v71 = v41;
      v70 = 2;
      sub_2150A60A0();
    }
  }

  else
  {
    if (v22 != 3)
    {
      v43 = v68;
      v44 = sub_2150A6020();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42FC0, &qword_2150C54C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2150C25D0;
      *(inited + 56) = &_s14TableSelectionO10CodingKeysON;
      *(inited + 64) = v20;
      *(inited + 32) = 0;
      v71 = v44;
      sub_215068884(inited);
      sub_2150A5BF0();
      v46 = sub_2150A5C50();
      swift_allocError();
      v48 = v47;
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42FC8, &qword_2150C54C8) + 48);
      *(v48 + 3) = &type metadata for RealtimeCollaborationSelectionDocument.TableSelection;
      *v48 = v19;
      v51 = v61;
      v50 = v62;
      (*(v61 + 16))(&v48[v49], v7, v62);
      (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D841A8], v46);
      swift_willThrow();
      (*(v51 + 8))(v7, v50);
      return (*(v69 + 8))(v18, v43);
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43018, &qword_2150C54D8);
    v24 = swift_projectBox();
    v25 = *(v23 + 48);
    v26 = *(v24 + *(v23 + 64));
    v27 = v63;
    v28 = v64;
    v29 = *(v63 + 16);
    v29(v66, v24, v64);
    v30 = v65;
    v29(v65, v24 + v25, v28);
    LOBYTE(v71) = 3;
    v70 = 0;
    sub_214FA94A0();

    v31 = v68;
    v32 = v21;
    v33 = v67;
    sub_2150A60A0();
    if (!v33)
    {
      v55 = v27;
      LOBYTE(v71) = 3;
      sub_214FA94F4(&qword_280C241B8, MEMORY[0x277CC95F8]);
      v56 = v66;
      sub_2150A60A0();
      LOBYTE(v71) = 4;
      v57 = v28;
      v58 = v65;
      sub_2150A60A0();
      v71 = v26;
      v70 = 5;
      sub_214FA9538();
      sub_2150A60A0();
      v59 = *(v55 + 8);
      v59(v58, v57);
      v59(v56, v57);
      (*(v69 + 8))(v32, v31);
    }

    v34 = *(v27 + 8);
    v34(v30, v28);
    v34(v66, v28);
  }

  return (*(v69 + 8))(v32, v31);
}

uint64_t sub_214FA7E7C()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FA7ED8(uint64_t a1)
{
  sub_2150A4BB0();
}

uint64_t sub_214FA7F18()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

unint64_t sub_214FA7F70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214FA9C58(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_214FA7FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214FA9C58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214FA7FFC(uint64_t a1)
{
  v2 = sub_214FA90B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214FA8038(uint64_t a1)
{
  v2 = sub_214FA90B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214FA8074(char *a1, char *a2)
{
  if (qword_2150C5BE0[*a1] == qword_2150C5BE0[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2150A6270();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_214FA80DC()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FA8138(uint64_t a1)
{
  sub_2150A4BB0();
}

uint64_t sub_214FA8178()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

unint64_t sub_214FA81D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214FA9D4C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_214FA82E0(uint64_t a1)
{
  sub_2150A4BB0();
}

unint64_t sub_214FA8328@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214FA9BC0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_214FA838C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214FA9BC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214FA83C0(uint64_t a1)
{
  v2 = sub_214FA93A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214FA83FC(uint64_t a1)
{
  v2 = sub_214FA93A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214FA8444()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FA84A0(uint64_t a1)
{
  sub_2150A4BB0();
}

uint64_t sub_214FA84E0()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

unint64_t sub_214FA8538@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214FA9C0C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_214FA8668(uint64_t a1)
{
  if (qword_27CA41640 != -1)
  {
    swift_once();
  }

  sub_214FA9538();
  return sub_2150A3510();
}

uint64_t sub_214FA885C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_214FA88B0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_27CA41648 != -1)
  {
    swift_once();
  }

  sub_214FA944C();
  sub_2150A34E0();
  result = sub_214F7EDE4(a1, a2);
  *a3 = v7;
  return result;
}

uint64_t _s11NotesShared38RealtimeCollaborationSelectionDocumentC05TableE0O2eeoiySbAE_AEtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v51 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v51 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v51 - v20;
  v22 = *a1;
  v23 = *a2;
  v24 = *a1 >> 61;
  if (v24 <= 1)
  {
    if (!v24)
    {
      if (!(v23 >> 61))
      {
        v39 = *(v22 + 16);
        v40 = *(v23 + 16);

        LOBYTE(v39) = sub_214FAC18C(v39, v40);

        return v39 & 1;
      }

      goto LABEL_23;
    }

    if (v23 >> 61 != 1)
    {
LABEL_23:
      v35 = 0;
      return v35 & 1;
    }

    v42 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v45 = *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

LABEL_18:
    v47 = sub_214FAC18C(v42, v45);

    return v47 & 1;
  }

  if (v24 == 2)
  {
    if (v23 >> 61 != 2)
    {
      goto LABEL_23;
    }

    v43 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v42 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v44 = v23 & 0x1FFFFFFFFFFFFFFFLL;
    v46 = *(v44 + 16);
    v45 = *(v44 + 24);

    if ((sub_214FAC18C(v43, v46) & 1) == 0)
    {

LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (v24 != 3)
  {
    if (v23 == 0x8000000000000000)
    {

      v35 = 1;
      return v35 & 1;
    }

    goto LABEL_23;
  }

  v58 = v19;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43018, &qword_2150C54D8);
  v26 = swift_projectBox();
  if (v23 >> 61 != 3)
  {
    goto LABEL_23;
  }

  v27 = *(v25 + 64);
  v52 = *(v26 + v27);
  v54 = *(v25 + 48);
  v57 = v26;
  v28 = swift_projectBox();
  v29 = *(v28 + v27);
  v53 = v28;
  v55 = v29;
  v56 = v5;
  v30 = *(v5 + 16);
  v31 = v58;
  v30(v21, v57, v58);
  v30(v17, v28, v31);
  v32 = v54;
  v30(v13, v57 + v54, v31);
  v30(v9, v53 + v32, v31);
  v33 = v55;

  if ((sub_2150A39B0() & 1) == 0)
  {

    v34 = v56;
LABEL_21:
    v48 = *(v34 + 8);
    v49 = v9;
    v50 = v58;
    v48(v49, v58);
    v48(v13, v50);
    v48(v17, v50);
    v48(v21, v50);

    goto LABEL_22;
  }

  v34 = v56;
  if ((sub_2150A39B0() & 1) == 0)
  {

    goto LABEL_21;
  }

  v59 = v33;
  v60 = v52;
  v35 = _s11NotesShared38RealtimeCollaborationSelectionDocumentC0E0O2eeoiySbAE_AEtFZ_0(&v60, &v59);
  v36 = *(v34 + 8);
  v37 = v9;
  v38 = v58;
  v36(v37, v58);
  v36(v13, v38);
  v36(v17, v38);
  v36(v21, v38);

  return v35 & 1;
}

uint64_t _s11NotesShared38RealtimeCollaborationSelectionDocumentC0E0O2eeoiySbAE_AEtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v3 == 0xC000000000000000)
      {

        v7 = 1;
        return v7 & 1;
      }

LABEL_15:
      v7 = 0;
      return v7 & 1;
    }

    if (v3 >> 62 != 2)
    {
      goto LABEL_15;
    }

    v8 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v10 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);

    if (![v8 isEqual_])
    {

      goto LABEL_15;
    }

    v17 = v12;
    v18 = v9;
    v13 = _s11NotesShared38RealtimeCollaborationSelectionDocumentC05TableE0O2eeoiySbAE_AEtFZ_0(&v18, &v17);
LABEL_11:
    v7 = v13;

    return v7 & 1;
  }

  if (v4)
  {
    if (v3 >> 62 != 1)
    {
      goto LABEL_15;
    }

    v14 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

    v13 = [v14 isEqual_];
    goto LABEL_11;
  }

  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  v5 = *(v2 + 16);
  v6 = *(v3 + 16);

  v7 = [v5 isEqual_];

  return v7 & 1;
}

unint64_t sub_214FA90B0()
{
  result = qword_27CA42F90;
  if (!qword_27CA42F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42F90);
  }

  return result;
}

unint64_t sub_214FA9104()
{
  result = qword_27CA42F98;
  if (!qword_27CA42F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42F98);
  }

  return result;
}

unint64_t sub_214FA9158()
{
  result = qword_27CA42FA0;
  if (!qword_27CA42FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42FA0);
  }

  return result;
}

unint64_t sub_214FA91AC()
{
  result = qword_27CA42FA8;
  if (!qword_27CA42FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42FA8);
  }

  return result;
}

unint64_t sub_214FA9200()
{
  result = qword_27CA42FB0;
  if (!qword_27CA42FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42FB0);
  }

  return result;
}

unint64_t sub_214FA9254()
{
  result = qword_27CA42FD0;
  if (!qword_27CA42FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42FD0);
  }

  return result;
}

unint64_t sub_214FA92A8()
{
  result = qword_27CA42FD8;
  if (!qword_27CA42FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42FD8);
  }

  return result;
}

unint64_t sub_214FA92FC()
{
  result = qword_27CA42FE0;
  if (!qword_27CA42FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42FE0);
  }

  return result;
}

unint64_t sub_214FA9350()
{
  result = qword_27CA42FE8;
  if (!qword_27CA42FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42FE8);
  }

  return result;
}

unint64_t sub_214FA93A4()
{
  result = qword_27CA42FF8;
  if (!qword_27CA42FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42FF8);
  }

  return result;
}

unint64_t sub_214FA93F8()
{
  result = qword_27CA43000;
  if (!qword_27CA43000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43000);
  }

  return result;
}

unint64_t sub_214FA944C()
{
  result = qword_27CA43010;
  if (!qword_27CA43010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43010);
  }

  return result;
}

unint64_t sub_214FA94A0()
{
  result = qword_27CA43038;
  if (!qword_27CA43038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43038);
  }

  return result;
}

uint64_t sub_214FA94F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2150A3A00();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214FA9538()
{
  result = qword_27CA43040;
  if (!qword_27CA43040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43040);
  }

  return result;
}

uint64_t sub_214FA958C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA43020, &qword_2150C54E0);
    sub_214FA94F4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11NotesShared38RealtimeCollaborationSelectionDocumentC0E0O(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

void *sub_214FA9630(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_11NotesShared38RealtimeCollaborationSelectionDocumentC05TableE0O(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

uint64_t sub_214FA9688(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_214FA96E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_214FA9744(void *result, uint64_t a2)
{
  if (a2 < 4)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 4)) | 0x8000000000000000;
  }

  return result;
}

uint64_t _s14TableSelectionO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14TableSelectionO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_214FA9904()
{
  result = qword_27CA43050;
  if (!qword_27CA43050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43050);
  }

  return result;
}

unint64_t sub_214FA995C()
{
  result = qword_27CA43058;
  if (!qword_27CA43058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43058);
  }

  return result;
}

unint64_t sub_214FA99B4()
{
  result = qword_27CA43060;
  if (!qword_27CA43060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43060);
  }

  return result;
}

unint64_t sub_214FA9A0C()
{
  result = qword_27CA43068;
  if (!qword_27CA43068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43068);
  }

  return result;
}

unint64_t sub_214FA9A64()
{
  result = qword_27CA43070;
  if (!qword_27CA43070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43070);
  }

  return result;
}

unint64_t sub_214FA9ABC()
{
  result = qword_27CA43078;
  if (!qword_27CA43078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43078);
  }

  return result;
}

unint64_t sub_214FA9B14()
{
  result = qword_27CA43080;
  if (!qword_27CA43080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43080);
  }

  return result;
}

unint64_t sub_214FA9B6C()
{
  result = qword_27CA43088;
  if (!qword_27CA43088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43088);
  }

  return result;
}

unint64_t sub_214FA9BC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2150A5EE0();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_214FA9C0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2150A5EE0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_214FA9C58(uint64_t a1, uint64_t a2)
{
  v2 = sub_2150A5EE0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_214FA9CA4()
{
  result = qword_27CA43090;
  if (!qword_27CA43090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43090);
  }

  return result;
}

unint64_t sub_214FA9CF8()
{
  result = qword_27CA43098;
  if (!qword_27CA43098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43098);
  }

  return result;
}

unint64_t sub_214FA9D4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2150A5EE0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_214FA9D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DF0, &qword_2150C2940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t castOrFatalError<A>(_:as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178, &qword_2150C6010);
  v9[0] = swift_allocObject();
  sub_214FA9E9C(a1, v9[0] + 16);
  castOrFatalError<A>(_:as:)(v9, a2, a3, a4);
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

{
  v25 = a2;
  v7 = sub_2150A6540();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2150A57E0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v24 - v15;
  sub_214F50074(a1, v27);
  v17 = swift_dynamicCast();
  v18 = *(*(a3 - 8) + 56);
  if (v17)
  {
    v19 = *(a3 - 8);
    v18(v16, 0, 1, a3);
    return (*(v19 + 32))(a4, v16, a3);
  }

  else
  {
    v18(v16, 1, 1, a3);
    (*(v13 + 8))(v16, v12);
    v27[0] = 0;
    v27[1] = 0xE000000000000000;
    sub_2150A5B20();

    strcpy(v26, "Cannot cast ");
    HIBYTE(v26[6]) = 0;
    v26[7] = -5120;
    sub_214F50074(a1, v27);
    sub_2150A64F0();
    v21 = sub_2150A6100();
    MEMORY[0x2160617E0](v21);

    v22 = *(v8 + 8);
    v22(v11, v7);
    MEMORY[0x2160617E0](544432416, 0xE400000000000000);
    v27[3] = swift_getMetatypeMetadata();
    v27[0] = v25;
    sub_2150A64F0();
    v23 = sub_2150A6100();
    MEMORY[0x2160617E0](v23);

    v22(v11, v7);
    result = sub_2150A5E10();
    __break(1u);
  }

  return result;
}

uint64_t sub_214FA9E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178, &qword_2150C6010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_214FAA25C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v1 = sub_2150A4A90();
  [v0 setName_];

  qword_280C23838 = v0;
}

id sub_214FAA2D4()
{
  if (qword_280C23830 != -1)
  {
    swift_once();
  }

  v1 = qword_280C23838;

  return v1;
}

id static NSFileCoordinator.fileCoordinationOperationQueue.getter()
{
  if (qword_280C23830 != -1)
  {
    swift_once();
  }

  v1 = qword_280C23838;

  return v1;
}

void NSFileCoordinator.coordinateWriting<A>(at:options:accessor:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v27 = a5;
  v31 = a1;
  aBlock[6] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA41DD8, &unk_2150C2A90);
  v8 = sub_2150A6560();
  v30 = sub_2150A57E0();
  v9 = *(v30 - 8);
  v11 = MEMORY[0x28223BE20](v30, v10);
  v29 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v26 - v14;
  v16 = *(v8 - 1);
  (*(v16 + 56))(&v26 - v14, 1, 1, v8);
  v17 = sub_2150A36B0();
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = v15;
  v18[4] = a2;
  v18[5] = a3;
  v19 = swift_allocObject();
  v19[2] = sub_214FAA8C8;
  v19[3] = v18;
  aBlock[4] = sub_214FAA8FC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214FAA924;
  aBlock[3] = &block_descriptor_7;
  v20 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v32 coordinateWritingItemAtURL:v17 options:v31 error:aBlock byAccessor:v20];
  _Block_release(v20);

  v21 = aBlock[0];
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  if (v21)
  {
    swift_willThrow();
    v22 = v30;
  }

  else
  {
    v23 = v29;
    v24 = v30;
    (*(v9 + 16))(v29, v15);
    if ((*(v16 + 48))(v23, 1, v8) == 1)
    {
      __break(1u);
      return;
    }

    v25 = v28;
    sub_214FAAA08(v8, aBlock, v27);
    if (!v25)
    {
      (*(v9 + 8))(v15, v24);

      return;
    }

    v22 = v24;
  }

  (*(v9 + 8))(v15, v22);
}

uint64_t sub_214FAA738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA41DD8, &unk_2150C2A90);
  v9 = sub_2150A6560();
  v10 = sub_2150A57E0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v16 - v13;
  v19 = a5;
  v20 = a3;
  v21 = a4;
  v22 = a1;
  sub_214FBC65C(sub_214FAB930, v18, &v16 - v13);
  (*(*(v9 - 8) + 56))(v14, 0, 1, v9);
  return (*(v11 + 40))(v17, v14, v10);
}

uint64_t sub_214FAA924(uint64_t a1, uint64_t a2)
{
  v3 = sub_2150A3750();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_2150A36F0();
  v8(v7);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_214FAAA08@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t NSFileCoordinator.withCoordinatedAccess<A>(_:queue:accessor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_214FAAB04, 0, 0);
}

uint64_t sub_214FAAB04(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = *(v2 + 32);
  }

  else
  {
    v4 = [objc_opt_self() ic_fileCoordinationOperationQueue];
  }

  *(v2 + 72) = v4;
  v5 = *(v2 + 24);
  v6 = swift_task_alloc();
  *(v2 + 80) = v6;
  v7 = *(v2 + 40);
  *(v6 + 16) = *(v2 + 56);
  *(v6 + 32) = v5;
  *(v6 + 40) = v4;
  *(v6 + 48) = v7;
  v8 = v3;
  v9 = swift_task_alloc();
  *(v2 + 88) = v9;
  *v9 = v2;
  v9[1] = sub_214FAAC44;
  v10 = *(v2 + 56);
  v11 = *(v2 + 16);

  return sub_214D59BB8(v11, 0, 0, sub_214FAAF68, v6, v10);
}

uint64_t sub_214FAAC44()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_214FAADC4;
  }

  else
  {

    v2 = sub_214FAAD60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_214FAAD60()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_214FAADC4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_214FAAE30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_214FAB8D4(0, a2);
  v14 = sub_2150A4EB0();
  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a3;
  v15[6] = a1;
  v17[4] = sub_214FAB920;
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_214FAB124;
  v17[3] = &block_descriptor_21_1;
  v16 = _Block_copy(v17);

  [a2 coordinateAccessWithIntents:v14 queue:a4 byAccessor:v16];
  _Block_release(v16);
}

uint64_t sub_214FAAF78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 - 8);
  v10 = MEMORY[0x28223BE20](a1, a2);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v18 = v22 - v17;
  if (v14)
  {
    swift_willThrow();
    v22[0] = a1;
    v19 = a1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8, &unk_2150C2A90);
    return sub_214FBC5C8(v22, a5, a6, v20, MEMORY[0x277D84950]);
  }

  else
  {
    v15(v16);
    (*(v9 + 16))(v12, v18, a6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8, &unk_2150C2A90);
    sub_214D5BC54(v12, a5, a6);
    return (*(v9 + 8))(v18, a6);
  }
}

void sub_214FAB124(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t NSFileCoordinator.withCoordinatedReading<A>(at:options:queue:accessor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_214FAB1BC, 0, 0);
}

uint64_t sub_214FAB1BC()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20, &qword_2150C3010);
  v5 = swift_allocObject();
  v0[10] = v5;
  *(v5 + 16) = xmmword_2150C26E0;
  v6 = objc_opt_self();
  v7 = sub_2150A36B0();
  v8 = [v6 readingIntentWithURL:v7 options:v4];

  *(v5 + 32) = v8;
  v9 = swift_allocObject();
  v0[11] = v9;
  v9[2] = v2;
  v9[3] = v3;
  v9[4] = v1;

  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_214FAB340;
  v11 = v0[8];
  v12 = v0[5];
  v13 = v0[2];

  return NSFileCoordinator.withCoordinatedAccess<A>(_:queue:accessor:)(v13, v5, v12, sub_214FAB4F4, v9, v11);
}

uint64_t sub_214FAB340()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214FAB488, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_214FAB488()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NSFileCoordinator.withCoordinatedWriting<A>(at:options:queue:accessor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_214FAB540, 0, 0);
}

uint64_t sub_214FAB540()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20, &qword_2150C3010);
  v5 = swift_allocObject();
  v0[10] = v5;
  *(v5 + 16) = xmmword_2150C26E0;
  v6 = objc_opt_self();
  v7 = sub_2150A36B0();
  v8 = [v6 writingIntentWithURL:v7 options:v4];

  *(v5 + 32) = v8;
  v9 = swift_allocObject();
  v0[11] = v9;
  v9[2] = v2;
  v9[3] = v3;
  v9[4] = v1;

  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_214FAB6C4;
  v11 = v0[8];
  v12 = v0[5];
  v13 = v0[2];

  return NSFileCoordinator.withCoordinatedAccess<A>(_:queue:accessor:)(v13, v5, v12, sub_214FAB974, v9, v11);
}

uint64_t sub_214FAB6C4()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214FAB990, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_214FAB80C(unint64_t a1, void (*a2)(void))
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = a1;
  v6 = sub_2150A59D0();
  a1 = v5;
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_9:
    v3 = MEMORY[0x216062780](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(a1 + 32);
LABEL_6:
    v4 = v3;
    a2();

    return;
  }

  __break(1u);
}

unint64_t sub_214FAB8D4(uint64_t a1, uint64_t a2)
{
  result = qword_27CA430A0;
  if (!qword_27CA430A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA430A0);
  }

  return result;
}

uint64_t sub_214FAB930(void *a1)
{
  result = (*(v1 + 24))(*(v1 + 40));
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

void sub_214FAB994(uint64_t a1)
{
  v1 = a1;
  v33 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2150A59D0();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v40 = MEMORY[0x277D84F90];
    sub_214F86ECC(0, v2 & ~(v2 >> 63), 0);
    v35 = v40;
    if (v33)
    {
      v3 = sub_2150A5970();
    }

    else
    {
      v3 = sub_2150A5940();
      v4 = *(v1 + 36);
    }

    v37 = v3;
    v38 = v4;
    v39 = v33 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v31 = v1 + 56;
      v30 = v1 + 64;
      v32 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v37;
        v9 = v39;
        v34 = v38;
        v10 = v1;
        sub_214FB409C(v37, v38, v39, v1, &qword_27CA42488, off_278192FF0);
        v12 = v11;
        v13 = [v11 range];
        v15 = v14;

        v16 = v35;
        v40 = v35;
        v18 = *(v35 + 16);
        v17 = *(v35 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_214F86ECC((v17 > 1), v18 + 1, 1);
          v16 = v40;
        }

        *(v16 + 16) = v18 + 1;
        v19 = v16 + 16 * v18;
        *(v19 + 32) = v13;
        *(v19 + 40) = v15;
        v35 = v16;
        if (v33)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_2150A5990())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43130, &qword_2150C5EF0);
          v6 = sub_2150A5310();
          sub_2150A5A40();
          v6(v36, 0);
          if (v5 == v32)
          {
LABEL_32:
            sub_214D5A7C8(v37, v38, v39);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v20 = 1 << *(v10 + 32);
          if (v8 >= v20)
          {
            goto LABEL_36;
          }

          v21 = v8 >> 6;
          v22 = *(v31 + 8 * (v8 >> 6));
          if (((v22 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v34)
          {
            goto LABEL_38;
          }

          v23 = v22 & (-2 << (v8 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v32;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (v30 + 8 * v21);
            v2 = v32;
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                sub_214D5A7C8(v8, v34, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_31;
              }
            }

            sub_214D5A7C8(v8, v34, 0);
          }

LABEL_31:
          v29 = *(v10 + 36);
          v37 = v20;
          v38 = v29;
          v39 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_214FABCF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v26 = MEMORY[0x277D84F90];
    sub_214F86A20(0, v1, 0);
    v3 = a1 + 64;
    v4 = sub_2150A5940();
    v5 = 0;
    v23 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v24 = v5;
      v25 = *(a1 + 36);
      v8 = *(*(a1 + 56) + 8 * v4);
      v9 = [v8 string];
      v10 = sub_2150A4AD0();
      v12 = v11;

      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_214F86A20((v13 > 1), v14 + 1, 1);
      }

      *(v26 + 16) = v14 + 1;
      v15 = v26 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 64;
      v16 = *(a1 + 64 + 8 * v7);
      if ((v16 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v25 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v17 = v16 & (-2 << (v4 & 0x3F));
      if (v17)
      {
        v6 = __clz(__rbit64(v17)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v7 << 6;
        v19 = v7 + 1;
        v20 = (a1 + 72 + 8 * v7);
        while (v19 < (v6 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_214D5A7C8(v4, v25, 0);
            v6 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        sub_214D5A7C8(v4, v25, 0);
      }

LABEL_4:
      v5 = v24 + 1;
      v4 = v6;
      if (v24 + 1 == v23)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void *static NoteEditActivityEvent.events(for:afterTimestamp:recentTimestamp:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [a1 mergeableString];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    *v9 = a1;
    swift_storeEnumTagMultiPayload();
    v13 = a1;
    v14 = _s11NotesShared21NoteEditActivityEventV6events3for2in14afterTimestamp06recentK0SayACGSo29ICTTMergeableAttributedStringC_AC7ParentsO10Foundation4DateVSgAQtFZ_0(v12, v9, a2, a3);

    sub_214FB64A8(v9, type metadata accessor for NoteEditActivityEvent.Parents);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v14;
}

uint64_t sub_214FAC090(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  if (a2 >> 62)
  {
    v9 = a1;
    v10 = a2;
    v11 = sub_2150A59D0();
    a2 = v10;
    v3 = v11;
    a1 = v9;
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < v2)
  {
    v2 = v3;
  }

  if (v2)
  {
    v4 = a1;
    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F58, &qword_2150C54A0);
    v6 = sub_2150A5EA0();
    a2 = v5;
    v7 = v6;
    a1 = v4;
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
  }

  v12 = v7;
  sub_214FB3350(a1, a2, 1, &v12);
  return v12;
}

uint64_t sub_214FAC18C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v47 = &v36 - v12;
  result = MEMORY[0x28223BE20](v11, v13);
  v16 = &v36 - v15;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v17 = 0;
  v18 = *(a1 + 56);
  v36 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v43 = v5 + 32;
  v45 = a2 + 56;
  v46 = v5 + 16;
  v23 = (v5 + 8);
  v37 = v22;
  v38 = &v36 - v15;
  v39 = v5;
  v40 = a1;
  if (v21)
  {
    while (1)
    {
      v24 = __clz(__rbit64(v21));
      v42 = (v21 - 1) & v21;
LABEL_13:
      v27 = *(a1 + 48);
      v44 = *(v5 + 72);
      v28 = *(v5 + 16);
      v28(v16, v27 + v44 * (v24 | (v17 << 6)), v4);
      (*(v5 + 32))(v47, v16, v4);
      sub_214FB63F8(&qword_280C241B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v29 = sub_2150A49A0();
      v30 = -1 << *(a2 + 32);
      v31 = v29 & ~v30;
      if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
      {
        break;
      }

      v41 = v23 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v32 = a2;
      v33 = ~v30;
      while (1)
      {
        v28(v9, *(v32 + 48) + v31 * v44, v4);
        sub_214FB63F8(&qword_280C241A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v34 = sub_2150A4A80();
        v35 = *v23;
        (*v23)(v9, v4);
        if (v34)
        {
          break;
        }

        v31 = (v31 + 1) & v33;
        if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          v35(v47, v4);
          return 0;
        }
      }

      result = (v35)(v47, v4);
      a2 = v32;
      v5 = v39;
      a1 = v40;
      v22 = v37;
      v16 = v38;
      v21 = v42;
      if (!v42)
      {
        goto LABEL_8;
      }
    }

    (*v23)(v47, v4);
    return 0;
  }

LABEL_8:
  v25 = v17;
  while (1)
  {
    v17 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v17 >= v22)
    {
      return 1;
    }

    v26 = *(v36 + 8 * v17);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v42 = (v26 - 1) & v26;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_214FAC53C(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x2821FCF40](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_214FB3954(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_214D55670(0, &qword_27CA42488, off_278192FF0);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v27 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v28 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v21 = sub_2150A5770();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(*(a2 + 48) + 8 * v23);
        v26 = sub_2150A5780();

        if (v26)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v27;
      v12 = v28;
      v16 = a1;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t NoteEditActivityEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2150A3960();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NoteEditActivityEvent.timestamp.setter(uint64_t a1)
{
  v3 = sub_2150A3960();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

void NoteEditActivityEvent.timeInterval.getter(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v76 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v72 = &v72 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v93 = &v72 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v89 = &v72 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v88 = &v72 - v16;
  v90 = sub_2150A3960();
  v17 = *(v90 - 8);
  v19 = MEMORY[0x28223BE20](v90, v18);
  v74 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v73 = &v72 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v78 = &v72 - v25;
  v26 = *(type metadata accessor for NoteEditActivityEvent(0) + 36);
  v75 = v1;
  v27 = *(v1 + v26);
  v97 = MEMORY[0x277D84F90];
  v28 = v27 + 64;
  v29 = 1 << *(v27 + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & *(v27 + 64);
  v32 = (v29 + 63) >> 6;
  v87 = (v17 + 56);
  v33 = (v17 + 48);
  v79 = v17;
  v80 = (v17 + 32);
  v83 = v27;
  swift_bridgeObjectRetain_n();
  v34 = 0;
  v92 = (v17 + 48);
  v82 = v28;
  v81 = v32;
  if (v31)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_5:
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      goto LABEL_48;
    }

    if (v35 >= v32)
    {

      v64 = v97;
      v65 = v72;
      sub_214FAD11C(v97, v72);
      v66 = *v33;
      v67 = v90;
      if ((*v33)(v65, 1, v90) == 1)
      {
        (*(v79 + 16))(v73, v75, v67);
        v68 = v66(v65, 1, v67) == 1;
        v69 = v65;
        v70 = v76;
        v71 = v74;
        if (!v68)
        {
          sub_214F302D4(v69, &qword_27CA41DD0, &unk_2150C2740);
        }
      }

      else
      {
        (*v80)(v73, v65, v67);
        v70 = v76;
        v71 = v74;
      }

      sub_214FAD3CC(v64, v70);

      if (v66(v70, 1, v67) == 1)
      {
        (*(v79 + 16))(v71, v75, v67);
        if (v66(v70, 1, v67) != 1)
        {
          sub_214F302D4(v70, &qword_27CA41DD0, &unk_2150C2740);
        }
      }

      else
      {
        (*v80)(v71, v70, v67);
      }

      sub_2150A3070();
      return;
    }

    v31 = *(v28 + 8 * v35);
    ++v34;
  }

  while (!v31);
  v34 = v35;
LABEL_9:
  while (2)
  {
    v36 = *(*(v83 + 56) + ((v34 << 9) | (8 * __clz(__rbit64(v31)))));
    v37 = v93;
    v85 = v36;
    if ((v36 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_2150A5980();
      sub_214D55670(0, &qword_27CA42488, off_278192FF0);
      sub_214FB6390();
      sub_2150A5320();
      v39 = v98;
      v38 = v99;
      v40 = v100;
      v41 = v101;
      v42 = v102;
    }

    else
    {
      v43 = -1 << *(v36 + 32);
      v38 = v36 + 56;
      v40 = ~v43;
      v44 = -v43;
      if (v44 < 64)
      {
        v45 = ~(-1 << v44);
      }

      else
      {
        v45 = -1;
      }

      v42 = v45 & *(v36 + 56);
      v39 = v36;
      swift_bridgeObjectRetain_n();
      v41 = 0;
    }

    v31 &= v31 - 1;
    v84 = v40;
    v46 = (v40 + 64) >> 6;
    v86 = MEMORY[0x277D84F90];
    v91 = v39;
    while (1)
    {
      v47 = v41;
      if ((v39 & 0x8000000000000000) == 0)
      {
        break;
      }

      while (1)
      {
        v51 = sub_2150A5A10();
        if (!v51)
        {
          goto LABEL_36;
        }

        v95 = v51;
        sub_214D55670(0, &qword_27CA42488, off_278192FF0);
        swift_dynamicCast();
        v50 = v96;
        v41 = v47;
        v94 = v42;
        if (!v96)
        {
          goto LABEL_36;
        }

LABEL_25:
        v52 = v50;
        v53 = [v52 timestamp];
        if (v53)
        {
          v54 = v53;
          sub_2150A3930();

          v55 = 0;
        }

        else
        {
          v55 = 1;
        }

        v56 = v90;
        (*v87)(v37, v55, 1, v90);
        v57 = v89;
        sub_214FB6CE4(v37, v89, &qword_27CA41DD0, &unk_2150C2740);
        v58 = v57;
        v59 = v88;
        sub_214FB6CE4(v58, v88, &qword_27CA41DD0, &unk_2150C2740);

        if ((*v92)(v59, 1, v56) != 1)
        {
          break;
        }

        sub_214F302D4(v59, &qword_27CA41DD0, &unk_2150C2740);
        v47 = v41;
        v37 = v93;
        v42 = v94;
        v39 = v91;
        if ((v91 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }
      }

      v60 = *v80;
      (*v80)(v78, v59, v90);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_2150601EC(0, *(v86 + 2) + 1, 1, v86);
      }

      v37 = v93;
      v39 = v91;
      v62 = *(v86 + 2);
      v61 = *(v86 + 3);
      if (v62 >= v61 >> 1)
      {
        v86 = sub_2150601EC((v61 > 1), v62 + 1, 1, v86);
      }

      v63 = v86;
      *(v86 + 2) = v62 + 1;
      v60(&v63[((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v62], v78, v90);
      v42 = v94;
    }

LABEL_17:
    v48 = v47;
    v49 = v42;
    v41 = v47;
    if (v42)
    {
LABEL_21:
      v94 = (v49 - 1) & v49;
      v50 = *(*(v39 + 48) + ((v41 << 9) | (8 * __clz(__rbit64(v49)))));
      if (v50)
      {
        goto LABEL_25;
      }

LABEL_36:
      sub_214F420F4(v39);

      sub_2150689CC(v86);
      v33 = v92;
      v28 = v82;
      v32 = v81;
      if (v31)
      {
        continue;
      }

      goto LABEL_5;
    }

    break;
  }

  while (1)
  {
    v41 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v41 >= v46)
    {
      goto LABEL_36;
    }

    v49 = *(v38 + 8 * v41);
    ++v48;
    if (v49)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_214FAD11C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2150A3960();
  v6 = MEMORY[0x28223BE20](*(v4 - 8), v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v24 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(v10 + 16);
    v15 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v27 = v10;
    v25 = a2;
    v26 = v14;
    v14(&v24 - v11, v15, v4);
    result = v27;
    if (v13 == 1)
    {
LABEL_3:
      v17 = v25;
      (*(result + 32))(v25, v12, v4);
      return (*(v27 + 56))(v17, 0, 1, v4);
    }

    else
    {
      v19 = (v27 + 32);
      v20 = 1;
      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v26(v8, v15 + *(result + 72) * v20, v4);
        sub_214FB63F8(&qword_27CA44B10, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v22 = sub_2150A4A30();
        v23 = *(v27 + 8);
        if (v22)
        {
          v23(v12, v4);
          (*v19)(v12, v8, v4);
        }

        else
        {
          v23(v8, v4);
        }

        ++v20;
        result = v27;
        if (v21 == v13)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v18 = *(v10 + 56);

    return v18(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_214FAD3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2150A3960();
  v6 = MEMORY[0x28223BE20](*(v4 - 8), v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v24 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(v10 + 16);
    v15 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v27 = v10;
    v25 = a2;
    v26 = v14;
    v14(&v24 - v11, v15, v4);
    result = v27;
    if (v13 == 1)
    {
LABEL_3:
      v17 = v25;
      (*(result + 32))(v25, v12, v4);
      return (*(v27 + 56))(v17, 0, 1, v4);
    }

    else
    {
      v19 = (v27 + 32);
      v20 = 1;
      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v26(v8, v15 + *(result + 72) * v20, v4);
        sub_214FB63F8(&qword_27CA44B10, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v22 = sub_2150A4A30();
        v23 = *(v27 + 8);
        if (v22)
        {
          v23(v12, v4);
          (*v19)(v12, v8, v4);
        }

        else
        {
          v23(v8, v4);
        }

        ++v20;
        result = v27;
        if (v21 == v13)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v18 = *(v10 + 56);

    return v18(a2, 1, 1, v4);
  }

  return result;
}

uint64_t NoteEditActivityEvent.object.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NoteEditActivityEvent(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t NoteEditActivityEvent.object.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = v1 + *(type metadata accessor for NoteEditActivityEvent(0) + 20);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t NoteEditActivityEvent.participant.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NoteEditActivityEvent(0) + 24));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

__n128 NoteEditActivityEvent.participant.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = (v1 + *(type metadata accessor for NoteEditActivityEvent(0) + 24));

  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v2;
  v4[1].n128_u64[1] = v3;
  return result;
}

uint64_t NoteEditActivityEvent.associatedAttachmentIds.getter()
{
  v1 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v38 - v8;
  v10 = *(v0 + *(type metadata accessor for NoteEditActivityEvent(0) + 32));
  v11 = v6;
  v12 = v10;
  v14 = v10 + 64;
  v13 = *(v10 + 64);
  v15 = 1 << *(v12 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v20 = 0;
  v40 = MEMORY[0x277D84F90];
  v41 = v12;
  v42 = v2;
  v43 = v1;
  for (i = v9; v17; *(v35 + 5) = v36)
  {
LABEL_11:
    while (1)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      sub_214FB6440(*(v12 + 48) + *(v2 + 72) * (v22 | (v20 << 6)), v9, type metadata accessor for NoteEditActivityEvent.Parents);
      sub_214FB6440(v9, v11, type metadata accessor for NoteEditActivityEvent.Parents);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      sub_214FB64A8(v11, type metadata accessor for NoteEditActivityEvent.Parents);
LABEL_6:
      result = sub_214FB64A8(v9, type metadata accessor for NoteEditActivityEvent.Parents);
      if (!v17)
      {
        goto LABEL_7;
      }
    }

    v45 = *v11;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B0, &unk_2150C7D90);
    v24 = *(v23 + 48);
    v25 = *(v23 + 64);
    v26 = sub_2150A3A00();
    v27 = *(*(v26 - 8) + 8);
    v27(v11 + v25, v26);
    v27(v11 + v24, v26);
    v28 = v45;
    v29 = [v28 identifier];
    if (!v29)
    {

      v2 = v42;
      v9 = i;
      v12 = v41;
      goto LABEL_6;
    }

    v30 = v29;
    v45 = sub_2150A4AD0();
    v39 = v31;

    sub_214FB64A8(i, type metadata accessor for NoteEditActivityEvent.Parents);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21505F4D0(0, *(v40 + 2) + 1, 1, v40);
      v40 = result;
    }

    v2 = v42;
    v12 = v41;
    v33 = *(v40 + 2);
    v32 = *(v40 + 3);
    if (v33 >= v32 >> 1)
    {
      result = sub_21505F4D0((v32 > 1), v33 + 1, 1, v40);
      v40 = result;
    }

    v34 = v40;
    *(v40 + 2) = v33 + 1;
    v35 = &v34[16 * v33];
    v9 = i;
    v36 = v39;
    *(v35 + 4) = v45;
  }

LABEL_7:
  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      v37 = sub_214F8448C(v40);

      return v37;
    }

    v17 = *(v14 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_214FADC14@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v35 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v32 - v11;
  v13 = sub_2150A3960();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v32 - v20;
  sub_214F43C14(a1, v12, &qword_27CA41DD0, &unk_2150C2740);
  v22 = v14[6];
  if (v22(v12, 1, v13) == 1)
  {
    sub_214F302D4(v35, &qword_27CA41DD0, &unk_2150C2740);
    sub_214F302D4(v12, &qword_27CA41DD0, &unk_2150C2740);
  }

  else
  {
    v33 = a1;
    v34 = a3;
    v23 = v14[4];
    v23(v21, v12, v13);
    v24 = v35;
    sub_214F43C14(v35, v9, &qword_27CA41DD0, &unk_2150C2740);
    if (v22(v9, 1, v13) == 1)
    {
      sub_2150A3860();
      if (v22(v9, 1, v13) != 1)
      {
        sub_214F302D4(v9, &qword_27CA41DD0, &unk_2150C2740);
      }
    }

    else
    {
      v23(v18, v9, v13);
    }

    v25 = sub_2150A3900();
    sub_214F302D4(v24, &qword_27CA41DD0, &unk_2150C2740);
    v26 = v14[1];
    v26(v18, v13);
    v26(v21, v13);
    a1 = v33;
    a3 = v34;
    if (v25)
    {
      result = sub_214F302D4(v33, &qword_27CA41DD0, &unk_2150C2740);
      v28 = 1;
      goto LABEL_13;
    }
  }

  v29 = v22(a1, 1, v13) == 1;
  v30 = a1;
  v31 = v29;
  result = sub_214F302D4(v30, &qword_27CA41DD0, &unk_2150C2740);
  v28 = 2 * v31;
LABEL_13:
  *a3 = v28;
  return result;
}

NotesShared::NoteEditActivityEvent::Kinds_optional __swiftcall NoteEditActivityEvent.Kinds.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2150A5EE0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NoteEditActivityEvent.Kinds.rawValue.getter()
{
  v1 = 0x746E65636572;
  if (*v0 != 1)
  {
    v1 = 0x726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_214FAE010(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x746E65636572;
  if (v2 != 1)
  {
    v4 = 0x726568746FLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746E65636572;
  if (*a2 != 1)
  {
    v8 = 0x726568746FLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2150A6270();
  }

  return v11 & 1;
}

uint64_t sub_214FAE104()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FAE1A0(uint64_t a1)
{
  sub_2150A4BB0();
}

uint64_t sub_214FAE228()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

void sub_214FAE2CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x746E65636572;
  if (v2 != 1)
  {
    v5 = 0x726568746FLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t NoteEditActivityEvent.kind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NoteEditActivityEvent(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t NoteEditActivityEvent.kind.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for NoteEditActivityEvent(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

void NoteEditActivityEvent.Parents.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2150A3A00();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_214FB6440(v2, v15, type metadata accessor for NoteEditActivityEvent.Parents);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = *v15;
  if (EnumCaseMultiPayload == 1)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B0, &unk_2150C7D90);
    v19 = *(v18 + 64);
    v20 = *(v4 + 32);
    v20(v11, v15 + *(v18 + 48), v3);
    v20(v8, v15 + v19, v3);
    MEMORY[0x216063080](1);
    sub_2150A5790();
    sub_214FB63F8(&qword_280C241B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_2150A49B0();
    sub_2150A49B0();

    v21 = *(v4 + 8);
    v21(v8, v3);
    v21(v11, v3);
  }

  else
  {
    MEMORY[0x216063080](0);
    sub_2150A5790();
  }
}

uint64_t NoteEditActivityEvent.Parents.hashValue.getter()
{
  sub_2150A64B0();
  NoteEditActivityEvent.Parents.hash(into:)(v1);
  return sub_2150A64E0();
}

uint64_t sub_214FAE694()
{
  sub_2150A64B0();
  NoteEditActivityEvent.Parents.hash(into:)(v1);
  return sub_2150A64E0();
}

uint64_t sub_214FAE6D8()
{
  sub_2150A64B0();
  NoteEditActivityEvent.Parents.hash(into:)(v1);
  return sub_2150A64E0();
}

uint64_t NoteEditActivityEvent.strings.getter()
{
  type metadata accessor for NoteEditActivityEvent(0);
}

uint64_t NoteEditActivityEvent.strings.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NoteEditActivityEvent(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t NoteEditActivityEvent.edits.getter()
{
  type metadata accessor for NoteEditActivityEvent(0);
}

uint64_t NoteEditActivityEvent.edits.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NoteEditActivityEvent(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

char *NoteEditActivityEvent.substrings.getter()
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B8, &unk_2150C5C80);
  MEMORY[0x28223BE20](v57, v1);
  v3 = &v51 - v2;
  v52 = type metadata accessor for NoteEditActivityEvent(0);
  v53 = v0;
  v4 = *(v0 + *(v52 + 36));
  v51 = MEMORY[0x277D84F90];
  v59 = MEMORY[0x277D84F90];
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v58 = v4;

  v11 = 0;
  v54 = 0;
  v55 = v9;
  v56 = v3;
  while (v8)
  {
LABEL_11:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v11 << 6);
    v15 = v58;
    v16 = *(v58 + 48);
    v17 = type metadata accessor for NoteEditActivityEvent.Parents(0);
    sub_214FB6440(v16 + *(*(v17 - 8) + 72) * v14, v3, type metadata accessor for NoteEditActivityEvent.Parents);
    v18 = *(*(v15 + 56) + 8 * v14);
    *&v3[*(v57 + 48)] = v18;
    v19 = v18 & 0xC000000000000001;
    if ((v18 & 0xC000000000000001) != 0)
    {
      v20 = sub_2150A5970();
      v22 = v21;
      v23 = sub_2150A5A30();
      v25 = v24;
      v26 = MEMORY[0x216062560](v20, v22, v23, v24);

      sub_214D5A7C8(v23, v25, 1);
      if (v26)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v27 = 0;
      v28 = (v18 + 56);
      v20 = 1 << *(v18 + 32);
      v29 = (v20 + 63) >> 6;
      while (1)
      {
        v31 = *v28++;
        v30 = v31;
        if (v31)
        {
          break;
        }

        v27 -= 64;
        if (!--v29)
        {
          v22 = *(v18 + 36);

          goto LABEL_4;
        }
      }

      v32 = __clz(__rbit64(v30));
      v22 = *(v18 + 36);

      if (v32 - v20 == v27)
      {
LABEL_4:
        sub_214D5A7C8(v20, v22, v19 != 0);
        v3 = v56;
        goto LABEL_5;
      }

      v20 = v32 - v27;
    }

    sub_214FB409C(v20, v22, v19 != 0, v18, &qword_27CA42488, off_278192FF0);
    v34 = v33;
    sub_214D5A7C8(v20, v22, v19 != 0);
    v35 = v54;
    sub_214FAB994(v18);
    v37 = v36;
    v54 = v35;
    result = [v34 range];
    v38 = result;
    v40 = v39;
    v41 = *(v37 + 16);
    if (v41)
    {
      v42 = (v37 + 40);
      v3 = v56;
      while (1)
      {
        v43 = &v38[v40];
        if (__OFADD__(v38, v40))
        {
          break;
        }

        v44 = *(v42 - 1);
        if (__OFADD__(v44, *v42))
        {
          goto LABEL_41;
        }

        if (v43 <= v44 + *v42)
        {
          v43 = (v44 + *v42);
        }

        if (v38 >= v44)
        {
          v38 = *(v42 - 1);
        }

        v40 = v43 - v38;
        if (__OFSUB__(v43, v38))
        {
          goto LABEL_42;
        }

        v42 += 2;
        if (!--v41)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v3 = v56;
LABEL_32:

    v45 = *(v53 + *(v52 + 32));
    if (*(v45 + 16) && (v46 = sub_214FB1870(v3), (v47 & 1) != 0))
    {
      v48 = *(*(v45 + 56) + 8 * v46);
      v49 = [v48 attributedSubstringFromRange_];

      result = sub_214F302D4(v3, &qword_27CA430B8, &unk_2150C5C80);
      v9 = v55;
      if (v49)
      {
        MEMORY[0x216061A60](result);
        if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2150A4F10();
        }

        result = sub_2150A4F70();
        v51 = v59;
      }
    }

    else
    {

LABEL_5:
      result = sub_214F302D4(v3, &qword_27CA430B8, &unk_2150C5C80);
      v9 = v55;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return sub_214FAC090(v50, v51);
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_214FAECF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  v53 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v54 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v52 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43110, &unk_2150C5EB8);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  result = MEMORY[0x28223BE20](v12, v13);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v55 = &v49 - v15;
  v50 = a1;
  v51 = v16;
  v17 = 0;
  v20 = *(a1 + 64);
  v19 = a1 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  while (v23)
  {
    v56 = (v23 - 1) & v23;
    v25 = __clz(__rbit64(v23)) | (v17 << 6);
    v26 = v51;
LABEL_16:
    v32 = v50;
    v33 = v52;
    sub_214FB6440(*(v50 + 48) + *(v53 + 72) * v25, v52, type metadata accessor for NoteEditActivityEvent.Parents);
    v34 = *(*(v32 + 56) + 8 * v25);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B8, &unk_2150C5C80);
    v36 = *(v35 + 48);
    sub_214FB6BB4(v33, v26, type metadata accessor for NoteEditActivityEvent.Parents);
    *(v26 + v36) = v34;
    (*(*(v35 - 8) + 56))(v26, 0, 1, v35);

    v29 = v55;
LABEL_17:
    sub_214FB6CE4(v26, v29, &qword_27CA43110, &unk_2150C5EB8);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B8, &unk_2150C5C80);
    v38 = (*(*(v37 - 8) + 48))(v29, 1, v37);
    v39 = v38 == 1;
    if (v38 == 1)
    {
      return v39;
    }

    v40 = *(v37 + 48);
    v41 = v54;
    sub_214FB6BB4(v29, v54, type metadata accessor for NoteEditActivityEvent.Parents);
    v42 = *(v29 + v40);
    sub_214FB1870(v41);
    v44 = v43;
    sub_214FB64A8(v41, type metadata accessor for NoteEditActivityEvent.Parents);
    if ((v44 & 1) == 0)
    {

      return 0;
    }

    sub_214FAC53C(v45, v42);
    v47 = v46;

    v23 = v56;
    if ((v47 & 1) == 0)
    {
      return v39;
    }
  }

  if (v24 <= v17 + 1)
  {
    v27 = v17 + 1;
  }

  else
  {
    v27 = v24;
  }

  v28 = v27 - 1;
  v26 = v51;
  v29 = v55;
  while (1)
  {
    v30 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v30 >= v24)
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B8, &unk_2150C5C80);
      (*(*(v48 - 8) + 56))(v26, 1, 1, v48);
      v56 = 0;
      v17 = v28;
      goto LABEL_17;
    }

    v31 = *(v19 + 8 * v30);
    ++v17;
    if (v31)
    {
      v56 = (v31 - 1) & v31;
      v25 = __clz(__rbit64(v31)) | (v30 << 6);
      v17 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t NoteEditActivityEvent.hash(into:)(uint64_t a1)
{
  sub_2150A3960();
  sub_214FB63F8(&qword_27CA424C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2150A49B0();
  v3 = type metadata accessor for NoteEditActivityEvent(0);
  sub_2150A4BB0();

  sub_2150A4BB0();
  sub_2150A4BB0();
  v4 = *(v1 + *(v3 + 36));

  return sub_214FB3A54(a1, v4);
}

uint64_t NoteEditActivityEvent.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_2150A6520();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DB0, &qword_2150C4CB0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for NoteEditActivityEvent(0);
  MEMORY[0x28223BE20](v9, v10);
  sub_214FB6440(v1, &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NoteEditActivityEvent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F48, &unk_2150C2B50);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2150C5C70;
  *(v12 + 32) = 0x6D617473656D6974;
  *(v12 + 40) = 0xE900000000000070;
  v13 = sub_2150A3960();
  *(v12 + 72) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 48));
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v1, v13);
  *(v12 + 80) = 0x7463656A626FLL;
  *(v12 + 88) = 0xE600000000000000;
  v15 = v1 + v9[5];
  v16 = *(v15 + 8);
  v17 = *(v15 + 16);
  *(v12 + 96) = *v15;
  *(v12 + 104) = v16;
  *(v12 + 112) = v17;
  *(v12 + 120) = &type metadata for ActivityEventObject;
  *(v12 + 128) = 0x7069636974726170;
  *(v12 + 136) = 0xEB00000000746E61;
  v18 = (v1 + v9[6]);
  v19 = *v18;
  v20 = v18[1];
  v22 = v18[2];
  v21 = v18[3];
  *(v12 + 168) = &type metadata for ActivityEventParticipant;
  v23 = swift_allocObject();
  *(v12 + 144) = v23;
  v23[2] = v19;
  v23[3] = v20;
  v23[4] = v22;
  v23[5] = v21;
  *(v12 + 176) = 1684957547;
  *(v12 + 184) = 0xE400000000000000;
  *(v12 + 192) = *(v1 + v9[7]);
  *(v12 + 216) = &type metadata for NoteEditActivityEvent.Kinds;
  *(v12 + 224) = 0x7374786574;
  *(v12 + 232) = 0xE500000000000000;

  v24 = NoteEditActivityEvent.substrings.getter();
  sub_214FABCF8(v24);
  v26 = v25;

  v34 = v26;

  sub_214FB240C(&v34);

  v27 = v34;
  *(v12 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
  *(v12 + 240) = v27;
  v28 = sub_2150A6500();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
  (*(v31 + 104))(v30, *MEMORY[0x277D84C38], v32);
  return sub_2150A6550();
}

uint64_t NoteEditActivityEvent.hashValue.getter()
{
  sub_2150A64B0();
  sub_2150A3960();
  sub_214FB63F8(&qword_27CA424C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2150A49B0();
  v1 = type metadata accessor for NoteEditActivityEvent(0);
  sub_2150A4BB0();

  sub_2150A4BB0();
  sub_2150A4BB0();
  sub_214FB3A54(v3, *(v0 + *(v1 + 36)));
  return sub_2150A64E0();
}

uint64_t sub_214FAF780(uint64_t a1, int *a2)
{
  sub_2150A3960();
  sub_214FB63F8(&qword_27CA424C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2150A49B0();
  sub_2150A4BB0();

  sub_2150A4BB0();
  sub_2150A4BB0();
  v5 = *(v2 + a2[9]);

  return sub_214FB3A54(a1, v5);
}

uint64_t sub_214FAF890(uint64_t a1, int *a2)
{
  sub_2150A64B0();
  sub_2150A3960();
  sub_214FB63F8(&qword_27CA424C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2150A49B0();
  sub_2150A4BB0();

  sub_2150A4BB0();
  sub_2150A4BB0();
  sub_214FB3A54(v5, *(v2 + a2[9]));
  return sub_2150A64E0();
}

uint64_t sub_214FAF9B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a8;
  v42 = a5;
  v39 = a7;
  v43 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v40 = *(v10 - 8);
  v11 = *(v40 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v37 - v15;
  v37 = &v37 - v15;
  v17 = sub_2150A3A00();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v21 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = [a4 table];
  (*(v18 + 16))(v21, a1, v17);
  sub_214F43C14(v39, v16, &qword_27CA41DD0, &unk_2150C2740);
  sub_214F43C14(v41, &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27CA41DD0, &unk_2150C2740);
  v22 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v23 = (v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v40 + 80);
  v26 = (v25 + v24 + 8) & ~v25;
  v27 = (v11 + v25 + v26) & ~v25;
  v28 = swift_allocObject();
  *(v28 + 16) = a4;
  (*(v18 + 32))(v28 + v22, v21, v17);
  v30 = v42;
  v29 = v43;
  *(v28 + v23) = v42;
  *(v28 + v24) = v29;
  sub_214FB6CE4(v37, v28 + v26, &qword_27CA41DD0, &unk_2150C2740);
  sub_214FB6CE4(v38, v28 + v27, &qword_27CA41DD0, &unk_2150C2740);
  v31 = swift_allocObject();
  *(v31 + 16) = sub_214FB6A60;
  *(v31 + 24) = v28;
  aBlock[4] = sub_214FB6BAC;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21506A584;
  aBlock[3] = &block_descriptor_8;
  v32 = _Block_copy(aBlock);
  v33 = a4;
  v34 = v30;

  v35 = v44;
  [v44 enumerateRowsWithBlock_];

  _Block_release(v32);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
  }

  return result;
}

void sub_214FAFD6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a4 table];
  v33 = a5;
  v20 = sub_2150A39A0();
  v21 = sub_2150A39A0();
  v22 = [v19 mergeableStringForColumnID:v20 rowID:v21];

  if (v22)
  {
    v32 = a9;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B0, &unk_2150C7D90);
    v24 = *(v23 + 48);
    v31[1] = a7;
    v25 = *(v23 + 64);
    *v18 = a6;
    v26 = sub_2150A3A00();
    v27 = *(v26 - 8);
    v31[0] = a8;
    v28 = *(v27 + 16);
    v28(&v18[v24], v33, v26);
    v28(&v18[v25], a1, v26);
    swift_storeEnumTagMultiPayload();
    v29 = a6;
    v30 = _s11NotesShared21NoteEditActivityEventV6events3for2in14afterTimestamp06recentK0SayACGSo29ICTTMergeableAttributedStringC_AC7ParentsO10Foundation4DateVSgAQtFZ_0(v22, v18, v31[0], v32);
    sub_215068764(v30);

    sub_214FB64A8(v18, type metadata accessor for NoteEditActivityEvent.Parents);
  }
}

id sub_214FAFF58@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12)
{
  v128 = a8;
  v149 = a7;
  v138 = a6;
  v139 = a9;
  v136 = a5;
  v140 = a4;
  v141 = a3;
  v142 = sub_2150A3960();
  v146 = *(v142 - 8);
  v15 = MEMORY[0x28223BE20](v142, v14);
  v134 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v133 = &v127 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v137 = &v127 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v24 = MEMORY[0x28223BE20](v22 - 8, v23);
  v131 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v130 = &v127 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v129 = &v127 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v132 = &v127 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v135 = &v127 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v41 = &v127 - v40;
  MEMORY[0x28223BE20](v39, v42);
  v148 = &v127 - v43;
  v44 = sub_2150A3A00();
  v45 = *(v44 - 8);
  v47 = MEMORY[0x28223BE20](v44, v46);
  v49 = &v127 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v50);
  v52 = &v127 - v51;
  v53 = *a1;
  v54 = [*a1 replicaID];
  sub_2150A39C0();

  LOBYTE(a2) = sub_215051668(v52, a2);
  v55 = *(v45 + 8);
  v145 = v44;
  v143 = v55;
  *&v144 = v45 + 8;
  v55(v52, v44);
  v147 = v53;
  if ((a2 & 1) != 0 || (v56 = [v53 replicaID], sub_2150A39C0(), v56, v57 = sub_2150A39A0(), v143(v52, v145), v58 = objc_msgSend(v141, sel_trustsTimestampsFromReplicaID_, v57), v57, v58))
  {
    v59 = [v53 timestamp];
    if (v59)
    {
      v60 = v59;
      sub_2150A3930();

      v61 = 0;
    }

    else
    {
      v61 = 1;
    }

    v62 = v146;
    v63 = v140;
    v64 = v142;
    (*(v146 + 56))(v41, v61, 1, v142);
    v65 = v41;
    v66 = v64;
    sub_214FB6CE4(v65, v148, &qword_27CA41DD0, &unk_2150C2740);
  }

  else
  {
    v62 = v146;
    v66 = v142;
    (*(v146 + 56))(v148, 1, 1, v142);
    v63 = v140;
  }

  v67 = [v147 replicaID];
  sub_2150A39C0();

  if (*(v63 + 16) && (v68 = sub_214FB198C(v49), (v69 & 1) != 0))
  {
    v70 = (*(v63 + 56) + 16 * v68);
    v71 = *v70;
    v141 = v70[1];

    v143(v49, v145);
  }

  else
  {
    v72 = v49;
    v73 = v145;
    v74 = v143;
    v143(v72, v145);
    v75 = [v147 replicaID];
    sub_2150A39C0();

    v76 = sub_2150A39A0();
    v74(v52, v73);
    v77 = [v141 userIDForReplicaID_];

    if (!v77)
    {
      sub_214F302D4(v148, &qword_27CA41DD0, &unk_2150C2740);
LABEL_29:
      v100 = type metadata accessor for NoteEditActivityEvent(0);
      return (*(*(v100 - 8) + 56))(v139, 1, 1, v100);
    }

    v71 = sub_2150A4AD0();
    v141 = v78;
  }

  v79 = v148;
  v80 = v135;
  sub_214F43C14(v136, v135, &qword_27CA41DD0, &unk_2150C2740);
  v81 = v62;
  v82 = *(v62 + 48);
  if (v82(v80, 1, v66) == 1)
  {
    sub_214F302D4(v80, &qword_27CA41DD0, &unk_2150C2740);
  }

  else
  {
    v83 = v80;
    v84 = *(v81 + 32);
    v84(v137, v83, v66);
    v85 = v132;
    sub_214F43C14(v79, v132, &qword_27CA41DD0, &unk_2150C2740);
    if (v82(v85, 1, v66) == 1)
    {
      v86 = v133;
      sub_2150A37F0();
      if (v82(v85, 1, v66) != 1)
      {
        sub_214F302D4(v85, &qword_27CA41DD0, &unk_2150C2740);
      }
    }

    else
    {
      v86 = v133;
      v84(v133, v85, v66);
    }

    v87 = v137;
    v88 = sub_2150A3900();
    v89 = v86;
    v90 = *(v146 + 8);
    v90(v89, v66);
    v90(v87, v66);
    v79 = v148;
    if ((v88 & 1) == 0)
    {
LABEL_28:
      sub_214F302D4(v79, &qword_27CA41DD0, &unk_2150C2740);

      goto LABEL_29;
    }
  }

  result = [v138 attributedString];
  if (!result)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    return result;
  }

  v92 = result;
  v93 = [v147 range];
  v95 = [v92 attributedSubstringFromRange_];

  v96 = [v95 string];
  if (!v96)
  {
    sub_2150A4AD0();
    v96 = sub_2150A4A90();
  }

  v97 = [v96 ic_containsNonWhitespaceCharacters];

  if (!v97)
  {
    goto LABEL_28;
  }

  v140 = a12;
  v98 = v129;
  sub_214F43C14(v79, v129, &qword_27CA41DD0, &unk_2150C2740);
  v99 = v82(v98, 1, v66);
  v127 = v71;
  if (v99 == 1)
  {
    sub_2150A37F0();
    if (v82(v98, 1, v66) != 1)
    {
      sub_214F302D4(v98, &qword_27CA41DD0, &unk_2150C2740);
    }
  }

  else
  {
    (*(v146 + 32))(v134, v98, v66);
  }

  v101 = v141;

  v137 = a10;

  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  sub_2150A3990();
  v143(v52, v145);

  v102 = v130;
  sub_214F43C14(v79, v130, &qword_27CA41DD0, &unk_2150C2740);
  v103 = v131;
  sub_214F43C14(a11, v131, &qword_27CA41DD0, &unk_2150C2740);
  sub_214FADC14(v102, v103, &v150);
  LODWORD(v145) = v150;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43150, &qword_2150C5F10);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F50, &qword_2150C5ED0);
  v105 = (*(*(v104 - 8) + 80) + 32) & ~*(*(v104 - 8) + 80);
  v106 = swift_allocObject();
  v144 = xmmword_2150C25D0;
  *(v106 + 16) = xmmword_2150C25D0;
  v107 = v106 + v105;
  v108 = v140;
  sub_214FB6440(v140, v106 + v105, type metadata accessor for NoteEditActivityEvent.Parents);
  result = [v138 attributedString];
  if (!result)
  {
    goto LABEL_35;
  }

  v109 = result;

  *(v107 + *(v104 + 48)) = v109;
  v143 = sub_214FA515C(v106);
  swift_setDeallocating();
  sub_214F302D4(v107, &qword_27CA42F50, &qword_2150C5ED0);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43158, &qword_2150C5F18);
  v110 = v101;
  v111 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F40, &unk_2150C5F20) - 8);
  v112 = (*(*v111 + 80) + 32) & ~*(*v111 + 80);
  v113 = swift_allocObject();
  *(v113 + 16) = v144;
  v114 = v113 + v112;
  v115 = v111[14];
  sub_214FB6440(v108, v113 + v112, type metadata accessor for NoteEditActivityEvent.Parents);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20, &qword_2150C3010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C26E0;
  v117 = v147;
  *(inited + 32) = v147;
  v118 = v117;
  sub_214F80B60(inited);
  v120 = v119;
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v114 + v115) = v120;
  v121 = sub_214FA532C(v113);
  swift_setDeallocating();
  sub_214F302D4(v114, &qword_27CA42F40, &unk_2150C5F20);
  swift_deallocClassInstance();
  sub_214F302D4(v148, &qword_27CA41DD0, &unk_2150C2740);
  v122 = v139;
  (*(v146 + 32))(v139, v134, v142);
  v123 = type metadata accessor for NoteEditActivityEvent(0);
  v124 = v122 + v123[5];
  *v124 = v149 & 1;
  v125 = v137;
  *(v124 + 8) = v128;
  *(v124 + 16) = v125;
  v126 = (v122 + v123[6]);
  *v126 = v127;
  v126[1] = v110;
  v126[2] = 0;
  v126[3] = 0;
  *(v122 + v123[7]) = v145;
  *(v122 + v123[8]) = v143;
  *(v122 + v123[9]) = v121;
  return (*(*(v123 - 1) + 56))(v122, 0, 1, v123);
}

uint64_t ICNote.hasRecentExternalEdits.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v65 - v3;
  v5 = sub_2150A3960();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v69 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v65 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v84 = &v65 - v15;
  v75 = type metadata accessor for NoteEditActivityEvent(0);
  v82 = *(v75 - 8);
  v17 = MEMORY[0x28223BE20](v75, v16);
  v78 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v81 = &v65 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v77 = &v65 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v65 - v26;
  v83 = v0;
  result = ICCloudSyncingObject.editActivityEvents.getter();
  v76 = *(result + 16);
  if (!v76)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_17:

    v84 = *(v30 + 16);
    if (!v84)
    {
      v46 = MEMORY[0x277D84F90];
LABEL_37:

      v64 = *(v46 + 16);

      return v64 != 0;
    }

    v45 = 0;
    v46 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v45 >= *(v30 + 16))
      {
        goto LABEL_39;
      }

      v47 = v81;
      v48 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v49 = *(v82 + 72);
      sub_214FB6440(v30 + v48 + v49 * v45, v81, type metadata accessor for NoteEditActivityEvent);
      v50 = (v47 + *(v75 + 24));
      v52 = *v50;
      v51 = v50[1];

      v53 = [v83 cloudAccount];
      if (!v53)
      {
        break;
      }

      v54 = v53;
      v55 = [v53 userRecordName];

      v56 = sub_2150A4AD0();
      v58 = v57;

      if (v52 == v56 && v51 == v58)
      {
      }

      else
      {
        v60 = sub_2150A6270();

        if ((v60 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      result = sub_214FB64A8(v81, type metadata accessor for NoteEditActivityEvent);
LABEL_21:
      if (v84 == ++v45)
      {
        goto LABEL_37;
      }
    }

LABEL_31:
    sub_214FB6BB4(v81, v78, type metadata accessor for NoteEditActivityEvent);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = v46;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_214F86E88(0, *(v46 + 16) + 1, 1);
      v46 = v85;
    }

    v63 = *(v46 + 16);
    v62 = *(v46 + 24);
    if (v63 >= v62 >> 1)
    {
      sub_214F86E88((v62 > 1), v63 + 1, 1);
      v46 = v85;
    }

    *(v46 + 16) = v63 + 1;
    result = sub_214FB6BB4(v78, v46 + v48 + v63 * v49, type metadata accessor for NoteEditActivityEvent);
    goto LABEL_21;
  }

  v74 = v13;
  v29 = 0;
  v68 = (v6 + 32);
  v71 = (v6 + 56);
  v72 = (v6 + 16);
  v66 = (v6 + 48);
  v30 = MEMORY[0x277D84F90];
  v70 = (v6 + 8);
  v67 = v4;
  v73 = result;
  while (v29 < *(result + 16))
  {
    v31 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v79 = *(v82 + 72);
    v80 = v30;
    sub_214FB6440(result + v31 + v79 * v29, v27, type metadata accessor for NoteEditActivityEvent);
    v32 = v27;
    (*v72)(v84, v27, v5);
    v33 = [v83 lastActivityRecentUpdatesViewedDate];
    if (v33)
    {
      v34 = v69;
      v35 = v33;
      sub_2150A3930();

      v36 = *v68;
      (*v68)(v4, v34, v5);
      (*v71)(v4, 0, 1, v5);
      v37 = v74;
      v36(v74, v4, v5);
    }

    else
    {
      (*v71)(v4, 1, 1, v5);
      v37 = v74;
      sub_2150A37F0();
      if ((*v66)(v4, 1, v5) != 1)
      {
        sub_214F302D4(v4, &qword_27CA41DD0, &unk_2150C2740);
      }
    }

    v38 = v4;
    v39 = v84;
    v40 = sub_2150A3900();
    v41 = *v70;
    (*v70)(v37, v5);
    v41(v39, v5);
    if (v40)
    {
      v27 = v32;
      sub_214FB6BB4(v32, v77, type metadata accessor for NoteEditActivityEvent);
      v30 = v80;
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v85 = v30;
      if ((v42 & 1) == 0)
      {
        sub_214F86E88(0, *(v30 + 16) + 1, 1);
        v30 = v85;
      }

      v44 = *(v30 + 16);
      v43 = *(v30 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_214F86E88((v43 > 1), v44 + 1, 1);
        v30 = v85;
      }

      *(v30 + 16) = v44 + 1;
      sub_214FB6BB4(v77, v30 + v31 + v44 * v79, type metadata accessor for NoteEditActivityEvent);
      v4 = v67;
    }

    else
    {
      v27 = v32;
      sub_214FB64A8(v32, type metadata accessor for NoteEditActivityEvent);
      v4 = v38;
      v30 = v80;
    }

    ++v29;
    result = v73;
    if (v76 == v29)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

id sub_214FB141C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43128, &qword_2150C5EE8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v29 - v5;
  v7 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  if (*(v1 + 56) != 1)
  {
    v29 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = a1;
    v14 = *v1;
    v15 = v1[1];
    v17 = v1[2];
    v16 = v1[3];
    v18 = v1[4];
    if (v18)
    {
      v19 = v1[3];
LABEL_14:
      v23 = (v18 - 1) & v18;
      sub_214FB6440(*(v14 + 48) + *(v8 + 72) * (__clz(__rbit64(v18)) | (v19 << 6)), v6, type metadata accessor for NoteEditActivityEvent.Parents);
      (*(v8 + 56))(v6, 0, 1, v7);
      v22 = v19;
LABEL_15:
      *v1 = v14;
      v1[1] = v15;
      v1[2] = v17;
      v1[3] = v22;
      v1[4] = v23;
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_214F302D4(v6, &qword_27CA43128, &qword_2150C5EE8);
        v8 = v30;
LABEL_21:
        *(v1 + 56) = 1;
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F50, &qword_2150C5ED0);
        return (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
      }

      v17 = v29;
      sub_214FB6BB4(v6, v29, type metadata accessor for NoteEditActivityEvent.Parents);
      v6 = v1[5];
      v8 = v30;
      if (!(v6 >> 62))
      {
        result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_19;
      }
    }

    else
    {
      v20 = (v17 + 64) >> 6;
      if (v20 <= v16 + 1)
      {
        v21 = v16 + 1;
      }

      else
      {
        v21 = (v17 + 64) >> 6;
      }

      v22 = v21 - 1;
      while (1)
      {
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v19 >= v20)
        {
          (*(v8 + 56))(v6, 1, 1, v7);
          v23 = 0;
          goto LABEL_15;
        }

        v18 = *(v15 + 8 * v19);
        ++v16;
        if (v18)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    result = sub_2150A59D0();
LABEL_19:
    v24 = v1[6];
    if (v24 == result)
    {
      sub_214FB64A8(v17, type metadata accessor for NoteEditActivityEvent.Parents);
      goto LABEL_21;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x216062780](v1[6], v6);
    }

    else
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v24 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_35:
        __break(1u);
        return result;
      }

      result = *(v6 + 8 * v24 + 32);
    }

    v26 = result;
    if (!__OFADD__(v24, 1))
    {
      v1[6] = v24 + 1;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F50, &qword_2150C5ED0);
      v28 = *(v27 + 48);
      sub_214FB6BB4(v17, v8, type metadata accessor for NoteEditActivityEvent.Parents);
      *(v8 + v28) = v26;
      return (*(*(v27 - 8) + 56))(v8, 0, 1, v27);
    }

    goto LABEL_34;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F50, &qword_2150C5ED0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a1, 1, 1, v11);
}

unint64_t sub_214FB1870(uint64_t a1)
{
  sub_2150A64B0();
  NoteEditActivityEvent.Parents.hash(into:)(v4);
  v2 = sub_2150A64E0();

  return sub_214FB1C6C(a1, v2);
}

unint64_t sub_214FB18DC(uint64_t a1)
{
  v2 = sub_2150A5770();

  return sub_214FB1DC8(a1, v2);
}

unint64_t sub_214FB1920(uint64_t a1)
{
  sub_2150A64B0();
  MEMORY[0x216063080](a1);
  v2 = sub_2150A64E0();

  return sub_214FB1E9C(a1, v2);
}

unint64_t sub_214FB198C(uint64_t a1)
{
  sub_2150A3A00();
  v2 = MEMORY[0x277CC95F0];
  sub_214FB63F8(&qword_280C241B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_2150A49A0();
  return sub_214FB226C(a1, v3, MEMORY[0x277CC95F0], &qword_280C241A8, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_214FB1A60(uint64_t a1)
{
  sub_2150A5DF0();
  v2 = sub_2150A49A0();

  return sub_214FB1F08(a1, v2);
}

unint64_t sub_214FB1AC4(uint64_t a1)
{
  v2 = sub_2150A5A50();

  return sub_214FB20A0(a1, v2);
}

unint64_t sub_214FB1B08(uint64_t a1)
{
  sub_2150A4AD0();
  sub_2150A64B0();
  sub_2150A4BB0();
  v2 = sub_2150A64E0();

  return sub_214FB2168(a1, v2);
}

unint64_t sub_214FB1B98(uint64_t a1)
{
  sub_2150A3750();
  v2 = MEMORY[0x277CC9260];
  sub_214FB63F8(&qword_280C241C8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v3 = sub_2150A49A0();
  return sub_214FB226C(a1, v3, MEMORY[0x277CC9260], &qword_280C241C0, v2, MEMORY[0x277CC9278]);
}

unint64_t sub_214FB1C6C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for NoteEditActivityEvent.Parents(0) - 8;
  MEMORY[0x28223BE20](v5, v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      sub_214FB6440(*(v2 + 48) + v13 * v11, v9, type metadata accessor for NoteEditActivityEvent.Parents);
      v14 = _s11NotesShared21NoteEditActivityEventV7ParentsO2eeoiySbAE_AEtFZ_0(v9, a1);
      sub_214FB64A8(v9, type metadata accessor for NoteEditActivityEvent.Parents);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_214FB1DC8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_214D55670(0, &qword_280C24528, 0x277CCABD0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2150A5780();

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

unint64_t sub_214FB1E9C(uint64_t a1, uint64_t a2)
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

unint64_t sub_214FB1F08(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_2150A5DF0();
  MEMORY[0x28223BE20](v4, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_2150A4A80();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_214FB20A0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_214FB69B0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x216062620](v9, a1);
      sub_214FB6A0C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_214FB2168(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_2150A4AD0();
      v8 = v7;
      if (v6 == sub_2150A4AD0() && v8 == v9)
      {
        break;
      }

      v11 = sub_2150A6270();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_214FB226C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_214FB63F8(v24, v25, v26);
      v20 = sub_2150A4A80();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_214FB240C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_214F422E0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_214FB2478(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_214FB2478(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2150A60E0();
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
        v5 = sub_2150A4F50();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_214FB2640(v7, v8, a1, v4);
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
    return sub_214FB2570(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_214FB2570(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_2150A6270(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
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

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_214FB2640(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_214F41D00(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_214FB2C1C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_2150A6270();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_2150A6270();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21505F5DC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_21505F5DC((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_214FB2C1C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_214F41D00(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_214F41C74(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_2150A6270(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_214FB2C1C(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_2150A6270() & 1) != 0)
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
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_2150A6270() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void sub_214FB2E44(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v55 = a4;
  v7 = sub_2150A3A00();
  v50 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v56 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43168, &qword_2150C5F38);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v49 = &v43 - v16;
  v17 = *(a1 + 16);

  v51 = a2;

  v47 = v17;
  if (!v17)
  {
LABEL_19:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return;
  }

  v18 = 0;
  v48 = v50 + 16;
  v54 = (v50 + 32);
  v19 = (v51 + 40);
  v45 = a1;
  v46 = v7;
  v44 = v13;
  while (1)
  {
    if (v18 >= *(a1 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_2150A63E0();
      __break(1u);
      goto LABEL_27;
    }

    v20 = *(v50 + 72);
    (*(v50 + 16))(v13, a1 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + v20 * v18, v7);
    v21 = *(v51 + 16);
    if (v18 == v21)
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      (*(v50 + 8))(v13, v7);
      return;
    }

    if (v18 >= v21)
    {
      goto LABEL_23;
    }

    v52 = *(v19 - 1);
    v53 = v20;
    v22 = *v19;
    v23 = *v54;
    v24 = v49;
    (*v54)(v49, v13, v7);
    v25 = v56;
    v23(v56, v24, v7);
    v26 = *v55;

    v28 = sub_214FB198C(v25);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_24;
    }

    v32 = v27;
    if (v26[3] < v31)
    {
      break;
    }

    if (a3)
    {
      if (v27)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_214FED6E8();
      if (v32)
      {
        goto LABEL_17;
      }
    }

LABEL_13:
    v35 = v56;
    v36 = *v55;
    *(*v55 + 8 * (v28 >> 6) + 64) |= 1 << v28;
    v7 = v46;
    v23((v36[6] + v28 * v53), v35, v46);
    v37 = (v36[7] + 16 * v28);
    *v37 = v52;
    v37[1] = v22;
    v38 = v36[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_25;
    }

    ++v18;
    v36[2] = v40;
    v19 += 2;
    a3 = 1;
    v13 = v44;
    a1 = v45;
    if (v47 == v18)
    {
      goto LABEL_19;
    }
  }

  sub_214FE9CD8(v31, a3 & 1);
  v33 = sub_214FB198C(v56);
  if ((v32 & 1) != (v34 & 1))
  {
    goto LABEL_26;
  }

  v28 = v33;
  if ((v32 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  v41 = swift_allocError();
  swift_willThrow();
  v59 = v41;
  v42 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8, &unk_2150C2A90);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    (*(v50 + 8))(v56, v46);

    return;
  }

LABEL_27:
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_2150A5B20();
  MEMORY[0x2160617E0](0xD00000000000001BLL, 0x80000002150E4190);
  sub_2150A5DB0();
  MEMORY[0x2160617E0](39, 0xE100000000000000);
  sub_2150A5E10();
  __break(1u);
}

void sub_214FB3350(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v55 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  v8 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43118, &qword_2150C5EC8);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v54 - v14;
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  *&v60 = a1;
  *(&v60 + 1) = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v61 = v17;
  *v62 = v20 & v18;
  *&v62[8] = a2;
  *&v62[16] = 0;
  v62[24] = 0;

  v56 = a2;

  sub_214FB141C(v15);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F50, &qword_2150C5ED0);
  if ((*(*(v21 - 8) + 48))(v15, 1, v21) == 1)
  {
LABEL_5:
    v57 = v60;
    v58 = v61;
    v59[0] = *v62;
    *(v59 + 9) = *&v62[9];
    sub_214F302D4(&v57, &qword_27CA43120, &unk_2150C5ED8);

    return;
  }

  v54 = v8;
  v22 = *(v21 + 48);
  sub_214FB6BB4(v15, v11, type metadata accessor for NoteEditActivityEvent.Parents);
  v23 = *&v15[v22];
  v24 = *a4;
  v26 = sub_214FB1870(v11);
  v27 = v24[2];
  v28 = (v25 & 1) == 0;
  v29 = v27 + v28;
  if (__OFADD__(v27, v28))
  {
    goto LABEL_25;
  }

  v30 = v25;
  if (v24[3] >= v29)
  {
    if (a3)
    {
      if (v25)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_214FEDB08();
      if (v30)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v35 = *a4;
    *(*a4 + 8 * (v26 >> 6) + 64) |= 1 << v26;
    v36 = *(v54 + 72);
    sub_214FB6BB4(v11, v35[6] + v36 * v26, type metadata accessor for NoteEditActivityEvent.Parents);
    *(v35[7] + 8 * v26) = v23;
    v38 = v35[2];
    v37 = v35 + 2;
    v39 = v38 + 1;
    if (!__OFADD__(v38, 1))
    {
      do
      {
        *v37 = v39;
        sub_214FB141C(v15);
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F50, &qword_2150C5ED0);
        if ((*(*(v40 - 8) + 48))(v15, 1, v40) == 1)
        {
          goto LABEL_5;
        }

        v41 = *(v40 + 48);
        sub_214FB6BB4(v15, v11, type metadata accessor for NoteEditActivityEvent.Parents);
        v23 = *&v15[v41];
        v42 = *a4;
        v43 = sub_214FB1870(v11);
        v45 = v42[2];
        v46 = (v44 & 1) == 0;
        v47 = __OFADD__(v45, v46);
        v48 = v45 + v46;
        if (v47)
        {
          goto LABEL_25;
        }

        v49 = v44;
        if (v42[3] < v48)
        {
          sub_214FEA394(v48, 1);
          v43 = sub_214FB1870(v11);
          if ((v49 & 1) != (v50 & 1))
          {
            goto LABEL_26;
          }
        }

        if (v49)
        {
          goto LABEL_13;
        }

        v51 = *a4;
        *(*a4 + 8 * (v43 >> 6) + 64) |= 1 << v43;
        v52 = v43;
        sub_214FB6BB4(v11, v51[6] + v36 * v43, type metadata accessor for NoteEditActivityEvent.Parents);
        *(v51[7] + 8 * v52) = v23;
        v53 = v51[2];
        v37 = v51 + 2;
        v39 = v53 + 1;
      }

      while (!__OFADD__(v53, 1));
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_214FEA394(v29, a3 & 1);
  v31 = sub_214FB1870(v11);
  if ((v30 & 1) != (v32 & 1))
  {
LABEL_26:
    sub_2150A63E0();
    __break(1u);
    goto LABEL_27;
  }

  v26 = v31;
  if ((v30 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v33 = swift_allocError();
  swift_willThrow();

  v63 = v33;
  v34 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8, &unk_2150C2A90);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_214FB64A8(v11, type metadata accessor for NoteEditActivityEvent.Parents);
    v57 = v60;
    v58 = v61;
    v59[0] = *v62;
    *(v59 + 9) = *&v62[9];
    sub_214F302D4(&v57, &qword_27CA43120, &unk_2150C5ED8);

    return;
  }

LABEL_27:
  *&v57 = 0;
  *(&v57 + 1) = 0xE000000000000000;
  sub_2150A5B20();
  MEMORY[0x2160617E0](0xD00000000000001BLL, 0x80000002150E4190);
  sub_2150A5DB0();
  MEMORY[0x2160617E0](39, 0xE100000000000000);
  sub_2150A5E10();
  __break(1u);
}

void sub_214FB3954(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_2150A59D0())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_2150A5A20();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_214FB3A54(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v3 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v47 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43110, &unk_2150C5EB8);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v43 = a2;
  v44 = &v41 - v12;
  v13 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a2 + 64);
  v17 = (v14 + 63) >> 6;

  v19 = 0;
  v46 = v10;
  v48 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v24 = v23 | (v20 << 6);
      v25 = v43;
      v26 = v47;
      sub_214FB6440(*(v43 + 48) + *(v42 + 72) * v24, v47, type metadata accessor for NoteEditActivityEvent.Parents);
      v27 = *(*(v25 + 56) + 8 * v24);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B8, &unk_2150C5C80);
      v29 = *(v28 + 48);
      v30 = v26;
      v31 = v46;
      sub_214FB6BB4(v30, v46, type metadata accessor for NoteEditActivityEvent.Parents);
      *(v31 + v29) = v27;
      (*(*(v28 - 8) + 56))(v31, 0, 1, v28);

      v22 = v20;
      v32 = v31;
LABEL_13:
      v33 = v44;
      sub_214FB6CE4(v32, v44, &qword_27CA43110, &unk_2150C5EB8);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B8, &unk_2150C5C80);
      if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
      {
        break;
      }

      v35 = *(v34 + 48);
      v36 = v47;
      sub_214FB6BB4(v33, v47, type metadata accessor for NoteEditActivityEvent.Parents);
      v37 = *(v33 + v35);
      v38 = *(v45 + 48);
      v49[2] = *(v45 + 32);
      v49[3] = v38;
      v50 = *(v45 + 64);
      v39 = *(v45 + 16);
      v49[0] = *v45;
      v49[1] = v39;
      NoteEditActivityEvent.Parents.hash(into:)(v49);
      sub_214FB64A8(v36, type metadata accessor for NoteEditActivityEvent.Parents);
      sub_214FB3E70(v49, v37);

      result = sub_2150A64E0();
      v19 = v22;
      v48 ^= result;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x216063080](v48);
  }

  else
  {
LABEL_5:
    if (v17 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v17;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B8, &unk_2150C5C80);
        v32 = v46;
        (*(*(v40 - 8) + 56))(v46, 1, 1, v40);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_214FB3E70(__int128 *a1, uint64_t a2)
{
  sub_2150A64E0();
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_2150A5980();
    sub_214D55670(0, &qword_27CA42488, off_278192FF0);
    sub_214FB6390();
    sub_2150A5320();
    a2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a2 + 32);
    v3 = a2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a2 + 56);

    v5 = 0;
  }

  v10 = 0;
  v11 = (v4 + 64) >> 6;
  while (a2 < 0)
  {
    if (!sub_2150A5A10())
    {
LABEL_20:
      sub_214F420F4(a2);
      MEMORY[0x216063080](v10);
      return;
    }

    sub_214D55670(0, &qword_27CA42488, off_278192FF0);
    swift_dynamicCast();
    v14 = v17;
LABEL_10:
    v15 = sub_2150A5770();

    v10 ^= v15;
  }

  if (v6)
  {
    v12 = v5;
LABEL_9:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v17 = *(*(a2 + 48) + ((v12 << 9) | (8 * v13)));
    v14 = v17;
    goto LABEL_10;
  }

  v16 = v5;
  while (1)
  {
    v12 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      goto LABEL_20;
    }

    v6 = *(v3 + 8 * v12);
    ++v16;
    if (v6)
    {
      v5 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_214FB409C(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x2160625B0](a1, a2, v11);
      sub_214D55670(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_214D55670(0, a5, a6);
    if (sub_2150A59B0() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2150A59C0();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_2150A5770();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_2150A5780();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}