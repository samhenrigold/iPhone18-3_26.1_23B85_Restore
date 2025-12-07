void sub_1B0C70D4C(uint64_t a1, uint64_t a2, char a3, unsigned __int8 *a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, void *a7)
{
  if (a1)
  {
    v13 = a2 - a1;
  }

  else
  {
    v13 = 0;
  }

  v14 = swift_allocObject();
  if (v13 < 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v15 = v14;
  v14[2] = 0;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = a2;
  if (a3)
  {
    sub_1B0C72368(" ", "", v14);
  }

  sub_1B0C72368("multipart/", "", v15);
  sub_1B0C724CC(a7[1], a7[2], sub_1B0C76E5C);
  swift_beginAccess();
  v16 = v15[2];
  v17 = *(a4 + 1);
  if (v17 < 1)
  {
    goto LABEL_13;
  }

  v18 = __OFADD__(v17, v16);
  v19 = v17 + v16;
  if (v18)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v19 < 79)
  {
LABEL_13:
    if ((v16 & 0x8000000000000000) == 0)
    {
      if (a1)
      {
        v21 = v16 + a1;
      }

      else
      {
        v21 = 0;
      }

      a5(a1, v21);
      v22 = sub_1B0433338(0, v16, a1, a2);
      v23 = *(a4 + 1);
      v18 = __OFADD__(v23, v22);
      v24 = v23 + v22;
      if (!v18)
      {
        goto LABEL_29;
      }

      __break(1u);
      goto LABEL_20;
    }

    goto LABEL_31;
  }

  sub_1B0C72700(*a4, a5);
  a5("\t", "");
  if (a3)
  {
    if (v16 < 1)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v20 = 1;
    goto LABEL_22;
  }

LABEL_20:
  if ((v16 & 0x8000000000000000) == 0)
  {
    v20 = 0;
LABEL_22:
    if (a1)
    {
      v25 = a1 + v16;
    }

    else
    {
      v25 = 0;
    }

    if (a1)
    {
      v26 = a1 + v20;
    }

    else
    {
      v26 = 0;
    }

    a5(v26, v25);
    v27 = sub_1B0433338(v20, v16, a1, a2);
    v24 = v27 + 1;
    if (!__OFADD__(v27, 1))
    {
LABEL_29:
      *(a4 + 1) = v24;

      sub_1B0717020(a7);
      return;
    }

    goto LABEL_33;
  }

LABEL_35:
  __break(1u);
}

void *sub_1B0C70F40(const char *a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v16 = a2 - a1;
  }

  else
  {
    v16 = 0;
  }

  v17 = swift_allocObject();
  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v18 = v17;
  v17[2] = 0;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = a2;
  if (a3)
  {
    sub_1B0C72368(" ", "", v17);
  }

  sub_1B0C72368("text/", "", v18);
  sub_1B0C7495C(a5, a6, v18);
  if (*(a8[3] + 16))
  {
    LOBYTE(v32) = 59;
    sub_1B0C72368(&v32, &v32 + 1, v18);
  }

  swift_beginAccess();
  v19 = v18[2];
  v20 = *(a4 + 1);
  if (v20 >= 1)
  {
    v21 = __OFADD__(v20, v19);
    v22 = v20 + v19;
    if (v21)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v22 >= 79)
    {
      sub_1B0C74C44(*a4);
      v34 = MEMORY[0x1E69E6290];
      v35 = MEMORY[0x1E6969DF8];
      v32 = "\t";
      v33 = "";
      __swift_project_boxed_opaque_existential_0(&v32, MEMORY[0x1E69E6290]);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v32);
      if (a3)
      {
        if (v19 < 1)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
        }

        v23 = 1;
        goto LABEL_23;
      }

LABEL_21:
      if (v19 < 0)
      {
        goto LABEL_34;
      }

      v23 = 0;
LABEL_23:
      v28 = &a1[v23];
      v29 = &a1[v19];
      if (!a1)
      {
        v29 = 0;
      }

      v34 = MEMORY[0x1E69E6290];
      v35 = MEMORY[0x1E6969DF8];
      if (!a1)
      {
        v28 = 0;
      }

      v32 = v28;
      v33 = v29;
      __swift_project_boxed_opaque_existential_0(&v32, MEMORY[0x1E69E6290]);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v32);
      v30 = sub_1B0433338(v23, v19, a1, a2);
      v27 = v30 + 1;
      if (!__OFADD__(v30, 1))
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    }
  }

  if (v19 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v24 = &a1[v19];
  if (!a1)
  {
    v24 = 0;
  }

  v34 = MEMORY[0x1E69E6290];
  v35 = MEMORY[0x1E6969DF8];
  v32 = a1;
  v33 = v24;
  __swift_project_boxed_opaque_existential_0(&v32, MEMORY[0x1E69E6290]);
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v32);
  v25 = sub_1B0433338(0, v19, a1, a2);
  v26 = *(a4 + 1);
  v21 = __OFADD__(v26, v25);
  v27 = v26 + v25;
  if (v21)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_28:
  *(a4 + 1) = v27;

  return sub_1B071728C(a8);
}

void *sub_1B0C71208(const char *a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, void *a10)
{
  *&v34[23] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v16 = a2 - a1;
  }

  else
  {
    v16 = 0;
  }

  v17 = swift_allocObject();
  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v18 = v17;
  v17[2] = 0;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = a2;
  if (a3)
  {
    sub_1B0C72368(" ", "", v17);
  }

  sub_1B0C72368("text/", "", v18);
  sub_1B0C724CC(a7, a8, sub_1B0C76E5C);
  if (*(a10[3] + 16))
  {
    v33 = 59;
    sub_1B0C72368(&v33, v34, v18);
  }

  swift_beginAccess();
  v19 = v18[2];
  v20 = *(a4 + 1);
  if (v20 >= 1)
  {
    v21 = __OFADD__(v20, v19);
    v22 = v20 + v19;
    if (v21)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v22 >= 79)
    {
      sub_1B0C72700(*a4, a5);
      a5("\t", "");
      if (a3)
      {
        if (v19 < 1)
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
        }

        v23 = 1;
        goto LABEL_24;
      }

LABEL_22:
      if (v19 < 0)
      {
        goto LABEL_37;
      }

      v23 = 0;
LABEL_24:
      if (a1)
      {
        v28 = &a1[v19];
      }

      else
      {
        v28 = 0;
      }

      if (a1)
      {
        v29 = &a1[v23];
      }

      else
      {
        v29 = 0;
      }

      a5(v29, v28);
      v30 = sub_1B0433338(v23, v19, a1, a2);
      v27 = v30 + 1;
      if (!__OFADD__(v30, 1))
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }
  }

  if (v19 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a1)
  {
    v24 = &a1[v19];
  }

  else
  {
    v24 = 0;
  }

  a5(a1, v24);
  v25 = sub_1B0433338(0, v19, a1, a2);
  v26 = *(a4 + 1);
  v21 = __OFADD__(v26, v25);
  v27 = v26 + v25;
  if (v21)
  {
    __break(1u);
    goto LABEL_22;
  }

LABEL_31:
  *(a4 + 1) = v27;

  return sub_1B071728C(a10);
}

void *sub_1B0C71488(const char *a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t *a5, void *a6, uint64_t a7)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v13 = a2 - a1;
  }

  else
  {
    v13 = 0;
  }

  v14 = swift_allocObject();
  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v15 = v14;
  v14[2] = 0;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = a2;
  if (a3)
  {
    sub_1B0C72368(" ", "", v14);
  }

  sub_1B0C72368("message/", "", v15);
  sub_1B0C7495C(*a5, a5[1], v15);
  if (*(a6[3] + 16))
  {
    LOBYTE(v29) = 59;
    sub_1B0C72368(&v29, &v29 + 1, v15);
  }

  swift_beginAccess();
  v16 = v15[2];
  v17 = *(a4 + 1);
  if (v17 >= 1)
  {
    v18 = __OFADD__(v17, v16);
    v19 = v17 + v16;
    if (v18)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v19 >= 79)
    {
      sub_1B0C74C44(*a4);
      v31 = MEMORY[0x1E69E6290];
      v32 = MEMORY[0x1E6969DF8];
      v29 = "\t";
      v30 = "";
      __swift_project_boxed_opaque_existential_0(&v29, MEMORY[0x1E69E6290]);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v29);
      if (a3)
      {
        if (v16 < 1)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
        }

        v20 = 1;
        goto LABEL_23;
      }

LABEL_21:
      if (v16 < 0)
      {
        goto LABEL_34;
      }

      v20 = 0;
LABEL_23:
      v25 = &a1[v20];
      v26 = &a1[v16];
      if (!a1)
      {
        v26 = 0;
      }

      v31 = MEMORY[0x1E69E6290];
      v32 = MEMORY[0x1E6969DF8];
      if (!a1)
      {
        v25 = 0;
      }

      v29 = v25;
      v30 = v26;
      __swift_project_boxed_opaque_existential_0(&v29, MEMORY[0x1E69E6290]);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v29);
      v27 = sub_1B0433338(v20, v16, a1, a2);
      v24 = v27 + 1;
      if (!__OFADD__(v27, 1))
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    }
  }

  if (v16 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v21 = &a1[v16];
  if (!a1)
  {
    v21 = 0;
  }

  v31 = MEMORY[0x1E69E6290];
  v32 = MEMORY[0x1E6969DF8];
  v29 = a1;
  v30 = v21;
  __swift_project_boxed_opaque_existential_0(&v29, MEMORY[0x1E69E6290]);
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v29);
  v22 = sub_1B0433338(0, v16, a1, a2);
  v23 = *(a4 + 1);
  v18 = __OFADD__(v23, v22);
  v24 = v23 + v22;
  if (v18)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_28:
  *(a4 + 1) = v24;

  sub_1B0C67068(a5);
  return sub_1B071728C(a6);
}

void *sub_1B0C71748(const char *a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t *a7, void *a8)
{
  *&v32[23] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v14 = a2 - a1;
  }

  else
  {
    v14 = 0;
  }

  v15 = swift_allocObject();
  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v16 = v15;
  v15[2] = 0;
  v15[3] = v14;
  v15[4] = a1;
  v15[5] = a2;
  if (a3)
  {
    sub_1B0C72368(" ", "", v15);
  }

  sub_1B0C72368("message/", "", v16);
  sub_1B0C724CC(*a7, a7[1], sub_1B0C76E5C);
  if (*(a8[3] + 16))
  {
    v31 = 59;
    sub_1B0C72368(&v31, v32, v16);
  }

  swift_beginAccess();
  v17 = v16[2];
  v18 = *(a4 + 1);
  if (v18 >= 1)
  {
    v19 = __OFADD__(v18, v17);
    v20 = v18 + v17;
    if (v19)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v20 >= 79)
    {
      sub_1B0C72700(*a4, a5);
      a5("\t", "");
      if (a3)
      {
        if (v17 < 1)
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
        }

        v21 = 1;
        goto LABEL_24;
      }

LABEL_22:
      if (v17 < 0)
      {
        goto LABEL_37;
      }

      v21 = 0;
LABEL_24:
      if (a1)
      {
        v26 = &a1[v17];
      }

      else
      {
        v26 = 0;
      }

      if (a1)
      {
        v27 = &a1[v21];
      }

      else
      {
        v27 = 0;
      }

      a5(v27, v26);
      v28 = sub_1B0433338(v21, v17, a1, a2);
      v25 = v28 + 1;
      if (!__OFADD__(v28, 1))
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }
  }

  if (v17 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a1)
  {
    v22 = &a1[v17];
  }

  else
  {
    v22 = 0;
  }

  a5(a1, v22);
  v23 = sub_1B0433338(0, v17, a1, a2);
  v24 = *(a4 + 1);
  v19 = __OFADD__(v24, v23);
  v25 = v24 + v23;
  if (v19)
  {
    __break(1u);
    goto LABEL_22;
  }

LABEL_31:
  *(a4 + 1) = v25;

  sub_1B0C67068(a7);
  return sub_1B071728C(a8);
}

void sub_1B0C719A4(const char *a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, void *a9, uint64_t a10)
{
  v40 = a4;
  if (a1)
  {
    v16 = a2 - a1;
  }

  else
  {
    v16 = 0;
  }

  v17 = swift_allocObject();
  if (v16 < 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v18 = v17;
  v17[2] = 0;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = a2;
  v19 = a2;
  if (a3)
  {
    sub_1B0C72368(" ", "", v17);
  }

  v20 = a5;
  v21 = a9;
  sub_1B0C74B80(v20, a6, a7, a8, a9, v18);
  swift_beginAccess();
  v22 = v18[2];
  v23 = v40;
  v24 = *(v40 + 1);
  if (v24 < 1)
  {
    goto LABEL_13;
  }

  v25 = __OFADD__(v24, v22);
  v26 = v24 + v22;
  if (v25)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v26 < 79)
  {
LABEL_13:
    if ((v22 & 0x8000000000000000) == 0)
    {
      v28 = &a1[v22];
      if (!a1)
      {
        v28 = 0;
      }

      v38 = MEMORY[0x1E69E6290];
      v39 = MEMORY[0x1E6969DF8];
      v36 = a1;
      v37 = v28;
      __swift_project_boxed_opaque_existential_0(&v36, MEMORY[0x1E69E6290]);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v36);
      v29 = sub_1B0433338(0, v22, a1, v19);
      v30 = *(v23 + 1);
      v25 = __OFADD__(v30, v29);
      v31 = v30 + v29;
      if (!v25)
      {
        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_29;
  }

  sub_1B0C74C44(*v40);
  v21 = MEMORY[0x1E6969DF8];
  v38 = MEMORY[0x1E69E6290];
  v39 = MEMORY[0x1E6969DF8];
  v36 = "\t";
  v37 = "";
  __swift_project_boxed_opaque_existential_0(&v36, MEMORY[0x1E69E6290]);
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v36);
  if (a3)
  {
    if (v22 < 1)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v27 = 1;
    goto LABEL_21;
  }

LABEL_19:
  if ((v22 & 0x8000000000000000) == 0)
  {
    v27 = 0;
LABEL_21:
    v32 = &a1[v27];
    v33 = &a1[v22];
    if (!a1)
    {
      v33 = 0;
    }

    v38 = MEMORY[0x1E69E6290];
    v39 = v21;
    if (!a1)
    {
      v32 = 0;
    }

    v36 = v32;
    v37 = v33;
    __swift_project_boxed_opaque_existential_0(&v36, MEMORY[0x1E69E6290]);
    sub_1B0E42EF8();
    __swift_destroy_boxed_opaque_existential_0(&v36);
    v34 = sub_1B0433338(v27, v22, a1, v19);
    v31 = v34 + 1;
    if (!__OFADD__(v34, 1))
    {
      v23 = v40;
      v21 = a9;
LABEL_27:
      *(v23 + 1) = v31;

      sub_1B071728C(v21);
      return;
    }

    goto LABEL_31;
  }

LABEL_33:
  __break(1u);
}

void sub_1B0C71C3C(uint64_t a1, uint64_t a2, char a3, unsigned __int8 *a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, void *a11)
{
  if (a1)
  {
    v17 = a2 - a1;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  if (v17 < 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v19 = v18;
  v18[2] = 0;
  v18[3] = v17;
  v18[4] = a1;
  v18[5] = a2;
  if (a3)
  {
    sub_1B0C72368(" ", "", v18);
  }

  sub_1B0C6FBFC(sub_1B0C76E5C, v19, a7, a8, a9, a10, a11);
  swift_beginAccess();
  v20 = *(v19 + 16);
  v21 = *(a4 + 1);
  if (v21 < 1)
  {
    goto LABEL_13;
  }

  v22 = __OFADD__(v21, v20);
  v23 = v21 + v20;
  if (v22)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v23 < 79)
  {
LABEL_13:
    if ((v20 & 0x8000000000000000) == 0)
    {
      if (a1)
      {
        v25 = v20 + a1;
      }

      else
      {
        v25 = 0;
      }

      a5(a1, v25);
      v26 = sub_1B0433338(0, v20, a1, a2);
      v27 = *(a4 + 1);
      v22 = __OFADD__(v27, v26);
      v28 = v27 + v26;
      if (!v22)
      {
        goto LABEL_29;
      }

      __break(1u);
      goto LABEL_20;
    }

    goto LABEL_31;
  }

  sub_1B0C72700(*a4, a5);
  a5("\t", "");
  if (a3)
  {
    if (v20 < 1)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v24 = 1;
    goto LABEL_22;
  }

LABEL_20:
  if ((v20 & 0x8000000000000000) == 0)
  {
    v24 = 0;
LABEL_22:
    if (a1)
    {
      v29 = a1 + v20;
    }

    else
    {
      v29 = 0;
    }

    if (a1)
    {
      v30 = a1 + v24;
    }

    else
    {
      v30 = 0;
    }

    a5(v30, v29);
    v31 = sub_1B0433338(v24, v20, a1, a2);
    v28 = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
LABEL_29:
      *(a4 + 1) = v28;

      sub_1B071728C(a11);
      return;
    }

    goto LABEL_33;
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_1B0C71E78(const char *a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v13 = a2 - a1;
  }

  else
  {
    v13 = 0;
  }

  v14 = swift_allocObject();
  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v15 = v14;
  v14[2] = 0;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = a2;
  if (a3)
  {
    sub_1B0C72368(" ", "", v14);
  }

  LOBYTE(v29) = 60;
  sub_1B0C72368(&v29, &v29 + 1, v15);
  sub_1B0C742B8(a5, a6, v15);
  LOBYTE(v29) = 62;
  sub_1B0C72368(&v29, &v29 + 1, v15);
  swift_beginAccess();
  v16 = v15[2];
  v17 = *(a4 + 1);
  if (v17 >= 1)
  {
    v18 = __OFADD__(v17, v16);
    v19 = v17 + v16;
    if (v18)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v19 >= 79)
    {
      sub_1B0C74C44(*a4);
      a5 = MEMORY[0x1E69E6290];
      v31 = MEMORY[0x1E69E6290];
      v32 = MEMORY[0x1E6969DF8];
      v29 = "\t";
      v30 = "";
      __swift_project_boxed_opaque_existential_0(&v29, MEMORY[0x1E69E6290]);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v29);
      if (a3)
      {
        if (v16 < 1)
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
        }

        v20 = 1;
        goto LABEL_21;
      }

LABEL_19:
      if (v16 < 0)
      {
        goto LABEL_32;
      }

      v20 = 0;
LABEL_21:
      v25 = &a1[v20];
      v26 = &a1[v16];
      if (!a1)
      {
        v26 = 0;
      }

      v31 = a5;
      v32 = MEMORY[0x1E6969DF8];
      if (!a1)
      {
        v25 = 0;
      }

      v29 = v25;
      v30 = v26;
      __swift_project_boxed_opaque_existential_0(&v29, a5);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v29);
      v27 = sub_1B0433338(v20, v16, a1, a2);
      v24 = v27 + 1;
      if (!__OFADD__(v27, 1))
      {
        goto LABEL_26;
      }

      goto LABEL_30;
    }
  }

  if (v16 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v21 = &a1[v16];
  if (!a1)
  {
    v21 = 0;
  }

  v31 = MEMORY[0x1E69E6290];
  v32 = MEMORY[0x1E6969DF8];
  v29 = a1;
  v30 = v21;
  __swift_project_boxed_opaque_existential_0(&v29, MEMORY[0x1E69E6290]);
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v29);
  v22 = sub_1B0433338(0, v16, a1, a2);
  v23 = *(a4 + 1);
  v18 = __OFADD__(v23, v22);
  v24 = v23 + v22;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

