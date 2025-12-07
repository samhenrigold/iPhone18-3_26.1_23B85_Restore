void sub_22BEF0A4C(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v9 = type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1 >> 60 != 2)
  {
    goto LABEL_5;
  }

  v13 = *a1 & 0xFFFFFFFFFFFFFFFLL;
  v15 = *(v13 + 0x10);
  v14 = *(v13 + 0x18);
  v16 = *(v13 + 32);
  if (v16 != 4)
  {
    if (v16 == 3)
    {
      v34 = a3;
      v35 = a4;
      v32 = v4;
      v33 = a2;
      sub_22BE5CE4C(&qword_27D907390, &unk_22C275300);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_22C275160;
      v18 = swift_allocObject();
      *(v18 + 16) = v15;
      *(v18 + 24) = v14;
      *(v18 + 32) = 3;
      *(v17 + 32) = v18 | 0x2000000000000000;
      v19 = 1;
      goto LABEL_8;
    }

LABEL_5:
    sub_22BEEA690();
    v20 = swift_allocError();
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *v21 = a2;
    *(v21 + 24) = 0x80;
    swift_willThrow();
    *a3 = v20;
    sub_22BEA7680(a2);
    return;
  }

  v35 = a4;
  v19 = *(v15 + 16);
  if (!v19)
  {
    sub_22BEA76B8(v15, v14, 4);

    v23 = MEMORY[0x277D84F90];
LABEL_18:
    *v35 = v23;
    return;
  }

  v32 = v4;
  v33 = a2;
  v34 = a3;
  v17 = v15;
LABEL_8:
  sub_22BEA76B8(v15, v14, v16);
  v36 = MEMORY[0x277D84F90];
  sub_22BE71114(0, v19, 0);
  v22 = 0;
  v23 = v36;
  while (v22 < *(v17 + 16))
  {
    v24 = *(v17 + 8 * v22 + 32);
    if (v24 >> 60 != 2 || *((v24 & 0xFFFFFFFFFFFFFFFLL) + 0x20) != 3)
    {
      sub_22BEA7680(*(v17 + 8 * v22 + 32));

      sub_22BEEA690();
      v29 = swift_allocError();
      *(v30 + 8) = 0;
      *(v30 + 16) = 0;
      v31 = v33;
      *v30 = v33;
      *(v30 + 24) = 0x80;
      swift_willThrow();
      sub_22BEA7680(v31);
      sub_22BE63574(v24);

      *v34 = v29;
      return;
    }

    v26 = *((v24 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v25 = *((v24 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    sub_22BEA7680(*(v17 + 8 * v22 + 32));
    sub_22BEA76B8(v26, v25, 3);
    sub_22BF1066C(v26, v25, v12);
    sub_22BEA76F8(v26, v25, 3);
    sub_22BE63574(v24);
    v36 = v23;
    v28 = *(v23 + 16);
    v27 = *(v23 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_22BE71114(v27 > 1, v28 + 1, 1);
      v23 = v36;
    }

    ++v22;
    *(v23 + 16) = v28 + 1;
    sub_22BEF8B1C(v12, v23 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v28, type metadata accessor for StructuredSearchExpression.StructuredSearchProperty);
    if (v19 == v22)
    {

      goto LABEL_18;
    }
  }

  __break(1u);
}

void sub_22BEF0DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BEF4F04(MEMORY[0x277D84F90]);
  v19 = v5;
  v6 = *(a3 + 16);
  v7 = a3 + 32;

  v8 = 0;
  v9 = a2 + 40;
LABEL_2:
  for (i = (v9 + 16 * v8); ; i += 2)
  {
    if (v8 >= v6)
    {
LABEL_19:

      return;
    }

    if (v8 >= *(a2 + 16))
    {
      break;
    }

    v12 = *(i - 1);
    v11 = *i;
    v13 = *(v7 + 8 * v8);

    sub_22BEA7680(v13);
    if (!v11)
    {
      goto LABEL_19;
    }

    if (v12 == 0x69747265706F7270 && v11 == 0xEA00000000007365)
    {

      sub_22BEA7680(v13);
      sub_22BE63574(v13);
    }

    else
    {
      v15 = sub_22C274014();

      sub_22BEA7680(v13);
      sub_22BE63574(v13);

      if ((v15 & 1) == 0)
      {
        sub_22BEF4D7C(v12, v11);

        sub_22BEA7680(v13);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22BE70158();
          v17 = v19;
        }

        v18 = *(v17 + 16);
        if (v18 >= *(v17 + 24) >> 1)
        {
          sub_22BE70158();
          v17 = v19;
        }

        ++v8;
        *(v17 + 16) = v18 + 1;
        v19 = v17;
        *(v17 + 8 * v18 + 32) = v13;

        sub_22BE63574(v13);

        v9 = a2 + 40;
        goto LABEL_2;
      }
    }

    sub_22BE63574(v13);
    ++v8;
  }

  __break(1u);
}

void sub_22BEF1040(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*v1 >> 60 == 2)
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v5 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    if (v6 == 4)
    {
      v15 = *(v4 + 16);
      v16 = MEMORY[0x277D84F90];
      if (v15)
      {
        v24 = MEMORY[0x277D84F90];

        sub_22BE70158();
        v16 = v24;
        v17 = (v4 + 32);
        do
        {
          v18 = *v17++;
          v23[1] = v18;
          sub_22BEF1040(v23);
          v19 = v23[0];
          v24 = v16;
          v20 = *(v16 + 16);
          if (v20 >= *(v16 + 24) >> 1)
          {
            sub_22BE70158();
            v16 = v24;
          }

          *(v16 + 16) = v20 + 1;
          *(v16 + 8 * v20 + 32) = v19;
          --v15;
        }

        while (v15);
        sub_22BEA76F8(v4, v5, 4);
      }

      v22 = swift_allocObject();
      *(v22 + 16) = v16;
      *(v22 + 24) = 0;
      *(v22 + 32) = 4;
      v12 = v22 | 0x2000000000000000;
      goto LABEL_18;
    }

    if (v6 == 3)
    {
      v7 = swift_allocObject();

      String.toCamelCase.getter(v4, v5);
      v9 = v8;
      v11 = v10;
      sub_22BEA76F8(v4, v5, 3);
      *(v7 + 16) = v9;
      *(v7 + 24) = v11;
      *(v7 + 32) = 3;
      v12 = v7 | 0x2000000000000000;
LABEL_18:
      *a1 = v12;
      sub_22BE3E534();
      return;
    }

    *a1 = v3;
    sub_22BE3E534();
  }

  else
  {
    *a1 = v3;
    sub_22BE3E534();

    sub_22BEA7680(v13);
  }
}

unint64_t sub_22BEF1228@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C2720A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v20 - v9;
  v11 = *a1;
  if (v11 >> 60 == 1)
  {
    goto LABEL_6;
  }

  if (v11 >> 60 != 6)
  {
    sub_22C271B54();
    v12 = sub_22C272084();
    v18 = sub_22C2737A4();
    if (!os_log_type_enabled(v12, v18))
    {
      v10 = v7;
      goto LABEL_11;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22BE15000, v12, v18, "Unexpected Expr found in candidateValues", v14, 2u);
    v10 = v7;
    goto LABEL_9;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x10) >> 60 == 1)
  {
LABEL_6:
    v15 = sub_22C26E684();
    v16 = swift_projectBox();
    (*(*(v15 - 8) + 16))(a2, v16, v15);
    return sub_22BE19DC4(a2, 0, 1, v15);
  }

  sub_22C271B54();
  v12 = sub_22C272084();
  v13 = sub_22C2737A4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22BE15000, v12, v13, "Expected statmentId from AST.Expr.index", v14, 2u);
LABEL_9:
    MEMORY[0x2318AD180](v14, -1, -1);
  }

LABEL_11:

  (*(v5 + 8))(v10, v4);
  sub_22BEEA690();
  swift_allocError();
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *v19 = v11;
  *(v19 + 24) = 96;
  swift_willThrow();
  return sub_22BEA7680(v11);
}

