void sub_2272768A0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_227276C48(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_227276FF0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_227277398(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_227277EAC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_227278254(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v35 = 0u;
      v36 = 0u;
      goto LABEL_8;
    }

    v33 = v17;
    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v34), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v34);
      v35 = 0u;
      v36 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v35);
    sub_226E9B62C(&v34);

    if (*(&v36 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v26 = sub_22766C070();
      v28 = v27;

      if (v26 == 121 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 7562617 && v28 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v26 == 116 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 1702195828 && v28 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v26 == 49 && v28 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v29 = sub_22766D190();

      if (v29)
      {
LABEL_40:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_226EB3F78(0, *(v12 + 2) + 1, 1, v12);
        }

        v31 = *(v12 + 2);
        v30 = *(v12 + 3);
        if (v31 >= v30 >> 1)
        {
          v12 = sub_226EB3F78((v30 > 1), v31 + 1, 1, v12);
        }

        *(v12 + 2) = v31 + 1;
        v32 = &v12[16 * v31];
        *(v32 + 4) = v33;
        *(v32 + 5) = v18;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      sub_226E97D1C(&v35, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_227278738(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v35 = 0u;
      v36 = 0u;
      goto LABEL_8;
    }

    v33 = v17;
    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v34), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v34);
      v35 = 0u;
      v36 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v35);
    sub_226E9B62C(&v34);

    if (*(&v36 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v26 = sub_22766C070();
      v28 = v27;

      if (v26 == 121 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 7562617 && v28 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v26 == 116 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 1702195828 && v28 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v26 == 49 && v28 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v29 = sub_22766D190();

      if (v29)
      {
LABEL_40:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_226EB3F78(0, *(v12 + 2) + 1, 1, v12);
        }

        v31 = *(v12 + 2);
        v30 = *(v12 + 3);
        if (v31 >= v30 >> 1)
        {
          v12 = sub_226EB3F78((v30 > 1), v31 + 1, 1, v12);
        }

        *(v12 + 2) = v31 + 1;
        v32 = &v12[16 * v31];
        *(v32 + 4) = v33;
        *(v32 + 5) = v18;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      sub_226E97D1C(&v35, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_227278C1C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v35 = 0u;
      v36 = 0u;
      goto LABEL_8;
    }

    v33 = v17;
    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v34), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v34);
      v35 = 0u;
      v36 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v35);
    sub_226E9B62C(&v34);

    if (*(&v36 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v26 = sub_22766C070();
      v28 = v27;

      if (v26 == 121 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 7562617 && v28 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v26 == 116 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 1702195828 && v28 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v26 == 49 && v28 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v29 = sub_22766D190();

      if (v29)
      {
LABEL_40:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_226EB3F78(0, *(v12 + 2) + 1, 1, v12);
        }

        v31 = *(v12 + 2);
        v30 = *(v12 + 3);
        if (v31 >= v30 >> 1)
        {
          v12 = sub_226EB3F78((v30 > 1), v31 + 1, 1, v12);
        }

        *(v12 + 2) = v31 + 1;
        v32 = &v12[16 * v31];
        *(v32 + 4) = v33;
        *(v32 + 5) = v18;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      sub_226E97D1C(&v35, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_227279100(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v35 = 0u;
      v36 = 0u;
      goto LABEL_8;
    }

    v33 = v17;
    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v34), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v34);
      v35 = 0u;
      v36 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v35);
    sub_226E9B62C(&v34);

    if (*(&v36 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v26 = sub_22766C070();
      v28 = v27;

      if (v26 == 121 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 7562617 && v28 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v26 == 116 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 1702195828 && v28 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v26 == 49 && v28 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v29 = sub_22766D190();

      if (v29)
      {
LABEL_40:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_226EB3F78(0, *(v12 + 2) + 1, 1, v12);
        }

        v31 = *(v12 + 2);
        v30 = *(v12 + 3);
        if (v31 >= v30 >> 1)
        {
          v12 = sub_226EB3F78((v30 > 1), v31 + 1, 1, v12);
        }

        *(v12 + 2) = v31 + 1;
        v32 = &v12[16 * v31];
        *(v32 + 4) = v33;
        *(v32 + 5) = v18;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      sub_226E97D1C(&v35, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_2272795E4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v35 = 0u;
      v36 = 0u;
      goto LABEL_8;
    }

    v33 = v17;
    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v34), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v34);
      v35 = 0u;
      v36 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v35);
    sub_226E9B62C(&v34);

    if (*(&v36 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v26 = sub_22766C070();
      v28 = v27;

      if (v26 == 121 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 7562617 && v28 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v26 == 116 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 1702195828 && v28 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v26 == 49 && v28 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v29 = sub_22766D190();

      if (v29)
      {
LABEL_40:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_226EB3F78(0, *(v12 + 2) + 1, 1, v12);
        }

        v31 = *(v12 + 2);
        v30 = *(v12 + 3);
        if (v31 >= v30 >> 1)
        {
          v12 = sub_226EB3F78((v30 > 1), v31 + 1, 1, v12);
        }

        *(v12 + 2) = v31 + 1;
        v32 = &v12[16 * v31];
        *(v32 + 4) = v33;
        *(v32 + 5) = v18;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      sub_226E97D1C(&v35, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_227279AC8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v35 = 0u;
      v36 = 0u;
      goto LABEL_8;
    }

    v33 = v17;
    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v34), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v34);
      v35 = 0u;
      v36 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v35);
    sub_226E9B62C(&v34);

    if (*(&v36 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v26 = sub_22766C070();
      v28 = v27;

      if (v26 == 121 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 7562617 && v28 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v26 == 116 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 1702195828 && v28 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v26 == 49 && v28 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v29 = sub_22766D190();

      if (v29)
      {
LABEL_40:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_226EB3F78(0, *(v12 + 2) + 1, 1, v12);
        }

        v31 = *(v12 + 2);
        v30 = *(v12 + 3);
        if (v31 >= v30 >> 1)
        {
          v12 = sub_226EB3F78((v30 > 1), v31 + 1, 1, v12);
        }

        *(v12 + 2) = v31 + 1;
        v32 = &v12[16 * v31];
        *(v32 + 4) = v33;
        *(v32 + 5) = v18;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      sub_226E97D1C(&v35, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_227279FAC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v35 = 0u;
      v36 = 0u;
      goto LABEL_8;
    }

    v33 = v17;
    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v34), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v34);
      v35 = 0u;
      v36 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v35);
    sub_226E9B62C(&v34);

    if (*(&v36 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v26 = sub_22766C070();
      v28 = v27;

      if (v26 == 121 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 7562617 && v28 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v26 == 116 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 1702195828 && v28 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v26 == 49 && v28 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v29 = sub_22766D190();

      if (v29)
      {
LABEL_40:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_226EB3F78(0, *(v12 + 2) + 1, 1, v12);
        }

        v31 = *(v12 + 2);
        v30 = *(v12 + 3);
        if (v31 >= v30 >> 1)
        {
          v12 = sub_226EB3F78((v30 > 1), v31 + 1, 1, v12);
        }

        *(v12 + 2) = v31 + 1;
        v32 = &v12[16 * v31];
        *(v32 + 4) = v33;
        *(v32 + 5) = v18;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      sub_226E97D1C(&v35, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22727A490(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v35 = 0u;
      v36 = 0u;
      goto LABEL_8;
    }

    v33 = v17;
    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v34), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v34);
      v35 = 0u;
      v36 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v35);
    sub_226E9B62C(&v34);

    if (*(&v36 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v26 = sub_22766C070();
      v28 = v27;

      if (v26 == 121 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 7562617 && v28 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v26 == 116 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 1702195828 && v28 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v26 == 49 && v28 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v29 = sub_22766D190();

      if (v29)
      {
LABEL_40:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_226EB3F78(0, *(v12 + 2) + 1, 1, v12);
        }

        v31 = *(v12 + 2);
        v30 = *(v12 + 3);
        if (v31 >= v30 >> 1)
        {
          v12 = sub_226EB3F78((v30 > 1), v31 + 1, 1, v12);
        }

        *(v12 + 2) = v31 + 1;
        v32 = &v12[16 * v31];
        *(v32 + 4) = v33;
        *(v32 + 5) = v18;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      sub_226E97D1C(&v35, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22727A974(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v35 = 0u;
      v36 = 0u;
      goto LABEL_8;
    }

    v33 = v17;
    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v34), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v34);
      v35 = 0u;
      v36 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v35);
    sub_226E9B62C(&v34);

    if (*(&v36 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v26 = sub_22766C070();
      v28 = v27;

      if (v26 == 121 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 7562617 && v28 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v26 == 116 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 1702195828 && v28 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v26 == 49 && v28 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v29 = sub_22766D190();

      if (v29)
      {
LABEL_40:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_226EB3F78(0, *(v12 + 2) + 1, 1, v12);
        }

        v31 = *(v12 + 2);
        v30 = *(v12 + 3);
        if (v31 >= v30 >> 1)
        {
          v12 = sub_226EB3F78((v30 > 1), v31 + 1, 1, v12);
        }

        *(v12 + 2) = v31 + 1;
        v32 = &v12[16 * v31];
        *(v32 + 4) = v33;
        *(v32 + 5) = v18;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      sub_226E97D1C(&v35, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22727AE58(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v35 = 0u;
      v36 = 0u;
      goto LABEL_8;
    }

    v33 = v17;
    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v34), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v34);
      v35 = 0u;
      v36 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v35);
    sub_226E9B62C(&v34);

    if (*(&v36 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v26 = sub_22766C070();
      v28 = v27;

      if (v26 == 121 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 7562617 && v28 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v26 == 116 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 1702195828 && v28 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v26 == 49 && v28 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v29 = sub_22766D190();

      if (v29)
      {
LABEL_40:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_226EB3F78(0, *(v12 + 2) + 1, 1, v12);
        }

        v31 = *(v12 + 2);
        v30 = *(v12 + 3);
        if (v31 >= v30 >> 1)
        {
          v12 = sub_226EB3F78((v30 > 1), v31 + 1, 1, v12);
        }

        *(v12 + 2) = v31 + 1;
        v32 = &v12[16 * v31];
        *(v32 + 4) = v33;
        *(v32 + 5) = v18;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      sub_226E97D1C(&v35, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22727B33C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v35 = 0u;
      v36 = 0u;
      goto LABEL_8;
    }

    v33 = v17;
    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v34), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v34);
      v35 = 0u;
      v36 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v35);
    sub_226E9B62C(&v34);

    if (*(&v36 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v26 = sub_22766C070();
      v28 = v27;

      if (v26 == 121 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 7562617 && v28 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v26 == 116 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 1702195828 && v28 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v26 == 49 && v28 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v29 = sub_22766D190();

      if (v29)
      {
LABEL_40:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_226EB3F78(0, *(v12 + 2) + 1, 1, v12);
        }

        v31 = *(v12 + 2);
        v30 = *(v12 + 3);
        if (v31 >= v30 >> 1)
        {
          v12 = sub_226EB3F78((v30 > 1), v31 + 1, 1, v12);
        }

        *(v12 + 2) = v31 + 1;
        v32 = &v12[16 * v31];
        *(v32 + 4) = v33;
        *(v32 + 5) = v18;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      sub_226E97D1C(&v35, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22727B820(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v35 = 0u;
      v36 = 0u;
      goto LABEL_8;
    }

    v33 = v17;
    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v34), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v34);
      v35 = 0u;
      v36 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v35);
    sub_226E9B62C(&v34);

    if (*(&v36 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v26 = sub_22766C070();
      v28 = v27;

      if (v26 == 121 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 7562617 && v28 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v26 == 116 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 1702195828 && v28 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v26 == 49 && v28 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v29 = sub_22766D190();

      if (v29)
      {
LABEL_40:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_226EB3F78(0, *(v12 + 2) + 1, 1, v12);
        }

        v31 = *(v12 + 2);
        v30 = *(v12 + 3);
        if (v31 >= v30 >> 1)
        {
          v12 = sub_226EB3F78((v30 > 1), v31 + 1, 1, v12);
        }

        *(v12 + 2) = v31 + 1;
        v32 = &v12[16 * v31];
        *(v32 + 4) = v33;
        *(v32 + 5) = v18;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      sub_226E97D1C(&v35, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22727BD04(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v35 = 0u;
      v36 = 0u;
      goto LABEL_8;
    }

    v33 = v17;
    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v34), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v34);
      v35 = 0u;
      v36 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v35);
    sub_226E9B62C(&v34);

    if (*(&v36 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v26 = sub_22766C070();
      v28 = v27;

      if (v26 == 121 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 7562617 && v28 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v26 == 116 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 1702195828 && v28 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v26 == 49 && v28 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v29 = sub_22766D190();

      if (v29)
      {
LABEL_40:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_226EB3F78(0, *(v12 + 2) + 1, 1, v12);
        }

        v31 = *(v12 + 2);
        v30 = *(v12 + 3);
        if (v31 >= v30 >> 1)
        {
          v12 = sub_226EB3F78((v30 > 1), v31 + 1, 1, v12);
        }

        *(v12 + 2) = v31 + 1;
        v32 = &v12[16 * v31];
        *(v32 + 4) = v33;
        *(v32 + 5) = v18;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      sub_226E97D1C(&v35, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22727C1E8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v35 = 0u;
      v36 = 0u;
      goto LABEL_8;
    }

    v33 = v17;
    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v34), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v34);
      v35 = 0u;
      v36 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v35);
    sub_226E9B62C(&v34);

    if (*(&v36 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v26 = sub_22766C070();
      v28 = v27;

      if (v26 == 121 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 7562617 && v28 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v26 == 116 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 1702195828 && v28 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v26 == 49 && v28 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v29 = sub_22766D190();

      if (v29)
      {
LABEL_40:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_226EB3F78(0, *(v12 + 2) + 1, 1, v12);
        }

        v31 = *(v12 + 2);
        v30 = *(v12 + 3);
        if (v31 >= v30 >> 1)
        {
          v12 = sub_226EB3F78((v30 > 1), v31 + 1, 1, v12);
        }

        *(v12 + 2) = v31 + 1;
        v32 = &v12[16 * v31];
        *(v32 + 4) = v33;
        *(v32 + 5) = v18;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      sub_226E97D1C(&v35, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22727C6CC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v35 = 0u;
      v36 = 0u;
      goto LABEL_8;
    }

    v33 = v17;
    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v34), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v34);
      v35 = 0u;
      v36 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v35);
    sub_226E9B62C(&v34);

    if (*(&v36 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v26 = sub_22766C070();
      v28 = v27;

      if (v26 == 121 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 7562617 && v28 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v26 == 116 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 1702195828 && v28 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v26 == 49 && v28 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v29 = sub_22766D190();

      if (v29)
      {
LABEL_40:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_226EB3F78(0, *(v12 + 2) + 1, 1, v12);
        }

        v31 = *(v12 + 2);
        v30 = *(v12 + 3);
        if (v31 >= v30 >> 1)
        {
          v12 = sub_226EB3F78((v30 > 1), v31 + 1, 1, v12);
        }

        *(v12 + 2) = v31 + 1;
        v32 = &v12[16 * v31];
        *(v32 + 4) = v33;
        *(v32 + 5) = v18;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      sub_226E97D1C(&v35, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22727CBB0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v35 = 0u;
      v36 = 0u;
      goto LABEL_8;
    }

    v33 = v17;
    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v34), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v34);
      v35 = 0u;
      v36 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v35);
    sub_226E9B62C(&v34);

    if (*(&v36 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v26 = sub_22766C070();
      v28 = v27;

      if (v26 == 121 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 7562617 && v28 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v26 == 116 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 1702195828 && v28 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v26 == 49 && v28 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v29 = sub_22766D190();

      if (v29)
      {
LABEL_40:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_226EB3F78(0, *(v12 + 2) + 1, 1, v12);
        }

        v31 = *(v12 + 2);
        v30 = *(v12 + 3);
        if (v31 >= v30 >> 1)
        {
          v12 = sub_226EB3F78((v30 > 1), v31 + 1, 1, v12);
        }

        *(v12 + 2) = v31 + 1;
        v32 = &v12[16 * v31];
        *(v32 + 4) = v33;
        *(v32 + 5) = v18;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      sub_226E97D1C(&v35, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22727D094(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v35 = 0u;
      v36 = 0u;
      goto LABEL_8;
    }

    v33 = v17;
    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v34), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v34);
      v35 = 0u;
      v36 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v35);
    sub_226E9B62C(&v34);

    if (*(&v36 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v26 = sub_22766C070();
      v28 = v27;

      if (v26 == 121 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 7562617 && v28 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v26 == 116 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 1702195828 && v28 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v26 == 49 && v28 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v29 = sub_22766D190();

      if (v29)
      {
LABEL_40:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_226EB3F78(0, *(v12 + 2) + 1, 1, v12);
        }

        v31 = *(v12 + 2);
        v30 = *(v12 + 3);
        if (v31 >= v30 >> 1)
        {
          v12 = sub_226EB3F78((v30 > 1), v31 + 1, 1, v12);
        }

        *(v12 + 2) = v31 + 1;
        v32 = &v12[16 * v31];
        *(v32 + 4) = v33;
        *(v32 + 5) = v18;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      sub_226E97D1C(&v35, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22727D578(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v35 = 0u;
      v36 = 0u;
      goto LABEL_8;
    }

    v33 = v17;
    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v34), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v34);
      v35 = 0u;
      v36 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v35);
    sub_226E9B62C(&v34);

    if (*(&v36 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v26 = sub_22766C070();
      v28 = v27;

      if (v26 == 121 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 7562617 && v28 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v26 == 116 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 1702195828 && v28 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v26 == 49 && v28 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v29 = sub_22766D190();

      if (v29)
      {
LABEL_40:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_226EB3F78(0, *(v12 + 2) + 1, 1, v12);
        }

        v31 = *(v12 + 2);
        v30 = *(v12 + 3);
        if (v31 >= v30 >> 1)
        {
          v12 = sub_226EB3F78((v30 > 1), v31 + 1, 1, v12);
        }

        *(v12 + 2) = v31 + 1;
        v32 = &v12[16 * v31];
        *(v32 + 4) = v33;
        *(v32 + 5) = v18;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      sub_226E97D1C(&v35, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22727DCBC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v35 = 0u;
      v36 = 0u;
      goto LABEL_8;
    }

    v33 = v17;
    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v34), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v34);
      v35 = 0u;
      v36 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v35);
    sub_226E9B62C(&v34);

    if (*(&v36 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v26 = sub_22766C070();
      v28 = v27;

      if (v26 == 121 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 7562617 && v28 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v26 == 116 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 1702195828 && v28 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v26 == 49 && v28 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v29 = sub_22766D190();

      if (v29)
      {
LABEL_40:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_226EB3F78(0, *(v12 + 2) + 1, 1, v12);
        }

        v31 = *(v12 + 2);
        v30 = *(v12 + 3);
        if (v31 >= v30 >> 1)
        {
          v12 = sub_226EB3F78((v30 > 1), v31 + 1, 1, v12);
        }

        *(v12 + 2) = v31 + 1;
        v32 = &v12[16 * v31];
        *(v32 + 4) = v33;
        *(v32 + 5) = v18;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      sub_226E97D1C(&v35, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22727E1A0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v35 = 0u;
      v36 = 0u;
      goto LABEL_8;
    }

    v33 = v17;
    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v34), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v34);
      v35 = 0u;
      v36 = 0u;
      goto LABEL_36;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v35);
    sub_226E9B62C(&v34);

    if (*(&v36 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_38;
      }

      v26 = sub_22766C070();
      v28 = v27;

      if (v26 == 121 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 7562617 && v28 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v26 == 116 && v28 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v26 == 1702195828 && v28 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v26 == 49 && v28 == 0xE100000000000000)
      {

        goto LABEL_40;
      }

      v29 = sub_22766D190();

      if (v29)
      {
LABEL_40:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_226EB3F78(0, *(v12 + 2) + 1, 1, v12);
        }

        v31 = *(v12 + 2);
        v30 = *(v12 + 3);
        if (v31 >= v30 >> 1)
        {
          v12 = sub_226EB3F78((v30 > 1), v31 + 1, 1, v12);
        }

        *(v12 + 2) = v31 + 1;
        v32 = &v12[16 * v31];
        *(v32 + 4) = v33;
        *(v32 + 5) = v18;
      }

      else
      {
LABEL_38:
      }
    }

    else
    {
LABEL_36:

LABEL_8:
      sub_226E97D1C(&v35, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

BOOL sub_22727E684(void *a1)
{
  v2 = v1;
  v3 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v5;

  sub_22766A070();
  v38 = v9;
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  v34[0] = v10;
  v34[1] = v7;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  swift_getKeyPath();
  v11 = sub_227664ED0();
  v37[3] = MEMORY[0x277D83B88];
  v37[0] = v11;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v12 = sub_22766C820();
  sub_226E93170(v37, v35, &unk_27D7BC990, &qword_227670A30);
  v13 = v36;
  if (v36)
  {
    v14 = __swift_project_boxed_opaque_existential_0(v35, v36);
    v15 = *(v13 - 8);
    v16 = MEMORY[0x28223BE20](v14);
    v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18, v16);
    v19 = sub_22766D170();
    (*(v15 + 8))(v18, v13);
    v2 = v1;
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  else
  {
    v19 = 0;
  }

  v20 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v21 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230 qword_22767D000))];

  sub_226E97D1C(v37, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v22 = v21;
  v23 = sub_22766A080();
  v25 = v24;
  MEMORY[0x22AA985C0]();
  if (*((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v23(v37, 0);
  swift_endAccess();

  v26 = sub_226E9CA64(0);
  if (v2)
  {
  }

  else
  {
    v28 = v26;
    [v26 setResultType_];
    [v28 setFetchLimit_];
    [v28 setFetchOffset_];
    [v28 setIncludesSubentities_];
    [v28 setFetchLimit_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v29 = v38;
    v31 = sub_22766C9D0();

    swift_setDeallocating();
    v32 = qword_2813B2078;
    v33 = sub_22766A100();
    (*(*(v33 - 8) + 8))(v8 + v32, v33);
    swift_deallocClassInstance();
    return v31 > 0;
  }

  return v27;
}

void sub_22727EB5C(uint64_t a1, void *a2)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  MEMORY[0x28223BE20](v50);
  v5 = &v44 - v4;
  v6 = a2[3];
  v47 = a2;
  v7 = __swift_project_boxed_opaque_existential_0(a2, v6);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
  v12 = swift_allocObject();
  v13 = v8;
  v14 = v9;

  sub_22766A070();
  v45 = v14;
  v46 = v13;
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  v55 = v10;
  *(v12 + 32) = v10;
  v51 = v11;
  *(v12 + 40) = v11;
  v15 = v5;
  swift_getKeyPath();
  v48 = a1;
  sub_2276637C0();
  v16 = sub_2276627D0();
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
  v54[3] = v50;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v54);
  sub_226E93170(v5, boxed_opaque_existential_0, &unk_27D7BB9D0, &qword_227671550);
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v18 = sub_22766C820();
  sub_226E93170(v54, v52, &unk_27D7BC990, &qword_227670A30);
  v19 = v53;
  if (v53)
  {
    v20 = __swift_project_boxed_opaque_existential_0(v52, v53);
    v21 = *(v19 - 8);
    v22 = MEMORY[0x28223BE20](v20);
    v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24, v22);
    v25 = sub_22766D170();
    (*(v21 + 8))(v24, v19);
    __swift_destroy_boxed_opaque_existential_0(v52);
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v27 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230 qword_22767D000))];

  sub_226E97D1C(v15, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v54, &unk_27D7BC990, &qword_227670A30);
  v28 = qword_2813B2078;
  swift_beginAccess();
  v29 = v27;
  v30 = sub_22766A080();
  v32 = v31;
  MEMORY[0x22AA985C0]();
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v30(v54, 0);
  swift_endAccess();

  v33 = sub_227543200(v12 + v28, v55, v51);
  if (v33)
  {
    if (v33 == 1)
    {

LABEL_9:
      v34 = __swift_project_boxed_opaque_existential_0(v47, v47[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF30, &qword_22767CC30);
      v35 = sub_2276638D0();
      v36 = *(v35 - 8);
      v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_227670CD0;
      (*(v36 + 16))(v38 + v37, v48, v35);
      sub_22756601C(v38, v34[1], *(v34 + 16), v34[3]);

      return;
    }

    swift_willThrow();
  }

  else
  {
    v39 = v49;
    v40 = sub_226E9CA64(0);
    if (!v39)
    {
      v41 = v40;
      [v40 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v42 = sub_22766C9E0();
      v49 = 0;
      v43 = sub_226EDAB24(v42);

      sub_226EDAB78(v43, v45);

      goto LABEL_9;
    }
  }
}

char *sub_22727F174(uint64_t a1, void *a2)
{
  v41 = a1;
  v37 = sub_227666E60();
  v45 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2276653E0();
  v4 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v8 = *v7;
  v9 = v7[1];
  LODWORD(v40) = *(v7 + 16);
  v10 = v7[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
  v11 = swift_allocObject();
  v12 = v8;
  v13 = v9;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v40;
  *(v11 + 40) = v10;
  sub_227666E10();
  v14 = sub_227253A6C();
  (*(v4 + 8))(v6, v42);
  v15 = qword_2813B2078;
  swift_beginAccess();
  v16 = sub_22766A080();
  v18 = v17;
  v19 = v14;
  MEMORY[0x22AA985C0]();
  if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v16(v44, 0);
  swift_endAccess();

  sub_227666E00();
  swift_beginAccess();
  sub_22766A0D0();
  swift_endAccess();
  sub_227666E20();
  swift_beginAccess();
  sub_22766A0F0();
  swift_endAccess();
  v20 = sub_227666DF0();
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
    v40 = *(v45 + 16);
    v41 = v22;
    v23 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v35[1] = v20;
    v24 = v20 + v23;
    v25 = *(v45 + 72);
    v45 += 16;
    v38 = (v45 - 8);
    v39 = v25;
    v26 = v36;
    v27 = v37;
    v42 = v15;
    v43 = v11;
    do
    {
      v40(v26, v24, v27);
      sub_227666E50();
      swift_getKeyPath();
      sub_227666E40();
      sub_2276629E0();

      sub_22766C900();
      swift_beginAccess();
      v28 = sub_22766A0A0();
      v30 = v29;
      MEMORY[0x22AA985C0]();
      if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v28(v44, 0);
      swift_endAccess();

      (*v38)(v26, v27);
      v24 += v39;
      --v21;
      v11 = v43;
    }

    while (v21);
  }

  v31 = sub_226E9AABC(100);
  swift_setDeallocating();

  v32 = qword_2813B2078;
  v33 = sub_22766A100();
  (*(*(v33 - 8) + 8))(v11 + v32, v33);
  swift_deallocClassInstance();
  return v31;
}

void sub_22727F6E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v40 = a1;
  v6 = sub_227667780();
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v48 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v41 = 0;
  v42 = v8 + 16;
  v49 = a4 + 56;
  v43 = v8;
  v44 = (v8 + 8);
  v45 = v11;
  v46 = v7;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_13:
    v23 = v20 | (v12 << 6);
    v24 = *(v48 + 48);
    v25 = *(v43 + 72);
    v47 = v23;
    (*(v43 + 16))(v11, v24 + v25 * v23, v6, v9);
    v26 = sub_227667760();
    v28 = v27;
    if (*(a4 + 16) && (v29 = v26, sub_22766D370(), sub_22766C100(), v30 = sub_22766D3F0(), v31 = -1 << *(a4 + 32), v32 = v30 & ~v31, ((*(v49 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
    {
      v33 = ~v31;
      while (1)
      {
        v34 = (*(a4 + 48) + 16 * v32);
        v35 = *v34 == v29 && v34[1] == v28;
        if (v35 || (sub_22766D190() & 1) != 0)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v49 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v11 = v45;
      v6 = v46;
      (*v44)(v45, v46);
      *(v40 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      if (__OFADD__(v41++, 1))
      {
        __break(1u);
LABEL_26:
        v37 = v48;

        sub_227269BC0(v40, v39, v41, v37);
        return;
      }
    }

    else
    {
LABEL_5:

      v11 = v45;
      v6 = v46;
      (*v44)(v45, v46);
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_26;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_22727F9EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = *MEMORY[0x277D85DE8];
  v6 = sub_227667780();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v51 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  v52 = a2;
  if (v9 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v41 = v10;
    v42 = v3;
    v40 = &v40;
    MEMORY[0x28223BE20](v12);
    v43 = &v40 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v11);
    v10 = 0;
    v13 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & *(a1 + 56);
    v11 = (v14 + 63) >> 6;
    v17 = v7 + 16;
    v18 = v7;
    v7 = a2 + 56;
    v48 = v17;
    v49 = v18;
    v44 = 0;
    v45 = (v18 + 8);
    v46 = v6;
    v47 = a1;
    while (v16)
    {
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v22 = v19 | (v10 << 6);
      v23 = *(a1 + 48);
      v24 = *(v49 + 72);
      v50 = v22;
      (*(v49 + 16))(v51, v23 + v24 * v22, v6);
      v25 = sub_227667760();
      v27 = v26;
      if (*(v52 + 16) && (v28 = v25, sub_22766D370(), sub_22766C100(), v29 = sub_22766D3F0(), v30 = v52, v31 = -1 << *(v52 + 32), v32 = v29 & ~v31, ((*(v7 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
      {
        v3 = ~v31;
        while (1)
        {
          v33 = (*(v30 + 48) + 16 * v32);
          v34 = *v33 == v28 && v33[1] == v27;
          if (v34 || (sub_22766D190() & 1) != 0)
          {
            break;
          }

          v32 = (v32 + 1) & v3;
          v30 = v52;
          if (((*(v7 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v6 = v46;
        (*v45)(v51, v46);
        *&v43[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
        v35 = __OFADD__(v44++, 1);
        a1 = v47;
        if (v35)
        {
          __break(1u);
LABEL_27:
          v36 = sub_227269BC0(v43, v41, v44, a1);

          return v36;
        }
      }

      else
      {
LABEL_6:

        v6 = v46;
        (*v45)(v51, v46);
        a1 = v47;
      }
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v10 >= v11)
      {
        goto LABEL_27;
      }

      v21 = *(v13 + 8 * v10);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a2 = v52;
  }

  v38 = swift_slowAlloc();
  v39 = v52;

  v36 = sub_227268F28(v38, v10, a1, v39, sub_22727F6E8);

  MEMORY[0x22AA9A450](v38, -1, -1);

  return v36;
}

uint64_t sub_22727FE50(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v6 = a2;
  v8 = sub_227270D9C(a1, a2, a3);
  if (!v4)
  {
    v64 = v6;
    v67 = v8;
    v9 = sub_22722FE2C(v8);
    v66 = 0;
    sub_226F44880(v9);

    v10 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
    v11 = *v10;
    v12 = v10[1];
    v13 = *(v10 + 16);
    v14 = v10[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
    v15 = swift_allocObject();
    v16 = v11;
    v17 = v12;

    sub_22766A070();
    *(v15 + 16) = v16;
    *(v15 + 24) = v17;
    *(v15 + 32) = v13;
    *(v15 + 40) = v14;
    swift_getKeyPath();
    v71 = MEMORY[0x277D839F8];
    *v70 = a4;
    v18 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v65 = v18;
    v19 = sub_22766C820();
    sub_226E93170(v70, v68, &unk_27D7BC990, &qword_227670A30);
    v20 = v69;
    if (v69)
    {
      v21 = __swift_project_boxed_opaque_existential_0(v68, v69);
      v22 = *(v20 - 8);
      v23 = MEMORY[0x28223BE20](v21);
      v25 = v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v25, v23);
      v26 = sub_22766D170();
      (*(v22 + 8))(v25, v20);
      __swift_destroy_boxed_opaque_existential_0(v68);
    }

    else
    {
      v26 = 0;
    }

    v27 = objc_opt_self();
    v28 = [v27 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950, &unk_227670BB0);
    v30 = [objc_allocWithZone(v29) initWithLeftExpression:v19 rightExpression:v28 modifier:0 type:2 options:0];

    sub_226E97D1C(v70, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v31 = v30;
    v32 = sub_22766A080();
    v34 = v33;
    MEMORY[0x22AA985C0]();
    if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v32(v70, 0);
    swift_endAccess();

    swift_getKeyPath();
    KeyPath = swift_getKeyPath();

    v36 = v66;
    v37 = sub_22726DB2C(v67, sub_226F921B4, KeyPath);
    v66 = v36;

    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
    v70[0] = v37;

    v38 = sub_22766C820();
    sub_226E93170(v70, v68, &unk_27D7BC990, &qword_227670A30);
    v39 = v69;
    if (v69)
    {
      v40 = __swift_project_boxed_opaque_existential_0(v68, v69);
      v65 = v27;
      v63[1] = v63;
      v41 = v29;
      v42 = *(v39 - 8);
      v43 = MEMORY[0x28223BE20](v40);
      v45 = v63 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v42 + 16))(v45, v43);
      v46 = sub_22766D170();
      (*(v42 + 8))(v45, v39);
      v29 = v41;
      v27 = v65;
      __swift_destroy_boxed_opaque_existential_0(v68);
    }

    else
    {
      v46 = 0;
    }

    v47 = [v27 expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(v29) initWithLeftExpression:v38 rightExpression:v47 modifier:0 type:10 options:0];

    sub_226E97D1C(v70, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v48 = sub_22766A080();
    v50 = v49;
    MEMORY[0x22AA985C0]();
    if (*((*v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v48(v70, 0);
    swift_endAccess();

    v51 = swift_getKeyPath();
    v52 = v66;
    sub_2273FC7CC(v51);
    if (v52)
    {

      swift_setDeallocating();

      v6 = qword_2813B2078;
      v54 = sub_22766A100();
      (*(*(v54 - 8) + 8))(v15 + v6, v54);
      swift_deallocClassInstance();
    }

    else
    {
      v56 = sub_226F3E6A8(v53);

      swift_setDeallocating();

      v57 = qword_2813B2078;
      v58 = sub_22766A100();
      (*(*(v58 - 8) + 8))(v15 + v57, v58);
      swift_deallocClassInstance();
      v59 = sub_22727F9EC(v67, v56);

      v60 = sub_22722FE2C(v59);

      v61 = sub_226F44880(v60);

      v62 = v64;
      if (*(v61 + 16) <= *(v64 + 16) >> 3)
      {
        v70[0] = v64;

        sub_22700626C(v61);

        return v70[0];
      }

      else
      {

        v6 = sub_2270094C4(v61, v62);
      }
    }
  }

  return v6;
}

uint64_t sub_2272806D8(uint64_t a1, void *a2)
{
  v46 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v45 - v7;
  v8 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  v12 = v8[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
  v13 = swift_allocObject();
  v14 = v9;
  v15 = v10;

  sub_22766A070();
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  *(v13 + 32) = v11;
  *(v13 + 40) = v12;
  swift_getKeyPath();
  v16 = sub_2276627D0();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v5, v46, v16);
  (*(v17 + 56))(v5, 0, 1, v16);
  v49[3] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v49);
  sub_226E93170(v5, boxed_opaque_existential_0, &unk_27D7BB9D0, &qword_227671550);
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v19 = sub_22766C820();
  sub_226E93170(v49, v47, &unk_27D7BC990, &qword_227670A30);
  v20 = v48;
  if (v48)
  {
    v21 = __swift_project_boxed_opaque_existential_0(v47, v48);
    v22 = *(v20 - 8);
    v23 = MEMORY[0x28223BE20](v21);
    v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25, v23);
    v26 = sub_22766D170();
    (*(v22 + 8))(v25, v20);
    __swift_destroy_boxed_opaque_existential_0(v47);
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v28 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230 qword_22767D000))];

  sub_226E97D1C(v5, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v49, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v29 = v28;
  v30 = sub_22766A080();
  v32 = v31;
  MEMORY[0x22AA985C0]();
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v30(v49, 0);
  swift_endAccess();

  swift_beginAccess();
  sub_22766A0D0();
  swift_endAccess();
  v33 = v49[5];
  v34 = sub_2272F9F90(0x64);
  if (v33)
  {
    swift_setDeallocating();

    v35 = qword_2813B2078;
    v36 = sub_22766A100();
    (*(*(v36 - 8) + 8))(v13 + v35, v36);
    return swift_deallocClassInstance();
  }

  else
  {
    v38 = v34;
    swift_setDeallocating();

    v39 = qword_2813B2078;
    v40 = sub_22766A100();
    (*(*(v40 - 8) + 8))(v13 + v39, v40);
    swift_deallocClassInstance();
    v41 = v45;
    sub_22722AEAC(v38, v45);

    v42 = sub_2276638D0();
    if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
    {
      v43 = sub_227664EC0();
      sub_226E9CF88(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      swift_allocError();
      (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D51188], v43);
      swift_willThrow();
    }

    return sub_226E97D1C(v41, &unk_27D7BB920, &unk_227672480);
  }
}

void sub_227280E00(void **a1, void *a2)
{
  v96 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  MEMORY[0x28223BE20](v3);
  v89 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v78 - v6;
  v8 = a2[3];
  v86 = a2;
  v9 = __swift_project_boxed_opaque_existential_0(a2, v8);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  v13 = v9[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1A0, &qword_22767DEA0);
  v14 = swift_allocObject();
  v15 = v10;
  v16 = v11;

  sub_22766A070();
  v78[1] = v15;
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  v78[0] = v16;
  LODWORD(v91) = v12;
  *(v14 + 32) = v12;
  v90 = v13;
  *(v14 + 40) = v13;
  v17 = v7;
  swift_getKeyPath();
  v18 = sub_2276627D0();
  v19 = *(v18 - 8);
  v82 = *(v19 + 16);
  v83 = v19 + 16;
  v82(v7, v96, v18);
  v20 = *(v19 + 56);
  v84 = v19 + 56;
  v85 = v18;
  v81 = v20;
  v20(v7, 0, 1, v18);
  v87 = v3;
  v95 = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v94);
  sub_226E93170(v7, boxed_opaque_existential_0, &unk_27D7BB9D0, &qword_227671550);
  v22 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v80 = v22;
  v23 = sub_22766C820();
  sub_226E93170(v94, v92, &unk_27D7BC990, &qword_227670A30);
  v24 = v93;
  if (v93)
  {
    v25 = __swift_project_boxed_opaque_existential_0(v92, v93);
    v26 = *(v24 - 8);
    v27 = MEMORY[0x28223BE20](v25);
    v29 = v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v29, v27);
    v30 = sub_22766D170();
    (*(v26 + 8))(v29, v24);
    __swift_destroy_boxed_opaque_existential_0(v92);
  }

  else
  {
    v30 = 0;
  }

  v79 = objc_opt_self();
  v31 = [v79 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v32 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC528 &qword_22767DED0))];

  sub_226E97D1C(v17, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v94, &unk_27D7BC990, &qword_227670A30);
  v33 = qword_2813B2078;
  swift_beginAccess();
  v34 = v32;
  v35 = sub_22766A080();
  v37 = v36;
  MEMORY[0x22AA985C0]();
  if (*((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v35(v94, 0);
  swift_endAccess();

  v38 = sub_227543248(v14 + v33, v91, v90);
  if (v38)
  {
    if (v38 != 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v60 = v88;
    v61 = sub_22724AE30(0);
    if (v60)
    {
      goto LABEL_18;
    }

    v62 = v61;
    [v61 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v63 = sub_22766C9E0();
    v88 = 0;
    v76 = sub_226EDAB24(v63);

    sub_226EDAB78(v76, v78[0]);
  }

  v39 = __swift_project_boxed_opaque_existential_0(v86, v86[3]);
  v40 = *v39;
  v41 = v39[1];
  v42 = *(v39 + 16);
  v43 = v39[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
  v44 = swift_allocObject();
  v45 = v40;
  v46 = v41;

  sub_22766A070();
  v90 = v46;
  v91 = v45;
  *(v44 + 16) = v45;
  *(v44 + 24) = v46;
  *(v44 + 32) = v42;
  *(v44 + 40) = v43;
  swift_getKeyPath();
  v47 = v89;
  v48 = v85;
  v82(v89, v96, v85);
  v81(v47, 0, 1, v48);
  v95 = v87;
  v49 = __swift_allocate_boxed_opaque_existential_0(v94);
  sub_226E93170(v47, v49, &unk_27D7BB9D0, &qword_227671550);

  v50 = sub_22766C820();
  sub_226E93170(v94, v92, &unk_27D7BC990, &qword_227670A30);
  v51 = v93;
  if (v93)
  {
    v52 = __swift_project_boxed_opaque_existential_0(v92, v93);
    v96 = v78;
    v53 = v43;
    v54 = v42;
    v55 = *(v51 - 8);
    v56 = MEMORY[0x28223BE20](v52);
    v58 = v78 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v55 + 16))(v58, v56);
    v59 = sub_22766D170();
    (*(v55 + 8))(v58, v51);
    v42 = v54;
    v43 = v53;
    __swift_destroy_boxed_opaque_existential_0(v92);
  }

  else
  {
    v59 = 0;
  }

  v64 = [v79 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v65 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230 qword_22767D000))];

  sub_226E97D1C(v89, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v94, &unk_27D7BC990, &qword_227670A30);
  v66 = qword_2813B2078;
  swift_beginAccess();
  v67 = v65;
  v68 = sub_22766A080();
  v70 = v69;
  MEMORY[0x22AA985C0]();
  if (*((*v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v96 = *((*v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v68(v94, 0);
  swift_endAccess();

  v71 = sub_227543200(v44 + v66, v42, v43);
  if (v71)
  {
    if (v71 == 1)
    {
LABEL_18:

      return;
    }

LABEL_19:
    swift_willThrow();
    goto LABEL_18;
  }

  v72 = v88;
  v73 = sub_226E9CA64(0);
  if (v72)
  {
    goto LABEL_18;
  }

  v74 = v73;
  [v73 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v75 = sub_22766C9E0();
  v77 = sub_226EDAB24(v75);

  sub_226EDAB78(v77, v90);
}

char *sub_227281800(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1A0, &qword_22767DEA0);
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v5;

  sub_22766A070();
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  swift_getKeyPath();
  sub_227230964(a1);
  v12 = v11;
  v31[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4E0, &qword_22767DD90);
  v31[0] = v12;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v13 = sub_22766C820();
  sub_226E93170(v31, v29, &unk_27D7BC990, &qword_227670A30);
  v14 = v30;
  if (v30)
  {
    v15 = __swift_project_boxed_opaque_existential_0(v29, v30);
    v16 = *(v14 - 8);
    v17 = MEMORY[0x28223BE20](v15);
    v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19, v17);
    v20 = sub_22766D170();
    (*(v16 + 8))(v19, v14);
    __swift_destroy_boxed_opaque_existential_0(v29);
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC528 &qword_22767DED0))];

  sub_226E97D1C(v31, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v22 = sub_22766A080();
  v24 = v23;
  MEMORY[0x22AA985C0]();
  if (*((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v22(v31, 0);
  swift_endAccess();

  v25 = sub_2272382B8(100);
  swift_setDeallocating();

  v26 = qword_2813B2078;
  v27 = sub_22766A100();
  (*(*(v27 - 8) + 8))(v8 + v26, v27);
  swift_deallocClassInstance();
  return v25;
}

uint64_t sub_227281C1C(void *a1)
{
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1A0, &qword_22767DEA0);
  v7 = swift_allocObject();
  v8 = v3;
  v9 = v4;

  sub_22766A070();
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  v10 = v7;
  v11 = sub_22724AE30(0);
  if (v1)
  {
  }

  else
  {
    v12 = v11;
    [v11 setResultType_];
    [v12 setFetchLimit_];
    [v12 setFetchOffset_];
    [v12 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v10 = sub_22766C9D0();

    swift_setDeallocating();
    v14 = qword_2813B2078;
    v15 = sub_22766A100();
    (*(*(v15 - 8) + 8))(v7 + v14, v15);
    swift_deallocClassInstance();
  }

  return v10;
}

char *sub_227281E38(uint64_t a1, void *a2)
{
  v36 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - v4;
  v6 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v8 = *v6;
  v7 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
  v11 = swift_allocObject();
  v12 = v8;
  v13 = v7;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  swift_getKeyPath();
  v14 = sub_2276627D0();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v5, v36, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  v39[3] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v39);
  sub_226E93170(v5, boxed_opaque_existential_0, &unk_27D7BB9D0, &qword_227671550);
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v17 = sub_22766C820();
  sub_226E93170(v39, v37, &unk_27D7BC990, &qword_227670A30);
  v18 = v38;
  if (v38)
  {
    v19 = __swift_project_boxed_opaque_existential_0(v37, v38);
    v20 = *(v18 - 8);
    v21 = MEMORY[0x28223BE20](v19);
    v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23, v21);
    v24 = sub_22766D170();
    (*(v20 + 8))(v23, v18);
    __swift_destroy_boxed_opaque_existential_0(v37);
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v26 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230 qword_22767D000))];

  sub_226E97D1C(v5, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v39, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v27 = v26;
  v28 = sub_22766A080();
  v30 = v29;
  MEMORY[0x22AA985C0]();
  if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v28(v39, 0);
  swift_endAccess();

  v31 = sub_226E9AABC(100);
  swift_setDeallocating();

  v32 = qword_2813B2078;
  v33 = sub_22766A100();
  (*(*(v33 - 8) + 8))(v11 + v32, v33);
  swift_deallocClassInstance();
  return v31;
}

void sub_227282340(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v5;

  sub_22766A070();
  v33 = v10;
  v34 = v9;
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  v35 = v6;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  swift_getKeyPath();
  sub_227230964(a1);
  v12 = v11;
  v38[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4E0, &qword_22767DD90);
  v38[0] = v12;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v13 = sub_22766C820();
  sub_226E93170(v38, v36, &unk_27D7BC990, &qword_227670A30);
  v14 = v37;
  if (v37)
  {
    v15 = __swift_project_boxed_opaque_existential_0(v36, v37);
    v16 = *(v14 - 8);
    v17 = MEMORY[0x28223BE20](v15);
    v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19, v17);
    v20 = sub_22766D170();
    (*(v16 + 8))(v19, v14);
    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230 qword_22767D000))];

  sub_226E97D1C(v38, &unk_27D7BC990, &qword_227670A30);
  v22 = qword_2813B2078;
  swift_beginAccess();
  v23 = sub_22766A080();
  v25 = v24;
  MEMORY[0x22AA985C0]();
  if (*((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v23(v38, 0);
  swift_endAccess();

  v26 = sub_227543200(v8 + v22, v35, v7);
  if (v26)
  {
    if (v26 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v27 = v38[5];
  v28 = sub_226E9CA64(0);
  if (v27)
  {
LABEL_10:

    return;
  }

  v29 = v28;
  [v28 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v30 = sub_22766C9E0();
  v31 = sub_226EDAB24(v30);

  sub_226EDAB78(v31, v33);
}

char *sub_22728278C(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v30 = a3;
  v6 = __swift_project_boxed_opaque_existential_0(a4, a4[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  swift_getKeyPath();
  v33[4] = a1;
  v34 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC408, &qword_22767DA98);
  sub_227663AD0();
  v33[3] = MEMORY[0x277D83B88];
  v33[0] = v35;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v14 = sub_22766C820();
  sub_226E93170(v33, v31, &unk_27D7BC990, &qword_227670A30);
  v15 = v32;
  if (v32)
  {
    v16 = __swift_project_boxed_opaque_existential_0(v31, v32);
    v17 = *(v15 - 8);
    v18 = MEMORY[0x28223BE20](v16);
    v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, v18);
    v21 = sub_22766D170();
    (*(v17 + 8))(v20, v15);
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {
    v21 = 0;
  }

  v22 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v23 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230 qword_22767D000))];

  sub_226E97D1C(v33, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v24 = v23;
  v25 = sub_22766A080();
  v27 = v26;
  MEMORY[0x22AA985C0]();
  if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v25(v33, 0);
  swift_endAccess();

  swift_getKeyPath();
  sub_227397FC8();

  swift_beginAccess();
  sub_22766A0D0();
  swift_endAccess();
  v28 = sub_226E9AABC(100);

  return v28;
}

char *sub_227282BA0(uint64_t a1, void *a2)
{
  v2 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1E8, &qword_22767CEB8);
  v7 = swift_allocObject();
  v8 = v3;
  v9 = v4;

  sub_22766A070();
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  swift_getKeyPath();
  sub_227397FC8();

  swift_beginAccess();
  sub_22766A0D0();
  swift_endAccess();
  v10 = sub_227237FB8(100);

  return v10;
}

uint64_t sub_2272838E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22728394C(uint64_t a1)
{
  v2 = sub_227667730();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2272839A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SQLiteValue.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 2u)
  {
    if (a4 == 3)
    {
      MEMORY[0x22AA996B0](4);

      return sub_22766C100();
    }

    else if (a4 == 4)
    {
      MEMORY[0x22AA996B0](5);

      return sub_2276625A0();
    }

    else
    {
      return MEMORY[0x22AA996B0](0, a2, a3);
    }
  }

  else
  {
    if (a4)
    {
      if (a4 == 1)
      {
        MEMORY[0x22AA996B0](2, a2, a3);
        return sub_22766D3C0();
      }

      MEMORY[0x22AA996B0](3, a2, a3);
      v6 = a2;
    }

    else
    {
      MEMORY[0x22AA996B0](1, a2, a3);
      if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = 0;
      }
    }

    return MEMORY[0x22AA996F0](v6);
  }
}

uint64_t SQLiteValue.hashValue.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_22766D370();
  SQLiteValue.hash(into:)(v7, a1, a2, a3);
  return sub_22766D3F0();
}

uint64_t sub_227284C08()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_22766D370();
  SQLiteValue.hash(into:)(v5, v1, v2, v3);
  return sub_22766D3F0();
}

uint64_t sub_227284C70(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_22766D370();
  SQLiteValue.hash(into:)(v6, v2, v3, v4);
  return sub_22766D3F0();
}

uint64_t _s15SeymourServices11SQLiteValueO2eeoiySbAC_ACtFZ_0(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a6 == 1)
        {
          return a1 == a4;
        }
      }

      else if (a6 == 2)
      {
        return a1 == a4;
      }
    }

    else if (!a6)
    {
      return *&a1 == *&a4;
    }

    return 0;
  }

  if (a3 != 3)
  {
    if (a3 == 4)
    {
      if (a6 == 4)
      {
        return sub_227130B5C(a1, a2, a4, a5);
      }
    }

    else if (a6 == 5 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6 != 3)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_22766D190();
  }
}

unint64_t sub_227284DD0()
{
  result = qword_27D7BC638;
  if (!qword_27D7BC638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC638);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_15SeymourServices11SQLiteValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_227284E5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_227284EA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_227284EE8(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_227284F10(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void *))
{
  v5[0] = a1;
  v5[1] = a2;
  v6 = a3 & 1;
  return a4(v5);
}

void sub_227284F74(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_2276624A0();
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v25 = *(*a1 + 16);
  if (v25)
  {
    v11 = 0;
    v12 = (v8 + 48);
    v23 = v8;
    v24 = (v8 + 32);
    v13 = v10 + 40;
    v14 = MEMORY[0x277D84F90];
    v21 = v10;
    v22 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (v11 < *(v10 + 16))
    {

      sub_227662470();

      if ((*v12)(v5, 1, v6) == 1)
      {
        sub_226E97D1C(v5, &unk_27D7BB570, &unk_227670FC0);
      }

      else
      {
        v15 = *v24;
        (*v24)(v9, v5, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_2273A4ECC(0, v14[2] + 1, 1, v14);
        }

        v17 = v14[2];
        v16 = v14[3];
        if (v17 >= v16 >> 1)
        {
          v14 = sub_2273A4ECC((v16 > 1), v17 + 1, 1, v14);
        }

        v14[2] = v17 + 1;
        v18 = v14 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v17;
        v9 = v22;
        v15(v18, v22, v6);
        v10 = v21;
      }

      ++v11;
      v13 += 16;
      if (v25 == v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_13:
    v19 = sub_226F40798(v14);

    *v20 = v19;
  }
}

void sub_227285220(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_2276624A0();
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v24 = *(*a1 + 16);
  if (v24)
  {
    v11 = 0;
    v12 = (v8 + 48);
    v22 = v8;
    v23 = (v8 + 32);
    v13 = v10 + 40;
    v14 = MEMORY[0x277D84F90];
    v20 = v10;
    v21 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (v11 < *(v10 + 16))
    {

      sub_227662470();

      if ((*v12)(v5, 1, v6) == 1)
      {
        sub_226E97D1C(v5, &unk_27D7BB570, &unk_227670FC0);
      }

      else
      {
        v15 = *v23;
        (*v23)(v9, v5, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_2273A4ECC(0, v14[2] + 1, 1, v14);
        }

        v17 = v14[2];
        v16 = v14[3];
        if (v17 >= v16 >> 1)
        {
          v14 = sub_2273A4ECC((v16 > 1), v17 + 1, 1, v14);
        }

        v14[2] = v17 + 1;
        v18 = v14 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v17;
        v9 = v21;
        v15(v18, v21, v6);
        v10 = v20;
      }

      ++v11;
      v13 += 16;
      if (v24 == v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_13:
    *v19 = v14;
  }
}

uint64_t sub_2272854B8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3A0, &unk_22767A2A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_0((*v1 + 16), *(*v1 + 40));
  sub_2272B0DE0(16, a1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_227284F74;
  *(v10 + 24) = 0;
  (*(v4 + 16))(v6, v9, v3);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v4 + 32))(v13 + v11, v6, v3);
  v14 = (v13 + v12);
  *v14 = sub_2272B4374;
  v14[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9370, qword_227685C90);
  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2272856CC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3A0, &unk_22767A2A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_0((*v1 + 16), *(*v1 + 40));
  sub_2272B0A2C(15, a1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_227285220;
  *(v10 + 24) = 0;
  (*(v4 + 16))(v6, v9, v3);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v4 + 32))(v13 + v11, v6, v3);
  v14 = (v13 + v12);
  *v14 = sub_2272B3988;
  v14[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2272858E0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA340, &unk_22767E480);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B4E2C;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3310;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B4E68;
  v35[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6A8, &unk_227680630);
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_227285EA4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA328, &unk_227684D30);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B4CA4;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B336C;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B4CE0;
  v35[1] = v28;
  sub_227664420();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728645C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA310, &unk_22767E470);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B4B1C;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B33A0;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B4B58;
  v35[1] = v28;
  sub_2276676E0();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_227286A14@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v55 = *(v13 + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C50, &qword_227684D00);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v54 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B47D4;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B33D4;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v55 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B4810;
  v37[1] = v30;
  sub_227664700();
  v38 = v54;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4484;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_227286FA0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a1;
  v58 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v53 - 8);
  v52 = *(v13 + 64);
  MEMORY[0x28223BE20](v53);
  v50 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v47 = &v47 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7A0, &unk_22767E4D0);
  v49 = *(v57 - 8);
  v55 = *(v49 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v51 = &v47 - v19;
  sub_22766BDB0();
  v56 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v48;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B5C80;
  v26[1] = v20;

  v27 = v47;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3408;
  *(v28 + 24) = 0;
  v29 = v50;
  v30 = v53;
  (*(v13 + 16))(v50, v27, v53);
  v31 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v32 = (v52 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v13 + 32))(v33 + v31, v29, v30);
  v34 = (v33 + v32);
  *v34 = sub_2272B5CBC;
  v34[1] = v28;
  v35 = v51;
  sub_227669270();
  (*(v13 + 8))(v27, v30);
  v36 = v49;
  v37 = v54;
  v38 = v35;
  v39 = v57;
  (*(v49 + 16))(v54, v35, v57);
  v40 = v36;
  v41 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v42 = (v55 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v40 + 32))(v43 + v41, v37, v39);
  v44 = (v43 + v42);
  v45 = v56;
  *v44 = sub_226ED4480;
  v44[1] = v45;

  sub_227669270();
  return (*(v40 + 8))(v38, v39);
}

uint64_t sub_227287520@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v46) = a1;
  v49 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = v51[8];
  MEMORY[0x28223BE20](v14);
  v47 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v50 = &v44 - v17;
  MEMORY[0x28223BE20](v18);
  v53 = &v44 - v19;
  sub_22766BDB0();
  v48 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v46;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  (*(v8 + 16))(v10, v13, v7);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  (*(v8 + 32))(v22 + v21, v10, v7);
  v23 = (v22 + ((v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_2272B5B84;
  v23[1] = v20;

  v24 = v50;
  sub_227669270();
  (*(v8 + 8))(v13, v7);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_2272B81E4;
  *(v25 + 24) = 0;
  v27 = v51;
  v26 = v52;
  v46 = v51[2];
  v28 = v47;
  v46(v47, v24, v52);
  v29 = *(v27 + 80);
  v45 = (v29 + 16) & ~v29;
  v30 = (v15 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v27[4];
  v32(v31 + ((v29 + 16) & ~v29), v28, v26);
  v33 = (v31 + v30);
  *v33 = sub_2272B81D8;
  v33[1] = v25;
  v34 = v53;
  sub_227669270();
  v35 = v50;
  v36 = v51[1];
  v37 = v52;
  v36(v50, v52);
  v38 = v34;
  v39 = v37;
  v46(v35, v38, v37);
  v40 = swift_allocObject();
  v32(v40 + v45, v35, v39);
  v41 = (v40 + v30);
  v42 = v48;
  *v41 = sub_226ED4484;
  v41[1] = v42;

  sub_227669270();
  return (v36)(v53, v39);
}

uint64_t sub_2272879E0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a3;
  LODWORD(v48) = a1;
  v52 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v55 = *(v50 - 8);
  v13 = v55[8];
  MEMORY[0x28223BE20](v50);
  v49 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v53 = &v46 - v15;
  MEMORY[0x28223BE20](v16);
  v54 = &v46 - v17;
  *(swift_allocObject() + 16) = v4;
  sub_22766BDB0();
  v51 = v4;
  sub_227669270();
  v18 = swift_allocObject();
  *(v18 + 16) = v48;
  v19 = v47;
  *(v18 + 24) = a2;
  *(v18 + 32) = v19;
  (*(v7 + 16))(v9, v12, v6);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = (v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v7 + 32))(v22 + v20, v9, v6);
  v23 = (v22 + v21);
  *v23 = sub_2272B598C;
  v23[1] = v18;

  v24 = v53;
  sub_227669270();
  (*(v7 + 8))(v12, v6);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_2272B81E4;
  *(v25 + 24) = 0;
  v26 = v55;
  v48 = v55[2];
  v27 = v49;
  v28 = v50;
  v48(v49, v24, v50);
  v29 = *(v26 + 80);
  v47 = (v29 + 16) & ~v29;
  v30 = (v13 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v26[4];
  v33 = v28;
  v32(v31 + ((v29 + 16) & ~v29), v27, v28);
  v34 = (v31 + v30);
  *v34 = sub_2272B59C8;
  v34[1] = v25;
  v35 = v54;
  sub_227669270();
  v49 = v55[1];
  ++v55;
  v36 = v53;
  v37 = v33;
  (v49)(v53, v33);
  v38 = swift_allocObject();
  v39 = v51;
  *(v38 + 16) = v51;
  v40 = v35;
  v41 = v37;
  v48(v36, v40, v37);
  v42 = swift_allocObject();
  v32(v42 + v47, v36, v41);
  v43 = (v42 + v30);
  *v43 = sub_2272B5A30;
  v43[1] = v38;
  v44 = v39;
  sub_227669270();
  return (v49)(v54, v41);
}

uint64_t sub_227287EEC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C8, &unk_227684DC0);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B58AC;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B36B0;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B58E8;
  v35[1] = v28;
  sub_227667D20();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_2272884A4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v55 = *(v13 + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B8, &qword_227684DB0);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v54 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B5724;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B36E4;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v55 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B5760;
  v37[1] = v30;
  sub_2276631A0();
  v38 = v54;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4480;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_227288A30@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v55 = *(v13 + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B0, &unk_22767E4B0);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v54 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B559C;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B3718;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v55 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B55D8;
  v37[1] = v30;
  sub_227664170();
  v38 = v54;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4484;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_227288FBC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v54 = *(v13 + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3A0, &unk_22767A2A0);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v55 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B4298;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B374C;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v54 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B42D4;
  v37[1] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v38 = v55;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4484;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_227289554@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA360, &qword_2276720F0);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B5104;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3840;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B5140;
  v35[1] = v28;
  sub_227666190();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_227289B0C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA00, &qword_227684DA0);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B5414;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3874;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B5450;
  v35[1] = v28;
  sub_227664DC0();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728A0C4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v54 = *(v13 + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D90, &unk_22767B290);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v55 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B4F98;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B81FC;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v54 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B4FD4;
  v37[1] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8B0, &unk_22767E490);
  v38 = v55;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4484;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_22728A65C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v55 = *(v13 + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6B0, &qword_22767D9D8);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v54 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B49BC;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B3940;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v55 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B49F8;
  v37[1] = v30;
  sub_227667210();
  v38 = v54;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4484;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_22728ABE8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B6010;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3B48;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B604C;
  v35[1] = v28;
  sub_227668CE0();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B5A30;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728B1A0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v54 = *(v13 + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA10, &unk_2276720E0);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v55 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B45AC;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B3B7C;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v54 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B45E8;
  v37[1] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA20, &qword_22767B6C0);
  v38 = v55;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4484;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_22728B738@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD900, &unk_22767E580);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B79D0;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3C58;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B7A0C;
  v35[1] = v28;
  sub_227669080();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728BCF0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8D0, &unk_22767E570);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B77F4;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3C8C;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B7830;
  v35[1] = v28;
  sub_2276645D0();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728C2A8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8A0, &unk_22767E560);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B73F4;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3CC0;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B7430;
  v35[1] = v28;
  sub_227664220();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728C860@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD440, &unk_227684B60);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B7084;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3CF4;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B70C0;
  v35[1] = v28;
  sub_2276642E0();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728CE18@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC348, &unk_22767E520);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B6AB8;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3D28;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B6AF4;
  v35[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC290, &unk_227680650);
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728D3DC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC340, &unk_22767E550);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B6EFC;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3D84;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B6F38;
  v35[1] = v28;
  sub_227667850();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728D994@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD880, &unk_22767E540);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B6D90;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3DB8;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B6DCC;
  v35[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB178, &unk_227680640);
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728DF58@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD870, &qword_22767E530);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B6C24;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3E14;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B6C60;
  v35[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6E8, &qword_22767E538);
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728E51C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6E0, &unk_227684E20);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B6930;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3E70;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B696C;
  v35[1] = v28;
  sub_2276692D0();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728EAD4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD830, &unk_227682470);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B65C0;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3EA4;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B65FC;
  v35[1] = v28;
  sub_227666DC0();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728F08C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D90, &unk_22767B290);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B60F0;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B81FC;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B81DC;
  v35[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8B0, &unk_22767E490);
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728F650@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v55 = *(v13 + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA3D0, &unk_22767E500);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v54 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B6460;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B4054;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v55 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B649C;
  v37[1] = v30;
  sub_2276685B0();
  v38 = v54;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4484;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_22728FBDC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E8, &unk_22767E4F0);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B78D4;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B8214;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B81E0;
  v35[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D0, &qword_227680660);
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_2272901A0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v55 = *(v13 + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8F0, &qword_227682520);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v54 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B7694;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B416C;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v55 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B76D0;
  v37[1] = v30;
  sub_227668800();
  v38 = v54;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4484;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_22729072C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v55 = *(v13 + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8C0, &unk_227682510);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v54 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B7294;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B41A0;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v55 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B72D0;
  v37[1] = v30;
  sub_2276684D0();
  v38 = v54;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4484;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_227290CB8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v55 = *(v13 + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D8, &unk_22767E510);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v54 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B67D0;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B41D4;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v55 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B680C;
  v37[1] = v30;
  sub_227666DB0();
  v38 = v54;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4484;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_227291244@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v54 = *(v13 + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E8, &unk_22767E4F0);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v55 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B6274;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B8214;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v54 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B62B0;
  v37[1] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D0, &qword_227680660);
  v38 = v55;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4484;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_2272917DC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA388, &unk_22767E4A0);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B528C;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B425C;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B52C8;
  v35[1] = v28;
  sub_227665030();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_227291D94(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_227216960(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_2272924A0(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_227216960(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_227292BAC(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_227216960(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_2272932B8(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_226EC0768(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_2272939C4(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_226EC0768(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_2272940D0(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_226EC0768(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_2272947DC(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_227216960(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_227294EE8(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_227216960(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_2272955F4(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_226EC0768(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}