LABEL_26:
  *(a4 + 1) = v24;
}

void sub_1B0C7212C(const char *a1, uint64_t a2, char a3, unsigned __int8 *a4, char *a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v13 = a2 - a1;
  }

  else
  {
    v13 = 0;
  }

  v14 = swift_allocObject();
  if (v13 < 0)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v16 = v14;
  v14[2] = 0;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = a2;
  if (a3)
  {
    sub_1B0C72368(" ", "", v14);
  }

  sub_1B0C769AC(a5, v15, a6, v16);
  swift_beginAccess();
  v17 = v16[2];
  v18 = *(a4 + 1);
  if (v18 < 1)
  {
    goto LABEL_13;
  }

  v19 = __OFADD__(v18, v17);
  v20 = v18 + v17;
  if (v19)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v20 < 79)
  {
LABEL_13:
    if ((v17 & 0x8000000000000000) == 0)
    {
      v22 = &a1[v17];
      if (!a1)
      {
        v22 = 0;
      }

      v31 = MEMORY[0x1E69E6290];
      v32 = MEMORY[0x1E6969DF8];
      v29 = a1;
      v30 = v22;
      __swift_project_boxed_opaque_existential_0(&v29, MEMORY[0x1E69E6290]);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v29);
      v23 = sub_1B0433338(0, v17, a1, a2);
      v24 = *(a4 + 1);
      v19 = __OFADD__(v24, v23);
      v25 = v24 + v23;
      if (!v19)
      {
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  sub_1B0C74C44(*a4);
  a5 = MEMORY[0x1E69E6290];
  v13 = MEMORY[0x1E6969DF8];
  v31 = MEMORY[0x1E69E6290];
  v32 = MEMORY[0x1E6969DF8];
  v29 = "\t";
  v30 = "";
  __swift_project_boxed_opaque_existential_0(&v29, MEMORY[0x1E69E6290]);
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v29);
  if (a3)
  {
    if (v17 < 1)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v21 = 1;
    goto LABEL_21;
  }

LABEL_19:
  if ((v17 & 0x8000000000000000) == 0)
  {
    v21 = 0;
LABEL_21:
    v26 = &a1[v21];
    v27 = &a1[v17];
    if (!a1)
    {
      v27 = 0;
    }

    v31 = a5;
    v32 = v13;
    if (!a1)
    {
      v26 = 0;
    }

    v29 = v26;
    v30 = v27;
    __swift_project_boxed_opaque_existential_0(&v29, a5);
    sub_1B0E42EF8();
    __swift_destroy_boxed_opaque_existential_0(&v29);
    v28 = sub_1B0433338(v21, v17, a1, a2);
    v25 = v28 + 1;
    if (!__OFADD__(v28, 1))
    {
LABEL_26:
      *(a4 + 1) = v25;

      return;
    }

    goto LABEL_30;
  }

LABEL_32:
  __break(1u);
}

void sub_1B0C72368(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  if (sub_1B0433338(a3[2], a3[3], a3[4], a3[5]) < v4)
  {
    goto LABEL_12;
  }

  swift_beginAccess();
  sub_1B0C16D90();
  sub_1B0E429B8();
  swift_beginAccess();
  v5 = a3[2];
  v6 = v5 + v4;
  if (__OFADD__(v5, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = a3[3];
    if (v7 >= v6)
    {
      if (v6 >= v5)
      {
        v9 = a3[4];
        v8 = a3[5];
        swift_beginAccess();
        a3[2] = v6;
        a3[3] = v7;
        a3[4] = v9;
        a3[5] = v8;
        return;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  sub_1B0E465B8();
  __break(1u);
}

uint64_t sub_1B0C724CC(uint64_t a1, unint64_t a2, double (*a3)(char *, void *))
{
  v22[4] = *MEMORY[0x1E69E9840];
  v4 = HIBYTE(a2) & 0xF;
  v22[0] = a1;
  v22[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v22[2] = 0;
  v22[3] = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B0E44DB8();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    while (1)
    {
      if (v7 == 2573 && v8 == 0xE200000000000000 || (sub_1B0E46A78() & 1) != 0)
      {
        goto LABEL_28;
      }

      if ((v8 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v8) & 0xF;
      }

      else
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (!v10)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
      }

      if ((v8 & 0x1000000000000000) != 0)
      {
        v15 = sub_1B0E44C18();
      }

      else
      {
        if ((v8 & 0x2000000000000000) != 0)
        {
          v12 = v7;
        }

        else
        {
          v11 = ((v7 & 0x1000000000000000) != 0 ? (v8 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1B0E46368());
          v12 = *v11;
        }

        v13 = v12;
        v14 = (__clz(~v12) - 24) << 16;
        v15 = v13 < 0 ? v14 : 65541;
      }

      if (v15 >> 14 == 4 * v10)
      {
        v16 = sub_1B0C04CF0(v7, v8);
        if ((v16 & 0x100000000) != 0)
        {
          goto LABEL_38;
        }

        if ((v16 & 0xFFFFFF80) == 0)
        {
          break;
        }
      }

LABEL_6:
      v7 = sub_1B0E44DB8();
      v8 = v9;
      if (!v9)
      {
      }
    }

    v17 = sub_1B0C04CF0(v7, v8);
    if ((v17 & 0x100000000) != 0)
    {
      goto LABEL_39;
    }

    if ((v17 & 0xFFFFFF00) != 0)
    {
      goto LABEL_37;
    }

LABEL_28:
    v18 = sub_1B0C704E4(v7, v8);

    if ((v18 & 0x100) == 0)
    {
      v19 = v18;
      if (v18 - 127 >= 0xFFFFFFA1)
      {
        if (v18 - 91 >= 0xFFFFFFE6)
        {
          v19 = v18 | 0x20;
        }

        v21 = v19;
        a3(&v21, v22);
      }
    }

    goto LABEL_6;
  }
}

uint64_t sub_1B0C72700(char a1, uint64_t (*a2)(char *, char *))
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 13;
      v3 = &v7;
      v4 = &v7;
    }

    else
    {
      v8 = 10;
      v3 = &v8;
      v4 = &v8;
    }

    v5 = v3 + 1;
  }

  else
  {
    v4 = "\r\n";
    v5 = "";
  }

  return a2(v4, v5);
}

uint64_t sub_1B0C727A8(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t *a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = sub_1B0E44DB8();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    do
    {
      if ((v8 != 2573 || v9 != 0xE200000000000000) && (sub_1B0E46A78() & 1) == 0)
      {
        if ((v9 & 0x2000000000000000) != 0)
        {
          v11 = HIBYTE(v9) & 0xF;
        }

        else
        {
          v11 = v8 & 0xFFFFFFFFFFFFLL;
        }

        if (!v11)
        {
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

        if ((v9 & 0x1000000000000000) != 0)
        {
          v16 = sub_1B0E44C18();
        }

        else
        {
          if ((v9 & 0x2000000000000000) != 0)
          {
            v13 = v8;
          }

          else
          {
            if ((v8 & 0x1000000000000000) != 0)
            {
              v12 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v12 = sub_1B0E46368();
            }

            v13 = *v12;
          }

          v14 = v13;
          v15 = (__clz(~v13) - 24) << 16;
          if (v14 < 0)
          {
            v16 = v15;
          }

          else
          {
            v16 = 65541;
          }
        }

        if (v16 >> 14 != 4 * v11)
        {
          goto LABEL_3;
        }

        v17 = sub_1B0C04CF0(v8, v9);
        if ((v17 & 0x100000000) != 0)
        {
          goto LABEL_43;
        }

        if ((v17 & 0xFFFFFF80) != 0)
        {
LABEL_3:

          goto LABEL_4;
        }

        v18 = sub_1B0C04CF0(v8, v9);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_44;
        }

        if ((v18 & 0xFFFFFF00) != 0)
        {
          goto LABEL_40;
        }
      }

      v19 = sub_1B0C704E4(v8, v9);

      if ((v19 & 0x100) == 0 && v19 - 127 >= 0xFFFFFFA1)
      {
        if (v19 - 91 > 0xFFFFFFE5)
        {
          *a3 = v19 | 0x20;
          v20 = *a4 + 1;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_42;
          }
        }

        else
        {
          *a3 = v19;
          v20 = *a4 + 1;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_41;
          }
        }

        *a4 = v20;
      }

LABEL_4:
      v8 = sub_1B0E44DB8();
      v9 = v10;
    }

    while (v10);
  }
}

uint64_t sub_1B0C729F0(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t *a4)
{
  *a3 = 34;
  if (__OFADD__(*a4, 1))
  {
    goto LABEL_46;
  }

  ++*a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = sub_1B0E44DB8();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    do
    {
      if ((v8 != 2573 || v9 != 0xE200000000000000) && (sub_1B0E46A78() & 1) == 0)
      {
        if ((v9 & 0x2000000000000000) != 0)
        {
          v11 = HIBYTE(v9) & 0xF;
        }

        else
        {
          v11 = v8 & 0xFFFFFFFFFFFFLL;
        }

        if (!v11)
        {
          __break(1u);
LABEL_42:
          __break(1u);
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
        }

        if ((v9 & 0x1000000000000000) != 0)
        {
          v16 = sub_1B0E44C18();
        }

        else
        {
          if ((v9 & 0x2000000000000000) != 0)
          {
            v13 = v8;
          }

          else
          {
            if ((v8 & 0x1000000000000000) != 0)
            {
              v12 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v12 = sub_1B0E46368();
            }

            v13 = *v12;
          }

          v14 = v13;
          v15 = (__clz(~v13) - 24) << 16;
          if (v14 < 0)
          {
            v16 = v15;
          }

          else
          {
            v16 = 65541;
          }
        }

        if (v16 >> 14 != 4 * v11)
        {
          goto LABEL_4;
        }

        v17 = sub_1B0C04CF0(v8, v9);
        if ((v17 & 0x100000000) != 0)
        {
          goto LABEL_48;
        }

        if ((v17 & 0xFFFFFF80) != 0)
        {
LABEL_4:

          goto LABEL_5;
        }

        v18 = sub_1B0C04CF0(v8, v9);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_49;
        }

        if ((v18 & 0xFFFFFF00) != 0)
        {
          goto LABEL_44;
        }
      }

      v19 = sub_1B0C704E4(v8, v9);

      if ((v19 & 0x100) == 0)
      {
        if (v19 == 92 || v19 == 34)
        {
          *a3 = 92;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_42;
          }

          ++*a4;
          *a3 = v19;
          v20 = *a4 + 1;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_43;
          }

          goto LABEL_36;
        }

        if (v19 - 127 >= 0xFFFFFFA1)
        {
          *a3 = v19;
          v20 = *a4 + 1;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_45;
          }

LABEL_36:
          *a4 = v20;
        }
      }

LABEL_5:
      v8 = sub_1B0E44DB8();
      v9 = v10;
    }

    while (v10);
  }

  *a3 = 34;
  if (__OFADD__(*a4, 1))
  {
    goto LABEL_47;
  }

  ++*a4;
  return result;
}

uint64_t sub_1B0C72C88(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t *a4)
{
  if (sub_1B0C7034C())
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = sub_1B0E44DB8();
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      do
      {
        if ((v10 != 2573 || v11 != 0xE200000000000000) && (sub_1B0E46A78() & 1) == 0)
        {
          if ((v11 & 0x2000000000000000) != 0)
          {
            v13 = HIBYTE(v11) & 0xF;
          }

          else
          {
            v13 = v10 & 0xFFFFFFFFFFFFLL;
          }

          if (!v13)
          {
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
          }

          if ((v11 & 0x1000000000000000) != 0)
          {
            v18 = sub_1B0E44C18();
          }

          else
          {
            if ((v11 & 0x2000000000000000) != 0)
            {
              v15 = v10;
            }

            else
            {
              if ((v10 & 0x1000000000000000) != 0)
              {
                v14 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v14 = sub_1B0E46368();
              }

              v15 = *v14;
            }

            v16 = v15;
            v17 = (__clz(~v15) - 24) << 16;
            if (v16 < 0)
            {
              v18 = v17;
            }

            else
            {
              v18 = 65541;
            }
          }

          if (v18 >> 14 != 4 * v13)
          {
            goto LABEL_4;
          }

          v19 = sub_1B0C04CF0(v10, v11);
          if ((v19 & 0x100000000) != 0)
          {
            goto LABEL_41;
          }

          if ((v19 & 0xFFFFFF80) != 0)
          {
LABEL_4:

            goto LABEL_5;
          }

          v20 = sub_1B0C04CF0(v10, v11);
          if ((v20 & 0x100000000) != 0)
          {
            goto LABEL_42;
          }

          if ((v20 & 0xFFFFFF00) != 0)
          {
            goto LABEL_40;
          }
        }

        v21 = sub_1B0C704E4(v10, v11);

        if ((v21 & 0x100) == 0)
        {
          *a3 = v21;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_39;
          }

          ++*a4;
        }

LABEL_5:
        v10 = sub_1B0E44DB8();
        v11 = v12;
      }

      while (v12);
    }
  }

  else
  {

    return sub_1B0C729F0(a1, a2, a3, a4);
  }
}

uint64_t sub_1B0C72EFC(uint64_t a1, unint64_t a2, void (*a3)(char *, char *))
{
  v23[4] = *MEMORY[0x1E69E9840];
  LOBYTE(v23[0]) = 34;
  a3(v23, v23 + 1);
  v6 = HIBYTE(a2) & 0xF;
  v23[0] = a1;
  v23[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v23[2] = 0;
  v23[3] = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = sub_1B0E44DB8();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      if ((v9 != 2573 || v10 != 0xE200000000000000) && (sub_1B0E46A78() & 1) == 0)
      {
        if ((v10 & 0x2000000000000000) != 0)
        {
          v12 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v12)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
        }

        if ((v10 & 0x1000000000000000) != 0)
        {
          v17 = sub_1B0E44C18();
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v14 = v9;
          }

          else
          {
            if ((v9 & 0x1000000000000000) != 0)
            {
              v13 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v13 = sub_1B0E46368();
            }

            v14 = *v13;
          }

          v15 = v14;
          v16 = (__clz(~v14) - 24) << 16;
          if (v15 < 0)
          {
            v17 = v16;
          }

          else
          {
            v17 = 65541;
          }
        }

        if (v17 >> 14 != 4 * v12)
        {
          goto LABEL_5;
        }

        v18 = sub_1B0C04CF0(v9, v10);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_40;
        }

        if ((v18 & 0xFFFFFF80) != 0)
        {
LABEL_5:

          goto LABEL_6;
        }

        v19 = sub_1B0C04CF0(v9, v10);
        if ((v19 & 0x100000000) != 0)
        {
          goto LABEL_41;
        }

        if ((v19 & 0xFFFFFF00) != 0)
        {
          goto LABEL_39;
        }
      }

      v20 = sub_1B0C704E4(v9, v10);

      if ((v20 & 0x100) == 0)
      {
        if (v20 == 92 || v20 == 34)
        {
          v22 = 92;
          a3(&v22, v23);
          v22 = v20;
        }

        else
        {
          if (v20 - 127 < 0xFFFFFFA1)
          {
            goto LABEL_6;
          }

          v22 = v20;
        }

        a3(&v22, v23);
      }

LABEL_6:
      v9 = sub_1B0E44DB8();
      v10 = v11;
    }

    while (v11);
  }

  LOBYTE(v23[0]) = 34;
  return (a3)(v23, v23 + 1);
}

uint64_t sub_1B0C731A0(uint64_t a1, unint64_t a2, void (*a3)(char *, char *))
{
  v23[4] = *MEMORY[0x1E69E9840];
  if (sub_1B0C7034C())
  {
    v6 = HIBYTE(a2) & 0xF;
    v23[0] = a1;
    v23[1] = a2;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v6 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v23[2] = 0;
    v23[3] = v6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = sub_1B0E44DB8();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      while (1)
      {
        if (v9 == 2573 && v10 == 0xE200000000000000 || (sub_1B0E46A78() & 1) != 0)
        {
          goto LABEL_29;
        }

        if ((v10 & 0x2000000000000000) != 0)
        {
          v12 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v12)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
        }

        if ((v10 & 0x1000000000000000) != 0)
        {
          v17 = sub_1B0E44C18();
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v14 = v9;
          }

          else
          {
            v13 = ((v9 & 0x1000000000000000) != 0 ? (v10 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1B0E46368());
            v14 = *v13;
          }

          v15 = v14;
          v16 = (__clz(~v14) - 24) << 16;
          v17 = v15 < 0 ? v16 : 65541;
        }

        if (v17 >> 14 == 4 * v12)
        {
          v18 = sub_1B0C04CF0(v9, v10);
          if ((v18 & 0x100000000) != 0)
          {
            goto LABEL_39;
          }

          if ((v18 & 0xFFFFFF80) == 0)
          {
            break;
          }
        }

LABEL_7:
        v9 = sub_1B0E44DB8();
        v10 = v11;
        if (!v11)
        {
        }
      }

      v19 = sub_1B0C04CF0(v9, v10);
      if ((v19 & 0x100000000) != 0)
      {
        goto LABEL_40;
      }

      if ((v19 & 0xFFFFFF00) != 0)
      {
        goto LABEL_38;
      }

LABEL_29:
      v20 = sub_1B0C704E4(v9, v10);

      if ((v20 & 0x100) == 0)
      {
        v22 = v20;
        a3(&v22, v23);
      }

      goto LABEL_7;
    }
  }

  else
  {

    return sub_1B0C72EFC(a1, a2, a3);
  }
}