void sub_22BEF14DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a3;
  v6 = *(a3 + 16);
  v20 = MEMORY[0x277D84F90];
  sub_22BE70138(0, v6, 0);
  v19 = v6;
  if (v6)
  {

    v7 = 0;
    v8 = (a2 + 40);
    while (v7 < *(a2 + 16))
    {
      v9 = *v8;
      v10 = *(v4 + 8 * v7 + 32);

      sub_22BEA7680(v10);
      if (!v9)
      {
        goto LABEL_14;
      }

      if (v10 >> 60)
      {
        sub_22BEEA690();
        swift_allocError();
        *(v17 + 8) = 0;
        *(v17 + 16) = 0;
        *v17 = a4;
        *(v17 + 24) = 0x80;
        swift_willThrow();
        sub_22BEA7680(a4);

        sub_22BE63574(v10);
        sub_22BE63574(a4);
        return;
      }

      v11 = v4;
      v12 = *(v10 + 16);
      v13 = *(v10 + 24);

      sub_22BE63574(v10);
      v15 = *(v20 + 16);
      v14 = *(v20 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_22BE70138(v14 > 1, v15 + 1, 1);
      }

      ++v7;
      *(v20 + 16) = v15 + 1;
      v16 = v20 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      v8 += 2;
      v4 = v11;
      if (v19 == v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {

LABEL_11:

    sub_22BE63574(a4);
  }
}

uint64_t sub_22BEF16B4(uint64_t a1)
{
  v4 = sub_22BE68C2C(a1);
  sub_22BEE9ABC(&v4);
  if (!v2)
  {
    v1 = sub_22BEE9B28(v4, v1);
  }

  return v1;
}

uint64_t sub_22BEF1734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v21 = sub_22C26E684();
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  if (v11)
  {
    v24 = MEMORY[0x277D84F90];
    v19 = a1;

    v18 = a2;

    sub_22BE71084();
    v12 = v24;
    v13 = (a3 + 32);
    v20 = v8 + 32;
    while (1)
    {
      v15 = *v13++;
      v14 = v15;
      v23 = v15;
      sub_22BEA7680(v15);
      a1 = v22;
      sub_22BEEA6E4(&v23, v10);
      if (v4)
      {
        break;
      }

      sub_22BE63574(v14);
      v24 = v12;
      v16 = *(v12 + 16);
      if (v16 >= *(v12 + 24) >> 1)
      {
        sub_22BE71084();
        v12 = v24;
      }

      *(v12 + 16) = v16 + 1;
      (*(v8 + 32))(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, v10, v21);
      if (!--v11)
      {
        return v19;
      }
    }

    sub_22BE63574(v14);
  }

  else
  {
  }

  return a1;
}

double sub_22BEF1950@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v63 = type metadata accessor for Expression(0);
  MEMORY[0x28223BE20](v63);
  v64 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateParametersExpression.UpdateParameter(0);
  v58 = *(updated - 8);
  MEMORY[0x28223BE20](updated);
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v55 - v7;
  v68 = sub_22C26E684();
  v8 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_22C2720A4();
  v10 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for AST.UpdateParameters(0) + 20);
  v62 = a1;
  v14 = *(a1 + v13);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v75 = (v10 + 8);
  v67 = (v8 + 16);
  v57 = (v8 + 8);

  v21 = 0;
  v71 = MEMORY[0x277D84F90];
  *&v22 = 136315138;
  v70 = v22;
  v79 = v12;
  v80 = v20;
  v77 = v19;
  v78 = v15;
  while (v18)
  {
LABEL_9:
    v24 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = v24 | (v21 << 6);
    v26 = *(v20 + 48) + 32 * v25;
    v2 = *v26;
    v12 = *(v26 + 8);
    a1 = *(v26 + 16);
    LODWORD(v15) = *(v26 + 24);
    v27 = (*(v20 + 56) + 16 * v25);
    v8 = *(v27 + 1);
    if (v8 >> 60 == 2 && *((v8 & 0xFFFFFFFFFFFFFFFLL) + 0x20) == 7 && (!*((v8 & 0xFFFFFFFFFFFFFFFLL) + 0x18) ? (v28 = *((v8 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == 1) : (v28 = 0), v28))
    {
      sub_22BE6355C(v2, v12, a1, v15);
      sub_22BEA7680(v8);
      sub_22C271B54();
      sub_22BE6355C(v2, v12, a1, v15);
      sub_22BEA7680(v8);
      v29 = sub_22C272084();
      v30 = sub_22C2737A4();
      sub_22BE635AC(v2, v12, a1, v15);
      sub_22BE63574(v8);
      v82 = v30;
      if (os_log_type_enabled(v29, v30))
      {
        v73 = v29;
        v81 = a1;
        v31 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v86 = v72;
        *v31 = v70;
        v74 = v15;
        if (v15 >= 2)
        {
          v83 = v2;
          v84 = 91;
          v85 = 0xE100000000000000;
          v34 = sub_22C273FD4();
          MEMORY[0x2318AB8D0](v34);

          MEMORY[0x2318AB8D0](93, 0xE100000000000000);
          v32 = v84;
          v33 = v85;
        }

        else
        {
          sub_22BE6355C(v2, v12, v81, v15);
          v32 = v2;
          v33 = v12;
        }

        v35 = v73;
        a1 = sub_22BE61C88(v32, v33, &v86);

        *(v31 + 4) = a1;
        _os_log_impl(&dword_22BE15000, v35, v82, "Dropping <void> parameter for key %s", v31, 0xCu);
        v36 = v72;
        sub_22BE26B64(v72);
        MEMORY[0x2318AD180](v36, -1, -1);
        MEMORY[0x2318AD180](v31, -1, -1);

        sub_22BE635AC(v2, v12, v81, v74);
        v37 = sub_22BE63574(v8);
        v12 = v79;
        (*v75)(v79, v76, v37);
        v20 = v80;
        v19 = v77;
        v15 = v78;
      }

      else
      {
        sub_22BE635AC(v2, v12, a1, v15);
        sub_22BE63574(v8);

        v12 = v79;
        (*v75)(v79, v76);
        v19 = v77;
        v15 = v78;
        v20 = v80;
      }
    }

    else
    {
      v82 = *v27;
      sub_22BE6355C(v2, v12, a1, v15);
      sub_22BEA7680(v8);
      sub_22BE6355C(v2, v12, a1, v15);
      sub_22BEA7680(v8);
      sub_22BE635AC(v2, v12, a1, v15);
      v84 = v8;
      v38 = v69;
      sub_22BEEA6E4(&v84, v66);
      if (v38)
      {
        goto LABEL_36;
      }

      sub_22BE63574(v84);
      v39 = v2;
      sub_22BE6355C(v2, v12, a1, v15);
      sub_22BEA7680(v8);
      sub_22BE63574(v8);
      v69 = 0;
      v81 = a1;
      if (v15 >= 2)
      {
        v84 = 91;
        v85 = 0xE100000000000000;
        v86 = v2;
        v45 = sub_22C273FD4();
        MEMORY[0x2318AB8D0](v45);

        MEMORY[0x2318AB8D0](93, 0xE100000000000000);
        v56 = v84;
        v55 = v85;
        sub_22BE6355C(v2, v12, a1, 2u);
        sub_22BEA7680(v8);
        sub_22BE63574(v8);
        v43 = v12;
        v44 = 0;
        v42 = 1;
        v40 = v15;
        v41 = v81;
      }

      else
      {
        sub_22BE6355C(v2, v12, a1, v15);
        sub_22BEA7680(v8);
        sub_22BE63574(v8);
        v40 = v15;
        if (v15 == 1)
        {
          sub_22BE635AC(v39, v12, a1, 1u);
          v41 = a1;
          v42 = 0;
          v43 = v12;
          v44 = v41;
        }

        else
        {
          sub_22BE635AC(v39, v12, a1, v15);
          v43 = v12;
          v44 = 0;
          v41 = a1;
          v42 = 1;
        }

        v56 = v39;
        v55 = v43;
      }

      sub_22BE6355C(v39, v43, v41, v40);
      sub_22BEA7680(v8);
      v72 = v39;
      v73 = v43;
      v74 = v40;
      sub_22BE635AC(v39, v43, v41, v40);
      v46 = sub_22BE63574(v8);
      v47 = v60;
      (*v67)(v60 + *(updated + 28), v66, v68, v46);
      v48 = v55;
      *v47 = v56;
      *(v47 + 8) = v48;
      *(v47 + 16) = v44;
      *(v47 + 24) = v42;
      *(v47 + 25) = v82;
      sub_22BEF8A70(v47, v61, type metadata accessor for UpdateParametersExpression.UpdateParameter);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BE66C3C(0, *(v71 + 16) + 1, 1, v71);
        v71 = v51;
      }

      v15 = v78;
      v12 = v79;
      a1 = *(v71 + 16);
      v49 = *(v71 + 24);
      v2 = v73;
      if (a1 >= v49 >> 1)
      {
        sub_22BE66C3C(v49 > 1, a1 + 1, 1, v71);
        v71 = v52;
      }

      sub_22BE635AC(v72, v2, v81, v74);
      sub_22BE63574(v8);
      sub_22BEF8AC8(v60, type metadata accessor for UpdateParametersExpression.UpdateParameter);
      (*v57)(v66, v68);
      v50 = v71;
      *(v71 + 16) = a1 + 1;
      sub_22BEF8B1C(v61, v50 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * a1, type metadata accessor for UpdateParametersExpression.UpdateParameter);
      v20 = v80;
      v19 = v77;
    }
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      v53 = v64;
      (*v67)(v64, v62, v68);
      *(v53 + *(type metadata accessor for UpdateParametersExpression(0) + 20)) = v71;
      swift_storeEnumTagMultiPayload();
      sub_22BEEFCC8(v53, v65);
      sub_22BEF8AC8(v53, type metadata accessor for Expression);
      return result;
    }

    v18 = *(v15 + 8 * v23);
    ++v21;
    if (v18)
    {
      v21 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_36:
  sub_22BE63574(v84);

  sub_22BE635AC(v2, v12, a1, v15);
  sub_22BE63574(v8);

  return result;
}

void (*sub_22BEF2370(uint64_t *a1, uint64_t a2))(uint64_t **a1)
{
  v5 = sub_22BEF8B74(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = sub_22BE5CE4C(&qword_27D90A8A0, &unk_22C2D1FB0);
  v7 = sub_22BEF8B74(*(*(v6 - 8) + 64));
  v5[2] = v7;
  v8 = type metadata accessor for ProgramStatement(0);
  sub_22BE19DC4(v7, 1, 1, v8);
  v9 = sub_22BEF4CAC(a2, v7);
  *(v5 + 40) = v10;
  v5[3] = v9;
  v5[4] = v11;
  return sub_22BEF2440;
}

void sub_22BEF2440(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[2];
  sub_22BEF6C24(**a1, (*a1)[3], (*a1)[5] & 1, (*a1)[4], v2);
  sub_22BE233E8(v2, &qword_27D90A8A0, &unk_22C2D1FB0);
  free(v2);

  free(v1);
}

uint64_t sub_22BEF24B8(uint64_t a1, uint64_t a2)
{
  v5 = sub_22C26E684();
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ProgramStatement(0);
  v57 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v56 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v53 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  MEMORY[0x28223BE20](v15);
  v54 = &v53 - v16;
  v17 = sub_22BE5CE4C(&qword_27D90A8A8, &unk_22C288AB0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v53 - v19;
  v22 = *v2;
  v21 = v2[1];
  v58 = v2;
  v64 = v22;
  v65 = v21;
  v62 = a2;
  v66 = a2;
  v23 = sub_22BEF6270(sub_22BEF8900, v63, v21);
  v25 = v24;
  v27 = v26;
  v28 = *(v18 + 56);
  v59 = a1;
  sub_22BE3BB64(a1, &v20[v28], &qword_27D90A8A0, &unk_22C2D1FB0);
  v29 = sub_22BE1AEA8(&v20[v28], 1, v8);
  if (v25)
  {
    if (v29 == 1)
    {
      sub_22BE233E8(v59, &qword_27D90A8A0, &unk_22C2D1FB0);
      return (*(v60 + 8))(v62, v61);
    }

    else
    {
      v33 = v55;
      sub_22BEF8B1C(&v20[v28], v55, type metadata accessor for ProgramStatement);
      v34 = v62;
      v35 = v58;
      sub_22BEF5EC0(v62, v27);
      v36 = v56;
      sub_22BEF8A70(v33, v56, type metadata accessor for ProgramStatement);
      v39 = v35[2];
      v38 = v35 + 2;
      v37 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v38 = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BE710CC();
        v37 = *v38;
      }

      v41 = *(v37 + 16);
      if (v41 >= *(v37 + 24) >> 1)
      {
        sub_22BE710CC();
      }

      sub_22BE233E8(v59, &qword_27D90A8A0, &unk_22C2D1FB0);
      sub_22BEF8AC8(v33, type metadata accessor for ProgramStatement);
      v42 = *v38;
      *(v42 + 16) = v41 + 1;
      sub_22BEF8B1C(v36, v42 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v41, type metadata accessor for ProgramStatement);
      *v38 = v42;
      return (*(v60 + 8))(v34, v61);
    }
  }

  else
  {
    if (v29 == 1)
    {
      sub_22BEF73D8(v23, v27, v7);
      v31 = v61;
      v32 = *(v60 + 8);
      v32(v7, v61);
      sub_22BEF717C(v23, v14);
      sub_22BE233E8(v59, &qword_27D90A8A0, &unk_22C2D1FB0);
      sub_22BEF8AC8(v14, type metadata accessor for ProgramStatement);
      return (v32)(v62, v31);
    }

    v43 = &v20[v28];
    v44 = v54;
    sub_22BEF8B1C(v43, v54, type metadata accessor for ProgramStatement);
    v45 = v58;
    v46 = v58[2];
    v47 = swift_isUniquelyReferenced_nonNull_native();
    if ((v47 & 1) == 0)
    {
      sub_22C116078(v46, v48, v49, v50);
      v46 = v51;
    }

    v52 = v62;
    sub_22BE233E8(v59, &qword_27D90A8A0, &unk_22C2D1FB0);
    result = (*(v60 + 8))(v52, v61);
    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v23 < *(v46 + 16))
    {
      result = sub_22BEF8924(v44, v46 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v23);
      v45[2] = v46;
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_22BEF29E4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2;
  v8 = *v3;
  v7 = v3[1];
  v34[0] = a2;
  v34[1] = a3;
  v33[2] = v8;
  v33[3] = v7;
  v33[4] = v34;
  v9 = sub_22BEF6314(sub_22BEF8BA8, v33, v7);
  v11 = v10;
  if (v12)
  {
    if ((~a1 & 0xF000000000000007) == 0)
    {

      return;
    }

    sub_22BEF60F8(v5, a3, v10);

    v24 = v3[2];
    v3 += 2;
    v23 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22BE70158();
      v23 = *v3;
    }

    v5 = *(v23 + 16);
    a3 = v5 + 1;
    if (v5 < *(v23 + 24) >> 1)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v13 = v9;

  if ((~a1 & 0xF000000000000007) == 0)
  {
    sub_22BEF758C(v13, v11);

    a1 = v3[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C1160A8(a1, v14, v15, v16);
      a1 = v17;
    }

    v18 = *(a1 + 16);
    if (v13 < v18)
    {
      v19 = v18 - 1;
      v20 = v18 - 1 - v13;
      v21 = a1 + 8 * v13;
      v22 = *(v21 + 32);
      sub_22BE67CD0((v21 + 40), v20, (v21 + 32));
      *(a1 + 16) = v19;
      sub_22BE63574(v22);
      v3[2] = a1;
      return;
    }

    __break(1u);
LABEL_20:
    sub_22BE70158();
    v23 = *v3;
LABEL_12:
    *(v23 + 16) = a3;
    *(v23 + 8 * v5 + 32) = a1;
    *v3 = v23;
    return;
  }

  v26 = v3[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C1160A8(v26, v27, v28, v29);
    v26 = v30;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v13 >= *(v26 + 16))
  {
LABEL_22:
    __break(1u);
    return;
  }

  v31 = v26 + 8 * v13;
  v32 = *(v31 + 32);
  *(v31 + 32) = a1;
  sub_22BE63574(v32);
  v3[2] = v26;
}

char *sub_22BEF2BC8(uint64_t a1, unint64_t *a2)
{
  v52 = a1;
  v4 = sub_22BE5CE4C(&qword_27D90A898, &unk_22C288AA0);
  MEMORY[0x28223BE20](v4);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  v12 = sub_22C26E684();
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  MEMORY[0x28223BE20](v18);
  v22 = &v49 - v21;
  v23 = *a2;
  switch(v23 >> 60)
  {
    case 5uLL:
      v32 = v20;
      v33 = v19;
      v11 = *((v23 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v51[0] = *((v23 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      sub_22BEEA6E4(v51, v22);
      if (v2)
      {
      }

      else
      {
        (*(v32 + 32))(v52, v22, v33);
      }

      break;
    case 6uLL:
      v49 = v19;
      v50 = v20;
      v34 = *((v23 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v35 = *((v23 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v51[0] = v34;
      v36 = sub_22BEF2BC8(v14, v51);
      if (!v2)
      {
        v11 = v36;
        v37 = *(v50 + 32);
        v37(v17, v14, v49);
        if (v35 >> 60 == 2 && *((v35 & 0xFFFFFFFFFFFFFFFLL) + 0x20) == 1)
        {
          v37(v52, v17, v49);
        }

        else
        {

          sub_22BEEA690();
          swift_allocError();
          *(v48 + 8) = 0;
          *(v48 + 16) = 0;
          *v48 = v35;
          *(v48 + 24) = 96;
          swift_willThrow();
          sub_22BEA7680(v35);
          (*(v50 + 8))(v17, v49);
        }
      }

      break;
    case 9uLL:
      v26 = v20;
      v49 = v19;
      v27 = *((v23 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v51[0] = v27;
      sub_22BEA7680(v27);
      v28 = sub_22BEF2BC8(v11, v51);
      if (v2)
      {
        sub_22BE63574(v27);
      }

      else
      {
        v38 = &v11[*(v4 + 48)];
        v39 = &v11[*(v4 + 64)];
        *v38 = v28;
        v38[1] = v29;
        *v39 = v30;
        v39[8] = v31 & 1;
        sub_22BE3BB64(v11, v8, &qword_27D90A898, &unk_22C288AA0);

        v40 = sub_22BEF2370(v51, v8);
        v42 = v41;
        v43 = type metadata accessor for ProgramStatement(0);
        if (!sub_22BE1AEA8(v42, 1, v43))
        {
          *(v42 + *(v43 + 28)) = 1;
        }

        (v40)(v51, 0);
        v44 = sub_22BE63574(v27);
        v45 = v26;
        v46 = v49;
        (*(v26 + 8))(v8, v49, v44);
        v47 = v50;
        sub_22BEF88B8(v11, v50, &qword_27D90A898, &unk_22C288AA0);
        v11 = *(v47 + *(v4 + 48));
        (*(v45 + 32))(v52, v47, v46);
      }

      break;
    default:
      sub_22BEEA690();
      swift_allocError();
      *(v24 + 8) = 0;
      *(v24 + 16) = 0;
      *v24 = v23;
      *(v24 + 24) = 0;
      swift_willThrow();
      sub_22BEA7680(v23);
      break;
  }

  return v11;
}

void sub_22BEF30A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C2720A4();
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v11 >> 60 == 2 && *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x20) == 7 && (!*((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x18) ? (v12 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == 1) : (v12 = 0), v12))
  {
    v28 = v4;
    sub_22C271B54();
    sub_22BE6355C(v7, v8, v9, v10);
    sub_22BEA7680(v11);
    v17 = sub_22C272084();
    v18 = sub_22C2737A4();
    sub_22BE635AC(v7, v8, v9, v10);
    sub_22BE63574(v11);
    if (os_log_type_enabled(v17, v18))
    {
      v27 = v17;
      v19 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v19 = 136315138;
      if (v10 >= 2)
      {
        v30 = 91;
        v31 = 0xE100000000000000;
        v29 = v7;
        v20 = sub_22C273FD4();
        MEMORY[0x2318AB8D0](v20);

        MEMORY[0x2318AB8D0](93, 0xE100000000000000);
        v7 = v30;
        v8 = v31;
      }

      else
      {
        sub_22BE6355C(v7, v8, v9, v10);
      }

      v21 = sub_22BE61C88(v7, v8, &v32);

      *(v19 + 4) = v21;
      v22 = v18;
      v23 = v27;
      _os_log_impl(&dword_22BE15000, v27, v22, "Dropping <void> parameter for key %s", v19, 0xCu);
      v24 = v26;
      sub_22BE26B64(v26);
      MEMORY[0x2318AD180](v24, -1, -1);
      MEMORY[0x2318AD180](v19, -1, -1);
    }

    else
    {
    }

    (*(v28 + 8))(v6, v3);
  }

  else
  {
    if (*(a2 + 24))
    {
      if (v10 == 1)
      {
        sub_22BE6355C(*a2, *(a2 + 8), *(a2 + 16), 1u);
        sub_22BEA7680(v11);
        sub_22BE63574(v11);
        sub_22BEEA690();
        swift_allocError();
        *v13 = v7;
        *(v13 + 8) = v8;
        *(v13 + 16) = v9;
        *(v13 + 24) = -95;
        swift_willThrow();
        return;
      }

      v30 = 91;
      v31 = 0xE100000000000000;
      v32 = v7;
      v16 = sub_22C273FD4();
      MEMORY[0x2318AB8D0](v16);

      MEMORY[0x2318AB8D0](93, 0xE100000000000000);
      v14 = v30;
      v15 = v31;
    }

    else
    {

      v14 = v7;
      v15 = v8;
    }

    sub_22BE6355C(v7, v8, v9, v10);
    sub_22BEA7680(v11);
    sub_22BE635AC(v7, v8, v9, v10);
    sub_22BEF29E4(v11, v14, v15);
  }
}

IntelligenceFlowPlannerSupport::ExpressionFlattener::BuiltinIdentifiers_optional __swiftcall ExpressionFlattener.BuiltinIdentifiers.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22C274074();

  v5 = 0;
  v6 = 7;
  switch(v3)
  {
    case 0:
      goto LABEL_19;
    case 1:
      v5 = 1;
      goto LABEL_19;
    case 2:
      v5 = 2;
      goto LABEL_19;
    case 3:
      v5 = 3;
      goto LABEL_19;
    case 4:
      v5 = 4;
      goto LABEL_19;
    case 5:
      v5 = 5;
      goto LABEL_19;
    case 6:
      v5 = 6;
LABEL_19:
      v6 = v5;
      break;
    case 7:
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    default:
      v6 = 25;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_22BEF35E8@<X0>(unint64_t *a1@<X8>)
{
  result = ExpressionFlattener.BuiltinIdentifiers.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22BEF3770(uint64_t a1)
{
  v2 = sub_22BEF58C8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BEF37AC(uint64_t a1)
{
  v2 = sub_22BEF58C8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22BEF37E8(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
    sub_22C26E684();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BEF3880(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
  }

  __break(1u);
  return result;
}

void sub_22BEF38E0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22C273FC4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22BE5CE4C(&qword_27D9077B0, &qword_22C288AC0);
        v6 = sub_22C273534();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22BEF3C3C(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22BEF39E4(0, v2, 1, a1);
  }
}

void sub_22BEF39E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return;
  }

  v4 = *a4;
  v5 = *a4 + 40 * a3 - 16;
  v6 = a1 - a3;
  while (2)
  {
    v7 = v4 + 40 * a3;
    v9 = *v7;
    v8 = *(v7 + 8);
    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
    v12 = *(v7 + 32);
    v13 = v6;
    v14 = v5;
    do
    {
      v15 = *(v14 - 3);
      v16 = *(v14 - 2);
      v17 = *(v14 - 1);
      v18 = *v14;
      v19 = *(v14 + 1);
      if (v11 != 2)
      {
        v24 = v8;
        sub_22BE6355C(v9, v8, v10, v11);
        sub_22BEA7680(v12);
        sub_22BE6355C(v9, v24, v10, v11);
        sub_22BEA7680(v12);
        sub_22BE6355C(v15, v16, v17, v18);
        sub_22BEA7680(v19);
        sub_22BE635AC(v9, v24, v10, v11);
        v23 = v12;
LABEL_14:
        sub_22BEEA690();
        swift_allocError();
        *(v22 + 8) = 0;
        *(v22 + 16) = 0;
        *v22 = v23;
        *(v22 + 24) = 96;
        swift_willThrow();
        sub_22BE635AC(v15, v16, v17, v18);
        sub_22BE63574(v19);
        sub_22BE635AC(v9, v24, v10, v11);
        sub_22BE63574(v12);
        return;
      }

      if (v18 != 2)
      {
        v24 = v8;
        sub_22BE6355C(*(v14 - 3), *(v14 - 2), *(v14 - 1), *v14);
        sub_22BEA7680(v19);
        sub_22BE6355C(v9, v24, v10, 2u);
        sub_22BEA7680(v12);
        sub_22BE6355C(v15, v16, v17, v18);
        sub_22BEA7680(v19);
        sub_22BE635AC(v15, v16, v17, v18);
        v23 = v19;
        goto LABEL_14;
      }

      if (v9 >= v15)
      {
        break;
      }

      if (!v4)
      {
        __break(1u);
        return;
      }

      v20 = *(v14 - 8);
      *(v14 + 1) = *(v14 - 24);
      *(v14 + 2) = v20;
      *(v14 + 6) = *(v14 + 1);
      *(v14 - 3) = v9;
      *(v14 - 2) = v8;
      *(v14 - 1) = v10;
      v11 = 2;
      *v14 = 2;
      *(v14 + 1) = v12;
      v14 -= 40;
    }

    while (!__CFADD__(v13++, 1));
    ++a3;
    v5 += 40;
    --v6;
    if (a3 != a2)
    {
      continue;
    }

    break;
  }
}

void sub_22BEF3C3C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v141 = MEMORY[0x277D84F90];
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    do
    {
      v10 = v8;
      v11 = v8 + 1;
      if (v8 + 1 < v7)
      {
        v12 = *a3 + 40 * v11;
        v14 = *v12;
        v13 = *(v12 + 8);
        v15 = *(v12 + 16);
        v16 = *(v12 + 24);
        v17 = *(v12 + 32);
        v18 = v8;
        v19 = *a3 + 40 * v8;
        v21 = *v19;
        v20 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v24 = *(v19 + 32);
        if (v16 != 2)
        {
          v124 = v17;
          v138 = v13;
          v125 = v15;
          sub_22BE6355C(v14, v13, v15, v16);
          sub_22BEA7680(v124);
          sub_22BE6355C(v14, v138, v125, v16);
          sub_22BEA7680(v124);
          sub_22BE6355C(v21, v20, v22, v23);
          sub_22BEA7680(v24);
          v135 = v125;
          sub_22BE635AC(v14, v138, v125, v16);
          v140 = v124;
          v126 = v124;
LABEL_104:
          sub_22BEEA690();
          swift_allocError();
          *(v129 + 8) = 0;
          *(v129 + 16) = 0;
          *v129 = v126;
          *(v129 + 24) = 96;
          swift_willThrow();
          sub_22BE635AC(v21, v20, v22, v23);
          sub_22BE63574(v24);
          v120 = v14;
          v122 = v135;
          v121 = v138;
          v123 = v16;
          goto LABEL_105;
        }

        if (v23 != 2)
        {
          v140 = v17;
          v127 = v13;
          v128 = v15;
          sub_22BE6355C(v21, v20, v22, v23);
          sub_22BEA7680(v24);
          v135 = v128;
          v138 = v127;
          sub_22BE6355C(v14, v127, v128, 2u);
          sub_22BEA7680(v140);
          sub_22BE6355C(v21, v20, v22, v23);
          sub_22BEA7680(v24);
          sub_22BE635AC(v21, v20, v22, v23);
          v126 = v24;
          goto LABEL_104;
        }

        v10 = v8;
        v25 = 40 * v8;
        v26 = (*a3 + 40 * v18 + 112);
        v27 = v18 + 2;
        v28 = v14;
        while (1)
        {
          v29 = v27;
          if (v27 >= v7)
          {
            break;
          }

          v30 = *(v26 - 4);
          v31 = *(v26 - 8);
          if (v31 != 2)
          {
            v108 = *(v26 - 3);
            v109 = *(v26 - 2);
            v110 = *v26;
            v112 = *(v26 - 8);
            v111 = *(v26 - 7);
            v113 = *(v26 - 5);
            sub_22BE6355C(v30, v108, v109, v31);
            sub_22BEA7680(v110);
            sub_22BE6355C(v30, v108, v109, v31);
            sub_22BEA7680(v110);
            sub_22BE6355C(v28, v112, v111, 2u);
            sub_22BEA7680(v113);
            sub_22BE635AC(v30, v108, v109, v31);
            sub_22BEEA690();
            swift_allocError();
            *(v114 + 8) = 0;
            *(v114 + 16) = 0;
            *v114 = v110;
            *(v114 + 24) = 96;
            swift_willThrow();
            sub_22BE635AC(v28, v112, v111, 2u);
            sub_22BE63574(v113);
            sub_22BE635AC(v30, v108, v109, v31);
            v115 = v110;
            goto LABEL_106;
          }

          v32 = (v14 < v21) ^ (v30 >= v28);
          v26 += 5;
          ++v27;
          v28 = v30;
          if ((v32 & 1) == 0)
          {
            v11 = v29;
            goto LABEL_12;
          }
        }

        v11 = v7;
LABEL_12:
        v6 = a1;
        if (v14 < v21)
        {
          if (v11 < v10)
          {
            goto LABEL_128;
          }

          if (v10 < v11)
          {
            if (v7 >= v29)
            {
              v7 = v29;
            }

            v33 = 40 * v7 - 40;
            v34 = v11;
            v35 = v10;
            do
            {
              if (v35 != --v34)
              {
                v36 = *a3;
                if (!*a3)
                {
                  goto LABEL_131;
                }

                v37 = (v36 + v25);
                v38 = *(v36 + v25 + 16);
                v39 = (v36 + v33);
                v40 = *(v37 + 24);
                v41 = *(v37 + 4);
                v42 = *v37;
                v43 = *(v39 + 4);
                v44 = v39[1];
                *v37 = *v39;
                v37[1] = v44;
                *(v37 + 4) = v43;
                *v39 = v42;
                *(v39 + 2) = v38;
                *(v39 + 24) = v40;
                *(v39 + 4) = v41;
              }

              ++v35;
              v33 -= 40;
              v25 += 40;
            }

            while (v35 < v34);
            v7 = a3[1];
          }
        }
      }

      if (v11 < v7)
      {
        if (__OFSUB__(v11, v10))
        {
          goto LABEL_125;
        }

        if (v11 - v10 < a4)
        {
          if (__OFADD__(v10, a4))
          {
            goto LABEL_126;
          }

          if (v10 + a4 < v7)
          {
            v7 = v10 + a4;
          }

          if (v7 >= v10)
          {
            if (v11 == v7)
            {
              goto LABEL_31;
            }

            v86 = *a3;
            v87 = *a3 + 40 * v11 - 16;
            v88 = v10;
            v89 = v10 - v11;
LABEL_84:
            v90 = v86 + 40 * v11;
            v91 = *v90;
            v92 = *(v90 + 8);
            v93 = *(v90 + 16);
            v94 = *(v90 + 24);
            v95 = *(v90 + 32);
            v96 = v89;
            v97 = v87;
            while (1)
            {
              v98 = v11;
              v99 = *(v97 - 3);
              v100 = *(v97 - 2);
              v101 = *(v97 - 1);
              v102 = *v97;
              v103 = *(v97 + 1);
              if (v94 != 2)
              {
                v116 = v91;
                v134 = v93;
                v137 = v92;
                sub_22BE6355C(v91, v92, v93, v94);
                v117 = v95;
                sub_22BEA7680(v95);
                sub_22BE6355C(v116, v92, v134, v94);
                sub_22BEA7680(v95);
                sub_22BE6355C(v99, v100, v101, v102);
                sub_22BEA7680(v103);
                v130 = v116;
                sub_22BE635AC(v116, v92, v134, v94);
                v140 = v95;
                goto LABEL_101;
              }

              if (v102 != 2)
              {
                break;
              }

              if (v91 >= v99)
              {
                v11 = v98;
LABEL_93:
                ++v11;
                v87 += 40;
                --v89;
                if (v11 == v7)
                {
                  v11 = v7;
                  v6 = a1;
                  v10 = v88;
                  goto LABEL_31;
                }

                goto LABEL_84;
              }

              if (!v86)
              {
                goto LABEL_130;
              }

              v11 = v98;
              v104 = *(v97 - 8);
              *(v97 + 1) = *(v97 - 24);
              *(v97 + 2) = v104;
              *(v97 + 6) = *(v97 + 1);
              *(v97 - 3) = v91;
              *(v97 - 2) = v92;
              *(v97 - 1) = v93;
              v94 = 2;
              *v97 = 2;
              *(v97 + 1) = v95;
              v97 -= 40;
              if (__CFADD__(v96++, 1))
              {
                goto LABEL_93;
              }
            }

            v130 = v91;
            v118 = v93;
            sub_22BE6355C(v99, v100, v101, v102);
            sub_22BEA7680(v103);
            v134 = v118;
            v137 = v92;
            sub_22BE6355C(v130, v92, v118, 2u);
            v140 = v95;
            sub_22BEA7680(v95);
            sub_22BE6355C(v99, v100, v101, v102);
            sub_22BEA7680(v103);
            sub_22BE635AC(v99, v100, v101, v102);
            v117 = v103;
LABEL_101:
            sub_22BEEA690();
            swift_allocError();
            *(v119 + 8) = 0;
            *(v119 + 16) = 0;
            *v119 = v117;
            *(v119 + 24) = 96;
            swift_willThrow();
            sub_22BE635AC(v99, v100, v101, v102);
            sub_22BE63574(v103);
            v120 = v130;
            v122 = v134;
            v121 = v137;
            v123 = v94;
LABEL_105:
            sub_22BE635AC(v120, v121, v122, v123);
            v115 = v140;
LABEL_106:
            sub_22BE63574(v115);
            goto LABEL_107;
          }

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
          goto LABEL_132;
        }
      }

LABEL_31:
      if (v11 < v10)
      {
        goto LABEL_124;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BE6614C();
        v9 = v106;
      }

      v45 = v9[2];
      v46 = v45 + 1;
      v133 = v11;
      if (v45 >= v9[3] >> 1)
      {
        sub_22BE6614C();
        v9 = v107;
      }

      v9[2] = v46;
      v47 = v9 + 4;
      v48 = &v9[2 * v45 + 4];
      *v48 = v10;
      v48[1] = v133;
      v141 = v9;
      v136 = *v6;
      if (!*v6)
      {
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      if (v45)
      {
        while (1)
        {
          v49 = v46 - 1;
          v50 = &v47[2 * v46 - 2];
          v51 = &v9[2 * v46];
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v52 = v9[4];
            v53 = v9[5];
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_51:
            if (v55)
            {
              goto LABEL_114;
            }

            v67 = *v51;
            v66 = v51[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_117;
            }

            v71 = v50[1];
            v72 = v71 - *v50;
            if (__OFSUB__(v71, *v50))
            {
              goto LABEL_120;
            }

            if (__OFADD__(v69, v72))
            {
              goto LABEL_122;
            }

            if (v69 + v72 >= v54)
            {
              if (v54 < v72)
              {
                v49 = v46 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          if (v46 < 2)
          {
            goto LABEL_116;
          }

          v74 = *v51;
          v73 = v51[1];
          v62 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          v70 = v62;
LABEL_66:
          if (v70)
          {
            goto LABEL_119;
          }

          v76 = *v50;
          v75 = v50[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_121;
          }

          if (v77 < v69)
          {
            goto LABEL_80;
          }

LABEL_73:
          if (v49 - 1 >= v46)
          {
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
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
            goto LABEL_127;
          }

          if (!*a3)
          {
            goto LABEL_129;
          }

          v81 = &v47[2 * v49 - 2];
          v82 = *v81;
          v83 = &v47[2 * v49];
          v84 = v83[1];
          sub_22BEF46E8((*a3 + 40 * *v81), (*a3 + 40 * *v83), *a3 + 40 * v84, v136);
          if (v5)
          {
            v141 = v9;
            goto LABEL_107;
          }

          if (v84 < v82)
          {
            goto LABEL_109;
          }

          v85 = v9[2];
          if (v49 > v85)
          {
            goto LABEL_110;
          }

          *v81 = v82;
          v81[1] = v84;
          if (v49 >= v85)
          {
            goto LABEL_111;
          }

          v46 = v85 - 1;
          memmove(&v47[2 * v49], v83 + 2, 16 * (v85 - 1 - v49));
          v9[2] = v85 - 1;
          if (v85 <= 2)
          {
LABEL_80:
            v141 = v9;
            v6 = a1;
            goto LABEL_81;
          }
        }

        v56 = &v47[2 * v46];
        v57 = *(v56 - 8);
        v58 = *(v56 - 7);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_112;
        }

        v61 = *(v56 - 6);
        v60 = *(v56 - 5);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_113;
        }

        v63 = v51[1];
        v64 = v63 - *v51;
        if (__OFSUB__(v63, *v51))
        {
          goto LABEL_115;
        }

        v62 = __OFADD__(v54, v64);
        v65 = v54 + v64;
        if (v62)
        {
          goto LABEL_118;
        }

        if (v65 >= v59)
        {
          v79 = *v50;
          v78 = v50[1];
          v62 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v62)
          {
            goto LABEL_123;
          }

          if (v54 < v80)
          {
            v49 = v46 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_51;
      }

LABEL_81:
      v7 = a3[1];
      v8 = v133;
    }

    while (v133 < v7);
  }

  if (*v6)
  {
    sub_22BEF45B0(&v141, *v6, a3);
LABEL_107:

    return;
  }

LABEL_133:
  __break(1u);
}

uint64_t sub_22BEF45B0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v18 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_22C115CA4(v18, v6, v7, v8);
    v18 = result;
  }

  v15 = v4;
  *v4 = v18;
  v9 = (v18 + 16);
  for (i = *(v18 + 16); ; *v9 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v15 = v18;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v18 + 16 * i);
    v11 = *v4;
    v12 = &v9[2 * i];
    v13 = v12[1];
    sub_22BEF46E8((*a3 + 40 * *v4), (*a3 + 40 * *v12), *a3 + 40 * v13, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v13 < v11)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v9)
    {
      goto LABEL_12;
    }

    *v4 = v11;
    v4[1] = v13;
    v14 = *v9 - i;
    if (*v9 < i)
    {
      goto LABEL_13;
    }

    i = *v9 - 1;
    result = memmove(v12, v12 + 2, 16 * v14);
  }

  *v15 = v18;
  __break(1u);
  return result;
}

uint64_t sub_22BEF46E8(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a2;
  v5 = (a2 - a1) / 40;
  v7 = (a3 - a2) / 40;
  if (v5 >= v7)
  {
    sub_22BE1B838(a2, (a3 - a2) / 40, a4);
    v29 = a1;
    v11 = a4;
    v30 = &a4[40 * v7];
    v31 = a3;
    while (1)
    {
      v32 = 0;
      v33 = v4 - 5;
      while (1)
      {
        v12 = &v30[v32];
        if (&v30[v32] <= a4 || v4 <= v29)
        {
LABEL_32:
          v50 = (v12 - v11) / 40;
          v51 = v4 < v11 || v4 >= &v11[5 * v50];
          if (v51 || v4 != v11)
          {
            memmove(v4, v11, 40 * v50);
          }

          return 1;
        }

        v36 = *(v12 - 5);
        v35 = *(v12 - 4);
        v37 = *(v12 - 3);
        v38 = *(v12 - 16);
        v40 = *(v4 - 5);
        v39 = *(v4 - 4);
        v41 = *(v4 - 3);
        v42 = *(v4 - 16);
        v43 = *(v4 - 1);
        if (v38 != 2)
        {
          v63 = v32;
          __dsta = v30;
          v53 = *(v12 - 1);
          v69 = v37;
          v71 = v35;
          sub_22BE6355C(v36, v35, v37, v38);
          sub_22BEA7680(v53);
          sub_22BE6355C(v36, v71, v69, v38);
          sub_22BEA7680(v53);
          sub_22BE6355C(v40, v39, v41, v42);
          sub_22BEA7680(v43);
          sub_22BE635AC(v36, v71, v69, v38);
          v67 = v53;
          goto LABEL_49;
        }

        if (v42 != 2)
        {
          v63 = v32;
          __dsta = v30;
          v67 = *(v12 - 1);
          v69 = *(v12 - 3);
          v58 = *(v12 - 4);
          sub_22BE6355C(v40, v39, v41, v42);
          sub_22BEA7680(v43);
          v71 = v58;
          sub_22BE6355C(v36, v58, v69, 2u);
          sub_22BEA7680(v67);
          sub_22BE6355C(v40, v39, v41, v42);
          sub_22BEA7680(v43);
          sub_22BE635AC(v40, v39, v41, v42);
          v53 = v43;
LABEL_49:
          sub_22BEEA690();
          swift_allocError();
          *(v59 + 8) = 0;
          *(v59 + 16) = 0;
          *v59 = v53;
          *(v59 + 24) = 96;
          swift_willThrow();
          sub_22BE635AC(v40, v39, v41, v42);
          sub_22BE63574(v43);
          sub_22BE635AC(v36, v71, v69, v38);
          sub_22BE63574(v67);
          v60 = (__dsta - a4 + v63) / 40;
          v61 = v4 < a4 || v4 >= &a4[40 * v60];
          if (v61 || v4 != a4)
          {
            memmove(v4, a4, 40 * v60);
          }

          return 1;
        }

        v44 = (v31 + v32);
        v45 = v31 + v32 - 40;
        if (v36 < v40)
        {
          break;
        }

        if (v12 != (v31 + v32))
        {
          v46 = *(v12 - 40);
          v47 = *(v12 - 24);
          *(v31 + v32 - 8) = *(v12 - 1);
          *v45 = v46;
          *(v31 + v32 - 24) = v47;
        }

        v32 -= 40;
      }

      v30 += v32;
      v31 = v31 + v32 - 40;
      v25 = v44 == v4;
      v4 -= 5;
      if (!v25)
      {
        v48 = *v33;
        v49 = *(v33 + 1);
        *(v45 + 32) = v33[4];
        *v45 = v48;
        *(v45 + 16) = v49;
        v4 = v33;
        v31 = v45;
      }
    }
  }

  sub_22BE1B838(a1, (a2 - a1) / 40, a4);
  v10 = a1;
  v11 = a4;
  v12 = &a4[40 * v5];
  v13 = a3;
  while (1)
  {
    if (v11 >= v12 || v4 >= v13)
    {
      v4 = v10;
      goto LABEL_32;
    }

    v16 = *v4;
    v15 = v4[1];
    v17 = v4[2];
    v18 = *(v4 + 24);
    v20 = *v11;
    v19 = v11[1];
    v21 = v11[2];
    v22 = *(v11 + 24);
    v23 = v11[4];
    if (v18 != 2)
    {
      __dst = v10;
      __srca = v11;
      v52 = v4[4];
      v68 = v17;
      v70 = v15;
      sub_22BE6355C(v16, v15, v17, v18);
      sub_22BEA7680(v52);
      sub_22BE6355C(v16, v70, v68, v18);
      sub_22BEA7680(v52);
      sub_22BE6355C(v20, v19, v21, v22);
      sub_22BEA7680(v23);
      sub_22BE635AC(v16, v70, v68, v18);
      v66 = v52;
      goto LABEL_42;
    }

    if (v22 != 2)
    {
      break;
    }

    if (v16 >= v20)
    {
      v24 = v11;
      v25 = v10 == v11;
      v11 += 5;
      if (v25)
      {
        goto LABEL_15;
      }

LABEL_14:
      v26 = *v24;
      v27 = *(v24 + 1);
      *(v10 + 4) = v24[4];
      *v10 = v26;
      *(v10 + 1) = v27;
      goto LABEL_15;
    }

    v24 = v4;
    v25 = v10 == v4;
    v4 += 5;
    if (!v25)
    {
      goto LABEL_14;
    }

LABEL_15:
    v10 += 40;
  }

  __dst = v10;
  v66 = v4[4];
  __srca = v11;
  v68 = v4[2];
  v54 = v4[1];
  sub_22BE6355C(v20, v19, v21, v22);
  sub_22BEA7680(v23);
  v70 = v54;
  sub_22BE6355C(v16, v54, v68, 2u);
  sub_22BEA7680(v66);
  sub_22BE6355C(v20, v19, v21, v22);
  sub_22BEA7680(v23);
  sub_22BE635AC(v20, v19, v21, v22);
  v52 = v23;
LABEL_42:
  sub_22BEEA690();
  swift_allocError();
  *(v55 + 8) = 0;
  *(v55 + 16) = 0;
  *v55 = v52;
  *(v55 + 24) = 96;
  swift_willThrow();
  sub_22BE635AC(v20, v19, v21, v22);
  sub_22BE63574(v23);
  sub_22BE635AC(v16, v70, v68, v18);
  sub_22BE63574(v66);
  v56 = (v12 - __srca) / 40;
  v57 = __dst < __srca || __dst >= &__srca[5 * v56];
  if (v57 || __dst != __srca)
  {
    memmove(__dst, __srca, 40 * v56);
  }

  return 1;
}

unint64_t sub_22BEF4C64(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {

    return sub_22BE19454();
  }

  __break(1u);
  return result;
}

void *sub_22BEF4CAC(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v9[2] = *v2;
  v9[3] = v4;
  v9[4] = a1;
  v5 = sub_22BEF6270(sub_22BEF8BC0, v9, v4);
  if ((v6 & 1) == 0)
  {
    sub_22BE233E8(a2, &qword_27D90A8A0, &unk_22C2D1FB0);
    sub_22BEF6A5C(v5, *(v2[2] + 16) - 1);
    sub_22C1912A8(a2);
    v7 = type metadata accessor for ProgramStatement(0);
    sub_22BE19DC4(a2, 0, 1, v7);
  }

  return v5;
}

void sub_22BEF4D7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22BE70138(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    sub_22BE70138(v10 > 1, v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  v13 = *v3;
  if (!*v3)
  {
    if (v11 <= 0xE)
    {
      return;
    }

    v15 = 0;
    goto LABEL_15;
  }

  swift_beginAccess();
  if (MEMORY[0x2318A8A70](*(v13 + 16) & 0x3FLL) <= v11)
  {
    v15 = *(v13 + 24) & 0x3FLL;
    if (v11 <= 0xE && v15 == 0)
    {

      *v3 = 0;
      return;
    }

LABEL_15:
    v17 = MEMORY[0x2318A8AA0](v11 + 1);
    sub_22BEF5A94(v17, v15, sub_22BEF5D58);
    return;
  }

  sub_22BEF5960();
  v14 = *v3;
  if (*v3)
  {

    sub_22BEF59B8((v14 + 16), v14 + 32, a1, a2, v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_22BEF4F04(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  sub_22BEF690C(*(a1 + 16), 0, sub_22C171F50, sub_22BEF5D58);
  sub_22BE70158();
  v3 = 0;
  v4 = v2;
  v5 = *(a1 + 16);
  while (1)
  {
    if (v3 == v5)
    {
LABEL_16:

      return;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    v6 = (a1 + 32 + 24 * v3);
    v8 = v6[1];
    v7 = v6[2];
    v9 = *v6;

    sub_22BEA7680(v7);
    if (!v8)
    {
      goto LABEL_16;
    }

    v11 = (v14 + 40);
    v12 = *(v14 + 16) + 1;
    while (--v12)
    {
      if (*(v11 - 1) != v9 || v8 != *v11)
      {
        v11 += 2;
        if ((sub_22C274014() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    sub_22BEF60F8(v9, v8, v12);
    v10 = *(v4 + 16);
    if (v10 >= *(v4 + 24) >> 1)
    {
      sub_22BE70158();
    }

    ++v3;
    *(v4 + 16) = v10 + 1;
    *(v4 + 8 * v10 + 32) = v7;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_22BEF5100(uint64_t a1)
{
  v2 = type metadata accessor for ProgramStatement(0);
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v8 = sub_22C26E684();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BE5CE4C(&qword_27D90A880, &qword_22C288A78);
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x28223BE20](v12);
  v40 = &v36 - v13;
  v14 = MEMORY[0x277D84F90];
  v46 = 0;
  v47 = MEMORY[0x277D84F90];
  sub_22BEF690C(*(a1 + 16), 0, sub_22C172050, sub_22BEF5B68);
  v45 = v14;
  sub_22BE710CC();
  v15 = v7;
  v16 = 0;
  v17 = v45;
  v18 = *(a1 + 16);
  v43 = v9;
  v44 = v18;
  v39 = v9 + 32;
  v36 = (v9 + 8);
  for (i = a1; ; a1 = i)
  {
    if (v44 == v16)
    {

      return;
    }

    if (v16 >= *(a1 + 16))
    {
      break;
    }

    v19 = v4;
    v20 = a1 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v16;
    v21 = v40;
    sub_22BE3BB64(v20, v40, &qword_27D90A880, &qword_22C288A78);
    v22 = v43;
    v23 = *(v42 + 48);
    v24 = v8;
    (*(v43 + 32))(v11, v21, v8);
    v25 = v15;
    sub_22BEF8B1C(v21 + v23, v15, type metadata accessor for ProgramStatement);
    v26 = v46;
    v27 = v47;
    v28 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v29 = *(v47 + 16);
    if (v46)
    {

      sub_22BEF65C0(v11, v27 + v28, v29, (v26 + 16), v26 + 32);
      v31 = v30;
      v33 = v32;

      if ((v31 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_22BEF63CC(v11, v47 + v28, *(v47 + 16));
      if ((v34 & 1) == 0)
      {
        goto LABEL_14;
      }

      v33 = 0;
    }

    v4 = v19;
    sub_22BEF5EC0(v11, v33);
    v15 = v25;
    sub_22BEF8A70(v25, v19, type metadata accessor for ProgramStatement);
    v45 = v17;
    v35 = *(v17 + 16);
    if (v35 >= *(v17 + 24) >> 1)
    {
      sub_22BE710CC();
      v15 = v25;
      v17 = v45;
    }

    sub_22BEF8AC8(v15, type metadata accessor for ProgramStatement);
    *(v17 + 16) = v35 + 1;
    sub_22BEF8B1C(v19, v17 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v35, type metadata accessor for ProgramStatement);
    v8 = v24;
    (*v36)(v11, v24);
    ++v16;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

unint64_t sub_22BEF5570()
{
  result = qword_27D90A870;
  if (!qword_27D90A870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A870);
  }

  return result;
}

__n128 sub_22BEF55C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22BEF55D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_22BEF5618(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExpressionFlattener.BuiltinIdentifiers(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
          *result = a2 + 24;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExpressionFlattener.OtherConstants(_BYTE *result, int a2, int a3)
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

uint64_t sub_22BEF57F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3A && *(a1 + 25))
    {
      v2 = *a1 + 57;
    }

    else
    {
      v2 = ((*(a1 + 24) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 24) >> 2) & 7))) ^ 0x3F;
      if (v2 >= 0x39)
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

uint64_t sub_22BEF583C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x39)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 58;
    if (a3 >= 0x3A)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3A)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

unint64_t sub_22BEF58C8()
{
  result = qword_27D90A878;
  if (!qword_27D90A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A878);
  }

  return result;
}

uint64_t sub_22BEF591C(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  switch(a4 >> 5)
  {
    case 1:

      break;
    case 5:
      result = sub_22BE6355C(result, a2, a3, a4 & 0x1F);
      break;
    case 6:

      break;
    case 7:
      return result;
    default:
      result = sub_22BEA7680(result);
      break;
  }

  return result;
}

void sub_22BEF5960()
{
  if (*v0 && (swift_isUniquelyReferenced_native() & 1) == 0)
  {
    if (*v0)
    {
      v1 = sub_22C270394();

      *v0 = v1;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_22BEF59B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22C274154();
  sub_22C272F44();
  result = sub_22C2741A4();
  if (__OFSUB__(1 << *a1, 1))
  {
    __break(1u);
  }

  else
  {
    if (sub_22C270304())
    {
      while (1)
      {
        sub_22C270364();
      }
    }

    return sub_22C270354();
  }

  return result;
}

void sub_22BEF5A94(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = a2;
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v5 = sub_22BEF5AE0(v3[1], a2, 0, v4, a3);

  *v3 = v5;
}

uint64_t sub_22BEF5AE0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 16);
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = MEMORY[0x2318A8AA0](v8, a2);
  v11 = 0;
  if (v10 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  if (v12 <= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = v12;
  }

  if (v13 >= 5)
  {
    v11 = MEMORY[0x2318A8AB0]();
    a5(a1, v11 + 16, v11 + 32);
  }

  return v11;
}

void sub_22BEF5B68(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_22C26E684();
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 16);
  if (v30)
  {
    v11 = 0;
    v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v27 = a1 + v12;
    v28 = v14;
    v26 = *(v13 + 56);
    v29 = v13;
    v15 = (v13 - 8);
    while (1)
    {
      v28(v10, v27 + v26 * v11, v6, v8);
      sub_22BEF8740(&qword_28107F2F0, MEMORY[0x277D1C348]);
      v16 = sub_22C272ED4();
      v17 = 1 << *a2;
      v18 = __OFSUB__(v17, 1);
      v19 = v17 - 1;
      if (v18)
      {
        break;
      }

      v20 = v19 & v16;
      v21 = sub_22C270304();
      v23 = v22;
      v25 = v24;
      (*v15)(v10, v6);
      v31 = a2;
      v32 = a3;
      v33 = v20;
      v34 = v21;
      v35 = v23;
      v36 = v25;
      v37 = 0;
      while (v34)
      {
        sub_22C270364();
      }

      sub_22C270354();
      if (++v11 == v30)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22BEF5D98(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_22C274154();

        sub_22C272F44();
        v7 = sub_22C2741A4();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_22C270304();

        if (v8)
        {
          while (1)
          {
            sub_22C270364();
          }
        }

        v7 = sub_22C270354();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

void sub_22BEF5EC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22C26E684();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = v3 + 1;
  v12 = v3[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[1] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22BE71084();
    v12 = *v11;
  }

  v14 = *(v12 + 16);
  if (v14 >= *(v12 + 24) >> 1)
  {
    sub_22BE71084();
    v12 = *v11;
  }

  *(v12 + 16) = v14 + 1;
  (*(v7 + 32))(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v10, v6);
  v3[1] = v12;
  v15 = *v3;
  if (!*v3)
  {
    if (v14 <= 0xE)
    {
      return;
    }

    v16 = 0;
    goto LABEL_14;
  }

  swift_beginAccess();
  if (MEMORY[0x2318A8A70](*(v15 + 16) & 0x3FLL) <= v14)
  {
    v16 = *(v15 + 24) & 0x3FLL;
    if (v14 <= 0xE && !v16)
    {

      *v3 = 0;
      return;
    }

LABEL_14:
    v17 = MEMORY[0x2318A8AA0](v14 + 1);
    sub_22BEF5A94(v17, v16, sub_22BEF5B68);
    return;
  }

  sub_22BEF5960();
  if (*v3)
  {
    sub_22BEF6364((*v3 + 16), *v3 + 32, a2, v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_22BEF60F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v10 = v3[1];
  v8 = v3 + 1;
  v9 = v10;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22BE70138(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_22BE70138(v12 > 1, v13 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v13 + 1;
  v14 = v9 + 16 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v4[1] = v9;
  v15 = *v4;
  if (!*v4)
  {
    if (v13 <= 0xE)
    {
      return;
    }

    v16 = 0;
    goto LABEL_15;
  }

  swift_beginAccess();
  if (MEMORY[0x2318A8A70](*(v15 + 16) & 0x3FLL) <= v13)
  {
    v16 = *(v15 + 24) & 0x3FLL;
    if (v13 <= 0xE && v16 == 0)
    {

      *v4 = 0;
      return;
    }

LABEL_15:
    v18 = MEMORY[0x2318A8AA0](v13 + 1);
    sub_22BEF5A94(v18, v16, sub_22BEF5D58);
    return;
  }

  sub_22BEF5960();
  if (*v4)
  {
    sub_22BEF6364((*v4 + 16), *v4 + 32, a3, v4);
  }

  else
  {
    __break(1u);
  }
}

void *sub_22BEF6270(void *(*a1)(uint64_t *__return_ptr, unint64_t, void), uint64_t a2, uint64_t a3)
{
  v6 = *(sub_22C26E684() - 8);
  result = a1(&v8, a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), *(a3 + 16));
  if (!v3)
  {
    return v8;
  }

  __break(1u);
  return result;
}

void *sub_22BEF6314(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3)
{
  result = a1(&v5, a3 + 32, *(a3 + 16));
  if (!v3)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BEF63CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C26E684();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  for (i = 0; ; ++i)
  {
    if (a3 == i)
    {
      return 0;
    }

    (*(v6 + 16))(v9, a2 + *(v6 + 72) * i, v5, v7);
    sub_22BEF8740(&qword_27D9071B0, MEMORY[0x277D1C358]);
    v11 = sub_22C272FD4();
    (*(v6 + 8))(v9, v5);
    if (v11)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_22BEF6534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = (a3 + 8);
  while (a4 != v7)
  {
    v9 = *(v8 - 1) == a1 && *v8 == a2;
    if (v9 || (sub_22C274014() & 1) != 0)
    {
      return v7;
    }

    ++v7;
    v8 += 2;
  }

  return 0;
}

uint64_t sub_22BEF65C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v14 = a2;
  v6 = sub_22C26E684();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BEF8740(&qword_28107F2F0, MEMORY[0x277D1C348]);
  result = sub_22C272ED4();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_22C270334();
    v11 = v19;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v24 = v18;
    if ((v20 & 1) == 0)
    {
      do
      {
        (*(v7 + 16))(v9, v14 + *(v7 + 72) * v11, v6);
        sub_22BEF8740(&qword_27D9071B0, MEMORY[0x277D1C358]);
        v12 = sub_22C272FD4();
        (*(v7 + 8))(v9, v6);
        if (v12)
        {
          break;
        }

        sub_22C270364();
        v15 = v21;
        v16 = v22;
        v17 = v23;
        v18 = v24;
        v11 = sub_22C270344();
      }

      while ((v13 & 1) == 0);
    }

    return v11;
  }

  return result;
}

uint64_t sub_22BEF67E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_22C274154();
  sub_22C272F44();
  result = sub_22C2741A4();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_22C270334();
    v11 = v15;
    if ((v16 & 1) == 0)
    {
      do
      {
        v12 = (a3 + 16 * v11);
        if (*v12 == a1 && v12[1] == a2)
        {
          break;
        }

        if (sub_22C274014())
        {
          break;
        }

        sub_22C270364();
        v11 = sub_22C270344();
      }

      while ((v14 & 1) == 0);
    }

    return v11;
  }

  return result;
}

void sub_22BEF690C(uint64_t a1, char a2, void (*a3)(void), void (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    goto LABEL_25;
  }

  v6 = v4;
  a3();
  v9 = *v4;
  if (*v4)
  {
    swift_beginAccess();
    v10 = *(v9 + 16) & 0x3FLL;
  }

  else
  {
    v10 = 0;
  }

  v11 = MEMORY[0x2318A8AA0](a1);
  v12 = v11;
  if (a2)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v9 && (a2 & 1) == 0)
  {
    swift_beginAccess();
    v13 = *(v9 + 24) & 0x3FLL;
  }

  if (v10 < v12)
  {
    v14 = v12;
LABEL_18:
    sub_22BEF5A94(v14, v13, a4);
    return;
  }

  if (v13 > v12)
  {
    v12 = v13;
  }

  v14 = MEMORY[0x2318A8AA0](*(v6[1] + 16));
  if (v14 <= v12)
  {
    v14 = v12;
  }

  if (v14 < v10)
  {
    goto LABEL_18;
  }

  sub_22BEF5960();
  v15 = *v6;
  if (!v15)
  {
    if (!v13)
    {
      return;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  swift_beginAccess();
  if ((*(v15 + 24) & 0x3FLL) != v13)
  {
    *(v15 + 24) = *(v15 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }
}

void sub_22BEF6A5C(unint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for ProgramStatement(0) - 8;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  if (a1 != a2)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v12 = *v2;
      v13 = *(*v2 + 16);
      if (v13 > a1)
      {
        v22 = v2;
        v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v15 = *(v9 + 72);
        sub_22BEF8A70(v12 + v14 + v15 * a1, &v21 - v10, type metadata accessor for ProgramStatement);
        if (v13 > a2)
        {
          sub_22BEF8A70(v12 + v14 + v15 * a2, v7, type metadata accessor for ProgramStatement);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C116078(v12, v16, v17, v18);
            v12 = v19;
          }

          if (*(v12 + 16) > a1)
          {
            v20 = v12 + v14;
            sub_22BEF8924(v7, v20 + v15 * a1);
            if (*(v12 + 16) > a2)
            {
              sub_22BEF8924(v11, v20 + v15 * a2);
              *v22 = v12;
              return;
            }

LABEL_15:
            __break(1u);
            return;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }
}

void sub_22BEF6C24(uint64_t a1, int64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v53 = a4;
  v54 = a2;
  v49 = a1;
  v7 = sub_22C26E684();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v50 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ProgramStatement(0);
  v55 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v49 - v22;
  v24 = sub_22BE5CE4C(&qword_27D90A8A8, &unk_22C288AB0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v49 - v25;
  v28 = *(v27 + 56);
  sub_22BE3BB64(a5, &v49 + v28 - v25, &qword_27D90A8A0, &unk_22C2D1FB0);
  v29 = sub_22BE1AEA8(&v26[v28], 1, v9);
  if (a3)
  {
    if (v29 != 1)
    {
      sub_22BEF8B1C(&v26[v28], v14, type metadata accessor for ProgramStatement);
      v30 = v56;
      sub_22BEF5EC0(v49, v53);
      sub_22BEF8A70(v14, v11, type metadata accessor for ProgramStatement);
      v33 = *(v30 + 16);
      v31 = (v30 + 16);
      v32 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v31 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BE710CC();
        v32 = *v31;
      }

      v35 = *(v32 + 16);
      if (v35 >= *(v32 + 24) >> 1)
      {
        sub_22BE710CC();
      }

      sub_22BEF8AC8(v14, type metadata accessor for ProgramStatement);
      v36 = *v31;
      *(v36 + 16) = v35 + 1;
      sub_22BEF8B1C(v11, v36 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v35, type metadata accessor for ProgramStatement);
      *v31 = v36;
    }
  }

  else if (v29 == 1)
  {
    v37 = (v56 + 16);
    v38 = v54;
    if (*(*(v56 + 16) + 16) > v54)
    {
      sub_22BEF717C(v54, v20);
      sub_22BEF8A70(v20, v17, type metadata accessor for ProgramStatement);
      v39 = *v37;
      v40 = swift_isUniquelyReferenced_nonNull_native();
      *v37 = v39;
      if ((v40 & 1) == 0)
      {
        sub_22BE710CC();
        v39 = *v37;
      }

      v41 = *(v39 + 16);
      if (v41 >= *(v39 + 24) >> 1)
      {
        sub_22BE710CC();
      }

      sub_22BEF8AC8(v20, type metadata accessor for ProgramStatement);
      v42 = *v37;
      *(v42 + 16) = v41 + 1;
      sub_22BEF8B1C(v17, v42 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v41, type metadata accessor for ProgramStatement);
      *v37 = v42;
    }

    v43 = v50;
    sub_22BEF73D8(v38, v53, v50);
    (*(v51 + 8))(v43, v52);
  }

  else
  {
    sub_22BEF8B1C(&v26[v28], v23, type metadata accessor for ProgramStatement);
    v45 = (v56 + 16);
    v44 = *(v56 + 16);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    *v45 = v44;
    if ((v46 & 1) == 0)
    {
      sub_22BE710CC();
      v44 = *v45;
    }

    v47 = *(v44 + 16);
    v48 = v54;
    if (v47 >= *(v44 + 24) >> 1)
    {
      sub_22BE710CC();
      v44 = *v45;
    }

    *(v44 + 16) = v47 + 1;
    sub_22BEF8B1C(v23, v44 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v47, type metadata accessor for ProgramStatement);
    *v45 = v44;
    sub_22BEF6A5C(v48, v47);
  }
}

void sub_22BEF717C(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C116078(v5, v6, v7, v8);
    v5 = v9;
  }

  v10 = *(v5 + 16);
  if (v10 <= a1)
  {
    __break(1u);
  }

  else
  {
    v11 = *(type metadata accessor for ProgramStatement(0) - 8);
    v12 = *(v11 + 72);
    v13 = v5 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + v12 * a1;
    sub_22BEF8B1C(v13, a2, type metadata accessor for ProgramStatement);
    sub_22BE681AC(v13 + v12, v10 - 1 - a1, v13);
    *(v5 + 16) = v10 - 1;
    *v2 = v5;
  }
}

void sub_22BEF727C(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C116060(v5, v6, v7, v8);
    v5 = v9;
  }

  v10 = *(v5 + 16);
  if (v10 <= a1)
  {
    __break(1u);
  }

  else
  {
    v11 = sub_22C26E684();
    v12 = *(v11 - 8);
    v13 = *(v12 + 72);
    v14 = v5 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + v13 * a1;
    (*(v12 + 32))(a2, v14, v11);
    sub_22BE68194(v14 + v13, v10 - 1 - a1, v14);
    *(v5 + 16) = v10 - 1;
    *v2 = v5;
  }
}

void sub_22BEF7354(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C116000(v3, v4, v5, v6);
    v3 = v7;
  }

  v8 = *(v3 + 16);
  if (v8 <= a1)
  {
    __break(1u);
  }

  else
  {
    v9 = v8 - 1;
    sub_22BE67CB0((v3 + 16 * a1 + 48), v8 - 1 - a1, (v3 + 16 * a1 + 32));
    *(v3 + 16) = v9;
    *v1 = v3;
  }
}

void sub_22BEF73D8(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = v3 + 1;
  v8 = *(v3[1] + 16);
  v9 = *v4;
  if (!*v4)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_22BEF727C(a1, a3);
    return;
  }

  swift_beginAccess();
  if ((*(v9 + 16) & 0x3FLL) == (*(v9 + 24) & 0x3FLL))
  {
    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_8:
    sub_22BEF5960();
    v11 = *v4;
    if (*v4)
    {

      sub_22BEF7750(a2, (v11 + 16), v11 + 32, v4);
      if (__OFADD__(a1, 1))
      {
        __break(1u);
      }

      else if (a1 + 1 >= a1)
      {
        v12 = v4[1];

        sub_22BEF7C84(a1, a1 + 1, v12, (v11 + 16), v11 + 32);

        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  if (v8 > MEMORY[0x2318A8A80]())
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_22BEF727C(a1, a3);
  if (v9)
  {
    swift_beginAccess();
    v13 = *(v9 + 24) & 0x3FLL;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*v7 + 16);
  if (v13 || v14 >= 0x10)
  {
    v15 = MEMORY[0x2318A8AA0](v14);
    sub_22BEF5A94(v15, v13, sub_22BEF5B68);
  }

  else
  {

    *v4 = 0;
  }
}

void sub_22BEF758C(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (v6)
    {
      sub_22BEF7354(a1);
      return;
    }

    goto LABEL_12;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (v6 <= MEMORY[0x2318A8A80]())
  {
LABEL_12:
    sub_22BEF7354(a1);
    if (v7)
    {
      swift_beginAccess();
      v11 = *(v7 + 24) & 0x3FLL;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(*v5 + 16);
    if (v11 || v12 >= 0x10)
    {
      v13 = MEMORY[0x2318A8AA0](v12);
      sub_22BEF5A94(v13, v11, sub_22BEF5D58);
    }

    else
    {

      *v3 = 0;
    }

    return;
  }

  sub_22BEF5960();
  v9 = *v3;
  if (*v3)
  {

    sub_22BEF7A94(a2, (v9 + 16), v9 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {
      v10 = v3[1];

      sub_22BEF8240(a1, a1 + 1, v10, (v9 + 16), v9 + 32);

      sub_22BEF7354(a1);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t sub_22BEF7750(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v7 = sub_22C26E684();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C270304();
  *&v25 = a2;
  *(&v25 + 1) = a3;
  *&v26 = a1;
  *(&v26 + 1) = v11;
  *&v27 = v12;
  *(&v27 + 1) = v13;
  v28 = 0;
  sub_22C270364();
  if (*(&v26 + 1))
  {
    v23[0] = a3;
    v14 = sub_22C270314();
    v23[1] = v8 + 16;
    while (1)
    {
      v33 = v25;
      v34 = v26;
      v35 = v27;
      v36 = v28;
      result = sub_22C270344();
      if (v16)
      {
LABEL_27:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v17 = *(v24 + 8);
      if (result >= *(v17 + 16))
      {
        goto LABEL_25;
      }

      (*(v8 + 16))(v10, v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v7);
      sub_22BEF8740(&qword_28107F2F0, MEMORY[0x277D1C348]);
      v18 = sub_22C272ED4();
      result = (*(v8 + 8))(v10, v7);
      v19 = 1 << *a2;
      if (__OFSUB__(v19, 1))
      {
        goto LABEL_26;
      }

      v20 = (v19 - 1) & v18;
      if (a1 >= v14)
      {
        if (v20 < v14 || a1 < v20)
        {
          goto LABEL_19;
        }
      }

      else if (v20 < v14 && a1 < v20)
      {
        goto LABEL_19;
      }

      v29 = v25;
      v30 = v26;
      v31 = v27;
      v32 = v28;
      sub_22C270344();
      a1 = v30;
      sub_22C270324();
LABEL_19:
      sub_22C270364();
      if (!*(&v26 + 1))
      {
        return sub_22C270324();
      }
    }
  }

  return sub_22C270324();
}

void sub_22BEF7A94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17 = sub_22C270304();
  sub_22C270364();
  if (v17)
  {
    v7 = sub_22C270314();
    v8 = a1;
    while (1)
    {
      v9 = sub_22C270344();
      if (v10)
      {
LABEL_26:
        __break(1u);
        return;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (v9 >= *(*(a4 + 8) + 16))
      {
        goto LABEL_24;
      }

      sub_22C274154();

      sub_22C272F44();
      v11 = sub_22C2741A4();

      v12 = 1 << *a2;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_25;
      }

      v13 = (v12 - 1) & v11;
      if (v8 >= v7)
      {
        if (v13 >= v7 && v8 >= v13)
        {
LABEL_18:
          sub_22C270344();
          v8 = a1;
          sub_22C270324();
        }
      }

      else if (v13 >= v7 || v8 >= v13)
      {
        goto LABEL_18;
      }

      sub_22C270364();
    }
  }

  sub_22C270324();
}

void sub_22BEF7C84(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_22C26E684();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v64 - v16;
  v18 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v18 >= 1)
  {
    v65 = a3;
    v19 = *(a3 + 16);
    if ((v19 - v18) / 2 <= a1)
    {
      v24 = __OFSUB__(v19, a2);
      v32 = v19 - a2;
      if (v24)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if (v32 >= MEMORY[0x2318A8A70](*a4 & 0x3F, v15) / 3)
      {
        v46 = sub_22C270304();
        *&v69 = a4;
        *(&v69 + 1) = a5;
        *&v70 = 0;
        *(&v70 + 1) = v46;
        *&v71 = v47;
        *(&v71 + 1) = v48;
        v72 = 0;
        do
        {
          v73 = v69;
          v74 = v70;
          v75 = v71;
          v76 = v72;
          v49 = sub_22C270344();
          if ((v50 & 1) == 0 && v49 >= a2)
          {
            if (__OFSUB__(v49, v18))
            {
              goto LABEL_56;
            }

            sub_22C270354();
          }

          sub_22C270364();
        }

        while (v70);
      }

      else
      {
        v33 = sub_22BEF37E8(a2, v65);
        v68 = v36;
        if (v34 != v35 >> 1)
        {
          v51 = v34;
          v64 = v33;
          v65 = v35 >> 1;
          if (v34 >= (v35 >> 1))
          {
LABEL_66:
            __break(1u);
            return;
          }

          v53 = *(v11 + 16);
          v52 = v11 + 16;
          v66 = *(v52 + 56);
          v67 = v53;
          v54 = (v52 - 8);
          while (1)
          {
            (v67)(v13, &v68[v66 * v51], v10);
            sub_22BEF8740(&qword_28107F2F0, MEMORY[0x277D1C348]);
            v55 = sub_22C272ED4();
            (*v54)(v13, v10);
            v56 = 1 << *a4;
            v24 = __OFSUB__(v56, 1);
            v57 = v56 - 1;
            if (v24)
            {
              goto LABEL_57;
            }

            v58 = v57 & v55;
            v59 = sub_22C270304();
            *&v69 = a4;
            *(&v69 + 1) = a5;
            *&v70 = v58;
            *(&v70 + 1) = v59;
            *&v71 = v60;
            *(&v71 + 1) = v61;
            v72 = 0;
            while (*(&v70 + 1))
            {
              v73 = v69;
              v74 = v70;
              v75 = v71;
              v76 = v72;
              v62 = sub_22C270344();
              if ((v63 & 1) == 0 && v62 == a2)
              {
                break;
              }

              sub_22C270364();
            }

            if (__OFSUB__(a2, v18))
            {
              goto LABEL_58;
            }

            sub_22C270354();
            v24 = __OFADD__(a2++, 1);
            if (v24)
            {
              goto LABEL_59;
            }

            if (++v51 == v65)
            {
              swift_unknownObjectRelease();
              return;
            }
          }
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (MEMORY[0x2318A8A70](*a4 & 0x3F, v15) / 3 <= a1)
      {
        v37 = sub_22C270304();
        *&v69 = a4;
        *(&v69 + 1) = a5;
        *&v70 = 0;
        *(&v70 + 1) = v37;
        *&v71 = v38;
        *(&v71 + 1) = v39;
        v72 = 0;
        do
        {
          v73 = v69;
          v74 = v70;
          v75 = v71;
          v76 = v72;
          v40 = sub_22C270344();
          if ((v41 & 1) == 0 && v40 < a1)
          {
            if (__OFADD__(v40, v18))
            {
              goto LABEL_55;
            }

            sub_22C270354();
          }

          sub_22C270364();
        }

        while (v70);
      }

      else
      {
        if (a1 < 0)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v19 < a1)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (a1)
        {
          v20 = *(v11 + 16);
          v67 = (v65 + ((*(v11 + 80) + 32) & ~*(v11 + 80)));
          v68 = v20;
          v66 = *(v11 + 72);

          v21 = 0;
          while (1)
          {
            (v68)(v17, &v67[v66 * v21], v10);
            sub_22BEF8740(&qword_28107F2F0, MEMORY[0x277D1C348]);
            v22 = sub_22C272ED4();
            (*(v11 + 8))(v17, v10);
            v23 = 1 << *a4;
            v24 = __OFSUB__(v23, 1);
            v25 = v23 - 1;
            if (v24)
            {
              break;
            }

            v26 = v25 & v22;
            v27 = sub_22C270304();
            *&v69 = a4;
            *(&v69 + 1) = a5;
            *&v70 = v26;
            *(&v70 + 1) = v27;
            *&v71 = v28;
            *(&v71 + 1) = v29;
            v72 = 0;
            while (*(&v70 + 1))
            {
              v73 = v69;
              v74 = v70;
              v75 = v71;
              v76 = v72;
              v30 = sub_22C270344();
              if ((v31 & 1) == 0 && v30 == v21)
              {
                break;
              }

              sub_22C270364();
            }

            if (__OFADD__(v21, v18))
            {
              goto LABEL_54;
            }

            ++v21;
            sub_22C270354();
            if (v21 == a1)
            {

              goto LABEL_29;
            }
          }

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
          goto LABEL_60;
        }
      }

LABEL_29:
      v42 = a4[1];
      if (__OFSUB__(v42 >> 6, v18))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v43 = 1 << *a4;
      v24 = __OFSUB__(v43, 1);
      v44 = v43 - 1;
      if (v24)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v45 = (v44 & (((v42 >> 6) - v18) >> 63)) + (v42 >> 6) - v18;
      if (v45 < v44)
      {
        v44 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v45 - v44) << 6);
    }
  }
}

void sub_22BEF8240(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_57;
  }

  if (v5 >= 1)
  {
    v9 = *(a3 + 16);
    if ((v9 - v5) / 2 <= a1)
    {
      v13 = a2;
      v14 = __OFSUB__(v9, a2);
      v15 = v9 - a2;
      if (v14)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v15 >= MEMORY[0x2318A8A70](*a4 & 0x3FLL) / 3)
      {
        sub_22C270304();
        v24 = sub_22C270344();
        if ((v25 & 1) == 0 && v24 >= v13)
        {
          if (__OFSUB__(v24, v5))
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          sub_22C270354();
        }

        sub_22C270364();
        return;
      }

      sub_22BEF3880(v13, a3);
      v17 = v16;
      v19 = v18 >> 1;
      while (v17 != v19)
      {
        if (v17 >= v19)
        {
          goto LABEL_51;
        }

        sub_22C274154();

        sub_22C272F44();
        sub_22C2741A4();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_52;
        }

        if (sub_22C270304())
        {
          while (1)
          {
            v20 = sub_22C270344();
            if ((v21 & 1) == 0 && v20 == v13)
            {
              break;
            }

            sub_22C270364();
          }
        }

        if (__OFSUB__(v13, v5))
        {
          goto LABEL_53;
        }

        sub_22C270354();

        v14 = __OFADD__(v13++, 1);
        if (v14)
        {
          goto LABEL_54;
        }

        ++v17;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (MEMORY[0x2318A8A70](*a4 & 0x3FLL) / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v9 < a1)
        {
LABEL_62:
          __break(1u);
          return;
        }

        for (i = 0; ; ++i)
        {
          if (i == a1)
          {

            goto LABEL_40;
          }

          sub_22C274154();

          sub_22C272F44();
          sub_22C2741A4();
          if (__OFSUB__(1 << *a4, 1))
          {
            break;
          }

          if (sub_22C270304())
          {
            while (1)
            {
              v11 = sub_22C270344();
              if ((v12 & 1) == 0 && v11 == i)
              {
                break;
              }

              sub_22C270364();
            }
          }

          if (__OFADD__(i, v5))
          {
            goto LABEL_50;
          }

          sub_22C270354();
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      sub_22C270304();
      v22 = sub_22C270344();
      if ((v23 & 1) == 0 && v22 < a1)
      {
        if (__OFADD__(v22, v5))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        sub_22C270354();
      }

      sub_22C270364();
LABEL_40:
      v26 = a4[1];
      if (__OFSUB__(v26 >> 6, v5))
      {
        goto LABEL_59;
      }

      v27 = 1 << *a4;
      v14 = __OFSUB__(v27, 1);
      v28 = v27 - 1;
      if (v14)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v29 = (v28 & (((v26 >> 6) - v5) >> 63)) + (v26 >> 6) - v5;
      if (v29 < v28)
      {
        v28 = 0;
      }

      a4[1] = a4[1] & 0x3FLL | ((v29 - v28) << 6);
    }
  }
}

void sub_22BEF8690(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a3)
  {

    v10 = sub_22BEF65C0(a4, a1, a2, (a3 + 16), a3 + 32);
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v10 = sub_22BEF63CC(a4, a1, a2);
    v12 = v15;
    v14 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v12 & 1;
  *(a5 + 16) = v14;
}

uint64_t sub_22BEF8740(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22C26E684();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22BEF8784(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *a4;
  v9 = a4[1];
  if (a3)
  {

    v11 = sub_22BEF67E0(v8, v9, a1, a2, (a3 + 16), a3 + 32);
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v11 = sub_22BEF6534(*a4, a4[1], a1, a2);
    v13 = v16;
    v15 = 0;
  }

  *a5 = v11;
  *(a5 + 8) = v13 & 1;
  *(a5 + 16) = v15;
}

double sub_22BEF8860(unint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    return sub_22BE63574(a1);
  }

  return result;
}

double sub_22BEF8874(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {

    return sub_22BE63574(a3);
  }

  return result;
}

uint64_t sub_22BEF88B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22BE190C4(a1, a2, a3, a4);
  sub_22BE1834C();
  v5 = sub_22BE19454();
  v6(v5);
  return v4;
}

uint64_t sub_22BEF8924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProgramStatement(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22BEF89D4()
{
  result = qword_27D90A8B8;
  if (!qword_27D90A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A8B8);
  }

  return result;
}

uint64_t sub_22BEF8A28(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BEF8A70(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BE1834C();
  v4 = sub_22BE19454();
  v5(v4);
  return a2;
}

uint64_t sub_22BEF8AC8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BE18524();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22BEF8B1C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BE1834C();
  v4 = sub_22BE19454();
  v5(v4);
  return a2;
}

void *sub_22BEF8B74(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_22BEF8BDC(uint64_t *a1)
{
  v2 = *(sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C116030(v3, v4, v5, v6);
    v3 = v7;
  }

  v8 = *(v3 + 16);
  v9[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9[1] = v8;
  sub_22BF056B8(v9);
  *a1 = v3;
}

void AST.FlatAssignExpr.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t AST.FlatAssignExpr.expr.getter()
{
  sub_22BF0AF00();
  sub_22BE1BEA0();
  return sub_22BF043F0();
}

uint64_t AST.FlatAssignExpr.expr.setter()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for AST.FlatAssignExpr(v0);
  sub_22BE191F0();
  return sub_22BF07B08();
}

uint64_t AST.FlatAssignExpr.expr.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for AST.FlatAssignExpr(v0);
  return sub_22BE18504();
}

uint64_t AST.FlatAssignExpr.init(name:expr:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  sub_22BF0AF00();
  sub_22BE191F0();
  return sub_22BF042FC();
}

uint64_t AST.FlatAssignExpr.description.getter()
{
  v2 = *v0;

  MEMORY[0x2318AB8D0](2112800, 0xE300000000000000);
  sub_22BF0AF00();
  AST.FlatExpr.description.getter();
  MEMORY[0x2318AB8D0]();

  return v2;
}

void static AST.FlatAssignExpr.== infix(_:_:)()
{
  sub_22BE18378();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (v3 || (sub_22C274014() & 1) != 0)
  {
    sub_22BF0AF00();

    static AST.FlatExpr.== infix(_:_:)();
  }
}

void static AST.FlatExpr.== infix(_:_:)()
{
  sub_22BE19460();
  v148 = v1;
  v149 = v2;
  v3 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A174();
  sub_22BE190A8(v5);
  v134 = sub_22BE5CE4C(&qword_27D90A8E8, &qword_22C288AF8);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1A174();
  v135 = v7;
  sub_22BE183BC();
  sub_22C26E1D4();
  sub_22BE179D8();
  v146 = v9;
  v147 = v8;
  MEMORY[0x28223BE20](v8);
  sub_22BE17B98();
  v133 = v10;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v11);
  sub_22BE19490();
  v132 = v12;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v13);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v14);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v15);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v16);
  sub_22BE19E94();
  sub_22BE190A8(v17);
  v18 = type metadata accessor for AST.FlatValue(0);
  v19 = sub_22BE19448(v18);
  MEMORY[0x28223BE20](v19);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v20);
  sub_22BE19490();
  v129 = v21;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v22);
  sub_22BE19490();
  v131 = v23;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v24);
  sub_22BE19490();
  v130 = v25;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v26);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v27);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v28);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v29);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v30);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v31);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v32);
  sub_22BE19E94();
  sub_22BE190A8(v33);
  type metadata accessor for AST.FlatExpr(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v34);
  sub_22BE17B98();
  v145 = v35;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v36);
  sub_22BE19490();
  v144 = v37;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v38);
  sub_22BE19490();
  v142 = v39;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v40);
  sub_22BE19490();
  v139 = v41;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v42);
  sub_22BE19490();
  v143 = v43;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v44);
  sub_22BE19490();
  v137 = v45;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v46);
  sub_22BE19490();
  v140 = v47;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v48);
  sub_22BE19490();
  v141 = v49;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v50);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v51);
  sub_22BE1B618();
  MEMORY[0x28223BE20](v52);
  MEMORY[0x28223BE20](v53);
  sub_22BE19490();
  v138 = v54;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v55);
  sub_22BE19490();
  v136 = v56;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v57);
  v59 = &v126 - v58;
  MEMORY[0x28223BE20](v60);
  v62 = &v126 - v61;
  MEMORY[0x28223BE20](v63);
  v64 = sub_22BE5CE4C(&qword_27D90A8F0, &unk_22C288B00);
  sub_22BE19448(v64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v65);
  v67 = &v126 - v66;
  v69 = &v126 + *(v68 + 56) - v66;
  sub_22BF043F0();
  v149 = v69;
  sub_22BF043F0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE1BEA0();
      sub_22BF043F0();
      sub_22BE5CE4C(&qword_27D90A918, &qword_22C2D1EB0);
      if (sub_22BE40924() != 1)
      {
        goto LABEL_68;
      }

      v96 = *v62;
      v97 = *v69;
      sub_22BE25AA0();
      sub_22BF042FC();
      sub_22BF042FC();
      if (v96 == v97)
      {
        static AST.FlatValue.== infix(_:_:)();
        sub_22BE3E550();
      }

      else
      {
        sub_22BE230C4();
      }

      goto LABEL_78;
    case 2u:
      sub_22BE1BEA0();
      sub_22BF043F0();
      sub_22BE5CE4C(&qword_27D90A910, &unk_22C288B20);
      v75 = v149;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_66;
      }

      v76 = *v59;
      v77 = *v75;
      sub_22BE25AA0();
      sub_22BF042FC();
      sub_22BF042FC();
      sub_22BF042FC();
      sub_22BF042FC();
      if (v76 == v77 && (static AST.FlatValue.== infix(_:_:)(), (v78 & 1) != 0))
      {
        static AST.FlatValue.== infix(_:_:)();
        sub_22BE3E550();
        sub_22BF042A8();
        sub_22BF042A8();
        sub_22BF042A8();
      }

      else
      {
        sub_22BE230C4();
        sub_22BF042A8();
        sub_22BE1B5EC();
        sub_22BF042A8();
        sub_22BE1B074();
        sub_22BF042A8();
      }

      goto LABEL_79;
    case 3u:
      sub_22BE1BEA0();
      v86 = v136;
      sub_22BF043F0();
      v87 = *(sub_22BE5CE4C(&qword_27D90A908, &unk_22C2D1EA0) + 48);
      v89 = *(v86 + v87);
      v88 = *(v86 + v87 + 8);
      v90 = v149;
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        sub_22BE18D14();
        goto LABEL_69;
      }

      v92 = *&v90[v87];
      v91 = *&v90[v87 + 8];
      sub_22BE1897C();
      sub_22BF042FC();
      sub_22BE18240();
      static AST.FlatValue.== infix(_:_:)();
      v94 = v93;
      sub_22BE18D14();
      sub_22BF042A8();
      if ((v94 & 1) == 0)
      {
        sub_22BE18D14();
        sub_22BF042A8();

        goto LABEL_82;
      }

      if (v89 != v92 || v88 != v91)
      {
        sub_22BE1B5EC();
        sub_22C274014();
      }

      sub_22BE18D14();
      sub_22BF042A8();
      goto LABEL_92;
    case 4u:
      sub_22BE1BEA0();
      sub_22BF043F0();
      sub_22BE5CE4C(&qword_27D90A900, &unk_22C288B10);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