uint64_t sub_1B0C73418(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, char a4, unsigned __int8 *a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, char a10)
{
  v30 = a5;
  v31 = a2;
  v29 = a1;
  *&v35[23] = *MEMORY[0x1E69E9840];
  v14 = a3 + (a4 & 1);
  if (__OFADD__(a3, a4 & 1))
  {
    __break(1u);
  }

  else
  {
    if (v14 < 0)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v10 = a8;
    v12 = a7;
    v11 = a6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    isStackAllocationSafe = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v14 < 1025)
    {
LABEL_4:
      v32 = v12;
      v33 = a9;
      v28[1] = v28;
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v17 = v28 - v16;
      v18 = v28 + v14 - v16;
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = v14;
      v19[4] = v17;
      v19[5] = v18;
      if (a4)
      {
        sub_1B0C72368(" ", "", v19);
      }

      sub_1B0C724CC(v11, v32, sub_1B0C76E5C);
      v34 = 61;
      sub_1B0C72368(&v34, v35, v19);
      sub_1B0C731A0(v10, v33, sub_1B0C76E5C);
      if ((a10 & 1) == 0)
      {
        v34 = 59;
        sub_1B0C72368(&v34, v35, v19);
      }

      swift_beginAccess();
      v20 = v19[2];
      v21 = v30;
      v22 = *(v30 + 1);
      if (v22 >= 1)
      {
        if (__OFADD__(v22, v20))
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if (v22 + v20 >= 79)
        {
          v14 = v29;
          sub_1B0C72700(*v30, v29);
          (v14)("\t", "");
          if (a4)
          {
            if (v20 < 1)
            {
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
            }

            v23 = 1;
            goto LABEL_21;
          }

LABEL_19:
          if (v20 < 0)
          {
            goto LABEL_34;
          }

          v23 = 0;
LABEL_21:
          (v14)(&v17[v23], &v17[v20]);
          v25 = sub_1B0433338(v23, v20, v17, v18);

          v24 = v25 + 1;
          if (!__OFADD__(v25, 1))
          {
LABEL_22:
            *(v21 + 1) = v24;
          }

          goto LABEL_32;
        }
      }

      if (v20 < 0)
      {
        __break(1u);
      }

      else
      {
        v29(v17, &v17[v20]);

        if (v14 >= v20)
        {
          v24 = v22 + v20;
          if (!__OFADD__(v22, v20))
          {
            goto LABEL_22;
          }

          __break(1u);
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_30;
    }
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
    goto LABEL_4;
  }

  v27 = swift_slowAlloc();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C7084C(v27, &v27[v14], a4 & 1, v30, v29, v31, v11, v12, v10, a9, a10 & 1);
  MEMORY[0x1B272C230](v27, -1, -1);
}

uint64_t sub_1B0C737EC(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(char *, void *, __n128))
{
  v27[10] = *MEMORY[0x1E69E9840];
  v6 = HIBYTE(a2) & 0xF;
  v27[0] = a1;
  v27[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v27[2] = 0;
  v27[3] = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = sub_1B0E44DB8();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      if ((v9 != 2573 || v10 != 0xE200000000000000) && (sub_1B0E46A78() & 1) == 0)
      {
        if ((v10 & 0x2000000000000000) != 0)
        {
          v12 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v12)
        {
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

        if ((v10 & 0x1000000000000000) != 0)
        {
          v17 = sub_1B0E44C18();
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v14 = v9;
          }

          else
          {
            if ((v9 & 0x1000000000000000) != 0)
            {
              v13 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v13 = sub_1B0E46368();
            }

            v14 = *v13;
          }

          v15 = v14;
          v16 = (__clz(~v14) - 24) << 16;
          if (v15 < 0)
          {
            v17 = v16;
          }

          else
          {
            v17 = 65541;
          }
        }

        if (v17 >> 14 != 4 * v12)
        {
          goto LABEL_5;
        }

        v18 = sub_1B0C04CF0(v9, v10);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_43;
        }

        if ((v18 & 0xFFFFFF80) != 0)
        {
LABEL_5:

          goto LABEL_6;
        }

        v19 = sub_1B0C04CF0(v9, v10);
        if ((v19 & 0x100000000) != 0)
        {
          goto LABEL_44;
        }

        if ((v19 & 0xFFFFFF00) != 0)
        {
          goto LABEL_40;
        }
      }

      v20 = sub_1B0C704E4(v9, v10);

      if ((v20 & 0x100) == 0 && v20 - 127 >= 0xFFFFFFA1)
      {
        if (v20 - 91 > 0xFFFFFFE5)
        {
          v26 = v20 | 0x20;
          swift_beginAccess();
          v24 = *(a3 + 16);
          v22 = __OFSUB__(v24, 1);
          v23 = v24 - 1;
          if (v22)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v26 = v20;
          swift_beginAccess();
          v21 = *(a3 + 16);
          v22 = __OFSUB__(v21, 1);
          v23 = v21 - 1;
          if (v22)
          {
            goto LABEL_41;
          }
        }

        *(a3 + 16) = v23;
        (a4)(&v26, v27);
      }

LABEL_6:
      v9 = sub_1B0E44DB8();
      v10 = v11;
    }

    while (v11);
  }
}

uint64_t sub_1B0C73A84(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a5 < 3)
  {
    goto LABEL_46;
  }

  v40 = 34;
  sub_1B0C72368(&v40, &v41, a6);
  v10 = a1 >> 14;
  v11 = a2 >> 14;
  if (a1 >> 14 < a2 >> 14)
  {
    v35 = 2;
    do
    {
      v13 = sub_1B0E45E18();
      v14 = v12;
      if ((v13 != 2573 || v12 != 0xE200000000000000) && (sub_1B0E46A78() & 1) == 0)
      {
        v15 = a2;
        v16 = a3;
        v17 = a4;
        v18 = v11;
        if ((v14 & 0x2000000000000000) != 0)
        {
          v19 = HIBYTE(v14) & 0xF;
        }

        else
        {
          v19 = v13 & 0xFFFFFFFFFFFFLL;
        }

        if (!v19)
        {
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
        }

        if ((v14 & 0x1000000000000000) != 0)
        {
          v24 = sub_1B0E44C18();
        }

        else
        {
          if ((v14 & 0x2000000000000000) != 0)
          {
            v21 = v13;
          }

          else
          {
            if ((v13 & 0x1000000000000000) != 0)
            {
              v20 = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v20 = sub_1B0E46368();
            }

            v21 = *v20;
          }

          v22 = v21;
          v23 = (__clz(~v21) - 24) << 16;
          if (v22 < 0)
          {
            v24 = v23;
          }

          else
          {
            v24 = 65541;
          }
        }

        v25 = v24 >> 14 == 4 * v19;
        v11 = v18;
        a4 = v17;
        a3 = v16;
        a2 = v15;
        if (!v25)
        {
          goto LABEL_4;
        }

        v26 = sub_1B0C04CF0(v13, v14);
        if ((v26 & 0x100000000) != 0)
        {
          goto LABEL_49;
        }

        if ((v26 & 0xFFFFFF80) != 0)
        {
LABEL_4:

          goto LABEL_5;
        }

        v27 = sub_1B0C04CF0(v13, v14);
        if ((v27 & 0x100000000) != 0)
        {
          goto LABEL_50;
        }

        if ((v27 & 0xFFFFFF00) != 0)
        {
          goto LABEL_45;
        }
      }

      v28 = sub_1B0C704E4(v13, v14);

      if ((v28 & 0x100) == 0)
      {
        if (v28 == 92 || v28 == 34)
        {
          if (__OFADD__(v35, 2))
          {
            goto LABEL_44;
          }

          if (v35 + 2 >= a5)
          {
            break;
          }

          v35 += 2;
          v37 = 92;
          sub_1B0C72368(&v37, &v38, a6);
          v36 = v28;
          v29 = &v36;
          v30 = &v37;
          v31 = a6;
        }

        else
        {
          if (v28 - 127 < 0xFFFFFFA1)
          {
            goto LABEL_5;
          }

          if (__OFADD__(v35, 1))
          {
            goto LABEL_48;
          }

          if (v35 + 1 >= a5)
          {
            break;
          }

          ++v35;
          v38 = v28;
          v29 = &v38;
          v30 = &v39;
          v31 = a6;
        }

        sub_1B0C72368(v29, v30, v31);
      }

LABEL_5:
      v10 = sub_1B0E45DD8() >> 14;
    }

    while (v10 < v11);
  }

  v39 = 34;
  sub_1B0C72368(&v39, &v40, a6);
  if (v11 < v10)
  {
    goto LABEL_47;
  }

  return sub_1B0E45E28();
}

void *sub_1B0C73DDC(void (*a1)(uint64_t, uint64_t), void *a2, uint64_t a3, char a4, unsigned __int8 *a5, void (*a6)(uint64_t, uint64_t, __n128))
{
  v24 = a5;
  v25[15] = *MEMORY[0x1E69E9840];
  v10 = a3 + (a4 & 1);
  if (__OFADD__(a3, a4 & 1))
  {
    __break(1u);
LABEL_24:
    sub_1B07AD120(a1, a2);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v22 = swift_slowAlloc();
      sub_1B07AD120(v6, v25);
      sub_1B0C70D4C(v22, v22 + v10, a4 & 1, v24, v8, v7, v6);
      MEMORY[0x1B272C230](v22, -1, -1);
      return sub_1B0717020(v6);
    }

    goto LABEL_5;
  }

  if (v10 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v6 = a6;
  v7 = a2;
  v8 = a1;
  a2 = v25;
  a1 = a6;
  if (v10 >= 1025)
  {
    goto LABEL_24;
  }

  isStackAllocationSafe = sub_1B07AD120(a6, v25);
LABEL_5:
  v23 = &v23;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v13 = &v23 - v12;
  v14 = &v23 + v10 - v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = v10;
  v15[4] = v13;
  v15[5] = v14;
  if (a4)
  {
    sub_1B0C72368(" ", "", v15);
  }

  sub_1B0C72368("multipart/", "", v15);
  sub_1B0C724CC(*(v6 + 1), *(v6 + 2), sub_1B0C76E5C);
  swift_beginAccess();
  v16 = v15[2];
  v17 = *(v24 + 1);
  if (v17 < 1)
  {
    goto LABEL_13;
  }

  if (__OFADD__(v17, v16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v17 + v16 < 79)
  {
LABEL_13:
    if (v16 < 0)
    {
      __break(1u);
    }

    else
    {
      v8(v13, &v13[v16]);

      if (v10 >= v16)
      {
        v19 = v17 + v16;
        if (!__OFADD__(v17, v16))
        {
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_1B0C72700(*v24, v8);
  v8("\t", "");
  if ((a4 & 1) == 0)
  {
LABEL_18:
    if (v16 < 0)
    {
      goto LABEL_32;
    }

    v18 = 0;
    goto LABEL_20;
  }

  if (v16 < 1)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  v18 = 1;
LABEL_20:
  v8(&v13[v18], &v13[v16]);
  v20 = sub_1B0433338(v18, v16, v13, v14);

  v19 = v20 + 1;
  if (__OFADD__(v20, 1))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_21:
  *(v24 + 1) = v19;
  return sub_1B0717020(v6);
}

void sub_1B0C740DC(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_1B041C260(v3, 0);
  sub_1B041D32C(0, v3, 0);
  if (v3)
  {
    v4 = 0;
    v16 = a1 + 32;
    while (1)
    {
      v5 = (v16 + 32 * v4);
      v7 = *v5;
      v6 = v5[1];
      v9 = v5[2];
      v8 = v5[3];
      v10 = *(v17 + 16);
      if (v10)
      {
        break;
      }

LABEL_11:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C07E68(v7, v6, 0);
      v14 = *(v2 + 16);
      v13 = *(v2 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1B041D32C((v13 > 1), v14 + 1, 1);
      }

      ++v4;
      *(v2 + 16) = v14 + 1;
      v15 = v2 + 16 * v14;
      *(v15 + 32) = v9;
      *(v15 + 40) = v8;
      if (v4 == v3)
      {
        return;
      }
    }

    v11 = (v17 + 40);
    while (1)
    {
      v12 = *(v11 - 1) == v7 && *v11 == v6;
      if (v12 || (sub_1B0E46A78() & 1) != 0)
      {
        break;
      }

      v11 += 2;
      if (!--v10)
      {
        goto LABEL_11;
      }
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __break(1u);
    __break(1u);
  }
}

uint64_t sub_1B0C742B8(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v4 = HIBYTE(a2) & 0xF;
  v21[0] = a1;
  v21[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v21[2] = 0;
  v21[3] = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B0E44DB8();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    while (1)
    {
      if (v7 == 2573 && v8 == 0xE200000000000000 || (sub_1B0E46A78() & 1) != 0)
      {
        goto LABEL_28;
      }

      if ((v8 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v8) & 0xF;
      }

      else
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (!v10)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
      }

      if ((v8 & 0x1000000000000000) != 0)
      {
        v15 = sub_1B0E44C18();
      }

      else
      {
        if ((v8 & 0x2000000000000000) != 0)
        {
          v12 = v7;
        }

        else
        {
          v11 = ((v7 & 0x1000000000000000) != 0 ? (v8 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1B0E46368());
          v12 = *v11;
        }

        v13 = v12;
        v14 = (__clz(~v12) - 24) << 16;
        v15 = v13 < 0 ? v14 : 65541;
      }

      if (v15 >> 14 == 4 * v10)
      {
        v16 = sub_1B0C04CF0(v7, v8);
        if ((v16 & 0x100000000) != 0)
        {
          goto LABEL_36;
        }

        if ((v16 & 0xFFFFFF80) == 0)
        {
          break;
        }
      }

LABEL_6:
      v7 = sub_1B0E44DB8();
      v8 = v9;
      if (!v9)
      {
      }
    }

    v17 = sub_1B0C04CF0(v7, v8);
    if ((v17 & 0x100000000) != 0)
    {
      goto LABEL_37;
    }

    if ((v17 & 0xFFFFFF00) != 0)
    {
      goto LABEL_35;
    }

LABEL_28:
    v18 = sub_1B0C704E4(v7, v8);

    if ((v18 & 0x100) == 0 && v18 - 127 >= 0xFFFFFFA1)
    {
      v20 = v18;
      sub_1B0C72368(&v20, v21, a3);
    }

    goto LABEL_6;
  }
}

uint64_t sub_1B0C744C8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t *a8)
{
  v14 = BYTE6(a2);
  v55 = *MEMORY[0x1E69E9840];
  v15 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v15 != 2)
    {
      memset(v53, 0, 14);
      v16 = a3;
      sub_1B07169CC(a4, v54);
      sub_1B07169CC(a4, v54);
      sub_1B07169CC(a4, v54);
      sub_1B07169CC(a4, v54);
      v46 = a7;
      v47 = a8;
      v17 = v53;
      v18 = 0;
      v19 = v16;
      v20 = a4;
      v21 = a5;
      v22 = a6;
LABEL_38:
      sub_1B0C682CC(0, v18, v53, v17, v19, v20, v21, v22, &v52, v46, v47);
      sub_1B075E648(a4);
      if (!v8)
      {
        v16 = v52;
      }

      goto LABEL_42;
    }

    v50 = a3;
    v51 = v8;
    v48 = &v46;
    v49 = a6;
    v23 = *(a1 + 16);
    v24 = *(a1 + 24);
    sub_1B07169CC(a4, v54);
    sub_1B07169CC(a4, v54);
    sub_1B07169CC(a4, v54);
    sub_1B07169CC(a4, v54);
    sub_1B07169CC(a4, v54);
    v16 = sub_1B0E42A98();
    if (v16)
    {
      v25 = sub_1B0E42AC8();
      if (__OFSUB__(v23, v25))
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      v16 += v23 - v25;
    }

    v26 = __OFSUB__(v24, v23);
    v27 = v24 - v23;
    if (!v26)
    {
      v28 = sub_1B0E42AB8();
      if (v28 >= v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = v28;
      }

      if (v16)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      if ((v30 & 0x8000000000000000) == 0)
      {
        v31 = v29 + v16;
        if (v16)
        {
          v32 = v31;
        }

        else
        {
          v32 = 0;
        }

        sub_1B07169CC(a4, v54);
        v33 = v51;
        sub_1B0C682CC(0, v30, v16, v32, v50, a4, a5, v49, v53, a7, a8);
        if (v33)
        {
          sub_1B075E648(a4);
          sub_1B075E648(a4);
          sub_1B075E648(a4);
          goto LABEL_42;
        }

        sub_1B075E648(a4);
        sub_1B075E648(a4);
        sub_1B075E648(a4);
LABEL_41:
        v16 = v53[0];
        goto LABEL_42;
      }

      goto LABEL_45;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!v15)
  {
    v53[0] = a1;
    LOWORD(v53[1]) = a2;
    BYTE2(v53[1]) = BYTE2(a2);
    BYTE3(v53[1]) = BYTE3(a2);
    BYTE4(v53[1]) = BYTE4(a2);
    v16 = a3;
    BYTE5(v53[1]) = BYTE5(a2);
    sub_1B07169CC(a4, v54);
    sub_1B07169CC(a4, v54);
    sub_1B07169CC(a4, v54);
    sub_1B07169CC(a4, v54);
    v46 = a7;
    v47 = a8;
    v17 = (v53 + v14);
    v18 = v14;
    v19 = v16;
    v20 = a4;
    v21 = a5;
    v22 = a6;
    goto LABEL_38;
  }

  LODWORD(v49) = a5;
  v51 = v8;
  v35 = a1;
  v36 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_44;
  }

  v50 = a3;
  v48 = &v46;
  sub_1B07169CC(a4, v54);
  sub_1B07169CC(a4, v54);
  sub_1B07169CC(a4, v54);
  sub_1B07169CC(a4, v54);
  sub_1B07169CC(a4, v54);
  v16 = sub_1B0E42A98();
  if (v16)
  {
    v37 = sub_1B0E42AC8();
    if (__OFSUB__(v35, v37))
    {
      goto LABEL_48;
    }

    v16 += v35 - v37;
  }

  v38 = sub_1B0E42AB8();
  if (v38 >= v36)
  {
    v39 = v36;
  }

  else
  {
    v39 = v38;
  }

  if (v16)
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  v41 = v49;
  if (v40 < 0)
  {
    goto LABEL_46;
  }

  v42 = v39 + v16;
  if (v16)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  sub_1B07169CC(a4, v54);
  v44 = v51;
  sub_1B0C682CC(0, v40, v16, v43, v50, a4, v41, a6, v53, a7, a8);
  sub_1B075E648(a4);
  sub_1B075E648(a4);
  sub_1B075E648(a4);
  if (!v44)
  {
    goto LABEL_41;
  }

LABEL_42:
  sub_1B075E648(a4);
  sub_1B075E648(a4);
  sub_1B075E648(a4);
  return v16;
}

uint64_t sub_1B0C7495C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v4 = HIBYTE(a2) & 0xF;
  v22[0] = a1;
  v22[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v22[2] = 0;
  v22[3] = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B0E44DB8();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    while (1)
    {
      if (v7 == 2573 && v8 == 0xE200000000000000 || (sub_1B0E46A78() & 1) != 0)
      {
        goto LABEL_28;
      }

      if ((v8 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v8) & 0xF;
      }

      else
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (!v10)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
      }

      if ((v8 & 0x1000000000000000) != 0)
      {
        v15 = sub_1B0E44C18();
      }

      else
      {
        if ((v8 & 0x2000000000000000) != 0)
        {
          v12 = v7;
        }

        else
        {
          v11 = ((v7 & 0x1000000000000000) != 0 ? (v8 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1B0E46368());
          v12 = *v11;
        }

        v13 = v12;
        v14 = (__clz(~v12) - 24) << 16;
        v15 = v13 < 0 ? v14 : 65541;
      }

      if (v15 >> 14 == 4 * v10)
      {
        v16 = sub_1B0C04CF0(v7, v8);
        if ((v16 & 0x100000000) != 0)
        {
          goto LABEL_38;
        }

        if ((v16 & 0xFFFFFF80) == 0)
        {
          break;
        }
      }

LABEL_6:
      v7 = sub_1B0E44DB8();
      v8 = v9;
      if (!v9)
      {
      }
    }

    v17 = sub_1B0C04CF0(v7, v8);
    if ((v17 & 0x100000000) != 0)
    {
      goto LABEL_39;
    }

    if ((v17 & 0xFFFFFF00) != 0)
    {
      goto LABEL_37;
    }

LABEL_28:
    v18 = sub_1B0C704E4(v7, v8);

    if ((v18 & 0x100) == 0)
    {
      v19 = v18;
      if (v18 - 127 >= 0xFFFFFFA1)
      {
        if (v18 - 91 > 0xFFFFFFE5)
        {
          v19 = v18 | 0x20;
        }

        v21 = v19;
        sub_1B0C72368(&v21, v22, a3);
      }
    }

    goto LABEL_6;
  }
}

void sub_1B0C74B80(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *MEMORY[0x1E69E9840];
  sub_1B0C7495C(a1, a2, a6);
  v11 = 47;
  sub_1B0C72368(&v11, &v12, a6);
  sub_1B0C7495C(a3, a4, a6);
  if (*(*(a5 + 24) + 16))
  {
    v10 = 59;
    sub_1B0C72368(&v10, &v11, a6);
  }
}

uint64_t sub_1B0C74C44(char a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = 13;
    }

    else
    {
      v1 = 10;
    }

    v6 = v1;
    v3 = &v6;
    v4 = v7;
    v2 = MEMORY[0x1E69E6290];
    v8 = MEMORY[0x1E69E6290];
    v9 = MEMORY[0x1E6969DF8];
  }

  else
  {
    v2 = MEMORY[0x1E69E6290];
    v8 = MEMORY[0x1E69E6290];
    v9 = MEMORY[0x1E6969DF8];
    v3 = "\r\n";
    v4 = "";
  }

  v7[0] = v3;
  v7[1] = v4;
  __swift_project_boxed_opaque_existential_0(v7, v2);
  sub_1B0E42EF8();
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_1B0C74D18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Message(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C74DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0C74E2C(uint64_t a1)
{
  v2 = type metadata accessor for Message(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1B0C74E90(void *a1, const char **a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, void *a8, uint64_t a9)
{
  v15 = a2;
  v38 = *MEMORY[0x1E69E9840];
  v16 = a1 + (a2 & 1);
  if (__OFADD__(a1, a2 & 1))
  {
    __break(1u);
LABEL_24:
    sub_1B07AD43C(a1, a2);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v29 = swift_slowAlloc();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B07AD43C(v13, &v34);
      sub_1B0C719A4(v29, &v29[v16], v15 & 1, v11, v9, v12, v10, v14, v13, v31);
      MEMORY[0x1B272C230](v29, -1, -1);
      goto LABEL_22;
    }

    goto LABEL_5;
  }

  if (v16 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v13 = a8;
  v14 = a7;
  v10 = a6;
  v12 = a5;
  v9 = a4;
  v11 = a3;
  v31 = a9;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2 = &v34;
  a1 = v13;
  if (v16 >= 1025)
  {
    goto LABEL_24;
  }

  isStackAllocationSafe = sub_1B07AD43C(v13, &v34);
LABEL_5:
  v32 = v14;
  v33 = v12;
  v30 = &v30;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v19 = &v30 - v18;
  v20 = &v30 + v16 - v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = v16;
  v21[4] = v19;
  v21[5] = v20;
  if (v15)
  {
    sub_1B0C72368(" ", "", v21);
  }

  sub_1B0C74B80(v9, v33, v10, v32, v13, v21);
  swift_beginAccess();
  v22 = v21[2];
  v23 = v11;
  v24 = *(v11 + 8);
  if (v24 < 1)
  {
    goto LABEL_13;
  }

  if (__OFADD__(v24, v22))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v24 + v22 < 79)
  {
LABEL_13:
    if (v22 < 0)
    {
      __break(1u);
    }

    else
    {
      v36 = MEMORY[0x1E69E6290];
      v37 = MEMORY[0x1E6969DF8];
      v34 = v19;
      v35 = &v19[v22];
      __swift_project_boxed_opaque_existential_0(&v34, MEMORY[0x1E69E6290]);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v34);

      if (v16 >= v22)
      {
        v26 = v24 + v22;
        if (!__OFADD__(v24, v22))
        {
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_1B0C74C44(*v23);
  v24 = MEMORY[0x1E69E6290];
  v16 = MEMORY[0x1E6969DF8];
  v36 = MEMORY[0x1E69E6290];
  v37 = MEMORY[0x1E6969DF8];
  v34 = "\t";
  v35 = "";
  __swift_project_boxed_opaque_existential_0(&v34, MEMORY[0x1E69E6290]);
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v34);
  if ((v15 & 1) == 0)
  {
LABEL_18:
    if (v22 < 0)
    {
      goto LABEL_32;
    }

    v25 = 0;
    goto LABEL_20;
  }

  if (v22 < 1)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  v25 = 1;
LABEL_20:
  v36 = v24;
  v37 = v16;
  v34 = &v19[v25];
  v35 = &v19[v22];
  __swift_project_boxed_opaque_existential_0(&v34, v24);
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v34);
  v27 = sub_1B0433338(v25, v22, v19, v20);

  v26 = v27 + 1;
  if (__OFADD__(v27, 1))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_21:
  *(v23 + 8) = v26;
LABEL_22:

  return sub_1B071728C(v13);
}

void sub_1B0C752B8(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v22[4] = *MEMORY[0x1E69E9840];
  LOBYTE(v22[0]) = 34;
  sub_1B0C72368(v22, v22 + 1, a3);
  v6 = HIBYTE(a2) & 0xF;
  v22[0] = a1;
  v22[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v22[2] = 0;
  v22[3] = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = sub_1B0E44DB8();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      if ((v9 != 2573 || v10 != 0xE200000000000000) && (sub_1B0E46A78() & 1) == 0)
      {
        if ((v10 & 0x2000000000000000) != 0)
        {
          v12 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v12)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
        }

        if ((v10 & 0x1000000000000000) != 0)
        {
          v17 = sub_1B0E44C18();
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v14 = v9;
          }

          else
          {
            if ((v9 & 0x1000000000000000) != 0)
            {
              v13 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v13 = sub_1B0E46368();
            }

            v14 = *v13;
          }

          v15 = v14;
          v16 = (__clz(~v14) - 24) << 16;
          if (v15 < 0)
          {
            v17 = v16;
          }

          else
          {
            v17 = 65541;
          }
        }

        if (v17 >> 14 != 4 * v12)
        {
          goto LABEL_5;
        }

        v18 = sub_1B0C04CF0(v9, v10);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_40;
        }

        if ((v18 & 0xFFFFFF80) != 0)
        {
LABEL_5:

          goto LABEL_6;
        }

        v19 = sub_1B0C04CF0(v9, v10);
        if ((v19 & 0x100000000) != 0)
        {
          goto LABEL_41;
        }

        if ((v19 & 0xFFFFFF00) != 0)
        {
          goto LABEL_39;
        }
      }

      v20 = sub_1B0C704E4(v9, v10);

      if ((v20 & 0x100) == 0)
      {
        if (v20 == 92 || v20 == 34)
        {
          v21 = 92;
          sub_1B0C72368(&v21, v22, a3);
        }

        else if (v20 - 127 < 0xFFFFFFA1)
        {
          goto LABEL_6;
        }

        v21 = v20;
        sub_1B0C72368(&v21, v22, a3);
      }

LABEL_6:
      v9 = sub_1B0E44DB8();
      v10 = v11;
    }

    while (v11);
  }

  LOBYTE(v22[0]) = 34;
  sub_1B0C72368(v22, v22 + 1, a3);
}