LABEL_66:
        sub_22BE230C4();
        sub_22BF042A8();
        goto LABEL_69;
      }

      sub_22BE25AA0();
      sub_22BF042FC();
      sub_22BF042FC();
      sub_22BF042FC();
      static AST.FlatValue.== infix(_:_:)();
      v72 = v71;
      sub_22BE18D14();
      sub_22BF042A8();
      if (v72)
      {
        static AST.FlatValue.== infix(_:_:)();
        sub_22BE3E550();
        sub_22BF042A8();
        goto LABEL_78;
      }

      sub_22BE230C4();
      sub_22BF042A8();
      sub_22BE200D4();
      sub_22BF042A8();
      goto LABEL_79;
    case 5u:
      sub_22BE1BEA0();
      sub_22BF043F0();
      if (sub_22BF0AEB4() != 5)
      {
        goto LABEL_72;
      }

      sub_22BE18040();
      sub_22BEA230C();
      goto LABEL_61;
    case 6u:
      sub_22BE1BEA0();
      sub_22BF043F0();
      v103 = *v0;
      v102 = v0[1];
      v104 = v149;
      if (swift_getEnumCaseMultiPayload() != 6)
      {

LABEL_72:

        goto LABEL_73;
      }

      if (v103 == *v104 && v102 == *(v104 + 1))
      {
      }

      else
      {
        v106 = sub_22C274014();

        if ((v106 & 1) == 0)
        {

LABEL_82:

          goto LABEL_92;
        }
      }

      sub_22BE18040();
      sub_22BEA657C();
LABEL_61:

      goto LABEL_92;
    case 7u:
      sub_22BE1BEA0();
      sub_22BF0AFB8();
      sub_22BF043F0();
      if (sub_22BF0AEB4() != 7)
      {
        goto LABEL_72;
      }

      sub_22BE18040();
      sub_22BEA2634();
      goto LABEL_61;
    case 8u:
      sub_22BE1BEA0();
      v111 = v141;
      sub_22BF043F0();
      v112 = *(sub_22BE5CE4C(&qword_27D90A8F8, &unk_22C2D1E90) + 48);
      if (sub_22BE40924() == 8)
      {
        v148 = *&v69[v112];
        v113 = v146;
        v114 = v147;
        v115 = v128;
        (*(v146 + 32))(v128, v69, v147);
        sub_22C26E1B4();
        v116 = *(v113 + 8);
        v116(v115, v114);
        v116(v111, v114);
        goto LABEL_92;
      }

      v85 = sub_22BE2399C();
      goto LABEL_24;
    case 9u:
      sub_22BE1BEA0();
      v70 = v140;
      sub_22BF043F0();
      if (sub_22BF0AEB4() == 9)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    case 0xAu:
      sub_22BE1BEA0();
      v107 = v137;
      sub_22BF043F0();
      v109 = *v107;
      v108 = v107[1];
      if (sub_22BE40924() != 10)
      {
        goto LABEL_72;
      }

      if (v109 != *v69 || v108 != *(v69 + 1))
      {
        sub_22BE18944();
        sub_22C274014();
      }

      goto LABEL_61;
    case 0xBu:
      sub_22BE1BEA0();
      v70 = v143;
      sub_22BF043F0();
      if (sub_22BF0AEB4() == 11)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    case 0xCu:
      sub_22BE1BEA0();
      sub_22BF043F0();
      if (sub_22BF0AEB4() != 12)
      {
        goto LABEL_72;
      }

      v73 = sub_22BE18040();
      sub_22BE9693C(v73, v74);
      goto LABEL_61;
    case 0xDu:
      sub_22BE1BEA0();
      v98 = v142;
      sub_22BF043F0();
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        sub_22BE33928(v98, &qword_27D9082F0, &qword_22C27AB00);
        goto LABEL_73;
      }

      v99 = v135;
      v100 = *(v134 + 48);
      sub_22BE29454();
      sub_22BE27B84();
      sub_22BEBFD18();
      sub_22BE27B84();
      sub_22BEBFD18();
      v101 = v147;
      if (sub_22BE1AEA8(v99, 1, v147) == 1)
      {
        if (sub_22BE1AEA8(v99 + v100, 1, v101) == 1)
        {
          sub_22BE33928(v99, &qword_27D9082F0, &qword_22C27AB00);
          goto LABEL_92;
        }

        goto LABEL_86;
      }

      sub_22BE22868();
      if (sub_22BE1AEA8(v99 + v100, 1, v101) == 1)
      {
        v117 = sub_22BE28D70();
        v118(v117, v101);
LABEL_86:
        sub_22BE33928(v99, &qword_27D90A8E8, &qword_22C288AF8);
        goto LABEL_92;
      }

      v119 = v146;
      v120 = v99 + v100;
      v121 = v127;
      (*(v146 + 32))(v127, v120, v101);
      sub_22BE1A5F0();
      sub_22BF043A8(v122, v123, MEMORY[0x277CC9610]);
      sub_22C272FD4();
      v124 = *(v119 + 8);
      v124(v121, v101);
      v125 = sub_22BE33560();
      (v124)(v125);
      sub_22BE33928(v99, &qword_27D9082F0, &qword_22C27AB00);