uint64_t sub_1B0C75534(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v23[4] = *MEMORY[0x1E69E9840];

  if (sub_1B0C7034C())
  {
    v6 = HIBYTE(a2) & 0xF;
    v23[0] = a1;
    v23[1] = a2;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v6 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v23[2] = 0;
    v23[3] = v6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = sub_1B0E44DB8();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      while (1)
      {
        if (v9 == 2573 && v10 == 0xE200000000000000 || (sub_1B0E46A78() & 1) != 0)
        {
          goto LABEL_29;
        }

        if ((v10 & 0x2000000000000000) != 0)
        {
          v12 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v12)
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:

          __break(1u);
LABEL_39:

          __break(1u);
        }

        if ((v10 & 0x1000000000000000) != 0)
        {
          v17 = sub_1B0E44C18();
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v14 = v9;
          }

          else
          {
            v13 = ((v9 & 0x1000000000000000) != 0 ? (v10 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1B0E46368());
            v14 = *v13;
          }

          v15 = v14;
          v16 = (__clz(~v14) - 24) << 16;
          v17 = v15 < 0 ? v16 : 65541;
        }

        if (v17 >> 14 == 4 * v12)
        {
          v18 = sub_1B0C04CF0(v9, v10);
          if ((v18 & 0x100000000) != 0)
          {
            goto LABEL_38;
          }

          if ((v18 & 0xFFFFFF80) == 0)
          {
            break;
          }
        }

LABEL_7:
        v9 = sub_1B0E44DB8();
        v10 = v11;
        if (!v11)
        {
          goto LABEL_34;
        }
      }

      v19 = sub_1B0C04CF0(v9, v10);
      if ((v19 & 0x100000000) != 0)
      {
        goto LABEL_39;
      }

      if ((v19 & 0xFFFFFF00) != 0)
      {
        goto LABEL_37;
      }

LABEL_29:
      v20 = sub_1B0C704E4(v9, v10);

      if ((v20 & 0x100) == 0)
      {
        v22 = v20;
        sub_1B0C72368(&v22, v23, a3);
      }

      goto LABEL_7;
    }

LABEL_34:
  }

  else
  {

    sub_1B0C752B8(a1, a2, a3);
  }
}

uint64_t sub_1B0C75798(uint64_t a1, char a2, unsigned __int8 *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, char a8, uint64_t a9)
{
  v31 = a3;
  v38 = *MEMORY[0x1E69E9840];
  v15 = a1 + (a2 & 1);
  if (__OFADD__(a1, a2 & 1))
  {
    __break(1u);
  }

  else
  {
    if (v15 < 0)
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v10 = a8;
    v12 = a7;
    v13 = a6;
    v11 = a5;
    v9 = a4;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    isStackAllocationSafe = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v15 < 1025)
    {
LABEL_4:
      v32 = v12;
      v33 = v11;
      v30 = &v30;
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v18 = &v30 - v17;
      v19 = &v30 + v15 - v17;
      v20 = swift_allocObject();
      v20[2] = 0;
      v21 = v20 + 2;
      v20[3] = v15;
      v20[4] = v18;
      v20[5] = v19;
      if (a2)
      {
        sub_1B0C72368(" ", "", v20);
      }

      sub_1B0C7495C(v9, v33, v20);
      LOBYTE(v34) = 61;
      sub_1B0C72368(&v34, &v34 + 1, v20);
      sub_1B0C75534(v13, v32, v20);
      if ((v10 & 1) == 0)
      {
        LOBYTE(v34) = 59;
        sub_1B0C72368(&v34, &v34 + 1, v20);
      }

      swift_beginAccess();
      v22 = *v21;
      v23 = v31;
      v24 = *(v31 + 1);
      if (v24 >= 1)
      {
        if (__OFADD__(v24, v22))
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if (v24 + v22 >= 79)
        {
          sub_1B0C74C44(*v31);
          v24 = MEMORY[0x1E69E6290];
          v21 = MEMORY[0x1E6969DF8];
          v36 = MEMORY[0x1E69E6290];
          v37 = MEMORY[0x1E6969DF8];
          v34 = "\t";
          v35 = "";
          __swift_project_boxed_opaque_existential_0(&v34, MEMORY[0x1E69E6290]);
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v34);
          if (a2)
          {
            if (v22 < 1)
            {
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
            }

            v25 = 1;
            goto LABEL_21;
          }

LABEL_19:
          if (v22 < 0)
          {
            goto LABEL_35;
          }

          v25 = 0;
LABEL_21:
          v36 = v24;
          v37 = v21;
          v34 = &v18[v25];
          v35 = &v18[v22];
          __swift_project_boxed_opaque_existential_0(&v34, v24);
          sub_1B0E42EF8();
          __swift_destroy_boxed_opaque_existential_0(&v34);
          v27 = sub_1B0433338(v25, v22, v18, v19);

          v26 = v27 + 1;
          if (!__OFADD__(v27, 1))
          {
            v23 = v31;
LABEL_23:
            *(v23 + 1) = v26;
          }

          goto LABEL_33;
        }
      }

      if (v22 < 0)
      {
        __break(1u);
      }

      else
      {
        v36 = MEMORY[0x1E69E6290];
        v37 = MEMORY[0x1E6969DF8];
        v34 = v18;
        v35 = &v18[v22];
        __swift_project_boxed_opaque_existential_0(&v34, MEMORY[0x1E69E6290]);
        sub_1B0E42EF8();
        __swift_destroy_boxed_opaque_existential_0(&v34);

        if (v15 >= v22)
        {
          v26 = v24 + v22;
          if (!__OFADD__(v24, v22))
          {
            goto LABEL_23;
          }

          __break(1u);
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_31;
    }
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
    goto LABEL_4;
  }

  v29 = swift_slowAlloc();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C70574(v29, &v29[v15], a2 & 1, v31, v9, v11, v13, v12, v10 & 1, a9);
  MEMORY[0x1B272C230](v29, -1, -1);
}

uint64_t sub_1B0C75BB8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v27[10] = *MEMORY[0x1E69E9840];
  v6 = HIBYTE(a2) & 0xF;
  v27[0] = a1;
  v27[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v27[2] = 0;
  v27[3] = v6;
  swift_retain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = sub_1B0E44DB8();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      if ((v9 != 2573 || v10 != 0xE200000000000000) && (sub_1B0E46A78() & 1) == 0)
      {
        if ((v10 & 0x2000000000000000) != 0)
        {
          v12 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v12)
        {
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

        if ((v10 & 0x1000000000000000) != 0)
        {
          v17 = sub_1B0E44C18();
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v14 = v9;
          }

          else
          {
            if ((v9 & 0x1000000000000000) != 0)
            {
              v13 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v13 = sub_1B0E46368();
            }

            v14 = *v13;
          }

          v15 = v14;
          v16 = (__clz(~v14) - 24) << 16;
          if (v15 < 0)
          {
            v17 = v16;
          }

          else
          {
            v17 = 65541;
          }
        }

        if (v17 >> 14 != 4 * v12)
        {
          goto LABEL_5;
        }

        v18 = sub_1B0C04CF0(v9, v10);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_43;
        }

        if ((v18 & 0xFFFFFF80) != 0)
        {
LABEL_5:

          goto LABEL_6;
        }

        v19 = sub_1B0C04CF0(v9, v10);
        if ((v19 & 0x100000000) != 0)
        {
          goto LABEL_44;
        }

        if ((v19 & 0xFFFFFF00) != 0)
        {
          goto LABEL_40;
        }
      }

      v20 = sub_1B0C704E4(v9, v10);

      if ((v20 & 0x100) == 0 && v20 - 127 >= 0xFFFFFFA1)
      {
        if (v20 - 91 > 0xFFFFFFE5)
        {
          v26 = v20 | 0x20;
          swift_beginAccess();
          v24 = *(a3 + 16);
          v22 = __OFSUB__(v24, 1);
          v23 = v24 - 1;
          if (v22)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v26 = v20;
          swift_beginAccess();
          v21 = *(a3 + 16);
          v22 = __OFSUB__(v21, 1);
          v23 = v21 - 1;
          if (v22)
          {
            goto LABEL_41;
          }
        }

        *(a3 + 16) = v23;

        sub_1B0C72368(&v26, v27, a4);
      }

LABEL_6:
      v9 = sub_1B0E44DB8();
      v10 = v11;
    }

    while (v11);
  }
}

void *sub_1B0C75E98(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v25 = a3;
  v9 = a2;
  v30 = *MEMORY[0x1E69E9840];
  v10 = a1 + (a2 & 1);
  if (__OFADD__(a1, a2 & 1))
  {
    __break(1u);
LABEL_26:
    sub_1B0C6700C(a1, a2);
    sub_1B07AD43C(v7, &v26);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v22 = swift_slowAlloc();
      sub_1B0C6700C(v8, &v26);
      sub_1B07AD43C(v7, &v26);
      sub_1B0C71488(v22, &v22[v10], v9 & 1, v25, v8, v7, v6);
      MEMORY[0x1B272C230](v22, -1, -1);
      goto LABEL_24;
    }

    goto LABEL_5;
  }

  if (v10 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v6 = a6;
  v7 = a5;
  v8 = a4;
  a2 = &v26;
  a1 = a4;
  if (v10 >= 1025)
  {
    goto LABEL_26;
  }

  sub_1B0C6700C(a4, &v26);
  isStackAllocationSafe = sub_1B07AD43C(v7, &v26);
LABEL_5:
  v23 = &v23;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v13 = &v23 - v12;
  v14 = &v23 + v10 - v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = v10;
  v15[4] = v13;
  v15[5] = v14;
  if (v9)
  {
    sub_1B0C72368(" ", "", v15);
  }

  sub_1B0C72368("message/", "", v15);
  sub_1B0C7495C(*v8, *(v8 + 8), v15);
  v24 = v7;
  if (*(v7[3] + 16))
  {
    LOBYTE(v26) = 59;
    sub_1B0C72368(&v26, &v26 + 1, v15);
  }

  swift_beginAccess();
  v16 = v15[2];
  v17 = *(v25 + 1);
  if (v17 < 1)
  {
    goto LABEL_15;
  }

  if (__OFADD__(v17, v16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v17 + v16 < 79)
  {
LABEL_15:
    if (v16 < 0)
    {
      __break(1u);
    }

    else
    {
      v28 = MEMORY[0x1E69E6290];
      v29 = MEMORY[0x1E6969DF8];
      v26 = v13;
      v27 = &v13[v16];
      __swift_project_boxed_opaque_existential_0(&v26, MEMORY[0x1E69E6290]);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v26);

      if (v10 >= v16)
      {
        v19 = v17 + v16;
        if (!__OFADD__(v17, v16))
        {
          goto LABEL_23;
        }

        __break(1u);
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  sub_1B0C74C44(*v25);
  v10 = MEMORY[0x1E69E6290];
  v17 = MEMORY[0x1E6969DF8];
  v28 = MEMORY[0x1E69E6290];
  v29 = MEMORY[0x1E6969DF8];
  v26 = "\t";
  v27 = "";
  __swift_project_boxed_opaque_existential_0(&v26, MEMORY[0x1E69E6290]);
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v26);
  if ((v9 & 1) == 0)
  {
LABEL_20:
    if (v16 < 0)
    {
      goto LABEL_34;
    }

    v18 = 0;
    goto LABEL_22;
  }

  if (v16 < 1)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  v18 = 1;
LABEL_22:
  v28 = v10;
  v29 = v17;
  v26 = &v13[v18];
  v27 = &v13[v16];
  __swift_project_boxed_opaque_existential_0(&v26, v10);
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v26);
  v20 = sub_1B0433338(v18, v16, v13, v14);

  v19 = v20 + 1;
  if (__OFADD__(v20, 1))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_23:
  v7 = v24;
  *(v25 + 1) = v19;
LABEL_24:
  sub_1B0C67068(v8);
  return sub_1B071728C(v7);
}

void *sub_1B0C7625C(void *a1, const char **a2, unsigned __int8 *a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v28 = a3;
  v13 = a2;
  v33 = *MEMORY[0x1E69E9840];
  v14 = a1 + (a2 & 1);
  if (__OFADD__(a1, a2 & 1))
  {
    __break(1u);
LABEL_26:
    sub_1B07AD43C(a1, a2);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v26 = swift_slowAlloc();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B07AD43C(v8, &v29);
      sub_1B0C70F40(v26, &v26[v14], v13 & 1, v28, v12, v10, v11, v8, v9);
      MEMORY[0x1B272C230](v26, -1, -1);
      goto LABEL_24;
    }

    goto LABEL_5;
  }

  if (v14 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v9 = a8;
  v8 = a7;
  v11 = a6;
  v10 = a5;
  v12 = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2 = &v29;
  a1 = v8;
  if (v14 >= 1025)
  {
    goto LABEL_26;
  }

  isStackAllocationSafe = sub_1B07AD43C(v8, &v29);
LABEL_5:
  v27 = &v27;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v17 = &v27 - v16;
  v18 = &v27 + v14 - v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = v14;
  v19[4] = v17;
  v19[5] = v18;
  if (v13)
  {
    sub_1B0C72368(" ", "", v19);
  }

  sub_1B0C72368("text/", "", v19);
  sub_1B0C7495C(v12, v10, v19);
  if (*(v8[3] + 16))
  {
    LOBYTE(v29) = 59;
    sub_1B0C72368(&v29, &v29 + 1, v19);
  }

  swift_beginAccess();
  v20 = v19[2];
  v21 = *(v28 + 1);
  if (v21 < 1)
  {
    goto LABEL_15;
  }

  if (__OFADD__(v21, v20))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v21 + v20 < 79)
  {
LABEL_15:
    if (v20 < 0)
    {
      __break(1u);
    }

    else
    {
      v31 = MEMORY[0x1E69E6290];
      v32 = MEMORY[0x1E6969DF8];
      v29 = v17;
      v30 = &v17[v20];
      __swift_project_boxed_opaque_existential_0(&v29, MEMORY[0x1E69E6290]);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v29);

      if (v14 >= v20)
      {
        v23 = v21 + v20;
        if (!__OFADD__(v21, v20))
        {
          goto LABEL_23;
        }

        __break(1u);
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  sub_1B0C74C44(*v28);
  v14 = MEMORY[0x1E69E6290];
  v21 = MEMORY[0x1E6969DF8];
  v31 = MEMORY[0x1E69E6290];
  v32 = MEMORY[0x1E6969DF8];
  v29 = "\t";
  v30 = "";
  __swift_project_boxed_opaque_existential_0(&v29, MEMORY[0x1E69E6290]);
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v29);
  if ((v13 & 1) == 0)
  {
LABEL_20:
    if (v20 < 0)
    {
      goto LABEL_34;
    }

    v22 = 0;
    goto LABEL_22;
  }

  if (v20 < 1)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  v22 = 1;
LABEL_22:
  v31 = v14;
  v32 = v21;
  v29 = &v17[v22];
  v30 = &v17[v20];
  __swift_project_boxed_opaque_existential_0(&v29, v14);
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v29);
  v24 = sub_1B0433338(v22, v20, v17, v18);

  v23 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_23:
  *(v28 + 1) = v23;
LABEL_24:

  return sub_1B071728C(v8);
}

void *sub_1B0C76660(void *a1, const char **a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a2;
  v27 = *MEMORY[0x1E69E9840];
  v9 = a1 + (a2 & 1);
  if (__OFADD__(a1, a2 & 1))
  {
    __break(1u);
LABEL_24:
    sub_1B07AD120(a1, a2);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v21 = swift_slowAlloc();
      sub_1B07AD120(v5, &v23);
      sub_1B0C70AEC(v21, &v21[v9], v8 & 1, v7, v5, v6);
      MEMORY[0x1B272C230](v21, -1, -1);
      return sub_1B0717020(v5);
    }

    goto LABEL_5;
  }

  if (v9 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v6 = a5;
  v5 = a4;
  v7 = a3;
  a2 = &v23;
  a1 = a4;
  if (v9 >= 1025)
  {
    goto LABEL_24;
  }

  isStackAllocationSafe = sub_1B07AD120(a4, &v23);
LABEL_5:
  v22[0] = v22;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v12 = v22 - v11;
  v13 = v22 + v9 - v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = v9;
  v14[4] = v12;
  v14[5] = v13;
  if (v8)
  {
    sub_1B0C72368(" ", "", v14);
  }

  sub_1B0C72368("multipart/", "", v14);
  sub_1B0C7495C(v5[1], v5[2], v14);
  swift_beginAccess();
  v15 = v14[2];
  v16 = *(v7 + 8);
  if (v16 < 1)
  {
    goto LABEL_13;
  }

  if (__OFADD__(v16, v15))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v16 + v15 < 79)
  {
LABEL_13:
    if (v15 < 0)
    {
      __break(1u);
    }

    else
    {
      v25 = MEMORY[0x1E69E6290];
      v26 = MEMORY[0x1E6969DF8];
      v23 = v12;
      v24 = &v12[v15];
      __swift_project_boxed_opaque_existential_0(&v23, MEMORY[0x1E69E6290]);
      sub_1B0E42EF8();
      __swift_destroy_boxed_opaque_existential_0(&v23);

      if (v9 >= v15)
      {
        v18 = v16 + v15;
        if (!__OFADD__(v16, v15))
        {
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_1B0C74C44(*v7);
  v9 = MEMORY[0x1E69E6290];
  v16 = MEMORY[0x1E6969DF8];
  v25 = MEMORY[0x1E69E6290];
  v26 = MEMORY[0x1E6969DF8];
  v23 = "\t";
  v24 = "";
  __swift_project_boxed_opaque_existential_0(&v23, MEMORY[0x1E69E6290]);
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v23);
  if ((v8 & 1) == 0)
  {
LABEL_18:
    if (v15 < 0)
    {
      goto LABEL_32;
    }

    v17 = 0;
    goto LABEL_20;
  }

  if (v15 < 1)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  v17 = 1;
LABEL_20:
  v25 = v9;
  v26 = v16;
  v23 = &v12[v17];
  v24 = &v12[v15];
  __swift_project_boxed_opaque_existential_0(&v23, v9);
  sub_1B0E42EF8();
  __swift_destroy_boxed_opaque_existential_0(&v23);
  v19 = sub_1B0433338(v17, v15, v12, v13);

  v18 = v19 + 1;
  if (__OFADD__(v19, 1))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_21:
  *(v7 + 8) = v18;
  return sub_1B0717020(v5);
}

uint64_t sub_1B0C769AC(char *a1, __n128 a2, uint64_t a3, uint64_t *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((a1[1] & 1) == 0)
  {
    v6 = *a1;
    *a1 = 256;
    v21 = v6;
    sub_1B0C72368(&v21, &v22, a4);
  }

  result = sub_1B0E44DB8();
  if (v8)
  {
    v9 = result;
    v10 = v8;
    do
    {
      if ((v9 != 2573 || v10 != 0xE200000000000000) && (sub_1B0E46A78() & 1) == 0)
      {
        if ((v10 & 0x2000000000000000) != 0)
        {
          v12 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v12)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
        }

        if ((v10 & 0x1000000000000000) != 0)
        {
          v17 = sub_1B0E44C18();
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v14 = v9;
          }

          else
          {
            if ((v9 & 0x1000000000000000) != 0)
            {
              v13 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v13 = sub_1B0E46368();
            }

            v14 = *v13;
          }

          v15 = v14;
          v16 = (__clz(~v14) - 24) << 16;
          if (v15 < 0)
          {
            v17 = v16;
          }

          else
          {
            v17 = 65541;
          }
        }

        if (v17 >> 14 != 4 * v12)
        {
          goto LABEL_5;
        }

        v18 = sub_1B0C04CF0(v9, v10);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_39;
        }

        if ((v18 & 0xFFFFFF80) != 0)
        {
LABEL_5:

          goto LABEL_6;
        }

        v19 = sub_1B0C04CF0(v9, v10);
        if ((v19 & 0x100000000) != 0)
        {
          goto LABEL_40;
        }

        if ((v19 & 0xFFFFFF00) != 0)
        {
          goto LABEL_38;
        }
      }

      v20 = sub_1B0C704E4(v9, v10);

      if ((v20 & 0x100) == 0)
      {
        if (v20 == 32 || v20 == 9)
        {
          *a1 = v20;
          return result;
        }

        if (v20 - 127 >= 0xFFFFFFA2)
        {
          v22 = v20;
          sub_1B0C72368(&v22, &v23, a4);
        }
      }

LABEL_6:
      result = sub_1B0E44DB8();
      v9 = result;
      v10 = v11;
    }

    while (v11);
  }

  return result;
}

void *sub_1B0C76C18@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result)
  {
    v6 = a2 - result;
  }

  else
  {
    v6 = 0;
  }

  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    result = (*(v3 + 16))(&v7, 0);
    if (!v4)
    {
      *a3 = v7;
    }
  }

  return result;
}

void *sub_1B0C76C7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *(v2 + 24);
  v7 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  result = v6(&v9, a1, a1 + v7);
  if (!v3)
  {
    *a2 = v9;
  }

  return result;
}

uint64_t sub_1B0C76CF4(uint64_t a1)
{
  **(v1 + 16) = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0C76D34(uint64_t result)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 32);
    v3 = MEMORY[0x1E69E6290];
    v4 = MEMORY[0x1E6969DF8];
    do
    {
      v6 = *v2++;
      v5 = v6;
      if ((v6 - 127) > 0xFFFFFFA0)
      {
        v7 = v5;
        v8[3] = v3;
        v8[4] = v4;
        v8[0] = &v7;
        v8[1] = v8;
        __swift_project_boxed_opaque_existential_0(v8, v3);
        sub_1B0E42EF8();
        result = __swift_destroy_boxed_opaque_existential_0(v8);
      }

      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1B0C76E80(uint64_t a1)
{
  sub_1B0E46C28();
  v2 = *(a1 + 16);
  MEMORY[0x1B2728D70](v2);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      ++v3;
      sub_1B0E46C68();
      --v2;
    }

    while (v2);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C76EF8()
{
  v1 = *v0;
  result = MEMORY[0x1B2728D70](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;
    do
    {
      ++v4;
      result = sub_1B0E46C68();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B0C76F4C(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      ++v4;
      sub_1B0E46C68();
      --v3;
    }

    while (v3);
  }

  return sub_1B0E46CB8();
}

unint64_t sub_1B0C76FBC()
{
  result = qword_1EB6E5D50;
  if (!qword_1EB6E5D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5D50);
  }

  return result;
}

uint64_t sub_1B0C77010@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v4 = a1;
  v12 = 0;
  v13 = 0xE000000000000000;
  if (a1)
  {
    v6 = a2 - a1;
  }

  else
  {
    v6 = 0;
  }

  result = MEMORY[0x1B2726D20](v6);
  if (v4 && a2 != v4)
  {
    v8 = 0;
    v9 = 0xE000000000000000;
    do
    {
      result = *v4;
      if ((result - 1) <= 0x7D)
      {
        v10 = v8;
        v11 = v9;
        result = sub_1B0E44C58();
        v8 = v10;
        v9 = v11;
      }

      ++v4;
    }

    while (v4 != a2);
    v12 = v8;
    v13 = v9;
  }

  *a3 = v12;
  a3[1] = v13;
  return result;
}

void sub_1B0C770C4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    if (v1)
    {
      v3 = v2 - v1;
    }

    else
    {
      v3 = 0;
    }

    if (v3 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_1B0C93ECC(0, v3, v1, v2);
    }
  }

  else
  {
    v4 = *v0;
    v5 = *(v0 + 8);

    sub_1B0C77140(v4, v5);
  }
}

uint64_t sub_1B0C77140(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = a1;
  v10 = 0;
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1B2726D20](v4);
  if (v3 && a2 != v3)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
    do
    {
      if (*v3 - 1 <= 0x7D)
      {
        v8 = v5;
        v9 = v6;
        sub_1B0E44C58();
        v5 = v8;
        v6 = v9;
      }

      ++v3;
    }

    while (v3 != a2);
    return v5;
  }

  return v10;
}

uint64_t sub_1B0C771DC(unsigned __int8 *a1, unsigned __int8 *a2, char a3)
{
  v5 = a1;
  v15 = 0;
  if (a1)
  {
    v6 = a2 - a1;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x1B2726D20](v6);
  if (v5 && a2 != v5)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
    v9 = v5;
    while (1)
    {
      v11 = *v9++;
      v10 = v11;
      if ((v11 - 1) < 0x7E)
      {
        if (v10 != 92 || (a3 & 1) == 0)
        {
          goto LABEL_7;
        }

        if (v9 == a2)
        {
          return v7;
        }

        v9 = v5 + 2;
        if (v5[1] - 1 < 0x7E)
        {
LABEL_7:
          v13 = v7;
          v14 = v8;
          sub_1B0E44C58();
          v7 = v13;
          v8 = v14;
        }
      }

      v5 = v9;
      if (v9 == a2)
      {
        return v7;
      }
    }
  }

  return v15;
}