LABEL_92:
      sub_22BE25200();
LABEL_93:
      sub_22BE1AABC();
      return;
    case 0xEu:
      sub_22BE1BEA0();
      v70 = v144;
      sub_22BF043F0();
      if (sub_22BF0AEB4() == 14)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    case 0xFu:
      sub_22BE1BEA0();
      v70 = v145;
      sub_22BF043F0();
      if (sub_22BF0AEB4() == 15)
      {
LABEL_22:
        sub_22BE3E8D8();
        v79 = sub_22BE200D4();
        v80 = v147;
        v81(v79);
        sub_22BE1AB1C();
        sub_22C26E1B4();
        v82 = *(v62 + 1);
        v83 = sub_22BE1B328();
        v82(v83);
        (v82)(v70, v80);
        goto LABEL_92;
      }

LABEL_23:
      v84 = *(v146 + 8);
      v85 = v70;
LABEL_24:
      v84(v85, v147);
      goto LABEL_73;
    case 0x10u:
      if (sub_22BF0AFF0() == 16)
      {
        goto LABEL_92;
      }

      goto LABEL_73;
    case 0x11u:
      if (sub_22BF0AFF0() == 17)
      {
        goto LABEL_92;
      }

      goto LABEL_73;
    case 0x12u:
      if (sub_22BF0AFF0() == 18)
      {
        goto LABEL_92;
      }

      goto LABEL_73;
    case 0x13u:
      if (sub_22BF0AFF0() == 19)
      {
        goto LABEL_92;
      }

      goto LABEL_73;
    default:
      sub_22BE1BEA0();
      sub_22BF043F0();
      if (!sub_22BF0AEB4())
      {
        sub_22BE1897C();
        sub_22BF042FC();
        static AST.FlatValue.== infix(_:_:)();
        sub_22BE3E550();
LABEL_78:
        sub_22BF042A8();
LABEL_79:
        sub_22BF042A8();
        goto LABEL_92;
      }

LABEL_68:
      sub_22BE18D14();
LABEL_69:
      sub_22BF042A8();
LABEL_73:
      sub_22BE33928(v67, &qword_27D90A8F0, &unk_22C288B00);
      goto LABEL_93;
  }
}

uint64_t sub_22BEF9FD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1919973477 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BEFA0A0(char a1)
{
  if (a1)
  {
    return 1919973477;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_22BEFA0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEF9FD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEFA0F0(uint64_t a1)
{
  v2 = sub_22BF04354();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFA12C(uint64_t a1)
{
  v2 = sub_22BF04354();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AST.FlatAssignExpr.encode(to:)(void *a1)
{
  sub_22BE5CE4C(&qword_27D90A920, &qword_22C288B30);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE25CD0();
  sub_22BE26950(a1, a1[3]);
  sub_22BF04354();
  sub_22C274234();
  sub_22C273F54();
  if (!v1)
  {
    type metadata accessor for AST.FlatAssignExpr(0);
    sub_22BE33FE4();
    type metadata accessor for AST.FlatExpr(0);
    sub_22BF0AEE8();
    sub_22BF043A8(v4, v5, &protocol conformance descriptor for AST.FlatExpr);
    sub_22BE27B84();
    sub_22C273FA4();
  }

  v6 = sub_22BE200D4();
  return v7(v6);
}

void AST.FlatAssignExpr.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BE19130();
  v24 = v23;
  type metadata accessor for AST.FlatExpr(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v25);
  sub_22BE179EC();
  sub_22BE5CE4C(&qword_27D90A938, &qword_22C288B38);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE2BB64();
  type metadata accessor for AST.FlatAssignExpr(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v27);
  sub_22BE179EC();
  v30 = (v29 - v28);
  sub_22BE26950(v24, v24[3]);
  sub_22BF04354();
  sub_22C274214();
  if (v22)
  {
    sub_22BE26B64(v24);
  }

  else
  {
    *v30 = sub_22C273E64();
    v30[1] = v31;
    sub_22BE33FE4();
    sub_22BF0AEE8();
    sub_22BF043A8(v32, v33, &protocol conformance descriptor for AST.FlatExpr);
    sub_22C273EB4();
    v34 = sub_22BE3CDB8();
    v35(v34);
    sub_22BE191F0();
    sub_22BF042FC();
    sub_22BF043F0();
    sub_22BE26B64(v24);
    sub_22BF042A8();
  }

  sub_22BE18478();
}

BOOL AST.FlatValue.isStatement.getter()
{
  type metadata accessor for AST.FlatValue(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v0);
  sub_22BE179EC();
  sub_22BE17BEC();
  sub_22BE18040();
  sub_22BF043F0();
  sub_22BE1B5EC();
  v1 = swift_getEnumCaseMultiPayload() == 7;
  sub_22BF042A8();
  return v1;
}

BOOL AST.FlatValue.isIdentifier.getter()
{
  type metadata accessor for AST.FlatValue(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v0);
  sub_22BE179EC();
  sub_22BE17BEC();
  sub_22BE18040();
  sub_22BF043F0();
  sub_22BE1B5EC();
  v1 = swift_getEnumCaseMultiPayload() == 8;
  sub_22BF042A8();
  return v1;
}

uint64_t AST.FlatValue.asString.getter()
{
  type metadata accessor for AST.FlatValue(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v0);
  sub_22BE179EC();
  v3 = v2 - v1;
  sub_22BE17BEC();
  sub_22BE18944();
  sub_22BF043F0();
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    return *v3;
  }

  sub_22BF042A8();
  return 0;
}

uint64_t AST.FlatValue.asStatement.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AST.FlatValue(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  sub_22BE17BEC();
  sub_22BF043F0();
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v3 = sub_22C26E684();
    sub_22BE18000();
    v4 = sub_22BE19454();
    v5(v4);
    v6 = a1;
    v7 = 0;
    v8 = 1;
    v9 = v3;
  }

  else
  {
    sub_22BF042A8();
    sub_22C26E684();
    v6 = sub_22BE3116C();
  }

  return sub_22BE19DC4(v6, v7, v8, v9);
}

void AST.FlatValue.description.getter()
{
  sub_22BE19460();
  v1 = sub_22C26E1D4();
  sub_22BE179D8();
  v64 = v2;
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v6 = v5 - v4;
  v7 = sub_22C26E684();
  sub_22BE179D8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  v13 = v12 - v11;
  sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
  sub_22BE179D8();
  v65 = v14;
  v66 = v15;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE25CD0();
  type metadata accessor for AST.FlatValue(0);
  sub_22BE179D8();
  v63 = v17;
  MEMORY[0x28223BE20](v18);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v19);
  v21 = (&v61 - v20);
  sub_22BE17BEC();
  sub_22BF043F0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v67 = *v21;
      sub_22BEBB01C();
      sub_22C273964();
      goto LABEL_6;
    case 2u:
      sub_22C273664();
LABEL_6:
      sub_22BE351AC();
      goto LABEL_27;
    case 3u:
      String.escapedForPython.getter();
      sub_22BE25C14();
      sub_22BF0AFC4(34);
      sub_22BE3E400();

      MEMORY[0x2318AB8D0](34, 0xE100000000000000);

      goto LABEL_27;
    case 4u:
      v24 = *v21;
      v25 = *(*v21 + 16);
      if (v25)
      {
        v67 = MEMORY[0x277D84F90];
        sub_22BF0AF28();
        v26 = v67;
        v27 = *(v63 + 80);
        v66 = v24;
        v28 = v24 + ((v27 + 32) & ~v27);
        v29 = *(v63 + 72);
        do
        {
          sub_22BE29454();
          sub_22BF043F0();
          AST.FlatValue.description.getter();
          v31 = v30;
          v33 = v32;
          sub_22BE18D14();
          sub_22BF042A8();
          v67 = v26;
          v35 = *(v26 + 16);
          v34 = *(v26 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_22BE70138(v34 > 1, v35 + 1, 1);
            v26 = v67;
          }

          *(v26 + 16) = v35 + 1;
          v36 = v26 + 16 * v35;
          *(v36 + 32) = v31;
          *(v36 + 40) = v33;
          v28 += v29;
          --v25;
        }

        while (v25);
      }

      else
      {

        v26 = MEMORY[0x277D84F90];
      }

      v67 = v26;
      v49 = sub_22BE18040();
      sub_22BE5CE4C(v49, v50);
      sub_22BE1B9E8();
      v53 = sub_22BEF8A28(v51, &qword_27D908050, &qword_22C278EB0, v52);
      sub_22BE29280(v53);
      sub_22BE25C14();
      sub_22BF0AFC4(91);
      sub_22BE3E400();

      v54 = 93;
      goto LABEL_26;
    case 5u:
      v37 = sub_22BE6875C(*v21);

      v67 = v37;
      sub_22BEF8BDC(&v67);
      v38 = v67;
      v39 = v67[2];
      if (v39)
      {
        v69 = MEMORY[0x277D84F90];
        sub_22BF0AF28();
        v40 = 0;
        v41 = *(v66 + 80);
        v63 = v38;
        v64 = v38 + ((v41 + 32) & ~v41);
        v42 = v69;
        v62 = v39;
        do
        {
          if (v40 >= *(v38 + 16))
          {
            __break(1u);

            __break(1u);
            return;
          }

          sub_22BE22868();
          v43 = v0[1];
          v67 = *v0;
          v68 = v43;

          MEMORY[0x2318AB8D0](8250, 0xE200000000000000);
          AST.FlatValue.description.getter();
          MEMORY[0x2318AB8D0]();

          v44 = v67;
          v45 = v68;
          sub_22BE33928(v0, &unk_27D907790, &unk_22C27FE90);
          v69 = v42;
          v47 = v42[2];
          v46 = v42[3];
          if (v47 >= v46 >> 1)
          {
            sub_22BE70138(v46 > 1, v47 + 1, 1);
            v42 = v69;
          }

          ++v40;
          v42[2] = v47 + 1;
          v48 = &v42[2 * v47];
          v48[4] = v44;
          v48[5] = v45;
          v38 = v63;
        }

        while (v62 != v40);
      }

      else
      {

        v42 = MEMORY[0x277D84F90];
      }

      v67 = v42;
      v55 = sub_22BE19454();
      sub_22BE5CE4C(v55, v56);
      sub_22BE1B9E8();
      v59 = sub_22BEF8A28(v57, &qword_27D908050, &qword_22C278EB0, v58);
      sub_22BE29280(v59);

      sub_22BF0AFC4(123);
      v60 = sub_22BE260B8();
      MEMORY[0x2318AB8D0](v60);

      v54 = 125;
LABEL_26:
      MEMORY[0x2318AB8D0](v54, 0xE100000000000000);
LABEL_27:
      sub_22BE1AABC();
      return;
    case 7u:
      (*(v9 + 32))(v13, v21, v7);
      sub_22C26E634();
      sub_22BE351AC();
      v22 = sub_22BF0AFB8();
      goto LABEL_21;
    case 8u:
      (*(v64 + 32))(v6, v21, v1);
      sub_22C26E184();
      sub_22BE351AC();
      v22 = sub_22BE18040();
LABEL_21:
      v23(v22);
      goto LABEL_27;
    default:
      goto LABEL_27;
  }
}

void static AST.FlatValue.== infix(_:_:)()
{
  sub_22BE19460();
  v53 = v2;
  v54 = v3;
  sub_22C26E1D4();
  sub_22BE179D8();
  v48 = v5;
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v45 = v7 - v6;
  sub_22BE183BC();
  sub_22C26E684();
  sub_22BE179D8();
  v46 = v9;
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v44 = v11 - v10;
  v12 = sub_22BE183BC();
  type metadata accessor for AST.FlatValue(v12);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE17B98();
  v52 = v14;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v15);
  sub_22BE19490();
  v51 = v16;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v17);
  sub_22BE19490();
  v50 = v18;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v19);
  sub_22BE1B618();
  MEMORY[0x28223BE20](v20);
  sub_22BE23858();
  MEMORY[0x28223BE20](v21);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v22);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v23);
  sub_22BE18094();
  MEMORY[0x28223BE20](v24);
  v26 = &v43 - v25;
  v27 = sub_22BE5CE4C(&qword_27D90A948, &qword_22C288B40);
  sub_22BE19448(v27);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE1B72C();
  v30 = v0 + *(v29 + 56);
  sub_22BF043F0();
  v54 = v30;
  sub_22BF043F0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE17BEC();
      sub_22BF043F0();
      if (sub_22BE486D0() != 1)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    case 2u:
      sub_22BE17BEC();
      sub_22BF043F0();
      if (sub_22BE486D0() == 2)
      {
        goto LABEL_33;
      }

      goto LABEL_35;
    case 3u:
      sub_22BE17BEC();
      sub_22BF043F0();
      v32 = *v1;
      v31 = v1[1];
      if (sub_22BF0AF84() != 3)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    case 4u:
      sub_22BE17BEC();
      sub_22BF043F0();
      sub_22BE29454();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_26;
      }

      sub_22BE1B5EC();
      sub_22BEA22B8();
      goto LABEL_18;
    case 5u:
      sub_22BE17BEC();
      sub_22BF043F0();
      sub_22BE29454();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_26;
      }

      sub_22BE1B5EC();
      sub_22BEA657C();
LABEL_18:
      sub_22BE417C8();

      sub_22BE18D14();
      goto LABEL_33;
    case 6u:
      sub_22BE17BEC();
      v37 = v50;
      sub_22BF043F0();
      v32 = *v37;
      v31 = v37[1];
      if (sub_22BF0AF84() != 6)
      {
LABEL_26:

        goto LABEL_35;
      }

LABEL_20:
      if (v32 == *type metadata accessor for AST.FlatValue && v31 == loc_22BF04290)
      {
      }

      else
      {
        v39 = sub_22C274014();

        if ((v39 & 1) == 0)
        {
LABEL_3:
          sub_22BE18D14();
          sub_22BF042A8();
          goto LABEL_36;
        }
      }

LABEL_32:
      sub_22BE18D14();
      goto LABEL_33;
    case 7u:
      sub_22BE17BEC();
      v33 = v51;
      sub_22BF043F0();
      if (sub_22BE486D0() != 7)
      {
        goto LABEL_34;
      }

      v35 = v46;
      v34 = v47;
      v36 = v44;
      (*(v46 + 32))(v44, v26, v47);
      sub_22BE18240();
      _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0();
      goto LABEL_29;
    case 8u:
      sub_22BE17BEC();
      v33 = v52;
      sub_22BF043F0();
      if (sub_22BE486D0() == 8)
      {
        v35 = v48;
        v34 = v49;
        v36 = v45;
        (*(v48 + 32))(v45, v26, v49);
        sub_22BE18240();
        sub_22C26E1B4();
LABEL_29:
        v40 = *(v35 + 8);
        v40(v36, v34);
        v40(v33, v34);
        sub_22BE18D14();
LABEL_33:
        sub_22BF042A8();
      }

      else
      {
LABEL_34:
        v41 = sub_22BE28D70();
        v42(v41);
LABEL_35:
        sub_22BE33928(v0, &qword_27D90A948, &qword_22C288B40);
      }

LABEL_36:
      sub_22BE1AABC();
      return;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_32;
      }

      goto LABEL_35;
    default:
      sub_22BE17BEC();
      sub_22BF043F0();
      if (!sub_22BF0AF84())
      {
        goto LABEL_3;
      }

      goto LABEL_35;
  }
}