uint64_t sub_1B0C772B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = sub_1B0433338(a1, a2, a3, a4);
  result = MEMORY[0x1B2726D20](v10);
  if (a1 == a2)
  {
    return 0;
  }

  if (a1 < a2)
  {
    result = 0;
    v12 = 0xE000000000000000;
    if (a3)
    {
      v13 = a4 - a3;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - 1;
    v15 = 1;
    v16 = a1;
    while (1)
    {
      if (a1 < 0 || v16 >= v13)
      {
        goto LABEL_22;
      }

      v17 = *(a3 + v16);
      if ((v17 - 1) >= 0x7E)
      {
        goto LABEL_17;
      }

      if ((v15 & a5 & 1) == 0 || v17 != 92)
      {
        break;
      }

      if (v14 == v16)
      {
        return result;
      }

      v15 = 0;
LABEL_19:
      v18 = v16 + 1;
      if (v16 + 1 >= a1)
      {
        ++v16;
        if (v18 < a2)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    v19 = result;
    v20 = v12;
    sub_1B0E44C58();
    result = v19;
    v12 = v20;
LABEL_17:
    if (v14 == v16)
    {
      return result;
    }

    v15 = 1;
    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

BOOL sub_1B0C773C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v5 = *a1 == *a2 && v2 == v3;
  if ((*(a2 + 16) & 1) == 0)
  {
    v5 = 0;
  }

  v7 = *a1 == *a2 && v2 == v3;
  if (*(a2 + 16))
  {
    v7 = 0;
  }

  if (*(a1 + 16))
  {
    return v5;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1B0C77408(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 0x28646E652ELL;
  }

  else
  {
    sub_1B0E46298();

    v3 = 0x28656C6464696D2ELL;
  }

  v7 = v3;
  v4 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v4);

  MEMORY[0x1B2726E80](3943982, 0xE300000000000000);
  v5 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v5);

  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  return v7;
}

char *sub_1B0C77524(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *__little, uint64_t a7)
{
  if (!__little)
  {
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v13 = a7 - __little;
  v14 = a1;
  do
  {
    v15 = a3 + v14;
    result = memmem(a3 + v14, a2 - v14, __little, v13);
    if (!result)
    {
      break;
    }

    v17 = (result - v15);
    if (result - v15 < 0)
    {
      return 0;
    }

    v18 = &v17[v13];
    if (__OFADD__(v17, v13))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    if (a2 - v14 < v18)
    {
      return 0;
    }

    v19 = &v17[v14];
    if (__OFADD__(v17, v14))
    {
      goto LABEL_20;
    }

    v20 = __OFADD__(v18, v14);
    v14 += v18;
    if (v20)
    {
      goto LABEL_21;
    }

    if (v18 < v17 || v14 < v19)
    {
      goto LABEL_22;
    }

    if (v19 < a1)
    {
      goto LABEL_23;
    }

    if (v14 > a2)
    {
      goto LABEL_24;
    }

    result = sub_1B0C77660(a1, a2, a3, a4, a5, v19, v14);
  }

  while (v21 == -1);
  return result;
}

uint64_t sub_1B0C77660(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (__OFADD__(result, 2))
  {
    __break(1u);
    goto LABEL_134;
  }

  v8 = a3;
  v9 = result;
  if (result + 2 == a6)
  {
    result = a6 - 2;
    if (a6 - 2 >= v9 && result < a2)
    {
      if (*(a3 + result) != 45)
      {
        return 0;
      }

      if (a6 > a2)
      {
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

LABEL_7:
      if (*(a3 + a6 - 1) != 45)
      {
        return 0;
      }

      goto LABEL_35;
    }

LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (a5 > 1u)
  {
    if (a5 != 2)
    {
      goto LABEL_32;
    }

    if (__OFADD__(result, 3))
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    if (result + 3 > a6)
    {
      return 0;
    }

    result = a6 - 3;
    if (a6 - 3 < v9 || result >= a2)
    {
      goto LABEL_145;
    }

    if (*(a3 + result) != 10)
    {
      return 0;
    }

    if (a6 - 2 >= a2)
    {
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    if (*(a3 + a6 - 2) != 45)
    {
      return 0;
    }

    if (a6 <= a2)
    {
      goto LABEL_7;
    }

    __break(1u);
LABEL_23:
    if (__OFADD__(v9, 3))
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    if (v9 + 3 > a6)
    {
      return 0;
    }

    result = a6 - 3;
    if (a6 - 3 < v9 || result >= a2)
    {
      goto LABEL_146;
    }

    if (*(a3 + result) != 13)
    {
      return 0;
    }

    if (a6 - 2 >= a2)
    {
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
      goto LABEL_156;
    }

    if (*(a3 + a6 - 2) != 45)
    {
      return 0;
    }

    if (a6 <= a2)
    {
      goto LABEL_7;
    }

    __break(1u);
LABEL_32:
    v14 = a7;
    v15 = a4;
    v16 = a2;
    result = sub_1B0C77CA4(v9, a2, a3, a6);
    if (v18)
    {
      result = sub_1B0C77D48(v9, v16, v8, a6);
      if (v19)
      {
        return 0;
      }
    }

    a2 = v16;
    a4 = v15;
    a7 = v14;
    goto LABEL_35;
  }

  if (a5)
  {
    goto LABEL_23;
  }

  v10 = a7;
  v11 = a4;
  v12 = a2;
  result = sub_1B0C77CA4(result, a2, a3, a6);
  if (v13)
  {
    return 0;
  }

  a2 = v12;
  a4 = v11;
  a7 = v10;
LABEL_35:
  v20 = a7 + 2;
  if (__OFADD__(a7, 2))
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v20 == a2)
  {
    if (a7 < v9 || a7 >= a2)
    {
      goto LABEL_138;
    }

    if (*(v8 + a7) == 45)
    {
      if (a7 + 1 >= a2)
      {
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      if (*(v8 + a7 + 1) == 45)
      {
        if (result <= a2)
        {
          return result;
        }

        goto LABEL_149;
      }
    }
  }

  v21 = result;
  if (a5 > 1u)
  {
    if (a5 != 2)
    {
      goto LABEL_59;
    }

    v26 = a7 + 1;
    if (a7 >= a2)
    {
      goto LABEL_65;
    }

    if (a7 < v9)
    {
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    if (*(v8 + a7) != 10)
    {
LABEL_65:
      v33 = a7 + 3;
      if (__OFADD__(a7, 3))
      {
LABEL_147:
        __break(1u);
        goto LABEL_148;
      }

      if (v33 > a2)
      {
        goto LABEL_101;
      }

      if (a7 < v9 || a7 >= a2)
      {
        goto LABEL_154;
      }

      if (*(v8 + a7) != 2)
      {
        goto LABEL_101;
      }

      if (v26 >= a2)
      {
LABEL_159:
        __break(1u);
        goto LABEL_160;
      }

      if (*(v8 + v26) != 45)
      {
        goto LABEL_101;
      }

      if (v20 < v9 || v20 >= a2)
      {
        goto LABEL_163;
      }

      v27 = *(v8 + v20);
      if (v27 != 10)
      {
        goto LABEL_101;
      }

      if (v33 >= result)
      {
        return v21;
      }

      __break(1u);
      goto LABEL_77;
    }

    if (v26 >= result)
    {
      return result;
    }

    __break(1u);
  }

  else if (!a5)
  {
    v22 = a2;
    v23 = a4;
    v24 = a7;
    result = sub_1B0C77DD0(a7, v9, a2, v8, result);
    a7 = v24;
    a4 = v23;
    a2 = v22;
    if (v25 != -1)
    {
      return result;
    }

    goto LABEL_101;
  }

  v27 = a7 + 1;
  if (a7 >= a2)
  {
    goto LABEL_77;
  }

  if (a7 < v9)
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  if (*(v8 + a7) != 13)
  {
LABEL_77:
    v34 = a7 + 3;
    if (__OFADD__(a7, 3))
    {
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    if (v34 > a2)
    {
      goto LABEL_101;
    }

    if (a7 < v9 || a7 >= a2)
    {
      goto LABEL_155;
    }

    if (*(v8 + a7) != 45)
    {
      goto LABEL_101;
    }

    if (v27 >= a2)
    {
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
      goto LABEL_165;
    }

    if (*(v8 + v27) != 45)
    {
      goto LABEL_101;
    }

    if (v20 < v9 || v20 >= a2)
    {
      goto LABEL_164;
    }

    v32 = *(v8 + v20);
    if (v32 != 13)
    {
      goto LABEL_101;
    }

    if (v34 >= result)
    {
      return v21;
    }

    __break(1u);
    goto LABEL_89;
  }

  if (v27 >= result)
  {
    return result;
  }

  __break(1u);
LABEL_59:
  v28 = a4;
  v29 = a7;
  v30 = a2;
  result = sub_1B0C77DD0(a7, v9, a2, v8, result);
  if (v31 != -1)
  {
    return result;
  }

  a7 = v29;
  v32 = v29 + 1;
  a2 = v30;
  a4 = v28;
  if (v29 < v30)
  {
    if (v29 < v9)
    {
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    if (*(v8 + v29) == 10)
    {
      result = v21;
      if (v32 >= v21)
      {
        return result;
      }

      goto LABEL_162;
    }
  }

LABEL_89:
  v35 = a7 + 3;
  if (__OFADD__(a7, 3))
  {
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  if (v35 <= a2)
  {
    if (a7 < v9 || a7 >= a2)
    {
      goto LABEL_161;
    }

    if (*(v8 + a7) == 2)
    {
      if (v32 >= a2)
      {
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
        goto LABEL_167;
      }

      if (*(v8 + v32) == 45)
      {
        if (v20 < v9 || v20 >= a2)
        {
          goto LABEL_166;
        }

        if (*(v8 + v20) == 10)
        {
          if (v35 < v21)
          {
LABEL_167:
            __break(1u);
            return result;
          }

          return v21;
        }
      }
    }
  }

LABEL_101:
  if (a2 < a7)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (a7 < v9)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v41 = a7;
  v42 = a2;
  v43 = v8;
  v44 = a4;
  if (a7 == a2)
  {
    goto LABEL_104;
  }

  if (a7 >= a2)
  {
    goto LABEL_144;
  }

  result = v21;
  v36 = *(v8 + a7);
  if (v36 == 45)
  {
    if (a7 + 1 != a2)
    {
      if (a7 + 1 >= a2)
      {
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      if (*(v8 + a7 + 1) == 45)
      {
        a7 += 2;
        v41 = a7;
        if (a7 == a2)
        {
          goto LABEL_127;
        }

        goto LABEL_112;
      }
    }

    return 0;
  }

LABEL_112:
  if (a7 <= a2)
  {
    v37 = a2;
  }

  else
  {
    v37 = a7;
  }

  if (a7 >= a2)
  {
    goto LABEL_135;
  }

  v38 = *(v8 + a7);
  if (v38 != 32 && v38 != 9)
  {
    goto LABEL_129;
  }

  if (++a7 != a2)
  {
    while (v37 != a7)
    {
      v39 = *(v8 + a7);
      if (v39 != 32 && v39 != 9)
      {
        goto LABEL_129;
      }

      if (a2 == ++a7)
      {
        goto LABEL_126;
      }
    }

    goto LABEL_135;
  }

LABEL_126:
  v41 = a2;
  v42 = a2;
  v43 = v8;
  v44 = a4;
  if (v36 == 45)
  {
    goto LABEL_127;
  }

LABEL_104:
  v8 = &v41;
  if ((sub_1B0C94298(a5) & 1) == 0)
  {
    return 0;
  }

  while (1)
  {
    result = v21;
LABEL_127:
    a2 = v41;
    if (v41 >= result)
    {
      return result;
    }

    __break(1u);
LABEL_129:
    v41 = a7;
    v42 = a2;
    v43 = v8;
    v44 = a4;
    if (v36 != 45)
    {
      goto LABEL_104;
    }

    v8 = &v41;
    if ((sub_1B0C94298(a5) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1B0C77CA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__OFADD__(result, 4))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (result + 4 > a4)
  {
    return 0;
  }

  v4 = result;
  result = a4 - 4;
  if (a4 - 4 < v4 || result >= a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a3 + result) != 13)
  {
    return 0;
  }

  if (a4 - 3 >= a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*(a3 + a4 - 3) != 10)
  {
    return 0;
  }

  if (a4 - 2 >= a2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (*(a3 + a4 - 2) != 45)
  {
    return 0;
  }

  if (a4 <= a2)
  {
    if (*(a3 + a4 - 1) == 45)
    {
      return result;
    }

    return 0;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1B0C77D48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__OFADD__(result, 3))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (result + 3 > a4)
  {
    return 0;
  }

  v4 = result;
  result = a4 - 3;
  if (a4 - 3 < v4 || result >= a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a3 + result) != 10)
  {
    return 0;
  }

  if (a4 - 2 >= a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(a3 + a4 - 2) != 45)
  {
    return 0;
  }

  if (a4 <= a2)
  {
    if (*(a3 + a4 - 1) == 45)
    {
      return result;
    }

    return 0;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1B0C77DD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result + 2;
  if (__OFADD__(result, 2))
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v6 <= a3)
  {
    if (result < a2 || result >= a3)
    {
      goto LABEL_27;
    }

    if (*(a4 + result) == 13)
    {
      if (result + 1 >= a3)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (*(a4 + result + 1) == 10)
      {
        if (v6 >= a5)
        {
          return a5;
        }

        goto LABEL_31;
      }
    }
  }

  v7 = result + 4;
  if (__OFADD__(result, 4))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v7 > a3)
  {
    return 0;
  }

  if (result < a2 || result >= a3)
  {
    goto LABEL_28;
  }

  if (*(a4 + result) != 45)
  {
    return 0;
  }

  if (result + 1 >= a3)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (*(a4 + result + 1) != 45)
  {
    return 0;
  }

  if (v6 < a2 || v6 >= a3)
  {
    goto LABEL_32;
  }

  if (*(a4 + v6) != 13)
  {
    return 0;
  }

  if (result + 3 < a3)
  {
    if (*(a4 + result + 3) == 10)
    {
      if (v7 >= a5)
      {
        return a5;
      }

      goto LABEL_34;
    }

    return 0;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

double Cache.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = v2;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  return result;
}

double Cache.init()()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 80) = v2;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  return result;
}

uint64_t Cache.deinit()
{
  swift_beginAccess();
  v1 = *(*(v0 + 80) + 16);
  if (v1)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v2 = 40;
    do
    {
      ucnv_close();
      v2 += 16;
      --v1;
    }

    while (v1);
  }

  if ((*(v0 + 96) & 1) == 0)
  {
    v3 = *(v0 + 88);
    if (v3)
    {
      uidna_close(v3);
    }
  }

  return v0;
}

uint64_t Cache.__deallocating_deinit()
{
  Cache.deinit();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for Cache.CachedConverter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for Cache.CachedConverter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1B0C78104(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  v24 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v7 = *(a2 + 80);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (v7 + 40);
    do
    {
      v11 = *(v10 - 1);
      if (v11 == a1)
      {
        v16 = *v10;
        if (v9)
        {
          sub_1B0C78370(v9);
          sub_1B0C783FC(0, 0, v11, v16);
        }

        swift_endAccess();
        ucnv_reset();
        ucnv_setFallback();
        v19 = v16;
        goto LABEL_16;
      }

      ++v9;
      v10 += 2;
    }

    while (v8 != v9);
  }

  swift_endAccess();
  LODWORD(v19) = 0;
  v12 = ucnv_open();
  ucnv_setFallback();
  swift_beginAccess();
  sub_1B0C783FC(0, 0, a1, v12);
  v13 = *(a2 + 80);
  if (*(v13 + 2) < 3uLL)
  {
    goto LABEL_12;
  }

  while (1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 80) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      break;
    }

    v15 = *(v13 + 2);
    if (!v15)
    {
      goto LABEL_11;
    }

LABEL_8:
    *(v13 + 2) = v15 - 1;
    *(a2 + 80) = v13;
    ucnv_close();
    if (*(v13 + 2) <= 2uLL)
    {
      goto LABEL_12;
    }
  }

  v13 = sub_1B0C785A0(v13);
  v15 = *(v13 + 2);
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  swift_endAccess();
  v19 = v12;
LABEL_16:
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0xE000000000000000;
  a3(&v18, &v19);

  if (!v3)
  {
    return v18;
  }

  return result;
}

uint64_t sub_1B0C78370(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0C785A0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_1B0C783FC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_1B0C80F4C(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  result = sub_1B0C784D8(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

unint64_t sub_1B0C784D8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v5;
  v9 = (v8 + 32 + 16 * result);
  if (v7)
  {
    v10 = *(v8 + 16);
    v11 = __OFSUB__(v10, a2);
    v12 = v10 - a2;
    if (!v11)
    {
      result = &v9[2 * a3];
      v13 = (v8 + 32 + 16 * a2);
      if (result != v13 || result >= v13 + 16 * v12)
      {
        v15 = a3;
        v16 = a5;
        v17 = a4;
        result = memmove(result, v13, 16 * v12);
        a3 = v15;
        a4 = v17;
        a5 = v16;
      }

      v18 = *(v8 + 16);
      v11 = __OFADD__(v18, v7);
      v19 = v18 + v7;
      if (!v11)
      {
        *(v8 + 16) = v19;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v9 = a4;
    v9[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t ContentDisposition.kind.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B08C512C(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ContentDisposition.attributes.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t static ContentDisposition.Kind.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      return !a4;
    case 1:
      return a4 == 1;
    case 2:
      return a4 == 2;
  }

  if (a4 < 3)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t sub_1B0C7872C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  switch(v3)
  {
    case 0:
      return !v4;
    case 1:
      return v4 == 1;
    case 2:
      return v4 == 2;
  }

  if (v4 < 3)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  return sub_1B0E46A78();
}

double sub_1B0C787D4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t ContentDisposition.Attribute.key.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B0C78820(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_1B0C78820(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t ContentDisposition.Attribute.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static ContentDisposition.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    if (!a5)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (a5 == 1)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (a2 != 2)
  {
    if (a5 >= 3)
    {
      if (a1 == a4 && a2 == a5)
      {
        goto LABEL_15;
      }

      v8 = a3;
      v9 = a6;
      v10 = sub_1B0E46A78();
      a3 = v8;
      a6 = v9;
      if (v10)
      {
        goto LABEL_15;
      }
    }

    return 0;
  }

  if (a5 != 2)
  {
    return 0;
  }

LABEL_15:

  return sub_1B0C78C0C(a3, a6);
}

uint64_t sub_1B0C789C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    for (i = (a2 + 64); ; i += 12)
    {
      v5 = *(v3 - 3);
      v6 = *(v3 - 2);
      v8 = *(v3 - 1);
      v7 = *v3;
      v10 = v3[1];
      v9 = v3[2];
      v11 = v3[3];
      v46 = v3[7];
      v12 = *(i - 3);
      v13 = *(i - 2);
      v15 = *(i - 1);
      v14 = *i;
      v17 = i[1];
      v16 = i[2];
      v18 = i[3];
      v45 = i[6];
      v43 = i[4];
      v44 = i[7];
      v41 = v3[6];
      v42 = i[5];
      v39 = v3[4];
      v40 = v3[5];
      if (v5)
      {
        if (!v12)
        {
          return 0;
        }

        if (*(v3 - 4) != *(i - 4) || v5 != v12)
        {
          v36 = v3[2];
          v37 = i[2];
          v19 = v3[3];
          v34 = i[3];
          v35 = v3[1];
          v20 = *v3;
          v21 = *i;
          v33 = i[1];
          v22 = sub_1B0E46A78();
          v17 = v33;
          v18 = v34;
          v14 = v21;
          v10 = v35;
          v9 = v36;
          v7 = v20;
          v16 = v37;
          v11 = v19;
          if ((v22 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v12)
      {
        return 0;
      }

      if (v6 != v13 || v8 != v15)
      {
        v38 = v16;
        v23 = v9;
        v24 = v11;
        v25 = v18;
        v26 = v7;
        v27 = v10;
        v28 = v14;
        v29 = v2;
        v30 = v17;
        v31 = sub_1B0E46A78();
        v17 = v30;
        v2 = v29;
        v14 = v28;
        v10 = v27;
        v7 = v26;
        v18 = v25;
        v16 = v38;
        v11 = v24;
        v9 = v23;
        if ((v31 & 1) == 0)
        {
          break;
        }
      }

      if ((v9 != v16 || v11 != v18 || v7 >> 16 != v14 >> 16 || v10 >> 16 != v17 >> 16) && (sub_1B0E469B8() & 1) == 0 || (v41 != v45 || v46 != v44 || v39 >> 16 != v43 >> 16 || v40 >> 16 != v42 >> 16) && (sub_1B0E469B8() & 1) == 0)
      {
        break;
      }

      v3 += 12;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B0C78C0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      if (v5 > 2)
      {
        switch(v5)
        {
          case 3:
            if (v8 != 3)
            {
              return 0;
            }

            goto LABEL_30;
          case 4:
            if (v8 != 4)
            {
              return 0;
            }

            goto LABEL_30;
          case 5:
            if (v8 != 5)
            {
              return 0;
            }

            goto LABEL_30;
        }
      }

      else
      {
        switch(v5)
        {
          case 0:
            if (v8)
            {
              return 0;
            }

            goto LABEL_30;
          case 1:
            if (v8 != 1)
            {
              return 0;
            }

            goto LABEL_30;
          case 2:
            if (v8 != 2)
            {
              return 0;
            }

            goto LABEL_30;
        }
      }

      if (v8 < 6)
      {
        return 0;
      }

      if (*(v3 - 3) != *(v4 - 3) || v5 != v8)
      {
        v11 = *(v3 - 1);
        v12 = *v3;
        v13 = *(v4 - 1);
        v14 = *v4;
        v15 = sub_1B0E46A78();
        v10 = v14;
        v9 = v13;
        v7 = v12;
        v16 = v15;
        v6 = v11;
        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }

LABEL_30:
      if ((v6 != v9 || v7 != v10) && (sub_1B0E46A78() & 1) == 0)
      {
        return 0;
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B0C78D8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1B0E46A78() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1B0E46A78() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B0C78E5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 48);
    v28[0] = *(a1 + 32);
    v28[1] = v3;
    v29 = *(a1 + 64);
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    v7 = *(a2 + 48);
    v30[0] = *(a2 + 32);
    v30[1] = v7;
    v31 = *(a2 + 64);
    v8 = *(a2 + 40);
    v22 = *(a2 + 32);
    v23 = v4;
    v9 = *(a2 + 48);
    v10 = *(a2 + 56);
    v11 = *(a2 + 64);
    v13 = *(a2 + 72);
    v12 = *(a2 + 80);
    if (!_s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v28, v30))
    {
      return 0;
    }

    v15 = (a1 + 136);
    for (i = a2 + 88; ; i += 56)
    {
      if (v5)
      {
        if (!v12 || (v23 != v13 || v5 != v12) && (sub_1B0E46A78() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        sub_1B07ACBF8(v22, v8, v9, v10, v11);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B07ACE18(v22, v8, v9, v10, v11);
        if (v12)
        {

          return 0;
        }
      }

      if (!--v2)
      {
        return 1;
      }

      v17 = *(v15 - 2);
      v24[0] = *(v15 - 3);
      v24[1] = v17;
      v25 = *(v15 - 16);
      v18 = *(v15 - 1);
      v5 = *v15;
      v19 = *(i + 16);
      v26[0] = *i;
      v26[1] = v19;
      v11 = *(i + 32);
      v27 = v11;
      v8 = *(i + 8);
      v22 = *i;
      v23 = v18;
      v9 = *(i + 16);
      v10 = *(i + 24);
      v13 = *(i + 40);
      v12 = *(i + 48);
      v20 = _s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v24, v26);
      result = 0;
      v15 += 7;
      if (!v20)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t sub_1B0C79008(uint64_t *a1, void *a2)
{
  v6 = a1[1];
  v5 = a1[2];
  v8 = a2[1];
  v7 = a2[2];
  if (!v6)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v6 == 1)
  {
    if (v8 == 1)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v6 != 2)
  {
    if (v8 >= 3)
    {
      if (*a1 == *a2 && v6 == v8)
      {
        goto LABEL_15;
      }

      v10 = v5;
      v11 = v7;
      v12 = sub_1B0E46A78();
      v7 = v11;
      v13 = v12;
      v5 = v10;
      if (v13)
      {
        goto LABEL_15;
      }
    }

    return 0;
  }

  if (v8 != 2)
  {
    return 0;
  }

LABEL_15:

  return sub_1B0C78C0C(v5, v7);
}

uint64_t ContentDisposition.description.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1B08C50F0(a1, a2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return _sSS9IMAP2MIMEEySSAA18ContentDispositionVcfC_0(a1, a2, a3);
}

uint64_t sub_1B0C79124()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B08C50F0(v1, v2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return _sSS9IMAP2MIMEEySSAA18ContentDispositionVcfC_0(v1, v2, v3);
}

uint64_t ContentDisposition.Kind.description.getter(uint64_t a1, unint64_t a2)
{
  v2 = 0x656D686361747461;
  v3 = 0x7461642D6D726F66;
  if (a2 != 2)
  {
    v3 = a1;
  }

  if (a2 != 1)
  {
    v2 = v3;
  }

  if (a2)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x656E696C6E69;
  }

  sub_1B08C50F0(a1, a2);
  return v4;
}

uint64_t String.init(_:)(uint64_t a1, uint64_t a2)
{
  v2 = 0x656D686361747461;
  v3 = 0x7461642D6D726F66;
  if (a2 != 2)
  {
    v3 = a1;
  }

  if (a2 != 1)
  {
    v2 = v3;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 0x656E696C6E69;
  }
}

{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        return 0x7461642D64616572;
      case 4:
        return 1702521203;
      case 5:
        return 1701667182;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return 0x6E6F697461657263;
    }

    else if (a2 == 2)
    {
      return 0xD000000000000011;
    }
  }

  else
  {
    return 0x656D616E656C6966;
  }

  return result;
}

uint64_t sub_1B0C79274()
{
  v1 = v0[1];
  v2 = 0x656D686361747461;
  v3 = 0x7461642D6D726F66;
  if (v1 != 2)
  {
    v3 = *v0;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x656E696C6E69;
  }

  sub_1B08C50F0(*v0, v1);
  return v4;
}

uint64_t ContentDisposition.Attribute.description.getter(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B0C787D4(a1, a2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return _sSS9IMAP2MIMEEySSAA18ContentDispositionV9AttributeVcfC_0(a1, a2, a3, a4);
}

uint64_t sub_1B0C79368()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1B0C787D4(v1, v2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return _sSS9IMAP2MIMEEySSAA18ContentDispositionV9AttributeVcfC_0(v1, v2, v4, v3);
}

unint64_t ContentDisposition.Attribute.Key.description.getter(unint64_t a1, int64_t a2)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v2 = 0x7461642D64616572;
        goto LABEL_15;
      case 4:
        v2 = 1702521203;
        goto LABEL_15;
      case 5:
        v2 = 1701667182;
        goto LABEL_15;
    }

LABEL_12:
    v2 = a1;
    goto LABEL_15;
  }

  if (!a2)
  {
    v2 = 0x656D616E656C6966;
    goto LABEL_15;
  }

  if (a2 == 1)
  {
    v2 = 0x6E6F697461657263;
    goto LABEL_15;
  }

  if (a2 != 2)
  {
    goto LABEL_12;
  }

  v2 = 0xD000000000000011;
LABEL_15:
  sub_1B0C787D4(a1, a2);
  return v2;
}

uint64_t sub_1B0C795A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (!v5)
  {
    return 0;
  }

  for (i = (a5 + 80); ; i += 7)
  {
    if (*(i - 4))
    {
      goto LABEL_5;
    }

    v8 = *(i - 3);
    v9 = *(i - 2);
    v10 = *(i - 8);
    v11 = *i;
    v12 = *(i - 48);
    if (v12 <= 2 && v12 != 1 && v12 != 2)
    {
      break;
    }

    v7 = sub_1B0E46A78();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_5:
    if (!--v5)
    {
      return 0;
    }
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

LABEL_14:

  return sub_1B0CAFCA4(v8, v9, v10, v11, a1);
}

uint64_t sub_1B0C79748()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C797F0(unsigned __int8 a1)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C798FC(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0C79990(uint64_t a1)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C79A34(uint64_t a1, unsigned __int8 a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

unint64_t sub_1B0C79B3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0C7BB60(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B0C79B6C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEA0000000000746ELL;
  v5 = 0x656D686361747461;
  if (v2 != 1)
  {
    v5 = 0x7461642D6D726F66;
    v4 = 0xE900000000000061;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696C6E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B0C79BD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656D686361747461;
  v4 = 0xEA0000000000746ELL;
  if (v2 != 1)
  {
    v3 = 0x7461642D6D726F66;
    v4 = 0xE900000000000061;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656E696C6E69;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x656D686361747461;
  v8 = 0xEA0000000000746ELL;
  if (*a2 != 1)
  {
    v7 = 0x7461642D6D726F66;
    v8 = 0xE900000000000061;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656E696C6E69;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B0E46A78();
  }

  return v11 & 1;
}

unint64_t sub_1B0C79CF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0C7BBAC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B0C79D3C(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

unint64_t sub_1B0C79E30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0C7BBF8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B0C79E60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656D616E656C6966;
  v5 = 0xE900000000000065;
  v6 = 0x7461642D64616572;
  v7 = 1702521203;
  if (v2 != 4)
  {
    v7 = 1701667182;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  v8 = 0xED0000657461642DLL;
  v9 = 0x6E6F697461657263;
  if (v2 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = 0x80000001B0F2E2D0;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1B0C79F34(char *a1, char *a2)
{
  v4 = sub_1B0C7D3FC(0, a1, a2);
  v5 = sub_1B0C7D3FC(1, a1, a2);
  v6 = sub_1B0C7D3FC(2, a1, a2);
  v7 = sub_1B0C7D3FC(3, a1, a2);
  if (v4 > 0x6Du)
  {
    if (v4 == 110)
    {
      if (v5 != 97 || v6 != 109 || v7 != 101)
      {
        return 6;
      }

      v8 = a1;
      v9 = a2;
      v10 = 5;
    }

    else if (v4 == 114)
    {
      if (v5 != 101 || v6 != 97 || v7 != 100)
      {
        return 6;
      }

      v8 = a1;
      v9 = a2;
      v10 = 3;
    }

    else
    {
      if (v4 != 115 || v5 != 105 || v6 != 122 || v7 != 101)
      {
        return 6;
      }

      v8 = a1;
      v9 = a2;
      v10 = 4;
    }

    goto LABEL_32;
  }

  if (v4 == 99)
  {
    if (v5 != 114 || v6 != 101 || v7 != 97)
    {
      return 6;
    }

    v8 = a1;
    v9 = a2;
    v10 = 1;
    goto LABEL_32;
  }

  if (v4 == 102)
  {
    if (v5 != 105 || v6 != 108 || v7 != 101)
    {
      return 6;
    }

    v8 = a1;
    v9 = a2;
    v10 = 0;
LABEL_32:
    result = sub_1B0C7C0D8(v8, v9, v10);
    if (result != 6)
    {
      return result;
    }

    return 6;
  }

  if (v4 == 109 && v5 == 111 && v6 == 100 && v7 == 105)
  {
    v8 = a1;
    v9 = a2;
    v10 = 2;
    goto LABEL_32;
  }

  return 6;
}

uint64_t sub_1B0C7A138(char *a1, char *a2)
{
  v4 = sub_1B0C7D3FC(0, a1, a2);
  v5 = sub_1B0C7D3FC(1, a1, a2);
  v6 = sub_1B0C7D3FC(2, a1, a2);
  v7 = sub_1B0C7D3FC(3, a1, a2);
  if (v4 == 97)
  {
    if (v5 != 116 || v6 != 116 || v7 != 97)
    {
      return 3;
    }

    v8 = a1;
    v9 = a2;
    v10 = 1;
    goto LABEL_16;
  }

  if (v4 == 102)
  {
    if (v5 != 111 || v6 != 114 || v7 != 109)
    {
      return 3;
    }

    v8 = a1;
    v9 = a2;
    v10 = 2;
LABEL_16:
    result = sub_1B0C7BEE4(v8, v9, v10);
    if (result != 3)
    {
      return result;
    }

    return 3;
  }

  if (v4 == 105 && v5 == 110 && v6 == 108 && v7 == 105)
  {
    v8 = a1;
    v9 = a2;
    v10 = 0;
    goto LABEL_16;
  }

  return 3;
}

uint64_t sub_1B0C7A280(unsigned __int8 *a1, unsigned __int8 *a2, char a3, uint64_t a4, uint64_t a5)
{
  v69 = *MEMORY[0x1E69E9840];
  if ((a3 & 1) == 0)
  {
    v8 = 0;
    v7 = a1;
    v9 = *(a4 + 16);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_53:

    return v8;
  }

  v8 = sub_1B0C895C4(a1, a2);
  v9 = *(a4 + 16);
  if (!v9)
  {
    goto LABEL_53;
  }

LABEL_3:
  v55[1] = v7;
  v56 = v8;
  v65 = MEMORY[0x1E69E7CC0];
  v60 = a5;
  sub_1B0CBA48C(0, v9, 0);
  v10 = 0;
  v57 = 0;
  v58 = v9;
  v11 = v65;
  v55[0] = a4;
  v59 = a4 + 32;
  while (1)
  {
    v61 = v11;
    v12 = (v59 + 56 * v10);
    v13 = *v12;
    v15 = v12[3];
    v14 = v12[4];
    v16 = *(v12 + 40);
    v17 = v12[6];
    if (v12[2])
    {
      break;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v23 = 0;
    v24 = v13;
    if (v16)
    {
      goto LABEL_20;
    }

LABEL_42:
    v41 = v23;
    v66 = 0;
    v67 = 0xE000000000000000;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v42 = v60;

    sub_1B0CAF2F8(v15, v14, v16, v17, v15, v14, v16, v17, v42, &v66);
    swift_bridgeObjectRelease_n();

    v43 = v66;
    v44 = v67;
    v45 = v58;
    v11 = v61;
LABEL_43:
    v65 = v11;
    v47 = *(v11 + 16);
    v46 = *(v11 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_1B0CBA48C((v46 > 1), v47 + 1, 1);
      v11 = v65;
    }

    ++v10;
    *(v11 + 16) = v47 + 1;
    v48 = (v11 + 32 * v47);
    v48[4] = v41;
    v48[5] = v24;
    v48[6] = v43;
    v48[7] = v44;
    if (v10 == v45)
    {

      return v56;
    }
  }

  v18 = v12[1];
  v66 = 0;
  v67 = 0xE000000000000000;
  if (v13)
  {
    v19 = v18 - v13;
  }

  else
  {
    v19 = 0;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  MEMORY[0x1B2726D20](v19);
  if (v13)
  {
    v20 = v18 == v13;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v21 = v66;
    v22 = v67;
    do
    {
      if (*v13 - 1 <= 0x7D)
      {
        v63 = v21;
        v64 = v22;
        sub_1B0E44C58();
        v21 = v63;
        v22 = v64;
      }

      ++v13;
    }

    while (v13 != v18);
    v66 = v21;
    v67 = v22;
  }

  v23 = v66;
  v24 = v67;
  if (!v16)
  {
    goto LABEL_42;
  }

LABEL_20:
  if (*(v17 + 16) != 1)
  {
    goto LABEL_42;
  }

  if ((*(v17 + 48) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  v25 = *(v17 + 32);
  v26 = *(v17 + 40);
  if ((sub_1B0CAE540(v25, v26) & 1) == 0)
  {
    goto LABEL_42;
  }

  if (v25)
  {
    v27 = v26 - v25;
  }

  else
  {
    v27 = 0;
  }

  if (v27 < 0)
  {
    __break(1u);
LABEL_56:
    __break(1u);
  }

  v28 = sub_1B0CB4F5C(0, v27, v25, v26);
  if (v30)
  {
    v31 = v30 + v29;
  }

  else
  {
    v31 = 0;
  }

  if (v30)
  {
    v32 = v30 + v28;
  }

  else
  {
    v32 = 0;
  }

  v63 = 0;
  v64 = 0xE000000000000000;
  v33 = v31 - v32;
  if (v32)
  {
    v34 = v31 - v32;
  }

  else
  {
    v34 = 0;
  }

  MEMORY[0x1B2726D20](v34);
  v62 = 0;
  if (!v32)
  {
    v33 = 0;
    v11 = v61;
LABEL_48:

    goto LABEL_49;
  }

  v35 = v60;
  v11 = v61;
  if (v33 < 0)
  {
    goto LABEL_56;
  }

  if (v33 < 1025)
  {
    goto LABEL_48;
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
LABEL_49:
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v66 = v55 - v49;
    v67 = v33;
    v68 = 0;
    v50 = v57;
    sub_1B0CAC0EC(&v66, &v63, v32, v31, v51, &v62, v52, v53);
    if (v50)
    {
      goto LABEL_58;
    }

    v57 = 0;
    goto LABEL_51;
  }

  v37 = swift_slowAlloc();

  v38 = v35;
  v39 = v57;
  sub_1B0CB1ED8(v37, v31 - v32, &v63, v32, v31, v38, &v62, v40);
  if (!v39)
  {
    v57 = 0;
    MEMORY[0x1B272C230](v37, -1, -1);
LABEL_51:
    v45 = v58;
    v41 = v23;

    v43 = v63;
    v44 = v64;
    goto LABEL_43;
  }

  MEMORY[0x1B272C230](v37, -1, -1);
  __break(1u);
LABEL_58:

  result = swift_willThrow();
  __break(1u);
  return result;
}

uint64_t sub_1B0C7A730(uint64_t a1)
{
  v1 = a1 + 24;
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 32;
    v4 = *(v1 + 16);
    v1 += 32;
    if (!v4)
    {
      v5 = *(v3 - 8);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      return v5;
    }
  }

  return 0;
}

uint64_t _s9IMAP2MIME18ContentDispositionV9AttributeV3KeyO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        return a4 == 3;
      case 4:
        return a4 == 4;
      case 5:
        return a4 == 5;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        return !a4;
      case 1:
        return a4 == 1;
      case 2:
        return a4 == 2;
    }
  }

  if (a4 < 6)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t _s9IMAP2MIME18ContentDispositionV9AttributeV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        if (a6 == 3)
        {
          goto LABEL_24;
        }

        break;
      case 4:
        if (a6 == 4)
        {
          goto LABEL_24;
        }

        break;
      case 5:
        if (a6 == 5)
        {
          goto LABEL_24;
        }

        break;
      default:
        goto LABEL_16;
    }

    return 0;
  }

  if (!a2)
  {
    if (!a6)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (a6 == 1)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (a2 != 2)
  {
LABEL_16:
    if (a6 < 6)
    {
      return 0;
    }

    if (a1 != a5 || a2 != a6)
    {
      v9 = a3;
      v10 = a4;
      v11 = a8;
      v12 = a7;
      v13 = sub_1B0E46A78();
      a3 = v9;
      a4 = v10;
      a7 = v12;
      a8 = v11;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_24;
  }

  if (a6 != 2)
  {
    return 0;
  }

LABEL_24:
  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  return sub_1B0E46A78();
}

uint64_t _sSS9IMAP2MIMEEySSAA18ContentDispositionV9AttributeVcfC_0(unint64_t a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = qword_1EB6E5CC8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = 0x656D616E656C6966;
  v10 = sub_1B0E429A8();
  __swift_project_value_buffer(v10, qword_1EB6E5DC8);
  sub_1B07C7F5C();
  sub_1B0E45EF8();
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    if (a2 > 2)
    {
      switch(a2)
      {
        case 3:
          v9 = 0x7461642D64616572;
          v14 = 0xE900000000000065;
          goto LABEL_33;
        case 4:
          v14 = 0xE400000000000000;
          v9 = 1702521203;
          goto LABEL_33;
        case 5:
          v14 = 0xE400000000000000;
          v9 = 1701667182;
          goto LABEL_33;
      }
    }

    else
    {
      switch(a2)
      {
        case 0:
          v14 = 0xE800000000000000;
          goto LABEL_33;
        case 1:
          v9 = 0x6E6F697461657263;
          v14 = 0xED0000657461642DLL;
          goto LABEL_33;
        case 2:
          v9 = 0xD000000000000011;
          v14 = 0x80000001B0F2E2D0;
LABEL_33:
          sub_1B0C787D4(a1, a2);
          v16 = sub_1B0C787D4(a1, a2);
          MEMORY[0x1B2726E80](v9, v14, v16);

          sub_1B0C78820(a1, a2);
          MEMORY[0x1B2726E80](8765, 0xE200000000000000);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          MEMORY[0x1B2726E80](a3, a4);
          sub_1B0C78820(a1, a2);
          swift_bridgeObjectRelease_n();
          MEMORY[0x1B2726E80](34, 0xE100000000000000);
          return 0;
      }
    }

    v9 = a1;
    v14 = a2;
    goto LABEL_33;
  }

  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v9 = 0x7461642D64616572;
        v13 = 0xE900000000000065;
        goto LABEL_31;
      case 4:
        v13 = 0xE400000000000000;
        v9 = 1702521203;
        goto LABEL_31;
      case 5:
        v13 = 0xE400000000000000;
        v9 = 1701667182;
        goto LABEL_31;
    }

LABEL_26:
    v9 = a1;
    v13 = a2;
    goto LABEL_31;
  }

  if (!a2)
  {
    v13 = 0xE800000000000000;
    goto LABEL_31;
  }

  if (a2 == 1)
  {
    v9 = 0x6E6F697461657263;
    v13 = 0xED0000657461642DLL;
    goto LABEL_31;
  }

  if (a2 != 2)
  {
    goto LABEL_26;
  }

  v9 = 0xD000000000000011;
  v13 = 0x80000001B0F2E2D0;
LABEL_31:
  sub_1B0C787D4(a1, a2);
  v15 = sub_1B0C787D4(a1, a2);
  MEMORY[0x1B2726E80](v9, v13, v15);

  sub_1B0C78820(a1, a2);
  MEMORY[0x1B2726E80](61, 0xE100000000000000);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1B2726E80](a3, a4);
  sub_1B0C78820(a1, a2);
  swift_bridgeObjectRelease_n();
  return 0;
}

uint64_t _sSS9IMAP2MIMEEySSAA18ContentDispositionVcfC_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0x656D686361747461;
  v4 = 0x7461642D6D726F66;
  if (a2 != 2)
  {
    v4 = a1;
  }

  if (a2 != 1)
  {
    v3 = v4;
  }

  if (a2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656E696C6E69;
  }

  v14 = v5;
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 56);
    do
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      sub_1B0C787D4(v8, v9);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v12 = _sSS9IMAP2MIMEEySSAA18ContentDispositionV9AttributeVcfC_0(v8, v9, v10, v11);
      MEMORY[0x1B2726E80](v12);

      MEMORY[0x1B2726E80](8251, 0xE200000000000000);

      v7 += 4;
      --v6;
    }

    while (v6);

    return v14;
  }

  else
  {
  }

  return v5;
}

uint64_t _s9IMAP2MIME18ContentDispositionV4KindO13stringLiteralAESS_tcfC_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0x656E696C6E69;
  v6 = sub_1B0E44B98();
  v7 = 0x656D686361747461;
  v8 = 0xEA0000000000746ELL;
  if (byte_1F27228F8 != 1)
  {
    v7 = 0x7461642D6D726F66;
    v8 = 0xE900000000000061;
  }

  if (byte_1F27228F8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656E696C6E69;
  }

  if (byte_1F27228F8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  v11 = v5;
  if (v9 == v6 && v10 == v5)
  {
    goto LABEL_11;
  }

  v12 = sub_1B0E46A78();

  if (v12)
  {
LABEL_13:

    goto LABEL_14;
  }

  if (byte_1F27228F9)
  {
    if (byte_1F27228F9 == 1)
    {
      v14 = 0xEA0000000000746ELL;
      if (v6 != 0x656D686361747461)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v14 = 0xE900000000000061;
      if (v6 != 0x7461642D6D726F66)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v14 = 0xE600000000000000;
    if (v6 != 0x656E696C6E69)
    {
      goto LABEL_23;
    }
  }

  if (v14 == v11)
  {
    goto LABEL_11;
  }

LABEL_23:
  v15 = sub_1B0E46A78();

  if (v15)
  {
    goto LABEL_13;
  }

  if (byte_1F27228FA)
  {
    if (byte_1F27228FA == 1)
    {
      v3 = 0x656D686361747461;
      v16 = 0xEA0000000000746ELL;
    }

    else
    {
      v3 = 0x7461642D6D726F66;
      v16 = 0xE900000000000061;
    }
  }

  else
  {
    v16 = 0xE600000000000000;
  }

  if (v3 == v6 && v16 == v11)
  {
LABEL_11:

LABEL_14:

    return 0;
  }

  v17 = sub_1B0E46A78();

  if (v17)
  {
    goto LABEL_13;
  }

  return a1;
}

uint64_t _s9IMAP2MIME18ContentDispositionV9AttributeV3KeyO13stringLiteralAGSS_tcfC_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0x656D616E656C6966;
  v6 = sub_1B0E44B98();
  v7 = 0xE800000000000000;
  v8 = 0x7461642D64616572;
  v9 = 0xE900000000000065;
  v10 = 1702521203;
  if (byte_1F2722920 != 4)
  {
    v10 = 1701667182;
  }

  if (byte_1F2722920 != 3)
  {
    v8 = v10;
    v9 = 0xE400000000000000;
  }

  v11 = 0x6E6F697461657263;
  v12 = 0xED0000657461642DLL;
  if (byte_1F2722920 != 1)
  {
    v11 = 0xD000000000000011;
    v12 = 0x80000001B0F2E2D0;
  }

  if (byte_1F2722920)
  {
    v7 = v12;
  }

  else
  {
    v11 = 0x656D616E656C6966;
  }

  if (byte_1F2722920 <= 2u)
  {
    v13 = v11;
  }

  else
  {
    v13 = v8;
  }

  if (byte_1F2722920 <= 2u)
  {
    v14 = v7;
  }

  else
  {
    v14 = v9;
  }

  v15 = v5;
  if (v13 == v6 && v14 == v5)
  {
    goto LABEL_18;
  }

  v16 = sub_1B0E46A78();

  if (v16)
  {
    goto LABEL_20;
  }

  if (byte_1F2722921 > 2u)
  {
    if (byte_1F2722921 == 3)
    {
      v18 = 0xE900000000000065;
      if (v6 != 0x7461642D64616572)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v18 = 0xE400000000000000;
      if (byte_1F2722921 == 4)
      {
        if (v6 != 1702521203)
        {
          goto LABEL_38;
        }
      }

      else if (v6 != 1701667182)
      {
        goto LABEL_38;
      }
    }
  }

  else if (byte_1F2722921)
  {
    if (byte_1F2722921 == 1)
    {
      v18 = 0xED0000657461642DLL;
      if (v6 != 0x6E6F697461657263)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v18 = 0x80000001B0F2E2D0;
      if (v6 != 0xD000000000000011)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    v18 = 0xE800000000000000;
    if (v6 != 0x656D616E656C6966)
    {
      goto LABEL_38;
    }
  }

  if (v18 == v15)
  {
LABEL_18:

LABEL_20:

    return 0;
  }

LABEL_38:
  v19 = sub_1B0E46A78();

  if (v19)
  {
    goto LABEL_20;
  }

  if (byte_1F2722922 > 2u)
  {
    if (byte_1F2722922 == 3)
    {
      v20 = 0x7461642D64616572;
      v21 = 0xE900000000000065;
    }

    else
    {
      v21 = 0xE400000000000000;
      if (byte_1F2722922 == 4)
      {
        v20 = 1702521203;
      }

      else
      {
        v20 = 1701667182;
      }
    }
  }

  else if (byte_1F2722922)
  {
    if (byte_1F2722922 == 1)
    {
      v20 = 0x6E6F697461657263;
      v21 = 0xED0000657461642DLL;
    }

    else
    {
      v20 = 0xD000000000000011;
      v21 = 0x80000001B0F2E2D0;
    }
  }

  else
  {
    v21 = 0xE800000000000000;
    v20 = 0x656D616E656C6966;
  }

  if (v20 == v6 && v21 == v15)
  {
    goto LABEL_18;
  }

  v22 = sub_1B0E46A78();

  if (v22)
  {
    goto LABEL_20;
  }

  if (byte_1F2722923 > 2u)
  {
    if (byte_1F2722923 == 3)
    {
      v23 = 0x7461642D64616572;
      v24 = 0xE900000000000065;
    }

    else
    {
      v24 = 0xE400000000000000;
      v23 = byte_1F2722923 == 4 ? 1702521203 : 1701667182;
    }
  }

  else if (byte_1F2722923)
  {
    if (byte_1F2722923 == 1)
    {
      v23 = 0x6E6F697461657263;
      v24 = 0xED0000657461642DLL;
    }

    else
    {
      v23 = 0xD000000000000011;
      v24 = 0x80000001B0F2E2D0;
    }
  }

  else
  {
    v24 = 0xE800000000000000;
    v23 = 0x656D616E656C6966;
  }

  if (v23 == v6 && v24 == v15)
  {
    goto LABEL_18;
  }

  v25 = sub_1B0E46A78();

  if (v25)
  {
    goto LABEL_20;
  }

  if (byte_1F2722924 > 2u)
  {
    if (byte_1F2722924 == 3)
    {
      v26 = 0x7461642D64616572;
      v27 = 0xE900000000000065;
    }

    else
    {
      v27 = 0xE400000000000000;
      v26 = byte_1F2722924 == 4 ? 1702521203 : 1701667182;
    }
  }

  else if (byte_1F2722924)
  {
    if (byte_1F2722924 == 1)
    {
      v26 = 0x6E6F697461657263;
      v27 = 0xED0000657461642DLL;
    }

    else
    {
      v26 = 0xD000000000000011;
      v27 = 0x80000001B0F2E2D0;
    }
  }

  else
  {
    v27 = 0xE800000000000000;
    v26 = 0x656D616E656C6966;
  }

  if (v26 == v6 && v27 == v15)
  {
    goto LABEL_18;
  }

  v28 = sub_1B0E46A78();

  if (v28)
  {
    goto LABEL_20;
  }

  if (byte_1F2722925 > 2u)
  {
    if (byte_1F2722925 == 3)
    {
      v3 = 0x7461642D64616572;
      v29 = 0xE900000000000065;
    }

    else
    {
      v29 = 0xE400000000000000;
      v3 = byte_1F2722925 == 4 ? 1702521203 : 1701667182;
    }
  }

  else if (byte_1F2722925)
  {
    if (byte_1F2722925 == 1)
    {
      v3 = 0x6E6F697461657263;
      v29 = 0xED0000657461642DLL;
    }

    else
    {
      v3 = 0xD000000000000011;
      v29 = 0x80000001B0F2E2D0;
    }
  }

  else
  {
    v29 = 0xE800000000000000;
  }

  if (v3 == v6 && v29 == v15)
  {
    goto LABEL_18;
  }

  v30 = sub_1B0E46A78();

  if (v30)
  {
    goto LABEL_20;
  }

  return a1;
}

unint64_t sub_1B0C7B664()
{
  result = qword_1EB6E5D58;
  if (!qword_1EB6E5D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5D58);
  }

  return result;
}

unint64_t sub_1B0C7B6C8()
{
  result = qword_1EB6E5D60;
  if (!qword_1EB6E5D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5D60);
  }

  return result;
}

unint64_t sub_1B0C7B738()
{
  result = qword_1EB6E5D68;
  if (!qword_1EB6E5D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5D68);
  }

  return result;
}

unint64_t sub_1B0C7B790()
{
  result = qword_1EB6E5D70;
  if (!qword_1EB6E5D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5D70);
  }

  return result;
}

uint64_t sub_1B0C7B7F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0C7B850(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1B0C7B8C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0C7B918(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

unint64_t sub_1B0C7B9FC()
{
  result = qword_1EB6E5D88;
  if (!qword_1EB6E5D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5D88);
  }

  return result;
}

unint64_t sub_1B0C7BA84()
{
  result = qword_1EB6E5DA0;
  if (!qword_1EB6E5DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5DA0);
  }

  return result;
}

unint64_t sub_1B0C7BB0C()
{
  result = qword_1EB6E5DB8;
  if (!qword_1EB6E5DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5DB8);
  }

  return result;
}

unint64_t sub_1B0C7BB60(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E467E8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B0C7BBAC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E467E8();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B0C7BBF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E467E8();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B0C7BC9C(char *a1, char *a2, uint64_t a3)
{
  v3 = 0xEB00000000656C62;
  v4 = 0xE700000000000000;
  if (a3 != 8)
  {
    v4 = 0xE600000000000000;
  }

  v5 = 0xE500000000000000;
  if (a3 != 6)
  {
    v5 = 0xEF6563616C706572;
  }

  if (a3 == 5)
  {
    v5 = 0xE900000000000061;
  }

  if (a3 <= 7u)
  {
    v4 = v5;
  }

  v6 = 0xE900000000000064;
  if (a3 == 3)
  {
    v6 = 0xE600000000000000;
  }

  if (a3 == 2)
  {
    v6 = 0xE900000000000065;
  }

  if (!a3)
  {
    v3 = 0xEB00000000657669;
  }

  if (a3 > 1u)
  {
    v3 = v6;
  }

  if (a3 <= 4u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = a3;

  v11 = HIBYTE(v7) & 0xF;
  if (a1)
  {
    if (v11 != a2 - a1)
    {
      return 11;
    }
  }

  else if (v11)
  {
    return 11;
  }

  v12 = sub_1B0C95928(v8);
  v14 = sub_1B0CADCDC(v12, v13, a1, a2, sub_1B0C95118);

  if ((v14 & 1) == 0)
  {
    return 11;
  }

  return v8;
}

uint64_t sub_1B0C7BDD0(char *a1, char *a2, uint64_t a3)
{
  v3 = 0xE900000000000074;
  v4 = 0xE400000000000000;
  v5 = 0xE700000000000000;
  v6 = 0xE500000000000000;
  if (a3 != 8)
  {
    v5 = 0xE500000000000000;
  }

  if (a3 != 7)
  {
    v4 = v5;
  }

  v7 = 0xE400000000000000;
  if (a3 != 5)
  {
    v7 = 0xE500000000000000;
  }

  if (a3 <= 6u)
  {
    v4 = v7;
  }

  v8 = 0xE500000000000000;
  if (a3 != 3)
  {
    v6 = 0xE700000000000000;
  }

  if (a3 != 2)
  {
    v8 = v6;
  }

  if (a3)
  {
    v3 = 0xEB000000006E6F69;
  }

  if (a3 > 1u)
  {
    v3 = v8;
  }

  if (a3 <= 4u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  v10 = a3;

  v13 = HIBYTE(v9) & 0xF;
  if (a1)
  {
    if (v13 != a2 - a1)
    {
      return 10;
    }
  }

  else if (v13)
  {
    return 10;
  }

  v14 = sub_1B0C95BB0(v10);
  v16 = sub_1B0CADCDC(v14, v15, a1, a2, sub_1B0C95118);

  if ((v16 & 1) == 0)
  {
    return 10;
  }

  return v10;
}

uint64_t sub_1B0C7BEE4(char *a1, char *a2, uint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    if (a3 == 1)
    {
      v6 = 0xEA0000000000746ELL;
    }

    else
    {
      v6 = 0xE900000000000061;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = HIBYTE(v6) & 0xF;
  if (a1)
  {
    if (v7 != a2 - a1)
    {
      return 3;
    }
  }

  else if (v7)
  {
    return 3;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v8 = 0x656D686361747461;
    }

    else
    {
      v8 = 0x7461642D6D726F66;
    }

    if (v3 == 1)
    {
      v9 = 0xEA0000000000746ELL;
    }

    else
    {
      v9 = 0xE900000000000061;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
    v8 = 0x656E696C6E69;
  }

  v10 = sub_1B0CADCDC(v8, v9, a1, a2, sub_1B0C95118);

  if ((v10 & 1) == 0)
  {
    return 3;
  }

  return v3;
}

uint64_t sub_1B0C7BFF8(char *a1, char *a2, uint64_t a3)
{
  v3 = a3;
  v6 = sub_1B0CB7394(a3);
  v8 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v9 = sub_1B0E44DC8();

    if (a1)
    {
      goto LABEL_6;
    }
  }

  else
  {

    if ((v8 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v8) & 0xF;
    }

    else
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (a1)
    {
LABEL_6:
      if (v9 != a2 - a1)
      {
        return 20;
      }

      goto LABEL_10;
    }
  }

  if (v9)
  {
    return 20;
  }

LABEL_10:
  v10 = sub_1B0CB7394(v3);
  v12 = sub_1B0CADCDC(v10, v11, a1, a2, sub_1B0C95118);

  if ((v12 & 1) == 0)
  {
    return 20;
  }

  return v3;
}

uint64_t sub_1B0C7C0D8(char *a1, char *a2, uint64_t a3)
{
  v3 = 0x656D616E656C6966;
  v4 = 0xE800000000000000;
  v5 = 0x7461642D64616572;
  v6 = 0xE900000000000065;
  v7 = 1702521203;
  if (a3 != 4)
  {
    v7 = 1701667182;
  }

  if (a3 != 3)
  {
    v5 = v7;
    v6 = 0xE400000000000000;
  }

  v8 = 0x6E6F697461657263;
  v9 = 0xED0000657461642DLL;
  if (a3 != 1)
  {
    v8 = 0xD000000000000011;
    v9 = 0x80000001B0F2E2D0;
  }

  if (a3)
  {
    v4 = v9;
  }

  else
  {
    v8 = 0x656D616E656C6966;
  }

  if (a3 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (a3 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  v12 = a3;
  if ((v11 & 0x1000000000000000) != 0)
  {
    v15 = sub_1B0E44DC8();

    if (a1)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if ((v11 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(v11) & 0xF;
    }

    else
    {
      v15 = v10 & 0x6D7F657F7F7FLL;
    }

    if (a1)
    {
LABEL_21:
      if (v15 != a2 - a1)
      {
        return 6;
      }

      goto LABEL_25;
    }
  }

  if (v15)
  {
    return 6;
  }

LABEL_25:
  if (v12 > 2u)
  {
    if (v12 == 3)
    {
      v3 = 0x7461642D64616572;
      v16 = 0xE900000000000065;
    }

    else
    {
      v16 = 0xE400000000000000;
      if (v12 == 4)
      {
        v3 = 1702521203;
      }

      else
      {
        v3 = 1701667182;
      }
    }
  }

  else if (v12)
  {
    if (v12 == 1)
    {
      v3 = 0x6E6F697461657263;
      v16 = 0xED0000657461642DLL;
    }

    else
    {
      v3 = 0xD000000000000011;
      v16 = 0x80000001B0F2E2D0;
    }
  }

  else
  {
    v16 = 0xE800000000000000;
  }

  v17 = sub_1B0CADCDC(v3, v16, a1, a2, sub_1B0C95118);

  if ((v17 & 1) == 0)
  {
    return 6;
  }

  return v12;
}