uint64_t sub_22BEFB530(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819047278 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1819242338 && a2 == 0xE400000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7630441 && a2 == 0xE300000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C62756F64 && a2 == 0xE600000000000000;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7961727261 && a2 == 0xE500000000000000;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1952672100 && a2 == 0xE400000000000000;
              if (v11 || (sub_22C274014() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
                if (v12 || (sub_22C274014() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E656D6574617473 && a2 == 0xE900000000000074;
                  if (v13 || (sub_22C274014() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_22C274014();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22BEFB848(char a1)
{
  result = 1819047278;
  switch(a1)
  {
    case 1:
      result = 1819242338;
      break;
    case 2:
      result = 7630441;
      break;
    case 3:
      result = 0x656C62756F64;
      break;
    case 4:
      result = 0x676E69727473;
      break;
    case 5:
      result = 0x7961727261;
      break;
    case 6:
      result = 1952672100;
      break;
    case 7:
      result = 0x6C6F626D7973;
      break;
    case 8:
      result = 0x6E656D6574617473;
      break;
    case 9:
      result = 0x696669746E656469;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BEFB92C(uint64_t a1)
{
  v2 = sub_22BF06C38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFB968(uint64_t a1)
{
  v2 = sub_22BF06C38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFB9A4(uint64_t a1)
{
  v2 = sub_22BF06E3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFB9E0(uint64_t a1)
{
  v2 = sub_22BF06E3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFBA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEFB530(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEFBA4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BEFB840();
  *a1 = result;
  return result;
}

uint64_t sub_22BEFBA74(uint64_t a1)
{
  v2 = sub_22BF069D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFBAB0(uint64_t a1)
{
  v2 = sub_22BF069D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFBAEC(uint64_t a1)
{
  v2 = sub_22BF06B28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFBB28(uint64_t a1)
{
  v2 = sub_22BF06B28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFBB64(uint64_t a1)
{
  v2 = sub_22BF06D94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFBBA0(uint64_t a1)
{
  v2 = sub_22BF06D94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFBBDC(uint64_t a1)
{
  v2 = sub_22BF06A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFBC18(uint64_t a1)
{
  v2 = sub_22BF06A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFBC54(uint64_t a1)
{
  v2 = sub_22BF06DE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFBC90(uint64_t a1)
{
  v2 = sub_22BF06DE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFBCCC(uint64_t a1)
{
  v2 = sub_22BF06E90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFBD08(uint64_t a1)
{
  v2 = sub_22BF06E90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFBD44(uint64_t a1)
{
  v2 = sub_22BF06A80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFBD80(uint64_t a1)
{
  v2 = sub_22BF06A80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFBDBC(uint64_t a1)
{
  v2 = sub_22BF06D40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFBDF8(uint64_t a1)
{
  v2 = sub_22BF06D40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFBE34(uint64_t a1)
{
  v2 = sub_22BF06AD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFBE70(uint64_t a1)
{
  v2 = sub_22BF06AD4();

  return MEMORY[0x2821FE720](a1, v2);
}

void AST.FlatValue.encode(to:)(void *a1)
{
  sub_22BE5CE4C(&qword_27D90A950, &qword_22C288B48);
  sub_22BE179D8();
  v109 = v4;
  v110 = v3;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1A174();
  v106 = v6;
  sub_22BE183BC();
  sub_22C26E1D4();
  sub_22BE179D8();
  v107 = v8;
  v108 = v7;
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v105 = v10 - v9;
  sub_22BE5CE4C(&qword_27D90A958, &qword_22C288B50);
  sub_22BE179D8();
  v103 = v12;
  v104 = v11;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1A174();
  v100 = v14;
  sub_22BE183BC();
  sub_22C26E684();
  sub_22BE179D8();
  v101 = v16;
  v102 = v15;
  MEMORY[0x28223BE20](v15);
  sub_22BE179EC();
  v99 = v18 - v17;
  sub_22BE5CE4C(&qword_27D90A960, &qword_22C288B58);
  sub_22BE179D8();
  v97[19] = v20;
  v98 = v19;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE1A174();
  sub_22BF0AFA0(v22);
  v23 = sub_22BE5CE4C(&qword_27D90A968, &qword_22C288B60);
  sub_22BE18910(v23, &v119);
  v97[16] = v24;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE1A174();
  sub_22BE190A8(v26);
  v27 = sub_22BE5CE4C(&qword_27D90A970, &qword_22C288B68);
  sub_22BE18910(v27, &v118);
  v97[13] = v28;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1A174();
  sub_22BE190A8(v30);
  v31 = sub_22BE5CE4C(&qword_27D90A978, &qword_22C288B70);
  sub_22BE18910(v31, &v117);
  v97[10] = v32;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE1A174();
  sub_22BE190A8(v34);
  v35 = sub_22BE5CE4C(&qword_27D90A980, &qword_22C288B78);
  sub_22BE18910(v35, &v116);
  v97[7] = v36;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE1A174();
  sub_22BE190A8(v38);
  v39 = sub_22BE5CE4C(&qword_27D90A988, &qword_22C288B80);
  sub_22BE18910(v39, &v114);
  v97[4] = v40;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE1A174();
  sub_22BE190A8(v42);
  v43 = sub_22BE5CE4C(&qword_27D90A990, &qword_22C288B88);
  sub_22BE18910(v43, &v111);
  v97[1] = v44;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  sub_22BE25CD0();
  v46 = sub_22BE5CE4C(&qword_27D90A998, &qword_22C288B90);
  sub_22BE179D8();
  v97[0] = v47;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v48);
  type metadata accessor for AST.FlatValue(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v49);
  sub_22BE179EC();
  sub_22BE2BB64();
  sub_22BE5CE4C(&qword_27D90A9A0, &qword_22C288B98);
  sub_22BE179D8();
  v112 = v50;
  v113 = v51;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v52);
  v54 = v97 - v53;
  sub_22BE26950(a1, a1[3]);
  sub_22BF069D8();
  v111 = v54;
  sub_22C274234();
  sub_22BE17BEC();
  sub_22BF043F0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      LOBYTE(v115) = 2;
      sub_22BF06DE8();
      v80 = v97[3];
      v81 = v111;
      v55 = v112;
      sub_22BE261D0();
      sub_22C273EE4();
      v82 = v97[5];
      sub_22C273F94();
      sub_22BE1B5D4();
      v83(v80, v82);
      sub_22BE190E4();
      v60 = v81;
      goto LABEL_9;
    case 2u:
      LOBYTE(v115) = 3;
      sub_22BF06D94();
      v66 = v112;
      sub_22BE3788C();
      sub_22C273EE4();
      sub_22C273F74();
      sub_22BE1B5D4();
      v67 = sub_22BE1AB1C();
      v68(v67);
      goto LABEL_16;
    case 3u:
      LOBYTE(v115) = 4;
      sub_22BF06D40();
      sub_22BE204A4();
      sub_22BE1B934();
      sub_22C273EE4();
      sub_22BE260B8();
      v69 = v97[11];
      sub_22C273F54();

      sub_22BE1B5D4();
      v71 = v54;
      v72 = v69;
      goto LABEL_13;
    case 4u:
      v61 = *v1;
      LOBYTE(v115) = 5;
      sub_22BF06C38();
      sub_22BE204A4();
      sub_22BE261D0();
      sub_22C273EE4();
      v115 = v61;
      sub_22BE5CE4C(&qword_27D90A9F0, &qword_22C288BA8);
      sub_22BF06C8C();
      sub_22BE204B0();
      goto LABEL_11;
    case 5u:
      v85 = *v1;
      LOBYTE(v115) = 6;
      sub_22BF06B28();
      sub_22BE204A4();
      sub_22BE261D0();
      sub_22C273EE4();
      v115 = v85;
      sub_22BE5CE4C(&qword_27D90A9D0, &qword_22C288BA0);
      sub_22BF06B7C();
      sub_22BE204B0();
LABEL_11:
      sub_22BE1B5D4();
      v86 = sub_22BE18240();
      v87(v86);
      sub_22BE190E4();
      v88 = sub_22BE1B328();
      v89(v88);

      return;
    case 6u:
      LOBYTE(v115) = 7;
      sub_22BF06AD4();
      sub_22BE1B934();
      sub_22C273EE4();
      v90 = v98;
      sub_22C273F54();

      v71 = sub_22BE28D70();
      v72 = v90;
LABEL_13:
      v70(v71, v72);
      sub_22BE190E4();
      v60 = sub_22BE1AB1C();
      goto LABEL_17;
    case 7u:
      v73 = v99;
      (*(v101 + 32))(v99, v1, v102);
      LOBYTE(v115) = 8;
      sub_22BF06A80();
      v74 = v100;
      v66 = v112;
      sub_22BE3788C();
      sub_22C273EE4();
      sub_22BE2F12C();
      sub_22BF043A8(v75, v76, MEMORY[0x277D1C340]);
      v77 = v104;
      sub_22BE3749C(v73, v78);
      v79 = v103;
      goto LABEL_15;
    case 8u:
      v91 = v105;
      (*(v107 + 32))(v105, v1, v108);
      LOBYTE(v115) = 9;
      sub_22BF06A2C();
      v74 = v106;
      v66 = v112;
      sub_22BE3788C();
      sub_22C273EE4();
      sub_22BE1A5F0();
      sub_22BF043A8(v92, v93, MEMORY[0x277CC95F8]);
      v77 = v110;
      sub_22BE3749C(v91, v94);
      v79 = v109;
LABEL_15:
      (*(v79 + 8))(v74, v77);
      v95 = sub_22BE1824C();
      v96(v95);
LABEL_16:
      v60 = sub_22BE2399C();
      v84 = v66;
      goto LABEL_17;
    case 9u:
      LOBYTE(v115) = 0;
      sub_22BF06E90();
      sub_22BE3788C();
      sub_22C273EE4();
      v62 = sub_22BE194B4();
      v63(v62, v46);
      sub_22BE190E4();
      v64 = sub_22BE18944();
      v65(v64);
      return;
    default:
      LOBYTE(v115) = 1;
      sub_22BF06E3C();
      v56 = v111;
      v55 = v112;
      sub_22C273EE4();
      sub_22C273F64();
      sub_22BE1B5D4();
      v57 = sub_22BE200D4();
      v58(v57);
      sub_22BE190E4();
      v60 = v56;
LABEL_9:
      v84 = v55;
LABEL_17:
      v59(v60, v84);
      return;
  }
}

void AST.FlatValue.hash(into:)(uint64_t a1)
{
  v1 = sub_22C26E1D4();
  sub_22BE179D8();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v7 = v6 - v5;
  v8 = sub_22C26E684();
  sub_22BE179D8();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  v14 = v13 - v12;
  type metadata accessor for AST.FlatValue(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v15);
  sub_22BE179EC();
  v18 = (v17 - v16);
  sub_22BE17BEC();
  sub_22BF043F0();
  sub_22BE1AEE4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v29 = *v18;
      MEMORY[0x2318AC860](2);
      v21 = v29;
      goto LABEL_11;
    case 2u:
      v22 = *v18;
      MEMORY[0x2318AC860](3);
      v23 = 0.0;
      if (v22 != 0.0)
      {
        v23 = v22;
      }

      MEMORY[0x2318AC890](*&v23);
      return;
    case 3u:
      v24 = 4;
      goto LABEL_15;
    case 4u:
      MEMORY[0x2318AC860](5);
      v19 = sub_22BE18944();
      sub_22BEB9528(v19, v20);
      goto LABEL_16;
    case 5u:
      MEMORY[0x2318AC860](6);
      sub_22BE18944();
      sub_22BEB8604();
      goto LABEL_16;
    case 6u:
      v24 = 7;
LABEL_15:
      MEMORY[0x2318AC860](v24);
      sub_22BE18944();
      sub_22C272F44();
LABEL_16:

      break;
    case 7u:
      (*(v10 + 32))(v14, v18, v8);
      MEMORY[0x2318AC860](8);
      sub_22BE2F12C();
      sub_22BF043A8(v25, v26, MEMORY[0x277D1C348]);
      sub_22C272EE4();
      v27 = sub_22BE1B328();
      v28(v27);
      break;
    case 8u:
      (*(v3 + 32))(v7, v18, v1);
      MEMORY[0x2318AC860](9);
      sub_22BE1A5F0();
      sub_22BF043A8(v30, v31, MEMORY[0x277CC9600]);
      sub_22C272EE4();
      v32 = sub_22BE1B5EC();
      v33(v32);
      break;
    case 9u:
      v21 = 0.0;
LABEL_11:
      MEMORY[0x2318AC860](*&v21);
      break;
    default:
      MEMORY[0x2318AC860](1);
      sub_22C274174();
      break;
  }
}

uint64_t AST.FlatValue.hashValue.getter()
{
  sub_22BE25DAC();
  AST.FlatValue.hash(into:)(v1);
  return sub_22C2741A4();
}

uint64_t AST.FlatValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v170[0] = a2;
  sub_22BE5CE4C(&qword_27D90AA28, &qword_22C288BB0);
  sub_22BE179D8();
  v170[1] = v9;
  v171 = v8;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  v169 = v11;
  v12 = sub_22BE5CE4C(&qword_27D90AA30, &qword_22C288BB8);
  sub_22BE18910(v12, &v183);
  v160 = v13;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  v168 = v15;
  v16 = sub_22BE5CE4C(&qword_27D90AA38, &qword_22C288BC0);
  sub_22BE18910(v16, &v182);
  v159 = v17;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1A174();
  v167 = v19;
  v20 = sub_22BE5CE4C(&qword_27D90AA40, &qword_22C288BC8);
  sub_22BE18910(v20, v181);
  v158 = v21;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1A174();
  v166 = v23;
  v24 = sub_22BE5CE4C(&qword_27D90AA48, &qword_22C288BD0);
  sub_22BE18910(v24, &v180);
  v157 = v25;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE1A174();
  v165 = v27;
  v28 = sub_22BE5CE4C(&qword_27D90AA50, &qword_22C288BD8);
  sub_22BE18910(v28, &v179);
  v156 = v29;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE1A174();
  v177 = v31;
  v32 = sub_22BE5CE4C(&qword_27D90AA58, &qword_22C288BE0);
  sub_22BE18910(v32, &v178);
  v155 = v33;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE1A174();
  v164 = v35;
  v36 = sub_22BE5CE4C(&qword_27D90AA60, &qword_22C288BE8);
  sub_22BE18910(v36, &v177);
  v154 = v37;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE1A174();
  v163 = v39;
  v176 = sub_22BE5CE4C(&qword_27D90AA68, &qword_22C288BF0);
  sub_22BE179D8();
  v153 = v40;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE1A174();
  v162 = v42;
  v43 = sub_22BE5CE4C(&qword_27D90AA70, &qword_22C288BF8);
  sub_22BE18910(v43, &v176);
  v151 = v44;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  sub_22BE1A174();
  sub_22BF0AFA0(v46);
  v175 = sub_22BE5CE4C(&qword_27D90AA78, &unk_22C288C00);
  sub_22BE179D8();
  v173 = v47;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v48);
  sub_22BE1B72C();
  v172 = type metadata accessor for AST.FlatValue(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v49);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v50);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v51);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v52);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v53);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v54);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v55);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v56);
  sub_22BE23858();
  MEMORY[0x28223BE20](v57);
  sub_22BE18094();
  MEMORY[0x28223BE20](v58);
  v60 = v146 - v59;
  v61 = a1[3];
  v178 = a1;
  sub_22BE26950(a1, v61);
  sub_22BF069D8();
  v174 = v2;
  v62 = v179;
  sub_22C274214();
  if (v62)
  {
    goto LABEL_10;
  }

  v147 = v6;
  v148 = v5;
  v149 = v3;
  v150 = v4;
  v63 = v176;
  v179 = v60;
  v64 = v174;
  v65 = v175;
  sub_22C273ED4();
  result = sub_22BE7C5C4();
  if (v68 == v69 >> 1)
  {
    v70 = v172;
LABEL_9:
    sub_22C273B34();
    swift_allocError();
    v80 = v79;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v80 = v70;
    v81 = sub_22C273DF4();
    sub_22BE1B198(v81);
    sub_22BE18994();
    v82 = sub_22BE38608();
    v83(v82);
    swift_willThrow();
    swift_unknownObjectRelease();
    v84 = sub_22BE1A1FC();
    v85(v84);
LABEL_10:
    v86 = v178;
    return sub_22BE26B64(v86);
  }

  v146[1] = 0;
  if (v68 < (v69 >> 1))
  {
    v146[0] = *(v67 + v68);
    sub_22BE7C5C0();
    v72 = v71;
    v74 = v73;
    swift_unknownObjectRelease();
    if (v72 == v74 >> 1)
    {
      switch(v146[0])
      {
        case 1:
          LOBYTE(v180) = 1;
          sub_22BF06E3C();
          v90 = v162;
          sub_22BE35B1C(&_s9FlatValueO14BoolCodingKeysON, &v180);
          v129 = sub_22C273E74();
          swift_unknownObjectRelease();
          sub_22BE1B5D4();
          v130(v90, v63);
          v131 = sub_22BE1A1FC();
          v132(v131);
          *v147 = v129 & 1;
          sub_22BE2384C();
          goto LABEL_21;
        case 2:
          LOBYTE(v180) = 2;
          sub_22BF06DE8();
          sub_22BE35B1C(&_s9FlatValueO13IntCodingKeysON, &v180);
          sub_22BF0AEA0();
          v116 = sub_22C273EA4();
          swift_unknownObjectRelease();
          v117 = sub_22BE1C2D4();
          v118(v117);
          v119 = sub_22BE1A1FC();
          v120(v119);
          *v148 = v116;
          sub_22BE37BB8();
          swift_storeEnumTagMultiPayload();
          sub_22BE1897C();
          goto LABEL_22;
        case 3:
          LOBYTE(v180) = 3;
          sub_22BF06D94();
          sub_22BE35B1C(&_s9FlatValueO16DoubleCodingKeysON, &v180);
          sub_22BF0AEA0();
          sub_22C273E84();
          v89 = v173;
          v122 = v121;
          swift_unknownObjectRelease();
          v123 = sub_22BE1C2D4();
          v124(v123);
          (*(v89 + 8))(v64, v65);
          *v149 = v122;
          sub_22BE2384C();
          goto LABEL_21;
        case 4:
          LOBYTE(v180) = 4;
          sub_22BF06D40();
          sub_22BE35B1C(&_s9FlatValueO16StringCodingKeysON, &v180);
          sub_22BF0AEA0();
          sub_22C273E64();
          swift_unknownObjectRelease();
          v108 = sub_22BE1C2D4();
          v109(v108);
          v110 = sub_22BE1A1FC();
          v111(v110);
          sub_22BE32360(v170);
          goto LABEL_21;
        case 5:
          LOBYTE(v180) = 5;
          sub_22BF06C38();
          sub_22BE35B1C(&_s9FlatValueO15ArrayCodingKeysON, &v180);
          v91 = sub_22BE5CE4C(&qword_27D90A9F0, &qword_22C288BA8);
          v92 = sub_22BF06FD8();
          sub_22BE37540(v91, v93, v94, v95, v92);
          sub_22BE35C7C();
          swift_unknownObjectRelease();
          v133 = sub_22BE1C2D4();
          v134(v133);
          v135 = sub_22BE1A1FC();
          v136(v135);
          sub_22BE35514(v180);
          goto LABEL_21;
        case 6:
          LOBYTE(v180) = 6;
          sub_22BF06B28();
          sub_22BE35B1C(&_s9FlatValueO14DictCodingKeysON, &v180);
          v96 = sub_22BE5CE4C(&qword_27D90A9D0, &qword_22C288BA0);
          v97 = sub_22BF06F1C();
          sub_22BE37540(v96, v98, v99, v100, v97);
          sub_22BE35C7C();
          swift_unknownObjectRelease();
          v137 = sub_22BE1C2D4();
          v138(v137);
          v139 = sub_22BE1A1FC();
          v140(v139);
          sub_22BE35514(v180);
          goto LABEL_21;
        case 7:
          LOBYTE(v180) = 7;
          sub_22BF06AD4();
          sub_22BE35B1C(&_s9FlatValueO16SymbolCodingKeysON, &v180);
          sub_22BF0AEA0();
          sub_22C273E64();
          swift_unknownObjectRelease();
          v125 = sub_22BE1C2D4();
          v126(v125);
          v127 = sub_22BE1A1FC();
          v128(v127);
          sub_22BE32360(&v171);
          goto LABEL_21;
        case 8:
          LOBYTE(v180) = 8;
          sub_22BF06A80();
          sub_22BE35B1C(&_s9FlatValueO19StatementCodingKeysON, &v180);
          v101 = sub_22C26E684();
          sub_22BE2F12C();
          sub_22BF043A8(v102, v103, MEMORY[0x277D1C360]);
          sub_22BE204A4();
          sub_22BE37540(v101, v104, v105, v106, v107);
          sub_22BE35C7C();
          swift_unknownObjectRelease();
          v141 = sub_22BE1C2D4();
          v142(v141);
          v143 = sub_22BE1A1FC();
          v144(v143);
          goto LABEL_21;
        case 9:
          LOBYTE(v180) = 9;
          sub_22BF06A2C();
          sub_22BE35B1C(&_s9FlatValueO20IdentifierCodingKeysON, &v180);
          sub_22C26E1D4();
          sub_22BE1A5F0();
          sub_22BF043A8(v87, v88, MEMORY[0x277CC9618]);
          sub_22BE204A4();
          sub_22C273EB4();
          sub_22BE35C7C();
          swift_unknownObjectRelease();
          v112 = sub_22BE27A44();
          v113(v112);
          v114 = sub_22BE1A1FC();
          v115(v114);
LABEL_21:
          swift_storeEnumTagMultiPayload();
          sub_22BE1897C();
LABEL_22:
          sub_22BF042FC();
          break;
        default:
          LOBYTE(v180) = 0;
          sub_22BF06E90();
          v75 = v161;
          sub_22BE35B1C(&_s9FlatValueO14NullCodingKeysON, &v180);
          swift_unknownObjectRelease();
          sub_22BE1B5D4();
          v76(v75, v152);
          v77 = sub_22BE1A1FC();
          v78(v77);
          sub_22BE37BB8();
          swift_storeEnumTagMultiPayload();
          break;
      }

      v145 = v178;
      sub_22BE1897C();
      sub_22BF042FC();
      v86 = v145;
      return sub_22BE26B64(v86);
    }

    v70 = v172;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BEFDDEC(uint64_t a1)
{
  sub_22C274154();
  AST.FlatValue.hash(into:)(v2);
  return sub_22C2741A4();
}

void AST.FlatExpr.description.getter()
{
  sub_22BE19460();
  v1 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v2 = sub_22BE19448(v1);
  MEMORY[0x28223BE20](v2);
  sub_22BE183AC();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  sub_22BE19E94();
  v134 = v7;
  sub_22BE183BC();
  sub_22C26E1D4();
  sub_22BE179D8();
  v136 = v9;
  v137 = v8;
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v135 = v11 - v10;
  v12 = sub_22BE5CE4C(&qword_27D9092B0, &unk_22C288C10);
  v13 = sub_22BE19448(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE17B98();
  v140 = v14;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v15);
  v17 = (&v133 - v16);
  v18 = type metadata accessor for AST.Update(0);
  sub_22BE179D8();
  v139 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22BE179EC();
  v138 = v22 - v21;
  v23 = sub_22BE183BC();
  v24 = type metadata accessor for AST.FlatValue(v23);
  v141 = *(v24 - 8);
  MEMORY[0x28223BE20](v24 - 8);
  sub_22BE183AC();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v29);
  type metadata accessor for AST.FlatExpr(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v30);
  sub_22BE179EC();
  v33 = (v32 - v31);
  sub_22BE1BEA0();
  sub_22BF043F0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v57 = *v33;
      sub_22BE5CE4C(&qword_27D90A918, &qword_22C2D1EB0);
      sub_22BE1897C();
      sub_22BF042FC();
      *&v145 = 0;
      *(&v145 + 1) = 0xE000000000000000;
      if (v57)
      {
        if (v57 == 1)
        {
          v58 = 0xE100000000000000;
          v59 = 45;
        }

        else
        {
          v58 = 0xE400000000000000;
          v59 = 544501614;
        }
      }

      else
      {
        v58 = 0xE100000000000000;
        v59 = 43;
      }

      MEMORY[0x2318AB8D0](v59, v58);

      AST.FlatValue.description.getter();
      MEMORY[0x2318AB8D0]();

      sub_22BE18D14();
      goto LABEL_70;
    case 2u:
      v62 = *v33;
      sub_22BE5CE4C(&qword_27D90A910, &unk_22C288B20);
      sub_22BF0AE88();
      sub_22BF042FC();
      sub_22BF042FC();
      AST.FlatValue.description.getter();
      *&v145 = v63;
      *(&v145 + 1) = v64;
      MEMORY[0x2318AB8D0](32, 0xE100000000000000);
      v65 = AST.InfixOp.description.getter(v62);
      MEMORY[0x2318AB8D0](v65);

      MEMORY[0x2318AB8D0](32, 0xE100000000000000);
      AST.FlatValue.description.getter();
      MEMORY[0x2318AB8D0]();

      goto LABEL_31;
    case 3u:
      sub_22BE5CE4C(&qword_27D90A908, &unk_22C2D1EA0);
      sub_22BE1897C();
      sub_22BE200D4();
      sub_22BF042FC();
      AST.FlatValue.description.getter();
      *&v145 = v41;
      *(&v145 + 1) = v42;
      MEMORY[0x2318AB8D0](46, 0xE100000000000000);
      sub_22BE3E400();

      goto LABEL_70;
    case 4u:
      sub_22BE5CE4C(&qword_27D90A900, &unk_22C288B10);
      sub_22BF0AE88();
      sub_22BF042FC();
      sub_22BF042FC();
      AST.FlatValue.description.getter();
      *&v145 = v87;
      *(&v145 + 1) = v88;
      MEMORY[0x2318AB8D0](91, 0xE100000000000000);
      AST.FlatValue.description.getter();
      MEMORY[0x2318AB8D0]();

      MEMORY[0x2318AB8D0](93, 0xE100000000000000);
LABEL_31:
      sub_22BF042A8();
      sub_22BE260B8();
      goto LABEL_70;
    case 5u:
      v92 = *v33;
      *&v145 = 0xD000000000000011;
      *(&v145 + 1) = 0x800000022C2D3710;
      v137 = *(v92 + 16);
      if (!v137)
      {
        goto LABEL_54;
      }

      v93 = 0;
      v94 = v138;
      v95 = *(v139 + 80);
      v135 = v18;
      v136 = v92 + ((v95 + 32) & ~v95);
      v134 = v92;
      while (v93 < *(v92 + 16))
      {
        sub_22BF0AED0();
        sub_22BF043F0();
        if (*(v94 + *(v18 + 24)) == 1)
        {
          AST.FlatValue.description.getter();
          sub_22BF0AFD0(v96, v97);
          v98 = *(v94 + *(v18 + 20));
          v99 = *(v98 + 16);
          if (v99)
          {
            v140 = v93;
            v142 = MEMORY[0x277D84F90];
            sub_22BF0AF28();
            sub_22BE48DB0();
            do
            {
              sub_22BE17BEC();
              sub_22BE200D4();
              sub_22BF043F0();
              AST.FlatValue.description.getter();
              v17 = v100;
              v102 = v101;
              sub_22BE18D14();
              sub_22BF042A8();
              sub_22BE3C5F0();
              if (v104)
              {
                sub_22BE3FDC4(v103);
                v27 = v142;
              }

              *(v27 + 16) = v92;
              v105 = v27 + 16 * v94;
              *(v105 + 32) = v17;
              *(v105 + 40) = v102;
              v98 += v18;
              --v99;
            }

            while (v99);
            v92 = v134;
            v18 = v135;
            v94 = v138;
            v93 = v140;
          }

          else
          {
            v27 = MEMORY[0x277D84F90];
          }

          v142 = v27;
          sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
          sub_22BE1B9E8();
          v113 = sub_22BEF8A28(&qword_28106DBE0, &qword_27D908050, &qword_22C278EB0, v112);
          v114 = sub_22BE376B4(v113);
          v116 = v115;

          MEMORY[0x2318AB8D0](v114, v116);

          v117 = 540876893;
          v118 = 0xE400000000000000;
        }

        else
        {
          AST.FlatValue.description.getter();
          sub_22BF0AFD0(v106, v107);
          v108 = *(v94 + *(v18 + 20));
          v109 = *(v108 + 16);
          if (v109)
          {
            v140 = v93;
            v142 = MEMORY[0x277D84F90];
            sub_22BF0AF28();
            sub_22BE48DB0();
            do
            {
              sub_22BE17BEC();
              sub_22BE200D4();
              sub_22BF043F0();
              AST.FlatValue.description.getter();
              sub_22BE351AC();
              sub_22BE18D14();
              sub_22BF042A8();
              sub_22BE3C5F0();
              if (v104)
              {
                sub_22BE3FDC4(v110);
                v27 = v142;
              }

              *(v27 + 16) = v92;
              v111 = v27 + 16 * v94;
              *(v111 + 32) = v93;
              *(v111 + 40) = v17;
              v108 += v18;
              --v109;
            }

            while (v109);
            v92 = v134;
            v18 = v135;
            v94 = v138;
            v93 = v140;
          }

          else
          {
            v27 = MEMORY[0x277D84F90];
          }

          v142 = v27;
          sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
          sub_22BE1B9E8();
          v120 = sub_22BEF8A28(&qword_28106DBE0, &qword_27D908050, &qword_22C278EB0, v119);
          v121 = sub_22BE376B4(v120);
          v123 = v122;

          MEMORY[0x2318AB8D0](v121, v123);

          v117 = 0x203D2B205DLL;
          v118 = 0xE500000000000000;
        }

        MEMORY[0x2318AB8D0](v117, v118);
        AST.FlatValue.description.getter();
        MEMORY[0x2318AB8D0]();

        v27 = v144;
        MEMORY[0x2318AB8D0](v143, v144);
        v93 = (v93 + 1);

        sub_22BE3E2D0();
        sub_22BF042A8();
        if (v93 == v137)
        {
LABEL_54:

          goto LABEL_71;
        }
      }

      goto LABEL_73;
    case 6u:
      v66 = *(v33 + 1);
      v67 = *(v33 + 2);
      *&v145 = *v33;
      *(&v145 + 1) = v66;
      MEMORY[0x2318AB8D0](40, 0xE100000000000000);
      v68 = v67 + 64;
      v69 = 1 << *(v67 + 32);
      v70 = -1;
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      v71 = v70 & *(v67 + 64);
      v72 = (v69 + 63) >> 6;
      v139 = v67;

      v73 = 0;
      if (v71)
      {
        goto LABEL_19;
      }

      break;
    case 7u:
      *&v145 = 679043443;
      *(&v145 + 1) = 0xE400000000000000;
      v91 = sub_22BE2384C();
      goto LABEL_60;
    case 8u:
      v47 = &v33[*(sub_22BE5CE4C(&qword_27D90A8F8, &unk_22C2D1E90) + 48)];
      v48 = *v47;
      v49 = v47[8];
      v50 = sub_22BE33560();
      v51(v50);
      *&v145 = 0;
      *(&v145 + 1) = 0xE000000000000000;
      MEMORY[0x2318AB8D0](0x286B636970, 0xE500000000000000);
      sub_22BE1A5F0();
      sub_22BF043A8(v52, v53, MEMORY[0x277CC9628]);
      v54 = sub_22C273FD4();
      MEMORY[0x2318AB8D0](v54);

      MEMORY[0x2318AB8D0](8236, 0xE200000000000000);
      v143 = v48;
      LOBYTE(v144) = v49;
      sub_22C273C24();
      sub_22BE1A8D0();
      v55 = sub_22BE33560();
      v56(v55);
      goto LABEL_71;
    case 9u:
      v124 = sub_22BE24FEC();
      v125(v124);
      v45 = 0x286D7269666E6F63;
      v46 = 0xE800000000000000;
      goto LABEL_57;
    case 0xAu:
      v39 = v33[17];
      *&v145 = 0;
      *(&v145 + 1) = 0xE000000000000000;
      sub_22C273AA4();
      MEMORY[0x2318AB8D0](0x28686372616573, 0xE700000000000000);
      String.escapedForPython.getter();

      sub_22BF0AFC4(34);
      v40 = sub_22BE260B8();
      MEMORY[0x2318AB8D0](v40);

      MEMORY[0x2318AB8D0](34, 0xE100000000000000);

      MEMORY[0x2318AB8D0](v143, v144);

      MEMORY[0x2318AB8D0](0x6E4F6B636970202CLL, 0xEA00000000003D65);
      LOBYTE(v143) = v39;
      sub_22BE5CE4C(&qword_27D9072A8, &qword_22C275110);
      sub_22C273C24();
      goto LABEL_63;
    case 0xBu:
      v43 = sub_22BE24FEC();
      v44(v43);
      v45 = 0x656E6F5F6B636970;
      v46 = 0xE900000000000028;
      goto LABEL_57;
    case 0xCu:
      v89 = *v33;
      strcpy(&v145, "resolve_tool(");
      HIWORD(v145) = -4864;
      v90 = MEMORY[0x277D837D0];
      v91 = v89;
LABEL_60:
      MEMORY[0x2318ABBB0](v91, v90);
      sub_22BE25C14();
      sub_22BE3E400();

      goto LABEL_63;
    case 0xDu:
      v37 = v134;
      sub_22BE27B84();
      sub_22BEBFD18();
      *&v145 = 0x286F646E75;
      *(&v145 + 1) = 0xE500000000000000;
      sub_22BE27B84();
      sub_22BE22868();
      v38 = v137;
      if (sub_22BE1AEA8(v5, 1, v137) == 1)
      {
        sub_22BE33928(v5, &qword_27D9082F0, &qword_22C27AB00);
      }

      else
      {
        sub_22C26E184();
        v130 = sub_22BE28D70();
        v131(v130, v38);
      }

      v132 = sub_22BE1B5EC();
      MEMORY[0x2318AB8D0](v132);

      sub_22BE1A8D0();
      sub_22BE33928(v37, &qword_27D9082F0, &qword_22C27AB00);
      goto LABEL_71;
    case 0xEu:
      v60 = sub_22BE24FEC();
      v61(v60);
      v45 = 0x287463656A6572;
      v46 = 0xE700000000000000;
LABEL_57:
      *&v145 = v45;
      *(&v145 + 1) = v46;
      sub_22BE1A5F0();
      sub_22BF043A8(v126, v127, MEMORY[0x277CC9628]);
      v36 = sub_22C273FD4();
      goto LABEL_58;
    case 0xFu:
      v34 = sub_22BE24FEC();
      v35(v34);
      *&v145 = 0x286C65636E6163;
      *(&v145 + 1) = 0xE700000000000000;
      v36 = sub_22C26E184();
LABEL_58:
      MEMORY[0x2318AB8D0](v36);

      sub_22BE1A8D0();
      (*(v0 + 8))(v18, v27);
      goto LABEL_71;
    case 0x10u:
    case 0x11u:
    case 0x13u:
      sub_22BE3AC74();
      goto LABEL_71;
    case 0x12u:
      goto LABEL_71;
    default:
      sub_22BE1897C();
      sub_22BE200D4();
      sub_22BF042FC();
      AST.FlatValue.description.getter();
LABEL_70:
      sub_22BF042A8();
      goto LABEL_71;
  }

LABEL_20:
  v75 = v140;
  while (1)
  {
    v74 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
      return;
    }

    if (v74 >= v72)
    {
      break;
    }

    v71 = *(v68 + 8 * v74);
    ++v73;
    if (v71)
    {
      v73 = v74;
      goto LABEL_25;
    }
  }

  v86 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
  sub_22BE19DC4(v75, 1, 1, v86);
  v71 = 0;
  while (1)
  {
    sub_22BEBFD18();
    v83 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
    if (sub_22BE1AEA8(v17, 1, v83) == 1)
    {
      break;
    }

    v84 = *v17;
    v85 = v17[1];
    sub_22BE1897C();
    sub_22BF042FC();
    v143 = v84;
    v144 = v85;
    MEMORY[0x2318AB8D0](61, 0xE100000000000000);
    AST.FlatValue.description.getter();
    MEMORY[0x2318AB8D0]();

    MEMORY[0x2318AB8D0](8236, 0xE200000000000000);
    MEMORY[0x2318AB8D0](v143, v144);

    sub_22BE18D14();
    sub_22BF042A8();
    if (!v71)
    {
      goto LABEL_20;
    }

LABEL_19:
    v74 = v73;
LABEL_25:
    v76 = __clz(__rbit64(v71));
    v71 &= v71 - 1;
    v77 = (*(v139 + 48) + 16 * (v76 | (v74 << 6)));
    v79 = *v77;
    v78 = v77[1];
    sub_22BE17BEC();
    sub_22BF043F0();
    v80 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
    v81 = v140;
    *v140 = v79;
    v81[1] = v78;
    v82 = v81;
    sub_22BE1897C();
    sub_22BF042FC();
    sub_22BE19DC4(v82, 0, 1, v80);
  }

  v128 = v139;

  v129 = *(v128 + 16);

  if (v129)
  {
    sub_22BEB790C(2);
  }

LABEL_63:
  sub_22BE1A8D0();
LABEL_71:
  sub_22BE1AABC();
}

uint64_t sub_22BEFEE00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7869666E69 && a2 == 0xE500000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7630692 && a2 == 0xE300000000000000;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x800000022C2D3730 == a2;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1819042147 && a2 == 0xE400000000000000;
              if (v11 || (sub_22C274014() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 7954803 && a2 == 0xE300000000000000;
                if (v12 || (sub_22C274014() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 1801677168 && a2 == 0xE400000000000000;
                  if (v13 || (sub_22C274014() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6D7269666E6F63 && a2 == 0xE700000000000000;
                    if (v14 || (sub_22C274014() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x686372616573 && a2 == 0xE600000000000000;
                      if (v15 || (sub_22C274014() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x656E4F6B636970 && a2 == 0xE700000000000000;
                        if (v16 || (sub_22C274014() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x5465766C6F736572 && a2 == 0xEB000000006C6F6FLL;
                          if (v17 || (sub_22C274014() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x69686374614D6F6ELL && a2 == 0xEE006C6F6F54676ELL;
                            if (v18 || (sub_22C274014() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 1868852853 && a2 == 0xE400000000000000;
                              if (v19 || (sub_22C274014() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x7463656A6572 && a2 == 0xE600000000000000;
                                if (v20 || (sub_22C274014() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6C65636E6163 && a2 == 0xE600000000000000;
                                  if (v21 || (sub_22C274014() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000010 && 0x800000022C2D37F0 == a2;
                                    if (v22 || (sub_22C274014() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x616C50664F646E65 && a2 == 0xE90000000000006ELL;
                                      if (v23 || (sub_22C274014() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else if (a1 == 0xD000000000000010 && 0x800000022C2D3750 == a2)
                                      {

                                        return 19;
                                      }

                                      else
                                      {
                                        v25 = sub_22C274014();

                                        if (v25)
                                        {
                                          return 19;
                                        }

                                        else
                                        {
                                          return 20;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22BEFF3E8(char a1)
{
  result = 0x65756C6176;
  switch(a1)
  {
    case 1:
      result = 0x786966657270;
      break;
    case 2:
      v3 = 1768320617;
      goto LABEL_10;
    case 3:
      result = 7630692;
      break;
    case 4:
      v3 = 1701080681;
LABEL_10:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7800000000;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 1819042147;
      break;
    case 7:
      result = 7954803;
      break;
    case 8:
      result = 1801677168;
      break;
    case 9:
      result = 0x6D7269666E6F63;
      break;
    case 10:
      result = 0x686372616573;
      break;
    case 11:
      result = 0x656E4F6B636970;
      break;
    case 12:
      result = 0x5465766C6F736572;
      break;
    case 13:
      result = 0x69686374614D6F6ELL;
      break;
    case 14:
      result = 1868852853;
      break;
    case 15:
      result = 0x7463656A6572;
      break;
    case 16:
      result = 0x6C65636E6163;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 0x616C50664F646E65;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BEFF5B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7563372 && a2 == 0xE300000000000000;
  if (v3 || (sub_22BE2BC78(7563372, 0xE300000000000000, a1) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    sub_22BE2BC78(0x7865646E69, 0xE500000000000000, a1);
    sub_22BE417C8();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BEFF65C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746E657665 && a2 == 0xE700000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BEFF724(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0x6449746E657665;
  }
}

uint64_t sub_22BEFF754(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BEFF814(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736449746E657665 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BEFF8A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x800000022C2D3850 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656E4F6B636970 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22BEFF9B8(char a1)
{
  if (!a1)
  {
    return 0x7972657571;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0x656E4F6B636970;
}

uint64_t sub_22BEFFA10(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6449746E657665 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_22BE2BC78(0x6449746E657665, 0xE700000000000000, a1);
    sub_22BE417C8();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BEFFA78(uint64_t a1)
{
  v2 = sub_22BF0764C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFFAB4(uint64_t a1)
{
  v2 = sub_22BF0764C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFFAF4(uint64_t a1)
{
  v2 = sub_22BF071FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFFB30(uint64_t a1)
{
  v2 = sub_22BF071FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFFB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEFEE00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BEFFB9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BEFF3E0();
  *a1 = result;
  return result;
}

uint64_t sub_22BEFFBC4(uint64_t a1)
{
  v2 = sub_22BF070AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFFC00(uint64_t a1)
{
  v2 = sub_22BF070AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFFC3C(uint64_t a1)
{
  v2 = sub_22BF07448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFFC78(uint64_t a1)
{
  v2 = sub_22BF07448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFFCB4(uint64_t a1)
{
  v2 = sub_22BF07100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFFCF0(uint64_t a1)
{
  v2 = sub_22BF07100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFFD2C(uint64_t a1)
{
  v2 = sub_22BF077FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFFD68(uint64_t a1)
{
  v2 = sub_22BF077FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFFDA4(uint64_t a1)
{
  v2 = sub_22BF07154();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFFDE0(uint64_t a1)
{
  v2 = sub_22BF07154();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFFE1C(uint64_t a1)
{
  v2 = sub_22BF071A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFFE58(uint64_t a1)
{
  v2 = sub_22BF071A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFFE94(uint64_t a1)
{
  v2 = sub_22BF077A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFFED0(uint64_t a1)
{
  v2 = sub_22BF077A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFFF0C(uint64_t a1)
{
  v2 = sub_22BF07850();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFFF48(uint64_t a1)
{
  v2 = sub_22BF07850();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BEFFF84(uint64_t a1)
{
  v2 = sub_22BF072F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BEFFFC0(uint64_t a1)
{
  v2 = sub_22BF072F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF00004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEFF65C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF0002C(uint64_t a1)
{
  v2 = sub_22BF0749C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF00068(uint64_t a1)
{
  v2 = sub_22BF0749C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF000A4(uint64_t a1)
{
  v2 = sub_22BF073A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF000E0(uint64_t a1)
{
  v2 = sub_22BF073A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF0011C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEFF754(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF00144(uint64_t a1)
{
  v2 = sub_22BF078A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF00180(uint64_t a1)
{
  v2 = sub_22BF078A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF001BC(uint64_t a1)
{
  v2 = sub_22BF07250();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF001F8(uint64_t a1)
{
  v2 = sub_22BF07250();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF00234(uint64_t a1)
{
  v2 = sub_22BF0734C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF00270(uint64_t a1)
{
  v2 = sub_22BF0734C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF002B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEFF814(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BF002DC(uint64_t a1)
{
  v2 = sub_22BF07544();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF00318(uint64_t a1)
{
  v2 = sub_22BF07544();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF0035C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BEFF8A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF00384(uint64_t a1)
{
  v2 = sub_22BF073F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF003C0(uint64_t a1)
{
  v2 = sub_22BF073F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF003FC(uint64_t a1)
{
  v2 = sub_22BF072A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF00438(uint64_t a1)
{
  v2 = sub_22BF072A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF00474(uint64_t a1)
{
  v2 = sub_22BF076A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF004B0(uint64_t a1)
{
  v2 = sub_22BF076A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF004EC(uint64_t a1)
{
  v2 = sub_22BF078F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF00528(uint64_t a1)
{
  v2 = sub_22BF078F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void AST.FlatExpr.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v23;
  a20 = v24;
  v257 = v21;
  v258 = v20;
  v26 = v25;
  sub_22BE5CE4C(&qword_27D90AA98, &qword_22C288C20);
  sub_22BE179D8();
  v248[1] = v28;
  v248[2] = v27;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1A174();
  v248[0] = v30;
  sub_22BE5CE4C(&qword_27D90AAA0, &qword_22C288C28);
  sub_22BE179D8();
  v246 = v32;
  v247 = v31;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE1A174();
  sub_22BF0AFA0(v34);
  v35 = sub_22BE5CE4C(&qword_27D90AAA8, &qword_22C288C30);
  sub_22BE18910(v35, &a17);
  v243[1] = v36;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE1A174();
  sub_22BE190A8(v38);
  v245 = sub_22BE5CE4C(&qword_27D90AAB0, &qword_22C288C38);
  sub_22BE179D8();
  v244[2] = v39;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v40);
  sub_22BE1A174();
  sub_22BE190A8(v41);
  v42 = sub_22BE5CE4C(&qword_27D90AAB8, &qword_22C288C40);
  sub_22BE18910(v42, &a14);
  v242[2] = v43;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v44);
  sub_22BE1A174();
  sub_22BE190A8(v45);
  v46 = sub_22BE5CE4C(&qword_27D90AAC0, &qword_22C288C48);
  sub_22BE18910(v46, &a10);
  v241[1] = v47;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v48);
  sub_22BE1A174();
  sub_22BE190A8(v49);
  v50 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v50);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v51);
  sub_22BE1A174();
  sub_22BE190A8(v52);
  v53 = sub_22BE5CE4C(&qword_27D90AAC8, &qword_22C288C50);
  sub_22BE18910(v53, &v258);
  v238[2] = v54;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v55);
  sub_22BE1A174();
  sub_22BE190A8(v56);
  v57 = sub_22BE5CE4C(&qword_27D90AAD0, &qword_22C288C58);
  sub_22BE18910(v57, &v261);
  v239[1] = v58;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v59);
  sub_22BE1A174();
  sub_22BE190A8(v60);
  v61 = sub_22BE5CE4C(&qword_27D90AAD8, &qword_22C288C60);
  sub_22BE18910(v61, &v254);
  v237[3] = v62;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v63);
  sub_22BE1A174();
  sub_22BE190A8(v64);
  v65 = sub_22BE5CE4C(&qword_27D90AAE0, &qword_22C288C68);
  sub_22BE18910(v65, &v259);
  v238[4] = v66;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v67);
  sub_22BE1A174();
  sub_22BE190A8(v68);
  v69 = sub_22BE5CE4C(&qword_27D90AAE8, &qword_22C288C70);
  sub_22BE18910(v69, v248);
  v236[31] = v70;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v71);
  sub_22BE1A174();
  sub_22BE190A8(v72);
  v73 = sub_22BE5CE4C(&qword_27D90AAF0, &qword_22C288C78);
  sub_22BE18910(v73, &v249);
  v237[0] = v74;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v75);
  sub_22BE1A174();
  sub_22BE190A8(v76);
  sub_22C26E1D4();
  sub_22BE179D8();
  v254 = v78;
  v255 = v77;
  MEMORY[0x28223BE20](v77);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v79);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v80);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v81);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v82);
  sub_22BE19E94();
  v250 = v83;
  v84 = sub_22BE5CE4C(&qword_27D90AAF8, &qword_22C288C80);
  sub_22BE18910(v84, v243);
  v236[22] = v85;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v86);
  sub_22BE1A174();
  sub_22BE190A8(v87);
  v88 = sub_22BE5CE4C(&qword_27D90AB00, &qword_22C288C88);
  sub_22BE18910(v88, v244);
  v236[24] = v89;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v90);
  sub_22BE1A174();
  sub_22BE190A8(v91);
  v92 = sub_22BE5CE4C(&qword_27D90AB08, &qword_22C288C90);
  sub_22BE18910(v92, v239);
  v236[11] = v93;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v94);
  sub_22BE1A174();
  sub_22BE190A8(v95);
  v96 = sub_22BE5CE4C(&qword_27D90AB10, &qword_22C288C98);
  sub_22BE18910(v96, v242);
  v236[18] = v97;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v98);
  sub_22BE1A174();
  sub_22BE190A8(v99);
  v100 = sub_22BE5CE4C(&qword_27D90AB18, &qword_22C288CA0);
  sub_22BE18910(v100, v241);
  v236[14] = v101;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v102);
  sub_22BE1A174();
  sub_22BE190A8(v103);
  v104 = sub_22BE5CE4C(&qword_27D90AB20, &qword_22C288CA8);
  sub_22BE18910(v104, v240);
  v236[12] = v105;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v106);
  sub_22BE1A174();
  sub_22BE190A8(v107);
  v108 = sub_22BE5CE4C(&qword_27D90AB28, &qword_22C288CB0);
  sub_22BE18910(v108, v238);
  v236[6] = v109;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v110);
  sub_22BE1A174();
  sub_22BE190A8(v111);
  v112 = sub_22BE5CE4C(&qword_27D90AB30, &qword_22C288CB8);
  sub_22BE18910(v112, v237);
  v236[1] = v113;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v114);
  sub_22BE2BB64();
  v253 = type metadata accessor for AST.FlatValue(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v115);
  sub_22BE17B98();
  v251 = v116;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v117);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v118);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v119);
  sub_22BE19490();
  v249 = v120;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v121);
  sub_22BE19490();
  v252 = v122;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v123);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v124);
  v125 = type metadata accessor for AST.FlatExpr(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v126);
  sub_22BE179EC();
  v129 = v128 - v127;
  v260 = sub_22BE5CE4C(&qword_27D90AB38, &qword_22C288CC0);
  sub_22BE179D8();
  v256 = v130;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v131);
  v133 = v236 - v132;
  v134 = *(v26 + 32);
  v135 = sub_22BE27A44();
  sub_22BE26950(v135, v136);
  sub_22BF070AC();
  v259 = v133;
  sub_22C274234();
  sub_22BE1BEA0();
  sub_22BF043F0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v183 = *v129;
      sub_22BE5CE4C(&qword_27D90A918, &qword_22C2D1EB0);
      sub_22BE1897C();
      sub_22BF042FC();
      LOBYTE(v261) = 1;
      sub_22BF078A4();
      sub_22BE29E4C();
      sub_22BE41EC0(v184, v185);
      LOBYTE(v261) = v183;
      HIBYTE(a10) = 0;
      sub_22BEAB80C();
      v186 = v236[7];
      sub_22BE29460();
      sub_22C273FA4();
      if (!v21)
      {
        LOBYTE(v261) = 1;
        sub_22BE18538();
        sub_22BF043A8(v187, v188, &protocol conformance descriptor for AST.FlatValue);
        sub_22BE36514();
        sub_22C273FA4();
      }

      v189 = sub_22BE1AB4C();
      v190(v189, v186);
      sub_22BE18D14();
      sub_22BF042A8();
      goto LABEL_44;
    case 2u:
      v167 = *v129;
      sub_22BE5CE4C(&qword_27D90A910, &unk_22C288B20);
      sub_22BF0AE88();
      sub_22BF042FC();
      sub_22BF042FC();
      LOBYTE(v261) = 2;
      sub_22BF07850();
      sub_22BE29E4C();
      v168 = v259;
      v134 = v260;
      sub_22C273EE4();
      LOBYTE(v261) = v167;
      HIBYTE(a10) = 0;
      sub_22BEAB764();
      sub_22BE3F43C();
      sub_22BE29460();
      sub_22C273FA4();
      if (v21)
      {
        v169 = sub_22BE1AB4C();
        v170(v169, v133);
        sub_22BE230C4();
        sub_22BF042A8();
        sub_22BF042A8();
        sub_22BE30F14();
        v158 = v168;
        goto LABEL_45;
      }

      sub_22BF0AFAC();
      sub_22BE18538();
      sub_22BF043A8(v228, v229, &protocol conformance descriptor for AST.FlatValue);
      sub_22BE36514();
      sub_22C273FA4();
      LOBYTE(v261) = 2;
      sub_22BE36514();
      sub_22C273FA4();
      v234 = sub_22BE1AB4C();
      v235(v234, v133);
      sub_22BF042A8();
      sub_22BE1B074();
      sub_22BF042A8();
      sub_22BE30F14();
      v158 = v168;
      goto LABEL_51;
    case 3u:
      sub_22BE5CE4C(&qword_27D90A908, &unk_22C2D1EA0);
      sub_22BE1897C();
      sub_22BF042FC();
      LOBYTE(v261) = 3;
      sub_22BF077FC();
      sub_22BE29E4C();
      v177 = v259;
      v129 = v260;
      sub_22BE3788C();
      sub_22C273EE4();
      LOBYTE(v261) = 0;
      sub_22BE18538();
      sub_22BF043A8(v178, v179, &protocol conformance descriptor for AST.FlatValue);
      sub_22BE3F43C();
      sub_22BE29460();
      sub_22C273FA4();
      if (!v21)
      {
        sub_22BF0AFAC();
        sub_22BE1B328();
        sub_22BE36514();
        sub_22C273F54();
      }

      v180 = sub_22BE1AB4C();
      v181(v180, v133);
      sub_22BE18D14();
      sub_22BF042A8();
      goto LABEL_47;
    case 4u:
      sub_22BE5CE4C(&qword_27D90A900, &unk_22C288B10);
      sub_22BF0AE88();
      sub_22BF042FC();
      sub_22BF042FC();
      LOBYTE(v261) = 4;
      sub_22BF077A8();
      sub_22BE29E4C();
      v153 = v260;
      sub_22BE1B934();
      sub_22C273EE4();
      LOBYTE(v261) = 0;
      sub_22BE18538();
      sub_22BF043A8(v154, v155, &protocol conformance descriptor for AST.FlatValue);
      sub_22BE3F43C();
      sub_22BE29460();
      sub_22C273FA4();
      if (v21)
      {
        v156 = sub_22BE1AB4C();
        v157(v156, v133);
        sub_22BE230C4();
        sub_22BF042A8();
        sub_22BE1B074();
        sub_22BF042A8();
        v158 = sub_22BE2399C();
        v160 = v153;
      }

      else
      {
        sub_22BF0AFAC();
        sub_22BE36514();
        sub_22C273FA4();
        v226 = sub_22BE1AB4C();
        v227(v226, v133);
        sub_22BE230C4();
        sub_22BF042A8();
        sub_22BE1B074();
        sub_22BF042A8();
        sub_22BE30F14();
        v158 = v259;
LABEL_51:
        v160 = v260;
      }

      goto LABEL_49;
    case 5u:
      v192 = *v129;
      LOBYTE(v261) = 5;
      sub_22BF076A0();
      v162 = v236[8];
      sub_22BE261D0();
      sub_22C273EE4();
      v261 = v192;
      sub_22BE5CE4C(&qword_27D90ABD8, &qword_22C288CD0);
      sub_22BF076F4();
      sub_22BE22960();
      sub_22BE18070();
      goto LABEL_25;
    case 6u:
      v203 = *(v129 + 16);
      LOBYTE(v261) = 6;
      sub_22BF0764C();
      sub_22BE29E4C();
      sub_22BE41EC0(v204, v205);
      LOBYTE(v261) = 0;
      sub_22BE1B328();
      v206 = v236[25];
      sub_22BE3BEE8();
      sub_22C273F54();
      if (v21)
      {

        v207 = sub_22BE1AB4C();
        v209 = v206;
LABEL_43:
        v208(v207, v209);
LABEL_44:
        sub_22BE30F14();
        v158 = v133;
LABEL_45:
        v160 = v134;
LABEL_49:
        v159(v158, v160);
      }

      else
      {

        v261 = v203;
        HIBYTE(a10) = 1;
        sub_22BE5CE4C(&qword_27D90A9D0, &qword_22C288BA0);
        sub_22BF06B7C();
        sub_22BE22960();
        sub_22BE36514();
        sub_22C273FA4();
        v230 = sub_22BE1AB4C();
        v231(v230, v206);
        sub_22BE30F14();
        v194 = v133;
LABEL_26:
        v195(v194);
      }

LABEL_50:
      sub_22BE18478();
      return;
    case 7u:
      v182 = *v129;
      LOBYTE(v261) = 7;
      sub_22BF07544();
      v162 = v236[20];
      sub_22BE261D0();
      sub_22C273EE4();
      v261 = v182;
      sub_22BE5CE4C(&qword_27D90ABB8, &qword_22C288CC8);
      sub_22BF07598();
      sub_22BE22960();
      sub_22BE18070();
      goto LABEL_25;
    case 8u:
      v212 = v129 + *(sub_22BE5CE4C(&qword_27D90A8F8, &unk_22C2D1E90) + 48);
      v258 = *v212;
      LODWORD(v253) = *(v212 + 8);
      v214 = v254;
      v213 = v255;
      v215 = v250;
      v216 = sub_22BE200D4();
      v217(v216);
      LOBYTE(v261) = 8;
      sub_22BF0749C();
      sub_22BE3C6E0();
      v177 = v259;
      v129 = v260;
      sub_22BE3788C();
      sub_22C273EE4();
      LOBYTE(v261) = 0;
      sub_22BE1A5F0();
      sub_22BF043A8(v218, v219, MEMORY[0x277CC95F8]);
      v220 = v237[1];
      v221 = v257;
      sub_22C273FA4();
      if (v221)
      {
        v222 = sub_22BE194B4();
        v223(v222, v220);
        (*(v214 + 8))(v215, v213);
      }

      else
      {
        v261 = v258;
        v262 = v253;
        HIBYTE(a10) = 1;
        sub_22BF074F0();
        sub_22C273FA4();
        v232 = sub_22BE194B4();
        v233(v232, v220);
        (*(v214 + 8))(v250, v213);
      }

LABEL_47:
      sub_22BE30F14();
      v158 = v177;
      goto LABEL_48;
    case 9u:
      sub_22BE27268();
      v163 = sub_22BE28F24();
      v164(v163);
      LOBYTE(v261) = 9;
      sub_22BF07448();
      sub_22BE201A8(&_s8FlatExprO17ConfirmCodingKeysON, &v261);
      sub_22BE1A5F0();
      sub_22BF043A8(v165, v166, MEMORY[0x277CC95F8]);
      sub_22BE3356C();
      sub_22BE3F43C();
      sub_22BE3BEE8();
      sub_22C273FA4();
      goto LABEL_13;
    case 0xAu:
      LOBYTE(v261) = 10;
      sub_22BF073F4();
      sub_22BE41EC0(&_s8FlatExprO16SearchCodingKeysON, &v261);
      LOBYTE(v261) = 0;
      sub_22BE1AB1C();
      v210 = v239[0];
      v211 = v257;
      sub_22C273F54();

      if (!v211)
      {
        sub_22BF0AFAC();
        sub_22C273F64();
        LOBYTE(v261) = 2;
        sub_22C273F04();
      }

      v207 = sub_22BE19698();
      v209 = v210;
      goto LABEL_43;
    case 0xBu:
      sub_22BE27268();
      v149 = sub_22BE28F24();
      v150(v149);
      LOBYTE(v261) = 11;
      sub_22BF073A0();
      sub_22BE201A8(&_s8FlatExprO17PickOneCodingKeysON, &v261);
      sub_22BE1A5F0();
      sub_22BF043A8(v151, v152, MEMORY[0x277CC95F8]);
      sub_22BE3356C();
      sub_22BE3F43C();
      sub_22BE3BEE8();
      sub_22C273FA4();
      goto LABEL_13;
    case 0xCu:
      v161 = *v129;
      LOBYTE(v261) = 12;
      sub_22BF0734C();
      v162 = v238[3];
      sub_22BE261D0();
      sub_22C273EE4();
      v261 = v161;
      sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
      sub_22BE48EF8(&qword_28106DBE8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
      sub_22BE22960();
      sub_22BE18070();
LABEL_25:
      sub_22BE1B5D4();
      v193(v162, v134);
      sub_22BE30F14();
      v194 = sub_22BE1B328();
      goto LABEL_26;
    case 0xDu:
      v196 = v240[1];
      sub_22BEBFD18();
      LOBYTE(v261) = 14;
      sub_22BF072A4();
      sub_22BE204A4();
      sub_22BE4129C(v197, v198);
      sub_22BE1A5F0();
      sub_22BF043A8(v199, v200, MEMORY[0x277CC95F8]);
      sub_22C273F34();
      sub_22BE1B5D4();
      v201 = sub_22BE33560();
      v202(v201);
      sub_22BE33928(v196, &qword_27D9082F0, &qword_22C27AB00);
      goto LABEL_14;
    case 0xEu:
      sub_22BE27268();
      v145 = sub_22BE28F24();
      v146(v145);
      LOBYTE(v261) = 15;
      sub_22BF07250();
      sub_22BE201A8(&_s8FlatExprO16RejectCodingKeysON, &v261);
      sub_22BE1A5F0();
      sub_22BF043A8(v147, v148, MEMORY[0x277CC95F8]);
      sub_22BE3356C();
      sub_22BE3F43C();
      sub_22BE3BEE8();
      sub_22C273FA4();
      goto LABEL_13;
    case 0xFu:
      sub_22BE27268();
      v171 = sub_22BE28F24();
      v172(v171);
      LOBYTE(v261) = 16;
      sub_22BF071FC();
      sub_22BE201A8(&_s8FlatExprO16CancelCodingKeysON, &v261);
      sub_22BE1A5F0();
      sub_22BF043A8(v173, v174, MEMORY[0x277CC95F8]);
      sub_22BE3356C();
      v133 = v245;
      sub_22BE3BEE8();
      sub_22C273FA4();
LABEL_13:
      v175 = sub_22BE1AB4C();
      v176(v175, v133);
      (*(v134 + 8))(v22, v125);
      goto LABEL_14;
    case 0x10u:
      LOBYTE(v261) = 13;
      sub_22BF072F8();
      sub_22BE3C6E0();
      sub_22BE3788C();
      sub_22C273EE4();
      v142 = sub_22BE194B4();
      v144 = &v258;
      goto LABEL_23;
    case 0x11u:
      LOBYTE(v261) = 17;
      sub_22BF071A8();
      sub_22BE3C6E0();
      sub_22BE3788C();
      sub_22C273EE4();
      v142 = sub_22BE194B4();
      v144 = &a17;
LABEL_23:
      v191 = *(v144 - 32);
      goto LABEL_37;
    case 0x12u:
      LOBYTE(v261) = 18;
      sub_22BF07154();
      sub_22BE3788C();
      sub_22C273EE4();
      goto LABEL_36;
    case 0x13u:
      LOBYTE(v261) = 19;
      sub_22BF07100();
      sub_22BE3788C();
      sub_22C273EE4();
LABEL_36:
      v142 = sub_22BE2399C();
LABEL_37:
      v143(v142, v191);
      sub_22BE30F14();
      v224 = sub_22BE18944();
      v225(v224);
      goto LABEL_50;
    default:
      sub_22BF042FC();
      LOBYTE(v261) = 0;
      sub_22BF078F8();
      sub_22BE4129C(&_s8FlatExprO15ValueCodingKeysON, &v261);
      sub_22BE18538();
      sub_22BF043A8(v137, v138, &protocol conformance descriptor for AST.FlatValue);
      v139 = v236[2];
      sub_22C273FA4();
      v140 = sub_22BE19698();
      v141(v140, v139);
      sub_22BE18D14();
      sub_22BF042A8();
LABEL_14:
      v158 = sub_22BE2399C();
LABEL_48:
      v160 = v129;
      goto LABEL_49;
  }
}

void AST.FlatExpr.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v26;
  a20 = v27;
  v358 = v20;
  v29 = v28;
  v351[1] = v30;
  v355 = sub_22BE5CE4C(&qword_27D90AC18, &qword_22C288CD8);
  sub_22BE179D8();
  v352[1] = v31;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE1A174();
  v352[0] = v33;
  v34 = sub_22BE5CE4C(&qword_27D90AC20, &qword_22C288CE0);
  sub_22BE18910(v34, v360);
  v339[0] = v35;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE1A174();
  v351[0] = v37;
  v38 = sub_22BE5CE4C(&qword_27D90AC28, &qword_22C288CE8);
  sub_22BE18910(v38, &v356);
  v336 = v39;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v40);
  sub_22BE1A174();
  v349 = v41;
  v42 = sub_22BE5CE4C(&qword_27D90AC30, &qword_22C288CF0);
  sub_22BE18910(v42, &v358);
  v338 = v43;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v44);
  sub_22BE1A174();
  v350 = v45;
  v46 = sub_22BE5CE4C(&qword_27D90AC38, &qword_22C288CF8);
  sub_22BE18910(v46, &v354);
  v335 = v47;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v48);
  sub_22BE1A174();
  v348 = v49;
  v50 = sub_22BE5CE4C(&qword_27D90AC40, &qword_22C288D00);
  sub_22BE18910(v50, v353);
  v334 = v51;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v52);
  sub_22BE1A174();
  v347[1] = v53;
  v54 = sub_22BE5CE4C(&qword_27D90AC48, &qword_22C288D08);
  sub_22BE18910(v54, &v350);
  v330 = v55;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v56);
  sub_22BE1A174();
  v346[0] = v57;
  v58 = sub_22BE5CE4C(&qword_27D90AC50, &qword_22C288D10);
  sub_22BE18910(v58, v352);
  v333 = v59;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v60);
  sub_22BE1A174();
  v347[0] = v61;
  v62 = sub_22BE5CE4C(&qword_27D90AC58, &qword_22C288D18);
  sub_22BE18910(v62, &v348);
  v329 = v63;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v64);
  sub_22BE1A174();
  sub_22BF0AFA0(v65);
  v66 = sub_22BE5CE4C(&qword_27D90AC60, &qword_22C288D20);
  sub_22BE18910(v66, v351);
  v313 = v67;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v68);
  sub_22BE1A174();
  v346[1] = v69;
  v70 = sub_22BE5CE4C(&qword_27D90AC68, &qword_22C288D28);
  sub_22BE18910(v70, v346);
  v326 = v71;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v72);
  sub_22BE1A174();
  sub_22BE190A8(v73);
  v74 = sub_22BE5CE4C(&qword_27D90AC70, &qword_22C288D30);
  sub_22BE18910(v74, v347);
  v327 = v75;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v76);
  sub_22BE1A174();
  sub_22BE190A8(v77);
  v78 = sub_22BE5CE4C(&qword_27D90AC78, &qword_22C288D38);
  sub_22BE18910(v78, &v344);
  v322 = v79;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v80);
  sub_22BE1A174();
  sub_22BE190A8(v81);
  v82 = sub_22BE5CE4C(&qword_27D90AC80, &qword_22C288D40);
  sub_22BE18910(v82, &v345);
  v324 = v83;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v84);
  sub_22BE1A174();
  sub_22BE190A8(v85);
  v86 = sub_22BE5CE4C(&qword_27D90AC88, &qword_22C288D48);
  sub_22BE18910(v86, &v341);
  v317 = v87;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v88);
  sub_22BE1A174();
  sub_22BE190A8(v89);
  v90 = sub_22BE5CE4C(&qword_27D90AC90, &qword_22C288D50);
  sub_22BE18910(v90, &v343);
  v320 = v91;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v92);
  sub_22BE1A174();
  sub_22BE190A8(v93);
  v94 = sub_22BE5CE4C(&qword_27D90AC98, &qword_22C288D58);
  sub_22BE18910(v94, &v342);
  v318 = v95;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v96);
  sub_22BE1A174();
  sub_22BE190A8(v97);
  v354 = sub_22BE5CE4C(&qword_27D90ACA0, &qword_22C288D60);
  sub_22BE179D8();
  v312 = v98;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v99);
  sub_22BE1A174();
  sub_22BE190A8(v100);
  v101 = sub_22BE5CE4C(&qword_27D90ACA8, &qword_22C288D68);
  sub_22BE18910(v101, v340);
  v315 = v102;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v103);
  sub_22BE1A174();
  sub_22BE190A8(v104);
  v105 = sub_22BE5CE4C(&qword_27D90ACB0, &qword_22C288D70);
  sub_22BE18910(v105, v339);
  v314 = v106;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v107);
  sub_22BE1A174();
  sub_22BE190A8(v108);
  v356 = sub_22BE5CE4C(&qword_27D90ACB8, &qword_22C288D78);
  sub_22BE179D8();
  v353[1] = v109;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v110);
  sub_22BE1A174();
  v359 = v111;
  v112 = sub_22BE183BC();
  v353[0] = type metadata accessor for AST.FlatExpr(v112);
  sub_22BE18000();
  MEMORY[0x28223BE20](v113);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v114);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v115);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v116);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v117);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v118);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v119);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v120);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v121);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v122);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v123);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v124);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v125);
  sub_22BE18094();
  MEMORY[0x28223BE20](v126);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v127);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v128);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v129);
  v131 = &v302 - v130;
  v132 = v29[3];
  v357 = v29;
  sub_22BE26950(v29, v132);
  sub_22BF070AC();
  v133 = v358;
  sub_22C274214();
  if (!v133)
  {
    v305 = v24;
    v307 = v21;
    v308 = v25;
    v309 = v23;
    v306 = v22;
    v134 = v354;
    v135 = v355;
    v358 = v131;
    v136 = v359;
    sub_22C273ED4();
    sub_22BE7C5C4();
    if (v138 != v139 >> 1)
    {
      v304 = 0;
      if (v138 >= (v139 >> 1))
      {
        __break(1u);
LABEL_34:
        swift_unknownObjectRelease();
        v293 = sub_22BE360C8();
        v294(v293, v136);
        v295 = sub_22BE28C70();
        v296(v295);
LABEL_30:
        swift_storeEnumTagMultiPayload();
        sub_22BE191F0();
LABEL_31:
        sub_22BF042FC();
LABEL_32:
        v292 = v357;
        sub_22BE191F0();
        sub_22BF042FC();
        v161 = v292;
        goto LABEL_9;
      }

      v303 = *(v137 + v138);
      v140 = sub_22BE7C5C0();
      v142 = v141;
      v144 = v143;
      swift_unknownObjectRelease();
      if (v142 == v144 >> 1)
      {
        switch(v303)
        {
          case 1:
            sub_22BF0AF1C();
            sub_22BF078A4();
            v187 = v340[2];
            sub_22BE1AB8C(&_s8FlatExprO16PrefixCodingKeysON, &a10);
            LOBYTE(a10) = 0;
            sub_22BEB9B4C();
            v188 = v316;
            sub_22BE285D4();
            sub_22C273EB4();
            sub_22BE232F0();
            v355 = *(sub_22BE5CE4C(&qword_27D90A918, &qword_22C2D1EB0) + 48);
            type metadata accessor for AST.FlatValue(0);
            sub_22BF0AF1C();
            sub_22BE18538();
            sub_22BF043A8(v257, v258, &protocol conformance descriptor for AST.FlatValue);
            sub_22BE285D4();
            sub_22C273EB4();
            v259 = v315;
            swift_unknownObjectRelease();
            (*(v259 + 8))(v187, v188);
            v282 = sub_22BE3C36C();
            v283(v282);
            sub_22BE2384C();
            goto LABEL_30;
          case 2:
            LOBYTE(a10) = 2;
            sub_22BF07850();
            sub_22BE1B754();
            sub_22BE22C34(v175, v176);
            v355 = v140;
            LOBYTE(a10) = 0;
            sub_22BEB9AF8();
            sub_22BE261D0();
            sub_22C273EB4();
            v136 = v134;
            sub_22BE5CE4C(&qword_27D90A910, &unk_22C288B20);
            sub_22BF0B008();
            sub_22BF0AF1C();
            sub_22BE18538();
            sub_22BF043A8(v240, v241, &protocol conformance descriptor for AST.FlatValue);
            sub_22BF0AF44();
            LOBYTE(a10) = 2;
            sub_22BF0AF44();
            goto LABEL_34;
          case 3:
            LOBYTE(a10) = 3;
            sub_22BF077FC();
            sub_22BE3C6E0();
            sub_22BE22C34(v179, v180);
            sub_22BF0B008();
            LOBYTE(a10) = 0;
            sub_22BE18538();
            sub_22BF043A8(v181, v182, &protocol conformance descriptor for AST.FlatValue);
            v183 = v319;
            sub_22BF0AF78();
            sub_22C273EB4();
            sub_22BE232F0();
            sub_22BF0AF1C();
            sub_22BF0AF78();
            v246 = sub_22C273E64();
            v247 = v134;
            v248 = v318;
            v276 = v275;
            v355 = v246;
            swift_unknownObjectRelease();
            v277 = sub_22BE5CE4C(&qword_27D90A908, &unk_22C2D1EA0);
            v278 = v248;
            v279 = (v308 + *(v277 + 48));
            (*(v278 + 8))(v247, v183);
            v280 = sub_22BE3C36C();
            v281(v280);
            *v279 = v355;
            v279[1] = v276;
            swift_storeEnumTagMultiPayload();
            sub_22BE191F0();
            goto LABEL_31;
          case 4:
            LOBYTE(a10) = 4;
            sub_22BF077A8();
            sub_22BE1B754();
            sub_22BE22C34(v168, v169);
            sub_22BF0B008();
            LOBYTE(a10) = 0;
            sub_22BE18538();
            sub_22BF043A8(v170, v171, &protocol conformance descriptor for AST.FlatValue);
            v172 = v321;
            sub_22C273EB4();
            sub_22BE232F0();
            sub_22BE5CE4C(&qword_27D90A900, &unk_22C288B10);
            LOBYTE(a10) = 1;
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v271 = sub_22BE360C8();
            v272(v271, v172);
            v273 = sub_22BE3C36C();
            v274(v273);
            sub_22BE2384C();
            goto LABEL_30;
          case 5:
            LOBYTE(a10) = 5;
            sub_22BF076A0();
            sub_22BE1B754();
            sub_22BE22C34(v193, v194);
            v195 = sub_22BE5CE4C(&qword_27D90ABD8, &qword_22C288CD0);
            sub_22BF07A54();
            sub_22BE32C6C();
            sub_22BE1B1D0(v195, v196, v197, v198, v199);
            sub_22BE36708();
            swift_unknownObjectRelease();
            sub_22BE1B5D4();
            v260 = sub_22BE1B328();
            v261(v260);
            v262 = sub_22BE258E4();
            v263(v262);
            sub_22BE35514(a10);
            goto LABEL_30;
          case 6:
            LOBYTE(a10) = 6;
            sub_22BF0764C();
            sub_22BE3C6E0();
            sub_22BE22C34(v204, v205);
            LOBYTE(a10) = 0;
            v206 = v325;
            sub_22BF0AF78();
            sub_22C273E64();
            sub_22BE232F0();
            v265 = v264;
            v355 = v266;
            sub_22BE5CE4C(&qword_27D90A9D0, &qword_22C288BA0);
            v360[7] = 1;
            sub_22BF06F1C();
            sub_22BE32C6C();
            sub_22BF0AF78();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v284 = sub_22BE194B4();
            v285(v284, v206);
            v286 = sub_22BE3C36C();
            v287(v286);
            v288 = a10;
            v289 = v311;
            *v311 = v355;
            v289[1] = v265;
            v289[2] = v288;
            sub_22BE37BB8();
            goto LABEL_30;
          case 7:
            LOBYTE(a10) = 7;
            sub_22BF07544();
            sub_22BE3C6E0();
            sub_22BE22C34(v184, v185);
            sub_22BE5CE4C(&qword_27D90ABB8, &qword_22C288CC8);
            sub_22BF079A0();
            sub_22BE32C6C();
            v186 = v323;
            sub_22BE27B84();
            sub_22BF0AF78();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v249 = sub_22BE194B4();
            v250(v249, v186);
            v251 = sub_22BE1824C();
            v252(v251);
            sub_22BE35514(a10);
            goto LABEL_30;
          case 8:
            LOBYTE(a10) = 8;
            sub_22BF0749C();
            v212 = v345;
            sub_22BE1AB8C(&_s8FlatExprO14PickCodingKeysON, &a10);
            sub_22C26E1D4();
            LOBYTE(a10) = 0;
            sub_22BE1A5F0();
            sub_22BF043A8(v213, v214, MEMORY[0x277CC9618]);
            v215 = v328;
            sub_22BE285D4();
            sub_22C273EB4();
            sub_22BE5CE4C(&qword_27D90A8F8, &unk_22C2D1E90);
            sub_22BF0AF1C();
            sub_22BF0794C();
            sub_22BE1B934();
            sub_22BE285D4();
            sub_22C273EB4();
            v270 = v327;
            swift_unknownObjectRelease();
            (*(v270 + 8))(v212, v215);
            v290 = sub_22BE1824C();
            v291(v290);
            sub_22BE2384C();
            goto LABEL_30;
          case 9:
            LOBYTE(a10) = 9;
            sub_22BF07448();
            sub_22BE1AB8C(&_s8FlatExprO17ConfirmCodingKeysON, &a10);
            sub_22C26E1D4();
            sub_22BE1A5F0();
            sub_22BF043A8(v173, v174, MEMORY[0x277CC9618]);
            sub_22BE1C1A4();
            sub_22BE26984();
            sub_22C273EB4();
            swift_unknownObjectRelease();
            v236 = sub_22BE19EC8();
            v237(v236);
            v238 = sub_22BE2B7E8();
            v239(v238);
            sub_22BF0AF6C();
            goto LABEL_30;
          case 10:
            LOBYTE(a10) = 10;
            sub_22BF073F4();
            sub_22BE22C34(&_s8FlatExprO16SearchCodingKeysON, &a10);
            LOBYTE(a10) = 0;
            v211 = v332;
            v267 = sub_22C273E64();
            v269 = v268;
            sub_22BF0AF1C();
            LODWORD(v355) = sub_22C273E74();
            LOBYTE(a10) = 2;
            LODWORD(v354) = sub_22C273E14();
            swift_unknownObjectRelease();
            v297 = sub_22BE360C8();
            v298(v297, v211);
            v299 = sub_22BF0AFB8();
            v300(v299);
            v301 = v310;
            *v310 = v267;
            v301[1] = v269;
            *(v301 + 16) = v355 & 1;
            *(v301 + 17) = v354;
            sub_22BE37BB8();
            goto LABEL_30;
          case 11:
            LOBYTE(a10) = 11;
            sub_22BF073A0();
            sub_22BE1AB8C(&_s8FlatExprO17PickOneCodingKeysON, &a10);
            sub_22C26E1D4();
            sub_22BE1A5F0();
            sub_22BF043A8(v166, v167, MEMORY[0x277CC9618]);
            sub_22BE1C1A4();
            sub_22BE26984();
            sub_22C273EB4();
            sub_22BE36708();
            swift_unknownObjectRelease();
            v228 = sub_22BE19EC8();
            v229(v228);
            v230 = sub_22BE258E4();
            v231(v230);
            sub_22BF0AF6C();
            goto LABEL_30;
          case 12:
            LOBYTE(a10) = 12;
            sub_22BF0734C();
            sub_22BE1AB8C(&_s8FlatExprO21ResolveToolCodingKeysON, &a10);
            sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
            sub_22BE48EF8(&qword_28106DBD8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
            sub_22BE32C6C();
            sub_22BE26984();
            sub_22C273EB4();
            sub_22BE36708();
            swift_unknownObjectRelease();
            v232 = sub_22BE19EC8();
            v233(v232);
            v234 = sub_22BE258E4();
            v235(v234);
            sub_22BE35514(a10);
            goto LABEL_30;
          case 13:
            LOBYTE(a10) = 13;
            sub_22BF072F8();
            v200 = v346[0];
            sub_22BE22C34(&_s8FlatExprO24NoMatchingToolCodingKeysON, &a10);
            swift_unknownObjectRelease();
            sub_22BE1B5D4();
            v201(v200, v331);
            v202 = sub_22BE2B7E8();
            v203(v202);
            sub_22BE22DC4();
            break;
          case 14:
            LOBYTE(a10) = 14;
            sub_22BF072A4();
            sub_22BE1AB8C(&_s8FlatExprO14UndoCodingKeysON, &a10);
            sub_22C26E1D4();
            sub_22BE1A5F0();
            sub_22BF043A8(v164, v165, MEMORY[0x277CC9618]);
            sub_22BE1C1A4();
            sub_22BE26984();
            sub_22C273E44();
            sub_22BE36708();
            swift_unknownObjectRelease();
            v224 = sub_22BE19EC8();
            v225(v224);
            v226 = sub_22BE258E4();
            v227(v226);
            sub_22BF0AF6C();
            goto LABEL_30;
          case 15:
            LOBYTE(a10) = 15;
            sub_22BF07250();
            sub_22BE1AB8C(&_s8FlatExprO16RejectCodingKeysON, &a10);
            sub_22C26E1D4();
            sub_22BE1A5F0();
            sub_22BF043A8(v177, v178, MEMORY[0x277CC9618]);
            sub_22BE1C1A4();
            sub_22BE26984();
            sub_22C273EB4();
            sub_22BE36708();
            swift_unknownObjectRelease();
            v242 = sub_22BE19EC8();
            v243(v242);
            v244 = sub_22BE258E4();
            v245(v244);
            sub_22BF0AF6C();
            goto LABEL_30;
          case 16:
            LOBYTE(a10) = 16;
            sub_22BF071FC();
            sub_22BE1AB8C(&_s8FlatExprO16CancelCodingKeysON, &a10);
            sub_22C26E1D4();
            sub_22BE1A5F0();
            sub_22BF043A8(v162, v163, MEMORY[0x277CC9618]);
            sub_22BE1C1A4();
            sub_22BE26984();
            sub_22C273EB4();
            sub_22BE36708();
            swift_unknownObjectRelease();
            v220 = sub_22BE19EC8();
            v221(v220);
            v222 = sub_22BE258E4();
            v223(v222);
            sub_22BF0AF6C();
            goto LABEL_30;
          case 17:
            LOBYTE(a10) = 17;
            sub_22BF071A8();
            v189 = v349;
            sub_22BE22C34(&_s8FlatExprO26GetMentionedAppsCodingKeysON, &a10);
            swift_unknownObjectRelease();
            sub_22BE1B5D4();
            v190(v189, v337);
            v191 = sub_22BE2B7E8();
            v192(v191);
            sub_22BE22DC4();
            break;
          case 18:
            LOBYTE(a10) = 18;
            sub_22BF07154();
            v207 = v351[0];
            sub_22BE22C34(&_s8FlatExprO19EndOfPlanCodingKeysON, &a10);
            swift_unknownObjectRelease();
            sub_22BE1B5D4();
            v208(v207, v339[1]);
            v209 = sub_22BE2B7E8();
            v210(v209);
            sub_22BE22DC4();
            break;
          case 19:
            LOBYTE(a10) = 19;
            sub_22BF07100();
            sub_22BE1AB8C(&_s8FlatExprO26ContinuePlanningCodingKeysON, &a10);
            swift_unknownObjectRelease();
            v216 = sub_22BE1B074();
            v217(v216);
            v218 = sub_22BE2B7E8();
            v219(v218);
            sub_22BE22DC4();
            break;
          default:
            LOBYTE(a10) = 0;
            sub_22BF078F8();
            sub_22BE1B754();
            sub_22BE22C34(v145, v146);
            sub_22BF0B008();
            sub_22BE18538();
            v149 = sub_22BF043A8(v147, v148, &protocol conformance descriptor for AST.FlatValue);
            sub_22BE1B1D0(v135, v150, v151, v152, v149);
            sub_22BE36708();
            swift_unknownObjectRelease();
            sub_22BE1B5D4();
            v253 = sub_22BE1B328();
            v254(v253);
            v255 = sub_22BE258E4();
            v256(v255);
            goto LABEL_30;
        }

        swift_storeEnumTagMultiPayload();
        goto LABEL_32;
      }
    }

    v153 = v353[0];
    sub_22C273B34();
    swift_allocError();
    v155 = v154;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v155 = v153;
    v156 = sub_22C273DF4();
    sub_22BE1B198(v156);
    sub_22BE18994();
    v157 = sub_22BE38608();
    v158(v157);
    swift_willThrow();
    swift_unknownObjectRelease();
    v159 = sub_22BE2B7E8();
    v160(v159);
  }

  v161 = v357;
LABEL_9:
  sub_22BE26B64(v161);
  sub_22BE18478();
}